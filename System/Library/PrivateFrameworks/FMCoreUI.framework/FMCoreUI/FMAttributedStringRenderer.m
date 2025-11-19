@interface FMAttributedStringRenderer
- (CGSize)_sizeFromTextStorage:(id)a3;
- (FMAttributedStringRenderer)init;
- (FMAttributedStringRenderer)initWithOptions:(id)a3;
- (id)_imageFromTextStorage:(id)a3 width:(double)a4 showExclusionPaths:(BOOL)a5;
- (id)_textStorageForAttributedString:(id)a3 width:(double)a4 options:(id)a5;
- (id)imageForAttributedString:(id)a3 width:(double)a4;
- (id)imageForAttributedString:(id)a3 width:(double)a4 showExclusionPaths:(BOOL)a5 options:(id)a6;
@end

@implementation FMAttributedStringRenderer

- (FMAttributedStringRenderer)init
{
  v3 = objc_alloc_init(FMAttributedStringRendererOptions);
  v4 = [(FMAttributedStringRenderer *)self initWithOptions:v3];

  return v4;
}

- (FMAttributedStringRenderer)initWithOptions:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FMAttributedStringRenderer;
  v6 = [(FMAttributedStringRenderer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_options, a3);
  }

  return v7;
}

- (id)imageForAttributedString:(id)a3 width:(double)a4
{
  v6 = a3;
  v7 = [(FMAttributedStringRenderer *)self options];
  v8 = [(FMAttributedStringRenderer *)self imageForAttributedString:v6 width:v7 options:a4];

  return v8;
}

- (id)imageForAttributedString:(id)a3 width:(double)a4 showExclusionPaths:(BOOL)a5 options:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a6;
  dispatch_assert_queue_not_V2(MEMORY[0x277D85CD0]);
  if (a4 <= 0.0)
  {
    [FMAttributedStringRenderer imageForAttributedString:width:showExclusionPaths:options:];
  }

  v12 = [(FMAttributedStringRenderer *)self _textStorageForAttributedString:v10 width:v11 options:a4];
  v13 = [(FMAttributedStringRenderer *)self _imageFromTextStorage:v12 width:v7 showExclusionPaths:a4];
  if (!v13)
  {
    [FMAttributedStringRenderer imageForAttributedString:width:showExclusionPaths:options:];
  }

  return v13;
}

- (id)_textStorageForAttributedString:(id)a3 width:(double)a4 options:(id)a5
{
  v7 = MEMORY[0x277D74238];
  v8 = a5;
  v9 = a3;
  v10 = objc_alloc_init(v7);
  v11 = [objc_alloc(MEMORY[0x277D74278]) initWithSize:{a4, INFINITY}];
  v12 = [objc_alloc(MEMORY[0x277CCAB48]) initWithAttributedString:v9];
  v13 = objc_alloc_init(MEMORY[0x277D74240]);
  [v8 hyphenationFactor];
  *&v14 = v14;
  [v13 setHyphenationFactor:v14];
  v15 = *MEMORY[0x277D74118];
  v16 = [v9 string];

  [v12 addAttribute:v15 value:v13 range:{0, objc_msgSend(v16, "length")}];
  [v10 setUsesDefaultHyphenation:0];
  v17 = [v8 exclusionPaths];
  [v11 setExclusionPaths:v17];

  [v11 setLineBreakMode:{objc_msgSend(v8, "lineBreakMode")}];
  [v8 lineFragmentPadding];
  [v11 setLineFragmentPadding:?];
  v18 = [v8 maximumNumberOfLines];

  [v11 setMaximumNumberOfLines:v18];
  [v10 addTextContainer:v11];
  v19 = [objc_alloc(MEMORY[0x277D742D8]) initWithAttributedString:v12];
  [v19 addLayoutManager:v10];
  v20 = [v10 textStorage];

  if (!v20)
  {
    [FMAttributedStringRenderer _textStorageForAttributedString:width:options:];
  }

  v21 = [v10 textContainers];
  v22 = [v21 count];

  if (v22 != 1)
  {
    [FMAttributedStringRenderer _textStorageForAttributedString:width:options:];
  }

  return v19;
}

- (CGSize)_sizeFromTextStorage:(id)a3
{
  v3 = a3;
  dispatch_assert_queue_not_V2(MEMORY[0x277D85CD0]);
  v4 = [v3 layoutManagers];

  v5 = [v4 firstObject];

  v6 = [v5 textContainers];
  v7 = [v6 firstObject];
  [v5 usedRectForTextContainer:v7];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (id)_imageFromTextStorage:(id)a3 width:(double)a4 showExclusionPaths:(BOOL)a5
{
  v8 = a3;
  v9 = [v8 layoutManagers];
  v10 = [v9 firstObject];

  [(FMAttributedStringRenderer *)self _sizeFromTextStorage:v8];
  v12 = v11;

  v13 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:{a4, v12}];
  v14 = [v10 textContainers];
  v15 = [v14 firstObject];
  v16 = [v10 glyphRangeForTextContainer:v15];
  v18 = v17;

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __77__FMAttributedStringRenderer__imageFromTextStorage_width_showExclusionPaths___block_invoke;
  v22[3] = &unk_278FDBB40;
  v23 = v10;
  v24 = v16;
  v25 = v18;
  v26 = a5;
  v19 = v10;
  v20 = [v13 imageWithActions:v22];

  return v20;
}

void __77__FMAttributedStringRenderer__imageFromTextStorage_width_showExclusionPaths___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBF348];
  v3 = *(MEMORY[0x277CBF348] + 8);
  [*(a1 + 32) drawBackgroundForGlyphRange:*(a1 + 40) atPoint:{*(a1 + 48), *MEMORY[0x277CBF348], v3}];
  [*(a1 + 32) drawGlyphsForGlyphRange:*(a1 + 40) atPoint:{*(a1 + 48), v2, v3}];
  if (*(a1 + 56) == 1)
  {
    v4 = [*(a1 + 32) textContainers];
    v5 = [v4 firstObject];

    v6 = [MEMORY[0x277D75348] redColor];
    [v6 setStroke];

    v7 = [MEMORY[0x277D75348] redColor];
    v8 = [v7 colorWithAlphaComponent:0.1];
    [v8 setFill];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = [v5 exclusionPaths];
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v15 + 1) + 8 * i);
          [v14 fill];
          [v14 stroke];
        }

        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }
}

- (void)imageForAttributedString:width:showExclusionPaths:options:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"width > 0.0" object:? file:? lineNumber:? description:?];
}

- (void)imageForAttributedString:width:showExclusionPaths:options:.cold.2()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"retValue != nil" object:? file:? lineNumber:? description:?];
}

- (void)_textStorageForAttributedString:width:options:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"layoutManager.textStorage != nil" object:? file:? lineNumber:? description:?];
}

- (void)_textStorageForAttributedString:width:options:.cold.2()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"layoutManager.textContainers.count == 1" object:? file:? lineNumber:? description:?];
}

@end