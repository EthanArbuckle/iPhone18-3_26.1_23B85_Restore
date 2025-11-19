@interface MapsSuggestionsStoredVisitFetchOptions
- (MapsSuggestionsStoredVisitFetchOptions)initWithAscending:(BOOL)a3 confidence:(int64_t)a4 dateInterval:(id)a5 labelVisit:(BOOL)a6 limit:(id)a7;
- (MapsSuggestionsStoredVisitFetchOptions)initWithAscending:(BOOL)a3 confidence:(int64_t)a4 dateInterval:(id)a5 labelVisit:(BOOL)a6 limit:(id)a7 sources:(id)a8;
- (MapsSuggestionsStoredVisitFetchOptions)initWithRTStoredVisitFetchOptions:(id)a3;
- (NSString)uniqueName;
- (id)rtStoredVisitFetchOptions;
@end

@implementation MapsSuggestionsStoredVisitFetchOptions

- (MapsSuggestionsStoredVisitFetchOptions)initWithAscending:(BOOL)a3 confidence:(int64_t)a4 dateInterval:(id)a5 labelVisit:(BOOL)a6 limit:(id)a7
{
  v13 = a5;
  v14 = a7;
  v18.receiver = self;
  v18.super_class = MapsSuggestionsStoredVisitFetchOptions;
  v15 = [(MapsSuggestionsStoredVisitFetchOptions *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_ascending = a3;
    v15->_confidence = a4;
    objc_storeStrong(&v15->_dateInterval, a5);
    v16->_labelVisit = a6;
    objc_storeStrong(&v16->_limit, a7);
  }

  return v16;
}

- (MapsSuggestionsStoredVisitFetchOptions)initWithAscending:(BOOL)a3 confidence:(int64_t)a4 dateInterval:(id)a5 labelVisit:(BOOL)a6 limit:(id)a7 sources:(id)a8
{
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v21.receiver = self;
  v21.super_class = MapsSuggestionsStoredVisitFetchOptions;
  v18 = [(MapsSuggestionsStoredVisitFetchOptions *)&v21 init];
  v19 = v18;
  if (v18)
  {
    v18->_ascending = a3;
    v18->_confidence = a4;
    objc_storeStrong(&v18->_dateInterval, a5);
    v19->_labelVisit = a6;
    objc_storeStrong(&v19->_limit, a7);
    objc_storeStrong(&v19->_sources, a8);
  }

  return v19;
}

- (MapsSuggestionsStoredVisitFetchOptions)initWithRTStoredVisitFetchOptions:(id)a3
{
  v4 = a3;
  v5 = [v4 ascending];
  v6 = [v4 confidence];
  v7 = MSgVisitConfidenceForRTVisitConfidence(v6);
  v8 = [v4 dateInterval];
  v9 = [v4 labelVisit];
  v10 = [v4 limit];
  v11 = [v4 sources];
  v12 = [(MapsSuggestionsStoredVisitFetchOptions *)self initWithAscending:v5 confidence:v7 dateInterval:v8 labelVisit:v9 limit:v10 sources:v11];

  return v12;
}

- (id)rtStoredVisitFetchOptions
{
  v3 = objc_alloc(MEMORY[0x1E69990B8]);
  v4 = [(MapsSuggestionsStoredVisitFetchOptions *)self ascending];
  v5 = RTVisitConfidenceForMSgVisitConfidence([(MapsSuggestionsStoredVisitFetchOptions *)self confidence]);
  v6 = [(MapsSuggestionsStoredVisitFetchOptions *)self dateInterval];
  v7 = [(MapsSuggestionsStoredVisitFetchOptions *)self labelVisit];
  v8 = [(MapsSuggestionsStoredVisitFetchOptions *)self limit];
  v9 = [(MapsSuggestionsStoredVisitFetchOptions *)self sources];
  v10 = [v3 initWithAscending:v4 confidence:v5 dateInterval:v6 labelVisit:v7 limit:v8 sources:v9];

  return v10;
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

@end