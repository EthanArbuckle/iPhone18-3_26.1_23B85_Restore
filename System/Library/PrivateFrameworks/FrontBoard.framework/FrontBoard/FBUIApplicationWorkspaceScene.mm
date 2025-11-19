@interface FBUIApplicationWorkspaceScene
- (id)_workspaceQueue_createWatchdogForProcess:(id)a3 sceneAction:(unsigned __int8)a4 transitionContext:(id)a5;
- (void)_workspaceQueue_cancelWatchdogTimer:(id)a3;
- (void)_workspaceQueue_invalidate;
@end

@implementation FBUIApplicationWorkspaceScene

- (void)_workspaceQueue_invalidate
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_allWatchdogs;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v10 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(NSMutableSet *)self->_allWatchdogs removeAllObjects];
  [(NSMutableArray *)self->_watchdogStack removeAllObjects];
  v9.receiver = self;
  v9.super_class = FBUIApplicationWorkspaceScene;
  [(FBWorkspaceScene *)&v9 _workspaceQueue_invalidate];
  v8 = *MEMORY[0x1E69E9840];
}

- (id)_workspaceQueue_createWatchdogForProcess:(id)a3 sceneAction:(unsigned __int8)a4 transitionContext:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [(FBWorkspaceScene *)self settings];
  v11 = [v9 watchdogTransitionContext];
  v12 = [v11 runIndependently];
  v13 = [v11 watchdogBehavior];
  if (v13)
  {
    if (v13 != 1)
    {
      v14 = 0;
      v15 = 0;
      self->_sentSceneCreate = 1;
      goto LABEL_17;
    }

    goto LABEL_5;
  }

  if (_FBSceneActionIsSignificant(v6))
  {
LABEL_5:
    sentSceneCreate = self->_sentSceneCreate;
    self->_sentSceneCreate = 1;
    goto LABEL_6;
  }

  v18 = [v10 isForeground];
  sentSceneCreate = self->_sentSceneCreate;
  self->_sentSceneCreate = 1;
  if (v18)
  {
    v14 = 0;
    v15 = 0;
    goto LABEL_17;
  }

LABEL_6:
  if (sentSceneCreate)
  {
    v17 = 3;
  }

  else
  {
    v17 = 2;
  }

  v15 = [FBProcessWatchdogEventContext contextForEvent:v17 settings:v10 transitionContext:v9];
  if (v15)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __104__FBUIApplicationWorkspaceScene__workspaceQueue_createWatchdogForProcess_sceneAction_transitionContext___block_invoke;
    v20[3] = &unk_1E783C9E0;
    v20[4] = self;
    v14 = [v8 _newWatchdogForContext:v15 completion:v20];
    if (v14)
    {
      [(NSMutableSet *)self->_allWatchdogs addObject:v14];
      if ((v12 & 1) != 0 || ([(NSMutableArray *)self->_watchdogStack addObject:v14], [(NSMutableArray *)self->_watchdogStack count]== 1))
      {
        [v14 activate];
      }
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_17:

  return v14;
}

void __104__FBUIApplicationWorkspaceScene__workspaceQueue_createWatchdogForProcess_sceneAction_transitionContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 160);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __104__FBUIApplicationWorkspaceScene__workspaceQueue_createWatchdogForProcess_sceneAction_transitionContext___block_invoke_2;
  v7[3] = &unk_1E783B240;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  [v5 performAsync:v7];
}

- (void)_workspaceQueue_cancelWatchdogTimer:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    if ([(NSMutableArray *)self->_watchdogStack indexOfObjectIdenticalTo:v4]!= 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)self->_watchdogStack removeObjectIdenticalTo:v6];
      if ([(NSMutableArray *)self->_watchdogStack count])
      {
        v5 = [(NSMutableArray *)self->_watchdogStack firstObject];
        [v5 activate];
      }
    }

    [(NSMutableSet *)self->_allWatchdogs removeObject:v6];
    [v6 invalidate];
    v4 = v6;
  }
}

@end