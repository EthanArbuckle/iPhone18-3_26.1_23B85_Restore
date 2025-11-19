@interface CKDPAdopterCapabilitiesSaveRequest
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPAdopterCapabilitiesSaveRequest

+ (id)options
{
  if (qword_280D58420 != -1)
  {
    dispatch_once(&qword_280D58420, &unk_28385DCA0);
  }

  v3 = qword_280D58418;

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPAdopterCapabilitiesSaveRequest;
  v4 = [(CKDPAdopterCapabilitiesSaveRequest *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  signedSupportedAdopterCapabilities = self->_signedSupportedAdopterCapabilities;
  if (signedSupportedAdopterCapabilities)
  {
    v8 = objc_msgSend_dictionaryRepresentation(signedSupportedAdopterCapabilities, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"signedSupportedAdopterCapabilities");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  if (self->_signedSupportedAdopterCapabilities)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)a3
{
  signedSupportedAdopterCapabilities = self->_signedSupportedAdopterCapabilities;
  if (signedSupportedAdopterCapabilities)
  {
    objc_msgSend_setSignedSupportedAdopterCapabilities_(a3, a2, signedSupportedAdopterCapabilities);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_signedSupportedAdopterCapabilities, v11, a3);
  v13 = v10[1];
  v10[1] = v12;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    signedSupportedAdopterCapabilities = self->_signedSupportedAdopterCapabilities;
    v9 = v4[1];
    if (signedSupportedAdopterCapabilities | v9)
    {
      isEqual = objc_msgSend_isEqual_(signedSupportedAdopterCapabilities, v7, v9);
    }

    else
    {
      isEqual = 1;
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  signedSupportedAdopterCapabilities = self->_signedSupportedAdopterCapabilities;
  v6 = *(v4 + 1);
  if (signedSupportedAdopterCapabilities)
  {
    if (v6)
    {
      objc_msgSend_mergeFrom_(signedSupportedAdopterCapabilities, v4, v6);
    }
  }

  else if (v6)
  {
    objc_msgSend_setSignedSupportedAdopterCapabilities_(self, v4, v6);
  }

  MEMORY[0x2821F96F8]();
}

@end