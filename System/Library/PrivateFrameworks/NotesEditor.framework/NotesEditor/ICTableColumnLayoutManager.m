@interface ICTableColumnLayoutManager
- (ICTableColumnLayoutManager)initWithTableLayoutManager:(id)a3 columnID:(id)a4;
- (ICTableLayoutManager)tableLayoutManager;
- (_NSRange)glyphRangeForBoundingRect:(CGRect)a3 inTextContainer:(id)a4;
- (_NSRange)glyphRangeForRowID:(id)a3;
- (double)heightOfCellAtRowID:(id)a3;
- (double)width;
- (id)glyphRangesForRows:(id)a3;
- (id)rectsForGlyphRange:(_NSRange)a3;
- (void)drawGlyphsForGlyphRange:(_NSRange)a3 atPoint:(CGPoint)a4;
- (void)ensureCellExistsAtRowID:(id)a3;
- (void)filterAttachmentsInTextStorage:(id)a3 range:(_NSRange)a4 targetAttachment:(id)a5;
- (void)removeRow:(id)a3;
- (void)setHiddenRows:(id)a3;
@end

@implementation ICTableColumnLayoutManager

- (ICTableColumnLayoutManager)initWithTableLayoutManager:(id)a3 columnID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v30.receiver = self;
  v30.super_class = ICTableColumnLayoutManager;
  v8 = [(ICLayoutManager *)&v30 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_tableLayoutManager, v6);
    objc_storeStrong(&v9->_columnID, a4);
    v29 = [v6 columnWidthManager];
    v10 = v7;
    [v29 widthOfColumn:v7];
    v12 = v11;
    WeakRetained = objc_loadWeakRetained(&v9->_tableLayoutManager);
    v14 = [WeakRetained table];
    v15 = [v14 delegate];
    v16 = v15;
    if (!v15)
    {
      v16 = [v6 delegate];
    }

    v17 = objc_loadWeakRetained(&v9->_tableLayoutManager);
    v18 = [v17 table];
    [v18 setDelegate:v16];

    if (!v15)
    {
    }

    v19 = objc_loadWeakRetained(&v9->_tableLayoutManager);
    v20 = [v19 table];
    v7 = v10;
    v21 = [v20 textStorageForColumn:v10];
    columnTextStorage = v9->_columnTextStorage;
    v9->_columnTextStorage = v21;

    [(ICTableColumnLayoutManager *)v9 setTextStorage:v9->_columnTextStorage];
    [(ICTableColumnLayoutManager *)v9 setAllowsNonContiguousLayout:1];
    v23 = [[ICTableColumnTextContainer alloc] initWithSize:v12, 1.79769313e308];
    textContainer = v9->_textContainer;
    v9->_textContainer = &v23->super.super;

    [(NSTextContainer *)v9->_textContainer setLineFragmentPadding:*MEMORY[0x277D365F0]];
    [(NSTextContainer *)v9->_textContainer setWidthTracksTextView:0];
    [(NSTextContainer *)v9->_textContainer setHeightTracksTextView:0];
    [(ICTableColumnLayoutManager *)v9 addTextContainer:v9->_textContainer];
    [(NSTextContainer *)v9->_textContainer setLayoutManager:v9];
    v25 = [(ICTableColumnLayoutManager *)v9 textStorage];
    [v25 addLayoutManager:v9];

    v26 = [MEMORY[0x277CBEB58] set];
    currentlyHiddenSubviews = v9->_currentlyHiddenSubviews;
    v9->_currentlyHiddenSubviews = v26;
  }

  return v9;
}

- (void)setHiddenRows:(id)a3
{
  v85 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (([(NSArray *)self->_hiddenRows isEqual:v5]& 1) == 0)
  {
    v59 = v5;
    if ([(NSArray *)self->_hiddenRows count])
    {
      v6 = [(ICTableColumnLayoutManager *)self glyphRangesForRows:self->_hiddenRows];
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      v79 = 0u;
      v7 = [v6 countByEnumeratingWithState:&v76 objects:v84 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v77;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v77 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = [*(*(&v76 + 1) + 8 * i) rangeValue];
            if (v12)
            {
              [(ICTableColumnLayoutManager *)self invalidateDisplayForGlyphRange:v11, v12];
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v76 objects:v84 count:16];
        }

        while (v8);
      }

      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v13 = [(ICTableColumnLayoutManager *)self currentlyHiddenSubviews];
      v14 = [v13 countByEnumeratingWithState:&v72 objects:v83 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v73;
        do
        {
          for (j = 0; j != v15; ++j)
          {
            if (*v73 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v72 + 1) + 8 * j);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              [v18 setHidden:0];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v72 objects:v83 count:16];
        }

        while (v15);
      }

      v19 = [(ICTableColumnLayoutManager *)self currentlyHiddenSubviews];
      [v19 removeAllObjects];

      v5 = v59;
    }

    objc_storeStrong(&self->_hiddenRows, a3);
    if ([v5 count])
    {
      v58 = [(ICBaseLayoutManager *)self textView];
      v20 = [v58 containerViewForAttachments];
      x = *MEMORY[0x277CBF3A0];
      y = *(MEMORY[0x277CBF3A0] + 8);
      width = *(MEMORY[0x277CBF3A0] + 16);
      height = *(MEMORY[0x277CBF3A0] + 24);
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v25 = v5;
      v26 = [v25 countByEnumeratingWithState:&v68 objects:v82 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v69;
        do
        {
          for (k = 0; k != v27; ++k)
          {
            if (*v69 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v68 + 1) + 8 * k);
            [(ICTableColumnLayoutManager *)self heightOfCellAtRowID:v30];
            v32 = v31;
            v33 = [(ICTableColumnLayoutManager *)self tableLayoutManager];
            v34 = [v33 rowPositions];
            v35 = [v34 objectForKeyedSubscript:v30];
            [v35 doubleValue];
            v37 = v36;
            [(ICTableColumnLayoutManager *)self width];
            v39 = v38;

            v86.origin.x = x;
            v86.origin.y = y;
            v86.size.width = width;
            v86.size.height = height;
            if (CGRectIsEmpty(v86))
            {
              height = v32;
              width = v39;
              y = v37;
              x = 0.0;
            }

            else
            {
              v87.origin.x = 0.0;
              v87.origin.y = v37;
              v87.size.width = v39;
              v87.size.height = v32;
              v94.origin.x = x;
              v94.origin.y = y;
              v94.size.width = width;
              v94.size.height = height;
              v88 = CGRectUnion(v87, v94);
              x = v88.origin.x;
              y = v88.origin.y;
              width = v88.size.width;
              height = v88.size.height;
            }
          }

          v27 = [v25 countByEnumeratingWithState:&v68 objects:v82 count:16];
        }

        while (v27);
      }

      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v40 = [v20 subviews];
      v41 = [v40 countByEnumeratingWithState:&v64 objects:v81 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v65;
        do
        {
          for (m = 0; m != v42; ++m)
          {
            if (*v65 != v43)
            {
              objc_enumerationMutation(v40);
            }

            v45 = *(*(&v64 + 1) + 8 * m);
            [v45 frame];
            v95.origin.x = x;
            v95.origin.y = y;
            v95.size.width = width;
            v95.size.height = height;
            if (CGRectIntersectsRect(v89, v95))
            {
              [v20 bounds];
              v91 = CGRectIntegral(v90);
              v46 = v91.origin.x;
              v47 = v91.origin.y;
              v48 = v91.size.width;
              v49 = v91.size.height;
              [v45 frame];
              v96 = CGRectIntegral(v92);
              v93.origin.x = v46;
              v93.origin.y = v47;
              v93.size.width = v48;
              v93.size.height = v49;
              if (!CGRectEqualToRect(v93, v96))
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  [v45 setHidden:1];
                  v50 = [(ICTableColumnLayoutManager *)self currentlyHiddenSubviews];
                  [v50 addObject:v45];
                }
              }
            }
          }

          v42 = [v40 countByEnumeratingWithState:&v64 objects:v81 count:16];
        }

        while (v42);
      }

      v51 = [(ICTableColumnLayoutManager *)self glyphRangesForRows:self->_hiddenRows];
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v52 = [v51 countByEnumeratingWithState:&v60 objects:v80 count:16];
      if (v52)
      {
        v53 = v52;
        v54 = *v61;
        do
        {
          for (n = 0; n != v53; ++n)
          {
            if (*v61 != v54)
            {
              objc_enumerationMutation(v51);
            }

            v56 = [*(*(&v60 + 1) + 8 * n) rangeValue];
            if (v57)
            {
              [(ICTableColumnLayoutManager *)self invalidateDisplayForGlyphRange:v56, v57];
            }
          }

          v53 = [v51 countByEnumeratingWithState:&v60 objects:v80 count:16];
        }

        while (v53);
      }

      v5 = v59;
    }
  }
}

- (double)width
{
  v2 = [(ICTableColumnLayoutManager *)self textContainer];
  [v2 size];
  v4 = v3;

  return v4;
}

- (void)removeRow:(id)a3
{
  v4 = a3;
  v5 = [(ICTableColumnLayoutManager *)self columnTextStorage];
  [v5 removeRow:v4];
}

- (void)ensureCellExistsAtRowID:(id)a3
{
  v4 = a3;
  v5 = [(ICTableColumnLayoutManager *)self columnTextStorage];
  [v5 characterRangeForRowID:v4];
}

- (_NSRange)glyphRangeForRowID:(id)a3
{
  v4 = a3;
  v5 = [(ICTableColumnLayoutManager *)self columnTextStorage];
  v6 = [v5 characterRangeForRowID:v4];
  v8 = v7;

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
    v10 = 0;
  }

  else
  {

    v9 = [(ICTableColumnLayoutManager *)self glyphRangeForCharacterRange:v6 actualCharacterRange:v8, 0];
  }

  result.length = v10;
  result.location = v9;
  return result;
}

- (double)heightOfCellAtRowID:(id)a3
{
  v4 = [(ICTableColumnLayoutManager *)self glyphRangeForRowID:a3];
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    [(ICTableColumnLayoutManager *)self ensureLayoutForGlyphRange:v4, v5];
    v8 = [(ICTableColumnLayoutManager *)self textContainer];
    [(ICLayoutManager *)self boundingRectForGlyphRange:v6 inTextContainer:v7, v8];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v17 = v6 + v7;
    if (v17 >= [(ICTableColumnLayoutManager *)self numberOfGlyphs])
    {
      v26 = [(ICTableColumnLayoutManager *)self textStorage];
      v27 = [v26 attribute:*MEMORY[0x277D74118] atIndex:v17 - 1 effectiveRange:0];

      [v27 lineSpacing];
      height = v16 + v28;
    }

    else
    {
      [(ICLayoutManager *)self lineFragmentRectForGlyphAtIndex:v17 effectiveRange:0];
      v32.origin.x = v18;
      v32.origin.y = v19;
      v32.size.width = v20;
      v32.size.height = v21;
      v30.origin.x = v10;
      v30.origin.y = v12;
      v30.size.width = v14;
      v30.size.height = v16;
      v31 = CGRectUnion(v30, v32);
      height = v31.size.height;
    }

    v25 = height + *MEMORY[0x277D365F8] + *MEMORY[0x277D365E0];
  }

  else
  {
    v23 = [(ICTableColumnLayoutManager *)self tableLayoutManager];
    [v23 emptyCellHeight];
    v25 = v24;
  }

  return round(v25);
}

- (id)glyphRangesForRows:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(ICTableColumnLayoutManager *)self glyphRangeForRowID:*(*(&v15 + 1) + 8 * i), v15];
        v13 = [MEMORY[0x277CCAE60] valueWithRange:{v11, v12}];
        [v5 addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)drawGlyphsForGlyphRange:(_NSRange)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  length = a3.length;
  location = a3.location;
  v44 = *MEMORY[0x277D85DE8];
  v9 = [(ICTableColumnLayoutManager *)self hiddenRows];
  v10 = [v9 count];

  if (v10)
  {
    v11 = [(ICTableColumnLayoutManager *)self hiddenRows];
    v12 = [(ICTableColumnLayoutManager *)self glyphRangesForRows:v11];

    v13 = [v12 sortedArrayUsingComparator:&__block_literal_global_5];

    v31 = [MEMORY[0x277CBEB18] array];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v39;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v39 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v45.location = [*(*(&v38 + 1) + 8 * i) rangeValue];
          v19 = v45.location;
          v20 = v45.length;
          v46.location = location;
          v46.length = length;
          if (NSIntersectionRange(v45, v46).length)
          {
            if (v19 > location)
            {
              v21 = [MEMORY[0x277CCAE60] valueWithRange:{location, v19 - location}];
              [v31 addObject:v21];
            }

            v22 = location + length > v19 + v20;
            if (location + length >= v19 + v20)
            {
              length = location + length - (v19 + v20);
            }

            else
            {
              length = 0;
            }

            if (v22)
            {
              location = v19 + v20;
            }

            else
            {
              location = 0;
            }
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v16);
    }

    if (length)
    {
      v23 = [MEMORY[0x277CCAE60] valueWithRange:{location, length}];
      [v31 addObject:v23];
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v24 = v31;
    v25 = [v24 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v35;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v35 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [*(*(&v34 + 1) + 8 * j) rangeValue];
          v33.receiver = self;
          v33.super_class = ICTableColumnLayoutManager;
          [(ICLayoutManager *)&v33 drawGlyphsForGlyphRange:v29 atPoint:v30, x, y];
        }

        v26 = [v24 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v26);
    }
  }

  else
  {
    v32.receiver = self;
    v32.super_class = ICTableColumnLayoutManager;
    [(ICLayoutManager *)&v32 drawGlyphsForGlyphRange:location atPoint:length, x, y];
  }
}

uint64_t __62__ICTableColumnLayoutManager_drawGlyphsForGlyphRange_atPoint___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 rangeValue];
  v6 = [v4 rangeValue];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
  v9 = [v7 compare:v8];

  return v9;
}

- (_NSRange)glyphRangeForBoundingRect:(CGRect)a3 inTextContainer:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v48.receiver = self;
  v48.super_class = ICTableColumnLayoutManager;
  location = [(ICTableColumnLayoutManager *)&v48 glyphRangeForBoundingRect:a4 inTextContainer:?];
  length = v10;
  v12 = [(ICTableColumnLayoutManager *)self hiddenRows];
  v13 = [v12 count];

  if (v13)
  {
    v46 = [(ICTableColumnLayoutManager *)self characterRangeForGlyphRange:location actualGlyphRange:length, 0];
    v47 = v14;
    for (i = v46 + v14; ; i = v46 + v47)
    {
      v16 = i + 1;
      v17 = [(ICTableColumnLayoutManager *)self textStorage];
      v18 = [v17 length];

      if (v16 >= v18)
      {
        break;
      }

      v19 = [(ICTableColumnLayoutManager *)self columnTextStorage];
      v20 = [v19 rowAtIndex:v46 + v47 + 1 rowRange:&v46];

      v21 = [(ICTableColumnLayoutManager *)self hiddenRows];
      v22 = [v21 containsObject:v20];

      if ((v22 & 1) == 0)
      {
        v23 = [(ICTableColumnLayoutManager *)self tableLayoutManager];
        v24 = [v23 rowPositions];
        v25 = [v24 objectForKeyedSubscript:v20];
        [v25 doubleValue];
        v27 = v26;

        v54.origin.x = x;
        v54.origin.y = y;
        v54.size.width = width;
        v54.size.height = height;
        if (v27 > CGRectGetMaxY(v54))
        {

          break;
        }

        v52.location = [(ICTableColumnLayoutManager *)self glyphRangeForRowID:v20];
        v52.length = v28;
        v49.location = location;
        v49.length = length;
        v29 = NSUnionRange(v49, v52);
        location = v29.location;
        length = v29.length;
      }
    }

    v46 = [(ICTableColumnLayoutManager *)self characterRangeForGlyphRange:location actualGlyphRange:length, 0];
    v47 = v30;
    while (v46 >= 2)
    {
      v31 = [(ICTableColumnLayoutManager *)self columnTextStorage:v46];
      v32 = [v31 rowAtIndex:v46 - 1 rowRange:&v46];

      v33 = [(ICTableColumnLayoutManager *)self hiddenRows];
      v34 = [v33 containsObject:v32];

      if ((v34 & 1) == 0)
      {
        v35 = [(ICTableColumnLayoutManager *)self tableLayoutManager];
        v36 = [v35 rowPositions];
        v37 = [v36 objectForKeyedSubscript:v32];
        [v37 doubleValue];
        v39 = v38;
        [(ICTableColumnLayoutManager *)self heightOfCellAtRowID:v32];
        v41 = v39 + v40;

        v55.origin.x = x;
        v55.origin.y = y;
        v55.size.width = width;
        v55.size.height = height;
        if (v41 < CGRectGetMinY(v55))
        {

          break;
        }

        v53.location = [(ICTableColumnLayoutManager *)self glyphRangeForRowID:v32];
        v53.length = v42;
        v50.location = location;
        v50.length = length;
        v43 = NSUnionRange(v50, v53);
        location = v43.location;
        length = v43.length;
      }
    }
  }

  v44 = location;
  v45 = length;
  result.length = v45;
  result.location = v44;
  return result;
}

- (id)rectsForGlyphRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [MEMORY[0x277CBEB18] array];
  [(ICTableColumnLayoutManager *)self ensureLayoutForGlyphRange:location, length];
  v7 = [(ICTableColumnLayoutManager *)self textContainer];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __49__ICTableColumnLayoutManager_rectsForGlyphRange___block_invoke;
  v12[3] = &unk_2781AD8C0;
  v12[4] = self;
  v8 = v6;
  v13 = v8;
  [(ICTableColumnLayoutManager *)self enumerateEnclosingRectsForGlyphRange:location withinSelectedGlyphRange:length inTextContainer:0x7FFFFFFFFFFFFFFFLL usingBlock:0, v7, v12];

  v9 = v13;
  v10 = v8;

  return v8;
}

void __49__ICTableColumnLayoutManager_rectsForGlyphRange___block_invoke(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = [*(a1 + 32) textView];
  [v10 textContainerInset];
  v12 = v11;
  v13 = [*(a1 + 32) textView];
  [v13 textContainerInset];
  v15 = v14;
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  v24 = CGRectOffset(v23, v12, v15);
  x = v24.origin.x;
  y = v24.origin.y;
  width = v24.size.width;
  height = v24.size.height;

  v20 = *(a1 + 40);
  v21 = [MEMORY[0x277CCAE60] valueWithCGRect:{x, y, width, height}];
  [v20 addObject:v21];
}

- (void)filterAttachmentsInTextStorage:(id)a3 range:(_NSRange)a4 targetAttachment:(id)a5
{
  length = a4.length;
  location = a4.location;
  v8 = a5;
  v9 = a3;
  objc_opt_class();
  v13 = ICCheckedDynamicCast();

  objc_opt_class();
  v10 = ICCheckedDynamicCast();

  if (v13)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = [v13 parentAttachment];
    [v12 filterInlineAttachmentsInTableColumnTextStorage:v10 range:{location, length}];
  }
}

- (ICTableLayoutManager)tableLayoutManager
{
  WeakRetained = objc_loadWeakRetained(&self->_tableLayoutManager);

  return WeakRetained;
}

@end