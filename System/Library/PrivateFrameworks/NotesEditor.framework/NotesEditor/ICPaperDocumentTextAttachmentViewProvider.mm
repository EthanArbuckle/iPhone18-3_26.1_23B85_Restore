@interface ICPaperDocumentTextAttachmentViewProvider
+ (void)registerIfNecessary;
- (CGRect)attachmentBoundsForAttributes:(id)a3 location:(id)a4 textContainer:(id)a5 proposedLineFragment:(CGRect)a6 position:(CGPoint)a7;
- (CGRect)attachmentBoundsForTextContainer:(id)a3 proposedLineFragment:(CGRect)a4 glyphPosition:(CGPoint)a5 characterIndex:(int64_t)a6;
- (ICPaperDocumentTextAttachmentViewProvider)initWithTextAttachment:(id)a3 parentView:(id)a4 textLayoutManager:(id)a5 location:(id)a6;
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

- (ICPaperDocumentTextAttachmentViewProvider)initWithTextAttachment:(id)a3 parentView:(id)a4 textLayoutManager:(id)a5 location:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  swift_unknownObjectRetain();
  return sub_21536C5E4(v9, a4, a5, a6);
}

- (NSTextLocation)location
{
  v3 = OBJC_IVAR___ICPaperDocumentTextAttachmentViewProvider_updatedLocationForRecycledViewProvider;
  swift_beginAccess();
  if (*(&self->super.super.isa + v3))
  {
    v4 = *(&self->super.super.isa + v3);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = type metadata accessor for PaperDocumentTextAttachmentViewProvider();
    v4 = [(NSTextAttachmentViewProvider *)&v6 location];
  }

  swift_unknownObjectRetain();

  return v4;
}

- (NSTextLocation)updatedLocationForRecycledViewProvider
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)loadView
{
  v2 = self;
  sub_21536CA40();
}

- (CGRect)attachmentBoundsForTextContainer:(id)a3 proposedLineFragment:(CGRect)a4 glyphPosition:(CGPoint)a5 characterIndex:(int64_t)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = a3;
  v13 = self;
  sub_21536DD74(a3, x, y, width, height);
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

- (CGRect)attachmentBoundsForAttributes:(id)a3 location:(id)a4 textContainer:(id)a5 proposedLineFragment:(CGRect)a6 position:(CGPoint)a7
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v13 = a5;
  v14 = self;
  sub_21536DD74(a5, x, y, width, height);
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