@interface _BlastDoorLPAppleTVMetadata
- (BOOL)isEqual:(id)equal;
- (_BlastDoorLPAppleTVMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BlastDoorLPAppleTVMetadata

- (_BlastDoorLPAppleTVMetadata)initWithCoder:(id)coder
{
  v16 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = _BlastDoorLPAppleTVMetadata;
  v5 = [(_BlastDoorLPAppleTVMetadata *)&v15 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"title");
    title = v5->_title;
    v5->_title = v6;

    v8 = decodeStringForKey(coderCopy, @"subtitle");
    subtitle = v5->_subtitle;
    v5->_subtitle = v8;

    v10 = [coderCopy _bd_lp_strictlyDecodeLPImageForKey:@"artwork"];
    artwork = v5->_artwork;
    v5->_artwork = v10;

    v12 = v5;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy _bd_lp_encodeObjectIfNotNil:title forKey:@"title"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_subtitle forKey:@"subtitle"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_artwork forKey:@"artwork"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_BlastDoorLPAppleTVMetadata allocWithZone:zone];
  if (v4)
  {
    title = [(_BlastDoorLPAppleTVMetadata *)self title];
    [(_BlastDoorLPAppleTVMetadata *)v4 setTitle:title];

    subtitle = [(_BlastDoorLPAppleTVMetadata *)self subtitle];
    [(_BlastDoorLPAppleTVMetadata *)v4 setSubtitle:subtitle];

    artwork = [(_BlastDoorLPAppleTVMetadata *)self artwork];
    [(_BlastDoorLPAppleTVMetadata *)v4 setArtwork:artwork];

    v8 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v13 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v12.receiver = self;
  v12.super_class = _BlastDoorLPAppleTVMetadata;
  if ([(_BlastDoorLPAppleTVMetadata *)&v12 isEqual:equalCopy])
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