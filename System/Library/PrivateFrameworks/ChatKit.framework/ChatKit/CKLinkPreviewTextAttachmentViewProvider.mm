@interface CKLinkPreviewTextAttachmentViewProvider
- (CGRect)attachmentBoundsForAttributes:(id)attributes location:(id)location textContainer:(id)container proposedLineFragment:(CGRect)fragment position:(CGPoint)position;
- (_TtC7ChatKit39CKLinkPreviewTextAttachmentViewProvider)initWithTextAttachment:(id)attachment parentView:(id)view textLayoutManager:(id)manager location:(id)location;
@end

@implementation CKLinkPreviewTextAttachmentViewProvider

- (CGRect)attachmentBoundsForAttributes:(id)attributes location:(id)location textContainer:(id)container proposedLineFragment:(CGRect)fragment position:(CGPoint)position
{
  swift_unknownObjectRetain();
  containerCopy = container;
  selfCopy = self;
  sub_190BE5668(container);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  swift_unknownObjectRelease();

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (_TtC7ChatKit39CKLinkPreviewTextAttachmentViewProvider)initWithTextAttachment:(id)attachment parentView:(id)view textLayoutManager:(id)manager location:(id)location
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end