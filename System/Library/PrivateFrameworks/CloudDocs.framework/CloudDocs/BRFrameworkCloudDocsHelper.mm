@interface BRFrameworkCloudDocsHelper
- (id)queryPathsForPersona:(id)a3 withError:(id *)a4;
@end

@implementation BRFrameworkCloudDocsHelper

- (id)queryPathsForPersona:(id)a3 withError:(id *)a4
{
  v5 = a3;
  v6 = [BRCloudDocsHelper queryFastPathsForPrimaryPersona:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = +[BRDaemonConnection defaultConnection];
    v10 = [v9 newSyncProxy];

    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__1;
    v23 = __Block_byref_object_dispose__1;
    v24 = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__1;
    v17 = __Block_byref_object_dispose__1;
    v18 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __61__BRFrameworkCloudDocsHelper_queryPathsForPersona_withError___block_invoke;
    v12[3] = &unk_1E7A14B18;
    v12[4] = &v19;
    v12[5] = &v13;
    [v10 queryPathsForPersona:v5 reply:v12];
    if (a4)
    {
      *a4 = v14[5];
    }

    v8 = v20[5];
    _Block_object_dispose(&v13, 8);

    _Block_object_dispose(&v19, 8);
  }

  return v8;
}

void __61__BRFrameworkCloudDocsHelper_queryPathsForPersona_withError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

@end