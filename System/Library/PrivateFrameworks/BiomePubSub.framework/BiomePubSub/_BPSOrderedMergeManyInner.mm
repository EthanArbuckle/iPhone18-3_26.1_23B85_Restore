@interface _BPSOrderedMergeManyInner
- (_BPSOrderedMergeManyInner)initWithDownstream:(id)downstream upstreamCount:(unint64_t)count comparator:(id)comparator;
- (int64_t)compareFirst:(id)first withSecond:(id)second;
@end

@implementation _BPSOrderedMergeManyInner

- (_BPSOrderedMergeManyInner)initWithDownstream:(id)downstream upstreamCount:(unint64_t)count comparator:(id)comparator
{
  comparatorCopy = comparator;
  v13.receiver = self;
  v13.super_class = _BPSOrderedMergeManyInner;
  v9 = [(_BPSAbstractOrderedMerge *)&v13 initWithDownstream:downstream upstreamCount:count];
  if (v9)
  {
    v10 = _Block_copy(comparatorCopy);
    comparator = v9->_comparator;
    v9->_comparator = v10;
  }

  return v9;
}

- (int64_t)compareFirst:(id)first withSecond:(id)second
{
  secondCopy = second;
  firstCopy = first;
  comparator = [(_BPSOrderedMergeManyInner *)self comparator];
  v9 = (comparator)[2](comparator, firstCopy, secondCopy);

  return v9;
}

@end