@interface UARPAppleHPM
- (BOOL)accMode7AddressSpaceRead:(unsigned int)a3 buffer:(void *)a4 bufferLength:(unsigned int)a5 lengthRead:(unsigned int *)a6 error:(id *)a7;
- (BOOL)accMode7AddressSpaceWrite:(unsigned int)a3 buffer:(void *)a4 bufferLength:(unsigned int)a5 error:(id *)a6;
- (BOOL)accMode7ClearLogs:(id *)a3;
- (BOOL)accMode7FirmwareApply:(id *)a3;
- (BOOL)accMode7FirmwareHasStagedAssets:(id *)a3;
- (BOOL)accMode7FirmwareRescind:(id *)a3;
- (BOOL)accMode7FirmwareUpdateAllowed:(id *)a3;
- (BOOL)accMode7FirmwareUpdateCleanup:(id *)a3;
- (BOOL)accMode7FirmwareUpdateGetState:(accMode7FirmwareUpdateState2 *)a3 error:(id *)a4;
- (BOOL)accMode7FirmwareUpdateInitialize:(id *)a3;
- (BOOL)accMode7FirmwareUpdateSendCommand:(unsigned int)a3 error:(id *)a4;
- (BOOL)accMode7FirmwareUpdateWriteData:(id)a3 offset:(unint64_t)a4 error:(id *)a5;
- (BOOL)accMode7FirmwareVerifyStagedAsset:(id *)a3;
- (BOOL)accMode7SetLogLevel:(unint64_t)a3 error:(id *)a4;
- (BOOL)accMode7SolicitAnalytics:(id)a3 error:(id *)a4;
- (BOOL)accMode7SolicitLogs:(id)a3 modelName:(id)a4 serialNumber:(id)a5 error:(id *)a6;
- (BOOL)checkConnection:(id *)a3;
- (BOOL)doAtomic4CC:(unsigned int)a3 data:(char *)a4 dataLength:(unsigned int)a5 extData:(unsigned int)a6 dataOut:(char *)a7 dataOutLength:(unsigned int)a8 dataOutLengthRead:(unsigned int *)a9 extDataOut:(unsigned int *)a10 error:(id *)a11;
- (BOOL)iecsCommand:(unsigned int)a3 flags:(unsigned int)a4 error:(id *)a5;
- (BOOL)iecsRead:(unsigned int)a3 buffer:(char *)a4 length:(unsigned __int8)a5 lengthRead:(unint64_t *)a6 error:(id *)a7;
- (BOOL)iecsWrite:(unsigned int)a3 buffer:(char *)a4 length:(unsigned __int8)a5 error:(id *)a6;
- (BOOL)isConnnected;
- (BOOL)isEqual:(id)a3;
- (BOOL)legacyPAFirmwareUpdateCleanup:(id *)a3;
- (BOOL)legacyPAFirmwareUpdateInitialize:(id *)a3;
- (BOOL)legacyPAFirmwareUpdateWriteData:(id)a3 offset:(unint64_t)a4 error:(id *)a5;
- (BOOL)legacyPAFirmwareVerifyStagedAsset:(id *)a3;
- (BOOL)probeVDOs:(id *)a3;
- (BOOL)processAppleVDO:(unsigned int)a3 error:(id *)a4;
- (BOOL)processAppleVDOs:(id *)a3;
- (BOOL)processCapabilityVDO:(id *)a3;
- (BOOL)processEndpointVDO:(id *)a3;
- (BOOL)processVDOs:(id *)a3;
- (BOOL)readCFUa:(unsigned int)a3 remoteEndpoint:(unsigned int)a4 offset:(unsigned __int16)a5 buffer:(char *)a6 bufferLength:(unsigned int)a7 lengthRead:(unsigned int *)a8 error:(id *)a9;
- (BOOL)setCFUp:(BOOL)a3 error:(id *)a4;
- (id)accMode7StagedFwVersion:(id *)a3;
- (id)description;
- (void)checkForPassthroughCharging:(unsigned int)a3;
- (void)checkForPassthroughChargingOnAppleHPMDevice:(unsigned int)a3;
- (void)clearVDOs;
- (void)dealloc;
- (void)handleNotConnected;
- (void)logBuffer:(int)a3 buffer:(char *)a4 length:(unsigned int)a5 desc:(id)a6;
- (void)updateRetryMetric:(unint64_t)a3;
@end

@implementation UARPAppleHPM

- (id)accMode7StagedFwVersion:(id *)a3
{
  v12 = 0;
  v11 = 0;
  v4 = [(UARPAppleHPM *)self accMode7FirmwareUpdateGetState:&v11 error:a3];
  v5 = v11;
  log = self->_log;
  v7 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
  if (v4 && v5 == 5)
  {
    if (v7)
    {
      *buf = 136315394;
      v14 = "[UARPAppleHPM(AccMode7) accMode7StagedFwVersion:]";
      v15 = 1024;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: reporting staged fw version from accessory of %u", buf, 0x12u);
    }

    v8 = v12;
  }

  else
  {
    if (v7)
    {
      *buf = 136315138;
      v14 = "[UARPAppleHPM(AccMode7) accMode7StagedFwVersion:]";
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: could not report staged fw version from accessory", buf, 0xCu);
    }

    v8 = 0;
  }

  v9 = [UARPMagSafeCable getFirmwareVersionGiven32Bits:v8];

  return v9;
}

- (BOOL)accMode7FirmwareUpdateAllowed:(id *)a3
{
  v8 = 0;
  v7 = 0;
  if (![(UARPAppleHPM *)self accMode7FirmwareUpdateGetState:&v7 error:a3])
  {
    v5 = os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR);
    if (!v5)
    {
      return v5;
    }

    sub_100022350();
    goto LABEL_5;
  }

  if (v7 != 7)
  {
    LOBYTE(v5) = 1;
    return v5;
  }

  log = self->_log;
  v5 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
  if (v5)
  {
    *buf = 136315394;
    v10 = "[UARPAppleHPM(AccMode7) accMode7FirmwareUpdateAllowed:]";
    v11 = 1024;
    v12 = HIDWORD(v7);
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Firmware udpate is BLOCKED, (error %u)", buf, 0x12u);
LABEL_5:
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)accMode7FirmwareUpdateInitialize:(id *)a3
{
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_1000223D0();
  }

  v15 = 0;
  v14 = 0;
  if (![(UARPAppleHPM *)self accMode7FirmwareUpdateGetState:&v14 error:a3])
  {
    v6 = os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR);
    if (!v6)
    {
      return v6;
    }

    goto LABEL_9;
  }

  if (v14 == 1)
  {
LABEL_19:
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      sub_100022580();
    }

    v9 = [(UARPAppleHPM *)self accMode7FirmwareUpdateSendCommand:2 error:a3];
    log = self->_log;
    if ((v9 & 1) == 0)
    {
      v6 = os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR);
      if (!v6)
      {
        return v6;
      }

      sub_1000225B4();
      goto LABEL_10;
    }

    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      sub_100022634();
    }

    v11 = 300;
    while (1)
    {
      if (![(UARPAppleHPM *)self accMode7FirmwareUpdateGetState:&v14 error:a3])
      {
        v6 = os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR);
        if (!v6)
        {
          return v6;
        }

        goto LABEL_9;
      }

      if (v14 != 2)
      {
        break;
      }

      sleepMS(100);
      if (!--v11)
      {
        goto LABEL_37;
      }
    }

    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100022668(&v14);
    }

LABEL_37:
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      sub_1000226E4();
    }

    if ([(UARPAppleHPM *)self accMode7FirmwareUpdateGetState:&v14 error:a3])
    {
      v12 = self->_log;
      if (v14 == 3)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          sub_100022794();
        }

        LOBYTE(v6) = 1;
        return v6;
      }

      v6 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
      if (!v6)
      {
        return v6;
      }

      sub_100022718(&v14);
      goto LABEL_10;
    }

    v6 = os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR);
    if (!v6)
    {
      return v6;
    }

LABEL_9:
    sub_100022404();
LABEL_10:
    LOBYTE(v6) = 0;
    return v6;
  }

  if (v14 == 7)
  {
    v5 = self->_log;
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
    if (!v6)
    {
      return v6;
    }

    *buf = 136315394;
    v17 = "[UARPAppleHPM(AccMode7) accMode7FirmwareUpdateInitialize:]";
    v18 = 1024;
    v19 = HIDWORD(v14);
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s: Firmware udpate is BLOCKED, (error %d)", buf, 0x12u);
    goto LABEL_10;
  }

  v7 = self->_log;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v17 = "[UARPAppleHPM(AccMode7) accMode7FirmwareUpdateInitialize:]";
    v18 = 1024;
    v19 = v14;
    v20 = 1024;
    v21 = HIDWORD(v14);
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s: Expected Idle, but in state %d (error %d). Attempting to recover.", buf, 0x18u);
  }

  if (![(UARPAppleHPM *)self accMode7FirmwareUpdateSendCommand:1 error:a3])
  {
    v6 = os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR);
    if (!v6)
    {
      return v6;
    }

    sub_100022484();
    goto LABEL_10;
  }

  v8 = 300;
  do
  {
    if (![(UARPAppleHPM *)self accMode7FirmwareUpdateGetState:&v14 error:a3])
    {
      v6 = os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR);
      if (!v6)
      {
        return v6;
      }

      goto LABEL_9;
    }

    if (v14 == 1)
    {
      goto LABEL_19;
    }

    sleepMS(100);
    --v8;
  }

  while (v8);
  if (v14 == 1)
  {
    goto LABEL_19;
  }

  v6 = os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR);
  if (v6)
  {
    sub_100022504(&v14);
    goto LABEL_10;
  }

  return v6;
}

- (BOOL)accMode7FirmwareUpdateWriteData:(id)a3 offset:(unint64_t)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_1000227C8();
  }

  if ([v8 length])
  {
    v9 = 0;
    while (1)
    {
      v19 = v6 & 0x3FF | 0x800;
      v10 = objc_alloc_init(NSMutableData);
      [v10 appendBytes:&v19 length:4];
      v11 = [v8 length];
      v12 = &v11[-v9] >= 0x3C ? 60 : &v11[-v9];
      v13 = [v8 subdataWithRange:{v9, v12}];
      [v10 appendData:v13];
      v18 = 0;
      if (!-[UARPAppleHPM writeCFUs:remoteEndpoint:protocol:buffer:bufferLength:lengthWritten:error:](self, "writeCFUs:remoteEndpoint:protocol:buffer:bufferLength:lengthWritten:error:", 0, 1, 4, [v10 mutableBytes], objc_msgSend(v10, "length"), &v18, a5))
      {
        break;
      }

      v14 = v18;
      if (v12 != v18)
      {
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109376;
          v21 = v12;
          v22 = 1024;
          v23 = v18;
          _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "write mismatch! expected %u actual %u", buf, 0xEu);
        }

        v14 = v18;
      }

      v6 += v14;
      v9 += v14;

      if (v9 >= [v8 length])
      {
        goto LABEL_14;
      }
    }

    v16 = 0;
  }

  else
  {
LABEL_14:
    v16 = 1;
  }

  return v16;
}

- (BOOL)accMode7FirmwareVerifyStagedAsset:(id *)a3
{
  if (![(UARPAppleHPM *)self accMode7FirmwareUpdateSendCommand:3 error:a3])
  {
    v6 = os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR);
    if (!v6)
    {
      return v6;
    }

    sub_1000227FC();
    goto LABEL_22;
  }

  v5 = 300;
  while (1)
  {
    v9 = 0;
    v8 = 0;
    if (![(UARPAppleHPM *)self accMode7FirmwareUpdateGetState:&v8 error:a3])
    {
      if (!os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      goto LABEL_10;
    }

    if (v8 != 4)
    {
      break;
    }

    sleepMS(100);
    if (!--v5)
    {
      goto LABEL_13;
    }
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_1000228FC(&v8);
  }

LABEL_13:
  v9 = 0;
  v8 = 0;
  if (![(UARPAppleHPM *)self accMode7FirmwareUpdateGetState:&v8 error:a3])
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
LABEL_10:
      sub_10002287C();
    }

LABEL_22:
    LOBYTE(v6) = 0;
    return v6;
  }

  if (v8 != 5)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100022978(&v8);
    }

    goto LABEL_22;
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_1000229F4();
  }

  LOBYTE(v6) = 1;
  return v6;
}

- (BOOL)accMode7FirmwareUpdateCleanup:(id *)a3
{
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100022A28();
  }

  return 1;
}

- (BOOL)accMode7FirmwareApply:(id *)a3
{
  v4 = [(UARPAppleHPM *)self accMode7FirmwareUpdateSendCommand:4 error:a3];
  log = self->_log;
  if (v4)
  {
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      sub_100022ADC();
    }
  }

  else if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    sub_100022A5C();
  }

  return v4;
}

- (BOOL)accMode7FirmwareHasStagedAssets:(id *)a3
{
  v7 = 0;
  v6 = 0;
  if (![(UARPAppleHPM *)self accMode7FirmwareUpdateGetState:&v6 error:a3])
  {
    v4 = os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR);
    if (!v4)
    {
      return v4;
    }

    sub_100022B10();
    goto LABEL_9;
  }

  if (v6 != 5)
  {
    v4 = os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR);
    if (!v4)
    {
      return v4;
    }

    sub_100022B90(&v6);
LABEL_9:
    LOBYTE(v4) = 0;
    return v4;
  }

  LOBYTE(v4) = 1;
  return v4;
}

- (BOOL)accMode7FirmwareRescind:(id *)a3
{
  v4 = [(UARPAppleHPM *)self accMode7FirmwareUpdateSendCommand:1 error:a3];
  log = self->_log;
  if (v4)
  {
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      sub_100022C8C();
    }
  }

  else if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    sub_100022C0C();
  }

  return v4;
}

- (BOOL)accMode7SolicitLogs:(id)a3 modelName:(id)a4 serialNumber:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = uarpAssetTagStructLogs();
  v14 = [[UARPAssetTag alloc] initWithChar1:*v13 char2:v13[1] char3:v13[2] char4:v13[3]];
  v15 = uarpDynamicAssetComponentURL();
  v41 = [NSFileHandle fileHandleForWritingToURL:v15 error:a6];
  if (!v41)
  {
    v28 = 0;
    goto LABEL_55;
  }

  v40 = v15;
  v39 = v12;
  v37 = v11;
  v38 = v10;
  v16 = 0;
  while (1)
  {
    v17 = v16 & 0x3FF;
    if ((v16 & 0x3FF) == 0)
    {
      *buf = v16 >> 10;
      LODWORD(v50[0]) = 0;
      if (![(UARPAppleHPM *)self writeCFUa:0 remoteEndpoint:1 offset:28672 buffer:buf bufferLength:4 lengthWritten:v50 error:a6])
      {
        break;
      }
    }

    memset(v50, 0, sizeof(v50));
    if (v17 <= 0x3E8)
    {
      v18 = 24;
    }

    else
    {
      v18 = 1024 - v17;
    }

    v43 = 0;
    if (![(UARPAppleHPM *)self readCFUa:0 remoteEndpoint:1 offset:v17 | 0x7000 buffer:v50 bufferLength:v18 lengthRead:&v43 error:a6])
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_100022D40();
      }

      goto LABEL_41;
    }

    if (!v43)
    {
      goto LABEL_30;
    }

    v16 += v43;
    if (*(v50 + v43 - 1) == 255)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v45 = "[UARPAppleHPM(AccMode7) accMode7SolicitLogs:modelName:serialNumber:error:]";
        v46 = 1024;
        v47 = v16;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: EOF reached at %u", buf, 0x12u);
      }

      v21 = v43 - 1;
    }

    else
    {
      if (v43 == 1 || *(v50 + v43 - 2) != 255 || *(v50 + v43 - 3))
      {
        v19 = 1;
        goto LABEL_20;
      }

      v27 = self->_log;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v45 = "[UARPAppleHPM(AccMode7) accMode7SolicitLogs:modelName:serialNumber:error:]";
        v46 = 1024;
        v47 = v16;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%s: EOF reached at %u", buf, 0x12u);
      }

      v21 = v43 - 2;
    }

    v43 = v21;
    if (!v21)
    {
LABEL_30:
      v29 = self->_log;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v45 = "[UARPAppleHPM(AccMode7) accMode7SolicitLogs:modelName:serialNumber:error:]";
        v46 = 1024;
        v47 = v18;
        v48 = 1024;
        LODWORD(v49) = v43;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%s: Requested %ul bytes, got %u bytes", buf, 0x18u);
      }

      goto LABEL_41;
    }

    v19 = 0;
LABEL_20:
    if (v16 > 0x10000)
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_100022E50();
      }

      goto LABEL_41;
    }

    v22 = objc_autoreleasePoolPush();
    v23 = [NSData dataWithBytes:v50 length:v43];
    v24 = self->_log;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v45 = "[UARPAppleHPM(AccMode7) accMode7SolicitLogs:modelName:serialNumber:error:]";
      v46 = 1024;
      v47 = v16 - v43;
      v48 = 2112;
      v49 = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s: read logs offset %u %@", buf, 0x1Cu);
    }

    v42 = 0;
    v25 = [v41 uarpWriteData:v23 error:&v42];
    v26 = v42;
    if ((v25 & 1) == 0)
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_100022DC0();
      }

      objc_autoreleasePoolPop(v22);
      goto LABEL_41;
    }

    objc_autoreleasePoolPop(v22);
    if ((v19 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100022CC0();
  }

LABEL_41:
  [v41 uarpCloseAndReturnError:0];
  v30 = [[UARPAssetVersion alloc] initWithMajorVersion:0 minorVersion:0 releaseVersion:0 buildVersion:0];
  v31 = [[UARPSuperBinaryAsset alloc] initWithFormatVersion:4 assetVersion:v30];
  v11 = v37;
  v32 = [[UARPSuperBinaryAssetTLV alloc] initWithType:272691969 stringValue:v37];
  [v31 addMetaDataTLV:v32];

  v33 = [[UARPSuperBinaryAssetTLV alloc] initWithType:272691970 stringValue:v12];
  [v31 addMetaDataTLV:v33];

  v34 = [[UARPSuperBinaryAssetPayload alloc] initWithPayloadTag:v14 assetVersion:v30];
  if ([v34 setPayloadToContentsOfURL:v40 friendlyName:@"Logs"])
  {
    v35 = [[UARPSuperBinaryAssetTLV alloc] initWithType:272691968 stringValue:@"MagSafe.logs"];
    [v34 addMetaDataTLV:v35];
    [v31 addPayload:v34];
    v10 = v38;
    if ([v31 writeToURL:v38 error:a6])
    {
      if ([(UARPAppleHPM *)self accMode7ClearLogs:a6])
      {
        v28 = 1;
        goto LABEL_53;
      }

      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_100022F88();
      }
    }

    else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100022F08();
    }

    v28 = 0;
LABEL_53:

    v12 = v39;
  }

  else
  {
    v10 = v38;
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100022ECC();
    }

    v28 = 0;
  }

  v15 = v40;
LABEL_55:

  return v28;
}

- (BOOL)accMode7SetLogLevel:(unint64_t)a3 error:(id *)a4
{
  v7 = 0;
  v8 = a3;
  v5 = [(UARPAppleHPM *)self writeCFUa:0 remoteEndpoint:1 offset:28676 buffer:&v8 bufferLength:4 lengthWritten:&v7 error:a4];
  if (!v5 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100022FC4();
  }

  return v5;
}

- (BOOL)accMode7ClearLogs:(id *)a3
{
  v6 = 0;
  v7 = 1816356684;
  v4 = [(UARPAppleHPM *)self writeCFUa:0 remoteEndpoint:1 offset:28680 buffer:&v7 bufferLength:4 lengthWritten:&v6 error:a3];
  if (!v4 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10002304C();
  }

  return v4;
}

- (BOOL)accMode7SolicitAnalytics:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = uarpAssetTagStructAnalytics();
  v8 = [[UARPAssetTag alloc] initWithChar1:*v7 char2:v7[1] char3:v7[2] char4:v7[3]];
  v9 = uarpDynamicAssetComponentURL();
  v10 = [NSFileHandle fileHandleForWritingToURL:v9 error:a4];
  if (v10)
  {
    v25 = v8;
    v26 = v6;
    v27 = self;
    v11 = 0;
    while (1)
    {
      v29 = 0;
      if (![(UARPAppleHPM *)self readCFUa:0 remoteEndpoint:1 offset:(v11 - 24576) buffer:v34 bufferLength:24 lengthRead:&v29 error:a4]&& !v29)
      {
        break;
      }

      if (!v29)
      {
        goto LABEL_19;
      }

      v12 = objc_autoreleasePoolPush();
      v13 = [NSString alloc];
      v14 = [v13 initWithFormat:@"%.*s", v29, v34];
      v15 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", [v14 UTF8String], objc_msgSend(v14, "lengthOfBytesUsingEncoding:", 4));
      v28 = 0;
      v16 = [v10 uarpWriteData:v15 error:&v28];
      v17 = v28;
      if ((v16 & 1) == 0)
      {
        log = v27->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v31 = v14;
          v32 = 2112;
          v33 = v26;
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Error writing analytics string %@ to %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v12);
        self = v27;
        goto LABEL_19;
      }

      objc_autoreleasePoolPop(v12);
      v11 += v29;
      if (v11 >= 0x401)
      {
        self = v27;
        if (os_log_type_enabled(v27->_log, OS_LOG_TYPE_ERROR))
        {
          sub_10002314C();
        }

LABEL_19:
        [v10 uarpCloseAndReturnError:0];
        v20 = [[UARPAssetVersion alloc] initWithMajorVersion:0 minorVersion:0 releaseVersion:0 buildVersion:0];
        v21 = [[UARPSuperBinaryAsset alloc] initWithFormatVersion:4 assetVersion:v20];
        v8 = v25;
        v22 = [[UARPSuperBinaryAssetPayload alloc] initWithPayloadTag:v25 assetVersion:v20];
        if ([v22 setPayloadToContentsOfURL:v9 friendlyName:0])
        {
          v23 = [[UARPSuperBinaryAssetTLV alloc] initWithType:1483412481 unsignedInt32:0];
          [v22 addMetaDataTLV:v23];
          [v21 addPayload:v22];
          v6 = v26;
          if ([v21 writeToURL:v26 error:a4])
          {
            v34[0] = 1816357953;
            *buf = 0;
            v18 = [(UARPAppleHPM *)v27 writeCFUa:0 remoteEndpoint:1 offset:40960 buffer:v34 bufferLength:4 lengthWritten:buf error:a4];
            if ((v18 & 1) == 0 && os_log_type_enabled(v27->_log, OS_LOG_TYPE_ERROR))
            {
              sub_100023284();
            }
          }

          else
          {
            if (os_log_type_enabled(v27->_log, OS_LOG_TYPE_ERROR))
            {
              sub_100023204();
            }

            v18 = 0;
          }
        }

        else
        {
          v6 = v26;
          if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
          {
            sub_1000231C8();
          }

          v18 = 0;
        }

        goto LABEL_32;
      }

      self = v27;
      if (!v29)
      {
        goto LABEL_19;
      }
    }

    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_1000230CC();
    }

    v18 = 0;
    v8 = v25;
    v6 = v26;
  }

  else
  {
    v18 = 0;
  }

LABEL_32:

  return v18;
}

- (BOOL)accMode7FirmwareUpdateGetState:(accMode7FirmwareUpdateState2 *)a3 error:(id *)a4
{
  v8 = 0;
  if (![(UARPAppleHPM *)self accMode7AddressSpaceRead:1 buffer:a3 bufferLength:12 lengthRead:&v8 error:a4])
  {
    v6 = os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR);
    if (!v6)
    {
      return v6;
    }

    sub_100023304();
    goto LABEL_14;
  }

  if (v8 == 8)
  {
    a3->var1 = -1;
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      sub_100023384(&a3->var0);
    }

    goto LABEL_10;
  }

  if (v8 != 12)
  {
    v6 = os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR);
    if (!v6)
    {
      return v6;
    }

    sub_1000234A4(&v8);
LABEL_14:
    LOBYTE(v6) = 0;
    return v6;
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100023404(&a3->var0);
  }

LABEL_10:
  LOBYTE(v6) = 1;
  return v6;
}

- (BOOL)accMode7FirmwareUpdateSendCommand:(unsigned int)a3 error:(id *)a4
{
  v7 = a3;
  v5 = [(UARPAppleHPM *)self accMode7AddressSpaceWrite:1 buffer:&v7 bufferLength:4 error:a4];
  if (!v5 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100023540();
  }

  return v5;
}

- (BOOL)accMode7AddressSpaceRead:(unsigned int)a3 buffer:(void *)a4 bufferLength:(unsigned int)a5 lengthRead:(unsigned int *)a6 error:(id *)a7
{
  if (a5)
  {
    v12 = 0;
    v13 = a3 << 10;
    while (1)
    {
      v16 = 0;
      v14 = v12 + 24 <= a5 ? 24 : a5 - v12;
      if (![(UARPAppleHPM *)self readCFUa:0 remoteEndpoint:1 offset:(v12 + v13) buffer:a4 + v12 bufferLength:v14 lengthRead:&v16 error:a7])
      {
        break;
      }

      v12 += v16;
      if (v16 < 0x18 || v12 >= a5)
      {
        goto LABEL_11;
      }
    }

    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_1000235C0();
    }

    return 0;
  }

  else
  {
    v12 = 0;
LABEL_11:
    if (a6)
    {
      *a6 = v12;
    }

    return 1;
  }
}

- (BOOL)accMode7AddressSpaceWrite:(unsigned int)a3 buffer:(void *)a4 bufferLength:(unsigned int)a5 error:(id *)a6
{
  if (!a5)
  {
    return 1;
  }

  v10 = 0;
  v11 = a3 << 10;
  while (1)
  {
    v14 = 0;
    v12 = v10 + 20 <= a5 ? 20 : a5 - v10;
    if (![(UARPAppleHPM *)self writeCFUa:0 remoteEndpoint:1 offset:(v10 + v11) buffer:a4 + v10 bufferLength:v12 lengthWritten:&v14 error:a6])
    {
      break;
    }

    if (v14 > 0x13)
    {
      v10 += v14;
      if (v10 < a5)
      {
        continue;
      }
    }

    return 1;
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100023640();
  }

  return 0;
}

- (BOOL)legacyPAFirmwareUpdateInitialize:(id *)a3
{
  v5 = [(UARPAppleHPM *)self setCFUp:1 error:a3];
  log = self->_log;
  if (v5)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = "[UARPAppleHPM(LegacyPA) legacyPAFirmwareUpdateInitialize:]";
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Enabled CFUp", buf, 0xCu);
    }

    *buf = 0x5AC000305AC8006;
    *&buf[8] = 276854784;
    if ([(UARPAppleHPM *)self sendVDM:0 buffer:buf length:12 flags:0 error:a3])
    {
      v7 = 0;
      while (1)
      {
        v52 = 0;
        sopType = self->_sopType;
        v50 = 0;
        LODWORD(v49) = 100;
        if (![(UARPAppleHPM *)self receiveVDM:&sopType buffer:v53 length:28 flags:0 sequence:&v52 checkSequence:1 maxRetries:v49 lengthReceived:&v50 error:a3])
        {
          break;
        }

        if (v53[0] == 95158275)
        {
          [(UARPAppleHPM *)self updateRetryMetric:v7];
          v53[0] = 95158275;
          v39 = [(UARPAppleHPM *)self sendVDM:0 buffer:v53 length:4 flags:0 error:a3];
          v41 = self->_log;
          if (v39)
          {
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
            {
              sub_100022794();
            }
          }

          else if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            sub_100024DA4(v41, v42, v43, v44, v45, v46, v47, v48);
          }

          return v39;
        }

        if (++v7 == 100)
        {
          v8 = self->_log;
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            sub_100024E94(v8, v9, v10, v11, v12, v13, v14, v15);
          }

          return 0;
        }
      }

      v31 = self->_log;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_100024E1C(v31, v32, v33, v34, v35, v36, v37, v38);
      }
    }

    else
    {
      v23 = self->_log;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_100024DA4(v23, v24, v25, v26, v27, v28, v29, v30);
      }
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100024D2C(log, v16, v17, v18, v19, v20, v21, v22);
  }

  return 0;
}

- (BOOL)legacyPAFirmwareUpdateWriteData:(id)a3 offset:(unint64_t)a4 error:(id *)a5
{
  v7 = a3;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_1000227C8();
  }

  if ([v7 length])
  {
    v8 = 0;
    while (2)
    {
      v37 = v8;
      v9 = 0;
      while (1)
      {
        v40 = 0;
        sopType = self->_sopType;
        v47[0] = 0;
        v38 = 0;
        LODWORD(v35) = 100;
        if (![(UARPAppleHPM *)self receiveVDM:&sopType buffer:v47 length:28 flags:0 sequence:&v40 checkSequence:1 maxRetries:v35 lengthReceived:&v38 error:a5])
        {
          log = self->_log;
          if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
          {
            sub_100024F0C(log, v17, v18, v19, v20, v21, v22, v23);
          }

          goto LABEL_23;
        }

        if (v47[0] == 95159809)
        {
          break;
        }

        v10 = self->_log;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v42 = "[UARPAppleHPM(LegacyPA) legacyPAFirmwareUpdateWriteData:offset:error:]";
          v43 = 1024;
          v44 = 95159809;
          v45 = 1024;
          v46 = v47[0];
          _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s: RX VDM Expected 0x%08x, got 0x%08x", buf, 0x18u);
        }

        sleepMS(5);
        if (++v9 == 100)
        {
          if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
          {
            sub_100024F84();
          }

LABEL_23:
          v15 = 0;
          goto LABEL_24;
        }
      }

      [(UARPAppleHPM *)self updateRetryMetric:v9];
      sleepMS(10);
      v11 = objc_alloc_init(NSMutableData);
      v12 = [v7 length];
      if (&v12[-v37] >= 0x18)
      {
        v13 = 24;
      }

      else
      {
        v13 = &v12[-v37];
      }

      v47[0] = (v13 << 6) + 95158289;
      [v11 appendBytes:v47 length:4];
      v36 = v7;
      v14 = [v7 subdataWithRange:{v37, v13}];
      [v11 appendData:v14];
      if (!-[UARPAppleHPM sendVDM:buffer:length:flags:error:](self, "sendVDM:buffer:length:flags:error:", 0, [v11 bytes], objc_msgSend(v11, "length"), 0, a5))
      {
        v26 = v14;
        v7 = v36;
        v27 = self->_log;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_100025004(v27, v28, v29, v30, v31, v32, v33, v34);
        }

        goto LABEL_23;
      }

      v8 = v13 + v37;

      v7 = v36;
      v15 = 1;
      if (v13 + v37 < [v36 length])
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = 1;
  }

LABEL_24:

  return v15;
}

- (BOOL)legacyPAFirmwareVerifyStagedAsset:(id *)a3
{
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_10002507C();
  }

  v19[0] = 0x5AC000405AC8006;
  v5 = [(UARPAppleHPM *)self sendVDM:0 buffer:v19 length:8 flags:0 error:a3];
  log = self->_log;
  if (v5)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      sub_100025128(log);
    }

    v7 = self->_log;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_1000251B8(v7);
    }

    v8 = self->_log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_100025248(v8);
    }

    v9 = self->_log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_1000252E4(v9);
    }

    v10 = self->_log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_100025374(v10);
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_1000250B0(log, v11, v12, v13, v14, v15, v16, v17);
  }

  return v5;
}

- (BOOL)legacyPAFirmwareUpdateCleanup:(id *)a3
{
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100022A28();
  }

  v5 = [(UARPAppleHPM *)self setCFUp:0 error:a3];
  log = self->_log;
  if (v5)
  {
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v15 = 136315138;
      v16 = "[UARPAppleHPM(LegacyPA) legacyPAFirmwareUpdateCleanup:]";
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Disabled CFUp", &v15, 0xCu);
    }
  }

  else if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    sub_100025404(log, v7, v8, v9, v10, v11, v12, v13);
  }

  return v5;
}

- (void)dealloc
{
  deviceInterface = self->_deviceInterface;
  if (deviceInterface && *deviceInterface)
  {
    (*(*deviceInterface + 3))();
  }

  pluginInterface = self->_pluginInterface;
  if (pluginInterface)
  {
    IODestroyPlugInInterface(pluginInterface);
  }

  v5.receiver = self;
  v5.super_class = UARPAppleHPM;
  [(UARPAppleHPM *)&v5 dealloc];
}

- (void)checkForPassthroughCharging:(unsigned int)a3
{
  iterator = 0;
  if (IORegistryEntryGetChildIterator(a3, "IOService", &iterator))
  {
    v4 = 1;
  }

  else
  {
    v4 = iterator == 0;
  }

  if (!v4)
  {
    do
    {
      v5 = IOIteratorNext(iterator);
      if (!v5)
      {
        break;
      }

      v6 = v5;
      if (IOObjectConformsTo(v5, "AppleHPMDevice"))
      {
        [(UARPAppleHPM *)self checkForPassthroughChargingOnAppleHPMDevice:v6];
      }

      IOObjectRelease(v6);
    }

    while (!self->_hasChargePassthru);
    IOObjectRelease(iterator);
  }
}

- (void)checkForPassthroughChargingOnAppleHPMDevice:(unsigned int)a3
{
  iterator = 0;
  if (IORegistryEntryGetChildIterator(a3, "IOService", &iterator))
  {
    v4 = 1;
  }

  else
  {
    v4 = iterator == 0;
  }

  if (!v4)
  {
    v5 = IOIteratorNext(iterator);
    if (v5)
    {
      v6 = v5;
      do
      {
        if (IOObjectConformsTo(v6, "IOPortTransportStateCC"))
        {
          HIDWORD(v13) = 0;
          CFProperty = IORegistryEntryCreateCFProperty(v6, @"Vendor ID (SOP)", kCFAllocatorDefault, 0);
          if (CFProperty)
          {
            v8 = CFProperty;
            v9 = CFGetTypeID(CFProperty);
            if (v9 == CFNumberGetTypeID())
            {
              CFNumberGetValue(v8, kCFNumberIntType, &v13 + 4);
            }

            CFRelease(v8);
          }

          LODWORD(v13) = 0;
          v10 = IORegistryEntryCreateCFProperty(v6, @"Product ID (SOP)", kCFAllocatorDefault, 0);
          if (v10)
          {
            v11 = v10;
            v12 = CFGetTypeID(v10);
            if (v12 == CFNumberGetTypeID())
            {
              CFNumberGetValue(v11, kCFNumberIntType, &v13);
            }

            CFRelease(v11);
          }

          if (v13)
          {
            self->_hasChargePassthru = 1;
          }
        }

        if (!self->_hasChargePassthru)
        {
          [(UARPAppleHPM *)self checkForPassthroughChargingOnAppleHPMDevice:v6];
        }

        IOObjectRelease(v6);
        v6 = IOIteratorNext(iterator);
      }

      while (v6);
    }

    IOObjectRelease(iterator);
  }
}

- (void)updateRetryMetric:(unint64_t)a3
{
  if (a3)
  {
    rxVdmRetryPacketCount = self->_rxVdmRetryPacketCount;
    v4 = a3 + rxVdmRetryPacketCount++ * self->_rxVdmRetryAverage;
    self->_rxVdmRetryPacketCount = rxVdmRetryPacketCount;
    self->_rxVdmRetryAverage = v4 / rxVdmRetryPacketCount;
    if (self->_rxVdmRetryMax < a3)
    {
      self->_rxVdmRetryMax = a3;
    }

    if (self->_rxVdmRetryMin > a3)
    {
      self->_rxVdmRetryMin = a3;
    }
  }

  else
  {
    ++self->_rxVdmNoRetryPacketCount;
  }
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@"RID = <%d>", self->_rid];
  [v3 appendFormat:@", MagSafe = <%d>", self->_hasMagSafe];
  [v3 appendFormat:@", Connected = <%d>", self->_connected];
  [v3 appendFormat:@", SOP Type = <%d>", self->_sopType];
  [v3 appendFormat:@", UUID = <%@>", self->_uuid];
  [v3 appendFormat:@", SOP Delegate = <%@>", self->_sopDelegate];
  [v3 appendFormat:@", SOP Prime Delegate = <%@>", self->_sopPrimeDelegate];
  v4 = [NSString stringWithString:v3];

  return v4;
}

- (void)logBuffer:(int)a3 buffer:(char *)a4 length:(unsigned int)a5 desc:(id)a6
{
  v9 = a6;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v11 = 138413058;
    v12 = v9;
    v13 = 1024;
    v14 = a5;
    v15 = 1024;
    v16 = a3;
    v17 = 2112;
    v18 = self;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%@ %d bytes on SOP %d for %@", &v11, 0x22u);
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(UARPAppleHPM *)self rid];
      if (v6 == [(UARPAppleHPM *)v5 rid]&& (v7 = [(UARPAppleHPM *)self pluginInterface], v7 == [(UARPAppleHPM *)v5 pluginInterface]))
      {
        v10 = [(UARPAppleHPM *)self deviceInterface];
        v8 = v10 == [(UARPAppleHPM *)v5 deviceInterface];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)iecsRead:(unsigned int)a3 buffer:(char *)a4 length:(unsigned __int8)a5 lengthRead:(unint64_t *)a6 error:(id *)a7
{
  v7 = a5;
  v16 = 0;
  if (a6)
  {
    v10 = a6;
  }

  else
  {
    v10 = &v16;
  }

  v11 = a5;
  if ((*(*self->_deviceInterface + 5))(self->_deviceInterface, 0, a3, a4, a5, 0, v10))
  {
    v12 = os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR);
    if (v12)
    {
      sub_100026F3C();
LABEL_10:
      LOBYTE(v12) = 0;
    }
  }

  else
  {
    if (*v10 >= v11)
    {
      LOBYTE(v12) = 1;
      return v12;
    }

    log = self->_log;
    v12 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
    if (v12)
    {
      v14 = *v10;
      *buf = 67109632;
      v18 = a3;
      v19 = 1024;
      v20 = v7;
      v21 = 2048;
      v22 = v14;
      _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Read register number 0x%2x, expected %hhu bytes, but read %llu bytes", buf, 0x18u);
      goto LABEL_10;
    }
  }

  return v12;
}

- (BOOL)iecsWrite:(unsigned int)a3 buffer:(char *)a4 length:(unsigned __int8)a5 error:(id *)a6
{
  v7 = (*(*self->_deviceInterface + 6))(self->_deviceInterface, 0, a3, a4, a5, 0);
  if (v7 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100026FB0();
  }

  return v7 == 0;
}

- (BOOL)iecsCommand:(unsigned int)a3 flags:(unsigned int)a4 error:(id *)a5
{
  v6 = (*(*self->_deviceInterface + 7))(self->_deviceInterface, 0);
  if (v6 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100027024();
  }

  return v6 == 0;
}

- (BOOL)isConnnected
{
  if (![(UARPAppleHPM *)self checkConnection:0]&& os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100027318();
  }

  connected = self->_connected;
  if (!connected)
  {
    [(UARPAppleHPM *)self handleNotConnected];
  }

  return connected;
}

- (BOOL)checkConnection:(id *)a3
{
  v16 = 0;
  v4 = [(UARPAppleHPM *)self iecsRead:26 buffer:v17 length:4 lengthRead:&v16 error:a3];
  if (v4)
  {
    if (v17[0])
    {
      if ((v17[0] & 0xE) == 0xC || !self->_sopType)
      {
        self->_connected = 1;
        return v4;
      }

      log = self->_log;
      if (!os_log_type_enabled(log, OS_LOG_TYPE_INFO))
      {
        goto LABEL_12;
      }

      *buf = 138412290;
      v19 = self;
      v6 = "not connected - unknown ra <%@>";
    }

    else
    {
      log = self->_log;
      if (!os_log_type_enabled(log, OS_LOG_TYPE_INFO))
      {
LABEL_12:
        self->_connected = 0;
        return v4;
      }

      *buf = 138412290;
      v19 = self;
      v6 = "not connected - plug not present <%@>";
    }

    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, v6, buf, 0xCu);
    goto LABEL_12;
  }

  v7 = self->_log;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100027380(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  return v4;
}

- (void)handleNotConnected
{
  self->_connected = 0;
  serialNumberVDO = self->_serialNumberVDO;
  self->_serialNumberVDO = 0;

  vendorNameVDO = self->_vendorNameVDO;
  self->_vendorNameVDO = 0;

  productNameVDO = self->_productNameVDO;
  self->_productNameVDO = 0;

  userStringVDO = self->_userStringVDO;
  self->_userStringVDO = 0;

  modelStringVDO = self->_modelStringVDO;
  self->_modelStringVDO = 0;

  manufacturerVDO = self->_manufacturerVDO;
  self->_manufacturerVDO = 0;

  firmwareVersionVDO = self->_firmwareVersionVDO;
  self->_firmwareVersionVDO = 0;

  hardwareVersionVDO = self->_hardwareVersionVDO;
  self->_hardwareVersionVDO = 0;
}

- (BOOL)probeVDOs:(id *)a3
{
  if (self->_sopType && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_1000273F8();
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100027460();
  }

  if (![(UARPAppleHPM *)self checkConnection:0])
  {
    v7 = os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR);
    if (!v7)
    {
      return v7;
    }

    sub_1000274C8();
LABEL_20:
    LOBYTE(v7) = 0;
    return v7;
  }

  if (!self->_connected)
  {
    v7 = os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR);
    if (!v7)
    {
      return v7;
    }

    sub_1000275D8();
    goto LABEL_20;
  }

  v5 = [(UARPAppleHPM *)self processVDOs:a3];
  log = self->_log;
  if ((v5 & 1) == 0)
  {
    v7 = os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR);
    if (!v7)
    {
      return v7;
    }

    sub_100027530();
    goto LABEL_20;
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Processing VDOs", v9, 2u);
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100027570();
  }

  LOBYTE(v7) = 1;
  return v7;
}

- (void)clearVDOs
{
  *&self->_vdoEndpoint = 0;
  *&self->_vdoEndpoints = 0;
  serialNumberVDO = self->_serialNumberVDO;
  self->_serialNumberVDO = 0;

  vendorNameVDO = self->_vendorNameVDO;
  self->_vendorNameVDO = 0;

  productNameVDO = self->_productNameVDO;
  self->_productNameVDO = 0;

  userStringVDO = self->_userStringVDO;
  self->_userStringVDO = 0;

  modelStringVDO = self->_modelStringVDO;
  self->_modelStringVDO = 0;

  manufacturerVDO = self->_manufacturerVDO;
  self->_manufacturerVDO = 0;

  firmwareVersionVDO = self->_firmwareVersionVDO;
  self->_firmwareVersionVDO = 0;

  hardwareVersionVDO = self->_hardwareVersionVDO;
  self->_hardwareVersionVDO = 0;
}

- (BOOL)doAtomic4CC:(unsigned int)a3 data:(char *)a4 dataLength:(unsigned int)a5 extData:(unsigned int)a6 dataOut:(char *)a7 dataOutLength:(unsigned int)a8 dataOutLengthRead:(unsigned int *)a9 extDataOut:(unsigned int *)a10 error:(id *)a11
{
  v29 = a8;
  v12 = a5;
  v16 = 0;
  v32 = a6;
  v17 = 1;
  while (1)
  {
    if (![(UARPAppleHPM *)self isConnnected])
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_100027640();
      }

      goto LABEL_21;
    }

    v18 = uarpNtohl(a3);
    v30 = 0;
    v31 = v18;
    LOWORD(v28) = v29;
    v19 = (*(*self->_deviceInterface + 13))(self->_deviceInterface, 1, &v31, a4, &v32, a7, &v30, v12, v28, 10, 0, 0);
    v20 = v19;
    if (a10)
    {
      *a10 = v30;
    }

    if (!v19)
    {
      break;
    }

    if (v19 == -536870201 || v19 == -536870206)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v34 = "[UARPAppleHPM doAtomic4CC:data:dataLength:extData:dataOut:dataOutLength:dataOutLengthRead:extDataOut:error:]";
        v35 = 1024;
        v36 = v20;
        v37 = 1024;
        v38 = v30;
        v39 = 1024;
        v40 = v16;
        v41 = 2112;
        v42 = self;
        _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: atomic command failed <0x%08x>, taskResult <0x%X>, iteration %d. %@", buf, 0x28u);
      }

LABEL_21:
      v24 = 0;
      return v17 & v24 & 1;
    }

LABEL_15:
    sleepMS(10);
    v17 = v16++ < 9;
    v24 = v16;
    if (v16 == 10)
    {
      v17 = 0;
      return v17 & v24 & 1;
    }
  }

  v22 = v30;
  if ((v30 & 0x800000) != 0)
  {
    v23 = self->_log;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v34 = "[UARPAppleHPM doAtomic4CC:data:dataLength:extData:dataOut:dataOutLength:dataOutLengthRead:extDataOut:error:]";
      v35 = 1024;
      v36 = (v22 >> 18) & 0x1F;
      v37 = 1024;
      v38 = v30;
      v39 = 1024;
      v40 = v16;
      v41 = 2112;
      v42 = self;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s: 4cc operation failed <0x%02x>, taskResult <0x%X>, iteration %d. %@", buf, 0x28u);
    }

    goto LABEL_15;
  }

  v24 = 1;
  return v17 & v24 & 1;
}

- (BOOL)setCFUp:(BOOL)a3 error:(id *)a4
{
  if (self->_enabledCFUp != a3)
  {
    v28 = v4;
    v29 = v5;
    v27 = a3;
    if ([(UARPAppleHPM *)self iecsWrite:9 buffer:&v27 length:1 error:a4])
    {
      if ([(UARPAppleHPM *)self iecsCommand:1128682864 flags:0 error:a4])
      {
        self->_enabledCFUp = a3;
        LOBYTE(v6) = 1;
        return v6;
      }

      log = self->_log;
      v6 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
      if (!v6)
      {
        return v6;
      }

      sub_100027734(log, v19, v20, v21, v22, v23, v24, v25);
    }

    else
    {
      v10 = self->_log;
      v6 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
      if (!v6)
      {
        return v6;
      }

      sub_1000276BC(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    LOBYTE(v6) = 0;
    return v6;
  }

  LOBYTE(v6) = 1;
  return v6;
}

- (BOOL)readCFUa:(unsigned int)a3 remoteEndpoint:(unsigned int)a4 offset:(unsigned __int16)a5 buffer:(char *)a6 bufferLength:(unsigned int)a7 lengthRead:(unsigned int *)a8 error:(id *)a9
{
  sopType = self->_sopType;
  if (sopType)
  {
    v12 = 24;
  }

  else
  {
    v12 = 20;
  }

  if (v12 >= a7)
  {
    v12 = a7;
  }

  v23 = 0;
  if (![(UARPAppleHPM *)self doAtomic4CC:1632978499 data:0 dataLength:0 extData:((a4 & 7) << 18) & 0xFE3FFFFF | ((a3 & 7) << 22) | a5 | (v12 << 24) | (sopType << 30) | 0x10000 dataOut:a6 dataOutLength:a8 dataOutLengthRead:&v23 extDataOut:a9 error:?])
  {
    log = self->_log;
    v13 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
    if (!v13)
    {
      return v13;
    }

    sub_1000278A0(log, v15, v16, v17, v18, v19, v20, v21);
LABEL_16:
    LOBYTE(v13) = 0;
    return v13;
  }

  if ((v23 & 0x800000) != 0)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100027918(&v23);
    }

    [(UARPAppleHPM *)self checkConnection:0];
    goto LABEL_16;
  }

  if (a8)
  {
    *a8 = HIBYTE(v23) & 0x1F;
  }

  LOBYTE(v13) = 1;
  return v13;
}

- (BOOL)processVDOs:(id *)a3
{
  if (![(UARPAppleHPM *)self processCapabilityVDO:?])
  {
    log = self->_log;
    v5 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
    if (!v5)
    {
      return v5;
    }

    sub_100027A8C(log, v7, v8, v9, v10, v11, v12, v13);
LABEL_11:
    LOBYTE(v5) = 0;
    return v5;
  }

  if (![(UARPAppleHPM *)self processEndpointVDO:a3])
  {
    v14 = self->_log;
    v5 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (!v5)
    {
      return v5;
    }

    sub_100027B04(v14, v15, v16, v17, v18, v19, v20, v21);
    goto LABEL_11;
  }

  if (![(UARPAppleHPM *)self processAppleVDOs:a3])
  {
    v22 = self->_log;
    v5 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (!v5)
    {
      return v5;
    }

    sub_100027B7C(v22, v23, v24, v25, v26, v27, v28, v29);
    goto LABEL_11;
  }

  LOBYTE(v5) = 1;
  return v5;
}

- (BOOL)processCapabilityVDO:(id *)a3
{
  v22 = 0;
  if (![(UARPAppleHPM *)self readCFUa:0 remoteEndpoint:0 offset:0 buffer:&self->_vdoCapability bufferLength:4 lengthRead:&v22 error:a3])
  {
    log = self->_log;
    v4 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
    if (!v4)
    {
      return v4;
    }

    sub_100027BF4(log, v6, v7, v8, v9, v10, v11, v12);
    goto LABEL_9;
  }

  if (v22 != 4)
  {
    v13 = self->_log;
    v4 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (!v4)
    {
      return v4;
    }

    sub_100027C6C(v13, v14, v15, v16, v17, v18, v19, v20);
LABEL_9:
    LOBYTE(v4) = 0;
    return v4;
  }

  self->_vdoEndpoints = self->_vdoCapability >> 1;
  LOBYTE(v4) = 1;
  return v4;
}

- (BOOL)processEndpointVDO:(id *)a3
{
  v22 = 0;
  if (![(UARPAppleHPM *)self readCFUa:0 remoteEndpoint:0 offset:4 buffer:&self->_vdoEndpoint bufferLength:4 lengthRead:&v22 error:a3])
  {
    log = self->_log;
    v4 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
    if (!v4)
    {
      return v4;
    }

    sub_100027CE4(log, v6, v7, v8, v9, v10, v11, v12);
    goto LABEL_9;
  }

  if (v22 != 4)
  {
    v13 = self->_log;
    v4 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (!v4)
    {
      return v4;
    }

    sub_100027D5C(v13, v14, v15, v16, v17, v18, v19, v20);
LABEL_9:
    LOBYTE(v4) = 0;
    return v4;
  }

  self->_numberOfAppleVdos = BYTE2(self->_vdoEndpoint);
  LOBYTE(v4) = 1;
  return v4;
}

- (BOOL)processAppleVDOs:(id *)a3
{
  if (!self->_numberOfAppleVdos)
  {
    return 1;
  }

  v5 = 0;
  while (1)
  {
    v31 = 0;
    if (![(UARPAppleHPM *)self readCFUa:0 remoteEndpoint:0 offset:(4 * v5 + 8) & 0xFFFC buffer:&v31 + 4 bufferLength:4 lengthRead:&v31 error:a3])
    {
      break;
    }

    if (v31 != 4)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        sub_100027E4C(log, v16, v17, v18, v19, v20, v21, v22);
      }

      return 0;
    }

    if (![(UARPAppleHPM *)self processAppleVDO:HIDWORD(v31) error:a3])
    {
      v23 = self->_log;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_100027EC4(v23, v24, v25, v26, v27, v28, v29, v30);
      }

      return 0;
    }

    if (++v5 >= self->_numberOfAppleVdos)
    {
      return 1;
    }
  }

  v7 = self->_log;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100027DD4(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  return 0;
}

- (BOOL)processAppleVDO:(unsigned int)a3 error:(id *)a4
{
  v6 = BYTE2(a3);
  memset(v21, 0, sizeof(v21));
  if (BYTE2(a3))
  {
    v8 = 0;
    while (1)
    {
      v20 = 0;
      if (![(UARPAppleHPM *)self readCFUa:0 remoteEndpoint:0 offset:(v8 + a3) buffer:v21 + v8 bufferLength:v6 - v8 lengthRead:&v20 error:a4])
      {
        break;
      }

      v8 += v20;
      if (v8 >= v6)
      {
        goto LABEL_5;
      }
    }

    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_100027F3C(log, v13, v14, v15, v16, v17, v18, v19);
    }

    return 0;
  }

  else
  {
LABEL_5:
    v9 = HIBYTE(a3);
    v10 = [NSString stringWithFormat:@"%.*s", a4, v6, v21];
    if ((v9 - 1) <= 7u)
    {
      objc_storeStrong((&self->super.isa + ((8 * (v9 - 1) + 96) & 0xF8)), v10);
    }

    return 1;
  }
}

@end