@interface PHTextCycleLabel
- (void)cycleToNextString;
- (void)dealloc;
- (void)setText:(id)a3;
- (void)startCyclingStrings;
@end

@implementation PHTextCycleLabel

- (void)startCyclingStrings
{
  v3 = [(PHTextCycleLabel *)self cycleStrings];
  v4 = [v3 count];

  if (v4)
  {
    [(PHTextCycleLabel *)self setCurrentCycleStringIndex:0];
    v5 = [(NSArray *)self->_cycleStrings objectAtIndex:[(PHTextCycleLabel *)self currentCycleStringIndex]];
    v10.receiver = self;
    v10.super_class = PHTextCycleLabel;
    [(PHTextCycleLabel *)&v10 setText:v5];

    v6 = [(PHTextCycleLabel *)self cycleTimer];

    if (v6)
    {
      v7 = [(PHTextCycleLabel *)self cycleTimer];
      [v7 invalidate];

      [(PHTextCycleLabel *)self setCycleTimer:0];
    }

    v8 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_cycleToNextString selector:0 userInfo:1 repeats:2.5];
    cycleTimer = self->_cycleTimer;
    self->_cycleTimer = v8;
  }
}

- (void)cycleToNextString
{
  v3 = [(PHTextCycleLabel *)self cycleStrings];
  v4 = [v3 count];

  if (v4)
  {
    [(PHTextCycleLabel *)self setCurrentCycleStringIndex:[(PHTextCycleLabel *)self currentCycleStringIndex]+ 1];
    if ([(PHTextCycleLabel *)self currentCycleStringIndex]>= v4)
    {
      [(PHTextCycleLabel *)self setCurrentCycleStringIndex:0];
    }

    v5 = [(PHTextCycleLabel *)self cycleStrings];
    v6 = [v5 objectAtIndex:{-[PHTextCycleLabel currentCycleStringIndex](self, "currentCycleStringIndex")}];

    v7 = [MEMORY[0x277CDA000] animation];
    [v7 setDuration:0.699999988];
    [v7 setType:*MEMORY[0x277CDA928]];
    v8 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
    [v7 setTimingFunction:v8];

    v9 = [(PHTextCycleLabel *)self layer];
    [v9 addAnimation:v7 forKey:@"labelTextChangeTransition"];

    v10.receiver = self;
    v10.super_class = PHTextCycleLabel;
    [(PHTextCycleLabel *)&v10 setText:v6];
  }
}

- (void)setText:(id)a3
{
  v6.receiver = self;
  v6.super_class = PHTextCycleLabel;
  [(PHTextCycleLabel *)&v6 setText:a3];
  [(PHTextCycleLabel *)self setNumberOfLines:2];
  [(PHTextCycleLabel *)self setAdjustsFontSizeToFitWidth:1];
  cycleTimer = self->_cycleTimer;
  if (cycleTimer)
  {
    [(NSTimer *)cycleTimer invalidate];
    v5 = self->_cycleTimer;
    self->_cycleTimer = 0;

    self->_currentCycleStringIndex = 0;
  }
}

- (void)dealloc
{
  [(NSTimer *)self->_cycleTimer invalidate];
  v3.receiver = self;
  v3.super_class = PHTextCycleLabel;
  [(PHTextCycleLabel *)&v3 dealloc];
}

@end