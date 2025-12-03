@interface CPLCloudKitCopyMoveOperationContext
- (id)extendedStatusDescriptionStrings;
- (id)initFromZoneID:(id)d toZoneID:(id)iD;
- (id)operationDescription;
- (void)addCopyMoveFromRecordID:(id)d toRecordID:(id)iD;
@end

@implementation CPLCloudKitCopyMoveOperationContext

- (id)initFromZoneID:(id)d toZoneID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v12.receiver = self;
  v12.super_class = CPLCloudKitCopyMoveOperationContext;
  v9 = [(CPLCloudKitCopyMoveOperationContext *)&v12 init];
  p_isa = &v9->super.super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_sourceZoneID, d);
    objc_storeStrong(p_isa + 12, iD);
  }

  return p_isa;
}

- (void)addCopyMoveFromRecordID:(id)d toRecordID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  sourceRecordIDs = self->_sourceRecordIDs;
  if (!sourceRecordIDs)
  {
    v8 = objc_alloc_init(NSMutableArray);
    v9 = self->_sourceRecordIDs;
    self->_sourceRecordIDs = v8;

    v10 = objc_alloc_init(NSMutableDictionary);
    destinationRecordIDs = self->_destinationRecordIDs;
    self->_destinationRecordIDs = v10;

    sourceRecordIDs = self->_sourceRecordIDs;
  }

  [(NSMutableArray *)sourceRecordIDs addObject:dCopy];
  [(NSMutableDictionary *)self->_destinationRecordIDs setObject:iDCopy forKeyedSubscript:dCopy];
}

- (id)operationDescription
{
  v3 = [NSString alloc];
  cpl_zoneName = [(CKRecordZoneID *)self->_sourceZoneID cpl_zoneName];
  cpl_zoneName2 = [(CKRecordZoneID *)self->_destinationZoneID cpl_zoneName];
  v6 = [v3 initWithFormat:@"%@ -> %@", cpl_zoneName, cpl_zoneName2];

  return v6;
}

- (id)extendedStatusDescriptionStrings
{
  v3 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_sourceRecordIDs, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = self->_sourceRecordIDs;
  v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)self->_destinationRecordIDs objectForKeyedSubscript:v8];
        v10 = [NSString alloc];
        recordName = [v8 recordName];
        recordName2 = [v9 recordName];
        v13 = [v10 initWithFormat:@"%@ -> %@", recordName, recordName2];
        [v3 addObject:v13];
      }

      v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  return v3;
}

@end