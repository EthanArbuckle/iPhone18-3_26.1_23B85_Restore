@interface CSSXPCListenerDelegate
+ (void)assertObjectConformsToExportedProtocols:(id)a3;
- (BOOL)connection:(id)a3 hasBooleanEntitlement:(id)a4;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (CSSXPCListenerDelegate)initWithExportedObject:(id)a3;
- (id)denialMessageForConnection:(id)a3;
- (id)exportedInterfaceForConnection:(id)a3;
- (id)exportedProtocolForRoles:(id)a3;
- (id)rolesForConnection:(id)a3;
- (void)configureInterface:(id)a3 forRoles:(id)a4;
@end

@implementation CSSXPCListenerDelegate

- (CSSXPCListenerDelegate)initWithExportedObject:(id)a3
{
  v5 = a3;
  [objc_opt_class() assertObjectConformsToExportedProtocols:v5];
  v9.receiver = self;
  v9.super_class = CSSXPCListenerDelegate;
  v6 = [(CSSXPCListenerDelegate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_exportedObject, a3);
  }

  return v7;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [(CSSXPCListenerDelegate *)self exportedInterfaceForConnection:v5];
  if (v6)
  {
    v7 = [(CSSXPCListenerDelegate *)self exportedObject];
    [v5 setExportedObject:v7];

    [v5 setExportedInterface:v6];
    [v5 resume];
  }

  else
  {
    if (qword_100012210 != -1)
    {
      sub_100005F44();
    }

    v8 = qword_100012208;
    if (os_log_type_enabled(qword_100012208, OS_LOG_TYPE_ERROR))
    {
      sub_100005F58(v8, self, v5);
    }
  }

  return v6 != 0;
}

+ (void)assertObjectConformsToExportedProtocols:(id)a3
{
  v5 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = CSSAllRoles();
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v11 protocol];
        v13 = [v5 conformsToProtocol:v12];

        if ((v13 & 1) == 0)
        {
          sub_100006010(v11, a2, a1, v5);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (id)denialMessageForConnection:(id)a3
{
  v3 = a3;
  v4 = CSSAllRoles();
  v5 = [v4 crk_mapUsingBlock:&stru_10000C638];
  v6 = [v5 allObjects];

  v7 = [v6 sortedArrayUsingSelector:"compare:"];
  v8 = [v7 componentsJoinedByString:@" or "];
  v9 = [v3 processIdentifier];

  v10 = [NSString stringWithFormat:@"Denying connection from (%d) as it lacks a valid entitlement (%@).", v9, v8];

  return v10;
}

- (id)exportedInterfaceForConnection:(id)a3
{
  v4 = [(CSSXPCListenerDelegate *)self rolesForConnection:a3];
  if ([v4 count])
  {
    v5 = [(CSSXPCListenerDelegate *)self exportedProtocolForRoles:v4];
    v6 = [NSXPCInterface interfaceWithProtocol:v5];
    [(CSSXPCListenerDelegate *)self configureInterface:v6 forRoles:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)rolesForConnection:(id)a3
{
  v4 = a3;
  v5 = CSSAllRoles();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100003F0C;
  v9[3] = &unk_10000C660;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [v5 crk_filterUsingBlock:v9];

  return v7;
}

- (id)exportedProtocolForRoles:(id)a3
{
  v3 = [a3 crk_mapUsingBlock:&stru_10000C6A0];
  v4 = [CRKProtocolUnioner protocolByUnioningProtocols:v3];

  return v4;
}

- (void)configureInterface:(id)a3 forRoles:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10) configureInterfaceForRole:v5];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (BOOL)connection:(id)a3 hasBooleanEntitlement:(id)a4
{
  v4 = [a3 valueForEntitlement:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [v6 BOOLValue];

  return v7;
}

@end