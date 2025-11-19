uint64_t sub_1B21E4CF4(uint64_t a1, uint64_t *a2)
{
  v50 = *a2;
  v4 = v50;
  v5 = sub_1B22520F0();
  v6 = *(v5 - 8);
  v52 = v5;
  v53 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B2252120();
  v54 = *(v9 - 8);
  v55 = v9;
  v10 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = *(v4 + 104);
  v12 = *(v57 + 8);
  v13 = *(v4 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_1B2252B00();
  v56 = *(v15 - 8);
  v16 = *(v56 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v46 - v18;
  v58 = AssociatedTypeWitness;
  v20 = *(AssociatedTypeWitness - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v46 - v23;
  sub_1B21E40AC(a1, v19);
  v48 = v13;
  v26 = v56;
  v25 = v57;
  v27 = v24;
  if (sub_1B2122A98(v19, 1, v58) == 1)
  {
    return (*(v26 + 8))(v19, v15);
  }

  v29 = v20;
  v30 = *(v20 + 32);
  v31 = v27;
  v47 = v27;
  v32 = v19;
  v33 = v58;
  v30(v27, v32, v58);
  v56 = a2[6];
  v34 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v33;
  (*(v29 + 16))(v34, v31, v33);
  v36 = (*(v29 + 80) + 56) & ~*(v29 + 80);
  v37 = swift_allocObject();
  v38 = v50;
  v39 = v48;
  *(v37 + 2) = *(v50 + 80);
  *(v37 + 3) = v39;
  *(v37 + 4) = *(v38 + 96);
  *(v37 + 5) = v25;
  *(v37 + 6) = a2;
  v40 = v34;
  v41 = v35;
  v30(&v37[v36], v40, v35);
  aBlock[4] = sub_1B21E87EC;
  aBlock[5] = v37;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B21E5730;
  aBlock[3] = &unk_1F2972180;
  v42 = _Block_copy(aBlock);

  v43 = v49;
  sub_1B2252100();
  v59 = MEMORY[0x1E69E7CC0];
  sub_1B21202AC(qword_1ED85E0C0, MEMORY[0x1E69E7F60]);
  sub_1B21619D8(&qword_1EB7A27A8, &qword_1B225E820);
  sub_1B21E8598(&qword_1ED85E0B8, &qword_1EB7A27A8, &qword_1B225E820);
  v45 = v51;
  v44 = v52;
  sub_1B2252BC0();
  MEMORY[0x1B2742540](0, v43, v45, v42);
  _Block_release(v42);
  (*(v53 + 8))(v45, v44);
  (*(v54 + 8))(v43, v55);
  (*(v29 + 8))(v47, v41);
}

uint64_t sub_1B21E5268(void *a1, uint64_t a2)
{
  v33 = a2;
  v35 = *a1;
  v34 = v35[13];
  v3 = *(v34 + 8);
  v36 = v35[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1B2252B00();
  v31 = *(v5 - 8);
  v32 = v5;
  v6 = *(v31 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v29 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v7);
  v13 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - v14;
  v16 = a1[5];
  result = sub_1B21E2CFC();
  if (result)
  {
    v18 = *(*a1 + 176);
    swift_beginAccess();
    (*(v3 + 32))(v33, v36, v3);
    swift_endAccess();
    if (sub_1B2122A98(v9, 1, AssociatedTypeWitness) == 1)
    {
      (*(v31 + 8))(v9, v32);
      result = sub_1B2252EC0();
      __break(1u);
    }

    else
    {
      v19 = *(v10 + 32);
      v30 = v15;
      v19(v15, v9, AssociatedTypeWitness);
      v20 = a1[2];
      (*(v10 + 16))(v13, v15, AssociatedTypeWitness);
      v21 = (*(v10 + 80) + 56) & ~*(v10 + 80);
      v22 = swift_allocObject();
      v23 = v35;
      v24 = v36;
      *(v22 + 2) = v35[10];
      *(v22 + 3) = v24;
      v25 = v34;
      *(v22 + 4) = v23[12];
      *(v22 + 5) = v25;
      *(v22 + 6) = a1;
      v19(&v22[v21], v13, AssociatedTypeWitness);
      v26 = v20[5];
      v27 = v20[6];
      sub_1B21139A0(v20 + 2, v26);
      v28 = *(v27 + 8);

      v28(sub_1B21E8898, v22, v26, v27);

      return (*(v10 + 8))(v30, AssociatedTypeWitness);
    }
  }

  return result;
}

uint64_t *sub_1B21E5668@<X0>(uint64_t *result@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = result[20];
  if (v3)
  {
    v4 = *result;
    v5 = result[21];
    v6 = swift_allocObject();
    *(v6 + 16) = *(v4 + 80);
    *(v6 + 24) = *(v4 + 88);
    *(v6 + 40) = *(v4 + 104);
    *(v6 + 48) = v3;
    *(v6 + 56) = v5;

    v7 = sub_1B21E8964;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return result;
}

uint64_t sub_1B21E5730(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_1B21E5774(uint64_t a1)
{
  sub_1B2177AB0(v1, a1, *v1, &off_1F2971F98);
  v2 = *(v1 + 176);
  *(v1 + 176) = 1;
  *(v1 + 184) = 0;
  sub_1B21E7918(v2);
  v3 = *(v1 + 40);
  return sub_1B21E2BF4(sub_1B21E784C, 0, sub_1B21E8448);
}

uint64_t sub_1B21E5830(void *a1)
{
  v3 = *(v1 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = v3[5];
  v6 = v3[6];
  sub_1B21139A0(v3 + 2, v5);
  v7 = *(v6 + 8);

  v8 = a1;
  v7(sub_1B21E8034, v4, v5, v6);
}

void *sub_1B21E5914@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = result;
  v28 = *result;
  if (result[20])
  {
    v4 = result[10];
    v6 = result[12];
    v5 = result[13];
    v7 = result[14];
    v8 = result[15];
    v9 = result[16];
    v10 = result[18];
    v25 = result[17];
    v26 = result[19];
    v30 = result[11];
    sub_1B2112328(v4);
    sub_1B2112328(v6);
    sub_1B2112328(v7);
    v31 = v9;
    v11 = v9;
    v12 = v25;
    sub_1B2112328(v11);
    v29 = v10;
    v13 = v10;
    v14 = v26;
    result = sub_1B2112328(v13);
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v6 = 0;
    v5 = 0;
    v7 = 0;
    v8 = 0;
    v12 = 0;
    v29 = 0;
    v14 = 0;
    v4 = 1;
  }

  if (v2[7])
  {
    v27 = v4;
    v15 = v8;
    v16 = v7;
    v17 = v5;
    v18 = v6;
    v19 = v14;
    v20 = v12;
    v22 = v2[8];
    v21 = v2[9];
    v23 = swift_allocObject();
    *(v23 + 16) = *(v28 + 80);
    *(v23 + 24) = *(v28 + 88);
    *(v23 + 40) = *(v28 + 104);
    *(v23 + 48) = v22;
    v12 = v20;
    v14 = v19;
    v6 = v18;
    v5 = v17;
    v7 = v16;
    v8 = v15;
    v4 = v27;
    *(v23 + 56) = v21;

    v24 = sub_1B21E8968;
  }

  else
  {
    v24 = 0;
    v23 = 0;
  }

  *a2 = v4;
  a2[1] = v30;
  a2[2] = v6;
  a2[3] = v5;
  a2[4] = v7;
  a2[5] = v8;
  a2[6] = v31;
  a2[7] = v12;
  a2[8] = v29;
  a2[9] = v14;
  a2[10] = v24;
  a2[11] = v23;
  return result;
}

BOOL sub_1B21E5B6C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v5 = *(v4 + 176);
  if (v5 == 1)
  {
    return 0;
  }

  else
  {
    v12 = *(v4 + 176);

    v6 = DatabaseRegion.isModified(byEventsOfKind:)(a1, a2, a3, a4);
    sub_1B21E7918(v5);
  }

  return v6;
}

void sub_1B21E5BF8()
{
  sub_1B2111F14();
  v2 = v0;
  v3 = *v0;
  v4 = v0[22];
  if (!v4)
  {
    goto LABEL_9;
  }

  if (v4 == 1)
  {
LABEL_3:
    sub_1B2111588();
    return;
  }

  v5 = v1;
  v6 = v1[3];
  v7 = v1[4];
  sub_1B21139A0(v1, v6);
  v8 = *(v7 + 16);

  v9 = v8(v6, v7);
  v11 = v10;
  v12 = sub_1B2252220();
  v14 = sub_1B214A5A8(v12, v13, v9, v11, v4);
  v16 = v15;

  if (v14 == 1)
  {
    goto LABEL_9;
  }

  if (!v16)
  {

LABEL_9:
    sub_1B21E7918(v4);
    goto LABEL_10;
  }

  v17 = sub_1B21CA838(v5[6], v16);

  sub_1B21E7918(v4);
  if ((v17 & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_10:
  *(v2 + 184) = 1;
  sub_1B2111588();

  TransactionObserver.stopObservingDatabaseChangesUntilNextTransaction()();
}

void sub_1B21E5D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1B2111F14();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v132 = v24;
  v25 = *v20;
  v26 = *v20;
  v27 = sub_1B22520F0();
  v28 = sub_1B211280C(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1B2111844();
  v35 = v34 - v33;
  v36 = sub_1B2252120();
  v37 = sub_1B211280C(v36);
  v131 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37);
  sub_1B2111844();
  v43 = v42 - v41;
  v134 = *(v25 + 104);
  v44 = *(v134 + 8);
  v133 = *(v25 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v46 = sub_1B211280C(AssociatedTypeWitness);
  v48 = *(v47 + 64);
  v49 = MEMORY[0x1EEE9AC00](v46);
  v50 = MEMORY[0x1EEE9AC00](v49);
  v52 = &v109 - v51;
  v53 = MEMORY[0x1EEE9AC00](v50);
  v55 = &v109 - v54;
  v56 = MEMORY[0x1EEE9AC00](v53);
  if (*(v23 + 184) == 1)
  {
    v120 = v59;
    v125 = &v109 - v57;
    v121 = v43;
    v127 = v58;
    v122 = v35;
    v123 = v36;
    v124 = v30;
    *(v23 + 184) = 0;
    v60 = v23[5];
    v61 = v56;
    sub_1B21E8558(0, &qword_1EB7A2798, 0x1E696AD10);
    sub_1B2161A20(&qword_1EB7A27A0, &qword_1B2260EA0);
    type metadata accessor for Database();
    v126 = v61;
    swift_getFunctionTypeMetadata1();
    sub_1B2252B00();
    sub_1B21180CC();
    sub_1B21E2BF4(sub_1B21E89E8, 0, sub_1B21E78C8);
    v130 = v142;
    v129 = v143;
    v62 = v146;
    v63 = v147;
    v64 = v148;
    if (v148)
    {
      v114 = v139;
      v119 = v140;
      v118 = v141;
      v115 = v144;
      v116 = v145;
      v117 = v146;
      v113 = v27;
      v65 = v149;
      v128 = v138;
      v66 = swift_allocObject();
      v67 = *(v26 + 80);
      v68 = v133;
      v66[2] = v67;
      v66[3] = v68;
      v69 = *(v26 + 96);
      v70 = v134;
      v66[4] = v69;
      v66[5] = v70;
      v66[6] = v64;
      v66[7] = v65;
      v71 = sub_1B21E7B74;
      if (v128 != 1)
      {
        v111 = v67;
        v112 = v63;
        if (v130)
        {
          v130();
        }

        v72 = v127;
        if (v23[4] != 1)
        {
          v77 = MEMORY[0x1EEE9AC00](*(v23 + 24));
          v78 = v133;
          *(&v109 - 8) = v111;
          *(&v109 - 7) = v78;
          v79 = v134;
          *(&v109 - 6) = v69;
          *(&v109 - 5) = v79;
          *(&v109 - 4) = sub_1B21E7B74;
          *(&v109 - 3) = v66;
          *(&v109 - 2) = v132;
          v80 = v126;
          sub_1B212B00C(v77, sub_1B21E7B44, (&v109 - 10), v126, v55);
          v81 = v72;
          v82 = *(v72 + 32);
          v83 = v125;
          v84 = v55;
          v85 = v80;
          v82(v125, v84);
LABEL_28:
          v132 = v23[6];
          v95 = v120;
          (*(v81 + 16))(v120, v83, v85);
          v96 = (*(v81 + 80) + 56) & ~*(v81 + 80);
          v97 = swift_allocObject();
          v98 = v133;
          v97[2] = v111;
          v97[3] = v98;
          v99 = v134;
          v97[4] = v69;
          v97[5] = v99;
          v97[6] = v23;
          (v82)(v97 + v96, v95, v85);
          v135[4] = sub_1B21E7928;
          v135[5] = v97;
          v135[0] = MEMORY[0x1E69E9820];
          v135[1] = 1107296256;
          v135[2] = sub_1B21E5730;
          v135[3] = &unk_1F2971FF0;
          v100 = _Block_copy(v135);

          v101 = v121;
          sub_1B2252100();
          v137[0] = MEMORY[0x1E69E7CC0];
          sub_1B21202AC(qword_1ED85E0C0, MEMORY[0x1E69E7F60]);
          sub_1B21619D8(&qword_1EB7A27A8, &qword_1B225E820);
          sub_1B21E8598(&qword_1ED85E0B8, &qword_1EB7A27A8, &qword_1B225E820);
          v102 = v122;
          v103 = v113;
          sub_1B2252BC0();
          MEMORY[0x1B2742540](0, v101, v102, v100);
          sub_1B2115240();
          _Block_release(v100);
          sub_1B2112B88();
          sub_1B2117D58(&v150);
          v104(v102, v103);
          sub_1B2117D58(&a15);
          v105(v101, v123);
          sub_1B2117D58(&a11);
          v106(v125, v85);

          goto LABEL_29;
        }

        sub_1B211B358();
        v135[0] = sub_1B2252190();
        MEMORY[0x1EEE9AC00](v135[0]);
        *(&v109 - 4) = v132;
        *(&v109 - 3) = v23;
        *(&v109 - 2) = sub_1B21E7B74;
        *(&v109 - 1) = v66;
        v73 = v126;
        sub_1B2237994(v135, sub_1B21E78E4);
        v86 = *(v72 + 32);
        v86(v125, v52, v73);
        v110 = v86;
        if (v135[0])
        {
          v87 = sub_1B21E79E0(v135[0]);
        }

        else
        {
          v87 = 0;
        }

        v136 = v87;
        sub_1B21C9D20(v137);

        v88 = v137[0];
        if (!v119)
        {
LABEL_27:
          v94 = v23[22];
          v23[22] = v88;
          sub_1B21E7918(v94);
          v85 = v126;
          v83 = v125;
          v81 = v72;
          v82 = v110;
          goto LABEL_28;
        }

        v89 = v23[22];
        if (v137[0] == 1)
        {
          if (v89 == 1)
          {

            sub_1B21E7958(1);
            sub_1B21E7918(1);
            goto LABEL_27;
          }

          sub_1B21166C8();
          sub_1B2112328(v91);

          sub_1B21E7958(v89);
        }

        else
        {
          if (v89 != 1)
          {
            v136 = v23[22];
            sub_1B21166C8();
            sub_1B2112328(v107);

            sub_1B21E7958(v89);
            sub_1B21E7958(v88);
            v108 = static DatabaseRegion.== infix(_:_:)(v137, &v136);

            sub_1B21E7918(v88);
            if (v108)
            {
              sub_1B21166C8();
              goto LABEL_26;
            }

LABEL_25:
            v137[0] = v88;
            v92 = v119;
            v119(v137);
            v93 = v92;
LABEL_26:
            sub_1B2112F4C(v93);
            goto LABEL_27;
          }

          sub_1B21166C8();
          sub_1B2112328(v90);

          sub_1B21E7958(1);
          sub_1B21E7958(v88);
        }

        sub_1B21E7918(v88);
        sub_1B21E7918(v89);
        goto LABEL_25;
      }
    }

    else
    {
      if (v138 != 1)
      {
        v75 = v144;
        v76 = v140;
        sub_1B2112F4C(v138);
        sub_1B2112F4C(v76);
        sub_1B2112F4C(v130);
        sub_1B2112F4C(v75);
        v74 = v62;
        goto LABEL_13;
      }

      v71 = 0;
    }

    v74 = v71;
LABEL_13:
    sub_1B2112F4C(v74);
  }

LABEL_29:
  sub_1B2111588();
}

void *sub_1B21E6818@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = result;
  v28 = *result;
  if (result[20])
  {
    v4 = result[10];
    v6 = result[12];
    v5 = result[13];
    v7 = result[14];
    v8 = result[15];
    v9 = result[16];
    v10 = result[18];
    v25 = result[17];
    v26 = result[19];
    v30 = result[11];
    sub_1B2112328(v4);
    sub_1B2112328(v6);
    sub_1B2112328(v7);
    v31 = v9;
    v11 = v9;
    v12 = v25;
    sub_1B2112328(v11);
    v29 = v10;
    v13 = v10;
    v14 = v26;
    result = sub_1B2112328(v13);
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v6 = 0;
    v5 = 0;
    v7 = 0;
    v8 = 0;
    v12 = 0;
    v29 = 0;
    v14 = 0;
    v4 = 1;
  }

  if (v2[7])
  {
    v27 = v4;
    v15 = v8;
    v16 = v7;
    v17 = v5;
    v18 = v6;
    v19 = v14;
    v20 = v12;
    v22 = v2[8];
    v21 = v2[9];
    v23 = swift_allocObject();
    *(v23 + 16) = *(v28 + 80);
    *(v23 + 24) = *(v28 + 88);
    *(v23 + 40) = *(v28 + 104);
    *(v23 + 48) = v22;
    v12 = v20;
    v14 = v19;
    v6 = v18;
    v5 = v17;
    v7 = v16;
    v8 = v15;
    v4 = v27;
    *(v23 + 56) = v21;

    v24 = sub_1B21E84A4;
  }

  else
  {
    v24 = 0;
    v23 = 0;
  }

  *a2 = v4;
  a2[1] = v30;
  a2[2] = v6;
  a2[3] = v5;
  a2[4] = v7;
  a2[5] = v8;
  a2[6] = v31;
  a2[7] = v12;
  a2[8] = v29;
  a2[9] = v14;
  a2[10] = v24;
  a2[11] = v23;
  return result;
}

uint64_t sub_1B21E69E0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a2;
  v9 = *a2;
  v10 = a2[24];
  v14[2] = *(*a2 + 80);
  v15 = *(v9 + 88);
  v16 = *(v8 + 104);
  v17 = a3;
  v18 = a4;
  v19 = a1;
  v11 = *(v16 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return sub_1B212B00C(v10, a5, v14, AssociatedTypeWitness, a6);
}

uint64_t sub_1B21E6ACC(void *a1, void (*a2)(char *, char *, uint64_t))
{
  v32 = *a1;
  v33 = a2;
  v31 = v32[13];
  v3 = *(v31 + 8);
  v36 = v32[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v34 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v30 - v8;
  v37 = sub_1B2252B00();
  v9 = *(v37 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v37);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v30 - v14;
  v16 = a1[5];
  result = sub_1B21E2CFC();
  if (result)
  {
    v18 = *(*a1 + 176);
    swift_beginAccess();
    (*(v3 + 32))(v33, v36, v3);
    swift_endAccess();
    (*(v9 + 16))(v13, v15, v37);
    if (sub_1B2122A98(v13, 1, AssociatedTypeWitness) == 1)
    {
      v19 = *(v9 + 8);
      v20 = v37;
      v19(v15, v37);
      return (v19)(v13, v20);
    }

    else
    {
      v33 = *(v5 + 32);
      v21 = v35;
      v33(v35, v13, AssociatedTypeWitness);
      v22 = a1[2];
      (*(v5 + 16))(v34, v21, AssociatedTypeWitness);
      v23 = (*(v5 + 80) + 56) & ~*(v5 + 80);
      v24 = swift_allocObject();
      v25 = v32;
      v26 = v36;
      *(v24 + 2) = v32[10];
      *(v24 + 3) = v26;
      v27 = v31;
      *(v24 + 4) = v25[12];
      *(v24 + 5) = v27;
      *(v24 + 6) = a1;
      v33(&v24[v23], v34, AssociatedTypeWitness);
      v28 = v22[5];
      v29 = v22[6];
      sub_1B21139A0(v22 + 2, v28);
      v36 = *(v29 + 8);

      v36(sub_1B21E7FC4, v24, v28, v29);

      (*(v5 + 8))(v35, AssociatedTypeWitness);
      return (*(v9 + 8))(v15, v37);
    }
  }

  return result;
}

id sub_1B21E6F00(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  v7 = *a1;
  v8 = a1[5];
  sub_1B21E8558(0, &qword_1EB7A2798, 0x1E696AD10);
  v9 = *(*(v7 + 104) + 8);
  v10 = *(v7 + 88);
  swift_getAssociatedTypeWitness();
  swift_getFunctionTypeMetadata1();
  sub_1B2252B00();
  result = sub_1B21E2BF4(a3, 0, a4);
  if (v12)
  {

    v12(a2);
    sub_1B2112F4C(v12);
    return sub_1B2112F4C(v12);
  }

  return result;
}

uint64_t *sub_1B21E7038@<X0>(uint64_t *result@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = result[20];
  if (v3)
  {
    v4 = *result;
    v5 = result[21];
    v6 = swift_allocObject();
    *(v6 + 16) = *(v4 + 80);
    *(v6 + 24) = *(v4 + 88);
    *(v6 + 40) = *(v4 + 104);
    *(v6 + 48) = v3;
    *(v6 + 56) = v5;

    v7 = sub_1B21E800C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return result;
}

uint64_t sub_1B21E7118()
{
  v1 = v0;
  v2 = *v0;
  v3 = *v0;
  v4 = v0[5];
  sub_1B21E8558(0, &qword_1EB7A2798, 0x1E696AD10);
  sub_1B2161A20(&qword_1EB7A27A0, &qword_1B2260EA0);
  v5 = *(v2 + 80);
  sub_1B2252B00();
  swift_getTupleTypeMetadata2();
  sub_1B21E2BF4(sub_1B2193D34, 0, sub_1B21E84D0);
  memcpy(__dst, __src, 0x50uLL);
  v6 = v38;
  if (__dst[0] == 1)
  {
    return swift_unknownObjectRelease();
  }

  v31 = v5;
  v8 = __dst[6];
  v9 = __dst[8];
  v36 = __dst[4];
  v34 = __dst[2];
  v35 = __dst[5];
  v32 = __dst[1];
  v33 = __dst[3];
  if (__dst[8])
  {
    sub_1B2112130(__dst[0]);
    v10 = sub_1B2112328(v9);
    v11 = v9(v10);
  }

  else
  {
    sub_1B2112130(__dst[0]);
    v11 = sub_1B2112328(0);
  }

  if (v6)
  {
    v19 = v8;
    v20 = *(v3 + 96);
    v21 = *(v20 + 56);
    swift_unknownObjectRetain();

    v21(sub_1B21E8554, v1, v31, v20);
    swift_unknownObjectRelease();

    sub_1B211F6E8(v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v3, v32, v33, v34, v35, v36);
    sub_1B2112F4C(v19);
    sub_1B2112F4C(v9);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1B211F6E8(v11, v12, v13, v14, v15, v16, v17, v18, v30, v31, v3, v32, v33, v34, v35, v36);
    sub_1B2112F4C(v8);
    sub_1B2112F4C(v9);
  }

  return sub_1B21E84EC(__dst);
}

uint64_t sub_1B21E737C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *a1;
  if (a1[20])
  {
    v6 = a1[10];
    v7 = a1[11];
    v22 = a1[10];
    v8 = a1[12];
    v28 = a1[13];
    v9 = a1[14];
    v10 = a1[15];
    v11 = a1[16];
    v12 = a1[17];
    v21 = v4;
    v14 = a1[18];
    v13 = a1[19];
    v24 = v7;
    sub_1B2112328(v6);
    v23 = v8;
    v15 = v8;
    v16 = v9;
    sub_1B2112328(v15);
    sub_1B2112328(v9);
    sub_1B2112328(v11);
    v17 = v13;
    v5 = v21;
    sub_1B2112328(v14);
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v28 = 0;
    v16 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v14 = 0;
    v17 = 0;
    v22 = 1;
  }

  memcpy(__dst, a1 + 10, 0x60uLL);
  *(a1 + 5) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 9) = 0u;
  *(a1 + 10) = 0u;
  v25 = *(v5 + 80);
  v26 = *(v5 + 96);
  type metadata accessor for ValueWriteOnlyObserver.NotificationCallbacks();
  v18 = sub_1B2252B00();
  (*(*(v18 - 8) + 8))(__dst, v18);
  *a2 = v22;
  a2[1] = v24;
  v19 = v28;
  a2[2] = v23;
  a2[3] = v19;
  a2[4] = v16;
  a2[5] = v10;
  a2[6] = v11;
  a2[7] = v12;
  a2[8] = v14;
  a2[9] = v17;
  result = a1[7];
  if (result)
  {
    result = swift_unknownObjectRetain();
  }

  a2[10] = result;
  return result;
}

id sub_1B21E7534(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  result = sub_1B21E2D6C();
  if (v7 != 1)
  {
    v5 = v11;
    if (v10)
    {
      v10(a2);
      sub_1B2112F4C(v7);
      sub_1B2112F4C(v8);
      sub_1B2112F4C(v9);
      v6 = v10;
      v5 = v11;
    }

    else
    {
      sub_1B2112F4C(v7);
      sub_1B2112F4C(v8);
      v6 = v9;
    }

    sub_1B2112F4C(v6);

    return sub_1B2112F4C(v5);
  }

  return result;
}

uint64_t sub_1B21E76A4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *a1;
  if (a1[20])
  {
    v6 = a1[10];
    v7 = a1[11];
    v22 = a1[10];
    v8 = a1[12];
    v28 = a1[13];
    v9 = a1[14];
    v10 = a1[15];
    v11 = a1[16];
    v12 = a1[17];
    v21 = v4;
    v13 = a1[18];
    v14 = a1[19];
    v24 = v7;
    sub_1B2112328(v6);
    v23 = v8;
    v15 = v8;
    v16 = v9;
    sub_1B2112328(v15);
    sub_1B2112328(v9);
    sub_1B2112328(v11);
    v17 = v14;
    v5 = v21;
    sub_1B2112328(v13);
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v28 = 0;
    v16 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v17 = 0;
    v22 = 1;
  }

  memcpy(__dst, a1 + 10, 0x60uLL);
  *(a1 + 5) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 9) = 0u;
  *(a1 + 10) = 0u;
  v25 = *(v5 + 80);
  v26 = *(v5 + 96);
  type metadata accessor for ValueWriteOnlyObserver.NotificationCallbacks();
  v18 = sub_1B2252B00();
  result = (*(*(v18 - 8) + 8))(__dst, v18);
  *a2 = v22;
  a2[1] = v24;
  v20 = v28;
  a2[2] = v23;
  a2[3] = v20;
  a2[4] = v16;
  a2[5] = v10;
  a2[6] = v11;
  a2[7] = v12;
  a2[8] = v13;
  a2[9] = v17;
  return result;
}

uint64_t sub_1B21E7868(void *a1)
{
  v2 = a1[7];
  v1 = a1[8];
  v3 = a1[9];
  a1[8] = 0;
  a1[9] = 0;
  a1[7] = 0;
  return sub_1B21E8464(v2);
}

uint64_t sub_1B21E7918(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1B21E7940(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B21E7958(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

void *sub_1B21E7968(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v6 = sub_1B21E7BA4(v5, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_1B21E79E0(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      v2 = sub_1B21E7968(v9, v4, v2);
      MEMORY[0x1B2743C50](v9, -1, -1);
      goto LABEL_5;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v5 = v10 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1B2148CEC(0, v4, v5);
  v6 = sub_1B21E7BA4(v5, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }

  else
  {
    v2 = v6;
  }

LABEL_5:
  v7 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t sub_1B21E7B74(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_1B21E7BA4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v23 = result;
  v24 = 0;
  v3 = 0;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_11:
    v12 = v9 | (v3 << 6);
    v13 = (*(a3 + 48) + 32 * v12);
    v15 = v13[1];
    v14 = v13[2];
    v16 = v13[3];
    v17 = v12;
    v18 = (*(a3 + 56) + 16 * v12);
    v20 = *v18;
    v19 = v18[1];
    type metadata accessor for Database();

    LOBYTE(v14) = static Database.isSQLiteInternalTable(_:)();

    v7 = v26;
    if ((v14 & 1) == 0)
    {
      *(v23 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
        return sub_1B21E7D4C(v23, a2, v24, a3);
      }
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
      return sub_1B21E7D4C(v23, a2, v24, a3);
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B21E7D4C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1B21619D8(&qword_1EB7A27B0, &qword_1B225E828);
  result = sub_1B2252F00();
  v8 = result;
  if (a2 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a1;
  }

  v10 = 0;
  v11 = result + 64;
  v36 = v4;
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v37 = (v9 - 1) & v9;
LABEL_16:
    v15 = v12 | (v10 << 6);
    v16 = (*(v4 + 48) + 32 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[3];
    v38 = v16[2];
    v20 = (*(v4 + 56) + 16 * v15);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(v8 + 40);
    sub_1B2253420();

    sub_1B2252370();
    result = sub_1B2253470();
    v24 = -1 << *(v8 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v11 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v11 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v11 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v11 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v8 + 48) + 32 * v27);
    *v32 = v17;
    v32[1] = v18;
    v32[2] = v38;
    v32[3] = v19;
    v33 = (*(v8 + 56) + 16 * v27);
    *v33 = v21;
    v33[1] = v22;
    ++*(v8 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v36;
    v9 = v37;
    if (!v5)
    {
      return v8;
    }
  }

  v13 = v10;
  while (1)
  {
    v10 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v10 >= a2)
    {
      return v8;
    }

    v14 = a1[v10];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v37 = (v14 - 1) & v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1B21E800C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return v1();
}

void sub_1B21E8058(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a4;
    if (*(a4 + 16) == a3)
    {
    }

    else
    {
      sub_1B21619D8(&qword_1EB7A27B8, &qword_1B225E840);
      v7 = sub_1B2252F00();
      v8 = v7;
      if (a2 < 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = *a1;
      }

      v10 = 0;
      v11 = v7 + 64;
      v35 = v4;
      while (v9)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_16:
        v15 = v12 | (v10 << 6);
        v16 = *(v4 + 56);
        v17 = (*(v4 + 48) + 16 * v15);
        v18 = *v17;
        v19 = v17[1];
        v20 = *(v16 + 8 * v15);
        v21 = v8[5];
        sub_1B2253420();

        sub_1B2252370();
        v22 = sub_1B2253470();
        sub_1B212225C(v22);
        if (((v25 << v24) & ~*(v11 + 8 * v23)) == 0)
        {
          sub_1B2114850();
          while (++v26 != v28 || (v27 & 1) == 0)
          {
            v29 = v26 == v28;
            if (v26 == v28)
            {
              v26 = 0;
            }

            v27 |= v29;
            if (*(v11 + 8 * v26) != -1)
            {
              sub_1B2118398();
              goto LABEL_25;
            }
          }

          goto LABEL_29;
        }

        sub_1B2112110();
LABEL_25:
        sub_1B2111AE8();
        *(v11 + v30) |= v31;
        v33 = (v8[6] + 16 * v32);
        *v33 = v18;
        v33[1] = v19;
        *(v8[7] + 8 * v32) = v20;
        sub_1B21225E4();
        if (v34)
        {
          goto LABEL_30;
        }

        v4 = v35;
      }

      v13 = v10;
      while (1)
      {
        v10 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v10 >= a2)
        {
          return;
        }

        v14 = a1[v10];
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }
}

void sub_1B21E8248()
{
  sub_1B2111F14();
  if (!v2)
  {
    goto LABEL_27;
  }

  v4 = v3;
  if (*(v3 + 16) == v2)
  {

LABEL_27:
    sub_1B2111588();
    return;
  }

  v5 = v1;
  v6 = v0;
  sub_1B21619D8(&qword_1EB7A1BE8, &qword_1B226C280);
  v7 = sub_1B2252F00();
  v8 = v7;
  if (v5 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v6;
  }

  v10 = 0;
  v11 = v7 + 64;
  v34 = v4;
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_16:
    v15 = v12 | (v10 << 6);
    v16 = *(v4 + 56);
    v17 = (*(v4 + 48) + 16 * v15);
    v18 = *v17;
    v19 = v17[1];
    memcpy(__dst, (v16 + 216 * v15), 0xD2uLL);
    v20 = v8[5];
    sub_1B2253420();

    sub_1B2181728(__dst, v35);
    sub_1B2252370();
    v21 = sub_1B2253470();
    sub_1B212225C(v21);
    if (((v24 << v23) & ~*(v11 + 8 * v22)) == 0)
    {
      sub_1B2114850();
      while (++v25 != v27 || (v26 & 1) == 0)
      {
        v28 = v25 == v27;
        if (v25 == v27)
        {
          v25 = 0;
        }

        v26 |= v28;
        if (*(v11 + 8 * v25) != -1)
        {
          sub_1B2118398();
          goto LABEL_25;
        }
      }

      goto LABEL_29;
    }

    sub_1B2112110();
LABEL_25:
    sub_1B2111AE8();
    *(v11 + v29) |= v30;
    v32 = (v8[6] + 16 * v31);
    *v32 = v18;
    v32[1] = v19;
    memcpy((v8[7] + 216 * v31), __dst, 0xD2uLL);
    sub_1B21225E4();
    if (v33)
    {
      goto LABEL_30;
    }

    v4 = v34;
  }

  v13 = v10;
  while (1)
  {
    v10 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v10 >= v5)
    {
      goto LABEL_27;
    }

    v14 = v6[v10];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v9 = (v14 - 1) & v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_1B21E8464(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1B21E84A4(void *a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  return v2(*a1);
}

uint64_t sub_1B21E84EC(uint64_t a1)
{
  v2 = sub_1B21619D8(&qword_1EB7A27A0, &qword_1B2260EA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B21E8558(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1B21E8598(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1B2161A20(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B21E85EC()
{
  v1 = *(v0 + 40);
  v2 = v0 + ((*(*(*(v0 + 24) - 8) + 80) + 48) & ~*(*(*(v0 + 24) - 8) + 80));
  return (*(*(v1 + 8) + 24))();
}

unint64_t sub_1B21E865C(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_1B21E866C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    sub_1B2112F4C(result);
    sub_1B2112F4C(a3);
    sub_1B2112F4C(a5);
    sub_1B2112F4C(a7);
    sub_1B2112F4C(a9);
  }

  return result;
}

uint64_t sub_1B21E8750(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_1B21E8804(uint64_t (*a1)(uint64_t))
{
  sub_1B2114864();
  v1 = *(*(swift_getAssociatedTypeWitness() - 8) + 80);
  v2 = sub_1B211AE20();

  return a1(v2);
}

id sub_1B21E88C4(uint64_t a1, void (*a2)(id))
{
  sub_1B2114864();
  v4 = *(*(swift_getAssociatedTypeWitness() - 8) + 80);
  v5 = sub_1B211AE20();
  return sub_1B21E6F00(v5, v6, a1, a2);
}

uint64_t sub_1B21E89EC@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  sub_1B21115E0();
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1B2111844();
  v9 = v8 - v7;
  v10 = sub_1B2253480();
  sub_1B21115E0();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v19 - v16;
  a1(v9);
  swift_storeEnumTagMultiPayload();
  return (*(v12 + 32))(a2, v17, v10);
}

uint64_t DatabaseQueue.__allocating_init(configuration:)(uint64_t a1)
{
  sub_1B2114EE8();
  v2 = swift_allocObject();
  DatabaseQueue.init(configuration:)(a1);
  return v2;
}

uint64_t DatabaseQueue.path.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);

  return v2;
}

uint64_t DatabaseQueue.__allocating_init(path:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B2114EE8();
  v6 = swift_allocObject();
  DatabaseQueue.init(path:configuration:)(a1, a2, a3);
  return v6;
}

void *DatabaseQueue.init(configuration:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for Configuration();
  v6 = sub_1B2111894(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1B2111844();
  sub_1B212392C(a1, v10 - v9);
  type metadata accessor for SerializedDatabase();
  swift_allocObject();
  sub_1B21166D4();
  sub_1B2123A30();
  v12 = v11;
  sub_1B2133D70(a1);
  v2[2] = v12;
  return v2;
}

uint64_t DatabaseQueue.concurrentRead<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v7 = sub_1B2253480();
  v8 = sub_1B2111894(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v14[-v11];
  type metadata accessor for DatabaseFuture();
  v15 = a3;
  v16 = v3;
  v17 = a1;
  v18 = a2;
  sub_1B21E89EC(sub_1B21E9688, v12);
  return sub_1B21660C0(v12);
}

void DatabaseQueue.spawnConcurrentRead(_:)(void (*a1)(void *, uint64_t))
{
  v3 = *(v1 + 16);
  sub_1B22247F4("/Library/Caches/com.apple.xbs/Sources/GRDB/GRDB/Core/SerializedDatabase.swift", 77, 2, 209, v3);
  sub_1B21E9498(*(v3 + 16), a1);
}

uint64_t sub_1B21E8FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 16);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;

  sub_1B2223DB4(a4, v9);
}

void DatabaseQueue._add<A>(observation:scheduling:onChange:)(const void *a1)
{
  v3 = *v1;
  v4 = type metadata accessor for Configuration();
  v5 = sub_1B2111894(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1B2111844();
  v10 = v9 - v8;
  DatabaseQueue.configuration.getter(v9 - v8);
  v11 = *(v10 + 1);
  sub_1B2133D70(v10);
  memcpy(__dst, a1, sizeof(__dst));
  if (v11 == 1)
  {
    v12 = sub_1B2112C08();
    sub_1B22216F8(v12, v13, v14, v15, v16, v17, v18, v19, v20);
  }

  else
  {
    sub_1B2112C08();
    sub_1B2163818();
  }
}

uint64_t sub_1B21E9264(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = sub_1B2251BA0();
  sub_1B21115E0();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1B2111844();
  v13 = v12 - v11;
  sub_1B2251B90();

  a4(v13);

  return (*(v7 + 8))(v13, v5);
}

void sub_1B21E934C(void *a1, void (*a2)(void *, uint64_t))
{
  v6 = 0;
  Database.beginTransaction(_:)(&v6);
  if (v4)
  {
    v5 = v4;
    a2(v4, 1);
  }

  else
  {
    sub_1B2152610();
    a2(a1, 0);
    sub_1B215476C();
    Database.commit()();
    if (!v4)
    {
      return;
    }
  }
}

uint64_t sub_1B21E9438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = *(a1 + 16);
  result = sub_1B22243C0(sub_1B21E9754);
  if (v5)
  {
    *a5 = v5;
  }

  return result;
}

void sub_1B21E9498(void *a1, void (*a2)(void *, uint64_t))
{
  if (Database.isInsideTransaction.getter())
  {
    sub_1B2252EC0();
    __break(1u);
    return;
  }

  v8 = 0;
  Database.beginTransaction(_:)(&v8);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    a2(v4, 1);

LABEL_5:
    return;
  }

  sub_1B2152610();
  a2(a1, 0);
  sub_1B215476C();
  Database.commit()();
  v5 = v7;
  if (v7)
  {
    goto LABEL_5;
  }
}

uint64_t DatabaseQueue.inTransaction(_:_:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v6[16] = *a1;
  v7 = a2;
  v8 = a3;
  return sub_1B2113C20(sub_1B21E96E0, v6);
}

uint64_t sub_1B21E9638(uint64_t a1, char a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v8 = a2;

  return sub_1B223C180(&v8, a1, a3, a4, a1);
}

uint64_t sub_1B21E96B4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1, 0);
}

void *SQLSubqueryable.sqlExpression.getter(uint64_t a1, uint64_t a2)
{
  sub_1B2112C2C(a1, a2);
  v3();
  sub_1B21D0350(__src);
  return memcpy(v2, __src, 0xA3uLL);
}

void *SQLSubqueryable.exists()(uint64_t a1, uint64_t a2)
{
  sub_1B2112C2C(a1, a2);
  v3();
  __src[162] = 0;
  sub_1B21D04EC(__src);
  return memcpy(v2, __src, 0xA3uLL);
}

const void *sub_1B21E98EC(const void *a1)
{
  sub_1B2114F78();
  memcpy(v3, v4, v5);
  sub_1B2114F78();
  memcpy(v6, v7, v8);
  if (sub_1B214D180(v56) == 1)
  {
    v9 = sub_1B21197F4(v56);
    memcpy(__dst, v9, 0xA2uLL);
    sub_1B211589C(v51);
    v10 = sub_1B21197F4(v51);
    sub_1B214D18C(v55, &v31);
    sub_1B2136148(v10, &v31);
    sub_1B21366E4(__dst, &v31);
    sub_1B2137278();
    sub_1B2115268(v11, v12, v13, v14, v15, v16, v17, v18, v31.n128_i64[0], v31.n128_i64[1], v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51[0], v51[1], v51[2], v51[3], v51[4], v51[5], v51[6], v51[7], v51[8], v51[9], v51[10], v51[11], v51[12], v51[13], v51[14], v51[15], v51[16], v51[17], v51[18], v51[19], v51[20], v52[0]);
    v52[168] = 0;
    v53 = __dst;
    a1 = sub_1B224F530();
    sub_1B2142BCC(v52);
    sub_1B214D498(v55);
  }

  else
  {
    v19 = *sub_1B21197F4(v56);
    type metadata accessor for StatementArgumentsSink();
    swift_allocObject();
    sub_1B211589C(&v31);
    v20 = *sub_1B21197F4(&v31);

    v21 = sub_1B2114D98(0);
    v22 = MEMORY[0x1E69E7CC0];
    sub_1B2116B4C();
    type metadata accessor for SQLGenerationContext();
    swift_allocObject();

    v24 = sub_1B2117164(v23, v21, v22);
    v51[0] = v19;
    v25 = sub_1B2119120(v24);
    if (v1)
    {

      sub_1B214D498(v55);
    }

    else
    {
      v27 = v25;
      v28 = v26;
      sub_1B214D498(v55);
      v30 = Database.cachedStatement(sql:)(v27, v28);

      LODWORD(v27) = sqlite3_column_count(*(v30 + 16));

      return v27;
    }
  }

  return a1;
}

uint64_t SQLSubquery.sqlSubquery.getter()
{
  sub_1B2114F78();
  memcpy(v0, v1, v2);
  sub_1B2114F78();
  memcpy(v3, v4, v5);
  return sub_1B214CFE0(v8, v7);
}

uint64_t sub_1B21E9BE0(uint64_t result, __int16 a2)
{
  v2 = *(result + 104) & 1;
  v3 = *(result + 160) & 0x1FF | (a2 << 15);
  *(result + 64) &= 1uLL;
  *(result + 104) = v2;
  *(result + 160) = v3;
  return result;
}

uint64_t AnyDatabaseCancellable.__allocating_init(_:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_1B21A1628(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = sub_1B21E9F54(v8, v1, v3, v4);
  sub_1B2113208(a1);
  return v10;
}

uint64_t AnyDatabaseCancellable.__allocating_init(cancel:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t AnyDatabaseCancellable.init(cancel:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_1B21E9D60(uint64_t a1)
{
  swift_beginAccess();
  if (*(a1 + 40))
  {
    sub_1B211EE68(a1 + 16, &v5);
    v2 = *(&v6 + 1);
    v3 = v7;
    sub_1B21139A0(&v5, *(&v6 + 1));
    (*(v3 + 8))(v2, v3);
    sub_1B2113208(&v5);
  }

  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  swift_beginAccess();
  return sub_1B21B2294(&v5, a1 + 16);
}

uint64_t AnyDatabaseCancellable.deinit()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = *(v0 + 24);
    v4 = *(v1 + 24);

    v2(v5);
    sub_1B2112F4C(v2);
    v6 = *(v1 + 16);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v1 + 24);
  sub_1B2112F4C(v6);
  return v1;
}

uint64_t AnyDatabaseCancellable.__deallocating_deinit()
{
  AnyDatabaseCancellable.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1B21E9EB8()
{
  v1 = v0;
  v3 = (v0 + 16);
  v2 = *(v0 + 16);
  if (v2)
  {
    v4 = *(v0 + 24);
    v5 = *(v1 + 24);

    v2(v6);
    sub_1B2112F4C(v2);
    v7 = *(v1 + 16);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v1 + 24);
  *v3 = 0;
  v3[1] = 0;

  return sub_1B2112F4C(v7);
}

uint64_t sub_1B21E9F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[3] = a3;
  v10[4] = a4;
  v6 = sub_1B212FF14(v10);
  (*(*(a3 - 8) + 32))(v6, a1, a3);
  v7 = swift_allocObject();
  sub_1B211EE68(v10, v7 + 16);
  type metadata accessor for AnyDatabaseCancellable();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1B21EA09C;
  *(v8 + 24) = v7;
  sub_1B2113208(v10);
  return v8;
}

uint64_t NSData.databaseValue.getter@<X0>(uint64_t a1@<X8>)
{
  result = sub_1B2251DE0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = 3;
  return result;
}

uint64_t static NSData.fromDatabaseValue(_:)(uint64_t a1)
{
  v3 = sub_1B22522F0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  if (v10 == 3)
  {
    sub_1B2126638(*a1, *(a1 + 8));
  }

  else
  {
    if (v10 != 2)
    {
      return 0;
    }

    sub_1B22522E0();
    v8 = sub_1B22522B0();
    v9 = v11;
    (*(v4 + 8))(v7, v3);
    if (v9 >> 60 == 15)
    {
      return 0;
    }
  }

  v13[1] = v8;
  v13[2] = v9;
  sub_1B21EA36C(v1, &v14);
  sub_1B21267A8(v8, v9);
  return v14;
}

uint64_t sub_1B21EA254@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static NSData.fromDatabaseValue(_:)(a1);
  *a2 = result;
  return result;
}

uint64_t String.quotedDatabaseIdentifier.getter()
{
  MEMORY[0x1B2741EB0]();
  MEMORY[0x1B2741EB0](34, 0xE100000000000000);
  return 34;
}

uint64_t GRDBPrecondition(_:_:file:line:)(uint64_t (*a1)(void), uint64_t a2, void (*a3)(void))
{
  result = a1();
  if ((result & 1) == 0)
  {
    a3();
    result = sub_1B2252EC0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B21EA36C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  sub_1B21115E0();
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6);
  (*(v8 + 16))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = swift_dynamicCast();
  return sub_1B21117B4(a2, v9 ^ 1u, 1, a1);
}

uint64_t sub_1B21EA44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29[1] = a4;
  v4 = *(*(a4 + 8) + 8);
  swift_getAssociatedTypeWitness();
  sub_1B21115E0();
  v30 = v6;
  v31 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v29[0] = v29 - v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1B2252B00();
  sub_1B21115E0();
  v32 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v29 - v16;
  sub_1B21115E0();
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v29 - v23;
  v25 = v33;
  result = sub_1B2252870();
  if (!v25)
  {
    v27 = v32;
    if (sub_1B2122A98(v17, 1, AssociatedTypeWitness) == 1)
    {
      return (*(v27 + 8))(v17, v11);
    }

    else
    {
      (*(v19 + 32))(v24, v17, AssociatedTypeWitness);
      v28 = v29[0];
      sub_1B2252970();
      (*(v30 + 8))(v28, v31);
      return (*(v19 + 8))(v24, AssociatedTypeWitness);
    }
  }

  return result;
}

Swift::String __swiftcall databaseQuestionMarks(count:)(Swift::Int count)
{
  if (count < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1B21619D8(&qword_1EB7A2330, &qword_1B225EC10);
    sub_1B21EA758();
    count = sub_1B2252250();
  }

  result._object = v1;
  result._countAndFlagsBits = count;
  return result;
}

unint64_t sub_1B21EA758()
{
  result = qword_1ED85DA30;
  if (!qword_1ED85DA30)
  {
    sub_1B2161A20(&qword_1EB7A2330, &qword_1B225EC10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85DA30);
  }

  return result;
}

uint64_t sub_1B21EA7CC(uint64_t a1, uint64_t a2)
{
  sub_1B21619D8(qword_1EB7A27C0, &qword_1B225ECB8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B22546B0;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  sub_1B2253400();
}

uint64_t FilteredRequest.none()(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = sub_1B2117694();
  return v4(v3, 0);
}

uint64_t TableRequest<>.filter(keys:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1B2123510();
  v14 = v12;
  if (*(v10 + 16))
  {
    v15 = v10;
    v16 = (*(v13 + 8))(v11, v13);
    v18 = v17;
    sub_1B2117C44();
    v19 = swift_allocObject();
    v19[2] = v15;
    v19[3] = v16;
    v19[4] = v18;
    v20 = *(v14 + 8);

    sub_1B211F720();
    sub_1B2114874();
    v20();
    sub_1B2115ED4();
  }

  else
  {
    v23 = *(v12 + 8);
    sub_1B2117694();
    sub_1B2114874();
    sub_1B2115ED4();

    return v29(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
  }
}

uint64_t TableRequest<>.orderByPrimaryKey()()
{
  sub_1B2123510();
  sub_1B211D9B0(v0, v1, v2);
  v3();
  v4 = swift_allocObject();
  sub_1B2122D14(v4);
  sub_1B211F720();
  sub_1B2114874();
  v5();
  sub_1B2115ED4();
}

void TableRequest<>.filter(id:)()
{
  sub_1B2111F14();
  sub_1B2115CD0();
  sub_1B2117A40();
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = sub_1B2252B00();
  sub_1B21115E0();
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v8);
  sub_1B21225F8();
  (*(v9 + 16))(v0, v1, AssociatedTypeWitness);
  sub_1B211D6D0();
  (*(v5 + 8))(v0, v3);
  sub_1B2111588();
}

{
  sub_1B2111F14();
  sub_1B2115CD0();
  sub_1B2117A40();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = sub_1B2252B00();
  sub_1B21115E0();
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v8);
  sub_1B21225F8();
  (*(v9 + 16))(v0, v1, AssociatedTypeWitness);
  sub_1B211D6D0();
  (*(v5 + 8))(v0, v3);
  sub_1B2111588();
}

uint64_t JoinableRequest.including<A>(all:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(*(*(a5 + 8) + 16) + 8))(&v19, a3);
  sub_1B2116AB8();
  v6 = *(v5 + 8);
  v15 = sub_1B21166EC(v7, v8, v9, v10, v11, v12, v13, v14, v18, v19);
  v16(v15);
}

uint64_t JoinableRequest.including<A>(optional:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1B2112C40(a1, a2, a3, a4, a5);
  v6(v5);
  sub_1B2116AB8();
  v8 = *(v7 + 16);
  v17 = sub_1B21166EC(v9, v10, v11, v12, v13, v14, v15, v16, v20, v21);
  v18(v17);
}

uint64_t JoinableRequest.including<A>(required:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1B2112C40(a1, a2, a3, a4, a5);
  v6(v5);
  sub_1B2116AB8();
  v8 = *(v7 + 24);
  v17 = sub_1B21166EC(v9, v10, v11, v12, v13, v14, v15, v16, v20, v21);
  v18(v17);
}

uint64_t JoinableRequest.joining<A>(optional:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1B2112C40(a1, a2, a3, a4, a5);
  v6(v5);
  sub_1B2116AB8();
  v8 = *(v7 + 32);
  v17 = sub_1B21166EC(v9, v10, v11, v12, v13, v14, v15, v16, v20, v21);
  v18(v17);
}

uint64_t JoinableRequest.joining<A>(required:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1B2112C40(a1, a2, a3, a4, a5);
  v6(v5);
  sub_1B2116AB8();
  v8 = *(v7 + 40);
  v17 = sub_1B21166EC(v9, v10, v11, v12, v13, v14, v15, v16, v20, v21);
  v18(v17);
}

void JoinableRequest<>.annotated<A>(withOptional:)()
{
  sub_1B2111F14();
  v32 = v0;
  v2 = v1;
  v31 = v3;
  v5 = v4;
  v7 = v6;
  sub_1B21115E0();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1B2111844();
  v15 = v14 - v13;
  sub_1B21115E0();
  v33 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1B2111844();
  type metadata accessor for TableAlias();
  v20 = swift_allocObject();
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0u;
  *(v20 + 48) = 0;
  v21 = v2;
  (*(*(v2 + 16) + 8))(&v35, v5);
  v22 = *(v35 + 16);
  if (v22)
  {
    memcpy(v36, (v35 + 232 * v22 - 200), 0xE3uLL);
    sub_1B21819B8(v36, v34);

    v23 = v36[12];
    v30 = v36[11];
    sub_1B2136148(&v36[8], v34);
    sub_1B2181A14(v36);

    sub_1B2137224(&v36[8]);
    sub_1B21EF0CC();
    v24(v20, v5);
    JoinableRequest.joining<A>(optional:)(v15, v7, v5, v31, v21);
    (*(v9 + 8))(v15, v5);
    sub_1B2117C44();
    v25 = swift_allocObject();
    v25[2] = v30;
    v25[3] = v23;
    v25[4] = v20;
    v26 = *(v32 + 16);

    v26(sub_1B21EDAE8, v25, v7, v32);

    v27 = *(v33 + 8);
    v28 = sub_1B21140C4();
    v29(v28);
    sub_1B2111588();
  }

  else
  {
    __break(1u);
  }
}

void JoinableRequest<>.annotated<A>(withRequired:)()
{
  sub_1B2111F14();
  v34 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1B21115E0();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1B2111844();
  v16 = v15 - v14;
  sub_1B21115E0();
  v35 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1B2111844();
  v23 = v22 - v21;
  (*(*(v24 + 16) + 8))(&v37, v25);
  v26 = *(v37 + 16);
  if (v26)
  {
    v33 = v4;
    memcpy(v38, (v37 + 232 * v26 - 200), 0xE3uLL);
    sub_1B21819B8(v38, v36);

    v27 = v38[12];
    v32 = v38[11];
    sub_1B2136148(&v38[8], v36);
    sub_1B2181A14(v38);

    sub_1B2137224(&v38[8]);
    type metadata accessor for TableAlias();
    v28 = swift_allocObject();
    *(v28 + 16) = 0u;
    *(v28 + 32) = 0u;
    *(v28 + 48) = 0;
    sub_1B21EF0CC();
    v29();
    JoinableRequest.joining<A>(required:)(v16, v8, v6, v34, v2);
    (*(v10 + 8))(v16, v6);
    sub_1B2117C44();
    v30 = swift_allocObject();
    v30[2] = v32;
    v30[3] = v27;
    v30[4] = v28;
    v31 = *(v33 + 16);

    v31(sub_1B21EF09C, v30, v8, v33);

    (*(v35 + 8))(v23, v8);
    sub_1B2111588();
  }

  else
  {
    __break(1u);
  }
}

uint64_t DerivableRequest.annotated(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) + 8);
  sub_1B2117A40();
  swift_getAssociatedTypeWitness();
  type metadata accessor for AssociationAggregate();
  sub_1B22526A0();
  sub_1B2111B28();
  swift_getWitnessTable();
  return sub_1B2252520();
}

void DerivableRequest.having(_:)()
{
  sub_1B2123510();
  v2 = v1;
  v4 = v3;
  sub_1B21115E0();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B2111844();
  v12 = v11 - v10;
  v17 = *v13;
  v14 = *(v13 + 2);
  (*(v6 + 16))(v11 - v10, v0, v4);
  v18 = v17;
  v19 = v14;
  v15 = *(*(v2 + 24) + 8);
  sub_1B2117A40();
  swift_getAssociatedTypeWitness();
  v16 = type metadata accessor for AssociationAggregate();
  sub_1B21DF300(v12, v16, v4, v2);
  v20 = &type metadata for SQLExpression;
  v21 = &protocol witness table for SQLExpression;
  *&v18 = swift_allocObject();
  memcpy((v18 + 16), v22, 0xA3uLL);
  AggregatingRequest.having(_:)(&v18, v4, *(v2 + 8));
  (*(v6 + 8))(v12, v4);
  sub_1B2113208(&v18);
  sub_1B2115ED4();
}

uint64_t sub_1B21EB8A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = (a3 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a1 && *v7 == a2;
    if (v8 || (sub_1B22531F0() & 1) != 0)
    {
      return v5;
    }

    ++v5;
    v7 += 2;
  }

  return 0;
}

uint64_t TableRequest<>.groupByPrimaryKey()()
{
  sub_1B2123510();
  sub_1B211D9B0(v0, v1, v2);
  v3();
  v4 = swift_allocObject();
  sub_1B2122D14(v4);
  sub_1B211F720();
  sub_1B2114874();
  v5();
  sub_1B2115ED4();
}

void sub_1B21EBA98(uint64_t a1@<X8>)
{
  *(a1 + 24) = MEMORY[0x1E69E6370];
  *(a1 + 32) = &protocol witness table for Bool;
  *a1 = 0;
}

uint64_t sub_1B21EBAB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, _OWORD *a5@<X8>)
{
  v25 = a5;
  v9 = sub_1B2251E90();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  *&v26 = a2;
  *(&v26 + 1) = a3;
  v27 = a4;
  (*(v17 + 16))(&v24 - v16, a1, AssociatedTypeWitness);
  swift_dynamicCast();
  sub_1B218EF84(v28);
  (*(v10 + 8))(v13, v9);
  v18 = v29;
  if (v29)
  {
    v19 = v30;
    sub_1B21139A0(v28, v29);
    (*(v19 + 24))(&v26, v18, v19);
    v24 = v26;
    v20 = v27;
    result = sub_1B2113208(v28);
    v22 = v24;
  }

  else
  {
    result = sub_1B212AC5C(v28, &qword_1EB7A0E30, &unk_1B2259360);
    v22 = 0uLL;
    v20 = -1;
  }

  v23 = v25;
  *v25 = v22;
  *(v23 + 16) = v20;
  return result;
}

uint64_t sub_1B21EBD08(uint64_t a1, char a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = sub_1B2251EE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v12 + 16))(v24 - v11, a1, AssociatedTypeWitness);
  swift_dynamicCast();
  if (a2)
  {
    if (a2 == 1)
    {
      v13 = sub_1B2251EB0();
      v28 = MEMORY[0x1E69E6158];
      v29 = &protocol witness table for String;
      v25 = v13;
      v26 = v14;
    }

    else
    {
      sub_1B2251EB0();
      v17 = sub_1B2252220();
      v19 = v18;

      v28 = MEMORY[0x1E69E6158];
      v29 = &protocol witness table for String;
      v25 = v17;
      v26 = v19;
    }
  }

  else
  {
    v28 = &type metadata for DatabaseValue;
    v29 = &protocol witness table for DatabaseValue;
    v24[0] = sub_1B2251ED0();
    v24[1] = v15;
    v25 = MEMORY[0x1B27418E0](v24, 16);
    v26 = v16;
    v27 = 3;
  }

  (*(v5 + 8))(v8, v4);
  v20 = v28;
  v21 = v29;
  sub_1B21139A0(&v25, v28);
  (v21[3])(v20, v21);
  result = sub_1B2113208(&v25);
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B21EBFBC@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v24 = a3;
  v6 = *(a1 + 16);
  if (v6)
  {
    *&v23 = a4;
    v29 = MEMORY[0x1E69E7CC0];
    sub_1B213CA68();
    v9 = v29;
    v10 = (a1 + 32);
    while (1)
    {
      v27 = *v10;

      sub_1B21EC29C(&v27, a2, v24, &v26, v28);
      if (v5)
      {
        break;
      }

      v5 = 0;

      memcpy(v25, v28, sizeof(v25));
      v29 = v9;
      v11 = *(v9 + 16);
      if (v11 >= *(v9 + 24) >> 1)
      {
        sub_1B213CA68();
        v9 = v29;
      }

      *(v9 + 16) = v11 + 1;
      memcpy((v9 + 168 * v11 + 32), v25, 0xA3uLL);
      ++v10;
      if (!--v6)
      {
        a4 = v23;
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    if (qword_1ED85D4E8 != -1)
    {
      v22 = a4;
      swift_once();
      a4 = v22;
    }

    v23 = xmmword_1ED85D4F0;
    v13 = xmmword_1ED85D500;
    v14 = word_1ED85D510;
    v15 = HIBYTE(word_1ED85D510);
    v16 = byte_1ED85D512;
    a4[3] = &type metadata for SQLExpression;
    a4[4] = &protocol witness table for SQLExpression;
    v17 = a4;
    v18 = swift_allocObject();
    v24 = &v23;
    *v17 = v18;
    v19 = v18;
    v28[0] = v23;
    v28[1] = v13;
    LOBYTE(v28[2]) = v14;
    BYTE1(v28[2]) = v15;
    BYTE2(v28[2]) = v16;
    MEMORY[0x1EEE9AC00](v18);
    sub_1B21619D8(&qword_1EB7A1CD8, &unk_1B225EDE0);
    sub_1B211AB74(&qword_1ED85D868, &qword_1EB7A1CD8, &unk_1B225EDE0);
    swift_getKeyPath();

    sub_1B224F214();
    v21 = v20;

    sub_1B213B4BC(v28, v21, v19 + 16);
  }
}

uint64_t sub_1B21EC29C@<X0>(uint64_t *a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, void *a4@<X4>, uint64_t a5@<X8>)
{
  v10 = *a1;
  result = sub_1B21BB544(*a1, a2);
  if (v5)
  {
    *a4 = v5;
    return result;
  }

  v12 = result;
  if (result)
  {
    v50 = a5;
    v13 = *(result + 16);
    if (v13)
    {
      v53 = v10;
      *v62 = MEMORY[0x1E69E7CC0];
      sub_1B2116B10();
      v14 = *v62;
      v15 = (v12 + 40);
      do
      {
        v16 = *(v15 - 1);
        v17 = *v15;
        v18 = sub_1B2252220();
        v20 = v19;
        *v62 = v14;
        v21 = *(v14 + 16);
        if (v21 >= *(v14 + 24) >> 1)
        {
          sub_1B2116B10();
          v14 = *v62;
        }

        *(v14 + 16) = v21 + 1;
        v22 = v14 + 16 * v21;
        *(v22 + 32) = v18;
        *(v22 + 40) = v20;
        v15 += 2;
        --v13;
      }

      while (v13);

      v10 = v53;
    }

    else
    {

      v14 = MEMORY[0x1E69E7CC0];
    }

    *v62 = sub_1B216E9BC(v10);
    sub_1B21EDE64(v62, v14);

    v23 = *v62;
    v24 = *(*v62 + 16);
    if (v24)
    {
      v75 = MEMORY[0x1E69E7CC0];
      sub_1B213CA68();
      v25 = 0;
      v26 = v23 + 32;
      v27 = v75;
      v51 = v24 - 1;
      while (1)
      {
        if (v25 >= *(v23 + 16))
        {
          __break(1u);
          goto LABEL_36;
        }

        v52 = v26;
        sub_1B2122B00(v26, v72, &qword_1EB7A1270, qword_1B225EDF0);
        v28 = v72[0];
        v29 = v72[1];
        sub_1B2122B00(&v73, v62, &qword_1EB7A0E30, &unk_1B2259360);
        v30 = *&v62[24];
        v54 = v25;
        if (*&v62[24])
        {
          v31 = *&v62[32];
          v32 = sub_1B21139A0(v62, *&v62[24]);
          *(&v70 + 1) = v30;
          v71 = *(v31 + 8);
          v33 = sub_1B212FF14(&v69);
          (*(*(v30 - 8) + 16))(v33, v32, v30);

          sub_1B2113208(v62);
        }

        else
        {

          sub_1B212AC5C(v62, &qword_1EB7A0E30, &unk_1B2259360);
          v69 = 0u;
          v70 = 0u;
          v71 = 0;
        }

        v34 = v23;
        sub_1B2122B00(&v69, v65, &qword_1EB7A10F0, &qword_1B225D320);
        v35 = v66;
        if (v66)
        {
          v36 = v67;
          sub_1B21139A0(v65, v66);
          v37 = *(v36 + 8);

          v37(v62, v35, v36);
          sub_1B2113208(v65);
        }

        else
        {

          sub_1B212AC5C(v65, &qword_1EB7A10F0, &qword_1B225D320);
          *v62 = 0uLL;
          v62[16] = 4;
          sub_1B2127D7C(v62);
        }

        memcpy(v68, v62, 0xA3uLL);
        v60[0] = v28;
        v60[1] = v29;
        sub_1B2134F5C(v60);
        memcpy(v61, v60, sizeof(v61));
        memcpy(v62, v60, sizeof(v62));
        memcpy(v63, v68, sizeof(v63));
        memcpy(v64, v68, 0xA3uLL);
        if (sub_1B2127E1C(v64) == 2)
        {
          v38 = sub_1B2127E38(v64);
          v39 = *v38;
          v40 = *(v38 + 8);
          v41 = *(v38 + 16);
          v23 = v34;
          if (v41 == 4 && !(v40 | v39))
          {

            sub_1B2127DC0(v68, v59);
            sub_1B2113A44(0, 0, 4);
            sub_1B2113A44(0, 0, 4);

            sub_1B212AC5C(v62, &qword_1EB7A1CE0, &qword_1B225BAB0);
            memcpy(v56, v61, 0xA3uLL);
            v57[0] = 0;
            v57[1] = 0;
            LOBYTE(v57[2]) = 4;
            sub_1B2127D7C(v57);
            memcpy(v55, v57, sizeof(v55));
            sub_1B21353B0(2, v56, __src);
            memcpy(v58, v55, 0xA3uLL);
            sub_1B21356F8(v58);
            memcpy(v59, v56, 0xA3uLL);
            sub_1B21356F8(v59);
            sub_1B21356F8(v68);

            v42 = v54;
            goto LABEL_27;
          }

          sub_1B2127DC0(v68, v59);

          sub_1B2127DC0(v68, v59);
          sub_1B2113A44(0, 0, 4);
          sub_1B2113A44(v39, v40, v41);
        }

        else
        {

          sub_1B2127DC0(v68, v59);
          v23 = v34;
        }

        v42 = v54;
        sub_1B212AC5C(v62, &qword_1EB7A1CE0, &qword_1B225BAB0);
        memcpy(v59, v61, 0xA3uLL);
        memcpy(v58, v68, 0xA3uLL);
        sub_1B21353B0(0, v59, __src);
        sub_1B21356F8(v68);

LABEL_27:
        sub_1B212AC5C(&v69, &qword_1EB7A10F0, &qword_1B225D320);

        sub_1B212AC5C(v72, &qword_1EB7A1270, qword_1B225EDF0);
        memcpy(v59, __src, 0xA3uLL);
        v75 = v27;
        v43 = *(v27 + 16);
        if (v43 >= *(v27 + 24) >> 1)
        {
          sub_1B213CA68();
          v27 = v75;
        }

        *(v27 + 16) = v43 + 1;
        memcpy((v27 + 168 * v43 + 32), v59, 0xA3uLL);
        if (v51 == v42)
        {

          goto LABEL_33;
        }

        v26 = v52 + 56;
        v25 = v42 + 1;
      }
    }

LABEL_33:
    if (qword_1ED85DC80 != -1)
    {
LABEL_36:
      v44 = swift_once();
    }

    *v62 = xmmword_1ED85DC88;
    *&v62[16] = xmmword_1ED85DC98;
    *&v62[32] = word_1ED85DCA8;
    v62[34] = byte_1ED85DCAA;
    MEMORY[0x1EEE9AC00](v44);
    sub_1B21619D8(&qword_1EB7A1CD8, &unk_1B225EDE0);
    sub_1B211AB74(&qword_1ED85D868, &qword_1EB7A1CD8, &unk_1B225EDE0);
    swift_getKeyPath();

    sub_1B224F214();
    v46 = v45;

    sub_1B213B4BC(v62, v46, v50);
  }

  else
  {
    sub_1B2252CD0();

    MEMORY[0x1B2741EB0](a2, a3);
    MEMORY[0x1B2741EB0](0xD000000000000022, 0x80000001B226F3E0);

    sub_1B219C61C();

    sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B211AB74(qword_1ED85E790, &qword_1EB7A0DA0, &qword_1B2254340);
    v47 = sub_1B2252250();
    v49 = v48;

    MEMORY[0x1B2741EB0](v47, v49);

    sub_1B2252EC0();
    __break(1u);

    __break(1u);
  }

  return result;
}

uint64_t sub_1B21ECBC8(uint64_t a1)
{
  Database.primaryKey(_:)();
  if (v1)
  {
    return a1;
  }

  v3 = v19;
  if (v21)
  {
    if (v21 == 1)
    {
      v4 = v19;
    }

    else
    {
      v4 = &unk_1F2969A68;
    }
  }

  else
  {
    v5 = v20;
    sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
    v4 = swift_allocObject();
    *(v4 + 1) = xmmword_1B22546B0;
    *(v4 + 4) = v3;
    *(v4 + 5) = v5;
  }

  v6 = *(v4 + 2);
  if (!v6)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v22 = MEMORY[0x1E69E7CC0];
  result = sub_1B216EFB0(0, v6, 0);
  v8 = 0;
  a1 = v22;
  v9 = (v4 + 40);
  while (v8 < *(v4 + 2))
  {
    v11 = *(v9 - 1);
    v10 = *v9;
    v16 = &type metadata for SQLExpression;
    v17 = &protocol witness table for SQLExpression;
    v12 = swift_allocObject();
    *&v15 = v12;
    __src[0] = v11;
    __src[1] = v10;
    sub_1B2134F5C(__src);
    memcpy((v12 + 16), __src, 0xA3uLL);
    v22 = a1;
    v14 = *(a1 + 16);
    v13 = *(a1 + 24);

    if (v14 >= v13 >> 1)
    {
      sub_1B216EFB0(v13 > 1, v14 + 1, 1);
      a1 = v22;
    }

    *(a1 + 16) = v14 + 1;
    result = sub_1B21217FC(&v15, a1 + 40 * v14 + 32);
    if (v6 - 1 == v8)
    {

      return a1;
    }

    v9 += 2;
    ++v8;
  }

  __break(1u);
  return result;
}

void *sub_1B21ECDB8(void *a1)
{
  Database.primaryKey(_:)();
  if (!v1)
  {
    v3 = v12;
    if (v13)
    {
      if (v13 == 1 && (BYTE8(v12) & 1) == 0)
      {
        v4 = *(v12 + 16);
        if (v4)
        {
          v16 = MEMORY[0x1E69E7CC0];
          sub_1B216EFD0(0, v4, 0);
          a1 = v16;
          v11 = v12;
          v5 = (v12 + 40);
          do
          {
            v7 = *(v5 - 1);
            v6 = *v5;
            v16 = a1;
            v9 = a1[2];
            v8 = a1[3];

            if (v9 >= v8 >> 1)
            {
              sub_1B216EFD0(v8 > 1, v9 + 1, 1);
              a1 = v16;
            }

            v14 = &type metadata for Column;
            v15 = &protocol witness table for Column;
            *&v12 = v7;
            *(&v12 + 1) = v6;
            a1[2] = v9 + 1;
            sub_1B21217FC(&v12, &a1[5 * v9 + 4]);
            v5 += 2;
            --v4;
          }

          while (v4);
          sub_1B21424A0(v11, *(&v11 + 1), 1u);
        }

        else
        {
          sub_1B21424A0(v12, *(&v12 + 1), 1u);
          return MEMORY[0x1E69E7CC0];
        }
      }

      else
      {
        sub_1B21424A0(v12, *(&v12 + 1), v13);
        sub_1B21619D8(&qword_1EB7A1168, qword_1B225ECD0);
        a1 = swift_allocObject();
        *(a1 + 1) = xmmword_1B22546B0;
        a1[7] = &type metadata for Column;
        a1[8] = &protocol witness table for Column;
        a1[4] = 0x6469776F72;
        a1[5] = 0xE500000000000000;
      }
    }

    else
    {
      sub_1B21619D8(&qword_1EB7A1168, qword_1B225ECD0);
      a1 = swift_allocObject();
      *(a1 + 1) = xmmword_1B22546B0;
      a1[7] = &type metadata for Column;
      a1[8] = &protocol witness table for Column;
      *(a1 + 2) = v3;
    }
  }

  return a1;
}

uint64_t sub_1B21ED020(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8, void (*a9)(uint64_t, uint64_t, uint64_t))
{
  v15 = *a3;
  v14 = a3[1];
  sub_1B21619D8(a6, a7);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1B22546B0;
  *(v16 + 56) = &type metadata for SQL;
  *(v16 + 64) = a8;
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1B22546B0;
  __src[0] = a1;
  __src[1] = a2;
  __src[2] = v15;
  __src[3] = v14;
  sub_1B2114CC4(__src);
  memcpy((v17 + 32), __src, 0xB8uLL);
  *(v16 + 32) = v17;

  a9(v16, a4, a5);
}

uint64_t sub_1B21ED17C()
{
  sub_1B2123510();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = *v8;
  sub_1B21619D8(v10, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B22546B0;
  *(v12 + 56) = &type metadata for SQL;
  *(v12 + 64) = v3;
  *(v12 + 32) = v9;

  v1(v12, v7, v5);
  sub_1B2115ED4();
}

uint64_t AggregatingRequest.having(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B211EE68(a1, v8);
  v4 = swift_allocObject();
  sub_1B21217FC(v8, v4 + 16);
  v5 = *(a3 + 16);
  sub_1B211F720();
  sub_1B2114874();
  v6();
}

uint64_t sub_1B21ED310(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *))
{
  v6 = *a1;
  v18[3] = &type metadata for SQL;
  v18[4] = a4;
  LOBYTE(v18[0]) = v6;

  v15 = sub_1B2144118(v7, v8, v9, v10, v11, v12, v13, v14, v17, v18[0]);
  a5(v15);
  return sub_1B2113208(v18);
}

uint64_t sub_1B21ED3FC(uint64_t a1, void (*a2)(uint64_t *__return_ptr), uint64_t a3, uint64_t a4)
{
  a2(&v70);
  if (!v4)
  {
    v7 = v70;
    v8 = *(v70 + 16);
    if (v8)
    {
      v59 = 0;
      v69 = MEMORY[0x1E69E7CC0];
      sub_1B216EFF0(0, v8, 0);
      v5 = v69;
      v9 = v8 - 1;
      v10 = &type metadata for SQLSelection;
      v11 = 32;
      v61 = v7;
      while (1)
      {
        memcpy(__dst, (v7 + v11), sizeof(__dst));
        memmove(v68, (v7 + v11), 0xB8uLL);
        switch(sub_1B213A580(v68))
        {
          case 1u:
            v45 = sub_1B213AA9C(v68);
            v46 = memcpy(v63, v45, 0xA3uLL);
            sub_1B212D5D8(v46, v47, v48, v49, v50, v51, v52, v53, v59, v61, v63[0], v63[1], v63[2], v63[3], v63[4], v63[5], v63[6], v63[7], v63[8], v63[9], v63[10], v63[11], v63[12], v63[13], v63[14], v63[15], v63[16], v63[17], v63[18], v63[19], v63[20], v64[0], v64[1], v64[2], v64[3], v64[4], v64[5], v64[6], v64[7], v64[8], v64[9], v64[10], v64[11], v64[12], v64[13], v64[14], v64[15], v64[16], v64[17], v64[18], v64[19], v64[20], __src[0]);
            v54 = sub_1B2111694();
            sub_1B213BBD8(v54, v55);
            sub_1B213A5CC(__dst);
            memcpy(__src, v64, 0xA3uLL);
            sub_1B214D464(__src);
            goto LABEL_10;
          case 2u:
            v13 = sub_1B213AA9C(v68);
            v14 = v10;
            v16 = v13[21];
            v15 = v13[22];
            v17 = memcpy(v63, v13, 0xA3uLL);
            v25 = sub_1B212D5D8(v17, v18, v19, v20, v21, v22, v23, v24, v59, v61, v63[0], v63[1], v63[2], v63[3], v63[4], v63[5], v63[6], v63[7], v63[8], v63[9], v63[10], v63[11], v63[12], v63[13], v63[14], v63[15], v63[16], v63[17], v63[18], v63[19], v63[20], v64[0], v64[1], v64[2], v64[3], v64[4], v64[5], v64[6], v64[7], v64[8], v64[9], v64[10], v64[11], v64[12], v64[13], v64[14], v64[15], v64[16], v64[17], v64[18], v64[19], v64[20], __src[0]);
            sub_1B212D5D8(v25, v26, v27, v28, v29, v30, v31, v32, v60, v62, v63[0], v63[1], v63[2], v63[3], v63[4], v63[5], v63[6], v63[7], v63[8], v63[9], v63[10], v63[11], v63[12], v63[13], v63[14], v63[15], v63[16], v63[17], v63[18], v63[19], v63[20], v64[0], v64[1], v64[2], v64[3], v64[4], v64[5], v64[6], v64[7], v64[8], v64[9], v64[10], v64[11], v64[12], v64[13], v64[14], v64[15], v64[16], v64[17], v64[18], v64[19], v64[20], __src[0]);
            v33 = sub_1B2111694();
            sub_1B213BBD8(v33, v34);
            sub_1B21356F8(v13);
            sub_1B213A5CC(__dst);
            memcpy(__src, v64, 0xA8uLL);
            *&__src[168] = v16;
            *&__src[176] = v15;
            v10 = v14;
            v7 = v61;
            sub_1B2155A5C(__src);
            goto LABEL_10;
          case 3u:
            v35 = sub_1B213AA9C(v68);
            sub_1B212D5D8(v35, v36, v37, v38, v39, v40, v41, v42, v59, v61, *v35, v63[1], v63[2], v63[3], v63[4], v63[5], v63[6], v63[7], v63[8], v63[9], v63[10], v63[11], v63[12], v63[13], v63[14], v63[15], v63[16], v63[17], v63[18], v63[19], v63[20], v64[0], v64[1], v64[2], v64[3], v64[4], v64[5], v64[6], v64[7], v64[8], v64[9], v64[10], v64[11], v64[12], v64[13], v64[14], v64[15], v64[16], v64[17], v64[18], v64[19], v64[20], __src[0]);
            v43 = sub_1B2111694();
            sub_1B2153E58(v43, v44);
            sub_1B213A5CC(__dst);
            *__src = v64[0];
            sub_1B216ED24(__src);
LABEL_10:
            memcpy(v66, __src, sizeof(v66));
            break;
          case 4u:
            *__src = a4;
            sub_1B213A59C(__src);
            memcpy(v66, __src, sizeof(v66));

            sub_1B213A5CC(__dst);
            break;
          default:
            sub_1B213AA9C(v68);
            memcpy(__src, __dst, sizeof(__src));
            v12 = *sub_1B213AA9C(__src);
            memcpy(v66, __dst, sizeof(v66));

            break;
        }

        v69 = v5;
        v57 = *(v5 + 16);
        v56 = *(v5 + 24);
        if (v57 >= v56 >> 1)
        {
          sub_1B216EFF0(v56 > 1, v57 + 1, 1);
          v5 = v69;
        }

        *&__src[24] = v10;
        *&__src[32] = &protocol witness table for SQLSelection;
        *__src = swift_allocObject();
        memcpy((*__src + 16), v66, 0xB8uLL);
        *(v5 + 16) = v57 + 1;
        sub_1B21217FC(__src, v5 + 40 * v57 + 32);
        if (!v9)
        {
          break;
        }

        --v9;
        v11 += 184;
      }
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v5;
}

uint64_t sub_1B21ED740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *v8;
  v12 = v8[1];
  v13 = v8[2];
  (*(v6 + 16))(v10, v3, a2);
  v23[0] = v11;
  v23[1] = v12;
  v23[2] = v13;
  v14 = *(*(a3 + 24) + 8);
  swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for AssociationAggregate();
  sub_1B21DF300(v10, v15, a2, a3);
  sub_1B21619D8(&qword_1EB7A10A8, &unk_1B225ECC0);
  if (v13)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1B22546B0;
    *(v16 + 56) = &type metadata for SQLSelection;
    *(v16 + 64) = &protocol witness table for SQLSelection;
    v17 = swift_allocObject();
    *(v16 + 32) = v17;
    memcpy(v23, __src, 0xA3uLL);
    v23[21] = v12;
    v23[22] = v13;
    sub_1B2155A5C(v23);
    memcpy((v17 + 16), v23, 0xB8uLL);

    sub_1B2127DC0(__src, v22);
  }

  else
  {
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1B22546B0;
    *(v19 + 56) = &type metadata for SQLExpression;
    *(v19 + 64) = &protocol witness table for SQLExpression;
    v20 = swift_allocObject();
    *(v19 + 32) = v20;
    memcpy((v20 + 16), __src, 0xA3uLL);
    sub_1B2127DC0(__src, v23);
  }

  v18 = *(a3 + 40);
  SelectionRequest.annotated(with:)();

  sub_1B21356F8(__src);
  return (*(v6 + 8))(v10, a2);
}

uint64_t sub_1B21ED9EC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v6 = *(a2 + 1);
  return sub_1B21ED740(&v5, a3, a4);
}

uint64_t sub_1B21EDA3C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v9 = *(v1 + 64);
  return sub_1B21EBD08(a1, *(v1 + 72));
}

uint64_t sub_1B21EDACC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1B21ECBC8(a1);
}

uint64_t sub_1B21EDB08()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  sub_1B2117C44();

  return swift_deallocObject();
}

void *sub_1B21EDB60(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1B21ECDB8(a1);
}

uint64_t sub_1B21EDD18(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21)
{
  switch(a21 >> 61)
  {
    case 0uLL:

      break;
    case 1uLL:

      result = sub_1B213B9FC(result, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
      break;
    case 2uLL:
      sub_1B213B9FC(result, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
      goto LABEL_6;
    case 3uLL:
LABEL_6:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B21EDE64(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B21A15E4(v4);
    v4 = v5;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;

  sub_1B21EDF00(v8, a2);
  *a1 = v4;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1B21EDF00(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_1B2252FC0();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1B21619D8(&qword_1EB7A1270, qword_1B225EDF0);
        v8 = sub_1B2252610();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;

      sub_1B21EE2A8(v9, v10, a1, v6, a2);
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
    sub_1B21EE048(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1B21EE048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v5 = a5;
  if (a3 == a2)
  {
  }

  v7 = a3;
  v34 = *a4;
  v31 = (a5 + 40);
  while (2)
  {
    v30 = v7;
    while (2)
    {
      v8 = v34 + 56 * v7--;
      sub_1B2122B00(v8, &v33, &qword_1EB7A1270, qword_1B225EDF0);
      v9 = (v8 - 56);
      sub_1B2122B00(v8 - 56, &v32, &qword_1EB7A1270, qword_1B225EDF0);
      v10 = sub_1B2252220();
      v12 = v11;
      v13 = 0;
      v14 = v5;
      v15 = *(v5 + 16);
      for (i = v31; ; i += 2)
      {
        if (v15 == v13)
        {

          sub_1B212AC5C(&v32, &qword_1EB7A1270, qword_1B225EDF0);
          sub_1B212AC5C(&v33, &qword_1EB7A1270, qword_1B225EDF0);
          v5 = v14;
          goto LABEL_20;
        }

        v17 = *(i - 1) == v10 && *i == v12;
        if (v17 || (sub_1B22531F0() & 1) != 0)
        {
          break;
        }

        ++v13;
      }

      v18 = sub_1B2252220();
      v5 = v14;
      v20 = sub_1B21EB8A4(v18, v19, v14);
      v22 = v21;

      if (v22)
      {
        sub_1B212AC5C(&v32, &qword_1EB7A1270, qword_1B225EDF0);
        result = sub_1B212AC5C(&v33, &qword_1EB7A1270, qword_1B225EDF0);
      }

      else
      {
        sub_1B212AC5C(&v32, &qword_1EB7A1270, qword_1B225EDF0);
        result = sub_1B212AC5C(&v33, &qword_1EB7A1270, qword_1B225EDF0);
        if (v13 >= v20)
        {
          break;
        }
      }

      if (!v34)
      {
        __break(1u);
        return result;
      }

      v23 = *(v8 + 48);
      v25 = *(v8 + 16);
      v24 = *(v8 + 32);
      v26 = *v8;
      v27 = *(v8 - 40);
      *v8 = *v9;
      *(v8 + 16) = v27;
      *(v8 + 32) = *(v8 - 24);
      *(v8 + 48) = *(v8 - 8);
      *v9 = v26;
      *(v8 - 40) = v25;
      *(v8 - 24) = v24;
      *(v8 - 8) = v23;
      if (v7 != a1)
      {
        continue;
      }

      break;
    }

LABEL_20:
    v7 = v30 + 1;
    if (v30 + 1 != a2)
    {
      continue;
    }
  }
}

uint64_t sub_1B21EE2A8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a3[1];
  v157 = a5;
  if (v6 < 1)
  {
    swift_bridgeObjectRetain_n();
    v8 = MEMORY[0x1E69E7CC0];
LABEL_115:
    v146 = *a1;
    if (!*a1)
    {
      goto LABEL_158;
    }

    swift_bridgeObjectRetain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_152;
    }

    goto LABEL_117;
  }

  swift_bridgeObjectRetain_n();
  v7 = 0;
  v152 = (v5 + 40);
  v8 = MEMORY[0x1E69E7CC0];
LABEL_3:
  v9 = v7;
  v10 = v7 + 1;
  if ((v7 + 1) >= v6)
  {
    goto LABEL_34;
  }

  v148 = v8;
  v11 = *a3;
  v12 = v7 + 1;
  sub_1B2122B00(*a3 + 56 * v10, &v156, &qword_1EB7A1270, qword_1B225EDF0);
  v142 = v11;
  sub_1B2122B00(v11 + 56 * v9, &v155, &qword_1EB7A1270, qword_1B225EDF0);
  v13 = sub_1B2252220();
  v15 = sub_1B21EB8A4(v13, v14, v5);
  v17 = v16;

  if (v17)
  {
    LODWORD(v146) = 0;
  }

  else
  {
    v18 = sub_1B2252220();
    v20 = sub_1B21EB8A4(v18, v19, v5);
    v22 = v21;

    v23 = (v22 & 1) != 0 || v15 < v20;
    LODWORD(v146) = v23;
  }

  v10 = v12;
  sub_1B212AC5C(&v155, &qword_1EB7A1270, qword_1B225EDF0);
  sub_1B212AC5C(&v156, &qword_1EB7A1270, qword_1B225EDF0);
  v140 = v9;
  v24 = 56 * v9;
  v25 = 56 * v9 + 56;
  v8 = v148;
  v143 = v6;
  do
  {
    v26 = v10;
    v27 = v25;
    if (++v10 >= v6)
    {
      break;
    }

    v28 = v10;
    sub_1B2122B00(v142 + 56 * v10, &v156, &qword_1EB7A1270, qword_1B225EDF0);
    sub_1B2122B00(v142 + 56 * v26, &v155, &qword_1EB7A1270, qword_1B225EDF0);
    v29 = sub_1B2252220();
    v31 = v30;
    v32 = 0;
    v33 = *(v157 + 16);
    for (i = v152; ; i += 2)
    {
      if (v33 == v32)
      {

        v41 = 0;
        goto LABEL_24;
      }

      v35 = *(i - 1) == v29 && *i == v31;
      if (v35 || (sub_1B22531F0() & 1) != 0)
      {
        break;
      }

      ++v32;
    }

    v36 = sub_1B2252220();
    v38 = sub_1B21EB8A4(v36, v37, v157);
    v40 = v39;

    v41 = (v40 & 1) != 0 || v32 < v38;
LABEL_24:
    sub_1B212AC5C(&v155, &qword_1EB7A1270, qword_1B225EDF0);
    sub_1B212AC5C(&v156, &qword_1EB7A1270, qword_1B225EDF0);
    v25 = v27 + 56;
    v35 = v146 == v41;
    v10 = v28;
    v8 = v148;
    v6 = v143;
  }

  while (v35);
  if (!v146)
  {
    goto LABEL_32;
  }

  v42 = v140;
  if (v10 < v140)
  {
    goto LABEL_149;
  }

  if (v140 < v10)
  {
    do
    {
      if (v42 != v26)
      {
        v43 = *a3;
        if (!*a3)
        {
          goto LABEL_156;
        }

        v44 = (v43 + v24);
        v45 = *(v43 + v24 + 48);
        v46 = (v43 + v27);
        v48 = v44[1];
        v47 = v44[2];
        v49 = *v44;
        v51 = v46[1];
        v50 = v46[2];
        v52 = *v46;
        *(v44 + 6) = *(v46 + 6);
        v44[1] = v51;
        v44[2] = v50;
        *v44 = v52;
        *v46 = v49;
        v46[1] = v48;
        v46[2] = v47;
        *(v46 + 6) = v45;
      }

      ++v42;
      v27 -= 56;
      v24 += 56;
    }

    while (v42 < v26--);
LABEL_32:
    v5 = v157;
    v9 = v140;
    goto LABEL_34;
  }

  v5 = v157;
  v9 = v140;
LABEL_34:
  v54 = a3[1];
  if (v10 >= v54)
  {
    goto LABEL_61;
  }

  if (__OFSUB__(v10, v9))
  {
    goto LABEL_148;
  }

  if (v10 - v9 >= a4)
  {
    goto LABEL_61;
  }

  v55 = &v9[a4];
  if (__OFADD__(v9, a4))
  {
    goto LABEL_150;
  }

  if (v55 >= v54)
  {
    v55 = a3[1];
  }

  if (v55 < v9)
  {
    goto LABEL_151;
  }

  if (v10 == v55)
  {
    goto LABEL_61;
  }

  v141 = v9;
  v149 = *a3;
  v144 = v55;
LABEL_43:
  v146 = v10;
  v56 = v10;
  while (1)
  {
    v57 = v149 + 56 * v56--;
    sub_1B2122B00(v57, &v156, &qword_1EB7A1270, qword_1B225EDF0);
    v58 = (v57 - 56);
    sub_1B2122B00(v57 - 56, &v155, &qword_1EB7A1270, qword_1B225EDF0);
    v59 = sub_1B2252220();
    v61 = v60;
    v62 = 0;
    v63 = *(v5 + 16);
    for (j = v152; ; j += 2)
    {
      if (v63 == v62)
      {

        sub_1B212AC5C(&v155, &qword_1EB7A1270, qword_1B225EDF0);
        sub_1B212AC5C(&v156, &qword_1EB7A1270, qword_1B225EDF0);
        v5 = v157;
        goto LABEL_59;
      }

      v65 = *(j - 1) == v59 && *j == v61;
      if (v65 || (sub_1B22531F0() & 1) != 0)
      {
        break;
      }

      ++v62;
    }

    v66 = sub_1B2252220();
    v5 = v157;
    v68 = sub_1B21EB8A4(v66, v67, v157);
    v70 = v69;

    if (v70)
    {
      sub_1B212AC5C(&v155, &qword_1EB7A1270, qword_1B225EDF0);
      sub_1B212AC5C(&v156, &qword_1EB7A1270, qword_1B225EDF0);
      goto LABEL_55;
    }

    sub_1B212AC5C(&v155, &qword_1EB7A1270, qword_1B225EDF0);
    sub_1B212AC5C(&v156, &qword_1EB7A1270, qword_1B225EDF0);
    if (v62 >= v68)
    {
LABEL_59:
      v10 = v146 + 1;
      if (v146 + 1 != v144)
      {
        goto LABEL_43;
      }

      v10 = v144;
      v9 = v141;
LABEL_61:
      if (v10 < v9)
      {
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        v8 = sub_1B21A00CC(v8);
LABEL_117:
        v126 = (v8 + 16);
        v127 = *(v8 + 16);
        for (k = v8; ; v8 = k)
        {
          if (v127 < 2)
          {

            return swift_bridgeObjectRelease_n();
          }

          v128 = *a3;
          if (!*a3)
          {
            goto LABEL_155;
          }

          v129 = (v8 + 16 * v127);
          v130 = *v129;
          v131 = v126;
          v132 = &v126[2 * v127];
          v8 = *(v132 + 1);
          v133 = (v128 + 56 * *v129);
          v153 = (v128 + 56 * *v132);
          v134 = v128 + 56 * v8;
          v135 = v157;

          sub_1B21EECC8(v133, v153, v134, v146, v135);
          if (v154)
          {
            break;
          }

          if (v8 < v130)
          {
            goto LABEL_143;
          }

          if (v127 - 2 >= *v131)
          {
            goto LABEL_144;
          }

          v126 = v131;
          *v129 = v130;
          v129[1] = v8;
          v136 = *v131 - v127;
          if (*v131 < v127)
          {
            goto LABEL_145;
          }

          v127 = *v131 - 1;
          sub_1B21A00E4(v132 + 16, v136, v132);
          *v131 = v127;
        }

        swift_bridgeObjectRelease_n();
      }

      v146 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B2161EC4(0, *(v8 + 16) + 1, 1, v8);
        v8 = v124;
      }

      v77 = *(v8 + 16);
      v76 = *(v8 + 24);
      v78 = v77 + 1;
      if (v77 >= v76 >> 1)
      {
        sub_1B2161EC4(v76 > 1, v77 + 1, 1, v8);
        v8 = v125;
      }

      *(v8 + 16) = v78;
      v79 = v8 + 32;
      v80 = (v8 + 32 + 16 * v77);
      *v80 = v9;
      v80[1] = v146;
      v150 = *a1;
      if (!*a1)
      {
        goto LABEL_157;
      }

      if (v77)
      {
        v145 = v8 + 32;
        while (1)
        {
          v81 = v78 - 1;
          v82 = (v79 + 16 * (v78 - 1));
          v83 = (v8 + 16 * v78);
          if (v78 >= 4)
          {
            break;
          }

          if (v78 == 3)
          {
            v84 = *(v8 + 32);
            v85 = *(v8 + 40);
            v94 = __OFSUB__(v85, v84);
            v86 = v85 - v84;
            v87 = v94;
LABEL_82:
            if (v87)
            {
              goto LABEL_134;
            }

            v99 = *v83;
            v98 = v83[1];
            v100 = __OFSUB__(v98, v99);
            v101 = v98 - v99;
            v102 = v100;
            if (v100)
            {
              goto LABEL_137;
            }

            v103 = v82[1];
            v104 = v103 - *v82;
            if (__OFSUB__(v103, *v82))
            {
              goto LABEL_140;
            }

            if (__OFADD__(v101, v104))
            {
              goto LABEL_142;
            }

            if (v101 + v104 >= v86)
            {
              if (v86 < v104)
              {
                v81 = v78 - 2;
              }

              goto LABEL_104;
            }

            goto LABEL_97;
          }

          if (v78 < 2)
          {
            goto LABEL_136;
          }

          v106 = *v83;
          v105 = v83[1];
          v94 = __OFSUB__(v105, v106);
          v101 = v105 - v106;
          v102 = v94;
LABEL_97:
          if (v102)
          {
            goto LABEL_139;
          }

          v108 = *v82;
          v107 = v82[1];
          v94 = __OFSUB__(v107, v108);
          v109 = v107 - v108;
          if (v94)
          {
            goto LABEL_141;
          }

          if (v109 < v101)
          {
            goto LABEL_111;
          }

LABEL_104:
          if (v81 - 1 >= v78)
          {
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
LABEL_146:
            __break(1u);
            goto LABEL_147;
          }

          v113 = *a3;
          if (!*a3)
          {
            swift_bridgeObjectRelease_n();
            __break(1u);
            goto LABEL_154;
          }

          v114 = v8;
          v115 = (v79 + 16 * (v81 - 1));
          v116 = *v115;
          v117 = v81;
          v118 = v79 + 16 * v81;
          v119 = *(v118 + 8);
          v120 = (v113 + 56 * *v115);
          v121 = (v113 + 56 * *v118);
          v122 = v113 + 56 * v119;
          v8 = v157;

          sub_1B21EECC8(v120, v121, v122, v150, v8);
          if (v154)
          {
            swift_bridgeObjectRelease_n();
          }

          if (v119 < v116)
          {
            goto LABEL_129;
          }

          v8 = v114;
          v123 = *(v114 + 16);
          if (v117 > v123)
          {
            goto LABEL_130;
          }

          *v115 = v116;
          v115[1] = v119;
          if (v117 >= v123)
          {
            goto LABEL_131;
          }

          v78 = v123 - 1;
          sub_1B21A00E4((v118 + 16), v123 - 1 - v117, v118);
          *(v114 + 16) = v123 - 1;
          v79 = v145;
          if (v123 <= 2)
          {
            goto LABEL_111;
          }
        }

        v88 = v79 + 16 * v78;
        v89 = *(v88 - 64);
        v90 = *(v88 - 56);
        v94 = __OFSUB__(v90, v89);
        v91 = v90 - v89;
        if (v94)
        {
          goto LABEL_132;
        }

        v93 = *(v88 - 48);
        v92 = *(v88 - 40);
        v94 = __OFSUB__(v92, v93);
        v86 = v92 - v93;
        v87 = v94;
        if (v94)
        {
          goto LABEL_133;
        }

        v95 = v83[1];
        v96 = v95 - *v83;
        if (__OFSUB__(v95, *v83))
        {
          goto LABEL_135;
        }

        v94 = __OFADD__(v86, v96);
        v97 = v86 + v96;
        if (v94)
        {
          goto LABEL_138;
        }

        if (v97 >= v91)
        {
          v111 = *v82;
          v110 = v82[1];
          v94 = __OFSUB__(v110, v111);
          v112 = v110 - v111;
          if (v94)
          {
            goto LABEL_146;
          }

          if (v86 < v112)
          {
            v81 = v78 - 2;
          }

          goto LABEL_104;
        }

        goto LABEL_82;
      }

LABEL_111:
      v7 = v146;
      v6 = a3[1];
      v5 = v157;
      if (v146 >= v6)
      {
        goto LABEL_115;
      }

      goto LABEL_3;
    }

LABEL_55:
    if (!v149)
    {
      break;
    }

    v71 = *(v57 + 48);
    v73 = *(v57 + 16);
    v72 = *(v57 + 32);
    v74 = *v57;
    v75 = *(v57 - 40);
    *v57 = *v58;
    *(v57 + 16) = v75;
    *(v57 + 32) = *(v57 - 24);
    *(v57 + 48) = *(v57 - 8);
    *v58 = v74;
    *(v57 - 40) = v73;
    *(v57 - 24) = v72;
    *(v57 - 8) = v71;
    if (v56 == v141)
    {
      goto LABEL_59;
    }
  }

LABEL_154:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_155:

  __break(1u);
LABEL_156:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_157:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_158:
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

uint64_t sub_1B21EECC8(char *a1, char *a2, unint64_t a3, char *a4, uint64_t a5)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 56;
  v10 = (a3 - a2) / 56;
  if (v9 < v10)
  {
    sub_1B22455BC(a1, (a2 - a1) / 56, a4);
    v11 = &v5[56 * v9];
    v12 = qword_1B225EDF0;
    v58 = v6;
    while (1)
    {
      if (v5 >= v11 || v7 >= v6)
      {
        v7 = v8;
        goto LABEL_37;
      }

      v64 = v7;
      sub_1B2122B00(v7, &v63, &qword_1EB7A1270, v12);
      sub_1B2122B00(v5, &v62, &qword_1EB7A1270, v12);
      v14 = sub_1B2252220();
      v16 = sub_1B21EB8A4(v14, v15, a5);
      v18 = v17;

      if (v18)
      {
        break;
      }

      v24 = v12;
      v25 = sub_1B2252220();
      v27 = sub_1B21EB8A4(v25, v26, a5);
      v29 = v28;

      if (v29)
      {
        v12 = v24;
        sub_1B212AC5C(&v62, &qword_1EB7A1270, v24);
        sub_1B212AC5C(&v63, &qword_1EB7A1270, v24);
        v6 = v58;
      }

      else
      {
        v12 = v24;
        sub_1B212AC5C(&v62, &qword_1EB7A1270, v24);
        sub_1B212AC5C(&v63, &qword_1EB7A1270, v24);
        v34 = v16 < v27;
        v6 = v58;
        if (!v34)
        {
          goto LABEL_9;
        }
      }

      v19 = v64;
      v7 = v64 + 56;
      if (v8 != v64)
      {
        goto LABEL_10;
      }

LABEL_11:
      v8 += 56;
    }

    sub_1B212AC5C(&v62, &qword_1EB7A1270, v12);
    sub_1B212AC5C(&v63, &qword_1EB7A1270, v12);
    v6 = v58;
LABEL_9:
    v19 = v5;
    v20 = v8 == v5;
    v5 += 56;
    v7 = v64;
    if (v20)
    {
      goto LABEL_11;
    }

LABEL_10:
    v21 = *v19;
    v22 = *(v19 + 16);
    v23 = *(v19 + 32);
    *(v8 + 6) = *(v19 + 48);
    *(v8 + 1) = v22;
    *(v8 + 2) = v23;
    *v8 = v21;
    goto LABEL_11;
  }

  v30 = a5;
  sub_1B22455BC(a2, (a3 - a2) / 56, a4);
  v31 = &v5[56 * v10];
  v32 = &qword_1EB7A1270;
  v59 = v8;
  v60 = v5;
LABEL_19:
  v64 = v7 - 56;
  v6 -= 56;
  for (i = (v31 - 56); ; i -= 56)
  {
    v11 = (i + 56);
    v34 = i + 56 > v5 && v7 > v8;
    if (!v34)
    {
      break;
    }

    v35 = v7;
    sub_1B2122B00(i, &v63, v32, qword_1B225EDF0);
    v36 = v32;
    sub_1B2122B00(v64, &v62, v32, qword_1B225EDF0);
    v37 = sub_1B2252220();
    v39 = sub_1B21EB8A4(v37, v38, v30);
    v41 = v40;

    if (v41)
    {
      v42 = 0;
    }

    else
    {
      v43 = sub_1B2252220();
      v45 = sub_1B21EB8A4(v43, v44, v30);
      v47 = v46;

      v20 = (v47 & 1) == 0;
      v30 = a5;
      v42 = !v20 || v39 < v45;
    }

    v32 = v36;
    sub_1B212AC5C(&v62, v36, qword_1B225EDF0);
    sub_1B212AC5C(&v63, v36, qword_1B225EDF0);
    v7 = v35;
    if (v42)
    {
      v31 = (i + 56);
      v20 = v6 + 56 == v35;
      v51 = v64;
      v7 = v64;
      v8 = v59;
      v5 = v60;
      if (!v20)
      {
        v52 = *v64;
        v53 = *(v64 + 1);
        v54 = *(v64 + 2);
        *(v6 + 48) = *(v64 + 6);
        *(v6 + 16) = v53;
        *(v6 + 32) = v54;
        *v6 = v52;
        v7 = v51;
      }

      goto LABEL_19;
    }

    v8 = v59;
    v5 = v60;
    if (v11 != (v6 + 56))
    {
      v48 = *i;
      v49 = *(i + 16);
      v50 = *(i + 32);
      *(v6 + 48) = *(i + 48);
      *(v6 + 16) = v49;
      *(v6 + 32) = v50;
      *v6 = v48;
    }

    v6 -= 56;
  }

LABEL_37:
  v55 = (v11 - v5) / 56;
  if (v7 != v5 || v7 >= &v5[56 * v55])
  {
    memmove(v7, v5, 56 * v55);
  }

  return 1;
}

uint64_t sub_1B21EF0F0()
{
  v1 = *(v0 + 24);
  if (!*(v1 + 16))
  {
    return 1;
  }

  v2 = sub_1B211E590();
  if ((v3 & 1) == 0)
  {
    return 1;
  }

  v4 = *(*(v1 + 56) + 8 * v2);
}

uint64_t sub_1B21EF134()
{
  v1 = *(v0 + 32);
  if (!*(v1 + 16))
  {
    return 1;
  }

  v2 = sub_1B211E590();
  if ((v3 & 1) == 0)
  {
    return 1;
  }

  v4 = *(*(v1 + 56) + 8 * v2);
}

uint64_t sub_1B21EF180(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_1B21EF1DC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  v14 = sub_1B2122A98(a1, v5, v4);
  if (v14 >= 2)
  {
    return v14 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1B21EF354(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v9 >= 2)
          {
            v20 = a2 + 1;

            sub_1B21117B4(a1, v20, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        break;
      case 2:
        *&a1[v11] = v18;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        break;
      default:
        return;
    }
  }
}

void *sub_1B21EF594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21[2] = a7;
  v21[0] = *v7;
  v21[1] = a6;
  v11 = type metadata accessor for Configuration();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v21 - v16;
  type metadata accessor for DatabasePool();
  v22 = a3;
  sub_1B21579F4(a3, v17);
  v17[41] = 1;
  sub_1B212392C(v17, v14);
  type metadata accessor for SerializedDatabase();
  swift_allocObject();

  v18 = v21[3];
  sub_1B2123A30();
  if (v18)
  {

    sub_1B2133D70(v22);
    sub_1B2133D70(v17);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v7[2] = v19;
    MEMORY[0x1EEE9AC00](v19);
    v21[-2] = a1;
    v21[-1] = a2;

    sub_1B2113C20(sub_1B21EFCCC, &v21[-4]);

    sub_1B2133D70(v22);
    sub_1B2133D70(v17);
  }

  return v7;
}

void sub_1B21EF7B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  v6 = sub_1B215833C(a1, 0xD000000000000013, 0x80000001B226F510, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC8], v14);
  v8 = v7;
  sub_1B211EA78(v14);

  if (!v3)
  {
    if (!v8)
    {
LABEL_8:
      *&v14[0] = 0;
      *(&v14[0] + 1) = 0xE000000000000000;
      sub_1B2252CD0();

      *&v14[0] = 0xD000000000000023;
      *(&v14[0] + 1) = 0x80000001B226F530;
      MEMORY[0x1B2741EB0](a2, a3);
      v11 = v14[0];
      sub_1B21AC298();
      swift_allocError();
      *v12 = 1;
      *(v12 + 8) = v11;
      *(v12 + 24) = 0u;
      *(v12 + 40) = 0u;
      *(v12 + 56) = 0;
      swift_willThrow();
      return;
    }

    if (v6 == 7102839 && v8 == 0xE300000000000000)
    {
    }

    else
    {
      v10 = sub_1B22531F0();

      if ((v10 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    LOBYTE(v14[0]) = 0;
    Database.beginTransaction(_:)(v14);
    if (!v13)
    {
      sub_1B212DAFC(0xD00000000000002ALL, 0x80000001B226F560);
      v14[0] = 0uLL;
      sub_1B2133AC8(v14);

      sub_1B2133BF0();
    }
  }
}

uint64_t DatabaseSnapshot.deinit()
{
  v1 = *(v0 + 16);

  sub_1B222401C(v2);

  v3 = *(v0 + 16);

  return v0;
}

void sub_1B21EFA30(BOOL *a1@<X8>)
{
  Database.commit()();
  if (v2)
  {
  }

  *a1 = v2 != 0;
}

uint64_t DatabaseSnapshot.__deallocating_deinit()
{
  DatabaseSnapshot.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t DatabaseSnapshot._add<A>(observation:scheduling:onChange:)@<X0>(void *__src@<X0>, void *a2@<X1>, void (*a3)(char *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v14 = *v7;
  memcpy(v16, __src, sizeof(v16));
  return sub_1B22216F8(v16, a2, a3, a4, v14, a5, &protocol witness table for DatabaseSnapshot, a6, a7);
}

uint64_t HasManyThroughAssociation._sqlAssociation.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v2;
  return result;
}

uint64_t sub_1B21EFD74(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B21EFDB0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void (*sub_1B21EFDF4(void *a1))(void *a1)
{
  v2 = sub_1B2170FB8(0x28uLL);
  *a1 = v2;
  v2[4] = HasManyThroughAssociation._sqlAssociation.modify();
  return sub_1B2171E40;
}

uint64_t sub_1B21EFE50(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1B21EFE8C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B21EFEC8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B21EFF1C(_OWORD *a1)
{
  v3 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  result = type metadata accessor for ReceiveValuesOnSubscription.State();
  if (v2 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B21EFFCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v36 = a6;
  v37 = a5;
  v34 = a1;
  v35 = a2;
  swift_getAssociatedTypeWitness();
  v10 = sub_1B2252B00();
  sub_1B21115E0();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  sub_1B21115E0();
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1B2111844();
  v25 = v24 - v23;
  sub_1B21115E0();
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1B2111844();
  v31 = v30 - v29;
  (*(v32 + 16))(v30 - v29, v7, a3);
  (*(v19 + 16))(v25, v34, a4);
  (*(v12 + 16))(v17, v35, v10);
  return sub_1B21F0558(v31, v25, v17, a3, a4, v36);
}

uint64_t sub_1B21F01E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v52 = a1;
  v53 = a4;
  sub_1B21115E0();
  v51 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1B2111844();
  v50 = v13 - v12;
  v15 = *(v14 + 40);
  v16 = *(v14 + 24);
  swift_getAssociatedTypeWitness();
  sub_1B2252B00();
  sub_1B21115E0();
  v48 = v18;
  v49 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v47 = &v46 - v21;
  sub_1B21115E0();
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1B2111844();
  v29 = v28 - v27;
  v30 = *(a2 + 16);
  sub_1B21115E0();
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v35);
  sub_1B2111844();
  v38 = v37 - v36;
  v39 = *(a2 + 32);
  v54[0] = v30;
  v54[1] = v16;
  v54[2] = a3;
  v55 = v39;
  WitnessTable = v15;
  v57 = v53;
  v40 = type metadata accessor for ReceiveValuesOnSubscription();
  (*(v32 + 16))(v38, v5, v30);
  (*(v23 + 16))(v29, v5 + *(a2 + 52), v16);
  v41 = *(a2 + 56);
  v42 = v47;
  (*(v48 + 16))(v47, v5 + v41, v49);
  v43 = v50;
  (*(v51 + 16))(v50, v52, a3);
  v44 = sub_1B21F04F4(v38, v29, v42, v43);
  v55 = v40;
  WitnessTable = swift_getWitnessTable();
  v54[0] = v44;
  sub_1B2251FD0();
  return sub_1B2113208(v54);
}

uint64_t sub_1B21F04F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  swift_allocObject();
  return sub_1B21F0800(a1, a2, a3, a4);
}

uint64_t sub_1B21F0558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a4 - 8) + 32))(a6, a1, a4);
  v10 = type metadata accessor for ReceiveValuesOn();
  (*(*(a5 - 8) + 32))(a6 + *(v10 + 52), a2, a5);
  v11 = *(v10 + 56);
  swift_getAssociatedTypeWitness();
  v12 = sub_1B2252B00();
  return (*(*(v12 - 8) + 32))(a6 + v11, a3, v12);
}

uint64_t sub_1B21F0698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  (*(*(a4 - 8) + 32))(a6, a1, a4);
  v10 = type metadata accessor for ReceiveValuesOnSubscription.Target();
  v11 = *(v10 + 68);
  swift_getAssociatedTypeWitness();
  v12 = sub_1B2252B00();
  (*(*(v12 - 8) + 32))(a6 + v11, a2, v12);
  return (*(*(a5 - 8) + 32))(a6 + *(v10 + 72), a3, a5);
}

uint64_t sub_1B21F0800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v29 = a3;
  v30 = a1;
  v6 = *v4;
  v7 = *(*v4 + 80);
  v8 = *(*v4 + 88);
  v27 = *(*v4 + 96);
  v26 = v6[13];
  v9 = v6[14];
  v10 = v6[15];
  v31 = v7;
  v32 = v8;
  v24 = v8;
  v25 = v10;
  v33 = v27;
  v34 = v26;
  v35 = v9;
  v36 = v10;
  v11 = type metadata accessor for ReceiveValuesOnSubscription.Target();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - v14;
  v16 = v6[17];
  *(v4 + v16) = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  v17 = a4;
  v19 = v26;
  v18 = v27;
  sub_1B21F0698(v28, v29, v17, v8, v27, v15);
  v20 = v4 + *(*v4 + 128);
  v21 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(v7 - 8) + 32))(v20, v30, v7);
  (*(v12 + 32))(v20 + v21, v15, v11);
  v31 = v7;
  v32 = v24;
  v33 = v18;
  v34 = v19;
  v35 = v9;
  v36 = v25;
  type metadata accessor for ReceiveValuesOnSubscription.State();
  swift_storeEnumTagMultiPayload();
  return v4;
}

uint64_t sub_1B21F0AE8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v67 = a3;
  v68 = a1;
  v4 = *a2;
  v6 = *(*a2 + 88);
  v7 = *(*a2 + 96);
  v8 = *(*a2 + 104);
  v9 = *(*a2 + 112);
  v10 = *(*a2 + 120);
  *&v71 = *(*a2 + 80);
  v5 = v71;
  *(&v71 + 1) = v6;
  v72 = v7;
  v73 = v8;
  v74 = v9;
  v75 = v10;
  v11 = type metadata accessor for ReceiveValuesOnSubscription.Target();
  v69 = *(v11 - 8);
  v70 = v11;
  v12 = *(v69 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v64 = &v55 - v14;
  v66 = *(v71 - 8);
  v15 = *(v66 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v58 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v65 = &v55 - v17;
  *&v71 = v5;
  *(&v71 + 1) = v6;
  v61 = v8;
  v62 = v7;
  v72 = v7;
  v73 = v8;
  v59 = v10;
  v60 = v9;
  v74 = v9;
  v75 = v10;
  v18 = type metadata accessor for ReceiveValuesOnSubscription.State();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v55 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v55 - v27;
  v29 = *(v4 + 128);
  swift_beginAccess();
  v63 = v19;
  (*(v19 + 16))(v28, a2 + v29, v18);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      v43 = v70;
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v45 = *&v28[*(TupleTypeMetadata2 + 48)];
      v46 = v69;
      v47 = v64;
      (*(v69 + 32))(v64, v28, v43);
      (*(v46 + 16))(v23, v47, v43);
      sub_1B2252030();
      v48 = v67;
      LOBYTE(v43) = sub_1B2252010();
      v49 = sub_1B2252030();
      if (v43)
      {
        goto LABEL_9;
      }

      result = sub_1B2252010();
      if (result)
      {
        goto LABEL_8;
      }

      if ((v45 | v48) < 0)
      {
        goto LABEL_15;
      }

      v49 = v48 + v45;
      if (__OFADD__(v48, v45))
      {
LABEL_8:
        v49 = sub_1B2252030();
LABEL_9:
        (*(v69 + 8))(v64, v70);
LABEL_10:
        *&v23[*(TupleTypeMetadata2 + 48)] = v49;
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();
        (*(v63 + 40))(a2 + v29, v23, v18);
        return swift_endAccess();
      }

      result = (*(v69 + 8))(v64, v70);
      if ((v49 & 0x8000000000000000) == 0)
      {
        goto LABEL_10;
      }

      __break(1u);
LABEL_15:
      __break(1u);
      return result;
    case 2:
      v50 = v68;
      v51 = v68[1];
      sub_1B2112F4C(*v68);
      sub_1B2161A20(qword_1EB7A28C8, qword_1B225F080);
      v52 = v70;
      v53 = swift_getTupleTypeMetadata2();
      sub_1B21217FC(&v28[*(v53 + 48)], &v71);
      v54 = swift_allocObject();
      sub_1B21217FC(&v71, v54 + 16);
      *(v54 + 56) = v67;
      *v50 = sub_1B21F57C8;
      v50[1] = v54;
      return (*(v69 + 8))(v28, v52);
    case 3:
      return result;
    default:
      v31 = v68[1];
      sub_1B2112F4C(*v68);
      v64 = v6;
      v32 = v69;
      v33 = v70;
      v57 = *(swift_getTupleTypeMetadata2() + 48);
      v34 = *(v66 + 32);
      v66 += 32;
      v34(v65, v28, v5);
      v56 = *(swift_getTupleTypeMetadata2() + 48);
      (*(v32 + 32))(v26, &v28[v57], v33);
      *&v26[v56] = v67;
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      (*(v63 + 40))(a2 + v29, v26, v18);
      swift_endAccess();
      v35 = v58;
      v36 = v66;
      v34(v58, v65, v5);
      v37 = (*(v36 + 48) + 64) & ~*(v36 + 48);
      v38 = swift_allocObject();
      v39 = v64;
      *(v38 + 2) = v5;
      *(v38 + 3) = v39;
      v40 = v61;
      *(v38 + 4) = v62;
      *(v38 + 5) = v40;
      v41 = v59;
      *(v38 + 6) = v60;
      *(v38 + 7) = v41;
      v34(&v38[v37], v35, v5);
      *&v38[(v15 + v37 + 7) & 0xFFFFFFFFFFFFFFF8] = a2;
      v42 = v68;
      *v68 = sub_1B21F5758;
      v42[1] = v38;
  }
}

uint64_t sub_1B21F11BC(uint64_t a1, uint64_t a2)
{
  v4 = *(*a2 + 80);
  v5 = *(*a2 + 96);
  v3 = *(*a2 + 104);
  v6 = *(*a2 + 120);
  type metadata accessor for ReceiveValuesOnSubscription();
  swift_getWitnessTable();
  return sub_1B22520A0();
}

uint64_t sub_1B21F130C(uint64_t *a1, uint64_t *a2)
{
  v28 = a1;
  v3 = *a2;
  v4 = *(*a2 + 80);
  v5 = *(*a2 + 88);
  v6 = *(*a2 + 96);
  v7 = *(*a2 + 104);
  v8 = *(*a2 + 112);
  v9 = *(*a2 + 120);
  *&v33 = v4;
  *(&v33 + 1) = v5;
  v34 = v6;
  v35 = v7;
  v29 = v8;
  v36 = v8;
  v37 = v9;
  v10 = type metadata accessor for ReceiveValuesOnSubscription.State();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v30 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - v15;
  v17 = *(v3 + 128);
  swift_beginAccess();
  v31 = v11;
  (*(v11 + 16))(v16, a2 + v17, v10);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      *&v33 = v4;
      *(&v33 + 1) = v5;
      v34 = v6;
      v35 = v7;
      v36 = v29;
      v37 = v9;
      v4 = type metadata accessor for ReceiveValuesOnSubscription.Target();
      goto LABEL_4;
    case 2:
      v22 = v28[1];
      sub_1B2112F4C(*v28);
      *&v33 = v4;
      *(&v33 + 1) = v5;
      v34 = v6;
      v35 = v7;
      v36 = v29;
      v37 = v9;
      v23 = type metadata accessor for ReceiveValuesOnSubscription.Target();
      sub_1B2161A20(qword_1EB7A28C8, qword_1B225F080);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1B21217FC(&v16[*(TupleTypeMetadata2 + 48)], &v33);
      v25 = v30;
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      (*(v31 + 40))(a2 + v17, v25, v10);
      swift_endAccess();
      sub_1B21217FC(&v33, v32);
      v26 = swift_allocObject();
      sub_1B21217FC(v32, v26 + 16);
      v27 = v28;
      *v28 = sub_1B21F5734;
      v27[1] = v26;
      result = (*(*(v23 - 8) + 8))(v16, v23);
      break;
    case 3:
      return result;
    default:
      *&v33 = v4;
      *(&v33 + 1) = v5;
      v34 = v6;
      v35 = v7;
      v36 = v29;
      v37 = v9;
      v19 = type metadata accessor for ReceiveValuesOnSubscription.Target();
      v20 = swift_getTupleTypeMetadata2();
      (*(*(v19 - 8) + 8))(&v16[*(v20 + 48)], v19);
LABEL_4:
      (*(*(v4 - 8) + 8))(v16, v4);
      v21 = v30;
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      (*(v31 + 40))(a2 + v17, v21, v10);
      result = swift_endAccess();
      break;
  }

  return result;
}

uint64_t sub_1B21F17D0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v38 = a3;
  v39 = a1;
  v4 = *a2;
  v5 = *(*a2 + 80);
  v6 = *(*a2 + 88);
  v7 = *(*a2 + 96);
  v8 = *(*a2 + 104);
  v9 = *(*a2 + 112);
  v36 = *(*a2 + 120);
  v37 = v5;
  *&v40 = v5;
  *(&v40 + 1) = v6;
  v41 = v7;
  v42 = v8;
  v43 = v9;
  v44 = v36;
  v10 = type metadata accessor for ReceiveValuesOnSubscription.State();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  v18 = *(v4 + 128);
  swift_beginAccess();
  (*(v11 + 16))(v17, a2 + v18, v10);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v19 = v39[1];
      sub_1B2112F4C(*v39);
      *&v40 = v37;
      *(&v40 + 1) = v6;
      v41 = v7;
      v42 = v8;
      v43 = v9;
      v44 = v36;
      v20 = type metadata accessor for ReceiveValuesOnSubscription.Target();
      v21 = *&v17[*(swift_getTupleTypeMetadata2() + 48)];
      sub_1B2161A20(qword_1EB7A28C8, qword_1B225F080);
      v22 = *(swift_getTupleTypeMetadata2() + 48);
      (*(*(v20 - 8) + 32))(v15, v17, v20);
      v23 = &v15[v22];
      v24 = v38;
      sub_1B211EE68(v38, v23);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      (*(v11 + 40))(a2 + v18, v15, v10);
      swift_endAccess();
      sub_1B211EE68(v24, &v40);
      v25 = swift_allocObject();
      result = sub_1B21217FC(&v40, v25 + 16);
      *(v25 + 56) = v21;
      v27 = v39;
      *v39 = sub_1B21F570C;
      v27[1] = v25;
      break;
    case 2u:
      *&v40 = v37;
      *(&v40 + 1) = v6;
      v41 = v7;
      v42 = v8;
      v43 = v9;
      v44 = v36;
      v31 = type metadata accessor for ReceiveValuesOnSubscription.Target();
      sub_1B2161A20(qword_1EB7A28C8, qword_1B225F080);
      v37 = v31;
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1B2113208(&v17[*(TupleTypeMetadata2 + 48)]);
      goto LABEL_7;
    case 3u:
      v28 = v39;
      v29 = v39[1];
      sub_1B2112F4C(*v39);
      sub_1B211EE68(v38, &v40);
      v30 = swift_allocObject();
      result = sub_1B21217FC(&v40, v30 + 16);
      *v28 = sub_1B21F57C0;
      v28[1] = v30;
      break;
    default:
      *&v40 = v37;
      *(&v40 + 1) = v6;
      v41 = v7;
      v42 = v8;
      v43 = v9;
      v44 = v36;
      v33 = type metadata accessor for ReceiveValuesOnSubscription.Target();
      v34 = swift_getTupleTypeMetadata2();
      (*(*(v33 - 8) + 8))(&v17[*(v34 + 48)], v33);
LABEL_7:
      result = (*(*(v37 - 8) + 8))(v17);
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_1B21F1C68(void *a1)
{
  v1 = a1[4];
  sub_1B21139A0(a1, a1[3]);
  return sub_1B2252050();
}

uint64_t sub_1B21F1CB0(void *a1)
{
  v1 = a1[4];
  sub_1B21139A0(a1, a1[3]);
  v2 = *(v1 + 8);
  return sub_1B2251FF0();
}

uint64_t sub_1B21F1CE8()
{
  v1 = *(v0 + *(*v0 + 136));
  sub_1B22189C4(sub_1B2193F34, 0);
  return sub_1B2252030();
}

uint64_t sub_1B21F1D60(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v39 = a3;
  v44 = a1;
  v4 = *a2;
  v5 = *a2;
  v6 = *(*a2 + 104);
  v7 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = *(AssociatedTypeWitness - 8);
  v36 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v42 = &v33 - v8;
  v9 = v4[14];
  v10 = v4[15];
  v46 = v7;
  v45 = *(v5 + 11);
  v47 = v45;
  v48 = v6;
  v49 = v9;
  v50 = v10;
  v11 = type metadata accessor for ReceiveValuesOnSubscription.Target();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v41 = &v33 - v14;
  v46 = v7;
  v47 = v45;
  v48 = v6;
  v49 = v9;
  v37 = v10;
  v38 = v9;
  v50 = v10;
  v15 = type metadata accessor for ReceiveValuesOnSubscription.State();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v33 - v18;
  v20 = v4[16];
  swift_beginAccess();
  (*(v16 + 16))(v19, a2 + v20, v15);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      result = (*(v12 + 8))(v19, v11);
      break;
    case 2:
      v23 = v44[1];
      sub_1B2112F4C(*v44);
      sub_1B2161A20(qword_1EB7A28C8, qword_1B225F080);
      v24 = *(swift_getTupleTypeMetadata2() + 48);
      v34 = *(v12 + 32);
      v35 = v24;
      v34(v41, v19, v11);
      v25 = v40;
      (*(v40 + 16))(v42, v39, AssociatedTypeWitness);
      v26 = (*(v12 + 80) + 64) & ~*(v12 + 80);
      v39 = (v13 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
      v27 = (*(v25 + 80) + v39 + 8) & ~*(v25 + 80);
      v28 = swift_allocObject();
      *&v29 = vdupq_laneq_s64(v45, 1).u64[0];
      *(&v29 + 1) = v6;
      v30.i64[0] = v7;
      *(v28 + 16) = vzip1q_s64(v30, v45);
      *(v28 + 32) = v29;
      v31 = v37;
      *(v28 + 48) = v38;
      *(v28 + 56) = v31;
      v34((v28 + v26), v41, v11);
      *(v28 + v39) = a2;
      (*(v25 + 32))(v28 + v27, v42, AssociatedTypeWitness);
      v32 = v44;
      *v44 = sub_1B21F5580;
      v32[1] = v28;

      result = sub_1B2113208(&v19[v35]);
      break;
    case 3:
      return result;
    default:
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      (*(v12 + 8))(&v19[*(TupleTypeMetadata2 + 48)], v11);
      result = (*(*(v7 - 8) + 8))(v19, v7);
      break;
  }

  return result;
}

uint64_t sub_1B21F222C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v18 = a3;
  v19 = a1;
  v20.i64[0] = *a2;
  v4 = *(v20.i64[0] + 80);
  v17[0] = *(v20.i64[0] + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = v17 - v9;
  v12 = *(v20.i64[0] + 120);
  v8.i64[0] = v4;
  v23 = *(v20.i64[0] + 112);
  v11 = v23;
  v24 = v12;
  v20 = *(v20.i64[0] + 88);
  *&v13 = vdupq_laneq_s64(v20, 1).u64[0];
  *(&v13 + 1) = v17[0];
  v21 = vzip1q_s64(v8, v20);
  v22 = v13;
  v17[1] = *(type metadata accessor for ReceiveValuesOnSubscription.Target() + 68);
  (*(v6 + 16))(v10, v18, AssociatedTypeWitness);
  v14 = (*(v6 + 80) + 72) & ~*(v6 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  *(v15 + 24) = v20;
  *(v15 + 40) = v17[0];
  *(v15 + 48) = v11;
  *(v15 + 56) = v12;
  *(v15 + 64) = a2;
  (*(v6 + 32))(v15 + v14, v10, AssociatedTypeWitness);

  sub_1B22520C0();
}

uint64_t sub_1B21F24C4(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v40 = a3;
  v44 = a1;
  v4 = *a2;
  v5 = *a2;
  v6 = *(*a2 + 104);
  v7 = *(*a2 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v43 = sub_1B2252000();
  v39 = *(v43 - 8);
  v36 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v33 - v8;
  v9 = v4[14];
  v10 = v4[15];
  v46 = v7;
  v45 = *(v5 + 11);
  v47 = v45;
  v48 = v6;
  v49 = v9;
  v50 = v10;
  v11 = type metadata accessor for ReceiveValuesOnSubscription.Target();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v41 = &v33 - v14;
  v46 = v7;
  v47 = v45;
  v48 = v6;
  v49 = v9;
  v37 = v10;
  v38 = v9;
  v50 = v10;
  v15 = type metadata accessor for ReceiveValuesOnSubscription.State();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v33 - v18;
  v20 = v4[16];
  swift_beginAccess();
  (*(v16 + 16))(v19, a2 + v20, v15);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      result = (*(v12 + 8))(v19, v11);
      break;
    case 2:
      v23 = v44[1];
      sub_1B2112F4C(*v44);
      sub_1B2161A20(qword_1EB7A28C8, qword_1B225F080);
      v24 = *(swift_getTupleTypeMetadata2() + 48);
      v34 = *(v12 + 32);
      v35 = v24;
      v34(v41, v19, v11);
      v25 = v39;
      (*(v39 + 16))(v42, v40, v43);
      v26 = (*(v12 + 80) + 64) & ~*(v12 + 80);
      v40 = (v13 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
      v27 = (*(v25 + 80) + v40 + 8) & ~*(v25 + 80);
      v28 = swift_allocObject();
      *&v29 = vdupq_laneq_s64(v45, 1).u64[0];
      *(&v29 + 1) = v6;
      v30.i64[0] = v7;
      *(v28 + 16) = vzip1q_s64(v30, v45);
      *(v28 + 32) = v29;
      v31 = v37;
      *(v28 + 48) = v38;
      *(v28 + 56) = v31;
      v34((v28 + v26), v41, v11);
      *(v28 + v40) = a2;
      (*(v25 + 32))(v28 + v27, v42, v43);
      v32 = v44;
      *v44 = sub_1B21F53A0;
      v32[1] = v28;

      result = sub_1B2113208(&v19[v35]);
      break;
    case 3:
      return result;
    default:
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      (*(v12 + 8))(&v19[*(TupleTypeMetadata2 + 48)], v11);
      result = (*(*(v7 - 8) + 8))(v19, v7);
      break;
  }

  return result;
}

uint64_t sub_1B21F29C4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v21 = a3;
  v22 = a1;
  v4 = *a2;
  v5 = *a2;
  v6 = *(*a2 + 104);
  v7 = *(*a2 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = sub_1B2252000();
  v20[0] = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v20 - v12;
  v14 = *(v4 + 112);
  v15 = *(v4 + 120);
  v11.i64[0] = v7;
  v26 = v14;
  v27 = v15;
  v23 = *(v5 + 88);
  *&v16 = vdupq_laneq_s64(v23, 1).u64[0];
  *(&v16 + 1) = v6;
  v24 = vzip1q_s64(v11, v23);
  v25 = v16;
  v20[1] = *(type metadata accessor for ReceiveValuesOnSubscription.Target() + 68);
  (*(v9 + 16))(v13, v21, v8);
  v17 = (*(v9 + 80) + 72) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v7;
  *(v18 + 24) = v23;
  *(v18 + 40) = v6;
  *(v18 + 48) = v14;
  *(v18 + 56) = v15;
  *(v18 + 64) = a2;
  (*(v9 + 32))(v18 + v17, v13, v20[0]);

  sub_1B22520C0();
}

uint64_t sub_1B21F2C8C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v41 = a1;
  v4 = *a2;
  v5 = *a2;
  v6 = *(*a2 + 104);
  v7 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = *(AssociatedTypeWitness - 8);
  v36 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v43 = &v33 - v8;
  v9 = v4[14];
  v10 = v4[15];
  v46 = v7;
  v45 = *(v5 + 11);
  v47 = v45;
  v48 = v6;
  v49 = v9;
  v50 = v10;
  v11 = type metadata accessor for ReceiveValuesOnSubscription.Target();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v42 = &v33 - v14;
  v46 = v7;
  v47 = v45;
  v48 = v6;
  v49 = v9;
  v37 = v10;
  v38 = v9;
  v50 = v10;
  v15 = type metadata accessor for ReceiveValuesOnSubscription.State();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v33 - v18;
  v20 = v4[16];
  swift_beginAccess();
  (*(v16 + 16))(v19, a2 + v20, v15);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      result = (*(v12 + 8))(v19, v11);
      break;
    case 2:
      v23 = v41;
      v24 = v41[1];
      sub_1B2112F4C(*v41);
      sub_1B2161A20(qword_1EB7A28C8, qword_1B225F080);
      v25 = *(swift_getTupleTypeMetadata2() + 48);
      v34 = *(v12 + 32);
      v35 = v25;
      v34(v42, v19, v11);
      v26 = v40;
      (*(v40 + 16))(v43, v39, AssociatedTypeWitness);
      v27 = (*(v12 + 80) + 64) & ~*(v12 + 80);
      v28 = (v13 + v27 + *(v26 + 80)) & ~*(v26 + 80);
      v29 = swift_allocObject();
      *&v30 = vdupq_laneq_s64(v45, 1).u64[0];
      *(&v30 + 1) = v6;
      v31.i64[0] = v7;
      *(v29 + 16) = vzip1q_s64(v31, v45);
      *(v29 + 32) = v30;
      v32 = v37;
      *(v29 + 48) = v38;
      *(v29 + 56) = v32;
      v34((v29 + v27), v42, v11);
      (*(v26 + 32))(v29 + v28, v43, AssociatedTypeWitness);
      *v23 = sub_1B21F5278;
      v23[1] = v29;
      result = sub_1B2113208(&v19[v35]);
      break;
    case 3:
      return result;
    default:
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      (*(v12 + 8))(&v19[*(TupleTypeMetadata2 + 48)], v11);
      result = (*(*(v7 - 8) + 8))(v19, v7);
      break;
  }

  return result;
}

uint64_t sub_1B21F323C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v54 = a3;
  v57 = a1;
  v4 = *a2;
  v5 = *a2;
  v6 = *(*a2 + 104);
  v7 = *(*a2 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v55 = sub_1B2252000();
  v53 = *(v55 - 8);
  v49 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v52 = &v44 - v8;
  v9 = v4[14];
  v10 = v4[15];
  v60 = v7;
  v58 = *(v5 + 11);
  v61 = v58;
  v62 = v6;
  v63 = v9;
  v64 = v10;
  v59 = type metadata accessor for ReceiveValuesOnSubscription.Target();
  v11 = *(v59 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v48 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v56 = &v44 - v14;
  v60 = v7;
  v61 = v58;
  v62 = v6;
  v63 = v9;
  v50 = v10;
  v51 = v9;
  v64 = v10;
  v15 = type metadata accessor for ReceiveValuesOnSubscription.State();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v44 - v21;
  v23 = v4[16];
  swift_beginAccess();
  (*(v16 + 16))(v22, a2 + v23, v15);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      result = (*(v11 + 8))(v22, v59);
      break;
    case 2:
      v27 = v57[1];
      sub_1B2112F4C(*v57);
      sub_1B2161A20(qword_1EB7A28C8, qword_1B225F080);
      v47 = v11;
      v28 = v59;
      v46 = *(swift_getTupleTypeMetadata2() + 48);
      v45 = v6;
      v29 = *(v47 + 32);
      v47 += 32;
      v30 = v28;
      v31 = v29;
      v44 = v29;
      v29(v56, v22, v30);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      (*(v16 + 40))(a2 + v23, v19, v15);
      swift_endAccess();
      v32 = v48;
      v33 = v47;
      v31(v48, v56, v59);
      v35 = v52;
      v34 = v53;
      v36 = v55;
      (*(v53 + 16))(v52, v54, v55);
      v37 = (*(v33 + 48) + 64) & ~*(v33 + 48);
      v38 = (v12 + v37 + *(v34 + 80)) & ~*(v34 + 80);
      v39 = swift_allocObject();
      *&v40 = vdupq_laneq_s64(v58, 1).u64[0];
      *(&v40 + 1) = v45;
      v41.i64[0] = v7;
      *(v39 + 16) = vzip1q_s64(v41, v58);
      *(v39 + 32) = v40;
      v42 = v50;
      *(v39 + 48) = v51;
      *(v39 + 56) = v42;
      v44(v39 + v37, v32, v59);
      (*(v34 + 32))(v39 + v38, v35, v36);
      v43 = v57;
      *v57 = sub_1B21F511C;
      v43[1] = v39;
      result = sub_1B2113208(&v22[v46]);
      break;
    case 3:
      return result;
    default:
      v25 = v59;
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      (*(v11 + 8))(&v22[*(TupleTypeMetadata2 + 48)], v25);
      result = (*(*(v7 - 8) + 8))(v22, v7);
      break;
  }

  return result;
}

uint64_t sub_1B21F38A8()
{
  v1 = *(*v0 + 128);
  v4 = *(*v0 + 80);
  v5 = *(*v0 + 96);
  v6 = *(*v0 + 112);
  v2 = type metadata accessor for ReceiveValuesOnSubscription.State();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1B21F3978()
{
  v0 = sub_1B21F38A8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B21F3A04(_OWORD *a1)
{
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  type metadata accessor for ReceiveValuesOnSubscription.Target();
  result = swift_getTupleTypeMetadata2();
  if (v2 <= 0x3F)
  {
    result = swift_getTupleTypeMetadata2();
    if (v3 <= 0x3F)
    {
      sub_1B2161A20(qword_1EB7A28C8, qword_1B225F080);
      result = swift_getTupleTypeMetadata2();
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1B21F3AF8(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v6 = *(*(a3[2] - 8) + 64);
  v7 = *(a3[3] - 8);
  v8 = *(v7 + 80);
  v9 = a3[6];
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 80);
  v12 = *(a3[4] - 8);
  v13 = *(v12 + 80);
  v14 = *(v10 + 64) + v13 + ((*(v7 + 64) + v11) & ~v11);
  if (!*(v10 + 84))
  {
    ++v14;
  }

  v15 = (v14 & ~v13) + *(v12 + 64);
  v16 = v15 + ((v6 + (v11 | v8 | v13)) & ~(v11 | v8 | v13));
  v17 = (v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v17 + 8 > v16)
  {
    v16 = v17 + 8;
  }

  v18 = v17 + 40;
  if (v18 > v16)
  {
    v16 = v18;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_26;
  }

  v19 = v16 + 1;
  v20 = 8 * (v16 + 1);
  if ((v16 + 1) <= 3)
  {
    v23 = ((a2 + ~(-1 << v20) - 252) >> v20) + 1;
    if (HIWORD(v23))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_26;
      }

      goto LABEL_18;
    }

    if (v23 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_26;
      }

      goto LABEL_18;
    }

    if (v23 < 2)
    {
LABEL_26:
      v25 = *(a1 + v16);
      if (v25 >= 4)
      {
        return (v25 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_26;
  }

LABEL_18:
  v24 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v24 = 0;
  }

  if (v19)
  {
    if (v19 > 3)
    {
      LODWORD(v19) = 4;
    }

    switch(v19)
    {
      case 2:
        LODWORD(v19) = *a1;
        break;
      case 3:
        LODWORD(v19) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v19) = *a1;
        break;
      default:
        LODWORD(v19) = *a1;
        break;
    }
  }

  return (v19 | v24) + 253;
}

void sub_1B21F3D98(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v8 = *(*(a4[2] - 8) + 64);
  v9 = *(a4[3] - 8);
  v10 = *(v9 + 80);
  v11 = a4[6];
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = *(v12 + 80);
  v14 = *(a4[4] - 8);
  v15 = *(v14 + 80);
  v16 = *(v12 + 64) + v15 + ((*(v9 + 64) + v13) & ~v13);
  if (!*(v12 + 84))
  {
    ++v16;
  }

  v17 = (v16 & ~v15) + *(v14 + 64);
  v18 = v17 + ((v8 + (v13 | v10 | v15)) & ~(v13 | v10 | v15));
  v19 = (v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v19 + 8 > v18)
  {
    v18 = v19 + 8;
  }

  v20 = v19 + 40;
  if (v20 <= v18)
  {
    v20 = v18;
  }

  v21 = v20 + 1;
  v22 = 8 * (v20 + 1);
  if (a3 < 0xFD)
  {
    v23 = 0;
  }

  else if (v21 <= 3)
  {
    v26 = ((a3 + ~(-1 << v22) - 252) >> v22) + 1;
    if (HIWORD(v26))
    {
      v23 = 4;
    }

    else
    {
      if (v26 < 0x100)
      {
        v27 = 1;
      }

      else
      {
        v27 = 2;
      }

      if (v26 >= 2)
      {
        v23 = v27;
      }

      else
      {
        v23 = 0;
      }
    }
  }

  else
  {
    v23 = 1;
  }

  if (a2 > 0xFC)
  {
    v24 = a2 - 253;
    if (v21 < 4)
    {
      v25 = (v24 >> v22) + 1;
      if (v20 != -1)
      {
        v28 = v24 & ~(-1 << v22);
        bzero(a1, v21);
        if (v21 == 3)
        {
          *a1 = v28;
          a1[2] = BYTE2(v28);
        }

        else if (v21 == 2)
        {
          *a1 = v28;
        }

        else
        {
          *a1 = v24;
        }
      }
    }

    else
    {
      bzero(a1, v20 + 1);
      *a1 = v24;
      v25 = 1;
    }

    switch(v23)
    {
      case 1:
        a1[v21] = v25;
        break;
      case 2:
        *&a1[v21] = v25;
        break;
      case 3:
LABEL_41:
        __break(1u);
        break;
      case 4:
        *&a1[v21] = v25;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v23)
    {
      case 1:
        a1[v21] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_30;
      case 2:
        *&a1[v21] = 0;
        goto LABEL_29;
      case 3:
        goto LABEL_41;
      case 4:
        *&a1[v21] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_30;
      default:
LABEL_29:
        if (a2)
        {
LABEL_30:
          a1[v20] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1B21F40D0(void *a1)
{
  v2 = a1[3];
  v3 = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = a1[6];
    swift_getAssociatedTypeWitness();
    v3 = sub_1B2252B00();
    if (v6 <= 0x3F)
    {
      v7 = a1[4];
      v3 = swift_checkMetadataState();
      if (v8 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v3;
}

uint64_t sub_1B21F41A4(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v6 = a3[3];
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = a3[6];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 84);
  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = a3[4];
  v15 = *(v14 - 8);
  if (v13 <= v8)
  {
    v16 = v8;
  }

  else
  {
    v16 = v13;
  }

  v17 = *(v15 + 84);
  if (v17 > v16)
  {
    v16 = *(v15 + 84);
  }

  v18 = *(v11 + 80);
  if (v12)
  {
    v19 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v19 = *(*(AssociatedTypeWitness - 8) + 64) + 1;
  }

  v20 = *(v15 + 80);
  v21 = *(v15 + 64);
  if (!a2)
  {
    return 0;
  }

  v22 = *(v7 + 64) + v18;
  if (a2 > v16)
  {
    v23 = ((v19 + v20 + (v22 & ~v18)) & ~v20) + v21;
    v24 = 8 * v23;
    if (v23 <= 3)
    {
      v26 = ((a2 - v16 + ~(-1 << v24)) >> v24) + 1;
      if (HIWORD(v26))
      {
        v25 = *(a1 + v23);
        if (!v25)
        {
          goto LABEL_32;
        }

        goto LABEL_22;
      }

      if (v26 > 0xFF)
      {
        v25 = *(a1 + v23);
        if (!*(a1 + v23))
        {
          goto LABEL_32;
        }

        goto LABEL_22;
      }

      if (v26 < 2)
      {
LABEL_32:
        if (v16)
        {
          goto LABEL_33;
        }

        return 0;
      }
    }

    v25 = *(a1 + v23);
    if (!*(a1 + v23))
    {
      goto LABEL_32;
    }

LABEL_22:
    v27 = (v25 - 1) << v24;
    if (v23 > 3)
    {
      v27 = 0;
    }

    if (v23)
    {
      if (v23 <= 3)
      {
        v28 = v23;
      }

      else
      {
        v28 = 4;
      }

      switch(v28)
      {
        case 2:
          v29 = *a1;
          break;
        case 3:
          v29 = *a1 | (*(a1 + 2) << 16);
          break;
        case 4:
          v29 = *a1;
          break;
        default:
          v29 = *a1;
          break;
      }
    }

    else
    {
      v29 = 0;
    }

    return v16 + (v29 | v27) + 1;
  }

LABEL_33:
  if (v8 == v16)
  {
    v30 = a1;
    v31 = v8;
    v14 = v6;
  }

  else
  {
    v33 = (a1 + v22) & ~v18;
    if (v13 == v16)
    {
      v34 = sub_1B2122A98(v33, v12, AssociatedTypeWitness);
      if (v34 >= 2)
      {
        return v34 - 1;
      }

      else
      {
        return 0;
      }
    }

    v30 = (v33 + v19 + v20) & ~v20;
    v31 = v17;
  }

  return sub_1B2122A98(v30, v31, v14);
}

void sub_1B21F4494(_BYTE *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v8 = a4[3];
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = a4[6];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = 0;
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 84);
  if (v15)
  {
    v16 = v15 - 1;
  }

  else
  {
    v16 = 0;
  }

  if (v16 <= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = v16;
  }

  v18 = a4[4];
  v19 = *(v18 - 8);
  v20 = *(v19 + 84);
  if (v20 > v17)
  {
    v17 = *(v19 + 84);
  }

  v21 = *(v14 + 80);
  v22 = *(v9 + 64) + v21;
  if (v15)
  {
    v23 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v23 = *(*(AssociatedTypeWitness - 8) + 64) + 1;
  }

  v24 = *(v19 + 80);
  v25 = ((v23 + v24 + (v22 & ~v21)) & ~v24) + *(v19 + 64);
  v26 = 8 * v25;
  if (a3 > v17)
  {
    if (v25 <= 3)
    {
      v27 = ((a3 - v17 + ~(-1 << v26)) >> v26) + 1;
      if (HIWORD(v27))
      {
        v13 = 4;
      }

      else
      {
        if (v27 < 0x100)
        {
          v28 = 1;
        }

        else
        {
          v28 = 2;
        }

        if (v27 >= 2)
        {
          v13 = v28;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  if (v17 >= a2)
  {
    switch(v13)
    {
      case 1:
        a1[v25] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 2:
        *&a1[v25] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 3:
LABEL_52:
        __break(1u);
        break;
      case 4:
        *&a1[v25] = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (a2)
        {
LABEL_35:
          if (v10 == v17)
          {
            v32 = a1;
            v33 = a2;
            v15 = v10;
            v18 = v8;
          }

          else
          {
            v32 = &a1[v22] & ~v21;
            if (v16 == v17)
            {
              v33 = (a2 + 1);
              v18 = AssociatedTypeWitness;
            }

            else
            {
              v32 = (v32 + v23 + v24) & ~v24;
              v33 = a2;
              v15 = v20;
            }
          }

          sub_1B21117B4(v32, v33, v15, v18);
        }

        break;
    }
  }

  else
  {
    v29 = ~v17 + a2;
    if (v25 < 4)
    {
      v30 = (v29 >> v26) + 1;
      if (v25)
      {
        v31 = v29 & ~(-1 << v26);
        bzero(a1, v25);
        if (v25 == 3)
        {
          *a1 = v31;
          a1[2] = BYTE2(v31);
        }

        else if (v25 == 2)
        {
          *a1 = v31;
        }

        else
        {
          *a1 = v29;
        }
      }
    }

    else
    {
      bzero(a1, v25);
      *a1 = v29;
      v30 = 1;
    }

    switch(v13)
    {
      case 1:
        a1[v25] = v30;
        break;
      case 2:
        *&a1[v25] = v30;
        break;
      case 3:
        goto LABEL_52;
      case 4:
        *&a1[v25] = v30;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1B21F4804(void *a1)
{
  v2 = a1[2];
  v3 = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = a1[3];
    v3 = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v7 = a1[5];
      swift_getAssociatedTypeWitness();
      v3 = sub_1B2252B00();
      if (v8 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v3;
}

uint64_t sub_1B21F48D8(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v4 = a3[3];
  v33 = a3[2];
  v5 = *(v33 - 8);
  v6 = *(v5 + 84);
  v7 = *(v4 - 8);
  v8 = *(v7 + 84);
  if (v8 <= v6)
  {
    v9 = *(v5 + 84);
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = a3[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v14 <= v9)
  {
    v14 = v9;
  }

  v15 = *(v7 + 80);
  v16 = *(v7 + 64);
  v17 = *(v12 + 80);
  if (v13)
  {
    v18 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v18 = *(*(AssociatedTypeWitness - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = AssociatedTypeWitness;
  v20 = *(v5 + 64) + v15;
  v21 = a1;
  if (a2 > v14)
  {
    v22 = v18 + ((v16 + v17 + (v20 & ~v15)) & ~v17);
    v23 = 8 * v22;
    if (v22 <= 3)
    {
      v25 = ((a2 - v14 + ~(-1 << v23)) >> v23) + 1;
      if (HIWORD(v25))
      {
        v24 = *(a1 + v22);
        if (!v24)
        {
          goto LABEL_31;
        }

        goto LABEL_21;
      }

      if (v25 > 0xFF)
      {
        v24 = *(a1 + v22);
        if (!*(a1 + v22))
        {
          goto LABEL_31;
        }

        goto LABEL_21;
      }

      if (v25 < 2)
      {
LABEL_31:
        if (v14)
        {
          goto LABEL_32;
        }

        return 0;
      }
    }

    v24 = *(a1 + v22);
    if (!*(a1 + v22))
    {
      goto LABEL_31;
    }

LABEL_21:
    v26 = (v24 - 1) << v23;
    if (v22 > 3)
    {
      v26 = 0;
    }

    if (v22)
    {
      if (v22 <= 3)
      {
        v27 = v22;
      }

      else
      {
        v27 = 4;
      }

      switch(v27)
      {
        case 2:
          v28 = *a1;
          break;
        case 3:
          v28 = *a1 | (*(a1 + 2) << 16);
          break;
        case 4:
          v28 = *a1;
          break;
        default:
          v28 = *a1;
          break;
      }
    }

    else
    {
      v28 = 0;
    }

    return v14 + (v28 | v26) + 1;
  }

LABEL_32:
  if (v6 == v14)
  {
    v29 = v6;
    v30 = v33;
  }

  else
  {
    v21 = (a1 + v20) & ~v15;
    if (v8 != v14)
    {
      v32 = sub_1B2122A98((v21 + v16 + v17) & ~v17, v13, v19);
      if (v32 >= 2)
      {
        return v32 - 1;
      }

      else
      {
        return 0;
      }
    }

    v29 = v8;
    v30 = v4;
  }

  return sub_1B2122A98(v21, v29, v30);
}

void sub_1B21F4BD4(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = a4[3];
  v41 = a4[2];
  v6 = *(v41 - 8);
  v7 = *(v6 + 84);
  v8 = *(v5 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(v6 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = a4[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = 0;
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 84);
  v16 = v15 - 1;
  if (!v15)
  {
    v16 = 0;
  }

  if (v16 <= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v8 + 80);
  v19 = *(v6 + 64) + v18;
  v20 = *(v8 + 64);
  v21 = *(v14 + 80);
  v22 = (v20 + v21 + (v19 & ~v18)) & ~v21;
  if (v15)
  {
    v23 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v23 = *(*(AssociatedTypeWitness - 8) + 64) + 1;
  }

  v24 = v22 + v23;
  v25 = 8 * (v22 + v23);
  if (a3 > v17)
  {
    if (v24 <= 3)
    {
      v26 = ((a3 - v17 + ~(-1 << v25)) >> v25) + 1;
      if (HIWORD(v26))
      {
        v13 = 4;
      }

      else
      {
        if (v26 < 0x100)
        {
          v27 = 1;
        }

        else
        {
          v27 = 2;
        }

        if (v26 >= 2)
        {
          v13 = v27;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  if (v17 < a2)
  {
    v28 = ~v17 + a2;
    if (v24 < 4)
    {
      v30 = (v28 >> v25) + 1;
      if (v24)
      {
        v34 = v13;
        v35 = v28 & ~(-1 << v25);
        bzero(a1, v24);
        if (v24 == 3)
        {
          *a1 = v35;
          a1[2] = BYTE2(v35);
          v13 = v34;
        }

        else
        {
          v13 = v34;
          if (v24 == 2)
          {
            *a1 = v35;
          }

          else
          {
            *a1 = v28;
          }
        }
      }
    }

    else
    {
      v29 = v13;
      bzero(a1, v24);
      v13 = v29;
      *a1 = v28;
      v30 = 1;
    }

    switch(v13)
    {
      case 1:
        a1[v24] = v30;
        break;
      case 2:
        *&a1[v24] = v30;
        break;
      case 3:
        goto LABEL_65;
      case 4:
        *&a1[v24] = v30;
        break;
      default:
        return;
    }

    return;
  }

  v31 = ~v18;
  v32 = ~v21;
  v33 = a1;
  switch(v13)
  {
    case 1:
      a1[v24] = 0;
      if (a2)
      {
        goto LABEL_35;
      }

      return;
    case 2:
      *&a1[v24] = 0;
      if (a2)
      {
        goto LABEL_35;
      }

      return;
    case 3:
LABEL_65:
      __break(1u);
      return;
    case 4:
      *&a1[v24] = 0;
      goto LABEL_34;
    default:
LABEL_34:
      if (!a2)
      {
        return;
      }

LABEL_35:
      if (v7 == v17)
      {
        v36 = a2;
        v15 = v7;
        AssociatedTypeWitness = v41;
LABEL_59:

        sub_1B21117B4(v33, v36, v15, AssociatedTypeWitness);
        return;
      }

      v33 = &a1[v19] & v31;
      if (v9 == v17)
      {
        v36 = a2;
        v15 = v9;
        AssociatedTypeWitness = v5;
        goto LABEL_59;
      }

      v37 = ((v33 + v20 + v21) & v32);
      if (v16 >= a2)
      {
        v36 = a2 + 1;
        v33 = (v33 + v20 + v21) & v32;
        goto LABEL_59;
      }

      if (v23 <= 3)
      {
        v38 = ~(-1 << (8 * v23));
      }

      else
      {
        v38 = -1;
      }

      if (v23)
      {
        v39 = v38 & (~v16 + a2);
        if (v23 <= 3)
        {
          v40 = v23;
        }

        else
        {
          v40 = 4;
        }

        bzero(v37, v23);
        switch(v40)
        {
          case 2:
            *v37 = v39;
            break;
          case 3:
            *v37 = v39;
            v37[2] = BYTE2(v39);
            break;
          case 4:
            *v37 = v39;
            break;
          default:
            *v37 = v39;
            break;
        }
      }

      return;
  }
}

uint64_t sub_1B21F50B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 104);
  v3 = *(a2 + 80);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1B21F50F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = *(a2 + 16);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1B21F511C()
{
  v10 = v0[3];
  v11 = v0[4];
  v12 = v0[5];
  v13 = v0[6];
  v14 = v0[7];
  v1 = type metadata accessor for ReceiveValuesOnSubscription.Target();
  sub_1B211208C(v1);
  v4 = ((*(v2 + 80) + 64) & ~*(v2 + 80)) + *(v3 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1B2114880();
  v5 = sub_1B2252000();
  sub_1B2111894(v5);
  v7 = *(v6 + 80);
  sub_1B2117D80();

  return sub_1B21F383C(v8);
}

uint64_t sub_1B21F5278()
{
  v10 = v0[2];
  v11 = v0[3];
  v12 = v0[4];
  v13 = v0[5];
  v14 = v0[6];
  v15 = v0[7];
  v1 = type metadata accessor for ReceiveValuesOnSubscription.Target();
  sub_1B211208C(v1);
  v4 = ((*(v2 + 80) + 64) & ~*(v2 + 80)) + *(v3 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B2111894(AssociatedTypeWitness);
  v7 = *(v6 + 80);
  sub_1B2117D80();

  return sub_1B21F3134(v8);
}

uint64_t sub_1B21F53A0()
{
  v12 = *(v0 + 16);
  v13 = *(v0 + 32);
  v11 = *(v0 + 40);
  v14 = *(v0 + 56);
  v1 = type metadata accessor for ReceiveValuesOnSubscription.Target();
  sub_1B211208C(v1);
  v4 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1B212DF3C();
  sub_1B212CEAC();
  sub_1B2114880();
  v6 = sub_1B2252000();
  sub_1B2111894(v6);
  v8 = *(v0 + v5);
  v9 = v0 + ((v5 + *(v7 + 80) + 8) & ~*(v7 + 80));

  return sub_1B21F29C4(v0 + v4, v8, v9);
}

id sub_1B21F54E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  sub_1B212DF3C();
  sub_1B212CEAC();
  sub_1B2114880();
  v3 = sub_1B2252000();
  sub_1B2111894(v3);
  v5 = sub_1B2122280(*(v4 + 80));
  return sub_1B21F31A0(v5);
}

uint64_t sub_1B21F5580()
{
  v19 = *(v0 + 16);
  v20 = *(v0 + 32);
  v18 = *(v0 + 40);
  v21 = *(v0 + 56);
  v1 = type metadata accessor for ReceiveValuesOnSubscription.Target();
  v2 = sub_1B211208C(v1);
  v5 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1B2114454(v2, v7, v19, v8, v9, v10, v11, v12, v18);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B2111894(AssociatedTypeWitness);
  v15 = *(v0 + v6);
  v16 = v0 + ((v6 + *(v14 + 80) + 8) & ~*(v14 + 80));

  return sub_1B21F222C(v0 + v5, v15, v16);
}

id sub_1B21F569C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B2111894(AssociatedTypeWitness);
  v5 = sub_1B2122280(*(v4 + 80));
  return sub_1B21F2C40(v5);
}

void CommonTableExpression<A>.init<A>(recursive:named:columns:request:)()
{
  sub_1B2111F14();
  v2 = v1;
  v4 = v3;
  sub_1B21158C8();
  v6 = v5;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v8 + 16))(v13, v14, v15, v11);
  type metadata accessor for Row();
  v16 = sub_1B2116700();
  sub_1B21F5A70(v16, v17, v18, v19, v13, v4, v20, v2);
  (*(v8 + 8))(v0, v4);
  memcpy(v6, v22, 0xBBuLL);
  sub_1B2111588();
}

void *CommonTableExpression.contains(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v12[0] = v5;
  v12[1] = v6;
  sub_1B2181890(v12);
  memcpy(__dst, v12, sizeof(__dst));
  v7 = a1[3];
  v8 = a1[4];
  sub_1B21139A0(a1, v7);
  v9 = *(v8 + 8);

  v9(__src, v7, v8);
  v10 = swift_allocObject();
  memcpy(v10 + 16, __src, 0xA3uLL);
  memcpy(v10 + 184, __dst, 0xA2uLL);
  v10[346] = 0;
  v15[0] = v10;
  sub_1B214C468(v15);
  return memcpy(a2, v15, 0xA3uLL);
}

uint64_t CommonTableExpression.tableName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CommonTableExpression.tableName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void *sub_1B21F5A70@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8)
{
  *a7 = a2;
  *(a7 + 8) = a3;
  (*(a8 + 16))(__src, a6, a8);
  (*(*(a6 - 8) + 8))(a5, a6);
  *(a7 + 16) = a4;
  result = memcpy((a7 + 24), __src, 0xA2uLL);
  *(a7 + 186) = a1;
  return result;
}

void CommonTableExpression.init<A>(recursive:named:columns:request:)()
{
  sub_1B2111F14();
  v2 = v1;
  v4 = v3;
  sub_1B21158C8();
  v20 = v5;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v7 + 16))(v12, v13, v14, v10);
  v15 = sub_1B2116700();
  sub_1B21F5A70(v15, v16, v17, v18, v12, v4, v19, v2);
  (*(v7 + 8))(v0, v4);
  memcpy(v20, v21, 0xBBuLL);
  sub_1B2111588();
}

void CommonTableExpression.init(recursive:named:columns:sql:arguments:)()
{
  sub_1B2111F14();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1B2111FC0();
  v10 = v9;
  v12 = v11;
  memset(v20, 0, 40);
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B22546B0;
  *__src = v8;
  *&__src[8] = v6;
  *&__src[16] = *v4;
  sub_1B2114CC4(__src);
  memcpy((v13 + 32), __src, 0xB8uLL);
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v17 = v13;
  sub_1B2142B5C(v20, v15);
  v18 = 2;
  v14 = sub_1B21619D8(&qword_1EB7A1C18, &qword_1B2259C90);
  sub_1B21F5A70(v10, v2, v1, v0, v15, v14, v20, &protocol witness table for SQLRequest<A>);
  memcpy(v12, v20, 0xBBuLL);
  sub_1B2111588();
}

void *CommonTableExpression.init(recursive:named:columns:literal:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, void *a6@<X8>)
{
  v11 = *a5;
  memset(__src, 0, 40);
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v16 = v11;
  sub_1B2142B5C(__src, v14);
  v17 = 2;
  v12 = sub_1B21619D8(&qword_1EB7A1C18, &qword_1B2259C90);
  sub_1B21F5A70(a1, a2, a3, a4, v14, v12, __src, &protocol witness table for SQLRequest<A>);
  return memcpy(a6, __src, 0xBBuLL);
}

void CommonTableExpression<A>.init(recursive:named:columns:sql:arguments:)()
{
  sub_1B2111F14();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1B2111FC0();
  v10 = v9;
  v12 = v11;
  memset(v18, 0, 40);
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B22546B0;
  *__src = v8;
  *&__src[8] = v6;
  *&__src[16] = *v4;
  sub_1B2114CC4(__src);
  memcpy((v13 + 32), __src, 0xB8uLL);
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v16 = v13;
  sub_1B2142B5C(v18, v14);
  sub_1B2118434();
  sub_1B21F5F44(v14);
  *&v18[0] = v4;
  sub_1B21F5FAC(v18);
  *v12 = v2;
  *(v12 + 8) = v1;
  *(v12 + 16) = v0;
  memcpy((v12 + 24), v18, 0xA2uLL);
  *(v12 + 186) = v10;
  sub_1B2111588();
}

uint64_t sub_1B21F5F44(uint64_t a1)
{
  v2 = sub_1B21619D8(&qword_1EB7A1C18, &qword_1B2259C90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B21F5FAC(uint64_t result)
{
  v1 = *(result + 104) & 1;
  v2 = *(result + 160) & 0x1FF;
  *(result + 64) &= 1uLL;
  *(result + 104) = v1;
  *(result + 160) = v2;
  return result;
}

void *CommonTableExpression<A>.init(recursive:named:columns:literal:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *a5;
  memset(__src, 0, 40);
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v16 = v12;
  sub_1B2142B5C(__src, v14);
  sub_1B2118434();
  sub_1B21F5F44(v14);
  *&__src[0] = v6;
  sub_1B21F5FAC(__src);
  *a6 = a2;
  *(a6 + 8) = a3;
  *(a6 + 16) = a4;
  result = memcpy((a6 + 24), __src, 0xA2uLL);
  *(a6 + 186) = a1;
  return result;
}

void *CommonTableExpression.all()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B21518F0(__src);
  v4 = *(a1 + 16);
  return sub_1B2135E6C(__src, a2);
}

uint64_t CommonTableExpression.association<A>(to:on:)()
{
  sub_1B2111FC0();
  v4 = v3;
  sub_1B21518F0(v20);
  sub_1B2111904();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v16 = v5;
  sub_1B2112C7C();
  v13 = sub_1B2116254(v6, v7, *(v0 + 16), v8, v9, v10, v11, v12, sub_1B21F6640, v16, v17, v18, v19, v20[0]);
  sub_1B21D92BC(v13, v14, v4);
}

{
  sub_1B2111FC0();
  v4 = v3;
  v6 = v5[1];
  v11 = *v5;
  v12 = v6;
  type metadata accessor for Table();
  sub_1B21518F0(__src);
  sub_1B2111904();
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = v1;
  *&v10 = sub_1B21F63B8;
  *(&v10 + 1) = v7;
  sub_1B2112C7C();
  v8 = *(v0 + 16);
  sub_1B21D92BC(__src, &v10, v4);
}

uint64_t CommonTableExpression.association<A>(to:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  sub_1B21518F0(v19);
  sub_1B21176AC();
  v11 = sub_1B2116254(v4, v5, *(a1 + 16), v6, v7, v8, v9, v10, v14, v15, v16, v17, v18, v19[0]);
  return sub_1B21D92BC(v11, v12, a2);
}

{
  sub_1B213574C();
  sub_1B21176AC();
  v11 = sub_1B2116254(v4, v5, *(a1 + 16), v6, v7, v8, v9, v10, v14, v15, v16, v17, v18, v19);
  return sub_1B21D92BC(v11, v12, a2);
}

uint64_t CommonTableExpression.association<A>(to:on:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  sub_1B213574C();
  sub_1B2111904();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v19 = v8;
  sub_1B2112C7C();
  v16 = sub_1B2116254(v9, v10, *(a3 + 16), v11, v12, v13, v14, v15, sub_1B21F6640, v19, v20, v21, v22, v23);
  sub_1B21D92BC(v16, v17, a4);
}

uint64_t CommonTableExpression.association<A>(to:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1[1];
  v9 = *a1;
  v10 = v5;
  type metadata accessor for Table();
  sub_1B21518F0(__src);
  sub_1B21176AC();
  v6 = *(a2 + 16);
  return sub_1B21D92BC(__src, &v8, a3);
}

uint64_t sub_1B21F6450()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B21F6494(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 187))
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

uint64_t sub_1B21F64D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 186) = 0;
    *(result + 184) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 187) = 1;
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

    *(result + 187) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B21F6550(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 171))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 72) >> 1;
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

double sub_1B21F6598(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 170) = 0;
    *(a1 + 168) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 171) = 1;
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
      *(a1 + 56) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 24) = 0u;
      *(a1 + 8) = 0u;
      *(a1 + 72) = 2 * -a2;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 128) = 0u;
      *(a1 + 144) = 0u;
      *(a1 + 154) = 0u;
      return result;
    }

    *(a1 + 171) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B21F6678()
{
  if (qword_1EB7A0C78 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB7A0C80;
  sub_1B2253510();
  v1 = sub_1B2252290();

  v2 = [v0 objectForKey_];

  if (v2)
  {
    v3 = sub_1B22522A0();

    return v3;
  }

  sub_1B2253510();
  strcpy(v28, "(.)\\b.*$");
  BYTE1(v28[1]) = 0;
  WORD1(v28[1]) = 0;
  HIDWORD(v28[1]) = -402653184;
  v26 = 12580;
  v27 = 0xE200000000000000;
  v4 = sub_1B2156990();
  v5 = MEMORY[0x1E69E6158];
  v3 = sub_1B2117D94(v28, &v26);
  v7 = v6;

  v24 = v3;
  v25 = v7;
  strcpy(v28, "^([A-Z]+).*$");
  BYTE5(v28[1]) = 0;
  HIWORD(v28[1]) = -5120;
  v26 = 12580;
  v27 = 0xE200000000000000;
  v22 = v4;
  v23 = v4;
  v20 = v5;
  v21 = v4;
  sub_1B2117D94(v28, &v26);
  v8 = sub_1B2252380();
  if (sub_1B2252380() == v8)
  {

    v3 = sub_1B2252220();
LABEL_9:

LABEL_14:

    v18 = sub_1B2252290();

    sub_1B2253510();
    v19 = sub_1B2252290();

    [v0 setObject:v18 forKey:{v19, v20, v21, v22, v23, v24, v25}];

    return v3;
  }

  if (v8 == 1)
  {
    v9 = sub_1B2252220();
    v11 = v10;

    v12 = sub_1B21FD2F0(1uLL, v3, v7);
    v28[0] = v9;
LABEL_13:
    v28[1] = v11;
    v24 = v12;
    v25 = v13;
    sub_1B21F7FE8();

    sub_1B22523C0();

    v3 = v28[0];
    goto LABEL_14;
  }

  if (!v8)
  {
    goto LABEL_9;
  }

  sub_1B2228DCC(1);
  v14 = sub_1B2252B10();
  v11 = v15;

  v16 = sub_1B2252380();

  result = v16 - 1;
  if (!__OFSUB__(v16, 1))
  {
    v12 = sub_1B21FD2F0(result, v3, v7);
    v28[0] = v14;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void static TableRecord.numberOfSelectedColumns(_:)()
{
  sub_1B2111640();
  v1 = v0;
  v3 = v2;
  v4 = (*(v0 + 8))(v2, v0);
  v6 = v5;
  type metadata accessor for TableAlias();
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v6;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 48) = 1;
  type metadata accessor for StatementArgumentsSink();
  swift_allocObject();
  v8 = sub_1B2114D98(0);
  v9 = MEMORY[0x1E69E7CC0];
  sub_1B2116B4C();
  type metadata accessor for SQLGenerationContext();
  swift_allocObject();

  v11 = sub_1B2117164(v10, v8, v9);
  v12 = (*(v1 + 16))(v3, v1);
  v13 = *(v12 + 16);
  if (v13)
  {
    sub_1B213A1C8();
    v14 = v9;
    v15 = v12 + 32;
    for (i = v13 - 1; ; --i)
    {
      sub_1B211EE68(v15, v35);
      v17 = v36;
      v18 = v37;
      sub_1B21139A0(v35, v36);
      (*(v18 + 8))(__src, v17, v18);
      memcpy(__dst, __src, sizeof(__dst));
      memcpy(v40, __src, 0xB8uLL);
      switch(sub_1B213A580(v40))
      {
        case 1u:
          v27 = sub_1B213AA9C(v40);
          memcpy(v31, v27, 0xA3uLL);
          sub_1B213A774(__dst, v33);
          v28 = sub_1B21180FC();
          sub_1B213BBD8(v28, v29);
          sub_1B213A5CC(__dst);
          sub_1B213A5CC(__dst);
          memcpy(v33, v32, 0xA3uLL);
          sub_1B214D464(v33);
          goto LABEL_9;
        case 2u:
          v20 = sub_1B213AA9C(v40);
          v22 = v20[21];
          v21 = v20[22];
          memcpy(v31, v20, 0xA3uLL);
          sub_1B213A774(__dst, v33);
          v23 = sub_1B21180FC();
          sub_1B213BBD8(v23, v24);
          sub_1B21356F8(v20);
          sub_1B213A5CC(__dst);
          memcpy(v33, v32, 0xA8uLL);
          v33[21] = v22;
          v33[22] = v21;
          sub_1B2155A5C(v33);
          goto LABEL_9;
        case 3u:
          v31[0] = *sub_1B213AA9C(v40);
          sub_1B213A774(__dst, v33);
          v25 = sub_1B21180FC();
          sub_1B2153E58(v25, v26);
          sub_1B213A5CC(__dst);
          sub_1B213A5CC(__dst);
          v33[0] = v32[0];
          sub_1B216ED24(v33);
          goto LABEL_9;
        case 4u:
          v33[0] = v7;
          sub_1B213A59C(v33);

          sub_1B213A5CC(__dst);
LABEL_9:
          v19 = v33;
          break;
        default:
          sub_1B213AA9C(v40);
          v19 = __dst;
          break;
      }

      memcpy(v38, v19, sizeof(v38));
      sub_1B2113208(v35);
      v30 = *(v14 + 16);
      if (v30 >= *(v14 + 24) >> 1)
      {
        sub_1B213A1C8();
      }

      *(v14 + 16) = v30 + 1;
      memcpy((v14 + 184 * v30 + 32), v38, 0xB8uLL);
      if (!i)
      {
        break;
      }

      v15 += 40;
    }
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  sub_1B2178F60(v11, v14);
  sub_1B2115BF0();

  sub_1B2112FDC();
}

void (*sub_1B21F6E04(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t)))(uint64_t, uint64_t)
{
  static TableRecord.all()(v50);
  sub_1B2111634();
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest();
  a4(a1, InterfaceRequest);
  sub_1B2115BF0();
  sub_1B211608C(v7, v8, v9, v10, v11, v12, v13, v14, v28, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50[0]);
  sub_1B21142DC();
  v16 = *(v15 + 8);
  v25 = sub_1B2112FF4(v17, v18, v19, v20, v21, v22, v23, v24, v29);
  v26(v25);
  return a4;
}

void static TableRecord.exists<A>(_:key:)()
{
  sub_1B2111640();
  v24 = v0;
  v25 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_1B2252B00();
  sub_1B21115E0();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v23 - v18;
  sub_1B2111808(v7);
  (*(v20 + 16))(v19, v11, v7);
  sub_1B21117B4(v19, 0, 1, v7);
  static TableRecord.filter<A>(key:)(v27, v19, v9, v7, v5, v3);
  (*(v14 + 8))(v19, v12);
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest();
  QueryInterfaceRequest.isEmpty(_:)(v25, InterfaceRequest);
  memcpy(v26, v27, 0xA2uLL);
  sub_1B2111808(InterfaceRequest);
  (*(v22 + 8))(v26, InterfaceRequest);
  sub_1B2112FDC();
}

uint64_t static TableRecord<>.exists(_:id:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B2115288(a1, a2);
  static TableRecord<>.filter(id:)(v3);
  sub_1B2111634();
  type metadata accessor for QueryInterfaceRequest();
  v4 = sub_1B2115680();
  v6 = QueryInterfaceRequest.isEmpty(_:)(v4, v5);
  if (v2)
  {
    sub_1B211608C(v6, v7, v8, v9, v10, v11, v12, v13, v41, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
    sub_1B21142DC();
    v15 = *(v14 + 8);
    v24 = sub_1B2112FF4(v16, v17, v18, v19, v20, v21, v22, v23, v42);
    v25(v24);
  }

  else
  {
    v27 = v6;
    sub_1B211608C(v6, v7, v8, v9, v10, v11, v12, v13, v41, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
    sub_1B21142DC();
    v29 = *(v28 + 8);
    v38 = sub_1B2112FF4(v30, v31, v32, v33, v34, v35, v36, v37, v43);
    v39(v38);
    v26 = v27 ^ 1;
  }

  return sub_1B211D8B0(v26);
}

{
  sub_1B2115288(a1, a2);
  static TableRecord<>.filter(id:)();
  sub_1B2111634();
  type metadata accessor for QueryInterfaceRequest();
  v3 = sub_1B2115680();
  v5 = QueryInterfaceRequest.isEmpty(_:)(v3, v4);
  if (v2)
  {
    sub_1B211608C(v5, v6, v7, v8, v9, v10, v11, v12, v40, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63);
    sub_1B21142DC();
    v14 = *(v13 + 8);
    v23 = sub_1B2112FF4(v15, v16, v17, v18, v19, v20, v21, v22, v41);
    v24(v23);
  }

  else
  {
    v26 = v5;
    sub_1B211608C(v5, v6, v7, v8, v9, v10, v11, v12, v40, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63);
    sub_1B21142DC();
    v28 = *(v27 + 8);
    v37 = sub_1B2112FF4(v29, v30, v31, v32, v33, v34, v35, v36, v42);
    v38(v37);
    v25 = v26 ^ 1;
  }

  return sub_1B211D8B0(v25);
}

uint64_t static TableRecord.exists(_:key:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B2115288(a1, a2);
  static TableRecord.filter(key:)(v3, v4, v5, v6, v7, v8, v9, v10);
  sub_1B2111634();
  type metadata accessor for QueryInterfaceRequest();
  v11 = sub_1B2115680();
  v13 = QueryInterfaceRequest.isEmpty(_:)(v11, v12);
  if (v2)
  {
    sub_1B211608C(v13, v14, v15, v16, v17, v18, v19, v20, v48, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
    sub_1B21142DC();
    v22 = *(v21 + 8);
    v31 = sub_1B2112FF4(v23, v24, v25, v26, v27, v28, v29, v30, v49);
    v32(v31);
  }

  else
  {
    v34 = v13;
    sub_1B211608C(v13, v14, v15, v16, v17, v18, v19, v20, v48, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
    sub_1B21142DC();
    v36 = *(v35 + 8);
    v45 = sub_1B2112FF4(v37, v38, v39, v40, v41, v42, v43, v44, v50);
    v46(v45);
    v33 = v34 ^ 1;
  }

  return sub_1B211D8B0(v33);
}

void static TableRecord.deleteAll<A>(_:keys:)()
{
  sub_1B2111640();
  v10 = v0;
  sub_1B21115E0();
  v2 = *(v1 + 64);
  v4 = MEMORY[0x1EEE9AC00](v3);
  (*(v6 + 16))(&v11[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  swift_getAssociatedTypeWitness();
  v7 = sub_1B22526C0();
  v12[0] = v7;
  sub_1B22526A0();
  sub_1B2111968();
  swift_getWitnessTable();
  if (sub_1B2252900())
  {
  }

  else
  {
    v11[0] = v7;
    sub_1B2111B28();
    swift_getWitnessTable();
    static TableRecord.filter<A>(keys:)();

    InterfaceRequest = type metadata accessor for QueryInterfaceRequest();
    QueryInterfaceRequest.deleteAll(_:)();
    memcpy(v11, v12, 0xA2uLL);
    sub_1B2111808(InterfaceRequest);
    (*(v9 + 8))(v11, InterfaceRequest);
  }

  sub_1B2112FDC();
}

void static TableRecord.deleteOne<A>(_:key:)()
{
  sub_1B2111640();
  v33[2] = v2;
  v34 = v0;
  v33[0] = v3;
  v33[1] = v4;
  v6 = v5;
  v8 = v7;
  v9 = sub_1B2252B00();
  sub_1B21115E0();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v33 - v15;
  sub_1B21115E0();
  v18 = v17;
  v20 = *(v19 + 64);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v16, v8, v9, v22);
  if (sub_1B2122A98(v16, 1, v6) == 1)
  {
    (*(v11 + 8))(v16, v9);
    v25 = 0;
  }

  else
  {
    (*(v18 + 32))(v24, v16, v6);
    v26 = sub_1B2152D64(v6, v6);
    v27 = *(v26 + 52);
    v28 = *(v18 + 72);
    v29 = (*(v18 + 80) + *(v26 + 48)) & ~*(v18 + 80);
    swift_allocObject();
    sub_1B22525B0();
    (*(v18 + 16))(v30, v24, v6);
    sub_1B2152E00();
    sub_1B2111634();
    sub_1B22526A0();
    sub_1B2111B28();
    swift_getWitnessTable();
    static TableRecord.deleteAll<A>(_:keys:)();
    v32 = v31;

    (*(v18 + 8))(v24, v6);
    if (!v1)
    {
      v25 = v32 > 0;
    }
  }

  sub_1B211D8B0(v25);
  sub_1B2112FDC();
}

void *static TableRecord<>.deleteAll<A>(_:ids:)(uint64_t a1)
{
  if (sub_1B2118454(a1))
  {
    return 0;
  }

  v3 = sub_1B2122298();
  static TableRecord<>.filter<A>(ids:)(v3, v4, v5, v6, v7, v8);
  sub_1B2111634();
  type metadata accessor for QueryInterfaceRequest();
  v9 = sub_1B2122630();
  if (v2)
  {
    sub_1B211D5DC(v9, v10, v11, v12, v13, v14, v15, v16, v32, v34, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56);
    sub_1B21142DC();
    v26 = *(v25 + 8);
  }

  else
  {
    v1 = v9;
    sub_1B211D5DC(v9, v10, v11, v12, v13, v14, v15, v16, v32, v34, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56);
    sub_1B21142DC();
    v30 = *(v29 + 8);
  }

  v27 = sub_1B212DF5C(v17, v18, v19, v20, v21, v22, v23, v24, v33, v35);
  v28(v27);
  return v1;
}

{
  if (sub_1B2118454(a1))
  {
    return 0;
  }

  v3 = sub_1B2122298();
  static TableRecord<>.filter<A>(ids:)(v3, v4, v5, v6, v7, v8, v9, v10);
  sub_1B2111634();
  type metadata accessor for QueryInterfaceRequest();
  v11 = sub_1B2122630();
  if (v2)
  {
    sub_1B211D5DC(v11, v12, v13, v14, v15, v16, v17, v18, v34, v36, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58);
    sub_1B21142DC();
    v28 = *(v27 + 8);
  }

  else
  {
    v1 = v11;
    sub_1B211D5DC(v11, v12, v13, v14, v15, v16, v17, v18, v34, v36, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58);
    sub_1B21142DC();
    v32 = *(v31 + 8);
  }

  v29 = sub_1B212DF5C(v19, v20, v21, v22, v23, v24, v25, v26, v35, v37);
  v30(v29);
  return v1;
}

BOOL static TableRecord<>.deleteOne(_:id:)(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1B2152D64(AssociatedTypeWitness, AssociatedTypeWitness);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 72);
  v10 = *(v8 + 80);
  sub_1B211AD38();
  sub_1B22525B0();
  (*(v8 + 16))(v11, a2, AssociatedTypeWitness);
  sub_1B2152E00();
  sub_1B22526A0();
  sub_1B2111968();
  swift_getWitnessTable();
  v12 = static TableRecord<>.deleteAll<A>(_:ids:)(a1);

  return v12 > 0;
}

{
  swift_getAssociatedTypeWitness();
  sub_1B2111634();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1B2152D64(AssociatedTypeWitness, AssociatedTypeWitness);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 72);
  v10 = *(v8 + 80);
  sub_1B211AD38();
  sub_1B22525B0();
  (*(v8 + 16))(v11, a2, AssociatedTypeWitness);
  sub_1B2152E00();
  v12 = sub_1B22526A0();
  sub_1B2111968();
  swift_getWitnessTable();
  static TableRecord<>.deleteAll<A>(_:ids:)(a1);
  sub_1B2115BF0();

  return v12 > 0;
}

void *static TableRecord.deleteAll(_:keys:)(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = sub_1B2115288(a1, a2);
  static TableRecord.filter(keys:)(v4, v5, v6, v7, v8, v9, v10, v11);
  sub_1B2111634();
  type metadata accessor for QueryInterfaceRequest();
  sub_1B2115680();
  v12 = QueryInterfaceRequest.deleteAll(_:)();
  if (v3)
  {
    sub_1B211608C(v12, v13, v14, v15, v16, v17, v18, v19, v35, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57);
    sub_1B21142DC();
    v29 = *(v28 + 8);
  }

  else
  {
    v2 = v12;
    sub_1B211608C(v12, v13, v14, v15, v16, v17, v18, v19, v35, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57);
    sub_1B21142DC();
    v33 = *(v32 + 8);
  }

  v30 = sub_1B2112FF4(v20, v21, v22, v23, v24, v25, v26, v27, v36);
  v31(v30);
  return v2;
}

BOOL static TableRecord.deleteOne(_:key:)(uint64_t a1, uint64_t a2)
{
  sub_1B21619D8(&qword_1EB7A1BB0, &qword_1B22598E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B22546B0;
  *(v5 + 32) = a2;

  static TableRecord.deleteAll(_:keys:)(a1, v5);
  sub_1B2115BF0();

  return v2 > 0;
}

uint64_t static TableRecord.updateAll(_:onConflict:_:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *a2;
  static TableRecord.all()(v18);
  v19 = v5;
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest();
  v7 = QueryInterfaceRequest.updateAll(_:onConflict:_:)(a1, &v19, a3, InterfaceRequest);
  sub_1B211608C(v7, v8, v9, v10, v11, v12, v13, v14, v17[0], v17[1], v17[2], v17[3], v17[4], v17[5], v17[6], v17[7], v17[8], v17[9], v17[10], v17[11], v17[12], v17[13], v17[14], v17[15], v17[16], v17[17], v17[18], v17[19], v17[20], v18[0]);
  sub_1B2111808(InterfaceRequest);
  (*(v15 + 8))(v17, InterfaceRequest);
  return v7;
}

uint64_t static TableRecord.updateAll(_:onConflict:_:_:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v9 = *a2;
  sub_1B21619D8(&qword_1EB7A0F68, &unk_1B2254680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B22546B0;
  sub_1B214FAC0(a3, inited + 32);

  sub_1B216CE64(v7);
  static TableRecord.updateAll(_:onConflict:_:)(a1, &v9, inited);
  sub_1B2115BF0();

  return v3;
}

id sub_1B21F7F8C()
{
  result = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  qword_1EB7A0C80 = result;
  return result;
}

unint64_t sub_1B21F7FE8()
{
  result = qword_1EB7A0C70;
  if (!qword_1EB7A0C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A0C70);
  }

  return result;
}

GRDBInternal::FTS4 __swiftcall FTS4.init()()
{
  *v0 = 879981670;
  v0[1] = 0xE400000000000000;
  return result;
}

uint64_t FTS4.moduleName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_1B2112FD0();
}

double FTS4.makeTableDefinition(configuration:)(char *a1)
{
  v1 = *a1;
  type metadata accessor for FTS4TableDefinition();
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 24) = v3;
  *(v2 + 48) = 0;
  result = 0.0;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 16) = v1;
  return result;
}

uint64_t FTS4.moduleArguments(for:in:)(uint64_t a1)
{
  sub_1B21115FC();
  swift_beginAccess();
  v3 = *(a1 + 24);
  v4 = sub_1B2116B08(v3);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = v4;
    if (v4 >= 1)
    {
      v100 = a1;

      v7 = 0;
      v8 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1B27427E0](v7, v3);
        }

        else
        {
          v9 = *(v3 + 8 * v7 + 32);
        }

        if (*(v9 + 33) == 1)
        {
          break;
        }

        v17 = *(v9 + 16);
        v16 = *(v9 + 24);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B21176D0();
          v8 = v26;
        }

        v19 = *(v8 + 16);
        v18 = *(v8 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1B211156C(v18);
          sub_1B214400C();
          v8 = v27;
        }

        *(v8 + 16) = v19 + 1;
        v20 = v8 + 16 * v19;
        *(v20 + 32) = v17;
        *(v20 + 40) = v16;
        if ((*(v9 + 32) & 1) == 0)
        {
          strcpy(v113, "notindexed=");
          HIDWORD(v113[1]) = -352321536;
          v21 = *(v9 + 16);
          v22 = *(v9 + 24);

          MEMORY[0x1B2741EB0](v21, v22);

          v13 = v113[0];
          v14 = v113[1];
LABEL_17:
          v23 = *(v8 + 16);
          if (v23 >= *(v8 + 24) >> 1)
          {
            sub_1B2112C8C();
            v8 = v25;
          }

          *(v8 + 16) = v23 + 1;
          v24 = v8 + 16 * v23;
          *(v24 + 32) = v13;
          *(v24 + 40) = v14;
          goto LABEL_20;
        }

LABEL_20:
        if (v6 == ++v7)
        {

          v5 = MEMORY[0x1E69E7CC0];
          a1 = v100;
          goto LABEL_23;
        }
      }

      strcpy(v113, "languageid=");
      BYTE5(v113[1]) = 0;
      HIWORD(v113[1]) = -5120;
      v10 = *(v9 + 16);
      v11 = *(v9 + 24);

      MEMORY[0x1B2741EB0](v10, v11);

      v12 = sub_1B2111B50();
      MEMORY[0x1B2741EB0](v12);
      v13 = v113[0];
      v14 = v113[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B21176D0();
        v8 = v15;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_76:
    sub_1B21176D0();
    v8 = v84;
LABEL_35:
    sub_1B2116718();
    if (v49)
    {
      sub_1B2112C8C();
      v8 = v85;
    }

    sub_1B2116260();
    goto LABEL_38;
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_23:
  v1 = 0xE900000000000022;
  sub_1B21115FC();
  swift_beginAccess();
  v28 = *(a1 + 64);
  if (v28)
  {
    v29 = *(a1 + 56);
    v30 = *(a1 + 72);
    if (*(v30 + 16))
    {
      v111 = 0x657A696E656B6F74;
      v112 = 0xE90000000000003DLL;
      v31 = sub_1B2114460();
      sub_1B21D911C(v31, v32);

      MEMORY[0x1B2741EB0](v29, v28);

      MEMORY[0x1B2741EB0](32, 0xE100000000000000);
      v98 = 0x657A696E656B6F74;
      v99 = 0xE90000000000003DLL;
      v33 = *(v30 + 16);
      if (v33)
      {
        v95 = v29;
        v97 = v28;
        v100 = a1;
        v109 = v5;
        sub_1B2116B10();
        v34 = v5;
        v96 = v30;
        v35 = (v30 + 40);
        do
        {
          v37 = *(v35 - 1);
          v36 = *v35;
          v111 = 34;
          v112 = 0xE100000000000000;

          MEMORY[0x1B2741EB0](v37, v36);
          v38 = sub_1B21152A4();
          MEMORY[0x1B2741EB0](v38);

          v109 = v34;
          v40 = *(v34 + 16);
          v39 = *(v34 + 24);
          if (v40 >= v39 >> 1)
          {
            sub_1B211156C(v39);
            sub_1B2116B10();
            v34 = v109;
          }

          *(v34 + 16) = v40 + 1;
          v41 = v34 + 16 * v40;
          *(v41 + 32) = 34;
          *(v41 + 40) = 0xE100000000000000;
          v35 += 2;
          --v33;
        }

        while (v33);
        sub_1B21C2654(v29, v97);
        v5 = MEMORY[0x1E69E7CC0];
        a1 = v100;
        v1 = 0xE900000000000022;
      }

      else
      {
        v46 = sub_1B2114460();
        sub_1B21C2654(v46, v47);
      }

      sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
      sub_1B215175C();
      sub_1B2252250();

      v111 = 0x657A696E656B6F74;
      v112 = 0xE90000000000003DLL;

      v48 = sub_1B2113B50();
      MEMORY[0x1B2741EB0](v48);
    }

    else
    {
      v111 = 0x657A696E656B6F74;
      v112 = 0xE90000000000003DLL;
      v42 = sub_1B2114460();
      sub_1B21D911C(v42, v43);

      MEMORY[0x1B2741EB0](v29, v28);
      v44 = sub_1B2114460();
      sub_1B21C2654(v44, v45);
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_35;
    }

    goto LABEL_76;
  }

LABEL_38:
  v50 = *(a1 + 32);
  if (*(a1 + 48) == 1 || *(a1 + 40))
  {
    v111 = 0x3D746E65746E6F63;
    v112 = v1;
    sub_1B2113B50();
    sub_1B21F9EDC();
    v51 = sub_1B2113B50();
    MEMORY[0x1B2741EB0](v51);
    sub_1B2113B50();
    sub_1B21F9EE4();
    v52 = sub_1B21152A4();
    MEMORY[0x1B2741EB0](v52);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B21176D0();
      v8 = v82;
    }

    sub_1B2116718();
    if (v49)
    {
      sub_1B2112C8C();
      v8 = v83;
    }

    sub_1B2116260();
  }

  sub_1B21115FC();
  swift_beginAccess();
  v53 = *(a1 + 88);
  if (v53)
  {
    v54 = *(a1 + 80);
    v109 = 0x73736572706D6F63;
    v110 = 0xEA0000000000223DLL;

    MEMORY[0x1B2741EB0](v54, v53);

    v55 = sub_1B2111B50();
    MEMORY[0x1B2741EB0](v55);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B21176D0();
      v8 = v86;
    }

    sub_1B2116718();
    if (v49)
    {
      sub_1B2112C8C();
      v8 = v87;
    }

    sub_1B2116260();
  }

  sub_1B21115FC();
  swift_beginAccess();
  v56 = *(a1 + 104);
  if (v56)
  {
    v57 = *(a1 + 96);
    strcpy(v108, "uncompress=");
    BYTE5(v108[1]) = 0;
    HIWORD(v108[1]) = -5120;

    MEMORY[0x1B2741EB0](v57, v56);

    v58 = sub_1B2111B50();
    MEMORY[0x1B2741EB0](v58);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B21176D0();
      v8 = v88;
    }

    sub_1B2116718();
    if (v49)
    {
      sub_1B2112C8C();
      v8 = v89;
    }

    sub_1B2116260();
  }

  sub_1B21115FC();
  swift_beginAccess();
  v59 = *(a1 + 120);
  if (v59)
  {
    v60 = *(a1 + 112);
    v105 = 0x666E69686374616DLL;
    v106 = 0xEB00000000223D6FLL;

    MEMORY[0x1B2741EB0](v60, v59);

    v61 = sub_1B2111B50();
    MEMORY[0x1B2741EB0](v61);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B21176D0();
      v8 = v90;
    }

    sub_1B2116718();
    if (v49)
    {
      sub_1B2112C8C();
      v8 = v91;
    }

    sub_1B2116260();
  }

  sub_1B21115FC();
  swift_beginAccess();
  if (*(a1 + 128))
  {

    sub_1B219C484(v62, v63, v64, v65, v66, v67, v68, v69, v94, v95, v96, v97, v98, v99, v100, v101, v103, 0x223D786966657270, 0xE800000000000000, v105, v106, v107, v108[0], v108[1], v108[2], v109);
    v71 = v70;

    v72 = *(v71 + 16);
    if (v72)
    {
      v104 = v5;
      sub_1B2116B10();
      v73 = 32;
      do
      {
        v102 = *(v71 + v73);
        v74 = sub_1B2252FD0();
        v76 = v75;
        v77 = *(v104 + 16);
        if (v77 >= *(v104 + 24) >> 1)
        {
          sub_1B2116B10();
        }

        *(v104 + 16) = v77 + 1;
        v78 = v104 + 16 * v77;
        *(v78 + 32) = v74;
        *(v78 + 40) = v76;
        v73 += 8;
        --v72;
      }

      while (v72);
    }

    sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B215175C();
    sub_1B2252250();

    v79 = sub_1B2113B50();
    MEMORY[0x1B2741EB0](v79);

    v80 = sub_1B2111B50();
    MEMORY[0x1B2741EB0](v80);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B21176D0();
      v8 = v92;
    }

    sub_1B2116718();
    if (v49)
    {
      sub_1B2112C8C();
      v8 = v93;
    }

    sub_1B2116260();
  }

  return v8;
}

void FTS4.database(_:didCreate:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 48) == 1)
  {
    v7 = *(a4 + 32);
    v8 = *(a4 + 40);

    sub_1B2122058();
    Database.primaryKey(_:)();
    if (v4)
    {
      sub_1B2122058();
      sub_1B21F9EE4();
      return;
    }

    v72 = a4;
    v73 = a2;
    v74 = a3;
    if (v78)
    {
      v70 = 0x6469776F72;
      if (v78 == 1)
      {
        sub_1B21424A0(v76, v77, 1u);
      }

      v71 = 0xE500000000000000;
    }

    else
    {
      v70 = v76;
      v71 = v77;
    }

    MEMORY[0x1B2741EB0](a2, a3);
    v10 = sub_1B2111B50();
    MEMORY[0x1B2741EB0](v10);
    v76 = 34;
    v77 = 0xE100000000000000;
    v11 = sub_1B2122058();
    MEMORY[0x1B2741EB0](v11);
    v12 = sub_1B2111B50();
    MEMORY[0x1B2741EB0](v12);
    sub_1B2122058();
    sub_1B21F9EE4();
    sub_1B21115FC();
    swift_beginAccess();
    v13 = *(a4 + 24);
    v14 = sub_1B2116B08(v13);
    v15 = MEMORY[0x1E69E7CC0];
    if (v14)
    {
      v16 = v14;
      v75[0] = MEMORY[0x1E69E7CC0];

      sub_1B2116B10();
      if (v16 < 0)
      {
        __break(1u);
        return;
      }

      v17 = 0;
      v18 = v75[0];
      v19 = v13 & 0xC000000000000001;
      v20 = v13;
      do
      {
        if (v19)
        {
          v21 = MEMORY[0x1B27427E0](v17, v20);
        }

        else
        {
          v21 = *(v20 + 8 * v17 + 32);
        }

        v23 = *(v21 + 16);
        v22 = *(v21 + 24);

        v75[0] = v18;
        v25 = *(v18 + 16);
        v24 = *(v18 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_1B211156C(v24);
          sub_1B2116B10();
          v18 = v75[0];
        }

        ++v17;
        *(v18 + 16) = v25 + 1;
        v26 = v18 + 16 * v25;
        *(v26 + 32) = v23;
        *(v26 + 40) = v22;
      }

      while (v16 != v17);

      v15 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v18 = MEMORY[0x1E69E7CC0];
    }

    v75[0] = &unk_1F2968F10;

    sub_1B2156C88(v27);
    v28 = unk_1F2968F20;
    if (unk_1F2968F20)
    {
      sub_1B2116B10();
      v29 = v15;
      v30 = &unk_1F2968F38;
      do
      {
        v31 = *(v30 - 1);
        v32 = *v30;
        v75[0] = 34;
        v75[1] = 0xE100000000000000;

        MEMORY[0x1B2741EB0](v31, v32);
        v33 = sub_1B2111B50();
        MEMORY[0x1B2741EB0](v33);

        v35 = *(v29 + 16);
        v34 = *(v29 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_1B211156C(v34);
          sub_1B2116B10();
        }

        *(v29 + 16) = v35 + 1;
        v36 = v29 + 16 * v35;
        *(v36 + 32) = 34;
        *(v36 + 40) = 0xE100000000000000;
        v30 += 2;
        --v28;
      }

      while (v28);

      v15 = MEMORY[0x1E69E7CC0];
    }

    else
    {
    }

    sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B215175C();
    v68 = sub_1B21116BC();
    v69 = v37;

    sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B22546B0;
    *(inited + 32) = v70;
    *(inited + 40) = v71;
    v75[0] = inited;

    sub_1B2156C88(v18);
    v39 = *(v75[0] + 16);
    if (v39)
    {
      v79 = v15;
      sub_1B2116B10();
      v40 = (v75[0] + 40);
      v41 = v15;
      do
      {
        v42 = *(v40 - 1);
        v43 = *v40;
        v75[0] = 779576686;
        v75[1] = 0xE400000000000000;

        MEMORY[0x1B2741EB0](v42, v43);
        v44 = sub_1B21152A4();
        MEMORY[0x1B2741EB0](v44);
        MEMORY[0x1B2741EB0](34, 0xE100000000000000);

        v79 = v41;
        v46 = *(v41 + 16);
        v45 = *(v41 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_1B211156C(v45);
          sub_1B2116B10();
          v41 = v79;
        }

        *(v41 + 16) = v46 + 1;
        v47 = v41 + 16 * v46;
        *(v47 + 32) = 779576686;
        *(v47 + 40) = 0xE400000000000000;
        v40 += 2;
        --v39;
      }

      while (v39);
    }

    v48 = sub_1B21116BC();
    v66 = v49;
    v67 = v48;

    v75[0] = 778333295;
    v75[1] = 0xE400000000000000;
    MEMORY[0x1B2741EB0](v70, v71);
    v50 = sub_1B21152A4();
    MEMORY[0x1B2741EB0](v50);

    sub_1B212CECC();

    if (*(v72 + 16))
    {
      v51 = 0x4520544F4E204649;
    }

    else
    {
      v51 = 0;
    }

    if (*(v72 + 16))
    {
      v52 = 0xEE00205354534958;
    }

    else
    {
      v52 = 0xE000000000000000;
    }

    v75[0] = 0;
    v75[1] = 0xE000000000000000;
    sub_1B2252CD0();
    MEMORY[0x1B2741EB0](0x5420455441455243, 0xEF20524547474952);
    MEMORY[0x1B2741EB0](v51, v52);
    sub_1B21158E0();
    MEMORY[0x1B2741EB0](v73, v74);
    MEMORY[0x1B2741EB0](7692895, 0xE300000000000000);
    MEMORY[0x1B2741EB0](34, 0xE100000000000000);
    v53 = sub_1B21152A4();
    MEMORY[0x1B2741EB0](v53);

    sub_1B212CECC();

    MEMORY[0x1B2741EB0]();
    MEMORY[0x1B2741EB0](34, 0xE100000000000000);
    sub_1B2117DBC();
    MEMORY[0x1B2741EB0](34, 0xE100000000000000);
    sub_1B2115D08();
    MEMORY[0x1B2741EB0](778333295, 0xE400000000000000);
    MEMORY[0x1B2741EB0](0xD000000000000016, 0x80000001B226F640);
    MEMORY[0x1B2741EB0](v51, v52);
    sub_1B21158E0();
    MEMORY[0x1B2741EB0](v73, v74);
    MEMORY[0x1B2741EB0](6578783, 0xE300000000000000);
    sub_1B2118494();
    MEMORY[0x1B2741EB0]();
    v54 = sub_1B21152A4();
    MEMORY[0x1B2741EB0](v54);

    MEMORY[0x1B2741EB0](34, 0xE100000000000000);

    MEMORY[0x1B2741EB0](0xD000000000000012, 0x80000001B226F660);
    MEMORY[0x1B2741EB0](34, 0xE100000000000000);
    sub_1B2117DBC();
    MEMORY[0x1B2741EB0](34, 0xE100000000000000);
    sub_1B2115D08();
    MEMORY[0x1B2741EB0](778333295, 0xE400000000000000);

    MEMORY[0x1B2741EB0](0xD000000000000016, 0x80000001B226F640);
    MEMORY[0x1B2741EB0](v51, v52);
    sub_1B21158E0();
    MEMORY[0x1B2741EB0](v73, v74);
    MEMORY[0x1B2741EB0](7692639, 0xE300000000000000);
    sub_1B2118494();
    MEMORY[0x1B2741EB0]();
    v55 = sub_1B21152A4();
    MEMORY[0x1B2741EB0](v55);

    sub_1B212CECC();

    MEMORY[0x1B2741EB0]();
    MEMORY[0x1B2741EB0](34, 0xE100000000000000);
    sub_1B2117DBC();
    MEMORY[0x1B2741EB0](34, 0xE100000000000000);
    MEMORY[0x1B2741EB0](40, 0xE100000000000000);
    MEMORY[0x1B2741EB0](v68, v69);
    sub_1B212DF68();
    MEMORY[0x1B2741EB0](v67, v66);
    sub_1B2117DBC();
    MEMORY[0x1B2741EB0](v51, v52);

    sub_1B21158E0();
    MEMORY[0x1B2741EB0](v73, v74);
    MEMORY[0x1B2741EB0](6906207, 0xE300000000000000);
    sub_1B2118494();
    MEMORY[0x1B2741EB0]();
    v56 = sub_1B21152A4();
    MEMORY[0x1B2741EB0](v56);

    MEMORY[0x1B2741EB0](34, 0xE100000000000000);

    MEMORY[0x1B2741EB0](0xD000000000000011, 0x80000001B226DA70);
    MEMORY[0x1B2741EB0](34, 0xE100000000000000);

    sub_1B2117DBC();
    MEMORY[0x1B2741EB0](34, 0xE100000000000000);
    MEMORY[0x1B2741EB0](40, 0xE100000000000000);
    MEMORY[0x1B2741EB0](v68, v69);

    sub_1B212DF68();
    MEMORY[0x1B2741EB0](v67, v66);

    MEMORY[0x1B2741EB0](0x3B444E450A3B29, 0xE700000000000000);
    v57._countAndFlagsBits = v75[0];
    v58 = v75[1];
    v59 = MEMORY[0x1E69E7CC8];
    v60 = MEMORY[0x1E69E7CC0];
    v75[0] = MEMORY[0x1E69E7CC0];
    v75[1] = MEMORY[0x1E69E7CC8];
    v61.values._rawValue = v75;
    v57._object = v58;
    Database.execute(sql:arguments:)(v57, v61);

    if (!v62)
    {

      v75[0] = 0;
      v75[1] = 0xE000000000000000;
      sub_1B2252CD0();

      strcpy(v75, "INSERT INTO ");
      BYTE5(v75[1]) = 0;
      HIWORD(v75[1]) = -5120;
      MEMORY[0x1B2741EB0](34, 0xE100000000000000);
      MEMORY[0x1B2741EB0](40, 0xE100000000000000);
      MEMORY[0x1B2741EB0](34, 0xE100000000000000);

      MEMORY[0x1B2741EB0](0xD000000000000013, 0x80000001B226DB50);
      v63._countAndFlagsBits = v75[0];
      v64 = v75[1];
      v75[0] = v60;
      v75[1] = v59;
      v65.values._rawValue = v75;
      v63._object = v64;
      Database.execute(sql:arguments:)(v63, v65);
    }
  }
}

uint64_t FTS4TableDefinition.tokenizer.getter@<X0>(uint64_t *a1@<X8>)
{
  sub_1B21115FC();
  swift_beginAccess();
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return sub_1B21D911C(v3, v4);
}

uint64_t FTS4TableDefinition.tokenizer.setter(__int128 *a1)
{
  v7 = *a1;
  v2 = *(a1 + 2);
  swift_beginAccess();
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  *(v1 + 7) = v7;
  v1[9] = v2;
  return sub_1B21C2654(v3, v4);
}

uint64_t FTS4TableDefinition.content.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  sub_1B21F9EDC();
  return v1;
}

uint64_t sub_1B21F9640(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return FTS4TableDefinition.content.setter(v2, v3);
}

uint64_t FTS4TableDefinition.content.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  *(v2 + 48) = 0;
  return sub_1B21F9EE4();
}

uint64_t (*FTS4TableDefinition.content.modify(uint64_t *a1))(void *a1, char a2)
{
  a1[2] = v1;
  *a1 = FTS4TableDefinition.content.getter();
  a1[1] = v3;
  return sub_1B21F96E4;
}

uint64_t sub_1B21F96E4(void *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  *(v2 + 32) = *a1;
  *(v2 + 40) = v3;
  *(v2 + 48) = 0;
  if (a2)
  {

    sub_1B21F9EE4();
  }

  else
  {

    return sub_1B21F9EE4();
  }
}

uint64_t FTS4TableDefinition.compress.getter()
{
  sub_1B21115FC();
  swift_beginAccess();
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return sub_1B2112FD0();
}

uint64_t FTS4TableDefinition.compress.setter(uint64_t a1, uint64_t a2)
{
  sub_1B211D8D0();
  v5 = *(v2 + 88);
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

uint64_t FTS4TableDefinition.uncompress.getter()
{
  sub_1B21115FC();
  swift_beginAccess();
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return sub_1B2112FD0();
}

uint64_t FTS4TableDefinition.uncompress.setter(uint64_t a1, uint64_t a2)
{
  sub_1B211D8D0();
  v5 = *(v2 + 104);
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
}

uint64_t FTS4TableDefinition.matchinfo.getter()
{
  sub_1B21115FC();
  swift_beginAccess();
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return sub_1B2112FD0();
}

uint64_t FTS4TableDefinition.matchinfo.setter(uint64_t a1, uint64_t a2)
{
  sub_1B211D8D0();
  v5 = *(v2 + 120);
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
}

uint64_t FTS4TableDefinition.prefixes.getter()
{
  sub_1B21115FC();
  swift_beginAccess();
  v1 = *(v0 + 128);
}

uint64_t FTS4TableDefinition.prefixes.setter(uint64_t a1)
{
  sub_1B211D8D0();
  v3 = *(v1 + 128);
  *(v1 + 128) = a1;
}

uint64_t FTS4TableDefinition.column(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for FTS4ColumnDefinition();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = 1;
  swift_beginAccess();

  MEMORY[0x1B2742060](v7);
  sub_1B212B4C4(*((*(v3 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1B2252630();
  swift_endAccess();
  return v6;
}

Swift::Void __swiftcall FTS4TableDefinition.synchronize(withTable:)(Swift::String withTable)
{
  object = withTable._object;
  v3 = *(v1 + 32);
  withTable._object = *(v1 + 40);
  v4 = *(v1 + 48);
  *(v1 + 32) = withTable._countAndFlagsBits;
  *(v1 + 40) = object;
  *(v1 + 48) = 1;
  sub_1B21F9EE4();
}

uint64_t FTS4TableDefinition.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  sub_1B21F9EE4();
  v5 = *(v0 + 72);
  sub_1B21C2654(*(v0 + 56), *(v0 + 64));
  v6 = *(v0 + 88);

  v7 = *(v0 + 104);

  v8 = *(v0 + 120);

  v9 = *(v0 + 128);

  return v0;
}

uint64_t FTS4TableDefinition.__deallocating_deinit()
{
  FTS4TableDefinition.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 136, 7);
}

uint64_t FTS4ColumnDefinition.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t FTS4ColumnDefinition.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 34, 7);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.dropFTS4SynchronizationTriggers(forTable:)(Swift::String forTable)
{
  sub_1B2252CD0();
  MEMORY[0x1B2741EB0](0xD000000000000017, 0x80000001B226DB70);
  sub_1B21222C0();
  MEMORY[0x1B2741EB0](7692895, 0xE300000000000000);
  sub_1B212D0C4();
  v1 = sub_1B2111B50();
  MEMORY[0x1B2741EB0](v1);

  sub_1B211AE64();

  sub_1B2122654();
  sub_1B21222C0();
  MEMORY[0x1B2741EB0](6578783, 0xE300000000000000);
  sub_1B212D0C4();
  v2 = sub_1B2111B50();
  MEMORY[0x1B2741EB0](v2);

  sub_1B211AE64();

  sub_1B2122654();
  sub_1B21222C0();
  MEMORY[0x1B2741EB0](7692639, 0xE300000000000000);
  sub_1B212D0C4();
  v3 = sub_1B2111B50();
  MEMORY[0x1B2741EB0](v3);

  sub_1B211AE64();

  sub_1B2122654();
  sub_1B21222C0();
  MEMORY[0x1B2741EB0](6906207, 0xE300000000000000);
  MEMORY[0x1B2741EB0]();
  v4 = sub_1B2111B50();
  MEMORY[0x1B2741EB0](v4);

  MEMORY[0x1B2741EB0](34, 0xE100000000000000);

  MEMORY[0x1B2741EB0](59, 0xE100000000000000);
  v5._countAndFlagsBits = 0;
  v7[0] = MEMORY[0x1E69E7CC0];
  v7[1] = MEMORY[0x1E69E7CC8];
  v6.values._rawValue = v7;
  v5._object = 0xE000000000000000;
  Database.execute(sql:arguments:)(v5, v6);
}

uint64_t sub_1B21F9F6C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = 0;
  v5 = 0;
  v6 = 4;
  v1(&v4);
  return sub_1B2113A44(v4, v5, v6);
}

uint64_t sub_1B21F9FC0(char a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = a1 & 1;
  v6 = 0;
  v7 = 0;
  v2(&v5);
  return sub_1B2113A44(v5, v6, v7);
}