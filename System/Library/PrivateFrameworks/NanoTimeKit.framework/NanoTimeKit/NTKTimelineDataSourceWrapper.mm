@interface NTKTimelineDataSourceWrapper
- (NTKTimelineDataSourceWrapper)initWithDataSource:(id)source;
- (void)tl_getCurrentTimelineEntryForIdentifiable:(id)identifiable withHandler:(id)handler;
- (void)tl_getTimelineEntriesForIdentifiable:(id)identifiable afterDate:(id)date limit:(unint64_t)limit withHandler:(id)handler;
@end

@implementation NTKTimelineDataSourceWrapper

- (NTKTimelineDataSourceWrapper)initWithDataSource:(id)source
{
  sourceCopy = source;
  v9.receiver = self;
  v9.super_class = NTKTimelineDataSourceWrapper;
  v6 = [(NTKTimelineDataSourceWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, source);
  }

  return v7;
}

- (void)tl_getCurrentTimelineEntryForIdentifiable:(id)identifiable withHandler:(id)handler
{
  identifiableCopy = identifiable;
  handlerCopy = handler;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__8;
  v16 = __Block_byref_object_dispose__8;
  dataSource = [(NTKTimelineDataSourceWrapper *)self dataSource];
  if (v13[5] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = v13[5];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __86__NTKTimelineDataSourceWrapper_tl_getCurrentTimelineEntryForIdentifiable_withHandler___block_invoke;
    v9[3] = &unk_27877EC30;
    v10 = handlerCopy;
    v11 = &v12;
    [v8 getCurrentTimelineEntryForComplication:identifiableCopy withHandler:v9];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }

  _Block_object_dispose(&v12, 8);
}

void __86__NTKTimelineDataSourceWrapper_tl_getCurrentTimelineEntryForIdentifiable_withHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (void)tl_getTimelineEntriesForIdentifiable:(id)identifiable afterDate:(id)date limit:(unint64_t)limit withHandler:(id)handler
{
  identifiableCopy = identifiable;
  dateCopy = date;
  handlerCopy = handler;
  dataSource = [(NTKTimelineDataSourceWrapper *)self dataSource];
  if (dataSource && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [dataSource getTimelineEntriesForComplication:identifiableCopy afterDate:dateCopy limit:limit withHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

@end