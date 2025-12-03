@interface NDOACCoverageDetails
- (BOOL)hasTheftAndLoss;
- (NSString)coverageLabel;
- (void)setCoverageLabel:(id)label;
- (void)setHasTheftAndLoss:(BOOL)loss;
@end

@implementation NDOACCoverageDetails

- (BOOL)hasTheftAndLoss
{
  v3 = OBJC_IVAR___NDOACCoverageDetails_hasTheftAndLoss;
  swift_beginAccess();
  return *(self + v3);
}

- (NSString)coverageLabel
{
  v2 = (self + OBJC_IVAR___NDOACCoverageDetails_coverageLabel);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  v5 = sub_25BD797A8();

  return v5;
}

- (void)setCoverageLabel:(id)label
{
  v4 = sub_25BD797B8();
  v6 = v5;
  v7 = (self + OBJC_IVAR___NDOACCoverageDetails_coverageLabel);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (void)setHasTheftAndLoss:(BOOL)loss
{
  v5 = OBJC_IVAR___NDOACCoverageDetails_hasTheftAndLoss;
  swift_beginAccess();
  *(self + v5) = loss;
}

@end