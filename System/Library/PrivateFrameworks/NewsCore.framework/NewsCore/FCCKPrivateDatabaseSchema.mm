@interface FCCKPrivateDatabaseSchema
+ (FCCKPrivateDatabaseSchema)databaseSchemaWithZones:(void *)zones records:(void *)records recordTypeVersionMapping:(void *)mapping recordNameVersionMapping:;
- (FCCKPrivateDatabaseSchema)init;
- (FCCKRecordTypeMapping)mappingFromRecordType:(void *)type inZoneName:(uint64_t)name toVersion:;
- (FCCKRecordZoneIDMapping)mappingFromRecord:(uint64_t)record toVersion:;
- (FCCKRecordZoneIDMapping)mappingFromRecordZoneName:(uint64_t)name toVersion:;
- (id)mappingFromRecordID:(uint64_t)d toVersion:;
- (id)mappingFromRecordType:(void *)type inZoneID:(uint64_t)d toVersion:;
- (id)mappingFromRecordZoneID:(uint64_t)d toVersion:;
- (id)recordNamesInDefaultZoneChangedFromVersion:(uint64_t)version toVersion:;
- (id)schemaForZoneWithName:(id *)name;
- (id)zoneNamesWithChangesFromVersion:(uint64_t)version toVersion:;
- (void)enumerateZoneSchemasForVersion:(void *)version withBlock:;
- (void)enumerateZoneSchemasWithBlock:(uint64_t)block;
- (void)schemaForZoneContainingRecordID:(void *)d;
@end

@implementation FCCKPrivateDatabaseSchema

+ (FCCKPrivateDatabaseSchema)databaseSchemaWithZones:(void *)zones records:(void *)records recordTypeVersionMapping:(void *)mapping recordNameVersionMapping:
{
  v176 = *MEMORY[0x1E69E9840];
  mappingCopy = mapping;
  recordsCopy = records;
  zonesCopy = zones;
  v12 = a2;
  objc_opt_self();
  v13 = [FCCKPrivateDatabaseSchema alloc];
  v14 = v12;
  v15 = zonesCopy;
  v16 = recordsCopy;
  v17 = mappingCopy;
  if (v13)
  {
    v147.receiver = v13;
    v147.super_class = FCCKPrivateDatabaseSchema;
    v18 = objc_msgSendSuper2(&v147, sel_init);
    if (v18)
    {
      v119 = v18;
      v102 = v17;
      v106 = v16;
      v107 = v15;
      v113 = [MEMORY[0x1E695DFA8] set];
      v105 = [MEMORY[0x1E695DFA8] set];
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      array = [MEMORY[0x1E695DF70] array];
      [MEMORY[0x1E695DF90] dictionary];
      v104 = v103 = v14;
      v143 = 0u;
      v144 = 0u;
      v145 = 0u;
      v146 = 0u;
      obj = v14;
      v19 = [obj countByEnumeratingWithState:&v143 objects:v175 count:16];
      v20 = MEMORY[0x1E695B800];
      if (v19)
      {
        v21 = v19;
        v22 = *v144;
        v23 = *MEMORY[0x1E695B800];
        do
        {
          v24 = 0;
          do
          {
            if (*v144 != v22)
            {
              objc_enumerationMutation(obj);
            }

            v25 = *(*(&v143 + 1) + 8 * v24);
            if (v25)
            {
              v26 = *(v25 + 16);
            }

            else
            {
              v26 = 0;
            }

            v27 = v26;
            v28 = [v27 isEqualToString:v23];

            if (v28)
            {
              [array addObject:v25];
            }

            else
            {
              if (v25)
              {
                v29 = *(v25 + 16);
              }

              else
              {
                v29 = 0;
              }

              v30 = v29;
              [dictionary setObject:v25 forKeyedSubscript:v30];
            }

            if (v25)
            {
              v31 = *(v25 + 16);
            }

            else
            {
              v31 = 0;
            }

            v32 = v31;
            [v113 addObject:v32];

            ++v24;
          }

          while (v21 != v24);
          v33 = [obj countByEnumeratingWithState:&v143 objects:v175 count:16];
          v21 = v33;
        }

        while (v33);
      }

      v141 = 0u;
      v142 = 0u;
      v139 = 0u;
      v140 = 0u;
      v111 = v107;
      v34 = [v111 countByEnumeratingWithState:&v139 objects:v174 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v140;
        do
        {
          v37 = 0;
          do
          {
            if (*v140 != v36)
            {
              objc_enumerationMutation(v111);
            }

            v38 = *(*(&v139 + 1) + 8 * v37);
            if (v38)
            {
              v39 = *(v38 + 16);
              [v104 setObject:v38 forKeyedSubscript:v39];

              v40 = *(v38 + 16);
            }

            else
            {
              [v104 setObject:0 forKeyedSubscript:0];
              v40 = 0;
            }

            v41 = v40;
            [v105 addObject:v41];

            ++v37;
          }

          while (v35 != v37);
          v42 = [v111 countByEnumeratingWithState:&v139 objects:v174 count:16];
          v35 = v42;
        }

        while (v42);
      }

      v43 = [v106 mappingByTransformingValuesWithBlock:&__block_literal_global_138];
      v44 = v119;
      zoneNameVersionMapping = v119->_zoneNameVersionMapping;
      v119->_zoneNameVersionMapping = v43;

      objc_storeStrong(&v119->_recordTypeVersionMapping, records);
      objc_storeStrong(&v119->_recordNameVersionMapping, mapping);
      objc_storeStrong(&v119->_zoneSchemasByName, dictionary);
      objc_storeStrong(&v119->_defaultZoneSchemas, array);
      objc_storeStrong(&v119->_recordSchemasByType, v104);
      v46 = 0;
      v47 = *v20;
      do
      {
        v137 = 0u;
        v138 = 0u;
        v135 = 0u;
        v136 = 0u;
        v115 = v46;
        v48 = [(FCCKPrivateDatabaseVersionMapping *)v44->_recordTypeVersionMapping allValuesForVersion:?];
        v49 = [v48 countByEnumeratingWithState:&v135 objects:v173 count:16];
        if (v49)
        {
          v50 = v49;
          v51 = *v136;
          do
          {
            for (i = 0; i != v50; ++i)
            {
              if (*v136 != v51)
              {
                objc_enumerationMutation(v48);
              }

              v53 = *(*(&v135 + 1) + 8 * i);
              first = [v53 first];
              if ([first isEqualToString:v47])
              {
              }

              else
              {
                zoneSchemasByName = v119->_zoneSchemasByName;
                first2 = [v53 first];
                v57 = [(NSDictionary *)zoneSchemasByName objectForKey:first2];

                if (!v57 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  v64 = objc_alloc(MEMORY[0x1E696AEC0]);
                  first3 = [v53 first];
                  v66 = [v64 initWithFormat:@"missing zone name in schema: %@", first3];
                  *buf = 136315906;
                  v166 = "[FCCKPrivateDatabaseSchema initWithZoneSchemas:recordSchemas:recordTypeVersionMapping:recordNameVersionMapping:]";
                  v167 = 2080;
                  v168 = "FCCKPrivateDatabaseSchema.m";
                  v169 = 1024;
                  v170 = 91;
                  v171 = 2114;
                  v172 = v66;
                  _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
                }
              }

              recordSchemasByType = v119->_recordSchemasByType;
              second = [v53 second];
              v60 = [(NSDictionary *)recordSchemasByType objectForKey:second];

              if (!v60 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                v61 = objc_alloc(MEMORY[0x1E696AEC0]);
                second2 = [v53 second];
                v63 = [v61 initWithFormat:@"missing record type in schema: %@", second2];
                *buf = 136315906;
                v166 = "[FCCKPrivateDatabaseSchema initWithZoneSchemas:recordSchemas:recordTypeVersionMapping:recordNameVersionMapping:]";
                v167 = 2080;
                v168 = "FCCKPrivateDatabaseSchema.m";
                v169 = 1024;
                v170 = 92;
                v171 = 2114;
                v172 = v63;
                _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
              }
            }

            v50 = [v48 countByEnumeratingWithState:&v135 objects:v173 count:16];
          }

          while (v50);
        }

        v46 = v115 + 1;
        v44 = v119;
      }

      while (v115 != 3);
      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      v110 = obj;
      v114 = [v110 countByEnumeratingWithState:&v131 objects:buf count:16];
      if (v114)
      {
        v112 = *v132;
        do
        {
          v67 = 0;
          do
          {
            if (*v132 != v112)
            {
              objc_enumerationMutation(v110);
            }

            v68 = *(*(&v131 + 1) + 8 * v67);
            recordTypeVersionMapping = v44->_recordTypeVersionMapping;
            v130[0] = MEMORY[0x1E69E9820];
            v130[1] = 3221225472;
            v130[2] = __113__FCCKPrivateDatabaseSchema_initWithZoneSchemas_recordSchemas_recordTypeVersionMapping_recordNameVersionMapping___block_invoke_17;
            v130[3] = &unk_1E7C44AF8;
            v130[4] = v68;
            if (![(FCCKPrivateDatabaseVersionMapping *)recordTypeVersionMapping containsValuePassingTest:v130]&& os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v82 = objc_alloc(MEMORY[0x1E696AEC0]);
              if (v68)
              {
                v83 = *(v68 + 16);
              }

              else
              {
                v83 = 0;
              }

              v84 = v83;
              v85 = [v82 initWithFormat:@"missing zone name in version mapping: %@", v84];
              *v156 = 136315906;
              v157 = "[FCCKPrivateDatabaseSchema initWithZoneSchemas:recordSchemas:recordTypeVersionMapping:recordNameVersionMapping:]";
              v158 = 2080;
              v159 = "FCCKPrivateDatabaseSchema.m";
              v160 = 1024;
              v161 = 99;
              v162 = 2114;
              v163 = v85;
              _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v156, 0x26u);
            }

            v126 = 0u;
            v127 = 0u;
            v128 = 0u;
            v129 = 0u;
            v116 = v67;
            if (v68)
            {
              v70 = *(v68 + 32);
            }

            else
            {
              v70 = 0;
            }

            v71 = v70;
            v72 = [v71 countByEnumeratingWithState:&v126 objects:v164 count:16];
            if (v72)
            {
              v73 = v72;
              v74 = *v127;
              do
              {
                v75 = 0;
                do
                {
                  if (*v127 != v74)
                  {
                    objc_enumerationMutation(v71);
                  }

                  v76 = *(*(&v126 + 1) + 8 * v75);
                  recordNameVersionMapping = v44->_recordNameVersionMapping;
                  v125[0] = MEMORY[0x1E69E9820];
                  v125[1] = 3221225472;
                  v125[2] = __113__FCCKPrivateDatabaseSchema_initWithZoneSchemas_recordSchemas_recordTypeVersionMapping_recordNameVersionMapping___block_invoke_22;
                  v125[3] = &unk_1E7C44B20;
                  v125[4] = v68;
                  v125[5] = v76;
                  if (![(FCCKPrivateDatabaseVersionMapping *)recordNameVersionMapping containsValuePassingTest:v125]&& os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    obja = objc_alloc(MEMORY[0x1E696AEC0]);
                    if (v68)
                    {
                      v78 = *(v68 + 16);
                    }

                    else
                    {
                      v78 = 0;
                    }

                    v79 = v78;
                    v80 = [obja initWithFormat:@"missing static record in name mapping: %@:%@", v79, v76];
                    *v156 = 136315906;
                    v157 = "[FCCKPrivateDatabaseSchema initWithZoneSchemas:recordSchemas:recordTypeVersionMapping:recordNameVersionMapping:]";
                    v158 = 2080;
                    v159 = "FCCKPrivateDatabaseSchema.m";
                    v160 = 1024;
                    v161 = 104;
                    v162 = 2114;
                    v163 = v80;
                    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v156, 0x26u);

                    v44 = v119;
                  }

                  ++v75;
                }

                while (v73 != v75);
                v81 = [v71 countByEnumeratingWithState:&v126 objects:v164 count:16];
                v73 = v81;
              }

              while (v81);
            }

            v67 = v116 + 1;
          }

          while (v116 + 1 != v114);
          v86 = [v110 countByEnumeratingWithState:&v131 objects:buf count:16];
          v114 = v86;
        }

        while (v86);
      }

      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      v87 = v111;
      v88 = [v87 countByEnumeratingWithState:&v121 objects:v156 count:16];
      if (v88)
      {
        v89 = v88;
        v90 = *v122;
        v91 = MEMORY[0x1E69E9C10];
        do
        {
          v92 = 0;
          do
          {
            if (*v122 != v90)
            {
              objc_enumerationMutation(v87);
            }

            v93 = *(*(&v121 + 1) + 8 * v92);
            v94 = v119->_recordTypeVersionMapping;
            v120[0] = MEMORY[0x1E69E9820];
            v120[1] = 3221225472;
            v120[2] = __113__FCCKPrivateDatabaseSchema_initWithZoneSchemas_recordSchemas_recordTypeVersionMapping_recordNameVersionMapping___block_invoke_26;
            v120[3] = &unk_1E7C44AF8;
            v120[4] = v93;
            if (![(FCCKPrivateDatabaseVersionMapping *)v94 containsValuePassingTest:v120]&& os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
            {
              v95 = objc_alloc(MEMORY[0x1E696AEC0]);
              if (v93)
              {
                v96 = *(v93 + 16);
              }

              else
              {
                v96 = 0;
              }

              v97 = v96;
              v98 = [v95 initWithFormat:@"missing record type in version mapping: %@", v97];
              *v148 = 136315906;
              v149 = "[FCCKPrivateDatabaseSchema initWithZoneSchemas:recordSchemas:recordTypeVersionMapping:recordNameVersionMapping:]";
              v150 = 2080;
              v151 = "FCCKPrivateDatabaseSchema.m";
              v152 = 1024;
              v153 = 111;
              v154 = 2114;
              v155 = v98;
              _os_log_error_impl(&dword_1B63EF000, v91, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v148, 0x26u);
            }

            ++v92;
          }

          while (v89 != v92);
          v99 = [v87 countByEnumeratingWithState:&v121 objects:v156 count:16];
          v89 = v99;
        }

        while (v99);
      }

      v17 = v102;
      v14 = v103;
      v16 = v106;
      v15 = v107;
      v13 = v119;
    }

    else
    {
      v13 = 0;
    }
  }

  v100 = *MEMORY[0x1E69E9840];

  return v13;
}

- (FCCKPrivateDatabaseSchema)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCCKPrivateDatabaseSchema init]";
    v10 = 2080;
    v11 = "FCCKPrivateDatabaseSchema.m";
    v12 = 1024;
    v13 = 40;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCCKPrivateDatabaseSchema init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

uint64_t __113__FCCKPrivateDatabaseSchema_initWithZoneSchemas_recordSchemas_recordTypeVersionMapping_recordNameVersionMapping___block_invoke_17(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  if (v2)
  {
    v4 = *(v2 + 16);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [v3 first];

  v7 = [v5 isEqualToString:v6];
  return v7;
}

uint64_t __113__FCCKPrivateDatabaseSchema_initWithZoneSchemas_recordSchemas_recordTypeVersionMapping_recordNameVersionMapping___block_invoke_22(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = v4[2];
  }

  v5 = v4;
  v6 = [v3 first];
  if ([v5 isEqualToString:v6])
  {
    v7 = *(a1 + 40);
    v8 = [v3 second];
    v9 = [v7 isEqualToString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __113__FCCKPrivateDatabaseSchema_initWithZoneSchemas_recordSchemas_recordTypeVersionMapping_recordNameVersionMapping___block_invoke_26(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  if (v2)
  {
    v4 = *(v2 + 16);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [v3 second];

  v7 = [v5 isEqualToString:v6];
  return v7;
}

- (FCCKRecordZoneIDMapping)mappingFromRecord:(uint64_t)record toVersion:
{
  selfCopy = self;
  if (self)
  {
    v5 = a2;
    recordID = [v5 recordID];
    v7 = [(FCCKPrivateDatabaseSchema *)selfCopy mappingFromRecordID:recordID toVersion:record];

    recordType = [v5 recordType];
    recordID2 = [v5 recordID];

    zoneID = [recordID2 zoneID];
    v11 = [(FCCKPrivateDatabaseSchema *)selfCopy mappingFromRecordType:recordType inZoneID:zoneID toVersion:record];

    v12 = [FCCKRecordMapping alloc];
    fromZoneSchema = [v7 fromZoneSchema];
    toZoneSchema = [v7 toZoneSchema];
    fromRecordSchema = [v11 fromRecordSchema];
    toRecordSchema = [v11 toRecordSchema];
    selfCopy = [(FCCKRecordMapping *)v12 initWithFromZoneSchema:fromZoneSchema toZoneSchema:toZoneSchema fromRecordSchema:fromRecordSchema toRecordSchema:toRecordSchema recordIDMapping:v7];
  }

  return selfCopy;
}

- (id)mappingFromRecordID:(uint64_t)d toVersion:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    zoneID = [v5 zoneID];
    zoneName = [zoneID zoneName];
    recordName = [v6 recordName];
    v10 = [FCPair pairWithFirst:zoneName second:recordName];

    v11 = [*(self + 24) mapValue:v10 toVersion:d];
    second = [v11 second];
    v13 = second;
    if (second)
    {
      recordName2 = second;
    }

    else
    {
      recordName2 = [v6 recordName];
    }

    v15 = recordName2;

    zoneID2 = [v6 zoneID];
    zoneName2 = [zoneID2 zoneName];
    v18 = [zoneName2 isEqualToString:*MEMORY[0x1E695B800]];

    if (v18)
    {
      v19 = *(self + 40);
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __59__FCCKPrivateDatabaseSchema_mappingFromRecordID_toVersion___block_invoke;
      v43[3] = &unk_1E7C44B48;
      v20 = v6;
      v44 = v20;
      v21 = [v19 fc_firstObjectPassingTest:v43];
      v22 = *(self + 40);
      v38 = MEMORY[0x1E69E9820];
      v39 = 3221225472;
      v40 = __59__FCCKPrivateDatabaseSchema_mappingFromRecordID_toVersion___block_invoke_2;
      v41 = &unk_1E7C44B48;
      v23 = v15;
      v42 = v23;
      v24 = [v22 fc_firstObjectPassingTest:&v38];
      v25 = [FCCKRecordIDMapping alloc];
      recordName3 = [v20 recordName];
      self = [(FCCKRecordIDMapping *)v25 initWithFromZoneSchema:v21 toZoneSchema:v24 fromRecordName:recordName3 toRecordName:v23];
    }

    else
    {
      zoneID3 = [v6 zoneID];
      zoneName3 = [zoneID3 zoneName];
      v29 = [(FCCKPrivateDatabaseSchema *)self schemaForZoneWithName:zoneName3];

      v30 = *(self + 8);
      zoneID4 = [v6 zoneID];
      zoneName4 = [zoneID4 zoneName];
      v33 = [v30 mapValue:zoneName4 toVersion:d];

      v34 = [(FCCKPrivateDatabaseSchema *)self schemaForZoneWithName:v33];
      v35 = [FCCKRecordIDMapping alloc];
      recordName4 = [v6 recordName];
      self = [(FCCKRecordIDMapping *)v35 initWithFromZoneSchema:v29 toZoneSchema:v34 fromRecordName:recordName4 toRecordName:v15];
    }
  }

  return self;
}

- (id)mappingFromRecordType:(void *)type inZoneID:(uint64_t)d toVersion:
{
  if (self)
  {
    v7 = a2;
    zoneName = [type zoneName];
    v9 = [(FCCKPrivateDatabaseSchema *)self mappingFromRecordType:v7 inZoneName:zoneName toVersion:d];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __59__FCCKPrivateDatabaseSchema_mappingFromRecordID_toVersion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 recordName];
  if (v3)
  {
    v5 = [v3[4] containsObject:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __59__FCCKPrivateDatabaseSchema_mappingFromRecordID_toVersion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return [*(a2 + 32) containsObject:*(a1 + 32)];
  }

  else
  {
    return 0;
  }
}

- (id)schemaForZoneWithName:(id *)name
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (name)
  {
    if ([v3 isEqualToString:*MEMORY[0x1E695B800]] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"to get the schema for the default zone, use schemaForZoneContainingRecordID:"];
      v8 = 136315906;
      v9 = "[FCCKPrivateDatabaseSchema schemaForZoneWithName:]";
      v10 = 2080;
      v11 = "FCCKPrivateDatabaseSchema.m";
      v12 = 1024;
      v13 = 218;
      v14 = 2114;
      v15 = v7;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v8, 0x26u);
    }

    name = [name[4] objectForKeyedSubscript:v4];
  }

  v5 = *MEMORY[0x1E69E9840];

  return name;
}

- (id)mappingFromRecordZoneID:(uint64_t)d toVersion:
{
  if (self)
  {
    zoneName = [a2 zoneName];
    v6 = [(FCCKPrivateDatabaseSchema *)self mappingFromRecordZoneName:zoneName toVersion:d];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (FCCKRecordZoneIDMapping)mappingFromRecordZoneName:(uint64_t)name toVersion:
{
  selfCopy = self;
  if (self)
  {
    v5 = a2;
    v6 = [(FCCKPrivateDatabaseSchema *)&selfCopy->super.isa schemaForZoneWithName:v5];
    v7 = [(FCCKZoneSchema *)selfCopy->_fromZoneSchema mapValue:v5 toVersion:name];

    v8 = [(FCCKPrivateDatabaseSchema *)&selfCopy->super.isa schemaForZoneWithName:v7];
    selfCopy = [[FCCKRecordZoneIDMapping alloc] initWithFromZoneSchema:v6 toZoneSchema:v8];
  }

  return selfCopy;
}

- (FCCKRecordTypeMapping)mappingFromRecordType:(void *)type inZoneName:(uint64_t)name toVersion:
{
  typeCopy = type;
  if (self)
  {
    isa = self[2].super.isa;
    v9 = a2;
    v10 = [(objc_class *)isa objectForKeyedSubscript:v9];
    v11 = [FCPair pairWithFirst:typeCopy second:v9];

    v12 = [(FCCKZoneSchema *)self->_toZoneSchema mapValue:v11 toVersion:name];
    v13 = self[2].super.isa;
    second = [v12 second];
    v15 = [(objc_class *)v13 objectForKeyedSubscript:second];

    if ([typeCopy isEqualToString:*MEMORY[0x1E695B800]])
    {
      v16 = [FCCKRecordZoneIDMapping alloc];
      firstObject = [(FCCKZoneSchema *)self[1]._toZoneSchema firstObject];
      firstObject2 = [(FCCKZoneSchema *)self[1]._toZoneSchema firstObject];
      v19 = [(FCCKRecordZoneIDMapping *)v16 initWithFromZoneSchema:firstObject toZoneSchema:firstObject2];
    }

    else
    {
      v19 = [(FCCKPrivateDatabaseSchema *)self mappingFromRecordZoneName:typeCopy toVersion:name];
    }

    v20 = [FCCKRecordTypeMapping alloc];
    fromZoneSchema = [(FCCKRecordZoneIDMapping *)v19 fromZoneSchema];
    toZoneSchema = [(FCCKRecordZoneIDMapping *)v19 toZoneSchema];
    v23 = [(FCCKRecordTypeMapping *)v20 initWithFromZoneSchema:fromZoneSchema toZoneSchema:toZoneSchema fromRecordSchema:v10 toRecordSchema:v15];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (void)schemaForZoneContainingRecordID:(void *)d
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (d)
  {
    if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"can't resolve the default zone without a record ID"];
      *buf = 136315906;
      v18 = "[FCCKPrivateDatabaseSchema schemaForZoneContainingRecordID:]";
      v19 = 2080;
      v20 = "FCCKPrivateDatabaseSchema.m";
      v21 = 1024;
      v22 = 231;
      v23 = 2114;
      v24 = v14;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    zoneID = [v4 zoneID];
    zoneName = [zoneID zoneName];
    v7 = [zoneName isEqualToString:*MEMORY[0x1E695B800]];

    if (v7)
    {
      v8 = d[5];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __61__FCCKPrivateDatabaseSchema_schemaForZoneContainingRecordID___block_invoke;
      v15[3] = &unk_1E7C44B48;
      v16 = v4;
      d = [v8 fc_firstObjectPassingTest:v15];
      zoneID2 = v16;
    }

    else
    {
      v10 = d[4];
      zoneID2 = [v4 zoneID];
      zoneName2 = [zoneID2 zoneName];
      d = [v10 objectForKeyedSubscript:zoneName2];
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  return d;
}

uint64_t __61__FCCKPrivateDatabaseSchema_schemaForZoneContainingRecordID___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 recordName];
  if (v3)
  {
    v5 = [v3[4] containsObject:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)enumerateZoneSchemasForVersion:(void *)version withBlock:
{
  v29 = *MEMORY[0x1E69E9840];
  versionCopy = version;
  v6 = versionCopy;
  if (self && versionCopy)
  {
    v7 = [self[1] allValuesForVersion:a2];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      do
      {
        v11 = 0;
        do
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [self[4] objectForKeyedSubscript:*(*(&v23 + 1) + 8 * v11)];
          if (v12)
          {
            (v6)[2](v6, v12);
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v9);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v13 = self[5];
    v14 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      do
      {
        v17 = 0;
        do
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v6[2](v6, *(*(&v19 + 1) + 8 * v17++));
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v15);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)enumerateZoneSchemasWithBlock:(uint64_t)block
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (block && v3)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    allValues = [*(block + 32) allValues];
    v6 = [allValues countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v21;
      do
      {
        v9 = 0;
        do
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(allValues);
          }

          v4[2](v4, *(*(&v20 + 1) + 8 * v9++));
        }

        while (v7 != v9);
        v7 = [allValues countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v7);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = *(block + 40);
    v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v4[2](v4, *(*(&v16 + 1) + 8 * v14++));
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v12);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)zoneNamesWithChangesFromVersion:(uint64_t)version toVersion:
{
  if (self)
  {
    var38[0] = MEMORY[0x1E69E9820];
    var38[1] = 3221225472;
    var38[2] = __71__FCCKPrivateDatabaseSchema_zoneNamesWithChangesFromVersion_toVersion___block_invoke;
    var38[3] = &unk_1E7C44B70;
    var38[4] = self;
    var38[5] = a2;
    var38[6] = version;
    self = [MEMORY[0x1E695DFD8] fc_set:var38];
    v3 = var38[8];
  }

  return self;
}

void __71__FCCKPrivateDatabaseSchema_zoneNamesWithChangesFromVersion_toVersion___block_invoke(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [*(a1[4] + 16) allValuesModifiedFromVersion:a1[5] toVersion:{a1[6], 0}];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * v8) first];
        [v3 addObject:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)recordNamesInDefaultZoneChangedFromVersion:(uint64_t)version toVersion:
{
  if (self)
  {
    var38[0] = MEMORY[0x1E69E9820];
    var38[1] = 3221225472;
    var38[2] = __82__FCCKPrivateDatabaseSchema_recordNamesInDefaultZoneChangedFromVersion_toVersion___block_invoke;
    var38[3] = &unk_1E7C44B70;
    var38[4] = self;
    var38[5] = a2;
    var38[6] = version;
    self = [MEMORY[0x1E695DFD8] fc_set:var38];
    v3 = var38[8];
  }

  return self;
}

void __82__FCCKPrivateDatabaseSchema_recordNamesInDefaultZoneChangedFromVersion_toVersion___block_invoke(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [*(a1[4] + 24) allValuesModifiedFromVersion:a1[5] toVersion:{a1[6], 0}];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    v8 = *MEMORY[0x1E695B800];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 first];
        v12 = [v11 isEqualToString:v8];

        if (v12)
        {
          v13 = [v10 second];
          [v3 addObject:v13];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x1E69E9840];
}

@end