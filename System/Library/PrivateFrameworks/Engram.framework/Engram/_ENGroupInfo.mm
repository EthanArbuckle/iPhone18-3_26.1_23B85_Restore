@interface _ENGroupInfo
- (_ENGroupInfo)initWithAccountIdentity:(id)identity paricipants:(id)paricipants sharedApplicationData:(id)data;
- (_ENGroupInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _ENGroupInfo

- (_ENGroupInfo)initWithAccountIdentity:(id)identity paricipants:(id)paricipants sharedApplicationData:(id)data
{
  identityCopy = identity;
  paricipantsCopy = paricipants;
  dataCopy = data;
  v15.receiver = self;
  v15.super_class = _ENGroupInfo;
  v12 = [(_ENGroupInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_accountIdentity, identity);
    objc_storeStrong(&v13->_participants, paricipants);
    objc_storeStrong(&v13->_sharedApplicationData, data);
  }

  return v13;
}

- (_ENGroupInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kENGroupInfoAccountIdentityKey"];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kENGroupInfoParticipantsKey"];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kENGroupInfoSharedApplicationDataKey"];

  v11 = [(_ENGroupInfo *)self initWithAccountIdentity:v5 paricipants:v9 sharedApplicationData:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accountIdentity = [(_ENGroupInfo *)self accountIdentity];
  [coderCopy encodeObject:accountIdentity forKey:@"kENGroupInfoAccountIdentityKey"];

  participants = [(_ENGroupInfo *)self participants];
  [coderCopy encodeObject:participants forKey:@"kENGroupInfoParticipantsKey"];

  sharedApplicationData = [(_ENGroupInfo *)self sharedApplicationData];
  [coderCopy encodeObject:sharedApplicationData forKey:@"kENGroupInfoSharedApplicationDataKey"];
}

@end