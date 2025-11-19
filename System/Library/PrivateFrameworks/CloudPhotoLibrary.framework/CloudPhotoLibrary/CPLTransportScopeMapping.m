@interface CPLTransportScopeMapping
- (BOOL)_addTransportScopeForScope:(id)a3 scopes:(id)a4 allowsTentativeTransportScope:(BOOL)a5 useStagingScopeIfNecessary:(BOOL)a6 error:(id *)a7;
- (BOOL)_checkTransportScopeForScopeIdentifier:(id)a3 hasConcreteScope:(BOOL *)a4 error:(id *)a5;
- (BOOL)hasConcreteScopeForScopeWithIdentifier:(id)a3;
- (CPLTransportScopeMapping)initWithTranslator:(id)a3;
- (id)concreteScopeForScopeWithIdentifier:(id)a3;
- (id)description;
- (void)addConcreteScope:(id)a3 forScope:(id)a4;
- (void)addTransportScope:(id)a3 forScope:(id)a4;
- (void)updateWithTransportScopeMapping:(id)a3;
@end

@implementation CPLTransportScopeMapping

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<%@ %p for %@ (count: %lu)>", objc_opt_class(), self, self->_translator, -[NSMutableDictionary count](self->_concreteScopeMapping, "count")];

  return v2;
}

- (void)updateWithTransportScopeMapping:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5 != self)
  {
    v14 = v5;
    if (self->_translator != v5->_translator)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v8 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          translator = self->_translator;
          v10 = v14->_translator;
          *buf = 138412546;
          v16 = translator;
          v17 = 2112;
          v18 = v10;
          _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_ERROR, "Trying to merge two incompatible mappings (%@ / %@)", buf, 0x16u);
        }
      }

      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLTransportScopeMapping.m"];
      v13 = self->_translator;
      [v11 handleFailureInMethod:a2 object:self file:v12 lineNumber:169 description:{@"Trying to merge two incompatible mappings (%@ / %@)", v13, v14->_translator}];

      abort();
    }

    [(NSMutableDictionary *)self->_concreteScopeMapping addEntriesFromDictionary:v5->_concreteScopeMapping];
    v5 = [(NSMutableDictionary *)self->_scopeMapping addEntriesFromDictionary:v14->_scopeMapping];
    v6 = v14;
  }

  v7 = *MEMORY[0x1E69E9840];

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (BOOL)_addTransportScopeForScope:(id)a3 scopes:(id)a4 allowsTentativeTransportScope:(BOOL)a5 useStagingScopeIfNecessary:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  v9 = a5;
  v34 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = [v12 scopeIdentifier];
  if (v8 && +[CPLScopeChange supportsStagingScopeForScopeWithType:](CPLScopeChange, "supportsStagingScopeForScopeWithType:", [v12 scopeType]))
  {
    v15 = [v13 stagingScopeForScope:v12];
    v16 = v15;
    v17 = v15 != 0;
    if (v15)
    {
      v18 = v15;

      v12 = v18;
    }
  }

  else
  {
    v17 = 0;
  }

  v19 = [v13 transportScopeForScope:v12];
  if (!v19)
  {
    if (!v9)
    {
      goto LABEL_21;
    }

    p_translator = &self->_translator;
LABEL_14:
    v22 = [(CPLTransportScopeTranslator *)*p_translator tentativeConcreteScopeForScope:v12];
    if (!v22)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  p_translator = &self->_translator;
  v21 = [(CPLTransportScopeTranslator *)self->_translator concreteScopeFromTransportScope:v19];
  v22 = v21;
  if (!v21 && v9)
  {
    goto LABEL_14;
  }

  if (!v21)
  {
LABEL_21:
    v25 = [MEMORY[0x1E695DFB0] null];
    [(NSMutableDictionary *)self->_concreteScopeMapping setObject:v25 forKeyedSubscript:v14];

    [(NSMutableDictionary *)self->_scopeMapping setObject:v12 forKeyedSubscript:v14];
    if (a7)
    {
      [CPLErrors invalidScopeErrorWithScopeIdentifier:v14];
      v22 = 0;
      *a7 = v24 = 0;
    }

    else
    {
      v22 = 0;
      v24 = 0;
    }

    goto LABEL_24;
  }

LABEL_15:
  [(NSMutableDictionary *)self->_concreteScopeMapping setObject:v22 forKeyedSubscript:v14];
  [(NSMutableDictionary *)self->_scopeMapping setObject:v12 forKeyedSubscript:v14];
  self->_hasStagingScopes &= v17;
  if ((_CPLSilentLogging & 1) == 0)
  {
    if (__CPLTransportScopeOSLogDomain_onceToken != -1)
    {
      dispatch_once(&__CPLTransportScopeOSLogDomain_onceToken, &__block_literal_global_4468);
    }

    v23 = __CPLTransportScopeOSLogDomain_result;
    if (os_log_type_enabled(__CPLTransportScopeOSLogDomain_result, OS_LOG_TYPE_DEBUG))
    {
      v28 = 138412802;
      v29 = v22;
      v30 = 2112;
      v31 = v12;
      v32 = 2112;
      v33 = self;
      _os_log_impl(&dword_1DC05A000, v23, OS_LOG_TYPE_DEBUG, "Adding %@ for %@ to %@", &v28, 0x20u);
    }
  }

  v24 = 1;
LABEL_24:

  v26 = *MEMORY[0x1E69E9840];
  return v24;
}

- (BOOL)_checkTransportScopeForScopeIdentifier:(id)a3 hasConcreteScope:(BOOL *)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(NSMutableDictionary *)self->_concreteScopeMapping objectForKeyedSubscript:v8];
  v10 = [MEMORY[0x1E695DFB0] null];

  if (v9 == v10)
  {
    if (a5)
    {
      *a5 = [CPLErrors cplErrorWithCode:32 description:@"Scope %@ has an invalid transport scope", v8];
    }
  }

  else
  {
    *a4 = v9 != 0;
  }

  return v9 != v10;
}

- (BOOL)hasConcreteScopeForScopeWithIdentifier:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_concreteScopeMapping objectForKeyedSubscript:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)concreteScopeForScopeWithIdentifier:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_concreteScopeMapping objectForKeyedSubscript:a3];
  v4 = [MEMORY[0x1E695DFB0] null];

  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

- (void)addConcreteScope:(id)a3 forScope:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 scopeIdentifier];
  [(NSMutableDictionary *)self->_concreteScopeMapping setObject:v7 forKeyedSubscript:v8];

  [(NSMutableDictionary *)self->_scopeMapping setObject:v6 forKeyedSubscript:v8];
}

- (void)addTransportScope:(id)a3 forScope:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [v6 scopeIdentifier];
  v8 = [(CPLTransportScopeTranslator *)self->_translator concreteScopeFromTransportScope:v7];

  if (!v8)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  [(NSMutableDictionary *)self->_concreteScopeMapping setObject:v8 forKeyedSubscript:v9];
  [(NSMutableDictionary *)self->_scopeMapping setObject:v6 forKeyedSubscript:v9];
}

- (CPLTransportScopeMapping)initWithTranslator:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = CPLTransportScopeMapping;
  v6 = [(CPLTransportScopeMapping *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_translator, a3);
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    scopeMapping = v7->_scopeMapping;
    v7->_scopeMapping = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    concreteScopeMapping = v7->_concreteScopeMapping;
    v7->_concreteScopeMapping = v10;
  }

  return v7;
}

@end