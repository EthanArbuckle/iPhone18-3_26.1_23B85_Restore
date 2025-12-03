@interface GSClientManagedLibrary
- (BOOL)generationsRemove:(id)remove error:(id *)error;
- (GSClientManagedLibrary)initWithURL:(id)l error:(id *)error;
@end

@implementation GSClientManagedLibrary

- (GSClientManagedLibrary)initWithURL:(id)l error:(id *)error
{
  lCopy = l;
  if (([lCopy isFileURL] & 1) == 0)
  {
    [GSClientManagedLibrary initWithURL:a2 error:self];
  }

  v13.receiver = self;
  v13.super_class = GSClientManagedLibrary;
  v8 = [(GSClientManagedLibrary *)&v13 init];
  if (v8)
  {
    v9 = +[GSStorageManager manager];
    v10 = [v9 temporaryStorageForItemAtURL:lCopy locatedAtURL:lCopy error:error];
    ts = v8->_ts;
    v8->_ts = v10;

    if (!v8->_ts)
    {

      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)generationsRemove:(id)remove error:(id *)error
{
  removeCopy = remove;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 1;
  v7 = [(GSTemporaryStorage *)self->_ts additionsWithNames:removeCopy inNameSpace:@"com.apple.documentVersions" error:0];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__1;
  v21 = __Block_byref_object_dispose__1;
  v22 = 0;
  if (v7)
  {
    v8 = dispatch_semaphore_create(0);
    ts = self->_ts;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __50__GSClientManagedLibrary_generationsRemove_error___block_invoke;
    v13[3] = &unk_279697900;
    v15 = &v17;
    v16 = &v23;
    v10 = v8;
    v14 = v10;
    [(GSTemporaryStorage *)ts removeAdditions:v7 completionHandler:v13];
    dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (error)
  {
    *error = v18[5];
  }

  v11 = *(v24 + 24);
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  return v11;
}

void __50__GSClientManagedLibrary_generationsRemove_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)initWithURL:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GSClientManagedLibrary.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"[url isFileURL]"}];
}

@end