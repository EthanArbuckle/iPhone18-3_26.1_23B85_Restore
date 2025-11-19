@interface DBGDataSourceConnectionDocument
+ (id)connectionForDocumentDirectoryAtURL:(id)a3;
- (DBGDataSourceConnectionDelegate)delegate;
- (DBGDataSourceConnectionDocument)initWithDirectoryURL:(id)a3;
- (id)dataForFetchAtIndex:(int64_t)a3;
- (id)dateOrdererdContentsOfDirectory:(id)a3;
- (void)simulateInitialDataFetch;
- (void)simulateSecondaryDataFetch;
- (void)simulateTertiaryDataFetch;
- (void)simulateTotalDataFetchForRequest:(id)a3;
@end

@implementation DBGDataSourceConnectionDocument

+ (id)connectionForDocumentDirectoryAtURL:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDirectoryURL:v4];

  return v5;
}

- (DBGDataSourceConnectionDocument)initWithDirectoryURL:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = DBGDataSourceConnectionDocument;
  v5 = [(DBGDataSourceConnectionDocument *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(DBGDataSourceConnectionDocument *)v5 setDirectoryURL:v4];
    v7 = [(DBGDataSourceConnectionDocument *)v6 directoryURL];
    v8 = [(DBGDataSourceConnectionDocument *)v6 dateOrdererdContentsOfDirectory:v7];
    [(DBGDataSourceConnectionDocument *)v6 setDateOrderedDirectoryContents:v8];
  }

  return v6;
}

- (id)dateOrdererdContentsOfDirectory:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  v5 = [v3 path];

  v6 = [v4 contentsOfDirectoryAtPath:v5 error:0];

  v7 = [v6 sortedArrayUsingComparator:&__block_literal_global];

  return v7;
}

int64_t __67__DBGDataSourceConnectionDocument_dateOrdererdContentsOfDirectory___block_invoke(id a1, NSString *a2, NSString *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(NSString *)v4 componentsSeparatedByString:@"-"];
  [(NSString *)v5 componentsSeparatedByString:@"-"];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __67__DBGDataSourceConnectionDocument_dateOrdererdContentsOfDirectory___block_invoke_2;
  v7 = v10[3] = &unk_243A0;
  v11 = v7;
  v12 = &v13;
  [v6 enumerateObjectsUsingBlock:v10];
  v8 = v14[3];

  _Block_object_dispose(&v13, 8);
  return v8;
}

void __67__DBGDataSourceConnectionDocument_dateOrdererdContentsOfDirectory___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  [a2 doubleValue];
  v8 = v7;
  v9 = [*(a1 + 32) objectAtIndex:a3];
  [v9 doubleValue];
  v11 = v10;

  v12 = [NSNumber numberWithDouble:v8];
  v13 = [NSNumber numberWithDouble:v11];
  *(*(*(a1 + 40) + 8) + 24) = [v12 compare:v13];

  if (*(*(*(a1 + 40) + 8) + 24))
  {
    *a4 = 1;
  }
}

- (id)dataForFetchAtIndex:(int64_t)a3
{
  v5 = [(DBGDataSourceConnectionDocument *)self dateOrderedDirectoryContents];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    v12 = 0;
  }

  else
  {
    v7 = [(DBGDataSourceConnectionDocument *)self dateOrderedDirectoryContents];
    v8 = [v7 objectAtIndexedSubscript:a3];

    v9 = [(DBGDataSourceConnectionDocument *)self directoryURL];
    v10 = [v9 URLByAppendingPathComponent:v8];
    v11 = [v10 path];

    v12 = [NSData dataWithContentsOfFile:v11];
  }

  return v12;
}

- (void)simulateInitialDataFetch
{
  v4 = [(DBGDataSourceConnectionDocument *)self dataForFetchAtIndex:0];
  v3 = [(DBGDataSourceConnectionDocument *)self delegate];
  [v3 didReceiveData:v4 forRequest:0];
}

- (void)simulateSecondaryDataFetch
{
  v4 = [(DBGDataSourceConnectionDocument *)self dataForFetchAtIndex:1];
  v3 = [(DBGDataSourceConnectionDocument *)self delegate];
  [v3 didReceiveData:v4 forRequest:0];
}

- (void)simulateTertiaryDataFetch
{
  v4 = [(DBGDataSourceConnectionDocument *)self dataForFetchAtIndex:2];
  v3 = [(DBGDataSourceConnectionDocument *)self delegate];
  [v3 didReceiveData:v4 forRequest:0];
}

- (void)simulateTotalDataFetchForRequest:(id)a3
{
  v11 = a3;
  v4 = [(DBGDataSourceConnectionDocument *)self dateOrderedDirectoryContents];
  v5 = [v4 count];

  if (v5)
  {
    v6 = 0;
    do
    {
      v7 = [(DBGDataSourceConnectionDocument *)self dataForFetchAtIndex:v6];
      v8 = [(DBGDataSourceConnectionDocument *)self delegate];
      [v8 didReceiveData:v7 forRequest:v11];

      ++v6;
      v9 = [(DBGDataSourceConnectionDocument *)self dateOrderedDirectoryContents];
      v10 = [v9 count];
    }

    while (v6 < v10);
  }
}

- (DBGDataSourceConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end