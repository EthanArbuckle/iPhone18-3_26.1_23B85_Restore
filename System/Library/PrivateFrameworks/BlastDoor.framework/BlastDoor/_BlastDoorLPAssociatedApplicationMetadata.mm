@interface _BlastDoorLPAssociatedApplicationMetadata
- (BOOL)isEqual:(id)equal;
- (_BlastDoorLPAssociatedApplicationMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BlastDoorLPAssociatedApplicationMetadata

- (_BlastDoorLPAssociatedApplicationMetadata)initWithCoder:(id)coder
{
  v18 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = _BlastDoorLPAssociatedApplicationMetadata;
  v5 = [(_BlastDoorLPAssociatedApplicationMetadata *)&v17 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"bundleIdentifier");
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v8 = [coderCopy _bd_lp_strictlyDecodeLPImageForKey:@"icon"];
    icon = v5->_icon;
    v5->_icon = v8;

    v10 = decodeStringForKey(coderCopy, @"caption");
    caption = v5->_caption;
    v5->_caption = v10;

    v12 = decodeStringForKey(coderCopy, @"action");
    action = v5->_action;
    v5->_action = v12;

    v5->_clipAction = [coderCopy decodeIntegerForKey:@"clipAction"];
    v14 = v5;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  bundleIdentifier = self->_bundleIdentifier;
  coderCopy = coder;
  [coderCopy _bd_lp_encodeObjectIfNotNil:bundleIdentifier forKey:@"bundleIdentifier"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_icon forKey:@"icon"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_caption forKey:@"caption"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_action forKey:@"action"];
  [coderCopy encodeInteger:self->_clipAction forKey:@"clipAction"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_BlastDoorLPAssociatedApplicationMetadata allocWithZone:zone];
  if (v4)
  {
    bundleIdentifier = [(_BlastDoorLPAssociatedApplicationMetadata *)self bundleIdentifier];
    [(_BlastDoorLPAssociatedApplicationMetadata *)v4 setBundleIdentifier:bundleIdentifier];

    icon = [(_BlastDoorLPAssociatedApplicationMetadata *)self icon];
    [(_BlastDoorLPAssociatedApplicationMetadata *)v4 setIcon:icon];

    caption = [(_BlastDoorLPAssociatedApplicationMetadata *)self caption];
    [(_BlastDoorLPAssociatedApplicationMetadata *)v4 setCaption:caption];

    action = [(_BlastDoorLPAssociatedApplicationMetadata *)self action];
    [(_BlastDoorLPAssociatedApplicationMetadata *)v4 setAction:action];

    [(_BlastDoorLPAssociatedApplicationMetadata *)v4 setClipAction:[(_BlastDoorLPAssociatedApplicationMetadata *)self clipAction]];
    v9 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v14 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v13.receiver = self;
  v13.super_class = _BlastDoorLPAssociatedApplicationMetadata;
  if ([(_BlastDoorLPAssociatedApplicationMetadata *)&v13 isEqual:equalCopy])
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
      v5 = (!(v7 | self->_bundleIdentifier) || [v7 isEqual:?]) && ((v8 = v6[3], !(v8 | self->_icon)) || objc_msgSend(v8, "isEqual:")) && ((v9 = v6[4], !(v9 | self->_caption)) || objc_msgSend(v9, "isEqual:")) && ((v10 = v6[5], !(v10 | self->_action)) || objc_msgSend(v10, "isEqual:")) && v6[6] == self->_clipAction;
    }

    else
    {
      v5 = 0;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

@end