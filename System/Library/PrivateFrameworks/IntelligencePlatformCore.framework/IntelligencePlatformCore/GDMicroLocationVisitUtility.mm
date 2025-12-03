@interface GDMicroLocationVisitUtility
- (GDMicroLocationVisitUtility)initWithMicroLocationVisitStream:(id)stream;
- (id)lastMicroLocationVisitEventPriorTo:(id)to;
- (id)microLocationVisitEventPublisherFrom:(id)from to:(id)to;
@end

@implementation GDMicroLocationVisitUtility

- (id)microLocationVisitEventPublisherFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  v9 = objc_msgSend__rawMicroLocationVisitEventPublisherFrom_to_reversed_(self, v8, fromCopy, toCopy, 0);
  v10 = objc_alloc(MEMORY[0x1E696AFB0]);
  v13 = objc_msgSend_initWithUUIDBytes_(v10, v11, &unk_1C4F84171, v12);
  v17 = objc_msgSend_UUIDString(v13, v14, v15, v16);

  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = sub_1C4EF863C;
  v33[4] = sub_1C4EF864C;
  v34 = 0;
  v19 = objc_msgSend_tupleWithFirst_second_(MEMORY[0x1E69C5D98], v18, 0, 0);
  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = sub_1C4EF8654;
  v30 = &unk_1E81EFB58;
  v32 = v33;
  v20 = v17;
  v31 = v20;
  v22 = objc_msgSend_scanWithInitial_nextPartialResult_(v9, v21, v19, &v27);
  v25 = objc_msgSend_flatMapWithTransform_(v22, v23, &unk_1F4416078, v24, v27, v28, v29, v30);

  _Block_object_dispose(v33, 8);

  return v25;
}

- (id)lastMicroLocationVisitEventPriorTo:(id)to
{
  toCopy = to;
  v6 = objc_msgSend__rawMicroLocationVisitEventPublisherFrom_to_reversed_(self, v5, toCopy, 0, 1);
  v7 = objc_alloc(MEMORY[0x1E696AFB0]);
  v10 = objc_msgSend_initWithUUIDBytes_(v7, v8, &unk_1C4F84171, v9);
  v14 = objc_msgSend_UUIDString(v10, v11, v12, v13);

  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = sub_1C4EF863C;
  v48 = sub_1C4EF864C;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_1C4EF863C;
  v42 = sub_1C4EF864C;
  v43 = 0;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = sub_1C4EF8B80;
  v34[3] = &unk_1E81EFB30;
  v15 = v14;
  v35 = v15;
  v36 = &v44;
  v37 = &v38;
  v17 = objc_msgSend_sinkWithCompletion_shouldContinue_(v6, v16, &unk_1F4416058, v34);
  v18 = v45[5];
  if (v39[5])
  {
    if (v18)
    {
      v19 = [GDMicroLocationVisitEvent alloc];
      v23 = objc_msgSend_date(v39[5], v20, v21, v22);
      v27 = objc_msgSend_microLocationIdentifier(v45[5], v24, v25, v26);
      objc_msgSend_probability(v45[5], v28, v29, v30);
      isEnter = objc_msgSend_initWithDate_microLocationIdentifier_probability_isEnter_(v19, v31, v23, v27, 0);
    }

    else
    {
      isEnter = 0;
    }
  }

  else
  {
    isEnter = v18;
  }

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);

  return isEnter;
}

- (GDMicroLocationVisitUtility)initWithMicroLocationVisitStream:(id)stream
{
  streamCopy = stream;
  v9.receiver = self;
  v9.super_class = GDMicroLocationVisitUtility;
  v6 = [(GDMicroLocationVisitUtility *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_microLocationVisitStream, stream);
  }

  return v7;
}

@end