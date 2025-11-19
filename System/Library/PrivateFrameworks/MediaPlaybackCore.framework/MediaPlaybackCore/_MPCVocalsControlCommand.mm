@interface _MPCVocalsControlCommand
- (id)activateVocalsControl:(BOOL)a3;
- (id)setVocalsLevel:(float)a3;
@end

@implementation _MPCVocalsControlCommand

- (id)setVocalsLevel:(float)a3
{
  v17[2] = *MEMORY[0x1E69E9840];
  v4 = roundf(a3 / 5.0) * 5.0;
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

    v10 = [(_MPCPlayerCommand *)self response];
    v11 = [MPCPlayerCommandRequest alloc];
    v12 = [v10 controller];
    v13 = [v10 request];
    v14 = [v13 label];
    v6 = [(MPCPlayerCommandRequest *)v11 initWithMediaRemoteCommand:142 options:v9 controller:v12 label:v14];
  }

  return v6;
}

- (id)activateVocalsControl:(BOOL)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13 = *MEMORY[0x1E69B1280];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  v14[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  v6 = [(_MPCPlayerCommand *)self response];
  v7 = [MPCPlayerCommandRequest alloc];
  v8 = [v6 controller];
  v9 = [v6 request];
  v10 = [v9 label];
  v11 = [(MPCPlayerCommandRequest *)v7 initWithMediaRemoteCommand:142 options:v5 controller:v8 label:v10];

  return v11;
}

@end