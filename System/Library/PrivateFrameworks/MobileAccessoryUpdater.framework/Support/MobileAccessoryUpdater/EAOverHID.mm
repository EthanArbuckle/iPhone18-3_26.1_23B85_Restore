@interface EAOverHID
- (BOOL)applyStagedFirmwareVersionsAfterDelay:(unsigned __int16)a3;
- (BOOL)publishEAAccessory;
- (BOOL)queryAllCurrentFirmwareVersions;
- (BOOL)queryAllStagedFirmwareVersions;
- (BOOL)registerForHIDCallbacks;
- (BOOL)sendControlMessageOutputReport:(int)a3 payload:(char *)a4 payloadLength:(unsigned __int16)a5;
- (BOOL)sendEAMessageOutputReport:(id)a3;
- (BOOL)sendHIDReport:(char *)a3 reportID:(int)a4 length:(int)a5;
- (BOOL)sendVendorSpecificRequest:(id)a3;
- (EAOverHID)init;
- (id)getEAProductIDForAccessory;
- (unsigned)getReportSizeForReportUsage:(unsigned int)a3;
- (unsigned)getServiceForRegistryID:(unint64_t)a3;
- (void)accessoryAttached:(id)a3 withInfo:(id)a4;
- (void)dealloc;
- (void)getHIDAccessoryInformation;
- (void)handleHIDAccessoryDisconnect;
- (void)idleExitAllowed:(BOOL)a3;
- (void)logDebugMessageFromAccessory:(char *)a3 length:(int64_t)a4;
- (void)parseInputReportWithId:(unsigned int)a3 andBuffer:(id)a4;
- (void)processControlMessageRequest:(id)a3;
- (void)processControlMessageResponse:(id)a3;
- (void)processIncomingEADataFromPlugin:(id)a3;
- (void)processInputControlMessageReport:(id)a3;
- (void)processInputEAMessageReportFromAccessory:(id)a3;
- (void)queueEvent:(id)a3 withInfo:(id)a4;
@end

@implementation EAOverHID

- (void)accessoryAttached:(id)a3 withInfo:(id)a4
{
  if (qword_100099828 != -1)
  {
    sub_100050B7C();
  }

  v7 = qword_100099830;
  if (os_log_type_enabled(qword_100099830, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[EAOverHID accessoryAttached:withInfo:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Tracer: %s", &v12, 0xCu);
  }

  if (self->_isActive)
  {
    [(EAOverHID *)self queueEvent:a3 withInfo:a4];
  }

  else
  {
    self->_isActive = 1;
    self->_eaStreamReady = 0;
    *&self->_expectedHIDMessageID = 0;
    [(EAOverHID *)self idleExitAllowed:0];
    if ([a4 objectForKeyedSubscript:@"IOMatchLaunchServiceID"])
    {
      v8 = -[EAOverHID getServiceForRegistryID:](self, "getServiceForRegistryID:", [objc_msgSend(a4 objectForKeyedSubscript:{@"IOMatchLaunchServiceID", "unsignedLongLongValue"}]);
      if (v8)
      {
        v9 = v8;
        v10 = IOHIDDeviceCreate(kCFAllocatorDefault, v8);
        if (v10)
        {
          v11 = [[EAHIDAccessory alloc] initWithName:a3 HIDDeviceRef:v10];
          self->_eaHIDAccessory = v11;
          if (v11)
          {
            if ([(EAOverHID *)self registerForHIDCallbacks])
            {
              if (![a4 objectForKey:@"QueryAccInfo"] || objc_msgSend(objc_msgSend(a4, "objectForKey:", @"QueryAccInfo"), "BOOLValue"))
              {
                [(EAOverHID *)self getHIDAccessoryInformation];
              }

              goto LABEL_14;
            }

            sub_100050B90();
          }

          else
          {
            sub_100050C44();
          }
        }

        else
        {
          sub_100050CF8();
        }

        [(EAOverHID *)self cleanupEASession];
LABEL_14:
        IOObjectRelease(v9);
        return;
      }

      sub_100050DB0();
    }

    else
    {
      sub_100050E64();
    }

    [(EAOverHID *)self cleanupEASession];
  }
}

- (void)getHIDAccessoryInformation
{
  eaHIDQueue = self->_eaHIDQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003056C;
  block[3] = &unk_100080FC8;
  block[4] = self;
  dispatch_group_async(qword_10009A9D8, eaHIDQueue, block);
}

- (BOOL)sendControlMessageOutputReport:(int)a3 payload:(char *)a4 payloadLength:(unsigned __int16)a5
{
  v5 = a5;
  LODWORD(v18) = 0;
  HIDWORD(v18) = a3;
  v17 = 0;
  if (qword_100099828 != -1)
  {
    sub_100050B7C();
  }

  v9 = qword_100099830;
  if (os_log_type_enabled(qword_100099830, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v20) = a3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "DEBUG: Creating HID Report for Control message 0x%x\n", buf, 8u);
  }

  eaHIDAccessory = self->_eaHIDAccessory;
  if (!eaHIDAccessory || ![(EAHIDAccessory *)eaHIDAccessory HIDDevice:v17])
  {
    goto LABEL_22;
  }

  v11 = objc_alloc_init(NSMutableData);
  WORD1(v18) = 2560;
  [v11 appendBytes:&v18 + 2 length:2];
  v12 = self->_expectedHIDMessageID + 1;
  self->_expectedHIDMessageID = v12;
  LOWORD(v18) = bswap32(v12) >> 16;
  [v11 appendBytes:&v18 length:2];
  HIWORD(v17) = bswap32(v5 + 14) >> 16;
  [v11 appendBytes:&v17 + 6 length:2];
  HIDWORD(v18) = bswap32(a3) >> 16;
  [v11 appendBytes:&v18 + 4 length:2];
  WORD2(v17) = 256;
  [v11 appendBytes:&v17 + 4 length:2];
  v13 = self->_expectedControlMessageID + 1;
  self->_expectedControlMessageID = v13;
  WORD1(v17) = bswap32(v13) >> 16;
  [v11 appendBytes:&v17 + 2 length:2];
  LOWORD(v17) = bswap32(v5 + 8) >> 16;
  [v11 appendBytes:&v17 length:2];
  if (a4)
  {
    [v11 appendBytes:a4 length:v5];
  }

  if (qword_100099828 != -1)
  {
    sub_100050EE0();
  }

  v14 = qword_100099830;
  if (os_log_type_enabled(qword_100099830, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "DEBUG: Sending HID Report to Accessory: %@\n", buf, 0xCu);
  }

  v15 = [v11 length];
  if (v15 > [(EAHIDAccessory *)self->_eaHIDAccessory HIDReportSizeOutput])
  {
    sub_100050FC4(v11, &self->_eaHIDAccessory);
    goto LABEL_20;
  }

  if (!-[EAOverHID sendHIDReport:reportID:length:](self, "sendHIDReport:reportID:length:", [v11 bytes], -[EAHIDAccessory HIDReportID](self->_eaHIDAccessory, "HIDReportID"), objc_msgSend(v11, "length")))
  {
    sub_100050F08(&v18 + 1);
LABEL_20:
    if (v11)
    {
    }

LABEL_22:
    [(EAOverHID *)self cleanupEASession];
    return 0;
  }

  if (v11)
  {
  }

  return 1;
}

- (void)parseInputReportWithId:(unsigned int)a3 andBuffer:(id)a4
{
  if ([a4 length] > 5)
  {
    v8 = a4;
    if ([(EAHIDAccessory *)self->_eaHIDAccessory HIDReportID]== a3)
    {
      v9 = [a4 bytes];
      if (v9)
      {
        if ((v9[1] & 8) != 0)
        {
          eaHIDQueue = self->_eaHIDQueue;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100030AC4;
          block[3] = &unk_100081788;
          block[4] = self;
          block[5] = a4;
          dispatch_group_async(qword_10009A9D8, eaHIDQueue, block);
        }

        else
        {
          if ((v9[1] & 4) != 0)
          {
            v12 = self->_eaHIDQueue;
            v13[0] = _NSConcreteStackBlock;
            v13[1] = 3221225472;
            v13[2] = sub_100030AD0;
            v13[3] = &unk_100081788;
            v13[4] = self;
            v13[5] = a4;
            dispatch_group_async(qword_10009A9D8, v12, v13);
            if (!a4)
            {
              return;
            }

LABEL_17:

            return;
          }

          if (qword_100099828 != -1)
          {
            sub_100050B7C();
          }

          v10 = qword_100099830;
          if (os_log_type_enabled(qword_100099830, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v16 = a4;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Invalid Incoming HID Message: %@", buf, 0xCu);
            if (!a4)
            {
              return;
            }

            goto LABEL_17;
          }
        }
      }
    }

    if (!a4)
    {
      return;
    }

    goto LABEL_17;
  }

  if (qword_100099828 != -1)
  {
    sub_100050B7C();
  }

  v7 = qword_100099830;
  if (os_log_type_enabled(qword_100099830, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v16 = [a4 length];
    v17 = 1024;
    v18 = 6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "HID Report received with invalid length: %lu expected: %u", buf, 0x12u);
  }
}

- (void)processInputControlMessageReport:(id)a3
{
  if (a3 && [a3 length] > 0xD)
  {
    v5 = a3;
    v6 = [a3 bytes];
    if (v6)
    {
      sub_100051170(v6, self, a3);
    }

    goto LABEL_5;
  }

  if ((sub_100051098(a3, a3 == 0) & 1) == 0)
  {
LABEL_5:
  }
}

- (void)processControlMessageResponse:(id)a3
{
  if (a3 && [a3 length] > 7)
  {
    v5 = a3;
    v6 = [a3 bytes];
    if (!v6)
    {
      goto LABEL_86;
    }

    v7 = v6;
    v8 = __rev16(*v6);
    v9 = *(v6 + 3);
    v10 = v9 | (*(v6 + 2) << 8);
    if ((v9 & 0x10) == 0)
    {
      sub_100052398(v10, v8, &v30);
      goto LABEL_98;
    }

    if (self->_expectedControlMessageID == bswap32(v7[2]) >> 16)
    {
      v11 = __rev16(v7[3]);
      v12 = v11 - 8;
      if (v11 >= 8)
      {
        if (qword_100099828 != -1)
        {
          sub_100050B7C();
        }

        v13 = qword_100099830;
        if (os_log_type_enabled(qword_100099830, OS_LOG_TYPE_DEFAULT))
        {
          v30 = 67109376;
          *v31 = v8;
          *&v31[4] = 1024;
          *&v31[6] = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received Control Message 0x%x, payloadlength = %d", &v30, 0xEu);
        }

        if ([a3 length] >= v12 + 8)
        {
          if (v8 > 5)
          {
            if (v8 <= 7)
            {
              if (v8 == 6)
              {
                if (qword_100099828 != -1)
                {
                  sub_100050EE0();
                }

                v20 = qword_100099830;
                if (os_log_type_enabled(qword_100099830, OS_LOG_TYPE_DEFAULT))
                {
                  v30 = 136315394;
                  *v31 = "[EAOverHID processControlMessageResponse:]";
                  *&v31[8] = 1024;
                  *v32 = v12;
                  _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s: Processing FirmwareVersion bufferLen=%d", &v30, 0x12u);
                }

                if (v12 > 5u)
                {
                  [(EAHIDAccessory *)self->_eaHIDAccessory setFirmwareVersionMajor:bswap32(v7[4]) >> 16];
                  [(EAHIDAccessory *)self->_eaHIDAccessory setFirmwareVersionMinor:bswap32(v7[5]) >> 16];
                  [(EAHIDAccessory *)self->_eaHIDAccessory setFirmwareVersionRelease:bswap32(v7[6]) >> 16];
                  if (!self->_verifyMinFWVersion || [(EAHIDAccessory *)self->_eaHIDAccessory firmwareVersionMajor]> 1 || [(EAHIDAccessory *)self->_eaHIDAccessory firmwareVersionMajor]== 1 && ([(EAHIDAccessory *)self->_eaHIDAccessory firmwareVersionMinor]> 0x10 || [(EAHIDAccessory *)self->_eaHIDAccessory firmwareVersionMinor]== 16 && [(EAHIDAccessory *)self->_eaHIDAccessory firmwareVersionRelease]>= 0x2C))
                  {
                    if (qword_100099828 != -1)
                    {
                      sub_100050EE0();
                    }

                    v21 = qword_100099830;
                    if (os_log_type_enabled(qword_100099830, OS_LOG_TYPE_DEFAULT))
                    {
                      v30 = 136315138;
                      *v31 = "[EAOverHID processControlMessageResponse:]";
                      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s: Publishing EA Accessory", &v30, 0xCu);
                    }

                    if (![(EAOverHID *)self publishEAAccessory])
                    {
                      sub_1000513E4(self);
                    }
                  }

                  else
                  {
                    if (qword_100099828 != -1)
                    {
                      sub_100050EE0();
                    }

                    v26 = qword_100099830;
                    if (os_log_type_enabled(qword_100099830, OS_LOG_TYPE_DEFAULT))
                    {
                      v27 = [(EAHIDAccessory *)self->_eaHIDAccessory firmwareVersionMajor];
                      v28 = [(EAHIDAccessory *)self->_eaHIDAccessory firmwareVersionMinor];
                      v29 = [(EAHIDAccessory *)self->_eaHIDAccessory firmwareVersionRelease];
                      v30 = 67110400;
                      *v31 = v27;
                      *&v31[4] = 1024;
                      *&v31[6] = v28;
                      *v32 = 1024;
                      *&v32[2] = v29;
                      v33 = 1024;
                      v34 = 1;
                      v35 = 1024;
                      v36 = 16;
                      v37 = 1024;
                      v38 = 44;
                      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Error: Minimum FW Version requirements not met %d.%d.%d < %d.%d.%d", &v30, 0x26u);
                    }
                  }

                  v8 = 6;
                  if ((v9 & 0x20) == 0)
                  {
                    goto LABEL_86;
                  }

                  goto LABEL_81;
                }

                sub_10005146C();
              }

              else if (v12)
              {
                v17 = [a3 subdataWithRange:{8, v12}];
                if (v17)
                {
                  -[EAHIDAccessory setSerialNumber:](self->_eaHIDAccessory, "setSerialNumber:", [[NSString alloc] initWithData:v17 encoding:4]);
                  if ([(EAHIDAccessory *)self->_eaHIDAccessory serialNumber])
                  {
                    [(EAOverHID *)self sendControlMessageOutputReport:8 payload:0 payloadLength:0];
                    v8 = 7;
                    if ((v9 & 0x20) != 0)
                    {
                      goto LABEL_81;
                    }

                    goto LABEL_86;
                  }

                  sub_100051A08();
                }

                else
                {
                  sub_100051AD0();
                }
              }

              else
              {
                sub_100051B98();
              }

              goto LABEL_98;
            }

            switch(v8)
            {
              case 8:
                if (v12)
                {
                  v22 = [a3 subdataWithRange:{8, v12}];
                  if (v22)
                  {
                    -[EAHIDAccessory setManufacturer:](self->_eaHIDAccessory, "setManufacturer:", [[NSString alloc] initWithData:v22 encoding:4]);
                    if ([(EAHIDAccessory *)self->_eaHIDAccessory manufacturer])
                    {
                      [(EAOverHID *)self sendControlMessageOutputReport:9 payload:0 payloadLength:0];
                      v8 = 8;
                      if ((v9 & 0x20) != 0)
                      {
                        goto LABEL_81;
                      }

                      goto LABEL_86;
                    }

                    sub_1000517A4();
                  }

                  else
                  {
                    sub_10005186C();
                  }
                }

                else
                {
                  sub_100051934();
                }

                goto LABEL_98;
              case 9:
                if (!v12)
                {
                  sub_1000516D0();
                  goto LABEL_98;
                }

                v24 = [a3 subdataWithRange:{8, v12}];
                if (!v24)
                {
                  sub_100051608();
                  goto LABEL_98;
                }

                -[EAHIDAccessory setHardwareVersion:](self->_eaHIDAccessory, "setHardwareVersion:", [[NSString alloc] initWithData:v24 encoding:4]);
                if (![(EAHIDAccessory *)self->_eaHIDAccessory hardwareVersion])
                {
                  sub_100051540();
                  goto LABEL_98;
                }

                [(EAOverHID *)self sendControlMessageOutputReport:6 payload:0 payloadLength:0];
                v8 = 9;
                break;
              case 11:
                if (v12)
                {
                  v15 = [a3 subdataWithRange:{8, v12}];
                  if (v15)
                  {
                    v16 = v15;
                    if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
                    {
                      [(EAOverHIDDelegate *)self->_delegate vendorSpecificMessageResponse:v16];
                    }

                    v8 = 11;
                    if ((v9 & 0x20) == 0)
                    {
                      goto LABEL_86;
                    }

                    goto LABEL_81;
                  }

                  sub_100051248();
                }

                else
                {
                  sub_100051310();
                }

                goto LABEL_98;
            }
          }

          else
          {
            if (v8 > 2)
            {
              if (v8 == 3)
              {
                [(EAOverHID *)self cleanupEASession];
                if ((v9 & 0x20) != 0)
                {
                  goto LABEL_81;
                }

                goto LABEL_86;
              }

              if (v8 == 4)
              {
                if (v12)
                {
                  v23 = [a3 subdataWithRange:{8, v12}];
                  if (v23)
                  {
                    -[EAHIDAccessory setName:](self->_eaHIDAccessory, "setName:", [[NSString alloc] initWithData:v23 encoding:4]);
                    if ([(EAHIDAccessory *)self->_eaHIDAccessory name])
                    {
                      [(EAOverHID *)self sendControlMessageOutputReport:5 payload:0 payloadLength:0];
                      v8 = 4;
                      if ((v9 & 0x20) != 0)
                      {
                        goto LABEL_81;
                      }

                      goto LABEL_86;
                    }

                    sub_100051ED0();
                  }

                  else
                  {
                    sub_100051F98();
                  }
                }

                else
                {
                  sub_100052060();
                }
              }

              else if (v12)
              {
                v14 = [a3 subdataWithRange:{8, v12}];
                if (v14)
                {
                  -[EAHIDAccessory setModelNumber:](self->_eaHIDAccessory, "setModelNumber:", [[NSString alloc] initWithData:v14 encoding:4]);
                  if ([(EAHIDAccessory *)self->_eaHIDAccessory modelNumber])
                  {
                    [(EAOverHID *)self sendControlMessageOutputReport:7 payload:0 payloadLength:0];
                    v8 = 5;
                    if ((v9 & 0x20) != 0)
                    {
                      goto LABEL_81;
                    }

                    goto LABEL_86;
                  }

                  sub_100051C6C();
                }

                else
                {
                  sub_100051D34();
                }
              }

              else
              {
                sub_100051DFC();
              }

LABEL_98:
              v8 = v30;
              if ((v9 & 0x20) != 0)
              {
                goto LABEL_81;
              }

              goto LABEL_86;
            }

            if (v8 == 1)
            {
              if (v12)
              {
                v18 = [a3 subdataWithRange:{8, v12}];
                if (v18)
                {
                  overrideProtocol = self->_overrideProtocol;
                  if (!overrideProtocol)
                  {
                    overrideProtocol = [[NSString alloc] initWithData:v18 encoding:4];
                  }

                  [(EAHIDAccessory *)self->_eaHIDAccessory setEAProtocolString:overrideProtocol];
                  if ([(EAHIDAccessory *)self->_eaHIDAccessory EAProtocolString])
                  {
                    [(EAOverHID *)self sendControlMessageOutputReport:4 payload:0 payloadLength:0];
                    v8 = 1;
                    if ((v9 & 0x20) != 0)
                    {
                      goto LABEL_81;
                    }

                    goto LABEL_86;
                  }

                  sub_100052134();
                }

                else
                {
                  sub_1000521FC();
                }
              }

              else
              {
                sub_1000522C4();
              }

              goto LABEL_98;
            }

            if (v8 == 2)
            {
              self->_expectedState = 1;
              if ((v9 & 0x20) != 0)
              {
                goto LABEL_81;
              }

              goto LABEL_86;
            }
          }
        }
      }
    }

    if ((v9 & 0x20) != 0)
    {
LABEL_81:
      if (qword_100099828 != -1)
      {
        sub_100050EE0();
      }

      v25 = qword_100099830;
      if (os_log_type_enabled(qword_100099830, OS_LOG_TYPE_DEFAULT))
      {
        v30 = 67109120;
        *v31 = v8;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Received NAK for Control Message 0x%x", &v30, 8u);
      }

      [(EAOverHID *)self cleanupEASession];
    }

LABEL_86:

    return;
  }

  if ((sub_100052474(a3, a3 == 0) & 1) == 0)
  {
    goto LABEL_86;
  }
}

- (void)processInputEAMessageReportFromAccessory:(id)a3
{
  if (a3 && [a3 length] > 5)
  {
    v5 = a3;
    if (self->_expectedState == 1)
    {
      self->_expectedState = 2;
      v6 = [a3 bytes];
      if (v6 && (v7 = __rev16(*(v6 + 2)), v7 > 5))
      {
        if ((v6[1] & 2) != 0)
        {
          self->_expectedHIDMessageID = bswap32(*(v6 + 1)) >> 16;
          v8 = v7 - 6;
          if (v8)
          {
            v9 = [a3 subdataWithRange:{6, v8}];
            if (v9)
            {
              v10 = v9;
              if (!self->_eaStreamReady)
              {
                [NSThread sleepForTimeInterval:1.0];
                self->_eaStreamReady = 1;
              }

              if ((off_100099860)(v10, [(EAHIDAccessory *)self->_eaHIDAccessory EAEndpointUUID]))
              {
                self->_expectedState = 3;
LABEL_13:

                return;
              }

              sub_1000525C8();
            }

            else
            {
              sub_100052684();
            }
          }

          else
          {
            sub_100052700();
          }
        }
      }

      else
      {
        sub_10005277C();
      }
    }

    else
    {
      sub_10005254C();
    }

    [(EAOverHID *)self cleanupEASession];
    goto LABEL_13;
  }

  if ((sub_1000527F8(a3, self, a3 == 0) & 1) == 0)
  {
    goto LABEL_13;
  }
}

- (void)processIncomingEADataFromPlugin:(id)a3
{
  if (self->_expectedState == 3)
  {
    self->_expectedState = 4;
    if (![(EAOverHID *)self sendEAMessageOutputReport:a3])
    {
      sub_100052958(self);
    }
  }

  else
  {
    sub_1000528DC();
  }
}

- (void)handleHIDAccessoryDisconnect
{
  if (qword_100099828 != -1)
  {
    sub_100050B7C();
  }

  v3 = qword_100099830;
  if (os_log_type_enabled(qword_100099830, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Error: HID Accessory disconnected, cleaning up", buf, 2u);
  }

  eaHIDQueue = self->_eaHIDQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000319F0;
  block[3] = &unk_100080FC8;
  block[4] = self;
  dispatch_async(eaHIDQueue, block);
}

- (BOOL)sendEAMessageOutputReport:(id)a3
{
  v13 = 0;
  v12 = 0;
  if (!a3 || (eaHIDAccessory = self->_eaHIDAccessory) == 0 || ![(EAHIDAccessory *)eaHIDAccessory HIDDevice])
  {
LABEL_14:
    [(EAOverHID *)self cleanupEASession];
    return 0;
  }

  v6 = [a3 length];
  v7 = v6;
  v8 = v6 + 6;
  v9 = objc_alloc_init(NSMutableData);
  HIWORD(v13) = 1536;
  [v9 appendBytes:&v13 + 2 length:2];
  LOWORD(v13) = self->_expectedHIDMessageID;
  [v9 appendBytes:&v13 length:2];
  v12 = bswap32(v8) >> 16;
  [v9 appendBytes:&v12 length:2];
  [v9 appendBytes:objc_msgSend(a3 length:{"bytes"), v7}];
  v10 = [v9 length];
  if (v10 > [(EAHIDAccessory *)self->_eaHIDAccessory HIDReportSizeOutput])
  {
    sub_100050FC4(v9, &self->_eaHIDAccessory);
    goto LABEL_12;
  }

  if (!-[EAOverHID sendHIDReport:reportID:length:](self, "sendHIDReport:reportID:length:", [v9 bytes], -[EAHIDAccessory HIDReportID](self->_eaHIDAccessory, "HIDReportID"), objc_msgSend(v9, "length")))
  {
    sub_1000529E0();
LABEL_12:
    if (v9)
    {
    }

    goto LABEL_14;
  }

  if (v9)
  {
  }

  return 1;
}

- (void)idleExitAllowed:(BOOL)a3
{
  if (a3)
  {
    if (!self->_dispatchGroupHeld)
    {
      return;
    }

    if (qword_100099828 != -1)
    {
      sub_100050B7C();
    }

    v4 = qword_100099830;
    if (os_log_type_enabled(qword_100099830, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Leaving Shared DispatchGroup", buf, 2u);
    }

    dispatch_group_leave(qword_10009A9D8);
    v5 = 0;
  }

  else
  {
    if (self->_dispatchGroupHeld)
    {
      return;
    }

    if (qword_100099828 != -1)
    {
      sub_100050B7C();
    }

    v6 = qword_100099830;
    if (os_log_type_enabled(qword_100099830, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Entering Shared DispatchGroup", v7, 2u);
    }

    dispatch_group_enter(qword_10009A9D8);
    v5 = 1;
  }

  self->_dispatchGroupHeld = v5;
}

- (BOOL)sendVendorSpecificRequest:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  eaHIDQueue = self->_eaHIDQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100031D2C;
  block[3] = &unk_100081A40;
  block[5] = a3;
  block[6] = &v7;
  block[4] = self;
  dispatch_sync(eaHIDQueue, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (BOOL)queryAllCurrentFirmwareVersions
{
  v6 = 512;
  v3 = objc_alloc_init(NSMutableData);
  [v3 appendBytes:&v6 length:2];
  v4 = [(EAOverHID *)self sendVendorSpecificRequest:v3];
  if (v3)
  {
  }

  return v4;
}

- (BOOL)queryAllStagedFirmwareVersions
{
  v6 = 768;
  v3 = objc_alloc_init(NSMutableData);
  [v3 appendBytes:&v6 length:2];
  v4 = [(EAOverHID *)self sendVendorSpecificRequest:v3];
  if (v3)
  {
  }

  return v4;
}

- (BOOL)applyStagedFirmwareVersionsAfterDelay:(unsigned __int16)a3
{
  v8 = 1024;
  v7 = __rev16(a3);
  v4 = objc_alloc_init(NSMutableData);
  [v4 appendBytes:&v8 length:2];
  [v4 appendBytes:&v7 length:2];
  v5 = [(EAOverHID *)self sendVendorSpecificRequest:v4];
  if (v4)
  {
  }

  return v5;
}

- (unsigned)getServiceForRegistryID:(unint64_t)a3
{
  v3 = IORegistryEntryIDMatching(a3);
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v3);
  if (!MatchingService)
  {
    sub_100052A5C();
  }

  return MatchingService;
}

- (unsigned)getReportSizeForReportUsage:(unsigned int)a3
{
  v5 = IOHIDDeviceCopyMatchingElements([(EAHIDAccessory *)self->_eaHIDAccessory HIDDevice], &off_100088260, 0);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(__CFArray *)v5 countByEnumeratingWithState:&v15 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if (IOHIDElementGetUsage(v10) == a3)
        {
          ReportSize = IOHIDElementGetReportSize(v10);
          [(EAHIDAccessory *)self->_eaHIDAccessory setHIDReportID:IOHIDElementGetReportID(v10)];
          if (qword_100099828 != -1)
          {
            sub_100050EE0();
          }

          v12 = qword_100099830;
          if (os_log_type_enabled(qword_100099830, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [(EAHIDAccessory *)self->_eaHIDAccessory HIDReportID];
            *buf = 67109632;
            v20 = a3;
            v21 = 1024;
            v22 = ReportSize;
            v23 = 1024;
            v24 = v13;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "reportUsage=0x%x, ReportSize=%dbits, reportID=0x%x", buf, 0x14u);
          }

          return ReportSize;
        }
      }

      v7 = [(__CFArray *)v5 countByEnumeratingWithState:&v15 objects:v25 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  sub_100052AD8();
  return *buf;
}

- (void)logDebugMessageFromAccessory:(char *)a3 length:(int64_t)a4
{
  if (a4 <= 1)
  {
    sub_100053108();
    return;
  }

  v6 = *a3;
  v7 = [(EAOverHID *)self getEAProductIDForAccessory];
  if (!v7)
  {
    sub_10005308C();
    return;
  }

  v8 = [NSString stringWithFormat:@"EA%@Strings", v7];
  if (!v8)
  {
    sub_100052FD8();
    return;
  }

  v9 = v8;
  v10 = [NSBundle bundleWithIdentifier:@"com.apple.MobileAccessoryUpdater"];
  if (!v10)
  {
    sub_100052F5C();
    return;
  }

  v11 = [(NSBundle *)v10 pathForResource:v9 ofType:@"plist"];
  if (!v11)
  {
    sub_100052EA8();
    return;
  }

  v12 = [NSDictionary dictionaryWithContentsOfFile:v11];
  if (!v12)
  {
    sub_100052DF4();
    return;
  }

  v13 = [(NSDictionary *)v12 objectForKey:@"DebugStrings"];
  if (!v13)
  {
    sub_100052D40();
    return;
  }

  v14 = v13;
  v15 = __rev16(v6);
  if ([v13 count] <= v15)
  {
    sub_100052B9C(v15, v14);
    return;
  }

  v16 = +[NSMutableString stringWithString:](NSMutableString, "stringWithString:", [v14 objectAtIndex:v15]);
  if (!v16)
  {
    sub_100052C84();
    return;
  }

  v17 = v16;
  v18 = [(NSMutableString *)v16 rangeOfString:@"%s"];
  v20 = 0;
  v21 = v18 != 0x7FFFFFFFFFFFFFFFLL;
  v22 = (&OBJC_PROTOCOL___FudQueryPlugin + 64);
  p_cb = (&OBJC_PROTOCOL___FudQueryPlugin + 64);
  if ((a4 & 0xFFFFFFFFFFFFFFFELL) == 2 || (v24 = v18, v18 == 0x7FFFFFFFFFFFFFFFLL))
  {
LABEL_22:
    if (!v21)
    {
LABEL_32:
      if (*(p_cb + 261) != -1)
      {
        sub_100050EE0();
      }

      goto LABEL_34;
    }

    goto LABEL_28;
  }

  v25 = v19;
  v20 = 0;
  v26 = 2;
  while (1)
  {
    v27 = a3[(v26 + 1)] | (a3[v26] << 8);
    v28 = (v26 + 2);
    if (a4 - v28 < v27)
    {
      break;
    }

    if (v20)
    {
    }

    v20 = [[NSString alloc] initWithBytes:&a3[v28] length:v27 encoding:4];
    [(NSMutableString *)v17 deleteCharactersInRange:v24, v25];
    [(NSMutableString *)v17 insertString:v20 atIndex:v24];
    v29 = [(NSMutableString *)v17 rangeOfString:@"%s"];
    v24 = v29;
    v25 = v30;
    v26 = (v28 + v27);
    v21 = v29 != 0x7FFFFFFFFFFFFFFFLL;
    if ((a4 - v26) < 2 || v29 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v22 = (&OBJC_PROTOCOL___FudQueryPlugin + 64);
      p_cb = (&OBJC_PROTOCOL___FudQueryPlugin + 64);
      goto LABEL_22;
    }
  }

  p_cb = &OBJC_PROTOCOL___FudQueryPlugin.cb;
  if (qword_100099828 != -1)
  {
    sub_100050B7C();
  }

  v22 = &OBJC_PROTOCOL___FudQueryPlugin.cb;
  v32 = qword_100099830;
  if (os_log_type_enabled(qword_100099830, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Error: Invalid Payload", buf, 2u);
LABEL_28:
    if (*(p_cb + 261) != -1)
    {
      sub_100050EE0();
    }
  }

  v33 = *(v22 + 262);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "[Warning] args provided by accessory are less than the debug string expects", buf, 2u);
    goto LABEL_32;
  }

LABEL_34:
  v34 = *(v22 + 262);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = v17;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "DEBUG STRING FROM ACCESSORY: %@", buf, 0xCu);
  }

  if (v20)
  {
  }
}

- (void)dealloc
{
  if (self->_isActive)
  {
    [(EAOverHID *)self cleanupEASession];
  }

  eaHIDQueue = self->_eaHIDQueue;
  if (eaHIDQueue)
  {
    dispatch_release(eaHIDQueue);
    self->_eaHIDQueue = 0;
  }

  eaHIDAccessory = self->_eaHIDAccessory;
  if (eaHIDAccessory)
  {

    self->_eaHIDAccessory = 0;
  }

  if (qword_100099830)
  {
  }

  coreAccFrameworkRef = self->_coreAccFrameworkRef;
  if (coreAccFrameworkRef)
  {
    dlclose(coreAccFrameworkRef);
    self->_coreAccFrameworkRef = 0;
  }

  queuedEvents = self->_queuedEvents;
  if (queuedEvents)
  {

    self->_queuedEvents = 0;
  }

  delegate = self->_delegate;
  if (delegate)
  {
  }

  v8.receiver = self;
  v8.super_class = EAOverHID;
  [(EAOverHID *)&v8 dealloc];
}

- (EAOverHID)init
{
  sub_100032680();
  if (!v3)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_100032664())
  {
    v20 = 136315138;
    v21 = "[EAOverHID init]";
    sub_10003264C();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  v19.receiver = self;
  v19.super_class = EAOverHID;
  v9 = [(EAOverHID *)&v19 init];
  if (v9)
  {
    v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v11 = dispatch_queue_create("com.apple.accessoryupdater.eaoverhid.queue", v10);
    v9->_eaHIDQueue = v11;
    if (v11)
    {
      v12 = dlopen("/System/Library/PrivateFrameworks/CoreAccessories.framework/CoreAccessories", 4);
      v9->_coreAccFrameworkRef = v12;
      if (!v12)
      {
        sub_100032680();
        if (!v3)
        {
          dispatch_once(&qword_100099828, &stru_100081D38);
        }

        if (!sub_100032664())
        {
          goto LABEL_50;
        }

        LOWORD(v20) = 0;
        goto LABEL_49;
      }

      off_100099838 = dlsym(v12, "acc_transportClient_createConnection");
      if (!off_100099838)
      {
        sub_100032680();
        if (!v3)
        {
          dispatch_once(&qword_100099828, &stru_100081D38);
        }

        if (!sub_100032664())
        {
          goto LABEL_50;
        }

        LOWORD(v20) = 0;
        goto LABEL_49;
      }

      off_100099840 = dlsym(v9->_coreAccFrameworkRef, "acc_transportClient_createEndpoint");
      if (!off_100099840)
      {
        sub_100032680();
        if (!v3)
        {
          dispatch_once(&qword_100099828, &stru_100081D38);
        }

        if (!sub_100032664())
        {
          goto LABEL_50;
        }

        LOWORD(v20) = 0;
        goto LABEL_49;
      }

      off_100099848 = dlsym(v9->_coreAccFrameworkRef, "acc_transportClient_setAccessoryInfo");
      if (!off_100099848)
      {
        sub_100032680();
        if (!v3)
        {
          dispatch_once(&qword_100099828, &stru_100081D38);
        }

        if (!sub_100032664())
        {
          goto LABEL_50;
        }

        LOWORD(v20) = 0;
        goto LABEL_49;
      }

      off_100099850 = dlsym(v9->_coreAccFrameworkRef, "acc_transportClient_setEndpointPropertyDidChangeHandler");
      if (!off_100099850)
      {
        sub_100032680();
        if (!v3)
        {
          dispatch_once(&qword_100099828, &stru_100081D38);
        }

        if (!sub_100032664())
        {
          goto LABEL_50;
        }

        LOWORD(v20) = 0;
        goto LABEL_49;
      }

      off_100099858 = dlsym(v9->_coreAccFrameworkRef, "acc_transportClient_publishConnection");
      if (!off_100099858)
      {
        sub_100032680();
        if (!v3)
        {
          dispatch_once(&qword_100099828, &stru_100081D38);
        }

        if (!sub_100032664())
        {
          goto LABEL_50;
        }

        LOWORD(v20) = 0;
        goto LABEL_49;
      }

      off_100099860 = dlsym(v9->_coreAccFrameworkRef, "acc_transportClient_processIncomingData");
      if (!off_100099860)
      {
        sub_100032680();
        if (!v3)
        {
          dispatch_once(&qword_100099828, &stru_100081D38);
        }

        if (!sub_100032664())
        {
          goto LABEL_50;
        }

        LOWORD(v20) = 0;
        goto LABEL_49;
      }

      off_100099868 = dlsym(v9->_coreAccFrameworkRef, "acc_transportClient_destroyEndpoint");
      if (off_100099868)
      {
        v9->_queuedEvents = 0;
        v9->_isActive = 0;
        v9->_input = 0;
        *&v9->_hidDeviceScheduled = 0;
        v9->_overrideProtocol = 0;
        *&v9->_expectedHIDMessageID = 0;
        *&v9->_dispatchGroupHeld = 256;
        return v9;
      }

      sub_100032680();
      if (!v3)
      {
        dispatch_once(&qword_100099828, &stru_100081D38);
      }

      if (sub_100032664())
      {
        LOWORD(v20) = 0;
LABEL_49:
        sub_10003264C();
        _os_log_impl(v14, v15, v16, v17, v18, 2u);
      }
    }

LABEL_50:

    return 0;
  }

  return v9;
}

- (void)queueEvent:(id)a3 withInfo:(id)a4
{
  if (a3 && a4)
  {
    v6 = [[EAOverHIDEvent alloc] initWithName:a3 info:a4];
    if (v6)
    {
      v7 = v6;
      if (!self->_queuedEvents)
      {
        self->_queuedEvents = objc_alloc_init(NSMutableArray);
      }

      if (qword_100099828 != -1)
      {
        dispatch_once(&qword_100099828, &stru_100081D38);
      }

      v8 = qword_100099830;
      if (os_log_type_enabled(qword_100099830, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 136315650;
        *&v14[4] = "[EAOverHID queueEvent:withInfo:]";
        sub_100032704();
        v15 = a4;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Queueing EAOverHID Event for filtername: %@ info: %@", v14, 0x20u);
      }

      [(NSMutableArray *)self->_queuedEvents addObject:v7, *v14];
    }
  }

  else
  {
    if (qword_100099828 != -1)
    {
      dispatch_once(&qword_100099828, &stru_100081D38);
    }

    if (sub_1000326BC())
    {
      sub_10003261C();
      _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    }
  }
}

- (BOOL)registerForHIDCallbacks
{
  eaHIDAccessory = self->_eaHIDAccessory;
  if (eaHIDAccessory)
  {
    eaHIDAccessory = [(EAHIDAccessory *)eaHIDAccessory HIDDevice];
    if (eaHIDAccessory)
    {
      [(EAHIDAccessory *)self->_eaHIDAccessory setHIDReportSizeInput:[(EAOverHID *)self getReportSizeForReportUsage:1]>> 3];
      LODWORD(eaHIDAccessory) = [(EAHIDAccessory *)self->_eaHIDAccessory HIDReportSizeInput];
      if (eaHIDAccessory)
      {
        [(EAHIDAccessory *)self->_eaHIDAccessory setHIDReportSizeOutput:[(EAOverHID *)self getReportSizeForReportUsage:2]>> 3];
        LODWORD(eaHIDAccessory) = [(EAHIDAccessory *)self->_eaHIDAccessory HIDReportSizeOutput];
        if (eaHIDAccessory)
        {
          if (IOHIDDeviceOpen([(EAHIDAccessory *)self->_eaHIDAccessory HIDDevice], 0))
          {
            LOBYTE(eaHIDAccessory) = 0;
          }

          else
          {
            IOHIDDeviceRegisterRemovalCallback([(EAHIDAccessory *)self->_eaHIDAccessory HIDDevice], sub_10004FDF8, self);
            self->_input = [[NSMutableData alloc] initWithLength:{-[EAHIDAccessory HIDReportSizeInput](self->_eaHIDAccessory, "HIDReportSizeInput") + 1}];
            IOHIDDeviceRegisterInputReportCallback([(EAHIDAccessory *)self->_eaHIDAccessory HIDDevice], [(NSMutableData *)self->_input mutableBytes], [(NSMutableData *)self->_input length], sub_10004FE84, self);
            v4 = [(EAHIDAccessory *)self->_eaHIDAccessory HIDDevice];
            Main = CFRunLoopGetMain();
            IOHIDDeviceScheduleWithRunLoop(v4, Main, kCFRunLoopDefaultMode);
            LOBYTE(eaHIDAccessory) = 1;
            self->_hidDeviceScheduled = 1;
          }
        }
      }
    }
  }

  return eaHIDAccessory;
}

- (BOOL)sendHIDReport:(char *)a3 reportID:(int)a4 length:(int)a5
{
  if (![(EAHIDAccessory *)self->_eaHIDAccessory HIDDevice])
  {
    return 0;
  }

  v9 = 1;
  self->_expectedState = 1;
  if (IOHIDDeviceSetReport([(EAHIDAccessory *)self->_eaHIDAccessory HIDDevice], kIOHIDReportTypeOutput, a4, a3, a5))
  {
    if (qword_100099828 != -1)
    {
      dispatch_once(&qword_100099828, &stru_100081D38);
    }

    if (sub_1000326D4())
    {
      sub_100032698();
      sub_10003262C();
      _os_log_impl(v11, v12, v13, v14, v15, 0x12u);
    }

    return 0;
  }

  return v9;
}

- (void)processControlMessageRequest:(id)a3
{
  if (a3 && [a3 length] > 7)
  {
    v5 = [a3 bytes];
    if (v5)
    {
      v6 = v5;
      v7 = *v5;
      v8 = v5[1];
      self->_expectedControlMessageID = bswap32(*(v5 + 2)) >> 16;
      v9 = __rev16(*(v5 + 3));
      if (v9 >= 9)
      {
        v10 = v8 | (v7 << 8);
        if ([a3 length] >= v9 && v10 == 10)
        {
          [(EAOverHID *)self logDebugMessageFromAccessory:v6 + 8 length:v9 - 8];
          self->_expectedState = 1;
        }
      }
    }
  }

  else
  {
    if (qword_100099828 != -1)
    {
      dispatch_once(&qword_100099828, &stru_100081D38);
    }

    if (sub_1000326A4())
    {
      [a3 length];
      sub_100011500();
      sub_1000325FC();
      _os_log_impl(v12, v13, v14, v15, v16, 0x16u);
    }
  }
}

- (BOOL)publishEAAccessory
{
  if (![(EAOverHID *)self accessoryInfoValid])
  {
    goto LABEL_41;
  }

  [(EAHIDAccessory *)self->_eaHIDAccessory setEAConnectionUUID:off_100099838(6, 0)];
  if (![(EAHIDAccessory *)self->_eaHIDAccessory EAConnectionUUID])
  {
    if (qword_100099828 != -1)
    {
      dispatch_once(&qword_100099828, &stru_100081D38);
    }

    if (!sub_1000326A4())
    {
      goto LABEL_41;
    }

    *buf = 0;
    goto LABEL_40;
  }

  v3 = off_100099840;
  v4 = [(EAHIDAccessory *)self->_eaHIDAccessory EAConnectionUUID];
  v5 = [(EAHIDAccessory *)self->_eaHIDAccessory EAProtocolString];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_10003158C;
  v37[3] = &unk_100081DC0;
  v37[4] = self;
  [(EAHIDAccessory *)self->_eaHIDAccessory setEAEndpointUUID:(v3)(v4, 5, 5, v5, v37, 0)];
  if (![(EAHIDAccessory *)self->_eaHIDAccessory EAEndpointUUID])
  {
    if (qword_100099828 != -1)
    {
      dispatch_once(&qword_100099828, &stru_100081D38);
    }

    if (!sub_1000326A4())
    {
      goto LABEL_41;
    }

    *buf = 0;
    goto LABEL_40;
  }

  if (qword_100099828 != -1)
  {
    dispatch_once(&qword_100099828, &stru_100081D38);
  }

  if (sub_1000326A4())
  {
    v6 = [(EAHIDAccessory *)self->_eaHIDAccessory EAEndpointUUID];
    *buf = 138412290;
    *v41 = v6;
    sub_10003264C();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    if (qword_100099828 != -1)
    {
      dispatch_once(&qword_100099828, &stru_100081D38);
    }
  }

  if (sub_1000326A4())
  {
    v12 = [(EAHIDAccessory *)self->_eaHIDAccessory firmwareVersionMajor];
    v13 = [(EAHIDAccessory *)self->_eaHIDAccessory firmwareVersionMinor];
    v14 = [(EAHIDAccessory *)self->_eaHIDAccessory firmwareVersionRelease];
    *buf = 67109632;
    *v41 = v12;
    *&v41[4] = 1024;
    *&v41[6] = v13;
    v42 = 1024;
    v43 = v14;
    sub_10003264C();
    _os_log_impl(v15, v16, v17, v18, v19, 0x14u);
  }

  v20 = [NSString stringWithFormat:@"%d.%d.%d", [(EAHIDAccessory *)self->_eaHIDAccessory firmwareVersionMajor], [(EAHIDAccessory *)self->_eaHIDAccessory firmwareVersionMinor], [(EAHIDAccessory *)self->_eaHIDAccessory firmwareVersionRelease]];
  if (v20)
  {
    v38[0] = @"Name";
    v39[0] = [(EAHIDAccessory *)self->_eaHIDAccessory name];
    v38[1] = @"Manufacturer";
    v39[1] = [(EAHIDAccessory *)self->_eaHIDAccessory manufacturer];
    v38[2] = @"Model";
    v39[2] = [(EAHIDAccessory *)self->_eaHIDAccessory modelNumber];
    v38[3] = @"SerialNumber";
    v39[3] = [(EAHIDAccessory *)self->_eaHIDAccessory serialNumber];
    v38[4] = @"HardwareVersion";
    v21 = [(EAHIDAccessory *)self->_eaHIDAccessory hardwareVersion];
    v38[5] = @"FirmwareVersionActive";
    v39[4] = v21;
    v39[5] = v20;
    v22 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:6];
    if (qword_100099828 != -1)
    {
      dispatch_once(&qword_100099828, &stru_100081D38);
    }

    v23 = qword_100099830;
    if (sub_1000326D4())
    {
      *buf = 138412290;
      *v41 = v22;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "AccessoryInfo for EAEndpoint=%@", buf, 0xCu);
    }

    if ((off_100099848)([(EAHIDAccessory *)self->_eaHIDAccessory EAEndpointUUID], v22))
    {
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_100031630;
      v36[3] = &unk_100081DE8;
      v36[4] = self;
      off_100099850(v36, @"EA_SessionOpen");
      if ((off_100099858)([(EAHIDAccessory *)self->_eaHIDAccessory EAConnectionUUID]))
      {
        if (qword_100099828 != -1)
        {
          dispatch_once(&qword_100099828, &stru_100081D38);
        }

        if (sub_1000326A4())
        {
          v24 = [(EAHIDAccessory *)self->_eaHIDAccessory EAProtocolString];
          *buf = 138412290;
          *v41 = v24;
          sub_10003264C();
          _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
        }

        LOBYTE(v20) = 1;
        goto LABEL_23;
      }

      if (qword_100099828 != -1)
      {
        dispatch_once(&qword_100099828, &stru_100081D38);
      }

      if (!sub_1000326A4())
      {
LABEL_41:
        LOBYTE(v20) = 0;
        goto LABEL_23;
      }

      *buf = 0;
    }

    else
    {
      if (qword_100099828 != -1)
      {
        dispatch_once(&qword_100099828, &stru_100081D38);
      }

      if (!sub_1000326A4())
      {
        goto LABEL_41;
      }

      *buf = 0;
    }

LABEL_40:
    sub_10003264C();
    _os_log_impl(v31, v32, v33, v34, v35, 2u);
    goto LABEL_41;
  }

LABEL_23:
  [(EAOverHID *)self idleExitAllowed:1];
  return v20;
}

- (id)getEAProductIDForAccessory
{
  result = [(EAHIDAccessory *)self->_eaHIDAccessory EAProtocolString];
  if (result)
  {
    v4 = [[(NSString *)[(EAHIDAccessory *)self->_eaHIDAccessory EAProtocolString] pathExtension] componentsSeparatedByString:@"-"];

    return [(NSArray *)v4 firstObject];
  }

  return result;
}

@end