@interface UITextView(PrintSupport)
- (void)ck_drawVisibleTextInCurrentContextWithContainerView:()PrintSupport;
@end

@implementation UITextView(PrintSupport)

- (void)ck_drawVisibleTextInCurrentContextWithContainerView:()PrintSupport
{
  v36[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  textLayoutManager = [self textLayoutManager];

  if (!textLayoutManager)
  {
    [(UITextView(PrintSupport) *)a2 ck_drawVisibleTextInCurrentContextWithContainerView:self];
  }

  [self alpha];
  if (!CKFloatApproximatelyEqualToFloatWithTolerance(v7, 0.0, 0.00000999999975))
  {
    [(UITextView(PrintSupport) *)a2 ck_drawVisibleTextInCurrentContextWithContainerView:self];
  }

  [self setAlpha:1.0];
  v35[0] = *MEMORY[0x1E69DB650];
  linkColor = [MEMORY[0x1E69DC888] linkColor];
  v35[1] = *MEMORY[0x1E69DB758];
  v36[0] = linkColor;
  v36[1] = &unk_1F04E7698;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];
  [self setLinkTextAttributes:v9];

  textLayoutManager2 = [self textLayoutManager];
  [self bounds];
  [textLayoutManager2 ensureLayoutForBounds:?];

  [self bounds];
  v12 = v11;
  v14 = v13;
  [self textContainerInset];
  v16 = v15;
  v18 = v17;
  [self convertPoint:v5 toView:{v12, v14}];
  v20 = v19;
  v22 = v21;

  textLayoutManager3 = [self textLayoutManager];
  textViewportLayoutController = [textLayoutManager3 textViewportLayoutController];
  viewportRange = [textViewportLayoutController viewportRange];

  textLayoutManager4 = [self textLayoutManager];
  location = [viewportRange location];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __80__UITextView_PrintSupport__ck_drawVisibleTextInCurrentContextWithContainerView___block_invoke;
  v30[3] = &unk_1E72ECA38;
  v31 = viewportRange;
  selfCopy = self;
  v33 = v18 + v20;
  v34 = v16 + v22;
  v28 = viewportRange;
  v29 = [textLayoutManager4 enumerateTextLayoutFragmentsFromLocation:location options:4 usingBlock:v30];

  [self setAlpha:0.0];
}

- (void)ck_drawVisibleTextInCurrentContextWithContainerView:()PrintSupport .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CKTranscriptPrintPageRenderer.m" lineNumber:30 description:@"Unable to draw a text view without a text layout manager."];
}

- (void)ck_drawVisibleTextInCurrentContextWithContainerView:()PrintSupport .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CKTranscriptPrintPageRenderer.m" lineNumber:31 description:@"Expected to have an alpha value of 0."];
}

@end