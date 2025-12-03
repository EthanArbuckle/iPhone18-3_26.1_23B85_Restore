@interface CRSFCardSectionUtilities
+ (id)cardSectionWithSFCardSection:(id)section;
@end

@implementation CRSFCardSectionUtilities

+ (id)cardSectionWithSFCardSection:(id)section
{
  sectionCopy = section;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || [sectionCopy conformsToProtocol:&unk_2855FC7D8])
  {
    v4 = sectionCopy;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end