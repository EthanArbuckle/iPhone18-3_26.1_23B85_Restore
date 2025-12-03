@interface MASDAssetMetadata
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualForAllFields:(id)fields;
- (MASDAssetMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initAssetMetadataWithInfoDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MASDAssetMetadata

- (id)initAssetMetadataWithInfoDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v32.receiver = self;
  v32.super_class = MASDAssetMetadata;
  v5 = [(MASDAssetMetadata *)&v32 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"_type"];
    v5->_type = [v6 unsignedIntegerValue];

    v7 = [dictionaryCopy objectForKey:@"_label"];
    label = v5->_label;
    v5->_label = v7;

    v9 = [dictionaryCopy objectForKey:@"_creationTime"];
    creationTime = v5->_creationTime;
    v5->_creationTime = v9;

    v11 = [dictionaryCopy objectForKey:@"_lastUpdatedTime"];
    lastUpdatedTime = v5->_lastUpdatedTime;
    v5->_lastUpdatedTime = v11;

    v13 = [dictionaryCopy objectForKey:@"_lastUpdatedOSVersion"];
    lastUpdatedOSVersion = v5->_lastUpdatedOSVersion;
    v5->_lastUpdatedOSVersion = v13;

    v15 = [dictionaryCopy objectForKey:@"_lastUpdatedAlgorithmVersion"];
    lastUpdatedAlgorithmVersion = v5->_lastUpdatedAlgorithmVersion;
    v5->_lastUpdatedAlgorithmVersion = v15;

    v17 = [dictionaryCopy objectForKey:@"_sessionIdentifier"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v17;

    v19 = [dictionaryCopy objectForKey:@"_participantIdentifier"];
    participantIdentifier = v5->_participantIdentifier;
    v5->_participantIdentifier = v19;

    v21 = [dictionaryCopy objectForKey:@"_syncOption"];
    v5->_syncOption = [v21 unsignedIntegerValue];

    v22 = [dictionaryCopy objectForKey:@"_ckrecordIdentifier"];
    ckrecordIdentifier = v5->_ckrecordIdentifier;
    v5->_ckrecordIdentifier = v22;

    v24 = [dictionaryCopy objectForKey:@"_assetState"];
    v5->_assetState = [v24 unsignedIntegerValue];

    v25 = [dictionaryCopy objectForKey:@"_enrollmentIdentifier"];
    enrollmentIdentifier = v5->_enrollmentIdentifier;
    v5->_enrollmentIdentifier = v25;

    v27 = [dictionaryCopy objectForKey:@"_deviceIdentifier"];
    deviceIdentifier = v5->_deviceIdentifier;
    v5->_deviceIdentifier = v27;

    v29 = [dictionaryCopy objectForKey:@"_deviceName"];
    deviceName = v5->_deviceName;
    v5->_deviceName = v29;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"_type"];
  [coderCopy encodeObject:self->_label forKey:@"_label"];
  [coderCopy encodeObject:self->_creationTime forKey:@"_creationTime"];
  [coderCopy encodeObject:self->_lastUpdatedTime forKey:@"_lastUpdatedTime"];
  [coderCopy encodeObject:self->_lastUpdatedOSVersion forKey:@"_lastUpdatedOSVersion"];
  [coderCopy encodeObject:self->_lastUpdatedAlgorithmVersion forKey:@"_lastUpdatedAlgorithmVersion"];
  [coderCopy encodeObject:self->_sessionIdentifier forKey:@"_sessionIdentifier"];
  [coderCopy encodeObject:self->_participantIdentifier forKey:@"_participantIdentifier"];
  [coderCopy encodeInteger:self->_syncOption forKey:@"_syncOption"];
  [coderCopy encodeObject:self->_ckrecordIdentifier forKey:@"_ckrecordIdentifier"];
  [coderCopy encodeInteger:self->_assetState forKey:@"_assetState"];
  [coderCopy encodeObject:self->_enrollmentIdentifier forKey:@"_enrollmentIdentifier"];
  [coderCopy encodeObject:self->_deviceIdentifier forKey:@"_deviceIdentifier"];
  [coderCopy encodeObject:self->_deviceName forKey:@"_deviceName"];
}

- (MASDAssetMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = MASDAssetMetadata;
  v5 = [(MASDAssetMetadata *)&v29 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"_type"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_label"];
    label = v5->_label;
    v5->_label = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_creationTime"];
    creationTime = v5->_creationTime;
    v5->_creationTime = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_lastUpdatedTime"];
    lastUpdatedTime = v5->_lastUpdatedTime;
    v5->_lastUpdatedTime = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_lastUpdatedOSVersion"];
    lastUpdatedOSVersion = v5->_lastUpdatedOSVersion;
    v5->_lastUpdatedOSVersion = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_lastUpdatedAlgorithmVersion"];
    lastUpdatedAlgorithmVersion = v5->_lastUpdatedAlgorithmVersion;
    v5->_lastUpdatedAlgorithmVersion = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_sessionIdentifier"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_participantIdentifier"];
    participantIdentifier = v5->_participantIdentifier;
    v5->_participantIdentifier = v18;

    v5->_syncOption = [coderCopy decodeIntegerForKey:@"_syncOption"];
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_ckrecordIdentifier"];
    ckrecordIdentifier = v5->_ckrecordIdentifier;
    v5->_ckrecordIdentifier = v20;

    v5->_assetState = [coderCopy decodeIntegerForKey:@"_assetState"];
    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_enrollmentIdentifier"];
    enrollmentIdentifier = v5->_enrollmentIdentifier;
    v5->_enrollmentIdentifier = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_deviceIdentifier"];
    deviceIdentifier = v5->_deviceIdentifier;
    v5->_deviceIdentifier = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_deviceName"];
    deviceName = v5->_deviceName;
    v5->_deviceName = v26;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  label = self->_label;
  v5 = MASDConvertAssetTypeToString(self->_type);
  v6 = *&self->_lastUpdatedOSVersion;
  v7 = *&self->_syncOption;
  return [v3 stringWithFormat:@"Metadata:{Label: %@, Type: %s, Create: %@, Update: %@, OS: %@, Algorithm: %@, CoP-Session: %@, CoP-Participant: %@, SyncOption: %ld, CKRecordID: %@, assetState: %ld, Enrollment Identifier: %@, Device Identifier: %@, Device Name: %@} ", label, v5, self->_creationTime, self->_lastUpdatedTime, self->_lastUpdatedOSVersion, self->_lastUpdatedAlgorithmVersion, self->_sessionIdentifier, self->_participantIdentifier, self->_syncOption, self->_ckrecordIdentifier, self->_assetState, self->_enrollmentIdentifier, self->_deviceIdentifier, self->_deviceName];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(MASDAssetMetadata *)self isEqualForAllFields:v5];
  }

  return v6;
}

- (BOOL)isEqualForAllFields:(id)fields
{
  fieldsCopy = fields;
  type = [(MASDAssetMetadata *)self type];
  if (type != [fieldsCopy type])
  {
    goto LABEL_74;
  }

  creationTime = [(MASDAssetMetadata *)self creationTime];
  creationTime2 = [fieldsCopy creationTime];
  v8 = [creationTime isEqualToDate:creationTime2];

  if (!v8)
  {
    goto LABEL_74;
  }

  lastUpdatedTime = [(MASDAssetMetadata *)self lastUpdatedTime];
  lastUpdatedTime2 = [fieldsCopy lastUpdatedTime];
  v11 = [lastUpdatedTime isEqualToDate:lastUpdatedTime2];

  if (!v11)
  {
    goto LABEL_74;
  }

  lastUpdatedOSVersion = [(MASDAssetMetadata *)self lastUpdatedOSVersion];
  lastUpdatedOSVersion2 = [fieldsCopy lastUpdatedOSVersion];
  v14 = [lastUpdatedOSVersion isEqualToString:lastUpdatedOSVersion2];

  if (!v14)
  {
    goto LABEL_74;
  }

  label = [(MASDAssetMetadata *)self label];
  if (!label || ([fieldsCopy label], (lastUpdatedOSVersion2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    label2 = [(MASDAssetMetadata *)self label];
    if (label2)
    {

      if (label)
      {
      }
    }

    else
    {
      label3 = [fieldsCopy label];

      if (label)
      {
      }

      if (label3)
      {
        goto LABEL_74;
      }
    }

    label4 = [(MASDAssetMetadata *)self label];
    if (label4)
    {
      v19 = label4;
      label5 = [fieldsCopy label];
      if (label5)
      {
        lastUpdatedOSVersion2 = label5;
        label6 = [(MASDAssetMetadata *)self label];
        label7 = [fieldsCopy label];
        v23 = [label6 isEqualToString:label7];

        if (!v23)
        {
          goto LABEL_74;
        }
      }

      else
      {
      }
    }

    label = [(MASDAssetMetadata *)self lastUpdatedAlgorithmVersion];
    if (!label || ([fieldsCopy lastUpdatedAlgorithmVersion], (lastUpdatedOSVersion2 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      lastUpdatedAlgorithmVersion = [(MASDAssetMetadata *)self lastUpdatedAlgorithmVersion];
      if (lastUpdatedAlgorithmVersion)
      {

        if (label)
        {
        }
      }

      else
      {
        lastUpdatedAlgorithmVersion2 = [fieldsCopy lastUpdatedAlgorithmVersion];

        if (label)
        {
        }

        if (lastUpdatedAlgorithmVersion2)
        {
          goto LABEL_74;
        }
      }

      lastUpdatedAlgorithmVersion3 = [(MASDAssetMetadata *)self lastUpdatedAlgorithmVersion];
      if (lastUpdatedAlgorithmVersion3)
      {
        v27 = lastUpdatedAlgorithmVersion3;
        lastUpdatedAlgorithmVersion4 = [fieldsCopy lastUpdatedAlgorithmVersion];
        if (lastUpdatedAlgorithmVersion4)
        {
          lastUpdatedOSVersion2 = lastUpdatedAlgorithmVersion4;
          lastUpdatedAlgorithmVersion5 = [(MASDAssetMetadata *)self lastUpdatedAlgorithmVersion];
          lastUpdatedAlgorithmVersion6 = [fieldsCopy lastUpdatedAlgorithmVersion];
          v31 = [lastUpdatedAlgorithmVersion5 isEqualToString:lastUpdatedAlgorithmVersion6];

          if (!v31)
          {
            goto LABEL_74;
          }
        }

        else
        {
        }
      }

      label = [(MASDAssetMetadata *)self participantIdentifier];
      if (!label || ([fieldsCopy participantIdentifier], (lastUpdatedOSVersion2 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        participantIdentifier = [(MASDAssetMetadata *)self participantIdentifier];
        if (participantIdentifier)
        {

          if (label)
          {
          }
        }

        else
        {
          participantIdentifier2 = [fieldsCopy participantIdentifier];

          if (label)
          {
          }

          if (participantIdentifier2)
          {
            goto LABEL_74;
          }
        }

        participantIdentifier3 = [(MASDAssetMetadata *)self participantIdentifier];
        if (participantIdentifier3)
        {
          v35 = participantIdentifier3;
          participantIdentifier4 = [fieldsCopy participantIdentifier];
          if (participantIdentifier4)
          {
            lastUpdatedOSVersion2 = participantIdentifier4;
            participantIdentifier5 = [(MASDAssetMetadata *)self participantIdentifier];
            participantIdentifier6 = [fieldsCopy participantIdentifier];
            v39 = [participantIdentifier5 isEqualToString:participantIdentifier6];

            if (!v39)
            {
              goto LABEL_74;
            }
          }

          else
          {
          }
        }

        label = [(MASDAssetMetadata *)self sessionIdentifier];
        if (!label || ([fieldsCopy sessionIdentifier], (lastUpdatedOSVersion2 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          sessionIdentifier = [(MASDAssetMetadata *)self sessionIdentifier];
          if (sessionIdentifier)
          {

            if (label)
            {
            }
          }

          else
          {
            sessionIdentifier2 = [fieldsCopy sessionIdentifier];

            if (label)
            {
            }

            if (sessionIdentifier2)
            {
              goto LABEL_74;
            }
          }

          sessionIdentifier3 = [(MASDAssetMetadata *)self sessionIdentifier];
          if (sessionIdentifier3)
          {
            v44 = sessionIdentifier3;
            sessionIdentifier4 = [fieldsCopy sessionIdentifier];
            if (sessionIdentifier4)
            {
              v46 = sessionIdentifier4;
              sessionIdentifier5 = [(MASDAssetMetadata *)self sessionIdentifier];
              sessionIdentifier6 = [fieldsCopy sessionIdentifier];
              v49 = [sessionIdentifier5 isEqualToString:sessionIdentifier6];

              if (!v49)
              {
                goto LABEL_74;
              }
            }

            else
            {
            }
          }

          syncOption = [(MASDAssetMetadata *)self syncOption];
          if (syncOption == [fieldsCopy syncOption])
          {
            ckrecordIdentifier = [(MASDAssetMetadata *)self ckrecordIdentifier];
            if (ckrecordIdentifier)
            {
              v52 = ckrecordIdentifier;
              ckrecordIdentifier2 = [fieldsCopy ckrecordIdentifier];
              if (ckrecordIdentifier2)
              {
                v54 = ckrecordIdentifier2;
                ckrecordIdentifier3 = [(MASDAssetMetadata *)self ckrecordIdentifier];
                ckrecordIdentifier4 = [fieldsCopy ckrecordIdentifier];
                v57 = [ckrecordIdentifier3 isEqualToString:ckrecordIdentifier4];

                if (!v57)
                {
                  goto LABEL_74;
                }
              }

              else
              {
              }
            }

            assetState = [(MASDAssetMetadata *)self assetState];
            if (assetState == [fieldsCopy assetState])
            {
              enrollmentIdentifier = [(MASDAssetMetadata *)self enrollmentIdentifier];
              if (enrollmentIdentifier)
              {
                v60 = enrollmentIdentifier;
                enrollmentIdentifier2 = [fieldsCopy enrollmentIdentifier];
                if (enrollmentIdentifier2)
                {
                  v62 = enrollmentIdentifier2;
                  enrollmentIdentifier3 = [(MASDAssetMetadata *)self enrollmentIdentifier];
                  enrollmentIdentifier4 = [fieldsCopy enrollmentIdentifier];
                  v65 = [enrollmentIdentifier3 isEqualToString:enrollmentIdentifier4];

                  if (!v65)
                  {
                    goto LABEL_74;
                  }
                }

                else
                {
                }
              }

              deviceIdentifier = [(MASDAssetMetadata *)self deviceIdentifier];
              if (deviceIdentifier)
              {
                v67 = deviceIdentifier;
                deviceIdentifier2 = [fieldsCopy deviceIdentifier];
                if (deviceIdentifier2)
                {
                  v69 = deviceIdentifier2;
                  deviceIdentifier3 = [(MASDAssetMetadata *)self deviceIdentifier];
                  deviceIdentifier4 = [fieldsCopy deviceIdentifier];
                  v72 = [deviceIdentifier3 isEqualToString:deviceIdentifier4];

                  if (!v72)
                  {
                    goto LABEL_74;
                  }
                }

                else
                {
                }
              }

              deviceName = [(MASDAssetMetadata *)self deviceName];
              if (!deviceName)
              {
                v40 = 1;
                goto LABEL_75;
              }

              label = deviceName;
              deviceName2 = [fieldsCopy deviceName];
              if (deviceName2)
              {
                v76 = deviceName2;
                deviceName3 = [(MASDAssetMetadata *)self deviceName];
                deviceName4 = [fieldsCopy deviceName];
                v40 = [deviceName3 isEqualToString:deviceName4];
              }

              else
              {
                v40 = 1;
              }

              goto LABEL_47;
            }
          }

LABEL_74:
          v40 = 0;
          goto LABEL_75;
        }
      }
    }
  }

  v40 = 0;
LABEL_47:

LABEL_75:
  return v40 & 1;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[1] = self->_type;
  v6 = [(NSString *)self->_label copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSDate *)self->_creationTime copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSDate *)self->_lastUpdatedTime copyWithZone:zone];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(NSString *)self->_lastUpdatedOSVersion copyWithZone:zone];
  v13 = v5[5];
  v5[5] = v12;

  v14 = [(NSString *)self->_lastUpdatedAlgorithmVersion copyWithZone:zone];
  v15 = v5[6];
  v5[6] = v14;

  v16 = [(NSString *)self->_sessionIdentifier copyWithZone:zone];
  v17 = v5[7];
  v5[7] = v16;

  v18 = [(NSString *)self->_participantIdentifier copyWithZone:zone];
  v19 = v5[8];
  v5[8] = v18;

  v5[9] = self->_syncOption;
  v20 = [(NSString *)self->_ckrecordIdentifier copyWithZone:zone];
  v21 = v5[10];
  v5[10] = v20;

  v5[11] = self->_assetState;
  v22 = [(NSString *)self->_enrollmentIdentifier copyWithZone:zone];
  v23 = v5[12];
  v5[12] = v22;

  v24 = [(NSString *)self->_deviceIdentifier copyWithZone:zone];
  v25 = v5[13];
  v5[13] = v24;

  v26 = [(NSString *)self->_deviceName copyWithZone:zone];
  v27 = v5[14];
  v5[14] = v26;

  return v5;
}

@end