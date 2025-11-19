@interface IMSpotlightClientState
+ (int64_t)_reindexingStyle;
- (BOOL)needsReindex;
- (IMSpotlightClientState)init;
- (IMSpotlightClientState)initWithCoder:(id)a3;
- (IMSpotlightClientState)initWithData:(id)a3 error:(id *)a4;
- (IMSpotlightClientState)initWithMaxRowID:(unint64_t)a3 totalMessages:(unint64_t)a4;
- (id)_initWithLastIndexedRowID:(unint64_t)a3 initialReindexRowID:(unint64_t)a4 indexRevision:(int64_t)a5 indexVersion:(int64_t)a6 initialIndexedMessages:(int64_t)a7 initialTotalMessages:(int64_t)a8 processedMessageRecords:(unint64_t)a9 indexingBeganDate:(id)a10 initialIndexedChats:(int64_t)a11 initialTotalChats:(int64_t)a12 reindexingStyle:(int64_t)a13;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IMSpotlightClientState

+ (int64_t)_reindexingStyle
{
  v2 = +[IMFeatureFlags sharedFeatureFlags];
  v3 = [v2 isSpotlightReindexRefactorEnabled];

  return v3;
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
    v4 = [MEMORY[0x1E695DF00] date];
    indexBeginDate = v3->_indexBeginDate;
    v3->_indexBeginDate = v4;

    v3->_initialTotalChats = 0;
    v3->_initialIndexedChats = 0;
    v3->_reindexingStyle = +[IMSpotlightClientState _reindexingStyle];
  }

  return v3;
}

- (IMSpotlightClientState)initWithMaxRowID:(unint64_t)a3 totalMessages:(unint64_t)a4
{
  result = [(IMSpotlightClientState *)self init];
  if (result)
  {
    result->_lastIndexedRowID = a3 + 1;
    result->_initialReindexRowID = a3 + 1;
    result->_initialTotalMessages = a4;
  }

  return result;
}

- (id)_initWithLastIndexedRowID:(unint64_t)a3 initialReindexRowID:(unint64_t)a4 indexRevision:(int64_t)a5 indexVersion:(int64_t)a6 initialIndexedMessages:(int64_t)a7 initialTotalMessages:(int64_t)a8 processedMessageRecords:(unint64_t)a9 indexingBeganDate:(id)a10 initialIndexedChats:(int64_t)a11 initialTotalChats:(int64_t)a12 reindexingStyle:(int64_t)a13
{
  v20 = a10;
  v24.receiver = self;
  v24.super_class = IMSpotlightClientState;
  v21 = [(IMSpotlightClientState *)&v24 init];
  v22 = v21;
  if (v21)
  {
    v21->_lastIndexedRowID = a3;
    v21->_initialReindexRowID = a4;
    v21->_indexRevision = a5;
    v21->_indexVersion = a6;
    v21->_processedMessageRecords = a9;
    v21->_initialTotalMessages = a8;
    v21->_initialIndexedMessages = a7;
    objc_storeStrong(&v21->_indexBeginDate, a10);
    v22->_initialTotalChats = a12;
    v22->_initialIndexedChats = a11;
    v22->_reindexingStyle = a13;
  }

  return v22;
}

- (BOOL)needsReindex
{
  v3 = [(IMSpotlightClientState *)self indexRevision];
  if (v3 < +[IMSpotlightClientState _latestIndexRevision])
  {
    return 1;
  }

  v5 = [(IMSpotlightClientState *)self reindexingStyle];
  return v5 != +[IMSpotlightClientState _reindexingStyle];
}

- (IMSpotlightClientState)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = IMSpotlightClientState;
  v5 = [(IMSpotlightClientState *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastIndexedRowID"];
    v5->_lastIndexedRowID = [v6 unsignedLongLongValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"initialMaxRowID"];
    v5->_initialReindexRowID = [v7 unsignedLongLongValue];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"indexRevision"];
    v5->_indexRevision = [v8 longLongValue];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"indexVersion"];
    v5->_indexVersion = [v9 longLongValue];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"initialIndexedMessages"];
    v5->_initialIndexedMessages = [v10 unsignedLongLongValue];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"initialTotalMessages"];
    v5->_initialTotalMessages = [v11 unsignedLongLongValue];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"processedMessageRecords"];
    v5->_processedMessageRecords = [v12 unsignedLongLongValue];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"indexingBeganDate"];
    indexBeginDate = v5->_indexBeginDate;
    v5->_indexBeginDate = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"initialIndexedChats"];
    v5->_initialIndexedChats = [v15 unsignedLongLongValue];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"initialTotalChats"];
    v5->_initialTotalChats = [v16 unsignedLongLongValue];

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reindexingStyle"];
    v5->_reindexingStyle = [v17 unsignedLongLongValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  lastIndexedRowID = self->_lastIndexedRowID;
  v6 = a3;
  v7 = [v4 numberWithUnsignedLongLong:lastIndexedRowID];
  [v6 encodeObject:v7 forKey:@"lastIndexedRowID"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_initialReindexRowID];
  [v6 encodeObject:v8 forKey:@"initialMaxRowID"];

  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_indexRevision];
  [v6 encodeObject:v9 forKey:@"indexRevision"];

  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_indexVersion];
  [v6 encodeObject:v10 forKey:@"indexVersion"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_initialIndexedMessages];
  [v6 encodeObject:v11 forKey:@"initialIndexedMessages"];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_initialTotalMessages];
  [v6 encodeObject:v12 forKey:@"initialTotalMessages"];

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_processedMessageRecords];
  [v6 encodeObject:v13 forKey:@"processedMessageRecords"];

  [v6 encodeObject:self->_indexBeginDate forKey:@"indexingBeganDate"];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_initialIndexedChats];
  [v6 encodeObject:v14 forKey:@"initialIndexedChats"];

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_initialTotalChats];
  [v6 encodeObject:v15 forKey:@"initialTotalChats"];

  v16 = [MEMORY[0x1E696AD98] numberWithInteger:self->_reindexingStyle];
  [v6 encodeObject:v16 forKey:@"reindexingStyle"];
}

- (IMSpotlightClientState)initWithData:(id)a3 error:(id *)a4
{
  v6 = qword_1EB30B338;
  v7 = a3;
  if (v6 != -1)
  {
    sub_1A88C4198();
  }

  v8 = [MEMORY[0x1E696ACD0] _strictlyUnarchivedObjectOfClasses:qword_1EB30B330 fromData:v7 error:a4];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v14 = [IMSpotlightClientState alloc];
  v13 = [(IMSpotlightClientState *)self lastIndexedRowID];
  v4 = [(IMSpotlightClientState *)self initialReindexRowID];
  v5 = [(IMSpotlightClientState *)self indexRevision];
  v6 = [(IMSpotlightClientState *)self indexVersion];
  v7 = [(IMSpotlightClientState *)self initialIndexedMessages];
  v8 = [(IMSpotlightClientState *)self initialTotalMessages];
  v9 = [(IMSpotlightClientState *)self processedMessageRecords];
  v10 = [(IMSpotlightClientState *)self indexBeginDate];
  v11 = [(IMSpotlightClientState *)v14 _initWithLastIndexedRowID:v13 initialReindexRowID:v4 indexRevision:v5 indexVersion:v6 initialIndexedMessages:v7 initialTotalMessages:v8 processedMessageRecords:v9 indexingBeganDate:v10 initialIndexedChats:[(IMSpotlightClientState *)self initialIndexedChats] initialTotalChats:[(IMSpotlightClientState *)self initialTotalChats] reindexingStyle:[(IMSpotlightClientState *)self reindexingStyle]];

  return v11;
}

@end