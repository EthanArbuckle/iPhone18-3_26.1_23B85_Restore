@interface MBCKRemoveDomainRequest
+ (BOOL)_removeDomain:(id)domain cache:(id)cache tracker:(id)tracker account:(id)account error:(id *)error;
+ (BOOL)removeDomain:(id)domain cache:(id)cache databaseManager:(id)manager account:(id)account connection:(id)connection error:(id *)error;
+ (id)removeDomainRequestForDevice:(id)device;
- (MBCKDevice)device;
- (MBCKRemoveDomainRequest)initWithDevice:(id)device;
- (id)recordRepresentation;
@end

@implementation MBCKRemoveDomainRequest

+ (id)removeDomainRequestForDevice:(id)device
{
  deviceCopy = device;
  v4 = [[MBCKRemoveDomainRequest alloc] initWithDevice:deviceCopy];

  return v4;
}

- (MBCKRemoveDomainRequest)initWithDevice:(id)device
{
  deviceCopy = device;
  v12.receiver = self;
  v12.super_class = MBCKRemoveDomainRequest;
  v5 = [(MBCKModel *)&v12 initWithRecord:0 cache:0];
  v6 = v5;
  if (v5)
  {
    [(MBCKRemoveDomainRequest *)v5 setDevice:deviceCopy];
    v7 = MBRandomUUID();
    uuid = v6->_uuid;
    v6->_uuid = v7;

    v9 = objc_alloc_init(NSMutableArray);
    domainHMACsToRemove = v6->_domainHMACsToRemove;
    v6->_domainHMACsToRemove = v9;
  }

  return v6;
}

- (id)recordRepresentation
{
  v10.receiver = self;
  v10.super_class = MBCKRemoveDomainRequest;
  recordRepresentation = [(MBCKModel *)&v10 recordRepresentation];
  v4 = [recordRepresentation objectForKeyedSubscript:@"device"];

  if (!v4)
  {
    v5 = [CKReference alloc];
    device = [(MBCKRemoveDomainRequest *)self device];
    recordID = [device recordID];
    v8 = [v5 initWithRecordID:recordID action:0];
    [recordRepresentation setObject:v8 forKeyedSubscript:@"device"];
  }

  [recordRepresentation setObject:self->_domainHMACsToRemove forKeyedSubscript:@"domainHMACsToRemove"];

  return recordRepresentation;
}

+ (BOOL)_removeDomain:(id)domain cache:(id)cache tracker:(id)tracker account:(id)account error:(id *)error
{
  domainCopy = domain;
  cacheCopy = cache;
  trackerCopy = tracker;
  accountCopy = account;
  v33 = 0;
  v14 = [MBCKAccount fetchAccountWithOperationTracker:trackerCopy cache:cacheCopy error:&v33];
  v15 = v33;
  if (v14)
  {
    if ([v14 fetchDevicesWithOperationTracker:trackerCopy error:error])
    {
      v28 = MBDeviceUUID();
      v16 = [v14 deviceForUUID:v28];
      if (v16)
      {
        v17 = [MBCKRemoveDomainRequest removeDomainRequestForDevice:v16];
        v18 = [domainCopy isEqualToString:@"AppDomain-com.apple.iBooks"];
        hmacKey = [v16 hmacKey];
        if (v18)
        {
          [MBCKManifest domainHmac:@"BooksDomain" key:hmacKey];
        }

        else
        {
          [MBCKManifest domainHmac:domainCopy key:hmacKey];
        }
        v23 = ;
        [v17 addDomainHmacToRemove:v23];

        *&buf = 0;
        *(&buf + 1) = &buf;
        v35 = 0x3032000000;
        v36 = sub_100124B18;
        v37 = sub_100124B28;
        v38 = 0;
        v24 = dispatch_semaphore_create(0);
        recordRepresentation = [v17 recordRepresentation];
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_100124B30;
        v30[3] = &unk_1003BD748;
        p_buf = &buf;
        v26 = v24;
        v31 = v26;
        [trackerCopy saveRecord:recordRepresentation delegate:0 completion:v30];

        v21 = *(*(&buf + 1) + 40) != 0;
        _Block_object_dispose(&buf, 8);
      }

      else
      {
        v17 = MBGetDefaultLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v28;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "No device %@ to call RemoveDomain on", &buf, 0xCu);
          _MBLog();
        }

        v21 = 1;
      }

      goto LABEL_19;
    }

LABEL_12:
    v21 = 0;
    goto LABEL_19;
  }

  if (![MBError isError:v15 withCode:4])
  {
    if (error)
    {
      v22 = v15;
      v21 = 0;
      *error = v15;
      goto LABEL_19;
    }

    goto LABEL_12;
  }

  v20 = MBGetDefaultLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "No account to call RemoveDomain on", &buf, 2u);
    _MBLog();
  }

  v21 = 1;
LABEL_19:

  return v21;
}

+ (BOOL)removeDomain:(id)domain cache:(id)cache databaseManager:(id)manager account:(id)account connection:(id)connection error:(id *)error
{
  domainCopy = domain;
  cacheCopy = cache;
  accountCopy = account;
  connectionCopy = connection;
  managerCopy = manager;
  v18 = +[MBCKOperationPolicy expensiveCellularPolicy];
  v19 = [MBCKOperationTracker operationTrackerWithAccount:accountCopy databaseManager:managerCopy policy:v18 error:error];

  if (v19)
  {
    processName = [connectionCopy processName];
    v21 = [v18 operationGroupWithName:@"removeDomain" processName:processName];
    [v19 setCkOperationGroup:v21];

    v22 = +[MBAppManager appManager];
    persona = [accountCopy persona];
    [v22 setEnabled:0 forDomainName:domainCopy persona:persona];

    v24 = [objc_opt_class() _removeDomain:domainCopy cache:cacheCopy tracker:v19 account:accountCopy error:error];
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (MBCKDevice)device
{
  WeakRetained = objc_loadWeakRetained(&self->_device);

  return WeakRetained;
}

@end