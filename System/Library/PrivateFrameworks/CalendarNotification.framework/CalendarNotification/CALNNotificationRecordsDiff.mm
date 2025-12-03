@interface CALNNotificationRecordsDiff
+ (id)diffWithAddedRecords:(id)records removedRecords:(id)removedRecords modifiedRecords:(id)modifiedRecords;
+ (id)emptyDiff;
- (CALNNotificationRecordsDiff)initWithAddedRecords:(id)records removedRecords:(id)removedRecords modifiedRecords:(id)modifiedRecords;
- (id)description;
@end

@implementation CALNNotificationRecordsDiff

- (CALNNotificationRecordsDiff)initWithAddedRecords:(id)records removedRecords:(id)removedRecords modifiedRecords:(id)modifiedRecords
{
  recordsCopy = records;
  removedRecordsCopy = removedRecords;
  modifiedRecordsCopy = modifiedRecords;
  v19.receiver = self;
  v19.super_class = CALNNotificationRecordsDiff;
  v11 = [(CALNNotificationRecordsDiff *)&v19 init];
  if (v11)
  {
    v12 = [recordsCopy copy];
    addedRecords = v11->_addedRecords;
    v11->_addedRecords = v12;

    v14 = [removedRecordsCopy copy];
    removedRecords = v11->_removedRecords;
    v11->_removedRecords = v14;

    v16 = [modifiedRecordsCopy copy];
    modifiedRecords = v11->_modifiedRecords;
    v11->_modifiedRecords = v16;
  }

  return v11;
}

+ (id)diffWithAddedRecords:(id)records removedRecords:(id)removedRecords modifiedRecords:(id)modifiedRecords
{
  recordsCopy = records;
  removedRecordsCopy = removedRecords;
  modifiedRecordsCopy = modifiedRecords;
  if ([recordsCopy count] || objc_msgSend(removedRecordsCopy, "count") || objc_msgSend(modifiedRecordsCopy, "count"))
  {
    emptyDiff = [[CALNNotificationRecordsDiff alloc] initWithAddedRecords:recordsCopy removedRecords:removedRecordsCopy modifiedRecords:modifiedRecordsCopy];
  }

  else
  {
    emptyDiff = [objc_opt_class() emptyDiff];
  }

  v11 = emptyDiff;

  return v11;
}

+ (id)emptyDiff
{
  if (emptyDiff_onceToken != -1)
  {
    +[CALNNotificationRecordsDiff emptyDiff];
  }

  v3 = emptyDiff_emptyDiff;

  return v3;
}

uint64_t __40__CALNNotificationRecordsDiff_emptyDiff__block_invoke()
{
  v0 = [CALNNotificationRecordsDiff alloc];
  emptyDiff_emptyDiff = [(CALNNotificationRecordsDiff *)v0 initWithAddedRecords:MEMORY[0x277CBEBF8] removedRecords:MEMORY[0x277CBEBF8] modifiedRecords:MEMORY[0x277CBEBF8]];

  return MEMORY[0x2821F96F8]();
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  addedRecords = [(CALNNotificationRecordsDiff *)self addedRecords];
  removedRecords = [(CALNNotificationRecordsDiff *)self removedRecords];
  modifiedRecords = [(CALNNotificationRecordsDiff *)self modifiedRecords];
  v8 = [v3 stringWithFormat:@"<%@: %p>(\naddedRecords = %@\nremovedRecords = %@\nmodifiedRecords = %@\n)", v4, self, addedRecords, removedRecords, modifiedRecords];

  return v8;
}

@end