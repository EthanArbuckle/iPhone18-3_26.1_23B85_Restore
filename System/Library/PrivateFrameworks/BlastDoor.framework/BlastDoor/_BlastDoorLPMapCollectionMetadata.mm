@interface _BlastDoorLPMapCollectionMetadata
- (BOOL)isEqual:(id)a3;
- (_BlastDoorLPMapCollectionMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_enumerateAsynchronousFields:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _BlastDoorLPMapCollectionMetadata

- (_BlastDoorLPMapCollectionMetadata)initWithCoder:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v27.receiver = self;
  v27.super_class = _BlastDoorLPMapCollectionMetadata;
  v5 = [(_BlastDoorLPMapCollectionMetadata *)&v27 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"name");
    v7 = *&v5->_numberOfItems;
    *&v5->_numberOfItems = v6;

    v8 = decodeNumberForKey(v4, @"numberOfItems");
    *(&v5->super.__dummyPropertyForObservation + 1) = [v8 unsignedIntValue];

    v9 = [v4 _bd_lp_strictlyDecodeLPImageForKey:@"icon"];
    name = v5->_name;
    v5->_name = v9;

    v11 = [v4 _bd_lp_strictlyDecodeLPImageForKey:@"image"];
    icon = v5->_icon;
    v5->_icon = v11;

    v13 = [v4 _bd_lp_strictlyDecodeLPImageForKey:@"darkImage"];
    image = v5->_image;
    v5->_image = v13;

    v15 = MEMORY[0x277CBEB98];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [v4 _bd_lp_strictlyDecodeArrayOfObjectsOfClasses:v17 forKey:@"addresses"];
    darkImage = v5->_darkImage;
    v5->_darkImage = v18;

    v20 = decodeStringForKey(v4, @"publisherName");
    addresses = v5->_addresses;
    v5->_addresses = v20;

    v22 = [v4 _bd_lp_strictlyDecodeLPImageForKey:@"publisherIcon"];
    publisherName = v5->_publisherName;
    v5->_publisherName = v22;

    v24 = v5;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = *&self->_numberOfItems;
  v6 = a3;
  [v6 _bd_lp_encodeObjectIfNotNil:v4 forKey:@"name"];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(&self->super.__dummyPropertyForObservation + 1)];
  [v6 _bd_lp_encodeObjectIfNotNil:v5 forKey:@"numberOfItems"];

  [v6 _bd_lp_encodeObjectIfNotNil:self->_name forKey:@"icon"];
  [v6 _bd_lp_encodeObjectIfNotNil:self->_icon forKey:@"image"];
  [v6 _bd_lp_encodeObjectIfNotNil:self->_image forKey:@"darkImage"];
  [v6 _bd_lp_encodeObjectIfNotNil:self->_darkImage forKey:@"addresses"];
  [v6 _bd_lp_encodeObjectIfNotNil:self->_addresses forKey:@"publisherName"];
  [v6 _bd_lp_encodeObjectIfNotNil:self->_publisherName forKey:@"publisherIcon"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_BlastDoorLPMapCollectionMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(_BlastDoorLPMapCollectionMetadata *)self name];
    [(_BlastDoorLPMapCollectionMetadata *)v4 setName:v5];

    [(_BlastDoorLPMapCollectionMetadata *)v4 setNumberOfItems:[(_BlastDoorLPMapCollectionMetadata *)self numberOfItems]];
    v6 = [(_BlastDoorLPMapCollectionMetadata *)self icon];
    [(_BlastDoorLPMapCollectionMetadata *)v4 setIcon:v6];

    v7 = [(_BlastDoorLPMapCollectionMetadata *)self image];
    [(_BlastDoorLPMapCollectionMetadata *)v4 setImage:v7];

    v8 = [(_BlastDoorLPMapCollectionMetadata *)self darkImage];
    [(_BlastDoorLPMapCollectionMetadata *)v4 setDarkImage:v8];

    v9 = [(_BlastDoorLPMapCollectionMetadata *)self addresses];
    [(_BlastDoorLPMapCollectionMetadata *)v4 setAddresses:v9];

    v10 = [(_BlastDoorLPMapCollectionMetadata *)self publisherName];
    [(_BlastDoorLPMapCollectionMetadata *)v4 setPublisherName:v10];

    v11 = [(_BlastDoorLPMapCollectionMetadata *)self publisherIcon];
    [(_BlastDoorLPMapCollectionMetadata *)v4 setPublisherIcon:v11];

    v12 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16.receiver = self;
  v16.super_class = _BlastDoorLPMapCollectionMetadata;
  if ([(_BlastDoorLPMapCollectionMetadata *)&v16 isEqual:v4])
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

- (void)_enumerateAsynchronousFields:(id)a3
{
  v3 = (a3 + 16);
  v4 = *(a3 + 2);
  v5 = a3;
  v4();
  (*v3)(v5, @"darkImage");
  (*v3)(v5, @"icon");
  (*v3)(v5, @"publisherIcon");
}

@end