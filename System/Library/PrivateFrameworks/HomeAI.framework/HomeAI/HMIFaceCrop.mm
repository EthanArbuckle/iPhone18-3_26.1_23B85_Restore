@interface HMIFaceCrop
+ (id)faceCropFromPhotosFaceCropImageData:(id)a3;
+ (id)selectBestObservation:(id)a3 faceBoundingBoxFromPhotos:(CGRect)a4;
- (BOOL)isEqual:(id)a3;
- (CGRect)faceBoundingBox;
- (HMIFaceCrop)initWithCoder:(id)a3;
- (HMIFaceCrop)initWithUUID:(id)a3 dataRepresentation:(id)a4 dateCreated:(id)a5 faceBoundingBox:(CGRect)a6;
- (id)attributeDescriptions;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMIFaceCrop

- (HMIFaceCrop)initWithUUID:(id)a3 dataRepresentation:(id)a4 dateCreated:(id)a5 faceBoundingBox:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  if (!v13)
  {
    [HMIPersonFaceCrop initWithUUID:dataRepresentation:dateCreated:faceBoundingBox:personUUID:source:];
    goto LABEL_8;
  }

  if (!v14)
  {
LABEL_8:
    [HMIPersonFaceCrop initWithUUID:dataRepresentation:dateCreated:faceBoundingBox:personUUID:source:];
    goto LABEL_9;
  }

  v16 = v15;
  if (!v15)
  {
LABEL_9:
    v25 = [HMIPersonFaceCrop initWithUUID:dataRepresentation:dateCreated:faceBoundingBox:personUUID:source:];
    return [(HMIFaceCrop *)v25 faceCropFromPhotosFaceCropImageData:v26, v27];
  }

  v28.receiver = self;
  v28.super_class = HMIFaceCrop;
  v17 = [(HMIFaceCrop *)&v28 init];
  if (v17)
  {
    v18 = [v13 copy];
    UUID = v17->_UUID;
    v17->_UUID = v18;

    v20 = [v14 copy];
    dataRepresentation = v17->_dataRepresentation;
    v17->_dataRepresentation = v20;

    v22 = [v16 copy];
    dateCreated = v17->_dateCreated;
    v17->_dateCreated = v22;

    v17->_faceBoundingBox.origin.x = x;
    v17->_faceBoundingBox.origin.y = y;
    v17->_faceBoundingBox.size.width = width;
    v17->_faceBoundingBox.size.height = height;
  }

  return v17;
}

+ (id)faceCropFromPhotosFaceCropImageData:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v47 = 0;
  v5 = [HMIFaceDetectorVision detectFacesInImageData:v4 error:&v47];
  v6 = v47;
  if (v5 && [v5 count] == 1)
  {
    v7 = [v5 firstObject];
    [v7 unalignedBoundingBox];
    HMICGRectFlipCoordinateSpaceNormalized(v8, v9, v10, v11);
    x = v12;
    y = v14;
    width = v16;
    height = v18;

LABEL_19:
    v43 = [HMIFaceCrop alloc];
    v44 = [MEMORY[0x277CCAD78] UUID];
    v45 = [MEMORY[0x277CBEAA8] date];
    v24 = [(HMIFaceCrop *)v43 initWithUUID:v44 dataRepresentation:v4 dateCreated:v45 faceBoundingBox:x, y, width, height];

    goto LABEL_20;
  }

  [HMIFaceUtilities faceBoundingBoxFromPhotosFaceCropData:v4];
  x = v54.origin.x;
  y = v54.origin.y;
  width = v54.size.width;
  height = v54.size.height;
  if (!CGRectIsNull(v54))
  {
    if (v5 && [v5 count])
    {
      v25 = [objc_opt_class() selectBestObservation:v5 faceBoundingBoxFromPhotos:{x, y, width, height}];
      v26 = v25;
      if (v25)
      {
        [v25 unalignedBoundingBox];
        HMICGRectFlipCoordinateSpaceNormalized(v27, v28, v29, v30);
        x = v31;
        y = v32;
        width = v33;
        height = v34;
      }

      else
      {
        v39 = objc_autoreleasePoolPush();
        v40 = a1;
        v41 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v42 = HMFGetLogIdentifier();
          *buf = 138543362;
          v49 = v42;
          _os_log_impl(&dword_22D12F000, v41, OS_LOG_TYPE_ERROR, "%{public}@No detected box overlaps with photos bounding box, falling back to photos bounding box", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v39);
      }
    }

    else
    {
      v35 = objc_autoreleasePoolPush();
      v36 = a1;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = HMFGetLogIdentifier();
        *buf = 138543618;
        v49 = v38;
        v50 = 2112;
        v51 = v6;
        _os_log_impl(&dword_22D12F000, v37, OS_LOG_TYPE_ERROR, "%{public}@Error while detecting face in Photos face crop, error: %@, or no box detected, falling back to photos bounding box", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v35);
    }

    goto LABEL_19;
  }

  v20 = objc_autoreleasePoolPush();
  v21 = a1;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = HMFGetLogIdentifier();
    *buf = 138543362;
    v49 = v23;
    _os_log_impl(&dword_22D12F000, v22, OS_LOG_TYPE_ERROR, "%{public}@Error, couldn't get face box from photos data, ignoring face crop", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v20);
  v24 = 0;
LABEL_20:

  return v24;
}

- (id)attributeDescriptions
{
  v17[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMIFaceCrop *)self UUID];
  v5 = [v3 initWithName:@"UUID" value:v4];
  v17[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMIFaceCrop *)self dataRepresentation];
  v8 = [v6 initWithName:@"Data Representation" value:v7];
  v17[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [(HMIFaceCrop *)self dateCreated];
  v11 = [v9 initWithName:@"Date Created" value:v10];
  v17[2] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMIFaceCrop *)self faceBoundingBox];
  v13 = NSStringFromRect(v19);
  v14 = [v12 initWithName:@"Face Bounding Box" value:v13];
  v17[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:4];

  return v15;
}

+ (id)selectBestObservation:(id)a3 faceBoundingBoxFromPhotos:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v29;
    v13 = 0.0;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v28 + 1) + 8 * i);
        [v15 unalignedBoundingBox];
        HMICGRectFlipCoordinateSpaceNormalized(v16, v17, v18, v19);
        HMICGRectIntersectionOverUnion(v20, v21, v22, v23, x, y, width, height);
        v25 = v24;
        if (v13 < v24)
        {
          v26 = v15;

          v11 = v26;
          v13 = v25;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    v7 = [(HMIFaceCrop *)self UUID];
    v8 = [v6 UUID];
    if ([v7 isEqual:v8])
    {
      v9 = [(HMIFaceCrop *)self dataRepresentation];
      v10 = [v6 dataRepresentation];
      if ([v9 isEqualToData:v10])
      {
        v11 = [(HMIFaceCrop *)self dateCreated];
        v12 = [v6 dateCreated];
        if ([v11 isEqualToDate:v12])
        {
          [(HMIFaceCrop *)self faceBoundingBox];
          v14 = v13;
          v16 = v15;
          v18 = v17;
          v20 = v19;
          [v6 faceBoundingBox];
          v28.origin.x = v21;
          v28.origin.y = v22;
          v28.size.width = v23;
          v28.size.height = v24;
          v27.origin.x = v14;
          v27.origin.y = v16;
          v27.size.width = v18;
          v27.size.height = v20;
          v25 = CGRectEqualToRect(v27, v28);
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (unint64_t)hash
{
  v2 = [(HMIFaceCrop *)self UUID];
  v3 = [v2 hash];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(HMIFaceCrop *)self UUID];
  [v7 encodeObject:v4 forKey:@"HMIFC.ck.u"];

  v5 = [(HMIFaceCrop *)self dataRepresentation];
  [v7 encodeObject:v5 forKey:@"HMIFC.ck.dr"];

  v6 = [(HMIFaceCrop *)self dateCreated];
  [v7 encodeObject:v6 forKey:@"HMIFC.ck.dc"];

  [(HMIFaceCrop *)self faceBoundingBox];
  [v7 encodeRect:@"HMIFC.ck.fbb" forKey:?];
}

- (HMIFaceCrop)initWithCoder:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMIFC.ck.u"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMIFC.ck.dr"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMIFC.ck.dc"];
  [v4 decodeRectForKey:@"HMIFC.ck.fbb"];
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || v7 == 0)
  {
    v10 = objc_autoreleasePoolPush();
    v13 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v16 = 138544130;
      v17 = v12;
      v18 = 2112;
      v19 = v5;
      v20 = 2112;
      v21 = v6;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_22D12F000, v11, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded UUID: %@ dataRepresentation: %@ dateCreated: %@", &v16, 0x2Au);
    }

    objc_autoreleasePoolPop(v10);
    v14 = 0;
  }

  else
  {
    v13 = [(HMIFaceCrop *)self initWithUUID:v5 dataRepresentation:v6 dateCreated:v7 faceBoundingBox:?];
    v14 = v13;
  }

  return v14;
}

- (CGRect)faceBoundingBox
{
  objc_copyStruct(v6, &self->_faceBoundingBox, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end