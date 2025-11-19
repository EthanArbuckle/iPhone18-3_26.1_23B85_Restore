@interface TabLibraryItemController
- (BOOL)isEqual:(id)a3;
- (BOOL)isSelected;
- (NSArray)accessories;
- (NSString)accessibilityIdentifier;
- (NSString)description;
- (NSString)title;
- (NSUUID)UUID;
- (NSUUID)tabUUID;
- (TabLibraryItemController)initWithConfiguration:(id)a3;
- (TabLibraryItemController)initWithConfiguration:(id)a3 tabGroup:(id)a4 tab:(id)a5;
- (UIDragItem)dragItem;
- (UISwipeActionsConfiguration)swipeActionsConfiguration;
- (id)closeHandler;
- (int64_t)dropIntentForSession:(id)a3;
- (int64_t)hash;
- (unint64_t)dropOperationForSession:(id)a3;
- (void)didSelectItem;
- (void)performDropWithProposal:(id)a3 session:(id)a4 inViewController:(id)a5;
- (void)updateListContentConfiguration:(id)a3;
- (void)willDisplayCell:(id)a3;
@end

@implementation TabLibraryItemController

- (TabLibraryItemController)initWithConfiguration:(id)a3 tabGroup:(id)a4 tab:(id)a5
{
  v7 = a3;
  v8 = sub_21583EA48(v7, a4, a5);

  return v8;
}

- (int64_t)hash
{
  v2 = self;
  v3 = [(TabLibraryItemController *)v2 tab];
  v4 = [(WBTab *)v3 uuid];

  v5 = sub_215A70540();
  v7 = v6;

  v8 = MEMORY[0x216073090](v5, v7);

  return v8;
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

  v6 = TabLibraryItemController.isEqual(_:)(v8);

  sub_21583F14C(v8, &qword_27CA7E2E0);
  return v6 & 1;
}

- (NSString)accessibilityIdentifier
{
  v2 = sub_215A70500();

  return v2;
}

- (UISwipeActionsConfiguration)swipeActionsConfiguration
{
  v2 = self;
  v3 = TabLibraryItemController.swipeActionsConfiguration.getter();

  return v3;
}

- (void)updateListContentConfiguration:(id)a3
{
  v4 = a3;
  v5 = self;
  TabLibraryItemController.updateListContentConfiguration(_:)(v4);
}

- (NSArray)accessories
{
  v2 = self;
  TabLibraryItemController.accessories.getter();

  sub_2159F7DA8(0, &qword_27CA7E310);
  v3 = sub_215A705D0();

  return v3;
}

- (NSUUID)tabUUID
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DF80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = self;
  v7 = [(TabLibraryItemController *)v6 tab];
  v8 = [(WBTab *)v7 uuid];

  sub_215A70540();
  sub_215A6F920();

  v9 = sub_215A6F960();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v5, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    v13 = sub_215A6F940();
    (*(v10 + 8))(v5, v9);
    v12 = v13;
  }

  return v12;
}

- (void)didSelectItem
{
  v2 = self;
  TabLibraryItemController.didSelectItem()();
}

- (BOOL)isSelected
{
  v2 = self;
  v3 = TabLibraryItemController.isSelected.getter();

  return v3 & 1;
}

- (void)willDisplayCell:(id)a3
{
  v4 = a3;
  v5 = self;
  TabLibraryItemController.willDisplay(_:)(v4);
}

- (UIDragItem)dragItem
{
  v2 = self;
  v3 = TabLibraryItemController.dragItem.getter();

  return v3;
}

- (unint64_t)dropOperationForSession:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  TabLibraryItemController.dropOperation(for:)(a3);
  v7 = v6;
  swift_unknownObjectRelease();

  return v7;
}

- (int64_t)dropIntentForSession:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = _sSo24TabLibraryItemControllerC14MobileSafariUIE10dropIntent3forSo020UICollectionViewDropI0VSo13UIDropSession_p_tF_0(a3);
  swift_unknownObjectRelease();

  return v6;
}

- (void)performDropWithProposal:(id)a3 session:(id)a4 inViewController:(id)a5
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = self;
  sub_215A15C28(a4);

  swift_unknownObjectRelease();
}

- (id)closeHandler
{
  v2 = self;
  v3 = TabLibraryItemController.closeHandler.getter();
  v5 = v4;

  if (v3)
  {
    v7[4] = v3;
    v7[5] = v5;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_2159F7E08;
    v7[3] = &block_descriptor_6;
    v3 = _Block_copy(v7);
  }

  return v3;
}

- (NSString)description
{
  v2 = self;
  TabLibraryItemController.description.getter();

  v3 = sub_215A70500();

  return v3;
}

- (TabLibraryItemController)initWithConfiguration:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSUUID)UUID
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DF80);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  v9 = self;
  v10 = [(TabLibraryItemController *)v9 tabUUID];
  if (v10)
  {
    v11 = v10;
    sub_215A6F950();

    v12 = sub_215A6F960();
    (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  }

  else
  {

    v12 = sub_215A6F960();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  }

  sub_215A02FF8(v6, v8);
  sub_215A6F960();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v8, 1, v12);
  v15 = 0;
  if (v14 != 1)
  {
    v16 = sub_215A6F940();
    (*(v13 + 8))(v8, v12);
    v15 = v16;
  }

  return v15;
}

- (NSString)title
{
  v2 = self;
  v3 = [(TabLibraryItemController *)v2 tab];
  v4 = [(WBTab *)v3 title];

  if (v4)
  {
    sub_215A70540();

    v5 = sub_215A70500();
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

@end