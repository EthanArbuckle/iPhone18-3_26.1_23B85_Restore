@interface MDPathFilterGenerator
- (MDPathFilterGenerator)initWithDefaultFieldsAndValues:(int *)values ignoreFields:(int *)fields mappedPrefixes:(id)prefixes hiddenExtensions:(id)extensions mappedExtensions:(id)mappedExtensions;
- (_MDPlistContainer)copyFilterMDPlistForMountDepth:(int)depth;
- (void)addMappedExtensions:(id)extensions;
- (void)addNamed:(id)named auxValue:(unint64_t)value forPath:(id)path;
- (void)addRules:(id *)rules withPrefix:(id)prefix;
- (void)addRules:(id *)rules withPrefix:(id)prefix tableMapping:(id)mapping;
- (void)dealloc;
- (void)dump;
- (void)setAtBundleField:(unsigned int)field inBundleField:(unsigned int)bundleField;
@end

@implementation MDPathFilterGenerator

- (MDPathFilterGenerator)initWithDefaultFieldsAndValues:(int *)values ignoreFields:(int *)fields mappedPrefixes:(id)prefixes hiddenExtensions:(id)extensions mappedExtensions:(id)mappedExtensions
{
  v32 = *MEMORY[0x1E69E9840];
  v31.receiver = self;
  v31.super_class = MDPathFilterGenerator;
  v11 = [(MDPathFilterGenerator *)&v31 init:values];
  v12 = v11;
  if (v11)
  {
    if (fields)
    {
      v13 = *fields;
      if (*fields)
      {
        ignoreMask = v11->_ignoreMask;
        v15 = fields + 1;
        do
        {
          ignoreMask |= ~(-1 << (v13 >> 6)) << v13;
          v16 = *v15++;
          v13 = v16;
        }

        while (v16);
        v11->_ignoreMask = ignoreMask;
      }
    }

    if (values)
    {
      v17 = *values;
      if (*values)
      {
        v18 = v11->_ignoreMask;
        v19 = values + 2;
        do
        {
          v20 = ~(-1 << (v17 >> 6));
          v21 = v20 << v17;
          if ((v18 & (v20 << v17)) == 0)
          {
            v22 = v11->_defaultMask | v21;
            v11->_defaultRule |= (*(v19 - 1) & v20) << (v17 & 0x3F);
            v11->_defaultMask = v22;
            if ((v17 & 0x1000) != 0)
            {
              v11->_inheritMask |= v21;
            }
          }

          v23 = *v19;
          v19 += 2;
          v17 = v23;
        }

        while (v23);
      }
    }

    v11->_namedRoots = objc_alloc_init(MEMORY[0x1E695DF90]);
    v12->_namedRootArray = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12->_namedRootIndexes = objc_alloc_init(MEMORY[0x1E695DF90]);
    v12->_auxValueArray = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12->_processExtensions = (prefixes | mappedExtensions) != 0;
    v24 = objc_alloc(MEMORY[0x1E695DF20]);
    v25 = MEMORY[0x1E695E0F8];
    if (prefixes)
    {
      prefixesCopy = prefixes;
    }

    else
    {
      prefixesCopy = MEMORY[0x1E695E0F8];
    }

    v12->_namedLinkPrefixesDictionary = [v24 initWithDictionary:prefixesCopy];
    v27 = objc_alloc(MEMORY[0x1E695DF90]);
    if (mappedExtensions)
    {
      mappedExtensionsCopy = mappedExtensions;
    }

    else
    {
      mappedExtensionsCopy = v25;
    }

    v12->_namedLinkExtensionsDictionary = [v27 initWithDictionary:mappedExtensionsCopy];
  }

  v29 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];

  v4.receiver = self;
  v4.super_class = MDPathFilterGenerator;
  [(MDPathFilterGenerator *)&v4 dealloc];
  v3 = *MEMORY[0x1E69E9840];
}

- (void)addMappedExtensions:(id)extensions
{
  v5 = *MEMORY[0x1E69E9840];
  namedLinkExtensionsDictionary = self->_namedLinkExtensionsDictionary;
  v4 = *MEMORY[0x1E69E9840];

  [(NSMutableDictionary *)namedLinkExtensionsDictionary addEntriesFromDictionary:extensions];
}

- (void)setAtBundleField:(unsigned int)field inBundleField:(unsigned int)bundleField
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = vand_s8(__PAIR64__(bundleField, field), 0x3F0000003FLL);
  v5 = vand_s8(vshr_n_u32(__PAIR64__(bundleField, field), 6uLL), 0x3F0000003FLL);
  v6.i64[0] = v5.u32[0];
  v6.i64[1] = v5.u32[1];
  v7.i64[0] = -1;
  v7.i64[1] = -1;
  v8 = vmvnq_s8(vshlq_u64(v7, v6));
  v6.i64[0] = v4.u32[0];
  v6.i64[1] = v4.u32[1];
  *&self->_atBundleMask = vshlq_u64(v8, v6);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)addNamed:(id)named auxValue:(unint64_t)value forPath:(id)path
{
  v7 = *MEMORY[0x1E69E9840];
  ++self->_auxValueCount;
  LOWORD(v6) = 0;
  [(MDPathFilterGenerator *)self addNamed:named field:0 value:0 hasAuxValue:1 auxValue:value forPath:path permitLink:v6 copyParentWildcardLink:?];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)addRules:(id *)rules withPrefix:(id)prefix
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E69E9840];

  [(MDPathFilterGenerator *)self addRules:rules withPrefix:prefix tableMapping:0];
}

- (void)addRules:(id *)rules withPrefix:(id)prefix tableMapping:(id)mapping
{
  v33 = *MEMORY[0x1E69E9840];
  if (rules->var1)
  {
    prefixCopy = prefix;
    rulesCopy = rules;
    selfCopy = self;
    v9 = 0;
    p_var1 = &rules->var1;
    selfCopy2 = self;
    prefixCopy2 = prefix;
    do
    {
      for (i = 0; ; ++i)
      {
        v12 = rulesCopy->var0[i];
        if (v12 == 0x1FFFF)
        {
          v9 = *p_var1;
          continue;
        }

        if (v12 == 196607)
        {
          if (!v9)
          {
            [MDPathFilterGenerator addRules:withPrefix:tableMapping:];
          }

          v18 = *p_var1;
          if (mapping)
          {
            v31 = 0u;
            v32 = 0u;
            v29 = 0u;
            v30 = 0u;
            v19 = [mapping countByEnumeratingWithState:&v29 objects:v28 count:16];
            if (v19)
            {
              v20 = v19;
              v21 = *v30;
              while (2)
              {
                for (j = 0; j != v20; ++j)
                {
                  if (*v30 != v21)
                  {
                    objc_enumerationMutation(mapping);
                  }

                  v23 = *(*(&v29 + 1) + 8 * j);
                  if ([v18 containsString:{v23, selfCopy2, prefixCopy2}])
                  {
                    v18 = [v18 stringByReplacingOccurrencesOfString:v23 withString:{objc_msgSend(mapping, "objectForKeyedSubscript:", v23)}];
                    goto LABEL_22;
                  }
                }

                v20 = [mapping countByEnumeratingWithState:&v29 objects:v28 count:16];
                if (v20)
                {
                  continue;
                }

                break;
              }

LABEL_22:
              selfCopy = selfCopy2;
              prefixCopy = prefixCopy2;
            }
          }

          v13 = [prefixCopy stringByAppendingPathComponent:{v18, selfCopy2, prefixCopy2}];
          v15 = selfCopy;
          v16 = v9;
          v14 = 196607;
          v17 = 0;
          goto LABEL_24;
        }

        if (!v12)
        {
          break;
        }

        if (!v9)
        {
          [MDPathFilterGenerator addRules:withPrefix:tableMapping:];
        }

        v13 = [prefixCopy stringByAppendingPathComponent:*p_var1];
        v14 = HIDWORD(v12);
        v15 = selfCopy;
        v16 = v9;
        v17 = v12;
LABEL_24:
        [(MDPathFilterGenerator *)v15 addNamed:v16 field:v14 value:v17 forPath:v13 permitLink:1, selfCopy2, prefixCopy2];
      }

      p_var1 = &rulesCopy[1].var1;
      var1 = rulesCopy[1].var1;
      ++rulesCopy;
    }

    while (var1);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (_MDPlistContainer)copyFilterMDPlistForMountDepth:(int)depth
{
  depthCopy = depth;
  v215 = *MEMORY[0x1E69E9840];
  if ([(NSMutableDictionary *)self->_namedRoots count])
  {
    Mutable = _MDPlistContainerCreateMutable(0, 1);
    _MDPlistContainerBeginContainer(Mutable, 0, v6, v7, v8, v9, v10, v11);
    if (![(NSMutableDictionary *)self->_namedRoots objectForKey:@"<ROOT>"])
    {
      [MDPathFilterGenerator copyFilterMDPlistForMountDepth:];
    }

    v12 = [-[NSMutableDictionary objectForKey:](self->_namedRootIndexes objectForKey:{@"<ROOT>", "intValue"}];
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    _MDPlistContainerBeginDictionary(Mutable, v14, v15, v16, v17, v18, v19, v20);
    _MDPlistContainerAddCString(Mutable, "ROOT_ARRAY", -1, 0, v21, v22, v23, v24);
    _MDPlistContainerBeginArray(Mutable, v25, v26, v27, v28, v29, v30, v31);
    v213 = 0u;
    v214 = 0u;
    v211 = 0u;
    v212 = 0u;
    namedRootArray = self->_namedRootArray;
    v33 = [(NSMutableArray *)namedRootArray countByEnumeratingWithState:&v211 objects:v210 count:16];
    if (v33)
    {
      v40 = v33;
      v41 = *v212;
      do
      {
        for (i = 0; i != v40; ++i)
        {
          if (*v212 != v41)
          {
            objc_enumerationMutation(namedRootArray);
          }

          [-[NSMutableDictionary objectForKey:](self->_namedRoots objectForKey:{*(*(&v211 + 1) + 8 * i)), "encodeInto:auxArray:namedRootMap:", Mutable, v13, self->_namedRootIndexes}];
        }

        v40 = [(NSMutableArray *)namedRootArray countByEnumeratingWithState:&v211 objects:v210 count:16];
      }

      while (v40);
    }

    _MDPlistContainerEndArray(Mutable, 0, v34, v35, v36, v37, v38, v39);
    _MDPlistContainerAddCString(Mutable, "COMMON", -1, 0, v43, v44, v45, v46);
    v189 = 0;
    v188 = 0;
    v47 = [v13 count];
    _MDPlistContainerAddDataValue(Mutable, 0, 8 * v47 + 48, &v188, v48, v49, v50, v51);
    v186 = 0uLL;
    v187 = 0;
    _MDPlistReferenceToPlistObject(Mutable, v188 | (v189 << 32), v52, v53, v54, v55, v56, &v186);
    v184 = v186;
    v185 = v187;
    BytePtr = _MDPlistDataGetBytePtr(&v184, 0);
    processExtensions = self->_processExtensions;
    defaultMask = self->_defaultMask;
    auxValueCount = self->_auxValueCount;
    v61 = *&self->_inheritMask;
    v62 = *&self->_atBundleMask;
    *BytePtr = depthCopy;
    *(BytePtr + 2) = processExtensions;
    *(BytePtr + 4) = v12;
    *(BytePtr + 6) = v61;
    *(BytePtr + 22) = defaultMask;
    *(BytePtr + 30) = v62;
    *(BytePtr + 46) = auxValueCount;
    v208 = 0u;
    v209 = 0u;
    v206 = 0u;
    v207 = 0u;
    v63 = [v13 countByEnumeratingWithState:&v206 objects:v205 count:16];
    if (v63)
    {
      v68 = v63;
      v69 = 0;
      v70 = *v207;
      v71 = BytePtr + 48;
      do
      {
        v72 = 0;
        v73 = v69;
        do
        {
          if (*v207 != v70)
          {
            objc_enumerationMutation(v13);
          }

          v69 = v73 + 1;
          *(v71 + 8 * v73++) = [*(*(&v206 + 1) + 8 * v72++) longLongValue];
        }

        while (v68 != v72);
        v68 = [v13 countByEnumeratingWithState:&v206 objects:v205 count:16];
      }

      while (v68);
    }

    _MDPlistContainerAddCString(Mutable, "EXTENSIONS", -1, 0, v64, v65, v66, v67);
    _MDPlistContainerBeginDictionary(Mutable, v74, v75, v76, v77, v78, v79, v80);
    v203 = 0u;
    v204 = 0u;
    v201 = 0u;
    v202 = 0u;
    allKeys = [(NSMutableDictionary *)self->_namedLinkExtensionsDictionary allKeys];
    v82 = [allKeys countByEnumeratingWithState:&v201 objects:v200 count:16];
    if (v82)
    {
      v89 = v82;
      v90 = *v202;
      do
      {
        for (j = 0; j != v89; ++j)
        {
          if (*v202 != v90)
          {
            objc_enumerationMutation(allKeys);
          }

          v92 = *(*(&v201 + 1) + 8 * j);
          if (![v92 hasPrefix:@"."] || objc_msgSend(v92, "isEqualToString:", @".*"))
          {
            v93 = [(NSMutableDictionary *)self->_namedLinkExtensionsDictionary objectForKey:v92];
            if (v93)
            {
              v94 = [(NSMutableDictionary *)self->_namedRootIndexes objectForKey:v93];
              if (!v94)
              {
                [MDPathFilterGenerator copyFilterMDPlistForMountDepth:];
              }

              v93 = ([v94 intValue] + 1) | 0x40000;
            }

            _MDPlistContainerAddObject(Mutable, v92, 0);
            _MDPlistContainerAddInt32Value(Mutable, v93, 0, v95, v96, v97, v98, v99);
          }
        }

        v89 = [allKeys countByEnumeratingWithState:&v201 objects:v200 count:16];
      }

      while (v89);
    }

    _MDPlistContainerEndDictionary(Mutable, 0, v83, v84, v85, v86, v87, v88);
    _MDPlistContainerAddCString(Mutable, "HIDDEN_EXTENSIONS", -1, 0, v100, v101, v102, v103);
    _MDPlistContainerBeginDictionary(Mutable, v104, v105, v106, v107, v108, v109, v110);
    v198 = 0u;
    v199 = 0u;
    v196 = 0u;
    v197 = 0u;
    allKeys2 = [(NSMutableDictionary *)self->_namedLinkExtensionsDictionary allKeys];
    v112 = [allKeys2 countByEnumeratingWithState:&v196 objects:v195 count:16];
    if (v112)
    {
      v119 = v112;
      v120 = *v197;
      do
      {
        for (k = 0; k != v119; ++k)
        {
          if (*v197 != v120)
          {
            objc_enumerationMutation(allKeys2);
          }

          v122 = *(*(&v196 + 1) + 8 * k);
          if ([v122 hasPrefix:@"."] && (objc_msgSend(v122, "isEqualToString:", @".*") & 1) == 0)
          {
            v123 = [(NSMutableDictionary *)self->_namedLinkExtensionsDictionary objectForKey:v122];
            if (v123)
            {
              v124 = [(NSMutableDictionary *)self->_namedRootIndexes objectForKey:v123];
              if (!v124)
              {
                [MDPathFilterGenerator copyFilterMDPlistForMountDepth:];
              }

              v123 = ([v124 intValue] + 1) | 0x40000;
            }

            _MDPlistContainerAddObject(Mutable, [v122 substringFromIndex:1], 0);
            _MDPlistContainerAddInt32Value(Mutable, v123, 0, v125, v126, v127, v128, v129);
          }
        }

        v119 = [allKeys2 countByEnumeratingWithState:&v196 objects:v195 count:16];
      }

      while (v119);
    }

    _MDPlistContainerEndDictionary(Mutable, 0, v113, v114, v115, v116, v117, v118);
    _MDPlistContainerAddCString(Mutable, "PREFIXES", -1, 0, v130, v131, v132, v133);
    _MDPlistContainerBeginDictionary(Mutable, v134, v135, v136, v137, v138, v139, v140);
    v193 = 0u;
    v194 = 0u;
    v191 = 0u;
    v192 = 0u;
    namedLinkPrefixesDictionary = self->_namedLinkPrefixesDictionary;
    v142 = [(NSDictionary *)namedLinkPrefixesDictionary countByEnumeratingWithState:&v191 objects:v190 count:16];
    if (v142)
    {
      v149 = v142;
      v150 = *v192;
      do
      {
        for (m = 0; m != v149; ++m)
        {
          if (*v192 != v150)
          {
            objc_enumerationMutation(namedLinkPrefixesDictionary);
          }

          v152 = *(*(&v191 + 1) + 8 * m);
          v153 = [(NSMutableDictionary *)self->_namedRootIndexes objectForKey:[(NSDictionary *)self->_namedLinkPrefixesDictionary objectForKey:v152]];
          if (!v153)
          {
            [MDPathFilterGenerator copyFilterMDPlistForMountDepth:];
          }

          v154 = [v153 intValue] + 1;
          _MDPlistContainerAddObject(Mutable, v152, 0);
          _MDPlistContainerAddInt32Value(Mutable, v154 | 0x40000u, 0, v155, v156, v157, v158, v159);
        }

        v149 = [(NSDictionary *)namedLinkPrefixesDictionary countByEnumeratingWithState:&v191 objects:v190 count:16];
      }

      while (v149);
    }

    _MDPlistContainerEndDictionary(Mutable, 0, v143, v144, v145, v146, v147, v148);
    _MDPlistContainerAddCString(Mutable, "IS_DATA_ROSP", 12, 0, v160, v161, v162, v163);
    _MDPlistContainerAddInt32Value(Mutable, 1, 0, v164, v165, v166, v167, v168);
    _MDPlistContainerEndDictionary(Mutable, 0, v169, v170, v171, v172, v173, v174);
    _MDPlistContainerEndContainer(Mutable, v175, v176, v177, v178, v179, v180, v181);
  }

  else
  {
    Mutable = 0;
  }

  v182 = *MEMORY[0x1E69E9840];
  return Mutable;
}

- (void)dump
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  namedRoots = self->_namedRoots;
  v4 = [(NSMutableDictionary *)namedRoots countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(namedRoots);
        }

        [-[NSMutableDictionary objectForKey:](self->_namedRoots objectForKey:{*(*(&v10 + 1) + 8 * i)), "dump:", 1}];
      }

      v5 = [(NSMutableDictionary *)namedRoots countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

@end