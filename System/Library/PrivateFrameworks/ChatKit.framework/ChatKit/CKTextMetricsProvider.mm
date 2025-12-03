@interface CKTextMetricsProvider
- (id)_metricsForAttributedString:(id)string lineFragmentPadding:(double)padding maximumNumberOfLines:(unint64_t)lines lineBreakMode:(int64_t)mode targetSize:(CGSize)size;
- (id)_metricsForRequest:(id)request containerInset:(UIEdgeInsets)inset;
- (id)_metricsForRequest:(id)request containerInset:(UIEdgeInsets)inset minimumViewHeight:(double)height;
- (id)metricsForRequest:(id)request;
@end

@implementation CKTextMetricsProvider

- (id)_metricsForAttributedString:(id)string lineFragmentPadding:(double)padding maximumNumberOfLines:(unint64_t)lines lineBreakMode:(int64_t)mode targetSize:(CGSize)size
{
  width = size.width;
  stringCopy = string;
  v12 = objc_alloc_init(MEMORY[0x1E69DB800]);
  v13 = objc_alloc_init(MEMORY[0x1E69DB828]);
  v14 = objc_alloc_init(MEMORY[0x1E69DB808]);
  v15 = objc_alloc_init(CKTextStorage);
  [v14 setTextStorage:v15];

  [v14 addTextLayoutManager:v13];
  [v13 setTextContainer:v12];
  [v12 setLineFragmentPadding:padding];
  [v12 setMaximumNumberOfLines:lines];
  [v12 setLineBreakMode:mode];
  [v12 setSize:{width, 1.79769313e308}];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __119__CKTextMetricsProvider__metricsForAttributedString_lineFragmentPadding_maximumNumberOfLines_lineBreakMode_targetSize___block_invoke;
  v47[3] = &unk_1E72EB8D0;
  v16 = v14;
  v48 = v16;
  v17 = stringCopy;
  v49 = v17;
  [v16 performEditingTransactionUsingBlock:v47];
  documentRange = [v13 documentRange];
  [v13 ensureLayoutForRange:documentRange];
  [v13 usageBoundsForTextContainer];
  v20 = v19;
  v22 = v21;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x2020000000;
  v42[3] = -1;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  location = [documentRange location];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __119__CKTextMetricsProvider__metricsForAttributedString_lineFragmentPadding_maximumNumberOfLines_lineBreakMode_targetSize___block_invoke_2;
  v37[3] = &unk_1E72F7F28;
  v37[4] = v42;
  v37[5] = &v38;
  v37[6] = &v43;
  v37[7] = lines;
  v24 = [v13 enumerateTextLayoutFragmentsFromLocation:location options:4 usingBlock:v37];

  v25 = v44[3];
  v26 = v39[3];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  documentRange2 = [v13 documentRange];
  location2 = [documentRange2 location];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __119__CKTextMetricsProvider__metricsForAttributedString_lineFragmentPadding_maximumNumberOfLines_lineBreakMode_targetSize___block_invoke_3;
  v32[3] = &unk_1E72EC8C8;
  v32[4] = &v33;
  v29 = [v13 enumerateTextLayoutFragmentsFromLocation:location2 options:4 usingBlock:v32];

  padding = [[CKTextMetrics alloc] initWithSize:v34[3] == 1 singleLine:v20 + padding * 2.0 alignmentInset:v22, v25, padding, v26, padding];
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(v42, 8);
  _Block_object_dispose(&v43, 8);

  return padding;
}

void __119__CKTextMetricsProvider__metricsForAttributedString_lineFragmentPadding_maximumNumberOfLines_lineBreakMode_targetSize___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) textStorage];
  [v2 setAttributedString:v1];
}

uint64_t __119__CKTextMetricsProvider__metricsForAttributedString_lineFragmentPadding_maximumNumberOfLines_lineBreakMode_targetSize___block_invoke_2(void *a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = [a2 textLineFragments];
  v4 = [v3 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v28;
    v7 = *MEMORY[0x1E69DB648];
    do
    {
      v8 = 0;
      do
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v27 + 1) + 8 * v8);
        ++*(*(a1[4] + 8) + 24);
        [v9 glyphOrigin];
        v11 = v10;
        [v9 typographicBounds];
        x = v33.origin.x;
        y = v33.origin.y;
        width = v33.size.width;
        height = v33.size.height;
        v16 = CGRectGetHeight(v33);
        [v9 glyphOrigin];
        *(*(a1[5] + 8) + 24) = v16 - v17;
        v18 = [v9 attributedString];
        v19 = [v18 attribute:v7 atIndex:0 effectiveRange:0];

        if (!*(*(a1[4] + 8) + 24))
        {
          v34.origin.x = x;
          v34.origin.y = y;
          v34.size.width = width;
          v34.size.height = height;
          v20 = CGRectGetHeight(v34) - v11;
          v35.origin.x = x;
          v35.origin.y = y;
          v35.size.width = width;
          v35.size.height = height;
          v21 = CGRectGetMaxY(v35) - v20;
          [v19 capHeight];
          *(*(a1[6] + 8) + 24) = v21 - v22;
        }

        v23 = a1[7];
        if (v23)
        {
          v24 = *(*(a1[4] + 8) + 24) + 1;

          if (v23 <= v24)
          {
            v25 = 0;
            goto LABEL_15;
          }
        }

        else
        {
        }

        ++v8;
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v5);
  }

  v25 = 1;
LABEL_15:

  return v25;
}

uint64_t __119__CKTextMetricsProvider__metricsForAttributedString_lineFragmentPadding_maximumNumberOfLines_lineBreakMode_targetSize___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 textLineFragments];
  *(*(*(a1 + 32) + 8) + 24) += [v3 count];

  return 1;
}

- (id)metricsForRequest:(id)request
{
  requestCopy = request;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  [requestCopy minimumViewHeight];
  v6 = v5;
  [requestCopy containerInset];
  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  if (v6 <= 0.0)
  {
    [(CKTextMetricsProvider *)self _metricsForRequest:requestCopy containerInset:v7, v8, v9, v10];
  }

  else
  {
    [requestCopy minimumViewHeight];
    [(CKTextMetricsProvider *)self _metricsForRequest:requestCopy containerInset:v11 minimumViewHeight:v12, v13, v14, v15];
  }
  v16 = ;

  return v16;
}

- (id)_metricsForRequest:(id)request containerInset:(UIEdgeInsets)inset
{
  right = inset.right;
  bottom = inset.bottom;
  left = inset.left;
  top = inset.top;
  requestCopy = request;
  [requestCopy adjustedMaximumSize];
  v11 = v10;
  v13 = v12;
  attributedString = [requestCopy attributedString];
  [requestCopy lineFragmentPadding];
  v16 = v15;
  maximumNumberOfLines = [requestCopy maximumNumberOfLines];
  lineBreakMode = [requestCopy lineBreakMode];

  v19 = [(CKTextMetricsProvider *)self _metricsForAttributedString:attributedString lineFragmentPadding:maximumNumberOfLines maximumNumberOfLines:lineBreakMode lineBreakMode:v16 targetSize:v11, v13];

  [v19 alignmentInset];
  v21 = top + v20;
  [v19 alignmentInset];
  v23 = left + v22;
  [v19 alignmentInset];
  v25 = bottom + v24;
  [v19 alignmentInset];
  v27 = right + v26;
  [v19 size];
  v30 = -[CKTextMetrics initWithSize:singleLine:alignmentInset:]([CKTextMetrics alloc], "initWithSize:singleLine:alignmentInset:", [v19 isSingleLine], left + right + v28, top + bottom + v29, v21, v23, v25, v27);

  return v30;
}

- (id)_metricsForRequest:(id)request containerInset:(UIEdgeInsets)inset minimumViewHeight:(double)height
{
  bottom = inset.bottom;
  top = inset.top;
  requestCopy = request;
  [requestCopy adjustedMaximumSize];
  v10 = v9;
  v12 = v11;
  attributedString = [requestCopy attributedString];
  [requestCopy lineFragmentPadding];
  v15 = v14;
  maximumNumberOfLines = [requestCopy maximumNumberOfLines];
  lineBreakMode = [requestCopy lineBreakMode];

  v18 = [(CKTextMetricsProvider *)self _metricsForAttributedString:attributedString lineFragmentPadding:maximumNumberOfLines maximumNumberOfLines:lineBreakMode lineBreakMode:v15 targetSize:v10, v12];

  [v18 size];
  v20 = v19;
  [v18 size];
  v22 = v21;
  [v18 alignmentInset];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  [v18 size];
  if (v31 >= height)
  {
    height = v20;
  }

  else
  {
    v32 = (height - (bottom + top + v22)) * 0.5;
    v24 = top + v32;
    v28 = bottom + v32;
    v30 = 0.0;
    v26 = 0.0;
  }

  [v18 size];
  v34 = -[CKTextMetrics initWithSize:singleLine:alignmentInset:]([CKTextMetrics alloc], "initWithSize:singleLine:alignmentInset:", [v18 isSingleLine], v33, height, v24, v26, v28, v30);

  return v34;
}

@end