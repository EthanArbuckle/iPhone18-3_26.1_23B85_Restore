@interface HKHRAFibBurdenDayOfWeekHistogram
- (BOOL)isEqual:(id)a3;
- (HKHRAFibBurdenDayOfWeekHistogram)initWithCoder:(id)a3;
- (HKHRAFibBurdenDayOfWeekHistogram)initWithSundayBurden:(id)a3 mondayBurden:(id)a4 tuesdayBurden:(id)a5 wednesdayBurden:(id)a6 thursdayBurden:(id)a7 fridayBurden:(id)a8 saturdayBurden:(id)a9;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKHRAFibBurdenDayOfWeekHistogram

- (HKHRAFibBurdenDayOfWeekHistogram)initWithSundayBurden:(id)a3 mondayBurden:(id)a4 tuesdayBurden:(id)a5 wednesdayBurden:(id)a6 thursdayBurden:(id)a7 fridayBurden:(id)a8 saturdayBurden:(id)a9
{
  v25 = a3;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v21 = a7;
  v16 = a8;
  v17 = a9;
  v26.receiver = self;
  v26.super_class = HKHRAFibBurdenDayOfWeekHistogram;
  v18 = [(HKHRAFibBurdenDayOfWeekHistogram *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_sundayBurden, a3);
    objc_storeStrong(&v19->_mondayBurden, a4);
    objc_storeStrong(&v19->_tuesdayBurden, a5);
    objc_storeStrong(&v19->_wednesdayBurden, a6);
    objc_storeStrong(&v19->_thursdayBurden, a7);
    objc_storeStrong(&v19->_fridayBurden, a8);
    objc_storeStrong(&v19->_saturdayBurden, a9);
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

- (void)encodeWithCoder:(id)a3
{
  sundayBurden = self->_sundayBurden;
  v5 = a3;
  [v5 encodeObject:sundayBurden forKey:@"SundayBurdenKey"];
  [v5 encodeObject:self->_mondayBurden forKey:@"MondayBurdenKey"];
  [v5 encodeObject:self->_tuesdayBurden forKey:@"TuesdayBurdenKey"];
  [v5 encodeObject:self->_wednesdayBurden forKey:@"WednesdayBurdenKey"];
  [v5 encodeObject:self->_thursdayBurden forKey:@"ThursdayBurdenKey"];
  [v5 encodeObject:self->_fridayBurden forKey:@"FridayBurdenKey"];
  [v5 encodeObject:self->_saturdayBurden forKey:@"SaturdayBurdenKey"];
}

- (HKHRAFibBurdenDayOfWeekHistogram)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = HKHRAFibBurdenDayOfWeekHistogram;
  v5 = [(HKHRAFibBurdenDayOfWeekHistogram *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SundayBurdenKey"];
    sundayBurden = v5->_sundayBurden;
    v5->_sundayBurden = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MondayBurdenKey"];
    mondayBurden = v5->_mondayBurden;
    v5->_mondayBurden = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TuesdayBurdenKey"];
    tuesdayBurden = v5->_tuesdayBurden;
    v5->_tuesdayBurden = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WednesdayBurdenKey"];
    wednesdayBurden = v5->_wednesdayBurden;
    v5->_wednesdayBurden = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ThursdayBurdenKey"];
    thursdayBurden = v5->_thursdayBurden;
    v5->_thursdayBurden = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FridayBurdenKey"];
    fridayBurden = v5->_fridayBurden;
    v5->_fridayBurden = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SaturdayBurdenKey"];
    saturdayBurden = v5->_saturdayBurden;
    v5->_saturdayBurden = v18;
  }

  return v5;
}

@end