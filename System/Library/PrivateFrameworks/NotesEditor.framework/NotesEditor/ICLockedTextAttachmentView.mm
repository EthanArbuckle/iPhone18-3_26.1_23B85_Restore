@interface ICLockedTextAttachmentView
- (ICLockedTextAttachmentView)initWithCoder:(id)coder;
- (ICLockedTextAttachmentView)initWithFrame:(CGRect)frame textAttachment:(id)attachment textContainer:(id)container forManualRendering:(BOOL)rendering;
- (ICLockedTextAttachmentView)initWithTextAttachment:(id)attachment textContainer:(id)container forManualRendering:(BOOL)rendering;
- (void)didTapAttachment:(id)attachment;
- (void)openAttachment;
@end

@implementation ICLockedTextAttachmentView

- (ICLockedTextAttachmentView)initWithFrame:(CGRect)frame textAttachment:(id)attachment textContainer:(id)container forManualRendering:(BOOL)rendering
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  attachmentCopy = attachment;
  containerCopy = container;
  return LockedTextAttachmentView.init(frame:textAttachment:textContainer:forManualRendering:)(attachment, container, rendering, x, y, width, height);
}

- (ICLockedTextAttachmentView)initWithTextAttachment:(id)attachment textContainer:(id)container forManualRendering:(BOOL)rendering
{
  if (attachment)
  {
    selfCopy = self;
    containerCopy = container;
    renderingCopy = rendering;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      attachmentCopy = attachment;
    }

    *&rendering = renderingCopy;
    container = containerCopy;
    self = selfCopy;
  }

  else
  {
    v9 = 0;
  }

  v11 = [(ICLockedTextAttachmentView *)self initWithFrame:v9 textAttachment:container textContainer:rendering forManualRendering:0.0, 0.0, 0.0, 0.0];

  return v11;
}

- (ICLockedTextAttachmentView)initWithCoder:(id)coder
{
  result = sub_2154A2EDC();
  __break(1u);
  return result;
}

- (void)didTapAttachment:(id)attachment
{
  if (attachment)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_2154A2BCC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  LockedTextAttachmentView.didTapAttachment(_:)();

  sub_21532C870(v6);
}

- (void)openAttachment
{
  selfCopy = self;
  LockedTextAttachmentView.openAttachment()();
}

@end