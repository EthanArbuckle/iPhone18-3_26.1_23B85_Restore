@interface NDOWarrantyPropertiesLoader
- (_TtC8ndoagent27NDOWarrantyPropertiesLoader)init;
- (void)fetchWarrantyPropertiesFor:(NSString *)for completionHandler:(id)handler;
@end

@implementation NDOWarrantyPropertiesLoader

- (void)fetchWarrantyPropertiesFor:(NSString *)for completionHandler:(id)handler
{
  v7 = (*(*(sub_10001A078(&qword_1000A7920, &qword_10007AE70) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = for;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10007AE80;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10007AE90;
  v14[5] = v13;
  forCopy = for;
  selfCopy = self;
  sub_10001C3D0(0, 0, v9, &unk_10007AEA0, v14);
}

- (_TtC8ndoagent27NDOWarrantyPropertiesLoader)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end