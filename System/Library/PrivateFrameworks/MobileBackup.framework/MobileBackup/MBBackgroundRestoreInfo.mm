@interface MBBackgroundRestoreInfo
- (MBBackgroundRestoreInfo)initWithCoder:(id)coder;
- (MBBackgroundRestoreInfo)initWithDataClassesRemaining:(int)remaining bytesRemaining:(unint64_t)bytesRemaining failedDomains:(id)domains recentATCErrors:(id)errors perClassItemsRemaining:(id)itemsRemaining airTrafficDidFinishRestore:(BOOL)restore appDataDidFinishRestore:(BOOL)finishRestore snapshotFormat:(int64_t)self0 snapshotID:(id)self1 commitID:(id)self2;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MBBackgroundRestoreInfo

- (MBBackgroundRestoreInfo)initWithDataClassesRemaining:(int)remaining bytesRemaining:(unint64_t)bytesRemaining failedDomains:(id)domains recentATCErrors:(id)errors perClassItemsRemaining:(id)itemsRemaining airTrafficDidFinishRestore:(BOOL)restore appDataDidFinishRestore:(BOOL)finishRestore snapshotFormat:(int64_t)self0 snapshotID:(id)self1 commitID:(id)self2
{
  domainsCopy = domains;
  errorsCopy = errors;
  itemsRemainingCopy = itemsRemaining;
  dCopy = d;
  iDCopy = iD;
  v27.receiver = self;
  v27.super_class = MBBackgroundRestoreInfo;
  v20 = [(MBBackgroundRestoreInfo *)&v27 init];
  v21 = v20;
  if (v20)
  {
    v20->_dataClassesRemaining = remaining;
    v20->_bytesRemaining = bytesRemaining;
    objc_storeStrong(&v20->_failedDomains, domains);
    objc_storeStrong(&v21->_recentATCErrors, errors);
    objc_storeStrong(&v21->_perClassItemsRemaining, itemsRemaining);
    v21->_airTrafficDidFinishRestore = restore;
    v21->_appDataDidFinishRestore = finishRestore;
    v21->_snapshotFormat = format;
    objc_storeStrong(&v21->_snapshotID, d);
    objc_storeStrong(&v21->_commitID, iD);
  }

  return v21;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MBBackgroundRestoreInfo alloc];
  LOBYTE(v6) = self->_appDataDidFinishRestore;
  return [(MBBackgroundRestoreInfo *)v4 initWithDataClassesRemaining:self->_dataClassesRemaining bytesRemaining:self->_bytesRemaining failedDomains:self->_failedDomains recentATCErrors:self->_recentATCErrors perClassItemsRemaining:self->_perClassItemsRemaining airTrafficDidFinishRestore:self->_airTrafficDidFinishRestore appDataDidFinishRestore:v6 snapshotFormat:self->_snapshotFormat snapshotID:self->_snapshotID commitID:self->_commitID];
}

- (MBBackgroundRestoreInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = MBBackgroundRestoreInfo;
  v5 = [(MBBackgroundRestoreInfo *)&v12 init];
  if (v5)
  {
    v5->_bytesRemaining = [coderCopy decodeInt64ForKey:@"bytesRemaining"];
    v5->_dataClassesRemaining = [coderCopy decodeInt32ForKey:@"dataClassesRemaining"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"failedDomains"];
    failedDomains = v5->_failedDomains;
    v5->_failedDomains = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  bytesRemaining = self->_bytesRemaining;
  coderCopy = coder;
  [coderCopy encodeInt64:bytesRemaining forKey:@"bytesRemaining"];
  [coderCopy encodeInt64:self->_dataClassesRemaining forKey:@"dataClassesRemaining"];
  [coderCopy encodeObject:self->_failedDomains forKey:@"failedDomains"];
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