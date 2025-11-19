@interface NSString(InviteBodyPrettification)
- (id)stringByTrimmingNotesJunk;
@end

@implementation NSString(InviteBodyPrettification)

- (id)stringByTrimmingNotesJunk
{
  v1 = [a1 mutableCopy];
  v2 = [v1 rangeOfString:@"*~*~*~*~*~*~*~*~*~*"];
  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v1 deleteCharactersInRange:{0, v2 + v3}];
  }

  if (!stringByTrimmingNotesJunk_nonWhitespaceSet)
  {
    v4 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v5 = [v4 invertedSet];
    v6 = stringByTrimmingNotesJunk_nonWhitespaceSet;
    stringByTrimmingNotesJunk_nonWhitespaceSet = v5;
  }

  v7 = [v1 rangeOfCharacterFromSet:?];
  if (v7)
  {
    v8 = v7 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    [v1 deleteCharactersInRange:{0, v7}];
  }

  v9 = [v1 rangeOfCharacterFromSet:stringByTrimmingNotesJunk_nonWhitespaceSet options:4];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = v9 + v10;
    if (v9 + v10 < [v1 length])
    {
      [v1 deleteCharactersInRange:{v11, objc_msgSend(v1, "length") - v11}];
    }
  }

  return v1;
}

@end