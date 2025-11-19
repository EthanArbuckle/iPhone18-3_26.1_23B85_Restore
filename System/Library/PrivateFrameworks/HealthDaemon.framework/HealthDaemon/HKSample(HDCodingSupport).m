@interface HKSample(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport;
- (HDCodableSample)codableRepresentationForSync;
@end

@implementation HKSample(HDCodingSupport)

- (HDCodableSample)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableSample);
  v8.receiver = a1;
  v8.super_class = &off_283D35988;
  v3 = objc_msgSendSuper2(&v8, sel_codableRepresentationForSync);
  [(HDCodableSample *)v2 setObject:v3];

  v4 = [a1 sampleType];
  -[HDCodableSample setDataType:](v2, "setDataType:", [v4 code]);

  [a1 _startTimestamp];
  if (v5 != 2.22507386e-308)
  {
    [(HDCodableSample *)v2 setStartDate:?];
  }

  [a1 _endTimestamp];
  if (v6 != 2.22507386e-308)
  {
    [(HDCodableSample *)v2 setEndDate:?];
  }

  return v2;
}

- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport
{
  v4 = a3;
  if ([a1 conformsToProtocol:&unk_283D3FFC8])
  {
    v5 = [a1 codableRepresentationForSync];
    v6 = v5 != 0;
    if (v5)
    {
      [v4 addBinarySamples:v5];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)createWithCodable:()HDCodingSupport
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = 0;
    goto LABEL_16;
  }

  v4 = v3;
  v5 = [v4 sample];
  v6 = [v5 dataType];

  if (_HKValidDataTypeCode())
  {
    v7 = [MEMORY[0x277CCD720] dataTypeWithCode:v6];
    v8 = [objc_alloc(objc_msgSend(v7 "dataObjectClass"))];
    if ([v8 conformsToProtocol:&unk_283D3FFC8])
    {
      if ([v4 applyToObject:v8])
      {
        v9 = HKDefaultObjectValidationConfigurationIgnoringAllOptions();
        v11 = [v8 _validateWithConfiguration:{v9, v10}];
        if (v11)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8;
        }

        v13 = v12;

        goto LABEL_14;
      }
    }

    else
    {
      _HKInitializeLogging();
      v14 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v17 = v14;
        v19 = 138412290;
        v20 = objc_opt_class();
        v18 = v20;
        _os_log_error_impl(&dword_228986000, v17, OS_LOG_TYPE_ERROR, "Class: %@ must either conform to _HKBinarySample or implement creatWithCodable:", &v19, 0xCu);
      }
    }

    v13 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v13 = 0;
LABEL_15:

LABEL_16:
  v15 = *MEMORY[0x277D85DE8];

  return v13;
}

@end