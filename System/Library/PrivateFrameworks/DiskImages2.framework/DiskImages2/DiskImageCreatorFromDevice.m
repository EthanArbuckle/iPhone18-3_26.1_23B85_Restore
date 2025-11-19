@interface DiskImageCreatorFromDevice
- (BOOL)createImageWithSrcDevice:(id)a3 error:(id *)a4;
- (DiskImageCreatorFromDevice)initWithURL:(id)a3 error:(id *)a4;
@end

@implementation DiskImageCreatorFromDevice

- (DiskImageCreatorFromDevice)initWithURL:(id)a3 error:(id *)a4
{
  v5.receiver = self;
  v5.super_class = DiskImageCreatorFromDevice;
  return [(BaseDiskImageCreator *)&v5 initWithURL:a3 defaultFormat:4 error:a4];
}

- (BOOL)createImageWithSrcDevice:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (([v6 hasPrefix:@"/dev"] & 1) == 0)
  {
    v7 = [@"/dev" stringByAppendingPathComponent:v6];
  }

  v8 = [DIConvertParams alloc];
  v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7];
  v10 = [(BaseDiskImageCreator *)self URL];
  v11 = [(DIConvertParams *)v8 initWithInputURL:v9 outputURL:v10 error:a4];

  if (v11)
  {
    [(DIConvertParams *)v11 setOutputFormat:[(BaseDiskImageCreator *)self imageFormat]];
    [(DIConvertParams *)v11 setEncryptionMethod:[(BaseDiskImageCreator *)self encryptionMethod]];
    [(DIBaseParams *)v11 setReadPassphraseFlags:[(BaseDiskImageCreator *)self readPassphraseFlags]];
    v12 = [(BaseDiskImageCreator *)self publicKey];
    [(DIConvertParams *)v11 setPublicKey:v12];

    v13 = [(BaseDiskImageCreator *)self certificate];
    [(DIConvertParams *)v11 setCertificate:v13];

    [(DIConvertParams *)v11 setPassphrase:[(BaseDiskImageCreator *)self passphrase]];
    v14 = [(BaseDiskImageCreator *)self mutableSymmetricKey];
    [(DIBaseParams *)v11 setSymmetricKey:v14];

    v15 = [(BaseDiskImageCreator *)self temporaryPassphrase];

    if (!v15)
    {
LABEL_7:
      v18 = ![DiskImages2 convertWithParams:v11 error:a4];
      LOBYTE(a4) = 1;
      goto LABEL_10;
    }

    v16 = [(BaseDiskImageCreator *)self temporaryPassphrase];
    v17 = -[DIConvertParams setPassphrase:encryptionMethod:error:](v11, "setPassphrase:encryptionMethod:error:", [v16 buf], -[BaseDiskImageCreator encryptionMethod](self, "encryptionMethod"), a4);

    if (v17)
    {
      [(BaseDiskImageCreator *)self setTemporaryPassphrase:0];
      goto LABEL_7;
    }

    v18 = 0;
    LOBYTE(a4) = 0;
  }

  else
  {
    v18 = 1;
  }

LABEL_10:

  [(BaseDiskImageCreator *)self setTemporaryPassphrase:0];
  if (v18)
  {
    a4 = [MEMORY[0x277CCAA00] defaultManager];
    v19 = [(BaseDiskImageCreator *)self URL];
    [a4 removeItemAtURL:v19 error:0];

    LOBYTE(a4) = 0;
  }

  return a4 & 1;
}

@end