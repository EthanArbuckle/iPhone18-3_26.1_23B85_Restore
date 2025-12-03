@interface HMDSecureUnarchiveFromDataTransformer
+ (BOOL)isEncodedNilValue:(id)value;
+ (id)allowedTopLevelClasses;
- (id)transformedValue:(id)value;
@end

@implementation HMDSecureUnarchiveFromDataTransformer

+ (id)allowedTopLevelClasses
{
  if (objc_opt_class() == self)
  {
    if (allowedTopLevelClasses__hmf_once_t0 != -1)
    {
      dispatch_once(&allowedTopLevelClasses__hmf_once_t0, &__block_literal_global_221611);
    }

    v3 = allowedTopLevelClasses__hmf_once_v1;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = &OBJC_METACLASS___HMDSecureUnarchiveFromDataTransformer;
    v3 = objc_msgSendSuper2(&v5, sel_allowedTopLevelClasses);
  }

  return v3;
}

- (id)transformedValue:(id)value
{
  valueCopy = value;
  if ([HMDSecureUnarchiveFromDataTransformer isEncodedNilValue:valueCopy])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = HMDSecureUnarchiveFromDataTransformer;
    v5 = [(NSSecureUnarchiveFromDataTransformer *)&v7 transformedValue:valueCopy];
  }

  return v5;
}

+ (BOOL)isEncodedNilValue:(id)value
{
  valueCopy = value;
  if (isEncodedNilValue__once != -1)
  {
    dispatch_once(&isEncodedNilValue__once, &__block_literal_global_29_221596);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v4 = [valueCopy length], v4 == isEncodedNilValue__encodedNilSize))
  {
    v5 = [MEMORY[0x277CCAC58] propertyListWithData:valueCopy options:0 format:0 error:0];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v6 = [v5 count], v6 == objc_msgSend(isEncodedNilValue__encodedNilPList, "count")))
    {
      v10 = 0;
      v11 = &v10;
      v12 = 0x2020000000;
      v13 = 1;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __59__HMDSecureUnarchiveFromDataTransformer_isEncodedNilValue___block_invoke_2;
      v9[3] = &unk_278681758;
      v9[4] = &v10;
      [v5 enumerateKeysAndObjectsUsingBlock:v9];
      v7 = *(v11 + 24);
      _Block_object_dispose(&v10, 8);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void __59__HMDSecureUnarchiveFromDataTransformer_isEncodedNilValue___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v11 = a2;
  v7 = a3;
  if (![v11 isEqual:@"$top"])
  {
    v9 = [isEncodedNilValue__encodedNilPList objectForKeyedSubscript:v11];
    v10 = [v7 isEqual:v9];

    if (v10)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_5:
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

LABEL_6:
}

void __59__HMDSecureUnarchiveFromDataTransformer_isEncodedNilValue___block_invoke()
{
  v0 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:0];
  if (!v0)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v4 = v0;
  isEncodedNilValue__encodedNilSize = [v0 length];
  v1 = [MEMORY[0x277CCAC58] propertyListWithData:v4 options:0 format:0 error:0];
  v2 = isEncodedNilValue__encodedNilPList;
  isEncodedNilValue__encodedNilPList = v1;

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_7:
    v3 = _HMFPreconditionFailure();
    __63__HMDSecureUnarchiveFromDataTransformer_allowedTopLevelClasses__block_invoke(v3);
    return;
  }
}

void __63__HMDSecureUnarchiveFromDataTransformer_allowedTopLevelClasses__block_invoke()
{
  v3[26] = *MEMORY[0x277D85DE8];
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v3[2] = objc_opt_class();
  v3[3] = objc_opt_class();
  v3[4] = objc_opt_class();
  v3[5] = objc_opt_class();
  v3[6] = objc_opt_class();
  v3[7] = objc_opt_class();
  v3[8] = objc_opt_class();
  v3[9] = objc_opt_class();
  v3[10] = objc_opt_class();
  v3[11] = objc_opt_class();
  v3[12] = objc_opt_class();
  v3[13] = objc_opt_class();
  v3[14] = objc_opt_class();
  v3[15] = objc_opt_class();
  v3[16] = objc_opt_class();
  v3[17] = objc_opt_class();
  v3[18] = objc_opt_class();
  v3[19] = objc_opt_class();
  v3[20] = objc_opt_class();
  v3[21] = objc_opt_class();
  v3[22] = objc_opt_class();
  v3[23] = objc_opt_class();
  v3[24] = objc_opt_class();
  v3[25] = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:26];
  v1 = allowedTopLevelClasses__hmf_once_v1;
  allowedTopLevelClasses__hmf_once_v1 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

@end