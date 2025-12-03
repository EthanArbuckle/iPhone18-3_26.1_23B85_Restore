@interface IDSCloudKitKeyTransparencyDeviceRecord
+ (id)recordWithDeviceData:(id)data deviceMetadata:(id)metadata recordID:(id)d;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCloudKitKeyTransparencyDeviceRecord:(id)record;
- (IDSCloudKitKeyTransparencyDeviceRecord)initWithDeviceData:(id)data deviceMetadata:(id)metadata recordID:(id)d;
- (id)description;
- (unint64_t)hash;
@end

@implementation IDSCloudKitKeyTransparencyDeviceRecord

+ (id)recordWithDeviceData:(id)data deviceMetadata:(id)metadata recordID:(id)d
{
  dCopy = d;
  metadataCopy = metadata;
  dataCopy = data;
  v11 = [[self alloc] initWithDeviceData:dataCopy deviceMetadata:metadataCopy recordID:dCopy];

  return v11;
}

- (IDSCloudKitKeyTransparencyDeviceRecord)initWithDeviceData:(id)data deviceMetadata:(id)metadata recordID:(id)d
{
  dataCopy = data;
  metadataCopy = metadata;
  dCopy = d;
  v19.receiver = self;
  v19.super_class = IDSCloudKitKeyTransparencyDeviceRecord;
  v11 = [(IDSCloudKitKeyTransparencyDeviceRecord *)&v19 init];
  if (v11)
  {
    v12 = [dataCopy copy];
    deviceData = v11->_deviceData;
    v11->_deviceData = v12;

    v14 = [metadataCopy copy];
    deviceMetadata = v11->_deviceMetadata;
    v11->_deviceMetadata = v14;

    v16 = [dCopy copy];
    recordID = v11->_recordID;
    v11->_recordID = v16;
  }

  return v11;
}

- (id)description
{
  v3 = objc_opt_class();
  deviceData = [(IDSCloudKitKeyTransparencyDeviceRecord *)self deviceData];
  deviceMetadata = [(IDSCloudKitKeyTransparencyDeviceRecord *)self deviceMetadata];
  recordID = [(IDSCloudKitKeyTransparencyDeviceRecord *)self recordID];
  v7 = [NSString stringWithFormat:@"<%@: %p deviceData: %@, deviceMetadata: %@ recordID: %@>", v3, self, deviceData, deviceMetadata, recordID];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(IDSCloudKitKeyTransparencyDeviceRecord *)self isEqualToCloudKitKeyTransparencyDeviceRecord:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToCloudKitKeyTransparencyDeviceRecord:(id)record
{
  recordCopy = record;
  v7 = recordCopy;
  if (self == recordCopy)
  {
    v10 = 1;
  }

  else
  {
    if (recordCopy)
    {
      deviceData = [(IDSCloudKitKeyTransparencyDeviceRecord *)self deviceData];
      deviceData2 = [(IDSCloudKitKeyTransparencyDeviceRecord *)v7 deviceData];
      if (deviceData != deviceData2)
      {
        deviceData3 = [(IDSCloudKitKeyTransparencyDeviceRecord *)self deviceData];
        deviceData4 = [(IDSCloudKitKeyTransparencyDeviceRecord *)v7 deviceData];
        if (![deviceData3 isEqual:deviceData4])
        {
          v10 = 0;
          goto LABEL_18;
        }
      }

      deviceMetadata = [(IDSCloudKitKeyTransparencyDeviceRecord *)self deviceMetadata];
      deviceMetadata2 = [(IDSCloudKitKeyTransparencyDeviceRecord *)v7 deviceMetadata];
      if (deviceMetadata != deviceMetadata2)
      {
        deviceMetadata3 = [(IDSCloudKitKeyTransparencyDeviceRecord *)self deviceMetadata];
        deviceMetadata4 = [(IDSCloudKitKeyTransparencyDeviceRecord *)v7 deviceMetadata];
        if (![deviceMetadata3 isEqual:deviceMetadata4])
        {
          v10 = 0;
          goto LABEL_16;
        }

        v26 = deviceMetadata4;
        v27 = deviceMetadata3;
      }

      recordID = [(IDSCloudKitKeyTransparencyDeviceRecord *)self recordID];
      recordID2 = [(IDSCloudKitKeyTransparencyDeviceRecord *)v7 recordID];
      v17 = recordID2;
      if (recordID == recordID2)
      {

        v10 = 1;
      }

      else
      {
        [(IDSCloudKitKeyTransparencyDeviceRecord *)self recordID];
        v18 = v25 = deviceData3;
        [(IDSCloudKitKeyTransparencyDeviceRecord *)v7 recordID];
        v24 = deviceMetadata;
        v19 = deviceData2;
        v20 = deviceData;
        v22 = v21 = deviceData4;
        v10 = [v18 isEqual:v22];

        deviceData4 = v21;
        deviceData = v20;
        deviceData2 = v19;
        deviceMetadata = v24;

        deviceData3 = v25;
      }

      deviceMetadata4 = v26;
      deviceMetadata3 = v27;
      if (deviceMetadata == deviceMetadata2)
      {
LABEL_17:

        if (deviceData == deviceData2)
        {
LABEL_19:

          goto LABEL_20;
        }

LABEL_18:

        goto LABEL_19;
      }

LABEL_16:

      goto LABEL_17;
    }

    v10 = 0;
  }

LABEL_20:

  return v10;
}

- (unint64_t)hash
{
  deviceData = [(IDSCloudKitKeyTransparencyDeviceRecord *)self deviceData];
  v4 = [deviceData hash];
  deviceMetadata = [(IDSCloudKitKeyTransparencyDeviceRecord *)self deviceMetadata];
  v6 = [deviceMetadata hash] ^ v4;
  recordID = [(IDSCloudKitKeyTransparencyDeviceRecord *)self recordID];
  v8 = [recordID hash];

  return v6 ^ v8;
}

@end