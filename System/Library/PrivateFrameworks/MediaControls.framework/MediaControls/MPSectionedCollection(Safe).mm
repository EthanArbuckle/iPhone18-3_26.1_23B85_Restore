@interface MPSectionedCollection(Safe)
- (id)safeItemAtIndexPath:()Safe;
@end

@implementation MPSectionedCollection(Safe)

- (id)safeItemAtIndexPath:()Safe
{
  v4 = a3;
  numberOfSections = [self numberOfSections];
  if (numberOfSections <= [v4 section] || (v6 = objc_msgSend(self, "numberOfItemsInSection:", objc_msgSend(v4, "section")), v6 <= objc_msgSend(v4, "row")))
  {
    v7 = 0;
  }

  else
  {
    v7 = [self itemAtIndexPath:v4];
  }

  return v7;
}

@end