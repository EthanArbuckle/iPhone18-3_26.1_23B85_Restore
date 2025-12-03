@interface PKCloudStoreContainerDiagnosticSnapshot
- (PKCloudStoreContainerDiagnosticSnapshot)initWithCoder:(id)coder;
- (PKCloudStoreContainerDiagnosticSnapshot)initWithRecordIDs:(id)ds localRecordIDs:(id)iDs;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKCloudStoreContainerDiagnosticSnapshot

- (PKCloudStoreContainerDiagnosticSnapshot)initWithRecordIDs:(id)ds localRecordIDs:(id)iDs
{
  dsCopy = ds;
  iDsCopy = iDs;
  v12.receiver = self;
  v12.super_class = PKCloudStoreContainerDiagnosticSnapshot;
  v9 = [(PKCloudStoreContainerDiagnosticSnapshot *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_recordIDs, ds);
    objc_storeStrong(&v10->_localRecordIDs, iDs);
  }

  return v10;
}

- (PKCloudStoreContainerDiagnosticSnapshot)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = PKCloudStoreContainerDiagnosticSnapshot;
  v5 = [(PKCloudStoreContainerDiagnosticSnapshot *)&v19 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"recordIDs"];
    recordIDs = v5->_recordIDs;
    v5->_recordIDs = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v12 setWithObjects:{v13, v14, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"localRecordIDs"];
    localRecordIDs = v5->_localRecordIDs;
    v5->_localRecordIDs = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  recordIDs = self->_recordIDs;
  coderCopy = coder;
  [coderCopy encodeObject:recordIDs forKey:@"recordIDs"];
  [coderCopy encodeObject:self->_localRecordIDs forKey:@"localRecordIDs"];
}

@end