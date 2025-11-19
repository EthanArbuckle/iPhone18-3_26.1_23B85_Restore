@interface BCMutableCollectionMember
- (BCMutableCollectionMember)initWithCloudData:(id)a3;
- (BCMutableCollectionMember)initWithCoder:(id)a3;
- (BCMutableCollectionMember)initWithCollectionMemberID:(id)a3;
- (BCMutableCollectionMember)initWithRecord:(id)a3;
- (NSString)description;
- (id)configuredRecordFromAttributes;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BCMutableCollectionMember

- (BCMutableCollectionMember)initWithCollectionMemberID:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v7 = sub_100002660();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001C43F4();
    }

    v5 = 0;
    goto LABEL_7;
  }

  v9.receiver = self;
  v9.super_class = BCMutableCollectionMember;
  v5 = [(BCMutableCloudData *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    self = *(v5 + 9);
    *(v5 + 9) = v6;
LABEL_7:
  }

  return v5;
}

- (BCMutableCollectionMember)initWithCloudData:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = BCMutableCollectionMember;
  v5 = [(BCMutableCloudData *)&v13 initWithCloudData:v4];
  if (v5)
  {
    v6 = BUProtocolCast();
    v7 = v6;
    if (v6)
    {
      v8 = [v6 collectionMemberID];
      v9 = [v8 copy];
      collectionMemberID = v5->_collectionMemberID;
      v5->_collectionMemberID = v9;

      v5->_sortOrder = [v7 sortOrder];
      if (v5->_collectionMemberID)
      {
LABEL_9:

        goto LABEL_10;
      }

      v11 = sub_100002660();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1001C4428();
      }
    }

    else
    {
      v11 = sub_100002660();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1001C445C();
      }
    }

    v5 = 0;
    goto LABEL_9;
  }

LABEL_10:

  return v5;
}

- (BCMutableCollectionMember)initWithRecord:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v9 = sub_100002660();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1001C44C4();
    }

    v5 = 0;
    goto LABEL_11;
  }

  v11.receiver = self;
  v11.super_class = BCMutableCollectionMember;
  v5 = [(BCMutableCloudData *)&v11 initWithRecord:v4];
  if (v5)
  {
    v6 = [BCCloudData localIdentifierFromRecord:v4];
    collectionMemberID = v5->_collectionMemberID;
    v5->_collectionMemberID = v6;

    if (!v5->_collectionMemberID)
    {
      v8 = sub_100002660();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1001C4490();
      }
    }

    self = [v4 objectForKey:@"sortOrder"];
    v5->_sortOrder = [(BCMutableCollectionMember *)self intValue];
LABEL_11:
  }

  return v5;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(BCMutableCollectionMember *)self collectionMemberID];
  v6 = [(BCMutableCollectionMember *)self sortOrder];
  v7 = [(BCMutableCloudData *)self modificationDate];
  v8 = [NSString stringWithFormat:@"<%@: %p> collectionMemberID: %@, sortOrder:%d modificationDate:%@", v4, self, v5, v6, v7];

  return v8;
}

- (id)configuredRecordFromAttributes
{
  v6.receiver = self;
  v6.super_class = BCMutableCollectionMember;
  v3 = [(BCMutableCloudData *)&v6 configuredRecordFromAttributes];
  v4 = [NSNumber numberWithInt:[(BCMutableCollectionMember *)self sortOrder]];
  [v3 setObject:v4 forKey:@"sortOrder"];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = BCMutableCollectionMember;
  v4 = a3;
  [(BCMutableCloudData *)&v5 encodeWithCoder:v4];
  [v4 encodeInt:-[BCMutableCollectionMember sortOrder](self forKey:{"sortOrder", v5.receiver, v5.super_class), @"sortOrder"}];
}

- (BCMutableCollectionMember)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = BCMutableCollectionMember;
  v5 = [(BCMutableCloudData *)&v10 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [(BCMutableCloudData *)v5 localRecordID];
    collectionMemberID = v6->_collectionMemberID;
    v6->_collectionMemberID = v7;

    v6->_sortOrder = [v4 decodeIntForKey:@"sortOrder"];
  }

  return v6;
}

@end