@interface _BlastDoorLPApplePhotosSharedLibraryInvitationMetadata
- (BOOL)isEqual:(id)a3;
- (_BlastDoorLPApplePhotosSharedLibraryInvitationMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _BlastDoorLPApplePhotosSharedLibraryInvitationMetadata

- (_BlastDoorLPApplePhotosSharedLibraryInvitationMetadata)initWithCoder:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _BlastDoorLPApplePhotosSharedLibraryInvitationMetadata;
  v5 = [(_BlastDoorLPApplePhotosSharedLibraryInvitationMetadata *)&v13 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"message");
    message = v5->_message;
    v5->_message = v6;

    v8 = decodeStringForKey(v4, @"originatorDisplayName");
    originatorDisplayName = v5->_originatorDisplayName;
    v5->_originatorDisplayName = v8;

    v10 = v5;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  message = self->_message;
  v5 = a3;
  [v5 _bd_lp_encodeObjectIfNotNil:message forKey:@"message"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_originatorDisplayName forKey:@"originatorDisplayName"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_BlastDoorLPApplePhotosSharedLibraryInvitationMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(_BlastDoorLPApplePhotosSharedLibraryInvitationMetadata *)self message];
    [(_BlastDoorLPApplePhotosSharedLibraryInvitationMetadata *)v4 setMessage:v5];

    v6 = [(_BlastDoorLPApplePhotosSharedLibraryInvitationMetadata *)self originatorDisplayName];
    [(_BlastDoorLPApplePhotosSharedLibraryInvitationMetadata *)v4 setOriginatorDisplayName:v6];

    v7 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _BlastDoorLPApplePhotosSharedLibraryInvitationMetadata;
  if ([(_BlastDoorLPApplePhotosSharedLibraryInvitationMetadata *)&v11 isEqual:v4])
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
      if (v7 | self->_message && ![v7 isEqual:?])
      {
        v5 = 0;
      }

      else
      {
        v8 = v6[3];
        if (v8 | self->_originatorDisplayName)
        {
          v5 = [v8 isEqual:?];
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

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

@end