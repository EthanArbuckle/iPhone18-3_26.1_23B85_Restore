@interface NPKVehicleConnectivityCoordinator
+ (id)_secureElementPassMatchingAID:(id)d subcredentialIdentifier:(id)identifier;
+ (id)_subcredentialIdentifierForPass:(id)pass;
- (BOOL)isVehicleConnectedForPass:(id)pass;
- (NPKVehicleConnectivityCoordinator)init;
- (NPKVehicleConnectivityCoordinator)initWithDistributedNotificationCenter:(id)center;
- (NPKVehicleConnectivityCoordinatorDelegate)delegate;
- (void)_handleCarKeyVehicleStatusChangeNotification:(id)notification;
- (void)_parseVehicleStatusChangeNotificationObject:(id)object outApplicationIdentifier:(id *)identifier outSubcredentialIdentifier:(id *)subcredentialIdentifier;
@end

@implementation NPKVehicleConnectivityCoordinator

- (NPKVehicleConnectivityCoordinator)init
{
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  v4 = [(NPKVehicleConnectivityCoordinator *)self initWithDistributedNotificationCenter:defaultCenter];

  return v4;
}

- (NPKVehicleConnectivityCoordinator)initWithDistributedNotificationCenter:(id)center
{
  centerCopy = center;
  v9.receiver = self;
  v9.super_class = NPKVehicleConnectivityCoordinator;
  v6 = [(NPKVehicleConnectivityCoordinator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_distributedNotificationCenter, center);
    [(NPKVehicleConnectivityCoordinator *)v7 _registerObservers];
  }

  return v7;
}

- (BOOL)isVehicleConnectedForPass:(id)pass
{
  v26 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  if (![passCopy isCarKeyPass] || (objc_msgSend(passCopy, "npkSupportsBluetooth") & 1) == 0)
  {
    v4 = pk_General_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

    if (v5)
    {
      v6 = pk_General_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v21 = "[NPKVehicleConnectivityCoordinator isVehicleConnectedForPass:]";
        v22 = 2082;
        v23 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKVehicleConnectivityCoordinator.m";
        v24 = 2048;
        v25 = 43;
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to check vehicle connected state for any pass other than UWB capable car keys!)", buf, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  v19 = 0;
  v7 = [PKGetClassNFDigitalCarKeySession() getVehicleReports:&v19];
  v8 = v19;
  if (!v8)
  {
    v11 = [objc_opt_class() _subcredentialIdentifierForPass:passCopy];
    v12 = [v7 objectForKeyedSubscript:v11];
    LOBYTE(v10) = v12 != 0;
    v13 = pk_General_log();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

    if (v14)
    {
      v15 = pk_General_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        uniqueID = [passCopy uniqueID];
        *buf = 138412546;
        v21 = uniqueID;
        v22 = 2112;
        v23 = v12;
        _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Notice: NPKVehicleConnectivityCoordinator: Vehicle report for pass %@ is %@", buf, 0x16u);
      }
    }

    goto LABEL_18;
  }

  v9 = pk_General_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

  if (v10)
  {
    v11 = pk_General_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v8;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_ERROR, "Error: NPKVehicleConnectivityCoordinator: Unable to fetch vehicle report! %@", buf, 0xCu);
    }

    LOBYTE(v10) = 0;
LABEL_18:
  }

  v17 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)_handleCarKeyVehicleStatusChangeNotification:(id)notification
{
  v24 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  object = [notificationCopy object];
  v16 = 0;
  v17 = 0;
  [(NPKVehicleConnectivityCoordinator *)self _parseVehicleStatusChangeNotificationObject:object outApplicationIdentifier:&v17 outSubcredentialIdentifier:&v16];
  v6 = v17;
  v7 = v16;

  v8 = pk_General_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_General_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v19 = notificationCopy;
      v20 = 2112;
      v21 = v6;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKVehicleConnectivityCoordinator: Received car key vehicle status change notification: %@ for AID: %@ subcredential ID: %@", buf, 0x20u);
    }
  }

  v11 = [objc_opt_class() _secureElementPassMatchingAID:v6 subcredentialIdentifier:v7];
  if (v11)
  {
    delegate = [(NPKVehicleConnectivityCoordinator *)self delegate];
    [delegate vehicleConnectivityCoordinator:self didUpdateVehicleStatusForPass:v11];
  }

  else
  {
    v14 = pk_General_log();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (!v15)
    {
      goto LABEL_8;
    }

    delegate = pk_General_log();
    if (os_log_type_enabled(delegate, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v7;
      _os_log_impl(&dword_25B300000, delegate, OS_LOG_TYPE_DEFAULT, "Notice: NPKVehicleConnectivityCoordinator: Unable to identify pass for subcredential: %@", buf, 0xCu);
    }
  }

LABEL_8:
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_parseVehicleStatusChangeNotificationObject:(id)object outApplicationIdentifier:(id *)identifier outSubcredentialIdentifier:(id *)subcredentialIdentifier
{
  objectCopy = object;
  if (objectCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = [objectCopy componentsSeparatedByString:@":"];
    *identifier = [v8 firstObject];
    if ([v8 count] == 2)
    {
      lastObject = [v8 lastObject];
      *subcredentialIdentifier = lastObject;
    }

    else
    {
      *subcredentialIdentifier = 0;
    }
  }

  else
  {
    v10 = pk_General_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v12 = pk_General_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Warning: Expected to be provided a notification object, but instead found nil!", v13, 2u);
      }
    }
  }
}

+ (id)_secureElementPassMatchingAID:(id)d subcredentialIdentifier:(id)identifier
{
  identifierCopy = identifier;
  mEMORY[0x277D37FC0] = [MEMORY[0x277D37FC0] sharedInstance];
  v7 = [mEMORY[0x277D37FC0] passesOfType:1];

  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __91__NPKVehicleConnectivityCoordinator__secureElementPassMatchingAID_subcredentialIdentifier___block_invoke;
  v16 = &unk_279944ED8;
  v17 = identifierCopy;
  selfCopy = self;
  v8 = identifierCopy;
  v9 = [v7 pk_objectsPassingTest:&v13];

  firstObject = [v9 firstObject];
  secureElementPass = [firstObject secureElementPass];

  return secureElementPass;
}

uint64_t __91__NPKVehicleConnectivityCoordinator__secureElementPassMatchingAID_subcredentialIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 40);
  v7 = [a2 secureElementPass];
  v8 = [v6 _subcredentialIdentifierForPass:v7];

  v9 = [v8 isEqualToString:*(a1 + 32)];
  *a4 = v9;

  return v9;
}

+ (id)_subcredentialIdentifierForPass:(id)pass
{
  secureElementPass = [pass secureElementPass];
  devicePrimaryContactlessPaymentApplication = [secureElementPass devicePrimaryContactlessPaymentApplication];

  subcredentials = [devicePrimaryContactlessPaymentApplication subcredentials];
  anyObject = [subcredentials anyObject];

  identifier = [anyObject identifier];

  return identifier;
}

- (NPKVehicleConnectivityCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end