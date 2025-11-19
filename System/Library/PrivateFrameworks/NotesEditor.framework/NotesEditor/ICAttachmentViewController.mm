@interface ICAttachmentViewController
- (ICAttachment)attachment;
- (ICAttachmentViewController)initWithCoder:(id)a3;
- (ICAttachmentViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (ICAttachmentViewController)initWithTextAttachment:(id)a3 forManualRendering:(BOOL)a4 layoutManager:(id)a5;
- (ICAttachmentViewController)initWithTextAttachment:(id)a3 forManualRendering:(BOOL)a4 textLayoutManager:(id)a5;
- (ICTextAttachment)textAttachment;
- (NSLayoutManager)layoutManager;
- (NSTextLayoutManager)textLayoutManager;
- (void)loadView;
@end

@implementation ICAttachmentViewController

- (ICAttachmentViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICAttachmentViewController initWithNibName:bundle:]" simulateCrash:1 showAlert:0 format:@"ICAttachmentViewController should never be initialized from nib."];

  return 0;
}

- (ICAttachmentViewController)initWithCoder:(id)a3
{
  [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICAttachmentViewController initWithCoder:]" simulateCrash:1 showAlert:0 format:@"ICAttachmentViewController should never be archived."];

  return 0;
}

- (ICAttachmentViewController)initWithTextAttachment:(id)a3 forManualRendering:(BOOL)a4 layoutManager:(id)a5
{
  v8 = a3;
  v9 = a5;
  v14.receiver = self;
  v14.super_class = ICAttachmentViewController;
  v10 = [(ICAttachmentViewController *)&v14 initWithNibName:0 bundle:0];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_textAttachment, v8);
    v12 = [v8 attachment];
    objc_storeWeak(&v11->_attachment, v12);

    v11->_forManualRendering = a4;
    objc_storeWeak(&v11->_layoutManager, v9);
  }

  return v11;
}

- (ICAttachmentViewController)initWithTextAttachment:(id)a3 forManualRendering:(BOOL)a4 textLayoutManager:(id)a5
{
  v8 = a3;
  v9 = a5;
  v14.receiver = self;
  v14.super_class = ICAttachmentViewController;
  v10 = [(ICAttachmentViewController *)&v14 initWithNibName:0 bundle:0];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_textAttachment, v8);
    v12 = [v8 attachment];
    objc_storeWeak(&v11->_attachment, v12);

    v11->_forManualRendering = a4;
    objc_storeWeak(&v11->_textLayoutManager, v9);
  }

  return v11;
}

- (void)loadView
{
  v3 = [(ICAttachmentViewController *)self textLayoutManager];
  v4 = [v3 textContainer];
  v5 = v4;
  if (v4)
  {
    v12 = v4;
  }

  else
  {
    v6 = [(ICAttachmentViewController *)self layoutManager];
    v7 = [v6 textContainers];
    v12 = [v7 lastObject];
  }

  v8 = [(ICAttachmentViewController *)self forManualRendering];
  v9 = [(ICAttachmentViewController *)self textAttachment];
  v10 = v9;
  if (v8)
  {
    [v9 newlyCreatedViewForManualRenderingInTextContainer:v12];
  }

  else
  {
    [v9 newlyCreatedViewForTextContainer:v12];
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
    v4 = [(ICAttachmentViewController *)self view];
    WeakRetained = ICDynamicCast();

    v5 = [WeakRetained textAttachment];
    objc_storeWeak(&self->_textAttachment, v5);
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