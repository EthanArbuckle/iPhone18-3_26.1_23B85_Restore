@interface _BPSFilterInner
- (_BPSFilterInner)initWithDownstream:(id)downstream isIncluded:(id)included;
- (id)receiveNewValue:(id)value;
@end

@implementation _BPSFilterInner

- (_BPSFilterInner)initWithDownstream:(id)downstream isIncluded:(id)included
{
  includedCopy = included;
  v11.receiver = self;
  v11.super_class = _BPSFilterInner;
  v7 = [(BPSFilterProducer *)&v11 initWithDownstream:downstream];
  if (v7)
  {
    v8 = [includedCopy copy];
    isIncluded = v7->_isIncluded;
    v7->_isIncluded = v8;
  }

  return v7;
}

- (id)receiveNewValue:(id)value
{
  valueCopy = value;
  isIncluded = [(_BPSFilterInner *)self isIncluded];
  v6 = (isIncluded)[2](isIncluded, valueCopy);

  if (v6)
  {
    v7 = valueCopy;
  }

  else
  {
    v7 = 0;
  }

  v8 = [[BPSPartialCompletion alloc] initWithState:1 value:v7 error:0];

  return v8;
}

@end