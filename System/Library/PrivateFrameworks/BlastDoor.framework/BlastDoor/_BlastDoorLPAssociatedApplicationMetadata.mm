@interface _BlastDoorLPAssociatedApplicationMetadata
- (BOOL)isEqual:(id)a3;
- (_BlastDoorLPAssociatedApplicationMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _BlastDoorLPAssociatedApplicationMetadata

- (_BlastDoorLPAssociatedApplicationMetadata)initWithCoder:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = _BlastDoorLPAssociatedApplicationMetadata;
  v5 = [(_BlastDoorLPAssociatedApplicationMetadata *)&v17 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"bundleIdentifier");
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v8 = [v4 _bd_lp_strictlyDecodeLPImageForKey:@"icon"];
    icon = v5->_icon;
    v5->_icon = v8;

    v10 = decodeStringForKey(v4, @"caption");
    caption = v5->_caption;
    v5->_caption = v10;

    v12 = decodeStringForKey(v4, @"action");
    action = v5->_action;
    v5->_action = v12;

    v5->_clipAction = [v4 decodeIntegerForKey:@"clipAction"];
    v14 = v5;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  bundleIdentifier = self->_bundleIdentifier;
  v5 = a3;
  [v5 _bd_lp_encodeObjectIfNotNil:bundleIdentifier forKey:@"bundleIdentifier"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_icon forKey:@"icon"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_caption forKey:@"caption"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_action forKey:@"action"];
  [v5 encodeInteger:self->_clipAction forKey:@"clipAction"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_BlastDoorLPAssociatedApplicationMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(_BlastDoorLPAssociatedApplicationMetadata *)self bundleIdentifier];
    [(_BlastDoorLPAssociatedApplicationMetadata *)v4 setBundleIdentifier:v5];

    v6 = [(_BlastDoorLPAssociatedApplicationMetadata *)self icon];
    [(_BlastDoorLPAssociatedApplicationMetadata *)v4 setIcon:v6];

    v7 = [(_BlastDoorLPAssociatedApplicationMetadata *)self caption];
    [(_BlastDoorLPAssociatedApplicationMetadata *)v4 setCaption:v7];

    v8 = [(_BlastDoorLPAssociatedApplicationMetadata *)self action];
    [(_BlastDoorLPAssociatedApplicationMetadata *)v4 setAction:v8];

    [(_BlastDoorLPAssociatedApplicationMetadata *)v4 setClipAction:[(_BlastDoorLPAssociatedApplicationMetadata *)self clipAction]];
    v9 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _BlastDoorLPAssociatedApplicationMetadata;
  if ([(_BlastDoorLPAssociatedApplicationMetadata *)&v13 isEqual:v4])
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