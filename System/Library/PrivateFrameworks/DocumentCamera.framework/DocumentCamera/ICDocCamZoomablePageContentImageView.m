@interface ICDocCamZoomablePageContentImageView
- (ICDocCamZoomablePageContentViewDelegate)pageContentViewDelegate;
- (id)_accessibilityScrollAncestorForSelector:(SEL)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation ICDocCamZoomablePageContentImageView

- (id)_accessibilityScrollAncestorForSelector:(SEL)a3
{
  v3 = sel_accessibilityScrollRightPage == a3 || sel_accessibilityScrollLeftPage == a3;
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

      v6 = [v5 nextResponder];

      v5 = v6;
      if (!v6)
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

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 anyObject];
  v9 = [v8 type];

  if (v9 == 2)
  {
    v10 = [(ICDocCamZoomablePageContentImageView *)self pageContentViewDelegate];

    if (v10)
    {
      v11 = [(ICDocCamZoomablePageContentImageView *)self pageContentViewDelegate];
      [v11 pageContentViewDidPencilDown];
    }
  }

  v12.receiver = self;
  v12.super_class = ICDocCamZoomablePageContentImageView;
  [(ICDocCamZoomablePageContentImageView *)&v12 touchesBegan:v6 withEvent:v7];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(ICDocCamZoomablePageContentImageView *)self pageContentViewDelegate];
  v9 = [v8 isTouchingAnalyzableContentAtPoint:v7 withEvent:{x, y}];

  if (v9)
  {
    v13.receiver = self;
    v13.super_class = ICDocCamZoomablePageContentImageView;
    v10 = [(ICDocCamZoomablePageContentImageView *)&v13 hitTest:v7 withEvent:x, y];
  }

  else
  {
    v10 = self;
  }

  v11 = v10;

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