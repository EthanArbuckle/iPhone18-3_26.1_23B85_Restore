@interface CMContinuityCaptureTransportDeviceNWStream
- (NSString)description;
- (id)cipherKeyforSessionID:(id)d;
- (id)initForIdentifier:(id)identifier nwClientID:(id)d;
@end

@implementation CMContinuityCaptureTransportDeviceNWStream

- (id)initForIdentifier:(id)identifier nwClientID:(id)d
{
  identifierCopy = identifier;
  dCopy = d;
  v11.receiver = self;
  v11.super_class = CMContinuityCaptureTransportDeviceNWStream;
  v9 = [(CMContinuityCaptureTransportDeviceNWStream *)&v11 init];
  if (v9)
  {
    v9->_entity = CMContinuityCaptureEntityTypeFromMediaIdentifer(identifierCopy);
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v9->_nwClientID, d);
  }

  return v9;
}

- (id)cipherKeyforSessionID:(id)d
{
  v3 = MEMORY[0x277CBEB28];
  dCopy = d;
  v5 = [[v3 alloc] initWithLength:32];
  *[v5 mutableBytes] = 1938474645;
  v6 = CMContinuityCaptureCreateCipherKey(v5, dCopy);

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  streamIdentifier = [(CMContinuityCaptureTransportDeviceNWStream *)self streamIdentifier];
  v7 = [v3 stringWithFormat:@"%@: %@ entity:%u [%p]", v5, streamIdentifier, self->_entity, self];

  return v7;
}

@end