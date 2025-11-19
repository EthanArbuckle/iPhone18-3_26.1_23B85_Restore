@interface FMDLocalFindableAccessory
- (FMDLocalFindableAccessory)initWithCoder:(id)a3;
- (FMDLocalFindableAccessory)initWithIdentifier:(id)a3 name:(id)a4 connected:(BOOL)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FMDLocalFindableAccessory

- (FMDLocalFindableAccessory)initWithIdentifier:(id)a3 name:(id)a4 connected:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = FMDLocalFindableAccessory;
  v11 = [(FMDLocalFindableAccessory *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, a3);
    objc_storeStrong(&v12->_name, a4);
    v12->_connected = a5;
  }

  return v12;
}

- (FMDLocalFindableAccessory)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = FMDLocalFindableAccessory;
  v5 = [(FMDLocalFindableAccessory *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(FMDLocalFindableAccessory *)v5 setIdentifier:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"baUUID"];
    [(FMDLocalFindableAccessory *)v5 setBaUUID:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    [(FMDLocalFindableAccessory *)v5 setName:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"connected"];
    -[FMDLocalFindableAccessory setConnected:](v5, "setConnected:", [v9 BOOLValue]);

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
    [(FMDLocalFindableAccessory *)v5 setSerialNumber:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"alternateSerialNumber"];
    [(FMDLocalFindableAccessory *)v5 setAlternateSerialNumber:v11];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"irkData"];
    [(FMDLocalFindableAccessory *)v5 setIrkData:v12];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"btAddress"];
    [(FMDLocalFindableAccessory *)v5 setBtAddress:v13];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firmwareVersion"];
    [(FMDLocalFindableAccessory *)v5 setFirmwareVersion:v14];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"vendorId"];
    [(FMDLocalFindableAccessory *)v5 setVendorId:v15];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productId"];
    [(FMDLocalFindableAccessory *)v5 setProductId:v16];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FMDLocalFindableAccessory *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(FMDLocalFindableAccessory *)self baUUID];
  [v4 encodeObject:v6 forKey:@"baUUID"];

  v7 = [(FMDLocalFindableAccessory *)self name];
  [v4 encodeObject:v7 forKey:@"name"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[FMDLocalFindableAccessory isConnected](self, "isConnected")}];
  [v4 encodeObject:v8 forKey:@"connected"];

  v9 = [(FMDLocalFindableAccessory *)self serialNumber];
  [v4 encodeObject:v9 forKey:@"serialNumber"];

  v10 = [(FMDLocalFindableAccessory *)self alternateSerialNumber];
  [v4 encodeObject:v10 forKey:@"alternateSerialNumber"];

  v11 = [(FMDLocalFindableAccessory *)self irkData];
  [v4 encodeObject:v11 forKey:@"irkData"];

  v12 = [(FMDLocalFindableAccessory *)self btAddress];
  [v4 encodeObject:v12 forKey:@"btAddress"];

  v13 = [(FMDLocalFindableAccessory *)self firmwareVersion];
  [v4 encodeObject:v13 forKey:@"firmwareVersion"];

  v14 = [(FMDLocalFindableAccessory *)self vendorId];
  [v4 encodeObject:v14 forKey:@"vendorId"];

  v15 = [(FMDLocalFindableAccessory *)self productId];
  [v4 encodeObject:v15 forKey:@"productId"];
}

@end