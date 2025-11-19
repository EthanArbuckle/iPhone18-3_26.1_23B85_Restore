@interface HUAccessoryEventPickerViewController
- (HUAccessoryEventPickerViewController)initWithEventBuilderItem:(id)a3 triggerBuilder:(id)a4 mode:(unint64_t)a5 source:(unint64_t)a6 delegate:(id)a7;
- (HUAccessoryEventPickerViewController)initWithItemManager:(id)a3 collectionViewLayout:(id)a4;
- (HUTriggerEditorDelegate)delegate;
- (id)buildItemModuleControllerForModule:(id)a3;
- (id)filter;
- (id)initUsingCompositionalLayoutWithItemManager:(id)a3;
- (id)listContentConfigurationForSupplementaryElementOfKind:(id)a3 atIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)nextWithSender:(id)a3;
- (void)setFilter:(id)a3;
- (void)validateNextButton;
- (void)viewDidLoad;
@end

@implementation HUAccessoryEventPickerViewController

- (HUTriggerEditorDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (id)filter
{
  v2 = (self + OBJC_IVAR___HUAccessoryEventPickerViewController_filter);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20CF7F620;
    aBlock[3] = &block_descriptor_39_1;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setFilter:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_20CF87988;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___HUAccessoryEventPickerViewController_filter);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  v8 = self;
  sub_20CEC8164(v7);
}

- (HUAccessoryEventPickerViewController)initWithEventBuilderItem:(id)a3 triggerBuilder:(id)a4 mode:(unint64_t)a5 source:(unint64_t)a6 delegate:(id)a7
{
  v10 = a3;
  v11 = a4;
  swift_unknownObjectRetain();
  return AccessoryEventPickerViewController.init(eventBuilderItem:triggerBuilder:mode:source:delegate:)(v10, v11, a5, a6);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_20D111560();
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = sub_20D5638C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563878();
  v10 = a3;
  v11 = self;
  v12 = sub_20D563868();
  v13 = type metadata accessor for AccessoryEventPickerViewController();
  v14.receiver = v11;
  v14.super_class = v13;
  [(HUItemCollectionViewController *)&v14 collectionView:v10 didSelectItemAtIndexPath:v12];

  sub_20D111BC4();
  (*(v7 + 8))(v9, v6);
}

- (id)buildItemModuleControllerForModule:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_20D1129E0();

  return v6;
}

- (void)validateNextButton
{
  v2 = self;
  sub_20D111BC4();
}

- (void)nextWithSender:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_20D568628();
  swift_unknownObjectRelease();
  sub_20D111F9C();

  __swift_destroy_boxed_opaque_existential_1(&v5);
}

- (id)listContentConfigurationForSupplementaryElementOfKind:(id)a3 atIndexPath:(id)a4
{
  v6 = sub_20D5638C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20D567838();
  v12 = v11;
  sub_20D563878();
  if (v10 == sub_20D567838() && v12 == v13)
  {
    v18 = a3;
    v19 = self;
  }

  else
  {
    v15 = sub_20D568BF8();
    v16 = a3;
    v17 = self;

    if ((v15 & 1) == 0)
    {
      v21 = sub_20D563868();
      v22 = type metadata accessor for AccessoryEventPickerViewController();
      v24.receiver = v17;
      v24.super_class = v22;
      v20 = [(HUItemCollectionViewController *)&v24 listContentConfigurationForSupplementaryElementOfKind:v16 atIndexPath:v21];

      self = v16;
      goto LABEL_12;
    }
  }

  if (qword_27C81A1D0 != -1)
  {
    swift_once();
  }

  v20 = qword_27C81C340;
LABEL_12:

  (*(v7 + 8))(v9, v6);

  return v20;
}

- (HUAccessoryEventPickerViewController)initWithItemManager:(id)a3 collectionViewLayout:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)initUsingCompositionalLayoutWithItemManager:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end