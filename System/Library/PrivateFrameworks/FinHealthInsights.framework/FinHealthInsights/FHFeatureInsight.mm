@interface FHFeatureInsight
- (FHFeatureInsight)initWithCoder:(id)coder;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FHFeatureInsight

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  type = [(FHFeatureInsight *)self type];
  [coderCopy encodeObject:type forKey:@"type"];

  [coderCopy encodeInteger:-[FHFeatureInsight detectionType](self forKey:{"detectionType"), @"detectionType"}];
  [coderCopy encodeInteger:-[FHFeatureInsight direction](self forKey:{"direction"), @"direction"}];
  [coderCopy encodeInteger:-[FHFeatureInsight window](self forKey:{"window"), @"window"}];
  [coderCopy encodeInteger:-[FHFeatureInsight windowReference](self forKey:{"windowReference"), @"windowReference"}];
  startDate = [(FHFeatureInsight *)self startDate];
  [coderCopy encodeObject:startDate forKey:@"startDate"];

  endDate = [(FHFeatureInsight *)self endDate];
  [coderCopy encodeObject:endDate forKey:@"endDate"];

  averageAmount = [(FHFeatureInsight *)self averageAmount];
  [coderCopy encodeObject:averageAmount forKey:@"averageAmount"];

  spendAmount = [(FHFeatureInsight *)self spendAmount];
  [coderCopy encodeObject:spendAmount forKey:@"spendAmount"];

  spendingInsightAmount = [(FHFeatureInsight *)self spendingInsightAmount];
  [coderCopy encodeObject:spendingInsightAmount forKey:@"spendingInsightAmount"];

  spendingInsightPercentageValue = [(FHFeatureInsight *)self spendingInsightPercentageValue];
  [coderCopy encodeObject:spendingInsightPercentageValue forKey:@"spendingInsightPercentageValue"];

  currencyCode = [(FHFeatureInsight *)self currencyCode];
  [coderCopy encodeObject:currencyCode forKey:@"currencyCode"];
}

- (FHFeatureInsight)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = FHFeatureInsight;
  v5 = [(FHFeatureInsight *)&v23 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    type = v5->type;
    v5->type = v6;

    v5->detectionType = [coderCopy decodeIntegerForKey:@"detectionType"];
    v5->direction = [coderCopy decodeIntegerForKey:@"direction"];
    v5->window = [coderCopy decodeIntegerForKey:@"window"];
    v5->windowReference = [coderCopy decodeIntegerForKey:@"windowReference"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->startDate;
    v5->startDate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    endDate = v5->endDate;
    v5->endDate = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"averageAmount"];
    averageAmount = v5->averageAmount;
    v5->averageAmount = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"spendAmount"];
    spendAmount = v5->spendAmount;
    v5->spendAmount = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"spendingInsightAmount"];
    spendingInsightAmount = v5->spendingInsightAmount;
    v5->spendingInsightAmount = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"spendingInsightPercentageValue"];
    spendingInsightPercentageValue = v5->spendingInsightPercentageValue;
    v5->spendingInsightPercentageValue = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
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