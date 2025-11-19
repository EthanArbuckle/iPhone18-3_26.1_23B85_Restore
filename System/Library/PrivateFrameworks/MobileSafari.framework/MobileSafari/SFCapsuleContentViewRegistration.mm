@interface SFCapsuleContentViewRegistration
- (SFCapsuleContentViewRegistration)initWithCreateViewBlock:(id)a3;
- (id)createOrDequeueViewWithExistingView:(id)a3;
@end

@implementation SFCapsuleContentViewRegistration

- (SFCapsuleContentViewRegistration)initWithCreateViewBlock:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SFCapsuleContentViewRegistration;
  v5 = [(SFCapsuleContentViewRegistration *)&v12 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    views = v5->_views;
    v5->_views = v6;

    v8 = _Block_copy(v4);
    createViewBlock = v5->_createViewBlock;
    v5->_createViewBlock = v8;

    v10 = v5;
  }

  return v5;
}

- (id)createOrDequeueViewWithExistingView:(id)a3
{
  v4 = a3;
  views = self->_views;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__SFCapsuleContentViewRegistration_createOrDequeueViewWithExistingView___block_invoke;
  v11[3] = &unk_1E721C020;
  v6 = v4;
  v12 = v6;
  v7 = [(NSMutableSet *)views objectsPassingTest:v11];
  if ([v7 containsObject:v6])
  {
    v8 = v6;
    [(NSMutableSet *)self->_views removeObject:v8];
  }

  else
  {
    if ([v7 count])
    {
      v8 = [v7 anyObject];
      [(NSMutableSet *)self->_views removeObject:v8];
    }

    else
    {
      v8 = (*(self->_createViewBlock + 2))();
    }

    if (v8 != v6 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v8 prepareForReuse];
    }
  }

  v9 = v8;

  return v8;
}

BOOL __72__SFCapsuleContentViewRegistration_createOrDequeueViewWithExistingView___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 _sf_firstAncestorViewOfClass:objc_opt_class()];
  v5 = v4;
  v6 = !v4 || ([v4 isHidden] & 1) != 0 || *(a1 + 32) == v3;

  return v6;
}

@end