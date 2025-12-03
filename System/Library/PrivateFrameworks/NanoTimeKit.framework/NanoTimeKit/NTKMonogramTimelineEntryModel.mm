@interface NTKMonogramTimelineEntryModel
- (id)_newSimpleTextTemplate;
- (id)templateForComplicationFamily:(int64_t)family;
@end

@implementation NTKMonogramTimelineEntryModel

- (id)templateForComplicationFamily:(int64_t)family
{
  _newSimpleTextTemplate = [(NTKMonogramTimelineEntryModel *)self _newSimpleTextTemplate];

  return _newSimpleTextTemplate;
}

- (id)_newSimpleTextTemplate
{
  v2 = MEMORY[0x277CBBB88];
  monogram = [(NTKMonogramTimelineEntryModel *)self monogram];
  v4 = [v2 textProviderWithText:monogram];

  v5 = [MEMORY[0x277CBBA78] templateWithTextProvider:v4];

  return v5;
}

@end