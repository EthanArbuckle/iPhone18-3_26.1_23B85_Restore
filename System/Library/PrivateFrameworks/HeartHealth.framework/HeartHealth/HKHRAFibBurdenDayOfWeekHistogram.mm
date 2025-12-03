@interface HKHRAFibBurdenDayOfWeekHistogram
- (BOOL)isEqual:(id)equal;
- (HKHRAFibBurdenDayOfWeekHistogram)initWithCoder:(id)coder;
- (HKHRAFibBurdenDayOfWeekHistogram)initWithSundayBurden:(id)burden mondayBurden:(id)mondayBurden tuesdayBurden:(id)tuesdayBurden wednesdayBurden:(id)wednesdayBurden thursdayBurden:(id)thursdayBurden fridayBurden:(id)fridayBurden saturdayBurden:(id)saturdayBurden;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKHRAFibBurdenDayOfWeekHistogram

- (HKHRAFibBurdenDayOfWeekHistogram)initWithSundayBurden:(id)burden mondayBurden:(id)mondayBurden tuesdayBurden:(id)tuesdayBurden wednesdayBurden:(id)wednesdayBurden thursdayBurden:(id)thursdayBurden fridayBurden:(id)fridayBurden saturdayBurden:(id)saturdayBurden
{
  burdenCopy = burden;
  mondayBurdenCopy = mondayBurden;
  tuesdayBurdenCopy = tuesdayBurden;
  wednesdayBurdenCopy = wednesdayBurden;
  thursdayBurdenCopy = thursdayBurden;
  fridayBurdenCopy = fridayBurden;
  saturdayBurdenCopy = saturdayBurden;
  v26.receiver = self;
  v26.super_class = HKHRAFibBurdenDayOfWeekHistogram;
  v18 = [(HKHRAFibBurdenDayOfWeekHistogram *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_sundayBurden, burden);
    objc_storeStrong(&v19->_mondayBurden, mondayBurden);
    objc_storeStrong(&v19->_tuesdayBurden, tuesdayBurden);
    objc_storeStrong(&v19->_wednesdayBurden, wednesdayBurden);
    objc_storeStrong(&v19->_thursdayBurden, thursdayBurden);
    objc_storeStrong(&v19->_fridayBurden, fridayBurden);
    objc_storeStrong(&v19->_saturdayBurden, saturdayBurden);
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
      v6 = [(HKHRAFibBurdenAnalysisResult *)self->_sundayBurden isEqual:v5->_sundayBurden]&& [(HKHRAFibBurdenAnalysisResult *)self->_mondayBurden isEqual:v5->_mondayBurden]&& [(HKHRAFibBurdenAnalysisResult *)self->_tuesdayBurden isEqual:v5->_tuesdayBurden]&& [(HKHRAFibBurdenAnalysisResult *)self->_wednesdayBurden isEqual:v5->_wednesdayBurden]&& [(HKHRAFibBurdenAnalysisResult *)self->_thursdayBurden isEqual:v5->_thursdayBurden]&& [(HKHRAFibBurdenAnalysisResult *)self->_fridayBurden isEqual:v5->_fridayBurden]&& [(HKHRAFibBurdenAnalysisResult *)self->_saturdayBurden isEqual:v5->_saturdayBurden];
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
  v3 = [(HKHRAFibBurdenAnalysisResult *)self->_sundayBurden hash];
  v4 = [(HKHRAFibBurdenAnalysisResult *)self->_mondayBurden hash]^ v3;
  v5 = [(HKHRAFibBurdenAnalysisResult *)self->_tuesdayBurden hash];
  v6 = v4 ^ v5 ^ [(HKHRAFibBurdenAnalysisResult *)self->_wednesdayBurden hash];
  v7 = [(HKHRAFibBurdenAnalysisResult *)self->_thursdayBurden hash];
  v8 = v7 ^ [(HKHRAFibBurdenAnalysisResult *)self->_fridayBurden hash];
  return v6 ^ v8 ^ [(HKHRAFibBurdenAnalysisResult *)self->_saturdayBurden hash];
}

- (void)encodeWithCoder:(id)coder
{
  sundayBurden = self->_sundayBurden;
  coderCopy = coder;
  [coderCopy encodeObject:sundayBurden forKey:@"SundayBurdenKey"];
  [coderCopy encodeObject:self->_mondayBurden forKey:@"MondayBurdenKey"];
  [coderCopy encodeObject:self->_tuesdayBurden forKey:@"TuesdayBurdenKey"];
  [coderCopy encodeObject:self->_wednesdayBurden forKey:@"WednesdayBurdenKey"];
  [coderCopy encodeObject:self->_thursdayBurden forKey:@"ThursdayBurdenKey"];
  [coderCopy encodeObject:self->_fridayBurden forKey:@"FridayBurdenKey"];
  [coderCopy encodeObject:self->_saturdayBurden forKey:@"SaturdayBurdenKey"];
}

- (HKHRAFibBurdenDayOfWeekHistogram)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = HKHRAFibBurdenDayOfWeekHistogram;
  v5 = [(HKHRAFibBurdenDayOfWeekHistogram *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SundayBurdenKey"];
    sundayBurden = v5->_sundayBurden;
    v5->_sundayBurden = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MondayBurdenKey"];
    mondayBurden = v5->_mondayBurden;
    v5->_mondayBurden = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TuesdayBurdenKey"];
    tuesdayBurden = v5->_tuesdayBurden;
    v5->_tuesdayBurden = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WednesdayBurdenKey"];
    wednesdayBurden = v5->_wednesdayBurden;
    v5->_wednesdayBurden = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ThursdayBurdenKey"];
    thursdayBurden = v5->_thursdayBurden;
    v5->_thursdayBurden = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FridayBurdenKey"];
    fridayBurden = v5->_fridayBurden;
    v5->_fridayBurden = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SaturdayBurdenKey"];
    saturdayBurden = v5->_saturdayBurden;
    v5->_saturdayBurden = v18;
  }

  return v5;
}

@end