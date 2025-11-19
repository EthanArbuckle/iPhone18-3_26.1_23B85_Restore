@interface ICTK2TextAttachmentViewProvider
- (ICAttachmentView)attachmentViewIfLoaded;
- (ICTK2TextAttachmentViewProvider)initWithTextAttachment:(id)a3 parentView:(id)a4 textLayoutManager:(id)a5 location:(id)a6;
- (void)loadView;
- (void)setHighlightPatternRegexFinder:(id)a3;
@end

@implementation ICTK2TextAttachmentViewProvider

- (void)loadView
{
  objc_opt_class();
  v3 = [(NSTextAttachmentViewProvider *)self textLayoutManager];
  v14 = ICDynamicCast();

  objc_opt_class();
  v4 = [(NSTextAttachmentViewProvider *)self textAttachment];
  v5 = ICDynamicCast();

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v14 tableViewControllerForAttachment:v5 createIfNeeded:1], v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), objc_msgSend(v6, "view"), v7 = objc_claimAutoreleasedReturnValue(), ICDynamicCast(), v8 = objc_claimAutoreleasedReturnValue(), v7, objc_msgSend(0, "highlightColor"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "setHighlightColor:", v9), v9, v6, !v8))
  {
    objc_opt_class();
    v10 = [v14 textContainer];
    v11 = [v5 newlyCreatedViewForTextContainer:v10];
    v8 = ICDynamicCast();

    v12 = [(ICTK2TextAttachmentViewProvider *)self highlightPatternRegexFinder];
    [v8 setHighlightPatternRegexFinder:v12];
  }

  v13 = [v14 attachmentViewDelegate];
  [v8 setDelegate:v13];

  [(NSTextAttachmentViewProvider *)self setView:v8];
  [(ICTK2TextAttachmentViewProvider *)self setViewLoaded:1];
}

- (ICTK2TextAttachmentViewProvider)initWithTextAttachment:(id)a3 parentView:(id)a4 textLayoutManager:(id)a5 location:(id)a6
{
  v11 = a6;
  v15.receiver = self;
  v15.super_class = ICTK2TextAttachmentViewProvider;
  v12 = [(NSTextAttachmentViewProvider *)&v15 initWithTextAttachment:a3 parentView:a4 textLayoutManager:a5 location:v11];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_updatedLocationForRecycledViewProvider, a6);
  }

  return v13;
}

- (ICAttachmentView)attachmentViewIfLoaded
{
  if ([(ICTK2TextAttachmentViewProvider *)self viewLoaded])
  {
    objc_opt_class();
    v3 = [(NSTextAttachmentViewProvider *)self view];
    v4 = ICCheckedDynamicCast();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHighlightPatternRegexFinder:(id)a3
{
  objc_storeStrong(&self->_highlightPatternRegexFinder, a3);
  v5 = a3;
  objc_opt_class();
  v7 = [(ICTK2TextAttachmentViewProvider *)self attachmentViewIfLoaded];
  v6 = ICDynamicCast();
  [v6 setHighlightPatternRegexFinder:v5];
}

@end