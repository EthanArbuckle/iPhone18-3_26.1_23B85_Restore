@interface HKElectrocardiogram(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport;
- (HDCodableECGSample)codableRepresentationForSync;
@end

@implementation HKElectrocardiogram(HDCodingSupport)

- (HDCodableECGSample)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableECGSample);
  v9.receiver = a1;
  v9.super_class = &off_283D40938;
  v3 = objc_msgSendSuper2(&v9, sel_codableRepresentationForSync);
  [(HDCodableECGSample *)v2 setSample:v3];

  v4 = [a1 payload];
  [(HDCodableECGSample *)v2 setVoltagePayload:v4];

  -[HDCodableECGSample setPrivateClassification:](v2, "setPrivateClassification:", [a1 privateClassification]);
  -[HDCodableECGSample setSymptomsStatus:](v2, "setSymptomsStatus:", [a1 symptomsStatus]);
  v5 = [a1 averageHeartRate];

  if (v5)
  {
    v6 = [a1 averageHeartRate];
    v7 = [MEMORY[0x277CCDAB0] _countPerMinuteUnit];
    [v6 doubleValueForUnit:v7];
    [(HDCodableECGSample *)v2 setAverageHeartRateInBPM:?];
  }

  return v2;
}

- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport
{
  v4 = a3;
  v5 = [a1 codableRepresentationForSync];
  if (v5)
  {
    [v4 addEcgSamples:v5];
  }

  return v5 != 0;
}

+ (id)createWithCodable:()HDCodingSupport
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [[a1 alloc] _init];
    if ([v5 applyToObject:v6])
    {
      v7 = HKDefaultObjectValidationConfigurationIgnoringAllOptions();
      v9 = [v6 _validateWithConfiguration:{v7, v8}];
      if (v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = v6;
      }

      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end