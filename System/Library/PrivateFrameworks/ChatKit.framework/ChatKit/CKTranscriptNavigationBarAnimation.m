@interface CKTranscriptNavigationBarAnimation
+ (_TtC7ChatKit34CKTranscriptNavigationBarAnimation)unanimated;
+ (id)linearAnimationWithDuration:(double)a3;
- (_TtC7ChatKit34CKTranscriptNavigationBarAnimation)init;
- (double)duration;
- (void)perform:(id)a3;
@end

@implementation CKTranscriptNavigationBarAnimation

- (double)duration
{
  result = *(&self->super.isa + OBJC_IVAR____TtC7ChatKit34CKTranscriptNavigationBarAnimation_animation);
  if (self->animation[OBJC_IVAR____TtC7ChatKit34CKTranscriptNavigationBarAnimation_animation])
  {
    return 0.0;
  }

  return result;
}

+ (_TtC7ChatKit34CKTranscriptNavigationBarAnimation)unanimated
{
  if (qword_1EAD46808 != -1)
  {
    swift_once();
  }

  v3 = qword_1EAD46810;

  return v3;
}

+ (id)linearAnimationWithDuration:(double)a3
{
  v4 = type metadata accessor for CKTranscriptNavigationBarAnimation();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtC7ChatKit34CKTranscriptNavigationBarAnimation_animation];
  *v6 = a3;
  *(v6 + 8) = 0;
  v9.receiver = v5;
  v9.super_class = v4;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  return v7;
}

- (void)perform:(id)a3
{
  v4 = _Block_copy(a3);
  *(swift_allocObject() + 16) = v4;
  if (self->animation[OBJC_IVAR____TtC7ChatKit34CKTranscriptNavigationBarAnimation_animation])
  {
    _Block_copy(v4);
    v4[2](v4);

    _Block_release(v4);
  }

  else
  {
    v5 = self;
    v6 = sub_190D56570();
    MEMORY[0x1EEE9AC00](v6);
    sub_190D53E40();
  }
}

- (_TtC7ChatKit34CKTranscriptNavigationBarAnimation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end