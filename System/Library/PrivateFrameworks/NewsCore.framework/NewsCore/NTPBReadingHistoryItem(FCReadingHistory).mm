@interface NTPBReadingHistoryItem(FCReadingHistory)
- (id)asCKRecord;
- (id)firstSeenAt;
- (id)firstSeenAtOfMaxVersionSeen;
- (id)identifier;
- (id)lastListenedAt;
- (id)lastVisitedAt;
- (id)listeningProgressSavedAt;
- (id)readingPositionSavedAt;
- (uint64_t)articleLikingStatus;
- (uint64_t)setArticleLikingStatus:()FCReadingHistory;
- (uint64_t)setHasArticleBeenConsumed:()FCReadingHistory;
- (uint64_t)setHasArticleBeenMarkedOffensive:()FCReadingHistory;
- (uint64_t)setHasArticleBeenRead:()FCReadingHistory;
- (uint64_t)setHasArticleBeenRemovedFromAudio:()FCReadingHistory;
- (uint64_t)setHasArticleBeenSeen:()FCReadingHistory;
- (uint64_t)setHasArticleCompletedListening:()FCReadingHistory;
- (uint64_t)setHasArticleCompletedReading:()FCReadingHistory;
- (uint64_t)setPruningDisabled:()FCReadingHistory;
- (void)setFirstSeenAt:()FCReadingHistory;
- (void)setFirstSeenAtOfMaxVersionSeen:()FCReadingHistory;
- (void)setLastListenedAt:()FCReadingHistory;
- (void)setLastVisitedAt:()FCReadingHistory;
- (void)setListeningProgressSavedAt:()FCReadingHistory;
- (void)setReadingPositionSavedAt:()FCReadingHistory;
- (void)writeToKeyValuePair:()FCReadingHistory;
@end

@implementation NTPBReadingHistoryItem(FCReadingHistory)

- (uint64_t)articleLikingStatus
{
  if (([self flags] & 8) != 0)
  {
    return 1;
  }

  else
  {
    return ([self flags] >> 3) & 2;
  }
}

- (id)lastVisitedAt
{
  v1 = MEMORY[0x1E695DF00];
  lastVisitedDate = [self lastVisitedDate];
  v3 = [v1 dateWithPBDate:lastVisitedDate];

  return v3;
}

- (id)lastListenedAt
{
  v1 = MEMORY[0x1E695DF00];
  lastListened = [self lastListened];
  v3 = [v1 dateWithPBDate:lastListened];

  return v3;
}

- (id)firstSeenAt
{
  v1 = MEMORY[0x1E695DF00];
  firstSeenDate = [self firstSeenDate];
  v3 = [v1 dateWithPBDate:firstSeenDate];

  return v3;
}

- (id)identifier
{
  articleID = [self articleID];
  v2 = FCHistoryItemIDFromArticleID(articleID);

  return v2;
}

- (void)setLastVisitedAt:()FCReadingHistory
{
  pbDate = [a3 pbDate];
  [self setLastVisitedDate:pbDate];
}

- (void)setLastListenedAt:()FCReadingHistory
{
  pbDate = [a3 pbDate];
  [self setLastListened:pbDate];
}

- (id)listeningProgressSavedAt
{
  v1 = MEMORY[0x1E695DF00];
  listeningProgressSavedDate = [self listeningProgressSavedDate];
  v3 = [v1 dateWithPBDate:listeningProgressSavedDate];

  return v3;
}

- (void)setListeningProgressSavedAt:()FCReadingHistory
{
  pbDate = [a3 pbDate];
  [self setListeningProgressSavedDate:pbDate];
}

- (id)readingPositionSavedAt
{
  v1 = MEMORY[0x1E695DF00];
  readingPositionSavedDate = [self readingPositionSavedDate];
  v3 = [v1 dateWithPBDate:readingPositionSavedDate];

  return v3;
}

- (void)setReadingPositionSavedAt:()FCReadingHistory
{
  pbDate = [a3 pbDate];
  [self setReadingPositionSavedDate:pbDate];
}

- (void)setFirstSeenAt:()FCReadingHistory
{
  pbDate = [a3 pbDate];
  [self setFirstSeenDate:pbDate];
}

- (id)firstSeenAtOfMaxVersionSeen
{
  v1 = MEMORY[0x1E695DF00];
  firstSeenDateOfMaxVersionSeen = [self firstSeenDateOfMaxVersionSeen];
  v3 = [v1 dateWithPBDate:firstSeenDateOfMaxVersionSeen];

  return v3;
}

- (void)setFirstSeenAtOfMaxVersionSeen:()FCReadingHistory
{
  pbDate = [a3 pbDate];
  [self setFirstSeenDateOfMaxVersionSeen:pbDate];
}

- (uint64_t)setHasArticleBeenRead:()FCReadingHistory
{
  v4 = [self flags] & 0xFFFFFFFE | a3;

  return [self setFlags:v4];
}

- (uint64_t)setHasArticleBeenSeen:()FCReadingHistory
{
  v5 = [self flags] & 0xFFFFFFFDLL;
  if (a3)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  return [self setFlags:v5 | v6];
}

- (uint64_t)setHasArticleBeenMarkedOffensive:()FCReadingHistory
{
  v5 = [self flags] & 0xFFFFFFFBLL;
  if (a3)
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  return [self setFlags:v5 | v6];
}

- (uint64_t)setHasArticleBeenConsumed:()FCReadingHistory
{
  v5 = [self flags] & 0xFFFFFFDFLL;
  if (a3)
  {
    v6 = 32;
  }

  else
  {
    v6 = 0;
  }

  return [self setFlags:v5 | v6];
}

- (uint64_t)setHasArticleCompletedListening:()FCReadingHistory
{
  v5 = [self flags] & 0xFFFFFFBFLL;
  if (a3)
  {
    v6 = 64;
  }

  else
  {
    v6 = 0;
  }

  return [self setFlags:v5 | v6];
}

- (uint64_t)setHasArticleCompletedReading:()FCReadingHistory
{
  v5 = [self flags] & 0xFFFFFEFFLL;
  if (a3)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  return [self setFlags:v5 | v6];
}

- (uint64_t)setHasArticleBeenRemovedFromAudio:()FCReadingHistory
{
  v5 = [self flags] & 0xFFFFFDFFLL;
  if (a3)
  {
    v6 = 512;
  }

  else
  {
    v6 = 0;
  }

  return [self setFlags:v5 | v6];
}

- (uint64_t)setArticleLikingStatus:()FCReadingHistory
{
  v5 = [self flags] & 0xFFFFFFE7;
  v6 = v5 | 0x10;
  if (a3 == 1)
  {
    v5 |= 8u;
  }

  if (a3 == 2)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  return [self setFlags:v7];
}

- (uint64_t)setPruningDisabled:()FCReadingHistory
{
  v5 = [self flags] & 0xFFFFFF7FLL;
  if (a3)
  {
    v6 = 128;
  }

  else
  {
    v6 = 0;
  }

  return [self setFlags:v5 | v6];
}

- (id)asCKRecord
{
  if (qword_1EB95A858 != -1)
  {
    dispatch_once(&qword_1EB95A858, &__block_literal_global_356);
  }

  v2 = objc_alloc(MEMORY[0x1E695BA70]);
  identifier = [self identifier];
  v4 = [v2 initWithRecordName:identifier zoneID:_MergedGlobals_14];

  v5 = [objc_alloc(MEMORY[0x1E695BA60]) initWithRecordType:@"ReadingHistoryItem" recordID:v4];
  articleID = [self articleID];
  [v5 setObject:articleID forKeyedSubscript:@"articleID"];

  sourceChannelTagID = [self sourceChannelTagID];
  [v5 setObject:sourceChannelTagID forKeyedSubscript:@"sourceChannelTagID"];

  deviceID = [self deviceID];
  [v5 setObject:deviceID forKeyedSubscript:@"deviceID"];

  lastVisitedAt = [self lastVisitedAt];
  [v5 setObject:lastVisitedAt forKeyedSubscript:@"lastVisited"];

  lastListenedAt = [self lastListenedAt];
  [v5 setObject:lastListenedAt forKeyedSubscript:@"lastListened"];

  listeningProgressSavedAt = [self listeningProgressSavedAt];
  [v5 setObject:listeningProgressSavedAt forKeyedSubscript:@"listeningProgressLastSaved"];

  readingPositionSavedAt = [self readingPositionSavedAt];
  [v5 setObject:readingPositionSavedAt forKeyedSubscript:@"readingPositionLastSaved"];

  readingPosition = [self readingPosition];
  [v5 setObject:readingPosition forKeyedSubscript:@"readingPosition"];

  if ([self hasArticleBeenRead])
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "hasArticleBeenRead")}];
    [v5 setObject:v14 forKeyedSubscript:@"articleRead"];
  }

  if ([self hasArticleBeenSeen])
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "hasArticleBeenSeen")}];
    [v5 setObject:v15 forKeyedSubscript:@"articleSeen"];
  }

  if ([self hasArticleCompletedListening])
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "hasArticleCompletedListening")}];
    [v5 setObject:v16 forKeyedSubscript:@"completedListening"];
  }

  if ([self hasArticleCompletedReading])
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "hasArticleCompletedReading")}];
    [v5 setObject:v17 forKeyedSubscript:@"completedReading"];
  }

  if ([self hasArticleBeenConsumed])
  {
    v18 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "hasArticleBeenConsumed")}];
    [v5 setObject:v18 forKeyedSubscript:@"articleConsumed"];
  }

  if ([self articleLikingStatus])
  {
    v19 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(self, "articleLikingStatus") == 1}];
    [v5 setObject:v19 forKeyedSubscript:@"liked"];

    v20 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(self, "articleLikingStatus") == 2}];
    [v5 setObject:v20 forKeyedSubscript:@"disliked"];
  }

  if ([self hasArticleBeenMarkedOffensive])
  {
    v21 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "hasArticleBeenMarkedOffensive")}];
    [v5 setObject:v21 forKeyedSubscript:@"offensive"];
  }

  if ([self listenedCount])
  {
    v22 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(self, "listenedCount")}];
    [v5 setObject:v22 forKeyedSubscript:@"listenedCount"];
  }

  [self listeningProgress];
  if (v23 > 0.0)
  {
    v24 = MEMORY[0x1E696AD98];
    [self listeningProgress];
    v25 = [v24 numberWithDouble:?];
    [v5 setObject:v25 forKeyedSubscript:@"listeningProgress"];
  }

  if ([self readCount])
  {
    v26 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(self, "readCount")}];
    [v5 setObject:v26 forKeyedSubscript:@"readCount"];
  }

  if ([self isPruningDisabled])
  {
    [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"pruningDisabled"];
  }

  return v5;
}

- (void)writeToKeyValuePair:()FCReadingHistory
{
  v4 = a3;
  [v4 setValueType:{objc_msgSend(objc_opt_class(), "keyValuePairType")}];
  [v4 setReadingHistoryItem:self];
}

@end