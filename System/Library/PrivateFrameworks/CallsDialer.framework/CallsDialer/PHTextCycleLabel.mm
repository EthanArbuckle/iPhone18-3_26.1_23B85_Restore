@interface PHTextCycleLabel
- (void)cycleToNextString;
- (void)dealloc;
- (void)setText:(id)text;
- (void)startCyclingStrings;
@end

@implementation PHTextCycleLabel

- (void)startCyclingStrings
{
  cycleStrings = [(PHTextCycleLabel *)self cycleStrings];
  v4 = [cycleStrings count];

  if (v4)
  {
    [(PHTextCycleLabel *)self setCurrentCycleStringIndex:0];
    v5 = [(NSArray *)self->_cycleStrings objectAtIndex:[(PHTextCycleLabel *)self currentCycleStringIndex]];
    v10.receiver = self;
    v10.super_class = PHTextCycleLabel;
    [(PHTextCycleLabel *)&v10 setText:v5];

    cycleTimer = [(PHTextCycleLabel *)self cycleTimer];

    if (cycleTimer)
    {
      cycleTimer2 = [(PHTextCycleLabel *)self cycleTimer];
      [cycleTimer2 invalidate];

      [(PHTextCycleLabel *)self setCycleTimer:0];
    }

    v8 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_cycleToNextString selector:0 userInfo:1 repeats:2.5];
    cycleTimer = self->_cycleTimer;
    self->_cycleTimer = v8;
  }
}

- (void)cycleToNextString
{
  cycleStrings = [(PHTextCycleLabel *)self cycleStrings];
  v4 = [cycleStrings count];

  if (v4)
  {
    [(PHTextCycleLabel *)self setCurrentCycleStringIndex:[(PHTextCycleLabel *)self currentCycleStringIndex]+ 1];
    if ([(PHTextCycleLabel *)self currentCycleStringIndex]>= v4)
    {
      [(PHTextCycleLabel *)self setCurrentCycleStringIndex:0];
    }

    cycleStrings2 = [(PHTextCycleLabel *)self cycleStrings];
    v6 = [cycleStrings2 objectAtIndex:{-[PHTextCycleLabel currentCycleStringIndex](self, "currentCycleStringIndex")}];

    animation = [MEMORY[0x277CDA000] animation];
    [animation setDuration:0.699999988];
    [animation setType:*MEMORY[0x277CDA928]];
    v8 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
    [animation setTimingFunction:v8];

    layer = [(PHTextCycleLabel *)self layer];
    [layer addAnimation:animation forKey:@"labelTextChangeTransition"];

    v10.receiver = self;
    v10.super_class = PHTextCycleLabel;
    [(PHTextCycleLabel *)&v10 setText:v6];
  }
}

- (void)setText:(id)text
{
  v6.receiver = self;
  v6.super_class = PHTextCycleLabel;
  [(PHTextCycleLabel *)&v6 setText:text];
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