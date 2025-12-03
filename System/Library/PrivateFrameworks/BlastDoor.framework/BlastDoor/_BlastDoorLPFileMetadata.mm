@interface _BlastDoorLPFileMetadata
- (BOOL)isEqual:(id)equal;
- (_BlastDoorLPFileMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_enumerateAsynchronousFields:(id)fields;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BlastDoorLPFileMetadata

- (_BlastDoorLPFileMetadata)initWithCoder:(id)coder
{
  v21 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = _BlastDoorLPFileMetadata;
  v5 = [(_BlastDoorLPFileMetadata *)&v20 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"name");
    name = v5->_name;
    v5->_name = v6;

    v8 = decodeStringForKey(coderCopy, @"type");
    type = v5->_type;
    v5->_type = v8;

    v10 = decodeNumberForKey(coderCopy, @"size");
    v5->_size = [v10 unsignedLongLongValue];

    v11 = [coderCopy _bd_lp_strictlyDecodeLPImageForKey:@"thumbnail"];
    thumbnail = v5->_thumbnail;
    v5->_thumbnail = v11;

    v13 = [coderCopy _bd_lp_strictlyDecodeLPImageForKey:@"icon"];
    icon = v5->_icon;
    v5->_icon = v13;

    v15 = [coderCopy _bd_lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v15;

    v17 = v5;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_name forKey:@"name"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_type forKey:@"type"];
  if (self->_size)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
    [coderCopy _bd_lp_encodeObjectIfNotNil:v4 forKey:@"size"];
  }

  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_thumbnail forKey:@"thumbnail"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_icon forKey:@"icon"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_creationDate forKey:@"creationDate"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_BlastDoorLPFileMetadata allocWithZone:zone];
  if (v4)
  {
    name = [(_BlastDoorLPFileMetadata *)self name];
    [(_BlastDoorLPFileMetadata *)v4 setName:name];

    type = [(_BlastDoorLPFileMetadata *)self type];
    [(_BlastDoorLPFileMetadata *)v4 setType:type];

    [(_BlastDoorLPFileMetadata *)v4 setSize:[(_BlastDoorLPFileMetadata *)self size]];
    thumbnail = [(_BlastDoorLPFileMetadata *)self thumbnail];
    [(_BlastDoorLPFileMetadata *)v4 setThumbnail:thumbnail];

    icon = [(_BlastDoorLPFileMetadata *)self icon];
    [(_BlastDoorLPFileMetadata *)v4 setIcon:icon];

    creationDate = [(_BlastDoorLPFileMetadata *)self creationDate];
    [(_BlastDoorLPFileMetadata *)v4 setCreationDate:creationDate];

    v10 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v15 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v14.receiver = self;
  v14.super_class = _BlastDoorLPFileMetadata;
  if ([(_BlastDoorLPFileMetadata *)&v14 isEqual:equalCopy])
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
      if ((!(v7 | self->_name) || [v7 isEqual:?]) && ((v8 = v6[3], !(v8 | self->_type)) || objc_msgSend(v8, "isEqual:")) && v6[4] == self->_size && ((v9 = v6[5], !(v9 | self->_thumbnail)) || objc_msgSend(v9, "isEqual:")) && ((v10 = v6[6], !(v10 | self->_icon)) || objc_msgSend(v10, "isEqual:")))
      {
        v11 = v6[7];
        if (v11 | self->_creationDate)
        {
          v5 = [v11 isEqual:?];
        }

        else
        {
          v5 = 1;
        }
      }

      else
      {
        v5 = 0;
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

- (void)_enumerateAsynchronousFields:(id)fields
{
  v3 = (fields + 16);
  v4 = *(fields + 2);
  fieldsCopy = fields;
  v4();
  (*v3)(fieldsCopy, @"icon");
}

@end