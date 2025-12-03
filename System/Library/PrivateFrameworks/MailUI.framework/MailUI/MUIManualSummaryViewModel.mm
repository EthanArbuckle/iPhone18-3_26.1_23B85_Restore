@interface MUIManualSummaryViewModel
- (BOOL)isEqual:(id)equal;
- (MUIManualSummaryViewModel)initWithState:(int64_t)state summary:(id)summary error:(id)error summarizableMessageCount:(unint64_t)count isInlineSummary:(BOOL)inlineSummary isExternalSummary:(BOOL)externalSummary summaryControllerFuture:(id)future;
- (unint64_t)hash;
- (void)resetToInitialState;
- (void)updateToCompleteStateWithSummary:(id)summary isExternalSummary:(BOOL)externalSummary;
- (void)updateToErrorState:(id)state;
- (void)updateToLoadingState;
@end

@implementation MUIManualSummaryViewModel

- (MUIManualSummaryViewModel)initWithState:(int64_t)state summary:(id)summary error:(id)error summarizableMessageCount:(unint64_t)count isInlineSummary:(BOOL)inlineSummary isExternalSummary:(BOOL)externalSummary summaryControllerFuture:(id)future
{
  summaryCopy = summary;
  errorCopy = error;
  futureCopy = future;
  v23.receiver = self;
  v23.super_class = MUIManualSummaryViewModel;
  v18 = [(MUIManualSummaryViewModel *)&v23 init];
  v19 = v18;
  if (v18)
  {
    v18->_state = state;
    v20 = [summaryCopy copy];
    summary = v19->_summary;
    v19->_summary = v20;

    objc_storeStrong(&v19->_error, error);
    v19->_summarizableMessageCount = count;
    v19->_isInlineSummary = inlineSummary;
    v19->_isExternalSummary = externalSummary;
    objc_storeStrong(&v19->_summaryControllerFuture, future);
  }

  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      summary = [(MUIManualSummaryViewModel *)self summary];
      summary2 = [(MUIManualSummaryViewModel *)v5 summary];
      if (EFObjectsAreEqual())
      {
        error = [(MUIManualSummaryViewModel *)self error];
        error2 = [(MUIManualSummaryViewModel *)v5 error];
        if (EFObjectsAreEqual() && (v10 = [(MUIManualSummaryViewModel *)self summarizableMessageCount], v10 == [(MUIManualSummaryViewModel *)v5 summarizableMessageCount]) && (v11 = [(MUIManualSummaryViewModel *)self isInlineSummary], v11 == [(MUIManualSummaryViewModel *)v5 isInlineSummary]))
        {
          isExternalSummary = [(MUIManualSummaryViewModel *)self isExternalSummary];
          v12 = isExternalSummary ^ [(MUIManualSummaryViewModel *)v5 isExternalSummary]^ 1;
        }

        else
        {
          LOBYTE(v12) = 0;
        }
      }

      else
      {
        LOBYTE(v12) = 0;
      }
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  summary = [(MUIManualSummaryViewModel *)self summary];
  v4 = [summary hash];

  error = [(MUIManualSummaryViewModel *)self error];
  v6 = 33 * (33 * v4 + [error hash]);

  v7 = 33 * (v6 + [(MUIManualSummaryViewModel *)self summarizableMessageCount]);
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[MUIManualSummaryViewModel isInlineSummary](self, "isInlineSummary")}];
  v9 = 33 * (v7 + [v8 hash]);

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[MUIManualSummaryViewModel isExternalSummary](self, "isExternalSummary")}];
  v11 = [v10 hash] + 0x3107FF0025;

  return v9 + v11;
}

- (void)updateToLoadingState
{
  [(MUIManualSummaryViewModel *)self setState:1];
  [(MUIManualSummaryViewModel *)self setSummary:0];
  [(MUIManualSummaryViewModel *)self setError:0];

  [(MUIManualSummaryViewModel *)self setIsExternalSummary:0];
}

- (void)updateToCompleteStateWithSummary:(id)summary isExternalSummary:(BOOL)externalSummary
{
  externalSummaryCopy = externalSummary;
  summaryCopy = summary;
  [(MUIManualSummaryViewModel *)self setState:2];
  [(MUIManualSummaryViewModel *)self setSummary:summaryCopy];

  [(MUIManualSummaryViewModel *)self setIsExternalSummary:externalSummaryCopy];

  [(MUIManualSummaryViewModel *)self setError:0];
}

- (void)updateToErrorState:(id)state
{
  stateCopy = state;
  [(MUIManualSummaryViewModel *)self setState:3];
  [(MUIManualSummaryViewModel *)self setSummary:0];
  [(MUIManualSummaryViewModel *)self setError:stateCopy];

  [(MUIManualSummaryViewModel *)self setIsExternalSummary:0];
}

- (void)resetToInitialState
{
  [(MUIManualSummaryViewModel *)self setState:0];
  [(MUIManualSummaryViewModel *)self setSummary:0];
  [(MUIManualSummaryViewModel *)self setError:0];

  [(MUIManualSummaryViewModel *)self setIsExternalSummary:0];
}

@end