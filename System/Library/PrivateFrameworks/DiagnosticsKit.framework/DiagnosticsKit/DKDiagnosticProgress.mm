@interface DKDiagnosticProgress
- (DKDiagnosticProgress)initWithCoder:(id)a3;
- (DKDiagnosticProgress)initWithProgress:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DKDiagnosticProgress

- (DKDiagnosticProgress)initWithProgress:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = DKDiagnosticProgress;
  v5 = [(DKDiagnosticProgress *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x277CCABB0];
    [v4 fractionCompleted];
    v7 = [v6 numberWithDouble:?];
    fractionCompleted = v5->_fractionCompleted;
    v5->_fractionCompleted = v7;

    v9 = [v4 estimatedTimeRemaining];
    estimatedTimeRemaining = v5->_estimatedTimeRemaining;
    v5->_estimatedTimeRemaining = v9;

    v5->_isIndeterminate = [v4 isIndeterminate];
    [(DKDiagnosticProgress *)v5 _validateProperties];
  }

  return v5;
}

- (DKDiagnosticProgress)initWithCoder:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = DKDiagnosticProgress;
  v5 = [(DKDiagnosticProgress *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fractionCompleted"];
    fractionCompleted = v5->_fractionCompleted;
    v5->_fractionCompleted = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"estimatedTimeRemaining"];
    estimatedTimeRemaining = v5->_estimatedTimeRemaining;
    v5->_estimatedTimeRemaining = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isIndeterminate"];
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

- (void)encodeWithCoder:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = self;
    _os_log_impl(&dword_248B9D000, v5, OS_LOG_TYPE_DEFAULT, "Doing encode of DKDiagnosticProgress: %@", &v10, 0xCu);
  }

  v6 = [(DKDiagnosticProgress *)self fractionCompleted];
  [v4 encodeObject:v6 forKey:@"fractionCompleted"];

  v7 = [(DKDiagnosticProgress *)self estimatedTimeRemaining];
  [v4 encodeObject:v7 forKey:@"estimatedTimeRemaining"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[DKDiagnosticProgress isIndeterminate](self, "isIndeterminate")}];
  [v4 encodeObject:v8 forKey:@"isIndeterminate"];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(DKDiagnosticProgress *)self fractionCompleted];
  v5 = [(DKDiagnosticProgress *)self estimatedTimeRemaining];
  v6 = [v3 stringWithFormat:@"Fraction Completed: %@, Estimated Time Remaining: %@ Indeterminate: %d", v4, v5, -[DKDiagnosticProgress isIndeterminate](self, "isIndeterminate")];

  return v6;
}

@end