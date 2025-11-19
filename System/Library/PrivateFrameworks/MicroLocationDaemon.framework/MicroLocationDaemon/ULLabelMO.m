@interface ULLabelMO
+ (id)createFromDO:(const void *)a3 withLoi:(id)a4 inManagedObjectContext:(id)a5;
+ (id)createFromDO:(const void *)a3 withScanningEventMO:(id)a4 serviceMO:(id)a5 inManagedObjectContext:(id)a6;
- (optional<ULLabelDOAndObjectID>)convertToDO;
@end

@implementation ULLabelMO

+ (id)createFromDO:(const void *)a3 withScanningEventMO:(id)a4 serviceMO:(id)a5 inManagedObjectContext:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v10 loi];
  v14 = [a1 createFromDO:a3 withLoi:v13 inManagedObjectContext:v12];

  [v14 setScanningEvent:v10];
  [v14 setService:v11];

  return v14;
}

+ (id)createFromDO:(const void *)a3 withLoi:(id)a4 inManagedObjectContext:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [[ULLabelMO alloc] initWithContext:v8];
  [(ULLabelMO *)v9 setLoi:v7];
  [(ULLabelMO *)v9 setReceivedTimestamp:*(a3 + 5)];
  if (*(a3 + 95) >= 0)
  {
    v10 = a3 + 72;
  }

  else
  {
    v10 = *(a3 + 9);
  }

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v10];
  [(ULLabelMO *)v9 setLabelID:v11];

  [(ULLabelMO *)v9 setContextLayerType:*a3];
  [(ULLabelMO *)v9 setDeviceClass:*(a3 + 4)];
  if (*(a3 + 32) == 1)
  {
    v12 = objc_alloc(MEMORY[0x277CCAD78]);
    if ((*(a3 + 32) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v13 = [v12 initWithUUIDBytes:a3 + 16];
    v14 = [v13 UUIDString];
    [(ULLabelMO *)v9 setUuid:v14];
  }

  else
  {
    [(ULLabelMO *)v9 setUuid:0];
  }

  if (!ULLabelDO::hasData(a3) || (ULLabelDO::getNSDataFromLabelData(a3), v15 = objc_claimAutoreleasedReturnValue(), [(ULLabelMO *)v9 setData:v15], v15, [(ULLabelMO *)v9 data], v16 = objc_claimAutoreleasedReturnValue(), v16, v16))
  {
    v16 = v9;
  }

  return v16;
}

- (optional<ULLabelDOAndObjectID>)convertToDO
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = [(ULLabelMO *)self labelID];
  v5 = v4;
  if (v4)
  {
    [v4 stdString];
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
  v7 = [(ULLabelMO *)self service];
  v8 = [v7 serviceUUID];
  v9 = v8;
  if (v8)
  {
    [v8 boostUUID];
  }

  else
  {
    v39[0] = 0;
    v39[1] = 0;
    v40 = 0;
  }

  v23 = [(ULLabelMO *)self contextLayerType];
  v22 = [(ULLabelMO *)self deviceClass];
  v12 = [(ULLabelMO *)self uuid];
  v13 = v12;
  if (v12)
  {
    [v12 boostUUID];
  }

  else
  {
    v37[0] = 0;
    v37[1] = 0;
    v38 = 0;
  }

  v20[0] = 0;
  v21 = 0;
  v14 = [(ULLabelMO *)self data];
  v15 = v14 == 0;

  if (!v15)
  {
    v16 = [(ULLabelMO *)self data];
    ULLabelDO::getLabelDataFromNSData(v16, v23, &buf);
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

  ULLabelDO::ULLabelDO(&v32, &v23, &v22, v37, &v24, v39, v25, v20);
  v17 = [(ULLabelMO *)self objectID];
  ULLabelDOAndObjectID::ULLabelDOAndObjectID(&buf, &v32, v17);
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