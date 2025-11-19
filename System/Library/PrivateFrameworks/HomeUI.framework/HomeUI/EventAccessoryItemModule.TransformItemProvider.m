@interface EventAccessoryItemModule.TransformItemProvider
- (_TtCC6HomeUI24EventAccessoryItemModuleP33_731A90F5CE0D8EE558856A09C091B34921TransformItemProvider)initWithSourceProvider:(id)a3;
- (_TtCC6HomeUI24EventAccessoryItemModuleP33_731A90F5CE0D8EE558856A09C091B34921TransformItemProvider)initWithSourceProvider:(id)a3 multipleTransformationBlock:(id)a4;
- (id)_subclass_transformItem:(id)a3;
@end

@implementation EventAccessoryItemModule.TransformItemProvider

- (id)_subclass_transformItem:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_20D097C88(v4);

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

- (_TtCC6HomeUI24EventAccessoryItemModuleP33_731A90F5CE0D8EE558856A09C091B34921TransformItemProvider)initWithSourceProvider:(id)a3 multipleTransformationBlock:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  return sub_20D09827C(a3, sub_20D099A30, v6);
}

- (_TtCC6HomeUI24EventAccessoryItemModuleP33_731A90F5CE0D8EE558856A09C091B34921TransformItemProvider)initWithSourceProvider:(id)a3
{
  v3 = a3;
  v4 = sub_20D0995CC(v3);

  return v4;
}

@end