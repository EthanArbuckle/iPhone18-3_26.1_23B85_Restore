@interface NTKFaceCollectionStateCapture
- (NTKFaceCollectionStateCapture)initWithFaceCollection:(id)a3 identifier:(id)a4;
- (id)_faceCollectionDescription;
- (os_state_data_s)_stateDump;
- (void)dealloc;
- (void)start;
@end

@implementation NTKFaceCollectionStateCapture

- (NTKFaceCollectionStateCapture)initWithFaceCollection:(id)a3 identifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = NTKFaceCollectionStateCapture;
  v9 = [(NTKFaceCollectionStateCapture *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_faceCollection, a3);
    objc_storeStrong(&v10->_identifier, a4);
    objc_initWeak(&location, v10);
    objc_copyWeak(&v12, &location);
    v10->_stateDumpHandler = os_state_add_handler();
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v10;
}

uint64_t __67__NTKFaceCollectionStateCapture_initWithFaceCollection_identifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _stateDump];

  return v2;
}

- (void)start
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = _NTKLoggingObjectForDomain(0, "NTKLoggingDomainDefault");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    v5 = 138412290;
    v6 = identifier;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "NTKFaceCollectionStateCapture: did start for %@", &v5, 0xCu);
  }
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _NTKLoggingObjectForDomain(0, "NTKLoggingDomainDefault");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    *buf = 138412290;
    v7 = identifier;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "NTKFaceCollectionStateCapture: dealloc %@", buf, 0xCu);
  }

  if (self->_stateDumpHandler)
  {
    os_state_remove_handler();
  }

  v5.receiver = self;
  v5.super_class = NTKFaceCollectionStateCapture;
  [(NTKFaceCollectionStateCapture *)&v5 dealloc];
}

- (os_state_data_s)_stateDump
{
  v3 = [@"NTKFaceCollection" stringByAppendingFormat:@"-%@", self->_identifier];
  v4 = [(NTKFaceCollectionStateCapture *)self _faceCollectionDescription];
  v15 = 0;
  v5 = [MEMORY[0x277CCAC58] dataWithPropertyList:v4 format:200 options:0 error:&v15];
  v6 = v15;
  if (v6)
  {
    v7 = v6;
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"{\n%@}\n", @"error: failed to serialize state dump\n"];
    v14 = 0;
    v9 = [MEMORY[0x277CCAC58] dataWithPropertyList:v8 format:200 options:0 error:&v14];
    v10 = v14;

    v5 = v9;
  }

  if (v5)
  {
    v11 = [v5 length];
    v12 = malloc_type_calloc(1uLL, v11 + 200, 0x1000040BEF03554uLL);
    v12->var0 = 1;
    v12->var1.var1 = v11;
    [v3 UTF8String];
    __strlcpy_chk();
    memcpy(v12->var4, [v5 bytes], v11);
  }

  else
  {
    v12 = malloc_type_calloc(1uLL, 0xC8uLL, 0x1000040BEF03554uLL);
  }

  return v12;
}

- (id)_faceCollectionDescription
{
  v3 = objc_opt_new();
  if ([(NTKFaceCollection *)self->_faceCollection hasLoaded])
  {
    v4 = self->_faceCollection;
    v5 = [(NTKFaceCollection *)v4 numberOfFaces];
    v6 = [(NTKFaceCollection *)v4 selectedFace];
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__25;
    v39 = __Block_byref_object_dispose__25;
    v40 = 0;
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__25;
    v33 = __Block_byref_object_dispose__25;
    v34 = 0;
    if (v5 >= 2)
    {
      v7 = [(NTKFaceCollection *)v4 selectedFaceIndex];
      if (v7 == v5 - 1)
      {
        v8 = -1;
      }

      else
      {
        v8 = v7 + 1;
      }

      if (v7)
      {
        v9 = v7 - 1;
      }

      else
      {
        v9 = -1;
      }

      if (v7)
      {
        v10 = v8;
      }

      else
      {
        v10 = 1;
      }

      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __59__NTKFaceCollectionStateCapture__faceCollectionDescription__block_invoke;
      v22[3] = &unk_278781BD8;
      v23 = v4;
      v24 = &v35;
      v25 = &v29;
      v26 = v9;
      v27 = v10;
      v28 = -1;
      [(NTKFaceCollection *)v23 enumerateFacesUsingBlock:v22];
    }

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Number of Faces: %u\n", v5];
    [v3 appendString:v11];

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"\nSelected Face: %@\n", v6];
    [v3 appendString:v12];

    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"\nLeft On Deck Face: %@\n", v36[5]];
    [v3 appendString:v13];

    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"\nRight On Deck Face: %@\n", v30[5]];
    [v3 appendString:v14];

    v15 = +[NTKFastFaceSwitchingSettings sharedInstance];
    v16 = [v15 fastFaceSwitchingEnabled];

    v17 = MEMORY[0x277CCACA8];
    v18 = [MEMORY[0x277CCABB0] numberWithBool:v16];
    v19 = [v17 stringWithFormat:@"\nFast Face Switching Enabled: %@\n", v18];
    [v3 appendString:v19];

    _Block_object_dispose(&v29, 8);
    _Block_object_dispose(&v35, 8);
  }

  else
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"error: face collection has not loaded\n"];
    [v3 appendString:v4];
  }

  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"{\n%@}\n", v3];

  return v20;
}

void __59__NTKFaceCollectionStateCapture__faceCollectionDescription__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([*(a1 + 32) indexOfFace:?] == *(a1 + 56))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    if (*(*(*(a1 + 48) + 8) + 40) || *(a1 + 64) == *(a1 + 72))
    {
      *a3 = 1;
    }
  }

  if ([*(a1 + 32) indexOfFace:v6] == *(a1 + 64))
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    if (*(*(*(a1 + 40) + 8) + 40) || *(a1 + 56) == *(a1 + 72))
    {
      *a3 = 1;
    }
  }
}

@end