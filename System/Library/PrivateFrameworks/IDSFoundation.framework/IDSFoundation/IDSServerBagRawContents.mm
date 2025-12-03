@interface IDSServerBagRawContents
- (IDSServerBagRawContents)initWithLoadDate:(id)date timeToLive:(double)live serverSignature:(id)signature serverCerts:(id)certs signedBag:(id)bag;
- (id)description;
@end

@implementation IDSServerBagRawContents

- (IDSServerBagRawContents)initWithLoadDate:(id)date timeToLive:(double)live serverSignature:(id)signature serverCerts:(id)certs signedBag:(id)bag
{
  dateCopy = date;
  signatureCopy = signature;
  certsCopy = certs;
  bagCopy = bag;
  v17 = bagCopy;
  selfCopy = 0;
  if (dateCopy && live != 0.0 && signatureCopy && certsCopy && bagCopy)
  {
    v24.receiver = self;
    v24.super_class = IDSServerBagRawContents;
    v19 = [(IDSServerBagRawContents *)&v24 init];
    v20 = v19;
    if (v19)
    {
      objc_storeStrong(&v19->_loadDate, date);
      v20->_timeToLive = live;
      objc_storeStrong(&v20->_serverSignature, signature);
      objc_storeStrong(&v20->_serverCerts, certs);
      objc_storeStrong(&v20->_signedBag, bag);
      v21 = [dateCopy dateByAddingTimeInterval:live];
      expirationDate = v20->_expirationDate;
      v20->_expirationDate = v21;
    }

    self = v20;
    selfCopy = self;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  [(NSDate *)self->_loadDate timeIntervalSinceReferenceDate];
  return [v3 stringWithFormat:@"<%@:%p; loadDate: %f; TTL: %f; sigLen: %d; certCount: %d; signedBagLen: %d", v4, self, v5, *&self->_timeToLive, -[NSData length](self->_serverSignature, "length"), -[NSArray count](self->_serverCerts, "count"), -[NSData length](self->_signedBag, "length")];
}

@end