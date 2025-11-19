@interface LNSpotlightCascadeTranslator
- (BOOL)isAllowedClientBundleIdentifier:(id)a3;
- (LNSpotlightCascadeTranslator)init;
- (id)disabledAppEntityTypeIdentifiersForBundleIdentifier:(id)a3;
- (id)lookupAssistantSchemasForTypeIdentifier:(id)a3 fromBundleId:(id)a4;
- (id)translateItem:(id)a3 fromBundleId:(id)a4 error:(id *)a5;
- (unsigned)assistantSchemaTypeFromIdentifier:(id)a3;
@end

@implementation LNSpotlightCascadeTranslator

- (id)translateItem:(id)a3 fromBundleId:(id)a4 error:(id *)a5
{
  v106 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [v8 attributeSet];
  v11 = [v10 attributeForKey:@"_kMDItemAppEntityInstanceIdentifier"];

  if (v11)
  {
    v12 = [v8 attributeSet];
    v13 = [v12 attributeForKey:@"_kMDItemAppEntityTypeIdentifier"];

    if (!v13)
    {
      v29 = [MEMORY[0x1E696ABC0] errorWithDomain:@"LNSpotlightCascadeTranslator" code:2 userInfo:0];
      if (a5 && v29)
      {
        v29 = v29;
        *a5 = v29;
      }

      v28 = 0;
      goto LABEL_106;
    }

    v82 = [(LNSpotlightCascadeTranslator *)self lookupAssistantSchemasForTypeIdentifier:v13 fromBundleId:v9];
    v14 = [v8 attributeSet];
    v15 = [v14 attributeForKey:@"kMDItemAppEntityTitle"];

    if (!v15)
    {
      v30 = [MEMORY[0x1E696ABC0] errorWithDomain:@"LNSpotlightCascadeTranslator" code:3 userInfo:0];
      if (a5 && v30)
      {
        v30 = v30;
        *a5 = v30;
      }

      v28 = 0;
      goto LABEL_105;
    }

    v16 = [v8 attributeSet];
    v81 = [v16 attributeForKey:@"kMDItemAppEntitySubtitle"];

    v17 = [v8 attributeSet];
    v80 = [v17 attributeForKey:@"kMDItemAppEntityDisplayRepresentationSynonyms"];

    v88 = 0;
    v89 = &v88;
    v90 = 0x2050000000;
    v18 = getCCAppEntityDisplayRepresentationClass_softClass;
    v91 = getCCAppEntityDisplayRepresentationClass_softClass;
    if (!getCCAppEntityDisplayRepresentationClass_softClass)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v103 = __getCCAppEntityDisplayRepresentationClass_block_invoke;
      v104 = &unk_1E74B26D0;
      v105 = &v88;
      __getCCAppEntityDisplayRepresentationClass_block_invoke(&buf);
      v18 = v89[3];
    }

    v19 = v18;
    _Block_object_dispose(&v88, 8);
    if (!v18)
    {
      v31 = MEMORY[0x1E696ABC0];
      v100 = *MEMORY[0x1E696A278];
      v101 = @"Cannot load class CCAppEntityDisplayRepresentation";
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
      v26 = [v31 errorWithDomain:@"LNSpotlightCascadeTranslator" code:4 userInfo:v32];

      v33 = getLNLogCategoryVocabulary();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v26;
        _os_log_impl(&dword_19763D000, v33, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);
      }

      v28 = 0;
      if (a5 && v26)
      {
        v34 = v26;
        v28 = 0;
        *a5 = v26;
      }

      goto LABEL_104;
    }

    v87 = 0;
    v79 = [[v18 alloc] initWithTitle:v15 subtitle:v81 synonyms:v80 error:&v87];
    v20 = v87;
    if (!v79)
    {
      v35 = getLNLogCategoryVocabulary();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v20;
        _os_log_impl(&dword_19763D000, v35, OS_LOG_TYPE_ERROR, "Cannot create CCAppEntityDisplayRepresentation. Error: %@", &buf, 0xCu);
      }

      v28 = 0;
      if (a5 && v20)
      {
        v36 = v20;
        v28 = 0;
        *a5 = v20;
      }

      v26 = v20;
      goto LABEL_103;
    }

    v88 = 0;
    v89 = &v88;
    v90 = 0x2050000000;
    v21 = getCCAppEntityTypeDisplayRepresentationClass_softClass;
    v91 = getCCAppEntityTypeDisplayRepresentationClass_softClass;
    if (!getCCAppEntityTypeDisplayRepresentationClass_softClass)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v103 = __getCCAppEntityTypeDisplayRepresentationClass_block_invoke;
      v104 = &unk_1E74B26D0;
      v105 = &v88;
      __getCCAppEntityTypeDisplayRepresentationClass_block_invoke(&buf);
      v21 = v89[3];
    }

    v22 = v21;
    _Block_object_dispose(&v88, 8);
    if (!v21)
    {
      v37 = MEMORY[0x1E696ABC0];
      v98 = *MEMORY[0x1E696A278];
      v99 = @"Cannot load class CCAppEntityTypeDisplayRepresentation";
      v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v99 forKeys:&v98 count:1];
      v26 = [v37 errorWithDomain:@"LNSpotlightCascadeTranslator" code:4 userInfo:v38];

      v39 = getLNLogCategoryVocabulary();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v26;
        _os_log_impl(&dword_19763D000, v39, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);
      }

      v28 = 0;
      if (a5 && v26)
      {
        v40 = v26;
        v28 = 0;
        *a5 = v26;
      }

      goto LABEL_103;
    }

    v23 = [v8 attributeSet];
    v78 = [v23 attributeForKey:@"_kMDItemAppEntityTypeDisplayRepresentationName"];

    if (v78)
    {
      v24 = [v8 attributeSet];
      v25 = [v24 attributeForKey:@"_kMDItemAppEntityTypeDisplayRepresentationSynonyms"];

      v86 = v20;
      v77 = [[v21 alloc] initWithName:v78 synonyms:v25 error:&v86];
      v26 = v86;

      if (!v77)
      {
        v50 = getLNLogCategoryVocabulary();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v26;
          _os_log_impl(&dword_19763D000, v50, OS_LOG_TYPE_ERROR, "Cannot create CCAppEntityTypeDisplayRepresentation. Error: %@", &buf, 0xCu);
        }

        if (a5 && v26)
        {
          v51 = v26;
          *a5 = v26;
        }

        v28 = 0;
        goto LABEL_102;
      }

      v20 = v26;
    }

    else
    {
      v77 = 0;
    }

    v88 = 0;
    v89 = &v88;
    v90 = 0x2050000000;
    v41 = getCCAppIntentsIndexedEntityContentClass_softClass;
    v91 = getCCAppIntentsIndexedEntityContentClass_softClass;
    if (!getCCAppIntentsIndexedEntityContentClass_softClass)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v103 = __getCCAppIntentsIndexedEntityContentClass_block_invoke;
      v104 = &unk_1E74B26D0;
      v105 = &v88;
      __getCCAppIntentsIndexedEntityContentClass_block_invoke(&buf);
      v41 = v89[3];
    }

    v42 = v41;
    _Block_object_dispose(&v88, 8);
    if (!v41)
    {
      v46 = MEMORY[0x1E696ABC0];
      v96 = *MEMORY[0x1E696A278];
      v97 = @"Cannot load class CCAppIntentsIndexedEntityContent";
      v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
      v26 = [v46 errorWithDomain:@"LNSpotlightCascadeTranslator" code:4 userInfo:v47];

      v48 = getLNLogCategoryVocabulary();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v26;
        _os_log_impl(&dword_19763D000, v48, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);
      }

      v28 = 0;
      if (a5 && v26)
      {
        v49 = v26;
        v28 = 0;
        *a5 = v26;
      }

      goto LABEL_101;
    }

    v85 = v20;
    v76 = [[v41 alloc] initWithTypeIdentifier:v13 displayRepresentation:v79 typeDisplayRepresentation:v77 assistantDefinedSchemas:v82 error:&v85];
    v75 = v85;

    if (v76)
    {
      v88 = 0;
      v89 = &v88;
      v90 = 0x2050000000;
      v43 = getCCAppIntentsIndexedEntityMetaContentClass_softClass;
      v91 = getCCAppIntentsIndexedEntityMetaContentClass_softClass;
      if (!getCCAppIntentsIndexedEntityMetaContentClass_softClass)
      {
        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3221225472;
        v103 = __getCCAppIntentsIndexedEntityMetaContentClass_block_invoke;
        v104 = &unk_1E74B26D0;
        v105 = &v88;
        __getCCAppIntentsIndexedEntityMetaContentClass_block_invoke(&buf);
        v43 = v89[3];
      }

      v44 = v43;
      _Block_object_dispose(&v88, 8);
      if (v43)
      {
        v45 = [v8 attributeSet];
        v74 = [v45 attributeForKey:@"_kMDItemAppEntityPriority"];

        if (v74)
        {
          if ([v74 isEqual:&unk_1F0BD71C8])
          {

            v74 = &unk_1F0BD7240;
          }
        }

        else
        {
          v74 = 0;
        }

        v58 = [v43 alloc];
        v59 = [v8 uniqueIdentifier];
        v84 = v75;
        v60 = [v58 initWithSourceItemIdentifier:v59 saliency:v74 error:&v84];
        v61 = v84;

        if (v60)
        {
          CCItemInstanceClass = getCCItemInstanceClass();
          if (CCItemInstanceClass)
          {
            v83 = v61;
            v28 = [[CCItemInstanceClass alloc] initWithContent:v76 metaContent:v60 error:&v83];
            v26 = v83;

            if (v28)
            {
              v63 = v28;
            }

            else
            {
              v70 = getLNLogCategoryVocabulary();
              if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
              {
                LODWORD(buf) = 138412290;
                *(&buf + 4) = v26;
                _os_log_impl(&dword_19763D000, v70, OS_LOG_TYPE_ERROR, "Cannot create CCItemInstance. Error: %@", &buf, 0xCu);
              }

              if (a5 && v26)
              {
                v71 = v26;
                *a5 = v26;
              }
            }
          }

          else
          {
            v66 = MEMORY[0x1E696ABC0];
            v92 = *MEMORY[0x1E696A278];
            v93 = @"Cannot load class CCItemInstance";
            v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
            v26 = [v66 errorWithDomain:@"LNSpotlightCascadeTranslator" code:4 userInfo:v67];

            v68 = getLNLogCategoryVocabulary();
            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v26;
              _os_log_impl(&dword_19763D000, v68, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);
            }

            v28 = 0;
            if (a5 && v26)
            {
              v69 = v26;
              v28 = 0;
              *a5 = v26;
            }
          }
        }

        else
        {
          v64 = getLNLogCategoryVocabulary();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v61;
            _os_log_impl(&dword_19763D000, v64, OS_LOG_TYPE_ERROR, "Cannot create CCAppIntentsIndexedEntityMetaContent. Error: %@", &buf, 0xCu);
          }

          v28 = 0;
          if (a5 && v61)
          {
            v65 = v61;
            v28 = 0;
            *a5 = v61;
          }

          v26 = v61;
        }

        goto LABEL_100;
      }

      v54 = MEMORY[0x1E696ABC0];
      v94 = *MEMORY[0x1E696A278];
      v95 = @"Cannot load class CCAppIntentsIndexedEntityMetaContent";
      v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
      v26 = [v54 errorWithDomain:@"LNSpotlightCascadeTranslator" code:4 userInfo:v55];

      v56 = getLNLogCategoryVocabulary();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v26;
        _os_log_impl(&dword_19763D000, v56, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);
      }

      v28 = 0;
      if (!a5 || !v26)
      {
        goto LABEL_100;
      }

      v57 = v26;
      v28 = 0;
    }

    else
    {
      v52 = getLNLogCategoryVocabulary();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v75;
        _os_log_impl(&dword_19763D000, v52, OS_LOG_TYPE_ERROR, "Cannot create CCAppIntentsIndexedEntityContent. Error: %@", &buf, 0xCu);
      }

      v28 = 0;
      if (!a5)
      {
        v26 = v75;
        goto LABEL_100;
      }

      if (!v75)
      {
        v26 = 0;
        goto LABEL_100;
      }

      v53 = v75;
      v28 = 0;
      v26 = v75;
    }

    *a5 = v26;
LABEL_100:

LABEL_101:
LABEL_102:

LABEL_103:
LABEL_104:

LABEL_105:
LABEL_106:

    goto LABEL_107;
  }

  v27 = [MEMORY[0x1E696ABC0] errorWithDomain:@"LNSpotlightCascadeTranslator" code:1 userInfo:0];
  if (a5 && v27)
  {
    v27 = v27;
    *a5 = v27;
  }

  v28 = 0;
LABEL_107:

  v72 = *MEMORY[0x1E69E9840];

  return v28;
}

- (id)lookupAssistantSchemasForTypeIdentifier:(id)a3 fromBundleId:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  v30 = 0;
  v31 = &v30;
  v32 = 0x2050000000;
  v8 = getCCAssistantSchemaClass_softClass;
  v33 = getCCAssistantSchemaClass_softClass;
  if (!getCCAssistantSchemaClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getCCAssistantSchemaClass_block_invoke;
    v35 = &unk_1E74B26D0;
    v36 = &v30;
    __getCCAssistantSchemaClass_block_invoke(buf);
    v8 = v31[3];
  }

  v9 = v8;
  _Block_object_dispose(&v30, 8);
  v30 = 0;
  v31 = &v30;
  v32 = 0x2050000000;
  v10 = getCCAssistantSchemaVersionClass_softClass;
  v33 = getCCAssistantSchemaVersionClass_softClass;
  if (!getCCAssistantSchemaVersionClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getCCAssistantSchemaVersionClass_block_invoke;
    v35 = &unk_1E74B26D0;
    v36 = &v30;
    __getCCAssistantSchemaVersionClass_block_invoke(buf);
    v10 = v31[3];
  }

  v11 = v10;
  _Block_object_dispose(&v30, 8);
  if (v8 && v10)
  {
    v12 = [(NSMutableDictionary *)self->_typeIdentifierToAssistantSchemasCache objectForKeyedSubscript:v6];
    if (v12)
    {
      v13 = v12;
      v14 = v13;
    }

    else
    {
      v15 = objc_opt_new();
      metadataProvider = self->_metadataProvider;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __85__LNSpotlightCascadeTranslator_lookupAssistantSchemasForTypeIdentifier_fromBundleId___block_invoke;
      v24[3] = &unk_1E74B1638;
      v17 = v6;
      v25 = v17;
      v26 = self;
      v28 = v10;
      v29 = v8;
      v18 = v15;
      v27 = v18;
      v23 = 0;
      [(LNMetadataProvider *)metadataProvider enumerateEntitiesForBundleIdentifier:v7 usingBlock:v24 error:&v23];
      v19 = v23;
      if (v19)
      {
        v20 = getLNLogCategoryVocabulary();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          *&buf[4] = v7;
          *&buf[12] = 2112;
          *&buf[14] = v19;
          _os_log_impl(&dword_19763D000, v20, OS_LOG_TYPE_ERROR, "Failed to lookup entity metadata for bundle %@ with error %@", buf, 0x16u);
        }

        v14 = 0;
      }

      else
      {
        [(NSMutableDictionary *)self->_typeIdentifierToAssistantSchemasCache setObject:v18 forKeyedSubscript:v17];
        v14 = v18;
      }

      v13 = 0;
    }
  }

  else
  {
    v13 = getLNLogCategoryVocabulary();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19763D000, v13, OS_LOG_TYPE_ERROR, "Cannot load class CCAssistantSchema, CCAssistantSchemaVersion", buf, 2u);
    }

    v14 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  v21 = *MEMORY[0x1E69E9840];

  return v14;
}

void __85__LNSpotlightCascadeTranslator_lookupAssistantSchemasForTypeIdentifier_fromBundleId___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v56 = *MEMORY[0x1E69E9840];
  v40 = a2;
  v5 = [v40 identifier];
  v6 = [v5 isEqual:*(a1 + 32)];

  if (v6)
  {
    v39 = a3;
    v7 = getLNLogCategoryVocabulary();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = [v40 assistantDefinedSchemas];
      v9 = *(a1 + 32);
      *buf = 138412546;
      v53 = v8;
      v54 = 2112;
      v55 = v9;
      _os_log_impl(&dword_19763D000, v7, OS_LOG_TYPE_DEBUG, "Found conforming assistant schemas %@ for type identifier %@", buf, 0x16u);
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = [v40 assistantDefinedSchemas];
    v43 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v43)
    {
      v10 = *v48;
      v41 = *v48;
      do
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v48 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v47 + 1) + 8 * i);
          v13 = [v12 version];
          v14 = [v13 componentsSeparatedByString:@"."];
          v44 = v13;
          if ([v14 count] == 3)
          {
            v15 = MEMORY[0x1E696AD98];
            v16 = [v14 objectAtIndexedSubscript:0];
            v17 = [v15 numberWithInteger:{objc_msgSend(v16, "integerValue")}];

            v18 = MEMORY[0x1E696AD98];
            v19 = [v14 objectAtIndexedSubscript:1];
            v20 = [v18 numberWithInteger:{objc_msgSend(v19, "integerValue")}];

            v21 = MEMORY[0x1E696AD98];
            [v14 objectAtIndexedSubscript:1];
            v23 = v22 = a1;
            v24 = [v21 numberWithInteger:{objc_msgSend(v23, "integerValue")}];

            a1 = v22;
            v25 = objc_alloc(*(v22 + 56));
            v46 = 0;
            v26 = [v25 initWithMajor:v17 minor:v20 patch:v24 error:&v46];
            v27 = v46;
            if (v27)
            {
              v28 = getLNLogCategoryVocabulary();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v53 = v44;
                v54 = 2112;
                v55 = v27;
                _os_log_impl(&dword_19763D000, v28, OS_LOG_TYPE_ERROR, "Failed to build CCAssistantSchemaVersion from version %@ with error %@", buf, 0x16u);
              }

              a1 = v22;
            }

            v10 = v41;
          }

          else
          {
            v17 = getLNLogCategoryVocabulary();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v53 = v13;
              _os_log_impl(&dword_19763D000, v17, OS_LOG_TYPE_ERROR, "Failed to parse version components from version string %@", buf, 0xCu);
            }

            v26 = 0;
          }

          v29 = *(a1 + 40);
          v30 = [v12 name];
          v31 = [v29 assistantSchemaTypeFromIdentifier:v30];

          v32 = objc_alloc(*(a1 + 64));
          v45 = 0;
          v33 = [v32 initWithType:v31 version:v26 error:&v45];
          v34 = v45;
          v35 = v34;
          if (v33)
          {
            v36 = v34 == 0;
          }

          else
          {
            v36 = 0;
          }

          if (v36)
          {
            [*(a1 + 48) addObject:v33];
          }

          else
          {
            v37 = getLNLogCategoryVocabulary();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v53 = v35;
              _os_log_impl(&dword_19763D000, v37, OS_LOG_TYPE_ERROR, "Failed to build CCAssistantSchema with error %@", buf, 0xCu);
            }
          }
        }

        v43 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
      }

      while (v43);
    }

    *v39 = 1;
  }

  v38 = *MEMORY[0x1E69E9840];
}

- (unsigned)assistantSchemaTypeFromIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 isEqual:@"AudioBookEntity"])
  {
    v4 = 1;
  }

  else if ([v3 isEqual:@"BookEntity"])
  {
    v4 = 2;
  }

  else if ([v3 isEqual:@"BookSettingsEntity"])
  {
    v4 = 3;
  }

  else if ([v3 isEqual:@"BookmarkEntity"])
  {
    v4 = 4;
  }

  else if ([v3 isEqual:@"HistoryEntity"])
  {
    v4 = 5;
  }

  else if ([v3 isEqual:@"TabEntity"])
  {
    v4 = 6;
  }

  else if ([v3 isEqual:@"WindowEntity"])
  {
    v4 = 7;
  }

  else if ([v3 isEqual:@"FileEntity"])
  {
    v4 = 8;
  }

  else if ([v3 isEqual:@"JournalEntity"])
  {
    v4 = 9;
  }

  else if ([v3 isEqual:@"MailAccountEntity"])
  {
    v4 = 10;
  }

  else if ([v3 isEqual:@"MailDraftEntity"])
  {
    v4 = 11;
  }

  else if ([v3 isEqual:@"MailMessageEntity"])
  {
    v4 = 12;
  }

  else if ([v3 isEqual:@"MailboxEntity"])
  {
    v4 = 13;
  }

  else if ([v3 isEqual:@"AccountEntity"])
  {
    v4 = 14;
  }

  else if ([v3 isEqual:@"AllowDarkBackgroundsEntity"])
  {
    v4 = 15;
  }

  else if ([v3 isEqual:@"AttachmentEntity"])
  {
    v4 = 16;
  }

  else if ([v3 isEqual:@"AutoConvertToTagEntity"])
  {
    v4 = 17;
  }

  else if ([v3 isEqual:@"AutoSortCheckedItemsEntity"])
  {
    v4 = 18;
  }

  else if ([v3 isEqual:@"ChecklistItemEntity"])
  {
    v4 = 19;
  }

  else if ([v3 isEqual:@"DateHeadersEntity"])
  {
    v4 = 20;
  }

  else if ([v3 isEqual:@"DefaultParagraphStyleEntity"])
  {
    v4 = 21;
  }

  else if ([v3 isEqual:@"FolderEntity"])
  {
    v4 = 22;
  }

  else if ([v3 isEqual:@"LinesAndGridsEntity"])
  {
    v4 = 23;
  }

  else if ([v3 isEqual:@"MentionNotificationsEntity"])
  {
    v4 = 24;
  }

  else if ([v3 isEqual:@"NoteEntity"])
  {
    v4 = 25;
  }

  else if ([v3 isEqual:@"NoteListSortTypeEntity"])
  {
    v4 = 26;
  }

  else if ([v3 isEqual:@"NotesSettingsEntity"])
  {
    v4 = 27;
  }

  else if ([v3 isEqual:@"SavePhotosEntity"])
  {
    v4 = 28;
  }

  else if ([v3 isEqual:@"TableEntity"])
  {
    v4 = 29;
  }

  else if ([v3 isEqual:@"TagEntity"])
  {
    v4 = 30;
  }

  else if ([v3 isEqual:@"PhotoAlbumEntity"])
  {
    v4 = 31;
  }

  else if ([v3 isEqual:@"PhotoEntity"])
  {
    v4 = 32;
  }

  else if ([v3 isEqual:@"PhotoPersonEntity"])
  {
    v4 = 33;
  }

  else if ([v3 isEqual:@"PresentationEntity"])
  {
    v4 = 34;
  }

  else if ([v3 isEqual:@"PresentationSlideEntity"])
  {
    v4 = 35;
  }

  else if ([v3 isEqual:@"PresentationTemplateEntity"])
  {
    v4 = 36;
  }

  else if ([v3 isEqual:@"ReaderDocumentEntity"])
  {
    v4 = 37;
  }

  else if ([v3 isEqual:@"SheetEntity"])
  {
    v4 = 39;
  }

  else if ([v3 isEqual:@"SpreadsheetEntity"])
  {
    v4 = 40;
  }

  else if ([v3 isEqual:@"SpreadsheetTemplateEntity"])
  {
    v4 = 41;
  }

  else if ([v3 isEqual:@"CanvasEntity"] & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"CanvasItemEntity"))
  {
    v4 = 42;
  }

  else if ([v3 isEqual:@"WordProcessorDocumentEntity"])
  {
    v4 = 44;
  }

  else if ([v3 isEqual:@"WordProcessorDocumentTemplateEntity"])
  {
    v4 = 45;
  }

  else if ([v3 isEqual:@"WordProcessPageEntity"])
  {
    v4 = 46;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)disabledAppEntityTypeIdentifiersForBundleIdentifier:(id)a3
{
  if ([a3 isEqualToString:@"com.apple.mobileslideshow"])
  {
    return &unk_1F0BD7228;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isAllowedClientBundleIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  if ([(NSArray *)self->_disabledBundles containsObject:v4])
  {
    v5 = 0;
  }

  else if ([v4 hasPrefix:@"com.apple."])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(NSMutableDictionary *)self->_bundleIDsWithAssistantSchemaConformanceCache objectForKeyedSubscript:v4];
    v7 = v6;
    if (v6)
    {
      if ([v6 BOOLValue])
      {
        v5 = [v7 BOOLValue];
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x3032000000;
      v16 = __Block_byref_object_copy__8763;
      v17 = __Block_byref_object_dispose__8764;
      v18 = &unk_1F0BD71C8;
      metadataProvider = self->_metadataProvider;
      v11 = 0;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __64__LNSpotlightCascadeTranslator_isAllowedClientBundleIdentifier___block_invoke;
      v12[3] = &unk_1E74B1610;
      v12[4] = &v13;
      [(LNMetadataProvider *)metadataProvider enumerateEntitiesForBundleIdentifier:v4 usingBlock:v12 error:&v11];
      v9 = v11;
      [(NSMutableDictionary *)self->_bundleIDsWithAssistantSchemaConformanceCache setObject:v14[5] forKeyedSubscript:v4];
      v5 = [v14[5] BOOLValue];
      _Block_object_dispose(&v13, 8);
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

void __64__LNSpotlightCascadeTranslator_isAllowedClientBundleIdentifier___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 assistantDefinedSchemas];
  v6 = [v5 count];

  if (v6)
  {
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = &unk_1F0BD71E0;

    *a3 = 1;
  }
}

- (LNSpotlightCascadeTranslator)init
{
  v12.receiver = self;
  v12.super_class = LNSpotlightCascadeTranslator;
  v2 = [(LNSpotlightCascadeTranslator *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [[LNMetadataProvider alloc] initWithOptions:0];
    metadataProvider = v3->_metadataProvider;
    v3->_metadataProvider = v4;

    v6 = objc_opt_new();
    bundleIDsWithAssistantSchemaConformanceCache = v3->_bundleIDsWithAssistantSchemaConformanceCache;
    v3->_bundleIDsWithAssistantSchemaConformanceCache = v6;

    v8 = objc_opt_new();
    typeIdentifierToAssistantSchemasCache = v3->_typeIdentifierToAssistantSchemasCache;
    v3->_typeIdentifierToAssistantSchemasCache = v8;

    disabledBundles = v3->_disabledBundles;
    v3->_disabledBundles = &unk_1F0BD7210;
  }

  return v3;
}

@end