@interface MessageMarkupDocumentActivity
- (ContentRepresentationHandlingDelegate)delegate;
- (MessageMarkupDocumentActivity)initWithAttachmentHandlingDelegate:(id)a3 context:(int64_t)a4;
- (id)activityTitle;
@end

@implementation MessageMarkupDocumentActivity

- (MessageMarkupDocumentActivity)initWithAttachmentHandlingDelegate:(id)a3 context:(int64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = MessageMarkupDocumentActivity;
  v7 = [(UIActivity *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(MessageMarkupDocumentActivity *)v7 setDelegate:v6];
    [(MessageMarkupDocumentActivity *)v8 setContext:a4];
  }

  return v8;
}

- (id)activityTitle
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"MARKUP_DOCUMENT" value:&stru_2826D1AD8 table:@"Main"];

  return v3;
}

- (ContentRepresentationHandlingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end