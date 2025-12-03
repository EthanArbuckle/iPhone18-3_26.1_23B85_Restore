@interface MessageQuicklookImageAttachmentsActivity
- (ContentRepresentationHandlingDelegate)delegate;
- (MessageQuicklookImageAttachmentsActivity)initWithAttachmentHandlingDelegate:(id)delegate context:(int64_t)context url:(id)url;
- (id)activityTitle;
- (void)_cleanup;
@end

@implementation MessageQuicklookImageAttachmentsActivity

- (MessageQuicklookImageAttachmentsActivity)initWithAttachmentHandlingDelegate:(id)delegate context:(int64_t)context url:(id)url
{
  delegateCopy = delegate;
  urlCopy = url;
  v12.receiver = self;
  v12.super_class = MessageQuicklookImageAttachmentsActivity;
  v9 = [(UIActivity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(MessageQuicklookImageAttachmentsActivity *)v9 setDelegate:delegateCopy];
    [(MessageQuicklookImageAttachmentsActivity *)v10 setUrl:urlCopy];
  }

  return v10;
}

- (id)activityTitle
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"QUICK_LOOK" value:&stru_2826D1AD8 table:@"Main"];

  return v3;
}

- (void)_cleanup
{
  v5.receiver = self;
  v5.super_class = MessageQuicklookImageAttachmentsActivity;
  [(UIActivity *)&v5 _cleanup];
  delegate = [(MessageQuicklookImageAttachmentsActivity *)self delegate];
  v4 = [(MessageQuicklookImageAttachmentsActivity *)self url];
  [delegate previewURL:v4];
}

- (ContentRepresentationHandlingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end