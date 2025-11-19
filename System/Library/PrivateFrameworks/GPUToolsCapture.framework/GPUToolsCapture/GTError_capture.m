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
  v3 = [(GTError_capture *)self userInfo];
  if (!v3 || (result = [v3 objectForKey:NSLocalizedDescriptionKey]) == 0)
  {
    v5 = [(GTError_capture *)self code];
    if (![-[GTError_capture domain](self "domain")] || (result = _StringForError(v5)) == 0)
    {
      v6.receiver = self;
      v6.super_class = GTError_capture;
      return [(GTError_capture *)&v6 localizedDescription];
    }
  }

  return result;
}

@end