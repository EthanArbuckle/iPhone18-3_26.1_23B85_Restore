@interface ICDocCamZoomablePageContentImageView
- (ICDocCamZoomablePageContentViewDelegate)pageContentViewDelegate;
- (id)_accessibilityScrollAncestorForSelector:(SEL)selector;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation ICDocCamZoomablePageContentImageView

- (id)_accessibilityScrollAncestorForSelector:(SEL)selector
{
  v3 = sel_accessibilityScrollRightPage == selector || sel_accessibilityScrollLeftPage == selector;
  if (v3 && ([(ICDocCamZoomablePageContentImageView *)self nextResponder], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      nextResponder = [v5 nextResponder];

      v5 = nextResponder;
      if (!nextResponder)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v7 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ICDocCamZoomablePageContentImageView _accessibilityScrollAncestorForSelector:v7];
    }

    v5 = 0;
  }

  return v5;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  anyObject = [beganCopy anyObject];
  type = [anyObject type];

  if (type == 2)
  {
    pageContentViewDelegate = [(ICDocCamZoomablePageContentImageView *)self pageContentViewDelegate];

    if (pageContentViewDelegate)
    {
      pageContentViewDelegate2 = [(ICDocCamZoomablePageContentImageView *)self pageContentViewDelegate];
      [pageContentViewDelegate2 pageContentViewDidPencilDown];
    }
  }

  v12.receiver = self;
  v12.super_class = ICDocCamZoomablePageContentImageView;
  [(ICDocCamZoomablePageContentImageView *)&v12 touchesBegan:beganCopy withEvent:eventCopy];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  pageContentViewDelegate = [(ICDocCamZoomablePageContentImageView *)self pageContentViewDelegate];
  v9 = [pageContentViewDelegate isTouchingAnalyzableContentAtPoint:eventCopy withEvent:{x, y}];

  if (v9)
  {
    v13.receiver = self;
    v13.super_class = ICDocCamZoomablePageContentImageView;
    selfCopy = [(ICDocCamZoomablePageContentImageView *)&v13 hitTest:eventCopy withEvent:x, y];
  }

  else
  {
    selfCopy = self;
  }

  v11 = selfCopy;

  return v11;
}

- (ICDocCamZoomablePageContentViewDelegate)pageContentViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pageContentViewDelegate);

  return WeakRetained;
}

- (void)_accessibilityScrollAncestorForSelector:(os_log_t)log .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "scrollAncestor";
  _os_log_error_impl(&dword_249253000, log, OS_LOG_TYPE_ERROR, "invalid nil value for '%s'", &v1, 0xCu);
}

@end