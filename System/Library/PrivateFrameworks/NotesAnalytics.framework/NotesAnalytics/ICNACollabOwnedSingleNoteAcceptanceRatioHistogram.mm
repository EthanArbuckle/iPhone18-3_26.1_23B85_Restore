@interface ICNACollabOwnedSingleNoteAcceptanceRatioHistogram
- (void)setup;
@end

@implementation ICNACollabOwnedSingleNoteAcceptanceRatioHistogram

- (void)setup
{
  [(ICNAHistogramBase *)self setBucketLeftBounds:&unk_286E63088];
  [(ICNAHistogramBase *)self setValuePrecision:0.01];

  [(ICNAHistogramBase *)self setValueMax:&unk_286E61078];
}

@end