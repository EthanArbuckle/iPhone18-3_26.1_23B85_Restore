@interface ALSOcclusionStats
- (ALSOcclusionStats)init;
- (void)recordOcclusionByProx:(BOOL)a3 andByTouch:(BOOL)a4;
- (void)reset;
@end

@implementation ALSOcclusionStats

- (ALSOcclusionStats)init
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = ALSOcclusionStats;
  v5 = [(ALSOcclusionStats *)&v3 init];
  if (v5)
  {
    [(ALSOcclusionStats *)v5 reset];
  }

  return v5;
}

- (void)reset
{
  self->_prox = 0;
  self->_touch = 0;
  self->_touchAndProx = 0;
  self->_none = 0;
}

- (void)recordOcclusionByProx:(BOOL)a3 andByTouch:(BOOL)a4
{
  if (a4 && a3)
  {
    ++self->_touchAndProx;
  }

  else if (a3)
  {
    ++self->_prox;
  }

  else if (a4)
  {
    ++self->_touch;
  }

  else
  {
    ++self->_none;
  }
}

@end