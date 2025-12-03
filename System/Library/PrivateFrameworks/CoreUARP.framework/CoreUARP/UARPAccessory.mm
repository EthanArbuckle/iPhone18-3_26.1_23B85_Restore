@interface UARPAccessory
+ (id)logger;
- (BOOL)clientQueryPendingForProperty:(unint64_t)property;
- (BOOL)isEqual:(id)equal;
- (UARPAccessory)initWithHardwareID:(id)d uuid:(id)uuid;
- (UARPAccessory)initWithID:(id)d;
- (UARPAccessory)initWithManufacturer:(id)manufacturer modelName:(id)name serialNumber:(id)number firmwareVersion:(id)version;
- (UARPAccessory)initWithManufacturer:(id)manufacturer modelName:(id)name serialNumber:(id)number firmwareVersion:(id)version productGroup:(id)group productNumber:(id)productNumber;
- (UARPAccessory)initWithModelNumber:(id)number;
- (UARPAccessory)initWithProductGroup:(id)group productNumber:(id)number uuid:(id)uuid;
- (id)bsdNotifications;
- (id)partnerSerialNumbers;
- (id)serviceBsdNotifications;
- (void)addPendingClientPropertyQuery:(unint64_t)query;
- (void)removePendingClientPropertyQuery:(unint64_t)query;
- (void)setPartnerSerialNumbers:(id)numbers;
@end

@implementation UARPAccessory

- (UARPAccessory)initWithID:(id)d
{
  dCopy = d;
  v13.receiver = self;
  v13.super_class = UARPAccessory;
  v6 = [(UARPAccessory *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_id, d);
    array = [MEMORY[0x277CBEB18] array];
    internalPendingAssets = v7->_internalPendingAssets;
    v7->_internalPendingAssets = array;

    v10 = [MEMORY[0x277CBEB58] set];
    pendingClientPropertyQueries = v7->_pendingClientPropertyQueries;
    v7->_pendingClientPropertyQueries = v10;
  }

  return v7;
}

- (UARPAccessory)initWithManufacturer:(id)manufacturer modelName:(id)name serialNumber:(id)number firmwareVersion:(id)version
{
  versionCopy = version;
  numberCopy = number;
  nameCopy = name;
  manufacturerCopy = manufacturer;
  v14 = [[UARPAccessoryID alloc] initWithManufacturer:manufacturerCopy modelName:nameCopy serialNumber:numberCopy firmwareVersion:versionCopy];

  v15 = [(UARPAccessory *)self initWithID:v14];
  return v15;
}

- (UARPAccessory)initWithManufacturer:(id)manufacturer modelName:(id)name serialNumber:(id)number firmwareVersion:(id)version productGroup:(id)group productNumber:(id)productNumber
{
  productNumberCopy = productNumber;
  groupCopy = group;
  versionCopy = version;
  numberCopy = number;
  nameCopy = name;
  manufacturerCopy = manufacturer;
  v20 = [[UARPAccessoryID alloc] initWithManufacturer:manufacturerCopy modelName:nameCopy serialNumber:numberCopy firmwareVersion:versionCopy productGroup:groupCopy productNumber:productNumberCopy];

  v21 = [(UARPAccessory *)self initWithID:v20];
  return v21;
}

- (UARPAccessory)initWithModelNumber:(id)number
{
  numberCopy = number;
  v5 = [[UARPAccessoryID alloc] initWithModelNumber:numberCopy];

  v6 = [(UARPAccessory *)self initWithID:v5];
  return v6;
}

- (UARPAccessory)initWithProductGroup:(id)group productNumber:(id)number uuid:(id)uuid
{
  uuidCopy = uuid;
  numberCopy = number;
  groupCopy = group;
  v11 = [[UARPAccessoryID alloc] initWithManufacturer:0 modelName:0 serialNumber:0 firmwareVersion:0 productGroup:groupCopy productNumber:numberCopy];

  [(UARPAccessoryID *)v11 setUuid:uuidCopy];
  v12 = [(UARPAccessory *)self initWithID:v11];

  return v12;
}

- (UARPAccessory)initWithHardwareID:(id)d uuid:(id)uuid
{
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  uuidCopy = uuid;
  v8 = +[UARPAccessory logger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = +[UARPSupportedAccessory supportedAccessories];
    v26 = 138412290;
    v27 = v9;
    _os_log_impl(&dword_247AA7000, v8, OS_LOG_TYPE_INFO, "Supported accessories %@", &v26, 0xCu);
  }

  v10 = [UARPSupportedAccessory findByHardwareID:dCopy];
  v11 = v10;
  if (!v10)
  {
    v16 = +[UARPAccessory logger];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [UARPAccessory initWithHardwareID:dCopy uuid:v16];
    }

    goto LABEL_18;
  }

  appleModelNumber = [v10 appleModelNumber];

  if (!appleModelNumber)
  {
    productGroup = [v11 productGroup];
    if (productGroup)
    {
      v19 = productGroup;
      productNumber = [v11 productNumber];

      if (productNumber)
      {
        v21 = +[UARPAccessory logger];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v26 = 138412290;
          v27 = v11;
          _os_log_impl(&dword_247AA7000, v21, OS_LOG_TYPE_INFO, "PG/PN based accessory %@", &v26, 0xCu);
        }

        v22 = [UARPAccessoryID alloc];
        productGroup2 = [v11 productGroup];
        productNumber2 = [v11 productNumber];
        v16 = [(UARPAccessoryID *)v22 initWithProductGroup:productGroup2 productNumber:productNumber2];

        goto LABEL_8;
      }
    }

    v16 = +[UARPAccessory logger];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [UARPAccessory initWithHardwareID:v11 uuid:v16];
    }

LABEL_18:
    selfCopy = 0;
    goto LABEL_19;
  }

  v13 = +[UARPAccessory logger];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v26 = 138412290;
    v27 = v11;
    _os_log_impl(&dword_247AA7000, v13, OS_LOG_TYPE_INFO, "Apple Model Number based accessory %@", &v26, 0xCu);
  }

  v14 = [UARPAccessoryID alloc];
  productGroup2 = [v11 appleModelNumber];
  v16 = [(UARPAccessoryID *)v14 initWithModelNumber:productGroup2];
LABEL_8:

  [v16 setUuid:uuidCopy];
  -[NSObject setTransport:](v16, "setTransport:", [dCopy transport]);
  self = [(UARPAccessory *)self initWithID:v16];
  selfCopy = self;
LABEL_19:

  v24 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = self == equalCopy || [(UARPAccessoryID *)self->_id isEqual:equalCopy->_id];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)addPendingClientPropertyQuery:(unint64_t)query
{
  pendingClientPropertyQueries = self->_pendingClientPropertyQueries;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:query];
  [(NSMutableSet *)pendingClientPropertyQueries addObject:v4];
}

- (void)removePendingClientPropertyQuery:(unint64_t)query
{
  pendingClientPropertyQueries = self->_pendingClientPropertyQueries;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:query];
  [(NSMutableSet *)pendingClientPropertyQueries removeObject:v4];
}

- (BOOL)clientQueryPendingForProperty:(unint64_t)property
{
  pendingClientPropertyQueries = self->_pendingClientPropertyQueries;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:property];
  LOBYTE(pendingClientPropertyQueries) = [(NSMutableSet *)pendingClientPropertyQueries containsObject:v4];

  return pendingClientPropertyQueries;
}

+ (id)logger
{
  if (logger_onceToken != -1)
  {
    +[UARPAccessory logger];
  }

  v3 = logger_myLog;

  return v3;
}

uint64_t __23__UARPAccessory_logger__block_invoke()
{
  logger_myLog = os_log_create("com.apple.accessoryupdater.uarp", "uarpAccessory");

  return MEMORY[0x2821F96F8]();
}

- (id)bsdNotifications
{
  modelNumber = [(UARPAccessoryID *)self->_id modelNumber];
  v3 = [UARPSupportedAccessory findByAppleModelNumber:modelNumber];

  bsdNotifications = [v3 bsdNotifications];

  return bsdNotifications;
}

- (id)serviceBsdNotifications
{
  modelNumber = [(UARPAccessoryID *)self->_id modelNumber];
  v3 = [UARPSupportedAccessory findByAppleModelNumber:modelNumber];

  serviceBsdNotifications = [v3 serviceBsdNotifications];

  return serviceBsdNotifications;
}

- (void)setPartnerSerialNumbers:(id)numbers
{
  numbersCopy = numbers;
  obj = self;
  objc_sync_enter(obj);
  partnerSerialNumbers = obj->_partnerSerialNumbers;
  obj->_partnerSerialNumbers = numbersCopy;

  objc_sync_exit(obj);
}

- (id)partnerSerialNumbers
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_partnerSerialNumbers;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)initWithHardwareID:(uint64_t)a1 uuid:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_247AA7000, a2, OS_LOG_TYPE_ERROR, "Unsupported accessory %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)initWithHardwareID:(uint64_t)a1 uuid:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_247AA7000, a2, OS_LOG_TYPE_ERROR, "Unsupported hardwareID %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end