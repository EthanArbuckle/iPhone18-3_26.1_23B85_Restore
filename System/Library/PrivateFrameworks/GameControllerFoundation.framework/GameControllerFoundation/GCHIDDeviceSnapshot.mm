@interface GCHIDDeviceSnapshot
- (GCHIDDeviceSnapshot)init;
- (GCHIDDeviceSnapshot)initWithCoder:(id)coder;
- (GCHIDDeviceSnapshot)initWithHIDDevice:(id)device;
- (GCHIDDeviceSnapshot)initWithService:(unsigned int)service;
- (id)debugDescription;
- (id)valueForHIDDeviceKey:(id)key;
- (id)valueForKey:(id)key;
- (void)encodeWithCoder:(id)coder;
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

- (GCHIDDeviceSnapshot)initWithService:(unsigned int)service
{
  v39.receiver = self;
  v39.super_class = GCHIDDeviceSnapshot;
  v4 = [(GCHIDDeviceSnapshot *)&v39 init];
  properties = 0;
  IORegistryEntryCreateCFProperties(service, &properties, 0, 0);
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
        firstObject = [v24 firstObject];
        [v24 removeObjectAtIndex:0];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v27 = [[GCHIDElementSnapshot alloc] initWithDictionary:firstObject];
          if (v27)
          {
            [v25 addObject:v27];
          }

          v28 = [firstObject objectForKey:@"Elements"];
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

- (GCHIDDeviceSnapshot)initWithHIDDevice:(id)device
{
  v29.receiver = self;
  v29.super_class = GCHIDDeviceSnapshot;
  deviceCopy = device;
  v4 = [(GCHIDDeviceSnapshot *)&v29 init];
  v5 = [deviceCopy propertyForKey:@"Transport"];
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
  v7 = [deviceCopy propertyForKey:@"VendorID"];
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
  v9 = [deviceCopy propertyForKey:@"ProductID"];
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
  v11 = [deviceCopy propertyForKey:@"VersionNumber"];
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
  v13 = [deviceCopy propertyForKey:@"Manufacturer"];
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
  v15 = [deviceCopy propertyForKey:@"Product"];
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
  v17 = [deviceCopy propertyForKey:@"MaxInputReportSize"];
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
  v19 = [deviceCopy propertyForKey:@"MaxOutputReportSize"];
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
  v21 = [deviceCopy propertyForKey:@"MaxFeatureReportSize"];
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
  v23 = [deviceCopy elementsMatching:MEMORY[0x1E695E0F8]];

  v24 = [v23 gc_arrayByTransformingElementsUsingBlock:&__block_literal_global_9];
  elements = v4->_elements;
  v4->_elements = v24;

  return v4;
}

- (GCHIDDeviceSnapshot)initWithCoder:(id)coder
{
  v31[2] = *MEMORY[0x1E69E9840];
  v30.receiver = self;
  v30.super_class = GCHIDDeviceSnapshot;
  coderCopy = coder;
  v4 = [(GCHIDDeviceSnapshot *)&v30 init];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Transport"];
  transport = v4->_transport;
  v4->_transport = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"VendorID"];
  vendorID = v4->_vendorID;
  v4->_vendorID = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ProductID"];
  productID = v4->_productID;
  v4->_productID = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"VersionNumber"];
  versionNumber = v4->_versionNumber;
  v4->_versionNumber = v11;

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Manufacturer"];
  manufacturer = v4->_manufacturer;
  v4->_manufacturer = v13;

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Product"];
  product = v4->_product;
  v4->_product = v15;

  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MaxInputReportSize"];
  maxInputReportSize = v4->_maxInputReportSize;
  v4->_maxInputReportSize = v17;

  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MaxOutputReportSize"];
  maxOutputReportSize = v4->_maxOutputReportSize;
  v4->_maxOutputReportSize = v19;

  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MaxFeatureReportSize"];
  maxFeatureReportSize = v4->_maxFeatureReportSize;
  v4->_maxFeatureReportSize = v21;

  v23 = MEMORY[0x1E695DFD8];
  v31[0] = objc_opt_class();
  v31[1] = objc_opt_class();
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
  v25 = [v23 setWithArray:v24];
  v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"elements"];

  elements = v4->_elements;
  v4->_elements = v26;

  v28 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  transport = self->_transport;
  coderCopy = coder;
  [coderCopy encodeObject:transport forKey:@"Transport"];
  [coderCopy encodeObject:self->_vendorID forKey:@"VendorID"];
  [coderCopy encodeObject:self->_productID forKey:@"ProductID"];
  [coderCopy encodeObject:self->_versionNumber forKey:@"VersionNumber"];
  [coderCopy encodeObject:self->_manufacturer forKey:@"Manufacturer"];
  [coderCopy encodeObject:self->_product forKey:@"Product"];
  [coderCopy encodeObject:self->_maxInputReportSize forKey:@"MaxInputReportSize"];
  [coderCopy encodeObject:self->_maxOutputReportSize forKey:@"MaxOutputReportSize"];
  [coderCopy encodeObject:self->_maxFeatureReportSize forKey:@"MaxFeatureReportSize"];
  elements = [(GCHIDDeviceSnapshot *)self elements];
  [coderCopy encodeObject:elements forKey:@"elements"];
}

- (id)debugDescription
{
  v30 = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = GCHIDDeviceSnapshot;
  v3 = [(GCHIDDeviceSnapshot *)&v28 debugDescription];
  v4 = [v3 mutableCopy];

  [v4 appendString:@" {\n"];
  transport = [(GCHIDDeviceSnapshot *)self transport];
  [v4 appendFormat:@"\t transport = %@\n", transport];

  vendorID = [(GCHIDDeviceSnapshot *)self vendorID];
  [v4 appendFormat:@"\t vendorID = %@\n", vendorID];

  productID = [(GCHIDDeviceSnapshot *)self productID];
  [v4 appendFormat:@"\t productID = %@\n", productID];

  versionNumber = [(GCHIDDeviceSnapshot *)self versionNumber];
  [v4 appendFormat:@"\t versionNumber = %@\n", versionNumber];

  manufacturer = [(GCHIDDeviceSnapshot *)self manufacturer];
  [v4 appendFormat:@"\t manufacturer = %@\n", manufacturer];

  product = [(GCHIDDeviceSnapshot *)self product];
  [v4 appendFormat:@"\t product = %@\n", product];

  maxInputReportSize = [(GCHIDDeviceSnapshot *)self maxInputReportSize];
  [v4 appendFormat:@"\t maxInputReportSize = %@\n", maxInputReportSize];

  maxOutputReportSize = [(GCHIDDeviceSnapshot *)self maxOutputReportSize];
  [v4 appendFormat:@"\t maxOutputReportSize = %@\n", maxOutputReportSize];

  maxFeatureReportSize = [(GCHIDDeviceSnapshot *)self maxFeatureReportSize];
  [v4 appendFormat:@"\t maxFeatureReportSize = %@\n", maxFeatureReportSize];

  elements = [(GCHIDDeviceSnapshot *)self elements];
  [v4 appendFormat:@"\t elements (%zu) = {\n", objc_msgSend(elements, "count")];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  elements2 = [(GCHIDDeviceSnapshot *)self elements];
  v16 = [elements2 countByEnumeratingWithState:&v24 objects:v29 count:16];
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
          objc_enumerationMutation(elements2);
        }

        v20 = [*(*(&v24 + 1) + 8 * i) debugDescription];
        v21 = [v20 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t\t"];
        [v4 appendFormat:@"\t\t %@\n", v21];
      }

      v17 = [elements2 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v17);
  }

  [v4 appendFormat:@"\t }\n"];
  v22 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)valueForHIDDeviceKey:(id)key
{
  keyCopy = key;
  v5 = GCHIDDeviceAttributeKeys();
  v6 = [v5 containsObject:keyCopy];

  if (v6)
  {
    v7 = [keyCopy substringToIndex:1];
    lowercaseString = [v7 lowercaseString];

    v9 = [keyCopy stringByReplacingCharactersInRange:0 withString:{1, lowercaseString}];
    v10 = [(GCHIDDeviceSnapshot *)self valueForKey:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)valueForKey:(id)key
{
  keyCopy = key;
  v5 = GCHIDDeviceAttributeKeys();
  v6 = [v5 containsObject:keyCopy];

  if (v6)
  {
    v7 = [keyCopy substringToIndex:1];
    lowercaseString = [v7 lowercaseString];

    v9 = [keyCopy stringByReplacingCharactersInRange:0 withString:{1, lowercaseString}];

    keyCopy = v9;
  }

  v12.receiver = self;
  v12.super_class = GCHIDDeviceSnapshot;
  v10 = [(GCHIDDeviceSnapshot *)&v12 valueForKey:keyCopy];

  return v10;
}

@end