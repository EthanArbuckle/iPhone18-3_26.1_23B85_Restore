@interface PDXPCListener_ApplicationAuthorization
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation PDXPCListener_ApplicationAuthorization

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [v5 processIdentifier];
  v7 = [v5 valueForEntitlement:@"com.apple.wallet.application-authorization"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ![v7 BOOLValue])
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = 134218240;
      v14 = v5;
      v15 = 2048;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "PDApplicationAuthorizationHandle: rejecting connection %p - remote process %ld missing entitlement com.apple.wallet.application-authorization.", &v13, 0x16u);
    }

    goto LABEL_12;
  }

  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v13 = 134218240;
    v14 = v5;
    v15 = 2048;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "PDApplicationAuthorizationHandle: accepting connection %p for remote process %ld.", &v13, 0x16u);
  }

  server = self->_server;
  if (!server || sub_1005B0200(server) != 1)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134217984;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PDApplicationAuthorizationHandle: invalidating connection %p - passd not initialized.", &v13, 0xCu);
    }

LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  sub_10034B754(PDApplicationAuthorizationHandle, v5, self->_server);
  v10 = 1;
LABEL_13:

  return v10;
}

@end