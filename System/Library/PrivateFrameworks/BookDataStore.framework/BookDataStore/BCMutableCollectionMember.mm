@interface BCMutableCollectionMember
- (BCMutableCollectionMember)initWithCloudData:(id)data;
- (BCMutableCollectionMember)initWithCoder:(id)coder;
- (BCMutableCollectionMember)initWithCollectionMemberID:(id)d;
- (BCMutableCollectionMember)initWithRecord:(id)record;
- (NSString)description;
- (id)configuredRecordFromAttributes;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BCMutableCollectionMember

- (BCMutableCollectionMember)initWithCollectionMemberID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    v7 = BDSCloudKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E4708CC4();
    }

    v5 = 0;
    goto LABEL_7;
  }

  v9.receiver = self;
  v9.super_class = BCMutableCollectionMember;
  v5 = [(BCMutableCloudData *)&v9 init];
  if (v5)
  {
    v6 = [dCopy copy];
    self = *(v5 + 9);
    *(v5 + 9) = v6;
LABEL_7:
  }

  return v5;
}

- (BCMutableCollectionMember)initWithCloudData:(id)data
{
  dataCopy = data;
  v13.receiver = self;
  v13.super_class = BCMutableCollectionMember;
  v5 = [(BCMutableCloudData *)&v13 initWithCloudData:dataCopy];
  if (v5)
  {
    v6 = BUProtocolCast();
    v7 = v6;
    if (v6)
    {
      collectionMemberID = [v6 collectionMemberID];
      v9 = [collectionMemberID copy];
      collectionMemberID = v5->_collectionMemberID;
      v5->_collectionMemberID = v9;

      v5->_sortOrder = [v7 sortOrder];
      if (v5->_collectionMemberID)
      {
LABEL_9:

        goto LABEL_10;
      }

      v11 = BDSCloudKitLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1E4708CF8();
      }
    }

    else
    {
      v11 = BDSCloudKitLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1E4708D2C();
      }
    }

    v5 = 0;
    goto LABEL_9;
  }

LABEL_10:

  return v5;
}

- (BCMutableCollectionMember)initWithRecord:(id)record
{
  recordCopy = record;
  if (!recordCopy)
  {
    v9 = BDSCloudKitLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1E4708D94();
    }

    v5 = 0;
    goto LABEL_11;
  }

  v11.receiver = self;
  v11.super_class = BCMutableCollectionMember;
  v5 = [(BCMutableCloudData *)&v11 initWithRecord:recordCopy];
  if (v5)
  {
    v6 = [BCCloudData localIdentifierFromRecord:recordCopy];
    collectionMemberID = v5->_collectionMemberID;
    v5->_collectionMemberID = v6;

    if (!v5->_collectionMemberID)
    {
      v8 = BDSCloudKitLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1E4708D60();
      }
    }

    self = [recordCopy objectForKey:@"sortOrder"];
    v5->_sortOrder = [(BCMutableCollectionMember *)self intValue];
LABEL_11:
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  collectionMemberID = [(BCMutableCollectionMember *)self collectionMemberID];
  sortOrder = [(BCMutableCollectionMember *)self sortOrder];
  modificationDate = [(BCMutableCloudData *)self modificationDate];
  v9 = [v3 stringWithFormat:@"<%@: %p> collectionMemberID: %@, sortOrder:%d modificationDate:%@", v5, self, collectionMemberID, sortOrder, modificationDate];

  return v9;
}

- (id)configuredRecordFromAttributes
{
  v6.receiver = self;
  v6.super_class = BCMutableCollectionMember;
  configuredRecordFromAttributes = [(BCMutableCloudData *)&v6 configuredRecordFromAttributes];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BCMutableCollectionMember sortOrder](self, "sortOrder")}];
  [configuredRecordFromAttributes setObject:v4 forKey:@"sortOrder"];

  return configuredRecordFromAttributes;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = BCMutableCollectionMember;
  coderCopy = coder;
  [(BCMutableCloudData *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt:-[BCMutableCollectionMember sortOrder](self forKey:{"sortOrder", v5.receiver, v5.super_class), @"sortOrder"}];
}

- (BCMutableCollectionMember)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = BCMutableCollectionMember;
  v5 = [(BCMutableCloudData *)&v10 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    localRecordID = [(BCMutableCloudData *)v5 localRecordID];
    collectionMemberID = v6->_collectionMemberID;
    v6->_collectionMemberID = localRecordID;

    v6->_sortOrder = [coderCopy decodeIntForKey:@"sortOrder"];
  }

  return v6;
}

@end