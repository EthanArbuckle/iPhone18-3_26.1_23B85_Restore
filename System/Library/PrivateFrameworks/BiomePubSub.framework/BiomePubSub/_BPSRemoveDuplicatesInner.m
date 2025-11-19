@interface _BPSRemoveDuplicatesInner
- (_BPSRemoveDuplicatesInner)initWithDownstream:(id)a3 isDuplicate:(id)a4;
- (id)receiveNewValue:(id)a3;
@end

@implementation _BPSRemoveDuplicatesInner

- (_BPSRemoveDuplicatesInner)initWithDownstream:(id)a3 isDuplicate:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = _BPSRemoveDuplicatesInner;
  v7 = [(BPSFilterProducer *)&v12 initWithDownstream:a3];
  if (v7)
  {
    v8 = [v6 copy];
    isDuplicate = v7->_isDuplicate;
    v7->_isDuplicate = v8;

    last = v7->_last;
    v7->_last = 0;
  }

  return v7;
}

- (id)receiveNewValue:(id)a3
{
  v5 = a3;
  if (self->_last && ((*(self->_isDuplicate + 2))() & 1) != 0)
  {
    v6 = 0;
  }

  else
  {
    objc_storeStrong(&self->_last, a3);
    v6 = v5;
  }

  v7 = [[BPSPartialCompletion alloc] initWithState:1 value:v6 error:0];

  return v7;
}

@end