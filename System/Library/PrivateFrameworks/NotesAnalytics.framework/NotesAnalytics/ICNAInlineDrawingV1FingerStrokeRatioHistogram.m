@interface ICNAInlineDrawingV1FingerStrokeRatioHistogram
- (void)setup;
@end

@implementation ICNAInlineDrawingV1FingerStrokeRatioHistogram

- (void)setup
{
  [(ICNAHistogramBase *)self setBucketLeftBounds:&unk_286E62F80];
  [(ICNAHistogramBase *)self setValuePrecision:0.01];

  [(ICNAHistogramBase *)self setValueMax:&unk_286E5F0F8];
}

@end