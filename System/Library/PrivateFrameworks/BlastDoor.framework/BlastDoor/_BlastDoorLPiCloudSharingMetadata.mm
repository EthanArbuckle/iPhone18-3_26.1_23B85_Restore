@interface _BlastDoorLPiCloudSharingMetadata
- (BOOL)isEqual:(id)equal;
- (_BlastDoorLPiCloudSharingMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)shareURLForHandle:(id)handle;
- (id)tokenDataForHandle:(id)handle;
- (void)_enumerateAsynchronousFields:(id)fields;
- (void)encodeWithCoder:(id)coder;
- (void)setTokenData:(id)data handle:(id)handle url:(id)url;
@end

@implementation _BlastDoorLPiCloudSharingMetadata

- (_BlastDoorLPiCloudSharingMetadata)initWithCoder:(id)coder
{
  v23 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = _BlastDoorLPiCloudSharingMetadata;
  v5 = [(_BlastDoorLPiCloudSharingMetadata *)&v22 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"application");
    application = v5->_application;
    v5->_application = v6;

    v8 = decodeStringForKey(coderCopy, @"kind");
    kind = v5->_kind;
    v5->_kind = v8;

    v10 = decodeStringForKey(coderCopy, @"title");
    title = v5->_title;
    v5->_title = v10;

    v12 = [coderCopy _bd_lp_strictlyDecodeLPImageForKey:@"icon"];
    icon = v5->_icon;
    v5->_icon = v12;

    v14 = [coderCopy _bd_lp_strictlyDecodeLPImageForKey:@"thumbnail"];
    thumbnail = v5->_thumbnail;
    v5->_thumbnail = v14;

    v16 = objc_opt_class();
    v17 = [coderCopy _bd_lp_strictlyDecodeDictionaryOfObjectsWithKeysOfClass:v16 andObjectsOfClass:objc_opt_class() forKey:@"encodedTokens"];
    encodedTokens = v5->_encodedTokens;
    v5->_encodedTokens = v17;

    v19 = v5;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  application = self->_application;
  coderCopy = coder;
  [coderCopy _bd_lp_encodeObjectIfNotNil:application forKey:@"application"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_kind forKey:@"kind"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_title forKey:@"title"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_icon forKey:@"icon"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_thumbnail forKey:@"thumbnail"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_encodedTokens forKey:@"encodedTokens"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_BlastDoorLPiCloudSharingMetadata allocWithZone:zone];
  if (v4)
  {
    application = [(_BlastDoorLPiCloudSharingMetadata *)self application];
    [(_BlastDoorLPiCloudSharingMetadata *)v4 setApplication:application];

    kind = [(_BlastDoorLPiCloudSharingMetadata *)self kind];
    [(_BlastDoorLPiCloudSharingMetadata *)v4 setKind:kind];

    title = [(_BlastDoorLPiCloudSharingMetadata *)self title];
    [(_BlastDoorLPiCloudSharingMetadata *)v4 setTitle:title];

    icon = [(_BlastDoorLPiCloudSharingMetadata *)self icon];
    [(_BlastDoorLPiCloudSharingMetadata *)v4 setIcon:icon];

    thumbnail = [(_BlastDoorLPiCloudSharingMetadata *)self thumbnail];
    [(_BlastDoorLPiCloudSharingMetadata *)v4 setThumbnail:thumbnail];

    encodedTokens = [(_BlastDoorLPiCloudSharingMetadata *)self encodedTokens];
    [(_BlastDoorLPiCloudSharingMetadata *)v4 setEncodedTokens:encodedTokens];

    v11 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v16 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v15.receiver = self;
  v15.super_class = _BlastDoorLPiCloudSharingMetadata;
  if ([(_BlastDoorLPiCloudSharingMetadata *)&v15 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
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

- (void)_enumerateAsynchronousFields:(id)fields
{
  v3 = (fields + 16);
  v4 = *(fields + 2);
  fieldsCopy = fields;
  v4();
  (*v3)(fieldsCopy, @"thumbnail");
}

- (void)setTokenData:(id)data handle:(id)handle url:(id)url
{
  dataCopy = data;
  handleCopy = handle;
  urlCopy = url;
  if (!self->_encodedTokens)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    encodedTokens = self->_encodedTokens;
    self->_encodedTokens = dictionary;
  }

  v12 = [[_BlastDoorCKDeviceToDeviceShareInvitationToken alloc] initWithSharingInvitationData:dataCopy shareURL:urlCopy];
  [(NSDictionary *)self->_encodedTokens setObject:v12 forKeyedSubscript:handleCopy];
}

- (id)tokenDataForHandle:(id)handle
{
  v3 = [(NSDictionary *)self->_encodedTokens objectForKeyedSubscript:handle];
  sharingInvitationData = [v3 sharingInvitationData];

  return sharingInvitationData;
}

- (id)shareURLForHandle:(id)handle
{
  v3 = [(NSDictionary *)self->_encodedTokens objectForKeyedSubscript:handle];
  shareURL = [v3 shareURL];

  return shareURL;
}

@end