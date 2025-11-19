@interface CSGraphicComplicationLayoutProvider
+ (BOOL)canAddElement:(id)a3 toElements:(id)a4 layoutStyle:(int64_t)a5;
+ (double)complicationContainerHeight;
+ (double)complicationEdgeInset;
+ (double)gridUnitSize;
+ (double)interComplicationSpacing;
+ (double)interComplicationSpacingExcludingInnerInset;
+ (id)_framesForLayoutElements:(id)a3 layoutStyle:(int64_t)a4 containerSize:(CGSize)a5;
+ (id)_rowFramesForLayoutElements:(id)a3 containerSize:(CGSize)a4;
+ (id)_sidebarFramesForLayoutElements:(id)a3 containerSize:(CGSize)a4;
+ (id)complicationLayoutForElements:(id)a3 layoutStyle:(int64_t)a4 containerSize:(CGSize)a5;
+ (id)complicationLayoutForElements:(id)a3 layoutStyle:(int64_t)a4 containerSize:(CGSize)a5 draggedElement:(id)a6 draggedElementPosition:(CGPoint)a7;
+ (int64_t)_insertionIndexForElement:(id)a3 withExistingElements:(id)a4 proposedInsertionIndex:(int64_t)a5;
+ (int64_t)insertionIndexForElement:(id)a3 withExistingElements:(id)a4;
+ (int64_t)sidebarGridHeight;
@end

@implementation CSGraphicComplicationLayoutProvider

+ (double)gridUnitSize
{
  v3 = _CSEmbeddedFBSDisplayConfiguration();
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [MEMORY[0x1E698E730] sharedInstance];
  v13 = [v12 deviceClass];

  if (v13 == 2)
  {
    CGAffineTransformMakeRotation(&v27, 1.57079633);
    v28.origin.x = v5;
    v28.origin.y = v7;
    v28.size.width = v9;
    v28.size.height = v11;
    v29 = CGRectApplyAffineTransform(v28, &v27);
    height = v29.size.height;
    [CSProminentLayoutController landscapePadSubtitleElementBoundingTopY:v29.origin.x];
    v16 = height + v15 * -2.0;
    v17 = ([a1 sidebarGridHeight] - 1);
    [a1 interComplicationSpacing];
    v19 = v18 * v17;
    [a1 complicationEdgeInset];
    return (v16 - v19 - (v20 + v20)) / [a1 sidebarGridHeight];
  }

  else
  {
    [a1 containerEdgeInset];
    v23 = v22;
    [a1 complicationEdgeInset];
    v25 = v23 + v24;
    [a1 interComplicationSpacing];
    return (v9 - (v26 * 3.0 + v25 * 2.0)) * 0.25;
  }
}

+ (double)complicationEdgeInset
{
  v2 = +[CSDeviceDetermination effectiveCategory];
  result = 7.0;
  if (v2 <= 0x22)
  {
    return dbl_1A2DA3508[v2];
  }

  return result;
}

+ (double)interComplicationSpacingExcludingInnerInset
{
  v2 = +[CSDeviceDetermination effectiveCategory];
  result = 10.0;
  if (v2 - 1 <= 0x21)
  {
    return dbl_1A2DA33F8[v2 - 1];
  }

  return result;
}

+ (double)interComplicationSpacing
{
  [a1 interComplicationSpacingExcludingInnerInset];
  v4 = v3;
  [a1 complicationEdgeInset];
  return v4 + v5 * 2.0;
}

+ (int64_t)sidebarGridHeight
{
  v2 = +[CSDeviceDetermination baseCategory];
  if (v2 - 26 > 7)
  {
    return 8;
  }

  else
  {
    return qword_1A2DA33B8[v2 - 26];
  }
}

+ (double)complicationContainerHeight
{
  [a1 gridUnitSize];
  v4 = v3;
  [a1 complicationEdgeInset];
  return v4 + v5 * 2.0;
}

+ (id)complicationLayoutForElements:(id)a3 layoutStyle:(int64_t)a4 containerSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v9 = a3;
  v10 = [CSComplicationLayout alloc];
  v11 = [a1 _framesForLayoutElements:v9 layoutStyle:a4 containerSize:{width, height}];

  v12 = [(CSComplicationLayout *)v10 _initWithFramesByElement:v11 draggedItemInsertionIndex:0x7FFFFFFFFFFFFFFFLL];

  return v12;
}

+ (id)complicationLayoutForElements:(id)a3 layoutStyle:(int64_t)a4 containerSize:(CGSize)a5 draggedElement:(id)a6 draggedElementPosition:(CGPoint)a7
{
  y = a7.y;
  x = a7.x;
  height = a5.height;
  width = a5.width;
  v14 = a3;
  v15 = a6;
  if (v15 && ([a1 canAddElement:v15 toElements:v14 layoutStyle:a4] & 1) != 0)
  {
    v16 = [a1 _framesForLayoutElements:v14 layoutStyle:a4 containerSize:{width, height}];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __133__CSGraphicComplicationLayoutProvider_complicationLayoutForElements_layoutStyle_containerSize_draggedElement_draggedElementPosition___block_invoke;
    v35[3] = &__block_descriptor_48_e29_q24__0__NSValue_8__NSValue_16l;
    *&v35[4] = x;
    *&v35[5] = y;
    v17 = [v16 keysSortedByValueUsingComparator:v35];
    v18 = [v17 firstObject];

    if (v18)
    {
      v19 = [v14 indexOfObject:v18];
      v20 = [v16 objectForKeyedSubscript:v18];
      [v20 CGRectValue];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;

      v37.origin.x = v22;
      v37.origin.y = v24;
      v37.size.width = v26;
      v37.size.height = v28;
      LODWORD(v20) = x < CGRectGetMidX(v37);
      v29 = v20 ^ ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] != 1);
      v30 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v14];
      v31 = [a1 _insertionIndexForElement:v15 withExistingElements:v14 proposedInsertionIndex:v19 + v29];
      [v30 insertObject:v15 atIndex:v31];
      v32 = [a1 _framesForLayoutElements:v30 layoutStyle:a4 containerSize:{width, height}];

      v16 = v32;
    }

    else
    {
      v31 = 0;
    }

    v33 = [[CSComplicationLayout alloc] _initWithFramesByElement:v16 draggedItemInsertionIndex:v31];
  }

  else
  {
    v33 = [a1 complicationLayoutForElements:v14 layoutStyle:a4 containerSize:{width, height}];
  }

  return v33;
}

uint64_t __133__CSGraphicComplicationLayoutProvider_complicationLayoutForElements_layoutStyle_containerSize_draggedElement_draggedElementPosition___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  [a2 CGRectValue];
  v6 = vabdd_f64(CGRectGetMidX(v20), *(a1 + 32));
  [v5 CGRectValue];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v21.origin.x = v8;
  v21.origin.y = v10;
  v21.size.width = v12;
  v21.size.height = v14;
  v15 = vabdd_f64(CGRectGetMidX(v21), *(a1 + 32));
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:v6];
  v17 = [MEMORY[0x1E696AD98] numberWithDouble:v15];
  v18 = [v16 compare:v17];

  return v18;
}

+ (BOOL)canAddElement:(id)a3 toElements:(id)a4 layoutStyle:(int64_t)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (a5)
  {
    if (a5 == 1)
    {
      v5 = [v9 count] < 0x14;
    }
  }

  else
  {
    v11 = [v9 arrayByAddingObject:v8];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v19;
      do
      {
        v16 = 0;
        do
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v14 += [*(*(&v18 + 1) + 8 * v16++) gridWidth];
        }

        while (v13 != v16);
        v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
      v5 = v14 < 5;
    }

    else
    {
      v5 = 1;
    }
  }

  return v5;
}

+ (int64_t)insertionIndexForElement:(id)a3 withExistingElements:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 _insertionIndexForElement:v7 withExistingElements:v6 proposedInsertionIndex:{objc_msgSend(v6, "count")}];

  return v8;
}

+ (int64_t)_insertionIndexForElement:(id)a3 withExistingElements:(id)a4 proposedInsertionIndex:(int64_t)a5
{
  v7 = a3;
  v8 = MEMORY[0x1E695DF70];
  v9 = a4;
  v10 = [[v8 alloc] initWithArray:v9];

  [v10 insertObject:v7 atIndex:a5];
  v11 = [v10 bs_filter:&__block_literal_global];
  if ([v11 count] == 1)
  {
    v12 = [v11 firstObject];
    [v10 removeObject:v12];
    [v10 insertObject:v12 atIndex:0];
    a5 = [v10 indexOfObject:v7];
  }

  return a5;
}

+ (id)_framesForLayoutElements:(id)a3 layoutStyle:(int64_t)a4 containerSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v10 = a3;
  if (a4 == 1)
  {
    v11 = [a1 _sidebarFramesForLayoutElements:v10 containerSize:{width, height}];
  }

  else
  {
    if (a4)
    {
      goto LABEL_6;
    }

    v11 = [a1 _rowFramesForLayoutElements:v10 containerSize:{width, height}];
  }

  v5 = v11;
LABEL_6:

  return v5;
}

+ (id)_rowFramesForLayoutElements:(id)a3 containerSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v81 = *MEMORY[0x1E69E9840];
  v7 = a3;
  [a1 interComplicationSpacingExcludingInnerInset];
  v9 = v8;
  v10 = [v7 count];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v75 objects:v80 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v76;
    v15 = 0.0;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v76 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v75 + 1) + 8 * i) size];
        v15 = v15 + v17;
      }

      v13 = [v11 countByEnumeratingWithState:&v75 objects:v80 count:16];
    }

    while (v13);
  }

  else
  {
    v15 = 0.0;
  }

  if ([v11 count] == 1)
  {
    v18 = [v11 firstObject];
    v19 = [v18 complicationFamily] == 1;
  }

  else
  {
    v19 = 0;
  }

  if ([v11 count] == 2)
  {
    v20 = [v11 firstObject];
    if ([v20 complicationFamily] == 1)
    {
      v21 = [v11 lastObject];
      v22 = [v21 complicationFamily] == 0;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v19 || v22)
  {
    [a1 interComplicationSpacingExcludingInnerInset];
    v25 = v24 * 3.0;
    [a1 gridUnitSize];
    v27 = v26;
    [a1 complicationEdgeInset];
    v29 = fmax((width - (v25 + (v27 + v28 * 2.0) * 4.0)) * 0.5, 0.0);
    v30 = [v11 firstObject];
    [v30 size];
    v32 = v31;

    v33 = height * 0.5 - v32 * 0.5;
    v34 = [v11 firstObject];
    [v34 size];
    v36 = v35;
    v38 = v37;
    v39 = MEMORY[0x1E69DDA98];
    v40 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
    v41 = width - v29;
    v42 = width - v29 - v36;
    if (v40 != 1)
    {
      v42 = v29;
    }

    v43 = [MEMORY[0x1E696B098] valueWithCGRect:{v42, v33, v36, v38}];
    [v23 setObject:v43 forKeyedSubscript:v34];

    if (v22)
    {
      v44 = [v11 lastObject];
      [v44 size];
      v46 = v45;
      v48 = v47;
      v49 = [*v39 userInterfaceLayoutDirection];
      v50 = v41 - v46;
      if (v49 == 1)
      {
        v50 = v29;
      }

      v51 = [MEMORY[0x1E696B098] valueWithCGRect:{v50, v33, v46, v48}];
      [v23 setObject:v51 forKeyedSubscript:v44];
    }
  }

  else
  {
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v34 = v11;
    v52 = [v34 countByEnumeratingWithState:&v71 objects:v79 count:16];
    if (v52)
    {
      v53 = v52;
      v70 = v11;
      v54 = width * 0.5 - (v9 * (v10 - 1) + v15) * 0.5;
      v55 = *v72;
      v56 = height * 0.5;
      v57 = MEMORY[0x1E69DDA98];
      do
      {
        for (j = 0; j != v53; ++j)
        {
          if (*v72 != v55)
          {
            objc_enumerationMutation(v34);
          }

          v59 = *(*(&v71 + 1) + 8 * j);
          [v59 size];
          v61 = v60;
          v63 = v62;
          v64 = v56 + v62 * -0.5;
          v65 = [*v57 userInterfaceLayoutDirection];
          v66 = width - v54 - v61;
          if (v65 != 1)
          {
            v66 = v54;
          }

          v67 = [MEMORY[0x1E696B098] valueWithCGRect:{v66, v64, v61, v63}];
          [v23 setObject:v67 forKeyedSubscript:v59];

          [a1 interComplicationSpacingExcludingInnerInset];
          v54 = v54 + v61 + v68;
        }

        v53 = [v34 countByEnumeratingWithState:&v71 objects:v79 count:16];
      }

      while (v53);
      v11 = v70;
    }
  }

  return v23;
}

+ (id)_sidebarFramesForLayoutElements:(id)a3 containerSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v40 = *MEMORY[0x1E69E9840];
  v7 = a3;
  [a1 complicationEdgeInset];
  v9 = v8;
  [a1 complicationEdgeInset];
  v11 = v10;
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v13 = v7;
  v14 = [v13 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v36;
    v17 = MEMORY[0x1E69DDA98];
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v36 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v35 + 1) + 8 * i);
        [v19 size];
        v21 = v20;
        v23 = v22;
        if ([*v17 userInterfaceLayoutDirection] == 1)
        {
          v24 = width - v9 - v21;
        }

        else
        {
          v24 = v9;
        }

        v42.origin.x = 0.0;
        v42.origin.y = 0.0;
        v42.size.width = width;
        v42.size.height = height;
        v43.origin.x = v24;
        v43.origin.y = v11;
        v43.size.width = v21;
        v43.size.height = v23;
        if (CGRectContainsRect(v42, v43))
        {
          v25 = MEMORY[0x1E696B098];
          v26 = v24;
        }

        else
        {
          [a1 complicationEdgeInset];
          v9 = v27;
          [a1 gridUnitSize];
          v29 = v28;
          [a1 interComplicationSpacing];
          v11 = v11 + v29 + v30;
          v31 = [*v17 userInterfaceLayoutDirection];
          v26 = width - v9 - v21;
          if (v31 != 1)
          {
            v26 = v9;
          }

          v25 = MEMORY[0x1E696B098];
        }

        v32 = [v25 valueWithCGRect:{v26, v11, v21, v23}];
        [v12 setObject:v32 forKeyedSubscript:v19];

        [a1 interComplicationSpacing];
        v9 = v9 + v21 + v33;
      }

      v15 = [v13 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v15);
  }

  return v12;
}

@end