@interface _BlastDoorLPStocksMetadata
- (BOOL)isEqual:(id)a3;
- (_BlastDoorLPStocksMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _BlastDoorLPStocksMetadata

- (_BlastDoorLPStocksMetadata)initWithCoder:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19.receiver = self;
  v19.super_class = _BlastDoorLPStocksMetadata;
  v5 = [(_BlastDoorLPStocksMetadata *)&v19 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"combinedTitle");
    combinedTitle = v5->_combinedTitle;
    v5->_combinedTitle = v6;

    v8 = decodeStringForKey(v4, @"title");
    title = v5->_title;
    v5->_title = v8;

    v10 = decodeStringForKey(v4, @"subtitle");
    subtitle = v5->_subtitle;
    v5->_subtitle = v10;

    v12 = decodeStringForKey(v4, @"footnote");
    footnote = v5->_footnote;
    v5->_footnote = v12;

    v14 = [v4 _bd_lp_strictlyDecodeLPImageForKey:@"icon"];
    icon = v5->_icon;
    v5->_icon = v14;

    v16 = v5;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  combinedTitle = self->_combinedTitle;
  v5 = a3;
  [v5 _bd_lp_encodeObjectIfNotNil:combinedTitle forKey:@"combinedTitle"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_title forKey:@"title"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_subtitle forKey:@"subtitle"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_footnote forKey:@"footnote"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_icon forKey:@"icon"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_BlastDoorLPStocksMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(_BlastDoorLPStocksMetadata *)self combinedTitle];
    [(_BlastDoorLPStocksMetadata *)v4 setCombinedTitle:v5];

    v6 = [(_BlastDoorLPStocksMetadata *)self title];
    [(_BlastDoorLPStocksMetadata *)v4 setTitle:v6];

    v7 = [(_BlastDoorLPStocksMetadata *)self subtitle];
    [(_BlastDoorLPStocksMetadata *)v4 setSubtitle:v7];

    v8 = [(_BlastDoorLPStocksMetadata *)self footnote];
    [(_BlastDoorLPStocksMetadata *)v4 setFootnote:v8];

    v9 = [(_BlastDoorLPStocksMetadata *)self icon];
    [(_BlastDoorLPStocksMetadata *)v4 setIcon:v9];

    v10 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _BlastDoorLPStocksMetadata;
  if ([(_BlastDoorLPStocksMetadata *)&v14 isEqual:v4])
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
      if (v7 | self->_combinedTitle && ![v7 isEqual:?] || (v8 = v6[3], v8 | self->_title) && !objc_msgSend(v8, "isEqual:") || (v9 = v6[4], v9 | self->_subtitle) && !objc_msgSend(v9, "isEqual:") || (v10 = v6[5], v10 | self->_footnote) && !objc_msgSend(v10, "isEqual:"))
      {
        v5 = 0;
      }

      else
      {
        v11 = v6[6];
        if (v11 | self->_icon)
        {
          v5 = [v11 isEqual:?];
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

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

@end