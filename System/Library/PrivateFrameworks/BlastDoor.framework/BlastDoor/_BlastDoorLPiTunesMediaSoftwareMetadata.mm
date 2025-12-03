@interface _BlastDoorLPiTunesMediaSoftwareMetadata
- (BOOL)isEqual:(id)equal;
- (_BlastDoorLPiTunesMediaSoftwareMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_enumerateAsynchronousFields:(id)fields;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BlastDoorLPiTunesMediaSoftwareMetadata

- (_BlastDoorLPiTunesMediaSoftwareMetadata)initWithCoder:(id)coder
{
  v30 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = _BlastDoorLPiTunesMediaSoftwareMetadata;
  v5 = [(_BlastDoorLPiTunesMediaSoftwareMetadata *)&v29 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"storeFrontIdentifier");
    v7 = *&v5->_isMessagesOnlyApp;
    *&v5->_isMessagesOnlyApp = v6;

    v8 = decodeStringForKey(coderCopy, @"storeIdentifier");
    storeFrontIdentifier = v5->_storeFrontIdentifier;
    v5->_storeFrontIdentifier = v8;

    v10 = decodeStringForKey(coderCopy, @"name");
    storeIdentifier = v5->_storeIdentifier;
    v5->_storeIdentifier = v10;

    v12 = decodeStringForKey(coderCopy, @"subtitle");
    name = v5->_name;
    v5->_name = v12;

    v14 = decodeStringForKey(coderCopy, @"genre");
    subtitle = v5->_subtitle;
    v5->_subtitle = v14;

    v16 = decodeStringForKey(coderCopy, @"platform");
    genre = v5->_genre;
    v5->_genre = v16;

    v18 = [coderCopy _bd_lp_strictlyDecodeLPImageForKey:@"icon"];
    platform = v5->_platform;
    v5->_platform = v18;

    v20 = [coderCopy _bd_lp_strictlyDecodeArrayOfLPImagesForKey:@"screenshots"];
    icon = v5->_icon;
    v5->_icon = v20;

    v22 = [coderCopy _bd_lp_strictlyDecodeLPVideoForKey:@"previewVideo"];
    screenshots = v5->_screenshots;
    v5->_screenshots = v22;

    *(&v5->super.__dummyPropertyForObservation + 1) = [coderCopy decodeBoolForKey:@"isMessagesOnlyApp"];
    v24 = [coderCopy _bd_lp_strictlyDecodeLPImageForKey:@"messagesAppIcon"];
    previewVideo = v5->_previewVideo;
    v5->_previewVideo = v24;

    v26 = v5;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = *&self->_isMessagesOnlyApp;
  coderCopy = coder;
  [coderCopy _bd_lp_encodeObjectIfNotNil:v4 forKey:@"storeFrontIdentifier"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_storeFrontIdentifier forKey:@"storeIdentifier"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_storeIdentifier forKey:@"name"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_name forKey:@"subtitle"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_subtitle forKey:@"genre"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_genre forKey:@"platform"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_platform forKey:@"icon"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_icon forKey:@"screenshots"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_screenshots forKey:@"previewVideo"];
  [coderCopy encodeBool:*(&self->super.__dummyPropertyForObservation + 1) forKey:@"isMessagesOnlyApp"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_previewVideo forKey:@"messagesAppIcon"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_BlastDoorLPiTunesMediaSoftwareMetadata allocWithZone:zone];
  if (v4)
  {
    storeFrontIdentifier = [(_BlastDoorLPiTunesMediaSoftwareMetadata *)self storeFrontIdentifier];
    [(_BlastDoorLPiTunesMediaSoftwareMetadata *)v4 setStoreFrontIdentifier:storeFrontIdentifier];

    storeIdentifier = [(_BlastDoorLPiTunesMediaSoftwareMetadata *)self storeIdentifier];
    [(_BlastDoorLPiTunesMediaSoftwareMetadata *)v4 setStoreIdentifier:storeIdentifier];

    name = [(_BlastDoorLPiTunesMediaSoftwareMetadata *)self name];
    [(_BlastDoorLPiTunesMediaSoftwareMetadata *)v4 setName:name];

    subtitle = [(_BlastDoorLPiTunesMediaSoftwareMetadata *)self subtitle];
    [(_BlastDoorLPiTunesMediaSoftwareMetadata *)v4 setSubtitle:subtitle];

    genre = [(_BlastDoorLPiTunesMediaSoftwareMetadata *)self genre];
    [(_BlastDoorLPiTunesMediaSoftwareMetadata *)v4 setGenre:genre];

    platform = [(_BlastDoorLPiTunesMediaSoftwareMetadata *)self platform];
    [(_BlastDoorLPiTunesMediaSoftwareMetadata *)v4 setPlatform:platform];

    icon = [(_BlastDoorLPiTunesMediaSoftwareMetadata *)self icon];
    [(_BlastDoorLPiTunesMediaSoftwareMetadata *)v4 setIcon:icon];

    screenshots = [(_BlastDoorLPiTunesMediaSoftwareMetadata *)self screenshots];
    [(_BlastDoorLPiTunesMediaSoftwareMetadata *)v4 setScreenshots:screenshots];

    previewVideo = [(_BlastDoorLPiTunesMediaSoftwareMetadata *)self previewVideo];
    [(_BlastDoorLPiTunesMediaSoftwareMetadata *)v4 setPreviewVideo:previewVideo];

    [(_BlastDoorLPiTunesMediaSoftwareMetadata *)v4 setIsMessagesOnlyApp:[(_BlastDoorLPiTunesMediaSoftwareMetadata *)self isMessagesOnlyApp]];
    messagesAppIcon = [(_BlastDoorLPiTunesMediaSoftwareMetadata *)self messagesAppIcon];
    [(_BlastDoorLPiTunesMediaSoftwareMetadata *)v4 setMessagesAppIcon:messagesAppIcon];

    v15 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v20 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v19.receiver = self;
  v19.super_class = _BlastDoorLPiTunesMediaSoftwareMetadata;
  if ([(_BlastDoorLPiTunesMediaSoftwareMetadata *)&v19 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      v7 = v6[2];
      if (v7 | *&self->_isMessagesOnlyApp && ![v7 isEqual:?])
      {
        goto LABEL_26;
      }

      v8 = v6[3];
      if (v8 | self->_storeFrontIdentifier && ![v8 isEqual:?])
      {
        goto LABEL_26;
      }

      if (((v9 = v6[4], !(v9 | self->_storeIdentifier)) || [v9 isEqual:?]) && ((v10 = v6[5], !(v10 | self->_name)) || objc_msgSend(v10, "isEqual:")) && ((v11 = v6[6], !(v11 | self->_subtitle)) || objc_msgSend(v11, "isEqual:")) && ((v12 = v6[7], !(v12 | self->_genre)) || objc_msgSend(v12, "isEqual:")) && ((v13 = v6[8], !(v13 | self->_platform)) || objc_msgSend(v13, "isEqual:")) && ((v14 = v6[9], !(v14 | self->_icon)) || objc_msgSend(v14, "isEqual:")) && ((v15 = v6[10], !(v15 | self->_screenshots)) || objc_msgSend(v15, "isEqual:")) && *(v6 + 9) == *(&self->super.__dummyPropertyForObservation + 1))
      {
        v16 = v6[11];
        if (v16 | self->_previewVideo)
        {
          v5 = [v16 isEqual:?];
        }

        else
        {
          v5 = 1;
        }
      }

      else
      {
LABEL_26:
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)_enumerateAsynchronousFields:(id)fields
{
  v3 = (fields + 16);
  v4 = *(fields + 2);
  fieldsCopy = fields;
  v4();
  (*v3)(fieldsCopy, @"screenshots");
  (*v3)(fieldsCopy, @"messagesAppIcon");
  (*v3)(fieldsCopy, @"previewVideo");
}

@end