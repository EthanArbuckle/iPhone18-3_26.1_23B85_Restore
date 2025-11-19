@interface _CDRateLimiter
+ (id)sharedRateLimiter;
- (BOOL)credit;
- (BOOL)debited;
- (NSString)description;
- (_CDRateLimiter)initWithCount:(int64_t)a3 perPeriod:(double)a4;
- (void)recordTimeAndRefillIfNeeded;
- (void)resetRateLimitWithTimeStamp:(id)a3;
@end

@implementation _CDRateLimiter

- (BOOL)debited
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __25___CDRateLimiter_debited__block_invoke;
  v5[3] = &unk_1E7368AF0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)recordTimeAndRefillIfNeeded
{
  dispatch_assert_queue_V2(self->_queue);
  [(NSDate *)self->_lastRecorded timeIntervalSinceNow];
  if (fabs(v3) > self->_period)
  {
    v4 = [MEMORY[0x1E695DF00] date];
    [(_CDRateLimiter *)self resetRateLimitWithTimeStamp:v4];
  }
}

+ (id)sharedRateLimiter
{
  if (sharedRateLimiter_onceToken != -1)
  {
    +[_CDRateLimiter sharedRateLimiter];
  }

  v3 = sharedRateLimiter__sharedRateLimiter;

  return v3;
}

- (_CDRateLimiter)initWithCount:(int64_t)a3 perPeriod:(double)a4
{
  v12.receiver = self;
  v12.super_class = _CDRateLimiter;
  v6 = [(_CDRateLimiter *)&v12 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.duet.ratelimiter", 0);
    queue = v6->_queue;
    v6->_queue = v7;

    v6->_period = a4;
    v6->_count = a3;
    v9 = [MEMORY[0x1E695DF00] distantPast];
    lastRecorded = v6->_lastRecorded;
    v6->_lastRecorded = v9;

    v6->_balance = 0;
  }

  return v6;
}

- (BOOL)credit
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24___CDRateLimiter_credit__block_invoke;
  block[3] = &unk_1E7367440;
  block[4] = self;
  dispatch_sync(queue, block);
  return 1;
}

- (void)resetRateLimitWithTimeStamp:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  lastRecorded = self->_lastRecorded;
  self->_lastRecorded = v4;

  self->_balance = 0;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(_CDRateLimiter *)self period];
  v7 = [v3 stringWithFormat:@"%@: { period=%f, count=%ld }", v5, v6, -[_CDRateLimiter count](self, "count")];

  return v7;
}

@end