@interface MPModelPlaylistEntry
@end

@implementation MPModelPlaylistEntry

void __130__MPModelPlaylistEntry_MPCStoreFrontLocalEquivalencyMiddlewareAdditions__MPC_modelObjectWithStoreFrontLocalEquivalentModelObject___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) song];
  v3 = [*(a1 + 40) song];
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v9 = *(a1 + 32);
    v10 = [v9 identifiers];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __130__MPModelPlaylistEntry_MPCStoreFrontLocalEquivalencyMiddlewareAdditions__MPC_modelObjectWithStoreFrontLocalEquivalentModelObject___block_invoke_2;
    v29[3] = &unk_1E8238AA0;
    v11 = &v30;
    v12 = &v31;
    v30 = v2;
    v31 = v4;
    v13 = v4;
    v14 = v2;
    v15 = v29;
LABEL_9:
    v16 = [v9 copyWithIdentifiers:v10 block:{v15, v20, v21, v22, v23}];
    v17 = *(*(a1 + 48) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    goto LABEL_10;
  }

  v6 = [*(a1 + 32) movie];
  v7 = [*(a1 + 40) movie];
  v8 = v7;
  if (v6 && v7)
  {
    v9 = *(a1 + 32);
    v10 = [v9 identifiers];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __130__MPModelPlaylistEntry_MPCStoreFrontLocalEquivalencyMiddlewareAdditions__MPC_modelObjectWithStoreFrontLocalEquivalentModelObject___block_invoke_3;
    v26[3] = &unk_1E8238AA0;
    v11 = &v27;
    v12 = &v28;
    v27 = v6;
    v28 = v8;
    v13 = v8;
    v14 = v6;
    v15 = v26;
    goto LABEL_9;
  }

  v14 = [*(a1 + 32) tvEpisode];
  v19 = [*(a1 + 40) tvEpisode];
  v13 = v19;
  if (v14 && v19)
  {
    v9 = *(a1 + 32);
    v10 = [v9 identifiers];
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __130__MPModelPlaylistEntry_MPCStoreFrontLocalEquivalencyMiddlewareAdditions__MPC_modelObjectWithStoreFrontLocalEquivalentModelObject___block_invoke_4;
    v23 = &unk_1E8238AA0;
    v11 = &v24;
    v14 = v14;
    v24 = v14;
    v12 = &v25;
    v13 = v13;
    v25 = v13;
    v15 = &v20;
    goto LABEL_9;
  }

LABEL_10:
}

void __130__MPModelPlaylistEntry_MPCStoreFrontLocalEquivalencyMiddlewareAdditions__MPC_modelObjectWithStoreFrontLocalEquivalentModelObject___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v2 MPC_modelObjectWithStoreFrontLocalEquivalentModelObject:v3];
  [v4 setSong:v5];
}

void __130__MPModelPlaylistEntry_MPCStoreFrontLocalEquivalencyMiddlewareAdditions__MPC_modelObjectWithStoreFrontLocalEquivalentModelObject___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v2 MPC_modelObjectWithStoreFrontLocalEquivalentModelObject:v3];
  [v4 setMovie:v5];
}

void __130__MPModelPlaylistEntry_MPCStoreFrontLocalEquivalencyMiddlewareAdditions__MPC_modelObjectWithStoreFrontLocalEquivalentModelObject___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v2 MPC_modelObjectWithStoreFrontLocalEquivalentModelObject:v3];
  [v4 setTvEpisode:v5];
}

@end