@interface MapsSuggestionsStoredVisitFetchOptions
- (MapsSuggestionsStoredVisitFetchOptions)initWithAscending:(BOOL)ascending confidence:(int64_t)confidence dateInterval:(id)interval labelVisit:(BOOL)visit limit:(id)limit;
- (MapsSuggestionsStoredVisitFetchOptions)initWithAscending:(BOOL)ascending confidence:(int64_t)confidence dateInterval:(id)interval labelVisit:(BOOL)visit limit:(id)limit sources:(id)sources;
- (MapsSuggestionsStoredVisitFetchOptions)initWithRTStoredVisitFetchOptions:(id)options;
- (NSString)uniqueName;
- (id)rtStoredVisitFetchOptions;
@end

@implementation MapsSuggestionsStoredVisitFetchOptions

- (MapsSuggestionsStoredVisitFetchOptions)initWithAscending:(BOOL)ascending confidence:(int64_t)confidence dateInterval:(id)interval labelVisit:(BOOL)visit limit:(id)limit
{
  intervalCopy = interval;
  limitCopy = limit;
  v18.receiver = self;
  v18.super_class = MapsSuggestionsStoredVisitFetchOptions;
  v15 = [(MapsSuggestionsStoredVisitFetchOptions *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_ascending = ascending;
    v15->_confidence = confidence;
    objc_storeStrong(&v15->_dateInterval, interval);
    v16->_labelVisit = visit;
    objc_storeStrong(&v16->_limit, limit);
  }

  return v16;
}

- (MapsSuggestionsStoredVisitFetchOptions)initWithAscending:(BOOL)ascending confidence:(int64_t)confidence dateInterval:(id)interval labelVisit:(BOOL)visit limit:(id)limit sources:(id)sources
{
  intervalCopy = interval;
  limitCopy = limit;
  sourcesCopy = sources;
  v21.receiver = self;
  v21.super_class = MapsSuggestionsStoredVisitFetchOptions;
  v18 = [(MapsSuggestionsStoredVisitFetchOptions *)&v21 init];
  v19 = v18;
  if (v18)
  {
    v18->_ascending = ascending;
    v18->_confidence = confidence;
    objc_storeStrong(&v18->_dateInterval, interval);
    v19->_labelVisit = visit;
    objc_storeStrong(&v19->_limit, limit);
    objc_storeStrong(&v19->_sources, sources);
  }

  return v19;
}

- (MapsSuggestionsStoredVisitFetchOptions)initWithRTStoredVisitFetchOptions:(id)options
{
  optionsCopy = options;
  ascending = [optionsCopy ascending];
  confidence = [optionsCopy confidence];
  v7 = MSgVisitConfidenceForRTVisitConfidence(confidence);
  dateInterval = [optionsCopy dateInterval];
  labelVisit = [optionsCopy labelVisit];
  limit = [optionsCopy limit];
  sources = [optionsCopy sources];
  v12 = [(MapsSuggestionsStoredVisitFetchOptions *)self initWithAscending:ascending confidence:v7 dateInterval:dateInterval labelVisit:labelVisit limit:limit sources:sources];

  return v12;
}

- (id)rtStoredVisitFetchOptions
{
  v3 = objc_alloc(MEMORY[0x1E69990B8]);
  ascending = [(MapsSuggestionsStoredVisitFetchOptions *)self ascending];
  v5 = RTVisitConfidenceForMSgVisitConfidence([(MapsSuggestionsStoredVisitFetchOptions *)self confidence]);
  dateInterval = [(MapsSuggestionsStoredVisitFetchOptions *)self dateInterval];
  labelVisit = [(MapsSuggestionsStoredVisitFetchOptions *)self labelVisit];
  limit = [(MapsSuggestionsStoredVisitFetchOptions *)self limit];
  sources = [(MapsSuggestionsStoredVisitFetchOptions *)self sources];
  v10 = [v3 initWithAscending:ascending confidence:v5 dateInterval:dateInterval labelVisit:labelVisit limit:limit sources:sources];

  return v10;
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

@end