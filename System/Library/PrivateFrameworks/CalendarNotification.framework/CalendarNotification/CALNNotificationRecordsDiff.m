@interface CALNNotificationRecordsDiff
+ (id)diffWithAddedRecords:(id)a3 removedRecords:(id)a4 modifiedRecords:(id)a5;
+ (id)emptyDiff;
- (CALNNotificationRecordsDiff)initWithAddedRecords:(id)a3 removedRecords:(id)a4 modifiedRecords:(id)a5;
- (id)description;
@end

@implementation CALNNotificationRecordsDiff

- (CALNNotificationRecordsDiff)initWithAddedRecords:(id)a3 removedRecords:(id)a4 modifiedRecords:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = CALNNotificationRecordsDiff;
  v11 = [(CALNNotificationRecordsDiff *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    addedRecords = v11->_addedRecords;
    v11->_addedRecords = v12;

    v14 = [v9 copy];
    removedRecords = v11->_removedRecords;
    v11->_removedRecords = v14;

    v16 = [v10 copy];
    modifiedRecords = v11->_modifiedRecords;
    v11->_modifiedRecords = v16;
  }

  return v11;
}

+ (id)diffWithAddedRecords:(id)a3 removedRecords:(id)a4 modifiedRecords:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 count] || objc_msgSend(v8, "count") || objc_msgSend(v9, "count"))
  {
    v10 = [[CALNNotificationRecordsDiff alloc] initWithAddedRecords:v7 removedRecords:v8 modifiedRecords:v9];
  }

  else
  {
    v10 = [objc_opt_class() emptyDiff];
  }

  v11 = v10;

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
  v5 = [(CALNNotificationRecordsDiff *)self addedRecords];
  v6 = [(CALNNotificationRecordsDiff *)self removedRecords];
  v7 = [(CALNNotificationRecordsDiff *)self modifiedRecords];
  v8 = [v3 stringWithFormat:@"<%@: %p>(\naddedRecords = %@\nremovedRecords = %@\nmodifiedRecords = %@\n)", v4, self, v5, v6, v7];

  return v8;
}

@end