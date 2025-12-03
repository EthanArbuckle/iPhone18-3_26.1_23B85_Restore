@interface NTKComplicationVariant
+ (id)defaultVariantForFamily:(int64_t)family device:(id)device;
+ (id)variantWithFamily:(int64_t)family metrics:(id)metrics;
- (BOOL)isEqual:(id)equal;
- (NTKComplicationVariant)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NTKComplicationVariant

+ (id)variantWithFamily:(int64_t)family metrics:(id)metrics
{
  metricsCopy = metrics;
  v6 = objc_opt_new();
  v7 = v6;
  if (v6)
  {
    *(v6 + 8) = family;
    v8 = [metricsCopy copy];
    v9 = v7[2];
    v7[2] = v8;
  }

  return v7;
}

+ (id)defaultVariantForFamily:(int64_t)family device:(id)device
{
  v6 = [NTKComplicationMetrics defaultMetricsForFamily:family device:device];
  v7 = [self variantWithFamily:family metrics:v6];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  family = self->_family;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __34__NTKComplicationVariant_isEqual___block_invoke;
  v18[3] = &unk_278780170;
  v7 = equalCopy;
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
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendInteger:self->_family];
  v5 = [builder appendObject:self->_metrics];
  v6 = [builder hash];

  return v6;
}

- (NTKComplicationVariant)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"family"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metrics"];

  v7 = [NTKComplicationVariant variantWithFamily:v5 metrics:v6];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  family = self->_family;
  coderCopy = coder;
  [coderCopy encodeInteger:family forKey:@"family"];
  [coderCopy encodeObject:self->_metrics forKey:@"metrics"];
}

@end