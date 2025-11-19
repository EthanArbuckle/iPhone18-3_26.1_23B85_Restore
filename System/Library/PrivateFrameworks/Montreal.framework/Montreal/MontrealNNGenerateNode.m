@interface MontrealNNGenerateNode
- (MontrealNNGenerateNode)initWithParameters:(id *)a3 weightDataFormat:(unint64_t)a4;
- (unint64_t)generateNode:(id)a3 node:(id)a4 weightIter:(unint64_t)a5 inputs:(id)a6 outputs:(id)a7;
- (void)setInput:(id)a3 inputIndex:(int64_t)a4;
- (void)setInputs:(id)a3;
@end

@implementation MontrealNNGenerateNode

- (MontrealNNGenerateNode)initWithParameters:(id *)a3 weightDataFormat:(unint64_t)a4
{
  v8.receiver = self;
  v8.super_class = MontrealNNGenerateNode;
  result = [(MontrealNNGenerateNode *)&v8 init];
  if (result)
  {
    v7 = result;
    memcpy(&result->_parameters, a3, sizeof(result->_parameters));
    result = v7;
    v7->_weightDataFormat = a4;
  }

  return result;
}

- (unint64_t)generateNode:(id)a3 node:(id)a4 weightIter:(unint64_t)a5 inputs:(id)a6 outputs:(id)a7
{
  v221[1] = *MEMORY[0x1E69E9840];
  v198 = a3;
  v194 = a4;
  v196 = a6;
  v197 = a7;
  self->_weightIter = a5;
  v203 = 0;
  v204 = &v203;
  v205 = 0x2F012000000;
  v206 = sub_19D4203C8;
  v207 = nullsub_173;
  v208 = &unk_19D4828C1;
  memcpy(v209, &self->_parameters, sizeof(v209));
  v15 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v12, v13, v14);
  v16 = sub_19D450D48(v204[12]);
  objc_msgSend_setObject_forKeyedSubscript_(v15, v17, v16, off_1EB013450);

  v18 = sub_19D450E48(v204[11]);
  objc_msgSend_setObject_forKeyedSubscript_(v15, v19, v18, off_1EB013458);

  v20 = sub_19D450E48(v204[10]);
  objc_msgSend_setObject_forKeyedSubscript_(v15, v21, v20, off_1EB013468);

  v25 = sub_19D451050(v204[21], v22, v23, v24);
  objc_msgSend_setObject_forKeyedSubscript_(v15, v26, v25, off_1EB013460);

  v30 = objc_msgSend_array(MEMORY[0x1E695DF70], v27, v28, v29);
  v199[0] = MEMORY[0x1E69E9820];
  v199[1] = 3221225472;
  v199[2] = sub_19D4203DC;
  v199[3] = &unk_1E7626C30;
  v202 = &v203;
  v199[4] = self;
  v193 = v194;
  v200 = v193;
  v195 = v30;
  v201 = v195;
  v31 = MEMORY[0x19EAFAD10](v199);
  v35 = v31;
  v36 = v204[6];
  if (v36 > 8)
  {
    if (v36 <= 10)
    {
      if (v36 == 9)
      {
        (*(v31 + 16))(v31, 3 * *(v204 + 44) * *(v204 + 76), off_1EB0136A8);
        (v35)[2](v35, (3 * *(v204 + 76) * *(v204 + 76)), off_1EB0136B8);
        (v35)[2](v35, 3 * *(v204 + 76), off_1EB0136B0);
        v51 = 3 * *(v204 + 76);
        v52 = &off_1EB0136C0;
      }

      else
      {
        (*(v31 + 16))(v31, 3 * *(v204 + 44) * *(v204 + 76), off_1EB0136A8);
        (v35)[2](v35, (3 * *(v204 + 76) * *(v204 + 76)), off_1EB0136B8);
        (v35)[2](v35, 3 * *(v204 + 76), off_1EB0136B0);
        (v35)[2](v35, 3 * *(v204 + 76), off_1EB0136C0);
        (v35)[2](v35, 3 * *(v204 + 44) * *(v204 + 76), off_1EB0136C8);
        (v35)[2](v35, (3 * *(v204 + 76) * *(v204 + 76)), off_1EB0136D8);
        (v35)[2](v35, 3 * *(v204 + 76), off_1EB0136D0);
        v51 = 3 * *(v204 + 76);
        v52 = &off_1EB0136E0;
      }

      goto LABEL_30;
    }

    if ((v36 - 11) < 2)
    {
      v192 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v32, v33, v34);
      v214 = off_1EB013690;
      v76 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v74, *(v204 + 92), v75);
      v213[0] = v76;
      v79 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v77, *(v204 + 93), v78);
      v213[1] = v79;
      v81 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v80, v213, 2);
      v215 = v81;
      v83 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v82, &v215, &v214, 1);
      objc_msgSend_setObject_forKeyedSubscript_(v192, v84, v83, off_1EB013490);

      v211 = off_1EB013690;
      v87 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v85, *(v204 + 94), v86);
      v210[0] = v87;
      v90 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v88, *(v204 + 95), v89);
      v210[1] = v90;
      v92 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v91, v210, 2);
      v212 = v92;
      v94 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v93, &v212, &v211, 1);
      objc_msgSend_setObject_forKeyedSubscript_(v192, v95, v94, off_1EB013498);

      v99 = objc_msgSend_copy(v192, v96, v97, v98);
      objc_msgSend_setObject_forKeyedSubscript_(v15, v100, v99, off_1EB013488);

      (v35)[2](v35, *(v204 + 93) * *(v204 + 92) * *(v204 + 46) * *(v204 + 76), off_1EB0136A8);
      (v35)[2](v35, *(v204 + 76), off_1EB0136B0);
      goto LABEL_41;
    }

    if (v36 == 13)
    {
      (*(v31 + 16))(v31, (2 * *(v204 + 44) * *(v204 + 44)), off_1EB0136A8);
      v51 = 2 * *(v204 + 44);
LABEL_29:
      v52 = &off_1EB0136B0;
LABEL_30:
      (v35)[2](v35, v51, *v52);
      goto LABEL_42;
    }

    if (v36 != 23)
    {
      goto LABEL_42;
    }

LABEL_19:
    v192 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v32, v33, v34);
    v220 = off_1EB013690;
    v55 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v53, *(v204 + 76), v54);
    v219 = v55;
    v57 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v56, &v219, 1);
    v221[0] = v57;
    v59 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v58, v221, &v220, 1);
    objc_msgSend_setObject_forKeyedSubscript_(v192, v60, v59, off_1EB013480);

    v217 = off_1EB013690;
    v63 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v61, *(v204 + 92), v62);
    v216 = v63;
    v65 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v64, &v216, 1);
    v218 = v65;
    v67 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v66, &v218, &v217, 1);
    objc_msgSend_setObject_forKeyedSubscript_(v192, v68, v67, off_1EB013478);

    v72 = objc_msgSend_copy(v192, v69, v70, v71);
    objc_msgSend_setObject_forKeyedSubscript_(v15, v73, v72, off_1EB013488);

    (v35)[2](v35, *(v204 + 76) * *(v204 + 92), off_1EB0136A8);
LABEL_41:

    goto LABEL_42;
  }

  if (v36 <= 3)
  {
    if (v36)
    {
      if (v36 != 1)
      {
        if (v36 != 2)
        {
          goto LABEL_42;
        }

        (*(v31 + 16))(v31, *(v204 + 76) * *(v204 + 44), off_1EB0136A8);
        (v35)[2](v35, *(v204 + 76), off_1EB0136B0);
        if (v204[13] != 6)
        {
          goto LABEL_42;
        }

        v192 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v37, v38, v39);
        LODWORD(v40) = *(v204 + 108);
        v44 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v41, v42, v43, v40);
        objc_msgSend_setObject_forKeyedSubscript_(v192, v45, v44, off_1EB0134A0);

        v49 = objc_msgSend_copy(v192, v46, v47, v48);
        objc_msgSend_setObject_forKeyedSubscript_(v15, v50, v49, off_1EB013488);
        goto LABEL_40;
      }

      v101 = *(v204 + 46);
      if (v101 <= 1)
      {
        v101 = *(v204 + 44);
      }

      v102 = v101;
      (*(v31 + 16))(v31, v101, off_1EB0136A8);
      (v35)[2](v35, v102, off_1EB0136B0);
      (v35)[2](v35, v102, off_1EB013700);
      (v35)[2](v35, v102, off_1EB013708);
      goto LABEL_42;
    }

    (*(v31 + 16))(v31, *(v204 + 76) * *(v204 + 44), off_1EB0136A8);
    v51 = *(v204 + 76);
    goto LABEL_29;
  }

  if (v36 == 4)
  {
    goto LABEL_19;
  }

  if (v36 != 5)
  {
    if (v36 != 6)
    {
      goto LABEL_42;
    }

    (*(v31 + 16))(v31, 4 * *(v204 + 44) * *(v204 + 76), off_1EB0136A8);
    (v35)[2](v35, (4 * *(v204 + 76) * *(v204 + 76)), off_1EB0136B8);
    (v35)[2](v35, 4 * *(v204 + 76), off_1EB0136B0);
    (v35)[2](v35, 4 * *(v204 + 76), off_1EB0136C0);
    (v35)[2](v35, 4 * *(v204 + 44) * *(v204 + 76), off_1EB0136C8);
    (v35)[2](v35, (4 * *(v204 + 76) * *(v204 + 76)), off_1EB0136D8);
    (v35)[2](v35, 4 * *(v204 + 76), off_1EB0136D0);
    v51 = 4 * *(v204 + 76);
    v52 = &off_1EB0136E0;
    goto LABEL_30;
  }

  v103 = (v31 + 16);
  v104 = *(v204 + 44);
  v105 = *(v204 + 76);
  if ((v204[21] & 0x20) != 0)
  {
    v106 = 4 * v105 * (v105 + v104);
    v107 = &off_1EB0136A8;
  }

  else
  {
    (*(v31 + 16))(v31, 4 * v104 * v105, off_1EB0136A8);
    v106 = (4 * *(v204 + 76) * *(v204 + 76));
    v107 = &off_1EB0136B8;
  }

  (v35)[2](v35, v106, *v107);
  v108 = 4 * *(v204 + 76);
  v109 = off_1EB0136B0;
  v110 = *v103;
  if ((v204[21] & 0x80) == 0)
  {
    v110(v35, v108, off_1EB0136B0);
    v108 = 4 * *(v204 + 76);
    v109 = off_1EB0136C0;
    v110 = *v103;
  }

  v110(v35, v108, v109);
  if (v204[68])
  {
    v111 = *(v204 + 92);
    if (v111)
    {
      v112 = v111;
      (v35)[2](v35, *(v204 + 76) * v111, off_1EB0136F8);
      v192 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v113, v114, v115);
      v118 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v116, v112, v117);
      objc_msgSend_setObject_forKeyedSubscript_(v192, v119, v118, off_1EB0134A8);

      if (*(v204 + 120) < 0.0)
      {
        v123 = *(v204 + 121);
        if (v123 > 0.0)
        {
          v124 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v120, v121, v122);
          objc_msgSend_setObject_forKeyedSubscript_(v192, v125, v124, off_1EB0134B0);

          *&v126 = v123;
          v130 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v127, v128, v129, v126);
          objc_msgSend_setObject_forKeyedSubscript_(v192, v131, v130, off_1EB0134B8);
        }
      }

      v49 = objc_msgSend_copy(v192, v120, v121, v122);
      objc_msgSend_setObject_forKeyedSubscript_(v15, v132, v49, off_1EB013488);
LABEL_40:

      goto LABEL_41;
    }
  }

LABEL_42:
  v133 = arc4random_uniform(0x3E8u);
  v134 = MEMORY[0x1E696AEC0];
  v137 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v135, v133, v136);
  v140 = objc_msgSend_stringWithFormat_(v134, v138, @"Node_%@", v139, v137);

  v143 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v141, 8, v142);
  v144 = sub_19D450A80(v204[13]);
  objc_msgSend_addObject_(v143, v145, v144, v146);

  v147 = sub_19D450A80(v204[14]);
  objc_msgSend_addObject_(v143, v148, v147, v149);

  v150 = sub_19D450A80(v204[15]);
  objc_msgSend_addObject_(v143, v151, v150, v152);

  v153 = sub_19D450A80(v204[16]);
  objc_msgSend_addObject_(v143, v154, v153, v155);

  v156 = sub_19D450A80(v204[17]);
  objc_msgSend_addObject_(v143, v157, v156, v158);

  v159 = sub_19D450A80(v204[18]);
  objc_msgSend_addObject_(v143, v160, v159, v161);

  v162 = sub_19D450A80(v204[19]);
  objc_msgSend_addObject_(v143, v163, v162, v164);

  v165 = sub_19D450A80(v204[20]);
  objc_msgSend_addObject_(v143, v166, v165, v167);

  v168 = [MontrealNNModelNode alloc];
  if (v198)
  {
    v169 = v198;
  }

  else
  {
    v169 = v140;
  }

  v170 = sub_19D450544(v204[6]);
  v174 = objc_msgSend_copy(v195, v171, v172, v173);
  v176 = objc_msgSend_initWithName_nodeStr_activations_properties_weights_(v168, v175, v169, v170, v143, v15, v174);
  node = self->_node;
  self->_node = v176;

  v181 = objc_msgSend_node(self, v178, v179, v180);
  objc_msgSend_setInputs_(v181, v182, v196, v183);

  v187 = objc_msgSend_node(self, v184, v185, v186);
  objc_msgSend_setOutputs_(v187, v188, v197, v189);

  weightIter = self->_weightIter;
  _Block_object_dispose(&v203, 8);

  return weightIter;
}

- (void)setInputs:(id)a3
{
  v10 = a3;
  v7 = objc_msgSend_node(self, v4, v5, v6);
  objc_msgSend_setInputs_(v7, v8, v10, v9);
}

- (void)setInput:(id)a3 inputIndex:(int64_t)a4
{
  v29 = a3;
  v9 = objc_msgSend_node(self, v6, v7, v8);
  v13 = objc_msgSend_inputs(v9, v10, v11, v12);
  v17 = objc_msgSend_mutableCopy(v13, v14, v15, v16);

  objc_msgSend_setObject_atIndexedSubscript_(v17, v18, v29, a4);
  v22 = objc_msgSend_copy(v17, v19, v20, v21);
  v26 = objc_msgSend_node(self, v23, v24, v25);
  objc_msgSend_setInputs_(v26, v27, v22, v28);
}

@end