@interface _MPCSleepTimerCommand
- (id)reset;
- (id)startForChapterEnd;
- (id)startForItemEnd;
- (id)startWithTime:(double)time;
@end

@implementation _MPCSleepTimerCommand

- (id)reset
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12 = *MEMORY[0x1E69B1240];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:MPSleepTimerStopModeToMediaRemoteSleepTimerStopMode()];
  v13[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  response = [(_MPCPlayerCommand *)self response];
  v6 = [MPCPlayerCommandRequest alloc];
  controller = [response controller];
  request = [response request];
  label = [request label];
  v10 = [(MPCPlayerCommandRequest *)v6 initWithMediaRemoteCommand:124 options:v4 controller:controller label:label];

  return v10;
}

- (id)startForChapterEnd
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12 = *MEMORY[0x1E69B1240];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:MPSleepTimerStopModeToMediaRemoteSleepTimerStopMode()];
  v13[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  response = [(_MPCPlayerCommand *)self response];
  v6 = [MPCPlayerCommandRequest alloc];
  controller = [response controller];
  request = [response request];
  label = [request label];
  v10 = [(MPCPlayerCommandRequest *)v6 initWithMediaRemoteCommand:124 options:v4 controller:controller label:label];

  return v10;
}

- (id)startForItemEnd
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12 = *MEMORY[0x1E69B1240];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:MPSleepTimerStopModeToMediaRemoteSleepTimerStopMode()];
  v13[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  response = [(_MPCPlayerCommand *)self response];
  v6 = [MPCPlayerCommandRequest alloc];
  controller = [response controller];
  request = [response request];
  label = [request label];
  v10 = [(MPCPlayerCommandRequest *)v6 initWithMediaRemoteCommand:124 options:v4 controller:controller label:label];

  return v10;
}

- (id)startWithTime:(double)time
{
  v15[2] = *MEMORY[0x1E69E9840];
  v14[0] = *MEMORY[0x1E69B1248];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:time];
  v15[0] = v4;
  v14[1] = *MEMORY[0x1E69B1240];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:MPSleepTimerStopModeToMediaRemoteSleepTimerStopMode()];
  v15[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];

  response = [(_MPCPlayerCommand *)self response];
  v8 = [MPCPlayerCommandRequest alloc];
  controller = [response controller];
  request = [response request];
  label = [request label];
  v12 = [(MPCPlayerCommandRequest *)v8 initWithMediaRemoteCommand:124 options:v6 controller:controller label:label];

  return v12;
}

@end