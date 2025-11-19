@interface BDSSharedDataFile
- (BDSSharedDataFile)initWithURL:(id)a3;
- (BOOL)remove:(id *)a3;
- (BOOL)save:(id)a3 error:(id *)a4;
- (id)load:(id *)a3;
@end

@implementation BDSSharedDataFile

- (BDSSharedDataFile)initWithURL:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BDSSharedDataFile;
  v6 = [(BDSSharedDataFile *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, a3);
  }

  return v7;
}

- (id)load:(id *)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1E46294E4;
  v17 = sub_1E46294F4;
  v18 = 0;
  v5 = objc_alloc_init(MEMORY[0x1E696ABF8]);
  v6 = [(BDSSharedDataFile *)self url];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1E46294FC;
  v11[3] = &unk_1E875AB18;
  v11[4] = &v13;
  v12 = 0;
  [v5 coordinateReadingItemAtURL:v6 options:0 error:&v12 byAccessor:v11];
  v7 = v12;

  if (a3 && v7)
  {
    v8 = v7;
    *a3 = v7;
  }

  v9 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v9;
}

- (BOOL)save:(id)a3 error:(id *)a4
{
  v6 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1E46294E4;
  v23 = sub_1E46294F4;
  v24 = 0;
  v7 = objc_alloc_init(MEMORY[0x1E696ABF8]);
  v8 = [(BDSSharedDataFile *)self url];
  v9 = (v20 + 5);
  obj = v20[5];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1E4629714;
  v14[3] = &unk_1E875AB40;
  v16 = &v25;
  v10 = v6;
  v15 = v10;
  v17 = &v19;
  [v7 coordinateWritingItemAtURL:v8 options:0 error:&obj byAccessor:v14];
  objc_storeStrong(v9, obj);

  if (a4)
  {
    v11 = v20[5];
    if (v11)
    {
      *a4 = v11;
    }
  }

  v12 = *(v26 + 24);

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v12;
}

- (BOOL)remove:(id *)a3
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1E46294E4;
  v18 = sub_1E46294F4;
  v19 = 0;
  v5 = objc_alloc_init(MEMORY[0x1E696ABF8]);
  v6 = [(BDSSharedDataFile *)self url];
  v8 = (v15 + 5);
  v7 = v15[5];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1E4629920;
  v12[3] = &unk_1E875AB68;
  v12[4] = &v20;
  v12[5] = &v14;
  obj = v7;
  [v5 coordinateWritingItemAtURL:v6 options:1 error:&obj byAccessor:v12];
  objc_storeStrong(v8, obj);

  if (a3)
  {
    v9 = v15[5];
    if (v9)
    {
      *a3 = v9;
    }
  }

  v10 = *(v21 + 24);

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);
  return v10;
}

@end