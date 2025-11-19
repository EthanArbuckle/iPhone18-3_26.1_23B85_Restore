@interface CKBalloonMaskLayer
- (UIEdgeInsets)tailInsets;
- (_TtC7ChatKit18CKBalloonMaskLayer)init;
- (_TtC7ChatKit18CKBalloonMaskLayer)initWithCoder:(id)a3;
- (_TtC7ChatKit18CKBalloonMaskLayer)initWithLayer:(id)a3;
- (id)actionForKey:(id)a3;
- (void)layoutSublayers;
- (void)updateDescriptor:(CKBalloonDescriptor_t *)a3;
@end

@implementation CKBalloonMaskLayer

- (_TtC7ChatKit18CKBalloonMaskLayer)initWithLayer:(id)a3
{
  swift_unknownObjectRetain();
  sub_190D58140();
  swift_unknownObjectRelease();
  return sub_190B7C180(&v4);
}

- (void)layoutSublayers
{
  v2 = self;
  sub_190B7C368();
}

- (UIEdgeInsets)tailInsets
{
  v3 = sub_190D56C50();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self;
  [(CKBalloonMaskLayer *)v7 bounds];
  v9 = v8;
  v11 = v10;
  v12 = OBJC_IVAR____TtC7ChatKit18CKBalloonMaskLayer_pathConfiguration;
  swift_beginAccess();
  (*(v4 + 16))(v6, v7 + v12, v3);
  v13 = MEMORY[0x193AF2490](v6, v9, v11);
  v15 = v14;
  v17 = v16;
  v19 = v18;

  (*(v4 + 8))(v6, v3);
  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;
  result.right = v23;
  result.bottom = v22;
  result.left = v21;
  result.top = v20;
  return result;
}

- (id)actionForKey:(id)a3
{
  v4 = sub_190D56F10();
  v6 = v5;
  v7 = self;
  v8 = sub_190B7C8D8(v4, v6);

  return v8;
}

- (_TtC7ChatKit18CKBalloonMaskLayer)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (_TtC7ChatKit18CKBalloonMaskLayer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)updateDescriptor:(CKBalloonDescriptor_t *)a3
{
  var4 = a3->var4;
  var5 = a3->var5;
  var6 = a3->var6;
  var9 = a3->var9;
  var12 = a3->var12;
  var13 = a3->var13;
  var14 = a3->var14;
  var15 = a3->var15;
  var16 = a3->var16;
  v23 = *&a3->var0;
  v24 = var4;
  v25 = var5;
  v26 = var6;
  v13 = *&a3->var7.blue;
  v27 = *&a3->var7.red;
  v28 = v13;
  v14 = *&a3->var8.blue;
  v29 = *&a3->var8.red;
  v30 = v14;
  v31 = var9;
  v32 = *&a3->var10;
  v33 = var12;
  v34 = var13;
  v35 = var14;
  v36 = var15;
  v37 = var16;
  v15 = sub_190D56C50();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v23 - v20;
  v22 = self;
  sub_190248D60(v21);
  (*(v16 + 16))(v18, v21, v15);
  sub_190B7BC20(v18);

  (*(v16 + 8))(v21, v15);
}

@end