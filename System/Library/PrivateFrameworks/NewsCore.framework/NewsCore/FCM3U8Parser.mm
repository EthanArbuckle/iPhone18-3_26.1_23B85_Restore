@interface FCM3U8Parser
- (BOOL)parseWithError:(uint64_t)error;
- (uint64_t)saveLine:(uint64_t)line;
- (void)initWithData:(void *)data;
- (void)processLine;
@end

@implementation FCM3U8Parser

- (void)initWithData:(void *)data
{
  v4 = a2;
  if (data)
  {
    v9.receiver = data;
    v9.super_class = FCM3U8Parser;
    v5 = objc_msgSendSuper2(&v9, sel_init);
    data = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 3, a2);
      data = [MEMORY[0x1E695DF88] data];
      v7 = data[4];
      data[4] = data;
    }
  }

  return data;
}

- (BOOL)parseWithError:(uint64_t)error
{
  if (!error)
  {
    return 0;
  }

  v3 = *(error + 40);
  v4 = v3 == 0;
  if (v3)
  {
    v6 = v3;
    if (a2)
    {
      *a2 = v6;
    }
  }

  else
  {
    v7 = *(error + 24);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __31__FCM3U8Parser_parseWithError___block_invoke;
    v9[3] = &unk_1E7C36FC0;
    v9[4] = error;
    [v7 enumerateByteRangesUsingBlock:v9];
    if ([*(error + 32) length])
    {
      [(FCM3U8Parser *)error processLine];
    }
  }

  return v4;
}

void __31__FCM3U8Parser_parseWithError___block_invoke(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a3 + a4;
  if (a3 < a3 + a4)
  {
    v5 = a3;
    v8 = -(a4 + a3);
    do
    {
      v9 = *(a1 + 32);
      if (v9)
      {
        v10 = a2 + v5;
        v11 = v4 - v5;
        if (v4 == v5)
        {
LABEL_9:
          v17 = *(v9 + 32);
          v18 = v4 - v5;
        }

        else
        {
          v12 = 0;
          v13 = (a2 + v5);
          v14 = (a2 + v5);
          while (1)
          {
            v16 = *v14++;
            v15 = v16;
            if (v16 == 10)
            {
              v19 = 1;
              goto LABEL_14;
            }

            if (v15 == 13)
            {
              break;
            }

            --v12;
            v13 = v14;
            if (v8 + v5 == v12)
            {
              goto LABEL_9;
            }
          }

          if (1 - v12 < v11 && v13[1] == 10)
          {
            v19 = 2;
LABEL_14:
            [*(v9 + 32) appendBytes:v10 length:-v12];
            [(FCM3U8Parser *)v9 processLine];
            v11 = v19 - v12;
            goto LABEL_17;
          }

          v11 = -v12;
          v17 = *(v9 + 32);
          v18 = ~v12;
        }

        [v17 appendBytes:v10 length:v18];
      }

      else
      {
        v11 = 0;
      }

LABEL_17:
      v5 += v11;
    }

    while (v5 < v4);
  }
}

- (void)processLine
{
  if (!self)
  {
    return;
  }

  if ([*(self + 32) length])
  {
    v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:*(self + 32) encoding:4];
    if (![v31 length])
    {
LABEL_46:
      v29 = *(self + 32);
      [v29 replaceBytesInRange:0 withBytes:objc_msgSend(v29 length:{"length"), 0, 0}];

      return;
    }

    if (![v31 hasPrefix:@"#EXT"])
    {
      if ([v31 hasPrefix:@"#"])
      {
        WeakRetained = objc_loadWeakRetained((self + 16));
        [WeakRetained parser:self lineIsComment:v31];

        if (*(self + 8) == 1)
        {
          v8 = objc_loadWeakRetained((self + 16));
          v9 = [v8 parserShouldCollectLine:self];

          if (v9)
          {
            [(FCM3U8Parser *)self saveLine:v31];
          }
        }
      }

      else
      {
        if (*(self + 8) == 1)
        {
          v22 = objc_loadWeakRetained((self + 16));
          v23 = [v22 parserShouldCollectLine:self];

          if (v23)
          {
            [(FCM3U8Parser *)self saveLine:v31];
          }
        }

        v24 = objc_loadWeakRetained((self + 16));
        v25 = [MEMORY[0x1E695DFF8] URLWithString:v31];
        [v24 parser:self lineIsURL:v25];
      }

      goto LABEL_46;
    }

    v2 = v31;
    v3 = [v2 rangeOfString:@":"];
    if (v3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = 0;
      v5 = &stru_1F2DC7DC0;
      v6 = v2;
      goto LABEL_42;
    }

    v10 = v3;
    v6 = [v2 substringToIndex:v3];

    v5 = [v2 substringFromIndex:v10 + 1];
    if ([(__CFString *)v5 length])
    {
      v5 = v5;
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      if ([(__CFString *)v5 length])
      {
        v11 = 0;
        while (1)
        {
          v12 = [(__CFString *)v5 rangeOfString:@"=" options:0 range:v11, [(__CFString *)v5 length]- v11];
          if (v12 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_40;
          }

          v13 = v12;
          v14 = [(__CFString *)v5 substringWithRange:v11, v12 - v11];
          v15 = [(__CFString *)v5 length];
          v16 = [(__CFString *)v5 rangeOfString:@"" options:0 range:v13 + 1, v15 + ~v13];
          v17 = [(__CFString *)v5 rangeOfString:@" options:" range:0, v13 + 1, v15 + ~v13];
          v18 = v17;
          if (v16 == 0x7FFFFFFFFFFFFFFFLL)
          {
            break;
          }

          if (v17 != 0x7FFFFFFFFFFFFFFFLL && v17 <= v16)
          {
            goto LABEL_25;
          }

          v20 = [(__CFString *)v5 rangeOfString:@"" options:0 range:v16 + 1, [(__CFString *)v5 length]- (v16 + 1)];
          if (v20 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v19 = [(__CFString *)v5 substringFromIndex:v16 + 1];
          }

          else
          {
            v21 = v20;
            v19 = [(__CFString *)v5 substringWithRange:v16 + 1, v20 + ~v16];
            v18 = [(__CFString *)v5 rangeOfString:@" options:" range:0, v21 + 1, [(__CFString *)v5 length]- (v21 + 1)];
          }

          if (v18 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_34;
          }

LABEL_26:
          v11 = v18 + 1;
          if (v14)
          {
            goto LABEL_27;
          }

LABEL_28:

          if (v11 >= [(__CFString *)v5 length])
          {
            goto LABEL_40;
          }
        }

        if (v17 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v19 = [(__CFString *)v5 substringFromIndex:v13 + 1];
LABEL_34:
          v11 = [(__CFString *)v5 length];
          if (!v14)
          {
            goto LABEL_28;
          }

LABEL_27:
          [dictionary setObject:v19 forKeyedSubscript:v14];
          goto LABEL_28;
        }

LABEL_25:
        v19 = [(__CFString *)v5 substringWithRange:v13 + 1, v17 + ~v13];
        goto LABEL_26;
      }

LABEL_40:
      v4 = [dictionary copy];
    }

    else
    {
      v4 = 0;
    }

LABEL_42:
    v26 = objc_loadWeakRetained((self + 16));
    [v26 parser:self lineIsTag:v6 value:v5 attributeList:v4];

    if (*(self + 8) == 1)
    {
      v27 = objc_loadWeakRetained((self + 16));
      v28 = [v27 parserShouldCollectLine:self];

      if (v28)
      {
        [(FCM3U8Parser *)self saveLine:v2];
      }
    }

    goto LABEL_46;
  }

  if (*(self + 8) == 1)
  {

    [(FCM3U8Parser *)self saveLine:?];
  }
}

- (uint64_t)saveLine:(uint64_t)line
{
  v3 = *(line + 48);
  v4 = a2;
  if (!v3)
  {
    data = [MEMORY[0x1E695DF88] data];
    v6 = *(line + 48);
    *(line + 48) = data;
  }

  v7 = *(line + 48);
  v8 = v4;
  v9 = v7;
  uTF8String = [v4 UTF8String];
  uTF8String2 = [v4 UTF8String];

  [v9 appendBytes:uTF8String length:strlen(uTF8String2)];
  v12 = *(line + 48);

  return [v12 appendBytes:"\n" length:1];
}

@end