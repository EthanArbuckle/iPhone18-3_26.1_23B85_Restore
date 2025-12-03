@interface ICAttachmentViewController
- (ICAttachment)attachment;
- (ICAttachmentViewController)initWithCoder:(id)coder;
- (ICAttachmentViewController)initWithNibName:(id)name bundle:(id)bundle;
- (ICAttachmentViewController)initWithTextAttachment:(id)attachment forManualRendering:(BOOL)rendering layoutManager:(id)manager;
- (ICAttachmentViewController)initWithTextAttachment:(id)attachment forManualRendering:(BOOL)rendering textLayoutManager:(id)manager;
- (ICTextAttachment)textAttachment;
- (NSLayoutManager)layoutManager;
- (NSTextLayoutManager)textLayoutManager;
- (void)loadView;
@end

@implementation ICAttachmentViewController

- (ICAttachmentViewController)initWithNibName:(id)name bundle:(id)bundle
{
  [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICAttachmentViewController initWithNibName:bundle:]" simulateCrash:1 showAlert:0 format:@"ICAttachmentViewController should never be initialized from nib."];

  return 0;
}

- (ICAttachmentViewController)initWithCoder:(id)coder
{
  [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICAttachmentViewController initWithCoder:]" simulateCrash:1 showAlert:0 format:@"ICAttachmentViewController should never be archived."];

  return 0;
}

- (ICAttachmentViewController)initWithTextAttachment:(id)attachment forManualRendering:(BOOL)rendering layoutManager:(id)manager
{
  attachmentCopy = attachment;
  managerCopy = manager;
  v14.receiver = self;
  v14.super_class = ICAttachmentViewController;
  v10 = [(ICAttachmentViewController *)&v14 initWithNibName:0 bundle:0];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_textAttachment, attachmentCopy);
    attachment = [attachmentCopy attachment];
    objc_storeWeak(&v11->_attachment, attachment);

    v11->_forManualRendering = rendering;
    objc_storeWeak(&v11->_layoutManager, managerCopy);
  }

  return v11;
}

- (ICAttachmentViewController)initWithTextAttachment:(id)attachment forManualRendering:(BOOL)rendering textLayoutManager:(id)manager
{
  attachmentCopy = attachment;
  managerCopy = manager;
  v14.receiver = self;
  v14.super_class = ICAttachmentViewController;
  v10 = [(ICAttachmentViewController *)&v14 initWithNibName:0 bundle:0];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_textAttachment, attachmentCopy);
    attachment = [attachmentCopy attachment];
    objc_storeWeak(&v11->_attachment, attachment);

    v11->_forManualRendering = rendering;
    objc_storeWeak(&v11->_textLayoutManager, managerCopy);
  }

  return v11;
}

- (void)loadView
{
  textLayoutManager = [(ICAttachmentViewController *)self textLayoutManager];
  textContainer = [textLayoutManager textContainer];
  v5 = textContainer;
  if (textContainer)
  {
    lastObject = textContainer;
  }

  else
  {
    layoutManager = [(ICAttachmentViewController *)self layoutManager];
    textContainers = [layoutManager textContainers];
    lastObject = [textContainers lastObject];
  }

  forManualRendering = [(ICAttachmentViewController *)self forManualRendering];
  textAttachment = [(ICAttachmentViewController *)self textAttachment];
  v10 = textAttachment;
  if (forManualRendering)
  {
    [textAttachment newlyCreatedViewForManualRenderingInTextContainer:lastObject];
  }

  else
  {
    [textAttachment newlyCreatedViewForTextContainer:lastObject];
  }
  v11 = ;
  [(ICAttachmentViewController *)self setView:v11];
}

- (ICTextAttachment)textAttachment
{
  WeakRetained = objc_loadWeakRetained(&self->_textAttachment);
  if (!WeakRetained)
  {
    if (![(ICAttachmentViewController *)self isViewLoaded])
    {
      goto LABEL_5;
    }

    objc_opt_class();
    view = [(ICAttachmentViewController *)self view];
    WeakRetained = ICDynamicCast();

    textAttachment = [WeakRetained textAttachment];
    objc_storeWeak(&self->_textAttachment, textAttachment);
  }

LABEL_5:
  v6 = objc_loadWeakRetained(&self->_textAttachment);

  return v6;
}

- (ICAttachment)attachment
{
  WeakRetained = objc_loadWeakRetained(&self->_attachment);

  return WeakRetained;
}

- (NSLayoutManager)layoutManager
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutManager);

  return WeakRetained;
}

- (NSTextLayoutManager)textLayoutManager
{
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutManager);

  return WeakRetained;
}

@end