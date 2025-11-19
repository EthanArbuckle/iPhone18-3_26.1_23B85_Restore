@interface FHFeatureInsight
- (FHFeatureInsight)initWithCoder:(id)a3;
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FHFeatureInsight

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FHFeatureInsight *)self type];
  [v4 encodeObject:v5 forKey:@"type"];

  [v4 encodeInteger:-[FHFeatureInsight detectionType](self forKey:{"detectionType"), @"detectionType"}];
  [v4 encodeInteger:-[FHFeatureInsight direction](self forKey:{"direction"), @"direction"}];
  [v4 encodeInteger:-[FHFeatureInsight window](self forKey:{"window"), @"window"}];
  [v4 encodeInteger:-[FHFeatureInsight windowReference](self forKey:{"windowReference"), @"windowReference"}];
  v6 = [(FHFeatureInsight *)self startDate];
  [v4 encodeObject:v6 forKey:@"startDate"];

  v7 = [(FHFeatureInsight *)self endDate];
  [v4 encodeObject:v7 forKey:@"endDate"];

  v8 = [(FHFeatureInsight *)self averageAmount];
  [v4 encodeObject:v8 forKey:@"averageAmount"];

  v9 = [(FHFeatureInsight *)self spendAmount];
  [v4 encodeObject:v9 forKey:@"spendAmount"];

  v10 = [(FHFeatureInsight *)self spendingInsightAmount];
  [v4 encodeObject:v10 forKey:@"spendingInsightAmount"];

  v11 = [(FHFeatureInsight *)self spendingInsightPercentageValue];
  [v4 encodeObject:v11 forKey:@"spendingInsightPercentageValue"];

  v12 = [(FHFeatureInsight *)self currencyCode];
  [v4 encodeObject:v12 forKey:@"currencyCode"];
}

- (FHFeatureInsight)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = FHFeatureInsight;
  v5 = [(FHFeatureInsight *)&v23 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    type = v5->type;
    v5->type = v6;

    v5->detectionType = [v4 decodeIntegerForKey:@"detectionType"];
    v5->direction = [v4 decodeIntegerForKey:@"direction"];
    v5->window = [v4 decodeIntegerForKey:@"window"];
    v5->windowReference = [v4 decodeIntegerForKey:@"windowReference"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->startDate;
    v5->startDate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    endDate = v5->endDate;
    v5->endDate = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"averageAmount"];
    averageAmount = v5->averageAmount;
    v5->averageAmount = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"spendAmount"];
    spendAmount = v5->spendAmount;
    v5->spendAmount = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"spendingInsightAmount"];
    spendingInsightAmount = v5->spendingInsightAmount;
    v5->spendingInsightAmount = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"spendingInsightPercentageValue"];
    spendingInsightPercentageValue = v5->spendingInsightPercentageValue;
    v5->spendingInsightPercentageValue = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->currencyCode;
    v5->currencyCode = v20;
  }

  return v5;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"%@: '%@'; ", @"type", self->type];
  [v3 appendFormat:@"%@: '%lu'; ", @"detectionType", self->detectionType];
  [v3 appendFormat:@"%@: '%lu'; ", @"direction", self->direction];
  [v3 appendFormat:@"%@: '%lu'; ", @"window", self->window];
  [v3 appendFormat:@"%@: '%lu'; ", @"windowReference", self->windowReference];
  [v3 appendFormat:@"%@: '%@'; ", @"startDate", self->startDate];
  [v3 appendFormat:@"%@: '%@'; ", @"endDate", self->endDate];
  [v3 appendFormat:@"%@: '%@'; ", @"averageAmount", self->averageAmount];
  [v3 appendFormat:@"%@: '%@'; ", @"spendAmount", self->spendAmount];
  [v3 appendFormat:@"%@: '%@'; ", @"spendingInsightAmount", self->spendingInsightAmount];
  [v3 appendFormat:@"%@: '%@'; ", @"spendingInsightPercentageValue", self->spendingInsightPercentageValue];
  [v3 appendFormat:@"%@: '%@'; ", @"currencyCode", self->currencyCode];
  [v3 appendFormat:@">"];

  return v3;
}

@end