@interface ICTableSelectionKnob
- (BOOL)isAccessibilityElement;
- (BOOL)isEnd;
- (BOOL)isStart;
- (BOOL)speakCurrentSelectionAXAction;
- (CGRect)circleRect;
- (ICTableAttachmentViewController)tableAttachmentViewController;
- (ICTableSelectionKnob)initWithFrame:(CGRect)a3;
- (ICTableSelectionKnob)initWithTableAttachmentViewController:(id)a3;
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
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityTextOperationAction:(id)a3;
- (void)dealloc;
- (void)drawRect:(CGRect)a3;
- (void)getBoldForSelection:(BOOL *)a3 italic:(BOOL *)a4 underline:(BOOL *)a5 strikethrough:(BOOL *)a6 rightToLeft:(BOOL *)a7;
- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5;
- (void)pointerInteraction:(id)a3 willExitRegion:(id)a4 animator:(id)a5;
- (void)setFrame:(CGRect)a3;
@end

@implementation ICTableSelectionKnob

- (ICTableSelectionKnob)initWithTableAttachmentViewController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICTableSelectionKnob;
  v5 = [(ICTableSelectionKnob *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_tableAttachmentViewController, v4);
  }

  return v6;
}

- (ICTableSelectionKnob)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = ICTableSelectionKnob;
  v3 = [(ICTableSelectionKnob *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D75870]) initWithDelegate:v3];
    pointerInteraction = v3->_pointerInteraction;
    v3->_pointerInteraction = v4;

    v6 = [MEMORY[0x277D75348] clearColor];
    [(ICTableSelectionKnob *)v3 setBackgroundColor:v6];

    v7 = [(ICTableSelectionKnob *)v3 pointerInteraction];
    [(ICTableSelectionKnob *)v3 addInteraction:v7];

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v3 selector:sel_accessibilityDarkerSystemColorsStatusDidChange_ name:*MEMORY[0x277D76460] object:0];
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICTableSelectionKnob;
  [(ICTableSelectionKnob *)&v4 dealloc];
}

- (void)setFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = ICTableSelectionKnob;
  [(ICTableSelectionKnob *)&v5 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = [(ICTableSelectionKnob *)self pointerInteraction];
  [v4 invalidate];
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

- (void)drawRect:(CGRect)a3
{
  CurrentContext = UIGraphicsGetCurrentContext();
  v8 = [(ICTableSelectionKnob *)self tintColor];
  v5 = [(ICTableSelectionKnob *)self isHovering];
  [(ICTableSelectionKnob *)self circleRect];
  CGContextAddEllipseInRect(CurrentContext, v10);
  if (v5)
  {
    v6 = [MEMORY[0x277D75348] whiteColor];
    CGContextSetFillColorWithColor(CurrentContext, [v6 CGColor]);

    CGContextFillPath(CurrentContext);
    [(ICTableSelectionKnob *)self circleRect];
    v12 = CGRectInset(v11, 1.0, 1.0);
    CGContextAddEllipseInRect(CurrentContext, v12);
  }

  v7 = v8;
  CGContextSetFillColorWithColor(CurrentContext, [v8 CGColor]);
  CGContextFillPath(CurrentContext);
}

- (BOOL)isStart
{
  v3 = [(ICTableSelectionKnob *)self tableAttachmentViewController];
  if (v3)
  {
    v4 = [(ICTableSelectionKnob *)self tableAttachmentViewController];
    v5 = [v4 startKnob];
    v6 = v5 == self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEnd
{
  v3 = [(ICTableSelectionKnob *)self tableAttachmentViewController];
  if (v3)
  {
    v4 = [(ICTableSelectionKnob *)self tableAttachmentViewController];
    v5 = [v4 endKnob];
    v6 = v5 == self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  [(ICTableSelectionKnob *)self circleRect:a3];
  v9 = CGRectInset(v8, -4.0, -4.0);
  v5 = MEMORY[0x277D75880];

  return [v5 regionWithRect:0 identifier:{v9.origin.x, v9.origin.y, v9.size.width, v9.size.height}];
}

- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5
{
  [(ICTableSelectionKnob *)self setHovering:1, a4, a5];

  [(ICTableSelectionKnob *)self setNeedsDisplay];
}

- (void)pointerInteraction:(id)a3 willExitRegion:(id)a4 animator:(id)a5
{
  [(ICTableSelectionKnob *)self setHovering:0, a4, a5];

  [(ICTableSelectionKnob *)self setNeedsDisplay];
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
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
  v2 = [(ICTableSelectionKnob *)self superview];
  v3 = v2 != 0;

  return v3;
}

- (id)accessibilityLabel
{
  if ([(ICTableSelectionKnob *)self isStart])
  {
    v3 = [MEMORY[0x277CCA8D8] mainBundle];
    v4 = v3;
    v5 = @"Start selection handle";
LABEL_5:
    v6 = [v3 localizedStringForKey:v5 value:&stru_282757698 table:0];

    goto LABEL_7;
  }

  if ([(ICTableSelectionKnob *)self isEnd])
  {
    v3 = [MEMORY[0x277CCA8D8] mainBundle];
    v4 = v3;
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
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"Double tap and hold value:then drag to modify selected cell range." table:{&stru_282757698, 0}];

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
  v2 = [(ICTableSelectionKnob *)self tableAttachmentViewController];
  v3 = [v2 tableAXController];
  v4 = [v3 tableElement];

  return v4;
}

- (id)accessibilityCustomActions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D75088]);
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [v4 localizedStringForKey:@"Speak current selection" value:&stru_282757698 table:0];
  v6 = [v3 initWithName:v5 target:self selector:sel_speakCurrentSelectionAXAction];

  v9[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  return v7;
}

- (id)_accessibilityTextOperations
{
  v3 = [MEMORY[0x277CBEB18] array];
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
  v9 = [(ICTableSelectionKnob *)self tableAttachmentViewController];
  v10 = [v9 canPerformAction:sel_cut_ withSender:self];

  if (v10)
  {
    v11 = [(ICTableSelectionKnob *)self axCutString];
    [v3 addObject:v11];
  }

  v12 = [(ICTableSelectionKnob *)self tableAttachmentViewController];
  v13 = [v12 canPerformAction:sel_copy_ withSender:self];

  if (v13)
  {
    v14 = [(ICTableSelectionKnob *)self axCopyString];
    [v3 addObject:v14];
  }

  v15 = [(ICTableSelectionKnob *)self tableAttachmentViewController];
  v16 = [v15 canPerformAction:sel_paste_ withSender:self];

  if (v16)
  {
    v15 = [(ICTableSelectionKnob *)self axPasteString];
    [v3 addObject:v15];
  }

  [v3 addObject:v4];
  [v3 addObject:v5];
  [v3 addObject:v6];
  [v3 addObject:v7];
  v17 = v22;
  if (v22 == 1)
  {
    v15 = [(ICTableSelectionKnob *)self tableAttachmentViewController];
    if ([v15 canPerformAction:sel_makeTextWritingDirectionLeftToRight_ withSender:0])
    {

      goto LABEL_31;
    }

    if (v22)
    {

      goto LABEL_32;
    }
  }

  v18 = [(ICTableSelectionKnob *)self tableAttachmentViewController];
  v19 = [v18 canPerformAction:sel_makeTextWritingDirectionRightToLeft_ withSender:0];

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
    [v3 addObject:v8];
  }

LABEL_32:
  v20 = [v3 copy];

  return v20;
}

- (void)_accessibilityTextOperationAction:(id)a3
{
  v27 = a3;
  v4 = [(ICTableSelectionKnob *)self axCutString];
  v5 = [v27 isEqualToString:v4];

  if (v5)
  {
    v6 = [(ICTableSelectionKnob *)self tableAttachmentViewController];
    [v6 cut:self];
LABEL_11:

    goto LABEL_12;
  }

  v7 = [(ICTableSelectionKnob *)self axCopyString];
  v8 = [v27 isEqualToString:v7];

  if (v8)
  {
    v6 = [(ICTableSelectionKnob *)self tableAttachmentViewController];
    [v6 copy:self];
    goto LABEL_11;
  }

  v9 = [(ICTableSelectionKnob *)self axPasteString];
  v10 = [v27 isEqualToString:v9];

  if (v10)
  {
    v6 = [(ICTableSelectionKnob *)self tableAttachmentViewController];
    [v6 paste:self];
    goto LABEL_11;
  }

  v11 = [(ICTableSelectionKnob *)self axMakeNotBoldString];
  if ([v27 isEqualToString:v11])
  {

LABEL_10:
    v6 = [(ICTableSelectionKnob *)self tableAttachmentViewController];
    [v6 toggleBoldface:self];
    goto LABEL_11;
  }

  v12 = [(ICTableSelectionKnob *)self axMakeBoldString];
  v13 = [v27 isEqualToString:v12];

  if (v13)
  {
    goto LABEL_10;
  }

  v14 = [(ICTableSelectionKnob *)self axMakeNotItalicString];
  if ([v27 isEqualToString:v14])
  {

LABEL_18:
    v6 = [(ICTableSelectionKnob *)self tableAttachmentViewController];
    [v6 toggleItalics:self];
    goto LABEL_11;
  }

  v15 = [(ICTableSelectionKnob *)self axMakeItalicString];
  v16 = [v27 isEqualToString:v15];

  if (v16)
  {
    goto LABEL_18;
  }

  v17 = [(ICTableSelectionKnob *)self axMakeNotUnderlinedString];
  if ([v27 isEqualToString:v17])
  {

LABEL_22:
    v6 = [(ICTableSelectionKnob *)self tableAttachmentViewController];
    [v6 toggleUnderline:self];
    goto LABEL_11;
  }

  v18 = [(ICTableSelectionKnob *)self axMakeUnderlinedString];
  v19 = [v27 isEqualToString:v18];

  if (v19)
  {
    goto LABEL_22;
  }

  v20 = [(ICTableSelectionKnob *)self axMakeNotStrikethroughString];
  if ([v27 isEqualToString:v20])
  {

LABEL_26:
    v6 = [(ICTableSelectionKnob *)self tableAttachmentViewController];
    [v6 toggleStrikethrough:self];
    goto LABEL_11;
  }

  v21 = [(ICTableSelectionKnob *)self axMakeStrikethroughString];
  v22 = [v27 isEqualToString:v21];

  if (v22)
  {
    goto LABEL_26;
  }

  v23 = [(ICTableSelectionKnob *)self axLeftToRightString];
  v24 = [v27 isEqualToString:v23];

  if (v24)
  {
    v6 = [(ICTableSelectionKnob *)self tableAttachmentViewController];
    [v6 makeTextWritingDirectionLeftToRight:self];
    goto LABEL_11;
  }

  v25 = [(ICTableSelectionKnob *)self axRightToLeftString];
  v26 = [v27 isEqualToString:v25];

  if (v26)
  {
    v6 = [(ICTableSelectionKnob *)self tableAttachmentViewController];
    [v6 makeTextWritingDirectionRightToLeft:self];
    goto LABEL_11;
  }

LABEL_12:
}

- (void)getBoldForSelection:(BOOL *)a3 italic:(BOOL *)a4 underline:(BOOL *)a5 strikethrough:(BOOL *)a6 rightToLeft:(BOOL *)a7
{
  v13 = [(ICTableSelectionKnob *)self tableAttachmentViewController];
  v14 = [v13 auxiliaryStylingController];
  v15 = [v14 selectedStyleBIUS];

  *a3 = v15 & 1;
  *a4 = (v15 & 2) != 0;
  *a5 = (v15 & 4) != 0;
  *a6 = (v15 & 8) != 0;
  v16 = [(ICTableSelectionKnob *)self aggregatedAttributedTextForCellRangeSelection];
  *a7 = 1;
  v17 = *MEMORY[0x277D35DA8];
  v18 = [v16 length];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __108__ICTableSelectionKnob_ICAccessibility_iOS__getBoldForSelection_italic_underline_strikethrough_rightToLeft___block_invoke;
  v19[3] = &__block_descriptor_40_e27_v40__0_8__NSRange_QQ_16_B32l;
  v19[4] = a7;
  [v16 enumerateAttribute:v17 inRange:0 options:v18 usingBlock:{0, v19}];
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
  v4 = [(ICTableSelectionKnob *)self tableAttachmentViewController];
  v5 = [v4 tableSelection];
  v24 = [v5 columns];

  v6 = [(ICTableSelectionKnob *)self tableAttachmentViewController];
  v7 = [v6 tableSelection];
  v8 = [v7 rows];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v8;
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
        v11 = v24;
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
              v17 = [(ICTableSelectionKnob *)self tableAttachmentViewController];
              v18 = [v17 tableAXController];
              v19 = [v18 attributedContentStringForColumnID:v16 rowID:v10];

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
  v3 = [(ICTableSelectionKnob *)self tableAttachmentViewController];
  v4 = [v3 tableAXController];
  v5 = [(ICTableSelectionKnob *)self tableAttachmentViewController];
  v6 = [v5 tableSelection];
  [v4 speakCellRangeSelection:v6];

  return 1;
}

- (id)axCutString
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"Cut" value:&stru_282757698 table:0];

  return v3;
}

- (id)axCopyString
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"Copy" value:&stru_282757698 table:0];

  return v3;
}

- (id)axPasteString
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"Paste" value:&stru_282757698 table:0];

  return v3;
}

- (id)axRightToLeftString
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"Set right to left" value:&stru_282757698 table:0];

  return v3;
}

- (id)axLeftToRightString
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"set left to right" value:&stru_282757698 table:0];

  return v3;
}

- (id)axMakeBoldString
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"Set bold" value:&stru_282757698 table:0];

  return v3;
}

- (id)axMakeNotBoldString
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"Set not bold" value:&stru_282757698 table:0];

  return v3;
}

- (id)axMakeItalicString
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"Set italic" value:&stru_282757698 table:0];

  return v3;
}

- (id)axMakeNotItalicString
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"Set not italic" value:&stru_282757698 table:0];

  return v3;
}

- (id)axMakeUnderlinedString
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"Set underline" value:&stru_282757698 table:0];

  return v3;
}

- (id)axMakeNotUnderlinedString
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"Set not underline" value:&stru_282757698 table:0];

  return v3;
}

- (id)axMakeStrikethroughString
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"Set strike-through" value:&stru_282757698 table:0];

  return v3;
}

- (id)axMakeNotStrikethroughString
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"Set not strike-through" value:&stru_282757698 table:0];

  return v3;
}

@end