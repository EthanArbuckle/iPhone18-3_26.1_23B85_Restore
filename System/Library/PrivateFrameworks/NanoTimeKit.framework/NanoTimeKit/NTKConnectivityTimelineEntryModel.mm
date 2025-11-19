@interface NTKConnectivityTimelineEntryModel
- (id)_newUtilitarianLargeTemplate;
- (id)templateForComplicationFamily:(int64_t)a3;
@end

@implementation NTKConnectivityTimelineEntryModel

- (id)templateForComplicationFamily:(int64_t)a3
{
  if (a3 == 3 || a3 == 104)
  {
    v5 = [(NTKConnectivityTimelineEntryModel *)self _newUtilitarianLargeTemplate];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_newUtilitarianLargeTemplate
{
  v2 = MEMORY[0x277CBBB88];
  v3 = [(NTKConnectivityTimelineEntryModel *)self connectivity];
  v4 = [v2 textProviderWithText:v3];

  v5 = [MEMORY[0x277CBBA80] templateWithTextProvider:v4];
  [v5 finalize];

  return v5;
}

@end