@interface CSUMLMultiArrayUtilities
+ (BOOL)compareMLMultiArrayShapesForShape1:(id)shape1 Shape2:(id)shape2;
+ (id)castToFP16WithDeepCopyFromTensor:(const void *)tensor;
+ (id)copyFromNSDataAndReshape:(id)reshape shape:(id)shape;
+ (id)deepCopyFromTensor:(const void *)tensor;
+ (id)reshapeMLMultiArray:(id)array toShape:(id)shape;
+ (id)shallowCopyFromTensor:(const void *)tensor;
+ (void)printMLMultiArray:(id)array;
@end

@implementation CSUMLMultiArrayUtilities

+ (id)shallowCopyFromTensor:(const void *)tensor
{
  v121[1] = *MEMORY[0x1E69E9840];
  v3 = *(tensor + 5);
  rank = espresso_buffer_get_rank();
  if (rank <= 2)
  {
    if (rank == 1)
    {
      v19 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v4, v3[11], v5, v6);
      v121[0] = v19;
      v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v85, v121, 1, v86);
      v22 = &unk_1F20DEF80;
      goto LABEL_13;
    }

    if (rank == 2)
    {
      v8 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v4, v3[12], v5, v6);
      v120[0] = v8;
      v12 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v9, v3[11], v10, v11);
      v120[1] = v12;
      v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v13, v120, 2, v14);

      v19 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v16, v3[11], v17, v18);
      v119[0] = v19;
      v119[1] = &unk_1F20DED70;
      v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v20, v119, 2, v21);
      goto LABEL_13;
    }

LABEL_8:
    v51 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v4, v3[15], v5, v6);
    v114[0] = v51;
    v55 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v52, v3[14], v53, v54);
    v114[1] = v55;
    v59 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v56, v3[13], v57, v58);
    v114[2] = v59;
    v63 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v60, v3[12], v61, v62);
    v114[3] = v63;
    v67 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v64, v3[11], v65, v66);
    v114[4] = v67;
    v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v68, v114, 5, v69);

    v19 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v70, v3[13] * v3[14] * v3[12] * v3[11], v71, v72);
    v113[0] = v19;
    v44 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v73, v3[12] * v3[13] * v3[11], v74, v75);
    v113[1] = v44;
    v48 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v76, v3[11] * v3[12], v77, v78);
    v113[2] = v48;
    v82 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v79, v3[11], v80, v81);
    v113[3] = v82;
    v113[4] = &unk_1F20DED70;
    v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v83, v113, 5, v84);

    goto LABEL_9;
  }

  if (rank == 3)
  {
    v87 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v4, v3[13], v5, v6);
    v118[0] = v87;
    v91 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v88, v3[12], v89, v90);
    v118[1] = v91;
    v95 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v92, v3[11], v93, v94);
    v118[2] = v95;
    v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v96, v118, 3, v97);

    v19 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v98, v3[11] * v3[12], v99, v100);
    v117[0] = v19;
    v44 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v101, v3[11], v102, v103);
    v117[1] = v44;
    v117[2] = &unk_1F20DED70;
    v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v104, v117, 3, v105);
    goto LABEL_12;
  }

  if (rank != 4)
  {
    goto LABEL_8;
  }

  v23 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v4, v3[14], v5, v6);
  v116[0] = v23;
  v27 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v24, v3[13], v25, v26);
  v116[1] = v27;
  v31 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v28, v3[12], v29, v30);
  v116[2] = v31;
  v35 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v32, v3[11], v33, v34);
  v116[3] = v35;
  v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v36, v116, 4, v37);

  v19 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v38, v3[12] * v3[13] * v3[11], v39, v40);
  v115[0] = v19;
  v44 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v41, v3[11] * v3[12], v42, v43);
  v115[1] = v44;
  v48 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v45, v3[11], v46, v47);
  v115[2] = v48;
  v115[3] = &unk_1F20DED70;
  v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v49, v115, 4, v50);
LABEL_9:

LABEL_12:
LABEL_13:

  v106 = objc_alloc(MEMORY[0x1E695FED0]);
  v107 = v3[1];
  v112 = 0;
  v109 = objc_msgSend_initWithDataPointer_shape_dataType_strides_deallocator_error_(v106, v108, v107, v15, 65568, v22, 0, &v112);

  v110 = *MEMORY[0x1E69E9840];

  return v109;
}

+ (id)deepCopyFromTensor:(const void *)tensor
{
  v72[1] = *MEMORY[0x1E69E9840];
  v3 = *(tensor + 5);
  v4 = v3 + 1;
  rank = espresso_buffer_get_rank();
  if (rank > 2)
  {
    if (rank == 3)
    {
      v9 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v5, v3[13], v6, v7);
      v70[0] = v9;
      v13 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v49, v3[12], v50, v51);
      v70[1] = v13;
      v23 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v52, v3[11], v53, v54);
      v70[2] = v23;
      v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v55, v70, 3, v56);
      goto LABEL_12;
    }

    if (rank == 4)
    {
      v9 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v5, v3[14], v6, v7);
      v69[0] = v9;
      v13 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v17, v3[13], v18, v19);
      v69[1] = v13;
      v23 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v20, v3[12], v21, v22);
      v69[2] = v23;
      v27 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v24, v3[11], v25, v26);
      v69[3] = v27;
      v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v28, v69, 4, v29);
LABEL_9:

LABEL_12:
      goto LABEL_13;
    }

LABEL_8:
    v9 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v5, v3[15], v6, v7);
    v68[0] = v9;
    v13 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v30, v3[14], v31, v32);
    v68[1] = v13;
    v23 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v33, v3[13], v34, v35);
    v68[2] = v23;
    v27 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v36, v3[12], v37, v38);
    v68[3] = v27;
    v42 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v39, v3[11], v40, v41);
    v68[4] = v42;
    v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v43, v68, 5, v44);

    goto LABEL_9;
  }

  if (rank == 1)
  {
    v45 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v5, v3[11], v6, v7);
    v72[0] = v45;
    v48 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v46, v72, 1, v47);
    goto LABEL_14;
  }

  if (rank != 2)
  {
    goto LABEL_8;
  }

  v9 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v5, v3[12], v6, v7);
  v71[0] = v9;
  v13 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v10, v3[11], v11, v12);
  v71[1] = v13;
  v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v14, v71, 2, v15);
LABEL_13:

  v45 = v9;
  v48 = v16;
LABEL_14:

  v57 = objc_alloc(MEMORY[0x1E695FED0]);
  v67 = 0;
  v59 = objc_msgSend_initWithShape_dataType_error_(v57, v58, v48, 65568, &v67);
  v60 = v67;
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = sub_1AC091944;
  v66[3] = &unk_1E7968098;
  v66[4] = v4;
  objc_msgSend_getMutableBytesWithHandler_(v59, v61, v66, v62, v63);

  v64 = *MEMORY[0x1E69E9840];

  return v59;
}

+ (id)castToFP16WithDeepCopyFromTensor:(const void *)tensor
{
  v89[1] = *MEMORY[0x1E69E9840];
  v3 = *(tensor + 5);
  v4 = v3 + 1;
  v6 = *(tensor + 2);
  v5 = *(tensor + 3);
  if (v6 == v5)
  {
    v10 = 0;
    goto LABEL_10;
  }

  v7 = v5 - v6 - 8;
  if (v7 >= 0x38)
  {
    v11 = (v7 >> 3) + 1;
    v9 = (v6 + 8 * (v11 & 0x3FFFFFFFFFFFFFF8));
    v12 = v6 + 2;
    v13.i64[0] = 0x100000001;
    v13.i64[1] = 0x100000001;
    v14 = v11 & 0x3FFFFFFFFFFFFFF8;
    v15.i64[0] = 0x100000001;
    v15.i64[1] = 0x100000001;
    do
    {
      v17 = v12[-2];
      v16 = v12[-1];
      v19 = *v12;
      v18 = v12[1];
      v12 += 4;
      v13 = vmulq_s32(v13, vuzp1q_s32(v17, v16));
      v15 = vmulq_s32(v15, vuzp1q_s32(v19, v18));
      v14 -= 8;
    }

    while (v14);
    v20 = vmulq_s32(v15, v13);
    *v20.i8 = vmul_s32(*v20.i8, *&vextq_s8(v20, v20, 8uLL));
    v8 = v20.i32[0] * v20.i32[1];
    if (v11 == (v11 & 0x3FFFFFFFFFFFFFF8))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = 1;
    v9 = *(tensor + 2);
  }

  do
  {
    v21 = v9->i32[0];
    v9 = (v9 + 8);
    v8 *= v21;
  }

  while (v9 != v5);
LABEL_9:
  v10 = v8;
LABEL_10:
  rank = espresso_buffer_get_rank();
  if (rank > 2)
  {
    if (rank == 3)
    {
      v26 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v22, v3[13], v23, v24);
      v87[0] = v26;
      v30 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v66, v3[12], v67, v68);
      v87[1] = v30;
      v40 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v69, v3[11], v70, v71);
      v87[2] = v40;
      v33 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v72, v87, 3, v73);
      goto LABEL_21;
    }

    if (rank == 4)
    {
      v26 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v22, v3[14], v23, v24);
      v86[0] = v26;
      v30 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v34, v3[13], v35, v36);
      v86[1] = v30;
      v40 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v37, v3[12], v38, v39);
      v86[2] = v40;
      v44 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v41, v3[11], v42, v43);
      v86[3] = v44;
      v33 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v45, v86, 4, v46);
LABEL_18:

LABEL_21:
      goto LABEL_22;
    }

LABEL_17:
    v26 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v22, v3[15], v23, v24);
    v85[0] = v26;
    v30 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v47, v3[14], v48, v49);
    v85[1] = v30;
    v40 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v50, v3[13], v51, v52);
    v85[2] = v40;
    v44 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v53, v3[12], v54, v55);
    v85[3] = v44;
    v59 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v56, v3[11], v57, v58);
    v85[4] = v59;
    v33 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v60, v85, 5, v61);

    goto LABEL_18;
  }

  if (rank == 1)
  {
    v62 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v22, v3[11], v23, v24);
    v89[0] = v62;
    v65 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v63, v89, 1, v64);
    goto LABEL_23;
  }

  if (rank != 2)
  {
    goto LABEL_17;
  }

  v26 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v22, v3[12], v23, v24);
  v88[0] = v26;
  v30 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v27, v3[11], v28, v29);
  v88[1] = v30;
  v33 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v31, v88, 2, v32);
LABEL_22:

  v62 = v26;
  v65 = v33;
LABEL_23:

  v74 = objc_alloc(MEMORY[0x1E695FED0]);
  v84 = 0;
  v76 = objc_msgSend_initWithShape_dataType_error_(v74, v75, v65, 65552, &v84);
  v77 = v84;
  v83[0] = MEMORY[0x1E69E9820];
  v83[1] = 3221225472;
  v83[2] = sub_1AC091E1C;
  v83[3] = &unk_1E79680B8;
  v83[4] = v4;
  v83[5] = v10;
  objc_msgSend_getMutableBytesWithHandler_(v76, v78, v83, v79, v80);

  v81 = *MEMORY[0x1E69E9840];

  return v76;
}

+ (void)printMLMultiArray:(id)array
{
  arrayCopy = array;
  v7 = objc_msgSend_dataType(arrayCopy, v3, v4, v5, v6);
  NSLog(&cfstr_ArrDatatypeLd.isa, v7);
  objc_msgSend_getMutableBytesWithHandler_(arrayCopy, v8, &unk_1F20CFFD0, v9, v10);
}

+ (id)copyFromNSDataAndReshape:(id)reshape shape:(id)shape
{
  v217[2] = *MEMORY[0x1E69E9840];
  reshapeCopy = reshape;
  shapeCopy = shape;
  v11 = objc_msgSend_length(reshapeCopy, v7, v8, v9, v10);
  v12 = reshapeCopy;
  v17 = objc_msgSend_bytes(v12, v13, v14, v15, v16);
  v25 = objc_msgSend_count(shapeCopy, v18, v19, v20, v21);
  if (v25)
  {
    v26 = 0;
    v27 = 1;
    do
    {
      v28 = objc_msgSend_objectAtIndexedSubscript_(shapeCopy, v22, v26, v23, v24);
      v27 *= objc_msgSend_unsignedIntValue(v28, v29, v30, v31, v32);

      ++v26;
    }

    while (v25 != v26);
    if (v27 == v11 >> 2)
    {
LABEL_5:
      if (v25 > 2)
      {
        if (v25 == 3)
        {
          v179 = MEMORY[0x1E696AD98];
          v212 = objc_msgSend_objectAtIndex_(shapeCopy, v22, 1, v23, v24);
          v184 = objc_msgSend_unsignedLongValue(v212, v180, v181, v182, v183);
          v210 = objc_msgSend_objectAtIndex_(shapeCopy, v185, 2, v186, v187);
          v192 = objc_msgSend_unsignedLongValue(v210, v188, v189, v190, v191);
          v209 = objc_msgSend_numberWithUnsignedLong_(v179, v193, v192 * v184, v194, v195);
          v216[0] = v209;
          v208 = objc_msgSend_objectAtIndex_(shapeCopy, v196, 2, v197, v198);
          v216[1] = v208;
          v216[2] = &unk_1F20DED70;
          v35 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v199, v216, 3, v200);
LABEL_18:

          goto LABEL_20;
        }

        if (v25 == 4)
        {
          v37 = MEMORY[0x1E696AD98];
          v212 = objc_msgSend_objectAtIndex_(shapeCopy, v22, 1, v23, v24);
          v42 = objc_msgSend_unsignedLongValue(v212, v38, v39, v40, v41);
          v210 = objc_msgSend_objectAtIndex_(shapeCopy, v43, 2, v44, v45);
          v50 = objc_msgSend_unsignedLongValue(v210, v46, v47, v48, v49);
          v209 = objc_msgSend_objectAtIndex_(shapeCopy, v51, 3, v52, v53);
          v58 = objc_msgSend_unsignedLongValue(v209, v54, v55, v56, v57);
          v208 = objc_msgSend_numberWithUnsignedLong_(v37, v59, v50 * v42 * v58, v60, v61);
          v215[0] = v208;
          v62 = MEMORY[0x1E696AD98];
          v207 = objc_msgSend_objectAtIndex_(shapeCopy, v63, 2, v64, v65);
          v70 = objc_msgSend_unsignedLongValue(v207, v66, v67, v68, v69);
          v206 = objc_msgSend_objectAtIndex_(shapeCopy, v71, 3, v72, v73);
          v78 = objc_msgSend_unsignedLongValue(v206, v74, v75, v76, v77);
          v82 = objc_msgSend_numberWithUnsignedLong_(v62, v79, v78 * v70, v80, v81);
          v215[1] = v82;
          v86 = objc_msgSend_objectAtIndex_(shapeCopy, v83, 3, v84, v85);
          v215[2] = v86;
          v215[3] = &unk_1F20DED70;
          v35 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v87, v215, 4, v88);
LABEL_15:

          goto LABEL_18;
        }
      }

      else
      {
        if (v25 == 1)
        {
          v35 = &unk_1F20DEF98;
          goto LABEL_20;
        }

        if (v25 == 2)
        {
          v211 = objc_msgSend_objectAtIndex_(shapeCopy, v22, 1, v23, v24);
          v217[0] = v211;
          v217[1] = &unk_1F20DED70;
          v35 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v33, v217, 2, v34);

LABEL_20:
          v201 = objc_alloc(MEMORY[0x1E695FED0]);
          v213 = 0;
          v36 = objc_msgSend_initWithDataPointer_shape_dataType_strides_deallocator_error_(v201, v202, v17, shapeCopy, 65568, v35, 0, &v213);

          goto LABEL_21;
        }
      }

      v89 = MEMORY[0x1E696AD98];
      v212 = objc_msgSend_objectAtIndex_(shapeCopy, v22, 1, v23, v24);
      v94 = objc_msgSend_unsignedLongValue(v212, v90, v91, v92, v93);
      v210 = objc_msgSend_objectAtIndex_(shapeCopy, v95, 2, v96, v97);
      v102 = objc_msgSend_unsignedLongValue(v210, v98, v99, v100, v101);
      v209 = objc_msgSend_objectAtIndex_(shapeCopy, v103, 3, v104, v105);
      v110 = objc_msgSend_unsignedLongValue(v209, v106, v107, v108, v109);
      v208 = objc_msgSend_objectAtIndex_(shapeCopy, v111, 4, v112, v113);
      v118 = objc_msgSend_unsignedLongValue(v208, v114, v115, v116, v117);
      v207 = objc_msgSend_numberWithUnsignedLong_(v89, v119, v102 * v94 * v110 * v118, v120, v121);
      v214[0] = v207;
      v122 = MEMORY[0x1E696AD98];
      v206 = objc_msgSend_objectAtIndex_(shapeCopy, v123, 2, v124, v125);
      v130 = objc_msgSend_unsignedLongValue(v206, v126, v127, v128, v129);
      v82 = objc_msgSend_objectAtIndex_(shapeCopy, v131, 3, v132, v133);
      v138 = objc_msgSend_unsignedLongValue(v82, v134, v135, v136, v137);
      v86 = objc_msgSend_objectAtIndex_(shapeCopy, v139, 4, v140, v141);
      v146 = objc_msgSend_unsignedLongValue(v86, v142, v143, v144, v145);
      v205 = objc_msgSend_numberWithUnsignedLong_(v122, v147, v138 * v130 * v146, v148, v149);
      v214[1] = v205;
      v150 = MEMORY[0x1E696AD98];
      v154 = objc_msgSend_objectAtIndex_(shapeCopy, v151, 3, v152, v153);
      v159 = objc_msgSend_unsignedLongValue(v154, v155, v156, v157, v158);
      v163 = objc_msgSend_objectAtIndex_(shapeCopy, v160, 4, v161, v162);
      v168 = objc_msgSend_unsignedLongValue(v163, v164, v165, v166, v167);
      v172 = objc_msgSend_numberWithUnsignedLong_(v150, v169, v168 * v159, v170, v171);
      v214[2] = v172;
      v176 = objc_msgSend_objectAtIndex_(shapeCopy, v173, 4, v174, v175);
      v214[3] = v176;
      v214[4] = &unk_1F20DED70;
      v35 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v177, v214, 5, v178);

      goto LABEL_15;
    }
  }

  else if (v11 >> 2 == 1)
  {
    goto LABEL_5;
  }

  v36 = 0;
LABEL_21:

  v203 = *MEMORY[0x1E69E9840];
  return v36;
}

+ (id)reshapeMLMultiArray:(id)array toShape:(id)shape
{
  v234[2] = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  shapeCopy = shape;
  v12 = objc_msgSend_count(arrayCopy, v8, v9, v10, v11);
  v21 = objc_msgSend_count(shapeCopy, v13, v14, v15, v16);
  if (!v21)
  {
    goto LABEL_11;
  }

  v22 = objc_msgSend_shape(arrayCopy, v17, v18, v19, v20);
  v25 = objc_msgSend_compareMLMultiArrayShapesForShape1_Shape2_(self, v23, v22, shapeCopy, v24);

  if (v25)
  {
    v29 = arrayCopy;
    goto LABEL_22;
  }

  v30 = 0;
  v31 = 1;
  do
  {
    v32 = objc_msgSend_objectAtIndexedSubscript_(shapeCopy, v26, v30, v27, v28);
    v31 *= objc_msgSend_unsignedIntValue(v32, v33, v34, v35, v36);

    ++v30;
  }

  while (v21 != v30);
  if (v31 != v12)
  {
LABEL_11:
    v29 = 0;
    goto LABEL_22;
  }

  if (v21 > 2)
  {
    if (v21 == 3)
    {
      v183 = MEMORY[0x1E696AD98];
      v217 = objc_msgSend_objectAtIndex_(shapeCopy, v26, 1, v27, v28);
      v188 = objc_msgSend_unsignedLongValue(v217, v184, v185, v186, v187);
      v215 = objc_msgSend_objectAtIndex_(shapeCopy, v189, 2, v190, v191);
      v196 = objc_msgSend_unsignedLongValue(v215, v192, v193, v194, v195);
      v214 = objc_msgSend_numberWithUnsignedLong_(v183, v197, v196 * v188, v198, v199);
      v233[0] = v214;
      v213 = objc_msgSend_objectAtIndex_(shapeCopy, v200, 2, v201, v202);
      v233[1] = v213;
      v233[2] = &unk_1F20DED70;
      v39 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v203, v233, 3, v204);
LABEL_19:

      goto LABEL_21;
    }

    if (v21 == 4)
    {
      v40 = MEMORY[0x1E696AD98];
      v217 = objc_msgSend_objectAtIndex_(shapeCopy, v26, 1, v27, v28);
      v45 = objc_msgSend_unsignedLongValue(v217, v41, v42, v43, v44);
      v215 = objc_msgSend_objectAtIndex_(shapeCopy, v46, 2, v47, v48);
      v53 = objc_msgSend_unsignedLongValue(v215, v49, v50, v51, v52);
      v214 = objc_msgSend_objectAtIndex_(shapeCopy, v54, 3, v55, v56);
      v61 = objc_msgSend_unsignedLongValue(v214, v57, v58, v59, v60);
      v213 = objc_msgSend_numberWithUnsignedLong_(v40, v62, v53 * v45 * v61, v63, v64);
      v232[0] = v213;
      v65 = MEMORY[0x1E696AD98];
      v212 = objc_msgSend_objectAtIndex_(shapeCopy, v66, 2, v67, v68);
      v73 = objc_msgSend_unsignedLongValue(v212, v69, v70, v71, v72);
      v211 = objc_msgSend_objectAtIndex_(shapeCopy, v74, 3, v75, v76);
      v81 = objc_msgSend_unsignedLongValue(v211, v77, v78, v79, v80);
      v85 = objc_msgSend_numberWithUnsignedLong_(v65, v82, v81 * v73, v83, v84);
      v232[1] = v85;
      v89 = objc_msgSend_objectAtIndex_(shapeCopy, v86, 3, v87, v88);
      v232[2] = v89;
      v232[3] = &unk_1F20DED70;
      v39 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v90, v232, 4, v91);
LABEL_16:

      goto LABEL_19;
    }

LABEL_15:
    v92 = MEMORY[0x1E696AD98];
    v217 = objc_msgSend_objectAtIndex_(shapeCopy, v26, 1, v27, v28);
    v97 = objc_msgSend_unsignedLongValue(v217, v93, v94, v95, v96);
    v215 = objc_msgSend_objectAtIndex_(shapeCopy, v98, 2, v99, v100);
    v105 = objc_msgSend_unsignedLongValue(v215, v101, v102, v103, v104);
    v214 = objc_msgSend_objectAtIndex_(shapeCopy, v106, 3, v107, v108);
    v113 = objc_msgSend_unsignedLongValue(v214, v109, v110, v111, v112);
    v213 = objc_msgSend_objectAtIndex_(shapeCopy, v114, 4, v115, v116);
    v121 = objc_msgSend_unsignedLongValue(v213, v117, v118, v119, v120);
    v212 = objc_msgSend_numberWithUnsignedLong_(v92, v122, v105 * v97 * v113 * v121, v123, v124);
    v231[0] = v212;
    v125 = MEMORY[0x1E696AD98];
    v211 = objc_msgSend_objectAtIndex_(shapeCopy, v126, 2, v127, v128);
    v133 = objc_msgSend_unsignedLongValue(v211, v129, v130, v131, v132);
    v85 = objc_msgSend_objectAtIndex_(shapeCopy, v134, 3, v135, v136);
    v141 = objc_msgSend_unsignedLongValue(v85, v137, v138, v139, v140);
    v89 = objc_msgSend_objectAtIndex_(shapeCopy, v142, 4, v143, v144);
    v149 = objc_msgSend_unsignedLongValue(v89, v145, v146, v147, v148);
    v153 = objc_msgSend_numberWithUnsignedLong_(v125, v150, v141 * v133 * v149, v151, v152);
    v231[1] = v153;
    v154 = MEMORY[0x1E696AD98];
    v158 = objc_msgSend_objectAtIndex_(shapeCopy, v155, 3, v156, v157);
    v163 = objc_msgSend_unsignedLongValue(v158, v159, v160, v161, v162);
    v167 = objc_msgSend_objectAtIndex_(shapeCopy, v164, 4, v165, v166);
    v172 = objc_msgSend_unsignedLongValue(v167, v168, v169, v170, v171);
    v176 = objc_msgSend_numberWithUnsignedLong_(v154, v173, v172 * v163, v174, v175);
    v231[2] = v176;
    v180 = objc_msgSend_objectAtIndex_(shapeCopy, v177, 4, v178, v179);
    v231[3] = v180;
    v231[4] = &unk_1F20DED70;
    v39 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v181, v231, 5, v182);

    goto LABEL_16;
  }

  if (v21 == 1)
  {
    v39 = &unk_1F20DEFB0;
    goto LABEL_21;
  }

  if (v21 != 2)
  {
    goto LABEL_15;
  }

  v216 = objc_msgSend_objectAtIndex_(shapeCopy, v26, 1, v27, v28);
  v234[0] = v216;
  v234[1] = &unk_1F20DED70;
  v39 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v37, v234, 2, v38);

LABEL_21:
  v229[0] = 0;
  v229[1] = v229;
  v229[2] = 0x3032000000;
  v229[3] = sub_1AC092F20;
  v229[4] = sub_1AC092F30;
  v230 = 0;
  v223 = 0;
  v224 = &v223;
  v225 = 0x3032000000;
  v226 = sub_1AC092F20;
  v227 = sub_1AC092F30;
  v228 = 0;
  v218[0] = MEMORY[0x1E69E9820];
  v218[1] = 3221225472;
  v218[2] = sub_1AC092F38;
  v218[3] = &unk_1E7968100;
  v221 = &v223;
  v219 = shapeCopy;
  v220 = v39;
  v222 = v229;
  v205 = v39;
  objc_msgSend_getBytesWithHandler_(arrayCopy, v206, v218, v207, v208);
  v29 = v224[5];

  _Block_object_dispose(&v223, 8);
  _Block_object_dispose(v229, 8);

LABEL_22:
  v209 = *MEMORY[0x1E69E9840];

  return v29;
}

+ (BOOL)compareMLMultiArrayShapesForShape1:(id)shape1 Shape2:(id)shape2
{
  shape1Copy = shape1;
  shape2Copy = shape2;
  v11 = objc_msgSend_count(shape1Copy, v7, v8, v9, v10);
  if (v11 == objc_msgSend_count(shape2Copy, v12, v13, v14, v15))
  {
    v20 = objc_msgSend_count(shape1Copy, v16, v17, v18, v19);
    if (v20)
    {
      v24 = 0;
      v25 = v20 - 1;
      do
      {
        v26 = objc_msgSend_objectAtIndexedSubscript_(shape1Copy, v21, v24, v22, v23);
        v30 = objc_msgSend_objectAtIndexedSubscript_(shape2Copy, v27, v24, v28, v29);
        isEqualToNumber = objc_msgSend_isEqualToNumber_(v26, v31, v30, v32, v33);

        if (v25 == v24++)
        {
          v36 = 0;
        }

        else
        {
          v36 = isEqualToNumber;
        }
      }

      while ((v36 & 1) != 0);
    }

    else
    {
      isEqualToNumber = 1;
    }
  }

  else
  {
    isEqualToNumber = 0;
  }

  return isEqualToNumber;
}

@end