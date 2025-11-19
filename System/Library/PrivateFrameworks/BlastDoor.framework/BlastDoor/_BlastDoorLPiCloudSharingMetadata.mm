@interface _BlastDoorLPiCloudSharingMetadata
- (BOOL)isEqual:(id)a3;
- (_BlastDoorLPiCloudSharingMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)shareURLForHandle:(id)a3;
- (id)tokenDataForHandle:(id)a3;
- (void)_enumerateAsynchronousFields:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setTokenData:(id)a3 handle:(id)a4 url:(id)a5;
@end

@implementation _BlastDoorLPiCloudSharingMetadata

- (_BlastDoorLPiCloudSharingMetadata)initWithCoder:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = _BlastDoorLPiCloudSharingMetadata;
  v5 = [(_BlastDoorLPiCloudSharingMetadata *)&v22 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"application");
    application = v5->_application;
    v5->_application = v6;

    v8 = decodeStringForKey(v4, @"kind");
    kind = v5->_kind;
    v5->_kind = v8;

    v10 = decodeStringForKey(v4, @"title");
    title = v5->_title;
    v5->_title = v10;

    v12 = [v4 _bd_lp_strictlyDecodeLPImageForKey:@"icon"];
    icon = v5->_icon;
    v5->_icon = v12;

    v14 = [v4 _bd_lp_strictlyDecodeLPImageForKey:@"thumbnail"];
    thumbnail = v5->_thumbnail;
    v5->_thumbnail = v14;

    v16 = objc_opt_class();
    v17 = [v4 _bd_lp_strictlyDecodeDictionaryOfObjectsWithKeysOfClass:v16 andObjectsOfClass:objc_opt_class() forKey:@"encodedTokens"];
    encodedTokens = v5->_encodedTokens;
    v5->_encodedTokens = v17;

    v19 = v5;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  application = self->_application;
  v5 = a3;
  [v5 _bd_lp_encodeObjectIfNotNil:application forKey:@"application"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_kind forKey:@"kind"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_title forKey:@"title"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_icon forKey:@"icon"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_thumbnail forKey:@"thumbnail"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_encodedTokens forKey:@"encodedTokens"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_BlastDoorLPiCloudSharingMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(_BlastDoorLPiCloudSharingMetadata *)self application];
    [(_BlastDoorLPiCloudSharingMetadata *)v4 setApplication:v5];

    v6 = [(_BlastDoorLPiCloudSharingMetadata *)self kind];
    [(_BlastDoorLPiCloudSharingMetadata *)v4 setKind:v6];

    v7 = [(_BlastDoorLPiCloudSharingMetadata *)self title];
    [(_BlastDoorLPiCloudSharingMetadata *)v4 setTitle:v7];

    v8 = [(_BlastDoorLPiCloudSharingMetadata *)self icon];
    [(_BlastDoorLPiCloudSharingMetadata *)v4 setIcon:v8];

    v9 = [(_BlastDoorLPiCloudSharingMetadata *)self thumbnail];
    [(_BlastDoorLPiCloudSharingMetadata *)v4 setThumbnail:v9];

    v10 = [(_BlastDoorLPiCloudSharingMetadata *)self encodedTokens];
    [(_BlastDoorLPiCloudSharingMetadata *)v4 setEncodedTokens:v10];

    v11 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _BlastDoorLPiCloudSharingMetadata;
  if ([(_BlastDoorLPiCloudSharingMetadata *)&v15 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      v7 = v6[3];
      if (v7 | self->_application && ![v7 isEqual:?] || (v8 = v6[4], v8 | self->_kind) && !objc_msgSend(v8, "isEqual:") || (v9 = v6[5], v9 | self->_title) && !objc_msgSend(v9, "isEqual:") || (v10 = v6[6], v10 | self->_icon) && !objc_msgSend(v10, "isEqual:") || (v11 = v6[7], v11 | self->_thumbnail) && !objc_msgSend(v11, "isEqual:"))
      {
        v5 = 0;
      }

      else
      {
        v12 = v6[8];
        if (v12 | self->_encodedTokens)
        {
          v5 = [v12 isEqual:?];
        }

        else
        {
          v5 = 1;
        }
      }
    }

    else
    {
      v5 = 0;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)_enumerateAsynchronousFields:(id)a3
{
  v3 = (a3 + 16);
  v4 = *(a3 + 2);
  v5 = a3;
  v4();
  (*v3)(v5, @"thumbnail");
}

- (void)setTokenData:(id)a3 handle:(id)a4 url:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  if (!self->_encodedTokens)
  {
    v10 = [MEMORY[0x277CBEB38] dictionary];
    encodedTokens = self->_encodedTokens;
    self->_encodedTokens = v10;
  }

  v12 = [[_BlastDoorCKDeviceToDeviceShareInvitationToken alloc] initWithSharingInvitationData:v13 shareURL:v9];
  [(NSDictionary *)self->_encodedTokens setObject:v12 forKeyedSubscript:v8];
}

- (id)tokenDataForHandle:(id)a3
{
  v3 = [(NSDictionary *)self->_encodedTokens objectForKeyedSubscript:a3];
  v4 = [v3 sharingInvitationData];

  return v4;
}

- (id)shareURLForHandle:(id)a3
{
  v3 = [(NSDictionary *)self->_encodedTokens objectForKeyedSubscript:a3];
  v4 = [v3 shareURL];

  return v4;
}

@end