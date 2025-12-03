@interface NWKUIAQISegmentModel
- (NWKUIAQISegmentModel)initWithColor:(id)color active:(BOOL)active;
@end

@implementation NWKUIAQISegmentModel

- (NWKUIAQISegmentModel)initWithColor:(id)color active:(BOOL)active
{
  colorCopy = color;
  v11.receiver = self;
  v11.super_class = NWKUIAQISegmentModel;
  v8 = [(NWKUIAQISegmentModel *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_color, color);
    v9->_active = active;
  }

  return v9;
}

@end