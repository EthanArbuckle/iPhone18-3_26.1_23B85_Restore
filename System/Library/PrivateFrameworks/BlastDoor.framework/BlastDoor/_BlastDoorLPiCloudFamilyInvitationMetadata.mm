@interface _BlastDoorLPiCloudFamilyInvitationMetadata
- (BOOL)isEqual:(id)equal;
- (_BlastDoorLPiCloudFamilyInvitationMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_enumerateAsynchronousFields:(id)fields;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BlastDoorLPiCloudFamilyInvitationMetadata

- (_BlastDoorLPiCloudFamilyInvitationMetadata)initWithCoder:(id)coder
{
  v22 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = _BlastDoorLPiCloudFamilyInvitationMetadata;
  v5 = [(_BlastDoorLPiCloudFamilyInvitationMetadata *)&v21 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"title");
    title = v5->_title;
    v5->_title = v6;

    v8 = decodeStringForKey(coderCopy, @"subtitle");
    subtitle = v5->_subtitle;
    v5->_subtitle = v8;

    v10 = decodeStringForKey(coderCopy, @"action");
    action = v5->_action;
    v5->_action = v10;

    v12 = decodeStringForKey(coderCopy, @"kind");
    kind = v5->_kind;
    v5->_kind = v12;

    v14 = [coderCopy _bd_lp_strictlyDecodeLPImageForKey:@"image"];
    image = v5->_image;
    v5->_image = v14;

    v16 = [coderCopy _bd_lp_strictlyDecodeLPImageForKey:@"icon"];
    icon = v5->_icon;
    v5->_icon = v16;

    v18 = v5;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy _bd_lp_encodeObjectIfNotNil:title forKey:@"title"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_subtitle forKey:@"subtitle"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_action forKey:@"action"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_kind forKey:@"kind"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_image forKey:@"image"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_icon forKey:@"icon"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_BlastDoorLPiCloudFamilyInvitationMetadata allocWithZone:zone];
  if (v4)
  {
    title = [(_BlastDoorLPiCloudFamilyInvitationMetadata *)self title];
    [(_BlastDoorLPiCloudFamilyInvitationMetadata *)v4 setTitle:title];

    subtitle = [(_BlastDoorLPiCloudFamilyInvitationMetadata *)self subtitle];
    [(_BlastDoorLPiCloudFamilyInvitationMetadata *)v4 setSubtitle:subtitle];

    action = [(_BlastDoorLPiCloudFamilyInvitationMetadata *)self action];
    [(_BlastDoorLPiCloudFamilyInvitationMetadata *)v4 setAction:action];

    kind = [(_BlastDoorLPiCloudFamilyInvitationMetadata *)self kind];
    [(_BlastDoorLPiCloudFamilyInvitationMetadata *)v4 setKind:kind];

    image = [(_BlastDoorLPiCloudFamilyInvitationMetadata *)self image];
    [(_BlastDoorLPiCloudFamilyInvitationMetadata *)v4 setImage:image];

    icon = [(_BlastDoorLPiCloudFamilyInvitationMetadata *)self icon];
    [(_BlastDoorLPiCloudFamilyInvitationMetadata *)v4 setIcon:icon];

    v11 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v16 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v15.receiver = self;
  v15.super_class = _BlastDoorLPiCloudFamilyInvitationMetadata;
  if ([(_BlastDoorLPiCloudFamilyInvitationMetadata *)&v15 isEqual:equalCopy])
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
      if (v7 | self->_title && ![v7 isEqual:?] || (v8 = v6[3], v8 | self->_subtitle) && !objc_msgSend(v8, "isEqual:") || (v9 = v6[4], v9 | self->_action) && !objc_msgSend(v9, "isEqual:") || (v10 = v6[5], v10 | self->_kind) && !objc_msgSend(v10, "isEqual:") || (v11 = v6[6], v11 | self->_image) && !objc_msgSend(v11, "isEqual:"))
      {
        v5 = 0;
      }

      else
      {
        v12 = v6[7];
        if (v12 | self->_icon)
        {
          v5 = [v12 isEqual:?];
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

- (unint64_t)hash
{
  v3 = [(NSString *)self->_title hash];
  v4 = [(NSString *)self->_subtitle hash]^ v3;
  v5 = [(NSString *)self->_action hash];
  return v4 ^ v5 ^ [(_BlastDoorLPImage *)self->_image hash];
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