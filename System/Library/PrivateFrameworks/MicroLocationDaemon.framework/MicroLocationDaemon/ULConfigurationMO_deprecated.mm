@interface ULConfigurationMO_deprecated
+ (id)createFromDO:(const void *)o inManagedObjectContext:(id)context;
- (optional<ULConfigurationDO>)convertToDO;
@end

@implementation ULConfigurationMO_deprecated

+ (id)createFromDO:(const void *)o inManagedObjectContext:(id)context
{
  v5 = [[ULConfigurationMO_deprecated alloc] initWithContext:context];
  [(ULConfigurationMO_deprecated *)v5 setGenerationTimestamp:*o];
  if (*(o + 31) >= 0)
  {
    v6 = o + 8;
  }

  else
  {
    v6 = *(o + 1);
  }

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
  [(ULConfigurationMO_deprecated *)v5 setLoiType:v7];

  v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:o + 32];
  uUIDString = [v8 UUIDString];
  [(ULConfigurationMO_deprecated *)v5 setLoiId:uUIDString];

  [(ULConfigurationMO_deprecated *)v5 setConfigurationType:*(o + 12)];
  CLMicroLocationProto::Configuration::ByteSize((o + 56));
  operator new[]();
}

- (optional<ULConfigurationDO>)convertToDO
{
  v31 = *MEMORY[0x277D85DE8];
  loiType = [(ULConfigurationMO_deprecated *)self loiType];
  v7 = loiType;
  if (loiType)
  {
    [loiType stdString];
  }

  else
  {
    *v20 = 0u;
    v21 = 0u;
  }

  if (BYTE8(v21))
  {
    loiId = [(ULConfigurationMO_deprecated *)self loiId];
    v9 = loiId;
    if (loiId)
    {
      [loiId boostUUID];
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

    configuration = [(ULConfigurationMO_deprecated *)self configuration];
    v13 = configuration;
    bytes = [configuration bytes];
    configuration2 = [(ULConfigurationMO_deprecated *)self configuration];
    [configuration2 length];
    LOBYTE(bytes) = wireless_diagnostics::google::protobuf::MessageLite::ParseFromArray(v19, bytes);

    if (bytes)
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