@interface ALSOcclusionStats
- (ALSOcclusionStats)init;
- (void)recordOcclusionByProx:(BOOL)prox andByTouch:(BOOL)touch;
- (void)reset;
@end

@implementation ALSOcclusionStats

- (ALSOcclusionStats)init
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = ALSOcclusionStats;
  selfCopy = [(ALSOcclusionStats *)&v3 init];
  if (selfCopy)
  {
    [(ALSOcclusionStats *)selfCopy reset];
  }

  return selfCopy;
}

- (void)reset
{
  self->_prox = 0;
  self->_touch = 0;
  self->_touchAndProx = 0;
  self->_none = 0;
}

- (void)recordOcclusionByProx:(BOOL)prox andByTouch:(BOOL)touch
{
  if (touch && prox)
  {
    ++self->_touchAndProx;
  }

  else if (prox)
  {
    ++self->_prox;
  }

  else if (touch)
  {
    ++self->_touch;
  }

  else
  {
    ++self->_none;
  }
}

@end