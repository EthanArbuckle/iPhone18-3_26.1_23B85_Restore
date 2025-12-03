@interface _BlastDoorLPStocksMetadata
- (BOOL)isEqual:(id)equal;
- (_BlastDoorLPStocksMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BlastDoorLPStocksMetadata

- (_BlastDoorLPStocksMetadata)initWithCoder:(id)coder
{
  v20 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = _BlastDoorLPStocksMetadata;
  v5 = [(_BlastDoorLPStocksMetadata *)&v19 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"combinedTitle");
    combinedTitle = v5->_combinedTitle;
    v5->_combinedTitle = v6;

    v8 = decodeStringForKey(coderCopy, @"title");
    title = v5->_title;
    v5->_title = v8;

    v10 = decodeStringForKey(coderCopy, @"subtitle");
    subtitle = v5->_subtitle;
    v5->_subtitle = v10;

    v12 = decodeStringForKey(coderCopy, @"footnote");
    footnote = v5->_footnote;
    v5->_footnote = v12;

    v14 = [coderCopy _bd_lp_strictlyDecodeLPImageForKey:@"icon"];
    icon = v5->_icon;
    v5->_icon = v14;

    v16 = v5;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  combinedTitle = self->_combinedTitle;
  coderCopy = coder;
  [coderCopy _bd_lp_encodeObjectIfNotNil:combinedTitle forKey:@"combinedTitle"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_title forKey:@"title"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_subtitle forKey:@"subtitle"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_footnote forKey:@"footnote"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_icon forKey:@"icon"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_BlastDoorLPStocksMetadata allocWithZone:zone];
  if (v4)
  {
    combinedTitle = [(_BlastDoorLPStocksMetadata *)self combinedTitle];
    [(_BlastDoorLPStocksMetadata *)v4 setCombinedTitle:combinedTitle];

    title = [(_BlastDoorLPStocksMetadata *)self title];
    [(_BlastDoorLPStocksMetadata *)v4 setTitle:title];

    subtitle = [(_BlastDoorLPStocksMetadata *)self subtitle];
    [(_BlastDoorLPStocksMetadata *)v4 setSubtitle:subtitle];

    footnote = [(_BlastDoorLPStocksMetadata *)self footnote];
    [(_BlastDoorLPStocksMetadata *)v4 setFootnote:footnote];

    icon = [(_BlastDoorLPStocksMetadata *)self icon];
    [(_BlastDoorLPStocksMetadata *)v4 setIcon:icon];

    v10 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v15 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v14.receiver = self;
  v14.super_class = _BlastDoorLPStocksMetadata;
  if ([(_BlastDoorLPStocksMetadata *)&v14 isEqual:equalCopy])
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