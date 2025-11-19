@interface GDGeoHashVisitUtility
- (GDGeoHashVisitUtility)initWithGeoHashStream:(id)a3;
- (id)geoHashVisitEventPublisherFrom:(id)a3 to:(id)a4 level:(int64_t)a5;
- (id)lastGeoHashVisitEventAt:(id)a3 level:(int64_t)a4;
@end

@implementation GDGeoHashVisitUtility

- (id)geoHashVisitEventPublisherFrom:(id)a3 to:(id)a4 level:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v11 = objc_msgSend__rawGeoHashVisitEventPublisherFrom_to_reversed_level_(self, v10, v8, v9, 0, a5);
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = sub_1C4EF53C4;
  v22[4] = sub_1C4EF53D4;
  v23 = objc_msgSend_lastGeoHashVisitEventAt_level_(self, v12, v8, a5);
  v14 = objc_msgSend_tupleWithFirst_second_(MEMORY[0x1E69C5D98], v13, 0, 0);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_1C4EF53DC;
  v21[3] = &unk_1E81EF970;
  v21[4] = v22;
  v21[5] = a5;
  v16 = objc_msgSend_scanWithInitial_nextPartialResult_(v11, v15, v14, v21);
  v19 = objc_msgSend_flatMapWithTransform_(v16, v17, &unk_1F4415F98, v18);

  _Block_object_dispose(v22, 8);

  return v19;
}

- (id)lastGeoHashVisitEventAt:(id)a3 level:(int64_t)a4
{
  v6 = a3;
  v8 = objc_msgSend__rawGeoHashVisitEventPublisherFrom_to_maxEvents_lastN_reversed_level_(self, v7, v6, 0, 1, 0, 1, a4);
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1C4EF53C4;
  v28 = sub_1C4EF53D4;
  v29 = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_1C4EF57F4;
  v23[3] = &unk_1E81EF948;
  v23[4] = &v24;
  v10 = objc_msgSend_sinkWithCompletion_shouldContinue_(v8, v9, &unk_1F4415F78, v23);
  if (v25[5])
  {
    v11 = [GDGeoHashVisitEvent alloc];
    v15 = objc_msgSend_date(v25[5], v12, v13, v14);
    v19 = objc_msgSend_geoHash(v25[5], v16, v17, v18);
    isEnter_level = objc_msgSend_initWithDate_geoHash_isEnter_level_(v11, v20, v15, v19, 1, a4);
  }

  else
  {
    isEnter_level = 0;
  }

  _Block_object_dispose(&v24, 8);

  return isEnter_level;
}

- (GDGeoHashVisitUtility)initWithGeoHashStream:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = GDGeoHashVisitUtility;
  v6 = [(GDGeoHashVisitUtility *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_geoHashStream, a3);
  }

  return v7;
}

@end