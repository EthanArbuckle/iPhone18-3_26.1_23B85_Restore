@interface _BlastDoorLPPasswordsInviteMetadata
- (BOOL)isEqual:(id)a3;
- (_BlastDoorLPPasswordsInviteMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _BlastDoorLPPasswordsInviteMetadata

- (_BlastDoorLPPasswordsInviteMetadata)initWithCoder:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _BlastDoorLPPasswordsInviteMetadata;
  v5 = [(_BlastDoorLPPasswordsInviteMetadata *)&v13 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"groupName");
    groupName = v5->_groupName;
    v5->_groupName = v6;

    v8 = decodeStringForKey(v4, @"urlParameters");
    urlParameters = v5->_urlParameters;
    v5->_urlParameters = v8;

    v10 = v5;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  groupName = self->_groupName;
  v5 = a3;
  [v5 _bd_lp_encodeObjectIfNotNil:groupName forKey:@"groupName"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_urlParameters forKey:@"urlParameters"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_BlastDoorLPPasswordsInviteMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(_BlastDoorLPPasswordsInviteMetadata *)self groupName];
    [(_BlastDoorLPPasswordsInviteMetadata *)v4 setGroupName:v5];

    v6 = [(_BlastDoorLPPasswordsInviteMetadata *)self urlParameters];
    [(_BlastDoorLPPasswordsInviteMetadata *)v4 setUrlParameters:v6];

    v7 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _BlastDoorLPPasswordsInviteMetadata;
  if ([(_BlastDoorLPPasswordsInviteMetadata *)&v15 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      groupName = self->_groupName;
      v8 = [v6 groupName];
      if (groupName | v8 && (v9 = v8, v10 = [(NSString *)groupName isEqual:v8], v9, !v10))
      {
        v5 = 0;
      }

      else
      {
        urlParameters = self->_urlParameters;
        v12 = [v6 urlParameters];
        if (urlParameters | v12)
        {
          v5 = [(NSString *)urlParameters isEqual:v12];
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

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

@end