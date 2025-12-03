@interface ULCustomLoiMO
+ (id)createFromDO:(const void *)o withServiceMO:(id)mO loiMO:(id)loiMO inManagedObjectContext:(id)context;
- (optional<ULCustomLoiDO>)convertToDO;
@end

@implementation ULCustomLoiMO

+ (id)createFromDO:(const void *)o withServiceMO:(id)mO loiMO:(id)loiMO inManagedObjectContext:(id)context
{
  mOCopy = mO;
  loiMOCopy = loiMO;
  contextCopy = context;
  v12 = [[ULCustomLoiMO alloc] initWithContext:contextCopy];
  [(ULCustomLoiMO *)v12 setService:mOCopy];
  [(ULCustomLoiMO *)v12 setLoi:loiMOCopy];
  [(ULCustomLoiMO *)v12 setLastSeenTimeStamp:*(o + 4)];

  return v12;
}

- (optional<ULCustomLoiDO>)convertToDO
{
  v21 = *MEMORY[0x277D85DE8];
  [(ULCustomLoiMO *)self lastSeenTimeStamp];
  v5 = v4;
  v6 = [(ULCustomLoiMO *)self loi];
  loiId = [v6 loiId];
  v8 = loiId;
  if (loiId)
  {
    [loiId boostUUID];
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
  }

  if ((v20 & 1) == 0)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULCustomLoiMO convertToDO];
    }

    v9 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_ERROR, "convertToDO: CustomLOI record's LoiId has no value", &v15, 2u);
    }

    v18 = 0;
    v19 = 0;
    if ((v20 & 1) == 0)
    {
      v20 = 1;
    }
  }

  service = [(ULCustomLoiMO *)self service];
  serviceUUID = [service serviceUUID];
  v12 = serviceUUID;
  if (serviceUUID)
  {
    [serviceUUID boostUUID];
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  if ((v17 & 1) == 0)
  {
    v15 = 0;
    v16 = 0;
    v17 = 1;
  }

  if ((v20 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  result = ULCustomLoiDO::ULCustomLoiDO(retstr, v15, v16, v18, v19, v5);
  retstr[1].var0.var1.var0.data[8] = 1;
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

@end