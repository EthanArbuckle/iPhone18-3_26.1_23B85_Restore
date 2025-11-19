@interface HDSessionAssertionWrapper
- (HDSessionAssertionWrapper)initWithCreateAndTakeBlock:(id)a3;
- (void)dealloc;
@end

@implementation HDSessionAssertionWrapper

- (HDSessionAssertionWrapper)initWithCreateAndTakeBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HDSessionAssertionWrapper;
  v5 = [(HDSessionAssertionWrapper *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(v4);
    createAndTakeBlock = v5->_createAndTakeBlock;
    v5->_createAndTakeBlock = v6;
  }

  return v5;
}

- (void)dealloc
{
  [(HDAssertion *)self->_currentAssertion invalidate];
  currentAssertion = self->_currentAssertion;
  self->_currentAssertion = 0;

  v4.receiver = self;
  v4.super_class = HDSessionAssertionWrapper;
  [(HDSessionAssertionWrapper *)&v4 dealloc];
}

@end