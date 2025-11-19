@interface HUShortcutsTriggerViewAccessoryPickerConfiguration
- (HUShortcutsTriggerViewAccessoryPickerConfiguration)init;
@end

@implementation HUShortcutsTriggerViewAccessoryPickerConfiguration

- (HUShortcutsTriggerViewAccessoryPickerConfiguration)init
{
  v3.receiver = self;
  v3.super_class = HUShortcutsTriggerViewAccessoryPickerConfiguration;
  result = [(HUShortcutsTriggerViewAccessoryPickerConfiguration *)&v3 init];
  if (result)
  {
    result->_accessoryPool = 0;
    *&result->_sectionGroupingStyle = xmmword_20D5BC410;
    result->_servicesOnly = 0;
  }

  return result;
}

@end