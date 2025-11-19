void sub_18AEE840C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_18AFCC5C4() - 8);
  if (*(v8 + 64) <= 8uLL)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(v8 + 64);
  }

  v10 = *(sub_18AFCBB54() - 8);
  v11 = *(v10 + 64);
  if ((v11 + 1) > 8)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 8;
  }

  v13 = *(*(a4 + 16) - 8);
  v14 = *(v13 + 84);
  v15 = *(v8 + 80);
  v16 = *(v10 + 80);
  v17 = *(v13 + 80);
  if (v14 <= 0xFE)
  {
    v18 = 254;
  }

  else
  {
    v18 = *(v13 + 84);
  }

  v19 = v15 & 0xF8 | 7;
  v20 = v16 & 0xF8 | 7;
  v21 = v9 + v20 + 1;
  v22 = v12 + 8;
  v23 = ((v17 + 15 + ((v22 + ((v21 + (((v15 & 0xF8) + 16) & ~v19)) & ~v20)) & 0xFFFFFFFFFFFFFFF8)) & ~v17) + *(v13 + 64);
  if (a3 <= v18)
  {
    v24 = 0;
  }

  else if (v23 <= 3)
  {
    v27 = ((a3 - v18 + ~(-1 << (8 * v23))) >> (8 * v23)) + 1;
    if (HIWORD(v27))
    {
      v24 = 4;
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
        v24 = v28;
      }

      else
      {
        v24 = 0;
      }
    }
  }

  else
  {
    v24 = 1;
  }

  if (v18 < a2)
  {
    v25 = ~v18 + a2;
    if (v23 < 4)
    {
      v26 = (v25 >> (8 * v23)) + 1;
      if (v23)
      {
        v29 = v25 & ~(-1 << (8 * v23));
        bzero(a1, v23);
        if (v23 != 3)
        {
          if (v23 == 2)
          {
            *a1 = v29;
            if (v24 > 1)
            {
LABEL_52:
              if (v24 == 2)
              {
                *&a1[v23] = v26;
              }

              else
              {
                *&a1[v23] = v26;
              }

              return;
            }
          }

          else
          {
            *a1 = v25;
            if (v24 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *a1 = v29;
        a1[2] = BYTE2(v29);
      }

      if (v24 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      bzero(a1, v23);
      *a1 = v25;
      v26 = 1;
      if (v24 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v24)
    {
      a1[v23] = v26;
    }

    return;
  }

  if (v24 > 1)
  {
    if (v24 != 2)
    {
      *&a1[v23] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v23] = 0;
  }

  else if (v24)
  {
    a1[v23] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v14 > 0xFE)
  {
    v30 = *(v13 + 56);

    v30((v17 + 15 + ((v22 + ((v21 + (&a1[v19 + 9] & ~v19)) & ~v20)) & 0xFFFFFFFFFFFFFFF8)) & ~v17, a2);
  }

  else if (a2 > 0xFE)
  {
    a1[8] = 0;
    *a1 = (a2 - 255);
  }

  else
  {
    a1[8] = -a2;
  }
}

uint64_t sub_18AEE87E4@<X0>(char *a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t (*a7)(void)@<X6>, uint64_t a8@<X8>)
{
  v14 = *a1;
  *a8 = swift_getKeyPath();
  *(a8 + 8) = 0;
  v15 = type metadata accessor for MacPushButton();
  v16 = v15[9];
  *(a8 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98);
  swift_storeEnumTagMultiPayload();
  v17 = v15[10];
  *(a8 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998520);
  swift_storeEnumTagMultiPayload();
  v18 = a8 + v15[11];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  *(a8 + v15[12]) = v14;
  *(a8 + v15[13]) = a2;
  *(a8 + v15[14]) = a3;
  *(a8 + v15[15]) = a4;
  *(a8 + v15[16]) = a5;
  *(a8 + v15[17]) = a6;
  return a7();
}

double sub_18AEE8948(uint64_t a1)
{
  v3 = sub_18AFCC474();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for ResolvedButtonBorderShape(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_18AED2E98(v10);
  LODWORD(v8) = v10[*(v8 + 28)];
  sub_18AED8AD4(v10);
  v11 = v1 + *(a1 + 44);
  v12 = *v11;
  v13 = *(v11 + 8);
  if (v8 == 2)
  {
    if (!v13)
    {

      sub_18AFCE024();
      v14 = sub_18AFCC7D4();
      sub_18AFCBA64();

      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AEB264C(v12, 0);
      (*(v4 + 8))(v6, v3);
      LOBYTE(v12) = v18[14];
    }

    v15 = &unk_18AFD4F70;
  }

  else
  {
    if (!v13)
    {

      sub_18AFCE024();
      v16 = sub_18AFCC7D4();
      sub_18AFCBA64();

      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AEB264C(v12, 0);
      (*(v4 + 8))(v6, v3);
      LOBYTE(v12) = v18[15];
    }

    v15 = &unk_18AFD4EF0;
  }

  return v15[v12];
}

double sub_18AEE8BB8(uint64_t a1)
{
  v3 = sub_18AFCC474();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for ResolvedButtonBorderShape(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_18AED2E98(v10);
  LODWORD(v8) = v10[*(v8 + 28)];
  sub_18AED8AD4(v10);
  v11 = v1 + *(a1 + 44);
  v12 = *v11;
  v13 = *(v11 + 8);
  if (v8 == 2)
  {
    if (!v13)
    {

      sub_18AFCE024();
      v14 = sub_18AFCC7D4();
      sub_18AFCBA64();

      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AEB264C(v12, 0);
      (*(v4 + 8))(v6, v3);
      LOBYTE(v12) = v18[14];
    }

    v15 = &unk_18AFD4F70;
  }

  else
  {
    if (!v13)
    {

      sub_18AFCE024();
      v16 = sub_18AFCC7D4();
      sub_18AFCBA64();

      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AEB264C(v12, 0);
      (*(v4 + 8))(v6, v3);
      LOBYTE(v12) = v18[15];
    }

    v15 = &unk_18AFD4F30;
  }

  return v15[v12];
}

uint64_t sub_18AEE8E28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v104 = type metadata accessor for ResolvedButtonBorderShape(0);
  MEMORY[0x1EEE9AC00](v104);
  v103 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998930);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v79 - v5;
  v108 = sub_18AFCC474();
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938);
  v111 = v9;
  v10 = sub_18AFCC044();
  v82 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v81 = &v79 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998CA0);
  v12 = sub_18AFCC044();
  v84 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v83 = &v79 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B48);
  sub_18AE95F54(&qword_1EA998B50, &qword_1EA998B48);
  v14 = sub_18AFCBDC4();
  v86 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v109 = &v79 - v15;
  v87 = v16;
  v17 = sub_18AFCC044();
  v88 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v110 = &v79 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B58);
  sub_18AE95F54(&qword_1EA998B60, &qword_1EA998B58);
  v90 = sub_18AFCBDC4();
  v89 = v17;
  v19 = sub_18AFCC624();
  v93 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v92 = &v79 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998C48);
  v95 = v19;
  v21 = sub_18AFCC044();
  v98 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v96 = &v79 - v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B70);
  v100 = v21;
  v102 = sub_18AFCC044();
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v97 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v99 = &v79 - v25;
  v26 = v112 + *(a1 + 44);
  v27 = *v26;
  v106 = *(v26 + 8);
  v91 = v8;
  v80 = v27;
  if (v106 != 1)
  {

    sub_18AFCE024();
    v28 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AEB264C(v27, 0);
    (*(v107 + 8))(v8, v108);
  }

  sub_18AFCC934();
  v29 = sub_18AFCC8F4();
  (*(*(v29 - 8) + 56))(v6, 1, 1, v29);
  sub_18AFCC954();
  sub_18AED2A4C(v6);
  sub_18AFCC8E4();

  v30 = *(a1 + 24);
  v31 = v112;
  v32 = v81;
  sub_18AFCCBA4();

  v33 = *(v31 + *(a1 + 52));
  v34 = *(v31 + *(a1 + 56));
  v129 = *(v31 + *(a1 + 48));
  v130 = v33;
  v131 = v34;
  v35 = sub_18AE95F54(&qword_1EA998950, &qword_1EA998938);
  v85 = v30;
  v127 = v30;
  v128 = v35;
  WitnessTable = swift_getWitnessTable();
  sub_18AEE9FBC();
  v37 = v83;
  sub_18AFCCB44();
  (*(v82 + 8))(v32, v10);
  v38 = sub_18AEE8948(a1);
  v39 = sub_18AEE8BB8(a1);
  v40 = *(v31 + *(a1 + 68));
  v41 = sub_18AE95F54(&qword_1EA998C98, &qword_1EA998CA0);
  v125 = WitnessTable;
  v126 = v41;
  v42 = swift_getWitnessTable();
  sub_18AFC385C(0, v40, v12, v42, v109, v38, v39);
  (*(v84 + 8))(v37, v12);
  sub_18AFCC8B4();
  v43 = *(v31 + *(a1 + 60));
  v44 = v108;
  v45 = v107;
  v46 = v91;
  v47 = v80;
  if ((v43 & 1) == 0 && !v106)
  {

    sub_18AFCE024();
    v48 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AEB264C(v47, 0);
    (*(v45 + 8))(v46, v44);
  }

  v123 = sub_18AE95F54(&qword_1EA998B78, &qword_1EA998B48);
  v124 = v42;
  v49 = v87;
  v50 = swift_getWitnessTable();
  v51 = v109;
  sub_18AFCCC24();
  (*(v86 + 8))(v51, v49);
  v94 = a1;
  if (v43)
  {
    if (v106)
    {
      v52 = v47;
    }

    else
    {

      sub_18AFCE024();
      v77 = sub_18AFCC7D4();
      sub_18AFCBA64();

      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AEB264C(v47, 0);
      (*(v45 + 8))(v46, v44);
      v52 = v129;
    }

    v54 = qword_18AFD5030[v52];
    if (!v106)
    {

      sub_18AFCE024();
      v78 = sub_18AFCC7D4();
      sub_18AFCBA64();

      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AEB264C(v47, 0);
      (*(v45 + 8))(v46, v44);
      LOBYTE(v47) = v129;
    }

    v53 = 0x4010000000000000;
    if (v47 > 3u)
    {
      if (v47 - 5 >= 2)
      {
        if (v47 != 4)
        {
LABEL_23:
          v53 = 0x4018000000000000;
          goto LABEL_10;
        }

        v53 = 0x402A000000000000;
      }
    }

    else if (v47 > 1u)
    {
      if (v47 == 2)
      {
        v53 = 0x401C000000000000;
      }

      else
      {
        v53 = 0x4022000000000000;
      }
    }

    else if (v47)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v53 = 0;
    v54 = 0;
  }

LABEL_10:
  v121 = v50;
  v122 = MEMORY[0x1E697E5D8];
  v109 = MEMORY[0x1E697E858];
  v55 = v89;
  v56 = swift_getWitnessTable();
  v57 = v92;
  v58 = v54;
  v59 = v110;
  sub_18AFC2B18(v58, v43 ^ 1, v53, v43 ^ 1, v55, v56, v92);
  v60 = (*(v88 + 8))(v59, v55);
  MEMORY[0x1EEE9AC00](v60);
  v61 = v112;
  v62 = v85;
  *(&v79 - 4) = v111;
  *(&v79 - 3) = v62;
  *(&v79 - 2) = v61;
  sub_18AFCDB44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998C40);
  v119 = sub_18AE95F54(&qword_1EA998B88, &qword_1EA998B58);
  v120 = v56;
  v117 = swift_getWitnessTable();
  v118 = v56;
  v63 = v95;
  v64 = swift_getWitnessTable();
  sub_18AEE7560();
  v65 = v96;
  sub_18AFCCA64();
  (*(v93 + 8))(v57, v63);
  v66 = v103;
  sub_18AED2E98(v103);
  v67 = sub_18AE95F54(&qword_1EA998CA8, &qword_1EA998C48);
  v115 = v64;
  v116 = v67;
  v68 = v100;
  v69 = swift_getWitnessTable();
  sub_18AED8A7C();
  v70 = v97;
  sub_18AFCCAC4();
  sub_18AED8AD4(v66);
  (*(v98 + 8))(v65, v68);
  v71 = sub_18AE95F54(&qword_1EA998BB8, &qword_1EA998B70);
  v113 = v69;
  v114 = v71;
  v72 = v102;
  v73 = swift_getWitnessTable();
  v74 = v99;
  sub_18AEADA5C(v70, v72, v73);
  v75 = *(v101 + 8);
  v75(v70, v72);
  sub_18AEADA5C(v74, v72, v73);
  return (v75)(v74, v72);
}

uint64_t sub_18AEE9E74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998C30);
  v5 = (v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  v8 = type metadata accessor for MacPushButton();
  sub_18AED2E98(v7);
  v9 = *(a1 + v8[13]);
  v10 = *(a1 + v8[16]);
  v7[v5[11]] = *(a1 + v8[12]);
  v7[v5[12]] = v9;
  v7[v5[13]] = v10;
  v11 = &v7[v5[14]];
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  if (*(a1 + v8[14]))
  {
    v12 = 1.0;
  }

  else
  {
    v12 = 0.0;
  }

  sub_18AEE79C8(v7, a2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998C40);
  *(a2 + *(result + 36)) = v12;
  return result;
}

unint64_t sub_18AEE9FBC()
{
  result = qword_1EA9994E8;
  if (!qword_1EA9994E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9994E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MacSizeClass(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MacSizeClass(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_18AEEA170()
{
  result = qword_1EA9994F0[0];
  if (!qword_1EA9994F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA9994F0);
  }

  return result;
}

uint64_t sub_18AEEA1C4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_18AEEA278(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  v12 = *(v7 + 64);
  if (v5 <= v8)
  {
    v13 = *(v7 + 84);
  }

  else
  {
    v13 = *(v4 + 84);
  }

  if (v13 <= 0xFE)
  {
    v13 = 254;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_29;
  }

  v15 = v12 + ((v10 + v11 + ((v9 + 2) & ~v9)) & ~v11) + 2;
  v16 = 8 * v15;
  if (v15 > 3)
  {
    goto LABEL_9;
  }

  v18 = ((v14 + ~(-1 << v16)) >> v16) + 1;
  if (HIWORD(v18))
  {
    v17 = *(a1 + v15);
    if (v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v18 <= 0xFF)
    {
      if (v18 < 2)
      {
        goto LABEL_29;
      }

LABEL_9:
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_29;
      }

LABEL_16:
      v19 = (v17 - 1) << v16;
      if (v15 > 3)
      {
        v19 = 0;
      }

      if (v12 + ((v10 + v11 + ((v9 + 2) & ~v9)) & ~v11) == -2)
      {
        v21 = 0;
      }

      else
      {
        if (v15 <= 3)
        {
          v20 = v12 + ((v10 + v11 + ((v9 + 2) & ~v9)) & ~v11) + 2;
        }

        else
        {
          v20 = 4;
        }

        if (v20 > 2)
        {
          if (v20 == 3)
          {
            v21 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v21 = *a1;
          }
        }

        else if (v20 == 1)
        {
          v21 = *a1;
        }

        else
        {
          v21 = *a1;
        }
      }

      return v13 + (v21 | v19) + 1;
    }

    v17 = *(a1 + v15);
    if (*(a1 + v15))
    {
      goto LABEL_16;
    }
  }

LABEL_29:
  v22 = (a1 + v9 + 2) & ~v9;
  if (v5 == v13)
  {
    return (*(v4 + 48))(v22);
  }

  v24 = (v22 + v10 + v11) & ~v11;
  if (v8 == v13)
  {
    return (*(v7 + 48))(v24, v8, v6);
  }

  v25 = *(v12 + v24 + 1);
  if (v25 < 2)
  {
    return 0;
  }

  return ((v25 + 2147483646) & 0x7FFFFFFF) + 1;
}

void sub_18AEEA4B0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 24) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  if (v7 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v6 + 84);
  }

  if (v14 <= 0xFE)
  {
    v14 = 254;
  }

  v15 = v13 + ((v11 + v12 + ((v10 + 2) & ~v10)) & ~v12) + 2;
  v16 = a3 >= v14;
  v17 = a3 - v14;
  if (v17 != 0 && v16)
  {
    if (v15 <= 3)
    {
      v21 = ((v17 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
      if (HIWORD(v21))
      {
        v18 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v18 = v22;
        }

        else
        {
          v18 = 0;
        }
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  if (v14 < a2)
  {
    v19 = ~v14 + a2;
    if (v15 < 4)
    {
      v20 = (v19 >> (8 * v15)) + 1;
      if (v13 + ((v11 + v12 + ((v10 + 2) & ~v10)) & ~v12) != -2)
      {
        v23 = v19 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_50:
              if (v18 == 2)
              {
                *&a1[v15] = v20;
              }

              else
              {
                *&a1[v15] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_50;
            }
          }

          goto LABEL_47;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_50;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_50;
      }
    }

LABEL_47:
    if (v18)
    {
      a1[v15] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v15] = 0;
  }

  else if (v18)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  v24 = &a1[v10 + 2] & ~v10;
  if (v7 == v14)
  {
    v25 = *(v6 + 56);

    v25(v24);
  }

  else
  {
    v26 = (v24 + v11 + v12) & ~v12;
    if (v9 == v14)
    {
      v27 = *(v8 + 56);

      v27(v26);
    }

    else
    {
      *(v26 + v13 + 1) = a2 + 1;
    }
  }
}

uint64_t sub_18AEEA820@<X0>(char *a1@<X8>)
{
  v2 = *(sub_18AFCC704() + 20);
  v3 = *MEMORY[0x1E697F468];
  v4 = sub_18AFCC534();
  (*(*(v4 - 8) + 104))(&a1[v2], v3, v4);
  result = sub_18AFCC674();
  *a1 = v6;
  *(a1 + 1) = v7;
  *(a1 + 2) = v8;
  *(a1 + 3) = v9;
  return result;
}

uint64_t sub_18AEEA91C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  v29 = a2;
  v28 = sub_18AFCC704();
  MEMORY[0x1EEE9AC00](v28);
  v27 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MacStepperButton();
  v4 = *(a1 + 16);
  sub_18AFCC044();
  v24 = *(a1 + 24);
  sub_18AFCC044();
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  sub_18AFCD1D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999578);
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  sub_18AFCD1F4();
  v22 = MEMORY[0x1E6981880];
  swift_getWitnessTable();
  v5 = sub_18AFCD1F4();
  v23 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999580);
  v8 = sub_18AFCC044();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - v13;
  v30 = v4;
  v31 = v24;
  v32 = *(v25 + 32);
  v33 = v26;
  sub_18AFCDB44();
  sub_18AFCD1E4();
  v15 = v27;
  sub_18AEEA820(v27);
  WitnessTable = swift_getWitnessTable();
  v17 = MEMORY[0x1E697FF20];
  sub_18AEEBE90(&qword_1EA999588, MEMORY[0x1E697FF20]);
  sub_18AFCCAC4();
  sub_18AEEBED8(v15, v17);
  (*(v23 + 8))(v7, v5);
  v18 = sub_18AE95F54(&qword_1EA999590, &qword_1EA999580);
  v34 = WitnessTable;
  v35 = v18;
  v19 = swift_getWitnessTable();
  sub_18AEADA5C(v11, v8, v19);
  v20 = *(v9 + 8);
  v20(v11, v8);
  sub_18AEADA5C(v14, v8, v19);
  return (v20)(v14, v8);
}

uint64_t sub_18AEEAD94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v20[0] = a5;
  v20[1] = a6;
  type metadata accessor for MacStepperButton();
  sub_18AFCC044();
  sub_18AFCC044();
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  sub_18AFCD1D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999578);
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  v10 = sub_18AFCD1F4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v20 - v15;
  v20[4] = a2;
  v20[5] = a3;
  v20[6] = a4;
  v20[7] = v20[0];
  v20[8] = a1;
  sub_18AFCDB44();
  sub_18AFCD1E4();
  WitnessTable = swift_getWitnessTable();
  sub_18AEADA5C(v13, v10, WitnessTable);
  v18 = *(v11 + 8);
  v18(v13, v10);
  sub_18AEADA5C(v16, v10, WitnessTable);
  return (v18)(v16, v10);
}

uint64_t sub_18AEEB014@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v43[3] = a5;
  v43[2] = a4;
  v44 = a1;
  v51 = a6;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999598) - 8;
  MEMORY[0x1EEE9AC00](v46);
  v11 = v43 - v10;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999578);
  MEMORY[0x1EEE9AC00](v49);
  v50 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v47 = v43 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v48 = v43 - v16;
  type metadata accessor for MacStepperButton();
  v43[1] = a2;
  sub_18AFCC044();
  v43[0] = a3;
  sub_18AFCC044();
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  v17 = sub_18AFCD1D4();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v52 = a2;
  v53 = a3;
  v23 = v43 - v22;
  v54 = a4;
  v55 = a5;
  v24 = v44;
  v56 = v44;
  sub_18AFCC5D4();
  sub_18AFCD1C4();
  WitnessTable = swift_getWitnessTable();
  sub_18AEADA5C(v20, v17, WitnessTable);
  v25 = *(v18 + 8);
  v25(v20, v17);
  v26 = *(sub_18AFCC184() + 20);
  v27 = *MEMORY[0x1E697F468];
  v28 = sub_18AFCC534();
  (*(*(v28 - 8) + 104))(&v11[v26], v27, v28);
  __asm { FMOV            V0.2D, #8.0 }

  *v11 = _Q0;
  LODWORD(v27) = sub_18AFCC6B4();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9995A0);
  *&v11[*(v34 + 52)] = v27;
  *&v11[*(v34 + 56)] = 256;
  sub_18AEEBBBC(v24);
  sub_18AFCDB44();
  sub_18AFCBCC4();
  v35 = &v11[*(v46 + 44)];
  v36 = v62;
  *v35 = v61;
  *(v35 + 1) = v36;
  *(v35 + 2) = v63;
  v37 = 0.0;
  if (*v24 != 3)
  {
    if (v24[1] == 3)
    {
      v37 = 0.0;
    }

    else
    {
      v37 = 1.0;
    }
  }

  v38 = v47;
  sub_18AE9A768(v11, v47, &qword_1EA999598);
  v39 = v49;
  *(v38 + *(v49 + 36)) = v37;
  v40 = v48;
  sub_18AE9A768(v38, v48, &qword_1EA999578);
  (*(v18 + 16))(v20, v23, v17);
  v60[0] = v20;
  v41 = v50;
  sub_18AEEBC74(v40, v50);
  v60[1] = v41;
  v59[0] = v17;
  v59[1] = v39;
  v57 = WitnessTable;
  v58 = sub_18AEEBCE4();
  sub_18AEB70B8(v60, 2uLL, v59);
  sub_18AEEBE28(v40);
  v25(v23, v17);
  sub_18AEEBE28(v41);
  return (v25)(v20, v17);
}

uint64_t sub_18AEEB584@<X0>(unsigned __int8 *a1@<X0>, uint64_t (*a2)(char *, uint64_t)@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v72 = a6;
  v11 = type metadata accessor for MacStepperButton();
  v73 = sub_18AFCC044();
  v69 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v71 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v58 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_18AFCC044();
  v66 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v74 = &v58 - v22;
  v23 = *a1;
  v65 = a2;
  v78 = a2;
  v79 = a3;
  v67 = a3;
  v64 = a4;
  v80 = a4;
  v81 = a5;
  v68 = a5;
  v24 = type metadata accessor for MacStepper();
  v25 = a1[v24[16]];
  v26 = a1[v24[17]];
  v27 = 1;
  if (v23 != 2)
  {
    v27 = a1[1] == 2;
  }

  *v17 = 0;
  v17[1] = v23;
  v17[2] = v25;
  v17[3] = v26;
  v17[4] = v27;
  v28 = v11[9];
  v63 = v25;
  v29 = v26;
  *&v17[v28] = swift_getKeyPath();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98);
  swift_storeEnumTagMultiPayload();
  v30 = &v17[v11[10]];
  *v30 = swift_getKeyPath();
  v30[8] = 0;
  v31 = &v17[v11[11]];
  *v31 = swift_getKeyPath();
  v31[8] = 0;
  v32 = v11[12];
  *&v17[v32] = swift_getKeyPath();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998148);
  swift_storeEnumTagMultiPayload();
  v33 = v24[14];
  v34 = sub_18AEEBE90(&qword_1EA9995C0, type metadata accessor for MacStepperButton);
  MEMORY[0x18CFEBFA0](&a1[v33], v11, v65, v34);
  sub_18AEEBED8(v17, type metadata accessor for MacStepperButton);
  v77[4] = v34;
  v77[5] = v64;
  WitnessTable = swift_getWitnessTable();
  sub_18AEADA5C(v20, v18, WitnessTable);
  v35 = v18;
  v59 = v18;
  v36 = v66;
  v37 = *(v66 + 8);
  v64 = v66 + 8;
  v65 = v37;
  v37(v20, v35);
  v38 = a1[1];
  v40 = *a1 == 2 || a1[1] == 2;
  *v17 = 1;
  v17[1] = v38;
  v17[2] = v63;
  v17[3] = v29;
  v17[4] = v40;
  v41 = v24;
  v42 = v11[9];
  *&v17[v42] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v43 = &v17[v11[10]];
  *v43 = swift_getKeyPath();
  v43[8] = 0;
  v44 = &v17[v11[11]];
  *v44 = swift_getKeyPath();
  v44[8] = 0;
  v45 = v11[12];
  *&v17[v45] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v46 = &a1[v41[15]];
  v47 = v71;
  MEMORY[0x18CFEBFA0](v46, v11, v67, v34);
  sub_18AEEBED8(v17, type metadata accessor for MacStepperButton);
  v77[2] = v34;
  v77[3] = v68;
  v48 = v73;
  v49 = swift_getWitnessTable();
  v50 = v70;
  sub_18AEADA5C(v47, v48, v49);
  v51 = v69;
  v52 = *(v69 + 8);
  v52(v47, v48);
  v53 = *(v36 + 16);
  v54 = v74;
  v55 = v59;
  v53(v20, v74, v59);
  v78 = v20;
  (*(v51 + 16))(v47, v50, v48);
  v79 = v47;
  v77[0] = v55;
  v77[1] = v48;
  v75 = WitnessTable;
  v76 = v49;
  sub_18AEB70B8(&v78, 2uLL, v77);
  v52(v50, v48);
  v56 = v65;
  v65(v54, v55);
  v52(v47, v48);
  return v56(v20, v55);
}

uint64_t sub_18AEEBC74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999578);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_18AEEBCE4()
{
  result = qword_1EA9995A8;
  if (!qword_1EA9995A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999578);
    sub_18AEEBD70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9995A8);
  }

  return result;
}

unint64_t sub_18AEEBD70()
{
  result = qword_1EA9995B0;
  if (!qword_1EA9995B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999598);
    sub_18AE95F54(&qword_1EA9995B8, &qword_1EA9995A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9995B0);
  }

  return result;
}

uint64_t sub_18AEEBE28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999578);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18AEEBE90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18AEEBED8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for MacStepperButton()
{
  result = qword_1EA9995C8;
  if (!qword_1EA9995C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18AEEBFAC()
{
  sub_18AEEC0EC(319, &qword_1EA998418, MEMORY[0x1E697F610]);
  if (v0 <= 0x3F)
  {
    sub_18AEB1A48(319, &qword_1EA997C38);
    if (v1 <= 0x3F)
    {
      sub_18AEB1A48(319, &qword_1EA997C28);
      if (v2 <= 0x3F)
      {
        sub_18AEEC0EC(319, &qword_1EA9986F8, MEMORY[0x1E697DBD0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_18AEEC0EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_18AFCBB64();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_18AEEC154()
{
  result = qword_1EA9995D8;
  if (!qword_1EA9995D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9995D8);
  }

  return result;
}

uint64_t sub_18AEEC1A8@<X0>(char *a1@<X8>)
{
  v2 = *(sub_18AFCC704() + 20);
  v3 = *MEMORY[0x1E697F468];
  v4 = sub_18AFCC534();
  (*(*(v4 - 8) + 104))(&a1[v2], v3, v4);
  result = sub_18AFCC674();
  *a1 = v6;
  *(a1 + 1) = v7;
  *(a1 + 2) = v8;
  *(a1 + 3) = v9;
  return result;
}

uint64_t sub_18AEEC2CC@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998930);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v31 - v4;
  v31 = sub_18AFCC474();
  v6 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9995F8);
  v10 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999600);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v31 - v17;
  if ((a1[3] & 1) != 0 || a1[4] == 1)
  {
    sub_18AEEC1A8(v12);
    v12[v9[9]] = a1[1];
    v12[v9[10]] = 0;
    v12[v9[11]] = 0;
    v19 = &v12[v9[12]];
    *v19 = swift_getKeyPath();
    v19[8] = 0;
    sub_18AEECDEC(v12, v18);
    (*(v10 + 56))(v18, 0, 1, v9);
  }

  else
  {
    (*(v10 + 56))(&v31 - v17, 1, 1, v9);
  }

  v20 = sub_18AFCCFA4();
  v21 = &a1[*(type metadata accessor for MacStepperButton() + 40)];
  v22 = *v21;
  if (v21[8] != 1)
  {

    sub_18AFCE024();
    v23 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v22, 0);
    (*(v6 + 8))(v8, v31);
    if (v37 != 1)
    {
      goto LABEL_7;
    }

LABEL_9:
    v33 = a1[1];
    v34 = 512;
    v35 = 0;
    sub_18AEECD98();
    goto LABEL_10;
  }

  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v36 = sub_18AFCC6F4();
LABEL_10:
  v24 = sub_18AFCBCD4();
  sub_18AEEC7F0(a1);
  v25 = sub_18AFCC8F4();
  (*(*(v25 - 8) + 56))(v5, 1, 1, v25);
  v26 = sub_18AFCC954();
  sub_18AE7BA80(v5, &qword_1EA998930);
  KeyPath = swift_getKeyPath();
  sub_18AEECD28(v18, v15);
  v28 = v32;
  sub_18AEECD28(v15, v32);
  v29 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999608) + 48));
  *v29 = v20;
  v29[1] = v24;
  v29[2] = KeyPath;
  v29[3] = v26;

  sub_18AE7BA80(v18, &qword_1EA999600);

  return sub_18AE7BA80(v15, &qword_1EA999600);
}

double sub_18AEEC7F0(uint64_t a1)
{
  if (*(a1 + 2) > 3u)
  {
    if (*(a1 + 2) == 4)
    {
      goto LABEL_3;
    }
  }

  else if (*(a1 + 2) > 1u)
  {
LABEL_3:
    sub_18AFCC944();
    return result;
  }

  sub_18AFCC904();
  return result;
}

uint64_t sub_18AEEC84C(uint64_t a1)
{
  v2 = sub_18AFCC474();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + 3) & 1) == 0)
  {
    v6 = a1 + *(type metadata accessor for MacStepperButton() + 44);
    v7 = *v6;
    if ((*(v6 + 8) & 1) == 0)
    {

      sub_18AFCE024();
      v8 = sub_18AFCC7D4();
      sub_18AFCBA64();

      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AE9B234(v7, 0);
      (*(v3 + 8))(v5, v2);
      v7 = v11[1];
    }

    if (v7 == 4)
    {
      v9 = &unk_18AFD5540 + 8 * *(a1 + 2);
      return *v9;
    }
  }

  if ((*(a1 + 2) - 1) <= 3u)
  {
    v9 = &unk_18AFD5580 + 8 * (*(a1 + 2) - 1);
    return *v9;
  }

  return 0x402A000000000000;
}

double sub_18AEEC9FC(uint64_t a1)
{
  v2 = sub_18AFCC474();
  v3 = *(v2 - 8);
  result = MEMORY[0x1EEE9AC00](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 3);
  if (v7)
  {
    goto LABEL_19;
  }

  v8 = a1 + *(type metadata accessor for MacStepperButton() + 44);
  v9 = *v8;
  if ((*(v8 + 8) & 1) == 0)
  {

    sub_18AFCE024();
    v10 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v9, 0);
    (*(v3 + 8))(v6, v2);
    v9 = v14[1];
  }

  if (v9 != 4)
  {
LABEL_19:
    v11 = *(a1 + 2);
    if (v11 > 3)
    {
      if (*(a1 + 2) > 5u)
      {
        if (v11 == 6)
        {
          v12 = 8.0;
          v13 = 0.0;
          if (v7)
          {
            return v12 - v13;
          }
        }

        else
        {
          v12 = 10.0;
          v13 = 0.0;
          if (v7)
          {
            return v12 - v13;
          }
        }
      }

      else
      {
        if (v11 == 4)
        {
          return result;
        }

        v12 = 6.5;
        v13 = 0.0;
        if (v7)
        {
          return v12 - v13;
        }
      }

      v13 = 2.0;
      return v12 - v13;
    }
  }

  return result;
}

double sub_18AEECC30@<D0>(uint64_t *a1@<X8>)
{
  *a1 = sub_18AFCDB44();
  a1[1] = v3;
  v4 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9995E0) + 44));
  *v4 = sub_18AFCDB44();
  v4[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9995E8);
  sub_18AEEC2CC(v1, v4 + *(v6 + 44));
  sub_18AEEC84C(v1);
  sub_18AEEC9FC(v1);
  sub_18AFCDB44();
  sub_18AFCBCC4();
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9995F0) + 36));
  *v7 = v9;
  v7[1] = v10;
  result = *&v11;
  v7[2] = v11;
  return result;
}

uint64_t sub_18AEECD28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999600);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_18AEECD98()
{
  result = qword_1EA999610;
  if (!qword_1EA999610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999610);
  }

  return result;
}

uint64_t sub_18AEECDEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9995F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_18AEECE5C()
{
  result = qword_1EA999618;
  if (!qword_1EA999618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9995F0);
    sub_18AEECEE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999618);
  }

  return result;
}

unint64_t sub_18AEECEE8()
{
  result = qword_1EA999620;
  if (!qword_1EA999620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EA999628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999620);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MacToolbarButtonForegroundStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = a1[3];
      if (a1[3])
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = a1[1];
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for MacToolbarButtonForegroundStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 1) = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

void sub_18AEED068()
{
  sub_18AEB316C();
  if (v0 <= 0x3F)
  {
    sub_18AEED708(319, &qword_1EA997C38, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_18AEED708(319, &qword_1EA9996B0, &type metadata for GlassGroupContext, MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_18AEED708(319, &qword_1ED56ADC0, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_18AEED1D8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_18AFCBB54() - 8) + 64);
  v7 = *(*(a3 + 16) - 8);
  if (v6 <= 8)
  {
    v6 = 8;
  }

  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= 0xFE)
  {
    v11 = 254;
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v11)
  {
    goto LABEL_30;
  }

  v12 = (((v6 & 0xFFFFFFFFFFFFFFF8) + v9 + 57) & ~v9) + v10;
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((a2 - v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v16 < 2)
    {
LABEL_30:
      if (v8 > 0xFE)
      {
        v21 = *(*(*(a3 + 16) - 8) + 48);

        return v21((((a1 + v6 + 24) & 0xFFFFFFFFFFFFFFF8) + v9 + 33) & ~v9);
      }

      else
      {
        v20 = *(a1 + v6);
        if (v20 >= 2)
        {
          return (v20 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_30;
  }

LABEL_17:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 <= 3)
    {
      v18 = v12;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v11 + (v19 | v17) + 1;
}

void sub_18AEED3E4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_18AFCBB54() - 8) + 64);
  v9 = *(*(a4 + 16) - 8);
  if (v8 <= 8)
  {
    v8 = 8;
  }

  v10 = *(*(a4 + 16) - 8);
  v11 = *(v9 + 84);
  v12 = *(v9 + 80);
  v13 = *(v9 + 64);
  if (v11 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = *(v9 + 84);
  }

  v15 = (((v8 & 0xFFFFFFFFFFFFFFF8) + v12 + 57) & ~v12) + v13;
  if (a3 <= v14)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v14 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v14 < a2)
  {
    v17 = ~v14 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_57:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v15] = 0;
LABEL_32:
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!v16)
  {
    goto LABEL_32;
  }

  a1[v15] = 0;
  if (!a2)
  {
    return;
  }

LABEL_33:
  v22 = v8 + 1;
  if (v11 > 0xFE)
  {
    v23 = *(v10 + 56);

    v23(((&a1[v22 + 23] & 0xFFFFFFFFFFFFFFF8) + v12 + 33) & ~v12, a2);
  }

  else if (a2 > 0xFE)
  {
    if (v22 <= 3)
    {
      v24 = ~(-1 << (8 * v22));
    }

    else
    {
      v24 = -1;
    }

    if (v8 != -1)
    {
      v25 = v24 & (a2 - 255);
      if (v22 <= 3)
      {
        v26 = v8 + 1;
      }

      else
      {
        v26 = 4;
      }

      bzero(a1, v22);
      if (v26 > 2)
      {
        if (v26 == 3)
        {
          *a1 = v25;
          a1[2] = BYTE2(v25);
        }

        else
        {
          *a1 = v25;
        }
      }

      else if (v26 == 1)
      {
        *a1 = v25;
      }

      else
      {
        *a1 = v25;
      }
    }
  }

  else
  {
    a1[v8] = -a2;
  }
}

void sub_18AEED708(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_18AEED774@<X0>(char *a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t *a9@<X8>, uint64_t a10, char a11, uint64_t (*a12)(void))
{
  v17 = *a1;
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA997D30);
  swift_storeEnumTagMultiPayload();
  v18 = type metadata accessor for MacToolbarButton();
  v19 = a9 + v18[9];
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  v20 = a9 + v18[10];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  *(a9 + v18[11]) = v17;
  *(a9 + v18[12]) = a2;
  *(a9 + v18[13]) = a3;
  *(a9 + v18[14]) = a4;
  *(a9 + v18[15]) = a5;
  *(a9 + v18[16]) = a6;
  *(a9 + v18[17]) = a7;
  *(a9 + v18[18]) = a8;
  v21 = a9 + v18[19];
  *v21 = a10;
  v21[8] = a11 & 1;
  return a12();
}

double sub_18AEED8E4(uint64_t a1)
{
  v2 = v1 + *(a1 + 76);
  if (*(v2 + 8))
  {
    return dbl_18AFD5830[*(v1 + *(a1 + 48))];
  }

  result = *v2;
  if (*v2 < dbl_18AFD5830[*(v1 + *(a1 + 48))])
  {
    return dbl_18AFD5830[*(v1 + *(a1 + 48))];
  }

  return result;
}

uint64_t sub_18AEED91C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v127 = a2;
  v92 = sub_18AFCC474();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v90 = &v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998930);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v105 = &v89 - v5;
  v109 = sub_18AFCCFF4();
  v95 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v7 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9993F0);
  v9 = sub_18AFCC044();
  v96 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v89 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9996B8);
  v99 = sub_18AFCC044();
  v103 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v94 = &v89 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938);
  v102 = sub_18AFCC044();
  v104 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v98 = &v89 - v13;
  v101 = sub_18AFCC044();
  v106 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v100 = &v89 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B48);
  sub_18AE95F54(&qword_1EA998B50, &qword_1EA998B48);
  v15 = sub_18AFCBDC4();
  v107 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v97 = &v89 - v16;
  v108 = v17;
  v18 = sub_18AFCC044();
  v111 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v110 = &v89 - v19;
  v113 = v20;
  v21 = sub_18AFCC044();
  v114 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v112 = &v89 - v22;
  v115 = v23;
  v24 = sub_18AFCC044();
  v117 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v116 = &v89 - v25;
  v118 = v26;
  v27 = sub_18AFCC044();
  v121 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v119 = &v89 - v28;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9996C0);
  v123 = v27;
  v125 = sub_18AFCC044();
  v124 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v120 = &v89 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v122 = &v89 - v31;
  v32 = *(a1 + 24);
  v33 = v128;
  sub_18AEEEBC0(v128, v7);
  v126 = v8;
  sub_18AFCCA84();
  (*(v95 + 8))(v7, v109);
  v34 = v33;
  v35 = *(v33 + *(a1 + 44));
  v37 = *(a1 + 52);
  v36 = *(a1 + 56);
  v38 = a1;
  v93 = a1;
  LOBYTE(v36) = *(v34 + v36);
  LOBYTE(v37) = *(v34 + v37);
  LOBYTE(v149) = v35;
  HIBYTE(v149) = v36;
  v150 = v37;
  v39 = sub_18AE95F54(&qword_1EA999420, &qword_1EA9993F0);
  v109 = v32;
  v147 = v32;
  v148 = v39;
  WitnessTable = swift_getWitnessTable();
  sub_18AEB12A0();
  v41 = v94;
  sub_18AFCCB44();
  (*(v96 + 8))(v11, v9);
  v42 = *(v34 + *(v38 + 48));
  sub_18AFCC924();
  v43 = sub_18AFCC8F4();
  v44 = v105;
  (*(*(v43 - 8) + 56))(v105, 1, 1, v43);
  sub_18AFCC954();
  sub_18AE7BA80(v44, &qword_1EA998930);
  sub_18AFCC8E4();

  v45 = sub_18AE95F54(&qword_1EA9996C8, &qword_1EA9996B8);
  v145 = WitnessTable;
  v146 = v45;
  v46 = v99;
  v47 = swift_getWitnessTable();
  v48 = v98;
  sub_18AFCCBA4();

  (*(v103 + 8))(v41, v46);
  sub_18AFCC8B4();
  v49 = sub_18AE95F54(&qword_1EA998950, &qword_1EA998938);
  v143 = v47;
  v144 = v49;
  v50 = v102;
  v51 = swift_getWitnessTable();
  v52 = v100;
  sub_18AFCCC24();
  (*(v104 + 8))(v48, v50);
  v141 = v51;
  v142 = MEMORY[0x1E697E5D8];
  v53 = v93;
  v54 = v97;
  v55 = v101;
  v56 = swift_getWitnessTable();
  sub_18AFC385C(0, 0, v55, v56, v54, 0.0, 5.0);
  (*(v106 + 8))(v52, v55);
  sub_18AFCC884();
  if (*(v34 + v53[16]) == 1)
  {
    v57 = v128 + v53[10];
    v58 = *v57;
    if (*(v57 + 8) == 1)
    {
      v149 = v58 & 0x101;
      v150 = BYTE2(v58) & 1;
    }

    else
    {

      sub_18AFCE024();
      v60 = sub_18AFCC7D4();
      sub_18AFCBA64();

      v61 = v90;
      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AE9B234(v58, 0);
      (*(v91 + 8))(v61, v92);
    }

    v59 = v110;
  }

  else
  {
    v59 = v110;
  }

  v139 = sub_18AE95F54(&qword_1EA998B78, &qword_1EA998B48);
  v140 = v56;
  v62 = v108;
  v63 = swift_getWitnessTable();
  sub_18AFCCC24();
  (*(v107 + 8))(v54, v62);
  sub_18AFCC8A4();
  v64 = *(v128 + v53[17]) == 1;
  v96 = v42;
  if (v64)
  {
    v65 = v128 + v53[10];
    v66 = *v65;
    if (*(v65 + 8) == 1)
    {
      v149 = v66 & 0x101;
      v150 = BYTE2(v66) & 1;
    }

    else
    {

      sub_18AFCE024();
      v67 = sub_18AFCC7D4();
      sub_18AFCBA64();

      v68 = v90;
      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AE9B234(v66, 0);
      (*(v91 + 8))(v68, v92);
    }
  }

  v137 = v63;
  v69 = MEMORY[0x1E697E5D8];
  v138 = MEMORY[0x1E697E5D8];
  v110 = MEMORY[0x1E697E858];
  v70 = v113;
  v71 = swift_getWitnessTable();
  v72 = v112;
  sub_18AFCCC24();
  (*(v111 + 8))(v59, v70);
  sub_18AFCDB44();
  v135 = v71;
  v136 = v69;
  v73 = v115;
  v74 = swift_getWitnessTable();
  v75 = v116;
  sub_18AFCCBB4();
  (*(v114 + 8))(v72, v73);
  sub_18AEED8E4(v53);
  sub_18AFCDB44();
  v133 = v74;
  v134 = MEMORY[0x1E697E040];
  v76 = v118;
  v88 = swift_getWitnessTable();
  v77 = v119;
  sub_18AFCCBC4();
  v78 = (*(v117 + 8))(v75, v76);
  v118 = &v89;
  MEMORY[0x1EEE9AC00](v78);
  sub_18AFCDB44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9996D0);
  v131 = v88;
  v132 = MEMORY[0x1E697EBF8];
  v79 = v123;
  v80 = swift_getWitnessTable();
  sub_18AEF09EC();
  v81 = v120;
  sub_18AFCCA64();
  (*(v121 + 8))(v77, v79);
  v82 = sub_18AE95F54(&qword_1EA999760, &qword_1EA9996C0);
  v129 = v80;
  v130 = v82;
  v83 = v125;
  v84 = swift_getWitnessTable();
  v85 = v122;
  sub_18AEADA5C(v81, v83, v84);
  v86 = *(v124 + 8);
  v86(v81, v83);
  sub_18AEADA5C(v85, v83, v84);
  return (v86)(v85, v83);
}

uint64_t sub_18AEEEBC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v25 = sub_18AFCC474();
  v3 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA997D30);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  v9 = sub_18AFCBB54();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AE83A40(a1, v8, qword_1EA997D30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_18AFCE024();
    v13 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v25);
  }

  v14 = v10;
  v15 = (*(v10 + 88))(v12, v9);
  if (v15 == *MEMORY[0x1E697DC08] || v15 == *MEMORY[0x1E697DC20] || v15 == *MEMORY[0x1E697DC28])
  {
    v16 = MEMORY[0x1E69816E0];
LABEL_8:
    v17 = *v16;
    v18 = sub_18AFCCFF4();
    v19 = *(*(v18 - 8) + 104);
    v20 = v26;
    v21 = v17;
    return v19(v20, v21, v18);
  }

  if (v15 == *MEMORY[0x1E697DC10])
  {
    v16 = MEMORY[0x1E69816C0];
    goto LABEL_8;
  }

  v23 = *MEMORY[0x1E697DC00];
  v24 = v15;
  v18 = sub_18AFCCFF4();
  v19 = *(*(v18 - 8) + 104);
  if (v24 != v23)
  {
    v19(v26, *MEMORY[0x1E69816C8], v18);
    return (*(v14 + 8))(v12, v9);
  }

  v21 = *MEMORY[0x1E69816C0];
  v20 = v26;
  return v19(v20, v21, v18);
}

uint64_t sub_18AEEEF70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v99 = sub_18AFCC474();
  v91 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v90 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999718);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v90 - v6);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999708);
  MEMORY[0x1EEE9AC00](v92);
  v98 = &v90 - v8;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9996F8);
  MEMORY[0x1EEE9AC00](v93);
  v97 = &v90 - v9;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9996E8);
  MEMORY[0x1EEE9AC00](v94);
  v95 = &v90 - v10;
  *v7 = sub_18AFCDB44();
  v7[1] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999768);
  sub_18AEEFCDC(a1, v7 + *(v12 + 44));
  v13 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999728) + 36);
  v14 = *MEMORY[0x1E697F468];
  v15 = sub_18AFCC534();
  v16 = *(*(v15 - 8) + 104);
  v16(v13, v14, v15);
  v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999748) + 36)] = 0;
  v17 = v7 + *(v5 + 44);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999758);
  sub_18AFCC1A4();
  v16(v17, v14, v15);
  v19 = v90;
  v20 = type metadata accessor for MacToolbarButton();
  LOBYTE(v15) = *(a1 + *(v20 + 72));
  v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999770) + 36)] = v15;
  v17[*(v18 + 36)] = 0;
  v21 = v20;
  v22 = *(v20 + 40);
  v100 = a1;
  v23 = a1 + v22;
  v24 = *(a1 + v22);
  LODWORD(v22) = *(a1 + v22 + 8);
  v25 = v19;
  if (v22 == 1)
  {
    v101 = v24 & 0x101;
    v26 = v99;
    v27 = v91;
    if ((v24 & 1) == 0)
    {
LABEL_3:
      v28 = v97;
      goto LABEL_7;
    }
  }

  else
  {

    sub_18AFCE024();
    v29 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v24, 0);
    v27 = v91;
    v26 = v99;
    (*(v91 + 8))(v19, v99);
    if ((v101 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v28 = v97;
  if (HIBYTE(v101) == 1)
  {
    v30 = sub_18AFCC894();
    goto LABEL_8;
  }

LABEL_7:
  v30 = sub_18AFCC8B4();
LABEL_8:
  v31 = v30;
  v32 = *(v100 + v21[12]);
  v33 = *v23;
  v34 = *(v23 + 8);
  LODWORD(v97) = v32;
  if (v34 != 1)
  {

    sub_18AFCE024();
    v35 = sub_18AFCC7D4();
    sub_18AFCBA64();

    v26 = v99;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v33, 0);
    (*(v27 + 8))(v25, v26);
  }

  sub_18AFCBAA4();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = v7;
  v45 = v98;
  sub_18AE9A768(v44, v98, &qword_1EA999718);
  v46 = v45 + *(v92 + 36);
  *v46 = v31;
  *(v46 + 8) = v37;
  *(v46 + 16) = v39;
  *(v46 + 24) = v41;
  *(v46 + 32) = v43;
  *(v46 + 40) = 0;
  v47 = *v23;
  if (*(v23 + 8) == 1)
  {
    v101 = v47 & 0x101;
    v48 = v27;
    v49 = v25;
    if ((v47 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {

    sub_18AFCE024();
    v50 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v47, 0);
    v48 = v27;
    v49 = v25;
    (*(v48 + 8))(v25, v26);
    if ((v101 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (HIBYTE(v101) == 1)
  {
    v51 = sub_18AFCC894();
    goto LABEL_17;
  }

LABEL_16:
  v51 = sub_18AFCC884();
LABEL_17:
  v52 = v51;
  v53 = *v23;
  if (*(v23 + 8) == 1)
  {
    v101 = v53 & 0x101;
    v54 = v53 >> 8;
    v102 = BYTE2(v53) & 1;
    if ((v53 & 1) == 0)
    {
LABEL_22:
      if (v102)
      {
        goto LABEL_26;
      }

      goto LABEL_23;
    }
  }

  else
  {

    sub_18AFCE024();
    v55 = sub_18AFCC7D4();
    sub_18AFCBA64();

    v26 = v99;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v53, 0);
    (*(v48 + 8))(v49, v26);
    LOBYTE(v54) = HIBYTE(v101);
    if ((v101 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  if ((v54 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_23:
  if (*(v100 + v21[16]) == 1)
  {
    v56 = *v23;
    if (*(v23 + 8) != 1)
    {

      sub_18AFCE024();
      v57 = sub_18AFCC7D4();
      sub_18AFCBA64();

      v26 = v99;
      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AE9B234(v56, 0);
      (*(v48 + 8))(v49, v26);
    }
  }

LABEL_26:
  sub_18AFCBAA4();
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;
  sub_18AE9A768(v98, v28, &qword_1EA999708);
  v66 = v28 + *(v93 + 36);
  *v66 = v52;
  *(v66 + 8) = v59;
  *(v66 + 16) = v61;
  *(v66 + 24) = v63;
  *(v66 + 32) = v65;
  *(v66 + 40) = 0;
  v67 = *v23;
  if (*(v23 + 8) == 1)
  {
    v101 = v67 & 0x101;
    if ((v67 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else
  {

    sub_18AFCE024();
    v68 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v67, 0);
    (*(v48 + 8))(v49, v26);
    if ((v101 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  if (HIBYTE(v101) == 1)
  {
    v69 = sub_18AFCC894();
    goto LABEL_33;
  }

LABEL_32:
  v69 = sub_18AFCC8A4();
LABEL_33:
  v70 = v69;
  v71 = *v23;
  if (*(v23 + 8) == 1)
  {
    v101 = v71 & 0x101;
    v72 = v71 >> 8;
    v102 = BYTE2(v71) & 1;
    if ((v71 & 1) == 0)
    {
LABEL_38:
      if (v102)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }
  }

  else
  {

    sub_18AFCE024();
    v73 = sub_18AFCC7D4();
    sub_18AFCBA64();

    v26 = v99;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v71, 0);
    (*(v48 + 8))(v49, v26);
    LOBYTE(v72) = HIBYTE(v101);
    if ((v101 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  if ((v72 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_39:
  if (*(v100 + v21[17]) == 1)
  {
    v74 = *v23;
    if (*(v23 + 8) != 1)
    {

      sub_18AFCE024();
      v75 = v26;
      v76 = sub_18AFCC7D4();
      sub_18AFCBA64();

      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AE9B234(v74, 0);
      (*(v48 + 8))(v49, v75);
    }
  }

LABEL_42:
  sub_18AFCBAA4();
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v84 = v83;
  v85 = v95;
  sub_18AE9A768(v28, v95, &qword_1EA9996F8);
  v86 = v85 + *(v94 + 36);
  *v86 = v70;
  *(v86 + 8) = v78;
  *(v86 + 16) = v80;
  *(v86 + 24) = v82;
  *(v86 + 32) = v84;
  *(v86 + 40) = 0;
  if (*(v100 + v21[15]))
  {
    v87 = 0.0;
  }

  else
  {
    v87 = 1.0;
  }

  v88 = v96;
  sub_18AE9A768(v85, v96, &qword_1EA9996E8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9996D0);
  *(v88 + *(result + 36)) = v87;
  return result;
}

uint64_t sub_18AEEFCDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999778);
  MEMORY[0x1EEE9AC00](v3);
  v106 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v83 - v6;
  v8 = sub_18AFCC474();
  v98 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_18AFCD4A4();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v102 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v83 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999780);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v100 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v83 - v19;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999788);
  MEMORY[0x1EEE9AC00](v108);
  v104 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v103 = &v83 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v99 = &v83 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v101 = &v83 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v95 = &v83 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v109 = &v83 - v31;
  v32 = *MEMORY[0x1E697F468];
  v33 = sub_18AFCC534();
  v34 = *(v33 - 8);
  v35 = *(v34 + 104);
  v96 = v15;
  v94 = v32;
  v92 = v35;
  v93 = v33;
  v91 = v34 + 104;
  (v35)(v15, v32);
  v36 = type metadata accessor for MacToolbarButton();
  v90 = v36[11];
  LODWORD(v105) = *(a1 + v90);
  v37 = *(a1 + v36[13]);
  v38 = v36[9];
  v97 = a1;
  v39 = a1 + v38;
  v40 = *v39;
  v89 = *(v39 + 8);
  v84 = v40;
  if (v89 == 1)
  {
    v42 = v40;
  }

  else
  {

    sub_18AFCE024();
    v41 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v40, 0);
    (*(v98 + 8))(v10, v8);
    v42 = v110;
  }

  v88 = v37 - 1;
  v86 = v8;
  v85 = v10;
  if ((v37 - 1) > 1)
  {
    v110 = sub_18AFCCD74();
LABEL_11:
    v45 = sub_18AFCBCD4();
    v43 = v105;
    goto LABEL_12;
  }

  if ((v42 & 1) == 0)
  {
    LODWORD(v110) = sub_18AFCC6B4();
    goto LABEL_11;
  }

  v43 = v105;
  v44 = 1.0;
  if (v105 == 1)
  {
    v44 = 0.5;
  }

  *&v110 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9997B0);
  sub_18AE95F54(&qword_1EA9997B8, &qword_1EA9997B0);
  v45 = sub_18AFCBCD4();
LABEL_12:
  v46 = v96;
  sub_18AEF0D24(v96, v7);
  *&v7[*(v3 + 52)] = v45;
  v105 = v3;
  *&v7[*(v3 + 56)] = 256;
  sub_18AEF0D24(v7, v20);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999790);
  v20[*(v47 + 52)] = v43;
  *&v20[*(v47 + 56)] = 256;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999798);
  v48 = &v20[*(v87 + 36)];
  sub_18AE83A40(v7, v48, &qword_1EA999778);
  v49 = sub_18AFCDB44();
  v51 = v50;
  sub_18AE7BA80(v7, &qword_1EA999778);
  sub_18AEF0D88(v46);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9997A0);
  v53 = (v48 + *(v52 + 36));
  *v53 = v49;
  v53[1] = v51;
  v54 = v36[14];
  v55 = v97;
  v56 = *(v97 + v54);
  if (*(v97 + v54))
  {
    v57 = 0.0;
  }

  else
  {
    v57 = 1.0;
  }

  v58 = v95;
  sub_18AE9A768(v20, v95, &qword_1EA999780);
  v59 = v109;
  *(v58 + *(v108 + 36)) = v57;
  sub_18AE9A768(v58, v59, &qword_1EA999788);
  v60 = v102;
  v92(v102, v94, v93);
  v61 = *(v55 + v90);
  if ((v89 & 1) == 0)
  {
    v62 = v84;

    sub_18AFCE024();
    v63 = sub_18AFCC7D4();
    sub_18AFCBA64();

    v64 = v85;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v62, 0);
    (*(v98 + 8))(v64, v86);
  }

  if (v88 > 1)
  {
    v110 = sub_18AFCCD74();
  }

  else
  {
    LODWORD(v110) = sub_18AFCC6B4();
  }

  v65 = sub_18AFCBCD4();
  v66 = v106;
  sub_18AEF0D24(v60, v106);
  v67 = v105;
  *(v66 + *(v105 + 52)) = v65;
  *(v66 + *(v67 + 56)) = 256;
  v68 = v100;
  sub_18AEF0D24(v66, v100);
  *(v68 + *(v47 + 52)) = v61;
  *(v68 + *(v47 + 56)) = 256;
  v69 = v68 + *(v87 + 36);
  sub_18AE83A40(v66, v69, &qword_1EA999778);
  v70 = sub_18AFCDB44();
  v72 = v71;
  sub_18AE7BA80(v66, &qword_1EA999778);
  sub_18AEF0D88(v60);
  v73 = (v69 + *(v52 + 36));
  *v73 = v70;
  v73[1] = v72;
  if (v56)
  {
    v74 = 1.0;
  }

  else
  {
    v74 = 0.0;
  }

  v75 = v99;
  sub_18AE9A768(v68, v99, &qword_1EA999780);
  *(v75 + *(v108 + 36)) = v74;
  v76 = v101;
  sub_18AE9A768(v75, v101, &qword_1EA999788);
  v77 = v109;
  v78 = v103;
  sub_18AE83A40(v109, v103, &qword_1EA999788);
  v79 = v104;
  sub_18AE83A40(v76, v104, &qword_1EA999788);
  v80 = v107;
  sub_18AE83A40(v78, v107, &qword_1EA999788);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9997A8);
  sub_18AE83A40(v79, v80 + *(v81 + 48), &qword_1EA999788);
  sub_18AE7BA80(v76, &qword_1EA999788);
  sub_18AE7BA80(v77, &qword_1EA999788);
  sub_18AE7BA80(v79, &qword_1EA999788);
  return sub_18AE7BA80(v78, &qword_1EA999788);
}

uint64_t sub_18AEF0688@<X0>(uint64_t *a1@<X8>)
{
  v28 = a1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9997C0);
  MEMORY[0x1EEE9AC00](v27);
  v3 = &v23[-v2];
  v4 = sub_18AFCC664();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23[-v9];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23[-v12];
  v14 = *v1;
  v25 = v1[1];
  v26 = v14;
  v24 = v1[2];
  v15 = sub_18AFCC274();
  sub_18AFCC314();
  sub_18AFCC654();
  v16 = sub_18AFCC634();
  v17 = *(v5 + 8);
  v17(v7, v4);
  v17(v10, v4);
  if (v16)
  {
    goto LABEL_6;
  }

  v18 = v25;
  if ((v24 - 3) < 0xFFFFFFFE)
  {
    v18 = 1;
  }

  if ((v18 & 1) == 0)
  {
LABEL_6:
    sub_18AFCC654();
  }

  else
  {
    sub_18AFCC644();
  }

  v19 = *(v27 + 48);
  (*(v5 + 16))(v3, v13, v4);
  v3[v19] = v15 & 1;
  if (v15 & 1) != 0 && (sub_18AFCC654(), sub_18AEF0E38(), v20 = sub_18AFCDDF4(), v17(v10, v4), (v20))
  {
    v29 = v26;
    sub_18AEF0E90();
    v21 = sub_18AFCBCD4();
    v17(v13, v4);
    result = (v17)(v3, v4);
  }

  else
  {
    v30 = v26;
    sub_18AEF0DE4();
    v21 = sub_18AFCBCD4();
    v17(v13, v4);
    result = sub_18AE7BA80(v3, &qword_1EA9997C0);
  }

  *v28 = v21;
  return result;
}

unint64_t sub_18AEF09EC()
{
  result = qword_1EA9996D8;
  if (!qword_1EA9996D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9996D0);
    sub_18AEF0AD4(&qword_1EA9996E0, &qword_1EA9996E8, &unk_18AFD5700, sub_18AEF0AA4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9996D8);
  }

  return result;
}

uint64_t sub_18AEF0AD4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18AEF0B88()
{
  result = qword_1EA999710;
  if (!qword_1EA999710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999718);
    sub_18AEF0C40();
    sub_18AE95F54(&qword_1EA999750, &qword_1EA999758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999710);
  }

  return result;
}

unint64_t sub_18AEF0C40()
{
  result = qword_1EA999720;
  if (!qword_1EA999720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999728);
    sub_18AE95F54(&qword_1EA999730, &qword_1EA999738);
    sub_18AE95F54(&qword_1EA999740, &qword_1EA999748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999720);
  }

  return result;
}

uint64_t sub_18AEF0D24(uint64_t a1, uint64_t a2)
{
  v4 = sub_18AFCD4A4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18AEF0D88(uint64_t a1)
{
  v2 = sub_18AFCD4A4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_18AEF0DE4()
{
  result = qword_1EA9997C8;
  if (!qword_1EA9997C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9997C8);
  }

  return result;
}

unint64_t sub_18AEF0E38()
{
  result = qword_1EA9997D0;
  if (!qword_1EA9997D0)
  {
    sub_18AFCC664();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9997D0);
  }

  return result;
}

unint64_t sub_18AEF0E90()
{
  result = qword_1EA9997D8[0];
  if (!qword_1EA9997D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA9997D8);
  }

  return result;
}

uint64_t sub_18AEF0EE4@<X0>(_BYTE *a1@<X0>, char a2@<W1>, char a3@<W2>, void (*a4)(void)@<X3>, _BYTE *a5@<X8>)
{
  *a5 = *a1;
  a5[1] = a2;
  a5[2] = a3;
  v7 = type metadata accessor for MacToolbarPopUpButton();
  a4();
  v8 = v7[12];
  *&a5[v8] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA997D30);
  swift_storeEnumTagMultiPayload();
  v9 = &a5[v7[13]];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  v10 = &a5[v7[14]];
  result = swift_getKeyPath();
  *v10 = result;
  v10[8] = 0;
  return result;
}

void sub_18AEF0FD0()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_18AEB316C();
    if (v1 <= 0x3F)
    {
      sub_18AEB1A48(319, &qword_1EA9996B0);
      if (v2 <= 0x3F)
      {
        sub_18AEB1A48(319, &qword_1EA997C38);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_18AEF10D0(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_18AFCBB54() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_33;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = ((v10 + ((((v11 + 3) & ~v11) + *(v6 + 64) + v12) & ~v12) + 24) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v13 <= 3)
  {
    v14 = ((a2 - v8 + 255) >> 8) + 1;
  }

  else
  {
    v14 = 2;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *&a1[v13];
      if (!*&a1[v13])
      {
        goto LABEL_33;
      }
    }

    else
    {
      v17 = *&a1[v13];
      if (!v17)
      {
        goto LABEL_33;
      }
    }

LABEL_26:
    v19 = v13 > 3;
    if (v13 <= 3)
    {
      v20 = (v17 - 1) << (8 * v13);
    }

    else
    {
      v20 = 0;
    }

    if (v19)
    {
      v25 = *a1;
    }

    else
    {
      v25 = *a1;
    }

    return v8 + (v25 | v20) + 1;
  }

  if (v16)
  {
    v17 = a1[v13];
    if (a1[v13])
    {
      goto LABEL_26;
    }
  }

LABEL_33:
  if (v7 > 0xFE)
  {
    v24 = *(v6 + 48);

    return v24(&a1[v11 + 3] & ~v11, v7, v5);
  }

  else
  {
    v21 = a1[1];
    v22 = v21 >= 2;
    v23 = (v21 + 2147483646) & 0x7FFFFFFF;
    if (v22)
    {
      return (v23 + 1);
    }

    else
    {
      return 0;
    }
  }
}

void sub_18AEF1314(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v22 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_18AFCBB54() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 80);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = ((v12 + ((((v13 + 3) & ~v13) + *(v8 + 64) + v14) & ~v14) + 24) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 >= a3)
  {
    v18 = 0;
    if (v10 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v15 <= 3)
    {
      v16 = ((a3 - v10 + 255) >> 8) + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    if (v10 >= a2)
    {
LABEL_19:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *&a1[v15] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v15] = 0;
      }

      else if (v18)
      {
        a1[v15] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      if (v9 > 0xFE)
      {
        v21 = *(v22 + 56);

        v21(&a1[v13 + 3] & ~v13, a2, v9, v7);
      }

      else
      {
        a1[1] = a2 + 1;
      }

      return;
    }
  }

  v19 = ~v10 + a2;
  bzero(a1, v15);
  if (v15 <= 3)
  {
    v20 = (v19 >> 8) + 1;
  }

  else
  {
    v20 = 1;
  }

  if (v15 <= 3)
  {
    *a1 = v19;
    if (v18 > 1)
    {
LABEL_29:
      if (v18 == 2)
      {
        *&a1[v15] = v20;
      }

      else
      {
        *&a1[v15] = v20;
      }

      return;
    }
  }

  else
  {
    *a1 = v19;
    if (v18 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v18)
  {
    a1[v15] = v20;
  }
}

uint64_t sub_18AEF15D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a1;
  v92 = a2;
  v91 = sub_18AFCD4A4();
  MEMORY[0x1EEE9AC00](v91);
  v90 = v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998930);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v77 = v63 - v5;
  v94 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9993F0);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999860);
  swift_getTupleTypeMetadata2();
  v63[2] = sub_18AFCDBF4();
  v63[1] = swift_getWitnessTable();
  v6 = sub_18AFCD134();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v63 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9996B8);
  v10 = sub_18AFCC044();
  v71 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v63[0] = v63 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938);
  v12 = sub_18AFCC044();
  v74 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v64 = v63 - v13;
  v14 = sub_18AFCC044();
  v76 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v67 = v63 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B48);
  sub_18AE95F54(&qword_1EA998B50, &qword_1EA998B48);
  v70 = sub_18AFCBDC4();
  v78 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v65 = v63 - v16;
  v72 = sub_18AFCC044();
  v79 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v68 = v63 - v17;
  v75 = sub_18AFCC044();
  v82 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v69 = v63 - v18;
  v81 = sub_18AFCC044();
  v85 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v73 = v63 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999868);
  v84 = sub_18AFCC044();
  v88 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v80 = v63 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999748);
  v87 = sub_18AFCC044();
  v89 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v83 = v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v86 = v63 - v23;
  v66 = *(v66 + 24);
  v98 = v94;
  v99 = v66;
  v24 = v93;
  v100 = v93;
  sub_18AFCC504();
  sub_18AFCD124();
  v119 = *v24;
  v120 = 0;
  WitnessTable = swift_getWitnessTable();
  sub_18AEB12A0();
  v26 = v63[0];
  sub_18AFCCB44();
  (*(v7 + 8))(v9, v6);
  sub_18AFCC924();
  v27 = sub_18AFCC8F4();
  v28 = v77;
  (*(*(v27 - 8) + 56))(v77, 1, 1, v27);
  sub_18AFCC954();
  sub_18AE7BA80(v28, &qword_1EA998930);
  sub_18AFCC8E4();

  v29 = sub_18AE95F54(&qword_1EA9996C8, &qword_1EA9996B8);
  v117 = WitnessTable;
  v118 = v29;
  v30 = swift_getWitnessTable();
  v31 = v64;
  sub_18AFCCBA4();

  (*(v71 + 8))(v26, v10);
  sub_18AFCC8B4();
  v32 = sub_18AE95F54(&qword_1EA998950, &qword_1EA998938);
  v115 = v30;
  v116 = v32;
  v33 = swift_getWitnessTable();
  v34 = v67;
  sub_18AFCCC24();
  (*(v74 + 8))(v31, v12);
  v35 = MEMORY[0x1E697E5D8];
  v113 = v33;
  v114 = MEMORY[0x1E697E5D8];
  v36 = swift_getWitnessTable();
  v37 = v65;
  sub_18AFC385C(0, 0, v14, v36, v65, 0.0, 5.0);
  (*(v76 + 8))(v34, v14);
  sub_18AFCC884();
  v111 = sub_18AE95F54(&qword_1EA998B78, &qword_1EA998B48);
  v112 = v36;
  v38 = v70;
  v39 = swift_getWitnessTable();
  v40 = v68;
  sub_18AFCCC24();
  (*(v78 + 8))(v37, v38);
  sub_18AFCC8A4();
  v109 = v39;
  v110 = v35;
  v41 = v72;
  v42 = swift_getWitnessTable();
  v43 = v69;
  sub_18AFCCC24();
  (*(v79 + 8))(v40, v41);
  sub_18AFCDB44();
  v107 = v42;
  v108 = v35;
  v61 = v75;
  v62 = swift_getWitnessTable();
  v44 = v73;
  sub_18AFCCBC4();
  (*(v82 + 8))(v43, v61);
  v95 = v94;
  v96 = v66;
  v97 = v93;
  sub_18AFCDB44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999870);
  v105 = v62;
  v106 = MEMORY[0x1E697EBF8];
  v45 = v81;
  v46 = swift_getWitnessTable();
  sub_18AEF3608();
  v47 = v80;
  sub_18AFCCA64();
  (*(v85 + 8))(v44, v45);
  v48 = *MEMORY[0x1E697F468];
  v49 = sub_18AFCC534();
  v50 = v90;
  (*(*(v49 - 8) + 104))(v90, v48, v49);
  v51 = sub_18AE95F54(&qword_1EA999888, &qword_1EA999868);
  v103 = v46;
  v104 = v51;
  v52 = v84;
  v53 = swift_getWitnessTable();
  sub_18AEDC310();
  v54 = v83;
  sub_18AFCCAC4();
  sub_18AEF0D88(v50);
  (*(v88 + 8))(v47, v52);
  v55 = sub_18AE95F54(&qword_1EA999740, &qword_1EA999748);
  v101 = v53;
  v102 = v55;
  v56 = v87;
  v57 = swift_getWitnessTable();
  v58 = v86;
  sub_18AEADA5C(v54, v56, v57);
  v59 = *(v89 + 8);
  v59(v54, v56);
  sub_18AEADA5C(v58, v56, v57);
  return (v59)(v58, v56);
}

uint64_t sub_18AEF2580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v63 = a3;
  v5 = sub_18AFCBA54();
  v57 = *(v5 - 8);
  v58 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v56 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999890);
  MEMORY[0x1EEE9AC00](v55);
  v53 = (&v45 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999860);
  v61 = *(v8 - 8);
  v62 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v60 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v59 = &v45 - v11;
  v47 = sub_18AFCCFF4();
  v12 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9993F0);
  v15 = sub_18AFCC044();
  v46 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v45 - v19;
  type metadata accessor for MacToolbarPopUpButton();
  sub_18AEF2C00(a1, v14);
  sub_18AFCCA84();
  v52 = v12;
  v21 = *(v12 + 8);
  v22 = v14;
  v23 = v47;
  v24 = v46;
  v21(v22, v47);
  v25 = sub_18AE95F54(&qword_1EA999420, &qword_1EA9993F0);
  v69[2] = a2;
  v69[3] = v25;
  WitnessTable = swift_getWitnessTable();
  v54 = v20;
  v48 = WitnessTable;
  sub_18AEADA5C(v17, v15, WitnessTable);
  v27 = *(v24 + 8);
  v28 = v17;
  v51 = v24 + 8;
  v50 = v27;
  v27(v17, v15);
  if (*(a1 + 1) == 1)
  {
    if (qword_1EA997998 != -1)
    {
      swift_once();
    }

    v29 = qword_1EA9B0160;
  }

  else
  {
    if (qword_1EA997990 != -1)
    {
      swift_once();
    }

    v29 = qword_1EA9B0148;
  }

  v30 = v58;
  v31 = __swift_project_value_buffer(v58, v29);
  (*(v57 + 16))(v56, v31, v30);
  v32 = sub_18AFCD014();
  v33 = v55;
  v34 = v53;
  v35 = (v53 + *(v55 + 36));
  (*(v52 + 104))(v35 + *(v49 + 28), *MEMORY[0x1E69816C8], v23);
  *v35 = swift_getKeyPath();
  *v34 = v32;
  sub_18AFCC944();
  v36 = sub_18AEF381C();
  v37 = v59;
  sub_18AFCCA74();
  sub_18AE7BA80(v34, &qword_1EA999890);
  v38 = v54;
  (*(v24 + 16))(v28, v54, v15);
  v69[0] = v28;
  v40 = v60;
  v39 = v61;
  v41 = v62;
  (*(v61 + 16))(v60, v37, v62);
  v69[1] = v40;
  v68[0] = v15;
  v68[1] = v41;
  v65 = v36;
  v66 = v48;
  v64 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_18AEB70B8(v69, 2uLL, v68);
  v42 = *(v39 + 8);
  v42(v37, v41);
  v43 = v50;
  v50(v38, v15);
  v42(v40, v41);
  return v43(v28, v15);
}

uint64_t sub_18AEF2C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_18AFCC474();
  v26 = *(v3 - 8);
  v27 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA997D30);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  v9 = sub_18AFCBB54();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MacToolbarPopUpButton();
  sub_18AE83A40(a1 + *(v13 + 48), v8, qword_1EA997D30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_18AFCE024();
    v14 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();

    (*(v26 + 8))(v5, v27);
  }

  v15 = (*(v10 + 88))(v12, v9);
  if (v15 == *MEMORY[0x1E697DC08] || v15 == *MEMORY[0x1E697DC20] || v15 == *MEMORY[0x1E697DC28])
  {
    v16 = MEMORY[0x1E69816E0];
LABEL_8:
    v17 = *v16;
    v18 = sub_18AFCCFF4();
    v19 = *(*(v18 - 8) + 104);
    v20 = v28;
    v21 = v17;
    return v19(v20, v21, v18);
  }

  if (v15 == *MEMORY[0x1E697DC10])
  {
    v16 = MEMORY[0x1E69816C0];
    goto LABEL_8;
  }

  v23 = *MEMORY[0x1E697DC00];
  v24 = v15;
  v18 = sub_18AFCCFF4();
  v19 = *(*(v18 - 8) + 104);
  if (v24 != v23)
  {
    v19(v28, *MEMORY[0x1E69816E0], v18);
    return (*(v10 + 8))(v12, v9);
  }

  v21 = *MEMORY[0x1E69816C0];
  v20 = v28;
  return v19(v20, v21, v18);
}

uint64_t sub_18AEF2FC4@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999778);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v48 - v4;
  v6 = sub_18AFCC474();
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18AFCD4A4();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999780);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v48 - v13;
  v15 = *MEMORY[0x1E697F468];
  v16 = sub_18AFCC534();
  (*(*(v16 - 8) + 104))(v11, v15, v16);
  v17 = *a1;
  v18 = type metadata accessor for MacToolbarPopUpButton();
  v19 = *(v18 + 56);
  v49 = a1;
  v20 = &a1[v19];
  if ((v20[8] & 1) == 0)
  {
    v21 = *v20;

    sub_18AFCE024();
    v22 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v21, 0);
    (*(v51 + 8))(v8, v52);
  }

  v54 = sub_18AFCCD74();
  v23 = sub_18AFCBCD4();
  sub_18AEF0D24(v11, v5);
  *&v5[*(v3 + 52)] = v23;
  *&v5[*(v3 + 56)] = 256;
  sub_18AEF0D24(v5, v14);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999790);
  v14[*(v24 + 52)] = v17;
  *&v14[*(v24 + 56)] = 256;
  v25 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999798) + 36)];
  sub_18AE83A40(v5, v25, &qword_1EA999778);
  v26 = sub_18AFCDB44();
  v28 = v27;
  sub_18AE7BA80(v5, &qword_1EA999778);
  sub_18AEF0D88(v11);
  v29 = (v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9997A0) + 36));
  *v29 = v26;
  v29[1] = v28;
  v30 = &v49[*(v18 + 52)];
  v31 = *v30;
  if (v30[8] == 1)
  {
    v53 = v31 & 0x101;
    if ((v31 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {

    sub_18AFCE024();
    v32 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v31, 0);
    (*(v51 + 8))(v8, v52);
    if ((v53 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if (HIBYTE(v53) == 1)
  {
    v33 = sub_18AFCC894();
    goto LABEL_10;
  }

LABEL_9:
  v33 = sub_18AFCC854();
LABEL_10:
  v34 = v33;
  v35 = *v30;
  if (v30[8] != 1)
  {

    sub_18AFCE024();
    v36 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v35, 0);
    (*(v51 + 8))(v8, v52);
  }

  sub_18AFCBAA4();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = v50;
  sub_18AEF36C0(v14, v50);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999870);
  v47 = v45 + *(result + 36);
  *v47 = v34;
  *(v47 + 8) = v38;
  *(v47 + 16) = v40;
  *(v47 + 24) = v42;
  *(v47 + 32) = v44;
  *(v47 + 40) = 0;
  return result;
}

unint64_t sub_18AEF3608()
{
  result = qword_1EA999878;
  if (!qword_1EA999878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999870);
    sub_18AE95F54(&qword_1EA999880, &qword_1EA999780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999878);
  }

  return result;
}

uint64_t sub_18AEF36C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999780);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18AEF3754(uint64_t a1)
{
  v2 = sub_18AFCCFF4();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_18AFCC1F4();
}

unint64_t sub_18AEF381C()
{
  result = qword_1EA999898;
  if (!qword_1EA999898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999890);
    sub_18AE95F54(&qword_1EA999420, &qword_1EA9993F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999898);
  }

  return result;
}

uint64_t sub_18AEF38D4(unsigned __int8 a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9998E0);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v13 - v4);
  if (a1 <= 2u)
  {
    v14 = sub_18AFCCD74();
  }

  else if (a1 == 3)
  {
    v6 = v3;
    v7 = sub_18AFCCD64();
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9998E8) + 36);
    v9 = *MEMORY[0x1E6981DA0];
    v10 = sub_18AFCDBC4();
    (*(*(v10 - 8) + 104))(v5 + v8, v9, v10);
    *v5 = v7;
    *(v5 + *(v6 + 36)) = 1034147594;
    sub_18AE95F54(&qword_1EA9998F0, &qword_1EA9998E0);
  }

  else
  {
    sub_18AFCCD64();
    v11 = sub_18AFCCDA4();

    v14 = v11;
  }

  return sub_18AFCBCD4();
}

uint64_t sub_18AEF3A80(uint64_t a1, char a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9998D0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v11 - v4;
  if (a2)
  {
    v6 = sub_18AFCC6C4();
    v7 = *(v3 + 36);
    v8 = *MEMORY[0x1E6981DA0];
    v9 = sub_18AFCDBC4();
    (*(*(v9 - 8) + 104))(&v5[v7], v8, v9);
    *v5 = v6;
    *(v5 + 1) = 1059481190;
    sub_18AE95F54(&qword_1EA9998D8, &qword_1EA9998D0);
  }

  else
  {
    v11[1] = sub_18AFCCD74();
  }

  return sub_18AFCBCD4();
}

uint64_t sub_18AEF3BD4(uint64_t a1, char a2)
{
  v4 = sub_18AFCBB34();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  if ((*(v5 + 88))(v8, v4) == *MEMORY[0x1E697DBB8])
  {
    if (a2 == 1)
    {
      v11[3] = 1056964608;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9998C0);
      sub_18AE95F54(&qword_1EA9998C8, &qword_1EA9998C0);
    }

    return sub_18AFCBCD4();
  }

  else
  {
    v9 = sub_18AFCBCD4();
    (*(v5 + 8))(v8, v4);
    return v9;
  }
}

uint64_t sub_18AEF3D90(char a1, uint64_t a2)
{
  v4 = sub_18AFCBB34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v9;
  v12 = (v5 + 88);
  v13 = *(v5 + 16);
  if (a1)
  {
    v13(v7, a2, v4, v10);
    if ((*v12)(v7, v4) == *MEMORY[0x1E697DBB8])
    {
      v14 = sub_18AFCC6D4();
      v15 = 1036831949;
LABEL_6:
      v21 = __PAIR64__(v15, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9998B0);
      sub_18AE95F54(&qword_1EA9998B8, &qword_1EA9998B0);
      return sub_18AFCBCD4();
    }

    sub_18AFCCD64();
    v17 = sub_18AFCCDA4();

    v21 = v17;
    v18 = sub_18AFCBCD4();
    (*(v5 + 8))(v7, v4);
    return v18;
  }

  else
  {
    v13(&v20 - v9, a2, v4, v10);
    if ((*v12)(v11, v4) == *MEMORY[0x1E697DBB8])
    {
      v14 = sub_18AFCC6D4();
      v15 = 1065353216;
      goto LABEL_6;
    }

    LODWORD(v21) = 1028443341;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9998A0);
    sub_18AE95F54(&qword_1EA9998A8, &qword_1EA9998A0);
    v19 = sub_18AFCBCD4();
    (*(v5 + 8))(v11, v4);
    return v19;
  }
}

uint64_t sub_18AEF4060()
{
  sub_18AFCCD24();
  sub_18AFCCDA4();

  return sub_18AFCBCD4();
}

uint64_t sub_18AEF40E8(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    sub_18AFCCD74();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9998A0);
    sub_18AE95F54(&qword_1EA9998A8, &qword_1EA9998A0);
  }

  return sub_18AFCBCD4();
}

uint64_t sub_18AEF41CC(unsigned __int8 a1)
{
  v1 = a1;
  v2 = sub_18AFCCCF4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998990);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_18AFD2A70;
  v7 = *MEMORY[0x1E69814D8];
  v8 = *(v3 + 104);
  v8(v5, v7, v2);
  sub_18AFCCF44();
  *(v6 + 32) = sub_18AFCD4F4();
  *(v6 + 40) = v9;
  sub_18AFCCD14();
  *(v6 + 48) = sub_18AFCD4F4();
  *(v6 + 56) = v10;
  sub_18AFCCD14();
  *(v6 + 64) = sub_18AFCD4F4();
  *(v6 + 72) = v11;
  sub_18AFCCD14();
  *(v6 + 80) = sub_18AFCD4F4();
  *(v6 + 88) = v12;
  sub_18AFCCD14();
  *(v6 + 96) = sub_18AFCD4F4();
  *(v6 + 104) = v13;
  v8(v5, v7, v2);
  sub_18AFCCF44();
  *(v6 + 112) = sub_18AFCD4F4();
  *(v6 + 120) = v14;
  sub_18AFCD504();
  sub_18AFCDD04();
  sub_18AFCBEB4();
  if (v1 == 1)
  {
    v16[1] = v20;
    v17 = v21;
    v18 = v22;
    v19 = 1056964608;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9998F8);
    sub_18AE95F54(&qword_1EA999900, &qword_1EA9998F8);
  }

  return sub_18AFCBCD4();
}

unint64_t sub_18AEF44D4()
{
  result = qword_1EA999908;
  if (!qword_1EA999908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999908);
  }

  return result;
}

unint64_t sub_18AEF453C()
{
  result = qword_1EA999910;
  if (!qword_1EA999910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999910);
  }

  return result;
}

unint64_t sub_18AEF45A4()
{
  result = qword_1EA999918;
  if (!qword_1EA999918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999918);
  }

  return result;
}

uint64_t type metadata accessor for iOSProgressView()
{
  result = qword_1EA999920;
  if (!qword_1EA999920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18AEF466C()
{
  sub_18AECE088(319, &qword_1EA9986F8, MEMORY[0x1E697DBD0]);
  if (v0 <= 0x3F)
  {
    sub_18AECE088(319, &qword_1EA998418, MEMORY[0x1E697F610]);
    if (v1 <= 0x3F)
    {
      sub_18AE7C05C(319, &qword_1EA999930);
      if (v2 <= 0x3F)
      {
        sub_18AE7C05C(319, &qword_1EA999938);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_18AEF479C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a1;
  v82 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999958);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v75 = (&v69 - v3);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999960);
  MEMORY[0x1EEE9AC00](v73);
  v78 = &v69 - v4;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999968);
  MEMORY[0x1EEE9AC00](v76);
  v6 = &v69 - v5;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999970);
  MEMORY[0x1EEE9AC00](v77);
  v81 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v74 = &v69 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v80 = &v69 - v11;
  v12 = sub_18AFCCFB4();
  v91 = *(v12 - 8);
  v92 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999978);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v69 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999980);
  MEMORY[0x1EEE9AC00](v18);
  v94 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v69 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v95 = &v69 - v24;
  sub_18AFCDF14();
  v79 = sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v25 = *MEMORY[0x1E697F468];
  v26 = sub_18AFCC534();
  (*(*(v26 - 8) + 104))(v17, v25, v26);
  v27 = v93;
  v28 = sub_18AEF513C();
  v29 = sub_18AEF5504(v28);

  *&v17[*(v15 + 52)] = v29;
  *&v17[*(v15 + 56)] = 256;
  sub_18AFCDB44();
  sub_18AFCC194();
  sub_18AE9A768(v17, v22, &qword_1EA999978);
  v30 = &v22[*(v18 + 36)];
  v31 = v110;
  *(v30 + 4) = v109;
  *(v30 + 5) = v31;
  *(v30 + 6) = v111;
  v32 = v106;
  *v30 = v105;
  *(v30 + 1) = v32;
  v33 = v108;
  *(v30 + 2) = v107;
  *(v30 + 3) = v33;
  sub_18AE9A768(v22, v95, &qword_1EA999980);
  v34 = type metadata accessor for iOSProgressView();
  if (*(v27 + *(v34 + 40)))
  {
    v36 = v91;
    v35 = v92;
    (*(v91 + 104))(v14, *MEMORY[0x1E6981630], v92);
    v37 = sub_18AFCD004();
    (*(v36 + 8))(v14, v35);
    sub_18AFCDB44();
    sub_18AFCC194();
    v71 = v114;
    v72 = v113;
    v91 = v115;
    v92 = v112;
    v89 = v118;
    v90 = v117;
    v87 = v120;
    v88 = v119;
    v85 = v122;
    v86 = v121;
    v83 = v124;
    v84 = v123;
    v69 = v125;
    v70 = v116;
  }

  else
  {
    v37 = 0;
    v91 = 0;
    v92 = 0;
    v71 = 0;
    v72 = 0;
    v69 = 0;
    v70 = 0;
    v89 = 0;
    v90 = 0;
    v87 = 0;
    v88 = 0;
    v85 = 0;
    v86 = 0;
    v83 = 0;
    v84 = 0;
  }

  v38 = sub_18AFCDB44();
  v39 = v75;
  *v75 = v38;
  v39[1] = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999988);
  v42 = v93;
  sub_18AEF5770(v93, v39 + *(v41 + 44));
  sub_18AFCDB44();
  sub_18AFCC194();
  v43 = v39;
  v44 = v78;
  sub_18AE9A768(v43, v78, &qword_1EA999958);
  v45 = (v44 + *(v73 + 36));
  v46 = v131;
  v45[4] = v130;
  v45[5] = v46;
  v45[6] = v132;
  v47 = v127;
  *v45 = v126;
  v45[1] = v47;
  v48 = v129;
  v45[2] = v128;
  v45[3] = v48;
  v49 = *(v42 + *(v34 + 24));
  sub_18AFCDD14();
  *v6 = v49;
  v6[8] = 0;
  *(v6 + 2) = 0;
  v6[24] = 1;
  *(v6 + 4) = v50;
  *(v6 + 5) = v51;
  sub_18AE9A768(v44, &v6[*(v76 + 44)], &qword_1EA999960);
  if (v49 == 0.0)
  {
    v52 = 0.0;
  }

  else
  {
    v52 = 1.0;
  }

  v53 = v74;
  sub_18AE9A768(v6, v74, &qword_1EA999968);
  *(v53 + *(v77 + 36)) = v52;
  v54 = v80;
  sub_18AE9A768(v53, v80, &qword_1EA999970);
  v55 = v94;
  sub_18AE83A40(v95, v94, &qword_1EA999980);
  v56 = v81;
  sub_18AE83A40(v54, v81, &qword_1EA999970);
  v57 = v82;
  sub_18AE83A40(v55, v82, &qword_1EA999980);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999990);
  v59 = v57 + *(v58 + 48);
  *&v96 = v37;
  *(&v96 + 1) = v92;
  v61 = v71;
  v60 = v72;
  *&v97 = v72;
  *(&v97 + 1) = v71;
  v62 = v69;
  v63 = v70;
  *&v98 = v91;
  *(&v98 + 1) = v70;
  *&v99 = v90;
  *(&v99 + 1) = v89;
  *&v100 = v88;
  *(&v100 + 1) = v87;
  *&v101 = v86;
  *(&v101 + 1) = v85;
  *&v102 = v84;
  *(&v102 + 1) = v83;
  v103 = v69;
  *(v59 + 112) = v69;
  v64 = v101;
  *(v59 + 64) = v100;
  *(v59 + 80) = v64;
  *(v59 + 96) = v102;
  v65 = v96;
  v66 = v97;
  v67 = v99;
  *(v59 + 32) = v98;
  *(v59 + 48) = v67;
  *v59 = v65;
  *(v59 + 16) = v66;
  sub_18AE83A40(v56, v57 + *(v58 + 64), &qword_1EA999970);
  sub_18AE83A40(&v96, v104, &qword_1EA999998);
  sub_18AE7BA80(v54, &qword_1EA999970);
  sub_18AE7BA80(v95, &qword_1EA999980);
  sub_18AE7BA80(v56, &qword_1EA999970);
  v104[0] = v37;
  v104[1] = v92;
  v104[2] = v60;
  v104[3] = v61;
  v104[4] = v91;
  v104[5] = v63;
  v104[6] = v90;
  v104[7] = v89;
  v104[8] = v88;
  v104[9] = v87;
  v104[10] = v86;
  v104[11] = v85;
  v104[12] = v84;
  v104[13] = v83;
  v104[14] = v62;
  sub_18AE7BA80(v104, &qword_1EA999998);
  sub_18AE7BA80(v94, &qword_1EA999980);
}

uint64_t sub_18AEF513C()
{
  v0 = sub_18AFCCCF4();
  v23 = *(v0 - 8);
  v24 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v22 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998768);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = sub_18AFCC5C4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18AFCBB34();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AED2E48(v13);
  type metadata accessor for iOSProgressView();
  sub_18AED2E70(v9);
  v14 = *(v3 + 56);
  (*(v11 + 32))(v5, v13, v10);
  (*(v7 + 32))(&v5[v14], v9, v6);
  LODWORD(v3) = (*(v11 + 88))(v5, v10);
  LODWORD(v13) = *MEMORY[0x1E697DBA8];
  v20 = v7;
  v21 = v6;
  v15 = (*(v7 + 88))(&v5[v14], v6);
  v16 = *MEMORY[0x1E697F608];
  (*(v23 + 104))();
  if (v3 == v13)
  {
    if (v15 == v16)
    {
      return sub_18AFCCF44();
    }

    else
    {
      v17 = sub_18AFCCF44();
      (*(v20 + 8))(&v5[v14], v21);
    }
  }

  else
  {
    if (v15 == v16)
    {
      v17 = sub_18AFCCF44();
    }

    else
    {
      v17 = sub_18AFCCF44();
      (*(v20 + 8))(&v5[v14], v21);
    }

    (*(v11 + 8))(v5, v10);
  }

  return v17;
}

uint64_t sub_18AEF5504(uint64_t a1)
{
  v2 = sub_18AFCCCF4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18AFCC474();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFCC464();
  sub_18AFCCDC4();
  (*(v7 + 8))(v9, v6);
  sub_18AFCCE24();
  sub_18AFCCE54();
  sub_18AFCCE34();
  (*(v3 + 104))(v5, *MEMORY[0x1E69814D8], v2);
  v10 = sub_18AFCCF44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997A48);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_18AFCEB10;
  *(v11 + 32) = v10;
  *(v11 + 40) = a1;

  return MEMORY[0x18CFEC880](v11);
}

uint64_t sub_18AEF5770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a1;
  v56 = a2;
  v2 = sub_18AFCCFB4();
  v58 = *(v2 - 8);
  v59 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v57 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9999A0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v49 - v5;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9999A8);
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v49 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v63 = &v49 - v12;
  sub_18AFCDF14();
  v55 = sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = *MEMORY[0x1E697F468];
  v14 = sub_18AFCC534();
  v15 = *(*(v14 - 8) + 104);
  v15(v6, v13, v14);
  v16 = sub_18AFCCD64();
  v17 = sub_18AEF5504(v16);

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999978);
  *&v6[*(v18 + 52)] = v17;
  *&v6[*(v18 + 56)] = 256;
  v19 = &v6[*(v4 + 36)];
  v15(v19, v13, v14);
  *&v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998A38) + 36)] = 256;
  sub_18AFCDB44();
  sub_18AFCC194();
  sub_18AE9A768(v6, v10, &qword_1EA9999A0);
  v20 = &v10[*(v60 + 36)];
  v21 = v78;
  *(v20 + 4) = v77;
  *(v20 + 5) = v21;
  *(v20 + 6) = v79;
  v22 = v74;
  *v20 = v73;
  *(v20 + 1) = v22;
  v23 = v76;
  *(v20 + 2) = v75;
  *(v20 + 3) = v23;
  sub_18AE9A768(v10, v63, &qword_1EA9999A8);
  if (*(v61 + *(type metadata accessor for iOSProgressView() + 36)))
  {
    v25 = v57;
    v24 = v58;
    v26 = v59;
    (*(v58 + 104))(v57, *MEMORY[0x1E6981630], v59);
    v51 = sub_18AFCD004();
    (*(v24 + 8))(v25, v26);
    sub_18AFCDB44();
    sub_18AFCC194();
    v27 = v80;
    v28 = v81;
    v29 = v82;
    v30 = v83;
    v53 = v86;
    v54 = v85;
    v52 = v87;
    v60 = v88;
    v61 = v84;
    v58 = v90;
    v59 = v89;
    v57 = v91;
    v32 = v92;
    v31 = v93;
  }

  else
  {
    v51 = 0;
    v52 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v60 = 0;
    v61 = 0;
    v53 = 0;
    v54 = 0;
    v58 = 0;
    v59 = 0;
    v57 = 0;
    v32 = 0;
    v31 = 0;
  }

  v33 = v62;
  sub_18AE83A40(v63, v62, &qword_1EA9999A8);
  v34 = v33;
  v35 = v56;
  sub_18AE83A40(v34, v56, &qword_1EA9999A8);
  v36 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9999B0) + 48);
  v37 = v51;
  *&v64 = v51;
  *(&v64 + 1) = v27;
  v38 = v27;
  v39 = v28;
  *&v65 = v28;
  *(&v65 + 1) = v29;
  *&v66 = v30;
  *(&v66 + 1) = v61;
  v40 = v53;
  v41 = v54;
  *&v67 = v54;
  *(&v67 + 1) = v53;
  v42 = v52;
  *&v68 = v52;
  *(&v68 + 1) = v60;
  *&v69 = v59;
  *(&v69 + 1) = v58;
  *&v70 = v57;
  *(&v70 + 1) = v32;
  v50 = v32;
  v71 = v31;
  *(v36 + 112) = v31;
  v43 = v69;
  *(v36 + 64) = v68;
  *(v36 + 80) = v43;
  *(v36 + 96) = v70;
  v44 = v64;
  v45 = v65;
  v46 = v67;
  *(v36 + 32) = v66;
  *(v36 + 48) = v46;
  *v36 = v44;
  *(v36 + 16) = v45;
  v47 = v39;
  sub_18AE83A40(&v64, v72, &qword_1EA999998);
  sub_18AE7BA80(v63, &qword_1EA9999A8);
  v72[0] = v37;
  v72[1] = v38;
  v72[2] = v47;
  v72[3] = v29;
  v72[4] = v30;
  v72[5] = v61;
  v72[6] = v41;
  v72[7] = v40;
  v72[8] = v42;
  v72[9] = v60;
  v72[10] = v59;
  v72[11] = v58;
  v72[12] = v57;
  v72[13] = v50;
  v72[14] = v31;
  sub_18AE7BA80(v72, &qword_1EA999998);
  sub_18AE7BA80(v62, &qword_1EA9999A8);
}

double sub_18AEF5DC0@<D0>(uint64_t *a1@<X8>)
{
  *a1 = sub_18AFCDB44();
  a1[1] = v3;
  sub_18AFCDF14();
  sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999940) + 44));
  *v4 = sub_18AFCDB44();
  v4[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999948);
  sub_18AEF479C(v1, v4 + *(v6 + 44));
  sub_18AFCDB44();
  sub_18AFCBCC4();

  v7 = (v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999950) + 36));
  *v7 = v9;
  v7[1] = v10;
  result = *&v11;
  v7[2] = v11;
  return result;
}

unint64_t sub_18AEF5EFC()
{
  result = qword_1EA9999B8;
  if (!qword_1EA9999B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9999C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9999B8);
  }

  return result;
}

void sub_18AEF5FA8()
{
  sub_18AEF6188(319, &qword_1EA9999C8, MEMORY[0x1E69E63B0], MEMORY[0x1E6981790]);
  if (v0 <= 0x3F)
  {
    sub_18AEF6188(319, &qword_1EA9999D0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SwitchSpecs(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for CGSize(319);
        if (v3 <= 0x3F)
        {
          sub_18AEF6188(319, &qword_1EA999930, MEMORY[0x1E697E0B8], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_18AEF6188(319, &qword_1EA999938, MEMORY[0x1E6981748], MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_18AEF6188(319, &qword_1EA997C38, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_18AEF6188(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_18AEF61F4@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = type metadata accessor for iOSSwitchEngineering(0);
  v33 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v2);
  v34 = v3;
  v35 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9999D8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v32 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9999E0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9999E8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  v13 = *(v1 + v2[10]);
  if (v13 == 1)
  {
    v14 = sub_18AFCDB64();
  }

  else
  {
    v14 = sub_18AFCDB54();
  }

  *v6 = v14;
  v6[1] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9999F0);
  v17 = sub_18AEF6578(v1, v6 + *(v16 + 44));
  v18 = v2[9];
  v19.n128_u64[0] = 0x3FDE147AE147AE14;
  if (*(v1 + v18) == 3)
  {
    v19.n128_f64[0] = 0.3;
  }

  v20 = MEMORY[0x18CFECEE0](v17, v19, 1.0, 0.0);
  v21 = sub_18AE9A768(v6, v9, &qword_1EA9999D8);
  v22 = &v9[*(v7 + 36)];
  *v22 = v20;
  v23 = *(v1 + v18);
  v22[8] = v13;
  v24.n128_u64[0] = 0x3FC999999999999ALL;
  if (v23 != 3)
  {
    v24.n128_f64[0] = 0.25;
  }

  v25 = MEMORY[0x18CFECEE0](v21, v24, 1.0, 0.0);
  v26 = *(v1 + v18);
  sub_18AE9A768(v9, v12, &qword_1EA9999E0);
  v27 = &v12[*(v10 + 36)];
  *v27 = v25;
  v27[8] = v26;
  v37 = *(v1 + v2[11]);
  v28 = v35;
  sub_18AEF93C4(v1, v35, type metadata accessor for iOSSwitchEngineering);
  v29 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v30 = swift_allocObject();
  sub_18AEF8CE8(v28, v30 + v29);
  sub_18AEF8D64();
  sub_18AFCCC44();

  return sub_18AE7BA80(v12, &qword_1EA9999E8);
}

uint64_t sub_18AEF6578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999A30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v31[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31[-v8 - 8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999A38);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31[-v14 - 8];
  sub_18AFCDF14();
  v30 = sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = *MEMORY[0x1E697F468];
  v17 = sub_18AFCC534();
  (*(*(v17 - 8) + 104))(v15, v16, v17);
  v18 = type metadata accessor for iOSSwitchEngineering(0);
  v19 = sub_18AECB380(*(a1 + *(v18 + 40)));
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999778);
  *&v15[*(v20 + 52)] = v19;
  *&v15[*(v20 + 56)] = 256;
  sub_18AFCDB44();
  sub_18AFCBCC4();
  v21 = &v15[*(v10 + 36)];
  v22 = v36;
  *v21 = v35;
  v21[1] = v22;
  v21[2] = v37;
  sub_18AEF696C(v32);
  sub_18AEF6E78(v9);
  sub_18AE83A40(v15, v12, &qword_1EA999A38);
  memcpy(v31, v32, sizeof(v31));
  sub_18AE83A40(v9, v6, &qword_1EA999A30);
  sub_18AE83A40(v12, a2, &qword_1EA999A38);
  v23 = v9;
  v24 = a2;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999A40);
  v26 = v12;
  v27 = v6;
  v28 = *(v25 + 48);
  memcpy(v33, v31, 0x111uLL);
  memcpy((v24 + v28), v31, 0x111uLL);
  sub_18AE83A40(v27, v24 + *(v25 + 64), &qword_1EA999A30);
  sub_18AE83A40(v33, v34, &qword_1EA999A48);
  sub_18AE7BA80(v23, &qword_1EA999A30);
  sub_18AE7BA80(v15, &qword_1EA999A38);
  sub_18AE7BA80(v27, &qword_1EA999A30);
  memcpy(v34, v31, 0x111uLL);
  sub_18AE7BA80(v34, &qword_1EA999A48);
  sub_18AE7BA80(v26, &qword_1EA999A38);
}

void *sub_18AEF696C@<X0>(void *a1@<X8>)
{
  v3 = sub_18AFCC474();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = type metadata accessor for iOSSwitchEngineering(0);
  v8 = v1 + v7[17];
  v9 = *v8;
  if (*(v8 + 8) != 1)
  {

    sub_18AFCE024();
    v12 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v9, 0);
    (*(v4 + 8))(v6, v3);
    if ((v47[0] & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v10 = *(v1 + v7[15]);
    v11 = 1;
    if (v10)
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (v9)
  {
    goto LABEL_6;
  }

LABEL_3:
  v10 = *(v1 + v7[15]);
  if (v10)
  {
    v11 = *(v1 + v7[16]) != 0;
LABEL_7:
    v13 = v10;
    goto LABEL_10;
  }

  v11 = 0;
LABEL_9:
  v13 = sub_18AFCCFA4();
LABEL_10:
  v14 = *(v1 + v7[16]);
  if (v14)
  {

    v15 = v14;
    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {

    v15 = sub_18AFCCFA4();
    if (!v11)
    {
      goto LABEL_15;
    }
  }

  if (*(v1 + v7[9]) - 3 >= 2)
  {

    v16 = sub_18AFCC504();
    v31 = 1;
    sub_18AEF7738(v13, v1, v15, v47);
    v42 = v47[10];
    v43 = v47[11];
    v38 = v47[6];
    v39 = v47[7];
    v40 = v47[8];
    v41 = v47[9];
    v34 = v47[2];
    v35 = v47[3];
    v36 = v47[4];
    v37 = v47[5];
    v32 = v47[0];
    v33 = v47[1];
    v45[9] = v47[9];
    v45[10] = v47[10];
    v45[11] = v47[11];
    v45[12] = v47[12];
    v45[5] = v47[5];
    v45[6] = v47[6];
    v45[7] = v47[7];
    v45[8] = v47[8];
    v45[1] = v47[1];
    v45[2] = v47[2];
    v45[3] = v47[3];
    v45[4] = v47[4];
    v44 = v47[12];
    v45[0] = v47[0];
    sub_18AE83A40(&v32, v46, &qword_1EA999A68);
    sub_18AE7BA80(v45, &qword_1EA999A68);
    *&v30[151] = v41;
    *&v30[167] = v42;
    *&v30[183] = v43;
    *&v30[199] = v44;
    *&v30[87] = v37;
    *&v30[103] = v38;
    *&v30[119] = v39;
    *&v30[135] = v40;
    *&v30[23] = v33;
    *&v30[39] = v34;
    *&v30[55] = v35;
    *&v30[71] = v36;
    *&v30[7] = v32;
    v17 = v31;
    v18 = sub_18AFCC844();
    sub_18AFCBAA4();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    *(&v46[22] + 1) = *&v30[160];
    *(&v46[24] + 1) = *&v30[176];
    *(&v46[26] + 1) = *&v30[192];
    *(&v46[14] + 1) = *&v30[96];
    *(&v46[16] + 1) = *&v30[112];
    *(&v46[18] + 1) = *&v30[128];
    *(&v46[20] + 1) = *&v30[144];
    *(&v46[6] + 1) = *&v30[32];
    *(&v46[8] + 1) = *&v30[48];
    *(&v46[10] + 1) = *&v30[64];
    *(&v46[12] + 1) = *&v30[80];
    *(&v46[2] + 1) = *v30;
    v46[0] = v16;
    v46[1] = 0;
    LOBYTE(v46[2]) = v17;
    v46[28] = *&v30[207];
    *(&v46[4] + 1) = *&v30[16];
    LOBYTE(v46[29]) = v18;
    v46[30] = v20;
    v46[31] = v22;
    v46[32] = v24;
    v46[33] = v26;
    LOBYTE(v46[34]) = 0;
    CGPointMake(v46, v27);
    memcpy(v47, v46, 0x111uLL);
    return memcpy(a1, v47, 0x111uLL);
  }

LABEL_15:

  sub_18AEF9270(v47);
  return memcpy(a1, v47, 0x111uLL);
}

uint64_t sub_18AEF6E78@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v45 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999A50);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = (v42 - v5);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999A58);
  MEMORY[0x1EEE9AC00](v44);
  v8 = v42 - v7;
  v9 = type metadata accessor for iOSSwitchEngineering(0);
  v10 = v1 + v9[8];
  v12 = *v10;
  v11 = *(v10 + 8);
  v13 = v1[3];
  v14 = *(v10 + 16);
  LOBYTE(v49) = *(v1 + 16);
  *(&v49 + 1) = v13;
  sub_18AEF9238(v12, v11, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999A28);
  sub_18AFCD0C4();
  v15 = v47;
  v16 = *v1;
  v17 = v1[1];
  *&v49 = *v1;
  v43 = v17;
  *(&v49 + 1) = v17;
  v42[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999A20);
  sub_18AFCD0C4();
  v18 = v47;
  sub_18AECC260(v6);
  v19 = type metadata accessor for iOSSwitchEngineering.KnobBase(0);
  v20 = v6 + v19[5];
  *v20 = v12;
  *(v20 + 1) = v11;
  v20[16] = v14;
  *(v6 + v19[6]) = v15;
  *(v6 + v19[7]) = v18;
  sub_18AECB204();
  sub_18AECB204();
  sub_18AFCDB44();
  sub_18AFCBCC4();
  v21 = (v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999A60) + 36));
  v22 = v50;
  *v21 = v49;
  v21[1] = v22;
  v21[2] = v51;
  type metadata accessor for SwitchSpecs(0);
  LOBYTE(v11) = sub_18AFCC854();
  sub_18AFCBAA4();
  v23 = v6 + *(v4 + 44);
  *v23 = v11;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  v28 = v9[9];
  v29 = *(v1 + v28);
  if (*(v2 + v9[10]) == 1)
  {
    sub_18AFCDD14();
  }

  else
  {
    sub_18AFCDD24();
  }

  v32 = v30;
  v33 = v31;
  if (v29 == 3)
  {
    v34 = 1.55;
  }

  else
  {
    v34 = 1.0;
  }

  sub_18AE9A768(v6, v8, &qword_1EA999A50);
  v35 = &v8[*(v44 + 36)];
  *v35 = v34;
  *(v35 + 1) = v34;
  *(v35 + 2) = v32;
  *(v35 + 3) = v33;
  v47 = v16;
  v48 = v43;
  sub_18AFCD0C4();
  v36 = v46;
  v37 = *(v2 + v28);
  v47 = 0;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999A30);
  v39 = v45;
  v40 = v45 + *(v38 + 36);
  type metadata accessor for SwitchKnobKeyframeAnimationModifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998720);
  sub_18AE95F54(&qword_1EA9977F0, &qword_1EA998720);
  sub_18AFCC074();
  *v40 = v36;
  *(v40 + 8) = v37;
  return sub_18AE9A768(v8, v39, &qword_1EA999A58);
}

uint64_t sub_18AEF723C(uint64_t a1)
{
  v2 = type metadata accessor for iOSSwitchEngineering(0);
  v15 = *(v2 - 8);
  v3 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v4 = sub_18AFCC764();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFCDF14();
  sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = *(a1 + 8);
  v17 = *a1;
  v18 = v8;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999A20);
  sub_18AFCD0D4();
  v9 = *(a1 + 24);
  LOBYTE(v17) = *(a1 + 16);
  v18 = v9;
  LOBYTE(v16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999A28);
  sub_18AFCD0D4();
  type metadata accessor for SwitchSpecs(0);
  v10 = sub_18AFCC754();
  MEMORY[0x1EEE9AC00](v10);
  *(&v14 - 2) = a1;
  sub_18AEF93C4(a1, &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for iOSSwitchEngineering);
  v11 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v12 = swift_allocObject();
  sub_18AEF8CE8(&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  sub_18AFCBDE4();

  (*(v5 + 8))(v7, v4);
}

uint64_t sub_18AEF7554()
{
  sub_18AFCDF14();
  sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999A20);
  sub_18AFCD0D4();
}

uint64_t sub_18AEF7634()
{
  sub_18AFCDF14();
  sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999A28);
  sub_18AFCD0D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999A20);
  sub_18AFCD0D4();
}

uint64_t sub_18AEF7738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  KeyPath = a2;
  v62 = a3;
  v60 = a1;
  v69 = a4;
  v71 = sub_18AFCCCF4();
  v67 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v68 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_18AFCC5C4();
  v65 = *(v5 - 8);
  v66 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v64 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v49 - v8;
  v9 = sub_18AFCCFB4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999A70);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v49 - v14;
  sub_18AFCDF14();
  v70 = sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v56 = *MEMORY[0x1E6981698];
  v16 = v56;
  v17 = sub_18AFCCFD4();
  v18 = *(v17 - 8);
  v19 = v18;
  v55 = *(v18 + 104);
  v57 = v18 + 104;
  v55(v15, v16, v17);
  v54 = *(v19 + 56);
  (v54)(v15, 0, 1, v17);
  sub_18AFCCFC4();
  sub_18AE7BA80(v15, &qword_1EA999A70);
  v53 = *MEMORY[0x1E6981630];
  v52 = *(v10 + 104);
  v52(v12);
  v60 = sub_18AFCD004();

  v51 = *(v10 + 8);
  v51(v12, v9);
  sub_18AFCDB44();
  sub_18AFCBCC4();
  LOBYTE(v88[0]) = 1;
  *&v98[3] = *&v98[27];
  *&v98[11] = *&v98[35];
  *&v98[19] = *&v98[43];
  v20 = KeyPath + *(type metadata accessor for iOSSwitchEngineering(0) + 24);
  v21 = type metadata accessor for SwitchSpecs(0);
  v49 = v20;
  v50 = v21;
  v22 = *(v20 + *(v21 + 52));
  KeyPath = swift_getKeyPath();
  v59 = v22;
  v88[0] = v22;
  swift_retain_n();
  v58 = sub_18AFCBCD4();
  v55(v15, v56, v17);
  (v54)(v15, 0, 1, v17);
  sub_18AFCCFC4();
  sub_18AE7BA80(v15, &qword_1EA999A70);
  (v52)(v12, v53, v9);
  v62 = sub_18AFCD004();

  v51(v12, v9);
  sub_18AFCDB44();
  sub_18AFCBCC4();
  v97 = 1;
  *&v96[22] = *&v98[59];
  *&v96[38] = *&v98[67];
  *&v96[6] = *&v98[51];
  v57 = *(v50 + 24);
  v23 = v63;
  sub_18AED2E70(v63);
  v56 = *MEMORY[0x1E697F608];
  v24 = v64;
  v25 = v65;
  v55 = *(v65 + 104);
  v26 = v66;
  (v55)(v64);
  sub_18AFCBB24();
  v27 = *(v25 + 8);
  v27(v24, v26);
  v27(v23, v26);
  LODWORD(v65) = *MEMORY[0x1E69814D8];
  v28 = v68;
  v54 = *(v67 + 104);
  v54(v68);
  v67 = sub_18AFCCF54();
  sub_18AED2E70(v23);
  v55(v24, v56, v26);
  sub_18AFCBB24();
  v27(v24, v26);
  v27(v23, v26);
  (v54)(v28, v65, v71);
  v29 = sub_18AFCCF54();
  v30 = swift_getKeyPath();
  v88[0] = v29;
  v31 = sub_18AFCBCD4();
  v33 = v59;
  v32 = v60;
  v74[0] = v60;
  v74[1] = 0;
  LOWORD(v75[0]) = 1;
  *(v75 + 2) = *v98;
  *(&v75[1] + 2) = *&v98[8];
  *(&v75[2] + 2) = *&v98[16];
  *&v75[3] = *&v98[23];
  *(&v75[3] + 1) = v59;
  v35 = KeyPath;
  v34 = v62;
  v36 = v58;
  *&v76 = KeyPath;
  *(&v76 + 1) = v58;
  v73 = 1;
  v77[0] = v62;
  v77[1] = 0;
  LOWORD(v78[0]) = 1;
  *&v78[3] = *&v96[46];
  *(&v78[2] + 2) = *&v96[32];
  *(&v78[1] + 2) = *&v96[16];
  *(v78 + 2) = *v96;
  v37 = v67;
  *(&v78[3] + 1) = v67;
  *&v79 = v30;
  *(&v79 + 1) = v31;
  *&v72[23] = v78[0];
  *&v72[7] = v62;
  *&v72[87] = v79;
  *&v72[71] = v78[3];
  *&v72[55] = v78[2];
  *&v72[39] = v78[1];
  v38 = v75[0];
  v39 = v69;
  *v69 = v60;
  v39[1] = v38;
  v40 = v75[1];
  v41 = v75[2];
  v42 = v76;
  v39[4] = v75[3];
  v39[5] = v42;
  v39[2] = v40;
  v39[3] = v41;
  *(v39 + 12) = 0;
  *(v39 + 104) = 1;
  v43 = *v72;
  v44 = *&v72[16];
  v45 = *&v72[48];
  *(v39 + 137) = *&v72[32];
  *(v39 + 121) = v44;
  *(v39 + 105) = v43;
  v46 = *&v72[64];
  v47 = *&v72[80];
  *(v39 + 25) = *&v72[95];
  *(v39 + 185) = v47;
  *(v39 + 169) = v46;
  *(v39 + 153) = v45;
  v80[0] = v34;
  v80[1] = 0;
  v81 = 1;
  *&v84[14] = *&v96[46];
  *v84 = *&v96[32];
  v83 = *&v96[16];
  v82 = *v96;
  v85 = v37;
  v86 = v30;
  v87 = v31;
  sub_18AE83A40(v74, v88, &qword_1EA999A78);
  sub_18AE83A40(v77, v88, &qword_1EA999A78);
  sub_18AE7BA80(v80, &qword_1EA999A78);
  v88[0] = v32;
  v88[1] = 0;
  v89 = 1;
  v90 = *v98;
  v91 = *&v98[8];
  *v92 = *&v98[16];
  *&v92[14] = *&v98[23];
  v93 = v33;
  v94 = v35;
  v95 = v36;
  sub_18AE7BA80(v88, &qword_1EA999A78);
}

uint64_t sub_18AEF80B8@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999A80);
  MEMORY[0x1EEE9AC00](v66);
  v67 = (&v56 - v2);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999A88);
  MEMORY[0x1EEE9AC00](v57);
  v58 = (&v56 - v3);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999A90);
  MEMORY[0x1EEE9AC00](v65);
  v59 = &v56 - v4;
  v60 = sub_18AFCCCF4();
  v5 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999A98);
  MEMORY[0x1EEE9AC00](v61);
  v9 = &v56 - v8;
  v10 = sub_18AFCC474();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_18AFCD4A4();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999AA0);
  MEMORY[0x1EEE9AC00](v62);
  v56 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v64 = &v56 - v19;
  v20 = *MEMORY[0x1E697F468];
  v21 = sub_18AFCC534();
  v22 = *(*(v21 - 8) + 104);
  v69 = v16;
  v22(v16, v20, v21);
  sub_18AFCCD94();
  v23 = *(type metadata accessor for SwitchSpecs(0) + 20);
  v63 = v1;
  v24 = v1 + v23;
  v25 = *v24;
  if (*(v24 + 8) != 1)
  {

    sub_18AFCE024();
    v26 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v25, 0);
    (*(v11 + 8))(v13, v10);
  }

  v27 = sub_18AFCCDA4();

  v28 = *MEMORY[0x1E69814D8];
  v29 = *(v5 + 104);
  v30 = v60;
  v29(v7, v28, v60);
  sub_18AFCCF54();
  v31 = v61;
  v32 = &v9[*(v61 + 52)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999AA8);
  sub_18AFCBB74();

  *v32 = v27;
  v33 = MEMORY[0x1E6981998];
  sub_18AEF93C4(v69, v9, MEMORY[0x1E6981998]);
  *&v9[*(v31 + 56)] = 256;
  v29(v7, v28, v30);

  v34 = sub_18AFCCF44();
  sub_18AFCBB94();
  v35 = v64;
  sub_18AEF93C4(v9, v64, v33);
  v36 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999AB0) + 36);
  v37 = v71;
  *v36 = v70;
  *(v36 + 16) = v37;
  *(v36 + 32) = v72;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999AB8);
  *(v35 + *(v38 + 52)) = v34;
  *(v35 + *(v38 + 56)) = 256;
  v39 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999AC0) + 36);
  sub_18AE83A40(v9, v39, &qword_1EA999A98);
  v40 = sub_18AFCDB44();
  v42 = v41;

  sub_18AE7BA80(v9, &qword_1EA999A98);
  sub_18AEF0D88(v69);
  v43 = (v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999AC8) + 36));
  *v43 = v40;
  v43[1] = v42;
  v44 = type metadata accessor for iOSSwitchEngineering.KnobBase(0);
  v45 = 0;
  if (*(v63 + v44[6]) == 1)
  {
    v45 = *(v63 + v44[7]) < 0.75;
  }

  v46 = v63 + v44[5];
  v47 = *v46;
  v48 = *(v46 + 8);
  v49 = *(v46 + 16);
  if (!v49)
  {

    v51 = (v47)(v45);
    *v58 = v51;
    swift_storeEnumTagMultiPayload();
    sub_18AE95F54(&qword_1EA9977D0, &qword_1EA999AA0);

    v52 = v59;
    sub_18AFCC614();
    sub_18AE83A40(v52, v67, &qword_1EA999A90);
    swift_storeEnumTagMultiPayload();
    sub_18AEF942C();
    sub_18AFCC614();
    sub_18AEF8CD0(v47, v48, 0);

    v53 = v52;
LABEL_10:
    sub_18AE7BA80(v53, &qword_1EA999A90);
    return sub_18AE7BA80(v35, &qword_1EA999AA0);
  }

  if (v49 != 1)
  {
    sub_18AE83A40(v35, v58, &qword_1EA999AA0);
    swift_storeEnumTagMultiPayload();
    sub_18AE95F54(&qword_1EA9977D0, &qword_1EA999AA0);
    v54 = v59;
    sub_18AFCC614();
    sub_18AE83A40(v54, v67, &qword_1EA999A90);
    swift_storeEnumTagMultiPayload();
    sub_18AEF942C();
    sub_18AFCC614();
    v53 = v54;
    goto LABEL_10;
  }

  sub_18AE83A40(v35, v56, &qword_1EA999AA0);
  sub_18AE95F54(&qword_1EA9977D0, &qword_1EA999AA0);

  sub_18AFCD464();
  v50 = v47();

  *v67 = v50;
  swift_storeEnumTagMultiPayload();
  sub_18AEF942C();

  sub_18AFCC614();
  sub_18AEF8CD0(v47, v48, 1u);

  return sub_18AE7BA80(v35, &qword_1EA999AA0);
}

uint64_t sub_18AEF8AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_18AEF94E4();

  return MEMORY[0x1EEDE3690](a1, a2, a3, v8, a4);
}

uint64_t sub_18AEF8B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_18AEF94E4();

  return MEMORY[0x1EEDE3698](a1, a2, a3, v8, a4);
}

uint64_t sub_18AEF8B90@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = *(v2 + *(a1 + 28));
  v4 = v6;
  result = (*(*(MEMORY[0x1E69E63B0] - 8) + 8))(&v6);
  *a2 = v4;
  return result;
}

double sub_18AEF8C04(double *a1, uint64_t a2)
{
  result = *a1;
  *(v2 + *(a2 + 28)) = *a1;
  return result;
}

double (*sub_18AEF8C14(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  *(a1 + 16) = v2;
  v4 = *(a2 + 28);
  *(a1 + 24) = v4;
  v5 = *(v2 + v4);
  *a1 = v5;
  (*(*(MEMORY[0x1E69E63B0] - 8) + 8))();
  *(a1 + 8) = v5;
  return sub_18AEF8CA0;
}

double sub_18AEF8CA0(uint64_t a1)
{
  result = *(a1 + 8);
  *(*(a1 + 16) + *(a1 + 24)) = result;
  return result;
}

uint64_t sub_18AEF8CD0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_18AEF8CE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for iOSSwitchEngineering(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_18AEF8D64()
{
  result = qword_1EA9999F8;
  if (!qword_1EA9999F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9999E8);
    sub_18AEF8E1C();
    sub_18AE95F54(&qword_1EA9977A8, &qword_1EA999A18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9999F8);
  }

  return result;
}

unint64_t sub_18AEF8E1C()
{
  result = qword_1EA999A00;
  if (!qword_1EA999A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9999E0);
    sub_18AE95F54(&qword_1EA999A08, &qword_1EA9999D8);
    sub_18AE95F54(&qword_1EA9977A0, &qword_1EA999A10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999A00);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for iOSSwitchEngineering(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v2 + v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998148);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_18AFCBB34();
    (*(*(v4 - 8) + 8))(v3, v4);
  }

  else
  {
  }

  v5 = type metadata accessor for SwitchSpecs(0);
  sub_18AE9B234(*(v3 + v5[5]), *(v3 + v5[5] + 8));
  v6 = v5[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_18AFCC5C4();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  j__swift_release();
  sub_18AE9B234(*(v3 + v5[8]), *(v3 + v5[8] + 8));
  sub_18AECE16C(*(v3 + v5[9]), *(v3 + v5[9] + 8));

  sub_18AEF8CD0(*(v2 + v1[8]), *(v2 + v1[8] + 8), *(v2 + v1[8] + 16));

  sub_18AE9B234(*(v2 + v1[17]), *(v2 + v1[17] + 8));

  return swift_deallocObject();
}

uint64_t sub_18AEF91C4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for iOSSwitchEngineering(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_18AEF9238(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

double sub_18AEF9270(uint64_t a1)
{
  *(a1 + 272) = 0;
  result = 0.0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_18AEF92A0@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x18CFEB700]();
  *a1 = result;
  return result;
}

uint64_t sub_18AEF9320()
{
  result = type metadata accessor for SwitchSpecs(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_18AEF93C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_18AEF942C()
{
  result = qword_1EA997790;
  if (!qword_1EA997790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999A90);
    sub_18AE95F54(&qword_1EA9977D0, &qword_1EA999AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA997790);
  }

  return result;
}

unint64_t sub_18AEF94E4()
{
  result = qword_1EA997878;
  if (!qword_1EA997878)
  {
    type metadata accessor for iOSSwitchEngineering.KnobBase(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA997878);
  }

  return result;
}

unint64_t sub_18AEF953C()
{
  result = qword_1EA997780;
  if (!qword_1EA997780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EA999AD0);
    sub_18AEF942C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA997780);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MacButtonGlassForegroundStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE)
  {
    if ((a2 + 33554178) >> 24)
    {
      v2 = a1[3];
      if (a1[3])
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776962;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776962;
      }
    }
  }

  v4 = a1[1];
  v5 = v4 >= 3;
  v6 = v4 - 3;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for MacButtonGlassForegroundStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554178) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFD)
  {
    v3 = 0;
  }

  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 2) = (a2 - 254) >> 16;
    if (v3)
    {
      v4 = ((a2 - 254) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 1) = a2 + 2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

void sub_18AEF96D4()
{
  sub_18AEB31C4();
  if (v0 <= 0x3F)
  {
    sub_18AED6EAC(319, &qword_1EA998418, MEMORY[0x1E697F610]);
    if (v1 <= 0x3F)
    {
      sub_18AED6EAC(319, &qword_1EA998B40, type metadata accessor for ResolvedButtonBorderShape);
      if (v2 <= 0x3F)
      {
        sub_18AEF9E88();
        if (v3 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_18AEF9810(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_18AFCC5C4() - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = *(sub_18AFCBB54() - 8);
  v9 = *(v8 + 64);
  if ((v9 + 1) > 8)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 8;
  }

  v11 = *(*(a3 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v8 + 80);
  v14 = *(v11 + 80);
  if (v12 <= 0xFE)
  {
    v15 = 254;
  }

  else
  {
    v15 = *(v11 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(v6 + 80) & 0xF8;
  v17 = v16 | 7;
  v18 = v13 & 0xF8 | 7;
  v19 = v7 + v18 + 1;
  v20 = v10 + 8;
  v21 = v14 + 14;
  if (a2 <= v15)
  {
    goto LABEL_34;
  }

  v22 = ((v21 + ((v20 + ((v19 + ((v16 + 16) & ~v17)) & ~v18)) & 0xFFFFFFFFFFFFFFF8)) & ~v14) + *(v11 + 64);
  v23 = 8 * v22;
  if (v22 <= 3)
  {
    v26 = ((a2 - v15 + ~(-1 << v23)) >> v23) + 1;
    if (HIWORD(v26))
    {
      v24 = *(a1 + v22);
      if (!v24)
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v26 > 0xFF)
    {
      v24 = *(a1 + v22);
      if (!*(a1 + v22))
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v26 < 2)
    {
LABEL_34:
      if (v12 > 0xFE)
      {
        v31 = *(v11 + 48);

        return v31((v21 + ((v20 + ((v19 + ((a1 + v17 + 9) & ~v17)) & ~v18)) & 0xFFFFFFFFFFFFFFF8)) & ~v14);
      }

      else
      {
        v30 = *(a1 + 8);
        if (v30 > 1)
        {
          return (v30 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v24 = *(a1 + v22);
  if (!*(a1 + v22))
  {
    goto LABEL_34;
  }

LABEL_21:
  v27 = (v24 - 1) << v23;
  if (v22 > 3)
  {
    v27 = 0;
  }

  if (v22)
  {
    if (v22 <= 3)
    {
      v28 = v22;
    }

    else
    {
      v28 = 4;
    }

    if (v28 > 2)
    {
      if (v28 == 3)
      {
        v29 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v29 = *a1;
      }
    }

    else if (v28 == 1)
    {
      v29 = *a1;
    }

    else
    {
      v29 = *a1;
    }
  }

  else
  {
    v29 = 0;
  }

  return v15 + (v29 | v27) + 1;
}

void sub_18AEF9AF4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_18AFCC5C4() - 8);
  if (*(v8 + 64) <= 8uLL)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(v8 + 64);
  }

  v10 = *(sub_18AFCBB54() - 8);
  v11 = *(v10 + 64);
  if ((v11 + 1) > 8)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 8;
  }

  v13 = *(*(a4 + 16) - 8);
  v14 = *(v13 + 84);
  v15 = *(v8 + 80);
  v16 = *(v10 + 80);
  v17 = *(v13 + 80);
  if (v14 <= 0xFE)
  {
    v18 = 254;
  }

  else
  {
    v18 = *(v13 + 84);
  }

  v19 = v15 & 0xF8 | 7;
  v20 = v16 & 0xF8 | 7;
  v21 = v9 + v20 + 1;
  v22 = v12 + 8;
  v23 = ((v17 + 14 + ((v22 + ((v21 + (((v15 & 0xF8) + 16) & ~v19)) & ~v20)) & 0xFFFFFFFFFFFFFFF8)) & ~v17) + *(v13 + 64);
  if (a3 <= v18)
  {
    v24 = 0;
  }

  else if (v23 <= 3)
  {
    v27 = ((a3 - v18 + ~(-1 << (8 * v23))) >> (8 * v23)) + 1;
    if (HIWORD(v27))
    {
      v24 = 4;
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
        v24 = v28;
      }

      else
      {
        v24 = 0;
      }
    }
  }

  else
  {
    v24 = 1;
  }

  if (v18 < a2)
  {
    v25 = ~v18 + a2;
    if (v23 < 4)
    {
      v26 = (v25 >> (8 * v23)) + 1;
      if (v23)
      {
        v29 = v25 & ~(-1 << (8 * v23));
        bzero(a1, v23);
        if (v23 != 3)
        {
          if (v23 == 2)
          {
            *a1 = v29;
            if (v24 > 1)
            {
LABEL_52:
              if (v24 == 2)
              {
                *&a1[v23] = v26;
              }

              else
              {
                *&a1[v23] = v26;
              }

              return;
            }
          }

          else
          {
            *a1 = v25;
            if (v24 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *a1 = v29;
        a1[2] = BYTE2(v29);
      }

      if (v24 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      bzero(a1, v23);
      *a1 = v25;
      v26 = 1;
      if (v24 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v24)
    {
      a1[v23] = v26;
    }

    return;
  }

  if (v24 > 1)
  {
    if (v24 != 2)
    {
      *&a1[v23] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v23] = 0;
  }

  else if (v24)
  {
    a1[v23] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v14 > 0xFE)
  {
    v30 = *(v13 + 56);

    v30((v17 + 14 + ((v22 + ((v21 + (&a1[v19 + 9] & ~v19)) & ~v20)) & 0xFFFFFFFFFFFFFFF8)) & ~v17, a2);
  }

  else if (a2 > 0xFE)
  {
    a1[8] = 0;
    *a1 = (a2 - 255);
  }

  else
  {
    a1[8] = -a2;
  }
}

void sub_18AEF9E88()
{
  if (!qword_1EA998700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998708);
    v0 = sub_18AFCBB64();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA998700);
    }
  }
}

unint64_t sub_18AEF9F00()
{
  result = qword_1EA999B58;
  if (!qword_1EA999B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999B58);
  }

  return result;
}

uint64_t sub_18AEF9F54@<X0>(char *a1@<X0>, char *a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v12 = *a1;
  v13 = *a2;
  *a7 = swift_getKeyPath();
  *(a7 + 8) = 0;
  v14 = type metadata accessor for MacGlassButton();
  v15 = v14[9];
  *(a7 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98);
  swift_storeEnumTagMultiPayload();
  v16 = v14[10];
  *(a7 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998520);
  swift_storeEnumTagMultiPayload();
  v17 = a7 + v14[11];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  *(a7 + v14[12]) = v12;
  *(a7 + v14[13]) = v13;
  *(a7 + v14[14]) = a3;
  *(a7 + v14[15]) = a4;
  *(a7 + v14[16]) = a5;
  return a6();
}

double sub_18AEFA0A4(uint64_t a1)
{
  v17 = sub_18AFCC474();
  v3 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998520);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for ResolvedButtonBorderShape(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AE83A40(v1 + *(a1 + 40), v8, &qword_1EA998520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_18AED8B94(v8, v11);
  }

  else
  {
    sub_18AFCE024();
    v12 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v17);
  }

  v13 = v11[*(v9 + 20)];
  sub_18AED8AD4(v11);
  v14 = &unk_18AFD6428;
  if (v13 == 2)
  {
    v14 = &unk_18AFD64A8;
  }

  return v14[*(v1 + *(a1 + 60))];
}

double sub_18AEFA2F8(uint64_t a1)
{
  v17 = sub_18AFCC474();
  v3 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998520);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for ResolvedButtonBorderShape(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AE83A40(v1 + *(a1 + 40), v8, &qword_1EA998520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_18AED8B94(v8, v11);
  }

  else
  {
    sub_18AFCE024();
    v12 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v17);
  }

  v13 = v11[*(v9 + 20)];
  sub_18AED8AD4(v11);
  v14 = &unk_18AFD6468;
  if (v13 == 2)
  {
    v14 = &unk_18AFD64A8;
  }

  return v14[*(v1 + *(a1 + 60))];
}

BOOL sub_18AEFA54C(uint64_t a1)
{
  v3 = sub_18AFCC474();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + *(a1 + 52));
  v8 = *v1;
  if (*(v1 + 8) != 1)
  {

    sub_18AFCE024();
    v9 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AEB264C(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  result = 0;
  if (v7)
  {
    if (v8)
    {
      return *(v1 + *(a1 + 48)) != 1;
    }
  }

  return result;
}

uint64_t sub_18AEFA6C8()
{
  v0 = type metadata accessor for GlassMaterialProvider();
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_18AFCDAD4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED56A748 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  v8 = __swift_project_value_buffer(v7, qword_1ED56A730);
  sub_18AE7AF04(v8, v2, type metadata accessor for GlassMaterialProvider.Configuration);
  sub_18AEFBFF0(&qword_1ED56A5E8, type metadata accessor for GlassMaterialProvider);
  sub_18AEFBFF0(&qword_1ED56A5E0, type metadata accessor for GlassMaterialProvider.Resolved);
  sub_18AFCD5E4();
  sub_18AFCD3F4();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_18AEFA8D0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v32 = a2;
  v4 = sub_18AFCC474();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18AFCD454();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - v14;
  v16 = *(v2 + *(a1 + 56));
  v30 = v4;
  v31 = v17;
  v29 = v5;
  if (v16)
  {
    if (v16 == 1)
    {
      sub_18AFCD2F4();
    }

    else
    {
      sub_18AEFA6C8();
    }
  }

  else
  {
    sub_18AFCD3B4();
  }

  v18 = *(v9 + 32);
  v19 = v32;
  v18(v32, v15, v8);
  result = sub_18AEFA54C(a1);
  if (result)
  {
    (*(v9 + 16))(v11, v19, v8);
    v21 = (v2 + *(a1 + 44));
    v22 = *v21;
    v23 = *(v21 + 8);

    if (v23)
    {
      v24 = v19;
      if (!v22)
      {
        goto LABEL_11;
      }
    }

    else
    {
      sub_18AFCE024();
      v25 = sub_18AFCC7D4();
      sub_18AFCBA64();

      v24 = v32;
      sub_18AFCC464();
      swift_getAtKeyPath();
      j__swift_release();
      (*(v29 + 8))(v7, v30);
      if (!v33)
      {
LABEL_11:
        sub_18AFCCCD4();
      }
    }

    v26 = v31;
    sub_18AFCD444();

    v27 = *(v9 + 8);
    v27(v11, v8);
    v27(v24, v8);
    return (v18)(v24, v26, v8);
  }

  return result;
}

uint64_t sub_18AEFABF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v102 = type metadata accessor for ResolvedButtonBorderShape(0);
  MEMORY[0x1EEE9AC00](v102);
  v97 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_18AFCD454();
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v96 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998930);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v89 = &v63 - v6;
  v91 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938);
  v7 = sub_18AFCC044();
  v93 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v87 = &v63 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999B60);
  v65 = v7;
  v9 = sub_18AFCC044();
  v92 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v85 = &v63 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B48);
  sub_18AE95F54(&qword_1EA998B50, &qword_1EA998B48);
  v67 = v9;
  v11 = sub_18AFCBDC4();
  v90 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v84 = &v63 - v12;
  v70 = v11;
  v13 = sub_18AFCC044();
  v94 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v83 = &v63 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999B68);
  v77 = v13;
  v15 = sub_18AFCC044();
  v95 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v86 = &v63 - v16;
  v17 = sub_18AE95F54(&qword_1EA998B78, &qword_1EA998B48);
  v64 = *(a1 + 24);
  v18 = v64;
  v19 = sub_18AE95F54(&qword_1EA998950, &qword_1EA998938);
  v120 = v18;
  v121 = v19;
  v20 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v63 = WitnessTable;
  v22 = sub_18AE95F54(&qword_1EA999B70, &qword_1EA999B60);
  v118 = WitnessTable;
  v119 = v22;
  v66 = swift_getWitnessTable();
  v116 = v17;
  v117 = v66;
  v69 = swift_getWitnessTable();
  v114 = v69;
  v115 = MEMORY[0x1E697E5D8];
  v88 = v20;
  v23 = swift_getWitnessTable();
  v72 = v23;
  v24 = sub_18AE95F54(&qword_1EA999B78, &qword_1EA999B68);
  v112 = v23;
  v113 = v24;
  v74 = v15;
  v25 = swift_getWitnessTable();
  v73 = v25;
  v75 = sub_18AEFBFF0(&qword_1EA998BB0, type metadata accessor for ResolvedButtonBorderShape);
  v108 = v15;
  v109 = v102;
  v110 = v25;
  v111 = v75;
  v79 = MEMORY[0x1E6981208];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v81 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v68 = &v63 - v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B70);
  v80 = sub_18AFCC044();
  v82 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v71 = &v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v78 = &v63 - v29;
  v30 = v101;
  sub_18AFCC934();
  v31 = sub_18AFCC8F4();
  v32 = v89;
  (*(*(v31 - 8) + 56))(v89, 1, 1, v31);
  sub_18AFCC954();
  sub_18AE7BA80(v32, &qword_1EA998930);
  v33 = v87;
  v34 = v91;
  v35 = v64;
  sub_18AFCCBA4();

  v36 = *(v30 + *(a1 + 52));
  LOBYTE(v108) = *(v30 + *(a1 + 48));
  *(&v108 + 1) = v36;
  sub_18AEB10FC();
  v37 = v85;
  v38 = v65;
  sub_18AFCCB44();
  (*(v93 + 8))(v33, v38);
  v39 = sub_18AEFA0A4(a1);
  v40 = sub_18AEFA2F8(a1);
  v41 = v84;
  v42 = v67;
  sub_18AFC385C(0, 0, v67, v66, v84, v39, v40);
  (*(v92 + 8))(v37, v42);
  sub_18AFCC8B4();
  v43 = v83;
  v44 = v70;
  sub_18AFCCC24();
  (*(v90 + 8))(v41, v44);
  v103 = v34;
  v104 = v35;
  v105 = v30;
  sub_18AFCDB44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999B80);
  sub_18AE95F54(&qword_1EA999B88, &qword_1EA999B80);
  v45 = v86;
  v46 = v77;
  sub_18AFCCA64();
  (*(v94 + 8))(v43, v46);
  v47 = v96;
  sub_18AEFA8D0(a1, v96);
  v48 = v97;
  sub_18AED2E98(v97);
  v49 = v68;
  v50 = v74;
  v51 = v102;
  v52 = v73;
  v53 = v75;
  sub_18AFCCAB4();
  sub_18AED8AD4(v48);
  (*(v98 + 8))(v47, v99);
  (*(v95 + 8))(v45, v50);
  sub_18AED2E98(v48);
  v108 = v50;
  v109 = v51;
  v110 = v52;
  v111 = v53;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v55 = v71;
  v56 = OpaqueTypeMetadata2;
  sub_18AFCCAC4();
  sub_18AED8AD4(v48);
  (*(v81 + 8))(v49, v56);
  v57 = sub_18AE95F54(&qword_1EA998BB8, &qword_1EA998B70);
  v106 = OpaqueTypeConformance2;
  v107 = v57;
  v58 = v80;
  v59 = swift_getWitnessTable();
  v60 = v78;
  sub_18AEADA5C(v55, v58, v59);
  v61 = *(v82 + 8);
  v61(v55, v58);
  sub_18AEADA5C(v60, v58, v59);
  return (v61)(v60, v58);
}

uint64_t sub_18AEFB948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998BC8);
  MEMORY[0x1EEE9AC00](v30);
  v5 = &v28[-v4];
  v6 = sub_18AFCC474();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for ResolvedButtonBorderShape(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v28[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for MacGlassButton();
  sub_18AED2E98(v12);
  v29 = *(a1 + *(v13 + 48));
  v14 = *(a1 + *(v13 + 64));
  v15 = *a1;
  if (*(a1 + 8) != 1)
  {

    sub_18AFCE024();
    v16 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AEB264C(v15, 0);
    (*(v7 + 8))(v9, v6);
    LOBYTE(v15) = v31;
  }

  if ((v14 - 1) > 1)
  {
    v31 = sub_18AFCCD74();
    v19 = sub_18AFCBCD4();
    v17 = v29;
  }

  else
  {
    v17 = v29;
    if (v15)
    {
      v18 = 1.0;
      if (v29 == 1)
      {
        v18 = 0.5;
      }

      *&v31 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9997B0);
      sub_18AE95F54(&qword_1EA9997B8, &qword_1EA9997B0);
    }

    else
    {
      LODWORD(v31) = sub_18AFCC6B4();
    }

    v19 = sub_18AFCBCD4();
  }

  sub_18AE7AF04(v12, v5, type metadata accessor for ResolvedButtonBorderShape);
  v20 = v30;
  *&v5[*(v30 + 52)] = v19;
  *&v5[*(v20 + 56)] = 256;
  sub_18AE7AF04(v5, a2, type metadata accessor for ResolvedButtonBorderShape);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999B90);
  *(a2 + *(v21 + 52)) = v17;
  *(a2 + *(v21 + 56)) = 256;
  v22 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999B98) + 36);
  sub_18AE83A40(v5, v22, &qword_1EA998BC8);
  v23 = sub_18AFCDB44();
  v25 = v24;
  sub_18AE7BA80(v5, &qword_1EA998BC8);
  sub_18AED8AD4(v12);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998BE0);
  v27 = (v22 + *(result + 36));
  *v27 = v23;
  v27[1] = v25;
  return result;
}

uint64_t sub_18AEFBD60@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  if (v3 < 2)
  {
    sub_18AFCCD74();
  }

  else if (v3 - 3 >= 2)
  {
    sub_18AFCC6D4();
  }

  else
  {
    sub_18AFCC6B4();
  }

  result = sub_18AFCBCD4();
  *a1 = result;
  return result;
}

uint64_t sub_18AEFBDEC@<X0>(_DWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_18AFCC274();
  if ((v3 - 2) < 3)
  {
    goto LABEL_2;
  }

  if (v3)
  {
    if ((v4 & 1) == 0)
    {
      result = sub_18AFCC6B4();
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if ((v4 & 1) == 0)
  {
LABEL_7:
    result = sub_18AFCC6E4();
    goto LABEL_9;
  }

LABEL_2:
  result = sub_18AFCC6C4();
LABEL_9:
  *a1 = result;
  return result;
}

uint64_t sub_18AEFBE54@<X0>(uint64_t *a1@<X8>)
{
  sub_18AEFC1EC();
  sub_18AEFC240();
  sub_18AFCCF74();
  sub_18AFCCDA4();

  v2 = sub_18AFCCF34();

  *a1 = v2;
  return result;
}

uint64_t sub_18AEFBEEC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = (v4 != 0) & sub_18AFCC274();
  if (v3 == 1)
  {
    LOBYTE(v6) = 0;
  }

  if ((v6 & 1) != 0 || (v5 - 1) <= 1)
  {
    sub_18AEF0E90();
  }

  else
  {
    sub_18AEF0DE4();
  }

  result = sub_18AFCBCD4();
  *a1 = result;
  return result;
}

uint64_t sub_18AEFBFF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for InteractionState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InteractionState(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_18AEFC1EC()
{
  result = qword_1EA999BA0;
  if (!qword_1EA999BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999BA0);
  }

  return result;
}

unint64_t sub_18AEFC240()
{
  result = qword_1EA999BA8;
  if (!qword_1EA999BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999BA8);
  }

  return result;
}

uint64_t TextFieldDisclosureButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  *(a1 + 25) = v3;
  return result;
}

uint64_t sub_18AEFC32C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  *(a1 + 25) = v3;
  return result;
}

uint64_t sub_18AEFC3C4@<X0>(uint64_t a1@<X8>)
{
  result = sub_18AFCCD24();
  *a1 = 256;
  *(a1 + 8) = 0x4000000000000000;
  *(a1 + 16) = result;
  *(a1 + 24) = 256;
  return result;
}

double sub_18AEFC3FC@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_18AFCDB44();
  v4 = v3;
  sub_18AEFC3C4(v11);
  v5 = v11[0];
  v6 = v11[1];
  result = v12;
  v8 = v13;
  v9 = v14;
  v10 = v15;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 17) = v6;
  *(a1 + 24) = result;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 41) = v10;
  return result;
}

uint64_t sub_18AEFC4C8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  CGRectGetMinX(*&a1);
  v9.origin.x = a1;
  v9.origin.y = a2;
  v9.size.width = a3;
  v9.size.height = a4;
  CGRectGetMaxY(v9);
  sub_18AFCC9D4();
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMaxX(v10);
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectGetMinY(v11);
  return sub_18AFCC9E4();
}

double sub_18AEFC570@<D0>(uint64_t a1@<X8>)
{
  sub_18AFCCA14();
  sub_18AFCBB94();
  sub_18AFCC9B4();
  sub_18AEFC884(v5);
  sub_18AEACD6C(v4);
  result = *&v6;
  v3 = v7;
  *a1 = v6;
  *(a1 + 16) = v3;
  *(a1 + 32) = v8;
  return result;
}

void (*sub_18AEFC62C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_18AFCBA74();
  return sub_18AEE786C;
}

uint64_t sub_18AEFC6B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18AEFC8D8();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_18AEFC718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18AEFC8D8();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_18AEFC77C(uint64_t a1)
{
  v2 = sub_18AEFC8D8();

  return MEMORY[0x1EEDE4410](a1, v2);
}

unint64_t sub_18AEFC7CC()
{
  result = qword_1EA999BD0;
  if (!qword_1EA999BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999BD0);
  }

  return result;
}

unint64_t sub_18AEFC824()
{
  result = qword_1EA999BD8;
  if (!qword_1EA999BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999BD8);
  }

  return result;
}

unint64_t sub_18AEFC8D8()
{
  result = qword_1EA999BE0;
  if (!qword_1EA999BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999BE0);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_18AEFC940(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18AEFC988(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18AEFC9F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = sub_18AFCDB44();
  v8 = v7;
  if (v3)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = 1.0;
  }

  if (v3)
  {
    v10 = 1.0;
  }

  else
  {
    v10 = 0.0;
  }

  result = sub_18AFCCDA4();
  v12 = 0.5;
  *a1 = v6;
  *(a1 + 8) = v8;
  if (v5 != 1)
  {
    v12 = 1.0;
  }

  *(a1 + 16) = v4;
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  *(a1 + 40) = result;
  *(a1 + 48) = v12;
  return result;
}

unint64_t sub_18AEFCA98()
{
  result = qword_1EA999BE8;
  if (!qword_1EA999BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999BF0);
    sub_18AEFCB24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999BE8);
  }

  return result;
}

unint64_t sub_18AEFCB24()
{
  result = qword_1EA999BF8;
  if (!qword_1EA999BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999C00);
    sub_18AEFCBB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999BF8);
  }

  return result;
}

unint64_t sub_18AEFCBB0()
{
  result = qword_1EA999C08;
  if (!qword_1EA999C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999C08);
  }

  return result;
}

uint64_t sub_18AEFCC40@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_18AFCCD64();
  v3 = sub_18AFCCD94();
  v4 = sub_18AFCC844();
  sub_18AFCBAA4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_18AFCCD94();
  sub_18AFCDB44();
  sub_18AFCBCC4();
  *&v32[3] = *&v32[27];
  *&v32[11] = *&v32[35];
  *&v32[19] = v33;
  *&v34 = v3;
  WORD4(v34) = 256;
  LOBYTE(v35) = v4;
  *(&v35 + 1) = v6;
  *v36 = v8;
  *&v36[8] = v10;
  *&v36[16] = v12;
  v36[24] = 0;
  *(&v31[2] + 15) = *&v36[9];
  *(&v31[2] + 6) = *v36;
  *(&v31[1] + 6) = v35;
  *(v31 + 6) = v34;
  *v37 = v13;
  *&v37[8] = 256;
  v14 = *&v32[8];
  *&v37[10] = *v32;
  *&v37[56] = *(&v33 + 1);
  *&v37[42] = *&v32[16];
  v15 = *v32;
  *&v37[26] = *&v32[8];
  *&v30[55] = *&v37[48];
  *&v30[39] = *&v37[32];
  *&v30[23] = *&v37[16];
  *&v30[7] = *v37;
  v16 = v31[0];
  v17 = v31[1];
  *(a1 + 57) = *(&v31[2] + 15);
  *(a1 + 42) = v31[2];
  *(a1 + 26) = v17;
  *(a1 + 10) = v16;
  v18 = *&v30[16];
  *(a1 + 73) = *v30;
  v19 = *&v30[32];
  v20 = *&v30[48];
  *(a1 + 136) = *&v30[63];
  *(a1 + 121) = v20;
  *a1 = v2;
  *(a1 + 8) = 256;
  *(a1 + 105) = v19;
  *(a1 + 89) = v18;
  v38 = v13;
  v39 = 256;
  *&v42[14] = *&v32[23];
  *v42 = *&v32[16];
  v41 = v14;
  v40 = v15;

  sub_18AE83A40(&v34, &v22, &qword_1EA999C20);
  sub_18AE83A40(v37, &v22, &qword_1EA999C28);
  sub_18AE7BA80(&v38, &qword_1EA999C28);
  v22 = v3;
  v23 = 256;
  v24 = v4;
  v25 = v6;
  v26 = v8;
  v27 = v10;
  v28 = v12;
  v29 = 0;
  sub_18AE7BA80(&v22, &qword_1EA999C20);
}

__n128 sub_18AEFCE90@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_18AFCDB64();
  v4 = v3;
  sub_18AEFCC40(&v10);
  v25 = v16;
  v26 = v17;
  v27 = v18;
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v24 = v15;
  v19 = v10;
  v20 = v11;
  v28[6] = v16;
  v28[7] = v17;
  v28[8] = v18;
  v28[2] = v12;
  v28[3] = v13;
  v28[4] = v14;
  v28[5] = v15;
  v28[0] = v10;
  v28[1] = v11;
  sub_18AE83A40(&v19, &v9, &qword_1EA999C18);
  sub_18AE7BA80(v28, &qword_1EA999C18);
  *a1 = v2;
  *(a1 + 8) = v4;
  v5 = v26;
  *(a1 + 112) = v25;
  *(a1 + 128) = v5;
  *(a1 + 144) = v27;
  v6 = v22;
  *(a1 + 48) = v21;
  *(a1 + 64) = v6;
  v7 = v24;
  *(a1 + 80) = v23;
  *(a1 + 96) = v7;
  result = v20;
  *(a1 + 16) = v19;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_18AEFCFF0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  CGRectGetMinX(*&a1);
  v9.origin.x = a1;
  v9.origin.y = a2;
  v9.size.width = a3;
  v9.size.height = a4;
  CGRectGetMaxY(v9);
  sub_18AFCC9D4();
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMaxX(v10);
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectGetMaxY(v11);
  sub_18AFCC9E4();
  v12.origin.x = a1;
  v12.origin.y = a2;
  v12.size.width = a3;
  v12.size.height = a4;
  CGRectGetMaxX(v12);
  v13.origin.x = a1;
  v13.origin.y = a2;
  v13.size.width = a3;
  v13.size.height = a4;
  CGRectGetMinY(v13);
  sub_18AFCC9E4();
  return sub_18AFCC9C4();
}

double sub_18AEFD0D4@<D0>(uint64_t a1@<X8>)
{
  sub_18AFCCA14();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

void (*sub_18AEFD138(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_18AFCBA74();
  return sub_18AEE786C;
}

uint64_t sub_18AEFD1C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18AEFD390();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_18AEFD224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18AEFD390();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_18AEFD288(uint64_t a1)
{
  v2 = sub_18AEFD390();

  return MEMORY[0x1EEDE4410](a1, v2);
}

unint64_t sub_18AEFD2D8()
{
  result = qword_1EA999C50;
  if (!qword_1EA999C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999C50);
  }

  return result;
}

unint64_t sub_18AEFD330()
{
  result = qword_1EA999C58;
  if (!qword_1EA999C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999C58);
  }

  return result;
}

unint64_t sub_18AEFD390()
{
  result = qword_1EA999C60[0];
  if (!qword_1EA999C60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA999C60);
  }

  return result;
}

void sub_18AEFD3E4()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_18AED5A58();
      if (v2 <= 0x3F)
      {
        sub_18AEB31C4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_18AEFD4DC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v32 = *(a3 + 24);
  v33 = *(a3 + 16);
  v5 = *(v33 - 8);
  v6 = *(v5 + 84);
  v7 = *(v32 - 8);
  v8 = *(v7 + 84);
  if (v6 <= v8)
  {
    v9 = *(v7 + 84);
  }

  else
  {
    v9 = *(v5 + 84);
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = sub_18AFCC5C4();
  v12 = *(*(v11 - 8) + 64);
  v13 = *(v5 + 80);
  v14 = *(v5 + 64);
  v15 = *(v7 + 80);
  if (v12 <= 8)
  {
    v12 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v10 >= a2)
  {
    goto LABEL_36;
  }

  v16 = *(*(v11 - 8) + 80) & 0xF8 | 7;
  v17 = ((v12 + ((((v14 + v15 + ((v13 + 18) & ~v13)) & ~v15) + *(v7 + 64) + v16) & ~v16) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v17 <= 3)
  {
    v18 = ((a2 - v10 + 255) >> 8) + 1;
  }

  else
  {
    v18 = 2;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      v21 = *&a1[v17];
      if (!*&a1[v17])
      {
        goto LABEL_36;
      }
    }

    else
    {
      v21 = *&a1[v17];
      if (!v21)
      {
        goto LABEL_36;
      }
    }

LABEL_29:
    v23 = v17 > 3;
    if (v17 <= 3)
    {
      v24 = (v21 - 1) << (8 * v17);
    }

    else
    {
      v24 = 0;
    }

    if (v23)
    {
      v31 = *a1;
    }

    else
    {
      v31 = *a1;
    }

    return v10 + (v31 | v24) + 1;
  }

  if (v20)
  {
    v21 = a1[v17];
    if (a1[v17])
    {
      goto LABEL_29;
    }
  }

LABEL_36:
  v25 = ((a1 + 9) & 0xFFFFFFFFFFFFFFF8);
  if ((v9 & 0x80000000) != 0)
  {
    v27 = (v25 + v13 + 10) & ~v13;
    if (v6 == v10)
    {
      v28 = *(v5 + 48);
      v29 = v6;
      v30 = v33;
    }

    else
    {
      v28 = *(v7 + 48);
      v27 = (v27 + v14 + v15) & ~v15;
      v29 = v8;
      v30 = v32;
    }

    return v28(v27, v29, v30);
  }

  else
  {
    v26 = *v25;
    if (v26 >= 0xFFFFFFFF)
    {
      LODWORD(v26) = -1;
    }

    return (v26 + 1);
  }
}

void sub_18AEFD7E4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v31 = *(a4 + 24);
  v32 = *(a4 + 16);
  v6 = *(v32 - 8);
  v33 = v6;
  v7 = *(v6 + 84);
  v8 = *(v31 - 8);
  v9 = *(v8 + 84);
  if (v7 <= v9)
  {
    v10 = *(v8 + 84);
  }

  else
  {
    v10 = *(v6 + 84);
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(sub_18AFCC5C4() - 8);
  if (*(v12 + 64) <= 8uLL)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v12 + 64);
  }

  v14 = *(v6 + 80);
  v15 = *(v6 + 64);
  v16 = *(v8 + 80);
  v17 = *(v12 + 80) & 0xF8 | 7;
  v18 = ((v13 + ((((v15 + v16 + ((v14 + 18) & ~v14)) & ~v16) + *(v8 + 64) + v17) & ~v17) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v11 >= a3)
  {
    v21 = 0;
  }

  else
  {
    if (v18 <= 3)
    {
      v19 = ((a3 - v11 + 255) >> 8) + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }
  }

  if (v11 >= a2)
  {
    if (v21 > 1)
    {
      if (v21 != 2)
      {
        *&a1[v18] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_41;
      }

      *&a1[v18] = 0;
    }

    else if (v21)
    {
      a1[v18] = 0;
      if (!a2)
      {
        return;
      }

LABEL_41:
      v24 = ((a1 + 9) & 0xFFFFFFFFFFFFFFF8);
      if ((v10 & 0x80000000) != 0)
      {
        v26 = (v24 + v14 + 10) & ~v14;
        if (v7 == v11)
        {
          v27 = *(v33 + 56);
          v28 = a2;
          v29 = v7;
          v30 = v32;
        }

        else
        {
          v27 = *(v8 + 56);
          v26 = (v26 + v15 + v16) & ~v16;
          v28 = a2;
          v29 = v9;
          v30 = v31;
        }

        v27(v26, v28, v29, v30);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v25 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v25 = (a2 - 1);
        }

        *v24 = v25;
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_41;
  }

  v22 = ~v11 + a2;
  bzero(a1, v18);
  if (v18 <= 3)
  {
    v23 = (v22 >> 8) + 1;
  }

  else
  {
    v23 = 1;
  }

  if (v18 <= 3)
  {
    *a1 = v22;
    if (v21 > 1)
    {
LABEL_29:
      if (v21 == 2)
      {
        *&a1[v18] = v23;
      }

      else
      {
        *&a1[v18] = v23;
      }

      return;
    }
  }

  else
  {
    *a1 = v22;
    if (v21 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v21)
  {
    a1[v18] = v23;
  }
}

uint64_t sub_18AEFDB8C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999CE8);
  v19 = a1[2];
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999CF0);
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  sub_18AFCD1F4();
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999CF8);
  v18 = a1[3];
  sub_18AFCC044();
  v3 = sub_18AEFF30C();
  v17 = a1[5];
  v33 = v3;
  v34 = v17;
  swift_getWitnessTable();
  sub_18AFCC5F4();
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999D48);
  sub_18AFCC044();
  sub_18AFCC044();
  WitnessTable = swift_getWitnessTable();
  v32 = MEMORY[0x1E697E5D8];
  v29 = swift_getWitnessTable();
  v30 = swift_getWitnessTable();
  v27 = swift_getWitnessTable();
  v28 = sub_18AE95F54(&qword_1EA999D50, &qword_1EA999D48);
  v25 = swift_getWitnessTable();
  v26 = MEMORY[0x1E697EBF8];
  swift_getWitnessTable();
  v4 = sub_18AFCD1F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  *&v11 = a1[4];
  *(&v11 + 1) = v17;
  *&v12 = v19;
  *(&v12 + 1) = v18;
  v22 = v12;
  v23 = v11;
  v24 = v20;
  sub_18AFCDB44();
  sub_18AFCD1E4();
  v13 = swift_getWitnessTable();
  sub_18AEADA5C(v7, v4, v13);
  v14 = *(v5 + 8);
  v14(v7, v4);
  sub_18AEADA5C(v10, v4, v13);
  return (v14)(v10, v4);
}

uint64_t sub_18AEFDF84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v57 = a4;
  v51 = a1;
  v68 = a6;
  v67 = sub_18AFCD4A4();
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999CE8);
  v10 = a2;
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999CF0);
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_18AFCD1F4();
  v58 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  v47 = sub_18AFCC044();
  v62 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v45 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999CF8);
  v53 = sub_18AFCC044();
  v87 = sub_18AEFF30C();
  v88 = a5;
  v50 = MEMORY[0x1E697E858];
  v54 = swift_getWitnessTable();
  v56 = sub_18AFCC5F4();
  v48 = sub_18AFCC044();
  v61 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v46 = &v45 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999D48);
  v60 = sub_18AFCC044();
  v64 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v52 = &v45 - v16;
  v17 = sub_18AFCC044();
  v65 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v59 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v63 = &v45 - v20;
  v21 = v10;
  v74 = v10;
  v75 = a3;
  v22 = a3;
  v23 = v57;
  v76 = v57;
  v77 = a5;
  v24 = v51;
  v78 = v51;
  sub_18AFCDB44();
  sub_18AFCD1E4();
  v25 = swift_getWitnessTable();
  v26 = v49;
  sub_18AFCCC04();
  (*(v58 + 8))(v13, v11);
  v69 = v21;
  v70 = v22;
  v71 = v23;
  v72 = a5;
  v73 = v24;
  sub_18AFCDB44();
  v85 = v25;
  v86 = MEMORY[0x1E697E5D8];
  v27 = v47;
  v28 = swift_getWitnessTable();
  v29 = v46;
  sub_18AFCCA64();
  (*(v62 + 8))(v26, v27);
  v30 = *MEMORY[0x1E697F468];
  v31 = sub_18AFCC534();
  v32 = v66;
  (*(*(v31 - 8) + 104))(v66, v30, v31);
  v33 = swift_getWitnessTable();
  v83 = v28;
  v84 = v33;
  v34 = v48;
  v35 = swift_getWitnessTable();
  sub_18AEFF568();
  v36 = v52;
  sub_18AFCCB24();
  sub_18AEF0D88(v32);
  (*(v61 + 8))(v29, v34);
  sub_18AFCDB44();
  v37 = sub_18AE95F54(&qword_1EA999D50, &qword_1EA999D48);
  v81 = v35;
  v82 = v37;
  v43 = v60;
  v44 = swift_getWitnessTable();
  v38 = v59;
  sub_18AFCCBC4();
  (*(v64 + 8))(v36, v43);
  v79 = v44;
  v80 = MEMORY[0x1E697EBF8];
  v39 = swift_getWitnessTable();
  v40 = v63;
  sub_18AEADA5C(v38, v17, v39);
  v41 = *(v65 + 8);
  v41(v38, v17);
  sub_18AEADA5C(v40, v17, v39);
  return (v41)(v40, v17);
}

uint64_t sub_18AEFE820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29[1] = a3;
  v29[2] = a5;
  v34 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999CE8);
  v12 = sub_18AFCC044();
  v13 = *(v12 - 8);
  v30 = v12;
  v31 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v29[0] = v29 - v17;
  v18 = *(a1 + 17);
  v19 = *(a1 + 1);
  *&v50 = *(a1 + 8);
  BYTE8(v50) = v18;
  *&v51 = 0x4008000000000000;
  BYTE8(v51) = v19;
  *(&v51 + 9) = 256;
  *&v54 = a2;
  *(&v54 + 1) = a3;
  *&v55 = a4;
  *(&v55 + 1) = a5;
  v20 = *(type metadata accessor for MacColorWellBasicEngineering() + 68);
  v21 = sub_18AEFF630();

  MEMORY[0x18CFEBFA0](a1 + v20, v11, a2, v21);

  v66 = v21;
  v67 = a4;
  v22 = v30;
  WitnessTable = swift_getWitnessTable();
  v23 = v29[0];
  sub_18AEADA5C(v15, v22, WitnessTable);
  v24 = v31;
  v33 = *(v31 + 8);
  v33(v15, v22);
  v25 = sub_18AEFEC88();
  sub_18AFCBB94();
  sub_18AFCDB44();
  sub_18AFCC194();
  v51 = v75;
  v52 = v76;
  *&v65[55] = v71;
  *&v65[71] = v72;
  *&v65[87] = v73;
  *&v65[103] = v74;
  *&v65[7] = v68;
  *&v65[23] = v69;
  *&v65[39] = v70;
  *(&v53[4] + 9) = *&v65[64];
  *(&v53[5] + 9) = *&v65[80];
  *(&v53[6] + 9) = *&v65[96];
  *(v53 + 9) = *v65;
  *(&v53[1] + 9) = *&v65[16];
  *(&v53[2] + 9) = *&v65[32];
  *&v53[0] = v77;
  LOBYTE(v50) = 0;
  *(&v50 + 1) = v25;
  BYTE8(v53[0]) = 1;
  *(&v53[7] + 1) = *(&v74 + 1);
  *(&v53[3] + 9) = *&v65[48];
  v26 = v15;
  (*(v24 + 16))(v15, v23, v22);
  v46 = v53[5];
  v47 = v53[6];
  v48 = v53[7];
  v42 = v53[1];
  v43 = v53[2];
  v44 = v53[3];
  v45 = v53[4];
  v38 = v50;
  v39 = v51;
  v40 = v52;
  v41 = v53[0];
  v49[0] = v15;
  v49[1] = &v38;
  sub_18AE83A40(&v50, &v54, &qword_1EA999CF0);
  v37[0] = v22;
  v37[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999CF0);
  v35 = WitnessTable;
  v36 = sub_18AEFF73C();
  sub_18AEB70B8(v49, 2uLL, v37);
  sub_18AE7BA80(&v50, &qword_1EA999CF0);
  v27 = v33;
  v33(v23, v22);
  v62 = v46;
  v63 = v47;
  v64 = v48;
  v58 = v42;
  v59 = v43;
  v60 = v44;
  v61 = v45;
  v54 = v38;
  v55 = v39;
  v56 = v40;
  v57 = v41;
  sub_18AE7BA80(&v54, &qword_1EA999CF0);
  return v27(v26, v22);
}

uint64_t sub_18AEFEC88()
{
  sub_18AFCCD64();
  sub_18AFCCDA4();

  return sub_18AFCBCD4();
}

uint64_t sub_18AEFED00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v59 = a2;
  v60 = a4;
  v61 = a6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999D60);
  MEMORY[0x1EEE9AC00](v51);
  v10 = &v46 - v9;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999D30);
  MEMORY[0x1EEE9AC00](v56);
  v48 = &v46 - v11;
  v47 = sub_18AFCC474();
  v12 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999CF8);
  MEMORY[0x1EEE9AC00](v15);
  v50 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v52 = &v46 - v18;
  v54 = v19;
  v20 = sub_18AFCC044();
  v57 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v53 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v55 = &v46 - v23;
  v24 = *(a1 + 1);
  v25 = *(a1 + 16);
  v26 = v60;
  *&v83 = v59;
  *(&v83 + 1) = a3;
  v59 = a3;
  v60 = a5;
  *&v84 = v26;
  *(&v84 + 1) = a5;
  v49 = type metadata accessor for MacColorWellBasicEngineering();
  v27 = *(v49 + 80);
  v58 = a1;
  v28 = a1 + v27;
  v29 = *v28;
  if (*(v28 + 8) != 1)
  {

    sub_18AFCE024();
    v30 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AEB264C(v29, 0);
    (*(v12 + 8))(v14, v47);
    LOBYTE(v29) = v83;
  }

  v31 = v50;
  if (v25 && (v29 & 1) != 0)
  {
    v32 = v48;
    sub_18AF1B7E4(v24, 1, v48);
    sub_18AE83A40(v32, v10, &qword_1EA999D30);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999D10);
    sub_18AEFF398();
    sub_18AEFF450();
    sub_18AFCC614();
    sub_18AE7BA80(v32, &qword_1EA999D30);
  }

  else
  {
    sub_18AF1CF5C(v24, v25 != 0, &v65);
    v80 = v71;
    v81 = v72;
    v76 = v67;
    v77 = v68;
    v78 = v69;
    v79 = v70;
    v74 = v65;
    v75 = v66;
    v89 = v71;
    v90 = v72;
    v85 = v67;
    v86 = v68;
    v87 = v69;
    v88 = v70;
    v82 = v73;
    v91 = v73;
    v83 = v65;
    v84 = v66;
    sub_18AE83A40(&v74, &v64, &qword_1EA999D10);
    sub_18AE7BA80(&v83, &qword_1EA999D10);
    v33 = v81;
    *(v10 + 6) = v80;
    *(v10 + 7) = v33;
    *(v10 + 16) = v82;
    v34 = v77;
    *(v10 + 2) = v76;
    *(v10 + 3) = v34;
    v35 = v79;
    *(v10 + 4) = v78;
    *(v10 + 5) = v35;
    v36 = v75;
    *v10 = v74;
    *(v10 + 1) = v36;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999D10);
    sub_18AEFF398();
    sub_18AEFF450();
    sub_18AFCC614();
  }

  v37 = v31;
  v38 = v52;
  sub_18AEFF5C0(v37, v52);
  v39 = *(v49 + 72);
  v40 = sub_18AEFF30C();
  v41 = v53;
  MEMORY[0x18CFEBFA0](v58 + v39, v54, v59, v40);
  sub_18AE7BA80(v38, &qword_1EA999CF8);
  v62 = v40;
  v63 = v60;
  WitnessTable = swift_getWitnessTable();
  v43 = v55;
  sub_18AEADA5C(v41, v20, WitnessTable);
  v44 = *(v57 + 8);
  v44(v41, v20);
  sub_18AEADA5C(v43, v20, WitnessTable);
  return (v44)(v43, v20);
}

unint64_t sub_18AEFF30C()
{
  result = qword_1EA999D00;
  if (!qword_1EA999D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999CF8);
    sub_18AEFF398();
    sub_18AEFF450();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999D00);
  }

  return result;
}

unint64_t sub_18AEFF398()
{
  result = qword_1EA999D08;
  if (!qword_1EA999D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999D10);
    sub_18AE95F54(&qword_1EA999D18, &qword_1EA999D20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999D08);
  }

  return result;
}

unint64_t sub_18AEFF450()
{
  result = qword_1EA999D28;
  if (!qword_1EA999D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999D30);
    sub_18AE95F54(&qword_1EA999D38, &qword_1EA999D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999D28);
  }

  return result;
}

unint64_t sub_18AEFF568()
{
  result = qword_1EA999D58;
  if (!qword_1EA999D58)
  {
    sub_18AFCD4A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999D58);
  }

  return result;
}

uint64_t sub_18AEFF5C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999CF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_18AEFF630()
{
  result = qword_1EA999D68;
  if (!qword_1EA999D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999CE8);
    sub_18AEFF6E8();
    sub_18AE95F54(&qword_1EA999118, &qword_1EA9990D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999D68);
  }

  return result;
}

unint64_t sub_18AEFF6E8()
{
  result = qword_1EA999D70;
  if (!qword_1EA999D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999D70);
  }

  return result;
}

unint64_t sub_18AEFF73C()
{
  result = qword_1EA999D78;
  if (!qword_1EA999D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999CF0);
    sub_18AE95F54(&qword_1EA999D80, &qword_1EA999D88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999D78);
  }

  return result;
}

uint64_t type metadata accessor for MacColorWellButtonEngineering()
{
  result = qword_1EA999D90;
  if (!qword_1EA999D90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18AEFF868()
{
  sub_18AED5A58();
  if (v0 <= 0x3F)
  {
    sub_18AEB31C4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_18AEFF934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v3 = sub_18AFCCCF4();
  v77 = *(v3 - 8);
  v78 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v76 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998FF8);
  v6 = (v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v73 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999DB0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v73 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999DB8);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v80 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v73 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v74 = &v73 - v20;
  v21 = *(a1 + 8);
  v22 = *(sub_18AFCC184() + 20);
  v23 = *MEMORY[0x1E697F468];
  v24 = sub_18AFCC534();
  (*(*(v24 - 8) + 104))(&v8[v22], v23, v24);
  *v8 = v21;
  *(v8 + 1) = v21;
  v25 = *(a1 + 1) == 0;
  v26 = *(a1 + 2);
  v8[v6[11]] = v26;
  v8[v6[12]] = 0;
  v27 = !v25;
  v8[v6[13]] = v27;
  v28 = &v8[v6[14]];
  *v28 = swift_getKeyPath();
  v28[8] = 0;
  sub_18AFCDB44();
  sub_18AFCBCC4();
  sub_18AE9A768(v8, v12, &qword_1EA998FF8);
  v29 = &v12[*(v10 + 44)];
  v30 = v121;
  *v29 = v120;
  *(v29 + 1) = v30;
  *(v29 + 2) = v122;
  sub_18AFCDB44();
  sub_18AFCC194();
  sub_18AE9A768(v12, v18, &qword_1EA999DB0);
  v31 = &v18[*(v14 + 44)];
  v32 = v128;
  *(v31 + 4) = v127;
  *(v31 + 5) = v32;
  *(v31 + 6) = v129;
  v33 = v124;
  *v31 = v123;
  *(v31 + 1) = v33;
  v34 = v126;
  *(v31 + 2) = v125;
  *(v31 + 3) = v34;
  v35 = v74;
  sub_18AE9A768(v18, v74, &qword_1EA999DB8);
  v75 = sub_18AEF41CC(v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998990);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_18AFCEB10;
  v37 = *MEMORY[0x1E69814D8];
  v38 = v76;
  v39 = *(v77 + 104);
  v40 = v78;
  v39(v76, v37, v78);
  sub_18AFCCF44();
  *(v36 + 32) = sub_18AFCD4F4();
  *(v36 + 40) = v41;
  v39(v38, v37, v40);
  sub_18AFCCF44();
  *(v36 + 48) = sub_18AFCD4F4();
  *(v36 + 56) = v42;
  sub_18AFCD504();
  sub_18AFCDD04();
  sub_18AFCBEB4();
  v43 = v130;
  v44 = v131;
  v45 = v132;
  v46 = v133;
  v47 = v134;
  v48 = sub_18AFCDB44();
  v50 = v49;
  sub_18AFCDB44();
  sub_18AFCBCC4();
  LOBYTE(v37) = sub_18AFCC854();
  sub_18AFCBAA4();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v118 = 0;
  v59 = v80;
  sub_18AE83A40(v35, v80, &qword_1EA999DB8);
  v60 = v59;
  v61 = v79;
  sub_18AE83A40(v60, v79, &qword_1EA999DB8);
  v62 = (v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999DC0) + 48));
  *&v84 = v43;
  *(&v84 + 1) = v44;
  *&v85 = v45;
  *(&v85 + 1) = v46;
  *&v86 = v47;
  WORD4(v86) = 256;
  *(&v86 + 10) = v116;
  HIWORD(v86) = v117;
  v63 = v75;
  *&v87 = v75;
  WORD4(v87) = 256;
  *(&v87 + 10) = v114;
  HIWORD(v87) = v115;
  *&v88 = v48;
  *(&v88 + 1) = v50;
  v65 = v82;
  v64 = v83;
  v90 = v82;
  v91 = v83;
  v66 = v81;
  v89 = v81;
  LOBYTE(v92) = v37;
  DWORD1(v92) = *&v119[3];
  *(&v92 + 1) = *v119;
  *(&v92 + 1) = v52;
  *&v93[0] = v54;
  *(&v93[0] + 1) = v56;
  *&v93[1] = v58;
  BYTE8(v93[1]) = 0;
  v67 = v85;
  *v62 = v84;
  v62[1] = v67;
  v68 = v86;
  v69 = v87;
  v62[4] = v88;
  v62[5] = v66;
  v62[2] = v68;
  v62[3] = v69;
  v71 = v92;
  v70 = v93[0];
  *(v62 + 153) = *(v93 + 9);
  v62[8] = v71;
  v62[9] = v70;
  v62[6] = v65;
  v62[7] = v64;
  sub_18AE83A40(&v84, v94, &qword_1EA999DC8);
  sub_18AE7BA80(v35, &qword_1EA999DB8);
  v94[0] = v43;
  v94[1] = v44;
  v94[2] = v45;
  v94[3] = v46;
  v94[4] = v47;
  v95 = 256;
  v96 = v116;
  v97 = v117;
  v98 = v63;
  v99 = 256;
  v100 = v114;
  v101 = v115;
  v102 = v48;
  v103 = v50;
  v105 = v82;
  v106 = v83;
  v104 = v81;
  v107 = v37;
  *&v108[3] = *&v119[3];
  *v108 = *v119;
  v109 = v52;
  v110 = v54;
  v111 = v56;
  v112 = v58;
  v113 = 0;
  sub_18AE7BA80(v94, &qword_1EA999DC8);
  return sub_18AE7BA80(v80, &qword_1EA999DB8);
}

uint64_t sub_18AF00060@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_18AFCDB44();
  a1[1] = v3;
  v4 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999DA0) + 44));
  *v4 = sub_18AFCDB44();
  v4[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999DA8);
  return sub_18AEFF934(v1, v4 + *(v6 + 44));
}

unint64_t sub_18AF000D0()
{
  result = qword_1EA999DD0;
  if (!qword_1EA999DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EA999DD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999DD0);
  }

  return result;
}

void sub_18AF00134()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_18AED5A58();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_18AF00214(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v29 = *(a3 + 24);
  v30 = *(a3 + 16);
  v5 = *(v30 - 8);
  v6 = *(v5 + 84);
  v7 = *(v29 - 8);
  v8 = *(v7 + 84);
  if (v6 <= v8)
  {
    v9 = *(v7 + 84);
  }

  else
  {
    v9 = *(v5 + 84);
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = sub_18AFCC5C4();
  v12 = *(*(v11 - 8) + 64);
  v13 = *(v5 + 80);
  v14 = *(v5 + 64);
  v15 = *(v7 + 80);
  if (v12 <= 8)
  {
    v12 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v10)
  {
    goto LABEL_31;
  }

  v16 = *(*(v11 - 8) + 80) & 0xF8 | 7;
  v17 = v12 + ((((v14 + v15 + ((v13 + 18) & ~v13)) & ~v15) + *(v7 + 64) + v16) & ~v16) + 1;
  v18 = 8 * v17;
  if (v17 <= 3)
  {
    v21 = ((a2 - v10 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v21))
    {
      v19 = *(a1 + v17);
      if (!v19)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v21 > 0xFF)
    {
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v21 < 2)
    {
LABEL_31:
      v23 = ((a1 + 5) & 0xFFFFFFFFFFFFFFF8);
      if ((v9 & 0x80000000) != 0)
      {
        v25 = (v23 + v13 + 10) & ~v13;
        if (v6 == v10)
        {
          v26 = *(v5 + 48);
          v27 = v6;
          v28 = v30;
        }

        else
        {
          v26 = *(v7 + 48);
          v25 = (v25 + v14 + v15) & ~v15;
          v27 = v8;
          v28 = v29;
        }

        return v26(v25, v27, v28);
      }

      else
      {
        v24 = *v23;
        if (v24 >= 0xFFFFFFFF)
        {
          LODWORD(v24) = -1;
        }

        return (v24 + 1);
      }
    }
  }

  v19 = *(a1 + v17);
  if (!*(a1 + v17))
  {
    goto LABEL_31;
  }

LABEL_20:
  v22 = (v19 - 1) << v18;
  if (v17 > 3)
  {
    v22 = 0;
  }

  if (v17)
  {
    if (v17 > 3)
    {
      LODWORD(v17) = 4;
    }

    if (v17 > 2)
    {
      if (v17 == 3)
      {
        LODWORD(v17) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v17) = *a1;
      }
    }

    else if (v17 == 1)
    {
      LODWORD(v17) = *a1;
    }

    else
    {
      LODWORD(v17) = *a1;
    }
  }

  return v10 + (v17 | v22) + 1;
}

void sub_18AF00544(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v32 = *(a4 + 24);
  v7 = *(*(a4 + 16) - 8);
  v34 = v7;
  v8 = *(v32 - 8);
  v9 = *(v8 + 84);
  v33 = *(v7 + 84);
  if (v33 <= v9)
  {
    v10 = *(v8 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(sub_18AFCC5C4() - 8);
  if (*(v12 + 64) <= 8uLL)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v12 + 64);
  }

  v14 = *(v7 + 80);
  v15 = *(v7 + 64);
  v16 = *(v8 + 80);
  v17 = *(v12 + 80) & 0xF8 | 7;
  v18 = v13 + ((((v15 + v16 + ((v14 + 18) & ~v14)) & ~v16) + *(v8 + 64) + v17) & ~v17) + 1;
  if (a3 <= v11)
  {
    v20 = 0;
    v19 = a1;
  }

  else
  {
    v19 = a1;
    if (v18 <= 3)
    {
      v23 = ((a3 - v11 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
      if (HIWORD(v23))
      {
        v20 = 4;
      }

      else
      {
        if (v23 < 0x100)
        {
          v24 = 1;
        }

        else
        {
          v24 = 2;
        }

        if (v23 >= 2)
        {
          v20 = v24;
        }

        else
        {
          v20 = 0;
        }
      }
    }

    else
    {
      v20 = 1;
    }
  }

  if (v11 < a2)
  {
    v21 = ~v11 + a2;
    if (v18 < 4)
    {
      v22 = (v21 >> (8 * v18)) + 1;
      if (v18)
      {
        v25 = v21 & ~(-1 << (8 * v18));
        bzero(v19, v18);
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *v19 = v25;
            if (v20 > 1)
            {
LABEL_57:
              if (v20 == 2)
              {
                *&v19[v18] = v22;
              }

              else
              {
                *&v19[v18] = v22;
              }

              return;
            }
          }

          else
          {
            *v19 = v21;
            if (v20 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *v19 = v25;
        v19[2] = BYTE2(v25);
      }

      if (v20 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(v19, v18);
      *v19 = v21;
      v22 = 1;
      if (v20 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v20)
    {
      v19[v18] = v22;
    }

    return;
  }

  if (v20 > 1)
  {
    if (v20 != 2)
    {
      *&v19[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&v19[v18] = 0;
  }

  else if (v20)
  {
    v19[v18] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  v26 = ((v19 + 10) & 0xFFFFFFFFFFFFFFF8);
  if ((v10 & 0x80000000) != 0)
  {
    v28 = (v26 + v14 + 10) & ~v14;
    if (v33 == v11)
    {
      v29 = *(v34 + 56);

      v29(v28, a2);
    }

    else
    {
      v30 = *(v8 + 56);
      v31 = (v28 + v15 + v16) & ~v16;

      v30(v31, a2, v9, v32);
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v27 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v27 = (a2 - 1);
    }

    *v26 = v27;
  }
}