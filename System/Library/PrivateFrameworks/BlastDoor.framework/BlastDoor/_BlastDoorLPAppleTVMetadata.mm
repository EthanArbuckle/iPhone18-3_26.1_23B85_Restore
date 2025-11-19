@interface _BlastDoorLPAppleTVMetadata
- (BOOL)isEqual:(id)a3;
- (_BlastDoorLPAppleTVMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _BlastDoorLPAppleTVMetadata

- (_BlastDoorLPAppleTVMetadata)initWithCoder:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _BlastDoorLPAppleTVMetadata;
  v5 = [(_BlastDoorLPAppleTVMetadata *)&v15 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"title");
    title = v5->_title;
    v5->_title = v6;

    v8 = decodeStringForKey(v4, @"subtitle");
    subtitle = v5->_subtitle;
    v5->_subtitle = v8;

    v10 = [v4 _bd_lp_strictlyDecodeLPImageForKey:@"artwork"];
    artwork = v5->_artwork;
    v5->_artwork = v10;

    v12 = v5;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  title = self->_title;
  v5 = a3;
  [v5 _bd_lp_encodeObjectIfNotNil:title forKey:@"title"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_subtitle forKey:@"subtitle"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_artwork forKey:@"artwork"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_BlastDoorLPAppleTVMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(_BlastDoorLPAppleTVMetadata *)self title];
    [(_BlastDoorLPAppleTVMetadata *)v4 setTitle:v5];

    v6 = [(_BlastDoorLPAppleTVMetadata *)self subtitle];
    [(_BlastDoorLPAppleTVMetadata *)v4 setSubtitle:v6];

    v7 = [(_BlastDoorLPAppleTVMetadata *)self artwork];
    [(_BlastDoorLPAppleTVMetadata *)v4 setArtwork:v7];

    v8 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _BlastDoorLPAppleTVMetadata;
  if ([(_BlastDoorLPAppleTVMetadata *)&v12 isEqual:v4])
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
      if (v7 | self->_title && ![v7 isEqual:?] || (v8 = v6[3], v8 | self->_subtitle) && !objc_msgSend(v8, "isEqual:"))
      {
        v5 = 0;
      }

      else
      {
        v9 = v6[4];
        if (v9 | self->_artwork)
        {
          v5 = [v9 isEqual:?];
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

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

@end