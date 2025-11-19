uint64_t sub_1ABE38C7C(uint64_t a1, uint64_t a2)
{
  sub_1ABA90400();
  result = sub_1ABE713BC();
  v14 = result;
  if (*(result + 16) && a2)
  {

    v4 = sub_1ABE491D0();
    v5 = *(v4 + 16);
    if (v5)
    {
      v13 = MEMORY[0x1E69E7CC0];
      sub_1ABADDBD4();
      v6 = v13;
      v7 = (v4 + 64);
      do
      {
        v9 = *(v7 - 1);
        v8 = *v7;
        v11 = *(v13 + 16);
        v10 = *(v13 + 24);

        if (v11 >= v10 >> 1)
        {
          sub_1ABADDBD4();
        }

        *(v13 + 16) = v11 + 1;
        v12 = v13 + 16 * v11;
        *(v12 + 32) = v9;
        *(v12 + 40) = v8;
        v7 += 11;
        --v5;
      }

      while (v5);
    }

    else
    {

      v6 = MEMORY[0x1E69E7CC0];
    }

    sub_1ABD7DA50(v6);

    return v14;
  }

  return result;
}

void sub_1ABE38DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v148 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  Context = type metadata accessor for QueryContext();
  v38 = *(*(Context - 8) + 64);
  MEMORY[0x1EEE9AC00](Context - 8);
  v141 = v128 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1ABE37A38(v28))
  {
    sub_1ABB51B74(v36, v34, v32, v30, v28, v148, v25);
LABEL_12:
    sub_1ABA7BC90();
    return;
  }

  v148 = v20;
  v139 = v32;
  v140 = v36;
  v145 = v25;
  sub_1ABA90400();
  v40 = sub_1ABE719F4();
  if (v40)
  {
    v41 = v140;
    v42 = v30;
    sub_1ABE39704(v140, v40, v28, v34, v139, v30, v145);

    if (v21)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v41 = v140;
    v42 = v30;
  }

  sub_1ABA8FAF0();
  v43 = v28;
  v44 = sub_1ABE719F4();
  if (!v44 || (v43 = v44, sub_1ABA7EF0C(), swift_beginAccess(), v45 = *(v43 + 24), , , !v45))
  {
    sub_1ABA8A488();
    sub_1ABAF2860();
    swift_allocError();
    *v46 = 0xD00000000000001FLL;
    *(v46 + 8) = v43;
    *(v46 + 16) = 1;
    swift_willThrow();
    goto LABEL_12;
  }

  a10 = v45;
  if (sub_1ABE71D70())
  {

    goto LABEL_12;
  }

  *(v45 + 80) = 1;
  v47 = *(v41 + 8);
  v129 = v28;
  v130 = v21;
  v133 = v45;
  v134 = v42;
  if (v47)
  {
    v48 = sub_1ABE491D0();
  }

  else
  {
    v48 = 0;
  }

  v135 = type metadata accessor for ResultGraph();
  v49 = swift_allocObject();
  v50 = MEMORY[0x1E69E7CC0];
  *(v49 + 16) = sub_1ABF239C4();
  *(v49 + 24) = v50;

  v128[2] = v49;
  *(v41 + 8) = v49;
  v51 = sub_1ABF239C4();
  if (v48)
  {
    v52 = v51;
    v53 = *(v48 + 16);
    v54 = MEMORY[0x1E69E7CC0];
    v136 = v48;
    v55 = v145;
    if (v53)
    {
      v138 = v48 + 32;

      v56 = 0;
      v57 = v53;
      v137 = v53;
      while (1)
      {
        if (v56 >= v57)
        {
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

        v142 = v56;
        memcpy(v152, (v138 + 88 * v56), 0x58uLL);
        v58 = v152[10];
        v59 = *(v152[10] + 16);
        if (v59)
        {
          break;
        }

LABEL_38:
        v56 = v142 + 1;
        if (v142 + 1 == v137)
        {

          goto LABEL_41;
        }

        v57 = *(v48 + 16);
      }

      sub_1ABB242A4(v152, v151);

      v60 = 0;
      v143 = v59 - 1;
      v144 = v58;
      v61 = 32;
      while (v60 < *(v58 + 16))
      {
        v147 = v60;
        v148 = v54;
        v146 = v61;
        memcpy(v151, (v58 + v61), 0x58uLL);
        v62 = v151[0];
        v63 = v151[1];
        sub_1ABB242A4(v152, v153);
        sub_1ABB242A4(v151, v153);
        swift_isUniquelyReferenced_nonNull_native();
        v150[0] = v52;
        v64 = sub_1ABA94FC8(v62, v63);
        if (__OFADD__(v52[2], (v65 & 1) == 0))
        {
          goto LABEL_60;
        }

        v66 = v64;
        v67 = v65;
        sub_1ABAD219C(&qword_1EB4DADD8, &unk_1ABF6AA50);
        if (sub_1ABF24C64())
        {
          v68 = sub_1ABA94FC8(v62, v63);
          if ((v67 & 1) != (v69 & 1))
          {
            goto LABEL_73;
          }

          v66 = v68;
        }

        if (v67)
        {
          v52 = v150[0];
          v70 = (*(v150[0] + 56) + 88 * v66);
          memcpy(v153, v70, 0x58uLL);
          memcpy(v70, v152, 0x58uLL);
          sub_1ABB24250(v153);
        }

        else
        {
          v52 = v150[0];
          *(v150[0] + 8 * (v66 >> 6) + 64) |= 1 << v66;
          v71 = (v52[6] + 16 * v66);
          *v71 = v62;
          v71[1] = v63;
          memcpy((v52[7] + 88 * v66), v152, 0x58uLL);
          v72 = v52[2];
          v73 = __OFADD__(v72, 1);
          v74 = v72 + 1;
          if (v73)
          {
            __break(1u);
            goto LABEL_67;
          }

          v52[2] = v74;
        }

        v54 = v148;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v55 = v145;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v78 = *(v54 + 16);
          sub_1ABA7BEF0();
          sub_1ABAD8758();
          v54 = v79;
        }

        v77 = *(v54 + 16);
        v76 = *(v54 + 24);
        if (v77 >= v76 >> 1)
        {
          sub_1ABA7BBEC(v76);
          sub_1ABAD8758();
          v54 = v80;
        }

        *(v54 + 16) = v77 + 1;
        memcpy((v54 + 88 * v77 + 32), v151, 0x58uLL);
        if (v143 == v147)
        {
          sub_1ABB24250(v152);

          v48 = v136;
          goto LABEL_38;
        }

        v61 = v146 + 88;
        v60 = v147 + 1;
        v58 = v144;
      }

      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:

      v127 = v147;
      goto LABEL_63;
    }

LABEL_41:
    if (!v52[2])
    {

LABEL_65:

      goto LABEL_12;
    }

    v81 = swift_allocObject();
    v82 = MEMORY[0x1E69E7CC0];
    *(v81 + 16) = sub_1ABF239C4();
    *(v81 + 24) = v82;
    LOBYTE(v152[0]) = 0;
    sub_1ABE489A8(v54, v152);
    v83 = v141;
    sub_1ABE3CF94(v141);
    v84 = *(v83 + 1);

    v128[1] = v81;
    *(v83 + 1) = v81;
    if (!__OFADD__(v55, 1))
    {
      v85 = v130;
      v86 = sub_1ABE177BC(v152, v83, &a10, v129, v55 + 1, v34, v139, v134);
      v130 = v85;
      if (v85)
      {

        v87 = v83;
LABEL_64:
        sub_1ABB529C4(v87);
        goto LABEL_65;
      }

      v88 = v86;
      memcpy(v151, v152, 0x69uLL);
      sub_1ABA925A4(v151, &qword_1EB4D3430, &unk_1ABF6B740);
      v128[0] = v88;
      v89 = sub_1ABE491D0();
      v90 = v89;
      v91 = *(v89 + 16);
      if (!v91)
      {

        v127 = MEMORY[0x1E69E7CC0];
LABEL_63:

        *(v129 + 80) = 1;
        LOBYTE(v153[0]) = 2;
        sub_1ABE489A8(v127, v153);

        v87 = v141;
        goto LABEL_64;
      }

      v92 = 0;
      v131 = v91 - 1;
      v147 = MEMORY[0x1E69E7CC0];
      v148 = v54;
      v93 = 32;
      v132 = v89;
      while (v92 < v91)
      {
        v143 = v92;
        v133 = v93;
        memcpy(v153, (v90 + v93), 0x58uLL);
        if (!v52[2])
        {
          goto LABEL_70;
        }

        v94 = v153[0];
        v95 = v153[1];
        sub_1ABB242A4(v153, v150);
        v96 = sub_1ABA94FC8(v94, v95);
        if ((v97 & 1) == 0)
        {
          goto LABEL_71;
        }

        memcpy(v150, (v52[7] + 88 * v96), sizeof(v150));
        v98 = v150[0];
        v146 = v150[1];
        v99 = v150[3];
        v100 = v150[4];
        v102 = v150[5];
        v101 = v150[6];
        v103 = v150[7];
        v104 = v150[8];
        v142 = v150[9];
        v140 = v150[10];
        sub_1ABB242A4(v150, v149);
        if (!v146)
        {
          goto LABEL_71;
        }

        v144 = v98;
        v145 = v101;
        v150[0] = v98;
        v150[1] = v146;
        v134 = v153[2];
        v135 = v100;
        v150[2] = v153[2];
        v150[3] = v99;
        v105 = v99;
        v150[4] = v100;
        v150[5] = v102;
        v137 = v102;
        v138 = v104;
        v150[6] = v101;
        v150[7] = v103;
        v106 = v142;
        v150[8] = v104;
        v150[9] = v142;
        v107 = v140;
        v150[10] = v140;
        sub_1ABB242A4(v150, v149);
        sub_1ABB24250(v153);
        v108 = swift_isUniquelyReferenced_nonNull_native();
        v109 = v103;
        v139 = v105;
        if (v108)
        {
          v110 = v147;
        }

        else
        {
          v123 = *(v147 + 16);
          sub_1ABA7BEF0();
          sub_1ABAD8758();
          v110 = v124;
        }

        v112 = *(v110 + 16);
        v111 = *(v110 + 24);
        v113 = v112 + 1;
        v115 = v144;
        v114 = v145;
        v117 = v137;
        v116 = v138;
        v118 = v135;
        if (v112 >= v111 >> 1)
        {
          sub_1ABA7BBEC(v111);
          v147 = v125;
          sub_1ABAD8758();
          v113 = v147;
          v115 = v144;
          v114 = v145;
          v110 = v126;
        }

        *(v110 + 16) = v113;
        v147 = v110;
        v119 = (v110 + 88 * v112);
        v120 = v146;
        v119[4] = v115;
        v119[5] = v120;
        v121 = v134;
        v122 = v139;
        v119[6] = v134;
        v119[7] = v122;
        v119[8] = v118;
        v119[9] = v117;
        v119[10] = v114;
        v119[11] = v109;
        v119[12] = v116;
        v119[13] = v106;
        v119[14] = v107;
        v149[0] = v115;
        v149[1] = v120;
        v149[2] = v121;
        v149[3] = v122;
        v149[4] = v118;
        v149[5] = v117;
        v149[6] = v114;
        v149[7] = v109;
        v149[8] = v116;
        v149[9] = v106;
        v149[10] = v107;
        sub_1ABA925A4(v149, &qword_1EB4DADE0, &unk_1ABF6AA60);
        if (v131 == v143)
        {
          goto LABEL_61;
        }

        v90 = v132;
        v91 = *(v132 + 16);
        v93 = v133 + 88;
        v92 = v143 + 1;
      }

LABEL_68:
      __break(1u);
    }

    __break(1u);
LABEL_70:
    sub_1ABB242A4(v153, v150);
LABEL_71:
    __break(1u);
  }

  __break(1u);
LABEL_73:
  sub_1ABF25104();
  __break(1u);
}

uint64_t sub_1ABE39704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a6;
  v25 = a3;
  Context = type metadata accessor for QueryContext();
  v14 = *(*(Context - 8) + 64);
  MEMORY[0x1EEE9AC00](Context - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(a2 + 24))
  {
    v28 = *(a2 + 24);
    result = sub_1ABE71D70();
    if ((result & 1) == 0)
    {

      result = sub_1ABE3CF94(v16);
      if (__OFADD__(a7, 1))
      {
        __break(1u);
      }

      else
      {
        v18 = sub_1ABE177BC(v27, v16, &v28, v25, a7 + 1, a4, a5, v24);
        if (v7)
        {
          sub_1ABB529C4(v16);
        }

        else
        {
          v22 = v18;
          memcpy(v26, v27, 0x69uLL);
          sub_1ABA925A4(v26, &qword_1EB4D3430, &unk_1ABF6B740);
          sub_1ABB529C4(v16);

          v23 = *(a1 + 8);

          *(a1 + 8) = v22;
        }
      }
    }
  }

  else
  {
    result = swift_beginAccess();
    if (!*(*(a2 + 16) + 16))
    {
      v26[0] = 0;
      v26[1] = 0xE000000000000000;
      sub_1ABF24AB4();
      MEMORY[0x1AC5A9410](115, 0xE100000000000000);
      MEMORY[0x1AC5A9410](0xD00000000000002BLL, 0x80000001ABF930B0);
      sub_1ABD7EAA4(*(v25 + 64));
      v19 = v26[0];
      v20 = v26[1];
      sub_1ABAF2860();
      swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v20;
      *(v21 + 16) = 1;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1ABE39934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16) == 7370352 && *(a3 + 24) == 0xE300000000000000;
  if (!v4 && (sub_1ABF25054() & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = sub_1ABE719F4();
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = v5;
  sub_1ABA7EF0C();
  swift_beginAccess();
  if (!*(v6 + 24))
  {

LABEL_10:
    v8 = 1;
    return sub_1ABE37A38(a2) & v8 & 1;
  }

  type metadata accessor for QueryNode();

  v7 = sub_1ABE71A88();

  v8 = v7 ^ 1;
  return sub_1ABE37A38(a2) & v8 & 1;
}

void sub_1ABE39A1C()
{
  sub_1ABA7BCA8();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  type metadata accessor for ResultGraph();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E7CC0];
  *(v8 + 16) = sub_1ABF239C4();
  *(v8 + 24) = v9;
  v10 = *(v5 + 64);
  v35 = v3;
  switch(v10)
  {
    case 1:
    case 8:
      sub_1ABA8A488();
      goto LABEL_7;
    case 2:

      goto LABEL_8;
    case 4:
      sub_1ABA7EB34();
      goto LABEL_7;
    case 5:
      sub_1ABA7C6F4();
      goto LABEL_7;
    case 7:
      sub_1ABA8A488();
      sub_1ABA81BF4();
      goto LABEL_7;
    default:
LABEL_7:
      sub_1ABA8BE94();
      v11 = sub_1ABF25054();

      if ((v11 & 1) == 0)
      {
        goto LABEL_30;
      }

LABEL_8:
      sub_1ABA8FAF0();
      v12 = sub_1ABE719F4();
      if (!v12)
      {
        goto LABEL_15;
      }

      v13 = v12;
      sub_1ABA7EF0C();
      swift_beginAccess();
      v14 = *(v13 + 24);

      if (!v14)
      {
        goto LABEL_15;
      }

      v16 = *(v14 + 16);
      v15 = *(v14 + 24);

      sub_1ABE19D84(v16, v15, &v36);

      if (v37)
      {
        sub_1ABA946C0(&v36, v39);
        v17 = v39[3];
        v18 = v39[4];
        sub_1ABA93E20(v39, v39[3]);
        (*(v18 + 80))(v7, v14, v3, v17, v18);

        if (v1)
        {

          sub_1ABA84B54(v39);
          goto LABEL_34;
        }

        sub_1ABA84B54(v39);
      }

      else
      {

        sub_1ABA925A4(&v36, &qword_1EB4D3438, &qword_1ABF3C4C0);
      }

LABEL_15:
      sub_1ABA90400();
      v19 = sub_1ABE719F4();
      v20 = *(v3 + 16);
      if (v20)
      {
        v34 = v7;
        v21 = (v3 + 32);
        v22 = v20 - 1;
        v23 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          memcpy(v39, v21, 0x58uLL);
          if (!v19)
          {
            goto LABEL_24;
          }

          v25 = v39[3];
          v24 = v39[4];
          sub_1ABA7EF0C();
          v26 = swift_beginAccess();
          v27 = *(v19 + 16);
          v38[0] = v25;
          v38[1] = v24;
          MEMORY[0x1EEE9AC00](v26);
          v33[2] = v38;
          sub_1ABB242A4(v39, &v36);

          LOBYTE(v25) = sub_1ABB2F764(sub_1ABB342A0, v33, v27);

          if (v25)
          {
            break;
          }

          sub_1ABB24250(v39);

          if (!v22)
          {
LABEL_28:

            v7 = v34;
            goto LABEL_30;
          }

LABEL_27:
          --v22;
          v21 += 88;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = *(v23 + 16);
          sub_1ABA7BEF0();
          sub_1ABAD8758();
          v23 = v31;
        }

        v29 = *(v23 + 16);
        v28 = *(v23 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_1ABA7BBEC(v28);
          sub_1ABAD8758();
          v23 = v32;
        }

        *(v23 + 16) = v29 + 1;
        memcpy((v23 + 88 * v29 + 32), v39, 0x58uLL);
LABEL_24:
        if (!v22)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

LABEL_30:
      if (*(v7 + 8) && !sub_1ABE47EF0())
      {
        LOBYTE(v39[0]) = 2;

        sub_1ABE489A8(v35, v39);
      }

      else
      {

        LOBYTE(v39[0]) = 2;
        sub_1ABE489A8(v35, v39);
      }

LABEL_34:
      sub_1ABA7BC90();
      return;
  }
}

void sub_1ABE39F20()
{
  sub_1ABA7BCA8();
  v1 = v0;
  v3 = v2;
  v30 = *MEMORY[0x1E69E9840];
  v5 = *v4;
  memcpy(__dst, v6, 0x69uLL);
  memcpy(v29, v1, 0x69uLL);
  v7 = BYTE8(v29[6]);
  if ((BYTE8(v29[6]) & 0x10) != 0 || (v8 = BYTE8(__dst[6]), (BYTE8(__dst[6]) & 0x10) != 0))
  {
    sub_1ABF24AB4();
    MEMORY[0x1AC5A9410](0xD000000000000016, 0x80000001ABF93210);
    memcpy(v27, v29, 0x69uLL);
    sub_1ABA94D20();
    MEMORY[0x1AC5A9410](0xD000000000000017, 0x80000001ABF93250);
    memcpy(v27, __dst, 0x69uLL);
    sub_1ABA94D20();
    sub_1ABB50F70();
    swift_allocError();
    *v13 = 0;
    *(v13 + 8) = 0xE000000000000000;
    *(v13 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    v23 = v29[1];
    v25 = v29[3];
    v15 = v29[0];
    v17 = v29[5];
    v19 = v29[2];
    v21 = v29[4];
    v9 = *&v29[6];
    v10 = *&__dst[6];
    sub_1ABAD219C(&qword_1EB4D10F8, &qword_1ABF33280);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1ABF34740;
    *(v11 + 32) = v15;
    *(v11 + 48) = v23;
    *(v11 + 64) = v19;
    *(v11 + 80) = v25;
    *(v11 + 96) = v21;
    *(v11 + 112) = v17;
    *(v11 + 128) = v9;
    *(v11 + 136) = v7;
    v24 = __dst[2];
    v26 = __dst[0];
    v18 = __dst[3];
    v20 = __dst[1];
    v22 = __dst[4];
    v16 = __dst[5];
    sub_1ABE3A730(__dst, v27);
    sub_1ABE3A730(v29, v27);
    sub_1ABAD8FB0();
    *(v12 + 16) = 2;
    *(v12 + 144) = v26;
    *(v12 + 160) = v20;
    *(v12 + 176) = v24;
    *(v12 + 192) = v18;
    *(v12 + 208) = v22;
    *(v12 + 224) = v16;
    *(v12 + 240) = v10;
    *(v12 + 248) = v8;
    *v3 = v5;
    *(v3 + 8) = v12;
    *(v3 + 88) = 0;
    *(v3 + 104) = -96;
  }

  v14 = *MEMORY[0x1E69E9840];
  sub_1ABA7BC90();
}

void sub_1ABE3A1C8()
{
  sub_1ABA7BCA8();
  v5 = *v3;
  v4 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  v9 = v3[4];
  v8 = v3[5];
  v11 = v3[6];
  v10 = v3[7];
  v12 = v3[8];
  v13 = v3[9];
  v15 = v3[10];
  v14 = v3[11];
  v16 = v3[12];
  v17 = *(v3 + 104);
  v19 = *v0;
  v18 = v0[1];
  v21 = v0[2];
  v20 = v0[3];
  v22 = v0[4];
  v68 = v0[5];
  v70 = v0[6];
  v72 = v0[7];
  v74 = v0[8];
  v24 = v0[10];
  v23 = v0[11];
  v25 = v0[12];
  v26 = *(v0 + 104);
  if ((v26 & 0x10) == 0)
  {
    v67 = v0[9];
    if ((v17 & 0x10) == 0)
    {
      v27 = v17;
      v28 = v2;
      v29 = *v1;
      *&v78 = *v0;
      *(&v78 + 1) = v18;
      v79 = v21;
      v80 = v20;
      v81 = v22;
      v82 = v68;
      v83 = v70;
      v84 = v72;
      v85 = v74;
      v86 = v67;
      v87 = v24;
      v88 = v23;
      v89 = v25;
      v90 = v26;
      __src[0] = v5;
      __src[1] = v4;
      __src[2] = v7;
      __src[3] = v6;
      __src[4] = v9;
      __src[5] = v8;
      __src[6] = v11;
      __src[7] = v10;
      __src[8] = v12;
      __src[9] = v13;
      __src[10] = v15;
      __src[11] = v14;
      __src[12] = v16;
      v77 = v27;
      v75 = v29;
      IndexQuery.TriplesIndexQuery.combine(query:combineType:)(__src, &v75, &v91);
      v30 = v96;
      v31 = v98;
      v32 = v97 & 1;
      v33 = v99 & 0xE1;
      v34 = v92;
      *v28 = v91;
      *(v28 + 16) = v34;
      v35 = v94;
      *(v28 + 32) = v93;
      *(v28 + 48) = v35;
      *(v28 + 64) = v95;
      *(v28 + 80) = v30;
      *(v28 + 88) = v32;
      *(v28 + 96) = v31;
      *(v28 + 104) = v33;
LABEL_25:
      sub_1ABA7BC90();
      return;
    }

    *&v91 = 0;
    *(&v91 + 1) = 0xE000000000000000;
    *&v66 = v7;
    *(&v66 + 1) = v6;
    v65 = v4;
    v100 = v5;
    v62 = v14;
    v63 = v16;
    *(&v60 + 1) = v13;
    v61 = v15;
    *(&v59 + 1) = v10;
    *&v60 = v12;
    *(&v58 + 1) = v8;
    *&v59 = v11;
    *&v58 = v9;
LABEL_7:
    sub_1ABF24AB4();
    v78 = v91;
    MEMORY[0x1AC5A9410](0xD000000000000016, 0x80000001ABF93210);
    sub_1ABA99694();
    MEMORY[0x1AC5A9410](0xD000000000000019, 0x80000001ABF93230);
    *&v91 = v100;
    *(&v91 + 1) = v65;
    v92 = v66;
    v93 = v58;
    v94 = v59;
    v95 = v60;
    v96 = v61;
    v97 = v62;
    v98 = v63;
    v99 = v17;
    sub_1ABA99694();
    sub_1ABB50F70();
    swift_allocError();
    *v36 = v78;
    *(v36 + 16) = 1;
    swift_willThrow();
    goto LABEL_25;
  }

  v65 = v4;
  *&v66 = v7;
  *(&v66 + 1) = v6;
  v100 = v5;
  if ((v17 & 0x10) == 0)
  {
    *&v91 = 0;
    *(&v91 + 1) = 0xE000000000000000;
    *&v58 = v9;
    v62 = v14;
    v63 = v16;
    *(&v60 + 1) = v13;
    v61 = v15;
    *(&v59 + 1) = v10;
    *&v60 = v12;
    *(&v58 + 1) = v8;
    *&v59 = v11;
    goto LABEL_7;
  }

  v64 = v2;
  v37 = v5 + 64;
  v38 = 1 << *(v5 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & *(v5 + 64);
  v41 = (v38 + 63) >> 6;

  v42 = 0;
  v43 = 0;
  v69 = v41;
  v71 = v5 + 64;
  if (v40)
  {
LABEL_15:
    while (1)
    {
      v45 = __clz(__rbit64(v40)) | (v43 << 6);
      v46 = *(v5 + 48) + 24 * v45;
      v48 = *v46;
      v47 = *(v46 + 8);
      v49 = *(v46 + 16);
      v50 = *(*(v5 + 56) + 8 * v45);

      sub_1ABAC9398(v42);
      swift_isUniquelyReferenced_nonNull_native();
      *&v91 = v19;
      v73 = v48;
      v51 = sub_1ABAF8474(v48);
      if (__OFADD__(*(v19 + 16), (v52 & 1) == 0))
      {
        break;
      }

      v53 = v51;
      v54 = v52;
      sub_1ABAD219C(&qword_1EB4D1F58, &unk_1ABF35140);
      v19 = v91;
      if (sub_1ABF24C64())
      {
        v55 = sub_1ABAF8474(v73);
        if ((v54 & 1) != (v56 & 1))
        {
          goto LABEL_28;
        }

        v53 = v55;
      }

      if (v54)
      {
      }

      else
      {
        sub_1ABAFC468(v53, v73, v47, v49, MEMORY[0x1E69E7CD0], v91);
      }

      v41 = v69;
      v37 = v71;
      v40 &= v40 - 1;
      v57 = *(v91 + 56) + 8 * v53;
      sub_1ABB7EBF0(v50);
      v42 = sub_1ABBF3790;
      v5 = v100;
      if (!v40)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    while (1)
    {
      v44 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v44 >= v41)
      {

        *v64 = v19;
        *(v64 + 8) = v65;
        *(v64 + 16) = v66;
        *(v64 + 24) = WORD4(v66);
        *(v64 + 88) = 0;
        *(v64 + 104) = 16;
        sub_1ABB3F4DC(v65, v66, BYTE8(v66));
        sub_1ABAC9398(v42);
        goto LABEL_25;
      }

      v40 = *(v37 + 8 * v44);
      ++v43;
      if (v40)
      {
        v43 = v44;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_28:
  sub_1ABF25104();
  __break(1u);
}

uint64_t IndexQuery.impl.getter()
{
  sub_1ABA7F968();
  memcpy(v0, v1, v2);
  sub_1ABA7F968();
  memcpy(v3, v4, v5);
  return sub_1ABE3A730(v8, v7);
}

void *IndexQuery.impl.setter(const void *a1)
{
  sub_1ABA7F968();
  memcpy(v3, v4, v5);
  sub_1ABAE4B6C(&v7);
  return memcpy(v1, a1, 0x69uLL);
}

uint64_t sub_1ABE3A7D4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001ABF931C0 == a2;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001ABF931E0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_1ABE3A8A8(char a1)
{
  if (a1)
  {
    return 0xD000000000000020;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1ABE3A8E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE3A7D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE3A910(uint64_t a1)
{
  v2 = sub_1ABE3AE18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE3A94C(uint64_t a1)
{
  v2 = sub_1ABE3AE18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE3A988(uint64_t a1)
{
  v2 = sub_1ABE3AE6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE3A9C4(uint64_t a1)
{
  v2 = sub_1ABE3AE6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE3AA00(uint64_t a1)
{
  v2 = sub_1ABE3AF14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE3AA3C(uint64_t a1)
{
  v2 = sub_1ABE3AF14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void IndexQuery.IndexQueryImpl.encode(to:)()
{
  sub_1ABA7BCA8();
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4DADE8, &qword_1ABF6AA70);
  v6 = sub_1ABA7BB64(v5);
  v35 = v7;
  v36 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7BCE0();
  v34 = sub_1ABAD219C(&qword_1EB4DADF0, &qword_1ABF6AA78);
  sub_1ABA7BB64(v34);
  v12 = *(v11 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1ABAD219C(&qword_1EB4DADF8, &qword_1ABF6AA80);
  sub_1ABA7BB64(v14);
  v40 = v15;
  v17 = *(v16 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA83634();
  v37 = *v0;
  v38 = v0[1];
  v19 = v0[3];
  v39 = v0[2];
  v33 = v0[4];
  v32 = v0[5];
  v31 = v0[6];
  v30 = v0[7];
  v29 = v0[8];
  v28 = v0[9];
  v27 = v0[10];
  v26 = v0[11];
  v25 = v0[12];
  v20 = *(v0 + 104);
  v21 = v4[4];
  sub_1ABA93E20(v4, v4[3]);
  sub_1ABE3AE18();
  sub_1ABF252E4();
  if ((v20 & 0x10) != 0)
  {
    sub_1ABE3AE6C();
    sub_1ABA97D88();
    sub_1ABE3AEC0();
    v22 = v36;
    sub_1ABF24F84();
    v24 = *(v35 + 8);
    v23 = v2;
  }

  else
  {
    sub_1ABE3AF14();
    sub_1ABA97D88();
    sub_1ABE3AF68();
    v22 = v34;
    sub_1ABF24F84();
    v23 = sub_1ABA8150C();
  }

  v24(v23, v22);
  (*(v40 + 8))(v1, v21);
  sub_1ABA7BC90();
}

unint64_t sub_1ABE3AE18()
{
  result = qword_1EB4D01A8;
  if (!qword_1EB4D01A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D01A8);
  }

  return result;
}

unint64_t sub_1ABE3AE6C()
{
  result = qword_1EB4DAE00;
  if (!qword_1EB4DAE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAE00);
  }

  return result;
}

unint64_t sub_1ABE3AEC0()
{
  result = qword_1EB4DAE08;
  if (!qword_1EB4DAE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAE08);
  }

  return result;
}

unint64_t sub_1ABE3AF14()
{
  result = qword_1EB4D01C0;
  if (!qword_1EB4D01C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D01C0);
  }

  return result;
}

unint64_t sub_1ABE3AF68()
{
  result = qword_1EB4D01D8;
  if (!qword_1EB4D01D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D01D8);
  }

  return result;
}

void IndexQuery.IndexQueryImpl.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v68 = v3;
  v4 = sub_1ABAD219C(&qword_1EB4DAE10, &qword_1ABF6AA88);
  v5 = sub_1ABA7BB64(v4);
  v65 = v6;
  v66 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1ABAD219C(&qword_1EB4DAE18, &qword_1ABF6AA90);
  sub_1ABA7BB64(v10);
  v64 = v11;
  v13 = *(v12 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v60 - v15;
  v17 = sub_1ABAD219C(&qword_1EB4DAE20, &qword_1ABF6AA98);
  sub_1ABA7BB64(v17);
  v67 = v18;
  v20 = *(v19 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA7BCE0();
  v22 = v2[4];
  sub_1ABA93E20(v2, v2[3]);
  sub_1ABE3AE18();
  sub_1ABF252C4();
  if (v0)
  {
    goto LABEL_8;
  }

  v62 = v10;
  v63 = v16;
  v78 = v2;
  v23 = v68;
  v24 = sub_1ABF24EA4();
  sub_1ABAD4EA4(v24, 0);
  if (v26 == v27 >> 1)
  {
LABEL_7:
    v32 = sub_1ABF24B44();
    swift_allocError();
    v34 = v33;
    v35 = *(sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050) + 48);
    *v34 = &type metadata for IndexQuery.IndexQueryImpl;
    sub_1ABF24DA4();
    sub_1ABF24B34();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
    swift_willThrow();
    swift_unknownObjectRelease();
    v36 = sub_1ABA7DF78();
    v37(v36);
    v2 = v78;
LABEL_8:
    sub_1ABA84B54(v2);
LABEL_9:
    sub_1ABA7BC90();
    return;
  }

  if (v26 < (v27 >> 1))
  {
    v61 = *(v25 + v26);
    sub_1ABAD4E90(v26 + 1);
    v29 = v28;
    v31 = v30;
    swift_unknownObjectRelease();
    if (v29 == v31 >> 1)
    {
      if (v61)
      {
        LOBYTE(v69) = 1;
        sub_1ABE3AE6C();
        sub_1ABA8E48C();
        v38 = v23;
        sub_1ABE3C124();
        v39 = v66;
        sub_1ABF24E64();
        v40 = v67;
        swift_unknownObjectRelease();
        v42 = sub_1ABA8150C();
        v43(v42, v39);
        v44 = *(v40 + 8);
        v45 = sub_1ABA7BC4C();
        v46(v45);
        v51 = 0;
        v52 = v69;
        v53 = v70;
        *&v54 = v71;
        v55 = 16;
      }

      else
      {
        LOBYTE(v69) = 0;
        sub_1ABE3AF14();
        sub_1ABA8E48C();
        v38 = v23;
        sub_1ABE3C178();
        v41 = v62;
        sub_1ABF24E64();
        swift_unknownObjectRelease();
        v56 = sub_1ABA8150C();
        v57(v56, v41);
        v58 = sub_1ABA7DF78();
        v59(v58);
        v52 = v69;
        v53 = v70;
        v54 = v71;
        v48 = v72;
        v49 = v73;
        v50 = v74;
        v47 = v76;
        v51 = v75 & 1;
        v55 = v77 & 0xE1;
      }

      *v38 = v52;
      *(v38 + 8) = v53;
      *(v38 + 24) = v54;
      *(v38 + 40) = v48;
      *(v38 + 56) = v49;
      *(v38 + 72) = v50;
      *(v38 + 88) = v51;
      *(v38 + 96) = v47;
      *(v38 + 104) = v55;
      sub_1ABA84B54(v2);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t IndexQuery.TriplesIndexQuery.query.getter()
{
  sub_1ABA7F968();
  memcpy(v0, v1, v2);
  sub_1ABA7F968();
  memcpy(v3, v4, v5);
  return sub_1ABE3C1CC(v8, v7);
}

unint64_t IndexQuery.TriplesIndexQuery.description.getter()
{
  sub_1ABF24AB4();

  v5 = 0xD000000000000015;
  v6 = 0x80000001ABF93180;
  v2[0] = 0;
  v2[1] = 0xE000000000000000;
  sub_1ABF24AB4();
  v3 = 0;
  v4 = 0xE000000000000000;
  MEMORY[0x1AC5A9410](0xD000000000000011, 0x80000001ABF931A0);
  memcpy(v2, v0, 0x69uLL);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](62, 0xE100000000000000);
  MEMORY[0x1AC5A9410](v3, v4);

  MEMORY[0x1AC5A9410](62, 0xE100000000000000);
  return v5;
}

uint64_t IndexQuery.TriplesIndexQuery.combine(query:combineType:)@<X0>(void *__src@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  memcpy(__dst, __src, 0x69uLL);
  v6 = *a2;
  sub_1ABA7F968();
  memcpy(v7, v8, v9);
  sub_1ABAD219C(&qword_1EB4D10F8, &qword_1ABF33280);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1ABF34060;
  sub_1ABA7F968();
  memcpy(v11, v12, v13);
  memcpy((v10 + 144), __src, 0x69uLL);
  *a3 = v6;
  *(a3 + 8) = v10;
  *(a3 + 88) = 0;
  *(a3 + 104) = 0;
  sub_1ABE3C1CC(v17, v15);
  return sub_1ABE3C1CC(__dst, v15);
}

void *IndexQuery.TriplesIndexQuery.join(joinCondition:incomingQuery:)@<X0>(unsigned __int8 *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  memcpy(__dst, a2, 0x69uLL);
  sub_1ABA7F968();
  memcpy(v5, v6, v7);
  sub_1ABAD219C(&qword_1EB4D10F8, &qword_1ABF33280);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ABF34740;
  memcpy((inited + 32), __src, 0x69uLL);
  sub_1ABE3C1CC(__dst, v13);
  sub_1ABE3C1CC(__src, v13);
  sub_1ABAD8FB0();
  v10 = v9;
  *(v9 + 16) = 2;
  result = memcpy((v9 + 144), __dst, 0x69uLL);
  *a3 = v4;
  *(a3 + 8) = v10;
  *(a3 + 88) = 0;
  *(a3 + 104) = -96;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1ABE3B8DC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7972657571 && a2 == 0xE500000000000000)
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

uint64_t sub_1ABE3B968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE3B8DC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABE3B994(uint64_t a1)
{
  v2 = sub_1ABE3C228();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE3B9D0(uint64_t a1)
{
  v2 = sub_1ABE3C228();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void IndexQuery.TriplesIndexQuery.encode(to:)()
{
  sub_1ABA7BCA8();
  v2 = sub_1ABAD219C(&qword_1EB4DAE38, &qword_1ABF6AAA0);
  sub_1ABA7BB64(v2);
  v4 = *(v3 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA83634();
  sub_1ABA7F968();
  memcpy(v6, v7, v8);
  v9 = sub_1ABAA5A80();
  sub_1ABE3C1CC(v9, v10);
  sub_1ABE3C228();
  sub_1ABA9A6F0();
  memcpy(v12, v13, sizeof(v12));
  sub_1ABE3C27C();
  sub_1ABA84378();
  sub_1ABA90B34();
  sub_1ABE3C2D0(&v11);
  (*v0)(v1, v2);
  sub_1ABA7BC90();
}

void IndexQuery.TriplesIndexQuery.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4DAE40, &qword_1ABF6AAA8);
  sub_1ABA7BB64(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7BCE0();
  v11 = v2[4];
  sub_1ABA93E20(v2, v2[3]);
  sub_1ABE3C228();
  sub_1ABA8387C();
  if (!v0)
  {
    sub_1ABE3C324();
    sub_1ABA9040C();
    v12 = *(v7 + 8);
    v13 = sub_1ABA7BC4C();
    v14(v13);
    memcpy(v4, v15, 0x69uLL);
  }

  sub_1ABA84B54(v2);
  sub_1ABA7BC90();
}

unint64_t IndexQuery.description.getter()
{
  v1 = *v0;
  v2 = v0[3];
  if ((v0[13] & 0x10) != 0)
  {
    v5 = *v0;
    v7 = v0[1];
    v9 = v0[2];
    return LiveGlobalKnowledge.IdSearchRequest.description.getter();
  }

  else
  {
    v4 = *v0;
    v6 = v0[1];
    v8 = v0[2];
    v10 = v0[3];
    v11 = *(v0 + 2);
    v12 = *(v0 + 3);
    v13 = *(v0 + 4);
    v14 = *(v0 + 5);
    v15 = v0[12];
    v16 = *(v0 + 104);
    return IndexQuery.TriplesIndexQuery.description.getter();
  }
}

uint64_t sub_1ABE3BD00(uint64_t a1, uint64_t a2)
{
  if (a1 == 1819307369 && a2 == 0xE400000000000000)
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

uint64_t sub_1ABE3BD8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE3BD00(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABE3BDB8(uint64_t a1)
{
  v2 = sub_1ABE3C378();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE3BDF4(uint64_t a1)
{
  v2 = sub_1ABE3C378();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void IndexQuery.encode(to:)()
{
  sub_1ABA7BCA8();
  v2 = sub_1ABAD219C(&qword_1EB4DAE50, &qword_1ABF6AAB0);
  sub_1ABA7BB64(v2);
  v4 = *(v3 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA83634();
  sub_1ABA7F968();
  memcpy(v6, v7, v8);
  v9 = sub_1ABAA5A80();
  sub_1ABE3A730(v9, v10);
  sub_1ABE3C378();
  sub_1ABA9A6F0();
  memcpy(v12, v13, sizeof(v12));
  sub_1ABE3C3CC();
  sub_1ABA84378();
  sub_1ABA90B34();
  sub_1ABE3C420(&v11);
  (*v0)(v1, v2);
  sub_1ABA7BC90();
}

void IndexQuery.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4DAE58, &qword_1ABF6AAB8);
  sub_1ABA7BB64(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7BCE0();
  v11 = v2[4];
  sub_1ABA93E20(v2, v2[3]);
  sub_1ABE3C378();
  sub_1ABA8387C();
  if (!v0)
  {
    sub_1ABE3C450();
    sub_1ABA9040C();
    v12 = *(v7 + 8);
    v13 = sub_1ABA7BC4C();
    v14(v13);
    memcpy(v4, v15, 0x69uLL);
  }

  sub_1ABA84B54(v2);
  sub_1ABA7BC90();
}

uint64_t IndexQuery.CombineType.hashValue.getter()
{
  v1 = *v0;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

unint64_t sub_1ABE3C124()
{
  result = qword_1EB4DAE28;
  if (!qword_1EB4DAE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAE28);
  }

  return result;
}

unint64_t sub_1ABE3C178()
{
  result = qword_1EB4DAE30;
  if (!qword_1EB4DAE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAE30);
  }

  return result;
}

unint64_t sub_1ABE3C228()
{
  result = qword_1EB4D01F0;
  if (!qword_1EB4D01F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D01F0);
  }

  return result;
}

unint64_t sub_1ABE3C27C()
{
  result = qword_1EB4CFFF8;
  if (!qword_1EB4CFFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CFFF8);
  }

  return result;
}

unint64_t sub_1ABE3C324()
{
  result = qword_1EB4DAE48;
  if (!qword_1EB4DAE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAE48);
  }

  return result;
}

unint64_t sub_1ABE3C378()
{
  result = qword_1EB4D0188;
  if (!qword_1EB4D0188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0188);
  }

  return result;
}

unint64_t sub_1ABE3C3CC()
{
  result = qword_1EB4D0190;
  if (!qword_1EB4D0190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0190);
  }

  return result;
}

unint64_t sub_1ABE3C450()
{
  result = qword_1EB4DAE60;
  if (!qword_1EB4DAE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAE60);
  }

  return result;
}

unint64_t sub_1ABE3C4A8()
{
  result = qword_1EB4DAE68;
  if (!qword_1EB4DAE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAE68);
  }

  return result;
}

uint64_t sub_1ABE3C538(uint64_t result, char a2)
{
  v2 = *(result + 104) & 0xE1 | (16 * (a2 & 1));
  *(result + 88) &= 1uLL;
  *(result + 104) = v2;
  return result;
}

uint64_t sub_1ABE3C568(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 105))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 88) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1ABE3C5B0(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 104) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 105) = 1;
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
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 80) = 0;
      *(a1 + 88) = 2 * -a2;
      *(a1 + 96) = 0;
      *(a1 + 104) = 0;
      return result;
    }

    *(a1 + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_1ABE3C660(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1ABE3C74C(_BYTE *result, int a2, int a3)
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

unint64_t sub_1ABE3C7FC()
{
  result = qword_1EB4DAE70;
  if (!qword_1EB4DAE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAE70);
  }

  return result;
}

unint64_t sub_1ABE3C854()
{
  result = qword_1EB4DAE78;
  if (!qword_1EB4DAE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAE78);
  }

  return result;
}

unint64_t sub_1ABE3C8AC()
{
  result = qword_1EB4DAE80;
  if (!qword_1EB4DAE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAE80);
  }

  return result;
}

unint64_t sub_1ABE3C904()
{
  result = qword_1EB4DAE88;
  if (!qword_1EB4DAE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAE88);
  }

  return result;
}

unint64_t sub_1ABE3C95C()
{
  result = qword_1EB4DAE90;
  if (!qword_1EB4DAE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAE90);
  }

  return result;
}

unint64_t sub_1ABE3C9B4()
{
  result = qword_1EB4D0178;
  if (!qword_1EB4D0178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0178);
  }

  return result;
}

unint64_t sub_1ABE3CA0C()
{
  result = qword_1EB4D0180;
  if (!qword_1EB4D0180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0180);
  }

  return result;
}

unint64_t sub_1ABE3CA64()
{
  result = qword_1EB4D01E0;
  if (!qword_1EB4D01E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D01E0);
  }

  return result;
}

unint64_t sub_1ABE3CABC()
{
  result = qword_1EB4D01E8;
  if (!qword_1EB4D01E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D01E8);
  }

  return result;
}

unint64_t sub_1ABE3CB14()
{
  result = qword_1EB4D01B0;
  if (!qword_1EB4D01B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D01B0);
  }

  return result;
}

unint64_t sub_1ABE3CB6C()
{
  result = qword_1EB4D01B8;
  if (!qword_1EB4D01B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D01B8);
  }

  return result;
}

unint64_t sub_1ABE3CBC4()
{
  result = qword_1EB4D01C8;
  if (!qword_1EB4D01C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D01C8);
  }

  return result;
}

unint64_t sub_1ABE3CC1C()
{
  result = qword_1EB4D01D0;
  if (!qword_1EB4D01D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D01D0);
  }

  return result;
}

unint64_t sub_1ABE3CC74()
{
  result = qword_1EB4D0198;
  if (!qword_1EB4D0198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0198);
  }

  return result;
}

unint64_t sub_1ABE3CCCC()
{
  result = qword_1EB4D01A0;
  if (!qword_1EB4D01A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D01A0);
  }

  return result;
}

uint64_t type metadata accessor for QueryContext()
{
  result = qword_1ED86DEE8;
  if (!qword_1ED86DEE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1ABE3CDA4()
{
  type metadata accessor for QueryTree();
  if (v0 <= 0x3F)
  {
    sub_1ABE3CEEC();
    if (v1 <= 0x3F)
    {
      sub_1ABF21EB4();
      if (v2 <= 0x3F)
      {
        sub_1ABE3CF44(319, qword_1ED86E0B8, &type metadata for IndexQuery, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1ABE3CF44(319, &qword_1ED86B9D8, &type metadata for KnosisInternalFact, MEMORY[0x1E69E62F8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1ABE3CEEC()
{
  if (!qword_1ED86DF30)
  {
    type metadata accessor for ResultGraph();
    v0 = sub_1ABF247E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED86DF30);
    }
  }
}

void sub_1ABE3CF44(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1ABE3CF94@<X0>(char *a1@<X8>)
{
  v3 = *(v1 + 1);
  v31 = *v1;
  if (v3)
  {

    v30 = v3;
  }

  else
  {
    type metadata accessor for ResultGraph();
    v4 = swift_allocObject();

    v5 = MEMORY[0x1E69E7CC0];
    *(v4 + 16) = sub_1ABF239C4();
    *(v4 + 24) = v5;
    v30 = v4;
  }

  v28 = *(v1 + 2);
  Context = type metadata accessor for QueryContext();
  v7 = Context[7];
  v8 = sub_1ABF21EB4();
  (*(*(v8 - 8) + 16))(&a1[v7], &v1[v7], v8);
  memcpy(__dst, &v1[Context[8]], 0x69uLL);
  v9 = *&v1[Context[9]];
  v27 = v1[Context[13]];
  v10 = Context[11];
  v23 = *&v1[Context[10]];
  v12 = *&v1[v10];
  v11 = *&v1[v10 + 8];
  v13 = *&v1[v10 + 24];
  v29 = v1[Context[14]];
  v14 = &a1[Context[8]];
  *(v14 + 10) = 0;
  *(v14 + 3) = 0u;
  *(v14 + 4) = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 2) = 0u;
  *v14 = 0u;
  *(v14 + 88) = xmmword_1ABF34940;
  v14[104] = 0;
  v26 = Context[10];
  v15 = &a1[Context[12]];
  *v15 = 0;
  v16 = MEMORY[0x1E69E7CC0];
  *(v15 + 1) = MEMORY[0x1E69E7CC0];
  *(v15 + 2) = v16;
  v24 = Context[13];
  v25 = Context[14];
  *a1 = v31;
  *(a1 + 1) = v30;
  *(a1 + 2) = v28;
  v17 = v1[v10 + 16];
  memcpy(v34, v14, 0x69uLL);

  sub_1ABB52954(__dst, v32);

  sub_1ABB3F4DC(v12, v11, v17);

  sub_1ABE1859C(v34);
  memcpy(v14, __dst, 0x69uLL);
  *&a1[Context[9]] = v9;
  a1[v24] = v27;
  v19 = *(v15 + 1);
  v18 = *(v15 + 2);

  *v15 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  *(v15 + 1) = MEMORY[0x1E69E7CC0];
  *(v15 + 2) = v21;
  *&a1[v26] = v23;
  v22 = &a1[Context[11]];
  *v22 = v12;
  *(v22 + 1) = v11;
  v22[16] = v17;
  *(v22 + 3) = v13;
  a1[v25] = v29;
  return result;
}

void sub_1ABE3D210(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  Context = type metadata accessor for QueryContext();
  v8 = v3 + Context[8];
  v9 = *(v8 + 88);
  v10 = *(v8 + 104) & 0x1E;
  if (v9 >> 1 == 0xFFFFFFFF && v10 == 0)
  {
    *a3 = xmmword_1ABF6B710;
    a3[2] = 0x80000001ABF93270;
  }

  else
  {
    v12 = *(a1 + 48);
    v13 = 50 * v12;
    if ((v12 * 50) >> 64 == (50 * v12) >> 63)
    {
      v14 = Context[12];
      v15 = *(v3 + v14);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (!v16)
      {
        v18 = *(a1 + 64);
        v19 = *(v3 + Context[10]);
        v20 = (v3 + Context[11]);
        v22 = *v20;
        v21 = v20[1];
        v23 = *(v20 + 16);
        v24 = v20[3];
        *(v3 + v14) = v17;
        *(a1 + 80) = 1;
        v25 = *(v3 + Context[9]);
        v48 = v24;
        v49 = v25;
        LOBYTE(v46[0]) = v18;
        v46[1] = v13;
        v46[2] = v19;
        v46[3] = v22;
        v46[4] = v21;
        v47 = v23;
        memcpy(__dst, a2, 0x69uLL);

        v26 = sub_1ABA8FB04();
        sub_1ABB3F4DC(v26, v27, v28);

        sub_1ABD25C88(v46, __dst, a3);

        v42 = sub_1ABA8FB04();
        sub_1ABB3F860(v42, v43, v44);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    swift_once();
    v29 = sub_1ABF237F4();
    sub_1ABA7AA24(v29, qword_1ED86E460);
    v30 = a2;
    v31 = sub_1ABF237D4();
    v32 = sub_1ABF24664();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      __dst[0] = v34;
      *v33 = 136315138;
      v46[0] = a2;
      v35 = a2;
      sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
      v36 = sub_1ABF23C74();
      v38 = sub_1ABADD6D8(v36, v37, __dst);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_1ABA78000, v31, v32, "QueryContext: indexExecute: error from index handler execution: %s", v33, 0xCu);
      sub_1ABA84B54(v34);
      MEMORY[0x1AC5AB8B0](v34, -1, -1);
      MEMORY[0x1AC5AB8B0](v33, -1, -1);
    }

    swift_getErrorValue();
    v39 = sub_1ABF25154();
    v41 = v40;

    *a3 = 0;
    a3[1] = v39;
    a3[2] = v41;
  }
}

uint64_t sub_1ABE3D540(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1ABE7A26C(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1ABE3DCFC(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1ABE3D5AC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (a1)
  {

    v5 = sub_1ABE8AC38(v4);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CD0];
  }

  v15 = v3;
  v6 = sub_1ABE3D720(v5, &v15);

  if (!v2)
  {
    v8 = *(v6 + 16);
    if (v8)
    {
      v15 = MEMORY[0x1E69E7CC0];
      result = sub_1ABF24BC4();
      v9 = 0;
      v10 = (v6 + 40);
      while (v9 < *(v6 + 16))
      {
        ++v9;
        v11 = *(v10 - 1);
        v12 = *v10;
        v10 += 2;
        v14 = v11;
        type metadata accessor for EntityResolutionRankingService.RankedEntities.ScoredEntity();
        swift_allocObject();
        EntityResolutionRankingService.RankedEntities.ScoredEntity.init(id:score:explanation:inferenceEventId:)(&v14, 0, 0, 0, v12);
        sub_1ABF24B94();
        v13 = *(v15 + 16);
        sub_1ABF24BD4();
        sub_1ABF24BE4();
        result = sub_1ABF24BA4();
        if (v8 == v9)
        {

          return v15;
        }
      }

      __break(1u);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1ABE3D720(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = a1;
  v5 = *a2;
  v6 = a1 + 56;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  v73 = v11;
  v71 = v6;
  v72 = v5;
  v74 = v10;
  if (v9)
  {
    while (1)
    {
      v76 = v13;
LABEL_9:
      v75 = v12;
      v77 = *(*(v4 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v9)))));
      v84 = v77;
      v15 = sub_1ABE3E22C(&v84);
      if (v3)
      {
LABEL_60:
      }

      v16 = v15;
      v84 = v5;
      v3 = 0;
      v83 = sub_1ABE3E22C(&v84);
      sub_1ABAD219C(&qword_1EB4DAE98, &unk_1ABF6B788);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF34740;
      *(inited + 32) = v77;
      *(inited + 40) = v16;
      sub_1ABAD219C(&qword_1EB4DA270, &qword_1ABF65380);
      sub_1ABB668FC();
      v18 = sub_1ABF239C4();
      v19 = *(v18 + 16);
      if (v19)
      {
        break;
      }

      v20 = MEMORY[0x1E69E7CC0];
LABEL_48:
      v55 = sub_1ABBFA4BC(v20);
      v56 = COERCE_DOUBLE(sub_1ABB2B9E4(v55));
      v58 = v57;

      if (v58)
      {
        v59 = 0.0;
      }

      else
      {
        v59 = v56;
      }

      v60 = v76;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v64 = *(v76 + 16);
        sub_1ABAD9BD4();
        v60 = v65;
      }

      v10 = v74;
      v61 = *(v60 + 16);
      v62 = v60;
      if (v61 >= *(v60 + 24) >> 1)
      {
        sub_1ABAD9BD4();
        v62 = v66;
      }

      v9 &= v9 - 1;
      *(v62 + 16) = v61 + 1;
      v13 = v62;
      v63 = v62 + 16 * v61;
      *(v63 + 32) = v77;
      *(v63 + 40) = v59;
      v12 = v75;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v84 = MEMORY[0x1E69E7CC0];
    sub_1ABADDFAC();
    v20 = v84;
    v23 = sub_1ABAB0E08(v18);
    v24 = 0;
    v25 = v18 + 64;
    v26 = v83;
    v27 = *(v83 + 2);
    v28 = v83 + 32;
    v79 = v21;
    v80 = v19;
    v78 = v18 + 72;
    v29 = v18;
    v81 = v18 + 64;
    v82 = v18;
    while (1)
    {
      if (v23 < 0 || v23 >= 1 << *(v29 + 32))
      {
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:

        __break(1u);
        return result;
      }

      v30 = v23 >> 6;
      if ((*(v25 + 8 * (v23 >> 6)) & (1 << v23)) == 0)
      {
        goto LABEL_62;
      }

      if (*(v29 + 36) != v21)
      {
        goto LABEL_63;
      }

      v31 = *(*(v29 + 48) + 8 * v23);
      v32 = *(*(v29 + 56) + 8 * v23);
      v33 = *(v32 + 16);
      if (v33)
      {
        v34 = (v32 + 32);
        v35 = 0.0;
        v36 = *(v32 + 16);
        do
        {
          v37 = *v34++;
          v35 = v35 + v37;
          --v36;
        }

        while (v36);
        if (!v27)
        {
          v38 = 0.0;
          goto LABEL_33;
        }
      }

      else
      {
        v35 = 0.0;
        v38 = 0.0;
        if (!v27)
        {
          goto LABEL_33;
        }
      }

      v39 = 0;
      v40 = 0.0;
      do
      {
        v41 = *&v28[8 * v39++];
        v40 = v40 + v41;
      }

      while (v27 != v39);
      v38 = 0.0;
      if (v35 != 0.0 && v40 != 0.0)
      {
        v42 = 0;
        v43 = v32 + 32;
        while (v33 != v42 && v27 != v42)
        {
          if (v42 >= *(v26 + 2))
          {
            __break(1u);
            goto LABEL_60;
          }

          v44 = *(v43 + 8 * v42) / v35;
          if (*&v28[8 * v42] / v40 < v44)
          {
            v44 = *&v28[8 * v42] / v40;
          }

          v38 = v38 + v44;
          ++v42;
        }
      }

LABEL_33:
      v84 = v20;
      v45 = *(v20 + 16);
      if (v45 >= *(v20 + 24) >> 1)
      {
        v68 = v31;
        v69 = v21;
        v70 = v22;
        sub_1ABADDFAC();
        v31 = v68;
        v21 = v69;
        v22 = v70;
        v25 = v81;
        v29 = v82;
        v20 = v84;
      }

      *(v20 + 16) = v45 + 1;
      v46 = v20 + 16 * v45;
      *(v46 + 32) = v31;
      *(v46 + 40) = v38;
      v3 = (1 << *(v29 + 32));
      if (v23 >= v3)
      {
        goto LABEL_64;
      }

      v47 = *(v25 + 8 * v30);
      if ((v47 & (1 << v23)) == 0)
      {
        goto LABEL_65;
      }

      if (*(v29 + 36) != v21)
      {
        goto LABEL_66;
      }

      v48 = v47 & (-2 << (v23 & 0x3F));
      if (v48)
      {
        sub_1ABAC933C(v23, v21, v22 & 1);
        v3 = (__clz(__rbit64(v48)) | v23 & 0x7FFFFFFFFFFFFFC0);
        v49 = v80;
      }

      else
      {
        v50 = v30 << 6;
        v51 = v30 + 1;
        v52 = (v78 + 8 * v30);
        v49 = v80;
        while (v51 < (v3 + 63) >> 6)
        {
          v54 = *v52++;
          v53 = v54;
          v50 += 64;
          ++v51;
          if (v54)
          {
            sub_1ABAC933C(v23, v21, v22 & 1);
            v3 = (__clz(__rbit64(v53)) + v50);
            goto LABEL_45;
          }
        }

        sub_1ABAC933C(v23, v21, v22 & 1);
      }

LABEL_45:
      v22 = 0;
      ++v24;
      v23 = v3;
      v21 = v79;
      v26 = v83;
      v25 = v81;
      v29 = v82;
      if (v24 == v49)
      {

        v4 = v73;
        v3 = 0;
        v5 = v72;
        v6 = v71;
        goto LABEL_48;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_67;
    }

    if (v14 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v14);
    ++v12;
    if (v9)
    {
      v76 = v13;
      v12 = v14;
      goto LABEL_9;
    }
  }

  v84 = v13;

  sub_1ABE3D540(&v84);
  if (v3)
  {
    goto LABEL_68;
  }

  return v84;
}

uint64_t sub_1ABE3DCFC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1ABF24FE4();
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
        sub_1ABAD219C(&qword_1EB4DAEA0, &qword_1ABF6B798);
        v6 = sub_1ABF24164();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1ABE34190(v7, v8, a1, v4);
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
    return sub_1ABE34120(0, v2, 1, a1);
  }

  return result;
}

void sub_1ABE3DE10(uint64_t a1, double (*a2)(uint64_t *, void *, uint64_t))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v33 = MEMORY[0x1E69E7CC0];
    sub_1ABADDFAC();
    v30 = v33;
    v6 = sub_1ABAB0E08(a1);
    v7 = 0;
    v29 = a1 + 64;
    v24 = v4;
    v25 = v3;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
    {
      v8 = v6 >> 6;
      if ((*(v29 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      if (*(a1 + 36) != v4)
      {
        goto LABEL_23;
      }

      v28 = v4;
      v27 = v5;
      v9 = *(*(a1 + 56) + 8 * v6);
      v31[0] = *(*(a1 + 48) + 8 * v6);
      v31[1] = v9;

      v10 = a2(&v32, v31, v9);

      v11 = v32;
      v12 = v30;
      v33 = v30;
      v13 = *(v30 + 16);
      if (v13 >= *(v30 + 24) >> 1)
      {
        sub_1ABADDFAC();
        v12 = v33;
      }

      *(v12 + 16) = v13 + 1;
      v14 = v12 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v10;
      v15 = 1 << *(a1 + 32);
      if (v6 >= v15)
      {
        goto LABEL_24;
      }

      v16 = *(v29 + 8 * v8);
      if ((v16 & (1 << v6)) == 0)
      {
        goto LABEL_25;
      }

      v30 = v12;
      if (*(a1 + 36) != v28)
      {
        goto LABEL_26;
      }

      v17 = v16 & (-2 << (v6 & 0x3F));
      if (v17)
      {
        v15 = __clz(__rbit64(v17)) | v6 & 0x7FFFFFFFFFFFFFC0;
        v18 = v25;
      }

      else
      {
        v19 = v8 << 6;
        v20 = v8 + 1;
        v21 = (a1 + 72 + 8 * v8);
        v18 = v25;
        while (v20 < (v15 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            sub_1ABAC933C(v6, v28, v27 & 1);
            v15 = __clz(__rbit64(v22)) + v19;
            goto LABEL_19;
          }
        }

        sub_1ABAC933C(v6, v28, v27 & 1);
      }

LABEL_19:
      v5 = 0;
      ++v7;
      v6 = v15;
      v4 = v24;
      if (v7 == v18)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

char *sub_1ABE3E098(char *result, uint64_t *a2)
{
  v3 = *result;
  v4 = *a2;
  if (*result != *a2)
  {
    v12 = *result;
    result = sub_1ABE3E22C(&v12);
    if (!v2)
    {
      v5 = result;
      v12 = v4;
      sub_1ABE3E22C(&v12);
      sub_1ABAD219C(&qword_1EB4DAE98, &unk_1ABF6B788);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF34740;
      *(inited + 32) = v3;
      *(inited + 40) = v5;
      sub_1ABAD219C(&qword_1EB4DA270, &qword_1ABF65380);
      sub_1ABB668FC();
      v7 = sub_1ABF239C4();
      v8 = MEMORY[0x1EEE9AC00](v7);
      sub_1ABE3DE10(v8, sub_1ABE3E9D4);
      v10 = v9;

      v11 = sub_1ABBFA4BC(v10);
      sub_1ABB2B9E4(v11);
    }
  }

  return result;
}

char *sub_1ABE3E22C(uint64_t *a1)
{
  v3 = sub_1ABAD219C(&qword_1EB4DAEA8, qword_1ABF6B7F0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v53 - v8;
  v10 = sub_1ABAD219C(&qword_1EB4D19B0, &unk_1ABF33B40);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v58 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v53 - v15;
  v59 = *a1;
  v17 = sub_1ABA81160("entity_popularity_day_of_week");
  if (!v1)
  {
    sub_1ABAD55A0(v59, v17);

    sub_1ABA7F5B0(v9);
    if (v18)
    {
      v61 = &unk_1F208F690;
      sub_1ABAD219C(&qword_1EB4DA270, &qword_1ABF65380);
      sub_1ABA7D918();
      sub_1ABAB47C4(v19, &qword_1EB4DA270, &qword_1ABF65380);
      sub_1ABF23814();
      sub_1ABA7F5B0(v9);
      if (!v18)
      {
        sub_1ABE3E9DC(v9);
      }
    }

    else
    {
      (*(v11 + 32))(v16, v9, v10);
    }

    v20 = sub_1ABAB47C4(&qword_1EB4DAEB8, &qword_1EB4D19B0, &unk_1ABF33B40);
    v21 = sub_1ABA7C75C();
    v22 = sub_1ABB49D08(v21, &unk_1F208F6E0);

    if (v22)
    {
      v57 = v11;
      if (qword_1EB4CE7C0 != -1)
      {
        sub_1ABA7BFD0();
      }

      v23 = sub_1ABF237F4();
      sub_1ABA7AA24(v23, qword_1EB4CE7C8);
      v24 = sub_1ABF237D4();
      v25 = sub_1ABF24664();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v54 = v26;
        v56 = swift_slowAlloc();
        v61 = v56;
        *v26 = 136315138;
        v60 = v59;
        v55 = v24;
        v27 = EntityIdentifier.stringValue.getter();
        v29 = v7;
        v30 = v20;
        v31 = sub_1ABADD6D8(v27, v28, &v61);

        v32 = v54;
        *(v54 + 1) = v31;
        v20 = v30;
        v7 = v29;
        v33 = v25;
        v34 = v55;
        _os_log_impl(&dword_1ABA78000, v55, v33, "Failed to find embedding vector for %s in feature entity_popularity_day_of_week", v32, 0xCu);
        sub_1ABA84B54(v56);
        sub_1ABA7BC34();
        sub_1ABA7BC34();
      }

      else
      {
      }

      v11 = v57;
    }

    v35 = sub_1ABA81160("entity_popularity_hour_of_day");
    sub_1ABAD55A0(v59, v35);

    sub_1ABA7F5B0(v7);
    if (v18)
    {
      v61 = &unk_1F208F708;
      sub_1ABAD219C(&qword_1EB4DA270, &qword_1ABF65380);
      sub_1ABA7D918();
      sub_1ABAB47C4(v37, &qword_1EB4DA270, &qword_1ABF65380);
      sub_1ABF23814();
      sub_1ABA7F5B0(v7);
      if (!v18)
      {
        sub_1ABE3E9DC(v7);
      }
    }

    else
    {
      (*(v11 + 32))(v58, v7, v10);
    }

    v38 = sub_1ABA7C75C();
    v39 = sub_1ABB49D08(v38, &unk_1F208F758);

    if (v39)
    {
      v57 = v11;
      if (qword_1EB4CE7C0 != -1)
      {
        sub_1ABA7BFD0();
      }

      v40 = sub_1ABF237F4();
      sub_1ABA7AA24(v40, qword_1EB4CE7C8);
      v41 = sub_1ABF237D4();
      v42 = sub_1ABF24664();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v56 = v20;
        v44 = v43;
        v45 = swift_slowAlloc();
        v61 = v45;
        *v44 = 136315138;
        v60 = v59;
        v46 = EntityIdentifier.stringValue.getter();
        v48 = sub_1ABADD6D8(v46, v47, &v61);

        *(v44 + 4) = v48;
        _os_log_impl(&dword_1ABA78000, v41, v42, "Failed to find embedding vector for %s in feature entity_popularity_hour_of_day", v44, 0xCu);
        sub_1ABA84B54(v45);
        sub_1ABA7BC34();
        sub_1ABA7BC34();
      }

      v11 = v57;
    }

    v49 = sub_1ABA7C75C();
    v50 = v58;
    v51 = sub_1ABF23834();
    v9 = sub_1ABE3E8BC(v49, v51);

    v52 = *(v11 + 8);
    v52(v50, v10);
    v52(v16, v10);
  }

  return v9;
}

uint64_t sub_1ABE3E8BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = 0;
  v4 = *(a2 + 16);
  v5 = a1 + 32;
  v6 = (a2 + 32);
  v7 = MEMORY[0x1E69E7CC0];
  do
  {
    if (v4)
    {
      v8 = *(v5 + 8 * v3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = *(v7 + 16);
        sub_1ABAD91B4();
        v7 = v15;
      }

      v9 = *(v7 + 16);
      v10 = v6;
      v11 = v4;
      do
      {
        v12 = *v10;
        if (v9 >= *(v7 + 24) >> 1)
        {
          sub_1ABAD91B4();
          v7 = v13;
        }

        *(v7 + 16) = v9 + 1;
        *(v7 + 8 * v9 + 32) = v8 * v12;
        ++v10;
        ++v9;
        --v11;
      }

      while (v11);
    }

    ++v3;
  }

  while (v3 != v2);
  return v7;
}

uint64_t sub_1ABE3E9DC(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4DAEA8, qword_1ABF6B7F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1ABE3EA44(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1ABAD219C(&qword_1EB4DAEC0, &unk_1ABF6B7E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = (&v48 - v8);
  v10 = sub_1ABAD219C(&qword_1EB4D19B8, &qword_1ABF4AD20);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v48 - v17;
  result = ViewService.entitySimilarityFeatureView.getter(&v63, v16);
  if (!v3)
  {
    v64 = v9;
    v53 = v18;
    v54 = v15;
    v56 = 0xD000000000000018;
    v57 = 0x80000001ABF81CC0;
    v58 = a2;
    v59 = a3;

    sub_1ABC3EE80();
    v21 = v20;
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    if (*(v21 + 16))
    {
      v48 = v11;
      v50 = v10;
      v51 = a2;
      v52 = a3;
      v22 = v21 + 64;
      v23 = 1 << *(v21 + 32);
      v24 = -1;
      if (v23 < 64)
      {
        v24 = ~(-1 << v23);
      }

      v25 = v24 & *(v21 + 64);
      v26 = (v23 + 63) >> 6;

      v27 = 0;
      v55 = MEMORY[0x1E69E7CC0];
      v49 = v21;
      if (v25)
      {
        goto LABEL_12;
      }

      while (1)
      {
        v28 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v28 >= v26)
        {

          return sub_1ABBFA494(v55);
        }

        v25 = *(v22 + 8 * v28);
        ++v27;
        if (v25)
        {
          v27 = v28;
          do
          {
LABEL_12:
            v29 = __clz(__rbit64(v25)) | (v27 << 6);
            v30 = *(v21 + 56);
            v31 = (*(v21 + 48) + 48 * v29);
            v32 = v31[1];
            v33 = v31[2];
            v34 = v31[3];
            v35 = v31[4];
            v36 = v31[5];
            v37 = *(v30 + 8 * v29);
            v56 = *v31;
            v57 = v32;
            v58 = v33;
            v59 = v34;
            v60 = v35;
            v61 = v36;
            v62 = v37;

            v38 = v37;
            v39 = v64;
            sub_1ABE3EF24(&v56, v51, v52, v64);

            if (sub_1ABA7E1E0(v39, 1, v50) == 1)
            {
              result = sub_1ABA925A4(v39, &qword_1EB4DAEC0, &unk_1ABF6B7E0);
            }

            else
            {
              v40 = v53;
              sub_1ABE3F4B0(v39, v53);
              v41 = v54;
              sub_1ABE3F4B0(v40, v54);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v44 = *(v55 + 16);
                sub_1ABAD9AC4();
                v55 = v45;
              }

              v42 = *(v55 + 16);
              if (v42 >= *(v55 + 24) >> 1)
              {
                sub_1ABAD9AC4();
                v55 = v46;
              }

              v43 = v55;
              *(v55 + 16) = v42 + 1;
              result = sub_1ABE3F4B0(v41, v43 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v42);
            }

            v25 &= v25 - 1;
            v21 = v49;
          }

          while (v25);
        }
      }

      __break(1u);
    }

    else
    {

      sub_1ABE3F520();
      swift_allocError();
      *v47 = a2;
      *(v47 + 8) = a3;
      *(v47 + 16) = 1;
      swift_willThrow();
    }
  }

  return result;
}

double sub_1ABE3EE88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  result = 0.0;
  v4 = 0.0;
  if (v2)
  {
    v5 = (a1 + 32);
    v6 = *(a1 + 16);
    do
    {
      v7 = *v5++;
      v4 = v4 + v7;
      --v6;
    }

    while (v6);
  }

  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = (a2 + 32);
    v10 = 0.0;
    v11 = (a2 + 32);
    v12 = *(a2 + 16);
    do
    {
      v13 = *v11++;
      v10 = v10 + v13;
      --v12;
    }

    while (v12);
    result = 0.0;
    if (v4 != 0.0 && v10 != 0.0)
    {
      for (i = (a1 + 32); v2; --v2)
      {
        if (!v8)
        {
          break;
        }

        v15 = *i++;
        v16 = v15;
        v17 = *v9++;
        v18 = v16 / v4;
        v19 = v17 / v10;
        if (v17 / v10 < v18)
        {
          v18 = v19;
        }

        result = result + v18;
        --v8;
      }
    }
  }

  return result;
}

uint64_t sub_1ABE3EF24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v45 = a2;
  v46 = a4;
  v6 = sub_1ABAD219C(&qword_1EB4DAEA8, qword_1ABF6B7F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v42 - v8;
  v10 = sub_1ABAD219C(&qword_1EB4D19B0, &unk_1ABF33B40);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v42 - v13;
  v15 = a1[1];
  v16 = a1[2];
  v17 = a1[3];
  v43 = *a1;
  v44 = v16;
  v18 = a1[4];
  v19 = a1[5];
  sub_1ABF24694();
  if (sub_1ABA7E1E0(v9, 1, v10) == 1)
  {
    v42 = v18;
    sub_1ABA925A4(v9, &qword_1EB4DAEA8, qword_1ABF6B7F0);
    if (qword_1EB4CE7C0 != -1)
    {
      swift_once();
    }

    v20 = sub_1ABF237F4();
    sub_1ABA7AA24(v20, qword_1EB4CE7C8);

    v21 = sub_1ABF237D4();
    v22 = sub_1ABF24664();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v49 = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_1ABADD6D8(v45, a3, &v49);
      *(v23 + 12) = 2080;
      v47 = v43;
      v48 = v15;
      swift_bridgeObjectRetain_n();

      MEMORY[0x1AC5A9410](2084190844, 0xE400000000000000);
      MEMORY[0x1AC5A9410](v44, v17);
      MEMORY[0x1AC5A9410](2084190844, 0xE400000000000000);
      MEMORY[0x1AC5A9410](v42, v19);

      v25 = sub_1ABADD6D8(v47, v48, &v49);

      *(v23 + 14) = v25;
      _os_log_impl(&dword_1ABA78000, v21, v22, "Failed to load feature '%s' for %s.", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC5AB8B0](v24, -1, -1);
      MEMORY[0x1AC5AB8B0](v23, -1, -1);
    }
  }

  else
  {
    v26 = *(v11 + 32);
    v26(v14, v9, v10);

    EntityIdentifier.init(_:)(v18, v19, &v47);
    if ((v48 & 1) == 0)
    {
      v37 = v47;
      v38 = sub_1ABAD219C(&qword_1EB4D19B8, &qword_1ABF4AD20);
      v39 = *(v38 + 48);
      v40 = v46;
      *v46 = v37;
      v26(v40 + v39, v14, v10);
      v35 = v40;
      v36 = 0;
      v34 = v38;
      return sub_1ABA7B9B4(v35, v36, 1, v34);
    }

    v27 = v18;
    if (qword_1EB4CE7C0 != -1)
    {
      swift_once();
    }

    v28 = sub_1ABF237F4();
    sub_1ABA7AA24(v28, qword_1EB4CE7C8);

    v29 = sub_1ABF237D4();
    v30 = sub_1ABF24664();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = v27;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v47 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_1ABADD6D8(v31, v19, &v47);
      _os_log_impl(&dword_1ABA78000, v29, v30, "Failed to parse identifier %s", v32, 0xCu);
      sub_1ABA84B54(v33);
      MEMORY[0x1AC5AB8B0](v33, -1, -1);
      MEMORY[0x1AC5AB8B0](v32, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
  }

  v34 = sub_1ABAD219C(&qword_1EB4D19B8, &qword_1ABF4AD20);
  v35 = v46;
  v36 = 1;
  return sub_1ABA7B9B4(v35, v36, 1, v34);
}

uint64_t sub_1ABE3F4B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D19B8, &qword_1ABF4AD20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1ABE3F520()
{
  result = qword_1EB4DAEC8;
  if (!qword_1EB4DAEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAEC8);
  }

  return result;
}

uint64_t sub_1ABE3F574(uint64_t a1)
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

void RelationshipIdentifier.init(_:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = HIBYTE(a2) & 0xF;
  v6 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    v14 = 0;
LABEL_84:
    v49 = 0;
LABEL_85:
    *a3 = v14;
    *(a3 + 8) = v49;
    return;
  }

  v7 = a1;
  v8 = sub_1ABF23E64();

  if (v8)
  {
    v9 = sub_1ABF23D44();
    v10 = sub_1ABAA958C(v9, v7, a2);
    v7 = MEMORY[0x1AC5A9330](v10);
    v12 = v11;

    v13 = HIBYTE(v12);
    v6 = v7 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v13 = HIBYTE(a2);
    v12 = a2;
  }

  v15 = v13 & 0xF;
  if ((v12 & 0x2000000000000000) != 0)
  {
    v16 = v13 & 0xF;
  }

  else
  {
    v16 = v6;
  }

  if (!v16)
  {

    goto LABEL_77;
  }

  if ((v12 & 0x1000000000000000) != 0)
  {

    v55 = 0;
    v50 = sub_1ABA7E79C();
    v14 = sub_1ABB81A68(v50, v51, 10);
    v35 = v52;
LABEL_76:

    if ((v35 & 1) == 0)
    {
LABEL_83:

      goto LABEL_84;
    }

LABEL_77:

    v36 = sub_1ABA7E79C();
    v38 = sub_1ABAAA650(v36, v37);
    if (v39)
    {
      if (qword_1ED871B38 != -1)
      {
        sub_1ABA7D178();
      }

      v40 = sub_1ABF237F4();
      sub_1ABA7AA24(v40, qword_1ED871B40);

      v41 = sub_1ABF237D4();
      v42 = sub_1ABF24664();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v54[0] = v44;
        *v43 = 136380675;
        v45 = sub_1ABA7E79C();
        v48 = sub_1ABADD6D8(v45, v46, v47);

        *(v43 + 4) = v48;
        _os_log_impl(&dword_1ABA78000, v41, v42, "RelationshipIdentifier: attempted initialization with non-numeric value: %{private}s", v43, 0xCu);
        sub_1ABA84B54(v44);
        sub_1ABA7BC34();
        sub_1ABA7BC34();
      }

      else
      {
      }

      v14 = 0;
      v49 = 1;
      goto LABEL_85;
    }

    v14 = v38;
    goto LABEL_83;
  }

  if ((v12 & 0x2000000000000000) == 0)
  {
    if ((v7 & 0x1000000000000000) != 0)
    {
      v17 = ((v12 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {

      sub_1ABA7E79C();
      v17 = sub_1ABF24B74();
      v6 = v53;
    }

    v18 = *v17;
    if (v18 == 43)
    {
      if (v6 >= 1)
      {
        if (v6 != 1)
        {
          v14 = 0;
          if (v17)
          {
            while (1)
            {
              sub_1ABA7D44C();
              if (!v20 & v19)
              {
                goto LABEL_74;
              }

              sub_1ABA8FB14();
              if (!v20)
              {
                goto LABEL_74;
              }

              v14 = v27 + v26;
              if (__OFADD__(v27, v26))
              {
                goto LABEL_74;
              }

              sub_1ABA7E4F0();
              if (v20)
              {
                goto LABEL_75;
              }
            }
          }

          goto LABEL_73;
        }

        goto LABEL_74;
      }

      goto LABEL_93;
    }

    if (v18 != 45)
    {
      if (v6)
      {
        v14 = 0;
        if (v17)
        {
          while (1)
          {
            v30 = *v17 - 48;
            if (v30 > 9)
            {
              goto LABEL_74;
            }

            v31 = 10 * v14;
            if ((v14 * 10) >> 64 != (10 * v14) >> 63)
            {
              goto LABEL_74;
            }

            v14 = v31 + v30;
            if (__OFADD__(v31, v30))
            {
              goto LABEL_74;
            }

            ++v17;
            if (!--v6)
            {
              goto LABEL_73;
            }
          }
        }

        goto LABEL_73;
      }

LABEL_74:
      v14 = 0;
      v23 = 1;
      goto LABEL_75;
    }

    if (v6 >= 1)
    {
      if (v6 != 1)
      {
        v14 = 0;
        if (v17)
        {
          while (1)
          {
            sub_1ABA7D44C();
            if (!v20 & v19)
            {
              goto LABEL_74;
            }

            sub_1ABA8FB14();
            if (!v20)
            {
              goto LABEL_74;
            }

            v14 = v22 - v21;
            if (__OFSUB__(v22, v21))
            {
              goto LABEL_74;
            }

            sub_1ABA7E4F0();
            if (v20)
            {
              goto LABEL_75;
            }
          }
        }

LABEL_73:
        v23 = 0;
LABEL_75:
        v55 = v23;
        v35 = v23;
        goto LABEL_76;
      }

      goto LABEL_74;
    }

    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v54[0] = v7;
  v54[1] = v12 & 0xFFFFFFFFFFFFFFLL;
  if (v7 != 43)
  {
    if (v7 != 45)
    {
      if (v15)
      {
        v14 = 0;
        v32 = v54;
        while (1)
        {
          v33 = *v32 - 48;
          if (v33 > 9)
          {
            break;
          }

          v34 = 10 * v14;
          if ((v14 * 10) >> 64 != (10 * v14) >> 63)
          {
            break;
          }

          v14 = v34 + v33;
          if (__OFADD__(v34, v33))
          {
            break;
          }

          ++v32;
          if (!--v15)
          {
            goto LABEL_73;
          }
        }
      }

      goto LABEL_74;
    }

    if (v15)
    {
      if (v15 != 1)
      {
        sub_1ABA7C778();
        while (1)
        {
          sub_1ABA7D44C();
          if (!v20 & v19)
          {
            break;
          }

          sub_1ABA8FB14();
          if (!v20)
          {
            break;
          }

          v14 = v25 - v24;
          if (__OFSUB__(v25, v24))
          {
            break;
          }

          sub_1ABA7E4F0();
          if (v20)
          {
            goto LABEL_75;
          }
        }
      }

      goto LABEL_74;
    }

    goto LABEL_92;
  }

  if (v15)
  {
    if (v15 != 1)
    {
      sub_1ABA7C778();
      while (1)
      {
        sub_1ABA7D44C();
        if (!v20 & v19)
        {
          break;
        }

        sub_1ABA8FB14();
        if (!v20)
        {
          break;
        }

        v14 = v29 + v28;
        if (__OFADD__(v29, v28))
        {
          break;
        }

        sub_1ABA7E4F0();
        if (v20)
        {
          goto LABEL_75;
        }
      }
    }

    goto LABEL_74;
  }

LABEL_94:
  __break(1u);
}

unint64_t RelationshipIdentifier.init(entityClass:)@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);

  result = sub_1ABE4022C(0xFFFFFFFFFFFFFFuLL);
  *a2 = (result + 1) | (v5 << 56);
  return result;
}

uint64_t RelationshipIdentifier.init(entityClass:hash:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  sub_1ABAD219C(&qword_1EB4D30A8, &qword_1ABF3F400);
  sub_1ABF23904();
  if (v12)
  {
    result = sub_1ABF24CD4();
    __break(1u);
  }

  else
  {
    v8 = sub_1ABF23914();
    (*(*(v8 - 8) + 8))(a2, v8);

    *(&v10 + 1) = v7;
    *&v10 = v11;
    *a3 = v10 >> 8;
  }

  return result;
}

uint64_t sub_1ABE3FC04(uint64_t a1)
{
  v2 = sub_1ABE402B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE3FC40(uint64_t a1)
{
  v2 = sub_1ABE402B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RelationshipIdentifier.encode(to:)(void *a1)
{
  v3 = sub_1ABAD219C(&qword_1EB4DAED0, &qword_1ABF6B958);
  v4 = sub_1ABA7BB64(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v14 - v9;
  v11 = *v1;
  v12 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABE402B8();
  sub_1ABF252E4();
  sub_1ABF24FB4();
  return (*(v6 + 8))(v10, v3);
}

uint64_t RelationshipIdentifier.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1ABAD219C(&qword_1EB4DAEE0, &qword_1ABF6B960);
  v6 = sub_1ABA7BB64(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v16 - v11;
  v13 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABE402B8();
  sub_1ABF252C4();
  if (!v2)
  {
    v14 = sub_1ABF24E94();
    (*(v8 + 8))(v12, v5);
    *a2 = v14;
  }

  return sub_1ABA84B54(a1);
}

uint64_t sub_1ABE3FF20(uint64_t a1)
{
  v2 = sub_1ABB34688();

  return MEMORY[0x1EEE09B08](a1, v2);
}

uint64_t sub_1ABE3FF6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABB34688();

  return MEMORY[0x1EEE09B18](a1, a2, a3, v6);
}

uint64_t RelationshipIdentifier.hashValue.getter()
{
  v1 = *v0;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8D0](v1);
  return sub_1ABF25294();
}

uint64_t RelationshipIdentifier.stringValue.getter()
{
  v3 = *v0;
  v1 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v1);

  return 3828082;
}

unint64_t RelationshipIdentifier.description.getter()
{
  EntityClass.init(intValue:)(HIBYTE(*v0), &v8);
  v1 = v9;
  if (v9)
  {
    v3 = v10;
    v2 = v11;
    v4 = v8;

    sub_1ABAA8FA8(v4, v1);
  }

  else
  {
    v2 = 0xE400000000000000;
    v3 = 1701736302;
  }

  v8 = 0;
  v9 = 0xE000000000000000;
  sub_1ABF24AB4();

  v8 = 0xD00000000000001ALL;
  v9 = 0x80000001ABF93350;
  MEMORY[0x1AC5A9410](v3, v2);

  MEMORY[0x1AC5A9410](3830304, 0xE300000000000000);
  v5 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v5);

  MEMORY[0x1AC5A9410](3831328, 0xE300000000000000);
  v6 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v6);

  MEMORY[0x1AC5A9410](62, 0xE100000000000000);
  return v8;
}

unint64_t sub_1ABE4022C(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1AC5AB8D0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1AC5AB8D0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1ABE402B8()
{
  result = qword_1EB4DAED8;
  if (!qword_1EB4DAED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAED8);
  }

  return result;
}

unint64_t sub_1ABE40310()
{
  result = qword_1ED86FF08[0];
  if (!qword_1ED86FF08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED86FF08);
  }

  return result;
}

unint64_t sub_1ABE40368()
{
  result = qword_1ED86D2C0;
  if (!qword_1ED86D2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86D2C0);
  }

  return result;
}

unint64_t sub_1ABE403BC()
{
  result = qword_1ED86FF00;
  if (!qword_1ED86FF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86FF00);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RelationshipIdentifier.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1ABE404C0()
{
  result = qword_1EB4DAEE8;
  if (!qword_1EB4DAEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAEE8);
  }

  return result;
}

unint64_t sub_1ABE40518()
{
  result = qword_1EB4DAEF0;
  if (!qword_1EB4DAEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAEF0);
  }

  return result;
}

unint64_t sub_1ABE40570()
{
  result = qword_1EB4DAEF8[0];
  if (!qword_1EB4DAEF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4DAEF8);
  }

  return result;
}

uint64_t sub_1ABE40628(uint64_t a1, uint64_t a2)
{
  *(v3 + 160) = a2;
  *(v3 + 168) = v2;
  *(v3 + 152) = a1;
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *(*v2 + 80);
  v7 = sub_1ABA7F974();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for InferenceMessageResponseError();
  *(v3 + 176) = v9;
  v10 = *(v9 - 8);
  *(v3 + 184) = v10;
  v11 = *(v10 + 64) + 15;
  *(v3 + 192) = swift_task_alloc();
  v12 = sub_1ABA7F974();
  *(v3 + 200) = v12;
  v13 = v4[7];
  v14 = v4[8];
  v15 = v4[9];
  *(v3 + 16) = v12;
  *(v3 + 24) = v7;
  *(v3 + 32) = v13;
  *(v3 + 48) = AssociatedConformanceWitness;
  *(v3 + 56) = v14;
  *(v3 + 72) = v15;
  v16 = type metadata accessor for InferenceMessageRemoteServerResponse();
  *(v3 + 208) = v16;
  v17 = *(v16 - 8);
  *(v3 + 216) = v17;
  v18 = *(v17 + 64) + 15;
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1ABE4082C, 0, 0);
}

void sub_1ABE4082C()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = objc_autoreleasePoolPush();
  sub_1ABE40EC0(v1, v0 + 17, v19);
  v4 = v0[21];
  objc_autoreleasePoolPop(v3);
  v5 = v19[1];
  v0[30] = v19[0];
  v0[31] = v5;
  v6 = v4[12];
  sub_1ABA93E20(v4 + 8, v4[11]);
  v8 = v4[2];
  v7 = v4[3];
  v9 = v4[4];
  v10 = v4[5];
  v11 = v4[6];
  v12 = v4[7];
  v0[11] = v8;
  v0[12] = v7;
  v0[13] = v9;
  v0[14] = v10;
  v0[15] = v11;
  v0[16] = v12;
  v13 = *(v6 + 8);

  v18 = v13 + *v13;
  v14 = v13[1];
  v15 = swift_task_alloc();
  v0[32] = v15;
  *v15 = v0;
  v15[1] = sub_1ABE40A38;
  sub_1ABA7DA50();

  __asm { BRAA            X5, X16 }
}

uint64_t sub_1ABE40A38(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 256);
  v13 = *v3;
  v4[33] = a1;
  v4[34] = a2;
  v4[35] = v2;

  v6 = v4[12];
  if (v2)
  {
    v7 = v4[14];
    v8 = v4[16];

    v9 = sub_1ABE40E3C;
  }

  else
  {
    v10 = v4[14];
    v11 = v4[16];

    v9 = sub_1ABE40B90;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

void sub_1ABE40B90()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];
  v4 = v0[29];
  v5 = v0[21];
  v6 = objc_autoreleasePoolPush();
  sub_1ABE40FDC(v5, v3, v1, v0 + 18);
  if (v2)
  {
    v8 = v0[33];
    v7 = v0[34];
    v10 = v0[30];
    v9 = v0[31];
    v11 = v0[18];
    objc_autoreleasePoolPop(v6);
    sub_1ABA96210(v8, v7);
    sub_1ABA96210(v10, v9);
  }

  else
  {
    v13 = v0[28];
    v12 = v0[29];
    v14 = v0[26];
    v15 = v0[27];
    objc_autoreleasePoolPop(v6);
    (*(v15 + 16))(v13, v12, v14);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v18 = v0[33];
    v17 = v0[34];
    v19 = v0[31];
    v38 = v0[30];
    v20 = v0[28];
    v22 = v0[26];
    v21 = v0[27];
    if (EnumCaseMultiPayload != 1)
    {
      v32 = v0[25];
      v37 = v0[24];
      v33 = v0[19];
      (*(v21 + 8))(v0[29], v22);
      sub_1ABA96210(v18, v17);
      sub_1ABA96210(v38, v19);
      v34 = type metadata accessor for InferenceMessageResponse();
      (*(*(v34 - 8) + 32))(v33, v20, v34);

      sub_1ABA7BBE0();
LABEL_6:
      sub_1ABA7DA50();

      __asm { BRAA            X1, X16 }
    }

    v35 = v0[31];
    v36 = v0[29];
    v23 = v0[23];
    v24 = v0[24];
    v25 = v0[22];
    (*(v23 + 32))(v24, v20, v25);
    swift_getWitnessTable();
    swift_allocError();
    (*(v23 + 16))(v26, v24, v25);
    swift_willThrow();
    sub_1ABA96210(v18, v17);
    sub_1ABA96210(v38, v35);
    (*(v23 + 8))(v24, v25);
    (*(v21 + 8))(v36, v22);
  }

  v28 = v0[28];
  v27 = v0[29];
  v29 = v0[24];

  sub_1ABA7BBE0();
  goto LABEL_6;
}

uint64_t sub_1ABE40E3C()
{
  sub_1ABA96210(v0[30], v0[31]);
  v1 = v0[35];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[24];

  sub_1ABA7BBE0();

  return v5();
}

uint64_t sub_1ABE40EC0@<X0>(void *a1@<X0>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v7 = a1[13];
  v8 = *(*a1 + 88);
  v9 = *(*a1 + 80);
  swift_getAssociatedTypeWitness();
  type metadata accessor for InferenceMessageRequest();
  v12 = *(v6 + 96);
  swift_getWitnessTable();
  result = sub_1ABF21834();
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    *a3 = result;
    a3[1] = v11;
  }

  return result;
}

uint64_t sub_1ABE40FDC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *a1;
  v5 = a1[14];
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = v4[7];
  v11 = v4[8];
  v12 = v4[9];
  type metadata accessor for InferenceMessageRemoteServerResponse();
  swift_getWitnessTable();
  result = sub_1ABF217D4();
  if (v13)
  {
    *a4 = v13;
  }

  return result;
}

void *sub_1ABE41164()
{
  v1 = v0[3];
  v2 = v0[5];
  v3 = v0[7];

  sub_1ABA84B54(v0 + 8);
  v4 = v0[13];

  v5 = v0[14];

  return v0;
}

uint64_t sub_1ABE411C4()
{
  sub_1ABE41164();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABE41210(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1ABBD00C0;

  return sub_1ABE40628(a1, a2);
}

uint64_t sub_1ABE41308()
{
  v1 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatformP33_68BBD1BF2B042DA1870C4C06E01085D319ViewAccessAssertion_viewName);
  v2 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatformP33_68BBD1BF2B042DA1870C4C06E01085D319ViewAccessAssertion_viewName + 8);

  return v1;
}

uint64_t sub_1ABE41428@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20IntelligencePlatformP33_68BBD1BF2B042DA1870C4C06E01085D319ViewAccessAssertion_viewArtifactURL;
  v4 = sub_1ABF21CF4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1ABE414F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatformP33_68BBD1BF2B042DA1870C4C06E01085D319ViewAccessAssertion_viewArtifactTableName);
  v2 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatformP33_68BBD1BF2B042DA1870C4C06E01085D319ViewAccessAssertion_viewArtifactTableName + 8);

  return v1;
}

id sub_1ABE4156C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_1ABF21CF4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &v5[OBJC_IVAR____TtC20IntelligencePlatformP33_68BBD1BF2B042DA1870C4C06E01085D319ViewAccessAssertion_viewName];
  *v16 = a1;
  v16[1] = a2;
  sub_1ABF22064();
  (*(v12 + 32))(&v5[OBJC_IVAR____TtC20IntelligencePlatformP33_68BBD1BF2B042DA1870C4C06E01085D319ViewAccessAssertion_viewArtifactURL], v15, v11);
  v17 = sub_1ABE4227C(a3);
  v18 = &v5[OBJC_IVAR____TtC20IntelligencePlatformP33_68BBD1BF2B042DA1870C4C06E01085D319ViewAccessAssertion_viewArtifactTableName];
  *v18 = v17;
  v18[1] = v19;
  v20 = [a3 alwaysAvailable];
  v5[OBJC_IVAR____TtC20IntelligencePlatformP33_68BBD1BF2B042DA1870C4C06E01085D319ViewAccessAssertion_alwaysAvailable] = v20;
  v21 = OBJC_IVAR____TtC20IntelligencePlatformP33_68BBD1BF2B042DA1870C4C06E01085D319ViewAccessAssertion_token;
  v22 = sub_1ABF22074();
  v23 = *(v22 - 8);
  (*(v23 + 16))(&v5[v21], a4, v22);
  v26.receiver = v5;
  v26.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v26, sel_init);

  (*(v23 + 8))(a4, v22);
  return v24;
}

id sub_1ABE41874(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC20IntelligencePlatform25RemoteViewAccessRequester_remoteAccessRequester] = a1;
  *&v2[OBJC_IVAR____TtC20IntelligencePlatform25RemoteViewAccessRequester_useCase] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RemoteViewAccessRequester.reportUnknownError(_:)(Swift::String a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = *(v1 + OBJC_IVAR____TtC20IntelligencePlatform25RemoteViewAccessRequester_remoteAccessRequester);
  v3 = sub_1ABF23BD4();
  v4 = *(v1 + OBJC_IVAR____TtC20IntelligencePlatform25RemoteViewAccessRequester_useCase);
  v8[0] = 0;
  LODWORD(v2) = [v2 reportUnknownError:v3 useCase:v4 error:v8];

  if (v2)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_1ABF21BE4();

    swift_willThrow();
  }

  v7 = *MEMORY[0x1E69E9840];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RemoteViewAccessRequester.reportSQLiteError(_:sqliteErrorCode:)(Swift::String _, Swift::Int64 sqliteErrorCode)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = *(v2 + OBJC_IVAR____TtC20IntelligencePlatform25RemoteViewAccessRequester_remoteAccessRequester);
  v5 = sub_1ABF23BD4();
  v6 = *(v2 + OBJC_IVAR____TtC20IntelligencePlatform25RemoteViewAccessRequester_useCase);
  v10[0] = 0;
  LODWORD(sqliteErrorCode) = [v4 reportSQLiteError:v5 sqliteErrorCode:sqliteErrorCode useCase:v6 error:v10];

  if (sqliteErrorCode)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1ABF21BE4();

    swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
}

id RemoteViewAccessRequester.requestAssertion(forViewName:)()
{
  v1 = v0;
  v37[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1ABF22074();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - v8;
  sub_1ABF22044();
  if (!sub_1ABF22024())
  {
    v21 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform25RemoteViewAccessRequester_remoteAccessRequester);
    v22 = sub_1ABF23BD4();
    v23 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform25RemoteViewAccessRequester_useCase);
    v37[0] = 0;
    v18 = [v21 requestAssertionForViewName:v22 useCase:v23 error:v37];

    goto LABEL_8;
  }

  v34 = v3;
  v35 = v10;
  v11 = [objc_opt_self() current];
  v12 = [v11 canPerformGlobalMachLookup:*MEMORY[0x1E698E8E0] report:0];

  v13 = *(v1 + OBJC_IVAR____TtC20IntelligencePlatform25RemoteViewAccessRequester_remoteAccessRequester);
  v14 = sub_1ABF23BD4();
  v15 = v14;
  v16 = *(v1 + OBJC_IVAR____TtC20IntelligencePlatform25RemoteViewAccessRequester_useCase);
  if (!v12)
  {
    v37[0] = 0;
    v18 = sub_1ABA8FB28(v14, sel_requestAssertionForViewName_useCase_error_);

LABEL_8:
    if (v18)
    {
      v24 = v37[0];
      goto LABEL_11;
    }

LABEL_10:
    v25 = v37[0];
    sub_1ABF21BE4();

    swift_willThrow();
    goto LABEL_11;
  }

  v37[0] = 0;
  v17 = sub_1ABA8FB28(v14, sel_requestInfoForViewName_useCase_error_);

  v18 = v37[0];
  if (!v17)
  {
    goto LABEL_10;
  }

  v33 = v17;
  v19 = v37[0];
  v18 = sub_1ABF22094();
  sub_1ABF23C04();
  v20 = v36;
  sub_1ABF22054();

  if (v20)
  {
  }

  else
  {
    v28 = sub_1ABF22084();
    v30 = v29;
    v31 = v34;
    (*(v34 + 16))(v6, v9, v2);
    v32 = objc_allocWithZone(type metadata accessor for ViewAccessAssertion());
    v18 = sub_1ABE4156C(v28, v30, v33, v6);
    (*(v31 + 8))(v9, v2);
  }

LABEL_11:
  v26 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t type metadata accessor for ViewAccessAssertion()
{
  result = qword_1EB4DAFC0;
  if (!qword_1EB4DAFC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id RemoteViewAccessRequester.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1ABE42108()
{
  result = sub_1ABF21CF4();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1ABF22074();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1ABE4227C(void *a1)
{
  v1 = [a1 tableName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1ABF23C04();

  return v3;
}

uint64_t sub_1ABE422E4()
{
  strcpy(__src, "renderDateTime");
  HIBYTE(__src[0]) = -18;
  *&__src[1] = &unk_1F208E828;
  *(&__src[1] + 1) = 111;
  *&__src[2] = 0xE100000000000000;
  BYTE8(__src[2]) = 0;
  *&__src[3] = 0xD00000000000005ALL;
  *(&__src[3] + 1) = 0x80000001ABF93540;
  *&__src[4] = 0;
  *(&__src[4] + 1) = 0xE000000000000000;
  memset(&__src[5], 0, 32);
  memset(v4, 0, sizeof(v4));
  memcpy((v0 + 16), __src, 0x70uLL);

  sub_1ABB51320(__src, &v2);
  sub_1ABAE4AA8(v4);

  sub_1ABB5137C(__src);
  return v0;
}

uint64_t sub_1ABE423C4()
{
  v0 = sub_1ABE713BC();
  if (v0[2])
  {
    v1 = v0[5];
    v27 = v0[4];

    v2 = sub_1ABE713BC();
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = (v2 + 40);
      v30 = MEMORY[0x1E69E7CC0];
      v26 = v1;
      do
      {
        v5 = *(v4 - 1);
        v6 = *v4;

        sub_1ABE427F4(v27, v1, v5, v6, &v33);
        v7 = v34;
        if (v34)
        {
          v8 = v35;
          v9 = v36;
          v28 = v33;
          v31 = v33;
          v32 = v34;

          MEMORY[0x1AC5A9410](126, 0xE100000000000000);
          sub_1ABA7F994();
          v29 = v8;
          MEMORY[0x1AC5A9410](v8, v9);

          sub_1ABA7F994();
          MEMORY[0x1AC5A9410](126, 0xE100000000000000);

          sub_1ABA7F994();
          MEMORY[0x1AC5A9410](v5, v6);

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v10 = v30;
          }

          else
          {
            v18 = *(v30 + 16);
            sub_1ABAD8758();
            v10 = v19;
          }

          v11 = *(v10 + 16);
          if (v11 >= *(v10 + 24) >> 1)
          {
            sub_1ABAD8758();
            v10 = v20;
          }

          *(v10 + 16) = v11 + 1;
          v30 = v10;
          v12 = (v10 + 88 * v11);
          v12[4] = v31;
          v12[5] = v32;
          v12[6] = 0;
          v12[7] = v28;
          v12[8] = v7;
          v12[9] = 0;
          v12[10] = v29;
          v12[11] = v9;
          v12[12] = v5;
          v12[13] = v6;
          v12[14] = MEMORY[0x1E69E7CC0];
          v1 = v26;
        }

        else
        {
          if (qword_1ED86E458 != -1)
          {
            sub_1ABA7D0C4();
            swift_once();
          }

          v13 = sub_1ABF237F4();
          sub_1ABA7AA24(v13, qword_1ED86E460);

          v14 = sub_1ABF237D4();
          v15 = sub_1ABF24664();

          if (os_log_type_enabled(v14, v15))
          {
            v16 = swift_slowAlloc();
            v33 = swift_slowAlloc();
            *v16 = 136315394;
            v17 = sub_1ABADD6D8(v5, v6, &v33);

            *(v16 + 4) = v17;
            v1 = v26;
            *(v16 + 12) = 2080;
            *(v16 + 14) = sub_1ABADD6D8(v27, v26, &v33);
            _os_log_impl(&dword_1ABA78000, v14, v15, "Error converting %s of type %s to string value", v16, 0x16u);
            swift_arrayDestroy();
            sub_1ABA7BC34();
            sub_1ABA7BC34();
          }

          else
          {
          }
        }

        v4 += 2;
        --v3;
      }

      while (v3);
    }

    else
    {
      v30 = MEMORY[0x1E69E7CC0];
    }

    type metadata accessor for ResultGraph();
    v23 = swift_allocObject();
    v24 = MEMORY[0x1E69E7CC0];
    *(v23 + 16) = sub_1ABF239C4();
    *(v23 + 24) = v24;
    LOBYTE(v33) = 0;
    v22 = v30;
    sub_1ABE489A8(v30, &v33);
  }

  else
  {

    type metadata accessor for ResultGraph();
    v21 = swift_allocObject();
    v22 = MEMORY[0x1E69E7CC0];
    *(v21 + 16) = sub_1ABF239C4();
    *(v21 + 24) = v22;
  }

  return v22;
}

void sub_1ABE427F4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1ABF21A74();
  v11 = sub_1ABA7BB64(v10);
  v86 = v12;
  v87 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1ABF21EB4();
  v91 = sub_1ABA7BB64(v17);
  v92 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v22 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v80 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v90 = &v80 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v89 = &v80 - v29;
  v30 = sub_1ABF21FE4();
  v31 = sub_1ABA7BB64(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v88 = &v80 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1ABB24D04(a3, a4);
  if (v37)
  {
    if (qword_1ED86E458 != -1)
    {
      sub_1ABA7D0C4();
      swift_once();
    }

    v38 = sub_1ABF237F4();
    sub_1ABA7AA24(v38, qword_1ED86E460);

    v39 = sub_1ABF237D4();
    v40 = sub_1ABF24664();

    if (!os_log_type_enabled(v39, v40))
    {
      goto LABEL_7;
    }

    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v94 = v42;
    *v41 = 136315138;
    *(v41 + 4) = sub_1ABADD6D8(a3, a4, &v94);
    _os_log_impl(&dword_1ABA78000, v39, v40, "cannot convert %s to Double", v41, 0xCu);
    sub_1ABA84B54(v42);
    sub_1ABA7BC34();
    goto LABEL_6;
  }

  v99 = 0;
  v100 = 0xE000000000000000;
  v85 = 279;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  sub_1ABA91D48(*_Records_GDEntityPredicate_records, *(_Records_GDEntityPredicate_records + 1), *(_Records_GDEntityPredicate_records + 2), &v94);

  v43 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
  if (v43 || (sub_1ABA7C78C() & 1) != 0)
  {
    v82 = v33;
    v83 = a5;
    v84 = v30;
    sub_1ABF21FC4();
    sub_1ABF21EA4();
    sub_1ABF21EA4();
    sub_1ABF21E24();
    v44 = *(v92 + 8);
    v92 += 8;
    v81 = v44;
    v44(v25, v91);
    sub_1ABAD219C(&qword_1EB4D9148, &unk_1ABF6BDF0);
    v45 = sub_1ABF21FD4();
    sub_1ABA7BB64(v45);
    v47 = v46;
    v49 = *(v48 + 72);
    v50 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1ABF3BFC0;
    v52 = v51 + v50;
    v53 = *(v47 + 104);
    v53(v52, *MEMORY[0x1E6969A68], v45);
    v53(v52 + v49, *MEMORY[0x1E6969A78], v45);
    v53(v52 + 2 * v49, *MEMORY[0x1E6969A48], v45);
    sub_1ABB2CB2C(v51);
    sub_1ABF21F74();

    v54 = sub_1ABF21A44();
    if ((v55 & 1) == 0)
    {
      v56 = v54;
      v57 = sub_1ABF21A54();
      if ((v58 & 1) == 0)
      {
        v59 = v57;
        v60 = sub_1ABF21A24();
        if ((v61 & 1) == 0)
        {
          v62 = v60;
          v94 = 0;
          v95 = 0xE000000000000000;
          sub_1ABF24AB4();

          v94 = 0x203A7372616559;
          v95 = 0xE700000000000000;
          v93 = v56;
          v63 = sub_1ABA81188();
          MEMORY[0x1AC5A9410](v63);

          MEMORY[0x1AC5A9410](0x7368746E6F4D202CLL, 0xEA0000000000203ALL);
          v93 = v59;
          v64 = sub_1ABA81188();
          MEMORY[0x1AC5A9410](v64);

          MEMORY[0x1AC5A9410](0x203A73796144202CLL, 0xE800000000000000);
          v93 = v62;
          v65 = sub_1ABA81188();
          MEMORY[0x1AC5A9410](v65);

          MEMORY[0x1AC5A9410](v94, v95);
        }
      }
    }

    v66 = v84;
    a5 = v83;
    if (v85 >= 0xB6)
    {
      if (_Records_GDEntityPredicate_records)
      {
        sub_1ABA91D48(_Records_GDEntityPredicate_records[2172], *(_Records_GDEntityPredicate_records + 544), *(_Records_GDEntityPredicate_records + 545), &v94);
        (*(v86 + 8))(v16, v87);
        v67 = v91;
        v68 = v81;
        v81(v90, v91);
        v68(v89, v67);
        (*(v82 + 8))(v88, v66);
LABEL_21:
        v69 = v94;
        v70 = v95;
        v71 = v96;
        v72 = v97;
        v73 = v98;
        v74 = v100;
        *a5 = v99;
        *(a5 + 8) = v74;
        *(a5 + 16) = v69;
        *(a5 + 24) = v70;
        *(a5 + 32) = v71;
        *(a5 + 40) = v72;
        *(a5 + 48) = v73;
        return;
      }

      goto LABEL_37;
    }

    __break(1u);
    goto LABEL_34;
  }

  v75 = a1 == 0x656D697465746164 && a2 == 0xE800000000000000;
  if (!v75 && (sub_1ABA7C78C() & 1) == 0)
  {
    if (qword_1ED86E458 == -1)
    {
LABEL_31:
      v77 = sub_1ABF237F4();
      sub_1ABA7AA24(v77, qword_1ED86E460);
      v39 = sub_1ABF237D4();
      v78 = sub_1ABF24664();
      if (!os_log_type_enabled(v39, v78))
      {
        goto LABEL_7;
      }

      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_1ABA78000, v39, v78, "unknown conversion type", v79, 2u);
LABEL_6:
      sub_1ABA7BC34();
LABEL_7:

      *(a5 + 48) = 0;
      *(a5 + 16) = 0u;
      *(a5 + 32) = 0u;
      *a5 = 0u;
      return;
    }

LABEL_35:
    sub_1ABA7D0C4();
    swift_once();
    goto LABEL_31;
  }

  sub_1ABF21E04();
  v99 = sub_1ABF21E94();
  v100 = v76;
  if (v85 < 0x92)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (_Records_GDEntityPredicate_records)
  {
    sub_1ABA91D48(_Records_GDEntityPredicate_records[1740], *(_Records_GDEntityPredicate_records + 436), *(_Records_GDEntityPredicate_records + 437), &v94);
    (*(v92 + 8))(v22, v91);
    goto LABEL_21;
  }

LABEL_38:
  __break(1u);
}

void sub_1ABE4308C()
{
  type metadata accessor for QueryContext();
  if (v0 <= 0x3F)
  {
    sub_1ABE431C0();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ResultGraph();
      if (v2 <= 0x3F)
      {
        sub_1ABE4321C();
        if (v3 <= 0x3F)
        {
          sub_1ABE47CF0(319, &qword_1EB4D00C8, &type metadata for KnosisResult.Status, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1ABE47CF0(319, &qword_1EB4CF828, &type metadata for RouteFlag, MEMORY[0x1E69E62F8]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1ABE431C0()
{
  if (!qword_1EB4CF820)
  {
    sub_1ABAE4254();
    v0 = sub_1ABF243D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4CF820);
    }
  }
}

void sub_1ABE4321C()
{
  if (!qword_1EB4CF788)
  {
    sub_1ABAE2850(&qword_1EB4D1AD0, &qword_1ABF33C70);
    v0 = sub_1ABF247E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4CF788);
    }
  }
}

uint64_t sub_1ABE43280(uint64_t a1)
{
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC8];
  v41 = MEMORY[0x1E69E7CC8];
  v4 = *(a1 + 16);
  v5 = 32;
  v37 = xmmword_1ABF34740;
  v38 = v4;
  while (1)
  {
    if (v4 == v2)
    {

      return v3;
    }

    if (v2 >= *(a1 + 16))
    {
      break;
    }

    memcpy(__dst, (a1 + v5), 0x70uLL);
    v6 = __dst[0];
    v7 = sub_1ABAF81A8();
    v9 = v3[2];
    v10 = (v8 & 1) == 0;
    v11 = v9 + v10;
    if (__OFADD__(v9, v10))
    {
      goto LABEL_19;
    }

    v12 = v8;
    if (v3[3] >= v11)
    {
      v21 = v7;
      sub_1ABB345D8(__dst, v39);
      if (v12)
      {
        goto LABEL_11;
      }
    }

    else
    {
      sub_1ABB345D8(__dst, v39);
      sub_1ABC04098(v11, 1, v13, v14, v15, v16, v17, v18, v35, v36, v37, SBYTE4(v37));
      v3 = v41;
      v19 = sub_1ABAF81A8();
      if ((v12 & 1) != (v20 & 1))
      {
        goto LABEL_21;
      }

      v21 = v19;
      if (v12)
      {
LABEL_11:
        v26 = v3[7];
        v27 = *(v26 + 8 * v21);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v26 + 8 * v21) = v27;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v31 = *(v27 + 16);
          sub_1ABA7BEF0();
          sub_1ABAD89DC();
          v27 = v32;
          *(v26 + 8 * v21) = v32;
        }

        v30 = *(v27 + 16);
        v29 = *(v27 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_1ABA7BBEC(v29);
          sub_1ABAD89DC();
          v27 = v33;
          *(v26 + 8 * v21) = v33;
        }

        *(v27 + 16) = v30 + 1;
        memcpy((v27 + 112 * v30 + 32), __dst, 0x70uLL);
        v4 = v38;
        goto LABEL_16;
      }
    }

    sub_1ABAD219C(&qword_1EB4D17C0, &qword_1ABF33950);
    v22 = swift_allocObject();
    *(v22 + 16) = v37;
    memcpy((v22 + 32), __dst, 0x70uLL);
    sub_1ABA7D110(&v3[v21 >> 6]);
    *(v3[6] + 8 * v21) = v6;
    *(v3[7] + 8 * v21) = v22;
    v23 = v3[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_20;
    }

    v3[2] = v25;
LABEL_16:
    v5 += 112;
    ++v2;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABE434CC@<X0>(uint64_t a1@<X8>)
{
  v127 = type metadata accessor for AnswerRenderIterator(0);
  v2 = sub_1ABA7BBB0(v127);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v126 = &v123 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v125 = &v123 - v7;
  v8 = sub_1ABF23744();
  v9 = sub_1ABA7BB64(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v9);
  v16 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v123 - v17;
  v19 = sub_1ABF237F4();
  v20 = sub_1ABA7BB64(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1ABA7BC58();
  v27 = v26 - v25;
  v28 = sub_1ABF23774();
  v29 = sub_1ABA7BB64(v28);
  v129 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1ABA7BC58();
  v35 = v34 - v33;
  v128 = type metadata accessor for LogSignpost();
  v36 = sub_1ABA7BBB0(v128);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  sub_1ABA7BC58();
  v131 = (v40 - v39);
  if (qword_1ED871F20 != -1)
  {
    goto LABEL_57;
  }

  while (2)
  {
    v41 = sub_1ABA7AA24(v19, qword_1ED871EF8);
    (*(v22 + 16))(v27, v41, v19);
    sub_1ABF23754();
    sub_1ABF23764();
    sub_1ABF23714();
    v42 = sub_1ABF23764();
    v43 = sub_1ABF24714();
    if (sub_1ABF247D4())
    {
      v44 = swift_slowAlloc();
      v124 = v11;
      v45 = a1;
      v46 = v28;
      v47 = v16;
      v48 = v8;
      v49 = v44;
      *v44 = 0;
      v50 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v42, v43, v50, "Knosis.renderAll", "", v49, 2u);
      v8 = v48;
      v16 = v47;
      v28 = v46;
      a1 = v45;
      v11 = v124;
      sub_1ABA7BC34();
    }

    (*(v11 + 16))(v16, v18, v8);
    v51 = sub_1ABF237B4();
    v52 = *(v51 + 48);
    v53 = *(v51 + 52);
    swift_allocObject();
    v54 = sub_1ABF237A4();
    (*(v11 + 8))(v18, v8);
    v55 = v131;
    *v131 = "Knosis.renderAll";
    v55[1] = 16;
    *(v55 + 16) = 2;
    v55[3] = v54;
    (*(v129 + 32))(v55 + *(v128 + 24), v35, v28);
    v56 = type metadata accessor for Renderer(0);
    v57 = v130;
    v58 = *(v130 + v56[7]);
    if (v58)
    {
      v60 = *(*v130 + 16);
      v59 = *(*v130 + 24);
      v61 = *(*v130 + 40);
      v129 = *(*v130 + 32);
      Context = type metadata accessor for QueryContext();
      v63 = 0;
      v64 = 0;
      v65 = 0;
      if (*(v57 + *(Context + 52)) == 1)
      {
        v66 = (v57 + *(Context + 48));
        v63 = *v66;
        v64 = v66[1];
        v65 = v66[2];
      }

      __dst[0] = 0;
      __dst[1] = 0xE000000000000000;
      *&v132[0] = v58;
      v67 = v58;

      sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
      sub_1ABF24C54();
      v69 = __dst[0];
      v68 = __dst[1];

      sub_1ABA94D44();
      *a1 = v60;
      *(a1 + 8) = v59;
      v70 = MEMORY[0x1E69E7CC0];
      *(a1 + 16) = v129;
      *(a1 + 24) = v61;
      *(a1 + 32) = v70;
      *(a1 + 40) = 2;
      *(a1 + 48) = v69;
      *(a1 + 56) = v68;
      sub_1ABA9A5B8();
      *(a1 + 144) = v63;
      *(a1 + 152) = v64;
      *(a1 + 160) = v65;
LABEL_22:
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      goto LABEL_23;
    }

    v71 = v56;
    if (*(v130 + v56[8]) == 4)
    {
      v72 = 0;
    }

    else
    {
      v72 = *(v130 + v56[8]);
    }

    v73 = *(v130 + v56[6]);
    v74 = sub_1ABE47EF0();
    v35 = v126;
    if (!v74)
    {
LABEL_14:
      switch(v72)
      {
        case 0:
        case 2:
          goto LABEL_18;
        case 1:
          goto LABEL_15;
        case 3:
          goto LABEL_17;
        default:
          JUMPOUT(0);
      }
    }

    switch(v72)
    {
      case 3:

LABEL_17:
        v72 = 3;
LABEL_18:
        sub_1ABF25054();
        sub_1ABAA4578();
        if (v43)
        {
          goto LABEL_19;
        }

        v128 = v72;
        v87 = *(*v57 + 88);
        v86 = *(*v57 + 96);
        v129 = *v57;
        v88 = sub_1ABE442C8(v86, v87);
        LODWORD(v124) = v89;
        v90 = v125;
        sub_1ABE4716C(v57, v125, type metadata accessor for QueryContext);
        v19 = *(v57 + v71[5]);
        v18 = *(v57 + v71[10]);
        v91 = *(v88 + 16);
        v92 = v127;
        v93 = v90 + v127[8];
        *(v90 + v127[5]) = v19;
        *(v90 + v92[6]) = v88;
        *(v90 + v92[7]) = v91;
        *v93 = 0;
        *(v93 + 8) = 1;
        *(v90 + v92[9]) = v18;
        sub_1ABA7F9B0();
        sub_1ABE4716C(v90, v35, v94);
        v22 = v92[6];
        v27 = *(v35 + v22);
        if (*(v27 + 16))
        {
          v28 = v35 + v92[8];

          v16 = MEMORY[0x1E69E7CC0];
          v8 = 112;
          while (1)
          {
            if (*(v28 + 8))
            {
              v11 = 0;
              *v28 = 0;
              *(v28 + 8) = 0;
LABEL_34:
              v19 = v35;
              sub_1ABE44B9C();
              goto LABEL_35;
            }

            v95 = *v28;
            if (*v28 >= *(v27 + 16) - 1)
            {
              goto LABEL_44;
            }

            *(v28 + 8) = 0;
            v11 = v95 + 1;
            *v28 = v95 + 1;
            if (v95 == -1)
            {
              v11 = 0;
              goto LABEL_34;
            }

            v96 = *(v35 + v127[7]);
            if (v96 && (v96 == -1 || !(v11 % v96)))
            {
              goto LABEL_34;
            }

LABEL_35:
            if (v11 < 0)
            {
              break;
            }

            v27 = *(v35 + v22);
            if (v11 >= *(v27 + 16))
            {
              goto LABEL_56;
            }

            memcpy(__dst, (v27 + 112 * v11 + 32), sizeof(__dst));
            sub_1ABAE441C(__dst, v132);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v99 = *(v16 + 2);
              sub_1ABA7BEF0();
              sub_1ABAD8BA4();
              v16 = v100;
            }

            v98 = *(v16 + 2);
            v97 = *(v16 + 3);
            v19 = v98 + 1;
            if (v98 >= v97 >> 1)
            {
              sub_1ABA7BBEC(v97);
              sub_1ABAD8BA4();
              v16 = v101;
            }

            *(v16 + 2) = v19;
            memcpy(&v16[112 * v98 + 32], __dst, 0x70uLL);
            if (!*(v27 + 16))
            {
              goto LABEL_44;
            }
          }

          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          swift_once();
          continue;
        }

        v16 = MEMORY[0x1E69E7CC0];
LABEL_44:
        sub_1ABA7DF8C();
        sub_1ABE471CC(v35, v102);
        v103 = *(v18 + 2);
        if (v103)
        {
          v104 = (v18 + 32);
          if (qword_1EB4D0248 != -1)
          {
            sub_1ABA939C8();
            swift_once();
          }

          v105 = qword_1EB5495C0;
          do
          {
            v106 = *v104++;
            if (*(v105 + 16))
            {
              v107 = sub_1ABAF8268();
              if (v108)
              {
                sub_1ABA93E64(*(v105 + 56) + 40 * v107, v132);
                sub_1ABA946C0(v132, __dst);
                v109 = __dst[3];
                v110 = __dst[4];
                sub_1ABA93E20(__dst, __dst[3]);
                v111 = (*(v110 + 16))(v16, v130, v109, v110);

                sub_1ABA84B54(__dst);
                v16 = v111;
              }
            }

            --v103;
          }

          while (v103);
        }

        v112 = *(v129 + 24);
        v127 = *(v129 + 16);
        v114 = *(v129 + 32);
        v113 = *(v129 + 40);
        v115 = type metadata accessor for QueryContext();
        v116 = 0;
        v117 = 0;
        v118 = 0;
        if (*(v130 + *(v115 + 52)) == 1)
        {
          v119 = (v130 + *(v115 + 48));
          v116 = *v119;
          v117 = v119[1];
          v118 = v119[2];
        }

        v120 = *(v129 + 88);
        v121 = *(v129 + 96);

        sub_1ABA7DF8C();
        sub_1ABE471CC(v125, v122);
        *(a1 + 88) = 0u;
        *(a1 + 104) = 0u;
        *(a1 + 120) = 0u;
        *(a1 + 136) = 0u;
        *(a1 + 152) = 0u;
        *a1 = v127;
        *(a1 + 8) = v112;
        *(a1 + 16) = v114;
        *(a1 + 24) = v113;
        *(a1 + 32) = v16;
        *(a1 + 40) = v128;
        *(a1 + 48) = 0;
        *(a1 + 56) = 0xE000000000000000;
        sub_1ABA9A5B8();
        *(a1 + 144) = v116;
        *(a1 + 152) = v117;
        *(a1 + 160) = v118;
        *(a1 + 64) = v120;
        *(a1 + 72) = v121;
        *(a1 + 80) = v124 & 1;
LABEL_23:
        v84 = v131;
        sub_1ABE44020(v131);
        return sub_1ABE471CC(v84, type metadata accessor for LogSignpost);
      default:
        sub_1ABF25054();
        sub_1ABAA4578();
        if (v43)
        {
          goto LABEL_14;
        }

LABEL_15:

LABEL_19:
        v76 = *(*v57 + 16);
        v75 = *(*v57 + 24);
        v78 = *(*v57 + 32);
        v77 = *(*v57 + 40);
        v79 = type metadata accessor for QueryContext();
        v80 = 0;
        v81 = 0;
        v82 = 0;
        if (*(v57 + *(v79 + 52)) == 1)
        {
          v83 = (v57 + *(v79 + 48));
          v80 = *v83;
          v81 = v83[1];
          v82 = v83[2];
        }

        sub_1ABA94D44();
        *a1 = v76;
        *(a1 + 8) = v75;
        *(a1 + 16) = v78;
        *(a1 + 24) = v77;
        *(a1 + 32) = MEMORY[0x1E69E7CC0];
        *(a1 + 40) = 1;
        *(a1 + 48) = 0;
        *(a1 + 56) = 0xE000000000000000;

        sub_1ABA9A5B8();
        *(a1 + 144) = v80;
        *(a1 + 152) = v81;
        *(a1 + 160) = v82;
        goto LABEL_22;
    }
  }
}

uint64_t sub_1ABE44020(uint64_t a1)
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

uint64_t sub_1ABE442C8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + *(type metadata accessor for Renderer(0) + 24));
  v6 = sub_1ABE48AE8();
  v7 = *(v6 + 16);
  if (!v7)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v8 = 0;
  v71 = v6 + 32;
  v9 = MEMORY[0x1E69E7CC0];
  v73 = a2;
  v68 = a2;
  v69 = *(v6 + 16);
  v70 = v6;
  while (v8 < *(v6 + 16))
  {
    if (a1 < 1)
    {
      v10 = v71 + 40 * v8;
      v12 = *v10;
      v11 = *(v10 + 8);
      v13 = *(v10 + 16);
      v14 = *(v10 + 24);
      v15 = *(v10 + 32);
      if (a2 >= 1)
      {
        v16 = v73 - 1;
        if (__OFSUB__(v73, 1))
        {
          goto LABEL_39;
        }

        --v73;
        if (v16 < 0)
        {
LABEL_36:

          return v9;
        }
      }

      v81 = v15;
      v79 = v8;
      swift_bridgeObjectRetain_n();

      v80 = a1;
      if (sub_1ABF23E64() & 1) == 0 || (, EntityIdentifier.init(_:)(v12, v11, v89), (BYTE8(v89[0])))
      {
        sub_1ABA9AC84(v12, v11);
        if (v17)
        {
          v82 = v12;
          sub_1ABB7F054(v12, v11);
          if (v18)
          {
            v77 = 0;
            v78 = 0;
            v75 = 0;
            v76 = v11;
LABEL_18:
            sub_1ABAD219C(&qword_1EB4D92F8, &unk_1ABF5FD60);
            sub_1ABAE4254();
            v74 = sub_1ABF239C4();

            sub_1ABE7A35C(v28);
            v30 = v29;

            *&v89[0] = v30;

            sub_1ABE48A4C(v89);

            v31 = *(*&v89[0] + 16);
            if (v31)
            {
              v72 = v9;
              v32 = v31 - 1;
              v33 = 32;
              v84 = MEMORY[0x1E69E7CC0];
              v34 = *&v89[0];
              v83 = *&v89[0];
              while (1)
              {
                memcpy(__dst, (v34 + v33), 0x58uLL);
                memcpy(v88, (v34 + v33), sizeof(v88));
                sub_1ABB242A4(__dst, v87);
                sub_1ABD8B724();
                v36 = v92;
                v35 = v93;
                v38 = v94;
                v37 = v95;
                v39 = v96;
                sub_1ABAD219C(&qword_1EB4DAFE0, &unk_1ABF6BE30);
                v40 = swift_allocObject();
                *(v40 + 16) = xmmword_1ABF34740;
                *(v40 + 32) = v36;
                *(v40 + 40) = v35;
                *(v40 + 48) = v38;
                *(v40 + 56) = v37;
                *(v40 + 64) = v39;
                sub_1ABAD219C(&qword_1EB4D1A58, &qword_1ABF33BE8);
                v41 = swift_allocObject();
                v42 = v89[0];
                v43 = v89[1];
                *(v41 + 16) = xmmword_1ABF34740;
                *(v41 + 32) = v42;
                v44 = v90;
                *(v41 + 48) = v43;
                *(v41 + 64) = v44;
                *(v41 + 80) = v91;
                *(v41 + 88) = v36;
                *(v41 + 96) = v35;
                *(v41 + 104) = v38;
                *(v41 + 112) = v37;
                *(v41 + 120) = v39;
                v45 = v97;
                v46 = v98;
                v47 = *v99;
                *(v41 + 168) = *&v99[14];
                *(v41 + 154) = v47;
                *(v41 + 138) = v46;
                *(v41 + 122) = v45;
                *(v40 + 72) = v41;

                v48 = sub_1ABF239C4();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v54 = *(v84 + 16);
                  sub_1ABA7BEF0();
                  sub_1ABAD8BA4();
                  v84 = v55;
                }

                v50 = *(v84 + 16);
                v49 = *(v84 + 24);
                v34 = v83;
                if (v50 >= v49 >> 1)
                {
                  sub_1ABA7BBEC(v49);
                  sub_1ABAD8BA4();
                  v84 = v56;
                }

                *(v84 + 16) = v50 + 1;
                v51 = v84 + 112 * v50;
                *(v51 + 32) = 0u;
                *(v51 + 48) = 0u;
                *(v51 + 64) = 0;
                *(v51 + 66) = 4;
                *(v51 + 71) = v86;
                *(v51 + 67) = v85;
                *(v51 + 72) = 0u;
                *(v51 + 88) = 0u;
                *(v51 + 104) = v48;
                v52 = MEMORY[0x1E69E7CC0];
                *(v51 + 112) = MEMORY[0x1E69E7CC0];
                *(v51 + 120) = 0;
                *(v51 + 128) = 0;
                v53 = *v87;
                *(v51 + 132) = *&v87[3];
                *(v51 + 129) = v53;
                *(v51 + 136) = v52;
                if (!v32)
                {
                  break;
                }

                --v32;
                v33 += 88;
              }

              a2 = v68;
              v9 = v72;
            }

            else
            {

              v84 = MEMORY[0x1E69E7CC0];
            }

            *v87 = v88[0];
            v87[4] = BYTE4(v88[0]);
            __dst[0] = v89[0];
            *(__dst + 3) = *(v89 + 3);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v64 = *(v9 + 16);
              sub_1ABA7BEF0();
              sub_1ABAD8BA4();
              v9 = v65;
            }

            v58 = *(v9 + 16);
            v57 = *(v9 + 24);
            v59 = v81;
            v60 = v82;
            if (v58 >= v57 >> 1)
            {
              sub_1ABA7BBEC(v57);
              sub_1ABAD8BA4();
              v60 = v82;
              v59 = v81;
              v9 = v66;
            }

            *(v9 + 16) = v58 + 1;
            v61 = v9 + 112 * v58;
            *(v61 + 32) = v60;
            *(v61 + 40) = v76;
            *(v61 + 48) = v78;
            *(v61 + 56) = v77;
            *(v61 + 64) = v75;
            *(v61 + 66) = BYTE4(v75);
            v62 = v87[4];
            *(v61 + 67) = *v87;
            *(v61 + 71) = v62;
            *(v61 + 72) = 0u;
            *(v61 + 88) = 0u;
            *(v61 + 104) = v74;
            *(v61 + 112) = v84;
            *(v61 + 120) = v14;
            *(v61 + 128) = v59;
            v63 = __dst[0];
            *(v61 + 132) = *(__dst + 3);
            *(v61 + 129) = v63;
            *(v61 + 136) = MEMORY[0x1E69E7CC0];
            v8 = v79;
            a1 = v80;
            v7 = v69;
            v6 = v70;
            goto LABEL_33;
          }

          sub_1ABAA5088();
          v24 = sub_1ABA84398();
          sub_1ABA8882C(v24, v25, v26, v27);
          sub_1ABA90B58();
          BYTE4(v75) = 3;
          v23 = v90;
        }

        else
        {
          sub_1ABAA5088();
          v19 = sub_1ABA84398();
          sub_1ABA91D48(v19, v20, v21, v22);
          sub_1ABA90B58();
          BYTE4(v75) = 2;
          v23 = v90;
        }

        LOWORD(v75) = v23;
        goto LABEL_18;
      }

      v82 = *&v89[0];

      v76 = 0;
      v77 = 0;
      v78 = 0;
      v75 = 0x100000000;
      goto LABEL_18;
    }

    --a1;
LABEL_33:
    if (++v8 == v7)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);

  __break(1u);
  return result;
}

void sub_1ABE44A58(_OWORD *a1@<X8>)
{
  v3 = type metadata accessor for AnswerRenderIterator(0);
  v4 = v3[6];
  v5 = *(*(v1 + v4) + 16);
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = (v1 + v3[8]);
  if (v6[1])
  {
    v7 = 0;
    *v6 = 0;
    *(v6 + 8) = 0;
    goto LABEL_4;
  }

  v10 = *v6;
  if (*v6 >= v5 - 1)
  {
LABEL_11:
    a1[5] = 0u;
    a1[6] = 0u;
    a1[3] = 0u;
    a1[4] = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
    return;
  }

  *(v6 + 8) = 0;
  v7 = v10 + 1;
  *v6 = v10 + 1;
  if (v10 == -1)
  {
    v7 = 0;
  }

  else
  {
    v11 = *(v1 + v3[7]);
    if (v11 != -1 && (!v11 || v7 % v11))
    {
      goto LABEL_5;
    }
  }

LABEL_4:
  sub_1ABE44B9C();
LABEL_5:
  if (v7 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = *(v1 + v4);
    if (v7 < *(v8 + 16))
    {
      v9 = v8 + 112 * v7;
      memcpy(__dst, (v9 + 32), sizeof(__dst));
      memcpy(a1, (v9 + 32), 0x70uLL);
      sub_1ABAE441C(__dst, &v12);
      return;
    }
  }

  __break(1u);
}

void sub_1ABE44B9C()
{
  v3 = type metadata accessor for AnswerRenderIterator(0);
  v4 = sub_1ABA7BBB0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7BC58();
  v267 = v9 - v8;
  v10 = (v0 + v7[8]);
  if (v10[1])
  {
    return;
  }

  v11 = *v10;
  v12 = *(v0 + v7[7]);
  v251 = v11;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_234:
    __break(1u);
    goto LABEL_235;
  }

  v258 = v7[6];
  v2 = *(v0 + v258);
  if (v2[2] < v14)
  {
    v14 = v2[2];
  }

  v15 = v14 - 1;
  if (__OFSUB__(v14, 1))
  {
LABEL_235:
    __break(1u);
LABEL_236:
    __break(1u);
    goto LABEL_237;
  }

  v260 = v7;
  sub_1ABAD219C(&qword_1EB4D92F8, &unk_1ABF5FD60);
  v243 = sub_1ABF239C4();
  v259 = v0;
  v16 = *(v0 + v260[9]);
  v17 = *(v16 + 16);
  v249 = v16;
  v250 = v2;
  v18 = (v16 + 32);
  v248 = v16 + 32;
  while (1)
  {
    if (!v17)
    {
      if (*(v0 + *(type metadata accessor for QueryContext() + 56)))
      {
        goto LABEL_33;
      }

      if (v15 >= v251)
      {
        if (!__OFADD__(v15, 1))
        {
          sub_1ABDF015C(v251, v15 + 1, v2);
          v20 = v19;
          v22 = v21 >> 1;
          v23 = MEMORY[0x1E69E7CC0];
          v2 = (v24 + 112 * v19);
          while (v22 != v20)
          {
            if (v20 >= v22)
            {
              goto LABEL_218;
            }

            memcpy(v303, v2, 0x70uLL);
            v25 = v303[0];
            v26 = 0xE000000000000000;
            v27 = 0;
            switch(BYTE2(v303[2]))
            {
              case 1:
                v28 = 3826797;
                if ((*&v303[0] & 0x80000000000000) == 0)
                {
                  v28 = 3828069;
                }

                *&v301[0] = v28;
                *(&v301[0] + 1) = 0xE300000000000000;
                __dst[0] = *&v303[0];
                sub_1ABAE441C(v303, v302);
                v29 = sub_1ABF24FF4();
                MEMORY[0x1AC5A9410](v29);

                sub_1ABC6D404(v303);
                v27 = *&v301[0];
                v26 = 0xE300000000000000;
                break;
              case 2:
              case 3:

                goto LABEL_26;
              case 4:
                break;
              default:
                sub_1ABAE4358(*&v303[0], *(&v303[0] + 1), *&v303[1], *(&v303[1] + 1), LOWORD(v303[2]), 0);
LABEL_26:
                v26 = *(&v25 + 1);
                v27 = v25;
                break;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v33 = *(v23 + 16);
              sub_1ABA7BEF0();
              sub_1ABAAA4F4();
              v23 = v34;
            }

            v31 = *(v23 + 16);
            v30 = *(v23 + 24);
            if (v31 >= v30 >> 1)
            {
              sub_1ABA7BBEC(v30);
              sub_1ABAAA4F4();
              v23 = v35;
            }

            *(v23 + 16) = v31 + 1;
            v32 = v23 + 16 * v31;
            *(v32 + 32) = v27;
            *(v32 + 40) = v26;
            v2 += 14;
            ++v20;
          }

LABEL_169:
          swift_unknownObjectRelease();
          v184 = sub_1ABE8AE5C(v23);
          LOBYTE(v302[0]) = 0;
          v302[1] = v184;
          LOBYTE(v302[2]) = 0;
          v302[3] = 0;
          LOBYTE(v302[4]) = 0;
          v302[5] = 0;
          LOBYTE(v302[6]) = 0;
          v302[7] = 0;
          LOBYTE(v302[8]) = 0;
          v302[9] = 0;
          *&v303[0] = v302[0];
          *(&v303[0] + 1) = v184;
          v303[1] = v302[2];
          v303[2] = v302[4];
          v303[3] = v302[6];
          v303[4] = v302[8];
          *(&v303[5] + 1) = 0;
          BYTE8(v303[6]) = 32;
          v111 = sub_1ABE46684(v303);
          v2 = 0;
LABEL_177:
          v243 = v111;
          v247 = v2;
          sub_1ABB420A4(v302);
          v2 = v250;
          goto LABEL_34;
        }

        goto LABEL_245;
      }

LABEL_244:
      __break(1u);
LABEL_245:
      __break(1u);
      sub_1ABA7D0C4();
      swift_once();
      v185 = sub_1ABF237F4();
      sub_1ABA7AA24(v185, qword_1ED86E460);
      v186 = v2;
      v187 = sub_1ABF237D4();
      v188 = sub_1ABF24664();

      if (os_log_type_enabled(v187, v188))
      {
        v189 = swift_slowAlloc();
        v190 = sub_1ABA82874();
        *&v303[0] = v190;
        *v189 = 136315138;
        *&v301[0] = v2;
        v191 = v2;
        sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
        v192 = sub_1ABF23C74();
        sub_1ABADD6D8(v192, v193, v303);
        v194 = v2;
        sub_1ABAA5AAC();

        *(v189 + 4) = v2;
        sub_1ABAA5504(&dword_1ABA78000, v195, v196, "KGRenderer: getEntityFacts failed: %s");
        sub_1ABA84B54(v190);
        sub_1ABA7BC34();
        sub_1ABA7BC34();
LABEL_182:

        return;
      }

      v207 = v2;
LABEL_185:

      return;
    }

    if (*v18)
    {
      break;
    }

    sub_1ABAA61E0();
LABEL_12:
    sub_1ABA81C38();
    sub_1ABAA4578();
    ++v18;
    --v17;
    if (v1)
    {
      goto LABEL_33;
    }
  }

  if (*v18 == 2)
  {
    goto LABEL_12;
  }

  sub_1ABA97DA8();

LABEL_33:
  v247 = 0;
LABEL_34:
  sub_1ABB668FC();
  sub_1ABF239C4();
  v36 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v36 setTimeStyle_];
  [v36 setDateStyle_];
  v37 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v37 setTimeStyle_];
  [v37 setDateStyle_];
  v38 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  [v38 setUnitsStyle_];
  [v38 setMaximumUnitCount_];
  v39 = sub_1ABF217F4();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  v242 = sub_1ABF217E4();
  v246 = *(v259 + *(type metadata accessor for QueryContext() + 56));
  v244 = v37;
  v245 = v36;
  v252 = v38;
  if (v246 != 1)
  {
    v257 = v15 + 1;
    v50 = __OFADD__(v15, 1);
    v51 = v36;
    v52 = v37;
    v53 = v38;
    if (v50)
    {
      goto LABEL_239;
    }

    goto LABEL_45;
  }

  if (v15 < v251)
  {
    goto LABEL_241;
  }

  if (__OFADD__(v15, 1))
  {
LABEL_242:
    __break(1u);
LABEL_243:
    __break(1u);
    goto LABEL_244;
  }

  v257 = v15 + 1;
  LOBYTE(v37) = sub_1ABDF015C(v251, v15 + 1, v2);
  v43 = v42;
  v45 = v44;
  *&v301[0] = MEMORY[0x1E69E7CC0];
  v47 = v46 >> 1;
  v238 = v245;
  v237 = v244;
  v236 = v252;
  v48 = (v43 + 112 * v45);
  while (v47 != v45)
  {
    if (v45 >= v47)
    {
      __break(1u);
LABEL_214:
      __break(1u);
LABEL_215:
      __break(1u);
LABEL_216:
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      __break(1u);
LABEL_219:
      __break(1u);
LABEL_220:
      __break(1u);
LABEL_221:
      __break(1u);
LABEL_222:
      __break(1u);
LABEL_223:
      __break(1u);
LABEL_224:
      __break(1u);
      goto LABEL_225;
    }

    memcpy(v303, v48, 0x70uLL);
    ++v45;
    memcpy(v302, v303, 0x70uLL);
    sub_1ABD86AC4();
    sub_1ABD7DCE0(v49);
    v48 += 112;
  }

  swift_unknownObjectRelease();
  v56 = sub_1ABE8AC38(*&v301[0]);
  sub_1ABD630B4();
  v239 = v57;
  sub_1ABDF015C(v251, v257, v2);
  v305[0] = MEMORY[0x1E69E7CC0];
  v61 = v60 >> 1;
  v253 = v58;
  v255 = v56;
  v240 = v60 >> 1;
LABEL_49:
  if (v59 != v61)
  {
    if (v59 < v61)
    {
      v62 = v59;
      memcpy(__dst, (v58 + 112 * v59), 0x70uLL);
      v261 = v62 + 1;
      v63 = __dst[10];
      v268 = *(__dst[10] + 16);
      sub_1ABAE441C(__dst, v303);
      v64 = 0;
      v265 = v63;
      v2 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v271 = v2;
        if (v64 == v268)
        {
          break;
        }

        sub_1ABC43DF0(v64, 1, v265);
        sub_1ABAA4B70(v302);
        sub_1ABAA4B70(v301);
        sub_1ABAE441C(v302, v303);
        sub_1ABD7D6C8();
        v66 = v65;
        v67 = 0;
        v294 = *(v65 + 16);
        v282 = MEMORY[0x1E69E7CC0];
        v288 = v65;
LABEL_54:
        v68 = 144 * v67 + 32;
        while (v294 != v67)
        {
          v69 = *(v66 + 16);
          if (v67 >= v69)
          {
            __break(1u);
            goto LABEL_173;
          }

          v70 = v67;
          memcpy(v303, (v66 + v68), sizeof(v303));
          KnosisFact.splitSubentityIdentifier()(v316);
          v71 = v316[0];
          v72 = v316[1];
          v73 = *&v316[2];
          v74 = WORD4(v316[2]);
          v75 = *&v316[3];
          if (*&v316[1])
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v81 = *(v282 + 16);
              sub_1ABA7BEF0();
              sub_1ABAD8E08();
              v282 = v82;
            }

            v77 = *(v282 + 16);
            v76 = *(v282 + 24);
            v78 = v77 + 1;
            if (v77 >= v76 >> 1)
            {
              sub_1ABA7BBEC(v76);
              v263 = v83;
              sub_1ABAD8E08();
              v78 = v263;
              v79 = v70;
              v282 = v84;
            }

            else
            {
              v79 = v70;
            }

            v67 = v79 + 1;
            *(v282 + 16) = v78;
            v80 = v282 + 56 * v77;
            *(v80 + 32) = v71;
            *(v80 + 48) = v72;
            *(v80 + 64) = v73;
            *(v80 + 72) = v74;
            *(v80 + 80) = v75;
            v66 = v288;
            goto LABEL_54;
          }

          sub_1ABD0DCB0(*&v316[0], *(&v316[0] + 1), 0);
          v68 += 144;
          v67 = v70 + 1;
          v66 = v288;
        }

        sub_1ABC6D404(v302);

        v85 = *(v282 + 16);
        v2 = v271;
        v37 = v271[2];
        if (__OFADD__(v37, v85))
        {
          goto LABEL_214;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || (v86 = v271[3] >> 1, v86 < v37 + v85))
        {
          sub_1ABAD8E08();
          v2 = v87;
          v86 = v87[3] >> 1;
        }

        ++v64;
        if (!*(v282 + 16))
        {

          if (!v85)
          {
            continue;
          }

          goto LABEL_216;
        }

        v88 = v2[2];
        if (v86 - v88 < v85)
        {
          goto LABEL_217;
        }

        LOBYTE(v37) = v2 + 56 * v88;
        sub_1ABAD219C(&qword_1EB4D1A68, &unk_1ABF6BE10);
        swift_arrayInitWithCopy();

        if (v85)
        {
          v89 = v2[2];
          v13 = __OFADD__(v89, v85);
          v90 = v89 + v85;
          if (v13)
          {
            goto LABEL_221;
          }

          v2[2] = v90;
        }
      }

      v91 = 0;
      v295 = v2[2];
      v92 = v2 + 9;
      v275 = MEMORY[0x1E69E7CC0];
      while (v295 != v91)
      {
        if (v91 >= v2[2])
        {
          goto LABEL_215;
        }

        v94 = *(v92 - 4);
        v93 = *(v92 - 3);
        v95 = *(v92 - 2);
        v37 = *(v92 - 1);
        v96 = *v92;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v100 = *(v275 + 16);
          sub_1ABA7BEF0();
          sub_1ABAD8B6C();
          v275 = v101;
        }

        v98 = *(v275 + 16);
        v97 = *(v275 + 24);
        if (v98 >= v97 >> 1)
        {
          sub_1ABA7BBEC(v97);
          sub_1ABAD8B6C();
          v275 = v102;
        }

        *(v275 + 16) = v98 + 1;
        v99 = v275 + 40 * v98;
        *(v99 + 32) = v94;
        *(v99 + 40) = v93;
        *(v99 + 48) = v95;
        *(v99 + 56) = v37;
        *(v99 + 64) = v96;
        v92 += 28;
        ++v91;
        v2 = v271;
      }

      v103 = 0;
      v104 = MEMORY[0x1E69E7CC0];
      while (1)
      {
LABEL_85:
        if (v103 == v268)
        {
          *&v303[0] = v104;
          sub_1ABD7DC38(v275);
          sub_1ABC6D404(__dst);
          sub_1ABD7DC38(*&v303[0]);
          v2 = v250;
          v58 = v253;
          v56 = v255;
          v59 = v261;
          v61 = v240;
          goto LABEL_49;
        }

        v272 = v104;
        sub_1ABC43DF0(v103, 1, v265);
        sub_1ABAA4B70(v316);
        v105 = v103 + 1;
        sub_1ABAA4B70(v306);
        sub_1ABAE441C(v316, v303);
        sub_1ABD7D6C8();
        v2 = v106;
        v107 = 0;
        v108 = v106[2];
        v109 = MEMORY[0x1E69E7CC0];
LABEL_87:
        v110 = 144 * v107 + 32;
        while (v108 != v107)
        {
          sub_1ABC43DF0(v107, 1, v2);
          v111 = memcpy(v303, v2 + v110, sizeof(v303));
          v15 = v107 + 1;
          if (__OFADD__(v107, 1))
          {
            __break(1u);
LABEL_176:
            __break(1u);
            goto LABEL_177;
          }

          memcpy(v302, v2 + v110, sizeof(v302));
          sub_1ABAE42A8(v303, v301);
          KnosisFact.allQualifiers.getter();
          v113 = *(v112 + 16);

          if (v113)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v304 = v109;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1ABADDDBC(0, *(v109 + 16) + 1, 1);
              v109 = v304;
            }

            v116 = *(v109 + 16);
            v115 = *(v109 + 24);
            if (v116 >= v115 >> 1)
            {
              v117 = sub_1ABA7BBEC(v115);
              sub_1ABADDDBC(v117, v116 + 1, 1);
              v109 = v304;
            }

            *(v109 + 16) = v116 + 1;
            memcpy((v109 + 144 * v116 + 32), v303, 0x90uLL);
            ++v107;
            goto LABEL_87;
          }

          sub_1ABAE4304(v303);
          ++v107;
          v110 += 144;
        }

        v264 = v105;

        v15 = 0;
        v289 = *(v109 + 16);
        v118 = (v109 + 120);
        v119 = MEMORY[0x1E69E7CC0];
        v283 = v109;
        while (v289 != v15)
        {
          if (v15 >= *(v109 + 16))
          {
            goto LABEL_176;
          }

          v121 = *(v118 - 4);
          v120 = *(v118 - 3);
          v123 = *(v118 - 2);
          v122 = *(v118 - 1);
          v124 = *v118;

          v111 = swift_isUniquelyReferenced_nonNull_native();
          v296 = v124;
          if ((v111 & 1) == 0)
          {
            v128 = *(v119 + 16);
            sub_1ABA7BEF0();
            sub_1ABAD8B6C();
            v119 = v111;
          }

          v126 = *(v119 + 16);
          v125 = *(v119 + 24);
          v2 = (v126 + 1);
          if (v126 >= v125 >> 1)
          {
            sub_1ABA7BBEC(v125);
            sub_1ABAD8B6C();
            v119 = v111;
          }

          *(v119 + 16) = v2;
          v127 = v119 + 40 * v126;
          *(v127 + 32) = v121;
          *(v127 + 40) = v120;
          *(v127 + 48) = v123;
          *(v127 + 56) = v122;
          *(v127 + 64) = v296;
          v118 += 72;
          ++v15;
          v109 = v283;
        }

        sub_1ABC6D404(v316);

        v37 = *(v119 + 16);
        v104 = v272;
        v129 = *(v272 + 16);
        if (__OFADD__(v129, v37))
        {
          goto LABEL_219;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || (v130 = *(v272 + 24) >> 1, v130 < v129 + v37))
        {
          sub_1ABAD8B6C();
          v104 = v131;
          v130 = *(v131 + 24) >> 1;
        }

        v103 = v264;
        if (!*(v119 + 16))
        {
          break;
        }

        if (v130 - *(v104 + 16) < v37)
        {
          goto LABEL_227;
        }

        swift_arrayInitWithCopy();

        if (v37)
        {
          v132 = *(v104 + 16);
          v13 = __OFADD__(v132, v37);
          v133 = v132 + v37;
          if (v13)
          {
            goto LABEL_228;
          }

          *(v104 + 16) = v133;
        }
      }

      if (!v37)
      {
        goto LABEL_85;
      }

      goto LABEL_220;
    }

LABEL_237:
    __break(1u);
LABEL_238:
    __break(1u);
LABEL_239:
    __break(1u);
LABEL_240:
    __break(1u);
LABEL_241:
    __break(1u);
    goto LABEL_242;
  }

  swift_unknownObjectRelease();
  v208 = sub_1ABD91E50(v305[0], v239);
  if (*(v56 + 16))
  {

    LOBYTE(v302[0]) = 0;
    v302[1] = v56;
    v302[2] = 0;
    LOBYTE(v302[3]) = 0;
    v302[4] = v208;
    LOBYTE(v302[5]) = 0;
    v302[6] = 0;
    LOBYTE(v302[7]) = 0;
    v302[8] = 0;
    LOBYTE(v302[9]) = 0;
    v302[10] = v208;
    LOBYTE(v302[11]) = 0;
    v302[12] = 0;
    LOBYTE(v302[13]) = 1;
    *&v303[0] = v302[0];
    *(&v303[0] + 1) = v56;
    v303[1] = __PAIR128__(v302[3], 0);
    v303[2] = __PAIR128__(v302[5], v208);
    v303[3] = __PAIR128__(v302[7], 0);
    v303[4] = __PAIR128__(v302[9], 0);
    v303[5] = v208;
    *&v303[6] = 0;
    BYTE8(v303[6]) = 65;
    LOBYTE(v301[0]) = 6;

    v209 = sub_1ABE4690C(v303, v301);
    sub_1ABE47224(v302);
    *&v301[0] = MEMORY[0x1E69E7CC0];
    v210 = v209 + 64;
    v211 = 1 << *(v209 + 32);
    v212 = -1;
    if (v211 < 64)
    {
      v212 = ~(-1 << v211);
    }

    v213 = v212 & *(v209 + 64);
    v214 = (v211 + 63) >> 6;
    v243 = v209;

    v215 = 0;
    v277 = v214;
    v281 = v209 + 64;
    if (v213)
    {
      while (1)
      {
        v216 = v215;
LABEL_195:
        v300 = (v213 - 1) & v213;
        v293 = v216;
        v217 = __clz(__rbit64(v213)) | (v216 << 6);
        v218 = *(*(v243 + 56) + 8 * v217);
        v219 = *(v218 + 16);
        v287 = *(*(v243 + 48) + 16 * v217 + 8);

        v220 = 0;
        v221 = 32;
        v2 = MEMORY[0x1E69E7CC0];
        while (v219 != v220)
        {
          if (v220 >= *(v218 + 16))
          {
            goto LABEL_231;
          }

          memcpy(v303, (v218 + v221), sizeof(v303));
          KnosisFact.extendedTriples()();
          v223 = *(v222 + 16);
          v224 = v2[2];
          if (__OFADD__(v224, v223))
          {
            goto LABEL_232;
          }

          v225 = v222;
          if (!swift_isUniquelyReferenced_nonNull_native() || (v226 = v2[3] >> 1, v226 < v224 + v223))
          {
            sub_1ABAD89DC();
            v2 = v227;
            v226 = v227[3] >> 1;
          }

          if (*(v225 + 16))
          {
            if (v226 - v2[2] < v223)
            {
              goto LABEL_236;
            }

            swift_arrayInitWithCopy();

            if (v223)
            {
              v228 = v2[2];
              v13 = __OFADD__(v228, v223);
              v229 = v228 + v223;
              if (v13)
              {
                goto LABEL_238;
              }

              v2[2] = v229;
            }
          }

          else
          {

            if (v223)
            {
              goto LABEL_233;
            }
          }

          v221 += 144;
          ++v220;
        }

        sub_1ABD7DB90(v2);
        v215 = v293;
        v2 = v250;
        v214 = v277;
        v210 = v281;
        v213 = v300;
        if (!v300)
        {
          goto LABEL_192;
        }
      }
    }

    while (1)
    {
LABEL_192:
      v216 = v215 + 1;
      if (__OFADD__(v215, 1))
      {
        goto LABEL_243;
      }

      if (v216 >= v214)
      {
        break;
      }

      v213 = *(v210 + 8 * v216);
      ++v215;
      if (v213)
      {
        goto LABEL_195;
      }
    }

    v230 = sub_1ABE43280(v241);
    v231 = sub_1ABAD219C(&qword_1EB4D9510, &unk_1ABF60F20);
    swift_allocObject();
    v232 = sub_1ABAE6998(v230);
    *(&v303[1] + 1) = v231;
    *&v303[2] = sub_1ABAB47C4(&qword_1EB4DAFD0, &qword_1EB4D9510, &unk_1ABF60F20);
    *&v303[0] = v232;
    type metadata accessor for K2TInProcessService();
    v37 = swift_allocObject();
    sub_1ABA946C0(v303, v37 + 16);
    *(v37 + 56) = v242;
    *(v37 + 64) = v238;
    *(v37 + 72) = v237;
    *(v37 + 80) = v236;

    v233 = v238;
    v234 = v237;
    v235 = v236;
    sub_1ABE47580(v255);
  }

  else
  {
  }

LABEL_45:
  v54 = v251;
  if (v257 < v251)
  {
    goto LABEL_240;
  }

  if (v251 == v257)
  {
    v55 = v252;
    goto LABEL_174;
  }

  while (2)
  {
    if (v54 >= v257)
    {
      goto LABEL_222;
    }

    v15 = v54 + 1;
    v23 = v248;
    v134 = *(v249 + 16);
    while (2)
    {
      if (!v134)
      {
        sub_1ABA8E4AC();
        v135 = &v2[14 * v54];
        v137 = v135[4];
        v136 = v135[5];
        v138 = 0xE000000000000000;
        v139 = 0;
        switch(*(v135 + 66))
        {
          case 1:
            *&v303[0] = v135[4];
            v139 = EntityIdentifier.stringValue.getter();
            v138 = v141;
            break;
          case 4:
            break;
          default:
            v140 = v135[5];

            v139 = v137;
            v138 = v136;
            break;
        }

        v142 = sub_1ABAE3058(v139, v138, v243);

        if (v142)
        {
          v143 = v142;
        }

        else
        {
          v143 = MEMORY[0x1E69E7CC0];
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if ((v54 & 0x8000000000000000) == 0)
          {
LABEL_135:
            if (v54 >= v2[2])
            {
              goto LABEL_230;
            }

            sub_1ABD88954(v143);
            goto LABEL_137;
          }
        }

        else
        {
          sub_1ABD8EE54(v2);
          v2 = v183;
          if ((v54 & 0x8000000000000000) == 0)
          {
            goto LABEL_135;
          }
        }

        __break(1u);
        goto LABEL_169;
      }

      if (!*v23)
      {
        sub_1ABAA61E0();
        goto LABEL_124;
      }

      if (*v23 == 2)
      {
LABEL_124:
        sub_1ABA81C38();
        sub_1ABAA4578();
        ++v23;
        --v134;
        if (v37)
        {
          goto LABEL_138;
        }

        continue;
      }

      break;
    }

    sub_1ABA97DA8();
LABEL_137:

LABEL_138:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABD8EE54(v2);
      v2 = v180;
    }

    if (v251 < 0)
    {
      goto LABEL_223;
    }

    if (v54 >= v2[2])
    {
      goto LABEL_224;
    }

    sub_1ABD88238();
    sub_1ABA8E4AC();
    memcpy(v302, &v2[14 * v54 + 4], 0x70uLL);
    memcpy(v301, v302, 0x70uLL);
    sub_1ABAE441C(v302, __dst);
    sub_1ABD866BC();
    v145 = v144;
    memcpy(v303, v301, 0x70uLL);
    sub_1ABC6D404(v303);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABD8EE54(v2);
      v2 = v181;
    }

    if (v54 >= v2[2])
    {
LABEL_225:
      __break(1u);
      goto LABEL_226;
    }

    v256 = v54 + 1;
    v146 = &v2[14 * v54];
    v147 = v146[17];
    v146[17] = v145;

    *(v259 + v258) = v2;
    sub_1ABA7F9B0();
    sub_1ABE4716C(v148, v267, v149);
    v254 = v54;
    sub_1ABA8E4AC();
    memcpy(v301, v146 + 4, 0x70uLL);
    v150 = *(&v301[6] + 1);
    v151 = LOBYTE(v301[6]);
    v152 = *(&v301[5] + 1);
    v153 = *(&v301[4] + 1);
    v154 = *&v301[5];
    v290 = *(&v301[2] + 8);
    v297 = *(&v301[3] + 8);
    v278 = v301[0];
    v284 = v301[1];
    v155 = v301[2];
    v156 = BYTE2(v301[2]);
    v157 = *(v267 + v260[9]);
    v158 = *(v157 + 16);
    if (v158)
    {
      v250 = v2;
      sub_1ABAE441C(v301, __dst);
      sub_1ABAE441C(v301, __dst);
      if (qword_1EB4D0248 != -1)
      {
        sub_1ABA939C8();
        swift_once();
      }

      v159 = (v157 + 32);
      v160 = qword_1EB5495C0;
      v162 = v290;
      v161 = v297;
      v164 = v278;
      v163 = v284;
      do
      {
        v165 = *v159++;
        if (*(v160 + 16))
        {
          v166 = v160;
          v291 = v162;
          v298 = v161;
          v279 = v164;
          v285 = v163;
          v276 = v159;
          v167 = sub_1ABAF8268();
          v159 = v276;
          v160 = v166;
          v164 = v279;
          v163 = v285;
          v162 = v291;
          v161 = v298;
          if (v168)
          {
            v316[0] = v279;
            v316[1] = v285;
            LOWORD(v316[2]) = v155;
            BYTE2(v316[2]) = v156;
            *(&v316[2] + 8) = v291;
            *(&v316[3] + 8) = v298;
            *(&v316[4] + 1) = v153;
            *&v316[5] = v154;
            *(&v316[5] + 1) = v152;
            LOBYTE(v316[6]) = v151;
            *(&v316[6] + 1) = v150;
            sub_1ABA93E64(*(v166 + 56) + 40 * v167, v317);
            sub_1ABA946C0(v317, v318);
            v269 = v156;
            v169 = v319;
            v266 = v151;
            v170 = v320;
            sub_1ABA93E20(v318, v319);
            memcpy(v305, v316, sizeof(v305));
            v273 = v153;
            v171 = *(v267 + v260[5]);
            v262 = v154;
            v172 = *(v170 + 8);
            sub_1ABAE441C(v316, &v304);
            v172(v306, v305, v267, v171, v169, v170);
            memcpy(__dst, v305, 0x70uLL);
            sub_1ABC6D404(__dst);
            v173 = v311;
            if (v311)
            {
              v150 = v315;
              v151 = v314;
              v152 = v313;
              v154 = v312;
              v292 = v309;
              v299 = v310;
              v156 = v308;
              v155 = v307;
              v280 = v306[0];
              v286 = v306[1];
              sub_1ABC6D404(v316);
              sub_1ABA84B54(v318);
              v164 = v280;
              v163 = v286;
              v162 = v292;
              v161 = v299;
              v153 = v173;
            }

            else
            {
              sub_1ABA84B54(v318);
              v154 = v262;
              v151 = v266;
              v162 = v291;
              v161 = v298;
              v156 = v269;
              v153 = v273;
              v164 = v279;
              v163 = v285;
            }

            v160 = v166;
            v159 = v276;
          }
        }

        --v158;
      }

      while (v158);
      v278 = v164;
      v284 = v163;
      v274 = v153;
      v174 = v155;
      v270 = v156;
      v290 = v162;
      v297 = v161;
      sub_1ABC6D404(v301);
      v2 = v250;
    }

    else
    {
      v274 = *(&v301[4] + 1);
      v174 = v301[2];
      v270 = BYTE2(v301[2]);
      sub_1ABAE441C(v301, __dst);
    }

    sub_1ABA7DF8C();
    sub_1ABE471CC(v267, v175);
    v176 = v2;
    LOBYTE(v37) = v254;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABD8EE54(v2);
      v176 = v182;
    }

    if (v254 >= v176[2])
    {
LABEL_226:
      __break(1u);
LABEL_227:
      __break(1u);
LABEL_228:
      __break(1u);
LABEL_229:
      __break(1u);
LABEL_230:
      __break(1u);
LABEL_231:
      __break(1u);
LABEL_232:
      __break(1u);
LABEL_233:
      __break(1u);
      goto LABEL_234;
    }

    v2 = v176;
    v177 = &v176[14 * v254];
    memcpy(__dst, v177 + 4, 0x70uLL);
    *(v177 + 2) = v278;
    *(v177 + 3) = v284;
    *(v177 + 32) = v174;
    *(v177 + 66) = v270;
    v178 = BYTE4(v304);
    *(v177 + 67) = v304;
    *(v177 + 71) = v178;
    *(v177 + 11) = v297;
    *(v177 + 9) = v290;
    v177[13] = v274;
    v177[14] = v154;
    v177[15] = v152;
    *(v177 + 128) = v151;
    v179 = *(v305 + 3);
    *(v177 + 129) = v305[0];
    *(v177 + 33) = v179;
    v177[17] = v150;
    sub_1ABC6D404(__dst);
    *(v259 + v258) = v2;
    if (!v246)
    {
      goto LABEL_165;
    }

    *&v316[0] = v242;
    *(&v316[0] + 1) = v245;
    *&v316[1] = v244;
    *(&v316[1] + 1) = v252;
    if (v254 >= v2[2])
    {
      goto LABEL_229;
    }

    LOBYTE(v37) = v247;
    sub_1ABD8728C();
    if (v247)
    {

      *(v259 + v258) = v2;
      if (qword_1ED86E458 != -1)
      {
        sub_1ABA7D0C4();
        swift_once();
      }

      v197 = sub_1ABF237F4();
      sub_1ABA7AA24(v197, qword_1ED86E460);
      v194 = v247;
      v198 = v247;
      v187 = sub_1ABF237D4();
      v199 = sub_1ABF24664();

      if (os_log_type_enabled(v187, v199))
      {
        v200 = swift_slowAlloc();
        v201 = sub_1ABA82874();
        *&v316[0] = v201;
        *v200 = 136315138;
        *&v306[0] = v247;
        v202 = v247;
        sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
        v203 = sub_1ABF23C74();
        sub_1ABADD6D8(v203, v204, v316);
        sub_1ABAA5AAC();

        *(v200 + 4) = v2;
        sub_1ABAA5504(&dword_1ABA78000, v205, v206, "KGRenderer: textualizing answer failed: %s");
        sub_1ABA84B54(v201);
        sub_1ABA7BC34();
        sub_1ABA7BC34();

        goto LABEL_182;
      }

      v207 = v247;
      goto LABEL_185;
    }

    *(v259 + v258) = v2;
LABEL_165:
    v69 = v252;
    if (v256 != v257)
    {
      v54 = v256;
      continue;
    }

    break;
  }

LABEL_173:
  v55 = v69;
LABEL_174:
}

uint64_t sub_1ABE46684(const void *a1)
{
  LOBYTE(v36) = 6;
  v3 = sub_1ABE4690C(a1, &v36);
  v4 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = v4;
  sub_1ABE47278(v3, sub_1ABE4753C, 0, isUniquelyReferenced_nonNull_native, &v36);
  v6 = v36;
  LOBYTE(v36) = 4;
  sub_1ABE4690C(a1, &v36);
  sub_1ABAA5AAC();
  v7 = swift_isUniquelyReferenced_nonNull_native();
  v36 = v6;
  sub_1ABE47278(v1, sub_1ABE4753C, 0, v7, &v36);
  v8 = v36;
  LOBYTE(v36) = 7;
  v9 = sub_1ABE4690C(a1, &v36);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  v36 = v8;
  sub_1ABE47278(v9, sub_1ABE4753C, 0, v10, &v36);
  v11 = v36;
  sub_1ABAD219C(&qword_1EB4D5728, &qword_1ABF6BE20);
  result = sub_1ABF24D24();
  v13 = result;
  v14 = 0;
  v34 = result;
  v35 = v11;
  v15 = 1 << *(v11 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v11 + 64;
  v18 = v16 & *(v11 + 64);
  v19 = (v15 + 63) >> 6;
  v33 = result + 64;
  if (v18)
  {
    while (1)
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_10:
      v23 = v20 | (v14 << 6);
      v24 = (*(v35 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v35 + 56) + 8 * v23);
      swift_bridgeObjectRetain_n();

      sub_1ABE8AD8C(v27);
      sub_1ABB454B0(v28);
      sub_1ABAA5AAC();

      v13 = v34;
      *(v33 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v29 = (v34[6] + 16 * v23);
      *v29 = v25;
      v29[1] = v26;
      *(v34[7] + 8 * v23) = v1;
      v30 = v34[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        break;
      }

      v34[2] = v32;
      if (!v18)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        return v13;
      }

      v22 = *(v17 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABE46BF8(char *a1, const void *a2)
{
  v3 = v2;
  v4 = *a1;
  sub_1ABAD219C(&qword_1EB4D92F8, &unk_1ABF5FD60);
  v5 = MEMORY[0x1E69E7CC0];
  v6 = sub_1ABF239C4();
  Context = type metadata accessor for QueryContext();
  v8 = (v3 + *(Context + 44));
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v8 + 16);
  v12 = v8[3];
  v66[0] = *(v3 + *(Context + 36));
  LOBYTE(v65[0]) = v4;
  v65[1] = -50;
  v65[2] = v5;
  v65[3] = v9;
  v65[4] = v10;
  LOBYTE(v65[5]) = v11;
  v65[6] = v12;
  memcpy(__dst, a2, 0x69uLL);
  v13 = sub_1ABA996B8();
  sub_1ABB3F4DC(v13, v14, v15);

  v16 = v69;
  sub_1ABD25C88(v65, __dst, v68);
  if (v16)
  {

    v17 = sub_1ABA996B8();
    sub_1ABB3F860(v17, v18, v19);

    return v6;
  }

  v62 = v3;

  v21 = sub_1ABA996B8();
  sub_1ABB3F860(v21, v22, v23);

  v24 = v68[0];
  if (!v68[0])
  {

    return v6;
  }

  v69 = 0;

  __src = 0;
  v25 = 0;
  v60 = v24 + 32;
  v61 = *(v24 + 16);
  v26 = v3;
  v59 = v24;
  while (1)
  {
    if (v25 == v61)
    {

      sub_1ABAC9398(__src);
      return v6;
    }

    if (v25 >= *(v24 + 16))
    {
      break;
    }

    memcpy(v68, (v60 + 88 * v25), 0x58uLL);
    memcpy(v66, (v60 + 88 * v25), sizeof(v66));
    sub_1ABB242A4(v68, v65);
    sub_1ABB242A4(v68, v65);
    v27 = v69;
    sub_1ABD8B724();
    v69 = v27;
    if (v27)
    {
      sub_1ABB24250(v68);

      sub_1ABAC9398(__src);
      return v6;
    }

    ++v25;
    memcpy(v65, __dst, sizeof(v65));
    v28 = *(v26 + *(type metadata accessor for AnswerRenderIterator(0) + 20));
    if (*(v28 + 16))
    {
      v30 = v65[7];
      v29 = v65[8];
      v31 = *(v28 + 40);
      sub_1ABF25234();

      sub_1ABF23D34();
      v32 = sub_1ABF25294();
      v33 = ~(-1 << *(v28 + 32));
      while (1)
      {
        v34 = v32 & v33;
        if (((*(v28 + 56 + (((v32 & v33) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v32 & v33)) & 1) == 0)
        {
          break;
        }

        v35 = (*(v28 + 48) + 40 * v34);
        if (*v35 != v30 || v35[1] != v29)
        {
          v37 = sub_1ABF25054();
          v32 = v34 + 1;
          if ((v37 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_18;
      }

      sub_1ABB24250(v68);
      sub_1ABAE4304(v65);

      v26 = v62;
      v24 = v59;
    }

    else
    {
LABEL_18:
      v39 = v68[3];
      v38 = v68[4];

      sub_1ABAC9398(__src);
      swift_isUniquelyReferenced_nonNull_native();
      v40 = sub_1ABA94FC8(v39, v38);
      if (__OFADD__(v6[2], (v41 & 1) == 0))
      {
        goto LABEL_36;
      }

      v42 = v40;
      v43 = v41;
      sub_1ABAD219C(&qword_1EB4DAFD8, &qword_1ABF6BE28);
      if (sub_1ABF24C64())
      {
        v44 = sub_1ABA94FC8(v39, v38);
        if ((v43 & 1) != (v45 & 1))
        {
          goto LABEL_38;
        }

        v42 = v44;
      }

      if (v43)
      {
      }

      else
      {
        sub_1ABA7D110(&v6[v42 >> 6]);
        v46 = (v6[6] + 16 * v42);
        *v46 = v39;
        v46[1] = v38;
        *(v6[7] + 8 * v42) = MEMORY[0x1E69E7CC0];
        v47 = v6[2];
        v48 = __OFADD__(v47, 1);
        v49 = v47 + 1;
        if (v48)
        {
          goto LABEL_37;
        }

        v6[2] = v49;
      }

      v50 = v6[7];
      v51 = *(v50 + 8 * v42);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v50 + 8 * v42) = v51;
      v26 = v62;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v56 = *(v51 + 16);
        sub_1ABA7BEF0();
        sub_1ABAD88DC();
        v51 = v57;
        *(v50 + 8 * v42) = v57;
      }

      v54 = *(v51 + 16);
      v53 = *(v51 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_1ABA7BBEC(v53);
        sub_1ABAD88DC();
        *(v50 + 8 * v42) = v58;
      }

      sub_1ABB24250(v68);
      v55 = *(v50 + 8 * v42);
      *(v55 + 16) = v54 + 1;
      memcpy((v55 + 144 * v54 + 32), v65, 0x90uLL);
      __src = sub_1ABAB9874;
      v24 = v59;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABE4713C()
{
  sub_1ABE44A34();
  sub_1ABA7DF8C();
  return sub_1ABE471CC(v0, v1);
}

uint64_t sub_1ABE4716C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1ABA7BBB0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1ABE471CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1ABA7BBB0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1ABE47278(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  sub_1ABAB4C04(v46);
  v7 = v46[1];
  v8 = v46[3];
  v9 = v46[4];
  v40 = v46[5];
  v41 = v46[0];
  v10 = (v46[2] + 64) >> 6;

  v37 = v10;
  v38 = v7;
  v39 = a5;
  if (v9)
  {
    while (1)
    {
      v47 = a4;
      v11 = v8;
LABEL_8:
      v13 = __clz(__rbit64(v9)) | (v11 << 6);
      v14 = (*(v41 + 48) + 16 * v13);
      v15 = v14[1];
      v16 = *(*(v41 + 56) + 8 * v13);
      v45[0] = *v14;
      v45[1] = v15;
      v45[2] = v16;

      v40(&v42, v45);

      v17 = v42;
      v18 = v43;
      v19 = v44;
      v20 = *a5;
      v22 = sub_1ABA94FC8(v42, v43);
      v23 = v20[2];
      v24 = (v21 & 1) == 0;
      if (__OFADD__(v23, v24))
      {
        break;
      }

      v25 = v21;
      if (v20[3] >= v23 + v24)
      {
        if ((v47 & 1) == 0)
        {
          sub_1ABAD219C(&qword_1EB4DAFD8, &qword_1ABF6BE28);
          sub_1ABF24C74();
        }
      }

      else
      {
        sub_1ABC0425C();
        v26 = *a5;
        v27 = sub_1ABA94FC8(v17, v18);
        if ((v25 & 1) != (v28 & 1))
        {
          goto LABEL_24;
        }

        v22 = v27;
      }

      v9 &= v9 - 1;
      v29 = *a5;
      if (v25)
      {
        v45[0] = *(v29[7] + 8 * v22);

        sub_1ABD7D9A8(v19);

        v30 = v29[7];
        v31 = *(v30 + 8 * v22);
        *(v30 + 8 * v22) = v45[0];
      }

      else
      {
        sub_1ABA7D110(&v29[v22 >> 6]);
        v32 = (v29[6] + 16 * v22);
        *v32 = v17;
        v32[1] = v18;
        *(v29[7] + 8 * v22) = v19;
        v33 = v29[2];
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_23;
        }

        v29[2] = v35;
      }

      a4 = 1;
      v8 = v11;
      v7 = v38;
      a5 = v39;
      v10 = v37;
      if (!v9)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v12 = v8;
    while (1)
    {
      v11 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v11 >= v10)
      {
        sub_1ABAB4C48();
      }

      v9 = *(v7 + 8 * v11);
      ++v12;
      if (v9)
      {
        v47 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABE4753C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1ABDBF944(&v6, *a1, a1[1], a1[2]);
  v4 = v6;
  *a2 = result;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

uint64_t sub_1ABE47580(uint64_t a1)
{
  v2 = sub_1ABAD219C(&unk_1EB4DB8E0, &unk_1ABF50A20);
  v44[3] = v2;
  v44[4] = sub_1ABAB47C4(&qword_1EB4CF810, &unk_1EB4DB8E0, &unk_1ABF50A20);
  v44[0] = a1;
  v3 = sub_1ABA93E20(v44, v2);
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v36 - v5;
  (*(v7 + 16))(v36 - v5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = sub_1ABA93DC0(v41);
  v9 = -1 << *(*v6 + 32);
  v10 = ~v9;
  v11 = (*v6 + 56);
  v12 = *v11;
  v13 = -v9;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  *v8 = *v6;
  v8[1] = v11;
  v8[2] = v10;
  v8[3] = 0;
  v8[4] = v14 & v12;

  v37 = MEMORY[0x1E69E7CC8];
  *&v15 = 136315138;
  v38 = v15;
  while (1)
  {
    do
    {
      sub_1ABA94E50(v41, AssociatedTypeWitness);
      sub_1ABF24864();
      if (v40)
      {
        sub_1ABA84B54(v41);
        sub_1ABA84B54(v44);
        return v37;
      }

      v16 = v39;
      v17 = sub_1ABD5B590(&v39);
      v19 = v18;
    }

    while (!v18);
    v20 = v17;
    v21 = v37;
    v36[1] = swift_isUniquelyReferenced_nonNull_native();
    v39 = v21;
    v22 = sub_1ABAF81A8();
    if (__OFADD__(*(v21 + 16), (v23 & 1) == 0))
    {
      break;
    }

    v24 = v22;
    LODWORD(v37) = v23;
    sub_1ABAD219C(&qword_1EB4D90F0, &qword_1ABF5E7D0);
    if (sub_1ABF24C64())
    {
      v25 = sub_1ABAF81A8();
      v27 = v37;
      if ((v37 & 1) != (v26 & 1))
      {
        goto LABEL_19;
      }

      v24 = v25;
    }

    else
    {
      v27 = v37;
    }

    v28 = v39;
    v37 = v39;
    if (v27)
    {
      v29 = (v39[7] + 16 * v24);
      v30 = v29[1];
      *v29 = v20;
      v29[1] = v19;
    }

    else
    {
      v39[(v24 >> 6) + 8] |= 1 << v24;
      *(v28[6] + 8 * v24) = v16;
      v31 = (v28[7] + 16 * v24);
      *v31 = v20;
      v31[1] = v19;
      v32 = v28[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_18;
      }

      v28[2] = v34;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABE47A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = type metadata accessor for QueryContext();
  if (*(*(Context - 8) + 84) == a2)
  {

    return sub_1ABA7E1E0(a1, a2, Context);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1ABE47B10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for QueryContext();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1ABA7B9B4(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_1ABE47BB8()
{
  type metadata accessor for QueryContext();
  if (v0 <= 0x3F)
  {
    sub_1ABE431C0();
    if (v1 <= 0x3F)
    {
      sub_1ABE47CF0(319, &qword_1EB4CF838, &type metadata for KnosisAnswer, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1ABE47CF0(319, &qword_1EB4CF7F0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1ABE47CF0(319, &qword_1EB4CF828, &type metadata for RouteFlag, MEMORY[0x1E69E62F8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1ABE47CF0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1ABE47D44()
{
  result = qword_1EB4DAFE8;
  if (!qword_1EB4DAFE8)
  {
    type metadata accessor for AnswerRenderIterator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAFE8);
  }

  return result;
}

uint64_t IndexResult.init(facts:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = result;
  return result;
}

uint64_t IndexResult.init(errMsg:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = result;
  a3[2] = a2;
  return result;
}

unint64_t IndexResult.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];

  sub_1ABF24AB4();

  if (v1)
  {
    v4 = v1;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = MEMORY[0x1AC5A9750](v4, &type metadata for KnosisInternalFact);
  v7 = v6;

  MEMORY[0x1AC5A9410](v5, v7);

  MEMORY[0x1AC5A9410](0x7373654D72726520, 0xEC0000003A656761);
  if (v3)
  {
    v8 = v2;
  }

  else
  {
    v8 = 0;
  }

  if (v3)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  MEMORY[0x1AC5A9410](v8, v9);

  MEMORY[0x1AC5A9410](62, 0xE100000000000000);
  return 0xD000000000000013;
}

uint64_t sub_1ABE47F28(uint64_t a1)
{
  v2 = v1;
  result = sub_1ABE47EF0();
  if ((result & 1) == 0)
  {
    if (sub_1ABE47EF0())
    {
      sub_1ABE48DC0(a1);
    }

    sub_1ABA7F2A0();
    v5 = *(a1 + 16);
    v7 = *(v5 + 64);
    v6 = v5 + 64;
    v8 = *(v5 + 32);
    sub_1ABA7D32C();
    v11 = v10 & v9;
    v13 = (v12 + 63) >> 6;

    v14 = 0;
    v15 = 40;
    v59 = v13;
    v60 = v5;
    while (v11)
    {
LABEL_10:
      v17 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v18 = v17 | (v14 << 6);
      v19 = (*(v5 + 48) + 16 * v18);
      v20 = v19[1];
      v21 = *(v5 + 56) + v18 * v15;
      v22 = *v19;
      v23 = *(v21 + 8);
      v61 = *v21;
      v24 = *(v21 + 16);
      v25 = *(v21 + 24);
      v63 = *(v21 + 32);
      sub_1ABA811C4();
      v26 = *(*(v2 + 16) + 16);

      if (v26 && (sub_1ABA94FC8(v22, v20), (v27 & 1) != 0))
      {
        swift_endAccess();
        sub_1ABA7C32C();
        v28 = sub_1ABAF7064(v66);
        if (*(v29 + 8))
        {

          sub_1ABE7A35C(v30);
          v32 = v31;

          sub_1ABE7200C(v32);
          (v28)(v66, 0);
          swift_endAccess();
        }

        else
        {
          (v28)(v66, 0);
          swift_endAccess();
        }

        v15 = 40;
        v13 = v59;
        v5 = v60;
      }

      else
      {
        swift_endAccess();
        sub_1ABA7C32C();
        v33 = *(v2 + 16);
        swift_isUniquelyReferenced_nonNull_native();
        v67 = *(v2 + 16);
        *(v2 + 16) = 0x8000000000000000;
        v64 = v22;
        v65 = v20;
        sub_1ABA94FC8(v22, v20);
        sub_1ABA7BC80();
        if (__OFADD__(v36, v37))
        {
          goto LABEL_33;
        }

        v15 = v34;
        v38 = v35;
        sub_1ABAD219C(&qword_1EB4D1F60, &unk_1ABF35150);
        if (sub_1ABF24C64())
        {
          sub_1ABA94FC8(v64, v65);
          sub_1ABA81C70();
          if (!v40)
          {
            goto LABEL_35;
          }

          v15 = v39;
        }

        v41 = v67;
        if (v38)
        {
          sub_1ABA996C8();
          v44 = *(v42 + 8);
          v43 = *(v42 + 16);
          sub_1ABA7DFA4(v42, v58, v59, v60, v61, v62, v63, v24, v23);
        }

        else
        {
          sub_1ABA7D110(v67 + 8 * (v15 >> 6));
          v45 = (*(v41 + 48) + 16 * v15);
          *v45 = v64;
          v45[1] = v65;
          sub_1ABA996C8();
          sub_1ABA7DFA4(v46, v58, v59, v60, v61, v62, v63, v24, v23);
          v47 = *(v41 + 16);
          v48 = __OFADD__(v47, 1);
          v49 = v47 + 1;
          if (v48)
          {
            goto LABEL_34;
          }

          *(v41 + 16) = v49;
        }

        *(v2 + 16) = v41;
        swift_endAccess();
        sub_1ABA7C32C();
        v50 = *(v2 + 24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v2 + 24) = v50;
        v5 = v60;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v55 = *(v50 + 16);
          sub_1ABA7BEF0();
          sub_1ABAAA4F4();
          v50 = v56;
          *(v2 + 24) = v56;
        }

        v53 = *(v50 + 16);
        v52 = *(v50 + 24);
        if (v53 >= v52 >> 1)
        {
          sub_1ABA7BBEC(v52);
          sub_1ABAAA4F4();
          v50 = v57;
        }

        *(v50 + 16) = v53 + 1;
        v54 = v50 + 16 * v53;
        *(v54 + 32) = v64;
        *(v54 + 40) = v65;
        *(v2 + 24) = v50;
        swift_endAccess();
        v13 = v59;
      }
    }

    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= v13)
      {
      }

      v11 = *(v6 + 8 * v16);
      ++v14;
      if (v11)
      {
        v14 = v16;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    result = sub_1ABF25104();
    __break(1u);
  }

  return result;
}

uint64_t sub_1ABE48330()
{
  v1 = MEMORY[0x1E69E7CC0];
  v2 = sub_1ABF239C4();
  sub_1ABA8C160();
  v3 = *(v0 + 16);
  *(v0 + 16) = v2;

  sub_1ABA8C160();
  v4 = *(v0 + 24);
  *(v0 + 24) = v1;
}

uint64_t sub_1ABE483B8(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  inited = swift_initStackObject();
  v6 = MEMORY[0x1E69E7CC0];
  *(inited + 16) = sub_1ABF239C4();
  v104 = (inited + 16);
  *(inited + 24) = v6;
  sub_1ABA7F2A0();
  v7 = *(a1 + 24);
  v8 = *(v7 + 16);
  if (!v8)
  {
    goto LABEL_46;
  }

  v9 = sub_1ABE48AB8();
  v94 = v1;
  v95 = (inited + 24);
  if (v9 < sub_1ABE48AB8())
  {
    v90 = inited;

    v88 = v7;
    v10 = (v7 + 40);
    v11 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v12 = *(v10 - 1);
      v13 = *v10;
      sub_1ABA811C4();
      if (!*(v2[2] + 16))
      {
        goto LABEL_21;
      }

      sub_1ABA94FC8(v12, v13);
      if (v14)
      {
        break;
      }

      swift_endAccess();

LABEL_22:
      v10 += 2;
      if (!--v8)
      {
        goto LABEL_45;
      }
    }

    sub_1ABA7F8DC();
    v18 = v16 + v15 * v17;
    v19 = *(v18 + 8);
    v98 = *v18;
    v20 = *(v18 + 16);
    v21 = *(v18 + 24);
    v100 = *(v18 + 32);
    swift_endAccess();
    sub_1ABA7C32C();

    v22 = *v104;
    swift_isUniquelyReferenced_nonNull_native();
    v106 = *v104;
    v102 = v12;
    sub_1ABA94FC8(v12, v13);
    sub_1ABA7BC80();
    if (__OFADD__(v25, v26))
    {
      __break(1u);
      goto LABEL_48;
    }

    v27 = v23;
    v28 = v24;
    sub_1ABAD219C(&qword_1EB4D1F60, &unk_1ABF35150);
    if (sub_1ABF24C64())
    {
      sub_1ABA94FC8(v102, v13);
      sub_1ABA81C70();
      if (!v30)
      {
        goto LABEL_51;
      }

      v27 = v29;
    }

    if (v28)
    {
      sub_1ABA7F8DC();
      v33 = v31 + v27 * v32;
      v35 = *(v33 + 8);
      v34 = *(v33 + 16);
      sub_1ABA7EBC0(v33, v87, v88, v90, v91, v94, v95, v11, v98, v100);
    }

    else
    {
      sub_1ABA7D110(v106 + 8 * (v27 >> 6));
      v36 = (*(v106 + 48) + 16 * v27);
      *v36 = v102;
      v36[1] = v13;
      sub_1ABA7F8DC();
      sub_1ABA7EBC0(v37 + v27 * v38, v87, v88, v90, v91, v94, v95, v11, v98, v100);
      v39 = *(v106 + 16);
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_49;
      }

      *(v106 + 16) = v41;
    }

    *v104 = v106;
    swift_endAccess();
    sub_1ABA7C32C();
    v11 = v96;
    v2 = v94;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v45 = *(v96 + 16);
      sub_1ABA7BEF0();
      sub_1ABAAA4F4();
      v11 = v46;
    }

    v43 = *(v11 + 16);
    v42 = *(v11 + 24);
    if (v43 >= v42 >> 1)
    {
      sub_1ABA7BBEC(v42);
      sub_1ABAAA4F4();
      v11 = v47;
    }

    *(v11 + 16) = v43 + 1;
    v44 = v11 + 16 * v43;
    *(v44 + 32) = v102;
    *(v44 + 40) = v13;
    *v95 = v11;
LABEL_21:
    swift_endAccess();
    goto LABEL_22;
  }

  sub_1ABA7F2A0();
  v48 = *(v1[3] + 16);
  if (!v48)
  {
LABEL_46:
    sub_1ABE48DC0(inited);
  }

  v90 = inited;

  v49 = (v89 + 40);
  v50 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v51 = *(v49 - 1);
    v52 = *v49;
    sub_1ABA811C4();
    v53 = *(a1 + 16);
    if (!*(v53 + 16))
    {
      goto LABEL_43;
    }

    v54 = sub_1ABA94FC8(v51, v52);
    if (v55)
    {
      break;
    }

    swift_endAccess();

LABEL_44:
    v49 += 2;
    if (!--v48)
    {
LABEL_45:

      inited = v90;
      goto LABEL_46;
    }
  }

  v92 = v50;
  v56 = v51;
  v57 = *(v53 + 56) + 40 * v54;
  v58 = *(v57 + 8);
  v97 = *v57;
  v59 = *(v57 + 16);
  v60 = *(v57 + 24);
  v103 = *(v57 + 32);
  swift_endAccess();
  sub_1ABA7C32C();
  v99 = v58;

  v101 = v59;

  v61 = *v104;
  swift_isUniquelyReferenced_nonNull_native();
  v105 = *v104;
  v62 = v56;
  sub_1ABA94FC8(v56, v52);
  sub_1ABA7BC80();
  if (!__OFADD__(v65, v66))
  {
    v67 = v63;
    v68 = v64;
    sub_1ABAD219C(&qword_1EB4D1F60, &unk_1ABF35150);
    if (sub_1ABF24C64())
    {
      sub_1ABA94FC8(v62, v52);
      sub_1ABA81C70();
      if (!v30)
      {
        goto LABEL_51;
      }

      v67 = v69;
    }

    if (v68)
    {
      sub_1ABA7F8DC();
      v72 = v70 + v67 * v71;
      v74 = *(v72 + 8);
      v73 = *(v72 + 16);
      sub_1ABA811A4(v72, v87, v89, v90, v92, v94, v95, v97, v99, v101, v103);
    }

    else
    {
      sub_1ABA7D110(v105 + 8 * (v67 >> 6));
      v75 = (*(v105 + 48) + 16 * v67);
      *v75 = v62;
      v75[1] = v52;
      sub_1ABA7F8DC();
      sub_1ABA811A4(v76 + v67 * v77, v87, v89, v90, v92, v94, v95, v97, v99, v59, v103);
      v78 = *(v105 + 16);
      v40 = __OFADD__(v78, 1);
      v79 = v78 + 1;
      if (v40)
      {
        goto LABEL_50;
      }

      *(v105 + 16) = v79;
    }

    *v104 = v105;
    swift_endAccess();
    sub_1ABA7C32C();
    v50 = v93;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v83 = *(v93 + 16);
      sub_1ABA7BEF0();
      sub_1ABAAA4F4();
      v50 = v84;
    }

    v81 = *(v50 + 16);
    v80 = *(v50 + 24);
    if (v81 >= v80 >> 1)
    {
      sub_1ABA7BBEC(v80);
      sub_1ABAAA4F4();
      v50 = v85;
    }

    *(v50 + 16) = v81 + 1;
    v82 = v50 + 16 * v81;
    *(v82 + 32) = v62;
    *(v82 + 40) = v52;
    *v95 = v50;
LABEL_43:
    swift_endAccess();
    goto LABEL_44;
  }

LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABE489AC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1ABD8EE6C(v4);
    v4 = v7;
  }

  v5 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v5;

  sub_1ABE49AB8(v8, a2);
  *a1 = v4;
}

uint64_t sub_1ABE48A4C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1ABE7A23C(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1ABE49BF0(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1ABE48AE8()
{
  v1 = v0;
  sub_1ABE4933C();
  sub_1ABA7F2A0();
  v2 = *(*(v0 + 24) + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = ( + 40);
  v4 = MEMORY[0x1E69E7CC0];
  do
  {
    v5 = *(v3 - 1);
    v6 = *v3;
    sub_1ABA811C4();
    v7 = *(v1 + 16);
    v8 = *(v7 + 16);

    if (v8 && (v9 = sub_1ABA94FC8(v5, v6), (v10 & 1) != 0))
    {
      v11 = *(v7 + 56) + 40 * v9;
      v13 = *v11;
      v12 = *(v11 + 8);
      v14 = *(v11 + 16);
      v15 = *(v11 + 24);
      v16 = *(v11 + 32);
      swift_endAccess();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = *(v4 + 16);
        sub_1ABA7BEF0();
        sub_1ABAD8FCC();
        v4 = v21;
      }

      v18 = *(v4 + 16);
      v17 = *(v4 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1ABA7BBEC(v17);
        sub_1ABAD8FCC();
        v4 = v22;
      }

      *(v4 + 16) = v18 + 1;
      v19 = v4 + 40 * v18;
      *(v19 + 32) = v13;
      *(v19 + 40) = v12;
      *(v19 + 48) = v14;
      *(v19 + 56) = v15;
      *(v19 + 64) = v16;
    }

    else
    {
      swift_endAccess();
    }

    v3 += 2;
    --v2;
  }

  while (v2);

  return v4;
}

uint64_t sub_1ABE48C84(uint64_t a1)
{
  v2 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v2;
  v12 = *(a1 + 32);
  v3 = v11[0];
  sub_1ABA811C4();
  v4 = *(*(v1 + 16) + 16);
  swift_bridgeObjectRetain_n();
  if (v4 && (sub_1ABA94FC8(*&v11[0], *(&v11[0] + 1)), (v5 & 1) != 0))
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_1ABA7C32C();
    sub_1ABB4DC20();
    v6 = *(*(v1 + 24) + 16);
    sub_1ABB4E024(v6);
    v7 = *(v1 + 24);
    *(v7 + 16) = v6 + 1;
    *(v7 + 16 * v6 + 32) = v3;
    *(v1 + 24) = v7;
    swift_endAccess();
  }

  sub_1ABA7C32C();
  sub_1ABE4B4F8(v11, v10);
  v8 = *(v1 + 16);
  swift_isUniquelyReferenced_nonNull_native();
  v10[0] = *(v1 + 16);
  sub_1ABAFACA8();
  *(v1 + 16) = v10[0];

  return swift_endAccess();
}

uint64_t sub_1ABE48DC0(uint64_t a1)
{
  sub_1ABA7F2A0();
  v3 = *(a1 + 16);
  sub_1ABA8C160();
  v4 = *(v1 + 16);
  *(v1 + 16) = v3;

  sub_1ABA7F2A0();
  v5 = *(a1 + 24);
  sub_1ABA8C160();
  v6 = *(v1 + 24);
  *(v1 + 24) = v5;
}

unint64_t sub_1ABE48E88(unint64_t a1)
{
  v2 = v1;
  result = sub_1ABE48AB8();
  if (result > a1)
  {
    if (!a1)
    {
      if (qword_1ED86E458 != -1)
      {
        swift_once();
      }

      v5 = sub_1ABF237F4();
      sub_1ABA7AA24(v5, qword_1ED86E460);
      v6 = sub_1ABF237D4();
      v7 = sub_1ABF24664();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_1ABA78000, v6, v7, "limit 0 on operator should be avoided", v8, 2u);
        MEMORY[0x1AC5AB8B0](v8, -1, -1);
      }
    }

    sub_1ABE4933C();
    v9 = sub_1ABE48AB8();
    if (v9 >= a1)
    {
      v38 = a1;
      if (v9 == a1)
      {
LABEL_16:
        sub_1ABA7F2A0();
        sub_1ABDF015C(0, v38, *(v2 + 24));
        v30 = v29;
        v32 = v31;
        if ((v31 & 1) == 0)
        {
LABEL_17:
          sub_1ABB62CE0();
          v34 = v33;
          goto LABEL_24;
        }

        sub_1ABF25094();
        swift_unknownObjectRetain_n();
        v35 = swift_dynamicCastClass();
        if (!v35)
        {
          swift_unknownObjectRelease();
          v35 = MEMORY[0x1E69E7CC0];
        }

        v36 = *(v35 + 16);

        if (!__OFSUB__(v32 >> 1, v30))
        {
          if (v36 == (v32 >> 1) - v30)
          {
            v34 = swift_dynamicCastClass();
            swift_unknownObjectRelease();
            if (v34)
            {
LABEL_25:
              sub_1ABA8C160();
              v37 = *(v2 + 24);
              *(v2 + 24) = v34;
            }

            v34 = MEMORY[0x1E69E7CC0];
LABEL_24:
            swift_unknownObjectRelease();
            goto LABEL_25;
          }

          goto LABEL_31;
        }

LABEL_30:
        __break(1u);
LABEL_31:
        swift_unknownObjectRelease();
        goto LABEL_17;
      }

      v10 = v9;
      v11 = a1;
      if (v9 <= a1)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      sub_1ABA7F2A0();
      v12 = 16 * a1;
      while (1)
      {
        v13 = *(v2 + 24);
        if (v11 >= *(v13 + 16))
        {
          break;
        }

        v14 = v13 + v12;
        v15 = *(v14 + 32);
        v16 = *(v14 + 40);
        sub_1ABA7C32C();
        v17 = *(v2 + 16);

        v18 = sub_1ABA94FC8(v15, v16);
        if (v19)
        {
          v20 = v18;
          v21 = *(v2 + 16);
          swift_isUniquelyReferenced_nonNull_native();
          v39 = *(v2 + 16);
          *(v2 + 16) = 0x8000000000000000;
          v22 = *(v39 + 24);
          sub_1ABAD219C(&qword_1EB4D1F60, &unk_1ABF35150);
          sub_1ABF24C64();
          v23 = *(*(v39 + 48) + 16 * v20 + 8);

          sub_1ABA7F8DC();
          v26 = v24 + v20 * v25;
          v28 = *(v26 + 8);
          v27 = *(v26 + 16);

          sub_1ABF24C84();
          *(v2 + 16) = v39;
        }

        ++v11;
        swift_endAccess();

        v12 += 16;
        if (v10 == v11)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }

  return result;
}

uint64_t sub_1ABE491D0()
{
  v18 = MEMORY[0x1E69E7CC0];
  sub_1ABA7F2A0();
  v1 = *(v0 + 16);
  v2 = *(v1 + 64);
  v3 = *(v1 + 32);
  sub_1ABA7D32C();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;

  for (i = 0; v6; i = v10)
  {
    v10 = i;
LABEL_6:
    v11 = *(v1 + 56) + 40 * (__clz(__rbit64(v6)) | (v10 << 6));
    v12 = *(v11 + 8);
    v13 = *(v11 + 16);

    swift_bridgeObjectRetain_n();
    sub_1ABE7A35C(v13);
    v15 = v14;

    v17 = v15;

    sub_1ABE48A4C(&v17);
    v6 &= v6 - 1;

    sub_1ABD7E05C(v17);
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return v18;
    }

    v6 = *(v1 + 64 + 8 * v10);
    ++i;
    if (v6)
    {
      goto LABEL_6;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1ABE4933C()
{
  sub_1ABA7C32C();

  sub_1ABE489AC((v0 + 24), v0);
  return swift_endAccess();
}

unint64_t sub_1ABE4938C()
{
  sub_1ABF24AB4();

  sub_1ABA7F2A0();
  v1 = *(v0 + 16);

  v2 = sub_1ABF23984();
  v4 = v3;

  MEMORY[0x1AC5A9410](v2, v4);

  MEMORY[0x1AC5A9410](62, 0xE100000000000000);
  return 0xD000000000000017;
}

uint64_t sub_1ABE49464(uint64_t result, char *a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = *a2;
    v4 = (result + 32);
    do
    {
      memcpy(__dst, v4, 0x58uLL);
      memcpy(__src, v4, sizeof(__src));
      v6 = v3;
      sub_1ABB242A4(__dst, v5);
      sub_1ABE494F4(__src, &v6, 0);
      result = sub_1ABB24250(__dst);
      v4 += 88;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1ABE494F4(void *__src, char *a2, char a3)
{
  v4 = v3;
  memcpy(__dst, __src, sizeof(__dst));
  v7 = *a2;
  if (!*a2)
  {

    goto LABEL_10;
  }

  v8 = sub_1ABF25054();

  if (v8)
  {
LABEL_10:
    v9 = __dst[3];
    v10 = __dst[4];
    goto LABEL_11;
  }

  if (__dst[9])
  {
    v9 = __dst[8];
  }

  else
  {
    v9 = 0;
  }

  if (__dst[9])
  {
    v10 = __dst[9];
  }

  else
  {
    v10 = 0xE000000000000000;
  }

LABEL_11:

  sub_1ABA811C4();
  if (*(*(v4 + 16) + 16))
  {
    v11 = sub_1ABA94FC8(v9, v10);
    v13 = v12;

    if (v13)
    {
      sub_1ABA7F8DC();
      v16 = (v14 + v11 * v15);
      v18 = *v16;
      v17 = v16[1];
      v19 = v16[2];
      v20 = v16[3];
      swift_endAccess();
      v29 = v18;
      v30 = v17;
      v31 = v19;
      v32 = v20;

      if ((a3 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else
  {
  }

  swift_endAccess();
  swift_bridgeObjectRetain_n();
  sub_1ABAD219C(&unk_1EB4DAFF0, &unk_1ABF6BFC0);
  v29 = v9;
  v30 = v10;
  v31 = sub_1ABF239C4();
  v32 = 0;
  sub_1ABA7C32C();
  sub_1ABB4DC20();
  v21 = *(*(v4 + 24) + 16);
  sub_1ABB4E024(v21);
  v22 = *(v4 + 24);
  *(v22 + 16) = v21 + 1;
  v23 = v22 + 16 * v21;
  *(v23 + 32) = v9;
  *(v23 + 40) = v10;
  *(v4 + 24) = v22;
  swift_endAccess();
  if (a3)
  {
LABEL_17:
    v32 = __dst[2];
  }

LABEL_18:
  v33 = v7;
  sub_1ABAD219C(&qword_1EB4D10A0, &qword_1ABF33228);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ABF34740;
  memcpy((inited + 32), __dst, 0x58uLL);
  sub_1ABB242A4(__dst, v28);
  sub_1ABE7200C(inited);
  swift_setDeallocating();
  sub_1ABB4DB0C();
  sub_1ABA7C32C();
  v25 = *(v4 + 16);
  swift_isUniquelyReferenced_nonNull_native();
  v27 = *(v4 + 16);
  sub_1ABAFACA8();
  *(v4 + 16) = v27;

  return swift_endAccess();
}

uint64_t sub_1ABE497D4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  swift_beginAccess();
  v8 = *(a3 + 16);
  if (*(v8 + 16) && (v9 = sub_1ABA94FC8(v5, v4), (v10 & 1) != 0))
  {
    v11 = *(v8 + 56) + 40 * v9;
    v13 = *v11;
    v12 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_1ABAD219C(&unk_1EB4DAFF0, &unk_1ABF6BFC0);
    sub_1ABF239C4();
    v13 = 0;
    v15 = 0.0;
    v12 = 0xE000000000000000;
  }

  swift_beginAccess();
  v16 = *(a3 + 16);
  if (*(v16 + 16) && (v17 = sub_1ABA94FC8(v6, v7), (v18 & 1) != 0))
  {
    v19 = *(v16 + 56) + 40 * v17;
    v21 = *v19;
    v20 = *(v19 + 8);
    v22 = *(v19 + 16);
    v23 = *(v19 + 24);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_1ABAD219C(&unk_1EB4DAFF0, &unk_1ABF6BFC0);
    sub_1ABF239C4();
    v21 = 0;
    v20 = 0xE000000000000000;
    v23 = 0.0;
  }

  if (v15 == v23)
  {
    if (v21 == v13 && v20 == v12)
    {
      v25 = 0;
    }

    else
    {
      v25 = sub_1ABF25054();
    }
  }

  else
  {

    v25 = v23 < v15;
  }

  return v25 & 1;
}