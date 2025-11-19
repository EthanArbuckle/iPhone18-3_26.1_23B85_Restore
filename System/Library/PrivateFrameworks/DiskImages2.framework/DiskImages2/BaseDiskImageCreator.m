@interface BaseDiskImageCreator
- (BOOL)ejectWithError:(id *)a3;
- (BOOL)partitionDiskWithError:(id *)a3;
- (BaseDiskImageCreator)initWithURL:(id)a3 defaultFormat:(int64_t)a4 error:(id *)a5;
- (id)createEmptyImageWithError:(id *)a3;
- (id)formatImageWithCreateParams:(id)a3 error:(id *)a4;
- (id)newAttachWithCreateParams:(id)a3 error:(id *)a4;
- (id)newMKDIDeviceWithError:(id *)a3;
- (void)dealloc;
- (void)setFileSystem:(unint64_t)a3;
- (void)setPassphrase:(const char *)a3 encryptionMethod:(unint64_t)a4;
- (void)setSymmetricKey:(id)a3;
@end

@implementation BaseDiskImageCreator

- (BaseDiskImageCreator)initWithURL:(id)a3 defaultFormat:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  v12.receiver = self;
  v12.super_class = BaseDiskImageCreator;
  v9 = [(BaseDiskImageCreator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_URL, a3);
    v10->_blockSize = 512;
    v10->_readPassphraseFlags = 6;
    v10->_imageFormat = a4;
    v10->_sparseBundleBandSize = 0x4000000;
    [(BaseDiskImageCreator *)v10 setFileSystem:1];
  }

  return v10;
}

- (void)setSymmetricKey:(id)a3
{
  v4 = a3;
  mutableSymmetricKey = self->_mutableSymmetricKey;
  v9 = v4;
  if (mutableSymmetricKey)
  {
    bzero([(NSMutableData *)mutableSymmetricKey mutableBytes], [(NSMutableData *)self->_mutableSymmetricKey length]);
    v6 = self->_mutableSymmetricKey;
    self->_mutableSymmetricKey = 0;

    v4 = v9;
  }

  if (v4)
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

- (void)setFileSystem:(unint64_t)a3
{
  self->_fileSystem = a3;
  if (a3 == 1)
  {
    v4 = objc_alloc_init(DIAPFSPartition);
    [(BaseDiskImageCreator *)self setDataPartition:v4];
  }

  else
  {

    [(BaseDiskImageCreator *)self setDataPartition:0];
  }
}

- (id)newMKDIDeviceWithError:(id *)a3
{
  v5 = [MKDIDevice alloc];
  v6 = [(BaseDiskImageCreator *)self devBSDName];
  v7 = [(MKDIDevice *)v5 initWithBSDName:v6 numBlocks:[(BaseDiskImageCreator *)self numBlocks] blockSize:[(BaseDiskImageCreator *)self blockSize] error:a3];

  return v7;
}

- (BOOL)partitionDiskWithError:(id *)a3
{
  v5 = [(BaseDiskImageCreator *)self newMKDIDeviceWithError:?];
  if (v5)
  {
    v6 = [(BaseDiskImageCreator *)self dataPartition];
    v7 = [v5 partitionDiskWithGPTTypeID:objc_msgSend(v6 error:{"GPTTypeID"), a3}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)newAttachWithCreateParams:(id)a3 error:(id *)a4
{
  v11 = 0;
  v6 = a3;
  v7 = [[DIAttachParams alloc] initWithExistingParams:v6 error:a4];

  if (v7 && ([(DIAttachParams *)v7 setAutoMount:0], [(DIBaseParams *)v7 setBlockSize:[(BaseDiskImageCreator *)self blockSize]], [DiskImages2 managedAttachWithParams:v7 handle:&v11 error:a4]))
  {
    v8 = [v11 BSDName];
    [(BaseDiskImageCreator *)self setDevBSDName:v8];

    v9 = v11;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)createEmptyImageWithError:(id *)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = *__error();
  if (DIForwardLogs())
  {
    v6 = getDIOSLog();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    v7 = [(BaseDiskImageCreator *)self URL];
    v8 = [v7 path];
    *buf = 68158210;
    v32 = 50;
    v33 = 2080;
    v34 = "[BaseDiskImageCreator createEmptyImageWithError:]";
    v35 = 2112;
    v36 = v8;
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
      v12 = [v11 path];
      *buf = 68158210;
      v32 = 50;
      v33 = 2080;
      v34 = "[BaseDiskImageCreator createEmptyImageWithError:]";
      v35 = 2112;
      v36 = v12;
      _os_log_impl(&dword_248DE0000, v10, OS_LOG_TYPE_DEFAULT, "%.*s: Creating %@", buf, 0x1Cu);
    }
  }

  *__error() = v5;
  if ([(BaseDiskImageCreator *)self imageFormat]== 9)
  {
    v13 = [DICreateUDSBParams alloc];
    v14 = [(BaseDiskImageCreator *)self URL];
    v15 = [(DICreateUDSBParams *)v13 initWithURL:v14 numBlocks:[(BaseDiskImageCreator *)self numBlocks] error:a3];

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
    v18 = [(DICreateASIFParams *)v16 initWithURL:v17 numBlocks:[(BaseDiskImageCreator *)self numBlocks] error:a3];

    v15 = v18;
    if (!v18)
    {
      goto LABEL_18;
    }
  }

  [(DICreateParams *)v15 setEncryptionMethod:[(BaseDiskImageCreator *)self encryptionMethod:v29]];
  [(DIBaseParams *)v15 setReadPassphraseFlags:[(BaseDiskImageCreator *)self readPassphraseFlags]];
  v19 = [(BaseDiskImageCreator *)self publicKey];
  [(DICreateParams *)v15 setPublicKey:v19];

  v20 = [(BaseDiskImageCreator *)self certificate];
  [(DICreateParams *)v15 setCertificate:v20];

  [(DICreateParams *)v15 setPassphrase:[(BaseDiskImageCreator *)self passphrase]];
  v21 = [(BaseDiskImageCreator *)self mutableSymmetricKey];
  [(DIBaseParams *)v15 setSymmetricKey:v21];

  [(DIBaseParams *)v15 setBlockSize:[(BaseDiskImageCreator *)self blockSize]];
  v22 = [(BaseDiskImageCreator *)self temporaryPassphrase];

  if (!v22)
  {
LABEL_17:
    v25 = [DiskImages2 createBlankWithParams:v15 error:a3];
    goto LABEL_19;
  }

  v23 = [(BaseDiskImageCreator *)self temporaryPassphrase];
  v24 = -[DICreateParams setPassphrase:encryptionMethod:error:](v15, "setPassphrase:encryptionMethod:error:", [v23 buf], -[BaseDiskImageCreator encryptionMethod](self, "encryptionMethod"), a3);

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

- (id)formatImageWithCreateParams:(id)a3 error:(id *)a4
{
  v6 = [(BaseDiskImageCreator *)self newAttachWithCreateParams:a3 error:?];
  if (!v6)
  {
    goto LABEL_9;
  }

  if (![(BaseDiskImageCreator *)self partitionDiskWithError:a4])
  {
    goto LABEL_9;
  }

  v7 = [(BaseDiskImageCreator *)self dataPartition];
  v8 = [v6 BSDName];
  v9 = [v7 findPartitionWithDeviceBSDName:v8 error:a4];

  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = [(BaseDiskImageCreator *)self dataPartition];
  v11 = [v10 blockSize];
  v12 = [(BaseDiskImageCreator *)self blockSize];

  if (v11 != v12)
  {
    [DIError failWithEnumValue:154 verboseInfo:@"Mismatch between the device's and partition's block size" error:a4];
LABEL_9:

    v18 = [MEMORY[0x277CCAA00] defaultManager];
    v19 = [(BaseDiskImageCreator *)self URL];
    [v18 removeItemAtURL:v19 error:0];

    v6 = 0;
    goto LABEL_10;
  }

  v13 = [(BaseDiskImageCreator *)self dataPartition];
  v14 = [(BaseDiskImageCreator *)self volumeName];
  v15 = [v13 formatWithVolumeName:v14 error:a4];

  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = [(BaseDiskImageCreator *)self dataPartition];
  v17 = [v16 findVolumeBSDNameWithError:a4];

  if ((v17 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:

  return v6;
}

- (BOOL)ejectWithError:(id *)a3
{
  v5 = [DIDiskArb diskArbWithError:?];
  if (v5)
  {
    v6 = [(BaseDiskImageCreator *)self devBSDName];
    v7 = [v5 ejectWithBSDName:v6 error:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setPassphrase:(const char *)a3 encryptionMethod:(unint64_t)a4
{
  v6 = [[DITemporaryPassphrase alloc] initWithPassphrase:a3];
  temporaryPassphrase = self->_temporaryPassphrase;
  self->_temporaryPassphrase = v6;

  self->_encryptionMethod = a4;
}

@end