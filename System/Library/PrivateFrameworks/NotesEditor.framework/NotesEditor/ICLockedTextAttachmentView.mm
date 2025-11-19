@interface ICLockedTextAttachmentView
- (ICLockedTextAttachmentView)initWithCoder:(id)a3;
- (ICLockedTextAttachmentView)initWithFrame:(CGRect)a3 textAttachment:(id)a4 textContainer:(id)a5 forManualRendering:(BOOL)a6;
- (ICLockedTextAttachmentView)initWithTextAttachment:(id)a3 textContainer:(id)a4 forManualRendering:(BOOL)a5;
- (void)didTapAttachment:(id)a3;
- (void)openAttachment;
@end

@implementation ICLockedTextAttachmentView

- (ICLockedTextAttachmentView)initWithFrame:(CGRect)a3 textAttachment:(id)a4 textContainer:(id)a5 forManualRendering:(BOOL)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = a4;
  v14 = a5;
  return LockedTextAttachmentView.init(frame:textAttachment:textContainer:forManualRendering:)(a4, a5, a6, x, y, width, height);
}

- (ICLockedTextAttachmentView)initWithTextAttachment:(id)a3 textContainer:(id)a4 forManualRendering:(BOOL)a5
{
  if (a3)
  {
    v6 = self;
    v7 = a4;
    v8 = a5;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = a3;
    }

    *&a5 = v8;
    a4 = v7;
    self = v6;
  }

  else
  {
    v9 = 0;
  }

  v11 = [(ICLockedTextAttachmentView *)self initWithFrame:v9 textAttachment:a4 textContainer:a5 forManualRendering:0.0, 0.0, 0.0, 0.0];

  return v11;
}

- (ICLockedTextAttachmentView)initWithCoder:(id)a3
{
  result = sub_2154A2EDC();
  __break(1u);
  return result;
}

- (void)didTapAttachment:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_2154A2BCC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  LockedTextAttachmentView.didTapAttachment(_:)();

  sub_21532C870(v6);
}

- (void)openAttachment
{
  v2 = self;
  LockedTextAttachmentView.openAttachment()();
}

@end