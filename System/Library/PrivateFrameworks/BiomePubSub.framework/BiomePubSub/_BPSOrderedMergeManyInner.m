@interface _BPSOrderedMergeManyInner
- (_BPSOrderedMergeManyInner)initWithDownstream:(id)a3 upstreamCount:(unint64_t)a4 comparator:(id)a5;
- (int64_t)compareFirst:(id)a3 withSecond:(id)a4;
@end

@implementation _BPSOrderedMergeManyInner

- (_BPSOrderedMergeManyInner)initWithDownstream:(id)a3 upstreamCount:(unint64_t)a4 comparator:(id)a5
{
  v8 = a5;
  v13.receiver = self;
  v13.super_class = _BPSOrderedMergeManyInner;
  v9 = [(_BPSAbstractOrderedMerge *)&v13 initWithDownstream:a3 upstreamCount:a4];
  if (v9)
  {
    v10 = _Block_copy(v8);
    comparator = v9->_comparator;
    v9->_comparator = v10;
  }

  return v9;
}

- (int64_t)compareFirst:(id)a3 withSecond:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_BPSOrderedMergeManyInner *)self comparator];
  v9 = (v8)[2](v8, v7, v6);

  return v9;
}

@end