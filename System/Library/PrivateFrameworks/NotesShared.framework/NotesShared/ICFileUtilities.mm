@interface ICFileUtilities
+ (id)coordinateDeleteItemAt:(id)at;
+ (id)coordinateDeleteItemAt:(id)at coordinator:(id)coordinator;
+ (id)coordinateMoveItemAt:(id)at to:(id)to;
+ (id)coordinateMoveItemAt:(id)at to:(id)to coordinator:(id)coordinator;
@end

@implementation ICFileUtilities

+ (id)coordinateDeleteItemAt:(id)at
{
  v4 = MEMORY[0x277CCA9E8];
  atCopy = at;
  v6 = objc_alloc_init(v4);
  v7 = [self coordinateDeleteItemAt:atCopy coordinator:v6];

  return v7;
}

+ (id)coordinateDeleteItemAt:(id)at coordinator:(id)coordinator
{
  atCopy = at;
  coordinatorCopy = coordinator;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__6;
  v21 = __Block_byref_object_dispose__6;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v11[5] = &v17;
  v12 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__ICFileUtilities_coordinateDeleteItemAt_coordinator___block_invoke;
  v11[3] = &unk_278195820;
  v11[4] = &v13;
  [coordinatorCopy coordinateWritingItemAtURL:atCopy options:1 error:&v12 byAccessor:v11];
  v7 = v12;
  v8 = v12;
  if ((v14[3] & 1) == 0)
  {
    objc_storeStrong(v18 + 5, v7);
  }

  v9 = v18[5];
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v17, 8);

  return v9;
}

void __54__ICFileUtilities_coordinateDeleteItemAt_coordinator___block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 24) = 1;
  v3 = MEMORY[0x277CCAA00];
  v4 = a2;
  v5 = [v3 defaultManager];
  v8 = 0;
  [v5 removeItemAtURL:v4 error:&v8];

  v6 = v8;
  v7 = v8;

  if (v7 && [v7 code] != 4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v6);
  }
}

+ (id)coordinateMoveItemAt:(id)at to:(id)to
{
  v6 = MEMORY[0x277CCA9E8];
  toCopy = to;
  atCopy = at;
  v9 = objc_alloc_init(v6);
  v10 = [self coordinateMoveItemAt:atCopy to:toCopy coordinator:v9];

  return v10;
}

+ (id)coordinateMoveItemAt:(id)at to:(id)to coordinator:(id)coordinator
{
  atCopy = at;
  toCopy = to;
  coordinatorCopy = coordinator;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__6;
  v30 = __Block_byref_object_dispose__6;
  v31 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [atCopy path];
  v12 = [defaultManager fileExistsAtPath:path];

  if (v12)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v21 = 0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __55__ICFileUtilities_coordinateMoveItemAt_to_coordinator___block_invoke;
    v17[3] = &unk_278195848;
    v19 = &v22;
    v18 = defaultManager;
    v20 = &v26;
    [coordinatorCopy coordinateWritingItemAtURL:atCopy options:2 writingItemAtURL:toCopy options:8 error:&v21 byAccessor:v17];
    v13 = v21;
    v14 = v21;
    if ((v23[3] & 1) == 0)
    {
      objc_storeStrong(v27 + 5, v13);
    }

    v15 = v27[5];

    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA738] code:4 userInfo:0];
    v14 = 0;
  }

  _Block_object_dispose(&v26, 8);

  return v15;
}

void __55__ICFileUtilities_coordinateMoveItemAt_to_coordinator___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  *(*(a1[5] + 8) + 24) = 1;
  v7 = a1[4];
  v8 = [v6 path];
  LOBYTE(v7) = [v7 fileExistsAtPath:v8];

  if ((v7 & 1) == 0)
  {
    v9 = a1[4];
    v13 = 0;
    [v9 moveItemAtURL:v5 toURL:v6 error:&v13];
    v10 = v13;
    v11 = v13;
    v12 = v11;
    if (v11 && [v11 code] != 4)
    {
      objc_storeStrong((*(a1[6] + 8) + 40), v10);
    }
  }
}

@end