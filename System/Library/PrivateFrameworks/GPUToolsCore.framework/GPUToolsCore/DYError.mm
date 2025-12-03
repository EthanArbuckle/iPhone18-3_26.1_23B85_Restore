@interface DYError
- (id)dy_errorSignature;
- (id)localizedDescription;
@end

@implementation DYError

- (id)localizedDescription
{
  userInfo = [(DYError *)self userInfo];
  if (!userInfo || (result = [userInfo objectForKey:*MEMORY[0x277CCA450]]) == 0)
  {
    code = [(DYError *)self code];
    if (![-[DYError domain](self "domain")] || (result = _StringForError(code)) == 0)
    {
      v6.receiver = self;
      v6.super_class = DYError;
      return [(DYError *)&v6 localizedDescription];
    }
  }

  return result;
}

- (id)dy_errorSignature
{
  result = _StringForError([(DYError *)self code]);
  if (!result)
  {
    v4.receiver = self;
    v4.super_class = DYError;
    return [(NSError *)&v4 dy_errorSignature];
  }

  return result;
}

@end