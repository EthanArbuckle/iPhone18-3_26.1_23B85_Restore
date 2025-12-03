@interface PDDeviceRegistrationService
- (PDDeviceRegistrationService)initWithConnection:(id)connection server:(id)server;
- (void)performDeviceRegistrationReturningContextForReason:(id)reason brokerURL:(id)l actionType:(int64_t)type completion:(id)completion;
- (void)performRegistrationForMemberOfRegions:(id)regions withReason:(id)reason completion:(id)completion;
- (void)performRegistrationForRegion:(id)region withReason:(id)reason completion:(id)completion;
@end

@implementation PDDeviceRegistrationService

- (PDDeviceRegistrationService)initWithConnection:(id)connection server:(id)server
{
  connectionCopy = connection;
  v12.receiver = self;
  v12.super_class = PDDeviceRegistrationService;
  v6 = [(PDDeviceRegistrationService *)&v12 initWithConnection:connectionCopy];
  if (v6)
  {
    v7 = [[PKEntitlementWhitelist alloc] initWithConnection:connectionCopy];
    whitelist = v6->_whitelist;
    v6->_whitelist = v7;

    v9 = PKDeviceRegistrationServiceInterface();
    [connectionCopy setRemoteObjectInterface:v9];

    v10 = PDDeviceRegistrationServiceInterface();
    [connectionCopy setExportedInterface:v10];

    [connectionCopy setExportedObject:v6];
  }

  return v6;
}

- (void)performRegistrationForMemberOfRegions:(id)regions withReason:(id)reason completion:(id)completion
{
  regionsCopy = regions;
  reasonCopy = reason;
  completionCopy = completion;
  if ([(PKEntitlementWhitelist *)self->_whitelist paymentAllAccess])
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315394;
      v15 = "[PDDeviceRegistrationService performRegistrationForMemberOfRegions:withReason:completion:]";
      v16 = 2112;
      v17 = reasonCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "RegistrationService: %s called with reason: %@", &v14, 0x16u);
    }

    deviceRegistrationServiceCoordinator = self->_deviceRegistrationServiceCoordinator;
    if (deviceRegistrationServiceCoordinator)
    {
      [(PDDeviceRegistrationServiceCoordinator *)deviceRegistrationServiceCoordinator performRegistrationForMemberOfRegions:regionsCopy force:0 withReason:reasonCopy completion:completionCopy];
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

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1, 0, 0);
  }

LABEL_11:
}

- (void)performRegistrationForRegion:(id)region withReason:(id)reason completion:(id)completion
{
  regionCopy = region;
  reasonCopy = reason;
  completionCopy = completion;
  if ([(PKEntitlementWhitelist *)self->_whitelist paymentAllAccess])
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315394;
      v15 = "[PDDeviceRegistrationService performRegistrationForRegion:withReason:completion:]";
      v16 = 2112;
      v17 = reasonCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "RegistrationService: %s called with reason: %@", &v14, 0x16u);
    }

    deviceRegistrationServiceCoordinator = self->_deviceRegistrationServiceCoordinator;
    if (deviceRegistrationServiceCoordinator)
    {
      [(PDDeviceRegistrationServiceCoordinator *)deviceRegistrationServiceCoordinator performRegistrationForRegion:regionCopy force:0 withReason:reasonCopy completion:completionCopy];
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

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1, 0, 0);
  }

LABEL_11:
}

- (void)performDeviceRegistrationReturningContextForReason:(id)reason brokerURL:(id)l actionType:(int64_t)type completion:(id)completion
{
  reasonCopy = reason;
  lCopy = l;
  completionCopy = completion;
  if ([(PKEntitlementWhitelist *)self->_whitelist paymentAllAccess])
  {
    v13 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315650;
      v17 = "[PDDeviceRegistrationService performDeviceRegistrationReturningContextForReason:brokerURL:actionType:completion:]";
      v18 = 2112;
      v19 = reasonCopy;
      v20 = 2048;
      typeCopy = type;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "RegistrationService: %s called with reason: %@ type: %lu", &v16, 0x20u);
    }

    deviceRegistrationServiceCoordinator = self->_deviceRegistrationServiceCoordinator;
    if (deviceRegistrationServiceCoordinator)
    {
      [(PDDeviceRegistrationServiceCoordinator *)deviceRegistrationServiceCoordinator performDeviceRegistrationForReason:reasonCopy brokerURL:lCopy action:type forceApplePayRegister:lCopy != 0 forcePeerPaymentRegister:0 completion:completionCopy];
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

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1, 0, 0);
  }

LABEL_11:
}

@end