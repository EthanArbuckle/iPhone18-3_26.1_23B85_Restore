@interface FINodeIteratorWithExtraChildren
- (BOOL)fullyPopulated;
- (id)first;
- (id)next;
@end

@implementation FINodeIteratorWithExtraChildren

- (id)first
{
  v3 = [(FINodeIterator *)self->_baseIterator first];
  if (!v3)
  {
    v3 = [(FINodeIterator *)self->_extraIterator first];
  }

  return v3;
}

- (id)next
{
  if (self->_baseIteratorDone)
  {
    v3 = [(FINodeIterator *)self->_extraIterator next];
  }

  else
  {
    v3 = [(FINodeIterator *)self->_baseIterator next];
    if (!v3)
    {
      self->_baseIteratorDone = 1;
      v3 = [(FINodeIterator *)self->_extraIterator first];
    }
  }

  return v3;
}

- (BOOL)fullyPopulated
{
  v3 = [(FINodeIterator *)self->_baseIterator fullyPopulated];
  if (v3)
  {
    extraIterator = self->_extraIterator;

    LOBYTE(v3) = [(FINodeIterator *)extraIterator fullyPopulated];
  }

  return v3;
}

@end