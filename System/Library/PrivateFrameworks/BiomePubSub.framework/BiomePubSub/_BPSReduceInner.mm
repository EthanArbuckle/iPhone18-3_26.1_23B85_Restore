@interface _BPSReduceInner
- (_BPSReduceInner)initWithDownstream:(id)a3 initial:(id)a4 reduce:(id)a5;
- (id)receiveNewValue:(id)a3;
@end

@implementation _BPSReduceInner

- (_BPSReduceInner)initWithDownstream:(id)a3 initial:(id)a4 reduce:(id)a5
{
  v8 = a5;
  v13.receiver = self;
  v13.super_class = _BPSReduceInner;
  v9 = [(BPSReduceProducer *)&v13 initWithDownstream:a3 initial:a4 reduce:v8];
  if (v9)
  {
    v10 = [v8 copy];
    reduce = v9->_reduce;
    v9->_reduce = v10;
  }

  return v9;
}

- (id)receiveNewValue:(id)a3
{
  v4 = a3;
  v5 = [(_BPSReduceInner *)self reduce];
  v6 = [(BPSReduceProducer *)self result];
  v7 = (v5)[2](v5, v6, v4);

  [(BPSReduceProducer *)self setResult:v7];
  v8 = [BPSPartialCompletion alloc];
  v9 = [(BPSReduceProducer *)self result];
  v10 = [(BPSPartialCompletion *)v8 initWithState:1 value:v9 error:0];

  return v10;
}

@end