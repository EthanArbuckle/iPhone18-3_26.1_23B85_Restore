@interface IXSCoordinatorProgress
+ (double)_computeOverallProgressForCurrentProgress:(double)a3 progressPhase:(unint64_t)a4 progressHint:(id)a5;
- (IXSCoordinatorProgress)initWithCoder:(id)a3;
- (IXSCoordinatorProgressDelegate)delegate;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initForCoordinatorWithIdentity:(id)a3 totalUnits:(unint64_t)a4 progressHint:(id)a5 needsPostProcessing:(BOOL)a6 delegate:(id)a7;
- (void)_notifyDelegateAndUpdateProgressWithPhaseCompleted:(BOOL)a3;
- (void)encodeWithCoder:(id)a3;
- (void)finishInstalling;
- (void)finishLoading;
- (void)finishPostProcessing;
- (void)setTotalUnits:(unint64_t)a3;
- (void)setTotalUnitsCompleted:(unint64_t)a3;
@end

@implementation IXSCoordinatorProgress

- (id)initForCoordinatorWithIdentity:(id)a3 totalUnits:(unint64_t)a4 progressHint:(id)a5 needsPostProcessing:(BOOL)a6 delegate:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = IXSCoordinatorProgress;
  v16 = [(IXSCoordinatorProgress *)&v19 init];
  p_isa = &v16->super.isa;
  if (v16)
  {
    v16->_progressPhase = 0;
    v16->_currentPhaseProgress = 0.0;
    v16->_totalUnitsCompleted = 0;
    v16->_totalUnits = a4;
    v16->_progressCompleted = 0;
    v16->_needsPostProcessing = a6;
    objc_storeStrong(&v16->_progressHint, a5);
    objc_storeStrong(p_isa + 8, a3);
    objc_storeWeak(p_isa + 4, v15);
  }

  return p_isa;
}

- (id)description
{
  v3 = [(IXSCoordinatorProgress *)self identity];
  v4 = [(IXSCoordinatorProgress *)self progressPhase];
  if (v4 >= 3)
  {
    v5 = [NSString stringWithFormat:@"Unknown progress value %lu", v4];
  }

  else
  {
    v5 = off_100101450[v4];
  }

  [(IXSCoordinatorProgress *)self currentPhaseProgress];
  v7 = [NSString stringWithFormat:@"Progress for coordinator: %@, Phase: %@, Percentage: %f", v3, v5, v6];

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

+ (double)_computeOverallProgressForCurrentProgress:(double)a3 progressPhase:(unint64_t)a4 progressHint:(id)a5
{
  v7 = a5;
  v8 = v7;
  v9 = 0.0;
  if (a4 <= 2)
  {
    v10 = [v7 loadingPhaseProportion];
    if (a4)
    {
      v11 = [v8 loadingPhaseProportion];
      [v11 doubleValue];
      v9 = v12 * 100.0;

      v13 = [v8 installingPhaseProportion];

      if (a4 == 2)
      {
        v14 = [v8 installingPhaseProportion];
        [v14 doubleValue];
        v9 = v9 + v15 * 100.0;

        v10 = [v8 postProcessingPhaseProportion];
      }

      else
      {
        v10 = v13;
      }
    }

    [v10 doubleValue];
    v9 = v9 + a3 * v16;
  }

  return v9;
}

- (void)_notifyDelegateAndUpdateProgressWithPhaseCompleted:(BOOL)a3
{
  v3 = a3;
  if ([(IXSCoordinatorProgress *)self totalUnits])
  {
    v5 = [(IXSCoordinatorProgress *)self totalUnitsCompleted];
    v6 = v5 / [(IXSCoordinatorProgress *)self totalUnits]* 100.0;
    [(IXSCoordinatorProgress *)self currentPhaseProgress];
    if (v6 - v7 >= 1.0 || v3)
    {
      [(IXSCoordinatorProgress *)self setCurrentPhaseProgress:v6];
      v9 = [(IXSCoordinatorProgress *)self delegate];
      if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v10 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          sub_100098F48(self, v10);
        }

        v11 = [(IXSCoordinatorProgress *)self progressPhase];
        v12 = [(IXSCoordinatorProgress *)self progressHint];
        [IXSCoordinatorProgress _computeOverallProgressForCurrentProgress:v11 progressPhase:v12 progressHint:v6];
        v14 = v13;

        [v9 didUpdateProgress:-[IXSCoordinatorProgress progressPhase](self forPhase:"progressPhase") overallProgress:{v6, v14}];
      }
    }
  }
}

- (void)setTotalUnitsCompleted:(unint64_t)a3
{
  if ([(IXSCoordinatorProgress *)self progressCompleted]|| self->_totalUnitsCompleted >= a3)
  {
    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = "[IXSCoordinatorProgress setTotalUnitsCompleted:]";
      v10 = 2112;
      v11 = self;
      v12 = 2048;
      v13 = a3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: %@: Attempt to set units completed on finished progress: %llu", &v8, 0x20u);
    }
  }

  else
  {
    v5 = [(IXSCoordinatorProgress *)self totalUnits];
    if (v5 >= a3)
    {
      v6 = a3;
    }

    else
    {
      v6 = v5;
    }

    self->_totalUnitsCompleted = v6;

    [(IXSCoordinatorProgress *)self _notifyDelegateAndUpdateProgressWithPhaseCompleted:0];
  }
}

- (void)setTotalUnits:(unint64_t)a3
{
  if (self->_totalUnits != a3)
  {
    if ([(IXSCoordinatorProgress *)self progressCompleted])
    {
      v5 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315650;
        v7 = "[IXSCoordinatorProgress setTotalUnits:]";
        v8 = 2112;
        v9 = self;
        v10 = 2048;
        v11 = a3;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: %@: Attempt to set total units on finished progress: %llu", &v6, 0x20u);
      }
    }

    else if ([(IXSCoordinatorProgress *)self totalUnitsCompleted]<= a3)
    {
      self->_totalUnits = a3;

      [(IXSCoordinatorProgress *)self _notifyDelegateAndUpdateProgressWithPhaseCompleted:0];
    }
  }
}

- (IXSCoordinatorProgress)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = IXSCoordinatorProgress;
  v5 = [(IXSCoordinatorProgress *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"progressPhase"];
    v5->_progressPhase = [v6 unsignedLongLongValue];

    [v4 decodeDoubleForKey:@"currentPhaseProgress"];
    v5->_currentPhaseProgress = v7;
    v5->_progressCompleted = [v4 decodeBoolForKey:@"progressCompleted"];
    v5->_needsPostProcessing = [v4 decodeBoolForKey:@"needsPostProcessing"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"progressHint"];
    progressHint = v5->_progressHint;
    v5->_progressHint = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identity"];
    identity = v5->_identity;
    v5->_identity = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalUnits"];
    v5->_totalUnits = [v12 unsignedLongLongValue];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalUnitsCompleted"];
    v5->_totalUnitsCompleted = [v13 unsignedLongLongValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [NSNumber numberWithUnsignedInteger:[(IXSCoordinatorProgress *)self progressPhase]];
  [v4 encodeObject:v5 forKey:@"progressPhase"];

  [(IXSCoordinatorProgress *)self currentPhaseProgress];
  [v4 encodeDouble:@"currentPhaseProgress" forKey:?];
  [v4 encodeBool:-[IXSCoordinatorProgress progressCompleted](self forKey:{"progressCompleted"), @"progressCompleted"}];
  [v4 encodeBool:-[IXSCoordinatorProgress needsPostProcessing](self forKey:{"needsPostProcessing"), @"needsPostProcessing"}];
  v6 = [(IXSCoordinatorProgress *)self progressHint];
  [v4 encodeObject:v6 forKey:@"progressHint"];

  v7 = [(IXSCoordinatorProgress *)self identity];
  [v4 encodeObject:v7 forKey:@"identity"];

  v8 = [NSNumber numberWithUnsignedLongLong:[(IXSCoordinatorProgress *)self totalUnits]];
  [v4 encodeObject:v8 forKey:@"totalUnits"];

  v9 = [NSNumber numberWithUnsignedLongLong:[(IXSCoordinatorProgress *)self totalUnitsCompleted]];
  [v4 encodeObject:v9 forKey:@"totalUnitsCompleted"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v5 setProgressPhase:{-[IXSCoordinatorProgress progressPhase](self, "progressPhase")}];
  [(IXSCoordinatorProgress *)self currentPhaseProgress];
  [v5 setCurrentPhaseProgress:?];
  [v5 setProgressCompleted:{-[IXSCoordinatorProgress progressCompleted](self, "progressCompleted")}];
  [v5 setNeedsPostProcessing:{-[IXSCoordinatorProgress needsPostProcessing](self, "needsPostProcessing")}];
  v6 = [(IXSCoordinatorProgress *)self progressHint];
  v7 = [v6 copyWithZone:a3];
  [v5 setProgressHint:v7];

  v8 = [(IXSCoordinatorProgress *)self identity];
  v9 = [v8 copyWithZone:a3];
  [v5 setIdentity:v9];

  [v5 setTotalUnits:{-[IXSCoordinatorProgress totalUnits](self, "totalUnits")}];
  [v5 setTotalUnitsCompleted:{-[IXSCoordinatorProgress totalUnitsCompleted](self, "totalUnitsCompleted")}];
  v10 = [(IXSCoordinatorProgress *)self delegate];
  [v5 setDelegate:v10];

  return v5;
}

- (IXSCoordinatorProgressDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end