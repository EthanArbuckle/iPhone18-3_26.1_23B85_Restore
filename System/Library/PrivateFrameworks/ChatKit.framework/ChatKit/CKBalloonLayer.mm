@interface CKBalloonLayer
- (BOOL)isBeingUsedForSnapshot;
- (BOOL)isBeingUsedInThrowAnimation;
- (CGRect)frame;
- (UIEdgeInsets)tailInsets;
- (_TtC7ChatKit14CKBalloonLayer)initWithCoder:(id)coder;
- (_TtC7ChatKit14CKBalloonLayer)initWithDescriptor:(CKBalloonDescriptor_t *)descriptor traitCollection:(id)collection;
- (_TtC7ChatKit14CKBalloonLayer)initWithLayer:(id)layer;
- (id)actionForLayer:(id)layer forKey:(id)key;
- (void)layoutSublayers;
- (void)removeAllAnimationsIncludingMaskAnimations;
- (void)setAnimationDelegate:(id)delegate;
- (void)setBalloonHidden:(BOOL)hidden;
- (void)setFrame:(CGRect)frame;
- (void)setGradientOverrideFrame:(CGRect)frame;
- (void)setGradientReferenceView:(id)view;
- (void)updateDescriptor:(CKBalloonDescriptor_t *)descriptor traitCollection:(id)collection;
- (void)viewDidMoveToWindow;
@end

@implementation CKBalloonLayer

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for CKBalloonLayer(0);
  [(CKBalloonLayer *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = type metadata accessor for CKBalloonLayer(0);
  v19.receiver = self;
  v19.super_class = v8;
  selfCopy = self;
  [(CKBalloonLayer *)&v19 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18.receiver = selfCopy;
  v18.super_class = v8;
  [(CKBalloonLayer *)&v18 setFrame:x, y, width, height];
  sub_1909B0BF4(v11, v13, v15, v17);
}

- (void)setGradientReferenceView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_1909B7718();
}

- (_TtC7ChatKit14CKBalloonLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  sub_190D58140();
  swift_unknownObjectRelease();
  return sub_1909A9E20(&v4);
}

- (_TtC7ChatKit14CKBalloonLayer)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_isBeingUsedInThrowAnimation) = 0;
  *(self + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_isBeingUsedForSnapshot) = 0;
  swift_unknownObjectWeakInit();
  v4 = self + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_gradientOverrideFrame;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v4[32] = 1;
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (void)setAnimationDelegate:(id)delegate
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1909AA604();
  swift_unknownObjectRelease();
}

- (void)viewDidMoveToWindow
{
  selfCopy = self;
  sub_1909AB9E4();
}

- (BOOL)isBeingUsedInThrowAnimation
{
  v3 = OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_isBeingUsedInThrowAnimation;
  swift_beginAccess();
  return *(self + v3);
}

- (BOOL)isBeingUsedForSnapshot
{
  v3 = OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_isBeingUsedForSnapshot;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setGradientOverrideFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  selfCopy = self;
  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  if (CGRectIsEmpty(v10))
  {
    v8 = selfCopy + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_gradientOverrideFrame;
    swift_beginAccess();
    *v8 = 0u;
    *(v8 + 1) = 0u;
    v8[32] = 1;
  }

  else
  {
    v9 = (selfCopy + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_gradientOverrideFrame);
    swift_beginAccess();
    *v9 = x;
    v9[1] = y;
    v9[2] = width;
    v9[3] = height;
    *(v9 + 32) = 0;
  }

  sub_1909AC998();
}

- (UIEdgeInsets)tailInsets
{
  v3 = sub_190D56C50();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  [(CKBalloonLayer *)selfCopy bounds];
  v9 = v8;
  v11 = v10;
  v12 = OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_configuration;
  swift_beginAccess();
  (*(v4 + 16))(v6, selfCopy + v12, v3);
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

- (void)setBalloonHidden:(BOOL)hidden
{
  selfCopy = self;
  sub_1909B0D40(hidden);
}

- (void)removeAllAnimationsIncludingMaskAnimations
{
  selfCopy = self;
  sub_1909B1090();
}

- (void)layoutSublayers
{
  selfCopy = self;
  sub_1909B183C();
}

- (id)actionForLayer:(id)layer forKey:(id)key
{
  layerCopy = layer;
  selfCopy = self;
  v7 = _s7ChatKit14CKBalloonLayerC6action3for0F3KeySo8CAAction_pSgSo7CALayerC_SStF_0();

  return v7;
}

- (_TtC7ChatKit14CKBalloonLayer)initWithDescriptor:(CKBalloonDescriptor_t *)descriptor traitCollection:(id)collection
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
  v27 = *&descriptor->var0;
  v28 = var4;
  v29 = var5;
  v30 = var6;
  v14 = *&descriptor->var7.blue;
  v31 = *&descriptor->var7.red;
  v32 = v14;
  v15 = *&descriptor->var8.blue;
  v33 = *&descriptor->var8.red;
  v34 = v15;
  v35 = var9;
  v36 = *&descriptor->var10;
  v37 = var12;
  v38 = var13;
  v39 = var14;
  v40 = var15;
  v41 = var16;
  v16 = type metadata accessor for CKBalloonLayer.Configuration(0);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v27 - v21;
  collectionCopy = collection;
  sub_190248D60(v22);
  sub_190D16E54(collectionCopy, &v22[*(v17 + 28)]);
  sub_1909B589C(v22, v19, type metadata accessor for CKBalloonLayer.Configuration);
  v24 = objc_allocWithZone(type metadata accessor for CKBalloonLayer(0));
  v25 = CKBalloonLayer.init(configuration:)(v19);

  sub_1909B7924(v22, type metadata accessor for CKBalloonLayer.Configuration);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v25;
}

- (void)updateDescriptor:(CKBalloonDescriptor_t *)descriptor traitCollection:(id)collection
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
  v26 = *&descriptor->var0;
  v27 = var4;
  v28 = var5;
  v29 = var6;
  v15 = *&descriptor->var7.blue;
  v30 = *&descriptor->var7.red;
  v31 = v15;
  v16 = *&descriptor->var8.blue;
  v32 = *&descriptor->var8.red;
  v33 = v16;
  v34 = var9;
  v35 = *&descriptor->var10;
  v36 = var12;
  v37 = var13;
  v38 = var14;
  v39 = var15;
  v40 = var16;
  v17 = type metadata accessor for CKBalloonLayer.Configuration(0);
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v26 - v22;
  collectionCopy = collection;
  selfCopy = self;
  sub_190248D60(v23);
  sub_190D16E54(collectionCopy, &v23[*(v18 + 28)]);
  sub_1909B589C(v23, v20, type metadata accessor for CKBalloonLayer.Configuration);
  sub_1909AC62C(v20);

  sub_1909B7924(v23, type metadata accessor for CKBalloonLayer.Configuration);
}

@end