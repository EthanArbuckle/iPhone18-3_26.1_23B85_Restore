@interface _BlastDoorLPGameActivityMetadata
- (BOOL)isEqual:(id)a3;
- (_BlastDoorLPGameActivityMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_enumerateAsynchronousFields:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _BlastDoorLPGameActivityMetadata

- (_BlastDoorLPGameActivityMetadata)initWithCoder:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = _BlastDoorLPGameActivityMetadata;
  v5 = [(_BlastDoorLPGameActivityMetadata *)&v17 init];
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

    v12 = [v4 _bd_lp_strictlyDecodeLPImageForKey:@"icon"];
    icon = v5->_icon;
    v5->_icon = v12;

    v14 = v5;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  title = self->_title;
  v5 = a3;
  [v5 _bd_lp_encodeObjectIfNotNil:title forKey:@"title"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_subtitle forKey:@"subtitle"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_artwork forKey:@"artwork"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_icon forKey:@"icon"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_BlastDoorLPGameActivityMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(_BlastDoorLPGameActivityMetadata *)self title];
    [(_BlastDoorLPGameActivityMetadata *)v4 setTitle:v5];

    v6 = [(_BlastDoorLPGameActivityMetadata *)self subtitle];
    [(_BlastDoorLPGameActivityMetadata *)v4 setSubtitle:v6];

    v7 = [(_BlastDoorLPGameActivityMetadata *)self artwork];
    [(_BlastDoorLPGameActivityMetadata *)v4 setArtwork:v7];

    v8 = [(_BlastDoorLPGameActivityMetadata *)self icon];
    [(_BlastDoorLPGameActivityMetadata *)v4 setIcon:v8];

    v9 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _BlastDoorLPGameActivityMetadata;
  if ([(_BlastDoorLPGameActivityMetadata *)&v13 isEqual:v4])
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

- (void)_enumerateAsynchronousFields:(id)a3
{
  v3 = (a3 + 16);
  v4 = *(a3 + 2);
  v5 = a3;
  v4();
  (*v3)(v5, @"icon");
}

@end