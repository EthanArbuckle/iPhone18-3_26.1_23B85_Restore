@interface ENGroup
+ (id)sortedGroupsFromGroups:(id)a3;
- (BOOL)isEqual:(id)a3;
- (ENGroup)initWithCoder:(id)a3;
- (ENGroup)initWithGroupInfo:(id)a3 groupID:(id)a4 cypher:(id)a5;
- (NSArray)participants;
- (NSData)sharedApplicationData;
- (NSSet)destinations;
- (id)accountIdentity;
- (id)description;
- (id)signAndConcealData:(id)a3 cypherIdentifier:(id *)a4 error:(id *)a5;
- (id)verifyAndRevealData:(id)a3 sendingDevice:(id)a4 cypherIdentifier:(id)a5 error:(id *)a6;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ENGroup

+ (id)sortedGroupsFromGroups:(id)a3
{
  v3 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_24A0565C4;
  v8[3] = &unk_278FC37F8;
  v8[4] = &v9;
  v4 = [v3 sortedArrayUsingComparator:v8];
  v5 = v4;
  if (*(v10 + 24) == 1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v9, 8);

  return v6;
}

- (ENGroup)initWithGroupInfo:(id)a3 groupID:(id)a4 cypher:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ENGroup;
  v12 = [(ENGroup *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_groupInfo, a3);
    objc_storeStrong(&v13->_groupID, a4);
    objc_storeStrong(&v13->_cypher, a5);
  }

  return v13;
}

- (ENGroup)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kENGroupGroupInfoKey"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kENGroupGroupIDKey"];

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ENGroup *)self groupInfo];
  [v4 encodeObject:v5 forKey:@"kENGroupGroupInfoKey"];

  v6 = [(ENGroup *)self groupID];
  [v4 encodeObject:v6 forKey:@"kENGroupGroupIDKey"];

  v7 = [(ENGroup *)self cypher];
  [v4 encodeObject:v7 forKey:@"kENGroupCypherKey"];
}

- (id)signAndConcealData:(id)a3 cypherIdentifier:(id *)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(ENGroup *)self cypher];
  v10 = [(ENGroup *)self accountIdentity];
  v11 = [v9 cypherData:v8 withAccountIdentity:v10 identifier:a4 error:a5];

  return v11;
}

- (id)verifyAndRevealData:(id)a3 sendingDevice:(id)a4 cypherIdentifier:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(ENGroup *)self cypher];
  v14 = [(ENGroup *)self accountIdentity];
  v15 = [v11 devicePublicKey];

  v16 = [v13 decypherData:v12 withAccountIdentity:v14 signingDevicePublicKey:v15 identifier:v10 error:a6];

  return v16;
}

- (NSSet)destinations
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(ENGroup *)self participants];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) aliases];
        [v3 unionSet:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(ENGroup *)self groupID];
  v6 = [(ENGroup *)self participants];
  v7 = [v3 stringWithFormat:@"<%@: %p groupID: %@ participants: %@>", v4, self, v5, v6];

  return v7;
}

- (id)accountIdentity
{
  v2 = [(ENGroup *)self groupInfo];
  v3 = [v2 accountIdentity];

  return v3;
}

- (NSArray)participants
{
  v2 = [(ENGroup *)self groupInfo];
  v3 = [v2 participants];

  return v3;
}

- (NSData)sharedApplicationData
{
  v2 = [(ENGroup *)self groupInfo];
  v3 = [v2 sharedApplicationData];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 groupID];
    v6 = [(ENGroup *)self groupID];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() hash];
  v4 = [(ENGroup *)self groupID];
  v5 = [v4 hash];

  return v5 ^ v3;
}

@end