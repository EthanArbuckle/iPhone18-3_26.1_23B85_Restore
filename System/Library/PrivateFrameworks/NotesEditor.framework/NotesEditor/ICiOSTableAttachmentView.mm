@interface ICiOSTableAttachmentView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (id)accessibilityElements;
- (id)accessibilityLabel;
- (id)tableAttachmentViewController;
- (id)targetForAction:(SEL)action withSender:(id)sender;
- (void)didMoveToSuperview;
- (void)imageForTextPreviewUsingFindingResult:(id)result inTextView:(id)view completion:(id)completion;
- (void)setHighlightColor:(id)color;
- (void)setHighlightPatternRegexFinder:(id)finder;
@end

@implementation ICiOSTableAttachmentView

- (id)tableAttachmentViewController
{
  nextResponder = [(ICiOSTableAttachmentView *)self nextResponder];
  if (nextResponder)
  {
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v2NextResponder = [nextResponder nextResponder];

      nextResponder = v2NextResponder;
      if (!v2NextResponder)
      {
        goto LABEL_6;
      }
    }

    nextResponder = nextResponder;
  }

LABEL_6:

  return nextResponder;
}

- (void)setHighlightPatternRegexFinder:(id)finder
{
  v6.receiver = self;
  v6.super_class = ICiOSTableAttachmentView;
  finderCopy = finder;
  [(ICiOSTableAttachmentView *)&v6 setHighlightPatternRegexFinder:finderCopy];
  v5 = [(ICiOSTableAttachmentView *)self tableAttachmentViewController:v6.receiver];
  [v5 setHighlightPatternRegexFinder:finderCopy];
}

- (void)didMoveToSuperview
{
  v4.receiver = self;
  v4.super_class = ICiOSTableAttachmentView;
  [(ICiOSTableAttachmentView *)&v4 didMoveToSuperview];
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    tableAttachmentViewController = [(ICiOSTableAttachmentView *)self tableAttachmentViewController];
    [tableAttachmentViewController hideColumnRowButtons];
  }
}

- (id)targetForAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    nextResponder = [(ICiOSTableAttachmentView *)self nextResponder];
    v8 = [nextResponder targetForAction:action withSender:senderCopy];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = ICiOSTableAttachmentView;
    v8 = [(ICAttachmentView *)&v10 targetForAction:action withSender:senderCopy];
  }

  return v8;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  v22 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v20.receiver = self;
  v20.super_class = ICiOSTableAttachmentView;
  if ([(ICiOSTableAttachmentView *)&v20 pointInside:eventCopy withEvent:x, y])
  {
    v8 = 1;
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    outsideViews = [(ICTableAttachmentView *)self outsideViews];
    v10 = [outsideViews countByEnumeratingWithState:&v16 objects:v21 count:16];
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
            objc_enumerationMutation(outsideViews);
          }

          v14 = *(*(&v16 + 1) + 8 * i);
          if ([v14 isDescendantOfView:self])
          {
            if (([v14 isHidden] & 1) == 0)
            {
              [(ICiOSTableAttachmentView *)self convertPoint:v14 toView:x, y];
              if ([v14 pointInside:eventCopy withEvent:?])
              {
                v8 = 1;
                goto LABEL_15;
              }
            }
          }
        }

        v11 = [outsideViews countByEnumeratingWithState:&v16 objects:v21 count:16];
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

- (void)setHighlightColor:(id)color
{
  v6.receiver = self;
  v6.super_class = ICiOSTableAttachmentView;
  colorCopy = color;
  [(ICiOSTableAttachmentView *)&v6 setHighlightColor:colorCopy];
  v5 = [(ICiOSTableAttachmentView *)self tableAttachmentViewController:v6.receiver];
  [v5 setHighlightColor:colorCopy];
}

- (void)imageForTextPreviewUsingFindingResult:(id)result inTextView:(id)view completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0);
  }
}

- (id)accessibilityLabel
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Table attachment" value:&stru_282757698 table:0];

  return v3;
}

- (id)accessibilityElements
{
  tableAttachmentViewController = [(ICiOSTableAttachmentView *)self tableAttachmentViewController];
  [tableAttachmentViewController initializeTableAccessibilityControllerIfNecessary];

  tableAttachmentViewController2 = [(ICiOSTableAttachmentView *)self tableAttachmentViewController];
  tableAXController = [tableAttachmentViewController2 tableAXController];

  array = [MEMORY[0x277CBEB18] array];
  tableElement = [tableAXController tableElement];
  [array ic_addNonNilObject:tableElement];

  v8 = [array copy];

  return v8;
}

@end