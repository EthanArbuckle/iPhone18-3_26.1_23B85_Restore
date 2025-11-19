@interface CPLGetAccountDSID
@end

@implementation CPLGetAccountDSID

void ___CPLGetAccountDSID_block_invoke(uint64_t a1)
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__2938;
  v31 = __Block_byref_object_dispose__2939;
  v32 = 0;
  v2 = objc_opt_class();
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = ___CPLGetAccountDSID_block_invoke_2;
  v26[3] = &unk_1E861B528;
  v26[4] = &v27;
  [CPLCallObserver observeSyncCallOn:v2 selector:&sel_new block:v26];
  v3 = v28[5];
  if (v3)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__2938;
    v24 = __Block_byref_object_dispose__2939;
    v25 = 0;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = ___CPLGetAccountDSID_block_invoke_122;
    v19[3] = &unk_1E861EC08;
    v19[4] = &v20;
    v19[5] = &v27;
    [CPLCallObserver observeSyncCallOn:v3 selector:sel_aa_primaryAppleAccount block:v19];
    v4 = v21[5];
    if (v4)
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x3032000000;
      v16 = __Block_byref_object_copy__2938;
      v17 = __Block_byref_object_dispose__2939;
      v18 = 0;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = ___CPLGetAccountDSID_block_invoke_2_128;
      v12[3] = &unk_1E861EC08;
      v12[4] = &v13;
      v12[5] = &v20;
      [CPLCallObserver observeSyncCallOn:v4 selector:sel_aa_personID block:v12];
      v5 = v14[5];
      v6 = *(a1 + 32);
      if (v5)
      {
        (*(v6 + 16))(v6, v5, 0);
      }

      else
      {
        v11 = [CPLErrors cplErrorWithCode:150 description:@"No DSID attached to primary Apple Account"];
        (*(v6 + 16))(v6, 0, v11);
      }

      _Block_object_dispose(&v13, 8);
    }

    else
    {
      v9 = *(a1 + 32);
      v10 = [CPLErrors cplErrorWithCode:28 description:@"Could not find primary Apple Account"];
      (*(v9 + 16))(v9, 0, v10);
    }

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = [CPLErrors cplErrorWithCode:150 description:@"Failed to get Account Store"];
    (*(v7 + 16))(v7, 0, v8);
  }

  _Block_object_dispose(&v27, 8);
}

uint64_t ___CPLGetAccountDSID_block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
  v5 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE66BB8](v2, v4);
}

uint64_t ___CPLGetAccountDSID_block_invoke_122(uint64_t a1)
{
  v2 = [*(*(*(a1 + 40) + 8) + 40) aa_primaryAppleAccount];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

uint64_t ___CPLGetAccountDSID_block_invoke_2_128(uint64_t a1)
{
  v2 = [*(*(*(a1 + 40) + 8) + 40) aa_personID];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

@end