@interface MASDAssetDescriptor
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualForAllFields:(id)a3;
- (MASDAssetDescriptor)initWithCoder:(id)a3;
- (id)initDescriptorWithOptions:(id)a3 withData:(id)a4 error:(id *)a5;
- (id)initDescriptorWithType:(unint64_t)a3 withLabel:(id)a4 withData:(id)a5 withVersion:(id)a6;
- (id)initDescriptorWithType:(unint64_t)a3 withLabel:(id)a4 withData:(id)a5 withVersion:(id)a6 withSyncOption:(unint64_t)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MASDAssetDescriptor

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInteger:type forKey:@"_type"];
  [v5 encodeObject:self->_data forKey:@"_data"];
  [v5 encodeObject:self->_label forKey:@"_label"];
  [v5 encodeObject:self->_algorithmVersion forKey:@"_algorithmVersion"];
  [v5 encodeInteger:self->_syncOption forKey:@"_syncOption"];
  [v5 encodeObject:self->_enrollmentIdentifier forKey:@"_enrollmentIdentifier"];
  [v5 encodeObject:self->_creatorAttest forKey:@"_creatorAttest"];
  [v5 encodeObject:self->_serverAttest forKey:@"_serverAttest"];
  [v5 encodeObject:self->_deviceIdentifier forKey:@"_deviceIdentifier"];
  [v5 encodeObject:self->_deviceName forKey:@"_deviceName"];
}

- (MASDAssetDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = MASDAssetDescriptor;
  v5 = [(MASDAssetDescriptor *)&v23 init];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"_type"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_data"];
    data = v5->_data;
    v5->_data = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_label"];
    label = v5->_label;
    v5->_label = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_algorithmVersion"];
    algorithmVersion = v5->_algorithmVersion;
    v5->_algorithmVersion = v10;

    v5->_syncOption = [v4 decodeIntegerForKey:@"_syncOption"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_enrollmentIdentifier"];
    enrollmentIdentifier = v5->_enrollmentIdentifier;
    v5->_enrollmentIdentifier = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_creatorAttest"];
    creatorAttest = v5->_creatorAttest;
    v5->_creatorAttest = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_serverAttest"];
    serverAttest = v5->_serverAttest;
    v5->_serverAttest = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_deviceIdentifier"];
    deviceIdentifier = v5->_deviceIdentifier;
    v5->_deviceIdentifier = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_deviceName"];
    deviceName = v5->_deviceName;
    v5->_deviceName = v20;
  }

  return v5;
}

- (id)initDescriptorWithType:(unint64_t)a3 withLabel:(id)a4 withData:(id)a5 withVersion:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = MASDAssetDescriptor;
  v14 = [(MASDAssetDescriptor *)&v24 init];
  v15 = v14;
  if (v14)
  {
    v14->_type = a3;
    v16 = [v12 copy];
    data = v15->_data;
    v15->_data = v16;

    objc_storeStrong(&v15->_label, a4);
    objc_storeStrong(&v15->_algorithmVersion, a6);
    enrollmentIdentifier = v15->_enrollmentIdentifier;
    v15->_syncOption = 0;
    v15->_enrollmentIdentifier = 0;

    creatorAttest = v15->_creatorAttest;
    v15->_creatorAttest = 0;

    serverAttest = v15->_serverAttest;
    v15->_serverAttest = 0;

    deviceIdentifier = v15->_deviceIdentifier;
    v15->_deviceIdentifier = 0;

    deviceName = v15->_deviceName;
    v15->_deviceName = 0;
  }

  return v15;
}

- (id)initDescriptorWithType:(unint64_t)a3 withLabel:(id)a4 withData:(id)a5 withVersion:(id)a6 withSyncOption:(unint64_t)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v26.receiver = self;
  v26.super_class = MASDAssetDescriptor;
  v16 = [(MASDAssetDescriptor *)&v26 init];
  v17 = v16;
  if (v16)
  {
    v16->_type = a3;
    v18 = [v14 copy];
    data = v17->_data;
    v17->_data = v18;

    objc_storeStrong(&v17->_label, a4);
    objc_storeStrong(&v17->_algorithmVersion, a6);
    enrollmentIdentifier = v17->_enrollmentIdentifier;
    v17->_syncOption = a7;
    v17->_enrollmentIdentifier = 0;

    creatorAttest = v17->_creatorAttest;
    v17->_creatorAttest = 0;

    serverAttest = v17->_serverAttest;
    v17->_serverAttest = 0;

    deviceIdentifier = v17->_deviceIdentifier;
    v17->_deviceIdentifier = 0;

    deviceName = v17->_deviceName;
    v17->_deviceName = 0;
  }

  return v17;
}

- (id)initDescriptorWithOptions:(id)a3 withData:(id)a4 error:(id *)a5
{
  v70 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v63 = a4;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v65 objects:v69 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v66;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v66 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v65 + 1) + 8 * i);
        v13 = [v7 objectForKeyedSubscript:v12];
        if (([v12 isEqualToString:@"com.apple.managedassets.assettype"] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"com.apple.managedassets.sync"))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v43 = createManagedAssetError("validateDescriptorOptions", 128, -20001, 0, 0, @"invalid data class in descriptor options for %@", v14, v15, v12);
            *a5 = v43;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
LABEL_26:
              [(MASDAssetDescriptor *)v43 initDescriptorWithOptions:v45 withData:v46 error:v47, v48, v49, v50, v51];
            }

LABEL_27:

            v42 = 0;
            v41 = self;
            v20 = v63;
            goto LABEL_28;
          }
        }

        else if (([v12 isEqualToString:@"com.apple.managedassets.assetlabel"] & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"com.apple.managedassets.algorithmver") & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"com.apple.managedassets.enrollmentID"))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v43 = createManagedAssetError("validateDescriptorOptions", 135, -20001, 0, 0, @"invalid data class in descriptor options for %@", v16, v17, v12);
            *a5 = v43;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v65 objects:v69 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v18 = [v7 objectForKeyedSubscript:@"com.apple.managedassets.assettype"];

  if (v18)
  {
    v64.receiver = self;
    v64.super_class = MASDAssetDescriptor;
    v19 = [(MASDAssetDescriptor *)&v64 init];
    v20 = v63;
    if (v19)
    {
      v21 = [v7 objectForKeyedSubscript:@"com.apple.managedassets.assettype"];
      v19->_type = [v21 unsignedIntegerValue];

      v22 = [v63 copy];
      data = v19->_data;
      v19->_data = v22;

      v24 = [v7 objectForKeyedSubscript:@"com.apple.managedassets.assetlabel"];
      label = v19->_label;
      v19->_label = v24;

      v26 = [v7 objectForKeyedSubscript:@"com.apple.managedassets.algorithmver"];
      algorithmVersion = v19->_algorithmVersion;
      v19->_algorithmVersion = v26;

      v28 = [v7 objectForKeyedSubscript:@"com.apple.managedassets.enrollmentID"];
      enrollmentIdentifier = v19->_enrollmentIdentifier;
      v19->_enrollmentIdentifier = v28;

      v30 = [v7 objectForKeyedSubscript:@"com.apple.managedassets.creatorAttest"];
      v31 = [v30 copy];
      creatorAttest = v19->_creatorAttest;
      v19->_creatorAttest = v31;

      v33 = [v7 objectForKeyedSubscript:@"com.apple.managedassets.serverAttest"];
      v34 = [v33 copy];
      serverAttest = v19->_serverAttest;
      v19->_serverAttest = v34;

      v36 = [v7 objectForKeyedSubscript:@"com.apple.managedassets.deviceID"];
      deviceIdentifier = v19->_deviceIdentifier;
      v19->_deviceIdentifier = v36;

      v38 = [v7 objectForKeyedSubscript:@"com.apple.managedassets.deviceName"];
      deviceName = v19->_deviceName;
      v19->_deviceName = v38;

      v40 = [v7 objectForKeyedSubscript:@"com.apple.managedassets.sync"];
      v19->_syncOption = [v40 unsignedIntegerValue];
    }

    v41 = v19;
    v42 = v41;
  }

  else
  {
    v41 = self;
    v20 = v63;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [(MASDAssetDescriptor *)@"com.apple.managedassets.assettype" initDescriptorWithOptions:v52 withData:v53 error:v54, v55, v56, v57, v58];
    }

    createManagedAssetError("[MASDAssetDescriptor initDescriptorWithOptions:withData:error:]", 98, -20001, 0, 0, @"option %@ is empty.", v57, v58, @"com.apple.managedassets.assettype");
    *a5 = v42 = 0;
  }

LABEL_28:

  v59 = *MEMORY[0x277D85DE8];
  return v42;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(MASDAssetDescriptor *)self isEqualForAllFields:v5];
  }

  return v6;
}

- (BOOL)isEqualForAllFields:(id)a3
{
  v4 = a3;
  v5 = [(MASDAssetDescriptor *)self type];
  if (v5 != [v4 type])
  {
    goto LABEL_70;
  }

  v6 = [(MASDAssetDescriptor *)self data];
  v7 = [v4 data];
  v8 = [v6 isEqualToData:v7];

  if (!v8)
  {
    goto LABEL_70;
  }

  v9 = [(MASDAssetDescriptor *)self label];
  if (v9)
  {
    v7 = [v4 label];
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  v10 = [(MASDAssetDescriptor *)self label];
  if (v10)
  {

    if (v9)
    {
    }
  }

  else
  {
    v11 = [v4 label];

    if (v9)
    {
    }

    if (v11)
    {
      goto LABEL_70;
    }
  }

  v12 = [(MASDAssetDescriptor *)self label];
  if (v12)
  {
    v13 = v12;
    v14 = [v4 label];
    if (v14)
    {
      v7 = v14;
      v15 = [(MASDAssetDescriptor *)self label];
      v16 = [v4 label];
      v17 = [v15 isEqualToString:v16];

      if (!v17)
      {
        goto LABEL_70;
      }
    }

    else
    {
    }
  }

  v9 = [(MASDAssetDescriptor *)self algorithmVersion];
  if (v9)
  {
    v7 = [v4 algorithmVersion];
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  v19 = [(MASDAssetDescriptor *)self algorithmVersion];
  if (v19)
  {

    if (v9)
    {
    }
  }

  else
  {
    v20 = [v4 algorithmVersion];

    if (v9)
    {
    }

    if (v20)
    {
      goto LABEL_70;
    }
  }

  v21 = [(MASDAssetDescriptor *)self algorithmVersion];
  if (v21)
  {
    v22 = v21;
    v23 = [v4 algorithmVersion];
    if (v23)
    {
      v7 = v23;
      v24 = [(MASDAssetDescriptor *)self algorithmVersion];
      v25 = [v4 algorithmVersion];
      v26 = [v24 isEqualToString:v25];

      if (!v26)
      {
        goto LABEL_70;
      }
    }

    else
    {
    }
  }

  v27 = [(MASDAssetDescriptor *)self syncOption];
  if (v27 != [v4 syncOption])
  {
LABEL_70:
    v18 = 0;
    goto LABEL_71;
  }

  v9 = [(MASDAssetDescriptor *)self enrollmentIdentifier];
  if (v9)
  {
    v7 = [v4 enrollmentIdentifier];
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  v28 = [(MASDAssetDescriptor *)self enrollmentIdentifier];
  if (v28)
  {

    if (v9)
    {
    }
  }

  else
  {
    v29 = [v4 enrollmentIdentifier];

    if (v9)
    {
    }

    if (v29)
    {
      goto LABEL_70;
    }
  }

  v30 = [(MASDAssetDescriptor *)self enrollmentIdentifier];
  if (v30)
  {
    v31 = v30;
    v32 = [v4 enrollmentIdentifier];
    if (v32)
    {
      v7 = v32;
      v33 = [(MASDAssetDescriptor *)self enrollmentIdentifier];
      v34 = [v4 enrollmentIdentifier];
      v35 = [v33 isEqualToString:v34];

      if (!v35)
      {
        goto LABEL_70;
      }
    }

    else
    {
    }
  }

  v36 = [(MASDAssetDescriptor *)self creatorAttest];
  if (v36)
  {
    v37 = v36;
    v7 = [(MASDAssetDescriptor *)self creatorAttest];
    v38 = [v4 creatorAttest];
    v39 = [v7 isEqualToData:v38];

    if (!v39)
    {
      goto LABEL_70;
    }
  }

  v40 = [(MASDAssetDescriptor *)self serverAttest];
  if (v40)
  {
    v41 = v40;
    v7 = [(MASDAssetDescriptor *)self serverAttest];
    v42 = [v4 serverAttest];
    v43 = [v7 isEqualToData:v42];

    if (!v43)
    {
      goto LABEL_70;
    }
  }

  v9 = [(MASDAssetDescriptor *)self deviceIdentifier];
  if (v9)
  {
    v7 = [v4 deviceIdentifier];
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  v44 = [(MASDAssetDescriptor *)self deviceIdentifier];
  if (v44)
  {

    if (v9)
    {
    }
  }

  else
  {
    v45 = [v4 deviceIdentifier];

    if (v9)
    {
    }

    if (v45)
    {
      goto LABEL_70;
    }
  }

  v46 = [(MASDAssetDescriptor *)self deviceIdentifier];
  if (v46)
  {
    v47 = v46;
    v48 = [v4 deviceIdentifier];
    if (v48)
    {
      v7 = v48;
      v49 = [(MASDAssetDescriptor *)self deviceIdentifier];
      v50 = [v4 deviceIdentifier];
      v51 = [v49 isEqualToString:v50];

      if (!v51)
      {
        goto LABEL_70;
      }
    }

    else
    {
    }
  }

  v9 = [(MASDAssetDescriptor *)self deviceName];
  if (v9 && ([v4 deviceName], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_18:
    v18 = 0;
  }

  else
  {
    v52 = [(MASDAssetDescriptor *)self deviceName];
    if (v52)
    {

      if (v9)
      {
      }
    }

    else
    {
      v53 = [v4 deviceName];

      if (v9)
      {
      }

      if (v53)
      {
        goto LABEL_70;
      }
    }

    v55 = [(MASDAssetDescriptor *)self deviceName];
    if (!v55)
    {
      v18 = 1;
      goto LABEL_71;
    }

    v9 = v55;
    v56 = [v4 deviceName];
    if (v56)
    {
      v57 = v56;
      v58 = [(MASDAssetDescriptor *)self deviceName];
      v59 = [v4 deviceName];
      v18 = [v58 isEqualToString:v59];
    }

    else
    {
      v18 = 1;
    }
  }

LABEL_71:
  return v18 & 1;
}

- (void)initDescriptorWithOptions:(uint64_t)a3 withData:(uint64_t)a4 error:(uint64_t)a5 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4(&dword_258089000, MEMORY[0x277D86220], a3, "invalid input: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initDescriptorWithOptions:(uint64_t)a3 withData:(uint64_t)a4 error:(uint64_t)a5 .cold.3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4(&dword_258089000, MEMORY[0x277D86220], a3, "option %@ is empty.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end