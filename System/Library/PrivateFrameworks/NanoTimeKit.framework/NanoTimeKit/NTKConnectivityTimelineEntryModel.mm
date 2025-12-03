@interface NTKConnectivityTimelineEntryModel
- (id)_newUtilitarianLargeTemplate;
- (id)templateForComplicationFamily:(int64_t)family;
@end

@implementation NTKConnectivityTimelineEntryModel

- (id)templateForComplicationFamily:(int64_t)family
{
  if (family == 3 || family == 104)
  {
    _newUtilitarianLargeTemplate = [(NTKConnectivityTimelineEntryModel *)self _newUtilitarianLargeTemplate];
  }

  else
  {
    _newUtilitarianLargeTemplate = 0;
  }

  return _newUtilitarianLargeTemplate;
}

- (id)_newUtilitarianLargeTemplate
{
  v2 = MEMORY[0x277CBBB88];
  connectivity = [(NTKConnectivityTimelineEntryModel *)self connectivity];
  v4 = [v2 textProviderWithText:connectivity];

  v5 = [MEMORY[0x277CBBA80] templateWithTextProvider:v4];
  [v5 finalize];

  return v5;
}

@end