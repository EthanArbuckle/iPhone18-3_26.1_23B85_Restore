@interface NTKComplicationWidgetGroupMetrics
+ (NTKComplicationWidgetGroupMetrics)metricsWithSafeAreaInsets:(UIEdgeInsets)insets nestedContentMetrics:(id)metrics;
- (BOOL)isEqual:(id)equal;
- (NTKComplicationWidgetGroupMetrics)initWithCoder:(id)coder;
- (UIEdgeInsets)safeAreaInsets;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NTKComplicationWidgetGroupMetrics

+ (NTKComplicationWidgetGroupMetrics)metricsWithSafeAreaInsets:(UIEdgeInsets)insets nestedContentMetrics:(id)metrics
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  metricsCopy = metrics;
  v11 = objc_alloc_init(self);
  v12 = v11;
  if (v11)
  {
    *(v11 + 2) = top;
    *(v11 + 3) = left;
    *(v11 + 4) = bottom;
    *(v11 + 5) = right;
    objc_storeStrong(v11 + 1, metrics);
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __45__NTKComplicationWidgetGroupMetrics_isEqual___block_invoke;
  v14[3] = &unk_27877EB18;
  v14[4] = self;
  v6 = equalCopy;
  v15 = v6;
  v7 = [v5 appendEqualsBlocks:{v14, 0}];
  nestedContentMetrics = self->_nestedContentMetrics;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __45__NTKComplicationWidgetGroupMetrics_isEqual___block_invoke_2;
  v12[3] = &unk_2787844A8;
  v13 = v6;
  v9 = v6;
  v10 = [v5 appendObject:nestedContentMetrics counterpart:v12];
  LOBYTE(nestedContentMetrics) = [v5 isEqual];

  return nestedContentMetrics;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendCGFloat:self->_safeAreaInsets.top];
  v5 = [builder appendCGFloat:self->_safeAreaInsets.left];
  v6 = [builder appendCGFloat:self->_safeAreaInsets.right];
  v7 = [builder appendCGFloat:self->_safeAreaInsets.bottom];
  v8 = [builder appendObject:self->_nestedContentMetrics];
  v9 = [builder hash];

  return v9;
}

- (NTKComplicationWidgetGroupMetrics)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeUIEdgeInsetsForKey:@"safeAreaInsets"];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nestedContentMetrics"];

  v14 = [NTKComplicationWidgetGroupMetrics metricsWithSafeAreaInsets:v13 nestedContentMetrics:v6, v8, v10, v12];

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  top = self->_safeAreaInsets.top;
  left = self->_safeAreaInsets.left;
  bottom = self->_safeAreaInsets.bottom;
  right = self->_safeAreaInsets.right;
  coderCopy = coder;
  [coderCopy encodeUIEdgeInsets:@"safeAreaInsets" forKey:{top, left, bottom, right}];
  [coderCopy encodeObject:self->_nestedContentMetrics forKey:@"nestedContentMetrics"];
}

- (UIEdgeInsets)safeAreaInsets
{
  top = self->_safeAreaInsets.top;
  left = self->_safeAreaInsets.left;
  bottom = self->_safeAreaInsets.bottom;
  right = self->_safeAreaInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end