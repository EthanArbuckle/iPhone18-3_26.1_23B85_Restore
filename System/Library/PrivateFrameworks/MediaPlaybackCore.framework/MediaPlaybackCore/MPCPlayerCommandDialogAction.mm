@interface MPCPlayerCommandDialogAction
- (MPCPlayerCommandDialogAction)initWithMPAction:(id)action request:(id)request;
- (id)commandRequest;
- (id)description;
- (int64_t)type;
@end

@implementation MPCPlayerCommandDialogAction

- (id)commandRequest
{
  event = [(MPRemoteCommandHandlerDialogAction *)self->_action event];

  if (event)
  {
    v4 = [MPCPlayerCommandRequest alloc];
    event2 = [(MPRemoteCommandHandlerDialogAction *)self->_action event];
    mediaRemoteCommandType = [event2 mediaRemoteCommandType];
    event3 = [(MPRemoteCommandHandlerDialogAction *)self->_action event];
    mediaRemoteOptions = [event3 mediaRemoteOptions];
    v9 = MEMORY[0x1E696AEC0];
    controller = self->_controller;
    title = [(MPRemoteCommandHandlerDialogAction *)self->_action title];
    v12 = [v9 stringWithFormat:@"DialogAction:%@", title];
    v13 = [(MPCPlayerCommandRequest *)v4 initWithMediaRemoteCommand:mediaRemoteCommandType options:mediaRemoteOptions controller:controller label:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (int64_t)type
{
  result = [(MPRemoteCommandHandlerDialogAction *)self->_action type];
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  title = [(MPRemoteCommandHandlerDialogAction *)self->_action title];
  [(MPRemoteCommandHandlerDialogAction *)self->_action type];
  v6 = NSStringFromMPRemoteCommandHandlerDialogActionType();
  commandRequest = [(MPCPlayerCommandDialogAction *)self commandRequest];
  v8 = [v3 stringWithFormat:@"<%@: %p title=%@ type=%@ commandRequest=%@>", v4, self, title, v6, commandRequest];

  return v8;
}

- (MPCPlayerCommandDialogAction)initWithMPAction:(id)action request:(id)request
{
  actionCopy = action;
  requestCopy = request;
  v14.receiver = self;
  v14.super_class = MPCPlayerCommandDialogAction;
  v9 = [(MPCPlayerCommandDialogAction *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_action, action);
    controller = [requestCopy controller];
    controller = v10->_controller;
    v10->_controller = controller;
  }

  return v10;
}

@end