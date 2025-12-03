@interface MessageMarkupDocumentActivity
- (ContentRepresentationHandlingDelegate)delegate;
- (MessageMarkupDocumentActivity)initWithAttachmentHandlingDelegate:(id)delegate context:(int64_t)context;
- (id)activityTitle;
@end

@implementation MessageMarkupDocumentActivity

- (MessageMarkupDocumentActivity)initWithAttachmentHandlingDelegate:(id)delegate context:(int64_t)context
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = MessageMarkupDocumentActivity;
  v7 = [(UIActivity *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(MessageMarkupDocumentActivity *)v7 setDelegate:delegateCopy];
    [(MessageMarkupDocumentActivity *)v8 setContext:context];
  }

  return v8;
}

- (id)activityTitle
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"MARKUP_DOCUMENT" value:&stru_2826D1AD8 table:@"Main"];

  return v3;
}

- (ContentRepresentationHandlingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end