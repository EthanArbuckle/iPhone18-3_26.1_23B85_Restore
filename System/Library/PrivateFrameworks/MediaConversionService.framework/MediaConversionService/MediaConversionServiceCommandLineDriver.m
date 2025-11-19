@interface MediaConversionServiceCommandLineDriver
+ (BOOL)outputJSONDataForConversionOutputInformation:(id)a3;
+ (id)replacementObjectForObject:(id)a3 valueConversionHandler:(id)a4;
+ (id)usage;
+ (id)usagesummary;
+ (void)_output:(uint64_t)a3 arguments:(FILE *)a4 file:;
+ (void)outputConversionError:(id)a3 status:(int64_t)a4;
- (BOOL)hasConversionOfType:(id)a3;
- (BOOL)processOption:(int)a3 arg:(id)a4;
- (MediaConversionServiceCommandLineDriver)init;
- (int)run;
- (int)runImageConversionWithConversionOptionSet:(id)a3;
- (int)runVideoConversionWithConversionOptionSet:(id)a3;
- (int)runVideoStillExtractionConversionWithConversionOptionSet:(id)a3;
- (int)validateAndProcessArgumentValues;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)sendMessageToLaunchService;
- (void)waitForSigInt;
@end

@implementation MediaConversionServiceCommandLineDriver

- (void)waitForSigInt
{
  v4 = signal(2, 1);
  if (v4 == -1)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    v10 = __error();
    [v9 handleFailureInMethod:a2 object:self file:@"MediaConversionServiceCommandLineDriver.m" lineNumber:986 description:{@"Unable to wait for SIGINT: %s\n", strerror(*v10)}];
  }

  v5 = dispatch_semaphore_create(0);
  v6 = dispatch_get_global_queue(0, 0);
  v7 = dispatch_source_create(MEMORY[0x277D85D30], 2uLL, 0, v6);

  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __56__MediaConversionServiceCommandLineDriver_waitForSigInt__block_invoke;
  handler[3] = &unk_27989BA48;
  v12 = v5;
  v8 = v5;
  dispatch_source_set_event_handler(v7, handler);
  dispatch_activate(v7);
  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_source_cancel(v7);
  signal(2, v4);
}

- (int)validateAndProcessArgumentValues
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->_conversionOptionSets;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        [v8 setReplaceExistingOutput:{self->_replaceExistingOutput, v13}];
        [v8 setVerbose:self->_verbose];
        v9 = [v8 validateAndProcess];
        if (v9)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v13 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_showProgress && self->_conversionProgress == v9)
  {
    v11 = objc_opt_class();
    [(NSProgress *)self->_conversionProgress fractionCompleted];
    [v11 outputError:{@"Progress: %f\n", v12}];
  }
}

- (int)runVideoStillExtractionConversionWithConversionOptionSet:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = MEMORY[0x277CBEBC0];
  v7 = [v4 sourcePath];
  v8 = [v6 fileURLWithPath:v7];

  v9 = MEMORY[0x277CBEBC0];
  v10 = [v4 destinationPath];
  v11 = [v9 fileURLWithPath:v10];

  v12 = [MEMORY[0x277CBEA90] data];
  v29 = 0;
  v13 = [v12 writeToURL:v11 options:1 error:&v29];
  v14 = v29;

  if (v13)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 70;
    v15 = dispatch_semaphore_create(0);
    v16 = [v4 conversionOptions];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __100__MediaConversionServiceCommandLineDriver_runVideoStillExtractionConversionWithConversionOptionSet___block_invoke;
    v22[3] = &unk_27989BA20;
    v22[4] = self;
    v24 = &v25;
    v17 = v15;
    v23 = v17;
    [v5 extractStillImageFromVideoAtSourceURL:v8 toDestinationURL:v11 options:v16 completionHandler:v22];

    dispatch_semaphore_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
    v18 = *(v26 + 6);

    _Block_object_dispose(&v25, 8);
  }

  else
  {
    v19 = objc_opt_class();
    v20 = [v4 destinationPath];
    [v19 outputError:{@"Unable to create output file '%@': %@\n", v20, v14}];

    v18 = 73;
  }

  return v18;
}

void __100__MediaConversionServiceCommandLineDriver_runVideoStillExtractionConversionWithConversionOptionSet___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v11 = a3;
  v7 = a4;
  if (a2 == 1)
  {
    if (*(*(a1 + 32) + 8) == 1)
    {
      [objc_opt_class() output:{@"Raw output information: %@\n", v11}];
      v8 = *(a1 + 32);
    }

    if ([objc_opt_class() outputJSONDataForConversionOutputInformation:v11])
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
    }
  }

  else
  {
    [objc_opt_class() outputConversionError:v7 status:a2];
  }

  [*(*(a1 + 32) + 24) removeObserver:*(a1 + 32) forKeyPath:@"fractionCompleted"];
  v9 = *(a1 + 32);
  v10 = *(v9 + 24);
  *(v9 + 24) = 0;

  dispatch_semaphore_signal(*(a1 + 40));
}

- (int)runVideoConversionWithConversionOptionSet:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEBC0];
  v6 = [v4 sourcePath];
  v7 = [v5 fileURLWithPath:v6];

  v8 = MEMORY[0x277CBEBC0];
  v9 = [v4 destinationPath];
  v10 = [v8 fileURLWithPath:v9];

  v11 = [MEMORY[0x277CBEA90] data];
  v35 = 0;
  v12 = [v11 writeToURL:v10 options:1 error:&v35];
  v13 = v35;

  if (v12)
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 70;
    v14 = dispatch_semaphore_create(0);
    videoConversionServiceClient = self->_videoConversionServiceClient;
    v16 = [v4 conversionOptions];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __85__MediaConversionServiceCommandLineDriver_runVideoConversionWithConversionOptionSet___block_invoke;
    v28[3] = &unk_27989BA20;
    v28[4] = self;
    v30 = &v31;
    v17 = v14;
    v29 = v17;
    v18 = [(PAVideoConversionServiceClient *)videoConversionServiceClient convertVideoAtSourceURL:v7 toDestinationURL:v10 options:v16 completionHandler:v28];
    conversionProgress = self->_conversionProgress;
    self->_conversionProgress = v18;

    v20 = signal(2, 1);
    if (v20 == -1)
    {
      v22 = 0;
    }

    else
    {
      v21 = dispatch_get_global_queue(0, 0);
      v22 = dispatch_source_create(MEMORY[0x277D85D30], 2uLL, 0, v21);

      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __85__MediaConversionServiceCommandLineDriver_runVideoConversionWithConversionOptionSet___block_invoke_2;
      handler[3] = &unk_27989BA48;
      handler[4] = self;
      dispatch_source_set_event_handler(v22, handler);
      dispatch_activate(v22);
    }

    [(NSProgress *)self->_conversionProgress addObserver:self forKeyPath:@"fractionCompleted" options:0 context:0];
    dispatch_semaphore_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
    if (v20 != -1)
    {
      dispatch_source_cancel(v22);
      signal(2, v20);
    }

    v25 = *(v32 + 6);

    _Block_object_dispose(&v31, 8);
  }

  else
  {
    v23 = objc_opt_class();
    v24 = [v4 destinationPath];
    [v23 outputError:{@"Unable to create output file '%@': %@\n", v24, v13}];

    v25 = 73;
  }

  return v25;
}

void __85__MediaConversionServiceCommandLineDriver_runVideoConversionWithConversionOptionSet___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v11 = a3;
  v7 = a4;
  if (a2 == 1)
  {
    if (*(*(a1 + 32) + 8) == 1)
    {
      [objc_opt_class() output:{@"Raw output information: %@\n", v11}];
      v8 = *(a1 + 32);
    }

    if ([objc_opt_class() outputJSONDataForConversionOutputInformation:v11])
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
    }
  }

  else
  {
    [objc_opt_class() outputConversionError:v7 status:a2];
  }

  [*(*(a1 + 32) + 24) removeObserver:*(a1 + 32) forKeyPath:@"fractionCompleted"];
  v9 = *(a1 + 32);
  v10 = *(v9 + 24);
  *(v9 + 24) = 0;

  dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t __85__MediaConversionServiceCommandLineDriver_runVideoConversionWithConversionOptionSet___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  [objc_opt_class() outputError:{@"Received SIGINT, cancelling conversion\n"}];
  v3 = *(*(a1 + 32) + 24);

  return [v3 cancel];
}

- (int)runImageConversionWithConversionOptionSet:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEBC0];
  v6 = [v4 sourcePath];
  v7 = [v5 fileURLWithPath:v6];

  v8 = [PAMediaConversionServiceResourceURLCollection collectionWithMainResourceURL:v7];
  v9 = [v4 sourcePathVideoComplement];

  if (v9)
  {
    v10 = MEMORY[0x277CBEBC0];
    v11 = [v4 sourcePathVideoComplement];
    v12 = [v10 fileURLWithPath:v11];

    [v8 setResourceURL:v12 forRole:@"PAMediaConversionResourceRoleVideoComplement"];
  }

  v13 = MEMORY[0x277CBEBC0];
  v14 = [v4 destinationPath];
  v15 = [v13 fileURLWithPath:v14];

  v16 = [PAMediaConversionServiceResourceURLCollection collectionWithMainResourceURL:v15];
  v17 = [v4 destinationPathVideoComplement];

  if (v17)
  {
    v18 = MEMORY[0x277CBEBC0];
    v19 = [v4 destinationPathVideoComplement];
    v20 = [v18 fileURLWithPath:v19];

    [v16 setResourceURL:v20 forRole:@"PAMediaConversionResourceRoleVideoComplement"];
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v21 = dispatch_semaphore_create(0);
  imageConversionServiceClient = self->_imageConversionServiceClient;
  v23 = [v4 conversionOptions];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __85__MediaConversionServiceCommandLineDriver_runImageConversionWithConversionOptionSet___block_invoke;
  v26[3] = &unk_27989BA20;
  v26[4] = self;
  v28 = &v29;
  v24 = v21;
  v27 = v24;
  [(PAImageConversionServiceClient *)imageConversionServiceClient convertImageAtSourceURLCollection:v8 toDestinationURLCollection:v16 options:v23 completionHandler:v26];

  dispatch_semaphore_wait(v24, 0xFFFFFFFFFFFFFFFFLL);
  LODWORD(v23) = *(v30 + 6);

  _Block_object_dispose(&v29, 8);
  return v23;
}

void __85__MediaConversionServiceCommandLineDriver_runImageConversionWithConversionOptionSet___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v14 = a3;
  v7 = a4;
  if (a2 != 1)
  {
    v11 = *(a1 + 32);
    [objc_opt_class() outputConversionError:v7 status:a2];
    v12 = 70;
LABEL_10:
    *(*(*(a1 + 48) + 8) + 24) = v12;
    goto LABEL_11;
  }

  v8 = [v14 objectForKeyedSubscript:@"PAMediaConversionServiceResultDataKey"];

  if (v8)
  {
    v9 = [v14 mutableCopy];
    [v9 setObject:@"(NSData removed)" forKeyedSubscript:@"PAMediaConversionServiceResultDataKey"];

    v10 = v9;
  }

  else
  {
    v10 = v14;
  }

  v14 = v10;
  if (*(*(a1 + 32) + 8) == 1)
  {
    [objc_opt_class() output:{@"Raw output information: %@\n", v10}];
    v13 = *(a1 + 32);
  }

  if ([objc_opt_class() outputJSONDataForConversionOutputInformation:v14])
  {
    v12 = 0;
    goto LABEL_10;
  }

LABEL_11:
  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)sendMessageToLaunchService
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  if ([(MediaConversionServiceCommandLineDriver *)self hasConversionOfType:@"image"])
  {
    v3 = dispatch_semaphore_create(0);
    imageConversionServiceClient = self->_imageConversionServiceClient;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __69__MediaConversionServiceCommandLineDriver_sendMessageToLaunchService__block_invoke;
    v12[3] = &unk_27989B9E8;
    v14 = &v15;
    v12[4] = self;
    v5 = v3;
    v13 = v5;
    [(PAImageConversionServiceClient *)imageConversionServiceClient requestStatusWithCompletionHandler:v12];
    dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  }

  if ([(MediaConversionServiceCommandLineDriver *)self hasConversionOfType:@"video"]|| [(MediaConversionServiceCommandLineDriver *)self hasConversionOfType:@"still"])
  {
    v6 = dispatch_semaphore_create(0);
    videoConversionServiceClient = self->_videoConversionServiceClient;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __69__MediaConversionServiceCommandLineDriver_sendMessageToLaunchService__block_invoke_2;
    v9[3] = &unk_27989B9E8;
    v11 = &v15;
    v9[4] = self;
    v8 = v6;
    v10 = v8;
    [(PAVideoConversionServiceClient *)videoConversionServiceClient requestStatusWithCompletionHandler:v9];
    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (*(v16 + 6) && self->_pauseAfterLaunchingService)
  {
    printf("Service process identifier %d - press return to continue\n", *(v16 + 6));
    getchar();
  }

  _Block_object_dispose(&v15, 8);
}

void __69__MediaConversionServiceCommandLineDriver_sendMessageToLaunchService__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  if (a2)
  {
    v5 = [a2 objectForKeyedSubscript:@"PAMediaConversionServiceProcessIdentifierKey"];
    *(*(*(a1 + 48) + 8) + 24) = [v5 intValue];
  }

  else
  {
    v6 = *(a1 + 32);
    [objc_opt_class() outputError:{@"Unable to get image conversion service status: %@\n", v7}];
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void __69__MediaConversionServiceCommandLineDriver_sendMessageToLaunchService__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  if (a2)
  {
    v5 = [a2 objectForKeyedSubscript:@"PAMediaConversionServiceProcessIdentifierKey"];
    *(*(*(a1 + 48) + 8) + 24) = [v5 intValue];
  }

  else
  {
    v6 = *(a1 + 32);
    [objc_opt_class() outputError:{@"Unable to get video conversion service status: %@\n", v7}];
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (int)run
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(MediaConversionServiceCommandLineDriver *)self validateAndProcessArgumentValues];
  if (!v3)
  {
    if (self->_pauseAtStart)
    {
      v4 = getpid();
      printf("Client process identifier %d - press return to continue\n", v4);
      getchar();
    }

    if (self->_launchServiceAtStart)
    {
      [(MediaConversionServiceCommandLineDriver *)self sendMessageToLaunchService];
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    obj = self->_conversionOptionSets;
    v14 = [(NSMutableArray *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v14)
    {
      v15 = *v17;
      v3 = 70;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v17 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v16 + 1) + 8 * i);
          if ([v6 repeatCount] >= 1)
          {
            for (j = 0; j < [v6 repeatCount]; ++j)
            {
              v8 = objc_autoreleasePoolPush();
              v9 = [v6 conversionType];
              if ([v9 isEqualToString:@"image"])
              {
                v10 = [(MediaConversionServiceCommandLineDriver *)self runImageConversionWithConversionOptionSet:v6];
              }

              else if ([v9 isEqualToString:@"video"])
              {
                v10 = [(MediaConversionServiceCommandLineDriver *)self runVideoConversionWithConversionOptionSet:v6];
              }

              else
              {
                if (![v9 isEqualToString:@"still"])
                {
                  [objc_opt_class() outputError:{@"Conversion type %@ is unsupported\n", v9}];

                  objc_autoreleasePoolPop(v8);
                  v3 = 70;
                  goto LABEL_28;
                }

                v10 = [(MediaConversionServiceCommandLineDriver *)self runVideoStillExtractionConversionWithConversionOptionSet:v6];
              }

              v3 = v10;

              objc_autoreleasePoolPop(v8);
            }
          }
        }

        v14 = [(NSMutableArray *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v14);
    }

    else
    {
      v3 = 70;
    }

    if (self->_waitForSignalAfterCompletion)
    {
      [(MediaConversionServiceCommandLineDriver *)self waitForSigInt];
    }

    [(PAVideoConversionServiceClient *)self->_videoConversionServiceClient invalidateAfterPendingRequestCompletion];
  }

LABEL_28:
  v11 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)hasConversionOfType:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_conversionOptionSets;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) conversionType];
        v10 = [v9 isEqualToString:v4];

        if (v10)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)processOption:(int)a3 arg:(id)a4
{
  v6 = a4;
  v7 = [(NSMutableArray *)self->_conversionOptionSets lastObject];
  v8 = v7;
  v9 = 0;
  if (a3 <= 999)
  {
    if (a3 > 113)
    {
      if (a3 <= 115)
      {
        if (a3 == 114)
        {
          [v7 setPresetName:v6];
        }

        else
        {
          [v7 setSourcePath:v6];
        }

        goto LABEL_40;
      }

      if (a3 == 116)
      {
        [v7 setConversionType:v6];
        goto LABEL_40;
      }

      if (a3 == 118)
      {
        v9 = 1;
        self->_verbose = 1;
      }

      goto LABEL_41;
    }

    if (a3 > 110)
    {
      if (a3 == 111)
      {
        if (v6)
        {
          v12 = [v7 conversionOptionInputKeyValuePairs];
          [v12 addObject:v6];
        }

        else
        {
          [objc_opt_class() outputError:@"-o/--option requires a value\n"];
        }

        goto LABEL_40;
      }

      if (a3 == 112)
      {
        v9 = 1;
        self->_showProgress = 1;
      }

      goto LABEL_41;
    }

    if (a3 != 99)
    {
      if (a3 == 100)
      {
        [v7 setDestinationPath:v6];
LABEL_40:
        v9 = 1;
        goto LABEL_41;
      }

      goto LABEL_41;
    }

    [v7 setRepeatCount:{objc_msgSend(v6, "integerValue")}];
    if ([v8 repeatCount] <= 1)
    {
      [objc_opt_class() outputError:{@"Repeat count '%@' is invalid, must be 2 or higher\n", v6}];
      v9 = 0;
      goto LABEL_41;
    }

LABEL_30:
    v9 = 1;
    self->_replaceExistingOutput = 1;
    goto LABEL_41;
  }

  if (a3 <= 1003)
  {
    if (a3 > 1001)
    {
      if (a3 == 1002)
      {
        [v7 setSourcePathVideoComplement:v6];
      }

      else
      {
        [v7 setDestinationPathVideoComplement:v6];
      }

      goto LABEL_40;
    }

    if (a3 == 1000)
    {
      v9 = 1;
      self->_waitForSignalAfterCompletion = 1;
      goto LABEL_41;
    }

    goto LABEL_30;
  }

  if (a3 > 1005)
  {
    if (a3 == 1006)
    {
      *&self->_launchServiceAtStart = 257;
      goto LABEL_40;
    }

    if (a3 == 1007)
    {
      conversionOptionSets = self->_conversionOptionSets;
      v11 = objc_opt_new();
      [(NSMutableArray *)conversionOptionSets addObject:v11];

      goto LABEL_40;
    }
  }

  else
  {
    v9 = 1;
    if (a3 == 1004)
    {
      self->_pauseAtStart = 1;
    }

    else
    {
      self->_launchServiceAtStart = 1;
    }
  }

LABEL_41:

  return v9;
}

- (MediaConversionServiceCommandLineDriver)init
{
  v12.receiver = self;
  v12.super_class = MediaConversionServiceCommandLineDriver;
  v2 = [(MediaConversionServiceCommandLineDriver *)&v12 init];
  if (v2)
  {
    v3 = MEMORY[0x277CBEB18];
    v4 = objc_opt_new();
    v5 = [v3 arrayWithObject:v4];
    conversionOptionSets = v2->_conversionOptionSets;
    v2->_conversionOptionSets = v5;

    v7 = objc_opt_new();
    imageConversionServiceClient = v2->_imageConversionServiceClient;
    v2->_imageConversionServiceClient = v7;

    v9 = objc_opt_new();
    videoConversionServiceClient = v2->_videoConversionServiceClient;
    v2->_videoConversionServiceClient = v9;
  }

  return v2;
}

+ (void)_output:(uint64_t)a3 arguments:(FILE *)a4 file:
{
  v6 = a2;
  objc_opt_self();
  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v6 arguments:a3];

  v7 = v8;
  fputs([v8 UTF8String], a4);
}

+ (void)outputConversionError:(id)a3 status:(int64_t)a4
{
  v15 = a3;
  v6 = [v15 domain];
  v7 = [v6 isEqualToString:@"PAMediaConversionServiceErrorDomain"];

  if (v7)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [v15 code];
    if (v9 > 0xC)
    {
      v10 = 0;
    }

    else
    {
      v10 = off_27989B318[v9];
    }

    v12 = v10;
    v11 = [v8 stringWithFormat:@" (%@)", v12];
  }

  else
  {
    v11 = &stru_28699D8A8;
  }

  if (a4 > 6)
  {
    v13 = 0;
  }

  else
  {
    v13 = off_27989B380[a4];
  }

  v14 = v13;
  [a1 outputError:{@"Conversion unsuccessful (status %ld - %@): %@%@\n", a4, v14, v15, v11}];
}

+ (id)replacementObjectForObject:(id)a3 valueConversionHandler:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v25 = [MEMORY[0x277CCA890] currentHandler];
    [v25 handleFailureInMethod:a2 object:a1 file:@"MediaConversionServiceCommandLineDriver.m" lineNumber:937 description:{@"Invalid parameter not satisfying: %@", @"object"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v26 = [MEMORY[0x277CCA890] currentHandler];
  [v26 handleFailureInMethod:a2 object:a1 file:@"MediaConversionServiceCommandLineDriver.m" lineNumber:938 description:{@"Invalid parameter not satisfying: %@", @"valueConversionHandler"}];

LABEL_3:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v7;
    v11 = [MEMORY[0x277CBEB18] array];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v32;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v32 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [a1 replacementObjectForObject:*(*(&v31 + 1) + 8 * i) valueConversionHandler:v9];
          [v11 addObject:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v14);
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = MEMORY[0x277CBEB38];
      v19 = v7;
      v20 = [v18 dictionary];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __93__MediaConversionServiceCommandLineDriver_replacementObjectForObject_valueConversionHandler___block_invoke;
      v27[3] = &unk_27989BA90;
      v21 = v20;
      v28 = v21;
      v30 = a1;
      v29 = v9;
      [v19 enumerateKeysAndObjectsUsingBlock:v27];

      v22 = v29;
      v11 = v21;
    }

    else
    {
      v11 = (v9)[2](v9, v7);
    }
  }

  v23 = *MEMORY[0x277D85DE8];

  return v11;
}

void __93__MediaConversionServiceCommandLineDriver_replacementObjectForObject_valueConversionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = a2;
  v8 = [v5 replacementObjectForObject:a3 valueConversionHandler:v6];
  [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
}

+ (BOOL)outputJSONDataForConversionOutputInformation:(id)a3
{
  v4 = [a1 replacementObjectForObject:a3 valueConversionHandler:&__block_literal_global_430];
  v12 = 0;
  v5 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v4 options:0 error:&v12];
  v6 = v12;
  v7 = v6;
  if (v5)
  {
    v8 = [MEMORY[0x277CCA9F8] fileHandleWithStandardOutput];
    [v8 writeData:v5];
    v9 = [@"\n" dataUsingEncoding:4];
    [v8 writeData:v9];

    v10 = 1;
  }

  else
  {
    [a1 outputError:{@"Conversion successful but unable to convert output information to JSON: %@\n", v6}];
    v10 = 0;
  }

  return v10;
}

id __88__MediaConversionServiceCommandLineDriver_outputJSONDataForConversionOutputInformation___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = MEMORY[0x277CCAA68];
    v4 = [MEMORY[0x277CBEBB0] systemTimeZone];
    v5 = [v3 stringFromDate:v2 timeZone:v4 formatOptions:4083];

    v2 = v5;
  }

  return v2;
}

+ (id)usagesummary
{
  v2 = +[ConversionOptionSet knownConversionTypes];
  v3 = [v2 componentsJoinedByString:@"|"];

  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"-t|--type [%@] -s|--source <input media path> -d|--destination <output media path> [--source-video-complement <input media path>] [--destination-video-complement <output media path>] [--replace] [[-o|--option <key>=<value>], ...] [-r|--preset <preset>] [-c|--count <count>] [-v|--verbose] [--wait] [-p|--progress] [--pause] [--launch] [--launch-and-pause] [--next]", v3];

  return v4;
}

+ (id)usage
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [objc_opt_class() usagesummary];
  v4 = [v2 stringWithFormat:@"%@\n%@", v3, @"\n\timage:       Convert an image\n\tvideo:       Convert a video\n\tstill:       Extract a still image from a video\n\n\t--replace:             Overwrite existing output file\n\t--wait:                On completion, suspend the process until a SIGINT signal is received instead of exiting right away. This lets you inspect the state of the client and service processes after completion, especially for memory investigations.\n\t--option:              Pass a conversion option key/value pair. Key and value are separated by a = character. The keys are as defined in PAMediaConversionServiceCommonDefinitions.h, with the 'PAMediaConversion' prefix and the 'Key' suffix omitted. You can pass this option multiple times.\n\t--preset:              Apply a pre-defined set of conversion options for common cases. Pass '?' to get a list of preset names.\n\t--count:               Repeat the conversion n times, for memory or other performance investigations. Implies --replace.\n\t--progress:            Print progress for video conversion to stderr\n\t--pause:               Print the client PID and wait for keyboard input before sending any requests to the service. On macOS this lets you manipulate the launch environment of the service process with 'launchctl debug pid/<client PID>/com.apple.photos.ImageConversionService' (or VideoConversionService).\n\t--launch:              Send an initial XPC message to the service to ensure it is launched when the main conversion request is sent. This lets you measure request performance without process launch time.\n\t--launch-and-pause:    Like --launch, but additionally waits for keyboard input before sending any requests to the service. This lets you attach to the service process with perf tools or the debugger before the main conversion request is processed.\n\t--next:                Capture all options given so far as a conversion request and start a new request. All following options apply to the next request. This lets you execute multiple independent requests back-to-back."];

  return v4;
}

@end