@interface FMDLocalFindableAccessory
- (FMDLocalFindableAccessory)initWithCoder:(id)coder;
- (FMDLocalFindableAccessory)initWithIdentifier:(id)identifier name:(id)name connected:(BOOL)connected;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FMDLocalFindableAccessory

- (FMDLocalFindableAccessory)initWithIdentifier:(id)identifier name:(id)name connected:(BOOL)connected
{
  identifierCopy = identifier;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = FMDLocalFindableAccessory;
  v11 = [(FMDLocalFindableAccessory *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, identifier);
    objc_storeStrong(&v12->_name, name);
    v12->_connected = connected;
  }

  return v12;
}

- (FMDLocalFindableAccessory)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = FMDLocalFindableAccessory;
  v5 = [(FMDLocalFindableAccessory *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(FMDLocalFindableAccessory *)v5 setIdentifier:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"baUUID"];
    [(FMDLocalFindableAccessory *)v5 setBaUUID:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    [(FMDLocalFindableAccessory *)v5 setName:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"connected"];
    -[FMDLocalFindableAccessory setConnected:](v5, "setConnected:", [v9 BOOLValue]);

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
    [(FMDLocalFindableAccessory *)v5 setSerialNumber:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"alternateSerialNumber"];
    [(FMDLocalFindableAccessory *)v5 setAlternateSerialNumber:v11];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"irkData"];
    [(FMDLocalFindableAccessory *)v5 setIrkData:v12];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"btAddress"];
    [(FMDLocalFindableAccessory *)v5 setBtAddress:v13];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firmwareVersion"];
    [(FMDLocalFindableAccessory *)v5 setFirmwareVersion:v14];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vendorId"];
    [(FMDLocalFindableAccessory *)v5 setVendorId:v15];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productId"];
    [(FMDLocalFindableAccessory *)v5 setProductId:v16];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(FMDLocalFindableAccessory *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  baUUID = [(FMDLocalFindableAccessory *)self baUUID];
  [coderCopy encodeObject:baUUID forKey:@"baUUID"];

  name = [(FMDLocalFindableAccessory *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[FMDLocalFindableAccessory isConnected](self, "isConnected")}];
  [coderCopy encodeObject:v8 forKey:@"connected"];

  serialNumber = [(FMDLocalFindableAccessory *)self serialNumber];
  [coderCopy encodeObject:serialNumber forKey:@"serialNumber"];

  alternateSerialNumber = [(FMDLocalFindableAccessory *)self alternateSerialNumber];
  [coderCopy encodeObject:alternateSerialNumber forKey:@"alternateSerialNumber"];

  irkData = [(FMDLocalFindableAccessory *)self irkData];
  [coderCopy encodeObject:irkData forKey:@"irkData"];

  btAddress = [(FMDLocalFindableAccessory *)self btAddress];
  [coderCopy encodeObject:btAddress forKey:@"btAddress"];

  firmwareVersion = [(FMDLocalFindableAccessory *)self firmwareVersion];
  [coderCopy encodeObject:firmwareVersion forKey:@"firmwareVersion"];

  vendorId = [(FMDLocalFindableAccessory *)self vendorId];
  [coderCopy encodeObject:vendorId forKey:@"vendorId"];

  productId = [(FMDLocalFindableAccessory *)self productId];
  [coderCopy encodeObject:productId forKey:@"productId"];
}

@end