@interface DYError
- (id)dy_errorSignature;
- (id)localizedDescription;
@end

@implementation DYError

- (id)localizedDescription
{
  v3 = [(DYError *)self userInfo];
  if (!v3 || (result = [v3 objectForKey:*MEMORY[0x277CCA450]]) == 0)
  {
    v5 = [(DYError *)self code];
    if (![-[DYError domain](self "domain")] || (result = _StringForError(v5)) == 0)
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