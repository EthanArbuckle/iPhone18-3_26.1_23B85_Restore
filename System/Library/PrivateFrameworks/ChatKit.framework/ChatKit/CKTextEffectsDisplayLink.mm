@interface CKTextEffectsDisplayLink
- (_TtC7ChatKit24CKTextEffectsDisplayLink)init;
- (id)frameRateRequest:(CAFrameRateRange)request block:(id)block;
- (void)_displayLinkDidFire;
@end

@implementation CKTextEffectsDisplayLink

- (void)_displayLinkDidFire
{
  selfCopy = self;
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

- (id)frameRateRequest:(CAFrameRateRange)request block:(id)block
{
  preferred = request.preferred;
  maximum = request.maximum;
  minimum = request.minimum;
  v8 = _Block_copy(block);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  selfCopy = self;
  v11 = sub_190A7AE1C(sub_19084CED8, v9, minimum, maximum, preferred);

  return v11;
}

@end