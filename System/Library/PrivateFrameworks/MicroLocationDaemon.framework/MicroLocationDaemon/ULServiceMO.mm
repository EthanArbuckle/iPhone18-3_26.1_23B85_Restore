@interface ULServiceMO
+ (id)createFromDO:(const void *)a3 inManagedObjectContext:(id)a4;
- (optional<ULServiceDO>)convertToDO;
@end

@implementation ULServiceMO

+ (id)createFromDO:(const void *)a3 inManagedObjectContext:(id)a4
{
  v5 = a4;
  v6 = [[ULServiceMO alloc] initWithContext:v5];
  [(ULServiceMO *)v6 setServiceType:*a3];
  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a3 + 8];
  v8 = [v7 UUIDString];
  [(ULServiceMO *)v6 setServiceUUID:v8];

  [(ULServiceMO *)v6 setLastActiveTimestamp:*(a3 + 3)];
  if (*(a3 + 55) >= 0)
  {
    v9 = a3 + 32;
  }

  else
  {
    v9 = *(a3 + 4);
  }

  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
  [(ULServiceMO *)v6 setClientId:v10];

  [(ULServiceMO *)v6 setLocationTypes:*(a3 + 7)];

  return v6;
}

- (optional<ULServiceDO>)convertToDO
{
  v32 = *MEMORY[0x277D85DE8];
  [(ULServiceMO *)self lastActiveTimestamp];
  v6 = v5;
  v7 = [(ULServiceMO *)self serviceUUID];
  v8 = v7;
  if (v7)
  {
    [v7 boostUUID];
  }

  else
  {
    v29 = 0;
    v30 = 0;
    v31 = 0;
  }

  if (v31)
  {
    v9 = [(ULServiceMO *)self clientId];
    v10 = v9;
    if (v9)
    {
      [v9 stdString];
    }

    else
    {
      *v20 = 0u;
      v21 = 0u;
    }

    if (BYTE8(v21))
    {
      if (v31 != 1 || (v13 = [(ULServiceMO *)self serviceType], (BYTE8(v21) & 1) == 0))
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v19 = 0;
      LOBYTE(__p) = 0;
      result = ULServiceDO::ULServiceDO(buf, v29, v30, v13, v20, [(ULServiceMO *)self locationTypes], &__p, v6);
      if (v19 < 0)
      {
        operator delete(__p);
      }

      v14 = v23;
      *&retstr->var0.var0 = *buf;
      *(&retstr->var0.var2.var0.var1 + 1) = v14;
      *&retstr[1].var0.var2.var0.var1.var1 = v24;
      v15 = v26;
      retstr[2].var0.var1.var0 = v25;
      retstr[2].var0.var2.var0.var1.var1 = v15;
      retstr[3].var0.var2.var0.var1.var1 = v28;
      *(&retstr[2].var0.var2.var0.var1 + 1) = v27;
      retstr[3].var0.var1.var1.data[8] = 1;
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULServiceMO convertToDO];
      }

      v16 = logObject_MicroLocation_Default;
      result = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 0;
        _os_log_impl(&dword_258FE9000, v16, OS_LOG_TYPE_ERROR, "convertToDO: service's clientId has no value", buf, 2u);
      }

      retstr->var0.var0 = 0;
      retstr[3].var0.var1.var1.data[8] = 0;
    }

    if (BYTE8(v21) == 1 && SBYTE7(v21) < 0)
    {
      operator delete(v20[0]);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULServiceMO convertToDO];
    }

    v11 = logObject_MicroLocation_Default;
    result = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_ERROR, "convertToDO: service's serviceUUID has no value", buf, 2u);
    }

    retstr->var0.var0 = 0;
    retstr[3].var0.var1.var1.data[8] = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

@end