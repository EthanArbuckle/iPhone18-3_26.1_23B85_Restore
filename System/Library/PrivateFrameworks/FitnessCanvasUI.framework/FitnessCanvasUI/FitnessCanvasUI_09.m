uint64_t sub_1E683B69C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1E683B8B8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1E68B38A0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1E68B3230();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1E683B8B8(v10, 0);
        result = sub_1E68B3810();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1E683B7CC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1E683B92C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1E683B8B8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099878);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1E683B92C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099878);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1E683BAA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097040);
  swift_storeEnumTagMultiPayload();
  v20 = type metadata accessor for WideBrickView();
  (*(*(a13 - 8) + 32))(a9 + v20[9], a1, a13);
  v21 = (a9 + v20[11]);
  *v21 = a2;
  v21[1] = a3;
  v21[2] = a4;
  v21[3] = a5;
  v22 = (a9 + v20[12]);
  *v22 = a6;
  v22[1] = a7;
  v22[2] = a8;
  v22[3] = a10;
  v23 = (a9 + v20[10]);
  result = swift_allocObject();
  *(result + 16) = a11;
  *(result + 24) = a12;
  *v23 = sub_1E673F5E0;
  v23[1] = result;
  return result;
}

uint64_t WideBrickView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a1;
  v58 = a2;
  v3 = sub_1E68B1EB0();
  v44 = v3;
  v57 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v56 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *(a1 - 8);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099888);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CE0();
  v8 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0);
  v9 = sub_1E68B1E40();
  WitnessTable = swift_getWitnessTable();
  v73 = MEMORY[0x1E697F568];
  v10 = swift_getWitnessTable();
  v11 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0);
  v70 = v10;
  v71 = v11;
  v12 = swift_getWitnessTable();
  v13 = MEMORY[0x1E6981CD8];
  v62 = v8;
  v63 = MEMORY[0x1E6981CD8];
  v64 = v9;
  v65 = v9;
  v14 = MEMORY[0x1E6981CD0];
  v66 = v10;
  v67 = MEMORY[0x1E6981CD0];
  v68 = v12;
  v69 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v62 = v8;
  v63 = v13;
  v64 = v9;
  v65 = v9;
  v66 = v10;
  v67 = v14;
  v68 = v12;
  v69 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = sub_1E68B2C30();
  v50 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v45 = &v41 - v16;
  v17 = swift_getWitnessTable();
  v43 = v17;
  v42 = sub_1E681132C(&qword_1EE2EA680, MEMORY[0x1E697C248]);
  v62 = v15;
  v63 = v3;
  v64 = v17;
  v65 = v42;
  v46 = MEMORY[0x1E697CDB0];
  v18 = swift_getOpaqueTypeMetadata2();
  v47 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v41 = &v41 - v23;
  v24 = v53;
  v25 = v55;
  v26 = v51;
  (*(v53 + 16))(v7, v55, v51, v22);
  v27 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v28 = swift_allocObject();
  v29 = v26;
  v30 = *(v26 + 24);
  v31 = v52;
  *(v28 + 16) = v52;
  *(v28 + 24) = v30;
  (*(v24 + 32))(v28 + v27, v7, v29);
  v59 = v31;
  v60 = v30;
  v61 = v25;
  v32 = v45;
  sub_1E68B2C20();
  v33 = v56;
  _s7SwiftUI20PrimitiveButtonStyleP013FitnessCanvasB0AA05PlaindE0VRszrlE10searchCardAFvgZ_0();
  v34 = v44;
  v35 = v43;
  v36 = v42;
  sub_1E68B2790();
  (*(v57 + 8))(v33, v34);
  (*(v50 + 8))(v32, v15);
  v62 = v15;
  v63 = v34;
  v64 = v35;
  v65 = v36;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = v41;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v20, v18, v37);
  v39 = *(v47 + 8);
  v39(v20, v18);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v38, v18, v37);
  return (v39)(v38, v18);
}

uint64_t sub_1E683C2C0(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for WideBrickView() + 40);
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;

  sub_1E677A174(v2);
}

uint64_t sub_1E683C358()
{
  v1 = *(type metadata accessor for WideBrickView() - 8);
  v2 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_1E683C2C0(v2);
}

uint64_t sub_1E683C3DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a3;
  v40 = a1;
  v42 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099888);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  WitnessTable = swift_getWitnessTable();
  v5 = sub_1E68B2CE0();
  v38 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v30 - v6;
  v33 = v5;
  v8 = sub_1E68B1E40();
  v41 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v36 = v30 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0);
  v10 = sub_1E68B1E40();
  v32 = swift_getWitnessTable();
  v60 = v32;
  v61 = MEMORY[0x1E697F568];
  v11 = swift_getWitnessTable();
  v12 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0);
  v58 = v11;
  v59 = v12;
  v31 = v11;
  v13 = swift_getWitnessTable();
  v50 = v8;
  v51 = MEMORY[0x1E6981CD8];
  v30[1] = v10;
  v52 = v10;
  v53 = v10;
  v54 = v11;
  v55 = MEMORY[0x1E6981CD0];
  v56 = v13;
  v57 = v13;
  v34 = MEMORY[0x1E6981460];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v35 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v30 - v18;
  v20 = a2;
  v47 = a2;
  v21 = v39;
  v48 = v39;
  v49 = v40;
  sub_1E68B2E80();
  sub_1E68B2CD0();
  v22 = v36;
  v23 = v33;
  sub_1E68B2770();
  (*(v38 + 8))(v7, v23);
  sub_1E68B2E00();
  v45 = v20;
  v46 = v21;
  v43 = v20;
  v44 = v21;
  v24 = swift_checkMetadataState();
  v25 = v31;
  v26 = MEMORY[0x1E6981CD8];
  sub_1E68B2AD0();
  (*(v41 + 8))(v22, v8);
  v50 = v8;
  v51 = v26;
  v52 = v24;
  v53 = v24;
  v54 = v25;
  v55 = MEMORY[0x1E6981CD0];
  v56 = v13;
  v57 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v16, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v28 = *(v35 + 8);
  v28(v16, OpaqueTypeMetadata2);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v19, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v28)(v19, OpaqueTypeMetadata2);
}

uint64_t sub_1E683C9A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099888);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - v10;
  v12 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v38 - v17;
  v19 = a1 + *(type metadata accessor for WideBrickView() + 36);
  v39 = a3;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v19, a2, a3);
  *v11 = sub_1E68B2140();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099890);
  sub_1E683CD0C(a1, a2, a3, &v11[*(v20 + 44)]);
  LOBYTE(a1) = sub_1E68B2500();
  sub_1E68B1B30();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099898) + 36)];
  *v29 = a1;
  *(v29 + 1) = v22;
  *(v29 + 2) = v24;
  *(v29 + 3) = v26;
  *(v29 + 4) = v28;
  v29[40] = 0;
  KeyPath = swift_getKeyPath();
  v31 = &v11[*(v7 + 36)];
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0971F8) + 28);
  v33 = *MEMORY[0x1E697E7D0];
  v34 = sub_1E68B1E00();
  (*(*(v34 - 8) + 104))(v31 + v32, v33, v34);
  *v31 = KeyPath;
  (*(v12 + 16))(v15, v18, a2);
  v45[0] = v15;
  v35 = v40;
  sub_1E67612FC(v11, v40, &qword_1ED099888);
  v45[1] = v35;
  v44[0] = a2;
  v44[1] = v7;
  v42 = v39;
  v43 = sub_1E683E4B8();
  sub_1E6848F14(v45, 2uLL, v44);
  sub_1E6744A10(v11, &qword_1ED099888);
  v36 = *(v12 + 8);
  v36(v18, a2);
  sub_1E6744A10(v35, &qword_1ED099888);
  return (v36)(v15, a2);
}

uint64_t sub_1E683CD0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a2;
  v42 = a3;
  v47 = a4;
  v5 = sub_1E68B1E00();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0998C0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v39 - v13;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0998C8);
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v44 = &v39 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v45 = &v39 - v19;
  sub_1E677A48C(v11);
  v20 = *(v6 + 104);
  v40 = *MEMORY[0x1E697E7D0];
  v39 = v20;
  v20(v8);
  v21 = sub_1E68B1DF0();
  v22 = *(v6 + 8);
  v22(v8, v5);
  v22(v11, v5);
  if (v21)
  {
    v23 = sub_1E68B21D0();
  }

  else
  {
    v23 = sub_1E68B21E0();
  }

  *v14 = v23;
  *(v14 + 1) = 0x4014000000000000;
  v14[16] = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0998D0);
  sub_1E683D21C(a1, &v14[*(v24 + 44)]);
  sub_1E677A48C(v11);
  v39(v8, v40, v5);
  v25 = sub_1E68B1DF0();
  v22(v8, v5);
  v22(v11, v5);
  if (v25)
  {
    sub_1E68B2E30();
  }

  else
  {
    sub_1E68B2E40();
  }

  sub_1E68B1F30();
  v26 = v44;
  sub_1E6761420(v14, v44, &qword_1ED0998C0);
  v27 = (v26 + *(v43 + 36));
  v28 = v55;
  v27[4] = v54;
  v27[5] = v28;
  v27[6] = v56;
  v29 = v51;
  *v27 = v50;
  v27[1] = v29;
  v30 = v53;
  v27[2] = v52;
  v27[3] = v30;
  v31 = v45;
  sub_1E6761420(v26, v45, &qword_1ED0998C8);
  sub_1E68B2E80();
  sub_1E68B1F30();
  *&v48[55] = v60;
  *&v48[71] = v61;
  *&v48[87] = v62;
  *&v48[103] = v63;
  *&v48[7] = v57;
  *&v48[23] = v58;
  v49 = 1;
  *&v48[39] = v59;
  v32 = v46;
  sub_1E67612FC(v31, v46, &qword_1ED0998C8);
  v33 = v47;
  sub_1E67612FC(v32, v47, &qword_1ED0998C8);
  v34 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0998D8) + 48);
  v35 = *&v48[80];
  *(v34 + 73) = *&v48[64];
  *(v34 + 89) = v35;
  *(v34 + 105) = *&v48[96];
  v36 = *&v48[16];
  *(v34 + 9) = *v48;
  *(v34 + 25) = v36;
  v37 = *&v48[48];
  *(v34 + 41) = *&v48[32];
  *v34 = 0;
  *(v34 + 8) = 1;
  *(v34 + 120) = *&v48[111];
  *(v34 + 57) = v37;
  sub_1E6744A10(v31, &qword_1ED0998C8);
  return sub_1E6744A10(v32, &qword_1ED0998C8);
}

uint64_t sub_1E683D21C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v86 = sub_1E68B1E00();
  v3 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v5 = &v60[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v60[-v7];
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097290) - 8;
  MEMORY[0x1EEE9AC00](v85);
  v83 = &v60[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v60[-v11];
  MEMORY[0x1EEE9AC00](v13);
  v82 = &v60[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v60[-v16];
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097298) - 8;
  MEMORY[0x1EEE9AC00](v80);
  v81 = &v60[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v60[-v20];
  MEMORY[0x1EEE9AC00](v22);
  v87 = &v60[-v23];
  v79 = type metadata accessor for WideBrickView();
  v24 = *(v79 + 48);
  v73 = a1;
  v25 = (a1 + v24);
  v26 = v25[1];
  v67 = *v25;
  v66 = v26;
  v27 = v25[3];
  v65 = v25[2];
  v64 = v27;
  sub_1E673F228(v67, v26, v65, v27);
  v63 = sub_1E68B2310();
  KeyPath = swift_getKeyPath();
  v28 = v8;
  sub_1E677A48C(v8);
  v78 = *MEMORY[0x1E697E7D0];
  v77 = *(v3 + 104);
  v74 = v5;
  v29 = v86;
  v77(v5);
  v72 = v28;
  v30 = sub_1E68B1DF0();
  v31 = *(v3 + 8);
  v76 = v3 + 8;
  v31(v5, v29);
  v31(v28, v29);
  if (v30)
  {
    v32 = 0;
  }

  else
  {
    v32 = 2;
  }

  v89 = 0;
  v33 = swift_getKeyPath();
  v61 = v89;
  v34 = &v17[*(v85 + 44)];
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0972A8);
  v35 = *(v75 + 28);
  v70 = *MEMORY[0x1E6980FA8];
  v36 = v70;
  v69 = sub_1E68B2650();
  v37 = *(v69 - 8);
  v68 = *(v37 + 104);
  v71 = v37 + 104;
  v68(v34 + v35, v36, v69);
  *v34 = swift_getKeyPath();
  v38 = v66;
  *v17 = v67;
  *(v17 + 1) = v38;
  v39 = v64;
  *(v17 + 2) = v65;
  *(v17 + 3) = v39;
  *(v17 + 8) = v63;
  *(v17 + 5) = KeyPath;
  *(v17 + 6) = 3;
  v17[56] = v61;
  *(v17 + 8) = v33;
  v17[72] = v32;
  sub_1E6761420(v17, v21, &qword_1ED097290);
  *&v21[*(v80 + 44)] = 0x4000000000000000;
  sub_1E6761420(v21, v87, &qword_1ED097298);
  v40 = (v73 + *(v79 + 44));
  v41 = *v40;
  v42 = v40[1];
  v43 = v40[2];
  v44 = v40[3];
  sub_1E673F228(*v40, v42, v43, v44);
  LODWORD(v80) = sub_1E68B2310();
  v79 = swift_getKeyPath();
  v45 = v72;
  sub_1E677A48C(v72);
  v46 = v74;
  v47 = v86;
  (v77)(v74, v78, v86);
  v48 = v46;
  LOBYTE(v46) = sub_1E68B1DF0();
  v31(v48, v47);
  v31(v45, v47);
  if (v46)
  {
    v49 = 0;
  }

  else
  {
    v49 = 2;
  }

  v88 = 0;
  v50 = swift_getKeyPath();
  v51 = v88;
  v52 = &v12[*(v85 + 44)];
  v68(v52 + *(v75 + 28), v70, v69);
  *v52 = swift_getKeyPath();
  *v12 = v41;
  *(v12 + 1) = v42;
  *(v12 + 2) = v43;
  *(v12 + 3) = v44;
  *(v12 + 8) = v80;
  *(v12 + 5) = v79;
  *(v12 + 6) = 2;
  v12[56] = v51;
  *(v12 + 8) = v50;
  v12[72] = v49;
  v53 = v82;
  sub_1E6761420(v12, v82, &qword_1ED097290);
  v54 = v87;
  v55 = v81;
  sub_1E67612FC(v87, v81, &qword_1ED097298);
  v56 = v83;
  sub_1E67612FC(v53, v83, &qword_1ED097290);
  v57 = v84;
  sub_1E67612FC(v55, v84, &qword_1ED097298);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0998E0);
  sub_1E67612FC(v56, v57 + *(v58 + 48), &qword_1ED097290);
  sub_1E6744A10(v53, &qword_1ED097290);
  sub_1E6744A10(v54, &qword_1ED097298);
  sub_1E6744A10(v56, &qword_1ED097290);
  return sub_1E6744A10(v55, &qword_1ED097298);
}

uint64_t sub_1E683D8F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22[0] = a1;
  v22[1] = a2;
  v2 = sub_1E68B1F00();
  MEMORY[0x1EEE9AC00](v2);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099888);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CE0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0);
  v5 = sub_1E68B1E40();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v22 - v10;
  sub_1E68B1A40();
  v13 = v12;
  v14 = *(v2 + 20);
  v15 = *MEMORY[0x1E697F468];
  v16 = sub_1E68B2160();
  (*(*(v16 - 8) + 104))(&v4[v14], v15, v16);
  *v4 = v13;
  *(v4 + 1) = v13;
  v22[4] = swift_getWitnessTable();
  v22[5] = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  sub_1E681132C(&qword_1EE2EA660, MEMORY[0x1E697EAF0]);
  sub_1E68B2AE0();
  sub_1E6768D04(v4);
  v18 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0);
  v22[2] = WitnessTable;
  v22[3] = v18;
  v19 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v8, v5, v19);
  v20 = *(v6 + 8);
  v20(v8, v5);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v11, v5, v19);
  return (v20)(v11, v5);
}

uint64_t sub_1E683DC70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25[0] = a1;
  v25[1] = a2;
  v2 = sub_1E68B1F00();
  MEMORY[0x1EEE9AC00](v2);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099888);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CE0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0);
  v5 = sub_1E68B1E40();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v25 - v10;
  v12 = *(v2 + 20);
  v13 = *MEMORY[0x1E697F468];
  v14 = sub_1E68B2160();
  (*(*(v14 - 8) + 104))(&v4[v12], v13, v14);
  __asm { FMOV            V0.2D, #8.0 }

  *v4 = _Q0;
  v25[4] = swift_getWitnessTable();
  v25[5] = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  sub_1E681132C(&qword_1EE2EA660, MEMORY[0x1E697EAF0]);
  sub_1E68B2AE0();
  sub_1E6768D04(v4);
  v21 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0);
  v25[2] = WitnessTable;
  v25[3] = v21;
  v22 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v8, v5, v22);
  v23 = *(v6 + 8);
  v23(v8, v5);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v11, v5, v22);
  return (v23)(v11, v5);
}

void sub_1E683DFE4()
{
  sub_1E67683F8();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_1E673ED88();
      if (v2 <= 0x3F)
      {
        sub_1E673ED38();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1E683E09C(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_1E68B1E00() - 8) + 64);
  v7 = 8;
  v8 = *(*(a3 + 16) - 8);
  if (v6 > 8)
  {
    v7 = v6;
  }

  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  v11 = *(v8 + 64);
  if (v9 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v7 + v10 + 1;
  v14 = v11 + 7;
  if (v12 >= a2)
  {
    goto LABEL_29;
  }

  v15 = ((((((v14 + (v13 & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 32;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v12 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v12 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  v24 = (a1 + v13) & ~v10;
  if (v9 < 0x7FFFFFFF)
  {
    v26 = *((v14 + v24) & 0xFFFFFFFFFFFFFFF8);
    if (v26 >= 0xFFFFFFFF)
    {
      LODWORD(v26) = -1;
    }

    return (v26 + 1);
  }

  else
  {
    v25 = *(*(*(a3 + 16) - 8) + 48);

    return v25(v24);
  }
}

void sub_1E683E278(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_1E68B1E00() - 8) + 64);
  v9 = 8;
  v10 = *(*(a4 + 16) - 8);
  if (v8 > 8)
  {
    v9 = v8;
  }

  v11 = *(*(a4 + 16) - 8);
  v12 = *(v10 + 84);
  v13 = *(v10 + 80);
  v14 = *(v10 + 64);
  if (v12 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v12;
  }

  v16 = v9 + v13 + 1;
  v17 = v14 + 7;
  v18 = ((((((v17 + (v16 & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v15 >= a3)
  {
    v21 = 0;
    v22 = a2 - v15;
    if (a2 <= v15)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((((((v17 + (v16 & ~v13)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v19 = a3 - v15 + 1;
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

    v22 = a2 - v15;
    if (a2 <= v15)
    {
LABEL_19:
      if (v21 > 1)
      {
        if (v21 != 2)
        {
          *(a1 + v18) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v18) = 0;
      }

      else if (v21)
      {
        *(a1 + v18) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      v25 = (a1 + v16) & ~v13;
      if (v12 < 0x7FFFFFFF)
      {
        v27 = ((v17 + v25) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v27 = a2 & 0x7FFFFFFF;
          v27[1] = 0;
        }

        else
        {
          *v27 = (a2 - 1);
        }
      }

      else
      {
        v26 = *(v11 + 56);

        v26(v25, a2);
      }

      return;
    }
  }

  if (((((((v17 + (v16 & ~v13)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFE0)
  {
    v23 = v22;
  }

  else
  {
    v23 = 1;
  }

  if (((((((v17 + (v16 & ~v13)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) != 0xFFFFFFE0)
  {
    v24 = ~v15 + a2;
    bzero(a1, v18);
    *a1 = v24;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      *(a1 + v18) = v23;
    }

    else
    {
      *(a1 + v18) = v23;
    }
  }

  else if (v21)
  {
    *(a1 + v18) = v23;
  }
}

unint64_t sub_1E683E4B8()
{
  result = qword_1ED0998A0;
  if (!qword_1ED0998A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099888);
    sub_1E683E570();
    sub_1E673F530(&qword_1ED097208, &qword_1ED0971F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0998A0);
  }

  return result;
}

unint64_t sub_1E683E570()
{
  result = qword_1ED0998A8;
  if (!qword_1ED0998A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099898);
    sub_1E673F530(&qword_1ED0998B0, &qword_1ED0998B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0998A8);
  }

  return result;
}

uint64_t sub_1E683E64C(uint64_t a1)
{
  v2 = sub_1E68B2650();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1E68B1F90();
}

uint64_t CanvasSectionHeader.init(title:subtitle:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1E68B1820();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for CanvasSectionHeader();
  v10 = *(v9 + 52);
  v11 = sub_1E68B3750();
  (*(*(v11 - 8) + 32))(a4 + v10, a2, v11);
  v12 = *(v9 + 56);
  v13 = sub_1E68B3750();
  return (*(*(v13 - 8) + 32))(a4 + v12, a3, v13);
}

uint64_t CanvasSectionHeader.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E68B1820();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CanvasSectionHeader.subtitle.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_1E68B3750();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t CanvasSectionHeader.action.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = sub_1E68B3750();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1E683E9A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E683EAB4(char a1)
{
  if (!a1)
  {
    return 0x656C746974;
  }

  if (a1 == 1)
  {
    return 0x656C746974627573;
  }

  return 0x6E6F69746361;
}

uint64_t sub_1E683EB3C()
{
  sub_1E68B3B70();
  sub_1E6739CF4(v2, *v0);
  return sub_1E68B3BB0();
}

uint64_t sub_1E683EB98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E683E9A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E683EBCC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E67BF598();
  *a1 = result;
  return result;
}

uint64_t sub_1E683EC00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E683EC54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t CanvasSectionHeader.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v3 = a2[3];
  v5 = a2[5];
  v13 = a2[4];
  v14 = v4;
  v17 = v4;
  v18 = v3;
  v15 = v5;
  v16 = v3;
  v19 = v13;
  v20 = v5;
  type metadata accessor for CanvasSectionHeader.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_1E68B3AC0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E68B3BD0();
  LOBYTE(v17) = 0;
  sub_1E68B1820();
  sub_1E682ABCC(&qword_1EE2EDEA0);
  v10 = v21;
  sub_1E68B3AB0();
  if (!v10)
  {
    LOBYTE(v17) = 1;
    sub_1E68B3A60();
    LOBYTE(v17) = 2;
    sub_1E68B3A60();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t CanvasSectionHeader.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a6;
  v11 = sub_1E68B3750();
  v38 = *(v11 - 8);
  v39 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v42 = &v34 - v12;
  v13 = sub_1E68B3750();
  v46 = *(v13 - 8);
  v47 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v45 = &v34 - v14;
  v52 = sub_1E68B1820();
  v44 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v53 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a2;
  v56 = a3;
  v57 = a4;
  v58 = a5;
  type metadata accessor for CanvasSectionHeader.CodingKeys();
  swift_getWitnessTable();
  v16 = sub_1E68B3A20();
  v50 = *(v16 - 8);
  v51 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - v17;
  v43 = a2;
  v55 = a2;
  v56 = a3;
  v48 = a3;
  v49 = a5;
  v41 = a4;
  v57 = a4;
  v58 = a5;
  v19 = type metadata accessor for CanvasSectionHeader();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v34 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v54 = v18;
  v23 = v59;
  sub_1E68B3BC0();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v35 = v20;
  v37 = v22;
  v24 = v45;
  v36 = v19;
  v59 = a1;
  v25 = v46;
  v26 = v47;
  LOBYTE(v55) = 0;
  sub_1E682ABCC(&qword_1ED097DB8);
  v27 = v52;
  v28 = v51;
  sub_1E68B3A00();
  (*(v44 + 32))(v37, v53, v27);
  LOBYTE(v55) = 1;
  sub_1E68B39B0();
  v29 = v36;
  (*(v25 + 32))(&v37[*(v36 + 52)], v24, v26);
  LOBYTE(v55) = 2;
  v30 = v42;
  sub_1E68B39B0();
  (*(v50 + 8))(v54, v28);
  v31 = v37;
  (*(v38 + 32))(&v37[*(v29 + 56)], v30, v39);
  v32 = v35;
  (*(v35 + 16))(v40, v31, v29);
  __swift_destroy_boxed_opaque_existential_1(v59);
  return (*(v32 + 8))(v31, v29);
}

BOOL static CanvasSectionHeader.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v65 = a5;
  v66 = a6;
  v59 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v54 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E68B3750();
  v58 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v57 = &v48 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v55 = *(TupleTypeMetadata2 - 8);
  v13 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v62 = &v48 - v14;
  v63 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v56 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E68B3750();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v64 = &v48 - v18;
  v19 = swift_getTupleTypeMetadata2();
  v60 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v48 - v20;
  v22 = a2;
  if ((sub_1E68B17A0() & 1) == 0)
  {
    return 0;
  }

  v51 = v11;
  v52 = a3;
  v67 = a3;
  v68 = a4;
  v69 = v65;
  v70 = v66;
  v48 = type metadata accessor for CanvasSectionHeader();
  v23 = *(v48 + 52);
  v24 = a1;
  v25 = *(v19 + 48);
  v53 = v17;
  v26 = *(v17 + 16);
  v49 = v24;
  v26(v21, v24 + v23, v16);
  v50 = v22;
  v26(&v21[v25], v22 + v23, v16);
  v27 = v63;
  v28 = *(v63 + 48);
  if (v28(v21, 1, a4) != 1)
  {
    v26(v64, v21, v16);
    if (v28(&v21[v25], 1, a4) != 1)
    {
      v31 = v56;
      (*(v27 + 32))(v56, &v21[v25], a4);
      v32 = v64;
      v33 = sub_1E68B3190();
      v34 = *(v27 + 8);
      v34(v31, a4);
      v34(v32, a4);
      (*(v53 + 8))(v21, v16);
      v30 = v62;
      if ((v33 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

    (*(v27 + 8))(v64, a4);
LABEL_7:
    (*(v60 + 8))(v21, v19);
    return 0;
  }

  v29 = v28(&v21[v25], 1, a4);
  v30 = v62;
  if (v29 != 1)
  {
    goto LABEL_7;
  }

  (*(v53 + 8))(v21, v16);
LABEL_9:
  v35 = *(v48 + 56);
  v36 = *(TupleTypeMetadata2 + 48);
  v37 = v58;
  v38 = *(v58 + 16);
  v39 = v51;
  v38(v30, v49 + v35, v51);
  v38(&v30[v36], v50 + v35, v39);
  v40 = v59;
  v41 = *(v59 + 48);
  v42 = v52;
  if (v41(v30, 1, v52) == 1)
  {
    if (v41(&v30[v36], 1, v42) == 1)
    {
      (*(v37 + 8))(v30, v39);
      return 1;
    }

    goto LABEL_14;
  }

  v38(v57, v30, v39);
  if (v41(&v30[v36], 1, v42) == 1)
  {
    (*(v40 + 8))(v57, v42);
LABEL_14:
    (*(v55 + 8))(v30, TupleTypeMetadata2);
    return 0;
  }

  v44 = v54;
  (*(v40 + 32))(v54, &v30[v36], v42);
  v45 = v57;
  v46 = sub_1E68B3190();
  v47 = *(v40 + 8);
  v47(v44, v42);
  v47(v45, v42);
  (*(v37 + 8))(v30, v39);
  return (v46 & 1) != 0;
}

uint64_t CanvasSectionHeader.hash(into:)()
{
  sub_1E68B1820();
  sub_1E682ABCC(&qword_1EE2EDE98);
  sub_1E68B3140();
  sub_1E68B3750();
  sub_1E68B3760();
  sub_1E68B3750();
  return sub_1E68B3760();
}

uint64_t CanvasSectionHeader.hashValue.getter()
{
  sub_1E68B3B70();
  CanvasSectionHeader.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E683FD20()
{
  sub_1E68B3B70();
  CanvasSectionHeader.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E683FD90(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1E68B1820();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 24) - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v8)
  {
    v13 = *(v7 + 84);
  }

  else
  {
    v13 = v12;
  }

  v14 = *(*(a3 + 16) - 8);
  v15 = v14;
  v16 = *(v14 + 84);
  v17 = v16 - 1;
  if (!v16)
  {
    v17 = 0;
  }

  if (v17 > v13)
  {
    v13 = v17;
  }

  v18 = *(v9 + 64);
  if (!v11)
  {
    ++v18;
  }

  v19 = *(v10 + 80);
  v20 = *(v14 + 80);
  v21 = *(v14 + 64);
  if (v16)
  {
    v22 = v21;
  }

  else
  {
    v22 = v21 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v23 = *(*(v6 - 8) + 64) + v19;
  if (a2 <= v13)
  {
    goto LABEL_40;
  }

  v24 = v22 + ((v18 + v20 + (v23 & ~v19)) & ~v20);
  v25 = 8 * v24;
  if (v24 <= 3)
  {
    v27 = ((a2 - v13 + ~(-1 << v25)) >> v25) + 1;
    if (HIWORD(v27))
    {
      v26 = *(a1 + v24);
      if (!v26)
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v27 > 0xFF)
    {
      v26 = *(a1 + v24);
      if (!*(a1 + v24))
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v27 < 2)
    {
LABEL_39:
      if (v13)
      {
LABEL_40:
        if (v8 == v13)
        {
          v31 = *(v7 + 48);

          return v31(a1);
        }

        else
        {
          v33 = (a1 + v23) & ~v19;
          if (v12 == v13)
          {
            v34 = (*(v10 + 48))(v33, v11);
          }

          else
          {
            v34 = (*(v15 + 48))((v33 + v18 + v20) & ~v20, v16, *(a3 + 16), v7);
          }

          if (v34 >= 2)
          {
            return v34 - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      return 0;
    }
  }

  v26 = *(a1 + v24);
  if (!*(a1 + v24))
  {
    goto LABEL_39;
  }

LABEL_26:
  v28 = (v26 - 1) << v25;
  if (v24 > 3)
  {
    v28 = 0;
  }

  if (v24)
  {
    if (v24 <= 3)
    {
      v29 = v24;
    }

    else
    {
      v29 = 4;
    }

    if (v29 > 2)
    {
      if (v29 == 3)
      {
        v30 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v30 = *a1;
      }
    }

    else if (v29 == 1)
    {
      v30 = *a1;
    }

    else
    {
      v30 = *a1;
    }
  }

  else
  {
    v30 = 0;
  }

  return v13 + (v30 | v28) + 1;
}

void sub_1E684007C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1E68B1820();
  v9 = 0;
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  v12 = *(*(a4 + 24) - 8);
  v13 = *(v12 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 <= v11)
  {
    v15 = *(v10 + 84);
  }

  else
  {
    v15 = v14;
  }

  v16 = *(a4 + 16);
  v17 = *(v16 - 8);
  v18 = *(v17 + 84);
  v19 = *(*(v8 - 8) + 64);
  v20 = *(v12 + 80);
  v21 = *(v17 + 80);
  v22 = v18 - 1;
  if (!v18)
  {
    v22 = 0;
  }

  if (v22 <= v15)
  {
    v23 = v15;
  }

  else
  {
    v23 = v22;
  }

  if (v13)
  {
    v24 = *(*(*(a4 + 24) - 8) + 64);
  }

  else
  {
    v24 = *(*(*(a4 + 24) - 8) + 64) + 1;
  }

  if (v18)
  {
    v25 = *(v17 + 64);
  }

  else
  {
    v25 = *(v17 + 64) + 1;
  }

  v26 = ((v24 + v21 + ((v19 + v20) & ~v20)) & ~v21) + v25;
  if (a3 <= v23)
  {
    goto LABEL_29;
  }

  if (v26 <= 3)
  {
    v27 = ((a3 - v23 + ~(-1 << (8 * v26))) >> (8 * v26)) + 1;
    if (HIWORD(v27))
    {
      v9 = 4;
      if (v23 >= a2)
      {
        goto LABEL_39;
      }

LABEL_30:
      v29 = ~v23 + a2;
      if (v26 >= 4)
      {
        bzero(a1, v26);
        *a1 = v29;
        v30 = 1;
        if (v9 > 1)
        {
          goto LABEL_72;
        }

        goto LABEL_69;
      }

      v30 = (v29 >> (8 * v26)) + 1;
      if (v26)
      {
        v31 = v29 & ~(-1 << (8 * v26));
        bzero(a1, v26);
        if (v26 != 3)
        {
          if (v26 == 2)
          {
            *a1 = v31;
            if (v9 > 1)
            {
LABEL_72:
              if (v9 == 2)
              {
                *&a1[v26] = v30;
              }

              else
              {
                *&a1[v26] = v30;
              }

              return;
            }
          }

          else
          {
            *a1 = v29;
            if (v9 > 1)
            {
              goto LABEL_72;
            }
          }

LABEL_69:
          if (v9)
          {
            a1[v26] = v30;
          }

          return;
        }

        *a1 = v31;
        a1[2] = BYTE2(v31);
      }

      if (v9 > 1)
      {
        goto LABEL_72;
      }

      goto LABEL_69;
    }

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
      v9 = v28;
    }

    else
    {
      v9 = 0;
    }

LABEL_29:
    if (v23 >= a2)
    {
      goto LABEL_39;
    }

    goto LABEL_30;
  }

  v9 = 1;
  if (v23 < a2)
  {
    goto LABEL_30;
  }

LABEL_39:
  if (v9 > 1)
  {
    if (v9 != 2)
    {
      *&a1[v26] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_46;
    }

    *&a1[v26] = 0;
LABEL_45:
    if (!a2)
    {
      return;
    }

    goto LABEL_46;
  }

  if (!v9)
  {
    goto LABEL_45;
  }

  a1[v26] = 0;
  if (!a2)
  {
    return;
  }

LABEL_46:
  if (v11 == v23)
  {
    v32 = *(v10 + 56);
    v33 = v8;
    v34 = a1;
    v35 = a2;
    v36 = v11;

LABEL_49:
    v32(v34, v35, v36, v33);
    return;
  }

  v37 = &a1[v19 + v20] & ~v20;
  if (v14 == v23)
  {
    v38 = *(v12 + 56);

    v38(v37, (a2 + 1));
  }

  else
  {
    v39 = (v37 + v24 + v21) & ~v21;
    if (v22 >= a2)
    {
      v32 = *(v17 + 56);
      v35 = (a2 + 1);
      v34 = ((v37 + v24 + v21) & ~v21);
      v36 = v18;
      v33 = v16;

      goto LABEL_49;
    }

    if (v25 <= 3)
    {
      v40 = ~(-1 << (8 * v25));
    }

    else
    {
      v40 = -1;
    }

    if (v25)
    {
      v41 = v40 & (~v22 + a2);
      if (v25 <= 3)
      {
        v42 = v25;
      }

      else
      {
        v42 = 4;
      }

      bzero(((v37 + v24 + v21) & ~v21), v25);
      if (v42 > 2)
      {
        if (v42 == 3)
        {
          *v39 = v41;
          *(v39 + 2) = BYTE2(v41);
        }

        else
        {
          *v39 = v41;
        }
      }

      else if (v42 == 1)
      {
        *v39 = v41;
      }

      else
      {
        *v39 = v41;
      }
    }
  }
}

uint64_t dispatch thunk of CanvasItemPlaceholderFetching.fetchPlaceholders(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 120) + **(a3 + 120));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E67825C0;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CanvasItemPlaceholderFetching.invalidateAllPlaceholders()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 128) + **(a2 + 128));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E6782994;

  return v7(a1, a2);
}

uint64_t dispatch thunk of CanvasItemPlaceholderFetching.invalidatePlaceholders(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 136) + **(a3 + 136));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E6782994;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CanvasItemPlaceholderFetching.transformResolvedItems<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 144) + **(a6 + 144));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1E6782994;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1E6840A10(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1E68B3670();
  if (!v19)
  {
    return sub_1E68B3350();
  }

  v41 = v19;
  v45 = sub_1E68B38E0();
  v32 = sub_1E68B38F0();
  sub_1E68B38C0();
  result = sub_1E68B3660();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1E68B36F0();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1E68B38D0();
      result = sub_1E68B36A0();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E6840E30()
{
  sub_1E677AFF0(v0 + 128, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 128))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 128);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1E6840EC0()
{
  sub_1E6840E30();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E6840F2C(uint64_t a1)
{
  v2[40] = a1;
  v2[41] = v1;
  v2[42] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1E6840F74, v1, 0);
}

uint64_t sub_1E6840F74()
{
  v1 = v0[41];
  v2 = v1[19];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v7 = (*(v3 + 144) + **(v3 + 144));
  v4 = swift_task_alloc();
  v0[43] = v4;
  *v4 = v0;
  v4[1] = sub_1E68410A4;
  v5 = v0[40];

  return v7(v5, v2, v3);
}

uint64_t sub_1E68410A4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 352) = a1;
  *(v4 + 360) = v1;

  v5 = *(v3 + 328);
  if (v1)
  {
    v6 = sub_1E684228C;
  }

  else
  {
    v6 = sub_1E68411D8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1E68411D8()
{
  v19 = v0;
  if (qword_1EE2EAA00 != -1)
  {
    swift_once();
  }

  v1 = sub_1E68B1AE0();
  *(v0 + 368) = __swift_project_value_buffer(v1, qword_1EE2F8440);
  swift_bridgeObjectRetain_n();

  v2 = sub_1E68B1AC0();
  v3 = sub_1E68B3740();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 336);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136446466;
    v7 = sub_1E68436A8();
    v9 = v8;

    v10 = sub_1E683B478(v7, v9, &v18);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2048;
    v11 = *(v4 + 168);
    v12 = *(v4 + 152);
    *(v0 + 192) = *(v4 + 104);
    *(v0 + 200) = v12;
    *(v0 + 216) = v11;
    type metadata accessor for CanvasItemPlaceholder();
    swift_getWitnessTable();
    v13 = sub_1E68B35B0();

    *(v5 + 14) = v13;

    _os_log_impl(&dword_1E6725000, v2, v3, "%{public}s fetching %ld", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1E6952A70](v6, -1, -1);
    MEMORY[0x1E6952A70](v5, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v17 = (*(*(v0 + 328) + 112) + **(*(v0 + 328) + 112));
  v14 = swift_task_alloc();
  *(v0 + 376) = v14;
  *v14 = v0;
  v14[1] = sub_1E68414C8;
  v15 = *(v0 + 352);

  return v17(v15);
}

uint64_t sub_1E68414C8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 384) = a1;
  *(v4 + 392) = v1;

  v5 = *(v3 + 328);
  if (v1)
  {
    v6 = sub_1E68423BC;
  }

  else
  {
    v6 = sub_1E68415FC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1E68415FC()
{
  v58 = v0;
  v1 = *(v0 + 392);
  v52 = *(v0 + 384);
  v2 = *(v0 + 336);
  *(v0 + 264) = *(v0 + 320);
  v3 = swift_task_alloc();
  v4 = v2[10];
  *(v0 + 400) = v4;
  v3[2] = v4;
  v5 = v2[11];
  *(v0 + 408) = v5;
  v3[3] = v5;
  v50 = v2[12];
  *(v0 + 416) = v50;
  v3[4] = v50;
  v6 = v2[13];
  *(v0 + 424) = v6;
  v3[5] = v6;
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v55 = v7;
  v48 = v2[14];
  *(v0 + 432) = v48;
  v3[6] = v48;
  v46 = v2[15];
  *(v0 + 440) = v46;
  v3[7] = v46;
  v43 = v2[16];
  *(v0 + 448) = v43;
  v3[8] = v43;
  v42 = v2[17];
  *(v0 + 456) = v42;
  v3[9] = v42;
  v45 = v2[18];
  *(v0 + 464) = v45;
  v3[10] = v45;
  v8 = v2[19];
  *(v0 + 472) = v8;
  v3[11] = v8;
  v9 = v8;
  v40 = v8;
  v10 = v2[20];
  *(v0 + 480) = v10;
  v3[12] = v10;
  v39 = v10;
  v11 = v2[21];
  *(v0 + 488) = v11;
  v3[13] = v11;
  v44 = v2[22];
  *(v0 + 496) = v44;
  v3[14] = v44;
  v41 = v2[23];
  *(v0 + 504) = v41;
  v3[15] = v41;
  *(v0 + 160) = v6;
  *(v0 + 168) = v9;
  *(v0 + 176) = v10;
  *(v0 + 184) = v11;
  *(v0 + 512) = type metadata accessor for CanvasItemPlaceholder();
  *(v0 + 520) = swift_getWitnessTable();
  v12 = sub_1E68B3630();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v16 = sub_1E6840A10(sub_1E684391C, v3, v12, TupleTypeMetadata2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v15);

  *(v0 + 272) = v16;
  sub_1E68B33B0();
  swift_getWitnessTable();
  v17 = sub_1E68B3040();
  *(v0 + 16) = v55;
  *&v18 = v50;
  *(&v18 + 1) = v6;
  v19 = v18;
  v38 = v18;
  *&v18 = v48;
  *(&v18 + 1) = v46;
  *&v20 = v43;
  *(&v20 + 1) = v42;
  v47 = v20;
  *(v0 + 528) = v17;
  *(v0 + 288) = v52;
  *&v21 = v45;
  *(&v21 + 1) = v40;
  v49 = v21;
  v51 = v18;
  *&v22 = v39;
  *(&v22 + 1) = v11;
  v53 = v22;
  *(v0 + 32) = v19;
  *(v0 + 48) = v18;
  *(v0 + 80) = v21;
  *(v0 + 96) = v22;
  *(v0 + 64) = v20;
  *(v0 + 112) = v44;
  *(v0 + 120) = v41;
  type metadata accessor for CanvasItemDescriptor();
  *(v0 + 296) = sub_1E68B3010();
  v23 = swift_task_alloc();
  *(v23 + 16) = v55;
  *(v23 + 32) = v38;
  *(v23 + 48) = v51;
  *(v23 + 64) = v47;
  *(v23 + 80) = v49;
  *(v23 + 96) = v53;
  *(v23 + 112) = v44;
  *(v23 + 120) = v41;
  *(v23 + 128) = v17;
  swift_getWitnessTable();
  *(v0 + 536) = sub_1E68B3630();
  sub_1E68B30E0();
  *(v0 + 544) = swift_getWitnessTable();
  sub_1E68B32F0();
  *(v0 + 552) = v1;

  v24 = *(v0 + 280);
  *(v0 + 560) = v24;
  swift_bridgeObjectRetain_n();

  v25 = sub_1E68B1AC0();
  v26 = sub_1E68B3740();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v57[0] = v54;
    *v27 = 136446466;
    v28 = sub_1E68436A8();
    v30 = v29;

    v31 = sub_1E683B478(v28, v30, v57);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2048;
    v32 = sub_1E68B3060();

    *(v27 + 14) = v32;

    _os_log_impl(&dword_1E6725000, v25, v26, "%{public}s registering %ld resolved items(s)", v27, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v54);
    MEMORY[0x1E6952A70](v54, -1, -1);
    MEMORY[0x1E6952A70](v27, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v33 = *(v0 + 328);
  v34 = v33[19];
  v35 = v33[20];
  __swift_project_boxed_opaque_existential_1(v33 + 16, v34);
  v56 = (*(v35 + 152) + **(v35 + 152));
  v36 = swift_task_alloc();
  *(v0 + 568) = v36;
  *v36 = v0;
  v36[1] = sub_1E6841C3C;

  return v56(v24, v34, v35);
}

uint64_t sub_1E6841C3C()
{
  v1 = *(*v0 + 328);

  return MEMORY[0x1EEE6DFA0](sub_1E6841D68, v1, 0);
}

uint64_t sub_1E6841D68()
{
  v36 = v0;
  v1 = *(v0 + 528);
  v2 = *(v0 + 520);
  v3 = *(v0 + 512);
  v33 = *(v0 + 352);
  *(v0 + 304) = *(v0 + 384);
  v4 = swift_task_alloc();
  v5 = *(v0 + 416);
  v6 = *(v0 + 432);
  v7 = *(v0 + 448);
  v8 = *(v0 + 464);
  v9 = *(v0 + 480);
  v10 = *(v0 + 496);
  *(v4 + 16) = *(v0 + 400);
  *(v4 + 32) = v5;
  *(v4 + 48) = v6;
  *(v4 + 64) = v7;
  *(v4 + 80) = v8;
  *(v4 + 96) = v9;
  *(v4 + 112) = v10;
  *(v4 + 128) = v1;
  v11 = sub_1E68B32E0();

  *(v0 + 312) = v11;
  v12 = sub_1E68B33B0();
  WitnessTable = swift_getWitnessTable();
  v14 = MEMORY[0x1E6951DC0](v0 + 312, v33, v3, v12, v2, WitnessTable);
  *(v0 + 576) = v14;

  if (sub_1E68B35B0() >= 1)
  {
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v15 = sub_1E68B1AC0();
    v16 = sub_1E68B3720();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v35[0] = v18;
      *v17 = 136446722;
      v19 = sub_1E68436A8();
      v21 = v20;

      v22 = sub_1E683B478(v19, v21, v35);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2048;
      v23 = sub_1E68B35B0();

      *(v17 + 14) = v23;

      *(v17 + 22) = 2080;
      v24 = sub_1E68B3550();
      v26 = v25;
      swift_bridgeObjectRelease_n();
      v27 = sub_1E683B478(v24, v26, v35);

      *(v17 + 24) = v27;
      _os_log_impl(&dword_1E6725000, v15, v16, "%{public}s Unexpected missing placeholders (%ld) in fetchItemsForPlaceholders response: %s", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E6952A70](v18, -1, -1);
      MEMORY[0x1E6952A70](v17, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }
  }

  v28 = *(v0 + 328);
  v29 = v28[19];
  v30 = v28[20];
  __swift_project_boxed_opaque_existential_1(v28 + 16, v29);
  v34 = (*(v30 + 136) + **(v30 + 136));
  v31 = swift_task_alloc();
  *(v0 + 584) = v31;
  *v31 = v0;
  v31[1] = sub_1E6842178;

  return v34(v14, v29, v30);
}

uint64_t sub_1E6842178()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E684228C()
{
  v1 = *(v0 + 360);
  *(v0 + 256) = v1;
  MEMORY[0x1E6952820](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097AC0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 224);
    v3 = *(v0 + 232);
    v4 = *(v0 + 240);
    if (*(v0 + 248) != 1)
    {
      if (v2 >= 1)
      {
        MEMORY[0x1E6952810](v1);
        MEMORY[0x1E6952810](*(v0 + 256));
        v5 = *(v0 + 8);
        goto LABEL_7;
      }

      sub_1E68438C8();
      swift_allocError();
      *v6 = v2;
      *(v6 + 8) = v3;
      *(v6 + 16) = v4;
      *(v6 + 24) = 0;
      swift_willThrow();
      MEMORY[0x1E6952810](v1);
    }
  }

  MEMORY[0x1E6952810](*(v0 + 256));
  v5 = *(v0 + 8);
LABEL_7:

  return v5();
}

uint64_t sub_1E68423BC()
{
  v21 = v0;
  swift_bridgeObjectRetain_n();

  v1 = sub_1E68B1AC0();
  v2 = sub_1E68B3720();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 336);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v20 = v5;
    *v4 = 136446466;
    v6 = sub_1E68436A8();
    v8 = v7;

    v9 = sub_1E683B478(v6, v8, &v20);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2048;
    v10 = *(v3 + 168);
    v11 = *(v3 + 152);
    *(v0 + 128) = *(v3 + 104);
    *(v0 + 136) = v11;
    *(v0 + 152) = v10;
    type metadata accessor for CanvasItemPlaceholder();
    swift_getWitnessTable();
    v12 = sub_1E68B35B0();

    *(v4 + 14) = v12;

    _os_log_impl(&dword_1E6725000, v1, v2, "%{public}s Failed to fetch placeholders placeholders (%ld)", v4, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1E6952A70](v5, -1, -1);
    MEMORY[0x1E6952A70](v4, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v13 = *(v0 + 328);
  v14 = v13[19];
  v15 = v13[20];
  __swift_project_boxed_opaque_existential_1(v13 + 16, v14);
  v19 = (*(v15 + 160) + **(v15 + 160));
  v16 = swift_task_alloc();
  *(v0 + 592) = v16;
  *v16 = v0;
  v16[1] = sub_1E6842690;
  v17 = *(v0 + 352);

  return v19(v17, v14, v15);
}

uint64_t sub_1E6842690()
{
  v1 = *(*v0 + 328);

  return MEMORY[0x1EEE6DFA0](sub_1E68427BC, v1, 0);
}

uint64_t sub_1E68427BC()
{
  swift_willThrow();
  v1 = *(v0 + 392);
  *(v0 + 256) = v1;
  MEMORY[0x1E6952820](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097AC0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 224);
    v3 = *(v0 + 232);
    v4 = *(v0 + 240);
    if (*(v0 + 248) != 1)
    {
      if (v2 >= 1)
      {
        MEMORY[0x1E6952810](v1);
        MEMORY[0x1E6952810](*(v0 + 256));
        v5 = *(v0 + 8);
        goto LABEL_7;
      }

      sub_1E68438C8();
      swift_allocError();
      *v6 = v2;
      *(v6 + 8) = v3;
      *(v6 + 16) = v4;
      *(v6 + 24) = 0;
      swift_willThrow();
      MEMORY[0x1E6952810](v1);
    }
  }

  MEMORY[0x1E6952810](*(v0 + 256));
  v5 = *(v0 + 8);
LABEL_7:

  return v5();
}

uint64_t sub_1E68428F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CanvasItemPlaceholder();
  v7 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(a2 - 8) + 16))(a3, a1, a2);
  return (*(*(v6 - 8) + 16))(a3 + v7, a1, v6);
}

uint64_t sub_1E68429E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v38 = a3;
  v52 = a2;
  v37 = a1;
  v43 = a8;
  v44 = a9;
  v45 = a10;
  v46 = a11;
  v47 = a12;
  v48 = a13;
  v49 = a14;
  v50 = a15;
  v51 = a16;
  v36 = type metadata accessor for CanvasItemDescriptor();
  v17 = sub_1E68B3750();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v35 = &v35 - v18;
  v39 = a7;
  v40 = a12;
  v41 = a13;
  v42 = a14;
  v19 = type metadata accessor for CanvasItemPlaceholder();
  v20 = sub_1E68B3750();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v35 - v22;
  v24 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v35 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v35 - v29;
  sub_1E68B3110();
  if ((*(v24 + 48))(v23, 1, v19) == 1)
  {
    return (*(v21 + 8))(v23, v20);
  }

  (*(v24 + 32))(v30, v23, v19);
  (*(v24 + 16))(v27, v30, v19);
  v33 = v35;
  v32 = v36;
  v34 = *(v36 - 8);
  (*(v34 + 16))(v35, v52, v36);
  (*(v34 + 56))(v33, 0, 1, v32);
  swift_getWitnessTable();
  sub_1E68B30E0();
  sub_1E68B3120();
  return (*(v24 + 8))(v30, v19);
}

uint64_t sub_1E6842D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E6842D74, v4, 0);
}

uint64_t sub_1E6842D74()
{
  v1 = v0[6];
  v2 = v1[19];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v10 = (*(v3 + 184) + **(v3 + 184));
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1E6842EA8;
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];
  v8 = v0[3];

  return v10(v7, v8, v5, v6, v2, v3);
}

uint64_t sub_1E6842EA8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E6842FBC()
{
  v1 = *(v0 + 16);
  v2 = v1[19];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v6 = (*(v3 + 168) + **(v3 + 168));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_1E68430E4;

  return v6(v2, v3);
}

uint64_t sub_1E68430E4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E68431DC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1E68431FC, v1, 0);
}

uint64_t sub_1E68431FC()
{
  v1 = v0[3];
  v2 = v1[19];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v7 = (*(v3 + 176) + **(v3 + 176));
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1E684332C;
  v5 = v0[2];

  return v7(v5, v2, v3);
}

uint64_t sub_1E684332C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E6843424(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E67825C0;

  return sub_1E6840F2C(a1);
}

uint64_t sub_1E68434BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E6782994;

  return sub_1E6842F9C();
}

uint64_t sub_1E684354C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E6782994;

  return sub_1E68431DC(a1);
}

uint64_t sub_1E68435E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1E6782994;

  return sub_1E6842D4C(a1, a2, a3, a4);
}

uint64_t sub_1E68436A8()
{
  sub_1E68B3820();
  MEMORY[0x1E6951A70](0xD00000000000001ELL, 0x80000001E68E2F80);
  v0 = sub_1E68B3C10();
  MEMORY[0x1E6951A70](v0);

  MEMORY[0x1E6951A70](8236, 0xE200000000000000);
  v1 = sub_1E68B3C10();
  MEMORY[0x1E6951A70](v1);

  MEMORY[0x1E6951A70](8236, 0xE200000000000000);
  v2 = sub_1E68B3C10();
  MEMORY[0x1E6951A70](v2);

  MEMORY[0x1E6951A70](8236, 0xE200000000000000);
  v3 = sub_1E68B3C10();
  MEMORY[0x1E6951A70](v3);

  MEMORY[0x1E6951A70](8236, 0xE200000000000000);
  v4 = sub_1E68B3C10();
  MEMORY[0x1E6951A70](v4);

  MEMORY[0x1E6951A70](32, 0xE100000000000000);
  v5 = sub_1E68B31B0();
  MEMORY[0x1E6951A70](v5);

  MEMORY[0x1E6951A70](41, 0xE100000000000000);
  return 0;
}

unint64_t sub_1E68438C8()
{
  result = qword_1EE2ECC08[0];
  if (!qword_1EE2ECC08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2ECC08);
  }

  return result;
}

void *sub_1E6843A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_defaultActor_initialize();
  sub_1E677AFF0(a1, (v4 + 16));
  v4[14] = a2;
  v4[15] = a3;
  v8 = v4[19];
  v9 = v4[20];
  __swift_project_boxed_opaque_existential_1(v4 + 16, v8);
  v10 = *(v9 + 120);

  v10(v8, v9);
  return v4;
}

void *sub_1E6843ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CanvasItemPlaceholderFetcher();
  swift_allocObject();
  return sub_1E6843A40(a1, a2, a3);
}

uint64_t sub_1E6843B60()
{
  result = sub_1E68B3750();
  if (v1 <= 0x3F)
  {
    result = sub_1E68B3750();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E6843C14(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v6 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(*(*(a3 + 24) - 8) + 64);
  if (!v5)
  {
    ++v13;
  }

  v14 = *(v4 + 80);
  v15 = *(v8 + 80);
  v16 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v16;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = a2 - v12;
  if (a2 <= v12)
  {
    goto LABEL_39;
  }

  v18 = v16 + ((v13 + v15 + ((v14 + 48) & ~v14)) & ~v15);
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v21 = ((v17 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v21))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v21 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v21 < 2)
    {
LABEL_39:
      v25 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
      if ((v11 & 0x80000000) == 0)
      {
        v26 = *(v25 + 24);
        if (v26 >= 0xFFFFFFFF)
        {
          LODWORD(v26) = -1;
        }

        return (v26 + 1);
      }

      v28 = (v25 + v14 + 32) & ~v14;
      if (v6 == v12)
      {
        if (v5 < 2)
        {
          return 0;
        }

        v29 = (*(v4 + 48))(v28);
      }

      else
      {
        v29 = (*(v8 + 48))((v28 + v13 + v15) & ~v15, v9, v7);
      }

      if (v29 >= 2)
      {
        return v29 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_39;
  }

LABEL_26:
  v22 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v22 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v23 = v18;
    }

    else
    {
      v23 = 4;
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        v24 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v24 = *a1;
      }
    }

    else if (v23 == 1)
    {
      v24 = *a1;
    }

    else
    {
      v24 = *a1;
    }
  }

  else
  {
    v24 = 0;
  }

  return v12 + (v24 | v22) + 1;
}

void sub_1E6843E9C(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(a4 + 16);
  v10 = *(v9 - 8);
  if (v8)
  {
    v11 = v8 - 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v9 - 8);
  v13 = *(v10 + 84);
  v14 = *(v7 + 80);
  v15 = *(v10 + 80);
  v16 = *(v10 + 64);
  v17 = v13 - 1;
  if (!v13)
  {
    v17 = 0;
  }

  if (v11 <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v11;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  if (v8)
  {
    v20 = *(*(*(a4 + 24) - 8) + 64);
  }

  else
  {
    v20 = *(*(*(a4 + 24) - 8) + 64) + 1;
  }

  if (v13)
  {
    v21 = v16;
  }

  else
  {
    v21 = v16 + 1;
  }

  v22 = ((v20 + v15 + ((v14 + 48) & ~v14)) & ~v15) + v21;
  v23 = a3 >= v19;
  v24 = a3 - v19;
  if (v24 == 0 || !v23)
  {
LABEL_30:
    if (v19 < a2)
    {
      goto LABEL_31;
    }

    goto LABEL_40;
  }

  if (v22 > 3)
  {
    v6 = 1;
    if (v19 < a2)
    {
      goto LABEL_31;
    }

    goto LABEL_40;
  }

  v25 = ((v24 + ~(-1 << (8 * v22))) >> (8 * v22)) + 1;
  if (!HIWORD(v25))
  {
    if (v25 < 0x100)
    {
      v26 = 1;
    }

    else
    {
      v26 = 2;
    }

    if (v25 >= 2)
    {
      v6 = v26;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_30;
  }

  v6 = 4;
  if (v19 < a2)
  {
LABEL_31:
    v27 = ~v19 + a2;
    if (v22 < 4)
    {
      v28 = (v27 >> (8 * v22)) + 1;
      if (v22)
      {
        v29 = v27 & ~(-1 << (8 * v22));
        bzero(a1, v22);
        if (v22 != 3)
        {
          if (v22 == 2)
          {
            *a1 = v29;
            if (v6 > 1)
            {
LABEL_66:
              if (v6 == 2)
              {
                *(a1 + v22) = v28;
              }

              else
              {
                *(a1 + v22) = v28;
              }

              return;
            }
          }

          else
          {
            *a1 = v27;
            if (v6 > 1)
            {
              goto LABEL_66;
            }
          }

          goto LABEL_63;
        }

        *a1 = v29;
        *(a1 + 2) = BYTE2(v29);
      }

      if (v6 > 1)
      {
        goto LABEL_66;
      }
    }

    else
    {
      bzero(a1, v22);
      *a1 = v27;
      v28 = 1;
      if (v6 > 1)
      {
        goto LABEL_66;
      }
    }

LABEL_63:
    if (v6)
    {
      *(a1 + v22) = v28;
    }

    return;
  }

LABEL_40:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *(a1 + v22) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_47;
    }

    *(a1 + v22) = 0;
  }

  else if (v6)
  {
    *(a1 + v22) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_47;
  }

  if (!a2)
  {
    return;
  }

LABEL_47:
  v30 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
  if ((v18 & 0x80000000) != 0)
  {
    v31 = (v30 + v14 + 32) & ~v14;
    if (v11 == v19)
    {
      if (v8 >= 2)
      {
        v32 = *(v7 + 56);
        v33 = a2 + 1;

        v32(v31, v33);
      }
    }

    else
    {
      v34 = *(v12 + 56);
      v35 = (v31 + v20 + v15) & ~v15;
      v36 = a2 + 1;

      v34(v35, v36, v13, v9);
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    v30[2] = 0;
    v30[3] = 0;
    *v30 = a2 & 0x7FFFFFFF;
    v30[1] = 0;
  }

  else
  {
    v30[3] = a2 - 1;
  }
}

uint64_t sub_1E6844258@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  *a8 = a1;
  *(a8 + 8) = a9;
  *(a8 + 16) = a2;
  *(a8 + 24) = a3;
  *(a8 + 32) = a4 & 1;
  *(a8 + 40) = a5;
  v12 = type metadata accessor for CanvasSectionHeaderView();
  v13 = *(v12 + 60);
  v14 = sub_1E68B3750();
  (*(*(v14 - 8) + 32))(a8 + v13, a6, v14);
  v15 = *(v12 + 64);
  v16 = sub_1E68B3750();
  return (*(*(v16 - 8) + 32))(a8 + v15, a7, v16);
}

uint64_t sub_1E6844364@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  sub_1E68B2440();
  v32 = a1 + 5;
  v3 = a1[2];
  sub_1E68B1E40();
  v30 = a1[4];
  v50 = v30;
  v51 = sub_1E6848CCC();
  v33 = MEMORY[0x1E697E858];
  swift_getWitnessTable();
  sub_1E68B2C50();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0998E8);
  sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097018);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  sub_1E68B3750();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2C50();
  sub_1E68B2E20();
  v29 = a1[3];
  sub_1E68B3750();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v26[4] = sub_1E68B2CC0();
  v26[0] = sub_1E68B1E40();
  sub_1E68B3750();
  swift_getTupleTypeMetadata3();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v26[1] = sub_1E68B2CC0();
  v26[2] = sub_1E68B1E40();
  v26[3] = sub_1E68B2E20();
  v26[5] = sub_1E68B2220();
  v4 = sub_1E68B2B90();
  v27 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v26 - v5;
  v7 = sub_1E68B1E40();
  v28 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v26 - v11;
  *&v13 = v30;
  *(&v13 + 1) = *v32;
  *&v14 = v3;
  *(&v14 + 1) = v29;
  v35 = v14;
  v36 = v13;
  v37 = v31;
  WitnessTable = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  v17 = MEMORY[0x1E697EBF8];
  v48 = v16;
  v49 = MEMORY[0x1E697EBF8];
  v18 = swift_getWitnessTable();
  v46 = swift_getWitnessTable();
  v47 = v17;
  v19 = swift_getWitnessTable();
  v43 = MEMORY[0x1E6981CD0];
  v44 = v18;
  v45 = v19;
  v20 = swift_getWitnessTable();
  v41 = WitnessTable;
  v42 = v20;
  v21 = swift_getWitnessTable();
  sub_1E68B2B80();
  sub_1E68B2520();
  v40 = v21;
  v22 = swift_getWitnessTable();
  sub_1E68B2A70();
  (*(v27 + 8))(v6, v4);
  v38 = v22;
  v39 = MEMORY[0x1E697E5D8];
  v23 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v9, v7, v23);
  v24 = *(v28 + 8);
  v24(v9, v7);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v12, v7, v23);
  return (v24)(v12, v7);
}

uint64_t sub_1E68449FC@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v60 = a5;
  v64 = a6;
  sub_1E68B2440();
  sub_1E68B1E40();
  v59 = a4;
  v93 = a4;
  v94 = sub_1E6848CCC();
  swift_getWitnessTable();
  sub_1E68B2C50();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0998E8);
  sub_1E68B2220();
  v58 = a3;
  sub_1E68B3750();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v68 = sub_1E68B2CC0();
  v10 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097018);
  sub_1E68B3750();
  swift_getTupleTypeMetadata3();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v66 = sub_1E68B2CC0();
  v69 = v10;
  v67 = sub_1E68B1E40();
  v11 = sub_1E68B2E20();
  v57 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v56 = v55 - v15;
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  sub_1E68B3750();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2C50();
  sub_1E68B2E20();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v16 = sub_1E68B2CC0();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v55 - v21;
  v65 = v11;
  v63 = sub_1E68B2220();
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v61 = v55 - v23;
  if (*a1 > 6u)
  {
    v32 = sub_1E68B2E00();
    v55[1] = v55;
    MEMORY[0x1EEE9AC00](v32);
    v55[0] = &v55[-8];
    v33 = v58;
    v55[-6] = a2;
    v55[-5] = v33;
    MEMORY[0x1EEE9AC00](v34);
    v55[-6] = a2;
    v55[-5] = v35;
    WitnessTable = swift_getWitnessTable();
    v36 = MEMORY[0x1E697EBF8];
    v92 = MEMORY[0x1E697EBF8];
    v37 = swift_getWitnessTable();
    v89 = swift_getWitnessTable();
    v90 = v36;
    v38 = swift_getWitnessTable();
    v53 = v37;
    v54 = v38;
    v39 = MEMORY[0x1E6981CD0];
    v52 = MEMORY[0x1E6981CD0];
    sub_1E68B2E10();
    v86 = v39;
    v87 = v37;
    v88 = v38;
    v40 = v65;
    v41 = swift_getWitnessTable();
    v42 = v56;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v13, v40, v41);
    v43 = *(v57 + 8);
    v43(v13, v40);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v42, v40, v41);
    swift_getWitnessTable();
    v31 = v61;
    sub_1E6744DB8(v13, v16, v40);
    v43(v13, v40);
    v43(v42, v40);
  }

  else
  {
    v24 = sub_1E68B21D0();
    MEMORY[0x1EEE9AC00](v24);
    v25 = v58;
    v55[-6] = a2;
    v55[-5] = v25;
    v52 = v59;
    v53 = v60;
    v54 = a1;
    sub_1E68B2CB0();
    v26 = swift_getWitnessTable();
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v19, v16, v26);
    v27 = *(v17 + 8);
    v27(v19, v16);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v22, v16, v26);
    v75 = swift_getWitnessTable();
    v28 = MEMORY[0x1E697EBF8];
    v76 = MEMORY[0x1E697EBF8];
    v29 = swift_getWitnessTable();
    v73 = swift_getWitnessTable();
    v74 = v28;
    v30 = swift_getWitnessTable();
    v70 = MEMORY[0x1E6981CD0];
    v71 = v29;
    v72 = v30;
    swift_getWitnessTable();
    v31 = v61;
    sub_1E6744CC0(v19, v16);
    v27(v19, v16);
    v27(v22, v16);
  }

  v44 = swift_getWitnessTable();
  v84 = swift_getWitnessTable();
  v45 = MEMORY[0x1E697EBF8];
  v85 = MEMORY[0x1E697EBF8];
  v46 = swift_getWitnessTable();
  v82 = swift_getWitnessTable();
  v83 = v45;
  v47 = swift_getWitnessTable();
  v79 = MEMORY[0x1E6981CD0];
  v80 = v46;
  v81 = v47;
  v48 = swift_getWitnessTable();
  v77 = v44;
  v78 = v48;
  v49 = v63;
  v50 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v31, v49, v50);
  return (*(v62 + 8))(v31, v49);
}

uint64_t sub_1E684545C@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, void (*a4)(void, void, void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v84 = a5;
  v78 = a6;
  v77 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v65 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v63 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v63 = &v63 - v14;
  v80 = sub_1E68B3750();
  v82 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v73 = &v63 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v83 = &v63 - v19;
  sub_1E68B2440();
  sub_1E68B1E40();
  v20 = sub_1E6848CCC();
  v108 = a4;
  v109 = v20;
  swift_getWitnessTable();
  sub_1E68B2C50();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0998E8);
  v76 = sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097018);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  sub_1E68B3750();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2C50();
  v21 = sub_1E68B2E20();
  v81 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v63 - v25;
  sub_1E68B2E00();
  v27 = a2;
  v66 = a3;
  v67 = a2;
  v90 = a2;
  v91 = a3;
  v68 = a4;
  v69 = a1;
  v28 = v84;
  v92 = a4;
  v93 = v84;
  v94 = a1;
  v85 = v27;
  v86 = a3;
  v87 = a4;
  v88 = v84;
  v89 = a1;
  WitnessTable = swift_getWitnessTable();
  v30 = sub_1E6848DCC();
  v106 = WitnessTable;
  v107 = v30;
  v31 = swift_getWitnessTable();
  v62 = swift_getWitnessTable();
  v32 = MEMORY[0x1E6981CD0];
  sub_1E68B2E10();
  v103 = v32;
  v104 = v31;
  v105 = v62;
  v33 = swift_getWitnessTable();
  v74 = v26;
  v70 = v33;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v23, v21, v33);
  v34 = *(v81 + 8);
  v75 = v23;
  v76 = v21;
  v71 = v34;
  v72 = v81 + 8;
  v34(v23, v21);
  v35 = v66;
  v99 = v67;
  v100 = v66;
  v101 = v68;
  v102 = v28;
  v36 = &v69[*(type metadata accessor for CanvasSectionHeaderView() + 60)];
  v37 = v73;
  v38 = v80;
  v69 = *(v82 + 16);
  (v69)(v73, v36);
  v39 = v77;
  v40 = v37;
  v41 = v35;
  if ((*(v77 + 48))(v37, 1, v35) == 1)
  {
    v42 = *(v82 + 8);
    v42(v37, v38);
    v43 = v39[7];
    v44 = v79;
    v43(v79, 1, 1, v41);
    sub_1E67FDFA4(v44, v83);
    v42(v44, v38);
  }

  else
  {
    v45 = v39;
    v68 = v39[4];
    v46 = v63;
    v47 = v40;
    v48 = v41;
    v68(v63, v47, v41);
    v49 = v64;
    v50 = v41;
    v51 = v84;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v46, v50, v84);
    v52 = v39[1];
    v52(v46, v48);
    v53 = v65;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v49, v48, v51);
    v52(v49, v48);
    v54 = v48;
    v44 = v79;
    v55 = v80;
    v68(v79, v53, v54);
    (v45[7])(v44, 0, 1, v54);
    sub_1E67FDFA4(v44, v83);
    v42 = *(v82 + 8);
    v38 = v55;
    v42(v44, v55);
  }

  v56 = v74;
  v57 = v75;
  v58 = v76;
  (*(v81 + 16))(v75, v74, v76);
  v99 = v57;
  v59 = v83;
  (v69)(v44, v83, v38);
  v100 = v44;
  v98[0] = v58;
  v98[1] = v38;
  v95 = v84;
  v96 = v70;
  v97 = swift_getWitnessTable();
  sub_1E6848F14(&v99, 2uLL, v98);
  v42(v59, v38);
  v60 = v71;
  v71(v56, v58);
  v42(v44, v38);
  return v60(v57, v58);
}

uint64_t sub_1E6845C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v54 = a6;
  v55 = a5;
  v47 = a3;
  v48 = a1;
  sub_1E68B2440();
  v8 = sub_1E68B1E40();
  v62 = a4;
  v63 = sub_1E6848CCC();
  WitnessTable = swift_getWitnessTable();
  v44 = v8;
  v9 = sub_1E68B2C50();
  v46 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v41 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0998E8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41 - v15;
  v17 = sub_1E68B3750();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v41 - v19;
  v21 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v42 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v14;
  v24 = v47;
  v25 = sub_1E68B2220();
  v52 = *(v25 - 8);
  v53 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v49 = &v41 - v26;
  v58 = a2;
  v59 = v24;
  v51 = a4;
  v60 = a4;
  v27 = v48;
  v61 = v55;
  v28 = type metadata accessor for CanvasSectionHeaderView();
  (*(v18 + 16))(v20, v27 + *(v28 + 64), v17);
  if ((*(v21 + 48))(v20, 1, a2) == 1)
  {
    (*(v18 + 8))(v20, v17);
    *v16 = sub_1E68B2140();
    *(v16 + 1) = 0;
    v16[16] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0998F0);
    sub_1E6847D54(v27);
    swift_getWitnessTable();
    sub_1E6848DCC();
    v29 = v49;
    sub_1E6744DB8(v16, v9, v50);
    sub_1E6744A10(v16, &qword_1ED0998E8);
  }

  else
  {
    v30 = v42;
    (*(v21 + 32))(v42, v20, a2);
    v31 = sub_1E68B2140();
    MEMORY[0x1EEE9AC00](v31);
    *(&v41 - 6) = a2;
    *(&v41 - 5) = v24;
    v32 = v55;
    *(&v41 - 4) = v51;
    *(&v41 - 3) = v32;
    *(&v41 - 2) = v30;
    sub_1E68B2C40();
    v33 = swift_getWitnessTable();
    v34 = v45;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v11, v9, v33);
    v35 = *(v46 + 8);
    v35(v11, v9);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v34, v9, v33);
    sub_1E6848DCC();
    v29 = v49;
    sub_1E6744CC0(v11, v9);
    v35(v11, v9);
    v35(v34, v9);
    (*(v21 + 8))(v30, a2);
  }

  v36 = swift_getWitnessTable();
  v37 = sub_1E6848DCC();
  v56 = v36;
  v57 = v37;
  v38 = v53;
  v39 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v29, v38, v39);
  return (*(v52 + 8))(v29, v38);
}

uint64_t sub_1E684624C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v20[0] = a5;
  v20[1] = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097018);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  sub_1E68B3750();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v10 = sub_1E68B2C50();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v20 - v15;
  sub_1E68B2140();
  v20[4] = a2;
  v20[5] = a3;
  v20[6] = a4;
  v20[7] = v20[0];
  v20[8] = a1;
  sub_1E68B2C40();
  WitnessTable = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v13, v10, WitnessTable);
  v18 = *(v11 + 8);
  v18(v13, v10);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v16, v10, WitnessTable);
  return (v18)(v16, v10);
}

uint64_t sub_1E6846490@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v66 = a5;
  v64 = a4;
  v65 = a3;
  v76 = a6;
  swift_getTupleTypeMetadata2();
  v8 = sub_1E68B2F00();
  v71 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v55 - v9;
  v63 = sub_1E68B3750();
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v61 = &v55 - v10;
  v60 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v11);
  v57 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v56 = &v55 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v55 = &v55 - v16;
  v75 = v8;
  v74 = sub_1E68B3750();
  v69 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v73 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v72 = &v55 - v19;
  v20 = sub_1E68B21B0();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097018);
  MEMORY[0x1EEE9AC00](v67);
  v70 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v55 - v26;
  v59 = a1;
  v29 = *(a1 + 16);
  v28 = *(a1 + 24);
  v30 = *(a1 + 32);
  v31 = *(a1 + 40);
  v84 = v29;
  v85 = v28;
  LOBYTE(v86) = v30;
  v87 = v31;
  sub_1E673F26C(v29, v28, v30);

  sub_1E68B21A0();
  v68 = v27;
  sub_1E68B2950();
  v32 = v64;
  (*(v21 + 8))(v23, v20);
  v33 = v62;
  v34 = v28;
  v35 = v63;
  v36 = v30;
  v37 = v60;
  sub_1E673F0D4(v29, v34, v36);
  v38 = v61;

  v84 = a2;
  v85 = v65;
  v86 = v32;
  v87 = v66;
  v39 = type metadata accessor for CanvasSectionHeaderView();
  (*(v33 + 16))(v38, v59 + *(v39 + 64), v35);
  if ((*(v37 + 48))(v38, 1, a2) == 1)
  {
    (*(v33 + 8))(v38, v35);
    v40 = v73;
    (*(v71 + 56))(v73, 1, 1, v75);
  }

  else
  {
    v41 = v55;
    (*(v37 + 32))(v55, v38, a2);
    v42 = v56;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v41, a2, v32);
    v77 = 0;
    v78 = 1;
    v84 = &v77;
    v43 = v57;
    (*(v37 + 16))(v57, v42, a2);
    v85 = v43;
    v82 = MEMORY[0x1E6981840];
    v83 = a2;
    v80 = MEMORY[0x1E6981838];
    v81 = v32;
    v44 = v58;
    sub_1E6848F14(&v84, 2uLL, &v82);
    v45 = *(v37 + 8);
    v45(v42, a2);
    v45(v41, a2);
    v45(v43, a2);
    v46 = v71;
    v40 = v73;
    v47 = v75;
    (*(v71 + 32))(v73, v44, v75);
    (*(v46 + 56))(v40, 0, 1, v47);
  }

  swift_getWitnessTable();
  v48 = v72;
  sub_1E67FDFA4(v40, v72);
  v49 = v69;
  v50 = *(v69 + 8);
  v51 = v74;
  v50(v40, v74);
  v52 = v68;
  v53 = v70;
  sub_1E6848E48(v68, v70);
  v84 = v53;
  (*(v49 + 16))(v40, v48, v51);
  v85 = v40;
  v82 = v67;
  v83 = v51;
  v80 = sub_1E6761364();
  WitnessTable = swift_getWitnessTable();
  v81 = swift_getWitnessTable();
  sub_1E6848F14(&v84, 2uLL, &v82);
  v50(v48, v51);
  sub_1E6744A10(v52, &qword_1ED097018);
  v50(v40, v51);
  return sub_1E6744A10(v53, &qword_1ED097018);
}

uint64_t sub_1E6846C90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25 = a1;
  v26 = a5;
  v23 = a4;
  v24 = a2;
  v28 = a6;
  sub_1E68B2440();
  sub_1E68B1E40();
  v36 = a4;
  v37 = sub_1E6848CCC();
  v27 = MEMORY[0x1E697E858];
  swift_getWitnessTable();
  sub_1E68B2C50();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0998E8);
  sub_1E68B2220();
  sub_1E68B3750();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v8 = sub_1E68B2CC0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - v10;
  v12 = sub_1E68B1E40();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v23 - v17;
  sub_1E68B21D0();
  v29 = v24;
  v30 = a3;
  v31 = v23;
  v32 = v26;
  v33 = v25;
  sub_1E68B2CB0();
  sub_1E68B2E90();
  WitnessTable = swift_getWitnessTable();
  sub_1E68B2A00();
  (*(v9 + 8))(v11, v8);
  v34 = WitnessTable;
  v35 = MEMORY[0x1E697EBF8];
  v19 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v15, v12, v19);
  v20 = *(v13 + 8);
  v20(v15, v12);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v18, v12, v19);
  return (v20)(v18, v12);
}

uint64_t sub_1E6847034@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, void (*a4)(void, void, void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v98 = a5;
  v93 = a6;
  v94 = a4;
  v96 = a1;
  v89 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v81 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v80 = &v73 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v79 = &v73 - v13;
  v92 = sub_1E68B3750();
  v95 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v91 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v83 = &v73 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v90 = &v73 - v18;
  sub_1E68B2440();
  v19 = sub_1E68B1E40();
  v20 = sub_1E6848CCC();
  v109 = a4;
  v110 = v20;
  WitnessTable = swift_getWitnessTable();
  v76 = v19;
  v75 = WitnessTable;
  v22 = sub_1E68B2C50();
  v78 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v77 = &v73 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0998E8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v73 - v28;
  v30 = sub_1E68B3750();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v73 - v32;
  v34 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v35);
  v74 = &v73 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v27;
  v87 = sub_1E68B2220();
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v85 = &v73 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v73 - v39;
  v105 = a2;
  v106 = a3;
  v97 = a3;
  v107 = v94;
  v108 = v98;
  v41 = type metadata accessor for CanvasSectionHeaderView();
  (*(v31 + 16))(v33, &v96[*(v41 + 64)], v30);
  if ((*(v34 + 48))(v33, 1, a2) == 1)
  {
    (*(v31 + 8))(v33, v30);
    *v29 = sub_1E68B2140();
    *(v29 + 1) = 0;
    v29[16] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0998F0);
    v42 = v98;
    sub_1E6847D54(v96);
    swift_getWitnessTable();
    sub_1E6848DCC();
    sub_1E6744DB8(v29, v22, v82);
    sub_1E6744A10(v29, &qword_1ED0998E8);
    v43 = v40;
  }

  else
  {
    v44 = v74;
    (*(v34 + 32))(v74, v33, a2);
    v45 = sub_1E68B2140();
    MEMORY[0x1EEE9AC00](v45);
    v46 = v97;
    *(&v73 - 6) = a2;
    *(&v73 - 5) = v46;
    v47 = v98;
    *(&v73 - 4) = v94;
    *(&v73 - 3) = v47;
    *(&v73 - 2) = v44;
    sub_1E68B2C40();
    v48 = swift_getWitnessTable();
    v94 = v41;
    v49 = v77;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v24, v22, v48);
    v43 = v40;
    v50 = *(v78 + 8);
    v50(v24, v22);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v49, v22, v48);
    sub_1E6848DCC();
    sub_1E6744CC0(v24, v22);
    v50(v24, v22);
    v51 = v49;
    v41 = v94;
    v50(v51, v22);
    (*(v34 + 8))(v44, a2);
    v42 = v98;
  }

  v88 = v22;
  v84 = v43;
  v52 = &v96[*(v41 + 60)];
  v53 = v83;
  v54 = v92;
  v96 = *(v95 + 16);
  (v96)(v83, v52, v92);
  v55 = v89;
  if ((*(v89 + 48))(v53, 1, v97) == 1)
  {
    v56 = *(v95 + 8);
    v56(v53, v54);
    v57 = v91;
    (*(v55 + 56))(v91, 1, 1, v97);
    v58 = v90;
    sub_1E67FDFA4(v57, v90);
  }

  else
  {
    v94 = *(v55 + 32);
    v59 = v79;
    v60 = v97;
    v94(v79, v53, v97);
    v61 = v80;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v59, v60, v42);
    v62 = v42;
    v63 = *(v55 + 8);
    v63(v59, v60);
    v64 = v81;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v61, v60, v62);
    v63(v61, v60);
    v57 = v91;
    v94(v91, v64, v60);
    (*(v55 + 56))(v57, 0, 1, v60);
    v58 = v90;
    sub_1E67FDFA4(v57, v90);
    v56 = *(v95 + 8);
  }

  v56(v57, v54);
  v65 = v86;
  v66 = v85;
  v67 = v84;
  v68 = v87;
  (*(v86 + 16))(v85, v84, v87);
  v105 = v66;
  (v96)(v57, v58, v54);
  v106 = v57;
  v104[0] = v68;
  v104[1] = v54;
  v69 = swift_getWitnessTable();
  v70 = sub_1E6848DCC();
  v100 = v69;
  v101 = v70;
  v102 = swift_getWitnessTable();
  v99 = v98;
  v103 = swift_getWitnessTable();
  sub_1E6848F14(&v105, 2uLL, v104);
  v56(v58, v54);
  v71 = *(v65 + 8);
  v71(v67, v68);
  v56(v57, v54);
  return (v71)(v66, v68);
}

uint64_t sub_1E6847B2C@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v3 = sub_1E68B21B0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E68B2440();
  v7 = sub_1E68B1E40();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v18 - v12;
  sub_1E68B21A0();
  sub_1E68B2950();
  (*(v4 + 8))(v6, v3);
  v14 = sub_1E6848CCC();
  v18[2] = a1;
  v18[3] = v14;
  WitnessTable = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v10, v7, WitnessTable);
  v16 = *(v8 + 8);
  v16(v10, v7);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v13, v7, WitnessTable);
  return (v16)(v13, v7);
}

uint64_t sub_1E6847D54(uint64_t a1)
{
  v2 = sub_1E68B21B0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11[0] = v6;
  v11[1] = v7;
  v12 = v8;
  v13 = v9;
  sub_1E673F26C(v6, v7, v8);

  sub_1E68B21A0();
  sub_1E68B2950();
  (*(v3 + 8))(v5, v2);
  sub_1E673F0D4(v6, v7, v8);
}

uint64_t sub_1E6847EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25 = a4;
  v26 = a5;
  v23 = a3;
  v24 = a1;
  v27 = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097018);
  sub_1E68B3750();
  sub_1E68B3750();
  swift_getTupleTypeMetadata3();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v7 = sub_1E68B2CC0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - v9;
  v11 = sub_1E68B1E40();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - v16;
  sub_1E68B21D0();
  v28 = a2;
  v29 = v23;
  v30 = v25;
  v31 = v26;
  v32 = v24;
  sub_1E68B2CB0();
  sub_1E68B2E90();
  WitnessTable = swift_getWitnessTable();
  sub_1E68B2A00();
  (*(v8 + 8))(v10, v7);
  v33 = WitnessTable;
  v34 = MEMORY[0x1E697EBF8];
  v18 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v14, v11, v18);
  v19 = *(v12 + 8);
  v19(v14, v11);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v17, v11, v18);
  return (v19)(v17, v11);
}

uint64_t sub_1E68481F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void, void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v113 = a5;
  v115 = a4;
  v93 = a3;
  v106 = a6;
  v107 = a2;
  v102 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v92 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v91 = &v85 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v90 = &v85 - v12;
  v105 = sub_1E68B3750();
  v101 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v104 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v100 = &v85 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v103 = &v85 - v17;
  v97 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v18);
  v89 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v88 = &v85 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v87 = &v85 - v23;
  v112 = sub_1E68B3750();
  v114 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v108 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v94 = &v85 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v111 = &v85 - v28;
  v29 = sub_1E68B21B0();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v85 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097018);
  MEMORY[0x1EEE9AC00](v99);
  v110 = &v85 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v85 - v35;
  v37 = *(a1 + 16);
  v38 = *(a1 + 24);
  v39 = *(a1 + 32);
  v40 = *(a1 + 40);
  v122 = v37;
  v123 = v38;
  LOBYTE(v124) = v39;
  v125 = v40;
  sub_1E673F26C(v37, v38, v39);

  sub_1E68B21A0();
  v109 = v36;
  sub_1E68B2950();
  v41 = v29;
  v42 = v113;
  (*(v30 + 8))(v32, v41);
  v43 = v93;
  v44 = v37;
  v45 = v97;
  v46 = v38;
  v47 = v114;
  v48 = v39;
  v49 = v112;
  sub_1E673F0D4(v44, v46, v48);
  v50 = v107;

  v122 = v50;
  v123 = v43;
  v124 = v115;
  v125 = v42;
  v51 = type metadata accessor for CanvasSectionHeaderView();
  v52 = *(v51 + 60);
  v53 = *(v47 + 16);
  v98 = a1;
  v54 = v94;
  v96 = v47 + 16;
  v95 = v53;
  v53(v94, a1 + v52, v49);
  if ((*(v45 + 6))(v54, 1, v43) == 1)
  {
    v55 = *(v47 + 8);
    v55(v54, v49);
    v56 = v108;
    (*(v45 + 7))(v108, 1, 1, v43);
    sub_1E67FDFA4(v56, v111);
    v97 = v55;
    v55(v56, v49);
  }

  else
  {
    v57 = *(v45 + 4);
    v86 = v51;
    v58 = v87;
    v57(v87, v54, v43);
    v59 = v88;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v58, v43, v42);
    v60 = *(v45 + 1);
    v60(v58, v43);
    v61 = v89;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v59, v43, v42);
    v60(v59, v43);
    v50 = v107;
    v56 = v108;
    v62 = v61;
    v51 = v86;
    v57(v108, v62, v43);
    (*(v45 + 7))(v56, 0, 1, v43);
    sub_1E67FDFA4(v56, v111);
    v97 = *(v114 + 8);
    v97(v56, v49);
  }

  v63 = v101;
  v64 = *(v101 + 16);
  v65 = v98 + *(v51 + 64);
  v66 = v100;
  v67 = v105;
  v98 = v101 + 16;
  v94 = v64;
  (v64)(v100, v65, v105);
  v68 = v102;
  if ((*(v102 + 48))(v66, 1, v50) == 1)
  {
    v69 = v66;
    v70 = *(v63 + 8);
    v70(v69, v67);
    v71 = v104;
    (*(v68 + 56))(v104, 1, 1, v50);
    v72 = v103;
    sub_1E67FDFA4(v71, v103);
  }

  else
  {
    v93 = *(v68 + 32);
    v73 = v90;
    v93(v90, v66, v50);
    v74 = v91;
    v75 = v115;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v73, v50, v115);
    v76 = *(v68 + 8);
    v76(v73, v50);
    v77 = v92;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v74, v50, v75);
    v76(v74, v50);
    v71 = v104;
    v93(v104, v77, v50);
    (*(v68 + 56))(v71, 0, 1, v50);
    v72 = v103;
    v56 = v108;
    sub_1E67FDFA4(v71, v103);
    v70 = *(v63 + 8);
  }

  v70(v71, v67);
  v78 = v110;
  sub_1E6848E48(v109, v110);
  v122 = v78;
  v80 = v111;
  v79 = v112;
  v95(v56, v111, v112);
  v123 = v56;
  (v94)(v71, v72, v67);
  v124 = v71;
  v121[0] = v99;
  v121[1] = v79;
  v121[2] = v67;
  v81 = sub_1E6761364();
  v117 = v113;
  v118 = v81;
  WitnessTable = swift_getWitnessTable();
  v116 = v115;
  v120 = swift_getWitnessTable();
  sub_1E6848F14(&v122, 3uLL, v121);
  v70(v72, v67);
  v82 = v80;
  v83 = v97;
  v97(v82, v79);
  sub_1E6744A10(v109, &qword_1ED097018);
  v70(v71, v67);
  v83(v56, v79);
  return sub_1E6744A10(v110, &qword_1ED097018);
}

unint64_t sub_1E6848CCC()
{
  result = qword_1EE2EA588;
  if (!qword_1EE2EA588)
  {
    sub_1E68B2440();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA588);
  }

  return result;
}

unint64_t sub_1E6848DCC()
{
  result = qword_1EE2EA528;
  if (!qword_1EE2EA528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0998E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA528);
  }

  return result;
}

uint64_t sub_1E6848E48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097018);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6848F14(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_1E68B2F10();
}

uint64_t sub_1E68490E4@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v24 = *a2;
  v25 = *(a1 + 208);
  *(a9 + 192) = *(a1 + 192);
  *(a9 + 208) = v25;
  *(a9 + 224) = *(a1 + 224);
  *(a9 + 240) = *(a1 + 240);
  v26 = *(a1 + 144);
  *(a9 + 128) = *(a1 + 128);
  *(a9 + 144) = v26;
  v27 = *(a1 + 176);
  *(a9 + 160) = *(a1 + 160);
  *(a9 + 176) = v27;
  v28 = *(a1 + 80);
  *(a9 + 64) = *(a1 + 64);
  *(a9 + 80) = v28;
  v29 = *(a1 + 112);
  *(a9 + 96) = *(a1 + 96);
  *(a9 + 112) = v29;
  v30 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v30;
  v31 = *(a1 + 48);
  *(a9 + 32) = *(a1 + 32);
  *(a9 + 48) = v31;
  v32 = type metadata accessor for ActionCardView();
  *(a9 + v32[21]) = v24;
  (*(*(a19 - 8) + 32))(a9 + v32[17], a3, a19);
  v33 = (a9 + v32[18]);
  *v33 = a4;
  v33[1] = a5;
  v33[2] = a6;
  v33[3] = a7;
  v34 = a9 + v32[19];
  *v34 = a8;
  *(v34 + 8) = a10;
  *(v34 + 24) = a11;
  v35 = a9 + v32[20];
  *v35 = a12;
  *(v35 + 16) = a13;
  *(v35 + 24) = a14;
  (*(*(a20 - 8) + 32))(a9 + v32[22], a15, a20);
  v36 = v32[23];
  v37 = sub_1E68B3750();
  (*(*(v37 - 8) + 32))(a9 + v36, a16, v37);
  v38 = (a9 + v32[24]);
  result = swift_allocObject();
  *(result + 16) = a17;
  *(result + 24) = a18;
  *v38 = sub_1E673F5E0;
  v38[1] = result;
  return result;
}

double static ActionCardViewLayout.mirroredCard.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EE2EB380 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = unk_1EE2EB458;
  *(a1 + 192) = xmmword_1EE2EB448;
  *(a1 + 208) = v1;
  *(a1 + 224) = xmmword_1EE2EB468;
  *(a1 + 240) = qword_1EE2EB478;
  v2 = unk_1EE2EB418;
  *(a1 + 128) = xmmword_1EE2EB408;
  *(a1 + 144) = v2;
  v3 = unk_1EE2EB438;
  *(a1 + 160) = xmmword_1EE2EB428;
  *(a1 + 176) = v3;
  v4 = unk_1EE2EB3D8;
  *(a1 + 64) = xmmword_1EE2EB3C8;
  *(a1 + 80) = v4;
  v5 = unk_1EE2EB3F8;
  *(a1 + 96) = xmmword_1EE2EB3E8;
  *(a1 + 112) = v5;
  v6 = unk_1EE2EB398;
  *a1 = xmmword_1EE2EB388;
  *(a1 + 16) = v6;
  result = *&xmmword_1EE2EB3A8;
  v8 = unk_1EE2EB3B8;
  *(a1 + 32) = xmmword_1EE2EB3A8;
  *(a1 + 48) = v8;
  return result;
}

__n128 ActionCardViewLayout.titlePadding.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 56);
  v3 = *(v1 + 72);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 ActionCardViewLayout.subtitlePadding.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 88);
  v3 = *(v1 + 104);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 ActionCardViewLayout.captionPadding.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 120);
  v3 = *(v1 + 136);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 ActionCardViewLayout.primaryButtonPadding.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 152);
  v3 = *(v1 + 168);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 ActionCardViewLayout.secondaryButtonPadding.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 184);
  v3 = *(v1 + 200);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 ActionCardViewLayout.init(aspectRatio:mirroredArtworkAspectRatio:cornerRadius:mirrorHeightPercentage:platterCornerRadius:titlePadding:subtitlePadding:captionPadding:primaryButtonPadding:secondaryButtonPadding:titleLineLimit:subtitleLineLimit:captionLineLimit:)@<Q0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, double a16@<D6>, uint64_t a17)
{
  *a9 = a10;
  *(a9 + 8) = a11;
  *(a9 + 16) = a12;
  *(a9 + 24) = a13;
  *(a9 + 32) = a14;
  *(a9 + 40) = a15;
  *(a9 + 48) = a16;
  v17 = a1[1];
  *(a9 + 56) = *a1;
  *(a9 + 72) = v17;
  v18 = a2[1];
  *(a9 + 88) = *a2;
  *(a9 + 104) = v18;
  v19 = a3[1];
  *(a9 + 120) = *a3;
  *(a9 + 136) = v19;
  v20 = a4[1];
  *(a9 + 152) = *a4;
  *(a9 + 168) = v20;
  result = *a5;
  v22 = *(a5 + 16);
  *(a9 + 184) = *a5;
  *(a9 + 200) = v22;
  *(a9 + 216) = a6;
  *(a9 + 224) = a7;
  *(a9 + 232) = a8 & 1;
  *(a9 + 240) = a17;
  return result;
}

double sub_1E68494F0@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1E68B2DF0();
  v3 = sub_1E68B2DF0();
  v4 = 14.0;
  if (v2)
  {
    if (v3)
    {
      sub_1E68B1A50();
      v4 = v5;
    }

    v6 = sub_1E68B2DF0();
    v7 = 18.0;
    if ((v6 & 1) == 0)
    {
      v7 = 12.0;
    }

    v8 = xmmword_1E68C3560;
  }

  else
  {
    if (v3)
    {
      sub_1E68B1A50();
      v4 = v9;
    }

    v10 = sub_1E68B2DF0();
    v7 = 18.0;
    if ((v10 & 1) == 0)
    {
      v7 = 12.0;
    }

    v8 = xmmword_1E68C3550;
  }

  *a1 = xmmword_1E68C3570;
  *(a1 + 16) = xmmword_1E68C3580;
  *(a1 + 32) = v4;
  *(a1 + 40) = 0x3FD75C28F5C28F5CLL;
  *(a1 + 48) = v7;
  *(a1 + 56) = 0;
  *(a1 + 64) = v8;
  *(a1 + 72) = 0x4000000000000000;
  *(a1 + 80) = v8;
  *(a1 + 88) = 0;
  *(a1 + 96) = v8;
  *(a1 + 104) = 0x4014000000000000;
  *(a1 + 112) = v8;
  *(a1 + 120) = 0;
  *(a1 + 128) = v8;
  *(a1 + 144) = v8;
  *(a1 + 152) = xmmword_1E68C3590;
  *(a1 + 168) = xmmword_1E68C35A0;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *&result = 3;
  *(a1 + 216) = xmmword_1E68C35B0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 1;
  return result;
}

double static ActionCardViewLayout.fullCard.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EE2EB580 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = unk_1EE2EB658;
  *(a1 + 192) = xmmword_1EE2EB648;
  *(a1 + 208) = v1;
  *(a1 + 224) = xmmword_1EE2EB668;
  *(a1 + 240) = qword_1EE2EB678;
  v2 = unk_1EE2EB618;
  *(a1 + 128) = xmmword_1EE2EB608;
  *(a1 + 144) = v2;
  v3 = unk_1EE2EB638;
  *(a1 + 160) = xmmword_1EE2EB628;
  *(a1 + 176) = v3;
  v4 = unk_1EE2EB5D8;
  *(a1 + 64) = xmmword_1EE2EB5C8;
  *(a1 + 80) = v4;
  v5 = unk_1EE2EB5F8;
  *(a1 + 96) = xmmword_1EE2EB5E8;
  *(a1 + 112) = v5;
  v6 = unk_1EE2EB598;
  *a1 = xmmword_1EE2EB588;
  *(a1 + 16) = v6;
  result = *&xmmword_1EE2EB5A8;
  v8 = unk_1EE2EB5B8;
  *(a1 + 32) = xmmword_1EE2EB5A8;
  *(a1 + 48) = v8;
  return result;
}

double sub_1E68496DC@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1E68B2DF0();
  v3 = sub_1E68B2DF0();
  v4 = 14.0;
  if (v2)
  {
    if (v3)
    {
      sub_1E68B1A50();
      v4 = v5;
    }

    if (sub_1E68B2DF0())
    {
      v6 = 18.0;
    }

    else
    {
      v6 = 12.0;
    }

    _Q1 = xmmword_1E68C35C0;
    v8 = 20.0;
  }

  else
  {
    if (v3)
    {
      sub_1E68B1A50();
      v4 = v9;
    }

    if (sub_1E68B2DF0())
    {
      v6 = 18.0;
    }

    else
    {
      v6 = 12.0;
    }

    __asm { FMOV            V1.2D, #16.0 }

    v8 = 36.0;
  }

  *a1 = xmmword_1E68C3570;
  *(a1 + 16) = xmmword_1E68C3580;
  *(a1 + 32) = v4;
  *(a1 + 40) = 0x3FD75C28F5C28F5CLL;
  *(a1 + 48) = v6;
  *(a1 + 56) = 0;
  *(a1 + 64) = _Q1;
  *(a1 + 72) = 0x4000000000000000;
  *(a1 + 80) = _Q1;
  *(a1 + 88) = 0;
  *(a1 + 96) = _Q1;
  *(a1 + 104) = 0x4014000000000000;
  *(a1 + 112) = _Q1;
  *(a1 + 120) = 0;
  *(a1 + 128) = _Q1;
  *(a1 + 144) = _Q1;
  *(a1 + 152) = 0x4034000000000000;
  *(a1 + 160) = v8;
  *(a1 + 168) = 0x4030000000000000;
  *(a1 + 176) = v8;
  *(a1 + 184) = xmmword_1E68C35D0;
  *(a1 + 200) = xmmword_1E68C35E0;
  *&result = 2;
  *(a1 + 216) = xmmword_1E68C35F0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 1;
  return result;
}

double sub_1E6849834@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1E68B2DF0();
  v3 = sub_1E68B2DF0();
  v4 = 14.0;
  if (v2)
  {
    if (v3)
    {
      sub_1E68B1A50();
      v4 = v5;
    }

    v6 = sub_1E68B2DF0();
    v7 = 18.0;
    if ((v6 & 1) == 0)
    {
      v7 = 12.0;
    }

    v8 = xmmword_1E68C35C0;
  }

  else
  {
    if (v3)
    {
      sub_1E68B1A50();
      v4 = v9;
    }

    v10 = sub_1E68B2DF0();
    v7 = 18.0;
    if ((v10 & 1) == 0)
    {
      v7 = 12.0;
    }

    v8 = xmmword_1E68BF070;
  }

  *a1 = xmmword_1E68C3570;
  *(a1 + 16) = xmmword_1E68C3580;
  *(a1 + 32) = v4;
  *(a1 + 40) = 0x3FD75C28F5C28F5CLL;
  *(a1 + 48) = v7;
  *(a1 + 56) = 0;
  *(a1 + 64) = v8;
  *(a1 + 72) = 0x4000000000000000;
  *(a1 + 80) = v8;
  *(a1 + 88) = 0;
  *(a1 + 96) = v8;
  *(a1 + 104) = 0x4014000000000000;
  *(a1 + 112) = v8;
  *(a1 + 120) = 0;
  *(a1 + 128) = v8;
  *(a1 + 144) = vdupq_lane_s64(v8, 0);
  *(a1 + 160) = v8;
  *(a1 + 168) = 0x4024000000000000;
  *(a1 + 176) = v8;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *&result = 2;
  *(a1 + 216) = xmmword_1E68B77B0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 1;
  return result;
}

double static ActionCardViewLayout.platterCard.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EE2EB480 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = unk_1EE2EB558;
  *(a1 + 192) = xmmword_1EE2EB548;
  *(a1 + 208) = v1;
  *(a1 + 224) = xmmword_1EE2EB568;
  *(a1 + 240) = qword_1EE2EB578;
  v2 = unk_1EE2EB518;
  *(a1 + 128) = xmmword_1EE2EB508;
  *(a1 + 144) = v2;
  v3 = unk_1EE2EB538;
  *(a1 + 160) = xmmword_1EE2EB528;
  *(a1 + 176) = v3;
  v4 = unk_1EE2EB4D8;
  *(a1 + 64) = xmmword_1EE2EB4C8;
  *(a1 + 80) = v4;
  v5 = unk_1EE2EB4F8;
  *(a1 + 96) = xmmword_1EE2EB4E8;
  *(a1 + 112) = v5;
  v6 = unk_1EE2EB498;
  *a1 = xmmword_1EE2EB488;
  *(a1 + 16) = v6;
  result = *&xmmword_1EE2EB4A8;
  v8 = unk_1EE2EB4B8;
  *(a1 + 32) = xmmword_1EE2EB4A8;
  *(a1 + 48) = v8;
  return result;
}

unint64_t sub_1E6849A0C(char a1)
{
  result = 0x6152746365707361;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001ALL;
      break;
    case 2:
      result = 0x615272656E726F63;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0x646150656C746974;
      break;
    case 6:
      result = 0x656C746974627573;
      break;
    case 7:
      result = 0x506E6F6974706163;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0xD000000000000016;
      break;
    case 10:
      result = 0x6E694C656C746974;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E6849BD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E68572FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E6849BFC(uint64_t a1)
{
  v2 = sub_1E6855924();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6849C38(uint64_t a1)
{
  v2 = sub_1E6855924();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActionCardViewLayout.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0998F8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v20 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v10 = v1[3];
  v12 = v1[4];
  v11 = v1[5];
  v13 = v1[6];
  v14 = *(v1 + 7);
  v29 = *(v1 + 9);
  v30 = v14;
  v27 = *(v1 + 13);
  v28 = *(v1 + 11);
  v25 = *(v1 + 17);
  v26 = *(v1 + 15);
  v23 = *(v1 + 21);
  v24 = *(v1 + 19);
  v21 = *(v1 + 25);
  v22 = *(v1 + 23);
  v15 = v1[27];
  v31 = v1[28];
  v32 = v15;
  v16 = *(v1 + 232);
  v17 = v1[30];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E6855924();
  sub_1E68B3BD0();
  *&v34 = v7;
  *(&v34 + 1) = v8;
  v36 = 0;
  type metadata accessor for CGSize(0);
  sub_1E6856E40(&qword_1EE2EA448, type metadata accessor for CGSize);
  v18 = v33;
  sub_1E68B3AB0();
  if (v18)
  {
    return (*(v4 + 8))(v6, v3);
  }

  LODWORD(v33) = v16;
  v20[1] = v17;
  *&v34 = v9;
  *(&v34 + 1) = v10;
  v36 = 1;
  sub_1E68B3AB0();
  *&v34 = v12;
  v36 = 2;
  sub_1E67621E8();
  sub_1E68B3AB0();
  *&v34 = v11;
  v36 = 3;
  sub_1E68B3AB0();
  *&v34 = v13;
  v36 = 4;
  sub_1E68B3AB0();
  v34 = v30;
  v35 = v29;
  v36 = 5;
  sub_1E67F4B08();
  sub_1E68B3AB0();
  v34 = v28;
  v35 = v27;
  v36 = 6;
  sub_1E68B3AB0();
  v34 = v26;
  v35 = v25;
  v36 = 7;
  sub_1E68B3AB0();
  v34 = v24;
  v35 = v23;
  v36 = 8;
  sub_1E68B3AB0();
  v34 = v22;
  v35 = v21;
  v36 = 9;
  sub_1E68B3AB0();
  LOBYTE(v34) = 10;
  sub_1E68B3AA0();
  LOBYTE(v34) = 11;
  sub_1E68B3A50();
  LOBYTE(v34) = 12;
  sub_1E68B3AA0();
  return (*(v4 + 8))(0, v3);
}

uint64_t ActionCardViewLayout.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099900);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E6855924();
  sub_1E68B3BC0();
  if (!v2)
  {
    type metadata accessor for CGSize(0);
    v34 = 0;
    sub_1E6856E40(&qword_1ED096DC0, type metadata accessor for CGSize);
    sub_1E68B3A00();
    v9 = v32;
    v34 = 1;
    sub_1E68B3A00();
    v10 = v32;
    v34 = 2;
    sub_1E6762A60();
    sub_1E68B3A00();
    v11 = v32;
    v34 = 3;
    sub_1E68B3A00();
    v12 = v32;
    v34 = 4;
    sub_1E68B3A00();
    v13 = v32;
    v34 = 5;
    sub_1E67F4BB0();
    sub_1E68B3A00();
    v30 = v32;
    v31 = v33;
    v34 = 6;
    sub_1E68B3A00();
    v28 = v32;
    v29 = v33;
    v34 = 7;
    sub_1E68B3A00();
    v27 = v33;
    v26 = v32;
    v34 = 8;
    sub_1E68B3A00();
    v25 = v33;
    v24 = v32;
    v34 = 9;
    sub_1E68B3A00();
    v23 = v33;
    v22 = v32;
    LOBYTE(v32) = 10;
    v14 = sub_1E68B39F0();
    LOBYTE(v32) = 11;
    v16 = sub_1E68B39A0();
    v35 = v17 & 1;
    LOBYTE(v32) = 12;
    v18 = sub_1E68B39F0();
    (*(v6 + 8))(v8, v5);
    v19 = v35;
    *a2 = v9;
    *(a2 + 16) = v10;
    *(a2 + 32) = v11;
    *(a2 + 40) = v12;
    *(a2 + 48) = v13;
    v20 = v31;
    *(a2 + 56) = v30;
    *(a2 + 72) = v20;
    v21 = v29;
    *(a2 + 88) = v28;
    *(a2 + 104) = v21;
    *(a2 + 120) = v26;
    *(a2 + 136) = v27;
    *(a2 + 152) = v24;
    *(a2 + 168) = v25;
    *(a2 + 184) = v22;
    *(a2 + 200) = v23;
    *(a2 + 216) = v14;
    *(a2 + 224) = v16;
    *(a2 + 232) = v19;
    *(a2 + 240) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ActionCardViewLayout.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  v37 = *(v0 + 80);
  v38 = *(v0 + 88);
  v39 = *(v0 + 96);
  v40 = *(v0 + 104);
  v41 = *(v0 + 112);
  v42 = *(v0 + 120);
  v43 = *(v0 + 128);
  v44 = *(v0 + 136);
  v45 = *(v0 + 144);
  v46 = *(v0 + 152);
  v47 = *(v0 + 160);
  v48 = *(v0 + 168);
  v49 = *(v0 + 176);
  v50 = *(v0 + 184);
  v51 = *(v0 + 192);
  v52 = *(v0 + 200);
  v53 = *(v0 + 208);
  v10 = *(v0 + 216);
  v9 = *(v0 + 224);
  v11 = *(v0 + 232);
  v12 = *(v0 + 240);
  sub_1E673E7F4(*v0, *(v0 + 8));
  sub_1E673E7F4(v1, v2);
  if (v3 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v3;
  }

  MEMORY[0x1E69523F0](*&v13);
  if (v4 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v4;
  }

  MEMORY[0x1E69523F0](*&v14);
  if (v5 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v5;
  }

  MEMORY[0x1E69523F0](*&v15);
  if (v6 == 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v6;
  }

  MEMORY[0x1E69523F0](*&v16);
  if (v7 == 0.0)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v7;
  }

  MEMORY[0x1E69523F0](*&v17);
  if (v8 == 0.0)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v8;
  }

  MEMORY[0x1E69523F0](*&v18);
  v19 = v37;
  if (v37 == 0.0)
  {
    v19 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v19);
  v20 = v38;
  if (v38 == 0.0)
  {
    v20 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v20);
  v21 = v39;
  if (v39 == 0.0)
  {
    v21 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v21);
  v22 = v40;
  if (v40 == 0.0)
  {
    v22 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v22);
  v23 = v41;
  if (v41 == 0.0)
  {
    v23 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v23);
  v24 = v42;
  if (v42 == 0.0)
  {
    v24 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v24);
  v25 = v43;
  if (v43 == 0.0)
  {
    v25 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v25);
  v26 = v44;
  if (v44 == 0.0)
  {
    v26 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v26);
  v27 = v45;
  if (v45 == 0.0)
  {
    v27 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v27);
  v28 = v46;
  if (v46 == 0.0)
  {
    v28 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v28);
  v29 = v47;
  if (v47 == 0.0)
  {
    v29 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v29);
  v30 = v48;
  if (v48 == 0.0)
  {
    v30 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v30);
  v31 = v49;
  if (v49 == 0.0)
  {
    v31 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v31);
  v32 = v50;
  if (v50 == 0.0)
  {
    v32 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v32);
  v33 = v51;
  if (v51 == 0.0)
  {
    v33 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v33);
  v34 = v52;
  if (v52 == 0.0)
  {
    v34 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v34);
  v35 = v53;
  if (v53 == 0.0)
  {
    v35 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v35);
  MEMORY[0x1E69523D0](v10);
  sub_1E68B3B90();
  if (v11 != 1)
  {
    MEMORY[0x1E69523D0](v9);
  }

  return MEMORY[0x1E69523D0](v12);
}

uint64_t ActionCardViewLayout.hashValue.getter()
{
  sub_1E68B3B70();
  ActionCardViewLayout.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E684AA30()
{
  sub_1E68B3B70();
  ActionCardViewLayout.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E684AA74()
{
  sub_1E68B3B70();
  ActionCardViewLayout.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E684AAB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v46 = a2;
  v42 = sub_1E68B21B0();
  *&v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  sub_1E68B2440();
  v39 = v7;
  v8 = sub_1E68B1E40();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  v15 = sub_1E68B1E40();
  v43 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  v44 = sub_1E68B1E40();
  v45 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v38 - v18;
  v41 = a1;
  v19 = *(a1 + 40);
  sub_1E68B2900();
  sub_1E68B2180();
  sub_1E68B1E30();
  (*(v40 + 8))(v6, v42);
  v20 = *(v9 + 8);
  v20(v11, v8);
  v38 = v3;
  v21 = sub_1E6856E40(&qword_1EE2EA588, MEMORY[0x1E697CBE8]);
  v71 = v19;
  v72 = v21;
  WitnessTable = swift_getWitnessTable();
  sub_1E68B2780();
  v20(v14, v8);
  sub_1E68B2E80();
  v69 = WitnessTable;
  v70 = MEMORY[0x1E697F568];
  v37 = swift_getWitnessTable();
  sub_1E68B2A00();
  (*(v43 + 8))(v17, v15);
  v43 = sub_1E68B2E70();
  v42 = v23;
  v48 = v39;
  v40 = *(v41 + 24);
  v49 = v40;
  v50 = v19;
  v51 = *(v41 + 48);
  v52 = v38;
  v55 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099928);
  v56 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099930);
  v57 = v56;
  v58 = sub_1E68B1E40();
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0981E8);
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0);
  v24 = sub_1E68B1E40();
  v25 = sub_1E68B1E40();
  v26 = swift_getWitnessTable();
  v27 = sub_1E673F530(&qword_1EE2EA5D8, &qword_1ED0981E8);
  v67 = v26;
  v68 = v27;
  v28 = swift_getWitnessTable();
  v29 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0);
  v65 = v28;
  v66 = v29;
  v30 = swift_getWitnessTable();
  v63 = v30;
  v64 = MEMORY[0x1E697E5D8];
  v31 = swift_getWitnessTable();
  v32 = MEMORY[0x1E6981CD8];
  v55 = v24;
  v56 = MEMORY[0x1E6981CD8];
  v57 = v25;
  v58 = v25;
  v33 = MEMORY[0x1E6981CD0];
  v59 = v30;
  v60 = MEMORY[0x1E6981CD0];
  v61 = v31;
  v62 = v31;
  swift_getOpaqueTypeMetadata2();
  v53 = v37;
  v54 = MEMORY[0x1E697EBF8];
  v34 = v44;
  swift_getWitnessTable();
  v55 = v24;
  v56 = v32;
  v57 = v25;
  v58 = v25;
  v59 = v30;
  v60 = v33;
  v61 = v31;
  v62 = v31;
  swift_getOpaqueTypeConformance2();
  v35 = v47;
  sub_1E68B2A40();
  return (*(v45 + 8))(v35, v34);
}

uint64_t sub_1E684B264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v78 = a7;
  v79 = a6;
  v80 = a5;
  v81 = a2;
  v82 = a4;
  v76 = a8;
  v77 = a3;
  v68 = a1;
  v74 = sub_1E68B1F00();
  MEMORY[0x1EEE9AC00](v74);
  v75 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E68B2DE0();
  v10 = *(v9 - 8);
  v72 = v9;
  v73 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v70 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099928);
  v103 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099930);
  v104 = v103;
  v105 = sub_1E68B1E40();
  swift_getTupleTypeMetadata();
  v66 = sub_1E68B2F00();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_1E68B2CC0();
  v67 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0981E8);
  v53 = v12;
  v15 = sub_1E68B1E40();
  v69 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v60 = &v53 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0);
  v54 = v15;
  v17 = sub_1E68B1E40();
  v71 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v64 = &v53 - v18;
  v19 = sub_1E68B1E40();
  v20 = swift_getWitnessTable();
  v21 = sub_1E673F530(&qword_1EE2EA5D8, &qword_1ED0981E8);
  v114 = v20;
  v115 = v21;
  v22 = swift_getWitnessTable();
  v56 = v22;
  v23 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0);
  v112 = v22;
  v113 = v23;
  v110 = swift_getWitnessTable();
  v111 = MEMORY[0x1E697E5D8];
  v24 = v110;
  v58 = v110;
  v25 = swift_getWitnessTable();
  v102 = v17;
  v103 = MEMORY[0x1E6981CD8];
  v57 = v19;
  v104 = v19;
  v105 = v19;
  v106 = v24;
  v107 = MEMORY[0x1E6981CD0];
  v108 = v25;
  v109 = v25;
  v61 = MEMORY[0x1E6981460];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v27 = *(OpaqueTypeMetadata2 - 8);
  v62 = OpaqueTypeMetadata2;
  v63 = v27;
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v55 = &v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v59 = &v53 - v30;
  sub_1E68B21C0();
  v95 = v81;
  v96 = v77;
  v97 = v82;
  v98 = v80;
  v99 = v79;
  v31 = v68;
  v100 = v78;
  v101 = v68;
  sub_1E68B2CB0();
  v32 = v70;
  sub_1E68B2DD0();
  sub_1E68B2500();
  v33 = v60;
  v34 = v53;
  v35 = v72;
  sub_1E68B2750();
  (*(v73 + 8))(v32, v35);
  (*(v67 + 8))(v14, v34);
  v36 = *(v31 + 48);
  v37 = *(v74 + 20);
  v38 = *MEMORY[0x1E697F468];
  v39 = sub_1E68B2160();
  v40 = v75;
  (*(*(v39 - 8) + 104))(&v75[v37], v38, v39);
  *v40 = v36;
  v40[1] = v36;
  sub_1E6856E40(&qword_1EE2EA660, MEMORY[0x1E697EAF0]);
  v41 = v64;
  v42 = v54;
  sub_1E68B2AE0();
  sub_1E6768D04(v40);
  (*(v69 + 8))(v33, v42);
  sub_1E68B2E00();
  v89 = v81;
  v90 = v77;
  v91 = v82;
  v92 = v80;
  v93 = v79;
  v94 = v78;
  v83 = v81;
  v84 = v77;
  v85 = v82;
  v86 = v80;
  v87 = v79;
  v88 = v78;
  v43 = swift_checkMetadataState();
  v44 = MEMORY[0x1E6981CD0];
  v45 = v58;
  v46 = v55;
  v47 = MEMORY[0x1E6981CD8];
  sub_1E68B2AD0();
  (*(v71 + 8))(v41, v17);
  v102 = v17;
  v103 = v47;
  v104 = v43;
  v105 = v43;
  v106 = v45;
  v107 = v44;
  v108 = v25;
  v109 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v49 = v59;
  v50 = v62;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v46, v62, OpaqueTypeConformance2);
  v51 = *(v63 + 8);
  v51(v46, v50);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v49, v50, OpaqueTypeConformance2);
  return (v51)(v49, v50);
}

uint64_t sub_1E684BAB8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v192 = a5;
  v189 = a4;
  v177 = a8;
  v179 = sub_1E68B1E40();
  v173 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v178 = &v163[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v176 = &v163[-v15];
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099A20);
  v197 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v181 = &v163[-v16];
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099930);
  MEMORY[0x1EEE9AC00](v171);
  v175 = &v163[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v174 = &v163[-v19];
  MEMORY[0x1EEE9AC00](v20);
  v196 = &v163[-v21];
  MEMORY[0x1EEE9AC00](v22);
  v199 = &v163[-v23];
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099960);
  MEMORY[0x1EEE9AC00](v191);
  v190 = &v163[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v25);
  v186 = &v163[-v26];
  *&v200 = sub_1E68B1DE0();
  *&v201 = *(v200 - 8);
  MEMORY[0x1EEE9AC00](v200);
  v28 = &v163[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v163[-v30];
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099968);
  MEMORY[0x1EEE9AC00](v188);
  v187 = &v163[-v32];
  *&v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0999D0);
  MEMORY[0x1EEE9AC00](v183);
  *&v184 = &v163[-v33];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099A28);
  v180 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v163[-v35];
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099928);
  MEMORY[0x1EEE9AC00](v169);
  v195 = &v163[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v163[-v39];
  v207 = a2;
  v208 = a3;
  v170 = a3;
  v209 = v189;
  v210 = v192;
  v172 = a6;
  v211 = a6;
  v212 = a7;
  v41 = type metadata accessor for ActionCardView();
  v42 = (a1 + *(v41 + 80));
  v43 = v42[3];
  v44 = 1;
  v45 = MEMORY[0x1E697E6E8];
  v192 = a1;
  v189 = v41;
  v182 = v43;
  v198 = v40;
  v194 = v28;
  v193 = v31;
  if (v43)
  {
    v166 = v36;
    *&v167 = v34;
    v46 = *v42;
    v47 = v42[1];
    v48 = v42[2];
    *&v168 = swift_getKeyPath();
    v49 = v184;
    v50 = (v184 + *(v183 + 36));
    v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0978D8) + 28);
    v52 = *MEMORY[0x1E6980FD8];
    v53 = sub_1E68B2690();
    v54 = *(v53 - 8);
    (*(v54 + 104))(v50 + v51, v52, v53);
    (*(v54 + 56))(v50 + v51, 0, 1, v53);
    *v50 = swift_getKeyPath();
    *v49 = v46;
    *(v49 + 8) = v47;
    LODWORD(v53) = v48 & 1;
    LOBYTE(v51) = v48;
    *(v49 + 16) = v48 & 1;
    v55 = v182;
    v56 = v168;
    *(v49 + 24) = v182;
    *(v49 + 32) = v56;
    *(v49 + 40) = 1;
    v57 = *(v201 + 104);
    v58 = v193;
    v59 = v200;
    v57(v193, *MEMORY[0x1E697E6E8], v200);
    v60 = v194;
    v57(v194, *MEMORY[0x1E697E728], v59);
    sub_1E673F228(v46, v47, v51, v55);
    *&v168 = v46;
    v165 = v47;
    v164 = v53;
    sub_1E673F26C(v46, v47, v53);
    sub_1E6856E40(&qword_1EE2EA848, MEMORY[0x1E697E730]);

    result = sub_1E68B3170();
    if ((result & 1) == 0)
    {
      __break(1u);
      goto LABEL_15;
    }

    v62 = v60;
    v63 = v201;
    v64 = *(v201 + 32);
    v65 = v200;
    v66 = v186;
    v64(v186, v58, v200);
    v67 = v191;
    v64((v66 + *(v191 + 48)), v62, v65);
    v68 = v190;
    sub_1E67612FC(v66, v190, &qword_1ED099960);
    v69 = *(v67 + 48);
    v70 = v187;
    v64(v187, v68, v65);
    v71 = *(v63 + 8);
    v71(&v68[v69], v65);
    sub_1E6856730(v66, v68);
    v64((v70 + *(v188 + 36)), &v68[*(v67 + 48)], v65);
    v71(v68, v65);
    sub_1E6856D24();
    sub_1E673F530(&qword_1EE2EA4B8, &qword_1ED099968);
    v72 = v166;
    v73 = v184;
    sub_1E68B2870();
    sub_1E6744A10(v70, &qword_1ED099968);
    sub_1E6744A10(v73, &qword_1ED0999D0);
    a1 = v192;
    v74 = *(v192 + 240);
    KeyPath = swift_getKeyPath();
    v76 = v72 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099A30) + 36);
    *v76 = KeyPath;
    *(v76 + 8) = v74;
    *(v76 + 16) = 0;
    v184 = *(a1 + 136);
    v183 = *(a1 + 120);
    LOBYTE(KeyPath) = sub_1E68B2500();
    sub_1E673F0D4(v168, v165, v164);

    v34 = v167;
    v77 = v72 + *(v167 + 36);
    *(&v78 + 1) = *(&v183 + 1);
    *&v79 = v183;
    v80 = *(&v184 + 1);
    *&v78 = v184;
    *v77 = KeyPath;
    *(&v79 + 1) = v80;
    *(v77 + 24) = v79;
    *(v77 + 8) = v78;
    *(v77 + 40) = 0;
    v40 = v198;
    sub_1E6761420(v72, v198, &qword_1ED099A28);
    v44 = 0;
    v81 = v189;
    v45 = MEMORY[0x1E697E6E8];
  }

  else
  {
    v81 = v41;
  }

  v82 = 1;
  (*(v180 + 56))(v40, v44, 1, v34);
  v83 = (a1 + *(v81 + 72));
  v84 = v83[3];
  if (!v84)
  {
    v115 = v199;
    v110 = v185;
    goto LABEL_9;
  }

  v85 = *v83;
  v86 = v83[1];
  *&v184 = v83[2];
  v87 = v184;
  v88 = swift_getKeyPath();
  v207 = v85;
  v208 = v86;
  v89 = v87 & 1;
  LOBYTE(v209) = v87 & 1;
  v210 = v84;
  v211 = v88;
  *&v168 = v88;
  LOBYTE(v212) = 1;
  v90 = *(v201 + 104);
  v91 = v193;
  v92 = v200;
  v90(v193, *v45, v200);
  v93 = v194;
  v90(v194, *MEMORY[0x1E697E728], v92);
  sub_1E673F228(v85, v86, v184, v84);
  *&v183 = v85;
  v182 = v86;
  LODWORD(v180) = v89;
  sub_1E673F26C(v85, v86, v89);
  sub_1E6856E40(&qword_1EE2EA848, MEMORY[0x1E697E730]);
  *&v184 = v84;

  result = sub_1E68B3170();
  if ((result & 1) == 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v94 = v201;
  v95 = *(v201 + 32);
  v96 = v186;
  v97 = v91;
  v98 = v200;
  v95(v186, v97, v200);
  v99 = v191;
  v95((v96 + *(v191 + 48)), v93, v98);
  v100 = v190;
  sub_1E67612FC(v96, v190, &qword_1ED099960);
  v101 = *(v99 + 48);
  v102 = v187;
  v95(v187, v100, v98);
  v103 = *(v94 + 8);
  v103(&v100[v101], v98);
  sub_1E6856730(v96, v100);
  v95((v102 + *(v188 + 36)), &v100[*(v99 + 48)], v98);
  v103(v100, v98);
  a1 = v192;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0999F8);
  sub_1E6856C6C();
  sub_1E673F530(&qword_1EE2EA4B8, &qword_1ED099968);
  v104 = v181;
  sub_1E68B2870();
  v81 = v189;
  sub_1E6744A10(v102, &qword_1ED099968);
  v105 = v183;
  v106 = v182;
  LOBYTE(v98) = v180;
  sub_1E673F0D4(v183, v182, v180);

  v107 = *(a1 + 216);
  v108 = swift_getKeyPath();
  v109 = v104 + *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED099A38) + 36);
  *v109 = v108;
  *(v109 + 8) = v107;
  *(v109 + 16) = 0;
  v168 = *(a1 + 72);
  v167 = *(a1 + 56);
  LOBYTE(v108) = sub_1E68B2500();
  sub_1E673F0D4(v105, v106, v98);

  v110 = v185;
  v111 = v104 + *(v185 + 36);
  *(&v112 + 1) = *(&v167 + 1);
  *&v113 = v167;
  v114 = *(&v168 + 1);
  *&v112 = v168;
  *v111 = v108;
  *(&v113 + 1) = v114;
  *(v111 + 24) = v113;
  *(v111 + 8) = v112;
  *(v111 + 40) = 0;
  v115 = v199;
  sub_1E6761420(v104, v199, &qword_1ED099A20);
  v82 = 0;
  v45 = MEMORY[0x1E697E6E8];
LABEL_9:
  v116 = v197 + 56;
  v117 = 1;
  *&v184 = *(v197 + 56);
  (v184)(v115, v82, 1, v110);
  v118 = (a1 + *(v81 + 76));
  v119 = v118[3];
  v120 = MEMORY[0x1E697E728];
  if (!v119)
  {
    v152 = v196;
    goto LABEL_13;
  }

  v197 = v116;
  v121 = *v118;
  v122 = v118[1];
  v123 = v118[2];
  v124 = swift_getKeyPath();
  v207 = v121;
  v208 = v122;
  LOBYTE(v209) = v123 & 1;
  v210 = v119;
  v211 = v124;
  v180 = v124;
  LOBYTE(v212) = 1;
  v125 = *v45;
  v126 = *(v201 + 104);
  v127 = v193;
  v128 = v200;
  v126(v193, v125, v200);
  v129 = *v120;
  v130 = v194;
  v126(v194, v129, v128);
  sub_1E673F228(v121, v122, v123, v119);
  *&v183 = v121;
  LODWORD(v182) = v123 & 1;
  sub_1E673F26C(v121, v122, v123 & 1);
  sub_1E6856E40(&qword_1EE2EA848, MEMORY[0x1E697E730]);

  result = sub_1E68B3170();
  if (result)
  {
    v131 = v201;
    v132 = *(v201 + 32);
    v133 = v186;
    v134 = v200;
    v132(v186, v127, v200);
    v135 = v191;
    v132((v133 + *(v191 + 48)), v130, v134);
    v194 = v122;
    v136 = v190;
    sub_1E67612FC(v133, v190, &qword_1ED099960);
    v137 = *(v135 + 48);
    v138 = v187;
    v132(v187, v136, v134);
    v193 = v119;
    v139 = *(v131 + 8);
    v139(&v136[v137], v134);
    sub_1E6856730(v133, v136);
    v132((v138 + *(v188 + 36)), &v136[*(v135 + 48)], v134);
    v139(v136, v134);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0999F8);
    sub_1E6856C6C();
    sub_1E673F530(&qword_1EE2EA4B8, &qword_1ED099968);
    v140 = v181;
    sub_1E68B2870();
    sub_1E6744A10(v138, &qword_1ED099968);
    v141 = v183;
    v142 = v194;
    LOBYTE(v133) = v182;
    sub_1E673F0D4(v183, v194, v182);

    v143 = v192;
    v144 = *(v192 + 224);
    LOBYTE(v134) = *(v192 + 232);
    v145 = swift_getKeyPath();
    v146 = v140 + *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED099A38) + 36);
    *v146 = v145;
    *(v146 + 8) = v144;
    *(v146 + 16) = v134;
    v147 = *(v143 + 104);
    v200 = *(v143 + 88);
    v201 = v147;
    LOBYTE(v145) = sub_1E68B2500();
    sub_1E673F0D4(v141, v142, v133);

    v110 = v185;
    v148 = v140 + *(v185 + 36);
    *&v150 = v200;
    v149 = *(&v201 + 1);
    *(&v151 + 1) = *(&v200 + 1);
    *&v151 = v201;
    *v148 = v145;
    *(&v150 + 1) = v149;
    *(v148 + 24) = v150;
    *(v148 + 8) = v151;
    *(v148 + 40) = 0;
    v152 = v196;
    sub_1E6761420(v140, v196, &qword_1ED099A20);
    v117 = 0;
LABEL_13:
    (v184)(v152, v117, 1, v110);
    v153 = v178;
    v154 = v172;
    sub_1E68B2A60();
    v206[4] = v154;
    v206[5] = MEMORY[0x1E697E5D8];
    v155 = v179;
    *&v201 = swift_getWitnessTable();
    v156 = v176;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v153, v155, v201);
    v157 = v173;
    v158 = *(v173 + 8);
    v158(v153, v155);
    v159 = v195;
    sub_1E67612FC(v198, v195, &qword_1ED099928);
    v207 = v159;
    v160 = v174;
    sub_1E67612FC(v199, v174, &qword_1ED099930);
    v208 = v160;
    v161 = v152;
    v162 = v175;
    sub_1E67612FC(v161, v175, &qword_1ED099930);
    v209 = v162;
    (*(v157 + 16))(v153, v156, v155);
    v210 = v153;
    v206[0] = v169;
    v206[1] = v171;
    v206[2] = v171;
    v206[3] = v155;
    v202 = sub_1E6856EC0(&qword_1EE2EA710, &qword_1ED099928, &unk_1E68C38E8, sub_1E6856F3C);
    v203 = sub_1E6856EC0(&qword_1EE2EA720, &qword_1ED099930, &unk_1E68C38F0, sub_1E685711C);
    v204 = v203;
    v205 = v201;
    sub_1E6848F14(&v207, 4uLL, v206);
    v158(v156, v155);
    sub_1E6744A10(v196, &qword_1ED099930);
    sub_1E6744A10(v199, &qword_1ED099930);
    sub_1E6744A10(v198, &qword_1ED099928);
    v158(v153, v155);
    sub_1E6744A10(v162, &qword_1ED099930);
    sub_1E6744A10(v160, &qword_1ED099930);
    return sub_1E6744A10(v195, &qword_1ED099928);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1E684D080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X7>, uint64_t a3@<X8>)
{
  v24[3] = a2;
  v24[4] = a1;
  v24[5] = a3;
  v24[17] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099928);
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099930);
  v26 = v25;
  v27 = sub_1E68B1E40();
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v3 = sub_1E68B2CC0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0981E8);
  v24[1] = v3;
  v4 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0);
  v24[2] = v4;
  sub_1E68B1E40();
  v5 = sub_1E68B1E40();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v24 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097968);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E68C1680;
  v13 = sub_1E68B2520();
  *(inited + 32) = v13;
  v14 = sub_1E68B2530();
  *(inited + 33) = v14;
  v15 = sub_1E68B2550();
  *(inited + 34) = v15;
  sub_1E68B2540();
  sub_1E68B2540();
  if (sub_1E68B2540() != v13)
  {
    sub_1E68B2540();
  }

  sub_1E68B2540();
  if (sub_1E68B2540() != v14)
  {
    sub_1E68B2540();
  }

  sub_1E68B2540();
  if (sub_1E68B2540() != v15)
  {
    sub_1E68B2540();
  }

  WitnessTable = swift_getWitnessTable();
  v17 = sub_1E673F530(&qword_1EE2EA5D8, &qword_1ED0981E8);
  v24[10] = WitnessTable;
  v24[11] = v17;
  v18 = swift_getWitnessTable();
  v19 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0);
  v24[8] = v18;
  v24[9] = v19;
  v20 = swift_getWitnessTable();
  sub_1E68B2A70();
  v24[6] = v20;
  v24[7] = MEMORY[0x1E697E5D8];
  v21 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v8, v5, v21);
  v22 = *(v6 + 8);
  v22(v8, v5);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v11, v5, v21);
  return (v22)(v11, v5);
}

uint64_t sub_1E684D498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v16 = *(a1 + 16);
  v4 = sub_1E68B1E40();
  v17 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - v5;
  v7 = sub_1E68B1E40();
  v8 = *(v7 - 8);
  v18 = v7;
  v19 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - v9;
  v11 = *(a1 + 40);
  sub_1E68B2780();
  sub_1E68B2E80();
  v28 = v11;
  v29 = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  sub_1E68B2A00();
  (*(v17 + 8))(v6, v4);
  sub_1E68B2E30();
  v21 = v16;
  v22 = *(a1 + 24);
  v23 = v11;
  v24 = *(a1 + 48);
  v25 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099938);
  v26 = WitnessTable;
  v27 = MEMORY[0x1E697EBF8];
  v12 = v18;
  swift_getWitnessTable();
  sub_1E673F530(&qword_1ED099940, &qword_1ED099938);
  sub_1E68B2A40();
  return (*(v19 + 8))(v10, v12);
}

uint64_t sub_1E684D7AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = sub_1E68B21D0();
  *(a8 + 8) = 0;
  *(a8 + 16) = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099948);
  return sub_1E684D848(a1, a2, a3, a4, a5, a6, a7, a8 + *(v16 + 44));
}

uint64_t sub_1E684D848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v173 = a6;
  v174 = a7;
  v169 = a4;
  v170 = a5;
  v161 = a3;
  v158 = a8;
  v153 = sub_1E68B21B0();
  v152 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v151 = v145 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099950);
  v159 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v150 = v145 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099958);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v157 = v145 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v145 - v16;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099960);
  MEMORY[0x1EEE9AC00](v168);
  v165 = v145 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v167 = v145 - v20;
  v21 = sub_1E68B1DE0();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v145 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v145 - v26;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099968);
  MEMORY[0x1EEE9AC00](v164);
  v175 = v145 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099970);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v166 = v145 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099978);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v155 = v145 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v156 = v145 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v154 = v145 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v172 = v145 - v39;
  v177 = a2;
  v178 = v161;
  v179 = v169;
  v180 = v170;
  v181 = v173;
  v182 = v174;
  v173 = type metadata accessor for ActionCardView();
  v40 = a1 + v173[20];
  v41 = *(v40 + 24);
  v176 = v17;
  v169 = v29;
  v170 = a1;
  v171 = v22;
  v160 = v11;
  v162 = v27;
  v163 = v24;
  if (v41)
  {
    v174 = v30;
    v42 = *v40;
    v43 = *(v40 + 8);
    v44 = *(v40 + 16);
    v177 = v42;
    v178 = v43;
    v45 = v44 & 1;
    LOBYTE(v179) = v44 & 1;
    v180 = v41;
    v46 = *(v22 + 104);
    v46(v27, *MEMORY[0x1E697E6E8], v21);
    v46(v24, *MEMORY[0x1E697E728], v21);
    LODWORD(v161) = v45;
    sub_1E673F26C(v42, v43, v45);
    sub_1E6856E40(&qword_1EE2EA848, MEMORY[0x1E697E730]);

    result = sub_1E68B3170();
    if ((result & 1) == 0)
    {
      __break(1u);
      goto LABEL_15;
    }

    v48 = v27;
    v49 = *(v22 + 32);
    v50 = v22;
    v51 = v167;
    v49(v167, v48, v21);
    v148 = v43;
    v52 = v168;
    v49((v51 + *(v168 + 48)), v24, v21);
    v53 = v165;
    sub_1E67612FC(v51, v165, &qword_1ED099960);
    v147 = v41;
    v54 = *(v52 + 48);
    v55 = v175;
    v49(v175, v53, v21);
    v146 = v42;
    v56 = *(v50 + 8);
    v56(v53 + v54, v21);
    sub_1E6856730(v51, v53);
    v49(&v55[*(v164 + 36)], (v53 + *(v52 + 48)), v21);
    v56(v53, v21);
    a1 = v170;
    sub_1E673F530(&qword_1EE2EA4B8, &qword_1ED099968);
    v57 = v166;
    sub_1E68B2870();
    v58 = v55;
    v59 = v169;
    v17 = v176;
    sub_1E6744A10(v58, &qword_1ED099968);
    v60 = *(a1 + 240);
    KeyPath = swift_getKeyPath();
    v62 = v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099988) + 36);
    *v62 = KeyPath;
    *(v62 + 8) = v60;
    v63 = v59;
    *(v62 + 16) = 0;
    LOBYTE(KeyPath) = sub_1E68B2500();
    sub_1E673F0D4(v146, v148, v161);

    v64 = v57 + *(v59 + 36);
    v65 = *(a1 + 136);
    v66 = *(a1 + 120);
    *(&v67 + 1) = *(a1 + 128);
    *&v67 = *(a1 + 136);
    *v64 = KeyPath;
    *(&v66 + 1) = *(&v65 + 1);
    *(v64 + 24) = v66;
    *(v64 + 8) = v67;
    *(v64 + 40) = 0;
    v68 = v172;
    sub_1E6761420(v57, v172, &qword_1ED099970);
    v69 = 0;
    v30 = v174;
  }

  else
  {
    v69 = 1;
    v68 = v172;
    v63 = v29;
  }

  v70 = *(v30 + 56);
  v71 = 1;
  v174 = v30 + 56;
  v70(v68, v69, 1, v63);
  v72 = a1 + v173[18];
  v73 = *(v72 + 24);
  v161 = v70;
  v149 = v21;
  if (!v73)
  {
    v105 = v63;
    goto LABEL_9;
  }

  v75 = *v72;
  v74 = *(v72 + 8);
  v76 = *(v72 + 16);
  v177 = v75;
  v178 = v74;
  v77 = v21;
  v78 = v76 & 1;
  LOBYTE(v179) = v76 & 1;
  v180 = v73;
  v79 = *(v171 + 104);
  v80 = v162;
  v79(v162, *MEMORY[0x1E697E6E8], v77);
  v81 = v163;
  v79(v163, *MEMORY[0x1E697E728], v77);
  v147 = v75;
  v148 = v74;
  LODWORD(v146) = v78;
  v82 = v78;
  v83 = v77;
  sub_1E673F26C(v75, v74, v82);
  sub_1E6856E40(&qword_1EE2EA848, MEMORY[0x1E697E730]);

  result = sub_1E68B3170();
  if ((result & 1) == 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v84 = v171;
  v85 = *(v171 + 32);
  v86 = v167;
  v85(v167, v80, v83);
  v87 = v168;
  v85((v86 + *(v168 + 48)), v81, v83);
  v88 = v165;
  sub_1E67612FC(v86, v165, &qword_1ED099960);
  v145[1] = v73;
  v89 = *(v87 + 48);
  v85(v175, v88, v83);
  v90 = *(v84 + 8);
  v90(v88 + v89, v83);
  sub_1E6856730(v86, v88);
  v91 = v166;
  v92 = v175;
  v85(&v175[*(v164 + 36)], v88 + *(v87 + 48), v83);
  v90(v88, v83);
  a1 = v170;
  sub_1E673F530(&qword_1EE2EA4B8, &qword_1ED099968);
  sub_1E68B2870();
  v93 = v169;
  v94 = v176;
  sub_1E6744A10(v92, &qword_1ED099968);
  v95 = *(a1 + 216);
  v96 = swift_getKeyPath();
  v97 = v91 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099988) + 36);
  *v97 = v96;
  *(v97 + 8) = v95;
  v17 = v94;
  *(v97 + 16) = 0;
  v98 = sub_1E68B2500();
  v99 = v91 + *(v93 + 36);
  v100 = *(a1 + 72);
  v101 = *(a1 + 56);
  *(&v102 + 1) = *(a1 + 64);
  *&v102 = *(a1 + 72);
  *v99 = v98;
  *(&v101 + 1) = *(&v100 + 1);
  *(v99 + 24) = v101;
  *(v99 + 8) = v102;
  *(v99 + 40) = 0;
  v103 = v151;
  sub_1E68B21A0();
  sub_1E68567A0();
  v104 = v150;
  v105 = v93;
  sub_1E68B2950();
  sub_1E673F0D4(v147, v148, v146);

  (*(v152 + 8))(v103, v153);
  sub_1E6744A10(v91, &qword_1ED099970);
  sub_1E6761420(v104, v17, &qword_1ED099950);
  v71 = 0;
LABEL_9:
  v106 = 1;
  (*(v159 + 56))(v17, v71, 1, v160);
  v107 = a1 + v173[19];
  v108 = *(v107 + 24);
  if (!v108)
  {
    v137 = v154;
    goto LABEL_13;
  }

  v109 = *v107;
  v110 = *(v107 + 8);
  v111 = *(v107 + 16);
  v177 = v109;
  v178 = v110;
  v112 = v111 & 1;
  LOBYTE(v179) = v111 & 1;
  v180 = v108;
  v113 = v171;
  v114 = *(v171 + 104);
  v115 = v162;
  v116 = v149;
  v114(v162, *MEMORY[0x1E697E6E8], v149);
  v117 = v163;
  v114(v163, *MEMORY[0x1E697E728], v116);
  LODWORD(v173) = v112;
  sub_1E673F26C(v109, v110, v112);
  sub_1E6856E40(&qword_1EE2EA848, MEMORY[0x1E697E730]);

  result = sub_1E68B3170();
  if (result)
  {
    v118 = *(v113 + 32);
    v119 = v167;
    v118(v167, v115, v116);
    v120 = v168;
    v118((v119 + *(v168 + 48)), v117, v116);
    v163 = v110;
    v121 = v165;
    sub_1E67612FC(v119, v165, &qword_1ED099960);
    v162 = v109;
    v122 = *(v120 + 48);
    v123 = v175;
    v118(v175, v121, v116);
    v160 = v108;
    v124 = *(v113 + 8);
    v125 = v121 + v122;
    v126 = v176;
    v124(v125, v116);
    sub_1E6856730(v119, v121);
    v118((v123 + *(v164 + 36)), v121 + *(v120 + 48), v116);
    v17 = v126;
    v105 = v169;
    v124(v121, v116);
    sub_1E673F530(&qword_1EE2EA4B8, &qword_1ED099968);
    v127 = v166;
    sub_1E68B2870();
    sub_1E6744A10(v123, &qword_1ED099968);
    v128 = v170;
    v129 = *(v170 + 224);
    v130 = *(v170 + 232);
    v131 = swift_getKeyPath();
    v132 = v127 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099988) + 36);
    *v132 = v131;
    *(v132 + 8) = v129;
    *(v132 + 16) = v130;
    LOBYTE(v131) = sub_1E68B2500();
    sub_1E673F0D4(v162, v163, v173);

    v133 = v127 + *(v105 + 36);
    v134 = *(v128 + 104);
    v135 = *(v128 + 88);
    *(&v136 + 1) = *(v128 + 96);
    *&v136 = *(v128 + 104);
    *v133 = v131;
    *(&v135 + 1) = *(&v134 + 1);
    *(v133 + 24) = v135;
    *(v133 + 8) = v136;
    *(v133 + 40) = 0;
    v137 = v154;
    sub_1E6761420(v127, v154, &qword_1ED099970);
    v106 = 0;
LABEL_13:
    v161(v137, v106, 1, v105);
    v138 = v172;
    v139 = v156;
    sub_1E67612FC(v172, v156, &qword_1ED099978);
    v140 = v17;
    v141 = v157;
    sub_1E67612FC(v140, v157, &qword_1ED099958);
    v142 = v155;
    sub_1E67612FC(v137, v155, &qword_1ED099978);
    v143 = v158;
    sub_1E67612FC(v139, v158, &qword_1ED099978);
    v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099980);
    sub_1E67612FC(v141, v143 + *(v144 + 48), &qword_1ED099958);
    sub_1E67612FC(v142, v143 + *(v144 + 64), &qword_1ED099978);
    sub_1E6744A10(v137, &qword_1ED099978);
    sub_1E6744A10(v176, &qword_1ED099958);
    sub_1E6744A10(v138, &qword_1ED099978);
    sub_1E6744A10(v142, &qword_1ED099978);
    sub_1E6744A10(v141, &qword_1ED099958);
    return sub_1E6744A10(v139, &qword_1ED099978);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1E684E920@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v19 = a1 + 5;
  v3 = a1[2];
  sub_1E68B1E40();
  sub_1E68B1E40();
  v18 = a1[4];
  sub_1E68B3750();
  sub_1E68B1E40();
  v17 = a1[7];
  v33 = v17;
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E697E5D8];
  v31 = WitnessTable;
  v32 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1E68B1F40();
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E68B1E40();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099920);
  v6 = a1[3];
  v7 = sub_1E68B1E40();
  v29 = a1[6];
  v8 = v29;
  v30 = v5;
  v27 = v7;
  v28 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0981E8);
  sub_1E68B1E40();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v9 = sub_1E68B2CE0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  sub_1E68B2E70();
  *&v13 = v18;
  *(&v13 + 1) = *v19;
  *&v14 = v3;
  *(&v14 + 1) = v6;
  v22 = v14;
  v23 = v13;
  v24 = v8;
  v25 = v17;
  v26 = v20;
  sub_1E68B2CD0();
  swift_getWitnessTable();
  sub_1E68B2780();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1E684ED48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v67 = a6;
  v68 = a3;
  v75 = a1;
  v76 = a5;
  v83 = a8;
  v12 = sub_1E68B2DE0();
  v13 = *(v12 - 8);
  v81 = v12;
  v82 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v80 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099920);
  v15 = sub_1E68B1E40();
  v104 = a6;
  v105 = MEMORY[0x1E697E5D8];
  v63 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v102 = v15;
  v103 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v72 = sub_1E68B2F00();
  v71 = swift_getWitnessTable();
  v69 = sub_1E68B2CC0();
  v73 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v65 = &v53 - v17;
  v70 = sub_1E68B1E40();
  v78 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v64 = &v53 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0981E8);
  v77 = sub_1E68B1E40();
  v79 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v66 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v74 = &v53 - v21;
  sub_1E68B1E40();
  sub_1E68B1E40();
  v56 = a4;
  sub_1E68B3750();
  sub_1E68B1E40();
  v54 = a7;
  v101[8] = a7;
  v101[6] = swift_getWitnessTable();
  v101[7] = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1E68B1F40();
  sub_1E68B1E40();
  v55 = a2;
  sub_1E68B1E40();
  sub_1E68B1E40();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v57 = sub_1E68B2CC0();
  v59 = *(v57 - 8);
  v22 = v59;
  MEMORY[0x1EEE9AC00](v57);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v24;
  MEMORY[0x1EEE9AC00](v25);
  v84 = &v53 - v26;
  v92 = a2;
  v27 = v68;
  v93 = v68;
  v94 = a4;
  v28 = v76;
  v29 = v67;
  v95 = v76;
  v96 = v67;
  v97 = a7;
  v30 = v75;
  v98 = v75;
  sub_1E68B21C0();
  sub_1E68B2CB0();
  v31 = v57;
  v60 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v24, v31, v60);
  v32 = *(v22 + 8);
  v61 = v22 + 8;
  v62 = v32;
  v33 = v24;
  v34 = v31;
  v32(v33, v31);
  sub_1E68B21C0();
  v85 = v55;
  v86 = v27;
  v87 = v56;
  v88 = v28;
  v89 = v29;
  v90 = v54;
  v91 = v30;
  v35 = v65;
  sub_1E68B2CB0();
  sub_1E68B2510();
  v36 = v69;
  v37 = swift_getWitnessTable();
  v38 = v64;
  sub_1E68B2A70();
  (*(v73 + 8))(v35, v36);
  v39 = v80;
  sub_1E68B2DD0();
  sub_1E68B2500();
  v101[4] = v37;
  v101[5] = MEMORY[0x1E697E5D8];
  v40 = v70;
  v41 = swift_getWitnessTable();
  v42 = v66;
  v43 = v81;
  sub_1E68B2750();
  (*(v82 + 8))(v39, v43);
  (*(v78 + 8))(v38, v40);
  v44 = sub_1E673F530(&qword_1EE2EA5D8, &qword_1ED0981E8);
  v101[2] = v41;
  v101[3] = v44;
  v45 = v77;
  v46 = swift_getWitnessTable();
  v47 = v74;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v42, v45, v46);
  v48 = v79;
  v49 = *(v79 + 8);
  v49(v42, v45);
  v50 = v58;
  (*(v59 + 16))(v58, v84, v34);
  v102 = v50;
  (*(v48 + 16))(v42, v47, v45);
  v103 = v42;
  v101[0] = v34;
  v101[1] = v45;
  v99 = v60;
  v100 = v46;
  sub_1E6848F14(&v102, 2uLL, v101);
  v49(v47, v45);
  v51 = v62;
  v62(v84, v34);
  v49(v42, v45);
  return v51(v50, v34);
}

uint64_t sub_1E684F5E0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v74 = a6;
  v60 = a5;
  v71 = a8;
  v72 = a3;
  v62 = a1;
  v66 = sub_1E68B1E40();
  v70 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v49 - v11;
  v12 = sub_1E68B1E40();
  v13 = *(v12 - 8);
  v68 = v12;
  v69 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v65 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v67 = &v49 - v16;
  v17 = sub_1E68B1E40();
  v61 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v49 - v18;
  v54 = sub_1E68B1E40();
  v63 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v49 - v20;
  v50 = a4;
  sub_1E68B3750();
  v21 = sub_1E68B1E40();
  v95 = a7;
  v49 = a7;
  WitnessTable = swift_getWitnessTable();
  v94 = MEMORY[0x1E697E5D8];
  v51 = MEMORY[0x1E697E858];
  v57 = v21;
  v58 = swift_getWitnessTable();
  v59 = sub_1E68B1F40();
  v73 = sub_1E68B1E40();
  v75 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v53 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v76 = &v49 - v24;
  v25 = a2;
  v87 = a2;
  v88 = v72;
  v26 = v60;
  v89 = a4;
  v90 = v60;
  v91 = v74;
  v92 = a7;
  v56 = *(type metadata accessor for ActionCardView() + 68);
  v27 = v62;
  v52 = a2;
  sub_1E68B2780();
  sub_1E68B2E80();
  v86[10] = v26;
  v86[11] = MEMORY[0x1E697F568];
  v28 = swift_getWitnessTable();
  v29 = v55;
  sub_1E68B2A00();
  (*(v61 + 8))(v19, v17);
  sub_1E68B2E30();
  v77 = v25;
  v78 = v72;
  v79 = v50;
  v80 = v26;
  v81 = v74;
  v82 = v49;
  v83 = v27;
  v86[8] = v28;
  v86[9] = MEMORY[0x1E697EBF8];
  v30 = v54;
  v31 = swift_getWitnessTable();
  v32 = v53;
  sub_1E68B2A40();
  (*(v63 + 8))(v29, v30);
  v33 = swift_getWitnessTable();
  v86[6] = v31;
  v86[7] = v33;
  v34 = v73;
  v63 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v32, v34, v63);
  v72 = *(v75 + 8);
  v74 = v75 + 8;
  (v72)(v32, v34);
  sub_1E68B2F50();
  v35 = v64;
  MEMORY[0x1E6951040](v52, v26, 1.0, -1.0, v36, v37);
  sub_1E68B2E80();
  v86[4] = v26;
  v86[5] = MEMORY[0x1E697E070];
  v47 = v66;
  v48 = swift_getWitnessTable();
  v38 = v65;
  sub_1E68B2A00();
  (*(v70 + 8))(v35, v47);
  v86[2] = v48;
  v86[3] = MEMORY[0x1E697EBF8];
  v39 = v68;
  v40 = swift_getWitnessTable();
  v41 = v67;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v38, v39, v40);
  v42 = v69;
  v43 = *(v69 + 8);
  v43(v38, v39);
  v44 = v73;
  (*(v75 + 16))(v32, v76, v73);
  v87 = v32;
  (*(v42 + 16))(v38, v41, v39);
  v88 = v38;
  v86[0] = v44;
  v86[1] = v39;
  v84 = v63;
  v85 = v40;
  sub_1E6848F14(&v87, 2uLL, v86);
  v43(v41, v39);
  v45 = v72;
  (v72)(v76, v44);
  v43(v38, v39);
  return (v45)(v32, v44);
}

uint64_t sub_1E684FDB8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v22 = a4;
  v23 = a5;
  v24 = a7;
  sub_1E68B3750();
  v11 = sub_1E68B1E40();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - v16;
  v28 = a1;
  v29 = a2;
  v30 = a3;
  v31 = v22;
  v32 = v23;
  v33 = a6;
  type metadata accessor for ActionCardView();
  v27 = a6;
  WitnessTable = swift_getWitnessTable();
  sub_1E68B2A60();
  v25 = WitnessTable;
  v26 = MEMORY[0x1E697E5D8];
  v19 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v14, v11, v19);
  v20 = *(v12 + 8);
  v20(v14, v11);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v17, v11, v19);
  return (v20)(v17, v11);
}

uint64_t sub_1E684FFD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void, void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v60 = a7;
  v57 = a6;
  v56 = a5;
  v59 = a4;
  v55 = a2;
  v71 = a8;
  v70 = sub_1E68B1DE0();
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v67 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a3;
  v14 = sub_1E68B1E40();
  v68 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v63 = &v53 - v15;
  v81 = a6;
  v82 = MEMORY[0x1E697E5D8];
  WitnessTable = swift_getWitnessTable();
  *&v83 = v14;
  *(&v83 + 1) = WitnessTable;
  v65 = MEMORY[0x1E69812B8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v66 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v62 = &v53 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0999A0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v53 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099920);
  v58 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v61 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v53 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v53 = &v53 - v30;
  v31 = a2;
  v32 = a3;
  v33 = v59;
  v34 = a5;
  v35 = v57;
  v36 = v60;
  sub_1E68506C4(a1, v31, v32, v59, v34, v57, v60, v23);
  sub_1E68B2E80();
  sub_1E68B1F30();
  sub_1E6761420(v23, v28, &qword_1ED0999A0);
  v37 = &v28[*(v24 + 36)];
  v38 = v88;
  *(v37 + 4) = v87;
  *(v37 + 5) = v38;
  *(v37 + 6) = v89;
  v39 = v84;
  *v37 = v83;
  *(v37 + 1) = v39;
  v40 = v86;
  *(v37 + 2) = v85;
  *(v37 + 3) = v40;
  v41 = v53;
  sub_1E6761420(v28, v53, &qword_1ED099920);
  v75 = v55;
  v76 = v54;
  v77 = v33;
  v78 = v56;
  v79 = v35;
  v80 = v36;
  type metadata accessor for ActionCardView();
  v42 = v63;
  sub_1E68B2A60();
  v43 = v69;
  v44 = v67;
  v45 = v70;
  (*(v69 + 104))(v67, *MEMORY[0x1E697E6E8], v70);
  v46 = WitnessTable;
  sub_1E68B2860();
  (*(v43 + 8))(v44, v45);
  (*(v68 + 8))(v42, v14);
  v75 = v14;
  v76 = v46;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v48 = v62;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v18, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v49 = v66;
  v50 = *(v66 + 8);
  v50(v18, OpaqueTypeMetadata2);
  v51 = v61;
  sub_1E67612FC(v41, v61, &qword_1ED099920);
  v75 = v51;
  (*(v49 + 16))(v18, v48, OpaqueTypeMetadata2);
  v76 = v18;
  v74[0] = v58;
  v74[1] = OpaqueTypeMetadata2;
  v72 = sub_1E68569B0();
  v73 = OpaqueTypeConformance2;
  sub_1E6848F14(&v75, 2uLL, v74);
  v50(v48, OpaqueTypeMetadata2);
  sub_1E6744A10(v41, &qword_1ED099920);
  v50(v18, OpaqueTypeMetadata2);
  return sub_1E6744A10(v51, &qword_1ED099920);
}

uint64_t sub_1E68506C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void, void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v140 = a7;
  KeyPath = a6;
  v124 = a5;
  v123 = a4;
  v122 = a3;
  v136 = a8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0999B0);
  v132 = *(v10 - 8);
  v133 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v121 = v118 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0999B8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v135 = v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v134 = v118 - v15;
  v129 = sub_1E68B21B0();
  v128 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v127 = v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0999C0);
  MEMORY[0x1EEE9AC00](v125);
  v126 = v118 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0999C8);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v131 = v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v141 = v118 - v21;
  v22 = sub_1E68B1DE0();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v118 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0999D0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v118 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0999D8);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v120 = v118 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0999E0);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v130 = v118 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = v118 - v35;
  v144 = a2;
  v145 = v122;
  v146 = v123;
  v147 = v124;
  v148 = KeyPath;
  v149 = v140;
  v37 = type metadata accessor for ActionCardView();
  v139 = v36;
  v140 = v37;
  v38 = *(v37 + 80);
  v142 = v23;
  v143 = a1;
  v39 = (a1 + v38);
  v40 = v39[3];
  v138 = v25;
  if (v40)
  {
    v41 = v39[1];
    v118[0] = v39[2];
    v124 = v41;
    v42 = *v39;
    KeyPath = swift_getKeyPath();
    v118[1] = v26;
    v43 = *(v26 + 36);
    v123 = v22;
    v44 = &v28[v43];
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0978D8) + 28);
    v122 = v30;
    v46 = *MEMORY[0x1E6980FD8];
    v47 = sub_1E68B2690();
    v119 = v29;
    v48 = v25;
    v49 = v47;
    v50 = v23;
    v51 = *(v47 - 8);
    (*(v51 + 104))(v44 + v45, v46, v47);
    (*(v51 + 56))(v44 + v45, 0, 1, v49);
    *v44 = swift_getKeyPath();
    v22 = v123;
    v52 = v124;
    *v28 = v42;
    *(v28 + 1) = v52;
    LOBYTE(v49) = v118[0];
    LOBYTE(v46) = v118[0] & 1;
    v28[16] = v118[0] & 1;
    v53 = KeyPath;
    *(v28 + 3) = v40;
    *(v28 + 4) = v53;
    v28[40] = 1;
    v54 = *(v50 + 104);
    LODWORD(KeyPath) = *MEMORY[0x1E697E6E8];
    v54(v48);
    sub_1E673F228(v42, v52, v49, v40);
    sub_1E673F26C(v42, v52, v46);
    sub_1E6856D24();

    v55 = v120;
    sub_1E68B2860();
    (*(v50 + 8))(v48, v22);
    sub_1E6744A10(v28, &qword_1ED0999D0);
    v56 = *(v143 + 240);
    v57 = swift_getKeyPath();
    v58 = v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099A10) + 36);
    *v58 = v57;
    *(v58 + 8) = v56;
    v59 = v143;
    *(v58 + 16) = 0;
    LOBYTE(v57) = sub_1E68B2500();
    sub_1E673F0D4(v42, v124, v46);

    v60 = v119;
    v61 = v55 + *(v119 + 36);
    v62 = *(v59 + 136);
    v63 = *(v59 + 120);
    *(&v64 + 1) = *(v59 + 128);
    *&v64 = *(v59 + 136);
    *v61 = v57;
    *(&v63 + 1) = *(&v62 + 1);
    *(v61 + 24) = v63;
    *(v61 + 8) = v64;
    *(v61 + 40) = 0;
    v65 = v139;
    sub_1E6761420(v55, v139, &qword_1ED0999D8);
    (*(v122 + 56))(v65, 0, 1, v60);
  }

  else
  {
    (*(v30 + 56))(v36, 1, 1, v29);
    LODWORD(KeyPath) = *MEMORY[0x1E697E6E8];
  }

  v66 = (v143 + *(v140 + 72));
  v67 = *v66;
  v68 = v66[1];
  v69 = v66[2];
  v70 = v66[3];
  v124 = swift_getKeyPath();
  v144 = v67;
  v145 = v68;
  v146 = v69;
  v147 = v70;
  v148 = v124;
  LOBYTE(v149) = 1;
  v71 = v142;
  v72 = *(v142 + 104);
  v73 = v138;
  v122 = v142 + 104;
  v120 = v72;
  (v72)(v138, KeyPath, v22);
  sub_1E673F228(v67, v68, v69, v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098170);
  sub_1E67C5A34();
  v74 = v126;
  sub_1E68B2860();
  v75 = *(v71 + 8);
  v142 = v71 + 8;
  v123 = v75;
  v75(v73, v22);
  sub_1E67C5AEC(v67, v68, v69, v70);

  v76 = v143;
  v77 = *(v143 + 216);
  v78 = swift_getKeyPath();
  v79 = v74 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0999E8) + 36);
  *v79 = v78;
  *(v79 + 8) = v77;
  *(v79 + 16) = 0;
  v80 = sub_1E68B2500();
  v81 = v74 + *(v125 + 36);
  v82 = *(v76 + 72);
  v83 = *(v76 + 56);
  *(&v84 + 1) = *(v76 + 64);
  *&v84 = *(v76 + 72);
  *v81 = v80;
  *(&v83 + 1) = *(&v82 + 1);
  *(v81 + 24) = v83;
  *(v81 + 8) = v84;
  *(v81 + 40) = 0;
  v85 = v127;
  sub_1E68B21A0();
  sub_1E6856AEC();
  sub_1E68B2950();
  (*(v128 + 8))(v85, v129);
  sub_1E6744A10(v74, &qword_1ED0999C0);
  v86 = (v76 + *(v140 + 76));
  v87 = v86[3];
  if (v87)
  {
    v89 = v86[1];
    v88 = v86[2];
    v90 = *v86;
    v91 = swift_getKeyPath();
    v144 = v90;
    v145 = v89;
    v92 = v88 & 1;
    LOBYTE(v146) = v88 & 1;
    v147 = v87;
    v148 = v91;
    LOBYTE(v149) = 1;
    v93 = v138;
    (v120)(v138, KeyPath, v22);
    sub_1E673F228(v90, v89, v88, v87);
    sub_1E673F26C(v90, v89, v88 & 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0999F8);
    sub_1E6856C6C();
    v94 = v121;
    sub_1E68B2860();
    v123(v93, v22);
    sub_1E673F0D4(v90, v89, v88 & 1);

    v95 = v143;
    v96 = *(v143 + 224);
    v97 = *(v143 + 232);
    v98 = swift_getKeyPath();
    v99 = &v94[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099A00) + 36)];
    *v99 = v98;
    *(v99 + 1) = v96;
    v99[16] = v97;
    LOBYTE(v98) = sub_1E68B2500();
    sub_1E673F0D4(v90, v89, v92);

    v100 = &v94[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099A08) + 36)];
    *v100 = v98;
    v101 = *(v95 + 88);
    *(&v102 + 1) = *(v95 + 96);
    *(&v101 + 1) = *(v95 + 112);
    *&v102 = *(v95 + 104);
    *(v100 + 24) = v101;
    *(v100 + 8) = v102;
    v100[40] = 0;
    v103 = v133;
    v104 = *(v133 + 36);
    v105 = *MEMORY[0x1E6981DB8];
    v106 = sub_1E68B2EB0();
    (*(*(v106 - 8) + 104))(&v94[v104], v105, v106);
    v107 = v94;
    v108 = v134;
    sub_1E6761420(v107, v134, &qword_1ED0999B0);
    v109 = 0;
  }

  else
  {
    v103 = v133;
    v108 = v134;
    v109 = 1;
  }

  (*(v132 + 56))(v108, v109, 1, v103);
  v110 = v139;
  v111 = v130;
  sub_1E67612FC(v139, v130, &qword_1ED0999E0);
  v112 = v141;
  v113 = v131;
  sub_1E67612FC(v141, v131, &qword_1ED0999C8);
  v114 = v135;
  sub_1E67612FC(v108, v135, &qword_1ED0999B8);
  v115 = v136;
  sub_1E67612FC(v111, v136, &qword_1ED0999E0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0999F0);
  sub_1E67612FC(v113, v115 + *(v116 + 48), &qword_1ED0999C8);
  sub_1E67612FC(v114, v115 + *(v116 + 64), &qword_1ED0999B8);
  sub_1E6744A10(v108, &qword_1ED0999B8);
  sub_1E6744A10(v112, &qword_1ED0999C8);
  sub_1E6744A10(v110, &qword_1ED0999E0);
  sub_1E6744A10(v114, &qword_1ED0999B8);
  sub_1E6744A10(v113, &qword_1ED0999C8);
  return sub_1E6744A10(v111, &qword_1ED0999E0);
}

uint64_t sub_1E6851444@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  v97 = *(a1 - 1);
  *&v101 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v96 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v4 + 16);
  v90 = sub_1E68B1E40();
  v6 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099918);
  v89 = v6;
  OpaqueTypeMetadata2 = sub_1E68B1E40();
  *&v100 = a1[4];
  sub_1E68B3750();
  sub_1E68B1E40();
  v95 = a1[7];
  v161 = v95;
  WitnessTable = swift_getWitnessTable();
  v160 = MEMORY[0x1E697E5D8];
  v7 = MEMORY[0x1E697E5D8];
  v105 = MEMORY[0x1E697E858];
  swift_getWitnessTable();
  sub_1E68B1F40();
  sub_1E68B1E40();
  v92 = v5;
  sub_1E68B1E40();
  sub_1E68B1E40();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099920);
  v8 = a1;
  v104 = a1;
  v94 = a1[3];
  v9 = sub_1E68B1E40();
  v93 = v8[6];
  v157 = v93;
  v158 = v7;
  v10 = swift_getWitnessTable();
  v143 = v9;
  v144 = v10;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0981E8);
  sub_1E68B1E40();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v85 = sub_1E68B2CE0();
  v86 = sub_1E68B1E40();
  v82 = sub_1E68B2220();
  v91 = sub_1E68B2440();
  v87 = sub_1E68B1E40();
  v88 = sub_1E68B1E40();
  v81 = sub_1E68B1E40();
  v143 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099928);
  v144 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099930);
  v145 = v144;
  v146 = v9;
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  v102 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0);
  v11 = sub_1E68B1E40();
  v12 = sub_1E68B1E40();
  v13 = swift_getWitnessTable();
  v14 = sub_1E673F530(&qword_1EE2EA5D8, &qword_1ED0981E8);
  v155 = v13;
  v156 = v14;
  v15 = swift_getWitnessTable();
  v83 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0);
  v153 = v15;
  v154 = v83;
  v16 = swift_getWitnessTable();
  v151 = v16;
  v152 = MEMORY[0x1E697E5D8];
  v17 = swift_getWitnessTable();
  v18 = MEMORY[0x1E6981CD8];
  v143 = v11;
  v144 = MEMORY[0x1E6981CD8];
  v145 = v12;
  v146 = v12;
  v19 = MEMORY[0x1E6981CD0];
  v147 = v16;
  v148 = MEMORY[0x1E6981CD0];
  v149 = v17;
  v150 = v17;
  swift_getOpaqueTypeMetadata2();
  v143 = v11;
  v144 = v18;
  v145 = v12;
  v146 = v12;
  v147 = v16;
  v148 = v19;
  v149 = v17;
  v150 = v17;
  swift_getOpaqueTypeConformance2();
  sub_1E68B1F40();
  sub_1E68B1E40();
  v79 = sub_1E68B2220();
  v80 = sub_1E68B2B90();
  v102 = sub_1E68B1E40();
  v20 = v104[5];
  v141 = v20;
  v142 = MEMORY[0x1E697F568];
  v84 = v20;
  v21 = MEMORY[0x1E697F568];
  v139 = swift_getWitnessTable();
  v140 = MEMORY[0x1E697EBF8];
  v22 = swift_getWitnessTable();
  v23 = sub_1E673F530(&qword_1EE2EA648, &qword_1ED099918);
  v137 = v22;
  v138 = v23;
  v24 = swift_getWitnessTable();
  v135 = swift_getWitnessTable();
  v136 = v21;
  v25 = swift_getWitnessTable();
  v133 = v24;
  v134 = v25;
  v26 = swift_getWitnessTable();
  v86 = sub_1E6856E40(&qword_1EE2EA588, MEMORY[0x1E697CBE8]);
  v131 = v20;
  v132 = v86;
  v129 = swift_getWitnessTable();
  v130 = MEMORY[0x1E697F568];
  v127 = swift_getWitnessTable();
  v128 = MEMORY[0x1E697EBF8];
  v27 = swift_getWitnessTable();
  v28 = swift_getWitnessTable();
  v125 = v27;
  v126 = v28;
  v29 = swift_getWitnessTable();
  v123 = v26;
  v124 = v29;
  v122 = swift_getWitnessTable();
  v30 = v80;
  v31 = swift_getWitnessTable();
  v120 = v31;
  v121 = v83;
  v89 = swift_getWitnessTable();
  v32 = sub_1E68B2C30();
  v90 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v87 = &v72 - v33;
  v34 = swift_getWitnessTable();
  v35 = sub_1E67C5938();
  v143 = v32;
  v144 = &type metadata for ActionCardButtonStyle;
  v36 = v32;
  v77 = v32;
  v78 = v35;
  v145 = v34;
  v146 = v35;
  v79 = v34;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v88 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v85 = &v72 - v37;
  v38 = v30;
  v143 = v30;
  v144 = v31;
  swift_getOpaqueTypeMetadata2();
  v39 = sub_1E68B1E40();
  v143 = v36;
  v144 = &type metadata for ActionCardButtonStyle;
  v145 = v34;
  v146 = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v82 = OpaqueTypeConformance2;
  v143 = v38;
  v144 = v31;
  v118 = swift_getOpaqueTypeConformance2();
  v119 = v86;
  v75 = v39;
  v81 = swift_getWitnessTable();
  v143 = OpaqueTypeMetadata2;
  v144 = v39;
  v145 = OpaqueTypeConformance2;
  v146 = v81;
  v83 = MEMORY[0x1E697D3F8];
  v80 = swift_getOpaqueTypeMetadata2();
  v86 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v73 = &v72 - v41;
  v42 = sub_1E68B1E40();
  v91 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v74 = &v72 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v44);
  v76 = &v72 - v46;
  v48 = v96;
  v47 = v97;
  v49 = v98;
  v50 = v104;
  (*(v97 + 16))(v96, v98, v104, v45);
  v51 = (*(v47 + 80) + 64) & ~*(v47 + 80);
  v52 = swift_allocObject();
  *&v53 = v92;
  v54 = v93;
  *(&v53 + 1) = v94;
  *&v55 = v100;
  *(&v55 + 1) = v84;
  v100 = v55;
  v101 = v53;
  *(v52 + 16) = v53;
  *(v52 + 32) = v55;
  v56 = v95;
  *(v52 + 48) = v54;
  *(v52 + 56) = v56;
  (*(v47 + 32))(v52 + v51, v48, v50);
  v111 = v101;
  v112 = v100;
  v113 = v54;
  v114 = v56;
  v115 = v49;
  v57 = v87;
  sub_1E68B2C20();
  v58 = v85;
  v59 = v77;
  sub_1E68B27A0();
  (*(v90 + 8))(v57, v59);
  v106 = v101;
  v107 = v100;
  v108 = v54;
  v109 = v56;
  v110 = v49;
  v60 = swift_checkMetadataState();
  v61 = v73;
  v62 = OpaqueTypeMetadata2;
  v64 = v81;
  v63 = v82;
  sub_1E68B29C0();
  (*(v88 + 8))(v58, v62);
  sub_1E68B2510();
  v143 = v62;
  v144 = v60;
  v145 = v63;
  v146 = v64;
  v65 = swift_getOpaqueTypeConformance2();
  v66 = v74;
  v67 = v80;
  sub_1E68B2A70();
  (*(v86 + 8))(v61, v67);
  v116 = v65;
  v117 = MEMORY[0x1E697E5D8];
  v68 = swift_getWitnessTable();
  v69 = v76;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v66, v42, v68);
  v70 = *(v91 + 8);
  v70(v66, v42);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v69, v42, v68);
  return (v70)(v69, v42);
}

uint64_t sub_1E68522F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v69 = a7;
  v70 = a4;
  v65 = a6;
  v66 = a3;
  v72 = a5;
  v73 = a1;
  v75 = a8;
  v80 = sub_1E68B1F00();
  MEMORY[0x1EEE9AC00](v80);
  v79 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1E68B1E40();
  v12 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099918);
  v71 = v12;
  v78 = sub_1E68B1E40();
  sub_1E68B3750();
  sub_1E68B1E40();
  v122 = a7;
  WitnessTable = swift_getWitnessTable();
  v121 = MEMORY[0x1E697E5D8];
  v13 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1E68B1F40();
  sub_1E68B1E40();
  v59 = a2;
  sub_1E68B1E40();
  sub_1E68B1E40();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099920);
  v14 = sub_1E68B1E40();
  v118 = a6;
  v119 = v13;
  v15 = swift_getWitnessTable();
  v104 = v14;
  v105 = v15;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0981E8);
  sub_1E68B1E40();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v63 = sub_1E68B2CE0();
  v64 = sub_1E68B1E40();
  v76 = sub_1E68B2220();
  sub_1E68B2440();
  v67 = sub_1E68B1E40();
  v68 = sub_1E68B1E40();
  v77 = sub_1E68B1E40();
  v104 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099928);
  v105 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099930);
  v106 = v105;
  v107 = v14;
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0);
  v16 = sub_1E68B1E40();
  v17 = sub_1E68B1E40();
  v18 = swift_getWitnessTable();
  v19 = sub_1E673F530(&qword_1EE2EA5D8, &qword_1ED0981E8);
  v116 = v18;
  v117 = v19;
  v20 = swift_getWitnessTable();
  v62 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0);
  v114 = v20;
  v115 = v62;
  v21 = swift_getWitnessTable();
  v112 = v21;
  v113 = MEMORY[0x1E697E5D8];
  v22 = swift_getWitnessTable();
  v23 = MEMORY[0x1E6981CD8];
  v104 = v16;
  v105 = MEMORY[0x1E6981CD8];
  v106 = v17;
  v107 = v17;
  v24 = MEMORY[0x1E6981CD0];
  v108 = v21;
  v109 = MEMORY[0x1E6981CD0];
  v110 = v22;
  v111 = v22;
  swift_getOpaqueTypeMetadata2();
  v104 = v16;
  v105 = v23;
  v106 = v17;
  v107 = v17;
  v108 = v21;
  v109 = v24;
  v110 = v22;
  v111 = v22;
  swift_getOpaqueTypeConformance2();
  v57[1] = sub_1E68B1F40();
  v57[2] = sub_1E68B1E40();
  v57[3] = sub_1E68B2220();
  v25 = sub_1E68B2B90();
  v60 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v57 - v26;
  v28 = sub_1E68B1E40();
  v61 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = v57 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v58 = v57 - v32;
  v104 = v59;
  v105 = v66;
  v33 = v72;
  v106 = v70;
  v107 = v72;
  v108 = v65;
  v109 = v69;
  type metadata accessor for ActionCardView();
  v34 = v73;
  sub_1E6852DC4();
  v35 = *(v34 + 32);
  v36 = *(v80 + 20);
  v37 = *MEMORY[0x1E697F468];
  v38 = sub_1E68B2160();
  v39 = v79;
  (*(*(v38 - 8) + 104))(&v79[v36], v37, v38);
  *v39 = v35;
  v39[1] = v35;
  v102 = v33;
  v103 = MEMORY[0x1E697F568];
  v40 = v33;
  v41 = MEMORY[0x1E697F568];
  v100 = swift_getWitnessTable();
  v101 = MEMORY[0x1E697EBF8];
  v42 = swift_getWitnessTable();
  v43 = sub_1E673F530(&qword_1EE2EA648, &qword_1ED099918);
  v98 = v42;
  v99 = v43;
  v44 = swift_getWitnessTable();
  v96 = swift_getWitnessTable();
  v97 = v41;
  v45 = swift_getWitnessTable();
  v94 = v44;
  v95 = v45;
  v46 = swift_getWitnessTable();
  v47 = sub_1E6856E40(&qword_1EE2EA588, MEMORY[0x1E697CBE8]);
  v92 = v40;
  v93 = v47;
  v90 = swift_getWitnessTable();
  v91 = MEMORY[0x1E697F568];
  v88 = swift_getWitnessTable();
  v89 = MEMORY[0x1E697EBF8];
  v48 = swift_getWitnessTable();
  v49 = swift_getWitnessTable();
  v86 = v48;
  v87 = v49;
  v50 = swift_getWitnessTable();
  v84 = v46;
  v85 = v50;
  v83 = swift_getWitnessTable();
  v51 = swift_getWitnessTable();
  sub_1E6856E40(&qword_1EE2EA660, MEMORY[0x1E697EAF0]);
  v52 = v79;
  sub_1E68B2AE0();
  sub_1E6768D04(v52);
  (*(v60 + 8))(v27, v25);
  v81 = v51;
  v82 = v62;
  v53 = swift_getWitnessTable();
  v54 = v58;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v30, v28, v53);
  v55 = *(v61 + 8);
  v55(v30, v28);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v54, v28, v53);
  return (v55)(v54, v28);
}

uint64_t sub_1E6852DC4()
{
  sub_1E68B1E40();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099918);
  sub_1E68B1E40();
  sub_1E68B3750();
  sub_1E68B1E40();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B1F40();
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E68B1E40();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099920);
  sub_1E68B1E40();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0981E8);
  sub_1E68B1E40();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CE0();
  sub_1E68B1E40();
  sub_1E68B2220();
  sub_1E68B2440();
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099928);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099930);
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0);
  sub_1E68B1E40();
  sub_1E68B1E40();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA5D8, &qword_1ED0981E8);
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E68B1F40();
  sub_1E68B1E40();
  sub_1E68B2220();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA648, &qword_1ED099918);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E6856E40(&qword_1EE2EA588, MEMORY[0x1E697CBE8]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_1E68B2B80();
}

uint64_t sub_1E685356C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v114 = a5;
  v101 = a1;
  v112 = a8;
  v138 = a2;
  v139 = a3;
  v140 = a4;
  v141 = a5;
  v142 = a6;
  v143 = a7;
  v100 = type metadata accessor for ActionCardView();
  v106 = *(v100 - 8);
  v104 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v105 = &v83 - v13;
  v14 = sub_1E68B21B0();
  v102 = *(v14 - 8);
  v103 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v99 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E68B2400();
  OpaqueTypeConformance2 = *(v16 - 8);
  v98 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v96 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1E68B1E40();
  v18 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099918);
  v93 = v18;
  v113 = sub_1E68B1E40();
  v109 = a4;
  sub_1E68B3750();
  sub_1E68B1E40();
  v111 = a7;
  v156 = a7;
  WitnessTable = swift_getWitnessTable();
  v155 = MEMORY[0x1E697E5D8];
  v19 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1E68B1F40();
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E68B1E40();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099920);
  v108 = a3;
  v20 = sub_1E68B1E40();
  v110 = a6;
  v152 = a6;
  v153 = v19;
  v21 = swift_getWitnessTable();
  v138 = v20;
  v139 = v21;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0981E8);
  sub_1E68B1E40();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = sub_1E68B2CE0();
  v90 = sub_1E68B1E40();
  v86 = sub_1E68B2220();
  v94 = sub_1E68B2440();
  v107 = a2;
  v91 = sub_1E68B1E40();
  v92 = sub_1E68B1E40();
  v85 = sub_1E68B1E40();
  v138 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099928);
  v139 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099930);
  v140 = v139;
  v141 = v20;
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0);
  v22 = sub_1E68B1E40();
  v23 = sub_1E68B1E40();
  v24 = swift_getWitnessTable();
  v25 = sub_1E673F530(&qword_1EE2EA5D8, &qword_1ED0981E8);
  v150 = v24;
  v151 = v25;
  v26 = swift_getWitnessTable();
  v27 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0);
  v148 = v26;
  v149 = v27;
  v28 = swift_getWitnessTable();
  v146 = v28;
  v147 = MEMORY[0x1E697E5D8];
  v29 = swift_getWitnessTable();
  v30 = MEMORY[0x1E6981CD8];
  v138 = v22;
  v139 = MEMORY[0x1E6981CD8];
  v140 = v23;
  v141 = v23;
  v31 = MEMORY[0x1E6981CD0];
  v142 = v28;
  v143 = MEMORY[0x1E6981CD0];
  v144 = v29;
  v145 = v29;
  swift_getOpaqueTypeMetadata2();
  v138 = v22;
  v139 = v30;
  v140 = v23;
  v141 = v23;
  v142 = v28;
  v143 = v31;
  v144 = v29;
  v145 = v29;
  swift_getOpaqueTypeConformance2();
  sub_1E68B1F40();
  sub_1E68B1E40();
  v83 = sub_1E68B2220();
  v84 = sub_1E68B2B90();
  v88 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v87 = &v83 - v32;
  v33 = v114;
  v136 = v114;
  v137 = MEMORY[0x1E697F568];
  v34 = MEMORY[0x1E697F568];
  v134 = swift_getWitnessTable();
  v135 = MEMORY[0x1E697EBF8];
  v35 = swift_getWitnessTable();
  v36 = sub_1E673F530(&qword_1EE2EA648, &qword_1ED099918);
  v132 = v35;
  v133 = v36;
  v37 = swift_getWitnessTable();
  v130 = swift_getWitnessTable();
  v131 = v34;
  v38 = swift_getWitnessTable();
  v128 = v37;
  v129 = v38;
  v39 = swift_getWitnessTable();
  v40 = sub_1E6856E40(&qword_1EE2EA588, MEMORY[0x1E697CBE8]);
  v126 = v33;
  v127 = v40;
  v113 = v40;
  v124 = swift_getWitnessTable();
  v125 = MEMORY[0x1E697F568];
  v122 = swift_getWitnessTable();
  v123 = MEMORY[0x1E697EBF8];
  v41 = swift_getWitnessTable();
  v42 = swift_getWitnessTable();
  v120 = v41;
  v121 = v42;
  v43 = swift_getWitnessTable();
  v118 = v39;
  v119 = v43;
  v117 = swift_getWitnessTable();
  v44 = v84;
  v86 = swift_getWitnessTable();
  v138 = v44;
  v139 = v86;
  v90 = MEMORY[0x1E697D248];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v92 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v46 = &v83 - v45;
  v91 = sub_1E68B1E40();
  v95 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v48 = &v83 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v93 = &v83 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v94 = &v83 - v52;
  v53 = v87;
  v54 = v100;
  v55 = v101;
  sub_1E6852DC4();
  v56 = v96;
  sub_1E68B23F0();
  v57 = v86;
  sub_1E68B2920();
  (*(OpaqueTypeConformance2 + 8))(v56, v98);
  (*(v88 + 8))(v53, v44);
  v58 = v99;
  sub_1E68B2190();
  v138 = v44;
  v139 = v57;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v98 = v48;
  v59 = OpaqueTypeMetadata2;
  sub_1E68B2950();
  (*(v102 + 8))(v58, v103);
  (*(v92 + 8))(v46, v59);
  v60 = v54;
  v61 = (v55 + *(v54 + 80));
  v63 = *v61;
  v62 = v61[1];
  v64 = v61[2];
  v65 = v61[3];
  if (v65)
  {
    v96 = *v61;
    v99 = v62;
    LODWORD(v102) = v64;
    v103 = v65;
  }

  else
  {
    v96 = 0;
    LODWORD(v102) = 0;
    v103 = MEMORY[0x1E69E7CC0];
    v99 = 0xE000000000000000;
  }

  v66 = v105;
  v67 = v106;
  (*(v106 + 16))(v105, v55, v60);
  v68 = (*(v67 + 80) + 64) & ~*(v67 + 80);
  v69 = swift_allocObject();
  v70 = v108;
  *(v69 + 2) = v107;
  *(v69 + 3) = v70;
  v71 = v114;
  *(v69 + 4) = v109;
  *(v69 + 5) = v71;
  v72 = v111;
  *(v69 + 6) = v110;
  *(v69 + 7) = v72;
  (*(v67 + 32))(&v69[v68], v66, v60);
  sub_1E673F228(v63, v62, v64, v65);
  v73 = v102;
  v74 = v93;
  v75 = v96;
  v76 = v98;
  v77 = v99;
  v78 = v91;
  sub_1E68B1E20();

  sub_1E673F0D4(v75, v77, v73 & 1);

  v79 = *(v95 + 8);
  v79(v76, v78);
  v115 = OpaqueTypeConformance2;
  v116 = v113;
  v80 = swift_getWitnessTable();
  v81 = v94;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v74, v78, v80);
  v79(v74, v78);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v81, v78, v80);
  return (v79)(v81, v78);
}

uint64_t sub_1E6854380(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for ActionCardView() + 96);
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;

  sub_1E677A174(v2);
}

uint64_t sub_1E685440C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void, void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v113 = a7;
  v114 = a6;
  v123 = a5;
  v124 = a2;
  v125 = a4;
  v116 = a3;
  v117 = a1;
  v121 = a8;
  sub_1E68B2440();
  v132 = sub_1E68B1E40();
  v133 = sub_1E68B1E40();
  v134 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099928);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099930);
  v127 = sub_1E68B1E40();
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  v126 = MEMORY[0x1E6981F48];
  swift_getWitnessTable();
  sub_1E68B2CC0();
  v129 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0981E8);
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0);
  v8 = sub_1E68B1E40();
  v9 = sub_1E68B1E40();
  WitnessTable = swift_getWitnessTable();
  v227 = sub_1E673F530(&qword_1EE2EA5D8, &qword_1ED0981E8);
  v224 = swift_getWitnessTable();
  v225 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0);
  v222 = swift_getWitnessTable();
  v223 = MEMORY[0x1E697E5D8];
  v10 = swift_getWitnessTable();
  v11 = MEMORY[0x1E6981CD8];
  v12 = MEMORY[0x1E6981CD0];
  swift_getOpaqueTypeMetadata2();
  v214 = v8;
  v215 = v11;
  v216 = v9;
  v217 = v9;
  v218 = v222;
  v219 = v12;
  v220 = v10;
  v221 = v10;
  swift_getOpaqueTypeConformance2();
  v130 = sub_1E68B1F40();
  v13 = sub_1E68B1E40();
  v108 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v107 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v112 = &v105 - v16;
  v128 = sub_1E68B1E40();
  v17 = sub_1E68B1E40();
  sub_1E68B3750();
  sub_1E68B1E40();
  v18 = v113;
  v213 = v113;
  v211 = swift_getWitnessTable();
  v19 = MEMORY[0x1E697E5D8];
  v212 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1E68B1F40();
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E68B1E40();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099920);
  v20 = v114;
  v209 = v114;
  v210 = v19;
  v21 = v127;
  v22 = swift_getWitnessTable();
  v214 = v21;
  v215 = v22;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  sub_1E68B1E40();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v127 = sub_1E68B2CE0();
  v23 = sub_1E68B1E40();
  v106 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v105 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v109 = &v105 - v27;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099918);
  v129 = v17;
  v28 = sub_1E68B1E40();
  v29 = sub_1E68B2220();
  v111 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v110 = &v105 - v30;
  v115 = v28;
  v105 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v105 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v105 - v35;
  v118 = v37;
  v38 = sub_1E68B2220();
  v119 = *(v38 - 8);
  v120 = v38;
  MEMORY[0x1EEE9AC00](v38);
  v126 = &v105 - v39;
  v214 = v124;
  v215 = v116;
  v40 = v123;
  v216 = v125;
  v217 = v123;
  v218 = v20;
  v219 = v18;
  v41 = type metadata accessor for ActionCardView();
  v42 = *(v117 + *(v41 + 84));
  v43 = MEMORY[0x1E697EBF8];
  v131 = v13;
  v122 = v23;
  if (v42)
  {
    v44 = MEMORY[0x1E697F568];
    if (v42 == 1)
    {
      sub_1E684E920(v41, v25);
      v169 = swift_getWitnessTable();
      v170 = v44;
      v45 = v44;
      v46 = swift_getWitnessTable();
      v47 = v109;
      j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v25, v23, v46);
      v125 = *(v106 + 8);
      v125(v25, v23);
      j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v47, v23, v46);
      v167 = v40;
      v168 = v45;
      v165 = swift_getWitnessTable();
      v166 = v43;
      v48 = swift_getWitnessTable();
      v124 = MEMORY[0x1E697EC18];
      v49 = sub_1E673F530(&qword_1EE2EA648, &qword_1ED099918);
      v163 = v48;
      v164 = v49;
      v50 = v115;
      v51 = swift_getWitnessTable();
      v52 = v110;
      sub_1E6744DB8(v25, v50, v23);
      v161 = v51;
      v162 = v46;
      v53 = v43;
      v54 = v118;
      v117 = swift_getWitnessTable();
      v55 = sub_1E6856E40(&qword_1EE2EA588, MEMORY[0x1E697CBE8]);
      v56 = v123;
      v159 = v123;
      v160 = v55;
      v157 = swift_getWitnessTable();
      v158 = MEMORY[0x1E697F568];
      v155 = swift_getWitnessTable();
      v156 = v53;
      v57 = swift_getWitnessTable();
      v58 = swift_getWitnessTable();
      v153 = v57;
      v154 = v58;
      v59 = v56;
      swift_getWitnessTable();
      sub_1E6744CC0(v52, v54);
      (*(v111 + 8))(v52, v54);
      v60 = v125;
      v125(v25, v23);
      v60(v109, v23);
    }

    else
    {
      v74 = v107;
      sub_1E684AAB4(v41, v107);
      v75 = sub_1E6856E40(&qword_1EE2EA588, MEMORY[0x1E697CBE8]);
      v59 = v40;
      v207 = v40;
      v208 = v75;
      v205 = swift_getWitnessTable();
      v206 = v44;
      v203 = swift_getWitnessTable();
      v204 = v43;
      v76 = swift_getWitnessTable();
      v77 = swift_getWitnessTable();
      v201 = v76;
      v202 = v77;
      v78 = v131;
      v79 = swift_getWitnessTable();
      v80 = v112;
      v81 = v79;
      j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v74, v78, v79);
      v125 = *(v108 + 8);
      v125(v74, v78);
      j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v80, v78, v81);
      v199 = v59;
      v200 = MEMORY[0x1E697F568];
      v197 = swift_getWitnessTable();
      v198 = v43;
      v82 = swift_getWitnessTable();
      v83 = sub_1E673F530(&qword_1EE2EA648, &qword_1ED099918);
      v195 = v82;
      v196 = v83;
      v84 = swift_getWitnessTable();
      v193 = swift_getWitnessTable();
      v194 = MEMORY[0x1E697F568];
      v85 = swift_getWitnessTable();
      v191 = v84;
      v192 = v85;
      v86 = v118;
      swift_getWitnessTable();
      sub_1E6744DB8(v74, v86, v78);
      v87 = v74;
      v88 = v125;
      v125(v87, v78);
      v88(v112, v78);
    }
  }

  else
  {
    v61 = MEMORY[0x1E697F568];
    sub_1E684D498(v41, v33);
    v151 = v40;
    v152 = v61;
    v149 = swift_getWitnessTable();
    v150 = v43;
    v62 = swift_getWitnessTable();
    v124 = MEMORY[0x1E697EC18];
    v63 = sub_1E673F530(&qword_1EE2EA648, &qword_1ED099918);
    v147 = v62;
    v148 = v63;
    v64 = v115;
    v65 = swift_getWitnessTable();
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v33, v64, v65);
    v125 = *(v105 + 8);
    v125(v33, v64);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v36, v64, v65);
    v145 = swift_getWitnessTable();
    v146 = v61;
    v66 = swift_getWitnessTable();
    v67 = v110;
    sub_1E6744CC0(v33, v64);
    v143 = v65;
    v144 = v66;
    v68 = v118;
    v117 = swift_getWitnessTable();
    v69 = sub_1E6856E40(&qword_1EE2EA588, MEMORY[0x1E697CBE8]);
    v70 = v123;
    v141 = v123;
    v142 = v69;
    v139 = swift_getWitnessTable();
    v140 = MEMORY[0x1E697F568];
    v137 = swift_getWitnessTable();
    v138 = MEMORY[0x1E697EBF8];
    v71 = swift_getWitnessTable();
    v72 = swift_getWitnessTable();
    v135 = v71;
    v136 = v72;
    swift_getWitnessTable();
    sub_1E6744CC0(v67, v68);
    (*(v111 + 8))(v67, v68);
    v73 = v125;
    v125(v33, v64);
    v73(v36, v64);
    v59 = v70;
  }

  v189 = v59;
  v89 = MEMORY[0x1E697F568];
  v190 = MEMORY[0x1E697F568];
  v187 = swift_getWitnessTable();
  v90 = v59;
  v91 = MEMORY[0x1E697EBF8];
  v188 = MEMORY[0x1E697EBF8];
  v92 = swift_getWitnessTable();
  v93 = sub_1E673F530(&qword_1EE2EA648, &qword_1ED099918);
  v185 = v92;
  v186 = v93;
  v94 = swift_getWitnessTable();
  v183 = swift_getWitnessTable();
  v184 = v89;
  v95 = swift_getWitnessTable();
  v181 = v94;
  v182 = v95;
  v96 = swift_getWitnessTable();
  v97 = sub_1E6856E40(&qword_1EE2EA588, MEMORY[0x1E697CBE8]);
  v179 = v90;
  v180 = v97;
  v177 = swift_getWitnessTable();
  v178 = v89;
  v175 = swift_getWitnessTable();
  v176 = v91;
  v98 = swift_getWitnessTable();
  v99 = swift_getWitnessTable();
  v173 = v98;
  v174 = v99;
  v100 = swift_getWitnessTable();
  v171 = v96;
  v172 = v100;
  v101 = v120;
  v102 = swift_getWitnessTable();
  v103 = v126;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v126, v101, v102);
  return (*(v119 + 8))(v103, v101);
}

uint64_t sub_1E6855658@<X0>(uint64_t a1@<X8>)
{
  result = sub_1E68B2080();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1E68556BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E68B2020();
  *a1 = result;
  return result;
}

uint64_t sub_1E6855734(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099A18);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1E67612FC(a1, &v5 - v3, &qword_1ED099A18);
  return sub_1E68B2070();
}

BOOL _s15FitnessCanvasUI20ActionCardViewLayoutV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if ((vminvq_u8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))), vuzp1q_s32(vceqq_f64(*(a1 + 32), *(a2 + 32)), vceqq_f64(*(a1 + 48), *(a2 + 48)))), vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 64), *(a2 + 64)), vceqq_f64(*(a1 + 80), *(a2 + 80))), vuzp1q_s32(vceqq_f64(*(a1 + 96), *(a2 + 96)), vceqq_f64(*(a1 + 112), *(a2 + 112)))))) & 1) != 0 && vaddvq_s16(vandq_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 128), *(a2 + 128)), vceqq_f64(*(a1 + 144), *(a2 + 144))), vuzp1q_s32(vceqq_f64(*(a1 + 160), *(a2 + 160)), vceqq_f64(*(a1 + 176), *(a2 + 176)))), xmmword_1E68C3600)) == 255 && *(a1 + 192) == *(a2 + 192) && *(a1 + 200) == *(a2 + 200) && *(a1 + 208) == *(a2 + 208) && *(a1 + 216) == *(a2 + 216))
  {
    v4 = *(a1 + 240);
    if (*(a1 + 232))
    {
      if (!*(a2 + 232))
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 224) == *(a2 + 224))
      {
        v5 = *(a2 + 232);
      }

      else
      {
        v5 = 1;
      }

      if (v5)
      {
        return 0;
      }
    }

    return v4 == *(a2 + 240);
  }

  return result;
}

unint64_t sub_1E6855924()
{
  result = qword_1EE2EB378;
  if (!qword_1EE2EB378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EB378);
  }

  return result;
}

unint64_t sub_1E685597C()
{
  result = qword_1ED099908;
  if (!qword_1ED099908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099908);
  }

  return result;
}

__n128 __swift_memcpy248_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_1E6855A1C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 248))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E6855A3C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *result = (a2 - 1);
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

  *(result + 248) = v3;
  return result;
}

void sub_1E6855ACC()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1E673ED38();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        sub_1E68B3750();
        if (v3 <= 0x3F)
        {
          sub_1E673ED88();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1E6855BC0(int *a1, unsigned int a2, void *a3)
{
  v4 = a3[2];
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(a3[3] - 8);
  v8 = *(v7 + 84);
  v9 = a3[4];
  v10 = *(v9 - 8);
  if (v6 <= v8)
  {
    v11 = *(v7 + 84);
  }

  else
  {
    v11 = *(v5 + 84);
  }

  v12 = *(v10 + 84);
  v13 = *(v5 + 80);
  v14 = *(v7 + 80);
  v15 = *(v10 + 80);
  v16 = *(v10 + 64);
  if (v12)
  {
    v17 = v12 - 1;
  }

  else
  {
    v17 = 0;
  }

  if (v11 <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v11;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  if (v12)
  {
    v19 = v16;
  }

  else
  {
    v19 = v16 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = *(*(v4 - 8) + 64) + 7;
  v21 = v14 + 33;
  v22 = *(*(a3[3] - 8) + 64) + v15;
  v23 = v19 + 7;
  if (v18 < a2)
  {
    v24 = ((v23 + ((v22 + ((v21 + ((((((v20 + ((v13 + 248) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & ~v14)) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 16;
    v25 = a2 - v18;
    v26 = v24 & 0xFFFFFFF8;
    if ((v24 & 0xFFFFFFF8) != 0)
    {
      v27 = 2;
    }

    else
    {
      v27 = v25 + 1;
    }

    if (v27 >= 0x10000)
    {
      v28 = 4;
    }

    else
    {
      v28 = 2;
    }

    if (v27 < 0x100)
    {
      v28 = 1;
    }

    if (v27 >= 2)
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    if (v29 > 1)
    {
      if (v29 == 2)
      {
        v30 = *(a1 + v24);
        if (v30)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v30 = *(a1 + v24);
        if (v30)
        {
          goto LABEL_31;
        }
      }
    }

    else if (v29)
    {
      v30 = *(a1 + v24);
      if (v30)
      {
LABEL_31:
        v31 = v30 - 1;
        if (v26)
        {
          v31 = 0;
          v32 = *a1;
        }

        else
        {
          v32 = 0;
        }

        return v18 + (v32 | v31) + 1;
      }
    }
  }

  v33 = (a1 + v13 + 248) & ~v13;
  if (v6 == v18)
  {
    v34 = *(v5 + 48);

    return v34(v33, v6, v4);
  }

  v36 = (v21 + ((((((v20 + v33) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & ~v14;
  if (v8 == v18)
  {
    v37 = *(v7 + 48);

    return v37(v36);
  }

  v38 = (v22 + v36) & ~v15;
  if (v17 == v18)
  {
    if (v12 >= 2)
    {
      v40 = (*(*(v9 - 8) + 48))(v38, v12, v9);
      if (v40 >= 2)
      {
        return v40 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v39 = *((v23 + v38) & 0xFFFFFFFFFFFFFFF8);
  if (v39 >= 0xFFFFFFFF)
  {
    LODWORD(v39) = -1;
  }

  return (v39 + 1);
}

_DWORD *sub_1E6855F00(_DWORD *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = 0;
  v6 = *(a4[2] - 8);
  v7 = *(v6 + 84);
  v8 = *(a4[3] - 8);
  v9 = *(v8 + 84);
  if (v7 <= v9)
  {
    v10 = *(v8 + 84);
  }

  else
  {
    v10 = *(v6 + 84);
  }

  v11 = a4[4];
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  v14 = *(v6 + 80);
  v15 = *(*(a4[2] - 8) + 64);
  v16 = *(v8 + 80);
  v17 = *(*(a4[3] - 8) + 64);
  v18 = *(v12 + 80);
  if (v13)
  {
    v19 = v13 - 1;
  }

  else
  {
    v19 = 0;
  }

  if (v10 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v10;
  }

  if (v20 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  v21 = v15 + 7;
  v22 = (v17 + v18 + ((v16 + 33 + ((((((v15 + 7 + ((v14 + 248) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & ~v16)) & ~v18;
  if (v13)
  {
    v23 = *(*(v11 - 8) + 64);
  }

  else
  {
    v23 = *(*(v11 - 8) + 64) + 1;
  }

  v24 = v23 + 7;
  v25 = ((v24 + v22) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v20 < a3)
  {
    v26 = a3 - v20;
    if (v25)
    {
      v27 = 2;
    }

    else
    {
      v27 = v26 + 1;
    }

    if (v27 >= 0x10000)
    {
      v5 = 4;
    }

    else
    {
      v5 = 2;
    }

    if (v27 < 0x100)
    {
      v5 = 1;
    }

    if (v27 < 2)
    {
      v5 = 0;
    }
  }

  if (a2 > v20)
  {
    if (v25)
    {
      v28 = 1;
    }

    else
    {
      v28 = a2 - v20;
    }

    if (v25)
    {
      v29 = ~v20 + a2;
      v30 = result;
      bzero(result, v25);
      result = v30;
      *v30 = v29;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + v25) = v28;
      }

      else
      {
        *(result + v25) = v28;
      }
    }

    else if (v5)
    {
      *(result + v25) = v28;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + v25) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_44;
    }

    *(result + v25) = 0;
  }

  else if (v5)
  {
    *(result + v25) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_44;
  }

  if (!a2)
  {
    return result;
  }

LABEL_44:
  v31 = (result + v14 + 248) & ~v14;
  if (v7 == v20)
  {
    v32 = *(v6 + 56);

    return v32(v31);
  }

  else
  {
    v33 = (v16 + 33 + ((((((v21 + v31) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & ~v16;
    if (v9 == v20)
    {
      v34 = *(v8 + 56);

      return v34(v33);
    }

    else
    {
      result = ((v17 + v18 + v33) & ~v18);
      if (v19 == v20)
      {
        v35 = *(v12 + 56);
        v36 = a2 + 1;

        return v35(result, v36, v13, v11);
      }

      else
      {
        v37 = ((result + v24) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v37 = a2 & 0x7FFFFFFF;
          v37[1] = 0;
        }

        else
        {
          *v37 = a2 - 1;
        }
      }
    }
  }

  return result;
}

unint64_t sub_1E68562AC()
{
  result = qword_1ED099910;
  if (!qword_1ED099910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099910);
  }

  return result;
}

unint64_t sub_1E6856304()
{
  result = qword_1EE2EB368;
  if (!qword_1EE2EB368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EB368);
  }

  return result;
}

unint64_t sub_1E685635C()
{
  result = qword_1EE2EB370;
  if (!qword_1EE2EB370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EB370);
  }

  return result;
}

uint64_t objectdestroyTm_8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v11 = *(v0 + 32);
  v3 = type metadata accessor for ActionCardView();
  v4 = v0 + ((*(*(v3 - 1) + 80) + 64) & ~*(*(v3 - 1) + 80));
  (*(*(v2 - 8) + 8))(v4 + v3[17], v2);
  v5 = v4 + v3[18];
  if (*(v5 + 24))
  {
    sub_1E673F0D4(*v5, *(v5 + 8), *(v5 + 16));
  }

  v6 = v4 + v3[19];
  if (*(v6 + 24))
  {
    sub_1E673F0D4(*v6, *(v6 + 8), *(v6 + 16));
  }

  v7 = v4 + v3[20];
  if (*(v7 + 24))
  {
    sub_1E673F0D4(*v7, *(v7 + 8), *(v7 + 16));
  }

  (*(*(v1 - 8) + 8))(v4 + v3[22], v1);
  v8 = v3[23];
  v9 = *(v11 - 8);
  if (!(*(v9 + 48))(v4 + v8, 1, v11))
  {
    (*(v9 + 8))(v4 + v8, v11);
  }

  return swift_deallocObject();
}

uint64_t sub_1E6856730(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099960);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E68567A0()
{
  result = qword_1ED099990;
  if (!qword_1ED099990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099970);
    sub_1E685682C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099990);
  }

  return result;
}

unint64_t sub_1E685682C()
{
  result = qword_1ED099998;
  if (!qword_1ED099998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099988);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099968);
    sub_1E673F530(&qword_1EE2EA4B8, &qword_1ED099968);
    swift_getOpaqueTypeConformance2();
    sub_1E673F530(&qword_1EE2EA598, &qword_1ED096E48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099998);
  }

  return result;
}

unint64_t sub_1E68569B0()
{
  result = qword_1EE2EA7B0;
  if (!qword_1EE2EA7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099920);
    sub_1E6856A3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA7B0);
  }

  return result;
}

unint64_t sub_1E6856A3C()
{
  result = qword_1EE2EA568;
  if (!qword_1EE2EA568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0999A0);
    sub_1E673F530(&qword_1EE2EA4D0, &qword_1ED0999A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA568);
  }

  return result;
}

unint64_t sub_1E6856AEC()
{
  result = qword_1EE2EA730;
  if (!qword_1EE2EA730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0999C0);
    sub_1E6856B78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA730);
  }

  return result;
}

unint64_t sub_1E6856B78()
{
  result = qword_1EE2EA7D0;
  if (!qword_1EE2EA7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0999E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098170);
    sub_1E67C5A34();
    swift_getOpaqueTypeConformance2();
    sub_1E673F530(&qword_1EE2EA598, &qword_1ED096E48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA7D0);
  }

  return result;
}

unint64_t sub_1E6856C6C()
{
  result = qword_1EE2EA808;
  if (!qword_1EE2EA808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0999F8);
    sub_1E673F530(&qword_1EE2EA5B8, &qword_1ED097260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA808);
  }

  return result;
}

unint64_t sub_1E6856D24()
{
  result = qword_1EE2EA768;
  if (!qword_1EE2EA768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0999D0);
    sub_1E6856C6C();
    sub_1E673F530(&qword_1EE2EA5A0, &qword_1ED0978D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA768);
  }

  return result;
}

uint64_t sub_1E6856E40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E6856EC0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1E6856F3C()
{
  result = qword_1EE2EA718;
  if (!qword_1EE2EA718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099A28);
    sub_1E6856FC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA718);
  }

  return result;
}

unint64_t sub_1E6856FC8()
{
  result = qword_1EE2EA7C0;
  if (!qword_1EE2EA7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099A30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0999D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099968);
    sub_1E6856D24();
    sub_1E673F530(&qword_1EE2EA4B8, &qword_1ED099968);
    swift_getOpaqueTypeConformance2();
    sub_1E673F530(&qword_1EE2EA598, &qword_1ED096E48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA7C0);
  }

  return result;
}

unint64_t sub_1E685711C()
{
  result = qword_1EE2EA728;
  if (!qword_1EE2EA728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099A20);
    sub_1E68571A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA728);
  }

  return result;
}

unint64_t sub_1E68571A8()
{
  result = qword_1EE2EA7C8;
  if (!qword_1EE2EA7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ED099A38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0999F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099968);
    sub_1E6856C6C();
    sub_1E673F530(&qword_1EE2EA4B8, &qword_1ED099968);
    swift_getOpaqueTypeConformance2();
    sub_1E673F530(&qword_1EE2EA598, &qword_1ED096E48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA7C8);
  }

  return result;
}

uint64_t sub_1E68572FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6152746365707361 && a2 == 0xEB000000006F6974;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001E68E2FA0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x615272656E726F63 && a2 == 0xEC00000073756964 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E68E2FC0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E68E2FE0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x646150656C746974 && a2 == 0xEC000000676E6964 || (sub_1E68B3B00() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xEF676E6964646150 || (sub_1E68B3B00() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x506E6F6974706163 && a2 == 0xEE00676E69646461 || (sub_1E68B3B00() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E68E3000 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E68E3020 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6E694C656C746974 && a2 == 0xEE0074696D694C65 || (sub_1E68B3B00() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E68E2BA0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E68E2BC0 == a2)
  {

    return 12;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t LazyCanvasSectionDescriptor.items.getter(uint64_t a1)
{
  sub_1E677293C(a1);
}

uint64_t LazyCanvasSectionDescriptor.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LazyCanvasSectionDescriptor.layout.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 180);
  v5 = type metadata accessor for CanvasSectionLayout();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t LazyCanvasSectionDescriptor.header.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 184);
  type metadata accessor for CanvasSectionHeader();
  v5 = sub_1E68B3750();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t LazyCanvasSectionDescriptor.metrics.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 196);
  v5 = sub_1E68B3750();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t LazyCanvasSectionDescriptor.init(identifier:layout:header:footer:items:metrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v18 = *a5;
  *a8 = a1;
  *(a8 + 1) = a2;
  v9 = type metadata accessor for LazyCanvasSectionDescriptor();
  v10 = v9[45];
  v11 = type metadata accessor for CanvasSectionLayout();
  (*(*(v11 - 8) + 32))(&a8[v10], a3, v11);
  v12 = v9[46];
  type metadata accessor for CanvasSectionHeader();
  v13 = sub_1E68B3750();
  (*(*(v13 - 8) + 32))(&a8[v12], a4, v13);
  a8[v9[47]] = v18;
  *&a8[v9[48]] = a6;
  v14 = v9[49];
  v15 = sub_1E68B3750();
  return (*(*(v15 - 8) + 32))(&a8[v14], a7, v15);
}