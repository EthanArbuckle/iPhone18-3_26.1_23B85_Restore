@interface MBProgress
- (BOOL)isFinished;
- (MBProgress)init;
- (void)addDuration:(double)a3;
- (void)updateWithDuration:(double)a3 size:(unint64_t)a4;
@end

@implementation MBProgress

- (MBProgress)init
{
  v3.receiver = self;
  v3.super_class = MBProgress;
  result = [(MBProgress *)&v3 init];
  if (result)
  {
    result->_scale = 1.0;
  }

  return result;
}

- (BOOL)isFinished
{
  current = self->_current;
  total = self->_total;
  return current <= total + 0.001 && total + -0.001 <= current;
}

- (void)addDuration:(double)a3
{
  if (a3 < 0.0)
  {
    v6 = +[NSAssertionHandler currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"MBProgress.m" lineNumber:29 description:@"Negative duration"];
  }

  self->_total = self->_total + a3;
}

- (void)updateWithDuration:(double)a3 size:(unint64_t)a4
{
  total = self->_total;
  v7 = self->_current + a3;
  self->_current = v7;
  if (v7 > total + 0.001)
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"MBProgress.m" lineNumber:35 description:{@"Progress overflow (%0.4f > %0.4f)", *&self->_current, *&self->_total}];
  }

  delegate = self->_delegate;
  [(MBProgress *)self percentage];

  [(MBProgressDelegate *)delegate progressUpdatedWithPercentage:a4 size:?];
}

@end