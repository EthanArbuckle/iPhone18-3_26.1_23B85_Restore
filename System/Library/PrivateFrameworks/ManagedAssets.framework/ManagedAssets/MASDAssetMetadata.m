@interface MASDAssetMetadata
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualForAllFields:(id)a3;
- (MASDAssetMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initAssetMetadataWithInfoDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MASDAssetMetadata

- (id)initAssetMetadataWithInfoDictionary:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = MASDAssetMetadata;
  v5 = [(MASDAssetMetadata *)&v32 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"_type"];
    v5->_type = [v6 unsignedIntegerValue];

    v7 = [v4 objectForKey:@"_label"];
    label = v5->_label;
    v5->_label = v7;

    v9 = [v4 objectForKey:@"_creationTime"];
    creationTime = v5->_creationTime;
    v5->_creationTime = v9;

    v11 = [v4 objectForKey:@"_lastUpdatedTime"];
    lastUpdatedTime = v5->_lastUpdatedTime;
    v5->_lastUpdatedTime = v11;

    v13 = [v4 objectForKey:@"_lastUpdatedOSVersion"];
    lastUpdatedOSVersion = v5->_lastUpdatedOSVersion;
    v5->_lastUpdatedOSVersion = v13;

    v15 = [v4 objectForKey:@"_lastUpdatedAlgorithmVersion"];
    lastUpdatedAlgorithmVersion = v5->_lastUpdatedAlgorithmVersion;
    v5->_lastUpdatedAlgorithmVersion = v15;

    v17 = [v4 objectForKey:@"_sessionIdentifier"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v17;

    v19 = [v4 objectForKey:@"_participantIdentifier"];
    participantIdentifier = v5->_participantIdentifier;
    v5->_participantIdentifier = v19;

    v21 = [v4 objectForKey:@"_syncOption"];
    v5->_syncOption = [v21 unsignedIntegerValue];

    v22 = [v4 objectForKey:@"_ckrecordIdentifier"];
    ckrecordIdentifier = v5->_ckrecordIdentifier;
    v5->_ckrecordIdentifier = v22;

    v24 = [v4 objectForKey:@"_assetState"];
    v5->_assetState = [v24 unsignedIntegerValue];

    v25 = [v4 objectForKey:@"_enrollmentIdentifier"];
    enrollmentIdentifier = v5->_enrollmentIdentifier;
    v5->_enrollmentIdentifier = v25;

    v27 = [v4 objectForKey:@"_deviceIdentifier"];
    deviceIdentifier = v5->_deviceIdentifier;
    v5->_deviceIdentifier = v27;

    v29 = [v4 objectForKey:@"_deviceName"];
    deviceName = v5->_deviceName;
    v5->_deviceName = v29;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInteger:type forKey:@"_type"];
  [v5 encodeObject:self->_label forKey:@"_label"];
  [v5 encodeObject:self->_creationTime forKey:@"_creationTime"];
  [v5 encodeObject:self->_lastUpdatedTime forKey:@"_lastUpdatedTime"];
  [v5 encodeObject:self->_lastUpdatedOSVersion forKey:@"_lastUpdatedOSVersion"];
  [v5 encodeObject:self->_lastUpdatedAlgorithmVersion forKey:@"_lastUpdatedAlgorithmVersion"];
  [v5 encodeObject:self->_sessionIdentifier forKey:@"_sessionIdentifier"];
  [v5 encodeObject:self->_participantIdentifier forKey:@"_participantIdentifier"];
  [v5 encodeInteger:self->_syncOption forKey:@"_syncOption"];
  [v5 encodeObject:self->_ckrecordIdentifier forKey:@"_ckrecordIdentifier"];
  [v5 encodeInteger:self->_assetState forKey:@"_assetState"];
  [v5 encodeObject:self->_enrollmentIdentifier forKey:@"_enrollmentIdentifier"];
  [v5 encodeObject:self->_deviceIdentifier forKey:@"_deviceIdentifier"];
  [v5 encodeObject:self->_deviceName forKey:@"_deviceName"];
}

- (MASDAssetMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = MASDAssetMetadata;
  v5 = [(MASDAssetMetadata *)&v29 init];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"_type"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_label"];
    label = v5->_label;
    v5->_label = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_creationTime"];
    creationTime = v5->_creationTime;
    v5->_creationTime = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_lastUpdatedTime"];
    lastUpdatedTime = v5->_lastUpdatedTime;
    v5->_lastUpdatedTime = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_lastUpdatedOSVersion"];
    lastUpdatedOSVersion = v5->_lastUpdatedOSVersion;
    v5->_lastUpdatedOSVersion = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_lastUpdatedAlgorithmVersion"];
    lastUpdatedAlgorithmVersion = v5->_lastUpdatedAlgorithmVersion;
    v5->_lastUpdatedAlgorithmVersion = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_sessionIdentifier"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_participantIdentifier"];
    participantIdentifier = v5->_participantIdentifier;
    v5->_participantIdentifier = v18;

    v5->_syncOption = [v4 decodeIntegerForKey:@"_syncOption"];
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_ckrecordIdentifier"];
    ckrecordIdentifier = v5->_ckrecordIdentifier;
    v5->_ckrecordIdentifier = v20;

    v5->_assetState = [v4 decodeIntegerForKey:@"_assetState"];
    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_enrollmentIdentifier"];
    enrollmentIdentifier = v5->_enrollmentIdentifier;
    v5->_enrollmentIdentifier = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_deviceIdentifier"];
    deviceIdentifier = v5->_deviceIdentifier;
    v5->_deviceIdentifier = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_deviceName"];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(MASDAssetMetadata *)self isEqualForAllFields:v5];
  }

  return v6;
}

- (BOOL)isEqualForAllFields:(id)a3
{
  v4 = a3;
  v5 = [(MASDAssetMetadata *)self type];
  if (v5 != [v4 type])
  {
    goto LABEL_74;
  }

  v6 = [(MASDAssetMetadata *)self creationTime];
  v7 = [v4 creationTime];
  v8 = [v6 isEqualToDate:v7];

  if (!v8)
  {
    goto LABEL_74;
  }

  v9 = [(MASDAssetMetadata *)self lastUpdatedTime];
  v10 = [v4 lastUpdatedTime];
  v11 = [v9 isEqualToDate:v10];

  if (!v11)
  {
    goto LABEL_74;
  }

  v12 = [(MASDAssetMetadata *)self lastUpdatedOSVersion];
  v13 = [v4 lastUpdatedOSVersion];
  v14 = [v12 isEqualToString:v13];

  if (!v14)
  {
    goto LABEL_74;
  }

  v15 = [(MASDAssetMetadata *)self label];
  if (!v15 || ([v4 label], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v16 = [(MASDAssetMetadata *)self label];
    if (v16)
    {

      if (v15)
      {
      }
    }

    else
    {
      v17 = [v4 label];

      if (v15)
      {
      }

      if (v17)
      {
        goto LABEL_74;
      }
    }

    v18 = [(MASDAssetMetadata *)self label];
    if (v18)
    {
      v19 = v18;
      v20 = [v4 label];
      if (v20)
      {
        v13 = v20;
        v21 = [(MASDAssetMetadata *)self label];
        v22 = [v4 label];
        v23 = [v21 isEqualToString:v22];

        if (!v23)
        {
          goto LABEL_74;
        }
      }

      else
      {
      }
    }

    v15 = [(MASDAssetMetadata *)self lastUpdatedAlgorithmVersion];
    if (!v15 || ([v4 lastUpdatedAlgorithmVersion], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v24 = [(MASDAssetMetadata *)self lastUpdatedAlgorithmVersion];
      if (v24)
      {

        if (v15)
        {
        }
      }

      else
      {
        v25 = [v4 lastUpdatedAlgorithmVersion];

        if (v15)
        {
        }

        if (v25)
        {
          goto LABEL_74;
        }
      }

      v26 = [(MASDAssetMetadata *)self lastUpdatedAlgorithmVersion];
      if (v26)
      {
        v27 = v26;
        v28 = [v4 lastUpdatedAlgorithmVersion];
        if (v28)
        {
          v13 = v28;
          v29 = [(MASDAssetMetadata *)self lastUpdatedAlgorithmVersion];
          v30 = [v4 lastUpdatedAlgorithmVersion];
          v31 = [v29 isEqualToString:v30];

          if (!v31)
          {
            goto LABEL_74;
          }
        }

        else
        {
        }
      }

      v15 = [(MASDAssetMetadata *)self participantIdentifier];
      if (!v15 || ([v4 participantIdentifier], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v32 = [(MASDAssetMetadata *)self participantIdentifier];
        if (v32)
        {

          if (v15)
          {
          }
        }

        else
        {
          v33 = [v4 participantIdentifier];

          if (v15)
          {
          }

          if (v33)
          {
            goto LABEL_74;
          }
        }

        v34 = [(MASDAssetMetadata *)self participantIdentifier];
        if (v34)
        {
          v35 = v34;
          v36 = [v4 participantIdentifier];
          if (v36)
          {
            v13 = v36;
            v37 = [(MASDAssetMetadata *)self participantIdentifier];
            v38 = [v4 participantIdentifier];
            v39 = [v37 isEqualToString:v38];

            if (!v39)
            {
              goto LABEL_74;
            }
          }

          else
          {
          }
        }

        v15 = [(MASDAssetMetadata *)self sessionIdentifier];
        if (!v15 || ([v4 sessionIdentifier], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v41 = [(MASDAssetMetadata *)self sessionIdentifier];
          if (v41)
          {

            if (v15)
            {
            }
          }

          else
          {
            v42 = [v4 sessionIdentifier];

            if (v15)
            {
            }

            if (v42)
            {
              goto LABEL_74;
            }
          }

          v43 = [(MASDAssetMetadata *)self sessionIdentifier];
          if (v43)
          {
            v44 = v43;
            v45 = [v4 sessionIdentifier];
            if (v45)
            {
              v46 = v45;
              v47 = [(MASDAssetMetadata *)self sessionIdentifier];
              v48 = [v4 sessionIdentifier];
              v49 = [v47 isEqualToString:v48];

              if (!v49)
              {
                goto LABEL_74;
              }
            }

            else
            {
            }
          }

          v50 = [(MASDAssetMetadata *)self syncOption];
          if (v50 == [v4 syncOption])
          {
            v51 = [(MASDAssetMetadata *)self ckrecordIdentifier];
            if (v51)
            {
              v52 = v51;
              v53 = [v4 ckrecordIdentifier];
              if (v53)
              {
                v54 = v53;
                v55 = [(MASDAssetMetadata *)self ckrecordIdentifier];
                v56 = [v4 ckrecordIdentifier];
                v57 = [v55 isEqualToString:v56];

                if (!v57)
                {
                  goto LABEL_74;
                }
              }

              else
              {
              }
            }

            v58 = [(MASDAssetMetadata *)self assetState];
            if (v58 == [v4 assetState])
            {
              v59 = [(MASDAssetMetadata *)self enrollmentIdentifier];
              if (v59)
              {
                v60 = v59;
                v61 = [v4 enrollmentIdentifier];
                if (v61)
                {
                  v62 = v61;
                  v63 = [(MASDAssetMetadata *)self enrollmentIdentifier];
                  v64 = [v4 enrollmentIdentifier];
                  v65 = [v63 isEqualToString:v64];

                  if (!v65)
                  {
                    goto LABEL_74;
                  }
                }

                else
                {
                }
              }

              v66 = [(MASDAssetMetadata *)self deviceIdentifier];
              if (v66)
              {
                v67 = v66;
                v68 = [v4 deviceIdentifier];
                if (v68)
                {
                  v69 = v68;
                  v70 = [(MASDAssetMetadata *)self deviceIdentifier];
                  v71 = [v4 deviceIdentifier];
                  v72 = [v70 isEqualToString:v71];

                  if (!v72)
                  {
                    goto LABEL_74;
                  }
                }

                else
                {
                }
              }

              v74 = [(MASDAssetMetadata *)self deviceName];
              if (!v74)
              {
                v40 = 1;
                goto LABEL_75;
              }

              v15 = v74;
              v75 = [v4 deviceName];
              if (v75)
              {
                v76 = v75;
                v77 = [(MASDAssetMetadata *)self deviceName];
                v78 = [v4 deviceName];
                v40 = [v77 isEqualToString:v78];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[1] = self->_type;
  v6 = [(NSString *)self->_label copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSDate *)self->_creationTime copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSDate *)self->_lastUpdatedTime copyWithZone:a3];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(NSString *)self->_lastUpdatedOSVersion copyWithZone:a3];
  v13 = v5[5];
  v5[5] = v12;

  v14 = [(NSString *)self->_lastUpdatedAlgorithmVersion copyWithZone:a3];
  v15 = v5[6];
  v5[6] = v14;

  v16 = [(NSString *)self->_sessionIdentifier copyWithZone:a3];
  v17 = v5[7];
  v5[7] = v16;

  v18 = [(NSString *)self->_participantIdentifier copyWithZone:a3];
  v19 = v5[8];
  v5[8] = v18;

  v5[9] = self->_syncOption;
  v20 = [(NSString *)self->_ckrecordIdentifier copyWithZone:a3];
  v21 = v5[10];
  v5[10] = v20;

  v5[11] = self->_assetState;
  v22 = [(NSString *)self->_enrollmentIdentifier copyWithZone:a3];
  v23 = v5[12];
  v5[12] = v22;

  v24 = [(NSString *)self->_deviceIdentifier copyWithZone:a3];
  v25 = v5[13];
  v5[13] = v24;

  v26 = [(NSString *)self->_deviceName copyWithZone:a3];
  v27 = v5[14];
  v5[14] = v26;

  return v5;
}

@end