@interface MapsSuggestionsRealRoutineConnector
- (MapsSuggestionsRealRoutineConnector)init;
- (void)fetchNextPLOIsFromLocation:(id)location startDate:(id)date timeInterval:(double)interval withHandler:(id)handler;
@end

@implementation MapsSuggestionsRealRoutineConnector

- (MapsSuggestionsRealRoutineConnector)init
{
  v6.receiver = self;
  v6.super_class = MapsSuggestionsRealRoutineConnector;
  v2 = [(MapsSuggestionsRealRoutineConnector *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E6999090]);
    routineManager = v2->_routineManager;
    v2->_routineManager = v3;
  }

  return v2;
}

- (void)fetchNextPLOIsFromLocation:(id)location startDate:(id)date timeInterval:(double)interval withHandler:(id)handler
{
  handlerCopy = handler;
  dateCopy = date;
  locationCopy = location;
  kdebug_trace();
  routineManager = self->_routineManager;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __101__MapsSuggestionsRealRoutineConnector_fetchNextPLOIsFromLocation_startDate_timeInterval_withHandler___block_invoke;
  v15[3] = &unk_1E81F5230;
  v16 = handlerCopy;
  v14 = handlerCopy;
  [(RTRoutineManager *)routineManager fetchNextPredictedLocationsOfInterestFromLocation:locationCopy startDate:dateCopy timeInterval:v15 withHandler:interval];
}

void __101__MapsSuggestionsRealRoutineConnector_fetchNextPLOIsFromLocation_startDate_timeInterval_withHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  kdebug_trace();
  (*(*(a1 + 32) + 16))();
}

@end