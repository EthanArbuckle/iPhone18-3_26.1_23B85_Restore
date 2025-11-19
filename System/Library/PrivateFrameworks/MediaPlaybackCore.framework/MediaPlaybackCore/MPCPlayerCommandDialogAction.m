@interface MPCPlayerCommandDialogAction
- (MPCPlayerCommandDialogAction)initWithMPAction:(id)a3 request:(id)a4;
- (id)commandRequest;
- (id)description;
- (int64_t)type;
@end

@implementation MPCPlayerCommandDialogAction

- (id)commandRequest
{
  v3 = [(MPRemoteCommandHandlerDialogAction *)self->_action event];

  if (v3)
  {
    v4 = [MPCPlayerCommandRequest alloc];
    v5 = [(MPRemoteCommandHandlerDialogAction *)self->_action event];
    v6 = [v5 mediaRemoteCommandType];
    v7 = [(MPRemoteCommandHandlerDialogAction *)self->_action event];
    v8 = [v7 mediaRemoteOptions];
    v9 = MEMORY[0x1E696AEC0];
    controller = self->_controller;
    v11 = [(MPRemoteCommandHandlerDialogAction *)self->_action title];
    v12 = [v9 stringWithFormat:@"DialogAction:%@", v11];
    v13 = [(MPCPlayerCommandRequest *)v4 initWithMediaRemoteCommand:v6 options:v8 controller:controller label:v12];
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
  v5 = [(MPRemoteCommandHandlerDialogAction *)self->_action title];
  [(MPRemoteCommandHandlerDialogAction *)self->_action type];
  v6 = NSStringFromMPRemoteCommandHandlerDialogActionType();
  v7 = [(MPCPlayerCommandDialogAction *)self commandRequest];
  v8 = [v3 stringWithFormat:@"<%@: %p title=%@ type=%@ commandRequest=%@>", v4, self, v5, v6, v7];

  return v8;
}

- (MPCPlayerCommandDialogAction)initWithMPAction:(id)a3 request:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = MPCPlayerCommandDialogAction;
  v9 = [(MPCPlayerCommandDialogAction *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_action, a3);
    v11 = [v8 controller];
    controller = v10->_controller;
    v10->_controller = v11;
  }

  return v10;
}

@end