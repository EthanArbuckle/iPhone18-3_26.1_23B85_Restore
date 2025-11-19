@interface MessageQuicklookImageAttachmentsActivity
- (ContentRepresentationHandlingDelegate)delegate;
- (MessageQuicklookImageAttachmentsActivity)initWithAttachmentHandlingDelegate:(id)a3 context:(int64_t)a4 url:(id)a5;
- (id)activityTitle;
- (void)_cleanup;
@end

@implementation MessageQuicklookImageAttachmentsActivity

- (MessageQuicklookImageAttachmentsActivity)initWithAttachmentHandlingDelegate:(id)a3 context:(int64_t)a4 url:(id)a5
{
  v7 = a3;
  v8 = a5;
  v12.receiver = self;
  v12.super_class = MessageQuicklookImageAttachmentsActivity;
  v9 = [(UIActivity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(MessageQuicklookImageAttachmentsActivity *)v9 setDelegate:v7];
    [(MessageQuicklookImageAttachmentsActivity *)v10 setUrl:v8];
  }

  return v10;
}

- (id)activityTitle
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"QUICK_LOOK" value:&stru_2826D1AD8 table:@"Main"];

  return v3;
}

- (void)_cleanup
{
  v5.receiver = self;
  v5.super_class = MessageQuicklookImageAttachmentsActivity;
  [(UIActivity *)&v5 _cleanup];
  v3 = [(MessageQuicklookImageAttachmentsActivity *)self delegate];
  v4 = [(MessageQuicklookImageAttachmentsActivity *)self url];
  [v3 previewURL:v4];
}

- (ContentRepresentationHandlingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end