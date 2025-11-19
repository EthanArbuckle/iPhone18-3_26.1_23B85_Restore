@interface NewTabGroupLibraryItemController
- (BOOL)isEqual:(id)a3;
- (NSString)accessibilityIdentifier;
- (NewTabGroupLibraryItemController)initWithConfiguration:(id)a3;
- (int64_t)hash;
- (void)didSelectItem;
- (void)updateListContentConfiguration:(id)a3;
@end

@implementation NewTabGroupLibraryItemController

- (NSString)accessibilityIdentifier
{
  v2 = sub_215A70500();

  return v2;
}

- (void)updateListContentConfiguration:(id)a3
{
  v4 = a3;
  v5 = self;
  _sSo32NewTabGroupLibraryItemControllerC14MobileSafariUIE30updateListContentConfigurationyySo06UIListlM0CF_0(v4);
}

- (void)didSelectItem
{
  v4 = self;
  v2 = [(LibraryItemController *)v4 configuration];
  v3 = [(LibraryConfiguration *)v2 tabGroupProvider];

  if (v3)
  {
    [(TabGroupProvider *)v3 createNewTabGroup];
    swift_unknownObjectRelease();
  }
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_215A70B70();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = _sSo32NewTabGroupLibraryItemControllerC14MobileSafariUIE7isEqualySbypSgF_0(v8);

  sub_21583FDA0(v8);
  return v6;
}

- (int64_t)hash
{
  v2 = self;
  v3 = [(NewTabGroupLibraryItemController *)v2 accessibilityIdentifier];
  v4 = sub_215A70540();
  v6 = v5;

  v7 = MEMORY[0x216073090](v4, v6);

  return v7;
}

- (NewTabGroupLibraryItemController)initWithConfiguration:(id)a3
{
  v4.receiver = self;
  v4.super_class = NewTabGroupLibraryItemController;
  return [(LibraryItemController *)&v4 initWithConfiguration:a3];
}

@end