@interface JPReader
- (BOOL)processStream:(id)a3 signatureVerifier:(id)a4 options:(unint64_t)a5 error:(id *)a6;
- (JPReader)init;
- (id)convertError;
- (void)dealloc;
@end

@implementation JPReader

- (JPReader)init
{
  v5.receiver = self;
  v5.super_class = JPReader;
  v2 = [(JPReader *)&v5 init];
  if (v2)
  {
    v3 = JetPackReaderCreate();
    *(v2 + 4) = v3;
    JetPackReaderSetProperty(v3, 0, v2);
    JetPackReaderSetFileEntryFoundCallback(*(v2 + 4), fileEntryFound);
    JetPackReaderSetDataSegmentFoundCallback(*(v2 + 4), dataSegmentFound);
    JetPackReaderSetKeyForIdentifierCallback(*(v2 + 4), keyForIdentifier);
  }

  return v2;
}

- (void)dealloc
{
  JetPackReaderDestroy([(JPReader *)self backing]);
  v3.receiver = self;
  v3.super_class = JPReader;
  [(JPReader *)&v3 dealloc];
}

- (BOOL)processStream:(id)a3 signatureVerifier:(id)a4 options:(unint64_t)a5 error:(id *)a6
{
  v6 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(JPReader *)self backing];
  v12 = [v10 backing];

  v13 = [v9 backing];
  JetPackReaderProcess(v11, v12, v13, v6);
}

- (id)convertError
{
  v14[1] = *MEMORY[0x277D85DE8];
  ErrorMessage = JetPackReaderGetErrorMessage([(JPReader *)self backing]);
  if (ErrorMessage && (v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:ErrorMessage]) != 0)
  {
    v4 = v3;
    v5 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA450];
    v14[0] = v3;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v7 = [v5 errorWithDomain:@"JPErrorDomain" code:0 userInfo:v6];
  }

  else
  {
    v8 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CCA450];
    v12 = @"An unknown error occurred";
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v7 = [v8 errorWithDomain:@"JPErrorDomain" code:0 userInfo:v4];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

@end