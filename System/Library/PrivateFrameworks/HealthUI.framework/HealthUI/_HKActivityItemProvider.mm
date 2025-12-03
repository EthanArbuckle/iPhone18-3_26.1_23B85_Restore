@interface _HKActivityItemProvider
- (id)item;
@end

@implementation _HKActivityItemProvider

- (id)item
{
  activityType = [(UIActivityItemProvider *)self activityType];
  if ([activityType isEqualToString:*MEMORY[0x1E69CDAD8]])
  {

LABEL_4:
    v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    placeholderItem = [v6 localizedStringForKey:@"OD_SHARE_TEMPLATE_SOCIAL" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

    goto LABEL_6;
  }

  activityType2 = [(UIActivityItemProvider *)self activityType];
  v5 = [activityType2 isEqualToString:*MEMORY[0x1E69CDAC0]];

  if (v5)
  {
    goto LABEL_4;
  }

  placeholderItem = [(UIActivityItemProvider *)self placeholderItem];
LABEL_6:

  return placeholderItem;
}

@end