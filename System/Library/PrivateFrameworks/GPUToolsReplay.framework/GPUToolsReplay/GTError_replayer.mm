@interface GTError_replayer
- (id)dy_errorSignature;
- (id)localizedDescription;
@end

@implementation GTError_replayer

- (id)dy_errorSignature
{
  result = _StringForError([(GTError_replayer *)self code]);
  if (!result)
  {
    v4.receiver = self;
    v4.super_class = GTError_replayer;
    return [(NSError *)&v4 dy_errorSignature];
  }

  return result;
}

- (id)localizedDescription
{
  userInfo = [(GTError_replayer *)self userInfo];
  if (!userInfo || (result = [userInfo objectForKey:*MEMORY[0x277CCA450]]) == 0)
  {
    code = [(GTError_replayer *)self code];
    if (![-[GTError_replayer domain](self "domain")] || (result = _StringForError(code)) == 0)
    {
      v6.receiver = self;
      v6.super_class = GTError_replayer;
      return [(GTError_replayer *)&v6 localizedDescription];
    }
  }

  return result;
}

@end