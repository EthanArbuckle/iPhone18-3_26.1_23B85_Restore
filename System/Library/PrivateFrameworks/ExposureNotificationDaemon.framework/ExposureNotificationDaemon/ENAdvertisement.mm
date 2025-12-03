@interface ENAdvertisement
+ (id)decryptedMetadataForTemporaryExposureKey:(id)key encryptedAEM:(id *)m RPI:(id *)i;
- ($8B507D830E6EE36862B76123793C2CB9)structRepresentation;
- (ENAdvertisement)initWithRPI:(id)i encryptedAEM:(id)m timestamp:(double)timestamp scanInterval:(unsigned __int16)interval typicalRSSI:(char)sI maxRSSI:(char)sSI saturated:(BOOL)saturated counter:(unsigned __int8)self0;
- (ENAdvertisement)initWithStructRepresentation:(id *)representation;
- (id)decryptedMetadataForTemporaryExposureKey:(id)key;
- (id)description;
- (void)combineWithAdvertisement:(id)advertisement;
@end

@implementation ENAdvertisement

- (ENAdvertisement)initWithStructRepresentation:(id *)representation
{
  v5 = [objc_alloc(MEMORY[0x277CBEA98]) initWithBytes:representation length:16];
  v6 = [objc_alloc(MEMORY[0x277CBEA98]) initWithBytes:&representation->var1 length:4];
  LOBYTE(v9) = HIBYTE(representation->var5);
  v7 = [(ENAdvertisement *)self initWithRPI:v5 encryptedAEM:v6 timestamp:HIWORD(representation->var3) scanInterval:SLOBYTE(representation->var4) typicalRSSI:SHIBYTE(representation->var4) maxRSSI:LOBYTE(representation->var5) saturated:*(&representation->var1 + 1) counter:v9];

  return v7;
}

- (ENAdvertisement)initWithRPI:(id)i encryptedAEM:(id)m timestamp:(double)timestamp scanInterval:(unsigned __int16)interval typicalRSSI:(char)sI maxRSSI:(char)sSI saturated:(BOOL)saturated counter:(unsigned __int8)self0
{
  iCopy = i;
  mCopy = m;
  v23.receiver = self;
  v23.super_class = ENAdvertisement;
  v20 = [(ENAdvertisement *)&v23 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_rpi, i);
    objc_storeStrong(&v21->_encryptedAEM, m);
    v21->_timestamp = timestamp;
    v21->_scanInterval = interval;
    v21->_typicalRSSI = sI;
    v21->_maxRSSI = sSI;
    v21->_saturated = saturated;
    v21->_counter = counter;
  }

  return v21;
}

- ($8B507D830E6EE36862B76123793C2CB9)structRepresentation
{
  *retstr->var0.var0 = 0;
  *&retstr->var0.var0[8] = 0;
  retstr->var1 = 0;
  p_var1 = &retstr->var1;
  *(&retstr->var1 + 1) = self->_timestamp;
  HIDWORD(retstr->var2) = 0;
  LOWORD(retstr->var3) = 0;
  HIWORD(retstr->var3) = self->_scanInterval;
  *&retstr->var4 = *&self->_typicalRSSI;
  [NSData getBytes:"getBytes:length:" length:?];
  encryptedAEM = self->_encryptedAEM;

  return [(NSData *)encryptedAEM getBytes:p_var1 length:4];
}

- (void)combineWithAdvertisement:(id)advertisement
{
  advertisementCopy = advertisement;
  counter = self->_counter;
  v5 = [advertisementCopy counter] + counter;
  v6 = advertisementCopy;
  if (!v5)
  {
    if (gLogCategory__ENAdvertisement <= 115 && (gLogCategory__ENAdvertisement != -1 || _LogCategory_Initialize()))
    {
      [(ENAdvertisement *)&self->_counter combineWithAdvertisement:advertisementCopy];
      v6 = advertisementCopy;
      v5 = 1;
    }

    else
    {
      v5 = 1;
      v6 = advertisementCopy;
    }
  }

  typicalRSSI = [v6 typicalRSSI];
  typicalRSSI = self->_typicalRSSI;
  if (typicalRSSI == 127)
  {
    if (typicalRSSI < [advertisementCopy typicalRSSI])
    {
      LOBYTE(v9) = self->_typicalRSSI;
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (typicalRSSI == 127)
  {
    [advertisementCopy typicalRSSI];
LABEL_11:
    LOBYTE(v9) = [advertisementCopy typicalRSSI];
    goto LABEL_13;
  }

  v10 = self->_counter * typicalRSSI;
  typicalRSSI2 = [advertisementCopy typicalRSSI];
  v9 = (v10 + [advertisementCopy counter] * typicalRSSI2) / v5;
LABEL_13:
  self->_typicalRSSI = v9;
  maxRSSI = self->_maxRSSI;
  if (maxRSSI <= [advertisementCopy maxRSSI])
  {
    maxRSSI = [advertisementCopy maxRSSI];
  }

  else
  {
    maxRSSI = self->_maxRSSI;
  }

  self->_maxRSSI = maxRSSI;
  self->_saturated = self->_typicalRSSI == 127;
  self->_counter = v5;
}

- (id)decryptedMetadataForTemporaryExposureKey:(id)key
{
  v9[2] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if ([(NSData *)self->_encryptedAEM length]== 4 && [(NSData *)self->_rpi length]== 16)
  {
    v9[0] = 0;
    v9[1] = 0;
    [(NSData *)self->_rpi getBytes:v9 length:16];
    v8 = 0;
    [(NSData *)self->_encryptedAEM getBytes:&v8 length:4];
    v5 = [objc_opt_class() decryptedMetadataForTemporaryExposureKey:keyCopy encryptedAEM:&v8 RPI:v9];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)decryptedMetadataForTemporaryExposureKey:(id)key encryptedAEM:(id *)m RPI:(id *)i
{
  v9 = 0;
  [key getAEMBytes:&v9 input:m length:4 RPI:i];
  ENRPIMetadataDeserialize();
  if (BYTE4(v9) == 1)
  {
    if (BYTE5(v9))
    {
      v5 = 2 * (BYTE5(v9) == 1);
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = [ENAdvertisementMetadata alloc];
  v7 = [(ENAdvertisementMetadata *)v6 initWithVersion:v5 txPower:SBYTE6(v9) calibrationConfidence:HIBYTE(v9)];

  return v7;
}

- (id)description
{
  v3 = objc_opt_class();
  v18 = NSStringFromClass(v3);
  NSAppendPrintF_safe();
  v4 = 0;

  bytes = [(NSData *)self->_rpi bytes];
  v6 = [(NSData *)self->_rpi length];
  v24 = [(NSData *)self->_rpi length];
  v19 = bytes;
  NSAppendPrintF();
  v7 = v4;

  [(NSData *)self->_encryptedAEM bytes:v19];
  [(NSData *)self->_encryptedAEM length];
  [(NSData *)self->_encryptedAEM length];
  NSAppendPrintF();
  v8 = v7;

  v9 = self->_timestamp - *MEMORY[0x277CBECD8];
  v10 = CUPrintDateCF();
  NSAppendPrintF_safe();
  v11 = v8;

  scanInterval = self->_scanInterval;
  NSAppendPrintF_safe();
  v12 = v11;

  typicalRSSI = self->_typicalRSSI;
  NSAppendPrintF_safe();
  v13 = v12;

  maxRSSI = self->_maxRSSI;
  NSAppendPrintF_safe();
  v14 = v13;

  counter = self->_counter;
  NSAppendPrintF_safe();
  v15 = v14;

  if (self->_saturated)
  {
    NSAppendPrintF_safe();
    v16 = v15;

    v15 = v16;
  }

  return v15;
}

- (uint64_t)combineWithAdvertisement:(unsigned __int8 *)a1 .cold.1(unsigned __int8 *a1, void *a2)
{
  v3 = *a1;
  [a2 counter];
  return LogPrintF_safe();
}

@end