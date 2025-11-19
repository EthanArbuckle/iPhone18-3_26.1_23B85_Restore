@interface _BlastDoorLPSharedObjectMetadata
- (BOOL)isEqual:(id)a3;
- (_BlastDoorLPSharedObjectMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _BlastDoorLPSharedObjectMetadata

- (_BlastDoorLPSharedObjectMetadata)initWithCoder:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = _BlastDoorLPSharedObjectMetadata;
  v5 = [(_BlastDoorLPSharedObjectMetadata *)&v22 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"title");
    v7 = *&v5->_isCollaboration;
    *&v5->_isCollaboration = v6;

    v8 = decodeStringForKey(v4, @"subtitle");
    title = v5->_title;
    v5->_title = v8;

    v10 = decodeStringForKey(v4, @"information");
    subtitle = v5->_subtitle;
    v5->_subtitle = v10;

    v12 = [v4 _bd_lp_strictlyDecodeLPImageForKey:@"icon"];
    information = v5->_information;
    v5->_information = v12;

    *(&v5->super.__dummyPropertyForObservation + 1) = [v4 decodeBoolForKey:@"isCollaboration"];
    if ([v4 containsValueForKey:@"specialization"])
    {
      v14 = allKnownSpecializationClasses();
      v21 = 0;
      v15 = [v4 _bd_lp_strictlyDecodeTopLevelObjectOfClasses:v14 forKey:@"specialization" error:&v21];
      v16 = v21;
      icon = v5->_icon;
      v5->_icon = v15;
    }

    v18 = v5;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = *&self->_isCollaboration;
  v5 = a3;
  [v5 _bd_lp_encodeObjectIfNotNil:v4 forKey:@"title"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_title forKey:@"subtitle"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_subtitle forKey:@"information"];
  [v5 encodeBool:*(&self->super.__dummyPropertyForObservation + 1) forKey:@"isCollaboration"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_information forKey:@"icon"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_icon forKey:@"specialization"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_BlastDoorLPSharedObjectMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(_BlastDoorLPSharedObjectMetadata *)self title];
    [(_BlastDoorLPSharedObjectMetadata *)v4 setTitle:v5];

    v6 = [(_BlastDoorLPSharedObjectMetadata *)self subtitle];
    [(_BlastDoorLPSharedObjectMetadata *)v4 setSubtitle:v6];

    v7 = [(_BlastDoorLPSharedObjectMetadata *)self information];
    [(_BlastDoorLPSharedObjectMetadata *)v4 setInformation:v7];

    [(_BlastDoorLPSharedObjectMetadata *)v4 setIsCollaboration:[(_BlastDoorLPSharedObjectMetadata *)self isCollaboration]];
    v8 = [(_BlastDoorLPSharedObjectMetadata *)self icon];
    [(_BlastDoorLPSharedObjectMetadata *)v4 setIcon:v8];

    v9 = [(_BlastDoorLPSharedObjectMetadata *)self specialization];
    [(_BlastDoorLPSharedObjectMetadata *)v4 setSpecialization:v9];

    v10 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v27.receiver = self;
  v27.super_class = _BlastDoorLPSharedObjectMetadata;
  if ([(_BlastDoorLPSharedObjectMetadata *)&v27 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      v7 = *&self->_isCollaboration;
      v8 = [v6 title];
      if (v7 | v8)
      {
        v9 = v8;
        v10 = [v7 isEqual:v8];

        if (!v10)
        {
          goto LABEL_16;
        }
      }

      title = self->_title;
      v12 = [v6 subtitle];
      if (title | v12)
      {
        v13 = v12;
        v14 = [(NSString *)title isEqual:v12];

        if (!v14)
        {
          goto LABEL_16;
        }
      }

      subtitle = self->_subtitle;
      v16 = [v6 information];
      if (subtitle | v16)
      {
        v17 = v16;
        v18 = [(NSString *)subtitle isEqual:v16];

        if (!v18)
        {
          goto LABEL_16;
        }
      }

      if (v6[9] == *(&self->super.__dummyPropertyForObservation + 1) && ((information = self->_information, [v6 icon], v20 = objc_claimAutoreleasedReturnValue(), !(information | v20)) || (v21 = v20, v22 = -[NSString isEqual:](information, "isEqual:", v20), v21, v22)))
      {
        icon = self->_icon;
        v24 = [v6 specialization];
        if (icon | v24)
        {
          v5 = [(_BlastDoorLPImage *)icon isEqual:v24];
        }

        else
        {
          v5 = 1;
        }
      }

      else
      {
LABEL_16:
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return v5;
}

@end