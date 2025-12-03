@interface AvailableAppsCell
- (_TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation AvailableAppsCell

- (_TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = sub_24BAAA01C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_24BA3D3E4(style, identifier, v6);
}

@end