@interface IDSCachedIDStatus
- (BOOL)isEqual:(id)equal;
- (IDSCachedIDStatus)initWithURIString:(id)string service:(id)service status:(unsigned int)status expiry:(id)expiry negativeTTL:(id)l lookupDate:(id)date;
- (id)description;
@end

@implementation IDSCachedIDStatus

- (IDSCachedIDStatus)initWithURIString:(id)string service:(id)service status:(unsigned int)status expiry:(id)expiry negativeTTL:(id)l lookupDate:(id)date
{
  stringCopy = string;
  serviceCopy = service;
  expiryCopy = expiry;
  lCopy = l;
  dateCopy = date;
  v23.receiver = self;
  v23.super_class = IDSCachedIDStatus;
  v18 = [(IDSCachedIDStatus *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_uriString, string);
    objc_storeStrong(&v19->_service, service);
    v19->_status = status;
    objc_storeStrong(&v19->_expiry, expiry);
    objc_storeStrong(&v19->_negativeTTL, l);
    objc_storeStrong(&v19->_lookupDate, date);
  }

  return v19;
}

- (id)description
{
  service = [(IDSCachedIDStatus *)self service];
  uriString = [(IDSCachedIDStatus *)self uriString];
  v5 = [NSString stringWithFormat:@"<IDSCachedIDStatus %p> Service: %@ URI: %@ Status: %u", self, service, uriString, [(IDSCachedIDStatus *)self status]];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    uriString = [(IDSCachedIDStatus *)self uriString];
    uriString2 = [v5 uriString];
    if ([uriString isEqualToString:uriString2])
    {
      service = [(IDSCachedIDStatus *)self service];
      service2 = [v5 service];
      if ([service isEqualToString:service2])
      {
        status = [(IDSCachedIDStatus *)self status];
        v11 = status == [v5 status];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end