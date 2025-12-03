@interface MXMTargetQueue
- (BOOL)add:(double)add;
- (BOOL)checkQuiesced:(double)quiesced;
- (BOOL)full;
- (MXMTargetQueue)init;
- (double)average;
@end

@implementation MXMTargetQueue

- (MXMTargetQueue)init
{
  v6.receiver = self;
  v6.super_class = MXMTargetQueue;
  v2 = [(MXMTargetQueue *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(MXMTargetQueue *)v2 setSize:8];
    v4 = [NSMutableArray arrayWithCapacity:[(MXMTargetQueue *)v3 size]];
    [(MXMTargetQueue *)v3 setQueue:v4];

    [(MXMTargetQueue *)v3 setTotal:0];
    [(MXMTargetQueue *)v3 setTarget:0.0];
    [(MXMTargetQueue *)v3 setTargetHits:0];
    [(MXMTargetQueue *)v3 setHalfTargetHits:0];
  }

  return v3;
}

- (BOOL)add:(double)add
{
  queue = [(MXMTargetQueue *)self queue];
  v6 = [queue count];

  if (vcvtd_n_f64_s64([(MXMTargetQueue *)self size], 1uLL) <= v6)
  {
    queue2 = [(MXMTargetQueue *)self queue];
    v8 = [queue2 objectAtIndex:(v6 * 0.5)];
    [v8 doubleValue];
    v10 = v9;

    [(MXMTargetQueue *)self target];
    if (v10 >= v11)
    {
      [(MXMTargetQueue *)self setHalfTargetHits:[(MXMTargetQueue *)self halfTargetHits]- 1];
    }
  }

  if ([(MXMTargetQueue *)self full])
  {
    queue3 = [(MXMTargetQueue *)self queue];
    v13 = [queue3 objectAtIndex:0];
    [v13 doubleValue];
    v15 = v14;

    queue4 = [(MXMTargetQueue *)self queue];
    [queue4 removeObjectAtIndex:0];

    [(MXMTargetQueue *)self setTotal:([(MXMTargetQueue *)self total]- v15)];
    [(MXMTargetQueue *)self target];
    if (v15 >= v17)
    {
      [(MXMTargetQueue *)self setTargetHits:[(MXMTargetQueue *)self targetHits]- 1];
    }
  }

  queue5 = [(MXMTargetQueue *)self queue];
  v19 = [NSNumber numberWithDouble:add];
  [queue5 addObject:v19];

  [(MXMTargetQueue *)self setTotal:([(MXMTargetQueue *)self total]+ add)];
  [(MXMTargetQueue *)self target];
  v21 = v20;
  if (v20 <= add)
  {
    [(MXMTargetQueue *)self setTargetHits:[(MXMTargetQueue *)self targetHits]+ 1];
    [(MXMTargetQueue *)self setHalfTargetHits:[(MXMTargetQueue *)self halfTargetHits]+ 1];
  }

  return v21 <= add;
}

- (BOOL)full
{
  selfCopy = self;
  queue = [(MXMTargetQueue *)self queue];
  v4 = [queue count];
  LOBYTE(selfCopy) = v4 == [(MXMTargetQueue *)selfCopy size];

  return selfCopy;
}

- (double)average
{
  total = [(MXMTargetQueue *)self total];
  queue = [(MXMTargetQueue *)self queue];
  v5 = total / [queue count];

  return v5;
}

- (BOOL)checkQuiesced:(double)quiesced
{
  if ([(MXMTargetQueue *)self majorityHalfTargetsHit])
  {
    if ([(MXMTargetQueue *)self majorityTargetsHit])
    {
      v5 = 1;
    }

    else
    {
      [(MXMTargetQueue *)self average];
      v7 = v6;
      [(MXMTargetQueue *)self target];
      v5 = v7 <= v8;
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = [(MXMTargetQueue *)self size];
  v10 = [(MXMTargetQueue *)self full]&& v5;
  if (v9 <= quiesced)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

@end