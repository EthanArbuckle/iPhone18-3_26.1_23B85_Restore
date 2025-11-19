@interface PDDeviceRegistrationService
- (PDDeviceRegistrationService)initWithConnection:(id)a3 server:(id)a4;
- (void)performDeviceRegistrationReturningContextForReason:(id)a3 brokerURL:(id)a4 actionType:(int64_t)a5 completion:(id)a6;
- (void)performRegistrationForMemberOfRegions:(id)a3 withReason:(id)a4 completion:(id)a5;
- (void)performRegistrationForRegion:(id)a3 withReason:(id)a4 completion:(id)a5;
@end

@implementation PDDeviceRegistrationService

- (PDDeviceRegistrationService)initWithConnection:(id)a3 server:(id)a4
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = PDDeviceRegistrationService;
  v6 = [(PDDeviceRegistrationService *)&v12 initWithConnection:v5];
  if (v6)
  {
    v7 = [[PKEntitlementWhitelist alloc] initWithConnection:v5];
    whitelist = v6->_whitelist;
    v6->_whitelist = v7;

    v9 = PKDeviceRegistrationServiceInterface();
    [v5 setRemoteObjectInterface:v9];

    v10 = PDDeviceRegistrationServiceInterface();
    [v5 setExportedInterface:v10];

    [v5 setExportedObject:v6];
  }

  return v6;
}

- (void)performRegistrationForMemberOfRegions:(id)a3 withReason:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(PKEntitlementWhitelist *)self->_whitelist paymentAllAccess])
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315394;
      v15 = "[PDDeviceRegistrationService performRegistrationForMemberOfRegions:withReason:completion:]";
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "RegistrationService: %s called with reason: %@", &v14, 0x16u);
    }

    deviceRegistrationServiceCoordinator = self->_deviceRegistrationServiceCoordinator;
    if (deviceRegistrationServiceCoordinator)
    {
      [(PDDeviceRegistrationServiceCoordinator *)deviceRegistrationServiceCoordinator performRegistrationForMemberOfRegions:v8 force:0 withReason:v9 completion:v10];
      goto LABEL_11;
    }
  }

  else
  {
    v13 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315138;
      v15 = "[PDDeviceRegistrationService performRegistrationForMemberOfRegions:withReason:completion:]";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", &v14, 0xCu);
    }
  }

  if (v10)
  {
    (*(v10 + 2))(v10, 1, 0, 0);
  }

LABEL_11:
}

- (void)performRegistrationForRegion:(id)a3 withReason:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(PKEntitlementWhitelist *)self->_whitelist paymentAllAccess])
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315394;
      v15 = "[PDDeviceRegistrationService performRegistrationForRegion:withReason:completion:]";
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "RegistrationService: %s called with reason: %@", &v14, 0x16u);
    }

    deviceRegistrationServiceCoordinator = self->_deviceRegistrationServiceCoordinator;
    if (deviceRegistrationServiceCoordinator)
    {
      [(PDDeviceRegistrationServiceCoordinator *)deviceRegistrationServiceCoordinator performRegistrationForRegion:v8 force:0 withReason:v9 completion:v10];
      goto LABEL_11;
    }
  }

  else
  {
    v13 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315138;
      v15 = "[PDDeviceRegistrationService performRegistrationForRegion:withReason:completion:]";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", &v14, 0xCu);
    }
  }

  if (v10)
  {
    (*(v10 + 2))(v10, 1, 0, 0);
  }

LABEL_11:
}

- (void)performDeviceRegistrationReturningContextForReason:(id)a3 brokerURL:(id)a4 actionType:(int64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if ([(PKEntitlementWhitelist *)self->_whitelist paymentAllAccess])
  {
    v13 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315650;
      v17 = "[PDDeviceRegistrationService performDeviceRegistrationReturningContextForReason:brokerURL:actionType:completion:]";
      v18 = 2112;
      v19 = v10;
      v20 = 2048;
      v21 = a5;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "RegistrationService: %s called with reason: %@ type: %lu", &v16, 0x20u);
    }

    deviceRegistrationServiceCoordinator = self->_deviceRegistrationServiceCoordinator;
    if (deviceRegistrationServiceCoordinator)
    {
      [(PDDeviceRegistrationServiceCoordinator *)deviceRegistrationServiceCoordinator performDeviceRegistrationForReason:v10 brokerURL:v11 action:a5 forceApplePayRegister:v11 != 0 forcePeerPaymentRegister:0 completion:v12];
      goto LABEL_11;
    }
  }

  else
  {
    v15 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315138;
      v17 = "[PDDeviceRegistrationService performDeviceRegistrationReturningContextForReason:brokerURL:actionType:completion:]";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", &v16, 0xCu);
    }
  }

  if (v12)
  {
    (*(v12 + 2))(v12, 1, 0, 0);
  }

LABEL_11:
}

@end