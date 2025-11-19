@interface UARPAccessory
+ (id)logger;
- (BOOL)clientQueryPendingForProperty:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (UARPAccessory)initWithHardwareID:(id)a3 uuid:(id)a4;
- (UARPAccessory)initWithID:(id)a3;
- (UARPAccessory)initWithManufacturer:(id)a3 modelName:(id)a4 serialNumber:(id)a5 firmwareVersion:(id)a6;
- (UARPAccessory)initWithManufacturer:(id)a3 modelName:(id)a4 serialNumber:(id)a5 firmwareVersion:(id)a6 productGroup:(id)a7 productNumber:(id)a8;
- (UARPAccessory)initWithModelNumber:(id)a3;
- (UARPAccessory)initWithProductGroup:(id)a3 productNumber:(id)a4 uuid:(id)a5;
- (id)bsdNotifications;
- (id)partnerSerialNumbers;
- (id)serviceBsdNotifications;
- (void)addPendingClientPropertyQuery:(unint64_t)a3;
- (void)removePendingClientPropertyQuery:(unint64_t)a3;
- (void)setPartnerSerialNumbers:(id)a3;
@end

@implementation UARPAccessory

- (UARPAccessory)initWithID:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = UARPAccessory;
  v6 = [(UARPAccessory *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_id, a3);
    v8 = [MEMORY[0x277CBEB18] array];
    internalPendingAssets = v7->_internalPendingAssets;
    v7->_internalPendingAssets = v8;

    v10 = [MEMORY[0x277CBEB58] set];
    pendingClientPropertyQueries = v7->_pendingClientPropertyQueries;
    v7->_pendingClientPropertyQueries = v10;
  }

  return v7;
}

- (UARPAccessory)initWithManufacturer:(id)a3 modelName:(id)a4 serialNumber:(id)a5 firmwareVersion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[UARPAccessoryID alloc] initWithManufacturer:v13 modelName:v12 serialNumber:v11 firmwareVersion:v10];

  v15 = [(UARPAccessory *)self initWithID:v14];
  return v15;
}

- (UARPAccessory)initWithManufacturer:(id)a3 modelName:(id)a4 serialNumber:(id)a5 firmwareVersion:(id)a6 productGroup:(id)a7 productNumber:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [[UARPAccessoryID alloc] initWithManufacturer:v19 modelName:v18 serialNumber:v17 firmwareVersion:v16 productGroup:v15 productNumber:v14];

  v21 = [(UARPAccessory *)self initWithID:v20];
  return v21;
}

- (UARPAccessory)initWithModelNumber:(id)a3
{
  v4 = a3;
  v5 = [[UARPAccessoryID alloc] initWithModelNumber:v4];

  v6 = [(UARPAccessory *)self initWithID:v5];
  return v6;
}

- (UARPAccessory)initWithProductGroup:(id)a3 productNumber:(id)a4 uuid:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[UARPAccessoryID alloc] initWithManufacturer:0 modelName:0 serialNumber:0 firmwareVersion:0 productGroup:v10 productNumber:v9];

  [(UARPAccessoryID *)v11 setUuid:v8];
  v12 = [(UARPAccessory *)self initWithID:v11];

  return v12;
}

- (UARPAccessory)initWithHardwareID:(id)a3 uuid:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[UARPAccessory logger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = +[UARPSupportedAccessory supportedAccessories];
    v26 = 138412290;
    v27 = v9;
    _os_log_impl(&dword_247AA7000, v8, OS_LOG_TYPE_INFO, "Supported accessories %@", &v26, 0xCu);
  }

  v10 = [UARPSupportedAccessory findByHardwareID:v6];
  v11 = v10;
  if (!v10)
  {
    v16 = +[UARPAccessory logger];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [UARPAccessory initWithHardwareID:v6 uuid:v16];
    }

    goto LABEL_18;
  }

  v12 = [v10 appleModelNumber];

  if (!v12)
  {
    v18 = [v11 productGroup];
    if (v18)
    {
      v19 = v18;
      v20 = [v11 productNumber];

      if (v20)
      {
        v21 = +[UARPAccessory logger];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v26 = 138412290;
          v27 = v11;
          _os_log_impl(&dword_247AA7000, v21, OS_LOG_TYPE_INFO, "PG/PN based accessory %@", &v26, 0xCu);
        }

        v22 = [UARPAccessoryID alloc];
        v15 = [v11 productGroup];
        v23 = [v11 productNumber];
        v16 = [(UARPAccessoryID *)v22 initWithProductGroup:v15 productNumber:v23];

        goto LABEL_8;
      }
    }

    v16 = +[UARPAccessory logger];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [UARPAccessory initWithHardwareID:v11 uuid:v16];
    }

LABEL_18:
    v17 = 0;
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
  v15 = [v11 appleModelNumber];
  v16 = [(UARPAccessoryID *)v14 initWithModelNumber:v15];
LABEL_8:

  [v16 setUuid:v7];
  -[NSObject setTransport:](v16, "setTransport:", [v6 transport]);
  self = [(UARPAccessory *)self initWithID:v16];
  v17 = self;
LABEL_19:

  v24 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = self == v4 || [(UARPAccessoryID *)self->_id isEqual:v4->_id];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)addPendingClientPropertyQuery:(unint64_t)a3
{
  pendingClientPropertyQueries = self->_pendingClientPropertyQueries;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [(NSMutableSet *)pendingClientPropertyQueries addObject:v4];
}

- (void)removePendingClientPropertyQuery:(unint64_t)a3
{
  pendingClientPropertyQueries = self->_pendingClientPropertyQueries;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [(NSMutableSet *)pendingClientPropertyQueries removeObject:v4];
}

- (BOOL)clientQueryPendingForProperty:(unint64_t)a3
{
  pendingClientPropertyQueries = self->_pendingClientPropertyQueries;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
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
  v2 = [(UARPAccessoryID *)self->_id modelNumber];
  v3 = [UARPSupportedAccessory findByAppleModelNumber:v2];

  v4 = [v3 bsdNotifications];

  return v4;
}

- (id)serviceBsdNotifications
{
  v2 = [(UARPAccessoryID *)self->_id modelNumber];
  v3 = [UARPSupportedAccessory findByAppleModelNumber:v2];

  v4 = [v3 serviceBsdNotifications];

  return v4;
}

- (void)setPartnerSerialNumbers:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  partnerSerialNumbers = obj->_partnerSerialNumbers;
  obj->_partnerSerialNumbers = v4;

  objc_sync_exit(obj);
}

- (id)partnerSerialNumbers
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_partnerSerialNumbers;
  objc_sync_exit(v2);

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