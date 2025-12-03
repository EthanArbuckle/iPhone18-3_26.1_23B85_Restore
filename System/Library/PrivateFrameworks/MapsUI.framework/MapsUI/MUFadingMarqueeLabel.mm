@interface MUFadingMarqueeLabel
- (MUFadingMarqueeLabel)initWithInterval:(double)interval;
- (void)_updateMarquee;
- (void)_updateTimer;
- (void)dealloc;
- (void)setMarqueeInterval:(double)interval;
- (void)setNumberOfLines:(int64_t)lines;
@end

@implementation MUFadingMarqueeLabel

- (void)_updateTimer
{
  marqueeTimer = self->_marqueeTimer;
  if (marqueeTimer)
  {
    dispatch_source_cancel(marqueeTimer);
    v4 = self->_marqueeTimer;
  }

  else
  {
    v4 = 0;
  }

  self->_marqueeTimer = 0;

  if ([(MUFadingMarqueeLabel *)self marqueeEnabled])
  {
    objc_initWeak(&location, self);
    [(MUFadingMarqueeLabel *)self initialDelay];
    [(MUFadingMarqueeLabel *)self marqueeInterval];
    v5 = MEMORY[0x1E69E96A0];
    objc_copyWeak(&v8, &location);
    v6 = geo_dispatch_timer_create_on_queue();
    v7 = self->_marqueeTimer;
    self->_marqueeTimer = v6;

    dispatch_activate(self->_marqueeTimer);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __36__MUFadingMarqueeLabel__updateTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateMarquee];
    [v2 setMarqueeRunning:{objc_msgSend(v2, "marqueeEnabled")}];
    WeakRetained = v2;
  }
}

- (void)_updateMarquee
{
  v4 = [(MUFadingLabel *)self isTruncated]&& ([(MUFadingMarqueeLabel *)self marqueeInterval], v3 >= 0.0) && [(MUFadingMarqueeLabel *)self numberOfLines]== 1;

  [(MUFadingMarqueeLabel *)self setMarqueeEnabled:v4];
}

- (void)setNumberOfLines:(int64_t)lines
{
  numberOfLines = [(MUFadingMarqueeLabel *)self numberOfLines];
  v6.receiver = self;
  v6.super_class = MUFadingMarqueeLabel;
  [(MUFadingMarqueeLabel *)&v6 setNumberOfLines:lines];
  if (numberOfLines != [(MUFadingMarqueeLabel *)self numberOfLines])
  {
    [(MUFadingMarqueeLabel *)self _updateMarquee];
  }
}

- (void)setMarqueeInterval:(double)interval
{
  if (self->_marqueeInterval != interval)
  {
    self->_marqueeInterval = interval;
    [(MUFadingMarqueeLabel *)self _updateMarquee];
  }
}

- (void)dealloc
{
  marqueeTimer = self->_marqueeTimer;
  if (marqueeTimer)
  {
    dispatch_source_cancel(marqueeTimer);
  }

  v4.receiver = self;
  v4.super_class = MUFadingMarqueeLabel;
  [(MUFadingMarqueeLabel *)&v4 dealloc];
}

- (MUFadingMarqueeLabel)initWithInterval:(double)interval
{
  v7.receiver = self;
  v7.super_class = MUFadingMarqueeLabel;
  v4 = [(MUFadingLabel *)&v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_marqueeInterval = -1.0;
    v4->_initialDelay = 5.0;
    [(MUFadingMarqueeLabel *)v4 setMarqueeRepeatCount:1];
    [(MUFadingMarqueeLabel *)v5 setMarqueeInterval:interval];
  }

  return v5;
}

@end