@interface NTKComplicationVariant
+ (id)defaultVariantForFamily:(int64_t)a3 device:(id)a4;
+ (id)variantWithFamily:(int64_t)a3 metrics:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NTKComplicationVariant)initWithCoder:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NTKComplicationVariant

+ (id)variantWithFamily:(int64_t)a3 metrics:(id)a4
{
  v5 = a4;
  v6 = objc_opt_new();
  v7 = v6;
  if (v6)
  {
    *(v6 + 8) = a3;
    v8 = [v5 copy];
    v9 = v7[2];
    v7[2] = v8;
  }

  return v7;
}

+ (id)defaultVariantForFamily:(int64_t)a3 device:(id)a4
{
  v6 = [NTKComplicationMetrics defaultMetricsForFamily:a3 device:a4];
  v7 = [a1 variantWithFamily:a3 metrics:v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  family = self->_family;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __34__NTKComplicationVariant_isEqual___block_invoke;
  v18[3] = &unk_278780170;
  v7 = v4;
  v19 = v7;
  v8 = [v5 appendInteger:family counterpart:v18];
  metrics = self->_metrics;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __34__NTKComplicationVariant_isEqual___block_invoke_2;
  v16 = &unk_278780340;
  v17 = v7;
  v10 = v7;
  v11 = [v5 appendObject:metrics counterpart:&v13];
  LOBYTE(metrics) = [v5 isEqual];

  return metrics;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendInteger:self->_family];
  v5 = [v3 appendObject:self->_metrics];
  v6 = [v3 hash];

  return v6;
}

- (NTKComplicationVariant)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"family"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metrics"];

  v7 = [NTKComplicationVariant variantWithFamily:v5 metrics:v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  family = self->_family;
  v5 = a3;
  [v5 encodeInteger:family forKey:@"family"];
  [v5 encodeObject:self->_metrics forKey:@"metrics"];
}

@end