@interface ContainerBeginPayload
@end

@implementation ContainerBeginPayload

void ___ContainerBeginPayload_block_invoke(id *a1)
{
  v2 = [a1[5] title];
  [a1[4] setObject:v2 forKeyedSubscript:@"container-title"];

  v3 = [a1[5] genericObjectRepresentation];
  v4 = [v3 type];

  if (v4 == 4)
  {
    v8 = [a1[6] playlist];
    v9 = [v8 cloudVersionHash];
    [a1[4] setObject:v9 forKeyedSubscript:@"container-playlist-version-hash"];

    v10 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "isCollaborative")}];
    [a1[4] setObject:v10 forKeyedSubscript:@"container-is-collaborative-playlist"];

    v11 = [v8 type] == 3;
    v12 = [MEMORY[0x1E696AD98] numberWithBool:v11];
    [a1[4] setObject:v12 forKeyedSubscript:@"container-is-playlist-folder"];

    v13 = [a1[5] mpc_nestedPlayEvent];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
      v16 = [v15 genericObjectRepresentation];
      v17 = [v16 anyObject];
      v18 = [v17 identifiers];

      v19 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:5];
      [v19 setObject:0 forKeyedSubscript:@"queue-section-id"];
      v20 = [v18 modelKind];
      [v19 setObject:v20 forKeyedSubscript:@"container-kind"];

      [v19 setObject:v18 forKeyedSubscript:@"container-ids"];
      v21 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:5];
      [v19 setObject:v21 forKeyedSubscript:@"container-metadata"];
      v22 = MEMORY[0x1E69706F8];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = ___ContainerBeginPayload_block_invoke;
      v30[3] = &unk_1E8239310;
      v31 = v21;
      v32 = v15;
      v33 = v16;
      v23 = v19;
      v34 = v23;
      v24 = v16;
      v25 = v15;
      v26 = v21;
      [v22 performWithoutEnforcement:v30];
      v27 = v34;
      v28 = v23;

      [a1[7] setObject:v28 forKeyedSubscript:@"nested-container"];
    }
  }

  else if (v4 == 13)
  {
    v5 = [a1[5] genericObjectRepresentation];
    v29 = [v5 radioStation];

    v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v29, "type")}];
    [a1[4] setObject:v6 forKeyedSubscript:@"container-radio-type"];

    v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v29, "subtype")}];
    [a1[4] setObject:v7 forKeyedSubscript:@"container-radio-subtype"];
  }
}

@end