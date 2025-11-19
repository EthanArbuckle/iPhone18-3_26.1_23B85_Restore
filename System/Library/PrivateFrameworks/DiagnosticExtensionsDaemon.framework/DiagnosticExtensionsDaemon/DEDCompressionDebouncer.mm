@interface DEDCompressionDebouncer
- (DEDCompressionDebouncer)initWithTrigger:(id)a3 interval:(double)a4;
- (id)handler;
- (void)sendTriggerIfStateChanged;
- (void)sendTriggerIfTimeElapsed;
@end

@implementation DEDCompressionDebouncer

- (DEDCompressionDebouncer)initWithTrigger:(id)a3 interval:(double)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = DEDCompressionDebouncer;
  v7 = [(DEDCompressionDebouncer *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(DEDCompressionDebouncer *)v7 setTrigger:v6];
    [(DEDCompressionDebouncer *)v8 setInterval:a4];
    [(DEDCompressionDebouncer *)v8 setLastTriggerTime:0.0];
    [(DEDCompressionDebouncer *)v8 setFinished:0];
  }

  return v8;
}

- (void)sendTriggerIfStateChanged
{
  v3 = [MEMORY[0x277CBEAA8] now];
  [v3 timeIntervalSince1970];
  [(DEDCompressionDebouncer *)self setLastTriggerTime:?];

  v4 = [(DEDCompressionDebouncer *)self lastSentCompressedBytes];
  if (v4 != [(DEDCompressionDebouncer *)self lastKnownCompressedBytes]|| (v5 = [(DEDCompressionDebouncer *)self lastSentTotalBytes], v5 != [(DEDCompressionDebouncer *)self lastKnownTotalBytes]))
  {
    v6 = [(DEDCompressionDebouncer *)self trigger];
    v6[2](v6, [(DEDCompressionDebouncer *)self lastKnownCompressedBytes], [(DEDCompressionDebouncer *)self lastKnownTotalBytes]);

    [(DEDCompressionDebouncer *)self setLastSentCompressedBytes:[(DEDCompressionDebouncer *)self lastKnownCompressedBytes]];
    v7 = [(DEDCompressionDebouncer *)self lastKnownTotalBytes];

    [(DEDCompressionDebouncer *)self setLastSentTotalBytes:v7];
  }
}

- (void)sendTriggerIfTimeElapsed
{
  v3 = [(DEDCompressionDebouncer *)self lastKnownCompressedBytes];
  if (v3 < [(DEDCompressionDebouncer *)self lastKnownTotalBytes]|| ([(DEDCompressionDebouncer *)self lastKnownTotalBytes], [(DEDCompressionDebouncer *)self finished]))
  {
    v10 = [MEMORY[0x277CBEAA8] now];
    [v10 timeIntervalSince1970];
    v5 = v4;
    [(DEDCompressionDebouncer *)self lastTriggerTime];
    v7 = v5 - v6;
    [(DEDCompressionDebouncer *)self interval];
    if (v7 < v8)
    {

      return;
    }

    v9 = [(DEDCompressionDebouncer *)self finished];

    if (v9)
    {
      return;
    }
  }

  else
  {
    [(DEDCompressionDebouncer *)self setFinished:1];
  }

  [(DEDCompressionDebouncer *)self sendTriggerIfStateChanged];
}

- (id)handler
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__DEDCompressionDebouncer_handler__block_invoke;
  v4[3] = &unk_278F660D0;
  v4[4] = self;
  v2 = MEMORY[0x24C1E5320](v4, a2);

  return v2;
}

uint64_t __34__DEDCompressionDebouncer_handler__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) setLastKnownCompressedBytes:a2];
  [*(a1 + 32) setLastKnownTotalBytes:a3];
  v5 = *(a1 + 32);

  return [v5 sendTriggerIfTimeElapsed];
}

@end