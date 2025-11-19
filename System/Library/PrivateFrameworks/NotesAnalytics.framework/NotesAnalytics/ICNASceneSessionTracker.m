@interface ICNASceneSessionTracker
- (BOOL)timerIsOn;
- (ICNASceneSessionTracker)initWithSessionTypeEnum:(int64_t)a3;
- (id)sessionSummaryItemData;
- (void)endTimer;
- (void)startTimer;
@end

@implementation ICNASceneSessionTracker

- (ICNASceneSessionTracker)initWithSessionTypeEnum:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = ICNASceneSessionTracker;
  v4 = [(ICNASceneSessionTracker *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_sessionTypeEnum = a3;
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
    v3 = [MEMORY[0x277CBEAA8] date];
    [(ICNASceneSessionTracker *)self setLastStartDate:v3];
  }
}

- (void)endTimer
{
  if ([(ICNASceneSessionTracker *)self timerIsOn])
  {
    v3 = [MEMORY[0x277CBEAA8] date];
    v4 = [(ICNASceneSessionTracker *)self lastStartDate];
    [v3 timeIntervalSinceDate:v4];
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
  v6 = [(ICNASceneSessionTracker *)self lastStartDate];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEAA8] date];
    v8 = [(ICNASceneSessionTracker *)self lastStartDate];
    [v7 timeIntervalSinceDate:v8];
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
  v2 = [(ICNASceneSessionTracker *)self lastStartDate];
  v3 = v2 != 0;

  return v3;
}

@end