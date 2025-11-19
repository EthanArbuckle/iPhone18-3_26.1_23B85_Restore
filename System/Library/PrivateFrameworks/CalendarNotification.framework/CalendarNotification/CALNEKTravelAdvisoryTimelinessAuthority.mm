@interface CALNEKTravelAdvisoryTimelinessAuthority
- (CALNEKTravelAdvisoryTimelinessAuthority)initWithTravelAdvisoryTimelinessAuthority:(id)a3;
- (id)startOfLeaveNowPeriodForHypothesis:(id)a3;
- (id)startOfRunningLatePeriodForHypothesis:(id)a3;
- (unint64_t)periodForHypothesis:(id)a3;
@end

@implementation CALNEKTravelAdvisoryTimelinessAuthority

- (CALNEKTravelAdvisoryTimelinessAuthority)initWithTravelAdvisoryTimelinessAuthority:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CALNEKTravelAdvisoryTimelinessAuthority;
  v6 = [(CALNEKTravelAdvisoryTimelinessAuthority *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_travelAdvisoryTimelinessAuthority, a3);
  }

  return v7;
}

- (unint64_t)periodForHypothesis:(id)a3
{
  v4 = a3;
  v5 = [(CALNEKTravelAdvisoryTimelinessAuthority *)self travelAdvisoryTimelinessAuthority];
  [v5 updateWithHypothesis:v4];

  v6 = [v5 period];
  return v6;
}

- (id)startOfLeaveNowPeriodForHypothesis:(id)a3
{
  v4 = a3;
  v5 = [(CALNEKTravelAdvisoryTimelinessAuthority *)self travelAdvisoryTimelinessAuthority];
  [v5 updateWithHypothesis:v4];
  v6 = [v5 startOfLeaveNowPeriod];
  if (!v6)
  {
    v7 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CALNEKTravelAdvisoryTimelinessAuthority *)v4 startOfLeaveNowPeriodForHypothesis:v7];
    }
  }

  return v6;
}

- (id)startOfRunningLatePeriodForHypothesis:(id)a3
{
  v4 = a3;
  v5 = [(CALNEKTravelAdvisoryTimelinessAuthority *)self travelAdvisoryTimelinessAuthority];
  [v5 updateWithHypothesis:v4];
  v6 = [v5 startOfRunningLatePeriod];
  if (!v6)
  {
    v7 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CALNEKTravelAdvisoryTimelinessAuthority *)v4 startOfRunningLatePeriodForHypothesis:v7];
    }
  }

  return v6;
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