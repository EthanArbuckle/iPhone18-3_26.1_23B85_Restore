@interface ICNASceneSessionTracker
- (BOOL)timerIsOn;
- (ICNASceneSessionTracker)initWithSessionTypeEnum:(int64_t)enum;
- (id)sessionSummaryItemData;
- (void)endTimer;
- (void)startTimer;
@end

@implementation ICNASceneSessionTracker

- (ICNASceneSessionTracker)initWithSessionTypeEnum:(int64_t)enum
{
  v8.receiver = self;
  v8.super_class = ICNASceneSessionTracker;
  v4 = [(ICNASceneSessionTracker *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_sessionTypeEnum = enum;
    v4->_duration = 0.0;
    lastStartDate = v4->_lastStartDate;
    v4->_lastStartDate = 0;

    v5->_count = 0;
  }

  return v5;
}

- (void)startTimer
{
  if (![(ICNASceneSessionTracker *)self timerIsOn])
  {
    [(ICNASceneSessionTracker *)self setCount:[(ICNASceneSessionTracker *)self count]+ 1];
    date = [MEMORY[0x277CBEAA8] date];
    [(ICNASceneSessionTracker *)self setLastStartDate:date];
  }
}

- (void)endTimer
{
  if ([(ICNASceneSessionTracker *)self timerIsOn])
  {
    date = [MEMORY[0x277CBEAA8] date];
    lastStartDate = [(ICNASceneSessionTracker *)self lastStartDate];
    [date timeIntervalSinceDate:lastStartDate];
    v6 = v5;
    [(ICNASceneSessionTracker *)self duration];
    [(ICNASceneSessionTracker *)self setDuration:v6 + v7];

    [(ICNASceneSessionTracker *)self setLastStartDate:0];
  }
}

- (id)sessionSummaryItemData
{
  v3 = [[ICASSessionType alloc] initWithSessionType:[(ICNASceneSessionTracker *)self sessionTypeEnum]];
  [(ICNASceneSessionTracker *)self duration];
  v5 = v4;
  lastStartDate = [(ICNASceneSessionTracker *)self lastStartDate];
  if (lastStartDate)
  {
    date = [MEMORY[0x277CBEAA8] date];
    lastStartDate2 = [(ICNASceneSessionTracker *)self lastStartDate];
    [date timeIntervalSinceDate:lastStartDate2];
    v10 = v9;
  }

  else
  {
    v10 = 0.0;
  }

  v11 = [ICASSessionSummaryArrayItemData alloc];
  v12 = MEMORY[0x277CCABB0];
  ICNARoundTo2SigFigs((v5 + v10) * 1000.0);
  v13 = [v12 numberWithDouble:?];
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[ICNASceneSessionTracker count](self, "count"))}];
  v15 = [(ICASSessionSummaryArrayItemData *)v11 initWithSessionType:v3 sessionDuration:v13 sessionCount:v14];

  return v15;
}

- (BOOL)timerIsOn
{
  lastStartDate = [(ICNASceneSessionTracker *)self lastStartDate];
  v3 = lastStartDate != 0;

  return v3;
}

@end