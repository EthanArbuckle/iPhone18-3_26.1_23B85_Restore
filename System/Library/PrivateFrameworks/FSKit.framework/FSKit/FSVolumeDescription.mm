@interface FSVolumeDescription
+ (id)volumeDescriptionWithID:(id)d name:(id)name state:(int64_t)state;
- (FSVolumeDescription)initWithCoder:(id)coder;
- (FSVolumeDescription)initWithID:(id)d name:(id)name state:(int64_t)state;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FSVolumeDescription

- (void)encodeWithCoder:(id)coder
{
  volumeID = self->_volumeID;
  coderCopy = coder;
  [coderCopy encodeObject:volumeID forKey:@"FSVolumeDescription.volumeID"];
  [coderCopy encodeObject:self->_volumeName forKey:@"FSVolumeDescription.volumeName"];
  [coderCopy encodeInteger:self->_volumeState forKey:@"FSVolumeDescription.volumeState"];
}

- (FSVolumeDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = FSVolumeDescription;
  v5 = [(FSVolumeDescription *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FSVolumeDescription.volumeID"];
    volumeID = v5->_volumeID;
    v5->_volumeID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FSVolumeDescription.volumeName"];
    volumeName = v5->_volumeName;
    v5->_volumeName = v8;

    v5->_volumeState = [coderCopy decodeIntegerForKey:@"FSVolumeDescription.volumeState"];
  }

  return v5;
}

- (FSVolumeDescription)initWithID:(id)d name:(id)name state:(int64_t)state
{
  dCopy = d;
  nameCopy = name;
  v18.receiver = self;
  v18.super_class = FSVolumeDescription;
  v10 = [(FSVolumeDescription *)&v18 init];
  if (v10)
  {
    v11 = [dCopy copy];
    volumeID = v10->_volumeID;
    v10->_volumeID = v11;

    if (nameCopy && ([nameCopy string], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", &stru_285DEFA28), v13, !v14))
    {
      v15 = [nameCopy copy];
    }

    else
    {
      v15 = [[FSFileName alloc] initWithString:&stru_285DEFA28];
    }

    volumeName = v10->_volumeName;
    v10->_volumeName = v15;

    v10->_volumeState = state;
  }

  return v10;
}

+ (id)volumeDescriptionWithID:(id)d name:(id)name state:(int64_t)state
{
  nameCopy = name;
  dCopy = d;
  v10 = [[self alloc] initWithID:dCopy name:nameCopy state:state];

  return v10;
}

- (id)description
{
  volumeID = self->_volumeID;
  if (volumeID)
  {
    volumeID = [MEMORY[0x277CCACA8] stringWithFormat:@" ID (%@)", volumeID];
  }

  else
  {
    volumeID = &stru_285DEFA28;
  }

  if (self->_volumeName)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@" name (%@)", self->_volumeName];
  }

  else
  {
    v5 = &stru_285DEFA28;
  }

  if (self->_volumeState)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@" state (%ld)", self->_volumeState];
  }

  else
  {
    v6 = &stru_285DEFA28;
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"FSVolumeDescription%@%@%@", volumeID, v5, v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  volumeID = self->_volumeID;
  volumeName = self->_volumeName;
  volumeState = self->_volumeState;

  return [v4 initWithID:volumeID name:volumeName state:volumeState];
}

@end