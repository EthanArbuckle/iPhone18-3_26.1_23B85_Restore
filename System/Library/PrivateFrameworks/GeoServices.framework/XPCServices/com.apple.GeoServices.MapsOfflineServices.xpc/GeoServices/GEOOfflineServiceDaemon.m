@interface GEOOfflineServiceDaemon
- (BOOL)shouldAllowIncomingConnection:(id)a3;
@end

@implementation GEOOfflineServiceDaemon

- (BOOL)shouldAllowIncomingConnection:(id)a3
{
  v3 = xpc_connection_copy_entitlement_value();
  v4 = v3;
  if (!v3)
  {
    v5 = sub_1000014D8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v12 = 0;
      v6 = "Rejecting incoming connection due to missing entitlement";
      v7 = &v12;
      goto LABEL_11;
    }

LABEL_12:

    v8 = 0;
    goto LABEL_13;
  }

  if (xpc_get_type(v3) != &_xpc_type_BOOL)
  {
    v5 = sub_1000014D8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = 0;
      v6 = "Rejecting incoming connection due to malformed entitlement value";
      v7 = &v11;
LABEL_11:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, v6, v7, 2u);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  if (!xpc_BOOL_get_value(v4))
  {
    v5 = sub_1000014D8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = 0;
      v6 = "Rejecting incoming connection due to incorrect entitlement value";
      v7 = &v10;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v8 = 1;
LABEL_13:

  return v8;
}

@end