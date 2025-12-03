@interface IDSRegistrationControlChosenMetric
- (IDSRegistrationControlChosenMetric)initWithControlRegistrationType:(int64_t)type registrationControlStatus:(int64_t)status isInterestingRegion:(BOOL)region;
- (NSCopying)awdRepresentation;
@end

@implementation IDSRegistrationControlChosenMetric

- (IDSRegistrationControlChosenMetric)initWithControlRegistrationType:(int64_t)type registrationControlStatus:(int64_t)status isInterestingRegion:(BOOL)region
{
  v9.receiver = self;
  v9.super_class = IDSRegistrationControlChosenMetric;
  result = [(IDSRegistrationControlChosenMetric *)&v9 init];
  if (result)
  {
    result->_controlRegistrationType = type;
    result->_registrationControlStatus = status;
    result->_isInterestingRegion = region;
  }

  return result;
}

- (NSCopying)awdRepresentation
{
  v3 = objc_alloc_init(CUTWeakLinkClass());
  [v3 setRegistrationType:{-[IDSRegistrationControlChosenMetric controlRegistrationType](self, "controlRegistrationType")}];
  [v3 setRegistrationControlStatus:{-[IDSRegistrationControlChosenMetric registrationControlStatus](self, "registrationControlStatus")}];
  [v3 setIsInterestingRegion:{-[IDSRegistrationControlChosenMetric isInterestingRegion](self, "isInterestingRegion")}];

  return v3;
}

@end