@interface GKLoadableContentStateMachine
- (GKLoadableContentStateMachine)init;
@end

@implementation GKLoadableContentStateMachine

- (GKLoadableContentStateMachine)init
{
  v20[6] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = GKLoadableContentStateMachine;
  v2 = [(_GKStateMachine *)&v12 init];
  v3 = v2;
  if (v2)
  {
    [(_GKStateMachine *)v2 setCurrentState:@"Initial"];
    v18 = @"LoadingState";
    v19[0] = @"Initial";
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
    v20[0] = v11;
    v19[1] = @"LoadingState";
    v17[0] = @"LoadedState";
    v17[1] = @"NoContentState";
    v17[2] = @"ErrorState";
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
    v20[1] = v4;
    v19[2] = @"RefreshingState";
    v16[0] = @"LoadedState";
    v16[1] = @"NoContentState";
    v16[2] = @"ErrorState";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
    v20[2] = v5;
    v19[3] = @"LoadedState";
    v15[0] = @"RefreshingState";
    v15[1] = @"NoContentState";
    v15[2] = @"ErrorState";
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
    v20[3] = v6;
    v19[4] = @"NoContentState";
    v14[0] = @"RefreshingState";
    v14[1] = @"LoadedState";
    v14[2] = @"ErrorState";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
    v20[4] = v7;
    v19[5] = @"ErrorState";
    v13[0] = @"RefreshingState";
    v13[1] = @"NoContentState";
    v13[2] = @"LoadedState";
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
    v20[5] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:6];
    [(_GKStateMachine *)v3 setValidTransitions:v9];
  }

  return v3;
}

@end