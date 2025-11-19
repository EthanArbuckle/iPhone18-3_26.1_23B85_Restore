@interface NTKFaceInstanceDescriptor
- (BOOL)isEqual:(id)a3;
- (NTKFaceInstanceDescriptor)initWithCoder:(id)a3;
- (NTKFaceInstanceDescriptor)initWithJSONRepresentation:(id)a3 pairingID:(id)a4 resourceDirectory:(id)a5;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NTKFaceInstanceDescriptor

- (NTKFaceInstanceDescriptor)initWithJSONRepresentation:(id)a3 pairingID:(id)a4 resourceDirectory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = NTKFaceInstanceDescriptor;
  v11 = [(NTKFaceInstanceDescriptor *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    faceJSONRepresentation = v11->_faceJSONRepresentation;
    v11->_faceJSONRepresentation = v12;

    objc_storeStrong(&v11->_pairingID, a4);
    v14 = [v10 copy];
    resourceDirectory = v11->_resourceDirectory;
    v11->_resourceDirectory = v14;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NTKFaceInstanceDescriptor *)self faceJSONRepresentation];
  v4 = [v3 hash];
  v5 = [(NTKFaceInstanceDescriptor *)self resourceDirectory];
  v6 = [v5 hash] ^ v4;

  v7 = [(NTKFaceInstanceDescriptor *)self pairingID];
  v8 = v6 ^ (16 * [v7 hash]);

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 pairingID];
    v7 = [(NTKFaceInstanceDescriptor *)self pairingID];
    if (NTKEqualObjects(v7, v6))
    {
      v8 = [v5 faceJSONRepresentation];
      v9 = [(NTKFaceInstanceDescriptor *)self faceJSONRepresentation];
      if (NTKEqualObjects(v9, v8))
      {
        v10 = [v5 resourceDirectory];
        v11 = [(NTKFaceInstanceDescriptor *)self resourceDirectory];
        v12 = NTKEqualObjects(v11, v10);
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NTKFaceInstanceDescriptor *)self faceJSONRepresentation];
  [v4 encodeObject:v5 forKey:@"faceJSONRepresentation"];

  v6 = [(NTKFaceInstanceDescriptor *)self resourceDirectory];
  [v4 encodeObject:v6 forKey:@"resourceDirectory"];

  v7 = [(NTKFaceInstanceDescriptor *)self pairingID];
  [v4 encodeObject:v7 forKey:@"nrDeviceUUID"];
}

- (NTKFaceInstanceDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"faceJSONRepresentation"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nrDeviceUUID"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"resourceDirectory"];

  v8 = [(NTKFaceInstanceDescriptor *)self initWithJSONRepresentation:v5 pairingID:v6 resourceDirectory:v7];
  return v8;
}

@end