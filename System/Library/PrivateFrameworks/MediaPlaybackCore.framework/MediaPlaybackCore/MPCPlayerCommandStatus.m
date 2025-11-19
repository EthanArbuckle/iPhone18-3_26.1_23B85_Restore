@interface MPCPlayerCommandStatus
- (MPCPlayerCommandStatus)initWithMPStatus:(id)a3 request:(id)a4;
- (id)description;
- (int64_t)type;
@end

@implementation MPCPlayerCommandStatus

- (int64_t)type
{
  v2 = [(MPRemoteCommandStatus *)self->_status type];
  v3 = 2;
  if (v2 == 999)
  {
    v4 = 999;
  }

  else
  {
    v4 = 0;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  v5 = 3;
  if (v2 != 2)
  {
    v5 = 0;
  }

  if (v2 == 1)
  {
    v5 = 1;
  }

  if (v2 <= 2)
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
  v3 = [(MPRemoteCommandStatus *)self->_status mediaRemoteType];
  [v3 statusCode];
  v4 = MRMediaRemoteCopyCommandHandlerStatusDescription();

  v5 = [(MPCPlayerCommandStatus *)self type];
  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  v8 = v7;
  if (v5 > 1)
  {
    switch(v5)
    {
      case 2:
        v9 = [(MPCPlayerCommandStatus *)self error];
        [v6 stringWithFormat:@"<%@: %p status=%@ error=%@>", v8, self, v4, v9];
        break;
      case 3:
        v9 = [(MPCPlayerCommandStatus *)self dialog];
        [v6 stringWithFormat:@"<%@: %p status=%@ dialog=%@>", v8, self, v4, v9];
        break;
      case 999:
        v9 = [(MPCPlayerCommandStatus *)self customDataType];
        v10 = [(MPCPlayerCommandStatus *)self customData];
        v11 = [v6 stringWithFormat:@"<%@: %p status=%@ customData=%@/%lu bytes", v8, self, v4, v9, objc_msgSend(v10, "length")];

LABEL_12:
        goto LABEL_16;
      default:
        goto LABEL_14;
    }
    v11 = ;
    goto LABEL_12;
  }

  if (v5)
  {
    if (v5 != 1)
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

- (MPCPlayerCommandStatus)initWithMPStatus:(id)a3 request:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = MPCPlayerCommandStatus;
  v9 = [(MPCPlayerCommandStatus *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, a4);
    objc_storeStrong(&v10->_status, a3);
    if ([(MPCPlayerCommandStatus *)v10 type]== 3)
    {
      v11 = [MPCPlayerCommandDialog alloc];
      v12 = [(MPRemoteCommandStatus *)v10->_status dialog];
      v13 = [(MPCPlayerCommandDialog *)v11 initWithMPDialog:v12 request:v8];
      dialog = v10->_dialog;
      v10->_dialog = v13;
    }
  }

  return v10;
}

@end