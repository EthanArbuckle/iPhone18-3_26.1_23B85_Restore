@interface FCUserEventHistoryMetadata
+ (id)emptyWithSessionsOnDiskSize:(int64_t)a3;
- (FCUserEventHistoryMetadata)initWithAggregateStoreGenerationTime:(int64_t)a3 aggregateTotalCount:(int64_t)a4 meanCountOfEvents:(double)a5 sessionsOnDiskSize:(int64_t)a6 standardDeviationOfEvents:(double)a7 totalEventsCount:(int64_t)a8 headlineEventCount:(int64_t)a9 headlinesWithValidTitleEmbeddingsEventCount:(int64_t)a10 headlinesWithInvalidTitleEmbeddingsEventCount:(int64_t)a11 headlinesWithValidBodyEmbeddingsEventCount:(int64_t)a12 headlinesWithInvalidBodyEmbeddingsEventCount:(int64_t)a13 eventCounts:(id)a14 aggregateStoreData:(id)a15;
- (id)description;
@end

@implementation FCUserEventHistoryMetadata

- (FCUserEventHistoryMetadata)initWithAggregateStoreGenerationTime:(int64_t)a3 aggregateTotalCount:(int64_t)a4 meanCountOfEvents:(double)a5 sessionsOnDiskSize:(int64_t)a6 standardDeviationOfEvents:(double)a7 totalEventsCount:(int64_t)a8 headlineEventCount:(int64_t)a9 headlinesWithValidTitleEmbeddingsEventCount:(int64_t)a10 headlinesWithInvalidTitleEmbeddingsEventCount:(int64_t)a11 headlinesWithValidBodyEmbeddingsEventCount:(int64_t)a12 headlinesWithInvalidBodyEmbeddingsEventCount:(int64_t)a13 eventCounts:(id)a14 aggregateStoreData:(id)a15
{
  v23 = a14;
  v24 = a15;
  v29.receiver = self;
  v29.super_class = FCUserEventHistoryMetadata;
  v25 = [(FCUserEventHistoryMetadata *)&v29 init];
  v26 = v25;
  if (v25)
  {
    v25->_sessionsOnDiskSize = a6;
    v25->_aggregateStoreGenerationTime = a3;
    v25->_aggregateTotalCount = a4;
    v25->_meanCountOfEvents = a5;
    v25->_standardDeviationOfEvents = a7;
    v25->_totalEventsCount = a8;
    v25->_headlineEventCount = a9;
    v25->_headlinesWithValidTitleEmbeddingsEventCount = a10;
    v25->_headlinesWithInvalidTitleEmbeddingsEventCount = a11;
    v25->_headlinesWithValidBodyEmbeddingsEventCount = a12;
    v25->_headlinesWithInvalidBodyEmbeddingsEventCount = a13;
    objc_storeStrong(&v25->_eventCounts, a14);
    objc_storeStrong(&v26->_aggregateStoreData, a15);
  }

  return v26;
}

+ (id)emptyWithSessionsOnDiskSize:(int64_t)a3
{
  v4 = [a1 alloc];
  v5 = +[FCUserEventHistoryEventCounts empty];
  v6 = +[FCUserEventHistoryAggregateStoreData empty];
  v7 = [v4 initWithAggregateStoreGenerationTime:-1 aggregateTotalCount:-1 meanCountOfEvents:a3 sessionsOnDiskSize:-1 standardDeviationOfEvents:-1 totalEventsCount:-1 headlineEventCount:-1.0 headlinesWithValidTitleEmbeddingsEventCount:-1.0 headlinesWithInvalidTitleEmbeddingsEventCount:-1 headlinesWithValidBodyEmbeddingsEventCount:-1 headlinesWithInvalidBodyEmbeddingsEventCount:-1 eventCounts:v5 aggregateStoreData:v6];

  return v7;
}

- (id)description
{
  v20 = MEMORY[0x1E696AEC0];
  v19 = [(FCUserEventHistoryMetadata *)self aggregateStoreGenerationTime];
  v3 = [(FCUserEventHistoryMetadata *)self sessionsOnDiskSize];
  v4 = [(FCUserEventHistoryMetadata *)self aggregateTotalCount];
  [(FCUserEventHistoryMetadata *)self meanCountOfEvents];
  v6 = v5;
  [(FCUserEventHistoryMetadata *)self standardDeviationOfEvents];
  v8 = v7;
  v9 = [(FCUserEventHistoryMetadata *)self totalEventsCount];
  v10 = [(FCUserEventHistoryMetadata *)self headlineEventCount];
  v11 = [(FCUserEventHistoryMetadata *)self headlinesWithValidTitleEmbeddingsEventCount];
  v12 = [(FCUserEventHistoryMetadata *)self headlinesWithInvalidTitleEmbeddingsEventCount];
  v13 = [(FCUserEventHistoryMetadata *)self headlinesWithValidBodyEmbeddingsEventCount];
  v14 = [(FCUserEventHistoryMetadata *)self headlinesWithInvalidBodyEmbeddingsEventCount];
  v15 = [(FCUserEventHistoryMetadata *)self eventCounts];
  v16 = [(FCUserEventHistoryMetadata *)self aggregateStoreData];
  v17 = [v20 stringWithFormat:@"User Event History Metadata { aggregateStoreGenerationTime: %lld sessionsOnDiskSize: %lld aggregateTotalCount: %lld meanCountOfEvents: %.4f standardDeviationOfEvents: %.4f totalEventsCount: %lld headlineEventCount: %lld headlinesWithValidTitleEmbeddingsEventCount: %lld headlinesWithInvalidTitleEmbeddingsEventCount: %lld headlinesWithValidBodyEmbeddingsEventCount: %lld headlinesWithInvalidBodyEmbeddingsEventCount: %lld eventCounts: %@ aggregateStoreData: %@ }", v19, v3, v4, v6, v8, v9, v10, v11, v12, v13, v14, v15, v16];

  return v17;
}

@end