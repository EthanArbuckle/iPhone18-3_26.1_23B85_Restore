@interface CKXORCUtilities
+ (void)enumerateColumn:(void *)a3 includingRoot:(BOOL)a4 shallow:(BOOL)a5 withBlock:(id)a6;
+ (void)setDefaultValuesForStruct:(unint64_t)a3 withRootColumn:(void *)a4 atOffset:(unint64_t)a5 withSchema:(id)a6 orcHelpers:(id)a7;
@end

@implementation CKXORCUtilities

+ (void)enumerateColumn:(void *)a3 includingRoot:(BOOL)a4 shallow:(BOOL)a5 withBlock:(id)a6
{
  v6 = a5;
  v7 = a4;
  v36 = a3;
  v8 = a6;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  sub_2439780F8(&v33, &v36);
  v9 = v33;
  v10 = v34;
  if (v34 != v33)
  {
    v11 = 0;
    do
    {
      if (v11)
      {
        v12 = !v6;
      }

      else
      {
        v12 = 1;
      }

      v13 = *(v10 - 1);
      v34 = (v10 - 1);
      if (v11 || v7)
      {
        v8[2](v8, v13, v11);
      }

      if (v13)
      {
        v14 = *v13;
        v15 = **v13;
        v16 = __dynamic_cast(v13, &unk_2856A2580, &unk_2856A25F0, 0);
        if (v16)
        {
          v17 = v12;
        }

        else
        {
          v17 = 0;
        }

        if (v17 == 1)
        {
          v18 = v16;
          v19 = v16[10];
          if (v19 != v16[11])
          {
            do
            {
              sub_2439780F8(&v33, v19++);
            }

            while (v19 != v18[11]);
            v14 = *v13;
          }
        }

        v20 = *v14;
        v21 = __dynamic_cast(v13, &unk_2856A2580, &unk_2856A2638, 0);
        if (v21)
        {
          v22 = v12;
        }

        else
        {
          v22 = 0;
        }

        if (v22 == 1)
        {
          v23 = v21;
          v24 = v21[20];
          if (v24 != v21[21])
          {
            do
            {
              sub_2439780F8(&v33, v24++);
            }

            while (v24 != v23[21]);
            v14 = *v13;
          }
        }

        v25 = *v14;
        v26 = __dynamic_cast(v13, &unk_2856A2580, &unk_2856A2620, 0);
        if (v26)
        {
          v27 = v12;
        }

        else
        {
          v27 = 0;
        }

        if (v27 == 1)
        {
          v28 = v26;
          v32 = v26[15];
          sub_2439780F8(&v33, &v32);
          v32 = v28[16];
          sub_2439780F8(&v33, &v32);
          v14 = *v13;
        }

        v29 = *v14;
        v30 = __dynamic_cast(v13, &unk_2856A2580, &unk_2856A2608, 0);
        if (v30)
        {
          v31 = v12;
        }

        else
        {
          v31 = 0;
        }

        if (v31 == 1)
        {
          v32 = v30[15];
          sub_2439780F8(&v33, &v32);
        }
      }

      ++v11;
      v9 = v33;
      v10 = v34;
    }

    while (v34 != v33);
  }

  if (v9)
  {
    v34 = v9;
    operator delete(v9);
  }
}

+ (void)setDefaultValuesForStruct:(unint64_t)a3 withRootColumn:(void *)a4 atOffset:(unint64_t)a5 withSchema:(id)a6 orcHelpers:(id)a7
{
  v65 = a6;
  v13 = a7;
  v19 = *(*(a4 + 10) + 8 * objc_msgSend_topLevelIndexForStruct_(v13, v14, a3, v15, v16, v17, v18));
  v20 = **v19;
  v21 = __dynamic_cast(v19, &unk_2856A2580, &unk_2856A25F0, 0);
  v22 = 0;
  *(v21[5] + a5) = 1;
  while (1)
  {
    if (v65)
    {
      v23 = v65[4];
      if (a3 < (v65[5] - v23) >> 1 && *(v23 + 2 * a3) == 1)
      {
        v24 = (*(v65[7] + 24 * a3 + 8) - *(v65[7] + 24 * a3)) >> 3;
      }

      else
      {
        v24 = -1;
      }
    }

    else
    {
      v24 = 0;
    }

    if (v22 >= v24)
    {
      break;
    }

    v25 = sub_24398768C(v65, v22, a3);
    v31 = sub_243987104(v65, v25, v26, v27, v28, v29, v30);
    if (!v31)
    {
      v53 = objc_msgSend_valueColumnIndexForField_(v13, v32, v25, v34, v35, v36, v37);
      v60 = v21[10];
      if (v53 >= (v21[11] - v60) >> 3 || (v51 = *(v60 + 8 * v53)) == 0)
      {
        v61 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v54, v55, v56, v57, v58, v59);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v61, v62, a2, a1, @"CKXORCUtilities.mm", 73, @"Unexpected null value column in writer");

        v51 = 0;
      }

      v52 = sub_243987390(v65, v25, v55, v56, v57, v58, v59) ^ 1;
LABEL_18:
      *(*(v51 + 40) + a5) = v52;
      goto LABEL_19;
    }

    if (v31 == 2 && !sub_2439871D0(v65, v25, v33, v34, v35, v36, v37))
    {
      v43 = objc_msgSend_listColumnIndexForReference_(v13, v38, v25, v39, v40, v41, v42);
      v50 = v21[10];
      if (v43 >= (v21[11] - v50) >> 3 || (v51 = *(v50 + 8 * v43)) == 0)
      {
        v63 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v44, v45, v46, v47, v48, v49);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v63, v64, a2, a1, @"CKXORCUtilities.mm", 90, @"Unexpected null struct list column in writer");

        __break(1u);
        return;
      }

      v52 = 1;
      goto LABEL_18;
    }

LABEL_19:
    ++v22;
  }
}

@end