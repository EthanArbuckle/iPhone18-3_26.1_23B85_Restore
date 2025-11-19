@interface ENAdvertisement
+ (id)decryptedMetadataForTemporaryExposureKey:(id)a3 encryptedAEM:(id *)a4 RPI:(id *)a5;
- ($8B507D830E6EE36862B76123793C2CB9)structRepresentation;
- (ENAdvertisement)initWithRPI:(id)a3 encryptedAEM:(id)a4 timestamp:(double)a5 scanInterval:(unsigned __int16)a6 typicalRSSI:(char)a7 maxRSSI:(char)a8 saturated:(BOOL)a9 counter:(unsigned __int8)a10;
- (ENAdvertisement)initWithStructRepresentation:(id *)a3;
- (id)decryptedMetadataForTemporaryExposureKey:(id)a3;
- (id)description;
- (void)combineWithAdvertisement:(id)a3;
@end

@implementation ENAdvertisement

- (ENAdvertisement)initWithStructRepresentation:(id *)a3
{
  v5 = [objc_alloc(MEMORY[0x277CBEA98]) initWithBytes:a3 length:16];
  v6 = [objc_alloc(MEMORY[0x277CBEA98]) initWithBytes:&a3->var1 length:4];
  LOBYTE(v9) = HIBYTE(a3->var5);
  v7 = [(ENAdvertisement *)self initWithRPI:v5 encryptedAEM:v6 timestamp:HIWORD(a3->var3) scanInterval:SLOBYTE(a3->var4) typicalRSSI:SHIBYTE(a3->var4) maxRSSI:LOBYTE(a3->var5) saturated:*(&a3->var1 + 1) counter:v9];

  return v7;
}

- (ENAdvertisement)initWithRPI:(id)a3 encryptedAEM:(id)a4 timestamp:(double)a5 scanInterval:(unsigned __int16)a6 typicalRSSI:(char)a7 maxRSSI:(char)a8 saturated:(BOOL)a9 counter:(unsigned __int8)a10
{
  v18 = a3;
  v19 = a4;
  v23.receiver = self;
  v23.super_class = ENAdvertisement;
  v20 = [(ENAdvertisement *)&v23 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_rpi, a3);
    objc_storeStrong(&v21->_encryptedAEM, a4);
    v21->_timestamp = a5;
    v21->_scanInterval = a6;
    v21->_typicalRSSI = a7;
    v21->_maxRSSI = a8;
    v21->_saturated = a9;
    v21->_counter = a10;
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

- (void)combineWithAdvertisement:(id)a3
{
  v14 = a3;
  counter = self->_counter;
  v5 = [v14 counter] + counter;
  v6 = v14;
  if (!v5)
  {
    if (gLogCategory__ENAdvertisement <= 115 && (gLogCategory__ENAdvertisement != -1 || _LogCategory_Initialize()))
    {
      [(ENAdvertisement *)&self->_counter combineWithAdvertisement:v14];
      v6 = v14;
      v5 = 1;
    }

    else
    {
      v5 = 1;
      v6 = v14;
    }
  }

  v7 = [v6 typicalRSSI];
  typicalRSSI = self->_typicalRSSI;
  if (v7 == 127)
  {
    if (typicalRSSI < [v14 typicalRSSI])
    {
      LOBYTE(v9) = self->_typicalRSSI;
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (typicalRSSI == 127)
  {
    [v14 typicalRSSI];
LABEL_11:
    LOBYTE(v9) = [v14 typicalRSSI];
    goto LABEL_13;
  }

  v10 = self->_counter * typicalRSSI;
  v11 = [v14 typicalRSSI];
  v9 = (v10 + [v14 counter] * v11) / v5;
LABEL_13:
  self->_typicalRSSI = v9;
  maxRSSI = self->_maxRSSI;
  if (maxRSSI <= [v14 maxRSSI])
  {
    v13 = [v14 maxRSSI];
  }

  else
  {
    v13 = self->_maxRSSI;
  }

  self->_maxRSSI = v13;
  self->_saturated = self->_typicalRSSI == 127;
  self->_counter = v5;
}

- (id)decryptedMetadataForTemporaryExposureKey:(id)a3
{
  v9[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(NSData *)self->_encryptedAEM length]== 4 && [(NSData *)self->_rpi length]== 16)
  {
    v9[0] = 0;
    v9[1] = 0;
    [(NSData *)self->_rpi getBytes:v9 length:16];
    v8 = 0;
    [(NSData *)self->_encryptedAEM getBytes:&v8 length:4];
    v5 = [objc_opt_class() decryptedMetadataForTemporaryExposureKey:v4 encryptedAEM:&v8 RPI:v9];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)decryptedMetadataForTemporaryExposureKey:(id)a3 encryptedAEM:(id *)a4 RPI:(id *)a5
{
  v9 = 0;
  [a3 getAEMBytes:&v9 input:a4 length:4 RPI:a5];
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

  v5 = [(NSData *)self->_rpi bytes];
  v6 = [(NSData *)self->_rpi length];
  v24 = [(NSData *)self->_rpi length];
  v19 = v5;
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