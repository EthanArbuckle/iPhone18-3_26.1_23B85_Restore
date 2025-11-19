@interface MXMTargetQueue
- (BOOL)add:(double)a3;
- (BOOL)checkQuiesced:(double)a3;
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

- (BOOL)add:(double)a3
{
  v5 = [(MXMTargetQueue *)self queue];
  v6 = [v5 count];

  if (vcvtd_n_f64_s64([(MXMTargetQueue *)self size], 1uLL) <= v6)
  {
    v7 = [(MXMTargetQueue *)self queue];
    v8 = [v7 objectAtIndex:(v6 * 0.5)];
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
    v12 = [(MXMTargetQueue *)self queue];
    v13 = [v12 objectAtIndex:0];
    [v13 doubleValue];
    v15 = v14;

    v16 = [(MXMTargetQueue *)self queue];
    [v16 removeObjectAtIndex:0];

    [(MXMTargetQueue *)self setTotal:([(MXMTargetQueue *)self total]- v15)];
    [(MXMTargetQueue *)self target];
    if (v15 >= v17)
    {
      [(MXMTargetQueue *)self setTargetHits:[(MXMTargetQueue *)self targetHits]- 1];
    }
  }

  v18 = [(MXMTargetQueue *)self queue];
  v19 = [NSNumber numberWithDouble:a3];
  [v18 addObject:v19];

  [(MXMTargetQueue *)self setTotal:([(MXMTargetQueue *)self total]+ a3)];
  [(MXMTargetQueue *)self target];
  v21 = v20;
  if (v20 <= a3)
  {
    [(MXMTargetQueue *)self setTargetHits:[(MXMTargetQueue *)self targetHits]+ 1];
    [(MXMTargetQueue *)self setHalfTargetHits:[(MXMTargetQueue *)self halfTargetHits]+ 1];
  }

  return v21 <= a3;
}

- (BOOL)full
{
  v2 = self;
  v3 = [(MXMTargetQueue *)self queue];
  v4 = [v3 count];
  LOBYTE(v2) = v4 == [(MXMTargetQueue *)v2 size];

  return v2;
}

- (double)average
{
  v3 = [(MXMTargetQueue *)self total];
  v4 = [(MXMTargetQueue *)self queue];
  v5 = v3 / [v4 count];

  return v5;
}

- (BOOL)checkQuiesced:(double)a3
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
  if (v9 <= a3)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

@end