@interface CRKShareTargetCollector
- (CRKShareTargetCollector)init;
- (CRKShareTargetCollectorDelegate)delegate;
- (void)didFindTargets:(id)targets;
- (void)didRemoveTargets:(id)targets;
- (void)diffNewTargets:(id)targets againstOldTargets:(id)oldTargets;
- (void)instructorTargetsDidChange:(id)change;
- (void)studentTargetsDidChange:(id)change;
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

- (void)studentTargetsDidChange:(id)change
{
  changeCopy = change;
  v5 = _CRKLogGeneral_13();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_243550000, v5, OS_LOG_TYPE_DEFAULT, "Classroom: Share target browser student targets did change", v8, 2u);
  }

  studentTargets = [(CRKShareTargetCollector *)self studentTargets];
  v7 = [MEMORY[0x277CBEB98] setWithArray:changeCopy];

  [(CRKShareTargetCollector *)self setStudentTargets:v7];
  [(CRKShareTargetCollector *)self diffNewTargets:v7 againstOldTargets:studentTargets];
}

- (void)instructorTargetsDidChange:(id)change
{
  changeCopy = change;
  v5 = _CRKLogGeneral_13();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_243550000, v5, OS_LOG_TYPE_DEFAULT, "Classroom: Share target browser instructor targets did change", v8, 2u);
  }

  instructorTargets = [(CRKShareTargetCollector *)self instructorTargets];
  v7 = [MEMORY[0x277CBEB98] setWithArray:changeCopy];

  [(CRKShareTargetCollector *)self setInstructorTargets:v7];
  [(CRKShareTargetCollector *)self diffNewTargets:v7 againstOldTargets:instructorTargets];
}

- (void)diffNewTargets:(id)targets againstOldTargets:(id)oldTargets
{
  oldTargetsCopy = oldTargets;
  targetsCopy = targets;
  v9 = [oldTargetsCopy crk_setBySubtractingSet:targetsCopy];
  v8 = [targetsCopy crk_setBySubtractingSet:oldTargetsCopy];

  [(CRKShareTargetCollector *)self didRemoveTargets:v9];
  [(CRKShareTargetCollector *)self didFindTargets:v8];
}

- (void)didFindTargets:(id)targets
{
  v10 = *MEMORY[0x277D85DE8];
  targetsCopy = targets;
  if ([targetsCopy count])
  {
    v5 = _CRKLogGeneral_13();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = targetsCopy;
      _os_log_impl(&dword_243550000, v5, OS_LOG_TYPE_DEFAULT, "Classroom: Share target browser did find targets: %{public}@", &v8, 0xCu);
    }

    delegate = [(CRKShareTargetCollector *)self delegate];
    allObjects = [targetsCopy allObjects];
    [delegate shareTargetCollector:self didFindTargets:allObjects];
  }
}

- (void)didRemoveTargets:(id)targets
{
  v10 = *MEMORY[0x277D85DE8];
  targetsCopy = targets;
  if ([targetsCopy count])
  {
    v5 = _CRKLogGeneral_13();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = targetsCopy;
      _os_log_impl(&dword_243550000, v5, OS_LOG_TYPE_DEFAULT, "Classroom: Share target browser did remove targets: %{public}@", &v8, 0xCu);
    }

    delegate = [(CRKShareTargetCollector *)self delegate];
    allObjects = [targetsCopy allObjects];
    [delegate shareTargetCollector:self didRemoveTargets:allObjects];
  }
}

- (CRKShareTargetCollectorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end