@interface MessagePrintQuicklookableAttachmentActivity
- (MessagePrintQuicklookableAttachmentActivity)initWithPrintPageRenderer:(id)a3;
- (id)activityTitle;
- (void)performActivity;
@end

@implementation MessagePrintQuicklookableAttachmentActivity

- (MessagePrintQuicklookableAttachmentActivity)initWithPrintPageRenderer:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MessagePrintQuicklookableAttachmentActivity;
  v6 = [(UIActivity *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pageRenderer, a3);
  }

  return v7;
}

- (id)activityTitle
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"PRINT" value:&stru_2826D1AD8 table:@"Main"];

  return v3;
}

- (void)performActivity
{
  v4 = [MEMORY[0x277D41248] sharedPrintController];
  v3 = [(MessagePrintQuicklookableAttachmentActivity *)self pageRenderer];
  [v4 setPrintPageRenderer:v3];

  [v4 presentAnimated:1 completionHandler:0];
  [(UIActivity *)self activityDidFinish:1];
}

@end