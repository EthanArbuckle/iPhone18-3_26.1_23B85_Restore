unint64_t _outTruncateStmt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "relations:", a3, a4, a5, a6, a7, a8, v26);
    appendStringInfoChar(a1, 91);
    v16 = *(a2 + 8);
    if (v16 && *(v16 + 4) >= 1)
    {
      v17 = 0;
      v18 = 8;
      do
      {
        v19 = *(v16 + 16);
        v20 = *(v19 + 8 * v17);
        if (v20)
        {
          _outNode(a1, v20);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v19 + v18)
        {
          v21 = v19 + v18 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          appendStringInfoString(a1, ",");
        }

        ++v17;
        v18 += 8;
      }

      while (v17 < *(v16 + 4));
    }

    appendStringInfo(a1, "],", v10, v11, v12, v13, v14, v15, v27);
  }

  if (*(a2 + 16) == 1)
  {
    appendStringInfo(a1, "restart_seqs:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  v22 = *(a2 + 20);
  v23 = "DROP_CASCADE";
  if (v22 != 1)
  {
    LODWORD(v23) = 0;
  }

  if (v22)
  {
    LODWORD(v24) = v23;
  }

  else
  {
    v24 = "DROP_RESTRICT";
  }

  return appendStringInfo(a1, "behavior:%s,", a3, a4, a5, a6, a7, a8, v24);
}

unint64_t _outCommentStmt(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v11 = *(a2 + 4);
  if (v11 > 0x31)
  {
    LODWORD(v12) = 0;
  }

  else
  {
    v12 = (&off_2797B72E8)[v11];
  }

  result = appendStringInfo(a1, "objtype:%s,", a3, a4, a5, a6, a7, a8, v12);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "object:", v14, v15, v16, v17, v18, v19, v38);
    _outNode(a1, *(a2 + 8));
    result = appendStringInfo(a1, ",", v20, v21, v22, v23, v24, v25, v39);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "comment:", v14, v15, v16, v17, v18, v19, v38);
    _outToken(a1, *(a2 + 16), v26, v27, v28, v29, v30, v31);

    return appendStringInfo(a1, ",", v32, v33, v34, v35, v36, v37, a9);
  }

  return result;
}

unint64_t _outFetchStmt(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a2 + 4);
  if (v10 > 3)
  {
    LODWORD(v11) = 0;
  }

  else
  {
    v11 = (&off_2797B7140)[v10];
  }

  result = appendStringInfo(a1, "direction:%s,", a3, a4, a5, a6, a7, a8, v11);
  if (*(a2 + 8))
  {
    result = appendStringInfo(a1, "howMany:%ld,", v13, v14, v15, v16, v17, v18, *(a2 + 8));
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "portalname:", v13, v14, v15, v16, v17, v18, v31);
    _outToken(a1, *(a2 + 16), v19, v20, v21, v22, v23, v24);
    result = appendStringInfo(a1, ",", v25, v26, v27, v28, v29, v30, v32);
  }

  if (*(a2 + 24) == 1)
  {
    return appendStringInfo(a1, "ismove:%s,", v13, v14, v15, v16, v17, v18, "true");
  }

  return result;
}

uint64_t _outIndexStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "idxname:", a3, a4, a5, a6, a7, a8, v128);
    _outToken(v9, *(a2 + 8), v10, v11, v12, v13, v14, v15);
    result = appendStringInfo(v9, ",", v16, v17, v18, v19, v20, v21, v129);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v9, "relation:{", a3, a4, a5, a6, a7, a8, v128);
    _outRangeVar(v9, *(a2 + 16), v22, v23, v24, v25, v26, v27);
    v34 = v9[2];
    v35 = __OFSUB__(v34, 1);
    v36 = v34 - 1;
    if (v36 < 0 == v35)
    {
      v37 = *v9;
      if (*(*v9 + v36) == 44)
      {
        v9[2] = v36;
        *(v37 + v36) = 0;
      }
    }

    result = appendStringInfo(v9, "},", v28, v29, v30, v31, v32, v33, v130);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v9, "accessMethod:", a3, a4, a5, a6, a7, a8, v128);
    _outToken(v9, *(a2 + 24), v38, v39, v40, v41, v42, v43);
    result = appendStringInfo(v9, ",", v44, v45, v46, v47, v48, v49, v131);
  }

  if (*(a2 + 32))
  {
    appendStringInfo(v9, "tableSpace:", a3, a4, a5, a6, a7, a8, v128);
    _outToken(v9, *(a2 + 32), v50, v51, v52, v53, v54, v55);
    result = appendStringInfo(v9, ",", v56, v57, v58, v59, v60, v61, v132);
  }

  if (*(a2 + 40))
  {
    appendStringInfo(v9, "indexParams:", a3, a4, a5, a6, a7, a8, v128);
    appendStringInfoChar(v9, 91);
    v68 = *(a2 + 40);
    if (v68 && *(v68 + 4) >= 1)
    {
      v69 = 0;
      v70 = 8;
      do
      {
        v71 = *(v68 + 16);
        v72 = *(v71 + 8 * v69);
        if (v72)
        {
          _outNode(v9, v72);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v71 + v70)
        {
          v73 = v71 + v70 >= (*(*(a2 + 40) + 16) + 8 * *(*(a2 + 40) + 4));
        }

        else
        {
          v73 = 1;
        }

        if (!v73)
        {
          appendStringInfoString(v9, ",");
        }

        ++v69;
        v70 += 8;
      }

      while (v69 < *(v68 + 4));
    }

    result = appendStringInfo(v9, "],", v62, v63, v64, v65, v66, v67, v133);
  }

  if (*(a2 + 48))
  {
    appendStringInfo(v9, "indexIncludingParams:", a3, a4, a5, a6, a7, a8, v128);
    appendStringInfoChar(v9, 91);
    v80 = *(a2 + 48);
    if (v80 && *(v80 + 4) >= 1)
    {
      v81 = 0;
      v82 = 8;
      do
      {
        v83 = *(v80 + 16);
        v84 = *(v83 + 8 * v81);
        if (v84)
        {
          _outNode(v9, v84);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v83 + v82)
        {
          v85 = v83 + v82 >= (*(*(a2 + 48) + 16) + 8 * *(*(a2 + 48) + 4));
        }

        else
        {
          v85 = 1;
        }

        if (!v85)
        {
          appendStringInfoString(v9, ",");
        }

        ++v81;
        v82 += 8;
      }

      while (v81 < *(v80 + 4));
    }

    result = appendStringInfo(v9, "],", v74, v75, v76, v77, v78, v79, v134);
  }

  if (*(a2 + 56))
  {
    appendStringInfo(v9, "options:", a3, a4, a5, a6, a7, a8, v128);
    appendStringInfoChar(v9, 91);
    v92 = *(a2 + 56);
    if (v92 && *(v92 + 4) >= 1)
    {
      v93 = 0;
      v94 = 8;
      do
      {
        v95 = *(v92 + 16);
        v96 = *(v95 + 8 * v93);
        if (v96)
        {
          _outNode(v9, v96);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v95 + v94)
        {
          v97 = v95 + v94 >= (*(*(a2 + 56) + 16) + 8 * *(*(a2 + 56) + 4));
        }

        else
        {
          v97 = 1;
        }

        if (!v97)
        {
          appendStringInfoString(v9, ",");
        }

        ++v93;
        v94 += 8;
      }

      while (v93 < *(v92 + 4));
    }

    result = appendStringInfo(v9, "],", v86, v87, v88, v89, v90, v91, v135);
  }

  if (*(a2 + 64))
  {
    appendStringInfo(v9, "whereClause:", a3, a4, a5, a6, a7, a8, v128);
    _outNode(v9, *(a2 + 64));
    result = appendStringInfo(v9, ",", v98, v99, v100, v101, v102, v103, v136);
  }

  if (*(a2 + 72))
  {
    appendStringInfo(v9, "excludeOpNames:", a3, a4, a5, a6, a7, a8, v128);
    appendStringInfoChar(v9, 91);
    v110 = *(a2 + 72);
    if (v110 && *(v110 + 4) >= 1)
    {
      v111 = 0;
      v112 = 8;
      do
      {
        v113 = *(v110 + 16);
        v114 = *(v113 + 8 * v111);
        if (v114)
        {
          _outNode(v9, v114);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v113 + v112)
        {
          v115 = v113 + v112 >= (*(*(a2 + 72) + 16) + 8 * *(*(a2 + 72) + 4));
        }

        else
        {
          v115 = 1;
        }

        if (!v115)
        {
          appendStringInfoString(v9, ",");
        }

        ++v111;
        v112 += 8;
      }

      while (v111 < *(v110 + 4));
    }

    result = appendStringInfo(v9, "],", v104, v105, v106, v107, v108, v109, v137);
  }

  if (*(a2 + 80))
  {
    appendStringInfo(v9, "idxcomment:", a3, a4, a5, a6, a7, a8, v128);
    _outToken(v9, *(a2 + 80), v116, v117, v118, v119, v120, v121);
    result = appendStringInfo(v9, ",", v122, v123, v124, v125, v126, v127, v138);
  }

  if (*(a2 + 88))
  {
    result = appendStringInfo(v9, "indexOid:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 88));
  }

  if (*(a2 + 92))
  {
    result = appendStringInfo(v9, "oldNode:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 92));
  }

  if (*(a2 + 96))
  {
    result = appendStringInfo(v9, "oldCreateSubid:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 96));
  }

  if (*(a2 + 100))
  {
    result = appendStringInfo(v9, "oldFirstRelfilenodeSubid:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 100));
  }

  if (*(a2 + 104) == 1)
  {
    result = appendStringInfo(v9, "unique:%s,", a3, a4, a5, a6, a7, a8, "true");
    if (*(a2 + 105) != 1)
    {
LABEL_82:
      if (*(a2 + 106) != 1)
      {
        goto LABEL_83;
      }

      goto LABEL_93;
    }
  }

  else if (*(a2 + 105) != 1)
  {
    goto LABEL_82;
  }

  result = appendStringInfo(v9, "primary:%s,", a3, a4, a5, a6, a7, a8, "true");
  if (*(a2 + 106) != 1)
  {
LABEL_83:
    if (*(a2 + 107) != 1)
    {
      goto LABEL_84;
    }

    goto LABEL_94;
  }

LABEL_93:
  result = appendStringInfo(v9, "isconstraint:%s,", a3, a4, a5, a6, a7, a8, "true");
  if (*(a2 + 107) != 1)
  {
LABEL_84:
    if (*(a2 + 108) != 1)
    {
      goto LABEL_85;
    }

    goto LABEL_95;
  }

LABEL_94:
  result = appendStringInfo(v9, "deferrable:%s,", a3, a4, a5, a6, a7, a8, "true");
  if (*(a2 + 108) != 1)
  {
LABEL_85:
    if (*(a2 + 109) != 1)
    {
      goto LABEL_86;
    }

    goto LABEL_96;
  }

LABEL_95:
  result = appendStringInfo(v9, "initdeferred:%s,", a3, a4, a5, a6, a7, a8, "true");
  if (*(a2 + 109) != 1)
  {
LABEL_86:
    if (*(a2 + 110) != 1)
    {
      goto LABEL_87;
    }

    goto LABEL_97;
  }

LABEL_96:
  result = appendStringInfo(v9, "transformed:%s,", a3, a4, a5, a6, a7, a8, "true");
  if (*(a2 + 110) != 1)
  {
LABEL_87:
    if (*(a2 + 111) != 1)
    {
      goto LABEL_88;
    }

    goto LABEL_98;
  }

LABEL_97:
  result = appendStringInfo(v9, "concurrent:%s,", a3, a4, a5, a6, a7, a8, "true");
  if (*(a2 + 111) != 1)
  {
LABEL_88:
    if (*(a2 + 112) != 1)
    {
      return result;
    }

    return appendStringInfo(v9, "reset_default_tblspc:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

LABEL_98:
  result = appendStringInfo(v9, "if_not_exists:%s,", a3, a4, a5, a6, a7, a8, "true");
  if (*(a2 + 112) != 1)
  {
    return result;
  }

  return appendStringInfo(v9, "reset_default_tblspc:%s,", a3, a4, a5, a6, a7, a8, "true");
}

uint64_t _outCreateFunctionStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (*(a2 + 4) == 1)
  {
    result = appendStringInfo(result, "is_procedure:%s,", a3, a4, a5, a6, a7, a8, "true");
    if (*(a2 + 5) != 1)
    {
LABEL_3:
      if (!*(a2 + 8))
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if (*(a2 + 5) != 1)
  {
    goto LABEL_3;
  }

  result = appendStringInfo(v10, "replace:%s,", a3, a4, a5, a6, a7, a8, "true");
  if (!*(a2 + 8))
  {
LABEL_4:
    if (!*(a2 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_24:
  appendStringInfo(v10, "funcname:", a3, a4, a5, a6, a7, a8, v63);
  appendStringInfoChar(v10, 91);
  v29 = *(a2 + 8);
  if (v29 && *(v29 + 4) >= 1)
  {
    v30 = 0;
    v31 = 8;
    do
    {
      v32 = *(v29 + 16);
      v33 = *(v32 + 8 * v30);
      if (v33)
      {
        _outNode(v10, v33);
      }

      else
      {
        appendStringInfoString(v10, "{}");
      }

      if (v32 + v31)
      {
        v34 = v32 + v31 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
      }

      else
      {
        v34 = 1;
      }

      if (!v34)
      {
        appendStringInfoString(v10, ",");
      }

      ++v30;
      v31 += 8;
    }

    while (v30 < *(v29 + 4));
  }

  result = appendStringInfo(v10, "],", v23, v24, v25, v26, v27, v28, v64);
  if (!*(a2 + 16))
  {
LABEL_5:
    if (!*(a2 + 24))
    {
      goto LABEL_6;
    }

    goto LABEL_50;
  }

LABEL_37:
  appendStringInfo(v10, "parameters:", a3, a4, a5, a6, a7, a8, v63);
  appendStringInfoChar(v10, 91);
  v41 = *(a2 + 16);
  if (v41 && *(v41 + 4) >= 1)
  {
    v42 = 0;
    v43 = 8;
    do
    {
      v44 = *(v41 + 16);
      v45 = *(v44 + 8 * v42);
      if (v45)
      {
        _outNode(v10, v45);
      }

      else
      {
        appendStringInfoString(v10, "{}");
      }

      if (v44 + v43)
      {
        v46 = v44 + v43 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
      }

      else
      {
        v46 = 1;
      }

      if (!v46)
      {
        appendStringInfoString(v10, ",");
      }

      ++v42;
      v43 += 8;
    }

    while (v42 < *(v41 + 4));
  }

  result = appendStringInfo(v10, "],", v35, v36, v37, v38, v39, v40, v65);
  if (!*(a2 + 24))
  {
LABEL_6:
    if (!*(a2 + 32))
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_50:
  appendStringInfo(v10, "returnType:{", a3, a4, a5, a6, a7, a8, v63);
  _outTypeName(v10, *(a2 + 24), v47, v48, v49, v50, v51, v52);
  v59 = *(v10 + 8);
  v60 = __OFSUB__(v59, 1);
  v61 = v59 - 1;
  if (v61 < 0 == v60)
  {
    v62 = *v10;
    if (*(*v10 + v61) == 44)
    {
      *(v10 + 8) = v61;
      *(v62 + v61) = 0;
    }
  }

  result = appendStringInfo(v10, "},", v53, v54, v55, v56, v57, v58, v66);
  if (*(a2 + 32))
  {
LABEL_7:
    appendStringInfo(v10, "options:", a3, a4, a5, a6, a7, a8, v63);
    appendStringInfoChar(v10, 91);
    v17 = *(a2 + 32);
    if (v17 && *(v17 + 4) >= 1)
    {
      v18 = 0;
      v19 = 8;
      do
      {
        v20 = *(v17 + 16);
        v21 = *(v20 + 8 * v18);
        if (v21)
        {
          _outNode(v10, v21);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v20 + v19)
        {
          v22 = v20 + v19 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v22 = 1;
        }

        if (!v22)
        {
          appendStringInfoString(v10, ",");
        }

        ++v18;
        v19 += 8;
      }

      while (v18 < *(v17 + 4));
    }

    return appendStringInfo(v10, "],", v11, v12, v13, v14, v15, v16, a9);
  }

  return result;
}

unint64_t _outAlterFunctionStmt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v11 = *(a2 + 4);
  if (v11 > 0x31)
  {
    LODWORD(v12) = 0;
  }

  else
  {
    v12 = (&off_2797B72E8)[v11];
  }

  result = appendStringInfo(a1, "objtype:%s,", a3, a4, a5, a6, a7, a8, v12);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "func:{", v14, v15, v16, v17, v18, v19, v48);
    _outObjectWithArgs(a1, *(a2 + 8), v20, v21, v22, v23, v24, v25);
    v32 = *(a1 + 8);
    v33 = __OFSUB__(v32, 1);
    v34 = v32 - 1;
    if (v34 < 0 == v33)
    {
      v35 = *a1;
      if (*(*a1 + v34) == 44)
      {
        *(a1 + 8) = v34;
        *(v35 + v34) = 0;
      }
    }

    result = appendStringInfo(a1, "},", v26, v27, v28, v29, v30, v31, v49);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "actions:", v14, v15, v16, v17, v18, v19, v48);
    appendStringInfoChar(a1, 91);
    v42 = *(a2 + 16);
    if (v42 && *(v42 + 4) >= 1)
    {
      v43 = 0;
      v44 = 8;
      do
      {
        v45 = *(v42 + 16);
        v46 = *(v45 + 8 * v43);
        if (v46)
        {
          _outNode(a1, v46);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v45 + v44)
        {
          v47 = v45 + v44 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v47 = 1;
        }

        if (!v47)
        {
          appendStringInfoString(a1, ",");
        }

        ++v43;
        v44 += 8;
      }

      while (v43 < *(v42 + 4));
    }

    return appendStringInfo(a1, "],", v36, v37, v38, v39, v40, v41, a9);
  }

  return result;
}

unint64_t _outDoStmt(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if (*(a2 + 8))
  {
    v10 = result;
    appendStringInfo(result, "args:", a3, a4, a5, a6, a7, a8, v23);
    appendStringInfoChar(v10, 91);
    v17 = *(a2 + 8);
    if (v17 && *(v17 + 4) >= 1)
    {
      v18 = 0;
      v19 = 8;
      do
      {
        v20 = *(v17 + 16);
        v21 = *(v20 + 8 * v18);
        if (v21)
        {
          _outNode(v10, v21);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v20 + v19)
        {
          v22 = v20 + v19 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v22 = 1;
        }

        if (!v22)
        {
          appendStringInfoString(v10, ",");
        }

        ++v18;
        v19 += 8;
      }

      while (v18 < *(v17 + 4));
    }

    return appendStringInfo(v10, "],", v11, v12, v13, v14, v15, v16, a9);
  }

  return result;
}

unint64_t _outRenameStmt(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a2 + 4);
  if (v10 > 0x31)
  {
    LODWORD(v11) = 0;
  }

  else
  {
    v11 = (&off_2797B72E8)[v10];
  }

  appendStringInfo(a1, "renameType:%s,", a3, a4, a5, a6, a7, a8, v11);
  v18 = *(a2 + 8);
  if (v18 > 0x31)
  {
    LODWORD(v19) = 0;
  }

  else
  {
    v19 = (&off_2797B72E8)[v18];
  }

  appendStringInfo(a1, "relationType:%s,", v12, v13, v14, v15, v16, v17, v19);
  if (*(a2 + 16))
  {
    appendStringInfo(a1, "relation:{", v20, v21, v22, v23, v24, v25, v82);
    _outRangeVar(a1, *(a2 + 16), v26, v27, v28, v29, v30, v31);
    v38 = a1[2];
    v39 = __OFSUB__(v38, 1);
    v40 = v38 - 1;
    if (v40 < 0 == v39)
    {
      v41 = *a1;
      if (*(*a1 + v40) == 44)
      {
        a1[2] = v40;
        *(v41 + v40) = 0;
      }
    }

    appendStringInfo(a1, "},", v32, v33, v34, v35, v36, v37, v83);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "object:", v20, v21, v22, v23, v24, v25, v82);
    _outNode(a1, *(a2 + 24));
    appendStringInfo(a1, ",", v42, v43, v44, v45, v46, v47, v84);
  }

  if (*(a2 + 32))
  {
    appendStringInfo(a1, "subname:", v20, v21, v22, v23, v24, v25, v82);
    _outToken(a1, *(a2 + 32), v48, v49, v50, v51, v52, v53);
    appendStringInfo(a1, ",", v54, v55, v56, v57, v58, v59, v85);
  }

  if (*(a2 + 40))
  {
    appendStringInfo(a1, "newname:", v20, v21, v22, v23, v24, v25, v82);
    _outToken(a1, *(a2 + 40), v60, v61, v62, v63, v64, v65);
    appendStringInfo(a1, ",", v66, v67, v68, v69, v70, v71, v86);
  }

  v72 = *(a2 + 48);
  v73 = "DROP_CASCADE";
  if (v72 != 1)
  {
    LODWORD(v73) = 0;
  }

  if (v72)
  {
    LODWORD(v74) = v73;
  }

  else
  {
    v74 = "DROP_RESTRICT";
  }

  result = appendStringInfo(a1, "behavior:%s,", v20, v21, v22, v23, v24, v25, v74);
  if (*(a2 + 52) == 1)
  {
    return appendStringInfo(a1, "missing_ok:%s,", v76, v77, v78, v79, v80, v81, "true");
  }

  return result;
}

unint64_t _outRuleStmt(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "relation:{", a3, a4, a5, a6, a7, a8, v65);
    _outRangeVar(a1, *(a2 + 8), v10, v11, v12, v13, v14, v15);
    v22 = a1[2];
    v23 = __OFSUB__(v22, 1);
    v24 = v22 - 1;
    if (v24 < 0 == v23)
    {
      v25 = *a1;
      if (*(*a1 + v24) == 44)
      {
        a1[2] = v24;
        *(v25 + v24) = 0;
      }
    }

    appendStringInfo(a1, "},", v16, v17, v18, v19, v20, v21, v66);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "rulename:", a3, a4, a5, a6, a7, a8, v65);
    _outToken(a1, *(a2 + 16), v26, v27, v28, v29, v30, v31);
    appendStringInfo(a1, ",", v32, v33, v34, v35, v36, v37, v67);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "whereClause:", a3, a4, a5, a6, a7, a8, v65);
    _outNode(a1, *(a2 + 24));
    appendStringInfo(a1, ",", v38, v39, v40, v41, v42, v43, v68);
  }

  v44 = *(a2 + 32);
  if (v44 > 6)
  {
    LODWORD(v45) = 0;
  }

  else
  {
    v45 = (&off_2797B7160)[v44];
  }

  result = appendStringInfo(a1, "event:%s,", a3, a4, a5, a6, a7, a8, v45);
  if (*(a2 + 36) == 1)
  {
    result = appendStringInfo(a1, "instead:%s,", v47, v48, v49, v50, v51, v52, "true");
  }

  if (*(a2 + 40))
  {
    appendStringInfo(a1, "actions:", v47, v48, v49, v50, v51, v52, v69);
    appendStringInfoChar(a1, 91);
    v59 = *(a2 + 40);
    if (v59 && *(v59 + 4) >= 1)
    {
      v60 = 0;
      v61 = 8;
      do
      {
        v62 = *(v59 + 16);
        v63 = *(v62 + 8 * v60);
        if (v63)
        {
          _outNode(a1, v63);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v62 + v61)
        {
          v64 = v62 + v61 >= (*(*(a2 + 40) + 16) + 8 * *(*(a2 + 40) + 4));
        }

        else
        {
          v64 = 1;
        }

        if (!v64)
        {
          appendStringInfoString(a1, ",");
        }

        ++v60;
        v61 += 8;
      }

      while (v60 < *(v59 + 4));
    }

    result = appendStringInfo(a1, "],", v53, v54, v55, v56, v57, v58, v70);
  }

  if (*(a2 + 48) == 1)
  {
    return appendStringInfo(a1, "replace:%s,", v47, v48, v49, v50, v51, v52, "true");
  }

  return result;
}

uint64_t _outNotifyStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "conditionname:", a3, a4, a5, a6, a7, a8, v35);
    _outToken(v10, *(a2 + 8), v11, v12, v13, v14, v15, v16);
    result = appendStringInfo(v10, ",", v17, v18, v19, v20, v21, v22, v36);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v10, "payload:", a3, a4, a5, a6, a7, a8, v35);
    _outToken(v10, *(a2 + 16), v23, v24, v25, v26, v27, v28);

    return appendStringInfo(v10, ",", v29, v30, v31, v32, v33, v34, a9);
  }

  return result;
}

unint64_t _outListenStmt(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if (*(a2 + 8))
  {
    v10 = result;
    appendStringInfo(result, "conditionname:", a3, a4, a5, a6, a7, a8, v23);
    _outToken(v10, *(a2 + 8), v11, v12, v13, v14, v15, v16);

    return appendStringInfo(v10, ",", v17, v18, v19, v20, v21, v22, a9);
  }

  return result;
}

unint64_t _outTransactionStmt(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a2 + 4);
  if (v10 > 9)
  {
    LODWORD(v11) = 0;
  }

  else
  {
    v11 = (&off_2797B7198)[v10];
  }

  result = appendStringInfo(a1, "kind:%s,", a3, a4, a5, a6, a7, a8, v11);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "options:", v13, v14, v15, v16, v17, v18, v55);
    appendStringInfoChar(a1, 91);
    v25 = *(a2 + 8);
    if (v25 && *(v25 + 4) >= 1)
    {
      v26 = 0;
      v27 = 8;
      do
      {
        v28 = *(v25 + 16);
        v29 = *(v28 + 8 * v26);
        if (v29)
        {
          _outNode(a1, v29);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v28 + v27)
        {
          v30 = v28 + v27 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v30 = 1;
        }

        if (!v30)
        {
          appendStringInfoString(a1, ",");
        }

        ++v26;
        v27 += 8;
      }

      while (v26 < *(v25 + 4));
    }

    result = appendStringInfo(a1, "],", v19, v20, v21, v22, v23, v24, v56);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "savepoint_name:", v13, v14, v15, v16, v17, v18, v55);
    _outToken(a1, *(a2 + 16), v31, v32, v33, v34, v35, v36);
    result = appendStringInfo(a1, ",", v37, v38, v39, v40, v41, v42, v57);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "gid:", v13, v14, v15, v16, v17, v18, v55);
    _outToken(a1, *(a2 + 24), v43, v44, v45, v46, v47, v48);
    result = appendStringInfo(a1, ",", v49, v50, v51, v52, v53, v54, v58);
  }

  if (*(a2 + 32) == 1)
  {
    return appendStringInfo(a1, "chain:%s,", v13, v14, v15, v16, v17, v18, "true");
  }

  return result;
}

unint64_t _outViewStmt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "view:{", a3, a4, a5, a6, a7, a8, v59);
    _outRangeVar(a1, *(a2 + 8), v10, v11, v12, v13, v14, v15);
    v22 = *(a1 + 8);
    v23 = __OFSUB__(v22, 1);
    v24 = v22 - 1;
    if (v24 < 0 == v23)
    {
      v25 = *a1;
      if (*(*a1 + v24) == 44)
      {
        *(a1 + 8) = v24;
        *(v25 + v24) = 0;
      }
    }

    appendStringInfo(a1, "},", v16, v17, v18, v19, v20, v21, v60);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "aliases:", a3, a4, a5, a6, a7, a8, v59);
    appendStringInfoChar(a1, 91);
    v32 = *(a2 + 16);
    if (v32 && *(v32 + 4) >= 1)
    {
      v33 = 0;
      v34 = 8;
      do
      {
        v35 = *(v32 + 16);
        v36 = *(v35 + 8 * v33);
        if (v36)
        {
          _outNode(a1, v36);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v35 + v34)
        {
          v37 = v35 + v34 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v37 = 1;
        }

        if (!v37)
        {
          appendStringInfoString(a1, ",");
        }

        ++v33;
        v34 += 8;
      }

      while (v33 < *(v32 + 4));
    }

    appendStringInfo(a1, "],", v26, v27, v28, v29, v30, v31, v61);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "query:", a3, a4, a5, a6, a7, a8, v59);
    _outNode(a1, *(a2 + 24));
    appendStringInfo(a1, ",", v38, v39, v40, v41, v42, v43, v62);
  }

  if (*(a2 + 32) == 1)
  {
    appendStringInfo(a1, "replace:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  if (*(a2 + 40))
  {
    appendStringInfo(a1, "options:", a3, a4, a5, a6, a7, a8, v59);
    appendStringInfoChar(a1, 91);
    v50 = *(a2 + 40);
    if (v50 && *(v50 + 4) >= 1)
    {
      v51 = 0;
      v52 = 8;
      do
      {
        v53 = *(v50 + 16);
        v54 = *(v53 + 8 * v51);
        if (v54)
        {
          _outNode(a1, v54);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v53 + v52)
        {
          v55 = v53 + v52 >= (*(*(a2 + 40) + 16) + 8 * *(*(a2 + 40) + 4));
        }

        else
        {
          v55 = 1;
        }

        if (!v55)
        {
          appendStringInfoString(a1, ",");
        }

        ++v51;
        v52 += 8;
      }

      while (v51 < *(v50 + 4));
    }

    appendStringInfo(a1, "],", v44, v45, v46, v47, v48, v49, v63);
  }

  v56 = *(a2 + 48);
  if (v56 > 2)
  {
    LODWORD(v57) = 0;
  }

  else
  {
    v57 = (&off_2797B71E8)[v56];
  }

  return appendStringInfo(a1, "withCheckOption:%s,", a3, a4, a5, a6, a7, a8, v57);
}

unint64_t _outLoadStmt(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if (*(a2 + 8))
  {
    v10 = result;
    appendStringInfo(result, "filename:", a3, a4, a5, a6, a7, a8, v23);
    _outToken(v10, *(a2 + 8), v11, v12, v13, v14, v15, v16);

    return appendStringInfo(v10, ",", v17, v18, v19, v20, v21, v22, a9);
  }

  return result;
}

uint64_t _outCreateDomainStmt(uint64_t result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (a2[1])
  {
    appendStringInfo(result, "domainname:", a3, a4, a5, a6, a7, a8, v66);
    appendStringInfoChar(v10, 91);
    v17 = a2[1];
    if (v17 && *(v17 + 4) >= 1)
    {
      v18 = 0;
      v19 = 8;
      do
      {
        v20 = *(v17 + 16);
        v21 = *(v20 + 8 * v18);
        if (v21)
        {
          _outNode(v10, v21);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v20 + v19)
        {
          v22 = v20 + v19 >= (*(a2[1] + 16) + 8 * *(a2[1] + 4));
        }

        else
        {
          v22 = 1;
        }

        if (!v22)
        {
          appendStringInfoString(v10, ",");
        }

        ++v18;
        v19 += 8;
      }

      while (v18 < *(v17 + 4));
    }

    result = appendStringInfo(v10, "],", v11, v12, v13, v14, v15, v16, v67);
  }

  if (a2[2])
  {
    appendStringInfo(v10, "typeName:{", a3, a4, a5, a6, a7, a8, v66);
    _outTypeName(v10, a2[2], v23, v24, v25, v26, v27, v28);
    v35 = *(v10 + 8);
    v36 = __OFSUB__(v35, 1);
    v37 = v35 - 1;
    if (v37 < 0 == v36)
    {
      v38 = *v10;
      if (*(*v10 + v37) == 44)
      {
        *(v10 + 8) = v37;
        *(v38 + v37) = 0;
      }
    }

    result = appendStringInfo(v10, "},", v29, v30, v31, v32, v33, v34, v68);
  }

  if (a2[3])
  {
    appendStringInfo(v10, "collClause:{", a3, a4, a5, a6, a7, a8, v66);
    _outCollateClause(v10, a2[3], v39, v40, v41, v42, v43, v44);
    v51 = *(v10 + 8);
    v36 = __OFSUB__(v51, 1);
    v52 = v51 - 1;
    if (v52 < 0 == v36)
    {
      v53 = *v10;
      if (*(*v10 + v52) == 44)
      {
        *(v10 + 8) = v52;
        *(v53 + v52) = 0;
      }
    }

    result = appendStringInfo(v10, "},", v45, v46, v47, v48, v49, v50, v69);
  }

  if (a2[4])
  {
    appendStringInfo(v10, "constraints:", a3, a4, a5, a6, a7, a8, v66);
    appendStringInfoChar(v10, 91);
    v60 = a2[4];
    if (v60 && *(v60 + 4) >= 1)
    {
      v61 = 0;
      v62 = 8;
      do
      {
        v63 = *(v60 + 16);
        v64 = *(v63 + 8 * v61);
        if (v64)
        {
          _outNode(v10, v64);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v63 + v62)
        {
          v65 = v63 + v62 >= (*(a2[4] + 16) + 8 * *(a2[4] + 4));
        }

        else
        {
          v65 = 1;
        }

        if (!v65)
        {
          appendStringInfoString(v10, ",");
        }

        ++v61;
        v62 += 8;
      }

      while (v61 < *(v60 + 4));
    }

    return appendStringInfo(v10, "],", v54, v55, v56, v57, v58, v59, a9);
  }

  return result;
}

uint64_t _outCreatedbStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "dbname:", a3, a4, a5, a6, a7, a8, v35);
    _outToken(v10, *(a2 + 8), v11, v12, v13, v14, v15, v16);
    result = appendStringInfo(v10, ",", v17, v18, v19, v20, v21, v22, v36);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v10, "options:", a3, a4, a5, a6, a7, a8, v35);
    appendStringInfoChar(v10, 91);
    v29 = *(a2 + 16);
    if (v29 && *(v29 + 4) >= 1)
    {
      v30 = 0;
      v31 = 8;
      do
      {
        v32 = *(v29 + 16);
        v33 = *(v32 + 8 * v30);
        if (v33)
        {
          _outNode(v10, v33);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v32 + v31)
        {
          v34 = v32 + v31 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v34 = 1;
        }

        if (!v34)
        {
          appendStringInfoString(v10, ",");
        }

        ++v30;
        v31 += 8;
      }

      while (v30 < *(v29 + 4));
    }

    return appendStringInfo(v10, "],", v23, v24, v25, v26, v27, v28, a9);
  }

  return result;
}

uint64_t _outDropdbStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "dbname:", a3, a4, a5, a6, a7, a8, v35);
    _outToken(v10, *(a2 + 8), v11, v12, v13, v14, v15, v16);
    result = appendStringInfo(v10, ",", v17, v18, v19, v20, v21, v22, v36);
  }

  if (*(a2 + 16) == 1)
  {
    result = appendStringInfo(v10, "missing_ok:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v10, "options:", a3, a4, a5, a6, a7, a8, v35);
    appendStringInfoChar(v10, 91);
    v29 = *(a2 + 24);
    if (v29 && *(v29 + 4) >= 1)
    {
      v30 = 0;
      v31 = 8;
      do
      {
        v32 = *(v29 + 16);
        v33 = *(v32 + 8 * v30);
        if (v33)
        {
          _outNode(v10, v33);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v32 + v31)
        {
          v34 = v32 + v31 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v34 = 1;
        }

        if (!v34)
        {
          appendStringInfoString(v10, ",");
        }

        ++v30;
        v31 += 8;
      }

      while (v30 < *(v29 + 4));
    }

    return appendStringInfo(v10, "],", v23, v24, v25, v26, v27, v28, a9);
  }

  return result;
}

uint64_t _outVacuumStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "options:", a3, a4, a5, a6, a7, a8, v34);
    appendStringInfoChar(v9, 91);
    v16 = *(a2 + 8);
    if (v16 && *(v16 + 4) >= 1)
    {
      v17 = 0;
      v18 = 8;
      do
      {
        v19 = *(v16 + 16);
        v20 = *(v19 + 8 * v17);
        if (v20)
        {
          _outNode(v9, v20);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v19 + v18)
        {
          v21 = v19 + v18 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          appendStringInfoString(v9, ",");
        }

        ++v17;
        v18 += 8;
      }

      while (v17 < *(v16 + 4));
    }

    result = appendStringInfo(v9, "],", v10, v11, v12, v13, v14, v15, v35);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v9, "rels:", a3, a4, a5, a6, a7, a8, v34);
    appendStringInfoChar(v9, 91);
    v28 = *(a2 + 16);
    if (v28 && *(v28 + 4) >= 1)
    {
      v29 = 0;
      v30 = 8;
      do
      {
        v31 = *(v28 + 16);
        v32 = *(v31 + 8 * v29);
        if (v32)
        {
          _outNode(v9, v32);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v31 + v30)
        {
          v33 = v31 + v30 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v33 = 1;
        }

        if (!v33)
        {
          appendStringInfoString(v9, ",");
        }

        ++v29;
        v30 += 8;
      }

      while (v29 < *(v28 + 4));
    }

    result = appendStringInfo(v9, "],", v22, v23, v24, v25, v26, v27, v36);
  }

  if (*(a2 + 24) == 1)
  {
    return appendStringInfo(v9, "is_vacuumcmd:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  return result;
}

uint64_t _outExplainStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "query:", a3, a4, a5, a6, a7, a8, v29);
    _outNode(v10, *(a2 + 8));
    result = appendStringInfo(v10, ",", v11, v12, v13, v14, v15, v16, v30);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v10, "options:", a3, a4, a5, a6, a7, a8, v29);
    appendStringInfoChar(v10, 91);
    v23 = *(a2 + 16);
    if (v23 && *(v23 + 4) >= 1)
    {
      v24 = 0;
      v25 = 8;
      do
      {
        v26 = *(v23 + 16);
        v27 = *(v26 + 8 * v24);
        if (v27)
        {
          _outNode(v10, v27);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v26 + v25)
        {
          v28 = v26 + v25 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v28 = 1;
        }

        if (!v28)
        {
          appendStringInfoString(v10, ",");
        }

        ++v24;
        v25 += 8;
      }

      while (v24 < *(v23 + 4));
    }

    return appendStringInfo(v10, "],", v17, v18, v19, v20, v21, v22, a9);
  }

  return result;
}

unint64_t _outCreateTableAsStmt(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "query:", a3, a4, a5, a6, a7, a8, v41);
    _outNode(a1, *(a2 + 8));
    appendStringInfo(a1, ",", v10, v11, v12, v13, v14, v15, v42);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "into:{", a3, a4, a5, a6, a7, a8, v41);
    _outIntoClause(a1, *(a2 + 16), v16, v17, v18, v19, v20, v21);
    v28 = a1[2];
    v29 = __OFSUB__(v28, 1);
    v30 = v28 - 1;
    if (v30 < 0 == v29)
    {
      v31 = *a1;
      if (*(*a1 + v30) == 44)
      {
        a1[2] = v30;
        *(v31 + v30) = 0;
      }
    }

    appendStringInfo(a1, "},", v22, v23, v24, v25, v26, v27, v43);
  }

  v32 = *(a2 + 24);
  if (v32 > 0x31)
  {
    LODWORD(v33) = 0;
  }

  else
  {
    v33 = (&off_2797B72E8)[v32];
  }

  result = appendStringInfo(a1, "relkind:%s,", a3, a4, a5, a6, a7, a8, v33);
  if (*(a2 + 28) != 1)
  {
    if (*(a2 + 29) != 1)
    {
      return result;
    }

    return appendStringInfo(a1, "if_not_exists:%s,", v35, v36, v37, v38, v39, v40, "true");
  }

  result = appendStringInfo(a1, "is_select_into:%s,", v35, v36, v37, v38, v39, v40, "true");
  if (*(a2 + 29) == 1)
  {
    return appendStringInfo(a1, "if_not_exists:%s,", v35, v36, v37, v38, v39, v40, "true");
  }

  return result;
}

uint64_t _outCreateSeqStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "sequence:{", a3, a4, a5, a6, a7, a8, v38);
    _outRangeVar(v9, *(a2 + 8), v10, v11, v12, v13, v14, v15);
    v22 = *(v9 + 8);
    v23 = __OFSUB__(v22, 1);
    v24 = v22 - 1;
    if (v24 < 0 == v23)
    {
      v25 = *v9;
      if (*(*v9 + v24) == 44)
      {
        *(v9 + 8) = v24;
        *(v25 + v24) = 0;
      }
    }

    result = appendStringInfo(v9, "},", v16, v17, v18, v19, v20, v21, v39);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v9, "options:", a3, a4, a5, a6, a7, a8, v38);
    appendStringInfoChar(v9, 91);
    v32 = *(a2 + 16);
    if (v32 && *(v32 + 4) >= 1)
    {
      v33 = 0;
      v34 = 8;
      do
      {
        v35 = *(v32 + 16);
        v36 = *(v35 + 8 * v33);
        if (v36)
        {
          _outNode(v9, v36);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v35 + v34)
        {
          v37 = v35 + v34 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v37 = 1;
        }

        if (!v37)
        {
          appendStringInfoString(v9, ",");
        }

        ++v33;
        v34 += 8;
      }

      while (v33 < *(v32 + 4));
    }

    result = appendStringInfo(v9, "],", v26, v27, v28, v29, v30, v31, v40);
  }

  if (*(a2 + 24))
  {
    result = appendStringInfo(v9, "ownerId:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 24));
  }

  if (*(a2 + 28) == 1)
  {
    result = appendStringInfo(v9, "for_identity:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  if (*(a2 + 29) == 1)
  {
    return appendStringInfo(v9, "if_not_exists:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  return result;
}

uint64_t _outAlterSeqStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "sequence:{", a3, a4, a5, a6, a7, a8, v38);
    _outRangeVar(v9, *(a2 + 8), v10, v11, v12, v13, v14, v15);
    v22 = *(v9 + 8);
    v23 = __OFSUB__(v22, 1);
    v24 = v22 - 1;
    if (v24 < 0 == v23)
    {
      v25 = *v9;
      if (*(*v9 + v24) == 44)
      {
        *(v9 + 8) = v24;
        *(v25 + v24) = 0;
      }
    }

    result = appendStringInfo(v9, "},", v16, v17, v18, v19, v20, v21, v39);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v9, "options:", a3, a4, a5, a6, a7, a8, v38);
    appendStringInfoChar(v9, 91);
    v32 = *(a2 + 16);
    if (v32 && *(v32 + 4) >= 1)
    {
      v33 = 0;
      v34 = 8;
      do
      {
        v35 = *(v32 + 16);
        v36 = *(v35 + 8 * v33);
        if (v36)
        {
          _outNode(v9, v36);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v35 + v34)
        {
          v37 = v35 + v34 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v37 = 1;
        }

        if (!v37)
        {
          appendStringInfoString(v9, ",");
        }

        ++v33;
        v34 += 8;
      }

      while (v33 < *(v32 + 4));
    }

    result = appendStringInfo(v9, "],", v26, v27, v28, v29, v30, v31, v40);
  }

  if (*(a2 + 24) == 1)
  {
    result = appendStringInfo(v9, "for_identity:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  if (*(a2 + 25) == 1)
  {
    return appendStringInfo(v9, "missing_ok:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  return result;
}

unint64_t _outVariableSetStmt(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a2 + 4);
  if (v10 > 5)
  {
    LODWORD(v11) = 0;
  }

  else
  {
    v11 = (&off_2797B7200)[v10];
  }

  result = appendStringInfo(a1, "kind:%s,", a3, a4, a5, a6, a7, a8, v11);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "name:", v13, v14, v15, v16, v17, v18, v43);
    _outToken(a1, *(a2 + 8), v19, v20, v21, v22, v23, v24);
    result = appendStringInfo(a1, ",", v25, v26, v27, v28, v29, v30, v44);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "args:", v13, v14, v15, v16, v17, v18, v43);
    appendStringInfoChar(a1, 91);
    v37 = *(a2 + 16);
    if (v37 && *(v37 + 4) >= 1)
    {
      v38 = 0;
      v39 = 8;
      do
      {
        v40 = *(v37 + 16);
        v41 = *(v40 + 8 * v38);
        if (v41)
        {
          _outNode(a1, v41);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v40 + v39)
        {
          v42 = v40 + v39 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v42 = 1;
        }

        if (!v42)
        {
          appendStringInfoString(a1, ",");
        }

        ++v38;
        v39 += 8;
      }

      while (v38 < *(v37 + 4));
    }

    result = appendStringInfo(a1, "],", v31, v32, v33, v34, v35, v36, v45);
  }

  if (*(a2 + 24) == 1)
  {
    return appendStringInfo(a1, "is_local:%s,", v13, v14, v15, v16, v17, v18, "true");
  }

  return result;
}

unint64_t _outVariableShowStmt(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if (*(a2 + 8))
  {
    v10 = result;
    appendStringInfo(result, "name:", a3, a4, a5, a6, a7, a8, v23);
    _outToken(v10, *(a2 + 8), v11, v12, v13, v14, v15, v16);

    return appendStringInfo(v10, ",", v17, v18, v19, v20, v21, v22, a9);
  }

  return result;
}

unint64_t _outDiscardStmt(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 > 3)
  {
    LODWORD(v8) = 0;
  }

  else
  {
    v8 = (&off_2797B7230)[a2];
  }

  return appendStringInfo(a1, "target:%s,", a3, a4, a5, a6, a7, a8, v8);
}

uint64_t _outCreateTrigStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "trigname:", a3, a4, a5, a6, a7, a8, v108);
    _outToken(v10, *(a2 + 8), v11, v12, v13, v14, v15, v16);
    result = appendStringInfo(v10, ",", v17, v18, v19, v20, v21, v22, v109);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v10, "relation:{", a3, a4, a5, a6, a7, a8, v108);
    _outRangeVar(v10, *(a2 + 16), v23, v24, v25, v26, v27, v28);
    v35 = v10[2];
    v36 = __OFSUB__(v35, 1);
    v37 = v35 - 1;
    if (v37 < 0 == v36)
    {
      v38 = *v10;
      if (*(*v10 + v37) == 44)
      {
        v10[2] = v37;
        *(v38 + v37) = 0;
      }
    }

    result = appendStringInfo(v10, "},", v29, v30, v31, v32, v33, v34, v110);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v10, "funcname:", a3, a4, a5, a6, a7, a8, v108);
    appendStringInfoChar(v10, 91);
    v45 = *(a2 + 24);
    if (v45 && *(v45 + 4) >= 1)
    {
      v46 = 0;
      v47 = 8;
      do
      {
        v48 = *(v45 + 16);
        v49 = *(v48 + 8 * v46);
        if (v49)
        {
          _outNode(v10, v49);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v48 + v47)
        {
          v50 = v48 + v47 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v50 = 1;
        }

        if (!v50)
        {
          appendStringInfoString(v10, ",");
        }

        ++v46;
        v47 += 8;
      }

      while (v46 < *(v45 + 4));
    }

    result = appendStringInfo(v10, "],", v39, v40, v41, v42, v43, v44, v111);
  }

  if (*(a2 + 32))
  {
    appendStringInfo(v10, "args:", a3, a4, a5, a6, a7, a8, v108);
    appendStringInfoChar(v10, 91);
    v57 = *(a2 + 32);
    if (v57 && *(v57 + 4) >= 1)
    {
      v58 = 0;
      v59 = 8;
      do
      {
        v60 = *(v57 + 16);
        v61 = *(v60 + 8 * v58);
        if (v61)
        {
          _outNode(v10, v61);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v60 + v59)
        {
          v62 = v60 + v59 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v62 = 1;
        }

        if (!v62)
        {
          appendStringInfoString(v10, ",");
        }

        ++v58;
        v59 += 8;
      }

      while (v58 < *(v57 + 4));
    }

    result = appendStringInfo(v10, "],", v51, v52, v53, v54, v55, v56, v112);
  }

  if (*(a2 + 40) == 1)
  {
    result = appendStringInfo(v10, "row:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  if (*(a2 + 42))
  {
    result = appendStringInfo(v10, "timing:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 42));
  }

  if (*(a2 + 44))
  {
    result = appendStringInfo(v10, "events:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 44));
  }

  if (*(a2 + 48))
  {
    appendStringInfo(v10, "columns:", a3, a4, a5, a6, a7, a8, v108);
    appendStringInfoChar(v10, 91);
    v69 = *(a2 + 48);
    if (v69 && *(v69 + 4) >= 1)
    {
      v70 = 0;
      v71 = 8;
      do
      {
        v72 = *(v69 + 16);
        v73 = *(v72 + 8 * v70);
        if (v73)
        {
          _outNode(v10, v73);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v72 + v71)
        {
          v74 = v72 + v71 >= (*(*(a2 + 48) + 16) + 8 * *(*(a2 + 48) + 4));
        }

        else
        {
          v74 = 1;
        }

        if (!v74)
        {
          appendStringInfoString(v10, ",");
        }

        ++v70;
        v71 += 8;
      }

      while (v70 < *(v69 + 4));
    }

    result = appendStringInfo(v10, "],", v63, v64, v65, v66, v67, v68, v113);
  }

  if (*(a2 + 56))
  {
    appendStringInfo(v10, "whenClause:", a3, a4, a5, a6, a7, a8, v108);
    _outNode(v10, *(a2 + 56));
    result = appendStringInfo(v10, ",", v75, v76, v77, v78, v79, v80, v114);
  }

  if (*(a2 + 64) == 1)
  {
    result = appendStringInfo(v10, "isconstraint:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  if (*(a2 + 72))
  {
    appendStringInfo(v10, "transitionRels:", a3, a4, a5, a6, a7, a8, v108);
    appendStringInfoChar(v10, 91);
    v87 = *(a2 + 72);
    if (v87 && *(v87 + 4) >= 1)
    {
      v88 = 0;
      v89 = 8;
      do
      {
        v90 = *(v87 + 16);
        v91 = *(v90 + 8 * v88);
        if (v91)
        {
          _outNode(v10, v91);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v90 + v89)
        {
          v92 = v90 + v89 >= (*(*(a2 + 72) + 16) + 8 * *(*(a2 + 72) + 4));
        }

        else
        {
          v92 = 1;
        }

        if (!v92)
        {
          appendStringInfoString(v10, ",");
        }

        ++v88;
        v89 += 8;
      }

      while (v88 < *(v87 + 4));
    }

    result = appendStringInfo(v10, "],", v81, v82, v83, v84, v85, v86, v115);
  }

  if (*(a2 + 80) != 1)
  {
    if (*(a2 + 81) != 1)
    {
      goto LABEL_76;
    }

LABEL_84:
    result = appendStringInfo(v10, "initdeferred:%s,", a3, a4, a5, a6, a7, a8, "true");
    if (!*(a2 + 88))
    {
      return result;
    }

    goto LABEL_77;
  }

  result = appendStringInfo(v10, "deferrable:%s,", a3, a4, a5, a6, a7, a8, "true");
  if (*(a2 + 81) == 1)
  {
    goto LABEL_84;
  }

LABEL_76:
  if (!*(a2 + 88))
  {
    return result;
  }

LABEL_77:
  appendStringInfo(v10, "constrrel:{", a3, a4, a5, a6, a7, a8, v108);
  _outRangeVar(v10, *(a2 + 88), v93, v94, v95, v96, v97, v98);
  v105 = v10[2];
  v36 = __OFSUB__(v105, 1);
  v106 = v105 - 1;
  if (v106 < 0 == v36)
  {
    v107 = *v10;
    if (*(*v10 + v106) == 44)
    {
      v10[2] = v106;
      *(v107 + v106) = 0;
    }
  }

  return appendStringInfo(v10, "},", v99, v100, v101, v102, v103, v104, a9);
}

uint64_t _outCreatePLangStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 4) == 1)
  {
    result = appendStringInfo(result, "replace:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  if (*(a2 + 8))
  {
    appendStringInfo(v9, "plname:", a3, a4, a5, a6, a7, a8, v58);
    _outToken(v9, *(a2 + 8), v10, v11, v12, v13, v14, v15);
    result = appendStringInfo(v9, ",", v16, v17, v18, v19, v20, v21, v59);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v9, "plhandler:", a3, a4, a5, a6, a7, a8, v58);
    appendStringInfoChar(v9, 91);
    v28 = *(a2 + 16);
    if (v28 && *(v28 + 4) >= 1)
    {
      v29 = 0;
      v30 = 8;
      do
      {
        v31 = *(v28 + 16);
        v32 = *(v31 + 8 * v29);
        if (v32)
        {
          _outNode(v9, v32);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v31 + v30)
        {
          v33 = v31 + v30 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v33 = 1;
        }

        if (!v33)
        {
          appendStringInfoString(v9, ",");
        }

        ++v29;
        v30 += 8;
      }

      while (v29 < *(v28 + 4));
    }

    result = appendStringInfo(v9, "],", v22, v23, v24, v25, v26, v27, v60);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v9, "plinline:", a3, a4, a5, a6, a7, a8, v58);
    appendStringInfoChar(v9, 91);
    v40 = *(a2 + 24);
    if (v40 && *(v40 + 4) >= 1)
    {
      v41 = 0;
      v42 = 8;
      do
      {
        v43 = *(v40 + 16);
        v44 = *(v43 + 8 * v41);
        if (v44)
        {
          _outNode(v9, v44);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v43 + v42)
        {
          v45 = v43 + v42 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v45 = 1;
        }

        if (!v45)
        {
          appendStringInfoString(v9, ",");
        }

        ++v41;
        v42 += 8;
      }

      while (v41 < *(v40 + 4));
    }

    result = appendStringInfo(v9, "],", v34, v35, v36, v37, v38, v39, v61);
  }

  if (*(a2 + 32))
  {
    appendStringInfo(v9, "plvalidator:", a3, a4, a5, a6, a7, a8, v58);
    appendStringInfoChar(v9, 91);
    v52 = *(a2 + 32);
    if (v52 && *(v52 + 4) >= 1)
    {
      v53 = 0;
      v54 = 8;
      do
      {
        v55 = *(v52 + 16);
        v56 = *(v55 + 8 * v53);
        if (v56)
        {
          _outNode(v9, v56);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v55 + v54)
        {
          v57 = v55 + v54 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v57 = 1;
        }

        if (!v57)
        {
          appendStringInfoString(v9, ",");
        }

        ++v53;
        v54 += 8;
      }

      while (v53 < *(v52 + 4));
    }

    result = appendStringInfo(v9, "],", v46, v47, v48, v49, v50, v51, v62);
  }

  if (*(a2 + 40) == 1)
  {
    return appendStringInfo(v9, "pltrusted:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  return result;
}

unint64_t _outCreateRoleStmt(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v11 = *(a2 + 4);
  if (v11 > 2)
  {
    LODWORD(v12) = 0;
  }

  else
  {
    v12 = (&off_2797B7250)[v11];
  }

  result = appendStringInfo(a1, "stmt_type:%s,", a3, a4, a5, a6, a7, a8, v12);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "role:", v14, v15, v16, v17, v18, v19, v44);
    _outToken(a1, *(a2 + 8), v20, v21, v22, v23, v24, v25);
    result = appendStringInfo(a1, ",", v26, v27, v28, v29, v30, v31, v45);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "options:", v14, v15, v16, v17, v18, v19, v44);
    appendStringInfoChar(a1, 91);
    v38 = *(a2 + 16);
    if (v38 && *(v38 + 4) >= 1)
    {
      v39 = 0;
      v40 = 8;
      do
      {
        v41 = *(v38 + 16);
        v42 = *(v41 + 8 * v39);
        if (v42)
        {
          _outNode(a1, v42);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v41 + v40)
        {
          v43 = v41 + v40 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v43 = 1;
        }

        if (!v43)
        {
          appendStringInfoString(a1, ",");
        }

        ++v39;
        v40 += 8;
      }

      while (v39 < *(v38 + 4));
    }

    return appendStringInfo(a1, "],", v32, v33, v34, v35, v36, v37, a9);
  }

  return result;
}

uint64_t _outAlterRoleStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "role:{", a3, a4, a5, a6, a7, a8, v38);
    _outRoleSpec(v9, *(a2 + 8), v10, v11, v12, v13, v14, v15);
    v22 = v9[2];
    v23 = __OFSUB__(v22, 1);
    v24 = v22 - 1;
    if (v24 < 0 == v23)
    {
      v25 = *v9;
      if (*(*v9 + v24) == 44)
      {
        v9[2] = v24;
        *(v25 + v24) = 0;
      }
    }

    result = appendStringInfo(v9, "},", v16, v17, v18, v19, v20, v21, v39);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v9, "options:", a3, a4, a5, a6, a7, a8, v38);
    appendStringInfoChar(v9, 91);
    v32 = *(a2 + 16);
    if (v32 && *(v32 + 4) >= 1)
    {
      v33 = 0;
      v34 = 8;
      do
      {
        v35 = *(v32 + 16);
        v36 = *(v35 + 8 * v33);
        if (v36)
        {
          _outNode(v9, v36);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v35 + v34)
        {
          v37 = v35 + v34 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v37 = 1;
        }

        if (!v37)
        {
          appendStringInfoString(v9, ",");
        }

        ++v33;
        v34 += 8;
      }

      while (v33 < *(v32 + 4));
    }

    result = appendStringInfo(v9, "],", v26, v27, v28, v29, v30, v31, v40);
  }

  if (*(a2 + 24))
  {
    return appendStringInfo(v9, "action:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 24));
  }

  return result;
}

uint64_t _outDropRoleStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "roles:", a3, a4, a5, a6, a7, a8, v22);
    appendStringInfoChar(v9, 91);
    v16 = *(a2 + 8);
    if (v16 && *(v16 + 4) >= 1)
    {
      v17 = 0;
      v18 = 8;
      do
      {
        v19 = *(v16 + 16);
        v20 = *(v19 + 8 * v17);
        if (v20)
        {
          _outNode(v9, v20);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v19 + v18)
        {
          v21 = v19 + v18 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          appendStringInfoString(v9, ",");
        }

        ++v17;
        v18 += 8;
      }

      while (v17 < *(v16 + 4));
    }

    result = appendStringInfo(v9, "],", v10, v11, v12, v13, v14, v15, v23);
  }

  if (*(a2 + 16) == 1)
  {
    return appendStringInfo(v9, "missing_ok:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  return result;
}

uint64_t _outLockStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "relations:", a3, a4, a5, a6, a7, a8, v22);
    appendStringInfoChar(v9, 91);
    v16 = *(a2 + 8);
    if (v16 && *(v16 + 4) >= 1)
    {
      v17 = 0;
      v18 = 8;
      do
      {
        v19 = *(v16 + 16);
        v20 = *(v19 + 8 * v17);
        if (v20)
        {
          _outNode(v9, v20);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v19 + v18)
        {
          v21 = v19 + v18 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          appendStringInfoString(v9, ",");
        }

        ++v17;
        v18 += 8;
      }

      while (v17 < *(v16 + 4));
    }

    result = appendStringInfo(v9, "],", v10, v11, v12, v13, v14, v15, v23);
  }

  if (*(a2 + 16))
  {
    result = appendStringInfo(v9, "mode:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 16));
  }

  if (*(a2 + 20) == 1)
  {
    return appendStringInfo(v9, "nowait:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  return result;
}

uint64_t _outConstraintsSetStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "constraints:", a3, a4, a5, a6, a7, a8, v22);
    appendStringInfoChar(v9, 91);
    v16 = *(a2 + 8);
    if (v16 && *(v16 + 4) >= 1)
    {
      v17 = 0;
      v18 = 8;
      do
      {
        v19 = *(v16 + 16);
        v20 = *(v19 + 8 * v17);
        if (v20)
        {
          _outNode(v9, v20);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v19 + v18)
        {
          v21 = v19 + v18 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          appendStringInfoString(v9, ",");
        }

        ++v17;
        v18 += 8;
      }

      while (v17 < *(v16 + 4));
    }

    result = appendStringInfo(v9, "],", v10, v11, v12, v13, v14, v15, v23);
  }

  if (*(a2 + 16) == 1)
  {
    return appendStringInfo(v9, "deferred:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  return result;
}

unint64_t _outReindexStmt(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a2 + 4);
  if (v10 > 4)
  {
    LODWORD(v11) = 0;
  }

  else
  {
    v11 = (&off_2797B7268)[v10];
  }

  result = appendStringInfo(a1, "kind:%s,", a3, a4, a5, a6, a7, a8, v11);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "relation:{", v13, v14, v15, v16, v17, v18, v47);
    _outRangeVar(a1, *(a2 + 8), v19, v20, v21, v22, v23, v24);
    v31 = a1[2];
    v32 = __OFSUB__(v31, 1);
    v33 = v31 - 1;
    if (v33 < 0 == v32)
    {
      v34 = *a1;
      if (*(*a1 + v33) == 44)
      {
        a1[2] = v33;
        *(v34 + v33) = 0;
      }
    }

    result = appendStringInfo(a1, "},", v25, v26, v27, v28, v29, v30, v48);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "name:", v13, v14, v15, v16, v17, v18, v47);
    _outToken(a1, *(a2 + 16), v35, v36, v37, v38, v39, v40);
    result = appendStringInfo(a1, ",", v41, v42, v43, v44, v45, v46, v49);
  }

  if (*(a2 + 24))
  {
    result = appendStringInfo(a1, "options:%d,", v13, v14, v15, v16, v17, v18, *(a2 + 24));
  }

  if (*(a2 + 28) == 1)
  {
    return appendStringInfo(a1, "concurrent:%s,", v13, v14, v15, v16, v17, v18, "true");
  }

  return result;
}

uint64_t _outCreateSchemaStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "schemaname:", a3, a4, a5, a6, a7, a8, v50);
    _outToken(v9, *(a2 + 8), v10, v11, v12, v13, v14, v15);
    result = appendStringInfo(v9, ",", v16, v17, v18, v19, v20, v21, v51);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v9, "authrole:{", a3, a4, a5, a6, a7, a8, v50);
    _outRoleSpec(v9, *(a2 + 16), v22, v23, v24, v25, v26, v27);
    v34 = v9[2];
    v35 = __OFSUB__(v34, 1);
    v36 = v34 - 1;
    if (v36 < 0 == v35)
    {
      v37 = *v9;
      if (*(*v9 + v36) == 44)
      {
        v9[2] = v36;
        *(v37 + v36) = 0;
      }
    }

    result = appendStringInfo(v9, "},", v28, v29, v30, v31, v32, v33, v52);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v9, "schemaElts:", a3, a4, a5, a6, a7, a8, v50);
    appendStringInfoChar(v9, 91);
    v44 = *(a2 + 24);
    if (v44 && *(v44 + 4) >= 1)
    {
      v45 = 0;
      v46 = 8;
      do
      {
        v47 = *(v44 + 16);
        v48 = *(v47 + 8 * v45);
        if (v48)
        {
          _outNode(v9, v48);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v47 + v46)
        {
          v49 = v47 + v46 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v49 = 1;
        }

        if (!v49)
        {
          appendStringInfoString(v9, ",");
        }

        ++v45;
        v46 += 8;
      }

      while (v45 < *(v44 + 4));
    }

    result = appendStringInfo(v9, "],", v38, v39, v40, v41, v42, v43, v53);
  }

  if (*(a2 + 32) == 1)
  {
    return appendStringInfo(v9, "if_not_exists:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  return result;
}

uint64_t _outAlterDatabaseSetStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "dbname:", a3, a4, a5, a6, a7, a8, v39);
    _outToken(v10, *(a2 + 8), v11, v12, v13, v14, v15, v16);
    result = appendStringInfo(v10, ",", v17, v18, v19, v20, v21, v22, v40);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v10, "setstmt:{", a3, a4, a5, a6, a7, a8, v39);
    _outVariableSetStmt(v10, *(a2 + 16), v23, v24, v25, v26, v27, v28);
    v35 = v10[2];
    v36 = __OFSUB__(v35, 1);
    v37 = v35 - 1;
    if (v37 < 0 == v36)
    {
      v38 = *v10;
      if (*(*v10 + v37) == 44)
      {
        v10[2] = v37;
        *(v38 + v37) = 0;
      }
    }

    return appendStringInfo(v10, "},", v29, v30, v31, v32, v33, v34, a9);
  }

  return result;
}

uint64_t _outAlterRoleSetStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "role:{", a3, a4, a5, a6, a7, a8, v54);
    _outRoleSpec(v10, *(a2 + 8), v11, v12, v13, v14, v15, v16);
    v23 = v10[2];
    v24 = __OFSUB__(v23, 1);
    v25 = v23 - 1;
    if (v25 < 0 == v24)
    {
      v26 = *v10;
      if (*(*v10 + v25) == 44)
      {
        v10[2] = v25;
        *(v26 + v25) = 0;
      }
    }

    result = appendStringInfo(v10, "},", v17, v18, v19, v20, v21, v22, v55);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v10, "database:", a3, a4, a5, a6, a7, a8, v54);
    _outToken(v10, *(a2 + 16), v27, v28, v29, v30, v31, v32);
    result = appendStringInfo(v10, ",", v33, v34, v35, v36, v37, v38, v56);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v10, "setstmt:{", a3, a4, a5, a6, a7, a8, v54);
    _outVariableSetStmt(v10, *(a2 + 24), v39, v40, v41, v42, v43, v44);
    v51 = v10[2];
    v24 = __OFSUB__(v51, 1);
    v52 = v51 - 1;
    if (v52 < 0 == v24)
    {
      v53 = *v10;
      if (*(*v10 + v52) == 44)
      {
        v10[2] = v52;
        *(v53 + v52) = 0;
      }
    }

    return appendStringInfo(v10, "},", v45, v46, v47, v48, v49, v50, a9);
  }

  return result;
}

uint64_t _outCreateConversionStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "conversion_name:", a3, a4, a5, a6, a7, a8, v58);
    appendStringInfoChar(v9, 91);
    v16 = *(a2 + 8);
    if (v16 && *(v16 + 4) >= 1)
    {
      v17 = 0;
      v18 = 8;
      do
      {
        v19 = *(v16 + 16);
        v20 = *(v19 + 8 * v17);
        if (v20)
        {
          _outNode(v9, v20);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v19 + v18)
        {
          v21 = v19 + v18 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          appendStringInfoString(v9, ",");
        }

        ++v17;
        v18 += 8;
      }

      while (v17 < *(v16 + 4));
    }

    result = appendStringInfo(v9, "],", v10, v11, v12, v13, v14, v15, v59);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v9, "for_encoding_name:", a3, a4, a5, a6, a7, a8, v58);
    _outToken(v9, *(a2 + 16), v22, v23, v24, v25, v26, v27);
    result = appendStringInfo(v9, ",", v28, v29, v30, v31, v32, v33, v60);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v9, "to_encoding_name:", a3, a4, a5, a6, a7, a8, v58);
    _outToken(v9, *(a2 + 24), v34, v35, v36, v37, v38, v39);
    result = appendStringInfo(v9, ",", v40, v41, v42, v43, v44, v45, v61);
  }

  if (*(a2 + 32))
  {
    appendStringInfo(v9, "func_name:", a3, a4, a5, a6, a7, a8, v58);
    appendStringInfoChar(v9, 91);
    v52 = *(a2 + 32);
    if (v52 && *(v52 + 4) >= 1)
    {
      v53 = 0;
      v54 = 8;
      do
      {
        v55 = *(v52 + 16);
        v56 = *(v55 + 8 * v53);
        if (v56)
        {
          _outNode(v9, v56);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v55 + v54)
        {
          v57 = v55 + v54 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v57 = 1;
        }

        if (!v57)
        {
          appendStringInfoString(v9, ",");
        }

        ++v53;
        v54 += 8;
      }

      while (v53 < *(v52 + 4));
    }

    result = appendStringInfo(v9, "],", v46, v47, v48, v49, v50, v51, v62);
  }

  if (*(a2 + 40) == 1)
  {
    return appendStringInfo(v9, "def:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  return result;
}

unint64_t _outCreateCastStmt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "sourcetype:{", a3, a4, a5, a6, a7, a8, v65);
    _outTypeName(a1, *(a2 + 8), v10, v11, v12, v13, v14, v15);
    v22 = *(a1 + 8);
    v23 = __OFSUB__(v22, 1);
    v24 = v22 - 1;
    if (v24 < 0 == v23)
    {
      v25 = *a1;
      if (*(*a1 + v24) == 44)
      {
        *(a1 + 8) = v24;
        *(v25 + v24) = 0;
      }
    }

    appendStringInfo(a1, "},", v16, v17, v18, v19, v20, v21, v66);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "targettype:{", a3, a4, a5, a6, a7, a8, v65);
    _outTypeName(a1, *(a2 + 16), v26, v27, v28, v29, v30, v31);
    v38 = *(a1 + 8);
    v23 = __OFSUB__(v38, 1);
    v39 = v38 - 1;
    if (v39 < 0 == v23)
    {
      v40 = *a1;
      if (*(*a1 + v39) == 44)
      {
        *(a1 + 8) = v39;
        *(v40 + v39) = 0;
      }
    }

    appendStringInfo(a1, "},", v32, v33, v34, v35, v36, v37, v67);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "func:{", a3, a4, a5, a6, a7, a8, v65);
    _outObjectWithArgs(a1, *(a2 + 24), v41, v42, v43, v44, v45, v46);
    v53 = *(a1 + 8);
    v23 = __OFSUB__(v53, 1);
    v54 = v53 - 1;
    if (v54 < 0 == v23)
    {
      v55 = *a1;
      if (*(*a1 + v54) == 44)
      {
        *(a1 + 8) = v54;
        *(v55 + v54) = 0;
      }
    }

    appendStringInfo(a1, "},", v47, v48, v49, v50, v51, v52, v68);
  }

  v56 = *(a2 + 32);
  if (v56 > 2)
  {
    LODWORD(v57) = 0;
  }

  else
  {
    v57 = (&off_2797B7290)[v56];
  }

  result = appendStringInfo(a1, "context:%s,", a3, a4, a5, a6, a7, a8, v57);
  if (*(a2 + 36) == 1)
  {
    return appendStringInfo(a1, "inout:%s,", v59, v60, v61, v62, v63, v64, "true");
  }

  return result;
}

uint64_t _outCreateOpClassStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "opclassname:", a3, a4, a5, a6, a7, a8, v74);
    appendStringInfoChar(v9, 91);
    v16 = *(a2 + 8);
    if (v16 && *(v16 + 4) >= 1)
    {
      v17 = 0;
      v18 = 8;
      do
      {
        v19 = *(v16 + 16);
        v20 = *(v19 + 8 * v17);
        if (v20)
        {
          _outNode(v9, v20);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v19 + v18)
        {
          v21 = v19 + v18 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          appendStringInfoString(v9, ",");
        }

        ++v17;
        v18 += 8;
      }

      while (v17 < *(v16 + 4));
    }

    result = appendStringInfo(v9, "],", v10, v11, v12, v13, v14, v15, v75);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v9, "opfamilyname:", a3, a4, a5, a6, a7, a8, v74);
    appendStringInfoChar(v9, 91);
    v28 = *(a2 + 16);
    if (v28 && *(v28 + 4) >= 1)
    {
      v29 = 0;
      v30 = 8;
      do
      {
        v31 = *(v28 + 16);
        v32 = *(v31 + 8 * v29);
        if (v32)
        {
          _outNode(v9, v32);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v31 + v30)
        {
          v33 = v31 + v30 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v33 = 1;
        }

        if (!v33)
        {
          appendStringInfoString(v9, ",");
        }

        ++v29;
        v30 += 8;
      }

      while (v29 < *(v28 + 4));
    }

    result = appendStringInfo(v9, "],", v22, v23, v24, v25, v26, v27, v76);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v9, "amname:", a3, a4, a5, a6, a7, a8, v74);
    _outToken(v9, *(a2 + 24), v34, v35, v36, v37, v38, v39);
    result = appendStringInfo(v9, ",", v40, v41, v42, v43, v44, v45, v77);
  }

  if (*(a2 + 32))
  {
    appendStringInfo(v9, "datatype:{", a3, a4, a5, a6, a7, a8, v74);
    _outTypeName(v9, *(a2 + 32), v46, v47, v48, v49, v50, v51);
    v58 = v9[2];
    v59 = __OFSUB__(v58, 1);
    v60 = v58 - 1;
    if (v60 < 0 == v59)
    {
      v61 = *v9;
      if (*(*v9 + v60) == 44)
      {
        v9[2] = v60;
        *(v61 + v60) = 0;
      }
    }

    result = appendStringInfo(v9, "},", v52, v53, v54, v55, v56, v57, v78);
  }

  if (*(a2 + 40))
  {
    appendStringInfo(v9, "items:", a3, a4, a5, a6, a7, a8, v74);
    appendStringInfoChar(v9, 91);
    v68 = *(a2 + 40);
    if (v68 && *(v68 + 4) >= 1)
    {
      v69 = 0;
      v70 = 8;
      do
      {
        v71 = *(v68 + 16);
        v72 = *(v71 + 8 * v69);
        if (v72)
        {
          _outNode(v9, v72);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v71 + v70)
        {
          v73 = v71 + v70 >= (*(*(a2 + 40) + 16) + 8 * *(*(a2 + 40) + 4));
        }

        else
        {
          v73 = 1;
        }

        if (!v73)
        {
          appendStringInfoString(v9, ",");
        }

        ++v69;
        v70 += 8;
      }

      while (v69 < *(v68 + 4));
    }

    result = appendStringInfo(v9, "],", v62, v63, v64, v65, v66, v67, v79);
  }

  if (*(a2 + 48) == 1)
  {
    return appendStringInfo(v9, "isDefault:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  return result;
}

uint64_t _outCreateOpFamilyStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "opfamilyname:", a3, a4, a5, a6, a7, a8, v35);
    appendStringInfoChar(v10, 91);
    v17 = *(a2 + 8);
    if (v17 && *(v17 + 4) >= 1)
    {
      v18 = 0;
      v19 = 8;
      do
      {
        v20 = *(v17 + 16);
        v21 = *(v20 + 8 * v18);
        if (v21)
        {
          _outNode(v10, v21);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v20 + v19)
        {
          v22 = v20 + v19 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v22 = 1;
        }

        if (!v22)
        {
          appendStringInfoString(v10, ",");
        }

        ++v18;
        v19 += 8;
      }

      while (v18 < *(v17 + 4));
    }

    result = appendStringInfo(v10, "],", v11, v12, v13, v14, v15, v16, v36);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v10, "amname:", a3, a4, a5, a6, a7, a8, v35);
    _outToken(v10, *(a2 + 16), v23, v24, v25, v26, v27, v28);

    return appendStringInfo(v10, ",", v29, v30, v31, v32, v33, v34, a9);
  }

  return result;
}

uint64_t _outAlterOpFamilyStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "opfamilyname:", a3, a4, a5, a6, a7, a8, v47);
    appendStringInfoChar(v10, 91);
    v17 = *(a2 + 8);
    if (v17 && *(v17 + 4) >= 1)
    {
      v18 = 0;
      v19 = 8;
      do
      {
        v20 = *(v17 + 16);
        v21 = *(v20 + 8 * v18);
        if (v21)
        {
          _outNode(v10, v21);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v20 + v19)
        {
          v22 = v20 + v19 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v22 = 1;
        }

        if (!v22)
        {
          appendStringInfoString(v10, ",");
        }

        ++v18;
        v19 += 8;
      }

      while (v18 < *(v17 + 4));
    }

    result = appendStringInfo(v10, "],", v11, v12, v13, v14, v15, v16, v48);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v10, "amname:", a3, a4, a5, a6, a7, a8, v47);
    _outToken(v10, *(a2 + 16), v23, v24, v25, v26, v27, v28);
    result = appendStringInfo(v10, ",", v29, v30, v31, v32, v33, v34, v49);
  }

  if (*(a2 + 24) == 1)
  {
    result = appendStringInfo(v10, "isDrop:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  if (*(a2 + 32))
  {
    appendStringInfo(v10, "items:", a3, a4, a5, a6, a7, a8, v47);
    appendStringInfoChar(v10, 91);
    v41 = *(a2 + 32);
    if (v41 && *(v41 + 4) >= 1)
    {
      v42 = 0;
      v43 = 8;
      do
      {
        v44 = *(v41 + 16);
        v45 = *(v44 + 8 * v42);
        if (v45)
        {
          _outNode(v10, v45);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v44 + v43)
        {
          v46 = v44 + v43 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v46 = 1;
        }

        if (!v46)
        {
          appendStringInfoString(v10, ",");
        }

        ++v42;
        v43 += 8;
      }

      while (v42 < *(v41 + 4));
    }

    return appendStringInfo(v10, "],", v35, v36, v37, v38, v39, v40, a9);
  }

  return result;
}

uint64_t _outPrepareStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "name:", a3, a4, a5, a6, a7, a8, v41);
    _outToken(v10, *(a2 + 8), v11, v12, v13, v14, v15, v16);
    result = appendStringInfo(v10, ",", v17, v18, v19, v20, v21, v22, v42);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v10, "argtypes:", a3, a4, a5, a6, a7, a8, v41);
    appendStringInfoChar(v10, 91);
    v29 = *(a2 + 16);
    if (v29 && *(v29 + 4) >= 1)
    {
      v30 = 0;
      v31 = 8;
      do
      {
        v32 = *(v29 + 16);
        v33 = *(v32 + 8 * v30);
        if (v33)
        {
          _outNode(v10, v33);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v32 + v31)
        {
          v34 = v32 + v31 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v34 = 1;
        }

        if (!v34)
        {
          appendStringInfoString(v10, ",");
        }

        ++v30;
        v31 += 8;
      }

      while (v30 < *(v29 + 4));
    }

    result = appendStringInfo(v10, "],", v23, v24, v25, v26, v27, v28, v43);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v10, "query:", a3, a4, a5, a6, a7, a8, v41);
    _outNode(v10, *(a2 + 24));

    return appendStringInfo(v10, ",", v35, v36, v37, v38, v39, v40, a9);
  }

  return result;
}

uint64_t _outExecuteStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "name:", a3, a4, a5, a6, a7, a8, v35);
    _outToken(v10, *(a2 + 8), v11, v12, v13, v14, v15, v16);
    result = appendStringInfo(v10, ",", v17, v18, v19, v20, v21, v22, v36);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v10, "params:", a3, a4, a5, a6, a7, a8, v35);
    appendStringInfoChar(v10, 91);
    v29 = *(a2 + 16);
    if (v29 && *(v29 + 4) >= 1)
    {
      v30 = 0;
      v31 = 8;
      do
      {
        v32 = *(v29 + 16);
        v33 = *(v32 + 8 * v30);
        if (v33)
        {
          _outNode(v10, v33);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v32 + v31)
        {
          v34 = v32 + v31 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v34 = 1;
        }

        if (!v34)
        {
          appendStringInfoString(v10, ",");
        }

        ++v30;
        v31 += 8;
      }

      while (v30 < *(v29 + 4));
    }

    return appendStringInfo(v10, "],", v23, v24, v25, v26, v27, v28, a9);
  }

  return result;
}

uint64_t _outDeclareCursorStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "portalname:", a3, a4, a5, a6, a7, a8, v29);
    _outToken(v10, *(a2 + 8), v11, v12, v13, v14, v15, v16);
    result = appendStringInfo(v10, ",", v17, v18, v19, v20, v21, v22, v30);
  }

  if (*(a2 + 16))
  {
    result = appendStringInfo(v10, "options:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 16));
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v10, "query:", a3, a4, a5, a6, a7, a8, v29);
    _outNode(v10, *(a2 + 24));

    return appendStringInfo(v10, ",", v23, v24, v25, v26, v27, v28, a9);
  }

  return result;
}

uint64_t _outCreateTableSpaceStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "tablespacename:", a3, a4, a5, a6, a7, a8, v63);
    _outToken(v10, *(a2 + 8), v11, v12, v13, v14, v15, v16);
    result = appendStringInfo(v10, ",", v17, v18, v19, v20, v21, v22, v64);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v10, "owner:{", a3, a4, a5, a6, a7, a8, v63);
    _outRoleSpec(v10, *(a2 + 16), v23, v24, v25, v26, v27, v28);
    v35 = v10[2];
    v36 = __OFSUB__(v35, 1);
    v37 = v35 - 1;
    if (v37 < 0 == v36)
    {
      v38 = *v10;
      if (*(*v10 + v37) == 44)
      {
        v10[2] = v37;
        *(v38 + v37) = 0;
      }
    }

    result = appendStringInfo(v10, "},", v29, v30, v31, v32, v33, v34, v65);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v10, "location:", a3, a4, a5, a6, a7, a8, v63);
    _outToken(v10, *(a2 + 24), v39, v40, v41, v42, v43, v44);
    result = appendStringInfo(v10, ",", v45, v46, v47, v48, v49, v50, v66);
  }

  if (*(a2 + 32))
  {
    appendStringInfo(v10, "options:", a3, a4, a5, a6, a7, a8, v63);
    appendStringInfoChar(v10, 91);
    v57 = *(a2 + 32);
    if (v57 && *(v57 + 4) >= 1)
    {
      v58 = 0;
      v59 = 8;
      do
      {
        v60 = *(v57 + 16);
        v61 = *(v60 + 8 * v58);
        if (v61)
        {
          _outNode(v10, v61);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v60 + v59)
        {
          v62 = v60 + v59 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v62 = 1;
        }

        if (!v62)
        {
          appendStringInfoString(v10, ",");
        }

        ++v58;
        v59 += 8;
      }

      while (v58 < *(v57 + 4));
    }

    return appendStringInfo(v10, "],", v51, v52, v53, v54, v55, v56, a9);
  }

  return result;
}

uint64_t _outDropTableSpaceStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "tablespacename:", a3, a4, a5, a6, a7, a8, v22);
    _outToken(v9, *(a2 + 8), v10, v11, v12, v13, v14, v15);
    result = appendStringInfo(v9, ",", v16, v17, v18, v19, v20, v21, v23);
  }

  if (*(a2 + 16) == 1)
  {
    return appendStringInfo(v9, "missing_ok:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  return result;
}

unint64_t _outAlterObjectDependsStmt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a2 + 4);
  if (v10 > 0x31)
  {
    LODWORD(v11) = 0;
  }

  else
  {
    v11 = (&off_2797B72E8)[v10];
  }

  result = appendStringInfo(a1, "objectType:%s,", a3, a4, a5, a6, a7, a8, v11);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "relation:{", v13, v14, v15, v16, v17, v18, v47);
    _outRangeVar(a1, *(a2 + 8), v19, v20, v21, v22, v23, v24);
    v31 = *(a1 + 8);
    v32 = __OFSUB__(v31, 1);
    v33 = v31 - 1;
    if (v33 < 0 == v32)
    {
      v34 = *a1;
      if (*(*a1 + v33) == 44)
      {
        *(a1 + 8) = v33;
        *(v34 + v33) = 0;
      }
    }

    result = appendStringInfo(a1, "},", v25, v26, v27, v28, v29, v30, v48);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "object:", v13, v14, v15, v16, v17, v18, v47);
    _outNode(a1, *(a2 + 16));
    result = appendStringInfo(a1, ",", v35, v36, v37, v38, v39, v40, v49);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "extname:", v13, v14, v15, v16, v17, v18, v47);
    _outNode(a1, *(a2 + 24));
    result = appendStringInfo(a1, ",", v41, v42, v43, v44, v45, v46, v50);
  }

  if (*(a2 + 32) == 1)
  {
    return appendStringInfo(a1, "remove:%s,", v13, v14, v15, v16, v17, v18, "true");
  }

  return result;
}

unint64_t _outAlterObjectSchemaStmt(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a2 + 4);
  if (v10 > 0x31)
  {
    LODWORD(v11) = 0;
  }

  else
  {
    v11 = (&off_2797B72E8)[v10];
  }

  result = appendStringInfo(a1, "objectType:%s,", a3, a4, a5, a6, a7, a8, v11);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "relation:{", v13, v14, v15, v16, v17, v18, v53);
    _outRangeVar(a1, *(a2 + 8), v19, v20, v21, v22, v23, v24);
    v31 = a1[2];
    v32 = __OFSUB__(v31, 1);
    v33 = v31 - 1;
    if (v33 < 0 == v32)
    {
      v34 = *a1;
      if (*(*a1 + v33) == 44)
      {
        a1[2] = v33;
        *(v34 + v33) = 0;
      }
    }

    result = appendStringInfo(a1, "},", v25, v26, v27, v28, v29, v30, v54);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "object:", v13, v14, v15, v16, v17, v18, v53);
    _outNode(a1, *(a2 + 16));
    result = appendStringInfo(a1, ",", v35, v36, v37, v38, v39, v40, v55);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "newschema:", v13, v14, v15, v16, v17, v18, v53);
    _outToken(a1, *(a2 + 24), v41, v42, v43, v44, v45, v46);
    result = appendStringInfo(a1, ",", v47, v48, v49, v50, v51, v52, v56);
  }

  if (*(a2 + 32) == 1)
  {
    return appendStringInfo(a1, "missing_ok:%s,", v13, v14, v15, v16, v17, v18, "true");
  }

  return result;
}

unint64_t _outAlterOwnerStmt(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v11 = *(a2 + 4);
  if (v11 > 0x31)
  {
    LODWORD(v12) = 0;
  }

  else
  {
    v12 = (&off_2797B72E8)[v11];
  }

  result = appendStringInfo(a1, "objectType:%s,", a3, a4, a5, a6, a7, a8, v12);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "relation:{", v14, v15, v16, v17, v18, v19, v57);
    _outRangeVar(a1, *(a2 + 8), v20, v21, v22, v23, v24, v25);
    v32 = a1[2];
    v33 = __OFSUB__(v32, 1);
    v34 = v32 - 1;
    if (v34 < 0 == v33)
    {
      v35 = *a1;
      if (*(*a1 + v34) == 44)
      {
        a1[2] = v34;
        *(v35 + v34) = 0;
      }
    }

    result = appendStringInfo(a1, "},", v26, v27, v28, v29, v30, v31, v58);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "object:", v14, v15, v16, v17, v18, v19, v57);
    _outNode(a1, *(a2 + 16));
    result = appendStringInfo(a1, ",", v36, v37, v38, v39, v40, v41, v59);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "newowner:{", v14, v15, v16, v17, v18, v19, v57);
    _outRoleSpec(a1, *(a2 + 24), v42, v43, v44, v45, v46, v47);
    v54 = a1[2];
    v33 = __OFSUB__(v54, 1);
    v55 = v54 - 1;
    if (v55 < 0 == v33)
    {
      v56 = *a1;
      if (*(*a1 + v55) == 44)
      {
        a1[2] = v55;
        *(v56 + v55) = 0;
      }
    }

    return appendStringInfo(a1, "},", v48, v49, v50, v51, v52, v53, a9);
  }

  return result;
}

uint64_t _outAlterOperatorStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "opername:{", a3, a4, a5, a6, a7, a8, v39);
    _outObjectWithArgs(v10, *(a2 + 8), v11, v12, v13, v14, v15, v16);
    v23 = *(v10 + 8);
    v24 = __OFSUB__(v23, 1);
    v25 = v23 - 1;
    if (v25 < 0 == v24)
    {
      v26 = *v10;
      if (*(*v10 + v25) == 44)
      {
        *(v10 + 8) = v25;
        *(v26 + v25) = 0;
      }
    }

    result = appendStringInfo(v10, "},", v17, v18, v19, v20, v21, v22, v40);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v10, "options:", a3, a4, a5, a6, a7, a8, v39);
    appendStringInfoChar(v10, 91);
    v33 = *(a2 + 16);
    if (v33 && *(v33 + 4) >= 1)
    {
      v34 = 0;
      v35 = 8;
      do
      {
        v36 = *(v33 + 16);
        v37 = *(v36 + 8 * v34);
        if (v37)
        {
          _outNode(v10, v37);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v36 + v35)
        {
          v38 = v36 + v35 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v38 = 1;
        }

        if (!v38)
        {
          appendStringInfoString(v10, ",");
        }

        ++v34;
        v35 += 8;
      }

      while (v34 < *(v33 + 4));
    }

    return appendStringInfo(v10, "],", v27, v28, v29, v30, v31, v32, a9);
  }

  return result;
}

uint64_t _outAlterTypeStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "typeName:", a3, a4, a5, a6, a7, a8, v35);
    appendStringInfoChar(v10, 91);
    v17 = *(a2 + 8);
    if (v17 && *(v17 + 4) >= 1)
    {
      v18 = 0;
      v19 = 8;
      do
      {
        v20 = *(v17 + 16);
        v21 = *(v20 + 8 * v18);
        if (v21)
        {
          _outNode(v10, v21);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v20 + v19)
        {
          v22 = v20 + v19 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v22 = 1;
        }

        if (!v22)
        {
          appendStringInfoString(v10, ",");
        }

        ++v18;
        v19 += 8;
      }

      while (v18 < *(v17 + 4));
    }

    result = appendStringInfo(v10, "],", v11, v12, v13, v14, v15, v16, v36);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v10, "options:", a3, a4, a5, a6, a7, a8, v35);
    appendStringInfoChar(v10, 91);
    v29 = *(a2 + 16);
    if (v29 && *(v29 + 4) >= 1)
    {
      v30 = 0;
      v31 = 8;
      do
      {
        v32 = *(v29 + 16);
        v33 = *(v32 + 8 * v30);
        if (v33)
        {
          _outNode(v10, v33);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v32 + v31)
        {
          v34 = v32 + v31 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v34 = 1;
        }

        if (!v34)
        {
          appendStringInfoString(v10, ",");
        }

        ++v30;
        v31 += 8;
      }

      while (v30 < *(v29 + 4));
    }

    return appendStringInfo(v10, "],", v23, v24, v25, v26, v27, v28, a9);
  }

  return result;
}

unint64_t _outDropOwnedStmt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "roles:", a3, a4, a5, a6, a7, a8, v26);
    appendStringInfoChar(a1, 91);
    v16 = *(a2 + 8);
    if (v16 && *(v16 + 4) >= 1)
    {
      v17 = 0;
      v18 = 8;
      do
      {
        v19 = *(v16 + 16);
        v20 = *(v19 + 8 * v17);
        if (v20)
        {
          _outNode(a1, v20);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v19 + v18)
        {
          v21 = v19 + v18 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          appendStringInfoString(a1, ",");
        }

        ++v17;
        v18 += 8;
      }

      while (v17 < *(v16 + 4));
    }

    appendStringInfo(a1, "],", v10, v11, v12, v13, v14, v15, v27);
  }

  v22 = *(a2 + 16);
  v23 = "DROP_CASCADE";
  if (v22 != 1)
  {
    LODWORD(v23) = 0;
  }

  if (v22)
  {
    LODWORD(v24) = v23;
  }

  else
  {
    v24 = "DROP_RESTRICT";
  }

  return appendStringInfo(a1, "behavior:%s,", a3, a4, a5, a6, a7, a8, v24);
}

uint64_t _outReassignOwnedStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "roles:", a3, a4, a5, a6, a7, a8, v39);
    appendStringInfoChar(v10, 91);
    v17 = *(a2 + 8);
    if (v17 && *(v17 + 4) >= 1)
    {
      v18 = 0;
      v19 = 8;
      do
      {
        v20 = *(v17 + 16);
        v21 = *(v20 + 8 * v18);
        if (v21)
        {
          _outNode(v10, v21);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v20 + v19)
        {
          v22 = v20 + v19 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v22 = 1;
        }

        if (!v22)
        {
          appendStringInfoString(v10, ",");
        }

        ++v18;
        v19 += 8;
      }

      while (v18 < *(v17 + 4));
    }

    result = appendStringInfo(v10, "],", v11, v12, v13, v14, v15, v16, v40);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v10, "newrole:{", a3, a4, a5, a6, a7, a8, v39);
    _outRoleSpec(v10, *(a2 + 16), v23, v24, v25, v26, v27, v28);
    v35 = v10[2];
    v36 = __OFSUB__(v35, 1);
    v37 = v35 - 1;
    if (v37 < 0 == v36)
    {
      v38 = *v10;
      if (*(*v10 + v37) == 44)
      {
        v10[2] = v37;
        *(v38 + v37) = 0;
      }
    }

    return appendStringInfo(v10, "},", v29, v30, v31, v32, v33, v34, a9);
  }

  return result;
}

uint64_t _outCompositeTypeStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "typevar:{", a3, a4, a5, a6, a7, a8, v39);
    _outRangeVar(v10, *(a2 + 8), v11, v12, v13, v14, v15, v16);
    v23 = *(v10 + 8);
    v24 = __OFSUB__(v23, 1);
    v25 = v23 - 1;
    if (v25 < 0 == v24)
    {
      v26 = *v10;
      if (*(*v10 + v25) == 44)
      {
        *(v10 + 8) = v25;
        *(v26 + v25) = 0;
      }
    }

    result = appendStringInfo(v10, "},", v17, v18, v19, v20, v21, v22, v40);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v10, "coldeflist:", a3, a4, a5, a6, a7, a8, v39);
    appendStringInfoChar(v10, 91);
    v33 = *(a2 + 16);
    if (v33 && *(v33 + 4) >= 1)
    {
      v34 = 0;
      v35 = 8;
      do
      {
        v36 = *(v33 + 16);
        v37 = *(v36 + 8 * v34);
        if (v37)
        {
          _outNode(v10, v37);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v36 + v35)
        {
          v38 = v36 + v35 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v38 = 1;
        }

        if (!v38)
        {
          appendStringInfoString(v10, ",");
        }

        ++v34;
        v35 += 8;
      }

      while (v34 < *(v33 + 4));
    }

    return appendStringInfo(v10, "],", v27, v28, v29, v30, v31, v32, a9);
  }

  return result;
}

uint64_t _outCreateEnumStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "typeName:", a3, a4, a5, a6, a7, a8, v35);
    appendStringInfoChar(v10, 91);
    v17 = *(a2 + 8);
    if (v17 && *(v17 + 4) >= 1)
    {
      v18 = 0;
      v19 = 8;
      do
      {
        v20 = *(v17 + 16);
        v21 = *(v20 + 8 * v18);
        if (v21)
        {
          _outNode(v10, v21);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v20 + v19)
        {
          v22 = v20 + v19 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v22 = 1;
        }

        if (!v22)
        {
          appendStringInfoString(v10, ",");
        }

        ++v18;
        v19 += 8;
      }

      while (v18 < *(v17 + 4));
    }

    result = appendStringInfo(v10, "],", v11, v12, v13, v14, v15, v16, v36);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v10, "vals:", a3, a4, a5, a6, a7, a8, v35);
    appendStringInfoChar(v10, 91);
    v29 = *(a2 + 16);
    if (v29 && *(v29 + 4) >= 1)
    {
      v30 = 0;
      v31 = 8;
      do
      {
        v32 = *(v29 + 16);
        v33 = *(v32 + 8 * v30);
        if (v33)
        {
          _outNode(v10, v33);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v32 + v31)
        {
          v34 = v32 + v31 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v34 = 1;
        }

        if (!v34)
        {
          appendStringInfoString(v10, ",");
        }

        ++v30;
        v31 += 8;
      }

      while (v30 < *(v29 + 4));
    }

    return appendStringInfo(v10, "],", v23, v24, v25, v26, v27, v28, a9);
  }

  return result;
}

uint64_t _outCreateRangeStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "typeName:", a3, a4, a5, a6, a7, a8, v35);
    appendStringInfoChar(v10, 91);
    v17 = *(a2 + 8);
    if (v17 && *(v17 + 4) >= 1)
    {
      v18 = 0;
      v19 = 8;
      do
      {
        v20 = *(v17 + 16);
        v21 = *(v20 + 8 * v18);
        if (v21)
        {
          _outNode(v10, v21);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v20 + v19)
        {
          v22 = v20 + v19 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v22 = 1;
        }

        if (!v22)
        {
          appendStringInfoString(v10, ",");
        }

        ++v18;
        v19 += 8;
      }

      while (v18 < *(v17 + 4));
    }

    result = appendStringInfo(v10, "],", v11, v12, v13, v14, v15, v16, v36);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v10, "params:", a3, a4, a5, a6, a7, a8, v35);
    appendStringInfoChar(v10, 91);
    v29 = *(a2 + 16);
    if (v29 && *(v29 + 4) >= 1)
    {
      v30 = 0;
      v31 = 8;
      do
      {
        v32 = *(v29 + 16);
        v33 = *(v32 + 8 * v30);
        if (v33)
        {
          _outNode(v10, v33);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v32 + v31)
        {
          v34 = v32 + v31 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v34 = 1;
        }

        if (!v34)
        {
          appendStringInfoString(v10, ",");
        }

        ++v30;
        v31 += 8;
      }

      while (v30 < *(v29 + 4));
    }

    return appendStringInfo(v10, "],", v23, v24, v25, v26, v27, v28, a9);
  }

  return result;
}

uint64_t _outAlterEnumStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "typeName:", a3, a4, a5, a6, a7, a8, v58);
    appendStringInfoChar(v9, 91);
    v16 = *(a2 + 8);
    if (v16 && *(v16 + 4) >= 1)
    {
      v17 = 0;
      v18 = 8;
      do
      {
        v19 = *(v16 + 16);
        v20 = *(v19 + 8 * v17);
        if (v20)
        {
          _outNode(v9, v20);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v19 + v18)
        {
          v21 = v19 + v18 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          appendStringInfoString(v9, ",");
        }

        ++v17;
        v18 += 8;
      }

      while (v17 < *(v16 + 4));
    }

    result = appendStringInfo(v9, "],", v10, v11, v12, v13, v14, v15, v59);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v9, "oldVal:", a3, a4, a5, a6, a7, a8, v58);
    _outToken(v9, *(a2 + 16), v22, v23, v24, v25, v26, v27);
    result = appendStringInfo(v9, ",", v28, v29, v30, v31, v32, v33, v60);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v9, "newVal:", a3, a4, a5, a6, a7, a8, v58);
    _outToken(v9, *(a2 + 24), v34, v35, v36, v37, v38, v39);
    result = appendStringInfo(v9, ",", v40, v41, v42, v43, v44, v45, v61);
  }

  if (*(a2 + 32))
  {
    appendStringInfo(v9, "newValNeighbor:", a3, a4, a5, a6, a7, a8, v58);
    _outToken(v9, *(a2 + 32), v46, v47, v48, v49, v50, v51);
    result = appendStringInfo(v9, ",", v52, v53, v54, v55, v56, v57, v62);
  }

  if (*(a2 + 40) == 1)
  {
    result = appendStringInfo(v9, "newValIsAfter:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  if (*(a2 + 41) == 1)
  {
    return appendStringInfo(v9, "skipIfNewValExists:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  return result;
}

uint64_t _outAlterTSDictionaryStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "dictname:", a3, a4, a5, a6, a7, a8, v35);
    appendStringInfoChar(v10, 91);
    v17 = *(a2 + 8);
    if (v17 && *(v17 + 4) >= 1)
    {
      v18 = 0;
      v19 = 8;
      do
      {
        v20 = *(v17 + 16);
        v21 = *(v20 + 8 * v18);
        if (v21)
        {
          _outNode(v10, v21);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v20 + v19)
        {
          v22 = v20 + v19 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v22 = 1;
        }

        if (!v22)
        {
          appendStringInfoString(v10, ",");
        }

        ++v18;
        v19 += 8;
      }

      while (v18 < *(v17 + 4));
    }

    result = appendStringInfo(v10, "],", v11, v12, v13, v14, v15, v16, v36);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v10, "options:", a3, a4, a5, a6, a7, a8, v35);
    appendStringInfoChar(v10, 91);
    v29 = *(a2 + 16);
    if (v29 && *(v29 + 4) >= 1)
    {
      v30 = 0;
      v31 = 8;
      do
      {
        v32 = *(v29 + 16);
        v33 = *(v32 + 8 * v30);
        if (v33)
        {
          _outNode(v10, v33);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v32 + v31)
        {
          v34 = v32 + v31 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v34 = 1;
        }

        if (!v34)
        {
          appendStringInfoString(v10, ",");
        }

        ++v30;
        v31 += 8;
      }

      while (v30 < *(v29 + 4));
    }

    return appendStringInfo(v10, "],", v23, v24, v25, v26, v27, v28, a9);
  }

  return result;
}

unint64_t _outAlterTSConfigurationStmt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a2 + 4);
  if (v10 > 4)
  {
    LODWORD(v11) = 0;
  }

  else
  {
    v11 = (&off_2797B72A8)[v10];
  }

  result = appendStringInfo(a1, "kind:%s,", a3, a4, a5, a6, a7, a8, v11);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "cfgname:", v13, v14, v15, v16, v17, v18, v55);
    appendStringInfoChar(a1, 91);
    v25 = *(a2 + 8);
    if (v25 && *(v25 + 4) >= 1)
    {
      v26 = 0;
      v27 = 8;
      do
      {
        v28 = *(v25 + 16);
        v29 = *(v28 + 8 * v26);
        if (v29)
        {
          _outNode(a1, v29);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v28 + v27)
        {
          v30 = v28 + v27 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v30 = 1;
        }

        if (!v30)
        {
          appendStringInfoString(a1, ",");
        }

        ++v26;
        v27 += 8;
      }

      while (v26 < *(v25 + 4));
    }

    result = appendStringInfo(a1, "],", v19, v20, v21, v22, v23, v24, v56);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "tokentype:", v13, v14, v15, v16, v17, v18, v55);
    appendStringInfoChar(a1, 91);
    v37 = *(a2 + 16);
    if (v37 && *(v37 + 4) >= 1)
    {
      v38 = 0;
      v39 = 8;
      do
      {
        v40 = *(v37 + 16);
        v41 = *(v40 + 8 * v38);
        if (v41)
        {
          _outNode(a1, v41);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v40 + v39)
        {
          v42 = v40 + v39 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v42 = 1;
        }

        if (!v42)
        {
          appendStringInfoString(a1, ",");
        }

        ++v38;
        v39 += 8;
      }

      while (v38 < *(v37 + 4));
    }

    result = appendStringInfo(a1, "],", v31, v32, v33, v34, v35, v36, v57);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "dicts:", v13, v14, v15, v16, v17, v18, v55);
    appendStringInfoChar(a1, 91);
    v49 = *(a2 + 24);
    if (v49 && *(v49 + 4) >= 1)
    {
      v50 = 0;
      v51 = 8;
      do
      {
        v52 = *(v49 + 16);
        v53 = *(v52 + 8 * v50);
        if (v53)
        {
          _outNode(a1, v53);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v52 + v51)
        {
          v54 = v52 + v51 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v54 = 1;
        }

        if (!v54)
        {
          appendStringInfoString(a1, ",");
        }

        ++v50;
        v51 += 8;
      }

      while (v50 < *(v49 + 4));
    }

    result = appendStringInfo(a1, "],", v43, v44, v45, v46, v47, v48, v58);
  }

  if (*(a2 + 32) == 1)
  {
    result = appendStringInfo(a1, "override:%s,", v13, v14, v15, v16, v17, v18, "true");
    if (*(a2 + 33) != 1)
    {
LABEL_48:
      if (*(a2 + 34) != 1)
      {
        return result;
      }

      return appendStringInfo(a1, "missing_ok:%s,", v13, v14, v15, v16, v17, v18, "true");
    }
  }

  else if (*(a2 + 33) != 1)
  {
    goto LABEL_48;
  }

  result = appendStringInfo(a1, "replace:%s,", v13, v14, v15, v16, v17, v18, "true");
  if (*(a2 + 34) != 1)
  {
    return result;
  }

  return appendStringInfo(a1, "missing_ok:%s,", v13, v14, v15, v16, v17, v18, "true");
}

uint64_t _outCreateFdwStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "fdwname:", a3, a4, a5, a6, a7, a8, v47);
    _outToken(v10, *(a2 + 8), v11, v12, v13, v14, v15, v16);
    result = appendStringInfo(v10, ",", v17, v18, v19, v20, v21, v22, v48);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v10, "func_options:", a3, a4, a5, a6, a7, a8, v47);
    appendStringInfoChar(v10, 91);
    v29 = *(a2 + 16);
    if (v29 && *(v29 + 4) >= 1)
    {
      v30 = 0;
      v31 = 8;
      do
      {
        v32 = *(v29 + 16);
        v33 = *(v32 + 8 * v30);
        if (v33)
        {
          _outNode(v10, v33);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v32 + v31)
        {
          v34 = v32 + v31 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v34 = 1;
        }

        if (!v34)
        {
          appendStringInfoString(v10, ",");
        }

        ++v30;
        v31 += 8;
      }

      while (v30 < *(v29 + 4));
    }

    result = appendStringInfo(v10, "],", v23, v24, v25, v26, v27, v28, v49);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v10, "options:", a3, a4, a5, a6, a7, a8, v47);
    appendStringInfoChar(v10, 91);
    v41 = *(a2 + 24);
    if (v41 && *(v41 + 4) >= 1)
    {
      v42 = 0;
      v43 = 8;
      do
      {
        v44 = *(v41 + 16);
        v45 = *(v44 + 8 * v42);
        if (v45)
        {
          _outNode(v10, v45);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v44 + v43)
        {
          v46 = v44 + v43 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v46 = 1;
        }

        if (!v46)
        {
          appendStringInfoString(v10, ",");
        }

        ++v42;
        v43 += 8;
      }

      while (v42 < *(v41 + 4));
    }

    return appendStringInfo(v10, "],", v35, v36, v37, v38, v39, v40, a9);
  }

  return result;
}

uint64_t _outCreateForeignServerStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "servername:", a3, a4, a5, a6, a7, a8, v71);
    _outToken(v10, *(a2 + 8), v11, v12, v13, v14, v15, v16);
    result = appendStringInfo(v10, ",", v17, v18, v19, v20, v21, v22, v72);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v10, "servertype:", a3, a4, a5, a6, a7, a8, v71);
    _outToken(v10, *(a2 + 16), v23, v24, v25, v26, v27, v28);
    result = appendStringInfo(v10, ",", v29, v30, v31, v32, v33, v34, v73);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v10, "version:", a3, a4, a5, a6, a7, a8, v71);
    _outToken(v10, *(a2 + 24), v35, v36, v37, v38, v39, v40);
    result = appendStringInfo(v10, ",", v41, v42, v43, v44, v45, v46, v74);
  }

  if (*(a2 + 32))
  {
    appendStringInfo(v10, "fdwname:", a3, a4, a5, a6, a7, a8, v71);
    _outToken(v10, *(a2 + 32), v47, v48, v49, v50, v51, v52);
    result = appendStringInfo(v10, ",", v53, v54, v55, v56, v57, v58, v75);
  }

  if (*(a2 + 40) == 1)
  {
    result = appendStringInfo(v10, "if_not_exists:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  if (*(a2 + 48))
  {
    appendStringInfo(v10, "options:", a3, a4, a5, a6, a7, a8, v71);
    appendStringInfoChar(v10, 91);
    v65 = *(a2 + 48);
    if (v65 && *(v65 + 4) >= 1)
    {
      v66 = 0;
      v67 = 8;
      do
      {
        v68 = *(v65 + 16);
        v69 = *(v68 + 8 * v66);
        if (v69)
        {
          _outNode(v10, v69);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v68 + v67)
        {
          v70 = v68 + v67 >= (*(*(a2 + 48) + 16) + 8 * *(*(a2 + 48) + 4));
        }

        else
        {
          v70 = 1;
        }

        if (!v70)
        {
          appendStringInfoString(v10, ",");
        }

        ++v66;
        v67 += 8;
      }

      while (v66 < *(v65 + 4));
    }

    return appendStringInfo(v10, "],", v59, v60, v61, v62, v63, v64, a9);
  }

  return result;
}

uint64_t _outAlterForeignServerStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "servername:", a3, a4, a5, a6, a7, a8, v46);
    _outToken(v9, *(a2 + 8), v10, v11, v12, v13, v14, v15);
    result = appendStringInfo(v9, ",", v16, v17, v18, v19, v20, v21, v47);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v9, "version:", a3, a4, a5, a6, a7, a8, v46);
    _outToken(v9, *(a2 + 16), v22, v23, v24, v25, v26, v27);
    result = appendStringInfo(v9, ",", v28, v29, v30, v31, v32, v33, v48);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v9, "options:", a3, a4, a5, a6, a7, a8, v46);
    appendStringInfoChar(v9, 91);
    v40 = *(a2 + 24);
    if (v40 && *(v40 + 4) >= 1)
    {
      v41 = 0;
      v42 = 8;
      do
      {
        v43 = *(v40 + 16);
        v44 = *(v43 + 8 * v41);
        if (v44)
        {
          _outNode(v9, v44);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v43 + v42)
        {
          v45 = v43 + v42 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v45 = 1;
        }

        if (!v45)
        {
          appendStringInfoString(v9, ",");
        }

        ++v41;
        v42 += 8;
      }

      while (v41 < *(v40 + 4));
    }

    result = appendStringInfo(v9, "],", v34, v35, v36, v37, v38, v39, v49);
  }

  if (*(a2 + 32) == 1)
  {
    return appendStringInfo(v9, "has_version:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  return result;
}

uint64_t _outCreateUserMappingStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "user:{", a3, a4, a5, a6, a7, a8, v51);
    _outRoleSpec(v10, *(a2 + 8), v11, v12, v13, v14, v15, v16);
    v23 = v10[2];
    v24 = __OFSUB__(v23, 1);
    v25 = v23 - 1;
    if (v25 < 0 == v24)
    {
      v26 = *v10;
      if (*(*v10 + v25) == 44)
      {
        v10[2] = v25;
        *(v26 + v25) = 0;
      }
    }

    result = appendStringInfo(v10, "},", v17, v18, v19, v20, v21, v22, v52);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v10, "servername:", a3, a4, a5, a6, a7, a8, v51);
    _outToken(v10, *(a2 + 16), v27, v28, v29, v30, v31, v32);
    result = appendStringInfo(v10, ",", v33, v34, v35, v36, v37, v38, v53);
  }

  if (*(a2 + 24) == 1)
  {
    result = appendStringInfo(v10, "if_not_exists:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  if (*(a2 + 32))
  {
    appendStringInfo(v10, "options:", a3, a4, a5, a6, a7, a8, v51);
    appendStringInfoChar(v10, 91);
    v45 = *(a2 + 32);
    if (v45 && *(v45 + 4) >= 1)
    {
      v46 = 0;
      v47 = 8;
      do
      {
        v48 = *(v45 + 16);
        v49 = *(v48 + 8 * v46);
        if (v49)
        {
          _outNode(v10, v49);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v48 + v47)
        {
          v50 = v48 + v47 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v50 = 1;
        }

        if (!v50)
        {
          appendStringInfoString(v10, ",");
        }

        ++v46;
        v47 += 8;
      }

      while (v46 < *(v45 + 4));
    }

    return appendStringInfo(v10, "],", v39, v40, v41, v42, v43, v44, a9);
  }

  return result;
}

uint64_t _outAlterUserMappingStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "user:{", a3, a4, a5, a6, a7, a8, v51);
    _outRoleSpec(v10, *(a2 + 8), v11, v12, v13, v14, v15, v16);
    v23 = v10[2];
    v24 = __OFSUB__(v23, 1);
    v25 = v23 - 1;
    if (v25 < 0 == v24)
    {
      v26 = *v10;
      if (*(*v10 + v25) == 44)
      {
        v10[2] = v25;
        *(v26 + v25) = 0;
      }
    }

    result = appendStringInfo(v10, "},", v17, v18, v19, v20, v21, v22, v52);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v10, "servername:", a3, a4, a5, a6, a7, a8, v51);
    _outToken(v10, *(a2 + 16), v27, v28, v29, v30, v31, v32);
    result = appendStringInfo(v10, ",", v33, v34, v35, v36, v37, v38, v53);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v10, "options:", a3, a4, a5, a6, a7, a8, v51);
    appendStringInfoChar(v10, 91);
    v45 = *(a2 + 24);
    if (v45 && *(v45 + 4) >= 1)
    {
      v46 = 0;
      v47 = 8;
      do
      {
        v48 = *(v45 + 16);
        v49 = *(v48 + 8 * v46);
        if (v49)
        {
          _outNode(v10, v49);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v48 + v47)
        {
          v50 = v48 + v47 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v50 = 1;
        }

        if (!v50)
        {
          appendStringInfoString(v10, ",");
        }

        ++v46;
        v47 += 8;
      }

      while (v46 < *(v45 + 4));
    }

    return appendStringInfo(v10, "],", v39, v40, v41, v42, v43, v44, a9);
  }

  return result;
}

uint64_t _outDropUserMappingStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "user:{", a3, a4, a5, a6, a7, a8, v38);
    _outRoleSpec(v9, *(a2 + 8), v10, v11, v12, v13, v14, v15);
    v22 = v9[2];
    v23 = __OFSUB__(v22, 1);
    v24 = v22 - 1;
    if (v24 < 0 == v23)
    {
      v25 = *v9;
      if (*(*v9 + v24) == 44)
      {
        v9[2] = v24;
        *(v25 + v24) = 0;
      }
    }

    result = appendStringInfo(v9, "},", v16, v17, v18, v19, v20, v21, v39);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v9, "servername:", a3, a4, a5, a6, a7, a8, v38);
    _outToken(v9, *(a2 + 16), v26, v27, v28, v29, v30, v31);
    result = appendStringInfo(v9, ",", v32, v33, v34, v35, v36, v37, v40);
  }

  if (*(a2 + 24) == 1)
  {
    return appendStringInfo(v9, "missing_ok:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  return result;
}

uint64_t _outAlterTableSpaceOptionsStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "tablespacename:", a3, a4, a5, a6, a7, a8, v34);
    _outToken(v9, *(a2 + 8), v10, v11, v12, v13, v14, v15);
    result = appendStringInfo(v9, ",", v16, v17, v18, v19, v20, v21, v35);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v9, "options:", a3, a4, a5, a6, a7, a8, v34);
    appendStringInfoChar(v9, 91);
    v28 = *(a2 + 16);
    if (v28 && *(v28 + 4) >= 1)
    {
      v29 = 0;
      v30 = 8;
      do
      {
        v31 = *(v28 + 16);
        v32 = *(v31 + 8 * v29);
        if (v32)
        {
          _outNode(v9, v32);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v31 + v30)
        {
          v33 = v31 + v30 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v33 = 1;
        }

        if (!v33)
        {
          appendStringInfoString(v9, ",");
        }

        ++v29;
        v30 += 8;
      }

      while (v29 < *(v28 + 4));
    }

    result = appendStringInfo(v9, "],", v22, v23, v24, v25, v26, v27, v36);
  }

  if (*(a2 + 24) == 1)
  {
    return appendStringInfo(v9, "isReset:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  return result;
}

unint64_t _outAlterTableMoveAllStmt(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "orig_tablespacename:", a3, a4, a5, a6, a7, a8, v55);
    _outToken(a1, *(a2 + 8), v10, v11, v12, v13, v14, v15);
    appendStringInfo(a1, ",", v16, v17, v18, v19, v20, v21, v56);
  }

  v22 = *(a2 + 16);
  if (v22 > 0x31)
  {
    LODWORD(v23) = 0;
  }

  else
  {
    v23 = (&off_2797B72E8)[v22];
  }

  result = appendStringInfo(a1, "objtype:%s,", a3, a4, a5, a6, a7, a8, v23);
  if (*(a2 + 24))
  {
    appendStringInfo(a1, "roles:", v25, v26, v27, v28, v29, v30, v57);
    appendStringInfoChar(a1, 91);
    v37 = *(a2 + 24);
    if (v37 && *(v37 + 4) >= 1)
    {
      v38 = 0;
      v39 = 8;
      do
      {
        v40 = *(v37 + 16);
        v41 = *(v40 + 8 * v38);
        if (v41)
        {
          _outNode(a1, v41);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v40 + v39)
        {
          v42 = v40 + v39 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v42 = 1;
        }

        if (!v42)
        {
          appendStringInfoString(a1, ",");
        }

        ++v38;
        v39 += 8;
      }

      while (v38 < *(v37 + 4));
    }

    result = appendStringInfo(a1, "],", v31, v32, v33, v34, v35, v36, v58);
  }

  if (*(a2 + 32))
  {
    appendStringInfo(a1, "new_tablespacename:", v25, v26, v27, v28, v29, v30, v57);
    _outToken(a1, *(a2 + 32), v43, v44, v45, v46, v47, v48);
    result = appendStringInfo(a1, ",", v49, v50, v51, v52, v53, v54, v59);
  }

  if (*(a2 + 40) == 1)
  {
    return appendStringInfo(a1, "nowait:%s,", v25, v26, v27, v28, v29, v30, "true");
  }

  return result;
}

unint64_t _outSecLabelStmt(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v11 = *(a2 + 4);
  if (v11 > 0x31)
  {
    LODWORD(v12) = 0;
  }

  else
  {
    v12 = (&off_2797B72E8)[v11];
  }

  result = appendStringInfo(a1, "objtype:%s,", a3, a4, a5, a6, a7, a8, v12);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "object:", v14, v15, v16, v17, v18, v19, v50);
    _outNode(a1, *(a2 + 8));
    result = appendStringInfo(a1, ",", v20, v21, v22, v23, v24, v25, v51);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "provider:", v14, v15, v16, v17, v18, v19, v50);
    _outToken(a1, *(a2 + 16), v26, v27, v28, v29, v30, v31);
    result = appendStringInfo(a1, ",", v32, v33, v34, v35, v36, v37, v52);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "label:", v14, v15, v16, v17, v18, v19, v50);
    _outToken(a1, *(a2 + 24), v38, v39, v40, v41, v42, v43);

    return appendStringInfo(a1, ",", v44, v45, v46, v47, v48, v49, a9);
  }

  return result;
}

unint64_t _outCreateForeignTableStmt(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  appendStringInfo(a1, "base:{", a3, a4, a5, a6, a7, a8, v58);
  _outCreateStmt(a1, a2, v11, v12, v13, v14, v15, v16);
  v23 = a1[2];
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v25 < 0 == v24)
  {
    v26 = *a1;
    if (*(*a1 + v25) == 44)
    {
      a1[2] = v25;
      *(v26 + v25) = 0;
    }
  }

  result = appendStringInfo(a1, "},", v17, v18, v19, v20, v21, v22, v59);
  if (*(a2 + 104))
  {
    appendStringInfo(a1, "servername:", v28, v29, v30, v31, v32, v33, v60);
    _outToken(a1, *(a2 + 104), v34, v35, v36, v37, v38, v39);
    result = appendStringInfo(a1, ",", v40, v41, v42, v43, v44, v45, v61);
  }

  if (*(a2 + 112))
  {
    appendStringInfo(a1, "options:", v28, v29, v30, v31, v32, v33, v60);
    appendStringInfoChar(a1, 91);
    v52 = *(a2 + 112);
    if (v52 && *(v52 + 4) >= 1)
    {
      v53 = 0;
      v54 = 8;
      do
      {
        v55 = *(v52 + 16);
        v56 = *(v55 + 8 * v53);
        if (v56)
        {
          _outNode(a1, v56);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v55 + v54)
        {
          v57 = v55 + v54 >= (*(*(a2 + 112) + 16) + 8 * *(*(a2 + 112) + 4));
        }

        else
        {
          v57 = 1;
        }

        if (!v57)
        {
          appendStringInfoString(a1, ",");
        }

        ++v53;
        v54 += 8;
      }

      while (v53 < *(v52 + 4));
    }

    return appendStringInfo(a1, "],", v46, v47, v48, v49, v50, v51, a9);
  }

  return result;
}

unint64_t _outImportForeignSchemaStmt(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "server_name:", a3, a4, a5, a6, a7, a8, v80);
    _outToken(a1, *(a2 + 8), v11, v12, v13, v14, v15, v16);
    appendStringInfo(a1, ",", v17, v18, v19, v20, v21, v22, v81);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "remote_schema:", a3, a4, a5, a6, a7, a8, v80);
    _outToken(a1, *(a2 + 16), v23, v24, v25, v26, v27, v28);
    appendStringInfo(a1, ",", v29, v30, v31, v32, v33, v34, v82);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "local_schema:", a3, a4, a5, a6, a7, a8, v80);
    _outToken(a1, *(a2 + 24), v35, v36, v37, v38, v39, v40);
    appendStringInfo(a1, ",", v41, v42, v43, v44, v45, v46, v83);
  }

  v47 = *(a2 + 32);
  if (v47 > 2)
  {
    LODWORD(v48) = 0;
  }

  else
  {
    v48 = (&off_2797B72D0)[v47];
  }

  result = appendStringInfo(a1, "list_type:%s,", a3, a4, a5, a6, a7, a8, v48);
  if (*(a2 + 40))
  {
    appendStringInfo(a1, "table_list:", v50, v51, v52, v53, v54, v55, v84);
    appendStringInfoChar(a1, 91);
    v62 = *(a2 + 40);
    if (v62 && *(v62 + 4) >= 1)
    {
      v63 = 0;
      v64 = 8;
      do
      {
        v65 = *(v62 + 16);
        v66 = *(v65 + 8 * v63);
        if (v66)
        {
          _outNode(a1, v66);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v65 + v64)
        {
          v67 = v65 + v64 >= (*(*(a2 + 40) + 16) + 8 * *(*(a2 + 40) + 4));
        }

        else
        {
          v67 = 1;
        }

        if (!v67)
        {
          appendStringInfoString(a1, ",");
        }

        ++v63;
        v64 += 8;
      }

      while (v63 < *(v62 + 4));
    }

    result = appendStringInfo(a1, "],", v56, v57, v58, v59, v60, v61, v85);
  }

  if (*(a2 + 48))
  {
    appendStringInfo(a1, "options:", v50, v51, v52, v53, v54, v55, v84);
    appendStringInfoChar(a1, 91);
    v74 = *(a2 + 48);
    if (v74 && *(v74 + 4) >= 1)
    {
      v75 = 0;
      v76 = 8;
      do
      {
        v77 = *(v74 + 16);
        v78 = *(v77 + 8 * v75);
        if (v78)
        {
          _outNode(a1, v78);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v77 + v76)
        {
          v79 = v77 + v76 >= (*(*(a2 + 48) + 16) + 8 * *(*(a2 + 48) + 4));
        }

        else
        {
          v79 = 1;
        }

        if (!v79)
        {
          appendStringInfoString(a1, ",");
        }

        ++v75;
        v76 += 8;
      }

      while (v75 < *(v74 + 4));
    }

    return appendStringInfo(a1, "],", v68, v69, v70, v71, v72, v73, a9);
  }

  return result;
}

uint64_t _outCreateExtensionStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "extname:", a3, a4, a5, a6, a7, a8, v35);
    _outToken(v10, *(a2 + 8), v11, v12, v13, v14, v15, v16);
    result = appendStringInfo(v10, ",", v17, v18, v19, v20, v21, v22, v36);
  }

  if (*(a2 + 16) == 1)
  {
    result = appendStringInfo(v10, "if_not_exists:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v10, "options:", a3, a4, a5, a6, a7, a8, v35);
    appendStringInfoChar(v10, 91);
    v29 = *(a2 + 24);
    if (v29 && *(v29 + 4) >= 1)
    {
      v30 = 0;
      v31 = 8;
      do
      {
        v32 = *(v29 + 16);
        v33 = *(v32 + 8 * v30);
        if (v33)
        {
          _outNode(v10, v33);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v32 + v31)
        {
          v34 = v32 + v31 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v34 = 1;
        }

        if (!v34)
        {
          appendStringInfoString(v10, ",");
        }

        ++v30;
        v31 += 8;
      }

      while (v30 < *(v29 + 4));
    }

    return appendStringInfo(v10, "],", v23, v24, v25, v26, v27, v28, a9);
  }

  return result;
}

uint64_t _outAlterExtensionStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "extname:", a3, a4, a5, a6, a7, a8, v35);
    _outToken(v10, *(a2 + 8), v11, v12, v13, v14, v15, v16);
    result = appendStringInfo(v10, ",", v17, v18, v19, v20, v21, v22, v36);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v10, "options:", a3, a4, a5, a6, a7, a8, v35);
    appendStringInfoChar(v10, 91);
    v29 = *(a2 + 16);
    if (v29 && *(v29 + 4) >= 1)
    {
      v30 = 0;
      v31 = 8;
      do
      {
        v32 = *(v29 + 16);
        v33 = *(v32 + 8 * v30);
        if (v33)
        {
          _outNode(v10, v33);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v32 + v31)
        {
          v34 = v32 + v31 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v34 = 1;
        }

        if (!v34)
        {
          appendStringInfoString(v10, ",");
        }

        ++v30;
        v31 += 8;
      }

      while (v30 < *(v29 + 4));
    }

    return appendStringInfo(v10, "],", v23, v24, v25, v26, v27, v28, a9);
  }

  return result;
}

unint64_t _outAlterExtensionContentsStmt(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "extname:", a3, a4, a5, a6, a7, a8, v38);
    _outToken(a1, *(a2 + 8), v11, v12, v13, v14, v15, v16);
    appendStringInfo(a1, ",", v17, v18, v19, v20, v21, v22, v39);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "action:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 16));
  }

  v23 = *(a2 + 20);
  if (v23 > 0x31)
  {
    LODWORD(v24) = 0;
  }

  else
  {
    v24 = (&off_2797B72E8)[v23];
  }

  result = appendStringInfo(a1, "objtype:%s,", a3, a4, a5, a6, a7, a8, v24);
  if (*(a2 + 24))
  {
    appendStringInfo(a1, "object:", v26, v27, v28, v29, v30, v31, v40);
    _outNode(a1, *(a2 + 24));

    return appendStringInfo(a1, ",", v32, v33, v34, v35, v36, v37, a9);
  }

  return result;
}

uint64_t _outCreateEventTrigStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "trigname:", a3, a4, a5, a6, a7, a8, v59);
    _outToken(v10, *(a2 + 8), v11, v12, v13, v14, v15, v16);
    result = appendStringInfo(v10, ",", v17, v18, v19, v20, v21, v22, v60);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v10, "eventname:", a3, a4, a5, a6, a7, a8, v59);
    _outToken(v10, *(a2 + 16), v23, v24, v25, v26, v27, v28);
    result = appendStringInfo(v10, ",", v29, v30, v31, v32, v33, v34, v61);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v10, "whenclause:", a3, a4, a5, a6, a7, a8, v59);
    appendStringInfoChar(v10, 91);
    v41 = *(a2 + 24);
    if (v41 && *(v41 + 4) >= 1)
    {
      v42 = 0;
      v43 = 8;
      do
      {
        v44 = *(v41 + 16);
        v45 = *(v44 + 8 * v42);
        if (v45)
        {
          _outNode(v10, v45);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v44 + v43)
        {
          v46 = v44 + v43 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v46 = 1;
        }

        if (!v46)
        {
          appendStringInfoString(v10, ",");
        }

        ++v42;
        v43 += 8;
      }

      while (v42 < *(v41 + 4));
    }

    result = appendStringInfo(v10, "],", v35, v36, v37, v38, v39, v40, v62);
  }

  if (*(a2 + 32))
  {
    appendStringInfo(v10, "funcname:", a3, a4, a5, a6, a7, a8, v59);
    appendStringInfoChar(v10, 91);
    v53 = *(a2 + 32);
    if (v53 && *(v53 + 4) >= 1)
    {
      v54 = 0;
      v55 = 8;
      do
      {
        v56 = *(v53 + 16);
        v57 = *(v56 + 8 * v54);
        if (v57)
        {
          _outNode(v10, v57);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v56 + v55)
        {
          v58 = v56 + v55 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v58 = 1;
        }

        if (!v58)
        {
          appendStringInfoString(v10, ",");
        }

        ++v54;
        v55 += 8;
      }

      while (v54 < *(v53 + 4));
    }

    return appendStringInfo(v10, "],", v47, v48, v49, v50, v51, v52, a9);
  }

  return result;
}

uint64_t _outAlterEventTrigStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "trigname:", a3, a4, a5, a6, a7, a8, v22);
    _outToken(v9, *(a2 + 8), v10, v11, v12, v13, v14, v15);
    result = appendStringInfo(v9, ",", v16, v17, v18, v19, v20, v21, v23);
  }

  if (*(a2 + 16))
  {
    return appendStringInfo(v9, "tgenabled:%c,", a3, a4, a5, a6, a7, a8, *(a2 + 16));
  }

  return result;
}

uint64_t _outRefreshMatViewStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (*(a2 + 4) != 1)
  {
    if (*(a2 + 5) != 1)
    {
      goto LABEL_3;
    }

LABEL_11:
    result = appendStringInfo(v10, "skipData:%s,", a3, a4, a5, a6, a7, a8, "true");
    if (!*(a2 + 8))
    {
      return result;
    }

    goto LABEL_4;
  }

  result = appendStringInfo(result, "concurrent:%s,", a3, a4, a5, a6, a7, a8, "true");
  if (*(a2 + 5) == 1)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (!*(a2 + 8))
  {
    return result;
  }

LABEL_4:
  appendStringInfo(v10, "relation:{", a3, a4, a5, a6, a7, a8, v27);
  _outRangeVar(v10, *(a2 + 8), v11, v12, v13, v14, v15, v16);
  v23 = *(v10 + 8);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v25 < 0 == v24)
  {
    v26 = *v10;
    if (*(*v10 + v25) == 44)
    {
      *(v10 + 8) = v25;
      *(v26 + v25) = 0;
    }
  }

  return appendStringInfo(v10, "},", v17, v18, v19, v20, v21, v22, a9);
}

uint64_t _outReplicaIdentityStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (*(a2 + 4))
  {
    result = appendStringInfo(result, "identity_type:%c,", a3, a4, a5, a6, a7, a8, *(a2 + 4));
  }

  if (*(a2 + 8))
  {
    appendStringInfo(v10, "name:", a3, a4, a5, a6, a7, a8, v23);
    _outToken(v10, *(a2 + 8), v11, v12, v13, v14, v15, v16);

    return appendStringInfo(v10, ",", v17, v18, v19, v20, v21, v22, a9);
  }

  return result;
}

unint64_t _outAlterSystemStmt(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if (*(a2 + 8))
  {
    v10 = result;
    appendStringInfo(result, "setstmt:{", a3, a4, a5, a6, a7, a8, v27);
    _outVariableSetStmt(v10, *(a2 + 8), v11, v12, v13, v14, v15, v16);
    v23 = v10[2];
    v24 = __OFSUB__(v23, 1);
    v25 = v23 - 1;
    if (v25 < 0 == v24)
    {
      v26 = *v10;
      if (*(*v10 + v25) == 44)
      {
        v10[2] = v25;
        *(v26 + v25) = 0;
      }
    }

    return appendStringInfo(v10, "},", v17, v18, v19, v20, v21, v22, a9);
  }

  return result;
}

uint64_t _outCreatePolicyStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "policy_name:", a3, a4, a5, a6, a7, a8, v75);
    _outToken(v10, *(a2 + 8), v11, v12, v13, v14, v15, v16);
    result = appendStringInfo(v10, ",", v17, v18, v19, v20, v21, v22, v76);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v10, "table:{", a3, a4, a5, a6, a7, a8, v75);
    _outRangeVar(v10, *(a2 + 16), v23, v24, v25, v26, v27, v28);
    v35 = v10[2];
    v36 = __OFSUB__(v35, 1);
    v37 = v35 - 1;
    if (v37 < 0 == v36)
    {
      v38 = *v10;
      if (*(*v10 + v37) == 44)
      {
        v10[2] = v37;
        *(v38 + v37) = 0;
      }
    }

    result = appendStringInfo(v10, "},", v29, v30, v31, v32, v33, v34, v77);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v10, "cmd_name:", a3, a4, a5, a6, a7, a8, v75);
    _outToken(v10, *(a2 + 24), v39, v40, v41, v42, v43, v44);
    result = appendStringInfo(v10, ",", v45, v46, v47, v48, v49, v50, v78);
  }

  if (*(a2 + 32) == 1)
  {
    result = appendStringInfo(v10, "permissive:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  if (*(a2 + 40))
  {
    appendStringInfo(v10, "roles:", a3, a4, a5, a6, a7, a8, v75);
    appendStringInfoChar(v10, 91);
    v57 = *(a2 + 40);
    if (v57 && *(v57 + 4) >= 1)
    {
      v58 = 0;
      v59 = 8;
      do
      {
        v60 = *(v57 + 16);
        v61 = *(v60 + 8 * v58);
        if (v61)
        {
          _outNode(v10, v61);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v60 + v59)
        {
          v62 = v60 + v59 >= (*(*(a2 + 40) + 16) + 8 * *(*(a2 + 40) + 4));
        }

        else
        {
          v62 = 1;
        }

        if (!v62)
        {
          appendStringInfoString(v10, ",");
        }

        ++v58;
        v59 += 8;
      }

      while (v58 < *(v57 + 4));
    }

    result = appendStringInfo(v10, "],", v51, v52, v53, v54, v55, v56, v79);
  }

  if (*(a2 + 48))
  {
    appendStringInfo(v10, "qual:", a3, a4, a5, a6, a7, a8, v75);
    _outNode(v10, *(a2 + 48));
    result = appendStringInfo(v10, ",", v63, v64, v65, v66, v67, v68, v80);
  }

  if (*(a2 + 56))
  {
    appendStringInfo(v10, "with_check:", a3, a4, a5, a6, a7, a8, v75);
    _outNode(v10, *(a2 + 56));

    return appendStringInfo(v10, ",", v69, v70, v71, v72, v73, v74, a9);
  }

  return result;
}

uint64_t _outAlterPolicyStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "policy_name:", a3, a4, a5, a6, a7, a8, v63);
    _outToken(v10, *(a2 + 8), v11, v12, v13, v14, v15, v16);
    result = appendStringInfo(v10, ",", v17, v18, v19, v20, v21, v22, v64);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v10, "table:{", a3, a4, a5, a6, a7, a8, v63);
    _outRangeVar(v10, *(a2 + 16), v23, v24, v25, v26, v27, v28);
    v35 = v10[2];
    v36 = __OFSUB__(v35, 1);
    v37 = v35 - 1;
    if (v37 < 0 == v36)
    {
      v38 = *v10;
      if (*(*v10 + v37) == 44)
      {
        v10[2] = v37;
        *(v38 + v37) = 0;
      }
    }

    result = appendStringInfo(v10, "},", v29, v30, v31, v32, v33, v34, v65);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v10, "roles:", a3, a4, a5, a6, a7, a8, v63);
    appendStringInfoChar(v10, 91);
    v45 = *(a2 + 24);
    if (v45 && *(v45 + 4) >= 1)
    {
      v46 = 0;
      v47 = 8;
      do
      {
        v48 = *(v45 + 16);
        v49 = *(v48 + 8 * v46);
        if (v49)
        {
          _outNode(v10, v49);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v48 + v47)
        {
          v50 = v48 + v47 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v50 = 1;
        }

        if (!v50)
        {
          appendStringInfoString(v10, ",");
        }

        ++v46;
        v47 += 8;
      }

      while (v46 < *(v45 + 4));
    }

    result = appendStringInfo(v10, "],", v39, v40, v41, v42, v43, v44, v66);
  }

  if (*(a2 + 32))
  {
    appendStringInfo(v10, "qual:", a3, a4, a5, a6, a7, a8, v63);
    _outNode(v10, *(a2 + 32));
    result = appendStringInfo(v10, ",", v51, v52, v53, v54, v55, v56, v67);
  }

  if (*(a2 + 40))
  {
    appendStringInfo(v10, "with_check:", a3, a4, a5, a6, a7, a8, v63);
    _outNode(v10, *(a2 + 40));

    return appendStringInfo(v10, ",", v57, v58, v59, v60, v61, v62, a9);
  }

  return result;
}

uint64_t _outCreateTransformStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (*(a2 + 4) == 1)
  {
    result = appendStringInfo(result, "replace:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  if (*(a2 + 8))
  {
    appendStringInfo(v10, "type_name:{", a3, a4, a5, a6, a7, a8, v69);
    _outTypeName(v10, *(a2 + 8), v11, v12, v13, v14, v15, v16);
    v23 = v10[2];
    v24 = __OFSUB__(v23, 1);
    v25 = v23 - 1;
    if (v25 < 0 == v24)
    {
      v26 = *v10;
      if (*(*v10 + v25) == 44)
      {
        v10[2] = v25;
        *(v26 + v25) = 0;
      }
    }

    result = appendStringInfo(v10, "},", v17, v18, v19, v20, v21, v22, v70);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v10, "lang:", a3, a4, a5, a6, a7, a8, v69);
    _outToken(v10, *(a2 + 16), v27, v28, v29, v30, v31, v32);
    result = appendStringInfo(v10, ",", v33, v34, v35, v36, v37, v38, v71);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v10, "fromsql:{", a3, a4, a5, a6, a7, a8, v69);
    _outObjectWithArgs(v10, *(a2 + 24), v39, v40, v41, v42, v43, v44);
    v51 = v10[2];
    v24 = __OFSUB__(v51, 1);
    v52 = v51 - 1;
    if (v52 < 0 == v24)
    {
      v53 = *v10;
      if (*(*v10 + v52) == 44)
      {
        v10[2] = v52;
        *(v53 + v52) = 0;
      }
    }

    result = appendStringInfo(v10, "},", v45, v46, v47, v48, v49, v50, v72);
  }

  if (*(a2 + 32))
  {
    appendStringInfo(v10, "tosql:{", a3, a4, a5, a6, a7, a8, v69);
    _outObjectWithArgs(v10, *(a2 + 32), v54, v55, v56, v57, v58, v59);
    v66 = v10[2];
    v24 = __OFSUB__(v66, 1);
    v67 = v66 - 1;
    if (v67 < 0 == v24)
    {
      v68 = *v10;
      if (*(*v10 + v67) == 44)
      {
        v10[2] = v67;
        *(v68 + v67) = 0;
      }
    }

    return appendStringInfo(v10, "},", v60, v61, v62, v63, v64, v65, a9);
  }

  return result;
}

uint64_t _outCreateAmStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "amname:", a3, a4, a5, a6, a7, a8, v34);
    _outToken(v9, *(a2 + 8), v10, v11, v12, v13, v14, v15);
    result = appendStringInfo(v9, ",", v16, v17, v18, v19, v20, v21, v35);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v9, "handler_name:", a3, a4, a5, a6, a7, a8, v34);
    appendStringInfoChar(v9, 91);
    v28 = *(a2 + 16);
    if (v28 && *(v28 + 4) >= 1)
    {
      v29 = 0;
      v30 = 8;
      do
      {
        v31 = *(v28 + 16);
        v32 = *(v31 + 8 * v29);
        if (v32)
        {
          _outNode(v9, v32);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v31 + v30)
        {
          v33 = v31 + v30 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v33 = 1;
        }

        if (!v33)
        {
          appendStringInfoString(v9, ",");
        }

        ++v29;
        v30 += 8;
      }

      while (v29 < *(v28 + 4));
    }

    result = appendStringInfo(v9, "],", v22, v23, v24, v25, v26, v27, v36);
  }

  if (*(a2 + 24))
  {
    return appendStringInfo(v9, "amtype:%c,", a3, a4, a5, a6, a7, a8, *(a2 + 24));
  }

  return result;
}

uint64_t _outCreatePublicationStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "pubname:", a3, a4, a5, a6, a7, a8, v46);
    _outToken(v9, *(a2 + 8), v10, v11, v12, v13, v14, v15);
    result = appendStringInfo(v9, ",", v16, v17, v18, v19, v20, v21, v47);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v9, "options:", a3, a4, a5, a6, a7, a8, v46);
    appendStringInfoChar(v9, 91);
    v28 = *(a2 + 16);
    if (v28 && *(v28 + 4) >= 1)
    {
      v29 = 0;
      v30 = 8;
      do
      {
        v31 = *(v28 + 16);
        v32 = *(v31 + 8 * v29);
        if (v32)
        {
          _outNode(v9, v32);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v31 + v30)
        {
          v33 = v31 + v30 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v33 = 1;
        }

        if (!v33)
        {
          appendStringInfoString(v9, ",");
        }

        ++v29;
        v30 += 8;
      }

      while (v29 < *(v28 + 4));
    }

    result = appendStringInfo(v9, "],", v22, v23, v24, v25, v26, v27, v48);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v9, "tables:", a3, a4, a5, a6, a7, a8, v46);
    appendStringInfoChar(v9, 91);
    v40 = *(a2 + 24);
    if (v40 && *(v40 + 4) >= 1)
    {
      v41 = 0;
      v42 = 8;
      do
      {
        v43 = *(v40 + 16);
        v44 = *(v43 + 8 * v41);
        if (v44)
        {
          _outNode(v9, v44);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v43 + v42)
        {
          v45 = v43 + v42 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v45 = 1;
        }

        if (!v45)
        {
          appendStringInfoString(v9, ",");
        }

        ++v41;
        v42 += 8;
      }

      while (v41 < *(v40 + 4));
    }

    result = appendStringInfo(v9, "],", v34, v35, v36, v37, v38, v39, v49);
  }

  if (*(a2 + 32) == 1)
  {
    return appendStringInfo(v9, "for_all_tables:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  return result;
}

unint64_t _outAlterPublicationStmt(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "pubname:", a3, a4, a5, a6, a7, a8, v49);
    _outToken(a1, *(a2 + 8), v10, v11, v12, v13, v14, v15);
    appendStringInfo(a1, ",", v16, v17, v18, v19, v20, v21, v50);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "options:", a3, a4, a5, a6, a7, a8, v49);
    appendStringInfoChar(a1, 91);
    v28 = *(a2 + 16);
    if (v28 && *(v28 + 4) >= 1)
    {
      v29 = 0;
      v30 = 8;
      do
      {
        v31 = *(v28 + 16);
        v32 = *(v31 + 8 * v29);
        if (v32)
        {
          _outNode(a1, v32);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v31 + v30)
        {
          v33 = v31 + v30 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v33 = 1;
        }

        if (!v33)
        {
          appendStringInfoString(a1, ",");
        }

        ++v29;
        v30 += 8;
      }

      while (v29 < *(v28 + 4));
    }

    appendStringInfo(a1, "],", v22, v23, v24, v25, v26, v27, v51);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "tables:", a3, a4, a5, a6, a7, a8, v49);
    appendStringInfoChar(a1, 91);
    v40 = *(a2 + 24);
    if (v40 && *(v40 + 4) >= 1)
    {
      v41 = 0;
      v42 = 8;
      do
      {
        v43 = *(v40 + 16);
        v44 = *(v43 + 8 * v41);
        if (v44)
        {
          _outNode(a1, v44);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v43 + v42)
        {
          v45 = v43 + v42 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v45 = 1;
        }

        if (!v45)
        {
          appendStringInfoString(a1, ",");
        }

        ++v41;
        v42 += 8;
      }

      while (v41 < *(v40 + 4));
    }

    appendStringInfo(a1, "],", v34, v35, v36, v37, v38, v39, v52);
  }

  if (*(a2 + 32) == 1)
  {
    appendStringInfo(a1, "for_all_tables:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  v46 = *(a2 + 36);
  if (v46 > 3)
  {
    LODWORD(v47) = 0;
  }

  else
  {
    v47 = (&off_2797B75C8)[v46];
  }

  return appendStringInfo(a1, "tableAction:%s,", a3, a4, a5, a6, a7, a8, v47);
}

uint64_t _outCreateSubscriptionStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "subname:", a3, a4, a5, a6, a7, a8, v59);
    _outToken(v10, *(a2 + 8), v11, v12, v13, v14, v15, v16);
    result = appendStringInfo(v10, ",", v17, v18, v19, v20, v21, v22, v60);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v10, "conninfo:", a3, a4, a5, a6, a7, a8, v59);
    _outToken(v10, *(a2 + 16), v23, v24, v25, v26, v27, v28);
    result = appendStringInfo(v10, ",", v29, v30, v31, v32, v33, v34, v61);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v10, "publication:", a3, a4, a5, a6, a7, a8, v59);
    appendStringInfoChar(v10, 91);
    v41 = *(a2 + 24);
    if (v41 && *(v41 + 4) >= 1)
    {
      v42 = 0;
      v43 = 8;
      do
      {
        v44 = *(v41 + 16);
        v45 = *(v44 + 8 * v42);
        if (v45)
        {
          _outNode(v10, v45);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v44 + v43)
        {
          v46 = v44 + v43 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v46 = 1;
        }

        if (!v46)
        {
          appendStringInfoString(v10, ",");
        }

        ++v42;
        v43 += 8;
      }

      while (v42 < *(v41 + 4));
    }

    result = appendStringInfo(v10, "],", v35, v36, v37, v38, v39, v40, v62);
  }

  if (*(a2 + 32))
  {
    appendStringInfo(v10, "options:", a3, a4, a5, a6, a7, a8, v59);
    appendStringInfoChar(v10, 91);
    v53 = *(a2 + 32);
    if (v53 && *(v53 + 4) >= 1)
    {
      v54 = 0;
      v55 = 8;
      do
      {
        v56 = *(v53 + 16);
        v57 = *(v56 + 8 * v54);
        if (v57)
        {
          _outNode(v10, v57);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v56 + v55)
        {
          v58 = v56 + v55 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v58 = 1;
        }

        if (!v58)
        {
          appendStringInfoString(v10, ",");
        }

        ++v54;
        v55 += 8;
      }

      while (v54 < *(v53 + 4));
    }

    return appendStringInfo(v10, "],", v47, v48, v49, v50, v51, v52, a9);
  }

  return result;
}

unint64_t _outAlterSubscriptionStmt(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v11 = *(a2 + 4);
  if (v11 > 4)
  {
    LODWORD(v12) = 0;
  }

  else
  {
    v12 = (&off_2797B7478)[v11];
  }

  result = appendStringInfo(a1, "kind:%s,", a3, a4, a5, a6, a7, a8, v12);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "subname:", v14, v15, v16, v17, v18, v19, v68);
    _outToken(a1, *(a2 + 8), v20, v21, v22, v23, v24, v25);
    result = appendStringInfo(a1, ",", v26, v27, v28, v29, v30, v31, v69);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "conninfo:", v14, v15, v16, v17, v18, v19, v68);
    _outToken(a1, *(a2 + 16), v32, v33, v34, v35, v36, v37);
    result = appendStringInfo(a1, ",", v38, v39, v40, v41, v42, v43, v70);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "publication:", v14, v15, v16, v17, v18, v19, v68);
    appendStringInfoChar(a1, 91);
    v50 = *(a2 + 24);
    if (v50 && *(v50 + 4) >= 1)
    {
      v51 = 0;
      v52 = 8;
      do
      {
        v53 = *(v50 + 16);
        v54 = *(v53 + 8 * v51);
        if (v54)
        {
          _outNode(a1, v54);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v53 + v52)
        {
          v55 = v53 + v52 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v55 = 1;
        }

        if (!v55)
        {
          appendStringInfoString(a1, ",");
        }

        ++v51;
        v52 += 8;
      }

      while (v51 < *(v50 + 4));
    }

    result = appendStringInfo(a1, "],", v44, v45, v46, v47, v48, v49, v71);
  }

  if (*(a2 + 32))
  {
    appendStringInfo(a1, "options:", v14, v15, v16, v17, v18, v19, v68);
    appendStringInfoChar(a1, 91);
    v62 = *(a2 + 32);
    if (v62 && *(v62 + 4) >= 1)
    {
      v63 = 0;
      v64 = 8;
      do
      {
        v65 = *(v62 + 16);
        v66 = *(v65 + 8 * v63);
        if (v66)
        {
          _outNode(a1, v66);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v65 + v64)
        {
          v67 = v65 + v64 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v67 = 1;
        }

        if (!v67)
        {
          appendStringInfoString(a1, ",");
        }

        ++v63;
        v64 += 8;
      }

      while (v63 < *(v62 + 4));
    }

    return appendStringInfo(a1, "],", v56, v57, v58, v59, v60, v61, a9);
  }

  return result;
}

unint64_t _outDropSubscriptionStmt(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "subname:", a3, a4, a5, a6, a7, a8, v26);
    _outToken(a1, *(a2 + 8), v10, v11, v12, v13, v14, v15);
    appendStringInfo(a1, ",", v16, v17, v18, v19, v20, v21, v27);
  }

  if (*(a2 + 16) == 1)
  {
    appendStringInfo(a1, "missing_ok:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  v22 = *(a2 + 20);
  v23 = "DROP_CASCADE";
  if (v22 != 1)
  {
    LODWORD(v23) = 0;
  }

  if (v22)
  {
    LODWORD(v24) = v23;
  }

  else
  {
    v24 = "DROP_RESTRICT";
  }

  return appendStringInfo(a1, "behavior:%s,", a3, a4, a5, a6, a7, a8, v24);
}

uint64_t _outCreateStatsStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "defnames:", a3, a4, a5, a6, a7, a8, v70);
    appendStringInfoChar(v9, 91);
    v16 = *(a2 + 8);
    if (v16 && *(v16 + 4) >= 1)
    {
      v17 = 0;
      v18 = 8;
      do
      {
        v19 = *(v16 + 16);
        v20 = *(v19 + 8 * v17);
        if (v20)
        {
          _outNode(v9, v20);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v19 + v18)
        {
          v21 = v19 + v18 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          appendStringInfoString(v9, ",");
        }

        ++v17;
        v18 += 8;
      }

      while (v17 < *(v16 + 4));
    }

    result = appendStringInfo(v9, "],", v10, v11, v12, v13, v14, v15, v71);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v9, "stat_types:", a3, a4, a5, a6, a7, a8, v70);
    appendStringInfoChar(v9, 91);
    v28 = *(a2 + 16);
    if (v28 && *(v28 + 4) >= 1)
    {
      v29 = 0;
      v30 = 8;
      do
      {
        v31 = *(v28 + 16);
        v32 = *(v31 + 8 * v29);
        if (v32)
        {
          _outNode(v9, v32);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v31 + v30)
        {
          v33 = v31 + v30 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v33 = 1;
        }

        if (!v33)
        {
          appendStringInfoString(v9, ",");
        }

        ++v29;
        v30 += 8;
      }

      while (v29 < *(v28 + 4));
    }

    result = appendStringInfo(v9, "],", v22, v23, v24, v25, v26, v27, v72);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v9, "exprs:", a3, a4, a5, a6, a7, a8, v70);
    appendStringInfoChar(v9, 91);
    v40 = *(a2 + 24);
    if (v40 && *(v40 + 4) >= 1)
    {
      v41 = 0;
      v42 = 8;
      do
      {
        v43 = *(v40 + 16);
        v44 = *(v43 + 8 * v41);
        if (v44)
        {
          _outNode(v9, v44);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v43 + v42)
        {
          v45 = v43 + v42 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v45 = 1;
        }

        if (!v45)
        {
          appendStringInfoString(v9, ",");
        }

        ++v41;
        v42 += 8;
      }

      while (v41 < *(v40 + 4));
    }

    result = appendStringInfo(v9, "],", v34, v35, v36, v37, v38, v39, v73);
  }

  if (*(a2 + 32))
  {
    appendStringInfo(v9, "relations:", a3, a4, a5, a6, a7, a8, v70);
    appendStringInfoChar(v9, 91);
    v52 = *(a2 + 32);
    if (v52 && *(v52 + 4) >= 1)
    {
      v53 = 0;
      v54 = 8;
      do
      {
        v55 = *(v52 + 16);
        v56 = *(v55 + 8 * v53);
        if (v56)
        {
          _outNode(v9, v56);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v55 + v54)
        {
          v57 = v55 + v54 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v57 = 1;
        }

        if (!v57)
        {
          appendStringInfoString(v9, ",");
        }

        ++v53;
        v54 += 8;
      }

      while (v53 < *(v52 + 4));
    }

    result = appendStringInfo(v9, "],", v46, v47, v48, v49, v50, v51, v74);
  }

  if (*(a2 + 40))
  {
    appendStringInfo(v9, "stxcomment:", a3, a4, a5, a6, a7, a8, v70);
    _outToken(v9, *(a2 + 40), v58, v59, v60, v61, v62, v63);
    result = appendStringInfo(v9, ",", v64, v65, v66, v67, v68, v69, v75);
  }

  if (*(a2 + 48) == 1)
  {
    return appendStringInfo(v9, "if_not_exists:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  return result;
}

unint64_t _outAlterCollationStmt(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if (*(a2 + 8))
  {
    v10 = result;
    appendStringInfo(result, "collname:", a3, a4, a5, a6, a7, a8, v23);
    appendStringInfoChar(v10, 91);
    v17 = *(a2 + 8);
    if (v17 && *(v17 + 4) >= 1)
    {
      v18 = 0;
      v19 = 8;
      do
      {
        v20 = *(v17 + 16);
        v21 = *(v20 + 8 * v18);
        if (v21)
        {
          _outNode(v10, v21);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v20 + v19)
        {
          v22 = v20 + v19 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v22 = 1;
        }

        if (!v22)
        {
          appendStringInfoString(v10, ",");
        }

        ++v18;
        v19 += 8;
      }

      while (v18 < *(v17 + 4));
    }

    return appendStringInfo(v10, "],", v11, v12, v13, v14, v15, v16, a9);
  }

  return result;
}

uint64_t _outCallStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "funccall:{", a3, a4, a5, a6, a7, a8, v42);
    _outFuncCall(v10, *(a2 + 8), v11, v12, v13, v14, v15, v16);
    v23 = *(v10 + 8);
    v24 = __OFSUB__(v23, 1);
    v25 = v23 - 1;
    if (v25 < 0 == v24)
    {
      v26 = *v10;
      if (*(*v10 + v25) == 44)
      {
        *(v10 + 8) = v25;
        *(v26 + v25) = 0;
      }
    }

    result = appendStringInfo(v10, "},", v17, v18, v19, v20, v21, v22, v43);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v10, "funcexpr:{", a3, a4, a5, a6, a7, a8, v42);
    _outFuncExpr(v10, *(a2 + 16), v27, v28, v29, v30, v31, v32);
    v39 = *(v10 + 8);
    v24 = __OFSUB__(v39, 1);
    v40 = v39 - 1;
    if (v40 < 0 == v24)
    {
      v41 = *v10;
      if (*(*v10 + v40) == 44)
      {
        *(v10 + 8) = v40;
        *(v41 + v40) = 0;
      }
    }

    return appendStringInfo(v10, "},", v33, v34, v35, v36, v37, v38, a9);
  }

  return result;
}

uint64_t _outAlterStatsStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "defnames:", a3, a4, a5, a6, a7, a8, v22);
    appendStringInfoChar(v9, 91);
    v16 = *(a2 + 8);
    if (v16 && *(v16 + 4) >= 1)
    {
      v17 = 0;
      v18 = 8;
      do
      {
        v19 = *(v16 + 16);
        v20 = *(v19 + 8 * v17);
        if (v20)
        {
          _outNode(v9, v20);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v19 + v18)
        {
          v21 = v19 + v18 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          appendStringInfoString(v9, ",");
        }

        ++v17;
        v18 += 8;
      }

      while (v17 < *(v16 + 4));
    }

    result = appendStringInfo(v9, "],", v10, v11, v12, v13, v14, v15, v23);
  }

  if (*(a2 + 16))
  {
    result = appendStringInfo(v9, "stxstattarget:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 16));
  }

  if (*(a2 + 20) == 1)
  {
    return appendStringInfo(v9, "missing_ok:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  return result;
}

unint64_t _outAExpr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a2 + 4);
  if (v10 > 0xF)
  {
    LODWORD(v11) = 0;
  }

  else
  {
    v11 = (&off_2797B74A0)[v10];
  }

  result = appendStringInfo(a1, "kind:%s,", a3, a4, a5, a6, a7, a8, v11);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "name:", v13, v14, v15, v16, v17, v18, v43);
    appendStringInfoChar(a1, 91);
    v25 = *(a2 + 8);
    if (v25 && *(v25 + 4) >= 1)
    {
      v26 = 0;
      v27 = 8;
      do
      {
        v28 = *(v25 + 16);
        v29 = *(v28 + 8 * v26);
        if (v29)
        {
          _outNode(a1, v29);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v28 + v27)
        {
          v30 = v28 + v27 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v30 = 1;
        }

        if (!v30)
        {
          appendStringInfoString(a1, ",");
        }

        ++v26;
        v27 += 8;
      }

      while (v26 < *(v25 + 4));
    }

    result = appendStringInfo(a1, "],", v19, v20, v21, v22, v23, v24, v44);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "lexpr:", v13, v14, v15, v16, v17, v18, v43);
    _outNode(a1, *(a2 + 16));
    result = appendStringInfo(a1, ",", v31, v32, v33, v34, v35, v36, v45);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "rexpr:", v13, v14, v15, v16, v17, v18, v43);
    _outNode(a1, *(a2 + 24));
    result = appendStringInfo(a1, ",", v37, v38, v39, v40, v41, v42, v46);
  }

  if (*(a2 + 32))
  {
    return appendStringInfo(a1, "location:%d,", v13, v14, v15, v16, v17, v18, *(a2 + 32));
  }

  return result;
}

uint64_t _outColumnRef(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "fields:", a3, a4, a5, a6, a7, a8, v22);
    appendStringInfoChar(v9, 91);
    v16 = *(a2 + 8);
    if (v16 && *(v16 + 4) >= 1)
    {
      v17 = 0;
      v18 = 8;
      do
      {
        v19 = *(v16 + 16);
        v20 = *(v19 + 8 * v17);
        if (v20)
        {
          _outNode(v9, v20);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v19 + v18)
        {
          v21 = v19 + v18 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          appendStringInfoString(v9, ",");
        }

        ++v17;
        v18 += 8;
      }

      while (v17 < *(v16 + 4));
    }

    result = appendStringInfo(v9, "],", v10, v11, v12, v13, v14, v15, v23);
  }

  if (*(a2 + 16))
  {
    return appendStringInfo(v9, "location:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 16));
  }

  return result;
}

uint64_t _outParamRef(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 4))
  {
    result = appendStringInfo(result, "number:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 4));
  }

  if (*(a2 + 8))
  {
    return appendStringInfo(v9, "location:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 8));
  }

  return result;
}

unint64_t _outAConst(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  appendStringInfo(a1, "val:", a3, a4, a5, a6, a7, a8, v23);
  _outNode(a1, a2 + 8);
  result = appendStringInfo(a1, ",", v10, v11, v12, v13, v14, v15, v24);
  if (*(a2 + 24))
  {
    return appendStringInfo(a1, "location:%d,", v17, v18, v19, v20, v21, v22, *(a2 + 24));
  }

  return result;
}

uint64_t _outFuncCall(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "funcname:", a3, a4, a5, a6, a7, a8, v69);
    appendStringInfoChar(v9, 91);
    v16 = *(a2 + 8);
    if (v16 && *(v16 + 4) >= 1)
    {
      v17 = 0;
      v18 = 8;
      do
      {
        v19 = *(v16 + 16);
        v20 = *(v19 + 8 * v17);
        if (v20)
        {
          _outNode(v9, v20);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v19 + v18)
        {
          v21 = v19 + v18 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          appendStringInfoString(v9, ",");
        }

        ++v17;
        v18 += 8;
      }

      while (v17 < *(v16 + 4));
    }

    result = appendStringInfo(v9, "],", v10, v11, v12, v13, v14, v15, v70);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v9, "args:", a3, a4, a5, a6, a7, a8, v69);
    appendStringInfoChar(v9, 91);
    v28 = *(a2 + 16);
    if (v28 && *(v28 + 4) >= 1)
    {
      v29 = 0;
      v30 = 8;
      do
      {
        v31 = *(v28 + 16);
        v32 = *(v31 + 8 * v29);
        if (v32)
        {
          _outNode(v9, v32);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v31 + v30)
        {
          v33 = v31 + v30 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v33 = 1;
        }

        if (!v33)
        {
          appendStringInfoString(v9, ",");
        }

        ++v29;
        v30 += 8;
      }

      while (v29 < *(v28 + 4));
    }

    result = appendStringInfo(v9, "],", v22, v23, v24, v25, v26, v27, v71);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v9, "agg_order:", a3, a4, a5, a6, a7, a8, v69);
    appendStringInfoChar(v9, 91);
    v40 = *(a2 + 24);
    if (v40 && *(v40 + 4) >= 1)
    {
      v41 = 0;
      v42 = 8;
      do
      {
        v43 = *(v40 + 16);
        v44 = *(v43 + 8 * v41);
        if (v44)
        {
          _outNode(v9, v44);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v43 + v42)
        {
          v45 = v43 + v42 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v45 = 1;
        }

        if (!v45)
        {
          appendStringInfoString(v9, ",");
        }

        ++v41;
        v42 += 8;
      }

      while (v41 < *(v40 + 4));
    }

    result = appendStringInfo(v9, "],", v34, v35, v36, v37, v38, v39, v72);
  }

  if (*(a2 + 32))
  {
    appendStringInfo(v9, "agg_filter:", a3, a4, a5, a6, a7, a8, v69);
    _outNode(v9, *(a2 + 32));
    result = appendStringInfo(v9, ",", v46, v47, v48, v49, v50, v51, v73);
  }

  if (*(a2 + 40) == 1)
  {
    result = appendStringInfo(v9, "agg_within_group:%s,", a3, a4, a5, a6, a7, a8, "true");
    if (*(a2 + 41) != 1)
    {
LABEL_47:
      if (*(a2 + 42) != 1)
      {
        goto LABEL_48;
      }

      goto LABEL_55;
    }
  }

  else if (*(a2 + 41) != 1)
  {
    goto LABEL_47;
  }

  result = appendStringInfo(v9, "agg_star:%s,", a3, a4, a5, a6, a7, a8, "true");
  if (*(a2 + 42) != 1)
  {
LABEL_48:
    if (*(a2 + 43) != 1)
    {
      goto LABEL_49;
    }

    goto LABEL_56;
  }

LABEL_55:
  result = appendStringInfo(v9, "agg_distinct:%s,", a3, a4, a5, a6, a7, a8, "true");
  if (*(a2 + 43) != 1)
  {
LABEL_49:
    if (!*(a2 + 48))
    {
      goto LABEL_50;
    }

    goto LABEL_57;
  }

LABEL_56:
  result = appendStringInfo(v9, "func_variadic:%s,", a3, a4, a5, a6, a7, a8, "true");
  if (!*(a2 + 48))
  {
LABEL_50:
    v52 = *(a2 + 56);
    if (!v52)
    {
      return result;
    }

    return appendStringInfo(v9, "location:%d,", a3, a4, a5, a6, a7, a8, v52);
  }

LABEL_57:
  appendStringInfo(v9, "over:{", a3, a4, a5, a6, a7, a8, v69);
  _outWindowDef(v9, *(a2 + 48), v53, v54, v55, v56, v57, v58);
  v65 = *(v9 + 8);
  v66 = __OFSUB__(v65, 1);
  v67 = v65 - 1;
  if (v67 < 0 == v66)
  {
    v68 = *v9;
    if (*(*v9 + v67) == 44)
    {
      *(v9 + 8) = v67;
      *(v68 + v67) = 0;
    }
  }

  result = appendStringInfo(v9, "},", v59, v60, v61, v62, v63, v64, v74);
  v52 = *(a2 + 56);
  if (v52)
  {
    return appendStringInfo(v9, "location:%d,", a3, a4, a5, a6, a7, a8, v52);
  }

  return result;
}

uint64_t _outAIndices(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (*(a2 + 4) == 1)
  {
    result = appendStringInfo(result, "is_slice:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  if (*(a2 + 8))
  {
    appendStringInfo(v10, "lidx:", a3, a4, a5, a6, a7, a8, v23);
    _outNode(v10, *(a2 + 8));
    result = appendStringInfo(v10, ",", v11, v12, v13, v14, v15, v16, v24);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v10, "uidx:", a3, a4, a5, a6, a7, a8, v23);
    _outNode(v10, *(a2 + 16));

    return appendStringInfo(v10, ",", v17, v18, v19, v20, v21, v22, a9);
  }

  return result;
}

uint64_t _outAIndirection(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "arg:", a3, a4, a5, a6, a7, a8, v29);
    _outNode(v10, *(a2 + 8));
    result = appendStringInfo(v10, ",", v11, v12, v13, v14, v15, v16, v30);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v10, "indirection:", a3, a4, a5, a6, a7, a8, v29);
    appendStringInfoChar(v10, 91);
    v23 = *(a2 + 16);
    if (v23 && *(v23 + 4) >= 1)
    {
      v24 = 0;
      v25 = 8;
      do
      {
        v26 = *(v23 + 16);
        v27 = *(v26 + 8 * v24);
        if (v27)
        {
          _outNode(v10, v27);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v26 + v25)
        {
          v28 = v26 + v25 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v28 = 1;
        }

        if (!v28)
        {
          appendStringInfoString(v10, ",");
        }

        ++v24;
        v25 += 8;
      }

      while (v24 < *(v23 + 4));
    }

    return appendStringInfo(v10, "],", v17, v18, v19, v20, v21, v22, a9);
  }

  return result;
}

uint64_t _outAArrayExpr(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "elements:", a3, a4, a5, a6, a7, a8, v22);
    appendStringInfoChar(v9, 91);
    v16 = *(a2 + 8);
    if (v16 && *(v16 + 4) >= 1)
    {
      v17 = 0;
      v18 = 8;
      do
      {
        v19 = *(v16 + 16);
        v20 = *(v19 + 8 * v17);
        if (v20)
        {
          _outNode(v9, v20);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v19 + v18)
        {
          v21 = v19 + v18 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          appendStringInfoString(v9, ",");
        }

        ++v17;
        v18 += 8;
      }

      while (v17 < *(v16 + 4));
    }

    result = appendStringInfo(v9, "],", v10, v11, v12, v13, v14, v15, v23);
  }

  if (*(a2 + 16))
  {
    return appendStringInfo(v9, "location:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 16));
  }

  return result;
}

uint64_t _outResTarget(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "name:", a3, a4, a5, a6, a7, a8, v40);
    _outToken(v9, *(a2 + 8), v10, v11, v12, v13, v14, v15);
    result = appendStringInfo(v9, ",", v16, v17, v18, v19, v20, v21, v41);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v9, "indirection:", a3, a4, a5, a6, a7, a8, v40);
    appendStringInfoChar(v9, 91);
    v28 = *(a2 + 16);
    if (v28 && *(v28 + 4) >= 1)
    {
      v29 = 0;
      v30 = 8;
      do
      {
        v31 = *(v28 + 16);
        v32 = *(v31 + 8 * v29);
        if (v32)
        {
          _outNode(v9, v32);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v31 + v30)
        {
          v33 = v31 + v30 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v33 = 1;
        }

        if (!v33)
        {
          appendStringInfoString(v9, ",");
        }

        ++v29;
        v30 += 8;
      }

      while (v29 < *(v28 + 4));
    }

    result = appendStringInfo(v9, "],", v22, v23, v24, v25, v26, v27, v42);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v9, "val:", a3, a4, a5, a6, a7, a8, v40);
    _outNode(v9, *(a2 + 24));
    result = appendStringInfo(v9, ",", v34, v35, v36, v37, v38, v39, v43);
  }

  if (*(a2 + 32))
  {
    return appendStringInfo(v9, "location:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 32));
  }

  return result;
}

uint64_t _outMultiAssignRef(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "source:", a3, a4, a5, a6, a7, a8, v16);
    _outNode(v9, *(a2 + 8));
    result = appendStringInfo(v9, ",", v10, v11, v12, v13, v14, v15, v17);
  }

  if (*(a2 + 16))
  {
    result = appendStringInfo(v9, "colno:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 16));
  }

  if (*(a2 + 20))
  {
    return appendStringInfo(v9, "ncolumns:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 20));
  }

  return result;
}

uint64_t _outTypeCast(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "arg:", a3, a4, a5, a6, a7, a8, v32);
    _outNode(v9, *(a2 + 8));
    result = appendStringInfo(v9, ",", v10, v11, v12, v13, v14, v15, v33);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v9, "typeName:{", a3, a4, a5, a6, a7, a8, v32);
    _outTypeName(v9, *(a2 + 16), v16, v17, v18, v19, v20, v21);
    v28 = *(v9 + 8);
    v29 = __OFSUB__(v28, 1);
    v30 = v28 - 1;
    if (v30 < 0 == v29)
    {
      v31 = *v9;
      if (*(*v9 + v30) == 44)
      {
        *(v9 + 8) = v30;
        *(v31 + v30) = 0;
      }
    }

    result = appendStringInfo(v9, "},", v22, v23, v24, v25, v26, v27, v34);
  }

  if (*(a2 + 24))
  {
    return appendStringInfo(v9, "location:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 24));
  }

  return result;
}

uint64_t _outCollateClause(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "arg:", a3, a4, a5, a6, a7, a8, v28);
    _outNode(v9, *(a2 + 8));
    result = appendStringInfo(v9, ",", v10, v11, v12, v13, v14, v15, v29);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v9, "collname:", a3, a4, a5, a6, a7, a8, v28);
    appendStringInfoChar(v9, 91);
    v22 = *(a2 + 16);
    if (v22 && *(v22 + 4) >= 1)
    {
      v23 = 0;
      v24 = 8;
      do
      {
        v25 = *(v22 + 16);
        v26 = *(v25 + 8 * v23);
        if (v26)
        {
          _outNode(v9, v26);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v25 + v24)
        {
          v27 = v25 + v24 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v27 = 1;
        }

        if (!v27)
        {
          appendStringInfoString(v9, ",");
        }

        ++v23;
        v24 += 8;
      }

      while (v23 < *(v22 + 4));
    }

    result = appendStringInfo(v9, "],", v16, v17, v18, v19, v20, v21, v30);
  }

  if (*(a2 + 24))
  {
    return appendStringInfo(v9, "location:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 24));
  }

  return result;
}

unint64_t _outSortBy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "node:", a3, a4, a5, a6, a7, a8, v45);
    _outNode(a1, *(a2 + 8));
    appendStringInfo(a1, ",", v10, v11, v12, v13, v14, v15, v46);
  }

  v16 = *(a2 + 16);
  if (v16 > 3)
  {
    LODWORD(v17) = 0;
  }

  else
  {
    v17 = (&off_2797B7520)[v16];
  }

  appendStringInfo(a1, "sortby_dir:%s,", a3, a4, a5, a6, a7, a8, v17);
  v24 = *(a2 + 20);
  if (v24 > 2)
  {
    LODWORD(v25) = 0;
  }

  else
  {
    v25 = (&off_2797B7540)[v24];
  }

  result = appendStringInfo(a1, "sortby_nulls:%s,", v18, v19, v20, v21, v22, v23, v25);
  if (*(a2 + 24))
  {
    appendStringInfo(a1, "useOp:", v27, v28, v29, v30, v31, v32, v47);
    appendStringInfoChar(a1, 91);
    v39 = *(a2 + 24);
    if (v39 && *(v39 + 4) >= 1)
    {
      v40 = 0;
      v41 = 8;
      do
      {
        v42 = *(v39 + 16);
        v43 = *(v42 + 8 * v40);
        if (v43)
        {
          _outNode(a1, v43);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v42 + v41)
        {
          v44 = v42 + v41 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v44 = 1;
        }

        if (!v44)
        {
          appendStringInfoString(a1, ",");
        }

        ++v40;
        v41 += 8;
      }

      while (v40 < *(v39 + 4));
    }

    result = appendStringInfo(a1, "],", v33, v34, v35, v36, v37, v38, v48);
  }

  if (*(a2 + 32))
  {
    return appendStringInfo(a1, "location:%d,", v27, v28, v29, v30, v31, v32, *(a2 + 32));
  }

  return result;
}

uint64_t _outWindowDef(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "name:", a3, a4, a5, a6, a7, a8, v70);
    _outToken(v9, *(a2 + 8), v10, v11, v12, v13, v14, v15);
    result = appendStringInfo(v9, ",", v16, v17, v18, v19, v20, v21, v71);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v9, "refname:", a3, a4, a5, a6, a7, a8, v70);
    _outToken(v9, *(a2 + 16), v22, v23, v24, v25, v26, v27);
    result = appendStringInfo(v9, ",", v28, v29, v30, v31, v32, v33, v72);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v9, "partitionClause:", a3, a4, a5, a6, a7, a8, v70);
    appendStringInfoChar(v9, 91);
    v40 = *(a2 + 24);
    if (v40 && *(v40 + 4) >= 1)
    {
      v41 = 0;
      v42 = 8;
      do
      {
        v43 = *(v40 + 16);
        v44 = *(v43 + 8 * v41);
        if (v44)
        {
          _outNode(v9, v44);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v43 + v42)
        {
          v45 = v43 + v42 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v45 = 1;
        }

        if (!v45)
        {
          appendStringInfoString(v9, ",");
        }

        ++v41;
        v42 += 8;
      }

      while (v41 < *(v40 + 4));
    }

    result = appendStringInfo(v9, "],", v34, v35, v36, v37, v38, v39, v73);
  }

  if (*(a2 + 32))
  {
    appendStringInfo(v9, "orderClause:", a3, a4, a5, a6, a7, a8, v70);
    appendStringInfoChar(v9, 91);
    v52 = *(a2 + 32);
    if (v52 && *(v52 + 4) >= 1)
    {
      v53 = 0;
      v54 = 8;
      do
      {
        v55 = *(v52 + 16);
        v56 = *(v55 + 8 * v53);
        if (v56)
        {
          _outNode(v9, v56);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v55 + v54)
        {
          v57 = v55 + v54 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v57 = 1;
        }

        if (!v57)
        {
          appendStringInfoString(v9, ",");
        }

        ++v53;
        v54 += 8;
      }

      while (v53 < *(v52 + 4));
    }

    result = appendStringInfo(v9, "],", v46, v47, v48, v49, v50, v51, v74);
  }

  if (*(a2 + 40))
  {
    result = appendStringInfo(v9, "frameOptions:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 40));
  }

  if (*(a2 + 48))
  {
    appendStringInfo(v9, "startOffset:", a3, a4, a5, a6, a7, a8, v70);
    _outNode(v9, *(a2 + 48));
    result = appendStringInfo(v9, ",", v58, v59, v60, v61, v62, v63, v75);
  }

  if (*(a2 + 56))
  {
    appendStringInfo(v9, "endOffset:", a3, a4, a5, a6, a7, a8, v70);
    _outNode(v9, *(a2 + 56));
    result = appendStringInfo(v9, ",", v64, v65, v66, v67, v68, v69, v76);
  }

  if (*(a2 + 64))
  {
    return appendStringInfo(v9, "location:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 64));
  }

  return result;
}

uint64_t _outRangeSubselect(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (*(a2 + 4) == 1)
  {
    result = appendStringInfo(result, "lateral:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  if (*(a2 + 8))
  {
    appendStringInfo(v10, "subquery:", a3, a4, a5, a6, a7, a8, v33);
    _outNode(v10, *(a2 + 8));
    result = appendStringInfo(v10, ",", v11, v12, v13, v14, v15, v16, v34);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v10, "alias:{", a3, a4, a5, a6, a7, a8, v33);
    _outAlias(v10, *(a2 + 16), v17, v18, v19, v20, v21, v22, v35);
    v29 = *(v10 + 8);
    v30 = __OFSUB__(v29, 1);
    v31 = v29 - 1;
    if (v31 < 0 == v30)
    {
      v32 = *v10;
      if (*(*v10 + v31) == 44)
      {
        *(v10 + 8) = v31;
        *(v32 + v31) = 0;
      }
    }

    return appendStringInfo(v10, "},", v23, v24, v25, v26, v27, v28, a9);
  }

  return result;
}

uint64_t _outRangeFunction(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (*(a2 + 4) == 1)
  {
    result = appendStringInfo(result, "lateral:%s,", a3, a4, a5, a6, a7, a8, "true");
    if (*(a2 + 5) != 1)
    {
LABEL_3:
      if (*(a2 + 6) != 1)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if (*(a2 + 5) != 1)
  {
    goto LABEL_3;
  }

  result = appendStringInfo(v10, "ordinality:%s,", a3, a4, a5, a6, a7, a8, "true");
  if (*(a2 + 6) != 1)
  {
LABEL_4:
    if (!*(a2 + 8))
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = appendStringInfo(v10, "is_rowsfrom:%s,", a3, a4, a5, a6, a7, a8, "true");
  if (!*(a2 + 8))
  {
LABEL_5:
    if (!*(a2 + 16))
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_25:
  appendStringInfo(v10, "functions:", a3, a4, a5, a6, a7, a8, v51);
  appendStringInfoChar(v10, 91);
  v29 = *(a2 + 8);
  if (v29 && *(v29 + 4) >= 1)
  {
    v30 = 0;
    v31 = 8;
    do
    {
      v32 = *(v29 + 16);
      v33 = *(v32 + 8 * v30);
      if (v33)
      {
        _outNode(v10, v33);
      }

      else
      {
        appendStringInfoString(v10, "{}");
      }

      if (v32 + v31)
      {
        v34 = v32 + v31 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
      }

      else
      {
        v34 = 1;
      }

      if (!v34)
      {
        appendStringInfoString(v10, ",");
      }

      ++v30;
      v31 += 8;
    }

    while (v30 < *(v29 + 4));
  }

  result = appendStringInfo(v10, "],", v23, v24, v25, v26, v27, v28, v52);
  if (!*(a2 + 16))
  {
LABEL_6:
    if (!*(a2 + 24))
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_38:
  appendStringInfo(v10, "alias:{", a3, a4, a5, a6, a7, a8, v51);
  _outAlias(v10, *(a2 + 16), v35, v36, v37, v38, v39, v40, v53);
  v47 = *(v10 + 8);
  v48 = __OFSUB__(v47, 1);
  v49 = v47 - 1;
  if (v49 < 0 == v48)
  {
    v50 = *v10;
    if (*(*v10 + v49) == 44)
    {
      *(v10 + 8) = v49;
      *(v50 + v49) = 0;
    }
  }

  result = appendStringInfo(v10, "},", v41, v42, v43, v44, v45, v46, v54);
  if (*(a2 + 24))
  {
LABEL_7:
    appendStringInfo(v10, "coldeflist:", a3, a4, a5, a6, a7, a8, v51);
    appendStringInfoChar(v10, 91);
    v17 = *(a2 + 24);
    if (v17 && *(v17 + 4) >= 1)
    {
      v18 = 0;
      v19 = 8;
      do
      {
        v20 = *(v17 + 16);
        v21 = *(v20 + 8 * v18);
        if (v21)
        {
          _outNode(v10, v21);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v20 + v19)
        {
          v22 = v20 + v19 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v22 = 1;
        }

        if (!v22)
        {
          appendStringInfoString(v10, ",");
        }

        ++v18;
        v19 += 8;
      }

      while (v18 < *(v17 + 4));
    }

    return appendStringInfo(v10, "],", v11, v12, v13, v14, v15, v16, a9);
  }

  return result;
}

uint64_t _outRangeTableSample(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "relation:", a3, a4, a5, a6, a7, a8, v46);
    _outNode(v9, *(a2 + 8));
    result = appendStringInfo(v9, ",", v10, v11, v12, v13, v14, v15, v47);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v9, "method:", a3, a4, a5, a6, a7, a8, v46);
    appendStringInfoChar(v9, 91);
    v22 = *(a2 + 16);
    if (v22 && *(v22 + 4) >= 1)
    {
      v23 = 0;
      v24 = 8;
      do
      {
        v25 = *(v22 + 16);
        v26 = *(v25 + 8 * v23);
        if (v26)
        {
          _outNode(v9, v26);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v25 + v24)
        {
          v27 = v25 + v24 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v27 = 1;
        }

        if (!v27)
        {
          appendStringInfoString(v9, ",");
        }

        ++v23;
        v24 += 8;
      }

      while (v23 < *(v22 + 4));
    }

    result = appendStringInfo(v9, "],", v16, v17, v18, v19, v20, v21, v48);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v9, "args:", a3, a4, a5, a6, a7, a8, v46);
    appendStringInfoChar(v9, 91);
    v34 = *(a2 + 24);
    if (v34 && *(v34 + 4) >= 1)
    {
      v35 = 0;
      v36 = 8;
      do
      {
        v37 = *(v34 + 16);
        v38 = *(v37 + 8 * v35);
        if (v38)
        {
          _outNode(v9, v38);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v37 + v36)
        {
          v39 = v37 + v36 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v39 = 1;
        }

        if (!v39)
        {
          appendStringInfoString(v9, ",");
        }

        ++v35;
        v36 += 8;
      }

      while (v35 < *(v34 + 4));
    }

    result = appendStringInfo(v9, "],", v28, v29, v30, v31, v32, v33, v49);
  }

  if (*(a2 + 32))
  {
    appendStringInfo(v9, "repeatable:", a3, a4, a5, a6, a7, a8, v46);
    _outNode(v9, *(a2 + 32));
    result = appendStringInfo(v9, ",", v40, v41, v42, v43, v44, v45, v50);
  }

  if (*(a2 + 40))
  {
    return appendStringInfo(v9, "location:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 40));
  }

  return result;
}

uint64_t _outRangeTableFunc(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 4) == 1)
  {
    result = appendStringInfo(result, "lateral:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  if (*(a2 + 8))
  {
    appendStringInfo(v9, "docexpr:", a3, a4, a5, a6, a7, a8, v62);
    _outNode(v9, *(a2 + 8));
    result = appendStringInfo(v9, ",", v10, v11, v12, v13, v14, v15, v63);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v9, "rowexpr:", a3, a4, a5, a6, a7, a8, v62);
    _outNode(v9, *(a2 + 16));
    result = appendStringInfo(v9, ",", v16, v17, v18, v19, v20, v21, v64);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v9, "namespaces:", a3, a4, a5, a6, a7, a8, v62);
    appendStringInfoChar(v9, 91);
    v28 = *(a2 + 24);
    if (v28 && *(v28 + 4) >= 1)
    {
      v29 = 0;
      v30 = 8;
      do
      {
        v31 = *(v28 + 16);
        v32 = *(v31 + 8 * v29);
        if (v32)
        {
          _outNode(v9, v32);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v31 + v30)
        {
          v33 = v31 + v30 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v33 = 1;
        }

        if (!v33)
        {
          appendStringInfoString(v9, ",");
        }

        ++v29;
        v30 += 8;
      }

      while (v29 < *(v28 + 4));
    }

    result = appendStringInfo(v9, "],", v22, v23, v24, v25, v26, v27, v65);
  }

  if (*(a2 + 32))
  {
    appendStringInfo(v9, "columns:", a3, a4, a5, a6, a7, a8, v62);
    appendStringInfoChar(v9, 91);
    v40 = *(a2 + 32);
    if (v40 && *(v40 + 4) >= 1)
    {
      v41 = 0;
      v42 = 8;
      do
      {
        v43 = *(v40 + 16);
        v44 = *(v43 + 8 * v41);
        if (v44)
        {
          _outNode(v9, v44);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v43 + v42)
        {
          v45 = v43 + v42 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v45 = 1;
        }

        if (!v45)
        {
          appendStringInfoString(v9, ",");
        }

        ++v41;
        v42 += 8;
      }

      while (v41 < *(v40 + 4));
    }

    result = appendStringInfo(v9, "],", v34, v35, v36, v37, v38, v39, v66);
  }

  if (*(a2 + 40))
  {
    appendStringInfo(v9, "alias:{", a3, a4, a5, a6, a7, a8, v62);
    _outAlias(v9, *(a2 + 40), v46, v47, v48, v49, v50, v51, v67);
    v58 = *(v9 + 8);
    v59 = __OFSUB__(v58, 1);
    v60 = v58 - 1;
    if (v60 < 0 == v59)
    {
      v61 = *v9;
      if (*(*v9 + v60) == 44)
      {
        *(v9 + 8) = v60;
        *(v61 + v60) = 0;
      }
    }

    result = appendStringInfo(v9, "},", v52, v53, v54, v55, v56, v57, v68);
  }

  if (*(a2 + 48))
  {
    return appendStringInfo(v9, "location:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 48));
  }

  return result;
}

uint64_t _outRangeTableFuncCol(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "colname:", a3, a4, a5, a6, a7, a8, v50);
    _outToken(v9, *(a2 + 8), v10, v11, v12, v13, v14, v15);
    result = appendStringInfo(v9, ",", v16, v17, v18, v19, v20, v21, v51);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v9, "typeName:{", a3, a4, a5, a6, a7, a8, v50);
    _outTypeName(v9, *(a2 + 16), v22, v23, v24, v25, v26, v27);
    v34 = v9[2];
    v35 = __OFSUB__(v34, 1);
    v36 = v34 - 1;
    if (v36 < 0 == v35)
    {
      v37 = *v9;
      if (*(*v9 + v36) == 44)
      {
        v9[2] = v36;
        *(v37 + v36) = 0;
      }
    }

    result = appendStringInfo(v9, "},", v28, v29, v30, v31, v32, v33, v52);
  }

  if (*(a2 + 24) == 1)
  {
    result = appendStringInfo(v9, "for_ordinality:%s,", a3, a4, a5, a6, a7, a8, "true");
    if (*(a2 + 25) != 1)
    {
LABEL_10:
      if (!*(a2 + 32))
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if (*(a2 + 25) != 1)
  {
    goto LABEL_10;
  }

  result = appendStringInfo(v9, "is_not_null:%s,", a3, a4, a5, a6, a7, a8, "true");
  if (*(a2 + 32))
  {
LABEL_11:
    appendStringInfo(v9, "colexpr:", a3, a4, a5, a6, a7, a8, v50);
    _outNode(v9, *(a2 + 32));
    result = appendStringInfo(v9, ",", v38, v39, v40, v41, v42, v43, v53);
  }

LABEL_12:
  if (*(a2 + 40))
  {
    appendStringInfo(v9, "coldefexpr:", a3, a4, a5, a6, a7, a8, v50);
    _outNode(v9, *(a2 + 40));
    result = appendStringInfo(v9, ",", v44, v45, v46, v47, v48, v49, v54);
  }

  if (*(a2 + 48))
  {
    return appendStringInfo(v9, "location:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 48));
  }

  return result;
}

uint64_t _outTypeName(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "names:", a3, a4, a5, a6, a7, a8, v47);
    appendStringInfoChar(v9, 91);
    v16 = *(a2 + 8);
    if (v16 && *(v16 + 4) >= 1)
    {
      v17 = 0;
      v18 = 8;
      do
      {
        v19 = *(v16 + 16);
        v20 = *(v19 + 8 * v17);
        if (v20)
        {
          _outNode(v9, v20);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v19 + v18)
        {
          v21 = v19 + v18 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          appendStringInfoString(v9, ",");
        }

        ++v17;
        v18 += 8;
      }

      while (v17 < *(v16 + 4));
    }

    result = appendStringInfo(v9, "],", v10, v11, v12, v13, v14, v15, v48);
  }

  if (*(a2 + 16))
  {
    result = appendStringInfo(v9, "typeOid:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 16));
  }

  if (*(a2 + 20) == 1)
  {
    result = appendStringInfo(v9, "setof:%s,", a3, a4, a5, a6, a7, a8, "true");
    if (*(a2 + 21) != 1)
    {
LABEL_19:
      if (!*(a2 + 24))
      {
        goto LABEL_20;
      }

      goto LABEL_41;
    }
  }

  else if (*(a2 + 21) != 1)
  {
    goto LABEL_19;
  }

  result = appendStringInfo(v9, "pct_type:%s,", a3, a4, a5, a6, a7, a8, "true");
  if (!*(a2 + 24))
  {
LABEL_20:
    v22 = *(a2 + 32);
    if (!v22)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_41:
  appendStringInfo(v9, "typmods:", a3, a4, a5, a6, a7, a8, v47);
  appendStringInfoChar(v9, 91);
  v41 = *(a2 + 24);
  if (v41 && *(v41 + 4) >= 1)
  {
    v42 = 0;
    v43 = 8;
    do
    {
      v44 = *(v41 + 16);
      v45 = *(v44 + 8 * v42);
      if (v45)
      {
        _outNode(v9, v45);
      }

      else
      {
        appendStringInfoString(v9, "{}");
      }

      if (v44 + v43)
      {
        v46 = v44 + v43 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
      }

      else
      {
        v46 = 1;
      }

      if (!v46)
      {
        appendStringInfoString(v9, ",");
      }

      ++v42;
      v43 += 8;
    }

    while (v42 < *(v41 + 4));
  }

  result = appendStringInfo(v9, "],", v35, v36, v37, v38, v39, v40, v50);
  v22 = *(a2 + 32);
  if (v22)
  {
LABEL_21:
    result = appendStringInfo(v9, "typemod:%d,", a3, a4, a5, a6, a7, a8, v22);
  }

LABEL_22:
  if (*(a2 + 40))
  {
    appendStringInfo(v9, "arrayBounds:", a3, a4, a5, a6, a7, a8, v47);
    appendStringInfoChar(v9, 91);
    v29 = *(a2 + 40);
    if (v29 && *(v29 + 4) >= 1)
    {
      v30 = 0;
      v31 = 8;
      do
      {
        v32 = *(v29 + 16);
        v33 = *(v32 + 8 * v30);
        if (v33)
        {
          _outNode(v9, v33);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v32 + v31)
        {
          v34 = v32 + v31 >= (*(*(a2 + 40) + 16) + 8 * *(*(a2 + 40) + 4));
        }

        else
        {
          v34 = 1;
        }

        if (!v34)
        {
          appendStringInfoString(v9, ",");
        }

        ++v30;
        v31 += 8;
      }

      while (v30 < *(v29 + 4));
    }

    result = appendStringInfo(v9, "],", v23, v24, v25, v26, v27, v28, v49);
  }

  if (*(a2 + 48))
  {
    return appendStringInfo(v9, "location:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 48));
  }

  return result;
}

uint64_t _outColumnDef(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "colname:", a3, a4, a5, a6, a7, a8, v105);
    _outToken(v9, *(a2 + 8), v10, v11, v12, v13, v14, v15);
    result = appendStringInfo(v9, ",", v16, v17, v18, v19, v20, v21, v106);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v9, "typeName:{", a3, a4, a5, a6, a7, a8, v105);
    _outTypeName(v9, *(a2 + 16), v22, v23, v24, v25, v26, v27);
    v34 = v9[2];
    v35 = __OFSUB__(v34, 1);
    v36 = v34 - 1;
    if (v36 < 0 == v35)
    {
      v37 = *v9;
      if (*(*v9 + v36) == 44)
      {
        v9[2] = v36;
        *(v37 + v36) = 0;
      }
    }

    result = appendStringInfo(v9, "},", v28, v29, v30, v31, v32, v33, v107);
  }

  if (*(a2 + 24))
  {
    result = appendStringInfo(v9, "inhcount:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 24));
  }

  if (*(a2 + 28) == 1)
  {
    result = appendStringInfo(v9, "is_local:%s,", a3, a4, a5, a6, a7, a8, "true");
    if (*(a2 + 29) != 1)
    {
LABEL_12:
      if (*(a2 + 30) != 1)
      {
        goto LABEL_13;
      }

      goto LABEL_68;
    }
  }

  else if (*(a2 + 29) != 1)
  {
    goto LABEL_12;
  }

  result = appendStringInfo(v9, "is_not_null:%s,", a3, a4, a5, a6, a7, a8, "true");
  if (*(a2 + 30) != 1)
  {
LABEL_13:
    v38 = *(a2 + 31);
    if (!*(a2 + 31))
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_68:
  result = appendStringInfo(v9, "is_from_type:%s,", a3, a4, a5, a6, a7, a8, "true");
  v38 = *(a2 + 31);
  if (*(a2 + 31))
  {
LABEL_14:
    result = appendStringInfo(v9, "storage:%c,", a3, a4, a5, a6, a7, a8, v38);
  }

LABEL_15:
  if (*(a2 + 32))
  {
    appendStringInfo(v9, "raw_default:", a3, a4, a5, a6, a7, a8, v105);
    _outNode(v9, *(a2 + 32));
    result = appendStringInfo(v9, ",", v39, v40, v41, v42, v43, v44, v108);
  }

  if (*(a2 + 40))
  {
    appendStringInfo(v9, "cooked_default:", a3, a4, a5, a6, a7, a8, v105);
    _outNode(v9, *(a2 + 40));
    result = appendStringInfo(v9, ",", v45, v46, v47, v48, v49, v50, v109);
  }

  if (*(a2 + 48))
  {
    result = appendStringInfo(v9, "identity:%c,", a3, a4, a5, a6, a7, a8, *(a2 + 48));
  }

  if (*(a2 + 56))
  {
    appendStringInfo(v9, "identitySequence:{", a3, a4, a5, a6, a7, a8, v105);
    _outRangeVar(v9, *(a2 + 56), v51, v52, v53, v54, v55, v56);
    v63 = v9[2];
    v35 = __OFSUB__(v63, 1);
    v64 = v63 - 1;
    if (v64 < 0 == v35)
    {
      v65 = *v9;
      if (*(*v9 + v64) == 44)
      {
        v9[2] = v64;
        *(v65 + v64) = 0;
      }
    }

    result = appendStringInfo(v9, "},", v57, v58, v59, v60, v61, v62, v110);
  }

  if (*(a2 + 64))
  {
    result = appendStringInfo(v9, "generated:%c,", a3, a4, a5, a6, a7, a8, *(a2 + 64));
  }

  if (*(a2 + 72))
  {
    appendStringInfo(v9, "collClause:{", a3, a4, a5, a6, a7, a8, v105);
    _outCollateClause(v9, *(a2 + 72), v66, v67, v68, v69, v70, v71);
    v78 = v9[2];
    v35 = __OFSUB__(v78, 1);
    v79 = v78 - 1;
    if (v79 < 0 == v35)
    {
      v80 = *v9;
      if (*(*v9 + v79) == 44)
      {
        v9[2] = v79;
        *(v80 + v79) = 0;
      }
    }

    result = appendStringInfo(v9, "},", v72, v73, v74, v75, v76, v77, v111);
  }

  if (*(a2 + 80))
  {
    result = appendStringInfo(v9, "collOid:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 80));
  }

  if (*(a2 + 88))
  {
    appendStringInfo(v9, "constraints:", a3, a4, a5, a6, a7, a8, v105);
    appendStringInfoChar(v9, 91);
    v87 = *(a2 + 88);
    if (v87 && *(v87 + 4) >= 1)
    {
      v88 = 0;
      v89 = 8;
      do
      {
        v90 = *(v87 + 16);
        v91 = *(v90 + 8 * v88);
        if (v91)
        {
          _outNode(v9, v91);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v90 + v89)
        {
          v92 = v90 + v89 >= (*(*(a2 + 88) + 16) + 8 * *(*(a2 + 88) + 4));
        }

        else
        {
          v92 = 1;
        }

        if (!v92)
        {
          appendStringInfoString(v9, ",");
        }

        ++v88;
        v89 += 8;
      }

      while (v88 < *(v87 + 4));
    }

    result = appendStringInfo(v9, "],", v81, v82, v83, v84, v85, v86, v112);
  }

  if (*(a2 + 96))
  {
    appendStringInfo(v9, "fdwoptions:", a3, a4, a5, a6, a7, a8, v105);
    appendStringInfoChar(v9, 91);
    v99 = *(a2 + 96);
    if (v99 && *(v99 + 4) >= 1)
    {
      v100 = 0;
      v101 = 8;
      do
      {
        v102 = *(v99 + 16);
        v103 = *(v102 + 8 * v100);
        if (v103)
        {
          _outNode(v9, v103);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v102 + v101)
        {
          v104 = v102 + v101 >= (*(*(a2 + 96) + 16) + 8 * *(*(a2 + 96) + 4));
        }

        else
        {
          v104 = 1;
        }

        if (!v104)
        {
          appendStringInfoString(v9, ",");
        }

        ++v100;
        v101 += 8;
      }

      while (v100 < *(v99 + 4));
    }

    result = appendStringInfo(v9, "],", v93, v94, v95, v96, v97, v98, v113);
  }

  if (*(a2 + 104))
  {
    return appendStringInfo(v9, "location:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 104));
  }

  return result;
}

unint64_t _outIndexElem(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "name:", a3, a4, a5, a6, a7, a8, v87);
    _outToken(a1, *(a2 + 8), v10, v11, v12, v13, v14, v15);
    appendStringInfo(a1, ",", v16, v17, v18, v19, v20, v21, v88);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "expr:", a3, a4, a5, a6, a7, a8, v87);
    _outNode(a1, *(a2 + 16));
    appendStringInfo(a1, ",", v22, v23, v24, v25, v26, v27, v89);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "indexcolname:", a3, a4, a5, a6, a7, a8, v87);
    _outToken(a1, *(a2 + 24), v28, v29, v30, v31, v32, v33);
    appendStringInfo(a1, ",", v34, v35, v36, v37, v38, v39, v90);
  }

  if (*(a2 + 32))
  {
    appendStringInfo(a1, "collation:", a3, a4, a5, a6, a7, a8, v87);
    appendStringInfoChar(a1, 91);
    v46 = *(a2 + 32);
    if (v46 && *(v46 + 4) >= 1)
    {
      v47 = 0;
      v48 = 8;
      do
      {
        v49 = *(v46 + 16);
        v50 = *(v49 + 8 * v47);
        if (v50)
        {
          _outNode(a1, v50);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v49 + v48)
        {
          v51 = v49 + v48 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v51 = 1;
        }

        if (!v51)
        {
          appendStringInfoString(a1, ",");
        }

        ++v47;
        v48 += 8;
      }

      while (v47 < *(v46 + 4));
    }

    appendStringInfo(a1, "],", v40, v41, v42, v43, v44, v45, v91);
  }

  if (*(a2 + 40))
  {
    appendStringInfo(a1, "opclass:", a3, a4, a5, a6, a7, a8, v87);
    appendStringInfoChar(a1, 91);
    v58 = *(a2 + 40);
    if (v58 && *(v58 + 4) >= 1)
    {
      v59 = 0;
      v60 = 8;
      do
      {
        v61 = *(v58 + 16);
        v62 = *(v61 + 8 * v59);
        if (v62)
        {
          _outNode(a1, v62);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v61 + v60)
        {
          v63 = v61 + v60 >= (*(*(a2 + 40) + 16) + 8 * *(*(a2 + 40) + 4));
        }

        else
        {
          v63 = 1;
        }

        if (!v63)
        {
          appendStringInfoString(a1, ",");
        }

        ++v59;
        v60 += 8;
      }

      while (v59 < *(v58 + 4));
    }

    appendStringInfo(a1, "],", v52, v53, v54, v55, v56, v57, v92);
  }

  if (*(a2 + 48))
  {
    appendStringInfo(a1, "opclassopts:", a3, a4, a5, a6, a7, a8, v87);
    appendStringInfoChar(a1, 91);
    v70 = *(a2 + 48);
    if (v70 && *(v70 + 4) >= 1)
    {
      v71 = 0;
      v72 = 8;
      do
      {
        v73 = *(v70 + 16);
        v74 = *(v73 + 8 * v71);
        if (v74)
        {
          _outNode(a1, v74);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v73 + v72)
        {
          v75 = v73 + v72 >= (*(*(a2 + 48) + 16) + 8 * *(*(a2 + 48) + 4));
        }

        else
        {
          v75 = 1;
        }

        if (!v75)
        {
          appendStringInfoString(a1, ",");
        }

        ++v71;
        v72 += 8;
      }

      while (v71 < *(v70 + 4));
    }

    appendStringInfo(a1, "],", v64, v65, v66, v67, v68, v69, v93);
  }

  v76 = *(a2 + 56);
  if (v76 > 3)
  {
    LODWORD(v77) = 0;
  }

  else
  {
    v77 = (&off_2797B7520)[v76];
  }

  appendStringInfo(a1, "ordering:%s,", a3, a4, a5, a6, a7, a8, v77);
  v84 = *(a2 + 60);
  if (v84 > 2)
  {
    LODWORD(v85) = 0;
  }

  else
  {
    v85 = (&off_2797B7540)[v84];
  }

  return appendStringInfo(a1, "nulls_ordering:%s,", v78, v79, v80, v81, v82, v83, v85);
}

unint64_t _outConstraint(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a2 + 4);
  if (v10 > 0xD)
  {
    LODWORD(v11) = 0;
  }

  else
  {
    v11 = (&off_2797B7558)[v10];
  }

  result = appendStringInfo(a1, "contype:%s,", a3, a4, a5, a6, a7, a8, v11);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "conname:", v13, v14, v15, v16, v17, v18, v192);
    _outToken(a1, *(a2 + 8), v19, v20, v21, v22, v23, v24);
    result = appendStringInfo(a1, ",", v25, v26, v27, v28, v29, v30, v193);
  }

  if (*(a2 + 16) == 1)
  {
    result = appendStringInfo(a1, "deferrable:%s,", v13, v14, v15, v16, v17, v18, "true");
    if (*(a2 + 17) != 1)
    {
LABEL_8:
      v31 = *(a2 + 20);
      if (!v31)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if (*(a2 + 17) != 1)
  {
    goto LABEL_8;
  }

  result = appendStringInfo(a1, "initdeferred:%s,", v13, v14, v15, v16, v17, v18, "true");
  v31 = *(a2 + 20);
  if (v31)
  {
LABEL_9:
    result = appendStringInfo(a1, "location:%d,", v13, v14, v15, v16, v17, v18, v31);
  }

LABEL_10:
  if (*(a2 + 24) == 1)
  {
    result = appendStringInfo(a1, "is_no_inherit:%s,", v13, v14, v15, v16, v17, v18, "true");
  }

  if (*(a2 + 32))
  {
    appendStringInfo(a1, "raw_expr:", v13, v14, v15, v16, v17, v18, v192);
    _outNode(a1, *(a2 + 32));
    result = appendStringInfo(a1, ",", v32, v33, v34, v35, v36, v37, v194);
  }

  if (*(a2 + 40))
  {
    appendStringInfo(a1, "cooked_expr:", v13, v14, v15, v16, v17, v18, v192);
    _outToken(a1, *(a2 + 40), v38, v39, v40, v41, v42, v43);
    result = appendStringInfo(a1, ",", v44, v45, v46, v47, v48, v49, v195);
  }

  if (*(a2 + 48))
  {
    result = appendStringInfo(a1, "generated_when:%c,", v13, v14, v15, v16, v17, v18, *(a2 + 48));
  }

  if (*(a2 + 56))
  {
    appendStringInfo(a1, "keys:", v13, v14, v15, v16, v17, v18, v192);
    appendStringInfoChar(a1, 91);
    v56 = *(a2 + 56);
    if (v56 && *(v56 + 4) >= 1)
    {
      v57 = 0;
      v58 = 8;
      do
      {
        v59 = *(v56 + 16);
        v60 = *(v59 + 8 * v57);
        if (v60)
        {
          _outNode(a1, v60);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v59 + v58)
        {
          v61 = v59 + v58 >= (*(*(a2 + 56) + 16) + 8 * *(*(a2 + 56) + 4));
        }

        else
        {
          v61 = 1;
        }

        if (!v61)
        {
          appendStringInfoString(a1, ",");
        }

        ++v57;
        v58 += 8;
      }

      while (v57 < *(v56 + 4));
    }

    result = appendStringInfo(a1, "],", v50, v51, v52, v53, v54, v55, v196);
  }

  if (*(a2 + 64))
  {
    appendStringInfo(a1, "including:", v13, v14, v15, v16, v17, v18, v192);
    appendStringInfoChar(a1, 91);
    v68 = *(a2 + 64);
    if (v68 && *(v68 + 4) >= 1)
    {
      v69 = 0;
      v70 = 8;
      do
      {
        v71 = *(v68 + 16);
        v72 = *(v71 + 8 * v69);
        if (v72)
        {
          _outNode(a1, v72);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v71 + v70)
        {
          v73 = v71 + v70 >= (*(*(a2 + 64) + 16) + 8 * *(*(a2 + 64) + 4));
        }

        else
        {
          v73 = 1;
        }

        if (!v73)
        {
          appendStringInfoString(a1, ",");
        }

        ++v69;
        v70 += 8;
      }

      while (v69 < *(v68 + 4));
    }

    result = appendStringInfo(a1, "],", v62, v63, v64, v65, v66, v67, v197);
  }

  if (*(a2 + 72))
  {
    appendStringInfo(a1, "exclusions:", v13, v14, v15, v16, v17, v18, v192);
    appendStringInfoChar(a1, 91);
    v80 = *(a2 + 72);
    if (v80 && *(v80 + 4) >= 1)
    {
      v81 = 0;
      v82 = 8;
      do
      {
        v83 = *(v80 + 16);
        v84 = *(v83 + 8 * v81);
        if (v84)
        {
          _outNode(a1, v84);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v83 + v82)
        {
          v85 = v83 + v82 >= (*(*(a2 + 72) + 16) + 8 * *(*(a2 + 72) + 4));
        }

        else
        {
          v85 = 1;
        }

        if (!v85)
        {
          appendStringInfoString(a1, ",");
        }

        ++v81;
        v82 += 8;
      }

      while (v81 < *(v80 + 4));
    }

    result = appendStringInfo(a1, "],", v74, v75, v76, v77, v78, v79, v198);
  }

  if (*(a2 + 80))
  {
    appendStringInfo(a1, "options:", v13, v14, v15, v16, v17, v18, v192);
    appendStringInfoChar(a1, 91);
    v92 = *(a2 + 80);
    if (v92 && *(v92 + 4) >= 1)
    {
      v93 = 0;
      v94 = 8;
      do
      {
        v95 = *(v92 + 16);
        v96 = *(v95 + 8 * v93);
        if (v96)
        {
          _outNode(a1, v96);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v95 + v94)
        {
          v97 = v95 + v94 >= (*(*(a2 + 80) + 16) + 8 * *(*(a2 + 80) + 4));
        }

        else
        {
          v97 = 1;
        }

        if (!v97)
        {
          appendStringInfoString(a1, ",");
        }

        ++v93;
        v94 += 8;
      }

      while (v93 < *(v92 + 4));
    }

    result = appendStringInfo(a1, "],", v86, v87, v88, v89, v90, v91, v199);
  }

  if (*(a2 + 88))
  {
    appendStringInfo(a1, "indexname:", v13, v14, v15, v16, v17, v18, v192);
    _outToken(a1, *(a2 + 88), v98, v99, v100, v101, v102, v103);
    result = appendStringInfo(a1, ",", v104, v105, v106, v107, v108, v109, v200);
  }

  if (*(a2 + 96))
  {
    appendStringInfo(a1, "indexspace:", v13, v14, v15, v16, v17, v18, v192);
    _outToken(a1, *(a2 + 96), v110, v111, v112, v113, v114, v115);
    result = appendStringInfo(a1, ",", v116, v117, v118, v119, v120, v121, v201);
  }

  if (*(a2 + 104) == 1)
  {
    result = appendStringInfo(a1, "reset_default_tblspc:%s,", v13, v14, v15, v16, v17, v18, "true");
  }

  if (*(a2 + 112))
  {
    appendStringInfo(a1, "access_method:", v13, v14, v15, v16, v17, v18, v192);
    _outToken(a1, *(a2 + 112), v122, v123, v124, v125, v126, v127);
    result = appendStringInfo(a1, ",", v128, v129, v130, v131, v132, v133, v202);
  }

  if (*(a2 + 120))
  {
    appendStringInfo(a1, "where_clause:", v13, v14, v15, v16, v17, v18, v192);
    _outNode(a1, *(a2 + 120));
    result = appendStringInfo(a1, ",", v134, v135, v136, v137, v138, v139, v203);
  }

  if (*(a2 + 128))
  {
    appendStringInfo(a1, "pktable:{", v13, v14, v15, v16, v17, v18, v192);
    _outRangeVar(a1, *(a2 + 128), v140, v141, v142, v143, v144, v145);
    v152 = a1[2];
    v153 = __OFSUB__(v152, 1);
    v154 = v152 - 1;
    if (v154 < 0 == v153)
    {
      v155 = *a1;
      if (*(*a1 + v154) == 44)
      {
        a1[2] = v154;
        *(v155 + v154) = 0;
      }
    }

    result = appendStringInfo(a1, "},", v146, v147, v148, v149, v150, v151, v204);
  }

  if (*(a2 + 136))
  {
    appendStringInfo(a1, "fk_attrs:", v13, v14, v15, v16, v17, v18, v192);
    appendStringInfoChar(a1, 91);
    v162 = *(a2 + 136);
    if (v162 && *(v162 + 4) >= 1)
    {
      v163 = 0;
      v164 = 8;
      do
      {
        v165 = *(v162 + 16);
        v166 = *(v165 + 8 * v163);
        if (v166)
        {
          _outNode(a1, v166);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v165 + v164)
        {
          v167 = v165 + v164 >= (*(*(a2 + 136) + 16) + 8 * *(*(a2 + 136) + 4));
        }

        else
        {
          v167 = 1;
        }

        if (!v167)
        {
          appendStringInfoString(a1, ",");
        }

        ++v163;
        v164 += 8;
      }

      while (v163 < *(v162 + 4));
    }

    result = appendStringInfo(a1, "],", v156, v157, v158, v159, v160, v161, v205);
  }

  if (*(a2 + 144))
  {
    appendStringInfo(a1, "pk_attrs:", v13, v14, v15, v16, v17, v18, v192);
    appendStringInfoChar(a1, 91);
    v174 = *(a2 + 144);
    if (v174 && *(v174 + 4) >= 1)
    {
      v175 = 0;
      v176 = 8;
      do
      {
        v177 = *(v174 + 16);
        v178 = *(v177 + 8 * v175);
        if (v178)
        {
          _outNode(a1, v178);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v177 + v176)
        {
          v179 = v177 + v176 >= (*(*(a2 + 144) + 16) + 8 * *(*(a2 + 144) + 4));
        }

        else
        {
          v179 = 1;
        }

        if (!v179)
        {
          appendStringInfoString(a1, ",");
        }

        ++v175;
        v176 += 8;
      }

      while (v175 < *(v174 + 4));
    }

    result = appendStringInfo(a1, "],", v168, v169, v170, v171, v172, v173, v206);
  }

  if (*(a2 + 152))
  {
    result = appendStringInfo(a1, "fk_matchtype:%c,", v13, v14, v15, v16, v17, v18, *(a2 + 152));
  }

  if (*(a2 + 153))
  {
    result = appendStringInfo(a1, "fk_upd_action:%c,", v13, v14, v15, v16, v17, v18, *(a2 + 153));
  }

  if (*(a2 + 154))
  {
    result = appendStringInfo(a1, "fk_del_action:%c,", v13, v14, v15, v16, v17, v18, *(a2 + 154));
  }

  if (*(a2 + 160))
  {
    appendStringInfo(a1, "old_conpfeqop:", v13, v14, v15, v16, v17, v18, v192);
    appendStringInfoChar(a1, 91);
    v186 = *(a2 + 160);
    if (v186 && *(v186 + 4) >= 1)
    {
      v187 = 0;
      v188 = 8;
      do
      {
        v189 = *(v186 + 16);
        v190 = *(v189 + 8 * v187);
        if (v190)
        {
          _outNode(a1, v190);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v189 + v188)
        {
          v191 = v189 + v188 >= (*(*(a2 + 160) + 16) + 8 * *(*(a2 + 160) + 4));
        }

        else
        {
          v191 = 1;
        }

        if (!v191)
        {
          appendStringInfoString(a1, ",");
        }

        ++v187;
        v188 += 8;
      }

      while (v187 < *(v186 + 4));
    }

    result = appendStringInfo(a1, "],", v180, v181, v182, v183, v184, v185, v207);
  }

  if (*(a2 + 168))
  {
    result = appendStringInfo(a1, "old_pktable_oid:%u,", v13, v14, v15, v16, v17, v18, *(a2 + 168));
  }

  if (*(a2 + 172) == 1)
  {
    result = appendStringInfo(a1, "skip_validation:%s,", v13, v14, v15, v16, v17, v18, "true");
  }

  if (*(a2 + 173) == 1)
  {
    return appendStringInfo(a1, "initially_valid:%s,", v13, v14, v15, v16, v17, v18, "true");
  }

  return result;
}