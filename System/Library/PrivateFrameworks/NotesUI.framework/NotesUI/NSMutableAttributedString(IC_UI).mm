@interface NSMutableAttributedString(IC_UI)
- (void)ic_addForegroundColorInRangesWhereNoColorAlreadyExists:()IC_UI;
- (void)ic_setParagraphStyleForWritingDirection:()IC_UI andAlignment:;
@end

@implementation NSMutableAttributedString(IC_UI)

- (void)ic_setParagraphStyleForWritingDirection:()IC_UI andAlignment:
{
  v7 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  v12 = v7;
  if (a3 == -1)
  {
    string = [self string];
    v14.length = [self length];
    v14.location = 0;
    v9 = CFStringTokenizerCopyBestStringLanguage(string, v14);

    if (v9)
    {
      a3 = [MEMORY[0x1E695DF58] characterDirectionForLanguage:v9] == 2;
    }

    else
    {
      a3 = -1;
    }

    v7 = v12;
  }

  if ((a4 & (a3 != -1)) != 0)
  {
    v10 = 2 * (a3 != 0);
  }

  else
  {
    v10 = 4;
  }

  [v7 setAlignment:v10];
  [v12 setBaseWritingDirection:a3];
  v11 = *MEMORY[0x1E69DB688];
  [self removeAttribute:*MEMORY[0x1E69DB688] range:{0, objc_msgSend(self, "length")}];
  [self addAttribute:v11 value:v12 range:{0, objc_msgSend(self, "length")}];
}

- (void)ic_addForegroundColorInRangesWhereNoColorAlreadyExists:()IC_UI
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v6 = *MEMORY[0x1E69DB650];
    v7 = [self length];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __91__NSMutableAttributedString_IC_UI__ic_addForegroundColorInRangesWhereNoColorAlreadyExists___block_invoke;
    v11[3] = &unk_1E846A170;
    v12 = v5;
    v8 = v5;
    [self enumerateAttribute:v6 inRange:0 options:v7 usingBlock:{0, v11}];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __91__NSMutableAttributedString_IC_UI__ic_addForegroundColorInRangesWhereNoColorAlreadyExists___block_invoke_2;
    v9[3] = &unk_1E846DA98;
    v9[4] = self;
    v10 = v4;
    [v8 enumerateRangesUsingBlock:v9];
  }
}

@end