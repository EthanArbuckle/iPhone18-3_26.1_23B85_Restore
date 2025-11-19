@interface _ENGroupInfo
- (_ENGroupInfo)initWithAccountIdentity:(id)a3 paricipants:(id)a4 sharedApplicationData:(id)a5;
- (_ENGroupInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _ENGroupInfo

- (_ENGroupInfo)initWithAccountIdentity:(id)a3 paricipants:(id)a4 sharedApplicationData:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = _ENGroupInfo;
  v12 = [(_ENGroupInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_accountIdentity, a3);
    objc_storeStrong(&v13->_participants, a4);
    objc_storeStrong(&v13->_sharedApplicationData, a5);
  }

  return v13;
}

- (_ENGroupInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kENGroupInfoAccountIdentityKey"];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"kENGroupInfoParticipantsKey"];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kENGroupInfoSharedApplicationDataKey"];

  v11 = [(_ENGroupInfo *)self initWithAccountIdentity:v5 paricipants:v9 sharedApplicationData:v10];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_ENGroupInfo *)self accountIdentity];
  [v4 encodeObject:v5 forKey:@"kENGroupInfoAccountIdentityKey"];

  v6 = [(_ENGroupInfo *)self participants];
  [v4 encodeObject:v6 forKey:@"kENGroupInfoParticipantsKey"];

  v7 = [(_ENGroupInfo *)self sharedApplicationData];
  [v4 encodeObject:v7 forKey:@"kENGroupInfoSharedApplicationDataKey"];
}

@end