@interface PKPassTileMetadataVerticalFlowGroup
- (BOOL)_setUpWithDictionary:(id)a3 privateDictionary:(id)a4;
- (PKPassTileMetadataVerticalFlowGroup)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassTileMetadataVerticalFlowGroup

- (BOOL)_setUpWithDictionary:(id)a3 privateDictionary:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v18.receiver = self;
  v18.super_class = PKPassTileMetadataVerticalFlowGroup;
  if ([(PKPassTileMetadata *)&v18 _setUpWithDictionary:v6 privateDictionary:a4])
  {
    v7 = [v6 PKNumberForKey:@"rows"];
    if (([v7 pk_isPositiveNumber]& 1) == 0)
    {
      v8 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [(PKPassTileMetadata *)self identifier];
        *buf = 138412546;
        v20 = v13;
        v21 = 2112;
        v22 = v7;
        _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKPassTileMetadataVerticalFlowGroup: %@ invalid - invalid value for rows: %@.", buf, 0x16u);
      }

      v12 = 0;
      goto LABEL_17;
    }

    self->_rows = [v7 unsignedIntegerValue];
    v8 = [v6 PKStringForKey:@"widthClass"];
    v9 = PKPassTileWidthClassVerticalFlowFromString(v8);
    self->_widthClass = v9;
    if (v9)
    {
      v10 = [v6 PKStringForKey:@"heightClass"];
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
        v16 = [(PKPassTileMetadata *)self identifier];
        *buf = 138412546;
        v20 = v16;
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
        v14 = [(PKPassTileMetadata *)self identifier];
        *buf = 138412546;
        v20 = v14;
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

- (PKPassTileMetadataVerticalFlowGroup)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PKPassTileMetadataVerticalFlowGroup;
  v5 = [(PKPassTileMetadata *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rows"];
    v5->_rows = [v6 unsignedIntegerValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"widthClass"];
    v5->_widthClass = PKPassTileWidthClassVerticalFlowFromString(v7);

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"heightClass"];
    v5->_heightClass = PKPassTileHeightClassFromString(v8);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = PKPassTileMetadataVerticalFlowGroup;
  v4 = a3;
  [(PKPassTileMetadata *)&v10 encodeWithCoder:v4];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{self->_rows, v10.receiver, v10.super_class}];
  [v4 encodeObject:v5 forKey:@"rows"];

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

  [v4 encodeObject:v8 forKey:@"widthClass"];
  v9 = PKPassTileHeightClassToString(self->_heightClass);
  [v4 encodeObject:v9 forKey:@"heightClass"];
}

@end