@interface EMSheetMapper
- (CGSize)adjustedSize;
- (CGSize)preprocessSizeWithState:(id)a3;
@end

@implementation EMSheetMapper

- (CGSize)adjustedSize
{
  v3 = [(EMSheetMapper *)self width];
  v4 = [(EMSheetMapper *)self height];
  if (v3 > 0 || v4 >= 1)
  {
    v7 = v4;
    if (v3 <= 0)
    {
      v8 = v7 * 4.0 / 3.0;
    }

    else
    {
      v8 = v3;
      if (v4 <= 0)
      {
        v7 = v8 * 3.0 * 0.25;
      }
    }

    v5 = v8 + 20.0;
    v6 = v7 + 20.0;
  }

  else
  {
    v5 = 980.0;
    v6 = 600.0;
  }

  result.height = v6;
  result.width = v5;
  return result;
}

- (CGSize)preprocessSizeWithState:(id)a3
{
  v4 = a3;
  v5 = [(EMSheetMapper *)self preprocessWidthWithState:v4];
  v6 = [(EMSheetMapper *)self preprocessHeightWithState:v4];
  if (v5 >= 400.0)
  {
    v7 = v5;
  }

  else
  {
    v7 = 400.0;
  }

  if (v6 >= 300.0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 300.0;
  }

  v9 = v7;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end