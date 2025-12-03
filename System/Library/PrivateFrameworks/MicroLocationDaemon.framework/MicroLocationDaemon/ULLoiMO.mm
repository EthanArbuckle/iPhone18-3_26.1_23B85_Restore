@interface ULLoiMO
+ (id)createFromDO:(const void *)o inManagedObjectContext:(id)context;
+ (id)createWithLastSeenTimeStamp:(double)stamp loiId:(id)id loiGroupId:(id)groupId loiType:(id)type inManagedObjectContext:(id)context;
- (optional<ULLoiDO>)convertToDO;
@end

@implementation ULLoiMO

+ (id)createFromDO:(const void *)o inManagedObjectContext:(id)context
{
  contextCopy = context;
  v6 = [[ULLoiMO alloc] initWithContext:contextCopy];
  [(ULLoiMO *)v6 setLastSeenTimeStamp:*o];
  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:o + 8];
  uUIDString = [v7 UUIDString];
  [(ULLoiMO *)v6 setLoiId:uUIDString];

  v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:o + 24];
  uUIDString2 = [v9 UUIDString];
  [(ULLoiMO *)v6 setLoiGroupId:uUIDString2];

  v13 = *(o + 5);
  v12 = o + 40;
  v11 = v13;
  if (v12[23] >= 0)
  {
    v14 = v12;
  }

  else
  {
    v14 = v11;
  }

  v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:v14];
  [(ULLoiMO *)v6 setLoiType:v15];

  return v6;
}

+ (id)createWithLastSeenTimeStamp:(double)stamp loiId:(id)id loiGroupId:(id)groupId loiType:(id)type inManagedObjectContext:(id)context
{
  idCopy = id;
  groupIdCopy = groupId;
  typeCopy = type;
  contextCopy = context;
  v15 = [[ULLoiMO alloc] initWithContext:contextCopy];
  [(ULLoiMO *)v15 setLastSeenTimeStamp:stamp];
  [(ULLoiMO *)v15 setLoiId:idCopy];
  [(ULLoiMO *)v15 setLoiGroupId:groupIdCopy];
  [(ULLoiMO *)v15 setLoiType:typeCopy];

  return v15;
}

- (optional<ULLoiDO>)convertToDO
{
  v2 = v1;
  v37 = *MEMORY[0x277D85DE8];
  [v1 lastSeenTimeStamp];
  v5 = v4;
  loiType = [v2 loiType];
  v7 = loiType;
  if (loiType)
  {
    [loiType stdString];
  }

  else
  {
    *v24 = 0u;
    v25 = 0u;
  }

  if (BYTE8(v25))
  {
    loiId = [v2 loiId];
    v9 = loiId;
    if (loiId)
    {
      [loiId boostUUID];
    }

    else
    {
      v34 = 0;
      v35 = 0;
      v36 = 0;
    }

    if ((v36 & 1) == 0)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULLoiMO convertToDO];
      }

      v12 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_ERROR, "convertToDO: LOI record's LoiId has no value", buf, 2u);
      }

      v34 = 0;
      v35 = 0;
      if ((v36 & 1) == 0)
      {
        v36 = 1;
      }
    }

    loiGroupId = [v2 loiGroupId];
    v14 = loiGroupId;
    if (loiGroupId)
    {
      [loiGroupId boostUUID];
    }

    else
    {
      v31 = 0;
      v32 = 0;
      v33 = 0;
    }

    v15 = v33;
    if (v33)
    {
      goto LABEL_30;
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULLoiMO convertToDO];
    }

    v16 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v16, OS_LOG_TYPE_ERROR, "convertToDO: LOI record's LoiGroupId has no value", buf, 2u);
    }

    v15 = v33;
    v31 = 0;
    v32 = 0;
    if (v33 == 1)
    {
LABEL_30:
      if ((v36 & 1) == 0 || !v15)
      {
LABEL_44:
        std::__throw_bad_optional_access[abi:ne200100]();
      }
    }

    else
    {
      v33 = 1;
      if (v36 != 1)
      {
        goto LABEL_44;
      }
    }

    v17 = v35;
    if ((BYTE8(v25) & 1) == 0)
    {
      goto LABEL_44;
    }

    v18 = v34;
    v19 = v31;
    v20 = v32;
    if (SBYTE7(v25) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v24[0], v24[1]);
    }

    else
    {
      *&__p.__r_.__value_.__l.__data_ = *v24;
      __p.__r_.__value_.__r.__words[2] = v25;
    }

    result = ULLoiDO::ULLoiDO(buf, v18, v17, v19, v20, &__p, v5);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v21 = v27;
    *&retstr->var0.var0 = *buf;
    *(&retstr->var0.var4.var0.var1 + 1) = v21;
    retstr[1].var0.var4.var0.var1.var1 = v28;
    *(&retstr[1].var0.var4.var0.var1 + 1) = v29;
    retstr[2].var0.var4.var0.var1.var1 = v30;
    retstr[2].var0.var4.var0.var0.var0[16] = 1;
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULLoiMO convertToDO];
    }

    v10 = logObject_MicroLocation_Default;
    result = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_ERROR, "convertToDO: LOI record's LoiType has no value", buf, 2u);
    }

    retstr->var0.var0 = 0;
    retstr[2].var0.var4.var0.var0.var0[16] = 0;
  }

  if (BYTE8(v25) == 1 && SBYTE7(v25) < 0)
  {
    operator delete(v24[0]);
  }

  v22 = *MEMORY[0x277D85DE8];
  return result;
}

@end