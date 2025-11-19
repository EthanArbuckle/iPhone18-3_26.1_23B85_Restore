@interface _IMPersistentTaskReportSetBuilder
- (_IMPersistentTaskReportSetBuilder)init;
- (id)_reportForFlag:(unint64_t)a3 lane:(unint64_t)a4 reason:(int64_t)a5;
- (id)reset;
- (void)recordFlag:(unint64_t)a3 lane:(unint64_t)a4 reason:(int64_t)a5 count:(int64_t)a6;
@end

@implementation _IMPersistentTaskReportSetBuilder

- (_IMPersistentTaskReportSetBuilder)init
{
  v8.receiver = self;
  v8.super_class = _IMPersistentTaskReportSetBuilder;
  v2 = [(_IMPersistentTaskReportSetBuilder *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    reportSetHashMap = v2->_reportSetHashMap;
    v2->_reportSetHashMap = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    reportSet = v2->_reportSet;
    v2->_reportSet = v5;
  }

  return v2;
}

- (id)_reportForFlag:(unint64_t)a3 lane:(unint64_t)a4 reason:(int64_t)a5
{
  v9 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"f%lul%lur%lu", a3, a4, a5);
  v12 = objc_msgSend_reportSetHashMap(self, v10, v11);
  v14 = objc_msgSend_objectForKeyedSubscript_(v12, v13, v9);

  if (!v14)
  {
    v15 = objc_alloc(MEMORY[0x1E69A81D0]);
    v14 = objc_msgSend_initWithTaskFlag_lane_reason_(v15, v16, a3, a4, a5);
    v19 = objc_msgSend_reportSetHashMap(self, v17, v18);
    objc_msgSend_setObject_forKeyedSubscript_(v19, v20, v14, v9);

    v23 = objc_msgSend_reportSet(self, v21, v22);
    objc_msgSend_addObject_(v23, v24, v14);
  }

  v25 = v14;

  return v25;
}

- (void)recordFlag:(unint64_t)a3 lane:(unint64_t)a4 reason:(int64_t)a5 count:(int64_t)a6
{
  v8 = objc_msgSend__reportForFlag_lane_reason_(self, a2, a3, a4, a5);
  objc_msgSend_incrementCount_(v8, v7, a6);
}

- (id)reset
{
  v4 = objc_msgSend_reportSetHashMap(self, a2, v2);
  objc_msgSend_removeAllObjects(v4, v5, v6);

  v9 = objc_msgSend_reportSet(self, v7, v8);
  v12 = objc_msgSend_copy(v9, v10, v11);

  v15 = objc_msgSend_reportSet(self, v13, v14);
  objc_msgSend_removeAllObjects(v15, v16, v17);

  return v12;
}

@end