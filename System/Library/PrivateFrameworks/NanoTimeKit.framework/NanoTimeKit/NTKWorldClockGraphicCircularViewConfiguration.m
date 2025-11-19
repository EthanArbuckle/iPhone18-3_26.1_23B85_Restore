@interface NTKWorldClockGraphicCircularViewConfiguration
- (NTKWorldClockGraphicCircularViewConfiguration)initWithTimeZone:(id)a3 labelText:(id)a4 transitInfo:(id)a5 inTritium:(BOOL)a6 overrideDate:(id)a7 isPrivacy:(BOOL)a8;
@end

@implementation NTKWorldClockGraphicCircularViewConfiguration

- (NTKWorldClockGraphicCircularViewConfiguration)initWithTimeZone:(id)a3 labelText:(id)a4 transitInfo:(id)a5 inTritium:(BOOL)a6 overrideDate:(id)a7 isPrivacy:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v26.receiver = self;
  v26.super_class = NTKWorldClockGraphicCircularViewConfiguration;
  v18 = [(NTKWorldClockGraphicCircularViewConfiguration *)&v26 init];
  if (v18)
  {
    v19 = [v14 copy];
    timeZone = v18->_timeZone;
    v18->_timeZone = v19;

    v21 = [v15 copy];
    labelText = v18->_labelText;
    v18->_labelText = v21;

    objc_storeStrong(&v18->_transitInfo, a5);
    v18->_inTritium = a6;
    v23 = [v17 copy];
    overrideDate = v18->_overrideDate;
    v18->_overrideDate = v23;

    v18->_isPrivacy = a8;
  }

  return v18;
}

@end