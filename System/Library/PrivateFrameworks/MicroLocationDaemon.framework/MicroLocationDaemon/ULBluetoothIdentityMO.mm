@interface ULBluetoothIdentityMO
+ (id)createFromDO:(const void *)o inManagedObjectContext:(id)context;
- (optional<ULBluetoothIdentityDO>)convertToDO;
@end

@implementation ULBluetoothIdentityMO

+ (id)createFromDO:(const void *)o inManagedObjectContext:(id)context
{
  contextCopy = context;
  v6 = [[ULBluetoothIdentityMO alloc] initWithContext:contextCopy];
  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:o];
  uUIDString = [v7 UUIDString];
  [(ULBluetoothIdentityMO *)v6 setBluetoothId:uUIDString];

  if (*(o + 39) >= 0)
  {
    v9 = o + 16;
  }

  else
  {
    v9 = *(o + 2);
  }

  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
  [(ULBluetoothIdentityMO *)v6 setDeviceName:v10];

  if (*(o + 63) >= 0)
  {
    v11 = o + 40;
  }

  else
  {
    v11 = *(o + 5);
  }

  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:v11];
  [(ULBluetoothIdentityMO *)v6 setStableIdentifier:v12];

  [(ULBluetoothIdentityMO *)v6 setLastSeenTimeStamp:*(o + 8)];

  return v6;
}

- (optional<ULBluetoothIdentityDO>)convertToDO
{
  v2 = v1;
  v35 = *MEMORY[0x277D85DE8];
  bluetoothId = [v1 bluetoothId];
  v5 = bluetoothId;
  if (bluetoothId)
  {
    [bluetoothId boostUUID];
  }

  else
  {
    v32 = 0;
    v33 = 0;
    v34 = 0;
  }

  if ((v34 & 1) == 0)
  {
    v32 = 0;
    v33 = 0;
    v34 = 1;
  }

  deviceName = [v2 deviceName];
  v7 = deviceName;
  if (deviceName)
  {
    [deviceName stdString];
  }

  else
  {
    *v24 = 0u;
    v25 = 0u;
  }

  if (BYTE8(v25))
  {
    stableIdentifier = [v2 stableIdentifier];
    v9 = stableIdentifier;
    if (stableIdentifier)
    {
      [stableIdentifier stdString];
    }

    else
    {
      *v22 = 0u;
      v23 = 0u;
    }

    if (BYTE8(v23))
    {
      [v2 lastSeenTimeStamp];
      if (v34 != 1 || (BYTE8(v25) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v13 = v12;
      v14 = v32;
      v15 = v33;
      if (SBYTE7(v25) < 0)
      {
        std::string::__init_copy_ctor_external(&v21, v24[0], v24[1]);
      }

      else
      {
        *&v21.__r_.__value_.__l.__data_ = *v24;
        v21.__r_.__value_.__r.__words[2] = v25;
      }

      if ((BYTE8(v23) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      if (SBYTE7(v23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v22[0], v22[1]);
      }

      else
      {
        *&__p.__r_.__value_.__l.__data_ = *v22;
        __p.__r_.__value_.__r.__words[2] = v23;
      }

      result = ULBluetoothIdentityDO::ULBluetoothIdentityDO(buf, v14, v15, &v21, &__p, v13);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      v17 = v27;
      *&retstr->var0.var0 = *buf;
      *retstr->var0.var1.var1.var0.var0.var0 = v17;
      *(&retstr->var0.var1.var1.var0.var1 + 2) = v28;
      *retstr->var1.var0.var0.var0 = v29;
      v18 = v31;
      *(&retstr->var1.var0.var1 + 2) = v30;
      *&retstr[1].var0.var0 = v18;
      retstr[1].var0.var1.var0.data[8] = 1;
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULBluetoothIdentityMO convertToDO];
      }

      v16 = logObject_MicroLocation_Default;
      result = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 0;
        _os_log_impl(&dword_258FE9000, v16, OS_LOG_TYPE_ERROR, "convertToDO: bluetoothIdentity's stableIdentifier has no value", buf, 2u);
      }

      retstr->var0.var0 = 0;
      retstr[1].var0.var1.var0.data[8] = 0;
    }

    if (BYTE8(v23) == 1 && SBYTE7(v23) < 0)
    {
      operator delete(v22[0]);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULBluetoothIdentityMO convertToDO];
    }

    v10 = logObject_MicroLocation_Default;
    result = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_ERROR, "convertToDO: bluetoothIdentity's deviceName has no value", buf, 2u);
    }

    retstr->var0.var0 = 0;
    retstr[1].var0.var1.var0.data[8] = 0;
  }

  if (BYTE8(v25) == 1 && SBYTE7(v25) < 0)
  {
    operator delete(v24[0]);
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

@end