@interface ICTableSelectionKnob
- (BOOL)isAccessibilityElement;
- (BOOL)isEnd;
- (BOOL)isStart;
- (BOOL)speakCurrentSelectionAXAction;
- (CGRect)circleRect;
- (ICTableAttachmentViewController)tableAttachmentViewController;
- (ICTableSelectionKnob)initWithFrame:(CGRect)frame;
- (ICTableSelectionKnob)initWithTableAttachmentViewController:(id)controller;
- (id)_accessibilityTextOperations;
- (id)accessibilityContainer;
- (id)accessibilityCustomActions;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)aggregatedAttributedTextForCellRangeSelection;
- (id)axCopyString;
- (id)axCutString;
- (id)axLeftToRightString;
- (id)axMakeBoldString;
- (id)axMakeItalicString;
- (id)axMakeNotBoldString;
- (id)axMakeNotItalicString;
- (id)axMakeNotStrikethroughString;
- (id)axMakeNotUnderlinedString;
- (id)axMakeStrikethroughString;
- (id)axMakeUnderlinedString;
- (id)axPasteString;
- (id)axRightToLeftString;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityTextOperationAction:(id)action;
- (void)dealloc;
- (void)drawRect:(CGRect)rect;
- (void)getBoldForSelection:(BOOL *)selection italic:(BOOL *)italic underline:(BOOL *)underline strikethrough:(BOOL *)strikethrough rightToLeft:(BOOL *)left;
- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator;
- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator;
- (void)setFrame:(CGRect)frame;
@end

@implementation ICTableSelectionKnob

- (ICTableSelectionKnob)initWithTableAttachmentViewController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = ICTableSelectionKnob;
  v5 = [(ICTableSelectionKnob *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_tableAttachmentViewController, controllerCopy);
  }

  return v6;
}

- (ICTableSelectionKnob)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = ICTableSelectionKnob;
  v3 = [(ICTableSelectionKnob *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D75870]) initWithDelegate:v3];
    pointerInteraction = v3->_pointerInteraction;
    v3->_pointerInteraction = v4;

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(ICTableSelectionKnob *)v3 setBackgroundColor:clearColor];

    pointerInteraction = [(ICTableSelectionKnob *)v3 pointerInteraction];
    [(ICTableSelectionKnob *)v3 addInteraction:pointerInteraction];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_accessibilityDarkerSystemColorsStatusDidChange_ name:*MEMORY[0x277D76460] object:0];
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICTableSelectionKnob;
  [(ICTableSelectionKnob *)&v4 dealloc];
}

- (void)setFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = ICTableSelectionKnob;
  [(ICTableSelectionKnob *)&v5 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  pointerInteraction = [(ICTableSelectionKnob *)self pointerInteraction];
  [pointerInteraction invalidate];
}

- (CGRect)circleRect
{
  [(ICTableSelectionKnob *)self bounds];
  v4 = v3 * 0.5;
  [(ICTableSelectionKnob *)self bounds];
  v6 = v5 * 0.5;
  v7 = -*MEMORY[0x277D36620];
  v8 = 0;
  v9 = 0;
  v10 = v4;

  return CGRectInset(*&v10, v7, v7);
}

- (void)drawRect:(CGRect)rect
{
  CurrentContext = UIGraphicsGetCurrentContext();
  tintColor = [(ICTableSelectionKnob *)self tintColor];
  isHovering = [(ICTableSelectionKnob *)self isHovering];
  [(ICTableSelectionKnob *)self circleRect];
  CGContextAddEllipseInRect(CurrentContext, v10);
  if (isHovering)
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    CGContextSetFillColorWithColor(CurrentContext, [whiteColor CGColor]);

    CGContextFillPath(CurrentContext);
    [(ICTableSelectionKnob *)self circleRect];
    v12 = CGRectInset(v11, 1.0, 1.0);
    CGContextAddEllipseInRect(CurrentContext, v12);
  }

  v7 = tintColor;
  CGContextSetFillColorWithColor(CurrentContext, [tintColor CGColor]);
  CGContextFillPath(CurrentContext);
}

- (BOOL)isStart
{
  tableAttachmentViewController = [(ICTableSelectionKnob *)self tableAttachmentViewController];
  if (tableAttachmentViewController)
  {
    tableAttachmentViewController2 = [(ICTableSelectionKnob *)self tableAttachmentViewController];
    startKnob = [tableAttachmentViewController2 startKnob];
    v6 = startKnob == self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEnd
{
  tableAttachmentViewController = [(ICTableSelectionKnob *)self tableAttachmentViewController];
  if (tableAttachmentViewController)
  {
    tableAttachmentViewController2 = [(ICTableSelectionKnob *)self tableAttachmentViewController];
    endKnob = [tableAttachmentViewController2 endKnob];
    v6 = endKnob == self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  [(ICTableSelectionKnob *)self circleRect:interaction];
  v9 = CGRectInset(v8, -4.0, -4.0);
  v5 = MEMORY[0x277D75880];

  return [v5 regionWithRect:0 identifier:{v9.origin.x, v9.origin.y, v9.size.width, v9.size.height}];
}

- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator
{
  [(ICTableSelectionKnob *)self setHovering:1, region, animator];

  [(ICTableSelectionKnob *)self setNeedsDisplay];
}

- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator
{
  [(ICTableSelectionKnob *)self setHovering:0, region, animator];

  [(ICTableSelectionKnob *)self setNeedsDisplay];
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v5 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:self];
  v6 = [MEMORY[0x277D75878] effectWithPreview:v5];
  [(ICTableSelectionKnob *)self frame];
  v8 = v7;
  [(ICTableSelectionKnob *)self circleRect];
  v10 = v8 + v9;
  [(ICTableSelectionKnob *)self frame];
  v12 = v11;
  [(ICTableSelectionKnob *)self circleRect];
  v14 = v12 + v13;
  [(ICTableSelectionKnob *)self circleRect];
  v16 = v15;
  [(ICTableSelectionKnob *)self circleRect];
  v17 = [MEMORY[0x277D75888] shapeWithRoundedRect:v10 cornerRadius:{v14, v16}];
  v18 = [MEMORY[0x277D75890] styleWithEffect:v6 shape:v17];

  return v18;
}

- (ICTableAttachmentViewController)tableAttachmentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_tableAttachmentViewController);

  return WeakRetained;
}

- (BOOL)isAccessibilityElement
{
  superview = [(ICTableSelectionKnob *)self superview];
  v3 = superview != 0;

  return v3;
}

- (id)accessibilityLabel
{
  if ([(ICTableSelectionKnob *)self isStart])
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v4 = mainBundle;
    v5 = @"Start selection handle";
LABEL_5:
    v6 = [mainBundle localizedStringForKey:v5 value:&stru_282757698 table:0];

    goto LABEL_7;
  }

  if ([(ICTableSelectionKnob *)self isEnd])
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v4 = mainBundle;
    v5 = @"End selection handle";
    goto LABEL_5;
  }

  [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICTableSelectionKnob(ICAccessibility_iOS) accessibilityLabel]" simulateCrash:1 showAlert:0 format:{@"Couldn't determine AX label for %@, make sure we have a tableAttachmentViewController set", self}];
  v6 = 0;
LABEL_7:

  return v6;
}

- (id)accessibilityHint
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Double tap and hold value:then drag to modify selected cell range." table:{&stru_282757698, 0}];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = ICTableSelectionKnob;
  return *MEMORY[0x277D74030] | [(ICTableSelectionKnob *)&v3 accessibilityTraits];
}

- (id)accessibilityContainer
{
  tableAttachmentViewController = [(ICTableSelectionKnob *)self tableAttachmentViewController];
  tableAXController = [tableAttachmentViewController tableAXController];
  tableElement = [tableAXController tableElement];

  return tableElement;
}

- (id)accessibilityCustomActions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D75088]);
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [mainBundle localizedStringForKey:@"Speak current selection" value:&stru_282757698 table:0];
  v6 = [v3 initWithName:v5 target:self selector:sel_speakCurrentSelectionAXAction];

  v9[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  return v7;
}

- (id)_accessibilityTextOperations
{
  array = [MEMORY[0x277CBEB18] array];
  v24 = 0;
  v23 = 0;
  v22 = 0;
  [(ICTableSelectionKnob *)self getBoldForSelection:&v24 + 1 italic:&v24 underline:&v23 + 1 strikethrough:&v23 rightToLeft:&v22];
  if ((v24 & 0x100) != 0)
  {
    [(ICTableSelectionKnob *)self axMakeNotBoldString];
  }

  else
  {
    [(ICTableSelectionKnob *)self axMakeBoldString];
  }
  v4 = ;
  if (v24)
  {
    [(ICTableSelectionKnob *)self axMakeNotItalicString];
  }

  else
  {
    [(ICTableSelectionKnob *)self axMakeItalicString];
  }
  v5 = ;
  if ((v23 & 0x100) != 0)
  {
    [(ICTableSelectionKnob *)self axMakeNotUnderlinedString];
  }

  else
  {
    [(ICTableSelectionKnob *)self axMakeUnderlinedString];
  }
  v6 = ;
  if (v23)
  {
    [(ICTableSelectionKnob *)self axMakeNotStrikethroughString];
  }

  else
  {
    [(ICTableSelectionKnob *)self axMakeStrikethroughString];
  }
  v7 = ;
  if (v22)
  {
    [(ICTableSelectionKnob *)self axLeftToRightString];
  }

  else
  {
    [(ICTableSelectionKnob *)self axRightToLeftString];
  }
  v8 = ;
  tableAttachmentViewController = [(ICTableSelectionKnob *)self tableAttachmentViewController];
  v10 = [tableAttachmentViewController canPerformAction:sel_cut_ withSender:self];

  if (v10)
  {
    axCutString = [(ICTableSelectionKnob *)self axCutString];
    [array addObject:axCutString];
  }

  tableAttachmentViewController2 = [(ICTableSelectionKnob *)self tableAttachmentViewController];
  v13 = [tableAttachmentViewController2 canPerformAction:sel_copy_ withSender:self];

  if (v13)
  {
    axCopyString = [(ICTableSelectionKnob *)self axCopyString];
    [array addObject:axCopyString];
  }

  tableAttachmentViewController3 = [(ICTableSelectionKnob *)self tableAttachmentViewController];
  v16 = [tableAttachmentViewController3 canPerformAction:sel_paste_ withSender:self];

  if (v16)
  {
    tableAttachmentViewController3 = [(ICTableSelectionKnob *)self axPasteString];
    [array addObject:tableAttachmentViewController3];
  }

  [array addObject:v4];
  [array addObject:v5];
  [array addObject:v6];
  [array addObject:v7];
  v17 = v22;
  if (v22 == 1)
  {
    tableAttachmentViewController3 = [(ICTableSelectionKnob *)self tableAttachmentViewController];
    if ([tableAttachmentViewController3 canPerformAction:sel_makeTextWritingDirectionLeftToRight_ withSender:0])
    {

      goto LABEL_31;
    }

    if (v22)
    {

      goto LABEL_32;
    }
  }

  tableAttachmentViewController4 = [(ICTableSelectionKnob *)self tableAttachmentViewController];
  v19 = [tableAttachmentViewController4 canPerformAction:sel_makeTextWritingDirectionRightToLeft_ withSender:0];

  if (!v17)
  {
    if (!v19)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if (v19)
  {
LABEL_31:
    [array addObject:v8];
  }

LABEL_32:
  v20 = [array copy];

  return v20;
}

- (void)_accessibilityTextOperationAction:(id)action
{
  actionCopy = action;
  axCutString = [(ICTableSelectionKnob *)self axCutString];
  v5 = [actionCopy isEqualToString:axCutString];

  if (v5)
  {
    tableAttachmentViewController = [(ICTableSelectionKnob *)self tableAttachmentViewController];
    [tableAttachmentViewController cut:self];
LABEL_11:

    goto LABEL_12;
  }

  axCopyString = [(ICTableSelectionKnob *)self axCopyString];
  v8 = [actionCopy isEqualToString:axCopyString];

  if (v8)
  {
    tableAttachmentViewController = [(ICTableSelectionKnob *)self tableAttachmentViewController];
    [tableAttachmentViewController copy:self];
    goto LABEL_11;
  }

  axPasteString = [(ICTableSelectionKnob *)self axPasteString];
  v10 = [actionCopy isEqualToString:axPasteString];

  if (v10)
  {
    tableAttachmentViewController = [(ICTableSelectionKnob *)self tableAttachmentViewController];
    [tableAttachmentViewController paste:self];
    goto LABEL_11;
  }

  axMakeNotBoldString = [(ICTableSelectionKnob *)self axMakeNotBoldString];
  if ([actionCopy isEqualToString:axMakeNotBoldString])
  {

LABEL_10:
    tableAttachmentViewController = [(ICTableSelectionKnob *)self tableAttachmentViewController];
    [tableAttachmentViewController toggleBoldface:self];
    goto LABEL_11;
  }

  axMakeBoldString = [(ICTableSelectionKnob *)self axMakeBoldString];
  v13 = [actionCopy isEqualToString:axMakeBoldString];

  if (v13)
  {
    goto LABEL_10;
  }

  axMakeNotItalicString = [(ICTableSelectionKnob *)self axMakeNotItalicString];
  if ([actionCopy isEqualToString:axMakeNotItalicString])
  {

LABEL_18:
    tableAttachmentViewController = [(ICTableSelectionKnob *)self tableAttachmentViewController];
    [tableAttachmentViewController toggleItalics:self];
    goto LABEL_11;
  }

  axMakeItalicString = [(ICTableSelectionKnob *)self axMakeItalicString];
  v16 = [actionCopy isEqualToString:axMakeItalicString];

  if (v16)
  {
    goto LABEL_18;
  }

  axMakeNotUnderlinedString = [(ICTableSelectionKnob *)self axMakeNotUnderlinedString];
  if ([actionCopy isEqualToString:axMakeNotUnderlinedString])
  {

LABEL_22:
    tableAttachmentViewController = [(ICTableSelectionKnob *)self tableAttachmentViewController];
    [tableAttachmentViewController toggleUnderline:self];
    goto LABEL_11;
  }

  axMakeUnderlinedString = [(ICTableSelectionKnob *)self axMakeUnderlinedString];
  v19 = [actionCopy isEqualToString:axMakeUnderlinedString];

  if (v19)
  {
    goto LABEL_22;
  }

  axMakeNotStrikethroughString = [(ICTableSelectionKnob *)self axMakeNotStrikethroughString];
  if ([actionCopy isEqualToString:axMakeNotStrikethroughString])
  {

LABEL_26:
    tableAttachmentViewController = [(ICTableSelectionKnob *)self tableAttachmentViewController];
    [tableAttachmentViewController toggleStrikethrough:self];
    goto LABEL_11;
  }

  axMakeStrikethroughString = [(ICTableSelectionKnob *)self axMakeStrikethroughString];
  v22 = [actionCopy isEqualToString:axMakeStrikethroughString];

  if (v22)
  {
    goto LABEL_26;
  }

  axLeftToRightString = [(ICTableSelectionKnob *)self axLeftToRightString];
  v24 = [actionCopy isEqualToString:axLeftToRightString];

  if (v24)
  {
    tableAttachmentViewController = [(ICTableSelectionKnob *)self tableAttachmentViewController];
    [tableAttachmentViewController makeTextWritingDirectionLeftToRight:self];
    goto LABEL_11;
  }

  axRightToLeftString = [(ICTableSelectionKnob *)self axRightToLeftString];
  v26 = [actionCopy isEqualToString:axRightToLeftString];

  if (v26)
  {
    tableAttachmentViewController = [(ICTableSelectionKnob *)self tableAttachmentViewController];
    [tableAttachmentViewController makeTextWritingDirectionRightToLeft:self];
    goto LABEL_11;
  }

LABEL_12:
}

- (void)getBoldForSelection:(BOOL *)selection italic:(BOOL *)italic underline:(BOOL *)underline strikethrough:(BOOL *)strikethrough rightToLeft:(BOOL *)left
{
  tableAttachmentViewController = [(ICTableSelectionKnob *)self tableAttachmentViewController];
  auxiliaryStylingController = [tableAttachmentViewController auxiliaryStylingController];
  selectedStyleBIUS = [auxiliaryStylingController selectedStyleBIUS];

  *selection = selectedStyleBIUS & 1;
  *italic = (selectedStyleBIUS & 2) != 0;
  *underline = (selectedStyleBIUS & 4) != 0;
  *strikethrough = (selectedStyleBIUS & 8) != 0;
  aggregatedAttributedTextForCellRangeSelection = [(ICTableSelectionKnob *)self aggregatedAttributedTextForCellRangeSelection];
  *left = 1;
  v17 = *MEMORY[0x277D35DA8];
  v18 = [aggregatedAttributedTextForCellRangeSelection length];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __108__ICTableSelectionKnob_ICAccessibility_iOS__getBoldForSelection_italic_underline_strikethrough_rightToLeft___block_invoke;
  v19[3] = &__block_descriptor_40_e27_v40__0_8__NSRange_QQ_16_B32l;
  v19[4] = left;
  [aggregatedAttributedTextForCellRangeSelection enumerateAttribute:v17 inRange:0 options:v18 usingBlock:{0, v19}];
}

void __108__ICTableSelectionKnob_ICAccessibility_iOS__getBoldForSelection_italic_underline_strikethrough_rightToLeft___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a2)
  {
    v7 = a2;
    objc_opt_class();
    v8 = ICDynamicCast();

    if ([v8 writingDirection] != 1)
    {
      **(a1 + 32) = 0;
      *a5 = 1;
    }
  }
}

- (id)aggregatedAttributedTextForCellRangeSelection
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB48]);
  tableAttachmentViewController = [(ICTableSelectionKnob *)self tableAttachmentViewController];
  tableSelection = [tableAttachmentViewController tableSelection];
  columns = [tableSelection columns];

  tableAttachmentViewController2 = [(ICTableSelectionKnob *)self tableAttachmentViewController];
  tableSelection2 = [tableAttachmentViewController2 tableSelection];
  rows = [tableSelection2 rows];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = rows;
  v25 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v25)
  {
    v23 = *v32;
    do
    {
      v9 = 0;
      do
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v26 = v9;
        v10 = *(*(&v31 + 1) + 8 * v9);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v11 = columns;
        v12 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v28;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v28 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v27 + 1) + 8 * i);
              tableAttachmentViewController3 = [(ICTableSelectionKnob *)self tableAttachmentViewController];
              tableAXController = [tableAttachmentViewController3 tableAXController];
              v19 = [tableAXController attributedContentStringForColumnID:v16 rowID:v10];

              if ([v19 length])
              {
                [v3 appendAttributedString:v19];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
          }

          while (v13);
        }

        v9 = v26 + 1;
      }

      while (v26 + 1 != v25);
      v25 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v25);
  }

  v20 = [v3 copy];

  return v20;
}

- (BOOL)speakCurrentSelectionAXAction
{
  tableAttachmentViewController = [(ICTableSelectionKnob *)self tableAttachmentViewController];
  tableAXController = [tableAttachmentViewController tableAXController];
  tableAttachmentViewController2 = [(ICTableSelectionKnob *)self tableAttachmentViewController];
  tableSelection = [tableAttachmentViewController2 tableSelection];
  [tableAXController speakCellRangeSelection:tableSelection];

  return 1;
}

- (id)axCutString
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Cut" value:&stru_282757698 table:0];

  return v3;
}

- (id)axCopyString
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Copy" value:&stru_282757698 table:0];

  return v3;
}

- (id)axPasteString
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Paste" value:&stru_282757698 table:0];

  return v3;
}

- (id)axRightToLeftString
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Set right to left" value:&stru_282757698 table:0];

  return v3;
}

- (id)axLeftToRightString
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"set left to right" value:&stru_282757698 table:0];

  return v3;
}

- (id)axMakeBoldString
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Set bold" value:&stru_282757698 table:0];

  return v3;
}

- (id)axMakeNotBoldString
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Set not bold" value:&stru_282757698 table:0];

  return v3;
}

- (id)axMakeItalicString
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Set italic" value:&stru_282757698 table:0];

  return v3;
}

- (id)axMakeNotItalicString
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Set not italic" value:&stru_282757698 table:0];

  return v3;
}

- (id)axMakeUnderlinedString
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Set underline" value:&stru_282757698 table:0];

  return v3;
}

- (id)axMakeNotUnderlinedString
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Set not underline" value:&stru_282757698 table:0];

  return v3;
}

- (id)axMakeStrikethroughString
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Set strike-through" value:&stru_282757698 table:0];

  return v3;
}

- (id)axMakeNotStrikethroughString
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Set not strike-through" value:&stru_282757698 table:0];

  return v3;
}

@end