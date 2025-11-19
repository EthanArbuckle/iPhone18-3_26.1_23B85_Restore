@interface GDPersonTaggingOptions
- (GDPersonTaggingOptions)initWithTagThresholds:(id)a3;
@end

@implementation GDPersonTaggingOptions

- (GDPersonTaggingOptions)initWithTagThresholds:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = GDPersonTaggingOptions;
  v5 = [(GDPersonTaggingOptions *)&v9 init];
  if (v5)
  {
    v6 = [[GDPersonEntityTaggingOptionsInner alloc] initWithTagNameThresholds:v4];
    inner = v5->inner;
    v5->inner = v6;
  }

  return v5;
}

@end