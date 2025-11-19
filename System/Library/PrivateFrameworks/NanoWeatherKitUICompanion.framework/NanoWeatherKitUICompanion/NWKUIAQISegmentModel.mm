@interface NWKUIAQISegmentModel
- (NWKUIAQISegmentModel)initWithColor:(id)a3 active:(BOOL)a4;
@end

@implementation NWKUIAQISegmentModel

- (NWKUIAQISegmentModel)initWithColor:(id)a3 active:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = NWKUIAQISegmentModel;
  v8 = [(NWKUIAQISegmentModel *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_color, a3);
    v9->_active = a4;
  }

  return v9;
}

@end