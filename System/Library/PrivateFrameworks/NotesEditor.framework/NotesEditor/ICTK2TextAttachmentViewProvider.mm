@interface ICTK2TextAttachmentViewProvider
- (ICAttachmentView)attachmentViewIfLoaded;
- (ICTK2TextAttachmentViewProvider)initWithTextAttachment:(id)attachment parentView:(id)view textLayoutManager:(id)manager location:(id)location;
- (void)loadView;
- (void)setHighlightPatternRegexFinder:(id)finder;
@end

@implementation ICTK2TextAttachmentViewProvider

- (void)loadView
{
  objc_opt_class();
  textLayoutManager = [(NSTextAttachmentViewProvider *)self textLayoutManager];
  v14 = ICDynamicCast();

  objc_opt_class();
  textAttachment = [(NSTextAttachmentViewProvider *)self textAttachment];
  v5 = ICDynamicCast();

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v14 tableViewControllerForAttachment:v5 createIfNeeded:1], v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), objc_msgSend(v6, "view"), v7 = objc_claimAutoreleasedReturnValue(), ICDynamicCast(), v8 = objc_claimAutoreleasedReturnValue(), v7, objc_msgSend(0, "highlightColor"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "setHighlightColor:", v9), v9, v6, !v8))
  {
    objc_opt_class();
    textContainer = [v14 textContainer];
    v11 = [v5 newlyCreatedViewForTextContainer:textContainer];
    v8 = ICDynamicCast();

    highlightPatternRegexFinder = [(ICTK2TextAttachmentViewProvider *)self highlightPatternRegexFinder];
    [v8 setHighlightPatternRegexFinder:highlightPatternRegexFinder];
  }

  attachmentViewDelegate = [v14 attachmentViewDelegate];
  [v8 setDelegate:attachmentViewDelegate];

  [(NSTextAttachmentViewProvider *)self setView:v8];
  [(ICTK2TextAttachmentViewProvider *)self setViewLoaded:1];
}

- (ICTK2TextAttachmentViewProvider)initWithTextAttachment:(id)attachment parentView:(id)view textLayoutManager:(id)manager location:(id)location
{
  locationCopy = location;
  v15.receiver = self;
  v15.super_class = ICTK2TextAttachmentViewProvider;
  v12 = [(NSTextAttachmentViewProvider *)&v15 initWithTextAttachment:attachment parentView:view textLayoutManager:manager location:locationCopy];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_updatedLocationForRecycledViewProvider, location);
  }

  return v13;
}

- (ICAttachmentView)attachmentViewIfLoaded
{
  if ([(ICTK2TextAttachmentViewProvider *)self viewLoaded])
  {
    objc_opt_class();
    view = [(NSTextAttachmentViewProvider *)self view];
    v4 = ICCheckedDynamicCast();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHighlightPatternRegexFinder:(id)finder
{
  objc_storeStrong(&self->_highlightPatternRegexFinder, finder);
  finderCopy = finder;
  objc_opt_class();
  attachmentViewIfLoaded = [(ICTK2TextAttachmentViewProvider *)self attachmentViewIfLoaded];
  v6 = ICDynamicCast();
  [v6 setHighlightPatternRegexFinder:finderCopy];
}

@end