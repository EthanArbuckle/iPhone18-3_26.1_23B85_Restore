@interface IHKFilterSequence
+ (id)breakPascalCaseIntoWords:(id)a3;
+ (id)getScalarInputsForCIFilterNamed:(id)a3;
+ (id)paramToInputName:(id)a3;
+ (id)parseFilterSequenceSpec:(id)a3;
+ (id)uiNameForCIFilter:(id)a3 paramName:(id)a4;
+ (id)uiNameForCIFilterName:(id)a3;
+ (id)uiNameForParamName:(id)a3;
- (IHKFilterSequence)initWithFilterSpec:(id)a3;
- (id)applySliders:(id)a3 image:(id)a4 error:(id *)a5;
- (id)packageSliderValues:(id)a3;
@end

@implementation IHKFilterSequence

+ (id)getScalarInputsForCIFilterNamed:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v40 = a3;
  v41 = objc_opt_new();
  v6 = objc_msgSend_filterWithName_(MEMORY[0x277CBF750], v3, v40, v4, v5);
  v11 = v6;
  if (v6)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = objc_msgSend_inputKeys(v6, v7, v8, v9, v10);
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v43, v47, 16);
    if (v17)
    {
      v18 = *v44;
      v19 = *MEMORY[0x277CBF7F0];
      v20 = *MEMORY[0x277CBF850];
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v44 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v43 + 1) + 8 * i);
          v23 = objc_msgSend_attributes(v11, v13, v14, v15, v16);
          v27 = objc_msgSend_objectForKeyedSubscript_(v23, v24, v22, v25, v26);
          v31 = objc_msgSend_objectForKeyedSubscript_(v27, v28, v19, v29, v30);

          if (objc_msgSend_isEqualToString_(v31, v32, v20, v33, v34))
          {
            objc_msgSend_addObject_(v41, v35, v22, v36, v37);
          }
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v43, v47, 16);
      }

      while (v17);
    }
  }

  else
  {
    NSLog(&cfstr_CouldNotFindFi.isa, v40);
  }

  v38 = *MEMORY[0x277D85DE8];

  return v41;
}

+ (id)paramToInputName:(id)a3
{
  v3 = a3;
  v8 = v3;
  if (v3 && objc_msgSend_length(v3, v4, v5, v6, v7))
  {
    v13 = 0;
    v14 = @"input";
    do
    {
      v15 = 0;
      do
      {
        v16 = v15;
        if (v13 + v15 + 1 >= objc_msgSend_length(v8, v9, v10, v11, v12))
        {
          break;
        }

        v17 = v8;
        v22 = objc_msgSend_UTF8String(v17, v18, v19, v20, v21);
        v15 = v16 + 1;
      }

      while (*(v22 + v13 + v16 + 1) != 95);
      v23 = objc_msgSend_substringWithRange_(v8, v9, v13, v16 + 1, v12);
      v27 = objc_msgSend_substringToIndex_(v23, v24, 1, v25, v26);
      v31 = objc_msgSend_substringFromIndex_(v23, v28, 1, v29, v30);
      v32 = MEMORY[0x277CCACA8];
      v37 = objc_msgSend_uppercaseString(v27, v33, v34, v35, v36);
      v41 = objc_msgSend_stringWithFormat_(v32, v38, @"%@%@%@", v39, v40, v14, v37, v31);

      v13 += v16 + 2;
      v14 = v41;
    }

    while (v13 < objc_msgSend_length(v8, v42, v43, v44, v45));
  }

  else
  {
    v41 = 0;
  }

  return v41;
}

+ (id)breakPascalCaseIntoWords:(id)a3
{
  v7 = a3;
  v8 = 0;
  v9 = &stru_2866F5EB0;
  v10 = &stru_2866F5EB0;
  do
  {
    v11 = 0;
    do
    {
      v12 = v11;
      if (v8 + v11 + 1 >= objc_msgSend_length(v7, v3, v4, v5, v6))
      {
        break;
      }

      v13 = v7;
      v18 = *(objc_msgSend_UTF8String(v13, v14, v15, v16, v17) + v8 + v12 + 1);
      v19 = __toupper(v18);
      v20 = v7;
      v25 = *(objc_msgSend_UTF8String(v20, v21, v22, v23, v24) + v8 + v12);
      v26 = __toupper(v25);
      v11 = v12 + 1;
    }

    while (v19 != v18 || v26 == v25);
    v28 = objc_msgSend_substringWithRange_(v7, v3, v8, v12 + 1, v6);
    v32 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v29, @"%@%@%@", v30, v31, v10, v9, v28);

    v8 += v12 + 1;
    v9 = @" ";
    v10 = v32;
  }

  while (v8 < objc_msgSend_length(v7, v33, v34, v35, v36));

  return v32;
}

+ (id)uiNameForParamName:(id)a3
{
  v3 = a3;
  v8 = objc_msgSend_length(@"input", v4, v5, v6, v7);
  v12 = objc_msgSend_substringFromIndex_(v3, v9, v8, v10, v11);

  v16 = objc_msgSend_breakPascalCaseIntoWords_(IHKFilterSequence, v13, v12, v14, v15);

  return v16;
}

+ (id)uiNameForCIFilterName:(id)a3
{
  v7 = a3;
  for (i = 0; i < objc_msgSend_length(v7, v3, v4, v5, v6); ++i)
  {
    v9 = v7;
    v14 = objc_msgSend_UTF8String(v9, v10, v11, v12, v13);
    v15 = __tolower(*(v14 + i));
    v16 = v7;
    if (v15 == *(objc_msgSend_UTF8String(v16, v17, v18, v19, v20) + i))
    {
      break;
    }
  }

  if (i <= 1)
  {
    LODWORD(i) = 1;
  }

  v21 = objc_msgSend_length(v7, v3, v4, v5, v6);
  if (objc_msgSend_hasSuffix_(v7, v22, @"Filter", v23, v24))
  {
    v21 -= objc_msgSend_length(@"Filter", v25, v26, v27, v28);
  }

  v29 = objc_msgSend_substringWithRange_(v7, v25, (i - 1), v21 - (i - 1), v28);

  v33 = objc_msgSend_breakPascalCaseIntoWords_(IHKFilterSequence, v30, v29, v31, v32);

  return v33;
}

+ (id)uiNameForCIFilter:(id)a3 paramName:(id)a4
{
  v5 = a3;
  v6 = a4;
  v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"%@.%@", v8, v9, v5, v6);
  v14 = objc_msgSend_objectForKeyedSubscript_(&unk_2866F8C50, v11, v10, v12, v13);

  if (!v14)
  {
    if (objc_msgSend_isEqualToString_(v6, v15, @"inputStrength", v16, v17))
    {
      objc_msgSend_uiNameForCIFilterName_(IHKFilterSequence, v18, v5, v19, v20);
    }

    else
    {
      objc_msgSend_uiNameForParamName_(IHKFilterSequence, v18, v6, v19, v20);
    }
    v14 = ;
  }

  return v14;
}

+ (id)parseFilterSequenceSpec:(id)a3
{
  v82 = *MEMORY[0x277D85DE8];
  v64 = a3;
  v67 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_msgSend_componentsSeparatedByString_(v64, v4, @"->", v5, v6);
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  obj = v75 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v74, v81, 16);
  if (v8)
  {
    v66 = *v75;
    do
    {
      v12 = 0;
      v68 = v8;
      do
      {
        if (*v75 != v66)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v74 + 1) + 8 * v12);
        v14 = objc_msgSend_rangeOfString_(v13, v9, @"[", v10, v11);
        v16 = v15;
        v19 = objc_msgSend_rangeOfString_(v13, v15, @"]", v17, v18);
        v21 = v20;
        v22 = v13;
        v26 = objc_opt_new();
        if (v16)
        {
          v27 = v21 == 0;
        }

        else
        {
          v27 = 1;
        }

        v69 = v22;
        if (v27)
        {
          v33 = objc_msgSend_getScalarInputsForCIFilterNamed_(a1, v23, v22, v24, v25);
          v32 = v26;
          v26 = objc_msgSend_mutableCopy(v33, v28, v29, v30, v31);
        }

        else
        {
          v33 = objc_msgSend_substringWithRange_(v22, v23, v14 + 1, v19 + ~v14, v25);
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v37 = objc_msgSend_componentsSeparatedByString_(v33, v34, @",", v35, v36);
          v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v70, v80, 16);
          v43 = v39;
          if (v39)
          {
            v44 = *v71;
            do
            {
              v45 = 0;
              do
              {
                if (*v71 != v44)
                {
                  objc_enumerationMutation(v37);
                }

                v46 = objc_msgSend_paramToInputName_(a1, v40, *(*(&v70 + 1) + 8 * v45), v41, v42);
                objc_msgSend_addObject_(v26, v47, v46, v48, v49);

                ++v45;
              }

              while (v43 != v45);
              v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v40, &v70, v80, 16);
            }

            while (v43);
          }

          v32 = v69;
          v69 = objc_msgSend_substringToIndex_(v69, v50, v14, v51, v52);
        }

        v56 = objc_msgSend_sortedArrayUsingSelector_(v26, v53, sel_compare_, v54, v55);
        v78[0] = @"filterName";
        v78[1] = @"inputNames";
        v79[0] = v69;
        v79[1] = v56;
        v58 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v57, v79, v78, 2);
        objc_msgSend_addObject_(v67, v59, v58, v60, v61);

        ++v12;
      }

      while (v12 != v68);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v74, v81, 16);
    }

    while (v8);
  }

  v62 = *MEMORY[0x277D85DE8];

  return v67;
}

- (IHKFilterSequence)initWithFilterSpec:(id)a3
{
  v135 = *MEMORY[0x277D85DE8];
  v112 = a3;
  v132.receiver = self;
  v132.super_class = IHKFilterSequence;
  v113 = [(IHKFilterSequence *)&v132 init];
  if (v113)
  {
    v7 = objc_msgSend_parseFilterSequenceSpec_(IHKFilterSequence, v4, v112, v5, v6);
    objc_msgSend_setFilterSeq_(v113, v8, v7, v9, v10);

    v122 = objc_opt_new();
    v121 = objc_opt_new();
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    obj = objc_msgSend_filterSeq(v113, v11, v12, v13, v14);
    v116 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v128, v134, 16);
    if (v116)
    {
      v115 = *v129;
      v119 = *MEMORY[0x277CBF7C8];
      v120 = *MEMORY[0x277CBF7D0];
      v19 = *MEMORY[0x277CBF7C0];
      do
      {
        for (i = 0; i != v116; ++i)
        {
          if (*v129 != v115)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v128 + 1) + 8 * i);
          v123 = objc_msgSend_objectForKeyedSubscript_(v20, v16, @"filterName", v17, v18);
          v24 = objc_msgSend_filterWithName_(MEMORY[0x277CBF750], v21, v123, v22, v23);
          v126 = 0u;
          v127 = 0u;
          v124 = 0u;
          v125 = 0u;
          v118 = objc_msgSend_objectForKeyedSubscript_(v20, v25, @"inputNames", v26, v27);
          v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v118, v28, &v124, v133, 16);
          if (v31)
          {
            v32 = *v125;
            do
            {
              for (j = 0; j != v31; ++j)
              {
                if (*v125 != v32)
                {
                  objc_enumerationMutation(v118);
                }

                v34 = *(*(&v124 + 1) + 8 * j);
                v35 = objc_msgSend_uiNameForCIFilter_paramName_(IHKFilterSequence, v29, v123, v34, v30);
                objc_msgSend_addObject_(v122, v36, v35, v37, v38);
                v43 = objc_msgSend_attributes(v24, v39, v40, v41, v42);
                v47 = objc_msgSend_objectForKeyedSubscript_(v43, v44, v34, v45, v46);
                v51 = objc_msgSend_objectForKeyedSubscript_(v47, v48, v120, v49, v50);
                objc_msgSend_doubleValue(v51, v52, v53, v54, v55);
                v57 = v56;

                v62 = objc_msgSend_attributes(v24, v58, v59, v60, v61);
                v66 = objc_msgSend_objectForKeyedSubscript_(v62, v63, v34, v64, v65);
                v70 = objc_msgSend_objectForKeyedSubscript_(v66, v67, v119, v68, v69);
                objc_msgSend_doubleValue(v70, v71, v72, v73, v74);
                v76 = v75;

                v81 = objc_msgSend_attributes(v24, v77, v78, v79, v80);
                v85 = objc_msgSend_objectForKeyedSubscript_(v81, v82, v34, v83, v84);
                v89 = objc_msgSend_objectForKeyedSubscript_(v85, v86, v19, v87, v88);
                objc_msgSend_doubleValue(v89, v90, v91, v92, v93);
                v95 = v94;

                v96 = [IHKSliderSpec alloc];
                v101 = objc_msgSend_initWithMin_max_identity_(v96, v97, v98, v99, v100, v57, v76, v95);
                objc_msgSend_setObject_forKeyedSubscript_(v121, v102, v101, v35, v103);
              }

              v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v118, v29, &v124, v133, 16);
            }

            while (v31);
          }
        }

        v116 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v128, v134, 16);
      }

      while (v116);
    }

    objc_msgSend_setSliderOrder_(v113, v104, v122, v105, v106);
    objc_msgSend_setSliderSpecs_(v113, v107, v121, v108, v109);
  }

  v110 = *MEMORY[0x277D85DE8];
  return v113;
}

- (id)packageSliderValues:(id)a3
{
  v72 = *MEMORY[0x277D85DE8];
  v55 = a3;
  v47 = objc_opt_new();
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  objc_msgSend_filterSeq(self, v4, v5, v6, v7);
  obj = v48 = self;
  v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v65, v71, 16);
  if (v44)
  {
    v45 = *v66;
    do
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v66 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v52 = *(*(&v65 + 1) + 8 * i);
        v12 = objc_msgSend_objectForKeyedSubscript_(v52, v9, @"filterName", v10, v11);
        v56 = objc_opt_new();
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v50 = objc_msgSend_sliderOrder(v48, v13, v14, v15, v16);
        v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v17, &v61, v70, 16);
        if (v53)
        {
          v51 = *v62;
          do
          {
            for (j = 0; j != v53; ++j)
            {
              if (*v62 != v51)
              {
                objc_enumerationMutation(v50);
              }

              v21 = *(*(&v61 + 1) + 8 * j);
              v57 = 0u;
              v58 = 0u;
              v59 = 0u;
              v60 = 0u;
              v22 = objc_msgSend_objectForKeyedSubscript_(v52, v18, @"inputNames", v19, v20);
              v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v57, v69, 16);
              if (v26)
              {
                v27 = *v58;
                do
                {
                  for (k = 0; k != v26; ++k)
                  {
                    if (*v58 != v27)
                    {
                      objc_enumerationMutation(v22);
                    }

                    v29 = *(*(&v57 + 1) + 8 * k);
                    v30 = objc_msgSend_uiNameForCIFilter_paramName_(IHKFilterSequence, v24, v12, v29, v25);
                    if (objc_msgSend_isEqualToString_(v21, v31, v30, v32, v33))
                    {
                      v37 = objc_msgSend_objectForKeyedSubscript_(v55, v34, v21, v35, v36);
                      objc_msgSend_setObject_forKeyedSubscript_(v56, v38, v37, v29, v39);
                    }
                  }

                  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v24, &v57, v69, 16);
                }

                while (v26);
              }
            }

            v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v18, &v61, v70, 16);
          }

          while (v53);
        }

        objc_msgSend_setObject_forKeyedSubscript_(v47, v40, v56, v12, v41);
      }

      v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v65, v71, 16);
    }

    while (v44);
  }

  v42 = *MEMORY[0x277D85DE8];

  return v47;
}

- (id)applySliders:(id)a3 image:(id)a4 error:(id *)a5
{
  v120 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v14 = objc_msgSend_count(v8, v10, v11, v12, v13);
  v19 = objc_msgSend_sliderOrder(self, v15, v16, v17, v18);
  v24 = objc_msgSend_count(v19, v20, v21, v22, v23);

  if (v14 == v24)
  {
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    obj = objc_msgSend_filterSeq(self, v25, v26, v27, v28);
    v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v29, &v114, v119, 16);
    if (v30)
    {
      v34 = 0;
      v101 = v30;
      v102 = *v115;
      v103 = a5;
      while (2)
      {
        v104 = 0;
        v106 = v9;
        do
        {
          if (*v115 != v102)
          {
            objc_enumerationMutation(obj);
          }

          v35 = *(*(&v114 + 1) + 8 * v104);
          v105 = objc_msgSend_objectForKeyedSubscript_(v35, v31, @"filterName", v32, v33);
          v36 = objc_opt_new();
          v112 = 0u;
          v113 = 0u;
          v110 = 0u;
          v111 = 0u;
          v40 = objc_msgSend_objectForKeyedSubscript_(v35, v37, @"inputNames", v38, v39);
          v108 = v40;
          v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v41, &v110, v118, 16);
          if (v46)
          {
            v47 = *v111;
            while (2)
            {
              for (i = 0; i != v46; ++i)
              {
                if (*v111 != v47)
                {
                  objc_enumerationMutation(v108);
                }

                v49 = *(*(&v110 + 1) + 8 * i);
                v50 = objc_msgSend_sliderOrder(self, v42, v43, v44, v45);
                v54 = objc_msgSend_objectAtIndexedSubscript_(v50, v51, v34, v52, v53);

                v58 = objc_msgSend_objectForKeyedSubscript_(v8, v55, v54, v56, v57);
                LODWORD(v50) = v58 == 0;

                if (v50)
                {
                  if (v103)
                  {
                    v94 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v59, @"No value for slider named %@ in sliders dictionary.", v60, v61, v54);
                    *v103 = objc_msgSend_errorWithCode_message_(IHKError, v95, 6, v94, v96);
                  }

                  goto LABEL_26;
                }

                v62 = objc_msgSend_objectForKeyedSubscript_(v8, v59, v54, v60, v61);
                objc_msgSend_setObject_forKeyedSubscript_(v36, v63, v62, v49, v64);

                ++v34;
              }

              v40 = v108;
              v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v108, v42, &v110, v118, 16);
              if (v46)
              {
                continue;
              }

              break;
            }
          }

          objc_msgSend_setObject_forKeyedSubscript_(v36, v65, v106, @"inputImage", v66);
          v69 = objc_msgSend_filterWithName_withInputParameters_(MEMORY[0x277CBF750], v67, v105, v36, v68);
          v74 = v69;
          if (!v69)
          {
            if (v103)
            {
              v109 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v70, @"Could not find filter named %@.", v72, v73, v105);
              *v103 = objc_msgSend_errorWithCode_message_(IHKError, v99, 5, v109, v100);
            }

LABEL_26:

            v75 = 0;
            v9 = v106;
            goto LABEL_27;
          }

          v9 = objc_msgSend_outputImage(v69, v70, v71, v72, v73);

          v106 = v9;
          ++v104;
        }

        while (v104 != v101);
        v101 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v31, &v114, v119, 16);
        if (v101)
        {
          continue;
        }

        break;
      }
    }

    v9 = v9;
    v75 = v9;
  }

  else
  {
    if (a5)
    {
      v76 = MEMORY[0x277CCACA8];
      v77 = objc_msgSend_count(v8, v25, v26, v27, v28);
      v82 = objc_msgSend_sliderOrder(self, v78, v79, v80, v81);
      v87 = objc_msgSend_count(v82, v83, v84, v85, v86);
      v91 = objc_msgSend_stringWithFormat_(v76, v88, @"Number of sliders does not match number of sliders in filter sequence (given: %lu != expected: %lu).", v89, v90, v77, v87);

      *a5 = objc_msgSend_errorWithCode_message_(IHKError, v92, 7, v91, v93);
    }

    v75 = 0;
  }

LABEL_27:

  v97 = *MEMORY[0x277D85DE8];

  return v75;
}

@end