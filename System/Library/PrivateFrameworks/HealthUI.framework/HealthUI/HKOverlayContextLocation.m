@interface HKOverlayContextLocation
- (BOOL)isEqual:(id)a3;
- (HKOverlayContextLocation)initWithContainerIndex:(int64_t)a3 sectionIndex:(int64_t)a4 itemIndex:(int64_t)a5;
@end

@implementation HKOverlayContextLocation

- (HKOverlayContextLocation)initWithContainerIndex:(int64_t)a3 sectionIndex:(int64_t)a4 itemIndex:(int64_t)a5
{
  v9.receiver = self;
  v9.super_class = HKOverlayContextLocation;
  result = [(HKOverlayContextLocation *)&v9 init];
  if (result)
  {
    result->_containerIndex = a3;
    result->_sectionIndex = a4;
    result->_itemIndex = a5;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 containerIndex];
    if (v6 == -[HKOverlayContextLocation containerIndex](self, "containerIndex") && (v7 = [v5 sectionIndex], v7 == -[HKOverlayContextLocation sectionIndex](self, "sectionIndex")))
    {
      v8 = [v5 itemIndex];
      v9 = v8 == [(HKOverlayContextLocation *)self itemIndex];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end