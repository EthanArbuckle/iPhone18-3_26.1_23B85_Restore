@interface MFMailboxResultsGenerator
+ (id)resultsDictionaryFromMailboxUid:(id)uid forKeys:(id)keys;
- (id)_displayName:(id)name;
- (id)_level:(id)_level;
- (id)_pushState:(id)state;
- (id)_relativePath:(id)path;
- (id)_type:(id)_type;
- (id)blockForKey:(id)key;
@end

@implementation MFMailboxResultsGenerator

+ (id)resultsDictionaryFromMailboxUid:(id)uid forKeys:(id)keys
{
  uidCopy = uid;
  keysCopy = keys;
  v7 = [(_MFResultsGenerator *)[MFMailboxResultsGenerator alloc] initWithKeys:keysCopy];
  [(MFMailboxResultsGenerator *)v7 setMailboxUid:uidCopy];
  results = [(_MFResultsGenerator *)v7 results];

  return results;
}

- (id)blockForKey:(id)key
{
  keyCopy = key;
  if (qword_1001858E0 != -1)
  {
    sub_1000D465C();
  }

  v4 = [qword_1001858D8 objectForKeyedSubscript:keyCopy];

  return v4;
}

- (id)_displayName:(id)name
{
  displayNameUsingSpecialNames = [(MFMailboxUid *)self->_mailboxUid displayNameUsingSpecialNames];

  return displayNameUsingSpecialNames;
}

- (id)_relativePath:(id)path
{
  accountRelativePath = [(MFMailboxUid *)self->_mailboxUid accountRelativePath];

  return accountRelativePath;
}

- (id)_type:(id)_type
{
  v3 = [NSNumber numberWithInteger:[(MFMailboxUid *)self->_mailboxUid mailboxType]];

  return v3;
}

- (id)_level:(id)_level
{
  v3 = [NSNumber numberWithInt:[(MFMailboxUid *)self->_mailboxUid level]];

  return v3;
}

- (id)_pushState:(id)state
{
  v3 = [NSNumber numberWithBool:[(NSSet *)self->_pushedMailboxUids containsObject:self->_mailboxUid]];

  return v3;
}

@end