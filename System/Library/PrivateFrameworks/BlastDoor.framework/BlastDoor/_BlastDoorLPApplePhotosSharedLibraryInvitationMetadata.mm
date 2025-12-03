@interface _BlastDoorLPApplePhotosSharedLibraryInvitationMetadata
- (BOOL)isEqual:(id)equal;
- (_BlastDoorLPApplePhotosSharedLibraryInvitationMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BlastDoorLPApplePhotosSharedLibraryInvitationMetadata

- (_BlastDoorLPApplePhotosSharedLibraryInvitationMetadata)initWithCoder:(id)coder
{
  v14 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = _BlastDoorLPApplePhotosSharedLibraryInvitationMetadata;
  v5 = [(_BlastDoorLPApplePhotosSharedLibraryInvitationMetadata *)&v13 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"message");
    message = v5->_message;
    v5->_message = v6;

    v8 = decodeStringForKey(coderCopy, @"originatorDisplayName");
    originatorDisplayName = v5->_originatorDisplayName;
    v5->_originatorDisplayName = v8;

    v10 = v5;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  message = self->_message;
  coderCopy = coder;
  [coderCopy _bd_lp_encodeObjectIfNotNil:message forKey:@"message"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_originatorDisplayName forKey:@"originatorDisplayName"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_BlastDoorLPApplePhotosSharedLibraryInvitationMetadata allocWithZone:zone];
  if (v4)
  {
    message = [(_BlastDoorLPApplePhotosSharedLibraryInvitationMetadata *)self message];
    [(_BlastDoorLPApplePhotosSharedLibraryInvitationMetadata *)v4 setMessage:message];

    originatorDisplayName = [(_BlastDoorLPApplePhotosSharedLibraryInvitationMetadata *)self originatorDisplayName];
    [(_BlastDoorLPApplePhotosSharedLibraryInvitationMetadata *)v4 setOriginatorDisplayName:originatorDisplayName];

    v7 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v12 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v11.receiver = self;
  v11.super_class = _BlastDoorLPApplePhotosSharedLibraryInvitationMetadata;
  if ([(_BlastDoorLPApplePhotosSharedLibraryInvitationMetadata *)&v11 isEqual:equalCopy])
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