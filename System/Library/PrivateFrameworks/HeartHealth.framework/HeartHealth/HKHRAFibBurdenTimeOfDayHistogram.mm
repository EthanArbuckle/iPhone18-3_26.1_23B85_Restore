@interface HKHRAFibBurdenTimeOfDayHistogram
- (BOOL)isEqual:(id)equal;
- (HKHRAFibBurdenTimeOfDayHistogram)initWithCoder:(id)coder;
- (HKHRAFibBurdenTimeOfDayHistogram)initWithMidnightToFourAMBurden:(id)burden fourAMtoEightAMBurden:(id)mBurden eightAMToNoonBurden:(id)noonBurden noonToFourPMBurden:(id)pMBurden fourPMToEightPMBurden:(id)eightPMBurden eightPMToMidnightBurden:(id)midnightBurden;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKHRAFibBurdenTimeOfDayHistogram

- (HKHRAFibBurdenTimeOfDayHistogram)initWithMidnightToFourAMBurden:(id)burden fourAMtoEightAMBurden:(id)mBurden eightAMToNoonBurden:(id)noonBurden noonToFourPMBurden:(id)pMBurden fourPMToEightPMBurden:(id)eightPMBurden eightPMToMidnightBurden:(id)midnightBurden
{
  burdenCopy = burden;
  mBurdenCopy = mBurden;
  noonBurdenCopy = noonBurden;
  pMBurdenCopy = pMBurden;
  eightPMBurdenCopy = eightPMBurden;
  midnightBurdenCopy = midnightBurden;
  v24.receiver = self;
  v24.super_class = HKHRAFibBurdenTimeOfDayHistogram;
  v18 = [(HKHRAFibBurdenTimeOfDayHistogram *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_midnightToFourAMBurden, burden);
    objc_storeStrong(&v19->_fourAMtoEightAMBurden, mBurden);
    objc_storeStrong(&v19->_eightAMToNoonBurden, noonBurden);
    objc_storeStrong(&v19->_noonToFourPMBurden, pMBurden);
    objc_storeStrong(&v19->_fourPMToEightPMBurden, eightPMBurden);
    objc_storeStrong(&v19->_eightPMToMidnightBurden, midnightBurden);
  }

  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = [(HKHRAFibBurdenAnalysisResult *)self->_midnightToFourAMBurden isEqual:v5->_midnightToFourAMBurden]&& [(HKHRAFibBurdenAnalysisResult *)self->_fourAMtoEightAMBurden isEqual:v5->_fourAMtoEightAMBurden]&& [(HKHRAFibBurdenAnalysisResult *)self->_eightAMToNoonBurden isEqual:v5->_eightAMToNoonBurden]&& [(HKHRAFibBurdenAnalysisResult *)self->_noonToFourPMBurden isEqual:v5->_noonToFourPMBurden]&& [(HKHRAFibBurdenAnalysisResult *)self->_fourPMToEightPMBurden isEqual:v5->_fourPMToEightPMBurden]&& [(HKHRAFibBurdenAnalysisResult *)self->_eightPMToMidnightBurden isEqual:v5->_eightPMToMidnightBurden];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(HKHRAFibBurdenAnalysisResult *)self->_midnightToFourAMBurden hash];
  v4 = [(HKHRAFibBurdenAnalysisResult *)self->_fourAMtoEightAMBurden hash]^ v3;
  v5 = [(HKHRAFibBurdenAnalysisResult *)self->_eightAMToNoonBurden hash];
  v6 = v4 ^ v5 ^ [(HKHRAFibBurdenAnalysisResult *)self->_noonToFourPMBurden hash];
  v7 = [(HKHRAFibBurdenAnalysisResult *)self->_fourPMToEightPMBurden hash];
  return v6 ^ v7 ^ [(HKHRAFibBurdenAnalysisResult *)self->_eightPMToMidnightBurden hash];
}

- (void)encodeWithCoder:(id)coder
{
  midnightToFourAMBurden = self->_midnightToFourAMBurden;
  coderCopy = coder;
  [coderCopy encodeObject:midnightToFourAMBurden forKey:@"MidnightToFourAMBurdenKey"];
  [coderCopy encodeObject:self->_fourAMtoEightAMBurden forKey:@"FourAMtoEightAMBurdenKey"];
  [coderCopy encodeObject:self->_eightAMToNoonBurden forKey:@"EightAMToNoonBurdenKey"];
  [coderCopy encodeObject:self->_noonToFourPMBurden forKey:@"NoonToFourPMBurdenKey"];
  [coderCopy encodeObject:self->_fourPMToEightPMBurden forKey:@"FourPMToEightPMBurdenKey"];
  [coderCopy encodeObject:self->_eightPMToMidnightBurden forKey:@"EightPMToMidnightBurdenKey"];
}

- (HKHRAFibBurdenTimeOfDayHistogram)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = HKHRAFibBurdenTimeOfDayHistogram;
  v5 = [(HKHRAFibBurdenTimeOfDayHistogram *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MidnightToFourAMBurdenKey"];
    midnightToFourAMBurden = v5->_midnightToFourAMBurden;
    v5->_midnightToFourAMBurden = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FourAMtoEightAMBurdenKey"];
    fourAMtoEightAMBurden = v5->_fourAMtoEightAMBurden;
    v5->_fourAMtoEightAMBurden = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EightAMToNoonBurdenKey"];
    eightAMToNoonBurden = v5->_eightAMToNoonBurden;
    v5->_eightAMToNoonBurden = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NoonToFourPMBurdenKey"];
    noonToFourPMBurden = v5->_noonToFourPMBurden;
    v5->_noonToFourPMBurden = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FourPMToEightPMBurdenKey"];
    fourPMToEightPMBurden = v5->_fourPMToEightPMBurden;
    v5->_fourPMToEightPMBurden = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EightPMToMidnightBurdenKey"];
    eightPMToMidnightBurden = v5->_eightPMToMidnightBurden;
    v5->_eightPMToMidnightBurden = v16;
  }

  return v5;
}

@end