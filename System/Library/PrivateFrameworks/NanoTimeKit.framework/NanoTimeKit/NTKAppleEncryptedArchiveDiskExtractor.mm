@interface NTKAppleEncryptedArchiveDiskExtractor
- (BOOL)verifyExtractedContentsWithError:(id *)error;
- (NTKAppleEncryptedArchiveDiskExtractor)initWithArchiveURL:(id)l symmetricKey:(id)key outputDirectoryURL:(id)rL fileProtection:(id)protection completion:(id)completion;
- (id)errorWithCode:(void *)code;
- (id)errorWithCode:(void *)code userInfo:;
- (id)requiredDiskSpaceWithError:(id *)error;
- (void)cancel;
- (void)resume;
@end

@implementation NTKAppleEncryptedArchiveDiskExtractor

- (NTKAppleEncryptedArchiveDiskExtractor)initWithArchiveURL:(id)l symmetricKey:(id)key outputDirectoryURL:(id)rL fileProtection:(id)protection completion:(id)completion
{
  lCopy = l;
  keyCopy = key;
  rLCopy = rL;
  protectionCopy = protection;
  completionCopy = completion;
  v29.receiver = self;
  v29.super_class = NTKAppleEncryptedArchiveDiskExtractor;
  v17 = [(NTKAppleEncryptedArchiveDiskExtractor *)&v29 init];
  if (v17)
  {
    v18 = [lCopy copy];
    archiveURL = v17->_archiveURL;
    v17->_archiveURL = v18;

    v20 = [keyCopy copy];
    symmetricKey = v17->_symmetricKey;
    v17->_symmetricKey = v20;

    v22 = [rLCopy copy];
    outputDirectoryURL = v17->_outputDirectoryURL;
    v17->_outputDirectoryURL = v22;

    objc_storeStrong(&v17->_fileProtection, protection);
    v24 = [completionCopy copy];
    completion = v17->_completion;
    v17->_completion = v24;

    v17->_outputStream = 0;
    objc_storeStrong(&v17->_completionQueue, MEMORY[0x277D85CD0]);
    v26 = dispatch_queue_create("com.apple.nanotimekit.facesupport.aeadiskextractor.extractionQueue", 0);
    extractionQueue = v17->_extractionQueue;
    v17->_extractionQueue = v26;

    v17->_state = 0;
  }

  return v17;
}

- (id)requiredDiskSpaceWithError:(id *)error
{
  v5 = [NTKAppleEncryptedArchiveHandle alloc];
  archiveURL = [(NTKAppleEncryptedArchiveDiskExtractor *)self archiveURL];
  symmetricKey = [(NTKAppleEncryptedArchiveDiskExtractor *)self symmetricKey];
  v8 = [(NTKAppleEncryptedArchiveHandle *)v5 initWithArchiveURL:archiveURL symmetricKey:symmetricKey];

  v9 = [(NTKAppleEncryptedArchiveHandle *)v8 openReturningError:error];
  if (v9)
  {
    v10 = v9;
    for (i = 0; ; i += PayloadSize)
    {
      header = 0;
      v12 = AAArchiveStreamReadHeader(v10, &header);
      if (v12 != 1)
      {
        break;
      }

      v19 = 0;
      v13 = header;
      v14.ikey = 5917011;
      KeyIndex = AAHeaderGetKeyIndex(header, v14);
      if ((KeyIndex & 0x80000000) != 0 || AAHeaderGetFieldUInt(v13, KeyIndex, &v19) > 1)
      {
        PayloadSize = AAHeaderGetPayloadSize(header);
      }

      else
      {
        PayloadSize = v19;
      }
    }

    if (!v12 || i)
    {
      [(NTKAppleEncryptedArchiveHandle *)v8 closeReturningError:0];
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:i];
      goto LABEL_16;
    }

    if (error)
    {
      *error = [(NTKAppleEncryptedArchiveDiskExtractor *)self errorWithCode:?];
    }

    [(NTKAppleEncryptedArchiveHandle *)v8 closeReturningError:0];
  }

  v17 = 0;
LABEL_16:

  return v17;
}

- (BOOL)verifyExtractedContentsWithError:(id *)error
{
  v5 = [MEMORY[0x277CBEB98] setWithObjects:{@"CTM", @"MTM", @"BTM", @"UID", @"GID", @"MOD", 0}];
  v6 = [NTKAppleEncryptedArchiveVerificationHandle alloc];
  archiveURL = [(NTKAppleEncryptedArchiveDiskExtractor *)self archiveURL];
  symmetricKey = [(NTKAppleEncryptedArchiveDiskExtractor *)self symmetricKey];
  outputDirectoryURL = [(NTKAppleEncryptedArchiveDiskExtractor *)self outputDirectoryURL];
  v10 = [(NTKAppleEncryptedArchiveVerificationHandle *)v6 initWithArchiveURL:archiveURL symmetricKey:symmetricKey outputDirectoryURL:outputDirectoryURL excludeFields:v5];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __74__NTKAppleEncryptedArchiveDiskExtractor_verifyExtractedContentsWithError___block_invoke;
  v26[3] = &unk_278783AF0;
  v12 = dictionary;
  v27 = v12;
  [(NTKAppleEncryptedArchiveHandle *)v10 setArchiveEntryEvent:v26];
  v13 = [(NTKAppleEncryptedArchiveVerificationHandle *)v10 openReturningError:error];
  if (v13)
  {
    archiveStream = [(NTKAppleEncryptedArchiveVerificationHandle *)v10 archiveStream];
    archiveEntryEvent = [(NTKAppleEncryptedArchiveHandle *)v10 archiveEntryEvent];
    v16 = AAArchiveStreamProcess(archiveStream, v13, archiveEntryEvent, invokeBlockForArchiveEvent_0, 0xC010000000000001, 0);

    LOBYTE(v13) = v16 >= 0;
    if (v16 < 0)
    {
      [(NTKAppleEncryptedArchiveDiskExtractor *)v12 verifyExtractedContentsWithError:&v28];
      v17 = v28;
    }

    else
    {
      v17 = 0;
    }

    v25 = 0;
    v18 = [(NTKAppleEncryptedArchiveVerificationHandle *)v10 closeReturningError:&v25];
    v19 = v25;
    v20 = v19;
    if (!v18)
    {
      if (v17)
      {
        v21 = v17;
      }

      else
      {
        v21 = v19;
      }

      v22 = v21;

      LOBYTE(v13) = 0;
      v17 = v22;
    }

    if (error)
    {
      v23 = v17;
      *error = v17;
    }
  }

  return v13;
}

uint64_t __74__NTKAppleEncryptedArchiveDiskExtractor_verifyExtractedContentsWithError___block_invoke(uint64_t a1, int a2, void *a3, AAFieldKeySet_impl *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = v7;
  v9 = 0;
  if (a2 <= 71)
  {
    if (a2 != 12)
    {
      if (a2 == 71)
      {
        v10 = *(a1 + 32);
        v11 = @"-";
LABEL_10:
        [v10 setObject:v11 forKey:v8];
        goto LABEL_11;
      }

      goto LABEL_12;
    }

LABEL_11:
    v9 = 0xFFFFFFFFLL;
    goto LABEL_12;
  }

  if (a2 == 72)
  {
    if (![v7 length])
    {
      v9 = 1;
      goto LABEL_12;
    }

    v10 = *(a1 + 32);
    v11 = @"+";
    goto LABEL_10;
  }

  if (a2 == 74)
  {
    memset(v15, 0, sizeof(v15));
    AAFieldKeySetSerialize(a4, 0x7FuLL, v15);
    v12 = *(a1 + 32);
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:v15];
    [v12 setObject:v13 forKey:v8];

    goto LABEL_11;
  }

LABEL_12:

  return v9;
}

uint64_t __47__NTKAppleEncryptedArchiveDiskExtractor_resume__block_invoke(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  v7 = a3;
  if (a2 == 22)
  {
    v10 = 0xFFFFFFFFLL;
  }

  else if (a2 == 26)
  {
    *a4 |= 8u;
    v8 = [*(a1 + 32) fileProtection];
    v9 = [v8 isEqualToString:*MEMORY[0x277CCA190]];

    if (v9)
    {
      v10 = 0;
      v11 = 1;
    }

    else
    {
      v12 = [*(a1 + 32) fileProtection];
      v13 = [v12 isEqualToString:*MEMORY[0x277CCA198]];

      if (v13)
      {
        v10 = 0;
        v11 = 2;
      }

      else
      {
        v14 = [*(a1 + 32) fileProtection];
        v15 = [v14 isEqualToString:*MEMORY[0x277CCA1A0]];

        if (v15)
        {
          v10 = 0;
          v11 = 3;
        }

        else
        {
          v16 = [*(a1 + 32) fileProtection];
          v17 = [v16 isEqualToString:*MEMORY[0x277CCA1B8]];

          v10 = 0;
          if (v17)
          {
            v11 = 4;
          }

          else
          {
            v11 = -1;
          }
        }
      }
    }

    *(a4 + 4) = v11;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __47__NTKAppleEncryptedArchiveDiskExtractor_resume__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v25 = 0;
  v3 = [v2 openReturningError:&v25];
  v4 = v25;
  v5 = *(a1 + 40);
  if (v3)
  {
    v6 = v5;
    objc_sync_enter(v6);
    v7 = *(a1 + 40);
    if (v7)
    {
      *(v7 + 48) = v3;
    }

    objc_sync_exit(v6);

    v8 = [*(a1 + 32) archiveStream];
    v9 = [*(a1 + 32) archiveEntryEvent];
    v10 = AAArchiveStreamProcess(v8, v3, v9, invokeBlockForArchiveEvent_0, 0xC010000000000001, 0);

    v11 = *(a1 + 40);
    objc_sync_enter(v11);
    v12 = *(a1 + 40);
    if (v12)
    {
      *(v12 + 72) = 2;
      v13 = *(a1 + 40);
      if (v13)
      {
        *(v13 + 48) = 0;
      }
    }

    objc_sync_exit(v11);

    v14 = v10 >= 0;
    if (v10 < 0)
    {
      v15 = [(NTKAppleEncryptedArchiveDiskExtractor *)*(a1 + 40) errorWithCode:?];
    }

    else
    {
      v15 = 0;
    }

    v16 = *(a1 + 32);
    v24 = 0;
    v17 = [v16 closeReturningError:&v24];
    v18 = v24;
    v19 = v18;
    if ((v17 & 1) == 0)
    {
      if (v15)
      {
        v20 = v15;
      }

      else
      {
        v20 = v18;
      }

      v21 = v20;

      v14 = 0;
      v15 = v21;
    }

    v22 = *(a1 + 40);
    if (v22)
    {
      v23 = *(v22 + 40);
    }

    else
    {
      v23 = 0;
    }

    (*(v23 + 16))(v23, v14, v15);
  }

  else
  {
    __47__NTKAppleEncryptedArchiveDiskExtractor_resume__block_invoke_2_cold_1(v5, v4);
  }
}

- (void)cancel
{
  obj = self;
  objc_sync_enter(obj);
  if (obj)
  {
    if (obj->_state == 2)
    {
      objc_sync_exit(obj);

      return;
    }

    obj->_state = 2;
    objc_sync_exit(obj);

    outputStream = obj->_outputStream;
  }

  else
  {
    objc_sync_exit(0);
    outputStream = 0;
  }

  AAArchiveStreamCancel(outputStream);
}

- (id)errorWithCode:(void *)code
{
  if (code)
  {
    code = [(NTKAppleEncryptedArchiveDiskExtractor *)code errorWithCode:a2 userInfo:MEMORY[0x277CBEC10]];
    v2 = vars8;
  }

  return code;
}

- (id)errorWithCode:(void *)code userInfo:
{
  if (self)
  {
    v5 = [code mutableCopy];
    v6 = *MEMORY[0x277CCA760];
    v7 = [v5 objectForKey:*MEMORY[0x277CCA760]];

    if (!v7)
    {
      archiveURL = [self archiveURL];
      [v5 setObject:archiveURL forKey:v6];
    }

    v9 = MEMORY[0x277CCA9B8];
    v10 = [v5 copy];
    v11 = [v9 errorWithDomain:@"NTKAppleEncryptedArchiveDiskExtractor" code:a2 userInfo:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)resume
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy)
  {
    selfCopy->_state = 1;
  }

  objc_sync_exit(selfCopy);

  v3 = [NTKAppleEncryptedArchiveDiskExtractionHandle alloc];
  archiveURL = [(NTKAppleEncryptedArchiveDiskExtractor *)selfCopy archiveURL];
  symmetricKey = [(NTKAppleEncryptedArchiveDiskExtractor *)selfCopy symmetricKey];
  outputDirectoryURL = [(NTKAppleEncryptedArchiveDiskExtractor *)selfCopy outputDirectoryURL];
  fileProtection = [(NTKAppleEncryptedArchiveDiskExtractor *)selfCopy fileProtection];
  v8 = [(NTKAppleEncryptedArchiveDiskExtractionHandle *)v3 initWithArchiveURL:archiveURL symmetricKey:symmetricKey outputDirectoryURL:outputDirectoryURL fileProtection:fileProtection];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__NTKAppleEncryptedArchiveDiskExtractor_resume__block_invoke;
  v14[3] = &unk_278783AF0;
  v14[4] = selfCopy;
  [(NTKAppleEncryptedArchiveHandle *)v8 setArchiveEntryEvent:v14];
  if (selfCopy)
  {
    extractionQueue = selfCopy->_extractionQueue;
  }

  else
  {
    extractionQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__NTKAppleEncryptedArchiveDiskExtractor_resume__block_invoke_2;
  block[3] = &unk_27877E438;
  v12 = v8;
  v13 = selfCopy;
  v10 = v8;
  dispatch_async(extractionQueue, block);
}

- (void)verifyExtractedContentsWithError:(uint64_t *)a3 .cold.1(void *a1, void *a2, uint64_t *a3)
{
  v5 = MEMORY[0x277CBEAC0];
  v6 = [a1 copy];
  v7 = [v5 dictionaryWithObjectsAndKeys:{v6, @"FailingPaths", 0}];
  *a3 = [(NTKAppleEncryptedArchiveDiskExtractor *)a2 errorWithCode:v7 userInfo:?];
}

uint64_t __47__NTKAppleEncryptedArchiveDiskExtractor_resume__block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    a1 = *(a1 + 40);
  }

  return (*(a1 + 16))(a1, 0, a2);
}

@end