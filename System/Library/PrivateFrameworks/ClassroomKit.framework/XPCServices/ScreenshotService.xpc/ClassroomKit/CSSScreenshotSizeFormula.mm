@interface CSSScreenshotSizeFormula
- (CGSize)sizeByLimitingMaximumSize:(CGSize)size toDisplaySize:(id)displaySize;
- (id)screenshotSizeWithMaximumSize:(CGSize)size displaySize:(id)displaySize;
- (id)smallestPossibleScreenshotSizeForDisplaySize:(id)size;
- (unint64_t)scaleForSourceSize:(id)size toDestinationSize:(CGSize)destinationSize;
@end

@implementation CSSScreenshotSizeFormula

- (id)screenshotSizeWithMaximumSize:(CGSize)size displaySize:(id)displaySize
{
  height = size.height;
  width = size.width;
  displaySizeCopy = displaySize;
  if ([displaySizeCopy hasZeroArea])
  {
    v8 = +[CSSIntegralSize zeroSize];
  }

  else
  {
    [(CSSScreenshotSizeFormula *)self sizeByLimitingMaximumSize:displaySizeCopy toDisplaySize:width, height];
    v10 = v9;
    v12 = v11;
    v13 = [(CSSScreenshotSizeFormula *)self smallestPossibleScreenshotSizeForDisplaySize:displaySizeCopy];
    v8 = [v13 sizeScaledByFactor:{-[CSSScreenshotSizeFormula scaleForSourceSize:toDestinationSize:](self, "scaleForSourceSize:toDestinationSize:", v13, v10, v12)}];
  }

  return v8;
}

- (CGSize)sizeByLimitingMaximumSize:(CGSize)size toDisplaySize:(id)displaySize
{
  height = size.height;
  width = size.width;
  displaySizeCopy = displaySize;
  v7 = fmin(width, [displaySizeCopy width]);
  height = [displaySizeCopy height];

  v9 = fmin(height, height);
  v10 = v7;
  result.height = v9;
  result.width = v10;
  return result;
}

- (unint64_t)scaleForSourceSize:(id)size toDestinationSize:(CGSize)destinationSize
{
  height = destinationSize.height;
  width = destinationSize.width;
  sizeCopy = size;
  v7 = width / [sizeCopy width];
  height = [sizeCopy height];

  v9 = fmin(v7, height / height);
  if (v9 <= 1)
  {
    return 1;
  }

  else
  {
    return v9;
  }
}

- (id)smallestPossibleScreenshotSizeForDisplaySize:(id)size
{
  sizeCopy = size;
  v4 = [CSSFraction alloc];
  width = [sizeCopy width];
  height = [sizeCopy height];

  v7 = [(CSSFraction *)v4 initWithNumerator:width denominator:height];
  simplifiedFraction = [(CSSFraction *)v7 simplifiedFraction];
  v9 = -[CSSIntegralSize initWithWidth:height:]([CSSIntegralSize alloc], "initWithWidth:height:", [simplifiedFraction numerator], objc_msgSend(simplifiedFraction, "denominator"));

  return v9;
}

@end