@interface HFMeasurementFormatter
- (HFMeasurementFormatter)init;
- (HFMeasurementFormatter)initWithMeasurementBlock:(id)a3;
- (id)stringForObjectValue:(id)a3;
- (id)stringForObjectValue:(id)a3 withUnit:(BOOL)a4;
@end

@implementation HFMeasurementFormatter

- (HFMeasurementFormatter)initWithMeasurementBlock:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"HFMeasurementFormatter.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"measurementBlock"}];
  }

  v10.receiver = self;
  v10.super_class = HFMeasurementFormatter;
  v6 = [(NSMeasurementFormatter *)&v10 init];
  v7 = v6;
  if (v6)
  {
    [(NSMeasurementFormatter *)v6 setUnitStyle:1];
    [(HFMeasurementFormatter *)v7 setMeasurementBlock:v5];
  }

  return v7;
}

- (HFMeasurementFormatter)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HFMeasurementFormatter.m" lineNumber:32 description:@"Use -initWithMeasurementBlock:"];

  return 0;
}

- (id)stringForObjectValue:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(HFMeasurementFormatter *)self measurementBlock];
    v6 = (v5)[2](v5, v4);
    v7 = [(NSMeasurementFormatter *)self stringFromMeasurement:v6];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = HFMeasurementFormatter;
    v7 = [(NSMeasurementFormatter *)&v9 stringForObjectValue:v4];
  }

  return v7;
}

- (id)stringForObjectValue:(id)a3 withUnit:(BOOL)a4
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(HFMeasurementFormatter *)self measurementBlock];
    v8 = (v7)[2](v7, v6);

    if (!a4)
    {
      if (qword_280E02C78 != -1)
      {
        dispatch_once(&qword_280E02C78, &__block_literal_global_31);
      }

      v9 = objc_alloc(MEMORY[0x277CCAB10]);
      [v8 doubleValue];
      v10 = [v9 initWithDoubleValue:_MergedGlobals_222 unit:?];

      v8 = v10;
    }

    v11 = [(NSMeasurementFormatter *)self stringFromMeasurement:v8];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = HFMeasurementFormatter;
    v11 = [(NSMeasurementFormatter *)&v13 stringForObjectValue:v6];
  }

  return v11;
}

void __56__HFMeasurementFormatter_stringForObjectValue_withUnit___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD98]) initWithSymbol:&stru_2824B1A78];
  v1 = _MergedGlobals_222;
  _MergedGlobals_222 = v0;
}

@end