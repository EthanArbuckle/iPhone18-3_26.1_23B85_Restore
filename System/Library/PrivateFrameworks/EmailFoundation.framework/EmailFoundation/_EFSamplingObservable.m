@interface _EFSamplingObservable
- (_EFSamplingObservable)initWithObservable:(id)a3 sampler:(id)a4;
- (id)subscribe:(id)a3;
@end

@implementation _EFSamplingObservable

- (_EFSamplingObservable)initWithObservable:(id)a3 sampler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _EFSamplingObservable;
  v9 = [(_EFSamplingObservable *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_observable, a3);
    objc_storeStrong(&v10->_sampler, a4);
  }

  return v10;
}

- (id)subscribe:(id)a3
{
  v27 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E696AD10]);
  v57[0] = 0;
  v57[1] = v57;
  v57[2] = 0x3032000000;
  v57[3] = __Block_byref_object_copy_;
  v57[4] = __Block_byref_object_dispose_;
  v58 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __35___EFSamplingObservable_subscribe___block_invoke;
  aBlock[3] = &unk_1E8248670;
  v5 = v4;
  v55 = v5;
  v56 = v57;
  v6 = _Block_copy(aBlock);
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __35___EFSamplingObservable_subscribe___block_invoke_2;
  v50[3] = &unk_1E8248698;
  v7 = v5;
  v51 = v7;
  v53 = v57;
  v8 = v27;
  v52 = v8;
  v9 = _Block_copy(v50);
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __35___EFSamplingObservable_subscribe___block_invoke_3;
  v47[3] = &unk_1E82486C0;
  v28 = v7;
  v48 = v28;
  v49 = v57;
  v29 = _Block_copy(v47);
  sampler = self->_sampler;
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __35___EFSamplingObservable_subscribe___block_invoke_4;
  v45[3] = &unk_1E8248620;
  v11 = v9;
  v46 = v11;
  v12 = [EFObserver observerWithResultBlock:v45, v6, v27];
  v13 = [(EFObservable *)sampler subscribe:v12];

  observable = self->_observable;
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __35___EFSamplingObservable_subscribe___block_invoke_5;
  v43[3] = &unk_1E8248620;
  v15 = v6;
  v44 = v15;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __35___EFSamplingObservable_subscribe___block_invoke_6;
  v38[3] = &unk_1E82486E8;
  v39 = v13;
  v16 = v11;
  v41 = v16;
  v40 = v8;
  v42 = v29;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __35___EFSamplingObservable_subscribe___block_invoke_7;
  v34[3] = &unk_1E8248710;
  v17 = v39;
  v35 = v17;
  v18 = v40;
  v36 = v18;
  v19 = v42;
  v37 = v19;
  v20 = [EFObserver observerWithResultBlock:v43 completionBlock:v38 failureBlock:v34];
  v21 = [(EFObservable *)observable subscribe:v20];

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __35___EFSamplingObservable_subscribe___block_invoke_8;
  v30[3] = &unk_1E8248738;
  v22 = v17;
  v31 = v22;
  v32 = v21;
  v23 = v19;
  v33 = v23;
  v24 = v21;
  v25 = [EFManualCancelationToken tokenWithCancelationBlock:v30];

  _Block_object_dispose(v57, 8);

  return v25;
}

@end