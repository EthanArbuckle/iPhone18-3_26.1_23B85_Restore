@interface ICAttachmentTableModel
@end

@implementation ICAttachmentTableModel

uint64_t __67__ICAttachmentTableModel_UI__redactAuthorAttributionsToCurrentUser__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x1E695DF00];
  v8 = a2;
  v9 = [v7 now];
  v10 = [v9 ic_truncated];

  v11 = [v8 attributedString];

  v12 = [v11 mutableCopy];
  v13 = *MEMORY[0x1E69B7618];
  v14 = MEMORY[0x1E696AD98];
  [v10 timeIntervalSince1970];
  v15 = [v14 numberWithDouble:?];
  v16 = [v12 ic_range];
  [v12 addAttribute:v13 value:v15 range:{v16, v17}];

  v18 = [*(a1 + 32) table];
  [v18 setAttributedString:v12 columnIndex:a3 rowIndex:a4];

  return 0;
}

void __40__ICAttachmentTableModel_UI__htmlString__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) appendString:@"<tr>"];
  v5 = [*(a1 + 40) table];
  v6 = [MEMORY[0x1E696AC90] indexSetWithIndex:a3];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__ICAttachmentTableModel_UI__htmlString__block_invoke_2;
  v7[3] = &unk_1E8469768;
  v8 = *(a1 + 32);
  [v5 enumerateCellObjectsInCellSelectionContainingColumnIndices:0 rowIndices:v6 copyItems:0 usingBlock:v7];

  [*(a1 + 32) appendString:@"</tr>\n"];
}

id __40__ICAttachmentTableModel_UI__htmlString__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) appendString:@"<td valign=top style=border-style: solid; border-width: 1.0px 1.0px 1.0px 1.0px; border-color: #ccc; padding: 3.0px 5.0px 3.0px 5.0px; min-width: 70px>"];
  if ([v3 length])
  {
    v4 = [v3 attributedString];
    v5 = [v4 mutableCopy];

    v6 = *MEMORY[0x1E69B7618];
    v7 = [v5 ic_range];
    [v5 removeAttribute:v6 range:{v7, v8}];
    v9 = [MEMORY[0x1E69B77F0] htmlStringFromAttributedString:v5 attachmentConversionHandler:0];
    [*(a1 + 32) appendString:v9];
  }

  else
  {
    [*(a1 + 32) appendString:@"<br>"];
  }

  [*(a1 + 32) appendString:@"</td>"];

  return v3;
}

void __64__ICAttachmentTableModel_UI__previewInAvailableSize_shouldDraw___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  *(*(*(a1 + 64) + 8) + 24) = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v7 = 0;
  if (*(a1 + 112) == 1)
  {
    v7 = *(a1 + 88);
  }

  v26[3] = v7;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __64__ICAttachmentTableModel_UI__previewInAvailableSize_shouldDraw___block_invoke_2;
  v15[3] = &unk_1E84697B8;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v24 = *(a1 + 112);
  v16 = v9;
  v20 = v26;
  v17 = *(a1 + 32);
  v10 = v6;
  v11 = *(a1 + 48);
  v18 = v10;
  v19 = v11;
  v25 = *(a1 + 113);
  v21 = *(a1 + 72);
  v22 = *(a1 + 64);
  v23 = *(a1 + 88);
  [v8 enumerateColumnsWithBlock:v15];
  if (*(a1 + 113) == 1)
  {
    v12 = *(a1 + 104);
    if (*(a1 + 112) == 1)
    {
      CGContextMoveToPoint(v12, *(a1 + 88), *(*(*(a1 + 72) + 8) + 24));
      v13 = *(a1 + 88) - *(*(*(a1 + 64) + 8) + 24);
    }

    else
    {
      CGContextMoveToPoint(v12, 0.0, *(*(*(a1 + 72) + 8) + 24));
      v13 = *(*(*(a1 + 64) + 8) + 24);
    }

    CGContextAddLineToPoint(*(a1 + 104), v13, *(*(*(a1 + 72) + 8) + 24));
    CGContextSetStrokeColorWithColor(*(a1 + 104), [*(a1 + 56) CGColor]);
    CGContextSetLineWidth(*(a1 + 104), 1.0);
    CGContextStrokePath(*(a1 + 104));
  }

  v14 = *(*(*(a1 + 80) + 8) + 24);
  if (v14 < 16.0)
  {
    v14 = 16.0;
  }

  *(*(*(a1 + 72) + 8) + 24) = v14 + *(*(*(a1 + 72) + 8) + 24);
  if (*(*(*(a1 + 72) + 8) + 24) > *(a1 + 96))
  {
    *a4 = 1;
  }

  _Block_object_dispose(v26, 8);
}

void __64__ICAttachmentTableModel_UI__previewInAvailableSize_shouldDraw___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = a2;
  [v6 widthOfColumn:v7];
  v9 = v8;
  if (*(a1 + 112) == 1)
  {
    *(*(*(a1 + 64) + 8) + 24) = *(*(*(a1 + 64) + 8) + 24) - v8;
  }

  v10 = [*(a1 + 40) stringForColumnID:v7 rowID:*(a1 + 48)];

  v11 = [*(a1 + 56) attachment];
  v12 = [v11 managedObjectContext];
  v30 = [v10 ic_attributedStringByFlatteningInlineAttachmentsWithContext:v12 formatter:0];

  if ([v30 length])
  {
    v13 = [ICTTTextStorage alloc];
    v14 = [MEMORY[0x1E696AFB0] UUID];
    v15 = [(ICTTTextStorage *)v13 initWithData:0 replicaID:v14];

    [(ICTTTextStorage *)v15 setWantsUndoCommands:0];
    [(ICTTTextStorage *)v15 replaceCharactersInRange:0 withAttributedString:0, v30];
    v16 = *MEMORY[0x1E69B7628];
    v17 = [(ICTTTextStorage *)v15 ic_range];
    [(ICTTTextStorage *)v15 removeAttribute:v16 range:v17, v18];
    v19 = [*(a1 + 32) styler];
    [(ICTTTextStorage *)v15 setStyler:v19];

    v20 = [*(a1 + 32) styler];
    [v20 styleText:v15 inExactRange:0 fixModelAttributes:{-[ICTTTextStorage length](v15, "length"), 1}];

    [(ICTTTextStorage *)v15 boundingRectWithSize:1 options:0 context:v9 + 5.0 * -2.0, 1.79769313e308];
    v24 = v23;
    if (*(a1 + 113) == 1)
    {
      v25 = v9 + 5.0 * -2.0;
      v32 = CGRectOffset(*&v21, *(*(*(a1 + 64) + 8) + 24) + 5.0, *(*(*(a1 + 72) + 8) + 24) + 5.0);
      [(ICTTTextStorage *)v15 drawInRect:v32.origin.x, v32.origin.y, v32.size.width, v32.size.height];
    }

    v26 = *(*(a1 + 80) + 8);
    v27 = *(v26 + 24);
    if (v27 < v24 + 5.0 + 4.0)
    {
      v27 = v24 + 5.0 + 4.0;
    }

    *(v26 + 24) = v27;
  }

  *(*(*(a1 + 88) + 8) + 24) = v9 + *(*(*(a1 + 88) + 8) + 24);
  v28 = *(*(a1 + 64) + 8);
  v29 = *(v28 + 24);
  if ((*(a1 + 112) & 1) == 0)
  {
    *(v28 + 24) = v9 + v29;
    if (*(*(*(a1 + 64) + 8) + 24) <= *(a1 + 96))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v29 < 0.0)
  {
LABEL_13:
    *a4 = 1;
  }

LABEL_14:
}

void __64__ICAttachmentTableModel_UI__previewInAvailableSize_shouldDraw___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 56);
  v7 = *(*(*(a1 + 40) + 8) + 24);
  v8 = a2;
  CGContextMoveToPoint(v6, v7, 0.0);
  CGContextAddLineToPoint(*(a1 + 56), *(*(*(a1 + 40) + 8) + 24), *(*(*(a1 + 48) + 8) + 24));
  LOBYTE(v6) = *(a1 + 80);
  [*(a1 + 32) widthOfColumn:v8];
  v10 = v9;

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 24);
  if ((v6 & 1) == 0)
  {
    *(v11 + 24) = v10 + v12;
    if (*(*(*(a1 + 40) + 8) + 24) <= *(a1 + 64))
    {
      return;
    }

    goto LABEL_5;
  }

  *(v11 + 24) = v12 - v10;
  if (*(*(*(a1 + 40) + 8) + 24) < 0.0)
  {
LABEL_5:
    *a4 = 1;
  }
}

@end