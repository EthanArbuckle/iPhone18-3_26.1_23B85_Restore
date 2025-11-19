@interface NSFileManager(DOCItemImportSPI)
- (id)_doc_importItemAtURL:()DOCItemImportSPI toDestination:error:;
- (uint64_t)_doc_destinationLocationExists:()DOCItemImportSPI;
@end

@implementation NSFileManager(DOCItemImportSPI)

- (id)_doc_importItemAtURL:()DOCItemImportSPI toDestination:error:
{
  v9 = a3;
  if (!v9)
  {
    [NSFileManager(DOCItemImportSPI) _doc_importItemAtURL:a2 toDestination:a1 error:?];
  }

  if ((a4 - 1) > 1)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"DOCDownloadImportManager.m" lineNumber:209 description:{@"Unexpected _DOCFileDestination %ld", a4}];
    v11 = 0;
  }

  else
  {
    v10 = objc_opt_new();
    v11 = [v10 _moveItemAtURL:v9 toNamedLocation:a4 error:a5];
  }

  return v11;
}

- (uint64_t)_doc_destinationLocationExists:()DOCItemImportSPI
{
  if ((a3 - 1) > 1)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    [v4 handleFailureInMethod:a2 object:a1 file:@"DOCDownloadImportManager.m" lineNumber:224 description:{@"Unexpected _DOCFileDestination %ld", a3}];
    v5 = 0;
  }

  else
  {
    v4 = objc_opt_new();
    v5 = [v4 _doc_destinationLocationExists:a3];
  }

  return v5;
}

- (void)_doc_importItemAtURL:()DOCItemImportSPI toDestination:error:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DOCDownloadImportManager.m" lineNumber:198 description:{@"Invalid parameter not satisfying: %@", @"srcURL"}];
}

@end