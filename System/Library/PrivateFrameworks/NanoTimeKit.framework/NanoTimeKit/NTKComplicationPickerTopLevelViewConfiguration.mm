@interface NTKComplicationPickerTopLevelViewConfiguration
- (NTKComplicationPickerTopLevelViewConfiguration)initWithTopLevelListProvider:(id)a3;
@end

@implementation NTKComplicationPickerTopLevelViewConfiguration

- (NTKComplicationPickerTopLevelViewConfiguration)initWithTopLevelListProvider:(id)a3
{
  v4.receiver = self;
  v4.super_class = NTKComplicationPickerTopLevelViewConfiguration;
  return [(NTKComplicationPickerBaseViewConfiguration *)&v4 initWithListProvider:a3];
}

@end