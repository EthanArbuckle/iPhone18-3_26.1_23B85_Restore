uint64_t sub_18BB535E0(uint64_t a1)
{
  v2 = v1;
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v6 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  v7 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x68);
  v8 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  v9 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  v69 = v4;
  v70 = v5;
  v71 = v6;
  v72 = v7;
  v63 = v7;
  v73 = v8;
  v74 = v9;
  v61 = v9;
  v10 = type metadata accessor for SFFluidCollectionView.Element();
  v65 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v64 = v53 - v11;
  v67 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v60 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v59 = v53 - v15;
  v16 = sub_18BC21848();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v53 - v17;
  swift_beginAccess();
  v62 = v8;
  v19 = *(v8 + 8);
  sub_18BC1E3F8();
  v66 = a1;
  v20 = sub_18BC210B8();

  if (v20)
  {
    return result;
  }

  if (sub_18B812A74())
  {
    v23 = v22;
    ObjectType = swift_getObjectType();
    LOBYTE(v23) = (*(v23 + 40))(v2, v66, ObjectType, v23);
    result = swift_unknownObjectRelease();
    if ((v23 & 1) == 0)
    {
      return result;
    }
  }

  v54 = v6;
  v56 = v10;
  v25 = MEMORY[0x1E69E7D40];
  v26 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xD8);
  swift_beginAccess();
  v27 = *(v2 + v26);
  v55 = v4;
  if (v27)
  {
LABEL_25:
    v41 = v67;
    v58 = *(v67 + 16);
    v42 = v66;
    v58(v60, v66, v5);
    v43 = *((*v25 & *v2) + 0x198);
    swift_beginAccess();
    v69 = *(v2 + v43);
    sub_18BC210E8();
    sub_18BC1E3F8();
    v44 = v25;
    v45 = v59;
    sub_18BC21078();
    (*(v41 + 8))(v45, v5);
    sub_18BB483B4(v69);
    v46 = v64;
    v58(v64, v42, v5);
    v47 = v56;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_18BC1E3F8();
    v69 = v55;
    v70 = v5;
    v71 = v54;
    v72 = v63;
    v73 = v62;
    v74 = v61;
    _s8ItemInfoCMa();
    swift_getWitnessTable();
    sub_18BC20A28();

    (*(v65 + 8))(v46, v47);
    if (v68)
    {
      v48 = sub_18BAC12A8();
      v49 = v48;

      if (v48)
      {
        (*((*v44 & *v49) + 0xB0))(1);
      }
    }

    result = sub_18B812A74();
    if (result)
    {
      v51 = v50;
      v52 = swift_getObjectType();
      (*(v51 + 48))(v2, v66, v52, v51);
      return swift_unknownObjectRelease();
    }

    return result;
  }

  v28 = *((*v25 & *v2) + 0x198);
  swift_beginAccess();
  v29 = *(v2 + v28);
  v53[1] = v19;
  if ((v29 & 0xC000000000000001) != 0)
  {
    sub_18BC1E3F8();
    sub_18BC21958();
    result = sub_18BC210A8();
    v29 = v75;
    v30 = v76;
    v31 = v77;
    v58 = v78;
    v32 = v79;
  }

  else
  {
    v33 = -1 << *(v29 + 32);
    v30 = v29 + 56;
    v31 = ~v33;
    v34 = -v33;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    else
    {
      v35 = -1;
    }

    v32 = v35 & *(v29 + 56);
    result = sub_18BC1E3F8();
    v58 = 0;
  }

  v36 = (v67 + 56);
  v53[0] = v31;
  v57 = v67 + 16;
  v37 = (v67 + 8);
  while (v29 < 0)
  {
    if (!sub_18BC219D8())
    {
LABEL_24:
      (*v36)(v18, 1, 1, v5);
      sub_18B7D2E34();
      v25 = MEMORY[0x1E69E7D40];
      goto LABEL_25;
    }

    sub_18BC21FA8();
    swift_unknownObjectRelease();
LABEL_14:
    (*v36)(v18, 0, 1, v5);
    sub_18BB53E54(v18);
    result = (*v37)(v18, v5);
  }

  if (v32)
  {
    v38 = v58;
LABEL_13:
    v39 = __clz(__rbit64(v32));
    v32 &= v32 - 1;
    (*(v67 + 16))(v18, *(v29 + 48) + *(v67 + 72) * (v39 | (v38 << 6)), v5);
    goto LABEL_14;
  }

  v40 = v58;
  while (1)
  {
    v38 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v38 >= ((v31 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v32 = *(v30 + 8 * v38);
    v40 = (v40 + 1);
    if (v32)
    {
      v58 = v38;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18BB53E54(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *((*MEMORY[0x1E69E7D40] & v4) + 0x50);
  v6 = *((*MEMORY[0x1E69E7D40] & v4) + 0x58);
  v7 = *((*MEMORY[0x1E69E7D40] & v4) + 0x68);
  v8 = *((*MEMORY[0x1E69E7D40] & v4) + 0x70);
  v9 = *((*MEMORY[0x1E69E7D40] & v4) + 0x78);
  v31 = *((*MEMORY[0x1E69E7D40] & v4) + 0x60);
  v32 = v5;
  v36 = v5;
  v37 = v6;
  v38 = v31;
  v39 = v7;
  v30 = v7;
  v40 = v8;
  v41 = v9;
  v28 = v9;
  v10 = type metadata accessor for SFFluidCollectionView.Element();
  v33 = *(v10 - 8);
  v34 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  v13 = sub_18BC21848();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - v15;
  swift_beginAccess();
  v29 = v8;
  sub_18BC1E3F8();
  v17 = a1;
  LOBYTE(a1) = sub_18BC210B8();

  if (a1)
  {
    v19 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x198);
    swift_beginAccess();
    v36 = *(v2 + v19);
    sub_18BC210E8();
    sub_18BC1E3F8();
    v20 = v17;
    sub_18BC21088();
    (*(v14 + 8))(v16, v13);
    sub_18BB483B4(v36);
    (*(*(v6 - 8) + 16))(v12, v17, v6);
    v21 = v34;
    swift_storeEnumTagMultiPayload();
    v22 = MEMORY[0x1E69E7D40];
    swift_beginAccess();
    sub_18BC1E3F8();
    v36 = v32;
    v37 = v6;
    v38 = v31;
    v39 = v30;
    v40 = v29;
    v41 = v28;
    _s8ItemInfoCMa();
    swift_getWitnessTable();
    sub_18BC20A28();

    (*(v33 + 8))(v12, v21);
    if (v35)
    {
      v23 = sub_18BAC12A8();
      v24 = v23;

      if (v23)
      {
        (*((*v22 & *v24) + 0xB0))(0);
      }
    }

    result = sub_18B812A74();
    if (result)
    {
      v26 = v25;
      ObjectType = swift_getObjectType();
      (*(v26 + 56))(v2, v20, ObjectType, v26);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_18BB542F0()
{
  v1 = v0;
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v3 = sub_18BC21848();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v19[0] = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v19 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v19 - v10;
  swift_beginAccess();
  sub_18BC1E3F8();
  v12 = sub_18BC20FF8();
  if ((sub_18BC21098() & 1) == 0)
  {
    if (sub_18BC21048() == 1)
    {
      v19[9] = v12;
      sub_18BC210E8();
      swift_getWitnessTable();
      sub_18BC21188();
    }

    else
    {

      (*(*(v2 - 8) + 56))(v11, 1, 1, v2);
    }

    return sub_18BB475F4(v11);
  }

  sub_18BB47534(v8);
  v13 = *(v2 - 8);
  v14 = (*(v13 + 48))(v8, 1, v2);
  result = (*(v4 + 8))(v8, v3);
  if (v14 != 1)
  {
    v16 = MEMORY[0x1E69E7D40];
    v17 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x198);
    swift_beginAccess();
    v19[2] = *(v1 + v17);
    v18 = *((*v16 & *v1) + 0x198);
    swift_beginAccess();
    v19[1] = *(v1 + v18);
    sub_18BC210E8();
    swift_getWitnessTable();
    result = sub_18BC21138();
    if ((result & 1) == 0)
    {
      v11 = v19[0];
      (*(v13 + 56))(v19[0], 1, 1, v2);
      return sub_18BB475F4(v11);
    }
  }

  return result;
}

uint64_t sub_18BB546C0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0x190)))
  {
    v8 = result;
    sub_18BC1E1A8();
    sub_18BAC3AFC(v8, a2, a3, a4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_18BB54760(void *a1, void *a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *MEMORY[0x1E69E7D40];
  v9 = *MEMORY[0x1E69E7D40] & *v3;
  v10 = *(v9 + 0x78);
  v16 = *(v9 + 0x50);
  v15 = *(v9 + 88);
  v17 = v15;
  v18 = *(v9 + 104);
  v19 = v10;
  v11 = type metadata accessor for SFFluidCollectionView.Element();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v15 - v13;
  if (*(v3 + *((v8 & v7) + 0x190)))
  {
    (*(*(v15 - 8) + 16))(v14, a3);
    swift_storeEnumTagMultiPayload();
    sub_18BC1E1A8();
    sub_18BAC3F88(a1, a2, v14);

    (*(v12 + 8))(v14, v11);
  }

  else
  {
    __break(1u);
  }
}

void sub_18BB54950(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v22 = a1;
  v23 = a2;
  v7 = *v4;
  v8 = *MEMORY[0x1E69E7D40];
  v9 = (*MEMORY[0x1E69E7D40] & *v4);
  v10 = v9[6];
  v24 = v9[5];
  v25 = v10;
  v21 = v10;
  v26 = v9[7];
  v11 = type metadata accessor for SFFluidCollectionView.Element();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v21 - v13);
  if (*(v4 + *((v8 & v7) + 0x190)))
  {
    v15 = v21;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v17 = swift_allocBox();
    v19 = v18;
    v20 = *(TupleTypeMetadata2 + 48);
    (*(*(v15 - 8) + 16))(v18, a3, v15);
    (*(v12 + 16))(v19 + v20, a4, v11);
    *v14 = v17;
    swift_storeEnumTagMultiPayload();
    sub_18BC1E1A8();
    sub_18BAC3F88(v22, v23, v14);

    (*(v12 + 8))(v14, v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18BB54B60(uint64_t a1)
{
  v49 = a1;
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v45 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v44 = &v43 - v3;
  v6 = *((v5 & v4) + 0x58);
  v47 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v43 - v8;
  v10 = *(v9 + 96);
  v13 = *((v12 & v11) + 0x70);
  v14 = *((v12 & v11) + 0x78);
  *&v70[0] = v2;
  *(&v70[0] + 1) = v6;
  v51 = v10;
  v70[1] = v10;
  *&v70[2] = v13;
  *(&v70[2] + 1) = v14;
  v15 = type metadata accessor for SFFluidCollectionView.Element();
  v50 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v48 = &v43 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v43 - v21;
  sub_18B81FB48(v69);
  memcpy(v70, v69, 0x139uLL);
  if (sub_18B81CA10(v70) != 1)
  {
    v65 = v69[16];
    v66 = v69[17];
    v67[0] = v69[18];
    v61 = v69[12];
    v62 = v69[13];
    v63 = v69[14];
    v64 = v69[15];
    v57 = v69[8];
    v58 = v69[9];
    v59 = v69[10];
    v60 = v69[11];
    *(v67 + 9) = *(&v69[18] + 9);
    memcpy(v68, v69, 0x139uLL);
    v52 = v2;
    v53 = v6;
    v54 = v51;
    v55 = v13;
    v56 = v14;
    v25 = type metadata accessor for SFFluidCollectionView.DataSource.Transaction();
    v26 = *(v25 - 8);
    v27 = *(v26 + 16);
    v43 = v25;
    v27(&v52, &v57);
    v52 = v2;
    v53 = v6;
    v54 = v51;
    v55 = v13;
    v56 = v14;
    type metadata accessor for SFFluidCollectionView.Update();
    v28 = sub_18BC21848();
    (*(*(v28 - 8) + 8))(v68, v28);
    v29 = *(v50 + 16);
    v29(v22, v49, v15);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v29(v17, v22, v15);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v36 = swift_projectBox();
      v37 = *(TupleTypeMetadata2 + 48);
      if (!swift_getEnumCaseMultiPayload())
      {
        v38 = v36 + v37;
        v39 = v48;
        v29(v48, v38, v15);
        v41 = v44;
        v40 = v45;
        (*(v45 + 32))(v44, v39, v2);
        v34 = sub_18BC210B8();
        (*(v26 + 8))(&v57, v43);
        (*(v40 + 8))(v41, v2);

        goto LABEL_12;
      }

      (*(v26 + 8))(&v57, v43);
    }

    else
    {
      if (EnumCaseMultiPayload == 1)
      {
        v31 = v48;
        v29(v48, v22, v15);
        v33 = v46;
        v32 = v47;
        (*(v47 + 32))(v46, v31, v6);
        v34 = sub_18BC210B8();
        (*(v26 + 8))(&v57, v43);
        (*(v32 + 8))(v33, v6);
LABEL_12:
        (*(v50 + 8))(v22, v15);
        return v34 & 1;
      }

      (*(v26 + 8))(&v57, v43);
    }

    (*(v50 + 8))(v22, v15);
    goto LABEL_10;
  }

  memcpy(v68, v69, 0x139uLL);
  *&v23 = v2;
  *(&v23 + 1) = v6;
  v57 = v23;
  v58 = v51;
  *&v59 = v13;
  *(&v59 + 1) = v14;
  type metadata accessor for SFFluidCollectionView.Update();
  v24 = sub_18BC21848();
  (*(*(v24 - 8) + 8))(v68, v24);
LABEL_10:
  v34 = 0;
  return v34 & 1;
}

uint64_t sub_18BB55208()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*MEMORY[0x1E69E7D40] & *v0);
  sub_18B81FB48(__src);
  memcpy(__dst, __src, 0x139uLL);
  if (sub_18B81CA10(__dst) == 1)
  {
    sub_18BB23214(v34);
    v4 = v34[0];
    v5 = v34[1];
    v6 = v34[2];
    v28 = v3[11];
    v26 = v3[13];
    v27 = v3[12];
    v24 = v3[15];
    v25 = v3[14];
    *&v34[0] = v3[10];
    v29 = *&v34[0];
    *(&v34[0] + 1) = v28;
    *&v34[1] = v27;
    *(&v34[1] + 1) = v26;
    *&v34[2] = v25;
    *(&v34[2] + 1) = v24;
    type metadata accessor for SFFluidCollectionView();
    WitnessTable = swift_getWitnessTable();
    v7 = *((*v2 & *v0) + 0x1D8);
    swift_beginAccess();
    v8 = *&v1[v7];
    swift_beginAccess();
    sub_18B81D198(v33);
    sub_18BC1E1A8();
    [v1 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v34[0] = v4;
    v34[1] = v5;
    v34[2] = v6;
    v32[0] = v4;
    v32[1] = v5;
    v32[2] = v6;
    swift_retain_n();
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    sub_18BB2590C(v34, v32, v29, v28, v27, v26, v25, v24, v31);
    sub_18BB3FB20(0, v1, WitnessTable, v8, v33, v31, v34, v10, v12, v14, v16);
    CGRectMake(v34, v17, v18, v19);
    memcpy(v31, v34, 0x139uLL);
    v20 = v1;
    sub_18B824F78(v31);
  }

  else
  {
    v22 = *(v3 + 6);
    v34[0] = *(v3 + 5);
    v34[1] = v22;
    v34[2] = *(v3 + 7);
    type metadata accessor for SFFluidCollectionView.Update();
    v23 = sub_18BC21848();
    return (*(*(v23 - 8) + 8))(__src, v23);
  }
}

uint64_t sub_18BB55554(__int128 *a1, int a2)
{
  v3 = v2;
  v6 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x50);
  v7 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x60);
  v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x68);
  v9 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x70);
  v10 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x78);
  v114 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x58);
  v115 = v6;
  v119[0] = v6;
  v119[1] = v114;
  v112 = v8;
  v113 = v7;
  v119[2] = v7;
  v119[3] = v8;
  v110 = v10;
  v111 = v9;
  v119[4] = v9;
  v119[5] = v10;
  v11 = type metadata accessor for SFFluidCollectionView.Element();
  v104 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v101[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9CA0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v105 = &v101[-v15];
  v16 = a1[9];
  v128 = a1[8];
  v129 = v16;
  v130[0] = a1[10];
  *(v130 + 9) = *(a1 + 169);
  v17 = a1[5];
  v124 = a1[4];
  v125 = v17;
  v18 = a1[7];
  v126 = a1[6];
  v127 = v18;
  v19 = a1[1];
  v120 = *a1;
  v121 = v19;
  v20 = a1[3];
  v122 = a1[2];
  v123 = v20;
  v106 = a2;
  if (a2)
  {
    sub_18BB55208();
    v21 = sub_18BB48660();
    v23 = v22;
    memmove(v119, v22, 0x139uLL);
    if (sub_18B81CA10(v119) != 1)
    {
      v24 = v23[18];
      v118[9] = v23[17];
      v118[10] = v24;
      v25 = v23[16];
      v26 = v23[13];
      v118[4] = v23[12];
      v118[5] = v26;
      v27 = v23[15];
      v118[6] = v23[14];
      v118[7] = v27;
      v118[8] = v25;
      v28 = v23[9];
      v118[0] = v23[8];
      v118[1] = v28;
      v29 = v23[11];
      v118[2] = v23[10];
      v118[3] = v29;
      *(&v118[10] + 9) = *(v23 + 297);
      v30 = v121;
      v23[8] = v120;
      v31 = v128;
      v32 = v130[0];
      v23[17] = v129;
      v23[18] = v32;
      *(v23 + 297) = *(v130 + 9);
      v33 = v124;
      v34 = v126;
      v35 = v127;
      v23[13] = v125;
      v23[14] = v34;
      v23[15] = v35;
      v23[16] = v31;
      v36 = v122;
      v37 = v123;
      v23[9] = v30;
      v23[10] = v36;
      v23[11] = v37;
      v23[12] = v33;
      *&v117[0] = v115;
      *(&v117[0] + 1) = v114;
      *&v117[1] = v113;
      *(&v117[1] + 1) = v112;
      *&v117[2] = v111;
      *(&v117[2] + 1) = v110;
      v38 = type metadata accessor for SFFluidCollectionView.DataSource.Transaction();
      v39 = *(v38 - 8);
      (*(v39 + 16))(v117, &v120, v38);
      (*(v39 + 8))(v118, v38);
    }

    (v21)(v116, 0);
  }

  v40 = sub_18BB48660();
  v42 = v41;
  memmove(v119, v41, 0x139uLL);
  result = sub_18B81CA10(v119);
  if (result == 1)
  {
    (v40)(v118, 0);
  }

  else
  {
    if (!*(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x110)))
    {
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
      return result;
    }

    *v42 = sub_18BAD9F74();
    (v40)(v118, 0);
  }

  v108 = v3;
  v109 = v13;
  v107 = v11;
  if (qword_1EA9D2280 == -1)
  {
    goto LABEL_10;
  }

  while (1)
  {
    swift_once();
LABEL_10:
    v44 = sub_18BC1F2C8();
    __swift_project_value_buffer(v44, qword_1EA9F7E38);
    *&v118[0] = v115;
    *(&v118[0] + 1) = v114;
    *&v118[1] = v113;
    *(&v118[1] + 1) = v112;
    *&v118[2] = v111;
    *(&v118[2] + 1) = v110;
    v45 = type metadata accessor for SFFluidCollectionView.DataSource.Transaction();
    v46 = *(v45 - 8);
    v47 = *(v46 + 16);
    v47(v118, &v120, v45);
    v48 = sub_18BC1F2A8();
    v49 = sub_18BC21228();
    v50 = *(v46 + 8);
    v50(&v120, v45);
    if (os_log_type_enabled(v48, v49))
    {
      v51 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v116[0] = v103;
      *v51 = 136315394;
      if (v106)
      {
        v52 = 0x646574616D696E61;
      }

      else
      {
        v52 = 0x6D696E612D6E6F6ELL;
      }

      v102 = v49;
      if (v106)
      {
        v53 = 0xE800000000000000;
      }

      else
      {
        v53 = 0xEC00000064657461;
      }

      v54 = sub_18B7EA850(v52, v53, v116);

      *(v51 + 4) = v54;
      *(v51 + 12) = 2080;
      v117[8] = v128;
      v117[9] = v129;
      v117[10] = v130[0];
      *(&v117[10] + 9) = *(v130 + 9);
      v117[4] = v124;
      v117[5] = v125;
      v117[6] = v126;
      v117[7] = v127;
      v117[0] = v120;
      v117[1] = v121;
      v117[2] = v122;
      v117[3] = v123;
      v47(v118, &v120, v45);
      swift_getWitnessTable();
      v55 = sub_18BC21F48();
      v57 = v56;
      v118[8] = v117[8];
      v118[9] = v117[9];
      v118[10] = v117[10];
      *(&v118[10] + 9) = *(&v117[10] + 9);
      v118[4] = v117[4];
      v118[5] = v117[5];
      v118[6] = v117[6];
      v118[7] = v117[7];
      v118[0] = v117[0];
      v118[1] = v117[1];
      v118[2] = v117[2];
      v118[3] = v117[3];
      v50(v118, v45);
      v58 = sub_18B7EA850(v55, v57, v116);

      *(v51 + 14) = v58;
      _os_log_impl(&dword_18B7AC000, v48, v102, "applying transaction (%s): %s", v51, 0x16u);
      v59 = v103;
      swift_arrayDestroy();
      MEMORY[0x18CFFEEE0](v59, -1, -1);
      MEMORY[0x18CFFEEE0](v51, -1, -1);
    }

    v61 = v107;
    v60 = v108;
    if (BYTE8(v130[1]) == 1)
    {
      sub_18B81F588(v118);
      memcpy(v117, v118, 0x139uLL);
      return sub_18B824F78(v117);
    }

    result = *(v108 + *((*MEMORY[0x1E69E7D40] & *v108) + 0xF0));
    if (!result)
    {
      goto LABEL_65;
    }

    [result dismissMenu];
    v62 = v105;
    sub_18BB48550(v105);
    updated = type metadata accessor for SFFluidCollectionViewTrackedUpdateToken();
    v64 = (*(*(updated - 8) + 48))(v62, 1, updated);
    sub_18B988BAC(v62, &unk_1EA9D9CA0);
    if (v64 != 1)
    {
      goto LABEL_41;
    }

    v65 = *((*MEMORY[0x1E69E7D40] & *v60) + 0x100);
    swift_beginAccess();
    v66 = *(v60 + v65);
    if ((v66 & 0xC000000000000001) != 0)
    {
      sub_18BC1E3F8();
      sub_18BC21958();
      *&v118[0] = v115;
      *(&v118[0] + 1) = v114;
      *&v118[1] = v113;
      *(&v118[1] + 1) = v112;
      *&v118[2] = v111;
      *(&v118[2] + 1) = v110;
      _s8ItemInfoCMa();
      swift_getWitnessTable();
      sub_18BC210A8();
      v67 = *(&v117[0] + 1);
      v66 = *&v117[0];
      v69 = *(&v117[1] + 1);
      v68 = *&v117[1];
      v70 = *&v117[2];
    }

    else
    {
      v71 = -1 << *(v66 + 32);
      v67 = v66 + 56;
      v68 = ~v71;
      v72 = -v71;
      v73 = v72 < 64 ? ~(-1 << v72) : -1;
      v70 = v73 & *(v66 + 56);
      sub_18BC1E3F8();
      v69 = 0;
    }

    if (v66 < 0)
    {
      break;
    }

LABEL_29:
    v74 = v70;
    v75 = v69;
    if (v70)
    {
LABEL_34:
      v77 = (v74 - 1) & v74;
      v78 = *(*(v66 + 48) + ((v75 << 9) | (8 * __clz(__rbit64(v74)))));
      sub_18BC1E1A8();
      if (v78)
      {
        goto LABEL_38;
      }

      goto LABEL_40;
    }

    v76 = v69;
    while (1)
    {
      v75 = v76 + 1;
      if (__OFADD__(v76, 1))
      {
        break;
      }

      if (v75 >= ((v68 + 64) >> 6))
      {
        goto LABEL_40;
      }

      v74 = *(v67 + 8 * v75);
      ++v76;
      if (v74)
      {
        goto LABEL_34;
      }
    }

LABEL_61:
    __break(1u);
  }

  while (sub_18BC219D8())
  {
    *&v118[0] = v115;
    *(&v118[0] + 1) = v114;
    *&v118[1] = v113;
    *(&v118[1] + 1) = v112;
    *&v118[2] = v111;
    *(&v118[2] + 1) = v110;
    _s8ItemInfoCMa();
    sub_18BC21FA8();
    swift_unknownObjectRelease();
    v75 = v69;
    v77 = v70;
    if (!v116[0])
    {
      break;
    }

LABEL_38:
    sub_18BABFD3C();

    v69 = v75;
    v70 = v77;
    if ((v66 & 0x8000000000000000) == 0)
    {
      goto LABEL_29;
    }
  }

LABEL_40:
  sub_18B7D2E34();
  v61 = v107;
  v60 = v108;
LABEL_41:
  v79 = *((*MEMORY[0x1E69E7D40] & *v60) + 0x150);
  swift_beginAccess();
  v80 = *(v60 + v79);
  *&v118[0] = v115;
  *(&v118[0] + 1) = v114;
  *&v118[1] = v113;
  *(&v118[1] + 1) = v112;
  *&v118[2] = v111;
  *(&v118[2] + 1) = v110;
  _s8ItemInfoCMa();
  WitnessTable = swift_getWitnessTable();
  v82 = v80 + 64;
  v83 = 1 << *(v80 + 32);
  v84 = -1;
  if (v83 < 64)
  {
    v84 = ~(-1 << v83);
  }

  v85 = v84 & *(v80 + 64);
  v86 = (v83 + 63) >> 6;
  v113 = (v104 + 16);
  v114 = WitnessTable;
  v112 = (v104 + 8);
  v115 = v80;
  sub_18BC1E3F8();
  v87 = 0;
  while (v85)
  {
LABEL_52:
    v90 = *(*(v115 + 56) + ((v87 << 9) | (8 * __clz(__rbit64(v85)))));
    v91 = *(*v90 + 184);
    swift_beginAccess();
    v92 = v109;
    (*v113)(v109, v90 + v91, v61);
    sub_18BC1E1A8();
    if (sub_18BC210B8())
    {
      (*v112)(v92, v61);
      v88 = 1;
LABEL_45:
      *(v90 + *(*v90 + 200)) = v88;
      goto LABEL_46;
    }

    v93 = sub_18BC210B8();
    (*v112)(v92, v61);
    if (v93)
    {
      v88 = 0;
      goto LABEL_45;
    }

LABEL_46:
    v85 &= v85 - 1;
  }

  while (1)
  {
    v89 = v87 + 1;
    if (__OFADD__(v87, 1))
    {
      __break(1u);
      goto LABEL_61;
    }

    if (v89 >= v86)
    {
      break;
    }

    v85 = *(v82 + 8 * v89);
    ++v87;
    if (v85)
    {
      v87 = v89;
      goto LABEL_52;
    }
  }

  v94 = v108;
  swift_beginAccess();
  sub_18BC1E1A8();
  sub_18B8657E0();

  result = sub_18B8490A0();
  if (result)
  {
    return result;
  }

  if (v106)
  {
    return [v94 layoutIfNeeded];
  }

  v95 = objc_opt_self();
  v96 = swift_allocObject();
  *(v96 + 16) = v94;
  v97 = swift_allocObject();
  *(v97 + 16) = sub_18B848FAC;
  *(v97 + 24) = v96;
  *&v118[2] = sub_18B9D53B0;
  *(&v118[2] + 1) = v97;
  *&v118[0] = MEMORY[0x1E69E9820];
  *(&v118[0] + 1) = 1107296256;
  *&v118[1] = sub_18B7E3BF4;
  *(&v118[1] + 1) = &block_descriptor_197;
  v98 = _Block_copy(v118);
  v99 = v94;
  sub_18BC1E1A8();

  [v95 performWithoutAnimation_];
  _Block_release(v98);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_64;
  }

  return result;
}

uint64_t sub_18BB56330@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9CA0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  updated = type metadata accessor for SFFluidCollectionViewTrackedUpdateToken();
  v10 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1DE28();
  sub_18B85A52C(v12, v8, type metadata accessor for SFFluidCollectionViewTrackedUpdateToken);
  (*(v10 + 56))(v8, 0, 1, updated);
  v13 = sub_18BB485D4(v8);
  a1(v13);
  [v3 layoutIfNeeded];
  sub_18B85A52C(v12, a2, type metadata accessor for SFFluidCollectionViewTrackedUpdateToken);
  sub_18BB564DC();
  return sub_18BB69570(v12, type metadata accessor for SFFluidCollectionViewTrackedUpdateToken);
}

uint64_t sub_18BB564DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9CA0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v5 - v1;
  updated = type metadata accessor for SFFluidCollectionViewTrackedUpdateToken();
  (*(*(updated - 8) + 56))(v2, 1, 1, updated);
  return sub_18BB485D4(v2);
}

id sub_18BB56594(uint64_t a1, double a2)
{
  v52 = a1;
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  updated = type metadata accessor for SFFluidCollectionViewTrackedUpdateToken();
  v54 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated);
  v43 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9CB8);
  MEMORY[0x1EEE9AC00](v51);
  v55 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9CA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v50 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - v11;
  v13 = *((v5 & v4) + 0x150);
  swift_beginAccess();
  v14 = *(v2 + v13);
  v15 = *((v5 & v4) + 0x50);
  v16 = *((v5 & v4) + 0x58);
  v17 = *((v5 & v4) + 0x60);
  v18 = *((v5 & v4) + 0x68);
  v19 = *((v5 & v4) + 0x70);
  v42 = v2;
  v20 = *((v5 & v4) + 0x78);
  v56 = v15;
  v57 = v16;
  v58 = v17;
  v59 = v18;
  v60 = v19;
  v61 = v20;
  type metadata accessor for SFFluidCollectionView.Element();
  v56 = v15;
  v57 = v16;
  v58 = v17;
  v59 = v18;
  v21 = updated;
  v60 = v19;
  v61 = v20;
  _s8ItemInfoCMa();
  swift_getWitnessTable();
  v22 = v14 + 64;
  v23 = 1 << *(v14 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v14 + 64);
  v26 = (v23 + 63) >> 6;
  v48 = (v54 + 56);
  v53 = v14;
  v27 = (v54 + 48);
  result = sub_18BC1E3F8();
  v29 = 0;
  v54 = v12;
  v49 = v22;
  v46 = v26;
  v47 = v27;
  while (v25)
  {
    v30 = v55;
LABEL_13:
    v32 = *(*(v53 + 56) + ((v29 << 9) | (8 * __clz(__rbit64(v25)))));
    v33 = *(*v32 + 160);
    swift_beginAccess();
    sub_18B85A52C(v52, v12, type metadata accessor for SFFluidCollectionViewTrackedUpdateToken);
    (*v48)(v12, 0, 1, v21);
    v34 = *(v51 + 48);
    sub_18B7CA054(v32 + v33, v30, &unk_1EA9D9CA0);
    sub_18B7CA054(v12, v30 + v34, &unk_1EA9D9CA0);
    v35 = *v27;
    if ((*v27)(v30, 1, v21) == 1)
    {
      sub_18BC1E1A8();
      sub_18B988BAC(v12, &unk_1EA9D9CA0);
      v36 = v35(v55 + v34, 1, v21);
      v26 = v46;
      if (v36 != 1)
      {
        goto LABEL_5;
      }

      sub_18B988BAC(v55, &unk_1EA9D9CA0);
      v22 = v49;
LABEL_18:
      sub_18BABFD18(a2);
      goto LABEL_6;
    }

    v37 = v55;
    sub_18B7CA054(v55, v50, &unk_1EA9D9CA0);
    if (v35(v37 + v34, 1, v21) == 1)
    {
      sub_18BC1E1A8();
      sub_18B988BAC(v54, &unk_1EA9D9CA0);
      sub_18BB69570(v50, type metadata accessor for SFFluidCollectionViewTrackedUpdateToken);
      v21 = updated;
      v26 = v46;
LABEL_5:
      sub_18B988BAC(v55, &unk_1EA9D9CB8);
      v22 = v49;
      goto LABEL_6;
    }

    v38 = v55;
    v39 = v55 + v34;
    v40 = v43;
    sub_18B85A83C(v39, v43, type metadata accessor for SFFluidCollectionViewTrackedUpdateToken);
    sub_18BC1E1A8();
    v41 = v50;
    v44 = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
    sub_18BB69570(v40, type metadata accessor for SFFluidCollectionViewTrackedUpdateToken);
    sub_18B988BAC(v54, &unk_1EA9D9CA0);
    sub_18BB69570(v41, type metadata accessor for SFFluidCollectionViewTrackedUpdateToken);
    sub_18B988BAC(v38, &unk_1EA9D9CA0);
    v21 = updated;
    v22 = v49;
    v26 = v46;
    if (v44)
    {
      goto LABEL_18;
    }

LABEL_6:
    v25 &= v25 - 1;

    v12 = v54;
  }

  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v31 >= v26)
    {

      return [v42 setNeedsLayout];
    }

    v25 = *(v22 + 8 * v31);
    ++v29;
    if (v25)
    {
      v30 = v55;
      v29 = v31;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

id sub_18BB56BC0(uint64_t a1)
{
  v50 = a1;
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  updated = type metadata accessor for SFFluidCollectionViewTrackedUpdateToken();
  v52 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated);
  v41 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9CB8);
  MEMORY[0x1EEE9AC00](v49);
  v53 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9CA0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v48 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - v9;
  v11 = *((v3 & v2) + 0x150);
  swift_beginAccess();
  v12 = *(v1 + v11);
  v13 = *((v3 & v2) + 0x50);
  v14 = *((v3 & v2) + 0x58);
  v15 = *((v3 & v2) + 0x60);
  v16 = *((v3 & v2) + 0x68);
  v17 = *((v3 & v2) + 0x70);
  v40 = v1;
  v18 = *((v3 & v2) + 0x78);
  v54 = v13;
  v55 = v14;
  v56 = v15;
  v57 = v16;
  v58 = v17;
  v59 = v18;
  type metadata accessor for SFFluidCollectionView.Element();
  v54 = v13;
  v55 = v14;
  v56 = v15;
  v57 = v16;
  v19 = updated;
  v58 = v17;
  v59 = v18;
  _s8ItemInfoCMa();
  swift_getWitnessTable();
  v20 = v12 + 64;
  v21 = 1 << *(v12 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v12 + 64);
  v24 = (v21 + 63) >> 6;
  v46 = (v52 + 56);
  v51 = v12;
  v25 = (v52 + 48);
  result = sub_18BC1E3F8();
  v27 = 0;
  v52 = v10;
  v47 = v20;
  v44 = v24;
  v45 = v25;
  while (v23)
  {
    v28 = v53;
LABEL_13:
    v30 = *(*(v51 + 56) + ((v27 << 9) | (8 * __clz(__rbit64(v23)))));
    v31 = *(*v30 + 160);
    swift_beginAccess();
    sub_18B85A52C(v50, v10, type metadata accessor for SFFluidCollectionViewTrackedUpdateToken);
    (*v46)(v10, 0, 1, v19);
    v32 = *(v49 + 48);
    sub_18B7CA054(v30 + v31, v28, &unk_1EA9D9CA0);
    sub_18B7CA054(v10, v28 + v32, &unk_1EA9D9CA0);
    v33 = *v25;
    if ((*v25)(v28, 1, v19) == 1)
    {
      sub_18BC1E1A8();
      sub_18B988BAC(v10, &unk_1EA9D9CA0);
      v34 = v33(v53 + v32, 1, v19);
      v24 = v44;
      if (v34 != 1)
      {
        goto LABEL_5;
      }

      sub_18B988BAC(v53, &unk_1EA9D9CA0);
      v20 = v47;
LABEL_18:
      sub_18BABFD3C();
      goto LABEL_6;
    }

    v35 = v53;
    sub_18B7CA054(v53, v48, &unk_1EA9D9CA0);
    if (v33(v35 + v32, 1, v19) == 1)
    {
      sub_18BC1E1A8();
      sub_18B988BAC(v52, &unk_1EA9D9CA0);
      sub_18BB69570(v48, type metadata accessor for SFFluidCollectionViewTrackedUpdateToken);
      v19 = updated;
      v24 = v44;
LABEL_5:
      sub_18B988BAC(v53, &unk_1EA9D9CB8);
      v20 = v47;
      goto LABEL_6;
    }

    v36 = v53;
    v37 = v53 + v32;
    v38 = v41;
    sub_18B85A83C(v37, v41, type metadata accessor for SFFluidCollectionViewTrackedUpdateToken);
    sub_18BC1E1A8();
    v39 = v48;
    v42 = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
    sub_18BB69570(v38, type metadata accessor for SFFluidCollectionViewTrackedUpdateToken);
    sub_18B988BAC(v52, &unk_1EA9D9CA0);
    sub_18BB69570(v39, type metadata accessor for SFFluidCollectionViewTrackedUpdateToken);
    sub_18B988BAC(v36, &unk_1EA9D9CA0);
    v19 = updated;
    v24 = v44;
    v20 = v47;
    if (v42)
    {
      goto LABEL_18;
    }

LABEL_6:
    v23 &= v23 - 1;

    v10 = v52;
  }

  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v24)
    {

      return [v40 setNeedsLayout];
    }

    v23 = *(v20 + 8 * v29);
    ++v27;
    if (v23)
    {
      v28 = v53;
      v27 = v29;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18BB571BC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xE0);
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
    swift_allocObject();
    v5 = v4;
    v6 = sub_18BC20DB8();
    *v7 = v5;
    type metadata accessor for SFFluidCollectionView.Interaction();
    result = sub_18BC20E78();
  }

  else
  {
    type metadata accessor for SFFluidCollectionView.Interaction();
    result = sub_18BC20DE8();
    v6 = result;
  }

  *a1 = v6;
  return result;
}

uint64_t sub_18BB572F8(void *a1)
{
  v2 = v1;
  v4 = v2;
  sub_18B9F725C();

  swift_beginAccess();
  v5 = a1;
  type metadata accessor for SFFluidCollectionView.Interaction();
  sub_18BC20E78();
  sub_18BC20E38();
  return swift_endAccess();
}

void sub_18BB573F8(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E7D40];
  v7 = (*MEMORY[0x1E69E7D40] & *v2);
  v8 = v7[28];
  swift_beginAccess();
  v9 = *(v3 + v8);
  if (v9)
  {
    v10 = *((*v6 & *v9) + 0xA8);
    v11 = v9;
    v10();
  }

  v28 = a1;
  sub_18BB47C34(a1);
  v35 = a2;
  MEMORY[0x1EEE9AC00](v12);
  v13 = v7[11];
  v22 = v7[10];
  v23 = v13;
  v14 = v7[13];
  v24 = v7[12];
  v25 = v14;
  v15 = v7[15];
  v26 = v7[14];
  v27 = v15;
  v16 = sub_18BC20E78();
  v29 = v22;
  v30 = v13;
  v31 = v24;
  v32 = v14;
  v33 = v26;
  v34 = v15;
  v17 = type metadata accessor for SFFluidCollectionView.Element();
  WitnessTable = swift_getWitnessTable();
  v29 = sub_18B82DECC(sub_18BB66C98, &v21, v16, v17, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v19);
  sub_18BC20E78();
  swift_getWitnessTable();
  swift_getWitnessTable();
  *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0xE8)) = sub_18BC210F8();

  [v3 setNeedsLayout];
  v20 = [objc_opt_self() defaultCenter];
  if (qword_1EA9D2458 != -1)
  {
    swift_once();
  }

  [v20 postNotificationName:qword_1EA9D9C80 object:{v28, v28}];
}

uint64_t sub_18BB576E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 16))(a3, a1);
  type metadata accessor for SFFluidCollectionView.Element();
  return swift_storeEnumTagMultiPayload();
}

id sub_18BB577A0(uint64_t a1)
{
  v3 = [objc_opt_self() defaultCenter];
  if (qword_1EA9D2460 != -1)
  {
    swift_once();
  }

  [v3 postNotificationName:qword_1EA9D9C88 object:a1];

  v4 = (v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x158));
  v5 = *(MEMORY[0x1E695F050] + 16);
  *v4 = *MEMORY[0x1E695F050];
  v4[1] = v5;

  return [v1 setNeedsLayout];
}

id sub_18BB57890(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*MEMORY[0x1E69E7D40] & *v1);
  sub_18BB47C34(0);
  v13 = v4[5];
  v14 = v4[6];
  v15 = v4[7];
  v5 = type metadata accessor for SFFluidCollectionView.Element();
  v6 = sub_18BC20DE8();
  if (sub_18BC20E28())
  {
    WitnessTable = swift_getWitnessTable();
    v8 = sub_18BB32DD8(v6, v5, WitnessTable);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CD0];
  }

  *(v1 + *((*v3 & *v1) + 0xE8)) = v8;

  v9 = (v1 + *((*v3 & *v1) + 0x158));
  v10 = *(MEMORY[0x1E695F050] + 16);
  *v9 = *MEMORY[0x1E695F050];
  v9[1] = v10;
  v11 = [objc_opt_self() defaultCenter];
  if (qword_1EA9D2468 != -1)
  {
    swift_once();
  }

  [v11 postNotificationName:qword_1EA9D9C90 object:a1];

  return [v1 setNeedsLayout];
}

uint64_t sub_18BB57A64(uint64_t a1)
{
  v3 = (*MEMORY[0x1E69E7D40] & *v1);
  v4 = v3[28];
  v5 = swift_beginAccess();
  v6 = *(v1 + v4);
  if (v6)
  {
    v7 = v6 == a1;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    MEMORY[0x1EEE9AC00](v5);
    sub_18BC1E3F8();
    type metadata accessor for SFFluidCollectionView.Element();
    swift_getWitnessTable();
    sub_18BC210E8();
    swift_getWitnessTable();
    sub_18BC20CD8();

    sub_18BC20E78();
    swift_getWitnessTable();
    return sub_18BC210F8();
  }

  else
  {
    v8 = v3[11];
    v9 = sub_18BC20DE8();
    if (sub_18BC20E28())
    {
      v10 = sub_18BB32DD8(v9, v8, *(v3[14] + 8));

      return v10;
    }

    else
    {

      return MEMORY[0x1E69E7CD0];
    }
  }
}

uint64_t sub_18BB57CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v19[0] = a2;
  v19[1] = a3;
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a6;
  v19[5] = a7;
  v11 = type metadata accessor for SFFluidCollectionView.Element();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v19 - v14;
  (*(v12 + 16))(v19 - v14, a1, v11, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *(a3 - 8);
    (*(v16 + 32))(a8, v15, a3);
    v17 = 0;
  }

  else
  {
    (*(v12 + 8))(v15, v11);
    v16 = *(a3 - 8);
    v17 = 1;
  }

  return (*(v16 + 56))(a8, v17, 1, a3);
}

uint64_t sub_18BB57F0C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v15 - v8;
  v15[0] = *((v5 & v4) + 0x50);
  v15[1] = v6;
  v11 = *(v10 + 112);
  v16 = *(v10 + 96);
  v17 = v11;
  v12 = type metadata accessor for SFFluidCollectionView.MenuItemIdentifier();
  (*(v7 + 16))(v9, &v2[*((v5 & v4) + 0x80)], v6);
  v13 = sub_18BB66DEC(v9);
  result = (*(v7 + 8))(v9, v6);
  a2[3] = v12;
  *a2 = v13;
  return result;
}

uint64_t sub_18BB58094(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_18BB57F0C(a3, v7);

  __swift_project_boxed_opaque_existential_1Tm(v7, v7[3]);
  v5 = sub_18BC21FB8();
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  return v5;
}

uint64_t sub_18BB580FC(void *a1)
{
  v1 = a1;
  v2 = sub_18BB58130(v1);

  return v2;
}

uint64_t sub_18BB58130(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - v7;
  (*(v5 + 16))(&v11 - v7, &v1[*((v3 & v2) + 0x80)], v4, v6);
  v9 = sub_18BC20A88();
  (*(v5 + 8))(v8, v4);
  return v9;
}

uint64_t sub_18BB58264(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  v4 = *(v3 + 0x58);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  sub_18B7CA054(v11, v23, &qword_1EA9D5220);
  if (!v24)
  {
    sub_18B988BAC(v23, &qword_1EA9D5220);
    goto LABEL_5;
  }

  v18 = *(v3 + 80);
  v19 = v4;
  v12 = *(v3 + 112);
  v20 = *(v3 + 96);
  v17 = v12;
  v21 = v12;
  type metadata accessor for SFFluidCollectionView.MenuItemIdentifier();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v14 = 0;
    return v14 & 1;
  }

  v13 = v22;
  (*(*(*((*v2 & *v1) + 0x58) - 8) + 16))(v10, &v1[*((*v2 & *v1) + 0x80)]);
  (*(*(*((*v2 & *v13) + 0x58) - 8) + 16))(v7, &v13[*((*v2 & *v13) + 0x80)]);
  v14 = sub_18BC20AE8();

  v15 = *(v5 + 8);
  v15(v7, v4);
  v15(v10, v4);
  return v14 & 1;
}

uint64_t sub_18BB58520(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_18BC218B8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = sub_18BB58264(v8);

  sub_18B988BAC(v8, &qword_1EA9D5220);
  return v6 & 1;
}

BOOL sub_18BB586B4(void *a1)
{
  v1 = a1;
  v2 = sub_18BB586E8();

  return v2;
}

BOOL sub_18BB586E8()
{
  v0 = sub_18BB48194();
  v1 = sub_18BB47924();
  v2 = sub_18B9A669C();

  return v2;
}

id sub_18BB58734(void *a1)
{
  v1 = a1;
  v2 = sub_18BB587B4();

  if (v2)
  {
    sub_18B7B0AC0(0, &qword_1EA9D7FF0);
    v3 = sub_18BC20D88();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_18BB587B4()
{
  v0 = sub_18BB47924();
  v1 = [v0 keyCommandsForSelectionExtension];

  sub_18B7B0AC0(0, &qword_1EA9D7FF0);
  v2 = sub_18BC20D98();

  return v2;
}

double sub_18BB58824@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = (*MEMORY[0x1E69E7D40] & *v3);
  v8 = sub_18BB47924();
  v9 = [v8 respondsToSelector_];

  if (v9)
  {
    v10 = sub_18BB47924();
    *(a3 + 24) = sub_18B7B0AC0(0, &unk_1EA9D9CC8);
    *a3 = v10;
  }

  else
  {
    sub_18B7CA054(a2, &v23, &qword_1EA9D5220);
    v12 = *(&v24 + 1);
    if (*(&v24 + 1))
    {
      v13 = __swift_project_boxed_opaque_existential_1Tm(&v23, *(&v24 + 1));
      v14 = *(v12 - 8);
      v15 = MEMORY[0x1EEE9AC00](v13);
      v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v14 + 16))(v17, v15);
      v18 = sub_18BC21FB8();
      (*(v14 + 8))(v17, v12);
      __swift_destroy_boxed_opaque_existential_1Tm(&v23);
    }

    else
    {
      v18 = 0;
    }

    v19 = v7[6];
    v23 = v7[5];
    v24 = v19;
    v25 = v7[7];
    v20 = type metadata accessor for SFFluidCollectionView();
    v26.receiver = v3;
    v26.super_class = v20;
    v21 = objc_msgSendSuper2(&v26, sel_targetForAction_withSender_, a1, v18);
    swift_unknownObjectRelease();
    if (v21)
    {
      sub_18BC218B8();
      swift_unknownObjectRelease();
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
    }

    result = *&v23;
    v22 = v24;
    *a3 = v23;
    *(a3 + 16) = v22;
  }

  return result;
}

id sub_18BB58A70(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_18BC218B8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    v7 = a1;
  }

  sub_18BB58824(a3, v16, v17);

  sub_18B988BAC(v16, &qword_1EA9D5220);
  v8 = v18;
  if (v18)
  {
    v9 = __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    v10 = *(v8 - 8);
    v11 = MEMORY[0x1EEE9AC00](v9);
    v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v11);
    v14 = sub_18BC21FB8();
    (*(v10 + 8))(v13, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id sub_18BB58C04@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (sub_18BC20AE8())
  {
    result = 0;
  }

  else
  {
    type metadata accessor for SFFluidCollectionView.MenuItemIdentifier();
    result = sub_18BB66DEC(a1);
  }

  *a2 = result;
  return result;
}

id sub_18BB58CB4(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = a1;
  v10 = sub_18BB66E70(a2, a3);

  return v10;
}

void sub_18BB58D34(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = a1;
  sub_18BB674E4(v9, a5);

  swift_unknownObjectRelease();
}

id sub_18BB58E0C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t (*a6)(id, uint64_t))
{
  v10 = a3;
  v11 = a4;
  swift_unknownObjectRetain();
  v12 = a1;
  v13 = a6(v10, a5);

  swift_unknownObjectRelease();

  return v13;
}

void sub_18BB58EEC(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, uint64_t))
{
  v10 = a3;
  v11 = a4;
  swift_unknownObjectRetain();
  v12 = a1;
  a6(v11, a5);

  swift_unknownObjectRelease();
}

id SFFluidCollectionView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id sub_18BB59124(uint64_t (*a1)(void, _OWORD *))
{
  v2 = (*MEMORY[0x1E69E7D40] & *v1);
  v3 = v2[6];
  v6[0] = v2[5];
  v6[1] = v3;
  v6[2] = v2[7];
  v4 = a1(0, v6);
  v7.receiver = v1;
  v7.super_class = v4;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_18BB591AC(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];

  sub_18B7B55F4(&a1[*((*v2 & *a1) + 0x88)]);

  sub_18B7B171C(*&a1[*((*v2 & *a1) + 0xA0)]);
  sub_18B7B171C(*&a1[*((*v2 & *a1) + 0xA8)]);
  sub_18B7B171C(*&a1[*((*v2 & *a1) + 0xB0)]);
  sub_18B7B55F4(&a1[*((*v2 & *a1) + 0xB8)]);
  sub_18B7B55F4(&a1[*((*v2 & *a1) + 0xC0)]);
  v3 = *((*v2 & *a1) + 0xC8);
  v4 = sub_18BC21848();
  v5 = *(*(v4 - 8) + 8);
  v5(&a1[v3], v4);
  sub_18B7B55F4(&a1[*((*v2 & *a1) + 0xD0)]);

  v5(&a1[*((*v2 & *a1) + 0x118)], v4);

  sub_18B988BAC(&a1[*((*v2 & *a1) + 0x1A8)], &unk_1EA9D9CA0);
  memcpy(__dst, &a1[*((*v2 & *a1) + 0x1B0)], 0x139uLL);
  type metadata accessor for SFFluidCollectionView.Update();
  v6 = sub_18BC21848();
  (*(*(v6 - 8) + 8))(__dst, v6);
  swift_unknownObjectRelease();
}

void (*sub_18BB59810(uint64_t **a1, double a2, double a3, double a4, double a5))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x28uLL);
  }

  *a1 = v10;
  v10[4] = sub_18BB65700(v10, a2, a3, a4, a5);
  return sub_18B99C650;
}

void sub_18BB598B0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4CA0);
      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_18BB59AB8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        a7(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_18BB59C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_18B857EE4(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_18BB291BC();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_18BC1EC08();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for TabIconPool.Request(0);
    v20 = *(v13 - 8);
    sub_18B85A83C(v12 + *(v20 + 72) * v7, a2, type metadata accessor for TabIconPool.Request);
    sub_18BB5A584(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for TabIconPool.Request(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

double sub_18BB59DF8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_18BB8B258(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v16 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_18BB298F0();
      v9 = v16;
    }

    v10 = *(v9 + 48);
    v11 = _s4ItemVMa_4();
    sub_18BB69570(v10 + *(*(v11 - 8) + 72) * v7, _s4ItemVMa_4);
    v12 = (*(v9 + 56) + 80 * v7);
    v13 = v12[3];
    a2[2] = v12[2];
    a2[3] = v13;
    *(a2 + 57) = *(v12 + 57);
    v14 = v12[1];
    *a2 = *v12;
    a2[1] = v14;
    sub_18BB5AD9C(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *(a2 + 57) = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_18BB59EEC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_18BB8B29C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v16 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_18BB2992C();
      v9 = v16;
    }

    v10 = *(v9 + 48);
    v11 = _s4ItemVMa();
    sub_18BB69570(v10 + *(*(v11 - 8) + 72) * v7, _s4ItemVMa);
    v12 = (*(v9 + 56) + 80 * v7);
    v13 = v12[3];
    a2[2] = v12[2];
    a2[3] = v13;
    *(a2 + 57) = *(v12 + 57);
    v14 = v12[1];
    *a2 = *v12;
    a2[1] = v14;
    sub_18BB5B0AC(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *(a2 + 57) = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_18BB59FE0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_18B8629FC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v16 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_18BB2A5E0();
      v9 = v16;
    }

    v10 = *(v9 + 48);
    v11 = _s4PageVMa_0();
    sub_18BB69570(v10 + *(*(v11 - 8) + 72) * v7, _s4PageVMa_0);
    v12 = (*(v9 + 56) + (v7 << 6));
    v13 = v12[1];
    *a2 = *v12;
    a2[1] = v13;
    v14 = v12[3];
    a2[2] = v12[2];
    a2[3] = v14;
    sub_18BB5BA5C(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_18BB5A0C4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_18B85DC48(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_18BB2AF24();
      v9 = v11;
    }

    sub_18B831014(*(v9 + 48) + 40 * v7);
    sub_18B7B1AD4((*(v9 + 56) + 32 * v7), a2);
    sub_18BB5C550(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_18BB5A168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_18B83B1C8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_18BB2B6F4();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
    sub_18B988BAC(v10 + *(*(v11 - 8) + 72) * v7, &unk_1EA9D92F0);
    v12 = *(v9 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F40);
    v20 = *(v13 - 8);
    sub_18B7CF39C(v12 + *(v20 + 72) * v7, a2, &unk_1EA9D4F40);
    sub_18BB5CBA0(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F40);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

double sub_18BB5A324@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_18B7E172C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_18BB2BF18();
      v9 = v11;
    }

    sub_18B7CDFCC(*(v9 + 56) + 16 * v7, a2);
    sub_18BB5CEAC(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = xmmword_18BC46770;
  }

  return result;
}

uint64_t sub_18BB5A3C8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18BC21928() + 1) & ~v5;
    do
    {
      sub_18BC22158();
      sub_18BC1E3F8();
      sub_18BC20C28();
      v9 = sub_18BC221A8();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (16 * v3 != 16 * v6 || (v3 = v6, v15 >= v16 + 1))
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_18BB5A584(int64_t a1, uint64_t a2)
{
  v4 = sub_18BC1EC08();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = sub_18BC21928();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_18B82BA00(&qword_1EA9D3970);
      v22 = sub_18BC20A68();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(type metadata accessor for TabIconPool.Request(0) - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

void sub_18BB5A8B4(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18BC21928() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 24 * v6);
      sub_18BC22158();
      v10 = v9;
      sub_18BC1E3F8();
      sub_18BC215D8();
      sub_18BC20C28();
      v11 = sub_18BC221A8();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = v13 + 24 * v3;
        v15 = (v13 + 24 * v6);
        if (v3 != v6 || v14 >= v15 + 24)
        {
          v16 = *v15;
          *(v14 + 16) = *(v15 + 2);
          *v14 = v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 8 * v3);
        v19 = (v17 + 8 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

void sub_18BB5AA94(int64_t a1, uint64_t a2)
{
  v38 = sub_18BC1EC08();
  v4 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_18BC21928();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_18B82BA00(&qword_1EA9D3970);
      v22 = sub_18BC20A68();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 16 * a1);
          v28 = (v26 + 16 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

char *sub_18BB5AD9C(int64_t a1, uint64_t a2)
{
  v27 = _s4ItemVMa_4();
  v4 = *(v27 - 8);
  result = MEMORY[0x1EEE9AC00](v27);
  v26 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = (sub_18BC21928() + 1) & ~v8;
    v12 = *(v4 + 72);
    v24 = v12;
    v25 = a2 + 64;
    v13 = v26;
    do
    {
      v14 = v12 * v9;
      sub_18B85A52C(*(a2 + 48) + v12 * v9, v13, _s4ItemVMa_4);
      sub_18BC22158();
      sub_18BC1EC08();
      sub_18B82BA00(&qword_1EA9D3970);
      sub_18BC20A78();
      v15 = sub_18BC221A8();
      result = sub_18BB69570(v13, _s4ItemVMa_4);
      v16 = v15 & v10;
      if (a1 >= v11)
      {
        if (v16 < v11)
        {
          v12 = v24;
          v7 = v25;
          goto LABEL_4;
        }

        v12 = v24;
        if (a1 >= v16)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v12 = v24;
        if (v16 >= v11 || a1 >= v16)
        {
LABEL_11:
          if (v12 * a1 < v14 || *(a2 + 48) + v12 * a1 >= (*(a2 + 48) + v14 + v12))
          {
            swift_arrayInitWithTakeFrontToBack();
            v7 = v25;
          }

          else
          {
            v17 = v12 * a1 == v14;
            v7 = v25;
            if (!v17)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v18 = *(a2 + 56);
          result = (v18 + 80 * a1);
          v19 = (v18 + 80 * v9);
          if (80 * a1 < (80 * v9) || result >= v19 + 80 || a1 != v9)
          {
            result = memmove(result, v19, 0x50uLL);
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      v7 = v25;
LABEL_4:
      v9 = (v9 + 1) & v10;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

char *sub_18BB5B0AC(int64_t a1, uint64_t a2)
{
  v27 = _s4ItemVMa();
  v4 = *(v27 - 8);
  result = MEMORY[0x1EEE9AC00](v27);
  v26 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = (sub_18BC21928() + 1) & ~v8;
    v12 = *(v4 + 72);
    v24 = v12;
    v25 = a2 + 64;
    v13 = v26;
    do
    {
      v14 = v12 * v9;
      sub_18B85A52C(*(a2 + 48) + v12 * v9, v13, _s4ItemVMa);
      sub_18BC22158();
      sub_18BC1EC08();
      sub_18B82BA00(&qword_1EA9D3970);
      sub_18BC20A78();
      v15 = sub_18BC221A8();
      result = sub_18BB69570(v13, _s4ItemVMa);
      v16 = v15 & v10;
      if (a1 >= v11)
      {
        if (v16 < v11)
        {
          v12 = v24;
          v7 = v25;
          goto LABEL_4;
        }

        v12 = v24;
        if (a1 >= v16)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v12 = v24;
        if (v16 >= v11 || a1 >= v16)
        {
LABEL_11:
          if (v12 * a1 < v14 || *(a2 + 48) + v12 * a1 >= (*(a2 + 48) + v14 + v12))
          {
            swift_arrayInitWithTakeFrontToBack();
            v7 = v25;
          }

          else
          {
            v17 = v12 * a1 == v14;
            v7 = v25;
            if (!v17)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v18 = *(a2 + 56);
          result = (v18 + 80 * a1);
          v19 = (v18 + 80 * v9);
          if (80 * a1 < (80 * v9) || result >= v19 + 80 || a1 != v9)
          {
            result = memmove(result, v19, 0x50uLL);
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      v7 = v25;
LABEL_4:
      v9 = (v9 + 1) & v10;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_18BB5B3BC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18BC21928() + 1) & ~v5;
    do
    {
      sub_18BC22158();
      sub_18BC1E3F8();
      sub_18BC20C28();
      v11 = sub_18BC221A8();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_18BB5B578(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18BC21928() + 1) & ~v5;
    do
    {
      sub_18BC22158();
      sub_18BC1E3F8();
      sub_18BC20C28();
      v10 = sub_18BC221A8();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_18BB5B728(int64_t a1, uint64_t a2)
{
  v38 = sub_18BC1EC08();
  v4 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_18BC21928();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_18B82BA00(&qword_1EA9D3970);
      v22 = sub_18BC20A68();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

void sub_18BB5BA5C(int64_t a1, uint64_t a2)
{
  v26 = _s4PageVMa_0();
  v4 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a2 + 64;
  v7 = -1 << *(a2 + 32);
  v8 = (a1 + 1) & ~v7;
  if ((*(a2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    v10 = (sub_18BC21928() + 1) & ~v7;
    v11 = *(v4 + 72);
    v27 = v11;
    v28 = a2 + 64;
    do
    {
      v12 = v11 * v8;
      v13 = v29;
      sub_18B85A52C(*(a2 + 48) + v11 * v8, v29, _s4PageVMa_0);
      sub_18BC22158();
      sub_18BC1EC08();
      sub_18B82BA00(&qword_1EA9D3970);
      sub_18BC20A78();
      v14 = sub_18BC221A8();
      sub_18BB69570(v13, _s4PageVMa_0);
      v15 = v14 & v9;
      if (a1 >= v10)
      {
        if (v15 < v10)
        {
          v11 = v27;
          v6 = v28;
          goto LABEL_4;
        }

        v11 = v27;
        if (a1 >= v15)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v11 = v27;
        if (v15 >= v10 || a1 >= v15)
        {
LABEL_11:
          if (v11 * a1 < v12 || *(a2 + 48) + v11 * a1 >= (*(a2 + 48) + v12 + v11))
          {
            swift_arrayInitWithTakeFrontToBack();
            v6 = v28;
          }

          else
          {
            v6 = v28;
            if (v11 * a1 != v12)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v16 = *(a2 + 56);
          v17 = (v16 + (a1 << 6));
          v18 = (v16 + (v8 << 6));
          if (a1 != v8 || v17 >= v18 + 4)
          {
            v19 = *v18;
            v20 = v18[1];
            v21 = v18[3];
            v17[2] = v18[2];
            v17[3] = v21;
            *v17 = v19;
            v17[1] = v20;
            a1 = v8;
          }

          goto LABEL_4;
        }
      }

      v6 = v28;
LABEL_4:
      v8 = (v8 + 1) & v9;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  *(v6 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }
}

unint64_t sub_18BB5BD54(int64_t a1, uint64_t a2)
{
  v29 = _s4ItemVMa_4();
  v4 = *(v29 - 8);
  result = MEMORY[0x1EEE9AC00](v29);
  v28 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = (sub_18BC21928() + 1) & ~v8;
    v12 = *(v4 + 72);
    v26 = v12;
    v27 = a2 + 64;
    v13 = v28;
    do
    {
      v14 = v12 * v9;
      sub_18B85A52C(*(a2 + 48) + v12 * v9, v13, _s4ItemVMa_4);
      sub_18BC22158();
      sub_18BC1EC08();
      sub_18B82BA00(&qword_1EA9D3970);
      sub_18BC20A78();
      v15 = sub_18BC221A8();
      result = sub_18BB69570(v13, _s4ItemVMa_4);
      v16 = v15 & v10;
      if (a1 >= v11)
      {
        if (v16 < v11)
        {
          v12 = v26;
          v7 = v27;
          goto LABEL_4;
        }

        v12 = v26;
        if (a1 >= v16)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v12 = v26;
        if (v16 >= v11 || a1 >= v16)
        {
LABEL_11:
          v17 = *(a2 + 48);
          result = v17 + v12 * a1;
          if (v12 * a1 < v14 || result >= v17 + v14 + v12)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v27;
          }

          else
          {
            v18 = v12 * a1 == v14;
            v7 = v27;
            if (!v18)
            {
              result = swift_arrayInitWithTakeBackToFront();
            }
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 16 * a1);
          v21 = (v19 + 16 * v9);
          if (a1 != v9 || v20 >= v21 + 1)
          {
            *v20 = *v21;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      v7 = v27;
LABEL_4:
      v9 = (v9 + 1) & v10;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_18BB5C078(int64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v34 = a4;
  v35 = a3(0);
  v6 = *(v35 - 8);
  result = MEMORY[0x1EEE9AC00](v35);
  v33 = &v31 - v8;
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = (sub_18BC21928() + 1) & ~v10;
    v14 = *(v6 + 72);
    v31 = v14;
    v32 = a2 + 64;
    v15 = v33;
    do
    {
      v16 = v14 * v11;
      v17 = v13;
      v18 = v12;
      v19 = v34;
      sub_18B85A52C(*(a2 + 48) + v14 * v11, v15, v34);
      sub_18BC22158();
      sub_18BC1EC08();
      sub_18B82BA00(&qword_1EA9D3970);
      sub_18BC20A78();
      v20 = sub_18BC221A8();
      v21 = v19;
      v12 = v18;
      v13 = v17;
      result = sub_18BB69570(v15, v21);
      v22 = v20 & v12;
      if (a1 >= v17)
      {
        if (v22 < v17)
        {
          v14 = v31;
          v9 = v32;
          goto LABEL_4;
        }

        v14 = v31;
        if (a1 >= v22)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v14 = v31;
        if (v22 >= v17 || a1 >= v22)
        {
LABEL_11:
          v23 = *(a2 + 48);
          result = v23 + v14 * a1;
          if (v14 * a1 < v16 || result >= v23 + v16 + v14)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v9 = v32;
          }

          else
          {
            v24 = v14 * a1 == v16;
            v9 = v32;
            if (!v24)
            {
              result = swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = *(a2 + 56);
          v26 = (v25 + 8 * a1);
          v27 = (v25 + 8 * v11);
          if (a1 != v11 || v26 >= v27 + 1)
          {
            *v26 = *v27;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      v9 = v32;
LABEL_4:
      v11 = (v11 + 1) & v12;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v28 = *(a2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v30;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_18BB5C364(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18BC21928() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + v6);
      sub_18BC22158();
      MEMORY[0x18CFFD660](v9);
      result = sub_18BC221A8();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_18BB5C550(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18BC21928() + 1) & ~v5;
    do
    {
      sub_18B7F44EC(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_18BC21A38();
      result = sub_18B831014(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_18BB5C6F4(int64_t a1, uint64_t a2)
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  v4 = *(v26 - 8);
  result = MEMORY[0x1EEE9AC00](v26);
  v29 = &v25 - v6;
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = (sub_18BC21928() + 1) & ~v8;
    v12 = *(v4 + 72);
    v27 = v12;
    v28 = a2 + 64;
    v13 = v29;
    do
    {
      v14 = v12 * v9;
      sub_18B7CA054(*(a2 + 48) + v12 * v9, v13, &unk_1EA9D92F0);
      sub_18BC22158();
      sub_18B83ADFC(v30);
      v15 = sub_18BC221A8();
      result = sub_18B988BAC(v13, &unk_1EA9D92F0);
      v16 = v15 & v10;
      if (a1 >= v11)
      {
        if (v16 < v11)
        {
          v12 = v27;
          v7 = v28;
          goto LABEL_4;
        }

        v12 = v27;
        if (a1 >= v16)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v12 = v27;
        if (v16 >= v11 || a1 >= v16)
        {
LABEL_11:
          v17 = *(a2 + 48);
          result = v17 + v12 * a1;
          if (v12 * a1 < v14 || result >= v17 + v14 + v12)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v28;
          }

          else
          {
            v18 = v12 * a1 == v14;
            v7 = v28;
            if (!v18)
            {
              result = swift_arrayInitWithTakeBackToFront();
            }
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 8 * a1);
          v21 = (v19 + 8 * v9);
          if (a1 != v9 || v20 >= v21 + 1)
          {
            *v20 = *v21;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      v7 = v28;
LABEL_4:
      v9 = (v9 + 1) & v10;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_18BB5C9AC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18BC21928() + 1) & ~v5;
    do
    {
      v9 = (*(a2 + 48) + 32 * v6);
      v10 = *v9;
      v11 = v9[1];
      v12 = v9[2];
      v13 = v9[3];
      sub_18BC22158();
      if (v12 == 0.0)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = v12;
      }

      MEMORY[0x18CFFD690](*&v14);
      if (v13 == 0.0)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = v13;
      }

      MEMORY[0x18CFFD690](*&v15);
      if (v10 == 0.0)
      {
        v16 = 0.0;
      }

      else
      {
        v16 = v10;
      }

      MEMORY[0x18CFFD690](*&v16);
      if (v11 == 0.0)
      {
        v17 = 0.0;
      }

      else
      {
        v17 = v11;
      }

      MEMORY[0x18CFFD690](*&v17);
      result = sub_18BC221A8();
      v18 = result & v7;
      if (v3 >= v8)
      {
        if (v18 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v18 >= v8)
      {
        goto LABEL_22;
      }

      if (v3 >= v18)
      {
LABEL_22:
        v19 = *(a2 + 48);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v22 = v21[1];
          *v20 = *v21;
          v20[1] = v22;
        }

        v23 = *(a2 + 56);
        v24 = (v23 + 8 * v3);
        v25 = (v23 + 8 * v6);
        if (v3 != v6 || v24 >= v25 + 1)
        {
          *v24 = *v25;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }

  return result;
}

void sub_18BB5CBA0(int64_t a1, uint64_t a2)
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  v4 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v26 - v5;
  v6 = a2 + 64;
  v7 = -1 << *(a2 + 32);
  v8 = (a1 + 1) & ~v7;
  if ((*(a2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    v10 = sub_18BC21928();
    v28 = a2 + 64;
    v29 = (v10 + 1) & v9;
    v11 = *(v4 + 72);
    v27 = v9;
    v12 = v30;
    do
    {
      v13 = v11 * v8;
      sub_18B7CA054(*(a2 + 48) + v11 * v8, v12, &unk_1EA9D92F0);
      sub_18BC22158();
      sub_18B83ADFC(v31);
      v14 = sub_18BC221A8();
      sub_18B988BAC(v12, &unk_1EA9D92F0);
      v15 = v14 & v9;
      if (a1 >= v29)
      {
        if (v15 < v29)
        {
          v6 = v28;
          goto LABEL_4;
        }

        if (a1 >= v15)
        {
          goto LABEL_11;
        }
      }

      else if (v15 >= v29 || a1 >= v15)
      {
LABEL_11:
        if (v11 * a1 < v13 || *(a2 + 48) + v11 * a1 >= (*(a2 + 48) + v13 + v11))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v11 * a1 != v13)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v16 = *(a2 + 56);
        v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F40) - 8) + 72);
        v18 = v17 * a1;
        v19 = v16 + v17 * a1;
        v20 = v17 * v8;
        v21 = v16 + v17 * v8 + v17;
        v22 = v18 < v20 || v19 >= v21;
        v6 = v28;
        if (v22)
        {
          swift_arrayInitWithTakeFrontToBack();
          a1 = v8;
          v9 = v27;
        }

        else
        {
          a1 = v8;
          v9 = v27;
          if (v18 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
            a1 = v8;
          }
        }

        goto LABEL_4;
      }

      v6 = v28;
LABEL_4:
      v8 = (v8 + 1) & v9;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  *(v6 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }
}

void sub_18BB5CEAC(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18BC21928() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_18BC215B8();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = *(a2 + 48);
      v15 = (v14 + 8 * v3);
      v16 = (v14 + 8 * v6);
      if (v3 != v6 || v15 >= v16 + 1)
      {
        *v15 = *v16;
      }

      if (v3 < v6 || *(a2 + 56) + 16 * v3 >= *(a2 + 56) + 16 * v6 + 16)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }
}

void sub_18BB5D058(int64_t a1, uint64_t a2)
{
  v4 = _s4ItemVMa_0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = (sub_18BC21928() + 1) & ~v9;
    v13 = *(v5 + 72);
    v25 = v7;
    v26 = v13;
    do
    {
      v14 = *(a2 + 48);
      v27 = v13 * v10;
      sub_18B85A52C(v14 + v13 * v10, v7, _s4ItemVMa_0);
      sub_18BC22158();
      sub_18BC22178();
      sub_18BC22178();
      sub_18BC1EC08();
      sub_18B82BA00(&qword_1EA9D3970);
      sub_18BC20A78();
      v15 = *&v7[*(v4 + 28)];
      sub_18BC22178();
      if (v15)
      {
        v16 = v15;
        sub_18BC215D8();
      }

      sub_18BC22178();
      sub_18BC22178();
      if (*&v7[*(v4 + 40) + 8])
      {
        sub_18BC22178();
        v7 = v25;
        sub_18BC20C28();
      }

      else
      {
        sub_18BC22178();
      }

      v17 = sub_18BC221A8();
      sub_18BB69570(v7, _s4ItemVMa_0);
      v18 = v17 & v11;
      if (a1 >= v12)
      {
        v13 = v26;
        if (v18 < v12)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v13 = v26;
        if (v18 >= v12)
        {
          goto LABEL_15;
        }
      }

      if (a1 >= v18)
      {
LABEL_15:
        if (v13 * a1 < v27 || *(a2 + 48) + v13 * a1 >= (*(a2 + 48) + v27 + v13))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v13 * a1 != v27)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 16 * a1);
        v21 = (v19 + 16 * v10);
        if (a1 != v10 || v20 >= v21 + 1)
        {
          *v20 = *v21;
          a1 = v10;
        }
      }

LABEL_4:
      v10 = (v10 + 1) & v11;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }
}

void sub_18BB5D3FC(int64_t a1, uint64_t a2)
{
  v4 = _s4ItemVMa_0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = (sub_18BC21928() + 1) & ~v9;
    v13 = *(v5 + 72);
    v25 = v7;
    v26 = v13;
    do
    {
      v14 = *(a2 + 48);
      v27 = v13 * v10;
      sub_18B85A52C(v14 + v13 * v10, v7, _s4ItemVMa_0);
      sub_18BC22158();
      sub_18BC22178();
      sub_18BC22178();
      sub_18BC1EC08();
      sub_18B82BA00(&qword_1EA9D3970);
      sub_18BC20A78();
      v15 = *&v7[*(v4 + 28)];
      sub_18BC22178();
      if (v15)
      {
        v16 = v15;
        sub_18BC215D8();
      }

      sub_18BC22178();
      sub_18BC22178();
      if (*&v7[*(v4 + 40) + 8])
      {
        sub_18BC22178();
        v7 = v25;
        sub_18BC20C28();
      }

      else
      {
        sub_18BC22178();
      }

      v17 = sub_18BC221A8();
      sub_18BB69570(v7, _s4ItemVMa_0);
      v18 = v17 & v11;
      if (a1 >= v12)
      {
        v13 = v26;
        if (v18 < v12)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v13 = v26;
        if (v18 >= v12)
        {
          goto LABEL_15;
        }
      }

      if (a1 >= v18)
      {
LABEL_15:
        if (v13 * a1 < v27 || *(a2 + 48) + v13 * a1 >= (*(a2 + 48) + v27 + v13))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v13 * a1 != v27)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 8 * a1);
        v21 = (v19 + 8 * v10);
        if (a1 != v10 || v20 >= v21 + 1)
        {
          *v20 = *v21;
          a1 = v10;
        }
      }

LABEL_4:
      v10 = (v10 + 1) & v11;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }
}

void sub_18BB5D7CC(int64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v33 = a4;
  v29 = a3(0);
  v6 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v29 - v7;
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = (sub_18BC21928() + 1) & ~v9;
    v13 = *(v6 + 72);
    v30 = v13;
    v31 = a2 + 64;
    do
    {
      v14 = v13 * v10;
      v15 = v32;
      v16 = v12;
      v17 = v11;
      v18 = v33;
      sub_18B85A52C(*(a2 + 48) + v13 * v10, v32, v33);
      sub_18BC22158();
      sub_18BC1EC08();
      sub_18B82BA00(&qword_1EA9D3970);
      sub_18BC20A78();
      v19 = sub_18BC221A8();
      v20 = v18;
      v11 = v17;
      v12 = v16;
      sub_18BB69570(v15, v20);
      v21 = v19 & v11;
      if (a1 >= v16)
      {
        if (v21 < v16)
        {
          v13 = v30;
          v8 = v31;
          goto LABEL_4;
        }

        v13 = v30;
        if (a1 >= v21)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v13 = v30;
        if (v21 >= v16 || a1 >= v21)
        {
LABEL_11:
          if (v13 * a1 < v14 || *(a2 + 48) + v13 * a1 >= (*(a2 + 48) + v14 + v13))
          {
            swift_arrayInitWithTakeFrontToBack();
            v8 = v31;
          }

          else
          {
            v22 = v13 * a1 == v14;
            v8 = v31;
            if (!v22)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v23 = *(a2 + 56);
          v24 = (v23 + 16 * a1);
          v25 = (v23 + 16 * v10);
          if (a1 != v10 || v24 >= v25 + 1)
          {
            *v24 = *v25;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      v8 = v31;
LABEL_4:
      v10 = (v10 + 1) & v11;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }
}

void sub_18BB5DADC(int64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v33 = a4;
  v29 = a3(0);
  v6 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v29 - v7;
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = (sub_18BC21928() + 1) & ~v9;
    v13 = *(v6 + 72);
    v30 = v13;
    v31 = a2 + 64;
    do
    {
      v14 = v13 * v10;
      v15 = v32;
      v16 = v12;
      v17 = v11;
      v18 = v33;
      sub_18B85A52C(*(a2 + 48) + v13 * v10, v32, v33);
      sub_18BC22158();
      sub_18BC1EC08();
      sub_18B82BA00(&qword_1EA9D3970);
      sub_18BC20A78();
      v19 = sub_18BC221A8();
      v20 = v18;
      v11 = v17;
      v12 = v16;
      sub_18BB69570(v15, v20);
      v21 = v19 & v11;
      if (a1 >= v16)
      {
        if (v21 < v16)
        {
          v13 = v30;
          v8 = v31;
          goto LABEL_4;
        }

        v13 = v30;
        if (a1 >= v21)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v13 = v30;
        if (v21 >= v16 || a1 >= v21)
        {
LABEL_11:
          if (v13 * a1 < v14 || *(a2 + 48) + v13 * a1 >= (*(a2 + 48) + v14 + v13))
          {
            swift_arrayInitWithTakeFrontToBack();
            v8 = v31;
          }

          else
          {
            v22 = v13 * a1 == v14;
            v8 = v31;
            if (!v22)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v23 = *(a2 + 56);
          v24 = (v23 + 8 * a1);
          v25 = (v23 + 8 * v10);
          if (a1 != v10 || v24 >= v25 + 1)
          {
            *v24 = *v25;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      v8 = v31;
LABEL_4:
      v10 = (v10 + 1) & v11;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }
}

void sub_18BB5DDC0(int64_t a1, uint64_t a2)
{
  v27 = _s4ItemVMa();
  v4 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v26 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a2 + 64;
  v7 = -1 << *(a2 + 32);
  v8 = (a1 + 1) & ~v7;
  if ((*(a2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    v10 = (sub_18BC21928() + 1) & ~v7;
    v11 = *(v4 + 72);
    v24 = v11;
    v25 = a2 + 64;
    v12 = v26;
    do
    {
      v13 = v11 * v8;
      sub_18B85A52C(*(a2 + 48) + v11 * v8, v12, _s4ItemVMa);
      sub_18BC22158();
      sub_18BC1EC08();
      sub_18B82BA00(&qword_1EA9D3970);
      sub_18BC20A78();
      v14 = sub_18BC221A8();
      sub_18BB69570(v12, _s4ItemVMa);
      v15 = v14 & v9;
      if (a1 >= v10)
      {
        if (v15 < v10)
        {
          v11 = v24;
          v6 = v25;
          goto LABEL_4;
        }

        v11 = v24;
        if (a1 >= v15)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v11 = v24;
        if (v15 >= v10 || a1 >= v15)
        {
LABEL_11:
          if (v11 * a1 < v13 || *(a2 + 48) + v11 * a1 >= (*(a2 + 48) + v13 + v11))
          {
            swift_arrayInitWithTakeFrontToBack();
            v6 = v25;
          }

          else
          {
            v16 = v11 * a1 == v13;
            v6 = v25;
            if (!v16)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * a1);
          v19 = (v17 + 8 * v8);
          if (a1 != v8 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            a1 = v8;
          }

          goto LABEL_4;
        }
      }

      v6 = v25;
LABEL_4:
      v8 = (v8 + 1) & v9;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  *(v6 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

uint64_t sub_18BB5E0B8(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    sub_18BC1E1A8();
    sub_18BC1E3F8();
    v8 = sub_18BC219B8();

    if (v8)
    {

      type metadata accessor for TabIconRegistration(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = sub_18BC219A8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_18BB5F76C(v7, result + 1, &unk_1EA9D5010, &unk_18BC4F860, type metadata accessor for TabIconRegistration);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_18BB60FB4(v17 + 1, &unk_1EA9D5010);
    }

    v18 = sub_18BC1E1A8();
    sub_18BB61E48(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  sub_18BC22158();
  MEMORY[0x18CFFD660](a2);
  v10 = sub_18BC221A8();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    v15 = sub_18BC1E1A8();
    sub_18B857D20(v15, v12, isUniquelyReferenced_nonNull_native, &unk_1EA9D5010, &unk_18BC4F860, type metadata accessor for TabIconRegistration, sub_18B9CBB24);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  while (*(*(v6 + 48) + 8 * v12) != a2)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);
  sub_18BC1E1A8();
  return 0;
}

uint64_t sub_18BB5E37C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), void (*a5)(char *, unint64_t, uint64_t), uint64_t (*a6)(void))
{
  v27 = a6;
  v28 = a1;
  v25 = a5;
  v9 = a3(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - v11;
  v26 = v6;
  v13 = *v6;
  sub_18BC22158();
  v29 = v9;
  sub_18BC1EC08();
  sub_18B82BA00(&qword_1EA9D3970);
  v30 = a2;
  sub_18BC20A78();
  v14 = sub_18BC221A8();
  v15 = -1 << *(v13 + 32);
  v16 = v14 & ~v15;
  if ((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v18 = *(v10 + 72);
    while (1)
    {
      sub_18B85A52C(*(v13 + 48) + v18 * v16, v12, a4);
      updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18BB69570(v12, a4);
      if (updated)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_18BB69570(v30, a4);
    sub_18B85A52C(*(v13 + 48) + v18 * v16, v28, a4);
    return 0;
  }

  else
  {
LABEL_5:
    v20 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v30;
    sub_18B85A52C(v30, v12, a4);
    v31 = *v20;
    v25(v12, v16, isUniquelyReferenced_nonNull_native);
    *v20 = v31;
    sub_18B85A83C(v22, v28, v27);
    return 1;
  }
}

uint64_t sub_18BB5E674(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), void (*a5)(char *, unint64_t, uint64_t), uint64_t (*a6)(void))
{
  v27 = a6;
  v28 = a1;
  v25 = a5;
  v9 = a3(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v26 = v6;
  v13 = *v6;
  sub_18BC22158();
  sub_18BC1EC08();
  sub_18B82BA00(&qword_1EA9D3970);
  sub_18BC20A78();
  v14 = sub_18BC221A8();
  v15 = -1 << *(v13 + 32);
  v16 = v14 & ~v15;
  if ((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v18 = *(v10 + 72);
    while (1)
    {
      sub_18B85A52C(*(v13 + 48) + v18 * v16, v12, a4);
      updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18BB69570(v12, a4);
      if (updated)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_18BB69570(a2, a4);
    sub_18B85A52C(*(v13 + 48) + v18 * v16, v28, a4);
    return 0;
  }

  else
  {
LABEL_5:
    v20 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_18B85A52C(a2, v12, a4);
    v29 = *v20;
    v25(v12, v16, isUniquelyReferenced_nonNull_native);
    v22 = v28;
    *v20 = v29;
    sub_18B85A83C(a2, v22, v27);
    return 1;
  }
}

uint64_t sub_18BB5E89C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_18BC22158();
  sub_18BC20C28();
  v8 = sub_18BC221A8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_18BC21FD8() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;
    sub_18BC1E3F8();
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_18BC1E3F8();
    sub_18BB62AD8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_18BB5E9EC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    sub_18BC1E1A8();
    sub_18BC1E3F8();
    v8 = sub_18BC219B8();

    if (v8)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D50F0);
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = sub_18BC219A8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_18BB5F9A4(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_18BB60FB4(v17 + 1, &unk_1EA9D4FA0);
    }

    v18 = sub_18BC1E1A8();
    sub_18BB61E48(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  sub_18BC22158();
  MEMORY[0x18CFFD660](a2);
  v10 = sub_18BC221A8();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    v15 = sub_18BC1E1A8();
    sub_18BB62C58(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  while (*(*(v6 + 48) + 8 * v12) != a2)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);
  sub_18BC1E1A8();
  return 0;
}

uint64_t sub_18BB5EC0C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;
    sub_18BC1E3F8();
    v9 = sub_18BC219B8();

    if (v9)
    {

      type metadata accessor for SFFluidCollectionReusableView();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_18BC219A8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_18BB5FBC4(v7, result + 1, &unk_1EA9D4FF0, &unk_18BC4F840, type metadata accessor for SFFluidCollectionReusableView);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_18BB61AE4(v20 + 1, &unk_1EA9D4FF0);
    }

    v18 = v8;
    sub_18BB61EEC(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for SFFluidCollectionReusableView();
  v11 = sub_18BC215B8();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_18BB6340C(v18, v13, isUniquelyReferenced_nonNull_native, &unk_1EA9D4FF0, &unk_18BC4F840, type metadata accessor for SFFluidCollectionReusableView, sub_18B9CD034);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_18BC215C8();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_18BB5EE90(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = _s4ItemVMa();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = *v2;
  sub_18BC22158();
  v22 = v4;
  sub_18BC1EC08();
  sub_18B82BA00(&qword_1EA9D3970);
  v23 = a2;
  sub_18BC20A78();
  v9 = sub_18BC221A8();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v5 + 72);
    while (1)
    {
      sub_18B85A52C(*(v8 + 48) + v13 * v11, v7, _s4ItemVMa);
      updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18BB69570(v7, _s4ItemVMa);
      if (updated)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_18BB69570(v23, _s4ItemVMa);
    sub_18B85A52C(*(v8 + 48) + v13 * v11, v21, _s4ItemVMa);
    return 0;
  }

  else
  {
LABEL_5:
    v15 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v23;
    sub_18B85A52C(v23, v7, _s4ItemVMa);
    v24 = *v15;
    sub_18BB62DD0(v7, v11, isUniquelyReferenced_nonNull_native);
    *v15 = v24;
    sub_18B85A83C(v17, v21, _s4ItemVMa);
    return 1;
  }
}

uint64_t sub_18BB5F118(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = _s4PageVMa();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = *v2;
  sub_18BC22158();
  v22 = v4;
  sub_18BC1EC08();
  sub_18B82BA00(&qword_1EA9D3970);
  v23 = a2;
  sub_18BC20A78();
  v9 = sub_18BC221A8();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v5 + 72);
    while (1)
    {
      sub_18B85A52C(*(v8 + 48) + v13 * v11, v7, _s4PageVMa);
      updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18BB69570(v7, _s4PageVMa);
      if (updated)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_18BB69570(v23, _s4PageVMa);
    sub_18B85A52C(*(v8 + 48) + v13 * v11, v21, _s4PageVMa);
    return 0;
  }

  else
  {
LABEL_5:
    v15 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v23;
    sub_18B85A52C(v23, v7, _s4PageVMa);
    v24 = *v15;
    sub_18BB63040(v7, v11, isUniquelyReferenced_nonNull_native);
    *v15 = v24;
    sub_18B85A83C(v17, v21, _s4PageVMa);
    return 1;
  }
}

uint64_t sub_18BB5F3A0(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  sub_18BC22158();
  MEMORY[0x18CFFD660](a2);
  v6 = sub_18BC221A8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_18BB632B0(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_18BB5F498(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;
    sub_18BC1E3F8();
    v9 = sub_18BC219B8();

    if (v9)
    {

      type metadata accessor for SFTabSwitcherItem(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_18BC219A8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_18BB5FBC4(v7, result + 1, &qword_1EA9D5008, &unk_18BC42F10, type metadata accessor for SFTabSwitcherItem);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_18BB61AE4(v20 + 1, &qword_1EA9D5008);
    }

    v18 = v8;
    sub_18BB61EEC(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for SFTabSwitcherItem(0);
  v11 = sub_18BC215B8();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_18BB6340C(v18, v13, isUniquelyReferenced_nonNull_native, &qword_1EA9D5008, &unk_18BC42F10, type metadata accessor for SFTabSwitcherItem, sub_18B9CD6F4);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_18BC215C8();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_18BB5F76C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(void))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3);
    v7 = sub_18BC21A98();
    v20 = v7;
    sub_18BC21958();
    if (sub_18BC219D8())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v14 = *(v7 + 16);
        if (*(v7 + 24) <= v14)
        {
          sub_18BB60FB4(v14 + 1, a3);
        }

        v7 = v20;
        sub_18BC22158();
        MEMORY[0x18CFFD660]();
        result = sub_18BC221A8();
        v9 = v20 + 56;
        v10 = -1 << *(v20 + 32);
        v11 = result & ~v10;
        v12 = v11 >> 6;
        if (((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6))) != 0)
        {
          v13 = __clz(__rbit64((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = 0;
          v16 = (63 - v10) >> 6;
          do
          {
            if (++v12 == v16 && (v15 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v17 = v12 == v16;
            if (v12 == v16)
            {
              v12 = 0;
            }

            v15 |= v17;
            v18 = *(v9 + 8 * v12);
          }

          while (v18 == -1);
          v13 = __clz(__rbit64(~v18)) + (v12 << 6);
        }

        *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        *(*(v20 + 48) + 8 * v13) = v19;
        ++*(v20 + 16);
      }

      while (sub_18BC219D8());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v7;
}

uint64_t sub_18BB5F9A4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4FA0);
    v2 = sub_18BC21A98();
    v15 = v2;
    sub_18BC21958();
    for (; sub_18BC219D8(); ++*(v2 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D50F0);
      swift_dynamicCast();
      v9 = *(v2 + 16);
      if (*(v2 + 24) <= v9)
      {
        sub_18BB60FB4(v9 + 1, &unk_1EA9D4FA0);
        v2 = v15;
      }

      sub_18BC22158();
      MEMORY[0x18CFFD660]();
      result = sub_18BC221A8();
      v4 = v2 + 56;
      v5 = -1 << *(v2 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6))) != 0)
      {
        v8 = __clz(__rbit64((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v10 = 0;
        v11 = (63 - v5) >> 6;
        do
        {
          if (++v7 == v11 && (v10 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v12 = v7 == v11;
          if (v7 == v11)
          {
            v7 = 0;
          }

          v10 |= v12;
          v13 = *(v4 + 8 * v7);
        }

        while (v13 == -1);
        v8 = __clz(__rbit64(~v13)) + (v7 << 6);
      }

      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v2 + 48) + 8 * v8) = v14;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_18BB5FBC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(void))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3);
    v7 = sub_18BC21A98();
    v20 = v7;
    sub_18BC21958();
    if (sub_18BC219D8())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v14 = *(v7 + 16);
        if (*(v7 + 24) <= v14)
        {
          sub_18BB61AE4(v14 + 1, a3);
        }

        v7 = v20;
        result = sub_18BC215B8();
        v9 = v20 + 56;
        v10 = -1 << *(v20 + 32);
        v11 = result & ~v10;
        v12 = v11 >> 6;
        if (((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6))) != 0)
        {
          v13 = __clz(__rbit64((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = 0;
          v16 = (63 - v10) >> 6;
          do
          {
            if (++v12 == v16 && (v15 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v17 = v12 == v16;
            if (v12 == v16)
            {
              v12 = 0;
            }

            v15 |= v17;
            v18 = *(v9 + 8 * v12);
          }

          while (v18 == -1);
          v13 = __clz(__rbit64(~v18)) + (v12 << 6);
        }

        *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        *(*(v20 + 48) + 8 * v13) = v19;
        ++*(v20 + 16);
      }

      while (sub_18BC219D8());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v7;
}

uint64_t sub_18BB5FDBC(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = v5;
  v9 = a2(0);
  v37 = *(v9 - 8);
  v38 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v40 = &v34 - v10;
  v11 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  result = sub_18BC21A88();
  v13 = result;
  if (*(v11 + 16))
  {
    v35 = v5;
    v36 = v11;
    v14 = 0;
    v15 = (v11 + 56);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 56);
    v19 = (v16 + 63) >> 6;
    v20 = result + 56;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v25 = *(v11 + 48);
      v39 = *(v37 + 72);
      sub_18B85A83C(v25 + v39 * (v22 | (v14 << 6)), v40, a5);
      sub_18BC22158();
      sub_18BC1EC08();
      sub_18B82BA00(&qword_1EA9D3970);
      sub_18BC20A78();
      result = sub_18BC221A8();
      v26 = -1 << *(v13 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v20 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v20 + 8 * v28);
          if (v32 != -1)
          {
            v21 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v27) & ~*(v20 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = sub_18B85A83C(v40, *(v13 + 48) + v21 * v39, a5);
      ++*(v13 + 16);
      v11 = v36;
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    v33 = 1 << *(v11 + 32);
    if (v33 >= 64)
    {
      bzero(v15, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v33;
    }

    v8 = v35;
    *(v11 + 16) = 0;
  }

  *v8 = v13;
  return result;
}

uint64_t sub_18BB60104()
{
  v1 = v0;
  v35 = sub_18BC1EC08();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5040);
  result = sub_18BC21A88();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_18B82BA00(&qword_1EA9D3970);
      result = sub_18BC20A68();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_18BB6044C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4FD0);
  result = sub_18BC21A88();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_18BC22158();
      MEMORY[0x18CFFD660](v16);
      result = sub_18BC221A8();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_18BB6069C(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = v5;
  v9 = a2(0);
  v38 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v39 = &v35 - v10;
  v11 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  result = sub_18BC21A88();
  v13 = result;
  if (*(v11 + 16))
  {
    v36 = v5;
    v37 = v11;
    v14 = 0;
    v15 = (v11 + 56);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 56);
    v19 = (v16 + 63) >> 6;
    v20 = result + 56;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v25 = *(v11 + 48);
      v26 = *(v38 + 72);
      sub_18B85A83C(v25 + v26 * (v22 | (v14 << 6)), v39, a5);
      sub_18BC22158();
      sub_18BC1EC08();
      sub_18B82BA00(&qword_1EA9D3970);
      sub_18BC20A78();
      result = sub_18BC221A8();
      v27 = -1 << *(v13 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v20 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v20 + 8 * v29);
          if (v33 != -1)
          {
            v21 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v28) & ~*(v20 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = sub_18B85A83C(v39, *(v13 + 48) + v21 * v26, a5);
      ++*(v13 + 16);
      v11 = v37;
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    v34 = 1 << *(v11 + 32);
    if (v34 >= 64)
    {
      bzero(v15, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v34;
    }

    v8 = v36;
    *(v11 + 16) = 0;
  }

  *v8 = v13;
  return result;
}

uint64_t sub_18BB609CC()
{
  v1 = v0;
  v2 = _s4ItemVMa_0();
  v26 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9FB0);
  result = sub_18BC21A88();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v23 = v0;
    v24 = result + 56;
    v25 = v5;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v27 = *(v26 + 72);
      sub_18B85A83C(v19 + v27 * (v16 | (v8 << 6)), v4, _s4ItemVMa_0);
      sub_18BC22158();
      sub_18BC22178();
      sub_18BC22178();
      sub_18BC1EC08();
      sub_18B82BA00(&qword_1EA9D3970);
      sub_18BC20A78();
      v20 = *&v4[*(v2 + 28)];
      sub_18BC22178();
      if (v20)
      {
        v21 = v20;
        sub_18BC215D8();
      }

      sub_18BC22178();
      sub_18BC22178();
      if (*&v4[*(v2 + 40) + 8])
      {
        sub_18BC22178();
        sub_18BC20C28();
      }

      else
      {
        sub_18BC22178();
      }

      v5 = v25;
      sub_18BC221A8();
      v14 = v24;
      v15 = sub_18BC21938();
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_18B85A83C(v4, *(v7 + 48) + v15 * v27, _s4ItemVMa_0);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        return result;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v22 = 1 << *(v5 + 32);
    if (v22 >= 64)
    {
      bzero(v9, ((v22 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v22;
    }

    v1 = v23;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_18BB60D54()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4FE8);
  result = sub_18BC21A88();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_18BC22158();
      sub_18BC20C28();
      result = sub_18BC221A8();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_18BB60FB4(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_18BC21A88();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      sub_18BC22158();
      MEMORY[0x18CFFD660](v18);
      result = sub_18BC221A8();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    v3 = v2;
    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

uint64_t sub_18BB611FC()
{
  v1 = v0;
  v2 = _s4ItemVMa();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5000);
  result = sub_18BC21A88();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v0;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v20 = *(v32 + 72);
      sub_18B85A83C(v19 + v20 * (v16 | (v8 << 6)), v4, _s4ItemVMa);
      sub_18BC22158();
      sub_18BC1EC08();
      sub_18B82BA00(&qword_1EA9D3970);
      sub_18BC20A78();
      result = sub_18BC221A8();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_18B85A83C(v4, *(v7 + 48) + v15 * v20, _s4ItemVMa);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v1 = v30;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_18BB61548()
{
  v1 = v0;
  v2 = _s4PageVMa();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5030);
  result = sub_18BC21A88();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v0;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v20 = *(v32 + 72);
      sub_18B85A83C(v19 + v20 * (v16 | (v8 << 6)), v4, _s4PageVMa);
      sub_18BC22158();
      sub_18BC1EC08();
      sub_18B82BA00(&qword_1EA9D3970);
      sub_18BC20A78();
      result = sub_18BC221A8();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_18B85A83C(v4, *(v7 + 48) + v15 * v20, _s4PageVMa);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v1 = v30;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_18BB61894()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9FD0);
  result = sub_18BC21A88();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_18BC22158();
      MEMORY[0x18CFFD660](v16);
      result = sub_18BC221A8();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_18BB61AE4(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_18BC21A88();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      result = sub_18BC215B8();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

__n128 sub_18BB61D04(uint64_t a1, uint64_t a2)
{
  sub_18BC22158();
  sub_18B833990(a1, &v11);
  if (*(&v12 + 1) > 1)
  {
    if (*(&v12 + 1) == 2)
    {
      v4 = 3;
      goto LABEL_11;
    }

    if (*(&v12 + 1) == 3)
    {
      v4 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!*(&v12 + 1))
    {
      v4 = 0;
      goto LABEL_11;
    }

    if (*(&v12 + 1) == 1)
    {
      v4 = 1;
LABEL_11:
      MEMORY[0x18CFFD660](v4);
      goto LABEL_12;
    }
  }

  v9[0] = v11;
  v9[1] = v12;
  v10 = v13;
  MEMORY[0x18CFFD660](2);
  sub_18BC21A58();
  sub_18B831014(v9);
LABEL_12:
  sub_18BC221A8();
  v5 = sub_18BC21938();
  *(a2 + 56 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v5;
  v6 = *(a2 + 48) + 40 * v5;
  v7 = *(a1 + 32);
  result = *(a1 + 16);
  *v6 = *a1;
  *(v6 + 16) = result;
  *(v6 + 32) = v7;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_18BB61E48(uint64_t a1, uint64_t a2)
{
  sub_18BC22158();
  MEMORY[0x18CFFD660](a1);
  sub_18BC221A8();
  result = sub_18BC21938();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_18BB61EEC(uint64_t a1, uint64_t a2)
{
  sub_18BC215B8();
  result = sub_18BC21938();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_18BB61F70(uint64_t a1, unint64_t a2, char a3)
{
  v26 = a1;
  v6 = _s4ItemVMa_4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v24 = v7;
  v25 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_18BB5FDBC(v10 + 1, _s4ItemVMa_4, &unk_1EA9D4FC0, &unk_18BC42ED0, _s4ItemVMa_4);
  }

  else
  {
    if (v11 > v10)
    {
      sub_18B9CBB38();
      goto LABEL_12;
    }

    sub_18BB6358C();
  }

  v12 = *v3;
  sub_18BC22158();
  sub_18BC1EC08();
  sub_18B82BA00(&qword_1EA9D3970);
  sub_18BC20A78();
  v13 = sub_18BC221A8();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v16 = *(v7 + 72);
    do
    {
      sub_18B85A52C(*(v12 + 48) + v16 * a2, v9, _s4ItemVMa_4);
      updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18BB69570(v9, _s4ItemVMa_4);
      if (updated)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = v26;
  v19 = *v25;
  *(*v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_18B85A83C(v18, *(v19 + 48) + *(v24 + 72) * a2, _s4ItemVMa_4);
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v19 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_18BC22068();
  __break(1u);
  return result;
}

uint64_t sub_18BB62218(uint64_t a1, unint64_t a2, char a3)
{
  v7 = _s4PageVMa_0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v28 = v3;
  if (v13 > v12 && (a3 & 1) != 0)
  {
LABEL_13:
    v14 = v8;
    goto LABEL_14;
  }

  if (a3)
  {
    v27 = v9;
    sub_18BB6069C(v12 + 1, _s4PageVMa_0, &unk_1EA9D6450, &unk_18BC42F00, _s4PageVMa_0);
    goto LABEL_8;
  }

  if (v13 <= v12)
  {
    v27 = v9;
    sub_18BB640EC();
LABEL_8:
    v15 = *v3;
    sub_18BC22158();
    sub_18BC1EC08();
    sub_18B82BA00(&qword_1EA9D3970);
    sub_18BC20A78();
    v16 = sub_18BC221A8();
    v17 = -1 << *(v15 + 32);
    a2 = v16 & ~v17;
    if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v18 = ~v17;
      v14 = v8;
      v19 = *(v8 + 72);
      while (1)
      {
        sub_18B85A52C(*(v15 + 48) + v19 * a2, v11, _s4PageVMa_0);
        updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
        sub_18BB69570(v11, _s4PageVMa_0);
        if (updated)
        {
          goto LABEL_17;
        }

        a2 = (a2 + 1) & v18;
        if (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_14;
        }
      }
    }

    goto LABEL_13;
  }

  v14 = v8;
  sub_18B9CC8B4();
LABEL_14:
  v21 = *v28;
  *(*v28 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_18B85A83C(a1, *(v21 + 48) + *(v14 + 72) * a2, _s4PageVMa_0);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_17:
  result = sub_18BC22068();
  __break(1u);
  return result;
}

uint64_t sub_18BB624C4(uint64_t a1, unint64_t a2, char a3)
{
  v7 = _s4ItemVMa_1();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v28 = v3;
  if (v13 > v12 && (a3 & 1) != 0)
  {
LABEL_13:
    v14 = v8;
    goto LABEL_14;
  }

  if (a3)
  {
    v27 = v9;
    sub_18BB6069C(v12 + 1, _s4ItemVMa_1, &unk_1EA9D9FC0, &unk_18BC42EE8, _s4ItemVMa_1);
    goto LABEL_8;
  }

  if (v13 <= v12)
  {
    v27 = v9;
    sub_18BB643FC();
LABEL_8:
    v15 = *v3;
    sub_18BC22158();
    sub_18BC1EC08();
    sub_18B82BA00(&qword_1EA9D3970);
    sub_18BC20A78();
    v16 = sub_18BC221A8();
    v17 = -1 << *(v15 + 32);
    a2 = v16 & ~v17;
    if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v18 = ~v17;
      v14 = v8;
      v19 = *(v8 + 72);
      while (1)
      {
        sub_18B85A52C(*(v15 + 48) + v19 * a2, v11, _s4ItemVMa_1);
        updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
        sub_18BB69570(v11, _s4ItemVMa_1);
        if (updated)
        {
          goto LABEL_17;
        }

        a2 = (a2 + 1) & v18;
        if (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_14;
        }
      }
    }

    goto LABEL_13;
  }

  v14 = v8;
  sub_18B9CCAC0();
LABEL_14:
  v21 = *v28;
  *(*v28 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_18B85A83C(a1, *(v21 + 48) + *(v14 + 72) * a2, _s4ItemVMa_1);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_17:
  result = sub_18BC22068();
  __break(1u);
  return result;
}

uint64_t sub_18BB62770(unsigned __int8 *a1, unint64_t a2, char a3)
{
  v36 = _s4ItemVMa_0();
  v7 = *(v36 - 1);
  MEMORY[0x1EEE9AC00](v36);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v34 = v7;
  v35 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_28;
  }

  if (a3)
  {
    sub_18BB609CC();
  }

  else
  {
    if (v11 > v10)
    {
      sub_18B9CCCCC();
      goto LABEL_28;
    }

    sub_18BB6470C();
  }

  v12 = *v3;
  sub_18BC22158();
  sub_18B80CA58();
  v13 = sub_18BC221A8();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v16 = *a1;
    v17 = *(v7 + 72);
    do
    {
      sub_18B85A52C(*(v12 + 48) + v17 * a2, v9, _s4ItemVMa_0);
      if (v16 != *v9 || v9[1] != a1[1] || (_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0() & 1) == 0)
      {
        goto LABEL_11;
      }

      v18 = v36[7];
      v19 = *&v9[v18];
      v20 = *&a1[v18];
      if (v19)
      {
        if (!v20)
        {
          goto LABEL_11;
        }

        v33[1] = sub_18B7B0AC0(0, &qword_1ED6514F0);
        v33[0] = v20;
        v21 = v19;
        v22 = sub_18BC215C8();

        if ((v22 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else if (v20)
      {
        goto LABEL_11;
      }

      if (v9[v36[8]] == a1[v36[8]] && v9[v36[9]] == a1[v36[9]])
      {
        v23 = v36[10];
        v24 = &v9[v23];
        v25 = *&v9[v23 + 8];
        v26 = &a1[v23];
        v27 = *(v26 + 1);
        if (v25)
        {
          if (v27 && (*v24 == *v26 && v25 == v27 || (sub_18BC21FD8() & 1) != 0))
          {
LABEL_27:
            sub_18BB69570(v9, _s4ItemVMa_0);
            sub_18BC22068();
            __break(1u);
            break;
          }
        }

        else if (!v27)
        {
          goto LABEL_27;
        }
      }

LABEL_11:
      sub_18BB69570(v9, _s4ItemVMa_0);
      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_28:
  v28 = *v35;
  *(*v35 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_18B85A83C(a1, *(v28 + 48) + *(v34 + 72) * a2, _s4ItemVMa_0);
  v30 = *(v28 + 16);
  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v28 + 16) = v32;
  }

  return result;
}

uint64_t sub_18BB62AD8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_18BB60D54();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_18B9CCED8();
      goto LABEL_16;
    }

    sub_18BB64A64();
  }

  v10 = *v4;
  sub_18BC22158();
  sub_18BC20C28();
  result = sub_18BC221A8();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_18BC21FD8();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_18BC22068();
  __break(1u);
  return result;
}

uint64_t sub_18BB62C58(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_18BB60FB4(v5 + 1, &unk_1EA9D4FA0);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_18B9CD048();
      a2 = v7;
      goto LABEL_12;
    }

    sub_18B857B00(v5 + 1, &unk_1EA9D4FA0);
  }

  v8 = *v3;
  sub_18BC22158();
  MEMORY[0x18CFFD660](v4);
  result = sub_18BC221A8();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D50F0);
  result = sub_18BC22068();
  __break(1u);
  return result;
}

uint64_t sub_18BB62DD0(uint64_t a1, unint64_t a2, char a3)
{
  v26 = a1;
  v6 = _s4ItemVMa();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v24 = v7;
  v25 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_18BB611FC();
  }

  else
  {
    if (v11 > v10)
    {
      sub_18B9CD19C();
      goto LABEL_12;
    }

    sub_18BB64C9C();
  }

  v12 = *v3;
  sub_18BC22158();
  sub_18BC1EC08();
  sub_18B82BA00(&qword_1EA9D3970);
  sub_18BC20A78();
  v13 = sub_18BC221A8();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v16 = *(v7 + 72);
    do
    {
      sub_18B85A52C(*(v12 + 48) + v16 * a2, v9, _s4ItemVMa);
      updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18BB69570(v9, _s4ItemVMa);
      if (updated)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = v26;
  v19 = *v25;
  *(*v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_18B85A83C(v18, *(v19 + 48) + *(v24 + 72) * a2, _s4ItemVMa);
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v19 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_18BC22068();
  __break(1u);
  return result;
}

uint64_t sub_18BB63040(uint64_t a1, unint64_t a2, char a3)
{
  v26 = a1;
  v6 = _s4PageVMa();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v24 = v7;
  v25 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_18BB61548();
  }

  else
  {
    if (v11 > v10)
    {
      sub_18B9CD3A8();
      goto LABEL_12;
    }

    sub_18BB64FB8();
  }

  v12 = *v3;
  sub_18BC22158();
  sub_18BC1EC08();
  sub_18B82BA00(&qword_1EA9D3970);
  sub_18BC20A78();
  v13 = sub_18BC221A8();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v16 = *(v7 + 72);
    do
    {
      sub_18B85A52C(*(v12 + 48) + v16 * a2, v9, _s4PageVMa);
      updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18BB69570(v9, _s4PageVMa);
      if (updated)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = v26;
  v19 = *v25;
  *(*v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_18B85A83C(v18, *(v19 + 48) + *(v24 + 72) * a2, _s4PageVMa);
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v19 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_18BC22068();
  __break(1u);
  return result;
}

void sub_18BB632B0(uint64_t a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_18BB61894();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_18B9CD5B4();
      a2 = v7;
      goto LABEL_12;
    }

    sub_18BB652D4();
  }

  v8 = *v3;
  sub_18BC22158();
  MEMORY[0x18CFFD660](a1);
  v9 = sub_18BC221A8();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for SFSettingsAlertStepperButton(0);
    a2 = v12;
    while (*(*(v8 + 48) + 8 * a2) != a1)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = a1;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  sub_18BC22068();
  __break(1u);
}

void sub_18BB6340C(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t a5, void (*a6)(void), void (*a7)(void))
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    sub_18BB61AE4(v10 + 1, a4);
  }

  else
  {
    if (v11 > v10)
    {
      a7();
      goto LABEL_12;
    }

    v12 = a6;
    sub_18BB654F4(v10 + 1, a4);
  }

  v13 = *v7;
  v14 = sub_18BC215B8();
  v15 = -1 << *(v13 + 32);
  a2 = v14 & ~v15;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v12(0);
    do
    {
      v17 = *(*(v13 + 48) + 8 * a2);
      v18 = sub_18BC215C8();

      if (v18)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v19 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = a1;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return;
  }

  __break(1u);
LABEL_15:
  sub_18BC22068();
  __break(1u);
}

uint64_t sub_18BB6358C()
{
  v1 = v0;
  v2 = _s4ItemVMa_4();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4FC0);
  result = sub_18BC21A88();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v0;
    v30 = v5;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v20 = *(v31 + 72);
      sub_18B85A52C(v19 + v20 * (v16 | (v8 << 6)), v4, _s4ItemVMa_4);
      sub_18BC22158();
      sub_18BC1EC08();
      sub_18B82BA00(&qword_1EA9D3970);
      sub_18BC20A78();
      result = sub_18BC221A8();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_18B85A83C(v4, *(v7 + 48) + v15 * v20, _s4ItemVMa_4);
      ++*(v7 + 16);
      v5 = v30;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v29;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_18BB638A8()
{
  v1 = v0;
  v2 = _s4ItemVMa_2();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4F60);
  result = sub_18BC21A88();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v0;
    v30 = v5;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v20 = *(v31 + 72);
      sub_18B85A52C(v19 + v20 * (v16 | (v8 << 6)), v4, _s4ItemVMa_2);
      sub_18BC22158();
      sub_18BC1EC08();
      sub_18B82BA00(&qword_1EA9D3970);
      sub_18BC20A78();
      result = sub_18BC221A8();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_18B85A83C(v4, *(v7 + 48) + v15 * v20, _s4ItemVMa_2);
      ++*(v7 + 16);
      v5 = v30;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v29;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_18BB63BC4()
{
  v1 = v0;
  v32 = sub_18BC1EC08();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5040);
  v6 = sub_18BC21A88();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_18B82BA00(&qword_1EA9D3970);
      result = sub_18BC20A68();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_18BB63ECC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4FD0);
  result = sub_18BC21A88();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_18BC22158();
      MEMORY[0x18CFFD660](v15);
      result = sub_18BC221A8();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_18BB640EC()
{
  v1 = v0;
  v2 = _s4PageVMa_0();
  v30 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D6450);
  result = sub_18BC21A88();
  v7 = result;
  if (*(v5 + 16))
  {
    v28 = v0;
    v29 = v5;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v20 = *(v30 + 72);
      sub_18B85A52C(v19 + v20 * (v16 | (v8 << 6)), v4, _s4PageVMa_0);
      sub_18BC22158();
      sub_18BC1EC08();
      sub_18B82BA00(&qword_1EA9D3970);
      sub_18BC20A78();
      result = sub_18BC221A8();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_18B85A83C(v4, *(v7 + 48) + v15 * v20, _s4PageVMa_0);
      ++*(v7 + 16);
      v5 = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v28;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_18BB643FC()
{
  v1 = v0;
  v2 = _s4ItemVMa_1();
  v30 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9FC0);
  result = sub_18BC21A88();
  v7 = result;
  if (*(v5 + 16))
  {
    v28 = v0;
    v29 = v5;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v20 = *(v30 + 72);
      sub_18B85A52C(v19 + v20 * (v16 | (v8 << 6)), v4, _s4ItemVMa_1);
      sub_18BC22158();
      sub_18BC1EC08();
      sub_18B82BA00(&qword_1EA9D3970);
      sub_18BC20A78();
      result = sub_18BC221A8();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_18B85A83C(v4, *(v7 + 48) + v15 * v20, _s4ItemVMa_1);
      ++*(v7 + 16);
      v5 = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v28;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_18BB6470C()
{
  v1 = v0;
  v2 = _s4ItemVMa_0();
  v25 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9FB0);
  result = sub_18BC21A88();
  v7 = result;
  if (*(v5 + 16))
  {
    v22 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v23 = result + 56;
    v24 = v5;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v26 = *(v25 + 72);
      sub_18B85A52C(v19 + v26 * (v16 | (v8 << 6)), v4, _s4ItemVMa_0);
      sub_18BC22158();
      sub_18BC22178();
      sub_18BC22178();
      sub_18BC1EC08();
      sub_18B82BA00(&qword_1EA9D3970);
      sub_18BC20A78();
      v20 = *&v4[*(v2 + 28)];
      sub_18BC22178();
      if (v20)
      {
        v21 = v20;
        sub_18BC215D8();
      }

      sub_18BC22178();
      sub_18BC22178();
      if (*&v4[*(v2 + 40) + 8])
      {
        sub_18BC22178();
        sub_18BC20C28();
      }

      else
      {
        sub_18BC22178();
      }

      v5 = v24;
      sub_18BC221A8();
      v14 = v23;
      v15 = sub_18BC21938();
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_18B85A83C(v4, *(v7 + 48) + v15 * v26, _s4ItemVMa_0);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v22;
        goto LABEL_21;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_18BB64A64()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4FE8);
  result = sub_18BC21A88();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_18BC22158();
      sub_18BC1E3F8();
      sub_18BC20C28();
      result = sub_18BC221A8();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_18BB64C9C()
{
  v1 = v0;
  v2 = _s4ItemVMa();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5000);
  result = sub_18BC21A88();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v0;
    v30 = v5;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v20 = *(v31 + 72);
      sub_18B85A52C(v19 + v20 * (v16 | (v8 << 6)), v4, _s4ItemVMa);
      sub_18BC22158();
      sub_18BC1EC08();
      sub_18B82BA00(&qword_1EA9D3970);
      sub_18BC20A78();
      result = sub_18BC221A8();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_18B85A83C(v4, *(v7 + 48) + v15 * v20, _s4ItemVMa);
      ++*(v7 + 16);
      v5 = v30;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v29;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_18BB64FB8()
{
  v1 = v0;
  v2 = _s4PageVMa();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5030);
  result = sub_18BC21A88();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v0;
    v30 = v5;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v20 = *(v31 + 72);
      sub_18B85A52C(v19 + v20 * (v16 | (v8 << 6)), v4, _s4PageVMa);
      sub_18BC22158();
      sub_18BC1EC08();
      sub_18B82BA00(&qword_1EA9D3970);
      sub_18BC20A78();
      result = sub_18BC221A8();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_18B85A83C(v4, *(v7 + 48) + v15 * v20, _s4PageVMa);
      ++*(v7 + 16);
      v5 = v30;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v29;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_18BB652D4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9FD0);
  result = sub_18BC21A88();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      sub_18BC22158();
      MEMORY[0x18CFFD660](v15);
      result = sub_18BC221A8();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_18BB654F4(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_18BC21A88();
  v6 = result;
  if (*(v4 + 16))
  {
    v25 = v2;
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_18BC215B8();
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v3 = v25;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v3 = v6;
  }

  return result;
}

void (*sub_18BB65700(uint64_t *a1, double a2, double a3, double a4, double a5))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x50uLL);
  }

  v11 = v10;
  *a1 = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11[8] = sub_18BB65A44(v11);
  v11[9] = sub_18BB65824(v11 + 4, isUniquelyReferenced_nonNull_native, a2, a3, a4, a5);
  return sub_18BB657C4;
}

void sub_18BB657C4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_18BB65824(uint64_t *a1, char a2, double a3, double a4, double a5, double a6))(uint64_t **a1)
{
  v7 = v6;
  if (MEMORY[0x1E69E7D08])
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(0x40uLL);
  }

  v15 = v14;
  *a1 = v14;
  *(v14 + 40) = v6;
  *(v14 + 24) = a5;
  *(v14 + 32) = a6;
  *(v14 + 8) = a3;
  *(v14 + 16) = a4;
  v16 = *v6;
  v17 = sub_18B86F764(a3, a4, a5, a6);
  *(v15 + 56) = v18 & 1;
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a2 & 1) == 0)
  {
    if (v24 >= v22 && (a2 & 1) == 0)
    {
      v25 = v17;
      sub_18BB2B320();
      v17 = v25;
      goto LABEL_11;
    }

    sub_18BB2F8EC(v22, a2 & 1);
    v17 = sub_18B86F764(a3, a4, a5, a6);
    if ((v23 & 1) == (v26 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9FA8);
    result = sub_18BC22078();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v15 + 48) = v17;
  if (v23)
  {
    v27 = *(*(*v7 + 56) + 8 * v17);
  }

  else
  {
    v27 = 0;
  }

  *v15 = v27;
  return sub_18BB659AC;
}

void sub_18BB659AC(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 56);
  if (v2)
  {
    v4 = v1[6];
    v5 = *v1[5];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_18BB329F4(v4, v2, v5, *(v1 + 1), *(v1 + 2), *(v1 + 3), *(v1 + 4));
    }
  }

  else if ((*a1)[7])
  {
    sub_18BB5C9AC(v1[6], *v1[5]);
  }

  sub_18BC1E3F8();

  free(v1);
}

uint64_t (*sub_18BB65A44(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_18BB65A6C;
}

uint64_t sub_18BB65A78()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x198);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_18BB65AD8()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x1D8);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_18BB65B38()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xE0);
  swift_beginAccess();
  return *(v0 + v1);
}

char *sub_18BB65BC4(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  *(v1 + 3) = 0;
  v3 = *(*v1 + 160);
  updated = type metadata accessor for SFFluidCollectionViewTrackedUpdateToken();
  (*(*(updated - 8) + 56))(&v1[v3], 1, 1, updated);
  v5 = *(*v1 + 168);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F40);
  v7 = *(*(v6 - 8) + 56);
  v7(&v1[v5], 1, 1, v6);
  v7(&v1[*(*v1 + 176)], 1, 1, v6);
  *&v1[*(*v1 + 192)] = 0;
  v1[*(*v1 + 200)] = 0;
  *&v1[*(*v1 + 208)] = 0;
  *&v1[*(*v1 + 216)] = 0;
  v8 = *(*v1 + 224);
  type metadata accessor for Assertion();
  v9 = swift_allocObject();
  *(v9 + 16) = MEMORY[0x1E69E7CC0];
  *(v9 + 24) = 0;
  *&v1[v8] = v9;
  swift_unknownObjectWeakAssign();
  sub_18B7CA054(a1, &v1[*(*v1 + 184)], &unk_1EA9D4F40);
  sub_18B7CF39C(a1, &v1[*(*v1 + 152)], &unk_1EA9D4F40);
  return v1;
}

uint64_t sub_18BB65E00()
{
  v1 = v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xA0);
  swift_beginAccess();
  return *v1;
}

void _s12MobileSafari21SFFluidCollectionViewC5coderACyxq_q0_GSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  v2 = *v0;
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*MEMORY[0x1E69E7D40] & *v0);
  v5 = *((*MEMORY[0x1E69E7D40] & v2) + 0x58);
  v6 = sub_18BC20DE8();
  if (sub_18BC20E28())
  {
    v7 = sub_18BB32DD8(v6, v5, *(v4[14] + 8));
  }

  else
  {
    v7 = MEMORY[0x1E69E7CD0];
  }

  *(v1 + *((*v3 & *v1) + 0x80)) = v7;
  *(v1 + *((*v3 & *v1) + 0x88) + 8) = 0;
  swift_unknownObjectWeakInit();
  v8 = *((*v3 & *v1) + 0x90);
  v11 = v4[12];
  v10 = v4[13];
  v13 = v4[14];
  v12 = v4[15];
  *&__src[0] = v4[10];
  v9 = *&__src[0];
  *(&__src[0] + 1) = v5;
  *&__src[1] = v11;
  *(&__src[1] + 1) = v10;
  *&__src[2] = v13;
  *(&__src[2] + 1) = v12;
  type metadata accessor for SFFluidCollectionView.DataSource();
  *(v1 + v8) = SFFluidCollectionView.DataSource.__allocating_init()();
  *(v1 + *((*v3 & *v1) + 0x98)) = 1;
  v14 = (v1 + *((*v3 & *v1) + 0xA0));
  *v14 = 0;
  v14[1] = 0;
  v15 = (v1 + *((*v3 & *v1) + 0xA8));
  *v15 = 0;
  v15[1] = 0;
  v16 = (v1 + *((*v3 & *v1) + 0xB0));
  *v16 = 0;
  v16[1] = 0;
  *(v1 + *((*v3 & *v1) + 0xB8) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v3 & *v1) + 0xC0) + 8) = 0;
  swift_unknownObjectWeakInit();
  v47 = *(*(v5 - 8) + 56);
  v47(v1 + *((*v3 & *v1) + 0xC8), 1, 1, v5);
  *(v1 + *((*v3 & *v1) + 0xD0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v3 & *v1) + 0xD8)) = 0;
  *(v1 + *((*v3 & *v1) + 0xE0)) = 0;
  v50 = v9;
  *&__src[0] = v9;
  *(&__src[0] + 1) = v5;
  *&__src[1] = v11;
  v48 = v10;
  v49 = v11;
  *(&__src[1] + 1) = v10;
  *&__src[2] = v13;
  v17 = v13;
  *(&__src[2] + 1) = v12;
  v18 = type metadata accessor for SFFluidCollectionView.Element();
  v19 = sub_18BC20DE8();
  if (sub_18BC20E28())
  {
    WitnessTable = swift_getWitnessTable();
    v21 = sub_18BB32DD8(v19, v18, WitnessTable);
  }

  else
  {
    v21 = MEMORY[0x1E69E7CD0];
  }

  *(v1 + *((*v3 & *v1) + 0xE8)) = v21;
  *(v1 + *((*v3 & *v1) + 0xF0)) = 0;
  *(v1 + *((*v3 & *v1) + 0xF8)) = 0;
  *&__src[0] = v50;
  *(&__src[0] + 1) = v5;
  *&__src[1] = v49;
  *(&__src[1] + 1) = v48;
  *&__src[2] = v13;
  *(&__src[2] + 1) = v12;
  v22 = _s8ItemInfoCMa();
  v23 = sub_18BC20DE8();
  if (sub_18BC20E28())
  {
    v24 = swift_getWitnessTable();
    v25 = sub_18BB32DD8(v23, v22, v24);
  }

  else
  {
    v25 = MEMORY[0x1E69E7CD0];
  }

  *(v1 + *((*v3 & *v1) + 0x100)) = v25;
  *(v1 + *((*v3 & *v1) + 0x108)) = 0;
  *(v1 + *((*v3 & *v1) + 0x110)) = 0;
  v47(v1 + *((*v3 & *v1) + 0x118), 1, 1, v5);
  v26 = *((*v3 & *v1) + 0x120);
  *&__src[0] = v50;
  *(&__src[0] + 1) = v5;
  *&__src[1] = v49;
  *(&__src[1] + 1) = v48;
  *&__src[2] = v13;
  *(&__src[2] + 1) = v12;
  type metadata accessor for SFFluidCollectionView.Interaction();
  *(v1 + v26) = sub_18BC20DE8();
  *(v1 + *((*v3 & *v1) + 0x128)) = 0;
  *(v1 + *((*v3 & *v1) + 0x130)) = 0;
  *(v1 + *((*v3 & *v1) + 0x138)) = 0;
  *(v1 + *((*v3 & *v1) + 0x140)) = 0;
  v27 = *((*v3 & *v1) + 0x148);
  type metadata accessor for Assertion();
  v28 = swift_allocObject();
  v29 = MEMORY[0x1E69E7CC0];
  *(v28 + 16) = MEMORY[0x1E69E7CC0];
  *(v28 + 24) = 0;
  *(v1 + v27) = v28;
  v30 = *((*v3 & *v1) + 0x150);
  swift_getTupleTypeMetadata2();
  v31 = sub_18BC20DE8();
  v32 = swift_getWitnessTable();
  v33 = sub_18B7C29AC(v31, v18, v22, v32);

  *(v1 + v30) = v33;
  v34 = (v1 + *((*v3 & *v1) + 0x158));
  v35 = *(MEMORY[0x1E695F050] + 16);
  *v34 = *MEMORY[0x1E695F050];
  v34[1] = v35;
  v36 = sub_18BC20DE8();
  if (sub_18BC20E28())
  {
    v37 = sub_18BB32DD8(v36, v18, v32);
  }

  else
  {
    v37 = MEMORY[0x1E69E7CD0];
  }

  *(v1 + *((*v3 & *v1) + 0x160)) = v37;
  v38 = v1 + *((*v3 & *v1) + 0x168);
  *v38 = 0;
  v38[10] = 0;
  *(v38 + 4) = 0;
  v39 = (v1 + *((*v3 & *v1) + 0x170));
  v40 = *(MEMORY[0x1E69DDCE0] + 16);
  *v39 = *MEMORY[0x1E69DDCE0];
  v39[1] = v40;
  v41 = (v1 + *((*v3 & *v1) + 0x178));
  *v41 = 0;
  v41[1] = 0;
  *(v1 + *((*v3 & *v1) + 0x180)) = 0;
  *(v1 + *((*v3 & *v1) + 0x188)) = v29;
  *(v1 + *((*v3 & *v1) + 0x190)) = 0;
  v42 = sub_18BC20DE8();
  if (sub_18BC20E28())
  {
    v43 = sub_18BB32DD8(v42, v5, *(v17 + 8));
  }

  else
  {
    v43 = MEMORY[0x1E69E7CD0];
  }

  *(v1 + *((*v3 & *v1) + 0x198)) = v43;
  *(v1 + *((*v3 & *v1) + 0x1A0)) = 0;
  v44 = *((*v3 & *v1) + 0x1A8);
  updated = type metadata accessor for SFFluidCollectionViewTrackedUpdateToken();
  (*(*(updated - 8) + 56))(v1 + v44, 1, 1, updated);
  v46 = *((*v3 & *v1) + 0x1B0);
  sub_18B81F588(__src);
  memcpy(v1 + v46, __src, 0x139uLL);
  *(v1 + *((*v3 & *v1) + 0x1C8)) = 0;
  sub_18B84A364(v1 + *((*v3 & *v1) + 0x1D0));
  sub_18BC21CF8();
  __break(1u);
}

uint64_t sub_18BB66844(uint64_t a1, uint64_t a2)
{
  v4 = v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x88);
  swift_beginAccess();
  *(v4 + 1) = a2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_18BB668C4()
{
  v1 = v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xA8);
  swift_beginAccess();
  return *v1;
}

uint64_t sub_18BB66928()
{
  v1 = v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xB0);
  swift_beginAccess();
  return *v1;
}

uint64_t sub_18BB6698C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xB8);
  swift_beginAccess();
  *(v4 + 1) = a2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_18BB66A0C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xC0);
  swift_beginAccess();
  *(v4 + 1) = a2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_18BB66A8C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xD0);
  swift_beginAccess();
  *(v4 + 1) = a2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_18BB66B0C(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1D8);
  swift_beginAccess();
  v4 = *(v1 + v3);
  sub_18BC1E1A8();
  sub_18BB48734(a1);
  *(v1 + v3) = a1;
  sub_18BC1E1A8();

  sub_18BB487AC(v4);
}

id sub_18BB66CE4(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  v5 = *(v4 + 0x58);
  (*(*(*((v3 & v2) + 0x58) - 8) + 16))(&v1[*((v3 & v2) + 0x80)], a1, *((v3 & v2) + 0x58));
  v7 = *((v3 & v2) + 0x50);
  v8 = *(v4 + 96);
  v9 = *(v4 + 112);
  v10.receiver = v1;
  v10.super_class = type metadata accessor for SFFluidCollectionView.MenuItemIdentifier();
  return objc_msgSendSuper2(&v10, sel_init, v7, v5, v8, v9);
}

void *sub_18BB66E70(double a1, double a2)
{
  v3 = v2;
  v6 = (*MEMORY[0x1E69E7D40] & *v2);
  v7 = v6[11];
  v8 = sub_18BC21848();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - v10;
  v12 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  if (!sub_18B812A74())
  {
    return 0;
  }

  v45 = v16;
  sub_18BB503F4(v11, a1, a2);
  if ((*(v12 + 48))(v11, 1, v7) == 1)
  {
    (*(v9 + 8))(v11, v8);
    ObjectType = swift_getObjectType();
    v18 = sub_18BC20DE8();
    v19 = (v45[10])(v2, v18, 0, ObjectType, a1, a2);
    swift_unknownObjectRelease();
  }

  else
  {
    (*(v12 + 32))(v15, v11, v7);
    v20 = v6[14];
    if ((*(v20 + 24))(v7, v20))
    {
      swift_unknownObjectRelease();
      (*(v12 + 8))(v15, v7);
      return 0;
    }

    else
    {
      v44 = v12;
      v21 = MEMORY[0x1E69E7D40];
      swift_beginAccess();
      sub_18BC1E3F8();
      v22 = sub_18BC210B8();

      if (v22)
      {
        v23 = *((*v21 & *v2) + 0x198);
        swift_beginAccess();
        v46 = *(v2 + v23);
        sub_18BC210E8();
        sub_18BC1E3F8();
        swift_getWitnessTable();
        v24 = sub_18BC20E98();
      }

      else
      {
        sub_18B85EDB0(v7, v7);
        v25 = v44;
        swift_allocObject();
        v24 = sub_18BC20DB8();
        (*(v25 + 16))(v26, v15, v7);
        sub_18BC20E78();
      }

      v27 = swift_getObjectType();
      v28 = v6[12];
      v29 = v6[13];
      v30 = v6[15];
      v40 = v6[10];
      v41 = v29;
      v46 = v40;
      v47 = v7;
      v42 = v28;
      v43 = v30;
      v48 = v28;
      v49 = v29;
      v50 = v20;
      v51 = v30;
      type metadata accessor for SFFluidCollectionView.MenuItemIdentifier();
      v31 = sub_18BB66DEC(v15);
      v32 = v3;
      v33 = v24;
      v19 = (v45[10])(v32, v24, v31, v27, a1, a2);

      if (v19)
      {
        v45 = &v40;
        v46 = v33;
        MEMORY[0x1EEE9AC00](v34);
        *(&v40 - 8) = v40;
        *(&v40 - 7) = v7;
        v35 = v41;
        *(&v40 - 6) = v42;
        *(&v40 - 5) = v35;
        v36 = v43;
        *(&v40 - 4) = v20;
        *(&v40 - 3) = v36;
        *(&v40 - 2) = v15;
        sub_18BC20E78();
        swift_getWitnessTable();
        v37 = sub_18BC20CD8();

        v46 = v37;
        sub_18BC20E78();
        swift_getWitnessTable();
        swift_getWitnessTable();
        sub_18BC210F8();
        sub_18BC21A18();

        v38 = sub_18BC20FC8();

        [v19 setSecondaryItemIdentifiers_];
      }

      else
      {
      }

      swift_unknownObjectRelease();
      (*(v44 + 8))(v15, v7);
    }
  }

  return v19;
}