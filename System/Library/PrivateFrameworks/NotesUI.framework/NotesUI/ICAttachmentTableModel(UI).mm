@interface ICAttachmentTableModel(UI)
- (CGFloat)previewInAvailableSize:()UI shouldDraw:;
- (__CFString)attributesForSharingHTMLWithTagName:()UI textContent:;
- (id)activityItems;
- (id)htmlString;
- (void)drawPreviewInRect:()UI;
- (void)redactAuthorAttributionsToCurrentUser;
@end

@implementation ICAttachmentTableModel(UI)

- (void)redactAuthorAttributionsToCurrentUser
{
  if ([a1 isMergeableDataDirty])
  {
    [a1 writeMergeableData];
  }

  v2 = objc_alloc(MEMORY[0x1E69B78F0]);
  v3 = [a1 attachment];
  v4 = [v3 mergeableData];
  v5 = [a1 currentReplicaID];
  v6 = [v2 initWithData:v4 replicaID:v5];

  v7 = [v6 table];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__ICAttachmentTableModel_UI__redactAuthorAttributionsToCurrentUser__block_invoke;
  v10[3] = &unk_1E8469768;
  v11 = v6;
  v8 = v6;
  [v7 enumerateCellObjectsInCellSelectionContainingColumnIndices:0 rowIndices:0 copyItems:0 usingBlock:v10];

  v9 = [v8 serialize];
  [a1 mergeWithMergeableData:v9];

  [a1 writeMergeableData];
}

- (id)htmlString
{
  v2 = [a1 table];
  v3 = [v2 isRightToLeft];
  v4 = @"ltr";
  if (v3)
  {
    v4 = @"rtl";
  }

  v5 = v4;

  v6 = [MEMORY[0x1E696AD60] stringWithFormat:@"<table cellspacing=0 cellpadding=0 style=border-collapse: collapse direction: %@>\n<tbody>\n", v5];;

  v7 = [a1 table];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __40__ICAttachmentTableModel_UI__htmlString__block_invoke;
  v11[3] = &unk_1E8469790;
  v8 = v6;
  v12 = v8;
  v13 = a1;
  [v7 enumerateRowsWithBlock:v11];

  [v8 appendString:@"</tbody>\n</table>"];
  v9 = v8;

  return v8;
}

- (__CFString)attributesForSharingHTMLWithTagName:()UI textContent:
{
  v5 = [a1 htmlString];
  *a4 = v5;

  return &stru_1F4F94F00;
}

- (id)activityItems
{
  v2 = [ICTableLinkPresentationActivityItemSource alloc];
  v3 = [a1 attachment];
  v4 = [(ICTableLinkPresentationActivityItemSource *)v2 initWithAttachment:v3];

  v5 = [MEMORY[0x1E695E0F0] arrayByAddingObject:v4];
  v6 = [ICAttachmentTableActivityItemSource alloc];
  v7 = [a1 attachment];
  v8 = [(ICAttachmentActivityItemSource *)v6 initWithAttachment:v7];

  v9 = [v5 arrayByAddingObject:v8];

  v10 = [ICAttachmentActivityItemSource alloc];
  v11 = [a1 attachment];
  v12 = [(ICAttachmentActivityItemSource *)v10 initWithAttachment:v11];
  v13 = [v9 arrayByAddingObject:v12];

  return v13;
}

- (void)drawPreviewInRect:()UI
{
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  CGContextTranslateCTM(CurrentContext, a2, a3);
  [a1 previewInAvailableSize:1 shouldDraw:{a4, a5}];

  CGContextRestoreGState(CurrentContext);
}

- (CGFloat)previewInAvailableSize:()UI shouldDraw:
{
  v9 = [MEMORY[0x1E69DC888] ic_systemGray4Color];
  v10 = objc_alloc_init(ICConstantAvailableTableWidthProvider);
  [(ICConstantAvailableTableWidthProvider *)v10 setAvailableWidth:a2];
  v11 = [ICTableColumnWidthManager alloc];
  v12 = [a1 table];
  v13 = [(ICTableColumnWidthManager *)v11 initWithTable:v12 delegate:v10];

  CurrentContext = UIGraphicsGetCurrentContext();
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x2020000000;
  v54[3] = 0;
  v15 = [a1 table];
  v16 = [v15 isRightToLeft];

  v17 = [a1 table];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __64__ICAttachmentTableModel_UI__previewInAvailableSize_shouldDraw___block_invoke;
  v41[3] = &unk_1E84697E0;
  v46 = &v55;
  v52 = v16;
  v49 = a2;
  v50 = a3;
  v18 = v17;
  v42 = v18;
  v19 = v13;
  v43 = v19;
  v44 = a1;
  v53 = a5;
  v47 = &v59;
  v48 = v54;
  v51 = CurrentContext;
  v20 = v9;
  v45 = v20;
  [v18 enumerateRowsWithBlock:v41];
  if (a5)
  {
    v37 = 0;
    v38 = &v37;
    v21 = 0.0;
    if (v16)
    {
      v21 = a2;
    }

    v39 = 0x2020000000;
    v40 = v21;
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __64__ICAttachmentTableModel_UI__previewInAvailableSize_shouldDraw___block_invoke_3;
    v29 = &unk_1E8469808;
    v31 = &v37;
    v32 = &v59;
    v33 = CurrentContext;
    v36 = v16;
    v30 = v19;
    v34 = a2;
    v35 = a3;
    [v18 enumerateColumnsWithBlock:&v26];
    CGContextMoveToPoint(CurrentContext, v38[3], 0.0);
    CGContextAddLineToPoint(CurrentContext, v38[3], v60[3]);
    v22 = v60[3];
    if (v16)
    {
      CGContextMoveToPoint(CurrentContext, a2, v22);
      v23 = a2 - v56[3];
    }

    else
    {
      CGContextMoveToPoint(CurrentContext, 0.0, v22);
      v23 = v56[3];
    }

    CGContextAddLineToPoint(CurrentContext, v23, v60[3]);
    v24 = v20;
    CGContextSetStrokeColorWithColor(CurrentContext, [v24 CGColor]);
    CGContextSetLineWidth(CurrentContext, 1.0);
    CGContextStrokePath(CurrentContext);

    _Block_object_dispose(&v37, 8);
  }

  if (v56[3] < a2)
  {
    a2 = v56[3];
  }

  _Block_object_dispose(v54, 8);
  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v59, 8);

  return a2;
}

@end