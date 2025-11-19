@interface MSUiBootHeaderV2
- (MSUiBootHeaderV2)initWithIOServiceWriter:(id)a3;
- (id)_hashData:(id)a3 withMethod:(id)a4;
- (id)_hashDataWithNativeHashMethod:(id)a3;
- (id)computeHash;
- (id)packStructure;
- (void)dealloc;
- (void)invalidate;
- (void)makeValid;
- (void)setAsFirstGeneration;
- (void)setHeaderHash:(char *)a3;
@end

@implementation MSUiBootHeaderV2

- (MSUiBootHeaderV2)initWithIOServiceWriter:(id)a3
{
  v5.receiver = self;
  v5.super_class = MSUiBootHeaderV2;
  v3 = [(MSUiBootHeader *)&v5 initWithIOServiceWriter:a3];
  if (v3)
  {
    v3->_headerHash = calloc(0x20uLL, 1uLL);
    v3->_headerReserved = calloc(0x10uLL, 1uLL);
    v3->_headerSignature = 1;
  }

  return v3;
}

- (void)setHeaderHash:(char *)a3
{
  headerHash = self->_headerHash;
  v4 = *(a3 + 1);
  *headerHash = *a3;
  *(headerHash + 1) = v4;
}

- (id)packStructure
{
  v6[0] = 1095128392;
  v6[1] = [(MSUiBootHeaderV2 *)self headerVersion];
  v6[2] = [(MSUiBootHeader *)self headerGeneration];
  v6[3] = [(MSUiBootHeader *)self imageAddress];
  headerHash = self->_headerHash;
  v4 = *(headerHash + 1);
  v8 = *headerHash;
  v9 = v4;
  v7 = *self->_headerReserved;
  return [NSData dataWithBytes:v6 length:64];
}

- (void)setAsFirstGeneration
{
  v3.receiver = self;
  v3.super_class = MSUiBootHeaderV2;
  [(MSUiBootHeaderV1 *)&v3 setAsFirstGeneration];
  [(MSUiBootHeader *)self setHeaderGeneration:1];
}

- (void)invalidate
{
  [(MSUiBootHeaderV2 *)self setHeaderSignature:0xFFFFFFFFLL];
  v3.receiver = self;
  v3.super_class = MSUiBootHeaderV2;
  [(MSUiBootHeaderV1 *)&v3 invalidate];
}

- (void)makeValid
{
  [(MSUiBootHeaderV2 *)self setHeaderSignature:1095128392];
  [(MSUiBootHeaderV2 *)self setHeaderVersion:1];
  v3 = [-[MSUiBootHeaderV2 computeHash](self "computeHash")];

  [(MSUiBootHeaderV2 *)self setHeaderHash:v3];
}

- (id)computeHash
{
  v3 = [-[MSUiBootHeaderV2 packStructure](self "packStructure")];

  return [(MSUiBootHeaderV2 *)self _hashDataWithNativeHashMethod:v3];
}

- (id)_hashDataWithNativeHashMethod:(id)a3
{
  v5 = MGCopyAnswer();

  return [(MSUiBootHeaderV2 *)self _hashData:a3 withMethod:v5];
}

- (id)_hashData:(id)a3 withMethod:(id)a4
{
  v6 = [a3 length];
  if ([a4 isEqualToString:kAMAuthInstallApParameterImg4DigestSHA1])
  {
    v7 = 20;
    v8 = calloc(0x14uLL, 1uLL);
    CC_SHA1([a3 bytes], v6, v8);
  }

  else if ([a4 isEqualToString:kAMAuthInstallApParameterImg4DigestSHA384])
  {
    v7 = 48;
    v8 = calloc(0x30uLL, 1uLL);
    CC_SHA384([a3 bytes], v6, v8);
  }

  else
  {
    iBU_LOG_real(@"Unknown hash digest type: %@", "[MSUiBootHeaderV2 _hashData:withMethod:]", v9, v10, v11, v12, v13, v14, a4);
    v8 = 0;
    v7 = 0;
  }

  v15 = [NSData dataWithBytes:v8 length:v7];
  free(v8);
  return v15;
}

- (void)dealloc
{
  free(self->_headerHash);
  free(self->_headerReserved);
  v3.receiver = self;
  v3.super_class = MSUiBootHeaderV2;
  [(MSUiBootHeader *)&v3 dealloc];
}

@end