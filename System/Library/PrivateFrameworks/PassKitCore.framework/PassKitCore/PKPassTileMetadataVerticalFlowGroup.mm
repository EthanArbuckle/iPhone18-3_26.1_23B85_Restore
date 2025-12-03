@interface PKPassTileMetadataVerticalFlowGroup
- (BOOL)_setUpWithDictionary:(id)dictionary privateDictionary:(id)privateDictionary;
- (PKPassTileMetadataVerticalFlowGroup)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassTileMetadataVerticalFlowGroup

- (BOOL)_setUpWithDictionary:(id)dictionary privateDictionary:(id)privateDictionary
{
  v23 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = PKPassTileMetadataVerticalFlowGroup;
  if ([(PKPassTileMetadata *)&v18 _setUpWithDictionary:dictionaryCopy privateDictionary:privateDictionary])
  {
    v7 = [dictionaryCopy PKNumberForKey:@"rows"];
    if (([v7 pk_isPositiveNumber]& 1) == 0)
    {
      v8 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        identifier = [(PKPassTileMetadata *)self identifier];
        *buf = 138412546;
        v20 = identifier;
        v21 = 2112;
        v22 = v7;
        _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKPassTileMetadataVerticalFlowGroup: %@ invalid - invalid value for rows: %@.", buf, 0x16u);
      }

      v12 = 0;
      goto LABEL_17;
    }

    self->_rows = [v7 unsignedIntegerValue];
    v8 = [dictionaryCopy PKStringForKey:@"widthClass"];
    v9 = PKPassTileWidthClassVerticalFlowFromString(v8);
    self->_widthClass = v9;
    if (v9)
    {
      v10 = [dictionaryCopy PKStringForKey:@"heightClass"];
      v11 = PKPassTileHeightClassFromString(v10);
      self->_heightClass = v11;
      if (v11)
      {
        v12 = 1;
LABEL_16:

LABEL_17:
        goto LABEL_18;
      }

      v15 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        identifier2 = [(PKPassTileMetadata *)self identifier];
        *buf = 138412546;
        v20 = identifier2;
        v21 = 2112;
        v22 = v10;
        _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "PKPassTileMetadataVerticalFlowGroup: %@ invalid - unrecognized height class: %@.", buf, 0x16u);
      }
    }

    else
    {
      v10 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        identifier3 = [(PKPassTileMetadata *)self identifier];
        *buf = 138412546;
        v20 = identifier3;
        v21 = 2112;
        v22 = v8;
        _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "PKPassTileMetadataVerticalFlowGroup: %@ invalid - unrecognized width class: %@.", buf, 0x16u);
      }
    }

    v12 = 0;
    goto LABEL_16;
  }

  v12 = 0;
LABEL_18:

  return v12;
}

- (PKPassTileMetadataVerticalFlowGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = PKPassTileMetadataVerticalFlowGroup;
  v5 = [(PKPassTileMetadata *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rows"];
    v5->_rows = [v6 unsignedIntegerValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"widthClass"];
    v5->_widthClass = PKPassTileWidthClassVerticalFlowFromString(v7);

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"heightClass"];
    v5->_heightClass = PKPassTileHeightClassFromString(v8);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = PKPassTileMetadataVerticalFlowGroup;
  coderCopy = coder;
  [(PKPassTileMetadata *)&v10 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{self->_rows, v10.receiver, v10.super_class}];
  [coderCopy encodeObject:v5 forKey:@"rows"];

  widthClass = self->_widthClass;
  v7 = @"default";
  if (widthClass != 1)
  {
    v7 = 0;
  }

  if (widthClass == 2)
  {
    v8 = @"compact";
  }

  else
  {
    v8 = v7;
  }

  [coderCopy encodeObject:v8 forKey:@"widthClass"];
  v9 = PKPassTileHeightClassToString(self->_heightClass);
  [coderCopy encodeObject:v9 forKey:@"heightClass"];
}

@end