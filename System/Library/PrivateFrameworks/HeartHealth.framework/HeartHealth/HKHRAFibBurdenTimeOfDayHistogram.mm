@interface HKHRAFibBurdenTimeOfDayHistogram
- (BOOL)isEqual:(id)a3;
- (HKHRAFibBurdenTimeOfDayHistogram)initWithCoder:(id)a3;
- (HKHRAFibBurdenTimeOfDayHistogram)initWithMidnightToFourAMBurden:(id)a3 fourAMtoEightAMBurden:(id)a4 eightAMToNoonBurden:(id)a5 noonToFourPMBurden:(id)a6 fourPMToEightPMBurden:(id)a7 eightPMToMidnightBurden:(id)a8;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKHRAFibBurdenTimeOfDayHistogram

- (HKHRAFibBurdenTimeOfDayHistogram)initWithMidnightToFourAMBurden:(id)a3 fourAMtoEightAMBurden:(id)a4 eightAMToNoonBurden:(id)a5 noonToFourPMBurden:(id)a6 fourPMToEightPMBurden:(id)a7 eightPMToMidnightBurden:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = HKHRAFibBurdenTimeOfDayHistogram;
  v18 = [(HKHRAFibBurdenTimeOfDayHistogram *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_midnightToFourAMBurden, a3);
    objc_storeStrong(&v19->_fourAMtoEightAMBurden, a4);
    objc_storeStrong(&v19->_eightAMToNoonBurden, a5);
    objc_storeStrong(&v19->_noonToFourPMBurden, a6);
    objc_storeStrong(&v19->_fourPMToEightPMBurden, a7);
    objc_storeStrong(&v19->_eightPMToMidnightBurden, a8);
  }

  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (void)encodeWithCoder:(id)a3
{
  midnightToFourAMBurden = self->_midnightToFourAMBurden;
  v5 = a3;
  [v5 encodeObject:midnightToFourAMBurden forKey:@"MidnightToFourAMBurdenKey"];
  [v5 encodeObject:self->_fourAMtoEightAMBurden forKey:@"FourAMtoEightAMBurdenKey"];
  [v5 encodeObject:self->_eightAMToNoonBurden forKey:@"EightAMToNoonBurdenKey"];
  [v5 encodeObject:self->_noonToFourPMBurden forKey:@"NoonToFourPMBurdenKey"];
  [v5 encodeObject:self->_fourPMToEightPMBurden forKey:@"FourPMToEightPMBurdenKey"];
  [v5 encodeObject:self->_eightPMToMidnightBurden forKey:@"EightPMToMidnightBurdenKey"];
}

- (HKHRAFibBurdenTimeOfDayHistogram)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = HKHRAFibBurdenTimeOfDayHistogram;
  v5 = [(HKHRAFibBurdenTimeOfDayHistogram *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MidnightToFourAMBurdenKey"];
    midnightToFourAMBurden = v5->_midnightToFourAMBurden;
    v5->_midnightToFourAMBurden = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FourAMtoEightAMBurdenKey"];
    fourAMtoEightAMBurden = v5->_fourAMtoEightAMBurden;
    v5->_fourAMtoEightAMBurden = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EightAMToNoonBurdenKey"];
    eightAMToNoonBurden = v5->_eightAMToNoonBurden;
    v5->_eightAMToNoonBurden = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"NoonToFourPMBurdenKey"];
    noonToFourPMBurden = v5->_noonToFourPMBurden;
    v5->_noonToFourPMBurden = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FourPMToEightPMBurdenKey"];
    fourPMToEightPMBurden = v5->_fourPMToEightPMBurden;
    v5->_fourPMToEightPMBurden = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EightPMToMidnightBurdenKey"];
    eightPMToMidnightBurden = v5->_eightPMToMidnightBurden;
    v5->_eightPMToMidnightBurden = v16;
  }

  return v5;
}

@end