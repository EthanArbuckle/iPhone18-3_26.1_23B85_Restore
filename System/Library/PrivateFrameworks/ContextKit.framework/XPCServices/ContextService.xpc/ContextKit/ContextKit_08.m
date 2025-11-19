uint64_t JavaUtilDualPivotQuicksort_sortWithLongArray_(uint64_t a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v2 = (*(a1 + 8) - 1);

  return sub_10018C388(a1, 0, v2);
}

uint64_t JavaUtilDualPivotQuicksort_sortWithLongArray_withInt_withInt_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v8 = a3;
  JavaUtilArrays_checkStartAndEndWithInt_withInt_withInt_(*(a1 + 8), a2, a3, a4, a5, a6, a7, a8);

  return sub_10018C388(a1, a2, (v8 - 1));
}

uint64_t sub_10018C388(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (a3 - a2 + 1 > 31)
  {

    return sub_10018C59C(result, a2, a3);
  }

  else
  {
    v4 = (a2 + 1);
    if (v4 <= a3)
    {
      if (!result)
      {
        JreThrowNullPointerException();
      }

      v5 = a2;
      do
      {
        v6 = v4;
        v7 = v4;
        v8 = *(v3 + 8);
        if ((v4 & 0x80000000) != 0 || v4 >= v8)
        {
          IOSArray_throwOutOfBoundsWithMsg(v8, v4);
        }

        v9 = *(v3 + 16 + 8 * v4);
        while (v5 >= a2)
        {
          v10 = *(v3 + 8);
          if ((v5 & 0x80000000) != 0 || v5 >= v10)
          {
            IOSArray_throwOutOfBoundsWithMsg(v10, v5);
          }

          v11 = *(v3 + 16 + 8 * v5);
          if (v9 >= v11)
          {
            break;
          }

          v12 = *(v3 + 8);
          if ((v5 & 0x80000000) != 0 || v5 >= v12)
          {
            IOSArray_throwOutOfBoundsWithMsg(v12, v5);
          }

          v13 = v5 + 1;
          if (v5 + 1 < 0 || v13 >= v12)
          {
            IOSArray_throwOutOfBoundsWithMsg(v12, v13);
          }

          *(v3 + 16 + 8 * v13) = v11;
          v5 = (v5 - 1);
        }

        result = *(v3 + 8);
        v14 = v5 + 1;
        if (v5 + 1 < 0 || v14 >= result)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, v14);
        }

        *(v3 + 16 + 8 * v14) = v9;
        v4 = (v7 + 1);
        v5 = v6;
      }

      while (v4 <= a3);
    }
  }

  return result;
}

uint64_t sub_10018C59C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v4 = (a3 - a2 + 1) / 6;
  v5 = (v4 + a2);
  v6 = (a3 + a2) >> 1;
  v7 = (v6 - v4);
  v8 = *(a1 + 8);
  if ((v5 & 0x80000000) != 0 || v5 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, (v4 + a2));
  }

  v9 = v4 + ((a3 + a2) >> 1);
  v10 = *(a1 + 16 + 8 * v5);
  if ((v7 & 0x80000000) != 0 || v7 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, (v6 - v4));
  }

  v11 = (a3 - v4);
  v12 = *(a1 + 16 + 8 * v7);
  v103 = a3 - v4;
  if (v6 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, v6);
  }

  v13 = *(a1 + 16 + 8 * v6);
  if ((v9 & 0x80000000) != 0 || v9 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, v9);
  }

  v14 = *(a1 + 16 + 8 * v9);
  if ((v11 & 0x80000000) != 0 || v11 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, v11);
  }

  v15 = *(a1 + 16 + 8 * v11);
  if (v10 <= v12)
  {
    v16 = *(a1 + 16 + 8 * v7);
  }

  else
  {
    v16 = *(a1 + 16 + 8 * v5);
  }

  if (v10 >= v12)
  {
    v17 = *(a1 + 16 + 8 * v7);
  }

  else
  {
    v17 = *(a1 + 16 + 8 * v5);
  }

  if (v14 <= v15)
  {
    v18 = *(a1 + 16 + 8 * v11);
  }

  else
  {
    v18 = *(a1 + 16 + 8 * v9);
  }

  if (v14 < v15)
  {
    v15 = *(a1 + 16 + 8 * v9);
  }

  if (v17 <= v13)
  {
    v19 = *(a1 + 16 + 8 * v6);
  }

  else
  {
    v19 = v17;
  }

  if (v17 >= v13)
  {
    v17 = *(a1 + 16 + 8 * v6);
  }

  if (v16 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v16;
  }

  if (v16 >= v19)
  {
    v16 = v19;
  }

  if (v17 <= v15)
  {
    v21 = v15;
  }

  else
  {
    v21 = v17;
  }

  if (v17 >= v15)
  {
    v22 = v15;
  }

  else
  {
    v22 = v17;
  }

  if (v20 <= v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = v20;
  }

  if (v20 >= v21)
  {
    v24 = v21;
  }

  else
  {
    v24 = v20;
  }

  if (v16 <= v18)
  {
    v25 = v18;
  }

  else
  {
    v25 = v16;
  }

  if (v16 >= v18)
  {
    v16 = v18;
  }

  if (v16 <= v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = v16;
  }

  if (v16 >= v24)
  {
    v27 = v24;
  }

  else
  {
    v27 = v16;
  }

  if (v23 <= v25)
  {
    v28 = v25;
  }

  else
  {
    v28 = v23;
  }

  if (v23 >= v25)
  {
    v29 = v25;
  }

  else
  {
    v29 = v23;
  }

  if ((v5 & 0x80000000) != 0 || v5 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, v5);
  }

  *(a1 + 16 + 8 * v5) = v22;
  v30 = *(a1 + 8);
  if (v6 >= v30)
  {
    IOSArray_throwOutOfBoundsWithMsg(v30, v6);
  }

  *(a1 + 16 + 8 * v6) = v26;
  v31 = *(a1 + 8);
  if ((v11 & 0x80000000) != 0 || v11 >= v31)
  {
    IOSArray_throwOutOfBoundsWithMsg(v31, v11);
  }

  *(a1 + 16 + 8 * v11) = v28;
  v32 = *(a1 + 8);
  if ((a2 & 0x80000000) != 0 || v32 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v32, a2);
  }

  if ((v7 & 0x80000000) != 0 || v7 >= v32)
  {
    IOSArray_throwOutOfBoundsWithMsg(v32, v7);
  }

  *(a1 + 16 + 8 * v7) = *(a1 + 16 + 8 * a2);
  v33 = *(a1 + 8);
  if ((a3 & 0x80000000) != 0 || v33 <= a3)
  {
    IOSArray_throwOutOfBoundsWithMsg(v33, a3);
  }

  if ((v9 & 0x80000000) != 0 || v9 >= v33)
  {
    IOSArray_throwOutOfBoundsWithMsg(v33, v9);
  }

  *(a1 + 16 + 8 * v9) = *(a1 + 16 + 8 * a3);
  v34 = a2 + 1;
  v35 = a3 - 1;
  v104 = v5;
  if (v27 == v29)
  {
    if (v34 <= v35)
    {
      v36 = a2 + 1;
      v37 = a3 - 1;
      v38 = (a2 + 1);
      do
      {
        v39 = *(a1 + 8);
        if (v36 < 0 || v36 >= v39)
        {
          IOSArray_throwOutOfBoundsWithMsg(v39, v36);
        }

        v40 = *(a1 + 16 + 8 * v36);
        if (v40 != v27)
        {
          if (v40 >= v27)
          {
            do
            {
              v43 = v37;
              v44 = *(a1 + 8);
              if (v37 < 0 || v37 >= v44)
              {
                IOSArray_throwOutOfBoundsWithMsg(v44, v37);
              }

              v45 = *(a1 + 16 + 8 * v37--);
            }

            while (v45 > v27);
            v46 = *(a1 + 8);
            v47 = v37 + 1;
            if ((v43 & 0x80000000) != 0 || v47 >= v46)
            {
              IOSArray_throwOutOfBoundsWithMsg(v46, (v37 + 1));
            }

            if (v45 >= v27)
            {
              v51 = *(a1 + 8);
              if (v36 < 0 || v36 >= v51)
              {
                IOSArray_throwOutOfBoundsWithMsg(v51, v36);
              }

              *(a1 + 16 + 8 * v36) = v27;
              v52 = *(a1 + 8);
              if ((v43 & 0x80000000) != 0 || v47 >= v52)
              {
                IOSArray_throwOutOfBoundsWithMsg(v52, (v37 + 1));
              }
            }

            else
            {
              v48 = *(a1 + 8);
              if ((v38 & 0x80000000) != 0 || v38 >= v48)
              {
                IOSArray_throwOutOfBoundsWithMsg(v48, v38);
              }

              if (v36 < 0 || v36 >= v48)
              {
                IOSArray_throwOutOfBoundsWithMsg(v48, v36);
              }

              *(a1 + 16 + 8 * v36) = *(a1 + 16 + 8 * v38);
              v49 = *(a1 + 8);
              if ((v43 & 0x80000000) != 0 || v47 >= v49)
              {
                IOSArray_throwOutOfBoundsWithMsg(v49, (v37 + 1));
              }

              if ((v38 & 0x80000000) != 0 || v38 >= v49)
              {
                IOSArray_throwOutOfBoundsWithMsg(v49, v38);
              }

              *(a1 + 16 + 8 * v38) = *(a1 + 16 + 8 * v43);
              v50 = *(a1 + 8);
              if ((v43 & 0x80000000) != 0 || v47 >= v50)
              {
                IOSArray_throwOutOfBoundsWithMsg(v50, (v37 + 1));
              }

              v38 = (v38 + 1);
            }

            *(a1 + 16 + 8 * v43) = v40;
          }

          else
          {
            if (v36 != v38)
            {
              v41 = *(a1 + 8);
              if ((v38 & 0x80000000) != 0 || v38 >= v41)
              {
                IOSArray_throwOutOfBoundsWithMsg(v41, v38);
              }

              if (v36 < 0 || v36 >= v41)
              {
                IOSArray_throwOutOfBoundsWithMsg(v41, v36);
              }

              *(a1 + 16 + 8 * v36) = *(a1 + 16 + 8 * v38);
              v42 = *(a1 + 8);
              if ((v38 & 0x80000000) != 0 || v38 >= v42)
              {
                IOSArray_throwOutOfBoundsWithMsg(v42, v38);
              }

              *(a1 + 16 + 8 * v38) = v40;
            }

            v38 = (v38 + 1);
          }
        }

        ++v36;
        LODWORD(v53) = v38;
        v35 = v37;
      }

      while (v36 <= v37);
      goto LABEL_130;
    }

LABEL_129:
    LODWORD(v53) = a2 + 1;
    goto LABEL_130;
  }

  if (v34 > v35)
  {
    goto LABEL_129;
  }

  v66 = a2;
  v53 = (a2 + 1);
  do
  {
    v67 = v34;
    v68 = *(a1 + 8);
    if (v34 < 0 || v34 >= v68)
    {
      IOSArray_throwOutOfBoundsWithMsg(v68, v34);
    }

    v69 = *(a1 + 16 + 8 * v34);
    if (v69 >= v27)
    {
      if (v69 > v29)
      {
        while (1)
        {
          v72 = v35;
          v73 = *(a1 + 8);
          if (v35 < 0 || v35 >= v73)
          {
            IOSArray_throwOutOfBoundsWithMsg(v73, v35);
          }

          v74 = *(a1 + 16 + 8 * v35);
          if (v74 <= v29)
          {
            break;
          }

          v35 = v72 - 1;
          if (v66 == v72 - 1)
          {
            goto LABEL_130;
          }
        }

        v75 = *(a1 + 8);
        if ((v72 & 0x80000000) != 0 || v72 >= v75)
        {
          IOSArray_throwOutOfBoundsWithMsg(v75, v72);
        }

        if (v74 >= v27)
        {
          v79 = *(a1 + 8);
          if ((v72 & 0x80000000) != 0 || v72 >= v79)
          {
            IOSArray_throwOutOfBoundsWithMsg(v79, v72);
          }

          if (v34 < 0 || v34 >= v79)
          {
            IOSArray_throwOutOfBoundsWithMsg(v79, v34);
          }

          *(a1 + 16 + 8 * v34) = v74;
          v80 = *(a1 + 8);
          if ((v72 & 0x80000000) != 0 || v72 >= v80)
          {
            IOSArray_throwOutOfBoundsWithMsg(v80, v72);
          }
        }

        else
        {
          v76 = *(a1 + 8);
          if ((v53 & 0x80000000) != 0 || v53 >= v76)
          {
            IOSArray_throwOutOfBoundsWithMsg(v76, v53);
          }

          if (v34 < 0 || v34 >= v76)
          {
            IOSArray_throwOutOfBoundsWithMsg(v76, v34);
          }

          *(a1 + 16 + 8 * v34) = *(a1 + 16 + 8 * v53);
          v77 = *(a1 + 8);
          if ((v72 & 0x80000000) != 0 || v72 >= v77)
          {
            IOSArray_throwOutOfBoundsWithMsg(v77, v72);
          }

          if ((v53 & 0x80000000) != 0 || v53 >= v77)
          {
            IOSArray_throwOutOfBoundsWithMsg(v77, v53);
          }

          *(a1 + 16 + 8 * v53) = *(a1 + 16 + 8 * v72);
          v78 = *(a1 + 8);
          if ((v72 & 0x80000000) != 0 || v72 >= v78)
          {
            IOSArray_throwOutOfBoundsWithMsg(v78, v72);
          }

          v53 = (v53 + 1);
        }

        v35 = v72 - 1;
        *(a1 + 16 + 8 * v72) = v69;
      }
    }

    else
    {
      if (v34 != v53)
      {
        v70 = *(a1 + 8);
        if ((v53 & 0x80000000) != 0 || v53 >= v70)
        {
          IOSArray_throwOutOfBoundsWithMsg(v70, v53);
        }

        if (v34 < 0 || v34 >= v70)
        {
          IOSArray_throwOutOfBoundsWithMsg(v70, v34);
        }

        *(a1 + 16 + 8 * v34) = *(a1 + 16 + 8 * v53);
        v71 = *(a1 + 8);
        if ((v53 & 0x80000000) != 0 || v53 >= v71)
        {
          IOSArray_throwOutOfBoundsWithMsg(v71, v53);
        }

        *(a1 + 16 + 8 * v53) = v69;
      }

      v53 = (v53 + 1);
    }

    ++v34;
    ++v66;
  }

  while (v67 + 1 <= v35);
LABEL_130:
  v54 = *(a1 + 8);
  v55 = v53 - 1;
  v56 = v53 - 1;
  if (v53 - 1 < 0 || v55 >= v54)
  {
    IOSArray_throwOutOfBoundsWithMsg(v54, v55);
  }

  if ((a2 & 0x80000000) != 0 || v54 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v54, a2);
  }

  *(a1 + 16 + 8 * a2) = *(a1 + 16 + 8 * v56);
  v57 = *(a1 + 8);
  if ((v56 & 0x80000000) != 0 || v56 >= v57)
  {
    IOSArray_throwOutOfBoundsWithMsg(v57, v56);
  }

  *(a1 + 16 + 8 * v56) = v27;
  v58 = *(a1 + 8);
  v59 = v35 + 1;
  v60 = v35 + 1;
  if (v35 + 1 < 0 || v59 >= v58)
  {
    IOSArray_throwOutOfBoundsWithMsg(v58, v59);
  }

  if ((a3 & 0x80000000) != 0 || v58 <= a3)
  {
    IOSArray_throwOutOfBoundsWithMsg(v58, a3);
  }

  *(a1 + 16 + 8 * a3) = *(a1 + 16 + 8 * v60);
  v61 = *(a1 + 8);
  if ((v60 & 0x80000000) != 0 || v60 >= v61)
  {
    IOSArray_throwOutOfBoundsWithMsg(v61, v60);
  }

  *(a1 + 16 + 8 * v60) = v29;
  v62 = v29;
  sub_10018C388(a1);
  result = sub_10018C388(a1);
  if (v27 != v62)
  {
    if (v53 >= v104 || v35 <= v103)
    {
      goto LABEL_213;
    }

    do
    {
      v64 = *(a1 + 8);
      if ((v53 & 0x80000000) != 0 || v53 >= v64)
      {
        IOSArray_throwOutOfBoundsWithMsg(v64, v53);
      }

      v65 = *(a1 + 16 + 8 * v53);
      LODWORD(v53) = v53 + 1;
    }

    while (v65 == v27);
    v81 = v53 - 2;
    v82 = v53 - 1;
    do
    {
      v83 = *(a1 + 8);
      if (v35 < 0 || v35 >= v83)
      {
        IOSArray_throwOutOfBoundsWithMsg(v83, v35);
      }

      v84 = *(a1 + 16 + 8 * v35--);
    }

    while (v84 == v62);
    v85 = v35 + 1;
    if (v82 > v85)
    {
LABEL_213:

      return sub_10018C388(a1);
    }

    v86 = (v53 - 1);
    while (1)
    {
      v87 = v82;
      v88 = *(a1 + 8);
      if (v82 < 0 || v82 >= v88)
      {
        IOSArray_throwOutOfBoundsWithMsg(v88, v82);
      }

      v89 = *(a1 + 16 + 8 * v82);
      if (v89 == v62)
      {
        break;
      }

      if (v89 == v27)
      {
        v93 = *(a1 + 8);
        if ((v86 & 0x80000000) != 0 || v86 >= v93)
        {
          IOSArray_throwOutOfBoundsWithMsg(v93, v86);
        }

        v90 = v86;
        if ((v87 & 0x80000000) != 0 || v87 >= v93)
        {
          IOSArray_throwOutOfBoundsWithMsg(v93, v87);
        }

        *(a1 + 16 + 8 * v87) = *(a1 + 16 + 8 * v86);
        v94 = (v86 + 1);
        v95 = *(a1 + 8);
        if ((v86 & 0x80000000) != 0 || v86 >= v95)
        {
          IOSArray_throwOutOfBoundsWithMsg(v95, v86);
        }

        v96 = v27;
LABEL_252:
        *(a1 + 16 + 8 * v90) = v96;
        v86 = v94;
      }

      v82 = v87 + 1;
      ++v81;
      if (v87 + 1 > v85)
      {
        goto LABEL_213;
      }
    }

    while (1)
    {
      v90 = v85;
      v91 = *(a1 + 8);
      if (v85 < 0 || v85 >= v91)
      {
        IOSArray_throwOutOfBoundsWithMsg(v91, v85);
      }

      v92 = *(a1 + 16 + 8 * v85);
      if (v92 != v62)
      {
        break;
      }

      v85 = v90 - 1;
      if (v81 == v90 - 1)
      {
        goto LABEL_213;
      }
    }

    v97 = *(a1 + 8);
    if ((v90 & 0x80000000) != 0 || v90 >= v97)
    {
      IOSArray_throwOutOfBoundsWithMsg(v97, v90);
    }

    if (v92 == v27)
    {
      v98 = *(a1 + 8);
      if ((v86 & 0x80000000) != 0 || v86 >= v98)
      {
        IOSArray_throwOutOfBoundsWithMsg(v98, v86);
      }

      v99 = v86;
      if ((v87 & 0x80000000) != 0 || v87 >= v98)
      {
        IOSArray_throwOutOfBoundsWithMsg(v98, v87);
      }

      *(a1 + 16 + 8 * v87) = *(a1 + 16 + 8 * v86);
      v94 = (v86 + 1);
      v100 = *(a1 + 8);
      if ((v86 & 0x80000000) != 0 || v86 >= v100)
      {
        IOSArray_throwOutOfBoundsWithMsg(v100, v86);
      }

      v92 = v27;
    }

    else
    {
      v101 = *(a1 + 8);
      if ((v90 & 0x80000000) != 0 || v90 >= v101)
      {
        IOSArray_throwOutOfBoundsWithMsg(v101, v90);
      }

      if ((v87 & 0x80000000) != 0 || v87 >= v101)
      {
        IOSArray_throwOutOfBoundsWithMsg(v101, v87);
      }

      v99 = v87;
      v94 = v86;
    }

    *(a1 + 16 + 8 * v99) = v92;
    v85 = v90 - 1;
    v102 = *(a1 + 8);
    if ((v90 & 0x80000000) != 0 || v90 >= v102)
    {
      IOSArray_throwOutOfBoundsWithMsg(v102, v90);
    }

    v96 = v62;
    goto LABEL_252;
  }

  return result;
}

uint64_t JavaUtilDualPivotQuicksort_sortWithShortArray_(uint64_t a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v2 = (*(a1 + 8) - 1);

  return sub_10018DB68(a1, 0, v2);
}

uint64_t JavaUtilDualPivotQuicksort_sortWithShortArray_withInt_withInt_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v8 = a3;
  JavaUtilArrays_checkStartAndEndWithInt_withInt_withInt_(*(a1 + 8), a2, a3, a4, a5, a6, a7, a8);

  return sub_10018DB68(a1, a2, (v8 - 1));
}

uint64_t sub_10018DB68(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = result;
  v5 = a3 - a2 + 1;
  if (v5 <= 31)
  {
    v6 = (a2 + 1);
    if (v6 > a3)
    {
      return result;
    }

    if (result)
    {
      v7 = a2;
      do
      {
        v8 = v6;
        v9 = v6;
        size = v4->super.size_;
        if ((v6 & 0x80000000) != 0 || v6 >= size)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, v6);
        }

        v11 = *(&v4->super.size_ + v6 + 2);
        while (v7 >= a2)
        {
          v12 = v4->super.size_;
          if ((v7 & 0x80000000) != 0 || v7 >= v12)
          {
            IOSArray_throwOutOfBoundsWithMsg(v12, v7);
          }

          v13 = *(&v4->super.size_ + v7 + 2);
          if (v11 >= v13)
          {
            break;
          }

          v14 = v4->super.size_;
          if ((v7 & 0x80000000) != 0 || v7 >= v14)
          {
            IOSArray_throwOutOfBoundsWithMsg(v14, v7);
          }

          v15 = v7 + 1;
          if (v7 + 1 < 0 || v15 >= v14)
          {
            IOSArray_throwOutOfBoundsWithMsg(v14, v15);
          }

          *(&v4->super.size_ + v15 + 2) = v13;
          v7 = (v7 - 1);
        }

        result = v4->super.size_;
        v16 = v7 + 1;
        if (v7 + 1 < 0 || v16 >= result)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, v16);
        }

        *(&v4->super.size_ + v16 + 2) = v11;
        v6 = (v9 + 1);
        v7 = v8;
      }

      while (v6 <= a3);
      return result;
    }

LABEL_58:
    JreThrowNullPointerException();
  }

  if (v5 <= 0x8000)
  {

    return sub_10018DEF4(result, a2, a3);
  }

  else
  {
    v27 = a3;
    result = [IOSIntArray arrayWithLength:0x10000];
    v17 = result;
    if (v27 >= v3)
    {
      if (!v4)
      {
        goto LABEL_58;
      }

      v23 = v3;
      do
      {
        v24 = v23;
        v25 = v4->super.size_;
        if (v23 < 0 || v23 >= v25)
        {
          IOSArray_throwOutOfBoundsWithMsg(v25, v23);
        }

        v26 = *(&v4->super.size_ + v23 + 2);
        result = v17->super.size_;
        if (result <= v26 + 0x8000)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, v26 + 0x8000);
        }

        ++v17->buffer_[v26 + 0x7FFF];
        v23 = v24 + 1;
      }

      while (v24 + 1 <= v27);
    }

    if (v17->super.size_ >= 1 && v27 >= v3)
    {
      v19 = 0;
      do
      {
        v20 = *(&v17->super.size_ + v19 + 1);
        if (v20 >= 1)
        {
          if (!v4)
          {
            goto LABEL_58;
          }

          v21 = v20 + 1;
          do
          {
            result = v4->super.size_;
            if (v3 < 0 || v3 >= result)
            {
              IOSArray_throwOutOfBoundsWithMsg(result, v3);
            }

            *(&v4->super.size_ + v3 + 2) = v19 ^ 0x8000;
            --v21;
            ++v3;
          }

          while (v21 > 1);
        }
      }

      while (++v19 < v17->super.size_ && v3 <= v27);
    }
  }

  return result;
}

uint64_t sub_10018DEF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v4 = (a3 - a2 + 1) / 6;
  v5 = (v4 + a2);
  v6 = (a3 + a2) >> 1;
  v7 = (v6 - v4);
  v8 = *(a1 + 8);
  if ((v5 & 0x80000000) != 0 || v5 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, (v4 + a2));
  }

  v9 = v4 + ((a3 + a2) >> 1);
  v10 = *(a1 + 12 + 2 * v5);
  if ((v7 & 0x80000000) != 0 || v7 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, (v6 - v4));
  }

  v11 = (a3 - v4);
  v12 = *(a1 + 12 + 2 * v7);
  v102 = a3 - v4;
  if (v6 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, v6);
  }

  v13 = *(a1 + 12 + 2 * v6);
  if ((v9 & 0x80000000) != 0 || v9 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, v9);
  }

  v14 = *(a1 + 12 + 2 * v9);
  if ((v11 & 0x80000000) != 0 || v11 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, v11);
  }

  v15 = *(a1 + 12 + 2 * v11);
  v16 = v12;
  if (v10 <= v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = v10;
  }

  if (v10 < v12)
  {
    v16 = v10;
  }

  if (v14 <= v15)
  {
    v18 = *(a1 + 12 + 2 * v11);
  }

  else
  {
    v18 = v14;
  }

  if (v14 < v15)
  {
    v15 = v14;
  }

  if (v16 <= v13)
  {
    v19 = v13;
  }

  else
  {
    v19 = v16;
  }

  if (v16 >= v13)
  {
    v16 = v13;
  }

  if (v17 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v17;
  }

  if (v17 >= v19)
  {
    v17 = v19;
  }

  if (v16 <= v15)
  {
    v21 = v15;
  }

  else
  {
    v21 = v16;
  }

  if (v16 >= v15)
  {
    v22 = v15;
  }

  else
  {
    v22 = v16;
  }

  if (v20 <= v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = v20;
  }

  if (v20 >= v21)
  {
    v24 = v21;
  }

  else
  {
    v24 = v20;
  }

  if (v17 <= v18)
  {
    v25 = v18;
  }

  else
  {
    v25 = v17;
  }

  if (v17 >= v18)
  {
    v17 = v18;
  }

  if (v17 <= v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = v17;
  }

  if (v17 >= v24)
  {
    v27 = v24;
  }

  else
  {
    v27 = v17;
  }

  if (v23 <= v25)
  {
    v28 = v25;
  }

  else
  {
    v28 = v23;
  }

  if (v23 < v25)
  {
    LOWORD(v25) = v23;
  }

  if ((v5 & 0x80000000) != 0 || v5 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, v5);
  }

  *(a1 + 12 + 2 * v5) = v22;
  v29 = *(a1 + 8);
  if (v6 >= v29)
  {
    IOSArray_throwOutOfBoundsWithMsg(v29, v6);
  }

  *(a1 + 12 + 2 * v6) = v26;
  v30 = *(a1 + 8);
  if ((v11 & 0x80000000) != 0 || v11 >= v30)
  {
    IOSArray_throwOutOfBoundsWithMsg(v30, v11);
  }

  *(a1 + 12 + 2 * v11) = v28;
  v31 = *(a1 + 8);
  if ((a2 & 0x80000000) != 0 || v31 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v31, a2);
  }

  if ((v7 & 0x80000000) != 0 || v7 >= v31)
  {
    IOSArray_throwOutOfBoundsWithMsg(v31, v7);
  }

  *(a1 + 12 + 2 * v7) = *(a1 + 12 + 2 * a2);
  v32 = *(a1 + 8);
  if ((a3 & 0x80000000) != 0 || v32 <= a3)
  {
    IOSArray_throwOutOfBoundsWithMsg(v32, a3);
  }

  if ((v9 & 0x80000000) != 0 || v9 >= v32)
  {
    IOSArray_throwOutOfBoundsWithMsg(v32, v9);
  }

  *(a1 + 12 + 2 * v9) = *(a1 + 12 + 2 * a3);
  v33 = a2 + 1;
  v34 = a3 - 1;
  v103 = v5;
  if (v27 == v25)
  {
    if (v33 <= v34)
    {
      v35 = a2 + 1;
      v36 = a3 - 1;
      v37 = (a2 + 1);
      do
      {
        v38 = v35;
        v39 = *(a1 + 8);
        if (v35 < 0 || v35 >= v39)
        {
          IOSArray_throwOutOfBoundsWithMsg(v39, v35);
        }

        v40 = *(a1 + 12 + 2 * v35);
        if (v40 != v27)
        {
          if (v40 >= v27)
          {
            do
            {
              v43 = v36;
              v44 = *(a1 + 8);
              if (v36 < 0 || v36 >= v44)
              {
                IOSArray_throwOutOfBoundsWithMsg(v44, v36);
              }

              v45 = *(a1 + 12 + 2 * v36--);
            }

            while (v45 > v27);
            v46 = *(a1 + 8);
            v47 = v36 + 1;
            if ((v43 & 0x80000000) != 0 || v47 >= v46)
            {
              IOSArray_throwOutOfBoundsWithMsg(v46, (v36 + 1));
            }

            if (v45 >= v27)
            {
              v51 = *(a1 + 8);
              if ((v38 & 0x80000000) != 0 || v38 >= v51)
              {
                IOSArray_throwOutOfBoundsWithMsg(v51, v38);
              }

              *(a1 + 12 + 2 * v38) = v27;
              v52 = *(a1 + 8);
              if ((v43 & 0x80000000) != 0 || v47 >= v52)
              {
                IOSArray_throwOutOfBoundsWithMsg(v52, (v36 + 1));
              }
            }

            else
            {
              v48 = *(a1 + 8);
              if ((v37 & 0x80000000) != 0 || v37 >= v48)
              {
                IOSArray_throwOutOfBoundsWithMsg(v48, v37);
              }

              if ((v38 & 0x80000000) != 0 || v38 >= v48)
              {
                IOSArray_throwOutOfBoundsWithMsg(v48, v38);
              }

              *(a1 + 12 + 2 * v38) = *(a1 + 12 + 2 * v37);
              v49 = *(a1 + 8);
              if ((v43 & 0x80000000) != 0 || v47 >= v49)
              {
                IOSArray_throwOutOfBoundsWithMsg(v49, (v36 + 1));
              }

              if ((v37 & 0x80000000) != 0 || v37 >= v49)
              {
                IOSArray_throwOutOfBoundsWithMsg(v49, v37);
              }

              *(a1 + 12 + 2 * v37) = *(a1 + 12 + 2 * v43);
              v50 = *(a1 + 8);
              if ((v43 & 0x80000000) != 0 || v47 >= v50)
              {
                IOSArray_throwOutOfBoundsWithMsg(v50, (v36 + 1));
              }

              v37 = (v37 + 1);
            }

            *(a1 + 12 + 2 * v43) = v40;
          }

          else
          {
            if (v38 != v37)
            {
              v41 = *(a1 + 8);
              if ((v37 & 0x80000000) != 0 || v37 >= v41)
              {
                IOSArray_throwOutOfBoundsWithMsg(v41, v37);
              }

              if ((v38 & 0x80000000) != 0 || v38 >= v41)
              {
                IOSArray_throwOutOfBoundsWithMsg(v41, v38);
              }

              *(a1 + 12 + 2 * v38) = *(a1 + 12 + 2 * v37);
              v42 = *(a1 + 8);
              if ((v37 & 0x80000000) != 0 || v37 >= v42)
              {
                IOSArray_throwOutOfBoundsWithMsg(v42, v37);
              }

              *(a1 + 12 + 2 * v37) = v40;
            }

            v37 = (v37 + 1);
          }
        }

        v35 = v38 + 1;
        LODWORD(v38) = v37;
        v34 = v36;
      }

      while (v35 <= v36);
      goto LABEL_128;
    }

LABEL_127:
    LODWORD(v38) = a2 + 1;
    goto LABEL_128;
  }

  if (v33 > v34)
  {
    goto LABEL_127;
  }

  v65 = a2;
  v38 = (a2 + 1);
  do
  {
    v66 = v33;
    v67 = *(a1 + 8);
    if (v33 < 0 || v33 >= v67)
    {
      IOSArray_throwOutOfBoundsWithMsg(v67, v33);
    }

    v68 = *(a1 + 12 + 2 * v33);
    if (v68 >= v27)
    {
      if (v68 > v25)
      {
        while (1)
        {
          v71 = v34;
          v72 = *(a1 + 8);
          if (v34 < 0 || v34 >= v72)
          {
            IOSArray_throwOutOfBoundsWithMsg(v72, v34);
          }

          v73 = *(a1 + 12 + 2 * v34);
          if (v73 <= v25)
          {
            break;
          }

          v34 = v71 - 1;
          if (v65 == v71 - 1)
          {
            goto LABEL_128;
          }
        }

        v74 = *(a1 + 8);
        if ((v71 & 0x80000000) != 0 || v71 >= v74)
        {
          IOSArray_throwOutOfBoundsWithMsg(v74, v71);
        }

        if (v73 >= v27)
        {
          v78 = *(a1 + 8);
          if ((v71 & 0x80000000) != 0 || v71 >= v78)
          {
            IOSArray_throwOutOfBoundsWithMsg(v78, v71);
          }

          if (v33 < 0 || v33 >= v78)
          {
            IOSArray_throwOutOfBoundsWithMsg(v78, v33);
          }

          *(a1 + 12 + 2 * v33) = v73;
          v79 = *(a1 + 8);
          if ((v71 & 0x80000000) != 0 || v71 >= v79)
          {
            IOSArray_throwOutOfBoundsWithMsg(v79, v71);
          }
        }

        else
        {
          v75 = *(a1 + 8);
          if ((v38 & 0x80000000) != 0 || v38 >= v75)
          {
            IOSArray_throwOutOfBoundsWithMsg(v75, v38);
          }

          if (v33 < 0 || v33 >= v75)
          {
            IOSArray_throwOutOfBoundsWithMsg(v75, v33);
          }

          *(a1 + 12 + 2 * v33) = *(a1 + 12 + 2 * v38);
          v76 = *(a1 + 8);
          if ((v71 & 0x80000000) != 0 || v71 >= v76)
          {
            IOSArray_throwOutOfBoundsWithMsg(v76, v71);
          }

          if ((v38 & 0x80000000) != 0 || v38 >= v76)
          {
            IOSArray_throwOutOfBoundsWithMsg(v76, v38);
          }

          *(a1 + 12 + 2 * v38) = *(a1 + 12 + 2 * v71);
          v77 = *(a1 + 8);
          if ((v71 & 0x80000000) != 0 || v71 >= v77)
          {
            IOSArray_throwOutOfBoundsWithMsg(v77, v71);
          }

          v38 = (v38 + 1);
        }

        v34 = v71 - 1;
        *(a1 + 12 + 2 * v71) = v68;
      }
    }

    else
    {
      if (v33 != v38)
      {
        v69 = *(a1 + 8);
        if ((v38 & 0x80000000) != 0 || v38 >= v69)
        {
          IOSArray_throwOutOfBoundsWithMsg(v69, v38);
        }

        if (v33 < 0 || v33 >= v69)
        {
          IOSArray_throwOutOfBoundsWithMsg(v69, v33);
        }

        *(a1 + 12 + 2 * v33) = *(a1 + 12 + 2 * v38);
        v70 = *(a1 + 8);
        if ((v38 & 0x80000000) != 0 || v38 >= v70)
        {
          IOSArray_throwOutOfBoundsWithMsg(v70, v38);
        }

        *(a1 + 12 + 2 * v38) = v68;
      }

      v38 = (v38 + 1);
    }

    ++v33;
    ++v65;
  }

  while (v66 + 1 <= v34);
LABEL_128:
  v53 = *(a1 + 8);
  v54 = v38 - 1;
  v55 = v38 - 1;
  if (v38 - 1 < 0 || v54 >= v53)
  {
    IOSArray_throwOutOfBoundsWithMsg(v53, v54);
  }

  if ((a2 & 0x80000000) != 0 || v53 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v53, a2);
  }

  *(a1 + 12 + 2 * a2) = *(a1 + 12 + 2 * v55);
  v56 = *(a1 + 8);
  if ((v55 & 0x80000000) != 0 || v55 >= v56)
  {
    IOSArray_throwOutOfBoundsWithMsg(v56, v55);
  }

  *(a1 + 12 + 2 * v55) = v27;
  v57 = *(a1 + 8);
  v58 = v34 + 1;
  v59 = v34 + 1;
  if (v34 + 1 < 0 || v58 >= v57)
  {
    IOSArray_throwOutOfBoundsWithMsg(v57, v58);
  }

  if ((a3 & 0x80000000) != 0 || v57 <= a3)
  {
    IOSArray_throwOutOfBoundsWithMsg(v57, a3);
  }

  *(a1 + 12 + 2 * a3) = *(a1 + 12 + 2 * v59);
  v60 = *(a1 + 8);
  if ((v59 & 0x80000000) != 0 || v59 >= v60)
  {
    IOSArray_throwOutOfBoundsWithMsg(v60, v59);
  }

  *(a1 + 12 + 2 * v59) = v25;
  v61 = v25;
  sub_10018DB68(a1);
  result = sub_10018DB68(a1);
  if (v27 != v61)
  {
    if (v38 >= v103 || v34 <= v102)
    {
      goto LABEL_211;
    }

    do
    {
      v63 = *(a1 + 8);
      if ((v38 & 0x80000000) != 0 || v38 >= v63)
      {
        IOSArray_throwOutOfBoundsWithMsg(v63, v38);
      }

      v64 = *(a1 + 12 + 2 * v38);
      LODWORD(v38) = v38 + 1;
    }

    while (v64 == v27);
    v80 = v38 - 2;
    v81 = v38 - 1;
    do
    {
      v82 = *(a1 + 8);
      if (v34 < 0 || v34 >= v82)
      {
        IOSArray_throwOutOfBoundsWithMsg(v82, v34);
      }

      v83 = *(a1 + 12 + 2 * v34--);
    }

    while (v83 == v61);
    v84 = v34 + 1;
    if (v81 > v84)
    {
LABEL_211:

      return sub_10018DB68(a1);
    }

    v85 = (v38 - 1);
    while (1)
    {
      v86 = v81;
      v87 = *(a1 + 8);
      if (v81 < 0 || v81 >= v87)
      {
        IOSArray_throwOutOfBoundsWithMsg(v87, v81);
      }

      v88 = *(a1 + 12 + 2 * v81);
      if (v88 == v61)
      {
        break;
      }

      if (v88 == v27)
      {
        v92 = *(a1 + 8);
        if ((v85 & 0x80000000) != 0 || v85 >= v92)
        {
          IOSArray_throwOutOfBoundsWithMsg(v92, v85);
        }

        v89 = v85;
        if ((v86 & 0x80000000) != 0 || v86 >= v92)
        {
          IOSArray_throwOutOfBoundsWithMsg(v92, v86);
        }

        *(a1 + 12 + 2 * v86) = *(a1 + 12 + 2 * v85);
        v93 = (v85 + 1);
        v94 = *(a1 + 8);
        if ((v85 & 0x80000000) != 0 || v85 >= v94)
        {
          IOSArray_throwOutOfBoundsWithMsg(v94, v85);
        }

        v95 = v27;
LABEL_250:
        *(a1 + 12 + 2 * v89) = v95;
        v85 = v93;
      }

      v81 = v86 + 1;
      ++v80;
      if (v86 + 1 > v84)
      {
        goto LABEL_211;
      }
    }

    while (1)
    {
      v89 = v84;
      v90 = *(a1 + 8);
      if (v84 < 0 || v84 >= v90)
      {
        IOSArray_throwOutOfBoundsWithMsg(v90, v84);
      }

      v91 = *(a1 + 12 + 2 * v84);
      if (v91 != v61)
      {
        break;
      }

      v84 = v89 - 1;
      if (v80 == v89 - 1)
      {
        goto LABEL_211;
      }
    }

    v96 = *(a1 + 8);
    if ((v89 & 0x80000000) != 0 || v89 >= v96)
    {
      IOSArray_throwOutOfBoundsWithMsg(v96, v89);
    }

    if (v91 == v27)
    {
      v97 = *(a1 + 8);
      if ((v85 & 0x80000000) != 0 || v85 >= v97)
      {
        IOSArray_throwOutOfBoundsWithMsg(v97, v85);
      }

      v98 = v85;
      if ((v86 & 0x80000000) != 0 || v86 >= v97)
      {
        IOSArray_throwOutOfBoundsWithMsg(v97, v86);
      }

      *(a1 + 12 + 2 * v86) = *(a1 + 12 + 2 * v85);
      v93 = (v85 + 1);
      v99 = *(a1 + 8);
      if ((v85 & 0x80000000) != 0 || v85 >= v99)
      {
        IOSArray_throwOutOfBoundsWithMsg(v99, v85);
      }

      LOWORD(v91) = v27;
    }

    else
    {
      v100 = *(a1 + 8);
      if ((v89 & 0x80000000) != 0 || v89 >= v100)
      {
        IOSArray_throwOutOfBoundsWithMsg(v100, v89);
      }

      if ((v86 & 0x80000000) != 0 || v86 >= v100)
      {
        IOSArray_throwOutOfBoundsWithMsg(v100, v86);
      }

      v98 = v86;
      v93 = v85;
    }

    *(a1 + 12 + 2 * v98) = v91;
    v84 = v89 - 1;
    v101 = *(a1 + 8);
    if ((v89 & 0x80000000) != 0 || v89 >= v101)
    {
      IOSArray_throwOutOfBoundsWithMsg(v101, v89);
    }

    v95 = v61;
    goto LABEL_250;
  }

  return result;
}

uint64_t JavaUtilDualPivotQuicksort_sortWithCharArray_(uint64_t a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v2 = (*(a1 + 8) - 1);

  return sub_10018F4F8(a1, 0, v2);
}

uint64_t JavaUtilDualPivotQuicksort_sortWithCharArray_withInt_withInt_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v8 = a3;
  JavaUtilArrays_checkStartAndEndWithInt_withInt_withInt_(*(a1 + 8), a2, a3, a4, a5, a6, a7, a8);

  return sub_10018F4F8(a1, a2, (v8 - 1));
}

uint64_t sub_10018F4F8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = result;
  v5 = a3 - a2 + 1;
  if (v5 <= 31)
  {
    v6 = (a2 + 1);
    if (v6 > a3)
    {
      return result;
    }

    if (result)
    {
      v7 = a2;
      do
      {
        v8 = v6;
        v9 = v6;
        size = v4->super.size_;
        if ((v6 & 0x80000000) != 0 || v6 >= size)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, v6);
        }

        v11 = *(&v4->super.size_ + v6 + 2);
        while (v7 >= a2)
        {
          v12 = v4->super.size_;
          if ((v7 & 0x80000000) != 0 || v7 >= v12)
          {
            IOSArray_throwOutOfBoundsWithMsg(v12, v7);
          }

          v13 = *(&v4->super.size_ + v7 + 2);
          if (v11 >= v13)
          {
            break;
          }

          v14 = v4->super.size_;
          if ((v7 & 0x80000000) != 0 || v7 >= v14)
          {
            IOSArray_throwOutOfBoundsWithMsg(v14, v7);
          }

          v15 = v7 + 1;
          if (v7 + 1 < 0 || v15 >= v14)
          {
            IOSArray_throwOutOfBoundsWithMsg(v14, v15);
          }

          *(&v4->super.size_ + v15 + 2) = v13;
          v7 = (v7 - 1);
        }

        result = v4->super.size_;
        v16 = v7 + 1;
        if (v7 + 1 < 0 || v16 >= result)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, v16);
        }

        *(&v4->super.size_ + v16 + 2) = v11;
        v6 = (v9 + 1);
        v7 = v8;
      }

      while (v6 <= a3);
      return result;
    }

LABEL_58:
    JreThrowNullPointerException();
  }

  if (v5 <= 0x8000)
  {

    return sub_10018F87C(result, a2, a3);
  }

  else
  {
    v17 = a3;
    result = [IOSIntArray arrayWithLength:0x10000];
    v18 = result;
    if (v17 >= v3)
    {
      if (!v4)
      {
        goto LABEL_58;
      }

      v24 = v3;
      do
      {
        v25 = v24;
        v26 = v4->super.size_;
        if (v24 < 0 || v24 >= v26)
        {
          IOSArray_throwOutOfBoundsWithMsg(v26, v24);
        }

        v27 = *(&v4->super.size_ + v24 + 2);
        result = v18->super.size_;
        if (result <= v27)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, *(&v4->super.size_ + v24 + 2));
        }

        ++*(&v18->super.size_ + v27 + 1);
        ++v24;
      }

      while (v25 + 1 <= v17);
    }

    if (v18->super.size_ >= 1 && v17 >= v3)
    {
      v20 = 0;
      do
      {
        v21 = *(&v18->super.size_ + v20 + 1);
        if (v21 >= 1)
        {
          if (!v4)
          {
            goto LABEL_58;
          }

          v22 = v21 + 1;
          do
          {
            result = v4->super.size_;
            if (v3 < 0 || v3 >= result)
            {
              IOSArray_throwOutOfBoundsWithMsg(result, v3);
            }

            *(&v4->super.size_ + v3 + 2) = v20;
            --v22;
            ++v3;
          }

          while (v22 > 1);
        }
      }

      while (++v20 < v18->super.size_ && v3 <= v17);
    }
  }

  return result;
}

uint64_t sub_10018F87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v4 = (a3 - a2 + 1) / 6;
  v5 = (v4 + a2);
  v6 = (a3 + a2) >> 1;
  v7 = (v6 - v4);
  v8 = *(a1 + 8);
  if ((v5 & 0x80000000) != 0 || v5 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, (v4 + a2));
  }

  v9 = v4 + ((a3 + a2) >> 1);
  v10 = *(a1 + 12 + 2 * v5);
  if ((v7 & 0x80000000) != 0 || v7 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, (v6 - v4));
  }

  v11 = (a3 - v4);
  v12 = *(a1 + 12 + 2 * v7);
  v103 = a3 - v4;
  if (v6 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, v6);
  }

  v13 = *(a1 + 12 + 2 * v6);
  if ((v9 & 0x80000000) != 0 || v9 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, v9);
  }

  v14 = *(a1 + 12 + 2 * v9);
  if ((v11 & 0x80000000) != 0 || v11 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, v11);
  }

  v15 = *(a1 + 12 + 2 * v11);
  if (v10 <= v12)
  {
    v16 = *(a1 + 12 + 2 * v7);
  }

  else
  {
    v16 = *(a1 + 12 + 2 * v5);
  }

  if (v10 >= v12)
  {
    v17 = *(a1 + 12 + 2 * v7);
  }

  else
  {
    v17 = *(a1 + 12 + 2 * v5);
  }

  if (v14 <= v15)
  {
    v18 = *(a1 + 12 + 2 * v11);
  }

  else
  {
    v18 = *(a1 + 12 + 2 * v9);
  }

  if (v14 < v15)
  {
    v15 = *(a1 + 12 + 2 * v9);
  }

  if (v17 <= v13)
  {
    v19 = *(a1 + 12 + 2 * v6);
  }

  else
  {
    v19 = v17;
  }

  if (v17 >= v13)
  {
    v17 = *(a1 + 12 + 2 * v6);
  }

  if (v16 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v16;
  }

  if (v16 >= v19)
  {
    v16 = v19;
  }

  if (v17 <= v15)
  {
    v21 = v15;
  }

  else
  {
    v21 = v17;
  }

  if (v17 >= v15)
  {
    v22 = v15;
  }

  else
  {
    v22 = v17;
  }

  if (v20 <= v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = v20;
  }

  if (v20 >= v21)
  {
    v24 = v21;
  }

  else
  {
    v24 = v20;
  }

  if (v16 <= v18)
  {
    v25 = v18;
  }

  else
  {
    v25 = v16;
  }

  if (v16 >= v18)
  {
    v16 = v18;
  }

  if (v16 <= v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = v16;
  }

  if (v16 >= v24)
  {
    v27 = v24;
  }

  else
  {
    v27 = v16;
  }

  if (v23 <= v25)
  {
    v28 = v25;
  }

  else
  {
    v28 = v23;
  }

  if (v23 >= v25)
  {
    v29 = v25;
  }

  else
  {
    v29 = v23;
  }

  if ((v5 & 0x80000000) != 0 || v5 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, v5);
  }

  *(a1 + 12 + 2 * v5) = v22;
  v30 = *(a1 + 8);
  if (v6 >= v30)
  {
    IOSArray_throwOutOfBoundsWithMsg(v30, v6);
  }

  *(a1 + 12 + 2 * v6) = v26;
  v31 = *(a1 + 8);
  if ((v11 & 0x80000000) != 0 || v11 >= v31)
  {
    IOSArray_throwOutOfBoundsWithMsg(v31, v11);
  }

  *(a1 + 12 + 2 * v11) = v28;
  v32 = *(a1 + 8);
  if ((a2 & 0x80000000) != 0 || v32 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v32, a2);
  }

  if ((v7 & 0x80000000) != 0 || v7 >= v32)
  {
    IOSArray_throwOutOfBoundsWithMsg(v32, v7);
  }

  *(a1 + 12 + 2 * v7) = *(a1 + 12 + 2 * a2);
  v33 = *(a1 + 8);
  if ((a3 & 0x80000000) != 0 || v33 <= a3)
  {
    IOSArray_throwOutOfBoundsWithMsg(v33, a3);
  }

  if ((v9 & 0x80000000) != 0 || v9 >= v33)
  {
    IOSArray_throwOutOfBoundsWithMsg(v33, v9);
  }

  *(a1 + 12 + 2 * v9) = *(a1 + 12 + 2 * a3);
  v34 = a2 + 1;
  v35 = a3 - 1;
  v104 = v5;
  if (v27 == v29)
  {
    if (v34 <= v35)
    {
      v36 = a2 + 1;
      v37 = a3 - 1;
      v38 = (a2 + 1);
      do
      {
        v39 = *(a1 + 8);
        if (v36 < 0 || v36 >= v39)
        {
          IOSArray_throwOutOfBoundsWithMsg(v39, v36);
        }

        v40 = *(a1 + 12 + 2 * v36);
        if (v40 != v27)
        {
          if (v40 >= v27)
          {
            do
            {
              v43 = v37;
              v44 = *(a1 + 8);
              if (v37 < 0 || v37 >= v44)
              {
                IOSArray_throwOutOfBoundsWithMsg(v44, v37);
              }

              v45 = *(a1 + 12 + 2 * v37--);
            }

            while (v45 > v27);
            v46 = *(a1 + 8);
            v47 = v37 + 1;
            if ((v43 & 0x80000000) != 0 || v47 >= v46)
            {
              IOSArray_throwOutOfBoundsWithMsg(v46, (v37 + 1));
            }

            if (v45 >= v27)
            {
              v51 = *(a1 + 8);
              if (v36 < 0 || v36 >= v51)
              {
                IOSArray_throwOutOfBoundsWithMsg(v51, v36);
              }

              *(a1 + 12 + 2 * v36) = v27;
              v52 = *(a1 + 8);
              if ((v43 & 0x80000000) != 0 || v47 >= v52)
              {
                IOSArray_throwOutOfBoundsWithMsg(v52, (v37 + 1));
              }
            }

            else
            {
              v48 = *(a1 + 8);
              if ((v38 & 0x80000000) != 0 || v38 >= v48)
              {
                IOSArray_throwOutOfBoundsWithMsg(v48, v38);
              }

              if (v36 < 0 || v36 >= v48)
              {
                IOSArray_throwOutOfBoundsWithMsg(v48, v36);
              }

              *(a1 + 12 + 2 * v36) = *(a1 + 12 + 2 * v38);
              v49 = *(a1 + 8);
              if ((v43 & 0x80000000) != 0 || v47 >= v49)
              {
                IOSArray_throwOutOfBoundsWithMsg(v49, (v37 + 1));
              }

              if ((v38 & 0x80000000) != 0 || v38 >= v49)
              {
                IOSArray_throwOutOfBoundsWithMsg(v49, v38);
              }

              *(a1 + 12 + 2 * v38) = *(a1 + 12 + 2 * v43);
              v50 = *(a1 + 8);
              if ((v43 & 0x80000000) != 0 || v47 >= v50)
              {
                IOSArray_throwOutOfBoundsWithMsg(v50, (v37 + 1));
              }

              v38 = (v38 + 1);
            }

            *(a1 + 12 + 2 * v43) = v40;
          }

          else
          {
            if (v36 != v38)
            {
              v41 = *(a1 + 8);
              if ((v38 & 0x80000000) != 0 || v38 >= v41)
              {
                IOSArray_throwOutOfBoundsWithMsg(v41, v38);
              }

              if (v36 < 0 || v36 >= v41)
              {
                IOSArray_throwOutOfBoundsWithMsg(v41, v36);
              }

              *(a1 + 12 + 2 * v36) = *(a1 + 12 + 2 * v38);
              v42 = *(a1 + 8);
              if ((v38 & 0x80000000) != 0 || v38 >= v42)
              {
                IOSArray_throwOutOfBoundsWithMsg(v42, v38);
              }

              *(a1 + 12 + 2 * v38) = v40;
            }

            v38 = (v38 + 1);
          }
        }

        ++v36;
        LODWORD(v53) = v38;
        v35 = v37;
      }

      while (v36 <= v37);
      goto LABEL_130;
    }

LABEL_129:
    LODWORD(v53) = a2 + 1;
    goto LABEL_130;
  }

  if (v34 > v35)
  {
    goto LABEL_129;
  }

  v66 = a2;
  v53 = (a2 + 1);
  do
  {
    v67 = v34;
    v68 = *(a1 + 8);
    if (v34 < 0 || v34 >= v68)
    {
      IOSArray_throwOutOfBoundsWithMsg(v68, v34);
    }

    v69 = *(a1 + 12 + 2 * v34);
    if (v69 >= v27)
    {
      if (v69 > v29)
      {
        while (1)
        {
          v72 = v35;
          v73 = *(a1 + 8);
          if (v35 < 0 || v35 >= v73)
          {
            IOSArray_throwOutOfBoundsWithMsg(v73, v35);
          }

          v74 = *(a1 + 12 + 2 * v35);
          if (v74 <= v29)
          {
            break;
          }

          v35 = v72 - 1;
          if (v66 == v72 - 1)
          {
            goto LABEL_130;
          }
        }

        v75 = *(a1 + 8);
        if ((v72 & 0x80000000) != 0 || v72 >= v75)
        {
          IOSArray_throwOutOfBoundsWithMsg(v75, v72);
        }

        if (v74 >= v27)
        {
          v79 = *(a1 + 8);
          if ((v72 & 0x80000000) != 0 || v72 >= v79)
          {
            IOSArray_throwOutOfBoundsWithMsg(v79, v72);
          }

          if (v34 < 0 || v34 >= v79)
          {
            IOSArray_throwOutOfBoundsWithMsg(v79, v34);
          }

          *(a1 + 12 + 2 * v34) = v74;
          v80 = *(a1 + 8);
          if ((v72 & 0x80000000) != 0 || v72 >= v80)
          {
            IOSArray_throwOutOfBoundsWithMsg(v80, v72);
          }
        }

        else
        {
          v76 = *(a1 + 8);
          if ((v53 & 0x80000000) != 0 || v53 >= v76)
          {
            IOSArray_throwOutOfBoundsWithMsg(v76, v53);
          }

          if (v34 < 0 || v34 >= v76)
          {
            IOSArray_throwOutOfBoundsWithMsg(v76, v34);
          }

          *(a1 + 12 + 2 * v34) = *(a1 + 12 + 2 * v53);
          v77 = *(a1 + 8);
          if ((v72 & 0x80000000) != 0 || v72 >= v77)
          {
            IOSArray_throwOutOfBoundsWithMsg(v77, v72);
          }

          if ((v53 & 0x80000000) != 0 || v53 >= v77)
          {
            IOSArray_throwOutOfBoundsWithMsg(v77, v53);
          }

          *(a1 + 12 + 2 * v53) = *(a1 + 12 + 2 * v72);
          v78 = *(a1 + 8);
          if ((v72 & 0x80000000) != 0 || v72 >= v78)
          {
            IOSArray_throwOutOfBoundsWithMsg(v78, v72);
          }

          v53 = (v53 + 1);
        }

        v35 = v72 - 1;
        *(a1 + 12 + 2 * v72) = v69;
      }
    }

    else
    {
      if (v34 != v53)
      {
        v70 = *(a1 + 8);
        if ((v53 & 0x80000000) != 0 || v53 >= v70)
        {
          IOSArray_throwOutOfBoundsWithMsg(v70, v53);
        }

        if (v34 < 0 || v34 >= v70)
        {
          IOSArray_throwOutOfBoundsWithMsg(v70, v34);
        }

        *(a1 + 12 + 2 * v34) = *(a1 + 12 + 2 * v53);
        v71 = *(a1 + 8);
        if ((v53 & 0x80000000) != 0 || v53 >= v71)
        {
          IOSArray_throwOutOfBoundsWithMsg(v71, v53);
        }

        *(a1 + 12 + 2 * v53) = v69;
      }

      v53 = (v53 + 1);
    }

    ++v34;
    ++v66;
  }

  while (v67 + 1 <= v35);
LABEL_130:
  v54 = *(a1 + 8);
  v55 = v53 - 1;
  v56 = v53 - 1;
  if (v53 - 1 < 0 || v55 >= v54)
  {
    IOSArray_throwOutOfBoundsWithMsg(v54, v55);
  }

  if ((a2 & 0x80000000) != 0 || v54 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v54, a2);
  }

  *(a1 + 12 + 2 * a2) = *(a1 + 12 + 2 * v56);
  v57 = *(a1 + 8);
  if ((v56 & 0x80000000) != 0 || v56 >= v57)
  {
    IOSArray_throwOutOfBoundsWithMsg(v57, v56);
  }

  *(a1 + 12 + 2 * v56) = v27;
  v58 = *(a1 + 8);
  v59 = v35 + 1;
  v60 = v35 + 1;
  if (v35 + 1 < 0 || v59 >= v58)
  {
    IOSArray_throwOutOfBoundsWithMsg(v58, v59);
  }

  if ((a3 & 0x80000000) != 0 || v58 <= a3)
  {
    IOSArray_throwOutOfBoundsWithMsg(v58, a3);
  }

  *(a1 + 12 + 2 * a3) = *(a1 + 12 + 2 * v60);
  v61 = *(a1 + 8);
  if ((v60 & 0x80000000) != 0 || v60 >= v61)
  {
    IOSArray_throwOutOfBoundsWithMsg(v61, v60);
  }

  *(a1 + 12 + 2 * v60) = v29;
  v62 = v29;
  sub_10018F4F8(a1);
  result = sub_10018F4F8(a1);
  if (v27 != v62)
  {
    if (v53 >= v104 || v35 <= v103)
    {
      goto LABEL_213;
    }

    do
    {
      v64 = *(a1 + 8);
      if ((v53 & 0x80000000) != 0 || v53 >= v64)
      {
        IOSArray_throwOutOfBoundsWithMsg(v64, v53);
      }

      v65 = *(a1 + 12 + 2 * v53);
      LODWORD(v53) = v53 + 1;
    }

    while (v65 == v27);
    v81 = v53 - 2;
    v82 = v53 - 1;
    do
    {
      v83 = *(a1 + 8);
      if (v35 < 0 || v35 >= v83)
      {
        IOSArray_throwOutOfBoundsWithMsg(v83, v35);
      }

      v84 = *(a1 + 12 + 2 * v35--);
    }

    while (v84 == v62);
    v85 = v35 + 1;
    if (v82 > v85)
    {
LABEL_213:

      return sub_10018F4F8(a1);
    }

    v86 = (v53 - 1);
    while (1)
    {
      v87 = v82;
      v88 = *(a1 + 8);
      if (v82 < 0 || v82 >= v88)
      {
        IOSArray_throwOutOfBoundsWithMsg(v88, v82);
      }

      v89 = *(a1 + 12 + 2 * v82);
      if (v89 == v62)
      {
        break;
      }

      if (v89 == v27)
      {
        v93 = *(a1 + 8);
        if ((v86 & 0x80000000) != 0 || v86 >= v93)
        {
          IOSArray_throwOutOfBoundsWithMsg(v93, v86);
        }

        v90 = v86;
        if ((v87 & 0x80000000) != 0 || v87 >= v93)
        {
          IOSArray_throwOutOfBoundsWithMsg(v93, v87);
        }

        *(a1 + 12 + 2 * v87) = *(a1 + 12 + 2 * v86);
        v94 = (v86 + 1);
        v95 = *(a1 + 8);
        if ((v86 & 0x80000000) != 0 || v86 >= v95)
        {
          IOSArray_throwOutOfBoundsWithMsg(v95, v86);
        }

        v96 = v27;
LABEL_252:
        *(a1 + 12 + 2 * v90) = v96;
        v86 = v94;
      }

      v82 = v87 + 1;
      ++v81;
      if (v87 + 1 > v85)
      {
        goto LABEL_213;
      }
    }

    while (1)
    {
      v90 = v85;
      v91 = *(a1 + 8);
      if (v85 < 0 || v85 >= v91)
      {
        IOSArray_throwOutOfBoundsWithMsg(v91, v85);
      }

      v92 = *(a1 + 12 + 2 * v85);
      if (v92 != v62)
      {
        break;
      }

      v85 = v90 - 1;
      if (v81 == v90 - 1)
      {
        goto LABEL_213;
      }
    }

    v97 = *(a1 + 8);
    if ((v90 & 0x80000000) != 0 || v90 >= v97)
    {
      IOSArray_throwOutOfBoundsWithMsg(v97, v90);
    }

    if (v92 == v27)
    {
      v98 = *(a1 + 8);
      if ((v86 & 0x80000000) != 0 || v86 >= v98)
      {
        IOSArray_throwOutOfBoundsWithMsg(v98, v86);
      }

      v99 = v86;
      if ((v87 & 0x80000000) != 0 || v87 >= v98)
      {
        IOSArray_throwOutOfBoundsWithMsg(v98, v87);
      }

      *(a1 + 12 + 2 * v87) = *(a1 + 12 + 2 * v86);
      v94 = (v86 + 1);
      v100 = *(a1 + 8);
      if ((v86 & 0x80000000) != 0 || v86 >= v100)
      {
        IOSArray_throwOutOfBoundsWithMsg(v100, v86);
      }

      LOWORD(v92) = v27;
    }

    else
    {
      v101 = *(a1 + 8);
      if ((v90 & 0x80000000) != 0 || v90 >= v101)
      {
        IOSArray_throwOutOfBoundsWithMsg(v101, v90);
      }

      if ((v87 & 0x80000000) != 0 || v87 >= v101)
      {
        IOSArray_throwOutOfBoundsWithMsg(v101, v87);
      }

      v99 = v87;
      v94 = v86;
    }

    *(a1 + 12 + 2 * v99) = v92;
    v85 = v90 - 1;
    v102 = *(a1 + 8);
    if ((v90 & 0x80000000) != 0 || v90 >= v102)
    {
      IOSArray_throwOutOfBoundsWithMsg(v102, v90);
    }

    v96 = v62;
    goto LABEL_252;
  }

  return result;
}

uint64_t JavaUtilDualPivotQuicksort_sortWithByteArray_(uint64_t a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v2 = (*(a1 + 8) - 1);

  return sub_100190E58(a1, 0, v2);
}

uint64_t JavaUtilDualPivotQuicksort_sortWithByteArray_withInt_withInt_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v8 = a3;
  JavaUtilArrays_checkStartAndEndWithInt_withInt_withInt_(*(a1 + 8), a2, a3, a4, a5, a6, a7, a8);

  return sub_100190E58(a1, a2, (v8 - 1));
}

uint64_t sub_100190E58(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = result;
  v5 = a3 - a2 + 1;
  if (v5 <= 31)
  {
    v6 = (a2 + 1);
    if (v6 > a3)
    {
      return result;
    }

    if (result)
    {
      v7 = a2;
      do
      {
        v8 = v6;
        v9 = v6;
        size = v4->super.size_;
        if ((v6 & 0x80000000) != 0 || v6 >= size)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, v6);
        }

        v11 = *(&v4->super.size_ + v6 + 4);
        while (v7 >= a2)
        {
          v12 = v4->super.size_;
          if ((v7 & 0x80000000) != 0 || v7 >= v12)
          {
            IOSArray_throwOutOfBoundsWithMsg(v12, v7);
          }

          v13 = *(&v4->super.size_ + v7 + 4);
          if (v11 >= v13)
          {
            break;
          }

          v14 = v4->super.size_;
          if ((v7 & 0x80000000) != 0 || v7 >= v14)
          {
            IOSArray_throwOutOfBoundsWithMsg(v14, v7);
          }

          v15 = v7 + 1;
          if (v7 + 1 < 0 || v15 >= v14)
          {
            IOSArray_throwOutOfBoundsWithMsg(v14, v15);
          }

          *(&v4->super.size_ + v15 + 4) = v13;
          v7 = (v7 - 1);
        }

        result = v4->super.size_;
        v16 = v7 + 1;
        if (v7 + 1 < 0 || v16 >= result)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, v16);
        }

        *(&v4->super.size_ + v16 + 4) = v11;
        v6 = (v9 + 1);
        v7 = v8;
      }

      while (v6 <= a3);
      return result;
    }

LABEL_58:
    JreThrowNullPointerException();
  }

  if (v5 < 0x81)
  {

    return sub_1001911E4(result, a2, a3);
  }

  else
  {
    v27 = a3;
    result = [IOSIntArray arrayWithLength:256];
    v17 = result;
    if (v27 >= v3)
    {
      if (!v4)
      {
        goto LABEL_58;
      }

      v23 = v3;
      do
      {
        v24 = v23;
        v25 = v4->super.size_;
        if (v23 < 0 || v23 >= v25)
        {
          IOSArray_throwOutOfBoundsWithMsg(v25, v23);
        }

        v26 = *(&v4->super.size_ + v23 + 4);
        result = v17->super.size_;
        if (result <= v26 + 128)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, v26 + 128);
        }

        ++v17->buffer_[v26 + 127];
        v23 = v24 + 1;
      }

      while (v24 + 1 <= v27);
    }

    if (v17->super.size_ >= 1 && v27 >= v3)
    {
      v19 = 0;
      do
      {
        v20 = *(&v17->super.size_ + v19 + 1);
        if (v20 >= 1)
        {
          if (!v4)
          {
            goto LABEL_58;
          }

          v21 = v20 + 1;
          do
          {
            result = v4->super.size_;
            if (v3 < 0 || v3 >= result)
            {
              IOSArray_throwOutOfBoundsWithMsg(result, v3);
            }

            *(&v4->super.size_ + v3 + 4) = v19 ^ 0x80;
            --v21;
            ++v3;
          }

          while (v21 > 1);
        }
      }

      while (++v19 < v17->super.size_ && v3 <= v27);
    }
  }

  return result;
}

uint64_t sub_1001911E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v4 = (a3 - a2 + 1) / 6;
  v5 = (v4 + a2);
  v6 = (a3 + a2) >> 1;
  v7 = (v6 - v4);
  v8 = *(a1 + 8);
  if ((v5 & 0x80000000) != 0 || v5 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, (v4 + a2));
  }

  v9 = (v6 + v4);
  v10 = *(a1 + 12 + v5);
  if ((v7 & 0x80000000) != 0 || v7 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, (v6 - v4));
  }

  v11 = (a3 - v4);
  v12 = *(a1 + 12 + v7);
  v102 = a3 - v4;
  if (v6 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, (a3 + a2) >> 1);
  }

  v13 = *(a1 + 12 + v6);
  if ((v9 & 0x80000000) != 0 || v9 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, v9);
  }

  v14 = *(a1 + 12 + v9);
  if ((v11 & 0x80000000) != 0 || v11 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, v11);
  }

  v15 = *(a1 + 12 + v11);
  v16 = v12;
  if (v10 <= v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = v10;
  }

  if (v10 < v12)
  {
    v16 = v10;
  }

  if (v14 <= v15)
  {
    v18 = *(a1 + 12 + v11);
  }

  else
  {
    v18 = v14;
  }

  if (v14 < v15)
  {
    v15 = v14;
  }

  if (v16 <= v13)
  {
    v19 = v13;
  }

  else
  {
    v19 = v16;
  }

  if (v16 >= v13)
  {
    v16 = v13;
  }

  if (v17 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v17;
  }

  if (v17 >= v19)
  {
    v17 = v19;
  }

  if (v16 <= v15)
  {
    v21 = v15;
  }

  else
  {
    v21 = v16;
  }

  if (v16 >= v15)
  {
    v22 = v15;
  }

  else
  {
    v22 = v16;
  }

  if (v20 <= v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = v20;
  }

  if (v20 >= v21)
  {
    v24 = v21;
  }

  else
  {
    v24 = v20;
  }

  if (v17 <= v18)
  {
    v25 = v18;
  }

  else
  {
    v25 = v17;
  }

  if (v17 >= v18)
  {
    v17 = v18;
  }

  if (v17 <= v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = v17;
  }

  if (v17 >= v24)
  {
    v27 = v24;
  }

  else
  {
    v27 = v17;
  }

  if (v23 <= v25)
  {
    v28 = v25;
  }

  else
  {
    v28 = v23;
  }

  if (v23 < v25)
  {
    LOBYTE(v25) = v23;
  }

  if ((v5 & 0x80000000) != 0 || v5 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, v5);
  }

  *(a1 + 12 + v5) = v22;
  v29 = *(a1 + 8);
  if (v6 >= v29)
  {
    IOSArray_throwOutOfBoundsWithMsg(v29, (a3 + a2) >> 1);
  }

  *(a1 + 12 + v6) = v26;
  v30 = *(a1 + 8);
  if ((v11 & 0x80000000) != 0 || v11 >= v30)
  {
    IOSArray_throwOutOfBoundsWithMsg(v30, v11);
  }

  *(a1 + 12 + v11) = v28;
  v31 = *(a1 + 8);
  if ((a2 & 0x80000000) != 0 || v31 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v31, a2);
  }

  if ((v7 & 0x80000000) != 0 || v7 >= v31)
  {
    IOSArray_throwOutOfBoundsWithMsg(v31, v7);
  }

  *(a1 + 12 + v7) = *(a1 + 12 + a2);
  v32 = *(a1 + 8);
  if ((a3 & 0x80000000) != 0 || v32 <= a3)
  {
    IOSArray_throwOutOfBoundsWithMsg(v32, a3);
  }

  if ((v9 & 0x80000000) != 0 || v9 >= v32)
  {
    IOSArray_throwOutOfBoundsWithMsg(v32, v9);
  }

  *(a1 + 12 + v9) = *(a1 + 12 + a3);
  v33 = a2 + 1;
  v34 = a3 - 1;
  v103 = v5;
  if (v27 == v25)
  {
    if (v33 <= v34)
    {
      v35 = a2 + 1;
      v36 = a3 - 1;
      v37 = (a2 + 1);
      do
      {
        v38 = v35;
        v39 = *(a1 + 8);
        if (v35 < 0 || v35 >= v39)
        {
          IOSArray_throwOutOfBoundsWithMsg(v39, v35);
        }

        v40 = *(a1 + 12 + v35);
        if (v40 != v27)
        {
          if (v40 >= v27)
          {
            do
            {
              v43 = v36;
              v44 = *(a1 + 8);
              if (v36 < 0 || v36 >= v44)
              {
                IOSArray_throwOutOfBoundsWithMsg(v44, v36);
              }

              v45 = *(a1 + 12 + v36--);
            }

            while (v45 > v27);
            v46 = *(a1 + 8);
            v47 = v36 + 1;
            if ((v43 & 0x80000000) != 0 || v47 >= v46)
            {
              IOSArray_throwOutOfBoundsWithMsg(v46, (v36 + 1));
            }

            if (v45 >= v27)
            {
              v51 = *(a1 + 8);
              if ((v38 & 0x80000000) != 0 || v38 >= v51)
              {
                IOSArray_throwOutOfBoundsWithMsg(v51, v38);
              }

              *(a1 + 12 + v38) = v27;
              v52 = *(a1 + 8);
              if ((v43 & 0x80000000) != 0 || v47 >= v52)
              {
                IOSArray_throwOutOfBoundsWithMsg(v52, (v36 + 1));
              }
            }

            else
            {
              v48 = *(a1 + 8);
              if ((v37 & 0x80000000) != 0 || v37 >= v48)
              {
                IOSArray_throwOutOfBoundsWithMsg(v48, v37);
              }

              if ((v38 & 0x80000000) != 0 || v38 >= v48)
              {
                IOSArray_throwOutOfBoundsWithMsg(v48, v38);
              }

              *(a1 + 12 + v38) = *(a1 + 12 + v37);
              v49 = *(a1 + 8);
              if ((v43 & 0x80000000) != 0 || v47 >= v49)
              {
                IOSArray_throwOutOfBoundsWithMsg(v49, (v36 + 1));
              }

              if ((v37 & 0x80000000) != 0 || v37 >= v49)
              {
                IOSArray_throwOutOfBoundsWithMsg(v49, v37);
              }

              *(a1 + 12 + v37) = *(a1 + 12 + v43);
              v50 = *(a1 + 8);
              if ((v43 & 0x80000000) != 0 || v47 >= v50)
              {
                IOSArray_throwOutOfBoundsWithMsg(v50, (v36 + 1));
              }

              v37 = (v37 + 1);
            }

            *(a1 + 12 + v43) = v40;
          }

          else
          {
            if (v38 != v37)
            {
              v41 = *(a1 + 8);
              if ((v37 & 0x80000000) != 0 || v37 >= v41)
              {
                IOSArray_throwOutOfBoundsWithMsg(v41, v37);
              }

              if ((v38 & 0x80000000) != 0 || v38 >= v41)
              {
                IOSArray_throwOutOfBoundsWithMsg(v41, v38);
              }

              *(a1 + 12 + v38) = *(a1 + 12 + v37);
              v42 = *(a1 + 8);
              if ((v37 & 0x80000000) != 0 || v37 >= v42)
              {
                IOSArray_throwOutOfBoundsWithMsg(v42, v37);
              }

              *(a1 + 12 + v37) = v40;
            }

            v37 = (v37 + 1);
          }
        }

        v35 = v38 + 1;
        LODWORD(v38) = v37;
        v34 = v36;
      }

      while (v35 <= v36);
      goto LABEL_128;
    }

LABEL_127:
    LODWORD(v38) = a2 + 1;
    goto LABEL_128;
  }

  if (v33 > v34)
  {
    goto LABEL_127;
  }

  v65 = a2;
  v38 = (a2 + 1);
  do
  {
    v66 = v33;
    v67 = *(a1 + 8);
    if (v33 < 0 || v33 >= v67)
    {
      IOSArray_throwOutOfBoundsWithMsg(v67, v33);
    }

    v68 = *(a1 + 12 + v33);
    if (v68 >= v27)
    {
      if (v68 > v25)
      {
        while (1)
        {
          v71 = v34;
          v72 = *(a1 + 8);
          if (v34 < 0 || v34 >= v72)
          {
            IOSArray_throwOutOfBoundsWithMsg(v72, v34);
          }

          v73 = *(a1 + 12 + v34);
          if (v73 <= v25)
          {
            break;
          }

          v34 = v71 - 1;
          if (v65 == v71 - 1)
          {
            goto LABEL_128;
          }
        }

        v74 = *(a1 + 8);
        if ((v71 & 0x80000000) != 0 || v71 >= v74)
        {
          IOSArray_throwOutOfBoundsWithMsg(v74, v71);
        }

        if (v73 >= v27)
        {
          v78 = *(a1 + 8);
          if ((v71 & 0x80000000) != 0 || v71 >= v78)
          {
            IOSArray_throwOutOfBoundsWithMsg(v78, v71);
          }

          if (v33 < 0 || v33 >= v78)
          {
            IOSArray_throwOutOfBoundsWithMsg(v78, v33);
          }

          *(a1 + 12 + v33) = v73;
          v79 = *(a1 + 8);
          if ((v71 & 0x80000000) != 0 || v71 >= v79)
          {
            IOSArray_throwOutOfBoundsWithMsg(v79, v71);
          }
        }

        else
        {
          v75 = *(a1 + 8);
          if ((v38 & 0x80000000) != 0 || v38 >= v75)
          {
            IOSArray_throwOutOfBoundsWithMsg(v75, v38);
          }

          if (v33 < 0 || v33 >= v75)
          {
            IOSArray_throwOutOfBoundsWithMsg(v75, v33);
          }

          *(a1 + 12 + v33) = *(a1 + 12 + v38);
          v76 = *(a1 + 8);
          if ((v71 & 0x80000000) != 0 || v71 >= v76)
          {
            IOSArray_throwOutOfBoundsWithMsg(v76, v71);
          }

          if ((v38 & 0x80000000) != 0 || v38 >= v76)
          {
            IOSArray_throwOutOfBoundsWithMsg(v76, v38);
          }

          *(a1 + 12 + v38) = *(a1 + 12 + v71);
          v77 = *(a1 + 8);
          if ((v71 & 0x80000000) != 0 || v71 >= v77)
          {
            IOSArray_throwOutOfBoundsWithMsg(v77, v71);
          }

          v38 = (v38 + 1);
        }

        v34 = v71 - 1;
        *(a1 + 12 + v71) = v68;
      }
    }

    else
    {
      if (v33 != v38)
      {
        v69 = *(a1 + 8);
        if ((v38 & 0x80000000) != 0 || v38 >= v69)
        {
          IOSArray_throwOutOfBoundsWithMsg(v69, v38);
        }

        if (v33 < 0 || v33 >= v69)
        {
          IOSArray_throwOutOfBoundsWithMsg(v69, v33);
        }

        *(a1 + 12 + v33) = *(a1 + 12 + v38);
        v70 = *(a1 + 8);
        if ((v38 & 0x80000000) != 0 || v38 >= v70)
        {
          IOSArray_throwOutOfBoundsWithMsg(v70, v38);
        }

        *(a1 + 12 + v38) = v68;
      }

      v38 = (v38 + 1);
    }

    ++v33;
    ++v65;
  }

  while (v66 + 1 <= v34);
LABEL_128:
  v53 = *(a1 + 8);
  v54 = v38 - 1;
  v55 = v38 - 1;
  if (v38 - 1 < 0 || v54 >= v53)
  {
    IOSArray_throwOutOfBoundsWithMsg(v53, v54);
  }

  if ((a2 & 0x80000000) != 0 || v53 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v53, a2);
  }

  *(a1 + 12 + a2) = *(a1 + 12 + v55);
  v56 = *(a1 + 8);
  if ((v55 & 0x80000000) != 0 || v55 >= v56)
  {
    IOSArray_throwOutOfBoundsWithMsg(v56, v55);
  }

  *(a1 + 12 + v55) = v27;
  v57 = *(a1 + 8);
  v58 = v34 + 1;
  v59 = v34 + 1;
  if (v34 + 1 < 0 || v58 >= v57)
  {
    IOSArray_throwOutOfBoundsWithMsg(v57, v58);
  }

  if ((a3 & 0x80000000) != 0 || v57 <= a3)
  {
    IOSArray_throwOutOfBoundsWithMsg(v57, a3);
  }

  *(a1 + 12 + a3) = *(a1 + 12 + v59);
  v60 = *(a1 + 8);
  if ((v59 & 0x80000000) != 0 || v59 >= v60)
  {
    IOSArray_throwOutOfBoundsWithMsg(v60, v59);
  }

  *(a1 + 12 + v59) = v25;
  v61 = v25;
  sub_100190E58(a1);
  result = sub_100190E58(a1);
  if (v27 != v61)
  {
    if (v38 >= v103 || v34 <= v102)
    {
      goto LABEL_211;
    }

    do
    {
      v63 = *(a1 + 8);
      if ((v38 & 0x80000000) != 0 || v38 >= v63)
      {
        IOSArray_throwOutOfBoundsWithMsg(v63, v38);
      }

      v64 = *(a1 + 12 + v38);
      LODWORD(v38) = v38 + 1;
    }

    while (v64 == v27);
    v80 = v38 - 2;
    v81 = v38 - 1;
    do
    {
      v82 = *(a1 + 8);
      if (v34 < 0 || v34 >= v82)
      {
        IOSArray_throwOutOfBoundsWithMsg(v82, v34);
      }

      v83 = *(a1 + 12 + v34--);
    }

    while (v83 == v61);
    v84 = v34 + 1;
    if (v81 > v84)
    {
LABEL_211:

      return sub_100190E58(a1);
    }

    v85 = (v38 - 1);
    while (1)
    {
      v86 = v81;
      v87 = *(a1 + 8);
      if (v81 < 0 || v81 >= v87)
      {
        IOSArray_throwOutOfBoundsWithMsg(v87, v81);
      }

      v88 = *(a1 + 12 + v81);
      if (v88 == v61)
      {
        break;
      }

      if (v88 == v27)
      {
        v92 = *(a1 + 8);
        if ((v85 & 0x80000000) != 0 || v85 >= v92)
        {
          IOSArray_throwOutOfBoundsWithMsg(v92, v85);
        }

        v89 = v85;
        if ((v86 & 0x80000000) != 0 || v86 >= v92)
        {
          IOSArray_throwOutOfBoundsWithMsg(v92, v86);
        }

        *(a1 + 12 + v86) = *(a1 + 12 + v85);
        v93 = (v85 + 1);
        v94 = *(a1 + 8);
        if ((v85 & 0x80000000) != 0 || v85 >= v94)
        {
          IOSArray_throwOutOfBoundsWithMsg(v94, v85);
        }

        v95 = v27;
LABEL_250:
        *(a1 + 12 + v89) = v95;
        v85 = v93;
      }

      v81 = v86 + 1;
      ++v80;
      if (v86 + 1 > v84)
      {
        goto LABEL_211;
      }
    }

    while (1)
    {
      v89 = v84;
      v90 = *(a1 + 8);
      if (v84 < 0 || v84 >= v90)
      {
        IOSArray_throwOutOfBoundsWithMsg(v90, v84);
      }

      v91 = *(a1 + 12 + v84);
      if (v91 != v61)
      {
        break;
      }

      v84 = v89 - 1;
      if (v80 == v89 - 1)
      {
        goto LABEL_211;
      }
    }

    v96 = *(a1 + 8);
    if ((v89 & 0x80000000) != 0 || v89 >= v96)
    {
      IOSArray_throwOutOfBoundsWithMsg(v96, v89);
    }

    if (v91 == v27)
    {
      v97 = *(a1 + 8);
      if ((v85 & 0x80000000) != 0 || v85 >= v97)
      {
        IOSArray_throwOutOfBoundsWithMsg(v97, v85);
      }

      v98 = v85;
      if ((v86 & 0x80000000) != 0 || v86 >= v97)
      {
        IOSArray_throwOutOfBoundsWithMsg(v97, v86);
      }

      *(a1 + 12 + v86) = *(a1 + 12 + v85);
      v93 = (v85 + 1);
      v99 = *(a1 + 8);
      if ((v85 & 0x80000000) != 0 || v85 >= v99)
      {
        IOSArray_throwOutOfBoundsWithMsg(v99, v85);
      }

      LOBYTE(v91) = v27;
    }

    else
    {
      v100 = *(a1 + 8);
      if ((v89 & 0x80000000) != 0 || v89 >= v100)
      {
        IOSArray_throwOutOfBoundsWithMsg(v100, v89);
      }

      if ((v86 & 0x80000000) != 0 || v86 >= v100)
      {
        IOSArray_throwOutOfBoundsWithMsg(v100, v86);
      }

      v98 = v86;
      v93 = v85;
    }

    *(a1 + 12 + v98) = v91;
    v84 = v89 - 1;
    v101 = *(a1 + 8);
    if ((v89 & 0x80000000) != 0 || v89 >= v101)
    {
      IOSArray_throwOutOfBoundsWithMsg(v101, v89);
    }

    v95 = v61;
    goto LABEL_250;
  }

  return result;
}

uint64_t JavaUtilDualPivotQuicksort_sortWithFloatArray_(uint64_t a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v2 = (*(a1 + 8) - 1);

  return sub_1001927E8(a1, 0, v2);
}

uint64_t JavaUtilDualPivotQuicksort_sortWithFloatArray_withInt_withInt_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v8 = a3;
  JavaUtilArrays_checkStartAndEndWithInt_withInt_withInt_(*(a1 + 8), a2, a3, a4, a5, a6, a7, a8);

  return sub_1001927E8(a1, a2, (v8 - 1));
}

uint64_t sub_1001927E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = JavaLangFloat_floatToIntBitsWithFloat_(-0.0);
  if (a2 <= a3)
  {
    if (!a1)
    {
      JreThrowNullPointerException();
    }

    v8 = v6;
    v9 = 0;
    v10 = a2;
    do
    {
      v11 = *(a1 + 8);
      if ((v10 & 0x80000000) != 0 || v10 >= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, v10);
      }

      if (*(a1 + 12 + 4 * v10) == 0.0 && v8 == JavaLangFloat_floatToRawIntBitsWithFloat_(*(a1 + 12 + 4 * v10)))
      {
        v12 = *(a1 + 8);
        if ((v10 & 0x80000000) != 0 || v10 >= v12)
        {
          IOSArray_throwOutOfBoundsWithMsg(v12, v10);
        }

        *(a1 + 12 + 4 * v10) = 0;
        ++v9;
      }

      v10 = (v10 + 1);
    }

    while (v10 <= a3);
    result = sub_100192B7C(a1, a2, a3);
    if (v9)
    {
      result = sub_100192AC4(a1, a2, a3);
      LODWORD(a3) = result;
      do
      {
        v13 = a3;
        a3 = (a3 - 1);
        if (a3 < a2)
        {
          break;
        }

        result = *(a1 + 8);
        if ((a3 & 0x80000000) != 0 || a3 >= result)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, a3);
        }
      }

      while (*(a1 + 12 + 4 * a3) == 0.0);
      if (v13 < v9 + v13)
      {
        v14 = v13;
        v15 = a1 + 4 * v13;
        do
        {
          result = *(a1 + 8);
          if (v14 < 0 || v14 >= result)
          {
            IOSArray_throwOutOfBoundsWithMsg(result, v14);
          }

          *(v15 + 12) = 0x80000000;
          ++v14;
          v15 += 4;
          --v9;
        }

        while (v9);
      }
    }
  }

  else
  {

    return sub_100192B7C(a1, a2, a3);
  }

  return result;
}

uint64_t sub_100192AC4(uint64_t a1, int a2, int a3)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v3 = a3;
  v4 = a2;
  for (i = a2 + a3; ; i = v4 + v3)
  {
    v7 = i >> 1;
    v8 = *(a1 + 8);
    if (v7 >= v8)
    {
      IOSArray_throwOutOfBoundsWithMsg(v8, i >> 1);
    }

    v9 = *(a1 + 12 + 4 * v7);
    if (v9 < 0.0)
    {
      v4 = v7 + 1;
      continue;
    }

    if (v9 <= 0.0)
    {
      break;
    }

    v3 = v7 - 1;
  }

  return i >> 1;
}

uint64_t sub_100192B7C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (a3 - a2 + 1 > 31)
  {

    return sub_100192D74(result, a2, a3);
  }

  else
  {
    v4 = (a2 + 1);
    if (v4 <= a3)
    {
      if (!result)
      {
        JreThrowNullPointerException();
      }

      v5 = a2;
      do
      {
        v6 = v4;
        v7 = v4;
        v8 = *(v3 + 8);
        if ((v4 & 0x80000000) != 0 || v4 >= v8)
        {
          IOSArray_throwOutOfBoundsWithMsg(v8, v4);
        }

        v9 = *(v3 + 12 + 4 * v4);
        while (v5 >= a2)
        {
          v10 = *(v3 + 8);
          if ((v5 & 0x80000000) != 0 || v5 >= v10)
          {
            IOSArray_throwOutOfBoundsWithMsg(v10, v5);
          }

          v11 = *(v3 + 12 + 4 * v5);
          if (v9 >= v11)
          {
            break;
          }

          v12 = *(v3 + 8);
          if ((v5 & 0x80000000) != 0 || v5 >= v12)
          {
            IOSArray_throwOutOfBoundsWithMsg(v12, v5);
          }

          v13 = v5 + 1;
          if (v5 + 1 < 0 || v13 >= v12)
          {
            IOSArray_throwOutOfBoundsWithMsg(v12, v13);
          }

          *(v3 + 12 + 4 * v13) = v11;
          v5 = (v5 - 1);
        }

        result = *(v3 + 8);
        v14 = v5 + 1;
        if (v5 + 1 < 0 || v14 >= result)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, v14);
        }

        *(v3 + 12 + 4 * v14) = v9;
        v4 = (v7 + 1);
        v5 = v6;
      }

      while (v4 <= a3);
    }
  }

  return result;
}

uint64_t sub_100192D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v4 = (a3 - a2 + 1) / 6;
  v5 = v4 + a2;
  v6 = (a3 + a2) >> 1;
  v7 = (v6 - v4);
  v8 = *(a1 + 8);
  v103 = (v4 + a2);
  if (v4 + a2 < 0 || v5 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, v103);
  }

  v9 = v4 + ((a3 + a2) >> 1);
  v10 = *(a1 + 12 + 4 * v5);
  if ((v7 & 0x80000000) != 0 || v7 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, (v6 - v4));
  }

  v11 = a3 - v4;
  v12 = *(a1 + 12 + 4 * v7);
  v102 = (a3 - v4);
  if (v6 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, v6);
  }

  v13 = *(a1 + 12 + 4 * v6);
  if ((v9 & 0x80000000) != 0 || v9 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, v9);
  }

  v14 = *(a1 + 12 + 4 * v9);
  if (v11 < 0 || v11 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, v102);
  }

  v15 = *(a1 + 12 + 4 * v11);
  if (v10 <= v12)
  {
    v16 = *(a1 + 12 + 4 * v7);
  }

  else
  {
    v16 = *(a1 + 12 + 4 * v5);
  }

  if (v10 <= v12)
  {
    v17 = *(a1 + 12 + 4 * v5);
  }

  else
  {
    v17 = *(a1 + 12 + 4 * v7);
  }

  if (v14 <= v15)
  {
    v18 = *(a1 + 12 + 4 * v11);
  }

  else
  {
    v18 = *(a1 + 12 + 4 * v9);
  }

  if (v14 <= v15)
  {
    v15 = *(a1 + 12 + 4 * v9);
  }

  if (v17 <= v13)
  {
    v19 = *(a1 + 12 + 4 * v6);
  }

  else
  {
    v19 = v17;
  }

  if (v17 > v13)
  {
    v17 = *(a1 + 12 + 4 * v6);
  }

  if (v16 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v16;
  }

  if (v16 > v19)
  {
    v16 = v19;
  }

  if (v17 <= v15)
  {
    v21 = v15;
  }

  else
  {
    v21 = v17;
  }

  if (v17 <= v15)
  {
    v22 = v17;
  }

  else
  {
    v22 = v15;
  }

  if (v20 <= v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = v20;
  }

  if (v20 <= v21)
  {
    v24 = v20;
  }

  else
  {
    v24 = v21;
  }

  if (v16 <= v18)
  {
    v25 = v18;
  }

  else
  {
    v25 = v16;
  }

  if (v16 > v18)
  {
    v16 = v18;
  }

  if (v16 <= v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = v16;
  }

  if (v16 <= v24)
  {
    v27 = v16;
  }

  else
  {
    v27 = v24;
  }

  if (v23 <= v25)
  {
    v28 = v25;
  }

  else
  {
    v28 = v23;
  }

  if (v23 <= v25)
  {
    v29 = v23;
  }

  else
  {
    v29 = v25;
  }

  if (v5 < 0 || v5 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, v103);
  }

  *(a1 + 12 + 4 * v5) = v22;
  v30 = *(a1 + 8);
  if (v6 >= v30)
  {
    IOSArray_throwOutOfBoundsWithMsg(v30, v6);
  }

  *(a1 + 12 + 4 * v6) = v26;
  v31 = *(a1 + 8);
  if (v11 < 0 || v11 >= v31)
  {
    IOSArray_throwOutOfBoundsWithMsg(v31, v102);
  }

  *(a1 + 12 + 4 * v11) = v28;
  v32 = *(a1 + 8);
  if ((a2 & 0x80000000) != 0 || v32 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v32, a2);
  }

  if ((v7 & 0x80000000) != 0 || v7 >= v32)
  {
    IOSArray_throwOutOfBoundsWithMsg(v32, v7);
  }

  *(a1 + 12 + 4 * v7) = *(a1 + 12 + 4 * a2);
  v33 = *(a1 + 8);
  if ((a3 & 0x80000000) != 0 || v33 <= a3)
  {
    IOSArray_throwOutOfBoundsWithMsg(v33, a3);
  }

  if ((v9 & 0x80000000) != 0 || v9 >= v33)
  {
    IOSArray_throwOutOfBoundsWithMsg(v33, v9);
  }

  *(a1 + 12 + 4 * v9) = *(a1 + 12 + 4 * a3);
  v34 = a2 + 1;
  v35 = (a3 - 1);
  if (v27 == v29)
  {
    if (v34 <= v35)
    {
      v39 = (a2 + 1);
      do
      {
        v71 = v34;
        v72 = *(a1 + 8);
        if (v34 < 0 || v34 >= v72)
        {
          IOSArray_throwOutOfBoundsWithMsg(v72, v34);
        }

        v73 = *(a1 + 12 + 4 * v34);
        if (v73 != v27)
        {
          if (v73 >= v27)
          {
            do
            {
              v76 = v35;
              v77 = *(a1 + 8);
              if ((v35 & 0x80000000) != 0 || v35 >= v77)
              {
                IOSArray_throwOutOfBoundsWithMsg(v77, v35);
              }

              v78 = *(a1 + 12 + 4 * v35);
              v35 = (v35 - 1);
            }

            while (v78 > v27);
            v79 = *(a1 + 8);
            v80 = v35 + 1;
            if ((v76 & 0x80000000) != 0 || v80 >= v79)
            {
              IOSArray_throwOutOfBoundsWithMsg(v79, (v35 + 1));
            }

            if (v78 >= v27)
            {
              v84 = *(a1 + 8);
              if (v34 < 0 || v34 >= v84)
              {
                IOSArray_throwOutOfBoundsWithMsg(v84, v34);
              }

              *(a1 + 12 + 4 * v34) = v27;
              v85 = *(a1 + 8);
              if ((v76 & 0x80000000) != 0 || v80 >= v85)
              {
                IOSArray_throwOutOfBoundsWithMsg(v85, (v35 + 1));
              }
            }

            else
            {
              v81 = *(a1 + 8);
              if ((v39 & 0x80000000) != 0 || v39 >= v81)
              {
                IOSArray_throwOutOfBoundsWithMsg(v81, v39);
              }

              if (v34 < 0 || v34 >= v81)
              {
                IOSArray_throwOutOfBoundsWithMsg(v81, v34);
              }

              *(a1 + 12 + 4 * v34) = *(a1 + 12 + 4 * v39);
              v82 = *(a1 + 8);
              if ((v76 & 0x80000000) != 0 || v80 >= v82)
              {
                IOSArray_throwOutOfBoundsWithMsg(v82, (v35 + 1));
              }

              if ((v39 & 0x80000000) != 0 || v39 >= v82)
              {
                IOSArray_throwOutOfBoundsWithMsg(v82, v39);
              }

              *(a1 + 12 + 4 * v39) = *(a1 + 12 + 4 * v76);
              v83 = *(a1 + 8);
              if ((v76 & 0x80000000) != 0 || v80 >= v83)
              {
                IOSArray_throwOutOfBoundsWithMsg(v83, (v35 + 1));
              }

              v39 = (v39 + 1);
            }

            *(a1 + 12 + 4 * v76) = v73;
          }

          else
          {
            if (v34 != v39)
            {
              v74 = *(a1 + 8);
              if ((v39 & 0x80000000) != 0 || v39 >= v74)
              {
                IOSArray_throwOutOfBoundsWithMsg(v74, v39);
              }

              if (v34 < 0 || v34 >= v74)
              {
                IOSArray_throwOutOfBoundsWithMsg(v74, v34);
              }

              *(a1 + 12 + 4 * v34) = *(a1 + 12 + 4 * v39);
              v75 = *(a1 + 8);
              if ((v39 & 0x80000000) != 0 || v39 >= v75)
              {
                IOSArray_throwOutOfBoundsWithMsg(v75, v39);
              }

              *(a1 + 12 + 4 * v39) = v73;
            }

            v39 = (v39 + 1);
          }
        }

        ++v34;
        v38 = v35;
      }

      while (v71 + 1 <= v35);
      goto LABEL_134;
    }

LABEL_133:
    v39 = (a2 + 1);
    v38 = (a3 - 1);
    goto LABEL_134;
  }

  if (v34 > v35)
  {
    goto LABEL_133;
  }

  v36 = a2;
  v37 = a2 + 1;
  v38 = (a3 - 1);
  v39 = (a2 + 1);
  do
  {
    v40 = v37;
    v41 = *(a1 + 8);
    if (v37 < 0 || v37 >= v41)
    {
      IOSArray_throwOutOfBoundsWithMsg(v41, v37);
    }

    v42 = *(a1 + 12 + 4 * v37);
    if (v42 >= v27)
    {
      if (v42 > v29)
      {
        while (1)
        {
          v45 = v38;
          v46 = *(a1 + 8);
          if ((v38 & 0x80000000) != 0 || v38 >= v46)
          {
            IOSArray_throwOutOfBoundsWithMsg(v46, v38);
          }

          v47 = *(a1 + 12 + 4 * v38);
          if (v47 <= v29)
          {
            break;
          }

          v38 = (v38 - 1);
          if (v36 == v38)
          {
            goto LABEL_134;
          }
        }

        v48 = *(a1 + 8);
        if ((v38 & 0x80000000) != 0 || v38 >= v48)
        {
          IOSArray_throwOutOfBoundsWithMsg(v48, v38);
        }

        if (v47 >= v27)
        {
          v52 = *(a1 + 8);
          if ((v38 & 0x80000000) != 0 || v38 >= v52)
          {
            IOSArray_throwOutOfBoundsWithMsg(v52, v38);
          }

          if (v37 < 0 || v37 >= v52)
          {
            v54 = *(a1 + 12 + 4 * v38);
            IOSArray_throwOutOfBoundsWithMsg(v52, v37);
          }

          *(a1 + 12 + 4 * v37) = v47;
          v53 = *(a1 + 8);
          if ((v38 & 0x80000000) != 0 || v38 >= v53)
          {
            IOSArray_throwOutOfBoundsWithMsg(v53, v38);
          }
        }

        else
        {
          v49 = *(a1 + 8);
          if ((v39 & 0x80000000) != 0 || v39 >= v49)
          {
            IOSArray_throwOutOfBoundsWithMsg(v49, v39);
          }

          if (v37 < 0 || v37 >= v49)
          {
            IOSArray_throwOutOfBoundsWithMsg(v49, v37);
          }

          *(a1 + 12 + 4 * v37) = *(a1 + 12 + 4 * v39);
          v50 = *(a1 + 8);
          if ((v38 & 0x80000000) != 0 || v38 >= v50)
          {
            IOSArray_throwOutOfBoundsWithMsg(v50, v38);
          }

          if ((v39 & 0x80000000) != 0 || v39 >= v50)
          {
            IOSArray_throwOutOfBoundsWithMsg(v50, v39);
          }

          *(a1 + 12 + 4 * v39) = *(a1 + 12 + 4 * v38);
          v51 = *(a1 + 8);
          if ((v38 & 0x80000000) != 0 || v38 >= v51)
          {
            IOSArray_throwOutOfBoundsWithMsg(v51, v38);
          }

          v39 = (v39 + 1);
        }

        v38 = (v38 - 1);
        *(a1 + 12 + 4 * v45) = v42;
      }
    }

    else
    {
      if (v37 != v39)
      {
        v43 = *(a1 + 8);
        if ((v39 & 0x80000000) != 0 || v39 >= v43)
        {
          IOSArray_throwOutOfBoundsWithMsg(v43, v39);
        }

        if (v37 < 0 || v37 >= v43)
        {
          IOSArray_throwOutOfBoundsWithMsg(v43, v37);
        }

        *(a1 + 12 + 4 * v37) = *(a1 + 12 + 4 * v39);
        v44 = *(a1 + 8);
        if ((v39 & 0x80000000) != 0 || v39 >= v44)
        {
          IOSArray_throwOutOfBoundsWithMsg(v44, v39);
        }

        *(a1 + 12 + 4 * v39) = v42;
      }

      v39 = (v39 + 1);
    }

    ++v37;
    ++v36;
  }

  while (v40 + 1 <= v38);
LABEL_134:
  v55 = *(a1 + 8);
  v56 = v39 - 1;
  v57 = v39 - 1;
  if (v39 - 1 < 0 || v56 >= v55)
  {
    IOSArray_throwOutOfBoundsWithMsg(v55, v56);
  }

  if ((a2 & 0x80000000) != 0 || v55 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v55, a2);
  }

  *(a1 + 12 + 4 * a2) = *(a1 + 12 + 4 * v57);
  v58 = *(a1 + 8);
  if ((v57 & 0x80000000) != 0 || v57 >= v58)
  {
    IOSArray_throwOutOfBoundsWithMsg(v58, v57);
  }

  *(a1 + 12 + 4 * v57) = v27;
  v59 = *(a1 + 8);
  v60 = v38 + 1;
  v61 = v38 + 1;
  if (v38 + 1 < 0 || v60 >= v59)
  {
    IOSArray_throwOutOfBoundsWithMsg(v59, v60);
  }

  if ((a3 & 0x80000000) != 0 || v59 <= a3)
  {
    IOSArray_throwOutOfBoundsWithMsg(v59, a3);
  }

  *(a1 + 12 + 4 * a3) = *(a1 + 12 + 4 * v61);
  v62 = *(a1 + 8);
  if ((v61 & 0x80000000) != 0 || v61 >= v62)
  {
    IOSArray_throwOutOfBoundsWithMsg(v62, v61);
  }

  *(a1 + 12 + 4 * v61) = v29;
  sub_100192B7C(a1, a2, (v39 - 2));
  result = sub_100192B7C(a1, (v38 + 2), a3);
  if (v27 != v29)
  {
    if (v39 >= v103 || v38 <= v102)
    {
      v66 = v38;
LABEL_163:

      return sub_100192B7C(a1, v39, v66);
    }

    do
    {
      v64 = *(a1 + 8);
      if ((v39 & 0x80000000) != 0 || v39 >= v64)
      {
        IOSArray_throwOutOfBoundsWithMsg(v64, v39);
      }

      v65 = *(a1 + 12 + 4 * v39);
      LODWORD(v39) = v39 + 1;
    }

    while (v65 == v27);
    v67 = v39 - 2;
    v68 = v39 - 1;
    do
    {
      v69 = *(a1 + 8);
      if ((v38 & 0x80000000) != 0 || v38 >= v69)
      {
        IOSArray_throwOutOfBoundsWithMsg(v69, v38);
      }

      v70 = *(a1 + 12 + 4 * v38);
      LODWORD(v38) = v38 - 1;
    }

    while (v70 == v29);
    v66 = (v38 + 1);
    if (v68 > v66)
    {
      v39 = (v39 - 1);
      goto LABEL_163;
    }

    v39 = (v39 - 1);
    while (1)
    {
      v86 = v68;
      v87 = *(a1 + 8);
      if (v68 < 0 || v68 >= v87)
      {
        IOSArray_throwOutOfBoundsWithMsg(v87, v68);
      }

      v88 = *(a1 + 12 + 4 * v68);
      if (v88 == v29)
      {
        break;
      }

      if (v88 == v27)
      {
        v92 = *(a1 + 8);
        if ((v39 & 0x80000000) != 0 || v39 >= v92)
        {
          IOSArray_throwOutOfBoundsWithMsg(v92, v39);
        }

        v89 = v39;
        if ((v86 & 0x80000000) != 0 || v86 >= v92)
        {
          IOSArray_throwOutOfBoundsWithMsg(v92, v86);
        }

        *(a1 + 12 + 4 * v86) = *(a1 + 12 + 4 * v39);
        v93 = (v39 + 1);
        v94 = *(a1 + 8);
        if ((v39 & 0x80000000) != 0 || v39 >= v94)
        {
          IOSArray_throwOutOfBoundsWithMsg(v94, v39);
        }

        v95 = v27;
LABEL_254:
        *(a1 + 12 + 4 * v89) = v95;
        v39 = v93;
      }

      v68 = v86 + 1;
      ++v67;
      if (v86 + 1 > v66)
      {
        goto LABEL_163;
      }
    }

    while (1)
    {
      v89 = v66;
      v90 = *(a1 + 8);
      if ((v66 & 0x80000000) != 0 || v66 >= v90)
      {
        IOSArray_throwOutOfBoundsWithMsg(v90, v66);
      }

      v91 = *(a1 + 12 + 4 * v66);
      if (v91 != v29)
      {
        break;
      }

      v66 = (v66 - 1);
      if (v67 == v66)
      {
        goto LABEL_163;
      }
    }

    v96 = *(a1 + 8);
    if ((v66 & 0x80000000) != 0 || v66 >= v96)
    {
      IOSArray_throwOutOfBoundsWithMsg(v96, v66);
    }

    if (v91 == v27)
    {
      v97 = *(a1 + 8);
      if ((v39 & 0x80000000) != 0 || v39 >= v97)
      {
        IOSArray_throwOutOfBoundsWithMsg(v97, v39);
      }

      v98 = v39;
      if ((v86 & 0x80000000) != 0 || v86 >= v97)
      {
        IOSArray_throwOutOfBoundsWithMsg(v97, v86);
      }

      *(a1 + 12 + 4 * v86) = *(a1 + 12 + 4 * v39);
      v93 = (v39 + 1);
      v99 = *(a1 + 8);
      if ((v39 & 0x80000000) != 0 || v39 >= v99)
      {
        IOSArray_throwOutOfBoundsWithMsg(v99, v39);
      }

      v91 = v27;
    }

    else
    {
      v100 = *(a1 + 8);
      if ((v66 & 0x80000000) != 0 || v66 >= v100)
      {
        IOSArray_throwOutOfBoundsWithMsg(v100, v66);
      }

      if ((v86 & 0x80000000) != 0 || v86 >= v100)
      {
        IOSArray_throwOutOfBoundsWithMsg(v100, v86);
      }

      v98 = v86;
      v93 = v39;
    }

    *(a1 + 12 + 4 * v98) = v91;
    v66 = (v89 - 1);
    v101 = *(a1 + 8);
    if ((v89 & 0x80000000) != 0 || v89 >= v101)
    {
      IOSArray_throwOutOfBoundsWithMsg(v101, v89);
    }

    v95 = v29;
    goto LABEL_254;
  }

  return result;
}

uint64_t JavaUtilDualPivotQuicksort_sortWithDoubleArray_(uint64_t a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v2 = (*(a1 + 8) - 1);

  return sub_100194100(a1, 0, v2);
}

uint64_t JavaUtilDualPivotQuicksort_sortWithDoubleArray_withInt_withInt_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v8 = a3;
  JavaUtilArrays_checkStartAndEndWithInt_withInt_withInt_(*(a1 + 8), a2, a3, a4, a5, a6, a7, a8);

  return sub_100194100(a1, a2, (v8 - 1));
}

uint64_t sub_100194100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = JavaLangDouble_doubleToLongBitsWithDouble_(-0.0);
  if (a2 <= a3)
  {
    if (!a1)
    {
      JreThrowNullPointerException();
    }

    v8 = v6;
    v9 = 0;
    v10 = a2;
    do
    {
      v11 = *(a1 + 8);
      if ((v10 & 0x80000000) != 0 || v10 >= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, v10);
      }

      if (*(a1 + 16 + 8 * v10) == 0.0 && v8 == JavaLangDouble_doubleToRawLongBitsWithDouble_(*(a1 + 16 + 8 * v10)))
      {
        v12 = *(a1 + 8);
        if ((v10 & 0x80000000) != 0 || v10 >= v12)
        {
          IOSArray_throwOutOfBoundsWithMsg(v12, v10);
        }

        *(a1 + 16 + 8 * v10) = 0;
        ++v9;
      }

      v10 = (v10 + 1);
    }

    while (v10 <= a3);
    result = sub_10019447C(a1, a2, a3);
    if (v9)
    {
      result = sub_1001943C4(a1, a2, a3);
      LODWORD(a3) = result;
      do
      {
        v13 = a3;
        a3 = (a3 - 1);
        if (a3 < a2)
        {
          break;
        }

        result = *(a1 + 8);
        if ((a3 & 0x80000000) != 0 || a3 >= result)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, a3);
        }
      }

      while (*(a1 + 16 + 8 * a3) == 0.0);
      if (v13 < v9 + v13)
      {
        v14 = v13;
        v15 = a1 + 8 * v13;
        do
        {
          result = *(a1 + 8);
          if (v14 < 0 || v14 >= result)
          {
            IOSArray_throwOutOfBoundsWithMsg(result, v14);
          }

          *(v15 + 16) = 0x8000000000000000;
          ++v14;
          v15 += 8;
          --v9;
        }

        while (v9);
      }
    }
  }

  else
  {

    return sub_10019447C(a1, a2, a3);
  }

  return result;
}

uint64_t sub_1001943C4(uint64_t a1, int a2, int a3)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v3 = a3;
  v4 = a2;
  for (i = a2 + a3; ; i = v4 + v3)
  {
    v7 = i >> 1;
    v8 = *(a1 + 8);
    if (v7 >= v8)
    {
      IOSArray_throwOutOfBoundsWithMsg(v8, i >> 1);
    }

    v9 = *(a1 + 16 + 8 * v7);
    if (v9 < 0.0)
    {
      v4 = v7 + 1;
      continue;
    }

    if (v9 <= 0.0)
    {
      break;
    }

    v3 = v7 - 1;
  }

  return i >> 1;
}

uint64_t sub_10019447C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (a3 - a2 + 1 > 31)
  {

    return sub_100194670(result, a2, a3);
  }

  else
  {
    v4 = (a2 + 1);
    if (v4 <= a3)
    {
      if (!result)
      {
        JreThrowNullPointerException();
      }

      v5 = a2;
      do
      {
        v6 = v4;
        v7 = v4;
        v8 = *(v3 + 8);
        if ((v4 & 0x80000000) != 0 || v4 >= v8)
        {
          IOSArray_throwOutOfBoundsWithMsg(v8, v4);
        }

        v9 = *(v3 + 16 + 8 * v4);
        while (v5 >= a2)
        {
          v10 = *(v3 + 8);
          if ((v5 & 0x80000000) != 0 || v5 >= v10)
          {
            IOSArray_throwOutOfBoundsWithMsg(v10, v5);
          }

          v11 = *(v3 + 16 + 8 * v5);
          if (v9 >= v11)
          {
            break;
          }

          v12 = *(v3 + 8);
          if ((v5 & 0x80000000) != 0 || v5 >= v12)
          {
            IOSArray_throwOutOfBoundsWithMsg(v12, v5);
          }

          v13 = v5 + 1;
          if (v5 + 1 < 0 || v13 >= v12)
          {
            IOSArray_throwOutOfBoundsWithMsg(v12, v13);
          }

          *(v3 + 16 + 8 * v13) = v11;
          v5 = (v5 - 1);
        }

        result = *(v3 + 8);
        v14 = v5 + 1;
        if (v5 + 1 < 0 || v14 >= result)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, v14);
        }

        *(v3 + 16 + 8 * v14) = v9;
        v4 = (v7 + 1);
        v5 = v6;
      }

      while (v4 <= a3);
    }
  }

  return result;
}

uint64_t sub_100194670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v5 = (a3 - a2 + 1) / 6;
  v6 = v5 + a2;
  v7 = (a3 + a2) >> 1;
  v8 = v7 - v5;
  v9 = *(a1 + 8);
  if (v5 + a2 < 0 || v6 >= v9)
  {
    IOSArray_throwOutOfBoundsWithMsg(v9, (v5 + a2));
  }

  v10 = v5 + ((a3 + a2) >> 1);
  v11 = *(a1 + 16 + 8 * v6);
  if (v8 < 0 || v8 >= v9)
  {
    IOSArray_throwOutOfBoundsWithMsg(v9, (v7 - v5));
  }

  v12 = a3 - v5;
  v13 = *(a1 + 16 + 8 * v8);
  if (v7 >= v9)
  {
    IOSArray_throwOutOfBoundsWithMsg(v9, v7);
  }

  v14 = *(a1 + 16 + 8 * v7);
  if ((v10 & 0x80000000) != 0 || v10 >= v9)
  {
    IOSArray_throwOutOfBoundsWithMsg(v9, v10);
  }

  v15 = *(a1 + 16 + 8 * v10);
  if (v12 < 0 || v12 >= v9)
  {
    IOSArray_throwOutOfBoundsWithMsg(v9, (a3 - v5));
  }

  v16 = *(a1 + 16 + 8 * v12);
  if (v11 <= v13)
  {
    v17 = *(a1 + 16 + 8 * v8);
  }

  else
  {
    v17 = *(a1 + 16 + 8 * v6);
  }

  if (v11 <= v13)
  {
    v18 = *(a1 + 16 + 8 * v6);
  }

  else
  {
    v18 = *(a1 + 16 + 8 * v8);
  }

  if (v15 <= v16)
  {
    v19 = *(a1 + 16 + 8 * v12);
  }

  else
  {
    v19 = *(a1 + 16 + 8 * v10);
  }

  if (v15 <= v16)
  {
    v16 = *(a1 + 16 + 8 * v10);
  }

  if (v18 <= v14)
  {
    v20 = *(a1 + 16 + 8 * v7);
  }

  else
  {
    v20 = v18;
  }

  if (v18 > v14)
  {
    v18 = *(a1 + 16 + 8 * v7);
  }

  if (v17 <= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = v17;
  }

  if (v17 > v20)
  {
    v17 = v20;
  }

  if (v18 <= v16)
  {
    v22 = v16;
  }

  else
  {
    v22 = v18;
  }

  if (v18 <= v16)
  {
    v23 = v18;
  }

  else
  {
    v23 = v16;
  }

  if (v21 <= v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = v21;
  }

  if (v21 <= v22)
  {
    v25 = v21;
  }

  else
  {
    v25 = v22;
  }

  if (v17 <= v19)
  {
    v26 = v19;
  }

  else
  {
    v26 = v17;
  }

  if (v17 > v19)
  {
    v17 = v19;
  }

  if (v17 <= v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = v17;
  }

  if (v17 <= v25)
  {
    v28 = v17;
  }

  else
  {
    v28 = v25;
  }

  if (v24 <= v26)
  {
    v29 = v26;
  }

  else
  {
    v29 = v24;
  }

  if (v24 <= v26)
  {
    v30 = v24;
  }

  else
  {
    v30 = v26;
  }

  if (v6 < 0 || v6 >= v9)
  {
    IOSArray_throwOutOfBoundsWithMsg(v9, (v5 + a2));
  }

  *(a1 + 16 + 8 * v6) = v23;
  v31 = *(a1 + 8);
  if (v7 >= v31)
  {
    IOSArray_throwOutOfBoundsWithMsg(v31, v7);
  }

  *(a1 + 16 + 8 * v7) = v27;
  v32 = *(a1 + 8);
  if (v12 < 0 || v12 >= v32)
  {
    IOSArray_throwOutOfBoundsWithMsg(v32, (a3 - v5));
  }

  *(a1 + 16 + 8 * v12) = v29;
  v33 = *(a1 + 8);
  if ((a2 & 0x80000000) != 0 || v33 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v33, a2);
  }

  if (v8 < 0 || v8 >= v33)
  {
    IOSArray_throwOutOfBoundsWithMsg(v33, (v7 - v5));
  }

  *(a1 + 16 + 8 * v8) = *(a1 + 16 + 8 * a2);
  v34 = *(a1 + 8);
  if ((a3 & 0x80000000) != 0 || v34 <= a3)
  {
    IOSArray_throwOutOfBoundsWithMsg(v34, a3);
  }

  if ((v10 & 0x80000000) != 0 || v10 >= v34)
  {
    IOSArray_throwOutOfBoundsWithMsg(v34, v10);
  }

  *(a1 + 16 + 8 * v10) = *(a1 + 16 + 8 * a3);
  v35 = a2 + 1;
  v36 = (a3 - 1);
  v103 = v12;
  v104 = v6;
  if (v28 == v30)
  {
    if (v35 <= v36)
    {
      v72 = (a2 + 1);
      do
      {
        v73 = *(a1 + 8);
        if (v35 < 0 || v35 >= v73)
        {
          IOSArray_throwOutOfBoundsWithMsg(v73, v35);
        }

        v74 = *(a1 + 16 + 8 * v35);
        if (v74 != v28)
        {
          if (v74 >= v28)
          {
            do
            {
              v77 = v36;
              v78 = *(a1 + 8);
              if ((v36 & 0x80000000) != 0 || v36 >= v78)
              {
                IOSArray_throwOutOfBoundsWithMsg(v78, v36);
              }

              v79 = *(a1 + 16 + 8 * v36);
              v36 = (v36 - 1);
            }

            while (v79 > v28);
            v80 = *(a1 + 8);
            v81 = v36 + 1;
            if ((v77 & 0x80000000) != 0 || v81 >= v80)
            {
              IOSArray_throwOutOfBoundsWithMsg(v80, (v36 + 1));
            }

            if (v79 >= v28)
            {
              v85 = *(a1 + 8);
              if (v35 < 0 || v35 >= v85)
              {
                IOSArray_throwOutOfBoundsWithMsg(v85, v35);
              }

              *(a1 + 16 + 8 * v35) = v28;
              v86 = *(a1 + 8);
              if ((v77 & 0x80000000) != 0 || v81 >= v86)
              {
                IOSArray_throwOutOfBoundsWithMsg(v86, (v36 + 1));
              }
            }

            else
            {
              v82 = *(a1 + 8);
              if ((v72 & 0x80000000) != 0 || v72 >= v82)
              {
                IOSArray_throwOutOfBoundsWithMsg(v82, v72);
              }

              if (v35 < 0 || v35 >= v82)
              {
                IOSArray_throwOutOfBoundsWithMsg(v82, v35);
              }

              *(a1 + 16 + 8 * v35) = *(a1 + 16 + 8 * v72);
              v83 = *(a1 + 8);
              if ((v77 & 0x80000000) != 0 || v81 >= v83)
              {
                IOSArray_throwOutOfBoundsWithMsg(v83, (v36 + 1));
              }

              if ((v72 & 0x80000000) != 0 || v72 >= v83)
              {
                IOSArray_throwOutOfBoundsWithMsg(v83, v72);
              }

              *(a1 + 16 + 8 * v72) = *(a1 + 16 + 8 * v77);
              v84 = *(a1 + 8);
              if ((v77 & 0x80000000) != 0 || v81 >= v84)
              {
                IOSArray_throwOutOfBoundsWithMsg(v84, (v36 + 1));
              }

              v72 = (v72 + 1);
            }

            *(a1 + 16 + 8 * v77) = v74;
          }

          else
          {
            if (v35 != v72)
            {
              v75 = *(a1 + 8);
              if ((v72 & 0x80000000) != 0 || v72 >= v75)
              {
                IOSArray_throwOutOfBoundsWithMsg(v75, v72);
              }

              if (v35 < 0 || v35 >= v75)
              {
                IOSArray_throwOutOfBoundsWithMsg(v75, v35);
              }

              *(a1 + 16 + 8 * v35) = *(a1 + 16 + 8 * v72);
              v76 = *(a1 + 8);
              if ((v72 & 0x80000000) != 0 || v72 >= v76)
              {
                IOSArray_throwOutOfBoundsWithMsg(v76, v72);
              }

              *(a1 + 16 + 8 * v72) = v74;
            }

            v72 = (v72 + 1);
          }
        }

        ++v35;
        v40 = v72;
        v39 = v36;
      }

      while (v35 <= v36);
      goto LABEL_134;
    }

LABEL_133:
    v40 = (a2 + 1);
    v39 = (a3 - 1);
    goto LABEL_134;
  }

  if (v35 > v36)
  {
    goto LABEL_133;
  }

  v37 = a2;
  v38 = a2 + 1;
  v39 = (a3 - 1);
  v40 = (a2 + 1);
  do
  {
    v41 = v38;
    v42 = *(a1 + 8);
    if (v38 < 0 || v38 >= v42)
    {
      IOSArray_throwOutOfBoundsWithMsg(v42, v38);
    }

    v43 = *(a1 + 16 + 8 * v38);
    if (v43 >= v28)
    {
      if (v43 > v30)
      {
        while (1)
        {
          v46 = v39;
          v47 = *(a1 + 8);
          if ((v39 & 0x80000000) != 0 || v39 >= v47)
          {
            IOSArray_throwOutOfBoundsWithMsg(v47, v39);
          }

          v48 = *(a1 + 16 + 8 * v39);
          if (v48 <= v30)
          {
            break;
          }

          v39 = (v39 - 1);
          if (v37 == v39)
          {
            goto LABEL_134;
          }
        }

        v49 = *(a1 + 8);
        if ((v39 & 0x80000000) != 0 || v39 >= v49)
        {
          IOSArray_throwOutOfBoundsWithMsg(v49, v39);
        }

        if (v48 >= v28)
        {
          v53 = *(a1 + 8);
          if ((v39 & 0x80000000) != 0 || v39 >= v53)
          {
            IOSArray_throwOutOfBoundsWithMsg(v53, v39);
          }

          if (v38 < 0 || v38 >= v53)
          {
            v55 = *(a1 + 16 + 8 * v39);
            IOSArray_throwOutOfBoundsWithMsg(v53, v38);
          }

          *(a1 + 16 + 8 * v38) = v48;
          v54 = *(a1 + 8);
          if ((v39 & 0x80000000) != 0 || v39 >= v54)
          {
            IOSArray_throwOutOfBoundsWithMsg(v54, v39);
          }
        }

        else
        {
          v50 = *(a1 + 8);
          if ((v40 & 0x80000000) != 0 || v40 >= v50)
          {
            IOSArray_throwOutOfBoundsWithMsg(v50, v40);
          }

          if (v38 < 0 || v38 >= v50)
          {
            IOSArray_throwOutOfBoundsWithMsg(v50, v38);
          }

          *(a1 + 16 + 8 * v38) = *(a1 + 16 + 8 * v40);
          v51 = *(a1 + 8);
          if ((v39 & 0x80000000) != 0 || v39 >= v51)
          {
            IOSArray_throwOutOfBoundsWithMsg(v51, v39);
          }

          if ((v40 & 0x80000000) != 0 || v40 >= v51)
          {
            IOSArray_throwOutOfBoundsWithMsg(v51, v40);
          }

          *(a1 + 16 + 8 * v40) = *(a1 + 16 + 8 * v39);
          v52 = *(a1 + 8);
          if ((v39 & 0x80000000) != 0 || v39 >= v52)
          {
            IOSArray_throwOutOfBoundsWithMsg(v52, v39);
          }

          v40 = (v40 + 1);
        }

        v39 = (v39 - 1);
        *(a1 + 16 + 8 * v46) = v43;
      }
    }

    else
    {
      if (v38 != v40)
      {
        v44 = *(a1 + 8);
        if ((v40 & 0x80000000) != 0 || v40 >= v44)
        {
          IOSArray_throwOutOfBoundsWithMsg(v44, v40);
        }

        if (v38 < 0 || v38 >= v44)
        {
          IOSArray_throwOutOfBoundsWithMsg(v44, v38);
        }

        *(a1 + 16 + 8 * v38) = *(a1 + 16 + 8 * v40);
        v45 = *(a1 + 8);
        if ((v40 & 0x80000000) != 0 || v40 >= v45)
        {
          IOSArray_throwOutOfBoundsWithMsg(v45, v40);
        }

        *(a1 + 16 + 8 * v40) = v43;
      }

      v40 = (v40 + 1);
    }

    ++v38;
    ++v37;
  }

  while (v41 + 1 <= v39);
LABEL_134:
  v56 = *(a1 + 8);
  v57 = v40 - 1;
  v58 = v40 - 1;
  if (v40 - 1 < 0 || v57 >= v56)
  {
    IOSArray_throwOutOfBoundsWithMsg(v56, v57);
  }

  if ((a2 & 0x80000000) != 0 || v56 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v56, a2);
  }

  *(a1 + 16 + 8 * a2) = *(a1 + 16 + 8 * v58);
  v59 = *(a1 + 8);
  if ((v58 & 0x80000000) != 0 || v58 >= v59)
  {
    IOSArray_throwOutOfBoundsWithMsg(v59, v58);
  }

  *(a1 + 16 + 8 * v58) = v28;
  v60 = *(a1 + 8);
  v61 = v39 + 1;
  v62 = v39 + 1;
  if (v39 + 1 < 0 || v61 >= v60)
  {
    IOSArray_throwOutOfBoundsWithMsg(v60, v61);
  }

  if ((a3 & 0x80000000) != 0 || v60 <= a3)
  {
    IOSArray_throwOutOfBoundsWithMsg(v60, a3);
  }

  *(a1 + 16 + 8 * a3) = *(a1 + 16 + 8 * v62);
  v63 = *(a1 + 8);
  if ((v62 & 0x80000000) != 0 || v62 >= v63)
  {
    IOSArray_throwOutOfBoundsWithMsg(v63, v62);
  }

  *(a1 + 16 + 8 * v62) = v30;
  sub_10019447C(a1, a2, (v40 - 2));
  result = sub_10019447C(a1, (v39 + 2), a3);
  if (v28 != v30)
  {
    if (v40 >= v104 || v39 <= v103)
    {
      v67 = v39;
LABEL_163:

      return sub_10019447C(a1, v40, v67);
    }

    do
    {
      v65 = *(a1 + 8);
      if ((v40 & 0x80000000) != 0 || v40 >= v65)
      {
        IOSArray_throwOutOfBoundsWithMsg(v65, v40);
      }

      v66 = *(a1 + 16 + 8 * v40);
      LODWORD(v40) = v40 + 1;
    }

    while (v66 == v28);
    v68 = v40 - 2;
    v69 = v40 - 1;
    do
    {
      v70 = *(a1 + 8);
      if ((v39 & 0x80000000) != 0 || v39 >= v70)
      {
        IOSArray_throwOutOfBoundsWithMsg(v70, v39);
      }

      v71 = *(a1 + 16 + 8 * v39);
      LODWORD(v39) = v39 - 1;
    }

    while (v71 == v30);
    v67 = (v39 + 1);
    if (v69 > v67)
    {
      v40 = (v40 - 1);
      goto LABEL_163;
    }

    v40 = (v40 - 1);
    while (1)
    {
      v87 = v69;
      v88 = *(a1 + 8);
      if (v69 < 0 || v69 >= v88)
      {
        IOSArray_throwOutOfBoundsWithMsg(v88, v69);
      }

      v89 = *(a1 + 16 + 8 * v69);
      if (v89 == v30)
      {
        break;
      }

      if (v89 == v28)
      {
        v93 = *(a1 + 8);
        if ((v40 & 0x80000000) != 0 || v40 >= v93)
        {
          IOSArray_throwOutOfBoundsWithMsg(v93, v40);
        }

        v90 = v40;
        if ((v87 & 0x80000000) != 0 || v87 >= v93)
        {
          IOSArray_throwOutOfBoundsWithMsg(v93, v87);
        }

        *(a1 + 16 + 8 * v87) = *(a1 + 16 + 8 * v40);
        v94 = (v40 + 1);
        v95 = *(a1 + 8);
        if ((v40 & 0x80000000) != 0 || v40 >= v95)
        {
          IOSArray_throwOutOfBoundsWithMsg(v95, v40);
        }

        v96 = v28;
LABEL_254:
        *(a1 + 16 + 8 * v90) = v96;
        v40 = v94;
      }

      v69 = v87 + 1;
      ++v68;
      if (v87 + 1 > v67)
      {
        goto LABEL_163;
      }
    }

    while (1)
    {
      v90 = v67;
      v91 = *(a1 + 8);
      if ((v67 & 0x80000000) != 0 || v67 >= v91)
      {
        IOSArray_throwOutOfBoundsWithMsg(v91, v67);
      }

      v92 = *(a1 + 16 + 8 * v67);
      if (v92 != v30)
      {
        break;
      }

      v67 = (v67 - 1);
      if (v68 == v67)
      {
        goto LABEL_163;
      }
    }

    v97 = *(a1 + 8);
    if ((v67 & 0x80000000) != 0 || v67 >= v97)
    {
      IOSArray_throwOutOfBoundsWithMsg(v97, v67);
    }

    if (v92 == v28)
    {
      v98 = *(a1 + 8);
      if ((v40 & 0x80000000) != 0 || v40 >= v98)
      {
        IOSArray_throwOutOfBoundsWithMsg(v98, v40);
      }

      v99 = v40;
      if ((v87 & 0x80000000) != 0 || v87 >= v98)
      {
        IOSArray_throwOutOfBoundsWithMsg(v98, v87);
      }

      *(a1 + 16 + 8 * v87) = *(a1 + 16 + 8 * v40);
      v94 = (v40 + 1);
      v100 = *(a1 + 8);
      if ((v40 & 0x80000000) != 0 || v40 >= v100)
      {
        IOSArray_throwOutOfBoundsWithMsg(v100, v40);
      }

      v92 = v28;
    }

    else
    {
      v101 = *(a1 + 8);
      if ((v67 & 0x80000000) != 0 || v67 >= v101)
      {
        IOSArray_throwOutOfBoundsWithMsg(v101, v67);
      }

      if ((v87 & 0x80000000) != 0 || v87 >= v101)
      {
        IOSArray_throwOutOfBoundsWithMsg(v101, v87);
      }

      v99 = v87;
      v94 = v40;
    }

    *(a1 + 16 + 8 * v99) = v92;
    v67 = (v90 - 1);
    v102 = *(a1 + 8);
    if ((v90 & 0x80000000) != 0 || v90 >= v102)
    {
      IOSArray_throwOutOfBoundsWithMsg(v102, v90);
    }

    v96 = v30;
    goto LABEL_254;
  }

  return result;
}

id JreTypeForString(const char *a1)
{
  if (strlen(a1) == 1)
  {
    result = [IOSClass primitiveClassForChar:*a1];
    if (result)
    {
      return result;
    }
  }

  v3 = strlen(a1);
  if (v3 < 2)
  {
    goto LABEL_16;
  }

  if (*a1 == 91)
  {
    v4 = JreTypeForString(a1 + 1);

    return IOSClass_arrayOf(v4);
  }

  v5 = [[[NSString stringWithUTF8String:?]stringByReplacingOccurrencesOfString:1 withString:v3 - 2], "stringByReplacingOccurrencesOfString:withString:", @"/", @"."];
  v6 = *a1;
  if (v6 != 84)
  {
    if (v6 == 76)
    {

      return [IOSClass forName:v5];
    }

LABEL_16:
    objc_exception_throw([(JavaLangError *)[JavaLangAssertionError alloc] initWithNSString:[NSString stringWithFormat:@"invalid type from metadata %s", a1]]);
  }

  return [JavaLangReflectTypeVariableImpl typeVariableWithName:v5];
}

uint64_t TypeToClass(uint64_t a1)
{
  if (!a1)
  {
    return a1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return a1;
  }

  return NSObject_class_();
}

Method JreFindInstanceMethod(objc_class *a1, const char *a2)
{
  outCount = 0;
  v3 = class_copyMethodList(a1, &outCount);
  if (outCount)
  {
    v4 = 0;
    while (1)
    {
      Name = method_getName(v3[v4]);
      v6 = sel_getName(Name);
      if (!strcmp(a2, v6))
      {
        break;
      }

      if (++v4 >= outCount)
      {
        goto LABEL_5;
      }
    }

    v7 = v3[v4];
  }

  else
  {
LABEL_5:
    v7 = 0;
  }

  free(v3);
  return v7;
}

Method JreFindClassMethod(void *a1, const char *a2)
{
  Class = object_getClass(a1);

  return JreFindInstanceMethod(Class, a2);
}

NSMethodSignature *JreSignatureOrNull(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (strchr(v1, 123))
  {
    return 0;
  }

  else
  {
    return [NSMethodSignature signatureWithObjCTypes:v1];
  }
}

uint64_t JavaMathRoundingModeEnum_valueOfWithInt_(unsigned int a1)
{
  if ((atomic_load_explicit(JavaMathRoundingModeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100164E08();
  }

  if (a1 >= 8)
  {
    v3 = new_JavaLangIllegalArgumentException_initWithNSString_(@"Invalid rounding mode");
    objc_exception_throw(v3);
  }

  return *off_10040C760[a1];
}

IOSObjectArray *JavaMathRoundingModeEnum_values()
{
  if ((atomic_load_explicit(JavaMathRoundingModeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100164E08();
  }

  v0 = JavaMathRoundingModeEnum_class_();

  return [IOSObjectArray arrayWithObjects:&JavaMathRoundingModeEnum_values_ count:8 type:v0];
}

void *JavaMathRoundingModeEnum_valueOfWithNSString_(void *a1)
{
  if ((atomic_load_explicit(JavaMathRoundingModeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100164E08();
  }

  v2 = 0;
  while (1)
  {
    v3 = JavaMathRoundingModeEnum_values_[v2];
    if ([a1 isEqual:{objc_msgSend(v3, "name")}])
    {
      break;
    }

    if (++v2 == 8)
    {
      objc_exception_throw([[JavaLangIllegalArgumentException alloc] initWithNSString:a1]);
    }
  }

  return v3;
}

uint64_t JavaMathRoundingModeEnum_class_()
{
  if ((atomic_load_explicit(JavaMathRoundingModeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100164E08();
  }

  if (qword_100554BC0 != -1)
  {
    sub_100195CE0();
  }

  return qword_100554BB8;
}

void *JavaMathBigInteger_initWithInt_withJavaUtilRandom_(uint64_t a1, int a2, void *a3)
{
  *(a1 + 24) = -2;
  *(a1 + 40) = 0;
  if (a2 < 0)
  {
    v15 = new_JavaLangIllegalArgumentException_initWithNSString_(@"numBits must be non-negative");
    objc_exception_throw(v15);
  }

  v3 = a2;
  if (a2)
  {
    *(a1 + 20) = 1;
    *(a1 + 16) = (a2 + 31) >> 5;
    JreStrongAssignAndConsume((a1 + 8), [IOSIntArray newArrayWithLength:*(a1 + 16)]);
    LODWORD(v6) = *(a1 + 16);
    if (v6 >= 1)
    {
      if (!a3)
      {
        JreThrowNullPointerException();
      }

      v7 = 0;
      do
      {
        v8 = [a3 nextInt];
        v9 = *(a1 + 8);
        v10 = *(v9 + 8);
        if (v7 >= v10)
        {
          IOSArray_throwOutOfBoundsWithMsg(v10, v7);
        }

        *(v9 + 12 + 4 * v7++) = v8;
        v6 = *(a1 + 16);
      }

      while (v7 < v6);
    }

    v11 = *(a1 + 8);
    v12 = *(v11 + 8);
    v13 = v6 - 1;
    if (v13 < 0 || v13 >= v12)
    {
      IOSArray_throwOutOfBoundsWithMsg(v12, v13);
    }

    *(v11 + 12 + 4 * v13) >>= -v3;

    return [JavaMathBigInteger cutOffLeadingZeroes]_0(a1);
  }

  else
  {
    *(a1 + 20) = 0;
    *(a1 + 16) = 1;
    v16 = 0;
    return JreStrongAssignAndConsume((a1 + 8), [IOSIntArray newArrayWithInts:&v16 count:1]);
  }
}

id JavaMathBigInteger_initWithInt_withInt_withJavaUtilRandom_(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  *(a1 + 24) = -2;
  *(a1 + 40) = 0;
  if (a2 <= 1)
  {
    v8 = new_JavaLangArithmeticException_initWithNSString_(@"bitLength < 2");
    objc_exception_throw(v8);
  }

  v5 = JavaMathPrimality_consBigIntegerWithInt_withInt_withJavaUtilRandom_(a2, a3, a4);
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  *(a1 + 20) = v5->sign_;
  *(a1 + 16) = v5->numberLength_;
  digits = v5->digits_;

  return JreStrongAssign((a1 + 8), digits);
}

uint64_t JavaMathBigInteger_initWithNSString_withInt_(uint64_t a1, void *a2, uint64_t a3)
{
  *(a1 + 24) = -2;
  *(a1 + 40) = 0;
  if (!a2)
  {
    v7 = new_JavaLangNullPointerException_init();
    goto LABEL_11;
  }

  if ((a3 - 37) <= 0xFFFFFFDC)
  {
    v8 = @"Radix out of range";
LABEL_10:
    v7 = new_JavaLangNumberFormatException_initWithNSString_(v8);
LABEL_11:
    objc_exception_throw(v7);
  }

  if (![a2 length])
  {
    v8 = @"Zero length BigInteger";
    goto LABEL_10;
  }

  return sub_100196C50(a1, a2, a3);
}

void *JavaMathBigInteger_initWithInt_withByteArray_(uint64_t a1, int a2, uint64_t a3)
{
  *(a1 + 24) = -2;
  *(a1 + 40) = 0;
  if (!a3)
  {
    v9 = new_JavaLangNullPointerException_init();
LABEL_16:
    objc_exception_throw(v9);
  }

  if ((a2 - 2) <= 0xFFFFFFFC)
  {
    v8 = @"Invalid signum value";
LABEL_15:
    v9 = new_JavaLangNumberFormatException_initWithNSString_(v8);
    goto LABEL_16;
  }

  if (a2)
  {
    v4 = *(a3 + 8);
    goto LABEL_9;
  }

  v5 = (a3 + 12);
  v4 = *(a3 + 8);
  if (a3 + 12 < (a3 + 12 + v4))
  {
    v6 = v4;
    while (!*v5)
    {
      ++v5;
      if (!--v6)
      {
        goto LABEL_9;
      }
    }

    v8 = @"signum-magnitude mismatch";
    goto LABEL_15;
  }

LABEL_9:
  if (v4)
  {
    *(a1 + 20) = a2;
    sub_100198948(a1, a3);

    return [JavaMathBigInteger cutOffLeadingZeroes]_0(a1);
  }

  else
  {
    *(a1 + 20) = 0;
    *(a1 + 16) = 1;
    v10 = 0;
    return JreStrongAssignAndConsume((a1 + 8), [IOSIntArray newArrayWithInts:&v10 count:1]);
  }
}

uint64_t JavaMathBigInteger_initWithByteArray_(_DWORD *a1, uint64_t a2)
{
  a1[6] = -2;
  a1[10] = 0;
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v3 = *(a2 + 8);
  if (!v3)
  {
    v5 = new_JavaLangNumberFormatException_initWithNSString_(@"Zero length BigInteger");
    objc_exception_throw(v5);
  }

  if (v3 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v3, 0);
  }

  if (*(a2 + 12) < 0)
  {
    a1[5] = -1;
    sub_100198E34(a1, a2);
  }

  else
  {
    a1[5] = 1;
    sub_100198948(a1, a2);
  }

  return [JavaMathBigInteger cutOffLeadingZeroes]_0(a1);
}

void *JavaMathBigInteger_initWithInt_withInt_(uint64_t a1, int a2, int a3)
{
  *(a1 + 24) = -2;
  *(a1 + 40) = 0;
  *(a1 + 20) = a2;
  *(a1 + 16) = 1;
  v4 = a3;
  return JreStrongAssignAndConsume((a1 + 8), [IOSIntArray newArrayWithInts:&v4 count:1]);
}

void *JavaMathBigInteger_initWithInt_withLong_(uint64_t a1, int a2, unint64_t a3)
{
  *(a1 + 24) = -2;
  *(a1 + 40) = 0;
  *(a1 + 20) = a2;
  if (HIDWORD(a3))
  {
    *(a1 + 16) = 2;
    v7 = a3;
    v3 = &v7;
    v4 = 2;
  }

  else
  {
    *(a1 + 16) = 1;
    v6 = a3;
    v3 = &v6;
    v4 = 1;
  }

  return JreStrongAssignAndConsume((a1 + 8), [IOSIntArray newArrayWithInts:v3 count:v4]);
}

void *JavaMathBigInteger_initWithInt_withIntArray_(uint64_t a1, int a2, _DWORD *a3)
{
  *(a1 + 24) = -2;
  *(a1 + 40) = 0;
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if (a3[2])
  {
    *(a1 + 20) = a2;
    *(a1 + 16) = a3[2];
    JreStrongAssign((a1 + 8), a3);

    return [JavaMathBigInteger cutOffLeadingZeroes]_0(a1);
  }

  else
  {
    *(a1 + 20) = 0;
    *(a1 + 16) = 1;
    v5 = 0;
    return JreStrongAssignAndConsume((a1 + 8), [IOSIntArray newArrayWithInts:&v5 count:1]);
  }
}

JavaMathBigInteger *JavaMathBigInteger_valueOfWithLong_(unint64_t a1)
{
  v1 = a1;
  if ((atomic_load_explicit(JavaMathBigInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100147554();
    if ((v1 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v1 == -1)
    {
      return JavaMathBigInteger_MINUS_ONE_;
    }

    v1 = -v1;
    v4 = [JavaMathBigInteger alloc];
    v5 = v4;
    v6 = -1;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v1 <= 0xA)
  {
    if (!JavaMathBigInteger_SMALL_VALUES_)
    {
      JreThrowNullPointerException();
    }

    v2 = *(JavaMathBigInteger_SMALL_VALUES_ + 8);
    if (v2 <= v1)
    {
      IOSArray_throwOutOfBoundsWithMsg(v2, v1);
    }

    return *(JavaMathBigInteger_SMALL_VALUES_ + 24 + 8 * v1);
  }

  v4 = [JavaMathBigInteger alloc];
  v5 = v4;
  v6 = 1;
LABEL_11:
  JavaMathBigInteger_initWithInt_withLong_(v4, v6, v1);

  return v5;
}

uint64_t sub_100196C50(uint64_t a1, void *a2, uint64_t a3)
{
  if (atomic_load_explicit(JavaMathBigInteger__initialized, memory_order_acquire))
  {
    if (!a2)
    {
      goto LABEL_34;
    }
  }

  else
  {
    sub_100147554();
    if (!a2)
    {
      goto LABEL_34;
    }
  }

  v39 = [a2 length];
  v6 = [a2 charAtWithInt:0];
  v7 = v6 == 45;
  if ((atomic_load_explicit(JavaMathConversion__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10019A278();
  }

  if (!JavaMathConversion_digitFitInInt_)
  {
    goto LABEL_34;
  }

  v8 = v39 - v7;
  v9 = *(JavaMathConversion_digitFitInInt_ + 8);
  if ((a3 & 0x80000000) != 0 || v9 <= a3)
  {
    IOSArray_throwOutOfBoundsWithMsg(v9, a3);
  }

  v10 = *(JavaMathConversion_digitFitInInt_ + 12 + 4 * a3);
  v11 = v8 / v10;
  v38 = v10;
  v12 = v8 % v10;
  if (v8 % v10)
  {
    ++v11;
  }

  v13 = [IOSIntArray arrayWithLength:v11];
  if ((atomic_load_explicit(JavaMathConversion__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10019A278();
  }

  if (!JavaMathConversion_bigRadices_)
  {
    goto LABEL_34;
  }

  v14 = *(JavaMathConversion_bigRadices_ + 8);
  v15 = a3 - 2;
  v16 = a3 - 2;
  if (a3 - 2 < 0 || v15 >= v14)
  {
    IOSArray_throwOutOfBoundsWithMsg(v14, v15);
  }

  v36 = v6;
  v37 = a1;
  if (v7 >= v39)
  {
    v19 = 0;
  }

  else
  {
    v17 = a3;
    v18 = a2;
    v19 = 0;
    v20 = *(JavaMathConversion_bigRadices_ + 12 + 4 * v16);
    v21 = v12 ? v12 : v38;
    v22 = v21 + v7;
    do
    {
      v23 = [v18 substring:v7 endIndex:v22];
      v30 = JavaLangInteger_parseIntWithNSString_withInt_(v23, v17, v24, v25, v26, v27, v28, v29);
      v31 = JavaMathMultiplication_multiplyByIntWithIntArray_withInt_withInt_(v13, v19, v20);
      v32 = JavaMathElementary_inplaceAddWithIntArray_withInt_withInt_(v13, v19, v30);
      size = v13->super.size_;
      if (v19 < 0 || v19 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v19);
      }

      *(&v13->super.size_ + v19 + 1) = v32 + v31;
      v7 = v22;
      v22 = (v22 + v38);
      ++v19;
    }

    while (v22 - v38 < v39);
  }

  if (!v37)
  {
LABEL_34:
    JreThrowNullPointerException();
  }

  if (v36 == 45)
  {
    v34 = -1;
  }

  else
  {
    v34 = 1;
  }

  *(v37 + 20) = v34;
  *(v37 + 16) = v19;
  JreStrongAssign((v37 + 8), v13);

  return [JavaMathBigInteger cutOffLeadingZeroes]_0(v37);
}

JavaMathBigInteger *new_JavaMathBigInteger_initWithInt_withInt_withIntArray_(int a1, int a2, void *a3)
{
  v6 = [JavaMathBigInteger alloc];
  v6->firstNonzeroDigit_ = -2;
  v6->hashCode_ = 0;
  v6->sign_ = a1;
  v6->numberLength_ = a2;
  JreStrongAssign(&v6->digits_, a3);
  return v6;
}

JavaMathBigInteger *JavaMathBigInteger_getPowerOfTwoWithInt_(uint64_t a1)
{
  if ((atomic_load_explicit(JavaMathBigInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100147554();
  }

  if (!JavaMathBigInteger_TWO_POWS_)
  {
    JreThrowNullPointerException();
  }

  v2 = *(JavaMathBigInteger_TWO_POWS_ + 8);
  if (v2 <= a1)
  {
    v4 = a1;
    v5 = a1 >> 5;
    v6 = [IOSIntArray arrayWithLength:(a1 >> 5) + 1];
    v7 = 1 << a1;
    v8 = a1 >> 5;
    size = v6->super.size_;
    if (v5 < 0 || v5 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v4 >> 5);
    }

    *(&v6->super.size_ + v8 + 1) = v7;
    v10 = new_JavaMathBigInteger_initWithInt_withInt_withIntArray_(1, v5 + 1, v6);

    return v10;
  }

  else
  {
    if ((a1 & 0x80000000) != 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(v2, a1);
    }

    return *(JavaMathBigInteger_TWO_POWS_ + 24 + 8 * a1);
  }
}

JavaMathBigInteger *JavaMathBigInteger_probablePrimeWithInt_withJavaUtilRandom_(uint64_t a1, void *a2)
{
  if ((atomic_load_explicit(JavaMathBigInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100147554();
  }

  v4 = [JavaMathBigInteger alloc];
  JavaMathBigInteger_initWithInt_withInt_withJavaUtilRandom_(v4, a1, 100, a2);

  return v4;
}

uint64_t sub_100198948(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v2 = *(a2 + 8);
  v3 = *(a2 + 8) & 3;
  v4 = v2 >> 2;
  if ((v2 & 3) != 0)
  {
    ++v4;
  }

  *(a1 + 16) = v4;
  result = JreStrongAssignAndConsume((a1 + 8), [IOSIntArray newArrayWithLength:*(a1 + 16)]);
  v7 = v2;
  if (v2 < 4)
  {
    v11 = 0;
    v17 = a2;
    v18 = a1;
    v19 = &OBJC_IVAR___LibcoreUtilMutableInt_value_;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = ((v7 + ~v3) >> 2) + 1;
    v12 = -1;
    v13 = -2;
    v14 = -3;
    v15 = -4;
    v16 = a2;
    v17 = a2;
    v18 = a1;
    v19 = &OBJC_IVAR___LibcoreUtilMutableInt_value_;
    do
    {
      v20 = v7 + v9;
      v21 = *(v17 + 8);
      if (v7 + v9 > v21)
      {
        IOSArray_throwOutOfBoundsWithMsg(v21, (v7 + v12));
      }

      if (v20 < 2 || v20 - 2 >= v21)
      {
        IOSArray_throwOutOfBoundsWithMsg(v21, (v7 + v13));
      }

      if (v20 < 3 || v20 - 3 >= v21)
      {
        IOSArray_throwOutOfBoundsWithMsg(v21, (v7 + v14));
      }

      if (v20 < 4 || v7 + v9 - 4 >= v21)
      {
        IOSArray_throwOutOfBoundsWithMsg(v21, (v7 + v15));
      }

      v22 = *(a1 + 8);
      result = *(v22 + 8);
      if (v10 >= result)
      {
        IOSArray_throwOutOfBoundsWithMsg(result, v10);
      }

      *(v22 + 12 + 4 * v10) = _byteswap_ulong(*(v16 + v7 + 8));
      v12 -= 4;
      v16 -= 4;
      v13 -= 4;
      v9 -= 4;
      v14 -= 4;
      v8 += 4;
      v15 -= 4;
      ++v10;
    }

    while (v11 != v10);
    LODWORD(v7) = v7 - v8;
  }

  if (v7 >= 1)
  {
    v23 = 0;
    v24 = v17;
    do
    {
      v25 = *(v18 + v19[4]);
      v26 = *(v25 + 8);
      if (v11 >= v26)
      {
        IOSArray_throwOutOfBoundsWithMsg(v26, v11);
      }

      v27 = *(v25 + 12 + 4 * v11);
      v28 = *(v17 + 8);
      if (v23 >= v28)
      {
        IOSArray_throwOutOfBoundsWithMsg(v28, v23);
      }

      v29 = *(v18 + v19[4]);
      result = *(v29 + 8);
      if (v11 >= result)
      {
        IOSArray_throwOutOfBoundsWithMsg(result, v11);
      }

      *(v29 + 12 + 4 * v11) = (v27 << 8) | *(v24 + 12);
      ++v23;
      ++v24;
    }

    while (v7 != v23);
  }

  return result;
}

uint64_t sub_100198E34(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v2 = *(a2 + 8);
  v3 = v2 & 3;
  v59 = v2;
  v4 = v2 >> 2;
  v58 = v3;
  if (v3)
  {
    ++v4;
  }

  *(a1 + 16) = v4;
  JreStrongAssignAndConsume((a1 + 8), [IOSIntArray newArrayWithLength:*(a1 + 16)]);
  v5 = *(a1 + 8);
  result = *(v5 + 8);
  v7 = *(a1 + 16) - 1;
  if (v7 < 0 || v7 >= result)
  {
    IOSArray_throwOutOfBoundsWithMsg(result, v7);
  }

  *(v5 + 12 + 4 * v7) = -1;
  v8 = v59;
  if (v59 < 4)
  {
    v11 = 0;
    v12 = a2;
    if (!v58)
    {
      return result;
    }

    goto LABEL_53;
  }

  v9 = 0;
  v10 = 0;
  v11 = ((v59 + ~v58) >> 2) + 1;
  v12 = a2;
  v13 = -4;
  do
  {
    v14 = v59 + v13;
    v15 = v59 + v13 + 4;
    v16 = *(a2 + 8);
    if (v15 > v16)
    {
      IOSArray_throwOutOfBoundsWithMsg(v16, (v59 - 1 + v13 + 4));
    }

    if (v15 < 2 || v14 + 2 >= v16)
    {
      IOSArray_throwOutOfBoundsWithMsg(v16, (v59 - 2 + v13 + 4));
    }

    if (v15 < 3 || v14 + 1 >= v16)
    {
      IOSArray_throwOutOfBoundsWithMsg(v16, (v59 - 3 + v13 + 4));
    }

    if (v15 < 4 || v59 + v13 >= v16)
    {
      IOSArray_throwOutOfBoundsWithMsg(v16, (v59 + v13));
    }

    v17 = *(a1 + 8);
    v18 = *(v17 + 8);
    if (v10 >= v18)
    {
      IOSArray_throwOutOfBoundsWithMsg(v18, v10);
    }

    *(v17 + 12 + 4 * v10) = *(a2 + v59 + v13 + 15) | (*(a2 + v59 + v13 + 14) << 8) | (*(a2 + v59 + v13 + 13) << 16) | (*(a2 + v59 + 12 + v13) << 24);
    v19 = *(a1 + 8);
    result = *(v19 + 8);
    if (v10 >= result)
    {
      IOSArray_throwOutOfBoundsWithMsg(result, v10);
    }

    if (*(v19 + 12 + 4 * v10))
    {
      v20 = *(a1 + 8);
      result = *(v20 + 8);
      if (v10 >= result)
      {
        IOSArray_throwOutOfBoundsWithMsg(result, v10);
      }

      *(*(a1 + 8) + 12 + 4 * v10) = -*(v20 + 12 + 4 * v10);
      *(a1 + 24) = v10;
      if (v58 >= v59 + v13)
      {
        v11 = v10 + 1;
        v8 = v59 + v13;
        if (v58)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v21 = v13 - 4;
        v22 = -v13;
        v23 = v13 - 3;
        v24 = v13 - 2;
        v25 = a2 + v13 + 4;
        v26 = v13 - 1;
        v11 = v10 + 1;
        do
        {
          v27 = v59 + v13;
          v28 = *(a2 + 8);
          if (v59 + v13 > v28)
          {
            IOSArray_throwOutOfBoundsWithMsg(v28, (v59 + v26));
          }

          v29 = v27 < 2;
          v30 = v27 - 2;
          if (v29 || v30 >= v28)
          {
            IOSArray_throwOutOfBoundsWithMsg(v28, (v59 + v24));
          }

          v31 = v30 + 2;
          v32 = v30 - 1;
          if (v31 < 3 || v32 >= v28)
          {
            IOSArray_throwOutOfBoundsWithMsg(v28, (v59 + v23));
          }

          v33 = v32 + 3;
          v34 = v32 - 1;
          if (v33 < 4 || v34 >= v28)
          {
            IOSArray_throwOutOfBoundsWithMsg(v28, (v59 + v21));
          }

          v35 = *(a1 + 8);
          v36 = *(v35 + 8);
          if (v11 >= v36)
          {
            IOSArray_throwOutOfBoundsWithMsg(v36, v11);
          }

          *(v35 + 12 + v22) = _byteswap_ulong(*(v25 + v59 + 4));
          v37 = *(a1 + 8);
          result = *(v37 + 8);
          if (v11 >= result)
          {
            IOSArray_throwOutOfBoundsWithMsg(result, v11);
          }

          *(*(a1 + 8) + 12 + v22) = ~*(v37 + 12 + v22);
          ++v11;
          v26 -= 4;
          v25 -= 4;
          v24 -= 4;
          v23 -= 4;
          v13 -= 4;
          v22 += 4;
          v21 -= 4;
        }

        while (v34 > v58);
        v8 = v59 - v22;
        if (v58)
        {
          goto LABEL_53;
        }
      }

      return result;
    }

    v13 -= 4;
    ++v10;
    v9 += 4;
  }

  while (((v59 + ~v58) >> 2) + 1 != v10);
  v8 = v59 - v9;
  if (!v58)
  {
    return result;
  }

LABEL_53:
  if (*(a1 + 24) == -2)
  {
    if (v8 >= 1)
    {
      v38 = 0;
      v39 = v12;
      do
      {
        v40 = *(a1 + 8);
        v41 = *(v40 + 8);
        if ((v11 & 0x80000000) != 0 || v11 >= v41)
        {
          IOSArray_throwOutOfBoundsWithMsg(v41, v11);
        }

        v42 = *(v40 + 12 + 4 * v11);
        v43 = *(v12 + 8);
        if (v38 >= v43)
        {
          IOSArray_throwOutOfBoundsWithMsg(v43, v38);
        }

        v44 = *(a1 + 8);
        v45 = *(v44 + 8);
        if ((v11 & 0x80000000) != 0 || v11 >= v45)
        {
          IOSArray_throwOutOfBoundsWithMsg(v45, v11);
        }

        *(v44 + 12 + 4 * v11) = (v42 << 8) | *(v39 + 12);
        ++v38;
        ++v39;
      }

      while (v8 != v38);
    }

    v46 = *(a1 + 8);
    result = *(v46 + 8);
    if ((v11 & 0x80000000) != 0 || v11 >= result)
    {
      IOSArray_throwOutOfBoundsWithMsg(result, v11);
    }

    v47 = *(a1 + 8);
    v48 = -*(v46 + 12 + 4 * v11);
    if ((v11 & 0x80000000) != 0)
    {
      goto LABEL_90;
    }
  }

  else
  {
    if (v8 >= 1)
    {
      v49 = 0;
      v50 = v12;
      do
      {
        v51 = *(a1 + 8);
        v52 = *(v51 + 8);
        if ((v11 & 0x80000000) != 0 || v11 >= v52)
        {
          IOSArray_throwOutOfBoundsWithMsg(v52, v11);
        }

        v53 = *(v51 + 12 + 4 * v11);
        v54 = *(v12 + 8);
        if (v49 >= v54)
        {
          IOSArray_throwOutOfBoundsWithMsg(v54, v49);
        }

        v55 = *(a1 + 8);
        v56 = *(v55 + 8);
        if ((v11 & 0x80000000) != 0 || v11 >= v56)
        {
          IOSArray_throwOutOfBoundsWithMsg(v56, v11);
        }

        *(v55 + 12 + 4 * v11) = (v53 << 8) | *(v50 + 12);
        ++v49;
        ++v50;
      }

      while (v8 != v49);
    }

    v57 = *(a1 + 8);
    result = *(v57 + 8);
    if ((v11 & 0x80000000) != 0 || v11 >= result)
    {
      IOSArray_throwOutOfBoundsWithMsg(result, v11);
    }

    v47 = *(a1 + 8);
    v48 = ~*(v57 + 12 + 4 * v11);
    if ((v11 & 0x80000000) != 0)
    {
LABEL_90:
      IOSArray_throwOutOfBoundsWithMsg(result, v11);
    }
  }

  if (v11 >= result)
  {
    goto LABEL_90;
  }

  *(v47 + 12 + 4 * v11) = v48;
  return result;
}

JavaMathBigInteger *new_JavaMathBigInteger_initWithInt_withInt_(int a1, int a2)
{
  v4 = [JavaMathBigInteger alloc];
  JavaMathBigInteger_initWithInt_withInt_(v4, a1, a2);
  return v4;
}

JavaMathBigInteger *new_JavaMathBigInteger_initWithInt_withJavaUtilRandom_(int a1, void *a2)
{
  v4 = [JavaMathBigInteger alloc];
  JavaMathBigInteger_initWithInt_withJavaUtilRandom_(v4, a1, a2);
  return v4;
}

JavaMathBigInteger *new_JavaMathBigInteger_initWithNSString_(void *a1)
{
  v2 = [JavaMathBigInteger alloc];
  JavaMathBigInteger_initWithNSString_withInt_(v2, a1, 10);
  return v2;
}

JavaMathBigInteger *new_JavaMathBigInteger_initWithInt_withByteArray_(int a1, uint64_t a2)
{
  v4 = [JavaMathBigInteger alloc];
  JavaMathBigInteger_initWithInt_withByteArray_(v4, a1, a2);
  return v4;
}

JavaMathBigInteger *new_JavaMathBigInteger_initWithInt_withIntArray_(int a1, _DWORD *a2)
{
  v4 = [JavaMathBigInteger alloc];
  JavaMathBigInteger_initWithInt_withIntArray_(v4, a1, a2);
  return v4;
}

uint64_t JavaMathBigInteger_class_()
{
  if ((atomic_load_explicit(JavaMathBigInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100147554();
  }

  if (qword_100554BD0 != -1)
  {
    sub_10019A338();
  }

  return qword_100554BC8;
}

uint64_t sub_10019A284(unsigned int *a1, uint64_t a2, unint64_t *a3)
{
  result = a1[2];
  if (result <= 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(result, 1);
  }

  *a3 = a1[3] | (a1[4] << 32);
  return result;
}

void sub_10019A2FC()
{
  v3 = *(*v1 + *v2);
  v4 = *(v0 + 16);
  if (v3 < 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v3, 0);
  }

  JUMPOUT(0x10019A2D0);
}

id JavaLangSystem_setInWithJavaIoInputStream_(void *a1)
{
  if ((atomic_load_explicit(JavaLangSystem__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014019C();
  }

  return JreStrongAssign(&JavaLangSystem_in_, a1);
}

id JavaLangSystem_setOutWithJavaIoPrintStream_(void *a1)
{
  if ((atomic_load_explicit(JavaLangSystem__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014019C();
  }

  return JreStrongAssign(&JavaLangSystem_out_, a1);
}

id JavaLangSystem_setErrWithJavaIoPrintStream_(void *a1)
{
  if ((atomic_load_explicit(JavaLangSystem__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014019C();
  }

  return JreStrongAssign(&JavaLangSystem_err_, a1);
}

uint64_t JavaLangSystem_identityHashCodeWithId_(uint64_t a1)
{
  if ((atomic_load_explicit(JavaLangSystem__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014019C();
  }

  return a1;
}

id JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(id a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (atomic_load_explicit(JavaLangSystem__initialized, memory_order_acquire))
  {
    if (!a1)
    {
LABEL_10:
      v13 = objc_alloc_init(JavaLangNullPointerException);
      goto LABEL_14;
    }
  }

  else
  {
    sub_10014019C();
    if (!a1)
    {
      goto LABEL_10;
    }
  }

  if (!a3)
  {
    goto LABEL_10;
  }

  Class = object_getClass(a1);
  v11 = object_getClass(a3);
  Superclass = class_getSuperclass(Class);
  if (Superclass != objc_opt_class())
  {
    v14 = [NSString stringWithFormat:@"source of type %@ is not an array", objc_opt_class(), v17];
LABEL_13:
    v13 = [[JavaLangArrayStoreException alloc] initWithNSString:v14];
LABEL_14:
    objc_exception_throw(v13);
  }

  if (v11 != Class)
  {
    v15 = objc_opt_class();
    v14 = [NSString stringWithFormat:@"source type %@ cannot be copied to array of type %@", v15, objc_opt_class()];
    goto LABEL_13;
  }

  return [a1 arraycopy:a2 destination:a3 dstOffset:a4 length:a5];
}

void JavaLangSystem_exitWithInt_(int a1)
{
  if ((atomic_load_explicit(JavaLangSystem__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  exit(a1);
}

id JavaLangSystem_getPropertyWithNSString_(uint64_t a1)
{
  if ((atomic_load_explicit(JavaLangSystem__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014019C();
  }

  Properties = JavaLangSystem_getProperties();
  if (!Properties)
  {
    JreThrowNullPointerException();
  }

  return [Properties getPropertyWithNSString:a1];
}

id JavaLangSystem_getPropertyWithNSString_withNSString_(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(JavaLangSystem__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014019C();
  }

  Properties = JavaLangSystem_getProperties();
  if (!Properties)
  {
    JreThrowNullPointerException();
  }

  result = [Properties getPropertyWithNSString:a1];
  if (!result)
  {
    return a2;
  }

  return result;
}

id JavaLangSystem_setPropertyWithNSString_withNSString_(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(JavaLangSystem__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014019C();
  }

  Properties = JavaLangSystem_getProperties();
  if (!Properties)
  {
    JreThrowNullPointerException();
  }

  v5 = [Properties setPropertyWithNSString:a1 withNSString:a2];
  objc_opt_class();
  if (v5 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return v5;
}

id JavaLangSystem_setPropertiesWithJavaUtilProperties_(void *a1)
{
  if ((atomic_load_explicit(JavaLangSystem__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014019C();
  }

  return JreStrongAssign(&qword_100554BD8, a1);
}

id JavaLangSystem_clearPropertyWithNSString_(uint64_t a1)
{
  if ((atomic_load_explicit(JavaLangSystem__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014019C();
  }

  Properties = JavaLangSystem_getProperties();
  if (!Properties)
  {
    JreThrowNullPointerException();
  }

  v3 = Properties;
  v4 = [Properties getPropertyWithNSString:a1];
  [v3 removeWithId:a1];
  return v4;
}

char *JavaLangSystem_getenvWithNSString_(void *a1)
{
  if ((atomic_load_explicit(JavaLangSystem__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014019C();
  }

  result = getenv([a1 UTF8String]);
  if (result)
  {

    return [NSString stringWithUTF8String:result];
  }

  return result;
}

id JavaLangSystem_load__WithNSString_(uint64_t a1)
{
  if ((atomic_load_explicit(JavaLangSystem__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014019C();
  }

  Runtime = JavaLangRuntime_getRuntime();
  if (!Runtime)
  {
    JreThrowNullPointerException();
  }

  return [Runtime load__WithNSString:a1];
}

id JavaLangSystem_loadLibraryWithNSString_(uint64_t a1)
{
  if ((atomic_load_explicit(JavaLangSystem__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014019C();
  }

  Runtime = JavaLangRuntime_getRuntime();
  if (!Runtime)
  {
    JreThrowNullPointerException();
  }

  return [Runtime loadLibraryWithNSString:a1];
}

id JavaLangSystem_logEWithNSString_(uint64_t a1)
{
  if ((atomic_load_explicit(JavaLangSystem__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014019C();
  }

  if ((atomic_load_explicit(JavaUtilLoggingLevel__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10019B6E8();
  }

  v2 = JavaUtilLoggingLevel_SEVERE_;

  return sub_10019ADE0(v2, a1, 0);
}

id JavaLangSystem_logEWithNSString_withJavaLangThrowable_(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(JavaLangSystem__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014019C();
  }

  if ((atomic_load_explicit(JavaUtilLoggingLevel__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10019B6E8();
  }

  v4 = JavaUtilLoggingLevel_SEVERE_;

  return sub_10019ADE0(v4, a1, a2);
}

id JavaLangSystem_logIWithNSString_(uint64_t a1)
{
  if ((atomic_load_explicit(JavaLangSystem__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014019C();
  }

  if ((atomic_load_explicit(JavaUtilLoggingLevel__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10019B6E8();
  }

  v2 = JavaUtilLoggingLevel_INFO_;

  return sub_10019ADE0(v2, a1, 0);
}

id JavaLangSystem_logIWithNSString_withJavaLangThrowable_(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(JavaLangSystem__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014019C();
  }

  if ((atomic_load_explicit(JavaUtilLoggingLevel__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10019B6E8();
  }

  v4 = JavaUtilLoggingLevel_INFO_;

  return sub_10019ADE0(v4, a1, a2);
}

id JavaLangSystem_logWWithNSString_(uint64_t a1)
{
  if ((atomic_load_explicit(JavaLangSystem__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014019C();
  }

  if ((atomic_load_explicit(JavaUtilLoggingLevel__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10019B6E8();
  }

  v2 = JavaUtilLoggingLevel_WARNING_;

  return sub_10019ADE0(v2, a1, 0);
}

id JavaLangSystem_logWWithNSString_withJavaLangThrowable_(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(JavaLangSystem__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014019C();
  }

  if ((atomic_load_explicit(JavaUtilLoggingLevel__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10019B6E8();
  }

  v4 = JavaUtilLoggingLevel_WARNING_;

  return sub_10019ADE0(v4, a1, a2);
}

id sub_10019ADE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(JavaLangSystem__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014019C();
  }

  v6 = qword_100554BE0;
  if (!qword_100554BE0)
  {
    LoggerWithNSString = JavaUtilLoggingLogger_getLoggerWithNSString_(@"java.lang.System");
    JreStrongAssign(&qword_100554BE0, LoggerWithNSString);
    v6 = qword_100554BE0;
    if (!qword_100554BE0)
    {
      JreThrowNullPointerException();
    }
  }

  return [v6 logWithJavaUtilLoggingLevel:a1 withNSString:a2 withJavaLangThrowable:a3];
}

uint64_t JavaLangSystem_currentTimeMillis()
{
  if ((atomic_load_explicit(JavaLangSystem__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014019C();
  }

  return ((CFAbsoluteTimeGetCurrent() + kCFAbsoluteTimeIntervalSince1970) * 1000.0);
}

uint64_t JavaLangSystem_nanoTime()
{
  if ((atomic_load_explicit(JavaLangSystem__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014019C();
  }

  return mach_absolute_time() * dword_100554BE8 / *algn_100554BEC;
}

uint64_t JavaLangSystem_getProperties()
{
  if ((atomic_load_explicit(JavaLangSystem__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014019C();
  }

  if (qword_100554BF0 != -1)
  {
    sub_10019B700();
  }

  return qword_100554BD8;
}

void sub_10019B064(id a1)
{
  JreStrongAssignAndConsume(&qword_100554BD8, objc_alloc_init(JavaUtilProperties));
  [qword_100554BD8 setPropertyWithNSString:@"java.class.path" withNSString:&stru_100484358];
  [qword_100554BD8 setPropertyWithNSString:@"java.class.version" withNSString:@"0"];
  [qword_100554BD8 setPropertyWithNSString:@"java.compiler" withNSString:&stru_100484358];
  [qword_100554BD8 setPropertyWithNSString:@"java.ext.dirs" withNSString:&stru_100484358];
  [qword_100554BD8 setPropertyWithNSString:@"java.library.path" withNSString:&stru_100484358];
  [qword_100554BD8 setPropertyWithNSString:@"java.specification.name" withNSString:@"J2ObjC"];
  [qword_100554BD8 setPropertyWithNSString:@"java.specification.vendor" withNSString:@"J2ObjC"];
  [qword_100554BD8 setPropertyWithNSString:@"java.specification.version" withNSString:@"0"];
  [qword_100554BD8 setPropertyWithNSString:@"java.vendor" withNSString:@"J2ObjC"];
  [qword_100554BD8 setPropertyWithNSString:@"java.vendor.url" withNSString:@"http://j2objc.org/"];
  [qword_100554BD8 setPropertyWithNSString:@"java.version" withNSString:@"0"];
  [qword_100554BD8 setPropertyWithNSString:@"java.vm.name" withNSString:&stru_100484358];
  [qword_100554BD8 setPropertyWithNSString:@"java.vm.specification.name" withNSString:@"J2ObjC"];
  [qword_100554BD8 setPropertyWithNSString:@"java.vm.specification.vendor" withNSString:@"J2ObjC"];
  [qword_100554BD8 setPropertyWithNSString:@"java.vm.specification.version" withNSString:@"0"];
  [qword_100554BD8 setPropertyWithNSString:@"java.vm.vendor" withNSString:@"J2ObjC"];
  [qword_100554BD8 setPropertyWithNSString:@"java.vm.version" withNSString:@"0"];
  [qword_100554BD8 setPropertyWithNSString:@"os.arch" withNSString:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "J2OBJC_BUILD_ARCH")}];
  if ([NSProcessInfo instancesRespondToSelector:"operatingSystemVersion"])
  {
    v1 = +[NSProcessInfo processInfo];
    if (v1)
    {
      [(NSProcessInfo *)v1 operatingSystemVersion];
    }

    v4 = [NSString stringWithFormat:@"%ld.%ld", 0, 0, v15];
  }

  else
  {
    v2 = NSClassFromString(@"UIDevice");
    v3 = NSSelectorFromString(@"currentDevice");
    v4 = [-[objc_class performSelector:](v2 performSelector:{v3), "performSelector:", NSSelectorFromString(@"systemVersion")}];
  }

  [qword_100554BD8 setPropertyWithNSString:@"os.version" withNSString:v4];
  [qword_100554BD8 setPropertyWithNSString:@"file.separator" withNSString:@"/"];
  [qword_100554BD8 setPropertyWithNSString:@"line.separator" withNSString:@"\n"];
  [qword_100554BD8 setPropertyWithNSString:@"path.separator" withNSString:@":"];
  [qword_100554BD8 setPropertyWithNSString:@"org.xml.sax.driver" withNSString:@"org.xmlpull.v1.sax2.Driver"];
  v5 = NSHomeDirectory();
  [qword_100554BD8 setPropertyWithNSString:@"user.home" withNSString:v5];
  [qword_100554BD8 setPropertyWithNSString:@"user.name" withNSString:NSUserName()];
  [qword_100554BD8 setPropertyWithNSString:@"os.name" withNSString:@"iPhone"];
  [qword_100554BD8 setPropertyWithNSString:@"user.dir" withNSString:{-[NSString stringByAppendingString:](v5, "stringByAppendingString:", @"/Documents"}];
  v6 = NSTemporaryDirectory();
  v7 = [(NSString *)v6 length];
  v8 = v7 - 1;
  if ((v7 - 1) >= 0 && [(NSString *)v6 characterAtIndex:v8]== 47)
  {
    v6 = [(NSString *)v6 substringToIndex:v8];
  }

  [qword_100554BD8 setPropertyWithNSString:@"java.io.tmpdir" withNSString:v6];
  [qword_100554BD8 setPropertyWithNSString:@"java.home" withNSString:{-[NSBundle bundlePath](+[NSBundle mainBundle](NSBundle, "mainBundle"), "bundlePath")}];
  v9 = getenv("file_encoding");
  if (v9 || (v9 = getenv("file.encoding")) != 0)
  {
    v10 = [NSString stringWithCString:v9 encoding:4];
    [qword_100554BD8 setPropertyWithNSString:@"file.encoding" withNSString:v10];
  }

  v11 = +[NSLocale componentsFromLocaleIdentifier:](NSLocale, "componentsFromLocaleIdentifier:", [+[NSLocale localeIdentifier] currentLocale];
  v12 = [(NSDictionary *)v11 objectForKey:NSLocaleLanguageCode];
  if (v12)
  {
    [qword_100554BD8 setPropertyWithNSString:@"user.language" withNSString:v12];
  }

  v13 = [(NSDictionary *)v11 objectForKey:NSLocaleCountryCode];
  if (v13)
  {
    [qword_100554BD8 setPropertyWithNSString:@"user.region" withNSString:v13];
  }

  v14 = [(NSDictionary *)v11 objectForKey:NSLocaleVariantCode];
  if (v14)
  {
    [qword_100554BD8 setPropertyWithNSString:@"user.variant" withNSString:v14];
  }
}

id JavaLangSystem_getenv()
{
  if ((atomic_load_explicit(JavaLangSystem__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014019C();
  }

  v0 = +[NSMutableDictionary dictionary];
  if (*environ)
  {
    v1 = 1;
    do
    {
      v2 = [NSString stringWithUTF8String:?];
      v3 = [(NSString *)v2 rangeOfString:@"="];
      if (v3 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v0 setObject:-[NSString substringFromIndex:](v2 forKey:{"substringFromIndex:", v3 + 1), -[NSString substringToIndex:](v2, "substringToIndex:", v3)}];
      }
    }

    while (*(environ + 8 * v1++));
  }

  v5 = [NSDictionaryMap mapWithDictionary:v0];

  return [JavaUtilCollections unmodifiableMapWithJavaUtilMap:v5];
}

const __CFString *JavaLangSystem_lineSeparator()
{
  if ((atomic_load_explicit(JavaLangSystem__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014019C();
  }

  return @"\n";
}

id JavaUtilGregorianCalendar_initWithInt_withInt_withInt_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Default = JavaUtilTimeZone_getDefault();
  v9 = JavaUtilLocale_getDefault();
  JavaUtilCalendar_initWithJavaUtilTimeZone_withJavaUtilLocale_(a1, Default, v9);
  *(a1 + 80) = -12219292800000;
  *(a1 + 88) = 1582;
  *(a1 + 92) = *(a1 + 88) / 100 + *(a1 + 88) / -400 + (*(a1 + 88) - 2000) / 400 + (*(a1 + 88) - 2000) / -100 - 2;
  *(a1 + 96) = 10;
  *(a1 + 100) = 0;

  return [a1 setWithInt:a2 withInt:a3 withInt:a4];
}

id JavaUtilGregorianCalendar_initWithInt_withInt_withInt_withInt_withInt_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  Default = JavaUtilTimeZone_getDefault();
  v13 = JavaUtilLocale_getDefault();
  JavaUtilCalendar_initWithJavaUtilTimeZone_withJavaUtilLocale_(a1, Default, v13);
  *(a1 + 80) = -12219292800000;
  *(a1 + 88) = 1582;
  *(a1 + 92) = *(a1 + 88) / 100 + *(a1 + 88) / -400 + (*(a1 + 88) - 2000) / 400 + (*(a1 + 88) - 2000) / -100 - 2;
  *(a1 + 96) = 10;
  *(a1 + 100) = 0;

  return [a1 setWithInt:a2 withInt:a3 withInt:a4 withInt:a5 withInt:a6];
}

id JavaUtilGregorianCalendar_initWithInt_withInt_withInt_withInt_withInt_withInt_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  Default = JavaUtilTimeZone_getDefault();
  v15 = JavaUtilLocale_getDefault();
  JavaUtilCalendar_initWithJavaUtilTimeZone_withJavaUtilLocale_(a1, Default, v15);
  *(a1 + 80) = -12219292800000;
  *(a1 + 88) = 1582;
  *(a1 + 92) = *(a1 + 88) / 100 + *(a1 + 88) / -400 + (*(a1 + 88) - 2000) / 400 + (*(a1 + 88) - 2000) / -100 - 2;
  *(a1 + 96) = 10;
  *(a1 + 100) = 0;

  return [a1 setWithInt:a2 withInt:a3 withInt:a4 withInt:a5 withInt:a6 withInt:a7];
}

id JavaUtilGregorianCalendar_initWithJavaUtilTimeZone_withJavaUtilLocale_(uint64_t a1, uint64_t a2, void *a3)
{
  JavaUtilCalendar_initWithJavaUtilTimeZone_withJavaUtilLocale_(a1, a2, a3);
  *(a1 + 80) = -12219292800000;
  *(a1 + 88) = 1582;
  *(a1 + 92) = *(a1 + 88) / 100 + *(a1 + 88) / -400 + (*(a1 + 88) - 2000) / 400 + (*(a1 + 88) - 2000) / -100 - 2;
  *(a1 + 96) = 10;
  *(a1 + 100) = 0;
  v4 = JavaLangSystem_currentTimeMillis();

  return [a1 setTimeInMillisWithLong:v4];
}

id JavaUtilGregorianCalendar_initWithBoolean_(uint64_t a1)
{
  Default = JavaUtilTimeZone_getDefault();
  JavaUtilCalendar_initWithJavaUtilTimeZone_(a1, Default);
  *(a1 + 80) = -12219292800000;
  *(a1 + 88) = 1582;
  *(a1 + 92) = *(a1 + 88) / 100 + *(a1 + 88) / -400 + (*(a1 + 88) - 2000) / 400 + (*(a1 + 88) - 2000) / -100 - 2;
  *(a1 + 96) = 10;
  *(a1 + 100) = 0;
  [a1 setFirstDayOfWeekWithInt:1];

  return [a1 setMinimalDaysInFirstWeekWithInt:1];
}

uint64_t sub_10019C394(int a1, uint64_t a2)
{
  if (a2 == 1 && a1)
  {
    if (JavaUtilGregorianCalendar_DaysInMonth_)
    {
      v2 = *(JavaUtilGregorianCalendar_DaysInMonth_ + 8);
      if (v2 <= 1)
      {
        IOSArray_throwOutOfBoundsWithMsg(v2, 1);
      }

      return (*(JavaUtilGregorianCalendar_DaysInMonth_ + 13) + 1);
    }

LABEL_10:
    JreThrowNullPointerException();
  }

  if (!JavaUtilGregorianCalendar_DaysInMonth_)
  {
    goto LABEL_10;
  }

  v4 = *(JavaUtilGregorianCalendar_DaysInMonth_ + 8);
  if ((a2 & 0x80000000) != 0 || v4 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v4, a2);
  }

  return *(JavaUtilGregorianCalendar_DaysInMonth_ + 12 + a2);
}

id sub_10019C450(uint64_t a1, uint64_t a2)
{
  v4 = [a1 getTimeZone];
  v5 = a2 % 86400000;
  if (a2 % 86400000 >= 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = (a2 % 86400000) + 86400000;
  }

  v7 = a2 / 86400000 + (v5 >> 63);
  v8 = v7;
  if (*(a1 + 80) > a2)
  {
    v8 = v7 - *(a1 + 92);
  }

  if ((v8 + 364) >= 0x2D9)
  {
    v10 = v8 / 365;
    LODWORD(v9) = 1970;
    do
    {
      v9 = (v10 + v9);
      v11 = sub_10019F63C(a1, v9);
      v8 = v7 - v11;
      v10 = (v7 - v11) / 365;
    }

    while (v10);
  }

  else
  {
    v9 = 1970;
  }

  if (v8 < 0)
  {
    v9 = (v9 - 1);
    v8 += [a1 isLeapYearWithInt:v9] + 365;
    if (v9 == *(a1 + 88) && *(a1 + 80) > a2)
    {
      LODWORD(v8) = v8 - (v9 / 100 + v9 / -400 - 2);
    }
  }

  if (v9 > 0)
  {
    v12 = v8 + 1;
    v13 = v8 + 32;
    if (v8 + 1 >= 0)
    {
      v13 = v8 + 1;
    }

    v14 = (v13 >> 5);
    v15 = [a1 isLeapYearWithInt:v9];
    v16 = v12 - sub_10019F75C(v15, v14);
    v17 = sub_10019C394(v15, v14);
    v18 = __OFSUB__(v16, v17);
    if (v16 > v17)
    {
      v16 = v16 - sub_10019C394(v15, v14);
      v14 = (v14 + 1);
    }

    if (v4)
    {
      v19 = (v7 - 3) % 7;
      if ((v19 & (v7 - 3)) < 0 != v18)
      {
        v20 = v19 + 7;
      }

      else
      {
        v20 = (v7 - 3) % 7;
      }

      return [v4 getOffsetWithInt:1 withInt:v9 withInt:v14 withInt:v16 withInt:(v20 + 1) withInt:v6];
    }

LABEL_30:
    JreThrowNullPointerException();
  }

  if (!v4)
  {
    goto LABEL_30;
  }

  return [v4 getRawOffset];
}

uint64_t sub_10019C6E0(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 40) % 86400000;
  v7 = a2 / 86400000 + (v6 >> 63);
  if (v6 < 0)
  {
    LODWORD(v6) = v6 + 86400000;
  }

  v8 = (v6 + a3);
  if (v6 + a3 < 0)
  {
    if (v8 <= 0xFAD9A400)
    {
      v9 = -86400000;
    }

    else
    {
      v9 = v6 + a3;
    }

    if (v8 >= 0xFAD9A400)
    {
      v10 = v8;
    }

    else
    {
      v10 = v8 + 1;
    }

    v11 = (v9 - v10) / 0x5265C00u;
    if (v8 < 0xFAD9A400)
    {
      ++v11;
    }

    v8 = v8 + 86400000 * v11 + 86400000;
    v7 += ~v11;
  }

  if (v8 > 0x5265BFF)
  {
    v12 = v8 - 86400000;
    v8 = (v8 - 86400000) % 0x5265C00u;
    v7 += v12 / 0x5265C00uLL + 1;
  }

  v13 = a2 + a3;
  v14 = sub_10019F824(a1, v7, v13);
  v15 = *(a1 + 16);
  if (!v15)
  {
    goto LABEL_115;
  }

  v16 = v14;
  v17 = *(v15 + 8);
  if (v17 <= 6)
  {
    IOSArray_throwOutOfBoundsWithMsg(v17, 6);
  }

  *(v15 + 36) = v16;
  v18 = *(a1 + 16);
  v19 = *(v18 + 8);
  if (v19 <= 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v19, 1);
  }

  if (*(v18 + 16) == *(a1 + 88) && *(a1 + 80) <= v13)
  {
    v16 += *(a1 + 96);
  }

  v20 = (v16 / 32);
  v21 = *(a1 + 16);
  v22 = *(v21 + 8);
  if (v22 <= 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v22, 1);
  }

  v23 = [a1 isLeapYearWithInt:*(v21 + 16)];
  v24 = v16 - sub_10019F75C(v23, v20);
  v25 = sub_10019C394(v23, v20);
  v26 = __OFSUB__(v24, v25);
  if (v24 > v25)
  {
    v24 = v24 - sub_10019C394(v23, v20);
    LODWORD(v20) = v20 + 1;
  }

  v27 = (v7 - 3) % 7;
  if ((v27 & (v7 - 3)) < 0 != v26)
  {
    v28 = v27 + 7;
  }

  else
  {
    v28 = (v7 - 3) % 7;
  }

  v29 = *(a1 + 16);
  v30 = *(v29 + 8);
  if (v30 <= 7)
  {
    IOSArray_throwOutOfBoundsWithMsg(v30, 7);
  }

  *(v29 + 40) = v28 + 1;
  v31 = *(a1 + 16);
  v32 = *(v31 + 8);
  if (v32 <= 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v32, 1);
  }

  v113 = v23;
  v114 = v20;
  if (*(v31 + 16) < 1)
  {
    v38 = 0;
    goto LABEL_35;
  }

  v33 = [a1 getTimeZone];
  if (!v33)
  {
LABEL_115:
    JreThrowNullPointerException();
  }

  v34 = v33;
  v35 = *(a1 + 16);
  v36 = *(v35 + 8);
  if (v36 <= 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v36, 1);
  }

  v37 = *(v35 + 16);
  if (v36 <= 7)
  {
    IOSArray_throwOutOfBoundsWithMsg(v36, 7);
  }

  v38 = [v34 getOffsetWithInt:1 withInt:v37 withInt:v114 withInt:v24 withInt:*(*(a1 + 16) + 40) withInt:v8];
LABEL_35:
  v39 = *(a1 + 16);
  v40 = *(v39 + 8);
  if (v40 <= 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v40, 1);
  }

  if (*(v39 + 16) <= 0)
  {
    v41 = 0;
  }

  else
  {
    v41 = a3;
  }

  v42 = v38 - v41;
  if (v40 <= 16)
  {
    IOSArray_throwOutOfBoundsWithMsg(v40, 16);
  }

  *(*(a1 + 16) + 76) = v42;
  if (v38 == v41)
  {
    goto LABEL_46;
  }

  LODWORD(v8) = v42 + v8;
  if (v8 < 0)
  {
    LODWORD(v8) = v8 + 86400000;
    v43 = v7 - 1;
  }

  else
  {
    v43 = v7;
    if (v8 > 0x5265BFF)
    {
      LODWORD(v8) = v8 - 86400000;
      v43 = v7 + 1;
    }
  }

  if (v7 == v43)
  {
LABEL_46:
    v43 = v7;
  }

  else
  {
    v44 = sub_10019F824(a1, v43, a2 - a3 + v42);
    v45 = *(a1 + 16);
    v46 = *(v45 + 8);
    if (v46 <= 6)
    {
      IOSArray_throwOutOfBoundsWithMsg(v46, 6);
    }

    *(v45 + 36) = v44;
    v47 = *(a1 + 16);
    v48 = *(v47 + 8);
    if (v48 <= 1)
    {
      IOSArray_throwOutOfBoundsWithMsg(v48, 1);
    }

    if (*(v47 + 16) == *(a1 + 88) && *(a1 + 80) <= a2 - a3 + v42)
    {
      v44 += *(a1 + 96);
    }

    v49 = (v44 / 32);
    v50 = *(a1 + 16);
    v51 = *(v50 + 8);
    if (v51 <= 1)
    {
      IOSArray_throwOutOfBoundsWithMsg(v51, 1);
    }

    v52 = [a1 isLeapYearWithInt:*(v50 + 16)];
    LODWORD(v24) = v44 - sub_10019F75C(v52, v49);
    v53 = sub_10019C394(v52, v49);
    v54 = __OFSUB__(v24, v53);
    if (v24 > v53)
    {
      LODWORD(v24) = v24 - sub_10019C394(v52, v49);
      LODWORD(v49) = v49 + 1;
    }

    v55 = (v43 - 3) % 7;
    if ((v55 & (v43 - 3)) < 0 != v54)
    {
      v56 = v55 + 7;
    }

    else
    {
      v56 = (v43 - 3) % 7;
    }

    v57 = *(a1 + 16);
    v58 = *(v57 + 8);
    if (v58 <= 7)
    {
      IOSArray_throwOutOfBoundsWithMsg(v58, 7);
    }

    v114 = v49;
    v113 = v52;
    *(v57 + 40) = v56 + 1;
  }

  v59 = *(a1 + 16);
  v60 = *(v59 + 8);
  if (v60 <= 14)
  {
    IOSArray_throwOutOfBoundsWithMsg(v60, 14);
  }

  *(v59 + 68) = v8 % 1000;
  v61 = *(a1 + 16);
  v62 = *(v61 + 8);
  if (v62 < 14)
  {
    IOSArray_throwOutOfBoundsWithMsg(v62, 13);
  }

  *(v61 + 64) = v8 / 1000 % 60;
  v63 = *(a1 + 16);
  v64 = *(v63 + 8);
  if (v64 <= 12)
  {
    IOSArray_throwOutOfBoundsWithMsg(v64, 12);
  }

  *(v63 + 60) = v8 / 60000 % 60;
  v65 = v8 / 3600000 % 24;
  v66 = *(a1 + 16);
  v67 = *(v66 + 8);
  if (v67 < 12)
  {
    IOSArray_throwOutOfBoundsWithMsg(v67, 11);
  }

  *(v66 + 56) = v65;
  v68 = *(a1 + 16);
  v69 = v68[2];
  if (v69 < 12)
  {
    IOSArray_throwOutOfBoundsWithMsg(v69, 11);
  }

  v70 = *(a1 + 16);
  v68[12] = v68[14] > 11;
  v71 = *(a1 + 16);
  v72 = v71[2];
  if (v72 <= 11)
  {
    IOSArray_throwOutOfBoundsWithMsg(v72, 11);
  }

  v73 = *(a1 + 16);
  v71[13] = v71[14] % 12;
  v74 = *(a1 + 16);
  v75 = *(v74 + 8);
  if (v75 <= 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v75, 1);
  }

  v76 = *(a1 + 16);
  v77 = *(v76 + 8);
  if (*(v74 + 16) < 1)
  {
    if (v77 < 1)
    {
      IOSArray_throwOutOfBoundsWithMsg(v77, 0);
    }

    *(v76 + 12) = 0;
    v78 = *(a1 + 16);
    v79 = *(v78 + 8);
    if (v79 <= 1)
    {
      IOSArray_throwOutOfBoundsWithMsg(v79, 1);
    }

    v80 = *(a1 + 16);
    *(v78 + 16) = 1 - *(v78 + 16);
  }

  else
  {
    if (v77 <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(v77, 0);
    }

    *(v76 + 12) = 1;
  }

  v81 = *(a1 + 16);
  v82 = *(v81 + 8);
  if (v82 <= 2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v82, 2);
  }

  *(v81 + 20) = v114;
  v83 = *(a1 + 16);
  v84 = *(v83 + 8);
  if (v84 <= 5)
  {
    IOSArray_throwOutOfBoundsWithMsg(v84, 5);
  }

  *(v83 + 32) = v24;
  v85 = *(a1 + 16);
  v86 = *(v85 + 8);
  if (v86 <= 8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v86, 8);
  }

  *(v85 + 44) = (v24 - 1) / 7 + 1;
  v87 = v43 - (v24 + ([a1 getFirstDayOfWeek] - 1)) - 2;
  if (((v87 % 7) & v87) < 0 != v26)
  {
    v88 = v87 % 7 + 7;
  }

  else
  {
    v88 = v87 % 7;
  }

  v89 = (v88 + v24 - 1) / 7 + 1;
  v90 = *(a1 + 16);
  v91 = *(v90 + 8);
  if (v91 <= 4)
  {
    IOSArray_throwOutOfBoundsWithMsg(v91, 4);
  }

  *(v90 + 28) = v89;
  v92 = *(a1 + 16);
  v93 = *(v92 + 8);
  if (v93 <= 6)
  {
    IOSArray_throwOutOfBoundsWithMsg(v93, 6);
  }

  v94 = *(v92 + 36) - 1;
  v95 = v43 - (v94 + ([a1 getFirstDayOfWeek] - 1)) - 3;
  if (((v95 % 7) & v95) < 0 != v26)
  {
    v96 = v95 % 7 + 7;
  }

  else
  {
    v96 = v95 % 7;
  }

  v97 = *(a1 + 16);
  v98 = *(v97 + 8);
  if (v98 <= 6)
  {
    IOSArray_throwOutOfBoundsWithMsg(v98, 6);
  }

  v99 = (v96 + *(v97 + 36) - 1) / 7;
  if (7 - v96 >= [a1 getMinimalDaysInFirstWeek])
  {
    ++v99;
  }

  v100 = *(a1 + 16);
  v101 = v100[2];
  if (!v99)
  {
    if (v101 <= 1)
    {
      IOSArray_throwOutOfBoundsWithMsg(v101, 1);
    }

    if ([a1 isLeapYearWithInt:v100[4] - 1])
    {
      v109 = -2;
    }

    else
    {
      v109 = -1;
    }

    v110 = v109 + v96;
    v111 = (v110 - 7 * ((((147 * v110) >> 8) >> 2) + ((((147 * v110) >> 8) & 0x80) >> 7)));
    if ((v110 & v111) >= 0)
    {
      v112 = (v110 - 7 * ((((147 * v110) >> 8) >> 2) + ((((147 * v110) >> 8) & 0x80) >> 7)));
    }

    else
    {
      v112 = v111 + 7;
    }

    if (7 - v112 < [a1 getMinimalDaysInFirstWeek])
    {
      v99 = 52;
    }

    else
    {
      v99 = 53;
    }

LABEL_113:
    v107 = *(a1 + 16);
    result = *(v107 + 8);
    if (result <= 3)
    {
      goto LABEL_136;
    }

    goto LABEL_114;
  }

  if (v101 <= 6)
  {
    IOSArray_throwOutOfBoundsWithMsg(v101, 6);
  }

  if (v113)
  {
    v102 = 367;
  }

  else
  {
    v102 = 366;
  }

  if (v113)
  {
    v103 = 2;
  }

  else
  {
    v103 = 1;
  }

  v104 = v96 + v103;
  v105 = (v104 - 7 * ((((147 * v104) >> 8) >> 2) + ((((147 * v104) >> 8) & 0x80) >> 7)));
  if ((v104 & v105) >= 0)
  {
    v106 = (v104 - 7 * ((((147 * v104) >> 8) >> 2) + ((((147 * v104) >> 8) & 0x80) >> 7)));
  }

  else
  {
    v106 = v105 + 7;
  }

  if (v100[9] >= v102 - v106)
  {
    if (7 - v106 >= [a1 getMinimalDaysInFirstWeek])
    {
      v99 = 1;
    }

    goto LABEL_113;
  }

  v107 = *(a1 + 16);
  result = *(v107 + 8);
  if (result <= 3)
  {
LABEL_136:
    IOSArray_throwOutOfBoundsWithMsg(result, 3);
  }

LABEL_114:
  *(v107 + 24) = v99;
  return result;
}

unint64_t sub_10019F63C(uint64_t a1, uint64_t a2)
{
  if (a2 < 1970)
  {
    v5 = 365 * a2;
    if (*(a1 + 88) < a2)
    {
      return v5 - 719050 + (2000 - a2) / 0x64uLL - (((1972 - a2) >> 2) + (2000 - a2) / 0x190uLL);
    }

    v7 = v5 - 719050;
    v8 = a2 - 1972;
    if (a2 - 1972 < 0)
    {
      v8 = a2 - 1969;
    }

    v2 = v7 + (v8 >> 2);
LABEL_11:
    v6 = 92;
    return v2 + *(a1 + v6);
  }

  v2 = 365 * a2 - 719050 + ((a2 - 1969) >> 2);
  v3 = *(a1 + 88);
  if (v3 < a2)
  {
    return (a2 - 1601) / 0x190uLL - (a2 - 1901) / 0x64uLL + v2;
  }

  if (v3 != a2)
  {
    if (v3 - 1 == a2)
    {
      v6 = 100;
      return v2 + *(a1 + v6);
    }

    goto LABEL_11;
  }

  v6 = 96;
  return v2 + *(a1 + v6);
}

uint64_t sub_10019F75C(int a1, uint64_t a2)
{
  if (a2 >= 2 && a1)
  {
    if (qword_100554C10)
    {
      v2 = *(qword_100554C10 + 8);
      if (v2 <= a2)
      {
        IOSArray_throwOutOfBoundsWithMsg(v2, a2);
      }

      return (*(qword_100554C10 + 12 + 4 * a2) + 1);
    }

LABEL_10:
    JreThrowNullPointerException();
  }

  if (!qword_100554C10)
  {
    goto LABEL_10;
  }

  v4 = *(qword_100554C10 + 8);
  if ((a2 & 0x80000000) != 0 || v4 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v4, a2);
  }

  return *(qword_100554C10 + 12 + 4 * a2);
}

uint64_t sub_10019F824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  if (*(a1 + 80) > a3)
  {
    v5 = a2 - *(a1 + 92);
  }

  v6 = (v5 * 0x2CE33E6C02CE33E7) >> 64;
  v7 = v6 >> 63;
  v8 = v6 >> 6;
  LODWORD(v9) = 1970;
  while (1)
  {
    v10 = v8 + v7;
    if (!v10)
    {
      break;
    }

    LODWORD(v9) = v10 + v9;
    v5 = a2 - sub_10019F63C(a1, v9);
    v11 = (v5 * 0x2CE33E6C02CE33E7) >> 64;
    v7 = v11 >> 63;
    v8 = v11 >> 6;
  }

  if (v5 < 0)
  {
    v9 = (v9 - 1);
    LODWORD(v5) = v5 + sub_10019FA28(a1, v9);
  }

  v12 = *(a1 + 16);
  if (!v12)
  {
    JreThrowNullPointerException();
  }

  v13 = *(v12 + 8);
  if (v13 <= 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v13, 1);
  }

  *(v12 + 16) = v9;
  return (v5 + 1);
}

uint64_t sub_10019F944(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    JreThrowNullPointerException();
  }

  v3 = *(v1 + 8);
  if (v3 < 2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v3, 1);
  }

  v4 = [a1 isLeapYearWithInt:*(v1 + 16)];
  v5 = a1[2];
  v6 = *(v5 + 8);
  if (v6 <= 2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v6, 2);
  }

  v7 = *(v5 + 20);

  return sub_10019C394(v4, v7);
}

uint64_t sub_10019FA28(_DWORD *a1, uint64_t a2)
{
  v2 = a2;
  if ([a1 isLeapYearWithInt:a2])
  {
    result = 366;
  }

  else
  {
    result = 365;
  }

  v5 = a1[22];
  if (v5 == v2)
  {
    result = (result - a1[24]);
  }

  if (v5 - 1 == v2)
  {
    return (result - a1[25]);
  }

  return result;
}

JavaUtilGregorianCalendar *new_JavaUtilGregorianCalendar_initWithJavaUtilTimeZone_(uint64_t a1)
{
  v2 = [JavaUtilGregorianCalendar alloc];
  Default = JavaUtilLocale_getDefault();
  JavaUtilGregorianCalendar_initWithJavaUtilTimeZone_withJavaUtilLocale_(v2, a1, Default);
  return v2;
}

JavaUtilGregorianCalendar *new_JavaUtilGregorianCalendar_init()
{
  v0 = [JavaUtilGregorianCalendar alloc];
  Default = JavaUtilTimeZone_getDefault();
  v2 = JavaUtilLocale_getDefault();
  JavaUtilGregorianCalendar_initWithJavaUtilTimeZone_withJavaUtilLocale_(v0, Default, v2);
  return v0;
}

JavaUtilGregorianCalendar *new_JavaUtilGregorianCalendar_initWithLong_(uint64_t a1)
{
  v2 = [JavaUtilGregorianCalendar alloc];
  JavaUtilGregorianCalendar_initWithBoolean_(v2);
  [(JavaUtilCalendar *)v2 setTimeInMillisWithLong:a1];
  return v2;
}

JavaUtilGregorianCalendar *new_JavaUtilGregorianCalendar_initWithJavaUtilLocale_(void *a1)
{
  v2 = [JavaUtilGregorianCalendar alloc];
  Default = JavaUtilTimeZone_getDefault();
  JavaUtilGregorianCalendar_initWithJavaUtilTimeZone_withJavaUtilLocale_(v2, Default, a1);
  return v2;
}

JavaUtilGregorianCalendar *new_JavaUtilGregorianCalendar_initWithJavaUtilTimeZone_withJavaUtilLocale_(uint64_t a1, void *a2)
{
  v4 = [JavaUtilGregorianCalendar alloc];
  JavaUtilGregorianCalendar_initWithJavaUtilTimeZone_withJavaUtilLocale_(v4, a1, a2);
  return v4;
}

JavaUtilGregorianCalendar *new_JavaUtilGregorianCalendar_initWithBoolean_()
{
  v0 = [JavaUtilGregorianCalendar alloc];
  JavaUtilGregorianCalendar_initWithBoolean_(v0);
  return v0;
}

id sub_1001A0ED8(uint64_t *a1, uint64_t a2, int a3, void *a4)
{
  v4 = *a1;
  v5 = *(*a1 + 8);
  if (v5 < 6)
  {
    IOSArray_throwOutOfBoundsWithMsg(v5, 5);
  }

  if (~*(v4 + a2 + 20) + a3 + *(v4 + a2 + 20) + (*(v4 + a2 + 20) - 1) % 7 + 1 <= 6)
  {
    v6 = 4;
  }

  else
  {
    v6 = 5;
  }

  return [a4 setWithInt:v6 withInt:1];
}

void sub_1001A0F9C()
{
  v3 = *(*v0 + *v2);
  v4 = *(v1 + 32);
  if (v3 <= 5)
  {
    IOSArray_throwOutOfBoundsWithMsg(v3, 5);
  }

  JUMPOUT(0x1001A0F28);
}

id sub_1001A0FD4(uint64_t a1, _DWORD *a2, uint64_t *a3, int a4)
{
  v8 = *(a1 + 8);
  if (v8 < 2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, 1);
  }

  v9 = sub_10019FA28(a2, *(a1 + 16));
  v10 = *a3;
  v11 = *(*a3 + 8);
  if (v11 <= 7)
  {
    IOSArray_throwOutOfBoundsWithMsg(v11, 7);
  }

  v12 = *(v10 + 40);
  v13 = *a3;
  LODWORD(v13) = *(v10 + 36);
  v14 = v12 - (v13 + [a2 getFirstDayOfWeek]) + 1;
  if (((v14 % 7) & v14) < 0 != v15)
  {
    v16 = v14 % 7 + 7;
  }

  else
  {
    v16 = v14 % 7;
  }

  v17 = ((v9 + v16 - 1) / 7);
  v18 = *(*a3 + 8);
  if (v18 < 4)
  {
    IOSArray_throwOutOfBoundsWithMsg(v18, 3);
  }

  v19 = a4 + *(*a3 + 24) - 1;
  v20 = ((v17 + 1) & ((v19 & (v19 % (v17 + 1))) >> 31)) + v19 % (v17 + 1);
  if (v20 == v17)
  {
    v21 = *a3;
    v22 = *(*a3 + 8);
    if (v22 < 4)
    {
      IOSArray_throwOutOfBoundsWithMsg(v22, 3);
    }

    v23 = *a3;
    v24 = 7 * (v20 + 1 - *(v21 + 24));
    if (v22 <= 6)
    {
      IOSArray_throwOutOfBoundsWithMsg(v22, 6);
    }

    if (*(v21 + 36) > v24)
    {
      v25 = *a3;
      v26 = *(v25 + 8);
      if (v26 <= 6)
      {
        IOSArray_throwOutOfBoundsWithMsg(v26, 6);
      }

      if (*(v25 + 36) + v24 <= v9)
      {
        v17 = v17;
      }

      else
      {
        v17 = 1;
      }
    }
  }

  else
  {
    v17 = (v20 + 1);
    if (!v20)
    {
      v27 = sub_1001A0EC4();
      if (v29 ^ v15 | v28)
      {
        IOSArray_throwOutOfBoundsWithMsg(v27, 6);
      }

      v17 = 1;
    }
  }

  return [a2 setWithInt:3 withInt:v17];
}

JavaNioReadOnlyBufferException *new_JavaNioReadOnlyBufferException_init()
{
  v0 = [JavaNioReadOnlyBufferException alloc];
  JavaLangUnsupportedOperationException_init(v0, v1);
  return v0;
}

void *OrgXmlSaxHelpersParserAdapter_init(uint64_t a1)
{
  *(a1 + 64) = 0;
  v2 = [IOSObjectArray newArrayWithLength:3 type:NSString_class_()];
  JreStrongAssignAndConsume((a1 + 72), v2);
  JreStrongAssign((a1 + 80), 0);
  JreStrongAssign((a1 + 88), 0);
  *(a1 + 96) = 1;
  *(a1 + 98) = 0;
  JreStrongAssign((a1 + 16), 0);
  JreStrongAssign((a1 + 24), 0);
  JreStrongAssign((a1 + 32), 0);
  JreStrongAssign((a1 + 40), 0);
  JavaLangSystem_getPropertyWithNSString_(@"org.xml.sax.parser");
  Parser = OrgXmlSaxHelpersParserFactory_makeParser();
  return sub_1001A1610(a1, Parser);
}

void *OrgXmlSaxHelpersParserAdapter_initWithOrgXmlSaxParser_(uint64_t a1, void *a2)
{
  *(a1 + 64) = 0;
  v4 = [IOSObjectArray newArrayWithLength:3 type:NSString_class_()];
  JreStrongAssignAndConsume((a1 + 72), v4);
  JreStrongAssign((a1 + 80), 0);
  JreStrongAssign((a1 + 88), 0);
  *(a1 + 96) = 1;
  *(a1 + 98) = 0;
  JreStrongAssign((a1 + 16), 0);
  JreStrongAssign((a1 + 24), 0);
  JreStrongAssign((a1 + 32), 0);
  JreStrongAssign((a1 + 40), 0);

  return sub_1001A1610(a1, a2);
}

void *sub_1001A1610(id *a1, void *a2)
{
  if (!a2)
  {
    v7 = new_JavaLangNullPointerException_initWithNSString_(@"Parser argument must not be null");
    objc_exception_throw(v7);
  }

  JreStrongAssign(a1 + 10, a2);
  v3 = new_OrgXmlSaxHelpersAttributesImpl_init();
  JreStrongAssignAndConsume(a1 + 11, v3);
  v4 = new_OrgXmlSaxHelpersNamespaceSupport_init();
  JreStrongAssignAndConsume(a1 + 6, v4);
  v5 = [OrgXmlSaxHelpersParserAdapter_AttributeListAdapter alloc];
  objc_storeWeak(&v5->this$0_, a1);

  return JreStrongAssignAndConsume(a1 + 7, v5);
}

uint64_t sub_1001A17BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(result + 64) == 1)
  {
    v8 = JreStrcat("$$C$$", a2, a3, a4, a5, a6, a7, a8, @"Cannot change ");
    v9 = new_OrgXmlSaxSAXNotSupportedException_initWithNSString_(v8);
    objc_exception_throw(v9);
  }

  return result;
}

void sub_1001A1A28(void *a1)
{
  objc_begin_catch(a1);
  *(v1 + 64) = 0;
  objc_exception_rethrow();
}

IOSObjectArray *sub_1001A2220(void *a1, void *a2, uint64_t a3, int a4)
{
  v5 = a1[6];
  if (!v5)
  {
    goto LABEL_7;
  }

  v15 = [v5 processNameWithNSString:a2 withNSStringArray:a1[9] withBoolean:a3];
  if (!v15)
  {
    v16 = JreStrcat("$$", v8, v9, v10, v11, v12, v13, v14, @"Undeclared prefix: ");
    if (a4)
    {
      v19 = sub_1001A2574(a1, v16);
      objc_exception_throw(v19);
    }

    [a1 reportErrorWithNSString:v16];
    v15 = [IOSObjectArray arrayWithLength:3 type:NSString_class_()];
    v17 = IOSObjectArray_Set(v15, 1, &stru_100484358);
    IOSObjectArray_Set(v15, 0, v17);
    if (a2)
    {
      IOSObjectArray_Set(v15, 2, [a2 intern]);
      return v15;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  return v15;
}

OrgXmlSaxSAXParseException *sub_1001A2574(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = new_OrgXmlSaxSAXParseException_initWithNSString_withOrgXmlSaxLocator_(a2, v3);
  }

  else
  {
    v4 = new_OrgXmlSaxSAXParseException_initWithNSString_withNSString_withNSString_withInt_withInt_(a2, 0, 0, -1, -1);
  }

  return v4;
}

OrgXmlSaxHelpersParserAdapter *new_OrgXmlSaxHelpersParserAdapter_initWithOrgXmlSaxParser_(void *a1)
{
  v2 = [OrgXmlSaxHelpersParserAdapter alloc];
  OrgXmlSaxHelpersParserAdapter_initWithOrgXmlSaxParser_(v2, a1);
  return v2;
}

double JavaLangStringToReal_parseDblImplWithNSString_withInt_(void *a1, unsigned int a2)
{
  if (qword_100554C20 != -1)
  {
    sub_1001A3330();
  }

  v4 = qword_100554C18;

  return Java_java_lang_StringToReal_parseDblImpl(J2ObjC_JNIEnv, v4, a1, a2);
}

float JavaLangStringToReal_parseFltImplWithNSString_withInt_(void *a1, unsigned int a2)
{
  if (qword_100554C20 != -1)
  {
    sub_1001A3330();
  }

  v4 = qword_100554C18;

  return Java_java_lang_StringToReal_parseFltImpl(J2ObjC_JNIEnv, v4, a1, a2);
}

void sub_1001A2A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = JreStrcat("$$$$C", a2, a3, a4, a5, a6, a7, a8, @"Invalid ");
  v9 = new_JavaLangNumberFormatException_initWithNSString_(v8);
  objc_exception_throw(v9);
}

JavaLangStringToReal_StringExponentPair *sub_1001A2AE0(__CFString *a1, uint64_t a2, uint64_t a3)
{
  v6 = [JavaLangStringToReal_StringExponentPair alloc];
  if (!a2)
  {
    goto LABEL_55;
  }

  if (!a1)
  {
LABEL_54:
    JreThrowNullPointerException();
  }

  v13 = v6;
  v6->negative_ = [(__CFString *)a1 charAtWithInt:0]== 45;
  v14 = a2 - 1;
  v15 = [(__CFString *)a1 charAtWithInt:(a2 - 1)]- 68;
  if (v15 <= 0x22 && ((1 << v15) & 0x500000005) != 0)
  {
    a2 = (a2 - 1);
    if (!v14)
    {
      goto LABEL_55;
    }
  }

  v16 = JavaLangMath_maxWithInt_withInt_([(__CFString *)a1 indexOf:69], [(__CFString *)a1 indexOf:101]);
  v17 = a2;
  if (v16 != -1)
  {
    v18 = v16;
    v19 = (v16 + 1);
    if (v19 == a2)
    {
      goto LABEL_55;
    }

    v20 = [(__CFString *)a1 charAtWithInt:v19];
    if (v20 == 45 || v20 == 43)
    {
      v21 = v20 == 45;
      v19 = (v18 + 2);
    }

    else
    {
      v21 = 0;
    }

    v22 = [(__CFString *)a1 substring:v19 endIndex:a2];
    if (!v22)
    {
      goto LABEL_54;
    }

    v23 = v22;
    if ([v22 isEmpty])
    {
      goto LABEL_55;
    }

    if ([v23 length] >= 1)
    {
      v31 = 0;
      while ([v23 charAtWithInt:v31] - 58 > 0xFFFFFFF5)
      {
        v31 = (v31 + 1);
        if (v31 >= [v23 length])
        {
          goto LABEL_18;
        }
      }

LABEL_55:
      sub_1001A2A70(a1, a3, v7, v8, v9, v10, v11, v12);
    }

LABEL_18:
    v32 = JavaLangInteger_parseIntWithNSString_(v23, v24, v25, v26, v27, v28, v29, v30);
    v33 = v32;
    if (v21)
    {
      v33 = -v32;
    }

    v13->e_ = v33;
    v17 = v18;
  }

  v34 = [(__CFString *)a1 charAtWithInt:0];
  if (v34 == 43)
  {
    goto LABEL_24;
  }

  v35 = 0;
  if (v34 == 45)
  {
    v13->negative_ = 1;
LABEL_24:
    if (a2 == 1)
    {
      goto LABEL_55;
    }

    v35 = 1;
  }

  v36 = [(__CFString *)a1 indexOf:46];
  if ((v36 & 0x80000000) != 0)
  {
    v46 = [(__CFString *)a1 substring:v35 endIndex:v17];
  }

  else
  {
    v37 = v36;
    v13->e_ -= v17 + ~v36;
    v38 = [(__CFString *)a1 substring:v35 endIndex:v36];
    [(__CFString *)a1 substring:(v37 + 1) endIndex:v17];
    v46 = JreStrcat("$$", v39, v40, v41, v42, v43, v44, v45, v38);
  }

  a1 = v46;
  if (!v46)
  {
    goto LABEL_54;
  }

  v47 = [(__CFString *)v46 length];
  if (!v47)
  {
    goto LABEL_55;
  }

  v48 = 0;
  while (1)
  {
    v49 = v47;
    v50 = v48;
    v51 = __OFSUB__(v47, 1);
    v47 = (v47 - 1);
    if (((v47 & 0x80000000) != 0) ^ v51 | (v47 == 0))
    {
      break;
    }

    v52 = [(__CFString *)a1 charAtWithInt:v47];
    v48 = v50 - 1;
    if (v52 != 48)
    {
      goto LABEL_36;
    }
  }

  if (v47 < 1)
  {
    v47 = 0;
    goto LABEL_42;
  }

LABEL_36:
  v53 = 1;
  while ([(__CFString *)a1 charAtWithInt:(v53 - 1)]== 48)
  {
    if (v49 == ++v53)
    {
      goto LABEL_43;
    }
  }

  v47 = (v53 - 1);
LABEL_42:
  if (v50 | v47)
  {
LABEL_43:
    v13->e_ -= v50;
    a1 = [(__CFString *)a1 substring:v47 endIndex:v49];
  }

  if (!a1)
  {
    goto LABEL_54;
  }

  v54 = [(__CFString *)a1 length];
  e = v13->e_;
  if (v54 >= 53)
  {
    if (e > -360)
    {
      goto LABEL_50;
    }

    v56 = JavaLangMath_minWithInt_withInt_((-359 - e), v54 - 1);
    a1 = [(__CFString *)a1 substring:0 endIndex:(v54 - v56)];
    e = v13->e_ + v56;
    v13->e_ = e;
  }

  if (e <= -1025)
  {
    v13->zero_ = 1;
    return v13;
  }

LABEL_50:
  if (e < 1025)
  {
    JreStrongAssign(&v13->s_, a1);
  }

  else
  {
    v13->infinity_ = 1;
  }

  return v13;
}

float sub_1001A2EB4(void *a1, uint64_t a2)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v4 = [a1 length];
  v5 = [a1 charAtWithInt:0];
  LODWORD(v11) = 2139095040;
  v12 = v4 - 1;
  LODWORD(v13) = 2139095040;
  if (v5 == 45)
  {
    *&v11 = -INFINITY;
    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  if (v5 == 45)
  {
    v15 = v4 - 1;
  }

  else
  {
    v15 = v4;
  }

  if (v5 == 43)
  {
    v16 = INFINITY;
  }

  else
  {
    v16 = *&v11;
  }

  if (v5 == 43)
  {
    v17 = 1;
  }

  else
  {
    v17 = v14;
  }

  if (v5 != 43)
  {
    v12 = v15;
  }

  if (v12 == 3)
  {
    if (([a1 regionMatches:0 thisOffset:v17 aString:@"NaN" otherOffset:0 count:{3, v11, v13}] & 1) == 0)
    {
      goto LABEL_24;
    }

    return NAN;
  }

  else if (v12 != 8 || ([a1 regionMatches:0 thisOffset:v17 aString:@"Infinity" otherOffset:0 count:{8, v11, v13}] & 1) == 0)
  {
LABEL_24:
    sub_1001A2A70(a1, a2, v6, v17, v7, v8, v9, v10);
  }

  return v16;
}

double JavaLangStringToReal_parseDoubleWithNSString_(void *a1)
{
  if (!a1)
  {
    goto LABEL_21;
  }

  v1 = [a1 trim];
  if (!v1)
  {
    goto LABEL_21;
  }

  v2 = v1;
  v3 = [(__CFString *)v1 length];
  v10 = v3;
  if (!v3)
  {
    goto LABEL_22;
  }

  v11 = [(__CFString *)v2 charAtWithInt:(v3 - 1)];
  if (v11 == 121 || v11 == 78)
  {
    return sub_1001A2EB4(v2, 1);
  }

  if ([(__CFString *)v2 indexOfString:@"0x"]!= -1 || [(__CFString *)v2 indexOfString:@"0X"]!= -1)
  {

    return JavaLangHexStringParser_parseDoubleWithNSString_(v2);
  }

  v14 = sub_1001A2AE0(v2, v10, 1);
  if (!v14)
  {
LABEL_21:
    JreThrowNullPointerException();
  }

  v15 = v14;
  if (v14->infinity_ || v14->zero_)
  {
    [(JavaLangStringToReal_StringExponentPair *)v14 specialValue];
    return v12;
  }

  v16 = JavaLangStringToReal_parseDblImplWithNSString_withInt_(v14->s_, v14->e_);
  if (JavaLangDouble_doubleToRawLongBitsWithDouble_(v16) == -1)
  {
LABEL_22:
    sub_1001A2A70(v2, 1, v4, v5, v6, v7, v8, v9);
  }

  result = -v16;
  if (!v15->negative_)
  {
    return v16;
  }

  return result;
}

void JavaLangStringToReal_parseFloatWithNSString_(void *a1)
{
  if (!a1)
  {
    goto LABEL_22;
  }

  v1 = [a1 trim];
  if (!v1)
  {
    goto LABEL_22;
  }

  v2 = v1;
  v3 = [(__CFString *)v1 length];
  v10 = v3;
  if (!v3)
  {
    goto LABEL_23;
  }

  v11 = [(__CFString *)v2 charAtWithInt:(v3 - 1)];
  if (v11 == 121 || v11 == 78)
  {

    sub_1001A2EB4(v2, 0);
    return;
  }

  if ([(__CFString *)v2 indexOfString:@"0x"]!= -1 || [(__CFString *)v2 indexOfString:@"0X"]!= -1)
  {

    JavaLangHexStringParser_parseFloatWithNSString_(v2);
    return;
  }

  v12 = sub_1001A2AE0(v2, v10, 0);
  if (!v12)
  {
LABEL_22:
    JreThrowNullPointerException();
  }

  v13 = v12;
  if (!v12->infinity_ && !v12->zero_)
  {
    v14 = JavaLangStringToReal_parseFltImplWithNSString_withInt_(v12->s_, v12->e_);
    if (JavaLangFloat_floatToRawIntBitsWithFloat_(v14) != -1)
    {
      v13->negative_;
      return;
    }

LABEL_23:
    sub_1001A2A70(v2, 0, v4, v5, v6, v7, v8, v9);
  }

  [(JavaLangStringToReal_StringExponentPair *)v12 specialValue];
}

id JavaUtilLoggingLogManager_init(id *a1)
{
  v2 = new_JavaUtilHashtable_init();
  JreStrongAssignAndConsume(a1 + 1, v2);
  v3 = new_JavaUtilProperties_init();
  JreStrongAssignAndConsume(a1 + 2, v3);
  v4 = new_JavaBeansPropertyChangeSupport_initWithId_(a1);
  JreStrongAssignAndConsume(a1 + 3, v4);
  Runtime = JavaLangRuntime_getRuntime();
  if (!Runtime)
  {
    JreThrowNullPointerException();
  }

  v6 = Runtime;
  v7 = [JavaUtilLoggingLogManager__1 alloc];
  JreStrongAssign(&v7->this$0_, a1);
  JavaLangThread_init(v7);
  v8 = v7;

  return [v6 addShutdownHookWithJavaLangThread:v8];
}

id sub_1001A34F0(void *a1, uint64_t a2, void *a3)
{
  v6 = a3;
  do
  {
    if (!v6)
    {
      goto LABEL_33;
    }

    v7 = [v6 lastIndexOf:46];
    if (v7 == -1)
    {
      goto LABEL_9;
    }

    v6 = [v6 substring:0 endIndex:v7];
    v8 = a1[1];
    if (!v8)
    {
      goto LABEL_33;
    }

    v9 = [v8 getWithId:v6];
    if (v9)
    {
      LoggerWithNSString = v9;
      goto LABEL_13;
    }
  }

  while (![a1 getPropertyWithNSString:{JreStrcat("$$", v10, v11, v12, v13, v14, v15, v16, v6)}] && !objc_msgSend(a1, "getPropertyWithNSString:", JreStrcat("$$", v17, v18, v19, v20, v21, v22, v23, v6)));
  LoggerWithNSString = JavaUtilLoggingLogger_getLoggerWithNSString_(v6);
  [a1 setParentWithJavaUtilLoggingLogger:a2 withJavaUtilLoggingLogger:LoggerWithNSString];
  if (!LoggerWithNSString)
  {
LABEL_9:
    v32 = a1[1];
    if (!v32)
    {
      goto LABEL_33;
    }

    LoggerWithNSString = [v32 getWithId:&stru_100484358];
    if (!LoggerWithNSString)
    {
      goto LABEL_14;
    }

LABEL_13:
    [a1 setParentWithJavaUtilLoggingLogger:a2 withJavaUtilLoggingLogger:LoggerWithNSString];
  }

LABEL_14:
  v33 = JreStrcat("$C", v25, v26, v27, v28, v29, v30, v31, a3);
  v34 = a1[1];
  if (!v34 || (v35 = [v34 values], v46 = 0u, v47 = 0u, v48 = 0u, v49 = 0u, !v35))
  {
LABEL_33:
    JreThrowNullPointerException();
  }

  v36 = v35;
  result = [v35 countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (result)
  {
    v38 = result;
    v39 = *v47;
    do
    {
      v40 = 0;
      do
      {
        if (*v47 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v46 + 1) + 8 * v40);
        if (!v41)
        {
          goto LABEL_33;
        }

        v42 = [*(*(&v46 + 1) + 8 * v40) getParent];
        if (LoggerWithNSString == v42)
        {
          if (!a3)
          {
            goto LABEL_33;
          }

          v43 = v42;
          if (![a3 length])
          {
            goto LABEL_27;
          }

          v44 = [v41 getName];
          if (!v44)
          {
            goto LABEL_33;
          }

          if ([v44 hasPrefix:v33])
          {
LABEL_27:
            [v41 setParentWithJavaUtilLoggingLogger:a2];
            if (LoggerWithNSString)
            {
              v45 = v43[4];
              if (!v45)
              {
                goto LABEL_33;
              }

              [v45 removeWithId:v41];
            }
          }
        }

        v40 = v40 + 1;
      }

      while (v38 != v40);
      result = [v36 countByEnumeratingWithState:&v46 objects:v50 count:16];
      v38 = result;
    }

    while (result);
  }

  return result;
}

id JavaUtilLoggingLogManager_getInstanceByClassWithNSString_(uint64_t a1)
{
  if ((atomic_load_explicit(JavaUtilLoggingLogManager__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001A47CC();
  }

  SystemClassLoader = JavaLangClassLoader_getSystemClassLoader();
  if (!SystemClassLoader || (v3 = [SystemClassLoader loadClassWithNSString:a1]) == 0)
  {
    JreThrowNullPointerException();
  }

  return [v3 newInstance];
}

uint64_t sub_1001A3BF0(uint64_t a1, uint64_t a2)
{
  objc_sync_enter(a1);
  [a1 reset];
  v4 = *(a1 + 16);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  [v4 load__WithJavaIoInputStream:a2];
  v5 = *(a1 + 8);
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  v6 = [v5 getWithId:&stru_100484358];
  if (v6)
  {
    [v6 setManagerWithJavaUtilLoggingLogManager:a1];
  }

  v7 = [*(a1 + 16) getPropertyWithNSString:@"config"];
  if (v7)
  {
      ;
    }
  }

  v9 = [*(a1 + 8) values];
  v10 = v9;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  if (!v9)
  {
    JreThrowNullPointerException();
  }

  v11 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v11)
  {
    v12 = *v28;
    do
    {
      for (j = 0; j != v11; j = j + 1)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v27 + 1) + 8 * j);
        if (!v14)
        {
          JreThrowNullPointerException();
        }

        v15 = *(a1 + 16);
        v16 = [*(*(&v27 + 1) + 8 * j) getName];
        v24 = [v15 getPropertyWithNSString:{JreStrcat("$$", v17, v18, v19, v20, v21, v22, v23, v16)}];
        if (v24)
        {
          [v14 setLevelWithJavaUtilLoggingLevel:JavaUtilLoggingLevel_parseWithNSString_(v24)];
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v11);
  }

  v25 = *(a1 + 24);
  if (!v25)
  {
    JreThrowNullPointerException();
  }

  [v25 firePropertyChangeWithNSString:0 withId:0 withId:0];
  return objc_sync_exit(a1);
}

void JavaUtilLoggingLogManager_getLoggingMXBean()
{
  if ((atomic_load_explicit(JavaUtilLoggingLogManager__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  v0 = new_JavaLangUnsupportedOperationException_init();
  objc_exception_throw(v0);
}

uint64_t JavaUtilLoggingLogManager_getLogManager()
{
  if ((atomic_load_explicit(JavaUtilLoggingLogManager__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001A47CC();
  }

  return JavaUtilLoggingLogManager_manager_;
}

uint64_t JavaUtilLoggingLogManager_class_()
{
  if ((atomic_load_explicit(JavaUtilLoggingLogManager__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001A47CC();
  }

  if (qword_100554C38 != -1)
  {
    sub_1001A47E4();
  }

  return qword_100554C30;
}

IOSObjectArray *JavaUtilRegexSplitter_fastSplitWithNSString_withNSString_withInt_(void *a1, void *a2, int a3)
{
  if (!a1)
  {
    goto LABEL_27;
  }

  v6 = [a1 length];
  if (!v6)
  {
    return 0;
  }

  v7 = [a1 charAtWithInt:0];
  if (v6 != 1)
  {
    result = 0;
    if (v6 != 2 || v7 != 92)
    {
      return result;
    }

    v7 = [a1 charAtWithInt:1];
    if (off_100550270)
    {
      if ([off_100550270 indexOf:v7] == -1)
      {
        return 0;
      }

      goto LABEL_12;
    }

LABEL_27:
    JreThrowNullPointerException();
  }

  if (!off_100550270)
  {
    goto LABEL_27;
  }

  if ([off_100550270 indexOf:v7] != -1)
  {
    return 0;
  }

LABEL_12:
  if (!a2)
  {
    goto LABEL_27;
  }

  if ([a2 isEmpty])
  {
    v14 = &stru_100484358;
    return [IOSObjectArray arrayWithObjects:&v14 count:1 type:NSString_class_()];
  }

  else
  {
    v9 = new_JavaUtilArrayList_init();
    if (a3 >= 1)
    {
      v10 = a3;
    }

    else
    {
      v10 = 0x7FFFFFFF;
    }

    v11 = [a2 indexOf:v7 fromIndex:0];
    if (v11 == -1)
    {
      v13 = 0;
    }

    else
    {
      v12 = v11;
      v13 = 0;
      do
      {
        if ([(JavaUtilArrayList *)v9 size]+ 1 >= v10)
        {
          break;
        }

        -[JavaUtilArrayList addWithId:](v9, "addWithId:", [a2 substring:v13 endIndex:v12]);
        v13 = (v12 + 1);
        v12 = [a2 indexOf:v7 fromIndex:v13];
      }

      while (v12 != -1);
    }

    return sub_1001A4BF0(v9, a2, v13, a3);
  }
}

IOSObjectArray *JavaUtilRegexSplitter_splitWithJavaUtilRegexPattern_withNSString_withNSString_withInt_(uint64_t a1, void *a2, void *a3, int a4)
{
  result = JavaUtilRegexSplitter_fastSplitWithNSString_withNSString_withInt_(a2, a3, a4);
  if (!result)
  {
    if (!a3)
    {
      JreThrowNullPointerException();
    }

    if ([a3 isEmpty])
    {
      v12 = &stru_100484358;
      return [IOSObjectArray arrayWithObjects:&v12 count:1 type:NSString_class_()];
    }

    else
    {
      v8 = new_JavaUtilArrayList_init();
      if (a4 >= 1)
      {
        v9 = a4;
      }

      else
      {
        v9 = 0x7FFFFFFF;
      }

      v10 = new_JavaUtilRegexMatcher_initWithJavaUtilRegexPattern_withJavaLangCharSequence_(a1, a3);
      v11 = 0;
      if ([(JavaUtilRegexMatcher *)v10 find])
      {
        do
        {
          if ([(JavaUtilArrayList *)v8 size]+ 1 >= v9)
          {
            break;
          }

          -[JavaUtilArrayList addWithId:](v8, "addWithId:", [a3 substring:v11 endIndex:{-[JavaUtilRegexMatcher start](v10, "start")}]);
          v11 = [(JavaUtilRegexMatcher *)v10 end];
        }

        while ([(JavaUtilRegexMatcher *)v10 find]);
      }

      return sub_1001A4BF0(v8, a3, v11, a4);
    }
  }

  return result;
}

id sub_1001A4BF0(void *a1, void *a2, uint64_t a3, int a4)
{
  if (!a2)
  {
    goto LABEL_18;
  }

  if ([a2 length] <= a3)
  {
    if (a4)
    {
      if (!a1)
      {
        goto LABEL_18;
      }

      [a1 addWithId:&stru_100484358];
      goto LABEL_15;
    }

    if (!a1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (!a1)
    {
      goto LABEL_18;
    }

    [a1 addWithId:{objc_msgSend(a2, "substring:", a3)}];
    if (a4)
    {
      goto LABEL_15;
    }
  }

  v8 = [a1 size];
  if ((v8 - 1) >= 0)
  {
    LODWORD(v9) = v8;
    while (1)
    {
      v9 = (v9 - 1);
      v10 = [a1 getWithInt:v9];
      if (!v10)
      {
        break;
      }

      if ([v10 isEmpty])
      {
        [a1 removeWithInt:v9];
        if (v9 > 0)
        {
          continue;
        }
      }

      goto LABEL_15;
    }

LABEL_18:
    JreThrowNullPointerException();
  }

LABEL_15:
  v11 = +[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", [a1 size], NSString_class_());

  return [a1 toArrayWithNSObjectArray:v11];
}

uint64_t JavaUtilRandomAccess_class_()
{
  if (qword_100554C48 != -1)
  {
    sub_1001A4D80();
  }

  return qword_100554C40;
}

id JavaUtilLinkedList_init(uint64_t a1)
{
  JavaUtilAbstractSequentialList_init();
  *(a1 + 12) = 0;
  v2 = new_JavaUtilLinkedList_Link_initWithId_withJavaUtilLinkedList_Link_withJavaUtilLinkedList_Link_(0, 0, 0);
  JreStrongAssignAndConsume((a1 + 16), v2);
  objc_storeWeak((*(a1 + 16) + 16), *(a1 + 16));
  v3 = *(a1 + 16);

  return JreStrongAssign(v3 + 3, v3);
}

JavaUtilLinkedList_Link *new_JavaUtilLinkedList_Link_initWithId_withJavaUtilLinkedList_Link_withJavaUtilLinkedList_Link_(void *a1, void *a2, void *a3)
{
  v6 = [JavaUtilLinkedList_Link alloc];
  JreStrongAssign(&v6->data_, a1);
  objc_storeWeak(&v6->previous_, a2);
  JreStrongAssign(&v6->next_, a3);
  return v6;
}

id sub_1001A501C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (!v2 || (Weak = objc_loadWeak((v2 + 16)), v6 = new_JavaUtilLinkedList_Link_initWithId_withJavaUtilLinkedList_Link_withJavaUtilLinkedList_Link_(a2, Weak, *(a1 + 16)), objc_storeWeak((*(a1 + 16) + 16), v6), !Weak))
  {
    JreThrowNullPointerException();
  }

  result = JreStrongAssign(Weak + 3, v6);
  ++*(a1 + 12);
  ++*(a1 + 8);
  return result;
}

id sub_1001A54DC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (!v2 || (v4 = v2[3], v5 = new_JavaUtilLinkedList_Link_initWithId_withJavaUtilLinkedList_Link_withJavaUtilLinkedList_Link_(a2, v2, v4), JreStrongAssign((*(a1 + 16) + 24), v5), !v4))
  {
    JreThrowNullPointerException();
  }

  result = objc_storeWeak(v4 + 2, v5);
  ++*(a1 + 12);
  ++*(a1 + 8);
  return result;
}

uint64_t sub_1001A5C14(void *a1, void *a2)
{
  v4 = [JavaUtilLinkedList_LinkIterator alloc];
  sub_1001A67CC(v4, a1, 0);
  v5 = v4;

  return sub_1001A5FDC(a2, v5);
}

uint64_t sub_1001A5FDC(void *a1, void *a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v4 = [a2 hasNext];
  v5 = v4;
  if (v4)
  {
    do
    {
      v6 = [a2 next];
      if (a1)
      {
        if ([a1 isEqual:v6])
        {
          goto LABEL_9;
        }
      }

      else if (!v6)
      {
LABEL_9:
        [a2 remove];
        return v5 & 1;
      }

      v5 = [a2 hasNext];
    }

    while ((v5 & 1) != 0);
  }

  return v5 & 1;
}

JavaUtilLinkedList *new_JavaUtilLinkedList_init()
{
  v0 = [JavaUtilLinkedList alloc];
  JavaUtilLinkedList_init(v0);
  return v0;
}

id sub_1001A67CC(uint64_t a1, void *a2, int a3)
{
  JreStrongAssign((a1 + 16), a2);
  v5 = *(a1 + 16);
  if (!v5)
  {
    goto LABEL_12;
  }

  *(a1 + 12) = *(v5 + 8);
  if (a3 < 0 || *(v5 + 12) < a3)
  {
    v12 = new_JavaLangIndexOutOfBoundsException_init();
    objc_exception_throw(v12);
  }

  result = objc_storeWeak((a1 + 24), *(v5 + 16));
  v7 = *(*(a1 + 16) + 12);
  if (a3 >= v7 / 2)
  {
    while (1)
    {
      *(a1 + 8) = v7;
      if (v7 < a3)
      {
        break;
      }

      Weak = objc_loadWeak((a1 + 24));
      if (!Weak)
      {
        goto LABEL_12;
      }

      v11 = objc_loadWeak(Weak + 2);
      result = objc_storeWeak((a1 + 24), v11);
      v7 = *(a1 + 8) - 1;
    }
  }

  else
  {
    *(a1 + 8) = -1;
    if (a3)
    {
      while (1)
      {
        v8 = objc_loadWeak((a1 + 24));
        if (!v8)
        {
          break;
        }

        result = objc_storeWeak((a1 + 24), v8[3]);
        v9 = *(a1 + 8);
        *(a1 + 8) = v9 + 1;
        if (v9 + 2 >= a3)
        {
          return result;
        }
      }

LABEL_12:
      JreThrowNullPointerException();
    }
  }

  return result;
}

id sub_1001A6E54(uint64_t a1, void *a2)
{
  JreStrongAssign((a1 + 16), a2);
  v3 = *(a1 + 16);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  *(a1 + 8) = *(v3 + 8);
  result = JreStrongAssign((a1 + 24), *(v3 + 16));
  *(a1 + 32) = 0;
  return result;
}

JavaNioCharSequenceAdapter *JavaNioCharSequenceAdapter_copy__WithJavaNioCharSequenceAdapter_(uint64_t a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v2 = *(a1 + 40);
  v3 = [JavaNioCharSequenceAdapter alloc];
  JavaNioCharSequenceAdapter_initWithJavaLangCharSequence_(v3, v2);
  result = v3;
  result->super.super.limit_ = *(a1 + 12);
  result->super.super.position_ = *(a1 + 20);
  result->super.super.mark_ = *(a1 + 16);
  return result;
}

id JavaNioCharSequenceAdapter_initWithJavaLangCharSequence_(uint64_t a1, void *a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v4 = [a2 length];
  JavaNioCharBuffer_initWithInt_withLong_(a1, v4, 0, v5, v6, v7, v8, v9);

  return JreStrongAssign((a1 + 40), a2);
}

JavaNioCharSequenceAdapter *new_JavaNioCharSequenceAdapter_initWithJavaLangCharSequence_(void *a1)
{
  v2 = [JavaNioCharSequenceAdapter alloc];
  JavaNioCharSequenceAdapter_initWithJavaLangCharSequence_(v2, a1);
  return v2;
}

id JavaNetProxy_initWithJavaNetProxy_TypeEnum_withJavaNetSocketAddress_(uint64_t a1, void *a2, void *a3)
{
  if (atomic_load_explicit(JavaNetProxy_TypeEnum__initialized, memory_order_acquire))
  {
    if (!a3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_10014A084();
    if (!a3)
    {
LABEL_8:
      v7 = new_JavaLangIllegalArgumentException_initWithNSString_(@"Illegal Proxy.Type or SocketAddress argument");
      objc_exception_throw(v7);
    }
  }

  if (JavaNetProxy_TypeEnum_values_ == a2)
  {
    goto LABEL_8;
  }

  JreStrongAssign((a1 + 8), a2);

  return JreStrongAssign((a1 + 16), a3);
}

id sub_1001A770C(uint64_t a1)
{
  if ((atomic_load_explicit(JavaNetProxy_TypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014A084();
  }

  JreStrongAssign((a1 + 8), JavaNetProxy_TypeEnum_values_);

  return JreStrongAssign((a1 + 16), 0);
}

IOSObjectArray *JavaNetProxy_TypeEnum_values()
{
  if ((atomic_load_explicit(JavaNetProxy_TypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014A084();
  }

  v0 = JavaNetProxy_TypeEnum_class_();

  return [IOSObjectArray arrayWithObjects:&JavaNetProxy_TypeEnum_values_ count:3 type:v0];
}

void *JavaNetProxy_TypeEnum_valueOfWithNSString_(void *a1)
{
  if ((atomic_load_explicit(JavaNetProxy_TypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014A084();
  }

  v2 = 0;
  while (1)
  {
    v3 = JavaNetProxy_TypeEnum_values_[v2];
    if ([a1 isEqual:{objc_msgSend(v3, "name")}])
    {
      break;
    }

    if (++v2 == 3)
    {
      objc_exception_throw([[JavaLangIllegalArgumentException alloc] initWithNSString:a1]);
    }
  }

  return v3;
}