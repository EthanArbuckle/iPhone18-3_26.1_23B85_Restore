@interface ENGroup
+ (id)sortedGroupsFromGroups:(id)groups;
- (BOOL)isEqual:(id)equal;
- (ENGroup)initWithCoder:(id)coder;
- (ENGroup)initWithGroupInfo:(id)info groupID:(id)d cypher:(id)cypher;
- (NSArray)participants;
- (NSData)sharedApplicationData;
- (NSSet)destinations;
- (id)accountIdentity;
- (id)description;
- (id)signAndConcealData:(id)data cypherIdentifier:(id *)identifier error:(id *)error;
- (id)verifyAndRevealData:(id)data sendingDevice:(id)device cypherIdentifier:(id)identifier error:(id *)error;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ENGroup

+ (id)sortedGroupsFromGroups:(id)groups
{
  groupsCopy = groups;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_24A0565C4;
  v8[3] = &unk_278FC37F8;
  v8[4] = &v9;
  v4 = [groupsCopy sortedArrayUsingComparator:v8];
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

- (ENGroup)initWithGroupInfo:(id)info groupID:(id)d cypher:(id)cypher
{
  infoCopy = info;
  dCopy = d;
  cypherCopy = cypher;
  v15.receiver = self;
  v15.super_class = ENGroup;
  v12 = [(ENGroup *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_groupInfo, info);
    objc_storeStrong(&v13->_groupID, d);
    objc_storeStrong(&v13->_cypher, cypher);
  }

  return v13;
}

- (ENGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kENGroupGroupInfoKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kENGroupGroupIDKey"];

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  groupInfo = [(ENGroup *)self groupInfo];
  [coderCopy encodeObject:groupInfo forKey:@"kENGroupGroupInfoKey"];

  groupID = [(ENGroup *)self groupID];
  [coderCopy encodeObject:groupID forKey:@"kENGroupGroupIDKey"];

  cypher = [(ENGroup *)self cypher];
  [coderCopy encodeObject:cypher forKey:@"kENGroupCypherKey"];
}

- (id)signAndConcealData:(id)data cypherIdentifier:(id *)identifier error:(id *)error
{
  dataCopy = data;
  cypher = [(ENGroup *)self cypher];
  accountIdentity = [(ENGroup *)self accountIdentity];
  v11 = [cypher cypherData:dataCopy withAccountIdentity:accountIdentity identifier:identifier error:error];

  return v11;
}

- (id)verifyAndRevealData:(id)data sendingDevice:(id)device cypherIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  deviceCopy = device;
  dataCopy = data;
  cypher = [(ENGroup *)self cypher];
  accountIdentity = [(ENGroup *)self accountIdentity];
  devicePublicKey = [deviceCopy devicePublicKey];

  v16 = [cypher decypherData:dataCopy withAccountIdentity:accountIdentity signingDevicePublicKey:devicePublicKey identifier:identifierCopy error:error];

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
  participants = [(ENGroup *)self participants];
  v5 = [participants countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(participants);
        }

        aliases = [*(*(&v12 + 1) + 8 * i) aliases];
        [v3 unionSet:aliases];
      }

      v6 = [participants countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  groupID = [(ENGroup *)self groupID];
  participants = [(ENGroup *)self participants];
  v7 = [v3 stringWithFormat:@"<%@: %p groupID: %@ participants: %@>", v4, self, groupID, participants];

  return v7;
}

- (id)accountIdentity
{
  groupInfo = [(ENGroup *)self groupInfo];
  accountIdentity = [groupInfo accountIdentity];

  return accountIdentity;
}

- (NSArray)participants
{
  groupInfo = [(ENGroup *)self groupInfo];
  participants = [groupInfo participants];

  return participants;
}

- (NSData)sharedApplicationData
{
  groupInfo = [(ENGroup *)self groupInfo];
  sharedApplicationData = [groupInfo sharedApplicationData];

  return sharedApplicationData;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    groupID = [equalCopy groupID];
    groupID2 = [(ENGroup *)self groupID];
    v7 = [groupID isEqual:groupID2];
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
  groupID = [(ENGroup *)self groupID];
  v5 = [groupID hash];

  return v5 ^ v3;
}

@end