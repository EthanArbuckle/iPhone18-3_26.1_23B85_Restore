@interface ULMagnetometerMO
+ (id)createFromDO:(const void *)a3 withScanningEventMO:(id)a4 inManagedObjectContext:(id)a5;
- (optional<ULMagnetometerDO>)convertToDO;
@end

@implementation ULMagnetometerMO

+ (id)createFromDO:(const void *)a3 withScanningEventMO:(id)a4 inManagedObjectContext:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [[ULMagnetometerMO alloc] initWithContext:v8];
  [(ULMagnetometerMO *)v9 setScanningEvent:v7];
  [(ULMagnetometerMO *)v9 setHorizontalField:*a3];
  [(ULMagnetometerMO *)v9 setVerticalField:*(a3 + 1)];
  LODWORD(v10) = *(a3 + 4);
  [(ULMagnetometerMO *)v9 setBiasEstimateVarianceX:v10];
  LODWORD(v11) = *(a3 + 5);
  [(ULMagnetometerMO *)v9 setBiasEstimateVarianceY:v11];
  LODWORD(v12) = *(a3 + 6);
  [(ULMagnetometerMO *)v9 setBiasEstimateVarianceZ:v12];
  [(ULMagnetometerMO *)v9 setTimestamp:*(a3 + 4)];

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