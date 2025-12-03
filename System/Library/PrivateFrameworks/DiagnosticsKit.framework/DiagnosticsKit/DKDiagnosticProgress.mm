@interface DKDiagnosticProgress
- (DKDiagnosticProgress)initWithCoder:(id)coder;
- (DKDiagnosticProgress)initWithProgress:(id)progress;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DKDiagnosticProgress

- (DKDiagnosticProgress)initWithProgress:(id)progress
{
  progressCopy = progress;
  v12.receiver = self;
  v12.super_class = DKDiagnosticProgress;
  v5 = [(DKDiagnosticProgress *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x277CCABB0];
    [progressCopy fractionCompleted];
    v7 = [v6 numberWithDouble:?];
    fractionCompleted = v5->_fractionCompleted;
    v5->_fractionCompleted = v7;

    estimatedTimeRemaining = [progressCopy estimatedTimeRemaining];
    estimatedTimeRemaining = v5->_estimatedTimeRemaining;
    v5->_estimatedTimeRemaining = estimatedTimeRemaining;

    v5->_isIndeterminate = [progressCopy isIndeterminate];
    [(DKDiagnosticProgress *)v5 _validateProperties];
  }

  return v5;
}

- (DKDiagnosticProgress)initWithCoder:(id)coder
{
  v17 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = DKDiagnosticProgress;
  v5 = [(DKDiagnosticProgress *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fractionCompleted"];
    fractionCompleted = v5->_fractionCompleted;
    v5->_fractionCompleted = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"estimatedTimeRemaining"];
    estimatedTimeRemaining = v5->_estimatedTimeRemaining;
    v5->_estimatedTimeRemaining = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isIndeterminate"];
    v5->_isIndeterminate = [v10 BOOLValue];

    v11 = DiagnosticsKitLogHandleForCategory(4);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v5;
      _os_log_impl(&dword_248B9D000, v11, OS_LOG_TYPE_DEFAULT, "Doing decode of DKDiagnosticProgress: %@", buf, 0xCu);
    }

    [(DKDiagnosticProgress *)v5 _validateProperties];
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v12 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_248B9D000, v5, OS_LOG_TYPE_DEFAULT, "Doing encode of DKDiagnosticProgress: %@", &v10, 0xCu);
  }

  fractionCompleted = [(DKDiagnosticProgress *)self fractionCompleted];
  [coderCopy encodeObject:fractionCompleted forKey:@"fractionCompleted"];

  estimatedTimeRemaining = [(DKDiagnosticProgress *)self estimatedTimeRemaining];
  [coderCopy encodeObject:estimatedTimeRemaining forKey:@"estimatedTimeRemaining"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[DKDiagnosticProgress isIndeterminate](self, "isIndeterminate")}];
  [coderCopy encodeObject:v8 forKey:@"isIndeterminate"];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  fractionCompleted = [(DKDiagnosticProgress *)self fractionCompleted];
  estimatedTimeRemaining = [(DKDiagnosticProgress *)self estimatedTimeRemaining];
  v6 = [v3 stringWithFormat:@"Fraction Completed: %@, Estimated Time Remaining: %@ Indeterminate: %d", fractionCompleted, estimatedTimeRemaining, -[DKDiagnosticProgress isIndeterminate](self, "isIndeterminate")];

  return v6;
}

@end