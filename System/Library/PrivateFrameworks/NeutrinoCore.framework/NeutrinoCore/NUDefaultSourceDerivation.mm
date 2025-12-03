@interface NUDefaultSourceDerivation
- ($0AC6E346AE4835514AAA8AC86D8F4844)scaleFromOriginalSize:(id)size derivativeSize:(id)derivativeSize;
@end

@implementation NUDefaultSourceDerivation

- ($0AC6E346AE4835514AAA8AC86D8F4844)scaleFromOriginalSize:(id)size derivativeSize:(id)derivativeSize
{
  if (size.var0 < 1 || size.var1 <= 0)
  {
    var0 = *(&NUScaleOne + 1);
    var1 = NUScaleOne;
  }

  else
  {
    if (size.var0 <= size.var1)
    {
      var1 = derivativeSize.var1;
    }

    else
    {
      var1 = derivativeSize.var0;
    }

    if (size.var0 <= size.var1)
    {
      var0 = size.var1;
    }

    else
    {
      var0 = size.var0;
    }
  }

  result.var1 = var0;
  result.var0 = var1;
  return result;
}

@end