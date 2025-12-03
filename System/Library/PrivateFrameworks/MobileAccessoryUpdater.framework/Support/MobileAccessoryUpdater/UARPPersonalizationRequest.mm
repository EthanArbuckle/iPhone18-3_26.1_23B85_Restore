@interface UARPPersonalizationRequest
- (BOOL)executeWithResponse:(id)response;
- (NSNumber)ecid;
- (id)description;
- (id)keyForFieldName:(id)name default:(__CFString *)default;
- (id)personalizationParameterDict;
- (id)personalizationRequestDict;
- (id)requestTicketName;
- (id)responseTicketName;
- (void)dealloc;
@end

@implementation UARPPersonalizationRequest

- (void)dealloc
{
  authInstallRef = self->_authInstallRef;
  if (authInstallRef)
  {
    CFRelease(authInstallRef);
  }

  v4.receiver = self;
  v4.super_class = UARPPersonalizationRequest;
  [(UARPPersonalizationRequest *)&v4 dealloc];
}

- (id)keyForFieldName:(id)name default:(__CFString *)default
{
  if (([(NSString *)self->_chipName isEqual:@"Ap"]& 1) != 0)
  {
    return default;
  }

  else
  {
    return [NSString stringWithFormat:@"%@, %@", self->_chipName, name];
  }
}

- (NSNumber)ecid
{
  result = self->_ecid;
  if (result)
  {
    value = [(NSNumber *)result value];

    return [NSNumber numberWithUnsignedLongLong:value];
  }

  return result;
}

- (id)personalizationParameterDict
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithUnsignedInt:[(UARPPersonalizationNumberTuple32 *)self->_boardID value]];
  [v3 setObject:v4 forKeyedSubscript:kAMAuthInstallApParameterBoardID];
  v5 = [NSNumber numberWithUnsignedInt:[(UARPPersonalizationNumberTuple32 *)self->_chipID value]];
  [v3 setObject:v5 forKeyedSubscript:kAMAuthInstallApParameterChipID];
  v6 = [NSNumber numberWithUnsignedInt:[(UARPPersonalizationNumberTuple32 *)self->_securityDomain value]];
  [v3 setObject:v6 forKeyedSubscript:kAMAuthInstallApParameterSecurityDomain];
  v7 = [NSNumber numberWithBool:[(UARPPersonalizationNumberTupleBool *)self->_securityMode value]];
  [v3 setObject:v7 forKeyedSubscript:kAMAuthInstallApParameterSecurityMode];
  v8 = [NSNumber numberWithBool:[(UARPPersonalizationNumberTupleBool *)self->_productionMode value]];
  [v3 setObject:v8 forKeyedSubscript:kAMAuthInstallApParameterProductionMode];
  ecid = self->_ecid;
  if (ecid)
  {
    v10 = [NSNumber numberWithUnsignedLongLong:[(UARPPersonalizationNumberTuple64 *)ecid value]];
    [v3 setObject:v10 forKeyedSubscript:kAMAuthInstallApParameterECID];
  }

  value = [(UARPPersonalizationDataTuple *)self->_nonce value];
  [v3 setObject:value forKeyedSubscript:kAMAuthInstallApParameterApNonce];
  v12 = [NSNumber numberWithBool:self->_effectiveProductionMode];
  [v3 setObject:v12 forKeyedSubscript:kAMAuthInstallApParameterEffectiveProductionMode];
  v13 = [NSNumber numberWithBool:self->_effectiveSecurityMode];
  [v3 setObject:v13 forKeyedSubscript:kAMAuthInstallApParameterEffectiveSecurityMode];
  v14 = [NSNumber numberWithBool:[(UARPPersonalizationRequest *)self supportsImg4]];
  [v3 setObject:v14 forKeyedSubscript:kAMAuthInstallApParameterSupportsImg4];

  return [NSDictionary dictionaryWithDictionary:v3];
}

- (id)personalizationRequestDict
{
  v3 = +[NSMutableDictionary dictionary];
  [v3 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", -[UARPPersonalizationNumberTuple32 value](self->_boardID, "value")), -[UARPPersonalizationNumberTuple32 key](self->_boardID, "key")}];
  [v3 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", -[UARPPersonalizationNumberTuple32 value](self->_chipID, "value")), -[UARPPersonalizationNumberTuple32 key](self->_chipID, "key")}];
  [v3 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", -[UARPPersonalizationNumberTuple32 value](self->_securityDomain, "value")), -[UARPPersonalizationNumberTuple32 key](self->_securityDomain, "key")}];
  [v3 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", -[UARPPersonalizationNumberTupleBool value](self->_securityMode, "value")), -[UARPPersonalizationNumberTupleBool key](self->_securityMode, "key")}];
  [v3 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", -[UARPPersonalizationNumberTupleBool value](self->_productionMode, "value")), -[UARPPersonalizationNumberTupleBool key](self->_productionMode, "key")}];
  [v3 setObject:-[UARPPersonalizationDataTuple value](self->_nonce forKeyedSubscript:{"value"), -[UARPPersonalizationDataTuple key](self->_nonce, "key")}];
  ecid = self->_ecid;
  if (ecid)
  {
    [v3 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKeyedSubscript:{"numberWithUnsignedLongLong:", -[UARPPersonalizationNumberTuple64 value](ecid, "value")), -[UARPPersonalizationNumberTuple64 key](self->_ecid, "key")}];
  }

  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:{-[UARPPersonalizationRequest requestTicketName](self, "requestTicketName")}];

  return [NSDictionary dictionaryWithDictionary:v3];
}

- (id)requestTicketName
{
  if ([(UARPPersonalizationRequest *)self supportsImg4])
  {
    return kAMAuthInstallTagApRequestImg4Ticket;
  }

  else
  {
    return [NSString stringWithFormat:@"@%@, Ticket", self->_chipName];
  }
}

- (id)responseTicketName
{
  if ([(UARPPersonalizationRequest *)self supportsImg4])
  {
    return kAMAuthInstallTagApImg4Ticket;
  }

  else
  {
    return [NSString stringWithFormat:@"%@, Ticket", self->_chipName];
  }
}

- (id)description
{
  v3 = +[NSMutableString string];
  v4 = objc_opt_class();
  [v3 appendFormat:@"%@\n{\n", NSStringFromClass(v4)];
  [v3 appendFormat:@"\tChip name: %@\n", self->_chipName];
  [v3 appendFormat:@"\t%@\n", self->_boardID];
  [v3 appendFormat:@"\t%@\n", self->_chipID];
  [v3 appendFormat:@"\t%@\n", self->_securityDomain];
  [v3 appendFormat:@"\t%@\n", self->_productionMode];
  [v3 appendFormat:@"\t%@\n", self->_securityMode];
  [v3 appendFormat:@"\t%@\n", self->_nonce];
  if (self->_ecid)
  {
    [v3 appendFormat:@"\t%@\n", self->_ecid];
  }

  if (self->_useSingleSignOn)
  {
    v5 = "YES";
  }

  else
  {
    v5 = "NO";
  }

  [v3 appendFormat:@"\tSSO: %s\n", v5];
  [v3 appendFormat:@"\tServer: %@\n", self->_serverURL];
  [v3 appendString:@"\tManifest\n\t{\n"];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  manifestEntries = self->_manifestEntries;
  v7 = [(NSArray *)manifestEntries countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(manifestEntries);
        }

        [v3 appendFormat:@"%@\n", objc_msgSend(*(*(&v12 + 1) + 8 * v10), "descriptionWithTabDepth:", 2)];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSArray *)manifestEntries countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [v3 appendString:@"\t}\n"];
  [v3 appendFormat:@"}"];
  return [NSString stringWithString:v3];
}

- (BOOL)executeWithResponse:(id)response
{
  authInstallRef = self->_authInstallRef;
  serverURL = self->_serverURL;
  if (AMAuthInstallSetSigningServerURL())
  {
    return 0;
  }

  if (self->_useSingleSignOn)
  {
    if (AMAuthInstallSsoInitialize())
    {
      return 0;
    }

    v7 = self->_authInstallRef;
    if (AMAuthInstallSsoEnable())
    {
      return 0;
    }
  }

  v8 = self->_authInstallRef;
  [(UARPPersonalizationRequest *)self personalizationParameterDict];
  if (AMAuthInstallApSetParameters())
  {
    return 0;
  }

  global_queue = dispatch_get_global_queue(0, 0);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002CF8C;
  v11[3] = &unk_100081C58;
  v11[4] = self;
  v11[5] = response;
  dispatch_async(global_queue, v11);
  return 1;
}

@end