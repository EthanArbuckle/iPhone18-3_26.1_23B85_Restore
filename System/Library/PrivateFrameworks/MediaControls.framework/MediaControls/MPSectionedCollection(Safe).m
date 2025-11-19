@interface MPSectionedCollection(Safe)
- (id)safeItemAtIndexPath:()Safe;
@end

@implementation MPSectionedCollection(Safe)

- (id)safeItemAtIndexPath:()Safe
{
  v4 = a3;
  v5 = [a1 numberOfSections];
  if (v5 <= [v4 section] || (v6 = objc_msgSend(a1, "numberOfItemsInSection:", objc_msgSend(v4, "section")), v6 <= objc_msgSend(v4, "row")))
  {
    v7 = 0;
  }

  else
  {
    v7 = [a1 itemAtIndexPath:v4];
  }

  return v7;
}

@end