@interface FINodeIteratorWithExtraChildren
- (BOOL)fullyPopulated;
- (id)first;
- (id)next;
@end

@implementation FINodeIteratorWithExtraChildren

- (id)first
{
  first = [(FINodeIterator *)self->_baseIterator first];
  if (!first)
  {
    first = [(FINodeIterator *)self->_extraIterator first];
  }

  return first;
}

- (id)next
{
  if (self->_baseIteratorDone)
  {
    next = [(FINodeIterator *)self->_extraIterator next];
  }

  else
  {
    next = [(FINodeIterator *)self->_baseIterator next];
    if (!next)
    {
      self->_baseIteratorDone = 1;
      next = [(FINodeIterator *)self->_extraIterator first];
    }
  }

  return next;
}

- (BOOL)fullyPopulated
{
  fullyPopulated = [(FINodeIterator *)self->_baseIterator fullyPopulated];
  if (fullyPopulated)
  {
    extraIterator = self->_extraIterator;

    LOBYTE(fullyPopulated) = [(FINodeIterator *)extraIterator fullyPopulated];
  }

  return fullyPopulated;
}

@end