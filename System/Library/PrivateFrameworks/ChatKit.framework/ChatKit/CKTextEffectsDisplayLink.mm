@interface CKTextEffectsDisplayLink
- (_TtC7ChatKit24CKTextEffectsDisplayLink)init;
- (id)frameRateRequest:(CAFrameRateRange)a3 block:(id)a4;
- (void)_displayLinkDidFire;
@end

@implementation CKTextEffectsDisplayLink

- (void)_displayLinkDidFire
{
  v2 = self;
  sub_190A7B084();
}

- (_TtC7ChatKit24CKTextEffectsDisplayLink)init
{
  *(&self->super.isa + OBJC_IVAR____TtC7ChatKit24CKTextEffectsDisplayLink_tokens) = MEMORY[0x1E69E7CC0];
  *(&self->super.isa + OBJC_IVAR____TtC7ChatKit24CKTextEffectsDisplayLink_displayLink) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for CKTextEffectsDisplayLink();
  return [(CKTextEffectsDisplayLink *)&v3 init];
}

- (id)frameRateRequest:(CAFrameRateRange)a3 block:(id)a4
{
  preferred = a3.preferred;
  maximum = a3.maximum;
  minimum = a3.minimum;
  v8 = _Block_copy(a4);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = self;
  v11 = sub_190A7AE1C(sub_19084CED8, v9, minimum, maximum, preferred);

  return v11;
}

@end