unint64_t _readFromExpr(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  *v3 = 151;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node);
    *(v3 + 8) = v5;
    if (*(a1 + 24) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 32) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 8) = v6;
        v8 = v7++;
      }

      while (*(a1 + 24) > v8);
    }
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    *(v3 + 16) = _readNode(v10);
  }

  return v3;
}

_DWORD *_readOnConflictExpr(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x40uLL);
  v4 = v3;
  *v3 = 152;
  v5 = *(a1 + 24);
  if (v5 == 3)
  {
    v6 = 2;
  }

  else
  {
    v6 = v5 == 2;
  }

  v3[1] = v6;
  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node);
    *(v4 + 1) = v8;
    if (*(a1 + 32) >= 2uLL)
    {
      v9 = v8;
      v10 = 2;
      v11 = 1;
      do
      {
        v12 = _readNode(*(*(a1 + 40) + 8 * v11));
        v9 = lappend(v9, v12);
        *(v4 + 1) = v9;
        v11 = v10++;
      }

      while (*(a1 + 32) > v11);
    }
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    *(v4 + 2) = _readNode(v13);
  }

  v4[6] = *(a1 + 56);
  if (*(a1 + 64))
  {
    v14 = _readNode(**(a1 + 72));
    list_make1_impl(226, v14);
    *(v4 + 4) = v15;
    if (*(a1 + 64) >= 2uLL)
    {
      v16 = v15;
      v17 = 2;
      v18 = 1;
      do
      {
        v19 = _readNode(*(*(a1 + 72) + 8 * v18));
        v16 = lappend(v16, v19);
        *(v4 + 4) = v16;
        v18 = v17++;
      }

      while (*(a1 + 64) > v18);
    }
  }

  v20 = *(a1 + 80);
  if (v20)
  {
    *(v4 + 5) = _readNode(v20);
  }

  v4[12] = *(a1 + 88);
  if (*(a1 + 96))
  {
    v21 = _readNode(**(a1 + 104));
    list_make1_impl(226, v21);
    *(v4 + 7) = v22;
    if (*(a1 + 96) >= 2uLL)
    {
      v23 = v22;
      v24 = 2;
      v25 = 1;
      do
      {
        v26 = _readNode(*(*(a1 + 104) + 8 * v25));
        v23 = lappend(v23, v26);
        *(v4 + 7) = v23;
        v25 = v24++;
      }

      while (*(a1 + 96) > v25);
    }
  }

  return v4;
}

unint64_t _readIntoClause(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x48uLL);
  *v3 = 153;
  v4 = *(a1 + 24);
  if (v4)
  {
    *(v3 + 8) = _readRangeVar(v4);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node);
    *(v3 + 16) = v6;
    if (*(a1 + 32) >= 2uLL)
    {
      v7 = v6;
      v8 = 2;
      v9 = 1;
      do
      {
        v10 = _readNode(*(*(a1 + 40) + 8 * v9));
        v7 = lappend(v7, v10);
        *(v3 + 16) = v7;
        v9 = v8++;
      }

      while (*(a1 + 32) > v9);
    }
  }

  v11 = *(a1 + 48);
  if (v11 && *v11)
  {
    *(v3 + 24) = pstrdup(v11);
  }

  if (*(a1 + 56))
  {
    v12 = _readNode(**(a1 + 64));
    list_make1_impl(226, v12);
    *(v3 + 32) = v13;
    if (*(a1 + 56) >= 2uLL)
    {
      v14 = v13;
      v15 = 2;
      v16 = 1;
      do
      {
        v17 = _readNode(*(*(a1 + 64) + 8 * v16));
        v14 = lappend(v14, v17);
        *(v3 + 32) = v14;
        v16 = v15++;
      }

      while (*(a1 + 56) > v16);
    }
  }

  v18 = *(a1 + 72);
  v19 = v18 - 2;
  v20 = v18 - 1;
  if (v19 >= 3)
  {
    v20 = 0;
  }

  *(v3 + 40) = v20;
  v21 = *(a1 + 80);
  if (v21 && *v21)
  {
    *(v3 + 48) = pstrdup(v21);
  }

  v22 = *(a1 + 88);
  if (v22)
  {
    *(v3 + 56) = _readNode(v22);
  }

  *(v3 + 64) = *(a1 + 96) != 0;
  return v3;
}

unint64_t _readQuery(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0xE0uLL);
  v4 = v3;
  *v3 = 231;
  v5 = *(a1 + 24);
  v6 = v5 - 2;
  v7 = v5 - 1;
  if (v6 >= 6)
  {
    v7 = 0;
  }

  *(v3 + 4) = v7;
  v8 = *(a1 + 28);
  v9 = v8 - 2;
  v10 = v8 - 1;
  if (v9 >= 4)
  {
    v10 = 0;
  }

  *(v3 + 8) = v10;
  *(v3 + 24) = *(a1 + 32) != 0;
  v11 = *(a1 + 40);
  if (v11)
  {
    *(v4 + 32) = _readNode(v11);
  }

  *(v4 + 40) = *(a1 + 48);
  *(v4 + 44) = *(a1 + 52) != 0;
  *(v4 + 45) = *(a1 + 56) != 0;
  *(v4 + 46) = *(a1 + 60) != 0;
  *(v4 + 47) = *(a1 + 64) != 0;
  *(v4 + 48) = *(a1 + 68) != 0;
  *(v4 + 49) = *(a1 + 72) != 0;
  *(v4 + 50) = *(a1 + 76) != 0;
  *(v4 + 51) = *(a1 + 80) != 0;
  *(v4 + 52) = *(a1 + 84) != 0;
  if (*(a1 + 88))
  {
    Node = _readNode(**(a1 + 96));
    list_make1_impl(226, Node);
    *(v4 + 56) = v13;
    if (*(a1 + 88) >= 2uLL)
    {
      v14 = v13;
      v15 = 2;
      v16 = 1;
      do
      {
        v17 = _readNode(*(*(a1 + 96) + 8 * v16));
        v14 = lappend(v14, v17);
        *(v4 + 56) = v14;
        v16 = v15++;
      }

      while (*(a1 + 88) > v16);
    }
  }

  if (*(a1 + 104))
  {
    v18 = _readNode(**(a1 + 112));
    list_make1_impl(226, v18);
    *(v4 + 64) = v19;
    if (*(a1 + 104) >= 2uLL)
    {
      v20 = v19;
      v21 = 2;
      v22 = 1;
      do
      {
        v23 = _readNode(*(*(a1 + 112) + 8 * v22));
        v20 = lappend(v20, v23);
        *(v4 + 64) = v20;
        v22 = v21++;
      }

      while (*(a1 + 104) > v22);
    }
  }

  v24 = *(a1 + 120);
  if (v24)
  {
    *(v4 + 72) = _readFromExpr(v24);
  }

  if (*(a1 + 128))
  {
    v25 = _readNode(**(a1 + 136));
    list_make1_impl(226, v25);
    *(v4 + 80) = v26;
    if (*(a1 + 128) >= 2uLL)
    {
      v27 = v26;
      v28 = 2;
      v29 = 1;
      do
      {
        v30 = _readNode(*(*(a1 + 136) + 8 * v29));
        v27 = lappend(v27, v30);
        *(v4 + 80) = v27;
        v29 = v28++;
      }

      while (*(a1 + 128) > v29);
    }
  }

  v31 = *(a1 + 144);
  if (v31 == 3)
  {
    v32 = 2;
  }

  else
  {
    v32 = v31 == 2;
  }

  *(v4 + 88) = v32;
  v33 = *(a1 + 152);
  if (v33)
  {
    *(v4 + 96) = _readOnConflictExpr(v33);
  }

  if (*(a1 + 160))
  {
    v34 = _readNode(**(a1 + 168));
    list_make1_impl(226, v34);
    *(v4 + 104) = v35;
    if (*(a1 + 160) >= 2uLL)
    {
      v36 = v35;
      v37 = 2;
      v38 = 1;
      do
      {
        v39 = _readNode(*(*(a1 + 168) + 8 * v38));
        v36 = lappend(v36, v39);
        *(v4 + 104) = v36;
        v38 = v37++;
      }

      while (*(a1 + 160) > v38);
    }
  }

  if (*(a1 + 176))
  {
    v40 = _readNode(**(a1 + 184));
    list_make1_impl(226, v40);
    *(v4 + 112) = v41;
    if (*(a1 + 176) >= 2uLL)
    {
      v42 = v41;
      v43 = 2;
      v44 = 1;
      do
      {
        v45 = _readNode(*(*(a1 + 184) + 8 * v44));
        v42 = lappend(v42, v45);
        *(v4 + 112) = v42;
        v44 = v43++;
      }

      while (*(a1 + 176) > v44);
    }
  }

  if (*(a1 + 192))
  {
    v46 = _readNode(**(a1 + 200));
    list_make1_impl(226, v46);
    *(v4 + 120) = v47;
    if (*(a1 + 192) >= 2uLL)
    {
      v48 = v47;
      v49 = 2;
      v50 = 1;
      do
      {
        v51 = _readNode(*(*(a1 + 200) + 8 * v50));
        v48 = lappend(v48, v51);
        *(v4 + 120) = v48;
        v50 = v49++;
      }

      while (*(a1 + 192) > v50);
    }
  }

  v52 = *(a1 + 208);
  if (v52)
  {
    *(v4 + 128) = _readNode(v52);
  }

  if (*(a1 + 216))
  {
    v53 = _readNode(**(a1 + 224));
    list_make1_impl(226, v53);
    *(v4 + 136) = v54;
    if (*(a1 + 216) >= 2uLL)
    {
      v55 = v54;
      v56 = 2;
      v57 = 1;
      do
      {
        v58 = _readNode(*(*(a1 + 224) + 8 * v57));
        v55 = lappend(v55, v58);
        *(v4 + 136) = v55;
        v57 = v56++;
      }

      while (*(a1 + 216) > v57);
    }
  }

  if (*(a1 + 232))
  {
    v59 = _readNode(**(a1 + 240));
    list_make1_impl(226, v59);
    *(v4 + 144) = v60;
    if (*(a1 + 232) >= 2uLL)
    {
      v61 = v60;
      v62 = 2;
      v63 = 1;
      do
      {
        v64 = _readNode(*(*(a1 + 240) + 8 * v63));
        v61 = lappend(v61, v64);
        *(v4 + 144) = v61;
        v63 = v62++;
      }

      while (*(a1 + 232) > v63);
    }
  }

  if (*(a1 + 248))
  {
    v65 = _readNode(**(a1 + 256));
    list_make1_impl(226, v65);
    *(v4 + 152) = v66;
    if (*(a1 + 248) >= 2uLL)
    {
      v67 = v66;
      v68 = 2;
      v69 = 1;
      do
      {
        v70 = _readNode(*(*(a1 + 256) + 8 * v69));
        v67 = lappend(v67, v70);
        *(v4 + 152) = v67;
        v69 = v68++;
      }

      while (*(a1 + 248) > v69);
    }
  }

  v71 = *(a1 + 264);
  if (v71)
  {
    *(v4 + 160) = _readNode(v71);
  }

  v72 = *(a1 + 272);
  if (v72)
  {
    *(v4 + 168) = _readNode(v72);
  }

  v73 = *(a1 + 280);
  if (v73 == 3)
  {
    v74 = 2;
  }

  else
  {
    v74 = v73 == 2;
  }

  *(v4 + 176) = v74;
  if (*(a1 + 288))
  {
    v75 = _readNode(**(a1 + 296));
    list_make1_impl(226, v75);
    *(v4 + 184) = v76;
    if (*(a1 + 288) >= 2uLL)
    {
      v77 = v76;
      v78 = 2;
      v79 = 1;
      do
      {
        v80 = _readNode(*(*(a1 + 296) + 8 * v79));
        v77 = lappend(v77, v80);
        *(v4 + 184) = v77;
        v79 = v78++;
      }

      while (*(a1 + 288) > v79);
    }
  }

  v81 = *(a1 + 304);
  if (v81)
  {
    *(v4 + 192) = _readNode(v81);
  }

  if (*(a1 + 312))
  {
    v82 = _readNode(**(a1 + 320));
    list_make1_impl(226, v82);
    *(v4 + 200) = v83;
    if (*(a1 + 312) >= 2uLL)
    {
      v84 = v83;
      v85 = 2;
      v86 = 1;
      do
      {
        v87 = _readNode(*(*(a1 + 320) + 8 * v86));
        v84 = lappend(v84, v87);
        *(v4 + 200) = v84;
        v86 = v85++;
      }

      while (*(a1 + 312) > v86);
    }
  }

  if (*(a1 + 328))
  {
    v88 = _readNode(**(a1 + 336));
    list_make1_impl(226, v88);
    *(v4 + 208) = v89;
    if (*(a1 + 328) >= 2uLL)
    {
      v90 = v89;
      v91 = 2;
      v92 = 1;
      do
      {
        v93 = _readNode(*(*(a1 + 336) + 8 * v92));
        v90 = lappend(v90, v93);
        *(v4 + 208) = v90;
        v92 = v91++;
      }

      while (*(a1 + 328) > v92);
    }
  }

  *(v4 + 216) = *(a1 + 344);
  *(v4 + 220) = *(a1 + 348);
  return v4;
}

unint64_t _readInsertStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x40uLL);
  *v3 = 233;
  v4 = *(a1 + 24);
  if (v4)
  {
    *(v3 + 8) = _readRangeVar(v4);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node);
    *(v3 + 16) = v6;
    if (*(a1 + 32) >= 2uLL)
    {
      v7 = v6;
      v8 = 2;
      v9 = 1;
      do
      {
        v10 = _readNode(*(*(a1 + 40) + 8 * v9));
        v7 = lappend(v7, v10);
        *(v3 + 16) = v7;
        v9 = v8++;
      }

      while (*(a1 + 32) > v9);
    }
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    *(v3 + 24) = _readNode(v11);
  }

  v12 = *(a1 + 56);
  if (v12)
  {
    *(v3 + 32) = _readOnConflictClause(v12);
  }

  if (*(a1 + 64))
  {
    v13 = _readNode(**(a1 + 72));
    list_make1_impl(226, v13);
    *(v3 + 40) = v14;
    if (*(a1 + 64) >= 2uLL)
    {
      v15 = v14;
      v16 = 2;
      v17 = 1;
      do
      {
        v18 = _readNode(*(*(a1 + 72) + 8 * v17));
        v15 = lappend(v15, v18);
        *(v3 + 40) = v15;
        v17 = v16++;
      }

      while (*(a1 + 64) > v17);
    }
  }

  v19 = *(a1 + 80);
  if (v19)
  {
    *(v3 + 48) = _readWithClause(v19);
  }

  v20 = *(a1 + 88);
  if (v20 == 3)
  {
    v21 = 2;
  }

  else
  {
    v21 = v20 == 2;
  }

  *(v3 + 56) = v21;
  return v3;
}

unint64_t _readDeleteStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x30uLL);
  *v3 = 234;
  v4 = *(a1 + 24);
  if (v4)
  {
    *(v3 + 8) = _readRangeVar(v4);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node);
    *(v3 + 16) = v6;
    if (*(a1 + 32) >= 2uLL)
    {
      v7 = v6;
      v8 = 2;
      v9 = 1;
      do
      {
        v10 = _readNode(*(*(a1 + 40) + 8 * v9));
        v7 = lappend(v7, v10);
        *(v3 + 16) = v7;
        v9 = v8++;
      }

      while (*(a1 + 32) > v9);
    }
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    *(v3 + 24) = _readNode(v11);
  }

  if (*(a1 + 56))
  {
    v12 = _readNode(**(a1 + 64));
    list_make1_impl(226, v12);
    *(v3 + 32) = v13;
    if (*(a1 + 56) >= 2uLL)
    {
      v14 = v13;
      v15 = 2;
      v16 = 1;
      do
      {
        v17 = _readNode(*(*(a1 + 64) + 8 * v16));
        v14 = lappend(v14, v17);
        *(v3 + 32) = v14;
        v16 = v15++;
      }

      while (*(a1 + 56) > v16);
    }
  }

  v18 = *(a1 + 72);
  if (v18)
  {
    *(v3 + 40) = _readWithClause(v18);
  }

  return v3;
}

unint64_t _readUpdateStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x38uLL);
  *v3 = 235;
  v4 = *(a1 + 24);
  if (v4)
  {
    *(v3 + 8) = _readRangeVar(v4);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node);
    *(v3 + 16) = v6;
    if (*(a1 + 32) >= 2uLL)
    {
      v7 = v6;
      v8 = 2;
      v9 = 1;
      do
      {
        v10 = _readNode(*(*(a1 + 40) + 8 * v9));
        v7 = lappend(v7, v10);
        *(v3 + 16) = v7;
        v9 = v8++;
      }

      while (*(a1 + 32) > v9);
    }
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    *(v3 + 24) = _readNode(v11);
  }

  if (*(a1 + 56))
  {
    v12 = _readNode(**(a1 + 64));
    list_make1_impl(226, v12);
    *(v3 + 32) = v13;
    if (*(a1 + 56) >= 2uLL)
    {
      v14 = v13;
      v15 = 2;
      v16 = 1;
      do
      {
        v17 = _readNode(*(*(a1 + 64) + 8 * v16));
        v14 = lappend(v14, v17);
        *(v3 + 32) = v14;
        v16 = v15++;
      }

      while (*(a1 + 56) > v16);
    }
  }

  if (*(a1 + 72))
  {
    v18 = _readNode(**(a1 + 80));
    list_make1_impl(226, v18);
    *(v3 + 40) = v19;
    if (*(a1 + 72) >= 2uLL)
    {
      v20 = v19;
      v21 = 2;
      v22 = 1;
      do
      {
        v23 = _readNode(*(*(a1 + 80) + 8 * v22));
        v20 = lappend(v20, v23);
        *(v3 + 40) = v20;
        v22 = v21++;
      }

      while (*(a1 + 72) > v22);
    }
  }

  v24 = *(a1 + 88);
  if (v24)
  {
    *(v3 + 48) = _readWithClause(v24);
  }

  return v3;
}

unint64_t _readSelectStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x98uLL);
  *v3 = 236;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node);
    *(v3 + 8) = v5;
    if (*(a1 + 24) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 32) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 8) = v6;
        v8 = v7++;
      }

      while (*(a1 + 24) > v8);
    }
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    *(v3 + 16) = _readIntoClause(v10);
  }

  if (*(a1 + 48))
  {
    v11 = _readNode(**(a1 + 56));
    list_make1_impl(226, v11);
    *(v3 + 24) = v12;
    if (*(a1 + 48) >= 2uLL)
    {
      v13 = v12;
      v14 = 2;
      v15 = 1;
      do
      {
        v16 = _readNode(*(*(a1 + 56) + 8 * v15));
        v13 = lappend(v13, v16);
        *(v3 + 24) = v13;
        v15 = v14++;
      }

      while (*(a1 + 48) > v15);
    }
  }

  if (*(a1 + 64))
  {
    v17 = _readNode(**(a1 + 72));
    list_make1_impl(226, v17);
    *(v3 + 32) = v18;
    if (*(a1 + 64) >= 2uLL)
    {
      v19 = v18;
      v20 = 2;
      v21 = 1;
      do
      {
        v22 = _readNode(*(*(a1 + 72) + 8 * v21));
        v19 = lappend(v19, v22);
        *(v3 + 32) = v19;
        v21 = v20++;
      }

      while (*(a1 + 64) > v21);
    }
  }

  v23 = *(a1 + 80);
  if (v23)
  {
    *(v3 + 40) = _readNode(v23);
  }

  if (*(a1 + 88))
  {
    v24 = _readNode(**(a1 + 96));
    list_make1_impl(226, v24);
    *(v3 + 48) = v25;
    if (*(a1 + 88) >= 2uLL)
    {
      v26 = v25;
      v27 = 2;
      v28 = 1;
      do
      {
        v29 = _readNode(*(*(a1 + 96) + 8 * v28));
        v26 = lappend(v26, v29);
        *(v3 + 48) = v26;
        v28 = v27++;
      }

      while (*(a1 + 88) > v28);
    }
  }

  v30 = *(a1 + 104);
  if (v30)
  {
    *(v3 + 56) = _readNode(v30);
  }

  if (*(a1 + 112))
  {
    v31 = _readNode(**(a1 + 120));
    list_make1_impl(226, v31);
    *(v3 + 64) = v32;
    if (*(a1 + 112) >= 2uLL)
    {
      v33 = v32;
      v34 = 2;
      v35 = 1;
      do
      {
        v36 = _readNode(*(*(a1 + 120) + 8 * v35));
        v33 = lappend(v33, v36);
        *(v3 + 64) = v33;
        v35 = v34++;
      }

      while (*(a1 + 112) > v35);
    }
  }

  if (*(a1 + 128))
  {
    v37 = _readNode(**(a1 + 136));
    list_make1_impl(226, v37);
    *(v3 + 72) = v38;
    if (*(a1 + 128) >= 2uLL)
    {
      v39 = v38;
      v40 = 2;
      v41 = 1;
      do
      {
        v42 = _readNode(*(*(a1 + 136) + 8 * v41));
        v39 = lappend(v39, v42);
        *(v3 + 72) = v39;
        v41 = v40++;
      }

      while (*(a1 + 128) > v41);
    }
  }

  if (*(a1 + 144))
  {
    v43 = _readNode(**(a1 + 152));
    list_make1_impl(226, v43);
    *(v3 + 80) = v44;
    if (*(a1 + 144) >= 2uLL)
    {
      v45 = v44;
      v46 = 2;
      v47 = 1;
      do
      {
        v48 = _readNode(*(*(a1 + 152) + 8 * v47));
        v45 = lappend(v45, v48);
        *(v3 + 80) = v45;
        v47 = v46++;
      }

      while (*(a1 + 144) > v47);
    }
  }

  v49 = *(a1 + 160);
  if (v49)
  {
    *(v3 + 88) = _readNode(v49);
  }

  v50 = *(a1 + 168);
  if (v50)
  {
    *(v3 + 96) = _readNode(v50);
  }

  v51 = *(a1 + 176);
  if (v51 == 3)
  {
    v52 = 2;
  }

  else
  {
    v52 = v51 == 2;
  }

  *(v3 + 104) = v52;
  if (*(a1 + 184))
  {
    v53 = _readNode(**(a1 + 192));
    list_make1_impl(226, v53);
    *(v3 + 112) = v54;
    if (*(a1 + 184) >= 2uLL)
    {
      v55 = v54;
      v56 = 2;
      v57 = 1;
      do
      {
        v58 = _readNode(*(*(a1 + 192) + 8 * v57));
        v55 = lappend(v55, v58);
        *(v3 + 112) = v55;
        v57 = v56++;
      }

      while (*(a1 + 184) > v57);
    }
  }

  v59 = *(a1 + 200);
  if (v59)
  {
    *(v3 + 120) = _readWithClause(v59);
  }

  v60 = *(a1 + 208);
  v61 = v60 - 2;
  v62 = v60 - 1;
  if (v61 >= 3)
  {
    v62 = 0;
  }

  *(v3 + 128) = v62;
  *(v3 + 132) = *(a1 + 212) != 0;
  if (*(a1 + 216))
  {
    *(v3 + 136) = _readSelectStmt();
  }

  if (*(a1 + 224))
  {
    *(v3 + 144) = _readSelectStmt();
  }

  return v3;
}

unint64_t _readAlterTableStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x20uLL);
  *v3 = 237;
  v4 = *(a1 + 24);
  if (v4)
  {
    *(v3 + 8) = _readRangeVar(v4);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node);
    *(v3 + 16) = v6;
    if (*(a1 + 32) >= 2uLL)
    {
      v7 = v6;
      v8 = 2;
      v9 = 1;
      do
      {
        v10 = _readNode(*(*(a1 + 40) + 8 * v9));
        v7 = lappend(v7, v10);
        *(v3 + 16) = v7;
        v9 = v8++;
      }

      while (*(a1 + 32) > v9);
    }
  }

  v11 = *(a1 + 48);
  v12 = v11 - 2;
  v13 = v11 - 1;
  if (v12 >= 0x31)
  {
    v13 = 0;
  }

  *(v3 + 24) = v13;
  *(v3 + 28) = *(a1 + 52) != 0;
  return v3;
}

_DWORD *_readAlterTableCmd(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x30uLL);
  v4 = v3;
  *v3 = 238;
  v5 = *(a1 + 24);
  v6 = v5 - 2;
  v7 = v5 - 1;
  if (v6 >= 0x42)
  {
    v7 = 0;
  }

  v3[1] = v7;
  v8 = *(a1 + 32);
  if (v8 && *v8)
  {
    *(v4 + 1) = pstrdup(v8);
  }

  *(v4 + 8) = *(a1 + 40);
  v9 = *(a1 + 48);
  if (v9)
  {
    v10 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
    v11 = v10;
    *v10 = 390;
    v12 = *(v9 + 24);
    v13 = v12 - 2;
    v14 = v12 - 1;
    if (v13 >= 3)
    {
      v14 = 0;
    }

    v10[1] = v14;
    v15 = *(v9 + 32);
    if (v15 && *v15)
    {
      *(v11 + 1) = pstrdup(v15);
    }

    v11[4] = *(v9 + 40);
    *(v4 + 3) = v11;
  }

  v16 = *(a1 + 56);
  if (v16)
  {
    *(v4 + 4) = _readNode(v16);
  }

  v4[10] = *(a1 + 64) == 2;
  *(v4 + 44) = *(a1 + 68) != 0;
  return v4;
}

unint64_t _readAlterDomainStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x28uLL);
  v4 = v3;
  *v3 = 239;
  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = *v5;
    if (v6)
    {
      *(v3 + 4) = v6;
    }
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node);
    *(v4 + 8) = v8;
    if (*(a1 + 32) >= 2uLL)
    {
      v9 = v8;
      v10 = 2;
      v11 = 1;
      do
      {
        v12 = _readNode(*(*(a1 + 40) + 8 * v11));
        v9 = lappend(v9, v12);
        *(v4 + 8) = v9;
        v11 = v10++;
      }

      while (*(a1 + 32) > v11);
    }
  }

  v13 = *(a1 + 48);
  if (v13 && *v13)
  {
    *(v4 + 16) = pstrdup(v13);
  }

  v14 = *(a1 + 56);
  if (v14)
  {
    *(v4 + 24) = _readNode(v14);
  }

  *(v4 + 32) = *(a1 + 64) == 2;
  *(v4 + 36) = *(a1 + 68) != 0;
  return v4;
}

void *_readSetOperationStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x40uLL);
  v4 = v3;
  *v3 = 240;
  v5 = *(a1 + 24);
  v6 = v5 - 2;
  v7 = v5 - 1;
  if (v6 >= 3)
  {
    v7 = 0;
  }

  *(v3 + 4) = v7;
  *(v3 + 8) = *(a1 + 28) != 0;
  v8 = *(a1 + 32);
  if (v8)
  {
    v4[2] = _readNode(v8);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    v4[3] = _readNode(v9);
  }

  if (*(a1 + 48))
  {
    Node = _readNode(**(a1 + 56));
    list_make1_impl(226, Node);
    v4[4] = v11;
    if (*(a1 + 48) >= 2uLL)
    {
      v12 = v11;
      v13 = 2;
      v14 = 1;
      do
      {
        v15 = _readNode(*(*(a1 + 56) + 8 * v14));
        v12 = lappend(v12, v15);
        v4[4] = v12;
        v14 = v13++;
      }

      while (*(a1 + 48) > v14);
    }
  }

  if (*(a1 + 64))
  {
    v16 = _readNode(**(a1 + 72));
    list_make1_impl(226, v16);
    v4[5] = v17;
    if (*(a1 + 64) >= 2uLL)
    {
      v18 = v17;
      v19 = 2;
      v20 = 1;
      do
      {
        v21 = _readNode(*(*(a1 + 72) + 8 * v20));
        v18 = lappend(v18, v21);
        v4[5] = v18;
        v20 = v19++;
      }

      while (*(a1 + 64) > v20);
    }
  }

  if (*(a1 + 80))
  {
    v22 = _readNode(**(a1 + 88));
    list_make1_impl(226, v22);
    v4[6] = v23;
    if (*(a1 + 80) >= 2uLL)
    {
      v24 = v23;
      v25 = 2;
      v26 = 1;
      do
      {
        v27 = _readNode(*(*(a1 + 88) + 8 * v26));
        v24 = lappend(v24, v27);
        v4[6] = v24;
        v26 = v25++;
      }

      while (*(a1 + 80) > v26);
    }
  }

  if (*(a1 + 96))
  {
    v28 = _readNode(**(a1 + 104));
    list_make1_impl(226, v28);
    v4[7] = v29;
    if (*(a1 + 96) >= 2uLL)
    {
      v30 = v29;
      v31 = 2;
      v32 = 1;
      do
      {
        v33 = _readNode(*(*(a1 + 104) + 8 * v32));
        v30 = lappend(v30, v33);
        v4[7] = v30;
        v32 = v31++;
      }

      while (*(a1 + 96) > v32);
    }
  }

  return v4;
}

unint64_t _readGrantStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x30uLL);
  v4 = v3;
  *v3 = 241;
  *(v3 + 4) = *(a1 + 24) != 0;
  v5 = *(a1 + 28);
  if (v5 == 3)
  {
    v6 = 2;
  }

  else
  {
    v6 = v5 == 2;
  }

  *(v3 + 8) = v6;
  v7 = *(a1 + 32);
  v8 = v7 - 2;
  v9 = v7 - 1;
  if (v8 >= 0x31)
  {
    v9 = 0;
  }

  *(v3 + 12) = v9;
  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node);
    *(v4 + 16) = v11;
    if (*(a1 + 40) >= 2uLL)
    {
      v12 = v11;
      v13 = 2;
      v14 = 1;
      do
      {
        v15 = _readNode(*(*(a1 + 48) + 8 * v14));
        v12 = lappend(v12, v15);
        *(v4 + 16) = v12;
        v14 = v13++;
      }

      while (*(a1 + 40) > v14);
    }
  }

  if (*(a1 + 56))
  {
    v16 = _readNode(**(a1 + 64));
    list_make1_impl(226, v16);
    *(v4 + 24) = v17;
    if (*(a1 + 56) >= 2uLL)
    {
      v18 = v17;
      v19 = 2;
      v20 = 1;
      do
      {
        v21 = _readNode(*(*(a1 + 64) + 8 * v20));
        v18 = lappend(v18, v21);
        *(v4 + 24) = v18;
        v20 = v19++;
      }

      while (*(a1 + 56) > v20);
    }
  }

  if (*(a1 + 72))
  {
    v22 = _readNode(**(a1 + 80));
    list_make1_impl(226, v22);
    *(v4 + 32) = v23;
    if (*(a1 + 72) >= 2uLL)
    {
      v24 = v23;
      v25 = 2;
      v26 = 1;
      do
      {
        v27 = _readNode(*(*(a1 + 80) + 8 * v26));
        v24 = lappend(v24, v27);
        *(v4 + 32) = v24;
        v26 = v25++;
      }

      while (*(a1 + 72) > v26);
    }
  }

  *(v4 + 40) = *(a1 + 88) != 0;
  *(v4 + 44) = *(a1 + 92) == 2;
  return v4;
}

unint64_t _readGrantRoleStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x30uLL);
  *v3 = 242;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node);
    *(v3 + 8) = v5;
    if (*(a1 + 24) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 32) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 8) = v6;
        v8 = v7++;
      }

      while (*(a1 + 24) > v8);
    }
  }

  if (*(a1 + 40))
  {
    v10 = _readNode(**(a1 + 48));
    list_make1_impl(226, v10);
    *(v3 + 16) = v11;
    if (*(a1 + 40) >= 2uLL)
    {
      v12 = v11;
      v13 = 2;
      v14 = 1;
      do
      {
        v15 = _readNode(*(*(a1 + 48) + 8 * v14));
        v12 = lappend(v12, v15);
        *(v3 + 16) = v12;
        v14 = v13++;
      }

      while (*(a1 + 40) > v14);
    }
  }

  *(v3 + 24) = *(a1 + 56) != 0;
  *(v3 + 25) = *(a1 + 60) != 0;
  v16 = *(a1 + 64);
  if (v16)
  {
    v17 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
    v18 = v17;
    *v17 = 390;
    v19 = *(v16 + 24);
    v20 = v19 - 2;
    v21 = v19 - 1;
    if (v20 >= 3)
    {
      v21 = 0;
    }

    v17[1] = v21;
    v22 = *(v16 + 32);
    if (v22 && *v22)
    {
      *(v18 + 1) = pstrdup(v22);
    }

    v18[4] = *(v16 + 40);
    *(v3 + 32) = v18;
  }

  *(v3 + 40) = *(a1 + 72) == 2;
  return v3;
}

unint64_t _readAlterDefaultPrivilegesStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  *v3 = 243;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node);
    *(v3 + 8) = v5;
    if (*(a1 + 24) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 32) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 8) = v6;
        v8 = v7++;
      }

      while (*(a1 + 24) > v8);
    }
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    *(v3 + 16) = _readGrantStmt(v10);
  }

  return v3;
}

_DWORD *_readClosePortalStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  result = MemoryContextAllocZeroAligned(*v2, 0x10uLL);
  *result = 244;
  v4 = *(a1 + 24);
  if (v4)
  {
    if (*v4)
    {
      v5 = result;
      v6 = pstrdup(v4);
      result = v5;
      *(v5 + 1) = v6;
    }
  }

  return result;
}

unint64_t _readClusterStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x20uLL);
  *v3 = 245;
  v4 = *(a1 + 24);
  if (v4)
  {
    *(v3 + 8) = _readRangeVar(v4);
  }

  v5 = *(a1 + 32);
  if (v5 && *v5)
  {
    *(v3 + 16) = pstrdup(v5);
  }

  *(v3 + 24) = *(a1 + 40);
  return v3;
}

unint64_t _readCopyStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x40uLL);
  *v3 = 246;
  v4 = *(a1 + 24);
  if (v4)
  {
    *(v3 + 8) = _readRangeVar(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    *(v3 + 16) = _readNode(v5);
  }

  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node);
    *(v3 + 24) = v7;
    if (*(a1 + 40) >= 2uLL)
    {
      v8 = v7;
      v9 = 2;
      v10 = 1;
      do
      {
        v11 = _readNode(*(*(a1 + 48) + 8 * v10));
        v8 = lappend(v8, v11);
        *(v3 + 24) = v8;
        v10 = v9++;
      }

      while (*(a1 + 40) > v10);
    }
  }

  *(v3 + 32) = *(a1 + 56) != 0;
  *(v3 + 33) = *(a1 + 60) != 0;
  v12 = *(a1 + 64);
  if (v12 && *v12)
  {
    *(v3 + 40) = pstrdup(v12);
  }

  if (*(a1 + 72))
  {
    v13 = _readNode(**(a1 + 80));
    list_make1_impl(226, v13);
    *(v3 + 48) = v14;
    if (*(a1 + 72) >= 2uLL)
    {
      v15 = v14;
      v16 = 2;
      v17 = 1;
      do
      {
        v18 = _readNode(*(*(a1 + 80) + 8 * v17));
        v15 = lappend(v15, v18);
        *(v3 + 48) = v15;
        v17 = v16++;
      }

      while (*(a1 + 72) > v17);
    }
  }

  v19 = *(a1 + 88);
  if (v19)
  {
    *(v3 + 56) = _readNode(v19);
  }

  return v3;
}

unint64_t _readCreateStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x68uLL);
  *v3 = 247;
  v4 = *(a1 + 24);
  if (v4)
  {
    *(v3 + 8) = _readRangeVar(v4);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node);
    *(v3 + 16) = v6;
    if (*(a1 + 32) >= 2uLL)
    {
      v7 = v6;
      v8 = 2;
      v9 = 1;
      do
      {
        v10 = _readNode(*(*(a1 + 40) + 8 * v9));
        v7 = lappend(v7, v10);
        *(v3 + 16) = v7;
        v9 = v8++;
      }

      while (*(a1 + 32) > v9);
    }
  }

  if (*(a1 + 48))
  {
    v11 = _readNode(**(a1 + 56));
    list_make1_impl(226, v11);
    *(v3 + 24) = v12;
    if (*(a1 + 48) >= 2uLL)
    {
      v13 = v12;
      v14 = 2;
      v15 = 1;
      do
      {
        v16 = _readNode(*(*(a1 + 56) + 8 * v15));
        v13 = lappend(v13, v16);
        *(v3 + 24) = v13;
        v15 = v14++;
      }

      while (*(a1 + 48) > v15);
    }
  }

  v17 = *(a1 + 64);
  if (v17)
  {
    *(v3 + 32) = _readPartitionBoundSpec(v17);
  }

  v18 = *(a1 + 72);
  if (v18)
  {
    *(v3 + 40) = _readPartitionSpec(v18);
  }

  v19 = *(a1 + 80);
  if (v19)
  {
    *(v3 + 48) = _readTypeName(v19);
  }

  if (*(a1 + 88))
  {
    v20 = _readNode(**(a1 + 96));
    list_make1_impl(226, v20);
    *(v3 + 56) = v21;
    if (*(a1 + 88) >= 2uLL)
    {
      v22 = v21;
      v23 = 2;
      v24 = 1;
      do
      {
        v25 = _readNode(*(*(a1 + 96) + 8 * v24));
        v22 = lappend(v22, v25);
        *(v3 + 56) = v22;
        v24 = v23++;
      }

      while (*(a1 + 88) > v24);
    }
  }

  if (*(a1 + 104))
  {
    v26 = _readNode(**(a1 + 112));
    list_make1_impl(226, v26);
    *(v3 + 64) = v27;
    if (*(a1 + 104) >= 2uLL)
    {
      v28 = v27;
      v29 = 2;
      v30 = 1;
      do
      {
        v31 = _readNode(*(*(a1 + 112) + 8 * v30));
        v28 = lappend(v28, v31);
        *(v3 + 64) = v28;
        v30 = v29++;
      }

      while (*(a1 + 104) > v30);
    }
  }

  v32 = *(a1 + 120);
  v33 = v32 - 2;
  v34 = v32 - 1;
  if (v33 >= 3)
  {
    v34 = 0;
  }

  *(v3 + 72) = v34;
  v35 = *(a1 + 128);
  if (v35 && *v35)
  {
    *(v3 + 80) = pstrdup(v35);
  }

  v36 = *(a1 + 136);
  if (v36 && *v36)
  {
    *(v3 + 88) = pstrdup(v36);
  }

  *(v3 + 96) = *(a1 + 144) != 0;
  return v3;
}

unint64_t _readDefineStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x30uLL);
  v4 = v3;
  *v3 = 248;
  v5 = *(a1 + 24);
  v6 = v5 - 2;
  v7 = v5 - 1;
  if (v6 >= 0x31)
  {
    v7 = 0;
  }

  *(v3 + 4) = v7;
  *(v3 + 8) = *(a1 + 28) != 0;
  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node);
    *(v4 + 16) = v9;
    if (*(a1 + 32) >= 2uLL)
    {
      v10 = v9;
      v11 = 2;
      v12 = 1;
      do
      {
        v13 = _readNode(*(*(a1 + 40) + 8 * v12));
        v10 = lappend(v10, v13);
        *(v4 + 16) = v10;
        v12 = v11++;
      }

      while (*(a1 + 32) > v12);
    }
  }

  if (*(a1 + 48))
  {
    v14 = _readNode(**(a1 + 56));
    list_make1_impl(226, v14);
    *(v4 + 24) = v15;
    if (*(a1 + 48) >= 2uLL)
    {
      v16 = v15;
      v17 = 2;
      v18 = 1;
      do
      {
        v19 = _readNode(*(*(a1 + 56) + 8 * v18));
        v16 = lappend(v16, v19);
        *(v4 + 24) = v16;
        v18 = v17++;
      }

      while (*(a1 + 48) > v18);
    }
  }

  if (*(a1 + 64))
  {
    v20 = _readNode(**(a1 + 72));
    list_make1_impl(226, v20);
    *(v4 + 32) = v21;
    if (*(a1 + 64) >= 2uLL)
    {
      v22 = v21;
      v23 = 2;
      v24 = 1;
      do
      {
        v25 = _readNode(*(*(a1 + 72) + 8 * v24));
        v22 = lappend(v22, v25);
        *(v4 + 32) = v22;
        v24 = v23++;
      }

      while (*(a1 + 64) > v24);
    }
  }

  *(v4 + 40) = *(a1 + 80) != 0;
  *(v4 + 41) = *(a1 + 84) != 0;
  return v4;
}

unint64_t _readDropStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x20uLL);
  *v3 = 249;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node);
    *(v3 + 8) = v5;
    if (*(a1 + 24) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 32) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 8) = v6;
        v8 = v7++;
      }

      while (*(a1 + 24) > v8);
    }
  }

  v10 = *(a1 + 40);
  v11 = v10 - 2;
  v12 = v10 - 1;
  if (v11 >= 0x31)
  {
    v12 = 0;
  }

  *(v3 + 16) = v12;
  *(v3 + 20) = *(a1 + 44) == 2;
  *(v3 + 24) = *(a1 + 48) != 0;
  *(v3 + 25) = *(a1 + 52) != 0;
  return v3;
}

unint64_t _readTruncateStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  *v3 = 250;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node);
    *(v3 + 8) = v5;
    if (*(a1 + 24) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 32) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 8) = v6;
        v8 = v7++;
      }

      while (*(a1 + 24) > v8);
    }
  }

  *(v3 + 16) = *(a1 + 40) != 0;
  *(v3 + 20) = *(a1 + 44) == 2;
  return v3;
}

_DWORD *_readCommentStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  v4 = v3;
  *v3 = 251;
  v5 = *(a1 + 24);
  v6 = v5 - 2;
  v7 = v5 - 1;
  if (v6 >= 0x31)
  {
    v7 = 0;
  }

  v3[1] = v7;
  v8 = *(a1 + 32);
  if (v8)
  {
    *(v4 + 1) = _readNode(v8);
  }

  v9 = *(a1 + 40);
  if (v9 && *v9)
  {
    *(v4 + 2) = pstrdup(v9);
  }

  return v4;
}

unint64_t _readFetchStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  result = MemoryContextAllocZeroAligned(*v2, 0x20uLL);
  *result = 252;
  v4 = *(a1 + 24);
  v5 = v4 - 2;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    v6 = 0;
  }

  *(result + 4) = v6;
  *(result + 8) = *(a1 + 32);
  v7 = *(a1 + 40);
  if (v7 && *v7)
  {
    v8 = result;
    v9 = pstrdup(*(a1 + 40));
    result = v8;
    *(v8 + 16) = v9;
  }

  *(result + 24) = *(a1 + 48) != 0;
  return result;
}

unint64_t _readIndexStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x78uLL);
  *v3 = 253;
  v4 = *(a1 + 24);
  if (v4 && *v4)
  {
    *(v3 + 8) = pstrdup(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    *(v3 + 16) = _readRangeVar(v5);
  }

  v6 = *(a1 + 40);
  if (v6 && *v6)
  {
    *(v3 + 24) = pstrdup(v6);
  }

  v7 = *(a1 + 48);
  if (v7 && *v7)
  {
    *(v3 + 32) = pstrdup(v7);
  }

  if (*(a1 + 56))
  {
    Node = _readNode(**(a1 + 64));
    list_make1_impl(226, Node);
    *(v3 + 40) = v9;
    if (*(a1 + 56) >= 2uLL)
    {
      v10 = v9;
      v11 = 2;
      v12 = 1;
      do
      {
        v13 = _readNode(*(*(a1 + 64) + 8 * v12));
        v10 = lappend(v10, v13);
        *(v3 + 40) = v10;
        v12 = v11++;
      }

      while (*(a1 + 56) > v12);
    }
  }

  if (*(a1 + 72))
  {
    v14 = _readNode(**(a1 + 80));
    list_make1_impl(226, v14);
    *(v3 + 48) = v15;
    if (*(a1 + 72) >= 2uLL)
    {
      v16 = v15;
      v17 = 2;
      v18 = 1;
      do
      {
        v19 = _readNode(*(*(a1 + 80) + 8 * v18));
        v16 = lappend(v16, v19);
        *(v3 + 48) = v16;
        v18 = v17++;
      }

      while (*(a1 + 72) > v18);
    }
  }

  if (*(a1 + 88))
  {
    v20 = _readNode(**(a1 + 96));
    list_make1_impl(226, v20);
    *(v3 + 56) = v21;
    if (*(a1 + 88) >= 2uLL)
    {
      v22 = v21;
      v23 = 2;
      v24 = 1;
      do
      {
        v25 = _readNode(*(*(a1 + 96) + 8 * v24));
        v22 = lappend(v22, v25);
        *(v3 + 56) = v22;
        v24 = v23++;
      }

      while (*(a1 + 88) > v24);
    }
  }

  v26 = *(a1 + 104);
  if (v26)
  {
    *(v3 + 64) = _readNode(v26);
  }

  if (*(a1 + 112))
  {
    v27 = _readNode(**(a1 + 120));
    list_make1_impl(226, v27);
    *(v3 + 72) = v28;
    if (*(a1 + 112) >= 2uLL)
    {
      v29 = v28;
      v30 = 2;
      v31 = 1;
      do
      {
        v32 = _readNode(*(*(a1 + 120) + 8 * v31));
        v29 = lappend(v29, v32);
        *(v3 + 72) = v29;
        v31 = v30++;
      }

      while (*(a1 + 112) > v31);
    }
  }

  v33 = *(a1 + 128);
  if (v33 && *v33)
  {
    *(v3 + 80) = pstrdup(v33);
  }

  *(v3 + 88) = *(a1 + 136);
  *(v3 + 92) = *(a1 + 140);
  *(v3 + 96) = *(a1 + 144);
  *(v3 + 100) = *(a1 + 148);
  *(v3 + 104) = *(a1 + 152) != 0;
  *(v3 + 105) = *(a1 + 156) != 0;
  *(v3 + 106) = *(a1 + 160) != 0;
  *(v3 + 107) = *(a1 + 164) != 0;
  *(v3 + 108) = *(a1 + 168) != 0;
  *(v3 + 109) = *(a1 + 172) != 0;
  *(v3 + 110) = *(a1 + 176) != 0;
  *(v3 + 111) = *(a1 + 180) != 0;
  *(v3 + 112) = *(a1 + 184) != 0;
  return v3;
}

unint64_t _readCreateFunctionStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x28uLL);
  *v3 = 254;
  *(v3 + 4) = *(a1 + 24) != 0;
  *(v3 + 5) = *(a1 + 28) != 0;
  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node);
    *(v3 + 8) = v5;
    if (*(a1 + 32) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 40) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 8) = v6;
        v8 = v7++;
      }

      while (*(a1 + 32) > v8);
    }
  }

  if (*(a1 + 48))
  {
    v10 = _readNode(**(a1 + 56));
    list_make1_impl(226, v10);
    *(v3 + 16) = v11;
    if (*(a1 + 48) >= 2uLL)
    {
      v12 = v11;
      v13 = 2;
      v14 = 1;
      do
      {
        v15 = _readNode(*(*(a1 + 56) + 8 * v14));
        v12 = lappend(v12, v15);
        *(v3 + 16) = v12;
        v14 = v13++;
      }

      while (*(a1 + 48) > v14);
    }
  }

  v16 = *(a1 + 64);
  if (v16)
  {
    *(v3 + 24) = _readTypeName(v16);
  }

  if (*(a1 + 72))
  {
    v17 = _readNode(**(a1 + 80));
    list_make1_impl(226, v17);
    *(v3 + 32) = v18;
    if (*(a1 + 72) >= 2uLL)
    {
      v19 = v18;
      v20 = 2;
      v21 = 1;
      do
      {
        v22 = _readNode(*(*(a1 + 80) + 8 * v21));
        v19 = lappend(v19, v22);
        *(v3 + 32) = v19;
        v21 = v20++;
      }

      while (*(a1 + 72) > v21);
    }
  }

  return v3;
}

_DWORD *_readAlterFunctionStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  v4 = v3;
  *v3 = 255;
  v5 = *(a1 + 24);
  v6 = v5 - 2;
  v7 = v5 - 1;
  if (v6 >= 0x31)
  {
    v7 = 0;
  }

  v3[1] = v7;
  v8 = *(a1 + 32);
  if (v8)
  {
    *(v4 + 1) = _readObjectWithArgs(v8);
  }

  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node);
    *(v4 + 2) = v10;
    if (*(a1 + 40) >= 2uLL)
    {
      v11 = v10;
      v12 = 2;
      v13 = 1;
      do
      {
        v14 = _readNode(*(*(a1 + 48) + 8 * v13));
        v11 = lappend(v11, v14);
        *(v4 + 2) = v11;
        v13 = v12++;
      }

      while (*(a1 + 40) > v13);
    }
  }

  return v4;
}

unint64_t _readDoStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x10uLL);
  *v3 = 256;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node);
    *(v3 + 8) = v5;
    if (*(a1 + 24) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 32) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 8) = v6;
        v8 = v7++;
      }

      while (*(a1 + 24) > v8);
    }
  }

  return v3;
}

_DWORD *_readRenameStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x38uLL);
  v4 = v3;
  *v3 = 257;
  v5 = *(a1 + 24);
  v6 = v5 - 2;
  v7 = v5 - 1;
  if (v6 >= 0x31)
  {
    v7 = 0;
  }

  v3[1] = v7;
  v8 = *(a1 + 28);
  v9 = v8 - 2;
  v10 = v8 - 1;
  if (v9 >= 0x31)
  {
    v10 = 0;
  }

  v3[2] = v10;
  v11 = *(a1 + 32);
  if (v11)
  {
    *(v4 + 2) = _readRangeVar(v11);
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    *(v4 + 3) = _readNode(v12);
  }

  v13 = *(a1 + 48);
  if (v13 && *v13)
  {
    *(v4 + 4) = pstrdup(v13);
  }

  v14 = *(a1 + 56);
  if (v14 && *v14)
  {
    *(v4 + 5) = pstrdup(v14);
  }

  v4[12] = *(a1 + 64) == 2;
  *(v4 + 52) = *(a1 + 68) != 0;
  return v4;
}

unint64_t _readRuleStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x38uLL);
  *v3 = 258;
  v4 = *(a1 + 24);
  if (v4)
  {
    *(v3 + 8) = _readRangeVar(v4);
  }

  v5 = *(a1 + 32);
  if (v5 && *v5)
  {
    *(v3 + 16) = pstrdup(v5);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    *(v3 + 24) = _readNode(v6);
  }

  v7 = *(a1 + 48);
  v8 = v7 - 2;
  v9 = v7 - 1;
  if (v8 >= 6)
  {
    v9 = 0;
  }

  *(v3 + 32) = v9;
  *(v3 + 36) = *(a1 + 52) != 0;
  if (*(a1 + 56))
  {
    Node = _readNode(**(a1 + 64));
    list_make1_impl(226, Node);
    *(v3 + 40) = v11;
    if (*(a1 + 56) >= 2uLL)
    {
      v12 = v11;
      v13 = 2;
      v14 = 1;
      do
      {
        v15 = _readNode(*(*(a1 + 64) + 8 * v14));
        v12 = lappend(v12, v15);
        *(v3 + 40) = v12;
        v14 = v13++;
      }

      while (*(a1 + 56) > v14);
    }
  }

  *(v3 + 48) = *(a1 + 72) != 0;
  return v3;
}

unint64_t _readNotifyStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  *v3 = 259;
  v4 = *(a1 + 24);
  if (v4 && *v4)
  {
    *(v3 + 8) = pstrdup(v4);
  }

  v5 = *(a1 + 32);
  if (v5 && *v5)
  {
    *(v3 + 16) = pstrdup(v5);
  }

  return v3;
}

_DWORD *_readListenStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  result = MemoryContextAllocZeroAligned(*v2, 0x10uLL);
  *result = 260;
  v4 = *(a1 + 24);
  if (v4)
  {
    if (*v4)
    {
      v5 = result;
      v6 = pstrdup(v4);
      result = v5;
      *(v5 + 1) = v6;
    }
  }

  return result;
}

_DWORD *_readUnlistenStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  result = MemoryContextAllocZeroAligned(*v2, 0x10uLL);
  *result = 261;
  v4 = *(a1 + 24);
  if (v4)
  {
    if (*v4)
    {
      v5 = result;
      v6 = pstrdup(v4);
      result = v5;
      *(v5 + 1) = v6;
    }
  }

  return result;
}

_DWORD *_readTransactionStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x28uLL);
  v4 = v3;
  *v3 = 262;
  v5 = *(a1 + 24);
  v6 = v5 - 2;
  v7 = v5 - 1;
  if (v6 >= 9)
  {
    v7 = 0;
  }

  v3[1] = v7;
  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node);
    *(v4 + 1) = v9;
    if (*(a1 + 32) >= 2uLL)
    {
      v10 = v9;
      v11 = 2;
      v12 = 1;
      do
      {
        v13 = _readNode(*(*(a1 + 40) + 8 * v12));
        v10 = lappend(v10, v13);
        *(v4 + 1) = v10;
        v12 = v11++;
      }

      while (*(a1 + 32) > v12);
    }
  }

  v14 = *(a1 + 48);
  if (v14 && *v14)
  {
    *(v4 + 2) = pstrdup(v14);
  }

  v15 = *(a1 + 56);
  if (v15 && *v15)
  {
    *(v4 + 3) = pstrdup(v15);
  }

  *(v4 + 32) = *(a1 + 64) != 0;
  return v4;
}

unint64_t _readViewStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x38uLL);
  *v3 = 263;
  v4 = *(a1 + 24);
  if (v4)
  {
    *(v3 + 8) = _readRangeVar(v4);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node);
    *(v3 + 16) = v6;
    if (*(a1 + 32) >= 2uLL)
    {
      v7 = v6;
      v8 = 2;
      v9 = 1;
      do
      {
        v10 = _readNode(*(*(a1 + 40) + 8 * v9));
        v7 = lappend(v7, v10);
        *(v3 + 16) = v7;
        v9 = v8++;
      }

      while (*(a1 + 32) > v9);
    }
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    *(v3 + 24) = _readNode(v11);
  }

  *(v3 + 32) = *(a1 + 56) != 0;
  if (*(a1 + 64))
  {
    v12 = _readNode(**(a1 + 72));
    list_make1_impl(226, v12);
    *(v3 + 40) = v13;
    if (*(a1 + 64) >= 2uLL)
    {
      v14 = v13;
      v15 = 2;
      v16 = 1;
      do
      {
        v17 = _readNode(*(*(a1 + 72) + 8 * v16));
        v14 = lappend(v14, v17);
        *(v3 + 40) = v14;
        v16 = v15++;
      }

      while (*(a1 + 64) > v16);
    }
  }

  v18 = *(a1 + 80);
  if (v18 == 3)
  {
    v19 = 2;
  }

  else
  {
    v19 = v18 == 2;
  }

  *(v3 + 48) = v19;
  return v3;
}

_DWORD *_readLoadStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  result = MemoryContextAllocZeroAligned(*v2, 0x10uLL);
  *result = 264;
  v4 = *(a1 + 24);
  if (v4)
  {
    if (*v4)
    {
      v5 = result;
      v6 = pstrdup(v4);
      result = v5;
      *(v5 + 1) = v6;
    }
  }

  return result;
}

unint64_t _readCreateDomainStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x28uLL);
  *v3 = 265;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node);
    *(v3 + 8) = v5;
    if (*(a1 + 24) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 32) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 8) = v6;
        v8 = v7++;
      }

      while (*(a1 + 24) > v8);
    }
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    *(v3 + 16) = _readTypeName(v10);
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    *(v3 + 24) = _readCollateClause(v11);
  }

  if (*(a1 + 56))
  {
    v12 = _readNode(**(a1 + 64));
    list_make1_impl(226, v12);
    *(v3 + 32) = v13;
    if (*(a1 + 56) >= 2uLL)
    {
      v14 = v13;
      v15 = 2;
      v16 = 1;
      do
      {
        v17 = _readNode(*(*(a1 + 64) + 8 * v16));
        v14 = lappend(v14, v17);
        *(v3 + 32) = v14;
        v16 = v15++;
      }

      while (*(a1 + 56) > v16);
    }
  }

  return v3;
}

unint64_t _readCreatedbStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  *v3 = 266;
  v4 = *(a1 + 24);
  if (v4 && *v4)
  {
    *(v3 + 8) = pstrdup(v4);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node);
    *(v3 + 16) = v6;
    if (*(a1 + 32) >= 2uLL)
    {
      v7 = v6;
      v8 = 2;
      v9 = 1;
      do
      {
        v10 = _readNode(*(*(a1 + 40) + 8 * v9));
        v7 = lappend(v7, v10);
        *(v3 + 16) = v7;
        v9 = v8++;
      }

      while (*(a1 + 32) > v9);
    }
  }

  return v3;
}

unint64_t _readDropdbStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x20uLL);
  *v3 = 267;
  v4 = *(a1 + 24);
  if (v4 && *v4)
  {
    *(v3 + 8) = pstrdup(v4);
  }

  *(v3 + 16) = *(a1 + 32) != 0;
  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node);
    *(v3 + 24) = v6;
    if (*(a1 + 40) >= 2uLL)
    {
      v7 = v6;
      v8 = 2;
      v9 = 1;
      do
      {
        v10 = _readNode(*(*(a1 + 48) + 8 * v9));
        v7 = lappend(v7, v10);
        *(v3 + 24) = v7;
        v9 = v8++;
      }

      while (*(a1 + 40) > v9);
    }
  }

  return v3;
}

unint64_t _readVacuumStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x20uLL);
  *v3 = 268;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node);
    *(v3 + 8) = v5;
    if (*(a1 + 24) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 32) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 8) = v6;
        v8 = v7++;
      }

      while (*(a1 + 24) > v8);
    }
  }

  if (*(a1 + 40))
  {
    v10 = _readNode(**(a1 + 48));
    list_make1_impl(226, v10);
    *(v3 + 16) = v11;
    if (*(a1 + 40) >= 2uLL)
    {
      v12 = v11;
      v13 = 2;
      v14 = 1;
      do
      {
        v15 = _readNode(*(*(a1 + 48) + 8 * v14));
        v12 = lappend(v12, v15);
        *(v3 + 16) = v12;
        v14 = v13++;
      }

      while (*(a1 + 40) > v14);
    }
  }

  *(v3 + 24) = *(a1 + 56) != 0;
  return v3;
}

unint64_t _readExplainStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  *v3 = 269;
  v4 = *(a1 + 24);
  if (v4)
  {
    *(v3 + 8) = _readNode(v4);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node);
    *(v3 + 16) = v6;
    if (*(a1 + 32) >= 2uLL)
    {
      v7 = v6;
      v8 = 2;
      v9 = 1;
      do
      {
        v10 = _readNode(*(*(a1 + 40) + 8 * v9));
        v7 = lappend(v7, v10);
        *(v3 + 16) = v7;
        v9 = v8++;
      }

      while (*(a1 + 32) > v9);
    }
  }

  return v3;
}

unint64_t _readCreateTableAsStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x20uLL);
  *v3 = 270;
  v4 = *(a1 + 24);
  if (v4)
  {
    *(v3 + 8) = _readNode(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    *(v3 + 16) = _readIntoClause(v5);
  }

  v6 = *(a1 + 40);
  v7 = v6 - 2;
  v8 = v6 - 1;
  if (v7 >= 0x31)
  {
    v8 = 0;
  }

  *(v3 + 24) = v8;
  *(v3 + 28) = *(a1 + 44) != 0;
  *(v3 + 29) = *(a1 + 48) != 0;
  return v3;
}

unint64_t _readCreateSeqStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x20uLL);
  *v3 = 271;
  v4 = *(a1 + 24);
  if (v4)
  {
    *(v3 + 8) = _readRangeVar(v4);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node);
    *(v3 + 16) = v6;
    if (*(a1 + 32) >= 2uLL)
    {
      v7 = v6;
      v8 = 2;
      v9 = 1;
      do
      {
        v10 = _readNode(*(*(a1 + 40) + 8 * v9));
        v7 = lappend(v7, v10);
        *(v3 + 16) = v7;
        v9 = v8++;
      }

      while (*(a1 + 32) > v9);
    }
  }

  *(v3 + 24) = *(a1 + 48);
  *(v3 + 28) = *(a1 + 52) != 0;
  *(v3 + 29) = *(a1 + 56) != 0;
  return v3;
}

unint64_t _readAlterSeqStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x20uLL);
  *v3 = 272;
  v4 = *(a1 + 24);
  if (v4)
  {
    *(v3 + 8) = _readRangeVar(v4);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node);
    *(v3 + 16) = v6;
    if (*(a1 + 32) >= 2uLL)
    {
      v7 = v6;
      v8 = 2;
      v9 = 1;
      do
      {
        v10 = _readNode(*(*(a1 + 40) + 8 * v9));
        v7 = lappend(v7, v10);
        *(v3 + 16) = v7;
        v9 = v8++;
      }

      while (*(a1 + 32) > v9);
    }
  }

  *(v3 + 24) = *(a1 + 48) != 0;
  *(v3 + 25) = *(a1 + 52) != 0;
  return v3;
}

_DWORD *_readVariableSetStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x20uLL);
  v4 = v3;
  *v3 = 273;
  v5 = *(a1 + 24);
  v6 = v5 - 2;
  v7 = v5 - 1;
  if (v6 >= 5)
  {
    v7 = 0;
  }

  v3[1] = v7;
  v8 = *(a1 + 32);
  if (v8 && *v8)
  {
    *(v4 + 1) = pstrdup(v8);
  }

  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node);
    *(v4 + 2) = v10;
    if (*(a1 + 40) >= 2uLL)
    {
      v11 = v10;
      v12 = 2;
      v13 = 1;
      do
      {
        v14 = _readNode(*(*(a1 + 48) + 8 * v13));
        v11 = lappend(v11, v14);
        *(v4 + 2) = v11;
        v13 = v12++;
      }

      while (*(a1 + 40) > v13);
    }
  }

  *(v4 + 24) = *(a1 + 56) != 0;
  return v4;
}

_DWORD *_readVariableShowStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  result = MemoryContextAllocZeroAligned(*v2, 0x10uLL);
  *result = 274;
  v4 = *(a1 + 24);
  if (v4)
  {
    if (*v4)
    {
      v5 = result;
      v6 = pstrdup(v4);
      result = v5;
      *(v5 + 1) = v6;
    }
  }

  return result;
}

_DWORD *_readDiscardStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  result = MemoryContextAllocZeroAligned(*v2, 8uLL);
  *result = 275;
  v4 = *(a1 + 24);
  v5 = v4 - 2;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    v6 = 0;
  }

  result[1] = v6;
  return result;
}

unint64_t _readCreateTrigStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x60uLL);
  *v3 = 276;
  v4 = *(a1 + 24);
  if (v4 && *v4)
  {
    *(v3 + 8) = pstrdup(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    *(v3 + 16) = _readRangeVar(v5);
  }

  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node);
    *(v3 + 24) = v7;
    if (*(a1 + 40) >= 2uLL)
    {
      v8 = v7;
      v9 = 2;
      v10 = 1;
      do
      {
        v11 = _readNode(*(*(a1 + 48) + 8 * v10));
        v8 = lappend(v8, v11);
        *(v3 + 24) = v8;
        v10 = v9++;
      }

      while (*(a1 + 40) > v10);
    }
  }

  if (*(a1 + 56))
  {
    v12 = _readNode(**(a1 + 64));
    list_make1_impl(226, v12);
    *(v3 + 32) = v13;
    if (*(a1 + 56) >= 2uLL)
    {
      v14 = v13;
      v15 = 2;
      v16 = 1;
      do
      {
        v17 = _readNode(*(*(a1 + 64) + 8 * v16));
        v14 = lappend(v14, v17);
        *(v3 + 32) = v14;
        v16 = v15++;
      }

      while (*(a1 + 56) > v16);
    }
  }

  *(v3 + 40) = *(a1 + 72) != 0;
  *(v3 + 42) = *(a1 + 76);
  *(v3 + 44) = *(a1 + 80);
  if (*(a1 + 88))
  {
    v18 = _readNode(**(a1 + 96));
    list_make1_impl(226, v18);
    *(v3 + 48) = v19;
    if (*(a1 + 88) >= 2uLL)
    {
      v20 = v19;
      v21 = 2;
      v22 = 1;
      do
      {
        v23 = _readNode(*(*(a1 + 96) + 8 * v22));
        v20 = lappend(v20, v23);
        *(v3 + 48) = v20;
        v22 = v21++;
      }

      while (*(a1 + 88) > v22);
    }
  }

  v24 = *(a1 + 104);
  if (v24)
  {
    *(v3 + 56) = _readNode(v24);
  }

  *(v3 + 64) = *(a1 + 112) != 0;
  if (*(a1 + 120))
  {
    v25 = _readNode(**(a1 + 128));
    list_make1_impl(226, v25);
    *(v3 + 72) = v26;
    if (*(a1 + 120) >= 2uLL)
    {
      v27 = v26;
      v28 = 2;
      v29 = 1;
      do
      {
        v30 = _readNode(*(*(a1 + 128) + 8 * v29));
        v27 = lappend(v27, v30);
        *(v3 + 72) = v27;
        v29 = v28++;
      }

      while (*(a1 + 120) > v29);
    }
  }

  *(v3 + 80) = *(a1 + 136) != 0;
  *(v3 + 81) = *(a1 + 140) != 0;
  v31 = *(a1 + 144);
  if (v31)
  {
    *(v3 + 88) = _readRangeVar(v31);
  }

  return v3;
}

unint64_t _readCreatePLangStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x30uLL);
  *v3 = 277;
  *(v3 + 4) = *(a1 + 24) != 0;
  v4 = *(a1 + 32);
  if (v4 && *v4)
  {
    *(v3 + 8) = pstrdup(v4);
  }

  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node);
    *(v3 + 16) = v6;
    if (*(a1 + 40) >= 2uLL)
    {
      v7 = v6;
      v8 = 2;
      v9 = 1;
      do
      {
        v10 = _readNode(*(*(a1 + 48) + 8 * v9));
        v7 = lappend(v7, v10);
        *(v3 + 16) = v7;
        v9 = v8++;
      }

      while (*(a1 + 40) > v9);
    }
  }

  if (*(a1 + 56))
  {
    v11 = _readNode(**(a1 + 64));
    list_make1_impl(226, v11);
    *(v3 + 24) = v12;
    if (*(a1 + 56) >= 2uLL)
    {
      v13 = v12;
      v14 = 2;
      v15 = 1;
      do
      {
        v16 = _readNode(*(*(a1 + 64) + 8 * v15));
        v13 = lappend(v13, v16);
        *(v3 + 24) = v13;
        v15 = v14++;
      }

      while (*(a1 + 56) > v15);
    }
  }

  if (*(a1 + 72))
  {
    v17 = _readNode(**(a1 + 80));
    list_make1_impl(226, v17);
    *(v3 + 32) = v18;
    if (*(a1 + 72) >= 2uLL)
    {
      v19 = v18;
      v20 = 2;
      v21 = 1;
      do
      {
        v22 = _readNode(*(*(a1 + 80) + 8 * v21));
        v19 = lappend(v19, v22);
        *(v3 + 32) = v19;
        v21 = v20++;
      }

      while (*(a1 + 72) > v21);
    }
  }

  *(v3 + 40) = *(a1 + 88) != 0;
  return v3;
}

_DWORD *_readCreateRoleStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  v4 = v3;
  *v3 = 278;
  v5 = *(a1 + 24);
  if (v5 == 3)
  {
    v6 = 2;
  }

  else
  {
    v6 = v5 == 2;
  }

  v3[1] = v6;
  v7 = *(a1 + 32);
  if (v7 && *v7)
  {
    *(v4 + 1) = pstrdup(v7);
  }

  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node);
    *(v4 + 2) = v9;
    if (*(a1 + 40) >= 2uLL)
    {
      v10 = v9;
      v11 = 2;
      v12 = 1;
      do
      {
        v13 = _readNode(*(*(a1 + 48) + 8 * v12));
        v10 = lappend(v10, v13);
        *(v4 + 2) = v10;
        v12 = v11++;
      }

      while (*(a1 + 40) > v12);
    }
  }

  return v4;
}

unint64_t _readAlterRoleStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x20uLL);
  *v3 = 279;
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
    v6 = v5;
    *v5 = 390;
    v7 = *(v4 + 24);
    v8 = v7 - 2;
    v9 = v7 - 1;
    if (v8 >= 3)
    {
      v9 = 0;
    }

    v5[1] = v9;
    v10 = *(v4 + 32);
    if (v10 && *v10)
    {
      *(v6 + 1) = pstrdup(v10);
    }

    v6[4] = *(v4 + 40);
    *(v3 + 8) = v6;
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node);
    *(v3 + 16) = v12;
    if (*(a1 + 32) >= 2uLL)
    {
      v13 = v12;
      v14 = 2;
      v15 = 1;
      do
      {
        v16 = _readNode(*(*(a1 + 40) + 8 * v15));
        v13 = lappend(v13, v16);
        *(v3 + 16) = v13;
        v15 = v14++;
      }

      while (*(a1 + 32) > v15);
    }
  }

  *(v3 + 24) = *(a1 + 48);
  return v3;
}

unint64_t _readDropRoleStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  *v3 = 280;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node);
    *(v3 + 8) = v5;
    if (*(a1 + 24) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 32) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 8) = v6;
        v8 = v7++;
      }

      while (*(a1 + 24) > v8);
    }
  }

  *(v3 + 16) = *(a1 + 40) != 0;
  return v3;
}

unint64_t _readLockStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  *v3 = 281;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node);
    *(v3 + 8) = v5;
    if (*(a1 + 24) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 32) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 8) = v6;
        v8 = v7++;
      }

      while (*(a1 + 24) > v8);
    }
  }

  *(v3 + 16) = *(a1 + 40);
  *(v3 + 20) = *(a1 + 44) != 0;
  return v3;
}

unint64_t _readConstraintsSetStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  *v3 = 282;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node);
    *(v3 + 8) = v5;
    if (*(a1 + 24) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 32) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 8) = v6;
        v8 = v7++;
      }

      while (*(a1 + 24) > v8);
    }
  }

  *(v3 + 16) = *(a1 + 40) != 0;
  return v3;
}

_DWORD *_readReindexStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x20uLL);
  v4 = v3;
  *v3 = 283;
  v5 = *(a1 + 24);
  v6 = v5 - 2;
  v7 = v5 - 1;
  if (v6 >= 4)
  {
    v7 = 0;
  }

  v3[1] = v7;
  v8 = *(a1 + 32);
  if (v8)
  {
    *(v4 + 1) = _readRangeVar(v8);
  }

  v9 = *(a1 + 40);
  if (v9 && *v9)
  {
    *(v4 + 2) = pstrdup(v9);
  }

  v4[6] = *(a1 + 48);
  *(v4 + 28) = *(a1 + 52) != 0;
  return v4;
}

unint64_t _readCreateSchemaStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x28uLL);
  *v3 = 285;
  v4 = *(a1 + 24);
  if (v4 && *v4)
  {
    *(v3 + 8) = pstrdup(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
    v7 = v6;
    *v6 = 390;
    v8 = *(v5 + 24);
    v9 = v8 - 2;
    v10 = v8 - 1;
    if (v9 >= 3)
    {
      v10 = 0;
    }

    v6[1] = v10;
    v11 = *(v5 + 32);
    if (v11 && *v11)
    {
      *(v7 + 1) = pstrdup(v11);
    }

    v7[4] = *(v5 + 40);
    *(v3 + 16) = v7;
  }

  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node);
    *(v3 + 24) = v13;
    if (*(a1 + 40) >= 2uLL)
    {
      v14 = v13;
      v15 = 2;
      v16 = 1;
      do
      {
        v17 = _readNode(*(*(a1 + 48) + 8 * v16));
        v14 = lappend(v14, v17);
        *(v3 + 24) = v14;
        v16 = v15++;
      }

      while (*(a1 + 40) > v16);
    }
  }

  *(v3 + 32) = *(a1 + 56) != 0;
  return v3;
}

unint64_t _readAlterDatabaseStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  *v3 = 286;
  v4 = *(a1 + 24);
  if (v4 && *v4)
  {
    *(v3 + 8) = pstrdup(v4);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node);
    *(v3 + 16) = v6;
    if (*(a1 + 32) >= 2uLL)
    {
      v7 = v6;
      v8 = 2;
      v9 = 1;
      do
      {
        v10 = _readNode(*(*(a1 + 40) + 8 * v9));
        v7 = lappend(v7, v10);
        *(v3 + 16) = v7;
        v9 = v8++;
      }

      while (*(a1 + 32) > v9);
    }
  }

  return v3;
}

unint64_t _readAlterDatabaseSetStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  *v3 = 287;
  v4 = *(a1 + 24);
  if (v4 && *v4)
  {
    *(v3 + 8) = pstrdup(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    *(v3 + 16) = _readVariableSetStmt(v5);
  }

  return v3;
}

unint64_t _readAlterRoleSetStmt(void *a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x20uLL);
  *v3 = 288;
  v4 = a1[3];
  if (v4)
  {
    v5 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
    v6 = v5;
    *v5 = 390;
    v7 = *(v4 + 24);
    v8 = v7 - 2;
    v9 = v7 - 1;
    if (v8 >= 3)
    {
      v9 = 0;
    }

    v5[1] = v9;
    v10 = *(v4 + 32);
    if (v10 && *v10)
    {
      *(v6 + 1) = pstrdup(v10);
    }

    v6[4] = *(v4 + 40);
    *(v3 + 8) = v6;
  }

  v11 = a1[4];
  if (v11 && *v11)
  {
    *(v3 + 16) = pstrdup(v11);
  }

  v12 = a1[5];
  if (v12)
  {
    *(v3 + 24) = _readVariableSetStmt(v12);
  }

  return v3;
}

unint64_t _readCreateConversionStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x30uLL);
  *v3 = 289;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node);
    *(v3 + 8) = v5;
    if (*(a1 + 24) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 32) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 8) = v6;
        v8 = v7++;
      }

      while (*(a1 + 24) > v8);
    }
  }

  v10 = *(a1 + 40);
  if (v10 && *v10)
  {
    *(v3 + 16) = pstrdup(v10);
  }

  v11 = *(a1 + 48);
  if (v11 && *v11)
  {
    *(v3 + 24) = pstrdup(v11);
  }

  if (*(a1 + 56))
  {
    v12 = _readNode(**(a1 + 64));
    list_make1_impl(226, v12);
    *(v3 + 32) = v13;
    if (*(a1 + 56) >= 2uLL)
    {
      v14 = v13;
      v15 = 2;
      v16 = 1;
      do
      {
        v17 = _readNode(*(*(a1 + 64) + 8 * v16));
        v14 = lappend(v14, v17);
        *(v3 + 32) = v14;
        v16 = v15++;
      }

      while (*(a1 + 56) > v16);
    }
  }

  *(v3 + 40) = *(a1 + 72) != 0;
  return v3;
}

unint64_t _readCreateCastStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x28uLL);
  *v3 = 290;
  v4 = *(a1 + 24);
  if (v4)
  {
    *(v3 + 8) = _readTypeName(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    *(v3 + 16) = _readTypeName(v5);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    *(v3 + 24) = _readObjectWithArgs(v6);
  }

  v7 = *(a1 + 48);
  if (v7 == 3)
  {
    v8 = 2;
  }

  else
  {
    v8 = v7 == 2;
  }

  *(v3 + 32) = v8;
  *(v3 + 36) = *(a1 + 52) != 0;
  return v3;
}

unint64_t _readCreateOpClassStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x38uLL);
  *v3 = 291;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node);
    *(v3 + 8) = v5;
    if (*(a1 + 24) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 32) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 8) = v6;
        v8 = v7++;
      }

      while (*(a1 + 24) > v8);
    }
  }

  if (*(a1 + 40))
  {
    v10 = _readNode(**(a1 + 48));
    list_make1_impl(226, v10);
    *(v3 + 16) = v11;
    if (*(a1 + 40) >= 2uLL)
    {
      v12 = v11;
      v13 = 2;
      v14 = 1;
      do
      {
        v15 = _readNode(*(*(a1 + 48) + 8 * v14));
        v12 = lappend(v12, v15);
        *(v3 + 16) = v12;
        v14 = v13++;
      }

      while (*(a1 + 40) > v14);
    }
  }

  v16 = *(a1 + 56);
  if (v16 && *v16)
  {
    *(v3 + 24) = pstrdup(v16);
  }

  v17 = *(a1 + 64);
  if (v17)
  {
    *(v3 + 32) = _readTypeName(v17);
  }

  if (*(a1 + 72))
  {
    v18 = _readNode(**(a1 + 80));
    list_make1_impl(226, v18);
    *(v3 + 40) = v19;
    if (*(a1 + 72) >= 2uLL)
    {
      v20 = v19;
      v21 = 2;
      v22 = 1;
      do
      {
        v23 = _readNode(*(*(a1 + 80) + 8 * v22));
        v20 = lappend(v20, v23);
        *(v3 + 40) = v20;
        v22 = v21++;
      }

      while (*(a1 + 72) > v22);
    }
  }

  *(v3 + 48) = *(a1 + 88) != 0;
  return v3;
}

unint64_t _readCreateOpFamilyStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  *v3 = 292;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node);
    *(v3 + 8) = v5;
    if (*(a1 + 24) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 32) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 8) = v6;
        v8 = v7++;
      }

      while (*(a1 + 24) > v8);
    }
  }

  v10 = *(a1 + 40);
  if (v10 && *v10)
  {
    *(v3 + 16) = pstrdup(v10);
  }

  return v3;
}

unint64_t _readAlterOpFamilyStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x28uLL);
  *v3 = 293;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node);
    *(v3 + 8) = v5;
    if (*(a1 + 24) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 32) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 8) = v6;
        v8 = v7++;
      }

      while (*(a1 + 24) > v8);
    }
  }

  v10 = *(a1 + 40);
  if (v10 && *v10)
  {
    *(v3 + 16) = pstrdup(v10);
  }

  *(v3 + 24) = *(a1 + 48) != 0;
  if (*(a1 + 56))
  {
    v11 = _readNode(**(a1 + 64));
    list_make1_impl(226, v11);
    *(v3 + 32) = v12;
    if (*(a1 + 56) >= 2uLL)
    {
      v13 = v12;
      v14 = 2;
      v15 = 1;
      do
      {
        v16 = _readNode(*(*(a1 + 64) + 8 * v15));
        v13 = lappend(v13, v16);
        *(v3 + 32) = v13;
        v15 = v14++;
      }

      while (*(a1 + 56) > v15);
    }
  }

  return v3;
}

unint64_t _readPrepareStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x20uLL);
  *v3 = 294;
  v4 = *(a1 + 24);
  if (v4 && *v4)
  {
    *(v3 + 8) = pstrdup(v4);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node);
    *(v3 + 16) = v6;
    if (*(a1 + 32) >= 2uLL)
    {
      v7 = v6;
      v8 = 2;
      v9 = 1;
      do
      {
        v10 = _readNode(*(*(a1 + 40) + 8 * v9));
        v7 = lappend(v7, v10);
        *(v3 + 16) = v7;
        v9 = v8++;
      }

      while (*(a1 + 32) > v9);
    }
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    *(v3 + 24) = _readNode(v11);
  }

  return v3;
}

unint64_t _readExecuteStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  *v3 = 295;
  v4 = *(a1 + 24);
  if (v4 && *v4)
  {
    *(v3 + 8) = pstrdup(v4);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node);
    *(v3 + 16) = v6;
    if (*(a1 + 32) >= 2uLL)
    {
      v7 = v6;
      v8 = 2;
      v9 = 1;
      do
      {
        v10 = _readNode(*(*(a1 + 40) + 8 * v9));
        v7 = lappend(v7, v10);
        *(v3 + 16) = v7;
        v9 = v8++;
      }

      while (*(a1 + 32) > v9);
    }
  }

  return v3;
}

_DWORD *_readDeallocateStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  result = MemoryContextAllocZeroAligned(*v2, 0x10uLL);
  *result = 296;
  v4 = *(a1 + 24);
  if (v4)
  {
    if (*v4)
    {
      v5 = result;
      v6 = pstrdup(v4);
      result = v5;
      *(v5 + 1) = v6;
    }
  }

  return result;
}

unint64_t _readDeclareCursorStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x20uLL);
  *v3 = 297;
  v4 = *(a1 + 24);
  if (v4 && *v4)
  {
    *(v3 + 8) = pstrdup(v4);
  }

  *(v3 + 16) = *(a1 + 32);
  v5 = *(a1 + 40);
  if (v5)
  {
    *(v3 + 24) = _readNode(v5);
  }

  return v3;
}

unint64_t _readCreateTableSpaceStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x28uLL);
  *v3 = 298;
  v4 = *(a1 + 24);
  if (v4 && *v4)
  {
    *(v3 + 8) = pstrdup(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
    v7 = v6;
    *v6 = 390;
    v8 = *(v5 + 24);
    v9 = v8 - 2;
    v10 = v8 - 1;
    if (v9 >= 3)
    {
      v10 = 0;
    }

    v6[1] = v10;
    v11 = *(v5 + 32);
    if (v11 && *v11)
    {
      *(v7 + 1) = pstrdup(v11);
    }

    v7[4] = *(v5 + 40);
    *(v3 + 16) = v7;
  }

  v12 = *(a1 + 40);
  if (v12 && *v12)
  {
    *(v3 + 24) = pstrdup(v12);
  }

  if (*(a1 + 48))
  {
    Node = _readNode(**(a1 + 56));
    list_make1_impl(226, Node);
    *(v3 + 32) = v14;
    if (*(a1 + 48) >= 2uLL)
    {
      v15 = v14;
      v16 = 2;
      v17 = 1;
      do
      {
        v18 = _readNode(*(*(a1 + 56) + 8 * v17));
        v15 = lappend(v15, v18);
        *(v3 + 32) = v15;
        v17 = v16++;
      }

      while (*(a1 + 48) > v17);
    }
  }

  return v3;
}

unint64_t _readDropTableSpaceStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  result = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  *result = 299;
  v4 = *(a1 + 24);
  if (v4 && *v4)
  {
    v5 = result;
    v6 = pstrdup(*(a1 + 24));
    result = v5;
    *(v5 + 8) = v6;
  }

  *(result + 16) = *(a1 + 32) != 0;
  return result;
}

_DWORD *_readAlterObjectDependsStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x28uLL);
  v4 = v3;
  *v3 = 300;
  v5 = *(a1 + 24);
  v6 = v5 - 2;
  v7 = v5 - 1;
  if (v6 >= 0x31)
  {
    v7 = 0;
  }

  v3[1] = v7;
  v8 = *(a1 + 32);
  if (v8)
  {
    *(v4 + 1) = _readRangeVar(v8);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    *(v4 + 2) = _readNode(v9);
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    *(v4 + 3) = _readNode(v10);
  }

  *(v4 + 32) = *(a1 + 56) != 0;
  return v4;
}

_DWORD *_readAlterObjectSchemaStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x28uLL);
  v4 = v3;
  *v3 = 301;
  v5 = *(a1 + 24);
  v6 = v5 - 2;
  v7 = v5 - 1;
  if (v6 >= 0x31)
  {
    v7 = 0;
  }

  v3[1] = v7;
  v8 = *(a1 + 32);
  if (v8)
  {
    *(v4 + 1) = _readRangeVar(v8);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    *(v4 + 2) = _readNode(v9);
  }

  v10 = *(a1 + 48);
  if (v10 && *v10)
  {
    *(v4 + 3) = pstrdup(v10);
  }

  *(v4 + 32) = *(a1 + 56) != 0;
  return v4;
}

void *_readAlterOwnerStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x20uLL);
  v4 = v3;
  *v3 = 302;
  v5 = *(a1 + 24);
  v6 = v5 - 2;
  v7 = v5 - 1;
  if (v6 >= 0x31)
  {
    v7 = 0;
  }

  v3[1] = v7;
  v8 = *(a1 + 32);
  if (v8)
  {
    v4[1] = _readRangeVar(v8);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    v4[2] = _readNode(v9);
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    v11 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
    v12 = v11;
    *v11 = 390;
    v13 = *(v10 + 24);
    v14 = v13 - 2;
    v15 = v13 - 1;
    if (v14 >= 3)
    {
      v15 = 0;
    }

    v11[1] = v15;
    v16 = *(v10 + 32);
    if (v16 && *v16)
    {
      *(v12 + 1) = pstrdup(v16);
    }

    v12[4] = *(v10 + 40);
    v4[3] = v12;
  }

  return v4;
}

unint64_t _readAlterOperatorStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  *v3 = 303;
  v4 = *(a1 + 24);
  if (v4)
  {
    *(v3 + 8) = _readObjectWithArgs(v4);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node);
    *(v3 + 16) = v6;
    if (*(a1 + 32) >= 2uLL)
    {
      v7 = v6;
      v8 = 2;
      v9 = 1;
      do
      {
        v10 = _readNode(*(*(a1 + 40) + 8 * v9));
        v7 = lappend(v7, v10);
        *(v3 + 16) = v7;
        v9 = v8++;
      }

      while (*(a1 + 32) > v9);
    }
  }

  return v3;
}

unint64_t _readAlterTypeStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  *v3 = 304;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node);
    *(v3 + 8) = v5;
    if (*(a1 + 24) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 32) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 8) = v6;
        v8 = v7++;
      }

      while (*(a1 + 24) > v8);
    }
  }

  if (*(a1 + 40))
  {
    v10 = _readNode(**(a1 + 48));
    list_make1_impl(226, v10);
    *(v3 + 16) = v11;
    if (*(a1 + 40) >= 2uLL)
    {
      v12 = v11;
      v13 = 2;
      v14 = 1;
      do
      {
        v15 = _readNode(*(*(a1 + 48) + 8 * v14));
        v12 = lappend(v12, v15);
        *(v3 + 16) = v12;
        v14 = v13++;
      }

      while (*(a1 + 40) > v14);
    }
  }

  return v3;
}

unint64_t _readDropOwnedStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  *v3 = 305;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node);
    *(v3 + 8) = v5;
    if (*(a1 + 24) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 32) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 8) = v6;
        v8 = v7++;
      }

      while (*(a1 + 24) > v8);
    }
  }

  *(v3 + 16) = *(a1 + 40) == 2;
  return v3;
}

unint64_t _readReassignOwnedStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  *v3 = 306;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node);
    *(v3 + 8) = v5;
    if (*(a1 + 24) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 32) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 8) = v6;
        v8 = v7++;
      }

      while (*(a1 + 24) > v8);
    }
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
    v12 = v11;
    *v11 = 390;
    v13 = *(v10 + 24);
    v14 = v13 - 2;
    v15 = v13 - 1;
    if (v14 >= 3)
    {
      v15 = 0;
    }

    v11[1] = v15;
    v16 = *(v10 + 32);
    if (v16 && *v16)
    {
      *(v12 + 1) = pstrdup(v16);
    }

    v12[4] = *(v10 + 40);
    *(v3 + 16) = v12;
  }

  return v3;
}

unint64_t _readCompositeTypeStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  *v3 = 307;
  v4 = *(a1 + 24);
  if (v4)
  {
    *(v3 + 8) = _readRangeVar(v4);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node);
    *(v3 + 16) = v6;
    if (*(a1 + 32) >= 2uLL)
    {
      v7 = v6;
      v8 = 2;
      v9 = 1;
      do
      {
        v10 = _readNode(*(*(a1 + 40) + 8 * v9));
        v7 = lappend(v7, v10);
        *(v3 + 16) = v7;
        v9 = v8++;
      }

      while (*(a1 + 32) > v9);
    }
  }

  return v3;
}

unint64_t _readCreateEnumStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  *v3 = 308;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node);
    *(v3 + 8) = v5;
    if (*(a1 + 24) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 32) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 8) = v6;
        v8 = v7++;
      }

      while (*(a1 + 24) > v8);
    }
  }

  if (*(a1 + 40))
  {
    v10 = _readNode(**(a1 + 48));
    list_make1_impl(226, v10);
    *(v3 + 16) = v11;
    if (*(a1 + 40) >= 2uLL)
    {
      v12 = v11;
      v13 = 2;
      v14 = 1;
      do
      {
        v15 = _readNode(*(*(a1 + 48) + 8 * v14));
        v12 = lappend(v12, v15);
        *(v3 + 16) = v12;
        v14 = v13++;
      }

      while (*(a1 + 40) > v14);
    }
  }

  return v3;
}

unint64_t _readCreateRangeStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  *v3 = 309;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node);
    *(v3 + 8) = v5;
    if (*(a1 + 24) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 32) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 8) = v6;
        v8 = v7++;
      }

      while (*(a1 + 24) > v8);
    }
  }

  if (*(a1 + 40))
  {
    v10 = _readNode(**(a1 + 48));
    list_make1_impl(226, v10);
    *(v3 + 16) = v11;
    if (*(a1 + 40) >= 2uLL)
    {
      v12 = v11;
      v13 = 2;
      v14 = 1;
      do
      {
        v15 = _readNode(*(*(a1 + 48) + 8 * v14));
        v12 = lappend(v12, v15);
        *(v3 + 16) = v12;
        v14 = v13++;
      }

      while (*(a1 + 40) > v14);
    }
  }

  return v3;
}

unint64_t _readAlterEnumStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x30uLL);
  *v3 = 310;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node);
    *(v3 + 8) = v5;
    if (*(a1 + 24) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 32) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 8) = v6;
        v8 = v7++;
      }

      while (*(a1 + 24) > v8);
    }
  }

  v10 = *(a1 + 40);
  if (v10 && *v10)
  {
    *(v3 + 16) = pstrdup(v10);
  }

  v11 = *(a1 + 48);
  if (v11 && *v11)
  {
    *(v3 + 24) = pstrdup(v11);
  }

  v12 = *(a1 + 56);
  if (v12 && *v12)
  {
    *(v3 + 32) = pstrdup(v12);
  }

  *(v3 + 40) = *(a1 + 64) != 0;
  *(v3 + 41) = *(a1 + 68) != 0;
  return v3;
}

unint64_t _readAlterTSDictionaryStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  *v3 = 311;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node);
    *(v3 + 8) = v5;
    if (*(a1 + 24) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 32) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 8) = v6;
        v8 = v7++;
      }

      while (*(a1 + 24) > v8);
    }
  }

  if (*(a1 + 40))
  {
    v10 = _readNode(**(a1 + 48));
    list_make1_impl(226, v10);
    *(v3 + 16) = v11;
    if (*(a1 + 40) >= 2uLL)
    {
      v12 = v11;
      v13 = 2;
      v14 = 1;
      do
      {
        v15 = _readNode(*(*(a1 + 48) + 8 * v14));
        v12 = lappend(v12, v15);
        *(v3 + 16) = v12;
        v14 = v13++;
      }

      while (*(a1 + 40) > v14);
    }
  }

  return v3;
}

_DWORD *_readAlterTSConfigurationStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x28uLL);
  v4 = v3;
  *v3 = 312;
  v5 = *(a1 + 24);
  v6 = v5 - 2;
  v7 = v5 - 1;
  if (v6 >= 4)
  {
    v7 = 0;
  }

  v3[1] = v7;
  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node);
    *(v4 + 1) = v9;
    if (*(a1 + 32) >= 2uLL)
    {
      v10 = v9;
      v11 = 2;
      v12 = 1;
      do
      {
        v13 = _readNode(*(*(a1 + 40) + 8 * v12));
        v10 = lappend(v10, v13);
        *(v4 + 1) = v10;
        v12 = v11++;
      }

      while (*(a1 + 32) > v12);
    }
  }

  if (*(a1 + 48))
  {
    v14 = _readNode(**(a1 + 56));
    list_make1_impl(226, v14);
    *(v4 + 2) = v15;
    if (*(a1 + 48) >= 2uLL)
    {
      v16 = v15;
      v17 = 2;
      v18 = 1;
      do
      {
        v19 = _readNode(*(*(a1 + 56) + 8 * v18));
        v16 = lappend(v16, v19);
        *(v4 + 2) = v16;
        v18 = v17++;
      }

      while (*(a1 + 48) > v18);
    }
  }

  if (*(a1 + 64))
  {
    v20 = _readNode(**(a1 + 72));
    list_make1_impl(226, v20);
    *(v4 + 3) = v21;
    if (*(a1 + 64) >= 2uLL)
    {
      v22 = v21;
      v23 = 2;
      v24 = 1;
      do
      {
        v25 = _readNode(*(*(a1 + 72) + 8 * v24));
        v22 = lappend(v22, v25);
        *(v4 + 3) = v22;
        v24 = v23++;
      }

      while (*(a1 + 64) > v24);
    }
  }

  *(v4 + 32) = *(a1 + 80) != 0;
  *(v4 + 33) = *(a1 + 84) != 0;
  *(v4 + 34) = *(a1 + 88) != 0;
  return v4;
}

unint64_t _readCreateFdwStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x20uLL);
  *v3 = 313;
  v4 = *(a1 + 24);
  if (v4 && *v4)
  {
    *(v3 + 8) = pstrdup(v4);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node);
    *(v3 + 16) = v6;
    if (*(a1 + 32) >= 2uLL)
    {
      v7 = v6;
      v8 = 2;
      v9 = 1;
      do
      {
        v10 = _readNode(*(*(a1 + 40) + 8 * v9));
        v7 = lappend(v7, v10);
        *(v3 + 16) = v7;
        v9 = v8++;
      }

      while (*(a1 + 32) > v9);
    }
  }

  if (*(a1 + 48))
  {
    v11 = _readNode(**(a1 + 56));
    list_make1_impl(226, v11);
    *(v3 + 24) = v12;
    if (*(a1 + 48) >= 2uLL)
    {
      v13 = v12;
      v14 = 2;
      v15 = 1;
      do
      {
        v16 = _readNode(*(*(a1 + 56) + 8 * v15));
        v13 = lappend(v13, v16);
        *(v3 + 24) = v13;
        v15 = v14++;
      }

      while (*(a1 + 48) > v15);
    }
  }

  return v3;
}

unint64_t _readAlterFdwStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x20uLL);
  *v3 = 314;
  v4 = *(a1 + 24);
  if (v4 && *v4)
  {
    *(v3 + 8) = pstrdup(v4);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node);
    *(v3 + 16) = v6;
    if (*(a1 + 32) >= 2uLL)
    {
      v7 = v6;
      v8 = 2;
      v9 = 1;
      do
      {
        v10 = _readNode(*(*(a1 + 40) + 8 * v9));
        v7 = lappend(v7, v10);
        *(v3 + 16) = v7;
        v9 = v8++;
      }

      while (*(a1 + 32) > v9);
    }
  }

  if (*(a1 + 48))
  {
    v11 = _readNode(**(a1 + 56));
    list_make1_impl(226, v11);
    *(v3 + 24) = v12;
    if (*(a1 + 48) >= 2uLL)
    {
      v13 = v12;
      v14 = 2;
      v15 = 1;
      do
      {
        v16 = _readNode(*(*(a1 + 56) + 8 * v15));
        v13 = lappend(v13, v16);
        *(v3 + 24) = v13;
        v15 = v14++;
      }

      while (*(a1 + 48) > v15);
    }
  }

  return v3;
}

unint64_t _readCreateForeignServerStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x38uLL);
  *v3 = 315;
  v4 = *(a1 + 24);
  if (v4 && *v4)
  {
    *(v3 + 8) = pstrdup(v4);
  }

  v5 = *(a1 + 32);
  if (v5 && *v5)
  {
    *(v3 + 16) = pstrdup(v5);
  }

  v6 = *(a1 + 40);
  if (v6 && *v6)
  {
    *(v3 + 24) = pstrdup(v6);
  }

  v7 = *(a1 + 48);
  if (v7 && *v7)
  {
    *(v3 + 32) = pstrdup(v7);
  }

  *(v3 + 40) = *(a1 + 56) != 0;
  if (*(a1 + 64))
  {
    Node = _readNode(**(a1 + 72));
    list_make1_impl(226, Node);
    *(v3 + 48) = v9;
    if (*(a1 + 64) >= 2uLL)
    {
      v10 = v9;
      v11 = 2;
      v12 = 1;
      do
      {
        v13 = _readNode(*(*(a1 + 72) + 8 * v12));
        v10 = lappend(v10, v13);
        *(v3 + 48) = v10;
        v12 = v11++;
      }

      while (*(a1 + 64) > v12);
    }
  }

  return v3;
}

unint64_t _readAlterForeignServerStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x28uLL);
  *v3 = 316;
  v4 = *(a1 + 24);
  if (v4 && *v4)
  {
    *(v3 + 8) = pstrdup(v4);
  }

  v5 = *(a1 + 32);
  if (v5 && *v5)
  {
    *(v3 + 16) = pstrdup(v5);
  }

  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node);
    *(v3 + 24) = v7;
    if (*(a1 + 40) >= 2uLL)
    {
      v8 = v7;
      v9 = 2;
      v10 = 1;
      do
      {
        v11 = _readNode(*(*(a1 + 48) + 8 * v10));
        v8 = lappend(v8, v11);
        *(v3 + 24) = v8;
        v10 = v9++;
      }

      while (*(a1 + 40) > v10);
    }
  }

  *(v3 + 32) = *(a1 + 56) != 0;
  return v3;
}

unint64_t _readCreateUserMappingStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x28uLL);
  *v3 = 317;
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
    v6 = v5;
    *v5 = 390;
    v7 = *(v4 + 24);
    v8 = v7 - 2;
    v9 = v7 - 1;
    if (v8 >= 3)
    {
      v9 = 0;
    }

    v5[1] = v9;
    v10 = *(v4 + 32);
    if (v10 && *v10)
    {
      *(v6 + 1) = pstrdup(v10);
    }

    v6[4] = *(v4 + 40);
    *(v3 + 8) = v6;
  }

  v11 = *(a1 + 32);
  if (v11 && *v11)
  {
    *(v3 + 16) = pstrdup(v11);
  }

  *(v3 + 24) = *(a1 + 40) != 0;
  if (*(a1 + 48))
  {
    Node = _readNode(**(a1 + 56));
    list_make1_impl(226, Node);
    *(v3 + 32) = v13;
    if (*(a1 + 48) >= 2uLL)
    {
      v14 = v13;
      v15 = 2;
      v16 = 1;
      do
      {
        v17 = _readNode(*(*(a1 + 56) + 8 * v16));
        v14 = lappend(v14, v17);
        *(v3 + 32) = v14;
        v16 = v15++;
      }

      while (*(a1 + 48) > v16);
    }
  }

  return v3;
}

unint64_t _readAlterUserMappingStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x20uLL);
  *v3 = 318;
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
    v6 = v5;
    *v5 = 390;
    v7 = *(v4 + 24);
    v8 = v7 - 2;
    v9 = v7 - 1;
    if (v8 >= 3)
    {
      v9 = 0;
    }

    v5[1] = v9;
    v10 = *(v4 + 32);
    if (v10 && *v10)
    {
      *(v6 + 1) = pstrdup(v10);
    }

    v6[4] = *(v4 + 40);
    *(v3 + 8) = v6;
  }

  v11 = *(a1 + 32);
  if (v11 && *v11)
  {
    *(v3 + 16) = pstrdup(v11);
  }

  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node);
    *(v3 + 24) = v13;
    if (*(a1 + 40) >= 2uLL)
    {
      v14 = v13;
      v15 = 2;
      v16 = 1;
      do
      {
        v17 = _readNode(*(*(a1 + 48) + 8 * v16));
        v14 = lappend(v14, v17);
        *(v3 + 24) = v14;
        v16 = v15++;
      }

      while (*(a1 + 40) > v16);
    }
  }

  return v3;
}

unint64_t _readDropUserMappingStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x20uLL);
  *v3 = 319;
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
    v6 = v5;
    *v5 = 390;
    v7 = *(v4 + 24);
    v8 = v7 - 2;
    v9 = v7 - 1;
    if (v8 >= 3)
    {
      v9 = 0;
    }

    v5[1] = v9;
    v10 = *(v4 + 32);
    if (v10 && *v10)
    {
      *(v6 + 1) = pstrdup(v10);
    }

    v6[4] = *(v4 + 40);
    *(v3 + 8) = v6;
  }

  v11 = *(a1 + 32);
  if (v11 && *v11)
  {
    *(v3 + 16) = pstrdup(v11);
  }

  *(v3 + 24) = *(a1 + 40) != 0;
  return v3;
}

unint64_t _readAlterTableSpaceOptionsStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x20uLL);
  *v3 = 320;
  v4 = *(a1 + 24);
  if (v4 && *v4)
  {
    *(v3 + 8) = pstrdup(v4);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node);
    *(v3 + 16) = v6;
    if (*(a1 + 32) >= 2uLL)
    {
      v7 = v6;
      v8 = 2;
      v9 = 1;
      do
      {
        v10 = _readNode(*(*(a1 + 40) + 8 * v9));
        v7 = lappend(v7, v10);
        *(v3 + 16) = v7;
        v9 = v8++;
      }

      while (*(a1 + 32) > v9);
    }
  }

  *(v3 + 24) = *(a1 + 48) != 0;
  return v3;
}

unint64_t _readAlterTableMoveAllStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x30uLL);
  *v3 = 321;
  v4 = *(a1 + 24);
  if (v4 && *v4)
  {
    *(v3 + 8) = pstrdup(v4);
  }

  v5 = *(a1 + 32);
  v6 = v5 - 2;
  v7 = v5 - 1;
  if (v6 >= 0x31)
  {
    v7 = 0;
  }

  *(v3 + 16) = v7;
  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node);
    *(v3 + 24) = v9;
    if (*(a1 + 40) >= 2uLL)
    {
      v10 = v9;
      v11 = 2;
      v12 = 1;
      do
      {
        v13 = _readNode(*(*(a1 + 48) + 8 * v12));
        v10 = lappend(v10, v13);
        *(v3 + 24) = v10;
        v12 = v11++;
      }

      while (*(a1 + 40) > v12);
    }
  }

  v14 = *(a1 + 56);
  if (v14 && *v14)
  {
    *(v3 + 32) = pstrdup(v14);
  }

  *(v3 + 40) = *(a1 + 64) != 0;
  return v3;
}

void *_readSecLabelStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x20uLL);
  v4 = v3;
  *v3 = 322;
  v5 = *(a1 + 24);
  v6 = v5 - 2;
  v7 = v5 - 1;
  if (v6 >= 0x31)
  {
    v7 = 0;
  }

  v3[1] = v7;
  v8 = *(a1 + 32);
  if (v8)
  {
    v4[1] = _readNode(v8);
  }

  v9 = *(a1 + 40);
  if (v9 && *v9)
  {
    v4[2] = pstrdup(v9);
  }

  v10 = *(a1 + 48);
  if (v10 && *v10)
  {
    v4[3] = pstrdup(v10);
  }

  return v4;
}

unint64_t _readCreateForeignTableStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x78uLL);
  *v3 = 323;
  Stmt = _readCreateStmt(*(a1 + 24));
  v5 = *Stmt;
  v6 = *(Stmt + 32);
  *(v3 + 16) = *(Stmt + 16);
  *(v3 + 32) = v6;
  *v3 = v5;
  v7 = *(Stmt + 48);
  v8 = *(Stmt + 64);
  v9 = *(Stmt + 80);
  *(v3 + 96) = *(Stmt + 96);
  *(v3 + 64) = v8;
  *(v3 + 80) = v9;
  *(v3 + 48) = v7;
  v10 = *(a1 + 32);
  if (v10 && *v10)
  {
    *(v3 + 104) = pstrdup(v10);
  }

  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node);
    *(v3 + 112) = v12;
    if (*(a1 + 40) >= 2uLL)
    {
      v13 = v12;
      v14 = 2;
      v15 = 1;
      do
      {
        v16 = _readNode(*(*(a1 + 48) + 8 * v15));
        v13 = lappend(v13, v16);
        *(v3 + 112) = v13;
        v15 = v14++;
      }

      while (*(a1 + 40) > v15);
    }
  }

  *v3 = 323;
  return v3;
}

unint64_t _readImportForeignSchemaStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x38uLL);
  *v3 = 324;
  v4 = *(a1 + 24);
  if (v4 && *v4)
  {
    *(v3 + 8) = pstrdup(v4);
  }

  v5 = *(a1 + 32);
  if (v5 && *v5)
  {
    *(v3 + 16) = pstrdup(v5);
  }

  v6 = *(a1 + 40);
  if (v6 && *v6)
  {
    *(v3 + 24) = pstrdup(v6);
  }

  v7 = *(a1 + 48);
  if (v7 == 3)
  {
    v8 = 2;
  }

  else
  {
    v8 = v7 == 2;
  }

  *(v3 + 32) = v8;
  if (*(a1 + 56))
  {
    Node = _readNode(**(a1 + 64));
    list_make1_impl(226, Node);
    *(v3 + 40) = v10;
    if (*(a1 + 56) >= 2uLL)
    {
      v11 = v10;
      v12 = 2;
      v13 = 1;
      do
      {
        v14 = _readNode(*(*(a1 + 64) + 8 * v13));
        v11 = lappend(v11, v14);
        *(v3 + 40) = v11;
        v13 = v12++;
      }

      while (*(a1 + 56) > v13);
    }
  }

  if (*(a1 + 72))
  {
    v15 = _readNode(**(a1 + 80));
    list_make1_impl(226, v15);
    *(v3 + 48) = v16;
    if (*(a1 + 72) >= 2uLL)
    {
      v17 = v16;
      v18 = 2;
      v19 = 1;
      do
      {
        v20 = _readNode(*(*(a1 + 80) + 8 * v19));
        v17 = lappend(v17, v20);
        *(v3 + 48) = v17;
        v19 = v18++;
      }

      while (*(a1 + 72) > v19);
    }
  }

  return v3;
}

unint64_t _readCreateExtensionStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x20uLL);
  *v3 = 325;
  v4 = *(a1 + 24);
  if (v4 && *v4)
  {
    *(v3 + 8) = pstrdup(v4);
  }

  *(v3 + 16) = *(a1 + 32) != 0;
  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node);
    *(v3 + 24) = v6;
    if (*(a1 + 40) >= 2uLL)
    {
      v7 = v6;
      v8 = 2;
      v9 = 1;
      do
      {
        v10 = _readNode(*(*(a1 + 48) + 8 * v9));
        v7 = lappend(v7, v10);
        *(v3 + 24) = v7;
        v9 = v8++;
      }

      while (*(a1 + 40) > v9);
    }
  }

  return v3;
}

unint64_t _readAlterExtensionStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  *v3 = 326;
  v4 = *(a1 + 24);
  if (v4 && *v4)
  {
    *(v3 + 8) = pstrdup(v4);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node);
    *(v3 + 16) = v6;
    if (*(a1 + 32) >= 2uLL)
    {
      v7 = v6;
      v8 = 2;
      v9 = 1;
      do
      {
        v10 = _readNode(*(*(a1 + 40) + 8 * v9));
        v7 = lappend(v7, v10);
        *(v3 + 16) = v7;
        v9 = v8++;
      }

      while (*(a1 + 32) > v9);
    }
  }

  return v3;
}

unint64_t _readAlterExtensionContentsStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x20uLL);
  *v3 = 327;
  v4 = *(a1 + 24);
  if (v4 && *v4)
  {
    *(v3 + 8) = pstrdup(v4);
  }

  *(v3 + 16) = *(a1 + 32);
  v5 = *(a1 + 36);
  v6 = v5 - 2;
  v7 = v5 - 1;
  if (v6 >= 0x31)
  {
    v7 = 0;
  }

  *(v3 + 20) = v7;
  v8 = *(a1 + 40);
  if (v8)
  {
    *(v3 + 24) = _readNode(v8);
  }

  return v3;
}

unint64_t _readCreateEventTrigStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x28uLL);
  *v3 = 328;
  v4 = *(a1 + 24);
  if (v4 && *v4)
  {
    *(v3 + 8) = pstrdup(v4);
  }

  v5 = *(a1 + 32);
  if (v5 && *v5)
  {
    *(v3 + 16) = pstrdup(v5);
  }

  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node);
    *(v3 + 24) = v7;
    if (*(a1 + 40) >= 2uLL)
    {
      v8 = v7;
      v9 = 2;
      v10 = 1;
      do
      {
        v11 = _readNode(*(*(a1 + 48) + 8 * v10));
        v8 = lappend(v8, v11);
        *(v3 + 24) = v8;
        v10 = v9++;
      }

      while (*(a1 + 40) > v10);
    }
  }

  if (*(a1 + 56))
  {
    v12 = _readNode(**(a1 + 64));
    list_make1_impl(226, v12);
    *(v3 + 32) = v13;
    if (*(a1 + 56) >= 2uLL)
    {
      v14 = v13;
      v15 = 2;
      v16 = 1;
      do
      {
        v17 = _readNode(*(*(a1 + 64) + 8 * v16));
        v14 = lappend(v14, v17);
        *(v3 + 32) = v14;
        v16 = v15++;
      }

      while (*(a1 + 56) > v16);
    }
  }

  return v3;
}

unint64_t _readAlterEventTrigStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  result = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  *result = 329;
  v4 = *(a1 + 24);
  if (v4 && *v4)
  {
    v5 = result;
    v6 = pstrdup(*(a1 + 24));
    result = v5;
    *(v5 + 8) = v6;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = *v7;
    if (v8)
    {
      *(result + 16) = v8;
    }
  }

  return result;
}

unint64_t _readRefreshMatViewStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  result = MemoryContextAllocZeroAligned(*v2, 0x10uLL);
  *result = 330;
  *(result + 4) = *(a1 + 24) != 0;
  *(result + 5) = *(a1 + 28) != 0;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = result;
    RangeVar = _readRangeVar(v4);
    result = v5;
    *(v5 + 8) = RangeVar;
  }

  return result;
}

unint64_t _readReplicaIdentityStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  result = MemoryContextAllocZeroAligned(*v2, 0x10uLL);
  *result = 331;
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = *v4;
    if (v5)
    {
      *(result + 4) = v5;
    }
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    if (*v6)
    {
      v7 = result;
      v8 = pstrdup(v6);
      result = v7;
      *(v7 + 8) = v8;
    }
  }

  return result;
}

_DWORD *_readAlterSystemStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  result = MemoryContextAllocZeroAligned(*v2, 0x10uLL);
  *result = 332;
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = result;
    VariableSetStmt = _readVariableSetStmt(v4);
    result = v5;
    *(v5 + 1) = VariableSetStmt;
  }

  return result;
}

unint64_t _readCreatePolicyStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x40uLL);
  *v3 = 333;
  v4 = *(a1 + 24);
  if (v4 && *v4)
  {
    *(v3 + 8) = pstrdup(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    *(v3 + 16) = _readRangeVar(v5);
  }

  v6 = *(a1 + 40);
  if (v6 && *v6)
  {
    *(v3 + 24) = pstrdup(v6);
  }

  *(v3 + 32) = *(a1 + 48) != 0;
  if (*(a1 + 56))
  {
    Node = _readNode(**(a1 + 64));
    list_make1_impl(226, Node);
    *(v3 + 40) = v8;
    if (*(a1 + 56) >= 2uLL)
    {
      v9 = v8;
      v10 = 2;
      v11 = 1;
      do
      {
        v12 = _readNode(*(*(a1 + 64) + 8 * v11));
        v9 = lappend(v9, v12);
        *(v3 + 40) = v9;
        v11 = v10++;
      }

      while (*(a1 + 56) > v11);
    }
  }

  v13 = *(a1 + 72);
  if (v13)
  {
    *(v3 + 48) = _readNode(v13);
  }

  v14 = *(a1 + 80);
  if (v14)
  {
    *(v3 + 56) = _readNode(v14);
  }

  return v3;
}

unint64_t _readAlterPolicyStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x30uLL);
  *v3 = 334;
  v4 = *(a1 + 24);
  if (v4 && *v4)
  {
    *(v3 + 8) = pstrdup(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    *(v3 + 16) = _readRangeVar(v5);
  }

  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node);
    *(v3 + 24) = v7;
    if (*(a1 + 40) >= 2uLL)
    {
      v8 = v7;
      v9 = 2;
      v10 = 1;
      do
      {
        v11 = _readNode(*(*(a1 + 48) + 8 * v10));
        v8 = lappend(v8, v11);
        *(v3 + 24) = v8;
        v10 = v9++;
      }

      while (*(a1 + 40) > v10);
    }
  }

  v12 = *(a1 + 56);
  if (v12)
  {
    *(v3 + 32) = _readNode(v12);
  }

  v13 = *(a1 + 64);
  if (v13)
  {
    *(v3 + 40) = _readNode(v13);
  }

  return v3;
}

unint64_t _readCreateTransformStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x28uLL);
  *v3 = 335;
  *(v3 + 4) = *(a1 + 24) != 0;
  v4 = *(a1 + 32);
  if (v4)
  {
    *(v3 + 8) = _readTypeName(v4);
  }

  v5 = *(a1 + 40);
  if (v5 && *v5)
  {
    *(v3 + 16) = pstrdup(v5);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    *(v3 + 24) = _readObjectWithArgs(v6);
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    *(v3 + 32) = _readObjectWithArgs(v7);
  }

  return v3;
}

unint64_t _readCreateAmStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x20uLL);
  *v3 = 336;
  v4 = *(a1 + 24);
  if (v4 && *v4)
  {
    *(v3 + 8) = pstrdup(v4);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node);
    *(v3 + 16) = v6;
    if (*(a1 + 32) >= 2uLL)
    {
      v7 = v6;
      v8 = 2;
      v9 = 1;
      do
      {
        v10 = _readNode(*(*(a1 + 40) + 8 * v9));
        v7 = lappend(v7, v10);
        *(v3 + 16) = v7;
        v9 = v8++;
      }

      while (*(a1 + 32) > v9);
    }
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    v12 = *v11;
    if (v12)
    {
      *(v3 + 24) = v12;
    }
  }

  return v3;
}

unint64_t _readCreatePublicationStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x28uLL);
  *v3 = 337;
  v4 = *(a1 + 24);
  if (v4 && *v4)
  {
    *(v3 + 8) = pstrdup(v4);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node);
    *(v3 + 16) = v6;
    if (*(a1 + 32) >= 2uLL)
    {
      v7 = v6;
      v8 = 2;
      v9 = 1;
      do
      {
        v10 = _readNode(*(*(a1 + 40) + 8 * v9));
        v7 = lappend(v7, v10);
        *(v3 + 16) = v7;
        v9 = v8++;
      }

      while (*(a1 + 32) > v9);
    }
  }

  if (*(a1 + 48))
  {
    v11 = _readNode(**(a1 + 56));
    list_make1_impl(226, v11);
    *(v3 + 24) = v12;
    if (*(a1 + 48) >= 2uLL)
    {
      v13 = v12;
      v14 = 2;
      v15 = 1;
      do
      {
        v16 = _readNode(*(*(a1 + 56) + 8 * v15));
        v13 = lappend(v13, v16);
        *(v3 + 24) = v13;
        v15 = v14++;
      }

      while (*(a1 + 48) > v15);
    }
  }

  *(v3 + 32) = *(a1 + 64) != 0;
  return v3;
}

unint64_t _readAlterPublicationStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x28uLL);
  *v3 = 338;
  v4 = *(a1 + 24);
  if (v4 && *v4)
  {
    *(v3 + 8) = pstrdup(v4);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node);
    *(v3 + 16) = v6;
    if (*(a1 + 32) >= 2uLL)
    {
      v7 = v6;
      v8 = 2;
      v9 = 1;
      do
      {
        v10 = _readNode(*(*(a1 + 40) + 8 * v9));
        v7 = lappend(v7, v10);
        *(v3 + 16) = v7;
        v9 = v8++;
      }

      while (*(a1 + 32) > v9);
    }
  }

  if (*(a1 + 48))
  {
    v11 = _readNode(**(a1 + 56));
    list_make1_impl(226, v11);
    *(v3 + 24) = v12;
    if (*(a1 + 48) >= 2uLL)
    {
      v13 = v12;
      v14 = 2;
      v15 = 1;
      do
      {
        v16 = _readNode(*(*(a1 + 56) + 8 * v15));
        v13 = lappend(v13, v16);
        *(v3 + 24) = v13;
        v15 = v14++;
      }

      while (*(a1 + 48) > v15);
    }
  }

  *(v3 + 32) = *(a1 + 64) != 0;
  v17 = *(a1 + 68);
  v18 = v17 - 2;
  v19 = v17 - 1;
  if (v18 >= 3)
  {
    v19 = 0;
  }

  *(v3 + 36) = v19;
  return v3;
}

unint64_t _readCreateSubscriptionStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x28uLL);
  *v3 = 339;
  v4 = *(a1 + 24);
  if (v4 && *v4)
  {
    *(v3 + 8) = pstrdup(v4);
  }

  v5 = *(a1 + 32);
  if (v5 && *v5)
  {
    *(v3 + 16) = pstrdup(v5);
  }

  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node);
    *(v3 + 24) = v7;
    if (*(a1 + 40) >= 2uLL)
    {
      v8 = v7;
      v9 = 2;
      v10 = 1;
      do
      {
        v11 = _readNode(*(*(a1 + 48) + 8 * v10));
        v8 = lappend(v8, v11);
        *(v3 + 24) = v8;
        v10 = v9++;
      }

      while (*(a1 + 40) > v10);
    }
  }

  if (*(a1 + 56))
  {
    v12 = _readNode(**(a1 + 64));
    list_make1_impl(226, v12);
    *(v3 + 32) = v13;
    if (*(a1 + 56) >= 2uLL)
    {
      v14 = v13;
      v15 = 2;
      v16 = 1;
      do
      {
        v17 = _readNode(*(*(a1 + 64) + 8 * v16));
        v14 = lappend(v14, v17);
        *(v3 + 32) = v14;
        v16 = v15++;
      }

      while (*(a1 + 56) > v16);
    }
  }

  return v3;
}

void *_readAlterSubscriptionStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x28uLL);
  v4 = v3;
  *v3 = 340;
  v5 = *(a1 + 24);
  v6 = v5 - 2;
  v7 = v5 - 1;
  if (v6 >= 4)
  {
    v7 = 0;
  }

  v3[1] = v7;
  v8 = *(a1 + 32);
  if (v8 && *v8)
  {
    v4[1] = pstrdup(v8);
  }

  v9 = *(a1 + 40);
  if (v9 && *v9)
  {
    v4[2] = pstrdup(v9);
  }

  if (*(a1 + 48))
  {
    Node = _readNode(**(a1 + 56));
    list_make1_impl(226, Node);
    v4[3] = v11;
    if (*(a1 + 48) >= 2uLL)
    {
      v12 = v11;
      v13 = 2;
      v14 = 1;
      do
      {
        v15 = _readNode(*(*(a1 + 56) + 8 * v14));
        v12 = lappend(v12, v15);
        v4[3] = v12;
        v14 = v13++;
      }

      while (*(a1 + 48) > v14);
    }
  }

  if (*(a1 + 64))
  {
    v16 = _readNode(**(a1 + 72));
    list_make1_impl(226, v16);
    v4[4] = v17;
    if (*(a1 + 64) >= 2uLL)
    {
      v18 = v17;
      v19 = 2;
      v20 = 1;
      do
      {
        v21 = _readNode(*(*(a1 + 72) + 8 * v20));
        v18 = lappend(v18, v21);
        v4[4] = v18;
        v20 = v19++;
      }

      while (*(a1 + 64) > v20);
    }
  }

  return v4;
}

unint64_t _readDropSubscriptionStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  result = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  *result = 341;
  v4 = *(a1 + 24);
  if (v4 && *v4)
  {
    v5 = result;
    v6 = pstrdup(*(a1 + 24));
    result = v5;
    *(v5 + 8) = v6;
  }

  *(result + 16) = *(a1 + 32) != 0;
  *(result + 20) = *(a1 + 36) == 2;
  return result;
}

unint64_t _readCreateStatsStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x38uLL);
  *v3 = 342;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node);
    *(v3 + 8) = v5;
    if (*(a1 + 24) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 32) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 8) = v6;
        v8 = v7++;
      }

      while (*(a1 + 24) > v8);
    }
  }

  if (*(a1 + 40))
  {
    v10 = _readNode(**(a1 + 48));
    list_make1_impl(226, v10);
    *(v3 + 16) = v11;
    if (*(a1 + 40) >= 2uLL)
    {
      v12 = v11;
      v13 = 2;
      v14 = 1;
      do
      {
        v15 = _readNode(*(*(a1 + 48) + 8 * v14));
        v12 = lappend(v12, v15);
        *(v3 + 16) = v12;
        v14 = v13++;
      }

      while (*(a1 + 40) > v14);
    }
  }

  if (*(a1 + 56))
  {
    v16 = _readNode(**(a1 + 64));
    list_make1_impl(226, v16);
    *(v3 + 24) = v17;
    if (*(a1 + 56) >= 2uLL)
    {
      v18 = v17;
      v19 = 2;
      v20 = 1;
      do
      {
        v21 = _readNode(*(*(a1 + 64) + 8 * v20));
        v18 = lappend(v18, v21);
        *(v3 + 24) = v18;
        v20 = v19++;
      }

      while (*(a1 + 56) > v20);
    }
  }

  if (*(a1 + 72))
  {
    v22 = _readNode(**(a1 + 80));
    list_make1_impl(226, v22);
    *(v3 + 32) = v23;
    if (*(a1 + 72) >= 2uLL)
    {
      v24 = v23;
      v25 = 2;
      v26 = 1;
      do
      {
        v27 = _readNode(*(*(a1 + 80) + 8 * v26));
        v24 = lappend(v24, v27);
        *(v3 + 32) = v24;
        v26 = v25++;
      }

      while (*(a1 + 72) > v26);
    }
  }

  v28 = *(a1 + 88);
  if (v28 && *v28)
  {
    *(v3 + 40) = pstrdup(v28);
  }

  *(v3 + 48) = *(a1 + 96) != 0;
  return v3;
}

unint64_t _readAlterCollationStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x10uLL);
  *v3 = 343;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node);
    *(v3 + 8) = v5;
    if (*(a1 + 24) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 32) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 8) = v6;
        v8 = v7++;
      }

      while (*(a1 + 24) > v8);
    }
  }

  return v3;
}

unint64_t _readCallStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  *v3 = 344;
  v4 = *(a1 + 24);
  if (v4)
  {
    *(v3 + 8) = _readFuncCall(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    *(v3 + 16) = _readFuncExpr(v5);
  }

  return v3;
}

unint64_t _readAlterStatsStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  *v3 = 345;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node);
    *(v3 + 8) = v5;
    if (*(a1 + 24) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 32) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 8) = v6;
        v8 = v7++;
      }

      while (*(a1 + 24) > v8);
    }
  }

  *(v3 + 16) = *(a1 + 40);
  *(v3 + 20) = *(a1 + 44) != 0;
  return v3;
}

_DWORD *_readAExpr(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x28uLL);
  v4 = v3;
  *v3 = 346;
  v5 = *(a1 + 24);
  v6 = v5 - 2;
  v7 = v5 - 1;
  if (v6 >= 0xF)
  {
    v7 = 0;
  }

  v3[1] = v7;
  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node);
    *(v4 + 1) = v9;
    if (*(a1 + 32) >= 2uLL)
    {
      v10 = v9;
      v11 = 2;
      v12 = 1;
      do
      {
        v13 = _readNode(*(*(a1 + 40) + 8 * v12));
        v10 = lappend(v10, v13);
        *(v4 + 1) = v10;
        v12 = v11++;
      }

      while (*(a1 + 32) > v12);
    }
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    *(v4 + 2) = _readNode(v14);
  }

  v15 = *(a1 + 56);
  if (v15)
  {
    *(v4 + 3) = _readNode(v15);
  }

  v4[8] = *(a1 + 64);
  return v4;
}

unint64_t _readColumnRef(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  *v3 = 347;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node);
    *(v3 + 8) = v5;
    if (*(a1 + 24) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 32) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 8) = v6;
        v8 = v7++;
      }

      while (*(a1 + 24) > v8);
    }
  }

  *(v3 + 16) = *(a1 + 40);
  return v3;
}

_DWORD *_readAConst(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  result = MemoryContextAllocZeroAligned(*v2, 0x20uLL);
  *result = 349;
  if (*(a1 + 24))
  {
    v4 = result;
    Node = _readNode(*(a1 + 24));
    result = v4;
    *(v4 + 2) = *Node;
  }

  result[6] = *(a1 + 32);
  return result;
}

unint64_t _readFuncCall(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x40uLL);
  *v3 = 350;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node);
    *(v3 + 8) = v5;
    if (*(a1 + 24) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 32) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 8) = v6;
        v8 = v7++;
      }

      while (*(a1 + 24) > v8);
    }
  }

  if (*(a1 + 40))
  {
    v10 = _readNode(**(a1 + 48));
    list_make1_impl(226, v10);
    *(v3 + 16) = v11;
    if (*(a1 + 40) >= 2uLL)
    {
      v12 = v11;
      v13 = 2;
      v14 = 1;
      do
      {
        v15 = _readNode(*(*(a1 + 48) + 8 * v14));
        v12 = lappend(v12, v15);
        *(v3 + 16) = v12;
        v14 = v13++;
      }

      while (*(a1 + 40) > v14);
    }
  }

  if (*(a1 + 56))
  {
    v16 = _readNode(**(a1 + 64));
    list_make1_impl(226, v16);
    *(v3 + 24) = v17;
    if (*(a1 + 56) >= 2uLL)
    {
      v18 = v17;
      v19 = 2;
      v20 = 1;
      do
      {
        v21 = _readNode(*(*(a1 + 64) + 8 * v20));
        v18 = lappend(v18, v21);
        *(v3 + 24) = v18;
        v20 = v19++;
      }

      while (*(a1 + 56) > v20);
    }
  }

  v22 = *(a1 + 72);
  if (v22)
  {
    *(v3 + 32) = _readNode(v22);
  }

  *(v3 + 40) = *(a1 + 80) != 0;
  *(v3 + 41) = *(a1 + 84) != 0;
  *(v3 + 42) = *(a1 + 88) != 0;
  *(v3 + 43) = *(a1 + 92) != 0;
  v23 = *(a1 + 96);
  if (v23)
  {
    *(v3 + 48) = _readWindowDef(v23);
  }

  *(v3 + 56) = *(a1 + 104);
  return v3;
}

unint64_t _readAIndices(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  *v3 = 352;
  *(v3 + 4) = *(a1 + 24) != 0;
  v4 = *(a1 + 32);
  if (v4)
  {
    *(v3 + 8) = _readNode(v4);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    *(v3 + 16) = _readNode(v5);
  }

  return v3;
}

unint64_t _readAIndirection(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  *v3 = 353;
  v4 = *(a1 + 24);
  if (v4)
  {
    *(v3 + 8) = _readNode(v4);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node);
    *(v3 + 16) = v6;
    if (*(a1 + 32) >= 2uLL)
    {
      v7 = v6;
      v8 = 2;
      v9 = 1;
      do
      {
        v10 = _readNode(*(*(a1 + 40) + 8 * v9));
        v7 = lappend(v7, v10);
        *(v3 + 16) = v7;
        v9 = v8++;
      }

      while (*(a1 + 32) > v9);
    }
  }

  return v3;
}

unint64_t _readAArrayExpr(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  *v3 = 354;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node);
    *(v3 + 8) = v5;
    if (*(a1 + 24) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 32) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 8) = v6;
        v8 = v7++;
      }

      while (*(a1 + 24) > v8);
    }
  }

  *(v3 + 16) = *(a1 + 40);
  return v3;
}

unint64_t _readResTarget(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x28uLL);
  *v3 = 355;
  v4 = *(a1 + 24);
  if (v4 && *v4)
  {
    *(v3 + 8) = pstrdup(v4);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node);
    *(v3 + 16) = v6;
    if (*(a1 + 32) >= 2uLL)
    {
      v7 = v6;
      v8 = 2;
      v9 = 1;
      do
      {
        v10 = _readNode(*(*(a1 + 40) + 8 * v9));
        v7 = lappend(v7, v10);
        *(v3 + 16) = v7;
        v9 = v8++;
      }

      while (*(a1 + 32) > v9);
    }
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    *(v3 + 24) = _readNode(v11);
  }

  *(v3 + 32) = *(a1 + 56);
  return v3;
}

_DWORD *_readMultiAssignRef(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  result = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  *result = 356;
  if (*(a1 + 24))
  {
    v4 = result;
    Node = _readNode(*(a1 + 24));
    result = v4;
    *(v4 + 1) = Node;
  }

  result[4] = *(a1 + 32);
  result[5] = *(a1 + 36);
  return result;
}

unint64_t _readTypeCast(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x20uLL);
  *v3 = 357;
  v4 = *(a1 + 24);
  if (v4)
  {
    *(v3 + 8) = _readNode(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    *(v3 + 16) = _readTypeName(v5);
  }

  *(v3 + 24) = *(a1 + 40);
  return v3;
}

unint64_t _readCollateClause(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x20uLL);
  *v3 = 358;
  v4 = *(a1 + 24);
  if (v4)
  {
    *(v3 + 8) = _readNode(v4);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node);
    *(v3 + 16) = v6;
    if (*(a1 + 32) >= 2uLL)
    {
      v7 = v6;
      v8 = 2;
      v9 = 1;
      do
      {
        v10 = _readNode(*(*(a1 + 40) + 8 * v9));
        v7 = lappend(v7, v10);
        *(v3 + 16) = v7;
        v9 = v8++;
      }

      while (*(a1 + 32) > v9);
    }
  }

  *(v3 + 24) = *(a1 + 48);
  return v3;
}

unint64_t _readSortBy(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x28uLL);
  *v3 = 359;
  v4 = *(a1 + 24);
  if (v4)
  {
    *(v3 + 8) = _readNode(v4);
  }

  v5 = *(a1 + 32);
  v6 = v5 - 2;
  v7 = v5 - 1;
  if (v6 >= 3)
  {
    v7 = 0;
  }

  *(v3 + 16) = v7;
  v8 = *(a1 + 36);
  if (v8 == 3)
  {
    v9 = 2;
  }

  else
  {
    v9 = v8 == 2;
  }

  *(v3 + 20) = v9;
  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node);
    *(v3 + 24) = v11;
    if (*(a1 + 40) >= 2uLL)
    {
      v12 = v11;
      v13 = 2;
      v14 = 1;
      do
      {
        v15 = _readNode(*(*(a1 + 48) + 8 * v14));
        v12 = lappend(v12, v15);
        *(v3 + 24) = v12;
        v14 = v13++;
      }

      while (*(a1 + 40) > v14);
    }
  }

  *(v3 + 32) = *(a1 + 56);
  return v3;
}

unint64_t _readWindowDef(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x48uLL);
  *v3 = 360;
  v4 = *(a1 + 24);
  if (v4 && *v4)
  {
    *(v3 + 8) = pstrdup(v4);
  }

  v5 = *(a1 + 32);
  if (v5 && *v5)
  {
    *(v3 + 16) = pstrdup(v5);
  }

  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node);
    *(v3 + 24) = v7;
    if (*(a1 + 40) >= 2uLL)
    {
      v8 = v7;
      v9 = 2;
      v10 = 1;
      do
      {
        v11 = _readNode(*(*(a1 + 48) + 8 * v10));
        v8 = lappend(v8, v11);
        *(v3 + 24) = v8;
        v10 = v9++;
      }

      while (*(a1 + 40) > v10);
    }
  }

  if (*(a1 + 56))
  {
    v12 = _readNode(**(a1 + 64));
    list_make1_impl(226, v12);
    *(v3 + 32) = v13;
    if (*(a1 + 56) >= 2uLL)
    {
      v14 = v13;
      v15 = 2;
      v16 = 1;
      do
      {
        v17 = _readNode(*(*(a1 + 64) + 8 * v16));
        v14 = lappend(v14, v17);
        *(v3 + 32) = v14;
        v16 = v15++;
      }

      while (*(a1 + 56) > v16);
    }
  }

  *(v3 + 40) = *(a1 + 72);
  v18 = *(a1 + 80);
  if (v18)
  {
    *(v3 + 48) = _readNode(v18);
  }

  v19 = *(a1 + 88);
  if (v19)
  {
    *(v3 + 56) = _readNode(v19);
  }

  *(v3 + 64) = *(a1 + 96);
  return v3;
}

unint64_t _readRangeSubselect(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  *v3 = 361;
  *(v3 + 4) = *(a1 + 24) != 0;
  v4 = *(a1 + 32);
  if (v4)
  {
    *(v3 + 8) = _readNode(v4);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    *(v3 + 16) = _readAlias(v5);
  }

  return v3;
}

unint64_t _readRangeFunction(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x20uLL);
  *v3 = 362;
  *(v3 + 4) = *(a1 + 24) != 0;
  *(v3 + 5) = *(a1 + 28) != 0;
  *(v3 + 6) = *(a1 + 32) != 0;
  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node);
    *(v3 + 8) = v5;
    if (*(a1 + 40) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 48) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 8) = v6;
        v8 = v7++;
      }

      while (*(a1 + 40) > v8);
    }
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    *(v3 + 16) = _readAlias(v10);
  }

  if (*(a1 + 64))
  {
    v11 = _readNode(**(a1 + 72));
    list_make1_impl(226, v11);
    *(v3 + 24) = v12;
    if (*(a1 + 64) >= 2uLL)
    {
      v13 = v12;
      v14 = 2;
      v15 = 1;
      do
      {
        v16 = _readNode(*(*(a1 + 72) + 8 * v15));
        v13 = lappend(v13, v16);
        *(v3 + 24) = v13;
        v15 = v14++;
      }

      while (*(a1 + 64) > v15);
    }
  }

  return v3;
}

unint64_t _readRangeTableSample(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x30uLL);
  *v3 = 363;
  v4 = *(a1 + 24);
  if (v4)
  {
    *(v3 + 8) = _readNode(v4);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node);
    *(v3 + 16) = v6;
    if (*(a1 + 32) >= 2uLL)
    {
      v7 = v6;
      v8 = 2;
      v9 = 1;
      do
      {
        v10 = _readNode(*(*(a1 + 40) + 8 * v9));
        v7 = lappend(v7, v10);
        *(v3 + 16) = v7;
        v9 = v8++;
      }

      while (*(a1 + 32) > v9);
    }
  }

  if (*(a1 + 48))
  {
    v11 = _readNode(**(a1 + 56));
    list_make1_impl(226, v11);
    *(v3 + 24) = v12;
    if (*(a1 + 48) >= 2uLL)
    {
      v13 = v12;
      v14 = 2;
      v15 = 1;
      do
      {
        v16 = _readNode(*(*(a1 + 56) + 8 * v15));
        v13 = lappend(v13, v16);
        *(v3 + 24) = v13;
        v15 = v14++;
      }

      while (*(a1 + 48) > v15);
    }
  }

  v17 = *(a1 + 64);
  if (v17)
  {
    *(v3 + 32) = _readNode(v17);
  }

  *(v3 + 40) = *(a1 + 72);
  return v3;
}

unint64_t _readRangeTableFunc(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x38uLL);
  *v3 = 364;
  *(v3 + 4) = *(a1 + 24) != 0;
  v4 = *(a1 + 32);
  if (v4)
  {
    *(v3 + 8) = _readNode(v4);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    *(v3 + 16) = _readNode(v5);
  }

  if (*(a1 + 48))
  {
    Node = _readNode(**(a1 + 56));
    list_make1_impl(226, Node);
    *(v3 + 24) = v7;
    if (*(a1 + 48) >= 2uLL)
    {
      v8 = v7;
      v9 = 2;
      v10 = 1;
      do
      {
        v11 = _readNode(*(*(a1 + 56) + 8 * v10));
        v8 = lappend(v8, v11);
        *(v3 + 24) = v8;
        v10 = v9++;
      }

      while (*(a1 + 48) > v10);
    }
  }

  if (*(a1 + 64))
  {
    v12 = _readNode(**(a1 + 72));
    list_make1_impl(226, v12);
    *(v3 + 32) = v13;
    if (*(a1 + 64) >= 2uLL)
    {
      v14 = v13;
      v15 = 2;
      v16 = 1;
      do
      {
        v17 = _readNode(*(*(a1 + 72) + 8 * v16));
        v14 = lappend(v14, v17);
        *(v3 + 32) = v14;
        v16 = v15++;
      }

      while (*(a1 + 64) > v16);
    }
  }

  v18 = *(a1 + 80);
  if (v18)
  {
    *(v3 + 40) = _readAlias(v18);
  }

  *(v3 + 48) = *(a1 + 88);
  return v3;
}

unint64_t _readRangeTableFuncCol(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x38uLL);
  *v3 = 365;
  v4 = *(a1 + 24);
  if (v4 && *v4)
  {
    *(v3 + 8) = pstrdup(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    *(v3 + 16) = _readTypeName(v5);
  }

  *(v3 + 24) = *(a1 + 40) != 0;
  *(v3 + 25) = *(a1 + 44) != 0;
  v6 = *(a1 + 48);
  if (v6)
  {
    *(v3 + 32) = _readNode(v6);
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    *(v3 + 40) = _readNode(v7);
  }

  *(v3 + 48) = *(a1 + 64);
  return v3;
}

unint64_t _readTypeName(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x38uLL);
  *v3 = 366;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node);
    *(v3 + 8) = v5;
    if (*(a1 + 24) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 32) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 8) = v6;
        v8 = v7++;
      }

      while (*(a1 + 24) > v8);
    }
  }

  *(v3 + 16) = *(a1 + 40);
  *(v3 + 20) = *(a1 + 44) != 0;
  *(v3 + 21) = *(a1 + 48) != 0;
  if (*(a1 + 56))
  {
    v10 = _readNode(**(a1 + 64));
    list_make1_impl(226, v10);
    *(v3 + 24) = v11;
    if (*(a1 + 56) >= 2uLL)
    {
      v12 = v11;
      v13 = 2;
      v14 = 1;
      do
      {
        v15 = _readNode(*(*(a1 + 64) + 8 * v14));
        v12 = lappend(v12, v15);
        *(v3 + 24) = v12;
        v14 = v13++;
      }

      while (*(a1 + 56) > v14);
    }
  }

  *(v3 + 32) = *(a1 + 72);
  if (*(a1 + 80))
  {
    v16 = _readNode(**(a1 + 88));
    list_make1_impl(226, v16);
    *(v3 + 40) = v17;
    if (*(a1 + 80) >= 2uLL)
    {
      v18 = v17;
      v19 = 2;
      v20 = 1;
      do
      {
        v21 = _readNode(*(*(a1 + 88) + 8 * v20));
        v18 = lappend(v18, v21);
        *(v3 + 40) = v18;
        v20 = v19++;
      }

      while (*(a1 + 80) > v20);
    }
  }

  *(v3 + 48) = *(a1 + 96);
  return v3;
}

unint64_t _readColumnDef(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x70uLL);
  *v3 = 367;
  v4 = *(a1 + 24);
  if (v4 && *v4)
  {
    *(v3 + 8) = pstrdup(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    *(v3 + 16) = _readTypeName(v5);
  }

  *(v3 + 24) = *(a1 + 40);
  *(v3 + 28) = *(a1 + 44) != 0;
  *(v3 + 29) = *(a1 + 48) != 0;
  *(v3 + 30) = *(a1 + 52) != 0;
  v6 = *(a1 + 56);
  if (v6)
  {
    v7 = *v6;
    if (v7)
    {
      *(v3 + 31) = v7;
    }
  }

  v8 = *(a1 + 64);
  if (v8)
  {
    *(v3 + 32) = _readNode(v8);
  }

  v9 = *(a1 + 72);
  if (v9)
  {
    *(v3 + 40) = _readNode(v9);
  }

  v10 = *(a1 + 80);
  if (v10)
  {
    v11 = *v10;
    if (v11)
    {
      *(v3 + 48) = v11;
    }
  }

  v12 = *(a1 + 88);
  if (v12)
  {
    *(v3 + 56) = _readRangeVar(v12);
  }

  v13 = *(a1 + 96);
  if (v13)
  {
    v14 = *v13;
    if (v14)
    {
      *(v3 + 64) = v14;
    }
  }

  v15 = *(a1 + 104);
  if (v15)
  {
    *(v3 + 72) = _readCollateClause(v15);
  }

  *(v3 + 80) = *(a1 + 112);
  if (*(a1 + 120))
  {
    Node = _readNode(**(a1 + 128));
    list_make1_impl(226, Node);
    *(v3 + 88) = v17;
    if (*(a1 + 120) >= 2uLL)
    {
      v18 = v17;
      v19 = 2;
      v20 = 1;
      do
      {
        v21 = _readNode(*(*(a1 + 128) + 8 * v20));
        v18 = lappend(v18, v21);
        *(v3 + 88) = v18;
        v20 = v19++;
      }

      while (*(a1 + 120) > v20);
    }
  }

  if (*(a1 + 136))
  {
    v22 = _readNode(**(a1 + 144));
    list_make1_impl(226, v22);
    *(v3 + 96) = v23;
    if (*(a1 + 136) >= 2uLL)
    {
      v24 = v23;
      v25 = 2;
      v26 = 1;
      do
      {
        v27 = _readNode(*(*(a1 + 144) + 8 * v26));
        v24 = lappend(v24, v27);
        *(v3 + 96) = v24;
        v26 = v25++;
      }

      while (*(a1 + 136) > v26);
    }
  }

  *(v3 + 104) = *(a1 + 152);
  return v3;
}

unint64_t _readIndexElem(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x40uLL);
  *v3 = 368;
  v4 = *(a1 + 24);
  if (v4 && *v4)
  {
    *(v3 + 8) = pstrdup(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    *(v3 + 16) = _readNode(v5);
  }

  v6 = *(a1 + 40);
  if (v6 && *v6)
  {
    *(v3 + 24) = pstrdup(v6);
  }

  if (*(a1 + 48))
  {
    Node = _readNode(**(a1 + 56));
    list_make1_impl(226, Node);
    *(v3 + 32) = v8;
    if (*(a1 + 48) >= 2uLL)
    {
      v9 = v8;
      v10 = 2;
      v11 = 1;
      do
      {
        v12 = _readNode(*(*(a1 + 56) + 8 * v11));
        v9 = lappend(v9, v12);
        *(v3 + 32) = v9;
        v11 = v10++;
      }

      while (*(a1 + 48) > v11);
    }
  }

  if (*(a1 + 64))
  {
    v13 = _readNode(**(a1 + 72));
    list_make1_impl(226, v13);
    *(v3 + 40) = v14;
    if (*(a1 + 64) >= 2uLL)
    {
      v15 = v14;
      v16 = 2;
      v17 = 1;
      do
      {
        v18 = _readNode(*(*(a1 + 72) + 8 * v17));
        v15 = lappend(v15, v18);
        *(v3 + 40) = v15;
        v17 = v16++;
      }

      while (*(a1 + 64) > v17);
    }
  }

  if (*(a1 + 80))
  {
    v19 = _readNode(**(a1 + 88));
    list_make1_impl(226, v19);
    *(v3 + 48) = v20;
    if (*(a1 + 80) >= 2uLL)
    {
      v21 = v20;
      v22 = 2;
      v23 = 1;
      do
      {
        v24 = _readNode(*(*(a1 + 88) + 8 * v23));
        v21 = lappend(v21, v24);
        *(v3 + 48) = v21;
        v23 = v22++;
      }

      while (*(a1 + 80) > v23);
    }
  }

  v25 = *(a1 + 96);
  v26 = v25 - 2;
  v27 = v25 - 1;
  if (v26 >= 3)
  {
    v27 = 0;
  }

  *(v3 + 56) = v27;
  v28 = *(a1 + 100);
  if (v28 == 3)
  {
    v29 = 2;
  }

  else
  {
    v29 = v28 == 2;
  }

  *(v3 + 60) = v29;
  return v3;
}

_DWORD *_readConstraint(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0xB0uLL);
  v4 = v3;
  *v3 = 369;
  v5 = *(a1 + 24);
  v6 = v5 - 2;
  v7 = v5 - 1;
  if (v6 >= 0xD)
  {
    v7 = 0;
  }

  v3[1] = v7;
  v8 = *(a1 + 32);
  if (v8 && *v8)
  {
    *(v4 + 1) = pstrdup(v8);
  }

  *(v4 + 16) = *(a1 + 40) != 0;
  *(v4 + 17) = *(a1 + 44) != 0;
  v4[5] = *(a1 + 48);
  *(v4 + 24) = *(a1 + 52) != 0;
  v9 = *(a1 + 56);
  if (v9)
  {
    *(v4 + 4) = _readNode(v9);
  }

  v10 = *(a1 + 64);
  if (v10 && *v10)
  {
    *(v4 + 5) = pstrdup(v10);
  }

  v11 = *(a1 + 72);
  if (v11)
  {
    v12 = *v11;
    if (v12)
    {
      *(v4 + 48) = v12;
    }
  }

  if (*(a1 + 80))
  {
    Node = _readNode(**(a1 + 88));
    list_make1_impl(226, Node);
    *(v4 + 7) = v14;
    if (*(a1 + 80) >= 2uLL)
    {
      v15 = v14;
      v16 = 2;
      v17 = 1;
      do
      {
        v18 = _readNode(*(*(a1 + 88) + 8 * v17));
        v15 = lappend(v15, v18);
        *(v4 + 7) = v15;
        v17 = v16++;
      }

      while (*(a1 + 80) > v17);
    }
  }

  if (*(a1 + 96))
  {
    v19 = _readNode(**(a1 + 104));
    list_make1_impl(226, v19);
    *(v4 + 8) = v20;
    if (*(a1 + 96) >= 2uLL)
    {
      v21 = v20;
      v22 = 2;
      v23 = 1;
      do
      {
        v24 = _readNode(*(*(a1 + 104) + 8 * v23));
        v21 = lappend(v21, v24);
        *(v4 + 8) = v21;
        v23 = v22++;
      }

      while (*(a1 + 96) > v23);
    }
  }

  if (*(a1 + 112))
  {
    v25 = _readNode(**(a1 + 120));
    list_make1_impl(226, v25);
    *(v4 + 9) = v26;
    if (*(a1 + 112) >= 2uLL)
    {
      v27 = v26;
      v28 = 2;
      v29 = 1;
      do
      {
        v30 = _readNode(*(*(a1 + 120) + 8 * v29));
        v27 = lappend(v27, v30);
        *(v4 + 9) = v27;
        v29 = v28++;
      }

      while (*(a1 + 112) > v29);
    }
  }

  if (*(a1 + 128))
  {
    v31 = _readNode(**(a1 + 136));
    list_make1_impl(226, v31);
    *(v4 + 10) = v32;
    if (*(a1 + 128) >= 2uLL)
    {
      v33 = v32;
      v34 = 2;
      v35 = 1;
      do
      {
        v36 = _readNode(*(*(a1 + 136) + 8 * v35));
        v33 = lappend(v33, v36);
        *(v4 + 10) = v33;
        v35 = v34++;
      }

      while (*(a1 + 128) > v35);
    }
  }

  v37 = *(a1 + 144);
  if (v37 && *v37)
  {
    *(v4 + 11) = pstrdup(v37);
  }

  v38 = *(a1 + 152);
  if (v38 && *v38)
  {
    *(v4 + 12) = pstrdup(v38);
  }

  *(v4 + 104) = *(a1 + 160) != 0;
  v39 = *(a1 + 168);
  if (v39 && *v39)
  {
    *(v4 + 14) = pstrdup(v39);
  }

  v40 = *(a1 + 176);
  if (v40)
  {
    *(v4 + 15) = _readNode(v40);
  }

  v41 = *(a1 + 184);
  if (v41)
  {
    *(v4 + 16) = _readRangeVar(v41);
  }

  if (*(a1 + 192))
  {
    v42 = _readNode(**(a1 + 200));
    list_make1_impl(226, v42);
    *(v4 + 17) = v43;
    if (*(a1 + 192) >= 2uLL)
    {
      v44 = v43;
      v45 = 2;
      v46 = 1;
      do
      {
        v47 = _readNode(*(*(a1 + 200) + 8 * v46));
        v44 = lappend(v44, v47);
        *(v4 + 17) = v44;
        v46 = v45++;
      }

      while (*(a1 + 192) > v46);
    }
  }

  if (*(a1 + 208))
  {
    v48 = _readNode(**(a1 + 216));
    list_make1_impl(226, v48);
    *(v4 + 18) = v49;
    if (*(a1 + 208) >= 2uLL)
    {
      v50 = v49;
      v51 = 2;
      v52 = 1;
      do
      {
        v53 = _readNode(*(*(a1 + 216) + 8 * v52));
        v50 = lappend(v50, v53);
        *(v4 + 18) = v50;
        v52 = v51++;
      }

      while (*(a1 + 208) > v52);
    }
  }

  v54 = *(a1 + 224);
  if (v54)
  {
    v55 = *v54;
    if (v55)
    {
      *(v4 + 152) = v55;
    }
  }

  v56 = *(a1 + 232);
  if (v56)
  {
    v57 = *v56;
    if (v57)
    {
      *(v4 + 153) = v57;
    }
  }

  v58 = *(a1 + 240);
  if (v58)
  {
    v59 = *v58;
    if (v59)
    {
      *(v4 + 154) = v59;
    }
  }

  if (*(a1 + 248))
  {
    v60 = _readNode(**(a1 + 256));
    list_make1_impl(226, v60);
    *(v4 + 20) = v61;
    if (*(a1 + 248) >= 2uLL)
    {
      v62 = v61;
      v63 = 2;
      v64 = 1;
      do
      {
        v65 = _readNode(*(*(a1 + 256) + 8 * v64));
        v62 = lappend(v62, v65);
        *(v4 + 20) = v62;
        v64 = v63++;
      }

      while (*(a1 + 248) > v64);
    }
  }

  v4[42] = *(a1 + 264);
  *(v4 + 172) = *(a1 + 268) != 0;
  *(v4 + 173) = *(a1 + 272) != 0;
  return v4;
}

unint64_t _readDefElem(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x28uLL);
  *v3 = 370;
  v4 = *(a1 + 24);
  if (v4 && *v4)
  {
    *(v3 + 8) = pstrdup(v4);
  }

  v5 = *(a1 + 32);
  if (v5 && *v5)
  {
    *(v3 + 16) = pstrdup(v5);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    *(v3 + 24) = _readNode(v6);
  }

  v7 = *(a1 + 48);
  v8 = v7 - 2;
  v9 = v7 - 1;
  if (v8 >= 3)
  {
    v9 = 0;
  }

  *(v3 + 32) = v9;
  *(v3 + 36) = *(a1 + 52);
  return v3;
}

unint64_t _readRangeTblEntry(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0xF0uLL);
  v4 = v3;
  *v3 = 371;
  v5 = *(a1 + 24);
  v6 = v5 - 2;
  v7 = v5 - 1;
  if (v6 >= 8)
  {
    v7 = 0;
  }

  *(v3 + 4) = v7;
  *(v3 + 8) = *(a1 + 28);
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *v8;
    if (v9)
    {
      *(v3 + 12) = v9;
    }
  }

  *(v3 + 16) = *(a1 + 40);
  v10 = *(a1 + 48);
  if (v10)
  {
    *(v4 + 24) = _readTableSampleClause(v10);
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    *(v4 + 32) = _readQuery(v11);
  }

  *(v4 + 40) = *(a1 + 64) != 0;
  v12 = *(a1 + 68);
  v13 = v12 - 2;
  v14 = v12 - 1;
  if (v13 >= 7)
  {
    v14 = 0;
  }

  *(v4 + 44) = v14;
  *(v4 + 48) = *(a1 + 72);
  if (*(a1 + 80))
  {
    Node = _readNode(**(a1 + 88));
    list_make1_impl(226, Node);
    *(v4 + 56) = v16;
    if (*(a1 + 80) >= 2uLL)
    {
      v17 = v16;
      v18 = 2;
      v19 = 1;
      do
      {
        v20 = _readNode(*(*(a1 + 88) + 8 * v19));
        v17 = lappend(v17, v20);
        *(v4 + 56) = v17;
        v19 = v18++;
      }

      while (*(a1 + 80) > v19);
    }
  }

  if (*(a1 + 96))
  {
    v21 = _readNode(**(a1 + 104));
    list_make1_impl(226, v21);
    *(v4 + 64) = v22;
    if (*(a1 + 96) >= 2uLL)
    {
      v23 = v22;
      v24 = 2;
      v25 = 1;
      do
      {
        v26 = _readNode(*(*(a1 + 104) + 8 * v25));
        v23 = lappend(v23, v26);
        *(v4 + 64) = v23;
        v25 = v24++;
      }

      while (*(a1 + 96) > v25);
    }
  }

  if (*(a1 + 112))
  {
    v27 = _readNode(**(a1 + 120));
    list_make1_impl(226, v27);
    *(v4 + 72) = v28;
    if (*(a1 + 112) >= 2uLL)
    {
      v29 = v28;
      v30 = 2;
      v31 = 1;
      do
      {
        v32 = _readNode(*(*(a1 + 120) + 8 * v31));
        v29 = lappend(v29, v32);
        *(v4 + 72) = v29;
        v31 = v30++;
      }

      while (*(a1 + 112) > v31);
    }
  }

  if (*(a1 + 128))
  {
    v33 = _readNode(**(a1 + 136));
    list_make1_impl(226, v33);
    *(v4 + 80) = v34;
    if (*(a1 + 128) >= 2uLL)
    {
      v35 = v34;
      v36 = 2;
      v37 = 1;
      do
      {
        v38 = _readNode(*(*(a1 + 136) + 8 * v37));
        v35 = lappend(v35, v38);
        *(v4 + 80) = v35;
        v37 = v36++;
      }

      while (*(a1 + 128) > v37);
    }
  }

  *(v4 + 88) = *(a1 + 144) != 0;
  v39 = *(a1 + 152);
  if (v39)
  {
    *(v4 + 96) = _readTableFunc(v39);
  }

  if (*(a1 + 160))
  {
    v40 = _readNode(**(a1 + 168));
    list_make1_impl(226, v40);
    *(v4 + 104) = v41;
    if (*(a1 + 160) >= 2uLL)
    {
      v42 = v41;
      v43 = 2;
      v44 = 1;
      do
      {
        v45 = _readNode(*(*(a1 + 168) + 8 * v44));
        v42 = lappend(v42, v45);
        *(v4 + 104) = v42;
        v44 = v43++;
      }

      while (*(a1 + 160) > v44);
    }
  }

  v46 = *(a1 + 176);
  if (v46 && *v46)
  {
    *(v4 + 112) = pstrdup(v46);
  }

  *(v4 + 120) = *(a1 + 184);
  *(v4 + 124) = *(a1 + 188) != 0;
  if (*(a1 + 192))
  {
    v47 = _readNode(**(a1 + 200));
    list_make1_impl(226, v47);
    *(v4 + 128) = v48;
    if (*(a1 + 192) >= 2uLL)
    {
      v49 = v48;
      v50 = 2;
      v51 = 1;
      do
      {
        v52 = _readNode(*(*(a1 + 200) + 8 * v51));
        v49 = lappend(v49, v52);
        *(v4 + 128) = v49;
        v51 = v50++;
      }

      while (*(a1 + 192) > v51);
    }
  }

  if (*(a1 + 208))
  {
    v53 = _readNode(**(a1 + 216));
    list_make1_impl(226, v53);
    *(v4 + 136) = v54;
    if (*(a1 + 208) >= 2uLL)
    {
      v55 = v54;
      v56 = 2;
      v57 = 1;
      do
      {
        v58 = _readNode(*(*(a1 + 216) + 8 * v57));
        v55 = lappend(v55, v58);
        *(v4 + 136) = v55;
        v57 = v56++;
      }

      while (*(a1 + 208) > v57);
    }
  }

  if (*(a1 + 224))
  {
    v59 = _readNode(**(a1 + 232));
    list_make1_impl(226, v59);
    *(v4 + 144) = v60;
    if (*(a1 + 224) >= 2uLL)
    {
      v61 = v60;
      v62 = 2;
      v63 = 1;
      do
      {
        v64 = _readNode(*(*(a1 + 232) + 8 * v63));
        v61 = lappend(v61, v64);
        *(v4 + 144) = v61;
        v63 = v62++;
      }

      while (*(a1 + 224) > v63);
    }
  }

  v65 = *(a1 + 240);
  if (v65 && *v65)
  {
    *(v4 + 152) = pstrdup(v65);
  }

  *(v4 + 160) = *(a1 + 248);
  v66 = *(a1 + 256);
  if (v66)
  {
    *(v4 + 168) = _readAlias(v66);
  }

  v67 = *(a1 + 264);
  if (v67)
  {
    *(v4 + 176) = _readAlias(v67);
  }

  *(v4 + 184) = *(a1 + 272) != 0;
  *(v4 + 185) = *(a1 + 276) != 0;
  *(v4 + 186) = *(a1 + 280) != 0;
  *(v4 + 188) = *(a1 + 284);
  *(v4 + 192) = *(a1 + 288);
  if (*(a1 + 360))
  {
    v68 = _readNode(**(a1 + 368));
    list_make1_impl(226, v68);
    *(v4 + 232) = v69;
    if (*(a1 + 360) >= 2uLL)
    {
      v70 = v69;
      v71 = 2;
      v72 = 1;
      do
      {
        v73 = _readNode(*(*(a1 + 368) + 8 * v72));
        v70 = lappend(v70, v73);
        *(v4 + 232) = v70;
        v72 = v71++;
      }

      while (*(a1 + 360) > v72);
    }
  }

  return v4;
}

unint64_t _readRangeTblFunction(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x40uLL);
  *v3 = 372;
  v4 = *(a1 + 24);
  if (v4)
  {
    *(v3 + 8) = _readNode(v4);
  }

  *(v3 + 16) = *(a1 + 32);
  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node);
    *(v3 + 24) = v6;
    if (*(a1 + 40) >= 2uLL)
    {
      v7 = v6;
      v8 = 2;
      v9 = 1;
      do
      {
        v10 = _readNode(*(*(a1 + 48) + 8 * v9));
        v7 = lappend(v7, v10);
        *(v3 + 24) = v7;
        v9 = v8++;
      }

      while (*(a1 + 40) > v9);
    }
  }

  if (*(a1 + 56))
  {
    v11 = _readNode(**(a1 + 64));
    list_make1_impl(226, v11);
    *(v3 + 32) = v12;
    if (*(a1 + 56) >= 2uLL)
    {
      v13 = v12;
      v14 = 2;
      v15 = 1;
      do
      {
        v16 = _readNode(*(*(a1 + 64) + 8 * v15));
        v13 = lappend(v13, v16);
        *(v3 + 32) = v13;
        v15 = v14++;
      }

      while (*(a1 + 56) > v15);
    }
  }

  if (*(a1 + 72))
  {
    v17 = _readNode(**(a1 + 80));
    list_make1_impl(226, v17);
    *(v3 + 40) = v18;
    if (*(a1 + 72) >= 2uLL)
    {
      v19 = v18;
      v20 = 2;
      v21 = 1;
      do
      {
        v22 = _readNode(*(*(a1 + 80) + 8 * v21));
        v19 = lappend(v19, v22);
        *(v3 + 40) = v19;
        v21 = v20++;
      }

      while (*(a1 + 72) > v21);
    }
  }

  if (*(a1 + 88))
  {
    v23 = _readNode(**(a1 + 96));
    list_make1_impl(226, v23);
    *(v3 + 48) = v24;
    if (*(a1 + 88) >= 2uLL)
    {
      v25 = v24;
      v26 = 2;
      v27 = 1;
      do
      {
        v28 = _readNode(*(*(a1 + 96) + 8 * v27));
        v25 = lappend(v25, v28);
        *(v3 + 48) = v25;
        v27 = v26++;
      }

      while (*(a1 + 88) > v27);
    }
  }

  return v3;
}

unint64_t _readTableSampleClause(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  *v3 = 373;
  *(v3 + 4) = *(a1 + 24);
  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node);
    *(v3 + 8) = v5;
    if (*(a1 + 32) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 40) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 8) = v6;
        v8 = v7++;
      }

      while (*(a1 + 32) > v8);
    }
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    *(v3 + 16) = _readNode(v10);
  }

  return v3;
}

_DWORD *_readWithCheckOption(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x28uLL);
  v4 = v3;
  *v3 = 374;
  v5 = *(a1 + 24);
  v6 = v5 - 2;
  v7 = v5 - 1;
  if (v6 >= 3)
  {
    v7 = 0;
  }

  v3[1] = v7;
  v8 = *(a1 + 32);
  if (v8 && *v8)
  {
    *(v4 + 1) = pstrdup(v8);
  }

  v9 = *(a1 + 40);
  if (v9 && *v9)
  {
    *(v4 + 2) = pstrdup(v9);
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    *(v4 + 3) = _readNode(v10);
  }

  *(v4 + 32) = *(a1 + 56) != 0;
  return v4;
}

unint64_t _readSortGroupClause(_DWORD *a1)
{
  v2 = CurrentMemoryContext();
  result = MemoryContextAllocZero(*v2, 0x14uLL);
  *result = 375;
  *(result + 4) = a1[6];
  *(result + 8) = a1[7];
  *(result + 12) = a1[8];
  *(result + 16) = a1[9] != 0;
  *(result + 17) = a1[10] != 0;
  return result;
}

_DWORD *_readGroupingSet(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  v4 = v3;
  *v3 = 376;
  v5 = *(a1 + 24);
  v6 = v5 - 2;
  v7 = v5 - 1;
  if (v6 >= 4)
  {
    v7 = 0;
  }

  v3[1] = v7;
  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node);
    *(v4 + 1) = v9;
    if (*(a1 + 32) >= 2uLL)
    {
      v10 = v9;
      v11 = 2;
      v12 = 1;
      do
      {
        v13 = _readNode(*(*(a1 + 40) + 8 * v12));
        v10 = lappend(v10, v13);
        *(v4 + 1) = v10;
        v12 = v11++;
      }

      while (*(a1 + 32) > v12);
    }
  }

  v4[4] = *(a1 + 48);
  return v4;
}

unint64_t _readWindowClause(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x58uLL);
  *v3 = 377;
  v4 = *(a1 + 24);
  if (v4 && *v4)
  {
    *(v3 + 8) = pstrdup(v4);
  }

  v5 = *(a1 + 32);
  if (v5 && *v5)
  {
    *(v3 + 16) = pstrdup(v5);
  }

  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node);
    *(v3 + 24) = v7;
    if (*(a1 + 40) >= 2uLL)
    {
      v8 = v7;
      v9 = 2;
      v10 = 1;
      do
      {
        v11 = _readNode(*(*(a1 + 48) + 8 * v10));
        v8 = lappend(v8, v11);
        *(v3 + 24) = v8;
        v10 = v9++;
      }

      while (*(a1 + 40) > v10);
    }
  }

  if (*(a1 + 56))
  {
    v12 = _readNode(**(a1 + 64));
    list_make1_impl(226, v12);
    *(v3 + 32) = v13;
    if (*(a1 + 56) >= 2uLL)
    {
      v14 = v13;
      v15 = 2;
      v16 = 1;
      do
      {
        v17 = _readNode(*(*(a1 + 64) + 8 * v16));
        v14 = lappend(v14, v17);
        *(v3 + 32) = v14;
        v16 = v15++;
      }

      while (*(a1 + 56) > v16);
    }
  }

  *(v3 + 40) = *(a1 + 72);
  v18 = *(a1 + 80);
  if (v18)
  {
    *(v3 + 48) = _readNode(v18);
  }

  v19 = *(a1 + 88);
  if (v19)
  {
    *(v3 + 56) = _readNode(v19);
  }

  *(v3 + 64) = *(a1 + 96);
  *(v3 + 68) = *(a1 + 100);
  *(v3 + 72) = *(a1 + 104);
  *(v3 + 76) = *(a1 + 108) != 0;
  *(v3 + 77) = *(a1 + 112) != 0;
  *(v3 + 80) = *(a1 + 116);
  *(v3 + 84) = *(a1 + 120) != 0;
  return v3;
}

unint64_t _readObjectWithArgs(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x20uLL);
  *v3 = 378;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node);
    *(v3 + 8) = v5;
    if (*(a1 + 24) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 32) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 8) = v6;
        v8 = v7++;
      }

      while (*(a1 + 24) > v8);
    }
  }

  if (*(a1 + 40))
  {
    v10 = _readNode(**(a1 + 48));
    list_make1_impl(226, v10);
    *(v3 + 16) = v11;
    if (*(a1 + 40) >= 2uLL)
    {
      v12 = v11;
      v13 = 2;
      v14 = 1;
      do
      {
        v15 = _readNode(*(*(a1 + 48) + 8 * v14));
        v12 = lappend(v12, v15);
        *(v3 + 16) = v12;
        v14 = v13++;
      }

      while (*(a1 + 40) > v14);
    }
  }

  *(v3 + 24) = *(a1 + 56) != 0;
  return v3;
}

unint64_t _readAccessPriv(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  *v3 = 379;
  v4 = *(a1 + 24);
  if (v4 && *v4)
  {
    *(v3 + 8) = pstrdup(v4);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node);
    *(v3 + 16) = v6;
    if (*(a1 + 32) >= 2uLL)
    {
      v7 = v6;
      v8 = 2;
      v9 = 1;
      do
      {
        v10 = _readNode(*(*(a1 + 40) + 8 * v9));
        v7 = lappend(v7, v10);
        *(v3 + 16) = v7;
        v9 = v8++;
      }

      while (*(a1 + 32) > v9);
    }
  }

  return v3;
}

unint64_t _readCreateOpClassItem(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x30uLL);
  *v3 = 380;
  *(v3 + 4) = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v4)
  {
    *(v3 + 8) = _readObjectWithArgs(v4);
  }

  *(v3 + 16) = *(a1 + 40);
  if (*(a1 + 48))
  {
    Node = _readNode(**(a1 + 56));
    list_make1_impl(226, Node);
    *(v3 + 24) = v6;
    if (*(a1 + 48) >= 2uLL)
    {
      v7 = v6;
      v8 = 2;
      v9 = 1;
      do
      {
        v10 = _readNode(*(*(a1 + 56) + 8 * v9));
        v7 = lappend(v7, v10);
        *(v3 + 24) = v7;
        v9 = v8++;
      }

      while (*(a1 + 48) > v9);
    }
  }

  if (*(a1 + 64))
  {
    v11 = _readNode(**(a1 + 72));
    list_make1_impl(226, v11);
    *(v3 + 32) = v12;
    if (*(a1 + 64) >= 2uLL)
    {
      v13 = v12;
      v14 = 2;
      v15 = 1;
      do
      {
        v16 = _readNode(*(*(a1 + 72) + 8 * v15));
        v13 = lappend(v13, v16);
        *(v3 + 32) = v13;
        v15 = v14++;
      }

      while (*(a1 + 64) > v15);
    }
  }

  v17 = *(a1 + 80);
  if (v17)
  {
    *(v3 + 40) = _readTypeName(v17);
  }

  return v3;
}

_DWORD *_readTableLikeClause(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  result = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  *result = 381;
  if (*(a1 + 24))
  {
    v4 = result;
    RangeVar = _readRangeVar(*(a1 + 24));
    result = v4;
    *(v4 + 1) = RangeVar;
  }

  result[4] = *(a1 + 32);
  result[5] = *(a1 + 36);
  return result;
}

unint64_t _readFunctionParameter(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x28uLL);
  *v3 = 382;
  v4 = *(a1 + 24);
  if (v4 && *v4)
  {
    *(v3 + 8) = pstrdup(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    *(v3 + 16) = _readTypeName(v5);
  }

  v6 = *(a1 + 40) - 2;
  if (v6 <= 3)
  {
    *(v3 + 24) = *&aO[4 * v6];
    v7 = *(a1 + 48);
    if (!v7)
    {
      return v3;
    }

    goto LABEL_10;
  }

  *(v3 + 24) = 105;
  v7 = *(a1 + 48);
  if (v7)
  {
LABEL_10:
    *(v3 + 32) = _readNode(v7);
  }

  return v3;
}

unint64_t _readLockingClause(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  *v3 = 383;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node);
    *(v3 + 8) = v5;
    if (*(a1 + 24) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 32) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 8) = v6;
        v8 = v7++;
      }

      while (*(a1 + 24) > v8);
    }
  }

  v10 = *(a1 + 40);
  v11 = v10 - 2;
  v12 = v10 - 1;
  if (v11 >= 4)
  {
    v12 = 0;
  }

  *(v3 + 16) = v12;
  v13 = *(a1 + 44);
  if (v13 == 3)
  {
    v14 = 2;
  }

  else
  {
    v14 = v13 == 2;
  }

  *(v3 + 20) = v14;
  return v3;
}

unint64_t _readRowMarkClause(_DWORD *a1)
{
  v2 = CurrentMemoryContext();
  result = MemoryContextAllocZero(*v2, 0x14uLL);
  *result = 384;
  *(result + 4) = a1[6];
  v4 = a1[7];
  v5 = v4 - 2;
  v6 = v4 - 1;
  if (v5 >= 4)
  {
    v6 = 0;
  }

  *(result + 8) = v6;
  v7 = a1[8];
  if (v7 == 3)
  {
    v8 = 2;
  }

  else
  {
    v8 = v7 == 2;
  }

  *(result + 12) = v8;
  *(result + 16) = a1[9] != 0;
  return result;
}

unint64_t _readXmlSerialize(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x20uLL);
  *v3 = 385;
  *(v3 + 4) = *(a1 + 24) == 2;
  v4 = *(a1 + 32);
  if (v4)
  {
    *(v3 + 8) = _readNode(v4);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    *(v3 + 16) = _readTypeName(v5);
  }

  *(v3 + 24) = *(a1 + 48);
  return v3;
}

unint64_t _readWithClause(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  *v3 = 386;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node);
    *(v3 + 8) = v5;
    if (*(a1 + 24) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 32) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 8) = v6;
        v8 = v7++;
      }

      while (*(a1 + 24) > v8);
    }
  }

  *(v3 + 16) = *(a1 + 40) != 0;
  *(v3 + 20) = *(a1 + 44);
  return v3;
}

unint64_t _readInferClause(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x28uLL);
  *v3 = 387;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node);
    *(v3 + 8) = v5;
    if (*(a1 + 24) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 32) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 8) = v6;
        v8 = v7++;
      }

      while (*(a1 + 24) > v8);
    }
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    *(v3 + 16) = _readNode(v10);
  }

  v11 = *(a1 + 48);
  if (v11 && *v11)
  {
    *(v3 + 24) = pstrdup(v11);
  }

  *(v3 + 32) = *(a1 + 56);
  return v3;
}

_DWORD *_readOnConflictClause(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x28uLL);
  v4 = v3;
  *v3 = 388;
  v5 = *(a1 + 24);
  if (v5 == 3)
  {
    v6 = 2;
  }

  else
  {
    v6 = v5 == 2;
  }

  v3[1] = v6;
  v7 = *(a1 + 32);
  if (v7)
  {
    *(v4 + 1) = _readInferClause(v7);
  }

  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node);
    *(v4 + 2) = v9;
    if (*(a1 + 40) >= 2uLL)
    {
      v10 = v9;
      v11 = 2;
      v12 = 1;
      do
      {
        v13 = _readNode(*(*(a1 + 48) + 8 * v12));
        v10 = lappend(v10, v13);
        *(v4 + 2) = v10;
        v12 = v11++;
      }

      while (*(a1 + 40) > v12);
    }
  }

  v14 = *(a1 + 56);
  if (v14)
  {
    *(v4 + 3) = _readNode(v14);
  }

  v4[8] = *(a1 + 64);
  return v4;
}

unint64_t _readCommonTableExpr(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x58uLL);
  *v3 = 389;
  v4 = *(a1 + 24);
  if (v4 && *v4)
  {
    *(v3 + 8) = pstrdup(v4);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node);
    *(v3 + 16) = v6;
    if (*(a1 + 32) >= 2uLL)
    {
      v7 = v6;
      v8 = 2;
      v9 = 1;
      do
      {
        v10 = _readNode(*(*(a1 + 40) + 8 * v9));
        v7 = lappend(v7, v10);
        *(v3 + 16) = v7;
        v9 = v8++;
      }

      while (*(a1 + 32) > v9);
    }
  }

  v11 = *(a1 + 48);
  if (v11 == 3)
  {
    v12 = 2;
  }

  else
  {
    v12 = v11 == 2;
  }

  *(v3 + 24) = v12;
  v13 = *(a1 + 56);
  if (v13)
  {
    *(v3 + 32) = _readNode(v13);
  }

  *(v3 + 40) = *(a1 + 64);
  *(v3 + 44) = *(a1 + 68) != 0;
  *(v3 + 48) = *(a1 + 72);
  if (*(a1 + 80))
  {
    v14 = _readNode(**(a1 + 88));
    list_make1_impl(226, v14);
    *(v3 + 56) = v15;
    if (*(a1 + 80) >= 2uLL)
    {
      v16 = v15;
      v17 = 2;
      v18 = 1;
      do
      {
        v19 = _readNode(*(*(a1 + 88) + 8 * v18));
        v16 = lappend(v16, v19);
        *(v3 + 56) = v16;
        v18 = v17++;
      }

      while (*(a1 + 80) > v18);
    }
  }

  if (*(a1 + 96))
  {
    v20 = _readNode(**(a1 + 104));
    list_make1_impl(226, v20);
    *(v3 + 64) = v21;
    if (*(a1 + 96) >= 2uLL)
    {
      v22 = v21;
      v23 = 2;
      v24 = 1;
      do
      {
        v25 = _readNode(*(*(a1 + 104) + 8 * v24));
        v22 = lappend(v22, v25);
        *(v3 + 64) = v22;
        v24 = v23++;
      }

      while (*(a1 + 96) > v24);
    }
  }

  if (*(a1 + 112))
  {
    v26 = _readNode(**(a1 + 120));
    list_make1_impl(226, v26);
    *(v3 + 72) = v27;
    if (*(a1 + 112) >= 2uLL)
    {
      v28 = v27;
      v29 = 2;
      v30 = 1;
      do
      {
        v31 = _readNode(*(*(a1 + 120) + 8 * v30));
        v28 = lappend(v28, v31);
        *(v3 + 72) = v28;
        v30 = v29++;
      }

      while (*(a1 + 112) > v30);
    }
  }

  if (*(a1 + 128))
  {
    v32 = _readNode(**(a1 + 136));
    list_make1_impl(226, v32);
    *(v3 + 80) = v33;
    if (*(a1 + 128) >= 2uLL)
    {
      v34 = v33;
      v35 = 2;
      v36 = 1;
      do
      {
        v37 = _readNode(*(*(a1 + 136) + 8 * v36));
        v34 = lappend(v34, v37);
        *(v3 + 80) = v34;
        v36 = v35++;
      }

      while (*(a1 + 128) > v36);
    }
  }

  return v3;
}

_DWORD *_readRoleSpec(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  result = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  *result = 390;
  v4 = *(a1 + 24);
  v5 = v4 - 2;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    v6 = 0;
  }

  result[1] = v6;
  v7 = *(a1 + 32);
  if (v7 && *v7)
  {
    v8 = result;
    v9 = pstrdup(*(a1 + 32));
    result = v8;
    *(v8 + 1) = v9;
  }

  result[4] = *(a1 + 40);
  return result;
}

unint64_t _readTriggerTransition(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  result = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  *result = 391;
  v4 = *(a1 + 24);
  if (v4 && *v4)
  {
    v5 = result;
    v6 = pstrdup(*(a1 + 24));
    result = v5;
    *(v5 + 8) = v6;
  }

  *(result + 16) = *(a1 + 32) != 0;
  *(result + 17) = *(a1 + 36) != 0;
  return result;
}

unint64_t _readPartitionElem(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x30uLL);
  *v3 = 392;
  v4 = *(a1 + 24);
  if (v4 && *v4)
  {
    *(v3 + 8) = pstrdup(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    *(v3 + 16) = _readNode(v5);
  }

  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node);
    *(v3 + 24) = v7;
    if (*(a1 + 40) >= 2uLL)
    {
      v8 = v7;
      v9 = 2;
      v10 = 1;
      do
      {
        v11 = _readNode(*(*(a1 + 48) + 8 * v10));
        v8 = lappend(v8, v11);
        *(v3 + 24) = v8;
        v10 = v9++;
      }

      while (*(a1 + 40) > v10);
    }
  }

  if (*(a1 + 56))
  {
    v12 = _readNode(**(a1 + 64));
    list_make1_impl(226, v12);
    *(v3 + 32) = v13;
    if (*(a1 + 56) >= 2uLL)
    {
      v14 = v13;
      v15 = 2;
      v16 = 1;
      do
      {
        v17 = _readNode(*(*(a1 + 64) + 8 * v16));
        v14 = lappend(v14, v17);
        *(v3 + 32) = v14;
        v16 = v15++;
      }

      while (*(a1 + 56) > v16);
    }
  }

  *(v3 + 40) = *(a1 + 72);
  return v3;
}

unint64_t _readPartitionSpec(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x20uLL);
  *v3 = 393;
  v4 = *(a1 + 24);
  if (v4 && *v4)
  {
    *(v3 + 8) = pstrdup(v4);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node);
    *(v3 + 16) = v6;
    if (*(a1 + 32) >= 2uLL)
    {
      v7 = v6;
      v8 = 2;
      v9 = 1;
      do
      {
        v10 = _readNode(*(*(a1 + 40) + 8 * v9));
        v7 = lappend(v7, v10);
        *(v3 + 16) = v7;
        v9 = v8++;
      }

      while (*(a1 + 32) > v9);
    }
  }

  *(v3 + 24) = *(a1 + 48);
  return v3;
}

unint64_t _readPartitionBoundSpec(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x30uLL);
  v4 = v3;
  *v3 = 394;
  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = *v5;
    if (v6)
    {
      *(v3 + 4) = v6;
    }
  }

  *(v3 + 5) = *(a1 + 32) != 0;
  *(v3 + 8) = *(a1 + 36);
  *(v3 + 12) = *(a1 + 40);
  if (*(a1 + 48))
  {
    Node = _readNode(**(a1 + 56));
    list_make1_impl(226, Node);
    *(v4 + 16) = v8;
    if (*(a1 + 48) >= 2uLL)
    {
      v9 = v8;
      v10 = 2;
      v11 = 1;
      do
      {
        v12 = _readNode(*(*(a1 + 56) + 8 * v11));
        v9 = lappend(v9, v12);
        *(v4 + 16) = v9;
        v11 = v10++;
      }

      while (*(a1 + 48) > v11);
    }
  }

  if (*(a1 + 64))
  {
    v13 = _readNode(**(a1 + 72));
    list_make1_impl(226, v13);
    *(v4 + 24) = v14;
    if (*(a1 + 64) >= 2uLL)
    {
      v15 = v14;
      v16 = 2;
      v17 = 1;
      do
      {
        v18 = _readNode(*(*(a1 + 72) + 8 * v17));
        v15 = lappend(v15, v18);
        *(v4 + 24) = v15;
        v17 = v16++;
      }

      while (*(a1 + 64) > v17);
    }
  }

  if (*(a1 + 80))
  {
    v19 = _readNode(**(a1 + 88));
    list_make1_impl(226, v19);
    *(v4 + 32) = v20;
    if (*(a1 + 80) >= 2uLL)
    {
      v21 = v20;
      v22 = 2;
      v23 = 1;
      do
      {
        v24 = _readNode(*(*(a1 + 88) + 8 * v23));
        v21 = lappend(v21, v24);
        *(v4 + 32) = v21;
        v23 = v22++;
      }

      while (*(a1 + 80) > v23);
    }
  }

  *(v4 + 40) = *(a1 + 96);
  return v4;
}

_DWORD *_readPartitionRangeDatum(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  result = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  *result = 395;
  v4 = *(a1 + 24);
  if (v4 == 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (v4 == 3)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  result[1] = v6;
  if (*(a1 + 32))
  {
    v7 = result;
    Node = _readNode(*(a1 + 32));
    result = v7;
    *(v7 + 1) = Node;
  }

  result[4] = *(a1 + 40);
  return result;
}

unint64_t _readPartitionCmd(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  *v3 = 396;
  v4 = *(a1 + 24);
  if (v4)
  {
    *(v3 + 8) = _readRangeVar(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    *(v3 + 16) = _readPartitionBoundSpec(v5);
  }

  return v3;
}

unint64_t _readVacuumRelation(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x20uLL);
  *v3 = 397;
  v4 = *(a1 + 24);
  if (v4)
  {
    *(v3 + 8) = _readRangeVar(v4);
  }

  *(v3 + 16) = *(a1 + 32);
  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node);
    *(v3 + 24) = v6;
    if (*(a1 + 40) >= 2uLL)
    {
      v7 = v6;
      v8 = 2;
      v9 = 1;
      do
      {
        v10 = _readNode(*(*(a1 + 48) + 8 * v9));
        v7 = lappend(v7, v10);
        *(v3 + 24) = v7;
        v9 = v8++;
      }

      while (*(a1 + 40) > v9);
    }
  }

  return v3;
}

unint64_t _readInlineCodeBlock(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  result = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  *result = 410;
  v4 = *(a1 + 24);
  if (v4 && *v4)
  {
    v5 = result;
    v6 = pstrdup(*(a1 + 24));
    result = v5;
    *(v5 + 8) = v6;
  }

  *(result + 16) = *(a1 + 32);
  *(result + 20) = *(a1 + 36) != 0;
  *(result + 21) = *(a1 + 40) != 0;
  return result;
}

uint64_t _readList(uint64_t a1)
{
  if (!*(a1 + 24))
  {
    return 0;
  }

  Node = _readNode(**(a1 + 32));
  list_make1_impl(226, Node);
  v4 = v3;
  if (*(a1 + 24) >= 2uLL)
  {
    v5 = 2;
    v6 = 1;
    do
    {
      v7 = _readNode(*(*(a1 + 32) + 8 * v6));
      v4 = lappend(v4, v7);
      v6 = v5++;
    }

    while (*(a1 + 24) > v6);
  }

  return v4;
}

void _readNode_cold_1(_DWORD *a1)
{
  errstart(20, 0);
  errmsg_internal("unsupported protobuf node type: %d", *a1);
  errfinish("src/pg_query_readfuncs_protobuf.c", 116, "_readNode");
  __break(1u);
}

uint64_t pg_query_scan()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v49 = *MEMORY[0x277D85DE8];
  *v1 = 0u;
  v1[1] = 0u;
  v46 = 0;
  memset(v45, 0, sizeof(v45));
  v44 = 0;
  v43 = 0;
  v40 = xmmword_2797B7790;
  v41 = unk_2797B77A0;
  v42 = xmmword_2797B77B0;
  pg_query_enter_memory_context();
  v4 = CurrentMemoryContext(v3);
  v5 = *v4;
  bzero(__s1, 0x1001uLL);
  v6 = PG_exception_stack();
  v7 = *v6;
  v8 = v6;
  v9 = error_context_stack();
  v10 = *v9;
  memset(v47, 0, 196);
  if (sigsetjmp(v47, 0))
  {
    *v8 = v7;
    *v9 = v10;
    *v4 = v5;
    v11 = CopyErrorData();
    v12 = malloc_type_malloc(0x28uLL, 0x1010040E871EB1AuLL);
    *v12 = strdup(*(v11 + 64));
    v12[2] = strdup(*(v11 + 16));
    v12[1] = strdup(*(v11 + 32));
    v12[4] = 0;
    *(v12 + 6) = *(v11 + 24);
    *(v12 + 7) = *(v11 + 160);
    *(v2 + 3) = v12;
    FlushErrorState();
  }

  else
  {
    v37 = v9;
    v38 = v10;
    v39 = v2;
    *v8 = v47;
    v13 = scanner_init(v0, v45, &ScanKeywords, &ScanKeywordTokens);
    v14 = -1;
    v15 = -8;
    do
    {
      v16 = v14;
      v17 = v15;
      v18 = core_yylex(&v44, &v43, v13);
      v19 = v16 + 1;
      v20 = v17 + 8;
      v15 = v20;
      v14 = v16 + 1;
    }

    while (v18);
    scanner_finish(v13);
    v21 = malloc_type_malloc(v20, 0x2004093837F09uLL);
    v22 = scanner_init(v0, v45, &ScanKeywords, &ScanKeywordTokens);
    v23 = core_yylex(&v44, &v43, v22);
    if (v23)
    {
      v24 = v23;
      v25 = v21;
      do
      {
        v28 = malloc_type_malloc(0x28uLL, 0x10600401BE82CDFuLL);
        *v25 = v28;
        pg_query__scan_token__init(v28);
        v29 = v43;
        *(*v25 + 6) = v43;
        if ((v24 - 258) <= 0x12 && ((1 << (v24 - 2)) & 0x40069) != 0)
        {
          v30 = HIDWORD(v46);
        }

        else
        {
          v30 = v29 + *(v22 + 64);
        }

        *(*v25 + 7) = v30;
        *(*v25 + 8) = v24;
        if ((v24 - 277) <= 0x1C1)
        {
          v26 = dword_25531E640[v24 - 277];
        }

        else
        {
          v26 = 0;
        }

        v27 = *v25++;
        *(v27 + 36) = v26;
        v24 = core_yylex(&v44, &v43, v22);
      }

      while (v24);
    }

    scanner_finish(v22);
    DWORD2(v41) = 130003;
    *&v42 = v19;
    *(&v42 + 1) = v21;
    packed_size = pg_query__scan_result__get_packed_size(&v40);
    *v39 = packed_size;
    v32 = malloc_type_malloc(packed_size, 0x3121CBB5uLL);
    *(v39 + 1) = v32;
    pg_query__scan_result__pack(&v40, v32);
    if (v19)
    {
      v33 = 0;
      do
      {
        v34 = v33;
        free(v21[v33]);
        v33 = v34 + 1;
      }

      while (v19 != v34 + 1);
    }

    free(v21);
    *(v39 + 2) = strdup(__s1);
    v9 = v37;
    v10 = v38;
  }

  *v8 = v7;
  *v9 = v10;
  result = pg_query_exit_memory_context();
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

void pg_query_free_scan_result(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    pg_query_free_error(v2);
  }

  free(*(a1 + 8));
  v3 = *(a1 + 16);

  free(v3);
}

uint64_t pg_query_split_with_scanner(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v42 = *MEMORY[0x277D85DE8];
  v39 = 0;
  v37 = 0;
  *v2 = 0u;
  v2[1] = 0u;
  memset(v38, 0, sizeof(v38));
  v36 = 0;
  pg_query_enter_memory_context();
  v5 = CurrentMemoryContext(v4);
  v6 = *v5;
  bzero(__s1, 0x1001uLL);
  v7 = PG_exception_stack();
  v8 = *v7;
  v9 = error_context_stack();
  v10 = *v9;
  memset(v40, 0, sizeof(v40));
  if (sigsetjmp(v40, 0))
  {
    *v7 = v8;
    *v9 = v10;
    *v5 = v6;
    v11 = CopyErrorData();
    v12 = malloc_type_malloc(0x28uLL, 0x1010040E871EB1AuLL);
    *v12 = strdup(*(v11 + 64));
    v12[2] = strdup(*(v11 + 16));
    v12[1] = strdup(*(v11 + 32));
    v12[4] = 0;
    *(v12 + 6) = *(v11 + 24);
    *(v12 + 7) = *(v11 + 160);
    *(v3 + 3) = v12;
    FlushErrorState();
  }

  else
  {
    v32 = v3;
    v33 = v10;
    v35 = v8;
    v13 = v7;
    *v7 = v40;
    v14 = scanner_init(v1, v38, &ScanKeywords, &ScanKeywordTokens);
    v15 = 0;
    v16 = 0;
    v17 = 0;
    do
    {
      v18 = v16;
      v19 = core_yylex(&v37, &v36, v14);
      if ((v19 - 277) < 0x1C2)
      {
        v15 = 1;
      }

      else if (v19 == 41)
      {
        --v17;
      }

      else if (v19 == 40)
      {
        ++v17;
      }

      else if ((v15 & (v17 == 0)) == 1)
      {
        if (v19 != 59 && v19)
        {
          v15 = 1;
          v17 = 0;
        }

        else
        {
          v18 = (v18 + 1);
          v17 = 0;
          v15 = 0;
        }
      }

      v16 = v18;
    }

    while (v19);
    v34 = v13;
    *(v3 + 2) = v18;
    scanner_finish(v14);
    v20 = malloc_type_malloc(8 * v18, 0x2004093837F09uLL);
    *v3 = v20;
    v21 = scanner_init(v1, v38, &ScanKeywords, &ScanKeywordTokens);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    do
    {
      v26 = core_yylex(&v37, &v36, v21);
      v27 = v26;
      if ((v26 - 277) < 0x1C2)
      {
        v25 = 1;
      }

      else if (v26 == 41)
      {
        --v23;
      }

      else if (v26 == 40)
      {
        ++v23;
      }

      else if ((v25 & (v23 == 0)) == 1 && (v26 == 59 || !v26))
      {
        v28 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
        v25 = 0;
        v23 = 0;
        v20[v24] = v28;
        *v28 = v22;
        v29 = v36;
        *(v20[v24] + 4) = v36 - v22;
        v22 = v29 + 1;
        ++v24;
      }

      else if (!v23 && v26 == 59)
      {
        v23 = 0;
        v22 = v36 + 1;
      }
    }

    while (v27);
    scanner_finish(v21);
    v10 = v33;
    *(v32 + 2) = strdup(__s1);
    v8 = v35;
    v7 = v34;
  }

  *v7 = v8;
  *v9 = v10;
  result = pg_query_exit_memory_context();
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t pg_query_split_with_parser@<X0>(const char *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  pg_query_enter_memory_context();
  pg_query_raw_parse();
  *(a2 + 16) = v14;
  if (v13)
  {
    v4 = *(v13 + 4);
    *(a2 + 8) = v4;
    v5 = malloc_type_malloc(8 * v4, 0x2004093837F09uLL);
    *a2 = v5;
    if (*(v13 + 4) >= 1)
    {
      v6 = v5;
      v7 = 0;
      do
      {
        v8 = *(*(v13 + 16) + 8 * v7);
        v9 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
        v6[v7] = v9;
        v10 = *(v8 + 16);
        *v9 = v10;
        v11 = *(v8 + 20);
        if (!v11)
        {
          v11 = strlen(a1) - v10;
        }

        *(v6[v7++] + 4) = v11;
      }

      while (v7 < *(v13 + 4));
    }
  }

  else
  {
    *(a2 + 8) = 0;
    *a2 = 0;
  }

  return pg_query_exit_memory_context();
}

void pg_query_free_split_result(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    pg_query_free_error(v2);
  }

  free(*(a1 + 16));
  v3 = *a1;
  if (*a1)
  {
    if (*(a1 + 8) >= 1)
    {
      v4 = 0;
      do
      {
        free(*(*a1 + 8 * v4++));
      }

      while (v4 < *(a1 + 8));
      v3 = *a1;
    }

    free(v3);
  }
}