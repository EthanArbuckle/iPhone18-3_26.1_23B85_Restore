@interface NTKComplicationMetrics
+ (id)defaultMetricsForFamily:(int64_t)family device:(id)device;
+ (id)metricsWithSize:(CGSize)size safeAreaInsets:(UIEdgeInsets)insets cornerRadius:(double)radius opaque:(BOOL)opaque scaleFactor:(double)factor widgetGroupMetrics:(id)metrics;
- (BOOL)isEqual:(id)equal;
- (CGSize)size;
- (NTKComplicationMetrics)init;
- (NTKComplicationMetrics)initWithCoder:(id)coder;
- (NTKComplicationMetrics)initWithComplicationMetrics:(id)metrics;
- (UIEdgeInsets)safeAreaInsets;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NTKComplicationMetrics

- (NTKComplicationMetrics)init
{
  v7.receiver = self;
  v7.super_class = NTKComplicationMetrics;
  v2 = [(NTKComplicationMetrics *)&v7 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 8) = *MEMORY[0x277CBF3A8];
    *(v2 + 3) = 0;
    v4 = *(MEMORY[0x277D768C8] + 16);
    *(v2 + 2) = *MEMORY[0x277D768C8];
    *(v2 + 3) = v4;
    *(v2 + 32) = 0;
    v5 = *(v2 + 10);
    *(v2 + 9) = 0x3FF0000000000000;
    *(v2 + 10) = 0;
  }

  return v3;
}

- (NTKComplicationMetrics)initWithComplicationMetrics:(id)metrics
{
  metricsCopy = metrics;
  v11.receiver = self;
  v11.super_class = NTKComplicationMetrics;
  v5 = [(NTKComplicationMetrics *)&v11 init];
  v6 = v5;
  if (v5)
  {
    *(v5 + 8) = *(metricsCopy + 8);
    *(v5 + 3) = *(metricsCopy + 3);
    v7 = *(metricsCopy + 3);
    *(v5 + 2) = *(metricsCopy + 2);
    *(v5 + 3) = v7;
    v5[64] = metricsCopy[64];
    v5[65] = metricsCopy[65];
    *(v5 + 9) = *(metricsCopy + 9);
    v8 = [*(metricsCopy + 10) copy];
    widgetGroupMetrics = v6->_widgetGroupMetrics;
    v6->_widgetGroupMetrics = v8;
  }

  return v6;
}

+ (id)metricsWithSize:(CGSize)size safeAreaInsets:(UIEdgeInsets)insets cornerRadius:(double)radius opaque:(BOOL)opaque scaleFactor:(double)factor widgetGroupMetrics:(id)metrics
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  height = size.height;
  width = size.width;
  metricsCopy = metrics;
  v20 = objc_alloc_init(self);
  v21 = v20;
  if (v20)
  {
    *(v20 + 1) = width;
    *(v20 + 2) = height;
    *(v20 + 5) = left;
    *(v20 + 6) = bottom;
    *(v20 + 7) = right;
    *(v20 + 3) = radius;
    *(v20 + 4) = top;
    *(v20 + 64) = opaque;
    *(v20 + 9) = factor;
    objc_storeStrong(v20 + 10, metrics);
  }

  return v21;
}

+ (id)defaultMetricsForFamily:(int64_t)family device:(id)device
{
  deviceCopy = device;
  v6 = objc_opt_new();
  v7 = *(MEMORY[0x277D768C8] + 16);
  *(v6 + 32) = *MEMORY[0x277D768C8];
  *(v6 + 48) = v7;
  *(v6 + 64) = 256;
  *(v6 + 24) = 0;
  v8 = *(v6 + 80);
  *(v6 + 72) = 0x3FF0000000000000;
  *(v6 + 80) = 0;

  if (family > 8)
  {
    if ((family - 9) < 2)
    {
      CDCircularMediumComplicationDiameter();
    }

    if (family == 11)
    {
      CDGraphicLargeRectangularComplicationInset();
    }

    if (family == 12)
    {
      CDCircularMediumComplicationDiameter();
    }
  }

  else
  {
    if ((family - 2) < 2 || family == 6)
    {
      v9 = [MEMORY[0x277CBBAF8] metricsWithDevice:deviceCopy identitySizeClass:2];
      [v9 scaledValue:11.0];
      *(v6 + 8) = v10;
      *(v6 + 16) = v10;

      goto LABEL_14;
    }

    if (family == 8)
    {
      CDCircularSmallComplicationDiameter();
    }
  }

  *(v6 + 8) = *MEMORY[0x277CBF3A8];
LABEL_14:

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __34__NTKComplicationMetrics_isEqual___block_invoke;
  v38[3] = &unk_27877EAF0;
  v6 = equalCopy;
  v39 = v6;
  v7 = [v5 appendCGSize:v38 counterpart:{self->_size.width, self->_size.height}];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __34__NTKComplicationMetrics_isEqual___block_invoke_2;
  v36[3] = &unk_27877EB18;
  v36[4] = self;
  v8 = v6;
  v37 = v8;
  v9 = [v5 appendEqualsBlocks:{v36, 0}];
  cornerRadius = self->_cornerRadius;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __34__NTKComplicationMetrics_isEqual___block_invoke_3;
  v34[3] = &unk_27877EB40;
  v11 = v8;
  v35 = v11;
  v12 = [v5 appendCGFloat:v34 counterpart:cornerRadius];
  opaque = self->_opaque;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __34__NTKComplicationMetrics_isEqual___block_invoke_4;
  v32[3] = &unk_27877EB68;
  v14 = v11;
  v33 = v14;
  v15 = [v5 appendBool:opaque counterpart:v32];
  tintable = self->_tintable;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __34__NTKComplicationMetrics_isEqual___block_invoke_5;
  v30[3] = &unk_27877EB68;
  v17 = v14;
  v31 = v17;
  v18 = [v5 appendBool:tintable counterpart:v30];
  scaleFactor = self->_scaleFactor;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __34__NTKComplicationMetrics_isEqual___block_invoke_6;
  v28[3] = &unk_27877EB40;
  v20 = v17;
  v29 = v20;
  v21 = [v5 appendCGFloat:v28 counterpart:scaleFactor];
  widgetGroupMetrics = self->_widgetGroupMetrics;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __34__NTKComplicationMetrics_isEqual___block_invoke_7;
  v26[3] = &unk_27877EB90;
  v27 = v20;
  v23 = v20;
  v24 = [v5 appendObject:widgetGroupMetrics counterpart:v26];
  LOBYTE(widgetGroupMetrics) = [v5 isEqual];

  return widgetGroupMetrics;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendCGSize:{self->_size.width, self->_size.height}];
  v5 = [builder appendCGFloat:self->_safeAreaInsets.top];
  v6 = [builder appendCGFloat:self->_safeAreaInsets.left];
  v7 = [builder appendCGFloat:self->_safeAreaInsets.right];
  v8 = [builder appendCGFloat:self->_safeAreaInsets.bottom];
  v9 = [builder appendCGFloat:self->_cornerRadius];
  v10 = [builder appendBool:self->_opaque];
  v11 = [builder appendBool:self->_tintable];
  v12 = [builder appendCGFloat:self->_scaleFactor];
  v13 = [builder appendObject:self->_widgetGroupMetrics];
  v14 = [builder hash];

  return v14;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [NTKMutableComplicationMetrics alloc];

  return [(NTKComplicationMetrics *)v4 initWithComplicationMetrics:self];
}

- (NTKComplicationMetrics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(NTKComplicationMetrics *)self init];
  if (v5)
  {
    [coderCopy decodeCGSizeForKey:@"size"];
    v5->_size.width = v6;
    v5->_size.height = v7;
    [coderCopy decodeDoubleForKey:@"cornerRadius"];
    v5->_cornerRadius = v8;
    [coderCopy decodeUIEdgeInsetsForKey:@"safeAreaInsets"];
    v5->_safeAreaInsets.top = v9;
    v5->_safeAreaInsets.left = v10;
    v5->_safeAreaInsets.bottom = v11;
    v5->_safeAreaInsets.right = v12;
    v5->_opaque = [coderCopy decodeBoolForKey:@"opaque"];
    v5->_tintable = [coderCopy decodeBoolForKey:@"tintable"];
    [coderCopy decodeDoubleForKey:@"scaleFactor"];
    v5->_scaleFactor = v13;
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"widgetGroupMetrics"];
    widgetGroupMetrics = v5->_widgetGroupMetrics;
    v5->_widgetGroupMetrics = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  width = self->_size.width;
  height = self->_size.height;
  coderCopy = coder;
  [coderCopy encodeCGSize:@"size" forKey:{width, height}];
  [coderCopy encodeDouble:@"cornerRadius" forKey:self->_cornerRadius];
  [coderCopy encodeUIEdgeInsets:@"safeAreaInsets" forKey:{self->_safeAreaInsets.top, self->_safeAreaInsets.left, self->_safeAreaInsets.bottom, self->_safeAreaInsets.right}];
  [coderCopy encodeBool:self->_opaque forKey:@"opaque"];
  [coderCopy encodeBool:self->_tintable forKey:@"tintable"];
  [coderCopy encodeDouble:@"scaleFactor" forKey:self->_scaleFactor];
  [coderCopy encodeObject:self->_widgetGroupMetrics forKey:@"widgetGroupMetrics"];
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
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