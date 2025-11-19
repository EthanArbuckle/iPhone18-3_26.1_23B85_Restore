@interface MADGenerationXPCServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation MADGenerationXPCServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100008EF4();
  }

  if (v7)
  {
    [v7 auditToken];
  }

  else
  {
    memset(&token, 0, sizeof(token));
  }

  v8 = SecTaskCreateWithAuditToken(0, &token);
  v19 = v8;
  if (v8)
  {
    error = 0;
    v9 = SecTaskCopyValueForEntitlement(v8, @"com.apple.mediaanalysisd.generation.client", &error);
    cf1 = v9;
    if (error)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        token.val[0] = 138412290;
        *&token.val[1] = error;
        v10 = "Failed to copy value for entitlement (%@)";
        v11 = 12;
LABEL_18:
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v10, &token, v11);
      }
    }

    else
    {
      if (v9)
      {
        v13 = CFGetTypeID(v9);
        if (v13 == CFBooleanGetTypeID())
        {
          if (CFEqual(cf1, kCFBooleanTrue))
          {
            v14 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MADGenerationXPCServiceProtocol];
            [(MADGenerationXPCServiceDelegate *)self configureServerInterface:v14];
            [v7 setExportedInterface:v14];
            v15 = objc_alloc_init(MADGenerationXPCService);
            [v7 setExportedObject:v15];

            [v7 resume];
            v12 = 1;
LABEL_20:
            sub_1000020D0(&cf1);
            sub_1000020D0(&error);
            goto LABEL_21;
          }
        }
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(token.val[0]) = 0;
        v10 = "Client not entitled; denying connection";
        v11 = 2;
        goto LABEL_18;
      }
    }

    v12 = 0;
    goto LABEL_20;
  }

  v12 = 0;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(token.val[0]) = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to query client entitlements; denying connection", &token, 2u);
    v12 = 0;
  }

LABEL_21:
  sub_1000020D0(&v19);

  return v12;
}

@end