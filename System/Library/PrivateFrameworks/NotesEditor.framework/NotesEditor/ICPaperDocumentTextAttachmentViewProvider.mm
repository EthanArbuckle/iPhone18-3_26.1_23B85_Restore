@interface ICPaperDocumentTextAttachmentViewProvider
+ (void)registerIfNecessary;
- (CGRect)attachmentBoundsForAttributes:(id)attributes location:(id)location textContainer:(id)container proposedLineFragment:(CGRect)fragment position:(CGPoint)position;
- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(int64_t)index;
- (ICPaperDocumentTextAttachmentViewProvider)initWithTextAttachment:(id)attachment parentView:(id)view textLayoutManager:(id)manager location:(id)location;
- (NSTextLocation)location;
- (NSTextLocation)updatedLocationForRecycledViewProvider;
- (void)loadView;
@end

@implementation ICPaperDocumentTextAttachmentViewProvider

+ (void)registerIfNecessary
{
  swift_getObjCClassMetadata();
  v2 = objc_opt_self();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = *MEMORY[0x277D36148];

  [v2 registerTextAttachmentViewProviderClass:ObjCClassFromMetadata forFileType:v4];
}

- (ICPaperDocumentTextAttachmentViewProvider)initWithTextAttachment:(id)attachment parentView:(id)view textLayoutManager:(id)manager location:(id)location
{
  attachmentCopy = attachment;
  viewCopy = view;
  managerCopy = manager;
  swift_unknownObjectRetain();
  return sub_21536C5E4(attachmentCopy, view, manager, location);
}

- (NSTextLocation)location
{
  v3 = OBJC_IVAR___ICPaperDocumentTextAttachmentViewProvider_updatedLocationForRecycledViewProvider;
  swift_beginAccess();
  if (*(&self->super.super.isa + v3))
  {
    location = *(&self->super.super.isa + v3);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = type metadata accessor for PaperDocumentTextAttachmentViewProvider();
    location = [(NSTextAttachmentViewProvider *)&v6 location];
  }

  swift_unknownObjectRetain();

  return location;
}

- (NSTextLocation)updatedLocationForRecycledViewProvider
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)loadView
{
  selfCopy = self;
  sub_21536CA40();
}

- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(int64_t)index
{
  height = fragment.size.height;
  width = fragment.size.width;
  y = fragment.origin.y;
  x = fragment.origin.x;
  containerCopy = container;
  selfCopy = self;
  sub_21536DD74(container, x, y, width, height);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGRect)attachmentBoundsForAttributes:(id)attributes location:(id)location textContainer:(id)container proposedLineFragment:(CGRect)fragment position:(CGPoint)position
{
  height = fragment.size.height;
  width = fragment.size.width;
  y = fragment.origin.y;
  x = fragment.origin.x;
  containerCopy = container;
  selfCopy = self;
  sub_21536DD74(container, x, y, width, height);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = v16;
  v24 = v18;
  v25 = v20;
  v26 = v22;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

@end