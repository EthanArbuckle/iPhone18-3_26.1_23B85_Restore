@interface CUBonjourDevice
- (id)copyConnectionInfoWithFlags:(unint64_t)a3 interfaceName:(id)a4 error:(id *)a5;
- (id)copyConnectionStringWithFlags:(unint64_t)a3 error:(id *)a4;
- (id)descriptionWithLevel:(int)a3;
- (unsigned)updateWithBonjourDeviceInfo:(id)a3;
- (void)_updateTXTDictionary:(id)a3;
- (void)reconfirm;
@end

@implementation CUBonjourDevice

- (unsigned)updateWithBonjourDeviceInfo:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_deviceInfo, a3);
  TypeID = CFStringGetTypeID();
  v7 = CFDictionaryGetTypedValue(v5, @"name", TypeID, 0);
  v8 = v7;
  if (!v7)
  {
    goto LABEL_7;
  }

  name = self->_name;
  v10 = v7;
  v11 = name;
  v12 = v11;
  if (v10 == v11)
  {

    goto LABEL_7;
  }

  if (v11)
  {
    v13 = [(NSString *)v10 isEqual:v11];

    if ((v13 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    v14 = 0;
    goto LABEL_10;
  }

LABEL_9:
  objc_storeStrong(&self->_name, v8);
  v14 = 2;
LABEL_10:
  v15 = CFDataGetTypeID();
  v16 = CFDictionaryGetTypedValue(v5, @"txt", v15, 0);
  v17 = v16;
  if (v16)
  {
    v18 = self->_name;
    v19 = v16;
    v20 = v18;
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      if (v20)
      {
        v22 = [(NSString *)v19 isEqual:v20];

        if (v22)
        {
          goto LABEL_18;
        }
      }

      else
      {
      }

      objc_storeStrong(&self->_txtData, v17);
      [(CUBonjourDevice *)self _updateTXTDictionary:v19];
      v14 |= 1u;
    }
  }

LABEL_18:

  return v14;
}

- (void)_updateTXTDictionary:(id)a3
{
  v16 = a3;
  v4 = v16;
  v5 = [v16 bytes];
  v6 = &v5[[v16 length]];
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  while (v6 - v5 >= 1)
  {
    v9 = v5 + 1;
    v8 = *v5;
    if (v6 - (v5 + 1) < v8)
    {
      break;
    }

    v5 += v8 + 1;
    v10 = v9;
    if (v8)
    {
      while (*v10 != 61)
      {
        ++v10;
        if (!--v8)
        {
          v10 = v5;
          break;
        }
      }
    }

    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v9 length:v10 - v9 encoding:4];
    if (v11)
    {
      if (v10 >= v5)
      {
        v12 = v10;
      }

      else
      {
        v12 = v10 + 1;
      }

      v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v12 length:v5 - v12 encoding:4];
      if (v13)
      {
        [v7 setObject:v13 forKeyedSubscript:v11];
      }
    }
  }

  v14 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v7];
  txtDictionary = self->_txtDictionary;
  self->_txtDictionary = v14;
}

- (void)reconfirm
{
  deviceInfo = self->_deviceInfo;
  if (deviceInfo)
  {
    BonjourDevice_Reconfirm(deviceInfo);
  }
}

- (id)copyConnectionStringWithFlags:(unint64_t)a3 error:(id *)a4
{
  deviceInfo = self->_deviceInfo;
  if (!deviceInfo)
  {
    if (a4)
    {
      v16 = "No Bonjour Device Info";
      v17 = 4294960551;
LABEL_12:
      NSErrorWithOSStatusF(v17, v16, a3, a4, v4, v5, v6, v7, v25);
      *a4 = v14 = 0;
      return v14;
    }

    return 0;
  }

  v26 = 0;
  v10 = BonjourDevice_CopyDNSNames(deviceInfo, a3, &v26);
  if (!v10)
  {
    if (a4)
    {
      if (v26)
      {
        v17 = v26;
      }

      else
      {
        v17 = 4294960596;
      }

      v16 = "CopyDNSNames failed";
      goto LABEL_12;
    }

    return 0;
  }

  v11 = v10;
  v12 = strlen(v10);
  v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v11 length:v12 encoding:4 freeWhenDone:1];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    free(v11);
    if (a4)
    {
      *a4 = NSErrorWithOSStatusF(4294960596, "String init with UTF-8 failed (%zu bytes)", v18, v19, v20, v21, v22, v23, v12);
    }
  }

  return v14;
}

- (id)copyConnectionInfoWithFlags:(unint64_t)a3 interfaceName:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = self->_deviceInfo;
  v16 = v9;
  if (v9)
  {
    v29 = 0;
    v17 = BonjourDevice_CopyConnectionInfo(v9, a3, v8, &v29);
    v24 = v17;
    if (v17)
    {
      v25 = v17;
    }

    else if (a5)
    {
      if (v29)
      {
        v27 = v29;
      }

      else
      {
        v27 = 4294960596;
      }

      *a5 = NSErrorWithOSStatusF(v27, "CopyConnectionInfo failed", v18, v19, v20, v21, v22, v23, v28);
    }
  }

  else if (a5)
  {
    NSErrorWithOSStatusF(4294960551, "No Bonjour Device Info", v10, v11, v12, v13, v14, v15, v28);
    *a5 = v24 = 0;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)descriptionWithLevel:(int)a3
{
  v52 = 0;
  NSAppendPrintF(&v52, "CUBonjourDevice %.6a", *&a3, v3, v4, v5, v6, v7, self->_deviceIDBytes);
  v10 = v52;
  v17 = v10;
  name = self->_name;
  if (name)
  {
    v51 = v10;
    NSAppendPrintF(&v51, ", %''@", v11, v12, v13, v14, v15, v16, name);
    v19 = v51;

    v17 = v19;
  }

  model = self->_model;
  if (model)
  {
    v50 = v17;
    NSAppendPrintF(&v50, ", Model %''@", v11, v12, v13, v14, v15, v16, model);
    v21 = v50;

    v17 = v21;
  }

  Int64Ranged = CFDictionaryGetInt64Ranged(self->_deviceInfo, @"TrTy", 0, 0xFFFFFFFFLL, 0);
  if (Int64Ranged)
  {
    v49 = v17;
    NSAppendPrintF(&v49, ", TT %#{flags}", v23, v24, v25, v26, v27, v28, Int64Ranged);
    v29 = v49;

    v17 = v29;
  }

  if (a3 <= 30)
  {
    v30 = self->_txtDictionary;
    if ([(NSDictionary *)v30 count])
    {
      v48 = v17;
      NSAppendPrintF(&v48, ", TXT %##@", v31, v32, v33, v34, v35, v36, v30);
      v37 = v48;

      v17 = v37;
    }

    if (a3 <= 20)
    {
      v47 = v17;
      NSAppendPrintF(&v47, "\n", v38, v39, v40, v41, v42, v43, v46);
      v44 = v47;

      v17 = v44;
    }
  }

  return v17;
}

@end