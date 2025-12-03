@interface FCUserEventHistoryMetadata
+ (id)emptyWithSessionsOnDiskSize:(int64_t)size;
- (FCUserEventHistoryMetadata)initWithAggregateStoreGenerationTime:(int64_t)time aggregateTotalCount:(int64_t)count meanCountOfEvents:(double)events sessionsOnDiskSize:(int64_t)size standardDeviationOfEvents:(double)ofEvents totalEventsCount:(int64_t)eventsCount headlineEventCount:(int64_t)eventCount headlinesWithValidTitleEmbeddingsEventCount:(int64_t)self0 headlinesWithInvalidTitleEmbeddingsEventCount:(int64_t)self1 headlinesWithValidBodyEmbeddingsEventCount:(int64_t)self2 headlinesWithInvalidBodyEmbeddingsEventCount:(int64_t)self3 eventCounts:(id)self4 aggregateStoreData:(id)self5;
- (id)description;
@end

@implementation FCUserEventHistoryMetadata

- (FCUserEventHistoryMetadata)initWithAggregateStoreGenerationTime:(int64_t)time aggregateTotalCount:(int64_t)count meanCountOfEvents:(double)events sessionsOnDiskSize:(int64_t)size standardDeviationOfEvents:(double)ofEvents totalEventsCount:(int64_t)eventsCount headlineEventCount:(int64_t)eventCount headlinesWithValidTitleEmbeddingsEventCount:(int64_t)self0 headlinesWithInvalidTitleEmbeddingsEventCount:(int64_t)self1 headlinesWithValidBodyEmbeddingsEventCount:(int64_t)self2 headlinesWithInvalidBodyEmbeddingsEventCount:(int64_t)self3 eventCounts:(id)self4 aggregateStoreData:(id)self5
{
  countsCopy = counts;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = FCUserEventHistoryMetadata;
  v25 = [(FCUserEventHistoryMetadata *)&v29 init];
  v26 = v25;
  if (v25)
  {
    v25->_sessionsOnDiskSize = size;
    v25->_aggregateStoreGenerationTime = time;
    v25->_aggregateTotalCount = count;
    v25->_meanCountOfEvents = events;
    v25->_standardDeviationOfEvents = ofEvents;
    v25->_totalEventsCount = eventsCount;
    v25->_headlineEventCount = eventCount;
    v25->_headlinesWithValidTitleEmbeddingsEventCount = embeddingsEventCount;
    v25->_headlinesWithInvalidTitleEmbeddingsEventCount = titleEmbeddingsEventCount;
    v25->_headlinesWithValidBodyEmbeddingsEventCount = bodyEmbeddingsEventCount;
    v25->_headlinesWithInvalidBodyEmbeddingsEventCount = invalidBodyEmbeddingsEventCount;
    objc_storeStrong(&v25->_eventCounts, counts);
    objc_storeStrong(&v26->_aggregateStoreData, data);
  }

  return v26;
}

+ (id)emptyWithSessionsOnDiskSize:(int64_t)size
{
  v4 = [self alloc];
  v5 = +[FCUserEventHistoryEventCounts empty];
  v6 = +[FCUserEventHistoryAggregateStoreData empty];
  v7 = [v4 initWithAggregateStoreGenerationTime:-1 aggregateTotalCount:-1 meanCountOfEvents:size sessionsOnDiskSize:-1 standardDeviationOfEvents:-1 totalEventsCount:-1 headlineEventCount:-1.0 headlinesWithValidTitleEmbeddingsEventCount:-1.0 headlinesWithInvalidTitleEmbeddingsEventCount:-1 headlinesWithValidBodyEmbeddingsEventCount:-1 headlinesWithInvalidBodyEmbeddingsEventCount:-1 eventCounts:v5 aggregateStoreData:v6];

  return v7;
}

- (id)description
{
  v20 = MEMORY[0x1E696AEC0];
  aggregateStoreGenerationTime = [(FCUserEventHistoryMetadata *)self aggregateStoreGenerationTime];
  sessionsOnDiskSize = [(FCUserEventHistoryMetadata *)self sessionsOnDiskSize];
  aggregateTotalCount = [(FCUserEventHistoryMetadata *)self aggregateTotalCount];
  [(FCUserEventHistoryMetadata *)self meanCountOfEvents];
  v6 = v5;
  [(FCUserEventHistoryMetadata *)self standardDeviationOfEvents];
  v8 = v7;
  totalEventsCount = [(FCUserEventHistoryMetadata *)self totalEventsCount];
  headlineEventCount = [(FCUserEventHistoryMetadata *)self headlineEventCount];
  headlinesWithValidTitleEmbeddingsEventCount = [(FCUserEventHistoryMetadata *)self headlinesWithValidTitleEmbeddingsEventCount];
  headlinesWithInvalidTitleEmbeddingsEventCount = [(FCUserEventHistoryMetadata *)self headlinesWithInvalidTitleEmbeddingsEventCount];
  headlinesWithValidBodyEmbeddingsEventCount = [(FCUserEventHistoryMetadata *)self headlinesWithValidBodyEmbeddingsEventCount];
  headlinesWithInvalidBodyEmbeddingsEventCount = [(FCUserEventHistoryMetadata *)self headlinesWithInvalidBodyEmbeddingsEventCount];
  eventCounts = [(FCUserEventHistoryMetadata *)self eventCounts];
  aggregateStoreData = [(FCUserEventHistoryMetadata *)self aggregateStoreData];
  v17 = [v20 stringWithFormat:@"User Event History Metadata { aggregateStoreGenerationTime: %lld sessionsOnDiskSize: %lld aggregateTotalCount: %lld meanCountOfEvents: %.4f standardDeviationOfEvents: %.4f totalEventsCount: %lld headlineEventCount: %lld headlinesWithValidTitleEmbeddingsEventCount: %lld headlinesWithInvalidTitleEmbeddingsEventCount: %lld headlinesWithValidBodyEmbeddingsEventCount: %lld headlinesWithInvalidBodyEmbeddingsEventCount: %lld eventCounts: %@ aggregateStoreData: %@ }", aggregateStoreGenerationTime, sessionsOnDiskSize, aggregateTotalCount, v6, v8, totalEventsCount, headlineEventCount, headlinesWithValidTitleEmbeddingsEventCount, headlinesWithInvalidTitleEmbeddingsEventCount, headlinesWithValidBodyEmbeddingsEventCount, headlinesWithInvalidBodyEmbeddingsEventCount, eventCounts, aggregateStoreData];

  return v17;
}

@end