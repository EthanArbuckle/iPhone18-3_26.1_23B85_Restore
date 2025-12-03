@interface _BlastDoorLPGameActivityMetadata
- (BOOL)isEqual:(id)equal;
- (_BlastDoorLPGameActivityMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_enumerateAsynchronousFields:(id)fields;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BlastDoorLPGameActivityMetadata

- (_BlastDoorLPGameActivityMetadata)initWithCoder:(id)coder
{
  v18 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = _BlastDoorLPGameActivityMetadata;
  v5 = [(_BlastDoorLPGameActivityMetadata *)&v17 init];
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

    v12 = [coderCopy _bd_lp_strictlyDecodeLPImageForKey:@"icon"];
    icon = v5->_icon;
    v5->_icon = v12;

    v14 = v5;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy _bd_lp_encodeObjectIfNotNil:title forKey:@"title"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_subtitle forKey:@"subtitle"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_artwork forKey:@"artwork"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_icon forKey:@"icon"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_BlastDoorLPGameActivityMetadata allocWithZone:zone];
  if (v4)
  {
    title = [(_BlastDoorLPGameActivityMetadata *)self title];
    [(_BlastDoorLPGameActivityMetadata *)v4 setTitle:title];

    subtitle = [(_BlastDoorLPGameActivityMetadata *)self subtitle];
    [(_BlastDoorLPGameActivityMetadata *)v4 setSubtitle:subtitle];

    artwork = [(_BlastDoorLPGameActivityMetadata *)self artwork];
    [(_BlastDoorLPGameActivityMetadata *)v4 setArtwork:artwork];

    icon = [(_BlastDoorLPGameActivityMetadata *)self icon];
    [(_BlastDoorLPGameActivityMetadata *)v4 setIcon:icon];

    v9 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v14 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v13.receiver = self;
  v13.super_class = _BlastDoorLPGameActivityMetadata;
  if ([(_BlastDoorLPGameActivityMetadata *)&v13 isEqual:equalCopy])
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
      if (v7 | self->_title && ![v7 isEqual:?] || (v8 = v6[3], v8 | self->_subtitle) && !objc_msgSend(v8, "isEqual:") || (v9 = v6[4], v9 | self->_artwork) && !objc_msgSend(v9, "isEqual:"))
      {
        v5 = 0;
      }

      else
      {
        v10 = v6[5];
        if (v10 | self->_icon)
        {
          v5 = [v10 isEqual:?];
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

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)_enumerateAsynchronousFields:(id)fields
{
  v3 = (fields + 16);
  v4 = *(fields + 2);
  fieldsCopy = fields;
  v4();
  (*v3)(fieldsCopy, @"icon");
}

@end