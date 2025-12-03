@interface _BlastDoorLPPasswordsInviteMetadata
- (BOOL)isEqual:(id)equal;
- (_BlastDoorLPPasswordsInviteMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BlastDoorLPPasswordsInviteMetadata

- (_BlastDoorLPPasswordsInviteMetadata)initWithCoder:(id)coder
{
  v14 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = _BlastDoorLPPasswordsInviteMetadata;
  v5 = [(_BlastDoorLPPasswordsInviteMetadata *)&v13 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"groupName");
    groupName = v5->_groupName;
    v5->_groupName = v6;

    v8 = decodeStringForKey(coderCopy, @"urlParameters");
    urlParameters = v5->_urlParameters;
    v5->_urlParameters = v8;

    v10 = v5;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  groupName = self->_groupName;
  coderCopy = coder;
  [coderCopy _bd_lp_encodeObjectIfNotNil:groupName forKey:@"groupName"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_urlParameters forKey:@"urlParameters"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_BlastDoorLPPasswordsInviteMetadata allocWithZone:zone];
  if (v4)
  {
    groupName = [(_BlastDoorLPPasswordsInviteMetadata *)self groupName];
    [(_BlastDoorLPPasswordsInviteMetadata *)v4 setGroupName:groupName];

    urlParameters = [(_BlastDoorLPPasswordsInviteMetadata *)self urlParameters];
    [(_BlastDoorLPPasswordsInviteMetadata *)v4 setUrlParameters:urlParameters];

    v7 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v16 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v15.receiver = self;
  v15.super_class = _BlastDoorLPPasswordsInviteMetadata;
  if ([(_BlastDoorLPPasswordsInviteMetadata *)&v15 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      groupName = self->_groupName;
      groupName = [v6 groupName];
      if (groupName | groupName && (v9 = groupName, v10 = [(NSString *)groupName isEqual:groupName], v9, !v10))
      {
        v5 = 0;
      }

      else
      {
        urlParameters = self->_urlParameters;
        urlParameters = [v6 urlParameters];
        if (urlParameters | urlParameters)
        {
          v5 = [(NSString *)urlParameters isEqual:urlParameters];
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