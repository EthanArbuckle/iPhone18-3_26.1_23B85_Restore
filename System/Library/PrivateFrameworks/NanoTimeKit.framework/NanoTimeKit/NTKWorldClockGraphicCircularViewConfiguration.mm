@interface NTKWorldClockGraphicCircularViewConfiguration
- (NTKWorldClockGraphicCircularViewConfiguration)initWithTimeZone:(id)zone labelText:(id)text transitInfo:(id)info inTritium:(BOOL)tritium overrideDate:(id)date isPrivacy:(BOOL)privacy;
@end

@implementation NTKWorldClockGraphicCircularViewConfiguration

- (NTKWorldClockGraphicCircularViewConfiguration)initWithTimeZone:(id)zone labelText:(id)text transitInfo:(id)info inTritium:(BOOL)tritium overrideDate:(id)date isPrivacy:(BOOL)privacy
{
  zoneCopy = zone;
  textCopy = text;
  infoCopy = info;
  dateCopy = date;
  v26.receiver = self;
  v26.super_class = NTKWorldClockGraphicCircularViewConfiguration;
  v18 = [(NTKWorldClockGraphicCircularViewConfiguration *)&v26 init];
  if (v18)
  {
    v19 = [zoneCopy copy];
    timeZone = v18->_timeZone;
    v18->_timeZone = v19;

    v21 = [textCopy copy];
    labelText = v18->_labelText;
    v18->_labelText = v21;

    objc_storeStrong(&v18->_transitInfo, info);
    v18->_inTritium = tritium;
    v23 = [dateCopy copy];
    overrideDate = v18->_overrideDate;
    v18->_overrideDate = v23;

    v18->_isPrivacy = privacy;
  }

  return v18;
}

@end