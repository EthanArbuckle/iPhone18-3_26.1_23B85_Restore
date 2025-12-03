@interface ULMagnetometerMO
+ (id)createFromDO:(const void *)o withScanningEventMO:(id)mO inManagedObjectContext:(id)context;
- (optional<ULMagnetometerDO>)convertToDO;
@end

@implementation ULMagnetometerMO

+ (id)createFromDO:(const void *)o withScanningEventMO:(id)mO inManagedObjectContext:(id)context
{
  mOCopy = mO;
  contextCopy = context;
  v9 = [[ULMagnetometerMO alloc] initWithContext:contextCopy];
  [(ULMagnetometerMO *)v9 setScanningEvent:mOCopy];
  [(ULMagnetometerMO *)v9 setHorizontalField:*o];
  [(ULMagnetometerMO *)v9 setVerticalField:*(o + 1)];
  LODWORD(v10) = *(o + 4);
  [(ULMagnetometerMO *)v9 setBiasEstimateVarianceX:v10];
  LODWORD(v11) = *(o + 5);
  [(ULMagnetometerMO *)v9 setBiasEstimateVarianceY:v11];
  LODWORD(v12) = *(o + 6);
  [(ULMagnetometerMO *)v9 setBiasEstimateVarianceZ:v12];
  [(ULMagnetometerMO *)v9 setTimestamp:*(o + 4)];

  return v9;
}

- (optional<ULMagnetometerDO>)convertToDO
{
  [(ULMagnetometerMO *)self biasEstimateVarianceX];
  v5 = v4;
  [(ULMagnetometerMO *)self biasEstimateVarianceY];
  v7 = v6;
  [(ULMagnetometerMO *)self biasEstimateVarianceZ];
  v9 = v8;
  [(ULMagnetometerMO *)self horizontalField];
  v11 = v10;
  [(ULMagnetometerMO *)self verticalField];
  v13 = v12;
  [(ULMagnetometerMO *)self timestamp];
  result = ULMagnetometerDO::ULMagnetometerDO(retstr, v11, v13, v5, v7, v9, v14);
  LOBYTE(retstr[1].var0.var1.var1) = 1;
  return result;
}

@end