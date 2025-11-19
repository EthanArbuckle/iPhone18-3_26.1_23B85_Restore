@interface MBCKRemoveDomainRequest
+ (BOOL)_removeDomain:(id)a3 cache:(id)a4 tracker:(id)a5 account:(id)a6 error:(id *)a7;
+ (BOOL)removeDomain:(id)a3 cache:(id)a4 databaseManager:(id)a5 account:(id)a6 connection:(id)a7 error:(id *)a8;
+ (id)removeDomainRequestForDevice:(id)a3;
- (MBCKDevice)device;
- (MBCKRemoveDomainRequest)initWithDevice:(id)a3;
- (id)recordRepresentation;
@end

@implementation MBCKRemoveDomainRequest

+ (id)removeDomainRequestForDevice:(id)a3
{
  v3 = a3;
  v4 = [[MBCKRemoveDomainRequest alloc] initWithDevice:v3];

  return v4;
}

- (MBCKRemoveDomainRequest)initWithDevice:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MBCKRemoveDomainRequest;
  v5 = [(MBCKModel *)&v12 initWithRecord:0 cache:0];
  v6 = v5;
  if (v5)
  {
    [(MBCKRemoveDomainRequest *)v5 setDevice:v4];
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
  v3 = [(MBCKModel *)&v10 recordRepresentation];
  v4 = [v3 objectForKeyedSubscript:@"device"];

  if (!v4)
  {
    v5 = [CKReference alloc];
    v6 = [(MBCKRemoveDomainRequest *)self device];
    v7 = [v6 recordID];
    v8 = [v5 initWithRecordID:v7 action:0];
    [v3 setObject:v8 forKeyedSubscript:@"device"];
  }

  [v3 setObject:self->_domainHMACsToRemove forKeyedSubscript:@"domainHMACsToRemove"];

  return v3;
}

+ (BOOL)_removeDomain:(id)a3 cache:(id)a4 tracker:(id)a5 account:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v29 = a6;
  v33 = 0;
  v14 = [MBCKAccount fetchAccountWithOperationTracker:v13 cache:v12 error:&v33];
  v15 = v33;
  if (v14)
  {
    if ([v14 fetchDevicesWithOperationTracker:v13 error:a7])
    {
      v28 = MBDeviceUUID();
      v16 = [v14 deviceForUUID:v28];
      if (v16)
      {
        v17 = [MBCKRemoveDomainRequest removeDomainRequestForDevice:v16];
        v18 = [v11 isEqualToString:@"AppDomain-com.apple.iBooks"];
        v19 = [v16 hmacKey];
        if (v18)
        {
          [MBCKManifest domainHmac:@"BooksDomain" key:v19];
        }

        else
        {
          [MBCKManifest domainHmac:v11 key:v19];
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
        v25 = [v17 recordRepresentation];
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_100124B30;
        v30[3] = &unk_1003BD748;
        p_buf = &buf;
        v26 = v24;
        v31 = v26;
        [v13 saveRecord:v25 delegate:0 completion:v30];

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
    if (a7)
    {
      v22 = v15;
      v21 = 0;
      *a7 = v15;
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

+ (BOOL)removeDomain:(id)a3 cache:(id)a4 databaseManager:(id)a5 account:(id)a6 connection:(id)a7 error:(id *)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = a5;
  v18 = +[MBCKOperationPolicy expensiveCellularPolicy];
  v19 = [MBCKOperationTracker operationTrackerWithAccount:v15 databaseManager:v17 policy:v18 error:a8];

  if (v19)
  {
    v20 = [v16 processName];
    v21 = [v18 operationGroupWithName:@"removeDomain" processName:v20];
    [v19 setCkOperationGroup:v21];

    v22 = +[MBAppManager appManager];
    v23 = [v15 persona];
    [v22 setEnabled:0 forDomainName:v13 persona:v23];

    v24 = [objc_opt_class() _removeDomain:v13 cache:v14 tracker:v19 account:v15 error:a8];
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