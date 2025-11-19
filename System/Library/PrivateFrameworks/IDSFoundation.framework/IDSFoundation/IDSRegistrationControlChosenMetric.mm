@interface IDSRegistrationControlChosenMetric
- (IDSRegistrationControlChosenMetric)initWithControlRegistrationType:(int64_t)a3 registrationControlStatus:(int64_t)a4 isInterestingRegion:(BOOL)a5;
- (NSCopying)awdRepresentation;
@end

@implementation IDSRegistrationControlChosenMetric

- (IDSRegistrationControlChosenMetric)initWithControlRegistrationType:(int64_t)a3 registrationControlStatus:(int64_t)a4 isInterestingRegion:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = IDSRegistrationControlChosenMetric;
  result = [(IDSRegistrationControlChosenMetric *)&v9 init];
  if (result)
  {
    result->_controlRegistrationType = a3;
    result->_registrationControlStatus = a4;
    result->_isInterestingRegion = a5;
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