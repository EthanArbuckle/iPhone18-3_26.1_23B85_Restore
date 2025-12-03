@interface FCPersonalizationURLMapping
+ (id)domainForURL:(id)l;
- (FCPersonalizationURLMapping)initWithCoder:(id)coder;
- (FCPersonalizationURLMapping)initWithPBURLMapping:(id)mapping;
- (id)jsonEncodableObject;
- (id)popularityForURL:(id)l;
- (id)tagScoresForURL:(id)l;
- (unint64_t)count;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FCPersonalizationURLMapping

- (FCPersonalizationURLMapping)initWithPBURLMapping:(id)mapping
{
  mappingCopy = mapping;
  v14.receiver = self;
  v14.super_class = FCPersonalizationURLMapping;
  v6 = [(FCPersonalizationURLMapping *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pbURLMapping, mapping);
    v8 = MEMORY[0x1E695DF20];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __52__FCPersonalizationURLMapping_initWithPBURLMapping___block_invoke;
    v12[3] = &unk_1E7C36EC8;
    v13 = mappingCopy;
    v9 = [v8 fc_dictionary:v12];
    urlMappingByDomain = v7->_urlMappingByDomain;
    v7->_urlMappingByDomain = v9;
  }

  return v7;
}

void __52__FCPersonalizationURLMapping_initWithPBURLMapping___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) domains];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__FCPersonalizationURLMapping_initWithPBURLMapping___block_invoke_2;
  v6[3] = &unk_1E7C41CA0;
  v7 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void __52__FCPersonalizationURLMapping_initWithPBURLMapping___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [[FCPersonalizationURLDomainMapping alloc] initWithPBURLMappingDomain:v3];
  v4 = *(a1 + 32);
  v5 = [v3 domain];

  [v4 setObject:v6 forKeyedSubscript:v5];
}

- (unint64_t)count
{
  urlMappingByDomain = [(FCPersonalizationURLMapping *)self urlMappingByDomain];
  v3 = [urlMappingByDomain count];

  return v3;
}

+ (id)domainForURL:(id)l
{
  lCopy = l;
  v4 = [[FCPersonalizationDecomposedURL alloc] initWithURLString:lCopy];

  domain = [(FCPersonalizationDecomposedURL *)v4 domain];

  return domain;
}

- (id)tagScoresForURL:(id)l
{
  v40 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v5 = [[FCPersonalizationDecomposedURL alloc] initWithURLString:lCopy];
  urlMappingByDomain = [(FCPersonalizationURLMapping *)self urlMappingByDomain];
  domain = [(FCPersonalizationDecomposedURL *)v5 domain];
  v8 = [urlMappingByDomain objectForKeyedSubscript:domain];

  if (v8)
  {
    *v36 = 0;
    *&v36[8] = v36;
    *&v36[16] = 0x3032000000;
    v37 = __Block_byref_object_copy__48;
    v38 = __Block_byref_object_dispose__48;
    v39 = [v8 tagsForPath:@"/"];
    if (!*(*&v36[8] + 40))
    {
      v9 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"There should be path tags for the default path"];
        *v33 = 136315906;
        *&v33[4] = "[FCPersonalizationURLMapping tagScoresForURL:]";
        *&v33[12] = 2080;
        *&v33[14] = "FCPersonalizationURLMapping.m";
        *&v33[22] = 1024;
        LODWORD(v34) = 277;
        WORD2(v34) = 2114;
        *(&v34 + 6) = v21;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v33, 0x26u);
      }
    }

    *v33 = 0;
    *&v33[8] = v33;
    *&v33[16] = 0x3032000000;
    *&v34 = __Block_byref_object_copy__48;
    *(&v34 + 1) = __Block_byref_object_dispose__48;
    v35 = 0;
    paths = [(FCPersonalizationDecomposedURL *)v5 paths];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __47__FCPersonalizationURLMapping_tagScoresForURL___block_invoke;
    v23[3] = &unk_1E7C391A0;
    v24 = v8;
    v25 = v36;
    v26 = v33;
    [paths enumerateObjectsUsingBlock:v23];

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __47__FCPersonalizationURLMapping_tagScoresForURL___block_invoke_2;
    v22[3] = &unk_1E7C40CF8;
    v22[4] = v36;
    v12 = [MEMORY[0x1E695DF20] fc_dictionary:v22];
    v13 = FCProgressivePersonalizationLog;
    if (os_log_type_enabled(FCProgressivePersonalizationLog, OS_LOG_TYPE_DEBUG))
    {
      v14 = *(*&v33[8] + 40);
      *buf = 138412802;
      v28 = lCopy;
      v29 = 2112;
      v30 = v14;
      v31 = 2112;
      v32 = v12;
      _os_log_impl(&dword_1B63EF000, v13, OS_LOG_TYPE_DEBUG, "URL String %@ with matching path %@ mapped to %@", buf, 0x20u);
    }

    _Block_object_dispose(v33, 8);
    _Block_object_dispose(v36, 8);
  }

  else
  {
    v15 = FCProgressivePersonalizationLog;
    if (os_log_type_enabled(FCProgressivePersonalizationLog, OS_LOG_TYPE_DEBUG))
    {
      v16 = v15;
      domain2 = [(FCPersonalizationDecomposedURL *)v5 domain];
      paths2 = [(FCPersonalizationDecomposedURL *)v5 paths];
      *v36 = 138412802;
      *&v36[4] = lCopy;
      *&v36[12] = 2112;
      *&v36[14] = domain2;
      *&v36[22] = 2112;
      v37 = paths2;
      _os_log_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_DEBUG, "Failed to find mapping for URL String %@ with domain %@ and paths %@", v36, 0x20u);
    }

    v12 = MEMORY[0x1E695E0F8];
  }

  v19 = *MEMORY[0x1E69E9840];

  return v12;
}

void __47__FCPersonalizationURLMapping_tagScoresForURL___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v7 = [*(a1 + 32) tagsForPath:?];

  if (v7)
  {
    v8 = [*(a1 + 32) tagsForPath:v11];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __47__FCPersonalizationURLMapping_tagScoresForURL___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__FCPersonalizationURLMapping_tagScoresForURL___block_invoke_3;
  v6[3] = &unk_1E7C3A5F0;
  v7 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
}

void __47__FCPersonalizationURLMapping_tagScoresForURL___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__FCPersonalizationURLMapping_tagScoresForURL___block_invoke_4;
  v4[3] = &unk_1E7C41CC8;
  v5 = *(a1 + 32);
  [a3 enumerateKeysAndObjectsUsingBlock:v4];
}

void __47__FCPersonalizationURLMapping_tagScoresForURL___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];

  if (v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Already have a score for tag %@", v5];
    *buf = 136315906;
    v11 = "[FCPersonalizationURLMapping tagScoresForURL:]_block_invoke_4";
    v12 = 2080;
    v13 = "FCPersonalizationURLMapping.m";
    v14 = 1024;
    v15 = 293;
    v16 = 2114;
    v17 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];

  v8 = *MEMORY[0x1E69E9840];
}

- (id)popularityForURL:(id)l
{
  lCopy = l;
  v5 = [[FCPersonalizationDecomposedURL alloc] initWithURLString:lCopy];

  urlMappingByDomain = [(FCPersonalizationURLMapping *)self urlMappingByDomain];
  domain = [(FCPersonalizationDecomposedURL *)v5 domain];
  v8 = [urlMappingByDomain objectForKeyedSubscript:domain];

  if (v8)
  {
    v9 = MEMORY[0x1E696AD98];
    urlMappingByDomain2 = [(FCPersonalizationURLMapping *)self urlMappingByDomain];
    domain2 = [(FCPersonalizationDecomposedURL *)v5 domain];
    v12 = [urlMappingByDomain2 objectForKeyedSubscript:domain2];
    [v12 averageSafariVisitsPerDay];
    v13 = [v9 numberWithDouble:?];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (FCPersonalizationURLMapping)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"urlMapping"];

  v6 = [(FCPersonalizationURLMapping *)self initWithPBURLMapping:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  pbURLMapping = self->_pbURLMapping;
  if (pbURLMapping)
  {
    [coder encodeObject:pbURLMapping forKey:@"urlMapping"];
  }
}

- (id)jsonEncodableObject
{
  urlMappingByDomain = [(FCPersonalizationURLMapping *)self urlMappingByDomain];
  v3 = [urlMappingByDomain fc_jsonEncodableDictionaryWithObjectHandler:&__block_literal_global_102 arrayObjectHandler:0 dictionaryKeyHandler:0 dictionaryValueHandler:0];

  return v3;
}

id __50__FCPersonalizationURLMapping_jsonEncodableObject__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (v2)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 paths];

  return v5;
}

@end