@interface IRCandicateClassificationEligibilityStateMachine
+ (int64_t)_classificationFromEligibility:(int64_t)a3;
- (void)_downRankDismissAndRejectRankCounterIncrementAndTransitionToState:(int64_t)a3 ifThresholdCrossed:(unint64_t)a4;
- (void)_downrankCounterIncrementAndTransitionToState:(int64_t)a3 ifThresholdCrossed:(unint64_t)a4;
- (void)_transitionToState:(int64_t)a3;
- (void)_uprankCounterIncrementAndTransitionToState:(int64_t)a3 ifThresholdCrossed:(unint64_t)a4;
- (void)runWithEventType:(int64_t)a3 smSettings:(id)a4;
@end

@implementation IRCandicateClassificationEligibilityStateMachine

- (void)runWithEventType:(int64_t)a3 smSettings:(id)a4
{
  v12 = a4;
  v6 = [(IRCandicateClassificationEligibilityStateMachine *)self eligibilityState];
  if (v6 == 2)
  {
    if ((a3 - 2) >= 2)
    {
      if (a3 == 4)
      {
        [(IRCandicateClassificationEligibilityStateMachine *)self _downrankCounterReset];
        goto LABEL_29;
      }

      if (a3 != 5)
      {
        goto LABEL_29;
      }
    }

    v8 = [v12 downrankToOneTapThr];
    -[IRCandicateClassificationEligibilityStateMachine _downrankCounterIncrementAndTransitionToState:ifThresholdCrossed:](self, "_downrankCounterIncrementAndTransitionToState:ifThresholdCrossed:", 1, [v8 unsignedIntValue]);
    goto LABEL_28;
  }

  if (v6 == 1)
  {
    if (a3 > 3)
    {
      if (a3 == 4)
      {
        v8 = [v12 uprankToAutorouteThr];
        v9 = [v8 unsignedIntValue];
        v10 = self;
        v11 = 2;
        goto LABEL_27;
      }

      if (a3 != 5)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (a3 == 1)
      {
        [(IRCandicateClassificationEligibilityStateMachine *)self _downrankCounterReset];
        [(IRCandicateClassificationEligibilityStateMachine *)self _downRankDismissAndRejectRankCounterReset];
        goto LABEL_29;
      }

      if (a3 != 2)
      {
        goto LABEL_29;
      }

      v7 = [v12 downrankToNoneThr];
      -[IRCandicateClassificationEligibilityStateMachine _downrankCounterIncrementAndTransitionToState:ifThresholdCrossed:](self, "_downrankCounterIncrementAndTransitionToState:ifThresholdCrossed:", 0, [v7 unsignedIntValue]);
    }

    v8 = [v12 downrankToNoneWithIgnoringThr];
    -[IRCandicateClassificationEligibilityStateMachine _downRankDismissAndRejectRankCounterIncrementAndTransitionToState:ifThresholdCrossed:](self, "_downRankDismissAndRejectRankCounterIncrementAndTransitionToState:ifThresholdCrossed:", 0, [v8 unsignedIntValue]);
LABEL_28:

    goto LABEL_29;
  }

  if (v6)
  {
    goto LABEL_29;
  }

  if (a3 > 5)
  {
    if (a3 == 6)
    {
      if (![v12 useBrokeredScanForMain])
      {
        goto LABEL_29;
      }
    }

    else if (a3 != 7 || ![v12 useBrokeredScanForSecondary])
    {
      goto LABEL_29;
    }

    [(IRCandicateClassificationEligibilityStateMachine *)self _transitionToState:1];
    goto LABEL_29;
  }

  if ((a3 - 2) < 2)
  {
    [(IRCandicateClassificationEligibilityStateMachine *)self _uprankCounterReset];
    goto LABEL_29;
  }

  if (a3 == 1)
  {
    v8 = [v12 upRankToOneTapThr];
    v9 = [v8 unsignedIntValue];
    v10 = self;
    v11 = 1;
LABEL_27:
    [(IRCandicateClassificationEligibilityStateMachine *)v10 _uprankCounterIncrementAndTransitionToState:v11 ifThresholdCrossed:v9];
    goto LABEL_28;
  }

LABEL_29:
}

- (void)_transitionToState:(int64_t)a3
{
  [(IRCandicateClassificationEligibilityStateMachine *)self _downrankCounterReset];
  [(IRCandicateClassificationEligibilityStateMachine *)self _uprankCounterReset];
  [(IRCandicateClassificationEligibilityStateMachine *)self _downRankDismissAndRejectRankCounterReset];

  [(IRCandicateClassificationEligibilityStateMachine *)self setEligibilityState:a3];
}

- (void)_uprankCounterIncrementAndTransitionToState:(int64_t)a3 ifThresholdCrossed:(unint64_t)a4
{
  [(IRCandicateClassificationEligibilityStateMachine *)self setUpRankCounter:[(IRCandicateClassificationEligibilityStateMachine *)self upRankCounter]+ 1];
  [(IRCandicateClassificationEligibilityStateMachine *)self _downrankCounterReset];
  [(IRCandicateClassificationEligibilityStateMachine *)self _downRankDismissAndRejectRankCounterReset];
  if ([(IRCandicateClassificationEligibilityStateMachine *)self upRankCounter]>= a4)
  {

    [(IRCandicateClassificationEligibilityStateMachine *)self _transitionToState:a3];
  }
}

- (void)_downrankCounterIncrementAndTransitionToState:(int64_t)a3 ifThresholdCrossed:(unint64_t)a4
{
  [(IRCandicateClassificationEligibilityStateMachine *)self setDownRankCounter:[(IRCandicateClassificationEligibilityStateMachine *)self downRankCounter]+ 1];
  [(IRCandicateClassificationEligibilityStateMachine *)self _uprankCounterReset];
  if ([(IRCandicateClassificationEligibilityStateMachine *)self downRankCounter]>= a4)
  {

    [(IRCandicateClassificationEligibilityStateMachine *)self _transitionToState:a3];
  }
}

- (void)_downRankDismissAndRejectRankCounterIncrementAndTransitionToState:(int64_t)a3 ifThresholdCrossed:(unint64_t)a4
{
  [(IRCandicateClassificationEligibilityStateMachine *)self setDownRankDismissAndRejectRankCounter:[(IRCandicateClassificationEligibilityStateMachine *)self downRankDismissAndRejectRankCounter]+ 1];
  [(IRCandicateClassificationEligibilityStateMachine *)self _uprankCounterReset];
  if ([(IRCandicateClassificationEligibilityStateMachine *)self downRankDismissAndRejectRankCounter]>= a4)
  {

    [(IRCandicateClassificationEligibilityStateMachine *)self _transitionToState:a3];
  }
}

+ (int64_t)_classificationFromEligibility:(int64_t)a3
{
  if (a3 <= 2)
  {
    return a3 + 2;
  }

  else
  {
    return 2;
  }
}

@end