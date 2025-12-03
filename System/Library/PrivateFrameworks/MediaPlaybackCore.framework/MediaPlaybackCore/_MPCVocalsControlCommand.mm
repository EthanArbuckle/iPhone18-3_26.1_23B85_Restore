@interface _MPCVocalsControlCommand
- (id)activateVocalsControl:(BOOL)control;
- (id)setVocalsLevel:(float)level;
@end

@implementation _MPCVocalsControlCommand

- (id)setVocalsLevel:(float)level
{
  v17[2] = *MEMORY[0x1E69E9840];
  v4 = roundf(level / 5.0) * 5.0;
  [(_MPCVocalsControlCommand *)self level];
  if (v4 == *&v5 && [(_MPCVocalsControlCommand *)self isActive])
  {
    v6 = 0;
  }

  else
  {
    v7 = *MEMORY[0x1E69B1288];
    v16[0] = *MEMORY[0x1E69B1280];
    v16[1] = v7;
    v17[0] = MEMORY[0x1E695E118];
    *&v5 = v4;
    v8 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
    v17[1] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];

    response = [(_MPCPlayerCommand *)self response];
    v11 = [MPCPlayerCommandRequest alloc];
    controller = [response controller];
    request = [response request];
    label = [request label];
    v6 = [(MPCPlayerCommandRequest *)v11 initWithMediaRemoteCommand:142 options:v9 controller:controller label:label];
  }

  return v6;
}

- (id)activateVocalsControl:(BOOL)control
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13 = *MEMORY[0x1E69B1280];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:control];
  v14[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  response = [(_MPCPlayerCommand *)self response];
  v7 = [MPCPlayerCommandRequest alloc];
  controller = [response controller];
  request = [response request];
  label = [request label];
  v11 = [(MPCPlayerCommandRequest *)v7 initWithMediaRemoteCommand:142 options:v5 controller:controller label:label];

  return v11;
}

@end