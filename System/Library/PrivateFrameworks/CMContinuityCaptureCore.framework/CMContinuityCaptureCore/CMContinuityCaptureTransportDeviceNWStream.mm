@interface CMContinuityCaptureTransportDeviceNWStream
- (NSString)description;
- (id)cipherKeyforSessionID:(id)a3;
- (id)initForIdentifier:(id)a3 nwClientID:(id)a4;
@end

@implementation CMContinuityCaptureTransportDeviceNWStream

- (id)initForIdentifier:(id)a3 nwClientID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v11.receiver = self;
  v11.super_class = CMContinuityCaptureTransportDeviceNWStream;
  v9 = [(CMContinuityCaptureTransportDeviceNWStream *)&v11 init];
  if (v9)
  {
    v9->_entity = CMContinuityCaptureEntityTypeFromMediaIdentifer(v7);
    objc_storeStrong(&v9->_identifier, a3);
    objc_storeStrong(&v9->_nwClientID, a4);
  }

  return v9;
}

- (id)cipherKeyforSessionID:(id)a3
{
  v3 = MEMORY[0x277CBEB28];
  v4 = a3;
  v5 = [[v3 alloc] initWithLength:32];
  *[v5 mutableBytes] = 1938474645;
  v6 = CMContinuityCaptureCreateCipherKey(v5, v4);

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(CMContinuityCaptureTransportDeviceNWStream *)self streamIdentifier];
  v7 = [v3 stringWithFormat:@"%@: %@ entity:%u [%p]", v5, v6, self->_entity, self];

  return v7;
}

@end