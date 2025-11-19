@interface HKCDADocumentSample(HKDataMetadataSampleExtensions)
- (void)fetchDetailedReportWithHealthStore:()HKDataMetadataSampleExtensions reportDataBlock:;
@end

@implementation HKCDADocumentSample(HKDataMetadataSampleExtensions)

- (void)fetchDetailedReportWithHealthStore:()HKDataMetadataSampleExtensions reportDataBlock:
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 document];
  v9 = v8;
  if (v8 && ([v8 documentData], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v10;
    v7[2](v7, v10, 0);
  }

  else
  {
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x3032000000;
    v25[3] = __Block_byref_object_copy__5;
    v25[4] = __Block_byref_object_dispose__5;
    v26 = 0;
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __106__HKCDADocumentSample_HKDataMetadataSampleExtensions__fetchDetailedReportWithHealthStore_reportDataBlock___block_invoke;
    v22 = &unk_1E81B6DA8;
    v24 = v25;
    v23 = v7;
    v12 = _Block_copy(&v19);
    v13 = MEMORY[0x1E696C378];
    v14 = [a1 UUID];
    v15 = [v13 predicateForObjectWithUUID:v14];

    v16 = objc_alloc(MEMORY[0x1E696C110]);
    v17 = [MEMORY[0x1E696C2E0] documentTypeForIdentifier:*MEMORY[0x1E696B7C0]];
    v18 = [v16 initWithDocumentType:v17 predicate:v15 limit:0 sortDescriptors:0 includeDocumentData:1 resultsHandler:v12];

    [v6 executeQuery:v18];
    _Block_object_dispose(v25, 8);
  }
}

@end