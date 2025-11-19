@interface CKSendMenuPopoverAnimation
- (CKSendMenuPopoverAnimation)initWithAnimators:(id)a3;
- (void)startAnimation;
@end

@implementation CKSendMenuPopoverAnimation

- (CKSendMenuPopoverAnimation)initWithAnimators:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CKSendMenuPopoverAnimation;
  v5 = [(CKSendMenuPopoverAnimation *)&v12 init];
  if (v5)
  {
    v6 = [v4 copy];
    animators = v5->_animators;
    v5->_animators = v6;

    v8 = dispatch_group_create();
    group = v5->_group;
    v5->_group = v8;

    completion = v5->_completion;
    v5->_completion = &__block_literal_global_118;
  }

  return v5;
}

- (void)startAnimation
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_animators;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        dispatch_group_enter(self->_group);
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __44__CKSendMenuPopoverAnimation_startAnimation__block_invoke;
        v11[3] = &unk_1E72ED838;
        v11[4] = self;
        [v8 addCompletion:v11];
        [v8 startAnimation];
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  group = self->_group;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__CKSendMenuPopoverAnimation_startAnimation__block_invoke_2;
  v10[3] = &unk_1E72EBA18;
  v10[4] = self;
  dispatch_group_notify(group, MEMORY[0x1E69E96A0], v10);
}

void __44__CKSendMenuPopoverAnimation_startAnimation__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) completion];
  v1[2]();
}

@end