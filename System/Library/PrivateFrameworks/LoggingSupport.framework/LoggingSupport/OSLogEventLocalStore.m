@interface OSLogEventLocalStore
- (void)prepareWithCompletionHandler:(id)a3;
@end

@implementation OSLogEventLocalStore

- (void)prepareWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:6];
  v92 = 0;
  v6 = [_OSLogCollectionReference localDBRefWithError:&v92];
  v7 = v92;
  v8 = v7;
  if (!v6)
  {
    if (!v7)
    {
      v8 = _OSLogError(6);
    }

    v4[2](v4, 0, v8);
    goto LABEL_37;
  }

  v9 = v5;
  v10 = self;
  [v9 setCompletedUnitCount:{objc_msgSend(v9, "completedUnitCount") + 1}];
  progressHandler = v10->super._progressHandler;

  if (progressHandler)
  {
    [v9 fractionCompleted];
    progressHandler[2](progressHandler, 0);
  }

  v12 = [v6 timesyncReference];
  v13 = [v12 fileDescriptor];

  v14 = _timesync_db_openat(v13, ".");
  if (!v14)
  {
    v42 = *__error();
    v43 = 12;
LABEL_32:
    v44 = _OSLogPOSIXError(v43, v42);
    v4[2](v4, 0, v44);

    [v6 close];
    goto LABEL_37;
  }

  v15 = v14;
  v16 = v9;
  v17 = v10;
  [v16 setCompletedUnitCount:{objc_msgSend(v16, "completedUnitCount") + 1}];
  v18 = v10->super._progressHandler;

  if (v18)
  {
    [v16 fractionCompleted];
    v18[2](v18, 0);
  }

  v91 = 0;
  v19 = [v6 diagnosticsDirectoryReference];

  if (!v19)
  {
LABEL_11:
    v24 = v16;
    v25 = v17;
    [v24 setCompletedUnitCount:{objc_msgSend(v24, "completedUnitCount") + 1}];
    v26 = v10->super._progressHandler;

    if (v26)
    {
      [v24 fractionCompleted];
      v26[2](v26, 0);
    }

    v27 = NSTemporaryDirectory();
    v28 = v27;
    if (v27)
    {
      v89 = 0;
      asprintf(&v89, "%slsfw-tmp-XXXXXXX.tracev3", [v27 UTF8String]);
      if (v89)
      {
        v87 = v19;
        v29 = mkstemps(v89, 8);
        if (v29 == -1)
        {
          free(v89);
          v19 = v87;
        }

        else
        {
          unlink(v89);
          v30 = fdopen(v29, "w+");
          free(v89);
          v31 = v30;
          v19 = v87;
          if (v31)
          {
            v80 = v28;
            v81 = v31;
            v32 = fileno(v31);
            v33 = [(OSLogEventStore *)v25 _relativeFilePaths];

            if (v33)
            {
              v34 = 0;
            }

            else
            {
              v34 = 3;
            }

            v85 = v32;
            if ((OSLogCaptureInflightBuffersToFile(v32, v34, 0) & 1) == 0)
            {
              fclose(v81);
              v85 = -1;
            }

            v35 = v24;
            v36 = v25;
            [v35 setCompletedUnitCount:{objc_msgSend(v35, "completedUnitCount") + 1}];
            v37 = v10->super._progressHandler;
            v78 = v36;

            if (v37)
            {
              [v35 fractionCompleted];
              v37[2](v37, 0);
            }

            v84 = [[_OSLogEventStoreMetadata alloc] initWithCollection:v6 localStorePlist:v87 liveDataDescriptor:v85];
            v38 = [[OSLogEventSource alloc] initWithCollection:v6 metadata:v84 timesync:v15];
            [v35 becomeCurrentWithPendingUnitCount:1];
            v39 = [v6 diagnosticsDirectoryReference];

            v28 = v80;
            v83 = v38;
            if (v39)
            {
              v40 = v78;
              v41 = [(OSLogEventStore *)v78 _relativeFilePaths];

              if (v41)
              {
                [(OSLogEventStore *)v78 addFilesToSource:v38 forCollection:v6 withProgress:v35];
              }

              else
              {
                v53 = [(OSLogEventStore *)v78 _progressHandler];
                v54 = _enumerateArchiveIntoSource(v38, v6, v53, v4);

                if ((v54 & 1) == 0)
                {
                  fclose(v81);
                  v19 = v87;
                  v67 = v83;
                  v58 = v84;
LABEL_56:

                  goto LABEL_36;
                }
              }
            }

            else
            {
              v40 = v78;
              v48 = [(OSLogEventStore *)v78 _progressHandler];

              if (v48)
              {
                v77 = [MEMORY[0x277CCAC48] currentProgress];
                v49 = [(OSLogEventStore *)v78 _progressHandler];
                [v77 fractionCompleted];
                v51 = v50;
                v52 = _OSLogPOSIXError(18, 2);
                (v49)[2](v49, v52, v51);
              }
            }

            [v35 resignCurrent];
            v55 = v35;
            v56 = v40;
            [v55 setCompletedUnitCount:{objc_msgSend(v55, "completedUnitCount")}];
            v57 = v10->super._progressHandler;

            if (v57)
            {
              [v55 fractionCompleted];
              v57[2](v57, 0);
            }

            v58 = v84;
            if (v85 == -1)
            {
LABEL_53:
              v74 = v55;
              v75 = v56;
              [v74 setCompletedUnitCount:{objc_msgSend(v74, "completedUnitCount") + 1}];
              v76 = v10->super._progressHandler;

              if (v76)
              {
                [v74 fractionCompleted];
                v76[2](v76, 0);
              }

              v67 = v83;
              (v4)[2](v4, v83, 0);
              v19 = v87;
              goto LABEL_56;
            }

            v79 = v56;
            v59 = _os_trace_mmap();
            fclose(v81);
            v60 = [_OSLogChunkMemory alloc];
            v61 = [(_OSLogChunkMemory *)v60 initWithBytes:v59 size:v91 deallocator:&__block_literal_global_185];
            v88 = 0;
            v62 = [[_OSLogIndexFile alloc] initWithChunkStore:v61 error:&v88];
            v63 = v88;
            v86 = v63;
            if (v62)
            {
              [(OSLogEventSource *)v83 _insertIndexFile:v62];
LABEL_52:

              v58 = v84;
              v56 = v79;
              goto LABEL_53;
            }

            v64 = v63;
            v82 = v61;
            v65 = [v63 domain];
            v66 = v65;
            if (v65 == *MEMORY[0x277CCA5B8])
            {
              v68 = [v64 code];

              v61 = v82;
              if (v68 == 34)
              {
                goto LABEL_52;
              }
            }

            else
            {

              v61 = v82;
            }

            v69 = [(OSLogEventStore *)v79 _progressHandler];

            if (v69)
            {
              v70 = [(OSLogEventStore *)v79 _progressHandler];
              [v55 fractionCompleted];
              v72 = v71;
              v73 = _OSLogInternalError(17, v86);
              (v70)[2](v70, v73, v72);

              v61 = v82;
            }

            goto LABEL_52;
          }
        }
      }
    }

    v46 = __error();
    v47 = _OSLogPOSIXError(7, *v46);
    v4[2](v4, 0, v47);

    [v6 close];
LABEL_36:

    goto LABEL_37;
  }

  v20 = [v6 diagnosticsDirectoryReference];
  [v20 fileDescriptor];

  v21 = _os_trace_mmap_at();
  if (!v21)
  {
    v42 = *__error();
    v43 = 5;
    goto LABEL_32;
  }

  v22 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v21 length:v91 deallocator:&__block_literal_global_180];
  v90 = 0;
  v23 = [MEMORY[0x277CCAC58] propertyListWithData:v22 options:0 format:0 error:&v90];
  if (v23)
  {
    v19 = v23;

    goto LABEL_11;
  }

  v45 = _OSLogInternalError(5, v90);
  v4[2](v4, 0, v45);

  [v6 close];
LABEL_37:
}

@end