@interface ICTable(NSTextTableAdditions)
- (id)attributedStringWithNSTextTablesForColumns:()NSTextTableAdditions rows:context:forPrinting:;
- (id)p_attributedStringForCell:()NSTextTableAdditions inTable:atColumn:row:shouldFilter:context:;
@end

@implementation ICTable(NSTextTableAdditions)

- (id)attributedStringWithNSTextTablesForColumns:()NSTextTableAdditions rows:context:forPrinting:
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v14 = objc_alloc_init(MEMORY[0x1E69DB860]);
  if (v10)
  {
    v15 = [v10 count];
  }

  else
  {
    v15 = [a1 columnCount];
  }

  [v14 setNumberOfColumns:v15];
  [v14 setCollapsesBorders:1];
  if (v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{0, objc_msgSend(a1, "columnCount")}];
  }

  v17 = v16;
  if (v11)
  {
    v18 = v11;
  }

  else
  {
    v18 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{0, objc_msgSend(a1, "rowCount")}];
  }

  v19 = v18;
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = __101__ICTable_NSTextTableAdditions__attributedStringWithNSTextTablesForColumns_rows_context_forPrinting___block_invoke;
  v29 = &unk_1E846DD80;
  v30 = a1;
  v31 = v17;
  v32 = v12;
  v33 = v13;
  v34 = v14;
  v35 = a6;
  v20 = v14;
  v21 = v13;
  v22 = v12;
  v23 = v17;
  [v19 enumerateIndexesUsingBlock:&v26];
  v24 = [v21 copy];

  return v24;
}

- (id)p_attributedStringForCell:()NSTextTableAdditions inTable:atColumn:row:shouldFilter:context:
{
  v29[1] = *MEMORY[0x1E69E9840];
  v13 = a8;
  v14 = MEMORY[0x1E69DB868];
  v15 = a4;
  v16 = a3;
  v17 = [[v14 alloc] initWithTable:v15 startingRow:a6 rowSpan:1 startingColumn:a5 columnSpan:1];

  [v17 setWidth:0 type:0 forLayer:1.0];
  v18 = [MEMORY[0x1E69DC888] lightGrayColor];
  [v17 setBorderColor:v18];

  [v17 setWidth:0 type:-1 forLayer:0 edge:5.0];
  [v17 setWidth:0 type:-1 forLayer:2 edge:5.0];
  [v17 setWidth:0 type:-1 forLayer:1 edge:1.0];
  [v17 setWidth:0 type:-1 forLayer:3 edge:1.0];
  v19 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\r"];
  v20 = objc_alloc_init(ICTextController);
  [(ICTTTextController *)v20 setDisableSingleLineA:1];
  [(ICTTTextController *)v20 setKeepNSTextTableAttributes:1];
  if (a7)
  {
    v21 = [ICTTTextStorage standardizedAttributedStringFromAttributedString:v16 withStyler:v20 fixAttachments:1 translateICTTFont:1 context:v13];

    v22 = [v21 mutableCopy];
  }

  else
  {
    v22 = [v16 mutableCopy];

    -[ICTTTextController styleFontInAttributedString:inRange:contentSizeCategory:](v20, "styleFontInAttributedString:inRange:contentSizeCategory:", v22, 0, [v22 length], 0);
  }

  if ([v22 length] >= 2)
  {
    v23 = [MEMORY[0x1E696AB08] newlineCharacterSet];
    v24 = [v22 string];
    v25 = [v23 characterIsMember:{objc_msgSend(v24, "characterAtIndex:", 0)}];

    if (v25)
    {
      [v22 insertAttributedString:v19 atIndex:0];
    }
  }

  [v22 appendAttributedString:v19];
  v29[0] = v17;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  [v22 ic_addTextBlocks:v26 range:{0, objc_msgSend(v22, "length")}];

  v27 = [v22 copy];

  return v27;
}

@end