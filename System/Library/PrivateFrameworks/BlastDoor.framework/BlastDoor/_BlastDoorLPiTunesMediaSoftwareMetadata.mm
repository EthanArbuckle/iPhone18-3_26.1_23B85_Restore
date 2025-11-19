@interface _BlastDoorLPiTunesMediaSoftwareMetadata
- (BOOL)isEqual:(id)a3;
- (_BlastDoorLPiTunesMediaSoftwareMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_enumerateAsynchronousFields:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _BlastDoorLPiTunesMediaSoftwareMetadata

- (_BlastDoorLPiTunesMediaSoftwareMetadata)initWithCoder:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v29.receiver = self;
  v29.super_class = _BlastDoorLPiTunesMediaSoftwareMetadata;
  v5 = [(_BlastDoorLPiTunesMediaSoftwareMetadata *)&v29 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"storeFrontIdentifier");
    v7 = *&v5->_isMessagesOnlyApp;
    *&v5->_isMessagesOnlyApp = v6;

    v8 = decodeStringForKey(v4, @"storeIdentifier");
    storeFrontIdentifier = v5->_storeFrontIdentifier;
    v5->_storeFrontIdentifier = v8;

    v10 = decodeStringForKey(v4, @"name");
    storeIdentifier = v5->_storeIdentifier;
    v5->_storeIdentifier = v10;

    v12 = decodeStringForKey(v4, @"subtitle");
    name = v5->_name;
    v5->_name = v12;

    v14 = decodeStringForKey(v4, @"genre");
    subtitle = v5->_subtitle;
    v5->_subtitle = v14;

    v16 = decodeStringForKey(v4, @"platform");
    genre = v5->_genre;
    v5->_genre = v16;

    v18 = [v4 _bd_lp_strictlyDecodeLPImageForKey:@"icon"];
    platform = v5->_platform;
    v5->_platform = v18;

    v20 = [v4 _bd_lp_strictlyDecodeArrayOfLPImagesForKey:@"screenshots"];
    icon = v5->_icon;
    v5->_icon = v20;

    v22 = [v4 _bd_lp_strictlyDecodeLPVideoForKey:@"previewVideo"];
    screenshots = v5->_screenshots;
    v5->_screenshots = v22;

    *(&v5->super.__dummyPropertyForObservation + 1) = [v4 decodeBoolForKey:@"isMessagesOnlyApp"];
    v24 = [v4 _bd_lp_strictlyDecodeLPImageForKey:@"messagesAppIcon"];
    previewVideo = v5->_previewVideo;
    v5->_previewVideo = v24;

    v26 = v5;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = *&self->_isMessagesOnlyApp;
  v5 = a3;
  [v5 _bd_lp_encodeObjectIfNotNil:v4 forKey:@"storeFrontIdentifier"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_storeFrontIdentifier forKey:@"storeIdentifier"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_storeIdentifier forKey:@"name"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_name forKey:@"subtitle"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_subtitle forKey:@"genre"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_genre forKey:@"platform"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_platform forKey:@"icon"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_icon forKey:@"screenshots"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_screenshots forKey:@"previewVideo"];
  [v5 encodeBool:*(&self->super.__dummyPropertyForObservation + 1) forKey:@"isMessagesOnlyApp"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_previewVideo forKey:@"messagesAppIcon"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_BlastDoorLPiTunesMediaSoftwareMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(_BlastDoorLPiTunesMediaSoftwareMetadata *)self storeFrontIdentifier];
    [(_BlastDoorLPiTunesMediaSoftwareMetadata *)v4 setStoreFrontIdentifier:v5];

    v6 = [(_BlastDoorLPiTunesMediaSoftwareMetadata *)self storeIdentifier];
    [(_BlastDoorLPiTunesMediaSoftwareMetadata *)v4 setStoreIdentifier:v6];

    v7 = [(_BlastDoorLPiTunesMediaSoftwareMetadata *)self name];
    [(_BlastDoorLPiTunesMediaSoftwareMetadata *)v4 setName:v7];

    v8 = [(_BlastDoorLPiTunesMediaSoftwareMetadata *)self subtitle];
    [(_BlastDoorLPiTunesMediaSoftwareMetadata *)v4 setSubtitle:v8];

    v9 = [(_BlastDoorLPiTunesMediaSoftwareMetadata *)self genre];
    [(_BlastDoorLPiTunesMediaSoftwareMetadata *)v4 setGenre:v9];

    v10 = [(_BlastDoorLPiTunesMediaSoftwareMetadata *)self platform];
    [(_BlastDoorLPiTunesMediaSoftwareMetadata *)v4 setPlatform:v10];

    v11 = [(_BlastDoorLPiTunesMediaSoftwareMetadata *)self icon];
    [(_BlastDoorLPiTunesMediaSoftwareMetadata *)v4 setIcon:v11];

    v12 = [(_BlastDoorLPiTunesMediaSoftwareMetadata *)self screenshots];
    [(_BlastDoorLPiTunesMediaSoftwareMetadata *)v4 setScreenshots:v12];

    v13 = [(_BlastDoorLPiTunesMediaSoftwareMetadata *)self previewVideo];
    [(_BlastDoorLPiTunesMediaSoftwareMetadata *)v4 setPreviewVideo:v13];

    [(_BlastDoorLPiTunesMediaSoftwareMetadata *)v4 setIsMessagesOnlyApp:[(_BlastDoorLPiTunesMediaSoftwareMetadata *)self isMessagesOnlyApp]];
    v14 = [(_BlastDoorLPiTunesMediaSoftwareMetadata *)self messagesAppIcon];
    [(_BlastDoorLPiTunesMediaSoftwareMetadata *)v4 setMessagesAppIcon:v14];

    v15 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19.receiver = self;
  v19.super_class = _BlastDoorLPiTunesMediaSoftwareMetadata;
  if ([(_BlastDoorLPiTunesMediaSoftwareMetadata *)&v19 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
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

- (void)_enumerateAsynchronousFields:(id)a3
{
  v3 = (a3 + 16);
  v4 = *(a3 + 2);
  v5 = a3;
  v4();
  (*v3)(v5, @"screenshots");
  (*v3)(v5, @"messagesAppIcon");
  (*v3)(v5, @"previewVideo");
}

@end