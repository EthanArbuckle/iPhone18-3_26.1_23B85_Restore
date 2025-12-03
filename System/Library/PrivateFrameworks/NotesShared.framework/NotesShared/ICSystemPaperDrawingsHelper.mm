@interface ICSystemPaperDrawingsHelper
+ (id)drawingsForAttachment:(id)attachment;
- (ICSystemPaperDrawingsHelper)init;
@end

@implementation ICSystemPaperDrawingsHelper

+ (id)drawingsForAttachment:(id)attachment
{
  attachmentCopy = attachment;
  _s11NotesShared27ICSystemPaperDrawingsHelperC21drawingsForAttachmentySay9PencilKit9PKDrawingVGSo12ICAttachmentCFZ_0(attachmentCopy);

  sub_2150A48F0();
  v4 = sub_2150A4EB0();

  return v4;
}

- (ICSystemPaperDrawingsHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ICSystemPaperDrawingsHelper();
  return [(ICSystemPaperDrawingsHelper *)&v3 init];
}

@end