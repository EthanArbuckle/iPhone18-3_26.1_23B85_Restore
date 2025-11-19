@interface HREMatterCommandActionMap
+ (id)emptyMap;
- (HREMatterCommandActionMap)init;
- (HREMatterCommandActionMap)initWithCommands:(id)a3;
- (HREMatterCommandActionMap)initWithCondition:(id)a3 childMaps:(id)a4;
- (id)commandsForAccessory:(id)a3 withSnapshotContainer:(id)a4;
@end

@implementation HREMatterCommandActionMap

- (HREMatterCommandActionMap)initWithCommands:(id)a3
{
  type metadata accessor for MatterCommandMap();
  v3 = sub_254406B80();
  return MatterCommandActionMap.init(rawCommands:)(v3);
}

+ (id)emptyMap
{
  v2 = type metadata accessor for MatterCommandActionMap();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR___HREMatterCommandActionMap_commandTemplates] = MEMORY[0x277D84F90];
  v3[OBJC_IVAR___HREMatterCommandActionMap_enforceExecutionOrder] = 0;
  v6.receiver = v3;
  v6.super_class = v2;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCondition_childMaps_, 0, 0);

  return v4;
}

- (id)commandsForAccessory:(id)a3 withSnapshotContainer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_2543E3EA4(v6);

  if (v9)
  {
    sub_2543E51AC(0, &qword_27F5F8B28, 0x277CD1B68);
    v10 = sub_254406B70();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (HREMatterCommandActionMap)initWithCondition:(id)a3 childMaps:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (HREMatterCommandActionMap)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end