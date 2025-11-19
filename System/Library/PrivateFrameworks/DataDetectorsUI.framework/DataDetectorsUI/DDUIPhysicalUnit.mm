@interface DDUIPhysicalUnit
+ (id)unitWithIdentifier:(id)a3;
- (BOOL)inputValueIsValid:(double)a3 fromUnit:(id)a4;
- (BOOL)isUKMeasurement;
- (BOOL)keepZeroValue;
- (DDUIPhysicalUnit)initWithName:(id)a3 abbreviation:(id)a4 restrictionLocales:(id)a5 groupType:(unint64_t)a6 a:(double)a7 b:(double)a8;
- (DDUIPhysicalUnitGroup)group;
- (double)baseToUnit:(double)a3;
- (double)unitToBase:(double)a3;
- (double)valueFrom:(double)result unit:(id)a4;
- (id)floatFormatString:(id)a3 precision:(int64_t)a4 exp:(BOOL)a5;
- (id)localizedConvertedValueFrom:(double)a3 unit:(id)a4;
- (id)localizedMenuTitleFormat:(id)a3;
- (id)localizedUnitNameWithValue:(double)a3 unit:(id)a4;
- (id)patchedVariantName;
- (id)valueAsString:(double)a3;
@end

@implementation DDUIPhysicalUnit

- (DDUIPhysicalUnit)initWithName:(id)a3 abbreviation:(id)a4 restrictionLocales:(id)a5 groupType:(unint64_t)a6 a:(double)a7 b:(double)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v23.receiver = self;
  v23.super_class = DDUIPhysicalUnit;
  v18 = [(DDUIPhysicalUnit *)&v23 init];
  if (v18)
  {
    v19 = [v15 lowercaseString];
    identifier = v18->_identifier;
    v18->_identifier = v19;

    objc_storeStrong(&v18->_name, a3);
    v18->_a = a7;
    v18->_b = a8;
    objc_storeStrong(&v18->_restrictionLocales, a5);
    if (v16)
    {
      v21 = v16;
    }

    else
    {
      v21 = v15;
    }

    objc_storeStrong(&v18->_abbreviation, v21);
    v18->_groupType = a6;
  }

  return v18;
}

- (id)patchedVariantName
{
  if (-[DDUIPhysicalUnit isUKMeasurement](self, "isUKMeasurement") && ([&unk_282C2CED0 objectForKeyedSubscript:self->_name], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [(NSString *)self->_name stringByAppendingString:@" (Imperial)"];
  }

  else
  {
    v4 = self->_name;
  }

  return v4;
}

- (id)localizedUnitNameWithValue:(double)a3 unit:(id)a4
{
  v5 = MEMORY[0x277CCACA8];
  v6 = [(DDUIPhysicalUnit *)self localizedTitleFormat:@"x", a3];
  v7 = [(DDUIPhysicalUnit *)self patchedVariantName];
  v8 = DDLocalizedStringFromTable(v6, &stru_282C1E0A8, v7, @"Conversion");
  v9 = [v5 stringWithFormat:v8];

  return v9;
}

- (id)localizedMenuTitleFormat:(id)a3
{
  v4 = [(NSString *)self->_identifier isEqualToString:@"degree"];
  v5 = MEMORY[0x277CCACA8];
  if (v4)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Convert Angle"];
  }

  else
  {
    v8 = [(DDUIPhysicalUnit *)self patchedVariantName];
    v9 = [v5 stringWithFormat:@"Convert %@", v8];

    v6 = v9;
  }

  return v6;
}

- (id)floatFormatString:(id)a3 precision:(int64_t)a4 exp:(BOOL)a5
{
  if (a5)
  {
    v5 = @"%%.%lde";
  }

  else
  {
    v5 = @"%%.%ldf";
  }

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:v5, a4];

  return v6;
}

- (id)valueAsString:(double)a3
{
  v4 = fabs(a3);
  if (v4 < 1.0e-15 || v4 >= 0.1)
  {
    v12 = vmulq_f64(vrndaq_f64(vmulq_n_f64(xmmword_21ABCD8E0, v4)), xmmword_21ABCD8F0);
    v13 = round(v4);
    v14 = 2;
    if (v12.f64[0] == v12.f64[1])
    {
      v14 = 1;
    }

    if (a3 == 0.0 || v13 > 9999.0 || v13 == v12.f64[1])
    {
      v11 = 0;
    }

    else
    {
      v11 = v14;
    }

    goto LABEL_15;
  }

  v5 = self;
  v20 = v4;
  v6 = fabs(floor(log10(a3)));
  v7 = __exp10(v6) * v20;
  v8 = vmulq_f64(vrndaq_f64(vmulq_n_f64(xmmword_21ABCD8E0, v7)), xmmword_21ABCD8F0);
  v9 = round(v7);
  v10 = 2;
  if (v8.f64[0] == v8.f64[1])
  {
    v10 = 1;
  }

  if (v7 == 0.0 || v9 > 9999.0 || v9 == v8.f64[1])
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  if (v6 <= 6.0)
  {
    v11 += v6;
    self = v5;
LABEL_15:
    v15 = MEMORY[0x277CCACA8];
    v16 = 0;
    goto LABEL_17;
  }

  v15 = MEMORY[0x277CCACA8];
  self = v5;
  v16 = 1;
LABEL_17:
  v17 = [(DDUIPhysicalUnit *)self floatFormatString:@"%f" precision:v11 exp:v16];
  v18 = [v15 localizedStringWithFormat:v17, *&a3];

  return v18;
}

- (id)localizedConvertedValueFrom:(double)a3 unit:(id)a4
{
  [(DDUIPhysicalUnit *)self valueFrom:a4 unit:a3];
  v6 = v5;
  if (__isnand() || __isinfd())
  {
    v7 = DDLocalizedStringFromTable(@"Cannot Convert Value", @"Generic value conversion action menu title", @"Cannot Convert Value", @"Conversion");
  }

  else if (![(NSString *)self->_name isEqualToString:@"Foot"]|| v6 <= 0.0 || (v9 = floor(v6), v10 = round((v6 - v9) * 1200.0) * 0.01, v10 == 0.0) || v9 <= 0.0 || v10 >= 12.0)
  {
    v16 = MEMORY[0x277CCACA8];
    v17 = [(DDUIPhysicalUnit *)self localizedConvertedValueFormat:@"%f%@"];
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%%2$@ %@", self->_abbreviation];
    v19 = DDLocalizedStringFromTable(v17, &stru_282C1E0A8, v18, @"Conversion");
    v20 = v6;
    v21 = v20;
    v22 = [(DDUIPhysicalUnit *)self valueAsString:v6];
    v23 = [v16 stringWithFormat:v19, *&v21, v22];

    v7 = v23;
  }

  else
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = DDLocalizedStringFromTable(@"%@ ft %@ in", @"Feet and inches conversions", @"%@ ft %@ in", @"Conversion");
    v13 = [(DDUIPhysicalUnit *)self valueAsString:v9];
    v14 = [(DDUIPhysicalUnit *)self valueAsString:v10];
    v15 = [v11 stringWithFormat:v12, v13, v14];

    v7 = v15;
  }

  return v7;
}

- (BOOL)inputValueIsValid:(double)a3 fromUnit:(id)a4
{
  v6 = a4;
  if (__isnand() || __isinfd() || ([v6 unitToBase:a3], v8 = v7, __isnand()) || __isinfd())
  {

    return 0;
  }

  else if ([(NSString *)self->_identifier isEqualToString:@"percent grade"])
  {

    return v8 >= 0.0 && v8 <= 0.785398163;
  }

  else
  {

    return 1;
  }
}

- (BOOL)isUKMeasurement
{
  v2 = [MEMORY[0x277CBEAF8] currentLocale];
  v3 = [v2 objectForKey:*MEMORY[0x277CBE6D0]];
  v4 = [v3 isEqual:@"U.K."];

  return v4;
}

- (double)unitToBase:(double)a3
{
  if ([(NSString *)self->_name isEqualToString:@"Mile per gallon"])
  {
    return 235.214583 / a3;
  }

  if ([(NSString *)self->_name isEqualToString:@"Percent grade"])
  {
    return atan(a3 * 0.01);
  }

  if (![(DDUIPhysicalUnit *)self isUKMeasurement])
  {
    return self->_b + self->_a * a3;
  }

  v6 = [&unk_282C2CED0 objectForKeyedSubscript:self->_name];
  if (!v6)
  {
    return self->_b + self->_a * a3;
  }

  v7 = v6;
  [v6 doubleValue];
  v9 = v8 * a3;

  return v9;
}

- (BOOL)keepZeroValue
{
  WeakRetained = objc_loadWeakRetained(&self->_group);
  v4 = [WeakRetained name];
  v5 = [v4 isEqualToString:@"Angle"];

  return (v5 & 1) != 0 || self->_b != 0.0;
}

- (double)baseToUnit:(double)a3
{
  if ([(NSString *)self->_name isEqualToString:@"Mile per gallon"])
  {
    return 235.214583 / a3;
  }

  if ([(NSString *)self->_name isEqualToString:@"Percent grade"])
  {
    return fabs(tan(fabs(a3))) * 100.0;
  }

  if (![(DDUIPhysicalUnit *)self isUKMeasurement])
  {
    return (a3 - self->_b) / self->_a;
  }

  v6 = [&unk_282C2CED0 objectForKeyedSubscript:self->_name];
  if (!v6)
  {
    return (a3 - self->_b) / self->_a;
  }

  v7 = v6;
  [v6 doubleValue];
  v9 = a3 / v8;

  return v9;
}

- (double)valueFrom:(double)result unit:(id)a4
{
  if (a4 != self)
  {
    [a4 unitToBase:result];

    [(DDUIPhysicalUnit *)self baseToUnit:?];
  }

  return result;
}

+ (id)unitWithIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    if (qword_280B122B8 != -1)
    {
      +[DDUIPhysicalUnit unitWithIdentifier:];
    }

    v4 = qword_280B122B0;
    v5 = [v3 lowercaseString];
    v6 = [v4 objectForKeyedSubscript:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __39__DDUIPhysicalUnit_unitWithIdentifier___block_invoke()
{
  v51 = *MEMORY[0x277D85DE8];
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = qword_280B122B0;
  qword_280B122B0 = v0;

  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = _MergedGlobals_5;
  _MergedGlobals_5 = v2;

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  result = [&unk_282C2CA90 countByEnumeratingWithState:&v45 objects:v50 count:16];
  v33 = result;
  if (result)
  {
    v32 = *v46;
    do
    {
      v5 = 0;
      do
      {
        if (*v46 != v32)
        {
          objc_enumerationMutation(&unk_282C2CA90);
        }

        v14 = *(*(&v45 + 1) + 8 * v5);
        v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v34 = v14;
        obj = [v14 objectAtIndexedSubscript:3];
        v40 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
        v35 = v5;
        if (v40)
        {
          v38 = *v42;
          do
          {
            v15 = 0;
            do
            {
              if (*v42 != v38)
              {
                objc_enumerationMutation(obj);
              }

              v18 = *(*(&v41 + 1) + 8 * v15);
              v19 = [DDUIPhysicalUnit alloc];
              v20 = [v18 objectAtIndexedSubscript:0];
              v21 = [v18 objectAtIndexedSubscript:1];
              v22 = [v18 objectAtIndexedSubscript:2];
              v23 = [v18 count];
              v24 = 1;
              if (v23 >= 6)
              {
                v37 = [v18 objectAtIndexedSubscript:5];
                v24 = [v37 unsignedIntegerValue];
              }

              v25 = [v18 objectAtIndexedSubscript:3];
              [v25 doubleValue];
              v27 = v26;
              v28 = [v18 objectAtIndexedSubscript:4];
              [v28 doubleValue];
              v30 = [(DDUIPhysicalUnit *)v19 initWithName:v20 abbreviation:v21 restrictionLocales:v22 groupType:v24 a:v27 b:v29];

              if (v23 >= 6)
              {
              }

              [v39 addObject:v30];
              v16 = qword_280B122B0;
              v17 = [(DDUIPhysicalUnit *)v30 identifier];
              [v16 setObject:v30 forKeyedSubscript:v17];

              ++v15;
            }

            while (v40 != v15);
            v40 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
          }

          while (v40);
        }

        v6 = [DDUIPhysicalUnitGroup alloc];
        v7 = [v34 objectAtIndexedSubscript:0];
        v8 = [v34 objectAtIndexedSubscript:1];
        v9 = [v8 BOOLValue];
        v10 = [v34 objectAtIndexedSubscript:2];
        v11 = [(DDUIPhysicalUnitGroup *)v6 initWithName:v7 units:v39 restricted:v9 symbol:v10];

        v12 = _MergedGlobals_5;
        v13 = [(DDUIPhysicalUnitGroup *)v11 name];
        [v12 setObject:v11 forKeyedSubscript:v13];

        v5 = v35 + 1;
      }

      while (v35 + 1 != v33);
      result = [&unk_282C2CA90 countByEnumeratingWithState:&v45 objects:v50 count:16];
      v33 = result;
    }

    while (result);
  }

  v31 = *MEMORY[0x277D85DE8];
  return result;
}

- (DDUIPhysicalUnitGroup)group
{
  WeakRetained = objc_loadWeakRetained(&self->_group);

  return WeakRetained;
}

@end