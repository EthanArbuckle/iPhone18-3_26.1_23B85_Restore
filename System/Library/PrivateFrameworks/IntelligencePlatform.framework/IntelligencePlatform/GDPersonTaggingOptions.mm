@interface GDPersonTaggingOptions
- (GDPersonTaggingOptions)initWithTagThresholds:(id)thresholds;
@end

@implementation GDPersonTaggingOptions

- (GDPersonTaggingOptions)initWithTagThresholds:(id)thresholds
{
  thresholdsCopy = thresholds;
  v9.receiver = self;
  v9.super_class = GDPersonTaggingOptions;
  v5 = [(GDPersonTaggingOptions *)&v9 init];
  if (v5)
  {
    v6 = [[GDPersonEntityTaggingOptionsInner alloc] initWithTagNameThresholds:thresholdsCopy];
    inner = v5->inner;
    v5->inner = v6;
  }

  return v5;
}

@end