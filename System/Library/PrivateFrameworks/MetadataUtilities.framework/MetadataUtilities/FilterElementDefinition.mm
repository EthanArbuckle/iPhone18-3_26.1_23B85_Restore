@interface FilterElementDefinition
- ($89967B733E8F0E8859294B5D59E7AF0F)encodeInto:(_MDPlistContainer *)into auxArray:(id)array namedRootMap:(id)map;
- (BOOL)isBottomValue;
- (id)initAsRoot:(id)root;
- (void)dealloc;
- (void)dumpAttributesInto:(char *)into forLevel:(int)level;
@end

@implementation FilterElementDefinition

- (id)initAsRoot:(id)root
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = FilterElementDefinition;
  v4 = [(FilterElementDefinition *)&v7 init];
  if (v4)
  {
    v4->_rootName = root;
    v4->_setOfMatches = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4->_setOfPrefixedWildCards = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];

  v4.receiver = self;
  v4.super_class = FilterElementDefinition;
  [(FilterElementDefinition *)&v4 dealloc];
  v3 = *MEMORY[0x1E69E9840];
}

- (BOOL)isBottomValue
{
  v5 = *MEMORY[0x1E69E9840];
  result = ![(NSMutableDictionary *)self->_setOfMatches count]&& ![(NSMutableDictionary *)self->_setOfPrefixedWildCards count]&& !self->_namedLink && !self->_wildCard && self->_superWildCard == 0;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- ($89967B733E8F0E8859294B5D59E7AF0F)encodeInto:(_MDPlistContainer *)into auxArray:(id)array namedRootMap:(id)map
{
  arrayCopy = array;
  v149 = *MEMORY[0x1E69E9840];
  v12 = [array count];
  if (self->_hasAuxValue)
  {
    [arrayCopy addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLongLong:", self->_auxValue)}];
  }

  if (self->_namedLink)
  {
    v13 = [map objectForKey:?];
    if (!v13)
    {
      [FilterElementDefinition encodeInto:? auxArray:? namedRootMap:?];
    }

    v14 = [v13 intValue] + 1;
  }

  else
  {
    v14 = 0;
  }

  v117 = v14;
  v119 = 0;
  v118 = 0;
  v120 = 0;
  hasAuxValue = self->_hasAuxValue;
  if (self->_hasAuxValue)
  {
    v16 = v12 + 1;
  }

  else
  {
    v16 = 0;
  }

  v121 = v16;
  v122 = hasAuxValue + v12;
  subAuxValueCount = self->_subAuxValueCount;
  mask = self->_mask;
  if ([(FilterElementDefinition *)self isBottomValue])
  {
    v18 = 0;
  }

  else
  {
    v18 = 0x4000000000000000;
  }

  v124 = v18 | mask;
  rule = self->_rule;
  if ([(FilterElementDefinition *)self isBottomValue])
  {
    v24 = 0;
  }

  else
  {
    v24 = 0x4000000000000000;
  }

  v125 = v24 | rule;
  v126 = vextq_s8(*&self->_subRule, *&self->_subRule, 8uLL);
  v116 = 0;
  v115 = 0;
  v114 = 0;
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  _MDPlistContainerAddDataValue(into, &v117, 0x3CuLL, &v115, v20, v21, v22, v23);
  if ([(NSMutableDictionary *)self->_setOfMatches count])
  {
    _MDPlistContainerBeginDictionary(into, v25, v26, v27, v28, v29, v30, v31);
    v147 = 0u;
    v148 = 0u;
    v145 = 0u;
    v146 = 0u;
    setOfMatches = self->_setOfMatches;
    v33 = [(NSMutableDictionary *)setOfMatches countByEnumeratingWithState:&v145 objects:v144 count:16];
    if (v33)
    {
      v40 = v33;
      v41 = *v146;
      do
      {
        for (i = 0; i != v40; ++i)
        {
          if (*v146 != v41)
          {
            objc_enumerationMutation(setOfMatches);
          }

          v43 = *(*(&v145 + 1) + 8 * i);
          v44 = [(NSMutableDictionary *)self->_setOfMatches objectForKey:v43];
          _MDPlistContainerAddObject(into, v43, 0);
          [v44 encodeInto:into auxArray:arrayCopy namedRootMap:map];
        }

        v40 = [(NSMutableDictionary *)setOfMatches countByEnumeratingWithState:&v145 objects:v144 count:16];
      }

      while (v40);
    }

    _MDPlistContainerEndDictionary(into, &v113, v34, v35, v36, v37, v38, v39);
  }

  if ([(NSMutableDictionary *)self->_setOfPrefixedWildCards count])
  {
    v104 = arrayCopy;
    array = [MEMORY[0x1E695DF70] array];
    v140 = 0u;
    v141 = 0u;
    v142 = 0u;
    v143 = 0u;
    setOfPrefixedWildCards = self->_setOfPrefixedWildCards;
    v53 = [(NSMutableDictionary *)setOfPrefixedWildCards countByEnumeratingWithState:&v140 objects:v139 count:16];
    if (v53)
    {
      v54 = v53;
      v55 = *v141;
      do
      {
        for (j = 0; j != v54; ++j)
        {
          if (*v141 != v55)
          {
            objc_enumerationMutation(setOfPrefixedWildCards);
          }

          v57 = [[MDElementAndFED alloc] initWithElement:*(*(&v140 + 1) + 8 * j) fed:[(NSMutableDictionary *)self->_setOfPrefixedWildCards objectForKeyedSubscript:*(*(&v140 + 1) + 8 * j)]];
          [array addObject:v57];
        }

        v54 = [(NSMutableDictionary *)setOfPrefixedWildCards countByEnumeratingWithState:&v140 objects:v139 count:16];
      }

      while (v54);
    }

    [array sortUsingComparator:&__block_literal_global_13];
    _MDPlistContainerBeginArray(into, v58, v59, v60, v61, v62, v63, v64);
    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v65 = [array countByEnumeratingWithState:&v135 objects:v134 count:16];
    arrayCopy = v104;
    if (v65)
    {
      v72 = v65;
      v73 = *v136;
      do
      {
        for (k = 0; k != v72; ++k)
        {
          if (*v136 != v73)
          {
            objc_enumerationMutation(array);
          }

          _MDPlistContainerAddObject(into, *(*(*(&v135 + 1) + 8 * k) + 8), 0);
        }

        v72 = [array countByEnumeratingWithState:&v135 objects:v134 count:16];
      }

      while (v72);
    }

    _MDPlistContainerEndArray(into, &v111, v66, v67, v68, v69, v70, v71);
    _MDPlistContainerBeginArray(into, v75, v76, v77, v78, v79, v80, v81);
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v82 = [array countByEnumeratingWithState:&v130 objects:v129 count:16];
    if (v82)
    {
      v89 = v82;
      v90 = *v131;
      do
      {
        for (m = 0; m != v89; ++m)
        {
          if (*v131 != v90)
          {
            objc_enumerationMutation(array);
          }

          [*(*(*(&v130 + 1) + 8 * m) + 16) encodeInto:into auxArray:v104 namedRootMap:map];
        }

        v89 = [array countByEnumeratingWithState:&v130 objects:v129 count:16];
      }

      while (v89);
    }

    _MDPlistContainerEndArray(into, &v109, v83, v84, v85, v86, v87, v88);
  }

  wildCard = self->_wildCard;
  if (wildCard)
  {
    v93 = [(FilterElementDefinition *)wildCard encodeInto:into auxArray:arrayCopy namedRootMap:map];
  }

  else
  {
    v93 = 0;
  }

  superWildCard = self->_superWildCard;
  if (superWildCard)
  {
    v95 = [(FilterElementDefinition *)superWildCard encodeInto:into auxArray:arrayCopy namedRootMap:map];
  }

  else
  {
    v95 = 0;
  }

  v128 = 0;
  v127 = 0;
  _MDPlistContainerEndArray(into, &v127, v45, v46, v47, v48, v49, v50);
  v107 = 0uLL;
  v108 = 0;
  _MDPlistReferenceToPlistObject(into, v115 | (v116 << 32), v96, v97, v98, v99, v100, &v107);
  v105 = v107;
  v106 = v108;
  BytePtr = _MDPlistDataGetBytePtr(&v105, 0);
  *(BytePtr + 2) = v113;
  *(BytePtr + 6) = v111;
  *(BytePtr + 10) = v109;
  *(BytePtr + 14) = v93;
  *(BytePtr + 18) = v95;
  v102 = *MEMORY[0x1E69E9840];
  return (v127 | (v128 << 32));
}

uint64_t __60__FilterElementDefinition_encodeInto_auxArray_namedRootMap___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = [*(a2 + 8) length];
  v5 = [*(a3 + 8) length];
  if (v4 > v5)
  {
    result = -1;
  }

  else
  {
    result = v4 < v5;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dumpAttributesInto:(char *)into forLevel:(int)level
{
  v19 = *MEMORY[0x1E69E9840];
  rootName = self->_rootName;
  if (rootName)
  {
    uTF8String = [(NSString *)rootName UTF8String];
    rule = self->_rule;
    mask = self->_mask;
    subRule = self->_subRule;
    self->_subMask;
    [(FilterElementDefinition *)self isBottomValue];
    auxValue = self->_auxValue;
    subAuxValueCount = self->_subAuxValueCount;
    sprintf(into, "--| (name:%s rule:%llX %llX %s sub:%llX %llX bottom:%d auxValue:%lld count:%d %d)", uTF8String, rule, mask);
  }

  else
  {
    v12 = self->_rule;
    v13 = self->_mask;
    v14 = self->_subRule;
    self->_subMask;
    [(FilterElementDefinition *)self isBottomValue];
    v15 = self->_auxValue;
    v17 = self->_subAuxValueCount;
    sprintf(into, "  (rule:%llX %llX %s sub:%llX %llX bottom:%d auxValue:%lld count:%d %d)", v12, v13);
  }

  v16 = *MEMORY[0x1E69E9840];
}

@end