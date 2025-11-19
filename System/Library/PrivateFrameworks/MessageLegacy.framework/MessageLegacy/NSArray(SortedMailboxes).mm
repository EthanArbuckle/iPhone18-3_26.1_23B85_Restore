@interface NSArray(SortedMailboxes)
- (uint64_t)mf_indexOfMailboxDictionaryWithName:()SortedMailboxes;
@end

@implementation NSArray(SortedMailboxes)

- (uint64_t)mf_indexOfMailboxDictionaryWithName:()SortedMailboxes
{
  v5 = [a1 count];
  v8.location = 0;
  v8.length = v5;
  v6 = CFArrayBSearchValues(a1, v8, a3, _compareNameWithMailboxDictionary, a3);
  result = 0x7FFFFFFFFFFFFFFFLL;
  if ((v6 & 0x8000000000000000) == 0 && v6 < v5)
  {
    if ([objc_msgSend(objc_msgSend(a1 objectAtIndex:{v6), "objectForKey:", @"MailboxName", "isEqual:", a3}])
    {
      return v6;
    }

    else
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return result;
}

@end