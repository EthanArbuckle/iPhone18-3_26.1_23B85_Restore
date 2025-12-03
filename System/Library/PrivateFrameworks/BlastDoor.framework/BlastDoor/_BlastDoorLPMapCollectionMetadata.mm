@interface _BlastDoorLPMapCollectionMetadata
- (BOOL)isEqual:(id)equal;
- (_BlastDoorLPMapCollectionMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_enumerateAsynchronousFields:(id)fields;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BlastDoorLPMapCollectionMetadata

- (_BlastDoorLPMapCollectionMetadata)initWithCoder:(id)coder
{
  v28 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = _BlastDoorLPMapCollectionMetadata;
  v5 = [(_BlastDoorLPMapCollectionMetadata *)&v27 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"name");
    v7 = *&v5->_numberOfItems;
    *&v5->_numberOfItems = v6;

    v8 = decodeNumberForKey(coderCopy, @"numberOfItems");
    *(&v5->super.__dummyPropertyForObservation + 1) = [v8 unsignedIntValue];

    v9 = [coderCopy _bd_lp_strictlyDecodeLPImageForKey:@"icon"];
    name = v5->_name;
    v5->_name = v9;

    v11 = [coderCopy _bd_lp_strictlyDecodeLPImageForKey:@"image"];
    icon = v5->_icon;
    v5->_icon = v11;

    v13 = [coderCopy _bd_lp_strictlyDecodeLPImageForKey:@"darkImage"];
    image = v5->_image;
    v5->_image = v13;

    v15 = MEMORY[0x277CBEB98];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [coderCopy _bd_lp_strictlyDecodeArrayOfObjectsOfClasses:v17 forKey:@"addresses"];
    darkImage = v5->_darkImage;
    v5->_darkImage = v18;

    v20 = decodeStringForKey(coderCopy, @"publisherName");
    addresses = v5->_addresses;
    v5->_addresses = v20;

    v22 = [coderCopy _bd_lp_strictlyDecodeLPImageForKey:@"publisherIcon"];
    publisherName = v5->_publisherName;
    v5->_publisherName = v22;

    v24 = v5;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = *&self->_numberOfItems;
  coderCopy = coder;
  [coderCopy _bd_lp_encodeObjectIfNotNil:v4 forKey:@"name"];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(&self->super.__dummyPropertyForObservation + 1)];
  [coderCopy _bd_lp_encodeObjectIfNotNil:v5 forKey:@"numberOfItems"];

  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_name forKey:@"icon"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_icon forKey:@"image"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_image forKey:@"darkImage"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_darkImage forKey:@"addresses"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_addresses forKey:@"publisherName"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_publisherName forKey:@"publisherIcon"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_BlastDoorLPMapCollectionMetadata allocWithZone:zone];
  if (v4)
  {
    name = [(_BlastDoorLPMapCollectionMetadata *)self name];
    [(_BlastDoorLPMapCollectionMetadata *)v4 setName:name];

    [(_BlastDoorLPMapCollectionMetadata *)v4 setNumberOfItems:[(_BlastDoorLPMapCollectionMetadata *)self numberOfItems]];
    icon = [(_BlastDoorLPMapCollectionMetadata *)self icon];
    [(_BlastDoorLPMapCollectionMetadata *)v4 setIcon:icon];

    image = [(_BlastDoorLPMapCollectionMetadata *)self image];
    [(_BlastDoorLPMapCollectionMetadata *)v4 setImage:image];

    darkImage = [(_BlastDoorLPMapCollectionMetadata *)self darkImage];
    [(_BlastDoorLPMapCollectionMetadata *)v4 setDarkImage:darkImage];

    addresses = [(_BlastDoorLPMapCollectionMetadata *)self addresses];
    [(_BlastDoorLPMapCollectionMetadata *)v4 setAddresses:addresses];

    publisherName = [(_BlastDoorLPMapCollectionMetadata *)self publisherName];
    [(_BlastDoorLPMapCollectionMetadata *)v4 setPublisherName:publisherName];

    publisherIcon = [(_BlastDoorLPMapCollectionMetadata *)self publisherIcon];
    [(_BlastDoorLPMapCollectionMetadata *)v4 setPublisherIcon:publisherIcon];

    v12 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v17 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v16.receiver = self;
  v16.super_class = _BlastDoorLPMapCollectionMetadata;
  if ([(_BlastDoorLPMapCollectionMetadata *)&v16 isEqual:equalCopy])
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
      if ((!(v7 | *&self->_numberOfItems) || [v7 isEqual:?]) && *(v6 + 3) == *(&self->super.__dummyPropertyForObservation + 1) && ((v8 = v6[3], !(v8 | self->_name)) || objc_msgSend(v8, "isEqual:")) && ((v9 = v6[6], !(v9 | self->_darkImage)) || objc_msgSend(v9, "isEqual:")) && ((v10 = v6[4], !(v10 | self->_icon)) || objc_msgSend(v10, "isEqual:")) && ((v11 = v6[5], !(v11 | self->_image)) || objc_msgSend(v11, "isEqual:")) && ((v12 = v6[7], !(v12 | self->_addresses)) || objc_msgSend(v12, "isEqual:")))
      {
        v13 = v6[8];
        if (v13 | self->_publisherName)
        {
          v5 = [v13 isEqual:?];
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

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)_enumerateAsynchronousFields:(id)fields
{
  v3 = (fields + 16);
  v4 = *(fields + 2);
  fieldsCopy = fields;
  v4();
  (*v3)(fieldsCopy, @"darkImage");
  (*v3)(fieldsCopy, @"icon");
  (*v3)(fieldsCopy, @"publisherIcon");
}

@end