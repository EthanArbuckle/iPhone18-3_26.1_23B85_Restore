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
  if (([a1 flags] & 8) != 0)
  {
    return 1;
  }

  else
  {
    return ([a1 flags] >> 3) & 2;
  }
}

- (id)lastVisitedAt
{
  v1 = MEMORY[0x1E695DF00];
  v2 = [a1 lastVisitedDate];
  v3 = [v1 dateWithPBDate:v2];

  return v3;
}

- (id)lastListenedAt
{
  v1 = MEMORY[0x1E695DF00];
  v2 = [a1 lastListened];
  v3 = [v1 dateWithPBDate:v2];

  return v3;
}

- (id)firstSeenAt
{
  v1 = MEMORY[0x1E695DF00];
  v2 = [a1 firstSeenDate];
  v3 = [v1 dateWithPBDate:v2];

  return v3;
}

- (id)identifier
{
  v1 = [a1 articleID];
  v2 = FCHistoryItemIDFromArticleID(v1);

  return v2;
}

- (void)setLastVisitedAt:()FCReadingHistory
{
  v4 = [a3 pbDate];
  [a1 setLastVisitedDate:v4];
}

- (void)setLastListenedAt:()FCReadingHistory
{
  v4 = [a3 pbDate];
  [a1 setLastListened:v4];
}

- (id)listeningProgressSavedAt
{
  v1 = MEMORY[0x1E695DF00];
  v2 = [a1 listeningProgressSavedDate];
  v3 = [v1 dateWithPBDate:v2];

  return v3;
}

- (void)setListeningProgressSavedAt:()FCReadingHistory
{
  v4 = [a3 pbDate];
  [a1 setListeningProgressSavedDate:v4];
}

- (id)readingPositionSavedAt
{
  v1 = MEMORY[0x1E695DF00];
  v2 = [a1 readingPositionSavedDate];
  v3 = [v1 dateWithPBDate:v2];

  return v3;
}

- (void)setReadingPositionSavedAt:()FCReadingHistory
{
  v4 = [a3 pbDate];
  [a1 setReadingPositionSavedDate:v4];
}

- (void)setFirstSeenAt:()FCReadingHistory
{
  v4 = [a3 pbDate];
  [a1 setFirstSeenDate:v4];
}

- (id)firstSeenAtOfMaxVersionSeen
{
  v1 = MEMORY[0x1E695DF00];
  v2 = [a1 firstSeenDateOfMaxVersionSeen];
  v3 = [v1 dateWithPBDate:v2];

  return v3;
}

- (void)setFirstSeenAtOfMaxVersionSeen:()FCReadingHistory
{
  v4 = [a3 pbDate];
  [a1 setFirstSeenDateOfMaxVersionSeen:v4];
}

- (uint64_t)setHasArticleBeenRead:()FCReadingHistory
{
  v4 = [a1 flags] & 0xFFFFFFFE | a3;

  return [a1 setFlags:v4];
}

- (uint64_t)setHasArticleBeenSeen:()FCReadingHistory
{
  v5 = [a1 flags] & 0xFFFFFFFDLL;
  if (a3)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  return [a1 setFlags:v5 | v6];
}

- (uint64_t)setHasArticleBeenMarkedOffensive:()FCReadingHistory
{
  v5 = [a1 flags] & 0xFFFFFFFBLL;
  if (a3)
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  return [a1 setFlags:v5 | v6];
}

- (uint64_t)setHasArticleBeenConsumed:()FCReadingHistory
{
  v5 = [a1 flags] & 0xFFFFFFDFLL;
  if (a3)
  {
    v6 = 32;
  }

  else
  {
    v6 = 0;
  }

  return [a1 setFlags:v5 | v6];
}

- (uint64_t)setHasArticleCompletedListening:()FCReadingHistory
{
  v5 = [a1 flags] & 0xFFFFFFBFLL;
  if (a3)
  {
    v6 = 64;
  }

  else
  {
    v6 = 0;
  }

  return [a1 setFlags:v5 | v6];
}

- (uint64_t)setHasArticleCompletedReading:()FCReadingHistory
{
  v5 = [a1 flags] & 0xFFFFFEFFLL;
  if (a3)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  return [a1 setFlags:v5 | v6];
}

- (uint64_t)setHasArticleBeenRemovedFromAudio:()FCReadingHistory
{
  v5 = [a1 flags] & 0xFFFFFDFFLL;
  if (a3)
  {
    v6 = 512;
  }

  else
  {
    v6 = 0;
  }

  return [a1 setFlags:v5 | v6];
}

- (uint64_t)setArticleLikingStatus:()FCReadingHistory
{
  v5 = [a1 flags] & 0xFFFFFFE7;
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

  return [a1 setFlags:v7];
}

- (uint64_t)setPruningDisabled:()FCReadingHistory
{
  v5 = [a1 flags] & 0xFFFFFF7FLL;
  if (a3)
  {
    v6 = 128;
  }

  else
  {
    v6 = 0;
  }

  return [a1 setFlags:v5 | v6];
}

- (id)asCKRecord
{
  if (qword_1EB95A858 != -1)
  {
    dispatch_once(&qword_1EB95A858, &__block_literal_global_356);
  }

  v2 = objc_alloc(MEMORY[0x1E695BA70]);
  v3 = [a1 identifier];
  v4 = [v2 initWithRecordName:v3 zoneID:_MergedGlobals_14];

  v5 = [objc_alloc(MEMORY[0x1E695BA60]) initWithRecordType:@"ReadingHistoryItem" recordID:v4];
  v6 = [a1 articleID];
  [v5 setObject:v6 forKeyedSubscript:@"articleID"];

  v7 = [a1 sourceChannelTagID];
  [v5 setObject:v7 forKeyedSubscript:@"sourceChannelTagID"];

  v8 = [a1 deviceID];
  [v5 setObject:v8 forKeyedSubscript:@"deviceID"];

  v9 = [a1 lastVisitedAt];
  [v5 setObject:v9 forKeyedSubscript:@"lastVisited"];

  v10 = [a1 lastListenedAt];
  [v5 setObject:v10 forKeyedSubscript:@"lastListened"];

  v11 = [a1 listeningProgressSavedAt];
  [v5 setObject:v11 forKeyedSubscript:@"listeningProgressLastSaved"];

  v12 = [a1 readingPositionSavedAt];
  [v5 setObject:v12 forKeyedSubscript:@"readingPositionLastSaved"];

  v13 = [a1 readingPosition];
  [v5 setObject:v13 forKeyedSubscript:@"readingPosition"];

  if ([a1 hasArticleBeenRead])
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a1, "hasArticleBeenRead")}];
    [v5 setObject:v14 forKeyedSubscript:@"articleRead"];
  }

  if ([a1 hasArticleBeenSeen])
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a1, "hasArticleBeenSeen")}];
    [v5 setObject:v15 forKeyedSubscript:@"articleSeen"];
  }

  if ([a1 hasArticleCompletedListening])
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a1, "hasArticleCompletedListening")}];
    [v5 setObject:v16 forKeyedSubscript:@"completedListening"];
  }

  if ([a1 hasArticleCompletedReading])
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a1, "hasArticleCompletedReading")}];
    [v5 setObject:v17 forKeyedSubscript:@"completedReading"];
  }

  if ([a1 hasArticleBeenConsumed])
  {
    v18 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a1, "hasArticleBeenConsumed")}];
    [v5 setObject:v18 forKeyedSubscript:@"articleConsumed"];
  }

  if ([a1 articleLikingStatus])
  {
    v19 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(a1, "articleLikingStatus") == 1}];
    [v5 setObject:v19 forKeyedSubscript:@"liked"];

    v20 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(a1, "articleLikingStatus") == 2}];
    [v5 setObject:v20 forKeyedSubscript:@"disliked"];
  }

  if ([a1 hasArticleBeenMarkedOffensive])
  {
    v21 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a1, "hasArticleBeenMarkedOffensive")}];
    [v5 setObject:v21 forKeyedSubscript:@"offensive"];
  }

  if ([a1 listenedCount])
  {
    v22 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(a1, "listenedCount")}];
    [v5 setObject:v22 forKeyedSubscript:@"listenedCount"];
  }

  [a1 listeningProgress];
  if (v23 > 0.0)
  {
    v24 = MEMORY[0x1E696AD98];
    [a1 listeningProgress];
    v25 = [v24 numberWithDouble:?];
    [v5 setObject:v25 forKeyedSubscript:@"listeningProgress"];
  }

  if ([a1 readCount])
  {
    v26 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(a1, "readCount")}];
    [v5 setObject:v26 forKeyedSubscript:@"readCount"];
  }

  if ([a1 isPruningDisabled])
  {
    [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"pruningDisabled"];
  }

  return v5;
}

- (void)writeToKeyValuePair:()FCReadingHistory
{
  v4 = a3;
  [v4 setValueType:{objc_msgSend(objc_opt_class(), "keyValuePairType")}];
  [v4 setReadingHistoryItem:a1];
}

@end