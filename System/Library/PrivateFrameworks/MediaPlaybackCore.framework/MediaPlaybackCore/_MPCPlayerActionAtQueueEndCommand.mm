@interface _MPCPlayerActionAtQueueEndCommand
- (id)setQueueEndAction:(int64_t)a3;
@end

@implementation _MPCPlayerActionAtQueueEndCommand

- (id)setQueueEndAction:(int64_t)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  supportedActions = self->_supportedActions;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  LODWORD(supportedActions) = [(NSArray *)supportedActions containsObject:v6];

  if (supportedActions)
  {
    v7 = [(_MPCPlayerCommand *)self response];
    v8 = [MPCPlayerCommandRequest alloc];
    v19 = *MEMORY[0x1E69B11E8];
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v20[0] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v11 = [v7 controller];
    v12 = [v7 request];
    v13 = [v12 label];
    v14 = [(MPCPlayerCommandRequest *)v8 initWithMediaRemoteCommand:135 options:v10 controller:v11 label:v13];

    v17 = *MEMORY[0x1E69B0CD8];
    v18 = MEMORY[0x1E695E118];
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    [(MPCPlayerCommandRequest *)v14 setUserInitiatedOptions:v15];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end