@interface ML3AlbumGroupingIdentifier
- (BOOL)isEqual:(id)a3;
- (ML3AlbumGroupingIdentifier)initWithAlbumArtistPersistentID:(int64_t)a3 groupingKey:(id)a4 feedURL:(id)a5 seasonNumber:(int64_t)a6 compilation:(BOOL)a7;
- (id)description;
- (unint64_t)hash;
@end

@implementation ML3AlbumGroupingIdentifier

- (unint64_t)hash
{
  v3 = [(NSString *)self->_feedURL length];
  v4 = [(NSData *)self->_groupingKey hash];
  if (v3)
  {
    v5 = [(NSString *)self->_feedURL hash];
  }

  else
  {
    v5 = self->_seasonNumber ^ self->_albumArtistPersistentID;
  }

  return v5 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([(NSString *)self->_feedURL length])
    {
      v5 = v4[4];
      v6 = self->_feedURL;
      v7 = v5;
      v8 = v7;
      if (v6 == v7)
      {

        goto LABEL_12;
      }

      v9 = [(NSString *)v6 isEqual:v7];

      if (v9)
      {
LABEL_12:
        v14 = v4[3];
        v11 = self->_groupingKey;
        v12 = v14;
        if (v11 != v12)
        {
LABEL_13:
          v13 = [(NSData *)v11 isEqual:v12];
LABEL_15:

          goto LABEL_16;
        }

LABEL_14:
        v13 = 1;
        goto LABEL_15;
      }
    }

    else if (self->_albumArtistPersistentID == v4[2] && self->_seasonNumber == v4[5])
    {
      v10 = v4[3];
      v11 = self->_groupingKey;
      v12 = v10;
      if (v11 != v12)
      {
        goto LABEL_13;
      }

      goto LABEL_14;
    }
  }

  v13 = 0;
LABEL_16:

  return v13;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = ML3AlbumGroupingIdentifier;
  v3 = [(ML3AlbumGroupingIdentifier *)&v8 description];
  v4 = v3;
  if (self->_compilation)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = [v3 stringByAppendingFormat:@", albumArtistPersistentID=%lld, groupingKey=%@, feedURL=%@, seasonNumber=%ld, compilation=%@", *&self->_albumArtistPersistentID, self->_feedURL, self->_seasonNumber, v5];

  return v6;
}

- (ML3AlbumGroupingIdentifier)initWithAlbumArtistPersistentID:(int64_t)a3 groupingKey:(id)a4 feedURL:(id)a5 seasonNumber:(int64_t)a6 compilation:(BOOL)a7
{
  v13 = a4;
  v14 = a5;
  v21.receiver = self;
  v21.super_class = ML3AlbumGroupingIdentifier;
  v15 = [(ML3AlbumGroupingIdentifier *)&v21 init];
  v16 = v15;
  if (v15)
  {
    v15->_albumArtistPersistentID = a3;
    objc_storeStrong(&v15->_groupingKey, a4);
    objc_storeStrong(&v16->_feedURL, a5);
    v16->_seasonNumber = a6;
    v16->_compilation = a7;
    v17 = [MEMORY[0x277CBEB28] data];
    [v17 appendBytes:"<<" length:2];
    [v17 appendBytes:&v16->_albumArtistPersistentID length:8];
    [v17 appendBytes:"<<" length:2];
    [v17 appendData:v16->_groupingKey];
    [v17 appendBytes:"<<" length:2];
    [v17 appendBytes:-[NSString UTF8String](v16->_feedURL length:{"UTF8String"), strlen(-[NSString UTF8String](v16->_feedURL, "UTF8String"))}];
    [v17 appendBytes:"<<" length:2];
    [v17 appendBytes:&v16->_seasonNumber length:8];
    v18 = [v17 copy];
    keyValue = v16->_keyValue;
    v16->_keyValue = v18;
  }

  return v16;
}

@end