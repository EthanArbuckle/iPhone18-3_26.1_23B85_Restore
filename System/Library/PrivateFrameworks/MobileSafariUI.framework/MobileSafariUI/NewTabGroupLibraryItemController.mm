@interface NewTabGroupLibraryItemController
- (BOOL)isEqual:(id)equal;
- (NSString)accessibilityIdentifier;
- (NewTabGroupLibraryItemController)initWithConfiguration:(id)configuration;
- (int64_t)hash;
- (void)didSelectItem;
- (void)updateListContentConfiguration:(id)configuration;
@end

@implementation NewTabGroupLibraryItemController

- (NSString)accessibilityIdentifier
{
  v2 = sub_215A70500();

  return v2;
}

- (void)updateListContentConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  _sSo32NewTabGroupLibraryItemControllerC14MobileSafariUIE30updateListContentConfigurationyySo06UIListlM0CF_0(configurationCopy);
}

- (void)didSelectItem
{
  selfCopy = self;
  configuration = [(LibraryItemController *)selfCopy configuration];
  tabGroupProvider = [(LibraryConfiguration *)configuration tabGroupProvider];

  if (tabGroupProvider)
  {
    [(TabGroupProvider *)tabGroupProvider createNewTabGroup];
    swift_unknownObjectRelease();
  }
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_215A70B70();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = _sSo32NewTabGroupLibraryItemControllerC14MobileSafariUIE7isEqualySbypSgF_0(v8);

  sub_21583FDA0(v8);
  return v6;
}

- (int64_t)hash
{
  selfCopy = self;
  accessibilityIdentifier = [(NewTabGroupLibraryItemController *)selfCopy accessibilityIdentifier];
  v4 = sub_215A70540();
  v6 = v5;

  v7 = MEMORY[0x216073090](v4, v6);

  return v7;
}

- (NewTabGroupLibraryItemController)initWithConfiguration:(id)configuration
{
  v4.receiver = self;
  v4.super_class = NewTabGroupLibraryItemController;
  return [(LibraryItemController *)&v4 initWithConfiguration:configuration];
}

@end