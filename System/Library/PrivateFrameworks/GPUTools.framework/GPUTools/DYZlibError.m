@interface DYZlibError
- (id)localizedDescription;
@end

@implementation DYZlibError

- (id)localizedDescription
{
  v3 = [(DYZlibError *)self userInfo];
  result = [v3 objectForKey:*MEMORY[0x277CCA450]];
  if (!result)
  {
    v5 = [(DYZlibError *)self code];
    if (v5 < 0xFFFFFFFFFFFFFFFALL)
    {
      return @"unknown zlib error";
    }

    else
    {
      return off_279309EB8[v5 + 6];
    }
  }

  return result;
}

@end