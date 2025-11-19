@interface NTKAppleEncryptedArchiveMemoryExtractor
- (NTKAppleEncryptedArchiveMemoryExtractor)initWithArchiveURL:(id)a3 symmetricKey:(id)a4 extractingFileAtArchivedPath:(id)a5 completion:(id)a6;
- (void)cancel;
- (void)resume;
- (void)setOutputData:(uint64_t)a1;
- (void)setOutputError:(uint64_t)a1;
@end

@implementation NTKAppleEncryptedArchiveMemoryExtractor

- (NTKAppleEncryptedArchiveMemoryExtractor)initWithArchiveURL:(id)a3 symmetricKey:(id)a4 extractingFileAtArchivedPath:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v26.receiver = self;
  v26.super_class = NTKAppleEncryptedArchiveMemoryExtractor;
  v14 = [(NTKAppleEncryptedArchiveMemoryExtractor *)&v26 init];
  if (v14)
  {
    v15 = [v10 copy];
    archiveURL = v14->_archiveURL;
    v14->_archiveURL = v15;

    v17 = [v11 copy];
    symmetricKey = v14->_symmetricKey;
    v14->_symmetricKey = v17;

    v19 = [v12 copy];
    targetArchivedPath = v14->_targetArchivedPath;
    v14->_targetArchivedPath = v19;

    v21 = [v13 copy];
    completion = v14->_completion;
    v14->_completion = v21;

    v14->_outputStream = 0;
    objc_storeStrong(&v14->_completionQueue, MEMORY[0x277D85CD0]);
    v23 = dispatch_queue_create("com.apple.nanotimekit.facesupport.aeamemoryextractor.extractionQueue", 0);
    extractionQueue = v14->_extractionQueue;
    v14->_extractionQueue = v23;

    v14->_state = 0;
  }

  return v14;
}

- (void)resume
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2)
  {
    v2->_state = 1;
    objc_sync_exit(v2);

    extractionQueue = v2->_extractionQueue;
  }

  else
  {
    objc_sync_exit(0);
    extractionQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__NTKAppleEncryptedArchiveMemoryExtractor_resume__block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = v2;
  dispatch_async(extractionQueue, block);
}

void __49__NTKAppleEncryptedArchiveMemoryExtractor_resume__block_invoke(uint64_t a1)
{
  v93[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__NTKAppleEncryptedArchiveMemoryExtractor_resume__block_invoke_2;
  aBlock[3] = &unk_27877E260;
  v3 = v2;
  v4 = *(a1 + 32);
  v78 = v3;
  v79 = v4;
  v5 = _Block_copy(aBlock);
  v6 = [*(a1 + 32) archiveURL];
  v7 = [v6 absoluteURL];
  v8 = [v7 path];

  v9 = v8;
  v10 = AAFileStreamOpenWithPath([v8 fileSystemRepresentation], 16777472, 0);
  v11 = v10;
  if (v10)
  {
    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 3221225472;
    v76[2] = __49__NTKAppleEncryptedArchiveMemoryExtractor_resume__block_invoke_4;
    v76[3] = &__block_descriptor_40_e5_v8__0l;
    v76[4] = v10;
    v12 = _Block_copy(v76);
    [v3 addObject:v12];

    v13 = AEAContextCreateWithEncryptedStream(v11);
    v14 = v13;
    if (v13)
    {
      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = __49__NTKAppleEncryptedArchiveMemoryExtractor_resume__block_invoke_5;
      v75[3] = &__block_descriptor_40_e5_v8__0l;
      v75[4] = v13;
      v15 = _Block_copy(v75);
      [v3 addObject:v15];

      v16 = [*(a1 + 32) symmetricKey];
      v17 = v16;
      v18 = [v16 bytes];
      v19 = [*(a1 + 32) symmetricKey];
      AEAContextSetFieldBlob(v14, 9u, 0, v18, [v19 length]);

      v20 = AEADecryptionInputStreamOpen(v11, v14, 0xC000000000000001, 0);
      v21 = v20;
      if (v20)
      {
        v74[0] = MEMORY[0x277D85DD0];
        v74[1] = 3221225472;
        v74[2] = __49__NTKAppleEncryptedArchiveMemoryExtractor_resume__block_invoke_6;
        v74[3] = &__block_descriptor_40_e5_v8__0l;
        v74[4] = v20;
        v22 = _Block_copy(v74);
        [v3 addObject:v22];

        v23 = AADecodeArchiveInputStreamOpen(v21, 0, archiveEvent, 0xC000000000000001, 0);
        v24 = v23;
        if (v23)
        {
          v73[0] = MEMORY[0x277D85DD0];
          v73[1] = 3221225472;
          v73[2] = __49__NTKAppleEncryptedArchiveMemoryExtractor_resume__block_invoke_7;
          v73[3] = &__block_descriptor_40_e5_v8__0l;
          v73[4] = v23;
          v25 = _Block_copy(v73);
          [v3 addObject:v25];

          v26 = AACustomArchiveStreamOpen();
          v27 = v26;
          if (v26)
          {
            v72[0] = MEMORY[0x277D85DD0];
            v72[1] = 3221225472;
            v72[2] = __49__NTKAppleEncryptedArchiveMemoryExtractor_resume__block_invoke_8;
            v72[3] = &__block_descriptor_40_e5_v8__0l;
            v72[4] = v26;
            v28 = _Block_copy(v72);
            [v3 addObject:v28];

            AACustomArchiveStreamSetData(v27, *(a1 + 32));
            AACustomArchiveStreamSetWriteHeaderProc(v27, _NTKAppleEncryptedArchiveMemoryExtractorWriteHeader);
            AACustomArchiveStreamSetWriteBlobProc(v27, _NTKAppleEncryptedArchiveMemoryExtractorWriteBlob);
            AACustomArchiveStreamSetCancelProc(v27, _NTKAppleEncryptedArchiveMemoryExtractorCancel);
            AACustomArchiveStreamSetCloseProc(v27, _NTKAppleEncryptedArchiveMemoryExtractorClose);
            v29 = *(a1 + 32);
            objc_sync_enter(v29);
            v30 = *(a1 + 32);
            if (v30)
            {
              *(v30 + 40) = v27;
            }

            objc_sync_exit(v29);

            v71[0] = MEMORY[0x277D85DD0];
            v71[1] = 3221225472;
            v71[2] = __49__NTKAppleEncryptedArchiveMemoryExtractor_resume__block_invoke_9;
            v71[3] = &unk_27877DB10;
            v71[4] = *(a1 + 32);
            v31 = _Block_copy(v71);
            [v3 addObject:v31];

            v32 = AAArchiveStreamProcess(v24, v27, 0, archiveEvent, 0, 0);
            v33 = *(a1 + 32);
            objc_sync_enter(v33);
            if (*(a1 + 32) && (*(*(a1 + 32) + 64) = 4, (v34 = *(a1 + 32)) != 0) && (v35 = *(v34 + 72)) != 0)
            {
              v36 = v35;
              v37 = MEMORY[0x277CBEA90];
              v38 = *(a1 + 32);
              if (v38)
              {
                v38 = v38[9];
              }

              v39 = v38;
              v40 = [v37 dataWithData:v39];
            }

            else
            {
              v40 = 0;
            }

            v61 = *(a1 + 32);
            if (v61)
            {
              v61 = v61[10];
            }

            v62 = v61;
            objc_sync_exit(v33);

            if (v32 < 0)
            {
              v63 = MEMORY[0x277CCA9B8];
              v82 = *MEMORY[0x277CCA760];
              v64 = [*(a1 + 32) archiveURL];
              v83 = v64;
              v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
              v66 = [v63 errorWithDomain:@"NTKAppleEncryptedArchiveMemoryExtractor" code:4 userInfo:v65];
              v5[2](v5, 0, v66);
            }

            else if (v40)
            {
              (v5)[2](v5, v40, 0);
            }

            else if (v62)
            {
              v5[2](v5, 0, v62);
            }

            else
            {
              v67 = MEMORY[0x277CCA9B8];
              v80 = *MEMORY[0x277CCA760];
              v68 = [*(a1 + 32) archiveURL];
              v81 = v68;
              v69 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
              v70 = [v67 errorWithDomain:@"NTKAppleEncryptedArchiveMemoryExtractor" code:5 userInfo:v69];
              v5[2](v5, 0, v70);
            }
          }

          else
          {
            v57 = MEMORY[0x277CCA9B8];
            v84 = *MEMORY[0x277CCA760];
            v58 = [*(a1 + 32) archiveURL];
            v85 = v58;
            v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
            v60 = [v57 errorWithDomain:@"NTKAppleEncryptedArchiveMemoryExtractor" code:4 userInfo:v59];
            v5[2](v5, 0, v60);
          }
        }

        else
        {
          v53 = MEMORY[0x277CCA9B8];
          v86 = *MEMORY[0x277CCA760];
          v54 = [*(a1 + 32) archiveURL];
          v87 = v54;
          v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
          v56 = [v53 errorWithDomain:@"NTKAppleEncryptedArchiveMemoryExtractor" code:2 userInfo:v55];
          v5[2](v5, 0, v56);
        }
      }

      else
      {
        v49 = MEMORY[0x277CCA9B8];
        v88 = *MEMORY[0x277CCA760];
        v50 = [*(a1 + 32) archiveURL];
        v89 = v50;
        v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
        v52 = [v49 errorWithDomain:@"NTKAppleEncryptedArchiveMemoryExtractor" code:2 userInfo:v51];
        v5[2](v5, 0, v52);
      }
    }

    else
    {
      v45 = MEMORY[0x277CCA9B8];
      v90 = *MEMORY[0x277CCA760];
      v46 = [*(a1 + 32) archiveURL];
      v91 = v46;
      v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
      v48 = [v45 errorWithDomain:@"NTKAppleEncryptedArchiveMemoryExtractor" code:2 userInfo:v47];
      v5[2](v5, 0, v48);
    }
  }

  else
  {
    v41 = MEMORY[0x277CCA9B8];
    v92 = *MEMORY[0x277CCA760];
    v42 = [*(a1 + 32) archiveURL];
    v93[0] = v42;
    v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:&v92 count:1];
    v44 = [v41 errorWithDomain:@"NTKAppleEncryptedArchiveMemoryExtractor" code:1 userInfo:v43];
    v5[2](v5, 0, v44);
  }
}

- (void)cancel
{
  obj = self;
  objc_sync_enter(obj);
  if (obj)
  {
    if (obj->_state == 4)
    {
      objc_sync_exit(obj);

      return;
    }

    obj->_state = 4;
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

void __49__NTKAppleEncryptedArchiveMemoryExtractor_resume__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [*(a1 + 32) reverseObjectEnumerator];
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        (*(*(*(&v19 + 1) + 8 * v11++) + 16))();
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    v13 = *(v12 + 48);
  }

  else
  {
    v13 = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__NTKAppleEncryptedArchiveMemoryExtractor_resume__block_invoke_3;
  block[3] = &unk_27877E238;
  block[4] = *(a1 + 40);
  v17 = v5;
  v18 = v6;
  v14 = v6;
  v15 = v5;
  dispatch_async(v13, block);
}

uint64_t __49__NTKAppleEncryptedArchiveMemoryExtractor_resume__block_invoke_3(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v1 = *(v1 + 32);
  }

  return (*(v1 + 16))(v1, a1[5], a1[6]);
}

void __49__NTKAppleEncryptedArchiveMemoryExtractor_resume__block_invoke_9(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v2 = *(a1 + 32);
  if (v2)
  {
    *(v2 + 40) = 0;
  }

  objc_sync_exit(obj);
}

- (void)setOutputData:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 72), a2);
  }
}

- (void)setOutputError:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 80), a2);
  }
}

@end