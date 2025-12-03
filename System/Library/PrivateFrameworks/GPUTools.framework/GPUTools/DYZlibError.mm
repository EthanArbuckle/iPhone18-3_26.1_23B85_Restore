@interface DYZlibError
- (id)localizedDescription;
@end

@implementation DYZlibError

- (id)localizedDescription
{
  userInfo = [(DYZlibError *)self userInfo];
  result = [userInfo objectForKey:*MEMORY[0x277CCA450]];
  if (!result)
  {
    code = [(DYZlibError *)self code];
    if (code < 0xFFFFFFFFFFFFFFFALL)
    {
      return @"unknown zlib error";
    }

    else
    {
      return off_279309EB8[code + 6];
    }
  }

  return result;
}

@end