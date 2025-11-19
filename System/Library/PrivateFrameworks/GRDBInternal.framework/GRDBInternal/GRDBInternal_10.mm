void *sub_1B21C3B0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B2115660();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v9 = *(v2 + 24);
  v11 = *v2;
  v12 = *(v2 + 16);
  memcpy(__dst, (v2 + 40), sizeof(__dst));
  sub_1B2111904();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1B214D320;
  *(v6 + 24) = v5;

  sub_1B2136148(v2, v8);
  sub_1B212AC5C(&v9, &qword_1EB7A2230, &unk_1B225BB20);
  *a2 = v11;
  *(a2 + 16) = v12;
  *(a2 + 24) = sub_1B2139E50;
  *(a2 + 32) = v6;
  return memcpy((a2 + 40), __dst, 0x7AuLL);
}

uint64_t sub_1B21C3C14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1B213A1C8();
    v3 = v11;
    v5 = (a2 + 32);
    do
    {
      memcpy(__dst, v5, 0xA3uLL);
      sub_1B2127DC0(__dst, __src);
      v11 = v3;
      v6 = *(v3 + 16);
      if (v6 >= *(v3 + 24) >> 1)
      {
        sub_1B213A1C8();
        v3 = v11;
      }

      memcpy(v8, __dst, 0xA3uLL);
      sub_1B214D464(v8);
      memcpy(__src, v8, sizeof(__src));
      *(v3 + 16) = v6 + 1;
      memcpy((v3 + 184 * v6 + 32), __src, 0xB8uLL);
      v5 += 168;
      --v2;
    }

    while (v2);
  }

  return v3;
}

void sub_1B21C3D34()
{
  sub_1B2111640();
  v1 = v0;
  v3 = v2;
  sub_1B2118084();
  memcpy(v4, v5, v6);
  v7 = *(v1 + 16);
  v29[0] = *v1;
  v29[1] = v7;
  v29[2] = *(v1 + 32);
  v8 = v31;
  v17 = v32;
  v16 = v33;
  memcpy(__dst, (v1 + 48), 0x58uLL);
  __dst[11] = v31;
  __dst[12] = v32;
  LOBYTE(__dst[13]) = v33;
  *(&__dst[13] + 1) = *(v1 + 153);
  *(&__dst[15] + 1) = *(v1 + 169);
  *(&__dst[17] + 1) = *(v1 + 185);
  *(&__dst[18] + 2) = *(v1 + 194);
  sub_1B2115660();
  v9 = swift_allocObject();
  *(v9 + 16) = MEMORY[0x1E69E7CC0];
  memcpy(__src, &__dst[5], sizeof(__src));
  sub_1B2111904();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1B214D320;
  *(v10 + 24) = v9;
  sub_1B2181728(v30, v18);
  sub_1B2136148(__dst, v18);

  v35[0] = *(v1 + 48);
  *&v35[1] = *(v1 + 64);
  *(&v35[1] + 1) = sub_1B2139E50;
  *&v35[2] = v10;
  memcpy(&v35[2] + 8, __src, 0x7AuLL);
  memcpy(&v29[3], v35, 0x58uLL);
  v26 = *(&v35[6] + 9);
  v27 = *(&v35[7] + 9);
  v28[0] = *(&v35[8] + 9);
  *(v28 + 9) = *(&v35[9] + 2);
  sub_1B2136148(v35, v18);
  sub_1B21A44DC();
  v12 = v11;
  v14 = v13;
  sub_1B2137224(v35);

  memcpy(v18, (v1 + 48), sizeof(v18));
  v19 = v8;
  v20 = v17;
  v21 = v16;
  v22 = *(v1 + 153);
  v23 = *(v1 + 169);
  v24[0] = *(v1 + 185);
  *(v24 + 9) = *(v1 + 194);
  sub_1B2137224(v18);
  memcpy(v3, v29, 0x88uLL);
  *(v3 + 136) = v12;
  *(v3 + 144) = v14;
  *(v3 + 152) = 0;
  v15 = v27;
  *(v3 + 153) = v26;
  *(v3 + 169) = v15;
  *(v3 + 185) = v28[0];
  *(v3 + 194) = *(v28 + 9);
  sub_1B2112FDC();
}

void sub_1B21C3FEC()
{
  sub_1B2111F14();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = memcpy(v101, v0, 0xD2uLL);
  if (LOBYTE(v101[0]) == 2)
  {
    sub_1B21619D8(&qword_1EB7A0ED0, &unk_1B225BAF0);
    v7 = swift_allocObject();
    v72 = xmmword_1B22546B0;
    *(v7 + 16) = xmmword_1B22546B0;
    v8 = v5;
    v9 = v101[1];
    v10 = v101[2];
    v11 = v101[3];
    v12 = v101[4];
    v13 = v101[5];
    memcpy(&v73[7], v1 + 48, 0xA2uLL);
    sub_1B21619D8(&qword_1EB7A0F50, &qword_1B2254C10);
    v14 = swift_allocObject();
    *(v14 + 16) = v72;
    *(v14 + 32) = v8;
    *(v14 + 40) = v3;
    *(v14 + 48) = 3;
    *(v14 + 56) = v9;
    *(v14 + 64) = v10;
    *(v14 + 72) = v11;
    *(v14 + 80) = v12;
    *(v14 + 88) = v13;
    memcpy((v14 + 89), v73, 0xA9uLL);
    *(v14 + 258) = 1;
    *(v7 + 32) = v14;
    v15 = sub_1B2115FBC();
    sub_1B2181640(v15, v16, v11, v12, v13);
    sub_1B2136148(&v101[6], v93);

LABEL_20:
    sub_1B2111588();
    return;
  }

  v17 = sub_1B2137278(v6);
  v18 = *(v17 + 16);
  if (!v18)
  {

    goto LABEL_20;
  }

  v68 = v5;
  v69 = v3;
  v100 = MEMORY[0x1E69E7CC0];
  sub_1B216EF90(0, v18, 0);
  v19 = 0;
  v20 = v100;
  v65 = v18 - 1;
  v66 = 0;
  v64 = xmmword_1B22546B0;
  v67 = v17;
  while (v19 < *(v17 + 16))
  {
    v21 = *(v17 + 8 * v19 + 32);
    if (!*(v21 + 16))
    {
      goto LABEL_22;
    }

    v71 = v19;
    *&v72 = v20;
    memcpy(v93, (v21 + 32), 0xE3uLL);
    v22 = BYTE2(v93[28]);
    v23 = v93[0];
    v24 = v93[1];
    v25 = v93[2];
    v70 = v21;

    sub_1B21819B8(v93, v92);
    sub_1B2209B4C((v22 & 1) == 0, v23, v24, v25);
    v27 = v26;
    v29 = v28;
    sub_1B2181A14(v93);
    memcpy(v91, v101, sizeof(v91));
    v30 = v101[17];
    v31 = v101[18];
    v88 = *&v101[19];
    v89 = *&v101[21];
    v90[0] = *&v101[23];
    *(v90 + 10) = *(&v101[24] + 2);
    memcpy(v94, &v101[6], sizeof(v94));
    v95 = v101[17];
    v96 = v101[18];
    v97 = *&v101[19];
    v98 = *&v101[21];
    v99[0] = *&v101[23];
    *(v99 + 10) = *(&v101[24] + 2);
    memcpy(v87, &v101[6], sizeof(v87));
    v84 = *&v101[19];
    v85 = *&v101[21];
    v86[0] = *&v101[23];
    *(v86 + 10) = *(&v101[24] + 2);
    v83[0] = v27;
    v83[1] = v29;
    sub_1B2181728(v101, v92);
    sub_1B2136148(v94, v92);
    v32 = sub_1B211E590();
    if (v33)
    {
      v34 = v32;
      v63[5] = v29;
      swift_isUniquelyReferenced_nonNull_native();
      v76[0] = v31;
      v35 = *(v31 + 24);
      sub_1B21619D8(&qword_1EB7A13C0, &qword_1B2257E60);
      sub_1B2252E70();
      v36 = v76[0];
      v37 = *(*(v76[0] + 48) + 16 * v34 + 8);

      memcpy(v92, (*(v36 + 56) + 216 * v34), 0xD2uLL);
      v38 = sub_1B2252E90();
      MEMORY[0x1EEE9AC00](v38);
      v63[2] = v83;
      v39 = v66;
      v40 = sub_1B21C3948(sub_1B2158EB4, v63, v30);
      if (v41)
      {
        goto LABEL_24;
      }

      v42 = v40;
      v43 = v30;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B2195620(v30);
        v30 = v62;
      }

      v44 = *(v30 + 16);
      if (v42 >= v44)
      {
        goto LABEL_23;
      }

      v66 = v39;
      v45 = v44 - 1;
      v46 = v44 - 1 - v42;
      v47 = v30 + 16 * v42;
      v48 = *(v47 + 40);
      sub_1B215A618((v47 + 48), v46, (v47 + 32));
      *(v30 + 16) = v45;

      sub_1B218179C(v92);
    }

    else
    {

      v43 = v30;
      v36 = v31;
    }

    memcpy(v77, &v91[48], sizeof(v77));
    v78 = v43;
    v79 = v31;
    v80 = v88;
    v81 = v89;
    v82[0] = v90[0];
    *(v82 + 10) = *(v90 + 10);
    sub_1B2137224(v77);
    memcpy(&v91[48], v87, 0x58uLL);
    v88 = v84;
    v89 = v85;
    v90[0] = v86[0];
    *(v90 + 10) = *(v86 + 10);
    memcpy(v92, v91, 0x88uLL);
    *&v92[19] = v84;
    v92[17] = v30;
    v92[18] = v36;
    *&v92[21] = v85;
    *&v92[23] = v86[0];
    *(&v92[24] + 2) = *(v86 + 10);
    v49 = LOBYTE(v92[0]) > 1u;
    v50 = v92[1];
    v51 = v92[2];
    v52 = v92[3];
    v53 = v92[4];
    v54 = v92[5];
    memcpy(&v75[7], &v92[6], 0xA2uLL);
    memcpy(v76, v75, 0xA9uLL);
    sub_1B21619D8(&qword_1EB7A0F50, &qword_1B2254C10);
    v55 = swift_allocObject();
    *(v55 + 16) = v64;
    v56 = v69;
    *(v55 + 32) = v68;
    *(v55 + 40) = v56;
    *(v55 + 48) = 3;
    *(v55 + 56) = v50;
    *(v55 + 64) = v51;
    *(v55 + 72) = v52;
    *(v55 + 80) = v53;
    *(v55 + 88) = v54;
    memcpy((v55 + 89), v76, 0xA9uLL);
    *(v55 + 258) = v49;
    v74 = v55;

    v57 = v70;

    sub_1B2181640(v50, v51, v52, v53, v54);
    sub_1B2136148(&v92[6], v75);

    sub_1B216CEF8(v57);
    sub_1B218179C(v92);

    v58 = v74;
    v20 = v72;
    v100 = v72;
    v60 = *(v72 + 16);
    v59 = *(v72 + 24);
    if (v60 >= v59 >> 1)
    {
      v61 = sub_1B211156C(v59);
      sub_1B216EF90(v61, v60 + 1, 1);
      v20 = v100;
    }

    *(v20 + 16) = v60 + 1;
    *(v20 + 8 * v60 + 32) = v58;
    if (v65 == v71)
    {

      goto LABEL_20;
    }

    v19 = v71 + 1;
    v17 = v67;
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

void sub_1B21C4698()
{
  sub_1B2111F14();
  v3 = v2;
  v5 = v4;
  v7 = *v6;
  if (v2 >= 2u)
  {
    if (v2 == 2)
    {
      v0 = 0;
    }

    else
    {
      v8 = *(v7 + 16);
      if (!v8)
      {
        goto LABEL_40;
      }

      v0 = *(v7 + 232 * v8 + 26) ^ 1u;
    }
  }

  else
  {
    v0 = 1;
  }

  v9 = *(v7 + 16);
  if (!v9)
  {
    __break(1u);
    goto LABEL_34;
  }

  v10 = v7 + 32 + 232 * v9;
  v11 = *(v10 - 232);
  v12 = *(v10 - 224);
  v1 = *(v10 - 216);
  sub_1B21C8064(v11, v12, *(v10 - 216));
  sub_1B2209B4C(v0 & 1, v11, v12, v1);
  v14 = v13;
  v0 = v15;
  sub_1B21C807C(v11, v12, v1);
  v16 = *(v7 + 16);
  if (!v16)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v50 = v14;
  v17 = v7 + 32 + 232 * v16;
  v18 = *(v17 - 208);
  v19 = *(v17 - 200);
  v20 = *(v17 - 192);
  v21 = *(v17 - 184);
  v22 = *(v17 - 176);
  memcpy(__dst, (v17 - 168), 0xA2uLL);
  if (v3 != 2)
  {
    if (LOBYTE(__dst[13]) == 1 || __dst[14] | __dst[16])
    {
      sub_1B211481C();
      sub_1B2112A88();
    }

    else
    {
      if ((__dst[20] & 0x100) != 0)
      {
        goto LABEL_13;
      }

      sub_1B2111608();
      sub_1B2112A88();
    }

    sub_1B212E2BC();
    sub_1B2252EC0();
    __break(1u);
    return;
  }

LABEL_13:
  memcpy(&__src[7], __dst, 0xA2uLL);
  LOBYTE(v57[0]) = v3;
  v57[1] = v18;
  v57[2] = v19;
  v57[3] = v20;
  v57[4] = v21;
  LOBYTE(v57[5]) = v22;
  memcpy(&v57[5] + 1, __src, 0xA9uLL);
  sub_1B2181640(v18, v19, v20, v21, v22);
  sub_1B2136148(__dst, v55);

  sub_1B2228DB4(1, v7);
  if (v23 == v24 >> 1)
  {
    memcpy(v55, v57, 0xD2uLL);
    sub_1B21C4D40(v55, v50, v0, v52);

    swift_unknownObjectRelease();
    sub_1B218179C(v57);
    v25 = v52[160];
    v26 = v52[161];
    v28 = *&v52[128];
    v27 = *&v52[144];
    v29 = *&v52[112];
    v30 = v52[104];
    v32 = *&v52[72];
    v31 = *&v52[88];
    v33 = *&v52[56];
    v34 = v52[64];
    v36 = *&v52[24];
    v35 = *&v52[40];
    v37 = *v52;
    v38 = *&v52[8];
    v39 = *&v52[16];
    goto LABEL_32;
  }

  v40 = v23;
  if (v24)
  {
    v42 = v24 >> 1;
    sub_1B2253280();
    swift_unknownObjectRetain_n();
    v43 = swift_dynamicCastClass();
    if (!v43)
    {
      swift_unknownObjectRelease();
      v43 = MEMORY[0x1E69E7CC0];
    }

    v7 = *(v43 + 16);

    if (__OFSUB__(v42, v40))
    {
      goto LABEL_41;
    }

    if (v7 != v42 - v40)
    {
      goto LABEL_42;
    }

    v1 = swift_dynamicCastClass();
    if (!v1)
    {
      swift_unknownObjectRelease();
      v1 = MEMORY[0x1E69E7CC0];
    }

    goto LABEL_23;
  }

  while (1)
  {
    sub_1B216E78C();
    v1 = v41;
LABEL_23:
    v44 = *(v1 + 16);
    if (v44)
    {
      v7 = MEMORY[0x1E69E7CC0];
      memcpy(v54, (v1 + 32 + 232 * v44 - 168), sizeof(v54));
      sub_1B2115660();
      v45 = swift_allocObject();
      *(v45 + 16) = v7;
      *v60 = *v54;
      *&v60[16] = *&v54[16];
      memcpy(v61, &v54[40], 0x7AuLL);
      sub_1B2111904();
      v46 = swift_allocObject();
      *(v46 + 16) = sub_1B214D370;
      *(v46 + 24) = v45;
      sub_1B2136148(v54, v52);

      v66 = *v60;
      v67 = *&v60[16];
      v68 = sub_1B2139E50;
      v69 = v46;
      memcpy(v70, v61, sizeof(v70));
      memcpy(v52, v57, 0xD2uLL);
      sub_1B21C4D40(v52, v50, v0, v60);
      sub_1B2137224(&v66);

      v47 = *(v1 + 16);
      if (v47)
      {
        v48 = v1 + 32 + 232 * v47;
        memcpy(v55, (v48 - 232), 0xE3uLL);
        v0 = v53;
        memcpy(v53, (v48 - 232), 0xE3uLL);
        memcpy(v56, (v48 - 168), 0xA2uLL);
        sub_1B21819B8(v55, v52);
        sub_1B2137224(v56);
        memcpy(&v53[64], v60, 0xA2uLL);
        v7 = *(v1 + 16);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_26;
        }

        goto LABEL_37;
      }
    }

    else
    {
LABEL_35:
      __break(1u);
    }

    __break(1u);
LABEL_37:
    sub_1B21956E4(v1);
    v1 = v49;
LABEL_26:
    if (!v7)
    {
      __break(1u);
      goto LABEL_39;
    }

    if (v7 <= *(v1 + 16))
    {
      break;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    swift_unknownObjectRelease();
  }

  memcpy(v52, (v1 + 232 * v7 - 200), sizeof(v52));
  memcpy((v1 + 232 * v7 - 200), v53, 0xE3uLL);
  sub_1B2181A14(v52);
  v51 = v1;

  if (v3 == 2)
  {
    sub_1B21C4698(v61, &v51, 3);
    sub_1B218179C(v57);
    swift_unknownObjectRelease();

    v28 = v62;
    v27 = v63;
    v25 = v64;
    v26 = v65;
  }

  else
  {
    sub_1B21C4698(v61, &v51, v3);
    sub_1B218179C(v57);
    swift_unknownObjectRelease();

    v27 = v63;
    v25 = v64;
    v26 = v65;
    v28 = v62;
  }

  v29 = *&v61[112];
  v30 = v61[104];
  v31 = *&v61[88];
  v32 = *&v61[72];
  v34 = v61[64];
  v35 = *&v61[40];
  v36 = *&v61[24];
  v37 = *v61;
  v38 = *&v61[8];
  v33 = *&v61[56];
  v39 = *&v61[16];
LABEL_32:
  v55[0] = v26;
  *v5 = v37;
  *(v5 + 8) = v38;
  *(v5 + 16) = v39;
  *(v5 + 24) = v36;
  *(v5 + 40) = v35;
  *(v5 + 56) = v33;
  *(v5 + 64) = v34;
  *(v5 + 72) = v32;
  *(v5 + 88) = v31;
  *(v5 + 104) = v30;
  *(v5 + 112) = v29;
  *(v5 + 128) = v28;
  *(v5 + 144) = v27;
  *(v5 + 160) = v25;
  *(v5 + 161) = v26;
  sub_1B2111588();
}

void *sub_1B21C4D40@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  memcpy(v31, __src, 0xD2uLL);
  memcpy(v29, v4, 0xA2uLL);
  v28[0] = a2;
  v28[1] = a3;
  sub_1B2136148(v4, v32);
  sub_1B21C7D54(v27);
  memcpy(v32, v27, 0xD2uLL);
  if (sub_1B2181784(v32) == 1)
  {
    memcpy(v30, v27, 0xD2uLL);
    sub_1B212AC5C(v30, &qword_1EB7A13B0, &unk_1B2257E48);
    sub_1B21C37F8(v31, a2, a3);
    return memcpy(a4, v29, 0xA2uLL);
  }

  v8 = v4[11];
  memcpy(v25, v27, 0xD2uLL);
  v9 = memcpy(v26, v27, sizeof(v26));
  MEMORY[0x1EEE9AC00](v9);
  v21 = v28;
  v10 = sub_1B21C3948(sub_1B2158ED4, &v20, v8);
  if (v11)
  {
    goto LABEL_11;
  }

  v12 = v10;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B2195620(v8);
    v8 = v19;
  }

  v13 = *(v8 + 16);
  if (v12 >= v13)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = v13 - 1;
  v15 = v13 - 1 - v12;
  v16 = v8 + 16 * v12;
  v17 = *(v16 + 40);
  sub_1B215A618((v16 + 48), v15, (v16 + 32));
  *(v8 + 16) = v14;

  v29[11] = v8;
  sub_1B21C5070();
  memcpy(v24, v23, 0xD2uLL);
  if (sub_1B2181784(v24) != 1)
  {
    memcpy(v30, v24, 0xD2uLL);
    sub_1B21C37F8(v30, a2, a3);
    sub_1B212AC5C(v25, &qword_1EB7A13B0, &unk_1B2257E48);
    sub_1B212AC5C(v23, &qword_1EB7A13B0, &unk_1B2257E48);
    return memcpy(a4, v29, 0xA2uLL);
  }

LABEL_12:
  v30[0] = 0;
  v30[1] = 0xE000000000000000;
  sub_1B2252CD0();
  MEMORY[0x1B2741EB0](0xD000000000000015, 0x80000001B226E700);
  MEMORY[0x1B2741EB0](a2, a3);
  MEMORY[0x1B2741EB0](0xD00000000000004FLL, 0x80000001B226E720);
  v22 = 0;
  v21 = 501;
  result = sub_1B2252EC0();
  __break(1u);
  return result;
}

void sub_1B21C5070()
{
  sub_1B2111F14();
  v49 = v1;
  v48 = *v2;
  v3 = *(v2 + 2);
  v50 = *(v2 + 1);
  v4 = *(v2 + 3);
  v5 = *(v2 + 4);
  v6 = v2[40];
  memcpy(__dst, v2 + 48, sizeof(__dst));
  v47 = *v0;
  v8 = *(v0 + 8);
  v7 = *(v0 + 16);
  v9 = *(v0 + 24);
  v10 = *(v0 + 32);
  v11 = *(v0 + 40);
  memcpy(v61, (v0 + 48), sizeof(v61));
  *v53 = v8;
  *&v53[8] = v7;
  *&v53[16] = v9;
  *&v53[24] = v10;
  v53[32] = v11;
  __src[0] = v50;
  __src[1] = v3;
  __src[2] = v4;
  __src[3] = v5;
  LOBYTE(__src[4]) = v6;
  sub_1B2123378();
  sub_1B2181640(v12, v13, v14, v15, v16);
  v17 = sub_1B21440A8();
  sub_1B2181640(v17, v18, v19, v20, v21);
  sub_1B21C7460(__src, v55);
  sub_1B2123378();
  sub_1B21816DC(v22, v23, v24, v25, v26);
  v27 = sub_1B21440A8();
  sub_1B21816DC(v27, v28, v29, v30, v31);
  v32 = v55[32];
  if (v55[32] > 0xFDu)
  {
    sub_1B21C805C(v53);
    v33 = v49;
LABEL_14:
    memcpy(v33, v53, 0xD2uLL);
    sub_1B2111588();
    return;
  }

  v34 = *v55;
  v35 = *&v55[8];
  v36 = *&v55[16];
  v37 = *&v55[24];
  sub_1B21C607C();
  memcpy(v55, __src, sizeof(v55));
  if (sub_1B2117000(v55) == 1)
  {
    v38 = sub_1B212D004();
    sub_1B21C8094(v38, v39, v36, v37, v32);
LABEL_8:
    sub_1B21C805C(v53);
LABEL_13:
    v33 = v49;
    goto LABEL_14;
  }

  memcpy(v59, v55, sizeof(v59));
  v40 = v55[104];
  v58[0] = *&v55[105];
  *(v58 + 3) = *&v55[108];
  v46 = *&v55[128];
  v51 = *&v55[112];
  v56 = *&v55[144];
  v57 = v55[160];
  v41 = v55[161];
  v42 = sub_1B21C7618(v48, v47);
  if (v42 == 2)
  {
LABEL_12:
    memcpy(&v52[7], v59, 0x68uLL);
    *&v53[192] = v56;
    v53[208] = v57;
    v53[0] = v42;
    *&v53[8] = v34;
    *&v53[16] = v35;
    *&v53[24] = v36;
    *&v53[32] = v37;
    v53[40] = v32;
    memcpy(&v53[41], v52, 0x6FuLL);
    v53[152] = v40;
    *&v53[153] = v58[0];
    *&v53[156] = *(v58 + 3);
    *&v53[176] = v46;
    *&v53[160] = v51;
    v53[209] = v41;
    nullsub_1(v53);
    goto LABEL_13;
  }

  if (v42 == 4)
  {
    v43 = sub_1B212D004();
    sub_1B21C8094(v43, v44, v36, v37, v32);
    sub_1B212AC5C(__src, &qword_1EB7A2218, &qword_1B225BB00);
    goto LABEL_8;
  }

  if ((v40 & 1) != 0 || (sub_1B2121FD4(v51, v46), (v45 & 1) == 0))
  {
    sub_1B211481C();
    sub_1B2112A88();
  }

  else
  {
    if (v41)
    {
      goto LABEL_12;
    }

    sub_1B2111608();
    sub_1B2112A88();
  }

  sub_1B212E2BC();
  sub_1B2252EC0();
  __break(1u);
}

double sub_1B21C53BC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v9 = *(v3 + 88);
  v10 = *(v5 + 96);
  memcpy(__dst, v5, sizeof(__dst));
  v11 = *(v5 + 120);
  v25 = *(v5 + 104);
  v26 = v11;
  v27[0] = *(v5 + 136);
  *(v27 + 10) = *(v5 + 146);
  v18[2] = a1;
  v18[3] = a2;
  sub_1B2136148(v5, v19);
  sub_1B21A4EA0(v9, v10, sub_1B21C8148, v18);
  if (v4)
  {
    memcpy(v19, __dst, sizeof(v19));
    v20 = v9;
    v21 = v10;
    v22 = v25;
    v23 = v26;
    v24[0] = v27[0];
    *(v24 + 10) = *(v27 + 10);
    sub_1B2137224(v19);
  }

  else
  {
    v15 = v12;
    v16 = v13;

    memcpy(a3, __dst, 0x58uLL);
    *(a3 + 88) = v15;
    *(a3 + 96) = v16;
    v17 = v26;
    *(a3 + 104) = v25;
    *(a3 + 120) = v17;
    *(a3 + 136) = v27[0];
    result = *(v27 + 10);
    *(a3 + 146) = *(v27 + 10);
  }

  return result;
}

void sub_1B21C55C8()
{
  sub_1B2111640();
  v7 = *v4;
  v8 = *(*v4 + 16);
  if (!v8)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = v5;
  v1 = v4;
  v18 = v6;
  v0 = v7 + 32;
  memcpy(__dst, (v7 + 32 + 232 * v8 - 168), sizeof(__dst));
  sub_1B2115660();
  v3 = swift_allocObject();
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  v24 = *__dst;
  v25 = *&__dst[16];
  memcpy(v23, &__dst[40], sizeof(v23));
  sub_1B2111904();
  v2 = swift_allocObject();
  *(v2 + 16) = v9;
  *(v2 + 24) = v3;
  sub_1B2136148(__dst, v26);

  v10 = *(v7 + 16);
  if (!v10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = v0 + 232 * v10;
  memcpy(v26, (v11 - 232), 0xE3uLL);
  v12 = *(v11 - 216);
  *v21 = *(v11 - 232);
  *&v21[16] = v12;
  v13 = *(v11 - 184);
  *&v21[32] = *(v11 - 200);
  *&v21[48] = v13;
  memcpy(__src, (v11 - 128), sizeof(__src));
  LOBYTE(v3) = BYTE2(v26[28]);
  v14 = *(v11 - 152);
  v27 = *(v11 - 168);
  v28 = v14;
  v29 = *&v26[11];
  memcpy(v30, __src, sizeof(v30));
  sub_1B21819B8(v26, v19);
  sub_1B2137224(&v27);
  *&v21[64] = v24;
  *&v21[80] = v25;
  v0 = *(v7 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v7;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v0)
    {
      goto LABEL_5;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_9:
  sub_1B21956E4(v7);
  v7 = v17;
  *v1 = v17;
  if (!v0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (v0 <= *(v7 + 16))
  {
    v16 = v7 + 232 * v0;
    memcpy(v19, (v16 - 200), 0xE3uLL);
    memcpy((v16 - 200), v21, 0x58uLL);
    *(v16 - 112) = v18;
    *(v16 - 104) = v2;
    memcpy((v16 - 96), v23, 0x7AuLL);
    *(v16 + 26) = v3;
    sub_1B2181A14(v19);
    *v1 = v7;
    sub_1B2112FDC();
    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_1B21C57FC()
{
  v2 = v0;
  v3 = MEMORY[0x1E69E7CC0];
  sub_1B2127C14();
  v31 = v4;
  v5._object = 0x80000001B226E860;
  v5._countAndFlagsBits = 0xD000000000000016;
  SQLInterpolation.appendLiteral(_:)(v5);
  v6 = *(v0 + 88);
  v7 = *(v2 + 96);
  v36 = *(v2 + 56);
  v37 = *(v2 + 64);
  sub_1B2136148(v2, v29);
  sub_1B214C808(&v36);
  v8 = *(v2 + 16);
  v25 = *v2;
  v26 = v8;
  v27 = *(v2 + 32);
  v28 = *(v2 + 48);
  *v30 = *(v2 + 65);
  *&v30[15] = *(v2 + 80);
  *(&v29[2] + 10) = *(v2 + 146);
  v9 = *(v2 + 136);
  v10 = *(v2 + 104);
  v29[1] = *(v2 + 120);
  v29[2] = v9;
  v29[0] = v10;
  sub_1B21A3F40();
  v12 = v11;
  v14 = v13;

  __src[0] = v25;
  __src[1] = v26;
  __src[2] = v27;
  *&__src[3] = v28;
  *(&__src[3] + 1) = v3;
  LOBYTE(__src[4]) = 0;
  *(&__src[4] + 1) = *v30;
  *&__src[5] = *&v30[15];
  *(&__src[5] + 1) = v12;
  *&__src[6] = v14;
  *(&__src[9] + 2) = *(&v29[2] + 10);
  *(&__src[8] + 8) = v29[2];
  *(&__src[7] + 8) = v29[1];
  *(&__src[6] + 8) = v29[0];
  memcpy(__dst, __src, 0xA2uLL);
  sub_1B214C410(__dst);
  memcpy(v40, __dst, sizeof(v40));
  v15 = v31;
  sub_1B2136148(__src, v29);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v22 = *(v15 + 16);
    sub_1B2127C14();
    v15 = v23;
  }

  v16 = *(v15 + 16);
  if (v16 >= *(v15 + 24) >> 1)
  {
    sub_1B2127C14();
    v15 = v24;
  }

  sub_1B2137224(__src);
  memcpy(v29, v40, 0xA2uLL);
  sub_1B216EDC0(v29);
  *(v15 + 16) = v16 + 1;
  memcpy((v15 + 184 * v16 + 32), v29, 0xB8uLL);
  v31 = v15;
  v17._countAndFlagsBits = 41;
  v17._object = 0xE100000000000000;
  SQLInterpolation.appendLiteral(_:)(v17);
  *&v27 = 0;
  v25 = 0u;
  v26 = 0u;
  memset(v32, 0, sizeof(v32));
  v33 = 0;
  v34 = v31;
  sub_1B2142B5C(&v25, v32);
  v35 = 2;
  v18 = v32;
  sub_1B2146A54(&v25);
  if (v1 || (v18 = sub_1B2181098(), v20 = v19, result = sub_1B2142D18(&v25), (v20 & 1) == 0))
  {
    sub_1B212AC5C(v32, &qword_1EB7A2248, &unk_1B225BB60);
    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B21C5B9C()
{
  sub_1B2111F14();
  v4 = v3;
  v5 = *(v2 + 16);
  if (v5)
  {
    v6 = v2;
    v7 = v1;
    v8 = v0;
    v18 = v3;
    v26 = MEMORY[0x1E69E7CC0];
    sub_1B213CA68();
    v9 = v26;
    v10 = (v6 + 56);
    do
    {
      v11 = *(v10 - 3);
      v12 = *(v10 - 2);
      v13 = *v10;
      v21[0] = *(v10 - 1);
      v21[1] = v13;
      v21[2] = v7;
      sub_1B213CBE4(v21);
      memcpy(v20, v21, 0xA3uLL);
      v22[0] = v11;
      v22[1] = v12;
      v22[2] = v8;
      sub_1B213CBE4(v22);
      memcpy(v19, v22, sizeof(v19));
      memcpy(v23, v21, sizeof(v23));
      memcpy(v24, v22, sizeof(v24));
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_retain_n();
      swift_retain_n();
      sub_1B212AC5C(v23, &qword_1EB7A1CE0, &qword_1B225BAB0);
      sub_1B21353B0(0, v20, v25);

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      v26 = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1B211156C(v14);
        sub_1B213CA68();
        v9 = v26;
      }

      *(v9 + 16) = v15 + 1;
      v0 = memcpy((v9 + 168 * v15 + 32), v25, 0xA3uLL);
      v10 += 4;
      --v5;
    }

    while (v5);
    v4 = v18;
  }

  if (qword_1ED85DC80 != -1)
  {
    v0 = swift_once();
  }

  *v23 = xmmword_1ED85DC88;
  *&v23[16] = xmmword_1ED85DC98;
  *&v23[32] = word_1ED85DCA8;
  v23[34] = byte_1ED85DCAA;
  MEMORY[0x1EEE9AC00](v0);
  sub_1B21619D8(&qword_1EB7A1CD8, &unk_1B225EDE0);
  sub_1B21C7FF8();
  swift_getKeyPath();

  sub_1B224F214();
  v17 = v16;

  sub_1B213B4BC(v23, v17, v4);

  sub_1B2111588();
}

uint64_t sub_1B21C5E98(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v8 || (v9 = sub_1B22531F0(), result = 0, (v9 & 1) != 0))
  {
    if (v2)
    {
      if (v5)
      {
        if (sub_1B21B8000(v2, v5))
        {
          if (!v3)
          {
            sub_1B2181698(v2);
            if (!v6)
            {
              sub_1B2181698(v5);
              sub_1B2181698(v2);
              sub_1B211A378(v5);
LABEL_24:

              goto LABEL_25;
            }

            goto LABEL_16;
          }

          if (v6)
          {
            v11 = sub_1B21B8000(v3, v6);
            v12 = sub_1B2115C84();
            sub_1B2181698(v12);
            v13 = sub_1B2115FBC();
            sub_1B2181698(v13);
            v14 = sub_1B2115C84();
            sub_1B2181698(v14);
            v15 = sub_1B2115FBC();
            sub_1B211A378(v15);
            if (v11)
            {
              goto LABEL_24;
            }

            goto LABEL_17;
          }
        }

        v17 = sub_1B2115C84();
        sub_1B2181698(v17);
LABEL_16:
        v18 = sub_1B2115FBC();
        sub_1B2181698(v18);
        sub_1B2181698(v2);
        v19 = sub_1B2115FBC();
        sub_1B211A378(v19);
LABEL_17:

        v20 = sub_1B2115C84();
LABEL_20:
        sub_1B211A378(v20);
        return 0;
      }

      sub_1B2181698(v2);
      sub_1B2181698(0);
      v21 = sub_1B2115C84();
      sub_1B2181698(v21);
    }

    else
    {
      sub_1B2181698(0);
      if (!v5)
      {
        sub_1B2181698(0);
LABEL_25:
        v23 = sub_1B2115C84();
        sub_1B211A378(v23);
        return v4 ^ v7 ^ 1u;
      }

      v16 = sub_1B2115FBC();
      sub_1B2181698(v16);
    }

    v22 = sub_1B2115C84();
    sub_1B211A378(v22);
    v20 = sub_1B2115FBC();
    goto LABEL_20;
  }

  return result;
}

void sub_1B21C607C()
{
  sub_1B2111F14();
  v2 = v1;
  isUniquelyReferenced_nonNull_native = v3;
  v5 = sub_1B21C72D8(*v1, v2[1], v2[2], *v0, *(v0 + 8), *(v0 + 16));
  if (!v6)
  {
    sub_1B21C80A8(v243);
LABEL_110:
    memcpy(isUniquelyReferenced_nonNull_native, v243, 0xA2uLL);
    sub_1B2111588();
    return;
  }

  v8 = *(v0 + 40);
  v9 = *(v2 + 5);
  v10 = vmovn_s64(vceqzq_s64(vzip1q_s64(v9, v8)));
  v210 = v0;
  v211 = v2;
  v200 = v7;
  v201 = isUniquelyReferenced_nonNull_native;
  v199 = v6;
  v196 = v5;
  if (v10.i8[4])
  {
    if (v10.i8[0])
    {
      v197 = 0;
      v198 = v2[6];
      goto LABEL_11;
    }

    v11 = v2[5];
    *v235 = *(v2 + 5);
    v198 = v2[6];
    goto LABEL_9;
  }

  *v235 = *(v2 + 5);
  if (v10.i8[0])
  {
    v11 = *(v0 + 40);
    v198 = *(v0 + 48);
LABEL_9:
    v197 = v11;
    sub_1B2112328(v8.i64[0]);
    v9.i64[0] = v235[0];
    goto LABEL_11;
  }

  sub_1B2113B74();
  *v232 = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = *v232;
  *(v13 + 32) = *v235;
  v198 = v13;

  v9.i64[0] = v235[0];
  v197 = sub_1B21C873C;
LABEL_11:
  sub_1B2112328(v9.i64[0]);
  sub_1B21359AC();
  v15 = v14;
  v17 = v16;
  v18 = *(v0 + 88);
  v19 = *(v18 + 16);
  if (!v19)
  {
LABEL_61:
    v119 = v211[11];
    v120 = *(v119 + 16);
    if (v120)
    {
      v121 = (v119 + 40);
      v122 = v211[12];
      while (*(v122 + 16))
      {
        v124 = *(v121 - 1);
        v123 = *v121;

        sub_1B212D004();
        v125 = sub_1B211E590();
        if ((v126 & 1) == 0)
        {
          goto LABEL_114;
        }

        v127 = *(v122 + 56) + 216 * v125;
        sub_1B2118084();
        memcpy(v128, v129, v130);
        sub_1B2118084();
        memcpy(v131, v132, v133);
        sub_1B2118084();
        memmove(v134, v135, v136);
        *v247 = v124;
        *&v247[8] = v123;
        sub_1B21145E0();

        sub_1B2181728(v245, __dst);
        sub_1B2181728(__src, __dst);
        sub_1B212AC5C(v247, &qword_1EB7A13A8, &qword_1B2257E40);
        memcpy(__dst, __src, 0xD2uLL);
        if (v17[2] && (sub_1B212D004(), v137 = sub_1B211E590(), (v138 & 1) != 0))
        {
          memcpy(v244, (v17[7] + 216 * v137), 0xD2uLL);
          sub_1B2113B80();

          sub_1B218179C(__dst);
          v139 = v244;
        }

        else
        {
          v237 = v120;
          v140 = v122;
          v141 = v15;
          sub_1B2181728(__dst, v244);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v243 = v17;
          sub_1B212D004();
          v142 = sub_1B211E590();
          if (__OFADD__(v17[2], (v143 & 1) == 0))
          {
            goto LABEL_117;
          }

          v15 = v142;
          v144 = v143;
          sub_1B21619D8(&qword_1EB7A13C0, &qword_1B2257E60);
          v145 = v243;
          if (sub_1B2252E70())
          {
            v145 = *v243;
            sub_1B212D004();
            v146 = sub_1B211E590();
            if ((v144 & 1) != (v147 & 1))
            {
              goto LABEL_123;
            }

            v15 = v146;
          }

          if (v144)
          {
            goto LABEL_124;
          }

          v17 = *v243;
          sub_1B212DEFC(*v243 + 8 * (v15 >> 6));
          v149 = (v148 + 16 * v15);
          *v149 = v124;
          v149[1] = v123;
          memcpy((v17[7] + 216 * v15), __dst, 0xD2uLL);
          v150 = v17[2];
          v80 = __OFADD__(v150, 1);
          v151 = v150 + 1;
          if (v80)
          {
            goto LABEL_118;
          }

          v17[2] = v151;
          swift_bridgeObjectRetain_n();
          v15 = v141;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1B2117CF0();
            v15 = v153;
          }

          v122 = v140;
          v120 = v237;
          sub_1B2115F0C();
          if (v83)
          {
            sub_1B211D970();
            v15 = v154;
          }

          *(v15 + 16) = v145;
          v152 = v15 + 16 * isUniquelyReferenced_nonNull_native;
          *(v152 + 32) = v124;
          *(v152 + 40) = v123;

          v139 = __dst;
        }

        sub_1B218179C(v139);
        v121 += 2;
        if (!--v120)
        {
          goto LABEL_80;
        }
      }

      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      sub_1B2253390();
      __break(1u);
LABEL_124:
      v193 = (*(*v243 + 56) + 216 * v15);
      goto LABEL_126;
    }

LABEL_80:
    v155 = swift_allocObject();
    memcpy((v155 + 16), v211, 0xA2uLL);
    v238 = v155;
    memcpy((v155 + 184), v210, 0xA2uLL);
    v156 = v211[7];
    if (*(v156 + 16))
    {
      v157 = *(v211 + 64);
    }

    else
    {
      v156 = v210[7];
      v157 = *(v210 + 64);
    }

    v231 = v157;
    v234 = v156;

    if (v210[13])
    {
      v229 = 1;
      v158 = v211;
    }

    else
    {
      v158 = v211;
      v229 = *(v211 + 104);
    }

    v218 = v15;
    v159 = v158[14];
    v160 = v158[15];
    v161 = v159;
    if (!v159)
    {
      v161 = v210[14];
      v160 = v210[15];
      sub_1B2112328(v161);
    }

    v225 = v160;
    v227 = v161;
    __dst[0] = *(v210 + 8);
    v163 = v158[16];
    v162 = v158[17];
    v164 = *&__dst[0];
    if (*&__dst[0])
    {
      v165 = *(&__dst[0] + 1);
      if (v163)
      {
        sub_1B2113B74();
        v166 = swift_allocObject();
        v166[2] = v164;
        v166[3] = v165;
        v166[4] = v163;
        v166[5] = v162;
        sub_1B2122B00(__dst, v247, &qword_1EB7A2228, &unk_1B225BB10);
        v164 = sub_1B21C873C;
        v165 = v166;
LABEL_94:

LABEL_95:
        v167 = *(v211 + 161);
        v209 = *(v210 + 161);
        if (v167)
        {
          v168 = v210;
        }

        else
        {
          v168 = v211;
        }

        v222 = *(v168 + 160);
        v220 = v168[19];
        v213 = v168[18];
        v169 = v210[10];
        v171 = v211[9];
        v170 = v211[10];
        v245[0] = v210[9];
        v244[0] = v169;
        *__src = v245[0];
        *&__src[8] = v169;
        sub_1B2136148(v211, v247);
        sub_1B2136148(v210, v247);
        sub_1B2112328(v159);
        sub_1B2112328(v163);
        sub_1B2122B00(v245, v247, &qword_1EB7A0DA0, &qword_1B2254340);
        sub_1B2122B00(v244, v247, &qword_1EB7A2220, &qword_1B225BB08);
        sub_1B21A6528();
        v172 = sub_1B21143BC();
        sub_1B2112F4C(v172);
        LOBYTE(v240[0]) = v167 & v209;
        *v247 = v196;
        *&v247[8] = v199;
        *&v247[16] = v200;
        *&v247[24] = sub_1B21C80B0;
        *&v247[32] = v238;
        *&v247[40] = v197;
        *&v247[48] = v198;
        *&v247[56] = v234;
        v247[64] = v231;
        *&v247[72] = *__src;
        *&v247[88] = v218;
        *&v247[96] = v17;
        v247[104] = v229;
        *&v247[112] = v227;
        *&v247[120] = v225;
        *&v247[128] = v164;
        *&v247[136] = v165;
        *&v247[144] = v213;
        *&v247[152] = v220;
        v247[160] = v222;
        v247[161] = v167 & v209;
        nullsub_1(v247);
        memcpy(v243, v247, 0xA2uLL);
        goto LABEL_109;
      }
    }

    else
    {
      if (!v163)
      {
        v164 = 0;
        v165 = v158[17];
        goto LABEL_95;
      }

      v164 = v158[16];
      v165 = v158[17];
    }

    sub_1B2122B00(__dst, v247, &qword_1EB7A2228, &unk_1B225BB10);
    goto LABEL_94;
  }

  v20 = *(v0 + 96);
  v21 = v2[12];
  v22 = (v18 + 40);
  v206 = v20;
  v207 = v21;
  while (1)
  {
    if (!*(v20 + 16))
    {
      goto LABEL_115;
    }

    v23 = *(v22 - 1);
    isUniquelyReferenced_nonNull_native = *v22;

    v24 = sub_1B211E590();
    if ((v25 & 1) == 0)
    {
      goto LABEL_116;
    }

    v26 = *(v20 + 56) + 216 * v24;
    sub_1B2118084();
    memcpy(v27, v28, v29);
    sub_1B2118084();
    memcpy(v30, v31, v32);
    sub_1B2118084();
    memmove(v33, v34, v35);
    *v247 = v23;
    *&v247[8] = isUniquelyReferenced_nonNull_native;
    sub_1B21145E0();

    sub_1B2181728(v245, v243);
    sub_1B2181728(__src, v243);
    sub_1B212AC5C(v247, &qword_1EB7A13A8, &qword_1B2257E40);
    memcpy(__dst, __src, 0xD2uLL);
    v233 = v22;
    v236 = v23;
    if (*(v21 + 16))
    {
      v36 = sub_1B211E590();
      if (v37)
      {
        break;
      }
    }

    v62 = v21;
    v63 = v20;
    v64 = v19;
    v65 = v15;
    sub_1B2181728(__dst, v244);
    v15 = swift_isUniquelyReferenced_nonNull_native();
    *v243 = v17;
    v66 = isUniquelyReferenced_nonNull_native;
    sub_1B211E590();
    sub_1B21120DC();
    if (__OFADD__(v69, v70))
    {
      goto LABEL_119;
    }

    isUniquelyReferenced_nonNull_native = v67;
    v71 = v68;
    sub_1B21619D8(&qword_1EB7A13C0, &qword_1B2257E60);
    v72 = v243;
    if (sub_1B2252E70())
    {
      v72 = *v243;
      v73 = v66;
      v74 = sub_1B211E590();
      if ((v71 & 1) != (v75 & 1))
      {
        goto LABEL_123;
      }

      isUniquelyReferenced_nonNull_native = v74;
      v15 = v65;
      v76 = v64;
    }

    else
    {
      v15 = v65;
      v76 = v64;
      v73 = v66;
    }

    if (v71)
    {
      v193 = (*(*v243 + 56) + 216 * isUniquelyReferenced_nonNull_native);
LABEL_126:
      memcpy(v244, v193, 0xD2uLL);
      memcpy(v193, __dst, 0xD2uLL);
      v194 = v244;
      goto LABEL_127;
    }

    v20 = v63;
    v17 = *v243;
    sub_1B212DEFC(*v243 + 8 * (isUniquelyReferenced_nonNull_native >> 6));
    v78 = (v77 + 16 * isUniquelyReferenced_nonNull_native);
    *v78 = v236;
    v78[1] = v73;
    memcpy((v17[7] + 216 * isUniquelyReferenced_nonNull_native), __dst, 0xD2uLL);
    v79 = v17[2];
    v80 = __OFADD__(v79, 1);
    v81 = v79 + 1;
    if (v80)
    {
      goto LABEL_120;
    }

    v21 = v62;
    v17[2] = v81;
    swift_bridgeObjectRetain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B2117CF0();
      v15 = v115;
    }

    v82 = v233;
    sub_1B2115F0C();
    if (v83)
    {
      sub_1B211D970();
      v15 = v116;
    }

    *(v15 + 16) = v72;
    v84 = v15 + 16 * isUniquelyReferenced_nonNull_native;
    *(v84 + 32) = v236;
    *(v84 + 40) = v73;

    sub_1B218179C(__dst);
LABEL_60:
    v22 = v82 + 2;
    v19 = v76 - 1;
    if (!v19)
    {
      goto LABEL_61;
    }
  }

  v221 = isUniquelyReferenced_nonNull_native;
  memcpy(v244, (*(v21 + 56) + 216 * v36), 0xD2uLL);
  v38 = v244[2];
  v39 = v244[3];
  v40 = v244[5];
  v41 = *&__dst[2];
  v219 = v19;
  v226 = v244[5];
  v228 = v244[4];
  v230 = v244[2];
  v223 = v244[1];
  v224 = v244[3];
  if (SBYTE8(__dst[2]) < 0)
  {
    v205 = *&__dst[1];
    if ((SLOBYTE(v244[5]) & 0x80000000) == 0)
    {
      v186 = *(&__dst[0] + 1);
      v187 = *(&__dst[1] + 1);
      v214 = BYTE8(__dst[2]);
      sub_1B2181640(*(&__dst[0] + 1), *&__dst[1], *(&__dst[1] + 1), *&__dst[2], SBYTE8(__dst[2]));
      sub_1B2118368();
      sub_1B2181640(v188, v189, v190, v191, v192);
      sub_1B2113B80();
      sub_1B2112F4C(v197);

      sub_1B21816DC(v186, v205, v187, v41, v214);
      sub_1B2118368();
      goto LABEL_103;
    }

    v216 = *(&__dst[0] + 1);
    v85 = *(&__dst[1] + 1);
    v202 = *(&__dst[1] + 1);
    v203 = *&__dst[2];
    v86 = *&__dst[2];
    v87 = BYTE8(__dst[2]);
    sub_1B2181640(v244[1], v244[2], v244[3], v244[4], v244[5]);
    sub_1B2181640(v216, v205, v85, v86, v87);
    sub_1B2118368();
    sub_1B2181640(v88, v89, v90, v91, v92);
    sub_1B2113B80();
    sub_1B21816DC(v216, v205, v202, v203, v87);
    sub_1B2118368();
    sub_1B21816DC(v93, v94, v95, v96, v97);
  }

  else
  {
    if (SLOBYTE(v244[5]) < 0)
    {
      v176 = *(&__dst[0] + 1);
      v177 = __dst[1];
      v178 = *&__dst[2];
      v204 = *&__dst[2];
      v179 = BYTE8(__dst[2]);
      sub_1B2181640(*(&__dst[0] + 1), *&__dst[1], *(&__dst[1] + 1), *&__dst[2], SBYTE8(__dst[2]));
      sub_1B2181640(v176, v177, *(&v177 + 1), v178, v179);
      sub_1B2181640(v223, v38, v39, v228, v40);
      sub_1B2113B80();
      sub_1B2112F4C(v197);

      sub_1B21816DC(v176, v177, *(&v177 + 1), v204, v179);

      sub_1B21816DC(v176, v177, *(&v177 + 1), v204, v179);
      v173 = v223;
      v175 = v38;
      v174 = v39;
      goto LABEL_102;
    }

    v215 = v15;
    v240[0] = *(&__dst[0] + 1);
    *&v240[1] = __dst[1];
    v240[3] = *&__dst[2];
    LOBYTE(v240[4]) = BYTE8(__dst[2]) & 1;
    v241[0] = v244[1];
    v241[1] = v244[2];
    v241[2] = v244[3];
    v241[3] = v244[4];
    LOBYTE(v241[4]) = v244[5] & 1;
    v42 = v244[1];
    v43 = *(&__dst[0] + 1);
    v44 = __dst[1];
    v45 = BYTE8(__dst[2]);
    sub_1B2181640(*(&__dst[0] + 1), *&__dst[1], *(&__dst[1] + 1), *&__dst[2], SBYTE8(__dst[2]));
    v46 = sub_1B2116668();
    sub_1B2181640(v46, v47, v48, v49, v45);
    sub_1B2181640(v42, v230, v224, v228, v226);
    v50 = sub_1B2116668();
    sub_1B2181640(v50, v51, v52, v53, v45);
    sub_1B2181640(v42, v230, v224, v228, v226);
    sub_1B2113B80();
    v208 = sub_1B21C5E98(v240, v241);
    v54 = sub_1B2116668();
    sub_1B21816DC(v54, v55, v56, v57, v45);
    sub_1B21816DC(v42, v230, v224, v228, v226);
    sub_1B21816DC(v223, v230, v224, v228, v226);
    v58 = sub_1B2116668();
    sub_1B21816DC(v58, v59, v60, v61, v45);
    if ((v208 & 1) == 0)
    {
      sub_1B2112F4C(v197);

      v182 = sub_1B2116668();
      sub_1B21816DC(v182, v183, v184, v185, v45);

      goto LABEL_108;
    }

    v223 = v43;
    v224 = *(&v44 + 1);
    v228 = v41;
    v230 = v44;
    v226 = v45;
    v15 = v215;
  }

  memcpy(v251, &v244[6], 0xA2uLL);
  memcpy(v252, &__dst[3], sizeof(v252));
  sub_1B21C607C(v249, v251);
  memcpy(v250, v249, sizeof(v250));
  v20 = v206;
  v21 = v207;
  if (sub_1B2117000(v250) == 1)
  {
    sub_1B2112F4C(v197);

    v173 = v223;
    v174 = v224;
    v175 = v230;
LABEL_102:
    v180 = v228;
    v181 = v226;
LABEL_103:
    sub_1B21816DC(v173, v175, v174, v180, v181);
LABEL_108:
    sub_1B218179C(v244);
    sub_1B218179C(__dst);

    sub_1B21C80A8(v243);
LABEL_109:
    isUniquelyReferenced_nonNull_native = v201;
    goto LABEL_110;
  }

  isUniquelyReferenced_nonNull_native = v250[104];
  v98 = v250[161];
  v99 = v244[0];
  v212 = *&v250[128];
  *v217 = *&v250[112];
  switch(LOBYTE(__dst[0]))
  {
    case 1:
      if (LOBYTE(v244[0]) >= 2u)
      {
        goto LABEL_107;
      }

      v99 = 1;
      goto LABEL_45;
    case 2:
      if (LOBYTE(v244[0]) != 2)
      {
        if (LOBYTE(v244[0]) == 3)
        {
LABEL_112:
          sub_1B2122568();
LABEL_131:
          sub_1B2112A88();
          goto LABEL_132;
        }

LABEL_107:
        sub_1B2112F4C(v197);

        sub_1B212AC5C(v249, &qword_1EB7A2218, &qword_1B225BB00);
        sub_1B21816DC(v223, v230, v224, v228, v226);

        goto LABEL_108;
      }

      v100 = v15;
LABEL_48:
      memcpy(v241 + 7, v250, 0x68uLL);
      *&v243[192] = *&v250[144];
      v243[208] = v250[160];
      v243[0] = v99;
      *&v243[1] = v242[0];
      *&v243[4] = *(v242 + 3);
      *&v243[8] = v223;
      *&v243[16] = v230;
      *&v243[24] = v224;
      *&v243[32] = v228;
      v243[40] = v226;
      memcpy(&v243[41], v241, 0x6FuLL);
      v243[152] = isUniquelyReferenced_nonNull_native;
      *&v243[153] = *&v250[105];
      *&v243[156] = *&v250[108];
      *&v243[160] = *v217;
      *&v243[176] = v212;
      v243[209] = v98;
      sub_1B2181728(v243, v240);
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v239 = v17;
      v102 = sub_1B211E590();
      if (__OFADD__(v17[2], (v103 & 1) == 0))
      {
        goto LABEL_121;
      }

      isUniquelyReferenced_nonNull_native = v102;
      v104 = v103;
      sub_1B21619D8(&qword_1EB7A13C0, &qword_1B2257E60);
      v105 = &v239;
      if (sub_1B2252E70())
      {
        v105 = v239;
        v106 = v236;
        v107 = v221;
        v108 = sub_1B211E590();
        if ((v104 & 1) != (v109 & 1))
        {
          goto LABEL_123;
        }

        isUniquelyReferenced_nonNull_native = v108;
        v15 = v100;
        v76 = v219;
      }

      else
      {
        v15 = v100;
        v76 = v219;
        v107 = v221;
        v106 = v236;
      }

      if ((v104 & 1) == 0)
      {
        v17 = v239;
        sub_1B212DEFC(&v239[isUniquelyReferenced_nonNull_native >> 6]);
        v111 = (v110 + 16 * isUniquelyReferenced_nonNull_native);
        *v111 = v106;
        v111[1] = v107;
        memcpy((v17[7] + 216 * isUniquelyReferenced_nonNull_native), v243, 0xD2uLL);
        v112 = v17[2];
        v80 = __OFADD__(v112, 1);
        v113 = v112 + 1;
        if (v80)
        {
          goto LABEL_122;
        }

        v17[2] = v113;
        swift_bridgeObjectRetain_n();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B2117CF0();
          v15 = v117;
        }

        sub_1B2115F0C();
        if (v83)
        {
          sub_1B211D970();
          v15 = v118;
        }

        *(v15 + 16) = v105;
        v114 = v15 + 16 * isUniquelyReferenced_nonNull_native;
        *(v114 + 32) = v106;
        *(v114 + 40) = v107;
        sub_1B218179C(v244);
        sub_1B218179C(v243);

        sub_1B218179C(__dst);
        v82 = v233;
        goto LABEL_60;
      }

      v195 = (v239[7] + 216 * isUniquelyReferenced_nonNull_native);
      memcpy(v240, v195, 0xD2uLL);
      memcpy(v195, v243, 0xD2uLL);
      v194 = v240;
LABEL_127:
      sub_1B218179C(v194);
      sub_1B2111608();
      sub_1B2112A88();
LABEL_132:
      sub_1B2252EC0();
      __break(1u);

      __break(1u);
      return;
    case 3:
      if (LOBYTE(v244[0]) == 3)
      {
        goto LABEL_45;
      }

      if (LOBYTE(v244[0]) != 2)
      {
        goto LABEL_107;
      }

      goto LABEL_112;
    default:
      if (LOBYTE(v244[0]) >= 2u)
      {
        goto LABEL_107;
      }

LABEL_45:
      if (v250[104])
      {
        goto LABEL_131;
      }

      sub_1B2121FD4(*&v250[112], *&v250[128]);
      if (v101)
      {
        v100 = v15;
        if (v98)
        {
          goto LABEL_48;
        }
      }

      goto LABEL_112;
  }
}

uint64_t sub_1B21C72D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a4;
  v9 = a4 == a1 && a5 == a2;
  if (!v9 && (sub_1B22531F0() & 1) == 0)
  {
    return 0;
  }

  if (!a6)
  {
    if (!a3)
    {

      return v7;
    }

    goto LABEL_11;
  }

  if (!a3)
  {
LABEL_11:

    return v7;
  }

  v11 = sub_1B21DA3B0(v10);

  if (!v11)
  {

    return 0;
  }

  return v7;
}

void *sub_1B21C73D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *(a2 + 32);
  result = (*(a2 + 24))(&v11);
  if (!v4)
  {
    result = v11;
    if (v11[2])
    {
      *a4 = v11;
    }

    else
    {

      v10 = *(a3 + 32);
      return (*(a3 + 24))(a1);
    }
  }

  return result;
}

uint64_t sub_1B21C7460@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 32);
  v8 = *v2;
  v9 = *(v2 + 8);
  v11 = *(v2 + 16);
  v10 = *(v2 + 24);
  v12 = *(v2 + 32);
  if (v12 < 0)
  {
    if (v7 < 0)
    {
      v66 = sub_1B21143BC();
      sub_1B211FE3C(v66, v67);
      v68 = sub_1B2112A98();
      sub_1B2181640(v68, v69, v70, v71, v72);
      v73 = sub_1B211756C();
      sub_1B2181640(v73, v74, v75, v76, v77);
      v78 = sub_1B2112A98();
      sub_1B21816DC(v78, v79, v80, v81, v82);
      v83 = sub_1B211756C();
      result = sub_1B21816DC(v83, v84, v85, v86, v87);
      *a2 = v4;
      *(a2 + 8) = v3;
      *(a2 + 16) = v6;
      *(a2 + 24) = v2;
      *(a2 + 32) = v7;
      return result;
    }

    goto LABEL_8;
  }

  if (v7 < 0)
  {
LABEL_8:
    sub_1B2181640(*v2, *(v2 + 8), *(v2 + 16), v10, v12);
    v51 = sub_1B211756C();
    sub_1B2181640(v51, v52, v53, v54, v55);
    v56 = sub_1B2112A98();
    sub_1B21816DC(v56, v57, v58, v59, v60);
    v61 = sub_1B211756C();
    result = sub_1B21816DC(v61, v62, v63, v64, v65);
    goto LABEL_9;
  }

  v92[0] = *v2;
  v92[1] = v9;
  v92[2] = v11;
  v92[3] = v10;
  v93 = v12 & 1;
  v90[0] = v4;
  v90[1] = v3;
  v90[2] = v6;
  v90[3] = v5;
  v91 = v7 & 1;
  v13 = sub_1B21143BC();
  sub_1B211FE3C(v13, v14);
  v15 = sub_1B2112A98();
  sub_1B2181640(v15, v16, v17, v18, v19);
  v20 = sub_1B2112A98();
  sub_1B2181640(v20, v21, v22, v23, v24);
  v25 = sub_1B211756C();
  sub_1B2181640(v25, v26, v27, v28, v29);
  v88 = sub_1B21C5E98(v92, v90);
  v30 = sub_1B2112A98();
  sub_1B21816DC(v30, v31, v32, v33, v34);
  v35 = sub_1B211756C();
  sub_1B21816DC(v35, v36, v37, v38, v39);
  v40 = sub_1B211756C();
  sub_1B21816DC(v40, v41, v42, v43, v44);
  v45 = sub_1B2112A98();
  result = sub_1B21816DC(v45, v46, v47, v48, v49);
  if ((v88 & 1) == 0)
  {
LABEL_9:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = -2;
    return result;
  }

  *a2 = v8;
  *(a2 + 8) = v9;
  *(a2 + 16) = v11;
  *(a2 + 24) = v10;
  *(a2 + 32) = v12;

  return sub_1B2181698(v11);
}

uint64_t sub_1B21C7618(uint64_t result, char a2)
{
  switch(a2)
  {
    case 1:
      goto LABEL_11;
    case 2:
      if (result == 2)
      {
        return result;
      }

      if (result != 3)
      {
        return 4;
      }

      goto LABEL_10;
    case 3:
      if (result == 3)
      {
        return result;
      }

      if (result != 2)
      {
        return 4;
      }

LABEL_10:
      sub_1B2111608();
      sub_1B2112A88();
      sub_1B212E2BC();
      LOBYTE(result) = sub_1B2252EC0();
      __break(1u);
LABEL_11:
      if ((result & 0xFE) != 0)
      {
        return 4;
      }

      else
      {
        return 1;
      }

    default:
      if (result == 1)
      {
        return 1;
      }

      else
      {
        return 4 * (result != 0);
      }
  }
}

uint64_t sub_1B21C76E0()
{
  sub_1B2117A9C();
  sub_1B212D590();
  sub_1B21120DC();
  if (__OFADD__(v6, v7))
  {
    __break(1u);
LABEL_11:
    result = sub_1B2253390();
    __break(1u);
    return result;
  }

  v8 = v4;
  v9 = v5;
  sub_1B21619D8(&qword_1EB7A1BD8, &qword_1B225A4B0);
  if (sub_1B214CC10())
  {
    v1 = v22;
    sub_1B211E590();
    sub_1B2114080();
    if (!v11)
    {
      goto LABEL_11;
    }

    v8 = v10;
  }

  if (v9)
  {
    v1 = v22;
    v12 = (*(v22 + 56) + 176 * v8);
    v13 = sub_1B2115FBC();
    memmove(v13, v14, 0xABuLL);
    memcpy(v12, v3, 0xABuLL);
    result = nullsub_1(v2);
  }

  else
  {
    v16 = sub_1B211F680();
    sub_1B21CBFCC(v16, v17, v18, v19, v20);
    sub_1B21C8120(v21);
    memcpy(v2, v21, 0xABuLL);
  }

  *v0 = v1;
  return result;
}

uint64_t sub_1B21C77F4()
{
  sub_1B2117A9C();
  sub_1B212D590();
  sub_1B21120DC();
  if (__OFADD__(v6, v7))
  {
    __break(1u);
LABEL_11:
    result = sub_1B2253390();
    __break(1u);
    return result;
  }

  v8 = v4;
  v9 = v5;
  sub_1B21619D8(&qword_1EB7A13C0, &qword_1B2257E60);
  if (sub_1B214CC10())
  {
    v1 = v22;
    sub_1B211E590();
    sub_1B2114080();
    if (!v11)
    {
      goto LABEL_11;
    }

    v8 = v10;
  }

  if (v9)
  {
    v1 = v22;
    v12 = (*(v22 + 56) + 216 * v8);
    v13 = sub_1B2115FBC();
    memmove(v13, v14, 0xD2uLL);
    memcpy(v12, v3, 0xD2uLL);
    result = nullsub_1(v2);
  }

  else
  {
    v16 = sub_1B211F680();
    sub_1B21CC064(v16, v17, v18, v19, v20);
    sub_1B21C805C(__src);
    memcpy(v2, __src, 0xD2uLL);
  }

  *v0 = v1;
  return result;
}

void sub_1B21C7908()
{
  sub_1B211AD88();
  v2 = v1;
  v4 = v3;
  v23 = v5;
  v7 = v6;
  v9 = v8;
  v10 = *v0;
  swift_isUniquelyReferenced_nonNull_native();
  v24 = *v0;
  sub_1B21143BC();
  sub_1B211E590();
  sub_1B21120DC();
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_10;
  }

  v15 = v11;
  v16 = v12;
  sub_1B21619D8(&qword_1EB7A1BC0, &qword_1B2259950);
  sub_1B213CE24();
  if (sub_1B2252E70())
  {
    sub_1B21143BC();
    v17 = sub_1B211E590();
    if ((v16 & 1) == (v18 & 1))
    {
      v15 = v17;
      goto LABEL_5;
    }

LABEL_10:
    sub_1B2253390();
    __break(1u);
    return;
  }

LABEL_5:
  if (v16)
  {
    v19 = (*(v24 + 56) + 24 * v15);
    v20 = *v19;
    v21 = v19[1];
    v22 = v19[2];
    *v19 = v9;
    v19[1] = v7;
    v19[2] = v23;
  }

  else
  {
    sub_1B21CC0B0(v15, v4, v2, v9, v7, v23, v24);
  }

  *v0 = v24;
  sub_1B21119F0();
}

uint64_t sub_1B21C7A3C()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1B2133834();
  if ((v4 & 1) == 0)
  {
    return 1;
  }

  v5 = v3;
  v6 = *v1;
  swift_isUniquelyReferenced_nonNull_native();
  v15 = *v1;
  v7 = *(*v1 + 24);
  sub_1B21619D8(&qword_1EB7A1D10, &unk_1B225BB40);
  sub_1B213CE24();
  sub_1B2252E70();
  v8 = *(v15 + 48) + 32 * v5;
  v9 = *(v8 + 8);
  v10 = *(v8 + 24);

  v11 = (*(v15 + 56) + 16 * v5);
  v13 = *v11;
  v12 = v11[1];
  sub_1B211B358();
  sub_1B2252E90();
  *v1 = v15;
  return v13;
}

void *sub_1B21C7B28@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1B211E590();
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v12[0] = *v2;
    v9 = *(v12[0] + 24);
    sub_1B21619D8(&qword_1EB7A1BD8, &qword_1B225A4B0);
    sub_1B2252E70();
    v10 = *(*(v12[0] + 48) + 16 * v7 + 8);

    memmove(a1, (*(v12[0] + 56) + 176 * v7), 0xABuLL);
    sub_1B2252E90();
    *v2 = v12[0];

    return nullsub_1(a1);
  }

  else
  {
    sub_1B21C8120(v12);
    return memcpy(a1, v12, 0xABuLL);
  }
}

double sub_1B21C7C4C@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1B211E590();
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    v9 = *(*v2 + 24);
    sub_1B21619D8(&qword_1EB7A2238, &qword_1B226BA40);
    sub_1B213CE24();
    sub_1B2252E70();
    v10 = *(*(v14 + 48) + 16 * v7 + 8);

    v11 = *(v14 + 56) + 40 * v7;
    v12 = *(v11 + 16);
    *a1 = *v11;
    *(a1 + 16) = v12;
    *(a1 + 32) = *(v11 + 32);
    sub_1B21619D8(&qword_1EB7A0E30, &unk_1B2259360);
    sub_1B2252E90();
    *v2 = v14;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *&result = 1;
    *(a1 + 24) = xmmword_1B2259350;
  }

  return result;
}

void *sub_1B21C7D54@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1B211E590();
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    __src[0] = *v2;
    v9 = *(__src[0] + 24);
    sub_1B21619D8(&qword_1EB7A13C0, &qword_1B2257E60);
    sub_1B2252E70();
    v10 = *(*(__src[0] + 48) + 16 * v7 + 8);

    memmove(a1, (*(__src[0] + 56) + 216 * v7), 0xD2uLL);
    sub_1B2252E90();
    *v2 = __src[0];

    return nullsub_1(a1);
  }

  else
  {
    sub_1B21C805C(__src);
    return memcpy(a1, __src, 0xD2uLL);
  }
}

uint64_t sub_1B21C7E84(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = *(result - 56) & 1;
  v4 = (v2 | (*(result + 2) << 16)) & 0xF981FF | 0x24000;
  *(result - 96) &= 1uLL;
  *(result - 56) = v3;
  *result = v4;
  *(result + 2) = BYTE2(v4);
  return result;
}

uint64_t sub_1B21C7F2C(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = *(result - 56) & 1;
  v4 = (v2 | (*(result + 2) << 16)) & 0xF981FF;
  *(result - 96) &= 1uLL;
  *(result - 56) = v3;
  *result = v4;
  *(result + 2) = (v4 | 0x40000u) >> 16;
  return result;
}

uint64_t sub_1B21C7F70(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = *(result - 56) & 1;
  v4 = (v2 | (*(result + 2) << 16)) & 0xF981FF;
  *(result - 96) &= 1uLL;
  *(result - 56) = v3;
  *result = v4 | 0x4000;
  *(result + 2) = BYTE2(v4);
  return result;
}

uint64_t sub_1B21C7FB4(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = *(result - 56) & 1;
  v4 = (v2 | (*(result + 2) << 16)) & 0xF981FF;
  *(result - 96) &= 1uLL;
  *(result - 56) = v3;
  *result = v4;
  *(result + 2) = (v4 | 0x20000u) >> 16;
  return result;
}

unint64_t sub_1B21C7FF8()
{
  result = qword_1ED85D868;
  if (!qword_1ED85D868)
  {
    sub_1B2161A20(&qword_1EB7A1CD8, &unk_1B225EDE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85D868);
  }

  return result;
}

uint64_t sub_1B21C8064(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_1B21C807C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_1B21C8094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 <= 0xFDu)
  {
    return sub_1B21816DC(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t *sub_1B21C80D0(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x1B2743C50);
  }

  return result;
}

double sub_1B21C8120(uint64_t a1)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0x1FFFFFFFELL;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 155) = 0u;
  return result;
}

uint64_t sub_1B21C8148(int a1, int a2, void *__src)
{
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  memcpy(__dst, __src, 0xD2uLL);
  return v5(__dst) & 1;
}

uint64_t sub_1B21C81F4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1B21C8234(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B21C8284(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B21C82C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B21C8324(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B21C8344(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

uint64_t sub_1B21C8390(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 210))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1B21C83D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 208) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 210) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 210) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B21C8454(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_1B21C8494(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B21C84EC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 33))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (*(a1 + 32) & 0x7E | (*(a1 + 32) >> 7)) ^ 0x7F;
      if (v2 >= 0x7E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1B21C8534(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

_BYTE *sub_1B21C85C0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B21C869C()
{
  result = qword_1EB7A2250;
  if (!qword_1EB7A2250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A2250);
  }

  return result;
}

void sub_1B21C8758(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v33 = MEMORY[0x1E69E7CC0];
    sub_1B2132AA0();
    v5 = sub_1B2132AEC(v2);
    v6 = 0;
    v7 = v2 + 56;
    v25 = v2 + 64;
    v26 = v1;
    v27 = v2 + 56;
    v28 = v2;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v2 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v2 + 36) != v3)
        {
          goto LABEL_25;
        }

        v32 = v4;
        v29 = v6;
        v30 = v3;
        v9 = (*(v2 + 48) + 16 * v5);
        v10 = *v9;
        v11 = v9[1];
        v31 = sub_1B2252220();
        v13 = v12;
        v14 = *(v33 + 16);
        v15 = *(v33 + 24);

        if (v14 >= v15 >> 1)
        {
          sub_1B2132AA0();
        }

        *(v33 + 16) = v14 + 1;
        v16 = (v33 + 32 * v14);
        v16[4] = v31;
        v16[5] = v13;
        v16[6] = v10;
        v16[7] = v11;
        if (v32)
        {
          goto LABEL_29;
        }

        v7 = v27;
        v2 = v28;
        v17 = 1 << *(v28 + 32);
        if (v5 >= v17)
        {
          goto LABEL_26;
        }

        v18 = *(v27 + 8 * v8);
        if ((v18 & (1 << v5)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v28 + 36) != v30)
        {
          goto LABEL_28;
        }

        v19 = v18 & (-2 << (v5 & 0x3F));
        if (v19)
        {
          v17 = __clz(__rbit64(v19)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v20 = v8 << 6;
          v21 = v8 + 1;
          v22 = (v25 + 8 * v8);
          while (v21 < (v17 + 63) >> 6)
          {
            v24 = *v22++;
            v23 = v24;
            v20 += 64;
            ++v21;
            if (v24)
            {
              sub_1B21268C8(v5, v30, 0);
              v17 = __clz(__rbit64(v23)) + v20;
              goto LABEL_19;
            }
          }

          sub_1B21268C8(v5, v30, 0);
        }

LABEL_19:
        v6 = v29 + 1;
        if (v29 + 1 == v26)
        {
          return;
        }

        v4 = 0;
        v3 = *(v28 + 36);
        v5 = v17;
        if (v17 < 0)
        {
          break;
        }
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
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

void sub_1B21C89A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v29 = MEMORY[0x1E69E7CC0];
    sub_1B2116B10();
    v5 = sub_1B2132AEC(v2);
    v6 = 0;
    v7 = v2 + 56;
    v23 = v2 + 64;
    v24 = v2 + 56;
    v25 = v2;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v2 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v2 + 36) != v3)
        {
          goto LABEL_25;
        }

        v28 = v4;
        v26 = v6;
        v27 = v3;
        v9 = *(v2 + 48) + 32 * v5;
        v10 = *(v9 + 16);
        v11 = *(v9 + 24);
        v13 = *(v29 + 16);
        v12 = *(v29 + 24);

        if (v13 >= v12 >> 1)
        {
          sub_1B2116B10();
        }

        *(v29 + 16) = v13 + 1;
        v14 = v29 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v11;
        if (v28)
        {
          goto LABEL_29;
        }

        v7 = v24;
        v2 = v25;
        v15 = 1 << *(v25 + 32);
        if (v5 >= v15)
        {
          goto LABEL_26;
        }

        v16 = *(v24 + 8 * v8);
        if ((v16 & (1 << v5)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v25 + 36) != v27)
        {
          goto LABEL_28;
        }

        v17 = v16 & (-2 << (v5 & 0x3F));
        if (v17)
        {
          v15 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = v8 << 6;
          v19 = v8 + 1;
          v20 = (v23 + 8 * v8);
          while (v19 < (v15 + 63) >> 6)
          {
            v22 = *v20++;
            v21 = v22;
            v18 += 64;
            ++v19;
            if (v22)
            {
              sub_1B21268C8(v5, v27, 0);
              v15 = __clz(__rbit64(v21)) + v18;
              goto LABEL_19;
            }
          }

          sub_1B21268C8(v5, v27, 0);
        }

LABEL_19:
        v6 = v26 + 1;
        if (v26 + 1 == v1)
        {
          return;
        }

        v4 = 0;
        v3 = *(v25 + 36);
        v5 = v15;
        if (v15 < 0)
        {
          break;
        }
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
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

uint64_t sub_1B21C8BE0()
{
  sub_1B211D964();
  v3 = v2;
  v4 = sub_1B2252220();
  v6 = v5;
  sub_1B21619D8(&qword_1EB7A2190, &unk_1B225B250);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B22546B0;
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  *(inited + 48) = v1;
  *(inited + 56) = v0;
  *(inited + 64) = 0;
  *(inited + 72) = 0;
  sub_1B211B358();

  result = sub_1B2252190();
  *v3 = result;
  return result;
}

GRDBInternal::DatabaseRegion __swiftcall DatabaseRegion.init()()
{
  v1 = v0;
  sub_1B211B358();
  v2 = sub_1B2252190();
  *v1 = v2;
  result.tableRegions.value._rawValue = v2;
  result.tableRegions.is_nil = v3;
  return result;
}

Swift::Void __swiftcall DatabaseRegion.formUnion(_:)(GRDBInternal::DatabaseRegion a1)
{
  v2 = *v1;
  v3[0] = *a1.tableRegions.value._rawValue;
  v3[1] = v2;
  a1.tableRegions.value._rawValue = v3;
  DatabaseRegion.union(_:)(a1);

  *v1 = v3[2];
}

BOOL DatabaseRegion.isModified(byEventsOfKind:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v20[12] = *v4;
  if (a4 > 1u)
  {
    sub_1B2113060();
    v12 = sub_1B2252220();
    v14 = v13;

    sub_1B21C8758(a3);
    v16 = sub_1B2132B34(v15);
    sub_1B21619D8(&qword_1EB7A2190, &unk_1B225B250);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B22546B0;
    *(inited + 32) = v12;
    *(inited + 40) = v14;
    *(inited + 48) = a1;
    *(inited + 56) = a2;
    *(inited + 64) = v16;
    *(inited + 72) = 0;
    sub_1B211B358();
  }

  else
  {
    sub_1B2113060();
    v7 = sub_1B2252220();
    v9 = v8;
    sub_1B21619D8(&qword_1EB7A2190, &unk_1B225B250);
    v10 = swift_initStackObject();
    *(v10 + 16) = xmmword_1B22546B0;
    *(v10 + 32) = v7;
    *(v10 + 40) = v9;
    *(v10 + 48) = a1;
    *(v10 + 56) = a2;
    *(v10 + 64) = 0;
    *(v10 + 72) = 0;
    sub_1B211B358();
  }

  v20[0] = sub_1B2252190();
  sub_1B21C97F8(v20, &v21);

  if (v21)
  {
    v18 = *(v21 + 16);

    return v18 != 0;
  }

  else
  {

    return 1;
  }
}

uint64_t DatabaseRegion.isModified(by:)(void *a1)
{
  v2 = *v1;
  if (!*v1)
  {
    goto LABEL_3;
  }

  v4 = a1[3];
  v5 = a1[4];
  sub_1B21139A0(a1, v4);
  v6 = (*(v5 + 16))(v4, v5);
  v8 = v7;
  v9 = sub_1B2252220();
  v11 = sub_1B214A5A8(v9, v10, v6, v8, v2);
  v13 = v12;

  if (v11 != 1)
  {
    if (v13)
    {
      v14 = sub_1B21CA838(a1[6], v13);
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
LABEL_3:
    v14 = 1;
  }

  return v14 & 1;
}

uint64_t sub_1B21C8FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v4 = sub_1B211E590(), (v5 & 1) != 0))
  {
    v6 = (*(a3 + 56) + 24 * v4);
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[2];
  }

  else
  {
    sub_1B2117D14();
  }

  return sub_1B2112FD0();
}

uint64_t sub_1B21C9050(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v2 = sub_1B2190CF8(), (v3 & 1) != 0))
  {
    sub_1B2114830(v2);
  }

  else
  {
    sub_1B2117D14();
  }

  return sub_1B2112FD0();
}

uint64_t sub_1B21C9090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v3 = sub_1B211E590(), (v4 & 1) != 0))
  {
    sub_1B2114830(v3);
  }

  else
  {
    sub_1B2117D14();
  }

  return sub_1B2112FD0();
}

uint64_t sub_1B21C90D0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v23 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = (*(result + 48) + 32 * (v9 | (v3 << 6)));
      v14 = *v12;
      v13 = v12[1];
      v15 = v12[3];
      v16 = *(a2 + 40);
      sub_1B2253420();

      sub_1B2252370();
      v17 = sub_1B2253470();
      v18 = ~(-1 << *(a2 + 32));
      do
      {
        v19 = v17 & v18;
        if (((*(a2 + 56 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
        {

          return 0;
        }

        v20 = (*(a2 + 48) + 32 * v19);
        if (*v20 == v14 && v20[1] == v13)
        {
          break;
        }

        v22 = sub_1B22531F0();
        v17 = v19 + 1;
      }

      while ((v22 & 1) == 0);

      result = v23;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B21C9298(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
LABEL_7:
  if (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v12 = *(*(v3 + 48) + 8 * (v9 | (v4 << 6)));
    v13 = *(a2 + 40);
    result = sub_1B2253410();
    v14 = ~(-1 << *(a2 + 32));
    while (1)
    {
      v15 = result & v14;
      if (((*(a2 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
      {
        return 0;
      }

      result = v15 + 1;
      if (*(*(a2 + 48) + 8 * v15) == v12)
      {
        goto LABEL_7;
      }
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 56 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void sub_1B21C93D8(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return;
  }

  v3 = sub_1B212257C(a1, a2);
  if (!v38)
  {
    return;
  }

  v4 = *(v3 + 56);
  v5 = *(v3 + 32);
  sub_1B211837C();
  if (v8 < 64)
  {
    v12 = ~(-1 << v8);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & v7;
  v14 = (v8 + 63) >> 6;
  v49 = v2 + 56;
  v45 = v14;
  v46 = v9;
  if (!v13)
  {
    goto LABEL_9;
  }

  do
  {
    v15 = __clz(__rbit64(v13));
    v42 = (v13 - 1) & v13;
LABEL_14:
    v43 = v11;
    v44 = v6;
    v20 = (*(v6 + 48) + ((v15 | (v11 << 6)) << 6));
    v21 = v20[3];
    v23 = *v20;
    v22 = v20[1];
    v10[2] = v20[2];
    v10[3] = v21;
    *v10 = v23;
    v10[1] = v22;
    v24 = *(v2 + 40);
    sub_1B2253420();
    sub_1B2148158(v51, v50);
    sub_1B21483F8();
    v25 = sub_1B2253470();
    v47 = v2;
    v26 = -1 << *(v2 + 32);
    v27 = v25 & ~v26;
    if (((*(v49 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
    {
LABEL_49:
      sub_1B2148190(v51);
      return;
    }

    v48 = ~v26;
    v28 = v51[0];
    v29 = v51[1];
    v30 = *(v47 + 48);
    while (1)
    {
      v31 = (v30 + (v27 << 6));
      v32 = v31[2];
      v33 = v31[3];
      v35 = v31[4];
      v34 = v31[5];
      v37 = v31[6];
      v36 = v31[7];
      v38 = *v31 == v28 && v31[1] == v29;
      if (!v38 && (sub_1B22531F0() & 1) == 0)
      {
        goto LABEL_44;
      }

      v39 = v32 == v51[2] && v33 == v51[3];
      if (!v39 && (sub_1B22531F0() & 1) == 0)
      {
        goto LABEL_44;
      }

      if (v34)
      {
        if (!v52)
        {
          goto LABEL_44;
        }

        v40 = v35 == v51[4] && v34 == v52;
        if (!v40 && (sub_1B22531F0() & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      else if (v52)
      {
        goto LABEL_44;
      }

      if (v36)
      {
        break;
      }

      if (!v54)
      {
        goto LABEL_46;
      }

LABEL_44:
      v27 = (v27 + 1) & v48;
      if (((*(v49 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    if (!v54)
    {
      goto LABEL_44;
    }

    v41 = v37 == v53 && v36 == v54;
    if (!v41 && (sub_1B22531F0() & 1) == 0)
    {
      goto LABEL_44;
    }

LABEL_46:
    sub_1B2148190(v51);
    v9 = v46;
    v2 = v47;
    v11 = v43;
    v6 = v44;
    v10 = v51;
    v14 = v45;
    v13 = v42;
  }

  while (v42);
LABEL_9:
  v16 = v11;
  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
      return;
    }

    ++v16;
    if (*(v9 + 8 * v17))
    {
      sub_1B211667C();
      v42 = v19 & v18;
      goto LABEL_14;
    }
  }

  __break(1u);
}

GRDBInternal::DatabaseRegion __swiftcall DatabaseRegion.init(table:)(Swift::String table)
{
  sub_1B211D964();
  v4 = v3;
  v5 = sub_1B2252220();
  v7 = v6;
  sub_1B21619D8(&qword_1EB7A2190, &unk_1B225B250);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B22546B0;
  *(inited + 32) = v5;
  *(inited + 40) = v7;
  *(inited + 48) = v2;
  *(inited + 56) = v1;
  sub_1B211B358();
  *(inited + 64) = 0;
  *(inited + 72) = 0;
  v9 = sub_1B2252190();
  *v4 = v9;
  result.tableRegions.value._rawValue = v9;
  result.tableRegions.is_nil = v10;
  return result;
}

uint64_t sub_1B21C9744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_1B2252220();
  v10 = v9;
  sub_1B21619D8(&qword_1EB7A2190, &unk_1B225B250);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B22546B0;
  *(inited + 32) = v8;
  *(inited + 40) = v10;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 64) = 0;
  *(inited + 72) = a3;
  sub_1B211B358();
  result = sub_1B2252190();
  *a4 = result;
  return result;
}

void sub_1B21C97F8(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *v2;
  if (!v4)
  {
    *a2 = v3;
LABEL_33:

    return;
  }

  if (!v3)
  {
    *a2 = v4;
    goto LABEL_33;
  }

  v52 = v3;
  sub_1B211B358();

  v44 = sub_1B2252190();
  v5 = 0;
  v6 = *(v4 + 64);
  v7 = *(v4 + 32);
  sub_1B211837C();
  if (v9 < 64)
  {
    v12 = ~(-1 << v9);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & v8;
  v14 = (v9 + 63) >> 6;
  v15 = v11 + 64;
  v48 = v14;
  v49 = v10;
  v50 = v4;
  while (1)
  {
    v16 = v5;
    if (!v13)
    {
      break;
    }

LABEL_8:
    while (2)
    {
      v5 = v16;
LABEL_12:
      v17 = 0;
      sub_1B2118090();
      v19 = *(v4 + 56);
      v20 = (*(v4 + 48) + 32 * (v18 | (v5 << 6)));
      v22 = *v20;
      v21 = v20[1];
      v45 = v20[2];
      v51 = v20[3];
      v24 = *(v23 + 32);
      sub_1B211837C();
      if (v26 < 64)
      {
        v28 = ~(-1 << v26);
      }

      else
      {
        v28 = -1;
      }

      v29 = v28 & v27[8];
      v46 = v25[1];
      v47 = *v25;
      v30 = (v26 + 63) >> 6;
      do
      {
        if (!v29)
        {
          while (1)
          {
            v31 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              break;
            }

            if (v31 >= v30)
            {
              v16 = v5;
              v4 = v50;
              goto LABEL_8;
            }

            v29 = *(v15 + 8 * v31);
            ++v17;
            if (v29)
            {
              v17 = v31;
              goto LABEL_21;
            }
          }

          __break(1u);
          goto LABEL_37;
        }

LABEL_21:
        v32 = __clz(__rbit64(v29)) | (v17 << 6);
        v33 = (v27[6] + 32 * v32);
        v34 = (v27[7] + 16 * v32);
        v36 = *v34;
        v35 = v34[1];
        if (*v33 == v22 && v33[1] == v21)
        {
          break;
        }

        v29 &= v29 - 1;
        v38 = sub_1B22531F0();
        v27 = v52;
      }

      while ((v38 & 1) == 0);

      v42 = sub_1B21C9B3C(v39, v35, v47, v46);
      v41 = v40;

      if (sub_1B214A608(v42, v41))
      {

        v16 = v5;
        v4 = v50;
        continue;
      }

      break;
    }

    swift_isUniquelyReferenced_nonNull_native();
    sub_1B214A630();

    v10 = v49;
    v4 = v50;
    v14 = v48;
  }

  while (1)
  {
    v5 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v5 >= v14)
    {

      *a2 = v44;
      return;
    }

    v13 = *(v10 + 8 * v5);
    ++v16;
    if (v13)
    {
      goto LABEL_12;
    }
  }

LABEL_37:
  __break(1u);
}

uint64_t sub_1B21C9B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  if (a3 && (v7 = a3, a1))
  {

    v7 = sub_1B21CACB8(v8, a3, sub_1B21CB0CC, sub_1B21CB0CC);
  }

  else
  {
  }

  if (a4 && a2)
  {

    sub_1B21CACB8(v9, a4, sub_1B21CAE7C, sub_1B21CAE7C);
  }

  else
  {
  }

  return v7;
}

uint64_t sub_1B21C9C40(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_1B22463C0())
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(*(v2 + 48) + ((v9 << 9) | (8 * v10)));
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return a2;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1B21C9D20(uint64_t *a1@<X8>)
{
  v3 = v2;
  v4 = *v1;
  if (v4)
  {
    sub_1B211B358();

    v31 = sub_1B2252190();
    v5 = 0;
    v7 = v4 + 64;
    v6 = *(v4 + 64);
    v8 = *(v4 + 32);
    sub_1B21115A0();
    v11 = v10 & v9;
    v13 = (v12 + 63) >> 6;
    v32 = v13;
    v33 = v4;
LABEL_3:
    v14 = v5;
    if (!v11)
    {
      goto LABEL_5;
    }

    do
    {
      v5 = v14;
LABEL_8:
      v15 = __clz(__rbit64(v11)) | (v5 << 6);
      v16 = *(v4 + 48) + 32 * v15;
      v17 = *(v16 + 16);
      v18 = *(v16 + 24);
      v19 = (*(v4 + 56) + 16 * v15);
      v20 = *v19;
      v21 = v19[1];

      v22 = v3;
      v23 = sub_1B21BD090();
      v25 = v24;

      if (v22)
      {

        return;
      }

      v11 &= v11 - 1;
      if (v25)
      {
        v26 = sub_1B2252220();
        v29 = v27;
        sub_1B21619D8(&qword_1EB7A2190, &unk_1B225B250);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1B22546B0;
        *(inited + 32) = v26;
        *(inited + 40) = v29;
        *(inited + 48) = v23;
        *(inited + 56) = v25;
        *(inited + 64) = v20;
        *(inited + 72) = v21;
        v34[0] = sub_1B2252190();
        v34[1] = v31;
        v35.tableRegions.value._rawValue = v34;
        DatabaseRegion.union(_:)(v35);

        v31 = v34[14];
        v3 = 0;
        v13 = v32;
        v4 = v33;
        goto LABEL_3;
      }

      v14 = v5;
      v3 = 0;
      v13 = v32;
      v4 = v33;
    }

    while (v11);
LABEL_5:
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v13)
      {

        *a1 = v31;
        return;
      }

      v11 = *(v7 + 8 * v5);
      ++v14;
      if (v11)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
    *a1 = 0;
  }
}

uint64_t DatabaseRegion.description.getter()
{
  v1 = *v0;
  if (!*v0)
  {
    return 0x746164206C6C7566;
  }

  if (!*(v1 + 16))
  {
    return 0x7974706D65;
  }

  v22 = sub_1B216E5AC(v1);
  sub_1B21CB4B4(&v22);
  v2 = v22;
  v3 = *(v22 + 16);
  if (!v3)
  {

    v5 = MEMORY[0x1E69E7CC0];
LABEL_13:
    v22 = v5;
    sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B215175C();
    v18 = sub_1B2252250();

    return v18;
  }

  v22 = MEMORY[0x1E69E7CC0];
  sub_1B2116B10();
  v4 = 0;
  v5 = v22;
  v6 = (v2 + 72);
  v20 = v3;
  v21 = v2;
  while (v4 < *(v2 + 16))
  {
    v7 = *(v6 - 5);
    v8 = *(v6 - 4);
    v9 = *(v6 - 3);
    v10 = *(v6 - 2);
    v11 = *(v6 - 1);
    v12 = *v6;

    v13 = sub_1B21CA544(v7, v8, v9, v10, v11, v12);
    v15 = v14;

    v22 = v5;
    v16 = *(v5 + 16);
    if (v16 >= *(v5 + 24) >> 1)
    {
      sub_1B2116B10();
      v5 = v22;
    }

    ++v4;
    *(v5 + 16) = v16 + 1;
    v17 = v5 + 16 * v16;
    *(v17 + 32) = v13;
    *(v17 + 40) = v15;
    v6 += 6;
    v2 = v21;
    if (v20 == v4)
    {

      goto LABEL_13;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t static DatabaseRegion.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!*a1)
  {
    return !v3;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = *a1;
  swift_bridgeObjectRetain_n();

  sub_1B2133390(v2);
  v6 = v5;

  sub_1B2133390(v7);
  if ((sub_1B21C90D0(v6, v8) & 1) == 0)
  {
LABEL_37:

    return 0;
  }

  v10 = v6 + 56;
  v9 = *(v6 + 56);
  v11 = *(v6 + 32);
  sub_1B21115A0();
  v14 = v13 & v12;
  v37 = (v15 + 63) >> 6;

  v17 = 0;
  v39 = v2;
  v40 = v6;
  v38 = v6 + 56;
  while (v14)
  {
LABEL_10:
    if (!*(v2 + 16))
    {
      goto LABEL_40;
    }

    v19 = (*(v6 + 48) + ((v17 << 11) | (32 * __clz(__rbit64(v14)))));
    v21 = *v19;
    v20 = v19[1];
    v22 = v19[2];
    v23 = v19[3];

    sub_1B211D680();
    result = sub_1B2133834();
    if ((v24 & 1) == 0)
    {
      goto LABEL_41;
    }

    if (!*(v3 + 16))
    {
      goto LABEL_42;
    }

    v25 = (*(v2 + 56) + 16 * result);
    v26 = *v25;
    v27 = v25[1];

    sub_1B211D680();
    v28 = sub_1B2133834();
    v30 = v29;

    if ((v30 & 1) == 0)
    {
      goto LABEL_43;
    }

    v31 = (*(v3 + 56) + 16 * v28);
    v32 = *v31;
    v33 = v31[1];
    if (v26)
    {
      v6 = v40;
      if (!v32)
      {

        goto LABEL_34;
      }

      v34 = v31[1];

      if ((sub_1B21C90D0(v26, v32) & 1) == 0)
      {

        goto LABEL_33;
      }
    }

    else
    {
      v6 = v40;
      if (v32)
      {

        goto LABEL_37;
      }

      v35 = v31[1];
    }

    v14 &= v14 - 1;
    if (v27)
    {
      if (!v33)
      {

LABEL_33:

LABEL_34:

        goto LABEL_37;
      }

      v36 = sub_1B21C9298(v27, v33);

      v10 = v38;
      v2 = v39;
      if ((v36 & 1) == 0)
      {

        goto LABEL_37;
      }
    }

    else
    {
      if (v33)
      {

        goto LABEL_37;
      }

      v10 = v38;
      v2 = v39;
    }
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= v37)
    {

      return 1;
    }

    v14 = *(v10 + 8 * v18);
    ++v17;
    if (v14)
    {
      v17 = v18;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_1B21CA544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a3;
  v38 = a4;
  if (a5)
  {

    sub_1B21C89A8(a5);
    v34 = v8;

    sub_1B222EB88(&v34);

    sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B215175C();
    v9 = sub_1B2252250();
    v11 = v10;

    v34 = 40;
    v35 = 0xE100000000000000;
    MEMORY[0x1B2741EB0](v9, v11);

    MEMORY[0x1B2741EB0](41, 0xE100000000000000);

    MEMORY[0x1B2741EB0](v34, v35);

    if (!a6)
    {
      return v37;
    }
  }

  else
  {

    MEMORY[0x1B2741EB0](2697768, 0xE300000000000000);
    if (!a6)
    {
      return v37;
    }
  }

  sub_1B219C550(a6, v12, v13, v14, v15, v16, v17, v18, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, vars0, vars8);
  v20 = v19;
  v21 = *(v19 + 16);
  if (v21)
  {
    v34 = MEMORY[0x1E69E7CC0];
    sub_1B2116B10();
    v22 = 32;
    v23 = v34;
    do
    {
      v36 = *(v20 + v22);
      v24 = sub_1B2252FD0();
      v26 = v25;
      v34 = v23;
      v27 = *(v23 + 16);
      if (v27 >= *(v23 + 24) >> 1)
      {
        sub_1B2116B10();
        v23 = v34;
      }

      *(v23 + 16) = v27 + 1;
      v28 = v23 + 16 * v27;
      *(v28 + 32) = v24;
      *(v28 + 40) = v26;
      v22 += 8;
      --v21;
    }

    while (v21);
  }

  else
  {

    v23 = MEMORY[0x1E69E7CC0];
  }

  v34 = v23;
  sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
  sub_1B215175C();
  v29 = sub_1B2252250();
  v31 = v30;

  v34 = 91;
  v35 = 0xE100000000000000;
  MEMORY[0x1B2741EB0](v29, v31);

  MEMORY[0x1B2741EB0](93, 0xE100000000000000);

  MEMORY[0x1B2741EB0](v34, v35);

  return v37;
}

uint64_t sub_1B21CA838(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    sub_1B211D964();
    v6 = *(v5 + 40);
    v7 = sub_1B2253410();
    v8 = ~(-1 << *(v2 + 32));
    do
    {
      v9 = v7 & v8;
      v10 = (1 << (v7 & v8)) & *(v2 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
      v4 = v10 != 0;
      if (!v10)
      {
        break;
      }

      v7 = v9 + 1;
    }

    while (*(*(v2 + 48) + 8 * v9) != v3);
  }

  return v4;
}

uint64_t sub_1B21CA8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (!a3)
    {
      return 0;
    }

    v7 = a1;

    LOBYTE(v7) = sub_1B21C90D0(v7, a3);

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a3)
  {
    return 0;
  }

  if (a2)
  {
    if (a4 && (sub_1B21C9298(a2, a4) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!a4)
  {
    return 1;
  }

  return 0;
}

uint64_t AnyDatabaseRegionConvertible.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t AnyDatabaseRegionConvertible.init(_:)@<X0>(__int128 *a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v4 = swift_allocObject();
  result = sub_1B21217FC(a1, v4 + 16);
  *a2 = sub_1B21CC150;
  a2[1] = v4;
  return result;
}

uint64_t sub_1B21CAA08(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  sub_1B21139A0(a2, v3);
  return (*(v4 + 8))(a1, v3, v4);
}

uint64_t AnyDatabaseRegionConvertible.databaseRegion(_:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return v1();
}

uint64_t sub_1B21CAAC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1B211B358();
  result = sub_1B2252190();
  v8 = result;
  v9 = *(a2 + 16);
  v10 = a2 + 32;
  if (v9)
  {
    while (1)
    {
      sub_1B211EE68(v10, v15);
      v11 = v16;
      v12 = v17;
      sub_1B21139A0(v15, v16);
      (*(v12 + 8))(&v18, a1, v11, v12);
      if (v3)
      {
        break;
      }

      v14[0] = v18;
      v14[1] = v8;
      v13.tableRegions.value._rawValue = v14;
      DatabaseRegion.union(_:)(v13);

      v8 = v14[2];
      result = sub_1B2113208(v15);
      v10 += 40;
      if (!--v9)
      {
        goto LABEL_4;
      }
    }

    return sub_1B2113208(v15);
  }

  else
  {
LABEL_4:
    *a3 = v8;
  }

  return result;
}

void *sub_1B21CAC20(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5(v9, a2, a3, a4);

    return v10;
  }

  return result;
}

uint64_t sub_1B21CACB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  sub_1B211D964();
  v20[1] = *MEMORY[0x1E69E9840];
  v7 = *(v6 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;

  if (v8 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    sub_1B2148CEC(0, v9, v20 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1B212DF10();
    v12 = a3();
    if (!v9)
    {
      v13 = v12;

LABEL_4:
      v14 = *MEMORY[0x1E69E9840];
      return v13;
    }

    swift_willThrow();

    __break(1u);
  }

  else
  {
    v10 = swift_slowAlloc();

    sub_1B212DF10();
    v13 = sub_1B21CAC20(v16, v17, v18, v19, a4);

    if (!v9)
    {

      MEMORY[0x1B2743C50](v10, -1, -1);
      goto LABEL_4;
    }
  }

  result = MEMORY[0x1B2743C50](v10, -1, -1);
  __break(1u);
  return result;
}

void sub_1B21CAE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16) >= *(a3 + 16))
  {
LABEL_16:
    v50 = 0;
    v28 = 0;
    v29 = *(a3 + 56);
    v30 = *(a3 + 32);
    sub_1B211837C();
    sub_1B21161AC();
    v33 = v32 & v31;
    v35 = (v34 + 63) >> 6;
LABEL_17:
    while (v33)
    {
      v36 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
LABEL_24:
      v40 = v36 | (v28 << 6);
      v41 = *(*(a3 + 48) + 8 * v40);
      v42 = *(a4 + 40);
      sub_1B2253410();
      v43 = *(a4 + 32);
      sub_1B2113B98();
      v46 = ~v45;
      while (1)
      {
        v47 = v44 & v46;
        if (((*(a4 + 56 + (((v44 & v46) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v44 & v46)) & 1) == 0)
        {
          break;
        }

        v44 = v47 + 1;
        if (*(*(a4 + 48) + 8 * v47) == v41)
        {
          *(a1 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
          v27 = __OFADD__(v50++, 1);
          if (!v27)
          {
            goto LABEL_17;
          }

          __break(1u);
          goto LABEL_30;
        }
      }
    }

    v37 = v28;
    while (1)
    {
      v28 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v28 >= v35)
      {
        goto LABEL_30;
      }

      ++v37;
      if (*(a3 + 56 + 8 * v28))
      {
        sub_1B211667C();
        v33 = v39 & v38;
        goto LABEL_24;
      }
    }
  }

  else
  {
    v50 = 0;
    v6 = 0;
    v7 = *(a4 + 56);
    v8 = 1 << *(a4 + 32);
    sub_1B21161AC();
    v11 = v10 & v9;
    v13 = (v12 + 63) >> 6;
LABEL_3:
    while (v11)
    {
      sub_1B2118090();
LABEL_10:
      v18 = *(*(a4 + 48) + 8 * (v14 | (v6 << 6)));
      v19 = *(a3 + 40);
      sub_1B2253410();
      v20 = *(a3 + 32);
      sub_1B2113B98();
      v23 = ~v22;
      while (1)
      {
        v24 = v21 & v23;
        v25 = (v21 & v23) >> 6;
        v26 = 1 << (v21 & v23);
        if ((v26 & *(a3 + 56 + 8 * v25)) == 0)
        {
          break;
        }

        v21 = v24 + 1;
        if (*(*(a3 + 48) + 8 * v24) == v18)
        {
          *(a1 + 8 * v25) |= v26;
          v27 = __OFADD__(v50++, 1);
          if (!v27)
          {
            goto LABEL_3;
          }

          __break(1u);
          goto LABEL_16;
        }
      }
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
LABEL_30:

        sub_1B21D77B4(a1, a2, v50, a3);
        return;
      }

      ++v15;
      if (*(a4 + 56 + 8 * v6))
      {
        sub_1B211667C();
        v11 = v17 & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1B21CB0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v57 = 0;
    v30 = 0;
    v31 = 1 << *(a3 + 32);
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    else
    {
      v32 = -1;
    }

    v33 = v32 & *(a3 + 56);
    v34 = (v31 + 63) >> 6;
    v35 = a4 + 56;
LABEL_28:
    while (v33)
    {
      v36 = __clz(__rbit64(v33));
      v55 = (v33 - 1) & v33;
LABEL_35:
      v53 = v36 | (v30 << 6);
      v39 = (*(v5 + 48) + 32 * v53);
      v40 = *v39;
      v41 = v39[1];
      v42 = v39[3];
      v43 = *(v4 + 40);
      sub_1B2253420();

      sub_1B2252370();
      v44 = sub_1B2253470();
      v45 = ~(-1 << *(v4 + 32));
      do
      {
        v46 = v44 & v45;
        if (((*(v35 + (((v44 & v45) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v44 & v45)) & 1) == 0)
        {

          v4 = a4;
          v33 = v55;
          goto LABEL_28;
        }

        v47 = (*(a4 + 48) + 32 * v46);
        if (*v47 == v40 && v47[1] == v41)
        {
          break;
        }

        v49 = sub_1B22531F0();
        v44 = v46 + 1;
      }

      while ((v49 & 1) == 0);

      *(a1 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
      v29 = __OFADD__(v57++, 1);
      v4 = a4;
      v33 = v55;
      if (v29)
      {
        goto LABEL_50;
      }
    }

    v37 = v30;
    while (1)
    {
      v30 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v30 >= v34)
      {
LABEL_46:

        sub_1B21D795C(a1, a2, v57, v5);
        return;
      }

      v38 = *(v5 + 56 + 8 * v30);
      ++v37;
      if (v38)
      {
        v36 = __clz(__rbit64(v38));
        v55 = (v38 - 1) & v38;
        goto LABEL_35;
      }
    }
  }

  else
  {
    v57 = 0;
    v6 = 0;
    v50 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v52 = v10;
LABEL_6:
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v54 = (v9 - 1) & v9;
LABEL_13:
      v15 = (*(v4 + 48) + 32 * (v12 | (v6 << 6)));
      v16 = *v15;
      v17 = v15[1];
      v18 = v15[3];
      v19 = *(v5 + 40);
      sub_1B2253420();

      sub_1B2252370();
      v20 = sub_1B2253470();
      v21 = v5;
      v22 = ~(-1 << *(v5 + 32));
      do
      {
        v23 = v20 & v22;
        v24 = (v20 & v22) >> 6;
        v25 = 1 << (v20 & v22);
        if ((v25 & *(v11 + 8 * v24)) == 0)
        {

          v5 = v21;
          v4 = a4;
          v10 = v52;
          v9 = v54;
          goto LABEL_6;
        }

        v26 = (*(v21 + 48) + 32 * v23);
        if (*v26 == v16 && v26[1] == v17)
        {
          break;
        }

        v28 = sub_1B22531F0();
        v20 = v23 + 1;
      }

      while ((v28 & 1) == 0);

      v9 = v54;
      *(a1 + 8 * v24) |= v25;
      v29 = __OFADD__(v57++, 1);
      v5 = v21;
      v4 = a4;
      v10 = v52;
      if (v29)
      {
        goto LABEL_49;
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_46;
      }

      v14 = *(v50 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v54 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}

uint64_t sub_1B21CB4B4(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B21A152C(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1B21CB520(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1B21CB520(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B2252FC0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1B21619D8(&qword_1EB7A1190, &qword_1B225C150);
        v6 = sub_1B2252610();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1B21CB704(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1B21CB624(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B21CB624(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 48 * a3 - 48;
    v8 = result - a3;
    while (2)
    {
      v9 = v6 + 48 * v4;
      result = *(v9 + 16);
      v10 = *(v9 + 24);
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 + 16) && v10 == *(v12 + 24))
        {
          break;
        }

        result = sub_1B22531F0();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *(v12 + 64);
        v10 = *(v12 + 72);
        v14 = *(v12 + 80);
        v15 = *v12;
        v16 = *(v12 + 32);
        *(v12 + 64) = *(v12 + 16);
        *(v12 + 80) = v16;
        v17 = *(v12 + 56);
        *v12 = *(v12 + 48);
        *(v12 + 8) = v17;
        *(v12 + 16) = result;
        *(v12 + 24) = v10;
        *(v12 + 32) = v14;
        *(v12 + 48) = v15;
        v12 -= 48;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 48;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1B21CB704(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v96 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    i = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = i++;
      if (i < v5)
      {
        v9 = *a3;
        v10 = *a3 + 48 * i;
        v11 = *(v10 + 16);
        v12 = *(v10 + 24);
        v13 = *a3 + 48 * v8;
        if (v11 == *(v13 + 16) && v12 == *(v13 + 24))
        {
          v15 = 0;
        }

        else
        {
          v15 = sub_1B22531F0();
        }

        v16 = (v9 + 48 * v8 + 120);
        for (i = v8 + 2; i < v5; ++i)
        {
          if (*(v16 - 1) == *(v16 - 7) && *v16 == *(v16 - 6))
          {
            if (v15)
            {
              goto LABEL_21;
            }
          }

          else if ((v15 ^ sub_1B22531F0()))
          {
            break;
          }

          v16 += 6;
        }

        if ((v15 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (i < v8)
        {
          goto LABEL_122;
        }

        if (v8 < i)
        {
          v18 = 48 * i - 24;
          v19 = 48 * v8 + 32;
          v20 = i;
          v21 = v8;
          do
          {
            if (v21 != --v20)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v23 = (v22 + v19);
              v24 = *(v22 + v19 - 32);
              v25 = v22 + v18;
              v26 = *(v23 - 2);
              v27 = *(v23 - 1);
              v28 = *v23;
              v29 = *(v25 + 8);
              v30 = *(v25 - 8);
              *(v23 - 2) = *(v25 - 24);
              *(v23 - 1) = v30;
              *v23 = v29;
              *(v25 - 24) = v24;
              *(v25 - 8) = v26;
              *v25 = v27;
              *(v25 + 8) = v28;
            }

            ++v21;
            v18 -= 48;
            v19 += 48;
          }

          while (v21 < v20);
        }
      }

LABEL_28:
      v31 = a3[1];
      if (i < v31)
      {
        if (__OFSUB__(i, v8))
        {
          goto LABEL_121;
        }

        if (i - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_123;
          }

          if (v8 + a4 >= v31)
          {
            v32 = a3[1];
          }

          else
          {
            v32 = v8 + a4;
          }

          if (v32 < v8)
          {
LABEL_124:
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
            return;
          }

          if (i != v32)
          {
            v33 = *a3;
            v34 = *a3 + 48 * i - 48;
            v35 = v8 - i;
            do
            {
              v36 = v33 + 48 * i;
              v37 = *(v36 + 16);
              v38 = *(v36 + 24);
              v39 = v35;
              v40 = v34;
              do
              {
                v41 = v37 == *(v40 + 16) && v38 == *(v40 + 24);
                if (v41 || (sub_1B22531F0() & 1) == 0)
                {
                  break;
                }

                if (!v33)
                {
                  goto LABEL_125;
                }

                v37 = *(v40 + 64);
                v38 = *(v40 + 72);
                v42 = *(v40 + 80);
                v43 = *v40;
                v44 = *(v40 + 32);
                *(v40 + 64) = *(v40 + 16);
                *(v40 + 80) = v44;
                v45 = *(v40 + 56);
                *v40 = *(v40 + 48);
                *(v40 + 8) = v45;
                *(v40 + 16) = v37;
                *(v40 + 24) = v38;
                *(v40 + 32) = v42;
                *(v40 + 48) = v43;
                v40 -= 48;
              }

              while (!__CFADD__(v39++, 1));
              ++i;
              v34 += 48;
              --v35;
            }

            while (i != v32);
            i = v32;
          }
        }
      }

      if (i < v8)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B2161EC4(0, v7[2] + 1, 1, v7);
        v7 = v90;
      }

      v48 = v7[2];
      v47 = v7[3];
      v49 = v48 + 1;
      if (v48 >= v47 >> 1)
      {
        sub_1B2161EC4(v47 > 1, v48 + 1, 1, v7);
        v7 = v91;
      }

      v7[2] = v49;
      v50 = v7 + 4;
      v51 = &v7[2 * v48 + 4];
      *v51 = v8;
      v51[1] = i;
      v94 = *a1;
      if (!*a1)
      {
        goto LABEL_128;
      }

      if (v48)
      {
        while (1)
        {
          v52 = v49 - 1;
          v53 = &v50[2 * v49 - 2];
          v54 = &v7[2 * v49];
          if (v49 >= 4)
          {
            break;
          }

          if (v49 == 3)
          {
            v55 = v7[4];
            v56 = v7[5];
            v65 = __OFSUB__(v56, v55);
            v57 = v56 - v55;
            v58 = v65;
LABEL_69:
            if (v58)
            {
              goto LABEL_110;
            }

            v70 = *v54;
            v69 = v54[1];
            v71 = __OFSUB__(v69, v70);
            v72 = v69 - v70;
            v73 = v71;
            if (v71)
            {
              goto LABEL_113;
            }

            v74 = v53[1];
            v75 = v74 - *v53;
            if (__OFSUB__(v74, *v53))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v72, v75))
            {
              goto LABEL_118;
            }

            if (v72 + v75 >= v57)
            {
              if (v57 < v75)
              {
                v52 = v49 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v49 < 2)
          {
            goto LABEL_112;
          }

          v77 = *v54;
          v76 = v54[1];
          v65 = __OFSUB__(v76, v77);
          v72 = v76 - v77;
          v73 = v65;
LABEL_84:
          if (v73)
          {
            goto LABEL_115;
          }

          v79 = *v53;
          v78 = v53[1];
          v65 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v65)
          {
            goto LABEL_117;
          }

          if (v80 < v72)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v52 - 1 >= v49)
          {
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v84 = v7;
          v85 = &v50[2 * v52 - 2];
          v86 = *v85;
          v87 = &v50[2 * v52];
          v88 = v87[1];
          sub_1B21CBD7C((*a3 + 48 * *v85), (*a3 + 48 * *v87), (*a3 + 48 * v88), v94);
          if (v4)
          {
            goto LABEL_103;
          }

          if (v88 < v86)
          {
            goto LABEL_105;
          }

          v89 = v84[2];
          if (v52 > v89)
          {
            goto LABEL_106;
          }

          *v85 = v86;
          v85[1] = v88;
          if (v52 >= v89)
          {
            goto LABEL_107;
          }

          v49 = v89 - 1;
          memmove(&v50[2 * v52], v87 + 2, 16 * (v89 - 1 - v52));
          v7 = v84;
          v84[2] = v89 - 1;
          if (v89 <= 2)
          {
            goto LABEL_98;
          }
        }

        v59 = &v50[2 * v49];
        v60 = *(v59 - 8);
        v61 = *(v59 - 7);
        v65 = __OFSUB__(v61, v60);
        v62 = v61 - v60;
        if (v65)
        {
          goto LABEL_108;
        }

        v64 = *(v59 - 6);
        v63 = *(v59 - 5);
        v65 = __OFSUB__(v63, v64);
        v57 = v63 - v64;
        v58 = v65;
        if (v65)
        {
          goto LABEL_109;
        }

        v66 = v54[1];
        v67 = v66 - *v54;
        if (__OFSUB__(v66, *v54))
        {
          goto LABEL_111;
        }

        v65 = __OFADD__(v57, v67);
        v68 = v57 + v67;
        if (v65)
        {
          goto LABEL_114;
        }

        if (v68 >= v62)
        {
          v82 = *v53;
          v81 = v53[1];
          v65 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v65)
          {
            goto LABEL_119;
          }

          if (v57 < v83)
          {
            v52 = v49 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v5 = a3[1];
      if (i >= v5)
      {
        v96 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_129;
  }

  sub_1B21CBC44(&v96, *a1, a3);
LABEL_103:
}

uint64_t sub_1B21CBC44(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1B21A00CC(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1B21CBD7C((*a3 + 48 * *v4), (*a3 + 48 * *v9), (*a3 + 48 * v10), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1B21CBD7C(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 48;
  v9 = (a3 - a2) / 48;
  if (v8 < v9)
  {
    sub_1B2245534(a1, (a2 - a1) / 48, a4);
    v10 = &v4[48 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *(v6 + 2) == *(v4 + 2) && *(v6 + 3) == *(v4 + 3);
      if (v12 || (sub_1B22531F0() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 48;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 48;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 48;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    v14 = *v13;
    v15 = *(v13 + 2);
    *(v7 + 1) = *(v13 + 1);
    *(v7 + 2) = v15;
    *v7 = v14;
    goto LABEL_17;
  }

  sub_1B2245534(a2, (a3 - a2) / 48, a4);
  v10 = &v4[48 * v9];
LABEL_19:
  for (v5 -= 48; v10 > v4 && v6 > v7; v5 -= 48)
  {
    v17 = *(v10 - 4) == *(v6 - 4) && *(v10 - 3) == *(v6 - 3);
    if (!v17 && (sub_1B22531F0() & 1) != 0)
    {
      v20 = v6 - 48;
      v12 = v5 + 48 == v6;
      v6 -= 48;
      if (!v12)
      {
        v21 = *v20;
        v22 = *(v20 + 2);
        *(v5 + 1) = *(v20 + 1);
        *(v5 + 2) = v22;
        *v5 = v21;
        v6 = v20;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 48)
    {
      v18 = *(v10 - 3);
      v19 = *(v10 - 1);
      *(v5 + 1) = *(v10 - 2);
      *(v5 + 2) = v19;
      *v5 = v18;
    }

    v10 -= 48;
  }

LABEL_36:
  v23 = (v10 - v4) / 48;
  if (v6 != v4 || v6 >= &v4[48 * v23])
  {
    memmove(v6, v4, 48 * v23);
  }

  return 1;
}

void sub_1B21CBF44(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1B2112AB0(a1, a2, a3, a4, a5);
  *(v8 + 8 * v5) = v7;
  v9 = (*(v6 + 56) + 16 * v5);
  *v9 = v10;
  v9[1] = v11;
  v12 = *(v6 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    sub_1B2111AD4(v6, v14);
  }
}

uint64_t sub_1B21CBF7C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_1B21157C0(a1, a8 + 8 * (a1 >> 6));
  v10 = (v9[6] + 32 * result);
  *v10 = v11;
  v10[1] = v12;
  v10[2] = v13;
  v10[3] = v14;
  v15 = (v9[7] + 16 * result);
  *v15 = v16;
  v15[1] = v17;
  v18 = v9[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    v9[2] = v20;
  }

  return result;
}

void *sub_1B21CBFCC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1B2117584(a1, a2, a3, a4, a5);
  result = memcpy((v7 + 176 * v6), v8, 0xABuLL);
  v10 = *(a5 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v12;
  }

  return result;
}

void sub_1B21CC018(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1B2112AB0(a1, a2, a3, a4, a5);
  v8 = v7 + 40 * v5;
  v10 = *(v9 + 16);
  *v8 = *v9;
  *(v8 + 16) = v10;
  *(v8 + 32) = *(v9 + 32);
  v11 = (*(v6 + 56) + 16 * v5);
  *v11 = v12;
  v11[1] = v13;
  v14 = *(v6 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    sub_1B2111AD4(v6, v16);
  }
}

void *sub_1B21CC064(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1B2117584(a1, a2, a3, a4, a5);
  result = memcpy((v7 + 216 * v6), v8, 0xD2uLL);
  v10 = *(a5 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v12;
  }

  return result;
}

uint64_t sub_1B21CC0B0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_1B21157C0(a1, a7 + 8 * (a1 >> 6));
  v9 = (v8[6] + 16 * result);
  *v9 = v10;
  v9[1] = v11;
  v12 = (v8[7] + 24 * result);
  *v12 = v13;
  v12[1] = v14;
  v12[2] = v15;
  v16 = v8[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    v8[2] = v18;
  }

  return result;
}

uint64_t sub_1B21CC104(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_1B21157C0(a1, a6 + 8 * (a1 >> 6));
  v8 = (v7[6] + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  v11 = (v7[7] + 16 * result);
  *v11 = v12;
  v11[1] = v13;
  v14 = v7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v16;
  }

  return result;
}

uint64_t sub_1B21CC16C(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B21CC1C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1B21CC258(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B21CC2AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1B21CC30C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t UUID.databaseValue.getter@<X0>(uint64_t a1@<X8>)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v6[0] = sub_1B2251ED0();
  v6[1] = v2;
  result = MEMORY[0x1B27418E0](v6, 16);
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = 3;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t NSUUID.databaseValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B2252610();
  v3[2] = 16;
  v3[5] = 0;
  v3[4] = 0;
  v4 = v3 + 4;
  [v1 getUUIDBytes_];
  v5 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:v4 length:16];
  v6 = sub_1B2251DE0();
  v8 = v7;

  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = 3;
}

id static NSUUID.fromDatabaseValue(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  if (v3 == 3)
  {
    result = 0;
    switch(v2 >> 62)
    {
      case 1uLL:
        LODWORD(v6) = HIDWORD(v1) - v1;
        if (!__OFSUB__(HIDWORD(v1), v1))
        {
          v6 = v6;
          goto LABEL_11;
        }

        __break(1u);
        goto LABEL_16;
      case 2uLL:
        v8 = *(v1 + 16);
        v7 = *(v1 + 24);
        v9 = __OFSUB__(v7, v8);
        v6 = v7 - v8;
        if (!v9)
        {
          goto LABEL_11;
        }

LABEL_16:
        __break(1u);
        return result;
      case 3uLL:
        return result;
      default:
        v6 = BYTE6(v2);
LABEL_11:
        if (v6 != 16)
        {
          return 0;
        }

        MEMORY[0x1EEE9AC00](0);
        sub_1B2251DC0();
        result = v10;
        break;
    }
  }

  else if (v3 == 2)
  {
    v4 = a1[1];

    return sub_1B21CC618();
  }

  else
  {
    return 0;
  }

  return result;
}

id sub_1B21CC5C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithUUIDBytes_];
  *a2 = result;
  return result;
}

id sub_1B21CC618()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1B2252290();

  v2 = [v0 initWithUUIDString_];

  return v2;
}

id sub_1B21CC6B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = static NSUUID.fromDatabaseValue(_:)(a1);
  *a2 = result;
  return result;
}

uint64_t static UUID.fromDatabaseValue(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v6 == 3)
  {
    v9 = v5 >> 62;
    switch(v5 >> 62)
    {
      case 1uLL:
        LODWORD(v10) = HIDWORD(v4) - v4;
        if (__OFSUB__(HIDWORD(v4), v4))
        {
          __break(1u);
LABEL_24:
          __break(1u);
        }

        else
        {
          v10 = v10;
LABEL_11:
          if (v10 != 16)
          {
            goto LABEL_16;
          }

          if (v9 == 2)
          {
            v18 = *(v4 + 24);
            v4 = *(v4 + 16);
            v15 = v18;
            goto LABEL_20;
          }

          if (v9 != 1)
          {
            v21 = v4;
            v22 = v5;
            v23 = BYTE2(v5);
            v24 = BYTE3(v5);
            v25 = BYTE4(v5);
            v26 = BYTE5(v5);
            sub_1B21CC954(&v21, &v21 + BYTE6(v5));
            goto LABEL_22;
          }

          v14 = v4 >> 32;
          if (v4 >> 32 >= v4)
          {
            v4 = v4;
            v15 = v14;
LABEL_20:
            sub_1B21CCF64(v4, v15);
LABEL_22:
            v19 = sub_1B2251EE0();
            result = sub_1B21117B4(a2, 0, 1, v19);
            v20 = *MEMORY[0x1E69E9840];
            return result;
          }
        }

        __break(1u);
        return result;
      case 2uLL:
        v12 = *(v4 + 16);
        v11 = *(v4 + 24);
        v13 = __OFSUB__(v11, v12);
        v10 = v11 - v12;
        if (!v13)
        {
          goto LABEL_11;
        }

        goto LABEL_24;
      case 3uLL:
        goto LABEL_16;
      default:
        v10 = BYTE6(v5);
        goto LABEL_11;
    }
  }

  if (v6 == 2)
  {
    v7 = *MEMORY[0x1E69E9840];

    return sub_1B2251EA0();
  }

LABEL_16:
  v16 = sub_1B2251EE0();
  v17 = *MEMORY[0x1E69E9840];

  return sub_1B21117B4(a2, 1, 1, v16);
}

unsigned __int8 *sub_1B21CC954(unsigned __int8 *result, uint64_t a2)
{
  if (result && (a2 - result + 15) >= 0x1F)
  {
    v2 = *(result + 1);
    v3 = result[7];
    v4 = result[6];
    v5 = result[5];
    v6 = result[4];
    v7 = result[3];
    v8 = result[2];
    v9 = result[1];
    v10 = *result;
    return sub_1B2251EC0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

const unsigned __int8 *UUID.init(sqliteStatement:index:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B21619D8(&qword_1EB7A1568, &qword_1B2258E20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v36 - v4;
  v6 = sub_1B2251EE0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v36 - v12;
  v14 = sub_1B2115B7C();
  v16 = sqlite3_column_type(v14, v15);
  if (v16 == 4)
  {
    v20 = sub_1B2115B7C();
    if (sqlite3_column_bytes(v20, v21) != 16)
    {
      goto LABEL_9;
    }

    v22 = sub_1B2115B7C();
    v24 = sqlite3_column_blob(v22, v23);
    if (!v24)
    {
      goto LABEL_9;
    }

    v25 = *(v24 + 1);
    v26 = v24[7];
    v27 = v24[6];
    v28 = v24[5];
    v29 = v24[4];
    v30 = v24[3];
    v31 = v24[2];
    v32 = v24[1];
    v33 = *v24;
    sub_1B2251EC0();
    (*(v7 + 32))(a1, v13, v6);
    goto LABEL_11;
  }

  if (v16 != 3)
  {
LABEL_9:
    v34 = 1;
    return sub_1B21117B4(a1, v34, 1, v6);
  }

  v17 = sub_1B2115B7C();
  result = sqlite3_column_text(v17, v18);
  if (result)
  {
    sub_1B2252400();
    sub_1B2251EA0();

    if (sub_1B2122A98(v5, 1, v6) == 1)
    {
      sub_1B21CCFF8(v5);
      goto LABEL_9;
    }

    v35 = *(v7 + 32);
    v35(v11, v5, v6);
    sub_1B2251ED0();
    sub_1B2251EC0();
    (*(v7 + 8))(v11, v6);
    v35(a1, v13, v6);
LABEL_11:
    v34 = 0;
    return sub_1B21117B4(a1, v34, 1, v6);
  }

  __break(1u);
  return result;
}

const unsigned __int8 *sub_1B21CCC94@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1B21619D8(&qword_1EB7A1568, &qword_1B2258E20);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v34 - v11;
  v13 = *(a3 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v10);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v34 - v18;
  v20 = sqlite3_column_type(a1, a2);
  if (v20 == 4)
  {
    if (sqlite3_column_bytes(a1, a2) != 16)
    {
      goto LABEL_9;
    }

    v22 = sqlite3_column_blob(a1, a2);
    if (!v22)
    {
      goto LABEL_9;
    }

    v23 = *(v22 + 1);
    v24 = v22[7];
    v25 = v22[6];
    v26 = v22[5];
    v27 = v22[4];
    v28 = v22[3];
    v29 = v22[2];
    v30 = v22[1];
    v31 = *v22;
    sub_1B2251EC0();
    (*(v13 + 32))(a4, v19, a3);
    goto LABEL_11;
  }

  if (v20 != 3)
  {
LABEL_9:
    v32 = 1;
    return sub_1B21117B4(a4, v32, 1, a3);
  }

  result = sqlite3_column_text(a1, a2);
  if (result)
  {
    sub_1B2252400();
    sub_1B2251EA0();

    if (sub_1B2122A98(v12, 1, a3) == 1)
    {
      sub_1B21CCFF8(v12);
      goto LABEL_9;
    }

    v33 = *(v13 + 32);
    v33(v17, v12, a3);
    sub_1B2251ED0();
    sub_1B2251EC0();
    (*(v13 + 8))(v17, a3);
    v33(a4, v19, a3);
LABEL_11:
    v32 = 0;
    return sub_1B21117B4(a4, v32, 1, a3);
  }

  __break(1u);
  return result;
}

unsigned __int8 *sub_1B21CCF64(uint64_t a1, uint64_t a2)
{
  result = sub_1B2251BC0();
  v5 = result;
  if (result)
  {
    result = sub_1B2251BE0();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v5 += a1 - result;
  }

  v6 = __OFSUB__(a2, a1);
  v7 = a2 - a1;
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = sub_1B2251BD0();
  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = &v5[v9];
  if (v5)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return sub_1B21CC954(v5, v11);
}

uint64_t sub_1B21CCFF8(uint64_t a1)
{
  v2 = sub_1B21619D8(&qword_1EB7A1568, &qword_1B2258E20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B21CD07C()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  if (*(v0 + 16))
  {
    if (v2 != 1)
    {
      v5 = *(v0 + 24);
      v6 = *(v0 + 8);
      v9[3] = &type metadata for DatabaseValueDecodingContainer;
      v9[4] = sub_1B21CE3F4();
      v7 = swift_allocObject();
      v9[0] = v7;
      *(v7 + 16) = v1;
      *(v7 + 24) = v6;
      *(v7 + 32) = v2;
      *(v7 + 40) = v5;
      sub_1B2252D40();
      swift_allocError();
      sub_1B2113A20(v1, v6, v2);

      sub_1B2252D20();
      sub_1B2113208(v9);
      swift_willThrow();
      return v4 & 1;
    }

    v3 = (v1 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  }

  else
  {
    v3 = v1 == 0;
  }

  v4 = !v3;
  return v4 & 1;
}

uint64_t sub_1B21CD19C()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  result = *v0;
  if (!*(v0 + 16))
  {
LABEL_13:
    if (result == result)
    {
      return result;
    }

    goto LABEL_14;
  }

  v6 = *v0;
  if (v3 == 1 && v2 >= -9.22337204e18 && v2 < 9.22337204e18)
  {
    if ((~*&v2 & 0x7FF0000000000000) != 0)
    {
      if (v2 > -9.22337204e18)
      {
        result = v2;
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

LABEL_14:
  v10[3] = &type metadata for DatabaseValueDecodingContainer;
  v10[4] = sub_1B21CE3F4();
  v9 = swift_allocObject();
  v10[0] = v9;
  *(v9 + 16) = v2;
  *(v9 + 24) = v1;
  *(v9 + 32) = v3;
  *(v9 + 40) = v4;
  sub_1B2252D40();
  swift_allocError();
  sub_1B2113A20(*&v2, v1, v3);

  sub_1B2252D20();
  sub_1B2113208(v10);
  return swift_willThrow();
}

uint64_t sub_1B21CD2F0()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  result = *v0;
  if (!*(v0 + 16))
  {
LABEL_13:
    if (result == result)
    {
      return result;
    }

    goto LABEL_14;
  }

  v6 = *v0;
  if (v3 == 1 && v2 >= -9.22337204e18 && v2 < 9.22337204e18)
  {
    if ((~*&v2 & 0x7FF0000000000000) != 0)
    {
      if (v2 > -9.22337204e18)
      {
        result = v2;
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

LABEL_14:
  v10[3] = &type metadata for DatabaseValueDecodingContainer;
  v10[4] = sub_1B21CE3F4();
  v9 = swift_allocObject();
  v10[0] = v9;
  *(v9 + 16) = v2;
  *(v9 + 24) = v1;
  *(v9 + 32) = v3;
  *(v9 + 40) = v4;
  sub_1B2252D40();
  swift_allocError();
  sub_1B2113A20(*&v2, v1, v3);

  sub_1B2252D20();
  sub_1B2113208(v10);
  return swift_willThrow();
}

uint64_t sub_1B21CD444()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  result = *v0;
  if (!*(v0 + 16))
  {
LABEL_13:
    if (result == result)
    {
      return result;
    }

    goto LABEL_14;
  }

  v6 = *v0;
  if (v3 == 1 && v2 >= -9.22337204e18 && v2 < 9.22337204e18)
  {
    if ((~*&v2 & 0x7FF0000000000000) != 0)
    {
      if (v2 > -9.22337204e18)
      {
        result = v2;
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

LABEL_14:
  v10[3] = &type metadata for DatabaseValueDecodingContainer;
  v10[4] = sub_1B21CE3F4();
  v9 = swift_allocObject();
  v10[0] = v9;
  *(v9 + 16) = v2;
  *(v9 + 24) = v1;
  *(v9 + 32) = v3;
  *(v9 + 40) = v4;
  sub_1B2252D40();
  swift_allocError();
  sub_1B2113A20(*&v2, v1, v3);

  sub_1B2252D20();
  sub_1B2113208(v10);
  return swift_willThrow();
}

unint64_t sub_1B21CD598()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  result = *v0;
  if (!*(v0 + 16))
  {
LABEL_13:
    if (result <= 0xFF)
    {
      return result;
    }

    goto LABEL_14;
  }

  v6 = *v0;
  if (v3 == 1 && v2 >= -9.22337204e18 && v2 < 9.22337204e18)
  {
    if ((~*&v2 & 0x7FF0000000000000) != 0)
    {
      if (v2 > -9.22337204e18)
      {
        result = v2;
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

LABEL_14:
  v10[3] = &type metadata for DatabaseValueDecodingContainer;
  v10[4] = sub_1B21CE3F4();
  v9 = swift_allocObject();
  v10[0] = v9;
  *(v9 + 16) = v2;
  *(v9 + 24) = v1;
  *(v9 + 32) = v3;
  *(v9 + 40) = v4;
  sub_1B2252D40();
  swift_allocError();
  sub_1B2113A20(*&v2, v1, v3);

  sub_1B2252D20();
  sub_1B2113208(v10);
  return swift_willThrow();
}

unint64_t sub_1B21CD6EC()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  result = *v0;
  if (!*(v0 + 16))
  {
LABEL_13:
    if (!(result >> 16))
    {
      return result;
    }

    goto LABEL_14;
  }

  v6 = *v0;
  if (v3 == 1 && v2 >= -9.22337204e18 && v2 < 9.22337204e18)
  {
    if ((~*&v2 & 0x7FF0000000000000) != 0)
    {
      if (v2 > -9.22337204e18)
      {
        result = v2;
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

LABEL_14:
  v10[3] = &type metadata for DatabaseValueDecodingContainer;
  v10[4] = sub_1B21CE3F4();
  v9 = swift_allocObject();
  v10[0] = v9;
  *(v9 + 16) = v2;
  *(v9 + 24) = v1;
  *(v9 + 32) = v3;
  *(v9 + 40) = v4;
  sub_1B2252D40();
  swift_allocError();
  sub_1B2113A20(*&v2, v1, v3);

  sub_1B2252D20();
  sub_1B2113208(v10);
  return swift_willThrow();
}

unint64_t sub_1B21CD840()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  result = *v0;
  if (!*(v0 + 16))
  {
LABEL_13:
    if (!HIDWORD(result))
    {
      return result;
    }

    goto LABEL_14;
  }

  v6 = *v0;
  if (v3 == 1 && v2 >= -9.22337204e18 && v2 < 9.22337204e18)
  {
    if ((~*&v2 & 0x7FF0000000000000) != 0)
    {
      if (v2 > -9.22337204e18)
      {
        result = v2;
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

LABEL_14:
  v10[3] = &type metadata for DatabaseValueDecodingContainer;
  v10[4] = sub_1B21CE3F4();
  v9 = swift_allocObject();
  v10[0] = v9;
  *(v9 + 16) = v2;
  *(v9 + 24) = v1;
  *(v9 + 32) = v3;
  *(v9 + 40) = v4;
  sub_1B2252D40();
  swift_allocError();
  sub_1B2113A20(*&v2, v1, v3);

  sub_1B2252D20();
  sub_1B2113208(v10);
  return swift_willThrow();
}

uint64_t sub_1B21CD994()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  result = *v0;
  if (!*(v0 + 16))
  {
LABEL_13:
    if ((result & 0x8000000000000000) == 0)
    {
      return result;
    }

    goto LABEL_14;
  }

  v6 = *v0;
  if (v3 == 1 && v2 >= -9.22337204e18 && v2 < 9.22337204e18)
  {
    if ((~*&v2 & 0x7FF0000000000000) != 0)
    {
      if (v2 > -9.22337204e18)
      {
        result = v2;
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

LABEL_14:
  v19[3] = &type metadata for DatabaseValueDecodingContainer;
  v19[4] = sub_1B21CE3F4();
  sub_1B2113B74();
  v9 = swift_allocObject();
  LOBYTE(v19[0]) = v9;
  *(v9 + 16) = v2;
  *(v9 + 24) = v1;
  *(v9 + 32) = v3;
  *(v9 + 40) = v4;
  sub_1B2252D40();
  swift_allocError();
  sub_1B2113A20(*&v2, v1, v3);

  sub_1B2115188(v10, v11, v12, v13, v14, v15, v16, v17, v18, v19[0]);
  sub_1B2252D20();
  sub_1B2113208(v19);
  return swift_willThrow();
}

void sub_1B21CDAC0()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  if (*(v0 + 16))
  {
    if (v2 != 1)
    {
      v3 = *(v0 + 24);
      v4 = *(v0 + 8);
      v6[3] = &type metadata for DatabaseValueDecodingContainer;
      v6[4] = sub_1B21CE3F4();
      v5 = swift_allocObject();
      v6[0] = v5;
      *(v5 + 16) = v1;
      *(v5 + 24) = v4;
      *(v5 + 32) = v2;
      *(v5 + 40) = v3;
      sub_1B2252D40();
      swift_allocError();
      sub_1B2113A20(v1, v4, v2);

      sub_1B2252D20();
      sub_1B2113208(v6);
      swift_willThrow();
    }
  }
}

void sub_1B21CDBDC()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  if (*(v0 + 16))
  {
    if (v2 == 1)
    {
      v3 = *v0;
    }

    else
    {
      v4 = *(v0 + 24);
      v5 = *(v0 + 8);
      v7[3] = &type metadata for DatabaseValueDecodingContainer;
      v7[4] = sub_1B21CE3F4();
      v6 = swift_allocObject();
      v7[0] = v6;
      *(v6 + 16) = v1;
      *(v6 + 24) = v5;
      *(v6 + 32) = v2;
      *(v6 + 40) = v4;
      sub_1B2252D40();
      swift_allocError();
      sub_1B2113A20(v1, v5, v2);

      sub_1B2252D20();
      sub_1B2113208(v7);
      swift_willThrow();
    }
  }
}

uint64_t sub_1B21CDCF4()
{
  v1 = sub_1B22522F0();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = *v0;
  v3 = *(v0 + 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  if (v5 == 3)
  {
    sub_1B2113A20(*v0, *(v0 + 8), 3);
    sub_1B22522E0();
    v7 = sub_1B22522C0();
    v9 = v8;
    sub_1B2113A44(v4, v3, 3);
    if (v9)
    {
      return v7;
    }

LABEL_6:
    v12[3] = &type metadata for DatabaseValueDecodingContainer;
    v12[4] = sub_1B21CE3F4();
    v10 = swift_allocObject();
    v12[0] = v10;
    *(v10 + 16) = v4;
    *(v10 + 24) = v3;
    *(v10 + 32) = v5;
    *(v10 + 40) = v6;
    sub_1B2252D40();
    swift_allocError();
    sub_1B2113A20(v4, v3, v5);

    sub_1B2252D20();
    sub_1B2113208(v12);
    swift_willThrow();
    return v4;
  }

  if (v5 != 2)
  {
    goto LABEL_6;
  }

  sub_1B2113A20(*v0, *(v0 + 8), 2);
  return v4;
}

uint64_t sub_1B21CDEB4@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v36 = a2;
  v7 = *v3;
  v6 = *(v3 + 8);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = sub_1B212FED0(a1);
  if (v10)
  {
    v12 = v10;
    v13 = v11;
    v23[1] = a3;
    v24 = v9;
    v27 = v7;
    v28 = v6;
    v29 = v8;
    v14 = *(v11 + 32);
    v25 = v4;
    v26 = v14;
    v36 = v23;
    v23[0] = sub_1B2252B00();
    v15 = *(v23[0] - 8);
    v16 = *(v15 + 64);
    MEMORY[0x1EEE9AC00](v23[0]);
    v18 = v23 - v17;
    sub_1B2113A20(v7, v6, v8);
    v26(&v27, v12, v13);
    sub_1B2113A44(v27, v28, v29);
    if (sub_1B2122A98(v18, 1, v12) == 1)
    {
      (*(v15 + 8))(v18, v23[0]);
      v34 = &type metadata for DatabaseValueDecodingContainer;
      v35 = sub_1B21CE3F4();
      v19 = swift_allocObject();
      *&v33 = v19;
      *(v19 + 16) = v7;
      *(v19 + 24) = v6;
      *(v19 + 32) = v8;
      *(v19 + 40) = v24;
      sub_1B2252D40();
      swift_allocError();
      sub_1B2113A20(v7, v6, v8);

      sub_1B2252D20();
      sub_1B2113208(&v33);
      return swift_willThrow();
    }

    else
    {
      v31 = v12;
      v32 = v13;
      v22 = sub_1B212FF14(&v30);
      (*(*(v12 - 8) + 32))(v22, v18, v12);
      sub_1B21217FC(&v30, &v33);
      sub_1B21217FC(&v33, &v30);
      sub_1B21619D8(&qword_1EB7A1290, &qword_1B226A750);
      return swift_dynamicCast();
    }
  }

  else
  {
    v34 = &type metadata for DatabaseValueDecoder;
    v35 = sub_1B21552B8();
    v21 = swift_allocObject();
    *&v33 = v21;
    *(v21 + 16) = v7;
    *(v21 + 24) = v6;
    *(v21 + 32) = v8;
    *(v21 + 40) = v9;
    sub_1B2113A20(v7, v6, v8);

    return sub_1B22527E0();
  }
}

uint64_t sub_1B21CE338@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 24);
  a1[3] = &type metadata for DatabaseValueDecodingContainer;
  v6 = *(v1 + 16);
  a1[4] = sub_1B21CE3F4();
  v7 = swift_allocObject();
  *a1 = v7;
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  sub_1B2113A20(v3, v4, v6);
}

unint64_t sub_1B21CE3F4()
{
  result = qword_1EB7A2258;
  if (!qword_1EB7A2258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A2258);
  }

  return result;
}

uint64_t sub_1B21CE448(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1B21CE488(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B21CE520@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0xA2uLL);
  sub_1B21D0350(__dst);
  memcpy(__src, __dst, 0xA3uLL);
  sub_1B214D464(__src);
  memcpy(a1, __src, 0xB8uLL);
  return sub_1B214CFE0(v1, &v4);
}

uint64_t sub_1B21CE594@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v9[0] = a1;
  v9[1] = a2;
  LOBYTE(v9[2]) = a3;
  sub_1B2127D7C(v9);
  memcpy(__dst, v9, 0xA3uLL);
  sub_1B214D464(__dst);
  memcpy(a4, __dst, 0xB8uLL);
  return sub_1B2113A20(a1, a2, a3);
}

uint64_t sub_1B21CE620@<X0>(void *a1@<X8>)
{
  sub_1B2111ADC();
  memcpy(v3, v4, v5);
  sub_1B214D464(__src);
  memcpy(a1, __src, 0xB8uLL);
  return sub_1B2127DC0(v1, v7);
}

void *sub_1B21CE678@<X0>(void *a1@<X8>)
{
  __src[0] = sub_1B21B6C84();
  __src[1] = v2;
  LOBYTE(__src[2]) = 2;
  sub_1B2127D7C(__src);
  memcpy(__dst, __src, 0xA3uLL);
  sub_1B214D464(__dst);
  return memcpy(a1, __dst, 0xB8uLL);
}

uint64_t sub_1B21CE700@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0xA2uLL);
  sub_1B21D0350(__dst);
  memcpy(__src, __dst, 0xA3uLL);
  sub_1B214D7CC(__src);
  memcpy(a1, __src, 0xA3uLL);
  return sub_1B214CFE0(v1, &v4);
}

uint64_t sub_1B21CE774@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v9[0] = a1;
  v9[1] = a2;
  LOBYTE(v9[2]) = a3;
  sub_1B2127D7C(v9);
  memcpy(__dst, v9, 0xA3uLL);
  sub_1B214D7CC(__dst);
  memcpy(a4, __dst, 0xA3uLL);
  return sub_1B2113A20(a1, a2, a3);
}

uint64_t sub_1B21CE800@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0xA3uLL);
  sub_1B214D7CC(__dst);
  memcpy(a1, __dst, 0xA3uLL);
  return sub_1B2127DC0(v1, v4);
}

void *sub_1B21CE85C@<X0>(void *a1@<X8>)
{
  __src[0] = sub_1B21B6C84();
  __src[1] = v2;
  LOBYTE(__src[2]) = 2;
  sub_1B2127D7C(__src);
  memcpy(__dst, __src, 0xA3uLL);
  sub_1B214D7CC(__dst);
  return memcpy(a1, __dst, 0xA3uLL);
}

uint64_t sub_1B21CE8F0()
{
  memcpy(__dst, v0, 0xA3uLL);
  v1 = 1;
  v2 = 200;
  v3 = 32;
  v4 = 16;
  switch(sub_1B2127E1C(__dst))
  {
    case 3u:
      v10 = sub_1B2127E38(__dst);
      goto LABEL_11;
    case 6u:
    case 0xFu:
    case 0x10u:
    case 0x12u:
      goto LABEL_2;
    case 7u:
      goto LABEL_4;
    case 9u:
      v10 = sub_1B2127E38(__dst) + 40;
LABEL_11:
      v11 = *v10;
      v12 = *(*v10 + 16);

      v14 = -1;
      v15 = 32;
      while (2)
      {
        if (v14 - v12 == -1)
        {

          goto LABEL_28;
        }

        if (++v14 < *(v11 + 16))
        {
          v16 = v15 + 168;
          v17 = memcpy(v42, (v11 + v15), 0xA3uLL);
          result = sub_1B21CE8F0(v17);
          v15 = v16;
          if (result)
          {

            goto LABEL_19;
          }

          continue;
        }

        break;
      }

      __break(1u);
      goto LABEL_31;
    case 0xBu:
      v18 = *sub_1B2127E38(__dst);
      memcpy(v42, (v18 + 16), 0xA3uLL);
      v19 = memcpy(v37, (v18 + 184), 0xA2uLL);
      if (sub_1B21CE8F0(v19))
      {
        goto LABEL_19;
      }

      memcpy(v39, v37, 0xA2uLL);
      if (sub_1B214CB20(v39))
      {
        sub_1B214CB10(v39);
        goto LABEL_28;
      }

      v20 = sub_1B214CB10(v39);
      v21 = *v20;
      v22 = *(*v20 + 16);
      v30 = sub_1B21D09F8(v20, v23, v24, v25, v26, v27, v28, v29, v36, v37[0], v37[1], v37[2], v37[3], v37[4], v37[5], v37[6], v37[7], v37[8], v37[9], v37[10], v37[11], v37[12], v37[13], v37[14], v37[15], v37[16], v37[17], v37[18], v37[19], v37[20], v38[0]);
      memcpy(v30, v31, 0xA2uLL);
      v32 = *sub_1B214CB10(v38);
      v33 = (v21 + 32);

      v34 = -1;
      break;
    case 0xCu:
      v4 = 40;
LABEL_2:
      v5 = sub_1B2127E38(__dst);
      v6 = memcpy(__src, (*v5 + v4), sizeof(__src));
      v1 = sub_1B21CE8F0(v6);
      return v1 & 1;
    case 0xDu:
      v2 = 192;
      v3 = 24;
LABEL_4:
      v7 = *sub_1B2127E38(__dst);
      memcpy(v41, (v7 + v3), sizeof(v41));
      memcpy(v42, (v7 + v2), 0xA3uLL);
      v8 = sub_1B2127DC0(v42, v37);
      if (sub_1B21CE8F0(v8))
      {
        sub_1B21356F8(v42);
        goto LABEL_19;
      }

      v9 = sub_1B212B4CC(v37);
      v1 = sub_1B21CE8F0(v9);
      sub_1B21356F8(v42);
      return v1 & 1;
    case 0x11u:
      if (*(sub_1B2127E38(__dst) + 16))
      {
        return v1 & 1;
      }

      goto LABEL_28;
    case 0x15u:
      return v1 & 1;
    default:
      goto LABEL_28;
  }

  while (1)
  {
    if (v34 - v22 == -1)
    {
      sub_1B214D4C8(v37);
LABEL_28:
      v1 = 0;
      return v1 & 1;
    }

    if (++v34 >= *(v21 + 16))
    {
      break;
    }

    v35 = memcpy(v42, v33, 0xA3uLL);
    result = sub_1B21CE8F0(v35);
    v33 += 168;
    if (result)
    {
      sub_1B214D4C8(v37);
LABEL_19:
      v1 = 1;
      return v1 & 1;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1B21CEBD4()
{
  memcpy(__dst, v0, 0xA2uLL);
  v1 = sub_1B21D0350(__dst);
  sub_1B211A2B4(v1, __dst);
  return sub_1B214CFE0(v0, v3);
}

void *sub_1B21CEC88@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  return sub_1B21CE678(a1);
}

void *sub_1B21CEC94@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  return sub_1B21CE85C(a1);
}

uint64_t Sequence<>.joined(operator:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = sub_1B211F69C(a1);
  v22[0] = v10;
  v22[1] = v11;
  v23 = *(v9 + 1);
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v21[6] = v15;
  v21[7] = v16;
  v21[8] = v17;
  v21[2] = a2;
  v21[3] = a3;
  v21[4] = a4;
  v21[5] = swift_getKeyPath();
  v19 = sub_1B2150D28(sub_1B2151328, v21, a2, &type metadata for SQLExpression, MEMORY[0x1E69E73E0], a3, MEMORY[0x1E69E7410], v18);

  sub_1B213B4BC(v22, v19, a5);
}

void sub_1B21CED88()
{
  qword_1EB7A2260 = 43;
  *algn_1EB7A2268 = 0xE100000000000000;
  qword_1EB7A2270 = 0;
  unk_1EB7A2278 = 0;
  unk_1EB7A227F = 0;
}

uint64_t static SQLExpression.AssociativeBinaryOperator.add.getter()
{
  if (qword_1EB7A0D48 != -1)
  {
    swift_once();
  }

  sub_1B21157D8(&qword_1EB7A2260);
  v0 = sub_1B2114748();

  return sub_1B2113A20(v0, v1, v2);
}

void sub_1B21CEE20()
{
  qword_1EB7A2288 = 42;
  unk_1EB7A2290 = 0xE100000000000000;
  qword_1EB7A2298 = 1;
  unk_1EB7A22A0 = 0;
  unk_1EB7A22A7 = 0;
}

uint64_t static SQLExpression.AssociativeBinaryOperator.multiply.getter()
{
  if (qword_1EB7A0D50 != -1)
  {
    swift_once();
  }

  sub_1B21157D8(&qword_1EB7A2288);
  v0 = sub_1B2114748();

  return sub_1B2113A20(v0, v1, v2);
}

double sub_1B21CEEBC()
{
  qword_1ED85DC88 = 4476481;
  unk_1ED85DC90 = 0xE300000000000000;
  *&result = 1;
  xmmword_1ED85DC98 = xmmword_1B2259350;
  word_1ED85DCA8 = 256;
  byte_1ED85DCAA = 0;
  return result;
}

uint64_t static SQLExpression.AssociativeBinaryOperator.and.getter()
{
  if (qword_1ED85DC80 != -1)
  {
    sub_1B2112AD4();
    swift_once();
  }

  sub_1B21157D8(&xmmword_1ED85DC88);
  v0 = sub_1B2114748();

  return sub_1B2113A20(v0, v1, v2);
}

void sub_1B21CEF5C()
{
  *&xmmword_1ED85D4F0 = 21071;
  *(&xmmword_1ED85D4F0 + 1) = 0xE200000000000000;
  xmmword_1ED85D500 = 0uLL;
  byte_1ED85D510 = 0;
  *&byte_1ED85D511 = 1;
}

uint64_t static SQLExpression.AssociativeBinaryOperator.or.getter()
{
  if (qword_1ED85D4E8 != -1)
  {
    sub_1B21175B4();
    swift_once();
  }

  sub_1B21157D8(&xmmword_1ED85D4F0);
  v0 = sub_1B2114748();

  return sub_1B2113A20(v0, v1, v2);
}

double sub_1B21CEFF0()
{
  qword_1EB7A0C40 = 31868;
  *algn_1EB7A0C48 = 0xE200000000000000;
  result = 0.0;
  xmmword_1EB7A0C50 = xmmword_1B225C420;
  word_1EB7A0C60 = 258;
  byte_1EB7A0C62 = 1;
  return result;
}

uint64_t static SQLExpression.AssociativeBinaryOperator.concat.getter()
{
  if (qword_1EB7A0C38 != -1)
  {
    swift_once();
  }

  sub_1B21157D8(&qword_1EB7A0C40);
  v0 = sub_1B2114748();

  return sub_1B2113A20(v0, v1, v2);
}

uint64_t SQLExpression.AssociativeBinaryOperator.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = *(v0 + 33);
  v7 = *(v0 + 34);
  sub_1B2252370();
  DatabaseValue.hash(into:)();
  sub_1B2253440();
  return sub_1B2253440();
}

uint64_t SQLExpression.AssociativeBinaryOperator.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = *(v0 + 33);
  v7 = *(v0 + 34);
  sub_1B2253420();
  sub_1B2252370();
  DatabaseValue.hash(into:)();
  sub_1B2253440();
  sub_1B2253440();
  return sub_1B2253470();
}

uint64_t sub_1B21CF1C4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  v5 = *(v0 + 32);
  v6 = *(v0 + 33);
  v7 = *(v0 + 34);
  sub_1B2253420();
  SQLExpression.AssociativeBinaryOperator.hash(into:)();
  return sub_1B2253470();
}

uint64_t sub_1B21CF230()
{
  sub_1B2253420();
  sub_1B2252370();
  return sub_1B2253470();
}

uint64_t sub_1B21CF280()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1B21CF230();
}

uint64_t sub_1B21CF29C()
{
  v0 = sub_1B2252F40();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B21CF2E8(char a1)
{
  result = 61;
  switch(a1)
  {
    case 1:
      result = 15932;
      break;
    case 2:
      result = 21321;
      break;
    case 3:
      result = 0x544F4E205349;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B21CF368@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B21CF29C();
  *a2 = result;
  return result;
}

uint64_t sub_1B21CF398@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B21CF2E8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B21CF3C4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v8 = a1 == a4 && a2 == a5;
  if (v8 || (v9 = sub_1B22531F0(), v10 = 0, (v9 & 1) != 0))
  {
    v10 = a3 ^ a6 ^ 1;
  }

  return v10 & 1;
}

uint64_t sub_1B21CF448()
{
  sub_1B2253420();
  sub_1B2252370();
  sub_1B2253440();
  return sub_1B2253470();
}

uint64_t sub_1B21CF4B0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return sub_1B21CF448();
}

uint64_t sub_1B21CF4BC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return sub_1B21CF418();
}

uint64_t sub_1B21CF4C8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1B2253420();
  sub_1B2252370();
  sub_1B2253440();
  return sub_1B2253470();
}

uint64_t sub_1B21CF544()
{
  result = sqlite3_libversion_number();
  byte_1ED8618E0 = result > 3014999;
  return result;
}

uint64_t sub_1B21CF574@<X0>(char a1@<W3>, uint64_t a2@<X8>)
{
  sub_1B21D0950();
  memcpy(v4, v5, v6);
  sub_1B212D6F0(v23);
  sub_1B212E2E0(v24);
  sub_1B21D0950();
  memcpy(v7, v8, v9);
  if (sub_1B2127E1C(v25) == 16)
  {
    v10 = *sub_1B2127E38(v25);
    memcpy(__dst, (v10 + 16), sizeof(__dst));
    v11 = __dst[21];
    v12 = __dst[22];
    memcpy(v20, (v10 + 16), 0xA3uLL);
    sub_1B214CC30(v19);
    sub_1B212D6D8(v18);
    sub_1B2122B00(__dst, v17, &qword_1EB7A22B8, &qword_1B225D308);
    sub_1B21CF574(v16, v20, v19, v18, a1 & 1);
    v20[0] = v11;
    v20[1] = v12;
    sub_1B21CF728(v20, a2);
    sub_1B21356F8(__dst);
    memcpy(v17, v16, 0xA3uLL);
    sub_1B21356F8(v17);
  }

  else
  {
    v14 = swift_allocObject();
    memcpy(v14 + 16, __src, 0xA3uLL);
    sub_1B214CC30(v14 + 184);
    sub_1B212D6D8(v14 + 352);
    v14[515] = a1 & 1;
    __dst[0] = v14;
    v15 = sub_1B21D0394(__dst);
    sub_1B211A2B4(v15, __dst);
    sub_1B2127DC0(__src, v17);
    sub_1B2127DC0(v23, v17);
    return sub_1B2127DC0(v24, v17);
  }
}

uint64_t sub_1B21CF728@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  sub_1B212D6F0(v52);
  v5 = *a1;
  v4 = a1[1];
  sub_1B212D6F0(v53);
  v6 = sub_1B2127E1C(v53);
  if (v6 == 9)
  {
    v19 = sub_1B2127E38(v53);
    v20 = sub_1B211F69C(v19);
    v21 = v20[5];
    v45[0] = v22;
    v45[1] = v23;
    v46 = *(v20 + 1);
    v47 = v24;
    v48 = v25;
    v49 = v26;
    v27 = *(v21 + 16);
    v28 = MEMORY[0x1E69E7CC0];
    if (v27)
    {
      v44 = MEMORY[0x1E69E7CC0];
      sub_1B213CA68();
      v28 = v44;
      v29 = v21 + 32;
      do
      {
        sub_1B21D0950();
        memcpy(v30, v31, v32);
        sub_1B21D0950();
        memcpy(v33, v34, v35);
        v41[0] = v5;
        v41[1] = v4;
        sub_1B2127DC0(v43, v51);
        sub_1B21CF728(v51, v42, v41);
        memcpy(__src, v42, 0xA3uLL);
        sub_1B21356F8(__src);
        v44 = v28;
        v37 = v28[2];
        v36 = v28[3];
        if (v37 >= v36 >> 1)
        {
          sub_1B211156C(v36);
          sub_1B213CA68();
          v28 = v44;
        }

        v28[2] = v37 + 1;
        memcpy(&v28[21 * v37 + 4], v51, 0xA3uLL);
        v29 += 168;
        --v27;
      }

      while (v27);
    }

    sub_1B213B4BC(v45, v28, a2);
  }

  else if (v6 == 11)
  {
    v7 = *sub_1B2127E38(v53);
    sub_1B211D694();
    memcpy(v8, v9, v10);
    sub_1B2114090();
    memcpy(v11, v12, v13);
    v14 = *(v7 + 346);
    v42[0] = v5;
    v42[1] = v4;
    sub_1B21CF728(__src, v51, v42);
    sub_1B21D0994();
    v15 = swift_allocObject();
    v16 = sub_1B211E4F4(v15);
    memcpy(v16, __src, 0xA3uLL);
    memcpy((v7 + 184), v43, 0xA2uLL);
    *(v7 + 346) = v14;
    v51[0] = v7;
    v17 = sub_1B214C468(v51);
    sub_1B211A2B4(v17, v51);
    return sub_1B214CB2C(v43, v42);
  }

  else
  {
    v38 = swift_allocObject();
    v39 = sub_1B211E4F4(v38);
    memcpy(v39, v52, 0xA3uLL);
    a1[23] = v5;
    a1[24] = v4;
    v51[0] = a1;
    v40 = sub_1B21D0574(v51);
    sub_1B211A2B4(v40, v51);
    sub_1B2127DC0(v52, __src);
  }
}

uint64_t sub_1B21CF9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  memcpy(__dst, a3, 0xA3uLL);
  sub_1B212D6F0(v96);
  sub_1B21D0950();
  memcpy(v8, v9, v10);
  if (sub_1B2127E1C(v97) == 16)
  {
    v11 = sub_1B2127E38(v97);
    sub_1B2135370(v11);
    v12 = v92;
    v13 = v93;
    memcpy(v94, (a3 + 16), 0xA3uLL);
    v14 = sub_1B212D660(v90);
    sub_1B215433C(v14, v15, &qword_1EB7A22B8, &qword_1B225D308, v16, v17, v18, v19, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88[0]);
    v20 = sub_1B2112864();
    sub_1B21CF9AC(v20);
    v94[0] = v12;
    v94[1] = v13;
    sub_1B21CF728(v94, a4);
    sub_1B21356F8(v91);
    v21 = v88;
    v22 = v89;
LABEL_5:
    memcpy(v21, v22, 0xA3uLL);
    sub_1B21356F8(v88);
  }

  sub_1B212D660(v94);
  if (sub_1B2127E1C(v94) == 16)
  {
    v23 = sub_1B2127E38(v94);
    sub_1B2135370(v23);
    v24 = v92;
    v25 = v93;
    sub_1B2146FF4(v90);
    v26 = memcpy(v89, (a3 + 16), 0xA3uLL);
    sub_1B215433C(v26, v27, &qword_1EB7A22B8, &qword_1B225D308, v28, v29, v30, v31, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88[0]);
    v32 = sub_1B2112864();
    sub_1B21CF9AC(v32);
    v90[0] = v24;
    v90[1] = v25;
    sub_1B21CF728(v90, a4);
    v33 = sub_1B21356F8(v91);
    v21 = sub_1B21D09F8(v33, v34, v35, v36, v37, v38, v39, v40, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v88[0]);
    goto LABEL_5;
  }

  v42 = swift_allocObject();
  v42[2] = a1;
  v42[3] = a2;
  sub_1B2146FF4(v42 + 4);
  sub_1B212D660(v42 + 25);
  v91[0] = v42;
  v43 = sub_1B21D05B8(v91);
  sub_1B211A2B4(v43, v91);

  sub_1B2127DC0(__dst, v88);
  return sub_1B2127DC0(v96, v88);
}

uint64_t SQLSpecificExpressible.collating(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  (*(*(a3 + 8) + 8))(__src, a2);
  v8[0] = v5;
  v8[1] = v6;
  sub_1B21CF728(v8, a4);
  memcpy(__dst, __src, 0xA3uLL);
  return sub_1B21356F8(__dst);
}

void *sub_1B21CFCE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2 + a3;
  v5 = *(a2 + a3 - 24);
  v4 = *(v3 - 16);
  v6 = *(*(v3 - 8) + 8);
  v7 = *(v6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = v7(v11, AssociatedTypeWitness, v6);
  return sub_1B211A2B4(v9, v11);
}

uint64_t Sequence<>.joined(operator:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_1B211F69C(a1);
  v14[0] = v4;
  v14[1] = v5;
  v15 = *(v3 + 1);
  v16 = v6;
  v17 = v7;
  v18 = v8;
  v12 = sub_1B2150D28(sub_1B21CFE1C, 0, v9, &type metadata for SQLExpression, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  sub_1B213B4BC(v14, v12, a2);
}

void *sub_1B21CFE1C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[3];
  v3 = a1[4];
  sub_1B21139A0(a1, v4);
  (*(*(v3 + 8) + 8))(__src, v4);
  return memcpy(a2, __src, 0xA3uLL);
}

void *sub_1B21CFEF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(_BYTE *)@<X2>, void *a4@<X8>)
{
  sub_1B2124228(a1, *(a2 + 8));
  v6();
  a3(__src);
  return memcpy(a4, __src, 0xA3uLL);
}

uint64_t SQLSpecificExpressible.forKey(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v5 = a1[4];
  sub_1B21139A0(a1, a1[3]);
  v6 = sub_1B22534D0();
  SQLSpecificExpressible.forKey(_:)(v6, v7, a2, a3);
}

uint64_t SQLSpecificExpressible.collating(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 + 8) + 8))(__src, a2);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9[0] = v6;
  v9[1] = v7;

  sub_1B21CF728(v9, a4);

  memcpy(__dst, __src, 0xA3uLL);
  return sub_1B21356F8(__dst);
}

unint64_t sub_1B21D0080()
{
  result = qword_1EB7A22B0;
  if (!qword_1EB7A22B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A22B0);
  }

  return result;
}

__n128 sub_1B21D00D4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B21D00E8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 35))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1B21D0128(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 35) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 35) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1B21D0190(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 152) = 0;
    result = 0.0;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 162) = 0;
    *(a1 + 160) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 163) = 1;
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
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 64) = 2 * -a2;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0u;
      *(a1 + 147) = 0u;
      return result;
    }

    *(a1 + 163) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B21D0228(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  *(result + 2) = ((v2 | (*(result + 2) << 16)) >> 16) & 7;
  *result = v2;
  return result;
}

void sub_1B21D0244(uint64_t a1, unsigned int a2)
{
  if (a2 < 0x15)
  {
    v4 = *(a1 + 104) & 1;
    v3 = (*(a1 + 160) | (*(a1 + 162) << 16)) & 0x181FF | (a2 << 19);
    *(a1 + 64) &= 1uLL;
    *(a1 + 104) = v4;
  }

  else
  {
    *a1 = a2 - 21;
    bzero((a1 + 8), 0x98uLL);
    v3 = 11010048;
  }

  *(a1 + 160) = v3;
  *(a1 + 162) = BYTE2(v3);
}

uint64_t sub_1B21D0350(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = v2 | (*(result + 2) << 16);
  v4 = *(result - 56) & 1;
  *(result - 96) &= 1uLL;
  *(result - 56) = v4;
  *result = v3 & 0x81FF;
  *(result + 2) = (v3 & 0x1FFFF | 0x200000u) >> 16;
  return result;
}

uint64_t sub_1B21D0394(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = v2 | (*(result + 2) << 16);
  v4 = *(result - 56) & 1;
  *(result - 96) &= 1uLL;
  *(result - 56) = v4;
  *result = v3 & 0x81FF;
  *(result + 2) = (v3 & 0x1FFFF | 0x300000u) >> 16;
  return result;
}

uint64_t sub_1B21D03D8(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = v2 | (*(result + 2) << 16);
  v4 = *(result - 56) & 1;
  *(result - 96) &= 1uLL;
  *(result - 56) = v4;
  *result = v3 & 0x81FF;
  *(result + 2) = (v3 & 0x1FFFF | 0x780000u) >> 16;
  return result;
}

uint64_t sub_1B21D041C(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = v2 | (*(result + 2) << 16);
  v4 = *(result - 56) & 1;
  *(result - 96) &= 1uLL;
  *(result - 56) = v4;
  *result = v3 & 0x81FF;
  *(result + 2) = (v3 & 0x1FFFF | 0xA00000u) >> 16;
  return result;
}

uint64_t sub_1B21D0460()
{
  sub_1B2114F84();

  return swift_deallocObject();
}

uint64_t sub_1B21D04A8(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = v2 | (*(result + 2) << 16);
  v4 = *(result - 56) & 1;
  *(result - 96) &= 1uLL;
  *(result - 56) = v4;
  *result = v3 & 0x81FF;
  *(result + 2) = (v3 & 0x1FFFF | 0x900000u) >> 16;
  return result;
}

uint64_t sub_1B21D04EC(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = v2 | (*(result + 2) << 16);
  v4 = *(result - 56) & 1;
  *(result - 96) &= 1uLL;
  *(result - 56) = v4;
  *result = v3 & 0x81FF;
  *(result + 2) = (v3 & 0x1FFFF | 0x500000u) >> 16;
  return result;
}

uint64_t sub_1B21D0530(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = v2 | (*(result + 2) << 16);
  v4 = *(result - 56) & 1;
  *(result - 96) &= 1uLL;
  *(result - 56) = v4;
  *result = v3 & 0x81FF;
  *(result + 2) = (v3 & 0x1FFFF | 0x400000u) >> 16;
  return result;
}

uint64_t sub_1B21D0574(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = v2 | (*(result + 2) << 16);
  v4 = *(result - 56) & 1;
  *(result - 96) &= 1uLL;
  *(result - 56) = v4;
  *result = v3 & 0x81FF;
  *(result + 2) = (v3 & 0x1FFFF | 0x800000u) >> 16;
  return result;
}

uint64_t sub_1B21D05B8(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = v2 | (*(result + 2) << 16);
  v4 = *(result - 56) & 1;
  *(result - 96) &= 1uLL;
  *(result - 56) = v4;
  *result = v3 & 0x81FF;
  *(result + 2) = (v3 & 0x1FFFF | 0x380000u) >> 16;
  return result;
}

uint64_t sub_1B21D05FC(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = v2 | (*(result + 2) << 16);
  v4 = *(result - 56) & 1;
  *(result - 96) &= 1uLL;
  *(result - 56) = v4;
  *result = v3 & 0x81FF;
  *(result + 2) = (v3 & 0x1FFFF | 0x980000u) >> 16;
  return result;
}

uint64_t sub_1B21D0640(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = v2 | (*(result + 2) << 16);
  v4 = *(result - 56) & 1;
  *(result - 96) &= 1uLL;
  *(result - 56) = v4;
  *result = v3 & 0x81FF;
  *(result + 2) = (v3 & 0x1FFFF | 0x700000u) >> 16;
  return result;
}

uint64_t sub_1B21D0684(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = v2 | (*(result + 2) << 16);
  v4 = *(result - 56) & 1;
  *(result - 96) &= 1uLL;
  *(result - 56) = v4;
  *result = v3 & 0x81FF;
  *(result + 2) = (v3 & 0x1FFFF | 0x600000u) >> 16;
  return result;
}

_BYTE *sub_1B21D06C8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1B21D07A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1B21D07E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B21D0848()
{
  result = qword_1EB7A22D8;
  if (!qword_1EB7A22D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A22D8);
  }

  return result;
}

unint64_t sub_1B21D08A0()
{
  result = qword_1EB7A22E0;
  if (!qword_1EB7A22E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A22E0);
  }

  return result;
}

unint64_t sub_1B21D08F8()
{
  result = qword_1EB7A22E8;
  if (!qword_1EB7A22E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A22E8);
  }

  return result;
}

void sub_1B21D0968()
{

  JUMPOUT(0x1B2741EB0);
}

void sub_1B21D09D8()
{
  *(v0 + 3352) = v1;
  v2 = *(v1 + 24);
  v3 = *(v1 + 16) + 1;
}

void *sub_1B21D0A04()
{

  return sub_1B213F348(v0, v1, 0);
}

void *sub_1B21D0A24(uint64_t *a1)
{
  v2 = *a1;

  return memcpy(&STACK[0x2B8], (v2 + 16), 0xB8uLL);
}

uint64_t sub_1B21D0A44()
{

  return sub_1B2127DC0(v0 + 2840, v0 + 1920);
}

void *sub_1B21D0A5C(void *a1)
{

  return memcpy(a1, &STACK[0x2C0], 0xA3uLL);
}

void *sub_1B21D0A74(uint64_t a1, const void *a2)
{

  return memcpy(v2, a2, 0xA3uLL);
}

uint64_t sub_1B21D0A8C(uint64_t a1)
{

  return sub_1B212AC5C(a1, v1, v2);
}

uint64_t *sub_1B21D0AA4(uint64_t a1)
{
  result = sub_1B2127E38(a1);
  v2 = *result;
  return result;
}

void NSDecimal.databaseValue.getter(unint64_t a1@<X0>, unint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t *a4@<X8>)
{
  v4 = a3;
  v5 = a2;
  v6 = a1;
  v26 = a4;
  v7 = HIDWORD(a1);
  v8 = HIWORD(a1);
  v9 = a2 >> 16;
  v10 = HIDWORD(a2);
  v24 = HIWORD(a2);
  v25 = HIWORD(a3);
  v11 = sub_1B2251F10();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_allocWithZone(MEMORY[0x1E696AB90]);
  v27 = v6;
  v28 = v7;
  v29 = v8;
  v30 = v5;
  v31 = v9;
  v32 = v10;
  v33 = v24;
  v34 = v4;
  v35 = v25;
  v17 = [v16 initWithDecimal_];
  sub_1B2251EF0();
  v18 = sub_1B2251F00();
  (*(v12 + 8))(v15, v11);
  v19 = [v17 descriptionWithLocale_];

  v20 = sub_1B22522A0();
  v22 = v21;

  v23 = v26;
  *v26 = v20;
  v23[1] = v22;
  *(v23 + 16) = 2;
}

uint64_t static NSDecimal.fromDatabaseValue(_:)(uint64_t *a1)
{
  v2 = sub_1B21619D8(&qword_1EB7A1350, &unk_1B22550D0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v13 - v5;
  v7 = *a1;
  v8 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    MEMORY[0x1B27425D0](*a1);
LABEL_9:
    sub_1B21151B0();
    return v7;
  }

  if (v8 != 2)
  {
    if (v8 != 1)
    {
      return 0;
    }

    MEMORY[0x1B27425C0](v4, *a1);
    goto LABEL_9;
  }

  v9 = a1[1];
  if (qword_1EB7A0D58 != -1)
  {
    sub_1B21175C8();
  }

  v10 = sub_1B2251F10();
  v11 = sub_1B2156958(v10, qword_1EB7A22F0);
  (*(*(v10 - 8) + 16))(v6, v11, v10);
  sub_1B21117B4(v6, 0, 1, v10);
  sub_1B2252AD0();
  sub_1B21151B0();
  sub_1B21D12D0(v6);
  return v7;
}

uint64_t sub_1B21D0E30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = static NSDecimal.fromDatabaseValue(_:)(a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 20) = v6 & 1;
  return result;
}

void __swiftcall NSDecimal.init(sqliteStatement:index:)(NSDecimal_optional *__return_ptr retstr, Swift::OpaquePointer sqliteStatement, Swift::Int32 index)
{
  v3 = sub_1B21619D8(&qword_1EB7A1350, &unk_1B22550D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v23[-v5];
  v7 = sub_1B2112864();
  v9 = sqlite3_column_type(v7, v8);
  if (v9 != 3)
  {
    if (v9 == 2)
    {
      v13 = sub_1B2112864();
      v15 = sqlite3_column_double(v13, v14);
      MEMORY[0x1B27425C0](v15);
    }

    else
    {
      if (v9 != 1)
      {
        v16 = 1;
        goto LABEL_14;
      }

      v10 = sub_1B2112864();
      v12 = sqlite3_column_int64(v10, v11);
      MEMORY[0x1B27425D0](v12);
    }

    sub_1B21151B0();
LABEL_7:
    v16 = 0;
LABEL_14:
    v23[12] = v16;
    return;
  }

  v17 = sub_1B2112864();
  if (sqlite3_column_text(v17, v18))
  {
    sub_1B2252400();
    if (qword_1EB7A0D58 != -1)
    {
      sub_1B21175C8();
    }

    v19 = sub_1B2251F10();
    v20 = sub_1B2156958(v19, qword_1EB7A22F0);
    (*(*(v19 - 8) + 16))(v6, v20, v19);
    v16 = 1;
    sub_1B21117B4(v6, 0, 1, v19);
    sub_1B2252AD0();
    sub_1B21151B0();
    v22 = v21;

    sub_1B21D12D0(v6);
    if ((v22 & 0x100000000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t _posixLocale.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB7A0D58 != -1)
  {
    sub_1B21175C8();
  }

  v2 = sub_1B2251F10();
  v3 = sub_1B2156958(v2, qword_1EB7A22F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1B21D10D4@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_1B21619D8(&qword_1EB7A1350, &unk_1B22550D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  result = sqlite3_column_type(a1, a2);
  if (result != 3)
  {
    if (result == 2)
    {
      v14 = sqlite3_column_double(a1, a2);
      result = MEMORY[0x1B27425C0](v14);
    }

    else
    {
      if (result != 1)
      {
        v15 = 0;
        v16 = 0;
        LODWORD(v17) = 0;
        v18 = 1;
        goto LABEL_12;
      }

      v11 = sqlite3_column_int64(a1, a2);
      result = MEMORY[0x1B27425D0](v11);
    }

    v15 = result;
    v16 = v12;
    LODWORD(v17) = v13;
    goto LABEL_7;
  }

  result = sqlite3_column_text(a1, a2);
  if (result)
  {
    sub_1B2252400();
    _posixLocale.getter(v9);
    v19 = sub_1B2251F10();
    v18 = 1;
    sub_1B21117B4(v9, 0, 1, v19);
    v15 = sub_1B2252AD0();
    v16 = v20;
    v17 = v21;

    result = sub_1B21D12D0(v9);
    if ((v17 & 0x100000000) != 0)
    {
      v15 = 0;
      v16 = 0;
      LODWORD(v17) = 0;
      goto LABEL_12;
    }

LABEL_7:
    v18 = 0;
LABEL_12:
    *a3 = v15;
    *(a3 + 8) = v16;
    *(a3 + 16) = v17;
    *(a3 + 20) = v18;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B21D1264()
{
  v0 = sub_1B2251F10();
  sub_1B2175CC4(v0, qword_1EB7A22F0);
  sub_1B2156958(v0, qword_1EB7A22F0);
  return sub_1B2251EF0();
}

uint64_t sub_1B21D12D0(uint64_t a1)
{
  v2 = sub_1B21619D8(&qword_1EB7A1350, &unk_1B22550D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Database.makeTokenizer(_:)(void *a1)
{
  v3 = *a1;
  v4 = sub_1B219D2C4(v1);
  if (v2)
  {
    return v1;
  }

  v5 = v4;
  v6 = swift_slowAlloc();
  result = swift_slowAlloc();
  v8 = *(v5 + 16);
  if (!v8)
  {
    goto LABEL_10;
  }

  if (!v3[2])
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = result;
  v10 = v3[4];
  v11 = v3[5];
  v12 = sub_1B2252350();
  v1 = v8(v5, v12 + 32, v9, v6);

  if (!v1)
  {
    v17 = *v9;
    v18 = *v6;
    v19 = *(v6 + 8);
    v20 = *(v6 + 16);
    v21 = sub_1B21FB4C4();
    _s23FTS5RegisteredTokenizerCMa();
    swift_allocObject();
    v1 = sub_1B21D1BB0(v18, v19, v20, v17, v21);
    sub_1B2112AE8();
    sub_1B2112AE8();
    return v1;
  }

  sub_1B21AC298();
  swift_allocError();
  v14 = v13;
  result = sqlite3_errstr(v1);
  if (result)
  {
    v15 = sub_1B22523F0();
    *v14 = v1;
    *(v14 + 8) = v15;
    *(v14 + 16) = v16;
    *(v14 + 24) = 0u;
    *(v14 + 40) = 0u;
    *(v14 + 56) = 0;
    swift_willThrow();
    sub_1B2112AE8();
    sub_1B2112AE8();
    return v1;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1B21D15E8@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = FTS5Tokenization.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1B21D1628@<X0>(_DWORD *a1@<X8>)
{
  result = FTS5Tokenization.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B21D1660()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1B21D16CC(uint64_t a1, unint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v10 = *a3;
  v11 = sub_1B221B250(a1, a2);
  sub_1B21D1784(v11 + 32, *(v11 + 16), v7, v10, a4, a5, &v13, &v14);

  if (!v6)
  {
    v11 = sub_1B21B3044(v14);
  }

  return v11;
}

uint64_t sub_1B21D1784@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, void *a8@<X8>)
{
  v22[3] = *MEMORY[0x1E69E9840];
  if (!result)
  {
    *a8 = MEMORY[0x1E69E7CC0];
    goto LABEL_8;
  }

  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_10:
    __break(1u);
  }

  if (a2 > 0x7FFFFFFF)
  {
    goto LABEL_10;
  }

  v16 = result;
  type metadata accessor for TokenizeContext();
  v17 = swift_allocObject();
  *(v17 + 16) = MEMORY[0x1E69E7CC0];
  v21 = v17;
  sub_1B21D18E8(&v21, a3, a4, v16, a2, a5, a6, v22);
  if (v8)
  {
    *a7 = v22[0];
  }

  else
  {
    v18 = v21;
    swift_beginAccess();
    v19 = *(v18 + 16);

    *a8 = v19;
  }

LABEL_8:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B21D18E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v16 = a3;
  result = (*(a7 + 8))(a1, &v16, a4, a5, sub_1B21D1BAC);
  if (result)
  {
    v10 = result;
    sub_1B21AC298();
    v11 = swift_allocError();
    v13 = v12;
    result = sqlite3_errstr(v10);
    if (result)
    {
      v14 = sub_1B22523F0();
      *v13 = v10;
      *(v13 + 8) = v14;
      *(v13 + 16) = v15;
      *(v13 + 24) = 0u;
      *(v13 + 40) = 0u;
      *(v13 + 56) = 0;
      result = swift_willThrow();
      *a8 = v11;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B21D19C0(uint64_t *a1, int a2, uint64_t a3, int a4)
{
  v8 = sub_1B22522F0();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = sub_1B2251D80();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 1;
  }

  if (a3)
  {
    (*(v12 + 104))(v14, *MEMORY[0x1E6969010]);
    v15 = MEMORY[0x1B2741870](a3, a4, v14);
    v17 = v16;
    sub_1B22522E0();
    v18 = sub_1B22522C0();
    v20 = v19;
    sub_1B21267A8(v15, v17);
    if (v20)
    {
      v21 = *a1;
      swift_beginAccess();

      sub_1B21614D8();
      v22 = *(*(v21 + 16) + 16);
      sub_1B21617DC(v22);
      v23 = *(v21 + 16);
      *(v23 + 16) = v22 + 1;
      v24 = v23 + 24 * v22;
      *(v24 + 32) = v18;
      *(v24 + 40) = v20;
      *(v24 + 48) = a2;
      *(v21 + 16) = v23;
      swift_endAccess();
    }
  }

  return 0;
}

void *sub_1B21D1BB0(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v25[1] = *MEMORY[0x1E69E9840];
  v8 = *v5;
  if (!a1)
  {

    sub_1B21AC298();
    swift_allocError();
    *v15 = 1;
    *(v15 + 8) = 0xD00000000000001ALL;
    *(v15 + 16) = 0x80000001B226EA10;
LABEL_15:
    *(v15 + 24) = 0u;
    *(v15 + 40) = 0u;
    *(v15 + 56) = 0;
    swift_willThrow();
    swift_deallocPartialClassInstance();
    goto LABEL_16;
  }

  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v25[0] = 0;
  v11 = *(a5 + 16);
  if (v11)
  {
    v23[6] = v8;
    v24 = MEMORY[0x1E69E7CC0];
    sub_1B216EEAC(0, v11, 0);
    MEMORY[0x1EEE9AC00](v12);
    v23[2] = a1;
    v23[3] = a4;
    v23[4] = v25;
    v13 = *(v24 + 16);
    if (v13 == v11)
    {

      if (!(*(v24 + 16) >> 31))
      {
        v14 = a1(a4, v24 + 32);
        goto LABEL_12;
      }

      __break(1u);
    }

    else if (v13 < *(a5 + 16))
    {
      v16 = a5 + 16 * v13;
      v17 = *(v16 + 32);
      v18 = *(v16 + 40);

      v14 = sub_1B21D2044(v17, v18, &v24, a5, sub_1B21D23A4, v23);

LABEL_12:

      if (v14)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    __break(1u);
  }

  v14 = (a1)(a4, 0, 0, v25);
  if (v14)
  {
LABEL_13:
    v19 = 0x80000001B226EA30;
    v20 = 0xD00000000000001DLL;
LABEL_14:
    sub_1B21AC298();
    swift_allocError();
    *v15 = v14;
    *(v15 + 8) = v20;
    *(v15 + 16) = v19;
    goto LABEL_15;
  }

LABEL_8:
  if (!v25[0])
  {
    v14 = 0;
    v19 = 0xED000072657A696ELL;
    v20 = 0x656B6F74206C696ELL;
    goto LABEL_14;
  }

  v6[5] = v25[0];
LABEL_16:
  v21 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_1B21D1EB8(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr), uint64_t a4)
{
  result = *a2;
  v8 = *(*a2 + 16);
  v9 = *(a1 + 16);
  if (v8 == v9)
  {
    a3(&v15);
    return v15;
  }

  if (v8 < v9)
  {
    v12 = a1 + 16 * v8;
    v13 = *(v12 + 32);
    v14 = *(v12 + 40);

    v10 = sub_1B21D2044(v13, v14, a2, a1, a3, a4);

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B21D1F74(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr), uint64_t a5)
{
  v10 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1B216EEAC(0, *(v10 + 16) + 1, 1);
    v10 = *a2;
  }

  v13 = *(v10 + 16);
  v12 = *(v10 + 24);
  if (v13 >= v12 >> 1)
  {
    sub_1B216EEAC(v12 > 1, v13 + 1, 1);
    v10 = *a2;
  }

  *(v10 + 16) = v13 + 1;
  *(v10 + 8 * v13 + 32) = a1;
  return sub_1B21D1EB8(a3, a2, a4, a5);
}

uint64_t sub_1B21D2044(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr), uint64_t a6)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v10[0] = a1;
      v10[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v8 = v10;
      goto LABEL_6;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_6:
      v7 = sub_1B21D1F74(v8, a3, a4, a5, a6);

      return v7;
    }
  }

  sub_1B2252CC0();

  if (!v6)
  {
    return v11;
  }

  return v7;
}

uint64_t sub_1B21D211C@<X0>(uint64_t result@<X0>, uint64_t (*a2)(uint64_t, uint64_t, unint64_t)@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  v5 = *(result + 16);
  if (v5 >> 31)
  {
    __break(1u);
  }

  else
  {
    result = a2(a3, result + 32, v5);
    *a4 = result;
  }

  return result;
}

uint64_t sub_1B21D2164()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v1(*(v0 + 40));
  }

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}