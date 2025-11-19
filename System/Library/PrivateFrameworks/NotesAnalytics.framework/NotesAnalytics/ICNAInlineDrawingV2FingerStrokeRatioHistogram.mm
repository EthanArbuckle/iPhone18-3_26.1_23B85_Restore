@interface ICNAInlineDrawingV2FingerStrokeRatioHistogram
- (void)setup;
@end

@implementation ICNAInlineDrawingV2FingerStrokeRatioHistogram

- (void)setup
{
  [(ICNAHistogramBase *)self setBucketLeftBounds:&unk_286E630E8];
  [(ICNAHistogramBase *)self setValuePrecision:0.01];

  [(ICNAHistogramBase *)self setValueMax:&unk_286E61BA0];
}

@end