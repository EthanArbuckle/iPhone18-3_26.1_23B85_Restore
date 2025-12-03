@interface CKMessageBalloonMaskConfiguration
- (_TtC7ChatKit33CKMessageBalloonMaskConfiguration)init;
- (_TtC7ChatKit33CKMessageBalloonMaskConfiguration)initWithBalloonDescriptor:(CKBalloonDescriptor_t *)descriptor;
@end

@implementation CKMessageBalloonMaskConfiguration

- (_TtC7ChatKit33CKMessageBalloonMaskConfiguration)initWithBalloonDescriptor:(CKBalloonDescriptor_t *)descriptor
{
  var4 = descriptor->var4;
  var5 = descriptor->var5;
  var6 = descriptor->var6;
  var9 = descriptor->var9;
  var12 = descriptor->var12;
  var13 = descriptor->var13;
  var14 = descriptor->var14;
  var15 = descriptor->var15;
  var16 = descriptor->var16;
  v28 = *&descriptor->var0;
  v29 = var4;
  v30 = var5;
  v31 = var6;
  v12 = *&descriptor->var7.blue;
  v32 = *&descriptor->var7.red;
  v33 = v12;
  v13 = *&descriptor->var8.blue;
  v34 = *&descriptor->var8.red;
  v35 = v13;
  v36 = var9;
  v37 = *&descriptor->var10;
  v38 = var12;
  v39 = var13;
  v40 = var14;
  v41 = var15;
  v42 = var16;
  v14 = sub_190D56C50();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v27 - v19;
  sub_190248D60(&v27 - v19);
  v21 = *(v15 + 16);
  v21(v17, v20, v14);
  v22 = type metadata accessor for CKMessageBalloonMaskConfiguration();
  v23 = objc_allocWithZone(v22);
  v21(&v23[OBJC_IVAR____TtC7ChatKit33CKMessageBalloonMaskConfiguration_pathConfiguration], v17, v14);
  v27.receiver = v23;
  v27.super_class = v22;
  v24 = [(CKMessageBalloonMaskConfiguration *)&v27 init];
  v25 = *(v15 + 8);
  v25(v17, v14);
  v25(v20, v14);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v24;
}

- (_TtC7ChatKit33CKMessageBalloonMaskConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end