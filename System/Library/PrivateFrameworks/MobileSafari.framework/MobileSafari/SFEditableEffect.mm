@interface SFEditableEffect
+ (id)platterBackgroundWithReflectionCaptureGroupName:(id)name;
+ (id)variableBlurToolbarBackground;
- (BOOL)applyToViews:(id)views;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (SFEditableEffect)init;
- (id)copyWithZone:(void *)zone;
- (int64_t)hash;
@end

@implementation SFEditableEffect

- (SFEditableEffect)init
{
  *(&self->super.isa + OBJC_IVAR___SFEditableEffect_layers) = MEMORY[0x1E69E7CC0];
  v3.receiver = self;
  v3.super_class = SFEditableEffect;
  return [(SFEditableEffect *)&v3 init];
}

- (BOOL)isEmpty
{
  v3 = OBJC_IVAR___SFEditableEffect_layers;
  swift_beginAccess();
  return (*(&self->super.isa + v3))[2] == 0;
}

+ (id)platterBackgroundWithReflectionCaptureGroupName:(id)name
{
  v3 = sub_18BC20BD8();
  v5 = v4;
  swift_getObjCClassMetadata();
  v6 = sub_18B98BE5C(v3, v5);

  return v6;
}

+ (id)variableBlurToolbarBackground
{
  swift_getObjCClassMetadata();
  v2 = sub_18B98C5A0();

  return v2;
}

- (BOOL)applyToViews:(id)views
{
  sub_18B7B0AC0(0, &qword_1EA9D46F0);
  v4 = sub_18BC20D98();
  swift_beginAccess();
  selfCopy = self;
  v6 = sub_18BC1E3F8();
  v7 = sub_18B98CBE8(v6, v4);

  if (v7)
  {
    v8 = sub_18BC1E3F8();
    sub_18B98D184(v8, v4);
  }

  return v7 & 1;
}

- (id)copyWithZone:(void *)zone
{
  swift_getObjectType();
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  selfCopy = self;
  v6 = [v4 init];
  v7 = OBJC_IVAR___SFEditableEffect_layers;
  swift_beginAccess();
  v8 = *(&selfCopy->super.isa + v7);
  sub_18BC1E3F8();

  v9 = OBJC_IVAR___SFEditableEffect_layers;
  swift_beginAccess();
  *&v6[v9] = v8;

  v10 = sub_18BC21FB8();

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_18BC218B8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = SFEditableEffect.isEqual(_:)(v8);

  sub_18B988BAC(v8, &qword_1EA9D5220);
  return v6 & 1;
}

- (int64_t)hash
{
  swift_beginAccess();
  _s5LayerVMa();
  sub_18B98EF50(&qword_1EA9D3D88, _s5LayerVMa);
  selfCopy = self;
  sub_18BC1E3F8();
  v4 = sub_18BC20E88();

  return v4;
}

@end