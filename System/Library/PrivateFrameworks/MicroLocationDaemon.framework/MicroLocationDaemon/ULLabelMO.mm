@interface ULLabelMO
+ (id)createFromDO:(const void *)o withLoi:(id)loi inManagedObjectContext:(id)context;
+ (id)createFromDO:(const void *)o withScanningEventMO:(id)mO serviceMO:(id)serviceMO inManagedObjectContext:(id)context;
- (optional<ULLabelDOAndObjectID>)convertToDO;
@end

@implementation ULLabelMO

+ (id)createFromDO:(const void *)o withScanningEventMO:(id)mO serviceMO:(id)serviceMO inManagedObjectContext:(id)context
{
  mOCopy = mO;
  serviceMOCopy = serviceMO;
  contextCopy = context;
  v13 = [mOCopy loi];
  v14 = [self createFromDO:o withLoi:v13 inManagedObjectContext:contextCopy];

  [v14 setScanningEvent:mOCopy];
  [v14 setService:serviceMOCopy];

  return v14;
}

+ (id)createFromDO:(const void *)o withLoi:(id)loi inManagedObjectContext:(id)context
{
  loiCopy = loi;
  contextCopy = context;
  v9 = [[ULLabelMO alloc] initWithContext:contextCopy];
  [(ULLabelMO *)v9 setLoi:loiCopy];
  [(ULLabelMO *)v9 setReceivedTimestamp:*(o + 5)];
  if (*(o + 95) >= 0)
  {
    v10 = o + 72;
  }

  else
  {
    v10 = *(o + 9);
  }

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v10];
  [(ULLabelMO *)v9 setLabelID:v11];

  [(ULLabelMO *)v9 setContextLayerType:*o];
  [(ULLabelMO *)v9 setDeviceClass:*(o + 4)];
  if (*(o + 32) == 1)
  {
    v12 = objc_alloc(MEMORY[0x277CCAD78]);
    if ((*(o + 32) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v13 = [v12 initWithUUIDBytes:o + 16];
    uUIDString = [v13 UUIDString];
    [(ULLabelMO *)v9 setUuid:uUIDString];
  }

  else
  {
    [(ULLabelMO *)v9 setUuid:0];
  }

  if (!ULLabelDO::hasData(o) || (ULLabelDO::getNSDataFromLabelData(o), v15 = objc_claimAutoreleasedReturnValue(), [(ULLabelMO *)v9 setData:v15], v15, [(ULLabelMO *)v9 data], v16 = objc_claimAutoreleasedReturnValue(), v16, v16))
  {
    v16 = v9;
  }

  return v16;
}

- (optional<ULLabelDOAndObjectID>)convertToDO
{
  v41 = *MEMORY[0x277D85DE8];
  labelID = [(ULLabelMO *)self labelID];
  v5 = labelID;
  if (labelID)
  {
    [labelID stdString];
  }

  else
  {
    *v25 = 0u;
    v26 = 0u;
  }

  if ((BYTE8(v26) & 1) == 0)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULLabelMO convertToDO];
    }

    v10 = logObject_MicroLocation_Default;
    result = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR);
    if (result)
    {
      LOWORD(buf.var0.var0) = 0;
      _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_ERROR, "convertToDO: label's labelID has no value", &buf, 2u);
    }

    goto LABEL_28;
  }

  [(ULLabelMO *)self receivedTimestamp];
  v24 = v6;
  service = [(ULLabelMO *)self service];
  serviceUUID = [service serviceUUID];
  v9 = serviceUUID;
  if (serviceUUID)
  {
    [serviceUUID boostUUID];
  }

  else
  {
    v39[0] = 0;
    v39[1] = 0;
    v40 = 0;
  }

  contextLayerType = [(ULLabelMO *)self contextLayerType];
  deviceClass = [(ULLabelMO *)self deviceClass];
  uuid = [(ULLabelMO *)self uuid];
  v13 = uuid;
  if (uuid)
  {
    [uuid boostUUID];
  }

  else
  {
    v37[0] = 0;
    v37[1] = 0;
    v38 = 0;
  }

  v20[0] = 0;
  v21 = 0;
  data = [(ULLabelMO *)self data];
  v15 = data == 0;

  if (!v15)
  {
    data2 = [(ULLabelMO *)self data];
    ULLabelDO::getLabelDataFromNSData(data2, contextLayerType, &buf);
    std::__optional_storage_base<std::variant<ULLabelDataWiFi>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::variant<ULLabelDataWiFi>,false>>(v20, &buf);
    if (buf.var0.var2.var0.var1.data[8] == 1)
    {
      *&buf.var0.var2.var0.var0 = -1;
    }

    if ((v21 & 1) == 0)
    {
LABEL_28:
      retstr->var0.var0 = 0;
      retstr[1].var0.var1.var0.var2.var0.var0 = 0;
      goto LABEL_29;
    }
  }

  if ((BYTE8(v26) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  ULLabelDO::ULLabelDO(&v32, &contextLayerType, &deviceClass, v37, &v24, v39, v25, v20);
  objectID = [(ULLabelMO *)self objectID];
  ULLabelDOAndObjectID::ULLabelDOAndObjectID(&buf, &v32, objectID);
  ULLabelDO::ULLabelDO(retstr, &buf);
  v18 = v31;
  v31 = 0;
  retstr[1].var0.var1.var0.var1 = v18;
  retstr[1].var0.var1.var0.var2.var0.var0 = 1;
  if (v30 == 1)
  {
    v29 = -1;
  }

  if (v28 < 0)
  {
    operator delete(buf.var2.var0.var1.var1);
  }

  if (v36 == 1)
  {
    v35 = -1;
  }

  if (v34 < 0)
  {
    operator delete(v33);
  }

LABEL_29:
  if (BYTE8(v26) == 1 && SBYTE7(v26) < 0)
  {
    operator delete(v25[0]);
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

@end