@interface NUDefaultSourceDerivation
- ($0AC6E346AE4835514AAA8AC86D8F4844)scaleFromOriginalSize:(id)a3 derivativeSize:(id)a4;
@end

@implementation NUDefaultSourceDerivation

- ($0AC6E346AE4835514AAA8AC86D8F4844)scaleFromOriginalSize:(id)a3 derivativeSize:(id)a4
{
  if (a3.var0 < 1 || a3.var1 <= 0)
  {
    var0 = *(&NUScaleOne + 1);
    var1 = NUScaleOne;
  }

  else
  {
    if (a3.var0 <= a3.var1)
    {
      var1 = a4.var1;
    }

    else
    {
      var1 = a4.var0;
    }

    if (a3.var0 <= a3.var1)
    {
      var0 = a3.var1;
    }

    else
    {
      var0 = a3.var0;
    }
  }

  result.var1 = var0;
  result.var0 = var1;
  return result;
}

@end