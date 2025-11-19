uint64_t sub_1ABB30290(uint64_t a1, uint64_t *a2, char a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  *(v3 + 16) = 3;
  sub_1ABB34574(a1, v3 + OBJC_IVAR____TtC20IntelligencePlatform40SubgraphMatchingSearchCandidateRetriever_subgraphTable);
  v7 = v3 + OBJC_IVAR____TtC20IntelligencePlatform40SubgraphMatchingSearchCandidateRetriever_searchMode;
  *v7 = v5;
  *(v7 + 8) = v6;
  *(v3 + OBJC_IVAR____TtC20IntelligencePlatform40SubgraphMatchingSearchCandidateRetriever_searchPattern) = a3;
  return v3;
}

unint64_t sub_1ABB302FC(uint64_t *a1, __int128 *a2)
{
  if (a1[1])
  {
    v4 = a1[7];
    v19 = a2[1];
    v20 = *a2;
    v5 = *(a2 + 34);
    v6 = *(a2 + 16);
    v8 = a1[2];
    v7 = a1[3];
    v9 = *a1;
    v10 = sub_1ABF23EC4();
    v11 = MEMORY[0x1AC5A9330](v10);
    v13 = v12;

    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {

      sub_1ABB30474();
      if (!v3)
      {
        v2 = v15;
      }
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v2 = 0x80000001ABF87840;
    sub_1ABB32C5C();
    v16 = sub_1ABA7BD00();
    *v17 = 0xD00000000000001BLL;
    v17[1] = 0x80000001ABF87840;
    sub_1ABA7BE50(v16, v17);
  }

  return v2;
}

void sub_1ABB30474()
{
  sub_1ABA7BCA8();
  v103 = v1;
  v2 = v0;
  HIDWORD(v100) = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *v2;
  v11 = sub_1ABAD219C(&qword_1EB4D3030, &unk_1ABF3A960);
  sub_1ABA7AB80(v11);
  v13 = *(v12 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  v102 = v91 - v15;
  v16 = sub_1ABF22384();
  v17 = sub_1ABA7BB64(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v17);
  v24 = v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = v91 - v25;
  v27 = sub_1ABAD219C(&qword_1EB4D3038, &unk_1ABF3A870);
  sub_1ABA7AB80(v27);
  v29 = *(v28 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  v101 = v91 - v31;
  v32 = sub_1ABF220F4();
  v33 = sub_1ABA7AB80(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_1ABA7BC58();
  v38 = v37 - v36;
  if (*(v5 + 34) == 255)
  {
    ObjectType = v38;
    v91[1] = v10;
    v95 = v9;
    if (qword_1ED871B18 != -1)
    {
      swift_once();
    }

    v39 = sub_1ABF237F4();
    v40 = sub_1ABA7AA24(v39, qword_1ED871B20);

    v96 = v40;
    v41 = sub_1ABF237D4();
    v42 = sub_1ABF24644();

    v43 = os_log_type_enabled(v41, v42);
    v97 = v19;
    v98 = v16;
    v99 = v7;
    v94 = v26;
    v92 = v24;
    if (v43)
    {
      v44 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      *v44 = 136315394;
      *(v44 + 4) = sub_1ABADD6D8(0x7463656A626FLL, 0xE600000000000000, &v104);
      *(v44 + 12) = 2080;
      v45 = sub_1ABB389B8(*(v2 + OBJC_IVAR____TtC20IntelligencePlatform40SubgraphMatchingSearchCandidateRetriever_searchPattern));
      v47 = sub_1ABADD6D8(v45, v46, &v104);

      *(v44 + 14) = v47;
      _os_log_impl(&dword_1ABA78000, v41, v42, "ECR subgraph cangen: FTS search for column(%s) and pattern(%s", v44, 0x16u);
      swift_arrayDestroy();
      sub_1ABA7BC34();
      sub_1ABA7BC34();
    }

    v48 = *(v2 + OBJC_IVAR____TtC20IntelligencePlatform40SubgraphMatchingSearchCandidateRetriever_searchPattern);
    v49 = (v2 + OBJC_IVAR____TtC20IntelligencePlatform40SubgraphMatchingSearchCandidateRetriever_subgraphTable);
    v50 = *(v2 + OBJC_IVAR____TtC20IntelligencePlatform40SubgraphMatchingSearchCandidateRetriever_searchMode);
    v51 = *(v2 + OBJC_IVAR____TtC20IntelligencePlatform40SubgraphMatchingSearchCandidateRetriever_searchMode + 8);
    v52 = type metadata accessor for SearchableViewDatabaseTable();
    v53 = *(v49 + *(v52 + 32));
    v104 = 0x7463656A626FLL;
    v105 = 0xE600000000000000;
    MEMORY[0x1EEE9AC00](v52);
    v91[-2] = &v104;
    v54 = v103;
    if (sub_1ABB2F764(sub_1ABB342A0, &v91[-4], v55))
    {
      v56 = *v49;
      v101 = v49[1];
      ObjectType = swift_getObjectType();
      v103 = v91;
      MEMORY[0x1EEE9AC00](ObjectType);
      v57 = v99;
      v91[-16] = v95;
      v91[-15] = v57;
      LOBYTE(v91[-14]) = v48;
      v91[-13] = v49;
      LOBYTE(v91[-12]) = BYTE4(v100) & 1;
      v91[-11] = 0x7463656A626FLL;
      v91[-10] = 0xE600000000000000;
      v91[-9] = v50;
      LOBYTE(v91[-8]) = v51;
      *&v91[-7] = 0u;
      *&v91[-5] = 0u;
      *&v91[-3] = 0u;
      sub_1ABAD219C(&qword_1EB4D3040, &unk_1ABF3A880);
      sub_1ABF22464();
      v58 = v54;
      if (!v54)
      {
        v90 = v104;
        v104 = MEMORY[0x1E69E7CD0];

        sub_1ABB2FB98(v90, v2, &v104);

        goto LABEL_19;
      }

      v59 = v98;
    }

    else
    {
      sub_1ABF22364();
      v104 = 0;
      v105 = 0xE000000000000000;
      sub_1ABF24AB4();
      MEMORY[0x1AC5A9410](0xD00000000000003ELL, 0x80000001ABF87860);
      MEMORY[0x1AC5A9410](v49[2], v49[3]);
      MEMORY[0x1AC5A9410](32, 0xE100000000000000);
      MEMORY[0x1AC5A9410](0x7463656A626FLL, 0xE600000000000000);
      v62 = sub_1ABF22854();
      sub_1ABA7B9B4(v101, 1, 1, v62);
      sub_1ABB3440C(&qword_1EB4DB310, MEMORY[0x1E699FE10]);
      v59 = v98;
      v58 = sub_1ABA7BD00();
      sub_1ABF22344();
      swift_willThrow();
    }

    v104 = v58;
    v63 = v58;
    sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
    v64 = v102;
    v65 = swift_dynamicCast();
    v66 = v97;
    if (v65)
    {
      sub_1ABA7B9B4(v64, 0, 1, v59);
      v67 = v94;
      (*(v66 + 32))(v94, v64, v59);
      v68 = v92;
      (*(v66 + 16))(v92, v67, v59);
      v69 = sub_1ABF237D4();
      v70 = sub_1ABF24664();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v104 = v103;
        *v71 = 136315138;
        v102 = sub_1ABF22354();
        v73 = v72;
        v74 = *(v66 + 8);
        v74(v68, v59);
        v75 = sub_1ABADD6D8(v102, v73, &v104);

        *(v71 + 4) = v75;
        _os_log_impl(&dword_1ABA78000, v69, v70, "DatabaseError: %s", v71, 0xCu);
        sub_1ABA84B54(v103);
        sub_1ABA7BC34();
        sub_1ABA7BC34();

        v74(v94, v59);
      }

      else
      {

        v84 = *(v66 + 8);
        v84(v68, v59);
        v84(v67, v59);
      }
    }

    else
    {
      sub_1ABA7B9B4(v64, 1, 1, v59);
      sub_1ABA925A4(v64, &qword_1EB4D3030, &unk_1ABF3A960);
      v76 = v58;
      v77 = v99;

      v78 = sub_1ABF237D4();
      v79 = sub_1ABF24664();

      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        *v80 = 136315650;
        *(v80 + 4) = sub_1ABADD6D8(0x7463656A626FLL, 0xE600000000000000, &v104);
        *(v80 + 12) = 2080;
        *(v80 + 14) = sub_1ABADD6D8(v95, v77, &v104);
        *(v80 + 22) = 2080;
        swift_getErrorValue();
        v81 = sub_1ABF25154();
        v83 = sub_1ABADD6D8(v81, v82, &v104);

        *(v80 + 24) = v83;
        _os_log_impl(&dword_1ABA78000, v78, v79, "Unexpected error while call searchFTS(columnName: %s, query: %s). Error: %s", v80, 0x20u);
        swift_arrayDestroy();
        sub_1ABA7BC34();
        sub_1ABA7BC34();
      }
    }

    swift_getErrorValue();
    v85 = sub_1ABF25154();
    v87 = v86;
    sub_1ABB32C5C();
    v88 = sub_1ABA7BD00();
    *v89 = v85;
    v89[1] = v87;
    sub_1ABA7BE50(v88, v89);
  }

  else
  {
    sub_1ABB32C5C();
    v60 = sub_1ABA7BD00();
    *v61 = 0xD000000000000034;
    v61[1] = 0x80000001ABF878A0;
    sub_1ABA7BE50(v60, v61);
  }

LABEL_19:
  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

uint64_t sub_1ABB30E50()
{
  sub_1ABB34454(v0 + OBJC_IVAR____TtC20IntelligencePlatform40SubgraphMatchingSearchCandidateRetriever_subgraphTable);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SubgraphMatchingSearchCandidateRetriever()
{
  result = qword_1EB4D3020;
  if (!qword_1EB4D3020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1ABB30F08()
{
  result = type metadata accessor for SearchableViewDatabaseTable();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1ABB30FDC(uint64_t a1)
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

uint64_t sub_1ABB31024(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = sub_1ABAAB7C8(a1);
    v4 = v3 - 1;
    if (__OFSUB__(v3, 1))
    {
      __break(1u);
    }

    else
    {
      sub_1ABAAB7C0(v3 - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        v5 = *(a1 + 8 * v4 + 32);
      }
    }

    return MEMORY[0x1AC5AA170](v4, a1);
  }

  result = sub_1ABF24CA4();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_1ABB310C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 8 * v1 + 24);
}

uint64_t sub_1ABB310F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return *(a1 + 8 * v1 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABB31118(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_1ABF23D64();
  return sub_1ABF23E94();
}

uint64_t sub_1ABB31198(uint64_t a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, void (*a8)(char *, char *, uint64_t), uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v78 = a7;
  v79 = a8;
  LODWORD(v85) = a6;
  LODWORD(v84) = a4;
  v20 = sub_1ABF22854();
  v83 = *(v20 - 8);
  v21 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1ABAD219C(&qword_1EB4D3068, &unk_1ABF3A8A0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v75 - v26;
  v28 = sub_1ABF22164();
  v89 = *(v28 - 8);
  v29 = *(v89 + 64);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v81 = &v75 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v75 - v32;
  v34 = *(type metadata accessor for SearchableViewDatabaseTable() + 28);
  v80 = a5;
  v35 = (a5 + v34);
  v36 = *v35;
  v37 = v35[1];
  v77 = a2;
  v38 = a2;
  v39 = a3;
  v40 = v84;
  v82 = a1;
  sub_1ABB318A4(v38, v39, v84, a1, v36, v37, v85, v27);
  if (sub_1ABA7E1E0(v27, 1, v28) == 1)
  {
    sub_1ABA925A4(v27, &qword_1EB4D3068, &unk_1ABF3A8A0);
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v41 = sub_1ABF237F4();
    sub_1ABA7AA24(v41, qword_1ED871B40);

    v42 = sub_1ABF237D4();
    v43 = sub_1ABF24664();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v87[0] = v45;
      *v44 = 136315394;
      v46 = sub_1ABB389B8(v40);
      v48 = sub_1ABADD6D8(v46, v47, v87);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2080;
      *(v44 + 14) = sub_1ABADD6D8(v77, v39, v87);
      _os_log_impl(&dword_1ABA78000, v42, v43, "Cannot create FTS5Pattern(%s) for query: %s", v44, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC5AB8B0](v45, -1, -1);
      MEMORY[0x1AC5AB8B0](v44, -1, -1);
    }

    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    v84 = v23;
    v85 = v20;
    v76 = a13;
    v77 = a14;
    (*(v89 + 32))(v33, v27, v28);
    v80 = sub_1ABB325C0(v78, v79, a9, a10, a11, a12, v76, v77, a15, a16);
    v51 = v50;
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v52 = sub_1ABF237F4();
    sub_1ABA7AA24(v52, qword_1ED871B40);
    v53 = v89;
    v54 = v89 + 16;
    v55 = v81;
    v79 = *(v89 + 16);
    v79(v81, v33, v28);
    v56 = sub_1ABF237D4();
    v57 = sub_1ABF24654();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = v55;
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v78 = v33;
      v61 = v60;
      *&v87[0] = v60;
      *v59 = 136315138;
      v62 = sub_1ABF22104();
      v76 = v54;
      v77 = v51;
      v63 = v62;
      v65 = v64;
      v81 = *(v53 + 8);
      (v81)(v58, v28);
      v66 = sub_1ABADD6D8(v63, v65, v87);

      *(v59 + 4) = v66;
      _os_log_impl(&dword_1ABA78000, v56, v57, "FTS Pattern: %s", v59, 0xCu);
      sub_1ABA84B54(v61);
      v67 = v61;
      v33 = v78;
      MEMORY[0x1AC5AB8B0](v67, -1, -1);
      MEMORY[0x1AC5AB8B0](v59, -1, -1);
    }

    else
    {

      v81 = *(v53 + 8);
      (v81)(v55, v28);
    }

    v68 = v86;
    v69 = v83;
    v70 = v84;
    sub_1ABF22BB4();
    sub_1ABAD219C(&qword_1EB4D5820, &unk_1ABF39E30);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1ABF34740;
    v71 = MEMORY[0x1E699FDA0];
    *(v49 + 56) = v28;
    *(v49 + 64) = v71;
    v72 = sub_1ABA93DC0((v49 + 32));
    v79(v72, v33, v28);
    sub_1ABF22834();
    v88 = 0;
    memset(v87, 0, sizeof(v87));
    v73 = sub_1ABF22B84();
    if (!v68)
    {
      v49 = v73;
    }

    sub_1ABA925A4(v87, &unk_1EB4D38A0, &qword_1ABF3A8B0);
    (*(v69 + 8))(v70, v85);
    (v81)(v33, v28);
  }

  return v49;
}

void sub_1ABB318A4(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v105 = a5;
  v106 = a6;
  v112 = a4;
  v113 = a8;
  v114 = a1;
  v115 = a2;
  v10 = sub_1ABF22384();
  v110 = *(v10 - 8);
  v111 = v10;
  v11 = *(v110 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v107 = v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v109 = v98 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v108 = v98 - v16;
  v17 = sub_1ABF22484();
  v104 = *(v17 - 8);
  v18 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1ABAD219C(&qword_1EB4D3070, &qword_1ABF3A8B8);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = (v98 - v24);
  v26 = sub_1ABF229A4();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = v98 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a3)
  {
    case 1:
      v31 = HIBYTE(v115) & 0xF;
      if ((v115 & 0x2000000000000000) == 0)
      {
        v31 = v114 & 0xFFFFFFFFFFFFLL;
      }

      if (v31)
      {
        v32 = 42;
        if (a7)
        {
          v32 = 0;
        }

        v99 = v32;
        v33 = 0xE100000000000000;
        if (a7)
        {
          v33 = 0xE000000000000000;
        }

        v102 = v33;
        type metadata accessor for UnicodeWrapperTokenizer();
        sub_1ABB3440C(qword_1ED871EB8, type metadata accessor for UnicodeWrapperTokenizer);
        sub_1ABF22874();
        v34 = 0;
        sub_1ABF22E14();
        (*(v27 + 8))(v30, v26);
        swift_getObjectType();
        v67 = sub_1ABF223E4();
        swift_unknownObjectRelease();
        v68 = *(v67 + 16);
        if (v68)
        {
          v103 = *(v21 + 48);
          v69 = (*(v22 + 80) + 32) & ~*(v22 + 80);
          v98[1] = v67;
          v70 = v67 + v69;
          v71 = (v104 + 8);
          v104 = MEMORY[0x1E69E7CC0];
          v72 = *(v22 + 72);
          v100 = v72;
          v101 = 0;
          do
          {
            sub_1ABB3439C(v70, v25);
            sub_1ABF22474();
            sub_1ABB3440C(&qword_1EB4D0220, MEMORY[0x1E699FE80]);
            v73 = sub_1ABF24924();
            (*v71)(v20, v17);
            if (v73)
            {
              sub_1ABA925A4(v25, &qword_1EB4D3070, &qword_1ABF3A8B8);
            }

            else
            {
              v116 = 34;
              v117 = 0xE100000000000000;
              MEMORY[0x1AC5A9410](*v25, v25[1]);
              MEMORY[0x1AC5A9410](34, 0xE100000000000000);
              v74 = v116;
              v75 = v117;
              sub_1ABA925A4(v25, &qword_1EB4D3070, &qword_1ABF3A8B8);
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v76 = v104;
              }

              else
              {
                v79 = *(v104 + 16);
                sub_1ABAAA4F4();
                v76 = v80;
              }

              v77 = *(v76 + 16);
              if (v77 >= *(v76 + 24) >> 1)
              {
                sub_1ABAAA4F4();
                v76 = v81;
              }

              *(v76 + 16) = v77 + 1;
              v104 = v76;
              v78 = v76 + 16 * v77;
              *(v78 + 32) = v74;
              *(v78 + 40) = v75;
              v72 = v100;
              v34 = v101;
            }

            v70 += v72;
            --v68;
          }

          while (v68);

          v82 = v104;
        }

        else
        {

          v82 = MEMORY[0x1E69E7CC0];
        }

        v56 = v113;
        v84 = v110;
        v83 = v111;
        v85 = v109;
        v86 = v115;
        v87 = v102;
        if (!*(v82 + 16))
        {
          v97 = sub_1ABF22164();
          sub_1ABA7B9B4(v56, 1, 1, v97);

          return;
        }

        v88 = 0xE000000000000000;
        v116 = 0;
        v117 = 0xE000000000000000;
        v104 = v82;
        v89 = sub_1ABB30FDC(v82);
        if (v90)
        {
          v88 = v90;
        }

        else
        {
          v89 = 0;
        }

        MEMORY[0x1AC5A9410](v89, v88);

        MEMORY[0x1AC5A9410](v99, v87);
        v91 = v117;
        if (*(v104 + 16) < 2uLL)
        {
          v96 = v116;
        }

        else
        {
          v92 = v104;

          v116 = v92;
          sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
          sub_1ABAAA5C0();
          v93 = sub_1ABF23B54();
          v95 = v94;

          v116 = v93;
          v117 = v95;
          MEMORY[0x1AC5A9410](v99, v102);

          v96 = v116;
          v91 = v117;
        }

        v116 = 94;
        v117 = 0xE100000000000000;
        MEMORY[0x1AC5A9410](v96, v91);

        sub_1ABF22E34();
        if (v34)
        {

          v116 = v34;
          v37 = v34;
          sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
          v38 = v108;
          if (swift_dynamicCast())
          {

            (*(v84 + 32))(v85, v38, v83);
            if (qword_1ED871B38 != -1)
            {
              swift_once();
            }

            v39 = sub_1ABF237F4();
            sub_1ABA7AA24(v39, qword_1ED871B40);

            v40 = sub_1ABF237D4();
            v41 = sub_1ABF24664();

            if (os_log_type_enabled(v40, v41))
            {
              v42 = swift_slowAlloc();
              v43 = swift_slowAlloc();
              v118[0] = v43;
              *v42 = 136315138;
              *(v42 + 4) = sub_1ABADD6D8(v114, v86, v118);
              _os_log_impl(&dword_1ABA78000, v40, v41, "Failed to create FTS5Pattern with prefix pattern for query: %s", v42, 0xCu);
              sub_1ABA84B54(v43);
              MEMORY[0x1AC5AB8B0](v43, -1, -1);
              MEMORY[0x1AC5AB8B0](v42, -1, -1);
            }

            v44 = v107;
            (*(v84 + 16))(v107, v85, v83);
            v45 = sub_1ABF237D4();
            v46 = sub_1ABF24664();
            if (os_log_type_enabled(v45, v46))
            {
              v47 = swift_slowAlloc();
              v48 = swift_slowAlloc();
              v118[0] = v48;
              *v47 = 136315138;
              v49 = sub_1ABF22354();
              v50 = v85;
              v52 = v51;
              v53 = *(v84 + 8);
              v53(v44, v83);
              v54 = sub_1ABADD6D8(v49, v52, v118);

              *(v47 + 4) = v54;
              _os_log_impl(&dword_1ABA78000, v45, v46, "Error description: %s", v47, 0xCu);
              sub_1ABA84B54(v48);
              MEMORY[0x1AC5AB8B0](v48, -1, -1);
              MEMORY[0x1AC5AB8B0](v47, -1, -1);

              v55 = v50;
              v56 = v113;
              v53(v55, v83);
            }

            else
            {

              v65 = *(v84 + 8);
              v65(v44, v83);
              v65(v85, v83);
            }

            v66 = sub_1ABF22164();
            sub_1ABA7B9B4(v56, 1, 1, v66);

            return;
          }

          if (qword_1ED871B38 != -1)
          {
            swift_once();
          }

          v57 = sub_1ABF237F4();
          sub_1ABA7AA24(v57, qword_1ED871B40);

          v58 = sub_1ABF237D4();
          v59 = sub_1ABF24664();

          if (os_log_type_enabled(v58, v59))
          {
            v60 = swift_slowAlloc();
            v61 = swift_slowAlloc();
            v116 = v61;
            *v60 = 136315138;
            *(v60 + 4) = sub_1ABADD6D8(v114, v86, &v116);
            _os_log_impl(&dword_1ABA78000, v58, v59, "Failed to create FTS5Pattern with prefix pattern for query: %s", v60, 0xCu);
            sub_1ABA84B54(v61);
            MEMORY[0x1AC5AB8B0](v61, -1, -1);
            MEMORY[0x1AC5AB8B0](v60, -1, -1);
          }

          v62 = sub_1ABF22164();
          v63 = v56;
          v64 = 1;
        }

        else
        {

          v62 = sub_1ABF22164();
          v63 = v56;
          v64 = 0;
        }

        sub_1ABA7B9B4(v63, v64, 1, v62);
        return;
      }

      v35 = sub_1ABF22164();
      v36 = v113;

      sub_1ABA7B9B4(v36, 1, 1, v35);
      return;
    case 2:

      sub_1ABF22134();
      return;
    case 3:

      sub_1ABF22154();
      return;
    case 4:

      sub_1ABF22114();
      return;
    case 5:

      sub_1ABF22144();
      return;
    default:

      sub_1ABF22124();
      return;
  }
}

uint64_t sub_1ABB325C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = a4;
  if (a6 && a8)
  {
    sub_1ABF24AB4();

    if (a10)
    {
      MEMORY[0x1AC5A9410](*(v10 + 16), *(v10 + 24));
      MEMORY[0x1AC5A9410](0x20455245485720, 0xE700000000000000);
      v16 = a9;
      v17 = a10;
    }

    else
    {
      v16 = *(v10 + 16);
      v17 = *(v10 + 24);
    }

    MEMORY[0x1AC5A9410](v16, v17);
    sub_1ABF24AB4();
    MEMORY[0x1AC5A9410](0xD00000000000001ALL, 0x80000001ABF87920);
    MEMORY[0x1AC5A9410](a5, a6);
    MEMORY[0x1AC5A9410](0xD00000000000001ALL, 0x80000001ABF87940);
    MEMORY[0x1AC5A9410](0xD000000000000015, 0x80000001ABF87900);

    MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF87960);
    v25 = (v10 + *(type metadata accessor for SearchableViewDatabaseTable() + 28));
    v23 = *v25;
    v24 = v25[1];
    MEMORY[0x1AC5A9410](*v25, v24);
    MEMORY[0x1AC5A9410](0xD000000000000046, 0x80000001ABF87980);
    MEMORY[0x1AC5A9410](a7, a8);
    MEMORY[0x1AC5A9410](0xD000000000000014, 0x80000001ABF879D0);
    MEMORY[0x1AC5A9410](a7, a8);
    MEMORY[0x1AC5A9410](0x4A2052454E4E490ALL, 0xEC000000204E494FLL);
    MEMORY[0x1AC5A9410](v23, v24);
    MEMORY[0x1AC5A9410](0xD00000000000001ALL, 0x80000001ABF879F0);
    MEMORY[0x1AC5A9410](v23, v24);
    MEMORY[0x1AC5A9410](0x570A6469776F722ELL, 0xEE00202045524548);
    MEMORY[0x1AC5A9410](v23, v24);
    MEMORY[0x1AC5A9410](46, 0xE100000000000000);
    MEMORY[0x1AC5A9410](a1, a2);
    MEMORY[0x1AC5A9410](0x3A20484354414D20, 0xED0000686374616DLL);
    v11 = a4;
  }

  else
  {
    if (a10)
    {
      MEMORY[0x1AC5A9410](a9, a10);
      v19 = 541347393;
      v18 = 0xE400000000000000;
    }

    else
    {
      v19 = 0;
      v18 = 0xE000000000000000;
    }

    sub_1ABF24AB4();
    MEMORY[0x1AC5A9410](0x454C455320202020, 0xEB00000000205443);
    v21 = *(v10 + 16);
    v20 = *(v10 + 24);
    MEMORY[0x1AC5A9410](v21, v20);
    MEMORY[0x1AC5A9410](539765294, 0xE400000000000000);
    v22 = (v10 + *(type metadata accessor for SearchableViewDatabaseTable() + 28));
    v23 = *v22;
    v24 = v22[1];
    MEMORY[0x1AC5A9410](*v22, v24);
    MEMORY[0x1AC5A9410](0x20200A6B6E61722ELL, 0xEF204D4F52462020);
    MEMORY[0x1AC5A9410](v21, v20);
    MEMORY[0x1AC5A9410](0x204E494F4A20, 0xE600000000000000);
    MEMORY[0x1AC5A9410](v23, v24);
    MEMORY[0x1AC5A9410](0x204E4F202020200ALL, 0xE800000000000000);
    MEMORY[0x1AC5A9410](v21, v20);
    MEMORY[0x1AC5A9410](0x3D206469776F722ELL, 0xE900000000000020);
    MEMORY[0x1AC5A9410](v23, v24);
    MEMORY[0x1AC5A9410](0xD000000000000011, 0x80000001ABF878E0);
    MEMORY[0x1AC5A9410](v23, v24);
    MEMORY[0x1AC5A9410](46, 0xE100000000000000);
    MEMORY[0x1AC5A9410](a1, a2);
    MEMORY[0x1AC5A9410](0x3A20484354414D20, 0xEE0020686374616DLL);
    MEMORY[0x1AC5A9410](v19, v18);
  }

  if (v11 != -1)
  {
    if (v11)
    {
      sub_1ABF24AB4();

      v31 = 0x4220524544524F20;
      v32 = 0xEA00000000002059;
      MEMORY[0x1AC5A9410](v23, v24);
      MEMORY[0x1AC5A9410](0x494C206B6E61722ELL, 0xEC0000002054494DLL);
      v26 = sub_1ABF24FF4();
      MEMORY[0x1AC5A9410](v26);
    }

    else
    {
      v31 = 0;
      v32 = 0xE000000000000000;
      sub_1ABF24AB4();
      MEMORY[0x1AC5A9410](0x20444E4120, 0xE500000000000000);
      MEMORY[0x1AC5A9410](v23, v24);
      MEMORY[0x1AC5A9410](0x203C206B6E61722ELL, 0xE800000000000000);
      sub_1ABF24374();
    }

    MEMORY[0x1AC5A9410](v31, v32);
  }

  return 0;
}

unint64_t sub_1ABB32C5C()
{
  result = qword_1ED86D378;
  if (!qword_1ED86D378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86D378);
  }

  return result;
}

uint64_t sub_1ABB32CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1ABF25054() & 1;
  }
}

uint64_t sub_1ABB32CF4(uint64_t *a1, uint64_t *a2)
{
  sub_1ABAA3BCC(a1, a2);
  v4 = v4 && v2 == v3;
  if (v4)
  {
    return 1;
  }

  else
  {
    return sub_1ABF25054() & 1;
  }
}

uint64_t sub_1ABB32D34(void *__src, const void *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v4, a2, sizeof(v4));
  return static ExtendedTriple.== infix(_:_:)(__dst, v4) & 1;
}

uint64_t sub_1ABB32D94(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1ABF25054() & 1;
  }
}

uint64_t sub_1ABB32DEC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v11[0] = a1;
  v11[1] = a2;
  v11[2] = a3;
  v12 = a4;
  v9[0] = a5;
  v9[1] = a6;
  v9[2] = a7;
  v10 = a8;
  return sub_1ABDEF364(v11, v9) & 1;
}

void sub_1ABB32E40()
{
  sub_1ABA7BCA8();
  sub_1ABAA5F0C();
  v0 = sub_1ABAD219C(&qword_1EB4D3058, &qword_1ABF3A898);
  sub_1ABA7AB80(v0);
  v2 = *(v1 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1ABA947C4();
  v5 = sub_1ABA7BB64(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7EE10();
  if (v8)
  {
    v9 = sub_1ABF22D64();
    sub_1ABA7BE18(v9);
    sub_1ABAA21D8();
    sub_1ABF22774();
    sub_1ABA8EFE8();
    sub_1ABB3440C(v10, v11);
    sub_1ABA992A8();
    sub_1ABA8E688();
    v12 = sub_1ABA7ABFC();
    v13(v12);
    swift_willThrow();
LABEL_10:
    sub_1ABA83F0C();
    sub_1ABA7BC90();
    return;
  }

  if (!sub_1ABF22B54())
  {
    sub_1ABAA4CCC();
    goto LABEL_10;
  }

  sub_1ABA97484();
  if (v14 != v15)
  {
    __break(1u);
  }

  else
  {
    sub_1ABAA2BCC();
    if (v14 ^ v15 | v16)
    {
      sub_1ABA8FE70();
      v18 = MEMORY[0x1EEE9AC00](v17);
      v19 = sub_1ABA8365C(v18);
      if (v19 == 5)
      {
        MEMORY[0x1EEE9AC00](v19);
        sub_1ABA8BEBC();
        *(v20 - 16) = sub_1ABB34730;
        *(v20 - 8) = v4;
        sub_1ABA7E39C();
        sub_1ABAA3438();
      }

      else
      {
        sub_1ABA979F8();
        sub_1ABF23CB4();
      }

      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1ABB33054()
{
  sub_1ABA7BCA8();
  sub_1ABAA5F0C();
  v0 = sub_1ABAD219C(&qword_1EB4D3058, &qword_1ABF3A898);
  sub_1ABA7AB80(v0);
  v2 = *(v1 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1ABA947C4();
  v5 = sub_1ABA7BB64(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7EE10();
  if (v8)
  {
    v9 = sub_1ABF22D64();
    sub_1ABA7BE18(v9);
    sub_1ABAA21D8();
    sub_1ABF22774();
    sub_1ABA8EFE8();
    sub_1ABB3440C(v10, v11);
    sub_1ABA992A8();
    sub_1ABA8E688();
    v12 = sub_1ABA7ABFC();
    v13(v12);
    swift_willThrow();
LABEL_10:
    sub_1ABA83F0C();
    sub_1ABA7BC90();
    return;
  }

  if (!sub_1ABF22B54())
  {
    sub_1ABAA4CCC();
    goto LABEL_10;
  }

  sub_1ABA97484();
  if (v14 != v15)
  {
    __break(1u);
  }

  else
  {
    sub_1ABAA2BCC();
    if (v14 ^ v15 | v16)
    {
      sub_1ABA8FE70();
      v18 = MEMORY[0x1EEE9AC00](v17);
      v19 = sub_1ABA8365C(v18);
      if (v19 == 5)
      {
        MEMORY[0x1EEE9AC00](v19);
        sub_1ABA8BEBC();
        *(v20 - 16) = sub_1ABB3436C;
        *(v20 - 8) = v4;
        sub_1ABA7E39C();
        sub_1ABAA3438();
      }

      else
      {
        sub_1ABA979F8();
        sub_1ABF24324();
      }

      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1ABB33264()
{
  sub_1ABA7BCA8();
  sub_1ABAA5F0C();
  v0 = sub_1ABAD219C(&qword_1EB4D3058, &qword_1ABF3A898);
  sub_1ABA7AB80(v0);
  v2 = *(v1 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1ABA947C4();
  v5 = sub_1ABA7BB64(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7EE10();
  if (v8)
  {
    v9 = sub_1ABF22D64();
    sub_1ABA7BE18(v9);
    sub_1ABAA21D8();
    sub_1ABF22774();
    sub_1ABA8EFE8();
    sub_1ABB3440C(v10, v11);
    sub_1ABA992A8();
    sub_1ABA8E688();
    v12 = sub_1ABA7ABFC();
    v13(v12);
    swift_willThrow();
LABEL_10:
    sub_1ABA83F0C();
    sub_1ABA7BC90();
    return;
  }

  if (!sub_1ABF22B54())
  {
    sub_1ABAA4CCC();
    goto LABEL_10;
  }

  sub_1ABA97484();
  if (v14 != v15)
  {
    __break(1u);
  }

  else
  {
    sub_1ABAA2BCC();
    if (v14 ^ v15 | v16)
    {
      sub_1ABA8FE70();
      v18 = MEMORY[0x1EEE9AC00](v17);
      v19 = sub_1ABA8365C(v18);
      if (v19 == 5)
      {
        MEMORY[0x1EEE9AC00](v19);
        sub_1ABA8BEBC();
        *(v20 - 16) = sub_1ABB34730;
        *(v20 - 8) = v4;
        sub_1ABA7E39C();
        sub_1ABAA3438();
      }

      else
      {
        sub_1ABA979F8();
        sub_1ABF251E4();
      }

      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1ABB33474()
{
  sub_1ABA7BCA8();
  sub_1ABAA5F0C();
  v0 = sub_1ABAD219C(&qword_1EB4D3058, &qword_1ABF3A898);
  sub_1ABA7AB80(v0);
  v2 = *(v1 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1ABA947C4();
  v5 = sub_1ABA7BB64(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7EE10();
  if (v8)
  {
    v9 = sub_1ABF22D64();
    sub_1ABA7BE18(v9);
    sub_1ABAA21D8();
    sub_1ABF22774();
    sub_1ABA8EFE8();
    sub_1ABB3440C(v10, v11);
    sub_1ABA992A8();
    sub_1ABA8E688();
    v12 = sub_1ABA7ABFC();
    v13(v12);
    swift_willThrow();
LABEL_10:
    sub_1ABA83F0C();
    sub_1ABA7BC90();
    return;
  }

  if (!sub_1ABF22B54())
  {
    sub_1ABAA4CCC();
    goto LABEL_10;
  }

  sub_1ABA97484();
  if (v14 != v15)
  {
    __break(1u);
  }

  else
  {
    sub_1ABAA2BCC();
    if (v14 ^ v15 | v16)
    {
      sub_1ABA8FE70();
      v18 = MEMORY[0x1EEE9AC00](v17);
      v19 = sub_1ABA8365C(v18);
      if (v19 == 5)
      {
        MEMORY[0x1EEE9AC00](v19);
        sub_1ABA8BEBC();
        *(v20 - 16) = sub_1ABB34730;
        *(v20 - 8) = v4;
        sub_1ABA7E39C();
        sub_1ABAA3438();
      }

      else
      {
        sub_1ABA979F8();
        sub_1ABF24234();
      }

      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1ABB33688()
{
  sub_1ABA7BCA8();
  sub_1ABAA5F0C();
  v0 = sub_1ABAD219C(&qword_1EB4D3058, &qword_1ABF3A898);
  sub_1ABA7AB80(v0);
  v2 = *(v1 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1ABA947C4();
  v5 = sub_1ABA7BB64(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7EE10();
  if (v8)
  {
    v9 = sub_1ABF22D64();
    sub_1ABA7BE18(v9);
    sub_1ABAA21D8();
    sub_1ABF22774();
    sub_1ABA8EFE8();
    sub_1ABB3440C(v10, v11);
    sub_1ABA992A8();
    sub_1ABA8E688();
    v12 = sub_1ABA7ABFC();
    v13(v12);
    swift_willThrow();
LABEL_10:
    sub_1ABA83F0C();
    sub_1ABA7BC90();
    return;
  }

  if (!sub_1ABF22B54())
  {
    sub_1ABAA4CCC();
    goto LABEL_10;
  }

  sub_1ABA97484();
  if (v14 != v15)
  {
    __break(1u);
  }

  else
  {
    sub_1ABAA2BCC();
    if (v14 ^ v15 | v16)
    {
      sub_1ABA8FE70();
      v18 = MEMORY[0x1EEE9AC00](v17);
      v19 = sub_1ABA8365C(v18);
      if (v19 == 5)
      {
        MEMORY[0x1EEE9AC00](v19);
        sub_1ABA8BEBC();
        *(v20 - 16) = sub_1ABB34730;
        *(v20 - 8) = v4;
        sub_1ABA7E39C();
        sub_1ABAA3438();
      }

      else
      {
        sub_1ABA979F8();
        sub_1ABF251E4();
      }

      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1ABB33898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v21;
  a20 = v22;
  a10 = v23;
  v24 = sub_1ABAD219C(&qword_1EB4D3058, &qword_1ABF3A898);
  sub_1ABA7AB80(v24);
  v26 = *(v25 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &a9 - v28;
  v30 = sub_1ABF22824();
  v31 = sub_1ABA7BB64(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1ABA7BC58();
  v38 = v37 - v36;
  v39 = sub_1ABF22B74();
  if (v40)
  {
    v41 = sub_1ABF22D64();
    sub_1ABA81574(v29, v42, v43, v41);
    sub_1ABF22814();
    sub_1ABF22774();
    sub_1ABA8EFE8();
    sub_1ABB3440C(v44, v45);
    sub_1ABA992A8();
    sub_1ABF22764();
    (*(v33 + 8))(v38, v30);
    swift_willThrow();
LABEL_10:
    sub_1ABA83F0C();
    sub_1ABA7BC90();
    return;
  }

  v46 = v39;
  if (!sub_1ABF22B54())
  {
    sub_1ABF22B24();
    goto LABEL_10;
  }

  if (v46 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v46 <= 0x7FFFFFFF)
  {
    sub_1ABA8FE70();
    v48 = MEMORY[0x1EEE9AC00](v47);
    *(&a9 - 2) = v20;
    *(&a9 - 1) = v46;
    v49 = sqlite3_column_type(v48, v46);
    if (v49 == 5)
    {
      MEMORY[0x1EEE9AC00](v49);
      sub_1ABA8BEBC();
      *(v50 - 16) = sub_1ABB34730;
      *(v50 - 8) = &a9 - 4;
      sub_1ABF229B4();
      sub_1ABAA3438();
    }

    else
    {
      v51 = sub_1ABF21D54();
      v52 = a10;
      *a10 = v51;
      v52[1] = v53;
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_1ABB33B40(uint64_t a1, uint64_t a2)
{
  v3 = sub_1ABAD219C(&qword_1EB4D3058, &qword_1ABF3A898);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v10 - v5;
  *(&v10 - v5) = a2;
  v7 = *MEMORY[0x1E69A0060];
  v8 = sub_1ABF22D64();
  (*(*(v8 - 8) + 104))(v6, v7, v8);
  sub_1ABA7B9B4(v6, 0, 1, v8);

  return sub_1ABF22814();
}

void sub_1ABB33C40()
{
  sub_1ABA7BCA8();
  sub_1ABAA2FA8();
  v0 = sub_1ABAD219C(&qword_1EB4D3058, &qword_1ABF3A898);
  sub_1ABA7AB80(v0);
  v2 = *(v1 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1ABA947C4();
  v5 = sub_1ABA7BB64(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7BC58();
  sub_1ABAA5710();
  if (v10)
  {
    v11 = sub_1ABF22D64();
    sub_1ABA7BE18(v11);
    sub_1ABF22814();
    sub_1ABF22774();
    sub_1ABA8EFE8();
    sub_1ABB3440C(v12, v13);
    sub_1ABAA51DC();
    sub_1ABA905FC();
    v14 = *(v7 + 8);
    v15 = sub_1ABA805B4();
    v16(v15);
    swift_willThrow();
  }

  else
  {
    sub_1ABF223D4();
    sub_1ABA95720();
  }

  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

void sub_1ABB33DA0()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABAD219C(&qword_1EB4D3058, &qword_1ABF3A898);
  sub_1ABA7AB80(v1);
  v3 = *(v2 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1ABAA1E6C();
  v6 = sub_1ABA7BB64(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7BC58();
  sub_1ABAA5710();
  if (v11)
  {
    v12 = sub_1ABF22D64();
    sub_1ABA81574(v0, v13, v14, v12);
    sub_1ABF22814();
    sub_1ABF22774();
    sub_1ABA8EFE8();
    sub_1ABB3440C(v15, v16);
    sub_1ABAA51DC();
    sub_1ABA905FC();
    v17 = *(v8 + 8);
    v18 = sub_1ABA805B4();
    v19(v18);
    swift_willThrow();
  }

  else
  {
    sub_1ABB34530();
    sub_1ABF22A14();
  }

  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

void sub_1ABB33F94()
{
  sub_1ABA7BCA8();
  v21 = v1;
  sub_1ABAA2FA8();
  v2 = sub_1ABAD219C(&qword_1EB4D3058, &qword_1ABF3A898);
  sub_1ABA7AB80(v2);
  v4 = *(v3 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1ABAA1E6C();
  v7 = sub_1ABA7BB64(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7BC58();
  sub_1ABAA5710();
  if (v12)
  {
    v13 = sub_1ABF22D64();
    sub_1ABA81574(v0, v14, v15, v13);
    sub_1ABF22814();
    sub_1ABF22774();
    sub_1ABA8EFE8();
    sub_1ABB3440C(v16, v17);
    sub_1ABAA51DC();
    sub_1ABA905FC();
    v18 = *(v9 + 8);
    v19 = sub_1ABA805B4();
    v20(v19);
    swift_willThrow();
  }

  else
  {
    v21();
    sub_1ABF22A14();
  }

  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

void sub_1ABB34118()
{
  sub_1ABA7BCA8();
  sub_1ABAA2FA8();
  v0 = sub_1ABAD219C(&qword_1EB4D3058, &qword_1ABF3A898);
  sub_1ABA7AB80(v0);
  v2 = *(v1 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1ABA947C4();
  v5 = sub_1ABA7BB64(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7BC58();
  sub_1ABAA5710();
  if (v10)
  {
    v11 = sub_1ABF22D64();
    sub_1ABA7BE18(v11);
    sub_1ABF22814();
    sub_1ABF22774();
    sub_1ABA8EFE8();
    sub_1ABB3440C(v12, v13);
    sub_1ABAA51DC();
    sub_1ABA905FC();
    v14 = *(v7 + 8);
    v15 = sub_1ABA805B4();
    v16(v15);
    swift_willThrow();
  }

  else
  {
    sub_1ABB346DC();
    sub_1ABA95720();
  }

  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

uint64_t sub_1ABB342C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, void (*a8)(char *, char *, uint64_t)@<X7>, uint64_t *a9@<X8>, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  result = sub_1ABB31198(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17);
  if (!v17)
  {
    *a9 = result;
  }

  return result;
}

uint64_t sub_1ABB34374()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1ABB3439C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D3070, &qword_1ABF3A8B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABB3440C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1ABB34454(uint64_t a1)
{
  v2 = type metadata accessor for SearchableViewDatabaseTable();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ABB344B0(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v4 = a4 >> 5;
  if (v4 == 4 || v4 == 3)
  {
  }

  if (!(a4 >> 5))
  {
    return sub_1ABB344D8(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1ABB344D8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1ABB344F0(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v4 = a4 >> 5;
  if (v4 == 4 || v4 == 3)
  {
  }

  if (!(a4 >> 5))
  {
    return sub_1ABB34518(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1ABB34518(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
  }

  return result;
}

unint64_t sub_1ABB34530()
{
  result = qword_1ED86B910;
  if (!qword_1ED86B910)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED86B910);
  }

  return result;
}

uint64_t sub_1ABB34574(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchableViewDatabaseTable();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1ABB34688()
{
  result = qword_1EB4CFD08[0];
  if (!qword_1EB4CFD08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4CFD08);
  }

  return result;
}

unint64_t sub_1ABB346DC()
{
  result = qword_1ED86DB20;
  if (!qword_1ED86DB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86DB20);
  }

  return result;
}

uint64_t sub_1ABB34738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5, uint64_t a6, void *a7)
{
  result = sub_1ABAAB7C8(a1);
  v11 = result;
  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  v19 = a7;
  while (1)
  {
    if (v11 == v12)
    {

LABEL_19:

      swift_unknownObjectRelease();
      return v13;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1AC5AA170](v12, a1);
      v14 = result;
    }

    else
    {
      if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v14 = *(a1 + 8 * v12 + 32);
    }

    if (__OFADD__(v12, 1))
    {
      break;
    }

    v29 = v14;
    sub_1ABB35D30(&v29, a2, a3, a4, a5, a6, a7, __src);
    if (v7)
    {

      goto LABEL_19;
    }

    memcpy(__dst, __src, sizeof(__dst));
    if (sub_1ABB373A8(__dst) == 1)
    {
      memcpy(v26, __src, sizeof(v26));
      result = sub_1ABA925A4(v26, &qword_1EB4D3078, &unk_1ABF3A970);
    }

    else
    {
      memcpy(v26, __src, sizeof(v26));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = *(v13 + 16);
        sub_1ABAD9858();
        v13 = v17;
      }

      v15 = *(v13 + 16);
      if (v15 >= *(v13 + 24) >> 1)
      {
        sub_1ABAD9858();
        v13 = v18;
      }

      memcpy(v25, v26, sizeof(v25));
      *(v13 + 16) = v15 + 1;
      result = memcpy((v13 + 136 * v15 + 32), v25, 0x88uLL);
      a7 = v19;
    }

    ++v12;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1ABB34988(uint64_t a1, uint64_t a2, uint64_t *a3, char a4)
{
  v7 = *a3;
  v8 = *(a3 + 8);
  *(v4 + 16) = 3;
  sub_1ABB34574(a1, v4 + OBJC_IVAR____TtC20IntelligencePlatform36TextMatchingSearchCandidateRetriever_aliasTable);
  *(v4 + OBJC_IVAR____TtC20IntelligencePlatform36TextMatchingSearchCandidateRetriever_subgraphTables) = a2;
  v9 = v4 + OBJC_IVAR____TtC20IntelligencePlatform36TextMatchingSearchCandidateRetriever_searchMode;
  *v9 = v7;
  *(v9 + 8) = v8;
  *(v4 + OBJC_IVAR____TtC20IntelligencePlatform36TextMatchingSearchCandidateRetriever_searchPattern) = a4;
  return v4;
}

unint64_t sub_1ABB34A0C(uint64_t *a1, __int128 *a2, char a3, char a4, void *a5)
{
  if (a1[1])
  {
    v8 = a1[7];
    v25 = a2[1];
    v26 = *a2;
    v9 = *(a2 + 34);
    v10 = *(a2 + 16);
    v12 = a1[2];
    v11 = a1[3];
    v13 = *a1;
    v14 = sub_1ABF23EC4();
    v15 = MEMORY[0x1AC5A9330](v14);
    v17 = v16;

    v18 = (v17 >> 56) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      if (v8)
      {
        v19 = v8;
      }

      else
      {
        v19 = MEMORY[0x1E69E7CC0];
      }

      v28[0] = v26;
      v28[1] = v25;
      v29 = v10;
      v30 = (v10 | (v9 << 16)) >> 16;

      v20 = v31;
      v21 = sub_1ABB34B9C(v15, v17, v19, v28, a3 & 1, a4 & 1, a5);
      if (!v5)
      {
        v20 = v21;
      }
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v20 = 0x80000001ABF87840;
    sub_1ABB32C5C();
    v22 = sub_1ABA7BD00();
    *v23 = 0xD00000000000001BLL;
    v23[1] = 0x80000001ABF87840;
    sub_1ABA7BE50(v22, v23);
  }

  return v20;
}

uint64_t sub_1ABB34B9C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5, int a6, void *a7)
{
  v9 = v8;
  v10 = v7;
  v131 = a3;
  v132 = a7;
  v139 = a5;
  v149 = a2;
  v141 = a1;
  v130 = *v10;
  v13 = sub_1ABAD219C(&qword_1EB4D3030, &unk_1ABF3A960);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v142 = &v126 - v15;
  v16 = sub_1ABF22384();
  v144 = *(v16 - 8);
  v17 = *(v144 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v143 = &v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v148 = &v126 - v20;
  v21 = sub_1ABAD219C(&qword_1EB4D3038, &unk_1ABF3A870);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v140 = (&v126 - v23);
  v24 = sub_1ABF220F4();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v138 = &v126 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a4 + 8);
  *&v145 = *a4;
  *(&v145 + 1) = v27;
  v28 = *(a4 + 24);
  v146 = *(a4 + 16);
  v29 = *(a4 + 34);
  v30 = *(a4 + 32);
  v31 = v10 + OBJC_IVAR____TtC20IntelligencePlatform36TextMatchingSearchCandidateRetriever_aliasTable;
  v32 = type metadata accessor for SearchableViewDatabaseTable();
  v33 = *(v32 + 36);
  v147 = v31;
  v34 = &v31[v33];
  v35 = *v34;
  v36 = *(v34 + 1);
  v37 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v37 = v35 & 0xFFFFFFFFFFFFLL;
  }

  if (!v37)
  {
    sub_1ABB32C5C();
    v40 = sub_1ABA7BD00();
    *v41 = 0xD00000000000002CLL;
    v41[1] = 0x80000001ABF87A90;
    sub_1ABA7BE50(v40, v41);
    return v28;
  }

  v133 = v16;
  v38 = v30 | (v29 << 16);
  p_cache = (&OBJC_METACLASS____TtC20IntelligencePlatform3Add + 16);
  v136 = v32;
  ObjectType = v8;
  if (BYTE2(v38) == 255)
  {
    sub_1ABA7EE3C();
LABEL_16:
    v146 = v36;
    if (p_cache[355] != -1)
    {
      goto LABEL_47;
    }

    while (1)
    {
      v58 = sub_1ABF237F4();
      v59 = sub_1ABA7AA24(v58, qword_1ED871B20);

      *(&v145 + 1) = v59;
      v60 = sub_1ABF237D4();
      v61 = sub_1ABF24644();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *&v150 = swift_slowAlloc();
        *v62 = 136315394;
        v63 = sub_1ABA7D20C();
        *(v62 + 4) = sub_1ABADD6D8(v63, v64, v65);
        *(v62 + 12) = 2080;
        v66 = sub_1ABB389B8(*(v10 + OBJC_IVAR____TtC20IntelligencePlatform36TextMatchingSearchCandidateRetriever_searchPattern));
        v68 = sub_1ABADD6D8(v66, v67, &v150);

        *(v62 + 14) = v68;
        _os_log_impl(&dword_1ABA78000, v60, v61, "ECR text cangen: FTS search for column(%s) and pattern(%s", v62, 0x16u);
        swift_arrayDestroy();
        v9 = ObjectType;
        sub_1ABA7BC34();
        sub_1ABA7BC34();
      }

      v70 = v147;
      if (a6)
      {
        v147 = 0;
        v71 = 0;
      }

      else
      {
        v72 = v147[3];
        *&v150 = v147[2];
        *(&v150 + 1) = v72;

        MEMORY[0x1AC5A9410](46, 0xE100000000000000);
        MEMORY[0x1AC5A9410](0xD000000000000017, 0x80000001ABF87A70);
        v69 = MEMORY[0x1AC5A9410](0x39392E30203E20, 0xE700000000000000);
        v71 = *(&v150 + 1);
        v147 = v150;
      }

      v73 = *(v10 + OBJC_IVAR____TtC20IntelligencePlatform36TextMatchingSearchCandidateRetriever_searchPattern);
      *&v145 = *(v10 + OBJC_IVAR____TtC20IntelligencePlatform36TextMatchingSearchCandidateRetriever_searchMode);
      v74 = *(v10 + OBJC_IVAR____TtC20IntelligencePlatform36TextMatchingSearchCandidateRetriever_searchMode + 8);
      v75 = *(v70 + *(v136 + 32));
      *&v150 = 0x7361696C61;
      *(&v150 + 1) = 0xE500000000000000;
      MEMORY[0x1EEE9AC00](v69);
      *(&v126 - 2) = &v150;
      if (!sub_1ABB2F764(sub_1ABB342A0, (&v126 - 4), v76))
      {
        break;
      }

      v77 = *v70;
      v138 = v70[1];
      ObjectType = swift_getObjectType();
      v140 = &v126;
      MEMORY[0x1EEE9AC00](ObjectType);
      v78 = v149;
      *(&v126 - 16) = v141;
      *(&v126 - 15) = v78;
      *(&v126 - 112) = v73;
      *(&v126 - 13) = v70;
      *(&v126 - 96) = v139 & 1;
      *(&v126 - 11) = 0x7361696C61;
      v79 = v145;
      *(&v126 - 10) = 0xE500000000000000;
      *(&v126 - 9) = v79;
      *(&v126 - 64) = v74;
      v80 = v135;
      *(&v126 - 7) = v129;
      *(&v126 - 6) = v80;
      v81 = v146;
      *(&v126 - 5) = v134;
      *(&v126 - 4) = v81;
      *(&v126 - 3) = v147;
      *(&v126 - 2) = v71;
      sub_1ABAD219C(&qword_1EB4D3040, &unk_1ABF3A880);
      sub_1ABF22464();
      if (v9)
      {

        v82 = v133;
        goto LABEL_26;
      }

      v116 = v150;
      *&v150 = sub_1ABF239C4();
      v117 = sub_1ABAAB7C8(v116);
      v118 = 0;
      LOBYTE(a6) = v116 & 0xF8;
      while (1)
      {
        if (v117 == v118)
        {
          v120 = v150;
          *&v150 = MEMORY[0x1E69E7CD0];
          v121 = v131;

          sub_1ABE8B0FC(v122);
          v124 = v123;
          v125 = v132;
          swift_unknownObjectRetain();

          v28 = sub_1ABB34738(v116, v121, v124, v10, &v150, v120, v125);

          return v28;
        }

        if ((v116 & 0xC000000000000001) != 0)
        {
          v119 = MEMORY[0x1AC5AA170](v118, v116);
        }

        else
        {
          if (v118 >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_46;
          }

          v119 = *(v116 + 8 * v118 + 32);
        }

        if (__OFADD__(v118, 1))
        {
          break;
        }

        v154[0] = v119;
        sub_1ABB35A8C(&v150, v154, v10);

        ++v118;
      }

      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      sub_1ABA7BE6C();
    }

    sub_1ABF22364();
    *&v150 = 0;
    *(&v150 + 1) = 0xE000000000000000;
    sub_1ABF24AB4();
    MEMORY[0x1AC5A9410](0xD00000000000003ELL, 0x80000001ABF87860);
    MEMORY[0x1AC5A9410](v70[2], v70[3]);
    MEMORY[0x1AC5A9410](32, 0xE100000000000000);
    v83 = sub_1ABA7D20C();
    MEMORY[0x1AC5A9410](v83);
    v84 = sub_1ABF22854();
    sub_1ABA7B9B4(v140, 1, 1, v84);
    sub_1ABB3723C();
    v82 = v133;
    v9 = sub_1ABA7BD00();
    sub_1ABF22344();
    swift_willThrow();
LABEL_26:
    *&v150 = v9;
    v85 = v9;
    sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
    v86 = v142;
    v87 = swift_dynamicCast();
    v89 = v143;
    v88 = v144;
    v90 = v148;
    v28 = v149;
    if (v87)
    {
      sub_1ABA7B9B4(v86, 0, 1, v82);
      (*(v88 + 32))(v90, v86, v82);
      (*(v88 + 16))(v89, v90, v82);
      v91 = sub_1ABF237D4();
      v92 = sub_1ABF24664();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        LODWORD(v147) = v92;
        v149 = v94;
        *&v150 = v94;
        *v93 = 136315138;
        v146 = sub_1ABF22354();
        v96 = v95;
        v97 = *(v88 + 8);
        v97(v89, v82);
        v98 = sub_1ABADD6D8(v146, v96, &v150);

        *(v93 + 4) = v98;
        _os_log_impl(&dword_1ABA78000, v91, v147, "DatabaseError: %s", v93, 0xCu);
        v28 = v149;
        sub_1ABA84B54(v149);
        sub_1ABA7BC34();
        sub_1ABA7BC34();

        v97(v148, v82);
      }

      else
      {

        v109 = *(v88 + 8);
        v109(v89, v82);
        v109(v90, v82);
      }
    }

    else
    {
      sub_1ABA7B9B4(v86, 1, 1, v82);
      sub_1ABA925A4(v86, &qword_1EB4D3030, &unk_1ABF3A960);
      v99 = v9;

      v100 = sub_1ABF237D4();
      v101 = sub_1ABF24664();

      if (os_log_type_enabled(v100, v101))
      {
        v102 = v28;
        v28 = swift_slowAlloc();
        *&v150 = swift_slowAlloc();
        *v28 = 136315650;
        v103 = sub_1ABA7D20C();
        *(v28 + 4) = sub_1ABADD6D8(v103, v104, v105);
        *(v28 + 6) = 2080;
        *(v28 + 14) = sub_1ABADD6D8(v141, v102, &v150);
        *(v28 + 11) = 2080;
        swift_getErrorValue();
        v106 = sub_1ABF25154();
        v108 = sub_1ABADD6D8(v106, v107, &v150);

        v28[3] = v108;
        _os_log_impl(&dword_1ABA78000, v100, v101, "Unexpected error while call searchFTS(columnName: %s, query: %s). Error: %s", v28, 0x20u);
        swift_arrayDestroy();
        sub_1ABA7BC34();
        sub_1ABA7BC34();
      }
    }

    swift_getErrorValue();
    v110 = sub_1ABF25154();
    v112 = v111;
    sub_1ABB32C5C();
    v113 = sub_1ABA7BD00();
    *v114 = v110;
    v114[1] = v112;
    sub_1ABA7BE50(v113, v114);

    return v28;
  }

  v134 = v35;
  v128 = a6;
  if (_Records_GDEntityClass_records)
  {
    v42 = *(v10 + OBJC_IVAR____TtC20IntelligencePlatform36TextMatchingSearchCandidateRetriever_subgraphTables);
    v43 = *(_Records_GDEntityClass_records + 0x278);
    v44 = *(_Records_GDEntityClass_records + 0x280);
    v45 = *(_Records_GDEntityClass_records + 0x270);
    v127 = v28;
    sub_1ABB37294(v145, *(&v145 + 1), v146, v28, v38, SBYTE2(v38));
    sub_1ABA8882C(v45, v43, v44, &v150);
    v162[0] = v150;
    v162[1] = v151;
    v163 = v152;
    sub_1ABAD538C(v162, v42);
    sub_1ABA88934(v162);
    if (*(&v155 + 1))
    {
      v158[0] = v155;
      v158[1] = v156;
      v159 = v157;
      v46 = v145;
      v150 = v145;
      v47 = v146;
      v48 = v127;
      *&v151 = v146;
      *(&v151 + 1) = v127;
      v152 = v38;
      v153 = BYTE2(v38);
      v129 = sub_1ABB38A78(v158, v134, v36);
      v135 = v49;
      v160 = v158[0];
      sub_1ABAFEEA0(&v160);
      swift_unknownObjectRelease();
      v161 = v159;
      sub_1ABAFEEA0(&v161);
      sub_1ABB37314(v46, *(&v46 + 1), v47, v48, v38);

LABEL_15:
      v9 = ObjectType;
      LOBYTE(a6) = v128;
      p_cache = &OBJC_METACLASS____TtC20IntelligencePlatform3Add.cache;
      goto LABEL_16;
    }

    LODWORD(v135) = v38;
    p_cache = &OBJC_METACLASS____TtC20IntelligencePlatform3Add.cache;
    v9 = ObjectType;
    if (qword_1ED871B18 != -1)
    {
      sub_1ABA7BE6C();
    }

    v50 = sub_1ABF237F4();
    sub_1ABA7AA24(v50, qword_1ED871B20);
    v51 = sub_1ABF237D4();
    v36 = sub_1ABF24664();
    v52 = os_log_type_enabled(v51, v36);
    v53 = v28;
    v54 = v146;
    if (!v52)
    {
      sub_1ABB37314(v145, *(&v145 + 1), v146, v28, v135);

      sub_1ABA7EE3C();
      LOBYTE(a6) = v128;
      goto LABEL_16;
    }

    v55 = swift_slowAlloc();
    v134 = swift_slowAlloc();
    v154[0] = v134;
    *v55 = 136315138;
    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x270), *(_Records_GDEntityClass_records + 0x278), *(_Records_GDEntityClass_records + 0x280), &v150);
      v56 = v151;

      v57 = sub_1ABADD6D8(v56, *(&v56 + 1), v154);

      *(v55 + 4) = v57;
      _os_log_impl(&dword_1ABA78000, v51, v36, "ECR text cangen: Can't find subgraph table for entity type %s. Constraint ignored.", v55, 0xCu);
      sub_1ABA84B54(v134);
      sub_1ABA7BC34();
      sub_1ABA7BC34();
      sub_1ABB37314(v145, *(&v145 + 1), v54, v53, v135);

      sub_1ABA7EE3C();
      goto LABEL_15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);

  __break(1u);
  return result;
}

void sub_1ABB35A8C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v7 = sub_1ABF223D4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v13 = a3 + OBJC_IVAR____TtC20IntelligencePlatform36TextMatchingSearchCandidateRetriever_aliasTable;
  v14 = (v13 + *(type metadata accessor for SearchableViewDatabaseTable() + 36));
  v15 = *v14;
  v16 = v14[1];
  sub_1ABB33C40();
  if (v3)
  {
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
    static EntityIdentifier.fromDatabaseValue(_:)(v11, &v25);
    (*(v8 + 8))(v11, v7);
    if (v26)
    {
      if (qword_1ED871B18 != -1)
      {
        swift_once();
      }

      v17 = sub_1ABF237F4();
      sub_1ABA7AA24(v17, qword_1ED871B20);
      v18 = sub_1ABF237D4();
      v19 = sub_1ABF24664();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_1ABA78000, v18, v19, "Could not make entity identifier from subject id", v20, 2u);
        MEMORY[0x1AC5AB8B0](v20, -1, -1);
      }
    }

    else
    {
      v21 = sub_1ABAD542C(v25, *a1);
      v22 = MEMORY[0x1E69E7CC0];
      if (v21)
      {
        v22 = v21;
      }

      v25 = v22;

      MEMORY[0x1AC5A9710](v23);
      if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1ABF24134();
      }

      sub_1ABF24184();
      v24 = *a1;
      swift_isUniquelyReferenced_nonNull_native();
      v27 = *a1;
      sub_1ABAFB1D8();
      *a1 = v27;
    }
  }
}

void *sub_1ABB35D30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void **a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, void *a8@<X8>)
{
  v128 = a7;
  v131 = a5;
  v143 = a3;
  v14 = sub_1ABAD219C(&qword_1EB4D3DA0, &qword_1ABF406C0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v129 = &v124[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x1EEE9AC00](v16);
  v136 = &v124[-v19];
  v20 = MEMORY[0x1EEE9AC00](v18);
  v139 = &v124[-v21];
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v124[-v22];
  v24 = sub_1ABF223D4();
  v141 = *(v24 - 8);
  v25 = *(v141 + 64);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v132 = &v124[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = MEMORY[0x1EEE9AC00](v26);
  v135 = &v124[-v29];
  v30 = MEMORY[0x1EEE9AC00](v28);
  v140 = &v124[-v31];
  v32 = MEMORY[0x1EEE9AC00](v30);
  v145 = &v124[-v33];
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v124[-v34];
  v36 = *(a2 + 16);
  v144 = *a1;
  v130 = a4;
  if (v36)
  {
    v138 = a6;
    v142 = a2;
    v133 = a8;
    sub_1ABB32E40();
    if (v8)
    {
      goto LABEL_86;
    }

    v39 = sub_1ABB7F054(v37, v38);
    v41 = v40;
    v43 = v42;
    v45 = v44;

    if (v45)
    {
      if (!_Records_GDEntityClass_records)
      {
        __break(1u);
        while (1)
        {
LABEL_86:
          swift_unexpectedError();
          __break(1u);
        }
      }

      v46 = *(_Records_GDEntityClass_records + 8);
      v47 = *(_Records_GDEntityClass_records + 8 + 8);
      v48 = *_Records_GDEntityClass_records;
    }

    else
    {
      v48 = v39;
      v46 = v41;
      v47 = v43;
    }

    sub_1ABA8882C(v48, v46, v47, __src);
    __src[17] = __src[0];
    __src[18] = __src[1];
    __src[19] = __src[2];
    __src[20] = __src[3];
    v147 = __src[4];
    sub_1ABAA6788();
    v50 = v49;

    if ((v50 & 1) == 0)
    {
      a8 = v133;
      if (qword_1ED871B18 != -1)
      {
        swift_once();
      }

      v75 = sub_1ABF237F4();
      sub_1ABA7AA24(v75, qword_1ED871B20);

      v76 = sub_1ABF237D4();
      v77 = sub_1ABF24644();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v145 = swift_slowAlloc();
        v148 = v145;
        *v78 = 136315394;
        sub_1ABB32E40();
        v80 = v79;
        v82 = v81;

        v83 = sub_1ABB7F054(v80, v82);
        v85 = v84;
        v87 = v86;
        v89 = v88;

        if (v89)
        {
          v90 = 0x80000001ABF87AC0;
          v91 = 0xD000000000000014;
        }

        else
        {
          sub_1ABA8882C(v83, v85, v87, __src);
          v91 = __src[2];
          v90 = __src[3];
        }

        a8 = v133;
        v101 = sub_1ABADD6D8(v91, v90, &v148);

        *(v78 + 4) = v101;
        *(v78 + 12) = 2080;
        v102 = MEMORY[0x1AC5A9750](v142, &type metadata for EntityClass);
        v104 = sub_1ABADD6D8(v102, v103, &v148);

        *(v78 + 14) = v104;
        _os_log_impl(&dword_1ABA78000, v76, v77, "Filtering result: %s. Class set: %s", v78, 0x16u);
        v105 = v145;
        swift_arrayDestroy();
        MEMORY[0x1AC5AB8B0](v105, -1, -1);
        MEMORY[0x1AC5AB8B0](v78, -1, -1);
      }

      else
      {
      }

      goto LABEL_64;
    }

    a8 = v133;
    a4 = v130;
    a6 = v138;
  }

  v51 = a4 + OBJC_IVAR____TtC20IntelligencePlatform36TextMatchingSearchCandidateRetriever_aliasTable;
  v52 = (v51 + *(type metadata accessor for SearchableViewDatabaseTable() + 36));
  v53 = *v52;
  v54 = v52[1];
  sub_1ABB33C40();
  if (v8)
  {
    goto LABEL_86;
  }

  static EntityIdentifier.fromDatabaseValue(_:)(v35, __src);
  v138 = *(v141 + 8);
  v137 = v141 + 8;
  v138(v35, v24);
  if (__src[1] & 1) != 0 || (v55 = __src[0], (sub_1ABB134F0(__src[0], *v131)) || (v56 = sub_1ABAD542C(v55, a6)) == 0)
  {
LABEL_64:
    sub_1ABB373C0(__src);
    v106 = a8;
    return memcpy(v106, __src, 0x88uLL);
  }

  v57 = v56;
  v126 = v55;
  v133 = a8;
  v58 = sub_1ABAAB7C8(v56);
  v59 = 0;
  v143 = v57 & 0xC000000000000001;
  v142 = v57 & 0xFFFFFFFFFFFFFF8;
  v141 += 32;
  v127 = 0x80000001ABF87790;
  v134 = v58;
  while (v58 != v59)
  {
    if (v143)
    {
      MEMORY[0x1AC5AA170](v59, v57);
    }

    else
    {
      if (v59 >= *(v142 + 16))
      {
        goto LABEL_83;
      }

      v60 = *(v57 + 8 * v59 + 32);
    }

    if (__OFADD__(v59, 1))
    {
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:

      sub_1ABB373C0(__src);
      goto LABEL_81;
    }

    sub_1ABB37138(v23);
    if (sub_1ABA7E1E0(v23, 1, v24) == 1)
    {

      sub_1ABA925A4(v23, &qword_1EB4D3DA0, &qword_1ABF406C0);
      goto LABEL_31;
    }

    v61 = v57;
    v62 = *v141;
    (*v141)(v145, v23, v24);
    v63 = v139;
    sub_1ABB37138(v139);
    if (sub_1ABA7E1E0(v63, 1, v24) == 1)
    {
      v138(v145, v24);

LABEL_28:
      sub_1ABA925A4(v63, &qword_1EB4D3DA0, &qword_1ABF406C0);
      goto LABEL_29;
    }

    v62(v140, v63, v24);
    v63 = v136;
    sub_1ABB37138(v136);
    if (sub_1ABA7E1E0(v63, 1, v24) == 1)
    {

      v64 = v138;
      v138(v140, v24);
LABEL_27:
      v64(v145, v24);
      goto LABEL_28;
    }

    v62(v135, v63, v24);
    v63 = v129;
    sub_1ABB37138(v129);
    if (sub_1ABA7E1E0(v63, 1, v24) == 1)
    {

      v64 = v138;
      v138(v135, v24);
      v64(v140, v24);
      goto LABEL_27;
    }

    v62(v132, v63, v24);
    v65 = sub_1ABF23CC4();
    v57 = v61;
    if (v66)
    {
      if (v65 == 0xD000000000000012 && v66 == v127)
      {

        goto LABEL_47;
      }

      v68 = sub_1ABF25054();

      if (v68)
      {
        goto LABEL_44;
      }
    }

    v69 = sub_1ABF23CC4();
    if (!v70)
    {
      goto LABEL_44;
    }

    if (v69 == 0xD000000000000012 && v70 == v127)
    {
    }

    else
    {
      v125 = sub_1ABF25054();

      if ((v125 & 1) == 0)
      {
LABEL_44:

LABEL_47:
        v72 = v138;
        v138(v132, v24);
        v72(v135, v24);
        v72(v140, v24);
        v72(v145, v24);
        goto LABEL_30;
      }
    }

    v73 = v135;
    v125 = sub_1ABF223C4();

    v74 = v138;
    v138(v132, v24);
    v74(v73, v24);
    v74(v140, v24);
    v74(v145, v24);
    if (v125)
    {
      goto LABEL_84;
    }

LABEL_29:
    v57 = v61;
LABEL_30:
    v58 = v134;
LABEL_31:
    ++v59;
  }

  v92 = v126;
  sub_1ABB18C18();
  v93 = v128;
  if (v128)
  {
    __src[0] = v92;
    swift_unknownObjectRetain();
    sub_1ABF24FF4();
    v94 = sub_1ABF23BD4();

    v95 = [v93 personForIdentifier_];

    if (v95)
    {
      v96 = [v95 names];
      v145 = sub_1ABF240D4();

      v97 = [v95 contactIdentifiers];
      v143 = sub_1ABF240D4();

      v98 = [v95 visualIdentifiers];
      v142 = sub_1ABF240D4();

      v99 = [v95 emails];
      v100 = sub_1ABF240D4();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v100 = MEMORY[0x1E69E7CC0];
      v142 = MEMORY[0x1E69E7CC0];
      v143 = MEMORY[0x1E69E7CC0];
      v145 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v100 = MEMORY[0x1E69E7CC0];
    v142 = MEMORY[0x1E69E7CC0];
    v143 = MEMORY[0x1E69E7CC0];
    v145 = MEMORY[0x1E69E7CC0];
  }

  sub_1ABB33054();
  v109 = v108;
  v110 = *(v130 + 16);
  v111 = sub_1ABB36D74();
  v113 = v112;
  v114 = sub_1ABB36D74();
  v116 = v115;
  sub_1ABB33054();
  v118 = v117;
  v119 = -v109;
  if (v113)
  {
    v120 = v111;
  }

  else
  {
    v120 = 0;
  }

  if (v113)
  {
    v121 = v113;
  }

  else
  {
    v121 = 0xE000000000000000;
  }

  if (v120 == 0xD000000000000012 && v127 == v121)
  {
    v123 = 1;
  }

  else
  {
    v123 = sub_1ABF25054();
  }

  __src[0] = v126;
  __src[1] = v111;
  __src[2] = v113;
  *&__src[3] = v119;
  LOBYTE(__src[4]) = v110;
  memset(&__src[5], 0, 32);
  __src[9] = v114;
  __src[10] = v116;
  __src[11] = v118;
  LOBYTE(__src[12]) = v123 & 1;
  __src[13] = v145;
  __src[14] = v143;
  __src[15] = v142;
  __src[16] = v100;
  nullsub_1(__src);
LABEL_81:
  v106 = v133;
  return memcpy(v106, __src, 0x88uLL);
}

uint64_t sub_1ABB36D74()
{
  v0 = sub_1ABF22B74();
  if (v1)
  {
    return 0;
  }

  v2 = v0;
  v3 = sub_1ABF22B54();
  if (!v3)
  {
    sub_1ABF22B64();
    return v5;
  }

  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    result = sub_1ABA93260();
    __break(1u);
    return result;
  }

  if (sqlite3_column_type(v3, v2) == 5)
  {
    return 0;
  }

  return sub_1ABF23CB4();
}

sqlite3_stmt *sub_1ABB36E48@<X0>(sqlite3_stmt **a1@<X8>)
{
  v2 = sub_1ABF22B74();
  if (v3)
  {
    goto LABEL_6;
  }

  v4 = v2;
  result = sub_1ABF22B54();
  if (!result)
  {
    return sub_1ABF22B64();
  }

  if (v4 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v4 <= 0x7FFFFFFF)
  {
    if (sqlite3_column_type(result, v4) != 5)
    {
      result = sub_1ABF21D54();
      goto LABEL_7;
    }

LABEL_6:
    result = 0;
    v6 = 0xF000000000000000;
LABEL_7:
    *a1 = result;
    a1[1] = v6;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABB36F1C()
{
  sub_1ABB34454(v0 + OBJC_IVAR____TtC20IntelligencePlatform36TextMatchingSearchCandidateRetriever_aliasTable);
  v1 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform36TextMatchingSearchCandidateRetriever_subgraphTables);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TextMatchingSearchCandidateRetriever()
{
  result = qword_1ED86E758;
  if (!qword_1ED86E758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1ABB36FE4()
{
  result = type metadata accessor for SearchableViewDatabaseTable();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1ABB370C4@<X0>(uint64_t a1@<X8>)
{
  result = sub_1ABF22B74();
  if (v3)
  {
    *a1 = 0;
    *(a1 + 8) = 1;
  }

  else
  {
    sub_1ABAA98EC();
    return sub_1ABF229F4();
  }

  return result;
}

uint64_t sub_1ABB37138@<X0>(uint64_t a1@<X8>)
{
  sub_1ABF22B74();
  if (v2)
  {
    v3 = sub_1ABF223D4();
    return sub_1ABA7B9B4(a1, 1, 1, v3);
  }

  else
  {
    sub_1ABF223D4();
    return sub_1ABF229F4();
  }
}

uint64_t sub_1ABB371C0()
{
  sub_1ABF22B74();
  if (v1)
  {
    return 0;
  }

  sub_1ABB373C8();
  result = sub_1ABF229F4();
  if (!v0)
  {
    return v3;
  }

  return result;
}

unint64_t sub_1ABB3723C()
{
  result = qword_1EB4DB310;
  if (!qword_1EB4DB310)
  {
    sub_1ABF22384();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB310);
  }

  return result;
}

uint64_t sub_1ABB37294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a6)
  {
    case 0:

      goto LABEL_6;
    case 1:
    case 2:
LABEL_6:

      break;
    case 3:
    case 4:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABB37314(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (BYTE2(a5) != 255)
  {
    return sub_1ABB37328(result, a2, a3, a4, a5, SBYTE2(a5));
  }

  return result;
}

uint64_t sub_1ABB37328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a6)
  {
    case 0:

      goto LABEL_6;
    case 1:
    case 2:
LABEL_6:

      break;
    case 3:
    case 4:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABB373A8(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1ABB373C8()
{
  result = qword_1ED86B920;
  if (!qword_1ED86B920)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED86B920);
  }

  return result;
}

unint64_t sub_1ABB3740C(uint64_t *a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D1AC0, &qword_1ABF33C50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v27 - v4;
  if (a1[1])
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = *a1;
    v9 = sub_1ABF23EC4();
    v10 = MEMORY[0x1AC5A9330](v9);
    v12 = v11;

    v13 = [objc_opt_self() service];
    type metadata accessor for UniversalEmbeddingModelClient();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    v15 = dispatch_semaphore_create(0);
    type metadata accessor for VectorSearchCandidateRetriever.EmbeddingContainer();
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    v17 = sub_1ABF24294();
    sub_1ABA7B9B4(v5, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v15;
    v18[5] = v14;
    v18[6] = v10;
    v18[7] = v12;
    v18[8] = v16;
    v19 = v15;

    sub_1ABD403AC(0, 0, v5, &unk_1ABF3AA78, v18);

    sub_1ABF24734();
    v20 = *(v16 + 16);
    if (v20)
    {
      v21 = *(v16 + 16);
    }

    else
    {
      sub_1ABB32C5C();
      sub_1ABA7D104();
      v24 = swift_allocError();
      *v25 = xmmword_1ABF3A980;
      sub_1ABA8F000(v24, v25);
      swift_willThrow();
    }
  }

  else
  {
    v20 = 0x80000001ABF87840;
    sub_1ABB32C5C();
    sub_1ABA7D104();
    v22 = swift_allocError();
    *v23 = 0xD00000000000001BLL;
    v23[1] = 0x80000001ABF87840;
    sub_1ABA8F000(v22, v23);
    swift_willThrow();
  }

  return v20;
}

uint64_t sub_1ABB37674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1ABB3769C, 0, 0);
}

uint64_t sub_1ABB3769C()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_1ABAD219C(&qword_1EB4D10F0, &qword_1ABF3A5C0);
  v3 = swift_allocObject();
  v0[7] = v3;
  *(v3 + 16) = xmmword_1ABF34740;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1ABB37784;
  v5 = v0[3];

  return UniversalEmbeddingModelClient.embed(items:)(v3);
}

uint64_t sub_1ABB37784(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v8 = *v2;
  v3[9] = a1;
  v3[10] = v1;

  if (v1)
  {
    v5 = sub_1ABB37998;
  }

  else
  {
    v6 = v3[7];

    v5 = sub_1ABB378A0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1ABB378A0()
{
  v1 = v0[9];
  if (*(v1 + 16))
  {
    v2 = v0[6];
    v3 = v0[2];
    v4 = *(v1 + 32);

    v5 = *(v2 + 16);
    *(v2 + 16) = v4;
  }

  else
  {

    sub_1ABB32C5C();
    sub_1ABA7D104();
    v7 = swift_allocError();
    *v8 = xmmword_1ABF3A980;
    sub_1ABA8F000(v7, v8);
    swift_willThrow();
    v9 = v0[2];
  }

  sub_1ABF24744();
  v6 = v0[1];

  return v6();
}

uint64_t sub_1ABB37998()
{
  v1 = v0[7];

  v2 = v0[10];
  v3 = v0[2];
  sub_1ABF24744();
  v4 = v0[1];

  return v4();
}

void *sub_1ABB37A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(_OWORD *), unint64_t a7)
{
  v9 = v7;
  v14 = sub_1ABF23104();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 34) != 255)
  {
    v29 = "Candidate constraints not supported with vector search";
LABEL_7:
    a7 = (v29 - 32) | 0x8000000000000000;
    sub_1ABB32C5C();
    sub_1ABA7D104();
    v30 = swift_allocError();
    v32 = 0xD000000000000036;
LABEL_9:
    *v31 = v32;
    v31[1] = a7;
    sub_1ABA8F000(v30, v31);
    swift_willThrow();
    return a7;
  }

  v19 = *(a1 + 8);
  if (!v19)
  {
    a7 = 0x80000001ABF87840;
    sub_1ABB32C5C();
    sub_1ABA7D104();
    v30 = swift_allocError();
    v32 = 0xD00000000000001BLL;
    goto LABEL_9;
  }

  v50 = v16;
  *&v53[0] = *a1;
  *(&v53[0] + 1) = v19;
  v20 = *(a1 + 32);
  v53[1] = *(a1 + 16);
  v53[2] = v20;
  v53[3] = *(a1 + 48);
  *(&v53[3] + 9) = *(a1 + 57);
  a6(v53);
  if (v8)
  {
    return a7;
  }

  if (*(v9 + 40) != 1)
  {

    v29 = "Non Top-k search mode not supported via vector search.";
    goto LABEL_7;
  }

  v21 = *(v9 + 32);
  v22 = sub_1ABF24104();
  v24 = v23;

  v25 = *(v9 + 16);
  v26 = v22;
  v27 = MEMORY[0x1E69E7CC0];
  v28 = sub_1ABF23004();
  v34 = v28;
  v44 = v24;
  v35 = *(v28 + 16);
  if (!v35)
  {

    sub_1ABA96210(v26, v44);
    return MEMORY[0x1E69E7CC0];
  }

  v54 = v27;
  result = sub_1ABADDF2C(0, v35, 0);
  v36 = 0;
  v37 = v50;
  v48 = v34 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
  a7 = v54;
  v46 = v34;
  v47 = v50 + 16;
  v49 = v50 + 8;
  v45 = v35 - 1;
  while (v36 < *(v34 + 16))
  {
    (*(v37 + 16))(v18, v48 + *(v37 + 72) * v36, v14);
    sub_1ABB37DF4(&v52, v53);
    v38 = v26;
    v39 = sub_1ABA7EE4C();
    v40(v39);
    memcpy(v51, v53, sizeof(v51));
    v54 = a7;
    v42 = *(a7 + 16);
    v41 = *(a7 + 24);
    if (v42 >= v41 >> 1)
    {
      sub_1ABADDF2C((v41 > 1), v42 + 1, 1);
      a7 = v54;
    }

    *(a7 + 16) = v42 + 1;
    result = memcpy((a7 + 136 * v42 + 32), v51, 0x88uLL);
    if (v45 == v36)
    {
      sub_1ABA96210(v38, v44);

      return a7;
    }

    ++v36;
    v37 = v50;
    v26 = v38;
    v34 = v46;
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABB37DF4@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = sub_1ABF230A4();
  v49 = *(v4 - 8);
  v5 = *(v49 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v43 - v9;
  v10 = sub_1ABF230F4();
  if (v11 >> 60 == 15)
  {
    goto LABEL_17;
  }

  v12 = v10;
  v13 = v11;
  v45 = v4;
  v46 = a2;
  v14 = objc_opt_self();
  v15 = sub_1ABF21DB4();
  v52[0] = 0;
  v16 = v12;
  v17 = [v14 JSONObjectWithData:v15 options:0 error:v52];

  if (!v17)
  {
    v33 = v52[0];
    v34 = sub_1ABF21BE4();

    swift_willThrow();
    sub_1ABAC9310(v16, v13);

LABEL_17:
    sub_1ABB32C5C();
    v35 = swift_allocError();
    *v36 = 0xD000000000000017;
    *(v36 + 8) = 0x80000001ABF87C30;
    *(v36 + 16) = 4;
    result = swift_willThrow();
    *a1 = v35;
LABEL_18:
    v38 = *MEMORY[0x1E69E9840];
    return result;
  }

  v47 = v16;
  v18 = v52[0];
  sub_1ABF248F4();
  swift_unknownObjectRelease();
  sub_1ABAD219C(&qword_1EB4D3080, &unk_1ABF47A00);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    sub_1ABAC9310(v47, v13);
    goto LABEL_17;
  }

  v19 = v50;
  if (!*(v50 + 16))
  {
    goto LABEL_15;
  }

  sub_1ABA94FC8(0x7463656A627573, 0xE700000000000000);
  v21 = v20;

  if ((v21 & 1) == 0 || !*(v19 + 16) || (, sub_1ABA94FC8(0x7463656A626FLL, 0xE600000000000000), v23 = v22, , (v23 & 1) == 0))
  {
LABEL_15:

    goto LABEL_16;
  }

  sub_1ABAD5444(0x7463656A627573, 0xE700000000000000, v19);
  if (!v53)
  {
    sub_1ABAC9310(v47, v13);

LABEL_22:
    sub_1ABB384B8(v52);
    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1ABAC9310(v47, v13);

    goto LABEL_17;
  }

  v24 = v50;
  sub_1ABAD5444(0x7463656A626FLL, 0xE600000000000000, v19);

  if (!v53)
  {
    sub_1ABAC9310(v47, v13);
    goto LABEL_22;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v25 = v24;
  v43 = v51;
  v44 = v50;
  sub_1ABF230D4();
  v27 = v26;
  v28 = v48;
  sub_1ABF230E4();
  v29 = v49;
  v30 = v45;
  (*(v49 + 16))(v8, v28, v45);
  v31 = (*(v29 + 88))(v8, v30);
  if (v31 == *MEMORY[0x1E69DF528])
  {
    v32 = 0;
LABEL_27:
    (*(v29 + 8))(v28, v30);
    v39 = sub_1ABF25054();
    result = sub_1ABAC9310(v47, v13);
    v40 = v46;
    *(v46 + 8) = 0;
    *(v40 + 16) = 0;
    *v40 = v25;
    *(v40 + 24) = v27;
    *(v40 + 32) = v32;
    *(v40 + 33) = v52[0];
    *(v40 + 36) = *(v52 + 3);
    *(v40 + 40) = 0u;
    *(v40 + 56) = 0u;
    v41 = v43;
    *(v40 + 72) = v44;
    *(v40 + 80) = v41;
    *(v40 + 88) = 0x3FF0000000000000;
    *(v40 + 96) = v39 & 1;
    *(v40 + 97) = v50;
    *(v40 + 100) = *(&v50 + 3);
    v42 = MEMORY[0x1E69E7CC0];
    *(v40 + 104) = MEMORY[0x1E69E7CC0];
    *(v40 + 112) = v42;
    *(v40 + 120) = v42;
    *(v40 + 128) = v42;
    goto LABEL_18;
  }

  if (v31 == *MEMORY[0x1E69DF518])
  {
    v32 = 2;
    goto LABEL_27;
  }

  if (v31 == *MEMORY[0x1E69DF520])
  {
    v32 = 1;
    goto LABEL_27;
  }

  result = sub_1ABF24CD4();
  __break(1u);
  return result;
}

uint64_t sub_1ABB383B0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_1ABB383D8()
{
  sub_1ABB383B0();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABB3845C()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1ABB384B8(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D3000, &unk_1ABF3AA60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ABB38520(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1ABB385FC;

  return sub_1ABB37674(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1ABB385FC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1ABB386F0(uint64_t a1, void (*a2)(void *__return_ptr, uint64_t, void *))
{
  v3 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v34 = MEMORY[0x1E69E7CC0];
    sub_1ABADDFDC(0, v3, 0);
    v29 = v34;
    result = sub_1ABAB0E08(a1);
    v6 = result;
    v8 = v7;
    v9 = 0;
    v10 = a1 + 64;
    v25 = v7;
    v26 = v3;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
    {
      v11 = v6 >> 6;
      if ((*(v10 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_23;
      }

      if (*(a1 + 36) != v8)
      {
        goto LABEL_24;
      }

      v28 = v5;
      v12 = *(*(a1 + 48) + 8 * v6);
      v13 = (*(a1 + 56) + 136 * v6);
      memcpy(__dst, v13, sizeof(__dst));
      memcpy(&__src[1], v13, 0x88uLL);
      __src[0] = v12;
      sub_1ABB3E0C0(__dst, v33);
      a2(v33, v12, &__src[1]);
      memcpy(v32, __src, sizeof(v32));
      sub_1ABAB480C(v32, &qword_1EB4D30F8, &qword_1ABF3AC78);
      v14 = v29;
      v34 = v29;
      v16 = *(v29 + 16);
      v15 = *(v29 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1ABADDFDC((v15 > 1), v16 + 1, 1);
        v14 = v34;
      }

      *(v14 + 16) = v16 + 1;
      v29 = v14;
      result = memcpy((v14 + 328 * v16 + 32), v33, 0x145uLL);
      v17 = 1 << *(a1 + 32);
      if (v6 >= v17)
      {
        goto LABEL_25;
      }

      v10 = a1 + 64;
      v18 = *(a1 + 64 + 8 * v11);
      if ((v18 & (1 << v6)) == 0)
      {
        goto LABEL_26;
      }

      if (*(a1 + 36) != v8)
      {
        goto LABEL_27;
      }

      v19 = v18 & (-2 << (v6 & 0x3F));
      if (v19)
      {
        v17 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v11 << 6;
        v21 = v11 + 1;
        v22 = (a1 + 72 + 8 * v11);
        while (v21 < (v17 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_1ABAC933C(v6, v8, v28 & 1);
            v17 = __clz(__rbit64(v23)) + v20;
            goto LABEL_19;
          }
        }

        result = sub_1ABAC933C(v6, v8, v28 & 1);
      }

LABEL_19:
      v5 = 0;
      ++v9;
      v6 = v17;
      v8 = v25;
      if (v9 == v26)
      {
        return v29;
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
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t sub_1ABB389B8(char a1)
{
  result = 0x6E656B6F54796E61;
  switch(a1)
  {
    case 1:
      result = 0x786966657270;
      break;
    case 2:
      result = 0x6E656B6F546C6C61;
      break;
    case 3:
      result = 0x69666572506C6C61;
      break;
    case 4:
      result = 0x657361726870;
      break;
    case 5:
      result = 0x6850786966657270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABB38A78(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  switch(*(v3 + 34))
  {
    case 1:
      sub_1ABA7D220();
      sub_1ABF24AB4();
      sub_1ABA8BECC();
      MEMORY[0x1AC5A9410](a1[4], a1[5]);
      sub_1ABAA5730();
      sub_1ABAA21F0();
      sub_1ABA947E4();
      MEMORY[0x1AC5A9410](*a1, a1[1]);
      sub_1ABA93280();
      sub_1ABF24C54();
      MEMORY[0x1AC5A9410](0x204E4920544F4E20, 0xE900000000000028);
      if (*(v4 + 16))
      {
        sub_1ABA7AC28();
        do
        {
          sub_1ABA82724();
          sub_1ABAA4CE8();
          if (v22)
          {
            sub_1ABADDBD4();
          }

          sub_1ABAA196C();
        }

        while (!v23);
      }

      goto LABEL_20;
    case 2:
      sub_1ABA7D220();
      sub_1ABF24AB4();
      sub_1ABA8BECC();
      MEMORY[0x1AC5A9410](a1[4], a1[5]);
      sub_1ABAA5730();
      sub_1ABAA21F0();
      sub_1ABA947E4();
      MEMORY[0x1AC5A9410](*a1, a1[1]);
      sub_1ABA93280();
      sub_1ABF24C54();
      MEMORY[0x1AC5A9410](0x28204E4920, 0xE500000000000000);
      if (*(v4 + 16))
      {
        sub_1ABA7AC28();
        do
        {
          sub_1ABA82724();
          sub_1ABAA4CE8();
          if (v22)
          {
            sub_1ABADDBD4();
          }

          sub_1ABAA196C();
        }

        while (!v23);
      }

LABEL_20:
      sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
      sub_1ABAB47C4(&qword_1ED870668, &unk_1EB4D33D0, &unk_1ABF3A8C0);
      v38 = sub_1ABF23B54();
      v40 = v39;

      MEMORY[0x1AC5A9410](v38, v40);

      v7 = 41;
      goto LABEL_21;
    case 3:
      v25 = *(v4 + 16);
      v24 = *(v4 + 24);
      v27 = *(v4 + 32);
      v26 = *(v4 + 40);
      v28 = *(v4 + 48);
      v73 = *(v4 + 56);
      v75 = *(v4 + 64);
      v78 = *(v4 + 72);
      v80 = *(v4 + 80);
      LODWORD(v81) = *(v4 + 88);
      HIDWORD(v83) = *(v4 + 90);
      if (*(v4 + 50) >= 3u)
      {
        sub_1ABA7D220();
        sub_1ABF24AB4();

        sub_1ABA815A4();
        sub_1ABAA24EC();
        v58 = sub_1ABA90620();
        v66 = sub_1ABAA3F50(v58, v59, v60, v61, v62, v63, v64, v65, v70, v73, v75, v78, v80, v81, v83, a3);
        MEMORY[0x1AC5A9410](v66);

        sub_1ABAA48AC();
        v37 = v87;
      }

      else
      {
        v92 = *(v4 + 16);
        v94 = *(v4 + 24);
        v96 = *(v4 + 32);
        v98 = *(v4 + 40);
        v100 = *(v4 + 48);
        v29 = sub_1ABA90620();
        v37 = sub_1ABAA3F50(v29, v30, v31, v32, v33, v34, v35, v36, v70, v73, v75, v78, v80, v81, v83, a3);
      }

      if (v84 >= 3)
      {
        sub_1ABA7D220();
        sub_1ABF24AB4();

        sub_1ABA815A4();
        sub_1ABAA24EC();
        sub_1ABA96C04();
        v68 = sub_1ABA7EE60();
        MEMORY[0x1AC5A9410](v68);

        sub_1ABAA48AC();
        v51 = v87;
        v53 = v89;
      }

      else
      {
        sub_1ABA96C04();
        v51 = sub_1ABA7EE60();
        v53 = v67;
      }

      v90 = v37;
      v56 = 0x45535245544E490ALL;
      v57 = 0xEB000000000A5443;
      goto LABEL_32;
    case 4:
      v8 = *(v4 + 16);
      v9 = *(v4 + 24);
      v11 = *(v4 + 32);
      v10 = *(v4 + 40);
      v12 = *(v4 + 48);
      v72 = *(v4 + 56);
      v74 = *(v4 + 64);
      v79 = *(v4 + 72);
      v82 = *(v4 + 80);
      HIDWORD(v83) = *(v4 + 88);
      LODWORD(v76) = *(v4 + 90);
      if (*(v4 + 50) >= 3u)
      {
        sub_1ABA7D220();
        v21 = v41;
        sub_1ABF24AB4();

        v42 = sub_1ABA90620();
        v50 = sub_1ABAA3F50(v42, v43, v44, v45, v46, v47, v48, v49, a2, v72, v74, v76, v79, v82, v83, a3);
        MEMORY[0x1AC5A9410](v50);

        sub_1ABAA48AC();
      }

      else
      {
        v91 = *(v4 + 16);
        v93 = *(v4 + 24);
        v95 = *(v4 + 32);
        v97 = *(v4 + 40);
        v99 = *(v4 + 48);
        v13 = sub_1ABA90620();
        v21 = sub_1ABAA3F50(v13, v14, v15, v16, v17, v18, v19, v20, a2, v72, v74, v76, v79, v82, v83, a3);
      }

      if (v77 >= 3)
      {
        sub_1ABA7D220();
        sub_1ABF24AB4();

        sub_1ABA815A4();
        v88 = v54;
        sub_1ABA96C04();
        v55 = sub_1ABA7EE60();
        MEMORY[0x1AC5A9410](v55);

        sub_1ABAA48AC();
        v51 = v88;
        v53 = 0xEF28204D4F524620;
      }

      else
      {
        sub_1ABA96C04();
        v51 = sub_1ABA7EE60();
        v53 = v52;
      }

      v90 = v21;
      v56 = 0xA4E4F494E550ALL;
      v57 = 0xE700000000000000;
LABEL_32:
      MEMORY[0x1AC5A9410](v56, v57);
      MEMORY[0x1AC5A9410](v51, v53);

      break;
    default:
      v6 = v3[1];
      sub_1ABA7D220();
      sub_1ABF24AB4();
      sub_1ABA8BECC();
      MEMORY[0x1AC5A9410](a1[4], a1[5]);
      sub_1ABAA5730();
      sub_1ABAA21F0();
      sub_1ABA947E4();
      MEMORY[0x1AC5A9410](*a1, a1[1]);
      sub_1ABA93280();
      sub_1ABF24C54();
      MEMORY[0x1AC5A9410](656424224, 0xE400000000000000);

      MEMORY[0x1AC5A9410](v4, v6);

      v7 = 39;
LABEL_21:
      MEMORY[0x1AC5A9410](v7, 0xE100000000000000);
      break;
  }

  return v90;
}

uint64_t sub_1ABB3910C()
{
  v0 = sub_1ABF24D84();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1ABB39170@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1ABB3910C();
  *a2 = result;
  return result;
}

uint64_t sub_1ABB391A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1ABB389B8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1ABB3927C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1ABACF828();
}

uint64_t sub_1ABB39288(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69646465626D65 && a2 == 0xEF68637261655367;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65537369736F6E6BLL && a2 == 0xEC00000068637261;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000001ABF7F1A0 == a2;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x80000001ABF87F90 == a2;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000016 && 0x80000001ABF87FB0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1ABF25054();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1ABB39444(char a1)
{
  result = 0x6E69646465626D65;
  switch(a1)
  {
    case 1:
      result = 0x65537369736F6E6BLL;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABB39520(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E726574746170 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_1ABB39598()
{
  sub_1ABA7BCA8();
  v67 = v0;
  v65 = v1;
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4D3118, &qword_1ABF3AD40);
  v5 = sub_1ABA7BB64(v4);
  v63 = v6;
  v64 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7FBE0();
  v62 = v10;
  v11 = sub_1ABAD219C(&qword_1EB4D3120, &qword_1ABF3AD48);
  v12 = sub_1ABA7BB64(v11);
  v60 = v13;
  v61 = v12;
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1ABAD219C(&qword_1EB4D3128, &qword_1ABF3AD50);
  v18 = sub_1ABA7BB64(v17);
  v58 = v19;
  v59 = v18;
  v21 = *(v20 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v22);
  sub_1ABA7FBE0();
  v57 = v23;
  v24 = sub_1ABAD219C(&qword_1EB4D3130, &qword_1ABF3AD58);
  v25 = sub_1ABA7BB64(v24);
  v55 = v26;
  v56 = v25;
  v28 = *(v27 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v54 - v30;
  v32 = sub_1ABAD219C(&qword_1EB4D3138, &qword_1ABF3AD60);
  sub_1ABA7BB64(v32);
  v54 = v33;
  v35 = *(v34 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v54 - v37;
  v39 = sub_1ABAD219C(&qword_1EB4D3140, &qword_1ABF3AD68);
  sub_1ABA7BB64(v39);
  v66 = v40;
  v42 = *(v41 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v43);
  v44 = v3[4];
  sub_1ABA93E20(v3, v3[3]);
  sub_1ABB3E970();
  v45 = v65;
  sub_1ABF252E4();
  if (!(v45 >> 6))
  {
    sub_1ABB3EA6C();
    sub_1ABAA5F1C();
    sub_1ABB3EA18();
    v46 = v61;
    sub_1ABF24F84();
    v47 = sub_1ABAA2BD8();
    goto LABEL_5;
  }

  if (v45 >> 6 == 1)
  {
    sub_1ABB3E9C4();
    sub_1ABAA5F1C();
    sub_1ABB3EA18();
    v46 = v64;
    sub_1ABF24F84();
    v47 = sub_1ABA992D8();
LABEL_5:
    v48(v47, v46);
    v49 = sub_1ABA82DD8();
    v50(v49);
    goto LABEL_12;
  }

  if (v45 == 128)
  {
    sub_1ABB3EB68();
    sub_1ABAA5F1C();
    (*(v54 + 8))(v38, v32);
  }

  else if (v45 == 129)
  {
    sub_1ABB3EB14();
    sub_1ABAA5F1C();
    (*(v55 + 8))(v31, v56);
  }

  else
  {
    sub_1ABB3EAC0();
    v51 = v57;
    sub_1ABAA5F1C();
    (*(v58 + 8))(v51, v59);
  }

  v52 = sub_1ABA82DD8();
  v53(v52);
LABEL_12:
  sub_1ABA7BC90();
}

uint64_t sub_1ABB39A6C(uint64_t a1, unsigned __int8 a2)
{
  if (!(a2 >> 6))
  {
    MEMORY[0x1AC5AA8A0](3);
    v3 = a2;
    goto LABEL_5;
  }

  if (a2 >> 6 == 1)
  {
    MEMORY[0x1AC5AA8A0](4);
    v3 = a2 & 0x3F;
LABEL_5:
    sub_1ABB389B8(v3);
    sub_1ABF23D34();
  }

  if (a2 == 128)
  {
    v5 = 0;
  }

  else if (a2 == 129)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  return MEMORY[0x1AC5AA8A0](v5);
}

uint64_t sub_1ABB39B24(unsigned __int8 a1)
{
  sub_1ABF25234();
  sub_1ABB39A6C(v3, a1);
  return sub_1ABF25294();
}

void sub_1ABB39B6C()
{
  sub_1ABA7BCA8();
  v100 = v0;
  v2 = v1;
  v92 = sub_1ABAD219C(&qword_1EB4D3150, &qword_1ABF3AD70);
  sub_1ABA7BB64(v92);
  v94 = v3;
  v5 = *(v4 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7FBE0();
  v98 = v7;
  v91 = sub_1ABAD219C(&qword_1EB4D3158, &qword_1ABF3AD78);
  sub_1ABA7BB64(v91);
  v93 = v8;
  v10 = *(v9 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7FBE0();
  v97 = v12;
  v96 = sub_1ABAD219C(&qword_1EB4D3160, &qword_1ABF3AD80);
  sub_1ABA7BB64(v96);
  v90 = v13;
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7FBE0();
  v95 = v17;
  v18 = sub_1ABAD219C(&qword_1EB4D3168, &qword_1ABF3AD88);
  v19 = sub_1ABA7BB64(v18);
  v88 = v20;
  v89 = v19;
  v22 = *(v21 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v81 - v24;
  v26 = sub_1ABAD219C(&qword_1EB4D3170, &qword_1ABF3AD90);
  sub_1ABA7BB64(v26);
  v87 = v27;
  v29 = *(v28 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v81 - v31;
  v33 = sub_1ABAD219C(&qword_1EB4D3178, &unk_1ABF3AD98);
  sub_1ABA7BB64(v33);
  v35 = v34;
  v37 = *(v36 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v81 - v39;
  v41 = v2[3];
  v42 = v2[4];
  v99 = v2;
  sub_1ABA93E20(v2, v41);
  sub_1ABB3E970();
  v43 = v100;
  sub_1ABF252C4();
  if (v43)
  {
    goto LABEL_9;
  }

  v84 = v26;
  v85 = v32;
  v86 = v25;
  v44 = v96;
  v100 = v35;
  v45 = sub_1ABF24EA4();
  sub_1ABAD4EA4(v45, 0);
  if (v47 == v48 >> 1)
  {
LABEL_8:
    v58 = sub_1ABF24B44();
    sub_1ABA7BD00();
    v60 = v59;
    v61 = *(sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050) + 48);
    *v60 = &type metadata for CandidateGenerationAlgorithm;
    sub_1ABF24DA4();
    sub_1ABF24B34();
    (*(*(v58 - 8) + 104))(v60, *MEMORY[0x1E69E6AF8], v58);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v100 + 8))(v40, v33);
LABEL_9:
    v62 = v99;
LABEL_10:
    sub_1ABA84B54(v62);
    sub_1ABA7BC90();
    return;
  }

  v83 = v40;
  if (v47 < (v48 >> 1))
  {
    v49 = v33;
    v82 = *(v46 + v47);
    sub_1ABAD4E90(v47 + 1);
    v51 = v50;
    v53 = v52;
    swift_unknownObjectRelease();
    if (v51 == v53 >> 1)
    {
      switch(v82)
      {
        case 1:
          sub_1ABB3EB14();
          sub_1ABAA51FC();
          swift_unknownObjectRelease();
          v73 = sub_1ABA992D8();
          v74(v73);
          v75 = sub_1ABA992C8();
          v76(v75, v33);
          goto LABEL_15;
        case 2:
          sub_1ABB3EAC0();
          v64 = v95;
          sub_1ABAA51FC();
          swift_unknownObjectRelease();
          (*(v90 + 8))(v64, v44);
          v65 = sub_1ABA992C8();
          v66(v65, v49);
          goto LABEL_15;
        case 3:
          sub_1ABB3EA6C();
          v67 = v33;
          v68 = v83;
          sub_1ABF24D94();
          sub_1ABB3EBBC();
          v71 = v91;
          sub_1ABF24E64();
          v72 = v100;
          swift_unknownObjectRelease();
          v79 = sub_1ABAA2BD8();
          v80(v79, v71);
          (*(v72 + 8))(v68, v67);
          goto LABEL_15;
        case 4:
          sub_1ABB3E9C4();
          v63 = v83;
          sub_1ABF24D94();
          sub_1ABB3EBBC();
          v69 = v92;
          sub_1ABF24E64();
          v70 = v100;
          swift_unknownObjectRelease();
          v77 = sub_1ABA992D8();
          v78(v77, v69);
          (*(v70 + 8))(v63, v49);
          v62 = v99;
          goto LABEL_10;
        default:
          sub_1ABB3EB68();
          sub_1ABAA51FC();
          swift_unknownObjectRelease();
          v54 = sub_1ABA992D8();
          v55(v54, v84);
          v56 = sub_1ABA992C8();
          v57(v56, v33);
LABEL_15:
          v62 = v99;
          break;
      }

      goto LABEL_10;
    }

    v40 = v83;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1ABB3A3E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB39288(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABB3A410@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABB3943C();
  *a1 = result;
  return result;
}

uint64_t sub_1ABB3A438(uint64_t a1)
{
  v2 = sub_1ABB3E970();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB3A474(uint64_t a1)
{
  v2 = sub_1ABB3E970();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB3A4B0(uint64_t a1)
{
  v2 = sub_1ABB3EB68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB3A4EC(uint64_t a1)
{
  v2 = sub_1ABB3EB68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB3A528(uint64_t a1)
{
  v2 = sub_1ABB3EB14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB3A564(uint64_t a1)
{
  v2 = sub_1ABB3EB14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB3A5A0(uint64_t a1)
{
  v2 = sub_1ABB3EAC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB3A5DC(uint64_t a1)
{
  v2 = sub_1ABB3EAC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB3A61C(uint64_t a1)
{
  v2 = sub_1ABB3E9C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB3A658(uint64_t a1)
{
  v2 = sub_1ABB3E9C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB3A694(uint64_t a1)
{
  v2 = sub_1ABB3EA6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB3A6D0(uint64_t a1)
{
  v2 = sub_1ABB3EA6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1ABB3A70C(_BYTE *a1@<X8>)
{
  sub_1ABB39B6C();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1ABB3A77C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1ABF25234();
  a4(v8, v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABB3A7C8(unsigned __int8 a1, unsigned __int8 a2)
{
  if (!(a1 >> 6))
  {
    if (a2 <= 0x3Fu)
    {
      sub_1ABA9773C();
      v10 = v9;
      v7 = v2;
      switch(v10)
      {
        case 1:
          v7 = sub_1ABAB5C48();
          break;
        case 2:
          v7 = sub_1ABAA4444();
          break;
        case 3:
          v7 = sub_1ABA8E050();
          break;
        case 4:
          v7 = sub_1ABA8B09C();
          break;
        case 5:
          v7 = sub_1ABA83F64();
          break;
        default:
          break;
      }

      v12 = 0xE800000000000000;
      switch(v8)
      {
        case 1:
LABEL_27:
          v12 = 0xE600000000000000;
          v2 = 0x786966657270;
          break;
        case 2:
LABEL_29:
          v2 = 0x6E656B6F546C6C61;
          v12 = 0xE900000000000073;
          break;
        case 3:
LABEL_30:
          v2 = 0x69666572506C6C61;
          v12 = 0xEB00000000736578;
          break;
        case 4:
LABEL_28:
          v12 = 0xE600000000000000;
          v2 = 0x657361726870;
          break;
        case 5:
LABEL_31:
          v2 = 0x6850786966657270;
          v12 = 0xEC00000065736172;
          break;
        default:
          goto LABEL_32;
      }

      goto LABEL_32;
    }

    return 0;
  }

  if (a1 >> 6 != 1)
  {
    if (a1 == 128)
    {
      if (a2 == 128)
      {
        return 1;
      }
    }

    else if (a1 == 129)
    {
      if (a2 == 129)
      {
        return 1;
      }
    }

    else if (a2 == 130)
    {
      return 1;
    }

    return 0;
  }

  if ((a2 & 0xC0) != 0x40)
  {
    return 0;
  }

  sub_1ABA9773C();
  v4 = v3 & 0x3F;
  v6 = v5 & 0x3F;
  v7 = v2;
  switch(v6)
  {
    case 1:
      v7 = sub_1ABAB5C48();
      break;
    case 2:
      v7 = sub_1ABAA4444();
      break;
    case 3:
      v7 = sub_1ABA8E050();
      break;
    case 4:
      v7 = sub_1ABA8B09C();
      break;
    case 5:
      v7 = sub_1ABA83F64();
      break;
    default:
      break;
  }

  v12 = 0xE800000000000000;
  switch(v4)
  {
    case 1:
      goto LABEL_27;
    case 2:
      goto LABEL_29;
    case 3:
      goto LABEL_30;
    case 4:
      goto LABEL_28;
    case 5:
      goto LABEL_31;
    default:
      break;
  }

LABEL_32:
  if (v7 != v2 || v12 != 0xE800000000000000)
  {
    v14 = sub_1ABF25054();

    return v14 & 1;
  }

  return 1;
}

void *sub_1ABB3AA24@<X0>(void *a1@<X8>)
{
  v3 = v1[20];
  v4 = v3;
  v5 = v1[21];
  v6 = v1[22];
  v7 = v1[23];
  if (v3 == 1)
  {
    ContactFinder.init()();
    if (v8)
    {

      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
    }

    else
    {
      v4 = v14;
      v5 = v15;
      v6 = v16;
      v7 = v17;
    }

    v12 = v1[21];
    v13 = v1[20];
    v10 = v1[23];
    v11 = v1[22];
    v1[20] = v4;
    v1[21] = v5;
    v1[22] = v6;
    v1[23] = v7;
    sub_1ABB3E1D8(v4);
    sub_1ABB3E048(v13);
  }

  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_1ABB3E238(v3);
}

void sub_1ABB3AB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1ABA7BCA8();
  v162 = v24;
  v163 = v23;
  v25 = v22;
  v164 = v26;
  v149 = v27;
  v161 = v28;
  v169 = v29;
  v158 = v30;
  v165 = v31;
  v33 = v32;
  v34 = sub_1ABAD219C(&qword_1EB4D3100, &qword_1ABF3AC80);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  sub_1ABA7AC18();
  v38 = v36 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v143 = v142 - v40;
  v147 = type metadata accessor for SearchableViewDatabaseTable();
  v41 = sub_1ABA7BBB0(v147);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  sub_1ABA7AC18();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v44);
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v45);
  v142[0] = v142 - v46;
  v155 = sub_1ABF23744();
  v47 = sub_1ABA7BB64(v155);
  v49 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v47);
  sub_1ABA7AC18();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v52);
  v54 = v142 - v53;
  v55 = sub_1ABF237F4();
  v56 = sub_1ABA7BB64(v55);
  v58 = v57;
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v56);
  sub_1ABA7BC58();
  v63 = v62 - v61;
  v152 = sub_1ABF23774();
  v64 = sub_1ABA7BB64(v152);
  v151 = v65;
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v64);
  sub_1ABA7BC58();
  v70 = v69 - v68;
  v150 = type metadata accessor for LogSignpost();
  v71 = sub_1ABA7BBB0(v150);
  v73 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v71);
  sub_1ABA7BC58();
  v157 = (v75 - v74);
  v76 = v33[1];
  v148 = *v33;
  v144 = v76;
  v145 = *(v33 + 16);
  v154 = *(v33 + 17);
  v160 = *(v33 + 18);
  *(v25 + 24) = 0u;
  *(v25 + 40) = 0u;
  *(v25 + 56) = 0;
  *(v25 + 160) = 1;
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;
  *(v25 + 184) = 0;
  v146 = v25 + 24;
  if (qword_1ED871F20 != -1)
  {
    swift_once();
  }

  v156 = a22;
  v77 = sub_1ABA7AA24(v55, qword_1ED871EF8);
  (*(v58 + 16))(v63, v77, v55);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v78 = sub_1ABF23764();
  v79 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    v80 = v38;
    v81 = v25;
    v82 = sub_1ABA88598();
    *v82 = 0;
    v83 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v78, v79, v83, "ECR.CanGen.init", "", v82, 2u);
    v25 = v81;
    v38 = v80;
    sub_1ABA7BC34();
  }

  v159 = a21;

  v84 = v155;
  (*(v49 + 16))(v153, v54, v155);
  v85 = sub_1ABF237B4();
  v86 = *(v85 + 48);
  v87 = *(v85 + 52);
  swift_allocObject();
  v88 = sub_1ABF237A4();
  (*(v49 + 8))(v54, v84);
  v89 = v157;
  *v157 = "ECR.CanGen.init";
  *(v89 + 8) = 15;
  *(v89 + 16) = 2;
  *(v89 + 24) = v88;
  (*(v151 + 32))(v89 + *(v150 + 24), v70, v152);
  v90 = v154;
  *(v25 + 16) = v154;
  *(v25 + 17) = v160;
  v91 = v158;
  v92 = v158[1];
  *(v25 + 64) = *v158;
  *(v25 + 80) = v92;
  *(v25 + 96) = *(v91 + 32);
  sub_1ABB3E5B4(v169, v25 + 112, &qword_1EB4D3098, &unk_1ABF3AC28);
  v93 = v156;
  *(v25 + 152) = v156;
  if (!(v165 >> 6))
  {
    v103 = v143;
    sub_1ABB3E5B4(v164, v143, &qword_1EB4D3100, &qword_1ABF3AC80);
    v104 = sub_1ABA7E1E0(v103, 1, v147);
    v95 = v162;
    if (v104 == 1)
    {
      v105 = sub_1ABA97EF0();
      sub_1ABB3E5B4(v105, v106, v107, v108);
      swift_unknownObjectRetain();
      sub_1ABA96934();
      sub_1ABAA14A4();
      sub_1ABAB480C(v103, &qword_1EB4D3100, &qword_1ABF3AC80);
    }

    else
    {
      sub_1ABB34574(v103, v142[0]);
      sub_1ABAA1700();
      v123 = sub_1ABA97EF0();
      sub_1ABB3E5B4(v123, v124, v125, v126);
      swift_unknownObjectRetain();
      sub_1ABA96934();
      sub_1ABA9A2C4();
      v127 = type metadata accessor for TextMatchingSearchCandidateRetriever();
      v128 = *(v127 + 48);
      v129 = *(v127 + 52);
      v130 = swift_allocObject();
      v131 = sub_1ABB34988(v38, v149, v166, v165);
      v167 = v127;
      v168 = &off_1F20793F0;
      sub_1ABA83680(v131);
      sub_1ABA80770();
      sub_1ABB3E6D0(v166, v130);
      swift_endAccess();
    }

    v94 = v161;
    goto LABEL_20;
  }

  v94 = v161;
  v95 = v162;
  if (v165 >> 6 == 1)
  {
    v96 = sub_1ABA97EF0();
    sub_1ABB3E5B4(v96, v97, v98, v99);
    swift_unknownObjectRetain();
    sub_1ABAA14A4();
    sub_1ABB3E5B4(v95, v38, &qword_1EB4D3100, &qword_1ABF3AC80);
    if (sub_1ABA7E1E0(v38, 1, v147) == 1)
    {
      sub_1ABA96934();
      sub_1ABAB480C(v38, &qword_1EB4D3100, &qword_1ABF3AC80);
      sub_1ABA97A04();
      sub_1ABA7BD00();
      sub_1ABAA1B90();
      sub_1ABA8FE80(v101, v100 | 0x18);
      v163 = v102;
      swift_willThrow();
      sub_1ABB3B594(v93);
      swift_unknownObjectRelease();

LABEL_23:
      sub_1ABAB480C(v91, &qword_1EB4D3108, &qword_1ABF3AC88);
      sub_1ABA95230(v95);
      sub_1ABA95230(v164);
      sub_1ABAB480C(v169, &qword_1EB4D3098, &unk_1ABF3AC28);
      sub_1ABA8E6AC();
      v135 = v93;
      goto LABEL_24;
    }

    sub_1ABB34574(v38, v142[1]);
    sub_1ABAA1700();
    sub_1ABA96934();
    sub_1ABA9A2C4();
    v118 = type metadata accessor for SubgraphMatchingSearchCandidateRetriever();
    v119 = *(v118 + 48);
    v120 = *(v118 + 52);
    v121 = swift_allocObject();
    v122 = sub_1ABB30290(v38, v166, v165 & 0x3F);
    v167 = v118;
    v168 = &off_1F2095C18;
    v94 = v161;
    sub_1ABA83680(v122);
    sub_1ABA80770();
    goto LABEL_19;
  }

  v109 = sub_1ABA97EF0();
  if (v113 != 128)
  {
    sub_1ABB3E5B4(v109, v110, v111, v112);
    swift_unknownObjectRetain();
    sub_1ABA96934();
    sub_1ABAA14A4();
    if (!v94)
    {
      sub_1ABA97A04();
      sub_1ABA7BD00();
      sub_1ABAA1B90();
      sub_1ABA8FE80(v139, v140);
      v163 = v141;
      swift_willThrow();
      sub_1ABB3B594(v93);
      swift_unknownObjectRelease();

      goto LABEL_23;
    }

    v121 = type metadata accessor for KnosisCandidateRetriever();
    v132 = swift_allocObject();
    *(v132 + 16) = v94;
    v167 = v121;
    v168 = &off_1F20806C8;
    v166[0] = v132;
    sub_1ABA80770();
    v133 = v94;
LABEL_19:
    sub_1ABB3E6D0(v166, v121);
    swift_endAccess();
    goto LABEL_20;
  }

  sub_1ABB3E5B4(v109, v110, v111, v112);
  swift_unknownObjectRetain();
  sub_1ABAA14A4();
  v114 = v159;
  if (!v159)
  {
    sub_1ABA96934();
    sub_1ABA97A04();
    sub_1ABA7BD00();
    sub_1ABAA1B90();
    sub_1ABA8FE80(v137, v136 | 3);
    v163 = v138;
    swift_willThrow();
    sub_1ABB3B594(v93);
    swift_unknownObjectRelease();

    v95 = v162;
    goto LABEL_23;
  }

  v115 = type metadata accessor for VectorSearchCandidateRetriever();
  v116 = swift_allocObject();
  v117 = v148;
  *(v116 + 16) = v114;
  *(v116 + 24) = v117;
  *(v116 + 32) = v144;
  *(v116 + 40) = v145;
  *(v116 + 41) = v90;
  *(v116 + 42) = v160;
  v167 = v115;
  v168 = &off_1F207C2D0;
  v166[0] = v116;
  sub_1ABA80770();

  sub_1ABB3E6D0(v166, v115);
  swift_endAccess();
  v95 = v162;
LABEL_20:
  sub_1ABB3B594(v89);
  swift_unknownObjectRelease();

  sub_1ABAB480C(v91, &qword_1EB4D3108, &qword_1ABF3AC88);
  sub_1ABA95230(v95);
  sub_1ABA95230(v164);
  sub_1ABAB480C(v169, &qword_1EB4D3098, &unk_1ABF3AC28);
  sub_1ABA8E6AC();
  v135 = v89;
LABEL_24:
  sub_1ABB3E678(v135, v134);
  sub_1ABA7BC90();
}

uint64_t sub_1ABB3B594(uint64_t a1)
{
  v2 = sub_1ABF23784();
  v24 = *(v2 - 8);
  v3 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1ABF23744();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for LogSignpost();
  v12 = *a1;
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = a1 + *(v11 + 24);
  v16 = sub_1ABF23764();
  sub_1ABF23794();
  v23 = sub_1ABF24704();
  result = sub_1ABF247D4();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v7 + 8))(v10, v6);
  }

  if ((v13 & 1) == 0)
  {
    if (v12)
    {
LABEL_9:

      sub_1ABF237C4();

      v18 = v24;
      if ((*(v24 + 88))(v5, v2) == *MEMORY[0x1E69E93E8])
      {
        v19 = "[Error] Interval already ended";
      }

      else
      {
        (*(v18 + 8))(v5, v2);
        v19 = "";
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v16, v23, v21, v12, v19, v20, 2u);
      MEMORY[0x1AC5AB8B0](v20, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v12 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v12 & 0xFFFFF800) != 0xD800)
  {
    if (v12 >> 16 <= 0x10)
    {
      v12 = &v25;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_1ABB3B83C(void *__src)
{
  memcpy(v2, __src, 0x49uLL);
  type metadata accessor for VectorSearchCandidateRetriever();
  return sub_1ABB3740C(v2);
}

void sub_1ABB3B88C()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  memcpy(v102, v16, 0x49uLL);
  v85 = v15[1];
  v87 = *v15;
  v17 = *(v15 + 34);
  v18 = *(v15 + 16);
  swift_beginAccess();
  sub_1ABB3E5B4(v3 + 24, __dst, &qword_1EB4D3090, &qword_1ABF3AC20);
  if (*&__dst[24])
  {
    v84 = v9;
    v19 = v18 | (v17 << 16);
    sub_1ABA946C0(__dst, v91);
    v20 = v91[3];
    v21 = v13;
    v22 = v91[4];
    sub_1ABA93E20(v91, v91[3]);
    memcpy(__dst, v102, 0x49uLL);
    *__src = v87;
    *&__src[16] = v85;
    __src[34] = BYTE2(v19);
    *&__src[32] = v19;
    v23 = *(v22 + 8);
    v82 = v22;
    v13 = v21;
    v24 = v23(__dst, __src, v21 & 1, v11 & 1, *(v3 + 152), v7, v5, v20, v82);
    v2 = v1;
    sub_1ABA84B54(v91);
    if (v1)
    {
      goto LABEL_39;
    }

    if ((v84 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  sub_1ABAB480C(__dst, &qword_1EB4D3090, &qword_1ABF3AC20);
  if (v9)
  {
    v24 = MEMORY[0x1E69E7CC0];
LABEL_7:
    if ((v13 & 1) != 0 && !*(v24 + 16))
    {
      if (qword_1ED871B18 != -1)
      {
        goto LABEL_53;
      }

      while (1)
      {
        v37 = sub_1ABF237F4();
        sub_1ABA7AA24(v37, qword_1ED871B20);
        v38 = sub_1ABF237D4();
        v39 = sub_1ABF24664();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = sub_1ABA88598();
          *v40 = 0;
          _os_log_impl(&dword_1ABA78000, v38, v39, "No entities found for query. Executing backup path and querying stores directly", v40, 2u);
          sub_1ABA7BC34();
        }

        sub_1ABB3AA24(__dst);
        v41 = *__dst;
        if (!*__dst)
        {
          break;
        }

        v42 = v102[1];
        if (!v102[1])
        {
          v64 = sub_1ABF237D4();
          v65 = sub_1ABF24654();
          if (os_log_type_enabled(v64, v65))
          {
            *sub_1ABA88598() = 0;
            sub_1ABAA2FB8();
            _os_log_impl(v66, v67, v68, v69, v70, 2u);
            sub_1ABA7BC34();
          }

          sub_1ABB3E058(v41);
          goto LABEL_36;
        }

        v43 = v102[0];
        v83 = *__dst;
        ContactFinder.search(_:)(v102[0], v102[1]);
        if (v2)
        {
          v45 = v2;
          v46 = sub_1ABF237D4();
          v47 = sub_1ABF24664();

          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            v49 = swift_slowAlloc();
            *v48 = 138412290;
            v50 = v2;
            v51 = _swift_stdlib_bridgeErrorToNSError();
            *(v48 + 4) = v51;
            *v49 = v51;
            sub_1ABAA2FB8();
            _os_log_impl(v52, v53, v54, v55, v56, 0xCu);
            sub_1ABAB480C(v49, &unk_1EB4D57F0, &qword_1ABF390C0);
            sub_1ABA7BC34();
            sub_1ABA7BC34();
          }

          sub_1ABB3E058(v83);

          goto LABEL_37;
        }

        v72 = v44;
        v86 = v42;
        v2 = 0;
        v88 = *(v44 + 16);
        v28 = MEMORY[0x1E69E7CC0];
        v73 = (v44 + 80);
        v103 = v43;
        while (1)
        {
          if (v88 == v2)
          {
            sub_1ABB3E058(v83);

            goto LABEL_38;
          }

          if (v2 >= *(v72 + 16))
          {
            break;
          }

          v75 = *(v73 - 1);
          v74 = *v73;
          v76 = *(v73 - 16);
          v77 = *(v73 - 3);
          v93 = *(v73 - 6);
          v94 = *(v73 - 5);
          v95 = v77;
          v96 = v76;
          v97 = v75;
          v98 = v74;

          sub_1ABB3C12C(&v93, v43, v86, __dst);

          memcpy(v91, __dst, 0x145uLL);
          if (sub_1ABB373A8(v91) == 1)
          {
            memcpy(__src, __dst, sizeof(__src));
            sub_1ABAB480C(__src, &qword_1EB4D30A0, &qword_1ABF3AC38);
          }

          else
          {
            memcpy(__src, __dst, sizeof(__src));
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v79 = *(v28 + 16);
              sub_1ABAD9BE8();
              v28 = v80;
            }

            v78 = *(v28 + 16);
            if (v78 >= *(v28 + 24) >> 1)
            {
              sub_1ABAD9BE8();
              v28 = v81;
            }

            memcpy(v89, __src, 0x145uLL);
            *(v28 + 16) = v78 + 1;
            memcpy((v28 + 328 * v78 + 32), v89, 0x145uLL);
            v43 = v103;
          }

          v73 += 7;
          ++v2;
        }

        __break(1u);
LABEL_53:
        swift_once();
      }

      v57 = sub_1ABF237D4();
      v58 = sub_1ABF24664();
      if (os_log_type_enabled(v57, v58))
      {
        *sub_1ABA88598() = 0;
        sub_1ABAA2FB8();
        _os_log_impl(v59, v60, v61, v62, v63, 2u);
        sub_1ABA7BC34();
      }

      goto LABEL_37;
    }

LABEL_9:
    v25 = *(v3 + 17);
    v26 = *(v3 + 16);
    if ((v25 & 1) != 0 || *(v3 + 16))
    {
      v36 = *(v3 + 80);
      v101[0] = *(v3 + 64);
      v101[1] = v36;
      v101[2] = *(v3 + 96);
      v28 = sub_1ABB3C9A4(v24, v101, v26 & 1u | ((v25 & 1) == 0), v25);

      if (v2)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    v27 = *(v24 + 16);
    if (v27)
    {
      v100 = MEMORY[0x1E69E7CC0];
      sub_1ABADDFDC(0, v27, 0);
      v28 = v100;
      sub_1ABB3E0B8(__src);
      v29 = v27 - 1;
      for (i = 32; ; i += 136)
      {
        memcpy(v89, (v24 + i), 0x88uLL);
        memcpy(v91, (v24 + i), 0x88uLL);
        memcpy(&v91[17], __src, 0xB8uLL);
        v99 = 1;
        memcpy(__dst, v91, 0x140uLL);
        sub_1ABB3E0C0(v89, &v93);
        v100 = v28;
        v32 = *(v28 + 16);
        v31 = *(v28 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_1ABADDFDC((v31 > 1), v32 + 1, 1);
          v28 = v100;
        }

        *(v28 + 16) = v32 + 1;
        v33 = v28 + 328 * v32;
        memcpy((v33 + 32), __dst, 0x140uLL);
        *(v33 + 352) = 0;
        *(v33 + 356) = 1;
        if (!v29)
        {
          break;
        }

        --v29;
      }

      goto LABEL_38;
    }

LABEL_36:

LABEL_37:
    v28 = MEMORY[0x1E69E7CC0];
LABEL_38:
    type metadata accessor for PopulatedCandidatesForMention();
    v71 = swift_allocObject();
    *(v71 + 16) = v28;
    memcpy((v71 + 24), v102, 0x49uLL);
    sub_1ABB3E11C(v102, __dst);
    goto LABEL_39;
  }

  sub_1ABB32C5C();
  sub_1ABA7BD00();
  sub_1ABAA1B90();
  sub_1ABA8FE80(v34, v35);
  swift_willThrow();
LABEL_39:
  sub_1ABA7BC90();
}

void *sub_1ABB3C12C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v69 = a2;
  v70 = a3;
  v7 = sub_1ABF23924();
  v72 = *(v7 - 8);
  v73 = v7;
  v8 = *(v72 + 8);
  MEMORY[0x1EEE9AC00](v7);
  v71 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1ABF23914();
  v11 = *(v10 - 8);
  v79 = v10;
  v80 = v11;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v67 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v81 = &v62 - v15;
  v16 = sub_1ABF23C54();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a1 + 8);
  v22 = *(a1 + 16);
  v24 = *(a1 + 24);
  v25 = *(a1 + 32);
  v26 = *(a1 + 48);
  v68 = *(a1 + 40);
  v85 = v4;
  if (!v23)
  {
    if (!v24)
    {
      sub_1ABB3E178(v84);
      v61 = a4;
      return memcpy(v61, v84, 0x145uLL);
    }

    v77 = v19;
    v78 = v18;
    v64 = v25;
    v66 = v26;
    v76 = a4;
    v84[0] = v22;
    v84[1] = v24;

    v75 = 0xE800000000000000;
    v65 = 0x6E6F737265504850;
    MEMORY[0x1AC5A9410](0x6E6F737265504850, 0xE800000000000000);
    v28 = v84[0];
    v29 = v84[1];
    v74 = MEMORY[0x1E69E7CC0];
    goto LABEL_6;
  }

  v77 = v19;
  v78 = v18;
  v63 = v22;
  v64 = v25;
  v66 = v26;
  v75 = 0xE900000000000074;
  v76 = a4;
  v84[0] = *a1;
  v27 = v84[0];
  v84[1] = v23;
  swift_bridgeObjectRetain_n();
  v65 = 0x6361746E6F434E43;
  MEMORY[0x1AC5A9410](0x6361746E6F434E43, 0xE900000000000074);
  v28 = v84[0];
  v29 = v84[1];
  sub_1ABAD219C(&qword_1EB4D10F0, &qword_1ABF3A5C0);
  v30 = swift_allocObject();
  v74 = v30;
  *(v30 + 16) = xmmword_1ABF34740;
  *(v30 + 32) = v27;
  *(v30 + 40) = v23;
  if (v24)
  {
    v22 = v63;
LABEL_6:
    swift_bridgeObjectRetain_n();
    sub_1ABAD219C(&qword_1EB4D10F0, &qword_1ABF3A5C0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1ABF34740;
    *(v31 + 32) = v22;
    *(v31 + 40) = v24;
    goto LABEL_8;
  }

  swift_bridgeObjectRetain_n();
  v31 = MEMORY[0x1E69E7CC0];
LABEL_8:

  sub_1ABF23C44();
  v32 = sub_1ABF23C14();
  v34 = v33;

  (*(v77 + 8))(v21, v78);

  if (v34 >> 60 == 15)
  {
    v35 = v28;

    if (qword_1ED871B18 != -1)
    {
      swift_once();
    }

    v36 = sub_1ABF237F4();
    sub_1ABA7AA24(v36, qword_1ED871B20);

    v37 = sub_1ABF237D4();
    v38 = sub_1ABF24664();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v84[0] = v40;
      *v39 = 136380675;
      v41 = sub_1ABADD6D8(v35, v29, v84);

      *(v39 + 4) = v41;
      _os_log_impl(&dword_1ABA78000, v37, v38, "Failed to encode identifier as UTF8 data: %{private}s", v39, 0xCu);
      sub_1ABA84B54(v40);
      MEMORY[0x1AC5AB8B0](v40, -1, -1);
      MEMORY[0x1AC5AB8B0](v39, -1, -1);
    }

    else
    {
    }

    sub_1ABB3E178(v84);
    v61 = v76;
    return memcpy(v61, v84, 0x145uLL);
  }

  v77 = v31;
  v78 = v28;
  sub_1ABB3E180();
  v42 = v71;
  v43 = v73;
  sub_1ABF238F4();
  sub_1ABB0DBF0(v32, v34);
  v44 = v85;
  sub_1ABE70664(v32, v34);
  v85 = v44;
  sub_1ABAC9310(v32, v34);
  sub_1ABF238E4();
  (*(v72 + 1))(v42, v43);
  v73 = v32;
  if (!_Records_GDEntityClass_records)
  {
    __break(1u);
    goto LABEL_32;
  }

  sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x270), *(_Records_GDEntityClass_records + 0x278), *(_Records_GDEntityClass_records + 0x280), v84);
  v71 = v84[1];
  v45 = LOBYTE(v84[4]);
  v46 = v80;
  v47 = v67;
  v48 = v79;
  (*(v80 + 16))(v67, v81, v79);
  sub_1ABAD219C(&qword_1EB4D30A8, &qword_1ABF3F400);
  v49 = v85;
  sub_1ABF23904();
  v85 = v49;
  if (v84[1])
  {
LABEL_32:
    result = sub_1ABF24CD4();
    __break(1u);
    return result;
  }

  v63 = v29;
  v50 = v84[0];
  v51 = 0xD000000000000012;
  v52 = *(v46 + 8);
  v80 = v46 + 8;
  v72 = v52;
  v52(v47, v48);

  v71 = ((v50 >> 9) | (v45 << 56));
  if (v64)
  {
    v53 = 0x80000001ABF87790;
  }

  else
  {
    v51 = 0;
    v53 = 0;
  }

  if (v64)
  {
    v54 = v53;
  }

  else
  {
    v54 = 0xE000000000000000;
  }

  if (0x80000001ABF87790 == v54)
  {
    v55 = v64;
  }

  else
  {
    v55 = 0;
  }

  v56 = 1;
  if ((v55 & 1) == 0)
  {
    v56 = sub_1ABF25054();
  }

  v57 = v68;

  v58 = v66;

  v59 = v70;

  sub_1ABAC9310(v73, v34);
  v72(v81, v79);
  sub_1ABB3E0B8(v83);
  memcpy(&v84[17], v83, 0xB8uLL);
  v82 = 1;
  v84[0] = v71;
  v84[1] = v51;
  v84[2] = v53;
  v84[3] = 0x3FF0000000000000;
  LOBYTE(v84[4]) = 3;
  v84[5] = v78;
  v84[6] = v63;
  v84[7] = v65;
  v84[8] = v75;
  v84[9] = v69;
  v84[10] = v59;
  v84[11] = 0x3FF0000000000000;
  LOBYTE(v84[12]) = v56 & 1;
  v84[13] = v57;
  v84[14] = v74;
  v84[15] = v77;
  v84[16] = v58;
  LODWORD(v84[40]) = 0;
  BYTE4(v84[40]) = 1;
  nullsub_1(v84);
  return memcpy(v76, v84, 0x145uLL);
}

uint64_t sub_1ABB3C9A4(uint64_t a1, void *a2, char a3, char a4)
{
  v5 = v4;
  v7 = (a2 + 2);
  v64 = a2[1];
  v66 = a2[2];
  v8 = a2[5];
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  v62 = v9;
  if (v9)
  {
    v70[0] = MEMORY[0x1E69E7CC0];
    sub_1ABADDFFC(0, v9, 0);
    v10 = v70[0];
    v12 = (a1 + 32);
    v13 = *(v70[0] + 16);
    do
    {
      v15 = *v12;
      v12 += 17;
      v14 = v15;
      v70[0] = v10;
      v16 = v10[3];
      if (v13 >= v16 >> 1)
      {
        sub_1ABADDFFC((v16 > 1), v13 + 1, 1);
        v10 = v70[0];
      }

      v10[2] = v13 + 1;
      v10[v13++ + 4] = v14;
      --v9;
    }

    while (v9);
    v17 = a2;
    v5 = v4;
  }

  else
  {
    v17 = a2;
  }

  v80 = MEMORY[0x1E69E7CC8];
  if (a4)
  {
    v18 = v10;
    v19 = sub_1ABB3D084(v10);
    if (v5)
    {

      return v17;
    }

    v80 = v19;
    v10 = v18;
  }

  v61 = v10;
  v20 = v17[1];
  if (v20)
  {
    *&v71 = *v17;
    *(&v71 + 1) = v20;
    v21 = v7[1];
    v72 = *v7;
    v73 = v21;
    if (a3)
    {
      v17 = *(&v72 + 1);
      ObjectType = swift_getObjectType();
      MEMORY[0x1EEE9AC00](ObjectType);

      swift_unknownObjectRetain();

      sub_1ABAD219C(&qword_1EB4D30C0, &qword_1ABF3AC50);
      sub_1ABF22464();
      if (v5)
      {

        v78 = v71;
        sub_1ABAFEEA0(&v78);
        swift_unknownObjectRelease();
        v79 = v73;
        sub_1ABAFEEA0(&v79);

        return v17;
      }

      v74 = v71;
      sub_1ABAFEEA0(&v74);
      swift_unknownObjectRelease();
      v75 = v73;
      sub_1ABAFEEA0(&v75);
      v23 = v70[0];
      goto LABEL_18;
    }

    v76 = v71;

    swift_unknownObjectRetain();

    sub_1ABAFEEA0(&v76);
    swift_unknownObjectRelease();
    v77 = v73;
    sub_1ABAFEEA0(&v77);
  }

  v23 = MEMORY[0x1E69E7CC0];
LABEL_18:
  v24 = 0;
  v67 = *(v23 + 16);
  v25 = MEMORY[0x1E69E7CC8];
  v26 = 32;
  v65 = v23;
  while (v67 != v24)
  {
    if (v24 >= *(v23 + 16))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      result = sub_1ABF25104();
      __break(1u);
      return result;
    }

    v27 = v26;
    memcpy(v70, (v23 + v26), sizeof(v70));
    v28 = v70[0];
    sub_1ABB3E248(v70, v69);
    sub_1ABB3E248(v70, v69);
    swift_isUniquelyReferenced_nonNull_native();
    v29 = sub_1ABAFF5A4(v28);
    if (__OFADD__(v25[2], (v30 & 1) == 0))
    {
      goto LABEL_47;
    }

    v31 = v29;
    v32 = v30;
    sub_1ABAD219C(&qword_1EB4D30B0, &qword_1ABF3AC40);
    if (sub_1ABF24C64())
    {
      v33 = sub_1ABAFF5A4(v28);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_52;
      }

      v31 = v33;
    }

    if (v32)
    {
      v35 = (v25[7] + 184 * v31);
      memcpy(v69, v35, sizeof(v69));
      memcpy(v35, v70, 0xB8uLL);
      sub_1ABB3E2A4(v69);
      sub_1ABB3E2A4(v70);
    }

    else
    {
      v25[(v31 >> 6) + 8] |= 1 << v31;
      *(v25[6] + 8 * v31) = v28;
      memcpy((v25[7] + 184 * v31), v70, 0xB8uLL);
      sub_1ABB3E2A4(v70);
      v36 = v25[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_48;
      }

      v25[2] = v38;
    }

    v26 = v27 + 184;
    ++v24;
    v23 = v65;
  }

  v39 = sub_1ABF239C4();
  v40 = a1;

  v42 = v61;
  v41 = v62;
  v43 = 0;
  v44 = 32;
  while (1)
  {
    v45 = v42[2];
    if (v43 == v45)
    {
      break;
    }

    if (v43 >= v45)
    {
      goto LABEL_49;
    }

    if (v41 == v43)
    {
      break;
    }

    v68 = v43;
    v46 = v42[v43 + 4];
    v47 = v44;
    memcpy(v70, (v40 + v44), 0x88uLL);
    sub_1ABB3E0C0(v70, v69);
    swift_isUniquelyReferenced_nonNull_native();
    v48 = sub_1ABAFF5A4(v46);
    if (__OFADD__(v39[2], (v49 & 1) == 0))
    {
      goto LABEL_50;
    }

    v50 = v48;
    v51 = v49;
    sub_1ABAD219C(&qword_1EB4D30B8, &qword_1ABF3AC48);
    if (sub_1ABF24C64())
    {
      v52 = sub_1ABAFF5A4(v46);
      if ((v51 & 1) != (v53 & 1))
      {
        goto LABEL_52;
      }

      v50 = v52;
    }

    if (v51)
    {
      v54 = (v39[7] + 136 * v50);
      memcpy(v69, v54, 0x88uLL);
      memcpy(v54, v70, 0x88uLL);
      sub_1ABB3E2F8(v69);
    }

    else
    {
      v39[(v50 >> 6) + 8] |= 1 << v50;
      *(v39[6] + 8 * v50) = v46;
      memcpy((v39[7] + 136 * v50), v70, 0x88uLL);
      v55 = v39[2];
      v37 = __OFADD__(v55, 1);
      v56 = v55 + 1;
      if (v37)
      {
        goto LABEL_51;
      }

      v39[2] = v56;
    }

    v44 = v47 + 136;
    v43 = v68 + 1;
    v41 = v62;
    v40 = a1;
    v42 = v61;
  }

  MEMORY[0x1EEE9AC00](v57);
  v17 = sub_1ABB386F0(v39, sub_1ABB3E34C);

  return v17;
}

uint64_t sub_1ABB3D084(uint64_t *a1)
{
  v3 = v2;
  sub_1ABB3E5B4(v1 + 112, &v60, &qword_1EB4D3098, &unk_1ABF3AC28);
  if (!v61)
  {
    sub_1ABAB480C(&v60, &qword_1EB4D3098, &unk_1ABF3AC28);
    if (a1[2])
    {
      if (qword_1ED871B18 != -1)
      {
        swift_once();
      }

      v30 = sub_1ABF237F4();
      sub_1ABA7AA24(v30, qword_1ED871B20);
      v31 = sub_1ABF237D4();
      v32 = sub_1ABF24664();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_1ABA78000, v31, v32, "Could not unwrap ranking service in candidate generator. returning null entity relevances.", v33, 2u);
        MEMORY[0x1AC5AB8B0](v33, -1, -1);
      }
    }

    sub_1ABAD219C(&qword_1EB4D30C8, &qword_1ABF3AC58);
    return sub_1ABF239C4();
  }

  sub_1ABA946C0(&v60, v62);
  v5 = sub_1ABA93E20(v62, v62[3]);
  sub_1ABB3E374(0, 0, 0, 0, 16711680);
  v58 = 1;
  memset(__src, 0, 42);
  BYTE10(__src[2]) = -1;
  *&__src[3] = 1;
  BYTE8(__src[3]) = 2;
  *&__src[4] = 0;
  BYTE8(__src[4]) = 1;
  v6 = *v5;
  sub_1ABBC84B4(a1, __src, &v59);
  if (v2)
  {
    memcpy(__dst, __src, 0x49uLL);
    sub_1ABB3E408(__dst);
    if (qword_1ED871B18 != -1)
    {
      goto LABEL_51;
    }

    while (1)
    {
      v7 = sub_1ABF237F4();
      sub_1ABA7AA24(v7, qword_1ED871B20);
      v8 = v3;
      v9 = sub_1ABF237D4();
      v10 = sub_1ABF24664();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 138412290;
        v13 = v2;
        v14 = _swift_stdlib_bridgeErrorToNSError();
        *(v11 + 4) = v14;
        *v12 = v14;
        _os_log_impl(&dword_1ABA78000, v9, v10, "Failed to fetch entity relevances with error: %@", v11, 0xCu);
        sub_1ABAB480C(v12, &unk_1EB4D57F0, &qword_1ABF390C0);
        MEMORY[0x1AC5AB8B0](v12, -1, -1);
        MEMORY[0x1AC5AB8B0](v11, -1, -1);
      }

      v15 = a1[2];
      if (!v15)
      {
        break;
      }

      v16 = MEMORY[0x1E69E7CC8];
      a1 += 4;
      v3 = &qword_1ABF3AC60;
      while (1)
      {
        v18 = *a1++;
        v17 = v18;
        swift_isUniquelyReferenced_nonNull_native();
        v19 = sub_1ABAFF5A4(v18);
        if (__OFADD__(v16[2], (v20 & 1) == 0))
        {
          break;
        }

        v21 = v19;
        v22 = v20;
        sub_1ABAD219C(&qword_1EB4D30D0, &qword_1ABF3AC60);
        if (sub_1ABF24C64())
        {
          v23 = sub_1ABAFF5A4(v17);
          if ((v22 & 1) != (v24 & 1))
          {
            goto LABEL_52;
          }

          v21 = v23;
        }

        if (v22)
        {
          v25 = (v16[7] + 16 * v21);
          *v25 = 0;
          v25[1] = 0;
        }

        else
        {
          v16[(v21 >> 6) + 8] |= 1 << v21;
          *(v16[6] + 8 * v21) = v17;
          v26 = (v16[7] + 16 * v21);
          *v26 = 0;
          v26[1] = 0;
          v27 = v16[2];
          v28 = __OFADD__(v27, 1);
          v29 = v27 + 1;
          if (v28)
          {
            goto LABEL_49;
          }

          v16[2] = v29;
        }

        if (!--v15)
        {
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      swift_once();
    }

    v16 = MEMORY[0x1E69E7CC8];
LABEL_43:

    sub_1ABA84B54(v62);
    return v16;
  }

  memcpy(__dst, __src, 0x49uLL);
  sub_1ABB3E408(__dst);
  v34 = v59;
  v55 = sub_1ABAAB7C8(v59);
  v35 = 0;
  v53 = v34 & 0xC000000000000001;
  v16 = MEMORY[0x1E69E7CC8];
  v54 = v34;
  v52 = v34 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v55 == v35)
    {

      sub_1ABA84B54(v62);
      return v16;
    }

    if (v53)
    {
      v36 = MEMORY[0x1AC5AA170](v35, v54);
    }

    else
    {
      if (v35 >= *(v52 + 16))
      {
        goto LABEL_47;
      }

      v36 = *(v54 + 8 * v35 + 32);
    }

    if (__OFADD__(v35, 1))
    {
      goto LABEL_46;
    }

    v37 = v36[2];
    v38 = v36[3];
    a1 = v36[6];
    swift_isUniquelyReferenced_nonNull_native();
    v39 = sub_1ABAFF5A4(v37);
    v41 = v16[2];
    v42 = (v40 & 1) == 0;
    v3 = (v41 + v42);
    if (__OFADD__(v41, v42))
    {
      goto LABEL_48;
    }

    v43 = v39;
    v44 = v40;
    sub_1ABAD219C(&qword_1EB4D30D0, &qword_1ABF3AC60);
    if (sub_1ABF24C64())
    {
      break;
    }

LABEL_35:
    if (v44)
    {
      v47 = (v16[7] + 16 * v43);
      *v47 = v38;
      v47[1] = a1;
    }

    else
    {
      v16[(v43 >> 6) + 8] |= 1 << v43;
      *(v16[6] + 8 * v43) = v37;
      v48 = (v16[7] + 16 * v43);
      *v48 = v38;
      v48[1] = a1;

      v49 = v16[2];
      v28 = __OFADD__(v49, 1);
      v50 = v49 + 1;
      if (v28)
      {
        goto LABEL_50;
      }

      v16[2] = v50;
    }

    ++v35;
  }

  v45 = sub_1ABAFF5A4(v37);
  if ((v44 & 1) == (v46 & 1))
  {
    v43 = v45;
    goto LABEL_35;
  }

LABEL_52:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABB3D6D4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v16 = a3;
  v6 = sub_1ABAD219C(&qword_1EB4D30D8, &unk_1ABF3AC68);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - v9;
  v18[6] = a1;
  v12 = *(a2 + 32);
  v11 = *(a2 + 40);
  v17[3] = sub_1ABF22D14();
  v17[4] = MEMORY[0x1E69A0050];
  sub_1ABA93DC0(v17);

  sub_1ABF22D24();
  v18[3] = sub_1ABF22424();
  v18[4] = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v18);
  sub_1ABAD219C(&qword_1EB4D1720, &qword_1ABF338B0);
  sub_1ABAB47C4(&qword_1EB4CF830, &qword_1EB4D1720, &qword_1ABF338B0);
  sub_1ABB3E45C();
  sub_1ABF23EE4();
  sub_1ABA84B54(v17);
  sub_1ABB3E4B0();
  sub_1ABF221C4();
  sub_1ABA84B54(v18);
  sub_1ABAB47C4(&qword_1EB4D30E8, &qword_1EB4D30D8, &unk_1ABF3AC68);
  sub_1ABB3E504();
  v13 = sub_1ABF22234();
  result = (*(v7 + 8))(v10, v6);
  if (!v3)
  {
    *v16 = v13;
  }

  return result;
}

void *sub_1ABB3D92C@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *(a5 + 8);
  v12 = *(a5 + 16);
  v13 = *(a5 + 40);
  memcpy(__dst, a2, 0x88uLL);
  v14 = COERCE_DOUBLE(sub_1ABAD5664(a1, *a3));
  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = v15;
  }

  if (v16)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v14;
  }

  if (*(a4 + 16) && (v19 = sub_1ABAFF5A4(a1), (v20 & 1) != 0))
  {
    v21 = *(a4 + 56) + 184 * v19;
    v23 = *(v21 + 16);
    v22 = *(v21 + 24);
    v25 = *(v21 + 128);
    v24 = *(v21 + 136);
    v43 = *(v21 + 144);
    v26 = *(v21 + 160);
    v37 = *(v21 + 48);
    v38 = *(v21 + 32);
    v41 = *(v21 + 80);
    v42 = *(v21 + 64);
    v39 = *(v21 + 112);
    v40 = *(v21 + 96);
    __src[0] = *v21;
    *&__src[1] = v23;
    *(&__src[1] + 1) = v22;
    __src[2] = v38;
    __src[3] = v37;
    __src[4] = v42;
    __src[5] = v41;
    __src[6] = v40;
    __src[7] = v39;
    *&__src[8] = v25;
    *(&__src[8] + 1) = v24;
    __src[9] = v43;
    *&__src[10] = v26;
    *(&__src[10] + 1) = v18;
    *&__src[11] = v17;
    nullsub_1(__src);
    memcpy(a6, __dst, 0x88uLL);
    memcpy((a6 + 136), __src, 0xB8uLL);
    *(a6 + 320) = 0;
    *(a6 + 324) = 1;

    return sub_1ABB3E0C0(__dst, v44);
  }

  else
  {
    if (v11)
    {
      v28 = *a5;
      *v44 = *(a5 + 24);
      *&v44[16] = *(a5 + 40);
      v29 = qword_1ED871B18;

      swift_unknownObjectRetain();

      if (v29 != -1)
      {
        swift_once();
      }

      v30 = sub_1ABF237F4();
      sub_1ABA7AA24(v30, qword_1ED871B20);
      v46 = *&v44[8];

      swift_unknownObjectRetain();
      sub_1ABB3E558(&v46, __src);
      v31 = sub_1ABF237D4();
      v32 = sub_1ABF24664();
      swift_unknownObjectRelease();

      sub_1ABAFEEA0(&v46);
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *&__src[0] = v34;
        *v33 = 136315394;

        v35 = sub_1ABADD6D8(v28, v11, __src);

        *(v33 + 4) = v35;
        *(v33 + 12) = 2048;
        *(v33 + 14) = a1;
        _os_log_impl(&dword_1ABA78000, v31, v32, "Table(%s) misses features for MD_ID: %llu.", v33, 0x16u);
        sub_1ABA84B54(v34);
        MEMORY[0x1AC5AB8B0](v34, -1, -1);
        MEMORY[0x1AC5AB8B0](v33, -1, -1);
        swift_unknownObjectRelease();

        sub_1ABAFEEA0(&v46);
      }

      else
      {
        swift_unknownObjectRelease();

        sub_1ABAFEEA0(&v46);
      }
    }

    v36 = __dst[0];
    sub_1ABB3E0C0(__dst, __src);
    sub_1ABBE69B0(v36, v17, __src, v18);
    nullsub_1(__src);
    memcpy(a6, __dst, 0x88uLL);
    result = memcpy((a6 + 136), __src, 0xB8uLL);
    *(a6 + 320) = 0;
    *(a6 + 324) = 1;
  }

  return result;
}

uint64_t sub_1ABB3DD24()
{
  sub_1ABAB480C(v0 + 24, &qword_1EB4D3090, &qword_1ABF3AC20);
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  sub_1ABB3DFF8(*(v0 + 64), *(v0 + 72));
  sub_1ABAB480C(v0 + 112, &qword_1EB4D3098, &unk_1ABF3AC28);
  v5 = *(v0 + 152);
  swift_unknownObjectRelease();
  v6 = *(v0 + 168);
  v7 = *(v0 + 176);
  v8 = *(v0 + 184);
  sub_1ABB3E048(*(v0 + 160));
  return v0;
}

uint64_t sub_1ABB3DD90()
{
  sub_1ABB3DD24();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for TriplesQuery.FullTextSearchType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SearchPattern(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABB3DF50()
{
  result = qword_1EB4D3088;
  if (!qword_1EB4D3088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3088);
  }

  return result;
}

unint64_t sub_1ABB3DFA4()
{
  result = qword_1ED871318;
  if (!qword_1ED871318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871318);
  }

  return result;
}

uint64_t sub_1ABB3DFF8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1ABB3E048(void *result)
{
  if (result != 1)
  {
    return sub_1ABB3E058(result);
  }

  return result;
}

void *sub_1ABB3E058(void *result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1ABB3E180()
{
  result = qword_1EB4CE768;
  if (!qword_1EB4CE768)
  {
    sub_1ABF23924();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE768);
  }

  return result;
}

void *sub_1ABB3E1D8(void *result)
{
  if (result)
  {
    v1 = result;
  }

  return result;
}

void *sub_1ABB3E238(void *result)
{
  if (result != 1)
  {
    return sub_1ABB3E1D8(result);
  }

  return result;
}

uint64_t sub_1ABB3E374(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (BYTE2(a5) != 255)
  {
    return sub_1ABB3E388(result, a2, a3, a4, a5, SBYTE2(a5));
  }

  return result;
}

uint64_t sub_1ABB3E388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a6)
  {
    case 0:

      goto LABEL_6;
    case 1:
    case 2:
LABEL_6:

      break;
    case 3:
    case 4:

      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1ABB3E45C()
{
  result = qword_1ED871290;
  if (!qword_1ED871290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871290);
  }

  return result;
}

unint64_t sub_1ABB3E4B0()
{
  result = qword_1EB4D30E0;
  if (!qword_1EB4D30E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D30E0);
  }

  return result;
}

unint64_t sub_1ABB3E504()
{
  result = qword_1EB4D30F0;
  if (!qword_1EB4D30F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D30F0);
  }

  return result;
}

uint64_t sub_1ABB3E5B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1ABAD219C(a3, a4);
  sub_1ABA7BBB0(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1ABB3E614(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchableViewDatabaseTable();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABB3E678(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1ABA7BBB0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1ABB3E6D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D3090, &qword_1ABF3AC20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for CandidateGenerationAlgorithm(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x1E)
  {
    if (a2 + 226 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 226) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 227;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 1) & 0x1C | (*a1 >> 6)) ^ 0x1F;
  if (v5 >= 0x1D)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *storeEnumTagSinglePayload for CandidateGenerationAlgorithm(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 226 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 226) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x1E)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x1D)
  {
    v6 = ((a2 - 30) >> 8) + 1;
    *result = a2 - 30;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = 8 * (((-a2 >> 2) & 7) - 8 * a2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1ABB3E8B0(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return (v1 & 7u) + 2;
  }
}

_BYTE *sub_1ABB3E8DC(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *result & 7 | (a2 << 6);
  }

  else
  {
    v2 = (a2 + 6) & 7 | 0x80;
  }

  *result = v2;
  return result;
}

unint64_t sub_1ABB3E91C()
{
  result = qword_1EB4D3110;
  if (!qword_1EB4D3110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3110);
  }

  return result;
}

unint64_t sub_1ABB3E970()
{
  result = qword_1ED8715A0;
  if (!qword_1ED8715A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8715A0);
  }

  return result;
}

unint64_t sub_1ABB3E9C4()
{
  result = qword_1EB4CED20;
  if (!qword_1EB4CED20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CED20);
  }

  return result;
}

unint64_t sub_1ABB3EA18()
{
  result = qword_1EB4D3148;
  if (!qword_1EB4D3148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3148);
  }

  return result;
}

unint64_t sub_1ABB3EA6C()
{
  result = qword_1ED8710C8;
  if (!qword_1ED8710C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8710C8);
  }

  return result;
}

unint64_t sub_1ABB3EAC0()
{
  result = qword_1ED86B440;
  if (!qword_1ED86B440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B440);
  }

  return result;
}

unint64_t sub_1ABB3EB14()
{
  result = qword_1ED86CF48;
  if (!qword_1ED86CF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86CF48);
  }

  return result;
}

unint64_t sub_1ABB3EB68()
{
  result = qword_1ED868CA8[0];
  if (!qword_1ED868CA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED868CA8);
  }

  return result;
}

unint64_t sub_1ABB3EBBC()
{
  result = qword_1ED871310;
  if (!qword_1ED871310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871310);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LiveGlobalKnowledge.ExternalIdentifierType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CandidateGenerationAlgorithm.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1ABB3EDB4(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1ABB3EE64()
{
  result = qword_1EB4D3180;
  if (!qword_1EB4D3180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3180);
  }

  return result;
}

unint64_t sub_1ABB3EEBC()
{
  result = qword_1EB4D3188;
  if (!qword_1EB4D3188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3188);
  }

  return result;
}

unint64_t sub_1ABB3EF14()
{
  result = qword_1EB4D3190;
  if (!qword_1EB4D3190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3190);
  }

  return result;
}

unint64_t sub_1ABB3EF6C()
{
  result = qword_1ED871570;
  if (!qword_1ED871570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871570);
  }

  return result;
}

unint64_t sub_1ABB3EFC4()
{
  result = qword_1ED871578;
  if (!qword_1ED871578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871578);
  }

  return result;
}

unint64_t sub_1ABB3F01C()
{
  result = qword_1ED871580;
  if (!qword_1ED871580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871580);
  }

  return result;
}

unint64_t sub_1ABB3F074()
{
  result = qword_1ED871588;
  if (!qword_1ED871588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871588);
  }

  return result;
}

unint64_t sub_1ABB3F0CC()
{
  result = qword_1ED871560;
  if (!qword_1ED871560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871560);
  }

  return result;
}

unint64_t sub_1ABB3F124()
{
  result = qword_1ED871568;
  if (!qword_1ED871568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871568);
  }

  return result;
}

unint64_t sub_1ABB3F17C()
{
  result = qword_1ED871550;
  if (!qword_1ED871550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871550);
  }

  return result;
}

unint64_t sub_1ABB3F1D4()
{
  result = qword_1ED871558;
  if (!qword_1ED871558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871558);
  }

  return result;
}

unint64_t sub_1ABB3F22C()
{
  result = qword_1ED8710B8;
  if (!qword_1ED8710B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8710B8);
  }

  return result;
}

unint64_t sub_1ABB3F284()
{
  result = qword_1ED8710C0;
  if (!qword_1ED8710C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8710C0);
  }

  return result;
}

unint64_t sub_1ABB3F2DC()
{
  result = qword_1ED871590;
  if (!qword_1ED871590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871590);
  }

  return result;
}

unint64_t sub_1ABB3F334()
{
  result = qword_1ED871598;
  if (!qword_1ED871598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871598);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CharacterList(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t ClientProcessIdentifier.identifier.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (*(v0 + 16) && v3 != 1)
  {
    v8 = *v0;
    v9 = *(v0 + 8);
    v4 = sub_1ABB3F4F4();
  }

  else
  {
    v4 = *v0;
  }

  v5 = sub_1ABA7BE8C();
  sub_1ABB3F4DC(v5, v6, v3);
  return v4;
}

uint64_t sub_1ABB3F4DC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1ABB3F4F4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_1ABB408F0(v0);
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v5 = sub_1ABF237F4();
    sub_1ABA7AA24(v5, qword_1ED871B40);

    v6 = sub_1ABF237D4();
    v7 = sub_1ABF24644();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_1ABADD6D8(v3, v4, &v11);
      _os_log_impl(&dword_1ABA78000, v6, v7, "ClientProcessIdentifier: Got main bundle identifier: %s", v8, 0xCu);
      sub_1ABA84B54(v9);
      MEMORY[0x1AC5AB8B0](v9, -1, -1);
      MEMORY[0x1AC5AB8B0](v8, -1, -1);
    }

    return v3;
  }

  else
  {
    result = sub_1ABF24CD4();
    __break(1u);
  }

  return result;
}

uint64_t static ClientProcessIdentifier.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      goto LABEL_20;
    }

    v21 = *a1;
    if (v3 != v6 || v2 != v5)
    {
      v9 = sub_1ABF25054();
      v23 = sub_1ABA7BE8C();
      v25 = sub_1ABA7EE88(v23, v24, 0);
      v27 = sub_1ABA7EE88(v25, v26, 0);
      sub_1ABB3F860(v27, v28, 0);
      v18 = sub_1ABA7BE8C();
      v20 = 0;
      goto LABEL_15;
    }

    v57 = sub_1ABA7EE88(v21, v2, 0);
    v59 = sub_1ABA7EE88(v57, v58, 0);
    sub_1ABB3F860(v59, v60, 0);
    v42 = sub_1ABA7EDF8();
    v44 = 0;
LABEL_24:
    sub_1ABB3F860(v42, v43, v44);
    return 1;
  }

  if (v4 != 1)
  {
    if (v7 != 2 || (v5 | v6) != 0)
    {
      goto LABEL_20;
    }

    v40 = sub_1ABA7EDF8();
    sub_1ABB3F860(v40, v41, 2u);
    v42 = 0;
    v43 = 0;
    v44 = 2;
    goto LABEL_24;
  }

  if (v7 != 1)
  {
LABEL_20:
    v31 = sub_1ABA7BE8C();
    v33 = sub_1ABA7EE88(v31, v32, v7);
    v35 = sub_1ABA7EE88(v33, v34, v4);
    sub_1ABB3F860(v35, v36, v4);
    v37 = sub_1ABA7BE8C();
    sub_1ABB3F860(v37, v38, v7);
    return 0;
  }

  if (v3 != v6 || v2 != v5)
  {
    sub_1ABA7EDF8();
    v9 = sub_1ABF25054();
    v10 = sub_1ABA7BE8C();
    sub_1ABB3F4DC(v10, v11, 1u);
    v12 = sub_1ABA7D230();
    sub_1ABB3F4DC(v12, v13, v14);
    v15 = sub_1ABA7D230();
    sub_1ABB3F860(v15, v16, v17);
    v18 = sub_1ABA7BE8C();
    v20 = 1;
LABEL_15:
    sub_1ABB3F860(v18, v19, v20);
    return v9 & 1;
  }

  v39 = 1;
  v45 = sub_1ABA7D230();
  sub_1ABB3F4DC(v45, v46, v47);
  v48 = sub_1ABA7D230();
  sub_1ABB3F4DC(v48, v49, v50);
  v51 = sub_1ABA7D230();
  sub_1ABB3F860(v51, v52, v53);
  v54 = sub_1ABA7D230();
  sub_1ABB3F860(v54, v55, v56);
  return v39;
}

uint64_t sub_1ABB3F860(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1ABB3F878(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365636F72506E69 && a2 == 0xE900000000000073;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x80000001ABF88030 == a2;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000010 && 0x80000001ABF88050 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1ABB3F9A4(char a1)
{
  if (!a1)
  {
    return 0x7365636F72506E69;
  }

  if (a1 == 1)
  {
    return 0xD000000000000015;
  }

  return 0xD000000000000010;
}

uint64_t sub_1ABB3FA10(uint64_t a1)
{
  v2 = sub_1ABB4003C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB3FA4C(uint64_t a1)
{
  v2 = sub_1ABB4003C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB3FA88(uint64_t a1)
{
  v2 = sub_1ABB3FFE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB3FAC4(uint64_t a1)
{
  v2 = sub_1ABB3FFE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB3FB08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB3F878(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABB3FB30(uint64_t a1)
{
  v2 = sub_1ABB3FF94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB3FB6C(uint64_t a1)
{
  v2 = sub_1ABB3FF94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB3FBA8(uint64_t a1)
{
  v2 = sub_1ABB40090();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB3FBE4(uint64_t a1)
{
  v2 = sub_1ABB40090();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClientProcessIdentifier.encode(to:)(void *a1)
{
  v3 = sub_1ABAD219C(&qword_1EB4D3198, &qword_1ABF3B390);
  v4 = sub_1ABA7BB64(v3);
  v46 = v5;
  v47 = v4;
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v40 - v9;
  v10 = sub_1ABAD219C(&qword_1EB4D31A0, &qword_1ABF3B398);
  v11 = sub_1ABA7BB64(v10);
  v43 = v12;
  v44 = v11;
  v14 = *(v13 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v15);
  v16 = sub_1ABAD219C(&qword_1EB4D31A8, &qword_1ABF3B3A0);
  v17 = sub_1ABA7BB64(v16);
  v41 = v18;
  v42 = v17;
  v20 = *(v19 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v40 - v22;
  v50 = sub_1ABAD219C(&qword_1EB4D31B0, &qword_1ABF3B3A8);
  sub_1ABA7BB64(v50);
  v25 = v24;
  v27 = *(v26 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v40 - v29;
  v31 = *v1;
  v48 = v1[1];
  v49 = v31;
  v32 = *(v1 + 16);
  v33 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABB3FF94();
  sub_1ABF252E4();
  if (!v32)
  {
    v52 = 1;
    sub_1ABB4003C();
    sub_1ABA7E3C0();
    v36 = v44;
    sub_1ABF24F34();
    v37 = sub_1ABA8150C();
    v38(v37, v36);
    return (*(v25 + 8))(v30, v32);
  }

  if (v32 == 1)
  {
    v53 = 2;
    sub_1ABB3FFE8();
    v34 = v45;
    sub_1ABA7E3C0();
    v35 = v47;
    sub_1ABF24F34();
    (*(v46 + 8))(v34, v35);
    return (*(v25 + 8))(v30, v32);
  }

  v51 = 0;
  sub_1ABB40090();
  sub_1ABA7E3C0();
  (*(v41 + 8))(v23, v42);
  return (*(v25 + 8))(v30, v32);
}

unint64_t sub_1ABB3FF94()
{
  result = qword_1EB4D31B8;
  if (!qword_1EB4D31B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D31B8);
  }

  return result;
}

unint64_t sub_1ABB3FFE8()
{
  result = qword_1EB4D31C0;
  if (!qword_1EB4D31C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D31C0);
  }

  return result;
}

unint64_t sub_1ABB4003C()
{
  result = qword_1EB4D31C8;
  if (!qword_1EB4D31C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D31C8);
  }

  return result;
}

unint64_t sub_1ABB40090()
{
  result = qword_1EB4D31D0;
  if (!qword_1EB4D31D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D31D0);
  }

  return result;
}

uint64_t ClientProcessIdentifier.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*(v0 + 16))
  {
    if (*(v0 + 16) != 1)
    {
      return MEMORY[0x1AC5AA8A0](0);
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x1AC5AA8A0](v3);

  return sub_1ABF23D34();
}

uint64_t ClientProcessIdentifier.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1ABF25234();
  if (v3)
  {
    if (v3 != 1)
    {
      MEMORY[0x1AC5AA8A0](0);
      return sub_1ABF25294();
    }

    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  MEMORY[0x1AC5AA8A0](v4);
  sub_1ABF23D34();
  return sub_1ABF25294();
}

uint64_t ClientProcessIdentifier.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = sub_1ABAD219C(&qword_1EB4D31D8, &qword_1ABF3B3B0);
  v79 = sub_1ABA7BB64(v3);
  v80 = v4;
  v6 = *(v5 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  v83 = &v73 - v8;
  v9 = sub_1ABAD219C(&qword_1EB4D31E0, &qword_1ABF3B3B8);
  v77 = sub_1ABA7BB64(v9);
  v78 = v10;
  v12 = *(v11 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1ABAD219C(&qword_1EB4D31E8, &qword_1ABF3B3C0);
  sub_1ABA7BB64(v14);
  v76 = v15;
  v17 = *(v16 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v73 - v19;
  v21 = sub_1ABAD219C(&qword_1EB4D31F0, &unk_1ABF3B3C8);
  sub_1ABA7BB64(v21);
  v82 = v22;
  v24 = *(v23 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v73 - v26;
  v28 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABB3FF94();
  v29 = v84;
  sub_1ABF252C4();
  if (v29)
  {
    goto LABEL_12;
  }

  v74 = v14;
  v75 = v20;
  v84 = a1;
  v30 = v27;
  v31 = sub_1ABF24EA4();
  result = sub_1ABAD4EA4(v31, 0);
  if (v34 == v35 >> 1)
  {
    goto LABEL_10;
  }

  v73 = 0;
  if (v34 < (v35 >> 1))
  {
    v36 = *(v33 + v34);
    sub_1ABAD4E90(v34 + 1);
    v38 = v37;
    v40 = v39;
    swift_unknownObjectRelease();
    if (v38 == v40 >> 1)
    {
      if (v36)
      {
        v41 = v36 == 1;
        v42 = v73;
        if (v41)
        {
          v86 = 1;
          sub_1ABB4003C();
          sub_1ABF24D94();
          v43 = v81;
          if (v42)
          {
LABEL_17:
            sub_1ABA836AC();
            v56();
            goto LABEL_18;
          }

          v44 = v27;
          v45 = v77;
          v63 = sub_1ABF24E14();
          v65 = v64;
          swift_unknownObjectRelease();
          v66 = sub_1ABA8150C();
          v67(v66, v45);
          sub_1ABA836AC();
          v68(v44, v21);
          v69 = 0;
        }

        else
        {
          v87 = 2;
          sub_1ABB3FFE8();
          sub_1ABF24D94();
          v43 = v81;
          if (v42)
          {
            goto LABEL_17;
          }

          v59 = v27;
          v78 = v21;
          v60 = v79;
          v61 = sub_1ABF24E14();
          v62 = v82;
          v73 = 0;
          v63 = v61;
          v65 = v70;
          swift_unknownObjectRelease();
          v71 = sub_1ABA8150C();
          v72(v71, v60);
          (*(v62 + 8))(v59, v78);
          v69 = 1;
        }
      }

      else
      {
        v85 = 0;
        sub_1ABB40090();
        v52 = v75;
        v53 = v73;
        sub_1ABF24D94();
        if (v53)
        {
          sub_1ABA836AC();
          v54 = sub_1ABA7EDF8();
          v55(v54);
LABEL_18:
          swift_unknownObjectRelease();
          goto LABEL_11;
        }

        swift_unknownObjectRelease();
        (*(v76 + 8))(v52, v74);
        sub_1ABA836AC();
        v57 = sub_1ABA7EDF8();
        v58(v57);
        v63 = 0;
        v65 = 0;
        v69 = 2;
        v43 = v81;
      }

      *v43 = v63;
      *(v43 + 8) = v65;
      *(v43 + 16) = v69;
      v51 = v84;
      return sub_1ABA84B54(v51);
    }

LABEL_10:
    v46 = sub_1ABF24B44();
    swift_allocError();
    v48 = v47;
    v49 = *(sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050) + 48);
    *v48 = &type metadata for ClientProcessIdentifier;
    sub_1ABF24DA4();
    sub_1ABF24B34();
    (*(*(v46 - 8) + 104))(v48, *MEMORY[0x1E69E6AF8], v46);
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_1ABA836AC();
    v50(v30, v21);
LABEL_11:
    a1 = v84;
LABEL_12:
    v51 = a1;
    return sub_1ABA84B54(v51);
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABB4086C()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_1ABF25234();
  ClientProcessIdentifier.hash(into:)();
  return sub_1ABF25294();
}

uint64_t sub_1ABB408F0(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1ABF23C04();

  return v3;
}

unint64_t sub_1ABB40964()
{
  result = qword_1EB4D31F8;
  if (!qword_1EB4D31F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D31F8);
  }

  return result;
}

uint64_t sub_1ABB409B8(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1ABB409D4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ClientProcessIdentifier.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1ABB40AF8(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1ABB40BA8()
{
  result = qword_1EB4D3200;
  if (!qword_1EB4D3200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3200);
  }

  return result;
}

unint64_t sub_1ABB40C00()
{
  result = qword_1EB4D3208;
  if (!qword_1EB4D3208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3208);
  }

  return result;
}

unint64_t sub_1ABB40C58()
{
  result = qword_1EB4D3210;
  if (!qword_1EB4D3210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3210);
  }

  return result;
}

unint64_t sub_1ABB40CB0()
{
  result = qword_1EB4D3218;
  if (!qword_1EB4D3218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3218);
  }

  return result;
}

unint64_t sub_1ABB40D08()
{
  result = qword_1EB4D3220;
  if (!qword_1EB4D3220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3220);
  }

  return result;
}

unint64_t sub_1ABB40D60()
{
  result = qword_1EB4D3228;
  if (!qword_1EB4D3228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3228);
  }

  return result;
}

unint64_t sub_1ABB40DB8()
{
  result = qword_1EB4D3230;
  if (!qword_1EB4D3230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3230);
  }

  return result;
}

unint64_t sub_1ABB40E10()
{
  result = qword_1EB4D3238;
  if (!qword_1EB4D3238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3238);
  }

  return result;
}

unint64_t sub_1ABB40E68()
{
  result = qword_1EB4D3240;
  if (!qword_1EB4D3240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3240);
  }

  return result;
}

unint64_t sub_1ABB40EC0()
{
  result = qword_1EB4D3248;
  if (!qword_1EB4D3248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3248);
  }

  return result;
}

unint64_t sub_1ABB40F18()
{
  result = qword_1EB4D3250;
  if (!qword_1EB4D3250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3250);
  }

  return result;
}

uint64_t CLLocation.CodingKeys.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1ABF24D84();

  v4 = 8;
  if (v2 < 8)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t CLLocation.CodingKeys.init(stringValue:)@<X0>(_BYTE *a1@<X8>)
{
  result = CLLocation.CodingKeys.init(rawValue:)(&v3);
  *a1 = v3;
  return result;
}

unint64_t sub_1ABB41020()
{
  result = 0x656475746974616CLL;
  switch(*v0)
  {
    case 1:
      result = 0x64757469676E6F6CLL;
      break;
    case 2:
      result = 0x6564757469746C61;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x6465657073;
      break;
    case 6:
      result = 0x657372756F63;
      break;
    case 7:
      result = 0x6D617473656D6974;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABB41124@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return CLLocation.CodingKeys.init(rawValue:)(a1);
}

uint64_t sub_1ABB41130@<X0>(uint64_t *a1@<X8>)
{
  result = CLLocation.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1ABB41164(uint64_t a1)
{
  v2 = sub_1ABB4151C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB411A0(uint64_t a1)
{
  v2 = sub_1ABB4151C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CLLocation.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_1ABF21EB4();
  v5 = sub_1ABA7BB64(v4);
  v25 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1ABAD219C(&qword_1EB4D3258, &qword_1ABF3B960);
  v12 = sub_1ABA7BB64(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v18 = &v24 - v17;
  v19 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABB4151C();
  sub_1ABF252E4();
  [v2 coordinate];
  v35 = 0;
  v27 = v11;
  v20 = v26;
  sub_1ABF24F54();
  if (!v20)
  {
    v26 = v10;
    [v2 coordinate];
    v34 = 1;
    sub_1ABA8F010();
    [v2 altitude];
    v33 = 2;
    sub_1ABA8F010();
    [v2 horizontalAccuracy];
    v32 = 3;
    sub_1ABA8F010();
    [v2 verticalAccuracy];
    v31 = 4;
    sub_1ABA8F010();
    [v2 speed];
    v30 = 5;
    sub_1ABA8F010();
    [v2 course];
    v29 = 6;
    sub_1ABA8F010();
    v22 = [v2 timestamp];
    v23 = v26;
    sub_1ABF21E64();

    v28 = 7;
    sub_1ABB41570();
    sub_1ABF24F84();
    (*(v25 + 8))(v23, v4);
  }

  return (*(v14 + 8))(v18, v27);
}

unint64_t sub_1ABB4151C()
{
  result = qword_1EB4D3260;
  if (!qword_1EB4D3260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3260);
  }

  return result;
}

unint64_t sub_1ABB41570()
{
  result = qword_1ED86B860;
  if (!qword_1ED86B860)
  {
    sub_1ABF21EB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B860);
  }

  return result;
}

id CLLocation.init(model:)(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = CLLocationCoordinate2DMake(*a1, *(a1 + 8));
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = *(a1 + 32);
  v9 = a1 + *(type metadata accessor for CodableLocation() + 44);
  v10 = sub_1ABF21E34();
  v11 = [v2 initWithCoordinate:v10 altitude:v3.latitude horizontalAccuracy:v3.longitude verticalAccuracy:v4 course:v5 speed:v8 timestamp:{v6, v7}];

  sub_1ABAFEF58(a1);
  return v11;
}

unint64_t sub_1ABB416C0()
{
  result = qword_1EB4D3268;
  if (!qword_1EB4D3268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3268);
  }

  return result;
}

unint64_t sub_1ABB41718()
{
  result = qword_1EB4D3270;
  if (!qword_1EB4D3270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3270);
  }

  return result;
}

unint64_t sub_1ABB41770()
{
  result = qword_1EB4D3278;
  if (!qword_1EB4D3278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3278);
  }

  return result;
}

_BYTE *_s10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

void sub_1ABB41900(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v2 = *(a1 + 64);
  if ((v2 - 1) >= 8)
  {
    LOBYTE(v2) = 6;
  }

  *a2 = v2;
}

uint64_t sub_1ABB4191C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v60 = *MEMORY[0x1E69E9840];
  if (((1 << *(a6 + 64)) & 0x1FA) != 0)
  {
    v8 = v6;
    v47 = MEMORY[0x1E69E7CD0];
    v9 = sub_1ABE713BC();
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = (v9 + 40);
      do
      {
        v12 = *(v11 - 1);
        v13 = *v11;

        sub_1ABB1840C(v58, v12, v13);

        v11 += 2;
        --v10;
      }

      while (v10);

      v14 = v47;
    }

    else
    {

      v14 = MEMORY[0x1E69E7CD0];
    }

    if (*(v14 + 16))
    {
      v15 = sub_1ABE713BC();
      v16 = sub_1ABB30FDC(v15);
      v18 = v17;

      if (v18)
      {
        v19 = sub_1ABB24D04(v16, v18);
        if ((v20 & 1) == 0)
        {
          v46 = v19;
          (*(*v8 + 224))(v58);
          v37 = LOBYTE(v58[0]) << 8;
          LOBYTE(v49[0]) = 0;
          v49[1] = 0;
          LOBYTE(v50) = 0;
          v51 = v14;
          LOBYTE(v52) = 0;
          v53 = 0;
          LOBYTE(v54) = 0;
          v55 = 0;
          LOBYTE(v56) = 0;
          v57 = 0;
          v38 = v49[0];
          v39 = v50;
          v40 = v52;
          v41 = v54;
          v42 = v56;
          v58[0] = v49[0];
          v58[1] = 0;
          v58[2] = v50;
          v58[3] = v14;
          v58[4] = v52;
          v58[5] = 0;
          v58[6] = v54;
          v58[7] = 0;
          v58[8] = v56;
          v58[9] = 0;
          v58[11] = 0;
          v59 = 32;
          sub_1ABAD219C(&qword_1EB4D10F8, &qword_1ABF33280);
          v43 = swift_allocObject();
          *(v43 + 16) = xmmword_1ABF34740;
          *(v43 + 32) = v37;
          *(v43 + 40) = v46;
          *(v43 + 120) = 0;
          *(v43 + 136) = 0x80;
          sub_1ABB42048(v58, v48);
          v34 = 1;
          sub_1ABAD8FB0();
          v45 = v44;
          *(v44 + 16) = 2;
          *(v44 + 144) = v38;
          *(v44 + 152) = 0;
          *(v44 + 160) = v39;
          *(v44 + 168) = v14;
          *(v44 + 176) = v40;
          *(v44 + 184) = 0;
          *(v44 + 192) = v41;
          *(v44 + 200) = 0;
          *(v44 + 208) = v42;
          *(v44 + 216) = 0;
          *(v44 + 232) = 0;
          *(v44 + 248) = 32;
          sub_1ABB420A4(v49);
          *a1 = 0;
          *(a1 + 8) = v45;
          *(a1 + 88) = 0;
          *(a1 + 104) = -96;
          goto LABEL_21;
        }
      }

      if (qword_1ED86E458 != -1)
      {
        sub_1ABA8F02C();
      }

      v21 = sub_1ABF237F4();
      sub_1ABA7AA24(v21, qword_1ED86E460);

      v22 = sub_1ABF237D4();
      v23 = sub_1ABF24664();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v58[0] = v25;
        *v24 = 136315138;
        sub_1ABE713BC();
        v26 = MEMORY[0x1AC5A9750]();
        v28 = v27;

        v29 = sub_1ABADD6D8(v26, v28, v58);

        *(v24 + 4) = v29;
        _os_log_impl(&dword_1ABA78000, v22, v23, "Comparison operator expects 1 numeric 'object' arg. instead got: %s", v24, 0xCu);
        sub_1ABA84B54(v25);
        MEMORY[0x1AC5AB8B0](v25, -1, -1);
        MEMORY[0x1AC5AB8B0](v24, -1, -1);
      }
    }

    else
    {

      if (qword_1ED86E458 != -1)
      {
        sub_1ABA8F02C();
      }

      v30 = sub_1ABF237F4();
      sub_1ABA7AA24(v30, qword_1ED86E460);
      v31 = sub_1ABF237D4();
      v32 = sub_1ABF24664();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_1ABA78000, v31, v32, "Comparison operator must have at least 1 predicate", v33, 2u);
        MEMORY[0x1AC5AB8B0](v33, -1, -1);
      }
    }
  }

  v34 = 0;
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 88) = xmmword_1ABF34940;
  *(a1 + 104) = 0;
LABEL_21:
  v35 = *MEMORY[0x1E69E9840];
  return v34;
}

uint64_t sub_1ABB41DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v20 = a3;
    v6 = (a3 + 32);
    v7 = v4 - 1;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      memcpy(__dst, v6, 0x58uLL);
      if (__dst[7])
      {
        v9 = __dst[6];
      }

      else
      {
        v9 = 0;
      }

      if (__dst[7])
      {
        v10 = __dst[7];
      }

      else
      {
        v10 = 0xE000000000000000;
      }

      sub_1ABB242A4(__dst, v21);

      v11 = sub_1ABE713BC();
      v21[0] = v9;
      v21[1] = v10;
      MEMORY[0x1EEE9AC00](v11);
      v19[2] = v21;
      v12 = sub_1ABB2F764(sub_1ABB342A0, v19, v11);

      if (v12)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = *(v8 + 16);
          sub_1ABAD8758();
          v8 = v15;
        }

        v13 = *(v8 + 16);
        if (v13 >= *(v8 + 24) >> 1)
        {
          sub_1ABAD8758();
          v8 = v16;
        }

        *(v8 + 16) = v13 + 1;
        memcpy((v8 + 88 * v13 + 32), __dst, 0x58uLL);
        if (!v7)
        {
LABEL_18:

          v3 = v20;
          v5 = MEMORY[0x1E69E7CC0];
          break;
        }
      }

      else
      {
        sub_1ABB24250(__dst);
        if (!v7)
        {
          goto LABEL_18;
        }
      }

      --v7;
      v6 += 88;
    }
  }

  type metadata accessor for ResultGraph();
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1ABF239C4();
  *(v17 + 24) = v5;
  LOBYTE(__dst[0]) = 0;
  sub_1ABE489A8(v3, __dst);
}

uint64_t ConfidenceComputable.confidence.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return v1();
}

uint64_t ConfidenceComputable.init(confidence:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

double sub_1ABB4214C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a4 + 8))(a3, a4);
  v6 = a2[3];
  v7 = a2[4];
  sub_1ABA93E20(a2, v6);
  return v5 + (*(v7 + 8))(v6, v7);
}

uint64_t static ConfidenceComputableProtocol.+ infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1ABB423DC(a1, a2, a3, &unk_1F2095FE8, sub_1ABB4220C);
}

{
  return sub_1ABB42AA8(a1, a2, a3, &unk_1F2096010, sub_1ABB42290);
}

double sub_1ABB4220C()
{
  v2 = *(*(*(v0 + 16) - 8) + 80);
  sub_1ABA815B8(*(v0 + 16), *(v0 + 24));
  return v1 + v3();
}

double sub_1ABB42290()
{
  sub_1ABA7EEA4();
  v2 = *(v1 + 80);
  sub_1ABA7BE98();
  sub_1ABA8F04C(v4, *(v3 + 64));
  return v0 + v5();
}

double sub_1ABB4231C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a4 + 8))(a3, a4);
  v6 = a2[3];
  v7 = a2[4];
  sub_1ABA93E20(a2, v6);
  return v5 - (*(v7 + 8))(v6, v7);
}

uint64_t static ConfidenceComputableProtocol.- infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1ABB423DC(a1, a2, a3, &unk_1F2096060, sub_1ABB4252C);
}

{
  return sub_1ABB42AA8(a1, a2, a3, &unk_1F2096088, sub_1ABB425B0);
}

uint64_t sub_1ABB424B8()
{
  sub_1ABA8E6C4();
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

double sub_1ABB4252C()
{
  v2 = *(*(*(v0 + 16) - 8) + 80);
  sub_1ABA815B8(*(v0 + 16), *(v0 + 24));
  return v1 - v3();
}

double sub_1ABB425B0()
{
  sub_1ABA7EEA4();
  v2 = *(v1 + 80);
  sub_1ABA7BE98();
  sub_1ABA8F04C(v4, *(v3 + 64));
  return v5() - v0;
}

double sub_1ABB4263C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a4 + 8))(a3, a4);
  v6 = a2[3];
  v7 = a2[4];
  sub_1ABA93E20(a2, v6);
  return v5 * (*(v7 + 8))(v6, v7);
}

uint64_t static ConfidenceComputableProtocol.* infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1ABB42AA8(a1, a2, a3, &unk_1F20960D8, sub_1ABB42DD4);
}

{
  return sub_1ABB42B8C(a1, a2, a3, &unk_1F2096100, sub_1ABB4271C);
}

double sub_1ABB42720()
{
  sub_1ABA7EEA4();
  v2 = *(v1 + 80);
  sub_1ABA7BE98();
  sub_1ABA8F04C(v4, *(v3 + 64));
  return v0 * v5();
}

uint64_t sub_1ABB427AC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, void *a5@<X8>)
{
  sub_1ABA7BD7C();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  (*(v11 + 16))(&v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1ABA93E64(a1, v19);
  v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  (*(v11 + 32))(v16 + v15, &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  result = sub_1ABA946C0(v19, v16 + ((v13 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *a5 = a4;
  a5[1] = v16;
  return result;
}

double sub_1ABB428F0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a4 + 8))(a3, a4);
  v6 = a2[3];
  v7 = a2[4];
  sub_1ABA93E20(a2, v6);
  return v5 / (*(v7 + 8))(v6, v7);
}

uint64_t sub_1ABB42978()
{
  sub_1ABA8E6C4();
  v3 = *(v2 + 8);
  v2 += 8;
  v4 = *(v2 + 72);
  v5 = *(v2 + 56);
  v6 = sub_1ABA94808();
  v7(v6);
  sub_1ABA84B54((v0 + v1));

  return MEMORY[0x1EEE6BDD0](v0, v1 + 40, v4 | 7);
}

uint64_t sub_1ABB42A0C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1ABA7BD7C();
  v4 = *(v3 + 80);
  sub_1ABA7BE98();
  return v7(v0 + v6, v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t static ConfidenceComputableProtocol./ infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1ABB42AA8(a1, a2, a3, &unk_1F2096150, sub_1ABB42DD8);
}

{
  return sub_1ABB42B8C(a1, a2, a3, &unk_1F2096178, sub_1ABB42CC4);
}

uint64_t sub_1ABB42C50()
{
  sub_1ABA8E6C4();
  v3 = *(v2 + 8);
  v2 += 8;
  v4 = *(v2 + 72);
  v5 = *(v2 + 56);
  v6 = sub_1ABA94808();
  v7(v6);

  return MEMORY[0x1EEE6BDD0](v0, v1 + 8, v4 | 7);
}

double sub_1ABB42CC8()
{
  sub_1ABA7EEA4();
  v2 = *(v1 + 80);
  sub_1ABA7BE98();
  sub_1ABA8F04C(v4, *(v3 + 64));
  return v5() / v0;
}

uint64_t sub_1ABB42D48(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABB42D88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ABB42DE0()
{
  v8 = *v0;
  switch(*(v0 + 16))
  {
    case 1:
      v32 = MEMORY[0x1E69E7CC0];
      if (*(v8 + 16))
      {
        v41 = MEMORY[0x1E69E7CC0];
        sub_1ABA7D268();
        sub_1ABA7BEAC();
        do
        {
          v33 = sub_1ABA7EEBC();
          (v3)(v33);
          sub_1ABA836EC();
          sub_1ABA8E6D8();
          if (v11)
          {
            sub_1ABA7E3F4();
          }

          sub_1ABA932BC();
          if (v13)
          {
            sub_1ABA8F06C(v34);
            v32 = v41;
          }

          sub_1ABA80798();
        }

        while (!v11);
      }

      sub_1ABD23888(v32);

    case 2:
      v16 = *(v8 + 16);
      if (v16)
      {
        sub_1ABA7D268();
        sub_1ABA7BEAC();
        v17 = v16;
        do
        {
          v18 = *(v2 - 24);
          v20 = *(v2 - 2);
          v19 = *(v2 - 1);
          v21 = *v2;

          v20(v22);
          sub_1ABA836EC();
          sub_1ABA8E6D8();
          if (v11)
          {
            sub_1ABA7E3F4();
            if (!v11 & v13)
            {
              if (v4 <= v5)
              {
                v7 = v4;
              }

              else
              {
                v7 = v5;
              }
            }
          }

          v24 = *(v1 + 16);
          v23 = *(v1 + 24);
          v25 = v24 + 1;
          if (v24 >= v23 >> 1)
          {
            sub_1ABA8F06C(v23);
          }

          *(v1 + 16) = v25;
          *(v1 + 8 * v24 + 32) = v21 * v7;
          v2 += 4;
          --v17;
        }

        while (v17);
      }

      else
      {
        v1 = MEMORY[0x1E69E7CC0];
        v25 = *(MEMORY[0x1E69E7CC0] + 16);
        if (!v25)
        {
        }
      }

      v35 = 0.0;
      v36 = 32;
      do
      {
        v35 = v35 + *(v1 + v36);
        v36 += 8;
        --v25;
      }

      while (v25);

    case 3:
      v26 = *(v8 + 16);
      if (v26)
      {
        v40 = MEMORY[0x1E69E7CC0];
        sub_1ABADE01C(0, v26, 0);
        v27 = v40;
        v28 = v8 + 56;
        do
        {
          v29 = sub_1ABA7EEBC();
          (v3)(v29);
          sub_1ABA836EC();
          sub_1ABA8E6D8();
          if (v11)
          {
            sub_1ABA7E3F4();
            if (!v11 & v13)
            {
              if (v4 <= 1.0)
              {
                v7 = v4;
              }

              else
              {
                v7 = 1.0;
              }
            }
          }

          v3 = *(v40 + 16);
          v30 = *(v40 + 24);
          v31 = (v3 + 1);
          if (v3 >= v30 >> 1)
          {
            sub_1ABA8F06C(v30);
          }

          *(v40 + 16) = v31;
          *(v40 + 8 * v3 + 32) = v6 * v7;
          v28 += 32;
          --v26;
        }

        while (v26);
      }

      else
      {
        v27 = MEMORY[0x1E69E7CC0];
        v31 = *(MEMORY[0x1E69E7CC0] + 16);
        if (!v31)
        {
        }
      }

      v37 = 0.0;
      v38 = 32;
      do
      {
        v37 = v37 + *(v27 + v38) - v37 * *(v27 + v38);
        v38 += 8;
        --v31;
      }

      while (v31);

    case 4:
      v14 = v0[1];
      return (v8)();
    default:
      v9 = MEMORY[0x1E69E7CC0];
      if (*(v8 + 16))
      {
        v39 = MEMORY[0x1E69E7CC0];
        sub_1ABA7D268();
        sub_1ABA7BEAC();
        do
        {
          v10 = sub_1ABA7EEBC();
          (v3)(v10);
          sub_1ABA836EC();
          sub_1ABA8E6D8();
          if (v11)
          {
            sub_1ABA7E3F4();
          }

          sub_1ABA932BC();
          if (v13)
          {
            sub_1ABA8F06C(v12);
            v9 = v39;
          }

          sub_1ABA80798();
        }

        while (!v11);
      }

      sub_1ABD9E114(v9);
  }
}