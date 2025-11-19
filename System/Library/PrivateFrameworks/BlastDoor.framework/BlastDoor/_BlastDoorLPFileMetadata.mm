@interface _BlastDoorLPFileMetadata
- (BOOL)isEqual:(id)a3;
- (_BlastDoorLPFileMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_enumerateAsynchronousFields:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _BlastDoorLPFileMetadata

- (_BlastDoorLPFileMetadata)initWithCoder:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = _BlastDoorLPFileMetadata;
  v5 = [(_BlastDoorLPFileMetadata *)&v20 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"name");
    name = v5->_name;
    v5->_name = v6;

    v8 = decodeStringForKey(v4, @"type");
    type = v5->_type;
    v5->_type = v8;

    v10 = decodeNumberForKey(v4, @"size");
    v5->_size = [v10 unsignedLongLongValue];

    v11 = [v4 _bd_lp_strictlyDecodeLPImageForKey:@"thumbnail"];
    thumbnail = v5->_thumbnail;
    v5->_thumbnail = v11;

    v13 = [v4 _bd_lp_strictlyDecodeLPImageForKey:@"icon"];
    icon = v5->_icon;
    v5->_icon = v13;

    v15 = [v4 _bd_lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v15;

    v17 = v5;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 _bd_lp_encodeObjectIfNotNil:self->_name forKey:@"name"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_type forKey:@"type"];
  if (self->_size)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
    [v5 _bd_lp_encodeObjectIfNotNil:v4 forKey:@"size"];
  }

  [v5 _bd_lp_encodeObjectIfNotNil:self->_thumbnail forKey:@"thumbnail"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_icon forKey:@"icon"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_creationDate forKey:@"creationDate"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_BlastDoorLPFileMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(_BlastDoorLPFileMetadata *)self name];
    [(_BlastDoorLPFileMetadata *)v4 setName:v5];

    v6 = [(_BlastDoorLPFileMetadata *)self type];
    [(_BlastDoorLPFileMetadata *)v4 setType:v6];

    [(_BlastDoorLPFileMetadata *)v4 setSize:[(_BlastDoorLPFileMetadata *)self size]];
    v7 = [(_BlastDoorLPFileMetadata *)self thumbnail];
    [(_BlastDoorLPFileMetadata *)v4 setThumbnail:v7];

    v8 = [(_BlastDoorLPFileMetadata *)self icon];
    [(_BlastDoorLPFileMetadata *)v4 setIcon:v8];

    v9 = [(_BlastDoorLPFileMetadata *)self creationDate];
    [(_BlastDoorLPFileMetadata *)v4 setCreationDate:v9];

    v10 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _BlastDoorLPFileMetadata;
  if ([(_BlastDoorLPFileMetadata *)&v14 isEqual:v4])
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

- (void)_enumerateAsynchronousFields:(id)a3
{
  v3 = (a3 + 16);
  v4 = *(a3 + 2);
  v5 = a3;
  v4();
  (*v3)(v5, @"icon");
}

@end