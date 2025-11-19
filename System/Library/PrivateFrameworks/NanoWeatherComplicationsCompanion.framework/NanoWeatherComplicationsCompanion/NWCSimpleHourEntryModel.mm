@interface NWCSimpleHourEntryModel
- (NWCSimpleHourEntryModel)initWithCoder:(id)a3;
- (NWCSimpleHourEntryModel)initWithTopString:(id)a3 middleString:(id)a4 bottomString:(id)a5 isDay:(BOOL)a6 timeZone:(id)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NWCSimpleHourEntryModel

- (NWCSimpleHourEntryModel)initWithTopString:(id)a3 middleString:(id)a4 bottomString:(id)a5 isDay:(BOOL)a6 timeZone:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = NWCSimpleHourEntryModel;
  v17 = [(NWCSimpleHourEntryModel *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_topString, a3);
    objc_storeStrong(&v18->_middleString, a4);
    objc_storeStrong(&v18->_bottomString, a5);
    v18->_isDay = a6;
    objc_storeStrong(&v18->_timeZone, a7);
  }

  return v18;
}

- (NWCSimpleHourEntryModel)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_topString);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_middleString);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_bottomString);
  v13 = [v4 decodeObjectOfClass:v11 forKey:v12];

  v14 = NSStringFromSelector(sel_isDay);
  v15 = [v4 decodeBoolForKey:v14];

  v16 = objc_opt_class();
  v17 = NSStringFromSelector(sel_timeZone);
  v18 = [v4 decodeObjectOfClass:v16 forKey:v17];

  v19 = [[NWCSimpleHourEntryModel alloc] initWithTopString:v7 middleString:v10 bottomString:v13 isDay:v15 timeZone:v18];
  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NWCSimpleHourEntryModel *)self topString];
  v6 = NSStringFromSelector(sel_topString);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(NWCSimpleHourEntryModel *)self middleString];
  v8 = NSStringFromSelector(sel_middleString);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(NWCSimpleHourEntryModel *)self bottomString];
  v10 = NSStringFromSelector(sel_bottomString);
  [v4 encodeObject:v9 forKey:v10];

  v11 = [(NWCSimpleHourEntryModel *)self isDay];
  v12 = NSStringFromSelector(sel_bottomString);
  [v4 encodeBool:v11 forKey:v12];

  v14 = [(NWCSimpleHourEntryModel *)self timeZone];
  v13 = NSStringFromSelector(sel_timeZone);
  [v4 encodeObject:v14 forKey:v13];
}

@end