@interface MOEventBundleLabelFormat
- (MOEventBundleLabelFormat)initWithFormat:(id)format capitalizationType:(unint64_t)type;
- (id)description;
@end

@implementation MOEventBundleLabelFormat

- (MOEventBundleLabelFormat)initWithFormat:(id)format capitalizationType:(unint64_t)type
{
  formatCopy = format;
  if (formatCopy)
  {
    v15.receiver = self;
    v15.super_class = MOEventBundleLabelFormat;
    v9 = [(MOEventBundleLabelFormat *)&v15 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_format, format);
      v10->_capitalizationType = type;
    }

    self = v10;
    selfCopy = self;
  }

  else
  {
    v12 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundleLabelFormat initWithFormat:v12 capitalizationType:?];
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MOEventBundleLabelFormat.m" lineNumber:16 description:@"Invalid parameter not satisfying: format"];

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  format = [(MOEventBundleLabelFormat *)self format];
  v5 = [v3 stringWithFormat:@"labels, %@, capitalization type, %lu", format, -[MOEventBundleLabelFormat capitalizationType](self, "capitalizationType")];

  return v5;
}

@end