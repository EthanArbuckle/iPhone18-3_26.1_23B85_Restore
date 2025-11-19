uint64_t sub_1ABB0E82C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  v9 = a3[6];
  result = sub_1ABB0307C(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1ABB0E89C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t (*a3)(uint64_t, void, void, void, void, void)@<X3>, _BYTE *a4@<X8>)
{
  result = a3(a1, a2[2], a2[3], a2[4], a2[5], a2[6]);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1ABB0E8E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABB0E934(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t AssetRegistryResult.encode(to:)(void *a1, void *a2)
{
  v84 = a1;
  v3 = a2[3];
  v4 = a2[4];
  v5 = a2[5];
  v6 = a2[6];
  v87 = a2[2];
  v88 = v3;
  v89 = v4;
  v90 = v5;
  v91 = v6;
  sub_1ABA835FC();
  v7 = type metadata accessor for AssetRegistryResult.FailureCodingKeys();
  sub_1ABA7BD8C();
  swift_getWitnessTable();
  sub_1ABA8BE78();
  v77 = v7;
  v75 = v8;
  v9 = sub_1ABF24FC4();
  v10 = sub_1ABA7BB64(v9);
  v79 = v11;
  v80 = v10;
  v13 = *(v12 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7FBE0();
  v76 = v15;
  sub_1ABA7BD7C();
  v78 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7BC58();
  v74 = v21 - v20;
  v88 = v3;
  v89 = v4;
  v90 = v5;
  v91 = v6;
  sub_1ABA835FC();
  v22 = type metadata accessor for AssetRegistryResult.SuccessCodingKeys();
  sub_1ABA806D4();
  swift_getWitnessTable();
  sub_1ABA8BE78();
  v69 = v22;
  v67 = v23;
  v24 = sub_1ABF24FC4();
  v25 = sub_1ABA7BB64(v24);
  v71 = v26;
  v72 = v25;
  v28 = *(v27 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v29);
  sub_1ABA7FBE0();
  v68 = v30;
  sub_1ABA7BD7C();
  v70 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_1ABA7BC58();
  v66 = v36 - v35;
  sub_1ABA7BD7C();
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v41);
  sub_1ABA7BC58();
  v44 = v43 - v42;
  v82 = v5;
  v83 = v87;
  v88 = v3;
  v73 = v3;
  v89 = v4;
  v90 = v5;
  v81 = v6;
  v91 = v6;
  sub_1ABA835FC();
  type metadata accessor for AssetRegistryResult.CodingKeys();
  sub_1ABA931F0();
  swift_getWitnessTable();
  v45 = sub_1ABF24FC4();
  sub_1ABA7BB64(v45);
  v85 = v46;
  v48 = *(v47 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v65 - v50;
  v52 = v84[4];
  sub_1ABA93E20(v84, v84[3]);
  sub_1ABF252E4();
  (*(v38 + 16))(v44, v86, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v53 = v78;
    v55 = v73;
    v54 = v74;
    (*(v78 + 32))(v74, v44, v73);
    LOBYTE(v87) = 1;
    v56 = v76;
    sub_1ABF24EC4();
    v57 = v80;
    v58 = *(v81 + 16);
    sub_1ABF24F84();
    (*(v79 + 8))(v56, v57);
    (*(v53 + 8))(v54, v55);
  }

  else
  {
    v59 = v70;
    v60 = v66;
    v61 = v83;
    (*(v70 + 32))(v66, v44, v83);
    LOBYTE(v87) = 0;
    v62 = v68;
    sub_1ABF24EC4();
    v63 = v72;
    sub_1ABF24F84();
    (*(v71 + 8))(v62, v63);
    (*(v59 + 8))(v60, v61);
  }

  return (*(v85 + 8))(v51, v45);
}

uint64_t AssetRegistryResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v108 = a1;
  v95 = a7;
  *&v105 = a2;
  *(&v105 + 1) = a3;
  *&v106 = a4;
  *(&v106 + 1) = a5;
  v107 = a6;
  sub_1ABA835FC();
  v12 = type metadata accessor for AssetRegistryResult.FailureCodingKeys();
  sub_1ABA7BD8C();
  swift_getWitnessTable();
  sub_1ABA8BE78();
  v92 = v13;
  v93 = v12;
  v86 = sub_1ABF24EB4();
  sub_1ABA7BB64(v86);
  v85 = v14;
  v16 = *(v15 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7FBE0();
  v94 = v18;
  sub_1ABA8E630();
  v19 = type metadata accessor for AssetRegistryResult.SuccessCodingKeys();
  sub_1ABA806D4();
  swift_getWitnessTable();
  sub_1ABA8BE78();
  v90 = v19;
  v89 = v20;
  v84 = sub_1ABF24EB4();
  sub_1ABA7BB64(v84);
  v83 = v21;
  v23 = *(v22 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v24);
  sub_1ABA7FBE0();
  v91 = v25;
  sub_1ABA8E630();
  type metadata accessor for AssetRegistryResult.CodingKeys();
  sub_1ABA931F0();
  WitnessTable = swift_getWitnessTable();
  v96 = sub_1ABF24EB4();
  sub_1ABA7BB64(v96);
  v100 = v26;
  v28 = *(v27 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v78 - v30;
  v98 = a3;
  v99 = a2;
  *&v105 = a2;
  *(&v105 + 1) = a3;
  v88 = a4;
  *&v106 = a4;
  *(&v106 + 1) = a5;
  v87 = a6;
  v107 = a6;
  v32 = type metadata accessor for AssetRegistryResult();
  v33 = sub_1ABA7BB64(v32);
  v82 = v34;
  v36 = *(v35 + 64);
  v37 = MEMORY[0x1EEE9AC00](v33);
  v39 = &v78 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v37);
  v42 = &v78 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v44 = &v78 - v43;
  v45 = v108[4];
  sub_1ABA93E20(v108, v108[3]);
  v97 = v31;
  v46 = v102;
  sub_1ABF252C4();
  if (v46)
  {
    return sub_1ABA84B54(v108);
  }

  v80 = v39;
  WitnessTable = 0;
  v81 = v42;
  v79 = v44;
  v102 = v32;
  v47 = v96;
  *&v103 = sub_1ABF24EA4();
  sub_1ABF241F4();
  swift_getWitnessTable();
  *&v105 = sub_1ABF24914();
  *(&v105 + 1) = v48;
  *&v106 = v49;
  *(&v106 + 1) = v50;
  sub_1ABF24904();
  swift_getWitnessTable();
  sub_1ABF244C4();
  v51 = v103;
  if (v103 == 2 || (v78 = v105, v103 = v105, v104 = v106, (sub_1ABF24574() & 1) == 0))
  {
    v55 = sub_1ABF24B44();
    swift_allocError();
    v57 = v56;
    v58 = *(sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050) + 48);
    *v57 = v102;
    sub_1ABF24DA4();
    sub_1ABF24B34();
    (*(*(v55 - 8) + 104))(v57, *MEMORY[0x1E69E6AF8], v55);
    swift_willThrow();
    v59 = sub_1ABA94770();
    v60(v59, v47);
LABEL_12:
    swift_unknownObjectRelease();
    return sub_1ABA84B54(v108);
  }

  if (v51)
  {
    LOBYTE(v103) = 1;
    v52 = v47;
    v53 = WitnessTable;
    sub_1ABF24D94();
    v54 = v95;
    if (v53)
    {
      goto LABEL_9;
    }

    v64 = *(v87 + 8);
    v65 = v80;
    sub_1ABF24E64();
    sub_1ABAA5EF8();
    v67();
    v68 = sub_1ABA905D4();
    v69(v68, v52);
    sub_1ABA81528();
    swift_unknownObjectRelease();
    v70 = v102;
    swift_storeEnumTagMultiPayload();
    v71 = v65;
  }

  else
  {
    LOBYTE(v103) = 0;
    v61 = WitnessTable;
    sub_1ABF24D94();
    v54 = v95;
    if (v61)
    {
LABEL_9:
      v62 = sub_1ABA94770();
      v63(v62, v47);
      sub_1ABA81528();
      goto LABEL_12;
    }

    v71 = v81;
    sub_1ABF24E64();
    v72 = sub_1ABA8FE30();
    v73(v72);
    v74 = sub_1ABA905D4();
    v75(v74, v47);
    sub_1ABA81528();
    swift_unknownObjectRelease();
    v70 = v102;
    swift_storeEnumTagMultiPayload();
  }

  v76 = *(v82 + 32);
  v77 = v79;
  v76(v79, v71, v70);
  v76(v54, v77, v70);
  return sub_1ABA84B54(v108);
}

uint64_t AssetRegistryResult<>.verifyValidity()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, v14, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(v10 + 8))(v13, a1);
  }

  (*(v5 + 32))(v9, v13, v4);
  (*(a2 + 24))(v4, a2);
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_1ABB0F8A0(uint64_t a1)
{
  v2 = sub_1ABB0FA1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB0F8DC(uint64_t a1)
{
  v2 = sub_1ABB0FA1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AssetRegistryOverrideAssetEntrySuccess.encode(to:)(void *a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D26F8, &qword_1ABF38960);
  sub_1ABA7BB64(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABB0FA1C();
  sub_1ABF252E4();
  return (*(v4 + 8))(v9, v2);
}

unint64_t sub_1ABB0FA1C()
{
  result = qword_1EB4D2700;
  if (!qword_1EB4D2700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2700);
  }

  return result;
}

uint64_t sub_1ABB0FA98(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABB0FAF8(uint64_t a1)
{
  *(a1 + 8) = sub_1ABB0FB28();
  result = sub_1ABB0FB7C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABB0FB28()
{
  result = qword_1EB4D2708;
  if (!qword_1EB4D2708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2708);
  }

  return result;
}

unint64_t sub_1ABB0FB7C()
{
  result = qword_1EB4D2710[0];
  if (!qword_1EB4D2710[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4D2710);
  }

  return result;
}

uint64_t sub_1ABB0FC00(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1ABB0FC7C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_22:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_22;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    switch(v4)
    {
      case 2:
        LODWORD(v4) = *a1;
        break;
      case 3:
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v4) = *a1;
        break;
      default:
        LODWORD(v4) = *a1;
        break;
    }
  }

  return (v4 | v9) + 255;
}

void sub_1ABB0FDB0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

_BYTE *sub_1ABB0FFA4(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1ABB10070(_BYTE *result, int a2, int a3)
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

unint64_t sub_1ABB10164()
{
  result = qword_1EB4D2898;
  if (!qword_1EB4D2898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2898);
  }

  return result;
}

unint64_t sub_1ABB101BC()
{
  result = qword_1EB4D28A0;
  if (!qword_1EB4D28A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D28A0);
  }

  return result;
}

uint64_t sub_1ABB102C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = FileLoader.data(forFile:withExtension:)(a1, a2, 1852797802, 0xE400000000000000);
  if (!v4)
  {
    v12 = v10;
    if (v10 >> 60 == 15)
    {
      return 0;
    }

    else
    {
      v13 = v9;
      sub_1ABB10458();
      sub_1ABF217D4();
      a3 = v15;
      v14 = v15 == a1 && v16 == a2;
      if (!v14 && (sub_1ABF25054() & 1) == 0)
      {

        sub_1ABB104AC();
        swift_allocError();
        swift_willThrow();
      }

      sub_1ABAC9310(v13, v12);
    }
  }

  return a3;
}

uint64_t sub_1ABB10420()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_1ABB10458()
{
  result = qword_1ED86B4B0;
  if (!qword_1ED86B4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B4B0);
  }

  return result;
}

unint64_t sub_1ABB104AC()
{
  result = qword_1EB4D28A8;
  if (!qword_1EB4D28A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D28A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetRegistryServerConfigLoaderError(_BYTE *result, int a2, int a3)
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

uint64_t sub_1ABB105B0(uint64_t a1)
{
  v2 = sub_1ABB10650();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1ABB105EC(uint64_t a1)
{
  v2 = sub_1ABB10650();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

unint64_t sub_1ABB10628(uint64_t a1)
{
  result = sub_1ABB10650();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABB10650()
{
  result = qword_1EB4D28B0;
  if (!qword_1EB4D28B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D28B0);
  }

  return result;
}

unint64_t sub_1ABB106A8()
{
  result = qword_1EB4D28B8;
  if (!qword_1EB4D28B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D28B8);
  }

  return result;
}

uint64_t AssetRegistryShouldVerifyValidity.init(from:jsonDecoder:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v22 = a6;
  v23 = *(a4 - 8);
  v12 = *(v23 + 64);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v22 - v16;
  v18 = objc_autoreleasePoolPush();
  sub_1ABB10984(a3, a1, a2, a4, a5, &v24);
  objc_autoreleasePoolPop(v18);
  if (!v6)
  {
    v19 = v15;
    v20 = *(v23 + 32);
    v20(v17, v19, a4);
    (*(a5 + 24))(a4, a5);
    v20(v22, v17, a4);
  }

  return sub_1ABA96210(a1, a2);
}

void AssetRegistryShouldVerifyValidity.encodeToJsonData(jsonEncoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(a2, a3);
  if (!v3)
  {
    v5 = objc_autoreleasePoolPush();
    sub_1ABB109C0(a3, &v7, &v6);
    objc_autoreleasePoolPop(v5);
  }
}

uint64_t sub_1ABB10984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = *(a5 + 8);
  result = sub_1ABF217D4();
  if (v6)
  {
    *a6 = v6;
  }

  return result;
}

uint64_t sub_1ABB109C0@<X0>(uint64_t a1@<X3>, void *a2@<X4>, uint64_t *a3@<X8>)
{
  v6 = *(a1 + 16);
  result = sub_1ABF21834();
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    *a3 = result;
    a3[1] = v8;
  }

  return result;
}

uint64_t sub_1ABB10A40()
{
  sub_1ABB24730();
  sub_1ABA8C920();

  return sub_1ABF25294();
}

uint64_t sub_1ABB10AF8()
{
  sub_1ABF25234();
  v0 = sub_1ABAB526C();
  MEMORY[0x1AC5AA8A0](v0);
  return sub_1ABF25294();
}

uint64_t sub_1ABB10B50()
{
  sub_1ABB24730();
  Features.FeatureFlag.feature.getter();
  sub_1ABF24AE4();
  sub_1ABAA023C();

  return sub_1ABF25294();
}

uint64_t sub_1ABB10B9C()
{
  sub_1ABB24730();
  sub_1ABA8C920();

  return sub_1ABF25294();
}

uint64_t sub_1ABB10C78()
{
  sub_1ABB24730();
  sub_1ABF23D34();

  return sub_1ABF25294();
}

uint64_t sub_1ABB10D1C()
{
  sub_1ABB24730();
  sub_1ABA8C920();

  return sub_1ABF25294();
}

uint64_t sub_1ABB10DA4()
{
  sub_1ABB24730();
  MEMORY[0x1AC5AA8A0]((v0 & 1u) + 1);
  return sub_1ABF25294();
}

uint64_t sub_1ABB10DE4()
{
  sub_1ABB24730();
  if (v0)
  {
    sub_1ABA9E08C();
  }

  else
  {
    sub_1ABA7BB94();
  }

  sub_1ABA8C920();

  return sub_1ABF25294();
}

uint64_t sub_1ABB10E6C()
{
  sub_1ABF25234();
  sub_1ABAD4B80();
  sub_1ABF23A94();
  return sub_1ABF25294();
}

uint64_t sub_1ABB10EC0()
{
  sub_1ABB24730();
  sub_1ABF23D34();

  return sub_1ABF25294();
}

uint64_t sub_1ABB10F34()
{
  sub_1ABF25234();
  sub_1ABF23D34();
  return sub_1ABF25294();
}

uint64_t sub_1ABB10F7C()
{
  sub_1ABF25234();
  sub_1ABA9EF7C();
  return sub_1ABF25294();
}

uint64_t sub_1ABB10FBC()
{
  sub_1ABB24730();
  sub_1ABA8C920();

  return sub_1ABF25294();
}

uint64_t sub_1ABB11068()
{
  sub_1ABB24730();
  sub_1ABF23D34();

  return sub_1ABF25294();
}

uint64_t sub_1ABB11118()
{
  sub_1ABB24730();
  sub_1ABA8C920();

  return sub_1ABF25294();
}

uint64_t sub_1ABB111EC()
{
  sub_1ABB24730();
  sub_1ABA8071C();
  sub_1ABA8C920();

  return sub_1ABF25294();
}

uint64_t sub_1ABB11268()
{
  sub_1ABB24730();
  sub_1ABA8C920();

  return sub_1ABF25294();
}

uint64_t sub_1ABB112EC()
{
  sub_1ABB24730();
  sub_1ABA8C920();

  return sub_1ABF25294();
}

uint64_t sub_1ABB113B8()
{
  sub_1ABB24730();
  sub_1ABF23D34();

  return sub_1ABF25294();
}

uint64_t sub_1ABB1144C()
{
  sub_1ABB24730();
  sub_1ABA8C920();

  return sub_1ABF25294();
}

uint64_t sub_1ABB114F4()
{
  sub_1ABB24730();
  sub_1ABA8C920();

  return sub_1ABF25294();
}

uint64_t sub_1ABB115C4()
{
  sub_1ABA9F054();
  v0(v1);
  sub_1ABAA023C();

  return sub_1ABF25294();
}

uint64_t sub_1ABB1160C()
{
  sub_1ABB24730();
  if (v0)
  {
    sub_1ABA9E08C();
  }

  sub_1ABA8C920();

  return sub_1ABF25294();
}

uint64_t sub_1ABB116F0(uint64_t a1, char a2)
{
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](a2 & 1);
  return sub_1ABF25294();
}

uint64_t sub_1ABB11734(uint64_t a1, unsigned __int8 a2, void (*a3)(void))
{
  sub_1ABF25234();
  a3(a2);
  return sub_1ABF25294();
}

uint64_t sub_1ABB11798()
{
  sub_1ABA9F054();
  v0(v3, v1);
  return sub_1ABF25294();
}

uint64_t sub_1ABB117D8()
{
  sub_1ABB24730();
  sub_1ABF25264();
  return sub_1ABF25294();
}

uint64_t sub_1ABB11814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return sub_1ABA7E270();
  }

  else
  {
    return sub_1ABF25054();
  }
}

uint64_t sub_1ABB1182C(uint64_t a1, uint64_t a2)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
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

void sub_1ABB118B4()
{
  sub_1ABA7BCA8();
  v1 = v0;
  v2 = sub_1ABAD219C(&qword_1EB4D2B10, &qword_1ABF39D80);
  sub_1ABA7BB64(v2);
  v4 = *(v3 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7BCE0();
  v6 = v1[4];
  sub_1ABA88DCC(v1, v1[3]);
  sub_1ABB241FC();
  sub_1ABF252E4();
  sub_1ABF24F34();
  v7 = sub_1ABA8E0A8();
  v8(v7);
  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

uint64_t sub_1ABB119BC(uint64_t *a1)
{
  v5 = sub_1ABAD219C(&qword_1EB4D2B20, &qword_1ABF39D88);
  sub_1ABA7BB64(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7ED98();
  v11 = a1[4];
  sub_1ABA88DCC(a1, a1[3]);
  sub_1ABB241FC();
  sub_1ABF252C4();
  if (!v2)
  {
    v1 = sub_1ABF24E14();
    (*(v7 + 8))(v3, v5);
  }

  sub_1ABA84B54(a1);
  return v1;
}

uint64_t sub_1ABB11B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB1182C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABB11B2C(uint64_t a1)
{
  v2 = sub_1ABB241FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB11B68(uint64_t a1)
{
  v2 = sub_1ABB241FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB11BA4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1ABB119BC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

void sub_1ABB11BD0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1ABB118B4();
}

id sub_1ABB11BEC()
{
  v0 = type metadata accessor for AutonamingViewIdentifierType();
  v1 = objc_allocWithZone(v0);
  v2 = &v1[OBJC_IVAR___GDAutonamingViewIdentifierTypeInner_data];
  *v2 = 0x6E6F737265504850;
  *(v2 + 1) = 0xE800000000000000;
  v4.receiver = v1;
  v4.super_class = v0;
  result = objc_msgSendSuper2(&v4, sel_init);
  qword_1EB4D28C0 = result;
  return result;
}

id static AutonamingViewIdentifierType.phPerson.getter()
{
  if (qword_1EB4D0250 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB4D28C0;

  return v1;
}

uint64_t sub_1ABB11D20(uint64_t a1, uint64_t a2)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
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

uint64_t sub_1ABB11DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB11D20(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABB11DD8(uint64_t a1)
{
  v2 = sub_1ABB11FDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB11E14(uint64_t a1)
{
  v2 = sub_1ABB11FDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB11EA0(void *a1)
{
  v3 = v1;
  v5 = sub_1ABAD219C(&qword_1EB4D28C8, &qword_1ABF390B0);
  sub_1ABA7BB64(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7ED98();
  v11 = a1[4];
  sub_1ABA88DCC(a1, a1[3]);
  sub_1ABB11FDC();
  sub_1ABF252E4();
  v13 = *(v3 + OBJC_IVAR___GDAutonamingViewIdentifierTypeInner_data);
  v14 = *(v3 + OBJC_IVAR___GDAutonamingViewIdentifierTypeInner_data + 8);
  sub_1ABB12030();
  sub_1ABF24F84();
  return (*(v7 + 8))(v2, v5);
}

unint64_t sub_1ABB11FDC()
{
  result = qword_1EB4D28D0;
  if (!qword_1EB4D28D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D28D0);
  }

  return result;
}

unint64_t sub_1ABB12030()
{
  result = qword_1EB4D28E0;
  if (!qword_1EB4D28E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D28E0);
  }

  return result;
}

void AutonamingViewIdentifierType.__allocating_init(from:)()
{
  v1 = objc_allocWithZone(v0);
  sub_1ABA9F664();
  AutonamingViewIdentifierType.init(from:)();
}

void AutonamingViewIdentifierType.init(from:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4D28E8, &qword_1ABF390B8);
  sub_1ABA7BB64(v4);
  v6 = *(v5 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7BCE0();
  v8 = v3[4];
  sub_1ABA88DCC(v3, v3[3]);
  sub_1ABB11FDC();
  sub_1ABA89290();
  if (v1)
  {
    sub_1ABA84B54(v3);
    type metadata accessor for AutonamingViewIdentifierType();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1ABB12248();
    sub_1ABA9E2F4();
    sub_1ABF24E64();
    v9 = v15;
    v10 = &v0[OBJC_IVAR___GDAutonamingViewIdentifierTypeInner_data];
    *v10 = v14;
    *(v10 + 1) = v9;
    v13.receiver = v0;
    v13.super_class = type metadata accessor for AutonamingViewIdentifierType();
    objc_msgSendSuper2(&v13, sel_init);
    v11 = sub_1ABA8E0A8();
    v12(v11);
    sub_1ABA84B54(v3);
  }

  sub_1ABA7BC90();
}

unint64_t sub_1ABB12248()
{
  result = qword_1EB4D28F0;
  if (!qword_1EB4D28F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D28F0);
  }

  return result;
}

uint64_t sub_1ABB1229C()
{
  sub_1ABF25234();
  sub_1ABA9EF7C();
  return sub_1ABF25294();
}

void sub_1ABB122E0(void *a1@<X8>)
{
  AutonamingViewIdentifierType.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1ABB12330()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1ABF25234();
  sub_1ABF23D34();
  return sub_1ABF25294();
}

__objc2_class **AutonamingView.init(subgraph:isForLiveServing:)(uint64_t a1, char a2)
{
  *&v2[OBJC_IVAR___GDAutonamingViewInner_subgraph] = a1;
  sub_1ABAD219C(&qword_1EB4D1B40, &qword_1ABF34150);
  swift_allocObject();
  sub_1ABA9F664();
  v4 = swift_retain_n();
  *&v2[OBJC_IVAR___GDAutonamingViewInner_context] = sub_1ABAE6998(v4);
  *&v2[OBJC_IVAR___GDAutonamingViewInner_feedbackService] = [objc_allocWithZone(type metadata accessor for FeedbackService()) init];
  *&v2[OBJC_IVAR___GDAutonamingViewInner_rejectedIdentifiers] = MEMORY[0x1E69E7CD0];
  v2[OBJC_IVAR___GDAutonamingViewInner_isForLiveServing] = a2;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for AutonamingView();
  objc_msgSendSuper2(&v6, sel_init);
  sub_1ABA9F664();

  return &off_1E7963000;
}

void sub_1ABB124B8()
{
  sub_1ABA7BCA8();
  v83 = v3;
  v84 = v0;
  v82 = v4;
  v72 = v5;
  v77 = sub_1ABF23744();
  v6 = sub_1ABA7BB64(v77);
  v8 = v7;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v6);
  v76 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v70 - v13;
  v15 = sub_1ABF237F4();
  v16 = sub_1ABA7BB64(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7BC58();
  v23 = v22 - v21;
  v24 = sub_1ABF23774();
  v25 = sub_1ABA7BB64(v24);
  v74 = v26;
  v75 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1ABA7BC58();
  v31 = v30 - v29;
  v73 = type metadata accessor for LogSignpost();
  v32 = sub_1ABA7BBB0(v73);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  sub_1ABA806EC();
  v35 = sub_1ABF21EB4();
  v36 = sub_1ABA7BB64(v35);
  v80 = v37;
  v81 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  sub_1ABA7BC58();
  v42 = (v41 - v40);
  v43 = *(*(sub_1ABAD219C(&qword_1EB4D2920, &qword_1ABF6CB70) - 8) + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v70 - v45;
  v47 = type metadata accessor for CustomGraphPerson(0);
  v78 = v46;
  v71 = v47;
  sub_1ABA7B9B4(v46, 1, 1, v47);
  v79 = v42;
  sub_1ABF21EA4();
  if (qword_1ED871F20 != -1)
  {
    swift_once();
  }

  v48 = sub_1ABA7AA24(v15, qword_1ED871EF8);
  (*(v18 + 16))(v23, v48, v15);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v49 = sub_1ABF23764();
  v50 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    v52 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v49, v50, v52, "ViewEngine.Serving.AutonamingView.PersonLookup", "", v51, 2u);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  v53 = v77;
  (*(v8 + 16))(v76, v14, v77);
  v54 = sub_1ABF237B4();
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  swift_allocObject();
  sub_1ABA7D1BC();
  v57 = sub_1ABF237A4();
  (*(v8 + 8))(v14, v53);
  *v2 = "ViewEngine.Serving.AutonamingView.PersonLookup";
  *(v2 + 8) = 46;
  *(v2 + 16) = 2;
  *(v2 + 24) = v57;
  (*(v74 + 32))(v2 + *(v73 + 24), v31, v75);
  v58 = OBJC_IVAR___GDAutonamingViewInner_rejectedIdentifiers;
  v59 = v84;
  swift_beginAccess();
  v60 = *&v59[v58];

  v62 = v82;
  v61 = v83;
  v63 = sub_1ABB13404(v82, v83, v60);

  if (v63)
  {
    sub_1ABA7B9B4(v72, 1, 1, v71);
    v64 = v78;
  }

  else
  {
    v65 = *&v59[OBJC_IVAR___GDAutonamingViewInner_subgraph];
    v67 = *(v65 + 24);
    v66 = *(v65 + 32);
    ObjectType = swift_getObjectType();
    MEMORY[0x1EEE9AC00](ObjectType);
    *(&v70 - 4) = v59;
    *(&v70 - 3) = v62;
    *(&v70 - 2) = v61;
    v64 = v78;
    *(&v70 - 1) = v78;
    swift_unknownObjectRetain();
    sub_1ABF22454();
    swift_unknownObjectRelease();
    if (!v1)
    {
      sub_1ABB17F28(v64, v72);
    }
  }

  v69 = v79;
  sub_1ABB12A74(v64, v79, v59, v2);
  sub_1ABB17FFC(v2, type metadata accessor for LogSignpost);
  (*(v80 + 8))(v69, v81);
  sub_1ABAB480C(v64, &qword_1EB4D2920, &qword_1ABF6CB70);
  sub_1ABA7BC90();
}

uint64_t sub_1ABB12A74(uint64_t a1, char *a2, void *a3, uint64_t a4)
{
  v82 = a3;
  v83 = a4;
  v85 = a2;
  v5 = sub_1ABF23784();
  v72 = *(v5 - 8);
  v73 = v5;
  v6 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v71 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1ABF23744();
  v74 = *(v8 - 8);
  v75 = v8;
  v9 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1ABF21EB4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v81 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v80 = &v71 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v71 - v18;
  v20 = type metadata accessor for CustomGraphPerson(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1ABAD219C(&qword_1EB4D2920, &qword_1ABF6CB70);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v28 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v71 - v29;
  sub_1ABB17F28(a1, &v71 - v29);
  sub_1ABB17F28(v30, v28);
  v31 = sub_1ABA7E1E0(v28, 1, v20);
  v84 = v11;
  if (v31 == 1)
  {
    sub_1ABAB480C(v30, &qword_1EB4D2920, &qword_1ABF6CB70);
    v79 = 0;
  }

  else
  {
    sub_1ABB17F98(v28, v23);
    CustomGraphPerson.toObjectiveCGraphObject()(v32);
    v79 = v33;
    sub_1ABB17FFC(v23, type metadata accessor for CustomGraphPerson);
    sub_1ABAB480C(v30, &qword_1EB4D2920, &qword_1ABF6CB70);
  }

  sub_1ABF21EA4();
  v78 = type metadata accessor for Analytics();
  v76 = "iewIdentifierType";
  v34 = *(v13 + 16);
  v35 = v80;
  v34(v80, v85, v12);
  v36 = v81;
  v34(v81, v19, v12);
  v37 = *(v13 + 80);
  v38 = (v37 + 16) & ~v37;
  v39 = v12;
  v40 = (v14 + v37 + v38) & ~v37;
  v41 = (v14 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v85 = v19;
  v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  v77 = v13;
  v44 = *(v13 + 32);
  v44(v43 + v38, v35, v39);
  v44(v43 + v40, v36, v39);
  v45 = v79;
  *(v43 + v41) = v79;
  v46 = v85;
  v47 = v82;
  *(v43 + v42) = v82;
  v48 = v45;
  v49 = v47;
  static Analytics.sendEventForProductionLazy(eventName:eventPayloadBuilder:)(0xD00000000000002ELL, v76 | 0x8000000000000000, sub_1ABB243F8, v43);

  v50 = type metadata accessor for LogSignpost();
  v51 = *v83;
  v52 = *(v83 + 16);
  v53 = *(v83 + 24);
  v54 = v83 + *(v50 + 24);
  v55 = sub_1ABF23764();
  v56 = v84;
  sub_1ABF23794();
  v57 = sub_1ABF24704();
  result = sub_1ABF247D4();
  v59 = v39;
  v60 = v77;
  if ((result & 1) == 0)
  {
LABEL_16:

    (*(v74 + 8))(v56, v75);
    return (*(v60 + 8))(v46, v59);
  }

  v61 = v77;
  v62 = v59;
  if ((v52 & 1) == 0)
  {
    if (v51)
    {
LABEL_12:

      v63 = v71;
      sub_1ABF237C4();
      v64 = v63;

      v65 = v72;
      v66 = v63;
      v67 = v73;
      if ((*(v72 + 88))(v66, v73) == *MEMORY[0x1E69E93E8])
      {
        v68 = "[Error] Interval already ended";
      }

      else
      {
        (*(v65 + 8))(v64, v67);
        v68 = "";
      }

      v69 = swift_slowAlloc();
      *v69 = 0;
      v70 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v55, v57, v70, v51, v68, v69, 2u);
      MEMORY[0x1AC5AB8B0](v69, -1, -1);
      v59 = v62;
      v60 = v61;
      v46 = v85;
      goto LABEL_16;
    }

    __break(1u);
  }

  if (v51 >> 32)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((v51 & 0xFFFFF800) != 0xD800)
  {
    if (v51 >> 16 <= 0x10)
    {
      v51 = &v86;
      goto LABEL_12;
    }

    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_1ABB130E0()
{
  sub_1ABA8D0C4();
  if (*(v2 + 16))
  {
    v3 = v2;
    v4 = v1;
    v5 = v0;
    v6 = *(v2 + 40);
    sub_1ABF25234();
    sub_1ABA894AC();
    sub_1ABF23D34();
    sub_1ABF25294();
    v7 = *(v3 + 32);
    sub_1ABAA51D0();
    v10 = ~v9;
    do
    {
      v11 = v8 & v10;
      if (((1 << (v8 & v10)) & *(v3 + 56 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
      {
        break;
      }

      v12 = (*(v3 + 48) + 16 * v11);
      if (*v12 == v5 && v12[1] == v4)
      {
        break;
      }

      v14 = sub_1ABA94798();
      v8 = v11 + 1;
    }

    while ((v14 & 1) == 0);
  }

  sub_1ABA8D1F0();
}

void sub_1ABB131AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_1ABA8A238();
  a29 = v31;
  a30 = v34;
  if (*(v33 + 16))
  {
    v35 = v33;
    v36 = v32;
    v37 = *(v33 + 40);
    sub_1ABF25234();
    sub_1ABBB4ED8(&a10, v36);
    sub_1ABF25294();
    v38 = *(v35 + 32);
    sub_1ABAA51D0();
    sub_1ABA89D84(v39, v40);
    if (v41)
    {
      sub_1ABA8071C();
      v56 = v42;
      while (1)
      {
        v43 = 0xE400000000000000;
        v44 = 1701736302;
        switch(*(*(v35 + 48) + v30))
        {
          case 1:
            v44 = sub_1ABA97980();
            v43 = 0x80000001ABF7EE20;
            break;
          case 2:
            v44 = sub_1ABA9F400();
            break;
          case 3:
            v45 = 0x47746E657665;
            goto LABEL_12;
          case 4:
            v44 = sub_1ABA7D198();
            break;
          case 5:
            v44 = sub_1ABA7FC1C();
            break;
          case 6:
            v45 = 0x476C61636F6CLL;
LABEL_12:
            v44 = sub_1ABA80704(v45);
            break;
          case 7:
            sub_1ABA7BB94();
            v44 = v46 + 10;
            v43 = 0x80000001ABF7EE80;
            break;
          case 8:
            sub_1ABA7BB94();
            v44 = v47 + 8;
            v43 = v56;
            break;
          default:
            break;
        }

        v48 = 0xE400000000000000;
        v49 = 1701736302;
        switch(v36)
        {
          case 1:
            sub_1ABA8BA2C();
            v48 = 0x80000001ABF7EE20;
            break;
          case 2:
            v48 = 0xE700000000000000;
            sub_1ABA8BE94();
            break;
          case 3:
            v50 = 0x47746E657665;
            goto LABEL_22;
          case 4:
            sub_1ABA890F4();
            v48 = 0xED00007865646E49;
            break;
          case 5:
            sub_1ABA891B0();
            v48 = 0xEC0000007865646ELL;
            break;
          case 6:
            v50 = 0x476C61636F6CLL;
LABEL_22:
            v49 = v50 & 0xFFFFFFFFFFFFLL | 0x6172000000000000;
            v48 = 0xEF7865646E496870;
            break;
          case 7:
            sub_1ABA7BB94();
            v49 = v51 + 10;
            v48 = 0x80000001ABF7EE80;
            break;
          case 8:
            sub_1ABA7BB94();
            v49 = v52 + 8;
            v48 = v56;
            break;
          default:
            break;
        }

        if (v44 == v49 && v43 == v48)
        {
          break;
        }

        v54 = sub_1ABA8CF7C();

        if ((v54 & 1) == 0)
        {
          sub_1ABB24764();
          if (v55)
          {
            continue;
          }
        }

        goto LABEL_30;
      }
    }
  }

LABEL_30:
  sub_1ABA9A2A8();
}

BOOL sub_1ABB13404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1ABF25234();
  sub_1ABF23D34();
  v7 = sub_1ABF25294();
  v8 = ~(-1 << *(a3 + 32));
  do
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(a3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = sub_1ABF25054();
    v7 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

uint64_t sub_1ABB134F0(uint64_t a1, void *a2)
{
  v2 = a2[2];
  if (v2)
  {
    v5 = a2[5];
    sub_1ABF25224();
    sub_1ABB24748();
    do
    {
      sub_1ABAB508C(v6);
      if (!v8)
      {
        break;
      }

      v6 = v7 + 1;
    }

    while (*(a2[6] + 8 * v7) != a1);
  }

  return v2;
}

uint64_t sub_1ABB13550(char a1, uint64_t a2)
{
  if (*(a2 + 16) && (v5 = *(a2 + 40), sub_1ABA93208(), sub_1ABAAFEEC(), v6 = *(a2 + 32), sub_1ABAA51D0(), sub_1ABA89D84(v7, v8), (v9 & 1) != 0))
  {
    while (1)
    {
      v10 = 0xE500000000000000;
      v11 = 0x7465736E75;
      switch(*(*(a2 + 48) + v2))
      {
        case 1:
          v10 = 0xE700000000000000;
          v11 = sub_1ABAB1010();
          break;
        case 2:
          v11 = sub_1ABA9F8F8();
          break;
        case 3:
          v10 = 0xE600000000000000;
          v11 = sub_1ABA8C52C();
          break;
        case 4:
          v10 = 0xE600000000000000;
          v11 = sub_1ABAA0B4C();
          break;
        case 5:
          v10 = 0xE600000000000000;
          v11 = sub_1ABA8AD0C();
          break;
        case 6:
          sub_1ABA8BE84();
          v11 = v18 + 3591;
          v10 = 0xE600000000000000;
          break;
        case 7:
          v10 = 0xE600000000000000;
          v16 = 1752457574;
          goto LABEL_30;
        case 8:
          v10 = 0xE700000000000000;
          v11 = sub_1ABA9521C();
          break;
        case 9:
          v10 = 0xE700000000000000;
          v15 = sub_1ABA8AAA0();
          goto LABEL_28;
        case 0xA:
          v10 = 0xE600000000000000;
          v16 = 1953720691;
LABEL_30:
          v11 = v16 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
          break;
        case 0xB:
          v11 = sub_1ABA7ABD8() | 0x7261506400000000;
          v14 = 7630437;
          goto LABEL_25;
        case 0xC:
          v11 = sub_1ABA7ABD8() | 0x746F6D6400000000;
          goto LABEL_24;
        case 0xD:
          v11 = sub_1ABA7ABD8() | 0x7461666400000000;
LABEL_24:
          v14 = 7497064;
LABEL_25:
          v10 = v14 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 0xE:
          v10 = 0xE700000000000000;
          v13 = sub_1ABA8C6EC();
          goto LABEL_20;
        case 0xF:
          v11 = sub_1ABA8A360();
          break;
        case 0x10:
          v10 = 0xE300000000000000;
          v11 = 7237491;
          break;
        case 0x11:
          v10 = 0xE800000000000000;
          v17 = sub_1ABA9F9E8();
          goto LABEL_35;
        case 0x12:
          v10 = 0xE700000000000000;
          v15 = sub_1ABA9FAEC();
LABEL_28:
          v11 = v15 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
          break;
        case 0x13:
          v10 = 0xE400000000000000;
          v11 = 1701210487;
          break;
        case 0x14:
          v10 = 0xE700000000000000;
          v13 = sub_1ABA8A494();
LABEL_20:
          v11 = v13 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
          break;
        case 0x15:
          v10 = 0xE600000000000000;
          v11 = sub_1ABA9FBC0();
          break;
        case 0x16:
          v11 = sub_1ABA97980();
          v10 = 0x80000001ABF81E70;
          break;
        case 0x17:
          v10 = 0xE800000000000000;
          v17 = sub_1ABA8B24C();
LABEL_35:
          v11 = v17 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
          break;
        case 0x18:
          v10 = 0xE800000000000000;
          v11 = sub_1ABAA1264();
          break;
        case 0x19:
          v11 = sub_1ABAB543C();
          v10 = 0xE900000000000065;
          break;
        case 0x1A:
          v10 = 0xE600000000000000;
          v11 = sub_1ABA9FCE4();
          break;
        case 0x1B:
          v12 = 1699772781;
          goto LABEL_38;
        case 0x1C:
          v11 = sub_1ABAA0A28();
          break;
        case 0x1D:
          v12 = 1631811949;
LABEL_38:
          v11 = v12 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
          break;
        default:
          break;
      }

      v19 = 0xE500000000000000;
      v20 = 0x7465736E75;
      switch(a1)
      {
        case 1:
          v19 = 0xE700000000000000;
          sub_1ABA96004();
          break;
        case 2:
          sub_1ABA8B480();
          break;
        case 3:
          v19 = 0xE600000000000000;
          sub_1ABA8AEB8();
          break;
        case 4:
          v19 = 0xE600000000000000;
          sub_1ABA950B0();
          break;
        case 5:
          v19 = 0xE600000000000000;
          sub_1ABAA03D8();
          break;
        case 6:
          sub_1ABA8BE84();
          v20 = v30 + 3591;
          v19 = 0xE600000000000000;
          break;
        case 7:
          v19 = 0xE600000000000000;
          v27 = 1752457574;
          goto LABEL_67;
        case 8:
          v19 = 0xE700000000000000;
          sub_1ABAB5C34();
          break;
        case 9:
          v19 = 0xE700000000000000;
          sub_1ABA9FF9C();
          goto LABEL_65;
        case 10:
          v19 = 0xE600000000000000;
          v27 = 1953720691;
LABEL_67:
          v20 = v27 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
          break;
        case 11:
          sub_1ABA82DCC();
          v20 = v23 | 0x7261506400000000;
          v24 = 7630437;
          goto LABEL_62;
        case 12:
          sub_1ABA82DCC();
          v20 = v25 | 0x746F6D6400000000;
          goto LABEL_61;
        case 13:
          sub_1ABA82DCC();
          v20 = v29 | 0x7461666400000000;
LABEL_61:
          v24 = 7497064;
LABEL_62:
          v19 = v24 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 14:
          v19 = 0xE700000000000000;
          sub_1ABA8B0D0();
          goto LABEL_57;
        case 15:
          sub_1ABAA0118();
          break;
        case 16:
          v19 = 0xE300000000000000;
          v20 = 7237491;
          break;
        case 17:
          v19 = 0xE800000000000000;
          sub_1ABA8B634();
          goto LABEL_72;
        case 18:
          v19 = 0xE700000000000000;
          sub_1ABA8B844();
LABEL_65:
          v20 = v26 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
          break;
        case 19:
          v19 = 0xE400000000000000;
          v20 = 1701210487;
          break;
        case 20:
          v19 = 0xE700000000000000;
          sub_1ABAA029C();
LABEL_57:
          v20 = v22 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
          break;
        case 21:
          v19 = 0xE600000000000000;
          sub_1ABA8BA58();
          break;
        case 22:
          sub_1ABA8BA2C();
          v19 = 0x80000001ABF81E70;
          break;
        case 23:
          v19 = 0xE800000000000000;
          sub_1ABAA0510();
LABEL_72:
          v20 = v28 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
          break;
        case 24:
          v19 = 0xE800000000000000;
          sub_1ABA97728();
          break;
        case 25:
          sub_1ABAA1B7C();
          v19 = 0xE900000000000065;
          break;
        case 26:
          v19 = 0xE600000000000000;
          sub_1ABAA06AC();
          break;
        case 27:
          v21 = 1699772781;
          goto LABEL_75;
        case 28:
          sub_1ABA9FE44();
          break;
        case 29:
          v21 = 1631811949;
LABEL_75:
          v20 = v21 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
          break;
        default:
          break;
      }

      if (v11 == v20 && v10 == v19)
      {
        break;
      }

      v32 = sub_1ABA8CF7C();

      if ((v32 & 1) == 0)
      {
        sub_1ABB24764();
        if (v33)
        {
          continue;
        }
      }

      return v32 & 1;
    }

    v32 = 1;
  }

  else
  {
    v32 = 0;
  }

  return v32 & 1;
}

uint64_t sub_1ABB139DC(uint64_t a1, void *a2, void (*a3)(uint64_t))
{
  v3 = a2[2];
  if (v3)
  {
    v7 = a2[5];
    sub_1ABF25234();
    v8 = sub_1ABA9DF4C();
    a3(v8);
    sub_1ABF25294();
    sub_1ABB24748();
    do
    {
      sub_1ABAB508C(v9);
      if (!v11)
      {
        break;
      }

      v9 = v10 + 1;
    }

    while (*(a2[6] + 8 * v10) != a1);
  }

  return v3;
}

uint64_t sub_1ABB13A64(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5)
{
  v43 = a5;
  v48 = a3;
  v53 = a1;
  v7 = sub_1ABAD219C(&qword_1EB4D2920, &qword_1ABF6CB70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v42 - v9;
  v11 = type metadata accessor for CustomGraphPerson(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v55 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = sub_1ABF22854();
  v54 = *(v52 - 8);
  v14 = *(v54 + 64);
  v15 = MEMORY[0x1EEE9AC00](v52);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - v18;
  *&v57 = 0;
  *(&v57 + 1) = 0xE000000000000000;
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD000000000000014, 0x80000001ABF87040);
  v51 = a2;
  v20 = *(a2 + OBJC_IVAR___GDAutonamingViewInner_subgraph);
  v22 = *(v20 + 40);
  v21 = *(v20 + 48);

  MEMORY[0x1AC5A9410](v22, v21);

  MEMORY[0x1AC5A9410](0xD000000000000025, 0x80000001ABF87060);
  v50 = sub_1ABAD219C(&qword_1EB4D5820, &unk_1ABF39E30);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1ABF34060;
  v44 = v11;
  v45 = v10;
  v24 = _Records_GDEntityPredicate_records;
  if (_Records_GDEntityPredicate_records)
  {
    v25 = v23;
    sub_1ABF22BB4();
    sub_1ABA91D48(v24[2412], *(v24 + 604), *(v24 + 605), &v57);
    v26 = v57;

    v27 = MEMORY[0x1E69E6158];
    v28 = MEMORY[0x1E69A0138];
    *(v25 + 56) = MEMORY[0x1E69E6158];
    *(v25 + 64) = v28;
    *(v25 + 32) = v26;
    *(v25 + 96) = v27;
    *(v25 + 104) = v28;
    *(v25 + 72) = v48;
    *(v25 + 80) = a4;

    sub_1ABF22834();
    v59 = 0;
    v57 = 0u;
    v58 = 0u;
    v29 = v49;
    sub_1ABF22B44();
    if (v29)
    {

      sub_1ABAB480C(&v57, &unk_1EB4D38A0, &qword_1ABF3A8B0);
      return (*(v54 + 8))(v19, v52);
    }

    else
    {

      sub_1ABAB480C(&v57, &unk_1EB4D38A0, &qword_1ABF3A8B0);
      v31 = *(v54 + 8);
      v54 += 8;
      v48 = v31;
      v31(v19, v52);
      v49 = OBJC_IVAR___GDAutonamingViewInner_context;
      v47 = "GRDBInternal/Row.swift";
      v46 = xmmword_1ABF34740;
      v33 = v44;
      v32 = v45;
      while (1)
      {
        if (!sub_1ABE7EDC8())
        {
        }

        sub_1ABB370C4(&v57);
        if (BYTE8(v57))
        {
        }

        sub_1ABC4A328(&v57, v57);
        v34 = *(v51 + v49);
        sub_1ABE545E4();
        if (sub_1ABA7E1E0(v32, 1, v33) == 1)
        {

          return sub_1ABAB480C(v32, &qword_1EB4D2920, &qword_1ABF6CB70);
        }

        v35 = v55;
        sub_1ABB17F98(v32, v55);
        v36 = swift_allocObject();
        *(v36 + 16) = v46;
        v37 = *v35;
        v38 = (*v35 & 0x80000000000000) != 0 ? 3826797 : 3828069;
        *&v57 = v38;
        *(&v57 + 1) = 0xE300000000000000;
        v60 = v37;
        v39 = sub_1ABF24FF4();
        MEMORY[0x1AC5A9410](v39);

        v40 = v57;
        *(v36 + 56) = MEMORY[0x1E69E6158];
        *(v36 + 64) = MEMORY[0x1E69A0138];
        *(v36 + 32) = v40;
        sub_1ABF22834();
        v59 = 0;
        v57 = 0u;
        v58 = 0u;
        sub_1ABF229D4();

        sub_1ABAB480C(&v57, &unk_1EB4D38A0, &qword_1ABF3A8B0);
        v48(v17, v52);
        if (!v56)
        {
          break;
        }

        sub_1ABB17FFC(v55, type metadata accessor for CustomGraphPerson);
      }

      v41 = v43;
      sub_1ABAB480C(v43, &qword_1EB4D2920, &qword_1ABF6CB70);
      sub_1ABB17F98(v55, v41);
      return sub_1ABA7B9B4(v41, 0, 1, v33);
    }
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_1ABB141A0()
{
  v0 = type metadata accessor for CustomGraphPerson(0);
  v1 = sub_1ABA7BBB0(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1ABA7BC58();
  v6 = v5 - v4;
  v7 = sub_1ABAD219C(&qword_1EB4D2920, &qword_1ABF6CB70);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18[-v12];
  sub_1ABB124B8();
  sub_1ABB17F28(v13, v11);
  if (sub_1ABA7E1E0(v11, 1, v0) == 1)
  {
    sub_1ABAB480C(v13, &qword_1EB4D2920, &qword_1ABF6CB70);
    return 0;
  }

  else
  {
    sub_1ABB17F98(v11, v6);
    CustomGraphPerson.toObjectiveCGraphObject()(v16);
    v14 = v17;
    sub_1ABB17FFC(v6, type metadata accessor for CustomGraphPerson);
    sub_1ABAB480C(v13, &qword_1EB4D2920, &qword_1ABF6CB70);
  }

  return v14;
}

uint64_t sub_1ABB144D8()
{
  v1 = *(v0 + OBJC_IVAR___GDAutonamingViewInner_feedbackService);
  type metadata accessor for AutonamingViewFeedback();
  sub_1ABA96928();
  v2 = swift_allocObject();
  *(v2 + 16) = 1;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0;
  *(v2 + 64) = 2;
  sub_1ABB145B4(v2, 0, 1);
}

__n128 AutonamingViewFeedback.__allocating_init(feedback:)(uint64_t a1)
{
  sub_1ABA96928();
  v2 = swift_allocObject();
  v3 = *(a1 + 48);
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  result = *(a1 + 32);
  *(v2 + 48) = result;
  *(v2 + 64) = v3;
  return result;
}

void sub_1ABB145B4(void *a1, uint64_t a2, char a3)
{
  v5 = v3;
  v39[1] = *MEMORY[0x1E69E9840];
  v9 = sub_1ABF21EB4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v3 + OBJC_IVAR___GDFeedbackServiceInner_encoder);
  v39[0] = a1;
  type metadata accessor for AutonamingViewFeedback();
  sub_1ABB24300(&qword_1EB4CF050, v15, type metadata accessor for AutonamingViewFeedback);
  v16 = sub_1ABF21B14();
  if (v4)
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v18 = sub_1ABF237F4();
    sub_1ABA7AA24(v18, qword_1ED871B40);
    v19 = v4;
    v20 = sub_1ABF237D4();
    v21 = sub_1ABF24664();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = v4;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_1ABA78000, v20, v21, "Failed to encode Feedback: %@", v22, 0xCu);
      sub_1ABAB480C(v23, &unk_1EB4D57F0, &qword_1ABF390C0);
      MEMORY[0x1AC5AB8B0](v23, -1, -1);
      MEMORY[0x1AC5AB8B0](v22, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v26 = v16;
    v37 = *(v5 + OBJC_IVAR___GDFeedbackServiceInner_server);
    v38 = v17;
    v27 = sub_1ABF21DB4();
    v28 = sub_1ABF23BD4();
    v29 = a2;
    v30 = v28;
    if (a3)
    {
      v31 = 0;
    }

    else
    {
      v31 = v29;
    }

    sub_1ABF21E74();
    v32 = sub_1ABF21E34();
    (*(v10 + 8))(v13, v9);
    v39[0] = 0;
    v33 = [v37 logWithFeedbackData:v27 type:v30 variant:0 eventId:v31 withTimestamp:v32 shouldProcessImmediately:1 error:v39];

    if (v33)
    {
      v34 = v39[0];
    }

    else
    {
      v35 = v39[0];
      sub_1ABF21BE4();

      swift_willThrow();
    }

    sub_1ABA96210(v26, v38);
  }

  v36 = *MEMORY[0x1E69E9840];
}

void sub_1ABB14958()
{
  sub_1ABA7BCA8();
  sub_1ABA83608();
  v3 = sub_1ABAAD23C(*MEMORY[0x1E69E9840]);
  v4 = sub_1ABA7BB64(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA806EC();
  sub_1ABA82700(OBJC_IVAR___GDFeedbackServiceInner_encoder);
  type metadata accessor for EntityResolutionRankingStatefulFeedback();
  sub_1ABB24300(&qword_1EB4D2B98, 255, type metadata accessor for EntityResolutionRankingStatefulFeedback);
  sub_1ABA95700();
  if (v0)
  {
    if (qword_1ED871B38 != -1)
    {
      sub_1ABA7D178();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABA7D1BC();
    v10 = sub_1ABF237D4();
    sub_1ABF24664();
    sub_1ABAA9158();
    if (sub_1ABB247B4())
    {
      sub_1ABA8C938();
      swift_slowAlloc();
      v11 = sub_1ABAB6580();
      sub_1ABAB0F50(5.7779e-34);
      v12 = _swift_stdlib_bridgeErrorToNSError();
      sub_1ABA9E1B4(v12);
      sub_1ABA9EA40(&dword_1ABA78000, v13, v14, "Failed to encode Feedback: %@");
      sub_1ABAB480C(v11, &unk_1EB4D57F0, &qword_1ABF390C0);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
      v15 = sub_1ABA7E368();
      MEMORY[0x1AC5AB8B0](v15);
    }

    else
    {
    }
  }

  else
  {
    sub_1ABB2479C(v7, OBJC_IVAR___GDFeedbackServiceInner_server);
    sub_1ABAA1494();
    sub_1ABF23BD4();
    sub_1ABAA56EC();
    sub_1ABF21E34();
    v16 = sub_1ABA99280();
    v18 = v17(v16);
    sub_1ABA7BDA4(v18, sel_logWithFeedbackData_type_variant_eventId_withTimestamp_shouldProcessImmediately_error_);
    sub_1ABAA0D2C();

    v19 = 0;
    if ((v3 & 1) == 0)
    {
      sub_1ABA8CE48();

      swift_willThrow();
    }

    sub_1ABAB3BB8();
  }

  v20 = *MEMORY[0x1E69E9840];
  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

void sub_1ABB14BE0()
{
  sub_1ABA7BCA8();
  sub_1ABA83608();
  v3 = sub_1ABAAD23C(*MEMORY[0x1E69E9840]);
  v4 = sub_1ABA7BB64(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA806EC();
  sub_1ABA82700(OBJC_IVAR___GDFeedbackServiceInner_encoder);
  type metadata accessor for EntityResolutionRankingDirectFeedback();
  sub_1ABB24300(&qword_1EB4D2B90, 255, type metadata accessor for EntityResolutionRankingDirectFeedback);
  sub_1ABA95700();
  if (v0)
  {
    if (qword_1ED871B38 != -1)
    {
      sub_1ABA7D178();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABA7D1BC();
    v10 = sub_1ABF237D4();
    sub_1ABF24664();
    sub_1ABAA9158();
    if (sub_1ABB247B4())
    {
      sub_1ABA8C938();
      swift_slowAlloc();
      v11 = sub_1ABAB6580();
      sub_1ABAB0F50(5.7779e-34);
      v12 = _swift_stdlib_bridgeErrorToNSError();
      sub_1ABA9E1B4(v12);
      sub_1ABA9EA40(&dword_1ABA78000, v13, v14, "Failed to encode Feedback: %@");
      sub_1ABAB480C(v11, &unk_1EB4D57F0, &qword_1ABF390C0);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
      v15 = sub_1ABA7E368();
      MEMORY[0x1AC5AB8B0](v15);
    }

    else
    {
    }
  }

  else
  {
    sub_1ABB2479C(v7, OBJC_IVAR___GDFeedbackServiceInner_server);
    sub_1ABAA1494();
    sub_1ABF23BD4();
    sub_1ABAA56EC();
    sub_1ABF21E34();
    v16 = sub_1ABA99280();
    v18 = v17(v16);
    sub_1ABA7BDA4(v18, sel_logWithFeedbackData_type_variant_eventId_withTimestamp_shouldProcessImmediately_error_);
    sub_1ABAA0D2C();

    v19 = 0;
    if ((v3 & 1) == 0)
    {
      sub_1ABA8CE48();

      swift_willThrow();
    }

    sub_1ABAB3BB8();
  }

  v20 = *MEMORY[0x1E69E9840];
  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

void sub_1ABB14E68()
{
  sub_1ABA7BCA8();
  sub_1ABA83608();
  v3 = sub_1ABAAD23C(*MEMORY[0x1E69E9840]);
  v4 = sub_1ABA7BB64(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA806EC();
  sub_1ABA82700(OBJC_IVAR___GDFeedbackServiceInner_encoder);
  type metadata accessor for EntityTaggingDirectFeedback();
  sub_1ABB24300(&qword_1EB4D2B40, 255, type metadata accessor for EntityTaggingDirectFeedback);
  sub_1ABA95700();
  if (v0)
  {
    if (qword_1ED871B38 != -1)
    {
      sub_1ABA7D178();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABA7D1BC();
    v10 = sub_1ABF237D4();
    sub_1ABF24664();
    sub_1ABAA9158();
    if (sub_1ABB247B4())
    {
      sub_1ABA8C938();
      swift_slowAlloc();
      v11 = sub_1ABAB6580();
      sub_1ABAB0F50(5.7779e-34);
      v12 = _swift_stdlib_bridgeErrorToNSError();
      sub_1ABA9E1B4(v12);
      sub_1ABA9EA40(&dword_1ABA78000, v13, v14, "Failed to encode Feedback: %@");
      sub_1ABAB480C(v11, &unk_1EB4D57F0, &qword_1ABF390C0);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
      v15 = sub_1ABA7E368();
      MEMORY[0x1AC5AB8B0](v15);
    }

    else
    {
    }
  }

  else
  {
    sub_1ABB2479C(v7, OBJC_IVAR___GDFeedbackServiceInner_server);
    sub_1ABAA1494();
    sub_1ABF23BD4();
    sub_1ABAA56EC();
    sub_1ABF21E34();
    v16 = sub_1ABA99280();
    v18 = v17(v16);
    sub_1ABA7BDA4(v18, sel_logWithFeedbackData_type_variant_eventId_withTimestamp_shouldProcessImmediately_error_);
    sub_1ABAA0D2C();

    v19 = 0;
    if ((v3 & 1) == 0)
    {
      sub_1ABA8CE48();

      swift_willThrow();
    }

    sub_1ABAB3BB8();
  }

  v20 = *MEMORY[0x1E69E9840];
  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

void sub_1ABB150F0()
{
  sub_1ABA7BCA8();
  sub_1ABA83608();
  v3 = sub_1ABAAD23C(*MEMORY[0x1E69E9840]);
  v4 = sub_1ABA7BB64(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA806EC();
  sub_1ABA82700(OBJC_IVAR___GDFeedbackServiceInner_encoder);
  type metadata accessor for EntityTaggingStatefulFeedback();
  sub_1ABB24300(&qword_1EB4D2B78, 255, type metadata accessor for EntityTaggingStatefulFeedback);
  sub_1ABA95700();
  if (v0)
  {
    if (qword_1ED871B38 != -1)
    {
      sub_1ABA7D178();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABA7D1BC();
    v10 = sub_1ABF237D4();
    sub_1ABF24664();
    sub_1ABAA9158();
    if (sub_1ABB247B4())
    {
      sub_1ABA8C938();
      swift_slowAlloc();
      v11 = sub_1ABAB6580();
      sub_1ABAB0F50(5.7779e-34);
      v12 = _swift_stdlib_bridgeErrorToNSError();
      sub_1ABA9E1B4(v12);
      sub_1ABA9EA40(&dword_1ABA78000, v13, v14, "Failed to encode Feedback: %@");
      sub_1ABAB480C(v11, &unk_1EB4D57F0, &qword_1ABF390C0);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
      v15 = sub_1ABA7E368();
      MEMORY[0x1AC5AB8B0](v15);
    }

    else
    {
    }
  }

  else
  {
    sub_1ABB2479C(v7, OBJC_IVAR___GDFeedbackServiceInner_server);
    sub_1ABAA1494();
    sub_1ABF23BD4();
    sub_1ABAA56EC();
    sub_1ABF21E34();
    v16 = sub_1ABA99280();
    v18 = v17(v16);
    sub_1ABA7BDA4(v18, sel_logWithFeedbackData_type_variant_eventId_withTimestamp_shouldProcessImmediately_error_);
    sub_1ABAA0D2C();

    v19 = 0;
    if ((v3 & 1) == 0)
    {
      sub_1ABA8CE48();

      swift_willThrow();
    }

    sub_1ABAB3BB8();
  }

  v20 = *MEMORY[0x1E69E9840];
  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

uint64_t sub_1ABB153C0()
{
  sub_1ABAA1958();
  sub_1ABAA27EC();
  sub_1ABB220B4(v1, v0);
  swift_endAccess();

  CustomGraphPerson.toObjectiveCGraphObject()(v2);
  v4 = v3;
  sub_1ABB15544(&v18);

  type metadata accessor for AutonamingViewFeedback();
  sub_1ABA96928();
  v5 = swift_allocObject();
  sub_1ABAA16EC(v5, v6, v7, v8, v9, v10, v11, v12, v16, v17, v13, v18);
  v14[64] = 0;
  sub_1ABAA2BAC(v14, OBJC_IVAR___GDAutonamingViewInner_feedbackService);
  if (v0)
  {
  }
}

uint64_t sub_1ABB1547C(uint64_t a1, void *a2)
{
  sub_1ABAA27EC();
  sub_1ABB220B4(a1, a2);
  swift_endAccess();

  sub_1ABB15544(v7);
  type metadata accessor for AutonamingViewFeedback();
  sub_1ABA96928();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = v7[1];
  *(v4 + 32) = v7[0];
  *(v4 + 48) = v5;
  *(v4 + 64) = 0;
  sub_1ABAA2BAC(v4, OBJC_IVAR___GDAutonamingViewInner_feedbackService);
  if (a2)
  {
  }
}

uint64_t sub_1ABB15544@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1ABF21BC4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - v10;
  v12 = sub_1ABB22FFC(v2, &selRef_suggestedNameStringInner);
  v14 = v13;
  v15 = [v2 suggestedNameComponentsInner];
  if (v15)
  {
    v16 = v15;

    sub_1ABF21BA4();

    (*(v5 + 32))(v11, v9, v4);
    v17 = [objc_allocWithZone(MEMORY[0x1E696ADF8]) init];
    [v17 setStyle_];
    v18 = sub_1ABF21B94();
    v19 = [v17 stringFromPersonNameComponents_];

    v12 = sub_1ABF23C04();
    v14 = v20;

    (*(v5 + 8))(v11, v4);
  }

  result = sub_1ABB22FFC(v2, &selRef_suggestedContactIdentifierInner);
  *a1 = result;
  a1[1] = v22;
  a1[2] = v12;
  a1[3] = v14;
  return result;
}

uint64_t sub_1ABB1574C()
{
  sub_1ABAA1958();
  sub_1ABAA27EC();

  sub_1ABA894AC();
  sub_1ABB18838(v1, v2, v3);
  swift_endAccess();

  CustomGraphPerson.toObjectiveCGraphObject()(v4);
  v6 = v5;
  sub_1ABB15544(&v20);

  type metadata accessor for AutonamingViewFeedback();
  sub_1ABA96928();
  v7 = swift_allocObject();
  sub_1ABAA16EC(v7, v8, v9, v10, v11, v12, v13, v14, v18, v19, v15, v20);
  v16[64] = 1;
  sub_1ABAA2BAC(v16, OBJC_IVAR___GDAutonamingViewInner_feedbackService);
  if (v0)
  {
  }
}

uint64_t sub_1ABB15814()
{
  sub_1ABAA1958();
  sub_1ABAA27EC();

  sub_1ABA894AC();
  sub_1ABB18838(v1, v2, v3);
  swift_endAccess();

  sub_1ABB15544(&v17);
  type metadata accessor for AutonamingViewFeedback();
  sub_1ABA96928();
  v4 = swift_allocObject();
  sub_1ABAA16EC(v4, v5, v6, v7, v8, v9, v10, v11, v15, v16, v12, v17);
  v13[64] = 1;
  sub_1ABAA2BAC(v13, OBJC_IVAR___GDAutonamingViewInner_feedbackService);
  if (v0)
  {
  }
}

uint64_t sub_1ABB158E8(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, id))
{
  sub_1ABF23C04();
  v10 = v9;
  v11 = a4;
  v12 = a1;
  v13 = sub_1ABA9F664();
  a6(v13, v10, v11);
}

id AutonamingView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1ABB159F8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id AutonamingView.__allocating_init(viewName:)()
{
  v8[1] = *MEMORY[0x1E69E9840];
  v1 = objc_allocWithZone(v0);
  v2 = sub_1ABF23BD4();

  v8[0] = 0;
  v3 = [v1 initWithViewName:v2 error:v8];

  if (v3)
  {
    v4 = v8[0];
  }

  else
  {
    v5 = v8[0];
    sub_1ABF21BE4();

    swift_willThrow();
  }

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

void *AutonamingView.init(viewName:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ViewService();
  v6 = static ViewService.clientService.getter(v5);
  v7 = ViewService.subgraphView(name:tableName:batchSize:)(a1, a2, 0x6870617267627573, 0xE800000000000000, 10);

  if (v2)
  {
    swift_getObjectType();
    sub_1ABA90F50();
  }

  else
  {
    v8 = objc_allocWithZone(type metadata accessor for AutonamingView());
    v9 = v7;
    v7 = v8;
    AutonamingView.init(subgraph:isForLiveServing:)(v9, 1);
    sub_1ABA7D1BC();
    swift_getObjectType();
    sub_1ABA90F50();
  }

  return v7;
}

Swift::Void __swiftcall AutonamingView.reset()()
{
  v1 = OBJC_IVAR___GDAutonamingViewInner_rejectedIdentifiers;
  swift_beginAccess();
  v2 = *(v0 + v1);
  *(v0 + v1) = MEMORY[0x1E69E7CD0];

  type metadata accessor for AutonamingViewFeedback();
  sub_1ABA96928();
  v3 = swift_allocObject();
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 2;
  v4 = *(v0 + OBJC_IVAR___GDAutonamingViewInner_feedbackService);
  sub_1ABB145B4(v3, 0, 1);
}

uint64_t AutonamingViewFeedback.MatchingInfo.cnContact.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_1ABA7D000();
}

uint64_t AutonamingViewFeedback.MatchingInfo.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_1ABA7D000();
}

uint64_t sub_1ABB15E5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6361746E6F436E63 && a2 == 0xE900000000000074;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
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

uint64_t sub_1ABB15F2C(char a1)
{
  if (a1)
  {
    return 1701667182;
  }

  else
  {
    return 0x6361746E6F436E63;
  }
}

uint64_t sub_1ABB15F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB15E5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABB15FA8(uint64_t a1)
{
  v2 = sub_1ABB221DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB15FE4(uint64_t a1)
{
  v2 = sub_1ABB221DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AutonamingViewFeedback.MatchingInfo.encode(to:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4D2928, &qword_1ABF390C8);
  sub_1ABA7BB64(v4);
  v16 = v5;
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v15 - v9;
  v11 = *v0;
  v12 = v0[1];
  v13 = v0[2];
  v15[1] = v0[3];
  v15[2] = v13;
  v14 = v3[4];
  sub_1ABA88DCC(v3, v3[3]);
  sub_1ABB221DC();
  sub_1ABF252E4();
  sub_1ABF24ED4();
  if (!v1)
  {
    sub_1ABF24ED4();
  }

  (*(v16 + 8))(v10, v4);
  sub_1ABA7BC90();
}

void AutonamingViewFeedback.MatchingInfo.init(from:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v5 = v4;
  v6 = sub_1ABAD219C(&qword_1EB4D2938, &qword_1ABF390D0);
  sub_1ABA7BB64(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7BCE0();
  v12 = v3[4];
  sub_1ABA88DCC(v3, v3[3]);
  sub_1ABB221DC();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA84B54(v3);
  }

  else
  {
    v13 = sub_1ABF24DB4();
    v15 = v14;
    v16 = sub_1ABF24DB4();
    v18 = v17;
    v19 = v16;
    (*(v8 + 8))(v1, v6);
    *v5 = v13;
    v5[1] = v15;
    v5[2] = v19;
    v5[3] = v18;

    sub_1ABA84B54(v3);
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABB1633C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D7269666E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7463656A6572 && a2 == 0xE600000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7465736572 && a2 == 0xE500000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000015 && 0x80000001ABF86E40 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1ABF25054();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1ABB16494(char a1)
{
  result = 0x6D7269666E6F63;
  switch(a1)
  {
    case 1:
      result = 0x7463656A6572;
      break;
    case 2:
      result = 0x7465736572;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABB16514(uint64_t a1, uint64_t a2)
{
  sub_1ABA7BB94();
  v5 = v3 == v4 && 0x80000001ABF86E60 == a2;
  if (v5 || (v6 = v3, sub_1ABA97980(), (sub_1ABF25054() & 1) != 0))
  {

    return 0;
  }

  else if (v6 == 1868983913 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v9 = sub_1ABF25054();

    if (v9)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABB16614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB1633C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABB1663C(uint64_t a1)
{
  v2 = sub_1ABB22230();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB16678(uint64_t a1)
{
  v2 = sub_1ABB22230();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB166B4(uint64_t a1)
{
  v2 = sub_1ABB223D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB166F0(uint64_t a1)
{
  v2 = sub_1ABB223D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB1672C(uint64_t a1)
{
  v2 = sub_1ABB22284();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB16768(uint64_t a1)
{
  v2 = sub_1ABB22284();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB167A4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1ABF25234();
  a4(v8, v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABB167F0(uint64_t a1)
{
  v2 = sub_1ABB2232C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB1682C(uint64_t a1)
{
  v2 = sub_1ABB2232C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB16868(uint64_t a1)
{
  v2 = sub_1ABB222D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB168A4(uint64_t a1)
{
  v2 = sub_1ABB222D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AutonamingViewFeedback.FeedbackType.encode(to:)()
{
  sub_1ABA7BCA8();
  v5 = v4;
  v6 = sub_1ABAD219C(&qword_1EB4D2940, &qword_1ABF390D8);
  v7 = sub_1ABA7BB64(v6);
  v51 = v8;
  v52 = v7;
  v10 = *(v9 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7FBE0();
  v50 = v12;
  v49 = sub_1ABAD219C(&qword_1EB4D2948, &qword_1ABF390E0);
  sub_1ABA7BB64(v49);
  v48[1] = v13;
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7FBE0();
  v48[0] = v17;
  v18 = sub_1ABAD219C(&qword_1EB4D2950, &qword_1ABF390E8);
  v19 = sub_1ABA7BB64(v18);
  v55 = v20;
  v56 = v19;
  v22 = *(v21 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v23);
  v25 = v48 - v24;
  v26 = sub_1ABAD219C(&qword_1EB4D2958, &qword_1ABF390F0);
  v27 = sub_1ABA7BB64(v26);
  v53 = v28;
  v54 = v27;
  v30 = *(v29 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v31);
  sub_1ABA7BCE0();
  v32 = sub_1ABAD219C(&qword_1EB4D2960, &qword_1ABF390F8);
  sub_1ABA7BB64(v32);
  v61 = v33;
  v35 = *(v34 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v36);
  sub_1ABA83634();
  v37 = *v0;
  v59 = v0[1];
  v60 = v37;
  v38 = *(v0 + 2);
  v57 = *(v0 + 1);
  v58 = v38;
  v39 = *(v0 + 48);
  v40 = v5[4];
  sub_1ABA88DCC(v5, v5[3]);
  sub_1ABB22230();
  sub_1ABF252E4();
  if (!v39)
  {
    v42 = v53;
    LOBYTE(v62) = 0;
    sub_1ABB223D4();
    v43 = v32;
    sub_1ABA9E2F4();
    sub_1ABF24EC4();
    LOBYTE(v62) = 0;
    v44 = v54;
    sub_1ABF24F34();
    if (!v1)
    {
      v62 = v57;
      v63 = v58;
      sub_1ABB22380();
      sub_1ABF24F84();
    }

    (*(v42 + 8))(v3, v44);
    goto LABEL_13;
  }

  if (v39 != 1)
  {
    v43 = v32;
    if (v57 | v59 | v60 | v58 | *(&v57 + 1) | *(&v58 + 1))
    {
      LOBYTE(v62) = 3;
      sub_1ABB22284();
      sub_1ABA88BF0();
      v45 = sub_1ABAB562C();
    }

    else
    {
      LOBYTE(v62) = 2;
      sub_1ABB222D8();
      sub_1ABA88BF0();
      v45 = sub_1ABAB562C();
      v46 = v49;
    }

    v47(v45, v46);
LABEL_13:
    (*(v61 + 8))(v2, v43);
    goto LABEL_14;
  }

  LOBYTE(v62) = 1;
  sub_1ABB2232C();
  sub_1ABA9E2F4();
  sub_1ABF24EC4();
  LOBYTE(v62) = 0;
  v41 = v56;
  sub_1ABF24F34();
  if (!v1)
  {
    v62 = v57;
    v63 = v58;
    sub_1ABB22380();
    sub_1ABF24F84();
  }

  (*(v55 + 8))(v25, v41);
  (*(v61 + 8))(v2, v32);
LABEL_14:
  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

void AutonamingViewFeedback.FeedbackType.init(from:)()
{
  sub_1ABA7BCA8();
  v96 = v0;
  v4 = v3;
  v92 = v5;
  v94 = sub_1ABAD219C(&qword_1EB4D2998, &qword_1ABF39100);
  sub_1ABA7BB64(v94);
  v91 = v6;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7FBE0();
  v90 = v10;
  v11 = sub_1ABAD219C(&qword_1EB4D29A0, &qword_1ABF39108);
  v12 = sub_1ABA7BB64(v11);
  v85 = v13;
  v86 = v12;
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7FBE0();
  v89 = v17;
  v93 = sub_1ABAD219C(&qword_1EB4D29A8, &qword_1ABF39110);
  sub_1ABA7BB64(v93);
  v88 = v18;
  v20 = *(v19 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA83634();
  v22 = sub_1ABAD219C(&qword_1EB4D29B0, &qword_1ABF39118);
  sub_1ABA7BB64(v22);
  v87 = v23;
  v25 = *(v24 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v79 - v27;
  v29 = sub_1ABAD219C(&qword_1EB4D29B8, &unk_1ABF39120);
  sub_1ABA7BB64(v29);
  v31 = v30;
  v33 = *(v32 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v34);
  sub_1ABA7ED98();
  v36 = v4[3];
  v35 = v4[4];
  v95 = v4;
  sub_1ABA88DCC(v4, v36);
  sub_1ABB22230();
  v37 = v96;
  sub_1ABF252C4();
  if (v37)
  {
    goto LABEL_8;
  }

  v82 = v22;
  v83 = v28;
  v38 = v94;
  v84 = v1;
  v96 = v31;
  v39 = sub_1ABF24EA4();
  sub_1ABAD4EA4(v39, 0);
  if (v41 == v42 >> 1)
  {
LABEL_7:
    v57 = sub_1ABF24B44();
    swift_allocError();
    v59 = v58;
    v60 = *(sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050) + 48);
    *v59 = &type metadata for AutonamingViewFeedback.FeedbackType;
    sub_1ABF24DA4();
    sub_1ABF24B34();
    (*(*(v57 - 8) + 104))(v59, *MEMORY[0x1E69E6AF8], v57);
    swift_willThrow();
    swift_unknownObjectRelease();
    v61 = sub_1ABAB562C();
    v62(v61, v29);
LABEL_8:
    v63 = v95;
LABEL_9:
    sub_1ABA84B54(v63);
    sub_1ABA7BC90();
    return;
  }

  v80 = 0;
  if (v41 < (v42 >> 1))
  {
    v43 = *(v40 + v41);
    v44 = sub_1ABAD4E90(v41 + 1);
    v46 = v45;
    v48 = v47;
    swift_unknownObjectRelease();
    v81 = v44;
    if (v46 == v48 >> 1)
    {
      v49 = v38;
      v50 = v29;
      v51 = v80;
      v53 = v91;
      v52 = v92;
      switch(v43)
      {
        case 1:
          LOBYTE(v97) = 1;
          sub_1ABB2232C();
          v55 = v50;
          sub_1ABA97464();
          LOBYTE(v97) = 0;
          sub_1ABF24E14();
          v70 = v96;
          sub_1ABA8D354();
          sub_1ABF24E64();
          swift_unknownObjectRelease();
          v77 = sub_1ABA9E8D0();
          v78(v77);
          (*(v70 + 8))(v2, v50);
          v75 = v97;
          v76 = v98;
          v74 = 1;
          break;
        case 2:
          LOBYTE(v97) = 2;
          sub_1ABB222D8();
          v64 = v89;
          sub_1ABA97464();
          swift_unknownObjectRelease();
          (*(v85 + 8))(v64, v86);
          v65 = sub_1ABA81538();
          v66(v65);
          v51 = 0;
          v55 = 0;
          v75 = 0uLL;
          v74 = 2;
          goto LABEL_13;
        case 3:
          LOBYTE(v97) = 3;
          sub_1ABB22284();
          v67 = v90;
          sub_1ABA97464();
          swift_unknownObjectRelease();
          (*(v53 + 8))(v67, v49);
          v68 = sub_1ABA81538();
          v69(v68);
          v55 = 0;
          v75 = 0uLL;
          v74 = 2;
          v51 = 1;
LABEL_13:
          v76 = 0uLL;
          break;
        default:
          LOBYTE(v97) = 0;
          sub_1ABB223D4();
          v54 = v83;
          v55 = v50;
          sub_1ABA97464();
          LOBYTE(v97) = 0;
          v56 = v82;
          sub_1ABF24E14();
          sub_1ABA8D354();
          sub_1ABF24E64();
          v71 = v87;
          swift_unknownObjectRelease();
          (*(v71 + 8))(v54, v56);
          v72 = sub_1ABA81538();
          v73(v72);
          v74 = 0;
          v75 = v97;
          v76 = v98;
          break;
      }

      v63 = v95;
      *v52 = v51;
      *(v52 + 8) = v55;
      *(v52 + 16) = v75;
      *(v52 + 32) = v76;
      *(v52 + 48) = v74;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t AutonamingViewFeedback.init(feedback:)(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v3;
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = v2;
  return v1;
}

uint64_t AutonamingViewFeedback.feedback.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(v1 + 64);
  *(a1 + 48) = v8;
  return sub_1ABB230AC(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1ABB175FC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6B63616264656566 && a2 == 0xE800000000000000)
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

uint64_t sub_1ABB17690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB175FC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABB176BC(uint64_t a1)
{
  v2 = sub_1ABB2315C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB176F8(uint64_t a1)
{
  v2 = sub_1ABB2315C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutonamingViewFeedback.__deallocating_deinit()
{
  sub_1ABA88AFC();
  sub_1ABA96928();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABB17780(void *a1)
{
  v3 = v1;
  v5 = sub_1ABAD219C(&qword_1EB4D29C8, &qword_1ABF39130);
  sub_1ABA7BB64(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA83634();
  v11 = a1[4];
  sub_1ABA88DCC(a1, a1[3]);
  sub_1ABB2315C();
  sub_1ABF252E4();
  v13 = *(v3 + 16);
  v14 = *(v3 + 24);
  v15 = *(v3 + 32);
  v16 = *(v3 + 40);
  v17 = *(v3 + 48);
  v18 = *(v3 + 56);
  v19 = *(v3 + 64);
  sub_1ABB230AC(v13, v14, v15, v16, v17, v18, v19);
  sub_1ABB231B0();
  sub_1ABF24F84();
  sub_1ABB23104(v13, v14, v15, v16, v17, v18, v19);
  return (*(v7 + 8))(v2, v5);
}

uint64_t AutonamingViewFeedback.__allocating_init(from:)()
{
  sub_1ABA96928();
  swift_allocObject();
  sub_1ABA9F664();
  AutonamingViewFeedback.init(from:)();
  return v0;
}

void AutonamingViewFeedback.init(from:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4D29E0, &qword_1ABF39138);
  sub_1ABA7BB64(v4);
  v6 = *(v5 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7BCE0();
  v8 = v3[4];
  sub_1ABA88DCC(v3, v3[3]);
  sub_1ABB2315C();
  sub_1ABA89290();
  if (v1)
  {
    type metadata accessor for AutonamingViewFeedback();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1ABB23204();
    sub_1ABA9E2F4();
    sub_1ABF24E64();
    v9 = sub_1ABA8E0A8();
    v10(v9);
    *(v0 + 16) = v11;
    *(v0 + 32) = v12;
    *(v0 + 48) = v13;
    *(v0 + 64) = v14;
  }

  sub_1ABA84B54(v3);
  sub_1ABA7BC90();
}

uint64_t sub_1ABB17AAC@<X0>(uint64_t *a1@<X8>)
{
  result = AutonamingViewFeedback.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1ABB17B20(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_1ABAD219C(&qword_1EB4D2BC0, &qword_1ABF39E20);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27[-v11];
  sub_1ABAD219C(&qword_1EB4D2BC8, &qword_1ABF39E28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ABF39090;
  *(inited + 32) = 0x6E6F697461727544;
  *(inited + 40) = 0xEF73646E6F636553;
  sub_1ABF21E84();
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  *(inited + 56) = 0x6C75736552646148;
  *(inited + 64) = 0xE900000000000074;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  *(inited + 80) = 0xD000000000000015;
  *(inited + 88) = 0x80000001ABF86FA0;
  if (a3 && (sub_1ABB22FFC(a3, &selRef_suggestedContactIdentifier), v15))
  {

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  *(inited + 104) = 0xD00000000000001ALL;
  *(inited + 112) = 0x80000001ABF86FC0;
  if (a3)
  {
    v17 = [a3 suggestedNameComponents];
    if (v17)
    {
      v18 = v17;
      sub_1ABF21BA4();

      v19 = 0;
    }

    else
    {
      v19 = 1;
    }

    v22 = sub_1ABF21BC4();
    sub_1ABA7B9B4(v10, v19, 1, v22);
    sub_1ABB244A0(v10, v12);
    v21 = sub_1ABA7E1E0(v12, 1, v22) != 1;
  }

  else
  {
    v20 = sub_1ABF21BC4();
    sub_1ABA7B9B4(v12, 1, 1, v20);
    v21 = 0;
  }

  sub_1ABAB480C(v12, &qword_1EB4D2BC0, &qword_1ABF39E20);
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  *(inited + 128) = 0xD000000000000016;
  *(inited + 136) = 0x80000001ABF86FE0;
  if (a3 && (sub_1ABB22FFC(a3, &selRef_suggestedNameString), v23))
  {

    v24 = 1;
  }

  else
  {
    v24 = 0;
  }

  *(inited + 144) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  *(inited + 152) = 0xD000000000000010;
  *(inited + 160) = 0x80000001ABF87000;
  if (a3)
  {
    v25 = [a3 autonamingSuggestionReason];
  }

  else
  {
    v25 = 0;
  }

  *(inited + 168) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 176) = 0xD000000000000010;
  *(inited + 184) = 0x80000001ABF87020;
  *(inited + 192) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  sub_1ABA84F5C();
  return sub_1ABF239C4();
}

uint64_t sub_1ABB17F28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D2920, &qword_1ABF6CB70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABB17F98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomGraphPerson(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABB17FFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1ABA7BBB0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1ABB18078(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1ABF34750;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

BOOL sub_1ABB182BC()
{
  sub_1ABA9F2FC();
  memcpy(__dst, v4, 0x90uLL);
  sub_1ABF25234();
  KnosisFact.hash(into:)();
  sub_1ABF25294();
  v5 = *(v3 + 32);
  sub_1ABAA51D0();
  v8 = ~v7;
  while (1)
  {
    v9 = v6 & v8;
    sub_1ABB24704();
    v11 = (1 << v9) & *(v3 + 56 + v10);
    if (!v11)
    {
      break;
    }

    sub_1ABA8A01C();
    v14 = v14 && v12 == v13;
    if (v14 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABAE4304(v1);
      memcpy(__dst, (*(v3 + 48) + 144 * v9), 0x90uLL);
      v15 = sub_1ABA7D000();
      memcpy(v15, v16, 0x90uLL);
      sub_1ABAE42A8(__dst, v30);
      return v11 == 0;
    }

    v6 = v9 + 1;
  }

  v17 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30[0] = *v2;
  sub_1ABAE42A8(v1, __dst);
  v19 = sub_1ABA9DF4C();
  v20 = sub_1ABB1C8A0(v19, v9, isUniquelyReferenced_nonNull_native);
  sub_1ABA972C8(v20, v21, v22, v23, v24, v25, v26, v27, v29, v30[0]);
  memcpy(v0, v1, 0x90uLL);
  return v11 == 0;
}

void sub_1ABB18530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, unsigned __int8 *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_1ABA8A8E4();
  a31 = v34;
  a32 = v35;
  v37 = v36;
  sub_1ABAB2AC0();
  sub_1ABB39A6C(&a12, v37);
  sub_1ABF25294();
  v38 = *(v33 + 32);
  sub_1ABA94780();
  if (((*(v33 + 56 + v40) >> v32) & 1) == 0)
  {
LABEL_40:
    v54 = *a9;
    swift_isUniquelyReferenced_nonNull_native();
    v55 = *a9;
    v56 = sub_1ABAA108C();
    sub_1ABB1CB88(v56, v57, v58);
    *a9 = a12;
    goto LABEL_43;
  }

  v41 = ~v39;
  while (1)
  {
    v42 = *(*(v33 + 48) + v32);
    v43 = v42 >> 6;
    if (v42 >> 6)
    {
      if (v43 != 1)
      {
        if (v42 == 128)
        {
          if (v37 == 128)
          {
            goto LABEL_42;
          }
        }

        else if (v42 == 129)
        {
          if (v37 == 129)
          {
            goto LABEL_42;
          }
        }

        else if (v37 == 130)
        {
          goto LABEL_42;
        }

        goto LABEL_39;
      }

      if ((v37 & 0xC0) != 0x40)
      {
        goto LABEL_39;
      }

      v44 = 0xE800000000000000;
      v45 = 0x6E656B6F54796E61;
      switch(v42 & 0x3F)
      {
        case 1u:
          v44 = 0xE600000000000000;
          v45 = sub_1ABA8B08C();
          break;
        case 2u:
          v45 = sub_1ABA96F50();
          break;
        case 3u:
          v45 = sub_1ABB24710();
          break;
        case 4u:
          v45 = sub_1ABA9EB7C();
          break;
        case 5u:
          v47 = sub_1ABA8B08C();
          v45 = sub_1ABA9ECD0(v47);
          break;
        default:
          break;
      }

      v48 = 0xE800000000000000;
      v49 = 0x6E656B6F54796E61;
      switch(v43)
      {
        case 1u:
          goto LABEL_29;
        case 2u:
          goto LABEL_31;
        case 3u:
          goto LABEL_32;
        case 4u:
          goto LABEL_30;
        case 5u:
          goto LABEL_33;
        default:
          break;
      }
    }

    else
    {
      v46 = v37;
      if (v37 >= 0x40u)
      {
        goto LABEL_39;
      }

      v44 = 0xE800000000000000;
      v45 = 0x6E656B6F54796E61;
      switch(*(*(v33 + 48) + v32))
      {
        case 1:
          v44 = 0xE600000000000000;
          v45 = sub_1ABA8B08C();
          break;
        case 2:
          v45 = sub_1ABA96F50();
          break;
        case 3:
          v45 = sub_1ABB24710();
          break;
        case 4:
          v45 = sub_1ABA9EB7C();
          break;
        case 5:
          v50 = sub_1ABA8B08C();
          v45 = sub_1ABA9ECD0(v50);
          break;
        default:
          break;
      }

      v48 = 0xE800000000000000;
      v49 = 0x6E656B6F54796E61;
      switch(v46)
      {
        case 1:
LABEL_29:
          v48 = 0xE600000000000000;
          v49 = 0x786966657270;
          break;
        case 2:
LABEL_31:
          v49 = 0x6E656B6F546C6C61;
          v48 = 0xE900000000000073;
          break;
        case 3:
LABEL_32:
          v49 = 0x69666572506C6C61;
          v48 = 0xEB00000000736578;
          break;
        case 4:
LABEL_30:
          v48 = 0xE600000000000000;
          v49 = 0x657361726870;
          break;
        case 5:
LABEL_33:
          v49 = 0x6850786966657270;
          v48 = 0xEC00000065736172;
          break;
        default:
          break;
      }
    }

    if (v45 == v49 && v44 == v48)
    {
      break;
    }

    v52 = sub_1ABF25054();

    if (v52)
    {
      goto LABEL_42;
    }

LABEL_39:
    v32 = (v32 + 1) & v41;
    sub_1ABB24704();
    if (((*(v33 + 56 + v53) >> v32) & 1) == 0)
    {
      goto LABEL_40;
    }
  }

LABEL_42:
  v37 = *(*(v33 + 48) + v32);
LABEL_43:
  *a10 = v37;
  sub_1ABA89EC8();
}

BOOL sub_1ABB18838(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1ABF25234();
  sub_1ABF23D34();
  v9 = sub_1ABF25294();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_1ABF25054() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_1ABB1CFD4(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

void sub_1ABB18984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_1ABA8A8E4();
  a31 = v34;
  a32 = v35;
  v36 = v32;
  v38 = v37;
  v66 = v39;
  v40 = *v32;
  v41 = *(*v32 + 40);
  sub_1ABF25234();
  sub_1ABBB4ED8(&a12, v38);
  sub_1ABF25294();
  v42 = *(v40 + 32);
  sub_1ABA94780();
  if ((*(v40 + 56 + v44) >> v33))
  {
    v45 = ~v43;
    sub_1ABA8071C();
    v67 = v46;
    v68 = v47;
    while (1)
    {
      v48 = 0xE400000000000000;
      v49 = 1701736302;
      switch(*(*(v40 + 48) + v33))
      {
        case 1:
          v49 = sub_1ABA97980();
          v48 = 0x80000001ABF7EE20;
          break;
        case 2:
          v49 = sub_1ABA9F400();
          break;
        case 3:
          v50 = 0x47746E657665;
          goto LABEL_11;
        case 4:
          v49 = sub_1ABA7D198();
          break;
        case 5:
          v49 = sub_1ABA7FC1C();
          break;
        case 6:
          v50 = 0x476C61636F6CLL;
LABEL_11:
          v49 = sub_1ABA80704(v50);
          break;
        case 7:
          sub_1ABA7BB94();
          v49 = v51 + 10;
          v48 = v67;
          break;
        case 8:
          sub_1ABA7BB94();
          v49 = v52 + 8;
          v48 = v68;
          break;
        default:
          break;
      }

      v53 = 0xE400000000000000;
      v54 = 1701736302;
      switch(v38)
      {
        case 1:
          sub_1ABA8BA2C();
          v53 = 0x80000001ABF7EE20;
          break;
        case 2:
          v53 = 0xE700000000000000;
          sub_1ABA8BE94();
          break;
        case 3:
          v55 = 0x47746E657665;
          goto LABEL_21;
        case 4:
          sub_1ABA890F4();
          v53 = 0xED00007865646E49;
          break;
        case 5:
          sub_1ABA891B0();
          v53 = 0xEC0000007865646ELL;
          break;
        case 6:
          v55 = 0x476C61636F6CLL;
LABEL_21:
          v54 = v55 & 0xFFFFFFFFFFFFLL | 0x6172000000000000;
          v53 = 0xEF7865646E496870;
          break;
        case 7:
          sub_1ABA7BB94();
          v54 = v56 + 10;
          v53 = v67;
          break;
        case 8:
          sub_1ABA7BB94();
          v54 = v57 + 8;
          v53 = v68;
          break;
        default:
          break;
      }

      if (v49 == v54 && v48 == v53)
      {
        break;
      }

      v59 = sub_1ABA89728();

      if (v59)
      {
        goto LABEL_31;
      }

      v33 = (v33 + 1) & v45;
      sub_1ABB24704();
      if (((*(v40 + 56 + v60) >> v33) & 1) == 0)
      {
        goto LABEL_29;
      }
    }

LABEL_31:
    v38 = *(*(v40 + 48) + v33);
  }

  else
  {
LABEL_29:
    v61 = *v36;
    swift_isUniquelyReferenced_nonNull_native();
    v62 = *v36;
    v63 = sub_1ABAA108C();
    sub_1ABB1D13C(v63, v64, v65);
    *v36 = a12;
  }

  *v66 = v38;
  sub_1ABA89EC8();
}

BOOL sub_1ABB18D34()
{
  sub_1ABA9F2FC();
  memcpy(__dst, v4, 0x58uLL);
  sub_1ABF25234();
  KnosisInternalFact.hash(into:)(v30);
  sub_1ABF25294();
  v5 = *(v3 + 32);
  sub_1ABAA51D0();
  v8 = ~v7;
  while (1)
  {
    v9 = v6 & v8;
    sub_1ABB24704();
    v11 = (1 << v9) & *(v3 + 56 + v10);
    if (!v11)
    {
      break;
    }

    sub_1ABA8A01C();
    v14 = v14 && v12 == v13;
    if (v14 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABB24250(v1);
      memcpy(__dst, (*(v3 + 48) + 88 * v9), 0x58uLL);
      v15 = sub_1ABA7D000();
      memcpy(v15, v16, 0x58uLL);
      sub_1ABB242A4(__dst, v30);
      return v11 == 0;
    }

    v6 = v9 + 1;
  }

  v17 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30[0] = *v2;
  sub_1ABB242A4(v1, __dst);
  v19 = sub_1ABA9DF4C();
  v20 = sub_1ABB1D684(v19, v9, isUniquelyReferenced_nonNull_native);
  sub_1ABA972C8(v20, v21, v22, v23, v24, v25, v26, v27, v29, v30[0]);
  memcpy(v0, v1, 0x58uLL);
  return v11 == 0;
}

void sub_1ABB18E84()
{
  sub_1ABA9DE04();
  v3 = v2;
  v23 = v4;
  v21 = v0;
  v5 = *v0;
  v6 = *(*v0 + 40);
  v22 = v2 & 1;
  sub_1ABB11118();
  v7 = *(v5 + 32);
  sub_1ABA94780();
  if ((*(v5 + 56 + v9) >> v1))
  {
    v10 = ~v8;
    if (v3)
    {
      v11 = 0x7241746E65746E69;
    }

    else
    {
      v11 = 0x79676F6C6F746E6FLL;
    }

    if (v3)
    {
      v12 = 0xE900000000000067;
    }

    else
    {
      v12 = 0xE800000000000000;
    }

    while (1)
    {
      v13 = *(*(v5 + 48) + v1) ? 0x7241746E65746E69 : 0x79676F6C6F746E6FLL;
      v14 = *(*(v5 + 48) + v1) ? 0xE900000000000067 : 0xE800000000000000;
      if (v13 == v11 && v14 == v12)
      {
        break;
      }

      v16 = sub_1ABF25054();

      if (v16)
      {
        goto LABEL_22;
      }

      v1 = (v1 + 1) & v10;
      sub_1ABB24704();
      if (((*(v5 + 56 + v17) >> v1) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

LABEL_22:
    v20 = *(*(v5 + 48) + v1);
  }

  else
  {
LABEL_20:
    v18 = *v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v21;
    v20 = v22;
    sub_1ABB1D804(v22, v1, isUniquelyReferenced_nonNull_native);
    *v21 = v24;
  }

  *v23 = v20;
  sub_1ABA88CCC();
}

uint64_t sub_1ABB19000(void *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_1ABF25234();
  v6 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 48);
  v47 = *(a2 + 32);
  v48 = v10;
  v32 = a2;
  v49 = *(a2 + 64);
  sub_1ABF23D34();
  sub_1ABF23D34();
  v42[0] = v47;
  v42[1] = v48;
  LOBYTE(v42[2]) = v49;
  ViewService.DefaultResolverInteractionsView.CandidateType.hash(into:)();
  sub_1ABF25294();
  v35 = v4 + 56;
  v36 = v4;
  v11 = *(v4 + 32);
  sub_1ABAA51D0();
  v14 = v13 & ~v12;
  if ((*(v15 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v34 = ~v12;
    while (1)
    {
      memcpy(__dst, (*(v36 + 48) + 72 * v14), 0x41uLL);
      v16 = __dst[0] == v6 && __dst[1] == v7;
      if (v16 || (sub_1ABF25054() & 1) != 0)
      {
        v17 = __dst[2] == v9 && __dst[3] == v8;
        if (v17 || (sub_1ABF25054() & 1) != 0)
        {
          v18 = v6;
          v19 = v8;
          v20 = v9;
          v21 = __dst[4];
          v22 = __dst[5];
          v23 = __dst[6];
          v24 = __dst[7];
          v25 = __dst[8];
          v37 = __dst[4];
          v38 = __dst[5];
          v39 = __dst[6];
          v40 = __dst[7];
          v41 = __dst[8];
          v43 = v47;
          v44 = v48;
          v45 = v49;
          sub_1ABB24348(__dst, v42);
          v26 = v22;
          v9 = v20;
          v8 = v19;
          v6 = v18;
          sub_1ABAFF488(v21, v26, v23, v24, v25);
          sub_1ABAFF4E8(&v47, v42);
          LOBYTE(v23) = static ViewService.DefaultResolverInteractionsView.CandidateType.== infix(_:_:)(&v37, &v43);
          sub_1ABAFF544(v43, *(&v43 + 1), v44, *(&v44 + 1), v45);
          sub_1ABAFF544(v37, v38, v39, v40, v41);
          sub_1ABB243A4(__dst);
          if (v23)
          {
            break;
          }
        }
      }

      v14 = (v14 + 1) & v34;
      if (((*(v35 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    sub_1ABB243A4(v32);
    v30 = *(v36 + 48);
    memcpy(v42, (v30 + 72 * v14), 0x41uLL);
    memcpy(a1, (v30 + 72 * v14), 0x41uLL);
    sub_1ABB24348(v42, &v37);
    return 0;
  }

  else
  {
LABEL_15:
    v27 = *v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v42[0] = *v31;
    sub_1ABB24348(v32, __dst);
    sub_1ABB1DA00(v32, v14, isUniquelyReferenced_nonNull_native);
    *v31 = *&v42[0];
    memcpy(a1, v32, 0x41uLL);
    return 1;
  }
}

void sub_1ABB192D0()
{
  sub_1ABA8D0C4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *v0;
  v10 = *(*v0 + 40);
  sub_1ABF25234();
  sub_1ABF25264();
  v11 = sub_1ABA9DF4C();
  MEMORY[0x1AC5AA8D0](v11);
  v12 = sub_1ABAB526C();
  MEMORY[0x1AC5AA8D0](v12);
  v13 = sub_1ABF25294();
  v14 = -1 << *(v9 + 32);
  v15 = v13 & ~v14;
  if ((*(v9 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    while (1)
    {
      v17 = (*(v9 + 48) + 24 * v15);
      v18 = *v17;
      v20 = *(v17 + 1);
      v19 = *(v17 + 2);
      v21 = v18 == v6 && v20 == v4;
      if (v21 && v19 == v2)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v9 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v23 = *v0;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v0;
    sub_1ABB1DCA8(v6, v4, v2, v15, isUniquelyReferenced_nonNull_native);
    *v0 = v25;
  }

  *v8 = v6;
  *(v8 + 8) = v4;
  *(v8 + 16) = v2;
  sub_1ABA8D1F0();
}

void sub_1ABB193F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1ABA9DE04();
  v14 = v12;
  v16 = v15;
  v18 = v17;
  v19 = *v12;
  v20 = *(*v12 + 40);
  sub_1ABA93208();
  sub_1ABAAFEEC();
  v21 = *(v19 + 32);
  sub_1ABA94780();
  if ((*(v19 + 56 + v23) >> v13))
  {
    v24 = ~v22;
    sub_1ABA8071C();
    v53 = v25;
    while (1)
    {
      v26 = 0xE500000000000000;
      v27 = 0x7465736E75;
      switch(*(*(v19 + 48) + v13))
      {
        case 1:
          v26 = 0xE700000000000000;
          v27 = sub_1ABAB1010();
          break;
        case 2:
          v27 = sub_1ABA9F8F8();
          break;
        case 3:
          v26 = 0xE600000000000000;
          v27 = sub_1ABA8C52C();
          break;
        case 4:
          v26 = 0xE600000000000000;
          v27 = sub_1ABAA0B4C();
          break;
        case 5:
          v26 = 0xE600000000000000;
          v27 = sub_1ABA8AD0C();
          break;
        case 6:
          sub_1ABA8BE84();
          v27 = v34 + 3591;
          v26 = 0xE600000000000000;
          break;
        case 7:
          v26 = 0xE600000000000000;
          v32 = 1752457574;
          goto LABEL_30;
        case 8:
          v26 = 0xE700000000000000;
          v27 = sub_1ABA9521C();
          break;
        case 9:
          v26 = 0xE700000000000000;
          v31 = sub_1ABA8AAA0();
          goto LABEL_28;
        case 0xA:
          v26 = 0xE600000000000000;
          v32 = 1953720691;
LABEL_30:
          v27 = v32 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
          break;
        case 0xB:
          v27 = sub_1ABA7ABD8() | 0x7261506400000000;
          v30 = 7630437;
          goto LABEL_25;
        case 0xC:
          v27 = sub_1ABA7ABD8() | 0x746F6D6400000000;
          goto LABEL_24;
        case 0xD:
          v27 = sub_1ABA7ABD8() | 0x7461666400000000;
LABEL_24:
          v30 = 7497064;
LABEL_25:
          v26 = v30 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 0xE:
          v26 = 0xE700000000000000;
          v29 = sub_1ABA8C6EC();
          goto LABEL_20;
        case 0xF:
          v27 = sub_1ABA8A360();
          break;
        case 0x10:
          v26 = 0xE300000000000000;
          v27 = 7237491;
          break;
        case 0x11:
          v26 = 0xE800000000000000;
          v33 = sub_1ABA9F9E8();
          goto LABEL_35;
        case 0x12:
          v26 = 0xE700000000000000;
          v31 = sub_1ABA9FAEC();
LABEL_28:
          v27 = v31 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
          break;
        case 0x13:
          v26 = 0xE400000000000000;
          v27 = 1701210487;
          break;
        case 0x14:
          v26 = 0xE700000000000000;
          v29 = sub_1ABA8A494();
LABEL_20:
          v27 = v29 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
          break;
        case 0x15:
          v26 = 0xE600000000000000;
          v27 = sub_1ABA9FBC0();
          break;
        case 0x16:
          v27 = sub_1ABA97980();
          v26 = v53;
          break;
        case 0x17:
          v26 = 0xE800000000000000;
          v33 = sub_1ABA8B24C();
LABEL_35:
          v27 = v33 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
          break;
        case 0x18:
          v26 = 0xE800000000000000;
          v27 = sub_1ABAA1264();
          break;
        case 0x19:
          v27 = sub_1ABAB543C();
          v26 = 0xE900000000000065;
          break;
        case 0x1A:
          v26 = 0xE600000000000000;
          v27 = sub_1ABA9FCE4();
          break;
        case 0x1B:
          v28 = 1699772781;
          goto LABEL_38;
        case 0x1C:
          v27 = sub_1ABAA0A28();
          break;
        case 0x1D:
          v28 = 1631811949;
LABEL_38:
          v27 = v28 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
          break;
        default:
          break;
      }

      v35 = 0xE500000000000000;
      v36 = 0x7465736E75;
      switch(v16)
      {
        case 1:
          v35 = 0xE700000000000000;
          sub_1ABA96004();
          break;
        case 2:
          sub_1ABA8B480();
          break;
        case 3:
          v35 = 0xE600000000000000;
          sub_1ABA8AEB8();
          break;
        case 4:
          v35 = 0xE600000000000000;
          sub_1ABA950B0();
          break;
        case 5:
          v35 = 0xE600000000000000;
          sub_1ABAA03D8();
          break;
        case 6:
          sub_1ABA8BE84();
          v36 = v44 + 3591;
          v35 = 0xE600000000000000;
          break;
        case 7:
          v35 = 0xE600000000000000;
          v41 = 1752457574;
          goto LABEL_67;
        case 8:
          v35 = 0xE700000000000000;
          sub_1ABAB5C34();
          break;
        case 9:
          v35 = 0xE700000000000000;
          sub_1ABA9FF9C();
          goto LABEL_65;
        case 10:
          v35 = 0xE600000000000000;
          v41 = 1953720691;
LABEL_67:
          v36 = v41 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
          break;
        case 11:
          sub_1ABA82DCC();
          sub_1ABA88F50();
          goto LABEL_62;
        case 12:
          sub_1ABA82DCC();
          v36 = v39 | 0x746F6D6400000000;
          goto LABEL_61;
        case 13:
          sub_1ABA82DCC();
          v36 = v43 | 0x7461666400000000;
LABEL_61:
          v35 = 7497064;
LABEL_62:
          v35 = v35 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 14:
          v35 = 0xE700000000000000;
          sub_1ABA8B0D0();
          goto LABEL_57;
        case 15:
          sub_1ABAA0118();
          break;
        case 16:
          v35 = 0xE300000000000000;
          v36 = 7237491;
          break;
        case 17:
          v35 = 0xE800000000000000;
          sub_1ABA8B634();
          goto LABEL_72;
        case 18:
          v35 = 0xE700000000000000;
          sub_1ABA8B844();
LABEL_65:
          v36 = v40 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
          break;
        case 19:
          v35 = 0xE400000000000000;
          v36 = 1701210487;
          break;
        case 20:
          v35 = 0xE700000000000000;
          sub_1ABAA029C();
LABEL_57:
          v36 = v38 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
          break;
        case 21:
          v35 = 0xE600000000000000;
          sub_1ABA8BA58();
          break;
        case 22:
          sub_1ABA8BA2C();
          v35 = v53;
          break;
        case 23:
          v35 = 0xE800000000000000;
          sub_1ABAA0510();
LABEL_72:
          v36 = v42 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
          break;
        case 24:
          v35 = 0xE800000000000000;
          sub_1ABA97728();
          break;
        case 25:
          sub_1ABAA1B7C();
          v35 = 0xE900000000000065;
          break;
        case 26:
          v35 = 0xE600000000000000;
          sub_1ABAA06AC();
          break;
        case 27:
          v37 = 1699772781;
          goto LABEL_75;
        case 28:
          sub_1ABA9FE44();
          break;
        case 29:
          v37 = 1631811949;
LABEL_75:
          v36 = v37 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
          break;
        default:
          break;
      }

      if (v27 == v36 && v26 == v35)
      {
        break;
      }

      v46 = sub_1ABA89728();

      if (v46)
      {
        goto LABEL_85;
      }

      v13 = (v13 + 1) & v24;
      sub_1ABB24704();
      if (((*(v19 + 56 + v47) >> v13) & 1) == 0)
      {
        goto LABEL_83;
      }
    }

LABEL_85:
    v16 = *(*(v19 + 48) + v13);
  }

  else
  {
LABEL_83:
    v48 = *v14;
    swift_isUniquelyReferenced_nonNull_native();
    v49 = *v14;
    v50 = sub_1ABAA108C();
    sub_1ABB1DE44(v50, v51, v52);
    *v14 = a12;
  }

  *v18 = v16;
  sub_1ABA88CCC();
}

void sub_1ABB1988C()
{
  sub_1ABA8A8E4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v31 = v0;
  v32 = v9;
  v10 = *v0;
  v11 = *(*v0 + 40);
  sub_1ABF25234();
  sub_1ABF23D34();
  sub_1ABF23D34();
  sub_1ABF25294();
  v12 = v10 + 56;
  v13 = *(v10 + 32);
  sub_1ABAA51D0();
  v16 = v15 & ~v14;
  if ((*(v10 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v14;
    v30 = v10;
    v18 = *(v10 + 48);
    while (1)
    {
      v19 = (v18 + 32 * v16);
      v20 = v19[2];
      v21 = v19[3];
      v22 = *v19 == v8 && v19[1] == v6;
      if (v22 || (sub_1ABA94798() & 1) != 0)
      {
        v23 = v20 == v4 && v21 == v2;
        if (v23 || (sub_1ABA8CF7C() & 1) != 0)
        {
          break;
        }
      }

      v16 = (v16 + 1) & v17;
      if (((*(v12 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v26 = (*(v30 + 48) + 32 * v16);
    v27 = v26[1];
    v28 = v26[2];
    v29 = v26[3];
    *v32 = *v26;
    v32[1] = v27;
    v32[2] = v28;
    v32[3] = v29;
  }

  else
  {
LABEL_14:
    v24 = *v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *v31;

    sub_1ABB1E4F4(v8, v6, v4, v2, v16, isUniquelyReferenced_nonNull_native);
    *v31 = v33;
    *v32 = v8;
    v32[1] = v6;
    v32[2] = v4;
    v32[3] = v2;
  }

  sub_1ABA89EC8();
}

BOOL sub_1ABB19B10()
{
  sub_1ABA8CA7C();
  v5 = *v1;
  v6 = *(v5 + 40);
  sub_1ABF25224();
  v7 = *(v5 + 32);
  sub_1ABAA489C();
  while (1)
  {
    sub_1ABA9F1F8(v8, v9);
    v12 = v11 & v10;
    if ((v11 & v10) == 0)
    {
      break;
    }

    if (*(*(v5 + 48) + 8 * v4) == v0)
    {
      goto LABEL_6;
    }

    v8 = v4 + 1;
  }

  v13 = *v3;
  swift_isUniquelyReferenced_nonNull_native();
  sub_1ABAA3BB4();
  sub_1ABA9EA60();
  sub_1ABB1E84C(v14, v15);
  sub_1ABA972C8(v16, v17, v18, v19, v20, v21, v22, v23, v25, v26);
LABEL_6:
  result = v12 == 0;
  *v2 = v0;
  return result;
}

uint64_t sub_1ABB19BBC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1ABAD219C(&qword_1EB4D2B38, &unk_1ABF39DA0);
  result = sub_1ABF24A44();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v32 = v2;
  v33 = v3;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      sub_1ABB18078(0, (v31 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(v3 + 48) + 40 * (v14 | (v7 << 6));
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    v35 = *(v17 + 24);
    v34 = *(v17 + 32);
    v21 = *(v6 + 40);
    sub_1ABF25234();
    sub_1ABF23D34();
    result = sub_1ABF25294();
    v22 = -1 << *(v6 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = *(v6 + 48) + 40 * v25;
    *v30 = v18;
    *(v30 + 8) = v19;
    *(v30 + 16) = v20;
    *(v30 + 24) = v35;
    *(v30 + 32) = v34;
    ++*(v6 + 16);
    v3 = v33;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v26 = 0;
  v27 = (63 - v22) >> 6;
  while (++v24 != v27 || (v26 & 1) == 0)
  {
    v28 = v24 == v27;
    if (v24 == v27)
    {
      v24 = 0;
    }

    v26 |= v28;
    v29 = *(v13 + 8 * v24);
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1ABB19E44(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1ABAD219C(&qword_1EB4D2BB0, &qword_1ABF39E08);
  result = sub_1ABF24A44();
  v6 = result;
  if (*(v3 + 16))
  {
    v41 = v1;
    v42 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    v43 = result;
    if (v11)
    {
      do
      {
        v14 = __clz(__rbit64(v11));
        v46 = (v11 - 1) & v11;
LABEL_14:
        v17 = *(v3 + 48) + 144 * (v14 | (v7 << 6));
        v18 = *v17;
        v19 = *(v17 + 8);
        v49 = *(v17 + 16);
        v55 = *(v17 + 24);
        v52 = *(v17 + 40);
        v53 = *(v17 + 32);
        v45 = *(v17 + 48);
        v20 = *(v17 + 50);
        v61 = *(v17 + 51);
        v62 = *(v17 + 55);
        v21 = *(v17 + 56);
        v22 = *(v17 + 64);
        v48 = *(v17 + 96);
        v60 = *(v17 + 88);
        v59 = *(v17 + 72);
        v54 = *(v17 + 104);
        v50 = *(v17 + 120);
        v51 = *(v17 + 112);
        v44 = *(v17 + 128);
        v56 = *(v17 + 130);
        v58 = *(v17 + 135);
        v57 = *(v17 + 131);
        v23 = *(v17 + 136);
        v24 = *(v6 + 40);
        sub_1ABF25234();

        v47 = v19;
        sub_1ABF23D34();
        switch(v20)
        {
          case 1:
            MEMORY[0x1AC5AA8A0](1);
            v26 = v49;
            MEMORY[0x1AC5AA8D0](v49);
            break;
          case 2:
            v25 = 2;
            goto LABEL_18;
          case 3:
            MEMORY[0x1AC5AA8A0](3);
            sub_1ABF23D34();
            goto LABEL_20;
          case 4:
            MEMORY[0x1AC5AA8A0](4);
LABEL_20:
            v26 = v49;
            break;
          default:
            v25 = 0;
LABEL_18:
            MEMORY[0x1AC5AA8A0](v25);
            v26 = v49;
            sub_1ABF23D34();
            break;
        }

        sub_1ABF23D34();
        switch(v56)
        {
          case 1:
            MEMORY[0x1AC5AA8A0](1);
            MEMORY[0x1AC5AA8D0](v48);
            goto LABEL_30;
          case 2:
            v27 = 2;
            goto LABEL_26;
          case 3:
            MEMORY[0x1AC5AA8A0](3);
            goto LABEL_28;
          case 4:
            MEMORY[0x1AC5AA8A0](4);
            goto LABEL_30;
          default:
            v27 = 0;
LABEL_26:
            MEMORY[0x1AC5AA8A0](v27);
LABEL_28:
            sub_1ABF23D34();
LABEL_30:
            sub_1ABD8F210();

            result = sub_1ABF25294();
            v6 = v43;
            v28 = -1 << *(v43 + 32);
            v29 = result & ~v28;
            v30 = v29 >> 6;
            if (((-1 << v29) & ~*(v13 + 8 * (v29 >> 6))) != 0)
            {
              v31 = __clz(__rbit64((-1 << v29) & ~*(v13 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
              v32 = v20;
              goto LABEL_39;
            }

            v33 = 0;
            v34 = (63 - v28) >> 6;
            v32 = v20;
            break;
        }

        do
        {
          if (++v30 == v34 && (v33 & 1) != 0)
          {
LABEL_47:
            __break(1u);
            return result;
          }

          v35 = v30 == v34;
          if (v30 == v34)
          {
            v30 = 0;
          }

          v33 |= v35;
          v36 = *(v13 + 8 * v30);
        }

        while (v36 == -1);
        v31 = __clz(__rbit64(~v36)) + (v30 << 6);
LABEL_39:
        *(v13 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
        v37 = *(v43 + 48) + 144 * v31;
        *v37 = v18;
        *(v37 + 8) = v47;
        *(v37 + 16) = v26;
        *(v37 + 24) = v55;
        *(v37 + 32) = v53;
        *(v37 + 40) = v52;
        *(v37 + 48) = v45;
        *(v37 + 50) = v32;
        *(v37 + 51) = v61;
        *(v37 + 55) = v62;
        *(v37 + 56) = v21;
        *(v37 + 64) = v22;
        *(v37 + 72) = v59;
        *(v37 + 88) = v60;
        *(v37 + 96) = v48;
        *(v37 + 104) = v54;
        *(v37 + 112) = v51;
        *(v37 + 120) = v50;
        *(v37 + 128) = v44;
        *(v37 + 130) = v56;
        *(v37 + 135) = v58;
        *(v37 + 131) = v57;
        *(v37 + 136) = v23;
        ++*(v43 + 16);
        v3 = v42;
        v11 = v46;
      }

      while (v46);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_47;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v46 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v38 = 1 << *(v3 + 32);
    if (v38 >= 64)
    {
      v39 = v6;
      sub_1ABB18078(0, (v38 + 63) >> 6, v8);
      v6 = v39;
    }

    else
    {
      *v8 = -1 << v38;
    }

    v2 = v41;
    *(v3 + 16) = 0;
  }

  v40 = v6;

  *v2 = v40;
  return result;
}

uint64_t sub_1ABB1A334(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1ABAD219C(&qword_1EB4D2E70, &unk_1ABF4AF30);
  result = sub_1ABF24A44();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_1ABB18078(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_1ABF25234();
    sub_1ABF23D34();
    result = sub_1ABF25294();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1ABB1A590(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1ABAD219C(&qword_1EB4D2BA0, &qword_1ABF39DF0);
  result = sub_1ABF24A44();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_39:

    *v2 = v6;
    return result;
  }

  v29 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_1ABB18078(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
    goto LABEL_39;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    sub_1ABF25234();
    if (v17 >> 6)
    {
      if (v17 >> 6 == 1)
      {
        MEMORY[0x1AC5AA8A0](4);
        sub_1ABF23D34();
      }

      else
      {
        if (v17 == 128)
        {
          v19 = 0;
        }

        else
        {
          v19 = v17 == 129 ? 1 : 2;
        }

        MEMORY[0x1AC5AA8A0](v19);
      }
    }

    else
    {
      MEMORY[0x1AC5AA8A0](3);
      sub_1ABF23D34();
    }

    result = sub_1ABF25294();
    v20 = -1 << *(v6 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_33:
    *(v13 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v6 + 48) + v23) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v13 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_33;
    }
  }

LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_1ABB1A9CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1ABAD219C(&qword_1EB4D2BB8, &qword_1ABF39E18);
  result = sub_1ABF24A44();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_1ABB18078(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_1ABF25234();
    sub_1ABF23D34();
    result = sub_1ABF25294();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1ABB1AC28(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1ABAD219C(&unk_1EB4D2E20, &qword_1ABF39E10);
  result = sub_1ABF24A44();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v28 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_1ABB18078(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    sub_1ABF25234();
    sub_1ABF23D34();

    result = sub_1ABF25294();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + v22) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1ABB1AFA8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1ABAD219C(&unk_1EB4D2E50, &qword_1ABF39DF8);
  result = sub_1ABF24A44();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v32 = v2;
  v33 = v3;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      sub_1ABB18078(0, (v31 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(v3 + 48) + 40 * (v14 | (v7 << 6));
    v18 = *v17;
    v35 = *(v17 + 8);
    v19 = *(v17 + 16);
    v20 = *(v17 + 24);
    v34 = *(v17 + 32);
    v21 = *(v6 + 40);
    sub_1ABF25234();
    sub_1ABF23D34();
    result = sub_1ABF25294();
    v22 = -1 << *(v6 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = *(v6 + 48) + 40 * v25;
    *v30 = v18;
    *(v30 + 8) = v35;
    *(v30 + 16) = v19;
    *(v30 + 24) = v20;
    *(v30 + 32) = v34;
    ++*(v6 + 16);
    v3 = v33;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v26 = 0;
  v27 = (63 - v22) >> 6;
  while (++v24 != v27 || (v26 & 1) == 0)
  {
    v28 = v24 == v27;
    if (v24 == v27)
    {
      v24 = 0;
    }

    v26 |= v28;
    v29 = *(v13 + 8 * v24);
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1ABB1B230(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1ABAD219C(&qword_1EB4D2B68, &qword_1ABF39DD0);
  result = sub_1ABF24A44();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    for (i = (v9 + 63) >> 6; v11; ++*(v6 + 16))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_14:
      v16 = (*(v3 + 48) + 88 * (v13 | (v7 << 6)));
      memcpy(__dst, v16, sizeof(__dst));
      v17 = *(v6 + 40);
      memcpy(v22, v16, sizeof(v22));
      sub_1ABF25234();
      KnosisInternalFact.hash(into:)(v21);
      sub_1ABF25294();
      v18 = -1 << *(v6 + 32);
      v19 = sub_1ABF249A4();
      *(v6 + 56 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = memcpy((*(v6 + 48) + 88 * v19), __dst, 0x58uLL);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return result;
      }

      if (v7 >= i)
      {
        break;
      }

      v15 = v8[v7];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_14;
      }
    }

    v20 = 1 << *(v3 + 32);
    if (v20 >= 64)
    {
      sub_1ABB18078(0, (v20 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v20;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1ABB1B448(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1ABAD219C(&qword_1EB4D2B60, &unk_1ABF3A610);
  result = sub_1ABF24A44();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v28 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_1ABB18078(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    sub_1ABF25234();
    sub_1ABF23D34();

    result = sub_1ABF25294();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + v22) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1ABB1B6D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1ABAD219C(&qword_1EB4D2BA8, &qword_1ABF39E00);
  result = sub_1ABF24A44();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_69:
    v50 = v6;

    *v2 = v50;
    return result;
  }

  v51 = v1;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v52 = (v9 + 63) >> 6;
  v53 = (v3 + 56);
  v12 = result + 56;
  v54 = v3;
  v55 = result;
  if (!v11)
  {
LABEL_9:
    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_71;
      }

      if (v7 >= v52)
      {
        break;
      }

      v15 = v8[v7];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v56 = (v15 - 1) & v15;
        goto LABEL_14;
      }
    }

    v48 = 1 << *(v3 + 32);
    if (v48 >= 64)
    {
      v49 = v6;
      sub_1ABB18078(0, (v48 + 63) >> 6, v8);
      v6 = v49;
    }

    else
    {
      *v8 = -1 << v48;
    }

    v2 = v51;
    *(v3 + 16) = 0;
    goto LABEL_69;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v11));
    v56 = (v11 - 1) & v11;
LABEL_14:
    v16 = *(v3 + 48) + 72 * (v13 | (v7 << 6));
    v18 = *v16;
    v17 = *(v16 + 8);
    v19 = *(v16 + 16);
    v20 = *(v16 + 24);
    v21 = *(v16 + 32);
    v22 = *(v16 + 40);
    v23 = *(v16 + 48);
    v58 = *(v16 + 56);
    v24 = *(v16 + 64);
    v25 = *(v6 + 40);
    sub_1ABF25234();
    v57 = v17;
    v26 = v19;
    sub_1ABF23D34();
    sub_1ABF23D34();
    if (v24)
    {
      if (v24 == 1)
      {
        MEMORY[0x1AC5AA8A0](9);
        v27 = v21;
        sub_1ABF23D34();
        v28 = v23;
        v29 = v58;
        sub_1ABF23D34();
      }

      else
      {
        v27 = v21;
        v28 = v23;
        v30 = v23 | v22;
        v29 = v58;
        if (v30 | v27 | v58)
        {
          v31 = v30 | v58;
          if (v27 == 1 && v31 == 0)
          {
            v38 = 1;
          }

          else if (v27 == 2 && v31 == 0)
          {
            v38 = 2;
          }

          else if (v27 == 3 && v31 == 0)
          {
            v38 = 3;
          }

          else if (v27 == 4 && v31 == 0)
          {
            v38 = 5;
          }

          else if (v27 == 5 && v31 == 0)
          {
            v38 = 6;
          }

          else
          {
            v37 = v27 == 6 && v31 == 0;
            v38 = v37 ? 7 : 8;
          }
        }

        else
        {
          v38 = 0;
        }

        MEMORY[0x1AC5AA8A0](v38);
      }
    }

    else
    {
      MEMORY[0x1AC5AA8A0](4);
      sub_1ABF25254();
      v27 = v21;
      if (v22)
      {
        sub_1ABF23D34();
      }

      v28 = v23;
      v29 = v58;
    }

    result = sub_1ABF25294();
    v6 = v55;
    v39 = -1 << *(v55 + 32);
    v40 = result & ~v39;
    v41 = v40 >> 6;
    if (((-1 << v40) & ~*(v12 + 8 * (v40 >> 6))) == 0)
    {
      break;
    }

    v42 = __clz(__rbit64((-1 << v40) & ~*(v12 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
LABEL_63:
    *(v12 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
    v47 = *(v55 + 48) + 72 * v42;
    *v47 = v18;
    *(v47 + 8) = v57;
    *(v47 + 16) = v26;
    *(v47 + 24) = v20;
    *(v47 + 32) = v27;
    *(v47 + 40) = v22;
    *(v47 + 48) = v28;
    *(v47 + 56) = v29;
    *(v47 + 64) = v24;
    ++*(v55 + 16);
    v8 = v53;
    v3 = v54;
    v11 = v56;
    if (!v56)
    {
      goto LABEL_9;
    }
  }

  v43 = 0;
  v44 = (63 - v39) >> 6;
  while (++v41 != v44 || (v43 & 1) == 0)
  {
    v45 = v41 == v44;
    if (v41 == v44)
    {
      v41 = 0;
    }

    v43 |= v45;
    v46 = *(v12 + 8 * v41);
    if (v46 != -1)
    {
      v42 = __clz(__rbit64(~v46)) + (v41 << 6);
      goto LABEL_63;
    }
  }

LABEL_71:
  __break(1u);
  return result;
}

uint64_t sub_1ABB1BAFC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1ABAD219C(&qword_1EB4D2B88, &qword_1ABF39DE8);
  result = sub_1ABF24A44();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v32 = v2;
  v33 = v3;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      sub_1ABB18078(0, (v31 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(v3 + 48) + 24 * (v14 | (v7 << 6));
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    v21 = *(v6 + 40);
    sub_1ABF25234();
    sub_1ABF25264();
    MEMORY[0x1AC5AA8D0](v19);
    MEMORY[0x1AC5AA8D0](v20);
    result = sub_1ABF25294();
    v22 = -1 << *(v6 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = *(v6 + 48) + 24 * v25;
    *v30 = v18;
    *(v30 + 8) = v19;
    *(v30 + 16) = v20;
    ++*(v6 + 16);
    v3 = v33;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v26 = 0;
  v27 = (63 - v22) >> 6;
  while (++v24 != v27 || (v26 & 1) == 0)
  {
    v28 = v24 == v27;
    if (v24 == v27)
    {
      v24 = 0;
    }

    v26 |= v28;
    v29 = *(v13 + 8 * v24);
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1ABB1BD80(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1ABAD219C(&qword_1EB4D2B30, &unk_1ABF4AF20);
  result = sub_1ABF24A44();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v28 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_1ABB18078(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    sub_1ABF25234();
    PersonEntityTagType.rawValue.getter();
    sub_1ABF23D34();

    result = sub_1ABF25294();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + v22) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1ABB1BFEC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1ABAD219C(&qword_1EB4D2B70, &qword_1ABF39DD8);
  result = sub_1ABF24A44();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v33 = v2;
  v34 = v3;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      sub_1ABB18078(0, (v32 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v32;
    }

    v2 = v33;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 32 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v21 = v17[3];
    v22 = *(v6 + 40);
    sub_1ABF25234();
    v35 = v18;
    sub_1ABF23D34();
    sub_1ABF23D34();
    result = sub_1ABF25294();
    v23 = -1 << *(v6 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v6 + 48) + 32 * v26);
    v3 = v34;
    *v31 = v35;
    v31[1] = v19;
    v31[2] = v20;
    v31[3] = v21;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v13 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_1ABB1C270()
{
  sub_1ABA8A8E4();
  v34 = v2;
  sub_1ABA979CC(v3, v4, v5);
  sub_1ABA8A5C4();
  v6 = sub_1ABF24A44();
  if (!*(v1 + 16))
  {
LABEL_25:

    *v0 = v6;
    sub_1ABA89EC8();
    return;
  }

  v33 = v0;
  v7 = 0;
  v9 = (v1 + 56);
  v8 = *(v1 + 56);
  v10 = *(v1 + 32);
  sub_1ABA8CC60();
  v13 = v12 & v11;
  v15 = (v14 + 63) >> 6;
  v16 = v6 + 56;
  if ((v12 & v11) == 0)
  {
LABEL_4:
    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v7 >= v15)
      {
        break;
      }

      ++v18;
      if (v9[v7])
      {
        sub_1ABA96BF4();
        v13 = v20 & v19;
        goto LABEL_9;
      }
    }

    v31 = 1 << *(v1 + 32);
    if (v31 >= 64)
    {
      sub_1ABB18078(0, (v31 + 63) >> 6, v1 + 56);
    }

    else
    {
      sub_1ABAA51D0();
      *v9 = v32;
    }

    v0 = v33;
    *(v1 + 16) = 0;
    goto LABEL_25;
  }

  while (1)
  {
    v17 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_9:
    v21 = *(*(v1 + 48) + 8 * (v17 | (v7 << 6)));
    v22 = *(v6 + 40);
    sub_1ABF25234();
    v34(v21);
    v23 = sub_1ABF25294();
    sub_1ABAB687C(v23, *(v6 + 32));
    if (v24)
    {
      break;
    }

    sub_1ABA8154C();
LABEL_19:
    sub_1ABA8FE48();
    *(v16 + v28) |= v29;
    *(*(v6 + 48) + 8 * v30) = v21;
    ++*(v6 + 16);
    if (!v13)
    {
      goto LABEL_4;
    }
  }

  sub_1ABA8E674();
  while (1)
  {
    sub_1ABA9E640();
    if (v24)
    {
      if (v26)
      {
        break;
      }
    }

    if (v25 == v27)
    {
      v25 = 0;
    }

    if (*(v16 + 8 * v25) != -1)
    {
      sub_1ABA83620();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

void sub_1ABB1C41C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1ABA979CC(a1, a2, a3);
  sub_1ABA8A5C4();
  v6 = v5;
  sub_1ABF24A44();
  sub_1ABA8A900();
  if (!v7)
  {
LABEL_28:

    *v3 = v6;
    return;
  }

  v8 = 0;
  v10 = (v4 + 56);
  v9 = *(v4 + 56);
  v11 = 1 << *(v4 + 32);
  v31 = v3;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & v9;
  v14 = v6 + 7;
  if ((v12 & v9) == 0)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= ((v11 + 63) >> 6))
      {
        break;
      }

      ++v16;
      if (v10[v8])
      {
        sub_1ABA96BF4();
        v13 = v18 & v17;
        goto LABEL_12;
      }
    }

    if (v11 >= 64)
    {
      sub_1ABB18078(0, (v11 + 63) >> 6, v4 + 56);
    }

    else
    {
      *v10 = -1 << v11;
    }

    v3 = v31;
    *(v4 + 16) = 0;
    goto LABEL_28;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_12:
    v19 = *(*(v4 + 48) + 8 * (v15 | (v8 << 6)));
    v20 = v6[5];
    v21 = sub_1ABF25224();
    sub_1ABA89370(v21);
    if (((-1 << v23) & ~v14[v22]) == 0)
    {
      break;
    }

    sub_1ABA8154C();
LABEL_22:
    sub_1ABA8FE48();
    *(v14 + v28) |= v29;
    *(v6[6] + 8 * v30) = v19;
    ++v6[2];
    if (!v13)
    {
      goto LABEL_7;
    }
  }

  sub_1ABA8E674();
  while (1)
  {
    sub_1ABA9E640();
    if (v27)
    {
      if (v25)
      {
        break;
      }
    }

    if (v24 == v26)
    {
      v24 = 0;
    }

    if (v14[v24] != -1)
    {
      sub_1ABA83620();
      goto LABEL_22;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_1ABB1C5C8(uint64_t a1, uint64_t a2)
{
  sub_1ABA9EE20();
  if (!(!v11 & v10) || (v5 & 1) == 0)
  {
    if (v5)
    {
      sub_1ABB1C270();
      goto LABEL_11;
    }

    if (v9 <= v8)
    {
      sub_1ABB21D9C();
LABEL_11:
      v17 = *v3;
      v18 = *(*v3 + 40);
      sub_1ABF25234();
      v19 = sub_1ABAB526C();
      MEMORY[0x1AC5AA8D0](v19);
      sub_1ABF25294();
      v20 = *(v17 + 32);
      sub_1ABAA489C();
      while (1)
      {
        a2 = v21 & v23;
        if (((*(v22 + (((v21 & v23) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v21 & v23)) & 1) == 0)
        {
          goto LABEL_8;
        }

        if (*(*(v17 + 48) + 8 * a2) == v2)
        {
          goto LABEL_16;
        }

        v21 = a2 + 1;
      }
    }

    sub_1ABB1F968(v6, v7);
  }

LABEL_8:
  sub_1ABA895E0(*v3);
  *(v13 + 8 * a2) = v2;
  v14 = *(v12 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_16:
    sub_1ABF250F4();
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v16;
  }
}

uint64_t sub_1ABB1C71C(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1ABB19BBC(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1ABB1FA08(v6 + 1);
LABEL_10:
      v14 = *v3;
      v15 = *(*v3 + 40);
      sub_1ABF25234();
      v16 = *v5;
      v17 = *(v5 + 8);
      sub_1ABF23D34();
      result = sub_1ABF25294();
      v18 = ~(-1 << *(v14 + 32));
      while (1)
      {
        a2 = result & v18;
        if (((*(v14 + 56 + (((result & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v18)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v19 = (*(v14 + 48) + 40 * a2);
        v20 = *v19 == v16 && v19[1] == v17;
        if (v20 || (sub_1ABF25054() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a2 + 1;
      }
    }

    result = sub_1ABB1E950();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v9 = *(v8 + 48) + 40 * a2;
  v10 = *(v5 + 16);
  *v9 = *v5;
  *(v9 + 16) = v10;
  *(v9 + 32) = *(v5 + 32);
  v11 = *(v8 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
LABEL_19:
    result = sub_1ABF250F4();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v13;
  }

  return result;
}

uint64_t sub_1ABB1C8A0(void *__src, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1ABB19E44(v7 + 1);
      goto LABEL_10;
    }

    if (v8 <= v7)
    {
      sub_1ABB1FC70(v7 + 1);
LABEL_10:
      v14 = *v3;
      v15 = *(*v3 + 40);
      memcpy(__dst, __src, sizeof(__dst));
      sub_1ABF25234();
      KnosisFact.hash(into:)();
      v16 = sub_1ABF25294();
      v17 = ~(-1 << *(v14 + 32));
      while (1)
      {
        a2 = v16 & v17;
        if (((*(v14 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v14 + 48) + 144 * a2);
        v19 = *v18 == *__src && v18[1] == __src[1];
        if (v19 || (sub_1ABF25054() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a2 + 1;
      }
    }

    sub_1ABB1EAC4();
  }

LABEL_7:
  v9 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = memcpy((*(v9 + 48) + 144 * a2), __src, 0x90uLL);
  v11 = *(v9 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
LABEL_19:
    result = sub_1ABF250F4();
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v13;
  }

  return result;
}

uint64_t sub_1ABB1CA20(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1ABB1A334(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1ABB20054(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_1ABF25234();
      sub_1ABF23D34();
      result = sub_1ABF25294();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_1ABF25054() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1ABB1EC4C();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_1ABF250F4();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_1ABB1CB88(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1ABB1A590(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_1ABB1EDA4();
        goto LABEL_47;
      }

      sub_1ABB20288(v6 + 1);
    }

    v8 = *v3;
    v9 = *(*v3 + 40);
    sub_1ABF25234();
    sub_1ABB39A6C(v23, v5);
    result = sub_1ABF25294();
    v10 = -1 << *(v8 + 32);
    a2 = result & ~v10;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      v12 = 0x6E656B6F54796E61;
      while (1)
      {
        v13 = *(*(v8 + 48) + a2);
        if (!(v13 >> 6))
        {
          break;
        }

        if (v13 >> 6 != 1)
        {
          if (v13 == 128)
          {
            if (v5 == 128)
            {
              goto LABEL_51;
            }
          }

          else if (v13 == 129)
          {
            if (v5 == 129)
            {
              goto LABEL_51;
            }
          }

          else if (v5 == 130)
          {
            goto LABEL_51;
          }

          goto LABEL_46;
        }

        if ((v5 & 0xC0) == 0x40)
        {
          v14 = 0xE800000000000000;
          v15 = 0x6E656B6F54796E61;
          switch(v13 & 0x3F)
          {
            case 1u:
              v14 = 0xE600000000000000;
              v15 = 0x786966657270;
              break;
            case 2u:
              v15 = 0x6E656B6F546C6C61;
              v14 = 0xE900000000000073;
              break;
            case 3u:
              v15 = 0x69666572506C6C61;
              v14 = 0xEB00000000736578;
              break;
            case 4u:
              v14 = 0xE600000000000000;
              v15 = 0x657361726870;
              break;
            case 5u:
              v15 = 0x6850786966657270;
              v14 = 0xEC00000065736172;
              break;
            default:
              break;
          }

LABEL_36:
          v16 = 0xE600000000000000;
          v12 = 0x786966657270;
LABEL_41:
          if (v15 == v12 && v14 == v16)
          {
            goto LABEL_50;
          }

          v18 = sub_1ABF25054();

          v12 = 0x6E656B6F54796E61;
          if (v18)
          {
            goto LABEL_51;
          }
        }

LABEL_46:
        a2 = (a2 + 1) & v11;
        if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_47;
        }
      }

      if (v5 >= 0x40u)
      {
        goto LABEL_46;
      }

      v14 = 0xE800000000000000;
      v15 = 0x6E656B6F54796E61;
      switch(*(*(v8 + 48) + a2))
      {
        case 1:
          v14 = 0xE600000000000000;
          v15 = 0x786966657270;
          break;
        case 2:
          v15 = 0x6E656B6F546C6C61;
          v14 = 0xE900000000000073;
          break;
        case 3:
          v15 = 0x69666572506C6C61;
          v14 = 0xEB00000000736578;
          break;
        case 4:
          v14 = 0xE600000000000000;
          v15 = 0x657361726870;
          break;
        case 5:
          v15 = 0x6850786966657270;
          v14 = 0xEC00000065736172;
          break;
        default:
          break;
      }

      v16 = 0xE800000000000000;
      switch(v5)
      {
        case 1u:
          goto LABEL_36;
        case 2u:
          v12 = 0x6E656B6F546C6C61;
          v16 = 0xE900000000000073;
          break;
        case 3u:
          v12 = 0x69666572506C6C61;
          v16 = 0xEB00000000736578;
          break;
        case 4u:
          v16 = 0xE600000000000000;
          v12 = 0x657361726870;
          break;
        case 5u:
          v12 = 0x6850786966657270;
          v16 = 0xEC00000065736172;
          break;
        default:
          goto LABEL_41;
      }

      goto LABEL_41;
    }
  }

LABEL_47:
  v19 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + a2) = v5;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_50:

LABEL_51:
    result = sub_1ABF250F4();
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v22;
  }

  return result;
}

uint64_t sub_1ABB1CFD4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1ABB1A9CC(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1ABB20694(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_1ABF25234();
      sub_1ABF23D34();
      result = sub_1ABF25294();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_1ABF25054() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1ABB1EEE4();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_1ABF250F4();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void sub_1ABB1D13C(char a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_36;
  }

  if (a3)
  {
    sub_1ABB1AC28(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_1ABB1F754(&unk_1EB4D2E20, &qword_1ABF39E10);
      goto LABEL_36;
    }

    sub_1ABB208C8(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_1ABF25234();
  sub_1ABBB4ED8(v26, a1);
  v11 = sub_1ABF25294();
  v12 = -1 << *(v9 + 32);
  a2 = v11 & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    do
    {
      v14 = 0xE400000000000000;
      v15 = 1701736302;
      switch(*(*(v9 + 48) + a2))
      {
        case 1:
          v15 = 0xD000000000000010;
          v14 = 0x80000001ABF7EE20;
          break;
        case 2:
          v14 = 0xE700000000000000;
          v15 = 0x7865646E496F6ELL;
          break;
        case 3:
          v16 = 0x47746E657665;
          goto LABEL_18;
        case 4:
          v15 = 0x79676F6C6F746E6FLL;
          v14 = 0xED00007865646E49;
          break;
        case 5:
          v15 = 0x49747865746E6F63;
          v14 = 0xEC0000007865646ELL;
          break;
        case 6:
          v16 = 0x476C61636F6CLL;
LABEL_18:
          v15 = v16 & 0xFFFFFFFFFFFFLL | 0x6172000000000000;
          v14 = 0xEF7865646E496870;
          break;
        case 7:
          v15 = 0xD00000000000001ALL;
          v14 = 0x80000001ABF7EE80;
          break;
        case 8:
          v15 = 0xD000000000000018;
          v14 = 0x80000001ABF7EEA0;
          break;
        default:
          break;
      }

      v17 = 0xE400000000000000;
      v18 = 1701736302;
      switch(a1)
      {
        case 1:
          v18 = 0xD000000000000010;
          v17 = 0x80000001ABF7EE20;
          break;
        case 2:
          v17 = 0xE700000000000000;
          v18 = 0x7865646E496F6ELL;
          break;
        case 3:
          v19 = 0x47746E657665;
          goto LABEL_28;
        case 4:
          v18 = 0x79676F6C6F746E6FLL;
          v17 = 0xED00007865646E49;
          break;
        case 5:
          v18 = 0x49747865746E6F63;
          v17 = 0xEC0000007865646ELL;
          break;
        case 6:
          v19 = 0x476C61636F6CLL;
LABEL_28:
          v18 = v19 & 0xFFFFFFFFFFFFLL | 0x6172000000000000;
          v17 = 0xEF7865646E496870;
          break;
        case 7:
          v18 = 0xD00000000000001ALL;
          v17 = 0x80000001ABF7EE80;
          break;
        case 8:
          v18 = 0xD000000000000018;
          v17 = 0x80000001ABF7EEA0;
          break;
        default:
          break;
      }

      if (v15 == v18 && v14 == v17)
      {
        goto LABEL_39;
      }

      v21 = sub_1ABF25054();

      if (v21)
      {
        goto LABEL_40;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_36:
  v22 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v22 + 48) + a2) = a1;
  v23 = *(v22 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v22 + 16) = v25;
    return;
  }

  __break(1u);
LABEL_39:

LABEL_40:
  sub_1ABF250F4();
  __break(1u);
}

uint64_t sub_1ABB1D500(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1ABB1AFA8(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1ABB20C18(v6 + 1);
LABEL_10:
      v14 = *v3;
      v15 = *(*v3 + 40);
      sub_1ABF25234();
      v16 = *(v5 + 16);
      v17 = *(v5 + 24);
      sub_1ABF23D34();
      result = sub_1ABF25294();
      v18 = ~(-1 << *(v14 + 32));
      while (1)
      {
        a2 = result & v18;
        if (((*(v14 + 56 + (((result & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v18)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v19 = *(v14 + 48) + 40 * a2;
        v20 = *(v19 + 16) == v16 && *(v19 + 24) == v17;
        if (v20 || (sub_1ABF25054() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a2 + 1;
      }
    }

    result = sub_1ABB1F03C();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v9 = *(v8 + 48) + 40 * a2;
  v10 = *(v5 + 16);
  *v9 = *v5;
  *(v9 + 16) = v10;
  *(v9 + 32) = *(v5 + 32);
  v11 = *(v8 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
LABEL_19:
    result = sub_1ABF250F4();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v13;
  }

  return result;
}

uint64_t sub_1ABB1D684(void *__src, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1ABB1B230(v7 + 1);
      goto LABEL_10;
    }

    if (v8 <= v7)
    {
      sub_1ABB20E80(v7 + 1);
LABEL_10:
      v14 = *v3;
      v15 = *(*v3 + 40);
      memcpy(__dst, __src, sizeof(__dst));
      sub_1ABF25234();
      KnosisInternalFact.hash(into:)(&v20);
      v16 = sub_1ABF25294();
      v17 = ~(-1 << *(v14 + 32));
      while (1)
      {
        a2 = v16 & v17;
        if (((*(v14 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v14 + 48) + 88 * a2);
        v19 = *v18 == *__src && v18[1] == __src[1];
        if (v19 || (sub_1ABF25054() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a2 + 1;
      }
    }

    sub_1ABB1F1B0();
  }

LABEL_7:
  v9 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = memcpy((*(v9 + 48) + 88 * a2), __src, 0x58uLL);
  v11 = *(v9 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
LABEL_19:
    result = sub_1ABF250F4();
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v13;
  }

  return result;
}

uint64_t sub_1ABB1D804(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v23 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_27;
  }

  if (a3)
  {
    sub_1ABB1B448(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1ABB1F338();
      goto LABEL_27;
    }

    sub_1ABB21074(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_1ABB11118();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    if (v5)
    {
      v12 = 0x7241746E65746E69;
    }

    else
    {
      v12 = 0x79676F6C6F746E6FLL;
    }

    if (v5)
    {
      v13 = 0xE900000000000067;
    }

    else
    {
      v13 = 0xE800000000000000;
    }

    do
    {
      v14 = *(*(v8 + 48) + a2) ? 0x7241746E65746E69 : 0x79676F6C6F746E6FLL;
      v15 = *(*(v8 + 48) + a2) ? 0xE900000000000067 : 0xE800000000000000;
      if (v14 == v12 && v15 == v13)
      {
        goto LABEL_30;
      }

      v17 = sub_1ABF25054();

      if (v17)
      {
        goto LABEL_31;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_27:
  v18 = *v22;
  *(*v22 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v23 & 1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_30:

LABEL_31:
  result = sub_1ABF250F4();
  __break(1u);
  return result;
}

uint64_t sub_1ABB1DA00(uint64_t *a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a3)
  {
    sub_1ABB1B6D4(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1ABB1F478();
      goto LABEL_22;
    }

    sub_1ABB212D0(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1ABF25234();
  v10 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  v12 = a1[3];
  v14 = *(a1 + 3);
  v48 = *(a1 + 2);
  v49 = v14;
  v50 = *(a1 + 64);
  sub_1ABF23D34();
  sub_1ABF23D34();
  v37[0] = v48;
  v37[1] = v49;
  v38 = v50;
  ViewService.DefaultResolverInteractionsView.CandidateType.hash(into:)();
  v15 = sub_1ABF25294();
  v35 = v8 + 56;
  v36 = v8;
  v16 = -1 << *(v8 + 32);
  a2 = v15 & ~v16;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v34 = ~v16;
    do
    {
      memcpy(__dst, (*(v36 + 48) + 72 * a2), 0x41uLL);
      v17 = __dst[0] == v10 && __dst[1] == v11;
      if (v17 || (sub_1ABF25054() & 1) != 0)
      {
        v18 = __dst[2] == v13 && __dst[3] == v12;
        if (v18 || (sub_1ABF25054() & 1) != 0)
        {
          v19 = v13;
          v20 = __dst[4];
          v21 = __dst[5];
          v23 = __dst[6];
          v22 = __dst[7];
          v24 = __dst[8];
          v42 = __dst[4];
          v43 = __dst[5];
          v44 = __dst[6];
          v45 = __dst[7];
          v46 = __dst[8];
          v39 = v48;
          v40 = v49;
          v41 = v50;
          sub_1ABB24348(__dst, v37);
          v25 = v21;
          v13 = v19;
          sub_1ABAFF488(v20, v25, v23, v22, v24);
          sub_1ABAFF4E8(&v48, v37);
          v26 = static ViewService.DefaultResolverInteractionsView.CandidateType.== infix(_:_:)(&v42, &v39);
          sub_1ABAFF544(v39, *(&v39 + 1), v40, *(&v40 + 1), v41);
          sub_1ABAFF544(v42, v43, v44, v45, v46);
          sub_1ABB243A4(__dst);
          if (v26)
          {
            goto LABEL_25;
          }
        }
      }

      a2 = (a2 + 1) & v34;
    }

    while (((*(v35 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_22:
  v27 = *v32;
  *(*v32 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = memcpy((*(v27 + 48) + 72 * a2), a1, 0x41uLL);
  v29 = *(v27 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (!v30)
  {
    *(v27 + 16) = v31;
    return result;
  }

  __break(1u);
LABEL_25:
  result = sub_1ABF250F4();
  __break(1u);
  return result;
}

uint64_t sub_1ABB1DCA8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v9 = result;
  v10 = *(*v5 + 16);
  v11 = *(*v5 + 24);
  if (v11 > v10 && (a5 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a5)
  {
    sub_1ABB1BAFC(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      result = sub_1ABB1F600();
      goto LABEL_18;
    }

    sub_1ABB216AC(v10 + 1);
  }

  v12 = *v5;
  v13 = *(*v5 + 40);
  sub_1ABF25234();
  sub_1ABF25264();
  MEMORY[0x1AC5AA8D0](a2);
  MEMORY[0x1AC5AA8D0](a3);
  result = sub_1ABF25294();
  v14 = -1 << *(v12 + 32);
  a4 = result & ~v14;
  if ((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v15 = ~v14;
    do
    {
      v16 = (*(v12 + 48) + 24 * a4);
      v17 = *v16;
      v19 = *(v16 + 1);
      v18 = *(v16 + 2);
      v20 = v17 == v9 && v19 == a2;
      if (v20 && v18 == a3)
      {
        goto LABEL_21;
      }

      a4 = (a4 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_18:
  v22 = *v5;
  *(*v5 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v23 = *(v22 + 48) + 24 * a4;
  *v23 = v9;
  *(v23 + 8) = a2;
  *(v23 + 16) = a3;
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v22 + 16) = v26;
    return result;
  }

  __break(1u);
LABEL_21:
  result = sub_1ABF250F4();
  __break(1u);
  return result;
}

void sub_1ABB1DE44(char a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_90;
  }

  if (a3)
  {
    sub_1ABB1BD80(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1ABB1F754(&qword_1EB4D2B30, &unk_1ABF4AF20);
      goto LABEL_90;
    }

    sub_1ABB21900(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_1ABAAFEEC();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = 0xE500000000000000;
      v14 = 0x7465736E75;
      switch(*(*(v8 + 48) + a2))
      {
        case 1:
          v13 = 0xE700000000000000;
          v14 = 0x6E776F6E6B6E75;
          break;
        case 2:
          v14 = 0x726568746FLL;
          break;
        case 3:
          v13 = 0xE600000000000000;
          v14 = 0x666C6573796DLL;
          break;
        case 4:
          v13 = 0xE600000000000000;
          v14 = 0x796C696D6166;
          break;
        case 5:
          v13 = 0xE600000000000000;
          v14 = 0x746E65726170;
          break;
        case 6:
          v14 = 0x726568746F6DLL;
          v13 = 0xE600000000000000;
          break;
        case 7:
          v13 = 0xE600000000000000;
          v19 = 1752457574;
          goto LABEL_37;
        case 8:
          v13 = 0xE700000000000000;
          v14 = 0x676E696C626973;
          break;
        case 9:
          v13 = 0xE700000000000000;
          v18 = 0x6568746F7262;
          goto LABEL_35;
        case 0xA:
          v13 = 0xE600000000000000;
          v19 = 1953720691;
LABEL_37:
          v14 = v19 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
          break;
        case 0xB:
          v14 = 0x726150646E617267;
          v17 = 7630437;
          goto LABEL_32;
        case 0xC:
          v14 = 0x746F6D646E617267;
          goto LABEL_31;
        case 0xD:
          v14 = 0x746166646E617267;
LABEL_31:
          v17 = 7497064;
LABEL_32:
          v13 = v17 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 0xE:
          v13 = 0xE700000000000000;
          v16 = 0x6C696843796DLL;
          goto LABEL_27;
        case 0xF:
          v14 = 0x646C696863;
          break;
        case 0x10:
          v13 = 0xE300000000000000;
          v14 = 7237491;
          break;
        case 0x11:
          v13 = 0xE800000000000000;
          v20 = 0x746867756164;
          goto LABEL_42;
        case 0x12:
          v13 = 0xE700000000000000;
          v18 = 0x656E74726170;
LABEL_35:
          v14 = v18 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
          break;
        case 0x13:
          v13 = 0xE400000000000000;
          v14 = 1701210487;
          break;
        case 0x14:
          v13 = 0xE700000000000000;
          v16 = 0x6E6162737568;
LABEL_27:
          v14 = v16 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
          break;
        case 0x15:
          v13 = 0xE600000000000000;
          v14 = 0x646E65697266;
          break;
        case 0x16:
          v14 = 0xD000000000000010;
          v13 = 0x80000001ABF81E70;
          break;
        case 0x17:
          v13 = 0xE800000000000000;
          v20 = 0x6B726F776F63;
LABEL_42:
          v14 = v20 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
          break;
        case 0x18:
          v13 = 0xE800000000000000;
          v14 = 0x726F62686769656ELL;
          break;
        case 0x19:
          v14 = 0x74616D6573756F68;
          v13 = 0xE900000000000065;
          break;
        case 0x1A:
          v13 = 0xE600000000000000;
          v14 = 0x696E6D756C61;
          break;
        case 0x1B:
          v15 = 1699772781;
          goto LABEL_45;
        case 0x1C:
          v14 = 0x676F44796DLL;
          break;
        case 0x1D:
          v15 = 1631811949;
LABEL_45:
          v14 = v15 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
          break;
        default:
          break;
      }

      v21 = 0xE500000000000000;
      v22 = 0x7465736E75;
      switch(a1)
      {
        case 1:
          v21 = 0xE700000000000000;
          v22 = 0x6E776F6E6B6E75;
          break;
        case 2:
          v22 = 0x726568746FLL;
          break;
        case 3:
          v21 = 0xE600000000000000;
          v22 = 0x666C6573796DLL;
          break;
        case 4:
          v21 = 0xE600000000000000;
          v22 = 0x796C696D6166;
          break;
        case 5:
          v21 = 0xE600000000000000;
          v22 = 0x746E65726170;
          break;
        case 6:
          v22 = 0x726568746F6DLL;
          v21 = 0xE600000000000000;
          break;
        case 7:
          v21 = 0xE600000000000000;
          v27 = 1752457574;
          goto LABEL_74;
        case 8:
          v21 = 0xE700000000000000;
          v22 = 0x676E696C626973;
          break;
        case 9:
          v21 = 0xE700000000000000;
          v26 = 0x6568746F7262;
          goto LABEL_72;
        case 10:
          v21 = 0xE600000000000000;
          v27 = 1953720691;
LABEL_74:
          v22 = v27 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
          break;
        case 11:
          v22 = 0x726150646E617267;
          v25 = 7630437;
          goto LABEL_69;
        case 12:
          v22 = 0x746F6D646E617267;
          goto LABEL_68;
        case 13:
          v22 = 0x746166646E617267;
LABEL_68:
          v25 = 7497064;
LABEL_69:
          v21 = v25 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 14:
          v21 = 0xE700000000000000;
          v24 = 0x6C696843796DLL;
          goto LABEL_64;
        case 15:
          v22 = 0x646C696863;
          break;
        case 16:
          v21 = 0xE300000000000000;
          v22 = 7237491;
          break;
        case 17:
          v21 = 0xE800000000000000;
          v28 = 0x746867756164;
          goto LABEL_79;
        case 18:
          v21 = 0xE700000000000000;
          v26 = 0x656E74726170;
LABEL_72:
          v22 = v26 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
          break;
        case 19:
          v21 = 0xE400000000000000;
          v22 = 1701210487;
          break;
        case 20:
          v21 = 0xE700000000000000;
          v24 = 0x6E6162737568;
LABEL_64:
          v22 = v24 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
          break;
        case 21:
          v21 = 0xE600000000000000;
          v22 = 0x646E65697266;
          break;
        case 22:
          v22 = 0xD000000000000010;
          v21 = 0x80000001ABF81E70;
          break;
        case 23:
          v21 = 0xE800000000000000;
          v28 = 0x6B726F776F63;
LABEL_79:
          v22 = v28 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
          break;
        case 24:
          v21 = 0xE800000000000000;
          v22 = 0x726F62686769656ELL;
          break;
        case 25:
          v22 = 0x74616D6573756F68;
          v21 = 0xE900000000000065;
          break;
        case 26:
          v21 = 0xE600000000000000;
          v22 = 0x696E6D756C61;
          break;
        case 27:
          v23 = 1699772781;
          goto LABEL_82;
        case 28:
          v22 = 0x676F44796DLL;
          break;
        case 29:
          v23 = 1631811949;
LABEL_82:
          v22 = v23 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
          break;
        default:
          break;
      }

      if (v14 == v22 && v13 == v21)
      {
        goto LABEL_93;
      }

      v30 = sub_1ABF25054();

      if (v30)
      {
        goto LABEL_94;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_90:
  v31 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v31 + 48) + a2) = a1;
  v32 = *(v31 + 16);
  v33 = __OFADD__(v32, 1);
  v34 = v32 + 1;
  if (!v33)
  {
    *(v31 + 16) = v34;
    return;
  }

  __break(1u);
LABEL_93:

LABEL_94:
  sub_1ABF250F4();
  __break(1u);
}

uint64_t sub_1ABB1E4F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_21;
  }

  if (a6)
  {
    sub_1ABB1BFEC(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      result = sub_1ABB1F800();
      goto LABEL_21;
    }

    sub_1ABB21B3C(v12 + 1);
  }

  v14 = *v6;
  v15 = *(*v6 + 40);
  sub_1ABF25234();
  sub_1ABF23D34();
  sub_1ABF23D34();
  result = sub_1ABF25294();
  v16 = v14 + 56;
  v17 = -1 << *(v14 + 32);
  a5 = result & ~v17;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v18 = ~v17;
    v19 = *(v14 + 48);
    do
    {
      v20 = (v19 + 32 * a5);
      v21 = v20[2];
      v22 = v20[3];
      v23 = *v20 == v11 && v20[1] == a2;
      if (v23 || (result = sub_1ABF25054(), (result & 1) != 0))
      {
        if (v21 == a3 && v22 == a4)
        {
          goto LABEL_24;
        }

        result = sub_1ABF25054();
        if (result)
        {
          goto LABEL_24;
        }
      }

      a5 = (a5 + 1) & v18;
    }

    while (((*(v16 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_21:
  v25 = *v30;
  *(*v30 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v26 = (*(v25 + 48) + 32 * a5);
  *v26 = v11;
  v26[1] = a2;
  v26[2] = a3;
  v26[3] = a4;
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_24:
  result = sub_1ABF250F4();
  __break(1u);
  return result;
}

void sub_1ABB1E6BC(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1ABB1C270();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1ABB21D9C();
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      sub_1ABF25234();
      MEMORY[0x1AC5AA8A0](a1);
      v14 = sub_1ABF25294();
      v15 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v12 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == a1)
        {
          goto LABEL_15;
        }

        v14 = a2 + 1;
      }
    }

    sub_1ABB1F968(&qword_1EB4D2B58, &unk_1ABF39DC0);
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = a1;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    sub_1ABF250F4();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

void sub_1ABB1E84C(uint64_t a1, uint64_t a2)
{
  sub_1ABA9EE20();
  if (!(!v11 & v10) || (v5 & 1) == 0)
  {
    if (v5)
    {
      sub_1ABB1C41C(v8 + 1, v6, v7);
      goto LABEL_11;
    }

    if (v9 <= v8)
    {
      sub_1ABB21F40(v8 + 1, v6, v7);
LABEL_11:
      v17 = *v3;
      v18 = *(*v3 + 40);
      sub_1ABF25224();
      v19 = *(v17 + 32);
      sub_1ABAA489C();
      while (1)
      {
        a2 = v20 & v22;
        if (((*(v21 + (((v20 & v22) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v20 & v22)) & 1) == 0)
        {
          goto LABEL_8;
        }

        if (*(*(v17 + 48) + 8 * a2) == v2)
        {
          goto LABEL_16;
        }

        v20 = a2 + 1;
      }
    }

    sub_1ABB1F968(v6, v7);
  }

LABEL_8:
  sub_1ABA895E0(*v3);
  *(v13 + 8 * a2) = v2;
  v14 = *(v12 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_16:
    sub_1ABF250F4();
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v16;
  }
}

void *sub_1ABB1E950()
{
  v1 = v0;
  sub_1ABAD219C(&qword_1EB4D2B38, &unk_1ABF39DA0);
  v2 = *v0;
  v3 = sub_1ABF24A34();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 5 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + 8 * v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        LOWORD(v18) = *(v18 + 32);
        v23 = *(v4 + 48) + 8 * v17;
        *v23 = v20;
        *(v23 + 8) = v19;
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
        *(v23 + 32) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1ABB1EAC4()
{
  v1 = v0;
  sub_1ABAD219C(&qword_1EB4D2BB0, &qword_1ABF39E08);
  v2 = *v0;
  v3 = sub_1ABF24A34();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 9 * v17;
        v19 = (*(v2 + 48) + 144 * v17);
        memcpy(__dst, v19, sizeof(__dst));
        memmove((*(v4 + 48) + 16 * v18), v19, 0x90uLL);
        result = sub_1ABAE42A8(__dst, &v20);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1ABB1EC4C()
{
  v1 = v0;
  sub_1ABAD219C(&qword_1EB4D2E70, &unk_1ABF4AF30);
  v2 = *v0;
  v3 = sub_1ABF24A34();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1ABB1EDA4()
{
  v1 = v0;
  sub_1ABAD219C(&qword_1EB4D2BA0, &qword_1ABF39DF0);
  v2 = *v0;
  v3 = sub_1ABF24A34();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1ABB1EEE4()
{
  v1 = v0;
  sub_1ABAD219C(&qword_1EB4D2BB8, &qword_1ABF39E18);
  v2 = *v0;
  v3 = sub_1ABF24A34();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}