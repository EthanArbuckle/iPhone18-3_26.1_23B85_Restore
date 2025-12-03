@interface PKPassTileMetadataHorizontalFlowGroup
+ (id)_createDefaultDashboardGroupMetadata;
- (BOOL)_setUpWithDictionary:(id)dictionary privateDictionary:(id)privateDictionary;
- (PKPassTileMetadataHorizontalFlowGroup)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassTileMetadataHorizontalFlowGroup

+ (id)_createDefaultDashboardGroupMetadata
{
  v2 = [PKPassTileMetadata _createMetadataForType:2 identifier:@"__defaultGroupIdentifier__" context:1];
  metadataTypeHorizontalFlowGroup = [v2 metadataTypeHorizontalFlowGroup];

  [metadataTypeHorizontalFlowGroup setColumns:2];
  [metadataTypeHorizontalFlowGroup setMaximumRows:2];
  [metadataTypeHorizontalFlowGroup setWidthClass:2];
  [metadataTypeHorizontalFlowGroup setHeightClass:1];
  return metadataTypeHorizontalFlowGroup;
}

- (BOOL)_setUpWithDictionary:(id)dictionary privateDictionary:(id)privateDictionary
{
  v26 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v21.receiver = self;
  v21.super_class = PKPassTileMetadataHorizontalFlowGroup;
  if ([(PKPassTileMetadata *)&v21 _setUpWithDictionary:dictionaryCopy privateDictionary:privateDictionary])
  {
    v7 = [dictionaryCopy PKNumberForKey:@"columns"];
    if ([v7 pk_isPositiveNumber]&& ([v7 pk_isIntegralNumber]& 1) != 0)
    {
      self->_columns = [v7 unsignedIntegerValue];
      v8 = [dictionaryCopy PKNumberForKey:@"maximumRows"];
      v9 = v8;
      if (!v8 || [v8 pk_isPositiveNumber]&& ([v9 pk_isIntegralNumber]& 1) != 0)
      {
        self->_maximumRows = [v9 unsignedIntegerValue];
        v10 = [dictionaryCopy PKStringForKey:@"widthClass"];
        v11 = PKPassTileWidthClassHorizontalFlowFromString(v10);
        self->_widthClass = v11;
        if (v11)
        {
          v12 = [dictionaryCopy PKStringForKey:@"heightClass"];
          v13 = PKPassTileHeightClassFromString(v12);
          self->_heightClass = v13;
          v14 = v13 != 0;
          if (v13)
          {
            v15 = [dictionaryCopy PKStringForKey:@"groupStyle"];
            self->_groupStyle = PKPassTileGroupStyleFromString(v15);
          }

          else
          {
            v15 = PKLogFacilityTypeGetObject(0);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              identifier = [(PKPassTileMetadata *)self identifier];
              *buf = 138412546;
              v23 = identifier;
              v24 = 2112;
              v25 = v12;
              _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "PKPassTileMetadataHorizontalFlowGroup: %@ invalid - unrecognized height class: %@.", buf, 0x16u);
            }
          }
        }

        else
        {
          v12 = PKLogFacilityTypeGetObject(0);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            identifier2 = [(PKPassTileMetadata *)self identifier];
            *buf = 138412546;
            v23 = identifier2;
            v24 = 2112;
            v25 = v10;
            _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "PKPassTileMetadataHorizontalFlowGroup: %@ invalid - unrecognized width class: %@.", buf, 0x16u);
          }

          v14 = 0;
        }
      }

      else
      {
        v10 = PKLogFacilityTypeGetObject(0);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          identifier3 = [(PKPassTileMetadata *)self identifier];
          *buf = 138412546;
          v23 = identifier3;
          v24 = 2112;
          v25 = v9;
          _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "PKPassTileMetadataHorizontalFlowGroup: %@ invalid - invalid value for maximumRows: %@.", buf, 0x16u);
        }

        v14 = 0;
      }
    }

    else
    {
      v9 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        identifier4 = [(PKPassTileMetadata *)self identifier];
        *buf = 138412546;
        v23 = identifier4;
        v24 = 2112;
        v25 = v7;
        _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "PKPassTileMetadataHorizontalFlowGroup: %@ invalid - invalid value for columns: %@.", buf, 0x16u);
      }

      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (PKPassTileMetadataHorizontalFlowGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = PKPassTileMetadataHorizontalFlowGroup;
  v5 = [(PKPassTileMetadata *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"columns"];
    v5->_columns = [v6 unsignedIntegerValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maximumRows"];
    v5->_maximumRows = [v7 unsignedIntegerValue];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"widthClass"];
    v5->_widthClass = PKPassTileWidthClassHorizontalFlowFromString(v8);

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"heightClass"];
    v5->_heightClass = PKPassTileHeightClassFromString(v9);

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupStyle"];
    v5->_groupStyle = PKPassTileGroupStyleFromString(v10);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v12.receiver = self;
  v12.super_class = PKPassTileMetadataHorizontalFlowGroup;
  coderCopy = coder;
  [(PKPassTileMetadata *)&v12 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{self->_columns, v12.receiver, v12.super_class}];
  [coderCopy encodeObject:v5 forKey:@"columns"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_maximumRows];
  [coderCopy encodeObject:v6 forKey:@"maximumRows"];

  widthClass = self->_widthClass;
  v8 = @"default";
  if (widthClass != 1)
  {
    v8 = 0;
  }

  if (widthClass == 2)
  {
    v9 = @"compact";
  }

  else
  {
    v9 = v8;
  }

  [coderCopy encodeObject:v9 forKey:@"widthClass"];
  v10 = PKPassTileHeightClassToString(self->_heightClass);
  [coderCopy encodeObject:v10 forKey:@"heightClass"];

  v11 = PKPassTileGroupStyleToString(self->_groupStyle);
  [coderCopy encodeObject:v11 forKey:@"groupStyle"];
}

@end