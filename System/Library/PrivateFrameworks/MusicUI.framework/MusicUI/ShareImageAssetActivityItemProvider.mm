@interface ShareImageAssetActivityItemProvider
- (id)activityViewController:(id)controller dataTypeIdentifierForActivityType:(id)type;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewControllerLinkMetadata:(id)metadata;
- (id)activityViewControllerOperation:(id)operation;
- (id)activityViewControllerPlaceholderItem:(id)item;
@end

@implementation ShareImageAssetActivityItemProvider

- (id)activityViewControllerLinkMetadata:(id)metadata
{
  v3 = sub_216945A30();

  return v3;
}

- (id)activityViewControllerPlaceholderItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  sub_216945A94(v8);

  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v6 = sub_21700F7B4();
  __swift_destroy_boxed_opaque_existential_1Tm(v8);

  return v6;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  sub_216945BB0(v12);
  v4 = v13;
  if (v13)
  {
    v5 = __swift_project_boxed_opaque_existential_1(v12, v13);
    v6 = *(v4 - 8);
    v7 = MEMORY[0x28223BE20](v5);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = sub_21700F7B4();
    (*(v6 + 8))(v9, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)activityViewController:(id)controller dataTypeIdentifierForActivityType:(id)type
{
  controllerCopy = controller;
  typeCopy = type;
  selfCopy = self;
  sub_216945D60();

  v9 = sub_21700E4D4();

  return v9;
}

- (id)activityViewControllerOperation:(id)operation
{
  operationCopy = operation;
  selfCopy = self;
  v7 = sub_216945EB8(operation);

  return v7;
}

@end