@interface MBBackupOperationJournalEnumerator
- (MBBackupOperationJournalEnumerator)initWithFile:(id)file domainManager:(id)manager;
- (id)nextObject;
@end

@implementation MBBackupOperationJournalEnumerator

- (MBBackupOperationJournalEnumerator)initWithFile:(id)file domainManager:(id)manager
{
  fileCopy = file;
  managerCopy = manager;
  v20 = 0;
  v8 = [NSData dataWithContentsOfFile:fileCopy options:1 error:&v20];
  v9 = v20;
  if (!v8)
  {
    v15 = [[MBException alloc] initWithCode:100 format:{@"Error memory mapping backup operation journal: %@", v9}];
    goto LABEL_11;
  }

  v10 = [MBDecoder decoderWithData:v8];
  if ([v10 decodeInt32] != 1835166318)
  {
    v16 = [MBException alloc];
    v17 = @"Incorrect backup operation journal magic number";
LABEL_10:
    v15 = [v16 initWithCode:11 format:{v17, v18}];
LABEL_11:
    objc_exception_throw(v15);
  }

  [v10 decodeVersion];
  if (v11 != 2.0)
  {
    v16 = [MBException alloc];
    v17 = @"Incorrect backup operation journal version";
    goto LABEL_10;
  }

  v19.receiver = self;
  v19.super_class = MBBackupOperationJournalEnumerator;
  v12 = [(MBBackupOperationJournalEnumerator *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_decoder, v10);
    objc_storeStrong(&v13->_domainManager, manager);
  }

  return v13;
}

- (id)nextObject
{
  v3 = objc_autoreleasePoolPush();
  offset = [(MBDecoder *)self->_decoder offset];
  data = [(MBDecoder *)self->_decoder data];
  v6 = [data length];

  if (offset >= v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [[MBBackupOperation alloc] initWithDecoder:self->_decoder domainManager:self->_domainManager];
  }

  objc_autoreleasePoolPop(v3);

  return v7;
}

@end