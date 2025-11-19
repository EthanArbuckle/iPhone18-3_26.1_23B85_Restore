@interface GEOAPURLSessionConfig
@end

@implementation GEOAPURLSessionConfig

void __55__GEOAPURLSessionConfig_configForURLSessionConfigType___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = configForURLSessionConfigType__configDict;
  configForURLSessionConfigType__configDict = v2;

  v4 = objc_alloc_init(GEOAPURLSessionConfig);
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  [*(*(*(a1 + 32) + 8) + 40) setType:5];
  [*(*(*(a1 + 32) + 8) + 40) setNoCellAuthType:5];
  [*(*(*(a1 + 32) + 8) + 40) setRequireWifi:1];
  [*(*(*(a1 + 32) + 8) + 40) setRequirePower:1];
  [*(*(*(a1 + 32) + 8) + 40) setDiscretionary:1];
  v7 = *(*(*(a1 + 32) + 8) + 40);
  v8 = configForURLSessionConfigType__configDict;
  v9 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v7, "type")}];
  [v8 setObject:v7 forKeyedSubscript:v9];

  v10 = objc_alloc_init(GEOAPURLSessionConfig);
  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  [*(*(*(a1 + 32) + 8) + 40) setType:4];
  [*(*(*(a1 + 32) + 8) + 40) setNoCellAuthType:4];
  [*(*(*(a1 + 32) + 8) + 40) setRequireWifi:1];
  [*(*(*(a1 + 32) + 8) + 40) setRequirePower:0];
  [*(*(*(a1 + 32) + 8) + 40) setDiscretionary:1];
  v13 = *(*(*(a1 + 32) + 8) + 40);
  v14 = configForURLSessionConfigType__configDict;
  v15 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v13, "type")}];
  [v14 setObject:v13 forKeyedSubscript:v15];

  v16 = objc_alloc_init(GEOAPURLSessionConfig);
  v17 = *(*(a1 + 32) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;

  [*(*(*(a1 + 32) + 8) + 40) setType:3];
  [*(*(*(a1 + 32) + 8) + 40) setNoCellAuthType:5];
  [*(*(*(a1 + 32) + 8) + 40) setRequireWifi:0];
  [*(*(*(a1 + 32) + 8) + 40) setRequirePower:1];
  [*(*(*(a1 + 32) + 8) + 40) setDiscretionary:1];
  v19 = *(*(*(a1 + 32) + 8) + 40);
  v20 = configForURLSessionConfigType__configDict;
  v21 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v19, "type")}];
  [v20 setObject:v19 forKeyedSubscript:v21];

  v22 = objc_alloc_init(GEOAPURLSessionConfig);
  v23 = *(*(a1 + 32) + 8);
  v24 = *(v23 + 40);
  *(v23 + 40) = v22;

  [*(*(*(a1 + 32) + 8) + 40) setType:2];
  [*(*(*(a1 + 32) + 8) + 40) setNoCellAuthType:4];
  [*(*(*(a1 + 32) + 8) + 40) setRequireWifi:0];
  [*(*(*(a1 + 32) + 8) + 40) setRequirePower:0];
  [*(*(*(a1 + 32) + 8) + 40) setDiscretionary:1];
  v25 = *(*(*(a1 + 32) + 8) + 40);
  v26 = configForURLSessionConfigType__configDict;
  v27 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v25, "type")}];
  [v26 setObject:v25 forKeyedSubscript:v27];

  v28 = objc_alloc_init(GEOAPURLSessionConfig);
  v29 = *(*(a1 + 32) + 8);
  v30 = *(v29 + 40);
  *(v29 + 40) = v28;

  [*(*(*(a1 + 32) + 8) + 40) setType:1];
  [*(*(*(a1 + 32) + 8) + 40) setNoCellAuthType:6];
  [*(*(*(a1 + 32) + 8) + 40) setRequireWifi:0];
  [*(*(*(a1 + 32) + 8) + 40) setRequirePower:0];
  [*(*(*(a1 + 32) + 8) + 40) setDiscretionary:0];
  v31 = *(*(*(a1 + 32) + 8) + 40);
  v32 = configForURLSessionConfigType__configDict;
  v33 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v31, "type")}];
  [v32 setObject:v31 forKeyedSubscript:v33];

  v34 = objc_alloc_init(GEOAPURLSessionConfig);
  v35 = *(*(a1 + 32) + 8);
  v36 = *(v35 + 40);
  *(v35 + 40) = v34;

  [*(*(*(a1 + 32) + 8) + 40) setType:6];
  [*(*(*(a1 + 32) + 8) + 40) setNoCellAuthType:6];
  [*(*(*(a1 + 32) + 8) + 40) setRequireWifi:1];
  [*(*(*(a1 + 32) + 8) + 40) setRequirePower:0];
  [*(*(*(a1 + 32) + 8) + 40) setDiscretionary:0];
  v37 = *(*(*(a1 + 32) + 8) + 40);
  v38 = configForURLSessionConfigType__configDict;
  v39 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v37, "type")}];
  [v38 setObject:v37 forKeyedSubscript:v39];

  v40 = objc_alloc_init(GEOAPURLSessionConfig);
  v41 = *(*(a1 + 32) + 8);
  v42 = *(v41 + 40);
  *(v41 + 40) = v40;

  [*(*(*(a1 + 32) + 8) + 40) setType:0];
  v43 = *(*(*(a1 + 32) + 8) + 40);
  v44 = configForURLSessionConfigType__configDict;
  v45 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v43, "type")}];
  [v44 setObject:v43 forKeyedSubscript:v45];
}

@end