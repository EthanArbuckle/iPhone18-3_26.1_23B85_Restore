@interface MessagePrintQuicklookableAttachmentActivity
- (MessagePrintQuicklookableAttachmentActivity)initWithPrintPageRenderer:(id)renderer;
- (id)activityTitle;
- (void)performActivity;
@end

@implementation MessagePrintQuicklookableAttachmentActivity

- (MessagePrintQuicklookableAttachmentActivity)initWithPrintPageRenderer:(id)renderer
{
  rendererCopy = renderer;
  v9.receiver = self;
  v9.super_class = MessagePrintQuicklookableAttachmentActivity;
  v6 = [(UIActivity *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pageRenderer, renderer);
  }

  return v7;
}

- (id)activityTitle
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"PRINT" value:&stru_2826D1AD8 table:@"Main"];

  return v3;
}

- (void)performActivity
{
  mEMORY[0x277D41248] = [MEMORY[0x277D41248] sharedPrintController];
  pageRenderer = [(MessagePrintQuicklookableAttachmentActivity *)self pageRenderer];
  [mEMORY[0x277D41248] setPrintPageRenderer:pageRenderer];

  [mEMORY[0x277D41248] presentAnimated:1 completionHandler:0];
  [(UIActivity *)self activityDidFinish:1];
}

@end