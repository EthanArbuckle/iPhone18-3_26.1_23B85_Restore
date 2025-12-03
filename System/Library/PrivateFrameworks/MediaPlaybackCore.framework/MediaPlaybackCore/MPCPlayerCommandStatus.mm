@interface MPCPlayerCommandStatus
- (MPCPlayerCommandStatus)initWithMPStatus:(id)status request:(id)request;
- (id)description;
- (int64_t)type;
@end

@implementation MPCPlayerCommandStatus

- (int64_t)type
{
  type = [(MPRemoteCommandStatus *)self->_status type];
  v3 = 2;
  if (type == 999)
  {
    v4 = 999;
  }

  else
  {
    v4 = 0;
  }

  if (type != 3)
  {
    v3 = v4;
  }

  v5 = 3;
  if (type != 2)
  {
    v5 = 0;
  }

  if (type == 1)
  {
    v5 = 1;
  }

  if (type <= 2)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

- (id)description
{
  mediaRemoteType = [(MPRemoteCommandStatus *)self->_status mediaRemoteType];
  [mediaRemoteType statusCode];
  v4 = MRMediaRemoteCopyCommandHandlerStatusDescription();

  type = [(MPCPlayerCommandStatus *)self type];
  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  v8 = v7;
  if (type > 1)
  {
    switch(type)
    {
      case 2:
        error = [(MPCPlayerCommandStatus *)self error];
        [v6 stringWithFormat:@"<%@: %p status=%@ error=%@>", v8, self, v4, error];
        break;
      case 3:
        error = [(MPCPlayerCommandStatus *)self dialog];
        [v6 stringWithFormat:@"<%@: %p status=%@ dialog=%@>", v8, self, v4, error];
        break;
      case 999:
        error = [(MPCPlayerCommandStatus *)self customDataType];
        customData = [(MPCPlayerCommandStatus *)self customData];
        v11 = [v6 stringWithFormat:@"<%@: %p status=%@ customData=%@/%lu bytes", v8, self, v4, error, objc_msgSend(customData, "length")];

LABEL_12:
        goto LABEL_16;
      default:
        goto LABEL_14;
    }
    v11 = ;
    goto LABEL_12;
  }

  if (type)
  {
    if (type != 1)
    {
LABEL_14:
      [v6 stringWithFormat:@"<%@: %p status=%@ unknown/type=%ld>", v7, self, v4, -[MPCPlayerCommandStatus type](self, "type")];
      goto LABEL_15;
    }

    [v6 stringWithFormat:@"<%@: %p status=%@>", v7, self, v4, v13];
  }

  else
  {
    [v6 stringWithFormat:@"<%@: %p status=%@ unknown>", v7, self, v4, v13];
  }

  v11 = LABEL_15:;
LABEL_16:

  return v11;
}

- (MPCPlayerCommandStatus)initWithMPStatus:(id)status request:(id)request
{
  statusCopy = status;
  requestCopy = request;
  v16.receiver = self;
  v16.super_class = MPCPlayerCommandStatus;
  v9 = [(MPCPlayerCommandStatus *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, request);
    objc_storeStrong(&v10->_status, status);
    if ([(MPCPlayerCommandStatus *)v10 type]== 3)
    {
      v11 = [MPCPlayerCommandDialog alloc];
      dialog = [(MPRemoteCommandStatus *)v10->_status dialog];
      v13 = [(MPCPlayerCommandDialog *)v11 initWithMPDialog:dialog request:requestCopy];
      dialog = v10->_dialog;
      v10->_dialog = v13;
    }
  }

  return v10;
}

@end