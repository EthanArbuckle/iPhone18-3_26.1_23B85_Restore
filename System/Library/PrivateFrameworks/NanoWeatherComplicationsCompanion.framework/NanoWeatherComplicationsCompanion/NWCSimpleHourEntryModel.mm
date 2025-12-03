@interface NWCSimpleHourEntryModel
- (NWCSimpleHourEntryModel)initWithCoder:(id)coder;
- (NWCSimpleHourEntryModel)initWithTopString:(id)string middleString:(id)middleString bottomString:(id)bottomString isDay:(BOOL)day timeZone:(id)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NWCSimpleHourEntryModel

- (NWCSimpleHourEntryModel)initWithTopString:(id)string middleString:(id)middleString bottomString:(id)bottomString isDay:(BOOL)day timeZone:(id)zone
{
  stringCopy = string;
  middleStringCopy = middleString;
  bottomStringCopy = bottomString;
  zoneCopy = zone;
  v20.receiver = self;
  v20.super_class = NWCSimpleHourEntryModel;
  v17 = [(NWCSimpleHourEntryModel *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_topString, string);
    objc_storeStrong(&v18->_middleString, middleString);
    objc_storeStrong(&v18->_bottomString, bottomString);
    v18->_isDay = day;
    objc_storeStrong(&v18->_timeZone, zone);
  }

  return v18;
}

- (NWCSimpleHourEntryModel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_topString);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_middleString);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_bottomString);
  v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];

  v14 = NSStringFromSelector(sel_isDay);
  v15 = [coderCopy decodeBoolForKey:v14];

  v16 = objc_opt_class();
  v17 = NSStringFromSelector(sel_timeZone);
  v18 = [coderCopy decodeObjectOfClass:v16 forKey:v17];

  v19 = [[NWCSimpleHourEntryModel alloc] initWithTopString:v7 middleString:v10 bottomString:v13 isDay:v15 timeZone:v18];
  return v19;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  topString = [(NWCSimpleHourEntryModel *)self topString];
  v6 = NSStringFromSelector(sel_topString);
  [coderCopy encodeObject:topString forKey:v6];

  middleString = [(NWCSimpleHourEntryModel *)self middleString];
  v8 = NSStringFromSelector(sel_middleString);
  [coderCopy encodeObject:middleString forKey:v8];

  bottomString = [(NWCSimpleHourEntryModel *)self bottomString];
  v10 = NSStringFromSelector(sel_bottomString);
  [coderCopy encodeObject:bottomString forKey:v10];

  isDay = [(NWCSimpleHourEntryModel *)self isDay];
  v12 = NSStringFromSelector(sel_bottomString);
  [coderCopy encodeBool:isDay forKey:v12];

  timeZone = [(NWCSimpleHourEntryModel *)self timeZone];
  v13 = NSStringFromSelector(sel_timeZone);
  [coderCopy encodeObject:timeZone forKey:v13];
}

@end