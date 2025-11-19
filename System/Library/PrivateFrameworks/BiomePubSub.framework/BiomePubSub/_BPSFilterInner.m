@interface _BPSFilterInner
- (_BPSFilterInner)initWithDownstream:(id)a3 isIncluded:(id)a4;
- (id)receiveNewValue:(id)a3;
@end

@implementation _BPSFilterInner

- (_BPSFilterInner)initWithDownstream:(id)a3 isIncluded:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = _BPSFilterInner;
  v7 = [(BPSFilterProducer *)&v11 initWithDownstream:a3];
  if (v7)
  {
    v8 = [v6 copy];
    isIncluded = v7->_isIncluded;
    v7->_isIncluded = v8;
  }

  return v7;
}

- (id)receiveNewValue:(id)a3
{
  v4 = a3;
  v5 = [(_BPSFilterInner *)self isIncluded];
  v6 = (v5)[2](v5, v4);

  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  v8 = [[BPSPartialCompletion alloc] initWithState:1 value:v7 error:0];

  return v8;
}

@end