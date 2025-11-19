@interface NTKTimelineDataSourceWrapper
- (NTKTimelineDataSourceWrapper)initWithDataSource:(id)a3;
- (void)tl_getCurrentTimelineEntryForIdentifiable:(id)a3 withHandler:(id)a4;
- (void)tl_getTimelineEntriesForIdentifiable:(id)a3 afterDate:(id)a4 limit:(unint64_t)a5 withHandler:(id)a6;
@end

@implementation NTKTimelineDataSourceWrapper

- (NTKTimelineDataSourceWrapper)initWithDataSource:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NTKTimelineDataSourceWrapper;
  v6 = [(NTKTimelineDataSourceWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, a3);
  }

  return v7;
}

- (void)tl_getCurrentTimelineEntryForIdentifiable:(id)a3 withHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__8;
  v16 = __Block_byref_object_dispose__8;
  v17 = [(NTKTimelineDataSourceWrapper *)self dataSource];
  if (v13[5] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = v13[5];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __86__NTKTimelineDataSourceWrapper_tl_getCurrentTimelineEntryForIdentifiable_withHandler___block_invoke;
    v9[3] = &unk_27877EC30;
    v10 = v7;
    v11 = &v12;
    [v8 getCurrentTimelineEntryForComplication:v6 withHandler:v9];
  }

  else
  {
    (*(v7 + 2))(v7, 0);
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

- (void)tl_getTimelineEntriesForIdentifiable:(id)a3 afterDate:(id)a4 limit:(unint64_t)a5 withHandler:(id)a6
{
  v13 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [(NTKTimelineDataSourceWrapper *)self dataSource];
  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v12 getTimelineEntriesForComplication:v13 afterDate:v10 limit:a5 withHandler:v11];
  }

  else
  {
    v11[2](v11, 0);
  }
}

@end