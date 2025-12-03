@interface CALNEKTravelAdvisoryTimelinessAuthority
- (CALNEKTravelAdvisoryTimelinessAuthority)initWithTravelAdvisoryTimelinessAuthority:(id)authority;
- (id)startOfLeaveNowPeriodForHypothesis:(id)hypothesis;
- (id)startOfRunningLatePeriodForHypothesis:(id)hypothesis;
- (unint64_t)periodForHypothesis:(id)hypothesis;
@end

@implementation CALNEKTravelAdvisoryTimelinessAuthority

- (CALNEKTravelAdvisoryTimelinessAuthority)initWithTravelAdvisoryTimelinessAuthority:(id)authority
{
  authorityCopy = authority;
  v9.receiver = self;
  v9.super_class = CALNEKTravelAdvisoryTimelinessAuthority;
  v6 = [(CALNEKTravelAdvisoryTimelinessAuthority *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_travelAdvisoryTimelinessAuthority, authority);
  }

  return v7;
}

- (unint64_t)periodForHypothesis:(id)hypothesis
{
  hypothesisCopy = hypothesis;
  travelAdvisoryTimelinessAuthority = [(CALNEKTravelAdvisoryTimelinessAuthority *)self travelAdvisoryTimelinessAuthority];
  [travelAdvisoryTimelinessAuthority updateWithHypothesis:hypothesisCopy];

  period = [travelAdvisoryTimelinessAuthority period];
  return period;
}

- (id)startOfLeaveNowPeriodForHypothesis:(id)hypothesis
{
  hypothesisCopy = hypothesis;
  travelAdvisoryTimelinessAuthority = [(CALNEKTravelAdvisoryTimelinessAuthority *)self travelAdvisoryTimelinessAuthority];
  [travelAdvisoryTimelinessAuthority updateWithHypothesis:hypothesisCopy];
  startOfLeaveNowPeriod = [travelAdvisoryTimelinessAuthority startOfLeaveNowPeriod];
  if (!startOfLeaveNowPeriod)
  {
    v7 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CALNEKTravelAdvisoryTimelinessAuthority *)hypothesisCopy startOfLeaveNowPeriodForHypothesis:v7];
    }
  }

  return startOfLeaveNowPeriod;
}

- (id)startOfRunningLatePeriodForHypothesis:(id)hypothesis
{
  hypothesisCopy = hypothesis;
  travelAdvisoryTimelinessAuthority = [(CALNEKTravelAdvisoryTimelinessAuthority *)self travelAdvisoryTimelinessAuthority];
  [travelAdvisoryTimelinessAuthority updateWithHypothesis:hypothesisCopy];
  startOfRunningLatePeriod = [travelAdvisoryTimelinessAuthority startOfRunningLatePeriod];
  if (!startOfRunningLatePeriod)
  {
    v7 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CALNEKTravelAdvisoryTimelinessAuthority *)hypothesisCopy startOfRunningLatePeriodForHypothesis:v7];
    }
  }

  return startOfRunningLatePeriod;
}

- (void)startOfLeaveNowPeriodForHypothesis:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_242909000, a2, OS_LOG_TYPE_ERROR, "Could not get start of leave now period for hypothesis = %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)startOfRunningLatePeriodForHypothesis:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_242909000, a2, OS_LOG_TYPE_ERROR, "Could not get start of running late period for hypothesis = %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end