@interface IMSpotlightClientState
+ (int64_t)_reindexingStyle;
- (BOOL)needsReindex;
- (IMSpotlightClientState)init;
- (IMSpotlightClientState)initWithCoder:(id)coder;
- (IMSpotlightClientState)initWithData:(id)data error:(id *)error;
- (IMSpotlightClientState)initWithMaxRowID:(unint64_t)d totalMessages:(unint64_t)messages;
- (id)_initWithLastIndexedRowID:(unint64_t)d initialReindexRowID:(unint64_t)iD indexRevision:(int64_t)revision indexVersion:(int64_t)version initialIndexedMessages:(int64_t)messages initialTotalMessages:(int64_t)totalMessages processedMessageRecords:(unint64_t)records indexingBeganDate:(id)self0 initialIndexedChats:(int64_t)self1 initialTotalChats:(int64_t)self2 reindexingStyle:(int64_t)self3;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IMSpotlightClientState

+ (int64_t)_reindexingStyle
{
  v2 = +[IMFeatureFlags sharedFeatureFlags];
  isSpotlightReindexRefactorEnabled = [v2 isSpotlightReindexRefactorEnabled];

  return isSpotlightReindexRefactorEnabled;
}

- (IMSpotlightClientState)init
{
  v7.receiver = self;
  v7.super_class = IMSpotlightClientState;
  v2 = [(IMSpotlightClientState *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lastIndexedRowID = 0;
    v2->_initialReindexRowID = 0;
    v2->_indexRevision = +[IMSpotlightClientState _latestIndexRevision];
    v3->_indexVersion = +[IMSpotlightClientState _latestIndexVersion];
    v3->_initialIndexedMessages = 0;
    v3->_processedMessageRecords = 0;
    v3->_initialTotalMessages = 0;
    date = [MEMORY[0x1E695DF00] date];
    indexBeginDate = v3->_indexBeginDate;
    v3->_indexBeginDate = date;

    v3->_initialTotalChats = 0;
    v3->_initialIndexedChats = 0;
    v3->_reindexingStyle = +[IMSpotlightClientState _reindexingStyle];
  }

  return v3;
}

- (IMSpotlightClientState)initWithMaxRowID:(unint64_t)d totalMessages:(unint64_t)messages
{
  result = [(IMSpotlightClientState *)self init];
  if (result)
  {
    result->_lastIndexedRowID = d + 1;
    result->_initialReindexRowID = d + 1;
    result->_initialTotalMessages = messages;
  }

  return result;
}

- (id)_initWithLastIndexedRowID:(unint64_t)d initialReindexRowID:(unint64_t)iD indexRevision:(int64_t)revision indexVersion:(int64_t)version initialIndexedMessages:(int64_t)messages initialTotalMessages:(int64_t)totalMessages processedMessageRecords:(unint64_t)records indexingBeganDate:(id)self0 initialIndexedChats:(int64_t)self1 initialTotalChats:(int64_t)self2 reindexingStyle:(int64_t)self3
{
  dateCopy = date;
  v24.receiver = self;
  v24.super_class = IMSpotlightClientState;
  v21 = [(IMSpotlightClientState *)&v24 init];
  v22 = v21;
  if (v21)
  {
    v21->_lastIndexedRowID = d;
    v21->_initialReindexRowID = iD;
    v21->_indexRevision = revision;
    v21->_indexVersion = version;
    v21->_processedMessageRecords = records;
    v21->_initialTotalMessages = totalMessages;
    v21->_initialIndexedMessages = messages;
    objc_storeStrong(&v21->_indexBeginDate, date);
    v22->_initialTotalChats = totalChats;
    v22->_initialIndexedChats = chats;
    v22->_reindexingStyle = style;
  }

  return v22;
}

- (BOOL)needsReindex
{
  indexRevision = [(IMSpotlightClientState *)self indexRevision];
  if (indexRevision < +[IMSpotlightClientState _latestIndexRevision])
  {
    return 1;
  }

  reindexingStyle = [(IMSpotlightClientState *)self reindexingStyle];
  return reindexingStyle != +[IMSpotlightClientState _reindexingStyle];
}

- (IMSpotlightClientState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = IMSpotlightClientState;
  v5 = [(IMSpotlightClientState *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastIndexedRowID"];
    v5->_lastIndexedRowID = [v6 unsignedLongLongValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"initialMaxRowID"];
    v5->_initialReindexRowID = [v7 unsignedLongLongValue];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"indexRevision"];
    v5->_indexRevision = [v8 longLongValue];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"indexVersion"];
    v5->_indexVersion = [v9 longLongValue];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"initialIndexedMessages"];
    v5->_initialIndexedMessages = [v10 unsignedLongLongValue];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"initialTotalMessages"];
    v5->_initialTotalMessages = [v11 unsignedLongLongValue];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"processedMessageRecords"];
    v5->_processedMessageRecords = [v12 unsignedLongLongValue];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"indexingBeganDate"];
    indexBeginDate = v5->_indexBeginDate;
    v5->_indexBeginDate = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"initialIndexedChats"];
    v5->_initialIndexedChats = [v15 unsignedLongLongValue];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"initialTotalChats"];
    v5->_initialTotalChats = [v16 unsignedLongLongValue];

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reindexingStyle"];
    v5->_reindexingStyle = [v17 unsignedLongLongValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  lastIndexedRowID = self->_lastIndexedRowID;
  coderCopy = coder;
  v7 = [v4 numberWithUnsignedLongLong:lastIndexedRowID];
  [coderCopy encodeObject:v7 forKey:@"lastIndexedRowID"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_initialReindexRowID];
  [coderCopy encodeObject:v8 forKey:@"initialMaxRowID"];

  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_indexRevision];
  [coderCopy encodeObject:v9 forKey:@"indexRevision"];

  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_indexVersion];
  [coderCopy encodeObject:v10 forKey:@"indexVersion"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_initialIndexedMessages];
  [coderCopy encodeObject:v11 forKey:@"initialIndexedMessages"];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_initialTotalMessages];
  [coderCopy encodeObject:v12 forKey:@"initialTotalMessages"];

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_processedMessageRecords];
  [coderCopy encodeObject:v13 forKey:@"processedMessageRecords"];

  [coderCopy encodeObject:self->_indexBeginDate forKey:@"indexingBeganDate"];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_initialIndexedChats];
  [coderCopy encodeObject:v14 forKey:@"initialIndexedChats"];

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_initialTotalChats];
  [coderCopy encodeObject:v15 forKey:@"initialTotalChats"];

  v16 = [MEMORY[0x1E696AD98] numberWithInteger:self->_reindexingStyle];
  [coderCopy encodeObject:v16 forKey:@"reindexingStyle"];
}

- (IMSpotlightClientState)initWithData:(id)data error:(id *)error
{
  v6 = qword_1EB30B338;
  dataCopy = data;
  if (v6 != -1)
  {
    sub_1A88C4198();
  }

  v8 = [MEMORY[0x1E696ACD0] _strictlyUnarchivedObjectOfClasses:qword_1EB30B330 fromData:dataCopy error:error];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p lastIndexedRow=%llu initialReindexRowID=%llu indexRevision=%lld indexVersion=%lld initialIndexedMessages=%lld initialTotalMessages=%lld processedMessageRecords=%lld initialTotalChats=%lld processedChatRecords=%lld indexBeginDate=%@>", v5, self, self->_lastIndexedRowID, self->_initialReindexRowID, self->_indexRevision, self->_indexVersion, self->_initialIndexedMessages, self->_initialTotalMessages, self->_processedMessageRecords, self->_initialTotalChats, self->_initialIndexedChats, self->_indexBeginDate];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v14 = [IMSpotlightClientState alloc];
  lastIndexedRowID = [(IMSpotlightClientState *)self lastIndexedRowID];
  initialReindexRowID = [(IMSpotlightClientState *)self initialReindexRowID];
  indexRevision = [(IMSpotlightClientState *)self indexRevision];
  indexVersion = [(IMSpotlightClientState *)self indexVersion];
  initialIndexedMessages = [(IMSpotlightClientState *)self initialIndexedMessages];
  initialTotalMessages = [(IMSpotlightClientState *)self initialTotalMessages];
  processedMessageRecords = [(IMSpotlightClientState *)self processedMessageRecords];
  indexBeginDate = [(IMSpotlightClientState *)self indexBeginDate];
  v11 = [(IMSpotlightClientState *)v14 _initWithLastIndexedRowID:lastIndexedRowID initialReindexRowID:initialReindexRowID indexRevision:indexRevision indexVersion:indexVersion initialIndexedMessages:initialIndexedMessages initialTotalMessages:initialTotalMessages processedMessageRecords:processedMessageRecords indexingBeganDate:indexBeginDate initialIndexedChats:[(IMSpotlightClientState *)self initialIndexedChats] initialTotalChats:[(IMSpotlightClientState *)self initialTotalChats] reindexingStyle:[(IMSpotlightClientState *)self reindexingStyle]];

  return v11;
}

@end