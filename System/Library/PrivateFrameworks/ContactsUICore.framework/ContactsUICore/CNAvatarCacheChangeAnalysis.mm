@interface CNAvatarCacheChangeAnalysis
- (CNAvatarCacheChangeAnalysis)initWithCurrentChangeHistoryToken:(id)token identifiersOfAffectedContacts:(id)contacts;
- (id)description;
@end

@implementation CNAvatarCacheChangeAnalysis

- (CNAvatarCacheChangeAnalysis)initWithCurrentChangeHistoryToken:(id)token identifiersOfAffectedContacts:(id)contacts
{
  tokenCopy = token;
  contactsCopy = contacts;
  v15.receiver = self;
  v15.super_class = CNAvatarCacheChangeAnalysis;
  v8 = [(CNAvatarCacheChangeAnalysis *)&v15 init];
  if (v8)
  {
    v9 = [tokenCopy copy];
    currentChangeHistoryToken = v8->_currentChangeHistoryToken;
    v8->_currentChangeHistoryToken = v9;

    v11 = [contactsCopy copy];
    identifiersOfAffectedContacts = v8->_identifiersOfAffectedContacts;
    v8->_identifiersOfAffectedContacts = v11;

    v13 = v8;
  }

  return v8;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"identifiers" object:self->_identifiersOfAffectedContacts];
  v5 = [v3 appendName:@"token" object:self->_currentChangeHistoryToken];
  build = [v3 build];

  return build;
}

@end