@interface CKTranscriptPrintPageRenderer
+ (void)renderViewWithText:(id)a3 withOffsetVertical:(double)a4;
- (CGRect)currentPrintableRect;
- (CKTranscriptPrintPageRenderer)initWithTranscriptCollectionViewController:(id)a3;
- (int64_t)__computedNumberOfPagesForPrintableRect:(CGRect)a3;
- (int64_t)numberOfPages;
- (void)_determineNumberOfPages;
- (void)drawPageAtIndex:(int64_t)a3 inRect:(CGRect)a4;
- (void)drawScrollViewAtIndex:(int64_t)a3 inRect:(CGRect)a4;
@end

@implementation CKTranscriptPrintPageRenderer

- (CKTranscriptPrintPageRenderer)initWithTranscriptCollectionViewController:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CKTranscriptPrintPageRenderer;
  v6 = [(CKTranscriptPrintPageRenderer *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transcriptCollectionViewController, a3);
    v8 = [v5 collectionView];
    scrollView = v7->_scrollView;
    v7->_scrollView = v8;

    [(CKTranscriptPrintPageRenderer *)v7 setCurrentPrintableRect:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(CKTranscriptPrintPageRenderer *)v7 setNumberOfPagesForCurrentConfiguration:0];
  }

  return v7;
}

- (void)_determineNumberOfPages
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  [(UIPrintPageRenderer *)self printableRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CKTranscriptPrintPageRenderer *)self currentPrintableRect];
  v23.origin.x = v11;
  v23.origin.y = v12;
  v23.size.width = v13;
  v23.size.height = v14;
  v22.origin.x = v4;
  v22.origin.y = v6;
  v22.size.width = v8;
  v22.size.height = v10;
  if (!CGRectEqualToRect(v22, v23))
  {
    [(UIPrintPageRenderer *)self printableRect];
    [(CKTranscriptPrintPageRenderer *)self setNumberOfPagesForCurrentConfiguration:[(CKTranscriptPrintPageRenderer *)self __computedNumberOfPagesForPrintableRect:?]];
    [(UIPrintPageRenderer *)self printableRect];
    [(CKTranscriptPrintPageRenderer *)self setCurrentPrintableRect:?];
    v20 = [(CKTranscriptPrintPageRenderer *)self scrollView];
    [v20 contentSize];
    v16 = v15;
    v18 = v17;
    v19 = [(CKTranscriptPrintPageRenderer *)self scrollView];
    [v19 setFrame:{0.0, 0.0, v16, v18}];
  }
}

- (int64_t)__computedNumberOfPagesForPrintableRect:(CGRect)a3
{
  height = a3.size.height;
  rect = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = +[CKPrintController sharedInstance];
  [v8 setPrinting:1];

  v9 = [(CKTranscriptPrintPageRenderer *)self scrollView];
  [v9 setFrame:{x, y, width, height}];
  v10 = [(CKTranscriptPrintPageRenderer *)self scrollView];
  v11 = [v10 effectiveUserInterfaceLayoutDirection];
  v12 = *MEMORY[0x1E69DC5C0];
  v13 = *(MEMORY[0x1E69DC5C0] + 16);
  if (v11)
  {
    v14 = *(MEMORY[0x1E69DC5C0] + 24);
  }

  else
  {
    v14 = *(MEMORY[0x1E69DC5C0] + 8);
  }

  if (v11)
  {
    v15 = *(MEMORY[0x1E69DC5C0] + 8);
  }

  else
  {
    v15 = *(MEMORY[0x1E69DC5C0] + 24);
  }

  v16 = +[CKUIBehavior sharedBehaviors];
  [v16 balloonMaxWidthForTranscriptWidth:0 marginInsets:0 shouldShowPluginButtons:0 shouldShowCharacterCount:0 shouldCoverSendButton:width isStewieMode:{v12, v14, v13, v15}];
  v18 = v17;

  v19 = [(CKTranscriptPrintPageRenderer *)self transcriptCollectionViewController];
  v20 = [(CKTranscriptPrintPageRenderer *)self transcriptCollectionViewController];
  v21 = [v20 traitCollection];
  v22 = [(CKTranscriptPrintPageRenderer *)self transcriptCollectionViewController];
  [v22 transcriptBackgroundLuminance];
  [v19 invalidateChatItemLayoutWithNewBalloonMaxWidth:v21 marginInsets:v18 traitCollection:v12 transcriptBackgroundLuminance:{v14, v13, v15, v23}];

  [v9 layoutIfNeeded];
  [v9 contentSize];
  v25 = v24;
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = rect;
  v26 = vcvtpd_s64_f64(v25 / CGRectGetHeight(v30));
  v27 = +[CKPrintController sharedInstance];
  [v27 setPrinting:0];

  return v26;
}

- (int64_t)numberOfPages
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    [(CKTranscriptPrintPageRenderer *)self _determineNumberOfPages];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__CKTranscriptPrintPageRenderer_numberOfPages__block_invoke;
    block[3] = &unk_1E72EBA18;
    block[4] = self;
    dispatch_sync(MEMORY[0x1E69E96A0], block);
  }

  return [(CKTranscriptPrintPageRenderer *)self numberOfPagesForCurrentConfiguration];
}

+ (void)renderViewWithText:(id)a3 withOffsetVertical:(double)a4
{
  v103 = *MEMORY[0x1E69E9840];
  v5 = a3;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  objc_opt_class();
  v83 = v5;
  if (objc_opt_isKindOfClass())
  {
    CGContextTranslateCTM(CurrentContext, 0.0, -a4);
  }

  [v5 layoutIfNeeded];
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = [MEMORY[0x1E695DF70] array];
  [v5 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v96[0] = MEMORY[0x1E69E9820];
  v96[1] = 3221225472;
  v96[2] = __71__CKTranscriptPrintPageRenderer_renderViewWithText_withOffsetVertical___block_invoke;
  v96[3] = &unk_1E72ECA60;
  v80 = v7;
  v97 = v80;
  v17 = v8;
  v98 = v17;
  _DFSVisibleSubviewsInRect(v5, v96, v10, v12, v14, v16);
  v18 = [v5 layer];
  [v18 renderInContext:CurrentContext];

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  obj = v17;
  v19 = [obj countByEnumeratingWithState:&v92 objects:v102 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v93;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v93 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v92 + 1) + 8 * i);
        if (([v23 isHidden] & 1) == 0)
        {
          v89 = xmmword_1E72ECA80;
          v90 = *off_1E72ECA90;
          v91 = 222;
          v24 = MEMORY[0x1E696AEC0];
          v25 = IMFileLocationTrimFileName();
          v26 = v91;
          v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpectedly visible view during printing"];
          v28 = [v24 stringWithFormat:@"Unexpected false '%@' in %s at %s:%d. %@", @"contentView.hidden", "+[CKTranscriptPrintPageRenderer renderViewWithText:withOffsetVertical:]", v25, v26, v27];

          v29 = IMGetAssertionFailureHandler();
          if (v29)
          {
            v29(v28);
          }

          else
          {
            v30 = [MEMORY[0x1E69A6138] warning];
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v101 = v28;
              _os_log_error_impl(&dword_19020E000, v30, OS_LOG_TYPE_ERROR, "ASSERTION FAILED: %@", buf, 0xCu);
            }
          }
        }

        CGContextSaveGState(CurrentContext);
        [v23 frame];
        [v83 convertPoint:v23 fromView:?];
        v32 = v31;
        [v23 frame];
        v34 = v33;
        v35 = [v23 suppressMask];
        [v23 setSuppressMask:1];
        [v23 setAlpha:1.0];
        [v23 frame];
        v37 = v36;
        v39 = v38;
        v40 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{v36, v38}];
        v88[0] = MEMORY[0x1E69E9820];
        v88[1] = 3221225472;
        v88[2] = __71__CKTranscriptPrintPageRenderer_renderViewWithText_withOffsetVertical___block_invoke_226;
        v88[3] = &unk_1E72EBBE8;
        v88[4] = v23;
        v41 = [v40 imageWithActions:v88];
        [v41 drawInRect:{v34, v32, v37, v39}];
        [v23 setSuppressMask:v35];
        CGContextRestoreGState(CurrentContext);
      }

      v20 = [obj countByEnumeratingWithState:&v92 objects:v102 count:16];
    }

    while (v20);
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v81 = v80;
  v42 = [v81 countByEnumeratingWithState:&v84 objects:v99 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v85;
    do
    {
      for (j = 0; j != v43; ++j)
      {
        if (*v85 != v44)
        {
          objc_enumerationMutation(v81);
        }

        v46 = *(*(&v84 + 1) + 8 * j);
        if (([v46 isHidden] & 1) == 0)
        {
          v89 = xmmword_1E72ECAA8;
          v90 = *off_1E72ECAB8;
          v91 = 255;
          v47 = MEMORY[0x1E696AEC0];
          v48 = IMFileLocationTrimFileName();
          v49 = v91;
          v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpectedly visible text view during printing"];
          v51 = [v47 stringWithFormat:@"Unexpected false '%@' in %s at %s:%d. %@", @"textContainingView.hidden", "+[CKTranscriptPrintPageRenderer renderViewWithText:withOffsetVertical:]", v48, v49, v50];

          v52 = IMGetAssertionFailureHandler();
          if (v52)
          {
            v52(v51);
          }

          else
          {
            v53 = [MEMORY[0x1E69A6138] warning];
            if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v101 = v51;
              _os_log_error_impl(&dword_19020E000, v53, OS_LOG_TYPE_ERROR, "ASSERTION FAILED: %@", buf, 0xCu);
            }
          }
        }

        [v46 bounds];
        v55 = v54;
        v57 = v56;
        v59 = v58;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v60 = v46;
          [v60 setAlpha:1.0];
          [v83 convertPoint:v60 fromView:{v55, v57}];
          v62 = v61;
          v64 = v63;
          [v60 bounds];
          [v60 textRectForBounds:?];
          v66 = v65;
          v68 = v67;
          v70 = v69;
          v72 = v71;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v73 = v64 + v59 * 0.5 - v72 * 0.5;
          }

          else
          {
            v73 = v64;
          }

          CGContextSaveGState(CurrentContext);
          CGContextTranslateCTM(CurrentContext, v62, v73);
          [v60 drawTextInRect:{v66, v68, v70, v72}];
          CGContextRestoreGState(CurrentContext);
          [v60 setAlpha:0.0];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v46 ck_drawVisibleTextInCurrentContextWithContainerView:v83];
            goto LABEL_42;
          }

          v89 = xmmword_1E72ECAD0;
          v90 = *off_1E72ECAE0;
          v91 = 276;
          v74 = MEMORY[0x1E696AEC0];
          v75 = IMFileLocationTrimFileName();
          v76 = v91;
          v77 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected object of class %@ in textContainingViews", objc_opt_class()];
          v60 = [v74 stringWithFormat:@"Failure in %s at %s:%d. %@", "+[CKTranscriptPrintPageRenderer renderViewWithText:withOffsetVertical:]", v75, v76, v77];

          v78 = IMGetAssertionFailureHandler();
          if (v78)
          {
            v78(v60);
          }

          else
          {
            v79 = [MEMORY[0x1E69A6138] warning];
            if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v101 = v60;
              _os_log_error_impl(&dword_19020E000, v79, OS_LOG_TYPE_ERROR, "ASSERTION FAILED: %@", buf, 0xCu);
            }
          }
        }

LABEL_42:
        [v46 setAlpha:1.0];
      }

      v43 = [v81 countByEnumeratingWithState:&v84 objects:v99 count:16];
    }

    while (v43);
  }

  CGContextRestoreGState(CurrentContext);
}

uint64_t __71__CKTranscriptPrintPageRenderer_renderViewWithText_withOffsetVertical___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isHidden])
  {
    v4 = 0;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v4 = 0;
      v5 = 32;
    }

    else
    {
      v4 = 1;
      if (![v3 conformsToProtocol:&unk_1F05452D8])
      {
        goto LABEL_7;
      }

      v5 = 40;
    }

    [v3 setAlpha:0.0];
    [*(a1 + v5) addObject:v3];
  }

LABEL_7:

  return v4;
}

void __71__CKTranscriptPrintPageRenderer_renderViewWithText_withOffsetVertical___block_invoke_226(uint64_t a1)
{
  v1 = [*(a1 + 32) layer];
  [v1 renderInContext:UIGraphicsGetCurrentContext()];
}

- (void)drawScrollViewAtIndex:(int64_t)a3 inRect:(CGRect)a4
{
  v6 = [CKPrintController sharedInstance:a4.origin.x];
  [v6 setPrinting:1];

  [(UIPrintPageRenderer *)self printableRect];
  v8 = v7;
  v10 = [(CKTranscriptPrintPageRenderer *)self scrollView];
  [CKTranscriptPrintPageRenderer renderViewWithText:v10 withOffsetVertical:v8 * a3];
  v9 = +[CKPrintController sharedInstance];
  [v9 setPrinting:0];
}

- (void)drawPageAtIndex:(int64_t)a3 inRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  CurrentContext = UIGraphicsGetCurrentContext();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__CKTranscriptPrintPageRenderer_drawPageAtIndex_inRect___block_invoke;
  aBlock[3] = &unk_1E72ECB00;
  *&aBlock[6] = x;
  *&aBlock[7] = y;
  *&aBlock[8] = width;
  *&aBlock[9] = height;
  aBlock[4] = self;
  aBlock[5] = CurrentContext;
  aBlock[10] = a3;
  v11 = _Block_copy(aBlock);
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v11[2](v11);
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __56__CKTranscriptPrintPageRenderer_drawPageAtIndex_inRect___block_invoke_2;
    v12[3] = &unk_1E72EBDB8;
    v13 = v11;
    dispatch_sync(MEMORY[0x1E69E96A0], v12);
  }
}

void __56__CKTranscriptPrintPageRenderer_drawPageAtIndex_inRect___block_invoke(uint64_t a1)
{
  UIGraphicsPushContext(*(a1 + 40));
  CGContextSaveGState(*(a1 + 40));
  CGContextTranslateCTM(*(a1 + 40), *(a1 + 48), *(a1 + 56));
  [*(a1 + 32) drawScrollViewAtIndex:*(a1 + 80) inRect:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  CGContextRestoreGState(*(a1 + 40));

  UIGraphicsPopContext();
}

- (CGRect)currentPrintableRect
{
  objc_copyStruct(v6, &self->_currentPrintableRect, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end