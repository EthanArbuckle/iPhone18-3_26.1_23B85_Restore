@interface BCMutableCollectionDetail
- (BCMutableCollectionDetail)initWithCloudData:(id)data;
- (BCMutableCollectionDetail)initWithCoder:(id)coder;
- (BCMutableCollectionDetail)initWithCollectionID:(id)d;
- (BCMutableCollectionDetail)initWithRecord:(id)record;
- (NSString)description;
- (id)configuredRecordFromAttributes;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BCMutableCollectionDetail

- (BCMutableCollectionDetail)initWithCollectionID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    v7 = sub_100002660();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001C41B0();
    }

    v5 = 0;
    goto LABEL_7;
  }

  v9.receiver = self;
  v9.super_class = BCMutableCollectionDetail;
  v5 = [(BCMutableCloudData *)&v9 init];
  if (v5)
  {
    v6 = [dCopy copy];
    self = *(v5 + 10);
    *(v5 + 10) = v6;
LABEL_7:
  }

  return v5;
}

- (BCMutableCollectionDetail)initWithCloudData:(id)data
{
  dataCopy = data;
  v19.receiver = self;
  v19.super_class = BCMutableCollectionDetail;
  v6 = [(BCMutableCloudData *)&v19 initWithCloudData:dataCopy];
  if (v6)
  {
    v7 = BUProtocolCast();
    v8 = v7;
    if (v7)
    {
      collectionID = [v7 collectionID];
      v10 = [collectionID copy];
      collectionID = v6->_collectionID;
      v6->_collectionID = v10;

      name = [v8 name];
      if (name)
      {
        name2 = [v8 name];
        v13 = [name2 copy];
      }

      else
      {
        v13 = &stru_10024C800;
      }

      objc_storeStrong(&v6->_name, v13);
      if (name)
      {
      }

      collectionDescription = [v8 collectionDescription];
      v16 = [collectionDescription copy];
      collectionDescription = v6->_collectionDescription;
      v6->_collectionDescription = v16;

      v6->_hidden = [v8 hidden];
      v6->_sortOrder = [v8 sortOrder];
      v6->_sortMode = [v8 sortMode];
    }

    else
    {
      v14 = sub_100002660();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1001C41E4();
      }

      v6 = 0;
    }
  }

  return v6;
}

- (BCMutableCollectionDetail)initWithRecord:(id)record
{
  recordCopy = record;
  if (!recordCopy)
  {
    v12 = sub_100002660();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1001C4218();
    }

    v5 = 0;
    goto LABEL_7;
  }

  v15.receiver = self;
  v15.super_class = BCMutableCollectionDetail;
  v5 = [(BCMutableCloudData *)&v15 initWithRecord:recordCopy];
  if (v5)
  {
    v6 = [BCCloudData localIdentifierFromRecord:recordCopy];
    collectionID = v5->_collectionID;
    v5->_collectionID = v6;

    v8 = [recordCopy objectForKey:@"name"];
    name = v5->_name;
    v5->_name = v8;

    v10 = [recordCopy objectForKey:@"collectionDescription"];
    collectionDescription = v5->_collectionDescription;
    v5->_collectionDescription = v10;

    self = [recordCopy objectForKey:@"hidden"];
    v5->_hidden = [(BCMutableCollectionDetail *)self BOOLValue];
    v12 = [recordCopy objectForKey:@"sortOrder"];
    v5->_sortOrder = [v12 intValue];
    v13 = [recordCopy objectForKey:@"sortMode"];
    v5->_sortMode = [v13 intValue];

LABEL_7:
  }

  return v5;
}

- (NSString)description
{
  collectionID = [(BCMutableCollectionDetail *)self collectionID];
  name = [(BCMutableCollectionDetail *)self name];
  collectionDescription = [(BCMutableCollectionDetail *)self collectionDescription];
  if ([(BCMutableCollectionDetail *)self hidden])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [NSString stringWithFormat:@"collectionID: %@, Name: %@, Description: %@ hidden:%@ sortOrder:%d sortMode:%d", collectionID, name, collectionDescription, v6, [(BCMutableCollectionDetail *)self sortOrder], [(BCMutableCollectionDetail *)self sortMode]];

  return v7;
}

- (id)configuredRecordFromAttributes
{
  v12.receiver = self;
  v12.super_class = BCMutableCollectionDetail;
  configuredRecordFromAttributes = [(BCMutableCloudData *)&v12 configuredRecordFromAttributes];
  if (configuredRecordFromAttributes)
  {
    name = [(BCMutableCollectionDetail *)self name];
    [configuredRecordFromAttributes setObject:name forKey:@"name"];

    collectionDescription = [(BCMutableCollectionDetail *)self collectionDescription];
    [configuredRecordFromAttributes setObject:collectionDescription forKey:@"collectionDescription"];

    v6 = [NSNumber numberWithBool:[(BCMutableCollectionDetail *)self hidden]];
    [configuredRecordFromAttributes setObject:v6 forKey:@"hidden"];

    v7 = [NSNumber numberWithInt:[(BCMutableCollectionDetail *)self sortOrder]];
    [configuredRecordFromAttributes setObject:v7 forKey:@"sortOrder"];

    v8 = [NSNumber numberWithInt:[(BCMutableCollectionDetail *)self sortMode]];
    [configuredRecordFromAttributes setObject:v8 forKey:@"sortMode"];
  }

  else
  {
    privacyDelegate = [(BCMutableCloudData *)self privacyDelegate];
    establishedSalt = [privacyDelegate establishedSalt];

    if (!establishedSalt)
    {
      goto LABEL_7;
    }

    v8 = sub_100002660();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1001C424C(self);
    }
  }

LABEL_7:

  return configuredRecordFromAttributes;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = BCMutableCollectionDetail;
  coderCopy = coder;
  [(BCMutableCloudData *)&v7 encodeWithCoder:coderCopy];
  v5 = [(BCMutableCollectionDetail *)self name:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"name"];

  collectionDescription = [(BCMutableCollectionDetail *)self collectionDescription];
  [coderCopy encodeObject:collectionDescription forKey:@"collectionDescription"];

  [coderCopy encodeBool:-[BCMutableCollectionDetail hidden](self forKey:{"hidden"), @"hidden"}];
  [coderCopy encodeInt:-[BCMutableCollectionDetail sortOrder](self forKey:{"sortOrder"), @"sortOrder"}];
  [coderCopy encodeInt:-[BCMutableCollectionDetail sortMode](self forKey:{"sortMode"), @"sortMode"}];
}

- (BCMutableCollectionDetail)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = BCMutableCollectionDetail;
  v5 = [(BCMutableCloudData *)&v14 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    localRecordID = [(BCMutableCloudData *)v5 localRecordID];
    collectionID = v6->_collectionID;
    v6->_collectionID = localRecordID;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v6->_name;
    v6->_name = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"collectionDescription"];
    collectionDescription = v6->_collectionDescription;
    v6->_collectionDescription = v11;

    v6->_hidden = [coderCopy decodeBoolForKey:@"hidden"];
    v6->_sortOrder = [coderCopy decodeIntForKey:@"sortOrder"];
    v6->_sortMode = [coderCopy decodeIntForKey:@"sortMode"];
  }

  return v6;
}

@end