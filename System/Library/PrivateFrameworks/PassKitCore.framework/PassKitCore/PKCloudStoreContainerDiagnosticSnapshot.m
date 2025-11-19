@interface PKCloudStoreContainerDiagnosticSnapshot
- (PKCloudStoreContainerDiagnosticSnapshot)initWithCoder:(id)a3;
- (PKCloudStoreContainerDiagnosticSnapshot)initWithRecordIDs:(id)a3 localRecordIDs:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKCloudStoreContainerDiagnosticSnapshot

- (PKCloudStoreContainerDiagnosticSnapshot)initWithRecordIDs:(id)a3 localRecordIDs:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKCloudStoreContainerDiagnosticSnapshot;
  v9 = [(PKCloudStoreContainerDiagnosticSnapshot *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_recordIDs, a3);
    objc_storeStrong(&v10->_localRecordIDs, a4);
  }

  return v10;
}

- (PKCloudStoreContainerDiagnosticSnapshot)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PKCloudStoreContainerDiagnosticSnapshot;
  v5 = [(PKCloudStoreContainerDiagnosticSnapshot *)&v19 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"recordIDs"];
    recordIDs = v5->_recordIDs;
    v5->_recordIDs = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v12 setWithObjects:{v13, v14, objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"localRecordIDs"];
    localRecordIDs = v5->_localRecordIDs;
    v5->_localRecordIDs = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  recordIDs = self->_recordIDs;
  v5 = a3;
  [v5 encodeObject:recordIDs forKey:@"recordIDs"];
  [v5 encodeObject:self->_localRecordIDs forKey:@"localRecordIDs"];
}

@end