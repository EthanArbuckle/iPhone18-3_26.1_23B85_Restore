@interface MutableMediaFirstPartyViewModel
- (_TtC9MomentsUI31MutableMediaFirstPartyViewModel)initWithCoder:(id)coder;
@end

@implementation MutableMediaFirstPartyViewModel

- (_TtC9MomentsUI31MutableMediaFirstPartyViewModel)initWithCoder:(id)coder
{
  v4 = (&self->super.super.isa + OBJC_IVAR____TtC9MomentsUI31MutableMediaFirstPartyViewModel_subtitle);
  *v4 = 0;
  v4[1] = 0;
  v5 = (&self->super.super.isa + OBJC_IVAR____TtC9MomentsUI31MutableMediaFirstPartyViewModel_trackIdentifier);
  *v5 = 0;
  v5[1] = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC9MomentsUI31MutableMediaFirstPartyViewModel_mediaCategory) = 4;
  swift_weakInit();
  *(&self->super.super.isa + OBJC_IVAR____TtC9MomentsUI31MutableMediaFirstPartyViewModel_listener) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end