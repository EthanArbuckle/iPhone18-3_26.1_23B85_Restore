@interface _BlastDoorLPArtworkMetadata
- (BOOL)isEqual:(id)a3;
- (_BlastDoorLPArtworkMetadata)init;
- (_BlastDoorLPArtworkMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _BlastDoorLPArtworkMetadata

- (_BlastDoorLPArtworkMetadata)init
{
  v8 = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = _BlastDoorLPArtworkMetadata;
  v2 = [(_BlastDoorLPArtworkMetadata *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_version = 1;
    v4 = v2;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

- (_BlastDoorLPArtworkMetadata)initWithCoder:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _BlastDoorLPArtworkMetadata;
  v5 = [(_BlastDoorLPArtworkMetadata *)&v14 init];
  if (v5)
  {
    v5->_version = [v4 decodeInt32ForKey:@"version"];
    v6 = decodeURLForKey(v4, @"URL");
    URL = v5->_URL;
    v5->_URL = v6;

    v8 = objc_opt_class();
    v9 = [v4 _bd_lp_strictlyDecodeDictionaryOfObjectsWithKeysOfClass:v8 andObjectsOfClass:objc_opt_class() forKey:@"colors"];
    colors = v5->_colors;
    v5->_colors = v9;

    v11 = v5;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  version = self->_version;
  v5 = a3;
  [v5 encodeInt32:version forKey:@"version"];
  [v5 _bd_lp_encodeURLIfNotNilOrLocalFile:self->_URL forKey:@"URL"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_colors forKey:@"colors"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_BlastDoorLPArtworkMetadata allocWithZone:a3];
  if (v4)
  {
    v4->_version = [(_BlastDoorLPArtworkMetadata *)self version];
    v5 = [(_BlastDoorLPArtworkMetadata *)self URL];
    [(_BlastDoorLPArtworkMetadata *)v4 setURL:v5];

    v6 = [(_BlastDoorLPArtworkMetadata *)self colors];
    [(_BlastDoorLPArtworkMetadata *)v4 setColors:v6];

    v7 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _BlastDoorLPArtworkMetadata;
  if ([(_BlastDoorLPArtworkMetadata *)&v12 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      v7 = v6;
      if (*(v6 + 2) == self->_version && ((v8 = v6[2], !(v8 | self->_URL)) || [v8 isEqual:?]))
      {
        v9 = v7[3];
        if (v9 | self->_colors)
        {
          v5 = [v9 isEqual:?];
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

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

@end