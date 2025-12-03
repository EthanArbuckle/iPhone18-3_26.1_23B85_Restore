@interface PKPassTileMetadataVehicleFunction
- (BOOL)_setUpWithDictionary:(id)dictionary privateDictionary:(id)privateDictionary;
- (PKPassTileMetadataVehicleFunction)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassTileMetadataVehicleFunction

- (BOOL)_setUpWithDictionary:(id)dictionary privateDictionary:(id)privateDictionary
{
  v18 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = PKPassTileMetadataVehicleFunction;
  if (![(PKPassTileMetadata *)&v13 _setUpWithDictionary:dictionaryCopy privateDictionary:privateDictionary])
  {
LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v7 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"vehicleFunctions"];
  vehicleFunctions = self->_vehicleFunctions;
  self->_vehicleFunctions = v7;

  if (![(NSArray *)self->_vehicleFunctions count])
  {
    v10 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [(PKPassTileMetadata *)self identifier];
      *buf = 134218242;
      selfCopy = self;
      v16 = 2112;
      v17 = identifier;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "PKPassTileMetadataVehicleFunction (%p): tile %@ invalid - must have vehicle functions.", buf, 0x16u);
    }

    goto LABEL_7;
  }

  v9 = 1;
LABEL_8:

  return v9;
}

- (PKPassTileMetadataVehicleFunction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKPassTileMetadataVehicleFunction;
  v5 = [(PKPassTileMetadata *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"vehicleFunctions"];
    vehicleFunctions = v5->_vehicleFunctions;
    v5->_vehicleFunctions = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPassTileMetadataVehicleFunction;
  coderCopy = coder;
  [(PKPassTileMetadata *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_vehicleFunctions forKey:{@"vehicleFunctions", v5.receiver, v5.super_class}];
}

@end