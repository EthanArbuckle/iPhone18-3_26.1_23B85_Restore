@interface MediaControlsStyleCoordinator
- (void)animateAlongsideTransition:(id)transition completion:(id)completion;
- (void)performAnimations;
- (void)performCompletions;
@end

@implementation MediaControlsStyleCoordinator

- (void)animateAlongsideTransition:(id)transition completion:(id)completion
{
  aBlock = transition;
  completionCopy = completion;
  if (aBlock)
  {
    animations = self->_animations;
    if (animations)
    {
      v8 = _Block_copy(aBlock);
      [(NSMutableArray *)animations addObject:v8];
    }

    else
    {
      v9 = MEMORY[0x1E695DF70];
      v8 = _Block_copy(aBlock);
      v10 = [v9 arrayWithObject:v8];
      v11 = self->_animations;
      self->_animations = v10;
    }
  }

  if (completionCopy)
  {
    completions = self->_completions;
    if (completions)
    {
      v13 = _Block_copy(completionCopy);
      [(NSMutableArray *)completions addObject:v13];
    }

    else
    {
      v14 = MEMORY[0x1E695DF70];
      v13 = _Block_copy(completionCopy);
      v15 = [v14 arrayWithObject:v13];
      v16 = self->_completions;
      self->_completions = v15;
    }
  }
}

- (void)performAnimations
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(NSMutableArray *)self->_animations copy];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v7 + 1) + 8 * v6++) + 16))();
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)performCompletions
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(NSMutableArray *)self->_completions copy];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v7 + 1) + 8 * v6++) + 16))();
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

@end