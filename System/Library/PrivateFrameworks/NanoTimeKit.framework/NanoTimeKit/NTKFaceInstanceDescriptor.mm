@interface NTKFaceInstanceDescriptor
- (BOOL)isEqual:(id)equal;
- (NTKFaceInstanceDescriptor)initWithCoder:(id)coder;
- (NTKFaceInstanceDescriptor)initWithJSONRepresentation:(id)representation pairingID:(id)d resourceDirectory:(id)directory;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NTKFaceInstanceDescriptor

- (NTKFaceInstanceDescriptor)initWithJSONRepresentation:(id)representation pairingID:(id)d resourceDirectory:(id)directory
{
  representationCopy = representation;
  dCopy = d;
  directoryCopy = directory;
  v17.receiver = self;
  v17.super_class = NTKFaceInstanceDescriptor;
  v11 = [(NTKFaceInstanceDescriptor *)&v17 init];
  if (v11)
  {
    v12 = [representationCopy copy];
    faceJSONRepresentation = v11->_faceJSONRepresentation;
    v11->_faceJSONRepresentation = v12;

    objc_storeStrong(&v11->_pairingID, d);
    v14 = [directoryCopy copy];
    resourceDirectory = v11->_resourceDirectory;
    v11->_resourceDirectory = v14;
  }

  return v11;
}

- (unint64_t)hash
{
  faceJSONRepresentation = [(NTKFaceInstanceDescriptor *)self faceJSONRepresentation];
  v4 = [faceJSONRepresentation hash];
  resourceDirectory = [(NTKFaceInstanceDescriptor *)self resourceDirectory];
  v6 = [resourceDirectory hash] ^ v4;

  pairingID = [(NTKFaceInstanceDescriptor *)self pairingID];
  v8 = v6 ^ (16 * [pairingID hash]);

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    pairingID = [v5 pairingID];
    pairingID2 = [(NTKFaceInstanceDescriptor *)self pairingID];
    if (NTKEqualObjects(pairingID2, pairingID))
    {
      faceJSONRepresentation = [v5 faceJSONRepresentation];
      faceJSONRepresentation2 = [(NTKFaceInstanceDescriptor *)self faceJSONRepresentation];
      if (NTKEqualObjects(faceJSONRepresentation2, faceJSONRepresentation))
      {
        resourceDirectory = [v5 resourceDirectory];
        resourceDirectory2 = [(NTKFaceInstanceDescriptor *)self resourceDirectory];
        v12 = NTKEqualObjects(resourceDirectory2, resourceDirectory);
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  faceJSONRepresentation = [(NTKFaceInstanceDescriptor *)self faceJSONRepresentation];
  [coderCopy encodeObject:faceJSONRepresentation forKey:@"faceJSONRepresentation"];

  resourceDirectory = [(NTKFaceInstanceDescriptor *)self resourceDirectory];
  [coderCopy encodeObject:resourceDirectory forKey:@"resourceDirectory"];

  pairingID = [(NTKFaceInstanceDescriptor *)self pairingID];
  [coderCopy encodeObject:pairingID forKey:@"nrDeviceUUID"];
}

- (NTKFaceInstanceDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"faceJSONRepresentation"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nrDeviceUUID"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"resourceDirectory"];

  v8 = [(NTKFaceInstanceDescriptor *)self initWithJSONRepresentation:v5 pairingID:v6 resourceDirectory:v7];
  return v8;
}

@end