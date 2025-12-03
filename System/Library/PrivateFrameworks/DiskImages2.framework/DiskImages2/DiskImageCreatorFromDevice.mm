@interface DiskImageCreatorFromDevice
- (BOOL)createImageWithSrcDevice:(id)device error:(id *)error;
- (DiskImageCreatorFromDevice)initWithURL:(id)l error:(id *)error;
@end

@implementation DiskImageCreatorFromDevice

- (DiskImageCreatorFromDevice)initWithURL:(id)l error:(id *)error
{
  v5.receiver = self;
  v5.super_class = DiskImageCreatorFromDevice;
  return [(BaseDiskImageCreator *)&v5 initWithURL:l defaultFormat:4 error:error];
}

- (BOOL)createImageWithSrcDevice:(id)device error:(id *)error
{
  deviceCopy = device;
  v7 = deviceCopy;
  if (([deviceCopy hasPrefix:@"/dev"] & 1) == 0)
  {
    v7 = [@"/dev" stringByAppendingPathComponent:deviceCopy];
  }

  v8 = [DIConvertParams alloc];
  v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7];
  v10 = [(BaseDiskImageCreator *)self URL];
  v11 = [(DIConvertParams *)v8 initWithInputURL:v9 outputURL:v10 error:error];

  if (v11)
  {
    [(DIConvertParams *)v11 setOutputFormat:[(BaseDiskImageCreator *)self imageFormat]];
    [(DIConvertParams *)v11 setEncryptionMethod:[(BaseDiskImageCreator *)self encryptionMethod]];
    [(DIBaseParams *)v11 setReadPassphraseFlags:[(BaseDiskImageCreator *)self readPassphraseFlags]];
    publicKey = [(BaseDiskImageCreator *)self publicKey];
    [(DIConvertParams *)v11 setPublicKey:publicKey];

    certificate = [(BaseDiskImageCreator *)self certificate];
    [(DIConvertParams *)v11 setCertificate:certificate];

    [(DIConvertParams *)v11 setPassphrase:[(BaseDiskImageCreator *)self passphrase]];
    mutableSymmetricKey = [(BaseDiskImageCreator *)self mutableSymmetricKey];
    [(DIBaseParams *)v11 setSymmetricKey:mutableSymmetricKey];

    temporaryPassphrase = [(BaseDiskImageCreator *)self temporaryPassphrase];

    if (!temporaryPassphrase)
    {
LABEL_7:
      v18 = ![DiskImages2 convertWithParams:v11 error:error];
      LOBYTE(error) = 1;
      goto LABEL_10;
    }

    temporaryPassphrase2 = [(BaseDiskImageCreator *)self temporaryPassphrase];
    v17 = -[DIConvertParams setPassphrase:encryptionMethod:error:](v11, "setPassphrase:encryptionMethod:error:", [temporaryPassphrase2 buf], -[BaseDiskImageCreator encryptionMethod](self, "encryptionMethod"), error);

    if (v17)
    {
      [(BaseDiskImageCreator *)self setTemporaryPassphrase:0];
      goto LABEL_7;
    }

    v18 = 0;
    LOBYTE(error) = 0;
  }

  else
  {
    v18 = 1;
  }

LABEL_10:

  [(BaseDiskImageCreator *)self setTemporaryPassphrase:0];
  if (v18)
  {
    error = [MEMORY[0x277CCAA00] defaultManager];
    v19 = [(BaseDiskImageCreator *)self URL];
    [error removeItemAtURL:v19 error:0];

    LOBYTE(error) = 0;
  }

  return error & 1;
}

@end