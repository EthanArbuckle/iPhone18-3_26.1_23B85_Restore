uint64_t sub_232BB9400()
{
  sub_232B26C44();
  v13 = *MEMORY[0x277D85DE8];
  v1[21] = v2;
  v1[22] = v0;
  v1[20] = v3;
  v4 = sub_232CE9A30();
  v1[23] = v4;
  sub_232B27FBC(v4);
  v1[24] = v5;
  v7 = *(v6 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v8 = *MEMORY[0x277D85DE8];
  sub_232B48304();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_232BB94EC()
{
  v86 = *MEMORY[0x277D85DE8];
  v1 = v0[20];
  v0[12] = v1;
  *(v0 + 4) = 0u;
  v2 = MEMORY[0x277D84F90];
  v0[14] = MEMORY[0x277D84F90];
  v84 = v0 + 14;
  v0[15] = v2;
  v85 = v0 + 15;
  *(v0 + 8) = 0u;
  v3 = v0 + 16;
  v4 = v0[21];
  v5 = v0[22];
  v6 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v6 = v1;
  }

  v7 = ((v4 >> 60) & ((v1 & 0x800000000000000) == 0)) == 0;
  v8 = 7;
  if (!v7)
  {
    v8 = 11;
  }

  v0[10] = 15;
  v0[18] = 0;
  v83 = v0 + 18;
  v0[11] = v8 | (v6 << 16);
  v0[13] = v4;

  sub_232B124A8(&qword_27DDC7680, &qword_232CFA998);
  sub_232B48E4C(&qword_27DDC7688, &qword_27DDC7680, &qword_232CFA998);
  sub_232B48080();
  sub_232BC1E48();
  v9 = sub_232CEA320();
  v11 = *(v5 + 16);
  if (v11)
  {
    v80 = v10;
    v81 = v9;
    v82 = v0 + 17;
    v12 = qword_27DDC6390;
    v13 = v11;
    if (v12 != -1)
    {
      sub_232BC1B74();
    }

    v15 = v0[20];
    v14 = v0[21];
    v16 = qword_27DDC7638;
    v17 = swift_allocObject();
    v17[2] = v82;
    v17[3] = v3;
    v17[4] = v83;
    v17[5] = v0 + 8;
    v17[6] = v84;
    v17[7] = v15;
    v17[8] = v14;
    v17[9] = v85;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_232BC1A54;
    *(v18 + 24) = v17;
    v0[6] = sub_232BC1A90;
    v0[7] = v18;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_232BB9C44;
    v0[5] = &unk_284811FE0;
    v19 = _Block_copy(v0 + 2);
    v20 = v0[7];

    v0[19] = 0;
    LOBYTE(v20) = sub_232BC14F8(v15, v14, v16, v81, v80, (v0 + 19), v19, v13);
    _Block_release(v19);
    v21 = v0[19];
    v22 = v13;
    if ((v20 & 1) == 0)
    {
      v53 = v0[25];
      v54 = v21;
      v55 = sub_232CE8B30();

      swift_willThrow();
      sub_232CE9A20();
      v56 = v55;
      v57 = sub_232CE9A00();
      v58 = sub_232CEA1C0();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = sub_232BC1F80();
        v60 = swift_slowAlloc();
        *v59 = 138412290;
        v61 = v55;
        v62 = _swift_stdlib_bridgeErrorToNSError();
        *(v59 + 4) = v62;
        *v60 = v62;
        _os_log_impl(&dword_232B02000, v57, v58, "DUFoundInEventMultilingualBERTImplementation: error enumerateTokens in NLContextualEmbedding %@", v59, 0xCu);
        sub_232BA4D50(v60, &qword_27DDC6FD0, &unk_232CFA240);
        sub_232BA6A84();
        sub_232B26D28();
      }

      else
      {
      }

      (*(v0[24] + 8))(v0[25], v0[23]);
      goto LABEL_29;
    }

    if (*v82 == 2 || !*v3)
    {
      v63 = v21;

LABEL_26:
      v64 = *v84;
      v65 = *v85;

LABEL_29:
      v52 = sub_232BC1A54;
      goto LABEL_30;
    }

    v23 = v0[8];
    v24 = v0[9];
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      __break(1u);
    }

    else
    {
      v27 = v0[20];
      v26 = v0[21];
      v28 = v0[18];
      v29 = v21;
      v21 = sub_232CE9E30();
      v25 = v30;
      v13 = v0[14];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v0[14] = v13;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_13:
        v33 = v13[2];
        v32 = v13[3];
        if (v33 >= v32 >> 1)
        {
          sub_232BC1BBC(v32);
          sub_232B35ECC();
          v13 = v76;
        }

        v13[2] = v33 + 1;
        v34 = &v13[2 * v33];
        v34[4] = v21;
        v34[5] = v25;
        *v84 = v13;
        v35 = *v83;
        v36 = *v85;
        v37 = swift_isUniquelyReferenced_nonNull_native();
        *v85 = v36;
        if ((v37 & 1) == 0)
        {
          v77 = *(v36 + 16);
          sub_232BA57A8();
          sub_232B36150();
          v36 = v78;
          *v85 = v78;
        }

        v39 = *(v36 + 16);
        v38 = *(v36 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_232BC1BBC(v38);
          sub_232B36150();
          *v85 = v79;
        }

        v40 = *v85;
        *(v40 + 16) = v39 + 1;
        *(v40 + 8 * v39 + 32) = v35;
        *v85 = v40;
        goto LABEL_26;
      }
    }

    v74 = v13[2];
    sub_232BA57A8();
    sub_232B35ECC();
    v13 = v75;
    *v84 = v75;
    goto LABEL_13;
  }

  v41 = v0[26];
  sub_232CE9A20();
  v42 = sub_232CE9A00();
  v43 = sub_232CEA1C0();
  if (sub_232BC1E54(v43))
  {
    *sub_232BA73DC() = 0;
    sub_232B28888(&dword_232B02000, v44, v45, "DUFoundInEventMultilingualBERTImplementation: NLContextualEmbedding not available");
    sub_232BA6A84();
  }

  v46 = v0[26];
  v47 = v0[23];
  v48 = v0[24];

  v49 = *(v48 + 8);
  v50 = sub_232BA5FEC();
  v51(v50);
  v52 = 0;
LABEL_30:
  v67 = v0[25];
  v66 = v0[26];
  v68 = v0[15];

  v69 = v0[14];

  sub_232B0D210(v52);

  sub_232BB189C();
  v70 = *MEMORY[0x277D85DE8];
  v71 = sub_232BC1E48();

  return v72(v71);
}

uint64_t sub_232BB9B40(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  if (*a4 != 2)
  {
    v13 = *a5;
    if (!*a5)
    {
      *a6 = result;
      v13 = *a5;
    }

    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      __break(1u);
    }

    else
    {
      *a5 = v15;
      *a7 = result;
      a7[1] = a2;
      if (*a5 != 255)
      {
        return result;
      }

      if (!__OFADD__(*a4, 1))
      {
        ++*a4;
        *a5 = 0;
        if (!__OFADD__(result, a2))
        {
          v16 = *a6;
          v17 = sub_232CE9E30();
          v19 = v18;
          sub_232BAD03C();
          v20 = *(*a8 + 16);
          sub_232BAD188(v20);
          v21 = *a8;
          *(v21 + 16) = v20 + 1;
          v22 = v21 + 16 * v20;
          *(v22 + 32) = v17;
          *(v22 + 40) = v19;
          v23 = *a6;
          sub_232BAD054();
          v24 = *(*a11 + 16);
          result = sub_232BAD1A0(v24);
          v25 = *a11;
          *(v25 + 16) = v24 + 1;
          *(v25 + 8 * v24 + 32) = v23;
          return result;
        }

LABEL_12:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_232BB9C78()
{
  sub_232B26C44();
  v1[21] = v2;
  v1[22] = v0;
  v1[20] = v3;
  v4 = sub_232CE9A30();
  v1[23] = v4;
  sub_232B27FBC(v4);
  v1[24] = v5;
  v7 = *(v6 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  sub_232B48304();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_232BB9D68()
{
  v1 = *(v0[22] + 16);
  v0[31] = v1;
  if (v1)
  {
    v2 = v1;
    if ([v2 hasAvailableAssets])
    {
      v3 = swift_task_alloc();
      v0[32] = v3;
      *v3 = v0;
      v3[1] = sub_232BB9FAC;
      v4 = v0[21];
      v5 = v0[22];
      sub_232BC1EF8(v0[20]);

      return sub_232BB9400();
    }

    v22 = v0[30];
    sub_232CE9A20();
    v23 = sub_232CE9A00();
    v24 = sub_232CEA1C0();
    v25 = sub_232BC1E54(v24);
    v26 = v0[30];
    v27 = v0[23];
    v28 = v0[24];
    if (v25)
    {
      v29 = sub_232BA73DC();
      *v29 = 0;
      _os_log_impl(&dword_232B02000, v23, v24, "DUFoundInEventMultilingualBERTImplementation: embedding assets not available", v29, 2u);
      sub_232BA6A84();
    }

    (*(v28 + 8))(v26, v27);
  }

  else
  {
    v7 = v0[26];
    sub_232CE9A20();
    v8 = sub_232CE9A00();
    v9 = sub_232CEA1C0();
    v10 = sub_232BC1E54(v9);
    v11 = v0[26];
    v12 = v0[23];
    v13 = v0[24];
    if (v10)
    {
      *sub_232BA73DC() = 0;
      sub_232BC1CB8();
      _os_log_impl(v14, v15, v16, v17, v18, 2u);
      sub_232B26D28();
    }

    v19 = *(v13 + 8);
    v20 = sub_232BA5FEC();
    v21(v20);
  }

  v31 = v0[29];
  v30 = v0[30];
  v33 = v0[27];
  v32 = v0[28];
  v35 = v0[25];
  v34 = v0[26];

  sub_232BB189C();

  return v36(0, 0);
}

uint64_t sub_232BB9FAC()
{
  sub_232B26C44();
  sub_232B26C70();
  sub_232BC1BAC();
  *v2 = v1;
  v4 = *(v3 + 256);
  *v2 = *v0;
  *(v1 + 264) = v5;
  *(v1 + 272) = v6;

  sub_232B48304();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_232BBA098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_232BC1F04();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = *(v22 + 264);
  if (v25)
  {
    v26 = MEMORY[0x277D84F90];
    v27 = *(v22 + 272);
    *(v22 + 144) = MEMORY[0x277D84F90];
    v28 = v25[2];
    *(v22 + 288) = 0;
    *(v22 + 296) = v26;
    *(v22 + 280) = v28;
    if (v28)
    {
      if (v25[2])
      {
        v30 = v25[4];
        v29 = v25[5];

        *(v22 + 304) = sub_232CE9D20();

        if (qword_27DDC6390 == -1)
        {
LABEL_5:
          v31 = *(v22 + 248);
          *(v22 + 16) = v22;
          sub_232BC1C00();
          v32 = sub_232B124A8(&qword_27DDC7678, &unk_232CFA988);
          sub_232BC1BE0(v32);
          *(v22 + 88) = 1107296256;
          sub_232BC1BC8(&unk_284811F68);
          sub_232BC1F40(v33, sel_requestEmbeddingResultForString_language_completionHandler_);
          sub_232B26CB4();

          return MEMORY[0x282200938](v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14);
        }
      }

      else
      {
        __break(1u);
      }

      sub_232BC1B74();
      goto LABEL_5;
    }

    if (sub_232B26B10(MEMORY[0x277D84F90]) == *(v27 + 16))
    {

      v55 = *(v22 + 272);
    }

    else
    {
      v59 = *(v22 + 272);
      v60 = *(v22 + 224);
      sub_232CE9A20();

      v61 = sub_232CE9A00();
      v62 = sub_232CEA1C0();

      v63 = os_log_type_enabled(v61, v62);
      v64 = *(v22 + 272);
      v65 = *(v22 + 248);
      v66 = *(v22 + 224);
      v68 = *(v22 + 184);
      v67 = *(v22 + 192);
      if (v63)
      {
        a10 = *(v22 + 224);
        v69 = swift_slowAlloc();
        a9 = v68;
        v70 = swift_slowAlloc();
        a11 = v70;
        *v69 = 134218242;
        v71 = MEMORY[0x277D84F90];
        v72 = sub_232B26B10(MEMORY[0x277D84F90]);

        *(v69 + 4) = v72;

        *(v69 + 12) = 2080;
        MEMORY[0x238391D80](v64, MEMORY[0x277D83B88]);
        sub_232BA6298();

        v73 = sub_232BAD2D4(v71, v72, &a11);

        *(v69 + 14) = v73;
        sub_232BC1CB8();
        _os_log_impl(v74, v75, v76, v77, v78, 0x16u);
        sub_232B2040C(v70);
        sub_232BA6A84();
        sub_232B26D28();

        (*(v67 + 8))(a10, a9);
      }

      else
      {
        swift_bridgeObjectRelease_n();

        (*(v67 + 8))(v66, v68);
      }
    }
  }

  else
  {
    v42 = *(v22 + 216);
    sub_232CE9A20();
    v43 = sub_232CE9A00();
    v44 = sub_232CEA1C0();
    v45 = sub_232BC1E54(v44);
    v46 = *(v22 + 248);
    v47 = *(v22 + 216);
    v48 = *(v22 + 184);
    v49 = *(v22 + 192);
    if (v45)
    {
      *sub_232BA73DC() = 0;
      sub_232BC1CB8();
      _os_log_impl(v50, v51, v52, v53, v54, 2u);
      sub_232B26D28();
    }

    else
    {
    }

    v56 = *(v49 + 8);
    v57 = sub_232BA5FEC();
    v58(v57);
  }

  v80 = *(v22 + 232);
  v79 = *(v22 + 240);
  v82 = *(v22 + 216);
  v81 = *(v22 + 224);
  v84 = *(v22 + 200);
  v83 = *(v22 + 208);

  sub_232BB189C();
  sub_232B26CB4();

  return v88(v85, v86, v87, v88, v89, v90, v91, v92, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_232BBA490()
{
  sub_232B26C44();
  v1 = *v0;
  sub_232BC1BAC();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  v2[39] = v5;
  if (v5)
  {
    v6 = v2[37];
    v7 = v2[33];
    v8 = v2[34];
  }

  sub_232B48304();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_232BBA5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_232BC1F04();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = *(v22 + 152);
  v26 = *(v22 + 304);
  if (!v25)
  {
    v35 = *(v22 + 296);
    v36 = *(v22 + 264);
    v37 = *(v22 + 272);
    v38 = *(v22 + 232);

    sub_232CE9A20();
    v39 = sub_232CE9A00();
    v40 = sub_232CEA1C0();
    if (sub_232BC1E54(v40))
    {
      *sub_232BA73DC() = 0;
      sub_232B28888(&dword_232B02000, v41, v42, "DUFoundInEventMultilingualBERTImplementation: fail to requestResult from NLContextualEmbedding");
      sub_232BA6A84();
    }

    v43 = *(v22 + 248);
    v44 = *(v22 + 232);
    v45 = *(v22 + 184);
    v46 = *(v22 + 192);

    v47 = *(v46 + 8);
    v48 = sub_232BA5FEC();
    v49(v48);
    goto LABEL_18;
  }

  v27 = v25;
  MEMORY[0x238391D50]();
  v28 = *((*(v22 + 144) & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (*((*(v22 + 144) & 0xFFFFFFFFFFFFFF8) + 0x10) >= v28 >> 1)
  {
    sub_232BC1BBC(v28);
    sub_232CEA000();
  }

  sub_232CEA020();

  v29 = *(v22 + 144);
  v30 = *(v22 + 280);
  v31 = *(v22 + 288) + 1;
  *(v22 + 288) = v31;
  *(v22 + 296) = v29;
  if (v31 == v30)
  {
    v32 = *(v22 + 264);
    v33 = *(v22 + 272);

    if (sub_232B26B10(v29) == *(v33 + 16))
    {

      v34 = *(v22 + 272);
    }

    else
    {
      v65 = *(v22 + 272);
      v66 = *(v22 + 224);
      sub_232CE9A20();

      v67 = sub_232CE9A00();
      v68 = sub_232CEA1C0();

      v69 = os_log_type_enabled(v67, v68);
      v70 = *(v22 + 272);
      v71 = *(v22 + 248);
      v72 = *(v22 + 224);
      v74 = *(v22 + 184);
      v73 = *(v22 + 192);
      if (v69)
      {
        a10 = *(v22 + 224);
        v75 = swift_slowAlloc();
        a9 = v74;
        v76 = swift_slowAlloc();
        a11 = v76;
        *v75 = 134218242;
        v77 = sub_232B26B10(v29);

        *(v75 + 4) = v77;

        *(v75 + 12) = 2080;
        v78 = MEMORY[0x238391D80](v70, MEMORY[0x277D83B88]);
        v80 = v79;

        v81 = sub_232BAD2D4(v78, v80, &a11);

        *(v75 + 14) = v81;
        _os_log_impl(&dword_232B02000, v67, v68, "DUFoundInEventMultilingualBERTImplementation: number of embeddingResults %ld is not consistent with number of shiftedStartLocations %s", v75, 0x16u);
        sub_232B2040C(v76);
        sub_232BA6A84();
        sub_232BA6A84();

        (*(v73 + 8))(a10, a9);
      }

      else
      {
        swift_bridgeObjectRelease_n();

        (*(v73 + 8))(v72, v74);
      }
    }

LABEL_18:
    v83 = *(v22 + 232);
    v82 = *(v22 + 240);
    v85 = *(v22 + 216);
    v84 = *(v22 + 224);
    v87 = *(v22 + 200);
    v86 = *(v22 + 208);

    sub_232BB189C();
    sub_232B26CB4();

    return v91(v88, v89, v90, v91, v92, v93, v94, v95, a9, a10, a11, a12, a13, a14);
  }

  v50 = *(v22 + 264);
  if (v31 >= *(v50 + 16))
  {
    __break(1u);
    goto LABEL_22;
  }

  v51 = v50 + 16 * v31;
  v53 = *(v51 + 32);
  v52 = *(v51 + 40);

  *(v22 + 304) = sub_232CE9D20();

  if (qword_27DDC6390 != -1)
  {
LABEL_22:
    sub_232BC1B74();
  }

  v54 = *(v22 + 248);
  *(v22 + 16) = v22;
  sub_232BC1C00();
  v55 = sub_232B124A8(&qword_27DDC7678, &unk_232CFA988);
  sub_232BC1BE0(v55);
  *(v22 + 88) = 1107296256;
  sub_232BC1BC8(&unk_284811F68);
  sub_232BC1F40(v56, sel_requestEmbeddingResultForString_language_completionHandler_);
  sub_232B26CB4();

  return MEMORY[0x282200938](v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_232BBAA04()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[25];
  swift_willThrow();

  sub_232CE9A20();
  v4 = v1;
  v5 = sub_232CE9A00();
  v6 = sub_232CEA1C0();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[39];
  v9 = v0[31];
  if (v7)
  {
    v10 = sub_232BC1F80();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v8;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_232B02000, v5, v6, "DUFoundInEventMultilingualBERTImplementation: Fail to obtain NLContextualEmbeddingResult with error: %@", v10, 0xCu);
    sub_232BA4D50(v11, &qword_27DDC6FD0, &unk_232CFA240);
    sub_232B26D28();
    sub_232BA6A84();
  }

  else
  {
  }

  (*(v0[24] + 8))(v0[25], v0[23]);
  v15 = v0[29];
  v14 = v0[30];
  v17 = v0[27];
  v16 = v0[28];
  v19 = v0[25];
  v18 = v0[26];

  sub_232BB189C();

  return v20(0, 0);
}

uint64_t sub_232BBABC4(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_232B203C8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    return sub_232BB7EFC(v5, a3);
  }

  v7 = a2;
  return sub_232BB7F64(v5, a2);
}

uint64_t sub_232BBAC28(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v26 = MEMORY[0x277D84F90];
  sub_232B64A58(0, v6, 0);
  result = v26;
  v24 = a2;
  v25 = v4;
  v23 = a1;
  if (!v6)
  {
    v12 = v5;
    goto LABEL_13;
  }

  v8 = (a1 + 32);
  v9 = (a2 + 32);
  v10 = v6;
  v11 = v5;
  v12 = v5;
  while (v4)
  {
    if (!v11)
    {
      goto LABEL_23;
    }

    v13 = *v8;
    v14 = *v9;
    v27 = result;
    v16 = *(result + 16);
    v15 = *(result + 24);
    if (v16 >= v15 >> 1)
    {
      v22 = v12;
      sub_232B64A58(v15 > 1, v16 + 1, 1);
      v12 = v22;
      result = v27;
    }

    --v11;
    *(result + 16) = v16 + 1;
    *(result + 8 * v16 + 32) = v13 + v14;
    --v4;
    ++v9;
    ++v8;
    if (!--v10)
    {
LABEL_13:
      while (v25 != v6)
      {
        if (v6 >= v25)
        {
          goto LABEL_24;
        }

        if (__OFADD__(v6, 1))
        {
          goto LABEL_25;
        }

        if (v12 == v6)
        {
          return result;
        }

        if (v6 >= v12)
        {
          goto LABEL_26;
        }

        v17 = *(v23 + 32 + 8 * v6);
        v18 = *(v24 + 32 + 8 * v6);
        v28 = result;
        v20 = *(result + 16);
        v19 = *(result + 24);
        if (v20 >= v19 >> 1)
        {
          v21 = v12;
          sub_232B64A58(v19 > 1, v20 + 1, 1);
          v12 = v21;
          result = v28;
        }

        *(result + 16) = v20 + 1;
        *(result + 8 * v20 + 32) = v17 + v18;
        ++v6;
      }

      return result;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_232BBADFC()
{
  sub_232B35110();
  v3 = v2;
  v5 = v4;
  sub_232B48080();
  v6 = sub_232BC1F20();
  if (sub_232BC1F20() >> 14 >= v6 >> 14)
  {
    v7 = sub_232B26B10(v5);
    v8 = 0;
    v9 = *MEMORY[0x277CD8978];
    while (1)
    {
      if (v7 == v8)
      {
        sub_232B20A00();
        return;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x2383922C0](v8, v5);
      }

      else
      {
        if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v10 = *(v5 + 8 * v8 + 32);
      }

      v11 = v10;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v12 = sub_232BC1E6C();
      sub_232CE9D50();
      sub_232BA6298();

      sub_232CE9E90();

      v13 = sub_232BC1E6C();
      sub_232CE9D50();
      sub_232BA6298();

      sub_232BC1580(v0, v1, v3);
      v14 = sub_232BC1E6C();
      sub_232CE9D50();
      sub_232BA6298();

      MEMORY[0x28223BE20](v15);
      sub_232CEA2E0();

      ++v8;
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  __break(1u);
}

void sub_232BBB064(int a1, int a2, int a3, id a4)
{
  v4 = [a4 string];
  sub_232CE9D50();

  v5 = sub_232CE9FB0();
  v7 = v6;
  v9 = v8;
  v11 = v10;

  MEMORY[0x238391B80](v5, v7, v9, v11);

  v12 = sub_232CEA010();
  *(v12 + 16) = 512;
  bzero((v12 + 32), 0x1000uLL);
  sub_232CEA2A0();
}

uint64_t sub_232BBB4EC(uint64_t result, unint64_t a2, unint64_t a3, void *a4, uint64_t *a5, void *a6, uint64_t *a7)
{
  v9 = result;
  if ((*a4 ^ a2) >> 14 || (a4[1] ^ a3) >> 14 || (v10 = *a5) != 0)
  {
    if (__OFADD__(*a6, 1))
    {
      goto LABEL_9;
    }

    ++*a6;
    v11 = *a7;

    v12 = sub_232BBAC28(v11, v9);

    v13 = *a7;
    *a7 = v12;

    v10 = *a5;
  }

  v14 = __OFADD__(v10, 1);
  v15 = v10 + 1;
  if (!v14)
  {
    *a5 = v15;
    return 1;
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

void sub_232BBB5C4()
{
  sub_232B35110();
  v1 = v0;
  v2 = type metadata accessor for FoundInEventDataDetectorsOutput();
  v3 = *(*(v2 - 1) + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x277D84F90];
  v7 = *(v1 + 16);
  if (!v7)
  {
LABEL_20:
    sub_232B20A00();
    return;
  }

  v8 = &v6[v2[19]];
  v9 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v10 = *(v4 + 72);
  v29 = 0x8000000232D06E80;
  v30 = 0x8000000232D06E60;
  v28 = 0x8000000232D06EA0;
  v33 = xmmword_232CF6460;
  v32 = xmmword_232CF5E60;
  v31 = v10;
  while (1)
  {
    sub_232BC1980(v9, v6);
    if ((v8[8] & 1) == 0)
    {
      v11 = &v6[v2[20]];
      if ((v11[8] & 1) == 0)
      {
        break;
      }
    }

    sub_232BC1C74();
LABEL_19:
    v9 += v10;
    if (!--v7)
    {
      goto LABEL_20;
    }
  }

  v12 = *v8;
  v13 = *v11;
  v36 = 3;
  sub_232B124A8(&qword_27DDC6B30, &unk_232CF8960);
  v14 = swift_allocObject();
  *(v14 + 16) = v33;
  v15 = v2;
  v16 = v6[v2[8]] - 2;
  v17 = 0x6374614D44444753;
  v18 = 0xED00006574614468;
  switch(v16)
  {
    case 0:
      v19 = 0x656E6F685068;
      goto LABEL_9;
    case 1:
      v18 = 0xED00006B6E694C68;
      break;
    case 2:
      v17 = 0xD000000000000016;
      v18 = v28;
      break;
    case 3:
      break;
    case 6:
      v17 = 0xD000000000000015;
      v18 = v29;
      break;
    case 7:
      v18 = 0xEF746867696C4668;
      break;
    case 8:
      v17 = 0xD000000000000011;
      v18 = v30;
      break;
    default:
      v17 = 0x6374614D44444753;
      v19 = 0x726568744F68;
LABEL_9:
      v18 = v19 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
  }

  v34 = 24388;
  v35 = 0xE200000000000000;
  MEMORY[0x238391C30](v17, v18);

  v20 = v35;
  *(v14 + 32) = v34;
  *(v14 + 40) = v20;
  sub_232B124A8(&qword_27DDC6B68, &qword_232CF6EF0);
  v21 = swift_allocObject();
  *(v21 + 16) = v32;
  *(v21 + 32) = v12;
  if (!__OFADD__(v12, v13))
  {
    v22 = v21;
    *(v21 + 40) = v12 + v13;
    v23 = &v6[v15[18]];
    v24 = *v23;
    v25 = v23[1];
    type metadata accessor for TaggedCharacterRange();
    swift_allocObject();
    sub_232C6A8CC(&v36, v14, v22, v24, v25, MEMORY[0x277D84F90]);

    v26 = sub_232BC1C74();
    MEMORY[0x238391D50](v26);
    v27 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v27 >> 1)
    {
      sub_232BC1BBC(v27);
      sub_232CEA000();
    }

    sub_232CEA020();
    v2 = v15;
    v10 = v31;
    goto LABEL_19;
  }

  __break(1u);
}

uint64_t sub_232BBB968(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v14 = 0;
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_232CEA610())
  {
    result = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v13 = MEMORY[0x277D84F90];
    sub_232CEA580();
    if (i < 0)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2383922C0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v8 = *(a3 + 8 * j + 32);
      }

      v9 = v8;
      v11 = v8;
      sub_232BBBAC0(&v11, &v14, &v12);

      sub_232CEA560();
      v10 = *(v13 + 16);
      sub_232CEA590();
      sub_232CEA5A0();
      sub_232CEA570();
      if (v7 == i)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return result;
}

uint64_t sub_232BBBAC0@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = (*a1 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_text);
  result = swift_beginAccess();
  if (v6[1])
  {
    v8 = *v6;
    v9 = v6[1];

    v10 = sub_232CE9E60();
  }

  else
  {
    v10 = 0;
  }

  v11 = v10 + 1;
  if (__OFADD__(v10, 1))
  {
    __break(1u);
    goto LABEL_25;
  }

  v12 = __OFADD__(*a2, v11);
  v13 = *a2 + v11;
  if (v12)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  *a2 = v13;
  v36 = 1;
  v14 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_styleProperties;
  swift_beginAccess();
  v15 = *(v5 + v14);
  if (v15)
  {
    v16 = *(v15 + 16);
    v17 = MEMORY[0x277D84F90];
    if (v16)
    {
      v34 = a3;
      v35 = MEMORY[0x277D84F90];

      sub_232B649F4(0, v16, 0);
      v17 = v35;
      v18 = (v15 + 40);
      do
      {
        v19 = *(v18 - 1);
        v20 = *v18;

        MEMORY[0x238391C30](v19, v20);

        v22 = *(v35 + 16);
        v21 = *(v35 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_232B649F4(v21 > 1, v22 + 1, 1);
        }

        *(v35 + 16) = v22 + 1;
        v23 = v35 + 16 * v22;
        *(v23 + 32) = 24387;
        *(v23 + 40) = 0xE200000000000000;
        v18 += 2;
        --v16;
      }

      while (v16);

      a3 = v34;
    }
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  sub_232B124A8(&qword_27DDC6B68, &qword_232CF6EF0);
  result = swift_allocObject();
  v24 = result;
  *(result + 16) = xmmword_232CF5E60;
  v25 = *a2;
  if (v6[1])
  {
    v26 = *v6;
    v27 = v6[1];

    v28 = sub_232CE9E60();
  }

  else
  {
    v28 = 0;
  }

  v29 = v25 - v28;
  if (__OFSUB__(v25, v28))
  {
    goto LABEL_26;
  }

  v12 = __OFSUB__(v29, 1);
  v30 = v29 - 1;
  if (v12)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  *(v24 + 32) = v30;
  if (__OFSUB__(*a2, 1))
  {
LABEL_28:
    __break(1u);
    return result;
  }

  *(v24 + 40) = *a2 - 1;
  v31 = v6[1];
  if (v31)
  {
    v32 = *v6;
    v33 = v31;
  }

  else
  {
    v32 = 0;
    v33 = 0xE000000000000000;
  }

  type metadata accessor for TaggedCharacterRange();
  swift_allocObject();
  *a3 = sub_232C6A8CC(&v36, v17, v24, v32, v33, MEMORY[0x277D84F90]);
}

void sub_232BBBDA0()
{
  sub_232B35110();
  v1 = v0;
  v3 = v2;
  v4 = sub_232CE9A30();
  v5 = sub_232B48F0C(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_232B20704();
  v10 = *(v3 + 16);
  if (v10)
  {
    v11 = *(v3 + 16);
    v12 = sub_232CEA010();
    *(v12 + 16) = v10;
    v13 = 8 * v10;
    v14 = v12;
    bzero((v12 + 32), v13);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v15 = *(v1 + 16);
  if (!v15)
  {
LABEL_20:
    sub_232B20A00();
    return;
  }

  v35 = (v7 + 8);
  v36 = v14 + 32;
  v16 = (v1 + 40);
  v34 = v14;
  while (1)
  {
    v18 = *(v16 - 1);
    v17 = *v16;
    v19 = sub_232BC1EB4();
    v21 = sub_232BBC048(v19, v20, v3);
    if (v22)
    {
      if (v18 != 0x676761544C4E5F4CLL || v17 != 0xEF6E656B6F547265)
      {
        sub_232BC1EB4();
        if ((sub_232CEA750() & 1) == 0)
        {

          sub_232CE9A20();

          v24 = sub_232CE9A00();
          v25 = sub_232CEA1C0();

          if (os_log_type_enabled(v24, v25))
          {
            v26 = sub_232BC1F80();
            v37 = swift_slowAlloc();
            *v26 = 136315138;
            v27 = sub_232BC1EB4();
            v30 = sub_232BAD2D4(v27, v28, v29);

            *(v26 + 4) = v30;
            _os_log_impl(&dword_232B02000, v24, v25, "DUFoundInEventMultilingualBERTImplementation: unexpected multihot feature %s", v26, 0xCu);
            sub_232B2040C(v37);
            v14 = v34;
            sub_232BA6A84();
            sub_232BA6A84();
          }

          else
          {
          }

          v31 = *v35;
          v32 = sub_232BC1E48();
          v33(v32);
        }
      }

      goto LABEL_19;
    }

    if ((v21 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v21 >= *(v14 + 16))
    {
      goto LABEL_22;
    }

    *(v36 + 8 * v21) = 0x3FF0000000000000;
LABEL_19:
    v16 += 2;
    if (!--v15)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_232BBC048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = (a3 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a1 && *v7 == a2;
    if (v8 || (sub_232CEA750() & 1) != 0)
    {
      return v5;
    }

    ++v5;
    v7 += 2;
  }

  return 0;
}

uint64_t sub_232BBC0D4(uint64_t a1, double a2)
{
  for (i = 0; ; ++i)
  {
    if (*(a1 + 16) == i)
    {
      return 0;
    }

    if (*(a1 + 32 + 8 * i) == a2)
    {
      break;
    }
  }

  return i;
}

void *sub_232BBC114(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_232CEA610())
  {
    v3 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v3;
    }

    v23 = MEMORY[0x277D84F90];
    result = sub_232B64A9C(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v5 = 0;
    v3 = v23;
    v22 = v1 & 0xC000000000000001;
    v6 = v1;
    while (1)
    {
      if (v22)
      {
        v7 = MEMORY[0x2383922C0](v5, v1);
      }

      else
      {
        v7 = *(v1 + 8 * v5 + 32);
      }

      sub_232B13F74();
      v8 = *(v7 + 56);
      sub_232B13F74();
      v9 = *(v7 + 24);

      sub_232BBBDA0();
      v11 = v10;

      v12 = *(v11 + 16);
      v1 = *(v8 + 16);
      if (__OFADD__(v1, v12))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || (v13 = *(v8 + 24) >> 1, v13 < (v1 + v12)))
      {
        sub_232B35ABC();
        v8 = v14;
        v13 = *(v14 + 24) >> 1;
      }

      if (*(v11 + 16))
      {
        v15 = *(v8 + 16);
        if (v13 - v15 < v12)
        {
          goto LABEL_25;
        }

        memcpy((v8 + 8 * v15 + 32), (v11 + 32), 8 * v12);

        if (v12)
        {
          v16 = *(v8 + 16);
          v17 = __OFADD__(v16, v12);
          v18 = v16 + v12;
          if (v17)
          {
            goto LABEL_26;
          }

          *(v8 + 16) = v18;
        }
      }

      else
      {

        if (v12)
        {
          goto LABEL_24;
        }
      }

      v20 = *(v23 + 16);
      v19 = *(v23 + 24);
      if (v20 >= v19 >> 1)
      {
        v21 = sub_232BC1BBC(v19);
        sub_232B64A9C(v21, v20 + 1, 1);
      }

      ++v5;
      *(v23 + 16) = v20 + 1;
      *(v23 + 8 * v20 + 32) = v8;
      v1 = v6;
      if (i == v5)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_232BBC34C(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_232BBC3E4(a2);
  if (!v7)
  {
    v6 = 79;
    v7 = 0xE100000000000000;
  }

  result = sub_232BCA52C(v6, v7, a3);
  v9 = result;
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {

    sub_232BB7DA0(0, a3, a1, &v9, a2);
    return v9;
  }

  return result;
}

uint64_t sub_232BBC3E4(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = (v1 + 16 * v2);
  v5 = *v4;
  v6 = v4[1];

  return v5;
}

void sub_232BBC42C(unint64_t *a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = sub_232CE9A30();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v19 = *a1;
  v20 = 12 * *a1;
  if ((*a1 * 12) >> 64 != v20 >> 63)
  {
    __break(1u);
    goto LABEL_30;
  }

  v21 = 12 * (v19 + 1);
  if (((v19 + 1) * 12) >> 64 != v21 >> 63)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v21 < v20)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v48 = a4;
  v49 = a3;
  v50 = &v47 - v16;
  v51 = v18;
  v52 = v17;
  a4 = sub_232BB7F84(v20, v21, a2);
  v5 = v22;
  v6 = v23;
  a2 = v24;
  if ((v24 & 1) == 0)
  {
LABEL_5:
    sub_232BD32A4(a4, v5, v6, a2);
    v26 = v25;
    goto LABEL_12;
  }

  a3 = v4;
  sub_232CEA770();
  swift_unknownObjectRetain_n();
  v27 = swift_dynamicCastClass();
  if (!v27)
  {
    swift_unknownObjectRelease();
    v27 = MEMORY[0x277D84F90];
  }

  v28 = *(v27 + 16);

  if (__OFSUB__(a2 >> 1, v6))
  {
    goto LABEL_32;
  }

  if (v28 != (a2 >> 1) - v6)
  {
LABEL_33:
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  v26 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v26)
  {
    goto LABEL_13;
  }

  v26 = MEMORY[0x277D84F90];
LABEL_12:
  swift_unknownObjectRelease();
LABEL_13:
  v29 = sub_232B61ED8(v26);
  if (v30)
  {

    sub_232CE9A20();
    v31 = sub_232CE9A00();
    v32 = sub_232CEA1C0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 134217984;
      *(v33 + 4) = v19;
      _os_log_impl(&dword_232B02000, v31, v32, "DUFoundInEventMultilingualBERTImplementation: cannot find max value element for token %ld", v33, 0xCu);
      MEMORY[0x238393870](v33, -1, -1);
    }

    (*(v51 + 8))(v15, v52);
    return;
  }

  v34 = *&v29;
  v35 = sub_232BBC0D4(v26, *&v29);
  v37 = v36;

  if ((v37 & 1) == 0)
  {
    if (v34 <= 0.0)
    {
      return;
    }

    if ((v35 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v37 = v49;
      if (v35 < *(v48 + 16))
      {
        v42 = v48 + 16 * v35;
        v35 = *(v42 + 32);
        v26 = *(v42 + 40);
        a3 = *v49;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v37 = a3;
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v19 & 0x8000000000000000) == 0)
          {
            goto LABEL_27;
          }

          goto LABEL_37;
        }

LABEL_36:
        sub_232C237E0(a3);
        a3 = v46;
        *v37 = v46;
        if ((v19 & 0x8000000000000000) == 0)
        {
LABEL_27:
          if (v19 < *(a3 + 16))
          {
            v44 = a3 + 16 * v19;
            v45 = *(v44 + 40);
            *(v44 + 32) = v35;
            *(v44 + 40) = v26;

            return;
          }

          goto LABEL_38;
        }

LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

  v38 = v50;
  sub_232CE9A20();
  v39 = sub_232CE9A00();
  v40 = sub_232CEA1C0();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_232B02000, v39, v40, "DUFoundInEventMultilingualBERTImplementation: cannot find matched max value element for token prediction", v41, 2u);
    MEMORY[0x238393870](v41, -1, -1);
  }

  (*(v51 + 8))(v38, v52);
}

void sub_232BBC834(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_232CE9A30();
  v7 = sub_232B48F0C(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v43 - v15;
  if (!is_mul_ok(a3, 0x29DuLL))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  v17 = *(a2 + 16);
  if (v17 == 669 * a3)
  {
    v18 = sub_232BB7FF0(a2);
    v19 = sub_232BC15E4(v18, 669, 12, a3, a1);
    if (v19)
    {
      v20 = v19;
      v21 = sub_232B26B10(v19);
      if (!v21)
      {
LABEL_13:

        return;
      }

      v22 = v21;
      v44 = MEMORY[0x277D84F90];
      sub_232B64A58(0, v21 & ~(v21 >> 63), 0);
      if ((v22 & 0x8000000000000000) == 0)
      {
        v23 = 0;
        v24 = v44;
        do
        {
          if ((v20 & 0xC000000000000001) != 0)
          {
            v25 = MEMORY[0x2383922C0](v23, v20);
          }

          else
          {
            v25 = *(v20 + 8 * v23 + 32);
          }

          v26 = v25;
          sub_232CEA0A0();
          v28 = v27;

          v44 = v24;
          v30 = *(v24 + 16);
          v29 = *(v24 + 24);
          if (v30 >= v29 >> 1)
          {
            v31 = sub_232BC1BBC(v29);
            sub_232B64A58(v31, v30 + 1, 1);
            v24 = v44;
          }

          ++v23;
          *(v24 + 16) = v30 + 1;
          *(v24 + 8 * v30 + 32) = v28;
        }

        while (v22 != v23);
        goto LABEL_13;
      }

      goto LABEL_23;
    }

    sub_232CE9A20();
    v40 = sub_232CE9A00();
    v41 = sub_232CEA1C0();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = sub_232BA73DC();
      *v42 = 0;
      _os_log_impl(&dword_232B02000, v40, v41, "DUFoundInEventMultilingualBERTImplementation: Fail to run lstmPredictions with modelHeadWrapper", v42, 2u);
      sub_232BA6A84();
    }

    (*(v9 + 8))(v14, v6);
  }

  else
  {
    sub_232CE9A20();

    v32 = sub_232CE9A00();
    v33 = sub_232CEA1C0();
    if (sub_232BC1E54(v33))
    {
      v34 = sub_232BC1F80();
      *v34 = 134217984;
      *(v34 + 4) = v17;

      sub_232BC1CB8();
      _os_log_impl(v35, v36, v37, v38, v39, 0xCu);
      sub_232B26D28();
    }

    else
    {
    }

    (*(v9 + 8))(v16, v6);
  }
}

void sub_232BBCB44()
{
  sub_232B35110();
  v1 = sub_232CE9A30();
  v2 = sub_232B48F0C(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_232B20704();
  v9 = v8 - v7;
  v10 = sub_232B124A8(&qword_27DDC68A8, &qword_232CFA960);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v40 - v12;
  v14 = sub_232CE8E10();
  v15 = sub_232B48F0C(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_232B20704();
  v22 = v21 - v20;
  v23 = *(v0 + 16);
  if (!v23)
  {
    sub_232CE9A20();
    v37 = sub_232CE9A00();
    v38 = sub_232CEA1C0();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = sub_232BA73DC();
      *v39 = 0;
      _os_log_impl(&dword_232B02000, v37, v38, "DUFoundInEventMultilingualBERTImplementation: NLContextualEmbedding not available", v39, 2u);
      sub_232BA6A84();
    }

    (*(v4 + 8))(v9, v1);
    goto LABEL_10;
  }

  v40 = v13;
  v42 = v19;
  v43 = v18;
  v41 = v23;
  sub_232BDB73C(v41);
  if (v24)
  {
    sub_232CE8D50();
    sub_232BC1ECC();
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    v28 = sub_232CE8DA0();
    sub_232BC1E0C();
    v29 = swift_allocObject();
    v29[2] = v25;
    v29[3] = v27;
    v29[4] = v26;
    v44[4] = sub_232BC16E4;
    v44[5] = v29;
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 1107296256;
    v44[2] = sub_232BDAEC8;
    v44[3] = &unk_284811EF0;
    v30 = _Block_copy(v44);

    LDEnumerateAssetDataItems();
    _Block_release(v30);

    sub_232B13F74();
    if (*(v27 + 16) == 1 && (sub_232B13F74(), (*(v26 + 16) & 1) != 0))
    {
      (*(v42 + 8))(v22, v43);

      sub_232B13F74();
      v31 = *(v25 + 16);
    }

    else
    {
      v32 = sub_232CEA090();
      v33 = v40;
      sub_232B12504(v40, 1, 1, v32);
      sub_232BC1E0C();
      v34 = swift_allocObject();
      v34[2] = 0;
      v34[3] = 0;
      v35 = v41;
      v34[4] = v41;
      v36 = v35;
      sub_232BBD6CC(0, 0, v33, &unk_232CFA970, v34);

      (*(v42 + 8))(v22, v43);
    }

LABEL_10:
    sub_232B20A00();
    return;
  }

  __break(1u);
}

void sub_232BBCF90(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v44 - v15;
  v17 = sub_232CE8C00();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v44 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v44 - v27;
  if (a4)
  {
    v44 = a6;
    v45 = a7;
    v47 = v16;
    v48 = v26;
    v46 = a8;
    type metadata accessor for CFString();
    v29 = a4;
    v30 = sub_232CE9D20();
    sub_232BC1928();
    v31 = sub_232CE8F80();

    if ((v31 & 1) != 0 && a1)
    {
      sub_232CE8BB0();
      v32 = v25;
      v33 = v48;
      (*(v18 + 32))(v28, v32, v48);
      sub_232BA4DEC(0, &qword_2814DF8C8, 0x277CCA8D8);
      (*(v18 + 16))(v22, v28, v33);
      v34 = sub_232BBD328(v22);

      (*(v18 + 8))(v28, v33);
      v35 = v44;
      swift_beginAccess();
      v36 = *(v35 + 16);
      *(v35 + 16) = v34;

      v37 = v45;
      swift_beginAccess();
      *(v37 + 16) = 1;
    }

    else
    {
    }

    v38 = v29;
    v39 = sub_232CE9D20();
    v40 = sub_232CE8F80();

    if (v40)
    {
      if (a1)
      {
        v41 = v47;
        sub_232CE8BB0();

        sub_232B12504(v41, 0, 1, v48);
        sub_232BA4D50(v41, &qword_27DDC6AD8, &unk_232CF82F0);
        v42 = v46;
        swift_beginAccess();
        *(v42 + 16) = 1;
      }

      else
      {

        v43 = v47;
        sub_232B12504(v47, 1, 1, v48);
        sub_232BA4D50(v43, &qword_27DDC6AD8, &unk_232CF82F0);
      }
    }

    else
    {
    }
  }
}

id sub_232BBD328(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_232CE8B90();
  v4 = [v2 initWithURL_];

  v5 = sub_232CE8C00();
  sub_232BA5190(v5);
  (*(v6 + 8))(a1);
  return v4;
}

uint64_t sub_232BBD3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_232B26C7C();
  v15 = v14[19];
  v14[2] = v14;
  v14[7] = v14 + 18;
  v14[3] = sub_232BBD4F0;
  v16 = swift_continuation_init();
  v14[17] = sub_232B124A8(&qword_27DDC7670, &unk_232CFA978);
  v14[10] = MEMORY[0x277D85DD0];
  v14[11] = 1107296256;
  v14[12] = sub_232BBD66C;
  v14[13] = &unk_284811F40;
  v14[14] = v16;
  [v15 requestAssetsWithCompletionHandler_];

  return MEMORY[0x282200938](v14 + 2, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_232BBD4F0()
{
  sub_232B26C44();
  sub_232B26C70();
  sub_232BC1BAC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 160) = *(v3 + 48);
  sub_232B48304();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_232BBD604()
{
  sub_232B26C7C();
  v1 = *(v0 + 160);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 160);

  return v2();
}

uint64_t sub_232BBD66C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_232B203C8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    return sub_232BB7EFC(*v5, a3);
  }

  else
  {
    return sub_232BB7F64(*v5, a2);
  }
}

uint64_t sub_232BBD6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_232B124A8(&qword_27DDC68A8, &qword_232CFA960);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v23 - v10;
  sub_232BC18A0(a3, v23 - v10);
  v12 = sub_232CEA090();
  v13 = sub_232B12480(v11, 1, v12);

  if (v13 == 1)
  {
    sub_232BA4D50(v11, &qword_27DDC68A8, &qword_232CFA960);
  }

  else
  {
    sub_232CEA080();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_232CEA050();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_232CE9DE0() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_232BA4D50(a3, &qword_27DDC68A8, &qword_232CFA960);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_232BA4D50(a3, &qword_27DDC68A8, &qword_232CFA960);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_232BBD94C()
{
  sub_232B26C44();
  v22 = *MEMORY[0x277D85DE8];
  v1[50] = v2;
  v1[51] = v0;
  v3 = sub_232CE9A30();
  v1[52] = v3;
  sub_232B27FBC(v3);
  v1[53] = v4;
  v6 = *(v5 + 64) + 15;
  v1[54] = swift_task_alloc();
  v7 = type metadata accessor for FoundInEventModelOutput();
  v1[55] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v1[56] = swift_task_alloc();
  v9 = sub_232CE9700();
  v1[57] = v9;
  sub_232B27FBC(v9);
  v1[58] = v10;
  v12 = *(v11 + 64) + 15;
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v13 = sub_232CE8C00();
  v1[61] = v13;
  sub_232B27FBC(v13);
  v1[62] = v14;
  v16 = *(v15 + 64) + 15;
  v1[63] = swift_task_alloc();
  v17 = *MEMORY[0x277D85DE8];
  sub_232B48304();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_232BBDB0C()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = 0xD000000000000043;
  sub_232CE9810();
  if (sub_232CE97B0())
  {
    if (*(v0[50] + 24))
    {
      type metadata accessor for DUFoundInEventHTMLPreprocessingSpecification();
      v0[64] = swift_allocObject();
      v2 = swift_task_alloc();
      v0[65] = v2;
      *v2 = v0;
      v2[1] = sub_232BBDCE0;
      v3 = *MEMORY[0x277D85DE8];
      v4 = sub_232BC1EF8(v0[50]);

      return v5(v4);
    }

    v7 = "undInModels are disabled";
  }

  else
  {
    v7 = "mentation";
    v1 = 0xD000000000000048;
  }

  v8 = v7 | 0x8000000000000000;
  sub_232B4A95C();
  sub_232B4EC24();
  *v9 = v1;
  *(v9 + 8) = v8;
  *(v9 + 16) = 0;
  sub_232BC1CF0();

  sub_232BB189C();
  v10 = *MEMORY[0x277D85DE8];
  v11 = sub_232B5F000();

  return v12(v11);
}

uint64_t sub_232BBDCE0()
{
  sub_232B26C44();
  v16 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  sub_232BC1BAC();
  *v3 = v2;
  v5 = *(v4 + 520);
  v6 = *(v4 + 512);
  v7 = *v0;
  sub_232B482C0();
  *v8 = v7;
  *(v10 + 528) = v9;

  v11 = *MEMORY[0x277D85DE8];
  sub_232B48304();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

void sub_232BBDE18()
{
  v96 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 528);
  if (!v1)
  {
    sub_232B4A95C();
    sub_232B4EC24();
    *v22 = 0xD000000000000020;
    *(v22 + 8) = 0x8000000232D06770;
    *(v22 + 16) = 0;
    goto LABEL_15;
  }

  v2 = *(v0 + 400);
  v3 = *(v2 + 24);
  *(v2 + 24) = v1;
  v4 = v1;

  if (*(v2 + 24) && (*(v0 + 536) = sub_232B5821C(), (*(v0 + 544) = v5) != 0))
  {
    v6 = *(v0 + 408);
    sub_232BBCB44();
    *(v0 + 552) = v7;
    if (v7)
    {
      v8 = v7;
      v9 = [objc_allocWithZone(MRLNeuralNetworkWrapper) init];
      *(v0 + 560) = v9;
      v10 = sub_232CE9D20();
      v11 = sub_232CE9D20();
      v12 = [v8 pathForResource:v10 ofType:v11];

      if (v12)
      {
        v13 = [v9 load_];

        if (v13)
        {
          sub_232BC1F60();
          v14 = sub_232BC1D2C();
          v15 = sub_232BC1ED8();
          v17 = [v15 v16];

          if (!v17)
          {

            sub_232BC1D48();
            sub_232B4EC24();
            sub_232BC1C9C(v28, 0xD000000000000049);

            goto LABEL_15;
          }

          sub_232CE9D50();

          sub_232BA4DEC(0, &qword_2814DF930, 0x277CBEAC0);
          v18 = sub_232BD748C();
          *(v0 + 568) = v18;
          if (v18)
          {
            v93 = v9;
            *(v0 + 304) = 67;
            *(v0 + 312) = 0xE100000000000000;
            v19 = [v18 __swift_objectForKeyedSubscript_];
            swift_unknownObjectRelease();
            if (v19)
            {
              sub_232CEA420();
              swift_unknownObjectRelease();
            }

            else
            {
              v94 = 0u;
              v95 = 0u;
            }

            *(v0 + 16) = v94;
            *(v0 + 32) = v95;
            if (*(v0 + 40))
            {
              sub_232B124A8(&qword_27DDC7640, &qword_232CFA938);
              if (swift_dynamicCast())
              {
                *(v0 + 576) = *(v0 + 352);
                *(v0 + 320) = 68;
                *(v0 + 328) = 0xE100000000000000;
                v92 = v18;
                v29 = [v18 __swift_objectForKeyedSubscript_];
                swift_unknownObjectRelease();
                if (v29)
                {
                  sub_232CEA420();
                  swift_unknownObjectRelease();
                }

                else
                {
                  v94 = 0u;
                  v95 = 0u;
                }

                *(v0 + 48) = v94;
                *(v0 + 64) = v95;
                if (*(v0 + 72))
                {
                  if (swift_dynamicCast())
                  {
                    *(v0 + 584) = *(v0 + 360);
                    sub_232CE9D20();
                    v31 = sub_232BC1D2C();
                    v32 = sub_232BC1ED8();
                    v34 = [v32 v33];

                    if (v34)
                    {
                      v35 = sub_232CE9D50();

                      v91 = sub_232BD748C();
                      *(v0 + 592) = v91;
                      sub_232BC1F60();
                      v36 = sub_232BC1D2C();
                      v37 = sub_232BC1ED8();
                      v39 = [v37 v38];

                      if (v39)
                      {
                        v40 = sub_232CE9D50();

                        v41 = sub_232BD748C();
                        *(v0 + 600) = v41;
                        sub_232CE9D20();
                        v42 = sub_232BC1D2C();
                        v43 = sub_232BC1ED8();
                        v45 = [v43 v44];

                        if (v45)
                        {
                          v90 = v41;
                          v46 = *(v0 + 504);
                          sub_232CE9D50();

                          sub_232CE8B70();

                          sub_232CE8C20();
                          v47 = *(v0 + 504);
                          v48 = *(v0 + 488);
                          v49 = v93;
                          v57 = v56;
                          v58 = *(*(v0 + 496) + 8);
                          v59 = sub_232BC1E48();
                          v61 = v60;
                          v62(v59);
                          v63 = objc_opt_self();
                          v88 = v61;
                          v89 = v57;
                          sub_232BC1E18();
                          v64 = sub_232CE8C50();
                          *(v0 + 376) = 0;
                          v65 = [v63 propertyListWithData:v64 options:0 format:0 error:v0 + 376];

                          v66 = *(v0 + 376);
                          if (!v65)
                          {
                            v69 = *(v0 + 432);
                            v70 = v66;
                            v71 = sub_232CE8B30();

                            v87 = v71;
                            swift_willThrow();
                            sub_232CE9A20();
                            v72 = sub_232CE9A00();
                            v73 = sub_232CEA1C0();
                            v74 = sub_232BC1E54(v73);
                            v75 = *(v0 + 424);
                            v76 = *(v0 + 416);
                            v85 = v76;
                            v86 = *(v0 + 432);
                            if (v74)
                            {
                              v77 = sub_232BA73DC();
                              *v77 = 0;
                              _os_log_impl(&dword_232B02000, v72, v73, "DUFoundInEventMultilingualBERTImplementation: error parsing tokenOutputMapping", v77, 2u);
                              sub_232BA6A84();
                            }

                            sub_232B41BEC(v88, v89);

                            (*(v75 + 8))(v86, v85);
                            v50 = MEMORY[0x277D84F90];
LABEL_62:
                            v78 = v92;
                            *(v0 + 616) = v50;
                            *(v0 + 608) = 0;
                            if (v91)
                            {
                              *(v0 + 336) = 0x6E656B6F74;
                              *(v0 + 344) = 0xE500000000000000;
                              v79 = [v91 __swift_objectForKeyedSubscript_];
                              swift_unknownObjectRelease();
                              if (v79)
                              {
                                sub_232CEA420();
                                swift_unknownObjectRelease();
                              }

                              else
                              {
                                v94 = 0u;
                                v95 = 0u;
                              }

                              *(v0 + 80) = v94;
                              *(v0 + 96) = v95;
                              if (*(v0 + 104))
                              {
                                sub_232B124A8(&qword_27DDC7648, &unk_232CFA940);
                                if (swift_dynamicCast())
                                {
                                  *(v0 + 624) = *(v0 + 368);
                                  type metadata accessor for DUFoundInEventDDSpecification();
                                  *(v0 + 632) = swift_allocObject();
                                  v80 = swift_task_alloc();
                                  *(v0 + 640) = v80;
                                  *v80 = v0;
                                  v80[1] = sub_232BBEB90;
                                  v81 = *MEMORY[0x277D85DE8];
                                  sub_232BC1EF8(*(v0 + 400));
                                  sub_232BC1DA8();

                                  __asm { BR              X1 }
                                }

                                v78 = v92;
                                goto LABEL_75;
                              }

                              v78 = v92;
                            }

                            else
                            {

                              *(v0 + 80) = 0u;
                              *(v0 + 96) = 0u;
                            }

                            sub_232BA4D50(v0 + 80, &qword_27DDC68C8, &qword_232CF6210);
LABEL_75:
                            sub_232BC1D48();
                            sub_232B4EC24();
                            sub_232BC1C9C(v84, 0xD000000000000086);

                            v52 = v90;
                            goto LABEL_44;
                          }

                          v67 = v66;
                          sub_232CEA420();
                          swift_unknownObjectRelease();
                          sub_232B124A8(&qword_27DDC7668, &unk_232CFA950);
                          if (swift_dynamicCast())
                          {
                            v68 = *(v0 + 384);
                          }

                          else
                          {
                            v68 = sub_232CE9C60();
                          }

                          sub_232B1E16C(0xD000000000000022, 0x8000000232D06DD0, v68);

                          if (*(v0 + 200))
                          {
                            sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
                            if (swift_dynamicCast())
                            {
                              v50 = *(v0 + 392);
                              sub_232B41BEC(v88, v57);
LABEL_61:
                              v49 = v93;
                              goto LABEL_62;
                            }
                          }

                          else
                          {
                            sub_232BA4D50(v0 + 176, &qword_27DDC68C8, &qword_232CF6210);
                          }

                          sub_232B41BEC(v88, v57);
                          v50 = MEMORY[0x277D84F90];
                          goto LABEL_61;
                        }

                        sub_232BC1D48();
                        sub_232B4EC24();
                        sub_232BC1C9C(v55, 0xD000000000000053);
                      }

                      else
                      {

                        sub_232BC1D48();
                        sub_232B4EC24();
                        sub_232BC1C9C(v54, 0xD000000000000050);
                      }

                      v52 = v91;
LABEL_44:

LABEL_15:
                      sub_232BC1CF0();

                      sub_232BB189C();
                      v23 = *MEMORY[0x277D85DE8];
                      sub_232B5F000();
                      sub_232BC1DA8();

                      __asm { BRAA            X3, X16 }
                    }

                    sub_232BC1D48();
                    sub_232B4EC24();
                    sub_232BC1C9C(v53, 0xD00000000000004ALL);

LABEL_43:
                    v52 = v18;
                    goto LABEL_44;
                  }
                }

                else
                {

                  sub_232BA4D50(v0 + 48, &qword_27DDC68C8, &qword_232CF6210);
                }

                sub_232BC1D48();
                sub_232B4EC24();
                sub_232BC1C9C(v51, 0xD00000000000004ALL);

                goto LABEL_43;
              }

LABEL_32:
              sub_232BC1D48();
              sub_232B4EC24();
              sub_232BC1C9C(v30, 0xD00000000000004BLL);

              goto LABEL_15;
            }
          }

          else
          {

            *(v0 + 16) = 0u;
            *(v0 + 32) = 0u;
          }

          sub_232BA4D50(v0 + 16, &qword_27DDC68C8, &qword_232CF6210);
          goto LABEL_32;
        }

        sub_232BC1D48();
        sub_232B4EC24();
        v27 = 0xD000000000000053;
      }

      else
      {

        sub_232BC1D48();
        sub_232B4EC24();
        v27 = 0xD000000000000054;
      }

      sub_232BC1C9C(v26, v27);

LABEL_13:
      goto LABEL_15;
    }

    sub_232BC1D48();
    sub_232B4EC24();
    v21 = 0xD00000000000005ELL;
  }

  else
  {
    sub_232BC1D48();
    sub_232B4EC24();
    v21 = 0xD000000000000048;
  }

  sub_232BC1C9C(v20, v21);
  goto LABEL_13;
}

uint64_t sub_232BBEB90()
{
  sub_232B26C44();
  v16 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  sub_232BC1BAC();
  *v3 = v2;
  v5 = *(v4 + 640);
  v6 = *(v4 + 632);
  v7 = *v0;
  sub_232B482C0();
  *v8 = v7;
  *(v10 + 648) = v9;

  v11 = *MEMORY[0x277D85DE8];
  sub_232B48304();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_232BBECC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_232BC1F04();
  v42 = *MEMORY[0x277D85DE8];
  if (v14[81])
  {
    v15 = v14[68];
    v16 = swift_task_alloc();
    v14[82] = v16;
    *v16 = v14;
    v16[1] = sub_232BBEEB8;
    v17 = v14[51];
    v18 = *MEMORY[0x277D85DE8];
    sub_232BC1EF8(v14[67]);
    sub_232B26CB4();

    return sub_232BB9C78();
  }

  else
  {
    v21 = v14[78];
    v22 = v14[77];
    v41 = v14[75];
    v23 = v14[74];
    v24 = v14[73];
    v25 = v14[72];
    v26 = v14[71];
    v27 = v14[70];
    v28 = v14[69];
    v29 = v14[68];
    v30 = v14[66];

    sub_232B4A95C();
    sub_232B4EC24();
    *v31 = 0xD000000000000049;
    *(v31 + 8) = 0x8000000232D06C20;
    *(v31 + 16) = 0;

    sub_232BC1CF0();

    sub_232BB189C();
    v32 = *MEMORY[0x277D85DE8];
    sub_232B5F000();
    sub_232B26CB4();

    return v36(v33, v34, v35, v36, v37, v38, v39, v40, a9, v41, v42, a12, a13, a14);
  }
}

uint64_t sub_232BBEEB8()
{
  sub_232B26C44();
  v13 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  sub_232BC1BAC();
  *v3 = v2;
  v2[35] = v0;
  v2[36] = v4;
  v2[37] = v5;
  v7 = *(v6 + 656);
  *v3 = *v0;
  v2[83] = v4;

  v8 = *MEMORY[0x277D85DE8];
  sub_232B48304();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_232BBEFDC()
{
  v283 = v1;
  v2 = v1;
  v282 = *MEMORY[0x277D85DE8];
  if (!v1[83])
  {
    sub_232BC1EE4();
    v15 = v1[74];
    v16 = v1[73];
    v17 = v1[72];
    v266 = v1[71];
    v272 = v18;
    v19 = v1[70];
    v20 = v1[69];
    v21 = v1[68];
    v22 = v1[66];

    sub_232BC1FB0();
    sub_232B4EC24();
    sub_232BC1CA8();
    *v24 = v23 - 48;
    *(v24 + 8) = v0;
    *(v24 + 16) = 0;

    goto LABEL_7;
  }

  v3 = v1[37];
  v4 = v1[81];
  v249 = v1;
  v5 = v1[50];
  sub_232BA4DEC(0, &qword_27DDC7650, 0x277CD89D8);
  sub_232B124A8(&qword_27DDC7658, &qword_232CFB6D0);
  sub_232BC1E0C();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_232CF6460;
  v7 = *MEMORY[0x277CD8978];
  *(v6 + 32) = *MEMORY[0x277CD8978];
  v8 = v7;
  v248 = sub_232BED070();
  sub_232BBADFC();
  v10 = v9;

  sub_232BBB5C4();
  v271 = v11;
  v13 = MEMORY[0x277D84F90];
  if (*(v5 + 24))
  {
    v11 = sub_232B586E8();
    if (v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v13;
    }
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v33 = (v2 + 14);
  sub_232BBB968(v11, v12, v14);

  v34 = *(v10 + 16);
  if (v34)
  {
    v35 = sub_232BC1D78();
    sub_232B64ADC(v35, v36, v37);
    type metadata accessor for TaggedCharacterRange();
    v38 = 32;
    v39 = v13;
    do
    {
      v40 = v10;
      v41 = *(v10 + v38);
      v280 = v271;

      sub_232C5E334(v42);
      sub_232C6A93C(v41, v271);
      v44 = v43;

      v46 = v39[2];
      v45 = v39[3];
      if (v46 >= v45 >> 1)
      {
        v47 = sub_232BC1BBC(v45);
        sub_232B64ADC(v47, v46 + 1, 1);
      }

      v39[2] = v46 + 1;
      v39[v46 + 4] = v44;
      v38 += 8;
      --v34;
      v10 = v40;
    }

    while (v34);
  }

  else
  {

    v39 = MEMORY[0x277D84F90];
  }

  v48 = 0;
  v49 = MEMORY[0x277D84F90];
  v259 = v39[2];
  v263 = v39;
  v50 = v39 + 4;
  v250 = v39 + 4;
  while (v48 != v259)
  {
    if (v48 >= v39[2])
    {
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      v194 = *(v48 + 648);
      v195 = *(v48 + 624);
      v276 = *(v48 + 600);
      v196 = *(v48 + 592);
      v197 = *(v48 + 568);
      v198 = *(v48 + 560);
      v199 = *(v48 + 552);
      v200 = *(v48 + 544);
      v201 = *(v48 + 528);

      sub_232BC1FB0();
      sub_232B4EC24();
      sub_232BC1CA8();
      *v202 = v203;
      *(v202 + 8) = v194;
      *(v202 + 16) = 0;

      v1 = v48;
      goto LABEL_7;
    }

    v51 = v50[v48];
    if (v51 >> 62)
    {
      if (v51 < 0)
      {
        v74 = v50[v48];
      }

      v52 = sub_232CEA610();
    }

    else
    {
      v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v53 = v49 >> 62;
    if (v49 >> 62)
    {
      v54 = sub_232CEA610();
    }

    else
    {
      v54 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v55 = v54 + v52;
    if (__OFADD__(v54, v52))
    {
      goto LABEL_118;
    }

    v267 = v52;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v53)
      {
LABEL_33:
        sub_232CEA610();
      }

      else
      {
        v56 = v49 & 0xFFFFFFFFFFFFFF8;
LABEL_32:
        v58 = *(v56 + 16);
      }

      v49 = sub_232CEA540();
      v56 = v49 & 0xFFFFFFFFFFFFFF8;
      v57 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      goto LABEL_35;
    }

    if (v53)
    {
      goto LABEL_33;
    }

    v56 = v49 & 0xFFFFFFFFFFFFFF8;
    v57 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    if (v57 < v55)
    {
      goto LABEL_32;
    }

LABEL_35:
    v273 = (v48 + 1);
    v59 = *(v56 + 16);
    v60 = v57 - v59;
    v61 = v56 + 8 * v59;
    if (v51 >> 62)
    {
      v63 = sub_232CEA610();
      if (v63)
      {
        v64 = v63;
        v65 = sub_232CEA610();
        if (v60 < v65)
        {
          goto LABEL_142;
        }

        if (v64 < 1)
        {
          goto LABEL_143;
        }

        v252 = v65;
        v255 = v56;
        v257 = v49;
        v66 = v61 + 32;
        sub_232B48E4C(&qword_27DDC7660, &qword_27DDC6B60, &qword_232CF8970);
        for (i = 0; i != v64; ++i)
        {
          sub_232B124A8(&qword_27DDC6B60, &qword_232CF8970);
          v68 = sub_232B4D044(v33, i, v51);
          v70 = *v69;

          v68(v33, 0);
          *(v66 + 8 * i) = v70;
        }

        v50 = v250;
        v62 = v252;
        v49 = v257;
        goto LABEL_45;
      }

LABEL_49:

      v39 = v263;
      v48 = v273;
      if (v267 > 0)
      {
        goto LABEL_119;
      }
    }

    else
    {
      v62 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v62)
      {
        goto LABEL_49;
      }

      if (v60 < v62)
      {
        goto LABEL_141;
      }

      type metadata accessor for TaggedCharacterRange();
      swift_arrayInitWithCopy();
LABEL_45:

      v39 = v263;
      v48 = v273;
      if (v62 < v267)
      {
        goto LABEL_119;
      }

      if (v62 > 0)
      {
        v71 = *(v56 + 16);
        v72 = __OFADD__(v71, v62);
        v73 = v71 + v62;
        if (v72)
        {
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        *(v56 + 16) = v73;
      }
    }
  }

  v75 = v249[76];
  v76 = v249[72];
  sub_232BC1C4C();
  swift_bridgeObjectRetain_n();
  v280 = sub_232BD3120(v76);
  sub_232BC0550(&v280, v76);
  if (!v75)
  {
    v77 = v249[72];
    swift_bridgeObjectRelease_n();
    v78 = v280;
    v79 = *(v280 + 16);
    v258 = v49;
    if (v79)
    {
      v277 = MEMORY[0x277D84F90];
      v80 = sub_232BC1D88();
      sub_232B649F4(v80, v81, v82);
      v83 = v277;
      v84 = (v78 + 40);
      do
      {
        v85 = *(v84 - 1);
        v86 = *v84;
        v280 = 24387;
        v281 = 0xE200000000000000;

        sub_232BC1E84();

        v87 = v280;
        v88 = v281;
        v90 = *(v277 + 16);
        v89 = *(v277 + 24);
        if (v90 >= v89 >> 1)
        {
          sub_232BC1BBC(v89);
          sub_232BC1E24();
          sub_232B649F4(v92, v93, v94);
        }

        *(v277 + 16) = v90 + 1;
        v91 = v277 + 16 * v90;
        *(v91 + 32) = v87;
        *(v91 + 40) = v88;
        v84 += 2;
        --v79;
      }

      while (v79);

      v49 = v258;
      v50 = v250;
    }

    else
    {

      v83 = MEMORY[0x277D84F90];
    }

    v95 = v249[73];
    sub_232BC1C4C();
    swift_bridgeObjectRetain_n();
    v280 = sub_232BD3120(v95);
    sub_232BC0550(&v280, v95);
    v97 = v249[73];
    swift_bridgeObjectRelease_n();
    v98 = v280;
    v99 = *(v280 + 16);
    if (v99)
    {
      v278 = MEMORY[0x277D84F90];
      v100 = sub_232BC1D88();
      sub_232B649F4(v100, v101, v102);
      v103 = v278;
      v104 = (v98 + 40);
      do
      {
        v105 = *(v104 - 1);
        v106 = *v104;
        v280 = 24388;
        v281 = 0xE200000000000000;

        sub_232BC1E84();

        v108 = v280;
        v107 = v281;
        v110 = *(v278 + 16);
        v109 = *(v278 + 24);
        if (v110 >= v109 >> 1)
        {
          sub_232BC1BBC(v109);
          sub_232BC1E24();
          sub_232B649F4(v112, v113, v114);
        }

        *(v278 + 16) = v110 + 1;
        v111 = v278 + 16 * v110;
        *(v111 + 32) = v108;
        *(v111 + 40) = v107;
        v104 += 2;
        --v99;
      }

      while (v99);

      v49 = v258;
      v50 = v250;
    }

    else
    {

      v103 = MEMORY[0x277D84F90];
    }

    v280 = v83;
    sub_232C5E194(v103);
    v115 = v263[2];
    if (v115)
    {
      v280 = MEMORY[0x277D84F90];
      v116 = sub_232BC1D88();
      sub_232B64ABC(v116, v117, v118);
      v119 = v280;
      do
      {
        v120 = *v50;

        v122 = sub_232BBC114(v121);

        v280 = v119;
        v124 = *(v119 + 16);
        v123 = *(v119 + 24);
        if (v124 >= v123 >> 1)
        {
          v125 = sub_232BC1BBC(v123);
          sub_232B64ABC(v125, v124 + 1, 1);
          v119 = v280;
        }

        *(v119 + 16) = v124 + 1;
        *(v119 + 8 * v124 + 32) = v122;
        ++v50;
        --v115;
      }

      while (v115);
    }

    else
    {

      v119 = MEMORY[0x277D84F90];
    }

    v126 = *(v119 + 16);
    if (v126)
    {
      v280 = MEMORY[0x277D84F90];
      sub_232B64A9C(0, v126, 0);
      v127 = 0;
      v128 = v280;
      v268 = (v119 + 32);
      v260 = v126;
      do
      {
        v274 = v127 + 1;
        v129 = sub_232B5F000();
        sub_232B25DCC(v129, v130, v119);
        v131 = v268[v127];
        v132 = *(v131 + 16);

        v133 = 0;
        v134 = MEMORY[0x277D84F90];
        while (v132 != v133)
        {
          if (v133 >= *(v131 + 16))
          {
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          v135 = v131 + 8 * v133;
          v136 = *(v135 + 32);
          v137 = *(v136 + 16);
          v138 = *(v134 + 16);
          if (__OFADD__(v138, v137))
          {
            goto LABEL_122;
          }

          v139 = *(v135 + 32);

          if (!swift_isUniquelyReferenced_nonNull_native() || v138 + v137 > *(v134 + 24) >> 1)
          {
            sub_232B35ABC();
            v134 = v140;
          }

          if (*(v136 + 16))
          {
            v141 = *(v134 + 16);
            if ((*(v134 + 24) >> 1) - v141 < v137)
            {
              __break(1u);
LABEL_126:
              v255 = v131;
              if (v141)
              {
                v212 = v258;
                v213 = sub_232B26B10(v258);

                v214 = 0;
                v215 = (v274 + 40);
                while (v213 != v214)
                {
                  if ((v258 & 0xC000000000000001) != 0)
                  {
                    v216 = MEMORY[0x2383922C0](v214, v212);
                  }

                  else
                  {
                    if (v214 >= *((v258 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_152;
                    }

                    v216 = *(v212 + 8 * v214 + 32);
                  }

                  if (v214 >= *(v274 + 16))
                  {
                    goto LABEL_151;
                  }

                  v217 = *(v215 - 1);
                  v218 = *v215;
                  v280 = 24397;
                  v281 = 0xE200000000000000;

                  sub_232BC1E84();

                  v219 = v280;
                  v220 = v281;
                  swift_beginAccess();
                  v221 = *(v216 + 24);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *(v216 + 24) = v221;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v226 = *(v221 + 16);
                    sub_232BA57A8();
                    sub_232B35ECC();
                    v221 = v227;
                    *(v216 + 24) = v227;
                  }

                  v224 = *(v221 + 16);
                  v223 = *(v221 + 24);
                  if (v224 >= v223 >> 1)
                  {
                    sub_232BC1BBC(v223);
                    sub_232BC1E24();
                    sub_232B35ECC();
                    v221 = v228;
                  }

                  *(v221 + 16) = v224 + 1;
                  v225 = v221 + 16 * v224;
                  *(v225 + 32) = v219;
                  *(v225 + 40) = v220;
                  *(v216 + 24) = v221;
                  swift_endAccess();

                  v215 += 2;
                  ++v214;
                  v212 = v258;
                }

                v236 = v249[75];
                v237 = v249[74];
                v238 = v249[71];
                v239 = v249[69];
                v254 = v249[67];
                v240 = v249[66];
                v241 = v249[60];
                v242 = v249[57];
                v265 = v249[68];
                v270 = v249[56];

                v255(v241, v242);

                v243 = &v128[OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_text];
                sub_232B13F5C();
                v244 = v243[1];
                *v243 = v254;
                v243[1] = v265;

                v245 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_tags;
                sub_232B13F5C();
                v246 = *&v128[v245];
                *&v128[v245] = v212;

                sub_232BC1C34();
                sub_232BC19E4(v270, v247);
LABEL_147:
                v1 = v249;
LABEL_7:
                v25 = v1[63];
                v26 = v1[59];
                v27 = v1[60];
                v28 = v1[56];
                v29 = v1[54];

                sub_232BB189C();
                v30 = *MEMORY[0x277D85DE8];
                sub_232BC1DA8();

                __asm { BRAA            X3, X16 }
              }

LABEL_144:
              v178 = v249[75];
              v229 = v249[74];
              v230 = v249[71];
              v231 = v249[70];
              v232 = v249[69];
              v233 = v249[68];
              v234 = v249[66];
              v186 = v249[56];
              v255(v249[60], v249[57]);

LABEL_145:

              sub_232BC1C34();
              sub_232BC19E4(v186, v235);

              goto LABEL_147;
            }

            memcpy((v134 + 8 * v141 + 32), (v136 + 32), 8 * v137);

            if (v137)
            {
              v142 = *(v134 + 16);
              v72 = __OFADD__(v142, v137);
              v143 = v142 + v137;
              if (v72)
              {
                goto LABEL_140;
              }

              *(v134 + 16) = v143;
            }
          }

          else
          {

            if (v137)
            {
              goto LABEL_123;
            }
          }

          ++v133;
        }

        v280 = v128;
        v145 = *(v128 + 2);
        v144 = *(v128 + 3);
        if (v145 >= v144 >> 1)
        {
          sub_232BC1BBC(v144);
          sub_232BC1E24();
          sub_232B64A9C(v146, v147, v148);
          v128 = v280;
        }

        *(v128 + 2) = v145 + 1;
        *&v128[8 * v145 + 32] = v134;
        v127 = v274;
      }

      while (v274 != v260);

      v49 = v258;
    }

    else
    {

      v128 = MEMORY[0x277D84F90];
    }

    v279 = MEMORY[0x277D84F90];
    v149 = -*(v128 + 2);
    for (j = 4; v149 + j != 4; ++j)
    {
      if ((j - 4) >= *(v128 + 2))
      {
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
      }

      if ((j - 4) >= v263[2])
      {
        goto LABEL_149;
      }

      v151 = *&v128[8 * j];
      v152 = v263[j];
      if (v152 >> 62)
      {
        if (v152 < 0)
        {
          v157 = v263[j];
        }

        v158 = sub_232CEA610();
        if (v158 < 0)
        {
          goto LABEL_150;
        }

        v153 = v158;
      }

      else
      {
        v153 = *((v152 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v154 = v249[70];

      sub_232BBC834(v154, v151, v153);
      v156 = v155;

      if (!v156)
      {
        sub_232BC1EE4();
        v187 = v249[74];
        v188 = v249[71];
        v269 = v249[70];
        v275 = v189;
        v262 = v249[69];
        v190 = v249[68];
        v191 = v249[66];

        sub_232BC1FB0();
        sub_232B4EC24();
        sub_232BC1CA8();
        *v193 = v192 - 33;
        *(v193 + 8) = v151;
        *(v193 + 16) = 1;

        v1 = v249;
        goto LABEL_7;
      }

      sub_232C5E268(v156);
    }

    v48 = v249;
    v159 = v249[77];

    v160 = sub_232B26B10(v49);
    v161 = sub_232BBC34C(v279, v159, v160);

    if (v161)
    {
      v164 = sub_232BB8CBC(v162, v163, v161, v249[78]);

      v165 = v249[81];
      v264 = v165;
      v268 = v249[75];
      v132 = v249;
      if (v164)
      {
        v274 = v161;
        v166 = v49;
        v168 = v249[59];
        v167 = v249[60];
        v169 = v249[58];
        v170 = v249[56];
        v253 = v249[57];
        v256 = v249[55];
        v261 = v249[50];
        sub_232BB914C(v249[67], v249[68], v166);
        v251 = sub_232CE96B0();
        v172 = v171;
        sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
        v173 = sub_232CE9C60();
        v174 = *(v169 + 16);
        v174(v168, v167, v253);
        *v170 = v251;
        v170[1] = v172;
        v170[2] = v264;
        v170[3] = v173;
        v170[4] = v164;
        v174(v170 + *(v256 + 32), v168, v253);
        v175 = v169;
        v176 = swift_task_alloc();
        *(v176 + 16) = v168;

        v177 = sub_232BCDEA4(sub_232BC16B4, v176, v164);

        v131 = *(v175 + 8);
        (v131)(v168, v253);

        v170[4] = v177;
        v128 = sub_232BB8384(v170, v268);
        LODWORD(v141) = *(v261 + 40);
        if (v141 != 2)
        {
          goto LABEL_126;
        }

        v178 = v249[75];
        v179 = v249[74];
        v180 = v249[71];
        v181 = v249[70];
        v182 = v131;
        v183 = v249[69];
        v184 = v249[68];
        v185 = v249[66];
        v186 = v249[56];
        v182(v249[60], v249[57]);

        goto LABEL_145;
      }

LABEL_124:
      v204 = v132[74];
      v205 = v132[71];
      v206 = v132[70];
      v207 = v132[69];
      v208 = v132[68];
      v209 = v132[66];

      sub_232BC1FB0();
      sub_232B4EC24();
      sub_232BC1CA8();
      *v210 = v211;
      *(v210 + 8) = v208;
      *(v210 + 16) = 0;

      v1 = v249;
      goto LABEL_7;
    }

    goto LABEL_120;
  }

  v96 = *MEMORY[0x277D85DE8];
  sub_232BC1DA8();
}

uint64_t sub_232BC02CC()
{
  sub_232BC1ECC();

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t sub_232BC0324()
{
  sub_232BA4DEC(0, &qword_27DDC76A0, 0x277CD89A8);
  *(v0 + 16) = sub_232BB82CC(0xD000000000000024, 0x8000000232D06F40);
  return v0;
}

uint64_t sub_232BC039C(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_232BC0438;

  return sub_232BBD94C();
}

uint64_t sub_232BC0438()
{
  sub_232B26C7C();
  v2 = v1;
  v4 = v3;
  sub_232B26C70();
  v6 = *(v5 + 24);
  v7 = *(v5 + 16);
  v8 = *v0;
  sub_232B482C0();
  *v9 = v8;

  *v7 = v4;
  *(v7 + 8) = v2 & 1;
  v10 = *(v8 + 8);

  return v10();
}

uint64_t sub_232BC0550(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_232BC16D0(v4);
    v4 = v5;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;

  sub_232BC05EC(v8, a2);
  *a1 = v4;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_232BC05EC(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_232CEA710();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        v8 = sub_232CEA010();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;

      sub_232BC0884(v9, v10, a1, v6, a2);
      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_232BC0720(0, v4, 1, a1, a2);
    sub_232BC1C4C();
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_232BC0720(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v6 = *a4;
    v7 = (*a4 + 16 * a3);
    v8 = result - a3;
    while (2)
    {
      v24 = a3;
      v9 = *(v6 + 16 * a3 + 8);
      v22 = v8;
      v23 = v7;
      do
      {
        v10 = *(v7 - 2);
        if (*(a5 + 16))
        {
          v11 = *(v7 - 1);
          v12 = *v7;

          v13 = sub_232B1F160(v12, v9);
          if (v14 & 1) != 0 && *(a5 + 16) && (v15 = *(*(a5 + 56) + 8 * v13), v16 = sub_232B1F160(v10, v11), (v17))
          {
            v18 = *(*(a5 + 56) + 8 * v16);

            if (v15 >= v18)
            {
              break;
            }
          }

          else
          {
          }
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v19 = *v7;
        v9 = v7[1];
        *v7 = *(v7 - 1);
        *(v7 - 1) = v9;
        *(v7 - 2) = v19;
        v7 -= 2;
      }

      while (!__CFADD__(v8++, 1));
      a3 = v24 + 1;
      v7 = v23 + 2;
      v8 = v22 - 1;
      if (v24 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_232BC0884(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    sub_232BC1C4C();
    swift_bridgeObjectRetain_n();
    v8 = MEMORY[0x277D84F90];
LABEL_111:
    v143 = *a1;
    if (*a1)
    {
      sub_232BC1C4C();
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_148;
      }

      goto LABEL_113;
    }

    goto LABEL_154;
  }

  sub_232BC1C4C();
  swift_bridgeObjectRetain_n();
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v145 = a5;
  while (1)
  {
    v9 = v7++;
    v134 = v9;
    if (v7 >= v6)
    {
      goto LABEL_35;
    }

    v135 = v8;
    v10 = (*a3 + 16 * v9);
    if (*(a5 + 16))
    {
      v11 = v7;
      v12 = (*a3 + 16 * v7);
      v14 = *v10;
      v13 = v10[1];
      v15 = *v12;
      v16 = v12[1];

      v17 = sub_232BC1E18();
      v19 = sub_232B1F160(v17, v18);
      if ((v20 & 1) == 0)
      {
        goto LABEL_9;
      }

      if (*(a5 + 16))
      {
        v21 = v6;
        v22 = *(*(a5 + 56) + 8 * v19);
        v23 = sub_232B1F160(v14, v13);
        if (v24)
        {
          v25 = *(*(a5 + 56) + 8 * v23);

          v26 = v22 < v25;
        }

        else
        {

          v26 = 1;
        }

        LODWORD(v143) = v26;
        v7 = v11;
        v6 = v21;
      }

      else
      {
LABEL_9:

        LODWORD(v143) = 1;
        v7 = v11;
      }
    }

    else
    {
      LODWORD(v143) = 1;
    }

    v27 = 0;
    v28 = 16 * v134;
    v29 = v10 + 3;
    v139 = v6;
    while (1)
    {
      v30 = v7 + 1;
      if ((v7 + 1) >= v6)
      {
LABEL_24:
        if (!v143)
        {
LABEL_32:
          v7 = v30;
          goto LABEL_34;
        }

        if (v30 >= v134)
        {
          if (v134 <= v7)
          {
            v45 = 0;
            v46 = 16 * v134;
            do
            {
              if (v134 + v45 != v134 + v27 + 1)
              {
                v47 = *a3;
                if (!*a3)
                {
                  goto LABEL_152;
                }

                v48 = (v47 + v46);
                v49 = v47 + v28;
                v50 = *v48;
                v51 = v48[1];
                *v48 = *(v49 + 16);
                *(v49 + 16) = v50;
                *(v49 + 24) = v51;
              }

              --v27;
              ++v45;
              v28 -= 16;
              v46 += 16;
            }

            while (v45 + v134 < v134 + v27 + 2);
          }

          goto LABEL_32;
        }

        __break(1u);
LABEL_150:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_151:

        __break(1u);
LABEL_152:
        sub_232BC1C4C();
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_153:
        sub_232BC1C4C();
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_154:
        sub_232BC1C4C();
        result = swift_bridgeObjectRelease_n();
        __break(1u);
        return result;
      }

      if (!*(a5 + 16))
      {
        goto LABEL_22;
      }

      v31 = v7;
      v33 = *(v29 - 1);
      v32 = *v29;
      v34 = v29[1];
      v35 = v29[2];

      v36 = sub_232BC1E18();
      v38 = sub_232B1F160(v36, v37);
      a5 = v145;
      if ((v39 & 1) == 0)
      {
        break;
      }

      if (!*(v145 + 16))
      {
        break;
      }

      v40 = sub_232BC1E30(v38);
      v42 = sub_232B1F160(v40, v41);
      a5 = v145;
      if ((v43 & 1) == 0)
      {
        break;
      }

      v44 = *(*(v145 + 56) + 8 * v42);

      v7 = v31;
      v6 = v139;
      if (v143 == v138 >= v44)
      {
        goto LABEL_24;
      }

LABEL_23:
      v29 += 2;
      ++v7;
      ++v27;
      v28 += 16;
    }

    v7 = v31;
    v6 = v139;
LABEL_22:
    if (v143)
    {
      goto LABEL_23;
    }

    ++v7;
LABEL_34:
    v8 = v135;
LABEL_35:
    v52 = a3[1];
    if (v7 < v52)
    {
      if (__OFSUB__(v7, v134))
      {
        goto LABEL_144;
      }

      if (&v7[-v134] < a4)
      {
        break;
      }
    }

LABEL_57:
    if (v7 < v134)
    {
      goto LABEL_143;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v117 = *(v8 + 2);
      sub_232BA57A8();
      sub_232B36234();
      v8 = v118;
    }

    v70 = *(v8 + 2);
    v71 = v70 + 1;
    if (v70 >= *(v8 + 3) >> 1)
    {
      sub_232B36234();
      v8 = v119;
    }

    *(v8 + 2) = v71;
    v72 = v8 + 32;
    v73 = &v8[16 * v70 + 32];
    *v73 = v134;
    *(v73 + 1) = v7;
    v141 = *a1;
    if (!*a1)
    {
      goto LABEL_153;
    }

    if (v70)
    {
      v143 = v7;
      v138 = v8 + 32;
      while (1)
      {
        v74 = v71 - 1;
        v75 = &v72[16 * v71 - 16];
        v76 = &v8[16 * v71];
        if (v71 >= 4)
        {
          break;
        }

        if (v71 == 3)
        {
          v77 = *(v8 + 4);
          v78 = *(v8 + 5);
          v87 = __OFSUB__(v78, v77);
          v79 = v78 - v77;
          v80 = v87;
LABEL_78:
          if (v80)
          {
            goto LABEL_130;
          }

          v92 = *v76;
          v91 = *(v76 + 1);
          v93 = __OFSUB__(v91, v92);
          v94 = v91 - v92;
          v95 = v93;
          if (v93)
          {
            goto LABEL_133;
          }

          v96 = *(v75 + 1);
          v97 = v96 - *v75;
          if (__OFSUB__(v96, *v75))
          {
            goto LABEL_136;
          }

          if (__OFADD__(v94, v97))
          {
            goto LABEL_138;
          }

          if (v94 + v97 >= v79)
          {
            if (v79 < v97)
            {
              v74 = v71 - 2;
            }

            goto LABEL_100;
          }

          goto LABEL_93;
        }

        if (v71 < 2)
        {
          goto LABEL_132;
        }

        v99 = *v76;
        v98 = *(v76 + 1);
        v87 = __OFSUB__(v98, v99);
        v94 = v98 - v99;
        v95 = v87;
LABEL_93:
        if (v95)
        {
          goto LABEL_135;
        }

        v101 = *v75;
        v100 = *(v75 + 1);
        v87 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v87)
        {
          goto LABEL_137;
        }

        if (v102 < v94)
        {
          goto LABEL_107;
        }

LABEL_100:
        if (v74 - 1 >= v71)
        {
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }

        v106 = *a3;
        if (!*a3)
        {
          goto LABEL_150;
        }

        v107 = v8;
        v108 = &v72[16 * v74 - 16];
        v8 = *v108;
        v109 = v74;
        v110 = &v72[16 * v74];
        v111 = *(v110 + 1);
        v112 = v106 + 16 * *v110;
        v113 = (v106 + 16 * v111);
        a5 = v145;

        v114 = sub_232BC1E18();
        sub_232BC10F4(v114, v115, v113, v141, v145);
        if (v144)
        {
          sub_232BC1C4C();
          swift_bridgeObjectRelease_n();
        }

        if (v111 < v8)
        {
          goto LABEL_125;
        }

        v116 = *(v107 + 2);
        if (v109 > v116)
        {
          goto LABEL_126;
        }

        *v108 = v8;
        *(v108 + 1) = v111;
        if (v109 >= v116)
        {
          goto LABEL_127;
        }

        v71 = v116 - 1;
        memmove(v110, v110 + 16, 16 * (v116 - 1 - v109));
        v8 = v107;
        *(v107 + 2) = v116 - 1;
        v7 = v143;
        v72 = v138;
        a5 = v145;
        if (v116 <= 2)
        {
          goto LABEL_107;
        }
      }

      v81 = &v72[16 * v71];
      v82 = *(v81 - 8);
      v83 = *(v81 - 7);
      v87 = __OFSUB__(v83, v82);
      v84 = v83 - v82;
      if (v87)
      {
        goto LABEL_128;
      }

      v86 = *(v81 - 6);
      v85 = *(v81 - 5);
      v87 = __OFSUB__(v85, v86);
      v79 = v85 - v86;
      v80 = v87;
      if (v87)
      {
        goto LABEL_129;
      }

      v88 = *(v76 + 1);
      v89 = v88 - *v76;
      if (__OFSUB__(v88, *v76))
      {
        goto LABEL_131;
      }

      v87 = __OFADD__(v79, v89);
      v90 = v79 + v89;
      if (v87)
      {
        goto LABEL_134;
      }

      if (v90 >= v84)
      {
        v104 = *v75;
        v103 = *(v75 + 1);
        v87 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v87)
        {
          goto LABEL_142;
        }

        if (v79 < v105)
        {
          v74 = v71 - 2;
        }

        goto LABEL_100;
      }

      goto LABEL_78;
    }

LABEL_107:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_111;
    }
  }

  v53 = (v134 + a4);
  if (__OFADD__(v134, a4))
  {
    goto LABEL_145;
  }

  if (v53 >= v52)
  {
    v53 = a3[1];
  }

  if (v53 >= v134)
  {
    if (v7 != v53)
    {
      v136 = v8;
      v54 = *a3;
      v55 = (*a3 + 16 * v7);
      v8 = (v134 - v7);
      v133 = v53;
      do
      {
        v143 = v7;
        v56 = *(v54 + 16 * v7 + 8);
        v138 = v8;
        v140 = v55;
        do
        {
          v57 = *(v55 - 2);
          if (*(a5 + 16))
          {
            v58 = *(v55 - 1);
            v59 = *v55;

            v60 = sub_232B1F160(v59, v56);
            a5 = v145;
            if (v61 & 1) != 0 && *(v145 + 16) && (v62 = *(*(v145 + 56) + 8 * v60), v63 = sub_232BC1EB4(), v65 = sub_232B1F160(v63, v64), a5 = v145, (v66))
            {
              v67 = *(*(v145 + 56) + 8 * v65);

              if (v62 >= v67)
              {
                break;
              }
            }

            else
            {
            }
          }

          if (!v54)
          {
            goto LABEL_147;
          }

          v68 = *v55;
          v56 = v55[1];
          *v55 = *(v55 - 1);
          *(v55 - 1) = v56;
          *(v55 - 2) = v68;
          v55 -= 2;
        }

        while (!__CFADD__(v8++, 1));
        v7 = v143 + 1;
        v55 = v140 + 2;
        v8 = v138 - 1;
      }

      while (v143 + 1 != v133);
      v7 = v133;
      v8 = v136;
    }

    goto LABEL_57;
  }

LABEL_146:
  __break(1u);
LABEL_147:
  sub_232BC1C4C();
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_148:
  v8 = sub_232BC13B8(v8);
LABEL_113:
  v121 = v8 + 16;
  v120 = *(v8 + 2);
  for (i = v8; ; v8 = i)
  {
    if (v120 < 2)
    {

      return swift_bridgeObjectRelease_n();
    }

    v122 = *a3;
    if (!*a3)
    {
      goto LABEL_151;
    }

    v123 = &v8[16 * v120];
    v8 = *v123;
    v124 = v121;
    v125 = &v121[16 * v120];
    v126 = *(v125 + 1);
    v127 = (v122 + 16 * *v123);
    v128 = (v122 + 16 * *v125);
    v146 = (v122 + 16 * v126);

    sub_232BC10F4(v127, v128, v146, v143, a5);
    if (v144)
    {
      break;
    }

    if (v126 < v8)
    {
      goto LABEL_139;
    }

    if (v120 - 2 >= *v124)
    {
      goto LABEL_140;
    }

    v121 = v124;
    *v123 = v8;
    *(v123 + 1) = v126;
    v129 = *v124 - v120;
    if (*v124 < v120)
    {
      goto LABEL_141;
    }

    v120 = *v124 - 1;
    memmove(v125, v125 + 16, 16 * v129);
    *v124 = v120;
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_232BC10F4(char *a1, char *a2, char *a3, char *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v10 = (a2 - a1) / 16;
  v11 = (a3 - a2) / 16;
  if (v10 < v11)
  {
    v12 = sub_232BA61D4();
    sub_232B377A4(v12, v13, v6);
    v14 = &v6[16 * v10];
    while (1)
    {
      if (v6 >= v14 || v8 >= v7)
      {
        v33 = v9;
        goto LABEL_38;
      }

      if (!*(a5 + 16))
      {
        goto LABEL_16;
      }

      v16 = v14;
      v18 = *v6;
      v17 = *(v6 + 1);
      v19 = *v8;
      v20 = *(v8 + 1);

      v21 = sub_232BC1E18();
      v23 = sub_232B1F160(v21, v22);
      if ((v24 & 1) == 0)
      {
        break;
      }

      if (!*(a5 + 16))
      {
        break;
      }

      v25 = sub_232BC1E30(v23);
      v27 = sub_232B1F160(v25, v26);
      if ((v28 & 1) == 0)
      {
        break;
      }

      v29 = v8;
      v30 = *(*(a5 + 56) + 8 * v27);

      v34 = v54 < v30;
      v8 = v29;
      v14 = v16;
      if (v34)
      {
        goto LABEL_16;
      }

      v31 = v6;
      v32 = v9 == v6;
      v6 += 16;
      if (!v32)
      {
        goto LABEL_17;
      }

LABEL_18:
      v9 += 16;
    }

    v14 = v16;
LABEL_16:
    v31 = v8;
    v32 = v9 == v8;
    v8 += 16;
    if (v32)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v9 = *v31;
    goto LABEL_18;
  }

  sub_232B377A4(a2, (a3 - a2) / 16, a4);
  v14 = &v6[16 * v11];
  v53 = v9;
LABEL_20:
  v33 = v8;
  v7 -= 16;
  v52 = v8 - 16;
  while (1)
  {
    v34 = v14 > v6 && v33 > v9;
    if (!v34)
    {
      break;
    }

    if (!*(a5 + 16))
    {
      goto LABEL_35;
    }

    v55 = v7;
    v35 = v6;
    v36 = v14 - 16;
    v37 = v14;
    v38 = *(v14 - 1);
    v39 = *(v33 - 2);
    v40 = *(v33 - 1);
    v41 = v33;
    v42 = *(v14 - 2);

    v43 = sub_232B1F160(v42, v38);
    if ((v44 & 1) == 0 || !*(a5 + 16) || (v45 = *(*(a5 + 56) + 8 * v43), v46 = sub_232B1F160(v39, v40), (v47 & 1) == 0))
    {

      v6 = v35;
      v9 = v53;
      v7 = v55;
      v14 = v37;
      v33 = v41;
LABEL_35:
      v8 = v52;
      if (v7 + 16 != v33)
      {
        *v7 = *v52;
      }

      goto LABEL_20;
    }

    v48 = *(*(a5 + 56) + 8 * v46);

    v34 = v45 < v48;
    v6 = v35;
    v9 = v53;
    v7 = v55;
    v14 = v37;
    v33 = v41;
    if (v34)
    {
      goto LABEL_35;
    }

    if (v37 != v55 + 16)
    {
      *v55 = *v36;
    }

    v7 = v55 - 16;
    v14 = v36;
  }

LABEL_38:
  v49 = (v14 - v6) / 16;
  if (v33 != v6 || v33 >= &v6[16 * v49])
  {
    memmove(v33, v6, 16 * v49);
  }

  return 1;
}

char *sub_232BC13CC(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_232BC13F8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_232B124A8(&qword_27DDC6B50, &qword_232CF6ED8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

id sub_232BC14F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v14 = sub_232CE9D20();
  v15 = [a8 enumerateTokensForString:v14 language:a3 inRange:a4 error:a5 usingBlock:{a6, a7}];

  return v15;
}

void sub_232BC1580(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_232CE9D20();

  [a3 setString_];
}

uint64_t sub_232BC15E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_232BA4DEC(0, &qword_2814DF8C0, 0x277CCABB0);
  v9 = sub_232CE9FD0();

  v10 = [a5 lstmPredictions:v9 embeddingDimension:a2 classSize:a3 seqLen:a4];

  if (!v10)
  {
    return 0;
  }

  v11 = sub_232CE9FE0();

  return v11;
}

uint64_t sub_232BC16F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_232BC1708()
{
  sub_232B26C7C();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_232BC17B8;

  return sub_232BBD3B8(v3, v4, v5, v6);
}

uint64_t sub_232BC17B8()
{
  sub_232B26C44();
  sub_232B26C70();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_232B482C0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_232BC18A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC68A8, &qword_232CFA960);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_232BC1928()
{
  result = qword_2814DF958;
  if (!qword_2814DF958)
  {
    type metadata accessor for CFString();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814DF958);
  }

  return result;
}

uint64_t sub_232BC1980(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FoundInEventDataDetectorsOutput();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232BC19E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_232BA5190(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_232BC1A38(int a1, int a2, int a3)
{
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  v7 = *(v3 + 48);
  sub_232BBB064(a1, a2, a3, *(v3 + 16));
}

uint64_t sub_232BC1A90()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_232BC1AB8()
{
  result = qword_27DDC7690;
  if (!qword_27DDC7690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7690);
  }

  return result;
}

unint64_t sub_232BC1B0C()
{
  result = qword_27DDC7698;
  if (!qword_27DDC7698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7698);
  }

  return result;
}

uint64_t sub_232BC1B74()
{

  return swift_once();
}

void sub_232BC1BC8(uint64_t a1@<X8>)
{
  v1[12] = sub_232BBABC4;
  v1[13] = a1;
  v1[14] = v2;
}

uint64_t sub_232BC1BE0(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t sub_232BC1C00()
{
  *(v0 + 56) = v1;
  *(v0 + 24) = sub_232BBA490;

  return swift_continuation_init();
}

uint64_t sub_232BC1C58()
{

  return swift_beginAccess();
}

uint64_t sub_232BC1C74()
{

  return sub_232BC19E4(v0, type metadata accessor for FoundInEventDataDetectorsOutput);
}

void sub_232BC1C9C(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
}

uint64_t sub_232BC1CF0()
{
  v2 = v0[63];
  v4 = v0[59];
  v3 = v0[60];
  v5 = v0[56];
  v6 = v0[54];
}

uint64_t sub_232BC1D2C()
{

  return sub_232CE9D20();
}

unint64_t sub_232BC1D48()
{

  return sub_232B4A95C();
}

void sub_232BC1D60()
{
  v4 = *(v0 + v2);
  *(v0 + v2) = v1;
}

uint64_t sub_232BC1DC4()
{
}

BOOL sub_232BC1E54(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

id sub_232BC1E6C()
{

  return [v1 (v0 + 376)];
}

void sub_232BC1E84()
{

  JUMPOUT(0x238391C30);
}

void sub_232BC1EE4()
{
  v1 = v0[81];
  v2 = v0[78];
  v3 = v0[77];
  v4 = v0[75];
}

uint64_t sub_232BC1F20()
{

  return MEMORY[0x2821FBDC8](0, v2 - 104, v1, v0);
}

id sub_232BC1F40(uint64_t a1, const char *a2)
{

  return [v4 a2];
}

uint64_t sub_232BC1F60()
{

  return sub_232CE9D20();
}

uint64_t sub_232BC1F80()
{

  return swift_slowAlloc();
}

uint64_t sub_232BC1F98()
{
}

unint64_t sub_232BC1FB0()
{

  return sub_232B4A95C();
}

unint64_t sub_232BC1FC8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_232B124A8(&qword_27DDC77B0, &qword_232CFAA28);
    v2 = sub_232CEA650();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (v9 << 10) | (16 * v10);
    v12 = (*(a1 + 48) + v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = (*(a1 + 56) + v11);
    v25 = *v15;
    v26 = v15[1];

    swift_dynamicCast();
    sub_232B20510(&v27, v29);
    sub_232B20510(v29, v30);
    sub_232B20510(v30, &v28);
    result = sub_232B1F160(v14, v13);
    v16 = result;
    if (v17)
    {
      v18 = (v2[6] + 16 * result);
      v19 = v18[1];
      *v18 = v14;
      v18[1] = v13;

      v20 = (v2[7] + 32 * v16);
      sub_232B2040C(v20);
      result = sub_232B20510(&v28, v20);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = (v2[6] + 16 * result);
      *v21 = v14;
      v21[1] = v13;
      result = sub_232B20510(&v28, (v2[7] + 32 * result));
      v22 = v2[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_20;
      }

      v2[2] = v24;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

void sub_232BC2214(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_232B124A8(&qword_27DDC77E0, &qword_232CFAA60);
    sub_232B13ED0();
    v1 = sub_232CEA650();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = *(a1 + 64);
  sub_232BCA124();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;
  v8 = v1 + 8;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    sub_232BCA4AC(__clz(__rbit64(v5)) | (v9 << 6));
    v12 = v11;

    sub_232B124A8(&qword_27DDC77E8, &qword_232CFAA68);
    swift_dynamicCast();
    v13 = v1[5];
    sub_232CE9D50();
    sub_232CEA820();
    sub_232CE9E40();
    v14 = sub_232CEA850();

    sub_232BCA36C();
    if (((v16 << (v14 & ~v15)) & ~v8[(v14 & ~v15) >> 6]) == 0)
    {
      sub_232BCA250();
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        if (v8[v17] != -1)
        {
          sub_232BCA23C();
          goto LABEL_18;
        }
      }

      goto LABEL_22;
    }

    sub_232BCA264();
LABEL_18:
    v5 &= v5 - 1;
    sub_232BCA498();
    *(v8 + v21) |= v22;
    *(v1[6] + 8 * v23) = v12;
    v24 = (v1[7] + 16 * v23);
    *v24 = v26;
    v24[1] = v27;
    sub_232BCA35C();
  }

  while (v5);
LABEL_5:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

void sub_232BC243C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, __int128 a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_232BCA4F0();
  a33 = v36;
  a34 = v37;
  sub_232BCA464(v38);
  if (v35)
  {
    sub_232B124A8(&qword_27DDC77B0, &qword_232CFAA28);
    sub_232B13ED0();
    v39 = sub_232CEA650();
  }

  else
  {
    v39 = MEMORY[0x277D84F98];
  }

  v40 = v34[8];
  sub_232BCA144();
  v43 = v42 & v41;
  v45 = (v44 + 63) >> 6;

  v46 = 0;
  while (v43)
  {
    v47 = v46;
LABEL_10:
    v48 = __clz(__rbit64(v43));
    v43 &= v43 - 1;
    v49 = v48 | (v47 << 6);
    v50 = (v34[6] + 16 * v49);
    v52 = *v50;
    v51 = v50[1];
    v63 = *(v34[7] + 8 * v49);

    swift_dynamicCast();
    sub_232B20510(&a13, &a17);
    sub_232B20510(&a17, &a20);
    sub_232B20510(&a20, &a16);
    v53 = sub_232B1F160(v52, v51);
    v54 = v53;
    if (v55)
    {
      v56 = (v39[6] + 16 * v53);
      v57 = v56[1];
      *v56 = v52;
      v56[1] = v51;

      v58 = (v39[7] + 32 * v54);
      sub_232B2040C(v58);
      sub_232B20510(&a16, v58);
      v46 = v47;
    }

    else
    {
      if (v39[2] >= v39[3])
      {
        goto LABEL_17;
      }

      *(v39 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v53;
      v59 = (v39[6] + 16 * v53);
      *v59 = v52;
      v59[1] = v51;
      sub_232B20510(&a16, (v39[7] + 32 * v53));
      v60 = v39[2];
      v61 = __OFADD__(v60, 1);
      v62 = v60 + 1;
      if (v61)
      {
        goto LABEL_18;
      }

      v39[2] = v62;
      v46 = v47;
    }
  }

  while (1)
  {
    v47 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    if (v47 >= v45)
    {

      sub_232BCA4D4();
      return;
    }

    v43 = v34[v47 + 8];
    ++v46;
    if (v43)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_232BC263C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, __int128 a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_232BCA4F0();
  a33 = v36;
  a34 = v37;
  sub_232BCA464(v38);
  if (v35)
  {
    sub_232B124A8(&qword_27DDC77B0, &qword_232CFAA28);
    sub_232B13ED0();
    v39 = sub_232CEA650();
  }

  else
  {
    v39 = MEMORY[0x277D84F98];
  }

  v40 = v34[8];
  sub_232BCA144();
  v43 = v42 & v41;
  v45 = (v44 + 63) >> 6;

  v46 = 0;
  while (v43)
  {
    v47 = v46;
LABEL_10:
    v48 = __clz(__rbit64(v43));
    v43 &= v43 - 1;
    v49 = v48 | (v47 << 6);
    v50 = (v34[6] + 16 * v49);
    v52 = *v50;
    v51 = v50[1];
    v64 = *(v34[7] + 8 * v49);

    sub_232B124A8(&qword_27DDC6700, &qword_232CF5D48);
    swift_dynamicCast();
    sub_232B20510(&a13, &a17);
    sub_232B20510(&a17, &a20);
    sub_232B20510(&a20, &a16);
    v53 = sub_232B1F160(v52, v51);
    v54 = v53;
    if (v55)
    {
      v56 = (v39[6] + 16 * v53);
      v57 = v56[1];
      *v56 = v52;
      v56[1] = v51;

      v58 = (v39[7] + 32 * v54);
      sub_232B2040C(v58);
      sub_232B20510(&a16, v58);
      v46 = v47;
    }

    else
    {
      if (v39[2] >= v39[3])
      {
        goto LABEL_17;
      }

      sub_232BCA4C0((v53 >> 3) & 0x1FFFFFFFFFFFFFF8);
      v60 = (v59 + 16 * v54);
      *v60 = v52;
      v60[1] = v51;
      sub_232B20510(&a16, (v39[7] + 32 * v54));
      v61 = v39[2];
      v62 = __OFADD__(v61, 1);
      v63 = v61 + 1;
      if (v62)
      {
        goto LABEL_18;
      }

      v39[2] = v63;
      v46 = v47;
    }
  }

  while (1)
  {
    v47 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    if (v47 >= v45)
    {

      sub_232BCA4D4();
      return;
    }

    v43 = v34[v47 + 8];
    ++v46;
    if (v43)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_232BC2848(uint64_t a1)
{
  sub_232BCA464(a1);
  if (v2)
  {
    sub_232B124A8(&qword_27DDC77C8, &unk_232CFAA40);
    sub_232B13ED0();
    v3 = sub_232CEA650();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v4 = v1[8];
  sub_232BCA124();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  v10 = v3 + 8;

  v11 = 0;
  if (!v7)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    v13 = (v11 << 10) | (16 * __clz(__rbit64(v7)));
    v14 = (v1[6] + v13);
    v15 = v14[1];
    v16 = (v1[7] + v13);
    v18 = *v16;
    v17 = v16[1];
    *&v39[0] = *v14;
    *(&v39[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v35 = v31;
    v36 = v32;
    v37 = v33;
    sub_232B20510(&v34, v38);
    v31 = v35;
    v32 = v36;
    v33 = v37;
    sub_232B20510(v38, v39);
    v19 = v3[5];
    sub_232CEA470();
    sub_232BCA36C();
    if (((v22 << (v20 & ~v21)) & ~v10[(v20 & ~v21) >> 6]) == 0)
    {
      sub_232BCA250();
      while (++v23 != v25 || (v24 & 1) == 0)
      {
        v26 = v23 == v25;
        if (v23 == v25)
        {
          v23 = 0;
        }

        v24 |= v26;
        if (v10[v23] != -1)
        {
          sub_232BCA23C();
          goto LABEL_18;
        }
      }

      goto LABEL_22;
    }

    sub_232BCA264();
LABEL_18:
    v7 &= v7 - 1;
    sub_232BCA498();
    *(v10 + v27) |= v28;
    v30 = v3[6] + 40 * v29;
    *v30 = v31;
    *(v30 + 16) = v32;
    *(v30 + 32) = v33;
    sub_232B20510(v39, (v3[7] + 32 * v29));
    sub_232BCA35C();
  }

  while (v7);
LABEL_5:
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return;
    }

    v7 = v1[v12 + 8];
    ++v11;
    if (v7)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

void sub_232BC2AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  sub_232BCA4F0();
  a35 = v36;
  a36 = v37;
  v61 = v38;
  v39 = *(v38 + 16);
  if (v39)
  {
    sub_232B124A8(&qword_27DDC77C0, &qword_232CFAA38);
    sub_232B13ED0();
    v40 = sub_232CEA650();
  }

  else
  {
    v40 = MEMORY[0x277D84F98];
  }

  v41 = *(v61 + 64);
  sub_232BCA124();
  v44 = v43 & v42;
  v46 = (v45 + 63) >> 6;
  v47 = v40 + 8;

  v48 = 0;
  if (!v44)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    sub_232BCA4AC(__clz(__rbit64(v44)) | (v48 << 6));
    a19 = v50;
    a20 = v39;
    v52 = v51;

    swift_dynamicCast();
    sub_232B20510((&a21 + 8), &a12);
    sub_232B20510(&a12, &a21);
    v53 = v40[5];
    sub_232CE9D50();
    sub_232CEA820();
    sub_232CE9E40();
    v39 = sub_232CEA850();

    sub_232BCA36C();
    if (((v55 << (v39 & ~v54)) & ~v47[(v39 & ~v54) >> 6]) == 0)
    {
      sub_232BCA250();
      while (++v57 != v59 || (v58 & 1) == 0)
      {
        v60 = v57 == v59;
        if (v57 == v59)
        {
          v57 = 0;
        }

        v58 |= v60;
        if (v47[v57] != -1)
        {
          sub_232BCA23C();
          goto LABEL_18;
        }
      }

      goto LABEL_22;
    }

    sub_232BCA264();
LABEL_18:
    *(v47 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v56;
    v44 &= v44 - 1;
    *(v40[6] + 8 * v56) = v52;
    sub_232B20510(&a21, (v40[7] + 32 * v56));
    sub_232BCA35C();
  }

  while (v44);
LABEL_5:
  while (1)
  {
    v49 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      break;
    }

    if (v49 >= v46)
    {

      sub_232BCA4D4();
      return;
    }

    v44 = *(v61 + 64 + 8 * v49);
    ++v48;
    if (v44)
    {
      v48 = v49;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

id DUFoundInEventResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_232BC2D04(uint64_t a1)
{
  sub_232BCA464(a1);
  if (v2)
  {
    sub_232B124A8(&qword_27DDC77B0, &qword_232CFAA28);
    sub_232B13ED0();
    v3 = sub_232CEA650();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v4 = v1[8];
  sub_232BCA144();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;

  v11 = 0;
  while (1)
  {
    if (!v7)
    {
      while (1)
      {
        v12 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v12 >= v9)
        {

          return v3;
        }

        v7 = v1[v12 + 8];
        ++v11;
        if (v7)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    v12 = v11;
LABEL_10:
    v13 = __clz(__rbit64(v7)) | (v12 << 6);
    sub_232B1FA04(v1[6] + 40 * v13, __src);
    sub_232B204B4(v1[7] + 32 * v13, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_232B1FA04(__dst, v25);
    if (!swift_dynamicCast())
    {
      break;
    }

    v7 &= v7 - 1;
    sub_232B204B4(&__dst[40], v26);
    sub_232B13790(__dst, &qword_27DDC77B8, &qword_232CFAA30);
    v27 = v24;
    sub_232B20510(v26, v28);
    v14 = v27;
    sub_232B20510(v28, v29);
    sub_232B20510(v29, &v27);
    result = sub_232B1F160(v14, *(&v14 + 1));
    v15 = result;
    if (v16)
    {
      v17 = v3[6] + 16 * result;
      v18 = *(v17 + 8);
      *v17 = v14;

      v19 = (v3[7] + 32 * v15);
      sub_232B2040C(v19);
      result = sub_232B20510(&v27, v19);
      v11 = v12;
    }

    else
    {
      if (v3[2] >= v3[3])
      {
        goto LABEL_20;
      }

      sub_232BCA4C0((result >> 3) & 0x1FFFFFFFFFFFFFF8);
      *(v20 + 16 * v15) = v14;
      result = sub_232B20510(&v27, (v3[7] + 32 * v15));
      v21 = v3[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_21;
      }

      v3[2] = v23;
      v11 = v12;
    }
  }

  sub_232B13790(__dst, &qword_27DDC77B8, &qword_232CFAA30);

  return 0;
}

unint64_t sub_232BC2F8C(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    sub_232B124A8(&qword_27DDC77D0, &unk_232CFAA50);
    v2 = sub_232CEA650();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v23 = v1;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_11:
      v11 = __clz(__rbit64(v6)) | (v10 << 6);
      sub_232B1FA04(*(v1 + 48) + 40 * v11, __src);
      sub_232B204B4(*(v1 + 56) + 32 * v11, &__src[40]);
      memcpy(__dst, __src, sizeof(__dst));
      sub_232B1FA04(__dst, v26);
      if (!swift_dynamicCast())
      {
        sub_232B13790(__dst, &qword_27DDC77B8, &qword_232CFAA30);

        goto LABEL_23;
      }

      sub_232B204B4(&__dst[40], v26);
      sub_232B13790(__dst, &qword_27DDC77B8, &qword_232CFAA30);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v6 &= v6 - 1;
      result = sub_232B1F160(v24, v25);
      v12 = result;
      if (v13)
      {
        v14 = (v2[6] + 16 * result);
        v15 = v14[1];
        *v14 = v24;
        v14[1] = v25;

        v16 = (v2[7] + 16 * v12);
        v17 = v16[1];
        *v16 = v24;
        v16[1] = v25;
      }

      else
      {
        if (v2[2] >= v2[3])
        {
          goto LABEL_26;
        }

        *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        v18 = (v2[6] + 16 * result);
        *v18 = v24;
        v18[1] = v25;
        v19 = (v2[7] + 16 * result);
        *v19 = v24;
        v19[1] = v25;
        v20 = v2[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_27;
        }

        v2[2] = v22;
      }

      v9 = v10;
      v1 = v23;
      if (!v6)
      {
        goto LABEL_8;
      }
    }

LABEL_23:

    return 0;
  }

  else
  {
LABEL_8:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {

        return v2;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

id static DUFoundInEventResult.getErrorForField(field:errorCode:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for DUFoundInEventResult();
  v6 = sub_232BC526C(a1, a2, a3);
  v7 = sub_232BC1FC8(v6);

  v8 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  return sub_232BC8980(0xD000000000000031, 0x8000000232D06F70, a3, v7);
}

uint64_t sub_232BC3310()
{
  result = sub_232CE9C60();
  qword_27DDC76A8 = result;
  return result;
}

uint64_t sub_232BC3378()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_detectedEventPolarity;
  sub_232B26BFC();
  return *(v0 + v1);
}

uint64_t sub_232BC33D4(char a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_detectedEventPolarity;
  result = sub_232B26C50();
  *(v1 + v3) = a1;
  return result;
}

void *sub_232BC3494()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationIdError;
  sub_232B26BFC();
  v2 = *&v1[v0];
  v3 = v2;
  return v2;
}

void sub_232BC356C(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_232BC352C();
}

void *sub_232BC36B0()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationNameError;
  sub_232B26BFC();
  v2 = *&v1[v0];
  v3 = v2;
  return v2;
}

void sub_232BC3788(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_232BC3748();
}

id sub_232BC381C(void *a1, uint64_t a2, void (*a3)(void))
{
  a3();
  if (v4)
  {
    sub_232CE9D20();
    sub_232B26CE8();
  }

  else
  {
    a1 = 0;
  }

  return a1;
}

void sub_232BC3898(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    sub_232CE9D50();
    sub_232BA5EAC();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v8 = a1;
  a4(v4, v5);
}

uint64_t sub_232BC3928(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

void *sub_232BC39F0()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_hotelNameError;
  sub_232B26BFC();
  v2 = *&v1[v0];
  v3 = v2;
  return v2;
}

void sub_232BC3AC8(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_232BC3A88();
}

void *sub_232BC3C0C()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_guestNameError;
  sub_232B26BFC();
  v2 = *&v1[v0];
  v3 = v2;
  return v2;
}

void sub_232BC3CE4(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_232BC3CA4();
}

void *sub_232BC3E28()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_movieNameError;
  sub_232B26BFC();
  v2 = *&v1[v0];
  v3 = v2;
  return v2;
}

void sub_232BC3F00(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_232BC3EC0();
}

void *sub_232BC4044()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddressError;
  sub_232B26BFC();
  v2 = *&v1[v0];
  v3 = v2;
  return v2;
}

void sub_232BC411C(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_232BC40DC();
}

uint64_t sub_232BC4274(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_232BC4268(v4);
}

void *sub_232BC4320()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddressError;
  sub_232B26BFC();
  v2 = *&v1[v0];
  v3 = v2;
  return v2;
}

void sub_232BC43F8(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_232BC43B8();
}

id sub_232BC4520(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (a3())
  {
    sub_232CE9C20();
    sub_232B26CE8();
  }

  else
  {
    a1 = 0;
  }

  return a1;
}

void sub_232BC45B0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (a3)
  {
    v6 = sub_232CE9C40();
  }

  else
  {
    v6 = 0;
  }

  v7 = a1;
  a4(v6);
}

uint64_t sub_232BC464C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_232BC4640(v4);
}

void *sub_232BC46F8()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startPlaceError;
  sub_232B26BFC();
  v2 = *&v1[v0];
  v3 = v2;
  return v2;
}

void sub_232BC47D0(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_232BC4790();
}

void *sub_232BC4914()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endPlaceError;
  sub_232B26BFC();
  v2 = *&v1[v0];
  v3 = v2;
  return v2;
}

void sub_232BC49EC(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_232BC49AC();
}

void *sub_232BC4B30()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startDateError;
  sub_232B26BFC();
  v2 = *&v1[v0];
  v3 = v2;
  return v2;
}

void sub_232BC4C08(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_232BC4BC8();
}

void *sub_232BC4D4C()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endDateError;
  sub_232B26BFC();
  v2 = *&v1[v0];
  v3 = v2;
  return v2;
}

void sub_232BC4E24(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_232BC4DE4();
}

uint64_t sub_232BC4FC8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_232BC5034(v4);
}

uint64_t sub_232BC5000(uint64_t *a1)
{
  v2 = *a1;
  sub_232B26BFC();
  v3 = *(v1 + v2);
}

uint64_t sub_232BC5040(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  sub_232B26C50();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

id DUFoundInEventResult.init()()
{
  *(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationIdError + v0) = 0;
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationId);
  *(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationNameError + v0) = 0;
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationName);
  *(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_hotelNameError + v0) = 0;
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_hotelName);
  *(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_guestNameError + v0) = 0;
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_guestName);
  *(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_movieNameError + v0) = 0;
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_movieName);
  *(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddressError + v0) = 0;
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddress);
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddressComponents] = 0;
  *(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddressError + v0) = 0;
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddress);
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddressComponents] = 0;
  *(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startPlaceError + v0) = 0;
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startPlace);
  *(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endPlaceError + v0) = 0;
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endPlace);
  *(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startDateError + v0) = 0;
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startDate);
  *(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endDateError + v0) = 0;
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endDate);
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_text);
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_tags] = 0;
  v0[OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_detectedEventPolarity] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUFoundInEventResult();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_232BC526C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_232B124A8(&qword_27DDC77D8, &unk_232CFD930);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_232CF6460;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  v7 = qword_27DDC6398;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = sub_232B1E08C(a3, qword_27DDC76A8);
  v10 = 0x8000000232D07380;
  v11 = 0xD00000000000001CLL;
  if (v9)
  {
    v11 = v8;
    v10 = v9;
  }

  *(inited + 48) = v11;
  *(inited + 56) = v10;
  return sub_232CE9C60();
}

void sub_232BC5434()
{
  sub_232B35110();
  v2 = v1;
  v3 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  v8 = v7 - v6;
  v101 = v2;
  sub_232BCA034(v2, v7 - v6);
  v9 = [objc_allocWithZone(v0) init];
  v102 = v8;
  v10 = *(v8 + *(v4 + 28));
  sub_232B13F74();
  LOBYTE(v8) = *(v10 + 16);
  v11 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_detectedEventPolarity;
  sub_232B13F5C();
  v9[v11] = v8;
  sub_232B13F74();
  if (*(v10 + 33))
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v10 + 24);
  }

  v13 = v9;
  sub_232BCA470();
  v15 = sub_232BC526C(0x7461767265736572, v14, v12);
  v16 = sub_232BC1FC8(v15);

  v17 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  sub_232BC8980(0xD000000000000031, 0x8000000232D06F70, v12, v16);
  v18 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationIdError;
  sub_232B13F5C();
  sub_232BCA2E4();
  sub_232B13F74();
  v19 = *(v10 + 48);
  if (v19)
  {
    v18 = *(v10 + 40);
    v2 = *(v10 + 48);
  }

  else
  {
    sub_232BCA224();
  }

  v20 = &v13[OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationId];
  sub_232B2D0EC();
  v21 = *(v20 + 1);
  *v20 = v18;
  *(v20 + 1) = v2;

  sub_232B13F74();
  v22 = *(v10 + 56);
  v23 = *(v10 + 65);
  sub_232BCA1A0();
  sub_232BCA484();
  v25 = sub_232BC526C(0x7461767265736572, v24, v19);
  sub_232BC1FC8(v25);
  sub_232BCA32C();
  v26 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  sub_232BCA098();
  sub_232B13F5C();
  sub_232BCA2E4();
  sub_232B13F74();
  if (*(v10 + 80))
  {
    v27 = *(v10 + 72);
    v28 = *(v10 + 80);
  }

  else
  {
    sub_232BCA224();
  }

  sub_232BC1C58();
  sub_232BCA1D4();

  sub_232B13F74();
  v29 = *(v10 + 296);
  v30 = *(v10 + 305);
  sub_232BCA1A0();
  v31 = sub_232BCA174(0x4E6C65746F68);
  sub_232BC1FC8(v31);
  sub_232BCA32C();
  v32 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  sub_232BCA098();
  sub_232B13F5C();
  sub_232BCA2E4();
  sub_232B13F74();
  if (*(v10 + 320))
  {
    v33 = *(v10 + 312);
    v34 = *(v10 + 320);
  }

  else
  {
    sub_232BCA224();
  }

  sub_232BC1C58();
  sub_232BCA1D4();

  sub_232B13F74();
  v35 = *(v10 + 328);
  v36 = *(v10 + 337);
  sub_232BCA1A0();
  v37 = sub_232BCA174(0x4E7473657567);
  sub_232BC1FC8(v37);
  sub_232BCA32C();
  v38 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  sub_232BCA098();
  sub_232B13F5C();
  sub_232BCA2E4();
  sub_232B13F74();
  if (*(v10 + 352))
  {
    v39 = *(v10 + 344);
    v40 = *(v10 + 352);
  }

  else
  {
    sub_232BCA224();
  }

  sub_232BC1C58();
  sub_232BCA1D4();

  sub_232B13F74();
  v41 = *(v10 + 360);
  v42 = *(v10 + 369);
  sub_232BCA1A0();
  v43 = sub_232BCA174(0x4E6569766F6DLL);
  sub_232BC1FC8(v43);
  sub_232BCA32C();
  v44 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  sub_232BCA098();
  sub_232B13F5C();
  sub_232BCA2E4();
  sub_232B13F74();
  if (*(v10 + 384))
  {
    v45 = *(v10 + 376);
    v46 = *(v10 + 384);
  }

  else
  {
    sub_232BCA224();
  }

  sub_232BC1C58();
  sub_232BCA1D4();

  sub_232B13F74();
  v47 = *(v10 + 88);
  v48 = *(v10 + 97);
  v49 = sub_232BCA0F0();
  v50 = sub_232BCA37C(v49);
  sub_232BC1FC8(v50);
  sub_232BCA32C();
  v51 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  sub_232BCA098();
  sub_232B13F5C();
  sub_232BCA2E4();
  sub_232B13F74();
  if (*(v10 + 112))
  {
    v52 = *(v10 + 104);
    v53 = *(v10 + 112);
  }

  else
  {
    sub_232BCA224();
  }

  sub_232BC1C58();
  sub_232BCA1D4();

  sub_232B13F74();
  v54 = *(v10 + 120);
  v55 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddressComponents;
  sub_232B13F5C();
  v56 = *&v13[v55];
  *&v13[v55] = v54;

  sub_232B13F74();
  v57 = *(v10 + 128);
  v58 = *(v10 + 137);
  v59 = sub_232BCA164();
  v60 = sub_232BC526C(v59 | 0x6572646441640000, 0xEA00000000007373, v54);
  sub_232BC1FC8(v60);
  sub_232BCA32C();
  v61 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  sub_232BCA098();
  sub_232B13F5C();
  sub_232BCA2E4();
  sub_232B13F74();
  if (*(v10 + 152))
  {
    v62 = *(v10 + 144);
    v63 = *(v10 + 152);
  }

  else
  {
    sub_232BCA224();
  }

  sub_232BC1C58();
  sub_232BCA1D4();

  sub_232B13F74();
  v64 = *(v10 + 160);
  v65 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddressComponents;
  sub_232B13F5C();
  v66 = *&v13[v65];
  *&v13[v65] = v64;

  sub_232B13F74();
  v67 = *(v10 + 168);
  v68 = *(v10 + 177);
  v69 = sub_232BCA0F0();
  v70 = sub_232BCA440(v69);
  sub_232BC1FC8(v70);
  sub_232BCA32C();
  v71 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  sub_232BCA098();
  sub_232B13F5C();
  sub_232BCA2E4();
  sub_232B13F74();
  if (*(v10 + 192))
  {
    v72 = *(v10 + 184);
    v73 = *(v10 + 192);
  }

  else
  {
    sub_232BCA224();
  }

  sub_232BC1C58();
  sub_232BCA1D4();

  sub_232B13F74();
  v74 = *(v10 + 200);
  v75 = *(v10 + 209);
  v76 = sub_232BCA164();
  v77 = sub_232BCA41C(v76);
  sub_232BC1FC8(v77);
  sub_232BCA32C();
  v78 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  sub_232BCA098();
  sub_232B13F5C();
  sub_232BCA2E4();
  sub_232B13F74();
  if (*(v10 + 224))
  {
    v79 = *(v10 + 216);
    v80 = *(v10 + 224);
  }

  else
  {
    sub_232BCA224();
  }

  sub_232BC1C58();
  sub_232BCA1D4();

  sub_232B13F74();
  v81 = *(v10 + 232);
  v82 = *(v10 + 241);
  v83 = sub_232BCA0F0();
  v84 = sub_232BCA3F8(v83);
  sub_232BC1FC8(v84);
  sub_232BCA32C();
  v85 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  sub_232BCA098();
  sub_232B13F5C();
  sub_232BCA2E4();
  sub_232B13F74();
  if (*(v10 + 256))
  {
    v86 = *(v10 + 248);
    v87 = *(v10 + 256);
  }

  else
  {
    sub_232BCA224();
  }

  sub_232BC1C58();
  sub_232BCA1D4();

  sub_232B13F74();
  v88 = *(v10 + 264);
  v89 = *(v10 + 273);
  v90 = sub_232BCA164();
  v91 = sub_232BCA3D4(v90);
  sub_232BC1FC8(v91);
  sub_232BCA32C();
  v92 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  sub_232BCA098();
  sub_232BC8A30(v101);
  sub_232B13F5C();
  sub_232BCA2E4();
  sub_232B13F74();
  if (*(v10 + 288))
  {
    v93 = *(v10 + 280);
    v94 = *(v10 + 288);
  }

  else
  {
    v93 = 0;
    v94 = 0xE000000000000000;
  }

  v95 = &v13[OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endDate];
  sub_232B13F08();
  v96 = *(v95 + 1);
  *v95 = v93;
  *(v95 + 1) = v94;

  sub_232B13F74();
  if (*(v10 + 400))
  {
    v97 = *(v10 + 392);
    v98 = *(v10 + 400);
  }

  else
  {
    v97 = 0;
    v98 = 0xE000000000000000;
  }

  sub_232BC8A30(v102);
  v99 = &v13[OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_text];
  sub_232B13F5C();
  v100 = *(v99 + 1);
  *v99 = v97;
  *(v99 + 1) = v98;

  sub_232B20A00();
}

void DUFoundInEventResult.__allocating_init<A>(proto:)()
{
  sub_232B35110();
  v2 = v1;
  v4 = v3;
  v5 = sub_232B124A8(&qword_27DDC7788, &qword_232CFA9A0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v119 - v8;
  v10 = *(v2 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_232B20704();
  v14 = v13 - v12;
  v15 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult(0);
  v16 = sub_232B13F24(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_232B20704();
  v21 = v20 - v19;
  (*(v10 + 16))(v14, v4, v2);
  if (swift_dynamicCast())
  {
    v120 = v10;
    v121 = v4;
    v122 = v2;
    sub_232B12504(v9, 0, 1, v15);
    sub_232BC8B6C(v9, v21, type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult);
    v22 = [objc_allocWithZone(v0) init];
    v23 = *(v15 + 20);
    v123 = v21;
    v24 = *(v21 + v23);
    sub_232B13F74();
    v25 = *(v24 + 16);
    v26 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_detectedEventPolarity;
    sub_232B13F5C();
    v22[v26] = v25;
    sub_232B13F74();
    if (*(v24 + 33))
    {
      v27 = 0;
    }

    else
    {
      v27 = *(v24 + 24);
    }

    v28 = v22;
    sub_232BCA470();
    v30 = sub_232BC526C(0x7461767265736572, v29, v27);
    v31 = sub_232BC1FC8(v30);

    v32 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    sub_232BC8980(0xD000000000000031, 0x8000000232D06F70, v27, v31);
    sub_232B13F5C();
    sub_232BCA2CC();
    sub_232B13F74();
    v33 = *(v24 + 48);
    if (v33)
    {
      v34 = *(v24 + 40);
      v35 = *(v24 + 48);
    }

    else
    {
      v34 = 0;
      v35 = 0xE000000000000000;
    }

    v36 = &v28[OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationId];
    sub_232B13F5C();
    v37 = *(v36 + 1);
    *v36 = v34;
    *(v36 + 1) = v35;

    sub_232B13F74();
    v38 = *(v24 + 56);
    v39 = *(v24 + 65);
    sub_232BCA1A0();
    sub_232BCA484();
    v41 = sub_232BC526C(0x7461767265736572, v40, v33);
    sub_232BC1FC8(v41);
    sub_232BCA314();
    v42 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    sub_232BCA0C4();
    sub_232B13F5C();
    sub_232BCA2CC();
    sub_232B13F74();
    if (*(v24 + 80))
    {
      v43 = *(v24 + 72);
      v44 = *(v24 + 80);
    }

    else
    {
      sub_232BCA278();
    }

    sub_232B2D0EC();
    sub_232BCA1F0();

    sub_232B13F74();
    v45 = *(v24 + 296);
    v46 = *(v24 + 305);
    sub_232BCA1A0();
    v47 = sub_232BCA174(0x4E6C65746F68);
    sub_232BC1FC8(v47);
    sub_232BCA314();
    v48 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    sub_232BCA0C4();
    sub_232B13F5C();
    sub_232BCA2CC();
    sub_232B13F74();
    if (*(v24 + 320))
    {
      v49 = *(v24 + 312);
      v50 = *(v24 + 320);
    }

    else
    {
      sub_232BCA278();
    }

    sub_232B2D0EC();
    sub_232BCA1F0();

    sub_232B13F74();
    v51 = *(v24 + 328);
    v52 = *(v24 + 337);
    sub_232BCA1A0();
    v53 = sub_232BCA174(0x4E7473657567);
    sub_232BC1FC8(v53);
    sub_232BCA314();
    v54 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    sub_232BCA0C4();
    sub_232B13F5C();
    sub_232BCA2CC();
    sub_232B13F74();
    if (*(v24 + 352))
    {
      v55 = *(v24 + 344);
      v56 = *(v24 + 352);
    }

    else
    {
      sub_232BCA278();
    }

    sub_232B2D0EC();
    sub_232BCA1F0();

    sub_232B13F74();
    v57 = *(v24 + 360);
    v58 = *(v24 + 369);
    sub_232BCA1A0();
    v59 = sub_232BCA174(0x4E6569766F6DLL);
    sub_232BC1FC8(v59);
    sub_232BCA314();
    v60 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    sub_232BCA0C4();
    sub_232B13F5C();
    sub_232BCA2CC();
    sub_232B13F74();
    if (*(v24 + 384))
    {
      v61 = *(v24 + 376);
      v62 = *(v24 + 384);
    }

    else
    {
      sub_232BCA278();
    }

    sub_232B2D0EC();
    sub_232BCA1F0();

    sub_232B13F74();
    v63 = *(v24 + 88);
    v64 = *(v24 + 97);
    v65 = sub_232BCA0F0();
    v66 = sub_232BCA37C(v65);
    sub_232BC1FC8(v66);
    sub_232BCA314();
    v67 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    sub_232BCA0C4();
    sub_232B13F5C();
    sub_232BCA2CC();
    sub_232B13F74();
    if (*(v24 + 112))
    {
      v68 = *(v24 + 104);
      v69 = *(v24 + 112);
    }

    else
    {
      v68 = 0;
      v69 = 0xE000000000000000;
    }

    v70 = &v28[OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddress];
    sub_232B2D0EC();
    v71 = *(v70 + 1);
    *v70 = v68;
    *(v70 + 1) = v69;

    sub_232B13F74();
    v72 = *(v24 + 120);
    v73 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddressComponents;
    sub_232B13F5C();
    v74 = *&v28[v73];
    *&v28[v73] = v72;

    sub_232B13F74();
    v75 = *(v24 + 128);
    v76 = *(v24 + 137);
    v77 = sub_232BCA164();
    v78 = sub_232BC526C(v77 | 0x6572646441640000, 0xEA00000000007373, v72);
    sub_232BC1FC8(v78);
    sub_232BCA314();
    v79 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    sub_232BCA0C4();
    sub_232B13F5C();
    sub_232BCA2CC();
    sub_232B13F74();
    if (*(v24 + 152))
    {
      v80 = *(v24 + 144);
      v81 = *(v24 + 152);
    }

    else
    {
      sub_232BCA278();
    }

    sub_232B2D0EC();
    sub_232BCA1F0();

    sub_232B13F74();
    v82 = *(v24 + 160);
    v83 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddressComponents;
    sub_232B13F5C();
    v84 = *&v28[v83];
    *&v28[v83] = v82;

    sub_232B13F74();
    v85 = *(v24 + 168);
    v86 = *(v24 + 177);
    v87 = sub_232BCA0F0();
    v88 = sub_232BCA440(v87);
    sub_232BC1FC8(v88);
    sub_232BCA314();
    v89 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    sub_232BCA0C4();
    sub_232B13F5C();
    sub_232BCA2CC();
    sub_232B13F74();
    if (*(v24 + 192))
    {
      v90 = *(v24 + 184);
      v91 = *(v24 + 192);
    }

    else
    {
      sub_232BCA278();
    }

    sub_232B2D0EC();
    sub_232BCA1F0();

    sub_232B13F74();
    v92 = *(v24 + 200);
    v93 = *(v24 + 209);
    v94 = sub_232BCA164();
    v95 = sub_232BCA41C(v94);
    sub_232BC1FC8(v95);
    sub_232BCA314();
    v96 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    sub_232BCA0C4();
    sub_232B13F5C();
    sub_232BCA2CC();
    sub_232B13F74();
    if (*(v24 + 224))
    {
      v97 = *(v24 + 216);
      v98 = *(v24 + 224);
    }

    else
    {
      sub_232BCA278();
    }

    sub_232B2D0EC();
    sub_232BCA1F0();

    sub_232B13F74();
    v99 = *(v24 + 232);
    v100 = *(v24 + 241);
    v101 = sub_232BCA0F0();
    v102 = sub_232BCA3F8(v101);
    sub_232BC1FC8(v102);
    sub_232BCA314();
    v103 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    sub_232BCA0C4();
    sub_232B13F5C();
    sub_232BCA2CC();
    sub_232B13F74();
    if (*(v24 + 256))
    {
      v104 = *(v24 + 248);
      v105 = *(v24 + 256);
    }

    else
    {
      sub_232BCA278();
    }

    sub_232B2D0EC();
    sub_232BCA1F0();

    sub_232B13F74();
    v106 = *(v24 + 264);
    v107 = *(v24 + 273);
    v108 = sub_232BCA164();
    v109 = sub_232BCA3D4(v108);
    sub_232BC1FC8(v109);
    sub_232BCA314();
    v110 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    sub_232BCA0C4();
    (*(v120 + 8))(v121, v122);
    sub_232B13F5C();
    sub_232BCA2CC();
    sub_232B13F74();
    if (*(v24 + 288))
    {
      v111 = *(v24 + 280);
      v112 = *(v24 + 288);
    }

    else
    {
      v111 = 0;
      v112 = 0xE000000000000000;
    }

    v113 = &v28[OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endDate];
    sub_232B13F5C();
    v114 = *(v113 + 1);
    *v113 = v111;
    *(v113 + 1) = v112;

    sub_232B13F74();
    if (*(v24 + 400))
    {
      v115 = *(v24 + 392);
      v116 = *(v24 + 400);
    }

    else
    {
      v115 = 0;
      v116 = 0xE000000000000000;
    }

    sub_232BC8A30(v123);
    v117 = &v28[OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_text];
    sub_232B13F5C();
    v118 = *(v117 + 1);
    *v117 = v115;
    *(v117 + 1) = v116;
  }

  else
  {
    (*(v10 + 8))(v4, v2);
    sub_232B12504(v9, 1, 1, v15);
    sub_232B13790(v9, &qword_27DDC7788, &qword_232CFA9A0);
  }

  sub_232B20A00();
}

void sub_232BC6784()
{
  sub_232B35110();
  v2 = v0;
  v4 = v3;
  v5 = type metadata accessor for DocumentUnderstanding_ClientInterface_TaggedCharacterRange(0);
  v196 = *(v5 - 8);
  v6 = *(v196 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_232B20704();
  v9 = v8 - v7;
  sub_232CE9330();
  v10 = *(type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult(0) + 20);
  if (qword_27DDC63F0 != -1)
  {
    goto LABEL_134;
  }

  while (1)
  {
    *(v4 + v10) = qword_27DDC7ED0;
    v11 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_detectedEventPolarity;
    sub_232B13F74();
    v12 = *(v2 + v11);

    v13 = *(v4 + v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v4 + v10);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult._StorageClass();
      sub_232BCA284();
      v16 = sub_232B13ED0();
      v17 = sub_232C25F58(v16);
      sub_232BCA1C8(v17);
    }

    sub_232B13F5C();
    *(v15 + 16) = v12;
    v18 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationIdError;
    sub_232B13F74();
    v19 = *(v18 + v2);
    if (v19)
    {
      v20 = v19;
      [v20 code];
      sub_232C246AC();
      if (sub_232BCA104())
      {

        v18 = *(v4 + v10);
      }

      else
      {
        sub_232BCA2FC();
        sub_232BCA284();
        sub_232BCA194();

        sub_232C25F58(v21);
        sub_232BCA194();

        *(v4 + v10) = v18;
      }

      LOBYTE(v1) = v1 & 1;
      sub_232B13F5C();
      v18[3] = v12;
      *(v18 + 32) = v1;
      *(v18 + 33) = 0;
    }

    v22 = v2 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationId;
    sub_232BCA1AC();
    v23 = *(v22 + 8);
    if (v23)
    {
      sub_232BCA29C();
      v24 = *(v4 + v10);
      v25 = swift_isUniquelyReferenced_nonNull_native();
      v26 = *(v4 + v10);
      if ((v25 & 1) == 0)
      {
        type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult._StorageClass();
        sub_232BCA284();
        v27 = sub_232B13ED0();
        v28 = sub_232C25F58(v27);
        sub_232BCA1C8(v28);
      }

      sub_232B13F5C();
      v29 = *(v26 + 48);
      *(v26 + 40) = v12;
      *(v26 + 48) = v23;
    }

    v30 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationNameError;
    sub_232B13F74();
    v31 = *(v30 + v2);
    if (v31)
    {
      v32 = v31;
      [v32 code];
      sub_232C246AC();
      if (sub_232BCA104())
      {

        v30 = *(v4 + v10);
      }

      else
      {
        sub_232BCA2FC();
        sub_232BCA284();
        sub_232BCA194();

        sub_232C25F58(v33);
        sub_232BCA194();

        *(v4 + v10) = v30;
      }

      LOBYTE(v1) = v1 & 1;
      sub_232B13F5C();
      v30[7] = v12;
      *(v30 + 64) = v1;
      *(v30 + 65) = 0;
    }

    v34 = v2 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationName;
    sub_232BCA1AC();
    v35 = *(v34 + 8);
    if (v35)
    {
      sub_232BCA29C();
      v36 = *(v4 + v10);
      v37 = swift_isUniquelyReferenced_nonNull_native();
      v38 = *(v4 + v10);
      if ((v37 & 1) == 0)
      {
        type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult._StorageClass();
        sub_232BCA284();
        v39 = sub_232B13ED0();
        v40 = sub_232C25F58(v39);
        sub_232BCA1C8(v40);
      }

      sub_232B13F5C();
      v41 = *(v38 + 80);
      *(v38 + 72) = v12;
      *(v38 + 80) = v35;
    }

    v42 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_hotelNameError;
    sub_232B13F74();
    v43 = *(v42 + v2);
    if (v43)
    {
      v44 = v43;
      [v44 code];
      sub_232C246AC();
      if (sub_232BCA104())
      {

        v42 = *(v4 + v10);
      }

      else
      {
        sub_232BCA2FC();
        sub_232BCA284();
        sub_232BCA194();

        sub_232C25F58(v45);
        sub_232BCA194();

        *(v4 + v10) = v42;
      }

      LOBYTE(v1) = v1 & 1;
      sub_232B13F5C();
      v42[37] = v12;
      *(v42 + 304) = v1;
      *(v42 + 305) = 0;
    }

    v46 = v2 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_hotelName;
    sub_232BCA1AC();
    v47 = *(v46 + 8);
    if (v47)
    {
      sub_232BCA29C();
      v48 = *(v4 + v10);
      v49 = swift_isUniquelyReferenced_nonNull_native();
      v50 = *(v4 + v10);
      if ((v49 & 1) == 0)
      {
        type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult._StorageClass();
        sub_232BCA284();
        v51 = sub_232B13ED0();
        v52 = sub_232C25F58(v51);
        sub_232BCA1C8(v52);
      }

      sub_232B13F5C();
      v53 = *(v50 + 320);
      *(v50 + 312) = v12;
      *(v50 + 320) = v47;
    }

    v54 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_guestNameError;
    sub_232B13F74();
    v55 = *(v54 + v2);
    if (v55)
    {
      v56 = v55;
      [v56 code];
      sub_232C246AC();
      if (sub_232BCA104())
      {

        v54 = *(v4 + v10);
      }

      else
      {
        sub_232BCA2FC();
        sub_232BCA284();
        sub_232BCA194();

        sub_232C25F58(v57);
        sub_232BCA194();

        *(v4 + v10) = v54;
      }

      LOBYTE(v1) = v1 & 1;
      sub_232B13F5C();
      v54[41] = v12;
      *(v54 + 336) = v1;
      *(v54 + 337) = 0;
    }

    v58 = v2 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_guestName;
    sub_232BCA1AC();
    v59 = *(v58 + 8);
    if (v59)
    {
      sub_232BCA29C();
      v60 = *(v4 + v10);
      v61 = swift_isUniquelyReferenced_nonNull_native();
      v62 = *(v4 + v10);
      if ((v61 & 1) == 0)
      {
        type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult._StorageClass();
        sub_232BCA284();
        v63 = sub_232B13ED0();
        v64 = sub_232C25F58(v63);
        sub_232BCA1C8(v64);
      }

      sub_232B13F5C();
      v65 = *(v62 + 352);
      *(v62 + 344) = v12;
      *(v62 + 352) = v59;
    }

    v66 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_movieNameError;
    sub_232B13F74();
    v67 = *(v66 + v2);
    if (v67)
    {
      v68 = v67;
      [v68 code];
      sub_232C246AC();
      if (sub_232BCA104())
      {

        v66 = *(v4 + v10);
      }

      else
      {
        sub_232BCA2FC();
        sub_232BCA284();
        sub_232BCA194();

        sub_232C25F58(v69);
        sub_232BCA194();

        *(v4 + v10) = v66;
      }

      LOBYTE(v1) = v1 & 1;
      sub_232B13F5C();
      v66[45] = v12;
      *(v66 + 368) = v1;
      *(v66 + 369) = 0;
    }

    v70 = v2 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_movieName;
    sub_232BCA1AC();
    v71 = *(v70 + 8);
    if (v71)
    {
      sub_232BCA29C();
      v72 = *(v4 + v10);
      v73 = swift_isUniquelyReferenced_nonNull_native();
      v74 = *(v4 + v10);
      if ((v73 & 1) == 0)
      {
        type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult._StorageClass();
        sub_232BCA284();
        v75 = sub_232B13ED0();
        v76 = sub_232C25F58(v75);
        sub_232BCA1C8(v76);
      }

      sub_232B13F5C();
      v77 = *(v74 + 384);
      *(v74 + 376) = v12;
      *(v74 + 384) = v71;
    }

    v78 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddressError;
    sub_232B13F74();
    v79 = *(v78 + v2);
    if (v79)
    {
      v80 = v79;
      [v80 code];
      sub_232C246AC();
      if (sub_232BCA104())
      {

        v78 = *(v4 + v10);
      }

      else
      {
        sub_232BCA2FC();
        sub_232BCA284();
        sub_232BCA194();

        sub_232C25F58(v81);
        sub_232BCA194();

        *(v4 + v10) = v78;
      }

      LOBYTE(v1) = v1 & 1;
      sub_232B13F5C();
      v78[11] = v12;
      *(v78 + 96) = v1;
      *(v78 + 97) = 0;
    }

    v82 = v2 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddress;
    sub_232BCA1AC();
    v83 = *(v82 + 8);
    if (v83)
    {
      sub_232BCA29C();
      v84 = *(v4 + v10);
      v85 = swift_isUniquelyReferenced_nonNull_native();
      v86 = *(v4 + v10);
      if ((v85 & 1) == 0)
      {
        type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult._StorageClass();
        sub_232BCA284();
        v87 = sub_232B13ED0();
        v88 = sub_232C25F58(v87);
        sub_232BCA1C8(v88);
      }

      sub_232B13F5C();
      v89 = *(v86 + 112);
      *(v86 + 104) = v12;
      *(v86 + 112) = v83;
    }

    v90 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddressComponents;
    sub_232B13F74();
    v91 = *(v2 + v90);
    if (v91)
    {
      v92 = *(v2 + v90);

      v93 = *(v4 + v10);
      v94 = swift_isUniquelyReferenced_nonNull_native();
      v95 = *(v4 + v10);
      if ((v94 & 1) == 0)
      {
        type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult._StorageClass();
        sub_232BCA284();
        v96 = sub_232B13ED0();
        v97 = sub_232C25F58(v96);
        sub_232BCA1C8(v97);
      }

      sub_232B13F5C();
      v98 = *(v95 + 120);
      *(v95 + 120) = v91;
    }

    v99 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddressError;
    sub_232B13F74();
    v100 = *(v99 + v2);
    if (v100)
    {
      v101 = v100;
      [v101 code];
      sub_232C246AC();
      if (sub_232BCA104())
      {

        v99 = *(v4 + v10);
      }

      else
      {
        sub_232BCA2FC();
        sub_232BCA284();
        sub_232BCA194();

        sub_232C25F58(v102);
        sub_232BCA194();

        *(v4 + v10) = v99;
      }

      LOBYTE(v1) = v1 & 1;
      sub_232B13F5C();
      v99[16] = v12;
      *(v99 + 136) = v1;
      *(v99 + 137) = 0;
    }

    v103 = v2 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddress;
    sub_232BCA1AC();
    v104 = *(v103 + 8);
    if (v104)
    {
      sub_232BCA29C();
      v105 = *(v4 + v10);
      v106 = swift_isUniquelyReferenced_nonNull_native();
      v107 = *(v4 + v10);
      if ((v106 & 1) == 0)
      {
        type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult._StorageClass();
        sub_232BCA284();
        v108 = sub_232B13ED0();
        v109 = sub_232C25F58(v108);
        sub_232BCA1C8(v109);
      }

      sub_232B13F5C();
      v110 = *(v107 + 152);
      *(v107 + 144) = v12;
      *(v107 + 152) = v104;
    }

    v111 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddressComponents;
    sub_232B13F74();
    v112 = *(v2 + v111);
    if (v112)
    {
      v113 = *(v2 + v111);

      v114 = *(v4 + v10);
      v115 = swift_isUniquelyReferenced_nonNull_native();
      v116 = *(v4 + v10);
      if ((v115 & 1) == 0)
      {
        type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult._StorageClass();
        sub_232BCA284();
        v117 = sub_232B13ED0();
        v118 = sub_232C25F58(v117);
        sub_232BCA1C8(v118);
      }

      sub_232B13F5C();
      v119 = *(v116 + 160);
      *(v116 + 160) = v112;
    }

    v120 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startPlaceError;
    sub_232B13F74();
    v121 = *(v120 + v2);
    if (v121)
    {
      v122 = v121;
      [v122 code];
      sub_232C246AC();
      if (sub_232BCA104())
      {

        v120 = *(v4 + v10);
      }

      else
      {
        sub_232BCA2FC();
        sub_232BCA284();
        sub_232BCA194();

        sub_232C25F58(v123);
        sub_232BCA194();

        *(v4 + v10) = v120;
      }

      LOBYTE(v1) = v1 & 1;
      sub_232B13F5C();
      v120[21] = v12;
      *(v120 + 176) = v1;
      *(v120 + 177) = 0;
    }

    v124 = v2 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startPlace;
    sub_232BCA1AC();
    v125 = *(v124 + 8);
    if (v125)
    {
      sub_232BCA29C();
      v126 = *(v4 + v10);
      v127 = swift_isUniquelyReferenced_nonNull_native();
      v128 = *(v4 + v10);
      if ((v127 & 1) == 0)
      {
        type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult._StorageClass();
        sub_232BCA284();
        v129 = sub_232B13ED0();
        v130 = sub_232C25F58(v129);
        sub_232BCA1C8(v130);
      }

      sub_232B13F5C();
      v131 = *(v128 + 192);
      *(v128 + 184) = v12;
      *(v128 + 192) = v125;
    }

    v132 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endPlaceError;
    sub_232B13F74();
    v133 = *(v132 + v2);
    if (v133)
    {
      v134 = v133;
      [v134 code];
      sub_232C246AC();
      if (sub_232BCA104())
      {

        v132 = *(v4 + v10);
      }

      else
      {
        sub_232BCA2FC();
        sub_232BCA284();
        sub_232BCA194();

        sub_232C25F58(v135);
        sub_232BCA194();

        *(v4 + v10) = v132;
      }

      LOBYTE(v1) = v1 & 1;
      sub_232B13F5C();
      v132[25] = v12;
      *(v132 + 208) = v1;
      *(v132 + 209) = 0;
    }

    v136 = v2 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endPlace;
    sub_232BCA1AC();
    v137 = *(v136 + 8);
    if (v137)
    {
      sub_232BCA29C();
      v138 = *(v4 + v10);
      v139 = swift_isUniquelyReferenced_nonNull_native();
      v140 = *(v4 + v10);
      if ((v139 & 1) == 0)
      {
        type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult._StorageClass();
        sub_232BCA284();
        v141 = sub_232B13ED0();
        v142 = sub_232C25F58(v141);
        sub_232BCA1C8(v142);
      }

      sub_232B13F5C();
      v143 = *(v140 + 224);
      *(v140 + 216) = v12;
      *(v140 + 224) = v137;
    }

    v144 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startDateError;
    sub_232B13F74();
    v145 = *(v144 + v2);
    if (v145)
    {
      v146 = v145;
      [v146 code];
      sub_232C246AC();
      if (sub_232BCA104())
      {

        v144 = *(v4 + v10);
      }

      else
      {
        sub_232BCA2FC();
        sub_232BCA284();
        sub_232BCA194();

        sub_232C25F58(v147);
        sub_232BCA194();

        *(v4 + v10) = v144;
      }

      LOBYTE(v1) = v1 & 1;
      sub_232B13F5C();
      v144[29] = v12;
      *(v144 + 240) = v1;
      *(v144 + 241) = 0;
    }

    v148 = v2 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startDate;
    sub_232BCA1AC();
    v149 = *(v148 + 8);
    if (v149)
    {
      sub_232BCA29C();
      v150 = *(v4 + v10);
      v151 = swift_isUniquelyReferenced_nonNull_native();
      v152 = *(v4 + v10);
      if ((v151 & 1) == 0)
      {
        type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult._StorageClass();
        sub_232BCA284();
        v153 = sub_232B13ED0();
        v154 = sub_232C25F58(v153);
        sub_232BCA1C8(v154);
      }

      sub_232B13F5C();
      v155 = *(v152 + 256);
      *(v152 + 248) = v12;
      *(v152 + 256) = v149;
    }

    v156 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endDateError;
    sub_232B13F74();
    v157 = *(v156 + v2);
    if (v157)
    {
      v158 = v157;
      [v158 code];
      sub_232C246AC();
      if (sub_232BCA104())
      {

        v156 = *(v4 + v10);
      }

      else
      {
        sub_232BCA2FC();
        sub_232BCA284();
        sub_232BCA194();

        sub_232C25F58(v159);
        sub_232BCA194();

        *(v4 + v10) = v156;
      }

      sub_232B13F5C();
      v156[33] = v12;
      *(v156 + 272) = v1 & 1;
      *(v156 + 273) = 0;
    }

    v160 = v2 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endDate;
    sub_232BCA1AC();
    v161 = *(v160 + 8);
    if (v161)
    {
      sub_232BCA29C();
      v162 = *(v4 + v10);
      v163 = swift_isUniquelyReferenced_nonNull_native();
      v164 = *(v4 + v10);
      if ((v163 & 1) == 0)
      {
        type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult._StorageClass();
        sub_232BCA284();
        v165 = sub_232B13ED0();
        v166 = sub_232C25F58(v165);
        sub_232BCA1C8(v166);
      }

      sub_232B13F5C();
      v167 = *(v164 + 288);
      *(v164 + 280) = v12;
      *(v164 + 288) = v161;
    }

    v168 = v2 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_text;
    sub_232BCA1AC();
    v169 = *(v168 + 8);
    if (v169)
    {
      sub_232BCA29C();
      v170 = *(v4 + v10);
      v171 = swift_isUniquelyReferenced_nonNull_native();
      v172 = *(v4 + v10);
      if ((v171 & 1) == 0)
      {
        type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult._StorageClass();
        sub_232BCA284();
        v173 = sub_232B13ED0();
        v174 = sub_232C25F58(v173);
        sub_232BCA1C8(v174);
      }

      sub_232B13F5C();
      v175 = *(v172 + 400);
      *(v172 + 392) = v12;
      *(v172 + 400) = v169;
    }

    v176 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_tags;
    sub_232B13F74();
    v1 = *(v2 + v176);
    if (!v1)
    {
      goto LABEL_131;
    }

    v191 = v4;
    v177 = sub_232B26B10(v1);
    v4 = MEMORY[0x277D84F90];
    if (!v177)
    {
LABEL_128:
      v186 = *(v191 + v10);
      v187 = swift_isUniquelyReferenced_nonNull_native();
      v188 = *(v191 + v10);
      if ((v187 & 1) == 0)
      {
        type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult._StorageClass();
        sub_232BCA284();
        v189 = sub_232B13ED0();
        v188 = sub_232C25F58(v189);
        *(v191 + v10) = v188;
      }

      sub_232B13F5C();
      v190 = *(v188 + 408);
      *(v188 + 408) = v4;

LABEL_131:
      sub_232B20A00();
      return;
    }

    v178 = v177;
    v197 = MEMORY[0x277D84F90];
    v179 = v177 & ~(v177 >> 63);

    sub_232B64BC4(0, v179, 0);
    if (v178 < 0)
    {
      break;
    }

    v180 = 0;
    v2 = 0;
    v4 = v197;
    v194 = v10;
    v195 = v1 & 0xC000000000000001;
    v192 = v1 & 0xFFFFFFFFFFFFFF8;
    v193 = v1;
    while (1)
    {
      v181 = v180 + 1;
      if (__OFADD__(v180, 1))
      {
        break;
      }

      if (v195)
      {
        v182 = MEMORY[0x2383922C0](v180, v1);
      }

      else
      {
        if (v180 >= *(v192 + 16))
        {
          goto LABEL_133;
        }

        v182 = *(v1 + 8 * v180 + 32);
      }

      v198 = v182;
      sub_232BC75E4(&v198, v9);

      v183 = v9;
      v185 = *(v197 + 16);
      v184 = *(v197 + 24);
      if (v185 >= v184 >> 1)
      {
        sub_232B64BC4(v184 > 1, v185 + 1, 1);
      }

      *(v197 + 16) = v185 + 1;
      sub_232BC8B6C(v183, v197 + ((*(v196 + 80) + 32) & ~*(v196 + 80)) + *(v196 + 72) * v185, type metadata accessor for DocumentUnderstanding_ClientInterface_TaggedCharacterRange);
      ++v180;
      v9 = v183;
      v1 = v193;
      v10 = v194;
      if (v181 == v178)
      {

        goto LABEL_128;
      }
    }

    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    swift_once();
  }

  __break(1u);
}

uint64_t sub_232BC75E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for DocumentUnderstanding_ClientInterface_TaggedCharacterRange(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = &v9[*(v7 + 40)];
  sub_232CE9330();
  swift_beginAccess();
  v12 = *(v10 + 16);
  sub_232C2470C();
  if ((v14 & 0x100) != 0)
  {
    v15 = 0;
  }

  else
  {
    v15 = v13;
  }

  *v9 = v15;
  v9[8] = v14 & 1 | HIBYTE(v14) & 1;
  swift_beginAccess();
  v16 = *(v10 + 32);
  v17 = *(v16 + 16);
  v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    v26 = a2;
    v28 = v2;
    v27 = MEMORY[0x277D84F90];

    sub_232B64BE4(0, v17, 0);
    v18 = v27;
    v19 = *(v27 + 16);
    v20 = 32;
    do
    {
      v21 = *(v16 + v20);
      v27 = v18;
      v22 = *(v18 + 24);
      if (v19 >= v22 >> 1)
      {
        sub_232B64BE4(v22 > 1, v19 + 1, 1);
        v18 = v27;
      }

      *(v18 + 16) = v19 + 1;
      *(v18 + 8 * v19 + 32) = v21;
      v20 += 8;
      ++v19;
      --v17;
    }

    while (v17);

    a2 = v26;
  }

  *(v9 + 3) = v18;
  swift_beginAccess();
  *(v9 + 2) = *(v10 + 24);
  swift_beginAccess();
  v23 = *(v10 + 48);
  *(v9 + 4) = *(v10 + 40);
  *(v9 + 5) = v23;
  sub_232BC8B6C(v9, a2, type metadata accessor for DocumentUnderstanding_ClientInterface_TaggedCharacterRange);
}

uint64_t sub_232BC77F0@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_232B20704();
  type metadata accessor for DUFoundInEventResult();
  sub_232BC6784();
  sub_232BC5434();
  v5 = v4;
  result = sub_232B124A8(&qword_27DDC7790, &unk_232CFA9A8);
  a1[3] = result;
  *a1 = v5;
  return result;
}

id sub_232BC78F4()
{
  v0 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult(0);
  v1 = sub_232B13F24(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  sub_232B20704();
  v6 = v5 - v4;
  sub_232BC6784();
  sub_232BCA20C();
  sub_232BC9FEC(v7, 255, v8);
  v9 = sub_232CE94E0();
  v11 = v10;
  sub_232BC8A30(v6);
  sub_232BA4DEC(0, &qword_27DDC6E90, 0x277CBEA90);
  return sub_232C2EB20(v9, v11);
}

void sub_232BC7A40(void *a1)
{
  v2 = sub_232BC78F4();
  if (v2)
  {
    v3 = v2;
    v4 = sub_232CE9D20();
    [a1 encodeObject:v3 forKey:v4];
  }
}

uint64_t DUFoundInEventResult.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_232B26CE8();
  return DUFoundInEventResult.init(coder:)(v2);
}

uint64_t DUFoundInEventResult.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_232BA4DEC(0, &qword_27DDC6E90, 0x277CBEA90);
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  sub_232B26CE8();
  swift_getObjectType();
  sub_232BC9FEC(&qword_27DDC7798, v2, type metadata accessor for DUFoundInEventResult);
  sub_232CE98B0();

  v3 = v5;
  if (!v5)
  {
LABEL_5:
    swift_getObjectType();
    sub_232BCA50C();
    return 0;
  }

  swift_getObjectType();
  sub_232BCA50C();
  return v3;
}

void DUFoundInEventResult.__allocating_init(foundInEventResult:)()
{
  v1 = objc_allocWithZone(v0);
  sub_232B26CE8();
  DUFoundInEventResult.init(foundInEventResult:)();
}

void DUFoundInEventResult.init(foundInEventResult:)()
{
  sub_232B35110();
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationIdError;
  *(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationIdError + v0) = 0;
  v2 = (v0 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationId);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationNameError;
  *(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationNameError + v0) = 0;
  v4 = (v0 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationName);
  *v4 = 0;
  v4[1] = 0;
  *(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_hotelNameError + v0) = 0;
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_hotelName);
  *(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_guestNameError + v0) = 0;
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_guestName);
  *(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_movieNameError + v0) = 0;
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_movieName);
  v5 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddressError;
  *(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddressError + v0) = 0;
  v6 = v0 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddress;
  *v6 = 0;
  v6[1] = 0;
  v57 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddressComponents;
  *(v0 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddressComponents) = 0;
  v58 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddressError;
  *(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddressError + v0) = 0;
  v7 = (v0 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddress);
  *v7 = 0;
  v7[1] = 0;
  v59 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddressComponents;
  *(v0 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddressComponents) = 0;
  *(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startPlaceError + v0) = 0;
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startPlace);
  *(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endPlaceError + v0) = 0;
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endPlace);
  *(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startDateError + v0) = 0;
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startDate);
  *(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endDateError + v0) = 0;
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endDate);
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_text);
  *(v0 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_tags) = 0;
  v9 = v8;
  v10 = [v9 detectedEventPolarity];
  *(v0 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_detectedEventPolarity) = v10;
  v11 = [v9 reservationIdError];
  if (v11)
  {
    v73 = v11;
    sub_232B124A8(&qword_27DDC6900, &unk_232CF6480);
    sub_232BA4DEC(0, &qword_27DDC77A0, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v12 = v72;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  sub_232B13F5C();
  v13 = *&v1[v0];
  *&v1[v0] = v12;

  v14 = v9;
  v15 = sub_232BC8B00(v14, &selRef_reservationId);
  v17 = v16;
  sub_232B13F5C();
  v18 = v2[1];
  *v2 = v15;
  v2[1] = v17;

  v19 = [v14 reservationNameError];
  if (v19)
  {
    v71 = v19;
    v20 = sub_232B124A8(&qword_27DDC6900, &unk_232CF6480);
    sub_232BA4DEC(0, &qword_27DDC77A0, 0x277CCA9B8);
    sub_232BCA344();
    sub_232BCA230();
  }

  else
  {
    v20 = 0;
  }

  sub_232B13F5C();
  v21 = *&v3[v0];
  *&v3[v0] = v20;

  v22 = v14;
  v23 = sub_232BC8B00(v22, &selRef_reservationName);
  v25 = v24;
  sub_232B13F5C();
  v26 = v4[1];
  *v4 = v23;
  v4[1] = v25;

  v27 = [v22 startAddressError];
  if (v27)
  {
    v70 = v27;
    sub_232B124A8(&qword_27DDC6900, &unk_232CF6480);
    sub_232BA4DEC(0, &qword_27DDC77A0, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v28 = v69;
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = 0;
  }

  sub_232B13F5C();
  v29 = *&v5[v0];
  *&v5[v0] = v28;

  v30 = v22;
  sub_232BC8B00(v30, &selRef_startAddress);
  sub_232BA5EAC();
  sub_232B13F5C();
  v31 = v6[1];
  *v6 = v22;
  v6[1] = v23;

  v32 = v30;
  v33 = sub_232BC8A8C(v32, &selRef_startAddressComponents);
  if (v33)
  {
    v34 = sub_232BC2F8C(v33);
  }

  else
  {
    v34 = 0;
  }

  sub_232B13F5C();
  v35 = *(v0 + v57);
  *(v0 + v57) = v34;

  v36 = [v32 endAddressError];
  if (v36)
  {
    v68 = v36;
    v37 = sub_232B124A8(&qword_27DDC6900, &unk_232CF6480);
    sub_232BA4DEC(0, &qword_27DDC77A0, 0x277CCA9B8);
    sub_232BCA344();
    sub_232BCA230();
  }

  else
  {
    v37 = 0;
  }

  sub_232B13F5C();
  sub_232BCA3A4();
  v38 = v32;
  sub_232BC8B00(v38, &selRef_endAddress);
  sub_232BA5EAC();
  sub_232B13F5C();
  v39 = v7[1];
  *v7 = v37;
  v7[1] = v58;

  v40 = v38;
  v41 = sub_232BC8A8C(v40, &selRef_endAddressComponents);
  if (v41)
  {
    v42 = sub_232BC2F8C(v41);
  }

  else
  {
    v42 = 0;
  }

  sub_232B13F5C();
  v43 = *(v0 + v59);
  *(v0 + v59) = v42;

  v44 = [v40 startPlaceError];
  if (v44)
  {
    v67 = v44;
    sub_232B124A8(&qword_27DDC6900, &unk_232CF6480);
    sub_232BA4DEC(0, &qword_27DDC77A0, 0x277CCA9B8);
    sub_232BCA344();
    sub_232BCA230();
  }

  sub_232B13F5C();
  sub_232BCA3A4();
  v45 = v40;
  sub_232BC8B00(v45, &selRef_startPlace);
  sub_232BA5EAC();
  sub_232B13F08();
  sub_232BCA3BC();
  v46 = [v45 endPlaceError];
  if (v46)
  {
    v66 = v46;
    sub_232B124A8(&qword_27DDC6900, &unk_232CF6480);
    sub_232BA4DEC(0, &qword_27DDC77A0, 0x277CCA9B8);
    sub_232BCA344();
    sub_232BCA230();
  }

  sub_232B13F5C();
  sub_232BCA3A4();
  v47 = v45;
  sub_232BC8B00(v47, &selRef_endPlace);
  sub_232BA5EAC();
  sub_232B13F08();
  sub_232BCA3BC();
  v48 = [v47 startDateError];
  if (v48)
  {
    v65 = v48;
    sub_232B124A8(&qword_27DDC6900, &unk_232CF6480);
    sub_232BA4DEC(0, &qword_27DDC77A0, 0x277CCA9B8);
    sub_232BCA344();
    sub_232BCA230();
  }

  sub_232B13F5C();
  sub_232BCA3A4();
  v49 = v47;
  sub_232BC8B00(v49, &selRef_startDate);
  sub_232BA5EAC();
  sub_232B13F08();
  sub_232BCA3BC();
  v50 = [v49 endDateError];
  if (v50)
  {
    v64 = v50;
    sub_232B124A8(&qword_27DDC6900, &unk_232CF6480);
    sub_232BA4DEC(0, &qword_27DDC77A0, 0x277CCA9B8);
    sub_232BCA344();
    sub_232BCA230();
  }

  sub_232B13F5C();
  sub_232BCA3A4();
  v51 = v49;
  sub_232BC8B00(v51, &selRef_endDate);
  sub_232BA5EAC();
  sub_232B13F08();
  sub_232BCA3BC();
  v52 = [v51 hotelNameError];
  if (v52)
  {
    v63 = v52;
    sub_232B124A8(&qword_27DDC6900, &unk_232CF6480);
    sub_232BA4DEC(0, &qword_27DDC77A0, 0x277CCA9B8);
    sub_232BCA344();
    sub_232BCA230();
  }

  sub_232B13F5C();
  sub_232BCA3A4();
  v53 = v51;
  sub_232BC8B00(v53, &selRef_hotelName);
  sub_232BA5EAC();
  sub_232B13F08();
  sub_232BCA3BC();
  v54 = [v53 guestNameError];
  if (v54)
  {
    v62 = v54;
    sub_232B124A8(&qword_27DDC6900, &unk_232CF6480);
    sub_232BA4DEC(0, &qword_27DDC77A0, 0x277CCA9B8);
    sub_232BCA344();
    sub_232BCA230();
  }

  sub_232B13F5C();
  sub_232BCA3A4();
  v55 = v53;
  sub_232BC8B00(v55, &selRef_guestName);
  sub_232BA5EAC();
  sub_232B13F08();
  sub_232BCA3BC();
  v56 = [v55 movieNameError];
  if (v56)
  {
    v61 = v56;
    sub_232B124A8(&qword_27DDC6900, &unk_232CF6480);
    sub_232BA4DEC(0, &qword_27DDC77A0, 0x277CCA9B8);
    sub_232BCA344();
    sub_232BCA230();
  }

  sub_232B13F5C();
  sub_232BCA3A4();
  sub_232BC8B00(v55, &selRef_movieName);
  sub_232BA5EAC();
  sub_232B13F08();
  sub_232BCA3BC();
  v60.receiver = v0;
  v60.super_class = type metadata accessor for DUFoundInEventResult();
  objc_msgSendSuper2(&v60, sel_init);

  sub_232B20A00();
}

id DUFoundInEventResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUFoundInEventResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_232BC8980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_232CE9D20();

  if (a4)
  {
    v8 = sub_232CE9C20();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

uint64_t sub_232BC8A30(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232BC8A8C(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_232CE9C40();

  return v4;
}

uint64_t sub_232BC8B00(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_232CE9D50();

  return v4;
}

uint64_t sub_232BC8B6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_232B13F24(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_232BC9FEC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_232BCA034(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_232BCA098()
{

  return sub_232BC8980(0xD000000000000031, v2 | 0x8000000000000000, v0, v1);
}

id sub_232BCA0C4()
{

  return sub_232BC8980(0xD000000000000031, v1 | 0x8000000000000000, v0, v2);
}

uint64_t sub_232BCA104()
{
  v3 = *(v0 + v1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_232BCA174(uint64_t a1)
{
  v3 = a1 & 0xFFFFFFFFFFFFLL | 0x6D61000000000000;

  return sub_232BC526C(v3, 0xE900000000000065, v1);
}

uint64_t sub_232BCA1AC()
{

  return swift_beginAccess();
}

uint64_t sub_232BCA1D4()
{
  v4 = v2[1];
  *v2 = v0;
  v2[1] = v1;
}

uint64_t sub_232BCA1F0()
{
  v4 = v1[1];
  *v1 = v0;
  v1[1] = v2;
}

uint64_t sub_232BCA284()
{

  return swift_allocObject();
}

uint64_t sub_232BCA29C()
{
  v2 = *v0;
}

uint64_t sub_232BCA2B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

void sub_232BCA2CC()
{
  v4 = *(v2 + v1);
  *(v2 + v1) = v0;
}

void sub_232BCA2E4()
{
  v4 = *(v2 + v1);
  *(v2 + v1) = v0;
}

uint64_t sub_232BCA2FC()
{
  v3 = *(v0 + v1);

  return type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult._StorageClass();
}

uint64_t sub_232BCA314()
{
}

uint64_t sub_232BCA32C()
{
}

uint64_t sub_232BCA344()
{

  return swift_dynamicCast();
}

uint64_t sub_232BCA37C(unsigned int a1)
{
  v3 = a1 | 0x6464417400000000;

  return sub_232BC526C(v3, 0xEC00000073736572, v1);
}

void sub_232BCA3A4()
{
  v4 = *(v0 + v2);
  *(v0 + v2) = v1;
}

uint64_t sub_232BCA3BC()
{
  v4 = v2[1];
  *v2 = v0;
  v2[1] = v1;
}

uint64_t sub_232BCA3D4(unsigned __int16 a1)
{
  v3 = a1 | 0x65746144640000;

  return sub_232BC526C(v3, 0xE700000000000000, v1);
}

uint64_t sub_232BCA3F8(unsigned int a1)
{
  v3 = a1 | 0x7461447400000000;

  return sub_232BC526C(v3, 0xE900000000000065, v1);
}

uint64_t sub_232BCA41C(unsigned __int16 a1)
{
  v3 = a1 | 0x6563616C50640000;

  return sub_232BC526C(v3, 0xE800000000000000, v1);
}

uint64_t sub_232BCA440(unsigned int a1)
{
  v3 = a1 | 0x616C507400000000;

  return sub_232BC526C(v3, 0xEA00000000006563, v1);
}

void sub_232BCA4AC(uint64_t a1@<X8>)
{
  v2 = *(*(v1 + 48) + 8 * a1);
  v3 = (*(v1 + 56) + 16 * a1);
  v4 = *v3;
  v5 = v3[1];
}

uint64_t sub_232BCA50C()
{

  return swift_deallocPartialClassInstance();
}

uint64_t sub_232BCA52C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a3)
    {
      v5 = result;
      v6 = sub_232CEA010();
      *(v6 + 16) = a3;
      v7 = a3 - 1;
      for (i = 32; ; i += 16)
      {
        v9 = (v6 + i);
        *v9 = v5;
        v9[1] = a2;
        if (!v7)
        {
          break;
        }

        --v7;
      }
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v6;
  }

  return result;
}

uint64_t sub_232BCA5DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_232B124A8(&qword_27DDC7038, &unk_232CF7F40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v72[-v10];
  v12 = sub_232B124A8(&qword_27DDC72F8, &unk_232CFAAE0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v72[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v72[-v19];
  MEMORY[0x28223BE20](v18);
  v22 = &v72[-v21];
  v76 = a3;
  v77 = a2;
  v23 = *(a3 + 16);
  v78 = a1;
  v24 = sub_232CE9D20();
  v25 = [a4 featureValueForName_];

  if (!v25)
  {
    goto LABEL_4;
  }

  sub_232CEA1F0();

  v26 = sub_232B124A8(&qword_27DDC6FA0, &unk_232CF7CB0);
  if (sub_232B12480(v11, 1, v26) == 1)
  {
    sub_232B267AC(v11, &qword_27DDC7038, &unk_232CF7F40);
LABEL_4:
    if (qword_2814DFA50 != -1)
    {
      swift_once();
    }

    v27 = sub_232CE9A30();
    sub_232B135C4(v27, qword_2814E3DA8);
    v28 = sub_232CE9A00();
    v29 = sub_232CEA1C0();
    v30 = os_log_type_enabled(v28, v29);
    v31 = v78;
    if (v30)
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_232B02000, v28, v29, "Unable to convert FoundInEventSmolBERToClassificationModel output to MLShapedArray", v32, 2u);
      MEMORY[0x238393870](v32, -1, -1);
    }

LABEL_9:

    return v31;
  }

  sub_232CE9A60();
  (*(*(v26 - 8) + 8))(v11, v26);
  v34 = v13;
  v35 = v22;
  v36 = v22;
  v37 = v12;
  (*(v13 + 32))(v36, v20, v12);
  v38 = sub_232CE9A70();
  sub_232B124A8(&qword_27DDC6B68, &qword_232CF6EF0);
  inited = swift_initStackObject();
  v75 = xmmword_232CF6460;
  *(inited + 16) = xmmword_232CF6460;
  *(inited + 32) = v23;
  v40 = sub_232B34EB4(v38, inited);

  swift_setDeallocating();
  if ((v40 & 1) == 0)
  {
    v45 = v76;
    if (qword_2814DFA50 != -1)
    {
      swift_once();
    }

    v46 = sub_232CE9A30();
    sub_232B135C4(v46, qword_2814E3DA8);
    (*(v13 + 16))(v17, v35, v12);

    v47 = sub_232CE9A00();
    v48 = sub_232CEA1C0();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *&v75 = swift_slowAlloc();
      v79 = v75;
      *v49 = 136315394;
      v74 = v47;
      sub_232CE9A70();
      v50 = MEMORY[0x238391D80]();
      v73 = v48;
      v51 = v34;
      v52 = v50;
      v54 = v53;

      v55 = *(v51 + 8);
      v55(v17, v12);
      v56 = sub_232BAD2D4(v52, v54, &v79);

      *(v49 + 4) = v56;
      *(v49 + 12) = 2080;
      v57 = MEMORY[0x238391D80](v45, MEMORY[0x277D837D0]);
      v59 = sub_232BAD2D4(v57, v58, &v79);

      *(v49 + 14) = v59;
      v60 = v74;
      _os_log_impl(&dword_232B02000, v74, v73, "FoundInEventSmolBERToClassificationModel output of shape: %s does not conform to expected size %s", v49, 0x16u);
      v61 = v75;
      swift_arrayDestroy();
      MEMORY[0x238393870](v61, -1, -1);
      MEMORY[0x238393870](v49, -1, -1);

      v55(v35, v12);
    }

    else
    {

      v62 = *(v34 + 8);
      v62(v17, v12);
      v62(v35, v12);
    }

    v31 = v78;
    goto LABEL_9;
  }

  sub_232BCE0E8();
  v41 = sub_232CE9A80();
  v42 = *(v41 + 16);
  v43 = v76;
  if (v42)
  {
    if (v42 == 1)
    {
      v44 = 0;
    }

    else
    {
      v44 = 0;
      v65 = *(v41 + 32);
      v66 = (v41 + 36);
      for (i = 1; i != v42; ++i)
      {
        v68 = *v66++;
        v69 = v68;
        if (v65 < v68)
        {
          v44 = i;
          v65 = v69;
        }
      }
    }

    sub_232B124A8(&qword_27DDC6B30, &unk_232CF8960);
    result = swift_allocObject();
    *(result + 16) = v75;
    if (v44 < v23)
    {
      v63 = result;
      v70 = v43 + 16 * v44;
      v64 = *(v70 + 40);
      *(result + 32) = *(v70 + 32);
      goto LABEL_29;
    }

    __break(1u);
  }

  else
  {

    sub_232B124A8(&qword_27DDC6B30, &unk_232CF8960);
    result = swift_allocObject();
    *(result + 16) = v75;
    if (v23)
    {
      v63 = result;
      v64 = *(v43 + 40);
      *(result + 32) = *(v43 + 32);
LABEL_29:
      *(v63 + 40) = v64;
      v71 = *(v13 + 8);

      v71(v35, v37);
      return v78;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_232BCAD08(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *(a2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v27 = MEMORY[0x277D84F90];
    sub_232B649D4(0, v3, 0);
    v4 = v27;
    result = sub_232B66AD8(a2);
    v8 = result;
    v9 = a2 + 64;
    v10 = v3 - 1;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v8 < 1 << *(a2 + 32))
      {
        if ((*(v9 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
        {
          goto LABEL_18;
        }

        if (v7 != *(a2 + 36))
        {
          goto LABEL_19;
        }

        v24 = v10;
        v25 = v7;
        v11 = (*(a2 + 48) + 16 * v8);
        v12 = *v11;
        v13 = v11[1];
        v14 = *(*(a2 + 56) + 8 * v8);

        v26 = a3(v12, v13, v14, a1);
        v16 = v15;
        v18 = v17;

        v20 = *(v27 + 16);
        v19 = *(v27 + 24);
        if (v20 >= v19 >> 1)
        {
          result = sub_232B649D4(v19 > 1, v20 + 1, 1);
        }

        *(v27 + 16) = v20 + 1;
        v21 = (v27 + 24 * v20);
        v21[4] = v26;
        v21[5] = v16;
        v21[6] = v18;
        if (v8 >= -(-1 << *(a2 + 32)))
        {
          goto LABEL_20;
        }

        v9 = a2 + 64;
        if ((*(a2 + 64 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
        {
          goto LABEL_21;
        }

        if (v25 != *(a2 + 36))
        {
          goto LABEL_22;
        }

        result = sub_232CEA460();
        if (!v24)
        {
          goto LABEL_14;
        }

        v8 = result;
        v7 = *(a2 + 36);
        v10 = v24 - 1;
        if (result < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_14:

    return sub_232B63200(v4);
  }

  return result;
}

uint64_t sub_232BCAF08(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_232B124A8(&qword_27DDC7038, &unk_232CF7F40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v55 - v10;
  v12 = sub_232B124A8(&qword_27DDC72F8, &unk_232CFAAE0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v55 - v19;
  MEMORY[0x28223BE20](v18);
  v58 = &v55 - v21;
  v59 = a2;
  v22 = a3[2];
  v60 = a1;
  v23 = sub_232CE9D20();
  v24 = [a4 featureValueForName_];

  if (!v24)
  {
    goto LABEL_4;
  }

  sub_232CEA1F0();

  v25 = sub_232B124A8(&qword_27DDC6FA0, &unk_232CF7CB0);
  if (sub_232B12480(v11, 1, v25) != 1)
  {
    sub_232CE9A60();
    (*(*(v25 - 8) + 8))(v11, v25);
    v31 = v13;
    v32 = *(v13 + 32);
    v33 = v58;
    v34 = v12;
    v32(v58, v20, v12);
    v35 = sub_232CE9A70();
    sub_232B124A8(&qword_27DDC6B68, &qword_232CF6EF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_232CF5E60;
    *(inited + 32) = 512;
    *(inited + 40) = v22;
    v37 = sub_232B34EB4(v35, inited);

    swift_setDeallocating();
    if (v37)
    {
      if (v22)
      {
        v39 = a3[4];
        v38 = a3[5];

        v40 = sub_232CEA010();
        v41 = v40;
        *(v40 + 16) = 512;
        for (i = -8176; ; i += 16)
        {
          v43 = v41 + i;
          *(v43 + 8208) = v39;
          *(v43 + 8216) = v38;
          if (!i)
          {
            break;
          }
        }

        v61 = v41;
        MEMORY[0x28223BE20](v40);
        *(&v55 - 4) = v33;
        *(&v55 - 3) = &v61;
        *(&v55 - 2) = a3;
        sub_232B1D268(sub_232BCE0C8, (&v55 - 6), 0, 512);
        v54 = *(v31 + 8);

        v54(v33, v12);
        return v60;
      }

      __break(1u);
    }

    else if (qword_2814DFA50 == -1)
    {
LABEL_16:
      v44 = sub_232CE9A30();
      sub_232B135C4(v44, qword_2814E3DA8);
      (*(v31 + 16))(v17, v33, v12);
      v45 = sub_232CE9A00();
      v46 = sub_232CEA1C0();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v61 = v57;
        *v47 = 136315650;
        sub_232CE9A70();
        v55 = MEMORY[0x238391D80]();
        v56 = v22;
        v48 = v31;
        v50 = v49;

        v51 = *(v48 + 8);
        v51(v17, v34);
        v52 = sub_232BAD2D4(v55, v50, &v61);

        *(v47 + 4) = v52;
        *(v47 + 12) = 2048;
        *(v47 + 14) = 512;
        *(v47 + 22) = 2048;
        *(v47 + 24) = v56;
        _os_log_impl(&dword_232B02000, v45, v46, "FoundInEventSmolBERToClassificationModel output of shape: %s does not conform to expected size [%ld, %ld]", v47, 0x20u);
        v53 = v57;
        sub_232B2040C(v57);
        MEMORY[0x238393870](v53, -1, -1);
        MEMORY[0x238393870](v47, -1, -1);
      }

      else
      {

        v51 = *(v31 + 8);
        v51(v17, v34);
      }

      v51(v58, v34);
      return v60;
    }

    swift_once();
    goto LABEL_16;
  }

  sub_232B267AC(v11, &qword_27DDC7038, &unk_232CF7F40);
LABEL_4:
  if (qword_2814DFA50 != -1)
  {
    swift_once();
  }

  v26 = sub_232CE9A30();
  sub_232B135C4(v26, qword_2814E3DA8);
  v27 = sub_232CE9A00();
  v28 = sub_232CEA1C0();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_232B02000, v27, v28, "Unable to convert FoundInEventSmolBERToClassificationModel output to MLShapedArray", v29, 2u);
    MEMORY[0x238393870](v29, -1, -1);
  }

  return v60;
}

void sub_232BCB580(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = sub_232B124A8(&qword_27DDC72F8, &unk_232CFAAE0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  v12 = *a1;
  sub_232BCE0E8();
  sub_232CE9A90();
  v13 = sub_232CE9A80();
  (*(v8 + 8))(v11, v7);
  v14 = *(v13 + 16);
  if (!v14)
  {
    goto LABEL_15;
  }

  v15 = v14 - 1;
  if (v15)
  {
    v16 = 0;
    v17 = *(v13 + 32);
    v18 = 9;
    do
    {
      if (v17 < *(v13 + 4 * v18))
      {
        v16 = v18 - 8;
        v17 = *(v13 + 4 * v18);
      }

      ++v18;
      --v15;
    }

    while (v15);

    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {

    v16 = 0;
  }

  if (v16 >= *(a4 + 16))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = a4 + 16 * v16;
  v16 = *(v19 + 32);
  v13 = *(v19 + 40);
  a4 = *a3;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = a4;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((v12 & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_18:
  sub_232C237E0(a4);
  a4 = v23;
  *a3 = v23;
  if ((v12 & 0x8000000000000000) != 0)
  {
    goto LABEL_19;
  }

LABEL_13:
  if (v12 < *(a4 + 16))
  {
    v21 = a4 + 16 * v12;
    v22 = *(v21 + 40);
    *(v21 + 32) = v16;
    *(v21 + 40) = v13;
LABEL_15:

    return;
  }

LABEL_20:
  __break(1u);
}

_BYTE *sub_232BCB778(uint64_t a1, void *a2)
{
  type metadata accessor for DUFoundInEventsPostprocessing();
  swift_allocObject();
  v4 = sub_232BCE8BC(a2);
  v5 = objc_allocWithZone(type metadata accessor for DUFoundInEventResult());
  v6 = a2;
  v7 = [v5 init];
  v8 = sub_232BCE8C8(a1);
  if (v8 == 2)
  {

    v9 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_detectedEventPolarity;
    sub_232B13F5C();
    *(v7 + v9) = 0;
    return v7;
  }

  v10 = v8;
  v11 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_detectedEventPolarity;
  sub_232B13F5C();
  *(v7 + v11) = v10 & 1;
  if ((v10 & 1) == 0)
  {

    return v7;
  }

  sub_232BCE1BC();
  sub_232BCE1DC();
  if (!v12)
  {
    sub_232BC1F98();
    sub_232BCE1A4();
    v14 = sub_232BCE1B0();
    goto LABEL_9;
  }

  v13 = v12;
  if (v12 == 1)
  {
    v14 = sub_232BCE1B0();
    v16 = 0;
LABEL_9:
    static DUFoundInEventResult.getErrorForField(field:errorCode:)(v14, v15, v16);
    sub_232BCE194();
    sub_232B13F5C();
    sub_232BCE160();
    goto LABEL_11;
  }

  sub_232BC1DC4();
  v17 = (v7 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationId);
  sub_232B13F5C();
  v18 = v17[1];
  *v17 = v10;
  v17[1] = v13;

LABEL_11:
  sub_232BCF130();
  if (v20 == 1)
  {
    v22 = sub_232BC1CD0();
    static DUFoundInEventResult.getErrorForField(field:errorCode:)(v22, v23, 0);
    sub_232BCE194();
    sub_232B13F5C();
    sub_232BCE160();
    goto LABEL_20;
  }

  v24 = v19;
  v25 = v20;
  v26 = v21;
  if (v21)
  {
    v27 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddressComponents;
    sub_232B13F5C();
    v28 = *(v7 + v27);
    *(v7 + v27) = v26;

    if (!v25)
    {
      goto LABEL_19;
    }
  }

  else if (!v20)
  {
    goto LABEL_19;
  }

  v29 = v7 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddress;
  sub_232B13F5C();
  v30 = v29[1];
  *v29 = v24;
  v29[1] = v25;

  if (v26)
  {

    v31 = sub_232BC1CD0();
    static DUFoundInEventResult.getErrorForField(field:errorCode:)(v31, v32, v33);
    sub_232B13F5C();
    sub_232BCE160();
    goto LABEL_20;
  }

LABEL_19:

LABEL_20:
  sub_232BCF130();
  if (v35 == 1)
  {
    v37 = sub_232BC1EA0();
    static DUFoundInEventResult.getErrorForField(field:errorCode:)(v37, 0xEA00000000007373, 0);
    sub_232BCE194();
    sub_232B13F5C();
    sub_232BCE160();
    goto LABEL_30;
  }

  v38 = v34;
  v39 = v35;
  v40 = v36;
  if (v36)
  {
    v41 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddressComponents;
    sub_232B13F5C();
    v42 = *(v7 + v41);
    *(v7 + v41) = v40;

    if (!v39)
    {
      goto LABEL_28;
    }
  }

  else if (!v35)
  {
LABEL_28:

    goto LABEL_29;
  }

  v43 = v7 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddress;
  sub_232BC1C58();
  v44 = v43[1];
  *v43 = v38;
  v43[1] = v39;

  if (!v40)
  {
    goto LABEL_28;
  }

  v45 = sub_232BC1EA0();
  static DUFoundInEventResult.getErrorForField(field:errorCode:)(v45, 0xEA00000000007373, v46);
  sub_232B13F5C();
  sub_232BCE160();
LABEL_29:
  sub_232BCE1BC();
LABEL_30:
  sub_232BCF408();
  if (v47)
  {
    sub_232BCE1D0();
    if (!v48)
    {
      sub_232BC1DC4();
      sub_232BC1C58();
      sub_232BCE1FC();
      goto LABEL_36;
    }

    v49 = sub_232BC1D10();
    v51 = 0;
  }

  else
  {

    v49 = sub_232BC1D10();
  }

  static DUFoundInEventResult.getErrorForField(field:errorCode:)(v49, v50, v51);
  sub_232B13F5C();
  sub_232BCE160();
LABEL_36:
  sub_232BCF408();
  if (v52)
  {
    sub_232BCE1D0();
    if (!v48)
    {
      sub_232BC1DC4();
      sub_232BC1C58();
      sub_232BCE1FC();
      goto LABEL_42;
    }

    v53 = sub_232BC1DDC();
    v55 = 0;
  }

  else
  {

    v53 = sub_232BC1DDC();
  }

  static DUFoundInEventResult.getErrorForField(field:errorCode:)(v53, v54, v55);
  sub_232B13F5C();
  sub_232BCE160();
LABEL_42:
  sub_232BCE960();
  if (v56)
  {
    sub_232BCE1D0();
    if (!v48)
    {
      sub_232BC1DC4();
      sub_232BC1C58();
      sub_232BCE1FC();
      goto LABEL_50;
    }

    v57 = 0;
  }

  else
  {
    sub_232BC1F98();
    sub_232BCE1A4();
    if (v48)
    {
      v57 = v58 + 1;
    }

    else
    {
      v57 = v58;
    }
  }

  static DUFoundInEventResult.getErrorForField(field:errorCode:)(0x616C507472617473, 0xEA00000000006563, v57);
  sub_232B13F5C();
  sub_232BCE160();
LABEL_50:
  v59 = v4;
  sub_232BCE960();
  if (v60)
  {
    sub_232BCE1D0();
    if (!v48)
    {
      sub_232BC1DC4();
      sub_232BC1C58();
      sub_232BCE1FC();
      goto LABEL_58;
    }

    v61 = 0;
  }

  else
  {
    sub_232BC1F98();
    sub_232BCE1A4();
    if (v48)
    {
      v61 = v62 + 1;
    }

    else
    {
      v61 = v62;
    }
  }

  v59 = static DUFoundInEventResult.getErrorForField(field:errorCode:)(0x6563616C50646E65, 0xE800000000000000, v61);
  sub_232B13F5C();
  sub_232BCE160();
LABEL_58:
  sub_232BCE1DC();
  if (!v63)
  {
    sub_232BC1F98();
    sub_232BCE1A4();
    v65 = sub_232BCE1B0();
    goto LABEL_62;
  }

  v64 = v63;
  if (v63 == 1)
  {
    v65 = sub_232BCE1B0();
    v67 = 0;
LABEL_62:
    static DUFoundInEventResult.getErrorForField(field:errorCode:)(v65, v66, v67);
    sub_232B13F5C();
    sub_232BCE160();
    goto LABEL_64;
  }

  sub_232BC1DC4();
  v68 = (v7 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationName);
  sub_232BC1C58();
  v69 = v68[1];
  *v68 = v59;
  v68[1] = v64;

LABEL_64:
  sub_232BCE960();
  if (!v70)
  {
    v74 = v71;

    if (v74)
    {
      v73 = 1;
    }

    else
    {
      v73 = 2;
    }

    goto LABEL_70;
  }

  v72 = v70;
  if (v70 == 1)
  {
    v73 = 0;
LABEL_70:
    static DUFoundInEventResult.getErrorForField(field:errorCode:)(0xD000000000000013, 0x8000000232D06F20, v73);
    sub_232B13F5C();
    sub_232BCE160();
    goto LABEL_72;
  }

  sub_232BC1DC4();
  v75 = (v7 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_hotelName);
  sub_232B13F5C();
  v76 = v75[1];
  *v75 = v4;
  v75[1] = v72;

LABEL_72:
  sub_232BCE960();
  if (v77)
  {
    v79 = v77;
    if (v77 != 1)
    {
      sub_232BC1DC4();
      v82 = (v7 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_guestName);
      sub_232B13F5C();
      v83 = v82[1];
      *v82 = v4;
      v82[1] = v79;

      goto LABEL_80;
    }

    v80 = 0;
  }

  else
  {
    v81 = v78;

    if (v81)
    {
      v80 = 1;
    }

    else
    {
      v80 = 2;
    }
  }

  static DUFoundInEventResult.getErrorForField(field:errorCode:)(0x6D614E7473657567, 0xE900000000000065, v80);
  sub_232B13F5C();
  sub_232BCE160();
LABEL_80:
  sub_232BCE960();
  if (v85)
  {
    v86 = v85;
    if (v85 != 1)
    {
      v92 = v84;

      v93 = v7 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_movieName;
      sub_232B13F5C();
      v94 = v93[1];
      *v93 = v92;
      v93[1] = v86;

      return v7;
    }

    v87 = 0;
  }

  else
  {

    sub_232BCE1A4();
    if (v48)
    {
      v87 = v88 + 1;
    }

    else
    {
      v87 = v88;
    }
  }

  v89 = static DUFoundInEventResult.getErrorForField(field:errorCode:)(0x6369546569766F6DLL, 0xEF656D614E74656BLL, v87);

  v90 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_movieNameError;
  sub_232B13F5C();
  v91 = *&v90[v7];
  *&v90[v7] = v89;

  return v7;
}