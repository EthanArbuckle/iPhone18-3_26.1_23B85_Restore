@interface ICSystemPaperDrawingsHelper
+ (id)drawingsForAttachment:(id)a3;
- (ICSystemPaperDrawingsHelper)init;
@end

@implementation ICSystemPaperDrawingsHelper

+ (id)drawingsForAttachment:(id)a3
{
  v3 = a3;
  _s11NotesShared27ICSystemPaperDrawingsHelperC21drawingsForAttachmentySay9PencilKit9PKDrawingVGSo12ICAttachmentCFZ_0(v3);

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