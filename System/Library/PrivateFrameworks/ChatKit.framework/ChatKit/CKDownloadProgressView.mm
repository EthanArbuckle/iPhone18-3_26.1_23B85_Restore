@interface CKDownloadProgressView
- (_TtC7ChatKit22CKDownloadProgressView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation CKDownloadProgressView

- (_TtC7ChatKit22CKDownloadProgressView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC7ChatKit22CKDownloadProgressView_circularProgressView;
  type metadata accessor for CircularProgressView();
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = OBJC_IVAR____TtC7ChatKit22CKDownloadProgressView_stopImageView;
  *(&self->super.super.super.isa + v5) = sub_19093B908();
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for CKDownloadProgressView();
  v2 = v5.receiver;
  [(CKDownloadProgressView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC7ChatKit22CKDownloadProgressView_circularProgressView];
  [v2 bounds];
  [v3 setFrame_];
  v4 = *&v2[OBJC_IVAR____TtC7ChatKit22CKDownloadProgressView_stopImageView];
  [v2 bounds];
  v7 = CGRectInset(v6, 6.0, 6.0);
  [v4 setFrame_];
}

@end