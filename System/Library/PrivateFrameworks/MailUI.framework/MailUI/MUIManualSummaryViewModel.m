@interface MUIManualSummaryViewModel
- (BOOL)isEqual:(id)a3;
- (MUIManualSummaryViewModel)initWithState:(int64_t)a3 summary:(id)a4 error:(id)a5 summarizableMessageCount:(unint64_t)a6 isInlineSummary:(BOOL)a7 isExternalSummary:(BOOL)a8 summaryControllerFuture:(id)a9;
- (unint64_t)hash;
- (void)resetToInitialState;
- (void)updateToCompleteStateWithSummary:(id)a3 isExternalSummary:(BOOL)a4;
- (void)updateToErrorState:(id)a3;
- (void)updateToLoadingState;
@end

@implementation MUIManualSummaryViewModel

- (MUIManualSummaryViewModel)initWithState:(int64_t)a3 summary:(id)a4 error:(id)a5 summarizableMessageCount:(unint64_t)a6 isInlineSummary:(BOOL)a7 isExternalSummary:(BOOL)a8 summaryControllerFuture:(id)a9
{
  v15 = a4;
  v16 = a5;
  v17 = a9;
  v23.receiver = self;
  v23.super_class = MUIManualSummaryViewModel;
  v18 = [(MUIManualSummaryViewModel *)&v23 init];
  v19 = v18;
  if (v18)
  {
    v18->_state = a3;
    v20 = [v15 copy];
    summary = v19->_summary;
    v19->_summary = v20;

    objc_storeStrong(&v19->_error, a5);
    v19->_summarizableMessageCount = a6;
    v19->_isInlineSummary = a7;
    v19->_isExternalSummary = a8;
    objc_storeStrong(&v19->_summaryControllerFuture, a9);
  }

  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MUIManualSummaryViewModel *)self summary];
      v7 = [(MUIManualSummaryViewModel *)v5 summary];
      if (EFObjectsAreEqual())
      {
        v8 = [(MUIManualSummaryViewModel *)self error];
        v9 = [(MUIManualSummaryViewModel *)v5 error];
        if (EFObjectsAreEqual() && (v10 = [(MUIManualSummaryViewModel *)self summarizableMessageCount], v10 == [(MUIManualSummaryViewModel *)v5 summarizableMessageCount]) && (v11 = [(MUIManualSummaryViewModel *)self isInlineSummary], v11 == [(MUIManualSummaryViewModel *)v5 isInlineSummary]))
        {
          v14 = [(MUIManualSummaryViewModel *)self isExternalSummary];
          v12 = v14 ^ [(MUIManualSummaryViewModel *)v5 isExternalSummary]^ 1;
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
  v3 = [(MUIManualSummaryViewModel *)self summary];
  v4 = [v3 hash];

  v5 = [(MUIManualSummaryViewModel *)self error];
  v6 = 33 * (33 * v4 + [v5 hash]);

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

- (void)updateToCompleteStateWithSummary:(id)a3 isExternalSummary:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(MUIManualSummaryViewModel *)self setState:2];
  [(MUIManualSummaryViewModel *)self setSummary:v6];

  [(MUIManualSummaryViewModel *)self setIsExternalSummary:v4];

  [(MUIManualSummaryViewModel *)self setError:0];
}

- (void)updateToErrorState:(id)a3
{
  v4 = a3;
  [(MUIManualSummaryViewModel *)self setState:3];
  [(MUIManualSummaryViewModel *)self setSummary:0];
  [(MUIManualSummaryViewModel *)self setError:v4];

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