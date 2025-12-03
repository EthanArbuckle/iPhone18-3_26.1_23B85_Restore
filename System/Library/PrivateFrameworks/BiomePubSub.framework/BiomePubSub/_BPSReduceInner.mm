@interface _BPSReduceInner
- (_BPSReduceInner)initWithDownstream:(id)downstream initial:(id)initial reduce:(id)reduce;
- (id)receiveNewValue:(id)value;
@end

@implementation _BPSReduceInner

- (_BPSReduceInner)initWithDownstream:(id)downstream initial:(id)initial reduce:(id)reduce
{
  reduceCopy = reduce;
  v13.receiver = self;
  v13.super_class = _BPSReduceInner;
  v9 = [(BPSReduceProducer *)&v13 initWithDownstream:downstream initial:initial reduce:reduceCopy];
  if (v9)
  {
    v10 = [reduceCopy copy];
    reduce = v9->_reduce;
    v9->_reduce = v10;
  }

  return v9;
}

- (id)receiveNewValue:(id)value
{
  valueCopy = value;
  reduce = [(_BPSReduceInner *)self reduce];
  result = [(BPSReduceProducer *)self result];
  v7 = (reduce)[2](reduce, result, valueCopy);

  [(BPSReduceProducer *)self setResult:v7];
  v8 = [BPSPartialCompletion alloc];
  result2 = [(BPSReduceProducer *)self result];
  v10 = [(BPSPartialCompletion *)v8 initWithState:1 value:result2 error:0];

  return v10;
}

@end