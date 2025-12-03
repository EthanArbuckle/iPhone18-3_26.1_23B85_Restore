@interface EMSheetMapper
- (CGSize)adjustedSize;
- (CGSize)preprocessSizeWithState:(id)state;
@end

@implementation EMSheetMapper

- (CGSize)adjustedSize
{
  width = [(EMSheetMapper *)self width];
  height = [(EMSheetMapper *)self height];
  if (width > 0 || height >= 1)
  {
    v7 = height;
    if (width <= 0)
    {
      v8 = v7 * 4.0 / 3.0;
    }

    else
    {
      v8 = width;
      if (height <= 0)
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

- (CGSize)preprocessSizeWithState:(id)state
{
  stateCopy = state;
  v5 = [(EMSheetMapper *)self preprocessWidthWithState:stateCopy];
  v6 = [(EMSheetMapper *)self preprocessHeightWithState:stateCopy];
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