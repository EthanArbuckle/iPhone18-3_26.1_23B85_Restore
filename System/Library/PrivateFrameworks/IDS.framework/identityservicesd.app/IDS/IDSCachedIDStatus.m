@interface IDSCachedIDStatus
- (BOOL)isEqual:(id)a3;
- (IDSCachedIDStatus)initWithURIString:(id)a3 service:(id)a4 status:(unsigned int)a5 expiry:(id)a6 negativeTTL:(id)a7 lookupDate:(id)a8;
- (id)description;
@end

@implementation IDSCachedIDStatus

- (IDSCachedIDStatus)initWithURIString:(id)a3 service:(id)a4 status:(unsigned int)a5 expiry:(id)a6 negativeTTL:(id)a7 lookupDate:(id)a8
{
  v22 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v23.receiver = self;
  v23.super_class = IDSCachedIDStatus;
  v18 = [(IDSCachedIDStatus *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_uriString, a3);
    objc_storeStrong(&v19->_service, a4);
    v19->_status = a5;
    objc_storeStrong(&v19->_expiry, a6);
    objc_storeStrong(&v19->_negativeTTL, a7);
    objc_storeStrong(&v19->_lookupDate, a8);
  }

  return v19;
}

- (id)description
{
  v3 = [(IDSCachedIDStatus *)self service];
  v4 = [(IDSCachedIDStatus *)self uriString];
  v5 = [NSString stringWithFormat:@"<IDSCachedIDStatus %p> Service: %@ URI: %@ Status: %u", self, v3, v4, [(IDSCachedIDStatus *)self status]];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = [(IDSCachedIDStatus *)self uriString];
    v7 = [v5 uriString];
    if ([v6 isEqualToString:v7])
    {
      v8 = [(IDSCachedIDStatus *)self service];
      v9 = [v5 service];
      if ([v8 isEqualToString:v9])
      {
        v10 = [(IDSCachedIDStatus *)self status];
        v11 = v10 == [v5 status];
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