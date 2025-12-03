@interface IXSCoordinatorProgress
+ (double)_computeOverallProgressForCurrentProgress:(double)progress progressPhase:(unint64_t)phase progressHint:(id)hint;
- (IXSCoordinatorProgress)initWithCoder:(id)coder;
- (IXSCoordinatorProgressDelegate)delegate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initForCoordinatorWithIdentity:(id)identity totalUnits:(unint64_t)units progressHint:(id)hint needsPostProcessing:(BOOL)processing delegate:(id)delegate;
- (void)_notifyDelegateAndUpdateProgressWithPhaseCompleted:(BOOL)completed;
- (void)encodeWithCoder:(id)coder;
- (void)finishInstalling;
- (void)finishLoading;
- (void)finishPostProcessing;
- (void)setTotalUnits:(unint64_t)units;
- (void)setTotalUnitsCompleted:(unint64_t)completed;
@end

@implementation IXSCoordinatorProgress

- (id)initForCoordinatorWithIdentity:(id)identity totalUnits:(unint64_t)units progressHint:(id)hint needsPostProcessing:(BOOL)processing delegate:(id)delegate
{
  identityCopy = identity;
  hintCopy = hint;
  delegateCopy = delegate;
  v19.receiver = self;
  v19.super_class = IXSCoordinatorProgress;
  v16 = [(IXSCoordinatorProgress *)&v19 init];
  p_isa = &v16->super.isa;
  if (v16)
  {
    v16->_progressPhase = 0;
    v16->_currentPhaseProgress = 0.0;
    v16->_totalUnitsCompleted = 0;
    v16->_totalUnits = units;
    v16->_progressCompleted = 0;
    v16->_needsPostProcessing = processing;
    objc_storeStrong(&v16->_progressHint, hint);
    objc_storeStrong(p_isa + 8, identity);
    objc_storeWeak(p_isa + 4, delegateCopy);
  }

  return p_isa;
}

- (id)description
{
  identity = [(IXSCoordinatorProgress *)self identity];
  progressPhase = [(IXSCoordinatorProgress *)self progressPhase];
  if (progressPhase >= 3)
  {
    v5 = [NSString stringWithFormat:@"Unknown progress value %lu", progressPhase];
  }

  else
  {
    v5 = off_100101450[progressPhase];
  }

  [(IXSCoordinatorProgress *)self currentPhaseProgress];
  v7 = [NSString stringWithFormat:@"Progress for coordinator: %@, Phase: %@, Percentage: %f", identity, v5, v6];

  return v7;
}

- (void)finishLoading
{
  if (![(IXSCoordinatorProgress *)self progressPhase])
  {
    self->_totalUnitsCompleted = self->_totalUnits;
    [(IXSCoordinatorProgress *)self _notifyDelegateAndUpdateProgressWithPhaseCompleted:1];
    [(IXSCoordinatorProgress *)self setProgressPhase:1];
    [(IXSCoordinatorProgress *)self setCurrentPhaseProgress:0.0];
    self->_totalUnitsCompleted = 0;
    self->_totalUnits = 0;
  }
}

- (void)finishInstalling
{
  if ([(IXSCoordinatorProgress *)self progressPhase]== 1 && ![(IXSCoordinatorProgress *)self progressCompleted])
  {
    v3 = [(IXSCoordinatorProgress *)self needsPostProcessing]^ 1;
    [(IXSCoordinatorProgress *)self setProgressCompleted:v3];
    self->_totalUnitsCompleted = self->_totalUnits;
    [(IXSCoordinatorProgress *)self _notifyDelegateAndUpdateProgressWithPhaseCompleted:1];
    if ((v3 & 1) == 0)
    {
      [(IXSCoordinatorProgress *)self setProgressPhase:2];
      [(IXSCoordinatorProgress *)self setCurrentPhaseProgress:0.0];
      self->_totalUnitsCompleted = 0;
      self->_totalUnits = 0;
    }
  }
}

- (void)finishPostProcessing
{
  if ([(IXSCoordinatorProgress *)self progressPhase]== 2 && ![(IXSCoordinatorProgress *)self progressCompleted])
  {
    [(IXSCoordinatorProgress *)self setProgressCompleted:1];
    self->_totalUnitsCompleted = self->_totalUnits;

    [(IXSCoordinatorProgress *)self _notifyDelegateAndUpdateProgressWithPhaseCompleted:1];
  }
}

+ (double)_computeOverallProgressForCurrentProgress:(double)progress progressPhase:(unint64_t)phase progressHint:(id)hint
{
  hintCopy = hint;
  v8 = hintCopy;
  v9 = 0.0;
  if (phase <= 2)
  {
    loadingPhaseProportion = [hintCopy loadingPhaseProportion];
    if (phase)
    {
      loadingPhaseProportion2 = [v8 loadingPhaseProportion];
      [loadingPhaseProportion2 doubleValue];
      v9 = v12 * 100.0;

      installingPhaseProportion = [v8 installingPhaseProportion];

      if (phase == 2)
      {
        installingPhaseProportion2 = [v8 installingPhaseProportion];
        [installingPhaseProportion2 doubleValue];
        v9 = v9 + v15 * 100.0;

        loadingPhaseProportion = [v8 postProcessingPhaseProportion];
      }

      else
      {
        loadingPhaseProportion = installingPhaseProportion;
      }
    }

    [loadingPhaseProportion doubleValue];
    v9 = v9 + progress * v16;
  }

  return v9;
}

- (void)_notifyDelegateAndUpdateProgressWithPhaseCompleted:(BOOL)completed
{
  completedCopy = completed;
  if ([(IXSCoordinatorProgress *)self totalUnits])
  {
    totalUnitsCompleted = [(IXSCoordinatorProgress *)self totalUnitsCompleted];
    v6 = totalUnitsCompleted / [(IXSCoordinatorProgress *)self totalUnits]* 100.0;
    [(IXSCoordinatorProgress *)self currentPhaseProgress];
    if (v6 - v7 >= 1.0 || completedCopy)
    {
      [(IXSCoordinatorProgress *)self setCurrentPhaseProgress:v6];
      delegate = [(IXSCoordinatorProgress *)self delegate];
      if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v10 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          sub_100098F48(self, v10);
        }

        progressPhase = [(IXSCoordinatorProgress *)self progressPhase];
        progressHint = [(IXSCoordinatorProgress *)self progressHint];
        [IXSCoordinatorProgress _computeOverallProgressForCurrentProgress:progressPhase progressPhase:progressHint progressHint:v6];
        v14 = v13;

        [delegate didUpdateProgress:-[IXSCoordinatorProgress progressPhase](self forPhase:"progressPhase") overallProgress:{v6, v14}];
      }
    }
  }
}

- (void)setTotalUnitsCompleted:(unint64_t)completed
{
  if ([(IXSCoordinatorProgress *)self progressCompleted]|| self->_totalUnitsCompleted >= completed)
  {
    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = "[IXSCoordinatorProgress setTotalUnitsCompleted:]";
      v10 = 2112;
      selfCopy = self;
      v12 = 2048;
      completedCopy = completed;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: %@: Attempt to set units completed on finished progress: %llu", &v8, 0x20u);
    }
  }

  else
  {
    totalUnits = [(IXSCoordinatorProgress *)self totalUnits];
    if (totalUnits >= completed)
    {
      completedCopy2 = completed;
    }

    else
    {
      completedCopy2 = totalUnits;
    }

    self->_totalUnitsCompleted = completedCopy2;

    [(IXSCoordinatorProgress *)self _notifyDelegateAndUpdateProgressWithPhaseCompleted:0];
  }
}

- (void)setTotalUnits:(unint64_t)units
{
  if (self->_totalUnits != units)
  {
    if ([(IXSCoordinatorProgress *)self progressCompleted])
    {
      v5 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315650;
        v7 = "[IXSCoordinatorProgress setTotalUnits:]";
        v8 = 2112;
        selfCopy = self;
        v10 = 2048;
        unitsCopy = units;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: %@: Attempt to set total units on finished progress: %llu", &v6, 0x20u);
      }
    }

    else if ([(IXSCoordinatorProgress *)self totalUnitsCompleted]<= units)
    {
      self->_totalUnits = units;

      [(IXSCoordinatorProgress *)self _notifyDelegateAndUpdateProgressWithPhaseCompleted:0];
    }
  }
}

- (IXSCoordinatorProgress)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = IXSCoordinatorProgress;
  v5 = [(IXSCoordinatorProgress *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"progressPhase"];
    v5->_progressPhase = [v6 unsignedLongLongValue];

    [coderCopy decodeDoubleForKey:@"currentPhaseProgress"];
    v5->_currentPhaseProgress = v7;
    v5->_progressCompleted = [coderCopy decodeBoolForKey:@"progressCompleted"];
    v5->_needsPostProcessing = [coderCopy decodeBoolForKey:@"needsPostProcessing"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"progressHint"];
    progressHint = v5->_progressHint;
    v5->_progressHint = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identity"];
    identity = v5->_identity;
    v5->_identity = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalUnits"];
    v5->_totalUnits = [v12 unsignedLongLongValue];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalUnitsCompleted"];
    v5->_totalUnitsCompleted = [v13 unsignedLongLongValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [NSNumber numberWithUnsignedInteger:[(IXSCoordinatorProgress *)self progressPhase]];
  [coderCopy encodeObject:v5 forKey:@"progressPhase"];

  [(IXSCoordinatorProgress *)self currentPhaseProgress];
  [coderCopy encodeDouble:@"currentPhaseProgress" forKey:?];
  [coderCopy encodeBool:-[IXSCoordinatorProgress progressCompleted](self forKey:{"progressCompleted"), @"progressCompleted"}];
  [coderCopy encodeBool:-[IXSCoordinatorProgress needsPostProcessing](self forKey:{"needsPostProcessing"), @"needsPostProcessing"}];
  progressHint = [(IXSCoordinatorProgress *)self progressHint];
  [coderCopy encodeObject:progressHint forKey:@"progressHint"];

  identity = [(IXSCoordinatorProgress *)self identity];
  [coderCopy encodeObject:identity forKey:@"identity"];

  v8 = [NSNumber numberWithUnsignedLongLong:[(IXSCoordinatorProgress *)self totalUnits]];
  [coderCopy encodeObject:v8 forKey:@"totalUnits"];

  v9 = [NSNumber numberWithUnsignedLongLong:[(IXSCoordinatorProgress *)self totalUnitsCompleted]];
  [coderCopy encodeObject:v9 forKey:@"totalUnitsCompleted"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v5 setProgressPhase:{-[IXSCoordinatorProgress progressPhase](self, "progressPhase")}];
  [(IXSCoordinatorProgress *)self currentPhaseProgress];
  [v5 setCurrentPhaseProgress:?];
  [v5 setProgressCompleted:{-[IXSCoordinatorProgress progressCompleted](self, "progressCompleted")}];
  [v5 setNeedsPostProcessing:{-[IXSCoordinatorProgress needsPostProcessing](self, "needsPostProcessing")}];
  progressHint = [(IXSCoordinatorProgress *)self progressHint];
  v7 = [progressHint copyWithZone:zone];
  [v5 setProgressHint:v7];

  identity = [(IXSCoordinatorProgress *)self identity];
  v9 = [identity copyWithZone:zone];
  [v5 setIdentity:v9];

  [v5 setTotalUnits:{-[IXSCoordinatorProgress totalUnits](self, "totalUnits")}];
  [v5 setTotalUnitsCompleted:{-[IXSCoordinatorProgress totalUnitsCompleted](self, "totalUnitsCompleted")}];
  delegate = [(IXSCoordinatorProgress *)self delegate];
  [v5 setDelegate:delegate];

  return v5;
}

- (IXSCoordinatorProgressDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end