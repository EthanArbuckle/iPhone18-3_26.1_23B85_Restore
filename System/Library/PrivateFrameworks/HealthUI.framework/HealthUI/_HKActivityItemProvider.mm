@interface _HKActivityItemProvider
- (id)item;
@end

@implementation _HKActivityItemProvider

- (id)item
{
  v3 = [(UIActivityItemProvider *)self activityType];
  if ([v3 isEqualToString:*MEMORY[0x1E69CDAD8]])
  {

LABEL_4:
    v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v7 = [v6 localizedStringForKey:@"OD_SHARE_TEMPLATE_SOCIAL" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

    goto LABEL_6;
  }

  v4 = [(UIActivityItemProvider *)self activityType];
  v5 = [v4 isEqualToString:*MEMORY[0x1E69CDAC0]];

  if (v5)
  {
    goto LABEL_4;
  }

  v7 = [(UIActivityItemProvider *)self placeholderItem];
LABEL_6:

  return v7;
}

@end