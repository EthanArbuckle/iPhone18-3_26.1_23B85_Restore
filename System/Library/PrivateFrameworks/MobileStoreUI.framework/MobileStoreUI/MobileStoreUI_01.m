__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, unsigned int (**a5)(__n128 *, __n128 *))
{
  v10 = *a5;
  v11 = a2[1];
  v106 = *a2;
  v107 = v11;
  v12 = a2[3];
  v108 = a2[2];
  v109 = v12;
  v13 = a1[1];
  v102 = *a1;
  v103 = v13;
  v14 = a1[3];
  v104 = a1[2];
  v105 = v14;
  v15 = v10(&v106, &v102);
  v16 = *a5;
  if (v15)
  {
    v17 = a3[1];
    v106 = *a3;
    v107 = v17;
    v18 = a3[3];
    v108 = a3[2];
    v109 = v18;
    v19 = a2[1];
    v102 = *a2;
    v103 = v19;
    v20 = a2[3];
    v104 = a2[2];
    v105 = v20;
    if (v16(&v106, &v102))
    {
      v22 = a1[2];
      v21 = a1[3];
      v24 = *a1;
      v23 = a1[1];
      v25 = a3[3];
      v27 = *a3;
      v26 = a3[1];
      a1[2] = a3[2];
      a1[3] = v25;
      *a1 = v27;
      a1[1] = v26;
LABEL_9:
      *a3 = v24;
      a3[1] = v23;
      a3[2] = v22;
      a3[3] = v21;
      goto LABEL_10;
    }

    v52 = a1[2];
    v51 = a1[3];
    v54 = *a1;
    v53 = a1[1];
    v55 = a2[3];
    v57 = *a2;
    v56 = a2[1];
    a1[2] = a2[2];
    a1[3] = v55;
    *a1 = v57;
    a1[1] = v56;
    *a2 = v54;
    a2[1] = v53;
    a2[2] = v52;
    a2[3] = v51;
    v58 = *a5;
    v59 = a3[1];
    v106 = *a3;
    v107 = v59;
    v60 = a3[3];
    v108 = a3[2];
    v109 = v60;
    v61 = a2[1];
    v102 = *a2;
    v103 = v61;
    v62 = a2[3];
    v104 = a2[2];
    v105 = v62;
    if (v58(&v106, &v102))
    {
      v22 = a2[2];
      v21 = a2[3];
      v24 = *a2;
      v23 = a2[1];
      v63 = a3[3];
      v65 = *a3;
      v64 = a3[1];
      a2[2] = a3[2];
      a2[3] = v63;
      *a2 = v65;
      a2[1] = v64;
      goto LABEL_9;
    }
  }

  else
  {
    v28 = a3[1];
    v106 = *a3;
    v107 = v28;
    v29 = a3[3];
    v108 = a3[2];
    v109 = v29;
    v30 = a2[1];
    v102 = *a2;
    v103 = v30;
    v31 = a2[3];
    v104 = a2[2];
    v105 = v31;
    if (v16(&v106, &v102))
    {
      v33 = a2[2];
      v32 = a2[3];
      v35 = *a2;
      v34 = a2[1];
      v36 = a3[3];
      v38 = *a3;
      v37 = a3[1];
      a2[2] = a3[2];
      a2[3] = v36;
      *a2 = v38;
      a2[1] = v37;
      *a3 = v35;
      a3[1] = v34;
      a3[2] = v33;
      a3[3] = v32;
      v39 = *a5;
      v40 = a2[1];
      v106 = *a2;
      v107 = v40;
      v41 = a2[3];
      v108 = a2[2];
      v109 = v41;
      v42 = a1[1];
      v102 = *a1;
      v103 = v42;
      v43 = a1[3];
      v104 = a1[2];
      v105 = v43;
      if (v39(&v106, &v102))
      {
        v45 = a1[2];
        v44 = a1[3];
        v47 = *a1;
        v46 = a1[1];
        v48 = a2[3];
        v50 = *a2;
        v49 = a2[1];
        a1[2] = a2[2];
        a1[3] = v48;
        *a1 = v50;
        a1[1] = v49;
        *a2 = v47;
        a2[1] = v46;
        a2[2] = v45;
        a2[3] = v44;
      }
    }
  }

LABEL_10:
  v66 = *a5;
  v67 = a4[1];
  v106 = *a4;
  v107 = v67;
  v68 = a4[3];
  v108 = a4[2];
  v109 = v68;
  v69 = a3[1];
  v102 = *a3;
  v103 = v69;
  v70 = a3[3];
  v104 = a3[2];
  v105 = v70;
  if (v66(&v106, &v102))
  {
    v73 = a3[2];
    v72 = a3[3];
    v75 = *a3;
    v74 = a3[1];
    v76 = a4[3];
    v78 = *a4;
    v77 = a4[1];
    a3[2] = a4[2];
    a3[3] = v76;
    *a3 = v78;
    a3[1] = v77;
    *a4 = v75;
    a4[1] = v74;
    a4[2] = v73;
    a4[3] = v72;
    v79 = *a5;
    v80 = a3[1];
    v106 = *a3;
    v107 = v80;
    v81 = a3[3];
    v108 = a3[2];
    v109 = v81;
    v82 = a2[1];
    v102 = *a2;
    v103 = v82;
    v83 = a2[3];
    v104 = a2[2];
    v105 = v83;
    if (v79(&v106, &v102))
    {
      v85 = a2[2];
      v84 = a2[3];
      v87 = *a2;
      v86 = a2[1];
      v88 = a3[3];
      v90 = *a3;
      v89 = a3[1];
      a2[2] = a3[2];
      a2[3] = v88;
      *a2 = v90;
      a2[1] = v89;
      *a3 = v87;
      a3[1] = v86;
      a3[2] = v85;
      a3[3] = v84;
      v91 = *a5;
      v92 = a2[1];
      v106 = *a2;
      v107 = v92;
      v93 = a2[3];
      v108 = a2[2];
      v109 = v93;
      v94 = a1[1];
      v102 = *a1;
      v103 = v94;
      v95 = a1[3];
      v104 = a1[2];
      v105 = v95;
      if (v91(&v106, &v102))
      {
        v96 = a1[2];
        result = a1[3];
        v98 = *a1;
        v97 = a1[1];
        v99 = a2[3];
        v101 = *a2;
        v100 = a2[1];
        a1[2] = a2[2];
        a1[3] = v99;
        *a1 = v101;
        a1[1] = v100;
        *a2 = v98;
        a2[1] = v97;
        a2[2] = v96;
        a2[3] = result;
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*>(uint64_t result, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  if (result != a2)
  {
    v39 = v3;
    v40 = v4;
    v6 = result;
    v7 = (result + 64);
    if ((result + 64) != a2)
    {
      v9 = 0;
      v10 = result;
      do
      {
        v11 = v10;
        v10 = v7;
        v12 = *a3;
        v13 = v10[1];
        v35 = *v10;
        v36 = v13;
        v14 = v10[3];
        v37 = v10[2];
        v38 = v14;
        v15 = *v11;
        v16 = v11[1];
        v17 = v11[3];
        v33 = v11[2];
        v34 = v17;
        v31 = v15;
        v32 = v16;
        result = v12(&v35, &v31);
        if (result)
        {
          v18 = v10[1];
          v35 = *v10;
          v36 = v18;
          v19 = v10[3];
          v37 = v10[2];
          v38 = v19;
          v20 = v9;
          while (1)
          {
            v21 = (v6 + v20);
            v22 = *(v6 + v20 + 16);
            v21[4] = *(v6 + v20);
            v21[5] = v22;
            v23 = *(v6 + v20 + 48);
            v21[6] = *(v6 + v20 + 32);
            v21[7] = v23;
            if (!v20)
            {
              break;
            }

            v24 = *a3;
            v31 = v35;
            v32 = v36;
            v33 = v37;
            v34 = v38;
            v25 = *(v21 - 3);
            v30[0] = *(v21 - 4);
            v30[1] = v25;
            v26 = *(v21 - 1);
            v30[2] = *(v21 - 2);
            v30[3] = v26;
            result = v24(&v31, v30);
            v20 -= 64;
            if ((result & 1) == 0)
            {
              v27 = (v6 + v20 + 64);
              goto LABEL_10;
            }
          }

          v27 = v6;
LABEL_10:
          v28 = v36;
          *v27 = v35;
          v27[1] = v28;
          v29 = v38;
          v27[2] = v37;
          v27[3] = v29;
        }

        v7 = v10 + 4;
        v9 += 64;
      }

      while (v10 + 4 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*>(uint64_t result, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  if (result != a2)
  {
    v36 = v3;
    v37 = v4;
    v6 = result;
    for (i = (result + 64); v6 + 4 != a2; i = v6 + 4)
    {
      v9 = v6;
      v6 = i;
      v10 = *a3;
      v11 = v6[1];
      v32 = *v6;
      v33 = v11;
      v12 = v6[3];
      v34 = v6[2];
      v35 = v12;
      v13 = *v9;
      v14 = v9[1];
      v15 = v9[3];
      v30 = v9[2];
      v31 = v15;
      v28 = v13;
      v29 = v14;
      result = v10(&v32, &v28);
      if (result)
      {
        v16 = v6[1];
        v32 = *v6;
        v33 = v16;
        v17 = v6[3];
        v34 = v6[2];
        v35 = v17;
        v18 = v6;
        do
        {
          v19 = v18 - 4;
          v20 = *(v18 - 3);
          *v18 = *(v18 - 4);
          v18[1] = v20;
          v21 = *(v18 - 1);
          v18[2] = *(v18 - 2);
          v18[3] = v21;
          v22 = *a3;
          v28 = v32;
          v29 = v33;
          v30 = v34;
          v31 = v35;
          v23 = *(v18 - 7);
          v27[0] = *(v18 - 8);
          v27[1] = v23;
          v24 = *(v18 - 5);
          v27[2] = *(v18 - 6);
          v27[3] = v24;
          result = v22(&v28, v27);
          v18 = v19;
        }

        while ((result & 1) != 0);
        v25 = v33;
        *v19 = v32;
        v19[1] = v25;
        v26 = v35;
        v19[2] = v34;
        v19[3] = v26;
      }
    }
  }

  return result;
}

__int128 *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,sortColorEntry *,BOOL (*&)(sortColorEntry,sortColorEntry)>(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v4 = a2;
  v6 = a1[1];
  v59 = *a1;
  v60 = v6;
  v7 = a1[3];
  v9 = *a1;
  v8 = a1[1];
  v61 = a1[2];
  v62 = v7;
  v10 = *a3;
  v63 = v9;
  v64 = v8;
  v11 = a1[3];
  v65 = a1[2];
  v66 = v11;
  v12 = *(a2 - 3);
  v55 = *(a2 - 4);
  v56 = v12;
  v13 = *(a2 - 1);
  v57 = *(a2 - 2);
  v58 = v13;
  if (v10(&v63, &v55))
  {
    v14 = a1;
    do
    {
      v15 = v14 + 4;
      v16 = *a3;
      v63 = v59;
      v64 = v60;
      v65 = v61;
      v66 = v62;
      v17 = v14[5];
      v55 = v14[4];
      v56 = v17;
      v18 = v14[7];
      v57 = v14[6];
      v58 = v18;
      v19 = v16(&v63, &v55);
      v14 = v15;
    }

    while ((v19 & 1) == 0);
  }

  else
  {
    v20 = a1 + 4;
    do
    {
      v15 = v20;
      if (v20 >= v4)
      {
        break;
      }

      v21 = *a3;
      v63 = v59;
      v64 = v60;
      v65 = v61;
      v66 = v62;
      v22 = v15[1];
      v55 = *v15;
      v56 = v22;
      v23 = v15[3];
      v57 = v15[2];
      v58 = v23;
      v24 = v21(&v63, &v55);
      v20 = v15 + 4;
    }

    while (!v24);
  }

  if (v15 >= v4)
  {
    v25 = v4;
  }

  else
  {
    do
    {
      v25 = v4 - 4;
      v26 = *a3;
      v63 = v59;
      v64 = v60;
      v65 = v61;
      v66 = v62;
      v27 = *(v4 - 3);
      v55 = *(v4 - 4);
      v56 = v27;
      v28 = *(v4 - 1);
      v57 = *(v4 - 2);
      v58 = v28;
      v4 -= 4;
    }

    while ((v26(&v63, &v55) & 1) != 0);
  }

  while (v15 < v25)
  {
    v29 = *v15;
    v30 = v15[1];
    v31 = v15[3];
    v65 = v15[2];
    v66 = v31;
    v63 = v29;
    v64 = v30;
    v32 = *v25;
    v33 = v25[1];
    v34 = v25[3];
    v15[2] = v25[2];
    v15[3] = v34;
    *v15 = v32;
    v15[1] = v33;
    v35 = v63;
    v36 = v64;
    v37 = v66;
    v25[2] = v65;
    v25[3] = v37;
    *v25 = v35;
    v25[1] = v36;
    do
    {
      v63 = v59;
      v64 = v60;
      v65 = v61;
      v66 = v62;
      v38 = v15[5];
      v55 = v15[4];
      v56 = v38;
      v39 = v15[6];
      v40 = v15[7];
      v15 += 4;
      v41 = *a3;
      v57 = v39;
      v58 = v40;
    }

    while (!v41(&v63, &v55));
    do
    {
      v63 = v59;
      v64 = v60;
      v65 = v61;
      v66 = v62;
      v42 = *(v25 - 4);
      v43 = *(v25 - 3);
      v44 = *(v25 - 2);
      v45 = *(v25 - 1);
      v25 -= 4;
      v46 = *a3;
      v57 = v44;
      v58 = v45;
      v55 = v42;
      v56 = v43;
    }

    while ((v46(&v63, &v55) & 1) != 0);
  }

  v47 = v15 - 4;
  if (v15 - 4 != a1)
  {
    v48 = *v47;
    v49 = *(v15 - 3);
    v50 = *(v15 - 1);
    a1[2] = *(v15 - 2);
    a1[3] = v50;
    *a1 = v48;
    a1[1] = v49;
  }

  v51 = v59;
  v52 = v60;
  v53 = v62;
  *(v15 - 2) = v61;
  *(v15 - 1) = v53;
  *v47 = v51;
  *(v15 - 3) = v52;
  return v15;
}

__int128 *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,sortColorEntry *,BOOL (*&)(sortColorEntry,sortColorEntry)>(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v6 = 0;
  v7 = a1[1];
  v50 = *a1;
  v51 = v7;
  v8 = a1[3];
  v52 = a1[2];
  v53 = v8;
  do
  {
    v9 = *a3;
    v10 = a1[v6 + 5];
    v54 = a1[v6 + 4];
    v55 = v10;
    v11 = a1[v6 + 7];
    v56 = a1[v6 + 6];
    v57 = v11;
    v46 = v50;
    v47 = v51;
    v48 = v52;
    v49 = v53;
    v6 += 4;
  }

  while ((v9(&v54, &v46) & 1) != 0);
  v12 = &a1[v6];
  v13 = &a1[v6 - 4];
  if (v6 == 4)
  {
    while (v12 < a2)
    {
      v18 = *a3;
      v14 = a2 - 4;
      v19 = *(a2 - 3);
      v54 = *(a2 - 4);
      v55 = v19;
      v20 = *(a2 - 1);
      v56 = *(a2 - 2);
      v57 = v20;
      v46 = v50;
      v47 = v51;
      v48 = v52;
      v49 = v53;
      a2 -= 4;
      if (v18(&v54, &v46))
      {
        goto LABEL_9;
      }
    }

    v14 = a2;
  }

  else
  {
    do
    {
      v14 = a2 - 4;
      v15 = *a3;
      v16 = *(a2 - 3);
      v54 = *(a2 - 4);
      v55 = v16;
      v17 = *(a2 - 1);
      v56 = *(a2 - 2);
      v57 = v17;
      v46 = v50;
      v47 = v51;
      v48 = v52;
      v49 = v53;
      a2 -= 4;
    }

    while (!v15(&v54, &v46));
  }

LABEL_9:
  if (v12 < v14)
  {
    v21 = v12;
    v22 = v14;
    do
    {
      v24 = v21[1];
      v54 = *v21;
      v23 = v54;
      v55 = v24;
      v26 = v21[3];
      v56 = v21[2];
      v25 = v56;
      v57 = v26;
      v28 = v22[2];
      v27 = v22[3];
      v29 = v22[1];
      *v21 = *v22;
      v21[1] = v29;
      v21[2] = v28;
      v21[3] = v27;
      v22[2] = v25;
      v22[3] = v26;
      *v22 = v23;
      v22[1] = v24;
      do
      {
        v30 = v21[5];
        v54 = v21[4];
        v55 = v30;
        v31 = v21[6];
        v32 = v21[7];
        v21 += 4;
        v33 = *a3;
        v56 = v31;
        v57 = v32;
        v46 = v50;
        v47 = v51;
        v48 = v52;
        v49 = v53;
      }

      while ((v33(&v54, &v46) & 1) != 0);
      do
      {
        v34 = *(v22 - 4);
        v35 = *(v22 - 3);
        v36 = *(v22 - 2);
        v37 = *(v22 - 1);
        v22 -= 4;
        v38 = *a3;
        v56 = v36;
        v57 = v37;
        v54 = v34;
        v55 = v35;
        v46 = v50;
        v47 = v51;
        v48 = v52;
        v49 = v53;
      }

      while (!v38(&v54, &v46));
    }

    while (v21 < v22);
    v13 = v21 - 4;
  }

  if (v13 != a1)
  {
    v39 = *v13;
    v40 = v13[1];
    v41 = v13[3];
    a1[2] = v13[2];
    a1[3] = v41;
    *a1 = v39;
    a1[1] = v40;
  }

  v42 = v50;
  v43 = v51;
  v44 = v53;
  v13[2] = v52;
  v13[3] = v44;
  *v13 = v42;
  v13[1] = v43;
  return v13;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*>(__n128 *a1, __n128 *a2, unsigned int (**a3)(__n128 *, __n128 *))
{
  v6 = (a2 - a1) >> 6;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v56 = a2 - 4;
        v57 = *a3;
        v58 = a1[5];
        v189 = a1[4];
        v190 = v58;
        v59 = a1[7];
        v191 = a1[6];
        v192 = v59;
        v60 = a1[1];
        v185 = *a1;
        v186 = v60;
        v61 = a1[3];
        v187 = a1[2];
        v188 = v61;
        v62 = v57(&v189, &v185);
        v63 = *a3;
        if (v62)
        {
          v64 = v56[1];
          v189 = *v56;
          v190 = v64;
          v65 = v56[3];
          v191 = v56[2];
          v192 = v65;
          v66 = a1[5];
          v185 = a1[4];
          v186 = v66;
          v67 = a1[7];
          v187 = a1[6];
          v188 = v67;
          if (v63(&v189, &v185))
          {
            v69 = a1[2];
            v68 = a1[3];
            v71 = *a1;
            v70 = a1[1];
            v72 = v56[3];
            v74 = *v56;
            v73 = v56[1];
            a1[2] = v56[2];
            a1[3] = v72;
            *a1 = v74;
            a1[1] = v73;
          }

          else
          {
            v137 = a1[2];
            v136 = a1[3];
            v139 = *a1;
            v138 = a1[1];
            v140 = a1[5];
            *a1 = a1[4];
            a1[1] = v140;
            v141 = a1[7];
            a1[2] = a1[6];
            a1[3] = v141;
            a1[4] = v139;
            a1[5] = v138;
            a1[6] = v137;
            a1[7] = v136;
            v142 = *a3;
            v143 = v56[1];
            v189 = *v56;
            v190 = v143;
            v144 = v56[3];
            v191 = v56[2];
            v192 = v144;
            v145 = a1[5];
            v185 = a1[4];
            v186 = v145;
            v146 = a1[7];
            v187 = a1[6];
            v188 = v146;
            if (!v142(&v189, &v185))
            {
              return 1;
            }

            v69 = a1[6];
            v68 = a1[7];
            v71 = a1[4];
            v70 = a1[5];
            v147 = v56[3];
            v149 = *v56;
            v148 = v56[1];
            a1[6] = v56[2];
            a1[7] = v147;
            a1[4] = v149;
            a1[5] = v148;
          }

          *v56 = v71;
          v56[1] = v70;
          result = 1;
          v56[2] = v69;
          v56[3] = v68;
          return result;
        }

        v93 = v56[1];
        v189 = *v56;
        v190 = v93;
        v94 = v56[3];
        v191 = v56[2];
        v192 = v94;
        v95 = a1[5];
        v185 = a1[4];
        v186 = v95;
        v96 = a1[7];
        v187 = a1[6];
        v188 = v96;
        if (!v63(&v189, &v185))
        {
          return 1;
        }

        v98 = a1[6];
        v97 = a1[7];
        v100 = a1[4];
        v99 = a1[5];
        v101 = v56[3];
        v103 = *v56;
        v102 = v56[1];
        a1[6] = v56[2];
        a1[7] = v101;
        a1[4] = v103;
        a1[5] = v102;
        *v56 = v100;
        v56[1] = v99;
        v56[2] = v98;
        v56[3] = v97;
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*,0>(a1, a1 + 4, a1 + 8, a2 - 4, a3);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*,0>(a1, a1 + 4, a1 + 8, a1 + 12, a3);
        v21 = *a3;
        v22 = a2[-3];
        v189 = a2[-4];
        v190 = v22;
        v23 = a2[-1];
        v191 = a2[-2];
        v192 = v23;
        v24 = a1[13];
        v185 = a1[12];
        v186 = v24;
        v25 = a1[15];
        v187 = a1[14];
        v188 = v25;
        if (!v21(&v189, &v185))
        {
          return 1;
        }

        v26 = a2 - 4;
        v28 = a1[14];
        v27 = a1[15];
        v30 = a1[12];
        v29 = a1[13];
        v31 = a2[-1];
        v33 = a2[-4];
        v32 = a2[-3];
        a1[14] = a2[-2];
        a1[15] = v31;
        a1[12] = v33;
        a1[13] = v32;
        *v26 = v30;
        v26[1] = v29;
        v26[2] = v28;
        v26[3] = v27;
        v34 = *a3;
        v35 = a1[13];
        v189 = a1[12];
        v190 = v35;
        v36 = a1[15];
        v191 = a1[14];
        v192 = v36;
        v37 = a1[9];
        v185 = a1[8];
        v186 = v37;
        v38 = a1[11];
        v187 = a1[10];
        v188 = v38;
        if (!v34(&v189, &v185))
        {
          return 1;
        }

        v40 = a1[10];
        v39 = a1[11];
        v42 = a1[8];
        v41 = a1[9];
        v43 = a1[13];
        a1[8] = a1[12];
        a1[9] = v43;
        v44 = a1[15];
        a1[10] = a1[14];
        a1[11] = v44;
        a1[12] = v42;
        a1[13] = v41;
        a1[14] = v40;
        a1[15] = v39;
        v45 = *a3;
        v46 = a1[9];
        v189 = a1[8];
        v190 = v46;
        v47 = a1[11];
        v191 = a1[10];
        v192 = v47;
        v48 = a1[5];
        v185 = a1[4];
        v186 = v48;
        v49 = a1[7];
        v187 = a1[6];
        v188 = v49;
        if (!v45(&v189, &v185))
        {
          return 1;
        }

        v51 = a1[6];
        v50 = a1[7];
        v53 = a1[4];
        v52 = a1[5];
        v54 = a1[9];
        a1[4] = a1[8];
        a1[5] = v54;
        v55 = a1[11];
        a1[6] = a1[10];
        a1[7] = v55;
        a1[8] = v53;
        a1[9] = v52;
        a1[10] = v51;
        a1[11] = v50;
        break;
      default:
        goto LABEL_16;
    }

    v104 = *a3;
    v105 = a1[5];
    v189 = a1[4];
    v190 = v105;
    v106 = a1[7];
    v191 = a1[6];
    v192 = v106;
    v107 = a1[1];
    v185 = *a1;
    v186 = v107;
    v108 = a1[3];
    v187 = a1[2];
    v188 = v108;
    if (v104(&v189, &v185))
    {
      v110 = a1[2];
      v109 = a1[3];
      v112 = *a1;
      v111 = a1[1];
      v113 = a1[5];
      *a1 = a1[4];
      a1[1] = v113;
      v114 = a1[7];
      a1[2] = a1[6];
      a1[3] = v114;
      a1[4] = v112;
      a1[5] = v111;
      a1[6] = v110;
      a1[7] = v109;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *a3;
    v8 = a2[-3];
    v189 = a2[-4];
    v190 = v8;
    v9 = a2[-1];
    v191 = a2[-2];
    v192 = v9;
    v10 = a1[1];
    v185 = *a1;
    v186 = v10;
    v11 = a1[3];
    v187 = a1[2];
    v188 = v11;
    if (v7(&v189, &v185))
    {
      v12 = a2 - 4;
      v14 = a1[2];
      v13 = a1[3];
      v16 = *a1;
      v15 = a1[1];
      v17 = a2[-1];
      v19 = a2[-4];
      v18 = a2[-3];
      a1[2] = a2[-2];
      a1[3] = v17;
      *a1 = v19;
      a1[1] = v18;
      *v12 = v16;
      v12[1] = v15;
      result = 1;
      v12[2] = v14;
      v12[3] = v13;
      return result;
    }

    return 1;
  }

LABEL_16:
  v75 = a1 + 8;
  v76 = *a3;
  v77 = a1[5];
  v189 = a1[4];
  v190 = v77;
  v78 = a1[7];
  v191 = a1[6];
  v192 = v78;
  v79 = a1[1];
  v185 = *a1;
  v186 = v79;
  v80 = a1[3];
  v187 = a1[2];
  v188 = v80;
  v81 = v76(&v189, &v185);
  v82 = *a3;
  if (v81)
  {
    v83 = a1[9];
    v189 = *v75;
    v190 = v83;
    v84 = a1[11];
    v191 = a1[10];
    v192 = v84;
    v85 = a1[5];
    v185 = a1[4];
    v186 = v85;
    v86 = a1[7];
    v187 = a1[6];
    v188 = v86;
    if (v82(&v189, &v185))
    {
      v88 = a1[2];
      v87 = a1[3];
      v90 = *a1;
      v89 = a1[1];
      v91 = a1[9];
      *a1 = *v75;
      a1[1] = v91;
      v92 = a1[11];
      a1[2] = a1[10];
      a1[3] = v92;
    }

    else
    {
      v151 = a1[2];
      v150 = a1[3];
      v153 = *a1;
      v152 = a1[1];
      v154 = a1[5];
      *a1 = a1[4];
      a1[1] = v154;
      v155 = a1[7];
      a1[2] = a1[6];
      a1[3] = v155;
      a1[4] = v153;
      a1[5] = v152;
      a1[6] = v151;
      a1[7] = v150;
      v156 = *a3;
      v157 = a1[9];
      v189 = *v75;
      v190 = v157;
      v158 = a1[11];
      v191 = a1[10];
      v192 = v158;
      v159 = a1[5];
      v185 = a1[4];
      v186 = v159;
      v160 = a1[7];
      v187 = a1[6];
      v188 = v160;
      if (!v156(&v189, &v185))
      {
        goto LABEL_33;
      }

      v88 = a1[6];
      v87 = a1[7];
      v90 = a1[4];
      v89 = a1[5];
      v161 = a1[9];
      a1[4] = *v75;
      a1[5] = v161;
      v162 = a1[11];
      a1[6] = a1[10];
      a1[7] = v162;
    }

    *v75 = v90;
    a1[9] = v89;
    a1[10] = v88;
    a1[11] = v87;
  }

  else
  {
    v115 = a1[9];
    v189 = *v75;
    v190 = v115;
    v116 = a1[11];
    v191 = a1[10];
    v192 = v116;
    v117 = a1[5];
    v185 = a1[4];
    v186 = v117;
    v118 = a1[7];
    v187 = a1[6];
    v188 = v118;
    if (v82(&v189, &v185))
    {
      v120 = a1[6];
      v119 = a1[7];
      v122 = a1[4];
      v121 = a1[5];
      v123 = a1[9];
      a1[4] = *v75;
      a1[5] = v123;
      v124 = a1[11];
      a1[6] = a1[10];
      a1[7] = v124;
      *v75 = v122;
      a1[9] = v121;
      a1[10] = v120;
      a1[11] = v119;
      v125 = *a3;
      v126 = a1[5];
      v189 = a1[4];
      v190 = v126;
      v127 = a1[7];
      v191 = a1[6];
      v192 = v127;
      v128 = a1[1];
      v185 = *a1;
      v186 = v128;
      v129 = a1[3];
      v187 = a1[2];
      v188 = v129;
      if (v125(&v189, &v185))
      {
        v131 = a1[2];
        v130 = a1[3];
        v133 = *a1;
        v132 = a1[1];
        v134 = a1[5];
        *a1 = a1[4];
        a1[1] = v134;
        v135 = a1[7];
        a1[2] = a1[6];
        a1[3] = v135;
        a1[4] = v133;
        a1[5] = v132;
        a1[6] = v131;
        a1[7] = v130;
      }
    }
  }

LABEL_33:
  v163 = a1 + 12;
  if (&a1[12] == a2)
  {
    return 1;
  }

  v164 = 0;
  v165 = 0;
  while (1)
  {
    v166 = *a3;
    v167 = v163[1];
    v189 = *v163;
    v190 = v167;
    v168 = v163[3];
    v191 = v163[2];
    v192 = v168;
    v169 = *v75;
    v170 = v75[1];
    v171 = v75[3];
    v187 = v75[2];
    v188 = v171;
    v185 = v169;
    v186 = v170;
    if (v166(&v189, &v185))
    {
      v172 = v163[1];
      v189 = *v163;
      v190 = v172;
      v173 = v163[3];
      v191 = v163[2];
      v192 = v173;
      v174 = v164;
      while (1)
      {
        v175 = (a1->n128_u64 + v174);
        v176 = *(&a1[9] + v174);
        v175[12] = *(&a1[8] + v174);
        v175[13] = v176;
        v177 = *(&a1[11] + v174);
        v175[14] = *(&a1[10] + v174);
        v175[15] = v177;
        if (v174 == -128)
        {
          break;
        }

        v178 = *a3;
        v185 = v189;
        v186 = v190;
        v187 = v191;
        v188 = v192;
        v179 = v175[5];
        v184[0] = v175[4];
        v184[1] = v179;
        v180 = v175[7];
        v184[2] = v175[6];
        v184[3] = v180;
        v174 -= 64;
        if (((v178)(&v185, v184) & 1) == 0)
        {
          v181 = (a1 + v174 + 192);
          goto LABEL_41;
        }
      }

      v181 = a1;
LABEL_41:
      v182 = v190;
      *v181 = v189;
      v181[1] = v182;
      v183 = v192;
      v181[2] = v191;
      v181[3] = v183;
      if (++v165 == 8)
      {
        return &v163[4] == a2;
      }
    }

    v75 = v163;
    v164 += 64;
    v163 += 4;
    if (v163 == a2)
    {
      return 1;
    }
  }
}

__n128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*,sortColorEntry*>(uint64_t a1, __n128 *a2, __n128 *a3, unsigned int (**a4)(__n128 *, __n128 *))
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 6;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (a1 + (v9 << 6));
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*>(a1, a4, v8, v11);
        v11 -= 4;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *a4;
        v14 = v12[1];
        v37 = *v12;
        v38 = v14;
        v15 = v12[3];
        v39 = v12[2];
        v40 = v15;
        v16 = *(a1 + 16);
        v36[0] = *a1;
        v36[1] = v16;
        v17 = *(a1 + 48);
        v36[2] = *(a1 + 32);
        v36[3] = v17;
        if (v13(&v37, v36))
        {
          v19 = v12[2];
          v18 = v12[3];
          v21 = *v12;
          v20 = v12[1];
          v22 = *(a1 + 48);
          v24 = *a1;
          v23 = *(a1 + 16);
          v12[2] = *(a1 + 32);
          v12[3] = v22;
          *v12 = v24;
          v12[1] = v23;
          *a1 = v21;
          *(a1 + 16) = v20;
          *(a1 + 32) = v19;
          *(a1 + 48) = v18;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*>(a1, a4, v8, a1);
        }

        v12 += 4;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v25 = a2 - 4;
      do
      {
        v26 = *(a1 + 16);
        v37 = *a1;
        v38 = v26;
        v27 = *(a1 + 48);
        v39 = *(a1 + 32);
        v40 = v27;
        v28 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*>(a1, a4, v8);
        if (v25 == v28)
        {
          *v28 = v37;
          v28[1] = v38;
          v28[2] = v39;
          v28[3] = v40;
        }

        else
        {
          v29 = *v25;
          v30 = v25[1];
          v31 = v25[3];
          v28[2] = v25[2];
          v28[3] = v31;
          *v28 = v29;
          v28[1] = v30;
          v32 = v38;
          *v25 = v37;
          v25[1] = v32;
          v33 = v40;
          v25[2] = v39;
          v25[3] = v33;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*>(a1, &v28[4], a4, (&v28[4] - a1) >> 6);
        }

        v25 -= 4;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

__n128 std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*>(uint64_t a1, unsigned int (**a2)(__n128 *, __n128 *), uint64_t a3, __n128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v56 = v4;
    v57 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (a4 - a1) >> 6)
    {
      v12 = (a4 - a1) >> 5;
      v13 = v12 + 1;
      v14 = (a1 + ((v12 + 1) << 6));
      v15 = v12 + 2;
      if (v12 + 2 < a3)
      {
        v16 = *a2;
        v17 = v14[1];
        v52 = *v14;
        v53 = v17;
        v18 = v14[3];
        v54 = v14[2];
        v55 = v18;
        v19 = v14[5];
        v48 = v14[4];
        v49 = v19;
        v20 = v14[7];
        v50 = v14[6];
        v51 = v20;
        if (v16(&v52, &v48))
        {
          v14 += 4;
          v13 = v15;
        }
      }

      v21 = *a2;
      v22 = v14[1];
      v52 = *v14;
      v53 = v22;
      v23 = v14[3];
      v54 = v14[2];
      v55 = v23;
      v24 = v7[1];
      v48 = *v7;
      v49 = v24;
      v25 = v7[3];
      v50 = v7[2];
      v51 = v25;
      if ((v21(&v52, &v48) & 1) == 0)
      {
        v27 = v7[1];
        v52 = *v7;
        v53 = v27;
        v28 = v7[3];
        v54 = v7[2];
        v55 = v28;
        do
        {
          v29 = v14;
          v30 = *v14;
          v31 = v14[1];
          v32 = v14[3];
          v7[2] = v14[2];
          v7[3] = v32;
          *v7 = v30;
          v7[1] = v31;
          if (v9 < v13)
          {
            break;
          }

          v33 = (2 * v13) | 1;
          v14 = (a1 + (v33 << 6));
          if (2 * v13 + 2 < a3)
          {
            v34 = *a2;
            v35 = v14[1];
            v48 = *v14;
            v49 = v35;
            v36 = v14[3];
            v50 = v14[2];
            v51 = v36;
            v37 = v14[5];
            v44 = v14[4];
            v45 = v37;
            v38 = v14[7];
            v46 = v14[6];
            v47 = v38;
            if (v34(&v48, &v44))
            {
              v14 += 4;
              v33 = 2 * v13 + 2;
            }
          }

          v39 = *a2;
          v40 = v14[1];
          v48 = *v14;
          v49 = v40;
          v41 = v14[3];
          v50 = v14[2];
          v51 = v41;
          v44 = v52;
          v45 = v53;
          v46 = v54;
          v47 = v55;
          v7 = v29;
          v13 = v33;
        }

        while (!v39(&v48, &v44));
        result = v52;
        v42 = v53;
        v43 = v55;
        v29[2] = v54;
        v29[3] = v43;
        *v29 = result;
        v29[1] = v42;
      }
    }
  }

  return result;
}

_OWORD *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*>(_OWORD *a1, unsigned int (**a2)(_OWORD *, _OWORD *), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[4 * v6];
    v9 = v8 + 4;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 < a3)
    {
      v12 = *a2;
      v13 = *v9;
      v14 = v8[5];
      v15 = v8[7];
      v25[2] = v8[6];
      v25[3] = v15;
      v25[0] = v13;
      v25[1] = v14;
      v16 = v8 + 8;
      v17 = v8[8];
      v18 = v8[9];
      v19 = v8[11];
      v24[2] = v8[10];
      v24[3] = v19;
      v24[0] = v17;
      v24[1] = v18;
      if (v12(v25, v24))
      {
        v9 = v16;
        v10 = v11;
      }
    }

    v20 = *v9;
    v21 = v9[1];
    v22 = v9[3];
    a1[2] = v9[2];
    a1[3] = v22;
    *a1 = v20;
    a1[1] = v21;
    a1 = v9;
    v6 = v10;
  }

  while (v10 <= v7);
  return v9;
}

double std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*>(uint64_t a1, uint64_t a2, unsigned int (**a3)(__int128 *, __int128 *), uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v40 = v4;
    v41 = v5;
    v10 = *a3;
    v11 = v6 >> 1;
    v12 = (a1 + (v6 >> 1 << 6));
    v13 = v12[1];
    v36 = *v12;
    v37 = v13;
    v14 = v12[3];
    v38 = v12[2];
    v39 = v14;
    v15 = *(a2 - 48);
    v32 = *(a2 - 64);
    v33 = v15;
    v16 = *(a2 - 16);
    v34 = *(a2 - 32);
    v35 = v16;
    if (v10(&v36, &v32))
    {
      v18 = (a2 - 64);
      v19 = *(a2 - 48);
      v36 = *(a2 - 64);
      v37 = v19;
      v20 = *(a2 - 16);
      v38 = *(a2 - 32);
      v39 = v20;
      do
      {
        v21 = v12;
        v22 = *v12;
        v23 = v12[1];
        v24 = v12[3];
        v18[2] = v12[2];
        v18[3] = v24;
        *v18 = v22;
        v18[1] = v23;
        if (!v11)
        {
          break;
        }

        v25 = *a3;
        v11 = (v11 - 1) >> 1;
        v12 = (a1 + (v11 << 6));
        v26 = v12[1];
        v32 = *v12;
        v33 = v26;
        v27 = v12[3];
        v34 = v12[2];
        v35 = v27;
        v31[0] = v36;
        v31[1] = v37;
        v31[2] = v38;
        v31[3] = v39;
        v28 = v25(&v32, v31);
        v18 = v21;
      }

      while ((v28 & 1) != 0);
      v29 = v37;
      *v21 = v36;
      v21[1] = v29;
      result = *&v38;
      v30 = v39;
      v21[2] = v38;
      v21[3] = v30;
    }
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ITColor>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t SUUIAccountsFramework()
{
  if (SUUIAccountsFramework_sOnce != -1)
  {
    SUUIAccountsFramework_cold_1();
  }

  return SUUIAccountsFramework_sHandle;
}

void *__SUUIAccountsFramework_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/Accounts.framework/Accounts", 1);
  SUUIAccountsFramework_sHandle = result;
  return result;
}

uint64_t SUUIAccountsUIFramework()
{
  if (SUUIAccountsUIFramework_sOnce != -1)
  {
    SUUIAccountsUIFramework_cold_1();
  }

  return SUUIAccountsUIFramework_sHandle;
}

void *__SUUIAccountsUIFramework_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AccountsUI.framework/AccountsUI", 1);
  SUUIAccountsUIFramework_sHandle = result;
  return result;
}

uint64_t SUUIAppleAccountFramework()
{
  if (SUUIAppleAccountFramework_sOnce != -1)
  {
    SUUIAppleAccountFramework_cold_1();
  }

  return SUUIAppleAccountFramework_sHandle;
}

void *__SUUIAppleAccountFramework_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AppleAccount.framework/AppleAccount", 1);
  SUUIAppleAccountFramework_sHandle = result;
  return result;
}

uint64_t SUUIAppleAccountUIFramework()
{
  if (SUUIAppleAccountUIFramework_sOnce != -1)
  {
    SUUIAppleAccountUIFramework_cold_1();
  }

  return SUUIAppleAccountUIFramework_sHandle;
}

void *__SUUIAppleAccountUIFramework_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AppleAccountUI.framework/AppleAccountUI", 1);
  SUUIAppleAccountUIFramework_sHandle = result;
  return result;
}

uint64_t SUUIAskPermissionFramework()
{
  if (SUUIAskPermissionFramework_sOnce != -1)
  {
    SUUIAskPermissionFramework_cold_1();
  }

  return SUUIAskPermissionFramework_sHandle;
}

void *__SUUIAskPermissionFramework_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AskPermission.framework/AskPermission", 1);
  SUUIAskPermissionFramework_sHandle = result;
  return result;
}

uint64_t SUUIAudioToolboxFramework()
{
  if (SUUIAudioToolboxFramework_sOnce != -1)
  {
    SUUIAudioToolboxFramework_cold_1();
  }

  return SUUIAudioToolboxFramework_sHandle;
}

void *__SUUIAudioToolboxFramework_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/AudioToolbox.framework/AudioToolbox", 1);
  SUUIAudioToolboxFramework_sHandle = result;
  return result;
}

uint64_t SUUIAVFoundationFramework()
{
  if (SUUIAVFoundationFramework_sOnce != -1)
  {
    SUUIAVFoundationFramework_cold_1();
  }

  return SUUIAVFoundationFramework_sHandle;
}

void *__SUUIAVFoundationFramework_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/AVFoundation.framework/AVFoundation", 1);
  SUUIAVFoundationFramework_sHandle = result;
  return result;
}

uint64_t SUUIContactsAutocompleteUIFramework()
{
  if (SUUIContactsAutocompleteUIFramework_sOnce != -1)
  {
    SUUIContactsAutocompleteUIFramework_cold_1();
  }

  return SUUIContactsAutocompleteUIFramework_sHandle;
}

void *__SUUIContactsAutocompleteUIFramework_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/ContactsAutocompleteUI.framework/ContactsAutocompleteUI", 1);
  SUUIContactsAutocompleteUIFramework_sHandle = result;
  return result;
}

uint64_t SUUIContactsFramework()
{
  if (SUUIContactsFramework_sOnce != -1)
  {
    SUUIContactsFramework_cold_1();
  }

  return SUUIContactsFramework_sHandle;
}

void *__SUUIContactsFramework_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/Contacts.framework/Contacts", 1);
  SUUIContactsFramework_sHandle = result;
  return result;
}

uint64_t SUUIContactsUIFramework()
{
  if (SUUIContactsUIFramework_sOnce != -1)
  {
    SUUIContactsUIFramework_cold_1();
  }

  return SUUIContactsUIFramework_sHandle;
}

void *__SUUIContactsUIFramework_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/ContactsUI.framework/ContactsUI", 1);
  SUUIContactsUIFramework_sHandle = result;
  return result;
}

uint64_t SUUICoreImageFramework()
{
  if (SUUICoreImageFramework_sOnce != -1)
  {
    SUUICoreImageFramework_cold_1();
  }

  return SUUICoreImageFramework_sHandle;
}

void *__SUUICoreImageFramework_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/CoreImage.framework/CoreImage", 1);
  SUUICoreImageFramework_sHandle = result;
  return result;
}

uint64_t SUUICoreTelephonyFramework()
{
  if (SUUICoreTelephonyFramework_sOnce != -1)
  {
    SUUICoreTelephonyFramework_cold_1();
  }

  return SUUICoreTelephonyFramework_sHandle;
}

void *__SUUICoreTelephonyFramework_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/CoreTelephony.framework/CoreTelephony", 1);
  SUUICoreTelephonyFramework_sHandle = result;
  return result;
}

uint64_t SUUIFamilyCircleFramework()
{
  if (SUUIFamilyCircleFramework_sOnce != -1)
  {
    SUUIFamilyCircleFramework_cold_1();
  }

  return SUUIFamilyCircleFramework_sHandle;
}

void *__SUUIFamilyCircleFramework_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/FamilyCircle.framework/FamilyCircle", 1);
  SUUIFamilyCircleFramework_sHandle = result;
  return result;
}

uint64_t SUUIIAdFramework()
{
  if (SUUIIAdFramework_sOnce != -1)
  {
    SUUIIAdFramework_cold_1();
  }

  return SUUIIAdFramework_sHandle;
}

void *__SUUIIAdFramework_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/iAd.framework/iAd", 1);
  SUUIIAdFramework_sHandle = result;
  return result;
}

uint64_t SUUIMediaPlayerFramework()
{
  if (SUUIMediaPlayerFramework_sOnce != -1)
  {
    SUUIMediaPlayerFramework_cold_1();
  }

  return SUUIMediaPlayerFramework_sHandle;
}

void *__SUUIMediaPlayerFramework_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/MediaPlayer.framework/MediaPlayer", 1);
  SUUIMediaPlayerFramework_sHandle = result;
  return result;
}

uint64_t SUUIMediaPlayerUIFramework()
{
  if (SUUIMediaPlayerUIFramework_sOnce != -1)
  {
    SUUIMediaPlayerUIFramework_cold_1();
  }

  return SUUIMediaPlayerUIFramework_sHandle;
}

void *__SUUIMediaPlayerUIFramework_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/MediaPlayerUI.framework/MediaPlayerUI", 1);
  SUUIMediaPlayerUIFramework_sHandle = result;
  return result;
}

uint64_t SUUIMobileCoreServicesFramework()
{
  if (SUUIMobileCoreServicesFramework_sOnce != -1)
  {
    SUUIMobileCoreServicesFramework_cold_1();
  }

  return SUUIMobileCoreServicesFramework_sHandle;
}

void *__SUUIMobileCoreServicesFramework_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/MobileCoreServices.framework/MobileCoreServices", 1);
  SUUIMobileCoreServicesFramework_sHandle = result;
  return result;
}

uint64_t SUUIMPUFoundationFramework()
{
  if (SUUIMPUFoundationFramework_sOnce != -1)
  {
    SUUIMPUFoundationFramework_cold_1();
  }

  return SUUIMPUFoundationFramework_sHandle;
}

void *__SUUIMPUFoundationFramework_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/MPUFoundation.framework/MPUFoundation", 1);
  SUUIMPUFoundationFramework_sHandle = result;
  return result;
}

uint64_t SUUIPassKitCoreFramework()
{
  if (SUUIPassKitCoreFramework_sOnce != -1)
  {
    SUUIPassKitCoreFramework_cold_1();
  }

  return SUUIPassKitCoreFramework_sHandle;
}

void *__SUUIPassKitCoreFramework_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/PassKitCore.framework/PassKitCore", 1);
  SUUIPassKitCoreFramework_sHandle = result;
  return result;
}

uint64_t SUUIPassKitUIFramework()
{
  if (SUUIPassKitUIFramework_sOnce != -1)
  {
    SUUIPassKitUIFramework_cold_1();
  }

  return SUUIPassKitUIFramework_sHandle;
}

void *__SUUIPassKitUIFramework_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/PassKitUI.framework/PassKitUI", 1);
  SUUIPassKitUIFramework_sHandle = result;
  return result;
}

uint64_t SUUIPhysicsKitFramework()
{
  if (SUUIPhysicsKitFramework_sOnce != -1)
  {
    SUUIPhysicsKitFramework_cold_1();
  }

  return SUUIPhysicsKitFramework_sHandle;
}

void *__SUUIPhysicsKitFramework_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/PhysicsKit.framework/PhysicsKit", 1);
  SUUIPhysicsKitFramework_sHandle = result;
  return result;
}

uint64_t SUUISocialFramework()
{
  if (SUUISocialFramework_sOnce != -1)
  {
    SUUISocialFramework_cold_1();
  }

  return SUUISocialFramework_sHandle;
}

void *__SUUISocialFramework_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/Social.framework/Social", 1);
  SUUISocialFramework_sHandle = result;
  return result;
}

uint64_t SUUISpringBoardServicesFramework()
{
  if (SUUISpringBoardServicesFramework_sOnce != -1)
  {
    SUUISpringBoardServicesFramework_cold_1();
  }

  return SUUISpringBoardServicesFramework_sHandle;
}

void *__SUUISpringBoardServicesFramework_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/SpringBoardServices.framework/SpringBoardServices", 1);
  SUUISpringBoardServicesFramework_sHandle = result;
  return result;
}

uint64_t SUUIWebCoreFramework()
{
  if (SUUIWebCoreFramework_sOnce != -1)
  {
    SUUIWebCoreFramework_cold_1();
  }

  return SUUIWebCoreFramework_sHandle;
}

void *__SUUIWebCoreFramework_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/WebCore.framework/WebCore", 1);
  SUUIWebCoreFramework_sHandle = result;
  return result;
}

uint64_t SUUIImageIOFramework()
{
  if (SUUIImageIOFramework_sOnce != -1)
  {
    SUUIImageIOFramework_cold_1();
  }

  return SUUIImageIOFramework_sHandle;
}

void *__SUUIImageIOFramework_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/ImageIO.framework/ImageIO", 1);
  SUUIImageIOFramework_sHandle = result;
  return result;
}

uint64_t SUUICoreLocationFramework()
{
  if (SUUICoreLocationFramework_sOnce != -1)
  {
    SUUICoreLocationFramework_cold_1();
  }

  return SUUICoreLocationFramework_sHandle;
}

void *__SUUICoreLocationFramework_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/CoreLocation.framework/CoreLocation", 1);
  SUUICoreLocationFramework_sHandle = result;
  return result;
}

uint64_t SUUICoreMediaFramework()
{
  if (SUUICoreMediaFramework_sOnce != -1)
  {
    SUUICoreMediaFramework_cold_1();
  }

  return SUUICoreMediaFramework_sHandle;
}

void *__SUUICoreMediaFramework_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/CoreMedia.framework/CoreMedia", 1);
  SUUICoreMediaFramework_sHandle = result;
  return result;
}

uint64_t SUUICelestialFramework()
{
  if (SUUICelestialFramework_sOnce != -1)
  {
    SUUICelestialFramework_cold_1();
  }

  return SUUICelestialFramework_sHandle;
}

void *__SUUICelestialFramework_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/Celestial.framework/Celestial", 1);
  SUUICelestialFramework_sHandle = result;
  return result;
}

uint64_t SUUIVideoSubscriberAccountFramework()
{
  if (SUUIVideoSubscriberAccountFramework_sOnce != -1)
  {
    SUUIVideoSubscriberAccountFramework_cold_1();
  }

  return SUUIVideoSubscriberAccountFramework_sHandle;
}

void *__SUUIVideoSubscriberAccountFramework_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/VideoSubscriberAccount.framework/VideoSubscriberAccount", 1);
  SUUIVideoSubscriberAccountFramework_sHandle = result;
  return result;
}

void *SUUIWeakLinkedSymbolForString(char *__symbol, void *__handle)
{
  if (__handle)
  {
    return dlsym(__handle, __symbol);
  }

  else
  {
    return 0;
  }
}

id SUUIWeakLinkedClassForString(NSString *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = NSClassFromString(a1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_259DF5C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__43(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259DF6F80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259E00ED8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_259E01710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259E01D98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259E021F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id __RequestImage(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 resourceName];
  v6 = v5;
  if (!v5)
  {
    v9 = [v4 requestIdentifierForViewElement:v3];
    if (v9)
    {
      v11 = [v4 resourceLoader];
      v7 = [v11 cachedResourceForRequestIdentifier:{objc_msgSend(v9, "unsignedIntegerValue")}];

      if (v7)
      {
        v12 = 0;
        goto LABEL_20;
      }
    }

    else
    {
      v14 = [v4 transientRequestIdentifierForViewElement:v3];
      if (v14)
      {
        v15 = [v4 resourceLoader];
        v7 = [v15 cachedResourceForRequestIdentifier:{objc_msgSend(v14, "unsignedIntegerValue")}];
      }

      else
      {
        v7 = 0;
      }

      v12 = [v4 dataConsumerForImageElement:v3];
      [v4 loadImageForImageElement:v3 reason:1 dataConsumer:v12];

      if (v7)
      {
        goto LABEL_20;
      }

      if (v12)
      {
        goto LABEL_16;
      }
    }

    v12 = [v4 dataConsumerForImageElement:v3];
LABEL_16:
    [v4 loadImageForImageElement:v3 reason:1 dataConsumer:v12];
    v16 = [v3 style];
    v17 = [v16 imageTreatment];
    v18 = SUUIImageTreatmentForString(v17);

    if (v18 == 7 || ![v12 isImagePlaceholderAvailable])
    {
      v7 = [v4 placeholderImageForImageElement:v3 dataConsumer:v12];
    }

    else
    {
      v19 = [v3 style];
      v20 = [v19 imagePlaceholderBackgroundColor];
      v21 = [v20 color];

      v7 = [v12 imagePlaceholderForColor:v21];
    }

    goto LABEL_20;
  }

  v7 = SUUIImageWithResourceName(v5);
  v8 = [v3 style];
  v9 = [v8 imageMaskColor];

  if (!v9)
  {
    goto LABEL_21;
  }

  v10 = [v9 color];

  if (v10)
  {
    [v9 color];
  }

  else
  {
    [v4 tintColor];
  }
  v12 = ;
  v13 = [v7 _flatImageWithColor:v12];

  v7 = v13;
LABEL_20:

LABEL_21:

  return v7;
}

id SUUIVideoPreviewPlayPlayableVideoWithAsset(void *a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v5;
  v9 = [v6 contentURL];
  if (!v9)
  {
    v19 = 0;
    goto LABEL_14;
  }

  v10 = SUUIAVFoundationFramework();
  v11 = *SUUIWeakLinkedSymbolForString("AVURLAssetInheritURIQueryComponentFromReferencingURIKey", v10);
  v40.value = v11;
  v41.value = MEMORY[0x277CBEC38];
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
  if (v8 && [v8 kind])
  {
    v13 = SUUIAVFoundationFramework();
    v14 = *SUUIWeakLinkedSymbolForString("AVURLAssetAlternativeConfigurationOptionsKey", v13);
    v15 = SUUIAVFoundationFramework();
    v16 = *SUUIWeakLinkedSymbolForString("AVURLAssetAlternativeConfigurationServiceIdentifierKey", v15);
    v17 = [v8 kind];
    if (v17 == 1)
    {
      v37 = v7;
      v18 = @"com.apple.itunesstore.movies.preview.cloud";
    }

    else
    {
      if (v17 != 2)
      {
LABEL_10:

        goto LABEL_11;
      }

      v37 = v7;
      v18 = @"com.apple.itunesstore.tvshows.preview.cloud";
    }

    v20 = [v12 mutableCopy];
    v38 = v16;
    v39 = v18;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    [v20 setObject:v21 forKey:v14];
    v22 = [v20 copy];

    v12 = v22;
    v7 = v37;
    goto LABEL_10;
  }

LABEL_11:
  v23 = SUUIAVFoundationFramework();
  v19 = [objc_alloc(SUUIWeakLinkedClassForString(&cfstr_Avurlasset.isa v23))];
  v24 = [SUUIStoreAssetResourceLoaderDelegate storeAssetResourceLoaderDelegateForPlayableAsset:v6 clientContext:v7];
  if (v24)
  {
    v25 = [v19 resourceLoader];
    SUUIStoreAssetResourceLoaderConfigureWithDelegate(v25, v24);
  }

LABEL_14:
  if (v19)
  {
    v26 = [objc_alloc(MEMORY[0x277CE65B0]) initWithAsset:v19];
    v27 = [objc_alloc(MEMORY[0x277CE6598]) initWithPlayerItem:v26];
    v28 = objc_alloc_init(MEMORY[0x277CB85E0]);
    [v28 setPlayer:v27];
    [v28 setExitsFullScreenWhenPlaybackEnds:1];
    v29 = v6;
    v30 = v27;
    [v29 initialPlaybackTime];
    memset(&v41, 0, sizeof(v41));
    CMTimeMakeWithSeconds(&v41, v31, 1000000);
    v40 = v41;
    [v30 seekToTime:&v40];
    v32 = [MEMORY[0x277CCAB98] defaultCenter];
    [v32 postNotificationName:@"SUUIVideoPreviewDidStartNotification" object:0];

    v33 = [v29 storeItemIdentifier];
    SUUIVideoPreviewObservePlayer(v30, v33);
    v34 = [MEMORY[0x277D7FDA8] sessionManager];
    v35 = [v34 stopAllAudioPlayerSessions];

    [v30 play];
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

void SUUIVideoPreviewDismissOnEnterBackground(void *a1)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_getAssociatedObject(v1, "com.apple.iTunesStoreUI.MoviePlayer.BackgroundObserver");

  if (!v2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    objc_initWeak(&location, v1);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __SUUIVideoPreviewDismissOnEnterBackground_block_invoke;
    aBlock[3] = &unk_2798FAAC8;
    objc_copyWeak(&v14, &location);
    v4 = _Block_copy(aBlock);
    v5 = [MEMORY[0x277D75128] sharedApplication];
    v6 = [MEMORY[0x277CCABD8] mainQueue];
    v7 = [v3 addObserverForName:*MEMORY[0x277D76660] object:v5 queue:v6 usingBlock:v4];

    v8 = [MEMORY[0x277CCABD8] mainQueue];
    v9 = [v3 addObserverForName:@"SUUIVideoPreviewDismissNotification" object:0 queue:v8 usingBlock:v4];

    v10 = [_SUUIVideoPreviewNotificationObserver alloc];
    v16[0] = v7;
    v16[1] = v9;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    v12 = [(_SUUIVideoPreviewNotificationObserver *)v10 initWithObservers:v11];

    objc_setAssociatedObject(v1, "com.apple.iTunesStoreUI.MoviePlayer.BackgroundObserver", v12, 1);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void sub_259E0BCE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __SUUIVideoPreviewDismissOnEnterBackground_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    object = WeakRetained;
    [WeakRetained dismissViewControllerAnimated:0 completion:0];
    objc_setAssociatedObject(object, "com.apple.iTunesStoreUI.MoviePlayer.BackgroundObserver", 0, 1);
    WeakRetained = object;
  }
}

void SUUIVideoPreviewObservePlayer(void *a1, uint64_t a2)
{
  v3 = a1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __SUUIVideoPreviewObservePlayer_block_invoke_3;
  block[3] = &unk_2798F8B98;
  v8 = &__block_literal_global_28;
  if (SUUIVideoPreviewObservePlayer_sOnce != -1)
  {
    dispatch_once(&SUUIVideoPreviewObservePlayer_sOnce, block);
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (a2)
  {
LABEL_3:
    v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:a2];
    v5 = [v3 currentItem];
    objc_setAssociatedObject(v5, "com.apple.iTunesStoreUI.MoviePlayerItemID", v4, 1);
  }

LABEL_4:
  v6 = [v3 currentItem];
  objc_setAssociatedObject(v6, "com.apple.iTunesStoreUI.MoviePlayerTrackingKey", MEMORY[0x277CBEC38], 1);
}

void __SUUIVideoPreviewObservePlayer_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 object];
  v4 = objc_getAssociatedObject(v3, "com.apple.iTunesStoreUI.MoviePlayerItemID");
  if (v4)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v5 = [v3 accessLog];
    v6 = [v5 events];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __SUUIVideoPreviewObservePlayer_block_invoke_2;
    v11[3] = &unk_2798FAB10;
    v11[4] = &v12;
    [v6 enumerateObjectsUsingBlock:v11];

    if (v13[3] >= 5.0)
    {
      [v4 longLongValue];
      v7 = SUCreatePreviewHistoryOperation();
      v8 = [MEMORY[0x277D7FD20] mainQueue];
      [v8 addOperation:v7];
    }

    _Block_object_dispose(&v12, 8);
  }

  v9 = objc_getAssociatedObject(v3, "com.apple.iTunesStoreUI.MoviePlayerTrackingKey");
  if (v9)
  {
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 postNotificationName:@"SUUIVideoPreviewDidEndNotification" object:0];
  }
}

void sub_259E0C040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SUUIVideoPreviewObservePlayer_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  result = [a2 durationWatched];
  if (v3 >= v5)
  {
    v5 = v3;
  }

  *(*(*(a1 + 32) + 8) + 24) = v5;
  return result;
}

void __SUUIVideoPreviewObservePlayer_block_invoke_3(uint64_t a1)
{
  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  v2 = *MEMORY[0x277CE60C0];
  v3 = [MEMORY[0x277CCABD8] mainQueue];
  v4 = [v8 addObserverForName:v2 object:0 queue:v3 usingBlock:*(a1 + 32)];

  v5 = *MEMORY[0x277CE60D0];
  v6 = [MEMORY[0x277CCABD8] mainQueue];
  v7 = [v8 addObserverForName:v5 object:0 queue:v6 usingBlock:*(a1 + 32)];
}

void sub_259E0E338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__44(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259E10B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__45(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259E10CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259E13C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__46(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259E14FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259E152F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SUUIViewControllerIsVisible(void *a1)
{
  v1 = a1;
  if ([v1 isViewLoaded])
  {
    v2 = [v1 view];
  }

  else
  {
    v2 = 0;
  }

  v3 = [v2 window];
  if (v3)
  {
    v4 = [v2 isHidden] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id SUUIViewControllerGetAncestorTabBarController(void *a1)
{
  v1 = a1;
  v2 = [v1 tabBarController];
  if ([v2 conformsToProtocol:&unk_286C3AC60])
  {
    v3 = v2;
  }

  else
  {
    v3 = v1;
    do
    {
      v4 = v3;
      v3 = [v3 parentViewController];
    }

    while (v3 && ![v3 conformsToProtocol:&unk_286C3AC60]);
  }

  return v3;
}

id SUUIViewControllerGetTopMostViewController(void *a1)
{
  for (i = a1; ; i = v3)
  {
    v2 = [i presentedViewController];
    if (!v2)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ([i topViewController], (v2 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          break;
        }

        v2 = [i focusedViewController];
        if (!v2)
        {
          break;
        }
      }
    }

    v3 = v2;
  }

  return i;
}

BOOL SUUIViewControllerIsDescendent(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v6 = v5;
  v7 = v5;
  if (v5)
  {
    v7 = v5;
    if (v5 != v4)
    {
      v7 = v5;
      do
      {
        v8 = v7;
        v7 = [v7 parentViewController];
      }

      while (v7 && v7 != v4);
    }
  }

  return v7 == v4;
}

void AnalyzedImageColors::AnalyzedImageColors(AnalyzedImageColors *this)
{
  ITColor::ITColor(this);
  ITColor::ITColor(v2 + 1);
  ITColor::ITColor(this + 2);
  ITColor::ITColor(this + 3);
  ITColor::ITColor(this + 4);
  ITColor::ITColor(this + 5);
  ITColor::ITColor(this + 6);
  ITColor::ITColor(this + 7);
  ITColor::ITColor(this + 8);
  *(this + 293) = 0;
  *(this + 36) = 0;
}

uint64_t __Block_byref_object_copy__47(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259E1DF40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259E1E1F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259E1E57C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259E1E93C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259E1EBA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__48(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259E1EDFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_259E1F52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259E20BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose(&a58, 8);
  _Block_object_dispose((v58 - 232), 8);
  _Block_object_dispose((v58 - 200), 8);
  _Unwind_Resume(a1);
}

void sub_259E21C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259E22348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259E228E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259E22C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259E23928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259E23C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259E248B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _SUUIOffscreenRenderOperationPopRenderingContext(void *a1, void *a2)
{
  v49[2] = *MEMORY[0x277D85DE8];
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__14;
  v37 = __Block_byref_object_dispose__15;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__14;
  v31 = __Block_byref_object_dispose__15;
  v32 = 0;
  v4 = _SUUIOffscreenRenderOperationGetRendererStackAccessQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___SUUIOffscreenRenderOperationPopRenderingContext_block_invoke;
  block[3] = &unk_2798FB090;
  block[4] = &v33;
  block[5] = &v27;
  dispatch_barrier_sync(v4, block);
  if (v34[5] && v28[5])
  {
    goto LABEL_12;
  }

  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v5 = getkEAGLContextPropertyAcceleratedSymbolLoc_ptr;
  v47 = getkEAGLContextPropertyAcceleratedSymbolLoc_ptr;
  if (!getkEAGLContextPropertyAcceleratedSymbolLoc_ptr)
  {
    v39 = MEMORY[0x277D85DD0];
    v40 = 3221225472;
    v41 = __getkEAGLContextPropertyAcceleratedSymbolLoc_block_invoke;
    v42 = &unk_2798FB038;
    v43 = &v44;
    v6 = OpenGLESLibrary();
    v7 = dlsym(v6, "kEAGLContextPropertyAccelerated");
    *(v43[1] + 24) = v7;
    getkEAGLContextPropertyAcceleratedSymbolLoc_ptr = *(v43[1] + 24);
    v5 = v45[3];
  }

  _Block_object_dispose(&v44, 8);
  if (!v5)
  {
    v22 = [MEMORY[0x277CCA890] currentHandler];
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getkEAGLContextPropertyAccelerated(void)"];
    [v22 handleFailureInFunction:v23 file:@"SUUIOffscreenRenderOperation.m" lineNumber:46 description:{@"%s", dlerror()}];

    goto LABEL_19;
  }

  v8 = *v5;
  v48[0] = v8;
  v9 = MEMORY[0x277CBEC38];
  v49[0] = MEMORY[0x277CBEC38];
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v10 = getkEAGLContextPropertyClientRetainReleaseSymbolLoc_ptr;
  v47 = getkEAGLContextPropertyClientRetainReleaseSymbolLoc_ptr;
  if (!getkEAGLContextPropertyClientRetainReleaseSymbolLoc_ptr)
  {
    v39 = MEMORY[0x277D85DD0];
    v40 = 3221225472;
    v41 = __getkEAGLContextPropertyClientRetainReleaseSymbolLoc_block_invoke;
    v42 = &unk_2798FB038;
    v43 = &v44;
    v11 = OpenGLESLibrary();
    v12 = dlsym(v11, "kEAGLContextPropertyClientRetainRelease");
    *(v43[1] + 24) = v12;
    getkEAGLContextPropertyClientRetainReleaseSymbolLoc_ptr = *(v43[1] + 24);
    v10 = v45[3];
  }

  _Block_object_dispose(&v44, 8);
  if (!v10)
  {
    v24 = [MEMORY[0x277CCA890] currentHandler];
    v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getkEAGLContextPropertyClientRetainRelease(void)"];
    [v24 handleFailureInFunction:v25 file:@"SUUIOffscreenRenderOperation.m" lineNumber:47 description:{@"%s", dlerror()}];

LABEL_19:
    __break(1u);
  }

  v13 = *v10;
  v48[1] = v13;
  v49[1] = v9;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];

  v15 = [objc_alloc(getEAGLContextClass()) initWithAPI:3 properties:v14];
  v16 = v28[5];
  v28[5] = v15;

  v17 = v28[5];
  if (!v17)
  {
    v18 = [objc_alloc(getEAGLContextClass()) initWithAPI:2 properties:v14];
    v19 = v28[5];
    v28[5] = v18;

    v17 = v28[5];
  }

  v20 = [MEMORY[0x277CD9F40] rendererWithEAGLContext:v17 options:0];
  v21 = v34[5];
  v34[5] = v20;

LABEL_12:
  if (a2)
  {
    *a2 = v28[5];
  }

  if (a1)
  {
    *a1 = v34[5];
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);
}

void sub_259E28170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose((v9 - 152), 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id getEAGLContextClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getEAGLContextClass_softClass;
  v7 = getEAGLContextClass_softClass;
  if (!getEAGLContextClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getEAGLContextClass_block_invoke;
    v3[3] = &unk_2798FB038;
    v3[4] = &v4;
    __getEAGLContextClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_259E2827C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _SUUIglGetError()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getglGetErrorSymbolLoc_ptr;
  v6 = getglGetErrorSymbolLoc_ptr;
  if (!getglGetErrorSymbolLoc_ptr)
  {
    v1 = OpenGLESLibrary();
    v4[3] = dlsym(v1, "glGetError");
    getglGetErrorSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    _SUUIglGetError_cold_1();
  }

  return v0();
}

void sub_259E28370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _SUUIglBindFramebuffer(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v2 = getglBindFramebufferSymbolLoc_ptr;
  v8 = getglBindFramebufferSymbolLoc_ptr;
  if (!getglBindFramebufferSymbolLoc_ptr)
  {
    v3 = OpenGLESLibrary();
    v6[3] = dlsym(v3, "glBindFramebuffer");
    getglBindFramebufferSymbolLoc_ptr = v6[3];
    v2 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v2)
  {
    _SUUIglBindFramebuffer_cold_1();
  }

  return v2(36160, a1);
}

void sub_259E28478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _SUUIOffscreenRenderOperationPushRenderingContext(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    v6 = _SUUIOffscreenRenderOperationGetRendererStackAccessQueue();
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___SUUIOffscreenRenderOperationPushRenderingContext_block_invoke;
    v7[3] = &unk_2798F5AF8;
    v8 = v3;
    v9 = v5;
    dispatch_barrier_async(v6, v7);
  }
}

void *__Block_byref_object_copy__49(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t IOSurfaceLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!IOSurfaceLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __IOSurfaceLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_2798FB058;
    v4 = 0;
    IOSurfaceLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = IOSurfaceLibraryCore_frameworkLibrary;
  if (!IOSurfaceLibraryCore_frameworkLibrary)
  {
    IOSurfaceLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t OpenGLESLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!OpenGLESLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __OpenGLESLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_2798FB070;
    v4 = 0;
    OpenGLESLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = OpenGLESLibraryCore_frameworkLibrary;
  if (!OpenGLESLibraryCore_frameworkLibrary)
  {
    OpenGLESLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

Class __getEAGLContextClass_block_invoke(uint64_t a1)
{
  OpenGLESLibrary();
  result = objc_getClass("EAGLContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getEAGLContextClass_block_invoke_cold_1();
  }

  getEAGLContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkIOSurfaceWidthSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IOSurfaceLibrary();
  result = dlsym(v2, "kIOSurfaceWidth");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkIOSurfaceWidthSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkIOSurfaceHeightSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IOSurfaceLibrary();
  result = dlsym(v2, "kIOSurfaceHeight");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkIOSurfaceHeightSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkIOSurfaceBytesPerElementSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IOSurfaceLibrary();
  result = dlsym(v2, "kIOSurfaceBytesPerElement");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkIOSurfaceBytesPerElementSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkIOSurfacePixelFormatSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IOSurfaceLibrary();
  result = dlsym(v2, "kIOSurfacePixelFormat");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkIOSurfacePixelFormatSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkIOSurfaceIsGlobalSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IOSurfaceLibrary();
  result = dlsym(v2, "kIOSurfaceIsGlobal");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkIOSurfaceIsGlobalSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIOSurfaceCreateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IOSurfaceLibrary();
  result = dlsym(v2, "IOSurfaceCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIOSurfaceCreateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getglClearColorSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = OpenGLESLibrary();
  result = dlsym(v2, "glClearColor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getglClearColorSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getglClearSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = OpenGLESLibrary();
  result = dlsym(v2, "glClear");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getglClearSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getglGetErrorSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = OpenGLESLibrary();
  result = dlsym(v2, "glGetError");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getglGetErrorSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getglBindFramebufferSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = OpenGLESLibrary();
  result = dlsym(v2, "glBindFramebuffer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getglBindFramebufferSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getglDeleteFramebuffersSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = OpenGLESLibrary();
  result = dlsym(v2, "glDeleteFramebuffers");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getglDeleteFramebuffersSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getglDeleteTexturesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = OpenGLESLibrary();
  result = dlsym(v2, "glDeleteTextures");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getglDeleteTexturesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __IOSurfaceLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  IOSurfaceLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __OpenGLESLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  OpenGLESLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t _SUUIglBindTexture(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v2 = getglBindTextureSymbolLoc_ptr;
  v8 = getglBindTextureSymbolLoc_ptr;
  if (!getglBindTextureSymbolLoc_ptr)
  {
    v3 = OpenGLESLibrary();
    v6[3] = dlsym(v3, "glBindTexture");
    getglBindTextureSymbolLoc_ptr = v6[3];
    v2 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v2)
  {
    _SUUIglBindTexture_cold_1();
  }

  return v2(3553, a1);
}

void sub_259E29378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _SUUIglTexParameteri(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v4 = getglTexParameteriSymbolLoc_ptr;
  v10 = getglTexParameteriSymbolLoc_ptr;
  if (!getglTexParameteriSymbolLoc_ptr)
  {
    v5 = OpenGLESLibrary();
    v8[3] = dlsym(v5, "glTexParameteri");
    getglTexParameteriSymbolLoc_ptr = v8[3];
    v4 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v4)
  {
    _SUUIglTexParameteri_cold_1();
  }

  return v4(3553, a1, a2);
}

void sub_259E29488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getglGenTexturesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = OpenGLESLibrary();
  result = dlsym(v2, "glGenTextures");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getglGenTexturesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getglBindTextureSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = OpenGLESLibrary();
  result = dlsym(v2, "glBindTexture");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getglBindTextureSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIOSurfaceGetWidthSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IOSurfaceLibrary();
  result = dlsym(v2, "IOSurfaceGetWidth");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIOSurfaceGetWidthSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIOSurfaceGetHeightSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IOSurfaceLibrary();
  result = dlsym(v2, "IOSurfaceGetHeight");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIOSurfaceGetHeightSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getglTexParameteriSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = OpenGLESLibrary();
  result = dlsym(v2, "glTexParameteri");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getglTexParameteriSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getglGenFramebuffersSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = OpenGLESLibrary();
  result = dlsym(v2, "glGenFramebuffers");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getglGenFramebuffersSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getglFramebufferTexture2DSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = OpenGLESLibrary();
  result = dlsym(v2, "glFramebufferTexture2D");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getglFramebufferTexture2DSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getglViewportSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = OpenGLESLibrary();
  result = dlsym(v2, "glViewport");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getglViewportSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id _SUUIOffscreenRenderOperationGetRendererStackAccessQueue()
{
  if (_SUUIOffscreenRenderOperationGetRendererStackAccessQueue_sOnceToken != -1)
  {
    _SUUIOffscreenRenderOperationGetRendererStackAccessQueue_cold_1();
  }

  v1 = _SUUIOffscreenRenderOperationGetRendererStackAccessQueue_sRendererStacAccessQueue;

  return v1;
}

void *__getkEAGLContextPropertyAcceleratedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = OpenGLESLibrary();
  result = dlsym(v2, "kEAGLContextPropertyAccelerated");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkEAGLContextPropertyAcceleratedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkEAGLContextPropertyClientRetainReleaseSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = OpenGLESLibrary();
  result = dlsym(v2, "kEAGLContextPropertyClientRetainRelease");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkEAGLContextPropertyClientRetainReleaseSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_259E29E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double SUUIAttributedStringGetLineHeight(void *a1)
{
  v1 = a1;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = [v1 length];
  v3 = *MEMORY[0x277D740A8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __SUUIAttributedStringGetLineHeight_block_invoke;
  v6[3] = &unk_2798FB0C0;
  v6[4] = &v7;
  [v1 enumerateAttribute:v3 inRange:0 options:v2 usingBlock:{0, v6}];
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void sub_259E2A1BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SUUIAttributedStringGetLineHeight_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  result = [a2 _bodyLeading];
  if (v3 >= v5)
  {
    v5 = v3;
  }

  *(*(*(a1 + 32) + 8) + 24) = v5;
  return result;
}

void sub_259E2AAB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_259E2C0FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__50(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259E2CD78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259E2D240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259E2D4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259E2D8AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__51(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259E2E154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__52(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259E35184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259E35778(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__53(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259E37A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259E3985C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259E39C88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id SUUIXEventSearchDictionary(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{@"search", @"type", 0}];
  v6 = v5;
  if (v3)
  {
    [v5 setObject:v3 forKey:@"term"];
  }

  if (v4)
  {
    [v6 setObject:v4 forKey:@"url"];
  }

  return v6;
}

uint64_t __AppleMediaServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AppleMediaServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_259E3BE9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__54(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259E3FC10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__55(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259E3FD1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259E3FE50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _SUUIFontDescriptorGetFontForTextStyle(uint64_t a1, void *a2)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a1 - 1;
  v5 = 0;
  v6 = 1.0;
  v7 = 1;
  v8 = MEMORY[0x277CC4A30];
  switch(v4)
  {
    case 0:
      goto LABEL_34;
    case 1:
      v5 = 0;
      v8 = MEMORY[0x277CC4A68];
      goto LABEL_34;
    case 2:
      v5 = 0;
      goto LABEL_17;
    case 3:
      v7 = 0;
      v5 = 0x8000;
LABEL_17:
      v8 = MEMORY[0x277CC4A38];
      goto LABEL_34;
    case 4:
      v5 = 0;
      goto LABEL_24;
    case 5:
      v7 = 0;
      v5 = 0x8000;
LABEL_24:
      v8 = MEMORY[0x277CC4A40];
      goto LABEL_34;
    case 6:
      v5 = 0;
      v8 = MEMORY[0x277CC4A70];
      goto LABEL_34;
    case 7:
      v5 = 0;
      goto LABEL_29;
    case 8:
      v7 = 0;
      v5 = 0x8000;
LABEL_29:
      v8 = MEMORY[0x277CC4A48];
      goto LABEL_34;
    case 9:
      v5 = 0;
      v8 = MEMORY[0x277CC4A48];
      v6 = 0.909090909;
      goto LABEL_34;
    case 10:
      v5 = 0;
      v8 = MEMORY[0x277CC4A50];
      goto LABEL_34;
    case 11:
      v5 = 0;
      v8 = MEMORY[0x277CC4A78];
      goto LABEL_34;
    case 12:
      v5 = 0;
      v8 = MEMORY[0x277CC4A58];
      goto LABEL_34;
    case 13:
      v5 = 0;
      v8 = MEMORY[0x277CC4A80];
      goto LABEL_34;
    case 14:
      v5 = 0;
      v8 = MEMORY[0x277CC4A98];
      goto LABEL_34;
    case 15:
      v5 = 0;
      v8 = MEMORY[0x277CC4A90];
      goto LABEL_34;
    case 16:
      v5 = 0;
      v8 = MEMORY[0x277CC4A88];
      goto LABEL_34;
    case 17:
      v5 = 0;
      goto LABEL_22;
    case 18:
    case 19:
      v7 = 0;
      v5 = 0x8000;
      goto LABEL_22;
    case 20:
      v7 = 0;
      v5 = 0x10000;
LABEL_22:
      v8 = MEMORY[0x277CC4A90];
      v6 = 0.933333333;
      goto LABEL_34;
    case 21:
      v5 = 0;
      v8 = MEMORY[0x277CC4A58];
      v6 = 2.05882353;
      goto LABEL_34;
    case 22:
      v5 = 0;
      v8 = MEMORY[0x277CC4A58];
      v6 = 1.35294118;
      goto LABEL_34;
    case 23:
      v5 = 0;
      v8 = MEMORY[0x277CC4A58];
      v6 = 1.29411765;
      goto LABEL_34;
    case 24:
      v5 = 0;
      v8 = MEMORY[0x277CC4A58];
      v6 = 1.17647059;
      goto LABEL_34;
    case 25:
      v5 = 0;
      goto LABEL_8;
    case 26:
    case 27:
      v7 = 0;
      v5 = 0x8000;
LABEL_8:
      v8 = MEMORY[0x277CC4A58];
      v6 = 1.05882353;
      goto LABEL_34;
    case 28:
      v5 = 0;
      v8 = MEMORY[0x277CC4AA0];
      goto LABEL_34;
    case 29:
      v5 = 0;
      v8 = MEMORY[0x277CC4AA8];
LABEL_34:
      v9 = *v8;
      if (!*v8)
      {
        goto LABEL_42;
      }

      if (_SUUIFontDescriptorGetCache_onceToken != -1)
      {
        _SUUIFontDescriptorGetFontForTextStyle_cold_1();
      }

      v10 = _SUUIFontDescriptorGetCache_fontDescriptorCache;
      v11 = [[_SUUIFontDescriptorCacheKey alloc] initWithTextStyle:v9 sizeCategory:v3];
      v12 = [v10 objectForKey:v11];
      if (!v12)
      {
        v13 = CTFontDescriptorCreateWithTextStyle();
        v14 = v13;
        if ((v7 & 1) == 0)
        {
          v15 = [v13 fontDescriptorWithSymbolicTraits:v5];

          v14 = v15;
        }

        v29 = *MEMORY[0x277D74338];
        v16 = *MEMORY[0x277D74388];
        v26[0] = *MEMORY[0x277D74398];
        v26[1] = v16;
        v27[0] = &unk_286BBE2B0;
        v27[1] = &unk_286BBE2C8;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
        v28 = v17;
        v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
        v30[0] = v18;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
        v12 = [v14 fontDescriptorByAddingAttributes:v19];

        [v10 setObject:v12 forKey:v11];
      }

      v20 = [v12 objectForKey:*MEMORY[0x277D74350]];
      [v20 floatValue];
      v22 = v6 * v21;
      v23 = ceilf(v22);

      v24 = [MEMORY[0x277D74300] fontWithDescriptor:v12 size:v23];

      break;
    default:
LABEL_42:
      v24 = 0;
      break;
  }

  return v24;
}

id SUUIFontLimitedPreferredFontForTextStyle(uint64_t a1, uint64_t a2)
{
  v15[13] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D75128] sharedApplication];
  v5 = [v4 preferredContentSizeCategory];

  v6 = v5;
  v7 = *MEMORY[0x277D76838];
  v8 = [v6 isEqualToString:*MEMORY[0x277D76838]];
  v9 = MEMORY[0x277D76840];
  if (v8)
  {
    v10 = 4;
  }

  else if ([v6 isEqualToString:*MEMORY[0x277D76840]])
  {
    v10 = 3;
  }

  else if ([v6 isEqualToString:*MEMORY[0x277D76828]])
  {
    v10 = 5;
  }

  else if ([v6 isEqualToString:*MEMORY[0x277D76858]])
  {
    v10 = 2;
  }

  else if ([v6 isEqualToString:*MEMORY[0x277D76820]])
  {
    v10 = 6;
  }

  else if ([v6 isEqualToString:*MEMORY[0x277D76818]])
  {
    v10 = 7;
  }

  else if ([v6 isEqualToString:*MEMORY[0x277D76830]])
  {
    v10 = 1;
  }

  else if ([v6 isEqualToString:*MEMORY[0x277D76808]])
  {
    v10 = 8;
  }

  else if ([v6 isEqualToString:*MEMORY[0x277D76800]])
  {
    v10 = 9;
  }

  else if ([v6 isEqualToString:*MEMORY[0x277D767F8]])
  {
    v10 = 10;
  }

  else if ([v6 isEqualToString:*MEMORY[0x277D767F0]])
  {
    v10 = 11;
  }

  else if ([v6 isEqualToString:*MEMORY[0x277D767E8]])
  {
    v10 = 12;
  }

  else
  {
    v10 = 4;
  }

  if (v10 <= a2)
  {
    v11 = v6;
  }

  else
  {
    v15[0] = 0;
    v15[1] = *MEMORY[0x277D76830];
    v15[2] = *MEMORY[0x277D76858];
    v15[3] = *v9;
    v15[4] = v7;
    v15[5] = *MEMORY[0x277D76828];
    v15[6] = *MEMORY[0x277D76820];
    v15[7] = *MEMORY[0x277D76818];
    v15[8] = *MEMORY[0x277D76808];
    v15[9] = *MEMORY[0x277D76800];
    v15[10] = *MEMORY[0x277D767F8];
    v15[11] = *MEMORY[0x277D767F0];
    v15[12] = *MEMORY[0x277D767E8];
    v11 = v15[a2];
    for (i = 12; i != -1; --i)
    {
    }
  }

  v13 = _SUUIFontDescriptorGetFontForTextStyle(a1, v11);

  return v13;
}

id SUUIFontPreferredFontForTextStyle(uint64_t a1)
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = [v2 preferredContentSizeCategory];

  v4 = _SUUIFontDescriptorGetFontForTextStyle(a1, v3);

  return v4;
}

void sub_259E410E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__56(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id SUUIErrorDocumentTitle(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 bundleIdentifier];

  if ([v3 isEqualToString:@"com.apple.AppStore"])
  {
    v4 = @"CANNOT_CONNECT_TO_APP_STORE";
    if (!v1)
    {
      goto LABEL_11;
    }

LABEL_6:
    v5 = [v1 localizedStringForKey:v4];
    goto LABEL_12;
  }

  if (([v3 isEqualToString:@"com.apple.iBooks"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"com.apple.MobileSMS"])
    {
      v4 = @"CANNOT_CONNECT_TO_IMESSAGE_STORE";
    }

    else
    {
      v4 = @"CANNOT_CONNECT_TO_ITUNES_STORE";
    }

    if (!v1)
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  v4 = @"CANNOT_CONNECT_TO_IBOOKS_STORE";
  if (v1)
  {
    goto LABEL_6;
  }

LABEL_11:
  v5 = [SUUIClientContext localizedStringForKey:v4 inBundles:0];
LABEL_12:
  v6 = v5;

  return v6;
}

void sub_259E431CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__57(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259E43C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259E43DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__58(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259E45734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259E45C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 176), 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__59(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__Block_byref_object_copy__60(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_259E466C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 128), 8);
  _Unwind_Resume(a1);
}

void SUUIInitializeViewElementFactory()
{
  if (SUUIInitializeViewElementFactory_sOnce != -1)
  {
    SUUIInitializeViewElementFactory_cold_1();
  }
}

uint64_t __SUUIInitializeViewElementFactory_block_invoke()
{
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"accountButtons" elementType:1];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"actions" elementType:3];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"activity" elementType:116];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"activityIndicator" elementType:4];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"asset" elementType:5];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"background" elementType:7];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"backgroundImage" elementType:49];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"badge" elementType:8];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"b" elementType:138];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"browse" elementType:10];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"br" elementType:138];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"button" elementType:12];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"card" elementType:14];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"carousel" elementType:15];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"circle" elementType:59];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"collectionList" elementType:20];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"column" elementType:21];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"content" elementType:26];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"commentTemplate" elementType:25];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"contentUnavailable" elementType:27];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"counter" elementType:28];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"countLimit" elementType:60];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"date" elementType:138];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"decorationImage" elementType:29];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"templateDefinition" elementType:136];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"description" elementType:138];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"divider" elementType:32];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"duration" elementType:138];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"entityProviderList" elementType:35];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"expand" elementType:36];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"facebook" elementType:38];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"filterBar" elementType:40];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"footer" elementType:41];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"fullscreenImg" elementType:42];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"grid" elementType:45];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"group" elementType:46];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"header" elementType:48];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"i" elementType:138];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"imageDeck" elementType:51];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"imageGrid" elementType:154];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"img" elementType:49];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"indexBar" elementType:53];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"indexBarEntry" elementType:54];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"indexBarEntryList" elementType:55];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"info" elementType:56];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"infoList" elementType:57];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"input" elementType:58];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"item" elementType:59];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"label" elementType:138];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"limitList" elementType:61];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"list" elementType:62];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"lockup" elementType:66];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"menu" elementType:69];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"menuBar" elementType:70];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"menuItem" elementType:72];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"nativeViewPlaceholderTemplate" elementType:73];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"navigationBar" elementType:74];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"navigationTitle" elementType:138];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"nearByApps" elementType:76];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"notice" elementType:138];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"number" elementType:138];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"offer" elementType:77];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"option" elementType:59];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"ordinal" elementType:80];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"palette" elementType:75];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"placeholder" elementType:86];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"popularity" elementType:9];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"predicateList" elementType:89];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"previewControl" elementType:90];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"progressIndicator" elementType:95];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"propertyPredicate" elementType:88];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"pullToRefresh" elementType:99];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"response" elementType:102];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"reviewList" elementType:104];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"review" elementType:103];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"row" elementType:105];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"section" elementType:108];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"segmentedBar" elementType:109];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"segmentedControl" elementType:109];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"select" elementType:69];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"settingsEditProfile" elementType:111];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"settingsFamily" elementType:112];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"settingsField" elementType:113];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"settingsProfile" elementType:114];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"shelf" elementType:118];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"signInControl" elementType:120];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"socialActivities" elementType:123];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"sortDescriptor" elementType:125];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"sortDescriptorList" elementType:126];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"spacer" elementType:127];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"stackList" elementType:131];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"span" elementType:138];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"split" elementType:128];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"starBar" elementType:133];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"starHistogram" elementType:134];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"starRating" elementType:135];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"subtitle" elementType:138];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"text" elementType:138];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"title" elementType:138];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"tomatoRating" elementType:144];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"toolbar" elementType:145];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"track" elementType:146];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"trackList" elementType:147];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"url" elementType:151];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"video" elementType:152];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"adFeedback" elementType:108];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"reason" elementType:59];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"charityTemplate" elementType:16];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"chartsTemplate" elementType:17];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"contentUnavailableTemplate" elementType:27];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"dialogTemplate" elementType:31];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"editorTemplate" elementType:34];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"exploreTemplate" elementType:37];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"familySetupTemplate" elementType:39];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"giftTemplate" elementType:44];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"loadingTemplate" elementType:65];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"reportAConcernTemplate" elementType:101];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"settingsTemplate" elementType:115];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"signInTemplate" elementType:121];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"menuBarTemplate" elementType:71];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"onboardingTemplate" elementType:85];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"panelTemplate" elementType:83];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"playlist" elementType:87];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"physicalCirclesTemplate" elementType:85];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"previewTemplate" elementType:91];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"productTemplate" elementType:93];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"redeemTemplate" elementType:98];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"shareTemplate" elementType:117];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"splitViewTemplate" elementType:129];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"stackTemplate" elementType:132];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"trendingSearchTemplate" elementType:148];
  v0 = MEMORY[0x277D1B130];
  v1 = objc_opt_class();

  return [v0 registerClass:v1 forElementName:@"writeAReviewTemplate" elementType:153];
}

void sub_259E4AE78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__61(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _telephonyNotification(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  v6 = SUUICoreTelephonyFramework();
  v7 = *SUUIWeakLinkedSymbolForString("kCTRegistrationOperatorNameChangedNotification", v6);
  v8 = *SUUIWeakLinkedSymbolForString("kCTRegistrationDisplayStatusChangedNotification", v6);
  v9 = *SUUIWeakLinkedSymbolForString("kCTRegistrationStatusChangedNotification", v6);
  v10 = *SUUIWeakLinkedSymbolForString("kCTSettingPhoneNumberChangedNotification", v6);
  if (CFEqual(a2, v7))
  {
    v11 = @"onOperatorChange";
LABEL_6:
    v12 = a4;
    v13 = [v12 appContext];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = ___telephonyNotification_block_invoke;
    v15[3] = &unk_2798FAD40;
    v16 = v12;
    v17 = v11;
    v14 = v12;
    [v13 evaluate:v15 completionBlock:0];

    return;
  }

  if (CFEqual(a2, v9) || CFEqual(a2, v8))
  {
    v11 = @"onRegistrationChange";
    goto LABEL_6;
  }

  if (CFEqual(a2, v10))
  {
    v11 = @"onPhoneNumberChange";
    goto LABEL_6;
  }
}

void sub_259E4DD1C(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  _Block_object_dispose((v2 - 120), 8);
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_259E4E648(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259E4E860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259E51C2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak((v18 - 56));
  _Unwind_Resume(a1);
}

void sub_259E52098(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

id SUUIMessageBannerAttributedString(void *a1, void *a2)
{
  v24[3] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(MEMORY[0x277D74240]);
  [v5 setAlignment:1];
  [v5 setLineBreakMode:4];
  v23[0] = *MEMORY[0x277D740A8];
  v6 = v23[0];
  v7 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
  v8 = *MEMORY[0x277D740C0];
  v24[0] = v7;
  v24[1] = v4;
  v9 = *MEMORY[0x277D74118];
  v23[1] = v8;
  v23[2] = v9;
  v24[2] = v5;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];

  v21[0] = v6;
  v11 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
  v22[0] = v11;
  v21[1] = v8;
  v12 = [MEMORY[0x277D75348] blackColor];
  v21[2] = v9;
  v22[1] = v12;
  v22[2] = v5;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];

  if (v3)
  {
    [v3 localizedStringForKey:@"ASK_PERMISSION_MESSAGE" inTable:@"ProductPage"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"ASK_PERMISSION_MESSAGE" inBundles:0 inTable:@"ProductPage"];
  }
  v14 = ;
  if (v3)
  {
    [v3 localizedStringForKey:@"ASK_PERMISSION_MESSAGE_HIGHLIGHT" inTable:@"ProductPage"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"ASK_PERMISSION_MESSAGE_HIGHLIGHT" inBundles:0 inTable:@"ProductPage"];
  }
  v15 = ;
  v16 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v14 validFormatSpecifiers:@"%@" error:0, v15];
  v17 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v16 attributes:v13];
  v18 = [v16 rangeOfString:v15];
  [v17 setAttributes:v10 range:{v18, v19}];

  return v17;
}

void sub_259E566B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259E5780C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _SUUIErrorFromError(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  v3 = [v2 isEqualToString:@"SUUIMacErrorDomain"];

  if (v3)
  {
    v4 = [v1 code];
    if (v4 == 2)
    {
      v5 = 7;
    }

    else
    {
      v5 = 4 * (v4 == 1);
    }

    v6 = [MEMORY[0x277CBEB38] dictionary];
    [v6 setObject:v1 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SUUIErrorDomain" code:v5 userInfo:v6];
  }

  else
  {
    v7 = v1;
  }

  return v7;
}

uint64_t SUUILabelViewStyleForString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"title"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"subtitle"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"notice"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"description"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"navigationTitle"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_259E5C890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__62(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id SUUILabelStringAttributesWithSpanElement(void *a1)
{
  v1 = [a1 style];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = SUUIViewElementFontWithStyle(v1);
  if (v3)
  {
    [v2 setObject:v3 forKey:*MEMORY[0x277D740A8]];
  }

  v4 = [v1 ikColor];
  v5 = [v4 color];

  if (v5)
  {
    [v2 setObject:v5 forKey:*MEMORY[0x277D740C0]];
  }

  if (![v2 count])
  {

    v2 = 0;
  }

  return v2;
}

void sub_259E61CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__63(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259E62990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double SUUILockupImageSizeForLockupSize(unint64_t a1, uint64_t a2)
{
  if (a2 == 2 || a2 == 6)
  {
    if (a1 >= 6)
    {
      return 120.0;
    }

    v2 = &unk_259FCB628;
    return v2[a1];
  }

  if (a2 == 8)
  {
    if (a1 < 6)
    {
      v2 = &unk_259FCB5C8;
      return v2[a1];
    }

    return 175.0;
  }

  else
  {
    if (a1 <= 5)
    {
      v2 = &unk_259FCB688;
      return v2[a1];
    }

    return 125.0;
  }
}

uint64_t SUUILockupImageStyleForItemKind(uint64_t a1)
{
  if ((a1 - 2) > 6)
  {
    return 0;
  }

  else
  {
    return qword_259FCB6B8[a1 - 2];
  }
}

void sub_259E66E14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259E686F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259E68AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SUUIGiftAmountButtonsWithAmounts(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = objc_alloc_init(SUUIGiftAmountButton);
        v10 = [v8 displayLabel];
        [(SUUIGiftAmountButton *)v9 setTitle:v10 forState:0];

        [(SUUIGiftAmountButton *)v9 sizeToFit];
        [v2 addObject:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v2;
}

void sub_259E698C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259E6C080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259E6D094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259E6DE74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259E6ED00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__65(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

CGFloat CGRectWithFlippedOriginRelativeToBoundingRect(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v16.origin.x = a5;
  v16.origin.y = a6;
  v16.size.width = a7;
  v16.size.height = a8;
  v14 = a1 - CGRectGetMinX(v16);
  v17.origin.x = a5;
  v17.origin.y = a6;
  v17.size.width = a7;
  v17.size.height = a8;
  return CGRectGetMaxX(v17) - v14 - a3;
}

uint64_t SUUIItemCollectionItemPageRangeForCollectionView(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = [v5 indexPathForItemAtPoint:{a2, a3}];
  if (v6)
  {
    v7 = [v5 collectionViewLayout];
    [v5 bounds];
    [v7 itemSize];
    [v5 bounds];
    [v7 itemSize];
    v8 = [v6 item];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t SUUIItemCollectionItemPageRangeForTableView(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = [v5 indexPathForRowAtPoint:{a2, a3}];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 item];
    v9 = v8 & ~(v8 >> 63);
    [v5 rowHeight];
    if (v10 > 0.0)
    {
      [v5 bounds];
      [v5 rowHeight];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t SUUIItemCollectionVisibleItemRangeForCollectionView(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = [a1 indexPathsForVisibleItems];
  if ([v1 count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v2 = v1;
    v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v11;
      v6 = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v8 = [*(*(&v10 + 1) + 8 * i) item];
          if (v6 >= v8)
          {
            v6 = v8;
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v4);
    }

    else
    {
      v6 = 0x7FFFFFFFFFFFFFFFLL;
    }

    [v2 count];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t SUUIItemCollectionVisibleItemRangeForTableView(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = [a1 indexPathsForVisibleRows];
  if ([v1 count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v2 = v1;
    v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v11;
      v6 = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v8 = [*(*(&v10 + 1) + 8 * i) row];
          if (v6 >= v8)
          {
            v6 = v8;
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v4);
    }

    else
    {
      v6 = 0x7FFFFFFFFFFFFFFFLL;
    }

    [v2 count];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_259E727D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259E72DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__66(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void SUUIConfigureDownloadsCellView(void *a1, void *a2, void *a3, unsigned int a4, void *a5)
{
  v40[2] = *MEMORY[0x277D85DE8];
  v8 = a2;
  v38 = *MEMORY[0x277D740A8];
  v9 = v38;
  v10 = MEMORY[0x277D74300];
  v33 = a5;
  v34 = a3;
  v11 = a1;
  v12 = [v10 systemFontOfSize:14.0];
  v40[0] = v12;
  v39 = *MEMORY[0x277D740C0];
  v13 = v39;
  v14 = [MEMORY[0x277D75348] labelColor];
  v40[1] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v38 count:2];

  v36[0] = v9;
  v16 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
  v36[1] = v13;
  v37[0] = v16;
  v17 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
  v37[1] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];

  v19 = objc_alloc_init(MEMORY[0x277CCAB48]);
  v20 = [v8 valueForProperty:*MEMORY[0x277D6A0E0]];
  if (v20)
  {
    v21 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v20 attributes:v15];
    [v19 appendAttributedString:v21];
  }

  v32 = v20;
  v22 = [v8 valueForProperty:*MEMORY[0x277D69F70]];
  if (v22)
  {
    v23 = objc_alloc(MEMORY[0x277CCA898]);
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@" – %@", v22];
    v25 = [v23 initWithString:v24 attributes:v18];
    [v19 appendAttributedString:v25];
  }

  v26 = [v8 valueForProperty:*MEMORY[0x277D69FC8]];
  v27 = [v8 valueForProperty:*MEMORY[0x277D69FA0]];
  if ([v27 BOOLValue])
  {
    v28 = [v26 isEqual:*MEMORY[0x277D69F30]];
  }

  else
  {
    v28 = 0;
  }

  if ([v26 isEqualToString:*MEMORY[0x277D69F40]])
  {
    v29 = 2;
  }

  else if ([v26 isEqualToString:*MEMORY[0x277D69F60]])
  {
    v29 = 2;
  }

  else
  {
    v29 = v28;
  }

  [v11 setAttributedTitle:v19];
  v30 = SUUIDownloadsStatusString(v8, v33);

  [v11 setSubtitle:v30];
  v31 = [v8 valueForExternalProperty:*MEMORY[0x277D69E90]];
  [v31 doubleValue];
  [v11 setProgress:?];

  [v11 setImage:v34];
  [v11 setButtonType:v29];
  [v11 setIsPad:a4];
}

id SUUIDownloadsStatusString(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 valueForProperty:*MEMORY[0x277D69FC8]];
  if ([v5 isEqualToString:*MEMORY[0x277D69F40]])
  {
    if (v4)
    {
      v6 = @"DOWNLOAD_ERROR";
LABEL_14:
      v10 = [v4 localizedStringForKey:v6 inTable:@"Download"];
LABEL_21:
      v13 = v10;
      goto LABEL_22;
    }

    v9 = @"DOWNLOAD_ERROR";
    goto LABEL_20;
  }

  v7 = [v3 valueForProperty:*MEMORY[0x277D69FD8]];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    if (v4)
    {
      v6 = @"RESTRICTED";
      goto LABEL_14;
    }

    v9 = @"RESTRICTED";
LABEL_20:
    v10 = [SUUIClientContext localizedStringForKey:v9 inBundles:0 inTable:@"Download"];
    goto LABEL_21;
  }

  if ([v5 isEqualToString:*MEMORY[0x277D69F60]])
  {
    if (v4)
    {
      v6 = @"TAP_TO_RESUME";
      goto LABEL_14;
    }

    v9 = @"TAP_TO_RESUME";
    goto LABEL_20;
  }

  if ([v5 isEqualToString:*MEMORY[0x277D69F68]])
  {
    if (v4)
    {
      v6 = @"WAITING";
      goto LABEL_14;
    }

    v9 = @"WAITING";
    goto LABEL_20;
  }

  v11 = [v3 valueForExternalProperty:*MEMORY[0x277D69E98]];
  if (![v11 length])
  {
    if (([v5 isEqualToString:*MEMORY[0x277D69F30]] & 1) == 0)
    {
      goto LABEL_36;
    }

    v15 = [v3 valueForExternalProperty:*MEMORY[0x277D69E78]];
    v16 = [v15 longLongValue];

    v17 = [v3 valueForExternalProperty:*MEMORY[0x277D69E80]];
    v18 = [v17 longLongValue];

    v19 = [v3 valueForExternalProperty:*MEMORY[0x277D69E90]];
    [v19 doubleValue];
    v21 = v20;

    v22 = v16 < 1 || v18 < 1;
    if (v22 && v21 < 0.01)
    {
      if (v4)
      {
        v23 = @"UNKNOWN_PROGRESS";
LABEL_38:
        v12 = [v4 localizedStringForKey:v23 inTable:@"Download"];
        goto LABEL_45;
      }

      v24 = @"UNKNOWN_PROGRESS";
      goto LABEL_44;
    }

    if (v16 >= v18 && v21 >= 1.0)
    {
LABEL_36:
      if (v4)
      {
        v23 = @"PROCESSING_DOWNLOAD";
        goto LABEL_38;
      }

      v24 = @"PROCESSING_DOWNLOAD";
LABEL_44:
      v12 = [SUUIClientContext localizedStringForKey:v24 inBundles:0 inTable:@"Download"];
      goto LABEL_45;
    }

    v25 = [v3 valueForExternalProperty:*MEMORY[0x277D69E88]];
    [v25 doubleValue];
    v27 = v26;

    if (v27 < 0.0)
    {
      if (v4)
      {
        [v4 localizedStringForKey:@"DATA_PROGRESS" inTable:@"Download"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"DATA_PROGRESS" inBundles:0 inTable:@"Download"];
      }
      v28 = ;
      v29 = MEMORY[0x277CCACA8];
      v30 = CPFSSizeStrings();
      v31 = CPFSSizeStrings();
      v13 = [v29 stringWithValidatedFormat:v28 validFormatSpecifiers:@"%@%@" error:0, v30, v31];

      goto LABEL_46;
    }

    if ((v16 & ~(v16 >> 63)) > v18)
    {
      v18 = v16 & ~(v16 >> 63);
    }

    if (v4)
    {
      [v4 localizedStringForKey:@"TIME_FORMAT" inTable:@"Download"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"TIME_FORMAT" inBundles:0 inTable:@"Download"];
    }
    v32 = ;
    v33 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v32 validFormatSpecifiers:@"%d%d" error:0, v27 / 0x3CuLL, v27 % 0x3C];
    if (v16 < 1 || !v18)
    {
      if (v4)
      {
        [v4 localizedStringForKey:@"PERCENTAGE_PROGRESS" inTable:@"Download"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"PERCENTAGE_PROGRESS" inBundles:0 inTable:@"Download"];
      }
      v38 = ;
      v13 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v38 validFormatSpecifiers:@"%ld%@" error:0, (v21 * 100.0), v33];
      goto LABEL_70;
    }

    v43 = v32;
    v34 = [MEMORY[0x277D75418] currentDevice];
    v35 = [v34 userInterfaceIdiom];

    if ((v35 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      if (v4)
      {
        v36 = @"TIME_PROGRESS_LONG";
LABEL_63:
        v37 = [v4 localizedStringForKey:v36 inTable:@"Download"];
LABEL_69:
        v38 = v37;
        v40 = MEMORY[0x277CCACA8];
        v41 = CPFSSizeStrings();
        v42 = CPFSSizeStrings();
        v13 = [v40 stringWithValidatedFormat:v38 validFormatSpecifiers:@"%@%@%@" error:0, v41, v42, v33];

        v32 = v43;
LABEL_70:

        goto LABEL_46;
      }

      v39 = @"TIME_PROGRESS_LONG";
    }

    else
    {
      if (v4)
      {
        v36 = @"TIME_PROGRESS";
        goto LABEL_63;
      }

      v39 = @"TIME_PROGRESS";
    }

    v37 = [SUUIClientContext localizedStringForKey:v39 inBundles:0 inTable:@"Download"];
    goto LABEL_69;
  }

  v12 = v11;
LABEL_45:
  v13 = v12;
LABEL_46:

LABEL_22:

  return v13;
}

void sub_259E771E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__67(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259E78B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SUUIGetFamilyMemberImage(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (v7)
  {
    v12 = v8 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  if (v12 && !v9 && !v10 || (v14 = SUUIAppleAccountUIFramework(), v15 = objc_alloc_init(SUUIWeakLinkedClassForString(&cfstr_Aauiprofilepic.isa, v14)), [v15 setPictureStyle:0], objc_msgSend(v15, "setPictureDiameter:", 60.0), !v15) || (v16 = SUUIAppleAccountFramework(), v17 = objc_alloc_init(SUUIWeakLinkedClassForString(&cfstr_Aafamilymember.isa, v16)), objc_msgSend(v17, "setFirstName:", v7), objc_msgSend(v17, "setLastName:", v8), objc_msgSend(v17, "setPersonID:", v11), objc_msgSend(v17, "setAppleID:", v9), objc_msgSend(v15, "profilePictureForFamilyMember:", v17), v18 = objc_claimAutoreleasedReturnValue(), v17, v15, !v18))
  {
    v19 = SUUIContactsUIFramework();
    v20 = [objc_alloc(SUUIWeakLinkedClassForString(&cfstr_Cnmonogrammer.isa v19))];
    v21 = v20;
    if (v13)
    {
      [v20 monogramForPersonWithFirstName:v7 lastName:v8];
    }

    else
    {
      [v20 silhouetteMonogram];
    }
    v18 = ;
  }

  return v18;
}

void sub_259E7BECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SUUICacheCodingDecodeArray(void *a1, objc_class *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [a2 alloc];
        v12 = [v11 initWithCacheRepresentation:{v10, v14}];
        if (v12)
        {
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

id SUUICacheCodingEncodeArray(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * i) cacheRepresentation];
        if (v8)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

void SUUICollectionViewUpdatePerspectiveCells(void *a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = [v3 indexPathsForVisibleItems];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v33;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v33 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v32 + 1) + 8 * i);
          if ([v4 containsIndex:{objc_msgSend(v11, "section")}])
          {
            v12 = [v3 cellForItemAtIndexPath:v11];
            if (v12)
            {
              [v5 addObject:v12];
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = [v3 visibleCells];
  }

  [v3 bounds];
  x = v39.origin.x;
  y = v39.origin.y;
  width = v39.size.width;
  height = v39.size.height;
  MidX = CGRectGetMidX(v39);
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  MidY = CGRectGetMidY(v40);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __SUUICollectionViewUpdatePerspectiveCells_block_invoke;
  v31[3] = &__block_descriptor_48_e55_q24__0__UICollectionViewCell_8__UICollectionViewCell_16l;
  *&v31[4] = MidX;
  *&v31[5] = MidY;
  v19 = [v5 sortedArrayWithOptions:0 usingComparator:v31];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v20 = v19;
  v21 = [v20 countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v28;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v28 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v27 + 1) + 8 * j);
        if ([v25 conformsToProtocol:{&unk_286C2FC68, v27}])
        {
          [v25 updateForChangedDistanceFromVanishingPoint];
          v26 = [v25 superview];
          [v26 sendSubviewToBack:v25];
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v22);
  }
}

uint64_t __SUUICollectionViewUpdatePerspectiveCells_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 center];
  [v4 center];

  UIDistanceBetweenPoints();
  v6 = v5;
  UIDistanceBetweenPoints();
  if (v6 < v7)
  {
    return -1;
  }

  else
  {
    return v6 > v7;
  }
}

void sub_259E7FBB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__68(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259E82EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double SUUITextLayoutSizeForCTFrame(const __CTFrame *a1, CFIndex a2)
{
  Path = CTFrameGetPath(a1);
  BoundingBox = CGPathGetBoundingBox(Path);
  width = BoundingBox.size.width;
  Lines = CTFrameGetLines(a1);
  Count = CFArrayGetCount(Lines);
  if (a2 && Count > a2)
  {
    origins.x = 0.0;
    origins.y = 0.0;
    v12.x = 0.0;
    v12.y = 0.0;
    v14.location = 0;
    v14.length = 1;
    CTFrameGetLineOrigins(a1, v14, &v12);
    v8 = a2 - 1;
    v15.location = v8;
    v15.length = 1;
    CTFrameGetLineOrigins(a1, v15, &origins);
    ValueAtIndex = CFArrayGetValueAtIndex(Lines, v8);
    CTLineGetBoundsWithOptions(ValueAtIndex, 0x14uLL);
  }

  v10 = width;
  return ceilf(v10);
}

uint64_t SUUIStatusBarAlertStyleFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"information"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"success"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"failure"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"other"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id SUUIStatusBarAlertStyleGetColor(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      a1 = [MEMORY[0x277D75348] systemRedColor];
    }

    else if (a1 == 3)
    {
      a1 = [MEMORY[0x277D75348] systemPurpleColor];
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      a1 = [MEMORY[0x277D75348] systemGreenColor];
    }
  }

  else
  {
    a1 = [MEMORY[0x277D75348] systemBlueColor];
  }

  return a1;
}

void sub_259E88784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__69(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259E88928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *SUUIShareSheetActivityTypeForUIActivityType(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x277D54710]])
  {
    v2 = @"airdrop";
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D54748]])
  {
    v2 = @"facebook";
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D54728]])
  {
    v2 = @"mail";
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D54738]])
  {
    v2 = @"message";
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D54720]])
  {
    v2 = @"pasteboard";
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D54770]])
  {
    v2 = @"sina-weibo";
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D54758]])
  {
    v2 = @"tencent-weibo";
  }

  else
  {
    v2 = v1;
  }

  return v2;
}

void sub_259E89D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_259E8AD10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259E8E9F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259E8EE90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 192), 8);
  _Block_object_dispose((v39 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

SUUIMessageBanner *SUUIFamilyAlertMessageBanner(void *a1, void *a2, uint64_t *a3)
{
  v98 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v71 = a2;
  v5 = +[SUUIFamilyCircleController sharedController];
  v6 = [v5 iCloudFamily];
  v66 = v5;
  v7 = [v5 familyCircle];
  v8 = [MEMORY[0x277D69A20] defaultStore];
  v72 = [v8 activeAccount];

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v9 = [v6 members];
  v10 = [v9 countByEnumeratingWithState:&v73 objects:v97 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v74;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v74 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v73 + 1) + 8 * i);
        if ([v15 isMe])
        {
          v16 = v15;

          v12 = v16;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v73 objects:v97 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  *a3 = 0;
  v67 = v4;
  if (!v7)
  {
    v21 = [v6 members];
    v22 = [v21 count];

    if (!v22)
    {
      goto LABEL_21;
    }

    v23 = [v12 iTunesAccountDSID];
    v24 = [v72 uniqueIdentifier];
    v25 = [v23 isEqual:v24];

    if ((v25 & 1) == 0)
    {
      *a3 = 1;
LABEL_36:
      if (v4)
      {
        [v4 localizedStringForKey:@"PURCHASED_FAMILY_ACCOUNT_MISMATCH"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"PURCHASED_FAMILY_ACCOUNT_MISMATCH" inBundles:0];
      }
      v29 = ;
      if (v4)
      {
        [v4 localizedStringForKey:@"PURCHASED_FAMILY_ACCOUNT_MISMATCH_HIGHLIGHT"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"PURCHASED_FAMILY_ACCOUNT_MISMATCH_HIGHLIGHT" inBundles:0];
      }
      v68 = ;
      v64 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v29 validFormatSpecifiers:@"%@" error:0, v68];
      v63 = 0;
      goto LABEL_48;
    }

    v26 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v27 = [v26 BOOLForKey:@"SUUIUserDefaultsKeyHideFamilyBanner"];

    if (v27)
    {
      goto LABEL_21;
    }

    goto LABEL_27;
  }

  if (!v6 || !v12)
  {
    goto LABEL_21;
  }

  v17 = [v12 iTunesAccountDSID];

  if (!v17)
  {
LABEL_27:
    *a3 = 3;
    goto LABEL_28;
  }

  v18 = [v12 iTunesAccountDSID];
  v19 = [v72 uniqueIdentifier];
  v20 = [v18 isEqual:v19];

  if ((v20 & 1) == 0)
  {
    *a3 = 2;
LABEL_25:
    if (v4)
    {
      [v4 localizedStringForKey:@"PURCHASED_FAMILY_ACCOUNT_MISMATCH_2"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"PURCHASED_FAMILY_ACCOUNT_MISMATCH_2" inBundles:0];
    }
    v29 = ;
    if (v4)
    {
      [v4 localizedStringForKey:@"PURCHASED_FAMILY_ACCOUNT_MISMATCH_2_HIGHLIGHT"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"PURCHASED_FAMILY_ACCOUNT_MISMATCH_2_HIGHLIGHT" inBundles:0];
    }
    v30 = ;
    v31 = MEMORY[0x277CCACA8];
    v32 = [v12 appleID];
    v68 = v30;
    v64 = [v31 stringWithValidatedFormat:v29 validFormatSpecifiers:@"%@%@" error:0, v32, v30];

    v63 = 0;
    *a3 = 2;
    goto LABEL_48;
  }

LABEL_21:
  v28 = *a3;
  if (*a3 != 3)
  {
    if (v28 == 2)
    {
      goto LABEL_25;
    }

    if (v28 != 1)
    {
      v63 = 0;
      v64 = 0;
      v68 = 0;
      v29 = 0;
      goto LABEL_48;
    }

    goto LABEL_36;
  }

LABEL_28:
  if (v4)
  {
    [v4 localizedStringForKey:@"PURCHASED_FAMILY_SETUP_INCOMPLETE"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"PURCHASED_FAMILY_SETUP_INCOMPLETE" inBundles:0];
  }
  v29 = ;
  if (v4)
  {
    [v4 localizedStringForKey:@"PURCHASED_FAMILY_SETUP_INCOMPLETE_HIGHLIGHT"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"PURCHASED_FAMILY_SETUP_INCOMPLETE_HIGHLIGHT" inBundles:0];
  }
  v68 = ;
  v64 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v29 validFormatSpecifiers:@"%@" error:0, v68];
  *a3 = 3;
  v63 = 1;
LABEL_48:
  v33 = [MEMORY[0x277D69B38] sharedConfig];
  v34 = [v33 shouldLog];
  if ([v33 shouldLogToDisk])
  {
    v34 |= 2u;
  }

  v35 = [v33 OSLogObject];
  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    v36 = v34;
  }

  else
  {
    v36 = v34 & 2;
  }

  v65 = v6;
  if (v36)
  {
    v62 = [v6 members];
    v37 = v29;
    v38 = [v62 count];
    v39 = [v12 iTunesAccountDSID];
    v40 = [v72 uniqueIdentifier];
    v41 = *a3;
    v81 = 138414082;
    v82 = v7;
    v83 = 2112;
    v84 = v6;
    v85 = 2048;
    v86 = v38;
    v29 = v37;
    v87 = 2112;
    v88 = v12;
    v89 = 2112;
    v90 = v39;
    v91 = 2112;
    v92 = v72;
    v93 = 2112;
    v94 = v40;
    v42 = v40;
    v95 = 2048;
    v96 = v41;
    LODWORD(v61) = 82;
    v43 = _os_log_send_and_compose_impl();

    if (!v43)
    {
      goto LABEL_57;
    }

    v35 = [MEMORY[0x277CCACA8] stringWithCString:v43 encoding:{4, &v81, v61}];
    free(v43);
    SSFileLog();
  }

LABEL_57:
  v70 = v29;
  if (v29)
  {
    v44 = objc_alloc_init(MEMORY[0x277D74240]);
    [v44 setAlignment:1];
    [v44 setLineBreakMode:4];
    v79[0] = *MEMORY[0x277D740A8];
    v45 = v79[0];
    v46 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
    v47 = *MEMORY[0x277D740C0];
    v80[0] = v46;
    v80[1] = v71;
    v48 = *MEMORY[0x277D74118];
    v79[1] = v47;
    v79[2] = v48;
    v80[2] = v44;
    v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:3];

    v77[0] = v45;
    v50 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
    v78[0] = v50;
    v77[1] = v47;
    v51 = [MEMORY[0x277D75348] blackColor];
    v77[2] = v48;
    v78[1] = v51;
    v78[2] = v44;
    v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:v77 count:3];

    v53 = v64;
    v54 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v64 attributes:v52];
    v55 = [v64 rangeOfString:v68];
    [v54 setAttributes:v49 range:{v55, v56}];

    if (v54)
    {
      v57 = objc_alloc_init(SUUIMessageBanner);
      [(SUUIMessageBanner *)v57 setAttributedMessage:v54];
      [(SUUIMessageBanner *)v57 setShowsClearButton:v63];
    }

    else
    {
      v57 = 0;
    }

    v58 = v67;
    v59 = v65;
  }

  else
  {
    v54 = 0;
    v57 = 0;
    v58 = v67;
    v53 = v64;
    v59 = v65;
  }

  return v57;
}

unint64_t SUUIPageForCollectionView(void *a1)
{
  v1 = a1;
  [v1 contentOffset];
  v3 = v2;
  [v1 frame];
  v5 = v4;

  return llround(v3 / v5);
}

void sub_259E90A44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259E910AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__71(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__3_0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259E9272C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_259E92D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__72(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void SUUIConsoleLogFormat(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = &a9;
  v10 = MEMORY[0x277CCACA8];
  v11 = a2;
  v12 = a1;
  v13 = [[v10 alloc] initWithFormat:v11 arguments:&a9];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __SUUIConsoleLogFormat_block_invoke;
  v15[3] = &unk_2798F7538;
  v16 = v13;
  v14 = v13;
  [v12 evaluate:v15 completionBlock:0];
}

void __SUUIConsoleLogFormat_block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = [a2 objectForKeyedSubscript:@"console"];
  v4 = [v3 objectForKeyedSubscript:@"log"];
  v7[0] = *(a1 + 32);
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v6 = [v4 callWithArguments:v5];
}

void SUUIConsoleLogObjects(void *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __SUUIConsoleLogObjects_block_invoke;
  v5[3] = &unk_2798F7538;
  v6 = v3;
  v4 = v3;
  [a1 evaluate:v5 completionBlock:0];
}

void __SUUIConsoleLogObjects_block_invoke(uint64_t a1, void *a2)
{
  v5 = [a2 objectForKeyedSubscript:@"console"];
  v3 = [v5 objectForKeyedSubscript:@"log"];
  v4 = [v3 callWithArguments:*(a1 + 32)];
}

void sub_259E95140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

uint64_t SUUIProductPageFragmentWithURL(void *a1)
{
  v1 = [a1 fragment];
  if ([v1 isEqualToString:@"reviews"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"related"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_259E996F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259E99E5C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_259E9AAB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a57, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__73(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void SUUINavigationBarController_SetTitleView(void *a1, void *a2)
{
  v3 = a2;
  v7 = a1;
  v4 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v4, sel_setTitleView_);
  Implementation = method_getImplementation(InstanceMethod);
  (Implementation)(v7, sel_setTitleView_, v3);
}

uint64_t storeShouldReverseLayoutDirection()
{
  if (didSetAtLeastOnce != -1)
  {
    storeShouldReverseLayoutDirection_cold_1();
  }

  return shouldFlipForRTL;
}

double _SUUIRectByApplyingUserInterfaceLayoutDirectionDependentOnStore(int a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  if (a1)
  {
    if (didSetAtLeastOnce != -1)
    {
      storeShouldReverseLayoutDirection_cold_1();
    }

    if ((shouldFlipForRTL & 1) == 0)
    {
      return a2;
    }

LABEL_9:
    v21.origin.x = a6;
    v21.origin.y = a7;
    v21.size.width = a8;
    v21.size.height = a9;
    MaxX = CGRectGetMaxX(v21);
    v22.origin.x = a2;
    v22.origin.y = a3;
    v22.size.width = a4;
    v22.size.height = a5;
    v18 = MaxX - CGRectGetMinX(v22);
    v23.origin.x = a2;
    v23.origin.y = a3;
    v23.size.width = a4;
    v23.size.height = a5;
    v19 = v18 - CGRectGetWidth(v23);
    v24.origin.x = a2;
    v24.origin.y = a3;
    v24.size.width = a4;
    v24.size.height = a5;
    CGRectGetMinY(v24);
    v25.origin.x = a2;
    v25.origin.y = a3;
    v25.size.width = a4;
    v25.size.height = a5;
    CGRectGetWidth(v25);
    v26.origin.x = a2;
    v26.origin.y = a3;
    v26.size.width = a4;
    v26.size.height = a5;
    CGRectGetHeight(v26);
    return v19;
  }

  if (shouldReverseLayoutDirection_onceToken != -1)
  {
    _SUUIRectByApplyingUserInterfaceLayoutDirectionDependentOnStore_cold_1();
  }

  if (shouldReverseLayoutDirection_shouldFlipForRTL == 1)
  {
    goto LABEL_9;
  }

  return a2;
}

double _SUUIRectByRemovingUserInterfaceLayoutDirectionInRectDependendOnStore(int a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  if (a1)
  {
    if (didSetAtLeastOnce != -1)
    {
      storeShouldReverseLayoutDirection_cold_1();
    }

    if ((shouldFlipForRTL & 1) == 0)
    {
      return a2;
    }

LABEL_9:
    v20.origin.x = a6;
    v20.origin.y = a7;
    v20.size.width = a8;
    v20.size.height = a9;
    MaxX = CGRectGetMaxX(v20);
    v21.origin.x = a2;
    v21.origin.y = a3;
    v21.size.width = a4;
    v21.size.height = a5;
    v18 = MaxX - CGRectGetMaxX(v21);
    v22.origin.x = a2;
    v22.origin.y = a3;
    v22.size.width = a4;
    v22.size.height = a5;
    CGRectGetMinY(v22);
    v23.origin.x = a2;
    v23.origin.y = a3;
    v23.size.width = a4;
    v23.size.height = a5;
    CGRectGetWidth(v23);
    v24.origin.x = a2;
    v24.origin.y = a3;
    v24.size.width = a4;
    v24.size.height = a5;
    CGRectGetHeight(v24);
    return v18;
  }

  if (shouldReverseLayoutDirection_onceToken != -1)
  {
    _SUUIRectByApplyingUserInterfaceLayoutDirectionDependentOnStore_cold_1();
  }

  if (shouldReverseLayoutDirection_shouldFlipForRTL == 1)
  {
    goto LABEL_9;
  }

  return a2;
}

uint64_t __shouldReverseLayoutDirection_block_invoke()
{
  v0 = [MEMORY[0x277D75128] sharedApplication];
  v1 = [v0 keyWindow];
  v2 = [v1 semanticContentAttribute];

  result = [MEMORY[0x277D75D18] userInterfaceLayoutDirectionForSemanticContentAttribute:v2];
  if (result == 1)
  {
    shouldReverseLayoutDirection_shouldFlipForRTL = 1;
  }

  return result;
}

void sub_259E9E51C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__74(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259EA0AE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259EA0EFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259EA2858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  _Block_object_dispose(&a50, 8);
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose(&a58, 8);
  _Block_object_dispose(&a62, 8);
  _Block_object_dispose(&a66, 8);
  _Unwind_Resume(a1);
}

void sub_259EA4760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259EA4958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259EA4B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259EA4E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_259EA5334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__75(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259EA62CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259EA6B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__76(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259EA921C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259EA99D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259EA9E1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259EAA238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259EAA5F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SUUITracklistAttributedStringForButton(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 buttonTitleStyle];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [v4 style];
  }

  v9 = v8;

  v10 = SUUIViewElementFontWithStyle(v9);
  if (!v10)
  {
    v10 = [MEMORY[0x277D74300] fontWithName:@"HelveticaNeue-Medium" size:9.0];
  }

  v11 = [v5 tintColor];
  v12 = SUUIViewElementPlainColorWithStyle(v9, v11);

  if (!v12)
  {
    v12 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
  }

  v13 = [v4 buttonText];
  v14 = [v13 attributedStringWithDefaultFont:v10 foregroundColor:v12 textAlignment:1 style:v9];

  return v14;
}

id SUUITracklistAttributedStringForLabel(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v6 style];
  v9 = SUUIViewElementFontWithStyle(v8);
  v10 = [v7 tintColor];

  v11 = SUUIViewElementPlainColorWithStyle(v8, v10);

  if (v5 && !v11)
  {
    if ([v5 isEnabled])
    {
      v11 = 0;
    }

    else
    {
      v11 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
    }
  }

  v12 = [v6 labelViewStyle];
  if (v12 <= 5)
  {
    if (((1 << v12) & 0xB) != 0)
    {
      if (!v9)
      {
        v9 = SUUIFontPreferredFontForTextStyle(5);
        if (v11)
        {
          goto LABEL_21;
        }

        goto LABEL_14;
      }

LABEL_13:
      if (v11)
      {
        goto LABEL_21;
      }

      goto LABEL_14;
    }

    if (((1 << v12) & 0x24) != 0)
    {
      if (v9)
      {
        goto LABEL_13;
      }

      v14 = SUUIFontForTextStyle(21);
      v15 = MEMORY[0x277D74300];
      [v14 pointSize];
      v9 = [v15 fontWithName:@"HelveticaNeue-Medium" size:?];

      if (!v11)
      {
LABEL_14:
        v13 = [MEMORY[0x277D75348] blackColor];
LABEL_15:
        v11 = v13;
      }
    }

    else
    {
      if (!v9)
      {
        v9 = SUUIFontPreferredFontForTextStyle(5);
      }

      if (!v11)
      {
        v13 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.8];
        goto LABEL_15;
      }
    }
  }

LABEL_21:
  v16 = [v6 text];
  v17 = [v16 attributedStringWithDefaultFont:v9 foregroundColor:v11 style:v8];

  return v17;
}

void sub_259EAAE74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259EABCE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__77(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259EABF58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259EAC274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_259EAC6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259EAD3F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259EAEDB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_259EAF274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259EB35F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_259EB3C58(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_259EB4234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id SUUITabBarControllerGetActiveNavigationController(void *a1)
{
  v1 = a1;
  v2 = [v1 selectedViewController];
  v3 = [v1 transientViewController];
  if (!v3)
  {
    if (!v2)
    {
      v9 = 0;
      goto LABEL_22;
    }

    v5 = SUUITabBarControllerGetMoreNavigationController(v1);
    v6 = [v1 allViewControllers];
    v7 = v6;
    if (v5 && (v8 = [v6 indexOfObjectIdenticalTo:v2], v8 >= objc_msgSend(v7, "indexOfObjectIdenticalTo:", v5)))
    {
      v21 = v5;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v2;
        v10 = [v9 visibleViewController];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v12 = [v9 visibleViewController];
          v13 = [v12 childViewController];
          objc_opt_class();
          v14 = objc_opt_isKindOfClass();

          if (v14)
          {
            v15 = [v12 childViewController];
            v16 = [v15 leftNavigationDocumentController];
            v24 = [v16 navigationController];

            v17 = [v15 rightNavigationDocumentController];
            v18 = [v17 navigationController];

            v19 = v18;
            if (v18 || (v19 = v24) != 0)
            {
              v20 = v19;

              v9 = v20;
            }
          }
        }

        goto LABEL_21;
      }

      v21 = [v2 navigationController];
    }

    v9 = v21;
LABEL_21:

    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = [v3 navigationController];
  }

  v9 = v4;
LABEL_22:
  v22 = v9;

  return v9;
}

id SUUITabBarControllerGetFloatingOverlayViewController(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 floatingOverlayViewController];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void SUUITabBarControllerSetFloatingOverlayViewControllerAnimated(void *a1, void *a2, uint64_t a3)
{
  v6 = a1;
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v6 setFloatingOverlayViewController:v5 animated:a3];
  }

  else if (v6 && v5)
  {
    NSLog(&cfstr_ErrorTryingToS.isa, v6);
  }
}

void sub_259EB5794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id SUUIIndexBarEntryDescriptorForIndexBarEntryViewElement(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 style];
  v6 = [v4 elementType];
  if (v6 == 49)
  {
    v13 = [v4 resourceName];
    v8 = v13;
    if (v13)
    {
      v9 = SUUIImageWithResourceName(v13);
      if (!v9)
      {
        v12 = 0;
        goto LABEL_11;
      }

      v14 = [SUUIIndexBarEntryDescriptor entryDescriptorWithImage:v9];
    }

    else
    {
      v15 = [SUUIArtwork alloc];
      v16 = [v4 URL];
      [v4 size];
      v9 = [(SUUIArtwork *)v15 initWithURL:v16 size:?];

      v14 = [SUUIIndexBarEntryDescriptor entryDescriptorWithArtwork:v9];
    }

    v12 = v14;
  }

  else
  {
    if (v6 != 138)
    {
      v12 = 0;
      goto LABEL_12;
    }

    v7 = [v4 style];
    v8 = SUUIViewElementPlainColorWithStyle(v7, 0);

    v9 = [v4 text];
    v10 = SUUIViewElementFontWithStyle(v5);
    v11 = [(SUUIArtwork *)v9 attributedStringWithDefaultFont:v10 foregroundColor:v8];
    v12 = [SUUIIndexBarEntryDescriptor entryDescriptorWithAttributedString:v11];
  }

LABEL_11:

LABEL_12:
  [v12 setVisibilityPriority:{objc_msgSend(v3, "visibilityPriority")}];

  return v12;
}

void sub_259EB803C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259EB846C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259EB9020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

void sub_259EB9468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

id SUUIRequiredVisibilitySetForLocalizedIndexedCollation()
{
  v30 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D75700] currentCollation];
  v1 = [v0 sectionIndexTitles];
  v2 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:3];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v25;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v10 = [&unk_286BBE100 containsObject:v9];
        if (v10 & 1) != 0 || ((v6 ^ 1))
        {
          v6 |= v10 ^ 1;
          [v2 addObject:v9];
        }

        else
        {
          v6 = 1;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v5);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = [v3 reverseObjectEnumerator];
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v21;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v20 + 1) + 8 * j);
        v18 = [&unk_286BBE100 containsObject:v17];
        if (v18 & 1) != 0 || ((v14 ^ 1))
        {
          v14 |= v18 ^ 1;
          [v2 addObject:v17];
        }

        else
        {
          v14 = 1;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v13);
  }

  return v2;
}

void sub_259EBE428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259EBE578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__78(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259EBE7F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259EBFB6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__79(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259EBFEB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void SUUIInitializeDOMFeatureFactory()
{
  if (SUUIInitializeDOMFeatureFactory_sOnce != -1)
  {
    SUUIInitializeDOMFeatureFactory_cold_1();
  }
}

void __SUUIInitializeDOMFeatureFactory_block_invoke()
{
  v0 = objc_opt_class();
  SUUIRegisterDOMFeatureFactory(v0);
  v1 = objc_opt_class();
  SUUIRegisterDOMFeatureFactory(v1);
  v2 = objc_opt_class();
  SUUIRegisterDOMFeatureFactory(v2);
  v3 = objc_opt_class();
  SUUIRegisterDOMFeatureFactory(v3);
  v4 = objc_opt_class();

  SUUIRegisterDOMFeatureFactory(v4);
}

void SUUIRegisterDOMFeatureFactory(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 possibleFeatureNames];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v10;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [MEMORY[0x277D1B080] registerClass:a1 forFeatureName:*(*(&v9 + 1) + 8 * i)];
        }

        v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v4);
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    v7 = MEMORY[0x277D1B080];
    v8 = [a1 featureName];
    [v7 registerClass:a1 forFeatureName:?];
  }
}

void sub_259EC56A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t SUUIArtworkSizeDeltaIsBetter(uint64_t a1, uint64_t a2)
{
  v3 = a1 > 0 && a1 < a2;
  if (a2 < 0)
  {
    v3 = a1 > a2;
  }

  if (a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1;
  }

  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  if (a2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

id getCNComposeRecipientViewDidChangeNotification()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getCNComposeRecipientViewDidChangeNotificationSymbolLoc_ptr;
  v7 = getCNComposeRecipientViewDidChangeNotificationSymbolLoc_ptr;
  if (!getCNComposeRecipientViewDidChangeNotificationSymbolLoc_ptr)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCNComposeRecipientViewDidChangeNotificationSymbolLoc_block_invoke;
    v3[3] = &unk_2798FB038;
    v3[4] = &v4;
    __getCNComposeRecipientViewDidChangeNotificationSymbolLoc_block_invoke(v3);
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getCNComposeRecipientViewDidChangeNotification_cold_1();
  }

  v1 = *v0;

  return v1;
}

void sub_259EC70D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259EC7730(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_259EC99AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *__getCNComposeRecipientViewDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!ContactsAutocompleteUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __ContactsAutocompleteUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2798FCB70;
    v6 = 0;
    ContactsAutocompleteUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = ContactsAutocompleteUILibraryCore_frameworkLibrary;
  if (!ContactsAutocompleteUILibraryCore_frameworkLibrary)
  {
    __getCNComposeRecipientViewDidChangeNotificationSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "CNComposeRecipientViewDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNComposeRecipientViewDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ContactsAutocompleteUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ContactsAutocompleteUILibraryCore_frameworkLibrary = result;
  return result;
}

void sub_259ECC830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__81(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259ECC9E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259ECCDB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259ECCFFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_259ECEA4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__82(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259ECF5FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_259ED00D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259ED12CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259ED57D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259ED5BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259ED5E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__83(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259ED7598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__84(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259ED98E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__85(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259ED9FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259EE3024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259EE390C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t SUUIItemKindForString(uint64_t a1)
{
  v2 = &off_2798FD028;
  v3 = 25;
  while (![*v2 isEqualToString:a1])
  {
    v2 += 2;
    if (!--v3)
    {
      return 0;
    }
  }

  return *(v2 - 1);
}

id SUUIItemScreenshotsForDictionary(void *a1)
{
  v60 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [v1 objectForKey:*MEMORY[0x277D6A3D0]];
  objc_opt_class();
  v40 = v3;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_48;
  }

  v39 = v1;
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 scale];
  v6 = v5;

  v7 = [MEMORY[0x277D75418] currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (v8 == 1)
  {
    v9 = [v40 objectForKey:*MEMORY[0x277D6A3B8]];
    if (!v9)
    {
      v14 = [v40 objectForKey:*MEMORY[0x277D6A3C8]];
      v49 = -320 * v6;
      v47 = -196 * v6;
      v1 = v39;
      if (v14)
      {
        v48 = 568 * v6;
        v15 = -348;
      }

      else
      {
        v14 = [v40 objectForKey:*MEMORY[0x277D6A3C0]];
        v48 = 480 * v6;
        v15 = -294;
      }

      v46 = v6 * v15;
      goto LABEL_14;
    }

    v48 = v6 << 10;
    v49 = -768 * v6;
    v46 = -300 * v6;
    v10 = -225;
  }

  else
  {
    v11 = [MEMORY[0x277D759A0] mainScreen];
    [v11 bounds];
    v13 = v12;

    if (v13 <= 480.0 || ([v40 objectForKey:*MEMORY[0x277D6A3C8]], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v14 = [v40 objectForKey:*MEMORY[0x277D6A3C0]];
      v48 = 480 * v6;
      v49 = -320 * v6;
      v46 = -294 * v6;
      v47 = -196 * v6;
      v1 = v39;
      goto LABEL_14;
    }

    v48 = 568 * v6;
    v49 = -320 * v6;
    v46 = -348 * v6;
    v10 = -196;
  }

  v47 = v6 * v10;
  v1 = v39;
  v14 = v9;
LABEL_14:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_47;
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v38 = v14;
  v16 = v14;
  v17 = [v16 countByEnumeratingWithState:&v54 objects:v59 count:16];
  if (!v17)
  {
    goto LABEL_46;
  }

  v18 = v17;
  v19 = *v55;
  v42 = v16;
  v43 = v2;
  v41 = *v55;
  do
  {
    v20 = 0;
    v44 = v18;
    do
    {
      if (*v55 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v21 = *(*(&v54 + 1) + 8 * v20);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v45 = v20;
        v22 = v21;
        v23 = objc_alloc_init(SUUIScreenshot);
        v24 = [[SUUIArtwork alloc] initWithArtworkDictionary:v22];

        [(SUUIScreenshot *)v23 setArtwork:v24 forVariant:@"high-dpi"];
        [(SUUIScreenshot *)v23 setArtwork:v24 forVariant:@"low-dpi"];
        v25 = v23;
        goto LABEL_42;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v45 = v20;
        v26 = v21;
        v23 = objc_alloc_init(SUUIScreenshot);
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v25 = v26;
        v27 = [(SUUIScreenshot *)v25 countByEnumeratingWithState:&v50 objects:v58 count:16];
        if (!v27)
        {
          goto LABEL_41;
        }

        v28 = v27;
        v29 = *v51;
        v30 = 0x7FFFFFFFFFFFFFFFLL;
        v31 = 0x7FFFFFFFFFFFFFFFLL;
        while (1)
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v51 != v29)
            {
              objc_enumerationMutation(v25);
            }

            v33 = *(*(&v50 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v34 = [[SUUIArtwork alloc] initWithArtworkDictionary:v33];
              v35 = [(SUUIArtwork *)v34 width];
              if (v35 >= [(SUUIArtwork *)v34 height])
              {
                if (SUUIArtworkSizeDeltaIsBetter(v35 - v48, v30))
                {
                  [(SUUIScreenshot *)v23 setArtwork:v34 forVariant:@"high-dpi"];
                  v30 = v35 - v48;
                }

                v36 = v35 + v46;
                if (!SUUIArtworkSizeDeltaIsBetter(v36, v31))
                {
                  goto LABEL_38;
                }
              }

              else
              {
                if (SUUIArtworkSizeDeltaIsBetter(v35 + v49, v30))
                {
                  [(SUUIScreenshot *)v23 setArtwork:v34 forVariant:@"high-dpi"];
                  v30 = v35 + v49;
                }

                v36 = v35 + v47;
                if ((SUUIArtworkSizeDeltaIsBetter(v36, v31) & 1) == 0)
                {
                  goto LABEL_38;
                }
              }

              [(SUUIScreenshot *)v23 setArtwork:v34 forVariant:@"low-dpi", v38];
              v31 = v36;
LABEL_38:

              continue;
            }
          }

          v28 = [(SUUIScreenshot *)v25 countByEnumeratingWithState:&v50 objects:v58 count:16];
          if (!v28)
          {
LABEL_41:

            v24 = v23;
            v16 = v42;
            v2 = v43;
            v19 = v41;
            v18 = v44;
            if ([(SUUIScreenshot *)v23 numberOfVariants]>= 1)
            {
LABEL_42:
              [v2 addObject:{v23, v38}];
              v23 = v24;
            }

            v20 = v45;
            break;
          }
        }
      }

      ++v20;
    }

    while (v20 != v18);
    v18 = [v16 countByEnumeratingWithState:&v54 objects:v59 count:16];
  }

  while (v18);
LABEL_46:

  v14 = v38;
  v1 = v39;
LABEL_47:

LABEL_48:

  return v2;
}

uint64_t __Block_byref_object_copy__86(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void SUUIInitializeViewElementStyleFactory()
{
  if (SUUIInitializeViewElementStyleFactory___onceToken != -1)
  {
    SUUIInitializeViewElementStyleFactory_cold_1();
  }
}

uint64_t __SUUIInitializeViewElementStyleFactory_block_invoke()
{
  [MEMORY[0x277D1B140] registerStyle:@"itml-lockup-min-width" withType:1 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"itml-shelf-layout" withType:3 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"itml-shelf-zooming-layout-peeking-item-width" withType:1 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"itml-shelf-zooming-layout-inter-item-spacing" withType:1 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"itml-shelf-zooming-layout-item-width" withType:1 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"itml-shelf-zooming-layout-zoomed-item-width" withType:1 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"itml-shelf-zooming-layout-element-placement" withType:3 inherited:0];
  v0 = MEMORY[0x277D1B140];

  return [v0 registerStyle:@"itml-segmented-control-width" withType:3 inherited:0];
}

void sub_259EEE9E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_259EEF314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__87(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259EF4638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259EF5410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__88(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t SUUIGraphicsDeviceHasASTCSupport()
{
  if (SUUIGraphicsDeviceHasASTCSupport_onceToken != -1)
  {
    SUUIGraphicsDeviceHasASTCSupport_cold_1();
  }

  return SUUIGraphicsDeviceHasASTCSupport_supportsASTC;
}

uint64_t __SUUIGraphicsDeviceHasASTCSupport_block_invoke()
{
  result = MGGetBoolAnswer();
  SUUIGraphicsDeviceHasASTCSupport_supportsASTC = result;
  return result;
}

double SUUIGraphicsMatchViewBorderToStroke(void *a1, double a2)
{
  v2 = a2 * 0.5;
  [a1 contentScaleFactor];
  return round(v2 * v3) / v3;
}

CFMutableDataRef SUUIGraphicsCreateASTCDataFromImage(uint64_t a1)
{
  v9[2] = *MEMORY[0x277D85DE8];
  if (SoftLinkImageIO_onceToken != -1)
  {
    SUUIGraphicsCreateASTCDataFromImage_cold_1();
  }

  Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 0);
  v3 = weak_CGImageDestinationCreateWithData(Mutable, @"org.khronos.ktx", 1, 0);
  if (v3)
  {
    v4 = v3;
    v8[0] = weak_kCGImagePropertyEncoder;
    v8[1] = weak_kCGImagePropertyASTCBlockSize;
    v9[0] = weak_kCGImagePropertyASTCEncoder;
    v9[1] = &unk_286BBE4A8;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
    weak_CGImageDestinationAddImage(v4, a1, v5);
    v6 = weak_CGImageDestinationFinalize(v4);
    CFRelease(v4);
    if ((v6 & 1) == 0)
    {
      NSLog(&cfstr_SCouldNotConve.isa, "CFDataRef  _Nullable SUUIGraphicsCreateASTCDataFromImage(CGImageRef _Nonnull)");
      CFRelease(Mutable);
      Mutable = 0;
    }
  }

  else
  {
    NSLog(&cfstr_SCouldNotCreat.isa, "CFDataRef  _Nullable SUUIGraphicsCreateASTCDataFromImage(CGImageRef _Nonnull)");
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

CFMutableDataRef SUUIGraphicsCreateASTCDataFromBitmapContext(CGContext *a1)
{
  Image = CGBitmapContextCreateImage(a1);
  if (Image)
  {
    v2 = Image;
    ASTCDataFromImage = SUUIGraphicsCreateASTCDataFromImage(Image);
    CGImageRelease(v2);
    return ASTCDataFromImage;
  }

  else
  {
    NSLog(&cfstr_SCouldNotCreat_0.isa, "CFDataRef  _Nullable SUUIGraphicsCreateASTCDataFromBitmapContext(CGContextRef _Nonnull)");
    return 0;
  }
}

SUUICompressedImage *SUUIGraphicsGetASTCImageFromCurrentImageContext(double a1)
{
  CurrentContext = UIGraphicsGetCurrentContext();
  if (CurrentContext && (ASTCDataFromBitmapContext = SUUIGraphicsCreateASTCDataFromBitmapContext(CurrentContext)) != 0)
  {
    v4 = ASTCDataFromBitmapContext;
    if (fabs(a1) < 2.22044605e-16)
    {
      v5 = [MEMORY[0x277D759A0] mainScreen];
      [v5 scale];
      a1 = v6;
    }

    v7 = [[SUUICompressedImage alloc] initWithData:v4 scale:a1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_259EF8B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__89(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void SUUIIconColorsForColorScheme(void *a1, void *a2, void *a3, void *a4)
{
  v15 = a1;
  v7 = [v15 backgroundColor];
  if (v7)
  {
    v8 = SUUIColorForStyleWithBrightness(v7, [v15 schemeStyle], -0.05, 0.25, -0.05, 0.25);
    v9 = SUUIColorForStyleWithBrightness(v7, [v15 schemeStyle], -0.2, 0.0, -0.2, 0.05);
    v10 = SUUIColorForStyleWithBrightness(v7, [v15 schemeStyle], -0.7, -0.2, -0.7, 0.0);
    v11 = SUUIColorForStyleWithAlpha(v10, [v15 schemeStyle], 0.3, 1.0, 0.3, 0.3);

    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = [MEMORY[0x277D75348] colorWithWhite:0.95 alpha:1.0];
  v9 = [MEMORY[0x277D75348] colorWithWhite:0.8 alpha:1.0];
  v11 = [MEMORY[0x277D75348] colorWithWhite:0.3 alpha:0.3];
  if (a2)
  {
LABEL_3:
    v12 = v8;
    *a2 = v8;
  }

LABEL_4:
  if (a3)
  {
    v13 = v9;
    *a3 = v9;
  }

  if (a4)
  {
    v14 = v11;
    *a4 = v11;
  }
}

double *SUUIIconFrameForIconSize(double *result, double *a2, double a3, double a4, double a5, double a6, double a7)
{
  if (a5 != *MEMORY[0x277CBF3A8] || a6 != *(MEMORY[0x277CBF3A8] + 8))
  {
    v8 = a5 / a3;
    v9 = a6 / a4;
    if (v8 >= v9)
    {
      v8 = v9;
    }

    a3 = ceil(a3 * v8);
    a4 = ceil(a4 * v8);
  }

  v10 = 0.0;
  if (a7 > 0.0)
  {
    v10 = 1.0;
  }

  if (result)
  {
    *result = a3 + a7 * 2.0;
    result[1] = a4 + a7 * 2.0;
  }

  if (a2)
  {
    *a2 = a7;
    a2[1] = v10;
    a2[2] = a3;
    a2[3] = a4;
  }

  return result;
}

void sub_259EFE678(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259EFF06C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t SUUILockupViewTypeForString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"grid"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"list"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"shelf"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"product"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"brick"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"editorial"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"caption"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"tabular"])
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_259F03A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  objc_destroyWeak((v28 + 40));
  objc_destroyWeak(&a28);
  objc_destroyWeak((v29 - 112));
  _Unwind_Resume(a1);
}

double SUUISpacePageComponentHeightForString(void *a1)
{
  v1 = a1;
  v2 = 1.0;
  if (([v1 isEqualToString:@"XS"] & 1) == 0)
  {
    v2 = 5.0;
    if (([v1 isEqualToString:@"S"] & 1) == 0)
    {
      v2 = 7.0;
      if (([v1 isEqualToString:@"M"] & 1) == 0)
      {
        v2 = 10.0;
        if (([v1 isEqualToString:@"L"] & 1) == 0)
        {
          v2 = 25.0;
          if (([v1 isEqualToString:@"XL"] & 1) == 0)
          {
            if ([v1 isEqualToString:@"XXL"])
            {
              v2 = 100.0;
            }

            else
            {
              [v1 floatValue];
              v2 = v3;
            }
          }
        }
      }
    }
  }

  return v2;
}

void sub_259F05778(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_259F05A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259F05BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259F0C6E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259F0D0B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__91(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259F0D4E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259F0D794(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_259F0E908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_259F0FB68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259F0FEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259F12F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259F13A1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getAMSURLParserClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!AppleMediaServicesLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __AppleMediaServicesLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_2798FD768;
    v5 = 0;
    AppleMediaServicesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!AppleMediaServicesLibraryCore_frameworkLibrary_0)
  {
    __getAMSURLParserClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("AMSURLParser");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAMSURLParserClass_block_invoke_cold_1();
  }

  getAMSURLParserClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AppleMediaServicesLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  AppleMediaServicesLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void sub_259F16DF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259F198A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259F19A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259F1B608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  _Block_object_dispose(&a62, 8);
  _Block_object_dispose(&STACK[0x348], 8);
  _Block_object_dispose((v62 - 216), 8);
  _Unwind_Resume(a1);
}

void sub_259F1C83C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259F1CBA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__92(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259F1D294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_259F1D5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 160), 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_259F1DB38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259F1E7D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259F1EC0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259F1EF0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259F1F5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__93(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259F1FBF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259F20678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259F20894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259F213D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose((v44 - 248), 8);
  _Block_object_dispose((v44 - 216), 8);
  _Unwind_Resume(a1);
}

void sub_259F21C38(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

BOOL _SUUIScrollViewIsCompetingWithScrollView(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 panGestureRecognizer];
  if (_SUUIScrollViewCanScrollHorizontally(v3))
  {
    v6 = [v5 _canPanHorizontally];
  }

  else
  {
    v6 = 0;
  }

  if (_SUUIScrollViewCanScrollVertically(v3))
  {
    v7 = [v5 _canPanVertically];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 panGestureRecognizer];
  if (_SUUIScrollViewCanScrollHorizontally(v4))
  {
    v9 = [v8 _canPanHorizontally];
  }

  else
  {
    v9 = 0;
  }

  CanScrollVertically = _SUUIScrollViewCanScrollVertically(v4);
  if (CanScrollVertically)
  {
    CanScrollVertically = [v8 _canPanVertically];
  }

  v12 = v6 != v9 && v7 != CanScrollVertically;

  return v12;
}

uint64_t _SUUIScrollViewWantsToBeginTrackingImmediately(void *a1)
{
  v1 = a1;
  if (([v1 isDecelerating] & 1) == 0)
  {
    v2 = v1;
    if (([v2 isDecelerating] & 1) == 0 && (objc_msgSend(v2, "isDragging") & 1) == 0 && (objc_msgSend(v2, "isTracking") & 1) == 0)
    {

LABEL_29:
      v38 = 0;
      goto LABEL_22;
    }

    [v2 contentOffset];
    v43 = v4;
    v44 = v3;
    v5 = [v2 traitCollection];
    [v5 displayScale];
    v7 = v6;

    if (v7 < 0.00000011920929)
    {
      v8 = [MEMORY[0x277D759A0] mainScreen];
      [v8 scale];
      v7 = v9;
    }

    [v2 contentInset];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [v2 contentSize];
    v20 = -v13;
    if (v7 == 1.0 || v7 == 0.0)
    {
      v22 = round(v20);
      v24 = round(-v11);
      v26 = round(v17 + v18);
      v42 = round(v15 + v19);
      v30 = round(v17 + v13 + v18);
      v33 = round(v15 + v11 + v19);
    }

    else
    {
      v21 = floor(v20);
      v22 = v21 + round(v7 * (v20 - v21)) / v7;
      v23 = floor(-v11);
      v24 = v23 + round(v7 * (-v11 - v23)) / v7;
      v25 = floor(v17 + v18);
      v26 = v25 + round(v7 * (v17 + v18 - v25)) / v7;
      v27 = floor(v15 + v19);
      v42 = v27 + round(v7 * (v15 + v19 - v27)) / v7;
      v28 = v17 + v13 + v18;
      v29 = floor(v28);
      v30 = v29 + round(v7 * (v28 - v29)) / v7;
      v31 = v15 + v11 + v19;
      v32 = floor(v31);
      v33 = v32 + round(v7 * (v31 - v32)) / v7;
    }

    [v2 bounds];
    if (v44 < v22 || (v34 >= v30 ? (v36 = v30) : (v36 = v34), v44 <= v26 - v36 ? (v37 = v43 < v24) : (v37 = 1), v37))
    {
    }

    else
    {
      if (v35 >= v33)
      {
        v40 = v33;
      }

      else
      {
        v40 = v35;
      }

      v41 = v42 - v40;

      if (v43 <= v41)
      {
        goto LABEL_29;
      }
    }
  }

  v38 = [v1 tracksImmediatelyWhileDecelerating];
LABEL_22:

  return v38;
}

void sub_259F2330C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _SUUIScrollViewCanScrollHorizontally(void *a1)
{
  v1 = a1;
  [v1 contentInset];
  v3 = v2;
  v5 = v4;
  [v1 contentSize];
  v7 = v6;
  [v1 bounds];
  if (v5 + v3 + v7 <= v8)
  {
    if ([v1 alwaysBounceHorizontal])
    {
      v9 = [v1 bouncesHorizontally];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

uint64_t _SUUIScrollViewCanScrollVertically(void *a1)
{
  v1 = a1;
  [v1 contentInset];
  v3 = v2;
  v5 = v4;
  [v1 contentSize];
  v7 = v6;
  [v1 bounds];
  if (v5 + v3 + v7 <= v8)
  {
    if ([v1 alwaysBounceVertical])
    {
      v9 = [v1 bouncesVertically];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

void sub_259F24C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259F25088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259F25EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

void sub_259F26400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void ITColor::ITColor(ITColor *this)
{
  this->var0 = 0.0;
  this->var1 = 0.0;
  this->var2 = 0.0;
  this->var3 = 1.0;
}

void ITColor::ITColor(ITColor *this, double a2, double a3, double a4)
{
  this->var0 = a2;
  this->var1 = a3;
  this->var2 = a4;
  this->var3 = 1.0;
}

void ITColor::ITColor(ITColor *this, double a2, double a3, double a4, double a5)
{
  this->var0 = a2;
  this->var1 = a3;
  this->var2 = a4;
  this->var3 = a5;
}

void ITColor::ITColor(ITColor *this, CGColorRef color)
{
  this->var0 = 0.0;
  this->var1 = 0.0;
  this->var2 = 0.0;
  this->var3 = 1.0;
  Components = CGColorGetComponents(color);
  NumberOfComponents = CGColorGetNumberOfComponents(color);
  if (NumberOfComponents > 2)
  {
    if (NumberOfComponents != 3)
    {
      if (NumberOfComponents != 4)
      {
        goto LABEL_10;
      }

      this->var3 = Components[3];
    }

    this->var0 = *Components;
    this->var1 = Components[1];
    this->var2 = Components[2];
    goto LABEL_10;
  }

  if (NumberOfComponents == 1)
  {
    goto LABEL_5;
  }

  if (NumberOfComponents == 2)
  {
    this->var3 = Components[1];
LABEL_5:
    v6 = *Components;
    this->var1 = *Components;
    this->var2 = v6;
    this->var0 = v6;
  }

LABEL_10:
  ColorSpace = CGColorGetColorSpace(color);
  SRGB = CGColorSpaceGetSRGB();
  this->var0 = ITColor::ConvertColorSpace(this, ColorSpace, SRGB);
  this->var1 = v9;
  this->var2 = v10;
  this->var3 = v11;
}

double ITColor::ConvertColorSpace(ITColor *this, CGColorSpaceRef space, CGColorSpace *cf2)
{
  v16 = *MEMORY[0x277D85DE8];
  data = 0;
  if (!space || !cf2 || !CFEqual(space, cf2))
  {
    v7 = *&this->var2;
    *components = *&this->var0;
    v15 = v7;
    v8 = CGColorCreate(space, components);
    if (v8)
    {
      v9 = CGBitmapContextCreate(&data, 1uLL, 1uLL, 8uLL, 4uLL, cf2, 0x4002u);
      v10 = v9;
      if (v9)
      {
        CGContextSetFillColorWithColor(v9, v8);
        v17.origin.x = 0.0;
        v17.origin.y = 0.0;
        v17.size.width = 1.0;
        v17.size.height = 1.0;
        CGContextFillRect(v10, v17);
        LOBYTE(v11) = BYTE1(data);
        v6 = v11 / 255.0;
LABEL_10:
        CGColorRelease(v8);
        CGContextRelease(v10);
        return v6;
      }
    }

    else
    {
      v10 = 0;
    }

    v6 = 0.0;
    goto LABEL_10;
  }

  return this->var0;
}

void ITColor::ITColor(ITColor *this, const RGBColor *a2, double a3, double a4, double a5)
{
  LOWORD(a3) = a2->red;
  v5 = *&a3 / 65535.0;
  LOWORD(a5) = a2->green;
  this->var0 = v5;
  this->var1 = *&a5 / 65535.0;
  LOWORD(v5) = a2->blue;
  this->var2 = *&v5 / 65535.0;
  this->var3 = 1.0;
}

void ITColor::ITColor(ITColor *this, double a2, double a3)
{
  this->var0 = a2;
  this->var1 = a2;
  this->var2 = a2;
  this->var3 = a3;
}

unint64_t ITColor::operator RGBColor(uint64_t a1)
{
  v1 = vmovn_s64(vcvtq_s64_f64(vmulq_f64(*(a1 + 8), vdupq_n_s64(0x40EFFFE000000000uLL))));
  v2.i64[0] = v1.u32[0];
  v2.i64[1] = v1.u32[1];
  v3 = vshlq_u64(v2, xmmword_259FCBD40);
  return vorrq_s8(vdupq_laneq_s64(v3, 1), v3).u64[0] | (*a1 * 65535.0);
}

CGColorRef ITColor::CreateCGColor(ITColor *this)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *&this->var2;
  v4[0] = *&this->var0;
  v4[1] = v1;
  SRGB = CGColorSpaceGetSRGB();
  return CGColorCreate(SRGB, v4);
}

double ITColor::CreateFromHSVColor(double *a1)
{
  v4 = 0.0;
  v2 = 0.0;
  v3 = 0.0;
  HSV2RGB(*a1, a1[1], a1[2], &v4, &v3, &v2);
  return v4;
}

double *HSV2RGB(double a1, double a2, double a3, double *result, double *a5, double *a6)
{
  if (a2 > 1.0)
  {
    a2 = 1.0;
  }

  if (a2 >= 0.0)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0.0;
  }

  if (a3 <= 1.0)
  {
    v7 = a3;
  }

  else
  {
    v7 = 1.0;
  }

  if (v7 < 0.0)
  {
    v7 = 0.0;
  }

  if (v6 == 0.0)
  {
    *result = v7;
    *a5 = v7;
    goto LABEL_13;
  }

  if (a1 > 1.0)
  {
    a1 = 1.0;
  }

  if (a1 < 0.0)
  {
    a1 = 0.0;
  }

  v8 = a1 * 6.0;
  v9 = v8;
  v10 = v6 * v7 * (v8 - v8);
  v11 = v7 - v6 * v7;
  v12 = v11 + v10;
  if (v11 + v10 > 1.0)
  {
    v12 = 1.0;
  }

  v13 = v7 - v10;
  if (v13 > 1.0)
  {
    v13 = 1.0;
  }

  v14 = v11;
  if (v9)
  {
    v15 = v13;
  }

  else
  {
    v15 = v12;
  }

  if (v14 <= 1.0)
  {
    v16 = v14;
  }

  else
  {
    v16 = 1.0;
  }

  v17 = v7;
  if (v9 > 3)
  {
    if (v9 != 5)
    {
      v17 = v15;
      if (v9 != 4)
      {
        goto LABEL_34;
      }
    }
  }

  else if (v9)
  {
    v17 = v15;
    if (v9 != 1)
    {
LABEL_34:
      v17 = v16;
    }
  }

  *result = v17;
  v18 = v7;
  if ((v9 - 1) >= 2)
  {
    v19 = v9 == 3 || v9 == 0;
    v18 = v15;
    if (!v19)
    {
      v18 = v16;
    }
  }

  *a5 = v18;
  if ((v9 - 3) >= 2)
  {
    v20 = v9 == 5 || v9 == 2;
    v7 = v15;
    if (!v20)
    {
      v7 = v16;
    }
  }

LABEL_13:
  *a6 = v7;
  return result;
}

double ITColor::CreateFromHSVDoubles(ITColor *this, double a2, double a3, double a4)
{
  v7 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  HSV2RGB(a2, a3, a4, &v7, &v6, &v5);
  return v7;
}

double *RGB2HSV(double a1, double a2, double a3, double *result, double *a5, double *a6)
{
  if (a1 >= 1.0)
  {
    a1 = 1.0;
  }

  v6 = 0.0;
  if (a1 < 0.0)
  {
    a1 = 0.0;
  }

  if (a2 >= 1.0)
  {
    a2 = 1.0;
  }

  if (a2 < 0.0)
  {
    a2 = 0.0;
  }

  if (a3 >= 1.0)
  {
    a3 = 1.0;
  }

  if (a3 >= 0.0)
  {
    v7 = a3;
  }

  else
  {
    v7 = 0.0;
  }

  if (a2 <= a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = a2;
  }

  if (a2 >= a1)
  {
    v9 = a1;
  }

  else
  {
    v9 = a2;
  }

  if (v7 <= a1)
  {
    v10 = a1;
  }

  else
  {
    v10 = v7;
  }

  if (v7 >= a1)
  {
    v11 = a1;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= v7)
  {
    v8 = v10;
  }

  if (a2 >= v7)
  {
    v9 = v11;
  }

  if (v8 <= 1.0)
  {
    v12 = v8;
  }

  else
  {
    v12 = 1.0;
  }

  *a6 = v12;
  if (v8 == 0.0)
  {
    *a5 = 0.0;
  }

  else
  {
    v13 = v8 - v9;
    v14 = v13 / v8;
    if (v13 / v8 <= 1.0)
    {
      *a5 = v14;
      if (v14 == 0.0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      *a5 = 1.0;
    }

    if (v13 == 0.0)
    {
      v15 = 0.0;
      v16 = 0.0;
    }

    else
    {
      v6 = (v8 - a1) / v13;
      v15 = (v8 - a2) / v13;
      v16 = (v8 - v7) / v13;
    }

    if (a1 == v8)
    {
      v17 = v16 - v15;
    }

    else if (a2 == v8)
    {
      v17 = v6 + 2.0 - v16;
    }

    else
    {
      v17 = v15 + 4.0 - v6;
    }

    v18 = v17 / 6.0;
    if (v18 < 0.0)
    {
      v18 = v18 + 1.0;
    }

    if (v18 <= 1.0)
    {
      v6 = v18;
    }

    else
    {
      v6 = 1.0;
    }
  }

LABEL_51:
  *result = v6;
  return result;
}

void ITColor::GetLuminance(ITColor *this)
{
  v1 = 0;
  v6 = *MEMORY[0x277D85DE8];
  v4 = *&this->var0;
  var2 = this->var2;
  do
  {
    v2 = *(&v4 + v1);
    if (v2 <= 0.0392800011)
    {
      v3 = v2 / 12.9200001;
    }

    else
    {
      v3 = pow((v2 + 0.0549999997) / 1.05499995, 2.4);
    }

    *(&v4 + v1) = v3;
    v1 += 8;
  }

  while (v1 != 24);
}

double ITColor::GetContrastWithColor(ITColor *this, ITColor *a2)
{
  ITColor::GetLuminance(a2);
  v4 = v3;
  ITColor::GetLuminance(this);
  if (v5 <= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  if (v5 > v4)
  {
    v5 = v4;
  }

  return (v6 + 0.0500000007) / (v5 + 0.0500000007);
}

double ITColor::GetContrastWithLuminance(ITColor *this, double a2)
{
  ITColor::GetLuminance(this);
  if (v3 <= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = v3;
  }

  if (v3 > a2)
  {
    v3 = a2;
  }

  return (v4 + 0.0500000007) / (v3 + 0.0500000007);
}

double ITColor::GetHueDistanceFromColor(double *a1, double *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = vabdd_f64(*a1, *a2);
  if (result > 0.5)
  {
    result = v3 + 1.0 - v2;
    if (v2 <= v3)
    {
      return v2 + 1.0 - v3;
    }
  }

  return result;
}

BOOL ITColor::IsCloseToColor(ITColor *this, ITColor *a2, double a3)
{
  if (a3 <= 0.0 || a3 >= 1.0)
  {
    return 0;
  }

  HSVColor = ITColor::GetHSVColor(this);
  v8 = v7;
  v10 = v9;
  v11 = ITColor::GetHSVColor(a2);
  if (vabdd_f64(v8, v13) > a3 || vabdd_f64(v10, v12) > a3)
  {
    return 0;
  }

  if (vabdd_f64(HSVColor, v11) <= a3)
  {
    return 1;
  }

  v15 = HSVColor + 1.0;
  if (HSVColor >= a3)
  {
    v15 = HSVColor;
  }

  if (v11 < a3)
  {
    v11 = v11 + 1.0;
  }

  return vabdd_f64(v15, v11) <= a3;
}

double ITColor::CreateBlendedColorWithFraction(ITColor *this, double a2, ITColor a3)
{
  if (a2 < 1.0)
  {
    if (a2 <= 0.0)
    {
      a3.var0 = this->var0;
    }

    else
    {
      a3.var0 = (1.0 - a2) * this->var0 + a3.var0 * a2;
    }
  }

  return a3.var0;
}

__CFString *SUUIMediaQueryNetworkTypeString(uint64_t a1)
{
  v1 = @"none";
  v2 = @"wifi";
  if (a1 != 1000)
  {
    v2 = 0;
  }

  if (a1)
  {
    v1 = v2;
  }

  if ((a1 - 1) >= 8)
  {
    return v1;
  }

  else
  {
    return @"cellular";
  }
}

void sub_259F29C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259F2A87C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259F2AB54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259F2B180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259F2B750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_259F2BCC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getAMSUIDynamicViewControllerClass_block_invoke(uint64_t a1)
{
  AppleMediaServicesUILibrary();
  result = objc_getClass("AMSUIDynamicViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAMSUIDynamicViewControllerClass_block_invoke_cold_1();
  }

  getAMSUIDynamicViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void AppleMediaServicesUILibrary()
{
  v3 = *MEMORY[0x277D85DE8];
  v0[0] = 0;
  if (!AppleMediaServicesUILibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x277D85DD0];
    v0[2] = 3221225472;
    v0[3] = __AppleMediaServicesUILibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_2798FDBB0;
    v2 = 0;
    AppleMediaServicesUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AppleMediaServicesUILibraryCore_frameworkLibrary)
  {
    AppleMediaServicesUILibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __AppleMediaServicesUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AppleMediaServicesUILibraryCore_frameworkLibrary = result;
  return result;
}

Class __getAMSUIWebViewControllerClass_block_invoke(uint64_t a1)
{
  AppleMediaServicesUILibrary();
  result = objc_getClass("AMSUIWebViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAMSUIWebViewControllerClass_block_invoke_cold_1();
  }

  getAMSUIWebViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getAMSURLParserClass_block_invoke_0(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!AppleMediaServicesLibraryCore_frameworkLibrary_1)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __AppleMediaServicesLibraryCore_block_invoke_1;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_2798FDBC8;
    v5 = 0;
    AppleMediaServicesLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  if (!AppleMediaServicesLibraryCore_frameworkLibrary_1)
  {
    __getAMSURLParserClass_block_invoke_cold_2_0(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("AMSURLParser");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAMSURLParserClass_block_invoke_cold_1_0();
  }

  getAMSURLParserClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}