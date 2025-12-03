@interface MASDAssetDescriptor
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualForAllFields:(id)fields;
- (MASDAssetDescriptor)initWithCoder:(id)coder;
- (id)initDescriptorWithOptions:(id)options withData:(id)data error:(id *)error;
- (id)initDescriptorWithType:(unint64_t)type withLabel:(id)label withData:(id)data withVersion:(id)version;
- (id)initDescriptorWithType:(unint64_t)type withLabel:(id)label withData:(id)data withVersion:(id)version withSyncOption:(unint64_t)option;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MASDAssetDescriptor

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"_type"];
  [coderCopy encodeObject:self->_data forKey:@"_data"];
  [coderCopy encodeObject:self->_label forKey:@"_label"];
  [coderCopy encodeObject:self->_algorithmVersion forKey:@"_algorithmVersion"];
  [coderCopy encodeInteger:self->_syncOption forKey:@"_syncOption"];
  [coderCopy encodeObject:self->_enrollmentIdentifier forKey:@"_enrollmentIdentifier"];
  [coderCopy encodeObject:self->_creatorAttest forKey:@"_creatorAttest"];
  [coderCopy encodeObject:self->_serverAttest forKey:@"_serverAttest"];
  [coderCopy encodeObject:self->_deviceIdentifier forKey:@"_deviceIdentifier"];
  [coderCopy encodeObject:self->_deviceName forKey:@"_deviceName"];
}

- (MASDAssetDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = MASDAssetDescriptor;
  v5 = [(MASDAssetDescriptor *)&v23 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"_type"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_data"];
    data = v5->_data;
    v5->_data = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_label"];
    label = v5->_label;
    v5->_label = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_algorithmVersion"];
    algorithmVersion = v5->_algorithmVersion;
    v5->_algorithmVersion = v10;

    v5->_syncOption = [coderCopy decodeIntegerForKey:@"_syncOption"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_enrollmentIdentifier"];
    enrollmentIdentifier = v5->_enrollmentIdentifier;
    v5->_enrollmentIdentifier = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_creatorAttest"];
    creatorAttest = v5->_creatorAttest;
    v5->_creatorAttest = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_serverAttest"];
    serverAttest = v5->_serverAttest;
    v5->_serverAttest = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_deviceIdentifier"];
    deviceIdentifier = v5->_deviceIdentifier;
    v5->_deviceIdentifier = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_deviceName"];
    deviceName = v5->_deviceName;
    v5->_deviceName = v20;
  }

  return v5;
}

- (id)initDescriptorWithType:(unint64_t)type withLabel:(id)label withData:(id)data withVersion:(id)version
{
  labelCopy = label;
  dataCopy = data;
  versionCopy = version;
  v24.receiver = self;
  v24.super_class = MASDAssetDescriptor;
  v14 = [(MASDAssetDescriptor *)&v24 init];
  v15 = v14;
  if (v14)
  {
    v14->_type = type;
    v16 = [dataCopy copy];
    data = v15->_data;
    v15->_data = v16;

    objc_storeStrong(&v15->_label, label);
    objc_storeStrong(&v15->_algorithmVersion, version);
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

- (id)initDescriptorWithType:(unint64_t)type withLabel:(id)label withData:(id)data withVersion:(id)version withSyncOption:(unint64_t)option
{
  labelCopy = label;
  dataCopy = data;
  versionCopy = version;
  v26.receiver = self;
  v26.super_class = MASDAssetDescriptor;
  v16 = [(MASDAssetDescriptor *)&v26 init];
  v17 = v16;
  if (v16)
  {
    v16->_type = type;
    v18 = [dataCopy copy];
    data = v17->_data;
    v17->_data = v18;

    objc_storeStrong(&v17->_label, label);
    objc_storeStrong(&v17->_algorithmVersion, version);
    enrollmentIdentifier = v17->_enrollmentIdentifier;
    v17->_syncOption = option;
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

- (id)initDescriptorWithOptions:(id)options withData:(id)data error:(id *)error
{
  v70 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  dataCopy = data;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v7 = optionsCopy;
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
            *error = v43;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
LABEL_26:
              [(MASDAssetDescriptor *)v43 initDescriptorWithOptions:v45 withData:v46 error:v47, v48, v49, v50, v51];
            }

LABEL_27:

            v42 = 0;
            selfCopy2 = self;
            v20 = dataCopy;
            goto LABEL_28;
          }
        }

        else if (([v12 isEqualToString:@"com.apple.managedassets.assetlabel"] & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"com.apple.managedassets.algorithmver") & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"com.apple.managedassets.enrollmentID"))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v43 = createManagedAssetError("validateDescriptorOptions", 135, -20001, 0, 0, @"invalid data class in descriptor options for %@", v16, v17, v12);
            *error = v43;
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
    v20 = dataCopy;
    if (v19)
    {
      v21 = [v7 objectForKeyedSubscript:@"com.apple.managedassets.assettype"];
      v19->_type = [v21 unsignedIntegerValue];

      v22 = [dataCopy copy];
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

    selfCopy2 = v19;
    v42 = selfCopy2;
  }

  else
  {
    selfCopy2 = self;
    v20 = dataCopy;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [(MASDAssetDescriptor *)@"com.apple.managedassets.assettype" initDescriptorWithOptions:v52 withData:v53 error:v54, v55, v56, v57, v58];
    }

    createManagedAssetError("[MASDAssetDescriptor initDescriptorWithOptions:withData:error:]", 98, -20001, 0, 0, @"option %@ is empty.", v57, v58, @"com.apple.managedassets.assettype");
    *error = v42 = 0;
  }

LABEL_28:

  v59 = *MEMORY[0x277D85DE8];
  return v42;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(MASDAssetDescriptor *)self isEqualForAllFields:v5];
  }

  return v6;
}

- (BOOL)isEqualForAllFields:(id)fields
{
  fieldsCopy = fields;
  type = [(MASDAssetDescriptor *)self type];
  if (type != [fieldsCopy type])
  {
    goto LABEL_70;
  }

  data = [(MASDAssetDescriptor *)self data];
  data2 = [fieldsCopy data];
  v8 = [data isEqualToData:data2];

  if (!v8)
  {
    goto LABEL_70;
  }

  label = [(MASDAssetDescriptor *)self label];
  if (label)
  {
    data2 = [fieldsCopy label];
    if (!data2)
    {
      goto LABEL_18;
    }
  }

  label2 = [(MASDAssetDescriptor *)self label];
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
      goto LABEL_70;
    }
  }

  label4 = [(MASDAssetDescriptor *)self label];
  if (label4)
  {
    v13 = label4;
    label5 = [fieldsCopy label];
    if (label5)
    {
      data2 = label5;
      label6 = [(MASDAssetDescriptor *)self label];
      label7 = [fieldsCopy label];
      v17 = [label6 isEqualToString:label7];

      if (!v17)
      {
        goto LABEL_70;
      }
    }

    else
    {
    }
  }

  label = [(MASDAssetDescriptor *)self algorithmVersion];
  if (label)
  {
    data2 = [fieldsCopy algorithmVersion];
    if (!data2)
    {
      goto LABEL_18;
    }
  }

  algorithmVersion = [(MASDAssetDescriptor *)self algorithmVersion];
  if (algorithmVersion)
  {

    if (label)
    {
    }
  }

  else
  {
    algorithmVersion2 = [fieldsCopy algorithmVersion];

    if (label)
    {
    }

    if (algorithmVersion2)
    {
      goto LABEL_70;
    }
  }

  algorithmVersion3 = [(MASDAssetDescriptor *)self algorithmVersion];
  if (algorithmVersion3)
  {
    v22 = algorithmVersion3;
    algorithmVersion4 = [fieldsCopy algorithmVersion];
    if (algorithmVersion4)
    {
      data2 = algorithmVersion4;
      algorithmVersion5 = [(MASDAssetDescriptor *)self algorithmVersion];
      algorithmVersion6 = [fieldsCopy algorithmVersion];
      v26 = [algorithmVersion5 isEqualToString:algorithmVersion6];

      if (!v26)
      {
        goto LABEL_70;
      }
    }

    else
    {
    }
  }

  syncOption = [(MASDAssetDescriptor *)self syncOption];
  if (syncOption != [fieldsCopy syncOption])
  {
LABEL_70:
    v18 = 0;
    goto LABEL_71;
  }

  label = [(MASDAssetDescriptor *)self enrollmentIdentifier];
  if (label)
  {
    data2 = [fieldsCopy enrollmentIdentifier];
    if (!data2)
    {
      goto LABEL_18;
    }
  }

  enrollmentIdentifier = [(MASDAssetDescriptor *)self enrollmentIdentifier];
  if (enrollmentIdentifier)
  {

    if (label)
    {
    }
  }

  else
  {
    enrollmentIdentifier2 = [fieldsCopy enrollmentIdentifier];

    if (label)
    {
    }

    if (enrollmentIdentifier2)
    {
      goto LABEL_70;
    }
  }

  enrollmentIdentifier3 = [(MASDAssetDescriptor *)self enrollmentIdentifier];
  if (enrollmentIdentifier3)
  {
    v31 = enrollmentIdentifier3;
    enrollmentIdentifier4 = [fieldsCopy enrollmentIdentifier];
    if (enrollmentIdentifier4)
    {
      data2 = enrollmentIdentifier4;
      enrollmentIdentifier5 = [(MASDAssetDescriptor *)self enrollmentIdentifier];
      enrollmentIdentifier6 = [fieldsCopy enrollmentIdentifier];
      v35 = [enrollmentIdentifier5 isEqualToString:enrollmentIdentifier6];

      if (!v35)
      {
        goto LABEL_70;
      }
    }

    else
    {
    }
  }

  creatorAttest = [(MASDAssetDescriptor *)self creatorAttest];
  if (creatorAttest)
  {
    v37 = creatorAttest;
    data2 = [(MASDAssetDescriptor *)self creatorAttest];
    creatorAttest2 = [fieldsCopy creatorAttest];
    v39 = [data2 isEqualToData:creatorAttest2];

    if (!v39)
    {
      goto LABEL_70;
    }
  }

  serverAttest = [(MASDAssetDescriptor *)self serverAttest];
  if (serverAttest)
  {
    v41 = serverAttest;
    data2 = [(MASDAssetDescriptor *)self serverAttest];
    serverAttest2 = [fieldsCopy serverAttest];
    v43 = [data2 isEqualToData:serverAttest2];

    if (!v43)
    {
      goto LABEL_70;
    }
  }

  label = [(MASDAssetDescriptor *)self deviceIdentifier];
  if (label)
  {
    data2 = [fieldsCopy deviceIdentifier];
    if (!data2)
    {
      goto LABEL_18;
    }
  }

  deviceIdentifier = [(MASDAssetDescriptor *)self deviceIdentifier];
  if (deviceIdentifier)
  {

    if (label)
    {
    }
  }

  else
  {
    deviceIdentifier2 = [fieldsCopy deviceIdentifier];

    if (label)
    {
    }

    if (deviceIdentifier2)
    {
      goto LABEL_70;
    }
  }

  deviceIdentifier3 = [(MASDAssetDescriptor *)self deviceIdentifier];
  if (deviceIdentifier3)
  {
    v47 = deviceIdentifier3;
    deviceIdentifier4 = [fieldsCopy deviceIdentifier];
    if (deviceIdentifier4)
    {
      data2 = deviceIdentifier4;
      deviceIdentifier5 = [(MASDAssetDescriptor *)self deviceIdentifier];
      deviceIdentifier6 = [fieldsCopy deviceIdentifier];
      v51 = [deviceIdentifier5 isEqualToString:deviceIdentifier6];

      if (!v51)
      {
        goto LABEL_70;
      }
    }

    else
    {
    }
  }

  label = [(MASDAssetDescriptor *)self deviceName];
  if (label && ([fieldsCopy deviceName], (data2 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_18:
    v18 = 0;
  }

  else
  {
    deviceName = [(MASDAssetDescriptor *)self deviceName];
    if (deviceName)
    {

      if (label)
      {
      }
    }

    else
    {
      deviceName2 = [fieldsCopy deviceName];

      if (label)
      {
      }

      if (deviceName2)
      {
        goto LABEL_70;
      }
    }

    deviceName3 = [(MASDAssetDescriptor *)self deviceName];
    if (!deviceName3)
    {
      v18 = 1;
      goto LABEL_71;
    }

    label = deviceName3;
    deviceName4 = [fieldsCopy deviceName];
    if (deviceName4)
    {
      v57 = deviceName4;
      deviceName5 = [(MASDAssetDescriptor *)self deviceName];
      deviceName6 = [fieldsCopy deviceName];
      v18 = [deviceName5 isEqualToString:deviceName6];
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