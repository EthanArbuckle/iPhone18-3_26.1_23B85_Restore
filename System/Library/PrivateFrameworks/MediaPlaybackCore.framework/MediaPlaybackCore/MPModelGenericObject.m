@interface MPModelGenericObject
@end

@implementation MPModelGenericObject

void __130__MPModelGenericObject_MPCStoreFrontLocalEquivalencyMiddlewareAdditions__MPC_modelObjectWithStoreFrontLocalEquivalentModelObject___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) playlistEntry];
  v3 = [*(a1 + 40) playlistEntry];
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
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __130__MPModelGenericObject_MPCStoreFrontLocalEquivalencyMiddlewareAdditions__MPC_modelObjectWithStoreFrontLocalEquivalentModelObject___block_invoke_2;
    v35[3] = &unk_1E8238A28;
    v11 = &v36;
    v12 = &v37;
    v36 = v2;
    v37 = v4;
    v13 = v4;
    v14 = v2;
    v15 = v35;
LABEL_9:
    v16 = [v9 copyWithIdentifiers:v10 block:{v15, v23, v24, v25, v26}];
    v17 = *(*(a1 + 48) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    goto LABEL_10;
  }

  v6 = [*(a1 + 32) song];
  v7 = [*(a1 + 40) song];
  v8 = v7;
  if (v6 && v7)
  {
    v9 = *(a1 + 32);
    v10 = [v9 identifiers];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __130__MPModelGenericObject_MPCStoreFrontLocalEquivalencyMiddlewareAdditions__MPC_modelObjectWithStoreFrontLocalEquivalentModelObject___block_invoke_3;
    v32[3] = &unk_1E8238A28;
    v11 = &v33;
    v12 = &v34;
    v33 = v6;
    v34 = v8;
    v13 = v8;
    v14 = v6;
    v15 = v32;
    goto LABEL_9;
  }

  v19 = [*(a1 + 32) movie];
  v20 = [*(a1 + 40) movie];
  v21 = v20;
  if (v19 && v20)
  {
    v9 = *(a1 + 32);
    v10 = [v9 identifiers];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __130__MPModelGenericObject_MPCStoreFrontLocalEquivalencyMiddlewareAdditions__MPC_modelObjectWithStoreFrontLocalEquivalentModelObject___block_invoke_4;
    v29[3] = &unk_1E8238A28;
    v11 = &v30;
    v12 = &v31;
    v30 = v19;
    v31 = v21;
    v13 = v21;
    v14 = v19;
    v15 = v29;
    goto LABEL_9;
  }

  v14 = [*(a1 + 32) tvEpisode];
  v22 = [*(a1 + 40) tvEpisode];
  v13 = v22;
  if (v14 && v22)
  {
    v9 = *(a1 + 32);
    v10 = [v9 identifiers];
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __130__MPModelGenericObject_MPCStoreFrontLocalEquivalencyMiddlewareAdditions__MPC_modelObjectWithStoreFrontLocalEquivalentModelObject___block_invoke_5;
    v26 = &unk_1E8238A28;
    v11 = &v27;
    v14 = v14;
    v27 = v14;
    v12 = &v28;
    v13 = v13;
    v28 = v13;
    v15 = &v23;
    goto LABEL_9;
  }

LABEL_10:
}

void __130__MPModelGenericObject_MPCStoreFrontLocalEquivalencyMiddlewareAdditions__MPC_modelObjectWithStoreFrontLocalEquivalentModelObject___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v2 MPC_modelObjectWithStoreFrontLocalEquivalentModelObject:v3];
  [v4 setPlaylistEntry:v5];
}

void __130__MPModelGenericObject_MPCStoreFrontLocalEquivalencyMiddlewareAdditions__MPC_modelObjectWithStoreFrontLocalEquivalentModelObject___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v2 MPC_modelObjectWithStoreFrontLocalEquivalentModelObject:v3];
  [v4 setSong:v5];
}

void __130__MPModelGenericObject_MPCStoreFrontLocalEquivalencyMiddlewareAdditions__MPC_modelObjectWithStoreFrontLocalEquivalentModelObject___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v2 MPC_modelObjectWithStoreFrontLocalEquivalentModelObject:v3];
  [v4 setMovie:v5];
}

void __130__MPModelGenericObject_MPCStoreFrontLocalEquivalencyMiddlewareAdditions__MPC_modelObjectWithStoreFrontLocalEquivalentModelObject___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v2 MPC_modelObjectWithStoreFrontLocalEquivalentModelObject:v3];
  [v4 setTvEpisode:v5];
}

@end