@interface _MPCEnhanceDialogueCommand
- (id)activate:(BOOL)a3;
@end

@implementation _MPCEnhanceDialogueCommand

- (id)activate:(BOOL)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13 = *MEMORY[0x1E69B1110];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  v14[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  v6 = [(_MPCPlayerCommand *)self response];
  v7 = [MPCPlayerCommandRequest alloc];
  v8 = [v6 controller];
  v9 = [v6 request];
  v10 = [v9 label];
  v11 = [(MPCPlayerCommandRequest *)v7 initWithMediaRemoteCommand:147 options:v5 controller:v8 label:v10];

  return v11;
}

@end