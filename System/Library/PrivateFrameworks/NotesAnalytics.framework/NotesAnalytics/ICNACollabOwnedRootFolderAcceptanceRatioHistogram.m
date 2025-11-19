@interface ICNACollabOwnedRootFolderAcceptanceRatioHistogram
- (void)setup;
@end

@implementation ICNACollabOwnedRootFolderAcceptanceRatioHistogram

- (void)setup
{
  [(ICNAHistogramBase *)self setBucketLeftBounds:&unk_286E62EF0];
  [(ICNAHistogramBase *)self setValuePrecision:0.01];

  [(ICNAHistogramBase *)self setValueMax:&unk_286E5E180];
}

@end