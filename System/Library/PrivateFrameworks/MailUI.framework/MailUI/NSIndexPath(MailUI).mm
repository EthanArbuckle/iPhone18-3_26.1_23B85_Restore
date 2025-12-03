@interface NSIndexPath(MailUI)
- (uint64_t)mui_nextIndexPath;
- (unint64_t)mui_distanceTo:()MailUI;
@end

@implementation NSIndexPath(MailUI)

- (unint64_t)mui_distanceTo:()MailUI
{
  v4 = a3;
  selfCopy = self;
  section = [selfCopy section];
  section2 = [v4 section];
  if (section >= section2)
  {
    if (section <= section2)
    {
      item = [v4 item];
      v8 = item - [selfCopy item];
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
  item = [self item];
  section = [self section];

  return [v2 indexPathForItem:item + 1 inSection:section];
}

@end