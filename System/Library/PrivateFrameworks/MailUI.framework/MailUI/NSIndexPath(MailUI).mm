@interface NSIndexPath(MailUI)
- (uint64_t)mui_nextIndexPath;
- (unint64_t)mui_distanceTo:()MailUI;
@end

@implementation NSIndexPath(MailUI)

- (unint64_t)mui_distanceTo:()MailUI
{
  v4 = a3;
  v5 = a1;
  v6 = [v5 section];
  v7 = [v4 section];
  if (v6 >= v7)
  {
    if (v6 <= v7)
    {
      v9 = [v4 item];
      v8 = v9 - [v5 item];
    }

    else
    {
      v8 = 0x8000000000000000;
    }
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v8;
}

- (uint64_t)mui_nextIndexPath
{
  v2 = MEMORY[0x277CCAA70];
  v3 = [a1 item];
  v4 = [a1 section];

  return [v2 indexPathForItem:v3 + 1 inSection:v4];
}

@end