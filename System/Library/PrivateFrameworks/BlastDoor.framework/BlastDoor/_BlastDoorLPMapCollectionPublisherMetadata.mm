@interface _BlastDoorLPMapCollectionPublisherMetadata
- (BOOL)isEqual:(id)equal;
- (_BlastDoorLPMapCollectionPublisherMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BlastDoorLPMapCollectionPublisherMetadata

- (_BlastDoorLPMapCollectionPublisherMetadata)initWithCoder:(id)coder
{
  v15 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = _BlastDoorLPMapCollectionPublisherMetadata;
  v5 = [(_BlastDoorLPMapCollectionPublisherMetadata *)&v14 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"name");
    v7 = *&v5->_numberOfPublishedCollections;
    *&v5->_numberOfPublishedCollections = v6;

    v8 = decodeNumberForKey(coderCopy, @"numberOfPublishedCollections");
    *(&v5->super.__dummyPropertyForObservation + 1) = [v8 unsignedIntValue];

    v9 = [coderCopy _bd_lp_strictlyDecodeLPImageForKey:@"icon"];
    name = v5->_name;
    v5->_name = v9;

    v11 = v5;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = *&self->_numberOfPublishedCollections;
  coderCopy = coder;
  [coderCopy _bd_lp_encodeObjectIfNotNil:v4 forKey:@"name"];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(&self->super.__dummyPropertyForObservation + 1)];
  [coderCopy _bd_lp_encodeObjectIfNotNil:v5 forKey:@"numberOfPublishedCollections"];

  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_name forKey:@"icon"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_BlastDoorLPMapCollectionPublisherMetadata allocWithZone:zone];
  if (v4)
  {
    name = [(_BlastDoorLPMapCollectionPublisherMetadata *)self name];
    [(_BlastDoorLPMapCollectionPublisherMetadata *)v4 setName:name];

    [(_BlastDoorLPMapCollectionPublisherMetadata *)v4 setNumberOfPublishedCollections:[(_BlastDoorLPMapCollectionPublisherMetadata *)self numberOfPublishedCollections]];
    icon = [(_BlastDoorLPMapCollectionPublisherMetadata *)self icon];
    [(_BlastDoorLPMapCollectionPublisherMetadata *)v4 setIcon:icon];

    v7 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v12 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v11.receiver = self;
  v11.super_class = _BlastDoorLPMapCollectionPublisherMetadata;
  if ([(_BlastDoorLPMapCollectionPublisherMetadata *)&v11 isEqual:equalCopy])
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
      if ((!(v7 | *&self->_numberOfPublishedCollections) || [v7 isEqual:?]) && *(v6 + 3) == *(&self->super.__dummyPropertyForObservation + 1))
      {
        v8 = v6[3];
        if (v8 | self->_name)
        {
          v5 = [v8 isEqual:?];
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

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

@end