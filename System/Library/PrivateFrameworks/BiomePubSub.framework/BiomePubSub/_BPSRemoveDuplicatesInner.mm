@interface _BPSRemoveDuplicatesInner
- (_BPSRemoveDuplicatesInner)initWithDownstream:(id)downstream isDuplicate:(id)duplicate;
- (id)receiveNewValue:(id)value;
@end

@implementation _BPSRemoveDuplicatesInner

- (_BPSRemoveDuplicatesInner)initWithDownstream:(id)downstream isDuplicate:(id)duplicate
{
  duplicateCopy = duplicate;
  v12.receiver = self;
  v12.super_class = _BPSRemoveDuplicatesInner;
  v7 = [(BPSFilterProducer *)&v12 initWithDownstream:downstream];
  if (v7)
  {
    v8 = [duplicateCopy copy];
    isDuplicate = v7->_isDuplicate;
    v7->_isDuplicate = v8;

    last = v7->_last;
    v7->_last = 0;
  }

  return v7;
}

- (id)receiveNewValue:(id)value
{
  valueCopy = value;
  if (self->_last && ((*(self->_isDuplicate + 2))() & 1) != 0)
  {
    v6 = 0;
  }

  else
  {
    objc_storeStrong(&self->_last, value);
    v6 = valueCopy;
  }

  v7 = [[BPSPartialCompletion alloc] initWithState:1 value:v6 error:0];

  return v7;
}

@end