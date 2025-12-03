@interface HKOverlayContextLocation
- (BOOL)isEqual:(id)equal;
- (HKOverlayContextLocation)initWithContainerIndex:(int64_t)index sectionIndex:(int64_t)sectionIndex itemIndex:(int64_t)itemIndex;
@end

@implementation HKOverlayContextLocation

- (HKOverlayContextLocation)initWithContainerIndex:(int64_t)index sectionIndex:(int64_t)sectionIndex itemIndex:(int64_t)itemIndex
{
  v9.receiver = self;
  v9.super_class = HKOverlayContextLocation;
  result = [(HKOverlayContextLocation *)&v9 init];
  if (result)
  {
    result->_containerIndex = index;
    result->_sectionIndex = sectionIndex;
    result->_itemIndex = itemIndex;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    containerIndex = [v5 containerIndex];
    if (containerIndex == -[HKOverlayContextLocation containerIndex](self, "containerIndex") && (v7 = [v5 sectionIndex], v7 == -[HKOverlayContextLocation sectionIndex](self, "sectionIndex")))
    {
      itemIndex = [v5 itemIndex];
      v9 = itemIndex == [(HKOverlayContextLocation *)self itemIndex];
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