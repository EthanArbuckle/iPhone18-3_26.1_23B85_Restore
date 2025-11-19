@interface LoadingIndicatorCoverView
- (_TtC7ChatKitP33_BD78CF6CDE905E05AD6D455A82FAED4A25LoadingIndicatorCoverView)initWithCoder:(id)a3;
@end

@implementation LoadingIndicatorCoverView

- (_TtC7ChatKitP33_BD78CF6CDE905E05AD6D455A82FAED4A25LoadingIndicatorCoverView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC7ChatKitP33_BD78CF6CDE905E05AD6D455A82FAED4A25LoadingIndicatorCoverView_spinner;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(type metadata accessor for LoadingIndicatorView()) initWithActivityIndicatorStyle_];
  v5 = OBJC_IVAR____TtC7ChatKitP33_BD78CF6CDE905E05AD6D455A82FAED4A25LoadingIndicatorCoverView_textLabel;
  type metadata accessor for LoadingLabel();
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = sub_190D58510();
  __break(1u);
  return result;
}

@end