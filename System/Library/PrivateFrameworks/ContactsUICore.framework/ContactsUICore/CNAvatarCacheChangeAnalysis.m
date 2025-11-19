@interface CNAvatarCacheChangeAnalysis
- (CNAvatarCacheChangeAnalysis)initWithCurrentChangeHistoryToken:(id)a3 identifiersOfAffectedContacts:(id)a4;
- (id)description;
@end

@implementation CNAvatarCacheChangeAnalysis

- (CNAvatarCacheChangeAnalysis)initWithCurrentChangeHistoryToken:(id)a3 identifiersOfAffectedContacts:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = CNAvatarCacheChangeAnalysis;
  v8 = [(CNAvatarCacheChangeAnalysis *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    currentChangeHistoryToken = v8->_currentChangeHistoryToken;
    v8->_currentChangeHistoryToken = v9;

    v11 = [v7 copy];
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
  v6 = [v3 build];

  return v6;
}

@end