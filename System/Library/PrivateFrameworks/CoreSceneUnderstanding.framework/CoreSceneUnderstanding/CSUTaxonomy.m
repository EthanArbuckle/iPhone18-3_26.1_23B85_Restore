@interface CSUTaxonomy
+ (id)taxonomyWithManifestPath:(id)a3 error:(id *)a4;
- (BOOL)_hasVocabularyNamed:(id)a3;
- (CSUTaxonomy)initWithManifestPath:(id)a3 error:(id *)a4;
- (id).cxx_construct;
- (id)_vocabularyNamed:(id)a3;
- (optional<csu::TaxonomyRelations>)relations;
- (unint64_t)countLabelsInVocabularyNamed:(id)a3;
- (void)enumerateLabelsInTaxonomyUsingBlock:(id)a3;
- (void)enumerateLabelsInVocabularyNamed:(id)a3 usingBlock:(id)a4;
@end

@implementation CSUTaxonomy

- (CSUTaxonomy)initWithManifestPath:(id)a3 error:(id *)a4
{
  v225 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v221 = &v222;
  v222 = a4;
  v220.receiver = self;
  v220.super_class = CSUTaxonomy;
  v11 = [(CSUTaxonomy *)&v220 init];
  if (!v11)
  {
    if (v222)
    {
      v142 = objc_msgSend_errorForMemoryAllocationFailure(CSUError, v7, v8, v9, v10);
LABEL_41:
      v143 = 0;
      *v222 = v142;
      goto LABEL_59;
    }

LABEL_42:
    v143 = 0;
    goto LABEL_59;
  }

  if (!v6)
  {
    if (v222)
    {
      v142 = objc_msgSend_errorForInvalidArgument_named_(CSUError, v7, 0, @"taxonomy manifest path", v10);
      goto LABEL_41;
    }

    goto LABEL_42;
  }

  v12 = MEMORY[0x1E695DF20];
  v204 = v6;
  v13 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v7, v6, v9, v10);
  v219 = 0;
  v16 = objc_msgSend_dictionaryWithContentsOfURL_error_(v12, v14, v13, &v219, v15);
  v203 = v219;
  manifest = v11->_manifest;
  v11->_manifest = v16;

  if (!v11->_manifest)
  {
    if (v222)
    {
      v201 = objc_msgSend_stringByAppendingString_(@"Could not load taxonomy manifest file ", v18, v6, v20, v21);
      v145 = objc_msgSend_errorWithCode_message_underlyingError_(CSUError, v144, 1, v201, v203);
      v143 = 0;
      *v222 = v145;
    }

    else
    {
      v143 = 0;
    }

    goto LABEL_58;
  }

  v22 = objc_msgSend_stringByDeletingLastPathComponent(v6, v18, v19, v20, v21);
  v217[0] = MEMORY[0x1E69E9820];
  v217[1] = 3221225472;
  v217[2] = sub_1AC08C664;
  v217[3] = &unk_1E7968028;
  v200 = v22;
  v218 = v200;
  v205 = MEMORY[0x1AC5ACBA0](v217);
  v202 = objc_msgSend_objectForKeyedSubscript_(v11->_manifest, v23, @"formatVersion", v24, v25);
  v29 = objc_msgSend_objectForKeyedSubscript_(v11->_manifest, v26, @"name", v27, v28);
  name = v11->_name;
  v11->_name = v29;

  v34 = objc_msgSend_objectForKeyedSubscript_(v11->_manifest, v31, @"version", v32, v33);
  version = v11->_version;
  v11->_version = v34;

  v199 = objc_msgSend_objectForKeyedSubscript_(v11->_manifest, v36, @"size", v37, v38);
  v198 = objc_msgSend_objectForKeyedSubscript_(v11->_manifest, v39, @"vocabularies", v40, v41);
  if (!v202)
  {
    if (v222)
    {
      v146 = objc_msgSend_errorWithCode_message_(CSUError, v42, 6, @"Invalid manifest file, does not have the format version", v44);
LABEL_53:
      v143 = 0;
      *v222 = v146;
      goto LABEL_56;
    }

LABEL_55:
    v143 = 0;
    goto LABEL_56;
  }

  if ((objc_msgSend_isEqualToString_(v202, v42, @"1.0.0", v43, v44) & 1) == 0)
  {
    v149 = objc_msgSend_stringByAppendingString_(@"Unhandled taxonomy manifest format version ", v45, v202, v47, v48);
    if (v222)
    {
      v150 = objc_msgSend_errorWithCode_message_(CSUError, v147, 6, v149, v148);
      *v222 = v150;
    }

    goto LABEL_55;
  }

  if (!v11->_name || !v11->_version || !v199 || !v198)
  {
    if (v222)
    {
      v146 = objc_msgSend_errorWithCode_message_(CSUError, v45, 6, @"Invalid manifest file, missing required information", v48);
      goto LABEL_53;
    }

    goto LABEL_55;
  }

  v49 = objc_msgSend_unsignedLongValue(v199, v45, v46, v47, v48);
  v11->_internalCount = v49;
  if (!v49)
  {
    sub_1AC08C6E0(&v221, @"Invalid manifest file, declared size of taxonomy is 0");
    goto LABEL_55;
  }

  v50 = objc_alloc(MEMORY[0x1E695DF90]);
  v55 = objc_msgSend_count(v198, v51, v52, v53, v54);
  v189 = objc_msgSend_initWithCapacity_(v50, v56, v55, v57, v58);
  v215 = 0u;
  v216 = 0u;
  v213 = 0u;
  v214 = 0u;
  v59 = v198;
  v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v60, &v213, v224, 16);
  if (!v61)
  {
    goto LABEL_34;
  }

  v191 = v59;
  v192 = *v214;
  while (2)
  {
    v190 = v61;
    for (i = 0; i != v190; ++i)
    {
      if (*v214 != v192)
      {
        objc_enumerationMutation(v59);
      }

      v66 = *(*(&v213 + 1) + 8 * i);
      v194 = objc_msgSend_objectForKey_(v59, v62, v66, v63, v64);
      v196 = objc_msgSend_objectForKeyedSubscript_(v194, v67, @"file", v68, v69);
      v73 = objc_msgSend_objectForKeyedSubscript_(v194, v70, @"size", v71, v72);
      v77 = objc_msgSend_objectForKeyedSubscript_(v194, v74, @"visibleSize", v75, v76);
      v81 = objc_msgSend_objectForKeyedSubscript_(v194, v78, @"startIndex", v79, v80);
      v86 = v81;
      if (v196)
      {
        v87 = v73 == 0;
      }

      else
      {
        v87 = 1;
      }

      if (v87 || v81 == 0 || v77 == 0)
      {
        v153 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v82, @"Malformed properties for vocabulary named %@ in taxonomy %@", v84, v85, v66, v11->_name);
        sub_1AC08C6E0(&v221, v153);
LABEL_62:

LABEL_63:
        v143 = 0;
        v154 = v191;
        goto LABEL_78;
      }

      v93 = objc_msgSend_unsignedLongValue(v73, v82, v83, v84, v85);
      if (!v93)
      {
        v153 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v90, @"Empty vocabulary %@ in taxonomy %@", v91, v92, v66, v11->_name);
        sub_1AC08C6E0(&v221, v153);
        goto LABEL_62;
      }

      v94 = [CSUVocabulary alloc];
      v95 = (v205)[2](v205, v196);
      v100 = objc_msgSend_unsignedLongValue(v77, v96, v97, v98, v99);
      v105 = objc_msgSend_unsignedLongValue(v86, v101, v102, v103, v104);
      started = objc_msgSend_initWithName_labelFilePath_internalCount_visibleCount_startIndex_(v94, v106, v66, v95, v93, v100, v105);

      if (started)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v189, v108, started, v66, v111);
      }

      else if (v222)
      {
        v112 = objc_msgSend_errorForMemoryAllocationFailure(CSUError, v108, v109, v110, v111);
        *v222 = v112;
      }

      if (!started)
      {
        goto LABEL_63;
      }

      v59 = v191;
    }

    v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v191, v62, &v213, v224, 16);
    if (v61)
    {
      continue;
    }

    break;
  }

LABEL_34:

  v117 = objc_msgSend_copy(v189, v113, v114, v115, v116);
  vocabularies = v11->_vocabularies;
  v11->_vocabularies = v117;

  v123 = objc_msgSend_allKeys(v11->_vocabularies, v119, v120, v121, v122);
  v211[0] = MEMORY[0x1E69E9820];
  v211[1] = 3221225472;
  v211[2] = sub_1AC08C770;
  v211[3] = &unk_1E7968050;
  v124 = v11;
  v212 = v124;
  v128 = objc_msgSend_sortedArrayUsingComparator_(v123, v125, v211, v126, v127);
  vocabularyNames = v124->_vocabularyNames;
  v197 = v124;
  v124->_vocabularyNames = v128;

  v133 = objc_msgSend_objectForKeyedSubscript_(v11->_manifest, v130, @"relations", v131, v132);
  v195 = v133;
  if (v133)
  {
    v134 = v205[2](v205, v133);
    v135 = MEMORY[0x1E696AE40];
    v139 = objc_msgSend_dataWithContentsOfFile_(MEMORY[0x1E695DEF0], v136, v134, v137, v138);
    v210 = objc_msgSend_propertyListWithData_options_format_error_(v135, v140, v139, 0, 0, v222);

    if (v210)
    {
      sub_1AC08C848(&v197->_relations, &v210);

      v141 = v197;
      goto LABEL_66;
    }

    v143 = 0;
  }

  else
  {
    v141 = v124;
    if (v124->_relations.__engaged_)
    {

      v141 = v124;
      v124->_relations.__engaged_ = 0;
    }

LABEL_66:
    labelAttributes = v141->_labelAttributes;
    v141->_labelAttributes = 0;

    v159 = objc_msgSend_objectForKeyedSubscript_(v11->_manifest, v156, @"attributes", v157, v158);
    v134 = v159;
    v160 = v197;
    if (v159)
    {
      v193 = v159;
      v161 = objc_alloc(MEMORY[0x1E695DF90]);
      v166 = objc_msgSend_count(v134, v162, v163, v164, v165);
      v170 = objc_msgSend_initWithCapacity_(v161, v167, v166, v168, v169);
      v208 = 0u;
      v209 = 0u;
      v206 = 0u;
      v207 = 0u;
      v171 = v134;
      v176 = objc_msgSend_countByEnumeratingWithState_objects_count_(v171, v172, &v206, v223, 16);
      if (v176)
      {
        v177 = *v207;
        do
        {
          for (j = 0; j != v176; ++j)
          {
            if (*v207 != v177)
            {
              objc_enumerationMutation(v171);
            }

            v179 = *(*(&v206 + 1) + 8 * j);
            v180 = objc_msgSend_objectForKey_(v171, v173, v179, v174, v175);
            v181 = (v205)[2](v205, v180);
            objc_msgSend_setObject_forKeyedSubscript_(v170, v182, v181, v179, v183);
          }

          v176 = objc_msgSend_countByEnumeratingWithState_objects_count_(v171, v173, &v206, v223, 16);
        }

        while (v176);
      }

      v187 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x1E695DF20], v184, v170, v185, v186);
      v188 = v197->_labelAttributes;
      v197->_labelAttributes = v187;

      v134 = v193;
      v160 = v197;
    }

    v143 = v160;
  }

  v154 = v212;
LABEL_78:

LABEL_56:
LABEL_58:

  v6 = v204;
LABEL_59:

  v151 = *MEMORY[0x1E69E9840];
  return v143;
}

+ (id)taxonomyWithManifestPath:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [CSUTaxonomy alloc];
  v9 = objc_msgSend_initWithManifestPath_error_(v6, v7, v5, a4, v8);

  return v9;
}

- (id)_vocabularyNamed:(id)a3
{
  v5 = objc_msgSend_objectForKey_(self->_vocabularies, a2, a3, v3, v4);

  return v5;
}

- (BOOL)_hasVocabularyNamed:(id)a3
{
  v5 = objc_msgSend__vocabularyNamed_(self, a2, a3, v3, v4);
  v6 = v5 != 0;

  return v6;
}

- (unint64_t)countLabelsInVocabularyNamed:(id)a3
{
  v5 = objc_msgSend__vocabularyNamed_(self, a2, a3, v3, v4);
  v10 = v5;
  if (v5)
  {
    v11 = objc_msgSend_count(v5, v6, v7, v8, v9);

    return v11;
  }

  else
  {

    return 0;
  }
}

- (void)enumerateLabelsInVocabularyNamed:(id)a3 usingBlock:(id)a4
{
  v14 = a4;
  v9 = objc_msgSend__vocabularyNamed_(self, v6, a3, v7, v8);
  v13 = v9;
  if (v9)
  {
    objc_msgSend__enumerateVisibleLabelsInVocabularyUsingBlock_(v9, v10, v14, v11, v12);
  }
}

- (void)enumerateLabelsInTaxonomyUsingBlock:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_vocabularyNames;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v18, v26, 16);
  if (v6)
  {
    v7 = *v19;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v19 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v18 + 1) + 8 * v8);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = sub_1AC08CC6C;
      v15[3] = &unk_1E7968078;
      v16 = v4;
      v17 = &v22;
      objc_msgSend_enumerateLabelsInVocabularyNamed_usingBlock_(self, v10, v9, v15, v11);
      LOBYTE(v9) = *(v23 + 24);

      if (v9)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v18, v26, 16);
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  _Block_object_dispose(&v22, 8);
  v13 = *MEMORY[0x1E69E9840];
}

- (optional<csu::TaxonomyRelations>)relations
{
  retstr->var0.__null_state_ = 0;
  retstr->__engaged_ = 0;
  if (LOBYTE(self[3].var0.__val_._count) == 1)
  {
    v4 = self;
    self = *&self[2].__engaged_;
    data = v4[3].var0.__val_._data;
    retstr->var0.__val_._data = self;
    retstr->var0.__val_._count = data;
    retstr->__engaged_ = 1;
  }

  return self;
}

- (id).cxx_construct
{
  *(self + 64) = 0;
  *(self + 80) = 0;
  return self;
}

@end