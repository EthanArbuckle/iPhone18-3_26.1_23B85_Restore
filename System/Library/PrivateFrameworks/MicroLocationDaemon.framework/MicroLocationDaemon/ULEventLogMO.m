@interface ULEventLogMO
+ (id)createFromDO:(const void *)a3 inManagedObjectContext:(id)a4;
- (optional<ULEventLogDO>)convertToDO;
@end

@implementation ULEventLogMO

+ (id)createFromDO:(const void *)a3 inManagedObjectContext:(id)a4
{
  v5 = a4;
  v6 = [[ULEventLogMO alloc] initWithContext:v5];
  if (*(a3 + 23) >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
  [(ULEventLogMO *)v6 setEvent:v8];

  [(ULEventLogMO *)v6 setTimestamp:*(a3 + 3)];

  return v6;
}

- (optional<ULEventLogDO>)convertToDO
{
  v2 = v1;
  v4 = [v1 event];
  v5 = v4;
  if (v4)
  {
    [v4 stdString];
  }

  else
  {
    *v14 = 0u;
    v15 = 0u;
  }

  if (BYTE8(v15))
  {
    [v2 timestamp];
    v7 = v6;
    if (SBYTE7(v15) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v14[0], v14[1]);
    }

    else
    {
      *&__p.__r_.__value_.__l.__data_ = *v14;
      __p.__r_.__value_.__r.__words[2] = v15;
    }

    ULEventLogDO::ULEventLogDO(&buf, &__p, v7);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    *&retstr->var0.var0 = *&buf.__r_.__value_.__l.__data_;
    v10 = v13;
    *(&retstr->var0.var1.var0.var0.var1 + 2) = *(&buf.__r_.__value_.__l + 2);
    retstr[1].var0.var1.var0.var0.var1.var0 = v10;
    retstr[1].var0.var1.var0.var0.var0.var0[8] = 1;
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULEventLogMO convertToDO];
    }

    v8 = logObject_MicroLocation_Default;
    result = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR);
    if (result)
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_ERROR, "convertToDO: EventLog record's Event has no value", &buf, 2u);
    }

    retstr->var0.var0 = 0;
    retstr[1].var0.var1.var0.var0.var0.var0[8] = 0;
  }

  if (BYTE8(v15) == 1 && SBYTE7(v15) < 0)
  {
    operator delete(v14[0]);
  }

  return result;
}

@end