@interface PKProvisioningSEStorageSnapshot
+ (void)getCurrentSnapshot:(id)snapshot;
- (PKProvisioningSEStorageSnapshot)initWithCoder:(id)coder;
- (PKProvisioningSEStorageSnapshot)initWithSnapshot:(id)snapshot;
@end

@implementation PKProvisioningSEStorageSnapshot

- (PKProvisioningSEStorageSnapshot)initWithSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  if (snapshotCopy)
  {
    v9.receiver = self;
    v9.super_class = PKProvisioningSEStorageSnapshot;
    v6 = [(PKProvisioningSEStorageSnapshot *)&v9 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_snapshot, snapshot);
    }
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

+ (void)getCurrentSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v4 = objc_alloc_init(_PKProvisioningSEStorageManager);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__PKProvisioningSEStorageSnapshot_getCurrentSnapshot___block_invoke;
  v7[3] = &unk_1E79C4A40;
  v8 = v4;
  v9 = snapshotCopy;
  v5 = snapshotCopy;
  v6 = v4;
  [(_PKProvisioningSEStorageManager *)v6 deleteExpiredReservationsWithCompletion:v7];
}

void __54__PKProvisioningSEStorageSnapshot_getCurrentSnapshot___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __54__PKProvisioningSEStorageSnapshot_getCurrentSnapshot___block_invoke_2;
  v2[3] = &unk_1E79E4738;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 currentSnapshotWithCompletion:v2];
}

void __54__PKProvisioningSEStorageSnapshot_getCurrentSnapshot___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[PKProvisioningSEStorageSnapshot alloc] initWithSnapshot:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (PKProvisioningSEStorageSnapshot)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKProvisioningSEStorageSnapshot;
  v5 = [(PKProvisioningSEStorageSnapshot *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"snapshot"];
    snapshot = v5->_snapshot;
    v5->_snapshot = v6;
  }

  return v5;
}

@end