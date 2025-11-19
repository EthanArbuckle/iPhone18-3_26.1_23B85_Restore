@interface MLULookupItem
- (BOOL)_resolveAttachments:(id)a3 currentAttachmentIndex:(unint64_t)a4;
- (BOOL)_resolveText:(id)a3 focusRange:(_NSRange)a4;
- (BOOL)_resolveURL:(id)a3 DDResult:(__DDResult *)a4 focusRange:(_NSRange)a5;
- (BOOL)resolve;
- (MLULookupItem)initWithAttachments:(id)a3 currentAttachment:(unint64_t)a4;
- (MLULookupItem)initWithURL:(id)a3 dataDetectorsResult:(__DDResult *)a4 text:(id)a5 range:(_NSRange)a6;
- (_NSRange)proposedRange;
- (id)viewControllerToPresent;
- (unint64_t)commitType;
- (void)commit;
- (void)commitWithTransitionForPreviewViewController:(id)a3 inViewController:(id)a4 completion:(id)a5;
- (void)dealloc;
@end

@implementation MLULookupItem

- (void)dealloc
{
  ddResult = self->_ddResult;
  if (ddResult)
  {
    CFRelease(ddResult);
    self->_ddResult = 0;
  }

  v4.receiver = self;
  v4.super_class = MLULookupItem;
  [(MLULookupItem *)&v4 dealloc];
}

- (MLULookupItem)initWithAttachments:(id)a3 currentAttachment:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = MLULookupItem;
  v7 = [(MLULookupItem *)&v11 init];
  if (v7)
  {
    if (a4 == 0x7FFFFFFFFFFFFFFFLL || [v6 count] <= a4)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MLULookupItem initWithAttachments:v6 currentAttachment:a4];
      }

      attachments = v7->_attachments;
      v7->_attachments = 0;
      a4 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v6;
      attachments = v7->_attachments;
      v7->_attachments = v8;
    }

    v7->_currentAttachmentIndex = a4;
  }

  return v7;
}

- (MLULookupItem)initWithURL:(id)a3 dataDetectorsResult:(__DDResult *)a4 text:(id)a5 range:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  v12 = a3;
  v13 = a5;
  v16.receiver = self;
  v16.super_class = MLULookupItem;
  v14 = [(MLULookupItem *)&v16 init];
  if (v14)
  {
    if (a4)
    {
      CFRetain(a4);
      v14->_ddResult = a4;
    }

    objc_storeStrong(&v14->_url, a3);
    objc_storeStrong(&v14->_text, a5);
    v14->_focusRange.location = location;
    v14->_focusRange.length = length;
    v14->_proposedRange.location = location;
    v14->_proposedRange.length = length;
  }

  return v14;
}

- (BOOL)_resolveAttachments:(id)a3 currentAttachmentIndex:(unint64_t)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 objectAtIndexedSubscript:a4];
  v8 = MEMORY[0x277CDAA58];
  v9 = [v6 objectAtIndexedSubscript:a4];
  v10 = [v8 canPreviewItem:v9];

  if (v10)
  {
    v24 = v7;
    v11 = objc_opt_new();
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v12 = v6;
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v25 + 1) + 8 * i);
          if ([MEMORY[0x277CDAA58] canPreviewItem:v17])
          {
            [(NSArray *)v11 addObject:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v14);
    }

    attachments = self->_attachments;
    self->_attachments = v11;
    v19 = v11;

    v7 = v24;
    v20 = [(NSArray *)v19 indexOfObject:v24];
    self->_currentAttachmentIndex = v20;
    v21 = [MLULookupItemContent contentWithAttachments:self->_attachments currentAttachmentIndex:v20];

    [(MLULookupItem *)self setPreviewContent:v21];
  }

  v22 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)_resolveURL:(id)a3 DDResult:(__DDResult *)a4 focusRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v9 = a3;
  v10 = [(MLULookupItem *)self documentProperties];
  v11 = [MLULookupItemContent contentWithURL:v9 result:a4 documentProperties:v10];

  if (v11)
  {
    v13.length = [(NSString *)self->_text length];
    v13.location = 0;
    v14.location = location;
    v14.length = length;
    self->_proposedRange = NSIntersectionRange(v13, v14);
    [(MLULookupItem *)self setPreviewContent:v11];
  }

  return v11 != 0;
}

- (BOOL)_resolveText:(id)a3 focusRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  if (![(NSString *)self->_text length])
  {
    v21 = 0;
    goto LABEL_22;
  }

  v8 = DDScannerCreate();
  if (!v8)
  {
    goto LABEL_19;
  }

  v9 = v8;
  DDScannerScanString();
  v10 = *MEMORY[0x277D041E8];
  v11 = DDScannerCopyResultsWithOptions();
  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = v11;
  Count = CFArrayGetCount(v11);
  if (Count < 1)
  {
    CFRelease(v12);
LABEL_18:
    CFRelease(v9);
    goto LABEL_19;
  }

  v14 = Count;
  v15 = 1;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v12, v15 - 1);
    Range = DDResultGetRange();
    v20 = Range + v18 >= location && Range < location + length && [(MLULookupItem *)self _resolveURL:0 DDResult:ValueAtIndex focusRange:Range, v18];
    if (v15 >= v14)
    {
      break;
    }

    ++v15;
  }

  while (!v20);
  CFRelease(v12);
  CFRelease(v9);
  if (v20)
  {
    v21 = 1;
    goto LABEL_22;
  }

LABEL_19:
  v22 = [MLULookupItemContent contentWithText:v7 range:location, length];
  v21 = v22 != 0;
  if (v22)
  {
    [(MLULookupItem *)self setPreviewContent:v22];
  }

LABEL_22:
  return v21;
}

- (BOOL)resolve
{
  if (self->_resolved)
  {
    return 0;
  }

  self->_resolved = 1;
  if (self->_attachments && self->_currentAttachmentIndex != 0x7FFFFFFFFFFFFFFFLL && [MLULookupItem _resolveAttachments:"_resolveAttachments:currentAttachmentIndex:" currentAttachmentIndex:?])
  {
    return 1;
  }

  if (*&self->_url != 0)
  {
    location = self->_focusRange.location;
    length = self->_focusRange.length;
    if (![MLULookupItem _resolveURL:"_resolveURL:DDResult:focusRange:" DDResult:? focusRange:?])
    {
      if (self->_ddResult && !self->_text)
      {
        v8 = DDResultGetMatchedString();
        text = self->_text;
        self->_text = v8;

        v10 = [(NSString *)self->_text length];
        self->_focusRange.location = 0;
        self->_focusRange.length = v10;
      }

      goto LABEL_7;
    }

    return 1;
  }

LABEL_7:
  if (!self->_text)
  {
    return 0;
  }

  v4 = self->_focusRange.location;
  v5 = self->_focusRange.length;

  return [MLULookupItem _resolveText:"_resolveText:focusRange:" focusRange:?];
}

- (_NSRange)proposedRange
{
  length = self->_proposedRange.length;
  location = self->_proposedRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (id)viewControllerToPresent
{
  v2 = [(MLULookupItem *)self previewContent];
  v3 = [v2 previewViewController];

  return v3;
}

- (void)commit
{
  v5 = [(MLULookupItem *)self previewContent];
  v3 = [(MLULookupItem *)self viewControllerToPresent];
  v4 = [v3 presentingViewController];
  [v5 commitPreviewInController:v4];
}

- (unint64_t)commitType
{
  v2 = [(MLULookupItem *)self previewContent];
  v3 = [v2 commitType];

  return v3;
}

- (void)commitWithTransitionForPreviewViewController:(id)a3 inViewController:(id)a4 completion:(id)a5
{
  v60 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v43 = a5;
  [(MLULookupItem *)self commit];
  v10 = [v9 view];
  v11 = [v10 window];

  v12 = objc_alloc(MEMORY[0x277D75D18]);
  [v11 bounds];
  v13 = [v12 initWithFrame:?];
  v14 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.0];
  [v13 setBackgroundColor:v14];

  [v13 setUserInteractionEnabled:0];
  [v11 addSubview:v13];
  v15 = [MLUBlurryView alloc];
  [v11 bounds];
  v16 = [(MLUBlurryView *)v15 initWithFrame:?];
  [(MLUBlurryView *)v16 setUserInteractionEnabled:0];
  [v11 addSubview:v16];
  v17 = [v8 view];
  v44 = v9;
  v45 = v8;
  v42 = v13;
  if (v17)
  {
    do
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = [v19 containsString:@"_UIPreviewPresentationContainerView"];

      if (v20)
      {
        break;
      }

      v21 = [v17 superview];

      v17 = v21;
    }

    while (v21);
  }

  v57 = 0u;
  v58 = 0u;
  v56 = 0u;
  v55 = 0u;
  v22 = [v17 superview];
  v23 = [v22 superview];
  v24 = [v23 subviews];

  v25 = [v24 countByEnumeratingWithState:&v55 objects:v59 count:16];
  if (v25)
  {
    v26 = v25;
    v41 = v11;
    v27 = *v56;
    while (2)
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v56 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v55 + 1) + 8 * i);
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        v32 = [v31 containsString:@"UIImageView"];

        if (v32)
        {
          v33 = v29;
          goto LABEL_14;
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v55 objects:v59 count:16];
      if (v26)
      {
        continue;
      }

      break;
    }

    v33 = 0;
LABEL_14:
    v11 = v41;
  }

  else
  {
    v33 = 0;
  }

  v34 = [v17 snapshotViewAfterScreenUpdates:0];
  [(MLUBlurryView *)v16 addSubview:v34];
  [v17 setHidden:1];
  [v33 setHidden:1];
  v35 = MEMORY[0x277D75D18];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __90__MLULookupItem_commitWithTransitionForPreviewViewController_inViewController_completion___block_invoke;
  v51[3] = &unk_2798EB340;
  v52 = v16;
  v53 = v34;
  v54 = v42;
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __90__MLULookupItem_commitWithTransitionForPreviewViewController_inViewController_completion___block_invoke_7;
  v46[3] = &unk_2798EB368;
  v47 = v53;
  v48 = v52;
  v49 = v54;
  v50 = v43;
  v36 = v53;
  v37 = v52;
  v38 = v54;
  v39 = v43;
  [v35 animateKeyframesWithDuration:0 delay:v51 options:v46 animations:0.4 completion:0.0];

  v40 = *MEMORY[0x277D85DE8];
}

void __90__MLULookupItem_commitWithTransitionForPreviewViewController_inViewController_completion___block_invoke(id *a1)
{
  v2 = MEMORY[0x277D75D18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __90__MLULookupItem_commitWithTransitionForPreviewViewController_inViewController_completion___block_invoke_2;
  v15[3] = &unk_2798EB318;
  v16 = a1[4];
  [v2 addKeyframeWithRelativeStartTime:v15 relativeDuration:0.0 animations:0.1];
  v3 = MEMORY[0x277D75D18];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __90__MLULookupItem_commitWithTransitionForPreviewViewController_inViewController_completion___block_invoke_3;
  v13[3] = &unk_2798EB318;
  v14 = a1[4];
  [v3 addKeyframeWithRelativeStartTime:v13 relativeDuration:0.1 animations:1.0];
  v4 = MEMORY[0x277D75D18];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __90__MLULookupItem_commitWithTransitionForPreviewViewController_inViewController_completion___block_invoke_4;
  v11[3] = &unk_2798EB318;
  v12 = a1[4];
  [v4 addKeyframeWithRelativeStartTime:v11 relativeDuration:0.0 animations:0.8];
  v5 = MEMORY[0x277D75D18];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __90__MLULookupItem_commitWithTransitionForPreviewViewController_inViewController_completion___block_invoke_5;
  v9[3] = &unk_2798EB318;
  v10 = a1[5];
  [v5 addKeyframeWithRelativeStartTime:v9 relativeDuration:0.3 animations:0.7];
  v6 = MEMORY[0x277D75D18];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __90__MLULookupItem_commitWithTransitionForPreviewViewController_inViewController_completion___block_invoke_6;
  v7[3] = &unk_2798EB318;
  v8 = a1[6];
  [v6 addKeyframeWithRelativeStartTime:v7 relativeDuration:0.0 animations:0.2];
}

void __90__MLULookupItem_commitWithTransitionForPreviewViewController_inViewController_completion___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) layer];
  CATransform3DMakeScale(&v2, 1.10000002, 1.10000002, 1.0);
  [v1 setTransform:&v2];
}

void __90__MLULookupItem_commitWithTransitionForPreviewViewController_inViewController_completion___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) layer];
  CATransform3DMakeScale(&v2, 1.5, 1.5, 1.0);
  [v1 setTransform:&v2];
}

uint64_t __90__MLULookupItem_commitWithTransitionForPreviewViewController_inViewController_completion___block_invoke_7(uint64_t a1)
{
  usleep(0x7A120u);
  [*(a1 + 32) removeFromSuperview];
  [*(a1 + 40) removeFromSuperview];
  [*(a1 + 48) removeFromSuperview];
  result = *(a1 + 56);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)initWithAttachments:(void *)a1 currentAttachment:(uint64_t)a2 .cold.1(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218240;
  v4 = a2;
  v5 = 2048;
  v6 = [a1 count];
  _os_log_error_impl(&dword_259AFE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Inconsistent attachment index in [MLULookupItem initWithAttachments:currentAttachment:] index %ld is not in the array range (array size = %ld)", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end