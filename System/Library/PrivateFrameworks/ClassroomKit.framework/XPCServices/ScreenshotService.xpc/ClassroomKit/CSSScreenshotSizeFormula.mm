@interface CSSScreenshotSizeFormula
- (CGSize)sizeByLimitingMaximumSize:(CGSize)a3 toDisplaySize:(id)a4;
- (id)screenshotSizeWithMaximumSize:(CGSize)a3 displaySize:(id)a4;
- (id)smallestPossibleScreenshotSizeForDisplaySize:(id)a3;
- (unint64_t)scaleForSourceSize:(id)a3 toDestinationSize:(CGSize)a4;
@end

@implementation CSSScreenshotSizeFormula

- (id)screenshotSizeWithMaximumSize:(CGSize)a3 displaySize:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  if ([v7 hasZeroArea])
  {
    v8 = +[CSSIntegralSize zeroSize];
  }

  else
  {
    [(CSSScreenshotSizeFormula *)self sizeByLimitingMaximumSize:v7 toDisplaySize:width, height];
    v10 = v9;
    v12 = v11;
    v13 = [(CSSScreenshotSizeFormula *)self smallestPossibleScreenshotSizeForDisplaySize:v7];
    v8 = [v13 sizeScaledByFactor:{-[CSSScreenshotSizeFormula scaleForSourceSize:toDestinationSize:](self, "scaleForSourceSize:toDestinationSize:", v13, v10, v12)}];
  }

  return v8;
}

- (CGSize)sizeByLimitingMaximumSize:(CGSize)a3 toDisplaySize:(id)a4
{
  height = a3.height;
  width = a3.width;
  v6 = a4;
  v7 = fmin(width, [v6 width]);
  v8 = [v6 height];

  v9 = fmin(height, v8);
  v10 = v7;
  result.height = v9;
  result.width = v10;
  return result;
}

- (unint64_t)scaleForSourceSize:(id)a3 toDestinationSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3;
  v7 = width / [v6 width];
  v8 = [v6 height];

  v9 = fmin(v7, height / v8);
  if (v9 <= 1)
  {
    return 1;
  }

  else
  {
    return v9;
  }
}

- (id)smallestPossibleScreenshotSizeForDisplaySize:(id)a3
{
  v3 = a3;
  v4 = [CSSFraction alloc];
  v5 = [v3 width];
  v6 = [v3 height];

  v7 = [(CSSFraction *)v4 initWithNumerator:v5 denominator:v6];
  v8 = [(CSSFraction *)v7 simplifiedFraction];
  v9 = -[CSSIntegralSize initWithWidth:height:]([CSSIntegralSize alloc], "initWithWidth:height:", [v8 numerator], objc_msgSend(v8, "denominator"));

  return v9;
}

@end