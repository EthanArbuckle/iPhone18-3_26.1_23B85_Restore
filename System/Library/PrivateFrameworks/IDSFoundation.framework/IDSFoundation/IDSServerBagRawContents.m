@interface IDSServerBagRawContents
- (IDSServerBagRawContents)initWithLoadDate:(id)a3 timeToLive:(double)a4 serverSignature:(id)a5 serverCerts:(id)a6 signedBag:(id)a7;
- (id)description;
@end

@implementation IDSServerBagRawContents

- (IDSServerBagRawContents)initWithLoadDate:(id)a3 timeToLive:(double)a4 serverSignature:(id)a5 serverCerts:(id)a6 signedBag:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = v16;
  v18 = 0;
  if (v13 && a4 != 0.0 && v14 && v15 && v16)
  {
    v24.receiver = self;
    v24.super_class = IDSServerBagRawContents;
    v19 = [(IDSServerBagRawContents *)&v24 init];
    v20 = v19;
    if (v19)
    {
      objc_storeStrong(&v19->_loadDate, a3);
      v20->_timeToLive = a4;
      objc_storeStrong(&v20->_serverSignature, a5);
      objc_storeStrong(&v20->_serverCerts, a6);
      objc_storeStrong(&v20->_signedBag, a7);
      v21 = [v13 dateByAddingTimeInterval:a4];
      expirationDate = v20->_expirationDate;
      v20->_expirationDate = v21;
    }

    self = v20;
    v18 = self;
  }

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  [(NSDate *)self->_loadDate timeIntervalSinceReferenceDate];
  return [v3 stringWithFormat:@"<%@:%p; loadDate: %f; TTL: %f; sigLen: %d; certCount: %d; signedBagLen: %d", v4, self, v5, *&self->_timeToLive, -[NSData length](self->_serverSignature, "length"), -[NSArray count](self->_serverCerts, "count"), -[NSData length](self->_signedBag, "length")];
}

@end