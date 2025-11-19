uint64_t sub_1C46F4358(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v50 = a3;
  v51 = sub_1C456902C(&qword_1EC0B89E0, &qword_1C4F0DE00);
  v7 = *(*(v51 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v51);
  v52 = (&v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v44 - v11);
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v15 = a2 - a1;
  v16 = a2 - a1 == 0x8000000000000000 && v14 == -1;
  if (v16)
  {
    goto LABEL_61;
  }

  v17 = v50 - a2;
  if (v50 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v19 = v15 / v14;
  v55 = a1;
  v54 = a4;
  v20 = v17 / v14;
  if (v15 / v14 >= v17 / v14)
  {
    sub_1C459C4E8(a2, v17 / v14, a4);
    v27 = a4 + v20 * v14;
    v28 = -v14;
    v29 = v27;
    v30 = v50;
    v49 = -v14;
    v47 = a1;
LABEL_37:
    v50 = a2 + v28;
    v31 = v30;
    v45 = v29;
    v48 = a2;
    while (1)
    {
      if (v27 <= a4)
      {
        v55 = a2;
        v53 = v29;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v46 = v29;
      v32 = a4;
      v33 = v31 + v49;
      v34 = v27 + v49;
      sub_1C4460108(v27 + v49, v12, &qword_1EC0B89E0, &qword_1C4F0DE00);
      v35 = v12;
      v36 = v52;
      sub_1C4460108(v50, v52, &qword_1EC0B89E0, &qword_1C4F0DE00);
      v37 = *v35;
      v38 = *v36;
      v39 = v36;
      v12 = v35;
      sub_1C4420C3C(v39, &qword_1EC0B89E0, &qword_1C4F0DE00);
      sub_1C4420C3C(v35, &qword_1EC0B89E0, &qword_1C4F0DE00);
      if (v38 < v37)
      {
        v41 = v31 < v48 || v33 >= v48;
        v30 = v33;
        a4 = v32;
        if (v41)
        {
          a2 = v50;
          swift_arrayInitWithTakeFrontToBack();
          v28 = v49;
          v29 = v46;
          a1 = v47;
        }

        else
        {
          v29 = v46;
          v16 = v31 == v48;
          v28 = v49;
          v42 = v50;
          a2 = v50;
          a1 = v47;
          if (!v16)
          {
            v43 = v46;
            swift_arrayInitWithTakeBackToFront();
            a2 = v42;
            v29 = v43;
          }
        }

        goto LABEL_37;
      }

      v40 = v31 < v27 || v33 >= v27;
      a4 = v32;
      if (v40)
      {
        v31 = v33;
        swift_arrayInitWithTakeFrontToBack();
        v27 = v34;
        v29 = v34;
        a1 = v47;
        a2 = v48;
      }

      else
      {
        v29 = v34;
        v16 = v27 == v31;
        v31 = v33;
        v27 = v34;
        a1 = v47;
        a2 = v48;
        if (!v16)
        {
          v31 = v33;
          swift_arrayInitWithTakeBackToFront();
          v27 = v34;
          v29 = v34;
        }
      }
    }

    v55 = a2;
    v53 = v45;
  }

  else
  {
    sub_1C459C4E8(a1, v15 / v14, a4);
    v49 = a4 + v19 * v14;
    v53 = v49;
    while (a4 < v49 && a2 < v50)
    {
      sub_1C4460108(a2, v12, &qword_1EC0B89E0, &qword_1C4F0DE00);
      v22 = v52;
      sub_1C4460108(a4, v52, &qword_1EC0B89E0, &qword_1C4F0DE00);
      v23 = *v12;
      v24 = *v22;
      sub_1C4420C3C(v22, &qword_1EC0B89E0, &qword_1C4F0DE00);
      sub_1C4420C3C(v12, &qword_1EC0B89E0, &qword_1C4F0DE00);
      if (v24 >= v23)
      {
        if (a1 < a4 || a1 >= a4 + v14)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v54 = a4 + v14;
        a4 += v14;
      }

      else
      {
        if (a1 < a2 || a1 >= a2 + v14)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v14;
      }

      a1 += v14;
      v55 = a1;
    }
  }

LABEL_59:
  sub_1C4BEB3D4(&v55, &v54, &v53);
  return 1;
}

uint64_t sub_1C46F47D8(uint64_t *a1, uint64_t a2)
{
  v5 = sub_1C4EF9CD8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v45 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v45 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v45 - v17;
  v47 = a1;
  v19 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  result = sub_1C46EF2CC(v19, a2);
  if (v2)
  {
LABEL_26:

    return v10;
  }

  v60 = v18;
  if (v21)
  {
    v10 = *(v19 + 16);

    return v10;
  }

  v49 = v10;
  v50 = v13;
  v45 = 0;
  v22 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v10 = result;
    v61 = v6 + 16;
    v58 = a2 + 56;
    v59 = (v6 + 8);
    v46 = (v6 + 40);
    v23 = v60;
    v24 = v19;
    v51 = v6;
    while (1)
    {
      v25 = *(v24 + 16);
      if (v22 == v25)
      {
        goto LABEL_26;
      }

      if (v22 >= v25)
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        break;
      }

      v55 = v24;
      v56 = v10;
      v52 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v26 = *(v6 + 72);
      v57 = v22;
      v27 = *(v6 + 16);
      v53 = v24 + v52;
      v54 = v26 * v22;
      v28 = v27;
      v27(v23, v24 + v52 + v26 * v22, v5);
      if (*(a2 + 16))
      {
        v29 = *(a2 + 40);
        sub_1C46F4CA0(&qword_1EC0B90D0, MEMORY[0x1E6969530]);
        v30 = sub_1C4F00FD8();
        v31 = a2;
        v32 = ~(-1 << *(a2 + 32));
        while (1)
        {
          v33 = v30 & v32;
          a2 = v31;
          v23 = v60;
          if (((*(v58 + (((v30 & v32) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v30 & v32)) & 1) == 0)
          {
            break;
          }

          v28(v16, *(v31 + 48) + v33 * v26, v5);
          sub_1C46F4CA0(&qword_1EC0B9D00, MEMORY[0x1E6969530]);
          v34 = sub_1C4F010B8();
          v35 = *v59;
          (*v59)(v16, v5);
          v30 = v33 + 1;
          if (v34)
          {
            v23 = v60;
            result = v35(v60, v5);
            a2 = v31;
            v24 = v55;
            v10 = v56;
            v36 = v57;
            goto LABEL_23;
          }
        }
      }

      result = (*v59)(v23, v5);
      v37 = v56;
      v36 = v57;
      if (v56 == v57)
      {
        v24 = v55;
      }

      else
      {
        v24 = v55;
        if ((v56 & 0x8000000000000000) != 0)
        {
          goto LABEL_31;
        }

        v38 = *(v55 + 16);
        if (v56 >= v38)
        {
          goto LABEL_32;
        }

        v39 = v26 * v56;
        v40 = v53;
        v48 = v39;
        result = (v28)(v50, v53 + v39, v5);
        if (v57 >= v38)
        {
          goto LABEL_33;
        }

        v28(v49, v40 + v54, v5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C48348C0(v24);
          v24 = v44;
        }

        v41 = v24 + v52;
        v42 = *v46;
        result = (*v46)(v24 + v52 + v48, v49, v5);
        if (v57 >= *(v24 + 16))
        {
          goto LABEL_34;
        }

        result = v42(v41 + v54, v50, v5);
        v36 = v57;
        *v47 = v24;
        v23 = v60;
      }

      v43 = __OFADD__(v37, 1);
      v10 = (v37 + 1);
      if (v43)
      {
        goto LABEL_30;
      }

LABEL_23:
      v43 = __OFADD__(v36, 1);
      v22 = (v36 + 1);
      v6 = v51;
      if (v43)
      {
        goto LABEL_29;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C46F4CA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C46F4CE8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1C46F1200;

  return sub_1C46F0CB4(a1, a2, v2);
}

uint64_t sub_1C46F4D94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntityRelevanceInteractionGroundTruth();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C46F4DF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C46F4E50(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C46F4EEC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1 * 300.0;
  return sub_1C4EF9BE8();
}

uint64_t sub_1C46F4F2C(uint64_t a1)
{
  sub_1C45F6D88();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v3 - 8) + 84);
    return 0;
  }

  return v3;
}

uint64_t sub_1C46F4FD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, sub_1C451FE80);
}

uint64_t sub_1C46F5038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, sub_1C451FE88);
}

uint64_t *sub_1C46F50BC(uint64_t *result)
{
  v2 = *(v1 + 136);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
    goto LABEL_18;
  }

  v5 = result;
  *(v1 + 136) = v4;
  v6 = result[10];
  v7 = *(v1 + 152);
  v3 = __OFADD__(v7, v6);
  v8 = v7 + v6;
  if (v3)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(v1 + 152) = v8;
  *(v1 + 16) = sub_1C46F64FC(*(v1 + 16), result[2], result[3]);

  v9 = *(v1 + 56);
  *(v1 + 56) = sub_1C441F820(*(v5 + 2));

  if (v5[10] >= 1)
  {
    v10 = *(v1 + 144);
    v3 = __OFADD__(v10, 1);
    v11 = v10 + 1;
    if (!v3)
    {
      *(v1 + 144) = v11;
      v12 = *(v1 + 24);
      v13 = v5[12];
      if (v13 >= 1)
      {
        v13 = 1;
      }

      *(v1 + 24) = sub_1C4411B9C(v13, v5[4]);

      v14 = *(v1 + 32);
      v15 = v5[12];
      if (v15 >= 2)
      {
        v15 = 2;
      }

      *(v1 + 32) = sub_1C4411B9C(v15, v5[5]);

      v16 = *(v1 + 40);
      v17 = v5[12];
      if (v17 >= 4)
      {
        v17 = 4;
      }

      *(v1 + 40) = sub_1C4411B9C(v17, v5[6]);

      v18 = *(v1 + 48);
      v19 = v5[12];
      if (v19 >= 8)
      {
        v19 = 8;
      }

      *(v1 + 48) = sub_1C4411B9C(v19, v5[7]);

      v20 = *(v1 + 64);
      *(v1 + 64) = sub_1C441F820(*(v5 + 4));

      v21 = *(v1 + 72);
      *(v1 + 72) = sub_1C441F820(*(v5 + 5));

      v22 = *(v1 + 80);
      *(v1 + 80) = sub_1C441F820(*(v5 + 6));

      v23 = *(v1 + 88);
      *(v1 + 88) = sub_1C441F820(*(v5 + 7));

      *(v1 + 96) = sub_1C46F64FC(*(v1 + 96), *(v5 + 8), 1.0);

      *(v1 + 104) = sub_1C46F64FC(*(v1 + 104), *(v5 + 9), 1.0);

      goto LABEL_14;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_14:
  v24 = *(v1 + 112);
  *(v1 + 112) = sub_1C4417040(*(v5 + 12));

  v25 = *(v1 + 120);
  *(v1 + 120) = sub_1C4417040(*(v5 + 11));

  v26 = *(v1 + 128);
  *(v1 + 128) = sub_1C4417040(*(v5 + 3));
}

double sub_1C46F52FC@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  sub_1C46F5B58();
  v91 = v5;
  v92 = v4;
  v90 = v6;
  v7 = sub_1C46F6594(a1[3]);
  v88 = v8;
  v89 = v7;
  v87 = v9;
  v10 = sub_1C46F6594(a1[4]);
  v85 = v11;
  v86 = v10;
  v84 = v12;
  v13 = sub_1C46F6594(a1[5]);
  v82 = v14;
  v83 = v13;
  v81 = v15;
  v16 = sub_1C46F6594(a1[6]);
  v79 = v17;
  v80 = v16;
  v78 = v18;
  v19 = sub_1C46F65C8(a1[7]);
  v76 = v20;
  v77 = v19;
  v75 = v21;
  v22 = sub_1C46F65C8(a1[8]);
  v73 = v23;
  v74 = v22;
  v72 = v24;
  v25 = sub_1C46F65C8(a1[9]);
  v70 = v26;
  v71 = v25;
  v69 = v27;
  v28 = sub_1C46F65C8(a1[10]);
  v67 = v29;
  v68 = v28;
  v66 = v30;
  v31 = sub_1C46F65C8(a1[11]);
  v64 = v32;
  v65 = v31;
  v63 = v33;
  v34 = sub_1C46F5BA4();
  v61 = v35;
  v62 = v34;
  v60 = v36;
  v37 = sub_1C46F5BE0();
  v58 = v38;
  v59 = v37;
  v57 = v39;
  v40 = sub_1C46F6600(a1[14]);
  v42 = v41;
  v56 = v43;
  v44 = sub_1C46F6600(a1[15]);
  v46 = v45;
  v48 = v47;
  v49 = sub_1C46F6600(a1[16]);
  v51 = v50;
  v53 = v52;
  v54 = a1[17];

  *a2 = v92;
  *(a2 + 1) = v91;
  *(a2 + 2) = v90;
  a2[3] = v89;
  *(a2 + 4) = v88;
  *(a2 + 5) = v87;
  a2[6] = v86;
  *(a2 + 7) = v85;
  *(a2 + 8) = v84;
  a2[9] = v83;
  *(a2 + 10) = v82;
  *(a2 + 11) = v81;
  a2[12] = v80;
  *(a2 + 13) = v79;
  *(a2 + 14) = v78;
  a2[15] = v77;
  *(a2 + 16) = v76;
  *(a2 + 17) = v75;
  a2[18] = v74;
  *(a2 + 19) = v73;
  *(a2 + 20) = v72;
  a2[21] = v71;
  *(a2 + 22) = v70;
  *(a2 + 23) = v69;
  a2[24] = v68;
  *(a2 + 25) = v67;
  *(a2 + 26) = v66;
  a2[27] = v65;
  *(a2 + 28) = v64;
  *(a2 + 29) = v63;
  a2[30] = v62;
  *(a2 + 31) = v61;
  *(a2 + 32) = v60;
  a2[33] = v59;
  *(a2 + 34) = v58;
  *(a2 + 35) = v57;
  a2[36] = v40;
  *(a2 + 37) = v42;
  result = v56;
  a2[38] = v56;
  a2[39] = v44;
  *(a2 + 40) = v46;
  *(a2 + 41) = v48;
  a2[42] = v49;
  *(a2 + 43) = v51;
  *(a2 + 44) = v53;
  *(a2 + 45) = v54;
  return result;
}

uint64_t sub_1C46F54F8()
{
  sub_1C456902C(&qword_1EC0B8850, &unk_1C4F0DC40);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C4F21800;
  v2 = v0[1];
  *(v1 + 48) = *v0;
  v3 = v0[3];
  *(v1 + 72) = v0[2];
  *(v1 + 96) = v2;
  v4 = v0[16];
  v5 = v0[17];
  v6 = v0[14];
  *(v1 + 120) = v0[15];
  *(v1 + 144) = v5;
  *(v1 + 168) = v4;
  v7 = v0[4];
  v8 = v0[5];
  *(v1 + 192) = v3;
  *(v1 + 216) = v8;
  *(v1 + 240) = v7;
  v9 = v0[19];
  *(v1 + 264) = v0[18];
  v10 = v0[21];
  *(v1 + 288) = v0[20];
  *(v1 + 312) = v9;
  v11 = v0[7];
  *(v1 + 336) = v0[6];
  v12 = v0[9];
  *(v1 + 360) = v0[8];
  *(v1 + 384) = v11;
  *(v1 + 408) = v10;
  v13 = v0[22];
  *(v1 + 432) = v0[23];
  *(v1 + 456) = v13;
  v14 = v0[10];
  v15 = v0[11];
  *(v1 + 480) = v12;
  *(v1 + 504) = v15;
  *(v1 + 528) = v14;
  v16 = v0[25];
  *(v1 + 552) = v0[24];
  v17 = v0[27];
  *(v1 + 576) = v0[26];
  *(v1 + 600) = v16;
  v18 = v0[13];
  *(v1 + 624) = v0[12];
  *(v1 + 32) = 0xD000000000000010;
  *(v1 + 40) = 0x80000001C4F941D0;
  *(v1 + 56) = 0x696365725078616DLL;
  *(v1 + 64) = 0xEF6C6C416E6F6973;
  *(v1 + 80) = 0x69636572506E696DLL;
  *(v1 + 88) = 0xEF6C6C416E6F6973;
  strcpy((v1 + 104), "meanRecallAll");
  *(v1 + 118) = -4864;
  strcpy((v1 + 128), "maxRecallAll");
  *(v1 + 141) = 0;
  *(v1 + 142) = -5120;
  strcpy((v1 + 152), "minRecallAll");
  *(v1 + 165) = 0;
  *(v1 + 166) = -5120;
  sub_1C440F540();
  *(v19 + 176) = v20;
  *(v19 + 184) = v21;
  sub_1C44321DC();
  v23 = v22 & 0xFFFFFFFFFFFFLL | 0xEF31000000000000;
  v24[25] = v25;
  v24[26] = v23;
  v24[28] = v26;
  v24[29] = v23;
  v24[31] = v27;
  v24[32] = 0xED00003174416C6CLL;
  v24[34] = v28;
  v24[35] = 0xEC0000003174416CLL;
  v24[37] = v29;
  v24[38] = 0xEC0000003174416CLL;
  sub_1C440F540();
  *(v30 + 320) = v31;
  *(v30 + 328) = v32;
  sub_1C44321DC();
  v34 = v33 & 0xFFFFFFFFFFFFLL | 0xEF32000000000000;
  v35[43] = v36;
  v35[44] = v34;
  v35[46] = v37;
  v35[47] = v34;
  v35[49] = v38;
  v35[50] = 0xED00003274416C6CLL;
  v35[52] = v39;
  v35[53] = 0xEC0000003274416CLL;
  v35[55] = v40;
  v35[56] = 0xEC0000003274416CLL;
  sub_1C440F540();
  *(v41 + 464) = v42;
  *(v41 + 472) = v43;
  sub_1C44321DC();
  v45 = v44 & 0xFFFFFFFFFFFFLL | 0xEF34000000000000;
  v46[61] = v47;
  v46[62] = v45;
  v46[64] = v48;
  v46[65] = v45;
  v46[67] = v49;
  v46[68] = 0xED00003474416C6CLL;
  v46[70] = v50;
  v46[71] = 0xEC0000003474416CLL;
  v46[73] = v51;
  v46[74] = 0xEC0000003474416CLL;
  sub_1C440F540();
  v52[76] = v53;
  v52[77] = v54;
  v52[79] = v55;
  v52[80] = 0xEF3874416E6F6973;
  v52[81] = v56;
  v52[82] = v57;
  v52[83] = 0xEF3874416E6F6973;
  v52[84] = v58;
  v52[85] = v59;
  v52[86] = 0xED00003874416C6CLL;
  v60 = v0[28];
  v61 = v0[29];
  v52[87] = v62;
  v52[88] = v63;
  v52[89] = 0xEC0000003874416CLL;
  v52[90] = v61;
  v52[91] = v64;
  v52[92] = 0xEC0000003874416CLL;
  v52[93] = v60;
  v52[94] = v53 | 2;
  v52[95] = 0x80000001C4F94270;
  v65 = v0[31];
  v52[96] = v0[30];
  v52[97] = v53 | 5;
  v52[98] = 0x80000001C4F94290;
  v52[99] = v65;
  sub_1C43FD5E4();
  v66[100] = v67;
  v66[101] = v68;
  v69 = v0[33];
  v66[102] = v0[32];
  sub_1C43FD5E4();
  v71[103] = v70 | 4;
  v71[104] = v72;
  v73 = v0[34];
  v74 = v0[35];
  v71[105] = v75;
  v71[106] = v70 | 7;
  v71[107] = 0x80000001C4F942F0;
  v71[108] = v73;
  sub_1C4413048();
  v76[109] = v77;
  v76[110] = v78;
  v76[111] = v79;
  sub_1C4413048();
  v81[112] = v80 | 6;
  v81[113] = v82;
  v83 = v0[37];
  v81[114] = v0[36];
  sub_1C4413048();
  v84[115] = v85;
  v84[116] = v86;
  v87 = v0[39];
  v84[117] = v0[38];
  sub_1C4413048();
  v88[118] = v89;
  v88[119] = v90;
  v88[120] = v91;
  v88[121] = v92 | 8;
  v88[122] = 0x80000001C4F94390;
  v93 = v0[40];
  v94 = v0[41];
  v88[123] = v95;
  sub_1C4413048();
  v96[124] = v97;
  v96[125] = v98;
  v96[126] = v99;
  sub_1C4413048();
  v100[127] = v101;
  v100[128] = v102;
  v100[129] = v103;
  sub_1C43FD5E4();
  v105[130] = v104 | 0xD;
  v105[131] = v106;
  v107 = v0[43];
  v105[132] = v0[42];
  sub_1C43FD5E4();
  v109[133] = v108 | 0xC;
  v109[134] = v110;
  v111 = v0[45];
  v109[135] = v0[44];
  sub_1C43FD5E4();
  *(v112 + 1088) = v113;
  *(v112 + 1096) = v114;
  *(v112 + 1104) = v115;
  *(v112 + 1112) = v116;
  *(v112 + 1120) = 0x80000001C4F93E60;
  *(v112 + 1128) = v117;
  v118 = sub_1C4F00F28();
  v119 = sub_1C46F66B0(v118);

  sub_1C456902C(&qword_1EC0BA880, &unk_1C4F21960);
  result = sub_1C4F02538();
  v121 = result;
  v122 = 0;
  v123 = 1 << *(v119 + 32);
  v124 = -1;
  if (v123 < 64)
  {
    v124 = ~(-1 << v123);
  }

  v125 = v124 & *(v119 + 64);
  v126 = (v123 + 63) >> 6;
  v127 = result + 64;
  if (v125)
  {
    while (1)
    {
      v128 = __clz(__rbit64(v125));
      v125 &= v125 - 1;
LABEL_10:
      v131 = v128 | (v122 << 6);
      v132 = (*(v119 + 48) + 16 * v131);
      v134 = *v132;
      v133 = v132[1];
      v135 = *(*(v119 + 56) + 8 * v131);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      result = sub_1C4F019C8();
      *(v127 + ((v131 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v131;
      v136 = (v121[6] + 16 * v131);
      *v136 = v134;
      v136[1] = v133;
      *(v121[7] + 8 * v131) = result;
      v137 = v121[2];
      v138 = __OFADD__(v137, 1);
      v139 = v137 + 1;
      if (v138)
      {
        break;
      }

      v121[2] = v139;
      if (!v125)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v129 = v122;
    while (1)
    {
      v122 = v129 + 1;
      if (__OFADD__(v129, 1))
      {
        break;
      }

      if (v122 >= v126)
      {

        return v121;
      }

      v130 = *(v119 + 64 + 8 * v122);
      ++v129;
      if (v130)
      {
        v128 = __clz(__rbit64(v130));
        v125 = (v130 - 1) & v130;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C46F5B58()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 128);
    if (v2)
    {
      v3 = *(v2 + 32);
      if (v3 > 0.0)
      {
        v4 = *(v1 + 32) / v3;
      }

      v5 = *(v1 + 16);
      v6 = *(v1 + 24);
    }
  }
}

double sub_1C46F5BA4()
{
  v1 = *(v0 + 96);
  if (!v1)
  {
    return NAN;
  }

  v2 = *(v0 + 144);
  if (v2 < 1)
  {
    return NAN;
  }

  v3 = *(v1 + 24);
  result = *(v1 + 32) / v2;
  v5 = *(v1 + 16);
  return result;
}

double sub_1C46F5BE0()
{
  v1 = *(v0 + 104);
  if (!v1)
  {
    return NAN;
  }

  v2 = *(v0 + 144);
  if (v2 < 1)
  {
    return NAN;
  }

  v3 = *(v1 + 24);
  result = *(v1 + 32) / v2;
  v5 = *(v1 + 16);
  return result;
}

uint64_t sub_1C46F5C1C()
{
  sub_1C4F02248();
  MEMORY[0x1C6940010](0x203A6E696DLL, 0xE500000000000000);
  v1 = v0[2];
  sub_1C440A9D0();
  MEMORY[0x1C6940010](0x203A78616D202CLL, 0xE700000000000000);
  v2 = v0[3];
  sub_1C440A9D0();
  sub_1C440E138();
  v3 = v0[4];
  sub_1C440A9D0();
  MEMORY[0x1C6940010](0xD000000000000015, 0x80000001C4F941B0);
  v4 = v0[5];
  sub_1C440A9D0();
  return 0;
}

uint64_t sub_1C46F5D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  *(v18 + 40) = 0u;
  *(v18 + 152) = 0;
  *(v18 + 136) = 0u;
  *(v18 + 120) = 0u;
  *(v18 + 104) = 0u;
  *(v18 + 88) = 0u;
  *(v18 + 72) = 0u;
  *(v18 + 56) = 0u;
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;

  v23 = *(v18 + 48);
  *(v18 + 48) = a5;

  v24 = *(v18 + 56);
  *(v18 + 56) = a6;

  v25 = *(v18 + 64);
  *(v18 + 64) = a7;

  v26 = *(v18 + 72);
  *(v18 + 72) = a8;

  v27 = *(v18 + 80);
  *(v18 + 80) = a9;

  v28 = *(v18 + 88);
  *(v18 + 88) = a10;

  v29 = *(v18 + 96);
  *(v18 + 96) = a11;

  v30 = *(v18 + 104);
  *(v18 + 104) = a12;

  v31 = *(v18 + 112);
  *(v18 + 112) = a13;

  v32 = *(v18 + 120);
  *(v18 + 120) = a14;

  v33 = *(v18 + 128);
  *(v18 + 128) = a15;

  *(v18 + 136) = a16;
  *(v18 + 144) = a18;
  *(v18 + 152) = a17;
  return v18;
}

uint64_t sub_1C46F5EA4()
{
  v1 = 0x3E6C696E3CLL;
  sub_1C4F02248();
  sub_1C440BC44();
  MEMORY[0x1C6940010]();
  if (v0[2])
  {
    v2 = v0[2];

    sub_1C46F5C1C();
    sub_1C441943C();
  }

  else
  {
    sub_1C44001E4();
  }

  sub_1C4406B40();

  sub_1C440BC44();
  MEMORY[0x1C6940010]();
  if (v0[3])
  {
    v3 = v0[3];

    sub_1C46F5C1C();
    sub_1C441943C();
  }

  else
  {
    sub_1C44001E4();
  }

  sub_1C4406B40();

  sub_1C440BC44();
  MEMORY[0x1C6940010]();
  if (v0[4])
  {
    v4 = v0[4];

    sub_1C46F5C1C();
    sub_1C441943C();
  }

  else
  {
    sub_1C44001E4();
  }

  sub_1C4406B40();

  sub_1C440BC44();
  MEMORY[0x1C6940010]();
  if (v0[5])
  {
    v5 = v0[5];

    sub_1C46F5C1C();
    sub_1C441943C();
  }

  else
  {
    sub_1C44001E4();
  }

  sub_1C4406B40();

  sub_1C440BC44();
  MEMORY[0x1C6940010]();
  if (v0[6])
  {
    v6 = v0[6];

    sub_1C46F5C1C();
    sub_1C441943C();
  }

  else
  {
    sub_1C44001E4();
  }

  sub_1C4406B40();

  sub_1C440BC44();
  MEMORY[0x1C6940010]();
  if (v0[7])
  {
    v7 = v0[7];

    sub_1C46F5C1C();
    sub_1C441943C();
  }

  else
  {
    sub_1C44001E4();
  }

  sub_1C4406B40();

  sub_1C440BC44();
  sub_1C440E138();
  if (v0[8])
  {
    v8 = v0[8];

    sub_1C46F5C1C();
    sub_1C441943C();
  }

  else
  {
    sub_1C44001E4();
  }

  sub_1C4406B40();

  sub_1C440BC44();
  sub_1C440E138();
  if (v0[9])
  {
    v9 = v0[9];

    sub_1C46F5C1C();
    sub_1C441943C();
  }

  else
  {
    sub_1C44001E4();
  }

  sub_1C4406B40();

  sub_1C440BC44();
  sub_1C440E138();
  if (v0[10])
  {
    v10 = v0[10];

    sub_1C46F5C1C();
    sub_1C441943C();
  }

  else
  {
    sub_1C44001E4();
  }

  sub_1C4406B40();

  sub_1C440BC44();
  sub_1C440E138();
  if (v0[11])
  {
    v11 = v0[11];

    sub_1C46F5C1C();
    sub_1C441943C();
  }

  else
  {
    sub_1C44001E4();
  }

  sub_1C4406B40();

  sub_1C440BC44();
  MEMORY[0x1C6940010]();
  if (v0[12])
  {
    v12 = v0[12];

    sub_1C46F5C1C();
    sub_1C441943C();
  }

  else
  {
    sub_1C44001E4();
  }

  sub_1C4406B40();

  sub_1C440BC44();
  MEMORY[0x1C6940010]();
  if (v0[13])
  {
    v13 = v0[13];

    sub_1C46F5C1C();
    sub_1C441943C();
  }

  else
  {
    sub_1C44001E4();
  }

  sub_1C4406B40();

  sub_1C440BC44();
  MEMORY[0x1C6940010]();
  if (v0[14])
  {
    v14 = v0[14];

    sub_1C46F5C1C();
    sub_1C441943C();
  }

  else
  {
    sub_1C44001E4();
  }

  sub_1C4406B40();

  sub_1C440BC44();
  MEMORY[0x1C6940010]();
  if (v0[15])
  {
    v15 = v0[15];

    sub_1C46F5C1C();
    sub_1C441943C();
  }

  else
  {
    sub_1C44001E4();
  }

  sub_1C4406B40();

  sub_1C440BC44();
  MEMORY[0x1C6940010]();
  if (v0[16])
  {
    v16 = v0[16];

    v1 = sub_1C46F5C1C();
    v18 = v17;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  MEMORY[0x1C6940010](v1, v18);

  sub_1C440BC44();
  MEMORY[0x1C6940010]();
  v23 = v0[17];
  v19 = sub_1C4403034();
  MEMORY[0x1C6940010](v19);

  sub_1C440BC44();
  MEMORY[0x1C6940010]();
  v24 = v0[19];
  v20 = sub_1C4403034();
  MEMORY[0x1C6940010](v20);

  sub_1C440BC44();
  MEMORY[0x1C6940010]();
  v25 = v0[18];
  v21 = sub_1C4403034();
  MEMORY[0x1C6940010](v21);

  return 0;
}

void *sub_1C46F63CC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  v9 = v0[10];

  v10 = v0[11];

  v11 = v0[12];

  v12 = v0[13];

  v13 = v0[14];

  v14 = v0[15];

  v15 = v0[16];

  return v0;
}

uint64_t sub_1C46F645C()
{
  sub_1C46F63CC();

  return swift_deallocClassInstance();
}

double *sub_1C46F64FC(double *a1, double a2, double a3)
{
  if (a3 <= 0.0)
  {
  }

  v3 = a2 / a3;
  if (a1)
  {
    if (v3 >= a1[2])
    {
      v4 = a1[2];
    }

    else
    {
      v4 = a2 / a3;
    }

    if (a1[3] > v3)
    {
      v5 = a1[3];
    }

    else
    {
      v5 = a2 / a3;
    }

    v6 = a1[5];
    v7 = a1[4] + a2;
  }

  else
  {
    v4 = fmin(v3, INFINITY);
    v5 = fmax(v3, -INFINITY);
    v6 = 0.0;
    v7 = a2 + 0.0;
  }

  v9 = v6 + a3;
  type metadata accessor for EntityRelevanceEvaluationIntermediateResults.IntermediateResult();
  result = swift_allocObject();
  result[2] = v4;
  result[3] = v5;
  result[4] = v7;
  result[5] = v9;
  return result;
}

double sub_1C46F6594(uint64_t a1)
{
  if (!a1)
  {
    return NAN;
  }

  v1 = *(a1 + 40);
  if (v1 <= 0.0)
  {
    return NAN;
  }

  v2 = *(a1 + 24);
  v3 = *(a1 + 16);
  return *(a1 + 32) / v1;
}

double sub_1C46F65C8(uint64_t a1)
{
  if (!a1)
  {
    return NAN;
  }

  v2 = *(v1 + 152);
  if (v2 < 1)
  {
    return NAN;
  }

  v3 = *(a1 + 24);
  result = *(a1 + 32) / v2;
  v5 = *(a1 + 16);
  return result;
}

double sub_1C46F6600(uint64_t a1)
{
  if (!a1)
  {
    return NAN;
  }

  v2 = *(v1 + 136);
  if (v2 < 1)
  {
    return NAN;
  }

  v3 = *(a1 + 24);
  result = *(a1 + 32) / v2;
  v5 = *(a1 + 16);
  return result;
}

void *sub_1C46F6638(void *result, uint64_t a2, uint64_t a3)
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

    sub_1C46F6814(v5, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t sub_1C46F66B0(uint64_t a1)
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
      v2 = sub_1C46F6638(v9, v4, v2);
      MEMORY[0x1C6942830](v9, -1, -1);
      goto LABEL_5;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v5 = v10 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C4501018(0, v4, v5);
  sub_1C46F6814(v5, v4, v2);
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

void sub_1C46F6814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  while (v8)
  {
    v9 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v10 = v9 | (v5 << 6);
LABEL_11:
    v13 = *(*(a3 + 56) + 8 * v10);
    if ((~v13 & 0x7FF0000000000000) != 0 || (v13 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      *(a1 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
LABEL_16:
        sub_1C45873AC(a1, a2, v4, a3);
        return;
      }
    }
  }

  v11 = v5;
  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= ((v6 + 63) >> 6))
    {
      goto LABEL_16;
    }

    v12 = *(a3 + 64 + 8 * v5);
    ++v11;
    if (v12)
    {
      v8 = (v12 - 1) & v12;
      v10 = __clz(__rbit64(v12)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1C46F690C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C461B060(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C46F8034(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1C46F6978(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265566C65646F6DLL && a2 == 0xEC0000006E6F6973;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x80000001C4F944E0 == a2;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x80000001C4F94500 == a2;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4D65727574616566 && a2 == 0xEC000000736E6165;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x5365727574616566 && a2 == 0xEB00000000736474)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C4F02938();

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

unint64_t sub_1C46F6B30(char a1)
{
  result = 0x7265566C65646F6DLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x4D65727574616566;
      break;
    case 4:
      result = 0x5365727574616566;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C46F6BF0(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0BB920, &qword_1C4F21A68);
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v19 - v11;
  v13 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C46F7D38();
  sub_1C4F02BF8();
  v14 = *v3;
  v15 = v3[1];
  LOBYTE(v20) = 0;
  sub_1C441705C();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    LOBYTE(v20) = 1;
    sub_1C441705C();
    v20 = v3[4];
    HIBYTE(v19) = 2;
    sub_1C456902C(&qword_1EC0C6370, &qword_1C4F0E1A0);
    sub_1C46F7D8C(&qword_1EDDF06E0);
    sub_1C4406B5C();
    v20 = v3[5];
    HIBYTE(v19) = 3;
    sub_1C4406B5C();
    v20 = v3[6];
    HIBYTE(v19) = 4;
    sub_1C4406B5C();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_1C46F6DC8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0BB918, &unk_1C4F21A58);
  v6 = sub_1C43FCDF8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C46F7D38();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  sub_1C43FE664();
  v10 = sub_1C4F02678();
  v19 = v11;
  LOBYTE(v20) = 1;
  sub_1C43FE664();
  v12 = sub_1C4F02678();
  v18 = v13;
  v17 = v12;
  sub_1C456902C(&qword_1EC0C6370, &qword_1C4F0E1A0);
  sub_1C46F7D8C(&qword_1EDDDBD80);
  sub_1C442C894();
  sub_1C4F026C8();
  sub_1C442C894();
  sub_1C43FE664();
  sub_1C4F026C8();
  sub_1C442C894();
  sub_1C43FE664();
  sub_1C4F026C8();
  v14 = sub_1C43FEED0();
  v15(v14);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C440962C(a1);

  *a2 = v10;
  a2[1] = v19;
  a2[2] = v17;
  a2[3] = v18;
  a2[4] = v20;
  a2[5] = v20;
  a2[6] = v20;
  return result;
}

uint64_t sub_1C46F7150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C46F6978(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C46F7178(uint64_t a1)
{
  v2 = sub_1C46F7D38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C46F71B4(uint64_t a1)
{
  v2 = sub_1C46F7D38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1C46F71F0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C46F6DC8(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t *sub_1C46F7258(uint64_t a1, double a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = *(a1 + 32);
  v6 = *(a1 + 16);
  *(v2 + 1) = *a1;
  *(v2 + 2) = v6;
  *(v2 + 3) = *(a1 + 32);
  v2[8] = *(a1 + 48);
  *(v2 + 9) = a2;
  v7 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v18 = sub_1C4618904(v7);
  sub_1C46F690C(&v18);

  v8 = v18;
  v9 = *(v18 + 16);
  if (v9)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0();
    v10 = v18;
    v11 = (v8 + 40);
    do
    {
      v13 = *(v11 - 1);
      v12 = *v11;
      v18 = v10;
      v14 = *(v10 + 16);
      v15 = *(v10 + 24);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v14 >= v15 >> 1)
      {
        sub_1C44CD9C0();
        v10 = v18;
      }

      *(v10 + 16) = v14 + 1;
      v16 = v10 + 16 * v14;
      *(v16 + 32) = v13;
      *(v16 + 40) = v12;
      v11 += 3;
      --v9;
    }

    while (v9);
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  v3[10] = v10;
  return v3;
}

uint64_t sub_1C46F741C(uint64_t a1, double a2)
{
  v5 = objc_autoreleasePoolPush();
  v6 = sub_1C4EF9348();
  sub_1C43FD23C(v6);
  swift_allocObject();
  v7 = sub_1C4EF9338();
  v8 = sub_1C4EF9938();
  if (v2)
  {

    objc_autoreleasePoolPop(v5);
    v12 = sub_1C4EF98F8();
    sub_1C43FD3F8(v12);
    (*(v13 + 8))(a1);
  }

  else
  {
    v10 = v8;
    v11 = v9;
    sub_1C46F7FE0();
    sub_1C4EF9328();
    sub_1C4434000(v10, v11);

    objc_autoreleasePoolPop(v5);
    v21[0] = v17;
    v21[1] = v18;
    v21[2] = v19;
    v22 = v20;
    v7 = swift_allocObject();
    sub_1C46F7258(v21, a2);
    v15 = sub_1C4EF98F8();
    sub_1C43FD3F8(v15);
    (*(v16 + 8))(a1);
  }

  return v7;
}

uint64_t sub_1C46F75B4(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v5 = *(v3 + 56);
  if (*(v5 + 16) && (v9 = sub_1C445FAA8(a1, a2), (v10 & 1) != 0) && (v11 = *(*(v5 + 56) + 8 * v9), v12 = COERCE_DOUBLE(sub_1C465C024(a1, a2, *(v4 + 64))), (v13 & 1) == 0) && v12 > 0.0)
  {
    *&result = (a3 - v11) / v12;
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

void sub_1C46F7648(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v51 = a2;
  v4 = MEMORY[0x1E69E7CC0];
  v59 = MEMORY[0x1E69E7CC0];
  v60 = MEMORY[0x1E69E7CC0];
  v5 = *(v3 + 80);
  v56 = *(v5 + 16);
  if (!v56)
  {
LABEL_62:
    v50 = sub_1C4EFFDB8();
    sub_1C43FD23C(v50);
    swift_allocObject();
    sub_1C4EFFD88();
    return;
  }

  v6 = v3;
  v8 = 0;
  v9 = (v5 + 40);
  v54 = MEMORY[0x1E69E7CC0];
  v55 = *(v3 + 80);
  while (v8 < *(v5 + 16))
  {
    v10 = *(v9 - 1);
    v11 = *v9;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44000C4();
    v12 = sub_1C4F01108();
    v13 = [a1 featureValueForName_];

    if (!v13)
    {
      if (qword_1EDDFA668 != -1)
      {
        sub_1C4406758();
        swift_once();
      }

      v26 = sub_1C4F00978();
      sub_1C442B738(v26, qword_1EDE2DDE0);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v27 = sub_1C4F00968();
      v28 = sub_1C4F01CB8();

      if (os_log_type_enabled(v27, v28))
      {
        a1 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        *a1 = 136315138;
        v29 = sub_1C44000C4();
        v32 = sub_1C441D828(v29, v30, v31);

        *(a1 + 1) = v32;
        _os_log_impl(&dword_1C43F8000, v27, v28, "Feature %s not found in feature vector, skipping.", a1, 0xCu);
        sub_1C440962C(v58);
        MEMORY[0x1C6942830](v58, -1, -1);
        sub_1C4403050();
      }

      else
      {
      }

      goto LABEL_40;
    }

    [v13 doubleValue];
    v14 = sub_1C44000C4();
    v17 = sub_1C46F75B4(v14, v15, v16);
    if (v18)
    {
      if (qword_1EDDFA668 != -1)
      {
        sub_1C4406758();
        swift_once();
      }

      v19 = sub_1C4F00978();
      sub_1C442B738(v19, qword_1EDE2DDE0);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v20 = sub_1C4F00968();
      v21 = sub_1C4F01CB8();

      if (os_log_type_enabled(v20, v21))
      {
        a1 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *a1 = 136315138;
        v22 = sub_1C44000C4();
        v25 = sub_1C441D828(v22, v23, v24);

        *(a1 + 1) = v25;
        _os_log_impl(&dword_1C43F8000, v20, v21, "Invalid z-score for %s, skipping.", a1, 0xCu);
        sub_1C440962C(v57);
        v6 = v52;
        MEMORY[0x1C6942830](v57, -1, -1);
        sub_1C4403050();
      }

      else
      {
      }

LABEL_39:
LABEL_40:
      v5 = v55;
      goto LABEL_41;
    }

    v33 = *(v6 + 48);
    if (!*(v33 + 16) || (v34 = *&v17, v35 = sub_1C44000C4(), v37 = sub_1C445FAA8(v35, v36), (v38 & 1) == 0))
    {

      goto LABEL_39;
    }

    v39 = *(*(v33 + 56) + 8 * v37);
    if (v4 >> 62)
    {
      sub_1C4F02128();
      sub_1C440A9EC();
      if (v42 == v43 || v34 <= 0.0)
      {
        v41 = sub_1C4F02128();
LABEL_20:
        if (v41 >= a3 || *(v6 + 72) >= v34)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      v40 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1C440A9EC();
      if (v42 == v43 || v34 <= 0.0)
      {
        goto LABEL_20;
      }
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    [v13 doubleValue];
    v44 = sub_1C4EFFDA8();
    sub_1C43FD23C(v44);
    swift_allocObject();
    sub_1C44000C4();
    sub_1C4EFFD98();
    MEMORY[0x1C6940330]();
    if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C4F016D8();
    }

    sub_1C4F01748();
    v4 = v60;
    v6 = v52;
LABEL_25:
    if (v54 >> 62)
    {
      sub_1C4F02128();
      sub_1C440A9EC();
      if (v42 != v43 && v34 < 0.0)
      {
        goto LABEL_31;
      }

      v46 = sub_1C4F02128();
    }

    else
    {
      v45 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1C440A9EC();
      if (v42 != v43 && v34 < 0.0)
      {
        goto LABEL_31;
      }
    }

    if (v46 >= a3 || v34 >= -*(v6 + 72))
    {

      goto LABEL_44;
    }

LABEL_31:
    [v13 doubleValue];
    v47 = sub_1C4EFFDA8();
    sub_1C43FD23C(v47);
    swift_allocObject();
    sub_1C44000C4();
    sub_1C4EFFD98();
    MEMORY[0x1C6940330]();
    if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C4F016D8();
    }

    sub_1C4F01748();
    v54 = v59;
LABEL_44:
    v5 = v55;
    if (v4 >> 62)
    {
      v48 = sub_1C4F02128();
    }

    else
    {
      v48 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v48 >= a3)
    {
      if (v54 >> 62)
      {
        v49 = sub_1C4F02128();
      }

      else
      {
        v49 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v49 >= a3)
      {
        goto LABEL_62;
      }
    }

    else
    {
    }

LABEL_41:
    ++v8;
    v9 += 2;
    if (v56 == v8)
    {
      goto LABEL_62;
    }
  }

  __break(1u);
}

void *sub_1C46F7C68()
{
  v1 = v0[3];
  v2 = v0[5];
  v3 = v0[6];
  v5 = v0[7];
  v4 = v0[8];

  v6 = v0[10];

  return v0;
}

uint64_t sub_1C46F7CD0()
{
  sub_1C46F7C68();

  return swift_deallocClassInstance();
}

unint64_t sub_1C46F7D38()
{
  result = qword_1EDDE1AE0[0];
  if (!qword_1EDDE1AE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDE1AE0);
  }

  return result;
}

uint64_t sub_1C46F7D8C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0C6370, &qword_1C4F0E1A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EntityRelevanceExplainer.FeatureStatistics.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C46F7EDC()
{
  result = qword_1EC0BB928[0];
  if (!qword_1EC0BB928[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC0BB928);
  }

  return result;
}

unint64_t sub_1C46F7F34()
{
  result = qword_1EDDE1AD0;
  if (!qword_1EDDE1AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE1AD0);
  }

  return result;
}

unint64_t sub_1C46F7F8C()
{
  result = qword_1EDDE1AD8;
  if (!qword_1EDDE1AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE1AD8);
  }

  return result;
}

unint64_t sub_1C46F7FE0()
{
  result = qword_1EDDE1AC8;
  if (!qword_1EDDE1AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE1AC8);
  }

  return result;
}

uint64_t sub_1C46F8034(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C4F02828();
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
        sub_1C456902C(&qword_1EC0B9460, &qword_1C4F0EFF0);
        v6 = sub_1C4F01728();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C46F81B8(v7, v8, a1, v4);
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
    return sub_1C46F8138(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C46F8138(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 24 * a3 + 16);
      v8 = v6;
      v9 = v5;
      do
      {
        if (*(v9 - 1) >= v7)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *v9;
        v11 = *(v9 + 1);
        *v9 = *(v9 - 3);
        v9[2] = *(v9 - 1);
        *(v9 - 2) = v11;
        *(v9 - 1) = v7;
        *(v9 - 3) = v10;
        v9 -= 3;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 24;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C46F81B8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v90 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v85 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 24 * v9 + 16);
        v11 = *a3 + 24 * v7;
        v12 = 24 * v7;
        v13 = *(v11 + 16);
        v14 = (v11 + 64);
        v15 = v7 + 2;
        v16 = v10;
        while (1)
        {
          v17 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = *v14;
          v14 += 3;
          v19 = (v13 < v10) ^ (v16 >= v18);
          ++v15;
          v16 = v18;
          if ((v19 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v13 < v10)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v20 = 24 * v6 - 8;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v12);
                v25 = (v23 + v20);
                v26 = *v24;
                v27 = v24[1];
                v28 = v24[2];
                v29 = *v25;
                *v24 = *(v25 - 1);
                v24[2] = v29;
                *(v25 - 2) = v26;
                *(v25 - 1) = v27;
                *v25 = v28;
              }

              ++v22;
              v20 -= 24;
              v12 += 24;
            }

            while (v22 < v21);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v30 = *a3;
            v31 = *a3 + 24 * v9;
            v32 = v7 - v9;
            do
            {
              v33 = *(v30 + 24 * v9 + 16);
              v34 = v32;
              v35 = v31;
              do
              {
                if (*(v35 - 1) >= v33)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_111;
                }

                v36 = *v35;
                v37 = *(v35 + 1);
                *v35 = *(v35 - 3);
                v35[2] = *(v35 - 1);
                *(v35 - 2) = v37;
                *(v35 - 1) = v33;
                *(v35 - 3) = v36;
                v35 -= 3;
              }

              while (!__CFADD__(v34++, 1));
              ++v9;
              v31 += 24;
              --v32;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v87 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = v8[2];
        sub_1C458A358();
        v8 = v83;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_1C458A358();
        v8 = v84;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v7;
      v42[1] = v87;
      v88 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_56:
            if (v49)
            {
              goto LABEL_96;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_99;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_104;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v40 < 2)
          {
            goto LABEL_98;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_71:
          if (v64)
          {
            goto LABEL_101;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_103;
          }

          if (v71 < v63)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_1C46F8804((*a3 + 24 * *v75), (*a3 + 24 * *v77), *a3 + 24 * v78, v88);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v78 < v76)
          {
            goto LABEL_91;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_92;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_93;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          v5 = 0;
          if (!v81)
          {
            goto LABEL_85;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_94;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_95;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_97;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_100;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_105;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v87;
      a4 = v85;
      if (v87 >= v6)
      {
        v90 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1C46F86CC(&v90, *a1, a3);
LABEL_89:
}

uint64_t sub_1C46F86CC(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C46194F4(v15);
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
    sub_1C46F8804((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
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

uint64_t sub_1C46F8804(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_1C45A3238(a1, (a2 - a1) / 24, a4);
    v10 = &v4[3 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (v4[2] >= v6[2])
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 3;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 3;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 3;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    v7[2] = v12[2];
    *v7 = v14;
    goto LABEL_13;
  }

  sub_1C45A3238(a2, (a3 - a2) / 24, a4);
  v10 = &v4[3 * v9];
LABEL_15:
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    if (*(v6 - 1) < *(v10 - 1))
    {
      v17 = v6 - 3;
      v13 = v5 + 24 == v6;
      v6 -= 3;
      if (!v13)
      {
        v18 = *v17;
        *(v5 + 16) = v17[2];
        *v5 = v18;
        v6 = v17;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 24))
    {
      v16 = *(v10 - 3);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v16;
    }

    v10 -= 3;
  }

LABEL_28:
  v19 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[3 * v19])
  {
    memmove(v6, v4, 24 * v19);
  }

  return 1;
}

void sub_1C46F89AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v34 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0();
    v3 = v34;
    v6 = sub_1C4702074(a1);
    v7 = 0;
    v8 = a1 + 64;
    v27 = v1;
    if ((v6 & 0x8000000000000000) == 0)
    {
      while (v6 < 1 << *(a1 + 32))
      {
        v9 = v6 >> 6;
        if ((*(v8 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
        {
          goto LABEL_23;
        }

        if (*(a1 + 36) != v4)
        {
          goto LABEL_24;
        }

        v28 = v5;
        v29 = v7;
        v30 = v4;
        v10 = (*(a1 + 48) + 48 * v6);
        v11 = *(v10 + 25);
        v12 = v10[1];
        v32 = *v10;
        v33[0] = v12;
        *(v33 + 9) = v11;
        sub_1C45A2358(&v32, v31);
        v13 = sub_1C45D2400();
        v15 = v14;
        sub_1C45EC75C(&v32);
        v34 = v3;
        v16 = *(v3 + 16);
        v17 = v3;
        if (v16 >= *(v3 + 24) >> 1)
        {
          sub_1C44CD9C0();
          v17 = v34;
        }

        *(v17 + 16) = v16 + 1;
        v18 = v17 + 16 * v16;
        *(v18 + 32) = v13;
        *(v18 + 40) = v15;
        v19 = 1 << *(a1 + 32);
        if (v6 >= v19)
        {
          goto LABEL_25;
        }

        v8 = a1 + 64;
        v20 = *(a1 + 64 + 8 * v9);
        if ((v20 & (1 << v6)) == 0)
        {
          goto LABEL_26;
        }

        v3 = v17;
        if (*(a1 + 36) != v30)
        {
          goto LABEL_27;
        }

        v21 = v20 & (-2 << (v6 & 0x3F));
        if (v21)
        {
          v19 = __clz(__rbit64(v21)) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v22 = v9 << 6;
          v23 = v9 + 1;
          v24 = (a1 + 72 + 8 * v9);
          while (v23 < (v19 + 63) >> 6)
          {
            v26 = *v24++;
            v25 = v26;
            v22 += 64;
            ++v23;
            if (v26)
            {
              sub_1C440951C(v6, v30, v28 & 1);
              v19 = __clz(__rbit64(v25)) + v22;
              goto LABEL_18;
            }
          }

          sub_1C440951C(v6, v30, v28 & 1);
        }

LABEL_18:
        v7 = v29 + 1;
        if (v29 + 1 == v27)
        {
          return;
        }

        v5 = 0;
        v4 = *(a1 + 36);
        v6 = v19;
        if (v19 < 0)
        {
          break;
        }
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
}

unint64_t sub_1C46F8C18(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v45 = MEMORY[0x1E69E7CC0];
  sub_1C459DF88(0, v1, 0);
  v2 = v45;
  result = sub_1C4703354(v3);
  v7 = 0;
  v8 = v3 + 64;
  v32 = v5;
  v33 = v1;
  v31 = v3 + 72;
  v34 = v3 + 64;
  v35 = v3;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(v3 + 32))
  {
    if ((*(v8 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_22;
    }

    if (*(v3 + 36) != v5)
    {
      goto LABEL_23;
    }

    v39 = 1 << result;
    v40 = result >> 6;
    v37 = v7;
    v38 = v5;
    v36 = v6;
    v9 = *(v3 + 56);
    v10 = *(v3 + 48) + 48 * result;
    v12 = *v10;
    v11 = *(v10 + 8);
    v13 = *(v10 + 16);
    v14 = *(v10 + 24);
    v15 = *(v10 + 32);
    v16 = *(v10 + 40);
    v17 = (v9 + 24 * result);
    v41 = v17[1];
    v42 = *v17;
    v18 = v17[2];
    v43 = result;
    sub_1C45D7F78(v12, v11, v13, v14, v15, v16);
    swift_bridgeObjectRetain_n();
    sub_1C45D7F78(v12, v11, v13, v14, v15, v16);
    sub_1C45A23B4(v12, v11, v13, v14, v15, v16);

    sub_1C45D7F78(v12, v11, v13, v14, v15, v16);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C45A23B4(v12, v11, v13, v14, v15, v16);

    v20 = *(v45 + 16);
    v19 = *(v45 + 24);
    v21 = v20 + 1;
    if (v20 >= v19 >> 1)
    {
      sub_1C459DF88((v19 > 1), v20 + 1, 1);
      v21 = v20 + 1;
    }

    *(v45 + 16) = v21;
    v22 = v45 + 72 * v20;
    *(v22 + 32) = v12;
    *(v22 + 40) = v11;
    *(v22 + 48) = v13;
    *(v22 + 56) = v14;
    *(v22 + 64) = v15;
    *(v22 + 72) = v16;
    *(v22 + 73) = *v44;
    *(v22 + 76) = *&v44[3];
    *(v22 + 80) = v42;
    *(v22 + 88) = v41;
    *(v22 + 96) = v18;
    v3 = v35;
    v23 = 1 << *(v35 + 32);
    result = v43;
    if (v43 >= v23)
    {
      goto LABEL_24;
    }

    v8 = v34;
    v24 = *(v34 + 8 * v40);
    if ((v24 & v39) == 0)
    {
      goto LABEL_25;
    }

    if (*(v35 + 36) != v38)
    {
      goto LABEL_26;
    }

    v25 = v24 & (-2 << (v43 & 0x3F));
    if (v25)
    {
      v23 = __clz(__rbit64(v25)) | v43 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = v40 << 6;
      v27 = v40 + 1;
      v28 = (v31 + 8 * v40);
      while (v27 < (v23 + 63) >> 6)
      {
        v30 = *v28++;
        v29 = v30;
        v26 += 64;
        ++v27;
        if (v30)
        {
          sub_1C440951C(v43, v38, v36 & 1);
          v23 = __clz(__rbit64(v29)) + v26;
          goto LABEL_19;
        }
      }

      sub_1C440951C(v43, v38, v36 & 1);
    }

LABEL_19:
    v6 = 0;
    v7 = v37 + 1;
    result = v23;
    v5 = v32;
    if (v37 + 1 == v33)
    {
      return v2;
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
  return result;
}

uint64_t sub_1C46F8F50(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v38 = MEMORY[0x1E69E7CC0];
  sub_1C459DF88(0, v1, 0);
  v2 = v38;
  result = sub_1C486C288(v3);
  v7 = result;
  v8 = 0;
  v9 = v3 + 56;
  v28 = v3 + 64;
  v29 = v1;
  v30 = v3 + 56;
  v31 = v3;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v7 < 1 << *(v3 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v3 + 36) != v5)
      {
        goto LABEL_25;
      }

      v36 = v6;
      v32 = v8;
      v33 = v5;
      v11 = *(v3 + 48) + 48 * v7;
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *(v11 + 16);
      v15 = *(v11 + 32);
      v35 = *(v11 + 24);
      v34 = *(v11 + 40);
      result = sub_1C45D7F78(*v11, v13, v14, v35, v15, v34);
      v17 = *(v38 + 16);
      v16 = *(v38 + 24);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        result = sub_1C459DF88((v16 > 1), v17 + 1, 1);
        v18 = v17 + 1;
      }

      *(v38 + 16) = v18;
      v19 = v38 + 72 * v17;
      *(v19 + 32) = v12;
      *(v19 + 40) = v13;
      *(v19 + 48) = v14;
      *(v19 + 56) = v35;
      *(v19 + 64) = v15;
      *(v19 + 72) = v34;
      *(v19 + 73) = *v37;
      *(v19 + 76) = *&v37[3];
      *(v19 + 88) = 0;
      *(v19 + 96) = 0;
      *(v19 + 80) = 0;
      if (v36)
      {
        goto LABEL_29;
      }

      v9 = v30;
      v3 = v31;
      v20 = 1 << *(v31 + 32);
      if (v7 >= v20)
      {
        goto LABEL_26;
      }

      v21 = *(v30 + 8 * v10);
      if ((v21 & (1 << v7)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v31 + 36) != v33)
      {
        goto LABEL_28;
      }

      v22 = v21 & (-2 << (v7 & 0x3F));
      if (v22)
      {
        v20 = __clz(__rbit64(v22)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v10 << 6;
        v24 = v10 + 1;
        v25 = (v28 + 8 * v10);
        while (v24 < (v20 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_1C440951C(v7, v33, 0);
            v20 = __clz(__rbit64(v26)) + v23;
            goto LABEL_19;
          }
        }

        result = sub_1C440951C(v7, v33, 0);
      }

LABEL_19:
      v8 = v32 + 1;
      if (v32 + 1 == v29)
      {
        return v2;
      }

      v6 = 0;
      v5 = *(v31 + 36);
      v7 = v20;
      if (v20 < 0)
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
  return result;
}

uint64_t sub_1C46F91E0@<X0>(void *a1@<X8>)
{
  v3 = sub_1C456902C(&qword_1EC0BA418, &qword_1C4F22330);
  v4 = sub_1C43FFC58(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  swift_allocBox();
  v7 = sub_1C4426AD0();
  v8(v7);
  sub_1C4401CBC(&qword_1EDDFA180, &qword_1EC0BA418, &qword_1C4F22330);
  result = sub_1C44305D8();
  *a1 = &unk_1C4F22340;
  a1[1] = v1;
  return result;
}

uint64_t sub_1C46F92F4@<X0>(void *a1@<X8>)
{
  v3 = sub_1C456902C(&qword_1EC0BB4D0, &unk_1C4F20380);
  v4 = sub_1C43FFC58(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C456902C(&qword_1EC0BBAA0, &qword_1C4F22250);
  swift_allocBox();
  v7 = sub_1C4426AD0();
  v8(v7);
  sub_1C4401CBC(&qword_1EDDDB810, &qword_1EC0BB4D0, &unk_1C4F20380);
  result = sub_1C44305D8();
  *a1 = &unk_1C4F22260;
  a1[1] = v1;
  return result;
}

uint64_t sub_1C46F943C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = 0;
  *a3 = a2;
  a3[1] = v6;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C46F9498@<X0>(void *a1@<X8>)
{
  sub_1C43FBDBC();
  v2 = swift_allocObject();
  result = sub_1C4F02428();
  *(v2 + 16) = result;
  *a1 = &unk_1C4F22320;
  a1[1] = v2;
  return result;
}

uint64_t sub_1C46F94F4()
{
  *(v0 + 48) = sub_1C456902C(&qword_1EC0BA418, &qword_1C4F22330);
  *(v0 + 56) = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1C46F957C, 0, 0);
}

uint64_t sub_1C46F957C()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 56);
  sub_1C440BC50();
  sub_1C4401CBC(&qword_1EDDEFF48, &qword_1EC0BA418, &qword_1C4F22330);
  v2 = *(MEMORY[0x1E69E85A8] + 4);
  swift_task_alloc();
  sub_1C43FBE70();
  *(v0 + 64) = v3;
  *v3 = v4;
  v5 = sub_1C4433C7C(v3);

  return MEMORY[0x1EEE6D8C8](v5);
}

uint64_t sub_1C46F9640()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    swift_endAccess();
    v12 = *(v3 + 40);
    sub_1C43FBCF0();

    return v13();
  }
}

uint64_t sub_1C46F9760()
{
  sub_1C43FBCD4();
  swift_endAccess();
  sub_1C43FBDA0();
  v2 = *(v0 + 72);

  return v1();
}

uint64_t sub_1C46F97BC()
{
  *(v0 + 48) = sub_1C456902C(&qword_1EC0BBAA0, &qword_1C4F22250);
  *(v0 + 56) = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1C46F9844, 0, 0);
}

uint64_t sub_1C46F9844()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 56);
  sub_1C440BC50();
  sub_1C4401CBC(&qword_1EDDDB818, &qword_1EC0BBAA0, &qword_1C4F22250);
  v2 = *(MEMORY[0x1E69E85A8] + 4);
  swift_task_alloc();
  sub_1C43FBE70();
  *(v0 + 64) = v3;
  *v3 = v4;
  v5 = sub_1C4433C7C(v3);

  return MEMORY[0x1EEE6D8C8](v5);
}

uint64_t sub_1C46F9908()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    swift_endAccess();
    v12 = *(v3 + 40);
    sub_1C43FBCF0();

    return v13();
  }
}

uint64_t sub_1C46F9A28(uint64_t a1, uint64_t a2)
{
  *(v2 + 184) = a1;
  *(v2 + 192) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C46F9A48, 0, 0);
}

uint64_t sub_1C46F9A48()
{
  sub_1C43FCF70();
  v1 = v0[24];
  result = swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v3 + 16);
  if (v4 == v5)
  {
    v6 = v0[23];
    *(v6 + 32) = 0u;
    *(v6 + 48) = 0u;
    *v6 = 0u;
    *(v6 + 16) = 0u;
    *(v6 + 64) = 1;
  }

  else
  {
    if (v4 >= v5)
    {
      __break(1u);
      return result;
    }

    v7 = v0[23];
    v8 = v3 + 72 * v4;
    memcpy(v0 + 2, (v8 + 32), 0x48uLL);
    memcpy(v7, (v8 + 32), 0x48uLL);
    *(v1 + 24) = v4 + 1;
    sub_1C45E8ABC((v0 + 2), (v0 + 11));
  }

  sub_1C43FC1B0();

  return v9();
}

uint64_t sub_1C46F9B4C()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 40);
  sub_1C440BC50();
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1C46F9BF8;

  return sub_1C46F9D70();
}

uint64_t sub_1C46F9BF8()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = v1;
  sub_1C44001F0();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v0;
  sub_1C43FBDAC();
  *v7 = v6;

  swift_endAccess();
  v8 = sub_1C43FD5F0();

  return v9(v8);
}

uint64_t sub_1C46F9CFC()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 48);
  sub_1C440BC50();
  v2 = *(v1 + 16);
  sub_1C4F02568();
  v3 = *(v0 + 40);
  swift_endAccess();
  v4 = sub_1C43FD5F0();

  return v5(v4);
}

uint64_t sub_1C46F9D90()
{
  sub_1C43FCF70();
  v1 = *(v0 + 16);
  v2 = *v1;
  if (*v1 >> 62)
  {
    if (v2 < 0)
    {
      v8 = *v1;
    }

    v3 = sub_1C4F02128();
    v1 = *(v0 + 16);
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = v1[1];
  if (v4 != v3)
  {
    sub_1C4431590(v1[1], (v2 & 0xC000000000000001) == 0);
    if ((v2 & 0xC000000000000001) != 0)
    {
      v9 = sub_1C43FBC98();
      result = MEMORY[0x1C6940F90](v9);
    }

    else
    {
      v5 = *(v2 + 8 * v4 + 32);
    }

    if (__OFADD__(v4, 1))
    {
      __break(1u);
      return result;
    }

    v1[1] = v4 + 1;
  }

  sub_1C43FBCF0();

  return v7();
}

uint64_t sub_1C46F9E6C(__int128 *a1, __int128 *a2)
{
  v11 = *a1;
  *v12 = a1[1];
  *&v12[9] = *(a1 + 25);
  v9 = *a2;
  *v10 = a2[1];
  *&v10[9] = *(a2 + 25);
  sub_1C45D5A9C();
  if ((v4 & 1) != 0 && *(a1 + 6) == *(a2 + 6))
  {
    v5 = *(a1 + 8);
    v6 = *(a2 + 8);
    if (v5)
    {
      if (v6)
      {
        v7 = *(a1 + 7) == *(a2 + 7) && v5 == v6;
        if (v7 || (sub_1C4F02938() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1C46F9F18()
{
  v3 = *v0;
  *v4 = v0[1];
  *&v4[9] = *(v0 + 25);
  sub_1C45D5EBC();
  MEMORY[0x1C69417F0](*(v0 + 6));
  if (!*(v0 + 8))
  {
    return sub_1C4F02B18();
  }

  v1 = *(v0 + 7);
  sub_1C4F02B18();

  return sub_1C4F01298();
}

uint64_t sub_1C46F9FC4()
{
  sub_1C4F02AF8();
  v3 = *v0;
  *v4 = v0[1];
  *&v4[9] = *(v0 + 25);
  sub_1C45D5EBC();
  MEMORY[0x1C69417F0](*(v0 + 6));
  if (*(v0 + 8))
  {
    v1 = *(v0 + 7);
    sub_1C4F02B18();
    sub_1C4F01298();
  }

  else
  {
    sub_1C4F02B18();
  }

  return sub_1C4F02B68();
}

uint64_t sub_1C46FA070()
{
  sub_1C4F02AF8();
  sub_1C46F9F18();
  return sub_1C4F02B68();
}

uint64_t sub_1C46FA0B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C46FA0D4, 0, 0);
}

uint64_t sub_1C46FA0D4()
{
  sub_1C43FCF70();
  sub_1C470231C(*(v0 + 128), v0 + 16);
  if (*(v0 + 56))
  {
    v2 = *(v0 + 16);
    v1 = *(v0 + 24);
    *(v0 + 136) = v2;
    *(v0 + 144) = v1;
    v3 = *(v0 + 32);
    *(v0 + 152) = v3;
    v4 = swift_task_alloc();
    *(v0 + 160) = v4;
    *v4 = v0;
    v4[1] = sub_1C46FA1FC;
    v5 = *(v0 + 128);
    v6 = *(v0 + 112);
    v7 = sub_1C440F4D4(*(v0 + 104));

    return sub_1C46FA748(v7, v2, v1, v3, v8);
  }

  else
  {
    v10 = *(v0 + 120);
    v11 = *(v0 + 128);
    v13 = *(v0 + 104);
    v12 = *(v0 + 112);
    sub_1C443FA18((v0 + 16), v0 + 64);
    sub_1C441AE7C();
    sub_1C46FA3E8(v14, v15, v16, v17);
    sub_1C440962C((v0 + 64));
    v18 = sub_1C43FD5F0();

    return v19(v18);
  }
}

uint64_t sub_1C46FA1FC()
{
  sub_1C43FCF70();
  v3 = v2;
  sub_1C43FBDE4();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v8 = *(v7 + 160);
  v9 = *v1;
  sub_1C43FBDAC();
  *v10 = v9;
  *(v5 + 168) = v0;

  if (!v0)
  {
    *(v5 + 176) = v3;
  }

  sub_1C440C470();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C46FA304()
{
  sub_1C43FBCD4();
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];

  v4 = v0[22];
  sub_1C43FBCF0();

  return v5();
}

uint64_t sub_1C46FA378()
{
  sub_1C43FBCD4();
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];

  sub_1C43FBDA0();
  v5 = v0[21];

  return v4();
}

uint64_t sub_1C46FA3E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v28 = a4;
  v30 = a3;
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - v11;
  v13 = swift_allocObject();
  v29 = v13;
  *(v13 + 16) = MEMORY[0x1E69E7CC8];
  v14 = (v13 + 16);
  v31 = objc_autoreleasePoolPush();
  v15 = a2[3];
  v16 = a2[4];
  sub_1C4409678(a2, v15);
  v17 = sub_1C4EF9CD8();
  v18 = *(*(v17 - 8) + 16);
  v18(v12, a1, v17);
  sub_1C440BAA8(v12, 0, 1, v17);
  v19 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v18(v10, a1 + *(v19 + 36), v17);
  sub_1C440BAA8(v10, 0, 1, v17);
  v20 = (*(v16 + 24))(v12, v10, v28, v15, v16);
  sub_1C4420C3C(v10, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C4420C3C(v12, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v36 = sub_1C46FAC98;
  v37 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v33 = 1107296256;
  v34 = sub_1C44405F8;
  v35 = &unk_1F43E9568;
  v21 = _Block_copy(&aBlock);
  v22 = swift_allocObject();
  v23 = v30;
  *(v22 + 16) = v29;
  *(v22 + 24) = v23;
  v36 = sub_1C47023E4;
  v37 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v33 = 1107296256;
  v34 = sub_1C45DFE08;
  v35 = &unk_1F43E95B8;
  v24 = _Block_copy(&aBlock);

  v25 = [v20 sinkWithCompletion:v21 receiveInput:v24];
  _Block_release(v24);
  _Block_release(v21);

  objc_autoreleasePoolPop(v31);
  swift_beginAccess();
  v26 = *v14;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  return v26;
}

uint64_t sub_1C46FA748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C46FA770, 0, 0);
}

uint64_t sub_1C46FA770()
{
  *(v0 + 32) = MEMORY[0x1E69E7CC8];
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = v4 + *(sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0) + 36);
  sub_1C441AE7C();
  sub_1C494DA84(v6, v7, v8, v9, v10);
  v18();

  v11 = *(v0 + 16);
  *(v0 + 96) = v11;
  v17 = (v11 + *v11);
  v12 = *(v11 + 4);
  swift_task_alloc();
  sub_1C43FBE70();
  *(v0 + 112) = v13;
  *v13 = v14;
  v15 = sub_1C44332E4(v13);

  return v17(v15);
}

uint64_t sub_1C46FA8FC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = *(v2 + 112);
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 120) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C46FAA18()
{
  sub_1C43FEAEC();
  v1 = v0[16];
  if (v1)
  {
    v2 = v0[15];
    v3 = v0[11];
    v4 = objc_autoreleasePoolPush();
    sub_1C46FAFC0(v1, v0 + 4, v3);
    if (v2)
    {

      objc_autoreleasePoolPop(v4);
    }

    else
    {
      objc_autoreleasePoolPop(v4);

      v12 = (v0[12] + *v0[12]);
      v8 = *(v0[12] + 4);
      swift_task_alloc();
      sub_1C43FBE70();
      v0[14] = v9;
      *v9 = v10;
      v11 = sub_1C44332E4();

      v12(v11);
    }
  }

  else
  {
    v5 = v0[3];

    v6 = v0[4];
    sub_1C43FBCF0();

    v7();
  }
}

uint64_t sub_1C46FABA8()
{
  sub_1C43FBCD4();
  *(v0 + 48) = *(v0 + 120);
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  swift_willThrowTypedImpl();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C46FAC34()
{
  sub_1C43FBCD4();
  v1 = v0[3];

  v2 = v0[4];
  v3 = v0[15];

  sub_1C43FBDA0();

  return v4();
}

void sub_1C46FAC98(void *a1)
{
  v1 = [a1 error];
  if (v1)
  {
    v2 = v1;
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v3 = sub_1C4F00978();
    sub_1C442B738(v3, qword_1EDE2DDE0);
    v4 = v2;
    oslog = sub_1C4F00968();
    v5 = sub_1C4F01CD8();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = v4;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_1C43F8000, oslog, v5, "BehaviorHistoryUtility: Behavior event publisher failed with error: %@", v6, 0xCu);
      sub_1C4420C3C(v7, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v7, -1, -1);
      MEMORY[0x1C6942830](v6, -1, -1);
      v4 = oslog;
      oslog = v8;
    }
  }
}

void (*sub_1C46FAE30(_OWORD *a1, uint64_t a2, uint64_t a3))(uint64_t *, void)
{
  v5 = a1[2];
  v21 = a1[1];
  v22[0] = v5;
  *(v22 + 9) = *(a1 + 41);
  swift_beginAccess();
  v6 = sub_1C465C6B0(&v21, *(a2 + 16));
  if (v8 == 1)
  {
    swift_endAccess();
    result = swift_beginAccess();
    if (*(*(a2 + 16) + 16) > a3)
    {
      return result;
    }

    swift_beginAccess();
    v10 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1C4661D94(1, 0, 0, &v21, isUniquelyReferenced_nonNull_native, v12, v13, v14, *(a2 + 16), v20[0], v20[1], v20[2], v20[3], v20[4], v20[5], v20[6], v21, *(&v21 + 1), *&v22[0], *(&v22[0] + 1), *&v22[1], *(&v22[1] + 1), v23, v24, v25, v26);
    *(a2 + 16) = v19;
  }

  else
  {
    v15 = v6;
    v16 = v7;
    v17 = v8;
    swift_endAccess();
    sub_1C47023EC(v15, v16, v17);
    swift_beginAccess();
    result = sub_1C4B5A990(v20, &v21);
    if (v18[2] == 1)
    {
      result(v20, 0);
    }

    else
    {
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        return result;
      }

      *v18 = v15 + 1;
      result(v20, 0);
    }
  }

  return swift_endAccess();
}

uint64_t (*sub_1C46FAFC0(uint64_t a1, uint64_t *a2, uint64_t a3))()
{
  v3 = a3;
  v30 = a2;
  v4 = *(a1 + OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_entityIdentifier + 8);
  v28[0] = *(a1 + OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_entityIdentifier);
  v28[1] = v4;
  memset(&v28[2], 0, 24);
  v29 = 17;
  v5 = *(a1 + OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_attributes);
  v6 = *(v5 + 16);
  if (!v6)
  {
    v7 = 0;
    v10 = 0;
LABEL_38:
    v15 = v30;
    goto LABEL_39;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = (v5 + 48);
  do
  {
    v12 = *(v11 - 2);
    if (*v11 == 3)
    {

      v7 = 0x6C61436F69647561;
      v8 = 0xE90000000000006CLL;
      switch(v12)
      {
        case 0uLL:
          break;
        case 1uLL:
          v8 = 0xE500000000000000;
          v7 = 0x6C69616D65;
          break;
        case 2uLL:
          v7 = 7564659;
          v8 = 0xE300000000000000;
          break;
        case 3uLL:
          v8 = 0xE300000000000000;
          v7 = 7564653;
          break;
        case 4uLL:
          v7 = 0x4D746E6174736E69;
          v8 = 0xEE00656761737365;
          break;
        case 5uLL:
          v7 = 0xD000000000000010;
          v8 = 0x80000001C4F89C70;
          break;
        case 6uLL:
          v8 = 0xE700000000000000;
          v7 = 0x706F7244726961;
          break;
        case 8uLL:
          v8 = 0xE400000000000000;
          v7 = 1885958006;
          break;
        case 9uLL:
          v7 = 0x69616D6563696F76;
          break;
        case 0xAuLL:
          v8 = 0xE800000000000000;
          v7 = 0x656D695465636166;
          break;
        case 0xBuLL:
          v7 = 0x656D695465636166;
          v14 = 1768191297;
          goto LABEL_27;
        case 0xCuLL:
          v7 = 0x6C61436F65646976;
          break;
        case 0xDuLL:
          v8 = 0xEA00000000007465;
          v7 = 0x6568536572616873;
          break;
        case 0xEuLL:
          v8 = 0xE900000000000079;
          v7 = 0x74696D69786F7270;
          break;
        case 0xFuLL:
          v8 = 0xE800000000000000;
          v7 = 0x6761546F746F6870;
          break;
        case 0x10uLL:
          v8 = 0xE500000000000000;
          v7 = 0x656E6F6870;
          break;
        case 0x11uLL:
          v7 = 0x656D695465636166;
          v14 = 1701079382;
LABEL_27:
          v8 = v14 | 0xED00006F00000000;
          break;
        case 0x12uLL:
          v8 = 0xE900000000000074;
          v7 = 0x6867696C68676968;
          break;
        case 0x13uLL:
          v8 = 0xE900000000000079;
          v7 = 0x616C506572616873;
          break;
        default:
          v8 = 0xE700000000000000;
          v7 = 0x6E776F6E6B6E75;
          break;
      }
    }

    else if (!*v11)
    {
      v13 = *(v11 - 1);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      v9 = v12;
      v10 = v13;
    }

    v11 += 24;
    --v6;
  }

  while (v6);
  if (!v8)
  {
    if (v10)
    {
      v7 = v9;
    }

    else
    {
      v7 = 0;
    }

    v3 = a3;
    goto LABEL_38;
  }

  v3 = a3;
  v15 = v30;
  if (v10)
  {
    v27[0] = v7;
    v27[1] = v8;
    MEMORY[0x1C6940010](95, 0xE100000000000000);
    MEMORY[0x1C6940010](v9, v10);
  }

  v10 = v8;
LABEL_39:
  v16 = sub_1C465C6B0(v28, *v15);
  if (v18 == 1)
  {
    if (*(*v15 + 16) <= v3)
    {
      v25 = sub_1C4B5A990(v27, v28);
      if (v24[2] != 1)
      {
        *v24 = 1;
        v24[1] = v7;
        v24[2] = v10;
      }

      return (v25)(v27, 0);
    }

    else
    {
    }
  }

  else
  {
    v20 = v16;
    v21 = v17;
    v22 = v18;

    sub_1C47023EC(v20, v21, v22);
    result = sub_1C4B5A990(v27, v28);
    if (v23[2] == 1)
    {
      return (result)(v27, 0);
    }

    else if (__OFADD__(v20, 1))
    {
      __break(1u);
    }

    else
    {
      *v23 = v20 + 1;
      return (result)(v27, 0);
    }
  }

  return result;
}

uint64_t sub_1C46FB458()
{
  sub_1C43FBCD4();
  v1[30] = v2;
  v1[31] = v0;
  v3 = sub_1C456902C(&qword_1EC0BBA58, &unk_1C4F221D0);
  v1[32] = v3;
  sub_1C43FCF7C(v3);
  v1[33] = v4;
  v6 = *(v5 + 64) + 15;
  v1[34] = swift_task_alloc();
  v7 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  sub_1C43FCF7C(v7);
  v1[35] = v8;
  v1[36] = *(v9 + 64);
  v1[37] = swift_task_alloc();
  v10 = sub_1C456902C(&qword_1EC0BBA60, &qword_1C4F221E0);
  v1[38] = v10;
  sub_1C43FCF7C(v10);
  v1[39] = v11;
  v13 = *(v12 + 64);
  v1[40] = sub_1C43FE604();
  v1[41] = swift_task_alloc();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1C46FB5DC()
{
  v1 = v0[39];
  v16 = v0[41];
  v17 = v0[38];
  v2 = v0[37];
  v3 = v0[35];
  v18 = v0[40];
  v19 = v0[34];
  v4 = v0[31];
  v5 = *(v4 + 120);
  sub_1C4460108(v0[30], v2, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  sub_1C44CDA30(v2, v7 + v6, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  v0[29] = v5;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C456902C(&qword_1EC0BBA68, &qword_1C4F221F8);
  sub_1C456902C(&qword_1EC0BBA70, &qword_1C4F22200);
  sub_1C4401CBC(&qword_1EC0BBA78, &qword_1EC0BBA68, &qword_1C4F221F8);
  sub_1C4401CBC(&qword_1EC0BBA80, &qword_1EC0BBA70, &qword_1C4F22200);
  sub_1C4F02958();
  v8 = *(v1 + 16);
  v9 = sub_1C4414A08();
  v10(v9);
  sub_1C4401CBC(&qword_1EC0BBA88, &qword_1EC0BBA60, &qword_1C4F221E0);
  sub_1C4F019A8();
  v0[42] = MEMORY[0x1E69E7CC0];
  sub_1C440428C(&qword_1EC0BBA90, &qword_1EC0BBA58, &unk_1C4F221D0);
  v11 = *(MEMORY[0x1E69E85A8] + 4);
  swift_task_alloc();
  sub_1C43FBE70();
  v0[43] = v12;
  *v12 = v13;
  v14 = sub_1C441707C(v12);

  return MEMORY[0x1EEE6D8C8](v14);
}

uint64_t sub_1C46FB858()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v6 = *(v5 + 344);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  v3[44] = v0;

  if (v0)
  {
    v9 = v3[42];
    (*(v3[33] + 8))(v3[34], v3[32]);
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C46FB974()
{
  sub_1C43FEAEC();
  if (v0[10] == 1)
  {
    v1 = v0[40];
    v2 = v0[41];
    v3 = v0[38];
    v4 = v0[39];
    v5 = v0[37];
    (*(v0[33] + 8))(v0[34], v0[32]);
    memcpy(v0 + 11, v0 + 2, 0x48uLL);
    sub_1C4420C3C((v0 + 11), &qword_1EC0BBA98, &qword_1C4F22208);
    (*(v4 + 8))(v2, v3);

    sub_1C43FBCF0();
    v7 = v0[42];

    return v6(v7);
  }

  else
  {
    v9 = v0[42];
    memcpy(v0 + 20, v0 + 2, 0x48uLL);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = v0[42];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = *(v11 + 16);
      v18 = v0[42];
      sub_1C458B120();
      v11 = v19;
    }

    v12 = *(v11 + 16);
    if (v12 >= *(v11 + 24) >> 1)
    {
      sub_1C458B120();
      v11 = v20;
    }

    *(v11 + 16) = v12 + 1;
    memcpy((v11 + 72 * v12 + 32), v0 + 20, 0x48uLL);
    v0[42] = v11;
    sub_1C440428C(&qword_1EC0BBA90, &qword_1EC0BBA58, &unk_1C4F221D0);
    v13 = *(MEMORY[0x1E69E85A8] + 4);
    swift_task_alloc();
    sub_1C43FBE70();
    v0[43] = v14;
    *v14 = v15;
    v16 = sub_1C441707C();

    return MEMORY[0x1EEE6D8C8](v16);
  }
}

uint64_t sub_1C46FBB78()
{
  sub_1C43FCF70();
  v1 = v0[40];
  v2 = v0[37];
  v3 = v0[34];
  (*(v0[39] + 8))(v0[41], v0[38]);

  sub_1C43FBDA0();
  v5 = v0[44];

  return v4();
}

uint64_t sub_1C46FBC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[32] = a3;
  v4[33] = a4;
  v4[30] = a1;
  v4[31] = a2;
  v5 = sub_1C4EF9CD8();
  v4[34] = v5;
  v6 = *(v5 - 8);
  v4[35] = v6;
  v7 = *(v6 + 64) + 15;
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v8 = sub_1C4EFDAB8();
  v4[38] = v8;
  v9 = *(v8 - 8);
  v4[39] = v9;
  v10 = *(v9 + 64) + 15;
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C46FBD68, 0, 0);
}

uint64_t sub_1C46FBD68()
{
  sub_1C43FEAEC();
  v1 = v0[39];
  v2 = v0[31];
  (*(v1 + 104))(v0[43], *MEMORY[0x1E69A9450], v0[38]);
  sub_1C4419458();
  sub_1C47024B4(v3, v4);
  LOBYTE(v2) = sub_1C4F010B8();
  v0[44] = *(v1 + 8);
  v0[45] = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5 = sub_1C43FBC98();
  v6(v5);
  if (v2)
  {
    sub_1C43FBDBC();
    v7 = swift_allocObject();
    v9 = v0[42];
    v8 = v0[43];
    v11 = v0[40];
    v10 = v0[41];
    v13 = v0[36];
    v12 = v0[37];
    v14 = v0[30];
    *(v7 + 16) = MEMORY[0x1E69E7CC0];
    *v14 = sub_1C4703350;
    v14[1] = v7;

    sub_1C43FC1B0();

    return v15();
  }

  else
  {
    v17 = v0[32];
    v18 = swift_task_alloc();
    v0[46] = v18;
    *v18 = v0;
    v18[1] = sub_1C46FBF4C;
    v19 = v0[31];
    v20 = sub_1C440F4D4(v0[33]);

    return sub_1C46FA0B0(v20, 50, v21);
  }
}

uint64_t sub_1C46FBF4C()
{
  sub_1C43FEAEC();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v6 = *(v5 + 368);
  *v4 = *v1;
  v3[47] = v7;
  v3[48] = v0;

  if (v0)
  {
    v9 = v3[42];
    v8 = v3[43];
    v11 = v3[40];
    v10 = v3[41];
    v14 = v3 + 36;
    v12 = v3[36];
    v13 = v14[1];

    sub_1C43FBDA0();

    return v15();
  }

  else
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v17, v18, v19);
  }
}

void sub_1C46FC0B8()
{
  v1 = 0;
  v2 = 0;
  v3 = v0 + 20;
  v4 = v0[47];
  v5 = -1;
  v6 = -1 << *(v4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v4 + 64);
LABEL_4:
  if (v7)
  {
    v8 = v1;
    goto LABEL_10;
  }

  while (1)
  {
    v8 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v8 >= ((63 - v6) >> 6))
    {
      goto LABEL_13;
    }

    v7 = *(v4 + 64 + 8 * v8);
    ++v1;
    if (v7)
    {
      v1 = v8;
LABEL_10:
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v10 = *(*(v4 + 56) + 24 * (v9 | (v8 << 6)));
      v11 = __OFADD__(v2, v10);
      v2 += v10;
      if (!v11)
      {
        goto LABEL_4;
      }

      __break(1u);
LABEL_13:
      v162 = v0 + 25;
      if (qword_1EDDFA668 == -1)
      {
LABEL_14:
        v12 = v0[42];
        v13 = v0[38];
        v14 = v0[39];
        v16 = v0[31];
        v15 = v0[32];
        v17 = sub_1C4F00978();
        v18 = sub_1C442B738(v17, qword_1EDE2DDE0);
        v19 = *(v14 + 16);
        v20 = sub_1C4414A08();
        v157 = v21;
        v160 = v14 + 16;
        v21(v20);

        v161 = v18;
        v22 = sub_1C4F00968();
        v23 = sub_1C4F01CF8();

        v24 = os_log_type_enabled(v22, v23);
        v25 = v0[44];
        v26 = v0[42];
        v27 = v0[38];
        if (v24)
        {
          v153 = v0[45];
          v28 = v0[32];
          v155 = (v0 + 20);
          v29 = sub_1C43FFD34();
          v154 = sub_1C43FC11C();
          v163 = v154;
          *v29 = 134218498;
          *(v29 + 4) = v2;
          *(v29 + 12) = 2080;
          sub_1C470231C(v28 + 72, (v0 + 14));
          v30 = sub_1C4F01198();
          v32 = sub_1C441D828(v30, v31, &v163);

          *(v29 + 14) = v32;
          *(v29 + 22) = 2080;
          sub_1C4419458();
          sub_1C47024B4(v33, v34);
          v35 = sub_1C4F02858();
          v37 = v36;
          v38 = sub_1C4409A28();
          v25(v38);
          v39 = sub_1C441D828(v35, v37, &v163);

          *(v29 + 24) = v39;
          _os_log_impl(&dword_1C43F8000, v22, v23, "EntityRelevanceEvaluationSampleProvider: found %ld positive samples for %s and %s", v29, 0x20u);
          sub_1C440CBC8();
          sub_1C4411B3C();
          v3 = v0 + 20;
          sub_1C43FBE2C();
        }

        else
        {

          v40 = sub_1C4409A28();
          v25(v40);
        }

        sub_1C4701FFC(0.0, 1.0);
        if (v2 >= 1)
        {
          v42 = v0[47];
          v43 = v0[48];
          v44 = v0[37];
          v45 = v0[34];
          v46 = v0[35];
          v47 = v0[33];
          v156 = v0[31];
          v48 = v162;
          sub_1C442E860(v0[32] + 32, v162);
          v49 = sub_1C4409678(v162, v0[28]);
          (*(v46 + 16))(v44, v47, v45);
          v50 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C46F89AC(v50);
          v52 = v51;

          sub_1C4499940(v52, v53, v54, v55, v56, v57, v58, v59, v153, v154, v156, v157, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169);
          v60 = *v49;
          sub_1C45E1418();
          if (v43)
          {
            v62 = v0 + 37;
            goto LABEL_26;
          }

          v64 = v61;
          v65 = v0[41];
          v66 = v0[38];
          v67 = v0[31];
          v68 = v0[32];
          (*(v0[35] + 8))(v0[37], v0[34]);

          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C440962C(v48);
          v69 = sub_1C440A9B8();
          v158(v69);

          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v70 = sub_1C4F00968();
          v71 = sub_1C4F01CF8();

          v72 = os_log_type_enabled(v70, v71);
          v74 = v0[44];
          v73 = v0[45];
          v75 = v0[41];
          v76 = v0[38];
          if (v72)
          {
            v77 = v0[32];
            v78 = sub_1C43FFD34();
            v163 = sub_1C43FC11C();
            *v78 = 134218498;
            v79 = *(v64 + 16);

            *(v78 + 4) = v79;

            *(v78 + 12) = 2080;
            sub_1C470231C(v77 + 72, (v0 + 8));
            v80 = sub_1C4F01198();
            v82 = sub_1C441D828(v80, v81, &v163);

            *(v78 + 14) = v82;
            *(v78 + 22) = 2080;
            sub_1C4419458();
            sub_1C47024B4(v83, v84);
            sub_1C4F02858();
            v85 = sub_1C4414A08();
            v74(v85);
            v86 = sub_1C4404DC8();
            v89 = sub_1C441D828(v86, v87, v88);

            *(v78 + 24) = v89;
            v90 = "EntityRelevanceEvaluationSampleProvider: totalPositiveSamples > 0. found %ld negative samples for %s and %s";
            goto LABEL_29;
          }

LABEL_30:
          swift_bridgeObjectRelease_n();

          v139 = sub_1C4414A08();
          v74(v139);
          goto LABEL_31;
        }

        v63 = v0[48];
        if (v41 > 0.3)
        {
          v64 = MEMORY[0x1E69E7CD0];
          goto LABEL_31;
        }

        v91 = v0[47];
        v93 = v0[35];
        v92 = v0[36];
        v95 = v0[33];
        v94 = v0[34];
        v96 = v0[31];
        sub_1C442E860(v0[32] + 32, v3);
        v97 = v3;
        v98 = sub_1C4409678(v3, v0[23]);
        (*(v93 + 16))(v92, v95, v94);
        v99 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C46F89AC(v99);
        v101 = v100;

        sub_1C4499940(v101, v102, v103, v104, v105, v106, v107, v108, v153, v154, v155, v157, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169);
        v109 = *v98;
        sub_1C45E1418();
        if (v63)
        {
          v62 = v0 + 36;
          v48 = v97;
LABEL_26:
          v111 = v0[47];
          (*(v0[35] + 8))(*v62, v0[34]);

          sub_1C440962C(v48);
          v113 = v0[42];
          v112 = v0[43];
          v115 = v0[40];
          v114 = v0[41];
          v117 = v0[36];
          v116 = v0[37];

          sub_1C43FBDA0();
        }

        else
        {
          v64 = v110;
          v118 = v0[40];
          v119 = v0[38];
          v120 = v0[31];
          v121 = v0[32];
          (*(v0[35] + 8))(v0[36], v0[34]);

          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C440962C(v97);
          v122 = sub_1C440A9B8();
          v159(v122);

          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v70 = sub_1C4F00968();
          v71 = sub_1C4F01CF8();

          v123 = os_log_type_enabled(v70, v71);
          v74 = v0[44];
          v124 = v0[45];
          v125 = v0[40];
          v126 = v0[38];
          if (!v123)
          {
            goto LABEL_30;
          }

          v127 = v0[32];
          v78 = sub_1C43FFD34();
          v163 = sub_1C43FC11C();
          *v78 = 134218498;
          v128 = *(v64 + 16);

          *(v78 + 4) = v128;

          *(v78 + 12) = 2080;
          sub_1C470231C(v127 + 72, (v0 + 2));
          v129 = sub_1C4F01198();
          v131 = sub_1C441D828(v129, v130, &v163);

          *(v78 + 14) = v131;
          *(v78 + 22) = 2080;
          sub_1C4419458();
          sub_1C47024B4(v132, v133);
          sub_1C4F02858();
          v134 = sub_1C4414A08();
          v74(v134);
          v135 = sub_1C4404DC8();
          v138 = sub_1C441D828(v135, v136, v137);

          *(v78 + 24) = v138;
          v90 = "EntityRelevanceEvaluationSampleProvider: totalPositiveSamples == 0. found %ld negative samples for %s and %s";
LABEL_29:
          _os_log_impl(&dword_1C43F8000, v70, v71, v90, v78, 0x20u);
          sub_1C440CBC8();
          sub_1C4411B3C();
          sub_1C43FBE2C();

LABEL_31:
          v140 = sub_1C46F8C18(v0[47]);

          v141 = sub_1C46F8F50(v64);

          v163 = v140;
          sub_1C49D4418(v141);
          v142 = v163;
          sub_1C43FBDBC();
          v143 = swift_allocObject();
          v145 = v0[42];
          v144 = v0[43];
          v147 = v0[40];
          v146 = v0[41];
          v149 = v0[36];
          v148 = v0[37];
          v150 = v0[30];
          *(v143 + 16) = v142;
          *v150 = sub_1C4702314;
          v150[1] = v143;

          sub_1C43FC1B0();
        }

        sub_1C4416034();

        __asm { BRAA            X1, X16 }
      }

LABEL_36:
      sub_1C4406728();
      goto LABEL_14;
    }
  }

  __break(1u);
  goto LABEL_36;
}

uint64_t sub_1C46FC9B4()
{
  sub_1C440962C((v0 + 32));
  sub_1C4702674(v0 + 72);
  v1 = *(v0 + 120);

  return v0;
}

uint64_t sub_1C46FC9E4()
{
  sub_1C46FC9B4();

  return swift_deallocClassInstance();
}

uint64_t sub_1C46FCA3C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C4703368;

  return sub_1C46FB458();
}

uint64_t sub_1C46FCAD4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_1C43FFE30(sub_1C46FCAF0);
}

uint64_t sub_1C46FCAF0()
{
  sub_1C43FBCD4();
  v1 = *(v0[4] + 16);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1C46FCB8C;
  v3 = v0[3];
  v4 = v0[4];
  sub_1C440F4D4(v0[2]);

  return sub_1C46FCC78();
}

uint64_t sub_1C46FCB8C()
{
  sub_1C43FBCD4();
  v3 = v2;
  sub_1C43FBDE4();
  v5 = *(v4 + 40);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;

  sub_1C43FBCF0();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_1C46FCC78()
{
  sub_1C43FBCD4();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v5 = sub_1C4EF9CD8();
  v1[12] = v5;
  sub_1C43FCF7C(v5);
  v1[13] = v6;
  v8 = *(v7 + 64);
  v1[14] = sub_1C43FE604();
  v1[15] = swift_task_alloc();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C46FCD30()
{
  sub_1C4404D98();
  v1 = v0[10];
  v2 = v0[11];
  v3 = *sub_1C4409678(v2 + 3, v2[6]);
  sub_1C4607D48(v1, v0 + 2);
  v4 = v2[8];
  v0[16] = v4;
  v5 = v0[10];
  if (!v4)
  {
    v10 = v0[14];
    v11 = v0[5];
    v12 = v0[7];
    sub_1C4409678(v0 + 2, v11);
    sub_1C4EF9BE8();
    (*(v12 + 8))(v10, v11, v12);
    (*(v0[13] + 8))(v0[14], v0[12]);
    v14 = v0[10];
    v13 = v0[11];
    v16 = v0[8];
    v15 = v0[9];
    v17 = objc_autoreleasePoolPush();
    v18 = sub_1C43FE990();
    sub_1C46FD25C(v18, v19, v20, v14);
    v22 = v0[14];
    v21 = v0[15];
    objc_autoreleasePoolPop(v17);
    sub_1C440962C(v0 + 2);

    sub_1C43FD5F0();
    sub_1C4402234();

    __asm { BRAA            X2, X16 }
  }

  v6 = v0[15];

  sub_1C4EF9BE8();
  v7 = swift_task_alloc();
  v0[17] = v7;
  *v7 = v0;
  v7[1] = sub_1C46FCF60;
  sub_1C440F4D4(v0[15]);
  sub_1C4402234();

  return sub_1C46DE19C();
}

uint64_t sub_1C46FCF60()
{
  sub_1C43FCF70();
  v2 = *v1;
  sub_1C44001F0();
  *v4 = v3;
  v5 = v2[17];
  *v4 = *v1;
  *(v3 + 144) = v0;

  (*(v2[13] + 8))(v2[15], v2[12]);
  sub_1C440C470();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1C46FD0B4()
{
  sub_1C4404D98();
  v1 = v0[16];

  v2 = v0[18];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v7 = objc_autoreleasePoolPush();
  v8 = sub_1C43FE990();
  sub_1C46FD25C(v8, v9, v10, v4);
  if (v2)
  {
    objc_autoreleasePoolPop(v7);
    v11 = v0[14];
    v12 = v0[15];
    sub_1C440962C(v0 + 2);

    v13 = v0[1];
    sub_1C4402234();

    __asm { BRAA            X0, X16 }
  }

  v17 = v0[14];
  v16 = v0[15];
  objc_autoreleasePoolPop(v7);
  sub_1C440962C(v0 + 2);

  v18 = v0[1];
  sub_1C4402234();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C46FD1DC()
{
  sub_1C43FCF70();
  v1 = v0[16];

  v2 = v0[18];
  v4 = v0[14];
  v3 = v0[15];
  sub_1C440962C(v0 + 2);

  sub_1C43FBDA0();

  return v5();
}

void sub_1C46FD25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a1;
  v41 = a4;
  v42 = a3;
  v40 = sub_1C4EF9CD8();
  v5 = *(v40 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 1 << *(a2 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a2 + 56);
  v12 = (v9 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v13 = 0;
  v46 = MEMORY[0x1E69E7CC0];
  while (v11)
  {
LABEL_9:
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v16 = (*(a2 + 48) + ((v13 << 10) | (16 * v15)));
    v18 = *v16;
    v17 = v16[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C45FE940(v18, v17);
    if (v20 != -1)
    {
      v21 = v19;
      v22 = v20;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = *(v46 + 16);
        sub_1C458B398();
        v46 = v28;
      }

      v23 = *(v46 + 16);
      v24 = v23 + 1;
      if (v23 >= *(v46 + 24) >> 1)
      {
        v38 = *(v46 + 16);
        v39 = v23 + 1;
        sub_1C458B398();
        v23 = v38;
        v24 = v39;
        v46 = v29;
      }

      v25 = v46;
      *(v46 + 16) = v24;
      v26 = v25 + 16 * v23;
      *(v26 + 32) = v21;
      *(v26 + 40) = v22;
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {

      (*(v5 + 16))(v8, v41, v40);
      v44 = 0;
      v45 = 256;
      v30 = type metadata accessor for BehaviorContext();
      v31 = *(v30 + 48);
      v32 = *(v30 + 52);
      swift_allocObject();
      sub_1C45D689C();
      v34 = MEMORY[0x1EEE9AC00](v33);
      v35 = v43;
      v36 = v46;
      *(&v37 - 4) = v42;
      *(&v37 - 3) = v36;
      *(&v37 - 2) = v34;
      sub_1C45DA434(sub_1C4702490, (&v37 - 6), v35);

      return;
    }

    v11 = *(a2 + 56 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1C46FD530@<X0>(void *__src@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(&v56 + 1) = a6;
  memcpy(__dst, __src, 0x48uLL);
  v9 = sub_1C4409678(a2, a2[3]);
  v67 = __dst[0];
  v68 = __dst[1];
  v69 = *&__dst[2];
  LOBYTE(v70) = BYTE8(__dst[2]);
  v10 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v11 = sub_1C45979EC(v10);
  v12 = *v9;
  v13 = sub_1C4601874(&v67, v11, a4);

  v14 = 0;
  v15 = *(a3 + 16);
  v16 = a3 + 40;
  v72 = MEMORY[0x1E69E7CC8];
  v58 = a3 + 40;
LABEL_2:
  v17 = (v16 + 16 * v14);
  while (v15 != v14)
  {
    if (v14 >= v15)
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v18 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_24;
    }

    if (v13)
    {
      v19 = *(v17 - 1);
      v20 = *v17;
      sub_1C45A24AC(v19, *v17);
      sub_1C45FE65C(v19, v20);
      v21 = sub_1C4F01108();

      v22 = [v13 featureValueForName_];

      if (v22)
      {
        sub_1C45FE65C(v19, v20);
        v24 = v23;
        v26 = v25;
        v55 = v22;
        v27 = v72;
        DWORD1(v56) = swift_isUniquelyReferenced_nonNull_native();
        *(&v61[0] + 1) = v27;
        v53 = v24;
        v54 = v26;
        v28 = sub_1C445FAA8(v24, v26);
        if (!__OFADD__(*(v27 + 16), (v29 & 1) == 0))
        {
          v30 = v28;
          LODWORD(v72) = v29;
          sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
          if (sub_1C4F02458())
          {
            v31 = v54;
            v32 = sub_1C445FAA8(v53, v54);
            if ((v72 & 1) == (v33 & 1))
            {
              v30 = v32;
              v16 = v58;
              if ((v72 & 1) == 0)
              {
                goto LABEL_14;
              }

LABEL_17:

              v72 = *(&v61[0] + 1);
              v39 = *(*(&v61[0] + 1) + 56);
              v40 = *(v39 + 8 * v30);
              *(v39 + 8 * v30) = v55;

              sub_1C45A24C0(v19, v20);
LABEL_18:
              v14 = v18;
              goto LABEL_2;
            }

            goto LABEL_27;
          }

          v16 = v58;
          v31 = v54;
          if (v72)
          {
            goto LABEL_17;
          }

LABEL_14:
          v34 = *(&v61[0] + 1);
          *(*(&v61[0] + 1) + 8 * (v30 >> 6) + 64) |= 1 << v30;
          v35 = (v34[6] + 16 * v30);
          *v35 = v53;
          v35[1] = v31;
          *(v34[7] + 8 * v30) = v55;
          sub_1C45A24C0(v19, v20);

          v36 = v34[2];
          v37 = __OFADD__(v36, 1);
          v38 = v36 + 1;
          if (!v37)
          {
            v72 = v34;
            v34[2] = v38;
            goto LABEL_18;
          }

LABEL_26:
          __break(1u);
LABEL_27:
          result = sub_1C4F029F8();
          __break(1u);
          return result;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      sub_1C45A24C0(v19, v20);
    }

    v17 += 16;
    ++v14;
  }

  sub_1C45E8ABC(__dst, v61 + 8);
  sub_1C465D378(v72, v41, v42, v43, v44, v45, v46, v47, v52, v53, v54, v55, v56, v58, a5, v61[0], v61[1], v62, v63, v64, v65, v66, v67, *(&v67 + 1), v68, *(&v68 + 1), v69, v70, *&__dst[0], *(&__dst[0] + 1), *&__dst[1], *(&__dst[1] + 1), *&__dst[2], *(&__dst[2] + 1));

  v48 = objc_allocWithZone(MEMORY[0x1E695FE48]);
  v49 = sub_1C4701E88();
  if (*&v61[0])
  {
    sub_1C45E8B18(__dst);
    result = swift_unknownObjectRelease();
    *v60 = *&v61[0];
  }

  else
  {
    v51 = v49;
    swift_unknownObjectRelease();
    result = memcpy(v57, __dst, 0x48uLL);
    v57[9] = v51;
  }

  return result;
}

void *sub_1C46FD8B8()
{
  v1 = v0[2];

  sub_1C440962C(v0 + 3);
  v2 = v0[8];

  return v0;
}

uint64_t sub_1C46FD8E8()
{
  sub_1C46FD8B8();

  return swift_deallocClassInstance();
}

uint64_t sub_1C46FD940(void *a1)
{
  v2 = a1[10];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v9 = *(result - 8) + 64;
    v5 = a1[11];
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v10 = *(result - 8) + 64;
      v7 = a1[12];
      result = swift_checkMetadataState();
      if (v8 <= 0x3F)
      {
        v11 = *(result - 8) + 64;
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1C46FDA58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1C4EF9CD8();
  sub_1C43FBCE0(v10);
  (*(v11 + 32))(a5, a1);
  v12 = type metadata accessor for TrainingVector();
  *(a5 + *(v12 + 28)) = a2;
  v13 = *(v12 + 32);
  sub_1C441B884();
  v16 = *(v15 + 32);

  return v16(a5 + v14, a3, a4);
}

uint64_t sub_1C46FDB20(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C46FDBC8;

  return sub_1C46FCAD4(a1, a2);
}

uint64_t sub_1C46FDBC8()
{
  sub_1C43FBCD4();
  v3 = v2;
  sub_1C43FBDE4();
  v5 = *(v4 + 16);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;

  sub_1C43FBCF0();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_1C46FDCB4()
{
  sub_1C44601FC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_1C46FDD18();
  return v3;
}

uint64_t *sub_1C46FDD18()
{
  sub_1C44601FC();
  v5 = *v1;
  v6 = *(*v1 + 128);
  v7 = *(*v1 + 80);
  sub_1C441B884();
  (*(v8 + 32))(v1 + v9);
  sub_1C43FC20C();
  v11 = *(v10 + 136);
  v12 = *(v5 + 88);
  sub_1C441B884();
  (*(v13 + 32))(v1 + v14, v4);
  sub_1C43FC20C();
  v16 = *(v15 + 144);
  v17 = *(v5 + 96);
  sub_1C441B884();
  (*(v18 + 32))(v1 + v19, v3);
  sub_1C43FC20C();
  v21 = (v1 + *(v20 + 152));
  *v21 = v2;
  v21[1] = v0;
  return v1;
}

uint64_t sub_1C46FDE5C()
{
  sub_1C4404D98();
  v3 = v2;
  v1[14] = v4;
  v1[15] = v0;
  v1[12] = v5;
  v1[13] = v6;
  v1[10] = v7;
  v1[11] = v2;
  v8 = *v0;
  v1[16] = *v0;
  v9 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v1[17] = v9;
  sub_1C43FBD18(v9);
  v11 = *(v10 + 64) + 15;
  v1[18] = swift_task_alloc();
  v12 = v8[18];
  v13 = v8[15];
  v14 = *(v13 + 16);
  v15 = v8[12];
  sub_1C4404280();
  v21 = (v16 + *v16);
  v18 = *(v17 + 4);
  v19 = swift_task_alloc();
  v1[19] = v19;
  *v19 = v1;
  v19[1] = sub_1C46FE024;

  return v21(v3, v15, v13);
}

uint64_t sub_1C46FE024()
{
  sub_1C43FCF70();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v6 = *(v5 + 152);
  v7 = *v1;
  *v4 = *v1;
  *(v3 + 160) = v8;

  if (v0)
  {
    v9 = *(v3 + 144);

    v10 = *(v7 + 8);

    return v10();
  }

  else
  {
    sub_1C440C470();

    return MEMORY[0x1EEE6DFA0](v12, v13, v14);
  }
}

uint64_t sub_1C46FE15C()
{
  if (qword_1EDDFA668 != -1)
  {
    sub_1C4406728();
  }

  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[11];
  v5 = sub_1C4F00978();
  sub_1C442B738(v5, qword_1EDE2DDE0);
  sub_1C4460108(v4, v2, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v6 = sub_1C4F00968();
  v7 = sub_1C4F01CF8();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[20];
  v10 = v0[18];
  if (v8)
  {
    v11 = v0[16];
    v42 = v0[17];
    v12 = v0[15];
    v13 = sub_1C43FFD34();
    sub_1C43FC11C();
    *v13 = 134218498;
    v14 = *(v11 + 104);
    v15 = *(v11 + 80);
    swift_getAssociatedTypeWitness();
    *(v13 + 4) = sub_1C4F01758();

    *(v13 + 12) = 2080;
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    sub_1C4EF9CD8();
    sub_1C4F02438();
    sub_1C442BA70();
    v16 = *(v42 + 36);
    sub_1C4F02438();
    v17 = v0[2];
    v18 = v0[3];
    sub_1C4420C3C(v10, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    v19 = sub_1C4414A08();
    v22 = sub_1C441D828(v19, v20, v21);

    *(v13 + 14) = v22;
    *(v13 + 22) = 2080;
    v23 = (v12 + *(*v12 + 152));
    if (v23[1])
    {
      v24 = *v23;
    }

    else
    {
      v24 = 7104878;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v25 = sub_1C4409A28();
    sub_1C441D828(v25, v26, v27);
    sub_1C43FE670();
    *(v13 + 24) = v24;
    _os_log_impl(&dword_1C43F8000, v6, v7, "CombinedFeatureAndGroundTruthProvider: produced %ld for %s and name: %s", v13, 0x20u);
    sub_1C440CBC8();
    sub_1C4411B3C();
    sub_1C43FBE2C();
  }

  else
  {
    v28 = v0[20];

    sub_1C4420C3C(v10, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  }

  v30 = v0[15];
  v29 = v0[16];
  sub_1C43FC20C();
  v32 = *(v31 + 128);
  v34 = *(v33 + 104);
  v0[21] = v34;
  v35 = *(v34 + 16);
  v0[22] = *(v33 + 80);
  sub_1C4404280();
  v43 = (v36 + *v36);
  v38 = *(v37 + 4);
  v39 = swift_task_alloc();
  v0[23] = v39;
  *v39 = v0;
  v39[1] = sub_1C46FE51C;
  v40 = v0[11];
  sub_1C440F4D4(v0[20]);
  sub_1C441AE7C();

  return v43();
}

uint64_t sub_1C46FE51C()
{
  sub_1C43FCF70();
  v3 = v2;
  sub_1C43FBDE4();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v8 = *(v7 + 184);
  v9 = *v1;
  sub_1C43FBDAC();
  *v10 = v9;
  v5[24] = v0;

  if (!v0)
  {
    v11 = v5[20];

    v5[25] = v3;
  }

  sub_1C440C470();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1C46FE62C()
{
  v1 = *(v0 + 192);
  *(v0 + 32) = *(v0 + 200);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  v4 = *(v0 + 128);
  v5 = *(v0 + 88);
  swift_getAssociatedTypeWitness();
  type metadata accessor for IdentifiableFeatureVector();
  sub_1C4F017A8();
  sub_1C441F840();
  swift_getWitnessTable();
  v27 = *(v0 + 112);
  v6 = sub_1C43FE990();
  MEMORY[0x1C6940210](v6);

  *(v0 + 48) = *(v0 + 40);
  v7 = swift_task_alloc();
  *(v7 + 16) = v27;
  *(v7 + 32) = v5;
  v8 = sub_1C4F02268();
  v9 = *(v4 + 112);
  v10 = *(v4 + 88);
  swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for TrainingVector();
  v12 = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  *(v0 + 64) = swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  v14 = sub_1C4D4F664(sub_1C4702638, v7, v8, v11, v12, WitnessTable, MEMORY[0x1E69E7288], v0 + 56);
  if (v1)
  {

    v15 = *(v0 + 56);

    v16 = *(v0 + 144);

    sub_1C43FBDA0();

    return v17();
  }

  else
  {
    v19 = v14;
    v20 = *(v0 + 96);

    sub_1C4EFC048();
    *(v0 + 72) = v19;
    sub_1C4F017A8();
    sub_1C441F840();
    swift_getWitnessTable();
    v21 = sub_1C4EFC068();
    *(v0 + 208) = v21;
    v28 = (v20 + *v20);
    v22 = v20[1];
    swift_task_alloc();
    sub_1C43FBE70();
    *(v0 + 216) = v23;
    *v23 = v24;
    v23[1] = sub_1C46FE974;
    v25 = *(v0 + 104);
    v26 = *(v0 + 80);

    return v28(v26, v21);
  }
}

uint64_t sub_1C46FE974()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v6 = *(v5 + 216);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  v3[28] = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = v3[26];
    v13 = v3[18];

    sub_1C43FC1B0();

    return v14();
  }
}

uint64_t sub_1C46FEA9C()
{
  sub_1C43FBCD4();
  v1 = v0[20];

  v2 = v0[24];
  v3 = v0[18];

  sub_1C43FBDA0();

  return v4();
}

uint64_t sub_1C46FEB00()
{
  sub_1C43FBCD4();
  v1 = v0[26];

  v2 = v0[28];
  v3 = v0[18];

  sub_1C43FBDA0();

  return v4();
}

uint64_t sub_1C46FEB64@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X4>, uint64_t a5@<X8>)
{
  v35 = a4;
  v36 = a3;
  v34 = a5;
  v32 = *a2;
  v7 = v32;
  v8 = sub_1C4EF9CD8();
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v33 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v32[14];
  v12 = v32[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(AssociatedTypeWitness - 8);
  v14 = *(v30 + 64);
  v15 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v29 - v18;
  v20 = v7;
  v21 = v36;
  v22 = a2 + v20[17];
  v23 = v37;
  result = (*(v11 + 24))(a1, v36, v12, v11);
  if (v23)
  {
    *v35 = v23;
  }

  else
  {
    v25 = v33;
    (*(v31 + 16))(v33, v21, v8);
    v26 = v32[13];
    v27 = v32[10];
    swift_getAssociatedTypeWitness();
    v28 = *(a1 + *(type metadata accessor for IdentifiableFeatureVector() + 28));
    (*(v30 + 32))(v17, v19, AssociatedTypeWitness);
    sub_1C46FDA58(v25, v28, v17, AssociatedTypeWitness, v34);
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t *sub_1C46FEE3C()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 80);
  sub_1C441B884();
  (*(v4 + 8))(v0 + v5);
  sub_1C43FC20C();
  v7 = *(v6 + 136);
  v8 = *(v1 + 88);
  sub_1C441B884();
  (*(v9 + 8))(v0 + v10);
  sub_1C43FC20C();
  v12 = *(v11 + 144);
  v13 = *(v1 + 96);
  sub_1C441B884();
  (*(v14 + 8))(v0 + v15);
  sub_1C43FC20C();
  v17 = *(v0 + *(v16 + 152) + 8);

  return v0;
}

uint64_t sub_1C46FEF64()
{
  sub_1C46FEE3C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C46FEFD4()
{
  result = type metadata accessor for BehaviorDigestTaskIdentifier(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C46FF07C()
{
  sub_1C43FFB44();
  sub_1C4EFDAB8();
  sub_1C4419458();
  sub_1C47024B4(v2, v3);
  sub_1C4F01578();
  sub_1C4F01578();
  if (v18 == v17)
  {
    v4 = type metadata accessor for EntityRelevanceInteractionGroundTruth();
    v5 = v4[5];
    v6 = *(v1 + v5);
    v7 = *(v1 + v5 + 8);
    v8 = (v0 + v5);
    v9 = v6 == *v8 && v7 == v8[1];
    if (v9 || (sub_1C4F02938()) && *(v1 + v4[6]) == *(v0 + v4[6]))
    {
      v10 = v4[7];
      v11 = (v1 + v10);
      v12 = *(v1 + v10 + 8);
      v13 = (v0 + v10);
      v14 = v13[1];
      if (v12)
      {
        if (v14)
        {
          v15 = *v11 == *v13 && v12 == v14;
          if (v15 || (sub_1C4F02938() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else if (!v14)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1C46FF1B4()
{
  v1 = (*v0 + *(**v0 + 152));
  v2 = *v1;
  v3 = v1[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v2;
}

uint64_t sub_1C46FF200()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442E8C4;

  return sub_1C46FDE5C();
}

uint64_t sub_1C46FF2D0()
{
  sub_1C43FFB44();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_1C46FF31C();
  return v3;
}

uint64_t sub_1C46FF31C()
{
  sub_1C43FFB44();
  v3 = qword_1EC151C28;
  v4 = sub_1C456902C(&qword_1EC0B9CA8, &qword_1C4F22290);
  sub_1C440BAA8(v1 + v3, 2, 2, v4);
  *(v1 + qword_1EC151C30) = MEMORY[0x1E69E7CC0];
  v5 = (v1 + qword_1EC0BB9B0);
  v6 = v2[1];
  *v5 = *v2;
  v5[1] = v6;
  v7 = v2[3];
  v5[2] = v2[2];
  v5[3] = v7;
  *(v1 + qword_1EC0BB9B8) = v0;
  return v1;
}

uint64_t sub_1C46FF3B4()
{
  sub_1C43FCF70();
  v1[6] = v2;
  v1[7] = v0;
  v3 = *v0;
  v1[8] = *v0;
  v4 = sub_1C456902C(&qword_1EC0B84B0, qword_1C4F0CDE0);
  v1[9] = v4;
  sub_1C43FBD18(v4);
  v6 = *(v5 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v7 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v1[12] = v7;
  sub_1C43FBD18(v7);
  v9 = *(v8 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v10 = *(v3 + 80);
  v1[15] = v10;
  v11 = *(v10 - 8);
  v1[16] = v11;
  v1[17] = *(v11 + 64);
  v1[18] = sub_1C43FE604();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v12 = sub_1C4EF9CD8();
  v1[21] = v12;
  sub_1C43FCF7C(v12);
  v1[22] = v13;
  v15 = *(v14 + 64);
  v1[23] = sub_1C43FE604();
  v1[24] = swift_task_alloc();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1C46FF5A4()
{
  v1 = v0[24];
  v3 = v0[21];
  v2 = v0[22];
  v107 = v0[23];
  v109 = v0[15];
  v4 = v0[6];
  v5 = v0[7];
  v6 = *(v0[12] + 36);
  v7 = qword_1EC151C30;
  sub_1C4588DCC();
  v8 = *(*(v5 + v7) + 16);
  sub_1C45899BC();
  v9 = *(v5 + v7);
  *(v9 + 16) = v8 + 1;
  v10 = *(v2 + 16);
  v2 += 16;
  v11 = v9 + ((*(v2 + 64) + 32) & ~*(v2 + 64)) + *(v2 + 56) * v8;
  v0[25] = v10;
  v0[26] = v2 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v11, v4 + v6, v3);
  *(v5 + v7) = v9;
  sub_1C4EF9B78();
  sub_1C4EF9BE8();
  sub_1C4EF9BE8();
  v0[27] = *(v5 + qword_1EC0BB9B8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v12 = sub_1C4F01688();
  v0[4] = v12;
  v13 = v0[27];
  v14 = v0[15];
  v15 = sub_1C4F01758();
  v16 = v0[27];
  if (v12 == v15)
  {
    v17 = v0[23];
    v18 = v0[24];
    v19 = v0[21];
    v20 = v0[22];
    sub_1C443F5BC();

    v21 = *(v20 + 8);
    v22 = sub_1C4404BCC();
    v21(v22);
    v23 = sub_1C440A9B8();
    v21(v23);

    sub_1C43FC1B0();

    return v24();
  }

  v25 = v0[15];
  v26 = v0[27];
  v27 = sub_1C4F01738();
  v28 = sub_1C4F016B8();
  if (v27)
  {
    v29 = sub_1C4404E3C(v28, v0[27]);
    v5(v29);
  }

  else
  {
    v97 = v0[17];
    v98 = v0[15];
    result = sub_1C4F02298();
    if (v97 != 8)
    {
LABEL_27:
      __break(1u);
      return result;
    }

    v99 = sub_1C4415950(result);
    v5(v99);
    swift_unknownObjectRelease();
  }

  v30 = v0[27];
  v32 = v0[19];
  v31 = v0[20];
  v33 = v0[15];
  v34 = v0[16];
  sub_1C4F01788();
  v36 = *(v34 + 32);
  v35 = v34 + 32;
  v37 = sub_1C440C480();
  v38(v37);
  sub_1C4F01968();
  if (qword_1EDDFA668 != -1)
  {
    sub_1C4406728();
  }

  v40 = sub_1C443F184();
  sub_1C442B738(v40, qword_1EDE2DDE0);
  v41 = sub_1C43FE990();
  sub_1C4460108(v41, v42, v43, v44);
  v45 = sub_1C440C480();
  v5(v45);
  v46 = sub_1C4F00968();
  v47 = sub_1C4F01CF8();
  if (os_log_type_enabled(v46, v47))
  {
    sub_1C4469144();
    v105 = v48;
    v49 = v0[14];
    v102 = v0[12];
    v103 = v0[8];
    v50 = swift_slowAlloc();
    sub_1C43FC11C();
    *v50 = 136315394;
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    sub_1C4405AD4();
    sub_1C442BA70();
    v51 = *(v102 + 36);
    sub_1C4405AD4();
    v52 = v0[2];
    v53 = v0[3];
    sub_1C4420C3C(v49, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    v54 = sub_1C4409A28();
    sub_1C441D828(v54, v55, v56);
    sub_1C43FE670();
    *(v50 + 4) = v52;
    *(v50 + 12) = 2080;
    v57 = (*(*(v103 + 88) + 16))(v105);
    if (v58)
    {
      v59 = v57;
    }

    else
    {
      v59 = 7104878;
    }

    if (v58)
    {
      v3 = v58;
    }

    else
    {
      v3 = 0xE300000000000000;
    }

    v60 = *(v35 + 8);
    v61 = sub_1C4404DC8();
    v60(v61);
    v62 = sub_1C4409A28();
    sub_1C441D828(v62, v63, v64);
    sub_1C43FE670();
    *(v50 + 14) = v59;
    sub_1C447F944(&dword_1C43F8000, v65, v66, "EntityRelevanceHistoricalFeatureStoreDigestTask: Producing training set for %s for %s");
    sub_1C440CBC8();
    sub_1C4411B3C();
    sub_1C43FBE2C();
  }

  else
  {
    v67 = v0[18];
    v68 = v0[15];
    v69 = v0[16];
    v70 = v0[14];

    v60 = *(v69 + 8);
    v71 = sub_1C4402120();
    v60(v71);
    sub_1C4420C3C(v70, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  }

  v0[28] = v60;
  v72 = v0[23];
  v73 = v0[24];
  v74 = v0[21];
  sub_1C441C964();
  sub_1C47024B4(v75, v76);
  sub_1C4402120();
  result = sub_1C4F01088();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  sub_1C44222C4();
  v101 = v77;
  v78 = v0[10];
  v79 = v0[9];
  v108 = v0[8];
  v110 = v80;
  v104 = v0[6];
  v106 = v0[7];
  v60(v0[11]);
  v81 = sub_1C445063C();
  v60(v81);
  v82 = sub_1C4402E08();
  sub_1C4460108(v82, v83, v84, v85);
  v100 = *(v79 + 48);
  v86 = *(v74 + 32);
  v86(v101, v78, v74);
  sub_1C4423670();
  v3(v78 + v100, v74);
  v87 = sub_1C4402E08();
  sub_1C44CDA30(v87, v88, &qword_1EC0B84B0, qword_1C4F0CDE0);
  v89 = *(v79 + 48);
  v90 = sub_1C44340C4();
  (v86)(v90);
  v91 = sub_1C43FBC98();
  (v3)(v91);
  v92 = swift_task_alloc();
  v0[31] = v92;
  *(v92 + 16) = v104;
  *(v92 + 24) = v110;
  sub_1C4435874(v92, v108);
  sub_1C4404280();
  v111 = (v93 + *v93);
  v95 = *(v94 + 4);
  v96 = swift_task_alloc();
  v0[32] = v96;
  *v96 = v0;
  sub_1C4410B5C(v96);
  sub_1C43FEEE0();

  return v111();
}

uint64_t sub_1C46FFD10()
{
  sub_1C43FCF70();
  v2 = *v1;
  v3 = *v1;
  sub_1C43FBDAC();
  *v4 = v3;
  v5 = v2[32];
  *v4 = *v1;
  v3[33] = v0;

  v6 = v2[31];
  if (v0)
  {
    v7 = v3[27];
    sub_1C4420C3C(v3[13], &qword_1EC0B84B8, &unk_1C4F0D4F0);
  }

  else
  {
    sub_1C4420C3C(v3[13], &qword_1EC0B84B8, &unk_1C4F0D4F0);
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C46FFE7C()
{
  v2 = *(v0 + 128) + 8;
  (*(v0 + 224))(*(v0 + 152), *(v0 + 120));
  v3 = *(v0 + 32);
  v4 = *(v0 + 264);
  v5 = *(v0 + 216);
  v6 = *(v0 + 120);
  v7 = sub_1C4F01758();
  v8 = *(v0 + 216);
  if (v3 == v7)
  {
    v9 = *(v0 + 184);
    v10 = *(v0 + 192);
    v11 = *(v0 + 168);
    v12 = *(v0 + 176);
    sub_1C443F5BC();

    v13 = *(v12 + 8);
    v13(v9, v11);
    v13(v10, v11);

    sub_1C43FC1B0();
    goto LABEL_7;
  }

  v14 = *(v0 + 120);
  v15 = *(v0 + 216);
  v16 = sub_1C4F01738();
  v17 = sub_1C4F016B8();
  if (v16)
  {
    v18 = sub_1C4404E3C(v17, *(v0 + 216));
    v1(v18);
  }

  else
  {
    v96 = *(v0 + 136);
    v97 = *(v0 + 120);
    result = sub_1C4F02298();
    if (v96 != 8)
    {
      goto LABEL_28;
    }

    v98 = sub_1C4415950(result);
    v1(v98);
    swift_unknownObjectRelease();
  }

  v19 = *(v0 + 216);
  v21 = *(v0 + 152);
  v20 = *(v0 + 160);
  v22 = *(v0 + 120);
  v23 = *(v0 + 128);
  sub_1C4F01788();
  v25 = *(v23 + 32);
  v24 = v23 + 32;
  v25(v21, v20, v22);
  sub_1C4F01968();
  if (v4)
  {
    sub_1C441B368();
    v26 = *(v22 + 8);
    v27 = sub_1C4404BCC();
    v26(v27);
    v28 = sub_1C440A9B8();
    v26(v28);
    v29 = *(v24 + 8);
    v30 = *(v0 + 184);
    v31 = *(v0 + 192);
    sub_1C4408940();
    v32 = *(v0 + 88);
    v107 = *(v0 + 80);
    v33(v22 + 8);

    sub_1C43FBDA0();
LABEL_7:
    sub_1C4416034();

    __asm { BRAA            X1, X16 }
  }

  if (qword_1EDDFA668 != -1)
  {
    sub_1C4406728();
  }

  v36 = sub_1C443F184();
  sub_1C442B738(v36, qword_1EDE2DDE0);
  v37 = sub_1C43FE990();
  sub_1C4460108(v37, v38, v39, v40);
  v41 = sub_1C440C480();
  v1(v41);
  v42 = sub_1C4F00968();
  v43 = sub_1C4F01CF8();
  if (os_log_type_enabled(v42, v43))
  {
    sub_1C4469144();
    v104 = v44;
    v45 = *(v0 + 112);
    v101 = *(v0 + 96);
    v102 = *(v0 + 64);
    v46 = swift_slowAlloc();
    sub_1C43FC11C();
    *v46 = 136315394;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0xE000000000000000;
    sub_1C4405AD4();
    sub_1C442BA70();
    v47 = *(v101 + 36);
    sub_1C4405AD4();
    v48 = *(v0 + 16);
    v49 = *(v0 + 24);
    sub_1C4420C3C(v45, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    v50 = sub_1C4409A28();
    sub_1C441D828(v50, v51, v52);
    sub_1C43FE670();
    *(v46 + 4) = v48;
    *(v46 + 12) = 2080;
    v53 = (*(*(v102 + 88) + 16))(v104);
    if (v54)
    {
      v55 = v53;
    }

    else
    {
      v55 = 7104878;
    }

    if (v54)
    {
      v24 = v54;
    }

    else
    {
      v24 = 0xE300000000000000;
    }

    v56 = *(v22 + 8);
    v57 = sub_1C4404DC8();
    v56(v57);
    v58 = sub_1C4409A28();
    sub_1C441D828(v58, v59, v60);
    sub_1C43FE670();
    *(v46 + 14) = v55;
    sub_1C447F944(&dword_1C43F8000, v61, v62, "EntityRelevanceHistoricalFeatureStoreDigestTask: Producing training set for %s for %s");
    sub_1C440CBC8();
    sub_1C4411B3C();
    sub_1C43FBE2C();
  }

  else
  {
    v63 = *(v0 + 144);
    v64 = *(v0 + 120);
    v65 = *(v0 + 128);
    v66 = *(v0 + 112);

    v56 = *(v65 + 8);
    v67 = sub_1C4402120();
    v56(v67);
    sub_1C4420C3C(v66, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  }

  *(v0 + 224) = v56;
  v68 = *(v0 + 184);
  v69 = *(v0 + 192);
  v70 = *(v0 + 168);
  sub_1C441C964();
  sub_1C47024B4(v71, v72);
  sub_1C4402120();
  result = sub_1C4F01088();
  if (result)
  {
    sub_1C44222C4();
    v100 = v74;
    v75 = *(v0 + 80);
    v76 = *(v0 + 72);
    v106 = *(v0 + 64);
    v108 = v77;
    v103 = *(v0 + 48);
    v105 = *(v0 + 56);
    v56(*(v0 + 88));
    v78 = sub_1C445063C();
    v56(v78);
    v79 = sub_1C4402E08();
    sub_1C4460108(v79, v80, v81, v82);
    v99 = *(v76 + 48);
    v83 = *(v70 + 32);
    v83(v100, v75, v70);
    sub_1C4423670();
    (v24)(v75 + v99, v70);
    v84 = sub_1C4402E08();
    sub_1C44CDA30(v84, v85, &qword_1EC0B84B0, qword_1C4F0CDE0);
    v86 = *(v76 + 48);
    v87 = sub_1C44340C4();
    (v83)(v87);
    v88 = sub_1C43FBC98();
    (v24)(v88);
    v89 = swift_task_alloc();
    *(v0 + 248) = v89;
    *(v89 + 16) = v103;
    *(v89 + 24) = v108;
    sub_1C4435874(v89, v106);
    sub_1C4404280();
    v109 = v90 + *v90;
    v92 = *(v91 + 4);
    v93 = swift_task_alloc();
    *(v0 + 256) = v93;
    *v93 = v0;
    sub_1C4410B5C();
    sub_1C43FEEE0();
    sub_1C4416034();

    __asm { BRAA            X0, X16 }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1C4700510()
{
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[24];
  (v3)(v0[23], v0[21]);
  v5 = sub_1C4402120();
  v3(v5);
  v14 = v0[33];
  v6 = v0[28];
  v8 = v0[23];
  v7 = v0[24];
  sub_1C4408940();
  v9 = v0[10];
  v10 = v0[11];
  v11(v1);

  sub_1C43FBDA0();

  return v12();
}

uint64_t sub_1C4700614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[12] = a2;
  v5[13] = a3;
  v6 = *a5;
  v5[16] = *a5;
  v7 = *(v6 + 80);
  v5[17] = v7;
  v8 = *(v7 - 8);
  v5[18] = v8;
  v9 = *(v8 + 64) + 15;
  v5[19] = swift_task_alloc();
  v10 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v5[20] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v5[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C470074C, 0, 0);
}

uint64_t sub_1C470074C()
{
  if (qword_1EDDFA668 != -1)
  {
    sub_1C4406728();
  }

  v1 = *(v0 + 168);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 136);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = sub_1C4F00978();
  sub_1C442B738(v7, qword_1EDE2DDE0);
  sub_1C4460108(v6, v1, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  v8 = *(v3 + 16);
  v9 = sub_1C4404BCC();
  v10(v9);
  v11 = sub_1C4F00968();
  v12 = sub_1C4F01CF8();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 168);
  if (v13)
  {
    v51 = *(v0 + 160);
    v15 = *(v0 + 136);
    v53 = *(v0 + 152);
    v54 = *(v0 + 144);
    v16 = *(v0 + 128);
    v17 = swift_slowAlloc();
    sub_1C43FC11C();
    *v17 = 136315394;
    *(v0 + 80) = 0;
    *(v0 + 88) = 0xE000000000000000;
    sub_1C4EF9CD8();
    sub_1C4F02438();
    v52 = v12;
    sub_1C442BA70();
    v18 = *(v51 + 36);
    sub_1C4F02438();
    v19 = *(v0 + 80);
    v20 = *(v0 + 88);
    sub_1C4420C3C(v14, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    v21 = sub_1C4414A08();
    v24 = sub_1C441D828(v21, v22, v23);

    *(v17 + 4) = v24;
    *(v17 + 12) = 2080;
    v25 = *(v16 + 88);
    v26 = *(v25 + 16);
    v26(v15, v25);
    (*(v54 + 8))(v53, v15);
    v27 = sub_1C4414A08();
    v30 = sub_1C441D828(v27, v28, v29);

    *(v17 + 14) = v30;
    _os_log_impl(&dword_1C43F8000, v11, v52, "EntityRelevanceHistoricalFeatureStoreDigestTask: inserting feature vectors for %s for %s", v17, 0x16u);
    sub_1C440CBC8();
    sub_1C4411B3C();
    sub_1C43FBE2C();
  }

  else
  {
    v32 = *(v0 + 144);
    v31 = *(v0 + 152);
    v34 = *(v0 + 128);
    v33 = *(v0 + 136);

    (*(v32 + 8))(v31, v33);
    sub_1C4420C3C(v14, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    v25 = *(v34 + 88);
    v26 = *(v25 + 16);
  }

  v35 = *(v0 + 168);
  v36 = *(v0 + 152);
  v37 = *(v0 + 136);
  v38 = *(v0 + 112);
  v39 = *(v0 + 96);
  v40 = (*(v0 + 120) + qword_1EC0BB9B0);
  v41 = v40[3];
  v43 = *v40;
  v42 = v40[1];
  *(v0 + 48) = v40[2];
  *(v0 + 64) = v41;
  *(v0 + 16) = v43;
  *(v0 + 32) = v42;
  v44 = (v26)(v37, v25);
  v46 = v45;
  v47 = *(*(v0 + 48) + 16);
  v48 = swift_task_alloc();
  v48[2] = v39;
  v48[3] = v0 + 16;
  v48[4] = v44;
  v48[5] = v46;
  sub_1C446C37C(sub_1C47025A4, v48);

  sub_1C43FC1B0();

  return v49();
}

uint64_t sub_1C4700AFC()
{
  sub_1C47025C4(v0 + qword_1EC151C28);
  v1 = *(v0 + qword_1EC0BB9B0 + 8);
  v2 = *(v0 + qword_1EC0BB9B0 + 24);
  v3 = *(v0 + qword_1EC0BB9B0 + 32);
  v4 = *(v0 + qword_1EC0BB9B0 + 40);
  v5 = *(v0 + qword_1EC0BB9B0 + 48);
  v6 = *(v0 + qword_1EC0BB9B0 + 56);

  v7 = *(v0 + qword_1EC0BB9B8);

  v8 = *(v0 + qword_1EC151C30);

  return v0;
}

uint64_t sub_1C4700BA4()
{
  sub_1C4700AFC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C4700C14(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 72))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 64);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1C4700C68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

uint64_t sub_1C4700CE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C4700D24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C4700D70(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t type metadata accessor for EntityRelevanceInteractionGroundTruth()
{
  result = qword_1EC0BBA40;
  if (!qword_1EC0BBA40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C4700E1C()
{
  sub_1C4EFDAB8();
  if (v0 <= 0x3F)
  {
    sub_1C4700EB8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C4700EB8()
{
  if (!qword_1EDDFEAB0)
  {
    v0 = sub_1C4F01F48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDFEAB0);
    }
  }
}

unint64_t sub_1C4700F0C()
{
  result = qword_1EC0BBA50;
  if (!qword_1EC0BBA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BBA50);
  }

  return result;
}

uint64_t sub_1C4700F60()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442F080;

  return sub_1C46FF3B4();
}

uint64_t sub_1C4700FF4()
{
  sub_1C43FEAEC();
  sub_1C43FFB44();
  v1 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  sub_1C43FBD18(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  v6 = sub_1C43FCF54(v5);
  *v6 = v7;
  v6[1] = sub_1C442F080;
  v8 = sub_1C44345AC();

  return sub_1C46FBC18(v8, v9, v10, v11);
}

void sub_1C47010D4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v143 = a5;
  v133 = a4;
  v145 = a3;
  v148 = a2;
  v137 = a1;
  v150 = sub_1C4EFB768();
  v7 = *(v150 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v150 - 8);
  v136 = &v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v155 = &v132 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v157 = &v132 - v13;
  v14 = sub_1C456902C(&qword_1EC0BBAA8, &unk_1C4F22280);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v132 - v16;
  v146 = sub_1C456902C(&qword_1EC0BB888, &qword_1C4F21730);
  v18 = *(*(v146 - 8) + 64);
  MEMORY[0x1EEE9AC00](v146);
  v158 = &v132 - v19;
  v147 = sub_1C4401CBC(&qword_1EC0BB860, &qword_1EC0BB850, &qword_1C4F21700);
  v144 = "er";
  v142 = "ons, queryName, metadata, ";
  v141 = 0x80000001C4F855E0;
  v140 = 0x80000001C4F930C0;
  v139 = 0x80000001C4F930E0;
  v138 = xmmword_1C4F0F830;
  v134 = v17;
  v135 = (v7 + 8);
  while (1)
  {
    sub_1C456902C(&qword_1EC0BB850, &qword_1C4F21700);
    sub_1C4EFBD68();
    if (v6)
    {
      return;
    }

    v20 = v146;
    if (sub_1C44157D4(v17, 1, v146) == 1)
    {
      v129 = &qword_1EC0BBAA8;
      v130 = &unk_1C4F22280;
      v131 = v17;
LABEL_69:
      sub_1C4420C3C(v131, v129, v130);
      return;
    }

    v21 = v158;
    sub_1C44CDA30(v17, v158, &qword_1EC0BB888, &qword_1C4F21730);
    v22 = *(v20 + 32);
    v161 = *(v21 + *(v20 + 28));
    v23 = v21 + v22;
    v24 = type metadata accessor for EntityRelevanceInteractionGroundTruth();
    v25 = v24[6];
    v26 = (v23 + v24[5]);
    v27 = v26[1];
    v152 = *v26;
    v159 = *(v23 + v25);
    v28 = (v23 + v24[7]);
    v29 = v28[1];
    v149 = *v28;
    v170 = 0;
    v171 = 0xE000000000000000;
    v154 = v29;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v153 = v27;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F02248();
    MEMORY[0x1C6940010](0x4920545245534E49, 0xEC000000204F544ELL);
    v30 = v145;
    MEMORY[0x1C6940010](*v145, v145[1]);
    MEMORY[0x1C6940010](0xD00000000000006ALL, v144 | 0x8000000000000000);
    v31 = v30[5];
    v32 = *(v31 + 16);
    v156 = 0;
    v166 = v31;
    if (v32)
    {
      v151 = v23;
      v169 = MEMORY[0x1E69E7CC0];
      sub_1C44CD9C0();
      v33 = v169;
      v36 = sub_1C486C288(v31);
      v37 = v33;
      v38 = 0;
      v39 = v31 + 56;
      v160 = v31 + 64;
      v162 = v31 + 56;
      v163 = v32;
      if ((v36 & 0x8000000000000000) == 0)
      {
        while (v36 < 1 << *(v31 + 32))
        {
          v40 = v36 >> 6;
          if ((*(v39 + 8 * (v36 >> 6)) & (1 << v36)) == 0)
          {
            goto LABEL_72;
          }

          if (*(v31 + 36) != v34)
          {
            goto LABEL_73;
          }

          LODWORD(v165) = v35;
          v164 = v34;
          v41 = (*(v31 + 48) + 16 * v36);
          v42 = *v41;
          v43 = v41[1];
          v167 = 34;
          v168 = 0xE100000000000000;
          v44 = v37;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          MEMORY[0x1C6940010](v42, v43);
          MEMORY[0x1C6940010](34, 0xE100000000000000);

          v37 = v44;
          v45 = v167;
          v46 = v168;
          v169 = v44;
          v47 = *(v44 + 16);
          if (v47 >= *(v37 + 24) >> 1)
          {
            sub_1C44CD9C0();
            v37 = v169;
          }

          *(v37 + 16) = v47 + 1;
          v48 = v37 + 16 * v47;
          *(v48 + 32) = v45;
          *(v48 + 40) = v46;
          if (v165)
          {
            goto LABEL_83;
          }

          v31 = v166;
          v49 = 1 << *(v166 + 32);
          v39 = v162;
          v50 = v163;
          if (v36 >= v49)
          {
            goto LABEL_74;
          }

          v51 = *(v162 + 8 * v40);
          if ((v51 & (1 << v36)) == 0)
          {
            goto LABEL_75;
          }

          if (*(v166 + 36) != v164)
          {
            goto LABEL_76;
          }

          v52 = v51 & (-2 << (v36 & 0x3F));
          if (v52)
          {
            v49 = __clz(__rbit64(v52)) | v36 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v53 = v40 << 6;
            v54 = v40 + 1;
            v55 = (v160 + 8 * v40);
            while (v54 < (v49 + 63) >> 6)
            {
              v57 = *v55++;
              v56 = v57;
              v53 += 64;
              ++v54;
              if (v57)
              {
                v58 = v37;
                sub_1C440951C(v36, v164, 0);
                v37 = v58;
                v49 = __clz(__rbit64(v56)) + v53;
                goto LABEL_22;
              }
            }

            v59 = v37;
            sub_1C440951C(v36, v164, 0);
            v37 = v59;
          }

LABEL_22:
          if (++v38 == v50)
          {
            goto LABEL_27;
          }

          v35 = 0;
          v34 = *(v31 + 36);
          v36 = v49;
          if (v49 < 0)
          {
            break;
          }
        }
      }

      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v37 = MEMORY[0x1E69E7CC0];
LABEL_27:
    v167 = v37;
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C4401CBC(&qword_1EDDFCED0, &unk_1EC0B9620, &unk_1C4F0E870);
    v60 = sub_1C4F01048();
    v62 = v61;

    MEMORY[0x1C6940010](v60, v62);

    MEMORY[0x1C6940010](0xD000000000000079, v142 | 0x8000000000000000);
    v63 = *(v31 + 16);
    if (v63)
    {
      v64 = *(v31 + 16);
      v65 = sub_1C4F01728();
      v66 = v65;
      *(v65 + 16) = v63;
      v67 = 32;
      do
      {
        v68 = (v65 + v67);
        *v68 = 63;
        v68[1] = 0xE100000000000000;
        v67 += 16;
        --v63;
      }

      while (v63);
    }

    else
    {
      v66 = MEMORY[0x1E69E7CC0];
    }

    LODWORD(v165) = v159 > 0;
    v167 = v66;
    v69 = sub_1C4F01048();
    v71 = v70;

    MEMORY[0x1C6940010](v69, v71);

    MEMORY[0x1C6940010](41, 0xE100000000000000);
    v151 = v170;
    v162 = v171;
    sub_1C456902C(&qword_1EC0B9AA8, &qword_1C4F11010);
    v72 = swift_allocObject();
    *(v72 + 16) = v138;
    *(v72 + 32) = 0x7954797469746E65;
    *(v72 + 40) = 0xEA00000000006570;
    v73 = sub_1C4EFDAA8();
    v74 = MEMORY[0x1E69E6530];
    *(v72 + 72) = MEMORY[0x1E69E6530];
    v75 = MEMORY[0x1E69A0180];
    *(v72 + 48) = v73;
    *(v72 + 80) = v75;
    *(v72 + 88) = 0xD000000000000010;
    *(v72 + 96) = v141;
    v76 = MEMORY[0x1E69E6158];
    *(v72 + 128) = MEMORY[0x1E69E6158];
    v77 = MEMORY[0x1E69A0138];
    v78 = v153;
    *(v72 + 104) = v152;
    *(v72 + 112) = v78;
    *(v72 + 136) = v77;
    *(v72 + 144) = 0xD000000000000011;
    *(v72 + 152) = v140;
    sub_1C4EF9AD8();
    *(v72 + 184) = MEMORY[0x1E69E63B0];
    v79 = MEMORY[0x1E69A0168];
    *(v72 + 160) = v80;
    *(v72 + 192) = v79;
    *(v72 + 200) = 0x6176656C65527369;
    *(v72 + 208) = 0xEA0000000000746ELL;
    *(v72 + 240) = MEMORY[0x1E69E6370];
    v81 = MEMORY[0x1E69A0150];
    *(v72 + 216) = v165;
    *(v72 + 248) = v81;
    *(v72 + 256) = 0xD000000000000014;
    v82 = v139;
    *(v72 + 296) = v74;
    *(v72 + 304) = v75;
    v83 = v159;
    *(v72 + 264) = v82;
    *(v72 + 272) = v83;
    *(v72 + 312) = 0x6D614E7972657571;
    *(v72 + 320) = 0xE900000000000065;
    if (v143)
    {
      v84 = v133;
      v85 = v143;
      v86 = v76;
      v87 = v77;
    }

    else
    {
      v84 = 0;
      v85 = 0;
      v86 = 0;
      v87 = 0;
      *(v72 + 344) = 0;
    }

    v6 = v156;
    v88 = v150;
    *(v72 + 328) = v84;
    *(v72 + 336) = v85;
    *(v72 + 352) = v86;
    *(v72 + 360) = v87;
    *(v72 + 368) = 0x617461646174656DLL;
    *(v72 + 376) = 0xE800000000000000;
    v89 = v154;
    if (v154)
    {
      v90 = v76;
      v91 = v149;
    }

    else
    {
      v91 = 0;
      v90 = 0;
      v77 = 0;
      *(v72 + 400) = 0;
    }

    *(v72 + 384) = v91;
    *(v72 + 392) = v89;
    *(v72 + 408) = v90;
    *(v72 + 416) = v77;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFB738();
    v92 = v166;
    v93 = *(v166 + 16);
    if (v93)
    {
      break;
    }

    v94 = MEMORY[0x1E69E7CC0];
LABEL_65:
    v170 = v94;
    sub_1C456902C(qword_1EC0BBAB0, &unk_1C4F4FAA0);
    sub_1C4401CBC(&qword_1EDDDBD50, qword_1EC0BBAB0, &unk_1C4F4FAA0);
    v124 = v136;
    sub_1C4EFB7A8();
    v125 = v155;
    sub_1C4EFB748();
    v126 = *v135;
    (*v135)(v124, v88);
    v127 = v125;
    v128 = v157;
    v126(v127, v88);
    sub_1C4EFBFF8();
    if (v6)
    {

      v126(v128, v88);
      v129 = &qword_1EC0BB888;
      v130 = &qword_1C4F21730;
      v131 = v158;
      goto LABEL_69;
    }

    v126(v128, v88);
    sub_1C4420C3C(v158, &qword_1EC0BB888, &qword_1C4F21730);
    v17 = v134;
  }

  v170 = MEMORY[0x1E69E7CC0];
  sub_1C459DFC8();
  v94 = v170;
  v97 = sub_1C486C288(v92);
  v98 = 0;
  v165 = v92 + 56;
  v159 = v92 + 64;
  v160 = v93;
  v99 = v92;
  if ((v97 & 0x8000000000000000) == 0)
  {
    while (v97 < 1 << *(v99 + 32))
    {
      v100 = v97 >> 6;
      if ((*(v165 + 8 * (v97 >> 6)) & (1 << v97)) == 0)
      {
        goto LABEL_78;
      }

      if (*(v99 + 36) != v95)
      {
        goto LABEL_79;
      }

      LODWORD(v163) = v96;
      v164 = v95;
      v101 = v94;
      v102 = (*(v99 + 48) + 16 * v97);
      v104 = *v102;
      v103 = v102[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v105 = sub_1C4F01108();
      v106 = [v161 featureValueForName_];

      if (v106)
      {
        [v106 doubleValue];
        v108 = v107;

        v109 = MEMORY[0x1E69E63B0];
        v110 = MEMORY[0x1E69A0168];
      }

      else
      {

        v109 = 0;
        v110 = 0;
        v108 = 0;
      }

      v94 = v101;
      v170 = v101;
      v111 = *(v101 + 16);
      v112 = v164;
      v113 = v163;
      if (v111 >= *(v94 + 24) >> 1)
      {
        sub_1C459DFC8();
        v113 = v163;
        v112 = v164;
        v94 = v170;
      }

      *(v94 + 16) = v111 + 1;
      v114 = (v94 + 40 * v111);
      v114[4] = v108;
      v114[5] = 0;
      v114[6] = 0;
      v114[7] = v109;
      v114[8] = v110;
      if (v113)
      {
        goto LABEL_84;
      }

      v99 = v166;
      v115 = 1 << *(v166 + 32);
      v116 = v160;
      if (v97 >= v115)
      {
        goto LABEL_80;
      }

      v117 = *(v165 + 8 * v100);
      if ((v117 & (1 << v97)) == 0)
      {
        goto LABEL_81;
      }

      if (*(v166 + 36) != v112)
      {
        goto LABEL_82;
      }

      v118 = v117 & (-2 << (v97 & 0x3F));
      if (v118)
      {
        v115 = __clz(__rbit64(v118)) | v97 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v164 = v94;
        v119 = v100 << 6;
        v120 = v100 + 1;
        v121 = (v159 + 8 * v100);
        while (v120 < (v115 + 63) >> 6)
        {
          v123 = *v121++;
          v122 = v123;
          v119 += 64;
          ++v120;
          if (v123)
          {
            sub_1C440951C(v97, v112, 0);
            v115 = __clz(__rbit64(v122)) + v119;
            goto LABEL_59;
          }
        }

        sub_1C440951C(v97, v112, 0);
LABEL_59:
        v94 = v164;
      }

      if (++v98 == v116)
      {
        v6 = v156;
        v88 = v150;
        goto LABEL_65;
      }

      v96 = 0;
      v95 = *(v99 + 36);
      v97 = v115;
      if (v115 < 0)
      {
        break;
      }
    }
  }

LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
}

id sub_1C4701E88()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1C4F00EC8();

  v7[0] = 0;
  v2 = [v0 initWithDictionary:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_1C4EF97A8();

    swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

unint64_t sub_1C4701F70(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1C6942850](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1C6942850](&v3, 8);
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

void sub_1C4701FFC(double a1, double a2)
{
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    sub_1C4701F70(0x20000000000001uLL);
  }
}

uint64_t sub_1C4702074(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_1C4F020D8();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_1C47020B4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1C470214C;

  return sub_1C46F94F4();
}

uint64_t sub_1C470214C()
{
  sub_1C43FCF70();
  v3 = v2;
  sub_1C43FBDE4();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  sub_1C43FBDAC();
  *v10 = v9;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t sub_1C4702244(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1C4703358;

  return sub_1C46F97BC();
}

uint64_t sub_1C4702354()
{
  sub_1C43FBCD4();
  v2 = v1;
  v3 = swift_task_alloc();
  v4 = sub_1C43FCF54(v3);
  *v4 = v5;
  v4[1] = sub_1C442F080;

  return sub_1C46F9A28(v2, v0);
}

uint64_t sub_1C47023EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_1C4702400()
{
  sub_1C43FCF70();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C4400200(v1);

  return v4(v3);
}

uint64_t sub_1C47024B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C47024FC()
{
  sub_1C43FEAEC();
  sub_1C43FFB44();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_1C43FCF54(v4);
  *v5 = v6;
  v5[1] = sub_1C442F080;
  v7 = sub_1C44345AC();

  return sub_1C4700614(v7, v8, v9, v2, v3);
}

uint64_t sub_1C47025C4(uint64_t a1)
{
  v2 = type metadata accessor for BehaviorDigestTaskIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C47026A4(uint64_t a1)
{
  result = sub_1C4EF9CD8();
  if (v3 <= 0x3F)
  {
    result = sub_1C4702C80();
    if (v4 <= 0x3F)
    {
      v5 = *(a1 + 16);
      result = swift_checkMetadataState();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C4702744(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1C4EF9CD8();
  v7 = *(*(v6 - 8) + 84);
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v7 <= v10)
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = *(*(v6 - 8) + 84);
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(*(v6 - 8) + 64);
  v14 = *(v9 + 80);
  v15 = *(v9 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v16 = ((v14 + ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14) + v15;
  v17 = 8 * v16;
  if (v16 > 3)
  {
    goto LABEL_10;
  }

  v20 = ((a2 - v12 + ~(-1 << v17)) >> v17) + 1;
  if (HIWORD(v20))
  {
    v18 = *(a1 + v16);
    if (v18)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v20 <= 0xFF)
    {
      if (v20 < 2)
      {
        goto LABEL_28;
      }

LABEL_10:
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_28;
      }

LABEL_18:
      v21 = (v18 - 1) << v17;
      if (v16 > 3)
      {
        v21 = 0;
      }

      if (v16)
      {
        if (v16 <= 3)
        {
          v22 = v16;
        }

        else
        {
          v22 = 4;
        }

        switch(v22)
        {
          case 2:
            v23 = *a1;
            break;
          case 3:
            v23 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v23 = *a1;
            break;
          default:
            v23 = *a1;
            break;
        }
      }

      else
      {
        v23 = 0;
      }

      return v12 + (v23 | v21) + 1;
    }

    v18 = *(a1 + v16);
    if (*(a1 + v16))
    {
      goto LABEL_18;
    }
  }

LABEL_28:
  if (v7 == v12)
  {
    v24 = a1;
    v10 = *(*(v6 - 8) + 84);
    v8 = v6;
LABEL_35:

    return sub_1C44157D4(v24, v10, v8);
  }

  v25 = ((a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  if ((v11 & 0x80000000) != 0)
  {
    v24 = (v25 + v14 + 8) & ~v14;
    goto LABEL_35;
  }

  v26 = *v25;
  if (v26 >= 0xFFFFFFFF)
  {
    LODWORD(v26) = -1;
  }

  return (v26 + 1);
}

void sub_1C470299C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1C4EF9CD8();
  v9 = *(a4 + 16);
  v10 = *(v9 - 8);
  v11 = *(*(v8 - 8) + 84);
  v12 = *(v10 + 84);
  if (v11 <= v12)
  {
    v13 = *(v10 + 84);
  }

  else
  {
    v13 = *(*(v8 - 8) + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(*(v8 - 8) + 64);
  v16 = *(v10 + 80);
  v17 = ((v16 + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v16) + *(v10 + 64);
  v18 = 8 * v17;
  if (a3 <= v14)
  {
    v19 = 0;
  }

  else if (v17 <= 3)
  {
    v22 = ((a3 - v14 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22 >= 2)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v14 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v17] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        return;
      case 2:
        *&a1[v17] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        return;
      case 3:
LABEL_51:
        __break(1u);
        return;
      case 4:
        *&a1[v17] = 0;
        goto LABEL_29;
      default:
LABEL_29:
        if (!a2)
        {
          return;
        }

LABEL_30:
        if (v11 == v14)
        {
          v25 = a1;
          v26 = a2;
          v12 = v11;
          v9 = v8;
        }

        else
        {
          v27 = (&a1[v15 + 7] & 0xFFFFFFFFFFFFFFF8);
          if ((v13 & 0x80000000) == 0)
          {
            if ((a2 & 0x80000000) != 0)
            {
              v28 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v28 = (a2 - 1);
            }

            *v27 = v28;
            return;
          }

          v25 = (v27 + v16 + 8) & ~v16;
          v26 = a2;
        }

        sub_1C440BAA8(v25, v26, v12, v9);
        break;
    }
  }

  else
  {
    v20 = ~v14 + a2;
    if (v17 < 4)
    {
      v21 = (v20 >> v18) + 1;
      if (v17)
      {
        v24 = v20 & ~(-1 << v18);
        bzero(a1, v17);
        if (v17 == 3)
        {
          *a1 = v24;
          a1[2] = BYTE2(v24);
        }

        else if (v17 == 2)
        {
          *a1 = v24;
        }

        else
        {
          *a1 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        a1[v17] = v21;
        break;
      case 2:
        *&a1[v17] = v21;
        break;
      case 3:
        goto LABEL_51;
      case 4:
        *&a1[v17] = v21;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1C4702C80()
{
  result = qword_1EC0BBB38[0];
  if (!qword_1EC0BBB38[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EC0BBB38);
  }

  return result;
}

unint64_t sub_1C4702CDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_1C4702C80();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C4702D64(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_1C44157D4(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C4702EA0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            sub_1C440BAA8(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C470306C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1C4703358;

  return sub_1C46F9B2C(a2);
}

uint64_t sub_1C4703104()
{
  sub_1C43FCF70();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C4400200(v1);

  return v4(v3);
}

uint64_t sub_1C4703194(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1C4703358;

  return sub_1C46F9CDC(a2);
}

uint64_t sub_1C470322C()
{
  sub_1C43FCF70();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C4400200(v1);

  return v4(v3);
}

uint64_t sub_1C47032BC()
{
  sub_1C43FCF70();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C4400200(v1);

  return v4(v3);
}

uint64_t sub_1C470336C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v38 = a5;
  sub_1C456902C(&qword_1EC0BBBF8, &qword_1C4F5C950);
  v7 = (type metadata accessor for ViewDatabaseArtifact.Property() - 8);
  v8 = *(*v7 + 72);
  v9 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C4F0F830;
  v11 = (v10 + v9);
  v12 = v11 + v7[7];
  sub_1C4EFBE08();
  *v11 = 0x7954797469746E65;
  v11[1] = 0xEA00000000006570;
  v13 = (v11 + v8);
  v14 = v11 + v8 + v7[7];
  sub_1C4EFBDD8();
  *v13 = 0xD000000000000010;
  v13[1] = 0x80000001C4F855E0;
  v15 = (v11 + 2 * v8);
  v16 = v15 + v7[7];
  sub_1C4EFBDC8();
  *v15 = 0xD000000000000011;
  v15[1] = 0x80000001C4F930C0;
  v17 = (v11 + 3 * v8);
  v18 = v17 + v7[7];
  sub_1C4EFBDF8();
  *v17 = 0x6176656C65527369;
  v17[1] = 0xEA0000000000746ELL;
  v19 = (v11 + 4 * v8);
  v20 = v19 + v7[7];
  sub_1C4EFBE08();
  *v19 = 0xD000000000000014;
  v19[1] = 0x80000001C4F930E0;
  v21 = (v11 + 5 * v8);
  v22 = v21 + v7[7];
  sub_1C4EFBDD8();
  *v21 = 0x6D614E7972657571;
  v21[1] = 0xE900000000000065;
  v23 = (v11 + 6 * v8);
  v24 = v23 + v7[7];
  sub_1C4EFBDD8();
  *v23 = 0x617461646174656DLL;
  v23[1] = 0xE800000000000000;
  v30 = a2;
  v31 = a3;

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](0x657275746165665FLL, 0xED000073656D614ELL);
  if (*(a4 + 16))
  {

    *a6 = a2;
    a6[1] = a3;
    a6[2] = a2;
    a6[3] = a3;
    a6[4] = a1;
    a6[5] = a4;
    a6[6] = v38;
    a6[7] = v10;
  }

  else
  {
    sub_1C4707FB8();
    swift_allocError();
    swift_willThrow();

    v30 = a2;
    v31 = a3;
    v32 = a2;
    v33 = a3;
    v34 = a1;
    v35 = a4;
    v36 = v38;
    v37 = v10;
    return sub_1C46EEFDC(&v30);
  }

  return result;
}

uint64_t sub_1C4703650()
{
  v1 = v0;
  v2 = *(v0 + 48);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = *(v0 + 48);
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  for (i = 0; v5; result = sub_1C4707ED4(v18))
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = sub_1C4707E5C(*(v2 + 56) + 224 * (v11 | (v10 << 6)), v18);
    v13 = *(v19 + 16);
    MEMORY[0x1EEE9AC00](v12);
    v17 = v18;

    sub_1C446C37C(sub_1C4707EB8, v16);
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      v15 = *(*(v1 + 32) + 16);
      MEMORY[0x1EEE9AC00](v14);
      v17 = v1;
      return sub_1C446C37C(sub_1C4707F28, v16);
    }

    v5 = *(v2 + 64 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C47037F4(uint64_t a1, const char **a2)
{
  v4 = sub_1C4EFB768();
  v5 = *(v4 - 8);
  v57 = v4;
  v58 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v52 - v9;
  v60 = sub_1C4EFB078();
  v63 = *(v60 - 8);
  v11 = *(v63 + 8);
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C4EFB0B8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v52 - v19;
  v21 = *a2;
  v22 = a2[1];
  sub_1C4EFB058();
  v64 = a2;
  v59 = v21;
  v61 = a1;
  v23 = v67;
  sub_1C4EFBFC8();
  if (v23)
  {
    return (*(v14 + 8))(v20, v13);
  }

  v67 = v17;
  v53 = v10;
  v55 = a2;
  v25 = *(v14 + 8);
  v26 = v13;
  (v25)(v20, v13);
  sub_1C456902C(&unk_1EC0BCA90, &unk_1C4F111C0);
  v27 = *(v63 + 9);
  v28 = (*(v63 + 80) + 32) & ~*(v63 + 80);
  v29 = swift_allocObject();
  v54 = xmmword_1C4F0D130;
  *(v29 + 16) = xmmword_1C4F0D130;
  sub_1C4EFB058();
  *&v65[0] = v29;
  sub_1C4707F60();
  sub_1C456902C(&unk_1EC0BCAA0, &unk_1C4F22520);
  sub_1C4401CBC(&qword_1EDDFA5C0, &unk_1EC0BCAA0, &unk_1C4F22520);
  v30 = v60;
  sub_1C4F020C8();
  v66 = 0;
  memset(v65, 0, sizeof(v65));
  sub_1C4EFBFB8();
  v59 = v25;
  v31 = v26;
  sub_1C4420C3C(v65, &qword_1EC0C5040, &qword_1C4F0F950);
  (*(v63 + 1))(v62, v30);
  v32 = v55;
  v33 = v55[2];
  v34 = v55[3];
  v35 = v67;
  sub_1C4EFB058();
  sub_1C4EFBFC8();
  (v59)(v35, v31);
  strcpy(v65, "DELETE FROM ");
  BYTE13(v65[0]) = 0;
  HIWORD(v65[0]) = -5120;
  MEMORY[0x1C6940010](v33, v34);
  v36 = v53;
  sub_1C4EFB758();
  sub_1C4EFBFF8();
  v60 = v33;
  v67 = 0;
  v37 = v58 + 8;
  v62 = *(v58 + 8);
  (v62)(v36, v57);

  v38 = v32[5];
  v39 = v38 + 56;
  v40 = 1 << v38[32];
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & *(v38 + 7);
  v43 = (v40 + 63) >> 6;
  v59 = " where entityType in (";
  v63 = v38;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v44 = 0;
  v58 = v37;
  if (v42)
  {
    while (1)
    {
      v45 = v44;
LABEL_10:
      v46 = (*(v63 + 6) + ((v45 << 10) | (16 * __clz(__rbit64(v42)))));
      v47 = *v46;
      v48 = v46[1];
      *&v65[0] = 0;
      *(&v65[0] + 1) = 0xE000000000000000;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F02248();

      strcpy(v65, "INSERT INTO ");
      BYTE13(v65[0]) = 0;
      HIWORD(v65[0]) = -5120;
      MEMORY[0x1C6940010](v60, v34);
      MEMORY[0x1C6940010](0xD000000000000016, v59 | 0x8000000000000000);
      sub_1C456902C(&qword_1EC0B9AA8, &qword_1C4F11010);
      v49 = swift_allocObject();
      *(v49 + 16) = v54;
      *(v49 + 32) = 1701667182;
      *(v49 + 40) = 0xE400000000000000;
      *(v49 + 72) = MEMORY[0x1E69E6158];
      *(v49 + 80) = MEMORY[0x1E69A0138];
      *(v49 + 48) = v47;
      *(v49 + 56) = v48;
      v50 = v56;
      sub_1C4EFB738();
      v51 = v67;
      sub_1C4EFBFF8();
      if (v51)
      {
        break;
      }

      v67 = 0;
      v42 &= v42 - 1;
      (v62)(v50, v57);

      v44 = v45;
      if (!v42)
      {
        goto LABEL_7;
      }
    }

    (v62)(v50, v57);
  }

  else
  {
LABEL_7:
    while (1)
    {
      v45 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      if (v45 >= v43)
      {
      }

      v42 = *&v39[8 * v45];
      ++v44;
      if (v42)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C4703F48(uint64_t a1, uint64_t a2)
{
  v51 = a1;
  v3 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v49 = &v47 - v5;
  v6 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v47 - v8;
  v50 = type metadata accessor for ViewDatabaseArtifact.Property();
  v10 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a2;
  v14 = *(a2 + 56);
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = v14 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v17 = *(v11 + 72);
    do
    {
      sub_1C47080D8(v16, v13, type metadata accessor for ViewDatabaseArtifact.Property);
      v19 = *v13;
      v18 = *(v13 + 1);
      v20 = *v13 == 0x6D614E7972657571 && v18 == 0xE900000000000065;
      if (v20 || (v21 = *v13, v22 = *(v13 + 1), (sub_1C4F02938() & 1) != 0) || (v19 == 0x617461646174656DLL ? (v23 = v18 == 0xE800000000000000) : (v23 = 0), v23 || (sub_1C4F02938() & 1) != 0))
      {
        v24 = *(v50 + 20);
        v25 = sub_1C4EFBE38();
        (*(*(v25 - 8) + 16))(v9, &v13[v24], v25);
        sub_1C440BAA8(v9, 0, 1, v25);
        sub_1C4EFB498();

        v26 = v9;
        v27 = &qword_1EC0B9BB8;
        v28 = &unk_1C4F1DC60;
      }

      else
      {
        v29 = *(v50 + 20);
        v30 = sub_1C4EFBE38();
        (*(*(v30 - 8) + 16))(v9, &v13[v29], v30);
        sub_1C440BAA8(v9, 0, 1, v30);
        sub_1C4EFB498();
        sub_1C4420C3C(v9, &qword_1EC0B9BB8, &unk_1C4F1DC60);
        v31 = sub_1C4EFBF38();
        v32 = v49;
        sub_1C440BAA8(v49, 1, 1, v31);
        sub_1C4EFB538();

        v26 = v32;
        v27 = &unk_1EC0BCAB0;
        v28 = &unk_1C4F111A0;
      }

      sub_1C4420C3C(v26, v27, v28);
      sub_1C443CD20(v13, type metadata accessor for ViewDatabaseArtifact.Property);
      v16 += v17;
      --v15;
    }

    while (v15);
  }

  v33 = *(v48 + 40);
  v34 = 1 << *(v33 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(v33 + 56);
  v37 = (v34 + 63) >> 6;
  v38 = *(v48 + 40);
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  for (i = 0; v36; result = sub_1C4420C3C(v9, &qword_1EC0B9BB8, &unk_1C4F1DC60))
  {
    v41 = i;
LABEL_25:
    v42 = __clz(__rbit64(v36));
    v36 &= v36 - 1;
    v43 = (*(v33 + 48) + ((v41 << 10) | (16 * v42)));
    v44 = *v43;
    v45 = v43[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFBDE8();
    v46 = sub_1C4EFBE38();
    sub_1C440BAA8(v9, 0, 1, v46);
    sub_1C4EFB498();
  }

  while (1)
  {
    v41 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v41 >= v37)
    {
    }

    v36 = *(v33 + 56 + 8 * v41);
    ++i;
    if (v36)
    {
      i = v41;
      goto LABEL_25;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4704438()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v11 - v2;
  v4 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1C4EFBDD8();
  v8 = sub_1C4EFBE38();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();
  sub_1C4420C3C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v9 = sub_1C4EFBF38();
  sub_1C440BAA8(v3, 1, 1, v9);
  sub_1C4EFB538();

  return sub_1C4420C3C(v3, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

uint64_t sub_1C47045B0@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v5 = sub_1C4EFB768();
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v13 = v12 - v11;
  sub_1C4F02248();

  *&v16[0] = 0xD000000000000016;
  *(&v16[0] + 1) = 0x80000001C4F94850;
  MEMORY[0x1C6940010](*a1, a1[1]);
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  sub_1C4EFB758();
  sub_1C4EFB998();
  if (v2)
  {

    (*(v8 + 8))(v13, v5);
    return sub_1C4420C3C(v16, &unk_1EC0BC770, &qword_1C4F10DC0);
  }

  else
  {

    (*(v8 + 8))(v13, v5);
    result = sub_1C4420C3C(v16, &unk_1EC0BC770, &qword_1C4F10DC0);
    if (v19)
    {
      v15 = 0;
    }

    else
    {
      v15 = v18;
    }

    *a2 = v15;
  }

  return result;
}

void sub_1C4704784()
{
  sub_1C43FE96C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v40 = sub_1C4EFDAB8();
  v7 = sub_1C43FCDF8(v40);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v39 = v13 - v12;
  v14 = sub_1C4EFB768();
  v15 = sub_1C43FCDF8(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  sub_1C4F02248();

  strcpy(v41, "SELECT * FROM ");
  HIBYTE(v41[1]) = -18;
  MEMORY[0x1C6940010](*v4, v4[1]);
  MEMORY[0x1C6940010](0xD000000000000016, 0x80000001C4F94870);
  v18 = *(v2 + 16);
  sub_1C4A728F8(63, 0xE100000000000000, v18);
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C4401CBC(&qword_1EDDFCED0, &unk_1EC0B9620, &unk_1C4F0E870);
  v19 = sub_1C4F01048();
  v21 = v20;

  MEMORY[0x1C6940010](v19, v21);

  MEMORY[0x1C6940010](41, 0xE100000000000000);
  if (v18)
  {
    v36 = v6;
    v41[0] = MEMORY[0x1E69E7CC0];
    sub_1C459CF48();
    v22 = v41[0];
    v24 = *(v9 + 16);
    v23 = v9 + 16;
    v25 = v2 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
    v37 = *(v23 + 56);
    v38 = v24;
    v26 = (v23 - 8);
    do
    {
      v27 = v23;
      v38(v39, v25, v40);
      v28 = sub_1C4EFDAA8();
      (*v26)(v39, v40);
      v41[0] = v22;
      v29 = *(v22 + 16);
      if (v29 >= *(v22 + 24) >> 1)
      {
        sub_1C459CF48();
        v22 = v41[0];
      }

      *(v22 + 16) = v29 + 1;
      *(v22 + 8 * v29 + 32) = v28;
      v25 += v37;
      --v18;
      v23 = v27;
    }

    while (v18);
    v6 = v36;
  }

  sub_1C4EFBC58();
  sub_1C456902C(&qword_1EC0B8EB8, &unk_1C4F0E920);
  sub_1C4401CBC(&qword_1EDDDBBE0, &qword_1EC0B8EB8, &unk_1C4F0E920);
  sub_1C4EFB798();
  memset(v41, 0, 40);
  v30 = sub_1C4EFBC18();
  if (v0)
  {

    sub_1C4420C3C(v41, &unk_1EC0BC770, &qword_1C4F10DC0);
    v31 = sub_1C43FEF08();
    v32(v31);
  }

  else
  {
    v33 = v30;

    sub_1C4420C3C(v41, &unk_1EC0BC770, &qword_1C4F10DC0);
    v34 = sub_1C43FEF08();
    v35(v34);
    *v6 = v33;
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4704BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C4704BE0, 0, 0);
}

uint64_t sub_1C4704BE0()
{
  v1 = *(v0 + 56);
  sub_1C456902C(&qword_1EC0BBC18, &qword_1C4F22548);
  v2 = *(*(*(v1 + 32) + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool);
  v3 = swift_task_alloc();
  v4 = *(v0 + 24);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;

  *(v0 + 64) = sub_1C4EFF788();

  v5 = *(v0 + 40);
  v6 = sub_1C456902C(&qword_1EC0BB850, &qword_1C4F21700);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_1C4401CBC(&qword_1EC0BBC20, &qword_1EC0BBC18, &qword_1C4F22548);

  v9 = sub_1C4EFC058();
  *(v0 + 72) = v9;
  v15 = (v5 + *v5);
  v10 = v5[1];
  v11 = swift_task_alloc();
  *(v0 + 80) = v11;
  *v11 = v0;
  v11[1] = sub_1C4704E24;
  v12 = *(v0 + 48);
  v13 = *(v0 + 16);

  return v15(v13, v9);
}

uint64_t sub_1C4704E24()
{
  sub_1C43FBCD4();
  v3 = *(*v1 + 80);
  v2 = *v1;
  sub_1C43FBDAC();
  *v4 = v2;
  *(v2 + 88) = v0;

  if (v0)
  {
    v5 = sub_1C4704F90;
  }

  else
  {
    v6 = *(v2 + 72);

    v5 = sub_1C4704F34;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C4704F34()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 64);

  sub_1C43FBDA0();

  return v2();
}

uint64_t sub_1C4704F90()
{
  sub_1C43FBCD4();
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[11];
  sub_1C43FBDA0();

  return v4();
}

uint64_t sub_1C4704FF4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v72 = a4;
  v68 = a3;
  v73 = a1;
  v65 = sub_1C4EFDAB8();
  v64 = *(v65 - 8);
  v5 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v63 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C456902C(&qword_1EC0BBC08, &qword_1C4F22530);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v70 = &v59 - v9;
  v71 = type metadata accessor for EntityRelevanceHistoricalFeatureDatabaseTable.EntityTypeQuery(0);
  v10 = *(*(v71 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v71);
  v67 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v66 = &v59 - v13;
  v14 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v59 - v17;
  v69 = sub_1C456902C(&qword_1EC0B9AC8, &unk_1C4F10E00);
  v84 = *(v69 - 8);
  v19 = *(v84 + 64);
  v20 = MEMORY[0x1EEE9AC00](v69);
  v62 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v60 = &v59 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v59 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v59 - v27;
  v61 = a2;
  v30 = *a2;
  v29 = a2[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD18();
  v31 = sub_1C4EFBD38();
  v82 = v31;
  v83 = MEMORY[0x1E69A0050];
  sub_1C4422F90(v81);
  sub_1C4EFBD48();
  sub_1C4EF9AD8();
  *(&v79 + 1) = MEMORY[0x1E69E63B0];
  v80 = MEMORY[0x1E69A0160];
  *&v78 = v32;
  v33 = sub_1C4EFB298();
  v76 = v33;
  v77 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v75);
  sub_1C4EFBB48();
  sub_1C440962C(&v78);
  sub_1C440962C(v81);
  sub_1C4EFBCD8();
  (*(v15 + 8))(v18, v14);
  sub_1C440962C(v75);
  v34 = v31;
  v82 = v31;
  v83 = MEMORY[0x1E69A0050];
  sub_1C4422F90(v81);
  sub_1C4EFBD48();
  v35 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v36 = v68 + *(v35 + 36);
  sub_1C4EF9AD8();
  *(&v79 + 1) = MEMORY[0x1E69E63B0];
  v80 = MEMORY[0x1E69A0160];
  v37 = v69;
  *&v78 = v38;
  v68 = v33;
  v76 = v33;
  v77 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v75);
  sub_1C4EFB818();
  sub_1C440962C(&v78);
  sub_1C440962C(v81);
  v39 = sub_1C4401CBC(&qword_1EC0B9AD0, &qword_1EC0B9AC8, &unk_1C4F10E00);
  sub_1C4EFB438();
  v40 = v70;
  v41 = *(v84 + 8);
  v41(v26, v37);
  sub_1C440962C(v75);
  sub_1C470804C(v72, v40);
  if (sub_1C44157D4(v40, 1, v71) == 1)
  {
    sub_1C4420C3C(v40, &qword_1EC0BBC08, &qword_1C4F22530);
  }

  else
  {
    v72 = v39;
    v42 = v66;
    sub_1C4708138(v40, v66, type metadata accessor for EntityRelevanceHistoricalFeatureDatabaseTable.EntityTypeQuery);
    v33 = v67;
    sub_1C47080D8(v42, v67, type metadata accessor for EntityRelevanceHistoricalFeatureDatabaseTable.EntityTypeQuery);
    v43 = sub_1C456902C(&qword_1EC0BBC10, &qword_1C4F22538);
    if (sub_1C44157D4(v33, 1, v43) == 1)
    {
      v82 = v34;
      v83 = MEMORY[0x1E69A0050];
      sub_1C4422F90(v81);
      sub_1C4EFBD48();
      v80 = 0;
      v78 = 0u;
      v79 = 0u;
      v76 = v68;
      v77 = MEMORY[0x1E699FE60];
      sub_1C4422F90(v75);
      sub_1C4EFBB28();
      sub_1C4420C3C(&v78, &qword_1EC0C5040, &qword_1C4F0F950);
      sub_1C440962C(v81);
      sub_1C4EFB438();
      sub_1C443CD20(v42, type metadata accessor for EntityRelevanceHistoricalFeatureDatabaseTable.EntityTypeQuery);
      v41(v28, v37);
      sub_1C440962C(v75);
      (*(v84 + 32))(v28, v26, v37);
    }

    else
    {
      v44 = (v67 + *(v43 + 48));
      v45 = *v44;
      v46 = v44[1];
      (*(v64 + 32))(v63);
      v82 = v34;
      v47 = MEMORY[0x1E69A0050];
      v83 = MEMORY[0x1E69A0050];
      sub_1C4422F90(v81);
      sub_1C4EFBD48();
      v48 = sub_1C4EFDAA8();
      *(&v79 + 1) = MEMORY[0x1E69E6530];
      v80 = MEMORY[0x1E69A0178];
      *&v78 = v48;
      v76 = v68;
      v77 = MEMORY[0x1E699FE60];
      sub_1C4422F90(v75);
      sub_1C4EFBB28();
      sub_1C4420C3C(&v78, &qword_1EC0C5040, &qword_1C4F0F950);
      sub_1C440962C(v81);
      sub_1C4EFB438();
      sub_1C440962C(v75);
      v82 = v34;
      v83 = v47;
      sub_1C4422F90(v81);
      sub_1C4EFBD48();
      if (v46)
      {
        v49 = MEMORY[0x1E69A0130];
        v50 = MEMORY[0x1E69E6158];
      }

      else
      {
        v45 = 0;
        v50 = 0;
        v49 = 0;
        *&v79 = 0;
      }

      v51 = v66;
      *&v78 = v45;
      *(&v78 + 1) = v46;
      *(&v79 + 1) = v50;
      v80 = v49;
      v76 = v68;
      v77 = MEMORY[0x1E699FE60];
      sub_1C4422F90(v75);
      sub_1C4EFBB28();
      sub_1C4420C3C(&v78, &qword_1EC0C5040, &qword_1C4F0F950);
      sub_1C440962C(v81);
      v33 = v60;
      v52 = v62;
      sub_1C4EFB438();
      v41(v52, v37);
      (*(v64 + 8))(v63, v65);
      sub_1C443CD20(v51, type metadata accessor for EntityRelevanceHistoricalFeatureDatabaseTable.EntityTypeQuery);
      v41(v28, v37);
      sub_1C440962C(v75);
      (*(v84 + 32))(v28, v33, v37);
    }
  }

  sub_1C4401CBC(&qword_1EDDFE850, &qword_1EC0B9AC8, &unk_1C4F10E00);
  v53 = v74;
  sub_1C4EFB028();
  if (!v53)
  {
    v54 = swift_allocObject();
    v55 = v61;
    v56 = v61[1];
    v54[1] = *v61;
    v54[2] = v56;
    v57 = *(v55 + 48);
    v54[3] = *(v55 + 32);
    v54[4] = v57;
    sub_1C46F4E90(v55, v75);
    sub_1C4EFC078();
    sub_1C456902C(&qword_1EC0BB888, &qword_1C4F21730);
    v33 = sub_1C4EFBD78();
  }

  v41(v28, v37);
  return v33;
}

uint64_t sub_1C4705AC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v102 = a3;
  v95 = type metadata accessor for EntityRelevanceInteractionGroundTruth();
  v5 = *(*(v95 - 8) + 64);
  MEMORY[0x1EEE9AC00](v95);
  v96 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1C4EF9CD8();
  v93 = *(v94 - 8);
  v7 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v9 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C456902C(&qword_1EC0B9AA0, &unk_1C4F10DA0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v97 = &v91 - v12;
  v13 = sub_1C4EFDAB8();
  v98 = *(v13 - 8);
  v99 = v13;
  v14 = *(v98 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v92 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v100 = &v91 - v17;
  v18 = *a1;
  v19 = *(a2 + 40);
  v20 = v19 + 56;
  v21 = 1 << *(v19 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v19 + 56);
  v24 = (v21 + 63) >> 6;
  v107 = v19;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v25 = 0;
  v26 = MEMORY[0x1E69E7CC8];
  v103 = v24;
  v104 = v20;
  v105 = v18;
  v106 = v9;
  if (v23)
  {
    while (1)
    {
LABEL_8:
      v28 = (v107[6] + ((v25 << 10) | (16 * __clz(__rbit64(v23)))));
      v29 = *v28;
      v30 = v28[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v31 = COERCE_DOUBLE(sub_1C493CC98());
      if (v32)
      {
        v31 = NAN;
      }

      v33 = v31 == INFINITY ? 0.0 : v31;
      v34 = [objc_opt_self() featureValueWithDouble_];
      v110 = sub_1C4577DBC();
      *&v109 = v34;
      sub_1C44482AC(&v109, v108);
      swift_isUniquelyReferenced_nonNull_native();
      v111 = v26;
      v35 = sub_1C445FAA8(v29, v30);
      if (__OFADD__(v26[2], (v36 & 1) == 0))
      {
        break;
      }

      v37 = v35;
      v38 = v36;
      sub_1C456902C(&unk_1EC0C47F0, &unk_1C4F22550);
      if (sub_1C4F02458())
      {
        v39 = sub_1C445FAA8(v29, v30);
        if ((v38 & 1) != (v40 & 1))
        {
          sub_1C4F029F8();
          __break(1u);
          result = swift_unexpectedError();
          __break(1u);
          return result;
        }

        v37 = v39;
      }

      v26 = v111;
      if (v38)
      {
        v41 = (v111[7] + 32 * v37);
        sub_1C440962C(v41);
        sub_1C44482AC(v108, v41);
      }

      else
      {
        v111[(v37 >> 6) + 8] |= 1 << v37;
        v42 = (v26[6] + 16 * v37);
        *v42 = v29;
        v42[1] = v30;
        sub_1C44482AC(v108, (v26[7] + 32 * v37));
        v43 = v26[2];
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_39;
        }

        v26[2] = v45;
      }

      v23 &= v23 - 1;
      v24 = v103;
      v20 = v104;
      if (!v23)
      {
        goto LABEL_4;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    swift_once();
    goto LABEL_25;
  }

  while (1)
  {
LABEL_4:
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    if (v27 >= v24)
    {
      break;
    }

    v23 = *(v20 + 8 * v27);
    ++v25;
    if (v23)
    {
      v25 = v27;
      goto LABEL_8;
    }
  }

  v46 = objc_allocWithZone(MEMORY[0x1E695FE48]);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v47 = v101;
  v48 = sub_1C4701E88();
  v25 = v47;
  if (v47)
  {

    if (qword_1EDDFA668 != -1)
    {
      goto LABEL_40;
    }

LABEL_25:
    v49 = sub_1C4F00978();
    sub_1C442B738(v49, qword_1EDE2DDE0);
    v50 = v25;
    v51 = sub_1C4F00968();
    v52 = sub_1C4F01CD8();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v53 = 138412290;
      v55 = v25;
      v56 = _swift_stdlib_bridgeErrorToNSError();
      *(v53 + 4) = v56;
      *v54 = v56;
      _os_log_impl(&dword_1C43F8000, v51, v52, "EntityRelevanceHistoricalFeatureDatabaseTable: Unable to deserialize feature vector from row: %@", v53, 0xCu);
      sub_1C4420C3C(v54, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v54, -1, -1);
      MEMORY[0x1C6942830](v53, -1, -1);
    }

    else
    {
    }

    v75 = v102;
    v76 = sub_1C456902C(&qword_1EC0BB888, &qword_1C4F21730);
    return sub_1C440BAA8(v75, 1, 1, v76);
  }

  v57 = v48;
  sub_1C493DF34();
  v59 = v58;
  v107 = v57;
  sub_1C493DD18();
  v103 = v60;
  v104 = v61;

  v62 = v97;
  sub_1C4EFDA98();
  v63 = v99;
  v64 = sub_1C44157D4(v62, 1, v99);
  v65 = v98;
  if (v64 == 1)
  {

    sub_1C4420C3C(v62, &qword_1EC0B9AA0, &unk_1C4F10DA0);
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v66 = sub_1C4F00978();
    sub_1C442B738(v66, qword_1EDE2DDE0);
    v67 = sub_1C4F00968();
    v68 = sub_1C4F01CD8();
    v69 = os_log_type_enabled(v67, v68);
    v70 = v107;
    if (v69)
    {
      v71 = swift_slowAlloc();
      *v71 = 134217984;
      *(v71 + 4) = v59;
      _os_log_impl(&dword_1C43F8000, v67, v68, "EntityRelevanceHistoricalFeatureDatabaseTable: Unexpected BehaviorType value stored in database: %ld", v71, 0xCu);
      MEMORY[0x1C6942830](v71, -1, -1);
    }

    v72 = sub_1C456902C(&qword_1EC0BB888, &qword_1C4F21730);
    v73 = v102;
    v74 = 1;
  }

  else
  {
    v101 = *(v98 + 32);
    v101(v100, v62, v63);
    sub_1C493E370();
    sub_1C4EF9AC8();
    v78 = v92;
    (*(v65 + 16))(v92, v100, v63);
    sub_1C493DF34();
    v80 = v79;
    v81 = sub_1C493CA4C();
    v83 = v82;
    (*(v65 + 8))(v100, v63);
    v84 = v96;
    v101(v96, v78, v63);
    v85 = v95;
    v86 = (v84 + *(v95 + 20));
    v87 = v104;
    *v86 = v103;
    v86[1] = v87;
    *(v84 + *(v85 + 24)) = v80;
    v88 = (v84 + *(v85 + 28));
    *v88 = v81;
    v88[1] = v83;
    v89 = v102;
    (*(v93 + 32))(v102, v106, v94);
    v90 = sub_1C456902C(&qword_1EC0BB888, &qword_1C4F21730);
    *(v89 + *(v90 + 28)) = v107;
    sub_1C4708138(v84, v89 + *(v90 + 32), type metadata accessor for EntityRelevanceInteractionGroundTruth);
    v73 = v89;
    v74 = 0;
    v72 = v90;
  }

  return sub_1C440BAA8(v73, v74, 1, v72);
}