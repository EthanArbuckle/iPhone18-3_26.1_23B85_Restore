@interface _MPCEnhanceDialogueCommand
- (id)activate:(BOOL)activate;
@end

@implementation _MPCEnhanceDialogueCommand

- (id)activate:(BOOL)activate
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13 = *MEMORY[0x1E69B1110];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:activate];
  v14[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  response = [(_MPCPlayerCommand *)self response];
  v7 = [MPCPlayerCommandRequest alloc];
  controller = [response controller];
  request = [response request];
  label = [request label];
  v11 = [(MPCPlayerCommandRequest *)v7 initWithMediaRemoteCommand:147 options:v5 controller:controller label:label];

  return v11;
}

@end