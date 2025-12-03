@interface PARSyncCard
+ (id)cardWithTitle:(id)title sections:(id)sections;
@end

@implementation PARSyncCard

+ (id)cardWithTitle:(id)title sections:(id)sections
{
  sectionsCopy = sections;
  titleCopy = title;
  v7 = objc_alloc_init(PARSyncCard);
  [(PARSyncCard *)v7 setTitle:titleCopy];

  [(PARSyncCard *)v7 setCardSections:sectionsCopy];

  return v7;
}

@end