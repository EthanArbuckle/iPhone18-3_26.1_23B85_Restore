@interface NTKMonogramTimelineEntryModel
- (id)_newSimpleTextTemplate;
- (id)templateForComplicationFamily:(int64_t)a3;
@end

@implementation NTKMonogramTimelineEntryModel

- (id)templateForComplicationFamily:(int64_t)a3
{
  v3 = [(NTKMonogramTimelineEntryModel *)self _newSimpleTextTemplate];

  return v3;
}

- (id)_newSimpleTextTemplate
{
  v2 = MEMORY[0x277CBBB88];
  v3 = [(NTKMonogramTimelineEntryModel *)self monogram];
  v4 = [v2 textProviderWithText:v3];

  v5 = [MEMORY[0x277CBBA78] templateWithTextProvider:v4];

  return v5;
}

@end