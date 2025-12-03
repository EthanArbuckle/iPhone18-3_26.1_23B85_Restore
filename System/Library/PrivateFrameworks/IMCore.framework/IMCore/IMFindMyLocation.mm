@interface IMFindMyLocation
+ (id)locationWithFMFLocation:(id)location;
+ (id)locationWithFMFLocation:(id)location fmlLocation:(id)fmlLocation;
+ (id)locationWithFMLLocation:(id)location;
- (BOOL)isEqual:(id)equal;
- (IMFindMyLocation)initWithFMFLocation:(id)location fmlLocation:(id)fmlLocation;
- (NSString)shortAddress;
- (unint64_t)hash;
@end

@implementation IMFindMyLocation

+ (id)locationWithFMFLocation:(id)location fmlLocation:(id)fmlLocation
{
  fmlLocationCopy = fmlLocation;
  locationCopy = location;
  v7 = [IMFindMyLocation alloc];
  v9 = objc_msgSend_initWithFMFLocation_fmlLocation_(v7, v8, locationCopy, fmlLocationCopy);

  return v9;
}

+ (id)locationWithFMFLocation:(id)location
{
  locationCopy = location;
  v4 = [IMFindMyLocation alloc];
  v6 = objc_msgSend_initWithFMFLocation_fmlLocation_(v4, v5, locationCopy, 0);

  return v6;
}

+ (id)locationWithFMLLocation:(id)location
{
  locationCopy = location;
  v4 = [IMFindMyLocation alloc];
  v6 = objc_msgSend_initWithFMFLocation_fmlLocation_(v4, v5, 0, locationCopy);

  return v6;
}

- (IMFindMyLocation)initWithFMFLocation:(id)location fmlLocation:(id)fmlLocation
{
  locationCopy = location;
  fmlLocationCopy = fmlLocation;
  v12.receiver = self;
  v12.super_class = IMFindMyLocation;
  v9 = [(IMFindMyLocation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fmfLocation, location);
    objc_storeStrong(&v10->_fmlLocation, fmlLocation);
  }

  return v10;
}

- (NSString)shortAddress
{
  v4 = objc_msgSend_fmlLocation(self, a2, v2);
  if (v4)
  {
    v7 = v4;
    v8 = objc_msgSend_fmlLocation(self, v5, v6);
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = objc_msgSend_fmlLocation(self, v5, v6);
      v13 = objc_msgSend_coarseAddressLabel(v10, v11, v12);
LABEL_6:
      v20 = v13;

      goto LABEL_8;
    }
  }

  v14 = objc_msgSend_fmfLocation(self, v5, v6);
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    v10 = objc_msgSend_fmfLocation(self, v16, v17);
    v13 = objc_msgSend_shortAddress(v10, v18, v19);
    goto LABEL_6;
  }

  v20 = 0;
LABEL_8:

  return v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v26 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      v11 = objc_msgSend_fmfLocation(self, v7, v8);
      if (v11 || (objc_msgSend_fmfLocation(v6, v9, v10), (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v12 = objc_msgSend_fmfLocation(self, v9, v10);
        v15 = objc_msgSend_fmfLocation(v6, v13, v14);
        isEqual = objc_msgSend_isEqual_(v12, v16, v15);

        if (v11)
        {

          if (isEqual)
          {
            goto LABEL_7;
          }
        }

        else
        {

          if (isEqual)
          {
            goto LABEL_7;
          }
        }

        v26 = 0;
LABEL_18:

        goto LABEL_19;
      }

LABEL_7:
      v20 = objc_msgSend_fmlLocation(self, v9, v10);
      if (v20 || (objc_msgSend_fmlLocation(v6, v18, v19), (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v21 = objc_msgSend_fmlLocation(self, v18, v19);
        v24 = objc_msgSend_fmlLocation(v6, v22, v23);
        v26 = objc_msgSend_isEqual_(v21, v25, v24);

        if (v20)
        {
LABEL_17:

          goto LABEL_18;
        }
      }

      else
      {
        v26 = 1;
      }

      goto LABEL_17;
    }

    v26 = 0;
  }

LABEL_19:

  return v26;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_fmfLocation(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_fmlLocation(self, v8, v9);
  v13 = objc_msgSend_hash(v10, v11, v12);

  return v13 ^ v7;
}

@end