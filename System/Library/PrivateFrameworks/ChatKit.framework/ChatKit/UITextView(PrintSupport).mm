@interface UITextView(PrintSupport)
- (void)ck_drawVisibleTextInCurrentContextWithContainerView:()PrintSupport;
@end

@implementation UITextView(PrintSupport)

- (void)ck_drawVisibleTextInCurrentContextWithContainerView:()PrintSupport
{
  v36[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a1 textLayoutManager];

  if (!v6)
  {
    [(UITextView(PrintSupport) *)a2 ck_drawVisibleTextInCurrentContextWithContainerView:a1];
  }

  [a1 alpha];
  if (!CKFloatApproximatelyEqualToFloatWithTolerance(v7, 0.0, 0.00000999999975))
  {
    [(UITextView(PrintSupport) *)a2 ck_drawVisibleTextInCurrentContextWithContainerView:a1];
  }

  [a1 setAlpha:1.0];
  v35[0] = *MEMORY[0x1E69DB650];
  v8 = [MEMORY[0x1E69DC888] linkColor];
  v35[1] = *MEMORY[0x1E69DB758];
  v36[0] = v8;
  v36[1] = &unk_1F04E7698;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];
  [a1 setLinkTextAttributes:v9];

  v10 = [a1 textLayoutManager];
  [a1 bounds];
  [v10 ensureLayoutForBounds:?];

  [a1 bounds];
  v12 = v11;
  v14 = v13;
  [a1 textContainerInset];
  v16 = v15;
  v18 = v17;
  [a1 convertPoint:v5 toView:{v12, v14}];
  v20 = v19;
  v22 = v21;

  v23 = [a1 textLayoutManager];
  v24 = [v23 textViewportLayoutController];
  v25 = [v24 viewportRange];

  v26 = [a1 textLayoutManager];
  v27 = [v25 location];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __80__UITextView_PrintSupport__ck_drawVisibleTextInCurrentContextWithContainerView___block_invoke;
  v30[3] = &unk_1E72ECA38;
  v31 = v25;
  v32 = a1;
  v33 = v18 + v20;
  v34 = v16 + v22;
  v28 = v25;
  v29 = [v26 enumerateTextLayoutFragmentsFromLocation:v27 options:4 usingBlock:v30];

  [a1 setAlpha:0.0];
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