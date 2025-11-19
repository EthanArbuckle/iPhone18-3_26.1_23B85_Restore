@interface MBBackgroundRestoreInfo
- (MBBackgroundRestoreInfo)initWithCoder:(id)a3;
- (MBBackgroundRestoreInfo)initWithDataClassesRemaining:(int)a3 bytesRemaining:(unint64_t)a4 failedDomains:(id)a5 recentATCErrors:(id)a6 perClassItemsRemaining:(id)a7 airTrafficDidFinishRestore:(BOOL)a8 appDataDidFinishRestore:(BOOL)a9 snapshotFormat:(int64_t)a10 snapshotID:(id)a11 commitID:(id)a12;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MBBackgroundRestoreInfo

- (MBBackgroundRestoreInfo)initWithDataClassesRemaining:(int)a3 bytesRemaining:(unint64_t)a4 failedDomains:(id)a5 recentATCErrors:(id)a6 perClassItemsRemaining:(id)a7 airTrafficDidFinishRestore:(BOOL)a8 appDataDidFinishRestore:(BOOL)a9 snapshotFormat:(int64_t)a10 snapshotID:(id)a11 commitID:(id)a12
{
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v26 = a11;
  v25 = a12;
  v27.receiver = self;
  v27.super_class = MBBackgroundRestoreInfo;
  v20 = [(MBBackgroundRestoreInfo *)&v27 init];
  v21 = v20;
  if (v20)
  {
    v20->_dataClassesRemaining = a3;
    v20->_bytesRemaining = a4;
    objc_storeStrong(&v20->_failedDomains, a5);
    objc_storeStrong(&v21->_recentATCErrors, a6);
    objc_storeStrong(&v21->_perClassItemsRemaining, a7);
    v21->_airTrafficDidFinishRestore = a8;
    v21->_appDataDidFinishRestore = a9;
    v21->_snapshotFormat = a10;
    objc_storeStrong(&v21->_snapshotID, a11);
    objc_storeStrong(&v21->_commitID, a12);
  }

  return v21;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MBBackgroundRestoreInfo alloc];
  LOBYTE(v6) = self->_appDataDidFinishRestore;
  return [(MBBackgroundRestoreInfo *)v4 initWithDataClassesRemaining:self->_dataClassesRemaining bytesRemaining:self->_bytesRemaining failedDomains:self->_failedDomains recentATCErrors:self->_recentATCErrors perClassItemsRemaining:self->_perClassItemsRemaining airTrafficDidFinishRestore:self->_airTrafficDidFinishRestore appDataDidFinishRestore:v6 snapshotFormat:self->_snapshotFormat snapshotID:self->_snapshotID commitID:self->_commitID];
}

- (MBBackgroundRestoreInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MBBackgroundRestoreInfo;
  v5 = [(MBBackgroundRestoreInfo *)&v12 init];
  if (v5)
  {
    v5->_bytesRemaining = [v4 decodeInt64ForKey:@"bytesRemaining"];
    v5->_dataClassesRemaining = [v4 decodeInt32ForKey:@"dataClassesRemaining"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"failedDomains"];
    failedDomains = v5->_failedDomains;
    v5->_failedDomains = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  bytesRemaining = self->_bytesRemaining;
  v5 = a3;
  [v5 encodeInt64:bytesRemaining forKey:@"bytesRemaining"];
  [v5 encodeInt64:self->_dataClassesRemaining forKey:@"dataClassesRemaining"];
  [v5 encodeObject:self->_failedDomains forKey:@"failedDomains"];
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  bytesRemaining = self->_bytesRemaining;
  failedDomains = self->_failedDomains;
  dataClassesRemaining = self->_dataClassesRemaining;
  v6 = MBStringForSnapshotFormat(self->_snapshotFormat);
  v7 = [v2 stringWithFormat:@"bytesRemaining:%llu, dataClassesRemaining:0x%x, failedDomains:%@ format:%@", bytesRemaining, dataClassesRemaining, failedDomains, v6];

  return v7;
}

@end