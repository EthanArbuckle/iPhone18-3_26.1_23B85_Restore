@interface PKPassTileMetadataVehicleFunction
- (BOOL)_setUpWithDictionary:(id)a3 privateDictionary:(id)a4;
- (PKPassTileMetadataVehicleFunction)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassTileMetadataVehicleFunction

- (BOOL)_setUpWithDictionary:(id)a3 privateDictionary:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v13.receiver = self;
  v13.super_class = PKPassTileMetadataVehicleFunction;
  if (![(PKPassTileMetadata *)&v13 _setUpWithDictionary:v6 privateDictionary:a4])
  {
LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v7 = [v6 PKArrayContaining:objc_opt_class() forKey:@"vehicleFunctions"];
  vehicleFunctions = self->_vehicleFunctions;
  self->_vehicleFunctions = v7;

  if (![(NSArray *)self->_vehicleFunctions count])
  {
    v10 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(PKPassTileMetadata *)self identifier];
      *buf = 134218242;
      v15 = self;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "PKPassTileMetadataVehicleFunction (%p): tile %@ invalid - must have vehicle functions.", buf, 0x16u);
    }

    goto LABEL_7;
  }

  v9 = 1;
LABEL_8:

  return v9;
}

- (PKPassTileMetadataVehicleFunction)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKPassTileMetadataVehicleFunction;
  v5 = [(PKPassTileMetadata *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"vehicleFunctions"];
    vehicleFunctions = v5->_vehicleFunctions;
    v5->_vehicleFunctions = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPassTileMetadataVehicleFunction;
  v4 = a3;
  [(PKPassTileMetadata *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_vehicleFunctions forKey:{@"vehicleFunctions", v5.receiver, v5.super_class}];
}

@end