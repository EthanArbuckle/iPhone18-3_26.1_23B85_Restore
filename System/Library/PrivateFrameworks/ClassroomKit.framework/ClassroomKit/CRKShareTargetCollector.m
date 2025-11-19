@interface CRKShareTargetCollector
- (CRKShareTargetCollector)init;
- (CRKShareTargetCollectorDelegate)delegate;
- (void)didFindTargets:(id)a3;
- (void)didRemoveTargets:(id)a3;
- (void)diffNewTargets:(id)a3 againstOldTargets:(id)a4;
- (void)instructorTargetsDidChange:(id)a3;
- (void)studentTargetsDidChange:(id)a3;
@end

@implementation CRKShareTargetCollector

- (CRKShareTargetCollector)init
{
  v8.receiver = self;
  v8.super_class = CRKShareTargetCollector;
  v2 = [(CRKShareTargetCollector *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    studentTargets = v2->_studentTargets;
    v2->_studentTargets = v3;

    v5 = objc_opt_new();
    instructorTargets = v2->_instructorTargets;
    v2->_instructorTargets = v5;
  }

  return v2;
}

- (void)studentTargetsDidChange:(id)a3
{
  v4 = a3;
  v5 = _CRKLogGeneral_13();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_243550000, v5, OS_LOG_TYPE_DEFAULT, "Classroom: Share target browser student targets did change", v8, 2u);
  }

  v6 = [(CRKShareTargetCollector *)self studentTargets];
  v7 = [MEMORY[0x277CBEB98] setWithArray:v4];

  [(CRKShareTargetCollector *)self setStudentTargets:v7];
  [(CRKShareTargetCollector *)self diffNewTargets:v7 againstOldTargets:v6];
}

- (void)instructorTargetsDidChange:(id)a3
{
  v4 = a3;
  v5 = _CRKLogGeneral_13();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_243550000, v5, OS_LOG_TYPE_DEFAULT, "Classroom: Share target browser instructor targets did change", v8, 2u);
  }

  v6 = [(CRKShareTargetCollector *)self instructorTargets];
  v7 = [MEMORY[0x277CBEB98] setWithArray:v4];

  [(CRKShareTargetCollector *)self setInstructorTargets:v7];
  [(CRKShareTargetCollector *)self diffNewTargets:v7 againstOldTargets:v6];
}

- (void)diffNewTargets:(id)a3 againstOldTargets:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [v6 crk_setBySubtractingSet:v7];
  v8 = [v7 crk_setBySubtractingSet:v6];

  [(CRKShareTargetCollector *)self didRemoveTargets:v9];
  [(CRKShareTargetCollector *)self didFindTargets:v8];
}

- (void)didFindTargets:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = _CRKLogGeneral_13();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = v4;
      _os_log_impl(&dword_243550000, v5, OS_LOG_TYPE_DEFAULT, "Classroom: Share target browser did find targets: %{public}@", &v8, 0xCu);
    }

    v6 = [(CRKShareTargetCollector *)self delegate];
    v7 = [v4 allObjects];
    [v6 shareTargetCollector:self didFindTargets:v7];
  }
}

- (void)didRemoveTargets:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = _CRKLogGeneral_13();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = v4;
      _os_log_impl(&dword_243550000, v5, OS_LOG_TYPE_DEFAULT, "Classroom: Share target browser did remove targets: %{public}@", &v8, 0xCu);
    }

    v6 = [(CRKShareTargetCollector *)self delegate];
    v7 = [v4 allObjects];
    [v6 shareTargetCollector:self didRemoveTargets:v7];
  }
}

- (CRKShareTargetCollectorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end