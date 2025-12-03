@interface SNNMILOperationEnumerator
- (SNNMILFunction)function;
- (SNNMILOperationEnumerator)initWithFunction:(id)function;
- (id)nextObject;
@end

@implementation SNNMILOperationEnumerator

- (SNNMILOperationEnumerator)initWithFunction:(id)function
{
  functionCopy = function;
  v8.receiver = self;
  v8.super_class = SNNMILOperationEnumerator;
  v5 = [(SNNMILOperationEnumerator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_currentIndex = 0;
    objc_storeWeak(&v5->_function, functionCopy);
  }

  return v6;
}

- (id)nextObject
{
  currentIndex = self->_currentIndex;
  WeakRetained = objc_loadWeakRetained(&self->_function);
  operationCount = [WeakRetained operationCount];

  if (operationCount <= currentIndex)
  {
    v7 = 0;
  }

  else
  {
    v6 = objc_loadWeakRetained(&self->_function);
    ++self->_currentIndex;
    v7 = [v6 operationAtIndex:?];
  }

  return v7;
}

- (SNNMILFunction)function
{
  WeakRetained = objc_loadWeakRetained(&self->_function);

  return WeakRetained;
}

@end