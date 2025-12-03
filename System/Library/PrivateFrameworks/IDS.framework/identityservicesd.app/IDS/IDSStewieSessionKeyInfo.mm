@interface IDSStewieSessionKeyInfo
- (BOOL)isEqual:(id)equal;
- (IDSStewieSessionKeyInfo)initWithSessionKey:(id)key ctIndex:(int)index epki:(id)epki repki:(id)repki lastResort:(BOOL)resort;
- (id)copyWithServerPublicKey:(id)key;
- (id)description;
- (unint64_t)hash;
@end

@implementation IDSStewieSessionKeyInfo

- (IDSStewieSessionKeyInfo)initWithSessionKey:(id)key ctIndex:(int)index epki:(id)epki repki:(id)repki lastResort:(BOOL)resort
{
  keyCopy = key;
  epkiCopy = epki;
  repkiCopy = repki;
  v19.receiver = self;
  v19.super_class = IDSStewieSessionKeyInfo;
  v16 = [(IDSStewieSessionKeyInfo *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_sessionKey, key);
    v17->_ctIndex = index;
    objc_storeStrong(&v17->_keyEPKI, epki);
    objc_storeStrong(&v17->_retiredEPKI, repki);
    v17->_lastResort = resort;
  }

  return v17;
}

- (id)copyWithServerPublicKey:(id)key
{
  keyCopy = key;
  v5 = [IDSStewieSessionKeyInfo alloc];
  sessionKey = [(IDSStewieSessionKeyInfo *)self sessionKey];
  ctIndex = [(IDSStewieSessionKeyInfo *)self ctIndex];
  keyEPKI = [(IDSStewieSessionKeyInfo *)self keyEPKI];
  retiredEPKI = [(IDSStewieSessionKeyInfo *)self retiredEPKI];
  v10 = [(IDSStewieSessionKeyInfo *)v5 initWithSessionKey:sessionKey ctIndex:ctIndex epki:keyEPKI repki:retiredEPKI lastResort:[(IDSStewieSessionKeyInfo *)self lastResort]];

  [(IDSStewieSessionKeyInfo *)v10 setServerPublicKey:keyCopy];
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    sessionKey = [v5 sessionKey];
    sessionKey2 = [(IDSStewieSessionKeyInfo *)self sessionKey];
    if ([sessionKey isEqualToData:sessionKey2])
    {
      keyEPKI = [v5 keyEPKI];
      keyEPKI2 = [(IDSStewieSessionKeyInfo *)self keyEPKI];
      if ([keyEPKI isEqualToData:keyEPKI2])
      {
        retiredEPKI = [v5 retiredEPKI];
        retiredEPKI2 = [(IDSStewieSessionKeyInfo *)self retiredEPKI];
        if ([retiredEPKI isEqualToData:retiredEPKI2])
        {
          v17 = retiredEPKI;
          v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 ctIndex]);
          v13 = [NSNumber numberWithInteger:[(IDSStewieSessionKeyInfo *)self ctIndex]];
          v18 = v12;
          if ([v12 isEqualToNumber:v13])
          {
            lastResort = [v5 lastResort];
            v15 = lastResort ^ [(IDSStewieSessionKeyInfo *)self lastResort]^ 1;
          }

          else
          {
            LOBYTE(v15) = 0;
          }

          retiredEPKI = v17;
        }

        else
        {
          LOBYTE(v15) = 0;
        }
      }

      else
      {
        LOBYTE(v15) = 0;
      }
    }

    else
    {
      LOBYTE(v15) = 0;
    }
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  return v15;
}

- (unint64_t)hash
{
  keyEPKI = [(IDSStewieSessionKeyInfo *)self keyEPKI];
  v3 = [keyEPKI hash];

  return v3;
}

- (id)description
{
  v3 = objc_opt_class();
  sessionKey = [(IDSStewieSessionKeyInfo *)self sessionKey];
  ctIndex = [(IDSStewieSessionKeyInfo *)self ctIndex];
  keyEPKI = [(IDSStewieSessionKeyInfo *)self keyEPKI];
  retiredEPKI = [(IDSStewieSessionKeyInfo *)self retiredEPKI];
  if ([(IDSStewieSessionKeyInfo *)self lastResort])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  serverPublicKey = [(IDSStewieSessionKeyInfo *)self serverPublicKey];
  v10 = [NSString stringWithFormat:@"<%@: %p { sessionKey: %@, ctIndex: %d, keyEPKI: %@, retiredEPKI: %@, lastResort: %@, serverPublicKey: %@ }>", v3, self, sessionKey, ctIndex, keyEPKI, retiredEPKI, v8, serverPublicKey];

  return v10;
}

@end