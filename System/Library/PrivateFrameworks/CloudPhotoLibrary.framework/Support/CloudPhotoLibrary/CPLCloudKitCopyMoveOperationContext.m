@interface CPLCloudKitCopyMoveOperationContext
- (id)extendedStatusDescriptionStrings;
- (id)initFromZoneID:(id)a3 toZoneID:(id)a4;
- (id)operationDescription;
- (void)addCopyMoveFromRecordID:(id)a3 toRecordID:(id)a4;
@end

@implementation CPLCloudKitCopyMoveOperationContext

- (id)initFromZoneID:(id)a3 toZoneID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CPLCloudKitCopyMoveOperationContext;
  v9 = [(CPLCloudKitCopyMoveOperationContext *)&v12 init];
  p_isa = &v9->super.super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_sourceZoneID, a3);
    objc_storeStrong(p_isa + 12, a4);
  }

  return p_isa;
}

- (void)addCopyMoveFromRecordID:(id)a3 toRecordID:(id)a4
{
  v12 = a3;
  v6 = a4;
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

  [(NSMutableArray *)sourceRecordIDs addObject:v12];
  [(NSMutableDictionary *)self->_destinationRecordIDs setObject:v6 forKeyedSubscript:v12];
}

- (id)operationDescription
{
  v3 = [NSString alloc];
  v4 = [(CKRecordZoneID *)self->_sourceZoneID cpl_zoneName];
  v5 = [(CKRecordZoneID *)self->_destinationZoneID cpl_zoneName];
  v6 = [v3 initWithFormat:@"%@ -> %@", v4, v5];

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
        v11 = [v8 recordName];
        v12 = [v9 recordName];
        v13 = [v10 initWithFormat:@"%@ -> %@", v11, v12];
        [v3 addObject:v13];
      }

      v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  return v3;
}

@end