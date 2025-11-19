@interface GCHIDDeviceSnapshot
- (GCHIDDeviceSnapshot)init;
- (GCHIDDeviceSnapshot)initWithCoder:(id)a3;
- (GCHIDDeviceSnapshot)initWithHIDDevice:(id)a3;
- (GCHIDDeviceSnapshot)initWithService:(unsigned int)a3;
- (id)debugDescription;
- (id)valueForHIDDeviceKey:(id)a3;
- (id)valueForKey:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GCHIDDeviceSnapshot

- (GCHIDDeviceSnapshot)init
{
  v5.receiver = self;
  v5.super_class = GCHIDDeviceSnapshot;
  v2 = [(GCHIDDeviceSnapshot *)&v5 init];
  elements = v2->_elements;
  v2->_elements = MEMORY[0x1E695E0F0];

  return v2;
}

- (GCHIDDeviceSnapshot)initWithService:(unsigned int)a3
{
  v39.receiver = self;
  v39.super_class = GCHIDDeviceSnapshot;
  v4 = [(GCHIDDeviceSnapshot *)&v39 init];
  properties = 0;
  IORegistryEntryCreateCFProperties(a3, &properties, 0, 0);
  if (properties)
  {
    v5 = CFDictionaryGetValue(properties, @"Transport");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    objc_storeStrong(&v4->_transport, v6);
    v7 = CFDictionaryGetValue(properties, @"VendorID");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    objc_storeStrong(&v4->_vendorID, v8);
    v9 = CFDictionaryGetValue(properties, @"ProductID");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    objc_storeStrong(&v4->_productID, v10);
    v11 = CFDictionaryGetValue(properties, @"VersionNumber");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    objc_storeStrong(&v4->_versionNumber, v12);
    v13 = CFDictionaryGetValue(properties, @"Manufacturer");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    objc_storeStrong(&v4->_manufacturer, v14);
    v15 = CFDictionaryGetValue(properties, @"Product");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    objc_storeStrong(&v4->_product, v16);
    v17 = CFDictionaryGetValue(properties, @"MaxInputReportSize");
    objc_opt_class();
    v37 = v17;
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    objc_storeStrong(&v4->_maxInputReportSize, v18);
    v19 = CFDictionaryGetValue(properties, @"MaxOutputReportSize");
    objc_opt_class();
    v36 = v19;
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    objc_storeStrong(&v4->_maxOutputReportSize, v20);
    v21 = CFDictionaryGetValue(properties, @"MaxFeatureReportSize");
    objc_opt_class();
    v35 = v21;
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    objc_storeStrong(&v4->_maxFeatureReportSize, v22);
    v23 = CFDictionaryGetValue(properties, @"Elements");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = v11;
      v33 = v9;
      v34 = v7;
      v24 = [v23 mutableCopy];

      v25 = objc_opt_new();
      while ([v24 count])
      {
        v26 = [v24 firstObject];
        [v24 removeObjectAtIndex:0];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v27 = [[GCHIDElementSnapshot alloc] initWithDictionary:v26];
          if (v27)
          {
            [v25 addObject:v27];
          }

          v28 = [v26 objectForKey:@"Elements"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v24 addObjectsFromArray:v28];
          }
        }
      }

      v29 = [v25 copy];
      elements = v4->_elements;
      v4->_elements = v29;

      v7 = v34;
      v11 = v32;
      v9 = v33;
    }

    else
    {
      v24 = v23;
    }

    CFRelease(properties);
  }

  return v4;
}

- (GCHIDDeviceSnapshot)initWithHIDDevice:(id)a3
{
  v29.receiver = self;
  v29.super_class = GCHIDDeviceSnapshot;
  v3 = a3;
  v4 = [(GCHIDDeviceSnapshot *)&v29 init];
  v5 = [v3 propertyForKey:@"Transport"];
  v28 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  objc_storeStrong(&v4->_transport, v6);
  v7 = [v3 propertyForKey:@"VendorID"];
  v27 = v7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  objc_storeStrong(&v4->_vendorID, v8);
  v9 = [v3 propertyForKey:@"ProductID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  objc_storeStrong(&v4->_productID, v10);
  v11 = [v3 propertyForKey:@"VersionNumber"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  objc_storeStrong(&v4->_versionNumber, v12);
  v13 = [v3 propertyForKey:@"Manufacturer"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  objc_storeStrong(&v4->_manufacturer, v14);
  v15 = [v3 propertyForKey:@"Product"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  objc_storeStrong(&v4->_product, v16);
  v17 = [v3 propertyForKey:@"MaxInputReportSize"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  objc_storeStrong(&v4->_maxInputReportSize, v18);
  v19 = [v3 propertyForKey:@"MaxOutputReportSize"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  objc_storeStrong(&v4->_maxOutputReportSize, v20);
  v21 = [v3 propertyForKey:@"MaxFeatureReportSize"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  objc_storeStrong(&v4->_maxFeatureReportSize, v22);
  v23 = [v3 elementsMatching:MEMORY[0x1E695E0F8]];

  v24 = [v23 gc_arrayByTransformingElementsUsingBlock:&__block_literal_global_9];
  elements = v4->_elements;
  v4->_elements = v24;

  return v4;
}

- (GCHIDDeviceSnapshot)initWithCoder:(id)a3
{
  v31[2] = *MEMORY[0x1E69E9840];
  v30.receiver = self;
  v30.super_class = GCHIDDeviceSnapshot;
  v3 = a3;
  v4 = [(GCHIDDeviceSnapshot *)&v30 init];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"Transport"];
  transport = v4->_transport;
  v4->_transport = v5;

  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"VendorID"];
  vendorID = v4->_vendorID;
  v4->_vendorID = v7;

  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"ProductID"];
  productID = v4->_productID;
  v4->_productID = v9;

  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"VersionNumber"];
  versionNumber = v4->_versionNumber;
  v4->_versionNumber = v11;

  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"Manufacturer"];
  manufacturer = v4->_manufacturer;
  v4->_manufacturer = v13;

  v15 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"Product"];
  product = v4->_product;
  v4->_product = v15;

  v17 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"MaxInputReportSize"];
  maxInputReportSize = v4->_maxInputReportSize;
  v4->_maxInputReportSize = v17;

  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"MaxOutputReportSize"];
  maxOutputReportSize = v4->_maxOutputReportSize;
  v4->_maxOutputReportSize = v19;

  v21 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"MaxFeatureReportSize"];
  maxFeatureReportSize = v4->_maxFeatureReportSize;
  v4->_maxFeatureReportSize = v21;

  v23 = MEMORY[0x1E695DFD8];
  v31[0] = objc_opt_class();
  v31[1] = objc_opt_class();
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
  v25 = [v23 setWithArray:v24];
  v26 = [v3 decodeObjectOfClasses:v25 forKey:@"elements"];

  elements = v4->_elements;
  v4->_elements = v26;

  v28 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  transport = self->_transport;
  v5 = a3;
  [v5 encodeObject:transport forKey:@"Transport"];
  [v5 encodeObject:self->_vendorID forKey:@"VendorID"];
  [v5 encodeObject:self->_productID forKey:@"ProductID"];
  [v5 encodeObject:self->_versionNumber forKey:@"VersionNumber"];
  [v5 encodeObject:self->_manufacturer forKey:@"Manufacturer"];
  [v5 encodeObject:self->_product forKey:@"Product"];
  [v5 encodeObject:self->_maxInputReportSize forKey:@"MaxInputReportSize"];
  [v5 encodeObject:self->_maxOutputReportSize forKey:@"MaxOutputReportSize"];
  [v5 encodeObject:self->_maxFeatureReportSize forKey:@"MaxFeatureReportSize"];
  v6 = [(GCHIDDeviceSnapshot *)self elements];
  [v5 encodeObject:v6 forKey:@"elements"];
}

- (id)debugDescription
{
  v30 = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = GCHIDDeviceSnapshot;
  v3 = [(GCHIDDeviceSnapshot *)&v28 debugDescription];
  v4 = [v3 mutableCopy];

  [v4 appendString:@" {\n"];
  v5 = [(GCHIDDeviceSnapshot *)self transport];
  [v4 appendFormat:@"\t transport = %@\n", v5];

  v6 = [(GCHIDDeviceSnapshot *)self vendorID];
  [v4 appendFormat:@"\t vendorID = %@\n", v6];

  v7 = [(GCHIDDeviceSnapshot *)self productID];
  [v4 appendFormat:@"\t productID = %@\n", v7];

  v8 = [(GCHIDDeviceSnapshot *)self versionNumber];
  [v4 appendFormat:@"\t versionNumber = %@\n", v8];

  v9 = [(GCHIDDeviceSnapshot *)self manufacturer];
  [v4 appendFormat:@"\t manufacturer = %@\n", v9];

  v10 = [(GCHIDDeviceSnapshot *)self product];
  [v4 appendFormat:@"\t product = %@\n", v10];

  v11 = [(GCHIDDeviceSnapshot *)self maxInputReportSize];
  [v4 appendFormat:@"\t maxInputReportSize = %@\n", v11];

  v12 = [(GCHIDDeviceSnapshot *)self maxOutputReportSize];
  [v4 appendFormat:@"\t maxOutputReportSize = %@\n", v12];

  v13 = [(GCHIDDeviceSnapshot *)self maxFeatureReportSize];
  [v4 appendFormat:@"\t maxFeatureReportSize = %@\n", v13];

  v14 = [(GCHIDDeviceSnapshot *)self elements];
  [v4 appendFormat:@"\t elements (%zu) = {\n", objc_msgSend(v14, "count")];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = [(GCHIDDeviceSnapshot *)self elements];
  v16 = [v15 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v24 + 1) + 8 * i) debugDescription];
        v21 = [v20 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t\t"];
        [v4 appendFormat:@"\t\t %@\n", v21];
      }

      v17 = [v15 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v17);
  }

  [v4 appendFormat:@"\t }\n"];
  v22 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)valueForHIDDeviceKey:(id)a3
{
  v4 = a3;
  v5 = GCHIDDeviceAttributeKeys();
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = [v4 substringToIndex:1];
    v8 = [v7 lowercaseString];

    v9 = [v4 stringByReplacingCharactersInRange:0 withString:{1, v8}];
    v10 = [(GCHIDDeviceSnapshot *)self valueForKey:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)valueForKey:(id)a3
{
  v4 = a3;
  v5 = GCHIDDeviceAttributeKeys();
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = [v4 substringToIndex:1];
    v8 = [v7 lowercaseString];

    v9 = [v4 stringByReplacingCharactersInRange:0 withString:{1, v8}];

    v4 = v9;
  }

  v12.receiver = self;
  v12.super_class = GCHIDDeviceSnapshot;
  v10 = [(GCHIDDeviceSnapshot *)&v12 valueForKey:v4];

  return v10;
}

@end