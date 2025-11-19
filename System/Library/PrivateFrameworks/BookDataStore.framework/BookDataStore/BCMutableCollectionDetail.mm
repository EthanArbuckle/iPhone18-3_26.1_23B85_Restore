@interface BCMutableCollectionDetail
- (BCMutableCollectionDetail)initWithCloudData:(id)a3;
- (BCMutableCollectionDetail)initWithCoder:(id)a3;
- (BCMutableCollectionDetail)initWithCollectionID:(id)a3;
- (BCMutableCollectionDetail)initWithRecord:(id)a3;
- (NSString)description;
- (id)configuredRecordFromAttributes;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BCMutableCollectionDetail

- (BCMutableCollectionDetail)initWithCollectionID:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v7 = BDSCloudKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E4704330();
    }

    v5 = 0;
    goto LABEL_7;
  }

  v9.receiver = self;
  v9.super_class = BCMutableCollectionDetail;
  v5 = [(BCMutableCloudData *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    self = *(v5 + 10);
    *(v5 + 10) = v6;
LABEL_7:
  }

  return v5;
}

- (BCMutableCollectionDetail)initWithCloudData:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = BCMutableCollectionDetail;
  v6 = [(BCMutableCloudData *)&v19 initWithCloudData:v5];
  if (v6)
  {
    v7 = BUProtocolCast();
    v8 = v7;
    if (v7)
    {
      v9 = [v7 collectionID];
      v10 = [v9 copy];
      collectionID = v6->_collectionID;
      v6->_collectionID = v10;

      v12 = [v8 name];
      if (v12)
      {
        v3 = [v8 name];
        v13 = [v3 copy];
      }

      else
      {
        v13 = &stru_1F5E67610;
      }

      objc_storeStrong(&v6->_name, v13);
      if (v12)
      {
      }

      v15 = [v8 collectionDescription];
      v16 = [v15 copy];
      collectionDescription = v6->_collectionDescription;
      v6->_collectionDescription = v16;

      v6->_hidden = [v8 hidden];
      v6->_sortOrder = [v8 sortOrder];
      v6->_sortMode = [v8 sortMode];
    }

    else
    {
      v14 = BDSCloudKitLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1E4704364();
      }

      v6 = 0;
    }
  }

  return v6;
}

- (BCMutableCollectionDetail)initWithRecord:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v12 = BDSCloudKitLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1E4704398();
    }

    v5 = 0;
    goto LABEL_7;
  }

  v15.receiver = self;
  v15.super_class = BCMutableCollectionDetail;
  v5 = [(BCMutableCloudData *)&v15 initWithRecord:v4];
  if (v5)
  {
    v6 = [BCCloudData localIdentifierFromRecord:v4];
    collectionID = v5->_collectionID;
    v5->_collectionID = v6;

    v8 = [v4 objectForKey:@"name"];
    name = v5->_name;
    v5->_name = v8;

    v10 = [v4 objectForKey:@"collectionDescription"];
    collectionDescription = v5->_collectionDescription;
    v5->_collectionDescription = v10;

    self = [v4 objectForKey:@"hidden"];
    v5->_hidden = [(BCMutableCollectionDetail *)self BOOLValue];
    v12 = [v4 objectForKey:@"sortOrder"];
    v5->_sortOrder = [v12 intValue];
    v13 = [v4 objectForKey:@"sortMode"];
    v5->_sortMode = [v13 intValue];

LABEL_7:
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(BCMutableCollectionDetail *)self collectionID];
  v5 = [(BCMutableCollectionDetail *)self name];
  v6 = [(BCMutableCollectionDetail *)self collectionDescription];
  if ([(BCMutableCollectionDetail *)self hidden])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [v3 stringWithFormat:@"collectionID: %@, Name: %@, Description: %@ hidden:%@ sortOrder:%d sortMode:%d", v4, v5, v6, v7, -[BCMutableCollectionDetail sortOrder](self, "sortOrder"), -[BCMutableCollectionDetail sortMode](self, "sortMode")];

  return v8;
}

- (id)configuredRecordFromAttributes
{
  v12.receiver = self;
  v12.super_class = BCMutableCollectionDetail;
  v3 = [(BCMutableCloudData *)&v12 configuredRecordFromAttributes];
  if (v3)
  {
    v4 = [(BCMutableCollectionDetail *)self name];
    [v3 setObject:v4 forKey:@"name"];

    v5 = [(BCMutableCollectionDetail *)self collectionDescription];
    [v3 setObject:v5 forKey:@"collectionDescription"];

    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BCMutableCollectionDetail hidden](self, "hidden")}];
    [v3 setObject:v6 forKey:@"hidden"];

    v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BCMutableCollectionDetail sortOrder](self, "sortOrder")}];
    [v3 setObject:v7 forKey:@"sortOrder"];

    v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BCMutableCollectionDetail sortMode](self, "sortMode")}];
    [v3 setObject:v8 forKey:@"sortMode"];
  }

  else
  {
    v9 = [(BCMutableCloudData *)self privacyDelegate];
    v10 = [v9 establishedSalt];

    if (!v10)
    {
      goto LABEL_7;
    }

    v8 = BDSCloudKitLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1E47043CC(self);
    }
  }

LABEL_7:

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = BCMutableCollectionDetail;
  v4 = a3;
  [(BCMutableCloudData *)&v7 encodeWithCoder:v4];
  v5 = [(BCMutableCollectionDetail *)self name:v7.receiver];
  [v4 encodeObject:v5 forKey:@"name"];

  v6 = [(BCMutableCollectionDetail *)self collectionDescription];
  [v4 encodeObject:v6 forKey:@"collectionDescription"];

  [v4 encodeBool:-[BCMutableCollectionDetail hidden](self forKey:{"hidden"), @"hidden"}];
  [v4 encodeInt:-[BCMutableCollectionDetail sortOrder](self forKey:{"sortOrder"), @"sortOrder"}];
  [v4 encodeInt:-[BCMutableCollectionDetail sortMode](self forKey:{"sortMode"), @"sortMode"}];
}

- (BCMutableCollectionDetail)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = BCMutableCollectionDetail;
  v5 = [(BCMutableCloudData *)&v14 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [(BCMutableCloudData *)v5 localRecordID];
    collectionID = v6->_collectionID;
    v6->_collectionID = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v6->_name;
    v6->_name = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"collectionDescription"];
    collectionDescription = v6->_collectionDescription;
    v6->_collectionDescription = v11;

    v6->_hidden = [v4 decodeBoolForKey:@"hidden"];
    v6->_sortOrder = [v4 decodeIntForKey:@"sortOrder"];
    v6->_sortMode = [v4 decodeIntForKey:@"sortMode"];
  }

  return v6;
}

@end