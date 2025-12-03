@interface HKElectrocardiogram(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport;
- (HDCodableECGSample)codableRepresentationForSync;
@end

@implementation HKElectrocardiogram(HDCodingSupport)

- (HDCodableECGSample)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableECGSample);
  v9.receiver = self;
  v9.super_class = &off_283D40938;
  v3 = objc_msgSendSuper2(&v9, sel_codableRepresentationForSync);
  [(HDCodableECGSample *)v2 setSample:v3];

  payload = [self payload];
  [(HDCodableECGSample *)v2 setVoltagePayload:payload];

  -[HDCodableECGSample setPrivateClassification:](v2, "setPrivateClassification:", [self privateClassification]);
  -[HDCodableECGSample setSymptomsStatus:](v2, "setSymptomsStatus:", [self symptomsStatus]);
  averageHeartRate = [self averageHeartRate];

  if (averageHeartRate)
  {
    averageHeartRate2 = [self averageHeartRate];
    _countPerMinuteUnit = [MEMORY[0x277CCDAB0] _countPerMinuteUnit];
    [averageHeartRate2 doubleValueForUnit:_countPerMinuteUnit];
    [(HDCodableECGSample *)v2 setAverageHeartRateInBPM:?];
  }

  return v2;
}

- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport
{
  v4 = a3;
  codableRepresentationForSync = [self codableRepresentationForSync];
  if (codableRepresentationForSync)
  {
    [v4 addEcgSamples:codableRepresentationForSync];
  }

  return codableRepresentationForSync != 0;
}

+ (id)createWithCodable:()HDCodingSupport
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    _init = [[self alloc] _init];
    if ([v5 applyToObject:_init])
    {
      v7 = HKDefaultObjectValidationConfigurationIgnoringAllOptions();
      v9 = [_init _validateWithConfiguration:{v7, v8}];
      if (v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = _init;
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