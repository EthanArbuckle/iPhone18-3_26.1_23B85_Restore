@interface DESRecordStore
- (DESRecordStore)initWithBundleIdentifier:(id)identifier;
- (void)deleteAllSavedRecordsWithCompletion:(id)completion;
- (void)deleteSavedRecordWithIdentfier:(id)identfier completion:(id)completion;
- (void)fetchNativeRecordDataForRecordUUID:(id)d completion:(id)completion;
- (void)fetchSavedRecordInfoWithCompletion:(id)completion;
- (void)saveCoreDuetEvent:(id)event completion:(id)completion;
- (void)saveRecordWithData:(id)data recordInfo:(id)info completion:(id)completion;
@end

@implementation DESRecordStore

- (DESRecordStore)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = DESRecordStore;
  v5 = [(DESRecordStore *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    bundleId = v5->_bundleId;
    v5->_bundleId = v6;
  }

  return v5;
}

- (void)saveRecordWithData:(id)data recordInfo:(id)info completion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    v7 = DESLogAndReturnSunsetError();
    (*(completion + 2))(completionCopy, 0, v7);
  }
}

- (void)fetchSavedRecordInfoWithCompletion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    v5 = DESLogAndReturnSunsetError();
    (*(completion + 2))(completionCopy, 0, v5);
  }
}

- (void)deleteAllSavedRecordsWithCompletion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    v5 = DESLogAndReturnSunsetError();
    (*(completion + 2))(completionCopy, v5);
  }
}

- (void)deleteSavedRecordWithIdentfier:(id)identfier completion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    v6 = DESLogAndReturnSunsetError();
    (*(completion + 2))(completionCopy, v6);
  }
}

- (void)saveCoreDuetEvent:(id)event completion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    v6 = DESLogAndReturnSunsetError();
    (*(completion + 2))(completionCopy, 0, v6);
  }
}

- (void)fetchNativeRecordDataForRecordUUID:(id)d completion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    v6 = DESLogAndReturnSunsetError();
    (*(completion + 2))(completionCopy, 0, v6);
  }
}

@end