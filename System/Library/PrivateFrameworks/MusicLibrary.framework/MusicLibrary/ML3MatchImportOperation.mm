@interface ML3MatchImportOperation
- (BOOL)_performMatchImportWithTransaction:(id)transaction;
- (void)main;
@end

@implementation ML3MatchImportOperation

- (BOOL)_performMatchImportWithTransaction:(id)transaction
{
  connection = [transaction connection];
  if (([(ML3MatchImportOperation *)self isCancelled]& 1) != 0)
  {
    goto LABEL_4;
  }

  if ([(ML3DAAPImportOperation *)self performImportOfSourceType:2 usingConnection:connection])
  {
    import = [(ML3ImportOperation *)self import];
    library = [import library];
    [library notifyKeepLocalStateDidChange];

LABEL_4:
    v7 = 1;
    goto LABEL_8;
  }

  v8 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v10 = 0;
    _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_ERROR, "failed to process match import data", v10, 2u);
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (void)main
{
  v28 = *MEMORY[0x277D85DE8];
  import = [(ML3ImportOperation *)self import];
  trackData = [import trackData];
  if (trackData)
  {
    goto LABEL_6;
  }

  trackData = [(ML3ImportOperation *)self import];
  playlistData = [trackData playlistData];
  if (playlistData)
  {
LABEL_5:

LABEL_6:
    goto LABEL_7;
  }

  playlistData = [(ML3ImportOperation *)self import];
  albumArtistData = [playlistData albumArtistData];
  if (albumArtistData)
  {

    goto LABEL_5;
  }

  import2 = [(ML3ImportOperation *)self import];
  albumData = [import2 albumData];

  if (albumData)
  {
    goto LABEL_8;
  }

  import = [MEMORY[0x277CCA890] currentHandler];
  [import handleFailureInMethod:a2 object:self file:@"ML3MatchImportOperation.mm" lineNumber:39 description:@"Attempted to start match import operation without DAAP payload data."];
LABEL_7:

LABEL_8:
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v9 = v8;
  if (*(v19 + 24) == 1 && ([(ML3MatchImportOperation *)self isCancelled]& 1) == 0)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __31__ML3MatchImportOperation_main__block_invoke;
    v17[3] = &unk_278765F00;
    v17[4] = self;
    v17[5] = &v18;
    [(ML3ImportOperation *)self _writerTransactionWithBlock:v17];
  }

  v10 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    isCancelled = [(ML3MatchImportOperation *)self isCancelled];
    v12 = *(v19 + 24);
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    *buf = 67109632;
    v23 = isCancelled;
    v24 = 1024;
    v25 = v12;
    v26 = 2048;
    v27 = v13 - v9;
    _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_DEFAULT, "[MLMatchImportOperation] Match import operation cancelled=%d success=%d. total time = %.2fs", buf, 0x18u);
  }

  if (*(v19 + 24) == 1)
  {
    v14 = [(ML3MatchImportOperation *)self isCancelled]^ 1;
  }

  else
  {
    v14 = 0;
  }

  [(ML3ImportOperation *)self setSuccess:v14];
  _Block_object_dispose(&v18, 8);
}

uint64_t __31__ML3MatchImportOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _performMatchImportWithTransaction:v5];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    [*(a1 + 32) setError:v6];
  }

  v7 = *(*(*(a1 + 40) + 8) + 24);

  return v7;
}

@end