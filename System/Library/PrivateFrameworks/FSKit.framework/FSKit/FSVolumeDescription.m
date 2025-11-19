@interface FSVolumeDescription
+ (id)volumeDescriptionWithID:(id)a3 name:(id)a4 state:(int64_t)a5;
- (FSVolumeDescription)initWithCoder:(id)a3;
- (FSVolumeDescription)initWithID:(id)a3 name:(id)a4 state:(int64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FSVolumeDescription

- (void)encodeWithCoder:(id)a3
{
  volumeID = self->_volumeID;
  v5 = a3;
  [v5 encodeObject:volumeID forKey:@"FSVolumeDescription.volumeID"];
  [v5 encodeObject:self->_volumeName forKey:@"FSVolumeDescription.volumeName"];
  [v5 encodeInteger:self->_volumeState forKey:@"FSVolumeDescription.volumeState"];
}

- (FSVolumeDescription)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = FSVolumeDescription;
  v5 = [(FSVolumeDescription *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FSVolumeDescription.volumeID"];
    volumeID = v5->_volumeID;
    v5->_volumeID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FSVolumeDescription.volumeName"];
    volumeName = v5->_volumeName;
    v5->_volumeName = v8;

    v5->_volumeState = [v4 decodeIntegerForKey:@"FSVolumeDescription.volumeState"];
  }

  return v5;
}

- (FSVolumeDescription)initWithID:(id)a3 name:(id)a4 state:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v18.receiver = self;
  v18.super_class = FSVolumeDescription;
  v10 = [(FSVolumeDescription *)&v18 init];
  if (v10)
  {
    v11 = [v8 copy];
    volumeID = v10->_volumeID;
    v10->_volumeID = v11;

    if (v9 && ([v9 string], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", &stru_285DEFA28), v13, !v14))
    {
      v15 = [v9 copy];
    }

    else
    {
      v15 = [[FSFileName alloc] initWithString:&stru_285DEFA28];
    }

    volumeName = v10->_volumeName;
    v10->_volumeName = v15;

    v10->_volumeState = a5;
  }

  return v10;
}

+ (id)volumeDescriptionWithID:(id)a3 name:(id)a4 state:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [[a1 alloc] initWithID:v9 name:v8 state:a5];

  return v10;
}

- (id)description
{
  volumeID = self->_volumeID;
  if (volumeID)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@" ID (%@)", volumeID];
  }

  else
  {
    v4 = &stru_285DEFA28;
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

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"FSVolumeDescription%@%@%@", v4, v5, v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  volumeID = self->_volumeID;
  volumeName = self->_volumeName;
  volumeState = self->_volumeState;

  return [v4 initWithID:volumeID name:volumeName state:volumeState];
}

@end