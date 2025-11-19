@interface ICTextDragPreviewRenderer
- (CGPoint)origin;
- (CGPoint)originAdjustment;
- (CGRect)_correctlyOffsetBoundingRect;
- (CGRect)_rawBoundingRect;
- (CGRect)bodyRect;
- (CGRect)firstLineRect;
- (CGRect)lastLineRect;
- (ICTextDragPreviewRenderer)initWithLayoutManager:(id)a3 range:(_NSRange)a4 textStorage:(id)a5;
- (UIImage)image;
- (_NSRange)renderedGlyphRange;
- (void)_calculate;
- (void)_calculateRectsUsingLayoutManager:(id)a3;
@end

@implementation ICTextDragPreviewRenderer

- (ICTextDragPreviewRenderer)initWithLayoutManager:(id)a3 range:(_NSRange)a4 textStorage:(id)a5
{
  length = a4.length;
  location = a4.location;
  v10 = a3;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ICTextDragPreviewRenderer;
  v12 = [(ICTextDragPreviewRenderer *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_layoutManager, a3);
    v13->_range.location = location;
    v13->_range.length = length;
    *&v13->_calculated = 256;
    objc_storeStrong(&v13->_textStorage, a5);
  }

  return v13;
}

- (UIImage)image
{
  [(ICTextDragPreviewRenderer *)self _calculate];
  image = self->_image;

  return image;
}

- (CGRect)firstLineRect
{
  [(ICTextDragPreviewRenderer *)self _calculate];
  x = self->_firstRect.origin.x;
  y = self->_firstRect.origin.y;
  width = self->_firstRect.size.width;
  height = self->_firstRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)bodyRect
{
  [(ICTextDragPreviewRenderer *)self _calculate];
  x = self->_middleRect.origin.x;
  y = self->_middleRect.origin.y;
  width = self->_middleRect.size.width;
  height = self->_middleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)lastLineRect
{
  [(ICTextDragPreviewRenderer *)self _calculate];
  x = self->_lastRect.origin.x;
  y = self->_lastRect.origin.y;
  width = self->_lastRect.size.width;
  height = self->_lastRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)_calculate
{
  if (!self->_calculated)
  {
    self->_calculated = 1;
    v3 = *MEMORY[0x1E695F058];
    v4 = *(MEMORY[0x1E695F058] + 16);
    self->_firstRect.origin = *MEMORY[0x1E695F058];
    self->_firstRect.size = v4;
    self->_middleRect.origin = v3;
    self->_middleRect.size = v4;
    self->_lastRect.origin = v3;
    self->_lastRect.size = v4;
    v5 = [(ICTextDragPreviewRenderer *)self layoutManager];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __39__ICTextDragPreviewRenderer__calculate__block_invoke;
    v6[3] = &unk_1E846B160;
    v6[4] = self;
    [v5 coordinateAccess:v6];
  }
}

void __39__ICTextDragPreviewRenderer__calculate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _calculateRectsUsingLayoutManager:v3];
  [*(a1 + 32) _correctlyOffsetBoundingRect];
  if (v6 > 0.0)
  {
    v8 = v7;
    if (v7 > 0.0)
    {
      v9 = v4;
      v10 = v5;
      v11 = v6;
      v12 = [v3 glyphRangeForCharacterRange:*(*(a1 + 32) + 8) actualCharacterRange:{*(*(a1 + 32) + 16), 0}];
      v14 = v13;
      v15 = [v3 textContainerForGlyphAtIndex:v12 effectiveRange:0];
      v28.origin.x = v9;
      v28.origin.y = v10;
      v28.size.width = v11;
      v28.size.height = v8;
      v29 = CGRectOffset(v28, -*(*(a1 + 32) + 120), -*(*(a1 + 32) + 128));
      v26.location = [v3 glyphRangeForBoundingRect:v15 inTextContainer:{v29.origin.x, v29.origin.y, v29.size.width, v29.size.height}];
      v27.location = v12;
      v27.length = v14;
      v16 = NSIntersectionRange(v26, v27);
      v25 = *(*(a1 + 32) + 120);
      v17 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{v11, v8}];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __39__ICTextDragPreviewRenderer__calculate__block_invoke_2;
      v21[3] = &unk_1E846B138;
      v22 = v3;
      v23 = v16;
      v24 = v25;
      v18 = [v17 imageWithActions:v21];
      v19 = *(a1 + 32);
      v20 = *(v19 + 136);
      *(v19 + 136) = v18;
    }
  }
}

uint64_t __39__ICTextDragPreviewRenderer__calculate__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) drawBackgroundForGlyphRange:*(a1 + 40) atPoint:{*(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);

  return [v2 drawGlyphsForGlyphRange:v3 atPoint:{v4, v5, v6}];
}

- (void)_calculateRectsUsingLayoutManager:(id)a3
{
  v4 = a3;
  v66 = 0;
  v67 = &v66;
  v68 = 0x4010000000;
  v69 = &unk_1D449C2A9;
  v5 = *(MEMORY[0x1E695F050] + 16);
  v70 = *MEMORY[0x1E695F050];
  v71 = v5;
  v60 = 0;
  v61 = &v60;
  v62 = 0x4010000000;
  v63 = &unk_1D449C2A9;
  v64 = v70;
  v65 = v5;
  v55 = 0;
  v56 = &v55;
  v57 = 0x3010000000;
  v58 = &unk_1D449C2A9;
  v59 = xmmword_1D4433FC0;
  v6 = objc_opt_new();
  v7 = [v4 glyphRangeForCharacterRange:self->_range.location actualCharacterRange:{self->_range.length, 0}];
  v9 = v8;
  v43 = MEMORY[0x1E69E9820];
  v44 = 3221225472;
  v45 = __63__ICTextDragPreviewRenderer__calculateRectsUsingLayoutManager___block_invoke;
  v46 = &unk_1E846B1B0;
  v53 = v7;
  v54 = v8;
  v47 = self;
  v50 = &v55;
  v10 = v4;
  v48 = v10;
  v11 = v6;
  v49 = v11;
  v51 = &v66;
  v52 = &v60;
  [v10 enumerateLineFragmentsForGlyphRange:v7 usingBlock:{v9, &v43}];
  if ([v11 count] == 1)
  {
    v12 = [v11 firstObject];
    [v12 CGRectValue];
    self->_middleRect.origin.x = v13;
    self->_middleRect.origin.y = v14;
    self->_middleRect.size.width = v15;
    self->_middleRect.size.height = v16;
  }

  else if ([v11 count])
  {
    v17 = [v11 firstObject];
    [v17 CGRectValue];
    self->_firstRect.origin.x = v18;
    self->_firstRect.origin.y = v19;
    self->_firstRect.size.width = v20;
    self->_firstRect.size.height = v21;

    v22 = [v11 lastObject];
    [v22 CGRectValue];
    self->_lastRect.origin.x = v23;
    self->_lastRect.origin.y = v24;
    self->_lastRect.size.width = v25;
    self->_lastRect.size.height = v26;

    if ([v11 count] < 3)
    {
      if (self->_unifyRects)
      {
        MinX = CGRectGetMinX(self->_firstRect);
        if (MinX > CGRectGetMaxX(self->_lastRect))
        {
          self->_middleRect = CGRectUnion(self->_firstRect, self->_lastRect);
          v39 = *MEMORY[0x1E695F058];
          v40 = *(MEMORY[0x1E695F058] + 16);
          self->_firstRect.origin = *MEMORY[0x1E695F058];
          self->_firstRect.size = v40;
          self->_lastRect.origin = v39;
          self->_lastRect.size = v40;
        }
      }
    }

    else
    {
      v27 = [v11 objectAtIndexedSubscript:1];
      [v27 CGRectValue];
      self->_middleRect.origin.x = v28;
      self->_middleRect.origin.y = v29;
      self->_middleRect.size.width = v30;
      self->_middleRect.size.height = v31;

      for (i = 2; i < [v11 count] - 1; ++i)
      {
        v33 = [v11 objectAtIndexedSubscript:i];
        [v33 CGRectValue];
        v72.origin.x = v34;
        v72.origin.y = v35;
        v72.size.width = v36;
        v72.size.height = v37;
        self->_middleRect = CGRectUnion(self->_middleRect, v72);
      }

      if (self->_unifyRects)
      {
        MinY = CGRectGetMinY(self->_middleRect);
        self->_firstRect.size.height = MinY + 1.0 - CGRectGetMinY(self->_firstRect);
        MaxY = CGRectGetMaxY(self->_lastRect);
        self->_lastRect.size.height = MaxY - CGRectGetMaxY(self->_middleRect) + 1.0;
        self->_lastRect.origin.y = CGRectGetMaxY(self->_middleRect) + -1.0;
      }
    }
  }

  self->_renderedGlyphRange = v56[2];
  [(ICTextDragPreviewRenderer *)self setOriginAdjustment:vsubq_f64(v67[2], v61[2])];

  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(&v66, 8);
}

void __63__ICTextDragPreviewRenderer__calculateRectsUsingLayoutManager___block_invoke(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4, _BYTE *a5)
{
  v9 = a2;
  v36.location = a3;
  v36.length = a4;
  v10 = NSIntersectionRange(v36, *(a1 + 80));
  if (!v10.length)
  {
    v18 = [*(a1 + 32) layoutManager];
    v19 = [v18 characterRangeForGlyphRange:v10.location actualGlyphRange:{0, 0}];
    if (v20)
    {
      v21 = v19;
      v22 = v20;
      v23 = [v18 textStorage];
      v24 = [v23 attributedSubstringFromRange:{v21, v22}];
      v25 = [v24 string];

      v26 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v27 = [v25 stringByTrimmingCharactersInSet:v26];
      v28 = [v27 length];

      if (v28)
      {
        goto LABEL_2;
      }
    }

    else
    {
    }

    if (*(*(a1 + 32) + 146) != 1)
    {
      goto LABEL_9;
    }
  }

LABEL_2:
  v11 = *(*(a1 + 56) + 8);
  v12.location = *(v11 + 32);
  if (v12.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    *(v11 + 32) = v10;
  }

  else
  {
    v12.length = *(v11 + 40);
    *(*(*(a1 + 56) + 8) + 32) = NSUnionRange(v12, v10);
  }

  v13 = *(a1 + 40);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __63__ICTextDragPreviewRenderer__calculateRectsUsingLayoutManager___block_invoke_2;
  v29[3] = &unk_1E846B188;
  v30 = v13;
  v35 = v10;
  v14 = v9;
  v15 = *(a1 + 32);
  v31 = v14;
  v32 = v15;
  v33 = *(a1 + 48);
  v34 = *(a1 + 64);
  [v30 enumerateEnclosingRectsForGlyphRange:v10.location withinSelectedGlyphRange:v10.length inTextContainer:*(a1 + 80) usingBlock:{*(a1 + 88), v14, v29}];
  v16 = *(*(a1 + 64) + 8);
  v17 = *(v16 + 56);
  if (v17 > 400.0 && *(v16 + 48) / v17 <= 0.8)
  {
    *a5 = 1;
  }

LABEL_9:
}

void __63__ICTextDragPreviewRenderer__calculateRectsUsingLayoutManager___block_invoke_2(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  [*(a1 + 32) boundingRectForGlyphRange:*(a1 + 80) inTextContainer:{*(a1 + 88), *(a1 + 40)}];
  v51.origin.y = v10;
  v51.size.height = v11;
  v46.origin.x = a2;
  v46.origin.y = a3;
  v46.size.width = a4;
  v46.size.height = a5;
  v51.origin.x = a2;
  v51.size.width = a4;
  v47 = CGRectUnion(v46, v51);
  x = v47.origin.x;
  y = v47.origin.y;
  width = v47.size.width;
  height = v47.size.height;
  v16 = [*(a1 + 48) layoutManager];
  v17 = [v16 characterRangeForGlyphRange:*(a1 + 80) actualGlyphRange:{*(a1 + 88), 0}];
  v19 = v18;

  v20 = [*(a1 + 48) textStorage];
  v44 = [v20 attribute:*MEMORY[0x1E69B7600] atIndex:v17 effectiveRange:0];

  if (v17)
  {
    v21 = [*(a1 + 48) textStorage];
    v22 = [v21 string];
    v23 = [v22 characterAtIndex:v17 - 1];

    v24 = [MEMORY[0x1E696AB08] newlineCharacterSet];
    LOBYTE(v22) = [v24 characterIsMember:v23];

    if ((v22 & 1) == 0)
    {

      goto LABEL_15;
    }
  }

  if (!v44)
  {
LABEL_15:
    v44 = 0;
    goto LABEL_16;
  }

  if (![v44 isList])
  {
LABEL_16:
    v30 = height;
    v35 = width;
    v32 = y;
    v33 = x;
    goto LABEL_17;
  }

  v25 = [*(a1 + 48) textStorage];
  v26 = [v25 attributedString];
  [ICTextController extraWidthNeededForStyle:v44 range:v17 attributedString:v19 textView:v26, 0];
  v28 = v27;

  v29 = v28 + 4.0;
  if (v28 <= 0.0)
  {
    v29 = v28;
  }

  v30 = height;
  v31 = width;
  v32 = y;
  v33 = x;
  if ([v44 style] == 103)
  {
    v48.origin.x = x;
    v48.origin.y = y;
    v48.size.width = width;
    v48.size.height = height;
    v49 = CGRectInset(v48, 0.0, -6.0);
    v33 = v49.origin.x;
    v32 = v49.origin.y;
    v31 = v49.size.width;
    v30 = v49.size.height;
  }

  v34 = [v44 layoutWritingDirection];
  if (v34 == -1)
  {
    v34 = [MEMORY[0x1E69DB7D0] defaultWritingDirectionForLanguage:0];
  }

  v35 = v43 + v31;
  if (!v34)
  {
    v33 = v33 - v43;
  }

LABEL_17:
  v36 = *(a1 + 56);
  v37 = [MEMORY[0x1E696B098] valueWithCGRect:{v33, v32, v35, v30}];
  [v36 addObject:v37];

  IsEmpty = CGRectIsEmpty(*(*(*(a1 + 64) + 8) + 32));
  v39 = *(*(a1 + 64) + 8);
  if (IsEmpty)
  {
    v39[1].origin.x = x;
    v39[1].origin.y = y;
    v40 = a1 + 72;
    v39[1].size.width = width;
    v39[1].size.height = height;
  }

  else
  {
    v52.origin.x = x;
    v52.origin.y = y;
    v52.size.width = width;
    v52.size.height = height;
    *(*(*(a1 + 64) + 8) + 32) = CGRectUnion(v39[1], v52);
    v41 = *(a1 + 72);
    v40 = a1 + 72;
    v53.origin.x = v33;
    v53.origin.y = v32;
    v53.size.width = v35;
    v53.size.height = v30;
    v50 = CGRectUnion(*(*(v41 + 8) + 32), v53);
    v33 = v50.origin.x;
    v32 = v50.origin.y;
    v35 = v50.size.width;
    v30 = v50.size.height;
  }

  v42 = *(*v40 + 8);
  v42[4] = v33;
  v42[5] = v32;
  v42[6] = v35;
  v42[7] = v30;
}

- (CGRect)_correctlyOffsetBoundingRect
{
  [(ICTextDragPreviewRenderer *)self _rawBoundingRect];
  self->_origin.x = -v3;
  self->_origin.y = -v4;
  if (!CGRectIsEmpty(self->_firstRect))
  {
    self->_firstRect = CGRectOffset(self->_firstRect, self->_origin.x, self->_origin.y);
  }

  if (!CGRectIsEmpty(self->_middleRect))
  {
    self->_middleRect = CGRectOffset(self->_middleRect, self->_origin.x, self->_origin.y);
  }

  if (!CGRectIsEmpty(self->_lastRect))
  {
    self->_lastRect = CGRectOffset(self->_lastRect, self->_origin.x, self->_origin.y);
  }

  [(ICTextDragPreviewRenderer *)self _rawBoundingRect];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)_rawBoundingRect
{
  if (CGRectIsEmpty(self->_firstRect))
  {
    x = *MEMORY[0x1E695F058];
    y = *(MEMORY[0x1E695F058] + 8);
    width = *(MEMORY[0x1E695F058] + 16);
    height = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    x = self->_firstRect.origin.x;
    y = self->_firstRect.origin.y;
    width = self->_firstRect.size.width;
    height = self->_firstRect.size.height;
  }

  if (CGRectIsEmpty(self->_middleRect))
  {
    v7 = x;
  }

  else
  {
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    IsEmpty = CGRectIsEmpty(v20);
    v7 = self->_middleRect.origin.x;
    if (IsEmpty)
    {
      y = self->_middleRect.origin.y;
      width = self->_middleRect.size.width;
      height = self->_middleRect.size.height;
    }

    else
    {
      v24.origin.x = x;
      v24.origin.y = y;
      v24.size.width = width;
      v24.size.height = height;
      v21 = CGRectUnion(self->_middleRect, v24);
      v7 = v21.origin.x;
      y = v21.origin.y;
      width = v21.size.width;
      height = v21.size.height;
    }
  }

  if (CGRectIsEmpty(self->_lastRect))
  {
    v9 = v7;
  }

  else
  {
    v22.origin.x = v7;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    v10 = CGRectIsEmpty(v22);
    v9 = self->_lastRect.origin.x;
    if (v10)
    {
      y = self->_lastRect.origin.y;
      width = self->_lastRect.size.width;
      height = self->_lastRect.size.height;
    }

    else
    {
      v11 = self->_lastRect.origin.y;
      v12 = self->_lastRect.size.width;
      v13 = self->_lastRect.size.height;
      v25.origin.x = v7;
      v25.origin.y = y;
      v25.size.width = width;
      v25.size.height = height;
      *&v9 = CGRectUnion(*&v9, v25);
      y = v14;
      width = v15;
      height = v16;
    }
  }

  v17 = y;
  v18 = width;
  v19 = height;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v9;
  return result;
}

- (CGPoint)originAdjustment
{
  x = self->_originAdjustment.x;
  y = self->_originAdjustment.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)origin
{
  x = self->_origin.x;
  y = self->_origin.y;
  result.y = y;
  result.x = x;
  return result;
}

- (_NSRange)renderedGlyphRange
{
  length = self->_renderedGlyphRange.length;
  location = self->_renderedGlyphRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end