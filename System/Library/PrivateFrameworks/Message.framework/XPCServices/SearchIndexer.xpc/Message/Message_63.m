uint64_t sub_1003F6534@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v5 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v12 = a3;
      return swift_willThrow();
    }

    v7 = result;
    v8 = *result;
    v9 = *(result + 8);
    v10 = *(result + 16);
    v19 = *(result + 22);
    v20 = *(result + 20);

    sub_1003F77A0(v7, v5, a3, v21);
    if (v4)
    {
      v11 = *v7;

      *v7 = v8;
      *(v7 + 8) = v9;
      *(v7 + 16) = v10;
      *(v7 + 20) = v20;
      *(v7 + 22) = v19;
      return swift_willThrow();
    }

    v13 = v21[9];
    *(a4 + 128) = v21[8];
    *(a4 + 144) = v13;
    *(a4 + 160) = v21[10];
    *(a4 + 176) = v22;
    v14 = v21[5];
    *(a4 + 64) = v21[4];
    *(a4 + 80) = v14;
    v15 = v21[7];
    *(a4 + 96) = v21[6];
    *(a4 + 112) = v15;
    v16 = v21[1];
    *a4 = v21[0];
    *(a4 + 16) = v16;
    v17 = v21[3];
    *(a4 + 32) = v21[2];
    *(a4 + 48) = v17;
  }

  return result;
}

uint64_t sub_1003F6698@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v11 = result;
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v20 = a3;
    }

    else
    {
      v13 = *result;
      v14 = *(result + 8);
      v15 = *(result + 16);
      v16 = *(result + 20);
      v17 = *(result + 22);

      sub_1003FD618(v11, v9, a3, a4, a5, a6, a7, v48);
      if (!v8)
      {
        v32 = &v49;

        v33 = v48;
        goto LABEL_21;
      }

      v19 = *v11;

      *v11 = v13;
      *(v11 + 8) = v14;
      *(v11 + 16) = v15;
      *(v11 + 20) = v16;
      *(v11 + 22) = v17;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v9 < a3)
    {
      v21 = *v11;
      v22 = *(v11 + 8);
      v23 = *(v11 + 16);
      v24 = *(v11 + 20);
      v43 = *(v11 + 22);

      sub_1003FDCF0(v11, v9, a3, a4, a5, a6, a7, v50);
      v32 = &v51;

      v33 = v50;
LABEL_21:
      v34 = *(v32 + 3);
      v56 = *(v32 + 2);
      v57 = v34;
      v58 = *(v32 + 4);
      v35 = *(v32 + 1);
      v54 = *v32;
      v55 = v35;
      v36 = v33[2];
      *(a8 + 16) = v33[1];
      *(a8 + 32) = v36;
      v37 = v33[4];
      *(a8 + 48) = v33[3];
      *(a8 + 64) = v37;
      v38 = v54;
      *(a8 + 104) = v55;
      *(a8 + 88) = v38;
      v39 = v57;
      *(a8 + 152) = v58;
      v40 = v56;
      *(a8 + 136) = v39;
      v59 = v32[10];
      v41 = *(v33 + 10);
      v42 = *(v33 + 1);
      *a8 = *v33;
      *(a8 + 8) = v42;
      *(a8 + 80) = v41;
      *(a8 + 168) = v59;
      *(a8 + 120) = v40;
      return result;
    }

    sub_1003A5228();
    swift_allocError();
    *v25 = a3;
    swift_willThrow();
    swift_errorRetain();
    if (swift_dynamicCast())
    {

LABEL_16:

      if (v9 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v31 = a3;
        return swift_willThrow();
      }

      v26 = *v11;
      v27 = *(v11 + 8);
      v28 = *(v11 + 16);
      v29 = *(v11 + 20);
      v30 = *(v11 + 22);

      sub_1003FD2FC(v11, v9, a3, a4, a5, a6, a7, v52);
      v32 = &v53;

      v33 = v52;
      goto LABEL_21;
    }

    swift_errorRetain();
    if (swift_dynamicCast())
    {

      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003F6B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v18 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_31;
  }

  v14 = a3;
  if (v18 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v21 = v14;
    return swift_willThrow();
  }

  v13 = a7;
  v8 = a6;
  v15 = a5;
  v12 = a4;
  v11 = a1;
  v90 = a8;
  v19 = *a1;
  v16 = *(a1 + 8);
  LODWORD(v125) = *(a1 + 16);
  v93 = *(a1 + 20);
  v91 = *(a1 + 22);
  v110 = _swiftEmptyArrayStorage;

  sub_10047199C(v11, &v110, v18, v14, v12, v15, v8, v13);
  if (v9)
  {

    v20 = *v11;

LABEL_9:
    *v11 = v19;
    *(v11 + 8) = v16;
    *(v11 + 16) = v125;
    *(v11 + 20) = v93;
    *(v11 + 22) = v91;
    return swift_willThrow();
  }

  v88 = v19;

  v22 = *v11;
  if (v18 + 1 >= v14)
  {

    sub_1003A5228();
    swift_allocError();
    *v23 = v14;
    swift_willThrow();
    v19 = v88;
    goto LABEL_9;
  }

  v87 = v110;
  sub_100469DF8(v11);
  v25 = sub_10041FC00(v11, v18, v14, v12, v15, v8, v13);
  v10 = 0;
  v19 = v88;
  v85 = v26;
  v86 = *v11;
  v81 = v25;
  v17 = *(v11 + 8);
  v83 = *(v11 + 20);
  v84 = *(v11 + 16);
  v82 = *(v11 + 22);
  if (v18 + 2 >= v14)
  {
    sub_1003A5228();
    v10 = swift_allocError();
    *v27 = v14;
LABEL_25:
    v32 = v86;
    goto LABEL_26;
  }

  sub_100469DF8(v11);
  v28 = *v11;
  v80 = v18 + 3;
  if (v18 + 3 < v14)
  {
    v29 = *(v11 + 8);
    v78 = *(v11 + 16);
    v76 = *(v11 + 20);
    v74 = *(v11 + 22);
    swift_retain_n();
    a1 = sub_1003FC4D8(v11, v18 + 3, v14, v12, v15, v8, v13);
LABEL_31:
    v75 = a3;
    v77 = a2;
    v79 = a1;
    goto LABEL_32;
  }

  sub_1003A5228();
  v10 = swift_allocError();
  *v30 = v14;

  swift_willThrow();
  *&v102 = v10;
  swift_errorRetain();
  sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  if (swift_dynamicCast())
  {
  }

  else
  {

    *&v102 = v10;
    swift_errorRetain();
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_24;
    }

    v19 = v88;
  }

  if (v80 >= v14)
  {

    sub_1003A5228();
    v10 = swift_allocError();
    *v31 = v14;
    swift_willThrow();
LABEL_24:

    goto LABEL_25;
  }

  sub_10046B71C(0x6C696EuLL, 0xE300000000000000, 0, 0, v11, v80, v14);
  v10 = 0;
  v44 = sub_100266C9C(_swiftEmptyArrayStorage);
  v77 = v45;
  v79 = v44;
  v75 = v46;
LABEL_32:

  v47 = *v11;
  v48 = *(v11 + 8);
  v72 = *(v11 + 20);
  v73 = *(v11 + 16);
  v49 = v18 + 4;
  v71 = *(v11 + 22);
  if (v49 >= v14)
  {
    sub_1003A5228();
    v10 = swift_allocError();
    *v50 = v14;
  }

  else
  {

    sub_100469DF8(v11);
    if (!v10)
    {
      v59 = *v11;
      v60 = *(v11 + 8);
      v70 = *(v11 + 16);
      v69 = *(v11 + 20);
      v68 = *(v11 + 22);

      sub_10046B71C(0x6C696EuLL, 0xE300000000000000, 0, 0, v11, v49, v14);

      v61 = sub_10046F674(v11, v80, v14, v12, v15, v8, v13);
      v63 = v62;
      v65 = v64;
      v67 = v66;

      v102 = 0uLL;
      v103 = 0uLL;
      *&v104 = 0;
      *(&v104 + 1) = v61;
      *&v105 = v63;
      *(&v105 + 1) = v65;
      *&v106 = v67;
      v110 = 0;
      v111 = 0;
      v112 = 0;
      v113 = 0;
      v114 = 0;
      v115 = v61;
      v116 = v63;
      v117 = v65;
      v118 = v67;
      sub_1003E2704(&v102, &v95);
      sub_1003E273C(&v110);
      v58 = *(&v102 + 1);
      v125 = v102;
      v52 = *(&v103 + 1);
      v51 = v103;
      v54 = *(&v104 + 1);
      v53 = v104;
      v56 = *(&v105 + 1);
      v55 = v105;
      v57 = v106;
      goto LABEL_38;
    }
  }

  swift_willThrow();
  v32 = v86;
  *v11 = v47;
  *(v11 + 8) = v48;
  *(v11 + 16) = v73;
  *(v11 + 20) = v72;
  *(v11 + 22) = v71;
  swift_willThrow();
  *&v102 = v10;
  swift_errorRetain();
  sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  if (swift_dynamicCast())
  {

    v125 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 1;
LABEL_38:
    v96 = xmmword_1004B1230;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    *&v100 = 0;
    sub_100025F40(&v96, &qword_1005DBCD8, &qword_1004FE5F0);
    *&v102 = v79;
    *(&v102 + 1) = v77;
    *&v103 = v75;
    *(&v103 + 1) = v125;
    *&v104 = v58;
    *(&v104 + 1) = v51;
    *&v105 = v52;
    *(&v105 + 1) = v53;
    *&v106 = v54;
    *(&v106 + 1) = v55;
    *&v107 = v56;
    *(&v107 + 1) = v57;
    v110 = v79;
    v111 = v77;
    v112 = v75;
    v113 = v125;
    v114 = v58;
    v115 = v51;
    v116 = v52;
    v117 = v53;
    v118 = v54;
    v119 = v55;
    v120 = v56;
    v121 = v57;
    sub_100400058(&v102, &v95);
    sub_1004000B4(&v110);
    v125 = v102;
    v92 = v103;
    v94 = *(&v102 + 1);
    v89 = *(&v103 + 1);
    v34 = *(&v104 + 1);
    v33 = v104;
    v36 = *(&v105 + 1);
    v35 = v105;
    v38 = *(&v106 + 1);
    v37 = v106;
    v40 = *(&v107 + 1);
    v39 = v107;
    goto LABEL_28;
  }

  v19 = v88;
LABEL_26:
  swift_willThrow();
  *v11 = v32;
  *(v11 + 8) = v17;
  *(v11 + 16) = v84;
  *(v11 + 20) = v83;
  *(v11 + 22) = v82;
  swift_willThrow();
  *&v102 = v10;
  swift_errorRetain();
  sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  if (!swift_dynamicCast())
  {

    goto LABEL_9;
  }

  v125 = 0;
  v92 = 0;
  v94 = 0;
  v89 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
LABEL_28:
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v97 = 0u;
  v96 = 0u;
  sub_100025F40(&v96, &qword_1005DBCC8, &qword_1004FE5E0);
  *&v102 = v87;
  *(&v102 + 1) = v81;
  *&v103 = v85;
  *(&v103 + 1) = v125;
  *&v104 = v94;
  *(&v104 + 1) = v92;
  *&v105 = v89;
  *(&v105 + 1) = v33;
  *&v106 = v34;
  *(&v106 + 1) = v35;
  *&v107 = v36;
  *(&v107 + 1) = v37;
  *&v108 = v38;
  *(&v108 + 1) = v39;
  v109 = v40;
  v110 = v87;
  v111 = v81;
  v112 = v85;
  v113 = v125;
  v114 = v94;
  v115 = v92;
  v116 = v89;
  v117 = v33;
  v118 = v34;
  v119 = v35;
  v120 = v36;
  v121 = v37;
  v122 = v38;
  v123 = v39;
  v124 = v40;
  sub_100259A40(&v102, &v95);
  result = sub_100267AA8(&v110);
  v41 = v107;
  *(v90 + 64) = v106;
  *(v90 + 80) = v41;
  *(v90 + 96) = v108;
  *(v90 + 112) = v109;
  v42 = v103;
  *v90 = v102;
  *(v90 + 16) = v42;
  v43 = v105;
  *(v90 + 32) = v104;
  *(v90 + 48) = v43;
  return result;
}

void sub_1003F77A0(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a3;
  sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (v4)
  {
    return;
  }

  sub_10046CFC0(a1, a2, v5);
  v10 = v9;
  v11 = 0;
  v67 = a2 + 1;
  v12 = __OFADD__(a2, 1);
  v95 = v12;
  v64 = 1;
  v69 = a2;
  while (1)
  {

    v13 = *(a1 + 8);
    if (*(a1 + 12) == v13)
    {
LABEL_60:
      sub_1003A5324();
      swift_allocError();
LABEL_58:
      swift_willThrow();
      return;
    }

    v14 = a4;
    v15 = v11;
    v16 = *(a1 + 22);
    v17 = *(a1 + 20);
    v18 = *a1;
    swift_beginAccess();
    if (v13 == -1)
    {
      goto LABEL_80;
    }

    v19 = v15 + (HIDWORD(v10) - v10) + 1;
    LODWORD(v16) = *(*(v18 + 24) + (v16 | (v17 << 8)) + v13);
    *(a1 + 8) = v13 + 1;
    if (v16 > 40)
    {
      a4 = v14;
      if (v16 == 41)
      {
        v26 = v64 - 1;
        if (__OFSUB__(v64, 1))
        {
          goto LABEL_82;
        }

        --v64;
        v22 = v69;
        if (v26 <= 0)
        {
          sub_1000519B0(&v73);
          v55 = v82;
          *(v14 + 128) = v81;
          *(v14 + 144) = v55;
          *(v14 + 160) = v83;
          *(v14 + 176) = v84;
          v56 = v78;
          *(v14 + 64) = v77;
          *(v14 + 80) = v56;
          v57 = v80;
          *(v14 + 96) = v79;
          *(v14 + 112) = v57;
          v58 = v74;
          *v14 = v73;
          *(v14 + 16) = v58;
          v59 = v76;
          *(v14 + 32) = v75;
          *(v14 + 48) = v59;
          return;
        }

        v11 = v19;
        v21 = 0;
      }

      else
      {
        if (v16 != 123)
        {
LABEL_67:
          *&v73 = 0;
          *(&v73 + 1) = 0xE000000000000000;
          sub_1004A6724(36);

          *&v73 = 0xD000000000000010;
          *(&v73 + 1) = 0x80000001004B07E0;
          LOBYTE(v87) = v16;
          v99._countAndFlagsBits = sub_1004A6CE4();
          sub_1004A5994(v99);

          v100._countAndFlagsBits = 0xD000000000000012;
          v100._object = 0x80000001004B0800;
          sub_1004A5994(v100);
          v53 = v73;
          sub_1003A527C();
          swift_allocError();
          *v54 = v53;
          *(v54 + 16) = 0xD000000000000020;
          *(v54 + 24) = 0x80000001004B03C0;
          *(v54 + 32) = 130;
          goto LABEL_58;
        }

        v11 = v19;
        v22 = v69;
        v23 = sub_10046C278(a1, v69, v5, 1);
        v24 = v23;
        if ((v23 & 0x8000000000000000) != 0)
        {
          sub_1003A527C();
          swift_allocError();
          *v60 = 0xD000000000000011;
          v60[1] = 0x80000001004B08A0;
          v60[2] = 0xD000000000000020;
          v60[3] = 0x80000001004B03C0;
          v60[4] = 202;
LABEL_71:
          swift_willThrow();
          sub_1003A527C();
          swift_allocError();
          *v62 = 0xD000000000000022;
          v62[1] = 0x80000001004B0870;
          v62[2] = 0xD000000000000020;
          v62[3] = 0x80000001004B03C0;
          v62[4] = 115;
          swift_willThrow();

          return;
        }

        v25 = (200000 - v11) & ~((200000 - v11) >> 63);
        if (v25 < v23)
        {
          sub_1003FF690();
          swift_allocError();
          *v61 = v24;
          v61[1] = v25;
          goto LABEL_71;
        }

        sub_10046B71C(0x7DuLL, 0xE100000000000000, 0, 0, a1, v69, v5);
        sub_100464188(a1, v69, v5);
        if (!ByteBuffer.readSlice(length:)(v24))
        {
          goto LABEL_60;
        }

        v21 = 0;
      }
    }

    else
    {
      a4 = v14;
      if (v16 == 34)
      {
        v21 = 1;
        v22 = v69;
        v11 = v19;
      }

      else
      {
        if (v16 != 40)
        {
          goto LABEL_67;
        }

        v20 = __OFADD__(v64++, 1);
        if (v20)
        {
          goto LABEL_83;
        }

        v11 = v19;
        v21 = 0;
        v22 = v69;
      }
    }

    v65 = v5;
    v66 = a4;
    if (v11 >= 200000)
    {
      goto LABEL_61;
    }

LABEL_24:
    if (v21)
    {
      break;
    }

    sub_10046CFC0(a1, v22, v5);
    v10 = v47;
  }

  if (v95)
  {
    __break(1u);
    goto LABEL_73;
  }

  if (v67 >= v5)
  {
    sub_1003A5228();
    swift_allocError();
    *v49 = v5;
    goto LABEL_58;
  }

  v28 = *(a1 + 8);
  v27 = *(a1 + 12);
  if (v27 < v28)
  {
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v68 = v11;
  v16 = *(a1 + 16);
  v29 = *(a1 + 20);
  v30 = *(a1 + 22);
  v71 = v30 | (v29 << 8);
  if (v16 - v71 < v27)
  {
    goto LABEL_74;
  }

  v31 = *a1;
  *&v73 = *a1;
  *(&v73 + 1) = __PAIR64__(v27, v28);
  LODWORD(v74) = v16;
  v72 = v29;
  WORD2(v74) = v29;
  v70 = v30;
  BYTE6(v74) = v30;
  *(&v74 + 1) = v28;
  *&v75 = v27;
  v32 = v28;
  while (1)
  {
    if (v27 == v32)
    {
      swift_retain_n();
      sub_1003A52D0(&v73);
      sub_1003A5324();
      swift_allocError();
      swift_willThrow();

      *a1 = v31;
      *(a1 + 8) = v28;
      *(a1 + 12) = v27;
      *(a1 + 16) = v16;
      *(a1 + 20) = v72;
      *(a1 + 22) = v70;
      goto LABEL_58;
    }

    if (v32 < DWORD2(v73))
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    if ((v32 - DWORD2(v73)) >= (HIDWORD(v73) - DWORD2(v73)))
    {
      goto LABEL_65;
    }

    v33 = v73;
    v34 = WORD2(v74);
    v35 = BYTE6(v74);
    swift_beginAccess();
    v36 = *(*(v33 + 24) + (v35 | (v34 << 8)) + v32);
    if (v36 == 34 || v36 == 92)
    {
      break;
    }

    v20 = __OFADD__(v32++, 1);
    if (v20)
    {
      goto LABEL_66;
    }
  }

  v37 = v31;
  swift_retain_n();
  sub_1003A52D0(&v73);
  v87 = v31;
  v88 = v28;
  v89 = v27;
  v90 = v16;
  v91 = v72;
  v92 = v70;
  v93 = v28;
  v94 = v27;

  sub_1003A52D0(&v87);
  v20 = __OFSUB__(v32, v93);
  v38 = v32 - v93;
  if (v20)
  {
    goto LABEL_75;
  }

  if (v27 < v38 || (v27 - v38) < v28)
  {
    goto LABEL_76;
  }

  if (__CFADD__(v71, v28))
  {
    goto LABEL_77;
  }

  if ((v71 + v28) >> 24)
  {
    v63 = v63 & 0xFF00000000000000 | v16 | (v72 << 32) | (v70 << 48);
    ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(v28, v38, v31);
    v40 = v39;

    v41 = HIDWORD(v40);
  }

  else
  {

    LODWORD(v40) = 0;
    LODWORD(v41) = v38;
  }

  v42 = v28 + v38;
  if (__CFADD__(v28, v38))
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  *(a1 + 8) = v42;
  v5 = v65;
  a4 = v66;
  if (v27 == v42)
  {
    goto LABEL_60;
  }

  swift_beginAccess();
  v43 = v42 + 1;
  if (v42 == -1)
  {
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v11 = v68 + (v41 - v40) + 1;
  v44 = *(*(v37 + 24) + v71 + v42);
  *(a1 + 8) = v43;
  if (v44 == 34)
  {
    v21 = 0;
LABEL_54:
    v22 = v69;
    if (v11 < 200000)
    {
      goto LABEL_24;
    }

LABEL_61:
    sub_1003A527C();
    swift_allocError();
    *v48 = 0xD000000000000017;
    v48[1] = 0x80000001004B0820;
    v48[2] = 0xD000000000000020;
    v48[3] = 0x80000001004B03C0;
    v48[4] = 89;
    swift_willThrow();
  }

  else
  {
    if (v44 != 92)
    {
      v85 = 0;
      v86 = 0xE000000000000000;
      sub_1004A6724(50);

      v85 = 0xD000000000000010;
      v86 = 0x80000001004B07E0;
      v96 = v44;
      v97._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v97);

      v98._object = 0x80000001004B0840;
      v98._countAndFlagsBits = 0xD000000000000020;
      sub_1004A5994(v98);
      v50 = v85;
      v51 = v86;
      sub_1003A527C();
      swift_allocError();
      *v52 = v50;
      v52[1] = v51;
      v52[2] = 0xD000000000000020;
      v52[3] = 0x80000001004B03C0;
      v52[4] = 152;
      swift_willThrow();
      return;
    }

    if (v27 == v43)
    {
      goto LABEL_60;
    }

    v45 = __CFADD__(v43, 1);
    v46 = v43 + 1;
    if (!v45)
    {
      *(a1 + 8) = v46;
      ++v11;
      v21 = 1;
      goto LABEL_54;
    }

LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
  }
}

uint64_t sub_1003F80CC(unint64_t a1, uint64_t a2, int64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, int64_t a7, uint64_t a8)
{
  v14 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v14 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v28 = a3;
  }

  else
  {
    v21 = *a1;
    v22 = *(a1 + 8);
    v23 = *(a1 + 16);
    v42 = *(a1 + 22);
    v43 = *(a1 + 20);

    v24 = sub_10041F1D8(a1, v14, a3, a5, a6, a7, a8);
    if (!v8)
    {
      v11 = v25;
      v10 = v26;
      v14 = v24;

      v12 = 0;
      goto LABEL_17;
    }

    v27 = *a1;

    *a1 = v21;
    *(a1 + 8) = v22;
    *(a1 + 16) = v23;
    *(a1 + 20) = v43;
    *(a1 + 22) = v42;
  }

  swift_willThrow();
  swift_errorRetain();
  sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  if (swift_dynamicCast())
  {
  }

  else
  {

    swift_errorRetain();
    if ((swift_dynamicCast() & 1) == 0)
    {
    }
  }

  if (v14 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v36 = a3;
    return swift_willThrow();
  }

  v29 = *a1;
  v30 = *(a1 + 8);
  v31 = *(a1 + 16);
  v32 = *(a1 + 20);
  v33 = *(a1 + 22);

  v34 = sub_10046C278(a1, v14, a3, 1);
  if ((v34 & 0x8000000000000000) != 0)
  {
    sub_1003A527C();
    swift_allocError();
    *v41 = 0xD000000000000011;
    v41[1] = 0x80000001004B08A0;
    v41[2] = 0xD000000000000020;
    v41[3] = 0x80000001004B03C0;
    v41[4] = 202;
    swift_willThrow();
    v35 = *a1;

    *a1 = v29;
    *(a1 + 8) = v30;
    *(a1 + 16) = v31;
    *(a1 + 20) = v32;
    *(a1 + 22) = v33;
    return swift_willThrow();
  }

  v14 = v34;

  v11 = 0;
  v10 = 0;
  v12 = 1;
LABEL_17:
  v13 = a4;
  v9 = *a4;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_23:
    result = sub_100461108(0, *(v9 + 16) + 1, 1, v9);
    v9 = result;
  }

  v39 = *(v9 + 16);
  v38 = *(v9 + 24);
  if (v39 >= v38 >> 1)
  {
    result = sub_100461108((v38 > 1), v39 + 1, 1, v9);
    v9 = result;
  }

  *(v9 + 16) = v39 + 1;
  v40 = v9 + 24 * v39;
  *(v40 + 32) = v14;
  *(v40 + 40) = v11;
  *(v40 + 54) = BYTE6(v10);
  *(v40 + 52) = WORD2(v10);
  *(v40 + 48) = v10;
  *(v40 + 55) = v12;
  *v13 = v9;
  return result;
}

uint64_t sub_1003F8478(unint64_t a1, uint64_t a2, int64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, int64_t a7, uint64_t a8)
{
  result = sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v8)
  {
    result = sub_1003F8884(a1, a2, a3, a4, a5, a6, a7, a8);
    v34 = a8;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else
    {
      v18 = *a1;
      v19 = *(a1 + 8);
      v20 = *(a1 + 16);
      v30 = *(a1 + 22);
      v32 = *(a1 + 20);
      v35 = a2;
      if (a2 + 1 < a3)
      {
        swift_retain_n();
        sub_100469DF8(a1);
        while (1)
        {

          v23 = *a1;
          v24 = *(a1 + 8);
          v28 = *(a1 + 20);
          v29 = *(a1 + 16);
          v27 = *(a1 + 22);

          sub_1003F80CC(a1, v35, a3, a4, a5, a6, a7, v34);

          v21 = *a1;
          v22 = *(a1 + 8);
          LODWORD(v23) = *(a1 + 16);
          v31 = *(a1 + 22);
          v33 = *(a1 + 20);
          swift_retain_n();
          sub_100469DF8(a1);
        }
      }

      sub_1003A5228();
      swift_allocError();
      *v25 = a3;

      swift_willThrow();
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {
        v26 = *a1;

        *a1 = v18;
        *(a1 + 8) = v19;
        *(a1 + 16) = v20;
        *(a1 + 20) = v32;
        *(a1 + 22) = v30;

        sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_1003F8884(unint64_t a1, uint64_t a2, int64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, int64_t a7, uint64_t a8)
{
  v17 = *a1;
  v18 = *(a1 + 8);
  v22 = *(a1 + 20);
  v23 = *(a1 + 16);
  v21 = *(a1 + 22);

  sub_1003F80CC(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!v8)
  {
  }

  swift_errorRetain();
  sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  if (swift_dynamicCast())
  {
    v19 = *a1;

    *a1 = v17;
    *(a1 + 8) = v18;
    *(a1 + 16) = v23;
    *(a1 + 20) = v22;
    *(a1 + 22) = v21;

    sub_1003F8478(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_1003F8A18@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v20 = a3;
      return swift_willThrow();
    }

    v11 = result;
    v12 = *result;
    v13 = *(result + 8);
    v14 = *(result + 16);
    v24 = *(result + 22);
    v25 = *(result + 20);

    sub_1003F8B6C(v11, v9, a3, a4, a5, a6, a7, v26);
    if (v8)
    {
      v19 = *v11;

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v25;
      *(v11 + 22) = v24;
      return swift_willThrow();
    }

    v21 = v26[3];
    *(a8 + 32) = v26[2];
    *(a8 + 48) = v21;
    *(a8 + 64) = v26[4];
    *(a8 + 80) = v27;
    v22 = v26[1];
    *a8 = v26[0];
    *(a8 + 16) = v22;
  }

  return result;
}

uint64_t sub_1003F8B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v11 = a5;
  result = sub_10041F1D8(a1, a2, a3, a4, a5, a6, a7);
  if (!v8)
  {
    v64 = a8;
    if (result)
    {
      v61 = v11;
      v20 = v18;
      v21 = v19;

      v23 = sub_10046C184(v22, v20, v21 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001004B03C0, 231);
      v25 = v24;

      v60 = v23;
      v11 = v61;
    }

    else
    {
      v60 = 0;
      v25 = 0;
    }

    v26 = __OFADD__(a2, 1);
    v27 = a2 + 1;
    if (v26)
    {
      __break(1u);
    }

    else
    {
      v63 = v25;
      if (v27 >= a3)
      {
        sub_1003A5228();
        v29 = swift_allocError();
        *v30 = a3;
      }

      else
      {
        v28 = *(a1 + 8);
        v57 = *(a1 + 20);
        v58 = *(a1 + 16);
        v56 = *(a1 + 22);
        v59 = *a1;
        if (v27 + 1 < a3)
        {

          sub_100469DF8(a1);
          v62 = v11;
          v35 = *a1;
          v36 = *(a1 + 8);
          v37 = *(a1 + 16);
          v55 = *(a1 + 20);
          v54 = *(a1 + 22);

          sub_10046B71C(0x6C696EuLL, 0xE300000000000000, 0, 0, a1, v27 + 1, a3);
          v85 = 0;

          v38 = sub_10046F674(a1, v27, a3, a4, v62, a6, a7);
          v40 = v39;
          v42 = v41;
          v44 = v43;

          v68 = 0uLL;
          v69 = 0uLL;
          *&v70 = 0;
          *(&v70 + 1) = v38;
          *&v71 = v40;
          *(&v71 + 1) = v42;
          *&v72 = v44;
          v74 = 0;
          v75 = 0;
          v76 = 0;
          v77 = 0;
          v78 = 0;
          v79 = v38;
          v80 = v40;
          v81 = v42;
          v82 = v44;
          sub_1003E2704(&v68, v65);
          sub_1003E273C(&v74);
          v46 = *(&v68 + 1);
          v45 = v68;
          v48 = *(&v69 + 1);
          v47 = v69;
          v50 = *(&v70 + 1);
          v49 = v70;
          v52 = *(&v71 + 1);
          v51 = v71;
          v53 = v72;
LABEL_13:
          v66[0] = xmmword_1004B1230;
          memset(&v66[1], 0, 48);
          v67 = 0;
          sub_100025F40(v66, &qword_1005DBCD8, &qword_1004FE5F0);
          *&v68 = v60;
          *(&v68 + 1) = v63;
          *&v69 = v45;
          *(&v69 + 1) = v46;
          *&v70 = v47;
          *(&v70 + 1) = v48;
          *&v71 = v49;
          *(&v71 + 1) = v50;
          *&v72 = v51;
          *(&v72 + 1) = v52;
          v73 = v53;
          v74 = v60;
          v75 = v63;
          v76 = v45;
          v77 = v46;
          v78 = v47;
          v79 = v48;
          v80 = v49;
          v81 = v50;
          v82 = v51;
          v83 = v52;
          v84 = v53;
          sub_1003FF7C8(&v68, v65);
          result = sub_1003FF824(&v74);
          v33 = v71;
          *(v64 + 32) = v70;
          *(v64 + 48) = v33;
          *(v64 + 64) = v72;
          *(v64 + 80) = v73;
          v34 = v69;
          *v64 = v68;
          *(v64 + 16) = v34;
          return result;
        }

        sub_1003A5228();
        v31 = swift_allocError();
        *v32 = a3;
        v85 = v31;
        swift_willThrow();
        *a1 = v59;
        *(a1 + 8) = v28;
        *(a1 + 16) = v58;
        *(a1 + 20) = v57;
        *(a1 + 22) = v56;
        v29 = v85;
      }

      swift_willThrow();
      *&v68 = v29;
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {

        v45 = 0;
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v50 = 0;
        v51 = 0;
        v52 = 0;
        v53 = 0;
        v85 = 0;
        v46 = 1;
        goto LABEL_13;
      }
    }
  }

  return result;
}

uint64_t sub_1003F9178(uint64_t result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v10 = result;
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v20 = a3;
    }

    else
    {
      v11 = *result;
      v12 = *(result + 8);
      v13 = *(result + 16);
      v28 = *(result + 22);
      v29 = *(result + 20);

      v18 = sub_1003FC4D8(v10, v8, a3, a4, a5, a6, a7);
      if (!v7)
      {
LABEL_14:
        v21 = v18;

        return v21;
      }

      v19 = *v10;

      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v13;
      *(v10 + 20) = v29;
      *(v10 + 22) = v28;
    }

    swift_willThrow();
    swift_errorRetain();
    v21 = sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {

        return v21;
      }

      v21 = v30;
    }

    if (v8 < a3)
    {
      v22 = *v10;
      v23 = *(v10 + 8);
      v24 = *(v10 + 16);
      v25 = *(v10 + 20);
      v26 = *(v10 + 22);

      sub_10046B71C(0x6C696EuLL, 0xE300000000000000, 0, 0, v10, v8, a3);
      v18 = sub_100266C9C(_swiftEmptyArrayStorage);
      goto LABEL_14;
    }

    sub_1003A5228();
    swift_allocError();
    *v27 = a3;
    swift_willThrow();
    return v21;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003F9428@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v20 = a3;
      return swift_willThrow();
    }

    v11 = result;
    v12 = *result;
    v13 = *(result + 8);
    v14 = *(result + 16);
    v24 = *(result + 22);
    v25 = *(result + 20);

    sub_1003F956C(v11, v9, a3, a4, a5, a6, a7, v26);
    if (v8)
    {
      v19 = *v11;

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v25;
      *(v11 + 22) = v24;
      return swift_willThrow();
    }

    v21 = v26[3];
    a8[2] = v26[2];
    a8[3] = v21;
    a8[4] = v26[4];
    v22 = v26[1];
    *a8 = v26[0];
    a8[1] = v22;
  }

  return result;
}

uint64_t sub_1003F956C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  result = sub_1003F9178(a1, a2, a3, a4, a5, a6, a7);
  if (!v8)
  {
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else
    {
      v70 = v19;
      v71 = v18;
      v72 = result;
      if (a2 + 1 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v22 = a3;
LABEL_6:
        swift_willThrow();
      }

      v63 = a8;
      v69 = *a1;
      v20 = *(a1 + 8);
      v21 = *(a1 + 16);
      v68 = *(a1 + 20);
      v65 = *(a1 + 22);
      sub_100469DF8(a1);
      if (sub_10041F1D8(a1, a2, a3, a4, a5, a6, a7))
      {
        v26 = v24;
        v27 = v25;

        v29 = sub_10046C184(v28, v26, v27 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001004B03C0, 264);
        v31 = v30;
        v56 = v29;

        v32 = v31;
      }

      else
      {
        v56 = 0;
        v32 = 0;
      }

      v33 = *a1;
      v34 = *(a1 + 8);
      v66 = *(a1 + 16);
      v61 = *(a1 + 20);
      v58 = *(a1 + 22);

      sub_100469DF8(a1);

      v64 = v32;
      if (sub_10041F1D8(a1, a2, a3, a4, a5, a6, a7))
      {
        v37 = v35;
        v38 = v36;

        v54 = sub_10046C184(v39, v37, v38 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001004B03C0, 269);
        v41 = v40;
      }

      else
      {
        v54 = 0;
        v41 = 0;
      }

      v42 = *a1;
      v43 = *(a1 + 8);
      v62 = *(a1 + 16);
      v59 = *(a1 + 20);
      v55 = *(a1 + 22);

      sub_100469DF8(a1);

      v60 = v41;
      v57 = sub_1003F9B6C(a1, a2, a3, a4, a5, a6, a7);
      v67 = v44;
      v45 = *a1;
      v46 = *(a1 + 8);
      v47 = *(a1 + 16);
      v48 = *(a1 + 20);
      v49 = *(a1 + 22);

      sub_100469DF8(a1);
      a8 = 0;
    }

    v50 = sub_10046C278(a1, a2, a3, 1);
    if (a8)
    {
    }

    if ((v50 & 0x8000000000000000) == 0)
    {
      *&v74 = v72;
      *(&v74 + 1) = v71;
      *&v75 = v70;
      *(&v75 + 1) = v56;
      *&v76 = v64;
      *(&v76 + 1) = v54;
      *&v77 = v60;
      *(&v77 + 1) = v57;
      *&v78 = v67;
      *(&v78 + 1) = v50;
      v79[0] = v72;
      v79[1] = v71;
      v79[2] = v70;
      v79[3] = v56;
      v79[4] = v64;
      v79[5] = v54;
      v79[6] = v60;
      v79[7] = v57;
      v79[8] = v67;
      v79[9] = v50;
      sub_1003F088C(&v74, v73);
      result = sub_1003F08C4(v79);
      v51 = v77;
      v63[2] = v76;
      v63[3] = v51;
      v63[4] = v78;
      v52 = v75;
      *v63 = v74;
      v63[1] = v52;
      return result;
    }

    sub_1003A527C();
    swift_allocError();
    *v53 = 0xD000000000000011;
    v53[1] = 0x80000001004B08A0;
    v53[2] = 0xD000000000000020;
    v53[3] = 0x80000001004B03C0;
    v53[4] = 202;
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1003F9B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_10000C9C0(&qword_1005DC788, &qword_100504110);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004D0FC0;
  *(inited + 32) = sub_1003FA0D8;
  *(inited + 40) = 0;
  *(inited + 48) = sub_1003FA0FC;
  *(inited + 56) = 0;
  *(inited + 64) = sub_1003FA120;
  *(inited + 72) = 0;
  *(inited + 80) = sub_1003FA148;
  *(inited + 88) = 0;
  *(inited + 96) = sub_1003FA260;
  *(inited + 104) = 0;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1003FFEA8;
  *(v15 + 24) = v14;
  *(inited + 112) = sub_1003FFEC8;
  *(inited + 120) = v15;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1003FFEE0;
  *(v17 + 24) = v16;
  *(inited + 128) = sub_100400390;
  *(inited + 136) = v17;
  swift_retain_n();
  v18 = sub_1003FA354(inited, a1, a2, a3, 0xD000000000000020, 0x80000001004B03C0, 381);
  swift_setDeallocating();
  sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
  swift_arrayDestroy();
  return v18;
}

uint64_t sub_1003F9DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  result = sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v8)
  {
    v18 = sub_10041F498(a1, a2, a3, a4, a5, a6, a7);
    sub_10046C184(v18, v20, v19 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001004B03C0, 301);
    v34 = sub_1004A5814();
    v35 = v21;

    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {

      sub_1003A5228();
      swift_allocError();
      *v23 = a3;
      swift_willThrow();
    }

    else
    {
      v22 = *(a1 + 8);
      v31 = *(a1 + 20);
      v32 = *(a1 + 16);
      v30 = *(a1 + 22);
      v33 = *a1;

      sub_100469DF8(a1);

      v24 = sub_1003F9178(a1, a2, a3, a4, a5, a6, a7);
      v26 = v25;
      v28 = v27;
      v29 = v24;
      sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, a1, a2, a3);

      *a8 = v34;
      a8[1] = v35;
      a8[2] = v29;
      a8[3] = v26;
      a8[4] = v28;
    }
  }

  return result;
}

uint64_t sub_1003FA038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7)
{
  v9 = sub_10041F498(a1, a2, a3, a4, a5, a6, a7);
  if (!v8)
  {
    sub_10046C184(v9, v10, v11 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001004B03C0, 325);
    v7 = sub_1004A5834();
  }

  return v7;
}

uint64_t sub_1003FA170@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *a2;
  v11 = a2[1];
  v12 = sub_1004A5834();
  v14 = v13;
  sub_10046B71C(0x22uLL, 0xE100000000000000, 0, 0, a1, v10, v11);
  if (v5)
  {
  }

  sub_10046B71C(a3, a4, 0, 0, a1, v10, v11);
  result = sub_10046B71C(0x22uLL, 0xE100000000000000, 0, 0, a1, v10, v11);
  *a5 = v12;
  a5[1] = v14;
  return result;
}

uint64_t sub_1003FA260@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = sub_1004A5834();
  v10 = v9;
  sub_10046B71C(0x22uLL, 0xE100000000000000, 0, 0, a1, v6, v7);
  if (v3)
  {
  }

  sub_10046B71C(0xD000000000000010, 0x80000001004AD7B0, 0, 0, a1, v6, v7);
  result = sub_10046B71C(0x22uLL, 0xE100000000000000, 0, 0, a1, v6, v7);
  *a3 = v8;
  a3[1] = v10;
  return result;
}

uint64_t sub_1003FA354(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(result + 16);
  if (!v8)
  {
LABEL_13:
    sub_1003A527C();
    swift_allocError();
    *v21 = 0xD000000000000019;
    v21[1] = 0x80000001004B08C0;
    v21[2] = a5;
    v21[3] = a6;
    v21[4] = a7;
    swift_willThrow();
  }

  v27 = a3 + 1;
  if (!__OFADD__(a3, 1))
  {
    v9 = v7;
    v12 = (result + 32);
    while (1)
    {
      *(swift_allocObject() + 16) = *v12;
      if (v27 >= a4)
      {
        sub_1003A5228();
        v9 = swift_allocError();
        *v20 = a4;
      }

      else
      {
        v25 = v12;
        v26 = v8;
        v13 = *a2;
        v14 = *(a2 + 8);
        v15 = *(a2 + 16);
        v16 = *(a2 + 20);
        v17 = a4;
        v18 = *(a2 + 22);

        sub_1003FFF94(a2, v27, v17, &v28);
        if (!v9)
        {

          return v28;
        }

        v19 = *a2;

        *a2 = v13;
        *(a2 + 8) = v14;
        *(a2 + 16) = v15;
        *(a2 + 20) = v16;
        *(a2 + 22) = v18;
        a4 = v17;
        v12 = v25;
        v8 = v26;
      }

      swift_willThrow();
      v29 = v9;
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v29 = v9;
        swift_errorRetain();
        if (!swift_dynamicCast())
        {
        }
      }

      v9 = 0;
      ++v12;
      if (!--v8)
      {
        goto LABEL_13;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003FA628(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(result + 16);
  if (!v8)
  {
LABEL_13:
    sub_1003A527C();
    swift_allocError();
    *v21 = 0xD000000000000019;
    v21[1] = 0x80000001004B08C0;
    v21[2] = a5;
    v21[3] = a6;
    v21[4] = a7;
    swift_willThrow();
  }

  v27 = a3 + 1;
  if (!__OFADD__(a3, 1))
  {
    v9 = v7;
    v12 = (result + 32);
    while (1)
    {
      *(swift_allocObject() + 16) = *v12;
      if (v27 >= a4)
      {
        sub_1003A5228();
        v9 = swift_allocError();
        *v20 = a4;
      }

      else
      {
        v25 = v12;
        v26 = v8;
        v13 = *a2;
        v14 = *(a2 + 8);
        v15 = *(a2 + 16);
        v16 = *(a2 + 20);
        v17 = a4;
        v18 = *(a2 + 22);

        sub_100400120(a2, v27, v17, &v28);
        if (!v9)
        {

          return v28;
        }

        v19 = *a2;

        *a2 = v13;
        *(a2 + 8) = v14;
        *(a2 + 16) = v15;
        *(a2 + 20) = v16;
        *(a2 + 22) = v18;
        a4 = v17;
        v12 = v25;
        v8 = v26;
      }

      swift_willThrow();
      v29 = v9;
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v29 = v9;
        swift_errorRetain();
        if (!swift_dynamicCast())
        {
        }
      }

      v9 = 0;
      ++v12;
      if (!--v8)
      {
        goto LABEL_13;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003FA900(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(result + 16);
  if (!v8)
  {
LABEL_13:
    sub_1003A527C();
    swift_allocError();
    *v21 = 0xD000000000000019;
    v21[1] = 0x80000001004B08C0;
    v21[2] = a5;
    v21[3] = a6;
    v21[4] = a7;
    swift_willThrow();
  }

  v27 = a3 + 1;
  if (!__OFADD__(a3, 1))
  {
    v9 = v7;
    v12 = (result + 32);
    while (1)
    {
      *(swift_allocObject() + 16) = *v12;
      if (v27 >= a4)
      {
        sub_1003A5228();
        v9 = swift_allocError();
        *v20 = a4;
      }

      else
      {
        v25 = v12;
        v26 = v8;
        v13 = *a2;
        v14 = *(a2 + 8);
        v15 = *(a2 + 16);
        v16 = *(a2 + 20);
        v17 = a4;
        v18 = *(a2 + 22);

        sub_100400108(a2, v27, v17, &v28);
        if (!v9)
        {

          return v28;
        }

        v19 = *a2;

        *a2 = v13;
        *(a2 + 8) = v14;
        *(a2 + 16) = v15;
        *(a2 + 20) = v16;
        *(a2 + 22) = v18;
        a4 = v17;
        v12 = v25;
        v8 = v26;
      }

      swift_willThrow();
      v29 = v9;
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v29 = v9;
        swift_errorRetain();
        if (!swift_dynamicCast())
        {
        }
      }

      v9 = 0;
      ++v12;
      if (!--v8)
      {
        goto LABEL_13;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003FABD4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(result + 16);
  if (!v8)
  {
LABEL_13:
    sub_1003A527C();
    swift_allocError();
    *v21 = 0xD000000000000019;
    v21[1] = 0x80000001004B08C0;
    v21[2] = a5;
    v21[3] = a6;
    v21[4] = a7;
    swift_willThrow();
  }

  v27 = a3 + 1;
  if (!__OFADD__(a3, 1))
  {
    v9 = v7;
    v12 = (result + 32);
    while (1)
    {
      *(swift_allocObject() + 16) = *v12;
      if (v27 >= a4)
      {
        sub_1003A5228();
        v9 = swift_allocError();
        *v20 = a4;
      }

      else
      {
        v25 = v12;
        v26 = v8;
        v13 = *a2;
        v14 = *(a2 + 8);
        v15 = *(a2 + 16);
        v16 = *(a2 + 20);
        v17 = a4;
        v18 = *(a2 + 22);

        sub_1004001F0(a2, v27, v17, &v28);
        if (!v9)
        {

          return v28;
        }

        v19 = *a2;

        *a2 = v13;
        *(a2 + 8) = v14;
        *(a2 + 16) = v15;
        *(a2 + 20) = v16;
        *(a2 + 22) = v18;
        a4 = v17;
        v12 = v25;
        v8 = v26;
      }

      swift_willThrow();
      v29 = v9;
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v29 = v9;
        swift_errorRetain();
        if (!swift_dynamicCast())
        {
        }
      }

      v9 = 0;
      ++v12;
      if (!--v8)
      {
        goto LABEL_13;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003FAEB0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(result + 16);
  if (!v8)
  {
LABEL_13:
    sub_1003A527C();
    swift_allocError();
    *v21 = 0xD000000000000019;
    v21[1] = 0x80000001004B08C0;
    v21[2] = a5;
    v21[3] = a6;
    v21[4] = a7;
    swift_willThrow();
  }

  v27 = a3 + 1;
  if (!__OFADD__(a3, 1))
  {
    v9 = v7;
    v12 = (result + 32);
    while (1)
    {
      *(swift_allocObject() + 16) = *v12;
      if (v27 >= a4)
      {
        sub_1003A5228();
        v9 = swift_allocError();
        *v20 = a4;
      }

      else
      {
        v25 = v12;
        v26 = v8;
        v13 = *a2;
        v14 = *(a2 + 8);
        v15 = *(a2 + 16);
        v16 = *(a2 + 20);
        v17 = a4;
        v18 = *(a2 + 22);

        sub_1004003C0(a2, v27, v17, &v28);
        if (!v9)
        {

          return v28;
        }

        v19 = *a2;

        *a2 = v13;
        *(a2 + 8) = v14;
        *(a2 + 16) = v15;
        *(a2 + 20) = v16;
        *(a2 + 22) = v18;
        a4 = v17;
        v12 = v25;
        v8 = v26;
      }

      swift_willThrow();
      v29 = v9;
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v29 = v9;
        swift_errorRetain();
        if (!swift_dynamicCast())
        {
        }
      }

      v9 = 0;
      ++v12;
      if (!--v8)
      {
        goto LABEL_13;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003FB188(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(result + 16);
  if (!v8)
  {
LABEL_13:
    sub_1003A527C();
    swift_allocError();
    *v21 = 0xD000000000000019;
    v21[1] = 0x80000001004B08C0;
    v21[2] = a5;
    v21[3] = a6;
    v21[4] = a7;
    swift_willThrow();
  }

  v27 = a3 + 1;
  if (!__OFADD__(a3, 1))
  {
    v9 = v7;
    v12 = (result + 32);
    while (1)
    {
      *(swift_allocObject() + 16) = *v12;
      if (v27 >= a4)
      {
        sub_1003A5228();
        v9 = swift_allocError();
        *v20 = a4;
      }

      else
      {
        v25 = v12;
        v26 = v8;
        v13 = *a2;
        v14 = *(a2 + 8);
        v15 = *(a2 + 16);
        v16 = *(a2 + 20);
        v17 = a4;
        v18 = *(a2 + 22);

        sub_1004003A8(a2, v27, v17, &v28);
        if (!v9)
        {

          return v28;
        }

        v19 = *a2;

        *a2 = v13;
        *(a2 + 8) = v14;
        *(a2 + 16) = v15;
        *(a2 + 20) = v16;
        *(a2 + 22) = v18;
        a4 = v17;
        v12 = v25;
        v8 = v26;
      }

      swift_willThrow();
      v29 = v9;
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v29 = v9;
        swift_errorRetain();
        if (!swift_dynamicCast())
        {
        }
      }

      v9 = 0;
      ++v12;
      if (!--v8)
      {
        goto LABEL_13;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003FB45C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(result + 16);
  if (!v8)
  {
LABEL_13:
    sub_1003A527C();
    swift_allocError();
    *v21 = 0xD000000000000019;
    v21[1] = 0x80000001004B08C0;
    v21[2] = a5;
    v21[3] = a6;
    v21[4] = a7;
    swift_willThrow();
  }

  v27 = a3 + 1;
  if (!__OFADD__(a3, 1))
  {
    v9 = v7;
    v12 = (result + 32);
    while (1)
    {
      *(swift_allocObject() + 16) = *v12;
      if (v27 >= a4)
      {
        sub_1003A5228();
        v9 = swift_allocError();
        *v20 = a4;
      }

      else
      {
        v25 = v12;
        v26 = v8;
        v13 = *a2;
        v14 = *(a2 + 8);
        v15 = *(a2 + 16);
        v16 = *(a2 + 20);
        v17 = a4;
        v18 = *(a2 + 22);

        sub_1004003A8(a2, v27, v17, &v28);
        if (!v9)
        {

          return v28;
        }

        v19 = *a2;

        *a2 = v13;
        *(a2 + 8) = v14;
        *(a2 + 16) = v15;
        *(a2 + 20) = v16;
        *(a2 + 22) = v18;
        a4 = v17;
        v12 = v25;
        v8 = v26;
      }

      swift_willThrow();
      v29 = v9;
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v29 = v9;
        swift_errorRetain();
        if (!swift_dynamicCast())
        {
        }
      }

      v9 = 0;
      ++v12;
      if (!--v8)
      {
        goto LABEL_13;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003FB730(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(result + 16);
  if (!v8)
  {
LABEL_13:
    sub_1003A527C();
    swift_allocError();
    *v21 = 0xD000000000000019;
    v21[1] = 0x80000001004B08C0;
    v21[2] = a5;
    v21[3] = a6;
    v21[4] = a7;
    swift_willThrow();
  }

  v27 = a3 + 1;
  if (!__OFADD__(a3, 1))
  {
    v9 = v7;
    v12 = (result + 32);
    while (1)
    {
      *(swift_allocObject() + 16) = *v12;
      if (v27 >= a4)
      {
        sub_1003A5228();
        v9 = swift_allocError();
        *v20 = a4;
      }

      else
      {
        v25 = v12;
        v26 = v8;
        v13 = *a2;
        v14 = *(a2 + 8);
        v15 = *(a2 + 16);
        v16 = *(a2 + 20);
        v17 = a4;
        v18 = *(a2 + 22);

        sub_1004003D8(a2, v27, v17, &v28);
        if (!v9)
        {

          return v28;
        }

        v19 = *a2;

        *a2 = v13;
        *(a2 + 8) = v14;
        *(a2 + 16) = v15;
        *(a2 + 20) = v16;
        *(a2 + 22) = v18;
        a4 = v17;
        v12 = v25;
        v8 = v26;
      }

      swift_willThrow();
      v29 = v9;
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v29 = v9;
        swift_errorRetain();
        if (!swift_dynamicCast())
        {
        }
      }

      v9 = 0;
      ++v12;
      if (!--v8)
      {
        goto LABEL_13;
      }
    }
  }

  __break(1u);
  return result;
}

void *sub_1003FBA08(void *result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v13 = result;
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
    }

    else
    {
      v14 = *result;
      v15 = result[1];
      v16 = *(result + 4);
      v33 = *(result + 22);
      v34 = *(result + 10);

      v17 = sub_1003FBD94(v13, v8, a3, a4, a5, a6, a7);
      if (!v7)
      {
        a6 = v17;
LABEL_15:

        return a6;
      }

      v18 = *v13;

      *v13 = v14;
      *(v13 + 8) = v15;
      *(v13 + 16) = v16;
      *(v13 + 20) = v34;
      *(v13 + 22) = v33;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {

        return a6;
      }
    }

    if (v8 < a3)
    {
      v20 = *v13;
      v21 = *(v13 + 8);
      v22 = *(v13 + 16);
      v23 = *(v13 + 20);
      v24 = *(v13 + 22);

      v25 = sub_10041F1D8(v13, v8, a3, a4, a5, a6, a7);
      v29 = v25;
      if (!v25)
      {

        return _swiftEmptyArrayStorage;
      }

      v30 = v26;
      v31 = v27;
      sub_10000C9C0(&qword_1005CEFD8, &qword_1004D1EC0);
      a6 = swift_allocObject();
      *(a6 + 16) = xmmword_1004CEAA0;
      *(a6 + 32) = sub_10046C184(v29, v30, v31 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001004B03C0, 402);
      *(a6 + 40) = v32;

      goto LABEL_15;
    }

    sub_1003A5228();
    swift_allocError();
    *v28 = a3;
    swift_willThrow();
    return a6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003FBD94(uint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7)
{
  sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (v7)
  {
    return a5;
  }

  v15 = sub_10041F498(a1, a2, a3, a4, a5, a6, a7);
  v17 = v16;
  v51 = a5;
  v52 = a6;
  v53 = a7;
  v54 = a2;
  v18 = v15;
  v20 = v19;
  sub_10000C9C0(&qword_1005CEFD8, &qword_1004D1EC0);
  a5 = swift_allocObject();
  *(a5 + 16) = xmmword_1004CEAA0;
  result = sub_10046C184(v18, v20, v17 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001004B03C0, 409);
  *(a5 + 32) = result;
  *(a5 + 40) = v22;
  if (!__OFADD__(v54, 1))
  {
    if (v54 + 1 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v38 = a3;
    }

    else
    {
      v23 = *(a1 + 8);
      v45 = *(a1 + 20);
      v46 = *(a1 + 16);
      v44 = *(a1 + 22);
      v47 = *a1;

      if (v54 + 2 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v39 = a3;
        v40 = v47;
      }

      else
      {
        v24 = *a1;
        v25 = *(a1 + 8);
        v26 = *(a1 + 16);
        v27 = *(a1 + 20);
        v48 = *(a1 + 22);
        if (v54 + 3 < a3)
        {
          v28 = a5;
          do
          {
            v50 = v28;
            swift_retain_n();
            sub_100469DF8(a1);

            v29 = sub_10041F498(a1, v54 + 2, a3, a4, v51, v52, v53);
            v32 = sub_10046C184(v29, v31, v30 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001004B03C0, 415);
            v49 = v33;
            v34 = v32;

            v28 = v50;
            v36 = *(v50 + 2);
            v35 = *(v50 + 3);
            if (v36 >= v35 >> 1)
            {
              v28 = sub_100085070((v35 > 1), v36 + 1, 1, v50);
            }

            *(v28 + 2) = v36 + 1;
            v37 = &v28[16 * v36];
            *(v37 + 4) = v34;
            *(v37 + 5) = v49;
            v24 = *a1;
            v25 = *(a1 + 8);
            v26 = *(a1 + 16);
            v27 = *(a1 + 20);
            v48 = *(a1 + 22);
          }

          while (v54 + 3 < a3);
        }

        sub_1003A5228();
        swift_allocError();
        *v41 = a3;

        swift_willThrow();
        v40 = v47;
        v42 = *a1;

        *a1 = v24;
        *(a1 + 8) = v25;
        *(a1 + 16) = v26;
        *(a1 + 20) = v27;
        *(a1 + 22) = v48;
      }

      swift_willThrow();
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {

        sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, a1, v54, a3);

        return a5;
      }

      v43 = *a1;

      *a1 = v40;
      *(a1 + 8) = v23;
      *(a1 + 16) = v46;
      *(a1 + 20) = v45;
      *(a1 + 22) = v44;
    }

    swift_willThrow();

    return a5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003FC270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7)
{
  result = sub_10041F498(a1, a2, a3, a4, a5, a6, a7);
  if (!v7)
  {
    result = sub_10046C184(result, v16, v17 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001004B03C0, 445);
    if (__OFADD__(a2, 1))
    {
      __break(1u);
      goto LABEL_11;
    }

    if (a2 + 1 < a3)
    {
      v23 = result;
      v18 = *(a1 + 8);
      v25 = *(a1 + 20);
      v26 = *(a1 + 16);
      v24 = *(a1 + 22);
      v27 = *a1;

      sub_100469DF8(a1);

      result = sub_10041F4C4(a1, a2, a3, a4, a5, a6, a7);
      v22 = HIDWORD(v20) - v20;
      if (HIDWORD(v20) >= v20)
      {
        if (v21 - (BYTE6(v21) | (WORD2(v21) << 8)) >= HIDWORD(v20))
        {
          v29[1] = v20;
          v30 = v21;
          v31 = WORD2(v21);
          v32 = BYTE6(v21);
          v33 = v20;
          v34 = HIDWORD(v20);
          v28[0] = 0;
          v28[1] = 0xE000000000000000;
          v29[0] = result;

          sub_1004A5874(v22);
          sub_1003BB2E4(v29, v28);

          sub_1003A52D0(v29);
          return v23;
        }

        goto LABEL_12;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      __break(1u);
      return result;
    }

    sub_1003A5228();
    swift_allocError();
    *v19 = a3;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_1003FC4D8(uint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7)
{
  result = sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v7)
  {
    v26[0] = 0;
    v26[1] = _swiftEmptyArrayStorage;
    v26[2] = _swiftEmptyArrayStorage;
    v16 = sub_1003FC270(a1, a2, a3, a4, a5, a6, a7);
    result = sub_1002626BC(v18, v19, v16, v17);
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v22 = a3;

      swift_willThrow();
    }

    else
    {
      v20 = *a1;
      v21 = *(a1 + 8);
      v24 = *(a1 + 20);
      v25 = *(a1 + 16);
      v23 = *(a1 + 22);
      swift_retain_n();

      sub_100467378(a1, a2 + 1, a3, v26, a4, a5, a6, a7);

      sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
      return v26[0];
    }
  }

  return result;
}

uint64_t sub_1003FC71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  v7 = a6;
  v8 = a5;
  v11 = *v6;
  v10 = v6[1];
  v12 = *(v10 + 16);
  if (!*v6)
  {
    if (v12)
    {
      v54 = v6;
      v55 = a1;
      v52 = a2;
      v53 = a3;
      v22 = HIDWORD(a6);
      v58 = WORD2(a6);
      v23 = BYTE6(a6);
      v24 = HIDWORD(a5) - a5;
      swift_beginAccess();
      v18 = 0;
      v51 = v8;
      v25 = (v10 + 54);
      v56 = (v23 & 0xFFFFFFFFFF0000FFLL | (v22 << 8)) + v8;
      v57 = v23;
      do
      {
        v26 = *(v25 - 14);
        v27 = *(v25 - 10);
        if (v27 - v26 == v24)
        {
          v28 = *(v25 - 22);
          v29 = *(v25 - 1);
          v30 = *v25;
          v31 = *(v25 - 6) == a6 && v29 == v58;
          v32 = v31 && v30 == v57;
          v33 = v32 && v28 == a4;
          if (v33 || (swift_beginAccess(), !memcmp((*(v28 + 24) + (v30 | (v29 << 8)) + v26), (*(a4 + 24) + v56), v27 - v26)))
          {

            v12 = 0;
            v34 = v53;
            v6 = v54;
            v14 = v52;
            goto LABEL_21;
          }
        }

        v25 += 24;
        ++v18;
      }

      while (v12 != v18);
      v12 = 0;
      a3 = v53;
      v6 = v54;
      v8 = v51;
      a2 = v52;
      a1 = v55;
      v7 = a6;
    }

    goto LABEL_29;
  }

  v55 = a1;
  v13 = a3;
  v14 = a2;

  v15 = v7;
  v16 = v10 + 32;
  v17 = v8;
  v18 = sub_100475648(a4, v8, v7 & 0xFFFFFFFFFFFFFFLL, v16, v12, v11 + 16, v11 + 32);
  v20 = v19;
  v12 = v21;

  if (v20)
  {
    v8 = v17;
    v7 = v15;
    a2 = v14;
    a3 = v13;
    a1 = v55;
LABEL_29:
    if (a1 == 1)
    {
    }

    v39 = a1;
    v40 = a3;
    v41 = a2;
    sub_10046A8C4(a4, v8, v7 & 0xFFFFFFFFFFFFFFLL, v12);

    v44 = v6[2];
    v42 = v6 + 2;
    v43 = v44;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v42 = v44;
    v45 = v39;
    if ((result & 1) == 0)
    {
      result = sub_1003E551C(0, *(v43 + 16) + 1, 1);
      v43 = *v42;
    }

    v46 = v41;
    v47 = v40;
    v49 = *(v43 + 16);
    v48 = *(v43 + 24);
    if (v49 >= v48 >> 1)
    {
      result = sub_1003E551C((v48 > 1), v49 + 1, 1);
      v47 = v40;
      v46 = v41;
      v43 = *v42;
    }

    *(v43 + 16) = v49 + 1;
    v50 = v43 + 24 * v49;
    *(v50 + 32) = v45;
    *(v50 + 40) = v46;
    *(v50 + 54) = BYTE6(v47);
    *(v50 + 52) = WORD2(v47);
    *(v50 + 48) = v47;
    *v42 = v43;
    return result;
  }

  v34 = v13;
LABEL_21:
  if (v55 == 1)
  {
    sub_1003FE864(v18, v12, sub_10046B5F0, sub_100475644, sub_1003FEC78);

    sub_1003FEAF4(v18);
  }

  v35 = v6[2];
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10046B630(v35);
    v35 = result;
  }

  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v18 < *(v35 + 16))
  {
    v37 = v35 + 24 * v18;
    v38 = *(v37 + 32);
    *(v37 + 32) = v55;
    *(v37 + 40) = v14;
    *(v37 + 54) = BYTE6(v34);
    *(v37 + 52) = WORD2(v34);
    *(v37 + 48) = v34;

    v6[2] = v35;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003FCAA0(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v82 = type metadata accessor for ParameterValue();
  v10 = *(v82 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v82);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v79 = &v75 - v15;
  __chkstk_darwin(v16);
  v77 = &v75 - v17;
  __chkstk_darwin(v18);
  v78 = &v75 - v19;
  v20 = sub_10000C9C0(&qword_1005DC790, &unk_10050A070);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v24 = &v75 - v22;
  v25 = *v5;
  v26 = v5[1];
  v27 = *(v26 + 16);
  v83 = v10;
  v80 = v13;
  v81 = a3;
  v89 = a4;
  if (v25)
  {
    v28 = v23;
    v29 = &v75 - v22;

    v30 = sub_100475648(a2, a3, a4 & 0xFFFFFFFFFFFFFFLL, v26 + 32, v27, v25 + 16, v25 + 32);
    v31 = a1;
    v33 = v32;
    v35 = v34;

    v36 = &v29[*(v28 + 48)];
    sub_10000E268(v31, v36, &qword_1005D7F50, &unk_100502FF0);
    if (v33)
    {
      v37 = v31;
      v38 = v82;
      v39 = v83;
      v40 = v80;
      goto LABEL_24;
    }

    v56 = v31;
    v57 = v82;
    v58 = v83;
  }

  else
  {
    v41 = a2;
    v75 = a1;
    v76 = v5;
    if (!v27)
    {
LABEL_23:
      v36 = &v24[*(v23 + 48)];
      v37 = v75;
      sub_10000E268(v75, v36, &qword_1005D7F50, &unk_100502FF0);
      v35 = 0;
      v5 = v76;
      v38 = v82;
      v39 = v83;
      v40 = v80;
      a2 = v41;
LABEL_24:
      v61 = (*(v39 + 48))(v36, 1, v38);
      v62 = v81;
      v63 = v89;
      if (v61 == 1)
      {
        sub_100025F40(v37, &qword_1005D7F50, &unk_100502FF0);
      }

      else
      {
        v64 = v36;
        v65 = v79;
        sub_1002FC114(v64, v79);
        sub_10046A8DC(a2, v62, v63 & 0xFFFFFFFFFFFFFFLL, v35);

        sub_1002FC178(v65, v40);
        v68 = v5[2];
        v67 = v5 + 2;
        v66 = v68;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v67 = v68;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1002E5340(0, *(v66 + 16) + 1, 1);
          v66 = *v67;
        }

        v71 = *(v66 + 16);
        v70 = *(v66 + 24);
        if (v71 >= v70 >> 1)
        {
          sub_1002E5340(v70 > 1, v71 + 1, 1);
        }

        sub_100025F40(v37, &qword_1005D7F50, &unk_100502FF0);
        sub_1002FC1DC(v65);
        v72 = *v67;
        *(v72 + 16) = v71 + 1;
        result = sub_1002FC114(v40, v72 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v71);
        *v67 = v72;
      }

      return result;
    }

    v42 = v81;
    v43 = HIDWORD(v89);
    v86 = WORD2(v89);
    v87 = &v75 - v22;
    v44 = BYTE6(v89);
    v45 = HIDWORD(v81) - v81;
    v88 = v23;
    swift_beginAccess();
    v24 = v87;
    v23 = v88;
    v30 = 0;
    v46 = (v26 + 54);
    v84 = (v44 & 0xFFFFFFFFFF0000FFLL | (v43 << 8)) + v42;
    v85 = v44;
    while (1)
    {
      v47 = *(v46 - 14);
      v48 = *(v46 - 10);
      if (v48 - v47 == v45)
      {
        v49 = *(v46 - 22);
        v50 = *(v46 - 1);
        v51 = *v46;
        v52 = *(v46 - 6) == v89 && v50 == v86;
        v53 = v52 && v51 == v85;
        if (v53 && v49 == v41)
        {
          break;
        }

        swift_beginAccess();
        v55 = memcmp((*(v49 + 24) + (v51 | (v50 << 8)) + v47), (*(v41 + 24) + v84), v48 - v47);
        v24 = v87;
        v23 = v88;
        if (!v55)
        {
          break;
        }
      }

      v46 += 24;
      if (v27 == ++v30)
      {
        goto LABEL_23;
      }
    }

    v36 = &v24[*(v23 + 48)];
    v56 = v75;
    sub_10000E268(v75, v36, &qword_1005D7F50, &unk_100502FF0);
    v35 = 0;
    v5 = v76;
    v57 = v82;
    v58 = v83;
  }

  if ((*(v58 + 48))(v36, 1, v57) == 1)
  {
    sub_1003FE864(v30, v35, sub_10046B670, sub_100475644, sub_1003FEC78);

    v59 = v77;
    sub_1003FE9D8(v30, v77);
    sub_100025F40(v56, &qword_1005D7F50, &unk_100502FF0);
    return sub_1002FC1DC(v59);
  }

  v73 = v78;
  sub_1002FC114(v36, v78);
  v74 = v5[2];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v74 = sub_10046B5C8(v74);
  }

  result = sub_100025F40(v56, &qword_1005D7F50, &unk_100502FF0);
  if ((v30 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v30 < v74[2])
  {
    result = sub_10040018C(v73, v74 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v30);
    v5[2] = v74;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003FD0B4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v18 = a3;
    }

    else
    {
      v12 = result;
      v13 = *result;
      v14 = *(result + 8);
      v15 = *(result + 16);
      v16 = *(result + 20);
      v17 = *(result + 22);
      if (a2 + 2 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v19 = a3;
      }

      else
      {

        sub_100469DF8(v12);
        if (!v8)
        {
          sub_1003F8A18(v12, v9, a3, a4, a5, a6, a7, v35);
          v32 = v35[0];
          v34 = v35[1];
          v28 = v35[2];
          v30 = v35[3];
          v20 = v36;
          v21 = v37;
          v22 = v38;

          v25 = v28;
          v26 = v30;
          v23 = v32;
          v24 = v34;
          goto LABEL_11;
        }
      }

      swift_willThrow();
      *v12 = v13;
      *(v12 + 8) = v14;
      *(v12 + 16) = v15;
      *(v12 + 20) = v16;
      *(v12 + 22) = v17;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {

      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = xmmword_1004B1230;
      v24 = 0uLL;
      v25 = 0uLL;
      v26 = 0uLL;
LABEL_11:
      *a8 = v23;
      *(a8 + 16) = v24;
      *(a8 + 32) = v25;
      *(a8 + 48) = v26;
      *(a8 + 64) = v20;
      *(a8 + 72) = v21;
      *(a8 + 80) = v22;
      return result;
    }
  }

  return result;
}

uint64_t sub_1003FD2FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  result = sub_10041F7C0(a1, a2, a3, a4, a5, a6, a7);
  if (!v8)
  {
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else
    {
      v38 = v18;
      if (a2 + 1 >= a3)
      {

        sub_1003A5228();
        swift_allocError();
        *v23 = a3;
        return swift_willThrow();
      }

      else
      {
        v31 = a8;
        v32 = result;
        v33 = v19;
        v37 = v20;
        v21 = *a1;
        v22 = *(a1 + 8);
        v35 = *(a1 + 20);
        v36 = *(a1 + 16);
        v34 = *(a1 + 22);

        sub_100469DF8(a1);

        sub_1003F9428(a1, a2, a3, a4, a5, a6, a7, v53);
        sub_1003FD0B4(a1, a2, a3, a4, a5, a6, a7, v54);
        v24 = swift_allocObject();
        *&v40[88] = xmmword_1004B1230;
        memset(&v40[104], 0, 64);
        v25 = v53[0];
        *&v40[24] = v53[1];
        *&v40[40] = v53[2];
        *&v40[56] = v53[3];
        *&v40[72] = v53[4];
        v24[2] = v32;
        v24[3] = v38;
        v24[4] = v33;
        v24[5] = v37;
        *&v40[168] = 0;
        *v40 = v24;
        *&v40[8] = v25;
        sub_10027F8A8(v54, &v40[88], &qword_1005DBCE8, &qword_1004FE600);
        v49 = *&v40[128];
        v50 = *&v40[144];
        v51 = *&v40[160];
        v45 = *&v40[64];
        v46 = *&v40[80];
        v47 = *&v40[96];
        v48 = *&v40[112];
        v41 = *v40;
        v42 = *&v40[16];
        v43 = *&v40[32];
        v44 = *&v40[48];
        v52[8] = *&v40[128];
        v52[9] = *&v40[144];
        v52[10] = *&v40[160];
        v52[4] = *&v40[64];
        v52[5] = *&v40[80];
        v52[6] = *&v40[96];
        v52[7] = *&v40[112];
        v52[0] = *v40;
        v52[1] = *&v40[16];
        v52[2] = *&v40[32];
        v52[3] = *&v40[48];
        sub_1002578F8(&v41, v39);
        result = sub_100257954(v52);
        v26 = v50;
        v31[8] = v49;
        v31[9] = v26;
        v31[10] = v51;
        v27 = v46;
        v31[4] = v45;
        v31[5] = v27;
        v28 = v48;
        v31[6] = v47;
        v31[7] = v28;
        v29 = v42;
        *v31 = v41;
        v31[1] = v29;
        v30 = v44;
        v31[2] = v43;
        v31[3] = v30;
      }
    }
  }

  return result;
}

unint64_t sub_1003FD618@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  result = sub_10041F8EC(a1, a2, a3, a4, a5, a6, a7);
  if (!v8)
  {
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else
    {
      if (a2 + 1 >= a3)
      {

        sub_1003A5228();
        swift_allocError();
        *v21 = a3;
        return swift_willThrow();
      }

      v40 = a8;
      v41 = result;
      v49 = v18;
      v19 = *a1;
      v20 = *(a1 + 8);
      v48 = *(a1 + 16);
      v42 = *(a1 + 22);
      v46 = *(a1 + 20);

      sub_100469DF8(a1);

      sub_1003F9428(a1, a2, a3, a4, a5, a6, a7, v65);
      v22 = *a1;
      v23 = *(a1 + 8);
      v24 = *(a1 + 16);
      v43 = *(a1 + 20);
      v37 = *(a1 + 22);

      sub_100469DF8(a1);

      sub_100402224(a1, a2, a3, a4, a5, a6, a7, v66);
      v25 = *a1;
      v26 = *(a1 + 8);
      v27 = *(a1 + 16);
      v44 = *(a1 + 20);
      v38 = *(a1 + 22);

      sub_100469DF8(a1);

      sub_1003F60D8(v68, a1, a2, a3, a4, a5, a6, a7);
      v28 = *a1;
      v29 = *(a1 + 8);
      v45 = *(a1 + 20);
      v47 = *(a1 + 16);
      v39 = *(a1 + 22);

      sub_100469DF8(a1);

      result = sub_10046C278(a1, a2, a3, 1);
      a8 = 0;
    }

    if ((result & 0x8000000000000000) != 0)
    {

      sub_1003A527C();
      swift_allocError();
      *v30 = 0xD000000000000011;
      v30[1] = 0x80000001004B08A0;
      v30[2] = 0xD000000000000020;
      v30[3] = 0x80000001004B03C0;
      v30[4] = 202;
      swift_willThrow();
      sub_1003F08C4(v65);
      sub_100051110(v68);
      return sub_1003E771C(v66);
    }

    else
    {
      *&__src[80] = v66[4];
      *&__src[96] = v66[5];
      *&__src[112] = v66[6];
      *&__src[128] = v67;
      *&__src[16] = v66[0];
      *&__src[32] = v66[1];
      *&__src[48] = v66[2];
      *&__src[64] = v66[3];
      *&__src[280] = v68[9];
      *&__src[296] = v68[10];
      *&__src[264] = v68[8];
      *&__src[184] = v68[3];
      *&__src[168] = v68[2];
      *&__src[152] = v68[1];
      *&__src[136] = v68[0];
      *&__src[248] = v68[7];
      *&__src[232] = v68[6];
      *&__src[216] = v68[5];
      *&__src[200] = v68[4];
      __src[312] = v69;
      *__src = v41;
      *&__src[8] = v49;
      *&__src[320] = result;
      sub_1002FA030(v66, v63);
      sub_1000510B4(v68, v63);
      sub_1003FD0B4(a1, a2, a3, a4, a5, a6, a7, v70);
      if (a8)
      {
        sub_1002599EC(__src);
        sub_100051110(v68);
        sub_1003E771C(v66);
        return sub_1003F08C4(v65);
      }

      else
      {
        sub_100051110(v68);
        sub_1003E771C(v66);
        v31 = swift_allocObject();
        memcpy((v31 + 16), __src, 0x148uLL);
        *&v51[88] = xmmword_1004B1230;
        memset(&v51[104], 0, 72);
        *&v51[24] = v65[1];
        *&v51[40] = v65[2];
        *&v51[56] = v65[3];
        *&v51[72] = v65[4];
        *v51 = v31 | 0x4000000000000000;
        *&v51[8] = v65[0];
        sub_10027F8A8(v70, &v51[88], &qword_1005DBCE8, &qword_1004FE600);
        v60 = *&v51[128];
        v61 = *&v51[144];
        v62 = *&v51[160];
        v56 = *&v51[64];
        v57 = *&v51[80];
        v58 = *&v51[96];
        v59 = *&v51[112];
        v52 = *v51;
        v53 = *&v51[16];
        v54 = *&v51[32];
        v55 = *&v51[48];
        v63[8] = *&v51[128];
        v63[9] = *&v51[144];
        v63[10] = *&v51[160];
        v63[4] = *&v51[64];
        v63[5] = *&v51[80];
        v63[6] = *&v51[96];
        v63[7] = *&v51[112];
        v63[0] = *v51;
        v63[1] = *&v51[16];
        v63[2] = *&v51[32];
        v63[3] = *&v51[48];
        sub_1002578F8(&v52, v50);
        result = sub_100257954(v63);
        v32 = v61;
        v40[8] = v60;
        v40[9] = v32;
        v40[10] = v62;
        v33 = v57;
        v40[4] = v56;
        v40[5] = v33;
        v34 = v59;
        v40[6] = v58;
        v40[7] = v34;
        v35 = v53;
        *v40 = v52;
        v40[1] = v35;
        v36 = v55;
        v40[2] = v54;
        v40[3] = v36;
      }
    }
  }

  return result;
}

uint64_t sub_1003FDCF0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  result = sub_10041FA98(a1, a2, a3, a4, a5, a6, a7);
  if (!v8)
  {
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {

      sub_1003A5228();
      swift_allocError();
      *v21 = a3;
      return swift_willThrow();
    }

    else
    {
      v34 = a8;
      v35 = result;
      v42 = v18;
      v19 = *a1;
      v20 = *(a1 + 8);
      v37 = *(a1 + 20);
      v39 = *(a1 + 16);
      v36 = *(a1 + 22);

      sub_100469DF8(a1);

      sub_1003F9428(a1, a2, a3, a4, a5, a6, a7, v57);
      v22 = *a1;
      v23 = *(a1 + 8);
      v40 = *(a1 + 20);
      v41 = *(a1 + 16);
      v38 = *(a1 + 22);

      sub_100469DF8(a1);

      v24 = sub_10046C278(a1, a2, a3, 1);
      v25 = v24;
      if ((v24 & 0x8000000000000000) != 0)
      {

        sub_1003A527C();
        swift_allocError();
        *v26 = 0xD000000000000011;
        v26[1] = 0x80000001004B08A0;
        v26[2] = 0xD000000000000020;
        v26[3] = 0x80000001004B03C0;
        v26[4] = 202;
        swift_willThrow();
        return sub_1003F08C4(v57);
      }

      else
      {
        sub_1003FD0B4(a1, a2, a3, a4, a5, a6, a7, v58);
        v27 = swift_allocObject();
        *&v44[88] = xmmword_1004B1230;
        memset(&v44[104], 0, 64);
        v28 = v57[0];
        *&v44[24] = v57[1];
        *&v44[40] = v57[2];
        *&v44[56] = v57[3];
        *&v44[72] = v57[4];
        *(v27 + 16) = v35;
        *(v27 + 24) = v42;
        *(v27 + 32) = v25;
        *&v44[168] = 0;
        *v44 = v27 | 0x8000000000000000;
        *&v44[8] = v28;
        sub_10027F8A8(v58, &v44[88], &qword_1005DBCE8, &qword_1004FE600);
        v53 = *&v44[128];
        v54 = *&v44[144];
        v55 = *&v44[160];
        v49 = *&v44[64];
        v50 = *&v44[80];
        v51 = *&v44[96];
        v52 = *&v44[112];
        v45 = *v44;
        v46 = *&v44[16];
        v47 = *&v44[32];
        v48 = *&v44[48];
        v56[8] = *&v44[128];
        v56[9] = *&v44[144];
        v56[10] = *&v44[160];
        v56[4] = *&v44[64];
        v56[5] = *&v44[80];
        v56[6] = *&v44[96];
        v56[7] = *&v44[112];
        v56[0] = *v44;
        v56[1] = *&v44[16];
        v56[2] = *&v44[32];
        v56[3] = *&v44[48];
        sub_1002578F8(&v45, v43);
        result = sub_100257954(v56);
        v29 = v54;
        v34[8] = v53;
        v34[9] = v29;
        v34[10] = v55;
        v30 = v50;
        v34[4] = v49;
        v34[5] = v30;
        v31 = v52;
        v34[6] = v51;
        v34[7] = v31;
        v32 = v46;
        *v34 = v45;
        v34[1] = v32;
        v33 = v48;
        v34[2] = v47;
        v34[3] = v33;
      }
    }
  }

  return result;
}

char *sub_1003FE11C(unint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7)
{
  result = sub_10041F1D8(a1, a2, a3, a4, a5, a6, a7);
  if (!v7)
  {
    v68 = a6;
    v69 = a7;
    if (result)
    {
      v18 = v16;
      v19 = v17;

      v21 = sub_10046C184(v20, v18, v19 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001004B03C0, 572);
    }

    else
    {
      v21 = 0;
    }

    v22 = __OFADD__(a2, 1);
    v23 = a2 + 1;
    if (v22)
    {
LABEL_46:
      __break(1u);
      return result;
    }

    if (v23 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v40 = a3;
    }

    else
    {
      v24 = *a1;
      v25 = *(a1 + 8);
      v26 = *(a1 + 16);
      v27 = *(a1 + 20);
      v62 = *(a1 + 22);
      v67 = v23 + 1;
      v61 = v21;

      v63 = v27;
      v64 = v26;
      if (v23 + 1 >= a3)
      {
        sub_1003A5228();
        v41 = swift_allocError();
        *v42 = a3;
        v43 = _swiftEmptyArrayStorage;
      }

      else
      {
        v28 = v23 + 2;
        v29 = *a1;
        v30 = *(a1 + 8);
        v66 = *(a1 + 16);
        v31 = *(a1 + 20);
        v32 = *(a1 + 22);
        if (v28 < a3)
        {
          v33 = _swiftEmptyArrayStorage;
          do
          {
            swift_retain_n();
            sub_100469DF8(a1);

            v70[0] = _swiftEmptyArrayStorage;
            sub_1003F8884(a1, v67, a3, v70, a4, a5, v68, v69);

            v34 = v70[0];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v33 = sub_100461124(0, v33[2] + 1, 1, v33);
            }

            v35 = v33;
            v36 = v33[2];
            v37 = v35;
            v38 = v35[3];
            if (v36 >= v38 >> 1)
            {
              v37 = sub_100461124((v38 > 1), v36 + 1, 1, v37);
            }

            v37[2] = v36 + 1;
            v39 = &v37[v36];
            v33 = v37;
            v39[4] = v34;
            v29 = *a1;
            v30 = *(a1 + 8);
            v66 = *(a1 + 16);
            v31 = *(a1 + 20);
            v32 = *(a1 + 22);
          }

          while (v28 < a3);
        }

        sub_1003A5228();
        v44 = swift_allocError();
        *v45 = a3;

        v43 = _swiftEmptyArrayStorage;
        swift_willThrow();
        v46 = *a1;

        *a1 = v29;
        *(a1 + 8) = v30;
        *(a1 + 16) = v66;
        *(a1 + 20) = v31;
        *(a1 + 22) = v32;
        v41 = v44;
      }

      swift_willThrow();
      v70[8] = v41;
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {

        v47 = _swiftEmptyArrayStorage[2];
        if (!v47)
        {
LABEL_40:

          return v61;
        }

        v48 = 0;
        v49 = &_swiftEmptyArrayStorage[4];
        v50 = _swiftEmptyArrayStorage;
        while (v48 < v43[2])
        {
          v51 = v43;
          v52 = v49[v48];
          v53 = *(v52 + 16);
          v54 = *(v50 + 2);
          v55 = v54 + v53;
          if (__OFADD__(v54, v53))
          {
            goto LABEL_42;
          }

          v56 = v49[v48];

          result = swift_isUniquelyReferenced_nonNull_native();
          if (!result || v55 > *(v50 + 3) >> 1)
          {
            if (v54 <= v55)
            {
              v57 = v54 + v53;
            }

            else
            {
              v57 = v54;
            }

            result = sub_100461108(result, v57, 1, v50);
            v50 = result;
          }

          v43 = v51;
          if (*(v52 + 16))
          {
            if ((*(v50 + 3) >> 1) - *(v50 + 2) < v53)
            {
              goto LABEL_44;
            }

            swift_arrayInitWithCopy();

            if (v53)
            {
              v58 = *(v50 + 2);
              v22 = __OFADD__(v58, v53);
              v59 = v58 + v53;
              if (v22)
              {
                goto LABEL_45;
              }

              *(v50 + 2) = v59;
            }
          }

          else
          {

            if (v53)
            {
              goto LABEL_43;
            }
          }

          if (v47 == ++v48)
          {
            goto LABEL_40;
          }
        }

        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v60 = *a1;

      *a1 = v65;
      *(a1 + 8) = v25;
      *(a1 + 16) = v64;
      *(a1 + 20) = v63;
      *(a1 + 22) = v62;
    }

    swift_willThrow();
  }

  return result;
}

uint64_t sub_1003FE66C(uint64_t result, char a2, void (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void, uint64_t))
{
  if (result < 0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v7 = v4;
  v9 = result;
  v12 = v4[1];
  v10 = v4 + 1;
  v11 = v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v10 = v12;
  if (isUniquelyReferenced_nonNull_native && v9 <= *(v11 + 24) >> 1)
  {
    v14 = *v7;
    if (*v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (*(v11 + 16) > v9)
    {
      v18 = *(v11 + 16);
    }

    a3();
    v11 = *v10;
    v14 = *v7;
    if (*v7)
    {
LABEL_5:
      swift_beginAccess();
      v15 = *(v14 + 16) & 0x3FLL;
      v16 = sub_1004A4784();
      if (a2)
      {
        v17 = v16;
        if (v15 >= v16)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v20 = v16;
        swift_beginAccess();
        v16 = v20;
        v17 = *(v14 + 24) & 0x3FLL;
        if (v15 >= v16)
        {
          goto LABEL_19;
        }
      }

LABEL_15:
      if (v17 <= v16)
      {
        v19 = v16;
      }

      else
      {
        v19 = v17;
      }

      goto LABEL_29;
    }
  }

  v16 = sub_1004A4784();
  v15 = 0;
  if (a2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v16 > 0)
  {
    goto LABEL_15;
  }

LABEL_19:
  v21 = *(v11 + 16);
  if (v17 <= v16)
  {
    v22 = v16;
  }

  else
  {
    v22 = v17;
  }

  v23 = *(v11 + 16);
  result = sub_1004A4784();
  if (result <= v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = result;
  }

  if (v24 < v15)
  {
    if (v17 <= v24)
    {
      v19 = v24;
    }

    else
    {
      v19 = v17;
    }

LABEL_29:
    v25 = a4(v11, v19, 0, v17);

    *v7 = v25;
    return result;
  }

  if (!v14 || (v26 = *v7, result = swift_isUniquelyReferenced_native(), (result & 1) != 0))
  {
    v27 = *v7;
    if (*v7)
    {
      goto LABEL_34;
    }

LABEL_38:
    if (!v17)
    {
      return result;
    }

    __break(1u);
    goto LABEL_40;
  }

  if (!*v7)
  {
LABEL_41:
    __break(1u);
    return result;
  }

  v28 = *v7;
  v27 = sub_1004A4774();

  *v7 = v27;
  if (!v27)
  {
    goto LABEL_38;
  }

LABEL_34:
  result = swift_beginAccess();
  if ((*(v27 + 24) & 0x3FLL) != v17)
  {
    *(v27 + 24) = *(v27 + 24) & 0xFFFFFFFFFFFFFFC0 | v17 & 0x3F;
  }

  return result;
}

uint64_t sub_1003FE864(int64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), void (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t *))
{
  v9 = v5[1];
  v10 = *(v9 + 16);
  v11 = *v5;
  if (!*v5)
  {
    if (!v10)
    {
      goto LABEL_16;
    }

    return sub_1003FEBBC(a1, a3);
  }

  swift_beginAccess();
  if ((*(v11 + 16) & 0x3FLL) == (*(v11 + 24) & 0x3FLL))
  {
    if (!v10)
    {
      goto LABEL_16;
    }
  }

  else if (v10 <= sub_1004A4764())
  {
LABEL_16:
    v20 = sub_1003FEBBC(a1, a3);
    a4();
    return v20;
  }

  v14 = *v5;
  result = swift_isUniquelyReferenced_native();
  v16 = *v5;
  if ((result & 1) == 0)
  {
    if (!v16)
    {
      goto LABEL_20;
    }

    v17 = *v5;
    v18 = sub_1004A4774();

    *v5 = v18;
    v16 = v18;
  }

  if (v16)
  {
    result = a5(a2, v16 + 16, v16 + 32, v5);
    v19 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (v19 >= a1)
    {
      sub_1003FEEC4(a1, v19, v9, (v16 + 16));
      return sub_1003FEBBC(a1, a3);
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

size_t sub_1003FE9D8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10046B5C8(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for ParameterValue() - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_1002FC114(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1003FEAF4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10046B630(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 24 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    v7 += 32;
    v10 = *(v7 + 16) | ((*(v7 + 20) | (*(v7 + 22) << 16)) << 32);
    memmove(v7, (v7 + 24), 24 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1003FEBBC(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 24 * a1;
    v10 = *(v9 + 32);
    v11 = *(v9 + 40);
    v9 += 32;
    v12 = *(v9 + 16);
    v13 = *(v9 + 20);
    v14 = *(v9 + 22);
    memmove(v9, (v9 + 24), 24 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    return v10;
  }

  return result;
}

unint64_t sub_1003FEC78(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v26 = sub_1004A46F4();
  sub_1004A4744();
  if (v26)
  {
    v6 = sub_1004A4704();
    while (1)
    {
      result = sub_1004A4724();
      if (v9)
      {
LABEL_23:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v10 = *(a4 + 8);
      if (result >= *(v10 + 16))
      {
        goto LABEL_21;
      }

      v11 = *a2;
      v12 = v10 + 24 * result;
      v13 = *(v12 + 32);
      v14 = *(v12 + 40);
      v15 = *(v12 + 44);
      v16 = *(v12 + 52);
      v17 = *(v12 + 54);
      sub_1004A6E94();
      swift_beginAccess();
      v18 = *(v13 + 24) + (v17 | (v16 << 8));
      sub_1004A6EA4();
      result = sub_1004A6F14();
      v19 = 1 << *a2;
      v20 = v19 - 1;
      if (__OFSUB__(v19, 1))
      {
        goto LABEL_22;
      }

      v21 = v20 & result;
      if (v5 >= v6)
      {
        break;
      }

      if (v21 < v6)
      {
        goto LABEL_14;
      }

LABEL_15:
      v22 = sub_1004A4724();
      if ((v23 & 1) == 0)
      {
        v7 = ((v20 & ((v22 - (a2[1] >> 6)) >> 63)) + v22 - (a2[1] >> 6)) ^ v20;
      }

      v5 = a1;
      sub_1004A4714();
LABEL_5:
      sub_1004A4744();
    }

    if (v21 < v6)
    {
      goto LABEL_5;
    }

LABEL_14:
    if (v5 < v21)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

  return sub_1004A4714();
}

void sub_1003FEEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_54;
  }

  if (v5 >= 1)
  {
    v9 = *(a3 + 16);
    v44 = a2 - a1;
    if (a1 < (v9 - v5) / 2)
    {
      v10 = *a4;
      if (sub_1004A4754() / 3 > a1)
      {
        if (a1 < 0)
        {
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        if (v9 < a1)
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        if (a1)
        {
          v11 = 0;
          v42 = a3 + 32;
          while (1)
          {
            v12 = (v42 + 24 * v11);
            v13 = *(v12 + 22);
            v14 = *(v12 + 10);
            v15 = *(v12 + 2);
            v16 = *(v12 + 3);
            v17 = *v12;
            v18 = *a4;
            sub_1004A6E94();
            swift_beginAccess();
            v19 = *(v17 + 24) + (v13 | (v14 << 8));
            sub_1004A6EA4();
            sub_1004A6F14();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (sub_1004A46F4())
            {
              while (1)
              {
                v20 = sub_1004A4724();
                if ((v21 & 1) == 0 && v20 == v11)
                {
                  break;
                }

                sub_1004A4744();
              }
            }

            v5 = v44;
            if (__OFADD__(v11, v44))
            {
              goto LABEL_51;
            }

            ++v11;
            sub_1004A4734();
            if (v11 == a1)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        goto LABEL_17;
      }

      sub_1004A46F4();
      v28 = sub_1004A4724();
      if ((v29 & 1) != 0 || v28 >= a1)
      {
LABEL_29:
        sub_1004A4744();
LABEL_17:
        v22 = a4[1];
        if (__OFSUB__(v22 >> 6, v5))
        {
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        v23 = 1 << *a4;
        v24 = __OFSUB__(v23, 1);
        v25 = v23 - 1;
        if (v24)
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        v26 = (v25 & (((v22 >> 6) - v5) >> 63)) + (v22 >> 6) - v5;
        if (v26 < v25)
        {
          v25 = 0;
        }

        a4[1] = a4[1] & 0x3F | ((v26 - v25) << 6);
        return;
      }

      if (!__OFADD__(v28, v5))
      {
        sub_1004A4734();
        goto LABEL_29;
      }

      __break(1u);
LABEL_35:
      sub_1004A46F4();
      v30 = sub_1004A4724();
      if ((v31 & 1) == 0 && v30 >= v4)
      {
        if (__OFSUB__(v30, v5))
        {
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        sub_1004A4734();
      }

      sub_1004A4744();
      return;
    }

    v4 = a2;
    if (__OFSUB__(v9, a2))
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v27 = *a4;
    if ((v9 - a2) >= sub_1004A4754() / 3)
    {
      goto LABEL_35;
    }

    if (v9 < v4)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    if (v4 < 0)
    {
LABEL_61:
      __break(1u);
      return;
    }

    if (v9 != v4)
    {
      v43 = a3 + 32;
      while (1)
      {
        v32 = (v43 + 24 * v4);
        v33 = *(v32 + 22);
        v34 = *(v32 + 10);
        v36 = *(v32 + 2);
        v35 = *(v32 + 3);
        v37 = *v32;
        v38 = *a4;
        sub_1004A6E94();
        swift_beginAccess();
        v39 = *(v37 + 24) + (v33 | (v34 << 8));
        sub_1004A6EA4();
        sub_1004A6F14();
        if (__OFSUB__(1 << *a4, 1))
        {
          break;
        }

        if (sub_1004A46F4())
        {
          while (1)
          {
            v40 = sub_1004A4724();
            if ((v41 & 1) == 0 && v40 == v4)
            {
              break;
            }

            sub_1004A4744();
          }
        }

        sub_1004A4734();
        if (++v4 == v9)
        {
          return;
        }
      }

      goto LABEL_53;
    }
  }
}

uint64_t sub_1003FF33C(uint64_t a1)
{
  v2 = type metadata accessor for ParameterValue();
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v30 - v7;
  v34 = sub_10000C9C0(&qword_1005D8480, &qword_1004F4968);
  v9 = *(v34 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v34);
  v12 = (&v30 - v11);
  v36 = 0;
  v37 = _swiftEmptyArrayStorage;
  v13 = *(a1 + 16);
  sub_1003FE66C(v13, 0, sub_100134BC4, sub_100475620);
  v35 = _swiftEmptyArrayStorage;
  sub_1003E54FC(0, v13, 0);
  v14 = v35;
  v32 = v13;
  if (!v13)
  {
    return v36;
  }

  v15 = 0;
  v31 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v30 = *(v9 + 72);
  while (1)
  {
    sub_10000E268(v31 + v30 * v15, v12, &qword_1005D8480, &qword_1004F4968);
    v17 = *v12;
    v16 = v12[1];
    sub_1002FC114(v12 + *(v34 + 48), v8);
    v18 = v36;
    v19 = v37;
    v20 = v37[2];
    if (!v36)
    {
      break;
    }

    sub_10047564C(v17, v16, v19 + 4, v20, v18 + 16, v18 + 32);
    v22 = v21;
    v24 = v23;

    if ((v22 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_15:
    sub_10046A70C(v17, v16, v24);
    sub_1002FC178(v8, v5);
    v35 = v14;
    v29 = v14[2];
    v28 = v14[3];
    if (v29 >= v28 >> 1)
    {
      sub_1003E54FC(v28 > 1, v29 + 1, 1);

      v14 = v35;
    }

    else
    {
    }

    ++v15;
    sub_1002FC1DC(v8);
    v14[2] = v29 + 1;
    sub_1002FC114(v5, v14 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v29);
    if (v15 == v32)
    {
      return v36;
    }
  }

  if (!v20)
  {
LABEL_14:
    v24 = 0;
    goto LABEL_15;
  }

  v26 = v37 + 5;
  while (1)
  {
    result = *(v26 - 1);
    if (result == v17 && *v26 == v16)
    {
      break;
    }

    result = sub_1004A6D34();
    if (result)
    {
      break;
    }

    v26 += 2;
    if (!--v20)
    {
      goto LABEL_14;
    }
  }

LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_1003FF690()
{
  result = qword_1005DC780;
  if (!qword_1005DC780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC780);
  }

  return result;
}

uint64_t sub_1003FF6E4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 72);

  v5 = *(v0 + 80);

  v6 = *(v0 + 88);

  v7 = *(v0 + 96);

  v8 = *(v0 + 104);

  v9 = *(v0 + 112);

  v10 = *(v0 + 128);

  v11 = *(v0 + 144);

  sub_10005132C(*(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 280), *(v0 + 288), *(v0 + 296), *(v0 + 304), *(v0 + 312), *(v0 + 320), *(v0 + 328));

  return _swift_deallocObject(v0, 344, 7);
}

uint64_t sub_1003FF878(uint64_t a1)
{
  v2 = type metadata accessor for ParameterValue();
  v78 = *(v2 - 8);
  v3 = *(v78 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v72 - v7;
  v80 = sub_10000C9C0(&qword_1005DBC48, &qword_1004FE578);
  v9 = *(v80 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v80);
  v79 = &v72 - v11;
  v95 = 0;
  v96 = _swiftEmptyArrayStorage;
  v12 = *(a1 + 16);
  sub_1003FE66C(v12, 0, sub_1003E555C, sub_10046B16C);
  v94 = _swiftEmptyArrayStorage;
  sub_1002E5340(0, v12, 0);
  v13 = v94;
  v77 = v12;
  if (!v12)
  {
    return v95;
  }

  v14 = 0;
  v76 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v15 = *(v9 + 72);
  v74 = v5;
  v75 = v15;
  v73 = v8;
  while (1)
  {
    v83 = v13;
    v16 = v79;
    sub_10000E268(v76 + v75 * v14, v79, &qword_1005DBC48, &qword_1004FE578);
    v17 = *(v80 + 48);
    v18 = *v16;
    v20 = *(v16 + 8);
    v19 = *(v16 + 12);
    v87 = *(v16 + 16);
    v21 = *(v16 + 20);
    v22 = v8;
    v23 = *(v16 + 22);
    sub_1002FC114(v16 + v17, v22);
    v24 = v95;
    v88 = v23;
    v89 = v21;
    v85 = v19;
    if (v95)
    {
      v72 = v96;
      v82 = v9;
      v25 = *(v95 + 16);
      sub_1004A6E94();
      swift_beginAccess();
      v26 = v23 | (v21 << 8);
      v27 = *(v18 + 24) + v26;
      sub_1004A6EA4();
      v28 = sub_1004A6F14();
      v29 = 1 << *(v24 + 16);
      v30 = __OFSUB__(v29, 1);
      v31 = v29 - 1;
      if (v30)
      {
        __break(1u);
      }

      else
      {
        v84 = v20;
        v32 = v31 & v28;
        v33 = sub_1004A46F4();
        *&v101 = v24 + 16;
        *(&v101 + 1) = v24 + 32;
        *&v102 = v32;
        *(&v102 + 1) = v33;
        *&v103 = v34;
        *(&v103 + 1) = v35;
        v104 = 0;
        v36 = sub_1004A4724();
        LOBYTE(v32) = v37;
        v38 = v102;
        v90 = v101;
        v91 = v102;
        v92 = v103;
        v93 = v104;
        v86 = v24;

        if (v32)
        {
          v8 = v73;
          v39 = v74;
LABEL_39:
          v13 = v83;

          v9 = v82;
          v20 = v84;
          v45 = v88;
          v44 = v89;
          goto LABEL_42;
        }

        v81 = v14;
        v56 = v72 + 4;
        v57 = v85 - v84;
        v58 = v26 + v84;
        v59 = v36;
        while (1)
        {
          v61 = &v56[3 * v59];
          v62 = *(v61 + 2);
          v63 = *(v61 + 3);
          if (v63 - v62 == v57)
          {
            v64 = *v61;
            v65 = *(v61 + 10);
            v66 = *(v61 + 22);
            v67 = *(v61 + 4) == v87 && v65 == v89;
            v68 = v67 && v66 == v88;
            if (v68 && v64 == v18)
            {
              break;
            }

            swift_beginAccess();
            if (!memcmp((*(v64 + 24) + (v66 | (v65 << 8)) + v62), (*(v18 + 24) + v58), v63 - v62))
            {
              break;
            }
          }

          sub_1004A4744();
          v97 = v90;
          v98 = v91;
          v99 = v92;
          v100 = v93;
          v38 = v91;
          v59 = sub_1004A4724();
          if (v60)
          {
            v8 = v73;
            v39 = v74;
            v14 = v81;
            goto LABEL_39;
          }
        }
      }

      goto LABEL_50;
    }

    v40 = v96[2];
    if (v40)
    {
      break;
    }

    v38 = 0;
    v45 = v88;
    v44 = v89;
    v8 = v73;
    v39 = v74;
    v13 = v83;
LABEL_42:
    v9 = v9 & 0xFF00000000000000 | v87 | (v44 << 32) | (v45 << 48);
    sub_10046A8DC(v18, v20 | (v85 << 32), v9, v38);
    sub_1002FC178(v8, v39);
    v94 = v13;
    v71 = v13[2];
    v70 = v13[3];
    if (v71 >= v70 >> 1)
    {
      sub_1002E5340(v70 > 1, v71 + 1, 1);

      v13 = v94;
    }

    else
    {
    }

    ++v14;
    sub_1002FC1DC(v8);
    v13[2] = v71 + 1;
    sub_1002FC114(v39, v13 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v71);
    if (v14 == v77)
    {
      return v95;
    }
  }

  v81 = v14;
  v82 = v9;
  v41 = v19 - v20;
  v42 = v96;
  result = swift_beginAccess();
  v45 = v88;
  v44 = v89;
  v46 = v20;
  v47 = v42 + 54;
  v84 = v46;
  v86 = (v88 | (v89 << 8)) + v46;
  while (1)
  {
    v48 = *(v47 - 14);
    v49 = *(v47 - 10);
    if (v49 - v48 == v41)
    {
      v50 = *(v47 - 22);
      v51 = *(v47 - 1);
      v52 = *v47;
      v53 = *(v47 - 6) == v87 && v51 == v44;
      v54 = v53 && v52 == v45;
      if (v54 && v50 == v18)
      {
        break;
      }

      swift_beginAccess();
      result = memcmp((*(v50 + 24) + (v52 | (v51 << 8)) + v48), (*(v18 + 24) + v86), v49 - v48);
      v45 = v88;
      v44 = v89;
      if (!result)
      {
        break;
      }
    }

    v47 += 24;
    if (!--v40)
    {
      v38 = 0;
      v8 = v73;
      v39 = v74;
      v14 = v81;
      v9 = v82;
      v13 = v83;
      v20 = v84;
      goto LABEL_42;
    }
  }

LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_1003FFE70()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1003FFF20()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1003FFF58@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  result = v6(a1, *a2, a2[1]);
  if (!v4)
  {
    *a3 = result;
    a3[1] = v9;
  }

  return result;
}

double sub_1003FFF94@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v10[0] = a2;
  v10[1] = a3;
  v7(&v11, a1, v10);
  if (!v5)
  {
    result = *&v11;
    *a4 = v11;
  }

  return result;
}

uint64_t sub_1003FFFE0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100400018()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

double sub_100400138@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v11[0] = a2;
  v11[1] = a3;
  v7(&v12, a1, v11);
  if (!v5)
  {
    v10 = v13;
    result = *&v12;
    *a4 = v12;
    *(a4 + 16) = v10;
  }

  return result;
}

uint64_t sub_10040018C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParameterValue();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_1004001F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v12[0] = a2;
  v12[1] = a3;
  v7(&v13, a1, v12);
  if (!v5)
  {
    v10 = v14;
    v11 = v15;
    result = *&v13;
    *a4 = v13;
    *(a4 + 16) = v10;
    *(a4 + 24) = v11;
  }

  return result;
}

void *sub_100400264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v11[0] = a2;
  v11[1] = a3;
  result = v7(v12, a1, v11);
  if (!v5)
  {
    v10 = v12[1];
    *a4 = v12[0];
    a4[1] = v10;
  }

  return result;
}

void *sub_1004002B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v10[0] = a2;
  v10[1] = a3;
  result = v7(&v11, a1, v10);
  if (!v5)
  {
    *a4 = v11;
  }

  return result;
}

void *sub_100400314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v11[0] = a2;
  v11[1] = a3;
  result = v7(&v12, a1, v11);
  if (!v5)
  {
    v10 = v13;
    *a4 = v12;
    *(a4 + 8) = v10;
  }

  return result;
}

uint64_t sub_1004003F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Command();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100400454(uint64_t result, uint64_t a2, int64_t a3)
{
  v4 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v4 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v11 = a3;
      return swift_willThrow();
    }

    v6 = result;
    v7 = *result;
    v8 = *(result + 8);
    v9 = *(result + 16);
    v12 = *(result + 22);
    v13 = *(result + 20);

    sub_1004007F8(v6, v4, a3, &v14);
    if (v3)
    {
      v10 = *v6;

      *v6 = v7;
      *(v6 + 8) = v8;
      *(v6 + 16) = v9;
      *(v6 + 20) = v13;
      *(v6 + 22) = v12;
      return swift_willThrow();
    }

    return v14;
  }

  return result;
}

uint64_t sub_10040057C(uint64_t result, uint64_t a2, int64_t a3)
{
  v4 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v6 = result;
    if (v4 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v14 = a3;
    }

    else
    {
      v7 = *result;
      v8 = *(result + 8);
      v9 = *(result + 16);
      v10 = *(result + 20);
      v11 = *(result + 22);

      v12 = sub_100400D50(v6, v4, a3);
      if (!v3)
      {
LABEL_13:
        v21 = v12;

        return v21;
      }

      v13 = *v6;

      *v6 = v7;
      *(v6 + 8) = v8;
      *(v6 + 16) = v9;
      *(v6 + 20) = v10;
      *(v6 + 22) = v11;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v4 < a3)
    {
      v15 = *v6;
      v16 = *(v6 + 8);
      v17 = *(v6 + 16);
      v18 = *(v6 + 20);
      v19 = *(v6 + 22);

      v12 = sub_100400EE8(v6, v4, a3);
      goto LABEL_13;
    }

    sub_1003A5228();
    swift_allocError();
    *v20 = a3;
    swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t sub_1004007F8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_10046B71C(0x22uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v4)
  {
    v10 = sub_10040057C(a1, a2, a3);
    sub_10046B71C(0x2DuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    v11 = sub_100400FE4(a1, a2, a3);
    sub_10046B71C(0x2DuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    v12 = sub_10042D860(a1, a2, a3);
    sub_10046B71C(0x20uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    v13 = sub_10042D87C(a1, a2, a3);
    sub_10046B71C(0x3AuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    v14 = sub_10042D87C(a1, a2, a3);
    sub_10046B71C(0x3AuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    v30 = sub_10042D87C(a1, a2, a3);
    result = sub_10046B71C(0x20uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    v29 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else
    {
      if (v29 < a3)
      {
        v15 = *(a1 + 8);
        v22 = *(a1 + 20);
        v24 = *(a1 + 16);
        v20 = *(a1 + 22);
        v27 = *a1;

        v26 = sub_1004011E0(a1, v29, a3, v13);
        goto LABEL_15;
      }

      sub_1003A5228();
      swift_allocError();
      *v16 = a3;
      swift_willThrow();
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {

LABEL_11:

        if (v29 >= a3)
        {
          sub_1003A5228();
          swift_allocError();
          *v18 = a3;
          return swift_willThrow();
        }

        v17 = *(a1 + 8);
        v23 = *(a1 + 20);
        v25 = *(a1 + 16);
        v21 = *(a1 + 22);
        v28 = *a1;

        v26 = sub_10040139C(a1, v29, a3, v13);
LABEL_15:

        sub_10046B71C(0x22uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
        if ((v10 - 32) >= 0xFFFFFFFFFFFFFFE1 && (v11 - 13) >= 0xFFFFFFFFFFFFFFF4 && v13 <= 0x17 && v14 <= 0x3B && v30 <= 0x3C && v26 - 1441 >= 0xFFFFFFFFFFFFF4BFLL && v12 - 0x10000 >= 0xFFFFFFFFFFFF0001)
        {
          v31[0] = v12;
          v31[1] = v11;
          v31[2] = v10;
          v31[3] = v13;
          v31[4] = v14;
          v31[5] = v30;
          v31[6] = v26;
          result = _s12NIOIMAPCore217ServerMessageDateVyA2C10ComponentsVcfC_0(v31);
          *a4 = result;
          return result;
        }

        sub_1003A527C();
        swift_allocError();
        *v19 = 0xD000000000000016;
        v19[1] = 0x80000001004B0900;
        v19[2] = 0xD000000000000020;
        v19[3] = 0x80000001004B03C0;
        v19[4] = 167;
        return swift_willThrow();
      }

      swift_errorRetain();
      if (swift_dynamicCast())
      {

        goto LABEL_11;
      }
    }
  }

  return result;
}

uint64_t sub_100400D50(uint64_t result, uint64_t a2, int64_t a3)
{
  v4 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v7 = result;
    if (v4 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v14 = a3;
    }

    else
    {
      v8 = *result;
      v9 = *(result + 8);
      v10 = *(result + 16);
      v11 = *(result + 20);
      v12 = *(result + 22);

      sub_10046B71C(0x20uLL, 0xE100000000000000, 0, 0, v7, v4, a3);
      if (!v3)
      {

        return sub_10042D768(v7, a2, a3, 1);
      }

      v13 = *v7;

      *v7 = v8;
      *(v7 + 8) = v9;
      *(v7 + 16) = v10;
      *(v7 + 20) = v11;
      *(v7 + 22) = v12;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (!swift_dynamicCast())
    {
    }

    return sub_10042D768(v7, a2, a3, 1);
  }

  __break(1u);
  return result;
}

unint64_t sub_100400EE8(unint64_t result, uint64_t a2, int64_t a3)
{
  v4 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v4 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v13 = a3;
      return swift_willThrow();
    }

    v6 = result;
    v7 = *result;
    v8 = *(result + 8);
    v9 = *(result + 16);
    v10 = *(result + 20);
    v11 = *(result + 22);

    sub_10042D57C(v6, v4, a3, 2, &v14);
    if (v3)
    {
      v12 = *v6;

      *v6 = v7;
      *(v6 + 8) = v8;
      *(v6 + 16) = v9;
      *(v6 + 20) = v10;
      *(v6 + 22) = v11;
      return swift_willThrow();
    }

    return v14;
  }

  return result;
}

uint64_t sub_100400FE4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v8 = __OFADD__(a2, 1);
  v9 = a2 + 1;
  if (!v8)
  {
    v31 = v7;
    v32 = v4;
    v33 = v5;
    v34 = v6;
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v16 = a3;
    }

    else
    {
      v10 = result;
      v11 = *result;
      v12 = *(result + 8);
      v13 = *(result + 16);
      v14 = *(result + 20);
      v4 = *(result + 22);
      sub_10046608C(result, &v26);
      if (!v3)
      {
        v17 = sub_10046C184(v26, v27, v28 | (v29 << 32) | (v30 << 48), 0xD000000000000020, 0x80000001004B03C0, 78);
        v19 = v18;
        v20 = v17;
        sub_1004A5814();
        v4 = sub_100431478();
        v22 = v21;

        if (v22)
        {
          v26 = 0;
          v27 = 0xE000000000000000;
          sub_1004A6724(21);

          v26 = 0xD000000000000013;
          v27 = 0x80000001004B0940;
          v35._countAndFlagsBits = v20;
          v35._object = v19;
          sub_1004A5994(v35);

          v23 = v26;
          v24 = v27;
          sub_1003A527C();
          swift_allocError();
          *v25 = v23;
          v25[1] = v24;
          v25[2] = 0xD000000000000020;
          v25[3] = 0x80000001004B03C0;
          v25[4] = 80;
          swift_willThrow();
        }

        else
        {
        }

        return v4;
      }

      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v13;
      *(v10 + 20) = v14;
      *(v10 + 22) = v4;
    }

    swift_willThrow();
    return v4;
  }

  __break(1u);
  return result;
}

unint64_t sub_1004011E0(unint64_t a1, uint64_t a2, int64_t a3, uint64_t a4)
{
  result = sub_10046B71C(0x2BuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v4)
  {
    v10 = sub_10042D860(a1, a2, a3);
    if ((v10 & 0x8000000000000000) == 0 && (v10 % 0x64 <= 0x3C ? (v11 = a4 <= 24) : (v11 = 0), v11))
    {
      return v10 % 0x64 + 60 * ((v10 - v10 % 0x64) / 100);
    }

    else
    {
      sub_1004A6724(32);

      v13._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v13);

      v14._countAndFlagsBits = 0x64656C69616620;
      v14._object = 0xE700000000000000;
      sub_1004A5994(v14);
      sub_1003A527C();
      swift_allocError();
      *v12 = 0xD000000000000017;
      v12[1] = 0x80000001004B0920;
      v12[2] = 0xD000000000000020;
      v12[3] = 0x80000001004B03C0;
      v12[4] = 134;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_10040139C(unint64_t a1, uint64_t a2, int64_t a3, uint64_t a4)
{
  result = sub_10046B71C(0x2DuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v4)
  {
    v10 = sub_10042D860(a1, a2, a3);
    if ((v10 & 0x8000000000000000) == 0 && (v10 % 0x64 <= 0x3C ? (v11 = a4 <= 24) : (v11 = 0), v11))
    {
      return -(v10 % 0x64) - 60 * ((v10 - v10 % 0x64) / 100);
    }

    else
    {
      sub_1004A6724(32);

      v13._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v13);

      v14._countAndFlagsBits = 0x64656C69616620;
      v14._object = 0xE700000000000000;
      sub_1004A5994(v14);
      sub_1003A527C();
      swift_allocError();
      *v12 = 0xD000000000000017;
      v12[1] = 0x80000001004B0920;
      v12[2] = 0xD000000000000020;
      v12[3] = 0x80000001004B03C0;
      v12[4] = 143;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_10040155C(uint64_t result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
      return swift_willThrow();
    }

    v10 = result;
    v11 = *result;
    v12 = *(result + 8);
    v13 = *(result + 16);
    v20 = *(result + 22);
    v21 = *(result + 20);

    sub_100401A28(v10, v8, a3, a4, a5, a6, a7, &v22);
    if (v7)
    {
      v18 = *v10;

      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v13;
      *(v10 + 20) = v21;
      *(v10 + 22) = v20;
      return swift_willThrow();
    }

    return v22;
  }

  return result;
}

uint64_t sub_100401688@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v22 = a3;
    }

    else
    {
      v15 = result;
      v16 = *result;
      v17 = *(result + 8);
      v44 = *(result + 20);
      v45 = *(result + 16);
      v43 = *(result + 22);

      v18 = sub_10041ED48(v15, v9, a3, a4, a5, a6, a7);
      if (v8)
      {
        v21 = *v15;
      }

      else
      {
        v41 = v18;
        v23 = v9 + 1;
        v24 = *v15;
        if (v23 < a3)
        {
          v38 = v19;
          v39 = v20;
          v40 = v23;
          sub_100469DF8(v15);
          v27 = *v15;
          v28 = *(v15 + 8);
          v36 = *(v15 + 20);
          v37 = *(v15 + 16);
          v35 = *(v15 + 22);

          v29 = sub_10041F1D8(v15, v40, a3, a4, a5, a6, a7);
          v31 = v30;
          v32 = v29;
          v34 = v33;

          *a8 = v41;
          *(a8 + 8) = v38;
          *(a8 + 16) = v39;
          *(a8 + 20) = WORD2(v39);
          *(a8 + 22) = BYTE6(v39);
          *(a8 + 24) = v32;
          *(a8 + 32) = v31;
          *(a8 + 40) = v34;
          *(a8 + 46) = BYTE6(v34);
          *(a8 + 44) = WORD2(v34);
          return result;
        }

        v25 = *v15;

        sub_1003A5228();
        swift_allocError();
        *v26 = a3;
        swift_willThrow();
      }

      *v15 = v16;
      *(v15 + 8) = v17;
      *(v15 + 16) = v45;
      *(v15 + 20) = v44;
      *(v15 + 22) = v43;
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100401A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  result = sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v8)
  {
    v30 = 0;
    *&v31 = _swiftEmptyArrayStorage;
    *(&v31 + 1) = _swiftEmptyArrayStorage;
    sub_100401688(a1, a2, a3, a4, a5, a6, a7, v32);
    v18 = v32[0];
    v29 = v32[1];
    v27 = v36;
    v23 = v37 | ((v38 | (v39 << 16)) << 32);
    v25 = v33 | (v34 << 32) | (v35 << 48);

    result = sub_1003FC71C(v19, v27, v23, v18, v29, v25);
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v22 = a3;

      swift_willThrow();

      sub_1004021BC(v32);
    }

    else
    {
      v20 = *a1;
      v21 = *(a1 + 8);
      v28 = *(a1 + 16);
      v26 = *(a1 + 20);
      v24 = *(a1 + 22);
      swift_retain_n();

      sub_100467BC8(a1, a2 + 1, a3, &v30, a4, a5, a6, a7);

      sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
      result = sub_1004021BC(v32);
      *a8 = v30;
      *(a8 + 8) = v31;
    }
  }

  return result;
}

unint64_t sub_100401CE4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v24 = a3;
    }

    else
    {
      v11 = result;
      v12 = *result;
      v13 = *(result + 8);
      v61 = *(result + 20);
      v62 = *(result + 16);
      v60 = *(result + 22);
      sub_10000C9C0(&qword_1005DC7A8, &qword_1005099C0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1004CEAA0;
      v16 = v12;

      v17 = sub_10041ED48(v11, v9, a3, a4, a5, a6, a7);
      if (v7)
      {
        v20 = *v11;

        *(v8 + 16) = 0;

        v21 = v61;
        v22 = v62;
        v23 = v60;
      }

      else
      {
        v55 = a6;
        v56 = a7;
        *(v8 + 32) = v17;
        *(v8 + 40) = v18;
        *(v8 + 48) = v19;
        *(v8 + 52) = WORD2(v19);
        *(v8 + 54) = BYTE6(v19);
        if (v9 + 1 >= a3)
        {
          sub_1003A5228();
          swift_allocError();
          *v38 = a3;
          v21 = v61;
          v22 = v62;
          v23 = v60;
        }

        else
        {
          v25 = *(v11 + 8);
          v46 = *(v11 + 20);
          v47 = *(v11 + 16);
          v45 = *(v11 + 22);
          v48 = *v11;

          v52 = v9 + 2;
          v22 = v62;
          if (v9 + 2 >= a3)
          {
            sub_1003A5228();
            swift_allocError();
            *v39 = a3;
            v40 = v48;
            v23 = v60;
            v21 = v61;
          }

          else
          {
            v26 = v9 + 3;
            v27 = *v11;
            v28 = *(v11 + 8);
            v51 = *(v11 + 16);
            v53 = *(v11 + 22);
            v54 = *(v11 + 20);
            v21 = v61;
            if (v26 >= a3)
            {
              v23 = v60;
            }

            else
            {
              v29 = v8;
              v49 = v8;
              v50 = v12;
              do
              {
                v57 = v29;
                swift_retain_n();
                sub_100469DF8(v11);

                v30 = sub_10041ED48(v11, v52, a3, a4, a5, v55, v56);
                v32 = v31;
                v34 = v33;

                v29 = v57;
                v36 = *(v57 + 2);
                v35 = *(v57 + 3);
                if (v36 >= v35 >> 1)
                {
                  v29 = sub_100461284((v35 > 1), v36 + 1, 1, v57);
                }

                *(v29 + 2) = v36 + 1;
                v37 = &v29[24 * v36];
                *(v37 + 4) = v30;
                *(v37 + 5) = v32;
                *(v37 + 12) = v34;
                *(v37 + 26) = WORD2(v34);
                v37[54] = BYTE6(v34);
                v27 = *v11;
                v28 = *(v11 + 8);
                v51 = *(v11 + 16);
                v53 = *(v11 + 22);
                v54 = *(v11 + 20);
                v8 = v49;
                v16 = v50;
                v21 = v61;
                v22 = v62;
                v23 = v60;
              }

              while (v26 < a3);
            }

            sub_1003A5228();
            swift_allocError();
            *v41 = a3;

            swift_willThrow();
            v40 = v48;
            v42 = *v11;

            *v11 = v27;
            *(v11 + 8) = v28;
            *(v11 + 16) = v51;
            *(v11 + 20) = v54;
            *(v11 + 22) = v53;
          }

          swift_willThrow();
          swift_errorRetain();
          sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
          if (swift_dynamicCast())
          {

            return v8;
          }

          v43 = *v11;

          *v11 = v40;
          *(v11 + 8) = v25;
          *(v11 + 16) = v47;
          *(v11 + 20) = v46;
          *(v11 + 22) = v45;
        }

        swift_willThrow();
        v44 = *v11;
      }

      *v11 = v16;
      *(v11 + 8) = v13;
      *(v11 + 16) = v22;
      *(v11 + 20) = v21;
      *(v11 + 22) = v23;
    }

    swift_willThrow();
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004021BC(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005DC7A0, &qword_100504120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100402224@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v20 = a3;
      return swift_willThrow();
    }

    v11 = result;
    v12 = *result;
    v13 = *(result + 8);
    v14 = *(result + 16);
    v25 = *(result + 22);
    v26 = *(result + 20);

    sub_100402B48(v11, v9, a3, a4, a5, a6, a7, v27);
    if (v8)
    {
      v19 = *v11;

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v26;
      *(v11 + 22) = v25;
      return swift_willThrow();
    }

    v21 = v27[5];
    *(a8 + 64) = v27[4];
    *(a8 + 80) = v21;
    *(a8 + 96) = v27[6];
    *(a8 + 112) = v28;
    v22 = v27[1];
    *a8 = v27[0];
    *(a8 + 16) = v22;
    v23 = v27[3];
    *(a8 + 32) = v27[2];
    *(a8 + 48) = v23;
  }

  return result;
}

uint64_t sub_100402384(uint64_t result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v11 = result;
    if (v8 >= a3)
    {
      sub_1003A5228();
      v17 = swift_allocError();
      *v20 = a3;
    }

    else
    {
      v15 = *result;
      v16 = *(result + 8);
      v28 = *(result + 20);
      v29 = *(result + 16);
      v27 = *(result + 22);

      sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, v11, v8, a3);
      v17 = v7;
      if (!v7)
      {
        v30 = _swiftEmptyArrayStorage;

        sub_100471550(v11, &v30, v8, a3, a4, a5, a6, a7);

        v18 = v30;
        sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, v11, v8, a3);

LABEL_17:
        a5 = sub_100403620(v18);

        return a5;
      }

      v19 = *v11;

      *v11 = v15;
      *(v11 + 8) = v16;
      *(v11 + 16) = v29;
      *(v11 + 20) = v28;
      *(v11 + 22) = v27;
    }

    swift_willThrow();
    v31 = v17;
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v31 = v17;
      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_15;
      }
    }

    if (v8 < a3)
    {
      v21 = *v11;
      v22 = *(v11 + 8);
      v23 = *(v11 + 16);
      v24 = *(v11 + 20);
      v25 = *(v11 + 22);

      sub_10046B71C(0x6C696EuLL, 0xE300000000000000, 0, 0, v11, v8, a3);

      v18 = _swiftEmptyArrayStorage;
      goto LABEL_17;
    }

    sub_1003A5228();
    swift_allocError();
    *v26 = a3;
    swift_willThrow();
LABEL_15:

    return a5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004026F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v63 = v17;
  v64 = v12;
  v65 = v8;
  v66[0] = v15;
  v66[1] = v16;
  v15 = v66;
  v51 = a8;
  if (a2 + 1 >= a3)
  {
    sub_1003A5228();
    v27 = swift_allocError();
    *v28 = a3;
LABEL_9:
    swift_willThrow();
    *&v58 = v27;
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (!swift_dynamicCast())
    {
    }

    goto LABEL_11;
  }

  v22 = *a1;
  v23 = *(a1 + 8);
  v24 = *(a1 + 16);
  v25 = *(a1 + 20);
  v26 = *(a1 + 22);
  if (a2 + 2 >= a3)
  {
    sub_1003A5228();
    v27 = swift_allocError();
    *v29 = a3;
    goto LABEL_8;
  }

  sub_100469DF8(a1);
  v27 = v10;
  if (v10)
  {
LABEL_8:
    swift_willThrow();
    *a1 = v22;
    *(a1 + 8) = v23;
    *(a1 + 16) = v24;
    *(a1 + 20) = v25;
    *(a1 + 22) = v26;
    goto LABEL_9;
  }

LABEL_11:
  sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  v30 = sub_10041F1D8(a1, a2, a3, a4, a5, a6, a7);
  v12 = v31;
  v33 = v32;
  v9 = v30;
  sub_10046B71C(0x20uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  v34 = sub_10041F1D8(a1, a2, a3, a4, a5, a6, a7);
  v49 = v36;
  v50 = v35;
  v13 = v34;
  sub_10046B71C(0x20uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  v37 = sub_10041F1D8(a1, a2, a3, a4, a5, a6, a7);
  v46 = v39;
  v47 = v38;
  v48 = v37;
  sub_10046B71C(0x20uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  v40 = sub_10041F1D8(a1, a2, a3, a4, a5, a6, a7);
  v14 = v33;
  v53 = v41;
  v55 = v42;
  v11 = v40;
  sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
LABEL_14:
  *&v58 = v9;
  *(&v58 + 1) = v14;
  LODWORD(v59) = v12;
  BYTE6(v59) = BYTE6(v12);
  WORD2(v59) = WORD2(v12);
  *(&v59 + 1) = v13;
  *&v60 = v50;
  DWORD2(v60) = v49;
  BYTE14(v60) = BYTE6(v49);
  WORD6(v60) = WORD2(v49);
  *&v61 = v48;
  *(&v61 + 1) = v47;
  *v62 = v46;
  v62[6] = BYTE6(v46);
  *&v62[4] = WORD2(v46);
  *&v62[8] = v11;
  *&v62[16] = v53;
  *&v62[24] = v55;
  v62[30] = BYTE6(v55);
  *&v62[28] = WORD2(v55);
  *(v15 - 23) = v9;
  *(v15 - 22) = v14;
  *(v15 - 42) = v12;
  *(v15 - 162) = BYTE6(v12);
  *(v15 - 82) = WORD2(v12);
  *(v15 - 20) = v13;
  *(v15 - 19) = v50;
  *(v15 - 36) = v49;
  *(v15 - 138) = BYTE6(v49);
  *(v15 - 70) = WORD2(v49);
  *(v15 - 17) = v48;
  *(v15 - 16) = v47;
  *(v15 - 30) = v46;
  *(v15 - 114) = BYTE6(v46);
  *(v15 - 58) = WORD2(v46);
  *(v15 - 14) = v11;
  *(v15 - 13) = v53;
  *(v15 - 24) = v55;
  *(v15 - 90) = BYTE6(v55);
  *(v15 - 46) = WORD2(v55);
  sub_1003A3260(&v58, v57);
  result = sub_1003A32BC((v15 - 23));
  v44 = v61;
  v51[2] = v60;
  v51[3] = v44;
  v51[4] = *v62;
  *(v51 + 79) = *&v62[15];
  v45 = v59;
  *v51 = v58;
  v51[1] = v45;
  return result;
}

uint64_t sub_100402B48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  result = sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (v8)
  {
    return result;
  }

  v18 = sub_10041F1D8(a1, a2, a3, a4, a5, a6, a7);
  v99 = a5;
  v100 = a6;
  v102 = a7;
  v98 = a8;
  if (v18)
  {
    v20 = v18;
    v21 = v19;
    swift_beginAccess();
    v22 = *(v20 + 24) + ((v21 >> 24) & 0xFFFF00 | BYTE6(v21));
    v23 = sub_1004A58D4();
    v25 = v24;

    v26 = a2 + 1;
    if (!__OFADD__(a2, 1))
    {
LABEL_4:
      if (v26 >= a3)
      {

        sub_1003A5228();
        swift_allocError();
        *v30 = a3;
        return swift_willThrow();
      }

      v27 = *a1;
      v28 = *(a1 + 8);
      v29 = *(a1 + 16);
      v96 = *(a1 + 20);
      v94 = *(a1 + 22);
      sub_100469DF8(a1);
      goto LABEL_11;
    }
  }

  else
  {
    v23 = 0;
    v25 = 0;
    v26 = a2 + 1;
    if (!__OFADD__(a2, 1))
    {
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_11:
  v31 = sub_10041F1D8(a1, a2, a3, a4, v99, v100, v102);
  v88 = v32;
  v34 = v33;
  v97 = v31;
  v35 = *a1;
  v36 = *(a1 + 8);
  v95 = *(a1 + 16);
  v92 = *(a1 + 20);
  v89 = *(a1 + 22);
  sub_100469DF8(a1);
  v93 = sub_100402384(a1, a2, a3, a4, v99, v100, v102);
  v37 = *a1;
  v38 = *(a1 + 8);
  v39 = *(a1 + 16);
  v90 = *(a1 + 20);
  v86 = *(a1 + 22);
  sub_100469DF8(a1);
  v91 = sub_100402384(a1, a2, a3, a4, v99, v100, v102);
  v40 = *a1;
  v41 = *(a1 + 8);
  v42 = *(a1 + 16);
  v87 = *(a1 + 20);
  v84 = *(a1 + 22);
  sub_100469DF8(a1);
  v85 = sub_100402384(a1, a2, a3, a4, v99, v100, v102);
  v43 = *a1;
  v44 = *(a1 + 8);
  v82 = *(a1 + 16);
  v79 = *(a1 + 20);
  v75 = *(a1 + 22);
  sub_100469DF8(a1);
  v83 = sub_100402384(a1, a2, a3, a4, v99, v100, v102);
  v45 = *a1;
  v46 = *(a1 + 8);
  v80 = *(a1 + 16);
  v76 = *(a1 + 20);
  v71 = *(a1 + 22);
  sub_100469DF8(a1);
  v81 = sub_100402384(a1, a2, a3, a4, v99, v100, v102);
  v47 = *a1;
  v48 = *(a1 + 8);
  v77 = *(a1 + 16);
  v72 = *(a1 + 20);
  v68 = *(a1 + 22);
  sub_100469DF8(a1);
  v78 = sub_100402384(a1, a2, a3, a4, v99, v100, v102);
  v49 = *a1;
  v50 = *(a1 + 8);
  v73 = *(a1 + 16);
  v69 = *(a1 + 20);
  v66 = *(a1 + 22);
  sub_100469DF8(a1);
  v51 = sub_10041F1D8(a1, a2, a3, a4, v99, v100, v102);
  if (v51)
  {
    v70 = sub_10046C184(v51, v52, v53 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001004B03C0, 103);
    v74 = v54;
  }

  else
  {
    v70 = 0;
    v74 = 0;
  }

  v67 = *a1;
  v55 = *(a1 + 8);
  v64 = *(a1 + 20);
  v65 = *(a1 + 16);
  v63 = *(a1 + 22);
  sub_100469DF8(a1);
  v56 = sub_10041F1D8(a1, a2, a3, a4, v99, v100, v102);
  if (v56)
  {
    v101 = sub_10046C184(v56, v57, v58 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001004B03C0, 103);
    v103 = v59;
  }

  else
  {
    v101 = 0;
    v103 = 0;
  }

  sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  *&v105 = v23;
  *(&v105 + 1) = v25;
  *&v106 = v97;
  *(&v106 + 1) = v34;
  LODWORD(v107) = v88;
  BYTE6(v107) = BYTE6(v88);
  WORD2(v107) = WORD2(v88);
  *(&v107 + 1) = v93;
  *&v108 = v91;
  *(&v108 + 1) = v85;
  *&v109 = v83;
  *(&v109 + 1) = v81;
  *&v110 = v78;
  *(&v110 + 1) = v70;
  *&v111 = v74;
  *(&v111 + 1) = v101;
  v112 = v103;
  v113[0] = v23;
  v113[1] = v25;
  v113[2] = v97;
  v113[3] = v34;
  v114 = v88;
  v116 = BYTE6(v88);
  v115 = WORD2(v88);
  v117 = v93;
  v118 = v91;
  v119 = v85;
  v120 = v83;
  v121 = v81;
  v122 = v78;
  v123 = v70;
  v124 = v74;
  v125 = v101;
  v126 = v103;
  sub_1002FA030(&v105, v104);
  result = sub_1003E771C(v113);
  v60 = v110;
  *(v98 + 64) = v109;
  *(v98 + 80) = v60;
  *(v98 + 96) = v111;
  *(v98 + 112) = v112;
  v61 = v106;
  *v98 = v105;
  *(v98 + 16) = v61;
  v62 = v108;
  *(v98 + 32) = v107;
  *(v98 + 48) = v62;
  return result;
}

uint64_t sub_100403620(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = (a1 + 32);
  v4 = v1 - 1;
  v5 = _swiftEmptyArrayStorage;
  while (1)
  {
    *&v71[15] = *(v3 + 79);
    v6 = v3[4];
    v70 = v3[3];
    *v71 = v6;
    v7 = v3[2];
    v68 = v3[1];
    v69 = v7;
    v67 = *v3;
    if (*&v71[8])
    {
      break;
    }

    if (v70)
    {
      v49 = v70;
      LODWORD(v50) = *v71;
      WORD2(v50) = *&v71[4];
      BYTE6(v50) = v71[6];
      *(&v50 + 1) = *(&v68 + 1);
      *&v51 = v69;
      DWORD2(v51) = DWORD2(v69);
      BYTE14(v51) = BYTE14(v69);
      WORD6(v51) = WORD6(v69);
      v52 = _swiftEmptyArrayStorage;
      v53 = v70;
      v54 = *v71;
      v55 = *&v71[4];
      v56 = v71[6];
      v57 = *(&v68 + 1);
      v58 = v69;
      v59 = DWORD2(v69);
      v61 = BYTE14(v69);
      v60 = WORD6(v69);
      v62 = _swiftEmptyArrayStorage;
      swift_retain_n();
      sub_1003A3260(&v67, &v63);

      sub_1003A31B0(&v49, &v63);
      sub_1003A320C(&v53);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1004612A0(0, *(v2 + 2) + 1, 1, v2);
      }

      v22 = *(v2 + 2);
      v21 = *(v2 + 3);
      if (v22 >= v21 >> 1)
      {
        v2 = sub_1004612A0((v21 > 1), v22 + 1, 1, v2);
      }

      sub_1003A32BC(&v67);
      *(v2 + 2) = v22 + 1;
      v23 = &v2[56 * v22];
      v25 = v50;
      v24 = v51;
      v26 = v49;
      *(v23 + 10) = v52;
      *(v23 + 3) = v25;
      *(v23 + 4) = v24;
      *(v23 + 2) = v26;
      if (!v4)
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (!*(v2 + 2))
      {
        goto LABEL_30;
      }

      sub_1003A3260(&v67, &v63);
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v27 = *(v2 + 2);
        if (!v27)
        {
          goto LABEL_49;
        }
      }

      else
      {
        result = sub_10040360C(v2);
        v2 = result;
        v27 = *(result + 16);
        if (!v27)
        {
          goto LABEL_49;
        }
      }

      v28 = &v2[56 * v27 - 24];
      v29 = *v28;
      v30 = *(v28 + 16);
      v31 = *(v28 + 32);
      v66 = *(v28 + 48);
      v64 = v30;
      v65 = v31;
      v63 = v29;
      *(v2 + 2) = v27 - 1;
      v32 = swift_allocObject();
      v33 = v64;
      *(v32 + 16) = v63;
      *(v32 + 32) = v33;
      *(v32 + 48) = v65;
      *(v32 + 64) = v66;
      if (v27 == 1)
      {
        sub_1003A31B0(&v63, &v53);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1004613C8(0, *(v5 + 2) + 1, 1, v5);
        }

        v48 = *(v5 + 2);
        v47 = *(v5 + 3);
        if (v48 >= v47 >> 1)
        {
          v5 = sub_1004613C8((v47 > 1), v48 + 1, 1, v5);
        }

        sub_1003A320C(&v63);
        sub_1003A32BC(&v67);
        v39 = v32 | 0x8000000000000000;
        *(v5 + 2) = v48 + 1;
        v41 = &v5[8 * v48];
      }

      else
      {
        sub_1003A31B0(&v63, &v53);
        v34 = &v2[56 * v27 + 32];
        v35 = *(v34 - 64);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v34 - 64) = v35;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v35 = sub_1004613C8(0, *(v35 + 2) + 1, 1, v35);
          *(v34 - 64) = v35;
        }

        v38 = *(v35 + 2);
        v37 = *(v35 + 3);
        if (v38 >= v37 >> 1)
        {
          *(v34 - 64) = sub_1004613C8((v37 > 1), v38 + 1, 1, v35);
        }

        sub_1003A320C(&v63);
        sub_1003A32BC(&v67);
        v39 = v32 | 0x8000000000000000;
        v40 = *(v34 - 64);
        *(v40 + 16) = v38 + 1;
        v41 = (v40 + 8 * v38);
      }

      *(v41 + 4) = v39;
      if (!v4)
      {
LABEL_45:

        return v5;
      }
    }

LABEL_42:
    --v4;
    v3 += 6;
  }

  v8 = *(v2 + 2);
  if (!v8)
  {
LABEL_30:
    v42 = swift_allocObject();
    v43 = v3[3];
    v42[3] = v3[2];
    v42[4] = v43;
    v42[5] = v3[4];
    *(v42 + 95) = *(v3 + 79);
    v44 = v3[1];
    v42[1] = *v3;
    v42[2] = v44;
    sub_1003A3260(&v67, &v63);
    sub_1003A3260(&v67, &v63);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1004613C8(0, *(v5 + 2) + 1, 1, v5);
    }

    v46 = *(v5 + 2);
    v45 = *(v5 + 3);
    if (v46 >= v45 >> 1)
    {
      v5 = sub_1004613C8((v45 > 1), v46 + 1, 1, v5);
    }

    sub_1003A32BC(&v67);
    *(v5 + 2) = v46 + 1;
    *&v5[8 * v46 + 32] = v42;
    if (!v4)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v9 = swift_allocObject();
  v10 = v3[3];
  v9[3] = v3[2];
  v9[4] = v10;
  v9[5] = v3[4];
  *(v9 + 95) = *(v3 + 79);
  v11 = v3[1];
  v9[1] = *v3;
  v9[2] = v11;
  sub_1003A3260(&v67, &v63);
  sub_1003A3260(&v67, &v63);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10040360C(v2);
    v2 = result;
  }

  if (v8 <= *(v2 + 2))
  {
    v13 = &v2[56 * v8];
    v16 = *(v13 + 3);
    v15 = (v13 + 24);
    v14 = v16;
    v17 = swift_isUniquelyReferenced_nonNull_native();
    *v15 = v16;
    if ((v17 & 1) == 0)
    {
      v14 = sub_1004613C8(0, *(v14 + 2) + 1, 1, v14);
      *v15 = v14;
    }

    v19 = *(v14 + 2);
    v18 = *(v14 + 3);
    if (v19 >= v18 >> 1)
    {
      *v15 = sub_1004613C8((v18 > 1), v19 + 1, 1, v14);
    }

    sub_1003A32BC(&v67);
    v20 = *v15;
    *(v20 + 2) = v19 + 1;
    *&v20[8 * v19 + 32] = v9;
    if (!v4)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_100403BC4()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100403C0C()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[8];

  v4 = v0[11];

  return _swift_deallocObject(v0, 111, 7);
}

double sub_100403C5C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_10000C9C0(&qword_1005DC7B0, &qword_100504128);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004D1B20;
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a7;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1004060F0;
  *(v16 + 24) = v15;
  *(inited + 32) = 0x542E323238434652;
  *(inited + 40) = 0xEB00000000545845;
  *(inited + 48) = sub_100406108;
  *(inited + 56) = v16;
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  v17[5] = a7;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_100406120;
  *(v18 + 24) = v17;
  strcpy((inited + 64), "RFC822.HEADER");
  *(inited + 78) = -4864;
  *(inited + 80) = sub_100406904;
  *(inited + 88) = v18;
  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a6;
  v19[5] = a7;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_100406138;
  *(v20 + 24) = v19;
  *(inited + 96) = 1497648962;
  *(inited + 104) = 0xE400000000000000;
  *(inited + 112) = sub_100406904;
  *(inited + 120) = v20;
  v21 = swift_allocObject();
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a6;
  v21[5] = a7;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_100406158;
  *(v22 + 24) = v21;
  *(inited + 128) = 0x5952414E4942;
  *(inited + 136) = 0xE600000000000000;
  *(inited + 144) = sub_100406904;
  *(inited + 152) = v22;
  swift_retain_n();
  v23 = sub_1004117F4(inited);
  swift_setDeallocating();
  sub_10000C9C0(&qword_1005DC798, &qword_100504118);
  swift_arrayDestroy();
  v24 = v31;
  sub_1004061E8(a1, a2, a3, v23, v29);

  if (!v24)
  {
    result = *v29;
    v26 = v29[1];
    *a8 = v29[0];
    *(a8 + 16) = v26;
    *(a8 + 32) = v30;
  }

  return result;
}

unint64_t sub_100403F54@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{

  v17 = sub_10046FB50(a1, a2, a3, a4, a5, a6, a7);
  v19 = v18;
  v21 = v20;

  if (!v8)
  {
    if (!v17)
    {
      v17 = _swiftEmptyArrayStorage;
      v19 = 0;
      v21 = 2;
    }

    result = sub_10047562C(a1, a2, a3);
    *a8 = v17;
    *(a8 + 8) = v19;
    *(a8 + 16) = v21;
    *(a8 + 24) = result;
    *(a8 + 32) = v23 & 1 | 0x40;
  }

  return result;
}

unint64_t sub_100404060@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    return result;
  }

  if (v9 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v20 = a3;
    return swift_willThrow();
  }

  v12 = result;
  v16 = *result;
  v17 = *(result + 8);
  v26 = *(result + 20);
  v27 = *(result + 16);
  v25 = *(result + 22);

  sub_10046B71C(0x5BuLL, 0xE100000000000000, 0, 0, v12, v9, a3);
  if (v8)
  {
    v19 = *v12;

    *v12 = v16;
    *(v12 + 8) = v17;
    *(v12 + 16) = v27;
    *(v12 + 20) = v26;
    *(v12 + 22) = v25;
    return swift_willThrow();
  }

  v18 = sub_100470F30(v12, v9, a3, a4, a5, a6, a7);

  sub_10046B71C(0x5DuLL, 0xE100000000000000, 0, 0, v12, v9, a3);

  if (v18)
  {
    v21 = v18;
  }

  else
  {
    v21 = _swiftEmptyArrayStorage;
  }

  result = sub_10047562C(v12, a2, a3);
  *a8 = v21;
  *(a8 + 8) = result;
  *(a8 + 16) = v22 & 1;
  *(a8 + 24) = 0;
  *(a8 + 32) = 0;
  return result;
}

uint64_t sub_10040424C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = v8;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1004048A8;
  *(v17 + 24) = v16;
  v41[0] = sub_100404E94;
  v41[1] = v17;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  result = swift_allocObject();
  *(result + 16) = sub_100404EAC;
  *(result + 24) = v18;
  v41[2] = sub_1004068EC;
  v41[3] = result;
  v20 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    swift_retain_n();
    v21 = 0;
    for (i = 0; ; i = 1)
    {
      v39 = v21;
      *(swift_allocObject() + 16) = *&v41[2 * i];
      if (v20 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v30 = a3;
      }

      else
      {
        v23 = *a1;
        v24 = *(a1 + 8);
        v25 = *(a1 + 16);
        v38 = v9;
        v26 = v20;
        v27 = *(a1 + 20);
        v28 = *(a1 + 22);

        sub_100405A98(a1, v26, a3);
        if (!v38)
        {

          sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
          result = swift_arrayDestroy();
          v32 = v51;
          *(a8 + 128) = v50;
          *(a8 + 144) = v32;
          *(a8 + 160) = v52;
          *(a8 + 176) = v53;
          v33 = v47;
          *(a8 + 64) = v46;
          *(a8 + 80) = v33;
          v34 = v49;
          *(a8 + 96) = v48;
          *(a8 + 112) = v34;
          v35 = v43;
          *a8 = v42;
          *(a8 + 16) = v35;
          v36 = v45;
          *(a8 + 32) = v44;
          *(a8 + 48) = v36;
          return result;
        }

        v29 = *a1;

        *a1 = v23;
        *(a1 + 8) = v24;
        *(a1 + 16) = v25;
        *(a1 + 20) = v27;
        *(a1 + 22) = v28;
        v20 = v26;
      }

      swift_willThrow();
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {
      }

      else
      {

        swift_errorRetain();
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
          swift_arrayDestroy();
        }
      }

      v9 = 0;
      v21 = 1;
      if (v39)
      {
        sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
        swift_arrayDestroy();
        sub_1003A527C();
        swift_allocError();
        *v31 = 0xD000000000000019;
        v31[1] = 0x80000001004B08C0;
        v31[2] = 0xD000000000000020;
        v31[3] = 0x80000001004B03C0;
        v31[4] = 294;
        return swift_willThrow();
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1004046C4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v5 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v15 = a3;
    }

    else
    {
      v7 = result;
      v9 = *result;
      v10 = *(result + 8);
      v11 = *(result + 16);
      v12 = *(result + 20);
      v13 = *(result + 22);

      sub_10046B71C(0x202AuLL, 0xE200000000000000, 0, 0, v7, v5, a3);
      if (!v4)
      {
        v21 = sub_100405E9C(v7, v5, a3);
        sub_10046B71C(0x2820484354454620uLL, 0xE800000000000000, 0, 0, v7, v5, a3);

        LODWORD(v22[0]) = v21;
        result = sub_1002F9BA4(v22);
        v16 = v22[9];
        *(a4 + 128) = v22[8];
        *(a4 + 144) = v16;
        *(a4 + 160) = v22[10];
        *(a4 + 176) = v23;
        v17 = v22[5];
        *(a4 + 64) = v22[4];
        *(a4 + 80) = v17;
        v18 = v22[7];
        *(a4 + 96) = v22[6];
        *(a4 + 112) = v18;
        v19 = v22[1];
        *a4 = v22[0];
        *(a4 + 16) = v19;
        v20 = v22[3];
        *(a4 + 32) = v22[2];
        *(a4 + 48) = v20;
        return result;
      }

      v14 = *v7;

      *v7 = v9;
      *(v7 + 8) = v10;
      *(v7 + 16) = v11;
      *(v7 + 20) = v12;
      *(v7 + 22) = v13;
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100404870()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1004048A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  return sub_1004046C4(a1, a2, a3, a4);
}

uint64_t sub_1004048C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v5 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v15 = a3;
    }

    else
    {
      v7 = result;
      v9 = *result;
      v10 = *(result + 8);
      v11 = *(result + 16);
      v12 = *(result + 20);
      v13 = *(result + 22);

      sub_10046B71C(0x202AuLL, 0xE200000000000000, 0, 0, v7, v5, a3);
      if (!v4)
      {
        v21 = sub_100405E9C(v7, v5, a3);
        sub_10046B71C(0x4354454644495520uLL, 0xEB00000000282048, 0, 0, v7, v5, a3);

        LODWORD(v22[0]) = v21;
        result = sub_1002F9B90(v22);
        v16 = v22[9];
        *(a4 + 128) = v22[8];
        *(a4 + 144) = v16;
        *(a4 + 160) = v22[10];
        *(a4 + 176) = v23;
        v17 = v22[5];
        *(a4 + 64) = v22[4];
        *(a4 + 80) = v17;
        v18 = v22[7];
        *(a4 + 96) = v22[6];
        *(a4 + 112) = v18;
        v19 = v22[1];
        *a4 = v22[0];
        *(a4 + 16) = v19;
        v20 = v22[3];
        *(a4 + 32) = v22[2];
        *(a4 + 48) = v20;
        return result;
      }

      v14 = *v7;

      *v7 = v9;
      *(v7 + 8) = v10;
      *(v7 + 16) = v11;
      *(v7 + 20) = v12;
      *(v7 + 22) = v13;
    }

    return swift_willThrow();
  }

  return result;
}

void sub_100404A7C(uint64_t a1)
{
  v3 = *(v1 + 144);
  v26[8] = *(v1 + 128);
  v26[9] = v3;
  v26[10] = *(v1 + 160);
  v27 = *(v1 + 176);
  v4 = *(v1 + 80);
  v26[4] = *(v1 + 64);
  v26[5] = v4;
  v5 = *(v1 + 112);
  v26[6] = *(v1 + 96);
  v26[7] = v5;
  v6 = *(v1 + 16);
  v26[0] = *v1;
  v26[1] = v6;
  v7 = *(v1 + 48);
  v26[2] = *(v1 + 32);
  v26[3] = v7;
  v8 = sub_1003043EC(v26);
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      v16 = sub_1002F9BA4(v26);
      v17 = *(v16 + 32);
      v13 = *(v16 + 40);
      v18 = *(v16 + 16);
      v28 = *v16;
      v29 = v18;
      LOBYTE(v30) = v17;
      v15 = 3;
    }

    else
    {
      if (v8 != 4)
      {
        v19 = 5;
        goto LABEL_14;
      }

      v11 = sub_1002F9BA4(v26);
      v12 = *(v11 + 32);
      v13 = *(v11 + 40);
      v14 = *(v11 + 16);
      v28 = *v11;
      v29 = v14;
      LOBYTE(v30) = v12;
      v15 = 4;
    }

    sub_1004A6EB4(v15);
    StreamingKind.hash(into:)(a1);
    v19 = v13;
LABEL_14:
    sub_1004A6EB4(v19);
    return;
  }

  if (!v8)
  {
    v9 = *sub_1002F9BA4(v26);
    v10 = 0;
    goto LABEL_9;
  }

  if (v8 == 1)
  {
    v9 = *sub_1002F9BA4(v26);
    v10 = 1;
LABEL_9:
    sub_1004A6EB4(v10);
    sub_1004A6EE4(v9);
    return;
  }

  v20 = sub_1002F9BA4(v26);
  v21 = *(v20 + 144);
  v36 = *(v20 + 128);
  v37 = v21;
  v38 = *(v20 + 160);
  v39 = *(v20 + 176);
  v22 = *(v20 + 80);
  v32 = *(v20 + 64);
  v33 = v22;
  v23 = *(v20 + 112);
  v34 = *(v20 + 96);
  v35 = v23;
  v24 = *(v20 + 16);
  v28 = *v20;
  v29 = v24;
  v25 = *(v20 + 48);
  v30 = *(v20 + 32);
  v31 = v25;
  sub_1004A6EB4(2uLL);
  MessageAttribute.hash(into:)(a1);
}

Swift::Int sub_100404C10()
{
  sub_1004A6E94();
  v1 = *(v0 + 144);
  v26[8] = *(v0 + 128);
  v26[9] = v1;
  v26[10] = *(v0 + 160);
  v27 = *(v0 + 176);
  v2 = *(v0 + 80);
  v26[4] = *(v0 + 64);
  v26[5] = v2;
  v3 = *(v0 + 112);
  v26[6] = *(v0 + 96);
  v26[7] = v3;
  v4 = *(v0 + 16);
  v26[0] = *v0;
  v26[1] = v4;
  v5 = *(v0 + 48);
  v26[2] = *(v0 + 32);
  v26[3] = v5;
  v6 = sub_1003043EC(v26);
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v14 = sub_1002F9BA4(v26);
      v15 = *(v14 + 32);
      v11 = *(v14 + 40);
      v16 = *(v14 + 16);
      v28 = *v14;
      v29 = v16;
      LOBYTE(v30) = v15;
      v13 = 3;
    }

    else
    {
      if (v6 != 4)
      {
        v17 = 5;
        goto LABEL_14;
      }

      v9 = sub_1002F9BA4(v26);
      v10 = *(v9 + 32);
      v11 = *(v9 + 40);
      v12 = *(v9 + 16);
      v28 = *v9;
      v29 = v12;
      LOBYTE(v30) = v10;
      v13 = 4;
    }

    sub_1004A6EB4(v13);
    StreamingKind.hash(into:)(v25);
    v17 = v11;
LABEL_14:
    sub_1004A6EB4(v17);
    return sub_1004A6F14();
  }

  if (v6)
  {
    if (v6 != 1)
    {
      v18 = sub_1002F9BA4(v26);
      v19 = *(v18 + 144);
      v36 = *(v18 + 128);
      v37 = v19;
      v38 = *(v18 + 160);
      v39 = *(v18 + 176);
      v20 = *(v18 + 80);
      v32 = *(v18 + 64);
      v33 = v20;
      v21 = *(v18 + 112);
      v34 = *(v18 + 96);
      v35 = v21;
      v22 = *(v18 + 16);
      v28 = *v18;
      v29 = v22;
      v23 = *(v18 + 48);
      v30 = *(v18 + 32);
      v31 = v23;
      sub_1004A6EB4(2uLL);
      MessageAttribute.hash(into:)(v25);
      return sub_1004A6F14();
    }

    v7 = *sub_1002F9BA4(v26);
    v8 = 1;
  }

  else
  {
    v7 = *sub_1002F9BA4(v26);
    v8 = 0;
  }

  sub_1004A6EB4(v8);
  sub_1004A6EE4(v7);
  return sub_1004A6F14();
}

double sub_100404DC8@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, a1, *a2, v7);
  if (!v3)
  {
    sub_100464188(a1, v6, v7);
    sub_1002F9F80(v14);
    v9 = v22;
    *(a3 + 128) = v21;
    *(a3 + 144) = v9;
    *(a3 + 160) = v23;
    *(a3 + 176) = v24;
    v10 = v18;
    *(a3 + 64) = v17;
    *(a3 + 80) = v10;
    v11 = v20;
    *(a3 + 96) = v19;
    *(a3 + 112) = v11;
    v12 = v14[1];
    *a3 = v14[0];
    *(a3 + 16) = v12;
    result = *&v15;
    v13 = v16;
    *(a3 + 32) = v15;
    *(a3 + 48) = v13;
  }

  return result;
}

uint64_t sub_100404EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  return sub_1004048C8(a1, a2, a3, a4);
}

Swift::Int sub_100404ED4()
{
  sub_1004A6E94();
  v1 = *(v0 + 144);
  v38[8] = *(v0 + 128);
  v38[9] = v1;
  v38[10] = *(v0 + 160);
  v39 = *(v0 + 176);
  v2 = *(v0 + 80);
  v38[4] = *(v0 + 64);
  v38[5] = v2;
  v3 = *(v0 + 112);
  v38[6] = *(v0 + 96);
  v38[7] = v3;
  v4 = *(v0 + 16);
  v38[0] = *v0;
  v38[1] = v4;
  v5 = *(v0 + 48);
  v38[2] = *(v0 + 32);
  v38[3] = v5;
  v6 = sub_1003043EC(v38);
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v14 = sub_1002F9BA4(v38);
      v15 = *(v14 + 32);
      v11 = *(v14 + 40);
      v16 = *(v14 + 16);
      v26 = *v14;
      v27 = v16;
      LOBYTE(v28) = v15;
      v13 = 3;
    }

    else
    {
      if (v6 != 4)
      {
        v17 = 5;
        goto LABEL_14;
      }

      v9 = sub_1002F9BA4(v38);
      v10 = *(v9 + 32);
      v11 = *(v9 + 40);
      v12 = *(v9 + 16);
      v26 = *v9;
      v27 = v12;
      LOBYTE(v28) = v10;
      v13 = 4;
    }

    sub_1004A6EB4(v13);
    StreamingKind.hash(into:)(v25);
    v17 = v11;
LABEL_14:
    sub_1004A6EB4(v17);
    return sub_1004A6F14();
  }

  if (v6)
  {
    if (v6 != 1)
    {
      v18 = sub_1002F9BA4(v38);
      v19 = *(v18 + 144);
      v34 = *(v18 + 128);
      v35 = v19;
      v36 = *(v18 + 160);
      v37 = *(v18 + 176);
      v20 = *(v18 + 80);
      v30 = *(v18 + 64);
      v31 = v20;
      v21 = *(v18 + 112);
      v32 = *(v18 + 96);
      v33 = v21;
      v22 = *(v18 + 16);
      v26 = *v18;
      v27 = v22;
      v23 = *(v18 + 48);
      v28 = *(v18 + 32);
      v29 = v23;
      sub_1004A6EB4(2uLL);
      MessageAttribute.hash(into:)(v25);
      return sub_1004A6F14();
    }

    v7 = *sub_1002F9BA4(v38);
    v8 = 1;
  }

  else
  {
    v7 = *sub_1002F9BA4(v38);
    v8 = 0;
  }

  sub_1004A6EB4(v8);
  sub_1004A6EE4(v7);
  return sub_1004A6F14();
}

uint64_t sub_100405088(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 144);
  v13[8] = *(a1 + 128);
  v13[9] = v2;
  v13[10] = *(a1 + 160);
  v14 = *(a1 + 176);
  v3 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v3;
  v4 = *(a1 + 112);
  v13[6] = *(a1 + 96);
  v13[7] = v4;
  v5 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v5;
  v6 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v6;
  v7 = *(a2 + 144);
  v15[8] = *(a2 + 128);
  v15[9] = v7;
  v15[10] = *(a2 + 160);
  v16 = *(a2 + 176);
  v8 = *(a2 + 80);
  v15[4] = *(a2 + 64);
  v15[5] = v8;
  v9 = *(a2 + 112);
  v15[6] = *(a2 + 96);
  v15[7] = v9;
  v10 = *(a2 + 16);
  v15[0] = *a2;
  v15[1] = v10;
  v11 = *(a2 + 48);
  v15[2] = *(a2 + 32);
  v15[3] = v11;
  return sub_100405AE8(v13, v15) & 1;
}

uint64_t sub_10040512C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = v8;
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  v17[5] = a7;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_100405F74;
  *(v18 + 24) = v17;
  v41 = sub_1004068EC;
  v42 = v18;
  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a6;
  v19[5] = a7;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_100405F94;
  *(v20 + 24) = v19;
  v43 = sub_1004068EC;
  v44 = v20;
  v21 = swift_allocObject();
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a6;
  v21[5] = a7;
  result = swift_allocObject();
  *(result + 16) = sub_100405FB4;
  *(result + 24) = v21;
  v45 = sub_1004068EC;
  v46 = result;
  v47 = sub_100404DC8;
  v48 = 0;
  v23 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    swift_retain_n();
    v24 = 32;
    while (1)
    {
      *(swift_allocObject() + 16) = *&v40[v24];
      if (v23 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v31 = a3;
      }

      else
      {
        v25 = *a1;
        v26 = *(a1 + 8);
        v39 = *(a1 + 16);
        v27 = a3;
        v28 = *(a1 + 20);
        v29 = *(a1 + 22);

        sub_10040694C(a1, v23, v27);
        if (!v9)
        {

          sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
          result = swift_arrayDestroy();
          v33 = v58;
          *(a8 + 128) = v57;
          *(a8 + 144) = v33;
          *(a8 + 160) = v59;
          *(a8 + 176) = v60;
          v34 = v54;
          *(a8 + 64) = v53;
          *(a8 + 80) = v34;
          v35 = v56;
          *(a8 + 96) = v55;
          *(a8 + 112) = v35;
          v36 = v50;
          *a8 = v49;
          *(a8 + 16) = v36;
          v37 = v52;
          *(a8 + 32) = v51;
          *(a8 + 48) = v37;
          return result;
        }

        v30 = *a1;

        *a1 = v25;
        *(a1 + 8) = v26;
        *(a1 + 16) = v39;
        *(a1 + 20) = v28;
        *(a1 + 22) = v29;
        a3 = v27;
      }

      swift_willThrow();
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {
      }

      else
      {

        swift_errorRetain();
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
          swift_arrayDestroy();
        }
      }

      v9 = 0;
      v24 += 16;
      if (v24 == 96)
      {
        sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
        swift_arrayDestroy();
        sub_1003A527C();
        swift_allocError();
        *v32 = 0xD000000000000019;
        v32[1] = 0x80000001004B08C0;
        v32[2] = 0xD000000000000020;
        v32[3] = 0x80000001004B03C0;
        v32[4] = 356;
        return swift_willThrow();
      }
    }
  }

  __break(1u);
  return result;
}

double sub_1004055EC@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_10040CB98(a1, a2, a3, a4, a5, a6, a7, v28);
  if (!v8)
  {
    v24 = v28[8];
    v25 = v28[9];
    v26 = v28[10];
    v27 = v29;
    v20 = v28[4];
    v21 = v28[5];
    v22 = v28[6];
    v23 = v28[7];
    v16 = v28[0];
    v17 = v28[1];
    v18 = v28[2];
    v19 = v28[3];
    sub_1002F9E70(&v16);
    v11 = v25;
    *(a8 + 128) = v24;
    *(a8 + 144) = v11;
    *(a8 + 160) = v26;
    *(a8 + 176) = v27;
    v12 = v21;
    *(a8 + 64) = v20;
    *(a8 + 80) = v12;
    v13 = v23;
    *(a8 + 96) = v22;
    *(a8 + 112) = v13;
    v14 = v17;
    *a8 = v16;
    *(a8 + 16) = v14;
    result = *&v18;
    v15 = v19;
    *(a8 + 32) = v18;
    *(a8 + 48) = v15;
  }

  return result;
}

void sub_1004056AC(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_100403C5C(a1, a2, a3, a4, a5, a6, a7, v40);
  if (!v8)
  {
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {
      sub_10040609C(v40);
      sub_1003A5228();
      swift_allocError();
      *v18 = a3;
      swift_willThrow();
    }

    else
    {
      v24 = v40[1];
      v25 = v40[0];
      v14 = *a1;
      v15 = *(a1 + 8);
      v16 = *(a1 + 16);
      v17 = *(a1 + 20);
      v26 = v41;
      v27 = *(a1 + 22);

      sub_100469DF8(a1);

      v28 = v25;
      v29 = v24;
      LOBYTE(v30) = v26;
      *(&v30 + 1) = sub_10042E674(a1, a2, a3, a7);
      sub_1002F9F58(&v28);
      v19 = v37;
      *(a8 + 128) = v36;
      *(a8 + 144) = v19;
      *(a8 + 160) = v38;
      *(a8 + 176) = v39;
      v20 = v33;
      *(a8 + 64) = v32;
      *(a8 + 80) = v20;
      v21 = v35;
      *(a8 + 96) = v34;
      *(a8 + 112) = v21;
      v22 = v29;
      *a8 = v28;
      *(a8 + 16) = v22;
      v23 = v31;
      *(a8 + 32) = v30;
      *(a8 + 48) = v23;
    }
  }
}

void sub_10040586C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_100403C5C(a1, a2, a3, a4, a5, a6, a7, v48);
  if (!v8)
  {
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {
      sub_10040609C(v48);
      sub_1003A5228();
      swift_allocError();
      *v18 = a3;
      swift_willThrow();
    }

    else
    {
      v34 = v48[1];
      v35 = v48[0];
      v33 = v49;
      v13 = *a1;
      v14 = *(a1 + 8);
      v15 = *(a1 + 16);
      v16 = *(a1 + 20);
      v17 = *(a1 + 22);

      sub_100469DF8(a1);

      v19 = *a1;
      v20 = *(a1 + 8);
      v21 = *(a1 + 16);
      v22 = *(a1 + 20);
      v23 = *(a1 + 22);

      sub_10042D898(a1, a2, a3);
      v32 = HIDWORD(v24);
      v25 = *a1;
      v26 = v24;

      *a1 = v19;
      *(a1 + 8) = v20;
      *(a1 + 16) = v21;
      *(a1 + 20) = v22;
      *(a1 + 22) = v23;
      v37 = v34;
      v36 = v35;
      LOBYTE(v38) = v33;
      *(&v38 + 1) = (v32 - v26);
      sub_1002F9F6C(&v36);
      v27 = v45;
      *(a8 + 128) = v44;
      *(a8 + 144) = v27;
      *(a8 + 160) = v46;
      *(a8 + 176) = v47;
      v28 = v41;
      *(a8 + 64) = v40;
      *(a8 + 80) = v28;
      v29 = v43;
      *(a8 + 96) = v42;
      *(a8 + 112) = v29;
      v30 = v37;
      *a8 = v36;
      *(a8 + 16) = v30;
      v31 = v39;
      *(a8 + 32) = v38;
      *(a8 + 48) = v31;
    }
  }
}

uint64_t sub_100405AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *))
{
  v5[1] = a3;
  v5[0] = a2;
  return a4(a1, v5);
}

uint64_t sub_100405AE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 144);
  v83[8] = *(a1 + 128);
  v83[9] = v3;
  v83[10] = *(a1 + 160);
  v84 = *(a1 + 176);
  v4 = *(a1 + 80);
  v83[4] = *(a1 + 64);
  v83[5] = v4;
  v5 = *(a1 + 112);
  v83[6] = *(a1 + 96);
  v83[7] = v5;
  v6 = *(a1 + 16);
  v83[0] = *a1;
  v83[1] = v6;
  v7 = *(a1 + 48);
  v83[2] = *(a1 + 32);
  v83[3] = v7;
  v8 = sub_1003043EC(v83);
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      v29 = sub_1002F9BA4(v83);
      v57 = *(v29 + 16);
      v58 = *v29;
      v16 = *(v29 + 32);
      v17 = *(v29 + 40);
      v30 = *(a2 + 48);
      v87 = *(a2 + 32);
      v88 = v30;
      v31 = *(a2 + 16);
      v85 = *a2;
      v86 = v31;
      v32 = *(a2 + 112);
      v91 = *(a2 + 96);
      v92 = v32;
      v33 = *(a2 + 80);
      v89 = *(a2 + 64);
      v90 = v33;
      v96 = *(a2 + 176);
      v34 = *(a2 + 160);
      v94 = *(a2 + 144);
      v95 = v34;
      v93 = *(a2 + 128);
      if (sub_1003043EC(&v85) != 3)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v8 != 4)
      {
        v51 = *(a2 + 144);
        v93 = *(a2 + 128);
        v94 = v51;
        v95 = *(a2 + 160);
        v96 = *(a2 + 176);
        v52 = *(a2 + 80);
        v89 = *(a2 + 64);
        v90 = v52;
        v53 = *(a2 + 112);
        v91 = *(a2 + 96);
        v92 = v53;
        v54 = *(a2 + 16);
        v85 = *a2;
        v86 = v54;
        v55 = *(a2 + 48);
        v87 = *(a2 + 32);
        v88 = v55;
        if (sub_1003043EC(&v85) == 5)
        {
          v28 = 1;
          return v28 & 1;
        }

        goto LABEL_19;
      }

      v15 = sub_1002F9BA4(v83);
      v57 = *(v15 + 16);
      v58 = *v15;
      v16 = *(v15 + 32);
      v17 = *(v15 + 40);
      v18 = *(a2 + 48);
      v87 = *(a2 + 32);
      v88 = v18;
      v19 = *(a2 + 16);
      v85 = *a2;
      v86 = v19;
      v20 = *(a2 + 112);
      v91 = *(a2 + 96);
      v92 = v20;
      v21 = *(a2 + 80);
      v89 = *(a2 + 64);
      v90 = v21;
      v96 = *(a2 + 176);
      v22 = *(a2 + 160);
      v94 = *(a2 + 144);
      v95 = v22;
      v93 = *(a2 + 128);
      if (sub_1003043EC(&v85) != 4)
      {
        goto LABEL_19;
      }
    }

    v35 = sub_1002F9BA4(&v85);
    v36 = *(v35 + 32);
    v37 = *(v35 + 40);
    v59 = v58;
    v60 = v57;
    LOBYTE(v61) = v16;
    v38 = *(v35 + 16);
    v71 = *v35;
    v72 = v38;
    LOBYTE(v73) = v36;
    if (_s12NIOIMAPCore213StreamingKindO21__derived_enum_equalsySbAC_ACtFZ_0(&v59, &v71))
    {
      v28 = v17 == v37;
      return v28 & 1;
    }

LABEL_19:
    v28 = 0;
    return v28 & 1;
  }

  if (v8)
  {
    if (v8 == 1)
    {
      v9 = *sub_1002F9BA4(v83);
      v10 = *(a2 + 48);
      v87 = *(a2 + 32);
      v88 = v10;
      v11 = *(a2 + 16);
      v85 = *a2;
      v86 = v11;
      v12 = *(a2 + 112);
      v91 = *(a2 + 96);
      v92 = v12;
      v13 = *(a2 + 80);
      v89 = *(a2 + 64);
      v90 = v13;
      v96 = *(a2 + 176);
      v14 = *(a2 + 160);
      v94 = *(a2 + 144);
      v95 = v14;
      v93 = *(a2 + 128);
      if (sub_1003043EC(&v85) != 1)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    v39 = sub_1002F9BA4(v83);
    v93 = *(v39 + 128);
    v94 = *(v39 + 144);
    v95 = *(v39 + 160);
    v96 = *(v39 + 176);
    v89 = *(v39 + 64);
    v90 = *(v39 + 80);
    v91 = *(v39 + 96);
    v92 = *(v39 + 112);
    v85 = *v39;
    v86 = *(v39 + 16);
    v87 = *(v39 + 32);
    v88 = *(v39 + 48);
    v40 = *(a2 + 16);
    v59 = *a2;
    v60 = v40;
    v41 = *(a2 + 48);
    v61 = *(a2 + 32);
    v62 = v41;
    v42 = *(a2 + 80);
    v63 = *(a2 + 64);
    v64 = v42;
    v43 = *(a2 + 112);
    v65 = *(a2 + 96);
    v66 = v43;
    v44 = *(a2 + 144);
    v67 = *(a2 + 128);
    v68 = v44;
    v69 = *(a2 + 160);
    v70 = *(a2 + 176);
    if (sub_1003043EC(&v59) == 2)
    {
      v45 = sub_1002F9BA4(&v59);
      v46 = *(v45 + 144);
      v79 = *(v45 + 128);
      v80 = v46;
      v81 = *(v45 + 160);
      v82 = *(v45 + 176);
      v47 = *(v45 + 80);
      v75 = *(v45 + 64);
      v76 = v47;
      v48 = *(v45 + 112);
      v77 = *(v45 + 96);
      v78 = v48;
      v49 = *(v45 + 16);
      v71 = *v45;
      v72 = v49;
      v50 = *(v45 + 48);
      v73 = *(v45 + 32);
      v74 = v50;
      v28 = _s12NIOIMAPCore216MessageAttributeO21__derived_enum_equalsySbAC_ACtFZ_0(&v85, v71.i8);
      return v28 & 1;
    }

    goto LABEL_19;
  }

  v9 = *sub_1002F9BA4(v83);
  v23 = *(a2 + 48);
  v87 = *(a2 + 32);
  v88 = v23;
  v24 = *(a2 + 16);
  v85 = *a2;
  v86 = v24;
  v25 = *(a2 + 112);
  v91 = *(a2 + 96);
  v92 = v25;
  v26 = *(a2 + 80);
  v89 = *(a2 + 64);
  v90 = v26;
  v96 = *(a2 + 176);
  v27 = *(a2 + 160);
  v94 = *(a2 + 144);
  v95 = v27;
  v93 = *(a2 + 128);
  if (sub_1003043EC(&v85))
  {
    goto LABEL_19;
  }

LABEL_11:
  v28 = *sub_1002F9BA4(&v85) == v9;
  return v28 & 1;
}

unint64_t sub_100405E9C(unint64_t a1, uint64_t a2, int64_t a3)
{
  result = sub_10046C278(a1, a2, a3, 0);
  if (!v3)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      v5 = " in body structure";
      v7 = 202;
      v6 = 0xD000000000000011;
    }

    else
    {
      if (result - 0x100000000 >= 0xFFFFFFFF00000001)
      {
        return result;
      }

      v5 = "No month match for ";
      v6 = 0xD00000000000001DLL;
      v7 = 87;
    }

    v8 = v5 | 0x8000000000000000;
    sub_1003A527C();
    swift_allocError();
    *v9 = v6;
    v9[1] = v8;
    v9[2] = 0xD000000000000020;
    v9[3] = 0x80000001004B03C0;
    v9[4] = v7;
    return swift_willThrow();
  }

  return result;
}

double sub_100405FD4@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v6(v14, a1, *a2, a2[1]);
  if (!v4)
  {
    v9 = v22;
    *(a3 + 128) = v21;
    *(a3 + 144) = v9;
    *(a3 + 160) = v23;
    *(a3 + 176) = v24;
    v10 = v18;
    *(a3 + 64) = v17;
    *(a3 + 80) = v10;
    v11 = v20;
    *(a3 + 96) = v19;
    *(a3 + 112) = v11;
    v12 = v14[1];
    *a3 = v14[0];
    *(a3 + 16) = v12;
    result = *&v15;
    v13 = v16;
    *(a3 + 32) = v15;
    *(a3 + 48) = v13;
  }

  return result;
}

uint64_t sub_100406064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[1] = a3;
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7[0] = a2;
  return v4(a1, v7);
}

void sub_1004060F0(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0x80;
}

void sub_100406120(uint64_t a1@<X8>)
{
  *a1 = 2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0x80;
}

double sub_100406178@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v6(v10, a1, *a2, a2[1]);
  if (!v4)
  {
    result = *v10;
    v9 = v10[1];
    *a3 = v10[0];
    *(a3 + 16) = v9;
    *(a3 + 32) = v11;
  }

  return result;
}

uint64_t sub_1004061E8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (!__OFADD__(a2, 1))
  {
    v7 = result;
    v8 = *result;
    v9 = *(result + 8);
    v10 = *(result + 16);
    v11 = *(result + 20);
    v12 = *(result + 22);
    if (a2 + 1 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v14 = a3;
    }

    else
    {

      sub_1004658F8(v7, &v32);
      if (!v5)
      {
        v28 = v11;
        sub_10046C184(v32, *(&v32 + 1), v33 | (WORD2(v33) << 32) | (BYTE6(v33) << 48), 0xD000000000000020, 0x80000001004B03C0, 84);
        v27 = sub_1004A5834();
        v16 = v15;

        if (*(a4 + 16))
        {
          v17 = sub_100064090(v27, v16);
          if (v18)
          {
            v19 = v17;

            v20 = *(a4 + 56) + 16 * v19;
            v22 = *v20;
            v21 = *(v20 + 8);
            v31[0] = a2;
            v31[1] = a3;

            v22(&v32, v7, v31);

            v25 = v34;
            v26 = v33;
            *a5 = v32;
            *(a5 + 16) = v26;
            *(a5 + 32) = v25;
            return result;
          }
        }

        *&v32 = 0;
        *(&v32 + 1) = 0xE000000000000000;
        sub_1004A6724(25);

        *&v32 = 0xD000000000000017;
        *(&v32 + 1) = 0x80000001004B08E0;
        v35._countAndFlagsBits = v27;
        v35._object = v16;
        sub_1004A5994(v35);

        v23 = v32;
        sub_1003A527C();
        swift_allocError();
        *v24 = v23;
        *(v24 + 16) = 0xD000000000000020;
        *(v24 + 24) = 0x80000001004B03C0;
        *(v24 + 32) = 86;
        swift_willThrow();

        v11 = v28;
LABEL_7:
        *v7 = v8;
        *(v7 + 8) = v9;
        *(v7 + 16) = v10;
        *(v7 + 20) = v11;
        *(v7 + 22) = v12;
        return swift_willThrow();
      }
    }

    swift_willThrow();

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004064C0(uint64_t result, uint64_t a2, int64_t a3, uint64_t a4)
{
  if (!__OFADD__(a2, 1))
  {
    v6 = result;
    v7 = *result;
    v8 = *(result + 8);
    v9 = *(result + 16);
    v10 = *(result + 20);
    v11 = *(result + 22);
    if (a2 + 1 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v13 = a3;
    }

    else
    {

      sub_1004658F8(v6, &v29);
      if (!v4)
      {
        v26 = v10;
        sub_10046C184(v29, v30, v31 | (v32 << 32) | (v33 << 48), 0xD000000000000020, 0x80000001004B03C0, 84);
        v25 = sub_1004A5834();
        v15 = v14;

        if (*(a4 + 16))
        {
          v16 = sub_100064090(v25, v15);
          if (v17)
          {
            v18 = v16;

            v19 = *(a4 + 56) + 16 * v18;
            v21 = *v19;
            v20 = *(v19 + 8);
            v29 = a2;
            v30 = a3;

            v21(&v28, v6, &v29);

            return v28;
          }
        }

        v29 = 0;
        v30 = 0xE000000000000000;
        sub_1004A6724(25);

        v29 = 0xD000000000000017;
        v30 = 0x80000001004B08E0;
        v34._countAndFlagsBits = v25;
        v34._object = v15;
        sub_1004A5994(v34);

        v22 = v29;
        v23 = v30;
        sub_1003A527C();
        swift_allocError();
        *v24 = v22;
        v24[1] = v23;
        v24[2] = 0xD000000000000020;
        v24[3] = 0x80000001004B03C0;
        v24[4] = 86;
        swift_willThrow();

        v10 = v26;
LABEL_7:
        *v6 = v7;
        *(v6 + 8) = v8;
        *(v6 + 16) = v9;
        *(v6 + 20) = v10;
        *(v6 + 22) = v11;
        return swift_willThrow();
      }
    }

    swift_willThrow();

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_100406788()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1004067C0(uint64_t a1)
{
  v1 = (*(a1 + 176) >> 9) & 7;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1004067DC(uint64_t result, unsigned int a2)
{
  if (a2 < 5)
  {
    *(result + 176) = *(result + 176) & 0xF1FF | (a2 << 9);
  }

  else
  {
    *result = a2 - 5;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 0u;
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 168) = 0;
    *(result + 176) = 2560;
  }

  return result;
}

unint64_t sub_10040684C()
{
  result = qword_1005DC7B8;
  if (!qword_1005DC7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC7B8);
  }

  return result;
}

uint64_t sub_100406964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v9 = v8;
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  v17[5] = a7;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1004075B4;
  *(v18 + 24) = v17;
  v40 = sub_100408ED4;
  v41 = v18;
  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a6;
  v19[5] = a7;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_100408EEC;
  *(v20 + 24) = v19;
  v42 = sub_10040CB68;
  v43 = v20;
  v21 = swift_allocObject();
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a6;
  v21[5] = a7;
  result = swift_allocObject();
  *(result + 16) = sub_10040906C;
  *(result + 24) = v21;
  v44 = sub_10040CB68;
  v45 = result;
  v23 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    swift_retain_n();
    v24 = 32;
    while (1)
    {
      *(swift_allocObject() + 16) = *&v39[v24];
      if (v23 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v31 = a3;
      }

      else
      {
        v25 = *a1;
        v26 = *(a1 + 8);
        v38 = *(a1 + 16);
        v27 = a3;
        v28 = *(a1 + 20);
        v29 = *(a1 + 22);

        sub_10040BE98(a1, v23, v27);
        if (!v9)
        {

          sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
          result = swift_arrayDestroy();
          v33 = v53;
          a8[6] = v52;
          a8[7] = v33;
          a8[8] = v54;
          v34 = v49;
          a8[2] = v48;
          a8[3] = v34;
          v35 = v51;
          a8[4] = v50;
          a8[5] = v35;
          v36 = v47;
          *a8 = v46;
          a8[1] = v36;
          return result;
        }

        v30 = *a1;

        *a1 = v25;
        *(a1 + 8) = v26;
        *(a1 + 16) = v38;
        *(a1 + 20) = v28;
        *(a1 + 22) = v29;
        a3 = v27;
      }

      swift_willThrow();
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {
      }

      else
      {

        swift_errorRetain();
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
          swift_arrayDestroy();
        }
      }

      v9 = 0;
      v24 += 16;
      if (v24 == 80)
      {
        sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
        swift_arrayDestroy();
        sub_1003A527C();
        swift_allocError();
        *v32 = 0xD000000000000019;
        v32[1] = 0x80000001004B08C0;
        v32[2] = 0xD000000000000020;
        v32[3] = 0x80000001004B03C0;
        v32[4] = 148;
        return swift_willThrow();
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100406E20@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  sub_10000C9C0(&qword_1005DC7C0, &qword_1005048C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004EC2A0;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10040BFE4;
  *(v15 + 24) = v14;
  *(inited + 32) = 0x5347414C46;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = sub_10040CB68;
  *(inited + 56) = v15;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_10040C004;
  *(v17 + 24) = v16;
  *(inited + 64) = 1414744396;
  *(inited + 72) = 0xE400000000000000;
  *(inited + 80) = sub_10040CB68;
  *(inited + 88) = v17;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_10040C038;
  *(v19 + 24) = v18;
  *(inited + 96) = 1112888140;
  *(inited + 104) = 0xE400000000000000;
  *(inited + 112) = sub_10040CB68;
  *(inited + 120) = v19;
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a7;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_10040C06C;
  *(v21 + 24) = v20;
  *(inited + 128) = 0x48435241455345;
  *(inited + 136) = 0xE700000000000000;
  *(inited + 144) = sub_10040CB68;
  *(inited + 152) = v21;
  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_10040C08C;
  *(v23 + 24) = v22;
  *(inited + 160) = 0x484352414553;
  *(inited + 168) = 0xE600000000000000;
  *(inited + 176) = sub_10040CB68;
  *(inited + 184) = v23;
  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = a6;
  v24[5] = a7;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_10040C0AC;
  *(v25 + 24) = v24;
  *(inited + 192) = 0x535554415453;
  *(inited + 200) = 0xE600000000000000;
  *(inited + 208) = sub_10040CB68;
  *(inited + 216) = v25;
  v26 = swift_allocObject();
  v26[2] = a4;
  v26[3] = a5;
  v26[4] = a6;
  v26[5] = a7;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_10040C0CC;
  *(v27 + 24) = v26;
  *(inited + 224) = 0x43415053454D414ELL;
  *(inited + 232) = 0xE900000000000045;
  *(inited + 240) = sub_10040CB68;
  *(inited + 248) = v27;
  v28 = swift_allocObject();
  v28[2] = a4;
  v28[3] = a5;
  v28[4] = a6;
  v28[5] = a7;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_10040C0EC;
  *(v29 + 24) = v28;
  *(inited + 256) = 0x4843544142444955;
  *(inited + 264) = 0xEA00000000005345;
  *(inited + 272) = sub_10040CB68;
  *(inited + 280) = v29;
  swift_retain_n();
  v30 = sub_100411870(inited);
  swift_setDeallocating();
  sub_10000C9C0(&qword_1005DC798, &qword_100504118);
  result = swift_arrayDestroy();
  if (!__OFADD__(a2, 1))
  {
    v32 = *a1;
    v33 = *(a1 + 8);
    v34 = *(a1 + 16);
    v35 = *(a1 + 20);
    v36 = *(a1 + 22);
    if (a2 + 1 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v38 = a3;
    }

    else
    {
      v37 = *a1;

      sub_1004658F8(a1, &v62);
      if (!v58)
      {
        v59 = v35;
        sub_10046C184(v62, v63, v64 | (v65 << 32) | (v66 << 48), 0xD000000000000020, 0x80000001004B03C0, 84);
        v55 = v34;
        v56 = sub_1004A5834();
        v40 = v39;

        if (*(v30 + 16))
        {
          v41 = sub_100064090(v56, v40);
          if (v42)
          {
            v43 = v41;

            v44 = *(v30 + 56) + 16 * v43;
            v46 = *v44;
            v45 = *(v44 + 8);
            v62 = a2;
            v63 = a3;

            v46(v67, a1, &v62);

            v50 = v67[7];
            v51 = v67[8];
            a8[6] = v67[6];
            a8[7] = v50;
            a8[8] = v51;
            v52 = v67[3];
            a8[2] = v67[2];
            a8[3] = v52;
            v53 = v67[5];
            a8[4] = v67[4];
            a8[5] = v53;
            v54 = v67[1];
            *a8 = v67[0];
            a8[1] = v54;
            return result;
          }
        }

        v62 = 0;
        v63 = 0xE000000000000000;
        sub_1004A6724(25);

        v62 = 0xD000000000000017;
        v63 = 0x80000001004B08E0;
        v68._countAndFlagsBits = v56;
        v68._object = v40;
        sub_1004A5994(v68);

        v47 = v62;
        v48 = v63;
        sub_1003A527C();
        swift_allocError();
        *v49 = v47;
        v49[1] = v48;
        v49[2] = 0xD000000000000020;
        v49[3] = 0x80000001004B03C0;
        v49[4] = 86;
        swift_willThrow();

        v34 = v55;
        v35 = v59;
LABEL_7:
        *a1 = v32;
        *(a1 + 8) = v33;
        *(a1 + 16) = v34;
        *(a1 + 20) = v35;
        *(a1 + 22) = v36;
        swift_willThrow();
      }
    }

    swift_willThrow();

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_10040757C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 48, 7);
}

void sub_1004075D4(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int8x16_t *a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v18 = a3;
      goto LABEL_9;
    }

    v13 = *a1;
    v14 = *(a1 + 8);
    v15 = *(a1 + 16);
    v16 = *(a1 + 20);
    v17 = *(a1 + 22);
    sub_100469DF8(a1);
    if (v8)
    {
      *a1 = v13;
      *(a1 + 8) = v14;
      *(a1 + 16) = v15;
      *(a1 + 20) = v16;
      *(a1 + 22) = v17;
LABEL_9:
      swift_willThrow();
      return;
    }

    v19 = *a1;
    v20 = *(a1 + 8);
    v21 = *(a1 + 16);
    v22 = *(a1 + 20);
    v23 = *(a1 + 22);

    sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, a1, v9, a3);

    v24 = sub_10046D9E8(a1, v9, a3, a4, a5, a6, a7, v9, a3);

    if (!v24)
    {
      v24 = _swiftEmptyArrayStorage;
    }

    sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 1, a1, v9, a3);

    v33[0].i64[0] = v24;
    sub_1002F9C4C(v33);
    v25 = v33[7];
    a8[6] = v33[6];
    a8[7] = v25;
    a8[8] = v33[8];
    v26 = v33[3];
    a8[2] = v33[2];
    a8[3] = v26;
    v27 = v33[5];
    a8[4] = v33[4];
    a8[5] = v27;
    v28 = v33[1];
    *a8 = v33[0];
    a8[1] = v28;
  }
}

uint64_t sub_100407808@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v20 = a3;
      return swift_willThrow();
    }

    v11 = result;
    v12 = *result;
    v13 = *(result + 8);
    v14 = *(result + 16);
    v26 = *(result + 22);
    v27 = *(result + 20);

    sub_1004093C0(v11, v9, a3, a4, a5, a6, a7, &v28);
    if (v8)
    {
      v19 = *v11;

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v27;
      *(v11 + 22) = v26;
      return swift_willThrow();
    }

    v21 = v29;
    v22 = v30;
    v23 = v31;
    v24 = v32;
    *a8 = v28;
    *(a8 + 16) = v21;
    *(a8 + 20) = v22;
    *(a8 + 24) = v23;
    *(a8 + 32) = v24;
  }

  return result;
}

uint64_t sub_10040795C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (*a8)(__int128 *)@<X7>, _OWORD *a9@<X8>)
{
  v11 = __OFADD__(a2, 1);
  v12 = a2 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    if (v12 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v21 = a3;
      return swift_willThrow();
    }

    v14 = result;
    v16 = *result;
    v17 = *(result + 8);
    v18 = *(result + 16);
    v19 = *(result + 20);
    v20 = *(result + 22);
    sub_100469DF8(result);
    if (v9)
    {
      *v14 = v16;
      *(v14 + 8) = v17;
      *(v14 + 16) = v18;
      *(v14 + 20) = v19;
      *(v14 + 22) = v20;
      return swift_willThrow();
    }

    sub_100407808(v14, a2, a3, a4, a5, a6, a7, &v40);
    v31 = v40;
    LODWORD(v32) = v41;
    BYTE4(v32) = v42;
    *(&v32 + 1) = v43;
    v33 = v44;
    result = a8(&v31);
    v22 = v38;
    a9[6] = v37;
    a9[7] = v22;
    a9[8] = v39;
    v23 = v34;
    a9[2] = v33;
    a9[3] = v23;
    v24 = v36;
    a9[4] = v35;
    a9[5] = v24;
    v25 = v32;
    *a9 = v31;
    a9[1] = v25;
  }

  return result;
}

void sub_100407AD8(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v18 = a3;
    }

    else
    {
      v16 = *a1;
      v17 = *(a1 + 8);
      v33 = *(a1 + 20);
      v34 = *(a1 + 16);
      v32 = *(a1 + 22);

      sub_100470558(a1, v9, a3, &v45);
      if (!v8)
      {

        v30 = sub_10046460C(a1, v9, a3);
        v44 = _swiftEmptyArrayStorage;

        sub_100472178(a1, &v44, v9, a3, a4, a5, a6, a7);

        v20 = v44;
        v21 = v45;
        v22 = v46;
        v23 = v47;
        v24 = v48;
        v25 = v49;
        sub_1003E97D0(v45, v46);

        sub_100073984(v21, v22);

        v35.i64[0] = v21;
        v35.i64[1] = v22;
        *&v36 = v23;
        *(&v36 + 1) = v24;
        LOBYTE(v37) = v25;
        BYTE1(v37) = v30 & 1;
        *(&v37 + 1) = v20;
        sub_1002F9C94(&v35);
        v26 = v42;
        *(a8 + 96) = v41;
        *(a8 + 112) = v26;
        *(a8 + 128) = v43;
        v27 = v38;
        *(a8 + 32) = v37;
        *(a8 + 48) = v27;
        v28 = v40;
        *(a8 + 64) = v39;
        *(a8 + 80) = v28;
        v29 = v36;
        *a8 = v35;
        *(a8 + 16) = v29;
        return;
      }

      v19 = *a1;

      *a1 = v16;
      *(a1 + 8) = v17;
      *(a1 + 16) = v34;
      *(a1 + 20) = v33;
      *(a1 + 22) = v32;
    }

    swift_willThrow();
  }
}

void sub_100407D80(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, int8x16_t *a4@<X8>)
{
  v5 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v5 >= a3)
    {
      sub_1003A5228();
      v14 = swift_allocError();
      *v16 = a3;
    }

    else
    {
      v9 = *a1;
      v10 = *(a1 + 8);
      v11 = *(a1 + 16);
      v12 = *(a1 + 20);
      v13 = *(a1 + 22);

      sub_10040C32C(a1, v5, a3, v61);
      v14 = v4;
      if (!v4)
      {
        v68 = v61[6];
        v69 = v61[7];
        v70 = v61[8];
        v64 = v61[2];
        v65 = v61[3];
        v66 = v61[4];
        v67 = v61[5];
        v62 = v61[0];
        v63 = v61[1];

LABEL_35:
        v40 = v69;
        a4[6] = v68;
        a4[7] = v40;
        a4[8] = v70;
        v41 = v65;
        a4[2] = v64;
        a4[3] = v41;
        v42 = v67;
        a4[4] = v66;
        a4[5] = v42;
        v43 = v63;
        *a4 = v62;
        a4[1] = v43;
        return;
      }

      v15 = *a1;

      *a1 = v9;
      *(a1 + 8) = v10;
      *(a1 + 16) = v11;
      *(a1 + 20) = v12;
      *(a1 + 22) = v13;
    }

    swift_willThrow();
    v60 = v14;
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v60 = v14;
      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {

        return;
      }
    }

    if (v5 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v31 = a3;
    }

    else
    {
      v17 = *a1;
      v18 = *(a1 + 8);
      v19 = *(a1 + 16);
      v20 = *(a1 + 20);
      v21 = *(a1 + 22);
      if (v5 + 1 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v32 = a3;
      }

      else
      {
        v22 = *a1;
        swift_retain_n();
        if (v5 + 2 >= a3)
        {
          sub_1003A5228();
          v33 = swift_allocError();
          *v34 = a3;
          v35 = _swiftEmptyArrayStorage;
        }

        else
        {
          v45 = v19;
          v46 = v17;
          v23 = *a1;
          v24 = *(a1 + 8);
          v25 = *(a1 + 16);
          v48 = *(a1 + 22);
          v49 = *(a1 + 20);
          if (v5 + 3 >= a3)
          {
LABEL_28:
            sub_1003A5228();
            v33 = swift_allocError();
            *v36 = a3;

            v35 = _swiftEmptyArrayStorage;
          }

          else
          {
            v50 = _swiftEmptyArrayStorage;
            v47 = v21;
            while (1)
            {
              swift_retain_n();
              sub_100469DF8(a1);

              v26 = v20;
              v27 = sub_10046C278(a1, v5 + 2, a3, 0);
              v28 = v27;
              if ((v27 & 0x8000000000000000) != 0)
              {
                sub_1003A527C();
                v33 = swift_allocError();
                v37->i64[0] = 0xD000000000000011;
                v37->i64[1] = 0x80000001004B08A0;
                v37[1].i64[0] = 0xD000000000000020;
                v37[1].i64[1] = 0x80000001004B03C0;
                v38 = 202;
                goto LABEL_31;
              }

              if (v27 - 0x100000000 < 0xFFFFFFFF00000001)
              {
                break;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v50 = sub_100461500(0, *(v50 + 2) + 1, 1, v50);
              }

              v30 = *(v50 + 2);
              v29 = *(v50 + 3);
              if (v30 >= v29 >> 1)
              {
                v50 = sub_100461500((v29 > 1), v30 + 1, 1, v50);
              }

              *(v50 + 2) = v30 + 1;
              *&v50[4 * v30 + 32] = v28;
              v23 = *a1;
              v24 = *(a1 + 8);
              v25 = *(a1 + 16);
              v48 = *(a1 + 22);
              v49 = *(a1 + 20);
              v20 = v26;
              v21 = v47;
              if (v5 + 3 >= a3)
              {
                goto LABEL_28;
              }
            }

            sub_1004A6724(45);

            v51.i64[0] = 0xD00000000000002BLL;
            v51.i64[1] = 0x80000001004B09A0;
            v60 = v28;
            v72._countAndFlagsBits = sub_1004A6CE4();
            sub_1004A5994(v72);

            sub_1003A527C();
            v33 = swift_allocError();
            *v37 = v51;
            v37[1].i64[0] = 0xD000000000000020;
            v37[1].i64[1] = 0x80000001004B03C0;
            v38 = 69;
LABEL_31:
            v37[2].i64[0] = v38;
            LOWORD(v20) = v26;
            v21 = v47;
            v35 = v50;
          }

          swift_willThrow();
          v39 = *a1;

          *a1 = v23;
          *(a1 + 8) = v24;
          *(a1 + 16) = v25;
          *(a1 + 20) = v49;
          *(a1 + 22) = v48;
          v17 = v46;
          v19 = v45;
        }

        swift_willThrow();
        v71 = v33;
        swift_errorRetain();
        if (swift_dynamicCast())
        {

          v51 = v35;
          v52.i8[0] = 1;
          sub_1002F9CE0(&v51);
          v68 = v57;
          v69 = v58;
          v70 = v59;
          v64 = v53;
          v65 = v54;
          v66 = v55;
          v67 = v56;
          v62 = v51;
          v63 = v52;
          goto LABEL_35;
        }

        v44 = *a1;
      }

      swift_willThrow();

      *a1 = v17;
      *(a1 + 8) = v18;
      *(a1 + 16) = v19;
      *(a1 + 20) = v20;
      *(a1 + 22) = v21;
    }

    swift_willThrow();
  }
}

void sub_100408490(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v18 = a3;
      goto LABEL_6;
    }

    v13 = *a1;
    v14 = *(a1 + 8);
    v15 = *(a1 + 16);
    v16 = *(a1 + 20);
    v17 = *(a1 + 22);
    sub_100469DF8(a1);
    if (v8)
    {
      *a1 = v13;
      *(a1 + 8) = v14;
      *(a1 + 16) = v15;
      *(a1 + 20) = v16;
      *(a1 + 22) = v17;
LABEL_6:
      swift_willThrow();
      return;
    }

    v19 = sub_10041ED48(a1, a2, a3, a4, a5, a6, a7);
    v21 = v20;
    v23 = HIDWORD(v22);
    v24 = v22;
    swift_beginAccess();
    v25 = v23 - v24;
    if (v25)
    {
      v27 = v24;
      v28 = *(v19 + 24);
      v47 = ((v21 >> 24) & 0xFFFF00 | BYTE6(v21)) + v27;
      v29 = sub_10015BEAC(v25, 0);
      memcpy(v29 + 32, (v28 + v47), v25);
      v26 = v29;
    }

    else
    {
      v26 = _swiftEmptyArrayStorage;
    }

    v30 = _s12NIOIMAPCore211MailboxNameVyACSays5UInt8VGcfC_0(v26);
    v44 = v31;

    v32 = *a1;
    v33 = *(a1 + 8);
    v34 = *(a1 + 16);
    v45 = *(a1 + 22);
    v48 = *(a1 + 20);

    sub_100469DF8(a1);
    v49 = v30;

    sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    v35 = *a1;
    v36 = *(a1 + 8);
    LODWORD(v30) = *(a1 + 16);
    v46 = *(a1 + 20);
    v43 = *(a1 + 22);

    sub_100408AC8(a1, v9, a3, a4, a5, a6, a7, v82);

    *&v56[64] = v82[4];
    *&v56[80] = v82[5];
    *&v56[96] = v82[6];
    *&v56[112] = v82[7];
    *v56 = v82[0];
    *&v56[16] = v82[1];
    *&v56[32] = v82[2];
    *&v56[48] = v82[3];
    UInt32.init(_:)(v56);
    v78 = *&v56[64];
    v79 = *&v56[80];
    v80 = *&v56[96];
    v81 = *&v56[112];
    v74 = *v56;
    v75 = *&v56[16];
    v76 = *&v56[32];
    v77 = *&v56[48];
    sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    v73[4] = v78;
    v73[5] = v79;
    v73[6] = v80;
    v73[7] = v81;
    v73[0] = v74;
    v73[1] = v75;
    v73[2] = v76;
    v73[3] = v77;
    if (sub_10040C198(v73) == 1)
    {
      v64 = 1;
      v63 = 1;
      v62 = 1;
      v61 = 1;
      v60 = 1;
      v59 = 1;
      v58 = 1;
      v57 = 1;
      *v55 = 0;
      v55[8] = 1;
      *&v55[16] = 0;
      v55[24] = 1;
      *&v55[28] = 0;
      v55[32] = 1;
      *&v55[36] = 0;
      v55[40] = 1;
      *&v55[48] = 0;
      v55[56] = 1;
      *&v55[64] = 0;
      v55[72] = 1;
      *&v55[80] = 0;
      v55[88] = 1;
      *&v55[96] = 0;
      v55[104] = 1;
      *&v55[112] = 0uLL;
      *v56 = 0;
      v56[8] = 1;
      *&v56[16] = 0;
      v56[24] = 1;
      *&v56[28] = 0;
      v56[32] = 1;
      *&v56[36] = 0;
      v56[40] = 1;
      *&v56[48] = 0;
      v56[56] = 1;
      *&v56[64] = 0;
      v56[72] = 1;
      *&v56[80] = 0;
      v56[88] = 1;
      *&v56[96] = 0;
      v56[104] = 1;
      *&v56[112] = 0;
      *&v56[120] = 0;
      sub_1000CB8B8(v55, &v65);
      sub_10009A0FC(v56);
      v69 = *&v55[64];
      v70 = *&v55[80];
      v71 = *&v55[96];
      v72 = *&v55[112];
      v65 = *v55;
      v66 = *&v55[16];
      v37 = *&v55[32];
      v38 = *&v55[48];
    }

    else
    {
      v69 = v78;
      v70 = v79;
      v71 = v80;
      v72 = v81;
      v65 = v74;
      v66 = v75;
      v37 = v76;
      v38 = v77;
    }

    v67 = v37;
    v68 = v38;
    *&v55[36] = v37;
    *&v55[20] = v66;
    *&v55[4] = v65;
    *&v55[116] = v72;
    *&v55[100] = v71;
    *&v55[84] = v70;
    *&v55[68] = v69;
    *&v55[52] = v38;
    *v56 = v49;
    *&v56[12] = *v55;
    *&v56[76] = *&v55[64];
    *&v56[60] = *&v55[48];
    *&v56[44] = *&v55[32];
    *&v56[28] = *&v55[16];
    *&v56[8] = v44;
    *&v56[140] = HIDWORD(v72);
    *&v56[124] = *&v55[112];
    *&v56[108] = *&v55[96];
    *&v56[92] = *&v55[80];
    sub_1002F9D78(v56);
    v39 = *&v56[112];
    a8[6] = *&v56[96];
    a8[7] = v39;
    a8[8] = *&v56[128];
    v40 = *&v56[48];
    a8[2] = *&v56[32];
    a8[3] = v40;
    v41 = *&v56[80];
    a8[4] = *&v56[64];
    a8[5] = v41;
    v42 = *&v56[16];
    *a8 = *v56;
    a8[1] = v42;
  }
}

uint64_t sub_100408AC8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v20 = a3;
      return swift_willThrow();
    }

    v11 = result;
    v12 = *result;
    v13 = *(result + 8);
    v14 = *(result + 16);
    v26 = *(result + 22);
    v27 = *(result + 20);

    sub_10040B4AC(v11, v9, a3, a4, a5, a6, a7, v28);
    if (v8)
    {
      v19 = *v11;

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v27;
      *(v11 + 22) = v26;
      return swift_willThrow();
    }

    v21 = v28[5];
    a8[4] = v28[4];
    a8[5] = v21;
    v22 = v28[7];
    a8[6] = v28[6];
    a8[7] = v22;
    v23 = v28[1];
    *a8 = v28[0];
    a8[1] = v23;
    v24 = v28[3];
    a8[2] = v28[2];
    a8[3] = v24;
  }

  return result;
}