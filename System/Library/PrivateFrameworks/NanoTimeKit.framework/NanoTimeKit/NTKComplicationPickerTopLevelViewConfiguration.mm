@interface NTKComplicationPickerTopLevelViewConfiguration
- (NTKComplicationPickerTopLevelViewConfiguration)initWithTopLevelListProvider:(id)provider;
@end

@implementation NTKComplicationPickerTopLevelViewConfiguration

- (NTKComplicationPickerTopLevelViewConfiguration)initWithTopLevelListProvider:(id)provider
{
  v4.receiver = self;
  v4.super_class = NTKComplicationPickerTopLevelViewConfiguration;
  return [(NTKComplicationPickerBaseViewConfiguration *)&v4 initWithListProvider:provider];
}

@end