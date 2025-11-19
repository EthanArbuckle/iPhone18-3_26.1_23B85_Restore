@interface MUPlaceEnrichmentAction
- (BOOL)isEqual:(id)a3;
- (MUPlaceEnrichmentAction)initWithActionType:(unint64_t)a3 isValidated:(BOOL)a4 mkActionType:(unint64_t)a5 metadata:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MUPlaceEnrichmentAction

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v10 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(MUPlaceEnrichmentAction *)v6 actionType];
    if (v7 == [(MUPlaceEnrichmentAction *)self actionType])
    {
      v8 = [(MUPlaceEnrichmentAction *)v6 enrichmentAction];
      v9 = [(MUPlaceEnrichmentAction *)self enrichmentAction];
      v10 = [v8 isEqualToDictionary:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = self;
  objc_sync_enter(v5);
  objc_storeStrong(v4 + 1, v5->_enrichmentAction);
  objc_sync_exit(v5);

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MUPlaceEnrichmentAction *)self enrichmentAction];
  v5 = v4;
  v6 = self->_actionType - 1;
  if (v6 > 0xD)
  {
    v7 = @"Unknown";
  }

  else
  {
    v7 = off_1E8218C30[v6];
  }

  v8 = [v3 stringWithFormat:@"%@, Type: %@", v4, v7];

  return v8;
}

- (MUPlaceEnrichmentAction)initWithActionType:(unint64_t)a3 isValidated:(BOOL)a4 mkActionType:(unint64_t)a5 metadata:(id)a6
{
  v32 = *MEMORY[0x1E69E9840];
  v9 = a6;
  v29.receiver = self;
  v29.super_class = MUPlaceEnrichmentAction;
  v10 = [(MUPlaceEnrichmentAction *)&v29 init];
  if (!v10)
  {
    goto LABEL_17;
  }

  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{@"actionType", @"isValidated", 0}];
  v12 = objc_alloc(MEMORY[0x1E695DF70]);
  if (a3 - 1 > 0xD)
  {
    v13 = @"Unknown";
  }

  else
  {
    v13 = off_1E8218C30[a3 - 1];
  }

  v14 = NSStringFromBOOL();
  v15 = [v12 initWithObjects:{v13, v14, 0}];

  if (a3 != 12)
  {
    if (a3 != 13 || !v9)
    {
      goto LABEL_12;
    }

    v17 = @"subActions";
    goto LABEL_11;
  }

  v16 = [v9 objectForKeyedSubscript:@"appCategory"];

  if (v16)
  {
    v17 = @"appCategory";
LABEL_11:
    [v11 addObject:v17];
    v18 = [v9 objectForKeyedSubscript:v17];
    [v15 addObject:v18];
  }

LABEL_12:
  v10->_actionType = a3;
  v19 = MEMORY[0x1E695DF20];
  v20 = [v15 copy];
  v21 = [v11 copy];
  v22 = [v19 dictionaryWithObjects:v20 forKeys:v21];
  enrichmentAction = v10->_enrichmentAction;
  v10->_enrichmentAction = v22;

  v10->_mkActionType = a5;
  if (MUGetMUPlaceEnrichmentActionLog_onceToken != -1)
  {
    dispatch_once(&MUGetMUPlaceEnrichmentActionLog_onceToken, &__block_literal_global_2588);
  }

  v24 = MUGetMUPlaceEnrichmentActionLog_log;
  if (os_log_type_enabled(MUGetMUPlaceEnrichmentActionLog_log, OS_LOG_TYPE_DEBUG))
  {
    v25 = v24;
    v26 = [(MUPlaceEnrichmentAction *)v10 description];
    *buf = 138412290;
    v31 = v26;
    _os_log_impl(&dword_1C5620000, v25, OS_LOG_TYPE_DEBUG, "Initialized action: %@", buf, 0xCu);
  }

LABEL_17:
  v27 = *MEMORY[0x1E69E9840];
  return v10;
}

@end