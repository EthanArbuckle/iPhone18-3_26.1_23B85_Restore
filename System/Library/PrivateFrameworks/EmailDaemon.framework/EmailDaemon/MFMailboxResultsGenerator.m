@interface MFMailboxResultsGenerator
+ (id)resultsDictionaryFromMailboxUid:(id)a3 forKeys:(id)a4;
- (id)_displayName:(id)a3;
- (id)_level:(id)a3;
- (id)_pushState:(id)a3;
- (id)_relativePath:(id)a3;
- (id)_type:(id)a3;
- (id)blockForKey:(id)a3;
@end

@implementation MFMailboxResultsGenerator

+ (id)resultsDictionaryFromMailboxUid:(id)a3 forKeys:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [(_MFResultsGenerator *)[MFMailboxResultsGenerator alloc] initWithKeys:v6];
  [(MFMailboxResultsGenerator *)v7 setMailboxUid:v5];
  v8 = [(_MFResultsGenerator *)v7 results];

  return v8;
}

- (id)blockForKey:(id)a3
{
  v3 = a3;
  if (qword_1001858E0 != -1)
  {
    sub_1000D465C();
  }

  v4 = [qword_1001858D8 objectForKeyedSubscript:v3];

  return v4;
}

- (id)_displayName:(id)a3
{
  v3 = [(MFMailboxUid *)self->_mailboxUid displayNameUsingSpecialNames];

  return v3;
}

- (id)_relativePath:(id)a3
{
  v3 = [(MFMailboxUid *)self->_mailboxUid accountRelativePath];

  return v3;
}

- (id)_type:(id)a3
{
  v3 = [NSNumber numberWithInteger:[(MFMailboxUid *)self->_mailboxUid mailboxType]];

  return v3;
}

- (id)_level:(id)a3
{
  v3 = [NSNumber numberWithInt:[(MFMailboxUid *)self->_mailboxUid level]];

  return v3;
}

- (id)_pushState:(id)a3
{
  v3 = [NSNumber numberWithBool:[(NSSet *)self->_pushedMailboxUids containsObject:self->_mailboxUid]];

  return v3;
}

@end