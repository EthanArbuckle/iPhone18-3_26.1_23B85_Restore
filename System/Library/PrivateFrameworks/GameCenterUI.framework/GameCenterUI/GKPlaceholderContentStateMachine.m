@interface GKPlaceholderContentStateMachine
- (BOOL)isInPlaceholderState;
- (GKPlaceholderContentStateMachine)init;
@end

@implementation GKPlaceholderContentStateMachine

- (GKPlaceholderContentStateMachine)init
{
  v20[6] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = GKPlaceholderContentStateMachine;
  v2 = [(_GKStateMachine *)&v12 init];
  v3 = v2;
  if (v2)
  {
    [(_GKStateMachine *)v2 setCurrentState:@"Initial"];
    v19[0] = @"Initial";
    v18[0] = @"LoadingState";
    v18[1] = @"LoadedState";
    v18[2] = @"NoContentState";
    v18[3] = @"ErrorState";
    v18[4] = @"RefreshingState";
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:5];
    v20[0] = v11;
    v19[1] = @"LoadingState";
    v17[0] = @"Initial";
    v17[1] = @"LoadedState";
    v17[2] = @"NoContentState";
    v17[3] = @"ErrorState";
    v17[4] = @"RefreshingState";
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:5];
    v20[1] = v10;
    v19[2] = @"RefreshingState";
    v16[0] = @"Initial";
    v16[1] = @"LoadedState";
    v16[2] = @"NoContentState";
    v16[3] = @"ErrorState";
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:4];
    v20[2] = v4;
    v19[3] = @"LoadedState";
    v15[0] = @"Initial";
    v15[1] = @"RefreshingState";
    v15[2] = @"NoContentState";
    v15[3] = @"ErrorState";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:4];
    v20[3] = v5;
    v19[4] = @"NoContentState";
    v14[0] = @"Initial";
    v14[1] = @"RefreshingState";
    v14[2] = @"LoadedState";
    v14[3] = @"ErrorState";
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:4];
    v20[4] = v6;
    v19[5] = @"ErrorState";
    v13[0] = @"Initial";
    v13[1] = @"RefreshingState";
    v13[2] = @"NoContentState";
    v13[3] = @"LoadedState";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:4];
    v20[5] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:6];
    [(_GKStateMachine *)v3 setValidTransitions:v8];
  }

  return v3;
}

- (BOOL)isInPlaceholderState
{
  v3 = [(_GKStateMachine *)self currentState];
  if (v3 == @"LoadingState")
  {
    v6 = 1;
  }

  else
  {
    v4 = [(_GKStateMachine *)self currentState];
    if (v4 == @"NoContentState")
    {
      v6 = 1;
    }

    else
    {
      v5 = [(_GKStateMachine *)self currentState];
      v6 = v5 == @"ErrorState";
    }
  }

  return v6;
}

@end