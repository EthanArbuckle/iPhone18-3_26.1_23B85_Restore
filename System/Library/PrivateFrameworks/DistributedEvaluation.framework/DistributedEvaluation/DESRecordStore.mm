@interface DESRecordStore
- (DESRecordStore)initWithBundleIdentifier:(id)a3;
- (void)deleteAllSavedRecordsWithCompletion:(id)a3;
- (void)deleteSavedRecordWithIdentfier:(id)a3 completion:(id)a4;
- (void)fetchNativeRecordDataForRecordUUID:(id)a3 completion:(id)a4;
- (void)fetchSavedRecordInfoWithCompletion:(id)a3;
- (void)saveCoreDuetEvent:(id)a3 completion:(id)a4;
- (void)saveRecordWithData:(id)a3 recordInfo:(id)a4 completion:(id)a5;
@end

@implementation DESRecordStore

- (DESRecordStore)initWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DESRecordStore;
  v5 = [(DESRecordStore *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    bundleId = v5->_bundleId;
    v5->_bundleId = v6;
  }

  return v5;
}

- (void)saveRecordWithData:(id)a3 recordInfo:(id)a4 completion:(id)a5
{
  if (a5)
  {
    v6 = a5;
    v7 = DESLogAndReturnSunsetError();
    (*(a5 + 2))(v6, 0, v7);
  }
}

- (void)fetchSavedRecordInfoWithCompletion:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = DESLogAndReturnSunsetError();
    (*(a3 + 2))(v4, 0, v5);
  }
}

- (void)deleteAllSavedRecordsWithCompletion:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = DESLogAndReturnSunsetError();
    (*(a3 + 2))(v4, v5);
  }
}

- (void)deleteSavedRecordWithIdentfier:(id)a3 completion:(id)a4
{
  if (a4)
  {
    v5 = a4;
    v6 = DESLogAndReturnSunsetError();
    (*(a4 + 2))(v5, v6);
  }
}

- (void)saveCoreDuetEvent:(id)a3 completion:(id)a4
{
  if (a4)
  {
    v5 = a4;
    v6 = DESLogAndReturnSunsetError();
    (*(a4 + 2))(v5, 0, v6);
  }
}

- (void)fetchNativeRecordDataForRecordUUID:(id)a3 completion:(id)a4
{
  if (a4)
  {
    v5 = a4;
    v6 = DESLogAndReturnSunsetError();
    (*(a4 + 2))(v5, 0, v6);
  }
}

@end