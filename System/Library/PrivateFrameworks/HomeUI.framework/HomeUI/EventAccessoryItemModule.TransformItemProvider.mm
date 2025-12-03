@interface EventAccessoryItemModule.TransformItemProvider
- (_TtCC6HomeUI24EventAccessoryItemModuleP33_731A90F5CE0D8EE558856A09C091B34921TransformItemProvider)initWithSourceProvider:(id)provider;
- (_TtCC6HomeUI24EventAccessoryItemModuleP33_731A90F5CE0D8EE558856A09C091B34921TransformItemProvider)initWithSourceProvider:(id)provider multipleTransformationBlock:(id)block;
- (id)_subclass_transformItem:(id)item;
@end

@implementation EventAccessoryItemModule.TransformItemProvider

- (id)_subclass_transformItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  v6 = sub_20D097C88(itemCopy);

  if (v6)
  {
    sub_20CECF940(0, &qword_281120AC0);
    sub_20CEF7F74(&qword_281120AB0, &qword_281120AC0);
    v7 = sub_20D567CD8();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (_TtCC6HomeUI24EventAccessoryItemModuleP33_731A90F5CE0D8EE558856A09C091B34921TransformItemProvider)initWithSourceProvider:(id)provider multipleTransformationBlock:(id)block
{
  v5 = _Block_copy(block);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  return sub_20D09827C(provider, sub_20D099A30, v6);
}

- (_TtCC6HomeUI24EventAccessoryItemModuleP33_731A90F5CE0D8EE558856A09C091B34921TransformItemProvider)initWithSourceProvider:(id)provider
{
  providerCopy = provider;
  v4 = sub_20D0995CC(providerCopy);

  return v4;
}

@end