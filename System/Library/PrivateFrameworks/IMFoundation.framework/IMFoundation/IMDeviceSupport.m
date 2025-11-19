@interface IMDeviceSupport
+ (id)marketingNameForModel:(id)a3;
+ (id)sharedInstance;
- (IMDeviceSupport)init;
- (NSString)deviceInformationString;
- (NSString)model;
- (NSString)productBuildVersion;
- (NSString)productName;
- (NSString)productVersion;
- (NSString)userAgentString;
- (void)_generateProductInformation;
@end

@implementation IMDeviceSupport

+ (id)sharedInstance
{
  if (qword_1ED517618 != -1)
  {
    sub_1959D4F6C();
  }

  v3 = qword_1ED5175D0;

  return v3;
}

- (NSString)userAgentString
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_msgSend_productName(self, a2, v2);
  v8 = objc_msgSend_productVersion(self, v6, v7);
  v11 = objc_msgSend_productBuildVersion(self, v9, v10);
  v14 = objc_msgSend_model(self, v12, v13);
  v16 = objc_msgSend_stringWithFormat_(v4, v15, @"[%@,%@,%@,%@]", v5, v8, v11, v14);

  return v16;
}

- (NSString)productName
{
  objc_msgSend_lock(self->_lock, a2, v2);
  objc_msgSend__generateProductInformation(self, v4, v5);
  v6 = self->_productName;
  objc_msgSend_unlock(self->_lock, v7, v8);

  return v6;
}

- (NSString)productVersion
{
  objc_msgSend_lock(self->_lock, a2, v2);
  objc_msgSend__generateProductInformation(self, v4, v5);
  v6 = self->_productVersion;
  objc_msgSend_unlock(self->_lock, v7, v8);

  return v6;
}

- (void)_generateProductInformation
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1959A9570;
  block[3] = &unk_1E7438888;
  block[4] = self;
  if (qword_1ED517278 != -1)
  {
    dispatch_once(&qword_1ED517278, block);
  }
}

- (NSString)productBuildVersion
{
  objc_msgSend_lock(self->_lock, a2, v2);
  objc_msgSend__generateProductInformation(self, v4, v5);
  v6 = self->_buildVersion;
  objc_msgSend_unlock(self->_lock, v7, v8);

  return v6;
}

- (NSString)model
{
  objc_msgSend_lock(self->_lock, a2, v2);
  model = self->_model;
  if (model)
  {
    v7 = model;
    goto LABEL_18;
  }

  if (qword_1ED5171D0 != -1)
  {
    sub_1959D4F80();
  }

  if (qword_1ED5171D8 != -1)
  {
    sub_1959D4F94();
  }

  if (qword_1ED5171E0 != -1)
  {
    sub_1959D4FA8();
  }

  if (qword_1ED5171E8 != -1)
  {
    sub_1959D4FBC();
  }

  v8 = off_1ED517200;
  if (qword_1ED5171F8 != -1)
  {
    sub_1959D4FD0();
  }

  v9 = dword_1ED5170C8;
  v10 = off_1ED517268("IOPlatformExpertDevice");
  v11 = v8(v9, v10);
  if (v11)
  {
    v12 = v11;
    v13 = off_1ED5171F0(v11, @"model", *MEMORY[0x1E695E480], 0);
    off_1ED517208(v12);
    if (v13)
    {
      v14 = objc_alloc(MEMORY[0x1E696AEC0]);
      v15 = MEMORY[0x1E696AEC0];
      BytePtr = CFDataGetBytePtr(v13);
      v18 = objc_msgSend_stringWithCString_encoding_(v15, v17, BytePtr, 4);
      v7 = objc_msgSend_initWithFormat_(v14, v19, @"%@", v18);

      objc_storeStrong(&self->_model, v7);
      CFRelease(v13);
      goto LABEL_18;
    }
  }

  else
  {
    (off_1ED517208)();
  }

  v7 = 0;
LABEL_18:
  objc_msgSend_unlock(self->_lock, v5, v6);

  return v7;
}

- (NSString)deviceInformationString
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_msgSend_productName(self, a2, v2);
  v8 = objc_msgSend_productVersion(self, v6, v7);
  v11 = objc_msgSend_productBuildVersion(self, v9, v10);
  v14 = objc_msgSend_model(self, v12, v13);
  v17 = IMGetEnvironmentName(v14, v15, v16);
  v19 = objc_msgSend_stringWithFormat_(v4, v18, @"[%@,%@,%@,%@,%@]", v5, v8, v11, v14, v17);

  return v19;
}

- (IMDeviceSupport)init
{
  v6.receiver = self;
  v6.super_class = IMDeviceSupport;
  v2 = [(IMDeviceSupport *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AE68]);
    lock = v2->_lock;
    v2->_lock = v3;
  }

  return v2;
}

+ (id)marketingNameForModel:(id)a3
{
  v3 = a3;
  if (objc_msgSend_rangeOfString_(v3, v4, @"iPod") == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (objc_msgSend_rangeOfString_(v3, v5, @"iPad") == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (objc_msgSend_rangeOfString_(v3, v6, @"iPhone") == 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = kIMDeviceTypeNameMac;
        if (objc_msgSend_rangeOfString_(v3, v7, @"Mac") == 0x7FFFFFFFFFFFFFFFLL)
        {
          if (objc_msgSend_rangeOfString_(v3, v8, @"AppleTV") == 0x7FFFFFFFFFFFFFFFLL)
          {
            if (objc_msgSend_rangeOfString_(v3, v10, @"Watch") == 0x7FFFFFFFFFFFFFFFLL)
            {
              if (objc_msgSend_rangeOfString_(v3, v11, @"AudioAccessory") == 0x7FFFFFFFFFFFFFFFLL)
              {
                if (objc_msgSend_rangeOfString_(v3, v12, @"Reality") != 0x7FFFFFFFFFFFFFFFLL)
                {
                  v9 = kIMDeviceTypeNameReality;
                }
              }

              else
              {
                v9 = kIMDeviceTypeNameAudioAccessory;
              }
            }

            else
            {
              v9 = kIMDeviceTypeNameWatch;
            }
          }

          else
          {
            v9 = kIMDeviceTypeNameAppleTV;
          }
        }
      }

      else
      {
        v9 = kIMDeviceTypeNameiPhone;
      }
    }

    else
    {
      v9 = kIMDeviceTypeNameiPad;
    }
  }

  else
  {
    v9 = kIMDeviceTypeNameiPod;
  }

  v13 = *v9;
  v14 = v13;

  return v13;
}

@end