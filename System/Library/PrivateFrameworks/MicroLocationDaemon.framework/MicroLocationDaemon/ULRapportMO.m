@interface ULRapportMO
+ (id)createFromDO:(const void *)a3 withLoiMO:(id)a4 inManagedObjectContext:(id)a5;
- (optional<ULRapportDO>)convertToDO;
@end

@implementation ULRapportMO

+ (id)createFromDO:(const void *)a3 withLoiMO:(id)a4 inManagedObjectContext:(id)a5
{
  v7 = a4;
  v8 = [[ULRapportMO alloc] initWithContext:a5];
  [(ULRapportMO *)v8 setLoi:v7];
  [(ULRapportMO *)v8 setGenerationTimestamp:*a3];
  CLMicroLocationProto::RapportDevice::ByteSize((a3 + 32));
  operator new[]();
}

- (optional<ULRapportDO>)convertToDO
{
  v32 = *MEMORY[0x277D85DE8];
  [(ULRapportMO *)self generationTimestamp];
  v24 = v5;
  v6 = [(ULRapportMO *)self loi];
  v7 = [v6 loiType];
  v8 = v7;
  if (v7)
  {
    [v7 stdString];
  }

  else
  {
    *v22 = 0u;
    v23 = 0u;
  }

  if (BYTE8(v23))
  {
    v9 = [(ULRapportMO *)self loi];
    v10 = [v9 loiId];
    v11 = v10;
    if (v10)
    {
      [v10 boostUUID];
    }

    else
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
    }

    if ((v31 & 1) == 0)
    {
      v29 = 0;
      v30 = 0;
      v31 = 1;
    }

    CLMicroLocationProto::RapportDevice::RapportDevice(v21);
    v14 = [(ULRapportMO *)self device];
    v15 = v14;
    v16 = [v14 bytes];
    v17 = [(ULRapportMO *)self device];
    [v17 length];
    LOBYTE(v16) = wireless_diagnostics::google::protobuf::MessageLite::ParseFromArray(v21, v16);

    if (v16)
    {
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

      if ((v31 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      ULRapportDO::ULRapportDO(buf, &__p, v21, &v29, &v24);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      retstr->var0.var2.var0.var1.var0 = *buf;
      *&retstr->var0.var2.var0.var1.var1 = *v26;
      retstr[1].var0.var2.var0.var1.var0 = v27;
      v26[0] = 0;
      v26[1] = 0;
      v27 = 0;
      CLMicroLocationProto::RapportDevice::RapportDevice(&retstr[1].var0.var2.var0.var1.var1, v28);
      *(&retstr[2].var0.var2.var0.var1 + 1) = v28[2];
      retstr[3].var0.var2.var0.var0.var0[8] = 1;
      CLMicroLocationProto::RapportDevice::~RapportDevice(v28);
      if (SHIBYTE(v27) < 0)
      {
        operator delete(v26[0]);
      }
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULRapportMO convertToDO];
      }

      v18 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_258FE9000, v18, OS_LOG_TYPE_ERROR, "convertToDO: Failed to deserialize rapport device protobuf from byte stream", buf, 2u);
      }

      retstr->var0.var0 = 0;
      retstr[3].var0.var2.var0.var0.var0[8] = 0;
    }

    CLMicroLocationProto::RapportDevice::~RapportDevice(v21);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULRapportMO convertToDO];
    }

    v12 = logObject_MicroLocation_Default;
    result = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_ERROR, "convertToDO: rapport's loiType has no value", buf, 2u);
    }

    retstr->var0.var0 = 0;
    retstr[3].var0.var2.var0.var0.var0[8] = 0;
  }

  if (BYTE8(v23) == 1 && SBYTE7(v23) < 0)
  {
    operator delete(v22[0]);
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

@end