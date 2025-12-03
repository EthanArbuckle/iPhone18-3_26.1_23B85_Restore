@interface BaseDiskImageCreator
- (BOOL)ejectWithError:(id *)error;
- (BOOL)partitionDiskWithError:(id *)error;
- (BaseDiskImageCreator)initWithURL:(id)l defaultFormat:(int64_t)format error:(id *)error;
- (id)createEmptyImageWithError:(id *)error;
- (id)formatImageWithCreateParams:(id)params error:(id *)error;
- (id)newAttachWithCreateParams:(id)params error:(id *)error;
- (id)newMKDIDeviceWithError:(id *)error;
- (void)dealloc;
- (void)setFileSystem:(unint64_t)system;
- (void)setPassphrase:(const char *)passphrase encryptionMethod:(unint64_t)method;
- (void)setSymmetricKey:(id)key;
@end

@implementation BaseDiskImageCreator

- (BaseDiskImageCreator)initWithURL:(id)l defaultFormat:(int64_t)format error:(id *)error
{
  lCopy = l;
  v12.receiver = self;
  v12.super_class = BaseDiskImageCreator;
  v9 = [(BaseDiskImageCreator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_URL, l);
    v10->_blockSize = 512;
    v10->_readPassphraseFlags = 6;
    v10->_imageFormat = format;
    v10->_sparseBundleBandSize = 0x4000000;
    [(BaseDiskImageCreator *)v10 setFileSystem:1];
  }

  return v10;
}

- (void)setSymmetricKey:(id)key
{
  keyCopy = key;
  mutableSymmetricKey = self->_mutableSymmetricKey;
  v9 = keyCopy;
  if (mutableSymmetricKey)
  {
    bzero([(NSMutableData *)mutableSymmetricKey mutableBytes], [(NSMutableData *)self->_mutableSymmetricKey length]);
    v6 = self->_mutableSymmetricKey;
    self->_mutableSymmetricKey = 0;

    keyCopy = v9;
  }

  if (keyCopy)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB28]) initWithData:v9];
    v8 = self->_mutableSymmetricKey;
    self->_mutableSymmetricKey = v7;
  }

  MEMORY[0x2821F96F8]();
}

- (void)dealloc
{
  [(BaseDiskImageCreator *)self setSymmetricKey:0];
  v3.receiver = self;
  v3.super_class = BaseDiskImageCreator;
  [(BaseDiskImageCreator *)&v3 dealloc];
}

- (void)setFileSystem:(unint64_t)system
{
  self->_fileSystem = system;
  if (system == 1)
  {
    v4 = objc_alloc_init(DIAPFSPartition);
    [(BaseDiskImageCreator *)self setDataPartition:v4];
  }

  else
  {

    [(BaseDiskImageCreator *)self setDataPartition:0];
  }
}

- (id)newMKDIDeviceWithError:(id *)error
{
  v5 = [MKDIDevice alloc];
  devBSDName = [(BaseDiskImageCreator *)self devBSDName];
  v7 = [(MKDIDevice *)v5 initWithBSDName:devBSDName numBlocks:[(BaseDiskImageCreator *)self numBlocks] blockSize:[(BaseDiskImageCreator *)self blockSize] error:error];

  return v7;
}

- (BOOL)partitionDiskWithError:(id *)error
{
  v5 = [(BaseDiskImageCreator *)self newMKDIDeviceWithError:?];
  if (v5)
  {
    dataPartition = [(BaseDiskImageCreator *)self dataPartition];
    v7 = [v5 partitionDiskWithGPTTypeID:objc_msgSend(dataPartition error:{"GPTTypeID"), error}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)newAttachWithCreateParams:(id)params error:(id *)error
{
  v11 = 0;
  paramsCopy = params;
  v7 = [[DIAttachParams alloc] initWithExistingParams:paramsCopy error:error];

  if (v7 && ([(DIAttachParams *)v7 setAutoMount:0], [(DIBaseParams *)v7 setBlockSize:[(BaseDiskImageCreator *)self blockSize]], [DiskImages2 managedAttachWithParams:v7 handle:&v11 error:error]))
  {
    bSDName = [v11 BSDName];
    [(BaseDiskImageCreator *)self setDevBSDName:bSDName];

    v9 = v11;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)createEmptyImageWithError:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = *__error();
  if (DIForwardLogs())
  {
    v6 = getDIOSLog();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    v7 = [(BaseDiskImageCreator *)self URL];
    path = [v7 path];
    *buf = 68158210;
    v32 = 50;
    v33 = 2080;
    v34 = "[BaseDiskImageCreator createEmptyImageWithError:]";
    v35 = 2112;
    v36 = path;
    LODWORD(v30) = 28;
    v29 = buf;
    v9 = _os_log_send_and_compose_impl();

    if (v9)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v9);
      free(v9);
    }
  }

  else
  {
    v10 = getDIOSLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(BaseDiskImageCreator *)self URL];
      path2 = [v11 path];
      *buf = 68158210;
      v32 = 50;
      v33 = 2080;
      v34 = "[BaseDiskImageCreator createEmptyImageWithError:]";
      v35 = 2112;
      v36 = path2;
      _os_log_impl(&dword_248DE0000, v10, OS_LOG_TYPE_DEFAULT, "%.*s: Creating %@", buf, 0x1Cu);
    }
  }

  *__error() = v5;
  if ([(BaseDiskImageCreator *)self imageFormat]== 9)
  {
    v13 = [DICreateUDSBParams alloc];
    v14 = [(BaseDiskImageCreator *)self URL];
    v15 = [(DICreateUDSBParams *)v13 initWithURL:v14 numBlocks:[(BaseDiskImageCreator *)self numBlocks] error:error];

    if (!v15)
    {
      goto LABEL_18;
    }

    [(DICreateUDSBParams *)v15 setSparseBundleBandSize:[(BaseDiskImageCreator *)self sparseBundleBandSize]];
  }

  else
  {
    if ([(BaseDiskImageCreator *)self imageFormat]== 2)
    {
      v16 = [DICreateASIFParams alloc];
    }

    else
    {
      v16 = [DICreateRAWParams alloc];
    }

    v17 = [(BaseDiskImageCreator *)self URL];
    v18 = [(DICreateASIFParams *)v16 initWithURL:v17 numBlocks:[(BaseDiskImageCreator *)self numBlocks] error:error];

    v15 = v18;
    if (!v18)
    {
      goto LABEL_18;
    }
  }

  [(DICreateParams *)v15 setEncryptionMethod:[(BaseDiskImageCreator *)self encryptionMethod:v29]];
  [(DIBaseParams *)v15 setReadPassphraseFlags:[(BaseDiskImageCreator *)self readPassphraseFlags]];
  publicKey = [(BaseDiskImageCreator *)self publicKey];
  [(DICreateParams *)v15 setPublicKey:publicKey];

  certificate = [(BaseDiskImageCreator *)self certificate];
  [(DICreateParams *)v15 setCertificate:certificate];

  [(DICreateParams *)v15 setPassphrase:[(BaseDiskImageCreator *)self passphrase]];
  mutableSymmetricKey = [(BaseDiskImageCreator *)self mutableSymmetricKey];
  [(DIBaseParams *)v15 setSymmetricKey:mutableSymmetricKey];

  [(DIBaseParams *)v15 setBlockSize:[(BaseDiskImageCreator *)self blockSize]];
  temporaryPassphrase = [(BaseDiskImageCreator *)self temporaryPassphrase];

  if (!temporaryPassphrase)
  {
LABEL_17:
    v25 = [DiskImages2 createBlankWithParams:v15 error:error];
    goto LABEL_19;
  }

  temporaryPassphrase2 = [(BaseDiskImageCreator *)self temporaryPassphrase];
  v24 = -[DICreateParams setPassphrase:encryptionMethod:error:](v15, "setPassphrase:encryptionMethod:error:", [temporaryPassphrase2 buf], -[BaseDiskImageCreator encryptionMethod](self, "encryptionMethod"), error);

  if (v24)
  {
    [(BaseDiskImageCreator *)self setTemporaryPassphrase:0];
    goto LABEL_17;
  }

LABEL_18:
  v25 = 0;
LABEL_19:
  [(BaseDiskImageCreator *)self setTemporaryPassphrase:0, v29];
  if (v25)
  {
    v26 = v15;
  }

  else
  {
    v26 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)formatImageWithCreateParams:(id)params error:(id *)error
{
  v6 = [(BaseDiskImageCreator *)self newAttachWithCreateParams:params error:?];
  if (!v6)
  {
    goto LABEL_9;
  }

  if (![(BaseDiskImageCreator *)self partitionDiskWithError:error])
  {
    goto LABEL_9;
  }

  dataPartition = [(BaseDiskImageCreator *)self dataPartition];
  bSDName = [v6 BSDName];
  v9 = [dataPartition findPartitionWithDeviceBSDName:bSDName error:error];

  if (!v9)
  {
    goto LABEL_9;
  }

  dataPartition2 = [(BaseDiskImageCreator *)self dataPartition];
  blockSize = [dataPartition2 blockSize];
  blockSize2 = [(BaseDiskImageCreator *)self blockSize];

  if (blockSize != blockSize2)
  {
    [DIError failWithEnumValue:154 verboseInfo:@"Mismatch between the device's and partition's block size" error:error];
LABEL_9:

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v19 = [(BaseDiskImageCreator *)self URL];
    [defaultManager removeItemAtURL:v19 error:0];

    v6 = 0;
    goto LABEL_10;
  }

  dataPartition3 = [(BaseDiskImageCreator *)self dataPartition];
  volumeName = [(BaseDiskImageCreator *)self volumeName];
  v15 = [dataPartition3 formatWithVolumeName:volumeName error:error];

  if (!v15)
  {
    goto LABEL_9;
  }

  dataPartition4 = [(BaseDiskImageCreator *)self dataPartition];
  v17 = [dataPartition4 findVolumeBSDNameWithError:error];

  if ((v17 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:

  return v6;
}

- (BOOL)ejectWithError:(id *)error
{
  v5 = [DIDiskArb diskArbWithError:?];
  if (v5)
  {
    devBSDName = [(BaseDiskImageCreator *)self devBSDName];
    v7 = [v5 ejectWithBSDName:devBSDName error:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setPassphrase:(const char *)passphrase encryptionMethod:(unint64_t)method
{
  v6 = [[DITemporaryPassphrase alloc] initWithPassphrase:passphrase];
  temporaryPassphrase = self->_temporaryPassphrase;
  self->_temporaryPassphrase = v6;

  self->_encryptionMethod = method;
}

@end