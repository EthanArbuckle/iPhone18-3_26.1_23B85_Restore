@interface MUPlaceEnrichmentAction
- (BOOL)isEqual:(id)equal;
- (MUPlaceEnrichmentAction)initWithActionType:(unint64_t)type isValidated:(BOOL)validated mkActionType:(unint64_t)actionType metadata:(id)metadata;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MUPlaceEnrichmentAction

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    actionType = [(MUPlaceEnrichmentAction *)v6 actionType];
    if (actionType == [(MUPlaceEnrichmentAction *)self actionType])
    {
      enrichmentAction = [(MUPlaceEnrichmentAction *)v6 enrichmentAction];
      enrichmentAction2 = [(MUPlaceEnrichmentAction *)self enrichmentAction];
      v10 = [enrichmentAction isEqualToDictionary:enrichmentAction2];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_storeStrong(v4 + 1, selfCopy->_enrichmentAction);
  objc_sync_exit(selfCopy);

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  enrichmentAction = [(MUPlaceEnrichmentAction *)self enrichmentAction];
  v5 = enrichmentAction;
  v6 = self->_actionType - 1;
  if (v6 > 0xD)
  {
    v7 = @"Unknown";
  }

  else
  {
    v7 = off_1E8218C30[v6];
  }

  v8 = [v3 stringWithFormat:@"%@, Type: %@", enrichmentAction, v7];

  return v8;
}

- (MUPlaceEnrichmentAction)initWithActionType:(unint64_t)type isValidated:(BOOL)validated mkActionType:(unint64_t)actionType metadata:(id)metadata
{
  v32 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  v29.receiver = self;
  v29.super_class = MUPlaceEnrichmentAction;
  v10 = [(MUPlaceEnrichmentAction *)&v29 init];
  if (!v10)
  {
    goto LABEL_17;
  }

  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{@"actionType", @"isValidated", 0}];
  v12 = objc_alloc(MEMORY[0x1E695DF70]);
  if (type - 1 > 0xD)
  {
    v13 = @"Unknown";
  }

  else
  {
    v13 = off_1E8218C30[type - 1];
  }

  v14 = NSStringFromBOOL();
  v15 = [v12 initWithObjects:{v13, v14, 0}];

  if (type != 12)
  {
    if (type != 13 || !metadataCopy)
    {
      goto LABEL_12;
    }

    v17 = @"subActions";
    goto LABEL_11;
  }

  v16 = [metadataCopy objectForKeyedSubscript:@"appCategory"];

  if (v16)
  {
    v17 = @"appCategory";
LABEL_11:
    [v11 addObject:v17];
    v18 = [metadataCopy objectForKeyedSubscript:v17];
    [v15 addObject:v18];
  }

LABEL_12:
  v10->_actionType = type;
  v19 = MEMORY[0x1E695DF20];
  v20 = [v15 copy];
  v21 = [v11 copy];
  v22 = [v19 dictionaryWithObjects:v20 forKeys:v21];
  enrichmentAction = v10->_enrichmentAction;
  v10->_enrichmentAction = v22;

  v10->_mkActionType = actionType;
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