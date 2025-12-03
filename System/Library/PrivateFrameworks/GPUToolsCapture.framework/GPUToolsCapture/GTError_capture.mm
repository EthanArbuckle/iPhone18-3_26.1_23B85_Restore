@interface GTError_capture
- (id)dy_errorSignature;
- (id)localizedDescription;
@end

@implementation GTError_capture

- (id)dy_errorSignature
{
  result = _StringForError([(GTError_capture *)self code]);
  if (!result)
  {
    v4.receiver = self;
    v4.super_class = GTError_capture;
    return [(GTError_capture *)&v4 dy_errorSignature];
  }

  return result;
}

- (id)localizedDescription
{
  userInfo = [(GTError_capture *)self userInfo];
  if (!userInfo || (result = [userInfo objectForKey:NSLocalizedDescriptionKey]) == 0)
  {
    code = [(GTError_capture *)self code];
    if (![-[GTError_capture domain](self "domain")] || (result = _StringForError(code)) == 0)
    {
      v6.receiver = self;
      v6.super_class = GTError_capture;
      return [(GTError_capture *)&v6 localizedDescription];
    }
  }

  return result;
}

@end