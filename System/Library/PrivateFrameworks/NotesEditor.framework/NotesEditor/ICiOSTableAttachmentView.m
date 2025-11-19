@interface ICiOSTableAttachmentView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (id)accessibilityElements;
- (id)accessibilityLabel;
- (id)tableAttachmentViewController;
- (id)targetForAction:(SEL)a3 withSender:(id)a4;
- (void)didMoveToSuperview;
- (void)imageForTextPreviewUsingFindingResult:(id)a3 inTextView:(id)a4 completion:(id)a5;
- (void)setHighlightColor:(id)a3;
- (void)setHighlightPatternRegexFinder:(id)a3;
@end

@implementation ICiOSTableAttachmentView

- (id)tableAttachmentViewController
{
  v2 = [(ICiOSTableAttachmentView *)self nextResponder];
  if (v2)
  {
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v3 = [v2 nextResponder];

      v2 = v3;
      if (!v3)
      {
        goto LABEL_6;
      }
    }

    v2 = v2;
  }

LABEL_6:

  return v2;
}

- (void)setHighlightPatternRegexFinder:(id)a3
{
  v6.receiver = self;
  v6.super_class = ICiOSTableAttachmentView;
  v4 = a3;
  [(ICiOSTableAttachmentView *)&v6 setHighlightPatternRegexFinder:v4];
  v5 = [(ICiOSTableAttachmentView *)self tableAttachmentViewController:v6.receiver];
  [v5 setHighlightPatternRegexFinder:v4];
}

- (void)didMoveToSuperview
{
  v4.receiver = self;
  v4.super_class = ICiOSTableAttachmentView;
  [(ICiOSTableAttachmentView *)&v4 didMoveToSuperview];
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    v3 = [(ICiOSTableAttachmentView *)self tableAttachmentViewController];
    [v3 hideColumnRowButtons];
  }
}

- (id)targetForAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(ICiOSTableAttachmentView *)self nextResponder];
    v8 = [v7 targetForAction:a3 withSender:v6];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = ICiOSTableAttachmentView;
    v8 = [(ICAttachmentView *)&v10 targetForAction:a3 withSender:v6];
  }

  return v8;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v22 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v20.receiver = self;
  v20.super_class = ICiOSTableAttachmentView;
  if ([(ICiOSTableAttachmentView *)&v20 pointInside:v7 withEvent:x, y])
  {
    v8 = 1;
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = [(ICTableAttachmentView *)self outsideViews];
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v16 + 1) + 8 * i);
          if ([v14 isDescendantOfView:self])
          {
            if (([v14 isHidden] & 1) == 0)
            {
              [(ICiOSTableAttachmentView *)self convertPoint:v14 toView:x, y];
              if ([v14 pointInside:v7 withEvent:?])
              {
                v8 = 1;
                goto LABEL_15;
              }
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v8 = 0;
LABEL_15:
  }

  return v8;
}

- (void)setHighlightColor:(id)a3
{
  v6.receiver = self;
  v6.super_class = ICiOSTableAttachmentView;
  v4 = a3;
  [(ICiOSTableAttachmentView *)&v6 setHighlightColor:v4];
  v5 = [(ICiOSTableAttachmentView *)self tableAttachmentViewController:v6.receiver];
  [v5 setHighlightColor:v4];
}

- (void)imageForTextPreviewUsingFindingResult:(id)a3 inTextView:(id)a4 completion:(id)a5
{
  if (a5)
  {
    (*(a5 + 2))(a5, 0);
  }
}

- (id)accessibilityLabel
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"Table attachment" value:&stru_282757698 table:0];

  return v3;
}

- (id)accessibilityElements
{
  v3 = [(ICiOSTableAttachmentView *)self tableAttachmentViewController];
  [v3 initializeTableAccessibilityControllerIfNecessary];

  v4 = [(ICiOSTableAttachmentView *)self tableAttachmentViewController];
  v5 = [v4 tableAXController];

  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [v5 tableElement];
  [v6 ic_addNonNilObject:v7];

  v8 = [v6 copy];

  return v8;
}

@end