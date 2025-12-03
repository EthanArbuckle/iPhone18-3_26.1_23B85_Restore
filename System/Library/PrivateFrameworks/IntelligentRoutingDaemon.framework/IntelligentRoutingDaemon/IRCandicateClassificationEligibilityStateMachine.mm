@interface IRCandicateClassificationEligibilityStateMachine
+ (int64_t)_classificationFromEligibility:(int64_t)eligibility;
- (void)_downRankDismissAndRejectRankCounterIncrementAndTransitionToState:(int64_t)state ifThresholdCrossed:(unint64_t)crossed;
- (void)_downrankCounterIncrementAndTransitionToState:(int64_t)state ifThresholdCrossed:(unint64_t)crossed;
- (void)_transitionToState:(int64_t)state;
- (void)_uprankCounterIncrementAndTransitionToState:(int64_t)state ifThresholdCrossed:(unint64_t)crossed;
- (void)runWithEventType:(int64_t)type smSettings:(id)settings;
@end

@implementation IRCandicateClassificationEligibilityStateMachine

- (void)runWithEventType:(int64_t)type smSettings:(id)settings
{
  settingsCopy = settings;
  eligibilityState = [(IRCandicateClassificationEligibilityStateMachine *)self eligibilityState];
  if (eligibilityState == 2)
  {
    if ((type - 2) >= 2)
    {
      if (type == 4)
      {
        [(IRCandicateClassificationEligibilityStateMachine *)self _downrankCounterReset];
        goto LABEL_29;
      }

      if (type != 5)
      {
        goto LABEL_29;
      }
    }

    downrankToOneTapThr = [settingsCopy downrankToOneTapThr];
    -[IRCandicateClassificationEligibilityStateMachine _downrankCounterIncrementAndTransitionToState:ifThresholdCrossed:](self, "_downrankCounterIncrementAndTransitionToState:ifThresholdCrossed:", 1, [downrankToOneTapThr unsignedIntValue]);
    goto LABEL_28;
  }

  if (eligibilityState == 1)
  {
    if (type > 3)
    {
      if (type == 4)
      {
        downrankToOneTapThr = [settingsCopy uprankToAutorouteThr];
        unsignedIntValue = [downrankToOneTapThr unsignedIntValue];
        selfCopy2 = self;
        v11 = 2;
        goto LABEL_27;
      }

      if (type != 5)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (type == 1)
      {
        [(IRCandicateClassificationEligibilityStateMachine *)self _downrankCounterReset];
        [(IRCandicateClassificationEligibilityStateMachine *)self _downRankDismissAndRejectRankCounterReset];
        goto LABEL_29;
      }

      if (type != 2)
      {
        goto LABEL_29;
      }

      downrankToNoneThr = [settingsCopy downrankToNoneThr];
      -[IRCandicateClassificationEligibilityStateMachine _downrankCounterIncrementAndTransitionToState:ifThresholdCrossed:](self, "_downrankCounterIncrementAndTransitionToState:ifThresholdCrossed:", 0, [downrankToNoneThr unsignedIntValue]);
    }

    downrankToOneTapThr = [settingsCopy downrankToNoneWithIgnoringThr];
    -[IRCandicateClassificationEligibilityStateMachine _downRankDismissAndRejectRankCounterIncrementAndTransitionToState:ifThresholdCrossed:](self, "_downRankDismissAndRejectRankCounterIncrementAndTransitionToState:ifThresholdCrossed:", 0, [downrankToOneTapThr unsignedIntValue]);
LABEL_28:

    goto LABEL_29;
  }

  if (eligibilityState)
  {
    goto LABEL_29;
  }

  if (type > 5)
  {
    if (type == 6)
    {
      if (![settingsCopy useBrokeredScanForMain])
      {
        goto LABEL_29;
      }
    }

    else if (type != 7 || ![settingsCopy useBrokeredScanForSecondary])
    {
      goto LABEL_29;
    }

    [(IRCandicateClassificationEligibilityStateMachine *)self _transitionToState:1];
    goto LABEL_29;
  }

  if ((type - 2) < 2)
  {
    [(IRCandicateClassificationEligibilityStateMachine *)self _uprankCounterReset];
    goto LABEL_29;
  }

  if (type == 1)
  {
    downrankToOneTapThr = [settingsCopy upRankToOneTapThr];
    unsignedIntValue = [downrankToOneTapThr unsignedIntValue];
    selfCopy2 = self;
    v11 = 1;
LABEL_27:
    [(IRCandicateClassificationEligibilityStateMachine *)selfCopy2 _uprankCounterIncrementAndTransitionToState:v11 ifThresholdCrossed:unsignedIntValue];
    goto LABEL_28;
  }

LABEL_29:
}

- (void)_transitionToState:(int64_t)state
{
  [(IRCandicateClassificationEligibilityStateMachine *)self _downrankCounterReset];
  [(IRCandicateClassificationEligibilityStateMachine *)self _uprankCounterReset];
  [(IRCandicateClassificationEligibilityStateMachine *)self _downRankDismissAndRejectRankCounterReset];

  [(IRCandicateClassificationEligibilityStateMachine *)self setEligibilityState:state];
}

- (void)_uprankCounterIncrementAndTransitionToState:(int64_t)state ifThresholdCrossed:(unint64_t)crossed
{
  [(IRCandicateClassificationEligibilityStateMachine *)self setUpRankCounter:[(IRCandicateClassificationEligibilityStateMachine *)self upRankCounter]+ 1];
  [(IRCandicateClassificationEligibilityStateMachine *)self _downrankCounterReset];
  [(IRCandicateClassificationEligibilityStateMachine *)self _downRankDismissAndRejectRankCounterReset];
  if ([(IRCandicateClassificationEligibilityStateMachine *)self upRankCounter]>= crossed)
  {

    [(IRCandicateClassificationEligibilityStateMachine *)self _transitionToState:state];
  }
}

- (void)_downrankCounterIncrementAndTransitionToState:(int64_t)state ifThresholdCrossed:(unint64_t)crossed
{
  [(IRCandicateClassificationEligibilityStateMachine *)self setDownRankCounter:[(IRCandicateClassificationEligibilityStateMachine *)self downRankCounter]+ 1];
  [(IRCandicateClassificationEligibilityStateMachine *)self _uprankCounterReset];
  if ([(IRCandicateClassificationEligibilityStateMachine *)self downRankCounter]>= crossed)
  {

    [(IRCandicateClassificationEligibilityStateMachine *)self _transitionToState:state];
  }
}

- (void)_downRankDismissAndRejectRankCounterIncrementAndTransitionToState:(int64_t)state ifThresholdCrossed:(unint64_t)crossed
{
  [(IRCandicateClassificationEligibilityStateMachine *)self setDownRankDismissAndRejectRankCounter:[(IRCandicateClassificationEligibilityStateMachine *)self downRankDismissAndRejectRankCounter]+ 1];
  [(IRCandicateClassificationEligibilityStateMachine *)self _uprankCounterReset];
  if ([(IRCandicateClassificationEligibilityStateMachine *)self downRankDismissAndRejectRankCounter]>= crossed)
  {

    [(IRCandicateClassificationEligibilityStateMachine *)self _transitionToState:state];
  }
}

+ (int64_t)_classificationFromEligibility:(int64_t)eligibility
{
  if (eligibility <= 2)
  {
    return eligibility + 2;
  }

  else
  {
    return 2;
  }
}

@end