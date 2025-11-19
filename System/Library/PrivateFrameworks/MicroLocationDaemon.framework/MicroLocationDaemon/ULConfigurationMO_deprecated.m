@interface ULConfigurationMO_deprecated
+ (id)createFromDO:(const void *)a3 inManagedObjectContext:(id)a4;
- (optional<ULConfigurationDO>)convertToDO;
@end

@implementation ULConfigurationMO_deprecated

+ (id)createFromDO:(const void *)a3 inManagedObjectContext:(id)a4
{
  v5 = [[ULConfigurationMO_deprecated alloc] initWithContext:a4];
  [(ULConfigurationMO_deprecated *)v5 setGenerationTimestamp:*a3];
  if (*(a3 + 31) >= 0)
  {
    v6 = a3 + 8;
  }

  else
  {
    v6 = *(a3 + 1);
  }

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
  [(ULConfigurationMO_deprecated *)v5 setLoiType:v7];

  v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a3 + 32];
  v9 = [v8 UUIDString];
  [(ULConfigurationMO_deprecated *)v5 setLoiId:v9];

  [(ULConfigurationMO_deprecated *)v5 setConfigurationType:*(a3 + 12)];
  CLMicroLocationProto::Configuration::ByteSize((a3 + 56));
  operator new[]();
}

- (optional<ULConfigurationDO>)convertToDO
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = [(ULConfigurationMO_deprecated *)self loiType];
  v7 = v6;
  if (v6)
  {
    [v6 stdString];
  }

  else
  {
    *v20 = 0u;
    v21 = 0u;
  }

  if (BYTE8(v21))
  {
    v8 = [(ULConfigurationMO_deprecated *)self loiId];
    v9 = v8;
    if (v8)
    {
      [v8 boostUUID];
    }

    else
    {
      v28 = 0;
      v29 = 0;
      v30 = 0;
    }

    if ((v30 & 1) == 0)
    {
      v28 = 0;
      v29 = 0;
      v30 = 1;
    }

    v12 = [(ULConfigurationMO_deprecated *)self configuration];
    v13 = v12;
    v14 = [v12 bytes];
    v15 = [(ULConfigurationMO_deprecated *)self configuration];
    [v15 length];
    LOBYTE(v14) = wireless_diagnostics::google::protobuf::MessageLite::ParseFromArray(v19, v14);

    if (v14)
    {
      if ((BYTE8(v21) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      if (SBYTE7(v21) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v20[0], v20[1]);
      }

      else
      {
        *&__p.__r_.__value_.__l.__data_ = *v20;
        __p.__r_.__value_.__r.__words[2] = v21;
      }

      if ((v30 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      ULConfigurationDO::ULConfigurationDO(buf, &__p, v19, v28, v29);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      retstr->var0.var2.var0.var1.var0 = *buf;
      *&retstr->var0.var2.var0.var1.var1 = *v23;
      retstr[1].var0.var2.var0.var1.var0 = v24;
      v23[0] = 0;
      v23[1] = 0;
      v24 = 0;
      *&retstr[1].var0.var2.var0.var1.var1 = v25;
      *&retstr[2].var0.var0 = v26;
      CLMicroLocationProto::Configuration::Configuration(&retstr[2].var0.var2.var0.var1.var1, v27);
      retstr[4].var0.var2.var0.var0.var0[16] = 1;
      CLMicroLocationProto::Configuration::~Configuration(v27);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(v23[0]);
      }
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULConfigurationMO_deprecated convertToDO];
      }

      v16 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_258FE9000, v16, OS_LOG_TYPE_ERROR, "convertToDO: Failed to deserialize configuration protobuf from byte stream", buf, 2u);
      }

      retstr->var0.var0 = 0;
      retstr[4].var0.var2.var0.var0.var0[16] = 0;
    }

    CLMicroLocationProto::Configuration::~Configuration(v19);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULConfigurationMO_deprecated convertToDO];
    }

    v10 = logObject_MicroLocation_Default;
    result = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_ERROR, "convertToDO: configuration's loiType has no value", buf, 2u);
    }

    retstr->var0.var0 = 0;
    retstr[4].var0.var2.var0.var0.var0[16] = 0;
  }

  if (BYTE8(v21) == 1 && SBYTE7(v21) < 0)
  {
    operator delete(v20[0]);
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

@end