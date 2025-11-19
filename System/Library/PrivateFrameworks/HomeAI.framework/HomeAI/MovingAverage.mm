@interface MovingAverage
- (MovingAverage)initWithWindowSize:(unint64_t)a3;
- (double)movingAverageForInterval:(double)a3 defaultValue:(double)a4;
- (void)addNumber:(id)a3;
@end

@implementation MovingAverage

- (MovingAverage)initWithWindowSize:(unint64_t)a3
{
  v14.receiver = self;
  v14.super_class = MovingAverage;
  v4 = [(MovingAverage *)&v14 init];
  v5 = v4;
  if (v4)
  {
    if (!a3)
    {
      v9 = MEMORY[0x277CBEAD8];
      v10 = *MEMORY[0x277CBE660];
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid parameter for windowSize: %lu, windowSize must be > 0", 0];
      v12 = [v9 exceptionWithName:v10 reason:v11 userInfo:0];
      v13 = v12;

      objc_exception_throw(v12);
    }

    v4->_windowSize = a3;
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:a3];
    queue = v5->_queue;
    v5->_queue = v6;

    v5->_movingAverage = 0.0;
    v5->_lock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

- (void)addNumber:(id)a3
{
  v4 = a3;
  if ([(MovingAverage *)self windowSize])
  {
    os_unfair_lock_lock_with_options();
    v5 = [(MovingAverage *)self queue];
    v6 = [v5 count];
    v7 = [(MovingAverage *)self windowSize];

    if (v6 >= v7)
    {
      v8 = [(MovingAverage *)self queue];
      [v8 hmf_removeFirstObject];
    }

    v9 = [(MovingAverage *)self queue];
    v10 = [[MovingAverageEntry alloc] initWithValue:v4];
    [v9 addObject:v10];

    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v11 = [(MovingAverage *)self queue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __27__MovingAverage_addNumber___block_invoke;
    v14[3] = &unk_2787531D8;
    v14[4] = &v15;
    [v11 na_each:v14];

    v12 = v16[3];
    v13 = [(MovingAverage *)self queue];
    -[MovingAverage setMovingAverage:](self, "setMovingAverage:", v12 / [v13 count]);

    _Block_object_dispose(&v15, 8);
    os_unfair_lock_unlock(&self->_lock);
  }
}

void __27__MovingAverage_addNumber___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 value];
  [v4 doubleValue];
  *(*(*(a1 + 32) + 8) + 24) = v3 + *(*(*(a1 + 32) + 8) + 24);
}

- (double)movingAverageForInterval:(double)a3 defaultValue:(double)a4
{
  os_unfair_lock_lock_with_options();
  v7 = [MEMORY[0x277CBEAA8] now];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v8 = [(MovingAverage *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__MovingAverage_movingAverageForInterval_defaultValue___block_invoke;
  v12[3] = &unk_278753200;
  v9 = v7;
  v16 = a3;
  v13 = v9;
  v14 = &v17;
  v15 = &v21;
  [v8 na_each:v12];

  v10 = *(v22 + 6);
  if (v10)
  {
    a4 = v18[3] / v10;
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  os_unfair_lock_unlock(&self->_lock);
  return a4;
}

void __55__MovingAverage_movingAverageForInterval_defaultValue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v10 = v3;
  v5 = [v3 date];
  [v4 timeIntervalSinceDate:v5];
  v7 = v6;

  if (v7 < *(a1 + 56))
  {
    v8 = [v10 value];
    [v8 doubleValue];
    *(*(*(a1 + 40) + 8) + 24) = v9 + *(*(*(a1 + 40) + 8) + 24);

    ++*(*(*(a1 + 48) + 8) + 24);
  }
}

@end