@interface EntitlementABCIssue
- (BOOL)shouldBeReportedNow;
- (EntitlementABCIssue)initWithClient:(id)a3 processName:(id)a4 clientUUID:(id)a5 platform:(id)a6 forReporter:(id)a7;
- (id)context;
- (id)tag;
- (unint64_t)abcReason;
- (void)report;
- (void)reportIfNeeded;
@end

@implementation EntitlementABCIssue

- (EntitlementABCIssue)initWithClient:(id)a3 processName:(id)a4 clientUUID:(id)a5 platform:(id)a6 forReporter:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = EntitlementABCIssue;
  v17 = [(EntitlementABCIssue *)&v20 init];
  v18 = v17;
  if (v17)
  {
    [(EntitlementABCIssue *)v17 setClientName:v12];
    [(EntitlementABCIssue *)v18 setProcessName:v13];
    [(EntitlementABCIssue *)v18 setClientUUID:v14];
    [(EntitlementABCIssue *)v18 setPlatform:v15];
    [(EntitlementABCIssue *)v18 setReporter:v16];
  }

  return v18;
}

- (id)tag
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"You must override %@ in a subclass", v4}];

  return 0;
}

- (unint64_t)abcReason
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"You must override %@ in a subclass", v4}];

  return 0;
}

- (id)context
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"You must override %@ in a subclass", v4}];

  return 0;
}

- (BOOL)shouldBeReportedNow
{
  v3 = [(EntitlementABCIssue *)self nextAction];

  if (!v3)
  {
    return 0;
  }

  v4 = [(EntitlementABCIssue *)self nextAction];
  [v4 timeIntervalSinceNow];
  v6 = v5 < 0.0;

  return v6;
}

- (void)report
{
  v22 = *MEMORY[0x277D85DE8];
  if ([(EntitlementABCIssue *)self reportCounter]< 0x1F4)
  {
    [(EntitlementABCIssue *)self setReportCounter:[(EntitlementABCIssue *)self reportCounter]+ 1];
    v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:(arc4random_uniform(0x258u) + 600)];
    [(EntitlementABCIssue *)self setNextAction:v6];

    if (__osLog)
    {
      v7 = __osLog;
    }

    else
    {
      v7 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = v7;
      v9 = [(EntitlementABCIssue *)self tag];
      v10 = [(EntitlementABCIssue *)self nextAction];
      *buf = 138412546;
      v19 = v9;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&dword_223E00000, v8, OS_LOG_TYPE_INFO, "Entitlement issue %@ will be reported, nextAction=%@\n", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v11 = [(EntitlementABCIssue *)self reporter];
    v12 = [v11 biometricABC];
    v13 = [(EntitlementABCIssue *)self abcReason];
    v14 = [(EntitlementABCIssue *)self context];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __29__EntitlementABCIssue_report__block_invoke;
    v16[3] = &unk_2784FA5C8;
    objc_copyWeak(&v17, buf);
    [v12 sendAutoBugCaptureEvent:v13 withContext:v14 replyBlock:v16];

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }

  else
  {
    if (__osLog)
    {
      v3 = __osLog;
    }

    else
    {
      v3 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [(EntitlementABCIssue *)self tag];
      *buf = 138412290;
      v19 = v5;
      _os_log_impl(&dword_223E00000, v4, OS_LOG_TYPE_ERROR, "Giving up Entitlement issue %@ reporting due to maximum attempts limit\n", buf, 0xCu);
    }

    [(EntitlementABCIssue *)self setNextAction:0];
    [(EntitlementABCIssue *)self setReporter:0];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __29__EntitlementABCIssue_report__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleABCResult:a2];
}

- (void)reportIfNeeded
{
  if ([(EntitlementABCIssue *)self shouldBeReportedNow])
  {

    [(EntitlementABCIssue *)self report];
  }
}

@end