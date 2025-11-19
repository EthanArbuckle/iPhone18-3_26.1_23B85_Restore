@interface DKAppleCareProvider
- (DKAppleCareProvider)init;
- (DKAppleCareProvider)initWithFetchCoverageDetails:(id)a3;
- (NSString)coverageLabel;
- (id)_fetchCoverageDetails;
- (void)setCoverageLabel:(id)a3;
- (void)set_fetchCoverageDetails:(id)a3;
@end

@implementation DKAppleCareProvider

- (NSString)coverageLabel
{
  if (*(self + OBJC_IVAR___DKAppleCareProvider_coverageLabel + 8))
  {
    v2 = *(self + OBJC_IVAR___DKAppleCareProvider_coverageLabel);
    v3 = *(self + OBJC_IVAR___DKAppleCareProvider_coverageLabel + 8);

    v4 = sub_248D82F10();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setCoverageLabel:(id)a3
{
  if (a3)
  {
    v4 = sub_248D82F20();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___DKAppleCareProvider_coverageLabel);
  v7 = *(self + OBJC_IVAR___DKAppleCareProvider_coverageLabel + 8);
  *v6 = v4;
  v6[1] = v5;
}

- (id)_fetchCoverageDetails
{
  v2 = *(self + OBJC_IVAR___DKAppleCareProvider__fetchCoverageDetails + 8);
  v5[4] = *(self + OBJC_IVAR___DKAppleCareProvider__fetchCoverageDetails);
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_248D7FC44;
  v5[3] = &block_descriptor_38;
  v3 = _Block_copy(v5);

  return v3;
}

- (void)set_fetchCoverageDetails:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = (self + OBJC_IVAR___DKAppleCareProvider__fetchCoverageDetails);
  v7 = *(self + OBJC_IVAR___DKAppleCareProvider__fetchCoverageDetails + 8);
  *v6 = sub_248D820A8;
  v6[1] = v5;
}

- (DKAppleCareProvider)init
{
  ObjectType = swift_getObjectType();
  v4 = (self + OBJC_IVAR___DKAppleCareProvider_coverageLabel);
  *v4 = 0;
  v4[1] = 0;
  *(self + OBJC_IVAR___DKAppleCareProvider_isTheftAndLossEnabled) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = ObjectType;
  v6 = (self + OBJC_IVAR___DKAppleCareProvider__fetchCoverageDetails);
  *v6 = sub_248D820BC;
  v6[1] = v5;
  v8.receiver = self;
  v8.super_class = DKAppleCareProvider;
  return [(DKAppleCareProvider *)&v8 init];
}

- (DKAppleCareProvider)initWithFetchCoverageDetails:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = (self + OBJC_IVAR___DKAppleCareProvider_coverageLabel);
  *v6 = 0;
  v6[1] = 0;
  *(self + OBJC_IVAR___DKAppleCareProvider_isTheftAndLossEnabled) = 0;
  v7 = (self + OBJC_IVAR___DKAppleCareProvider__fetchCoverageDetails);
  *v7 = sub_248D81EFC;
  v7[1] = v5;
  v9.receiver = self;
  v9.super_class = DKAppleCareProvider;
  return [(DKAppleCareProvider *)&v9 init];
}

@end