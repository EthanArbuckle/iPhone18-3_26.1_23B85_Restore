uint64_t DataItemDescriptor.hashValue.getter(uint64_t a1)
{
  sub_1E68B3B70();
  DataItemDescriptor.hash(into:)(v3, a1);
  return sub_1E68B3BB0();
}

uint64_t sub_1E678C2A0(uint64_t a1, uint64_t a2)
{
  sub_1E68B3B70();
  DataItemDescriptor.hash(into:)(v4, a2);
  return sub_1E68B3BB0();
}

uint64_t DataItemDescriptor.id.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097A18);
    swift_getTupleTypeMetadata2();

    return (*(*(AssociatedTypeWitness - 8) + 32))(a2, v9, AssociatedTypeWitness);
  }

  else
  {
    (*(v4 + 32))(v7, v9, v3);
    sub_1E68B3830();
    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t DataItemDescriptor<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v57 = a4;
  v68 = a5;
  v8 = type metadata accessor for DataItemDescriptor.PlaceholderCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v66 = v8;
  v59 = sub_1E68B3A20();
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v69 = &v52 - v9;
  v10 = type metadata accessor for DataItemDescriptor.ItemCodingKeys();
  v62 = swift_getWitnessTable();
  v63 = v10;
  v56 = sub_1E68B3A20();
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v64 = &v52 - v11;
  type metadata accessor for DataItemDescriptor.CodingKeys();
  swift_getWitnessTable();
  v12 = sub_1E68B3A20();
  v70 = *(v12 - 8);
  v71 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v52 - v13;
  v61 = a2;
  v60 = a3;
  v15 = type metadata accessor for DataItemDescriptor();
  v67 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v52 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v52 - v22;
  v24 = a1;
  v25 = a1[3];
  v78 = v24;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  v72 = v14;
  v26 = v73;
  sub_1E68B3BC0();
  if (!v26)
  {
    v54 = v21;
    v73 = v18;
    v53 = v23;
    v27 = v69;
    v28 = v71;
    v29 = v72;
    *&v74 = sub_1E68B3A10();
    sub_1E68B33B0();
    swift_getWitnessTable();
    *&v76 = sub_1E68B37A0();
    *(&v76 + 1) = v30;
    *&v77 = v31;
    *(&v77 + 1) = v32;
    sub_1E68B3790();
    swift_getWitnessTable();
    sub_1E68B36B0();
    v33 = v74;
    if (v74 == 2 || (v52 = v76, v74 = v76, v75 = v77, (sub_1E68B36E0() & 1) == 0))
    {
      v38 = sub_1E68B3870();
      swift_allocError();
      v39 = v28;
      v41 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050);
      *v41 = v15;
      sub_1E68B3980();
      sub_1E68B3860();
      (*(*(v38 - 8) + 104))(v41, *MEMORY[0x1E69E6AF8], v38);
      swift_willThrow();
      (*(v70 + 8))(v29, v39);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v33)
      {
        LOBYTE(v74) = 1;
        v34 = v27;
        sub_1E68B3970();
        v35 = v68;
        swift_getAssociatedTypeWitness();
        LOBYTE(v74) = 0;
        v36 = v73;
        v37 = v59;
        sub_1E68B3A00();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097A18);
        swift_getTupleTypeMetadata2();
        LOBYTE(v74) = 1;
        sub_1E678D648(&qword_1ED097AF8, sub_1E678D5F4);
        sub_1E68B3A00();
        (*(v58 + 8))(v34, v37);
        (*(v70 + 8))(v72, v71);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v48 = v36;
        v49 = v67;
      }

      else
      {
        LOBYTE(v74) = 0;
        v42 = v64;
        sub_1E68B3970();
        v49 = v67;
        v44 = v54;
        v45 = v42;
        v46 = v56;
        sub_1E68B3A00();
        v47 = v70;
        (*(v55 + 8))(v45, v46);
        (*(v47 + 8))(v29, v28);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v48 = v44;
        v35 = v68;
      }

      v50 = *(v49 + 32);
      v51 = v53;
      v50(v53, v48, v15);
      v50(v35, v51, v15);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v78);
}

uint64_t DataItemDescriptor<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v49 = a3;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v47 = type metadata accessor for DataItemDescriptor.PlaceholderCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1E68B3AC0();
  v51 = *(v7 - 8);
  v52 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v50 = v37 - v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = *(AssociatedTypeWitness - 8);
  v44 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v54 = v37 - v10;
  v11 = type metadata accessor for DataItemDescriptor.ItemCodingKeys();
  v12 = swift_getWitnessTable();
  v39 = v11;
  v37[1] = v12;
  v13 = sub_1E68B3AC0();
  v41 = *(v13 - 8);
  v42 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v38 = v37 - v15;
  v40 = *(v5 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v37[0] = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v5;
  v46 = v6;
  type metadata accessor for DataItemDescriptor.CodingKeys();
  swift_getWitnessTable();
  v57 = sub_1E68B3AC0();
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v22 = v37 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E68B3BD0();
  (*(v18 + 16))(v20, v53, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097A18);
    v24 = v44;
    v53 = v23;
    v25 = *&v20[*(swift_getTupleTypeMetadata2() + 48)];
    v26 = v43;
    (*(v43 + 32))(v54, v20, v24);
    v62 = 1;
    v27 = v50;
    sub_1E68B3A30();
    v61 = 0;
    v28 = v52;
    v29 = v56;
    sub_1E68B3AB0();
    if (v29)
    {

      (*(v51 + 8))(v27, v28);
      (*(v26 + 8))(v54, v24);
      return (*(v55 + 8))(v22, v57);
    }

    else
    {
      v58 = v25;
      v60 = 1;
      sub_1E678D648(&qword_1ED097B08, sub_1E678D6C0);
      sub_1E68B3AB0();
      (*(v51 + 8))(v27, v28);
      (*(v26 + 8))(v54, v24);
      (*(v55 + 8))(v22, v57);
    }
  }

  else
  {
    v31 = v40;
    v32 = v37[0];
    v33 = v48;
    (*(v40 + 32))(v37[0], v20, v48);
    v59 = 0;
    v34 = v38;
    v35 = v57;
    sub_1E68B3A30();
    v36 = v42;
    sub_1E68B3AB0();
    (*(v41 + 8))(v34, v36);
    (*(v31 + 8))(v32, v33);
    return (*(v55 + 8))(v22, v35);
  }
}

unint64_t sub_1E678D5F4()
{
  result = qword_1ED097B00;
  if (!qword_1ED097B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097B00);
  }

  return result;
}

uint64_t sub_1E678D648(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097A18);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E678D6C0()
{
  result = qword_1ED097B10[0];
  if (!qword_1ED097B10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED097B10);
  }

  return result;
}

unint64_t sub_1E678D718()
{
  result = qword_1EE2EB720[0];
  if (!qword_1EE2EB720[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2EB720);
  }

  return result;
}

uint64_t sub_1E678D7B8()
{
  TupleTypeMetadata2 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097A18);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return TupleTypeMetadata2;
}

uint64_t sub_1E678D888(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = ((*(*(swift_getAssociatedTypeWitness() - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if ((v7 + 1) <= 3)
  {
    v12 = ((a2 + ~(-1 << v9) - 254) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v12 < 2)
    {
LABEL_26:
      v14 = *(a1 + v7);
      if (v14 >= 2)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_26;
  }

LABEL_15:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return (v8 | v13) + 255;
}

void sub_1E678DA0C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(*(a4 + 16) - 8) + 64);
  v8 = ((*(*(swift_getAssociatedTypeWitness() - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  v9 = v8 + 1;
  if (a3 < 0xFF)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 + ~(-1 << (8 * v9)) - 254) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (a2 > 0xFE)
  {
    v11 = a2 - 255;
    if (v9 >= 4)
    {
      bzero(a1, v8 + 1);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v12 = (v11 >> (8 * v9)) + 1;
    if (v8 != -1)
    {
      v15 = v11 & ~(-1 << (8 * v9));
      bzero(a1, v9);
      if (v9 != 3)
      {
        if (v9 == 2)
        {
          *a1 = v15;
          if (v10 > 1)
          {
LABEL_39:
            if (v10 == 2)
            {
              *&a1[v9] = v12;
            }

            else
            {
              *&a1[v9] = v12;
            }

            return;
          }
        }

        else
        {
          *a1 = v11;
          if (v10 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v10)
        {
          a1[v9] = v12;
        }

        return;
      }

      *a1 = v15;
      a1[2] = BYTE2(v15);
    }

    if (v10 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v10 <= 1)
  {
    if (v10)
    {
      a1[v9] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v8] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v10 == 2)
  {
    *&a1[v9] = 0;
    goto LABEL_24;
  }

  *&a1[v9] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

unint64_t sub_1E678DC30()
{
  result = qword_1ED097C98;
  if (!qword_1ED097C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097C98);
  }

  return result;
}

unint64_t sub_1E678DD84()
{
  result = qword_1ED097CA0;
  if (!qword_1ED097CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097CA0);
  }

  return result;
}

unint64_t sub_1E678DDDC()
{
  result = qword_1ED097CA8;
  if (!qword_1ED097CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097CA8);
  }

  return result;
}

unint64_t sub_1E678DE34()
{
  result = qword_1ED097CB0;
  if (!qword_1ED097CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097CB0);
  }

  return result;
}

unint64_t sub_1E678DE8C()
{
  result = qword_1ED097CB8;
  if (!qword_1ED097CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097CB8);
  }

  return result;
}

unint64_t sub_1E678DEE0()
{
  result = qword_1EE2EC278;
  if (!qword_1EE2EC278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC278);
  }

  return result;
}

int *StandardLockupConfiguration.init(dynamicTypeSize:caption:artwork:title:subtitle:onSelection:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v13 = *a2;
  v14 = *a4;
  v15 = *a5;
  v16 = sub_1E68B1DE0();
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  result = type metadata accessor for StandardLockupConfiguration();
  *(a8 + result[5]) = v13;
  *(a8 + result[6]) = a3;
  *(a8 + result[7]) = v14;
  *(a8 + result[8]) = v15;
  v18 = (a8 + result[9]);
  *v18 = a6;
  v18[1] = a7;
  return result;
}

uint64_t type metadata accessor for StandardLockupConfiguration()
{
  result = qword_1EE2EACC0;
  if (!qword_1EE2EACC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StandardLockupConfiguration.dynamicTypeSize.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E68B1DE0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StandardLockupConfiguration.caption.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for StandardLockupConfiguration() + 20));
}

uint64_t StandardLockupConfiguration.artwork.getter()
{
  type metadata accessor for StandardLockupConfiguration();
}

uint64_t StandardLockupConfiguration.title.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for StandardLockupConfiguration() + 28));
}

uint64_t StandardLockupConfiguration.subtitle.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for StandardLockupConfiguration() + 32));
}

uint64_t StandardLockupConfiguration.onSelection.getter()
{
  v1 = *(v0 + *(type metadata accessor for StandardLockupConfiguration() + 36));

  return v1;
}

void sub_1E678E214()
{
  sub_1E68B1DE0();
  if (v0 <= 0x3F)
  {
    sub_1E677AAF8();
    if (v1 <= 0x3F)
    {
      sub_1E67482E4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1E678E2C4(uint64_t *a1)
{
  v59 = sub_1E68B1820();
  v2 = *(v59 - 8);
  v3 = MEMORY[0x1EEE9AC00](v59);
  v58 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v65 = &v55 - v5;
  v69 = type metadata accessor for TextContent.Component();
  v6 = MEMORY[0x1EEE9AC00](v69);
  v8 = (&v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v55 - v10;
  v12 = *a1;
  v13 = *(*a1 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = 0;
    v16 = v12 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v66 = *(v9 + 72);
    v57 = (v2 + 32);
    v56 = (v2 + 16);
    v55 = (v2 + 8);
    v70 = MEMORY[0x1E69E7CC0];
    v17 = 0xE000000000000000;
    v67 = &v55 - v10;
    v68 = v8;
    while (1)
    {
      sub_1E678E730(v16, v11);
      sub_1E678E730(v11, v8);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        break;
      }

      if (EnumCaseMultiPayload != 1)
      {
        v31 = v8[1];
        v71 = *v8;
        v72 = v31;
        sub_1E67612A8();
        v32 = sub_1E68B26E0();
        v34 = v33;
        v36 = v35;
        v37 = v17;
        v38 = sub_1E68B2680();
        v62 = v39;
        v63 = v38;
        v64 = v40;
        v61 = v41;
        v42 = v36 & 1;
        v43 = v32;
        v44 = v34;
LABEL_9:
        sub_1E673F0D4(v43, v44, v42);

        sub_1E673F0D4(v14, v37, v15 & 1);

        goto LABEL_4;
      }

      v18 = *v57;
      v60 = v14;
      v19 = v65;
      v20 = v59;
      v18(v65, v8, v59);
      (*v56)(v58, v19, v20);
      v21 = sub_1E68B26D0();
      v23 = v22;
      v25 = v24;
      v26 = sub_1E68B2680();
      v62 = v27;
      v63 = v26;
      v64 = v28;
      v61 = v29;
      sub_1E673F0D4(v21, v23, v25 & 1);

      sub_1E673F0D4(v60, v17, v15 & 1);

      (*v55)(v65, v20);
LABEL_4:
      v17 = v62;
      v14 = v63;
      v70 = v61;
      v15 = v64;
      v11 = v67;
      sub_1E678E794(v67);
      v16 += v66;
      --v13;
      v8 = v68;
      if (!v13)
      {
        return v14;
      }
    }

    sub_1E68B2BA0();
    v45 = sub_1E68B26F0();
    v47 = v46;
    v37 = v17;
    v49 = v48;
    v50 = sub_1E68B2680();
    v62 = v51;
    v63 = v50;
    v64 = v52;
    v61 = v53;
    v42 = v49 & 1;
    v43 = v45;
    v44 = v47;
    goto LABEL_9;
  }

  v14 = 0;
  v70 = MEMORY[0x1E69E7CC0];
  return v14;
}

uint64_t sub_1E678E730(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextContent.Component();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E678E794(uint64_t a1)
{
  v2 = type metadata accessor for TextContent.Component();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_15FitnessCanvasUI10ActionViewO(uint64_t a1)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1E678E820(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E678E868(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1E678E8AC(uint64_t result, unsigned int a2)
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

uint64_t sub_1E678E8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;
  v15[0] = sub_1E678F9F0;
  v15[1] = v12;
  type metadata accessor for DataItemDescriptor();
  FunctionTypeMetadata2 = swift_getFunctionTypeMetadata2();
  sub_1E672890C(v15, FunctionTypeMetadata2, &v16);
  return v16;
}

uint64_t (*sub_1E678E994(uint64_t a1))(uint64_t a1)
{
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5 = swift_allocObject();
  v6 = *(a1 + 32);
  *(v5 + 16) = *(a1 + 16);
  *(v5 + 32) = v6;
  *(v5 + 48) = v4;
  *(v5 + 56) = v3;

  return sub_1E678F9B8;
}

double DataStoreView.init(descriptors:resolver:itemViewBuilder:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9)
{
  v17 = type metadata accessor for DataItemResolver();

  v21 = DataItemResolver.__allocating_init(batchFetch:)(a2, a3);
  WitnessTable = swift_getWitnessTable();
  DataStoreView.init<A>(descriptors:resolver:itemViewBuilder:)(a1, &v21, a4, a5, a6, a7, v17, a9, &v22, WitnessTable);

  v19 = v23;
  result = *&v22;
  *a8 = v22;
  *(a8 + 16) = v19;
  return result;
}

uint64_t DataStoreView.init<A>(descriptors:resolver:itemViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for DataStore();
  *a9 = sub_1E67822D0(a1, 10, a2, a7, a10);
  v19 = sub_1E678E8D4(a3, a4, a5, a6, AssociatedConformanceWitness, a8);
  v21 = v20;
  result = (*(*(a7 - 8) + 8))(a2, a7);
  a9[1] = v19;
  a9[2] = v21;
  return result;
}

double DataStoreView.init(descriptors:itemViewBuilder:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  nullsub_5(a4);
  v14 = type metadata accessor for NullDataItemResolver();
  WitnessTable = swift_getWitnessTable();
  DataStoreView.init<A>(descriptors:resolver:itemViewBuilder:)(a1, v16, a2, a3, a4, a5, v14, a6, &v19, WitnessTable);
  v17 = v20;
  result = *&v19;
  *a7 = v19;
  *(a7 + 16) = v17;
  return result;
}

uint64_t DataStoreView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = a1[2];
  v5 = a1[4];
  v28 = type metadata accessor for DataItemDescriptor();
  swift_getTupleTypeMetadata2();
  v6 = sub_1E68B33B0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = a1[3];
  sub_1E68B1D10();
  v25 = sub_1E68B1E40();
  v33 = v6;
  v34 = AssociatedTypeWitness;
  v35 = v25;
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = sub_1E68B2D40();
  v27 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - v11;
  v13 = *(v2 + 2);
  v23 = *v2;
  sub_1E67820BC();
  v14 = swift_allocObject();
  v15 = a1[5];
  *&v16 = v5;
  *(&v16 + 1) = v15;
  *&v17 = v4;
  *(&v17 + 1) = v24;
  *(v14 + 16) = v17;
  *(v14 + 32) = v16;
  *(v14 + 48) = v23;
  *(v14 + 64) = v13;
  v18 = sub_1E678F6DC();
  v31 = v15;
  v32 = v18;

  v19 = swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B2D20();
  v30 = v19;
  v20 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v10, v7, v20);
  v21 = *(v27 + 8);
  v21(v10, v7);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v12, v7, v20);
  return (v21)(v12, v7);
}

uint64_t sub_1E678F05C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v56 = a6;
  v53 = a5;
  v54 = a4;
  v52 = a3;
  v61 = a1;
  v62 = a2;
  v69 = a9;
  v15 = sub_1E68B3460();
  v67 = *(v15 - 8);
  v68 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v66 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a8;
  v51 = a8;
  v60 = type metadata accessor for DataItemDescriptor();
  v18 = *(v60 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v60);
  v58 = &v50 - v21;
  v64 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v55 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E68B1D10();
  v23 = a7;
  v50 = a7;
  v57 = sub_1E68B1E40();
  v65 = *(v57 - 8);
  v24 = MEMORY[0x1EEE9AC00](v57);
  v59 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v63 = &v50 - v26;
  v76 = a3;
  v77 = a4;
  v78 = a5;
  v27 = v56;
  v72 = v56;
  v73 = v23;
  v74 = v17;
  v75 = a10;
  v28 = type metadata accessor for DataStoreView();
  v29 = sub_1E678E994(v28);
  v30 = v61;
  v31 = v62;
  (v29)(v61, v62);

  v32 = v58;
  v33 = v60;
  (*(v18 + 16))(v58, v31, v60);
  v34 = (*(v18 + 80) + 48) & ~*(v18 + 80);
  v35 = (v19 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 2) = v27;
  v37 = v50;
  v38 = v51;
  *(v36 + 3) = v50;
  *(v36 + 4) = v38;
  *(v36 + 5) = a10;
  (*(v18 + 32))(&v36[v34], v32, v33);
  v39 = &v36[v35];
  v40 = v54;
  *v39 = v52;
  *(v39 + 1) = v40;
  *(v39 + 2) = v53;
  *&v36[(v35 + 31) & 0xFFFFFFFFFFFFFFF8] = v30;

  v41 = v66;
  sub_1E68B3440();
  v42 = v59;
  v43 = v55;
  sub_1E68B29E0();

  (*(v67 + 8))(v41, v68);
  (*(v64 + 8))(v43, v37);
  v44 = sub_1E678F6DC();
  v70 = a10;
  v71 = v44;
  v45 = v57;
  WitnessTable = swift_getWitnessTable();
  v47 = v63;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v42, v45, WitnessTable);
  v48 = *(v65 + 8);
  v48(v42, v45);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v47, v45, WitnessTable);
  return (v48)(v47, v45);
}

uint64_t sub_1E678F558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a6;
  v8[6] = a8;
  v8[3] = a2;
  v8[4] = a5;
  v8[2] = a1;
  sub_1E68B3430();
  v8[7] = sub_1E68B3420();
  v10 = sub_1E68B3400();

  return MEMORY[0x1EEE6DFA0](sub_1E678F5FC, v10, v9);
}

uint64_t sub_1E678F5FC()
{

  v1 = type metadata accessor for DataItemDescriptor();
  sub_1E678B37C(v1);
  sub_1E68B3500();
  sub_1E6781C68();
  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_1E678F6DC()
{
  result = qword_1EE2EA868;
  if (!qword_1EE2EA868)
  {
    sub_1E68B1D10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA868);
  }

  return result;
}

uint64_t sub_1E678F778()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E678F7B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1E678F7FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E678F854()
{
  v2 = v0[2];
  v16 = v0[3];
  v3 = v0[4];
  v4 = *(type metadata accessor for DataItemDescriptor() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 31) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v0 + v6);
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];
  v12 = *(v0 + v7);
  v13 = swift_task_alloc();
  *(v1 + 16) = v13;
  *v13 = v1;
  v13[1] = sub_1E67825C0;

  return sub_1E678F558(v0 + v5, v9, v10, v11, v12, v2, v16, v3);
}

uint64_t sub_1E678F9B8(uint64_t a1)
{
  v2 = *(v1 + 48);
  v4 = a1;
  return v2(&v4);
}

uint64_t View.standardLockupStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  v10[3] = a3;
  v10[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  sub_1E68B27B0();

  return __swift_destroy_boxed_opaque_existential_1(v10);
}

unint64_t sub_1E678FAF8()
{
  result = qword_1EE2EA5C8;
  if (!qword_1EE2EA5C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA5C8);
  }

  return result;
}

uint64_t sub_1E678FB5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextContent.Component() - 8;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1E678E730(v13, v10);
        sub_1E678E730(v14, v7);
        v16 = sub_1E6793C74(v10, v7);
        sub_1E678E794(v7);
        sub_1E678E794(v10);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1E678FCD0(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v32 = a1;
  v33 = a2;
  v6 = sub_1E68B17D0();
  v30 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TextContent.Component();
  v31 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v37 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E68B17E0();
  v26 = *(v11 - 8);
  v27 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E68B17F0();
  v15 = sub_1E6793C2C(&qword_1EE2EDEA8, MEMORY[0x1E69687C8]);
  v16 = sub_1E68B3670();
  v17 = MEMORY[0x1E69E7CC0];
  if (!v16)
  {
    return v17;
  }

  v40 = MEMORY[0x1E69E7CC0];
  v34 = v16;
  sub_1E68B0F30(0, v16 & ~(v16 >> 63), 0);
  v17 = v40;
  v36 = v14;
  sub_1E68B3660();
  if ((v34 & 0x8000000000000000) == 0)
  {
    v35 = v15;
    v38 = v13;
    v18 = 0;
    v29 = (v30 + 2);
    ++v30;
    v28 = v8;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v20 = v5;
      v21 = sub_1E68B36F0();
      (*v29)(v8);
      v21(v39, 0);
      v32(v8);
      if (v4)
      {
        goto LABEL_13;
      }

      v4 = 0;
      (*v30)(v8, v6);
      v40 = v17;
      v23 = *(v17 + 16);
      v22 = *(v17 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1E68B0F30(v22 > 1, v23 + 1, 1);
        v17 = v40;
      }

      *(v17 + 16) = v23 + 1;
      sub_1E67935FC(v37, v17 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v23);
      v5 = v20;
      sub_1E68B36A0();
      ++v18;
      v8 = v28;
      if (v19 == v34)
      {
        (*(v26 + 8))(v38, v27);
        return v17;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_13:
  (*v30)(v8, v6);
  (*(v26 + 8))(v38, v27);

  __break(1u);
  return result;
}

uint64_t sub_1E67900C8(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v25 = a2;
  v23 = sub_1E68B2DB0();
  v26 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a4;
  v9 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v30 = MEMORY[0x1E69E7CC0];
  sub_1E68B0F74(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v28 = v4;
    v11 = 0;
    v10 = v30;
    v12 = v27;
    if (v27 <= a3)
    {
      v12 = a3;
    }

    v21 = v12 - a3 + 1;
    v22 = v26 + 32;
    while (v11 < v9)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_17;
      }

      v29 = a3 + v11;
      v14 = v8;
      v15 = v28;
      v24(&v29);
      v28 = v15;
      if (v15)
      {
        goto LABEL_22;
      }

      v30 = v10;
      v17 = *(v10 + 16);
      v16 = *(v10 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1E68B0F74(v16 > 1, v17 + 1, 1);
        v10 = v30;
      }

      *(v10 + 16) = v17 + 1;
      v18 = v10 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v17;
      v8 = v14;
      (*(v26 + 32))(v18, v14, v23);
      if (v27 < a3)
      {
        goto LABEL_18;
      }

      if (v21 == ++v11)
      {
        goto LABEL_19;
      }

      if (v13 == v9)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

FitnessCanvasUI::TextContent __swiftcall TextContent.init(stringLiteral:)(Swift::String stringLiteral)
{
  object = stringLiteral._object;
  countAndFlagsBits = stringLiteral._countAndFlagsBits;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097870);
  v5 = *(type metadata accessor for TextContent.Component() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E68B74F0;
  v8 = (v7 + v6);
  *v8 = countAndFlagsBits;
  v8[1] = object;
  result.components._rawValue = swift_storeEnumTagMultiPayload();
  *v4 = v7;
  return result;
}

uint64_t type metadata accessor for TextContent.Component()
{
  result = qword_1EE2EC430;
  if (!qword_1EE2EC430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E6790430(void *a1)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097D58);
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v31 = &v28 - v2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097D60);
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v32 = &v28 - v3;
  v4 = sub_1E68B1820();
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097D68);
  v29 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - v7;
  v9 = type metadata accessor for TextContent.Component();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097D70);
  v12 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v14 = &v28 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E6793ADC();
  sub_1E68B3BD0();
  sub_1E678E730(v39, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v16 = v33;
      v17 = v30;
      v18 = v11;
      v19 = v34;
      (*(v33 + 32))(v30, v18, v34);
      v42 = 1;
      sub_1E6793B84();
      v20 = v32;
      v21 = v40;
      sub_1E68B3A30();
      sub_1E6793C2C(&qword_1EE2EDEA0, MEMORY[0x1E6968848]);
      v22 = v38;
      sub_1E68B3AB0();
      (*(v36 + 8))(v20, v22);
      (*(v16 + 8))(v17, v19);
      return (*(v12 + 8))(v14, v21);
    }

    else
    {
      v43 = 2;
      sub_1E6793B30();
      v25 = v31;
      v26 = v40;
      sub_1E68B3A30();
      v27 = v37;
      sub_1E68B3A70();

      (*(v35 + 8))(v25, v27);
      return (*(v12 + 8))(v14, v26);
    }
  }

  else
  {
    v41 = 0;
    sub_1E6793BD8();
    v24 = v40;
    sub_1E68B3A30();
    sub_1E68B3A70();

    (*(v29 + 8))(v8, v6);
    return (*(v12 + 8))(v14, v24);
  }
}

uint64_t sub_1E67909D8()
{
  v1 = sub_1E68B1820();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TextContent.Component();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E678E730(v0, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v2 + 32))(v4, v7, v1);
      MEMORY[0x1E69523D0](1);
      sub_1E6793C2C(&qword_1EE2EDE98, MEMORY[0x1E6968848]);
      sub_1E68B3140();
      return (*(v2 + 8))(v4, v1);
    }

    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  MEMORY[0x1E69523D0](v10);
  sub_1E68B31F0();
}

uint64_t sub_1E6790BBC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097D98);
  v63 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v70 = &v54 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097DA0);
  v61 = *(v4 - 8);
  v62 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v65 = &v54 - v5;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097DA8);
  v60 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v54 - v6;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097DB0);
  v66 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v8 = &v54 - v7;
  v9 = type metadata accessor for TextContent.Component();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = (&v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v54 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v54 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v54 - v19;
  v21 = a1[3];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1E6793ADC();
  v22 = v71;
  sub_1E68B3BC0();
  if (!v22)
  {
    v55 = v18;
    v56 = v12;
    v57 = v15;
    v23 = v67;
    v24 = v68;
    v58 = 0;
    v25 = v20;
    v71 = v9;
    v26 = v66;
    v28 = v69;
    v27 = v70;
    v29 = sub_1E68B3A10();
    v30 = (2 * *(v29 + 16)) | 1;
    v73 = v29;
    v74 = v29 + 32;
    v75 = 0;
    v76 = v30;
    v31 = sub_1E676F5C0();
    if (v31 == 3 || v75 != v76 >> 1)
    {
      v36 = sub_1E68B3870();
      swift_allocError();
      v38 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050);
      *v38 = v71;
      sub_1E68B3980();
      sub_1E68B3860();
      (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v36);
      swift_willThrow();
    }

    else if (v31)
    {
      v68 = v25;
      if (v31 == 1)
      {
        v77 = 1;
        sub_1E6793B84();
        v32 = v58;
        sub_1E68B3970();
        if (!v32)
        {
          sub_1E68B1820();
          sub_1E6793C2C(&qword_1ED097DB8, MEMORY[0x1E6968848]);
          v33 = v57;
          v34 = v62;
          v35 = v65;
          sub_1E68B3A00();
          (*(v61 + 8))(v35, v34);
          (*(v26 + 8))(v8, v28);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v45 = v68;
          v46 = v64;
LABEL_15:
          sub_1E67935FC(v33, v45);
          sub_1E67935FC(v45, v46);
          return __swift_destroy_boxed_opaque_existential_1(v72);
        }
      }

      else
      {
        v77 = 2;
        sub_1E6793B30();
        v43 = v58;
        sub_1E68B3970();
        v46 = v64;
        if (!v43)
        {
          v44 = v59;
          v50 = sub_1E68B39C0();
          v52 = v51;
          (*(v63 + 8))(v27, v44);
          (*(v26 + 8))(v8, v28);
          swift_unknownObjectRelease();
          v53 = v56;
          *v56 = v50;
          v53[1] = v52;
          swift_storeEnumTagMultiPayload();
          v33 = v53;
          v45 = v68;
          goto LABEL_15;
        }
      }
    }

    else
    {
      v77 = 0;
      sub_1E6793BD8();
      v40 = v58;
      sub_1E68B3970();
      v45 = v25;
      if (!v40)
      {
        v41 = v8;
        v42 = sub_1E68B39C0();
        v58 = 0;
        v47 = v42;
        v49 = v48;
        (*(v60 + 8))(v23, v24);
        (*(v26 + 8))(v41, v28);
        swift_unknownObjectRelease();
        v33 = v55;
        *v55 = v47;
        *(v33 + 8) = v49;
        swift_storeEnumTagMultiPayload();
        v46 = v64;
        goto LABEL_15;
      }
    }

    (*(v26 + 8))(v8, v28);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v72);
}

uint64_t sub_1E6791384(uint64_t a1)
{
  v2 = sub_1E6793B84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E67913C0(uint64_t a1)
{
  v2 = sub_1E6793B84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E67913FC()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x676E69727473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6F626D7973;
  }
}

uint64_t sub_1E6791454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E67945D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E6791488(uint64_t a1)
{
  v2 = sub_1E6793ADC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E67914C4(uint64_t a1)
{
  v2 = sub_1E6793ADC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6791500(uint64_t a1)
{
  v2 = sub_1E6793B30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E679153C(uint64_t a1)
{
  v2 = sub_1E6793B30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6791578(uint64_t a1)
{
  v2 = sub_1E6793BD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E67915B4(uint64_t a1)
{
  v2 = sub_1E6793BD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6791620()
{
  sub_1E68B3B70();
  sub_1E67909D8();
  return sub_1E68B3BB0();
}

uint64_t sub_1E6791664()
{
  sub_1E68B3B70();
  sub_1E67909D8();
  return sub_1E68B3BB0();
}

uint64_t sub_1E67916CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E656E6F706D6F63 && a2 == 0xEA00000000007374)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E68B3B00();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E679175C(uint64_t a1)
{
  v2 = sub_1E6791980();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6791798(uint64_t a1)
{
  v2 = sub_1E6791980();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TextContent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097CC8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E6791980();

  sub_1E68B3BD0();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097CD8);
  sub_1E6793448(&qword_1ED097CE0, &qword_1ED097CE8);
  sub_1E68B3AB0();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1E6791980()
{
  result = qword_1ED097CD0;
  if (!qword_1ED097CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097CD0);
  }

  return result;
}

uint64_t TextContent.hashValue.getter()
{
  v1 = *v0;
  sub_1E68B3B70();
  sub_1E6793184(v3, v1);
  return sub_1E68B3BB0();
}

uint64_t TextContent.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097CF0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E6791980();
  sub_1E68B3BC0();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097CD8);
    sub_1E6793448(&qword_1ED097CF8, &qword_1ED097D00);
    sub_1E68B3A00();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E6791C0C()
{
  v1 = *v0;
  sub_1E68B3B70();
  sub_1E6793184(v3, v1);
  return sub_1E68B3BB0();
}

uint64_t sub_1E6791C5C()
{
  v1 = *v0;
  sub_1E68B3B70();
  sub_1E6793184(v3, v1);
  return sub_1E68B3BB0();
}

uint64_t TextContent.init(attributedString:)@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v47 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097D08);
  v50 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v44 - v3;
  v59 = sub_1E68B17E0();
  v4 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1E68B17D0();
  v6 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097D10);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v44 - v10;
  v12 = sub_1E68B17F0();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v44 - v17;
  v48 = a1;
  sub_1E68B1800();
  v46 = v13;
  v19 = *(v13 + 16);
  v45 = v18;
  v19(v16, v18, v12);
  v20 = MEMORY[0x1E69687C8];
  sub_1E6793C2C(&qword_1EE2EDEB0, MEMORY[0x1E69687C8]);
  v44 = v16;
  sub_1E68B32C0();
  v21 = *(v9 + 44);
  sub_1E6793C2C(&qword_1EE2EDEA8, v20);
  v22 = 0;
  v57 = (v4 + 8);
  ++v50;
  v51 = (v6 + 16);
  v49 = (v6 + 8);
  v52 = v21;
  while (1)
  {
    v26 = v58;
    sub_1E68B3690();
    sub_1E6793C2C(&qword_1EE2EDEB8, MEMORY[0x1E69687B0]);
    v27 = v59;
    v28 = sub_1E68B3190();
    (*v57)(v26, v27);
    if (v28)
    {
      break;
    }

    v29 = sub_1E68B36F0();
    v30 = v53;
    v31 = v54;
    (*v51)(v53);
    v29(&v60, 0);
    v32 = v12;
    sub_1E68B36A0();
    swift_getKeyPath();
    sub_1E67934E4();
    v33 = v55;
    sub_1E68B17B0();

    swift_getKeyPath();
    sub_1E6793538();
    v34 = v56;
    sub_1E68B1900();

    (*v50)(v33, v34);
    result = (*v49)(v30, v31);
    if (v61)
    {
      result = sub_1E679358C(v60, v61);
      v24 = 1;
    }

    else
    {
      v24 = 0;
    }

    v25 = __OFADD__(v22, v24);
    v22 += v24;
    v12 = v32;
    if (v25)
    {
      __break(1u);
      return result;
    }
  }

  sub_1E6744A10(v11, &qword_1ED097D10);
  v35 = *(v46 + 8);
  v35(v45, v12);
  if (v22 <= 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097870);
    v40 = *(type metadata accessor for TextContent.Component() - 8);
    v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1E68B74F0;
    v42 = sub_1E68B1820();
    v37 = v48;
    (*(*(v42 - 8) + 16))(v39 + v41, v48, v42);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v36 = v44;
    v37 = v48;
    v38 = sub_1E68B1800();
    MEMORY[0x1EEE9AC00](v38);
    *(&v44 - 2) = v37;
    v39 = sub_1E678FCD0(sub_1E67935DC, (&v44 - 4));
    v35(v36, v12);
  }

  *v47 = v39;
  v43 = sub_1E68B1820();
  return (*(*(v43 - 8) + 8))(v37, v43);
}

uint64_t sub_1E679241C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v14 = a1;
  v15 = a2;
  v2 = sub_1E68B18D0();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097DC8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097D08);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - v8;
  swift_getKeyPath();
  sub_1E67934E4();
  sub_1E68B17B0();

  swift_getKeyPath();
  sub_1E6793538();
  sub_1E68B1900();

  (*(v7 + 8))(v9, v6);
  v10 = v17;
  if (v17)
  {
    v11 = v16;

    sub_1E679358C(v11, v10);
    v12 = v15;
    *v15 = v11;
    v12[1] = v10;
  }

  else
  {
    sub_1E68B17C0();
    sub_1E6793FCC();
    sub_1E68B1850();
    sub_1E6744A10(v5, &qword_1ED097DC8);
    sub_1E68B1860();
  }

  type metadata accessor for TextContent.Component();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E67926D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097870);
  v5 = *(type metadata accessor for TextContent.Component() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E68B74F0;
  v8 = (v7 + v6);
  *v8 = v3;
  v8[1] = v4;
  result = swift_storeEnumTagMultiPayload();
  *a2 = v7;
  return result;
}

uint64_t TextContent.appendInterpolation(_:)(uint64_t a1)
{
  v3 = type metadata accessor for TextContent.Component();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E68B1820();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  swift_storeEnumTagMultiPayload();
  v8 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1E6792FAC(0, v8[2] + 1, 1, v8);
    *v1 = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1E6792FAC(v10 > 1, v11 + 1, 1, v8);
    *v1 = v8;
  }

  v8[2] = v11 + 1;
  result = sub_1E67935FC(v6, v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11);
  *v1 = v8;
  return result;
}

uint64_t sub_1E6792964(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for TextContent.Component();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = a1;
  v8[1] = a2;
  swift_storeEnumTagMultiPayload();
  v9 = *v2;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1E6792FAC(0, v9[2] + 1, 1, v9);
    *v2 = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_1E6792FAC(v11 > 1, v12 + 1, 1, v9);
    *v2 = v9;
  }

  v9[2] = v12 + 1;
  result = sub_1E67935FC(v8, v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v12);
  *v2 = v9;
  return result;
}

uint64_t TextContent.appendInterpolation<A>(_:)()
{
  v1 = v0;
  v2 = type metadata accessor for TextContent.Component();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_1E68B3AE0();
  v6 = v13;
  *v5 = v12;
  v5[1] = v6;
  swift_storeEnumTagMultiPayload();
  v7 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1E6792FAC(0, v7[2] + 1, 1, v7);
    *v1 = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_1E6792FAC(v9 > 1, v10 + 1, 1, v7);
    *v1 = v7;
  }

  v7[2] = v10 + 1;
  result = sub_1E67935FC(v5, v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10);
  *v1 = v7;
  return result;
}

uint64_t sub_1E6792C58(void *a1)
{
  v3 = type metadata accessor for TextContent.Component();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = a1[1];
  *v6 = *a1;
  v6[1] = v7;
  swift_storeEnumTagMultiPayload();
  v8 = *v1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1E6792FAC(0, v8[2] + 1, 1, v8);
    *v1 = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1E6792FAC(v10 > 1, v11 + 1, 1, v8);
    *v1 = v8;
  }

  v8[2] = v11 + 1;
  result = sub_1E67935FC(v6, v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11);
  *v1 = v8;
  return result;
}

char *sub_1E6792DB4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097DD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1E6792EB8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097DD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

size_t sub_1E6792FAC(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097870);
  v10 = *(type metadata accessor for TextContent.Component() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for TextContent.Component() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1E6793184(uint64_t a1, uint64_t a2)
{
  v22 = sub_1E68B1820();
  v3 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v21 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TextContent.Component();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - v10;
  v12 = *(a2 + 16);
  result = MEMORY[0x1E69523D0](v12);
  if (v12)
  {
    v14 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v15 = *(v6 + 72);
    v19 = (v3 + 8);
    v20 = (v3 + 32);
    while (1)
    {
      sub_1E678E730(v14, v11);
      sub_1E678E730(v11, v9);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        break;
      }

      if (EnumCaseMultiPayload != 1)
      {
        MEMORY[0x1E69523D0](2);
        sub_1E68B31F0();
LABEL_9:

        goto LABEL_4;
      }

      v16 = v21;
      v17 = v22;
      (*v20)(v21, v9, v22);
      MEMORY[0x1E69523D0](1);
      sub_1E6793C2C(&qword_1EE2EDE98, MEMORY[0x1E6968848]);
      sub_1E68B3140();
      (*v19)(v16, v17);
LABEL_4:
      result = sub_1E678E794(v11);
      v14 += v15;
      if (!--v12)
      {
        return result;
      }
    }

    MEMORY[0x1E69523D0](0);
    sub_1E68B31F0();
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1E6793448(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097CD8);
    sub_1E6793C2C(a2, type metadata accessor for TextContent.Component);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E67934E4()
{
  result = qword_1EE2EDF38;
  if (!qword_1EE2EDF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EDF38);
  }

  return result;
}

unint64_t sub_1E6793538()
{
  result = qword_1EE2EBC70[0];
  if (!qword_1EE2EBC70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2EBC70);
  }

  return result;
}

uint64_t sub_1E679358C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1E67935FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextContent.Component();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E6793664()
{
  result = qword_1EE2EC390[0];
  if (!qword_1EE2EC390[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2EC390);
  }

  return result;
}

unint64_t sub_1E67936BC()
{
  result = qword_1ED097D18;
  if (!qword_1ED097D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097D18);
  }

  return result;
}

unint64_t sub_1E6793714()
{
  result = qword_1ED097D20;
  if (!qword_1ED097D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097D20);
  }

  return result;
}

unint64_t sub_1E679376C()
{
  result = qword_1ED097D28;
  if (!qword_1ED097D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097D28);
  }

  return result;
}

unint64_t sub_1E67937D0()
{
  result = qword_1ED097D30;
  if (!qword_1ED097D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097D30);
  }

  return result;
}

uint64_t sub_1E679383C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1E6793884(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E6793920()
{
  result = sub_1E68B1820();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1E67939D8()
{
  result = qword_1ED097D40;
  if (!qword_1ED097D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097D40);
  }

  return result;
}

unint64_t sub_1E6793A30()
{
  result = qword_1ED097D48;
  if (!qword_1ED097D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097D48);
  }

  return result;
}

unint64_t sub_1E6793A88()
{
  result = qword_1ED097D50;
  if (!qword_1ED097D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097D50);
  }

  return result;
}

unint64_t sub_1E6793ADC()
{
  result = qword_1ED097D78;
  if (!qword_1ED097D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097D78);
  }

  return result;
}

unint64_t sub_1E6793B30()
{
  result = qword_1ED097D80;
  if (!qword_1ED097D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097D80);
  }

  return result;
}

unint64_t sub_1E6793B84()
{
  result = qword_1ED097D88;
  if (!qword_1ED097D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097D88);
  }

  return result;
}

unint64_t sub_1E6793BD8()
{
  result = qword_1ED097D90;
  if (!qword_1ED097D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097D90);
  }

  return result;
}

uint64_t sub_1E6793C2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E6793C74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E68B1820();
  v31 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TextContent.Component();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = (&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v30 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v30 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097DC0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v30 - v18;
  v20 = (&v30 + *(v17 + 56) - v18);
  sub_1E678E730(a1, &v30 - v18);
  sub_1E678E730(a2, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1E678E730(v19, v15);
    v26 = *v15;
    v25 = v15[1];
    if (!swift_getEnumCaseMultiPayload())
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1E678E730(v19, v10);
    v26 = *v10;
    v25 = v10[1];
    if (swift_getEnumCaseMultiPayload() == 2)
    {
LABEL_8:
      if (v26 == *v20 && v25 == v20[1])
      {
      }

      else
      {
        v28 = sub_1E68B3B00();

        if ((v28 & 1) == 0)
        {
          sub_1E678E794(v19);
LABEL_16:
          v23 = 0;
          return v23 & 1;
        }
      }

      sub_1E678E794(v19);
      v23 = 1;
      return v23 & 1;
    }

LABEL_6:

LABEL_15:
    sub_1E6744A10(v19, &qword_1ED097DC0);
    goto LABEL_16;
  }

  sub_1E678E730(v19, v13);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v31 + 8))(v13, v4);
    goto LABEL_15;
  }

  v22 = v31;
  (*(v31 + 32))(v6, v20, v4);
  v23 = sub_1E68B17A0();
  v24 = *(v22 + 8);
  v24(v6, v4);
  v24(v13, v4);
  sub_1E678E794(v19);
  return v23 & 1;
}

unint64_t sub_1E6793FCC()
{
  result = qword_1EE2EA468;
  if (!qword_1EE2EA468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097DC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA468);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextContent.Component.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TextContent.Component.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E67941B4()
{
  result = qword_1ED097DE0;
  if (!qword_1ED097DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097DE0);
  }

  return result;
}

unint64_t sub_1E679420C()
{
  result = qword_1ED097DE8;
  if (!qword_1ED097DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097DE8);
  }

  return result;
}

unint64_t sub_1E6794264()
{
  result = qword_1ED097DF0;
  if (!qword_1ED097DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097DF0);
  }

  return result;
}

unint64_t sub_1E67942BC()
{
  result = qword_1ED097DF8;
  if (!qword_1ED097DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097DF8);
  }

  return result;
}

unint64_t sub_1E6794314()
{
  result = qword_1ED097E00;
  if (!qword_1ED097E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097E00);
  }

  return result;
}

unint64_t sub_1E679436C()
{
  result = qword_1ED097E08;
  if (!qword_1ED097E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097E08);
  }

  return result;
}

unint64_t sub_1E67943C4()
{
  result = qword_1ED097E10;
  if (!qword_1ED097E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097E10);
  }

  return result;
}

unint64_t sub_1E679441C()
{
  result = qword_1ED097E18;
  if (!qword_1ED097E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097E18);
  }

  return result;
}

unint64_t sub_1E6794474()
{
  result = qword_1ED097E20;
  if (!qword_1ED097E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097E20);
  }

  return result;
}

unint64_t sub_1E67944CC()
{
  result = qword_1ED097E28;
  if (!qword_1ED097E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097E28);
  }

  return result;
}

unint64_t sub_1E6794524()
{
  result = qword_1ED097E30;
  if (!qword_1ED097E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097E30);
  }

  return result;
}

unint64_t sub_1E679457C()
{
  result = qword_1ED097E38;
  if (!qword_1ED097E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097E38);
  }

  return result;
}

uint64_t sub_1E67945D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E68E2AC0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E69727473 && a2 == 0xE600000000000000)
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

uint64_t VerticalMonogramStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v3 = sub_1E68B1EB0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StandardLockupConfiguration();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097E40);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v17 - v11;
  sub_1E677B3B8(a1, v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  sub_1E677B41C(v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  v17[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097E48);
  sub_1E6794C7C();
  sub_1E68B2C20();
  v15 = &v12[*(v10 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096E10);
  sub_1E68B1F50();
  *v15 = swift_getKeyPath();
  _s7SwiftUI20PrimitiveButtonStyleP013FitnessCanvasB0AA05PlaindE0VRszrlE10searchCardAFvgZ_0();
  sub_1E67951E4();
  sub_1E677D800();
  sub_1E68B2790();
  (*(v4 + 8))(v6, v3);
  return sub_1E6744A10(v12, &qword_1ED097E40);
}

double sub_1E67949B0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E68B21C0();
  v29 = 0;
  sub_1E6794DEC(a1, &v14);
  v41 = v24;
  v42 = v25;
  v43 = v26;
  v37 = v20;
  v38 = v21;
  v39 = v22;
  v40 = v23;
  v33 = v16;
  v34 = v17;
  v35 = v18;
  v36 = v19;
  v31 = v14;
  v32 = v15;
  v45[10] = v24;
  v45[11] = v25;
  v45[12] = v26;
  v45[6] = v20;
  v45[7] = v21;
  v45[8] = v22;
  v45[9] = v23;
  v45[2] = v16;
  v45[3] = v17;
  v45[4] = v18;
  v45[5] = v19;
  v44 = v27;
  v46 = v27;
  v45[0] = v14;
  v45[1] = v15;
  sub_1E67612FC(&v31, v13, &qword_1ED097E98);
  sub_1E6744A10(v45, &qword_1ED097E98);
  *&v28[167] = v41;
  *&v28[183] = v42;
  *&v28[199] = v43;
  v28[215] = v44;
  *&v28[103] = v37;
  *&v28[119] = v38;
  *&v28[135] = v39;
  *&v28[151] = v40;
  *&v28[39] = v33;
  *&v28[55] = v34;
  *&v28[71] = v35;
  *&v28[87] = v36;
  *&v28[7] = v31;
  *&v28[23] = v32;
  LOBYTE(a1) = v29;
  sub_1E68B2E60();
  sub_1E68B1C50();
  *&v30[7] = v14;
  *&v30[23] = v15;
  *&v30[39] = v16;
  v5 = *&v28[176];
  *(a2 + 177) = *&v28[160];
  *(a2 + 193) = v5;
  *(a2 + 209) = *&v28[192];
  v6 = *&v28[112];
  *(a2 + 113) = *&v28[96];
  *(a2 + 129) = v6;
  v7 = *&v28[144];
  *(a2 + 145) = *&v28[128];
  *(a2 + 161) = v7;
  v8 = *&v28[48];
  *(a2 + 49) = *&v28[32];
  *(a2 + 65) = v8;
  v9 = *&v28[80];
  *(a2 + 81) = *&v28[64];
  *(a2 + 97) = v9;
  v10 = *&v28[16];
  *(a2 + 17) = *v28;
  *(a2 + 33) = v10;
  v11 = *&v30[16];
  *(a2 + 233) = *v30;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = a1;
  *(a2 + 225) = *&v28[208];
  *(a2 + 249) = v11;
  result = *&v30[32];
  *(a2 + 265) = *&v30[32];
  *(a2 + 280) = *&v30[47];
  *(a2 + 288) = 0;
  return result;
}

unint64_t sub_1E6794C7C()
{
  result = qword_1ED097E50;
  if (!qword_1ED097E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097E48);
    sub_1E6794D34();
    sub_1E673F530(&qword_1EE2EA600, &qword_1ED096E08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097E50);
  }

  return result;
}

unint64_t sub_1E6794D34()
{
  result = qword_1ED097E58;
  if (!qword_1ED097E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097E60);
    sub_1E673F530(&qword_1ED097E68, &qword_1ED097E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097E58);
  }

  return result;
}

uint64_t sub_1E6794DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for StandardLockupConfiguration();
  v36 = *(a1 + v4[6]);

  sub_1E68B2E80();
  sub_1E68B1C50();
  v34 = v55;
  v35 = v53;
  v32 = v58;
  v33 = v57;
  v61 = 1;
  v60 = v54;
  v59 = v56;
  v46[0] = *(a1 + v4[7]);

  v5 = sub_1E678E2C4(v46);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  KeyPath = swift_getKeyPath();
  v13 = v9 & 1;
  LOBYTE(v46[0]) = v9 & 1;
  LOBYTE(v44[0]) = 0;
  v14 = *(a1 + v4[8]);
  if (v14)
  {
    v46[0] = *(a1 + v4[8]);
    v15 = sub_1E678E2C4(v46);
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = swift_getKeyPath();
    LOBYTE(v46[0]) = v19 & 1;
    LOBYTE(v44[0]) = 0;
    v23 = v19 & 1;
    v24 = 256;
    v14 = 2;
  }

  else
  {
    v15 = 0;
    v17 = 0;
    v21 = 0;
    v22 = 0;
    v24 = 0;
    v23 = 0;
  }

  v25 = v61;
  v26 = v60;
  v27 = v59;
  *&v38 = v5;
  *(&v38 + 1) = v7;
  LOBYTE(v39) = v13;
  *(&v39 + 1) = v11;
  *v40 = 256;
  *&v40[8] = KeyPath;
  *&v40[16] = 2;
  v40[24] = 0;
  *&v41 = v15;
  *(&v41 + 1) = v17;
  *&v42 = v23;
  *(&v42 + 1) = v21;
  *v43 = v24;
  *&v43[8] = v22;
  *&v43[16] = v14;
  v43[24] = 0;
  *&v37[48] = *&v43[9];
  *&v37[39] = *v43;
  *&v37[23] = v42;
  *&v37[7] = v41;
  *a2 = v36;
  *(a2 + 8) = 0x3FF0000000000000;
  *(a2 + 16) = 0;
  *(a2 + 17) = 0;
  *(a2 + 19) = 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = v25;
  *(a2 + 40) = v35;
  *(a2 + 48) = v26;
  *(a2 + 56) = v34;
  *(a2 + 64) = v27;
  *(a2 + 72) = v33;
  *(a2 + 80) = v32;
  v28 = v38;
  v29 = v39;
  v30 = *v40;
  *(a2 + 129) = *&v40[9];
  *(a2 + 120) = v30;
  *(a2 + 104) = v29;
  *(a2 + 88) = v28;
  *(a2 + 193) = *&v37[48];
  *(a2 + 177) = *&v37[32];
  *(a2 + 161) = *&v37[16];
  *(a2 + 145) = *v37;
  v44[0] = v15;
  v44[1] = v17;
  v44[2] = v23;
  v44[3] = v21;
  v44[4] = v24;
  v44[5] = v22;
  v44[6] = v14;
  v45 = 0;

  sub_1E67612FC(&v38, v46, &qword_1ED096E38);
  sub_1E67612FC(&v41, v46, &qword_1ED096E00);
  sub_1E6744A10(v44, &qword_1ED096E00);
  v46[0] = v5;
  v46[1] = v7;
  v47 = v13;
  v48 = v11;
  v49 = 256;
  v50 = KeyPath;
  v51 = 2;
  v52 = 0;
  sub_1E6744A10(v46, &qword_1ED096E38);
}

uint64_t sub_1E679511C(uint64_t a1)
{
  v2 = sub_1E68B1F60();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1E68B1FF0();
}

unint64_t sub_1E67951E4()
{
  result = qword_1ED097E78;
  if (!qword_1ED097E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097E40);
    sub_1E673F530(&qword_1ED097E80, &qword_1ED097E88);
    sub_1E673F530(&qword_1ED096E18, &qword_1ED096E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097E78);
  }

  return result;
}

unint64_t sub_1E67952E4(uint64_t a1)
{
  result = sub_1E679530C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E679530C()
{
  result = qword_1ED097E90;
  if (!qword_1ED097E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097E90);
  }

  return result;
}

int *StandardActionLockupConfiguration.init(dynamicTypeSize:caption:title:subtitle:artwork:primaryAction:secondaryAction:onSelection:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v16 = *a2;
  v17 = *a3;
  v18 = *a4;
  v19 = sub_1E68B1DE0();
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  result = type metadata accessor for StandardActionLockupConfiguration();
  *(a9 + result[5]) = v16;
  *(a9 + result[6]) = v17;
  *(a9 + result[7]) = v18;
  *(a9 + result[8]) = a5;
  *(a9 + result[9]) = a6;
  *(a9 + result[10]) = a7;
  v21 = (a9 + result[11]);
  *v21 = a8;
  v21[1] = a10;
  return result;
}

uint64_t type metadata accessor for StandardActionLockupConfiguration()
{
  result = qword_1EE2EAB20;
  if (!qword_1EE2EAB20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StandardActionLockupConfiguration.dynamicTypeSize.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E68B1DE0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StandardActionLockupConfiguration.caption.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for StandardActionLockupConfiguration() + 20));
}

uint64_t StandardActionLockupConfiguration.title.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for StandardActionLockupConfiguration() + 24));
}

uint64_t StandardActionLockupConfiguration.subtitle.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for StandardActionLockupConfiguration() + 28));
}

uint64_t StandardActionLockupConfiguration.artwork.getter()
{
  type metadata accessor for StandardActionLockupConfiguration();
}

uint64_t StandardActionLockupConfiguration.primaryAction.getter()
{
  type metadata accessor for StandardActionLockupConfiguration();
}

uint64_t StandardActionLockupConfiguration.secondaryAction.getter()
{
  type metadata accessor for StandardActionLockupConfiguration();
}

uint64_t StandardActionLockupConfiguration.onSelection.getter()
{
  v1 = *(v0 + *(type metadata accessor for StandardActionLockupConfiguration() + 44));

  return v1;
}

void sub_1E67956D8()
{
  sub_1E68B1DE0();
  if (v0 <= 0x3F)
  {
    sub_1E677AAF8();
    if (v1 <= 0x3F)
    {
      sub_1E67482E4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t HorizontalStackStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v30 = sub_1E68B2400();
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v24 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E68B1EB0();
  v6 = *(v5 - 8);
  v26 = v5;
  v27 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StandardLockupConfiguration();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097EA0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097EA8);
  MEMORY[0x1EEE9AC00](v25);
  v16 = &v23 - v15;
  v17 = *v2;
  *v16 = sub_1E68B2140();
  *(v16 + 1) = 0;
  v16[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097EB0);
  sub_1E677B3B8(a1, &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v19 = swift_allocObject();
  sub_1E677B41C(&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  v31 = v17;
  v32 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097EB8);
  sub_1E673F530(&qword_1ED097EC0, &qword_1ED097EB8);
  sub_1E68B2C20();
  v14[*(v12 + 36)] = 0;
  _s7SwiftUI20PrimitiveButtonStyleP013FitnessCanvasB0AA05PlaindE0VRszrlE10searchCardAFvgZ_0();
  sub_1E6795C54();
  sub_1E677D800();
  v20 = v26;
  sub_1E68B2790();
  (*(v27 + 8))(v8, v20);
  sub_1E6744A10(v14, &qword_1ED097EA0);
  v21 = v24;
  sub_1E68B23F0();
  sub_1E673F530(&qword_1ED097EE0, &qword_1ED097EA8);
  sub_1E68B2920();
  (*(v28 + 8))(v21, v30);
  return sub_1E6744A10(v16, &qword_1ED097EA8);
}

uint64_t sub_1E6795BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = sub_1E68B21D0();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097EF0);
  return sub_1E6795D38(a1, a2 + *(v6 + 44), a3);
}

unint64_t sub_1E6795C54()
{
  result = qword_1ED097EC8;
  if (!qword_1ED097EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097EA0);
    sub_1E673F530(&qword_1ED097ED0, &qword_1ED097ED8);
    sub_1E673F530(&qword_1EE2EA600, &qword_1ED096E08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097EC8);
  }

  return result;
}

uint64_t sub_1E6795D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v23[1] = a2;
  v23[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097EF8);
  MEMORY[0x1EEE9AC00](v23[0]);
  v6 = v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097F00);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097F08);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v23 - v11);
  v13 = sub_1E68B1DE0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + *(type metadata accessor for StandardLockupConfiguration() + 24));
  v25 = a1;
  (*(v14 + 104))(v16, *MEMORY[0x1E697E6C0], v13);
  LOBYTE(a1) = sub_1E68B1DD0();
  (*(v14 + 8))(v16, v13);
  if (a1)
  {
    *v12 = sub_1E68B2140();
    v12[1] = a3;
    *(v12 + 16) = 0;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097F28);
    sub_1E6796AA4(v17, sub_1E67978D8, v24, v12 + *(v18 + 44));
    sub_1E67612FC(v12, v9, &qword_1ED097F08);
    swift_storeEnumTagMultiPayload();
    sub_1E673F530(&qword_1ED097F18, &qword_1ED097F08);
    sub_1E673F530(&qword_1ED097F20, &qword_1ED097EF8);
    sub_1E68B2210();
    v19 = v12;
    v20 = &qword_1ED097F08;
  }

  else
  {
    *v6 = sub_1E68B21D0();
    *(v6 + 1) = 0x4024000000000000;
    v6[16] = 0;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097F10);
    sub_1E6796F08(v17, sub_1E67978D8, v24, &v6[*(v21 + 44)], a3);
    sub_1E67612FC(v6, v9, &qword_1ED097EF8);
    swift_storeEnumTagMultiPayload();
    sub_1E673F530(&qword_1ED097F18, &qword_1ED097F08);
    sub_1E673F530(&qword_1ED097F20, &qword_1ED097EF8);
    sub_1E68B2210();
    v19 = v6;
    v20 = &qword_1ED097EF8;
  }

  return sub_1E6744A10(v19, v20);
}

uint64_t sub_1E6796178@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = sub_1E68B21D0();
  v42 = 0;
  sub_1E679673C(a1, &v29);
  v52 = *&v30[112];
  v53 = *&v30[128];
  v48 = *&v30[48];
  v49 = *&v30[64];
  v50 = *&v30[80];
  v51 = *&v30[96];
  v44 = v29;
  v45 = *v30;
  v46 = *&v30[16];
  v47 = *&v30[32];
  v55[8] = *&v30[112];
  v55[9] = *&v30[128];
  v55[4] = *&v30[48];
  v55[5] = *&v30[64];
  v55[6] = *&v30[80];
  v55[7] = *&v30[96];
  v55[0] = v29;
  v55[1] = *v30;
  v54 = v30[144];
  v56 = v30[144];
  v55[2] = *&v30[16];
  v55[3] = *&v30[32];
  sub_1E67612FC(&v44, __src, &qword_1ED097970);
  sub_1E6744A10(v55, &qword_1ED097970);
  *&v41[119] = v51;
  *&v41[135] = v52;
  *&v41[151] = v53;
  *&v41[55] = v47;
  *&v41[71] = v48;
  *&v41[87] = v49;
  *&v41[103] = v50;
  *&v41[7] = v44;
  *&v41[23] = v45;
  v41[167] = v54;
  *&v41[39] = v46;
  v3 = v42;
  sub_1E68B2E90();
  sub_1E68B1F30();
  *(&v43[6] + 7) = *&v43[21];
  *(&v43[8] + 7) = *&v43[23];
  *(&v43[10] + 7) = *&v43[25];
  *(&v43[12] + 7) = *&v43[27];
  *(v43 + 7) = *&v43[15];
  *(&v43[2] + 7) = *&v43[17];
  *(&v43[4] + 7) = *&v43[19];
  v4 = sub_1E68B2BA0();
  v5 = sub_1E68B2620();
  KeyPath = swift_getKeyPath();
  sub_1E68B2EA0();
  sub_1E68B1F30();
  *(&__src[16] + 1) = *&v41[112];
  *(&__src[18] + 1) = *&v41[128];
  *(&__src[20] + 1) = *&v41[144];
  *(&__src[8] + 1) = *&v41[48];
  *(&__src[10] + 1) = *&v41[64];
  *(&__src[12] + 1) = *&v41[80];
  *(&__src[14] + 1) = *&v41[96];
  *(&__src[2] + 1) = *v41;
  *(&__src[4] + 1) = *&v41[16];
  *(&__src[6] + 1) = *&v41[32];
  *(&__src[33] + 1) = *&v43[10];
  *(&__src[35] + 1) = *&v43[12];
  *(&__src[31] + 1) = *&v43[8];
  *(&__src[23] + 1) = *v43;
  *(&__src[25] + 1) = *&v43[2];
  *(&__src[27] + 1) = *&v43[4];
  __src[0] = v8;
  __src[1] = 0;
  LOBYTE(__src[2]) = v3;
  *(&__src[22] + 1) = *&v41[160];
  __src[37] = *(&v43[13] + 7);
  *(&__src[29] + 1) = *&v43[6];
  LOBYTE(__src[38]) = 0;
  memcpy(__dst, __src, 0x131uLL);
  *&v20[104] = v17;
  *&v20[88] = v16;
  *&v20[72] = v15;
  *&v20[56] = v14;
  *&v20[24] = v12;
  *&v19 = v4;
  *(&v19 + 1) = KeyPath;
  *v20 = v5;
  *&v20[8] = v11;
  *&v20[40] = v13;
  *&__dst[51] = *&v20[80];
  *&__dst[53] = *&v20[96];
  *&__dst[39] = v19;
  *&__dst[41] = *v20;
  *&__dst[43] = *&v20[16];
  *&__dst[45] = *&v20[32];
  *&__dst[47] = *&v20[48];
  *&__dst[49] = *&v20[64];
  __dst[55] = *(&v17 + 1);
  memcpy(a2, __dst, 0x1C0uLL);
  v25 = v14;
  v26 = v15;
  v27 = v16;
  v28 = v17;
  v22 = v11;
  v23 = v12;
  v21[0] = v4;
  v21[1] = KeyPath;
  v21[2] = v5;
  v24 = v13;
  sub_1E67612FC(__src, &v29, &qword_1ED097978);
  sub_1E67612FC(&v19, &v29, qword_1ED097F88);
  sub_1E6744A10(v21, qword_1ED097F88);
  *&v30[113] = *&v41[112];
  *&v30[129] = *&v41[128];
  v31 = *&v41[144];
  *&v30[49] = *&v41[48];
  *&v30[65] = *&v41[64];
  *&v30[81] = *&v41[80];
  *&v30[97] = *&v41[96];
  *&v30[1] = *v41;
  *&v30[17] = *&v41[16];
  *&v30[33] = *&v41[32];
  v38 = *&v43[10];
  *v39 = *&v43[12];
  v37 = *&v43[8];
  v33 = *v43;
  v34 = *&v43[2];
  v35 = *&v43[4];
  v29 = v8;
  v30[0] = v3;
  v32 = *&v41[160];
  *&v39[15] = *(&v43[13] + 7);
  v36 = *&v43[6];
  v40 = 0;
  return sub_1E6744A10(&v29, &qword_1ED097978);
}

uint64_t sub_1E679673C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for StandardLockupConfiguration();
  if (*(a1 + v4[5]))
  {
    v44 = *(a1 + v4[5]);
    v5 = sub_1E678E2C4(&v44);
    v7 = v6;
    v9 = v8;
    v11 = v10;
    KeyPath = swift_getKeyPath();
    v40 = v7;
    v41 = v5;
    v39 = v9 & 1;
    sub_1E673F26C(v5, v7, v9 & 1);
    v43 = v11;

    v42 = KeyPath;

    v38 = 2;
  }

  else
  {
    v40 = 0;
    v41 = 0;
    v39 = 0;
    v43 = 0;
    v42 = 0;
    v38 = 0;
  }

  v44 = *(a1 + v4[7]);

  v13 = sub_1E678E2C4(&v44);
  v31 = v14;
  v32 = v13;
  v16 = v15;
  v33 = v17;

  v30 = swift_getKeyPath();
  if (*(a1 + v4[8]))
  {
    v44 = *(a1 + v4[8]);
    v18 = sub_1E678E2C4(&v44);
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = swift_getKeyPath();
    v37 = v18;
    v35 = v20;
    v29 = v22 & 1;
    sub_1E673F26C(v18, v20, v22 & 1);
    v34 = v24;

    v26 = v25;

    v36 = 2;
  }

  else
  {
    v36 = 0;
    v37 = 0;
    v34 = 0;
    v35 = 0;
    v29 = 0;
    v26 = 0;
  }

  LOBYTE(v44) = v16 & 1;
  sub_1E673F26C(v32, v31, v16 & 1);

  sub_1E677EFE4(v41, v40, v39, v43);
  sub_1E673F26C(v32, v31, v16 & 1);

  sub_1E677EFE4(v37, v35, v29, v34);
  sub_1E677F034(v41, v40, v39, v43);
  sub_1E677F034(v37, v35, v29, v34);
  sub_1E673F0D4(v32, v31, v16 & 1);

  v27 = v44;
  *a2 = v41;
  *(a2 + 8) = v40;
  *(a2 + 16) = v39;
  *(a2 + 24) = v43;
  *(a2 + 32) = v42;
  *(a2 + 40) = v38;
  *(a2 + 48) = 0;
  *(a2 + 56) = v32;
  *(a2 + 64) = v31;
  *(a2 + 72) = v27;
  *(a2 + 80) = v33;
  *(a2 + 88) = v30;
  *(a2 + 96) = 2;
  *(a2 + 104) = 0;
  *(a2 + 112) = v37;
  *(a2 + 120) = v35;
  *(a2 + 128) = v29;
  *(a2 + 136) = v34;
  *(a2 + 144) = v26;
  *(a2 + 152) = v36;
  *(a2 + 160) = 0;
  sub_1E677F034(v37, v35, v29, v34);
  sub_1E673F0D4(v32, v31, v16 & 1);

  return sub_1E677F034(v41, v40, v39, v43);
}

uint64_t sub_1E6796AA4@<X0>(uint64_t a1@<X0>, void (*a2)(void *__return_ptr, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a3;
  v39 = a2;
  v41 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097F30);
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v35 - v6;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097F38);
  v8 = MEMORY[0x1EEE9AC00](v35);
  v40 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v35 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v35 - v13;

  v15 = sub_1E68B2DF0();
  v16 = 0x4020000000000000;
  v46[0] = a1;
  v46[1] = 0x3FFC71C71C71C71CLL;
  LOWORD(v46[2]) = 0;
  if (v15)
  {
    v16 = 0x4030000000000000;
  }

  v46[3] = v16;
  LOBYTE(v46[4]) = 0;
  sub_1E68B24B0();
  sub_1E68B2E80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097F40);
  sub_1E67978E0();
  sub_1E68B2960();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097968);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1E68B77B0;
  v18 = sub_1E68B2510();
  *(v17 + 32) = v18;
  v19 = sub_1E68B2520();
  *(v17 + 33) = v19;
  v20 = sub_1E68B2540();
  sub_1E68B2540();
  if (sub_1E68B2540() != v18)
  {
    v20 = sub_1E68B2540();
  }

  sub_1E68B2540();
  if (sub_1E68B2540() != v19)
  {
    v20 = sub_1E68B2540();
  }

  sub_1E68B1B30();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  (*(v36 + 32))(v12, v7, v37);
  v29 = &v12[*(v35 + 36)];
  *v29 = v20;
  *(v29 + 1) = v22;
  *(v29 + 2) = v24;
  *(v29 + 3) = v26;
  *(v29 + 4) = v28;
  v29[40] = 0;
  v30 = sub_1E672C214(v12, v14);
  v39(v46, v30);
  memcpy(v43, v46, sizeof(v43));
  memcpy(v44, v46, sizeof(v44));
  sub_1E67612FC(v43, v45, &qword_1ED097F60);
  sub_1E6744A10(v44, &qword_1ED097F60);
  v31 = v40;
  sub_1E67612FC(v14, v40, &qword_1ED097F38);
  memcpy(v42, v43, sizeof(v42));
  v32 = v41;
  sub_1E67612FC(v31, v41, &qword_1ED097F38);
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097F68) + 48);
  memcpy(v45, v42, sizeof(v45));
  memcpy((v32 + v33), v42, 0x1C0uLL);
  sub_1E67612FC(v45, v46, &qword_1ED097F60);
  sub_1E6744A10(v14, &qword_1ED097F38);
  memcpy(v46, v42, 0x1C0uLL);
  sub_1E6744A10(v46, &qword_1ED097F60);
  return sub_1E6744A10(v31, &qword_1ED097F38);
}

uint64_t sub_1E6796F08@<X0>(uint64_t a1@<X0>, void (*a2)(void *__return_ptr, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v41 = a3;
  v42 = a2;
  v44 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097F30);
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - v8;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097F38);
  MEMORY[0x1EEE9AC00](v38);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097F70);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v43 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v38 - v15);
  *v16 = sub_1E68B2140();
  v16[1] = a5;
  *(v16 + 16) = 0;

  v17 = sub_1E68B2DF0();
  v18 = 0x4020000000000000;
  v49[0] = a1;
  v49[1] = 0x3FFC71C71C71C71CLL;
  LOWORD(v49[2]) = 0;
  if (v17)
  {
    v18 = 0x4030000000000000;
  }

  v49[3] = v18;
  LOBYTE(v49[4]) = 0;
  sub_1E68B24B0();
  sub_1E68B2E80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097F40);
  sub_1E67978E0();
  sub_1E68B2960();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097968);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1E68B77B0;
  v20 = sub_1E68B2510();
  *(v19 + 32) = v20;
  v21 = sub_1E68B2520();
  *(v19 + 33) = v21;
  v22 = sub_1E68B2540();
  sub_1E68B2540();
  if (sub_1E68B2540() != v20)
  {
    v22 = sub_1E68B2540();
  }

  sub_1E68B2540();
  if (sub_1E68B2540() != v21)
  {
    v22 = sub_1E68B2540();
  }

  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097F78) + 44);
  sub_1E68B1B30();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  (*(v39 + 32))(v11, v9, v40);
  v32 = &v11[*(v38 + 36)];
  *v32 = v22;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  v33 = sub_1E672C214(v11, v16 + v23);
  v42(v49, v33);
  memcpy(v46, v49, sizeof(v46));
  memcpy(v47, v49, sizeof(v47));
  sub_1E67612FC(v46, v48, &qword_1ED097F60);
  sub_1E6744A10(v47, &qword_1ED097F60);
  v34 = v43;
  sub_1E67612FC(v16, v43, &qword_1ED097F70);
  memcpy(v45, v46, sizeof(v45));
  v35 = v44;
  sub_1E67612FC(v34, v44, &qword_1ED097F70);
  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097F80) + 48);
  memcpy(v48, v45, sizeof(v48));
  memcpy((v35 + v36), v45, 0x1C0uLL);
  sub_1E67612FC(v48, v49, &qword_1ED097F60);
  sub_1E6744A10(v16, &qword_1ED097F70);
  memcpy(v49, v45, 0x1C0uLL);
  sub_1E6744A10(v49, &qword_1ED097F60);
  return sub_1E6744A10(v34, &qword_1ED097F70);
}

uint64_t sub_1E67973D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v30 = sub_1E68B2400();
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v24 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E68B1EB0();
  v6 = *(v5 - 8);
  v26 = v5;
  v27 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StandardLockupConfiguration();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097EA0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097EA8);
  MEMORY[0x1EEE9AC00](v25);
  v16 = &v23 - v15;
  v17 = *v2;
  *v16 = sub_1E68B2140();
  *(v16 + 1) = 0;
  v16[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097EB0);
  sub_1E677B3B8(a1, &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v19 = swift_allocObject();
  sub_1E677B41C(&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  v31 = v17;
  v32 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097EB8);
  sub_1E673F530(&qword_1ED097EC0, &qword_1ED097EB8);
  sub_1E68B2C20();
  v14[*(v12 + 36)] = 0;
  _s7SwiftUI20PrimitiveButtonStyleP013FitnessCanvasB0AA05PlaindE0VRszrlE10searchCardAFvgZ_0();
  sub_1E6795C54();
  sub_1E677D800();
  v20 = v26;
  sub_1E68B2790();
  (*(v27 + 8))(v8, v20);
  sub_1E6744A10(v14, &qword_1ED097EA0);
  v21 = v24;
  sub_1E68B23F0();
  sub_1E673F530(&qword_1ED097EE0, &qword_1ED097EA8);
  sub_1E68B2920();
  (*(v28 + 8))(v21, v30);
  return sub_1E6744A10(v16, &qword_1ED097EA8);
}

unint64_t sub_1E679784C(uint64_t a1)
{
  result = sub_1E6797874();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E6797874()
{
  result = qword_1ED097EE8;
  if (!qword_1ED097EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097EE8);
  }

  return result;
}

unint64_t sub_1E67978E0()
{
  result = qword_1ED097F48;
  if (!qword_1ED097F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097F40);
    sub_1E679796C();
    sub_1E67979F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097F48);
  }

  return result;
}

unint64_t sub_1E679796C()
{
  result = qword_1ED097F50;
  if (!qword_1ED097F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097F58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097F50);
  }

  return result;
}

unint64_t sub_1E67979F0()
{
  result = qword_1EE2EB048[0];
  if (!qword_1EE2EB048[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2EB048);
  }

  return result;
}

uint64_t sub_1E6797A4C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_1E6797B8C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_1E6797D94(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x5664657070617277 && a2 == 0xEC00000065756C61)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E68B3B00();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E6797E10@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a4;
  v23 = *(a2 - 8);
  v24 = a3;
  MEMORY[0x1EEE9AC00](a1);
  v25 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AssumeEquatable.CodingKeys();
  swift_getWitnessTable();
  v7 = sub_1E68B3A20();
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = type metadata accessor for AssumeEquatable();
  v19 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = v26;
  sub_1E68B3BC0();
  if (!v13)
  {
    v26 = v10;
    v14 = v21;
    v15 = v22;
    v16 = v23;
    sub_1E68B3A00();
    (*(v14 + 8))(v9, v15);
    (*(v16 + 32))(v12, v25, a2);
    (*(v19 + 32))(v20, v12, v26);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E67980D8(void *a1, uint64_t a2, uint64_t a3)
{
  v9[1] = a3;
  type metadata accessor for AssumeEquatable.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_1E68B3AC0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E68B3BD0();
  sub_1E68B3AB0();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1E6798248()
{
  sub_1E68B3B70();
  sub_1E68B3140();
  return sub_1E68B3BB0();
}

uint64_t sub_1E67982C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E6797D94(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1E67982F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E6761AEC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E6798320(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E6798374(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E6798430()
{
  sub_1E68B3B70();
  sub_1E6798240();
  return sub_1E68B3BB0();
}

uint64_t sub_1E679850C(uint64_t a1)
{
  v2 = sub_1E6798DA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6798548(uint64_t a1)
{
  v2 = sub_1E6798DA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6798584(uint64_t a1)
{
  v2 = sub_1E6798D50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E67985C0(uint64_t a1)
{
  v2 = sub_1E6798D50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E67985FC(uint64_t a1)
{
  v2 = sub_1E6798CFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6798638(uint64_t a1)
{
  v2 = sub_1E6798CFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6798674()
{
  v1 = 0x654C6D6F74746F62;
  v2 = 0x654C7265746E6563;
  if (*v0 != 2)
  {
    v2 = 0x696461654C706F74;
  }

  if (*v0)
  {
    v1 = 0x7265746E6563;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E67986F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E6799AB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E679872C(uint64_t a1)
{
  v2 = sub_1E6798C54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6798768(uint64_t a1)
{
  v2 = sub_1E6798C54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E67987A4(uint64_t a1)
{
  v2 = sub_1E6798CA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E67987E0(uint64_t a1)
{
  v2 = sub_1E6798CA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DynamicBrickDisplayStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098010);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098018);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098020);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098028);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098030);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E6798C54();
  sub_1E68B3BD0();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_1E6798CFC();
      v18 = v27;
      sub_1E68B3A30();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_1E6798CA8();
      v18 = v30;
      sub_1E68B3A30();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_1E6798D50();
    v18 = v24;
    sub_1E68B3A30();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_1E6798DA4();
  sub_1E68B3A30();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

unint64_t sub_1E6798C54()
{
  result = qword_1ED098038;
  if (!qword_1ED098038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098038);
  }

  return result;
}

unint64_t sub_1E6798CA8()
{
  result = qword_1ED098040;
  if (!qword_1ED098040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098040);
  }

  return result;
}

unint64_t sub_1E6798CFC()
{
  result = qword_1ED098048;
  if (!qword_1ED098048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098048);
  }

  return result;
}

unint64_t sub_1E6798D50()
{
  result = qword_1ED098050;
  if (!qword_1ED098050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098050);
  }

  return result;
}

unint64_t sub_1E6798DA4()
{
  result = qword_1ED098058;
  if (!qword_1ED098058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098058);
  }

  return result;
}

uint64_t DynamicBrickDisplayStyle.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098060);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v34 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098068);
  v38 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v34 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098070);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098078);
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098080);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1E6798C54();
  v15 = v46;
  sub_1E68B3BC0();
  if (!v15)
  {
    v16 = v9;
    v34 = v7;
    v35 = 0;
    v17 = v6;
    v18 = v43;
    v19 = v44;
    v46 = v11;
    v20 = v45;
    v21 = v13;
    v22 = sub_1E68B3A10();
    v23 = (2 * *(v22 + 16)) | 1;
    v48 = v22;
    v49 = v22 + 32;
    v50 = 0;
    v51 = v23;
    v24 = sub_1E676F5C4();
    if (v24 == 4 || v50 != v51 >> 1)
    {
      v26 = sub_1E68B3870();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050);
      *v28 = &type metadata for DynamicBrickDisplayStyle;
      sub_1E68B3980();
      sub_1E68B3860();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
LABEL_9:
      (*(v46 + 8))(v13, v10);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v47);
    }

    v52 = v24;
    if (v24 <= 1u)
    {
      if (v24)
      {
        v53 = 1;
        sub_1E6798D50();
        v32 = v35;
        sub_1E68B3970();
        if (!v32)
        {
          (*(v36 + 8))(v17, v40);
          goto LABEL_17;
        }
      }

      else
      {
        v53 = 0;
        sub_1E6798DA4();
        v25 = v35;
        sub_1E68B3970();
        if (!v25)
        {
          (*(v37 + 8))(v16, v34);
LABEL_17:
          (*(v46 + 8))(v13, v10);
LABEL_22:
          swift_unknownObjectRelease();
          *v20 = v52;
          return __swift_destroy_boxed_opaque_existential_1(v47);
        }
      }

      goto LABEL_9;
    }

    v30 = v46;
    if (v24 == 2)
    {
      v53 = 2;
      sub_1E6798CFC();
      v31 = v35;
      sub_1E68B3970();
      if (!v31)
      {
        (*(v38 + 8))(v18, v42);
LABEL_21:
        (*(v30 + 8))(v21, v10);
        goto LABEL_22;
      }
    }

    else
    {
      v53 = 3;
      sub_1E6798CA8();
      v33 = v35;
      sub_1E68B3970();
      if (!v33)
      {
        (*(v39 + 8))(v19, v41);
        goto LABEL_21;
      }
    }

    (*(v30 + 8))(v21, v10);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t DynamicBrickDisplayStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1E68B3B70();
  MEMORY[0x1E69523D0](v1);
  return sub_1E68B3BB0();
}

unint64_t sub_1E67994FC()
{
  result = qword_1ED098088;
  if (!qword_1ED098088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098088);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContentMargins.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContentMargins.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E67996F4()
{
  result = qword_1ED098090;
  if (!qword_1ED098090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098090);
  }

  return result;
}

unint64_t sub_1E679974C()
{
  result = qword_1ED098098;
  if (!qword_1ED098098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098098);
  }

  return result;
}

unint64_t sub_1E67997A4()
{
  result = qword_1ED0980A0;
  if (!qword_1ED0980A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0980A0);
  }

  return result;
}

unint64_t sub_1E67997FC()
{
  result = qword_1ED0980A8;
  if (!qword_1ED0980A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0980A8);
  }

  return result;
}

unint64_t sub_1E6799854()
{
  result = qword_1ED0980B0;
  if (!qword_1ED0980B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0980B0);
  }

  return result;
}

unint64_t sub_1E67998AC()
{
  result = qword_1ED0980B8;
  if (!qword_1ED0980B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0980B8);
  }

  return result;
}

unint64_t sub_1E6799904()
{
  result = qword_1ED0980C0;
  if (!qword_1ED0980C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0980C0);
  }

  return result;
}

unint64_t sub_1E679995C()
{
  result = qword_1ED0980C8;
  if (!qword_1ED0980C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0980C8);
  }

  return result;
}

unint64_t sub_1E67999B4()
{
  result = qword_1ED0980D0;
  if (!qword_1ED0980D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0980D0);
  }

  return result;
}

unint64_t sub_1E6799A0C()
{
  result = qword_1ED0980D8;
  if (!qword_1ED0980D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0980D8);
  }

  return result;
}

unint64_t sub_1E6799A64()
{
  result = qword_1ED0980E0;
  if (!qword_1ED0980E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0980E0);
  }

  return result;
}

uint64_t sub_1E6799AB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x654C6D6F74746F62 && a2 == 0xED0000676E696461;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265746E6563 && a2 == 0xE600000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x654C7265746E6563 && a2 == 0xED0000676E696461 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x696461654C706F74 && a2 == 0xEA0000000000676ELL)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1E6799C4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74756F79616CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F6974706163 && a2 == 0xE700000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E68E2B00 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E68E2B20 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t sub_1E6799EE0(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    v4 = 0xD000000000000013;
    if (a1 != 6)
    {
      v4 = 0xD000000000000015;
    }

    v5 = 0x656C746974627573;
    if (a1 != 4)
    {
      v5 = 0x6E6F6974706163;
    }

    if (a1 <= 5u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x74756F79616CLL;
    v2 = 0x656C797473;
    if (a1 != 2)
    {
      v2 = 0x656C746974;
    }

    if (a1)
    {
      v1 = 0x6B726F77747261;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1E6799FD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61436E6F69746361 && a2 == 0xEA00000000006472;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746469576C6C7566 && a2 == 0xED00006D65744968 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746469576C6C7566 && a2 == 0xEE00656761745368 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x697463416F666E69 && a2 == 0xEE00647261436E6FLL || (sub_1E68B3B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x697242656772616CLL && a2 == 0xEA00000000006B63 || (sub_1E68B3B00() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E68E28B0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E68E28D0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E68E28F0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x647261646E617473 && a2 == 0xEC00000064726143 || (sub_1E68B3B00() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E68E2910 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E68E2930 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x437972616D6D7573 && a2 == 0xEB00000000647261 || (sub_1E68B3B00() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x647261436C6C6174 && a2 == 0xE800000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E68E2950 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6C69754277656976 && a2 == 0xEB00000000726564 || (sub_1E68B3B00() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6369724265646977 && a2 == 0xE90000000000006BLL)
  {

    return 15;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

unint64_t sub_1E679A4F4(char a1)
{
  result = 0x61436E6F69746361;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0x746469576C6C7566;
      break;
    case 3:
      result = 0x697463416F666E69;
      break;
    case 4:
      result = 0x697242656772616CLL;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
    case 10:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x647261646E617473;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 11:
      result = 0x437972616D6D7573;
      break;
    case 12:
      result = 0x647261436C6C6174;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0x6C69754277656976;
      break;
    case 15:
      result = 0x6369724265646977;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E679A6D8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x637365446D657469 && a2 == 0xEE00726F74706972)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E68B3B00();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E679A758(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74756F79616CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F6974706163 && a2 == 0xE700000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E68E2B00 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E68E2B20 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x69566D6F74737563 && a2 == 0xEA00000000007765)
  {

    return 8;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

unint64_t sub_1E679AA40(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x74756F79616CLL;
    v6 = 0x656C797473;
    if (a1 != 2)
    {
      v6 = 0x656C746974;
    }

    if (a1)
    {
      v5 = 0x6B726F77747261;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000013;
    v2 = 0xD000000000000015;
    if (a1 != 7)
    {
      v2 = 0x69566D6F74737563;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x656C746974627573;
    if (a1 != 4)
    {
      v3 = 0x6E6F6974706163;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1E679AB58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74756F79616CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x75426E6F69746361 && a2 == 0xEC0000006E6F7474)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1E679ACBC(unsigned __int8 a1)
{
  v1 = 0x74756F79616CLL;
  v2 = 0x7470697263736564;
  if (a1 != 2)
  {
    v2 = 0x75426E6F69746361;
  }

  if (a1)
  {
    v1 = 0x656C746974;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E679AD40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746F6E746F6F66 && a2 == 0xE800000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1E679AEA0(unsigned __int8 a1)
{
  v1 = 0x6B726F77747261;
  v2 = 0x656C746974627573;
  if (a1 != 2)
  {
    v2 = 0x656C746974;
  }

  if (a1)
  {
    v1 = 0x65746F6E746F6F66;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E679AF18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74756F79616CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1E679B074(unsigned __int8 a1)
{
  v1 = 0x74756F79616CLL;
  v2 = 0x656C746974;
  if (a1 != 2)
  {
    v2 = 0x656C746974627573;
  }

  if (a1)
  {
    v1 = 0x6B726F77747261;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E679B0E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6974706163 && a2 == 0xE700000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5379616C70736964 && a2 == 0xEC000000656C7974 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1E679B294(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74756F79616CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F6974706163 && a2 == 0xE700000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74695470756F7267 && a2 == 0xEA0000000000656CLL || (sub_1E68B3B00() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xED00007765695679)
  {

    return 6;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1E679B4E4(unsigned __int8 a1)
{
  v1 = 0x74756F79616CLL;
  v2 = 0x74695470756F7267;
  if (a1 != 5)
  {
    v2 = 0x726F737365636361;
  }

  v3 = 0x656C746974627573;
  if (a1 != 3)
  {
    v3 = 0x6E6F6974706163;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0x6B726F77747261;
  if (a1 != 1)
  {
    v4 = 0x656C746974;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E679B5C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74756F79616CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F6974706163 && a2 == 0xE700000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E68E2AE0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1E679B7C4(unsigned __int8 a1)
{
  v1 = 0x74756F79616CLL;
  v2 = 0x656C746974627573;
  v3 = 0x6E6F6974706163;
  if (a1 != 4)
  {
    v3 = 0xD000000000000016;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0x6B726F77747261;
  if (a1 != 1)
  {
    v4 = 0x656C746974;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E679B87C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74756F79616CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x79616C7265766FLL && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1E679B9D8(unsigned __int8 a1)
{
  v1 = 0x74756F79616CLL;
  v2 = 0x656C746974;
  if (a1 != 2)
  {
    v2 = 0x79616C7265766FLL;
  }

  if (a1)
  {
    v1 = 0x6B726F77747261;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E679BA48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74756F79616CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F6974706163 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1E679BBF0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7470697263736564 && a2 == 0xEA0000000000726FLL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E68B3B00();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E679BC70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
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

uint64_t sub_1E679BD84(char a1)
{
  if (!a1)
  {
    return 0x6B726F77747261;
  }

  if (a1 == 1)
  {
    return 0x656C746974627573;
  }

  return 0x656C746974;
}

uint64_t sub_1E679BE68(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E679BEBC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E679BF68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5], a3[6], a3[7]);
  *a5 = result;
  return result;
}

uint64_t sub_1E679BFC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E679C014(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E679C0BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E679C110(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E679C1AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E679C200(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E679C29C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E679C2F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E679C374(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E679C3C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E679C434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5], a3[6], a3[7]);
  *a5 = result;
  return result;
}

uint64_t sub_1E679C48C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E679C4E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E679C564(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E679C5B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E679C60C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E679C660(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E679C6CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E679C720(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E679C7BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E679C810(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E679C864(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E679C8B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E679C954(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E679C9A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E679CA2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E679CA80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E679CAD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E679CB28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E679CBB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5], a3[6], a3[7]);
  *a5 = result & 1;
  return result;
}

uint64_t sub_1E679CBF4@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5], a1[6], a1[7]);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1E679CC38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E679CC8C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E679CD20(uint64_t a1, void *a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void, void, void, void, void))
{
  sub_1E68B3B70();
  a4(v8, *v4, a2[2], a2[3], a2[4], a2[5], a2[6], a2[7]);
  return sub_1E68B3BB0();
}

uint64_t sub_1E679CDE4@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5], a1[6], a1[7]);
  *a3 = result;
  return result;
}

uint64_t sub_1E679CE24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E679CE78(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t CanvasItemContent.encode(to:)(char *a1, void *a2)
{
  v631 = a1;
  v3 = a2[3];
  v6 = a2[4];
  v5 = a2[5];
  v7 = a2[6];
  v8 = a2[7];
  *&v656 = a2[2];
  v4 = v656;
  *(&v656 + 1) = v3;
  *&v657 = v6;
  *(&v657 + 1) = v5;
  v9 = v5;
  *&v658 = v7;
  *(&v658 + 1) = v8;
  v547 = type metadata accessor for CanvasItemContent.WideBrickCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v554 = sub_1E68B3AC0();
  v553 = *(v554 - 8);
  MEMORY[0x1EEE9AC00](v554);
  v551 = v480 - v10;
  *(&v656 + 1) = v3;
  *&v657 = v6;
  *(&v657 + 1) = v9;
  *&v658 = v7;
  *(&v658 + 1) = v8;
  v11 = type metadata accessor for CanvasItemContent.ViewBuilderCodingKeys();
  v12 = swift_getWitnessTable();
  v534 = v11;
  v532 = v12;
  v13 = sub_1E68B3AC0();
  v536 = *(v13 - 8);
  v537 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v533 = v480 - v15;
  v535 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v531 = v480 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v656 = v4;
  *(&v656 + 1) = v3;
  *&v657 = v6;
  *(&v657 + 1) = v9;
  *&v658 = v7;
  *(&v658 + 1) = v8;
  v17 = type metadata accessor for CanvasItemContent.VerticalStackCardCodingKeys();
  v18 = swift_getWitnessTable();
  v540 = v17;
  v538 = v18;
  v562 = sub_1E68B3AC0();
  v555 = *(v562 - 8);
  MEMORY[0x1EEE9AC00](v562);
  v552 = v480 - v19;
  *&v656 = v4;
  *(&v656 + 1) = v3;
  *&v657 = v6;
  *(&v657 + 1) = v9;
  *&v658 = v7;
  *(&v658 + 1) = v8;
  v20 = type metadata accessor for CanvasItemContent.TallCardCodingKeys();
  v527 = swift_getWitnessTable();
  v528 = v20;
  v545 = sub_1E68B3AC0();
  v544 = *(v545 - 8);
  MEMORY[0x1EEE9AC00](v545);
  v541 = v480 - v21;
  *&v656 = v4;
  *(&v656 + 1) = v3;
  *&v657 = v6;
  *(&v657 + 1) = v9;
  v22 = v9;
  *&v658 = v7;
  *(&v658 + 1) = v8;
  v23 = type metadata accessor for CanvasItemContent.SummaryCardCodingKeys();
  v525 = swift_getWitnessTable();
  v526 = v23;
  v550 = sub_1E68B3AC0();
  v549 = *(v550 - 8);
  MEMORY[0x1EEE9AC00](v550);
  v548 = v480 - v24;
  v515 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096E88);
  MEMORY[0x1EEE9AC00](v515);
  v565 = v480 - v25;
  *&v656 = v4;
  *(&v656 + 1) = v3;
  *&v657 = v6;
  *(&v657 + 1) = v22;
  *&v658 = v7;
  *(&v658 + 1) = v8;
  v26 = type metadata accessor for CanvasItemContent.StandardVerticalStackCodingKeys();
  v27 = swift_getWitnessTable();
  v521 = v26;
  v519 = v27;
  v625 = sub_1E68B3AC0();
  v530 = *(v625 - 8);
  MEMORY[0x1EEE9AC00](v625);
  v529 = v480 - v28;
  *&v656 = v4;
  *(&v656 + 1) = v3;
  *&v657 = v6;
  *(&v657 + 1) = v22;
  *&v658 = v7;
  *(&v658 + 1) = v8;
  v29 = type metadata accessor for CanvasItemContent.StandardHorizontalStackCodingKeys();
  v30 = swift_getWitnessTable();
  v520 = v29;
  v516 = v30;
  v542 = sub_1E68B3AC0();
  v543 = *(v542 - 8);
  MEMORY[0x1EEE9AC00](v542);
  v539 = v480 - v31;
  *&v656 = v4;
  *(&v656 + 1) = v3;
  *&v657 = v6;
  *(&v657 + 1) = v22;
  *&v658 = v7;
  *(&v658 + 1) = v8;
  v32 = type metadata accessor for CanvasItemContent.StandardCardCodingKeys();
  v512 = swift_getWitnessTable();
  v513 = v32;
  v33 = sub_1E68B3AC0();
  v523 = *(v33 - 8);
  v524 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v522 = v480 - v34;
  *&v656 = v4;
  *(&v656 + 1) = v3;
  *&v657 = v6;
  *(&v657 + 1) = v22;
  *&v658 = v7;
  *(&v658 + 1) = v8;
  v35 = type metadata accessor for CanvasItemContent.SmallDynamicBrickCodingKeys();
  v506 = swift_getWitnessTable();
  v507 = v35;
  v36 = sub_1E68B3AC0();
  v517 = *(v36 - 8);
  v518 = v36;
  MEMORY[0x1EEE9AC00](v36);
  v624 = v480 - v37;
  *&v656 = v4;
  *(&v656 + 1) = v3;
  *&v657 = v6;
  *(&v657 + 1) = v22;
  *&v658 = v7;
  *(&v658 + 1) = v8;
  v38 = type metadata accessor for CanvasItemContent.MonogramVerticalStackCodingKeys();
  v39 = swift_getWitnessTable();
  v503 = v38;
  v500 = v39;
  v564 = sub_1E68B3AC0();
  v511 = *(v564 - 8);
  MEMORY[0x1EEE9AC00](v564);
  v508 = v480 - v40;
  *&v656 = v4;
  *(&v656 + 1) = v3;
  *&v657 = v6;
  *(&v657 + 1) = v22;
  *&v658 = v7;
  *(&v658 + 1) = v8;
  v41 = type metadata accessor for CanvasItemContent.MediumDynamicBrickCodingKeys();
  v494 = swift_getWitnessTable();
  v495 = v41;
  v42 = sub_1E68B3AC0();
  v509 = *(v42 - 8);
  v510 = v42;
  MEMORY[0x1EEE9AC00](v42);
  v623 = v480 - v43;
  *&v656 = v4;
  *(&v656 + 1) = v3;
  *&v657 = v6;
  *(&v657 + 1) = v22;
  *&v658 = v7;
  *(&v658 + 1) = v8;
  v44 = type metadata accessor for CanvasItemContent.LargeBrickCodingKeys();
  v492 = swift_getWitnessTable();
  v493 = v44;
  v45 = sub_1E68B3AC0();
  v504 = *(v45 - 8);
  v505 = v45;
  MEMORY[0x1EEE9AC00](v45);
  v501 = v480 - v46;
  *&v656 = v4;
  *(&v656 + 1) = v3;
  *&v657 = v6;
  *(&v657 + 1) = v22;
  *&v658 = v7;
  *(&v658 + 1) = v8;
  v47 = type metadata accessor for CanvasItemContent.InfoActionCardCodingKeys();
  v488 = swift_getWitnessTable();
  v489 = v47;
  v48 = sub_1E68B3AC0();
  v498 = *(v48 - 8);
  v499 = v48;
  MEMORY[0x1EEE9AC00](v48);
  v496 = v480 - v49;
  *&v656 = v4;
  *(&v656 + 1) = v3;
  *&v657 = v6;
  *(&v657 + 1) = v22;
  *&v658 = v7;
  *(&v658 + 1) = v8;
  v50 = type metadata accessor for CanvasItemContent.FullWidthStageCodingKeys();
  v490 = swift_getWitnessTable();
  v491 = v50;
  v557 = sub_1E68B3AC0();
  v514 = *(v557 - 8);
  MEMORY[0x1EEE9AC00](v557);
  v556 = v480 - v51;
  v608 = sub_1E68B3750();
  v560 = *(v608 - 8);
  MEMORY[0x1EEE9AC00](v608);
  v575 = v480 - v52;
  *&v656 = v4;
  *(&v656 + 1) = v3;
  *&v657 = v6;
  *(&v657 + 1) = v22;
  *&v635 = v22;
  *&v658 = v7;
  *(&v658 + 1) = v8;
  v53 = type metadata accessor for CanvasItemContent.FullWidthItemCodingKeys();
  v480[1] = swift_getWitnessTable();
  v480[2] = v53;
  v54 = sub_1E68B3AC0();
  v484 = *(v54 - 8);
  v485 = v54;
  MEMORY[0x1EEE9AC00](v54);
  v481 = v480 - v55;
  v56 = type metadata accessor for FullWidthItemDescriptor();
  v482 = *(v56 - 8);
  v483 = v56;
  MEMORY[0x1EEE9AC00](v56);
  v480[0] = v480 - v57;
  *&v656 = v4;
  *(&v656 + 1) = v3;
  *&v657 = v6;
  *(&v657 + 1) = v22;
  *&v658 = v7;
  *(&v658 + 1) = v8;
  v58 = type metadata accessor for CanvasItemContent.ActionCardCodingKeys();
  v486 = swift_getWitnessTable();
  v487 = v58;
  v626 = sub_1E68B3AC0();
  v502 = *(v626 - 8);
  MEMORY[0x1EEE9AC00](v626);
  v497 = v480 - v59;
  v628 = sub_1E68B3750();
  v627 = *(v628 - 8);
  v60 = MEMORY[0x1EEE9AC00](v628);
  v563 = v480 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x1EEE9AC00](v60);
  v586 = v480 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v610 = v480 - v65;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v611 = v480 - v67;
  v68 = MEMORY[0x1EEE9AC00](v66);
  v574 = v480 - v69;
  v561 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v592 = v480 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v630 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096E68);
  v71 = MEMORY[0x1EEE9AC00](v630);
  v584 = v480 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = MEMORY[0x1EEE9AC00](v71);
  v619 = v480 - v74;
  v75 = MEMORY[0x1EEE9AC00](v73);
  v576 = v480 - v76;
  v77 = MEMORY[0x1EEE9AC00](v75);
  v598 = v480 - v78;
  v79 = MEMORY[0x1EEE9AC00](v77);
  v587 = v480 - v80;
  v81 = MEMORY[0x1EEE9AC00](v79);
  v571 = v480 - v82;
  v83 = MEMORY[0x1EEE9AC00](v81);
  v577 = v480 - v84;
  v85 = MEMORY[0x1EEE9AC00](v83);
  v599 = v480 - v86;
  v87 = MEMORY[0x1EEE9AC00](v85);
  v606 = v480 - v88;
  v89 = MEMORY[0x1EEE9AC00](v87);
  v572 = v480 - v90;
  v91 = MEMORY[0x1EEE9AC00](v89);
  v573 = v480 - v92;
  v93 = MEMORY[0x1EEE9AC00](v91);
  v605 = v480 - v94;
  v95 = MEMORY[0x1EEE9AC00](v93);
  v588 = v480 - v96;
  v97 = MEMORY[0x1EEE9AC00](v95);
  v613 = v480 - v98;
  v99 = MEMORY[0x1EEE9AC00](v97);
  v590 = v480 - v100;
  v101 = MEMORY[0x1EEE9AC00](v99);
  v607 = v480 - v102;
  v103 = MEMORY[0x1EEE9AC00](v101);
  v570 = v480 - v104;
  v105 = MEMORY[0x1EEE9AC00](v103);
  v585 = v480 - v106;
  v107 = MEMORY[0x1EEE9AC00](v105);
  v604 = v480 - v108;
  v109 = MEMORY[0x1EEE9AC00](v107);
  v569 = v480 - v110;
  v111 = MEMORY[0x1EEE9AC00](v109);
  v618 = v480 - v112;
  v113 = MEMORY[0x1EEE9AC00](v111);
  v567 = v480 - v114;
  v115 = MEMORY[0x1EEE9AC00](v113);
  v603 = v480 - v116;
  v117 = MEMORY[0x1EEE9AC00](v115);
  v568 = v480 - v118;
  v119 = MEMORY[0x1EEE9AC00](v117);
  v617 = v480 - v120;
  v121 = MEMORY[0x1EEE9AC00](v119);
  v566 = v480 - v122;
  v123 = MEMORY[0x1EEE9AC00](v121);
  v580 = v480 - v124;
  v125 = MEMORY[0x1EEE9AC00](v123);
  v615 = v480 - v126;
  v127 = MEMORY[0x1EEE9AC00](v125);
  v602 = v480 - v128;
  v129 = MEMORY[0x1EEE9AC00](v127);
  v616 = v480 - v130;
  v131 = MEMORY[0x1EEE9AC00](v129);
  v594 = v480 - v132;
  v133 = MEMORY[0x1EEE9AC00](v131);
  v609 = v480 - v134;
  v135 = MEMORY[0x1EEE9AC00](v133);
  v600 = v480 - v136;
  v137 = MEMORY[0x1EEE9AC00](v135);
  v593 = v480 - v138;
  v139 = MEMORY[0x1EEE9AC00](v137);
  v595 = v480 - v140;
  v141 = MEMORY[0x1EEE9AC00](v139);
  v589 = v480 - v142;
  v636 = *(v3 - 8);
  v143 = MEMORY[0x1EEE9AC00](v141);
  v578 = v480 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = MEMORY[0x1EEE9AC00](v143);
  v583 = v480 - v146;
  v147 = MEMORY[0x1EEE9AC00](v145);
  v614 = v480 - v148;
  v149 = MEMORY[0x1EEE9AC00](v147);
  v620 = v480 - v150;
  v151 = MEMORY[0x1EEE9AC00](v149);
  v581 = v480 - v152;
  v153 = MEMORY[0x1EEE9AC00](v151);
  v621 = v480 - v154;
  v155 = MEMORY[0x1EEE9AC00](v153);
  v582 = v480 - v156;
  v157 = MEMORY[0x1EEE9AC00](v155);
  v597 = v480 - v158;
  v159 = MEMORY[0x1EEE9AC00](v157);
  v601 = v480 - v160;
  v161 = MEMORY[0x1EEE9AC00](v159);
  v596 = v480 - v162;
  v163 = MEMORY[0x1EEE9AC00](v161);
  v579 = v480 - v164;
  v165 = MEMORY[0x1EEE9AC00](v163);
  v622 = v480 - v166;
  v167 = MEMORY[0x1EEE9AC00](v165);
  v591 = v480 - v168;
  v169 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v167);
  v171 = v480 - ((v170 + 15) & 0xFFFFFFFFFFFFFFF0);
  v612 = v4;
  *&v656 = v4;
  v639 = v3;
  *(&v656 + 1) = v3;
  v558 = v6;
  *&v657 = v6;
  *(&v657 + 1) = v635;
  v629 = v7;
  *&v658 = v7;
  v559 = v8;
  *(&v658 + 1) = v8;
  type metadata accessor for CanvasItemContent.CodingKeys();
  swift_getWitnessTable();
  v638 = sub_1E68B3AC0();
  v634 = *(v638 - 8);
  MEMORY[0x1EEE9AC00](v638);
  v173 = v480 - v172;
  __swift_project_boxed_opaque_existential_1(v631, *(v631 + 3));
  v637 = v173;
  v174 = v171;
  sub_1E68B3BD0();
  (*(v169 + 16))(v171, v632, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v335 = v482;
      v334 = v483;
      v336 = v480[0];
      (*(v482 + 32))();
      LOBYTE(v656) = 1;
      v337 = v481;
      v203 = v638;
      v304 = v637;
      sub_1E68B3A30();
      swift_getWitnessTable();
      v338 = v485;
      sub_1E68B3AB0();
      (*(v484 + 8))(v337, v338);
      (*(v335 + 8))(v336, v334);
      goto LABEL_23;
    case 2:
      v271 = *(v171 + 11);
      v666 = *(v171 + 10);
      v667 = v271;
      v272 = *(v171 + 13);
      v668 = *(v171 + 12);
      v669 = v272;
      v273 = *(v171 + 7);
      v662 = *(v171 + 6);
      v663 = v273;
      v274 = *(v171 + 9);
      v664 = *(v171 + 8);
      v665 = v274;
      v275 = *(v171 + 3);
      v658 = *(v171 + 2);
      v659 = v275;
      v276 = *(v171 + 5);
      v660 = *(v171 + 4);
      v661 = v276;
      v277 = *(v171 + 1);
      v656 = *v171;
      v657 = v277;
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      strcpy(&v480[-14], "layout artwork style title subtitle caption primaryActionButton secondaryActionButton customView ");
      *&v640 = &type metadata for FullWidthStageViewLayout;
      v278 = v639;
      *(&v640 + 1) = v639;
      *&v641 = &type metadata for FullWidthStageViewStyle;
      *(&v641 + 1) = v630;
      *&v642 = v630;
      *(&v642 + 1) = v630;
      v279 = v171;
      v280 = v628;
      *&v643 = v628;
      *(&v643 + 1) = v628;
      v281 = v608;
      *&v644 = v608;
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v283 = TupleTypeMetadata[12];
      LODWORD(v626) = v279[TupleTypeMetadata[16]];
      v284 = TupleTypeMetadata[20];
      v285 = TupleTypeMetadata[24];
      v286 = TupleTypeMetadata[28];
      v630 = TupleTypeMetadata[32];
      v631 = TupleTypeMetadata[36];
      *&v632 = TupleTypeMetadata[40];
      (*(v636 + 32))(v622, &v279[v283], v278);
      sub_1E6761420(&v279[v284], v600, &qword_1ED096E68);
      sub_1E6761420(&v279[v285], v609, &qword_1ED096E68);
      sub_1E6761420(&v279[v286], v594, &qword_1ED096E68);
      v287 = v627;
      v288 = *(v627 + 32);
      v288(v611, &v279[v630], v280);
      v288(v610, &v631[v279], v280);
      v289 = v560;
      v290 = v281;
      v291 = v575;
      (*(v560 + 32))(v575, &v279[v632], v290);
      LOBYTE(v640) = 2;
      v292 = v556;
      sub_1E68B3A30();
      v650 = v666;
      v651 = v667;
      v652 = v668;
      v653 = v669;
      v646 = v662;
      v647 = v663;
      v648 = v664;
      v649 = v665;
      v642 = v658;
      v643 = v659;
      v644 = v660;
      v645 = v661;
      v640 = v656;
      v641 = v657;
      v672 = 0;
      sub_1E676B104();
      v293 = v557;
      v294 = v633;
      sub_1E68B3AB0();
      if (v294)
      {
        (*(v514 + 8))(v292, v293);
        (*(v289 + 8))(v291, v608);
        v295 = *(v287 + 8);
        v295(v610, v280);
        v295(v611, v280);
        sub_1E6744A10(v594, &qword_1ED096E68);
        sub_1E6744A10(v609, &qword_1ED096E68);
        sub_1E6744A10(v600, &qword_1ED096E68);
        v296 = *(v636 + 8);
        v297 = v622;
        goto LABEL_15;
      }

      v413 = v626;
      LOBYTE(v640) = 1;
      sub_1E68B3AB0();
      LOBYTE(v640) = v413;
      v672 = 2;
      sub_1E67A3E40();
      sub_1E68B3AB0();
      LOBYTE(v640) = 3;
      sub_1E68B1820();
      sub_1E67BDEF8(&qword_1EE2EDEA0, MEMORY[0x1E6968848]);
      sub_1E68B3A60();
      LOBYTE(v640) = 4;
      sub_1E68B3A60();
      LOBYTE(v640) = 5;
      sub_1E68B3A60();
      LOBYTE(v640) = 6;
      sub_1E68B3A60();
      LOBYTE(v640) = 7;
      sub_1E68B3A60();
      LOBYTE(v640) = 8;
      sub_1E68B3A60();
      (*(v514 + 8))(v556, v557);
      (*(v560 + 8))(v575, v608);
      v478 = *(v627 + 8);
      v479 = v628;
      v478(v610, v628);
      v478(v611, v479);
      sub_1E6744A10(v594, &qword_1ED096E68);
      sub_1E6744A10(v609, &qword_1ED096E68);
      sub_1E6744A10(v600, &qword_1ED096E68);
      (*(v636 + 8))(v622, v639);
      goto LABEL_53;
    case 3:
      v307 = *(v171 + 1);
      v656 = *v171;
      v657 = v307;
      v308 = *(v171 + 3);
      v658 = *(v171 + 2);
      v659 = v308;
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      strcpy(&v480[-6], "layout title description actionButton ");
      *&v640 = &type metadata for InfoActionCardViewLayout;
      *(&v640 + 1) = v630;
      *&v641 = v630;
      v309 = v628;
      *(&v641 + 1) = v628;
      v310 = swift_getTupleTypeMetadata();
      v311 = v310[16];
      v312 = v310[20];
      sub_1E6761420(&v171[v310[12]], v616, &qword_1ED096E68);
      sub_1E6761420(&v171[v311], v602, &qword_1ED096E68);
      v313 = v627;
      (*(v627 + 32))(v586, &v171[v312], v309);
      LOBYTE(v640) = 3;
      v314 = v496;
      v315 = v638;
      v316 = v637;
      sub_1E68B3A30();
      v640 = v656;
      v641 = v657;
      v642 = v658;
      v643 = v659;
      v672 = 0;
      sub_1E676B05C();
      v317 = v499;
      v318 = v633;
      sub_1E68B3AB0();
      if (v318)
      {
        (*(v498 + 8))(v314, v317);
        (*(v313 + 8))(v586, v309);
        sub_1E6744A10(v602, &qword_1ED096E68);
        sub_1E6744A10(v616, &qword_1ED096E68);
        return (*(v634 + 8))(v316, v315);
      }

      LOBYTE(v640) = 1;
      sub_1E68B1820();
      sub_1E67BDEF8(&qword_1EE2EDEA0, MEMORY[0x1E6968848]);
      sub_1E68B3A60();
      LOBYTE(v640) = 2;
      sub_1E68B3A60();
      LOBYTE(v640) = 3;
      v452 = v586;
      sub_1E68B3A60();
      v453 = v317;
      v454 = v638;
      v455 = v637;
      (*(v498 + 8))(v314, v453);
      (*(v313 + 8))(v452, v628);
      sub_1E6744A10(v602, &qword_1ED096E68);
      sub_1E6744A10(v616, &qword_1ED096E68);
      v206 = *(v634 + 8);
      v207 = v455;
      goto LABEL_59;
    case 4:
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      strcpy(&v480[-6], "artwork footnote subtitle title ");
      v224 = v639;
      *&v656 = v639;
      *(&v656 + 1) = v630;
      *&v657 = v630;
      *(&v657 + 1) = v630;
      v225 = swift_getTupleTypeMetadata();
      v226 = v225[12];
      v227 = v225[16];
      v228 = v225[20];
      (*(v636 + 32))(v579, v174, v224);
      sub_1E6761420(&v174[v226], v615, &qword_1ED096E68);
      sub_1E6761420(&v174[v227], v580, &qword_1ED096E68);
      v229 = &v174[v228];
      v230 = v566;
      sub_1E6761420(v229, v566, &qword_1ED096E68);
      LOBYTE(v656) = 4;
      v231 = v501;
      v232 = v638;
      v233 = v637;
      sub_1E68B3A30();
      LOBYTE(v656) = 0;
      v234 = v505;
      v235 = v633;
      sub_1E68B3AB0();
      if (v235)
      {
        (*(v504 + 8))(v231, v234);
        sub_1E6744A10(v230, &qword_1ED096E68);
        sub_1E6744A10(v580, &qword_1ED096E68);
        sub_1E6744A10(v615, &qword_1ED096E68);
        (*(v636 + 8))(v579, v224);
        return (*(v634 + 8))(v233, v232);
      }

      else
      {
        LOBYTE(v656) = 1;
        sub_1E68B1820();
        sub_1E67BDEF8(&qword_1EE2EDEA0, MEMORY[0x1E6968848]);
        sub_1E68B3A60();
        LOBYTE(v656) = 2;
        v431 = v580;
        sub_1E68B3A60();
        v432 = v566;
        v433 = v579;
        LOBYTE(v656) = 3;
        sub_1E68B3A60();
        (*(v504 + 8))(v231, v234);
        sub_1E6744A10(v432, &qword_1ED096E68);
        sub_1E6744A10(v431, &qword_1ED096E68);
        sub_1E6744A10(v615, &qword_1ED096E68);
        v296 = *(v636 + 8);
        v297 = v433;
LABEL_15:
        v296(v297, v639);
        return (*(v634 + 8))(v637, v638);
      }

    case 5:
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      strcpy(&v480[-6], "artwork caption displayStyle layout title ");
      v340 = v639;
      *&v656 = v639;
      *(&v656 + 1) = v630;
      *&v657 = &type metadata for DynamicBrickDisplayStyle;
      *(&v657 + 1) = &type metadata for DynamicBrickViewLayout;
      *&v658 = v630;
      v341 = swift_getTupleTypeMetadata();
      v342 = v341[12];
      LODWORD(v635) = v174[v341[16]];
      v343 = &v174[v341[20]];
      v344 = *v343;
      v345 = *(v343 + 1);
      v346 = v341[24];
      v347 = v174;
      v348 = v636;
      (*(v636 + 32))(v596, v347, v340);
      sub_1E6761420(&v347[v342], v617, &qword_1ED096E68);
      v349 = v568;
      sub_1E6761420(&v347[v346], v568, &qword_1ED096E68);
      LOBYTE(v656) = 5;
      v329 = v638;
      v330 = v637;
      sub_1E68B3A30();
      LOBYTE(v656) = 0;
      v350 = v639;
      v351 = v510;
      v352 = v633;
      sub_1E68B3AB0();
      if (v352)
      {
        (*(v509 + 8))(v623, v351);
        sub_1E6744A10(v349, &qword_1ED096E68);
        sub_1E6744A10(v617, &qword_1ED096E68);
        (*(v348 + 8))(v596, v350);
        goto LABEL_27;
      }

      v422 = v635;
      LOBYTE(v656) = 1;
      v423 = sub_1E68B1820();
      v424 = sub_1E67BDEF8(&qword_1EE2EDEA0, MEMORY[0x1E6968848]);
      sub_1E68B3A60();
      *&v632 = v424;
      v633 = v423;
      LOBYTE(v656) = v422;
      LOBYTE(v640) = 2;
      sub_1E67A3DEC();
      sub_1E68B3AB0();
      v442 = v639;
      *&v656 = v344;
      *(&v656 + 1) = v345;
      LOBYTE(v640) = 3;
      sub_1E676AE64();
      sub_1E68B3AB0();
      v454 = v638;
      LOBYTE(v656) = 4;
      v466 = v568;
      v467 = v623;
      sub_1E68B3A60();
      v468 = v617;
      (*(v509 + 8))(v467, v351);
      sub_1E6744A10(v466, &qword_1ED096E68);
      sub_1E6744A10(v468, &qword_1ED096E68);
      (*(v348 + 8))(v596, v442);
      goto LABEL_58;
    case 6:
      v635 = *v171;
      v370 = *(v171 + 2);
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      strcpy(&v480[-6], "layout artwork title subtitle ");
      *&v656 = &type metadata for MonogramVerticalStackViewLayout;
      v371 = v639;
      *(&v656 + 1) = v639;
      *&v657 = v630;
      *(&v657 + 1) = v630;
      v372 = swift_getTupleTypeMetadata();
      v373 = v372[16];
      v374 = v372[20];
      v375 = v636;
      (*(v636 + 32))(v601, &v171[v372[12]], v371);
      sub_1E6761420(&v171[v373], v603, &qword_1ED096E68);
      v376 = v567;
      sub_1E6761420(&v171[v374], v567, &qword_1ED096E68);
      LOBYTE(v656) = 6;
      v377 = v508;
      v378 = v638;
      v379 = v637;
      sub_1E68B3A30();
      v656 = v635;
      *&v657 = v370;
      LOBYTE(v640) = 0;
      sub_1E676AF0C();
      v380 = v564;
      v381 = v633;
      sub_1E68B3AB0();
      if (v381)
      {
        (*(v511 + 8))(v377, v380);
        sub_1E6744A10(v376, &qword_1ED096E68);
        sub_1E6744A10(v603, &qword_1ED096E68);
        (*(v375 + 8))(v601, v639);
        return (*(v634 + 8))(v379, v378);
      }

      LOBYTE(v656) = 1;
      v427 = v601;
      v428 = v639;
      sub_1E68B3AB0();
      LOBYTE(v656) = 2;
      v444 = sub_1E68B1820();
      *&v635 = 0;
      v445 = v444;
      sub_1E67BDEF8(&qword_1EE2EDEA0, MEMORY[0x1E6968848]);
      v446 = v603;
      v633 = v445;
      v447 = v635;
      sub_1E68B3A60();
      if (v447)
      {
        (*(v511 + 8))(v377, v564);
        sub_1E6744A10(v567, &qword_1ED096E68);
        sub_1E6744A10(v446, &qword_1ED096E68);
        (*(v636 + 8))(v427, v428);
        v410 = *(v634 + 8);
        v411 = v379;
      }

      else
      {
        v456 = v379;
        LOBYTE(v656) = 3;
        v457 = v567;
        v458 = v564;
        sub_1E68B3A60();
        (*(v511 + 8))(v377, v458);
        sub_1E6744A10(v457, &qword_1ED096E68);
        sub_1E6744A10(v603, &qword_1ED096E68);
        (*(v636 + 8))(v601, v428);
        v410 = *(v634 + 8);
        v411 = v456;
      }

      goto LABEL_54;
    case 7:
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      strcpy(&v480[-6], "artwork caption displayStyle layout title ");
      v319 = v639;
      *&v656 = v639;
      *(&v656 + 1) = v630;
      *&v657 = &type metadata for DynamicBrickDisplayStyle;
      *(&v657 + 1) = &type metadata for DynamicBrickViewLayout;
      *&v658 = v630;
      v320 = swift_getTupleTypeMetadata();
      v321 = v320[12];
      LODWORD(v635) = v174[v320[16]];
      v322 = &v174[v320[20]];
      v323 = *v322;
      v324 = *(v322 + 1);
      v325 = v320[24];
      v326 = v174;
      v327 = v636;
      (*(v636 + 32))(v597, v326, v319);
      sub_1E6761420(&v326[v321], v618, &qword_1ED096E68);
      v328 = v569;
      sub_1E6761420(&v326[v325], v569, &qword_1ED096E68);
      LOBYTE(v656) = 7;
      v329 = v638;
      v330 = v637;
      sub_1E68B3A30();
      LOBYTE(v656) = 0;
      v331 = v639;
      v332 = v518;
      v333 = v633;
      sub_1E68B3AB0();
      if (v333)
      {
        (*(v517 + 8))(v624, v332);
        sub_1E6744A10(v328, &qword_1ED096E68);
        sub_1E6744A10(v618, &qword_1ED096E68);
        (*(v327 + 8))(v597, v331);
LABEL_27:
        v206 = *(v634 + 8);
        v207 = v330;
        v339 = v329;
      }

      else
      {
        v417 = v635;
        LOBYTE(v656) = 1;
        v418 = sub_1E68B1820();
        v419 = sub_1E67BDEF8(&qword_1EE2EDEA0, MEMORY[0x1E6968848]);
        sub_1E68B3A60();
        *&v632 = v419;
        v633 = v418;
        LOBYTE(v656) = v417;
        LOBYTE(v640) = 2;
        sub_1E67A3DEC();
        sub_1E68B3AB0();
        v440 = v639;
        *&v656 = v323;
        *(&v656 + 1) = v324;
        LOBYTE(v640) = 3;
        sub_1E676AE64();
        sub_1E68B3AB0();
        v454 = v638;
        LOBYTE(v656) = 4;
        v463 = v569;
        v464 = v624;
        sub_1E68B3A60();
        v465 = v618;
        (*(v517 + 8))(v464, v332);
        sub_1E6744A10(v463, &qword_1ED096E68);
        sub_1E6744A10(v465, &qword_1ED096E68);
        (*(v327 + 8))(v597, v440);
LABEL_58:
        v206 = *(v634 + 8);
        v207 = v637;
LABEL_59:
        v339 = v454;
      }

      goto LABEL_28;
    case 8:
      *&v662 = *(v171 + 12);
      v397 = *(v171 + 5);
      v660 = *(v171 + 4);
      v661 = v397;
      v398 = *(v171 + 1);
      v656 = *v171;
      v657 = v398;
      v399 = *(v171 + 2);
      v659 = *(v171 + 3);
      v658 = v399;
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      strcpy(&v480[-6], "layout artwork title subtitle caption ");
      *&v640 = &type metadata for StandardCardViewLayout;
      v400 = v639;
      *(&v640 + 1) = v639;
      *&v641 = v630;
      *(&v641 + 1) = v630;
      *&v642 = v630;
      v401 = swift_getTupleTypeMetadata();
      v402 = v401[16];
      v403 = v401[20];
      v404 = v401[24];
      v405 = v636;
      (*(v636 + 32))(v582, &v171[v401[12]], v400);
      sub_1E6761420(&v171[v402], v604, &qword_1ED096E68);
      sub_1E6761420(&v171[v403], v585, &qword_1ED096E68);
      v406 = v570;
      sub_1E6761420(&v171[v404], v570, &qword_1ED096E68);
      LOBYTE(v640) = 8;
      v407 = v522;
      v366 = v638;
      v367 = v637;
      sub_1E68B3A30();
      v644 = v660;
      v645 = v661;
      *&v646 = v662;
      v640 = v656;
      v641 = v657;
      v643 = v659;
      v642 = v658;
      v672 = 0;
      sub_1E676ADBC();
      v408 = v524;
      v409 = v633;
      sub_1E68B3AB0();
      if (v409)
      {
        (*(v523 + 8))(v407, v408);
        sub_1E6744A10(v406, &qword_1ED096E68);
        sub_1E6744A10(v585, &qword_1ED096E68);
        sub_1E6744A10(v604, &qword_1ED096E68);
        (*(v405 + 8))(v582, v639);
        goto LABEL_38;
      }

      LOBYTE(v640) = 1;
      v430 = v582;
      sub_1E68B3AB0();
      LOBYTE(v640) = 2;
      sub_1E68B1820();
      sub_1E67BDEF8(&qword_1EE2EDEA0, MEMORY[0x1E6968848]);
      sub_1E68B3A60();
      v449 = v570;
      LOBYTE(v640) = 3;
      v460 = v585;
      sub_1E68B3A60();
      LOBYTE(v640) = 4;
      sub_1E68B3A60();
      (*(v523 + 8))(v407, v408);
      sub_1E6744A10(v449, &qword_1ED096E68);
      sub_1E6744A10(v460, &qword_1ED096E68);
      sub_1E6744A10(v604, &qword_1ED096E68);
      (*(v636 + 8))(v430, v639);
      goto LABEL_53;
    case 9:
      v251 = *(v171 + 7);
      v662 = *(v171 + 6);
      v663 = v251;
      v252 = *(v171 + 9);
      v664 = *(v171 + 8);
      v665 = v252;
      v253 = *(v171 + 3);
      v658 = *(v171 + 2);
      v659 = v253;
      v254 = *(v171 + 5);
      v660 = *(v171 + 4);
      v661 = v254;
      v255 = *(v171 + 1);
      v656 = *v171;
      v657 = v255;
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      strcpy(&v480[-10], "layout artwork title subtitle caption groupTitle accessoryView ");
      *&v640 = &type metadata for StandardHorizontalStackViewLayout;
      v256 = v639;
      *(&v640 + 1) = v639;
      *&v641 = v630;
      *(&v641 + 1) = v630;
      *&v642 = v630;
      *(&v642 + 1) = v630;
      v257 = v628;
      *&v643 = v628;
      v258 = swift_getTupleTypeMetadata();
      v259 = v258[12];
      v260 = v258[16];
      v261 = v258[20];
      v262 = v258[24];
      v263 = v258[28];
      *&v632 = v258[32];
      (*(v636 + 32))(v621, &v174[v259], v256);
      sub_1E6761420(&v174[v260], v607, &qword_1ED096E68);
      sub_1E6761420(&v174[v261], v590, &qword_1ED096E68);
      sub_1E6761420(&v174[v262], v613, &qword_1ED096E68);
      sub_1E6761420(&v174[v263], v588, &qword_1ED096E68);
      v264 = v627;
      v265 = v563;
      (*(v627 + 32))(v563, &v174[v632], v257);
      LOBYTE(v640) = 9;
      v266 = v539;
      v267 = v638;
      v268 = v637;
      sub_1E68B3A30();
      v646 = v662;
      v647 = v663;
      v648 = v664;
      v649 = v665;
      v642 = v658;
      v643 = v659;
      v644 = v660;
      v645 = v661;
      v640 = v656;
      v641 = v657;
      v672 = 0;
      sub_1E676AD14();
      v269 = v542;
      v270 = v633;
      sub_1E68B3AB0();
      if (v270)
      {
        (*(v543 + 8))(v266, v269);
        (*(v264 + 8))(v265, v628);
        sub_1E6744A10(v588, &qword_1ED096E68);
        sub_1E6744A10(v613, &qword_1ED096E68);
        sub_1E6744A10(v590, &qword_1ED096E68);
        sub_1E6744A10(v607, &qword_1ED096E68);
        (*(v636 + 8))(v621, v639);
        return (*(v634 + 8))(v268, v267);
      }

      LOBYTE(v640) = 1;
      sub_1E68B3AB0();
      LOBYTE(v640) = 2;
      sub_1E68B1820();
      v435 = v266;
      sub_1E67BDEF8(&qword_1EE2EDEA0, MEMORY[0x1E6968848]);
      sub_1E68B3A60();
      v436 = v269;
      v437 = v588;
      LOBYTE(v640) = 3;
      v451 = v590;
      sub_1E68B3A60();
      LOBYTE(v640) = 4;
      sub_1E68B3A60();
      LOBYTE(v640) = 5;
      sub_1E68B3A60();
      LOBYTE(v640) = 6;
      v471 = v563;
      sub_1E68B3A60();
      v472 = v607;
      (*(v543 + 8))(v435, v436);
      (*(v627 + 8))(v471, v628);
      sub_1E6744A10(v437, &qword_1ED096E68);
      sub_1E6744A10(v613, &qword_1ED096E68);
      sub_1E6744A10(v451, &qword_1ED096E68);
      sub_1E6744A10(v472, &qword_1ED096E68);
      (*(v636 + 8))(v621, v639);
      goto LABEL_53;
    case 10:
      LODWORD(v635) = *v171;
      v382 = *(v171 + 1);
      v383 = *(v171 + 2);
      *&v632 = *(v171 + 3);
      LODWORD(v631) = v171[32];
      v384 = *(v171 + 5);
      v628 = *(v171 + 6);
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      strcpy(&v480[-6], "layout artwork title subtitle caption ");
      *&v656 = &type metadata for StandardVerticalStackViewLayout;
      v385 = v639;
      *(&v656 + 1) = v639;
      *&v657 = v630;
      *(&v657 + 1) = v630;
      *&v658 = v630;
      v386 = swift_getTupleTypeMetadata();
      v387 = v386[16];
      v388 = v386[20];
      v389 = v386[24];
      v390 = v636;
      (*(v636 + 32))(v581, &v174[v386[12]], v385);
      sub_1E6761420(&v174[v387], v605, &qword_1ED096E68);
      v391 = v573;
      sub_1E6761420(&v174[v388], v573, &qword_1ED096E68);
      v392 = &v174[v389];
      v393 = v572;
      sub_1E6761420(v392, v572, &qword_1ED096E68);
      LOBYTE(v656) = 10;
      v394 = v529;
      v395 = v638;
      v247 = v637;
      sub_1E68B3A30();
      LOBYTE(v656) = v635;
      *(&v656 + 1) = v382;
      *&v657 = v383;
      *(&v657 + 1) = v632;
      LOBYTE(v658) = v631;
      *(&v658 + 1) = v384;
      *&v659 = v628;
      LOBYTE(v640) = 0;
      sub_1E676AC6C();
      v396 = v633;
      sub_1E68B3AB0();
      if (v396)
      {
        (*(v530 + 8))(v394, v625);
        sub_1E6744A10(v393, &qword_1ED096E68);
        sub_1E6744A10(v391, &qword_1ED096E68);
        sub_1E6744A10(v605, &qword_1ED096E68);
        (*(v390 + 8))(v581, v639);
        return (*(v634 + 8))(v247, v395);
      }

      LOBYTE(v656) = 1;
      v429 = v581;
      sub_1E68B3AB0();
      LOBYTE(v656) = 2;
      sub_1E68B1820();
      sub_1E67BDEF8(&qword_1EE2EDEA0, MEMORY[0x1E6968848]);
      sub_1E68B3A60();
      v448 = v572;
      LOBYTE(v656) = 3;
      v459 = v573;
      sub_1E68B3A60();
      LOBYTE(v656) = 4;
      sub_1E68B3A60();
      (*(v530 + 8))(v394, v625);
      sub_1E6744A10(v448, &qword_1ED096E68);
      sub_1E6744A10(v459, &qword_1ED096E68);
      sub_1E6744A10(v605, &qword_1ED096E68);
      (*(v636 + 8))(v429, v639);
      v410 = *(v634 + 8);
      v411 = v247;
      goto LABEL_54;
    case 11:
      v208 = *(v171 + 4);
      v209 = *(v171 + 1);
      v635 = *v171;
      v632 = v209;
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      strcpy(&v480[-10], "layout artwork title subtitle caption artworkBackgroundColor ");
      *&v656 = &type metadata for SummaryCardViewLayout;
      v210 = v639;
      *(&v656 + 1) = v639;
      *&v657 = v630;
      *(&v657 + 1) = v630;
      *&v658 = v630;
      *(&v658 + 1) = v515;
      v211 = swift_getTupleTypeMetadata();
      v212 = v211[16];
      v213 = v211[20];
      v214 = v211[24];
      v215 = v211[28];
      (*(v636 + 32))(v620, &v174[v211[12]], v210);
      sub_1E6761420(&v174[v212], v606, &qword_1ED096E68);
      sub_1E6761420(&v174[v213], v599, &qword_1ED096E68);
      v216 = v577;
      sub_1E6761420(&v174[v214], v577, &qword_1ED096E68);
      v217 = &v174[v215];
      v218 = v565;
      sub_1E6761420(v217, v565, &qword_1ED096E88);
      LOBYTE(v656) = 11;
      v219 = v548;
      v220 = v638;
      v221 = v637;
      sub_1E68B3A30();
      v657 = v632;
      v656 = v635;
      *&v658 = v208;
      LOBYTE(v640) = 0;
      sub_1E676ABC4();
      v222 = v550;
      v223 = v633;
      sub_1E68B3AB0();
      if (v223)
      {
        (*(v549 + 8))(v219, v222);
        sub_1E6744A10(v218, &qword_1ED096E88);
        sub_1E6744A10(v216, &qword_1ED096E68);
        sub_1E6744A10(v599, &qword_1ED096E68);
        sub_1E6744A10(v606, &qword_1ED096E68);
        (*(v636 + 8))(v620, v639);
        return (*(v634 + 8))(v221, v220);
      }

      LOBYTE(v656) = 1;
      sub_1E68B3AB0();
      LOBYTE(v656) = 2;
      sub_1E68B1820();
      sub_1E67BDEF8(&qword_1EE2EDEA0, MEMORY[0x1E6968848]);
      sub_1E68B3A60();
      LOBYTE(v656) = 3;
      sub_1E68B3A60();
      LOBYTE(v656) = 4;
      v461 = v577;
      sub_1E68B3A60();
      v462 = v620;
      LOBYTE(v656) = 5;
      sub_1E68B1A10();
      sub_1E67BDEF8(&qword_1ED0980E8, MEMORY[0x1E699DB98]);
      v470 = v565;
      sub_1E68B3A60();
      (*(v549 + 8))(0, v222);
      sub_1E6744A10(v470, &qword_1ED096E88);
      sub_1E6744A10(v461, &qword_1ED096E68);
      sub_1E6744A10(v599, &qword_1ED096E68);
      sub_1E6744A10(v606, &qword_1ED096E68);
      (*(v636 + 8))(v462, v639);
      v410 = *(v634 + 8);
      v411 = v221;
      goto LABEL_54;
    case 12:
      v635 = *v171;
      v236 = *(v171 + 2);
      LODWORD(v632) = v171[24];
      v237 = *(v171 + 4);
      v238 = *(v171 + 5);
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      strcpy(&v480[-6], "layout artwork title overlay ");
      *&v656 = &type metadata for TallCardViewLayout;
      v239 = v639;
      *(&v656 + 1) = v639;
      *&v657 = v630;
      *(&v657 + 1) = &type metadata for Overlay;
      v240 = swift_getTupleTypeMetadata();
      v241 = v240[12];
      v242 = v240[16];
      LODWORD(v631) = v171[v240[20]];
      v243 = v636;
      (*(v636 + 32))(v614, &v174[v241], v239);
      v244 = v571;
      sub_1E6761420(&v174[v242], v571, &qword_1ED096E68);
      LOBYTE(v656) = 12;
      v245 = v541;
      v246 = v638;
      v247 = v637;
      sub_1E68B3A30();
      v656 = v635;
      *&v657 = v236;
      BYTE8(v657) = v632;
      *&v658 = v237;
      *(&v658 + 1) = v238;
      v248 = v245;
      LOBYTE(v640) = 0;
      sub_1E676AB1C();
      v249 = v545;
      v250 = v633;
      sub_1E68B3AB0();
      if (v250)
      {
        (*(v544 + 8))(v248, v249);
        sub_1E6744A10(v244, &qword_1ED096E68);
        (*(v243 + 8))(v614, v239);
        return (*(v634 + 8))(v247, v246);
      }

      else
      {
        v412 = v631;
        LOBYTE(v656) = 1;
        sub_1E68B3AB0();
        LOBYTE(v656) = 2;
        sub_1E68B1820();
        sub_1E67BDEF8(&qword_1EE2EDEA0, MEMORY[0x1E6968848]);
        v434 = v571;
        sub_1E68B3A60();
        LOBYTE(v656) = v412;
        LOBYTE(v640) = 3;
        sub_1E67A3D98();
        sub_1E68B3AB0();
        v395 = v638;
        v450 = v614;
        (*(v544 + 8))(v248, v249);
        sub_1E6744A10(v434, &qword_1ED096E68);
        (*(v636 + 8))(v450, v639);
        return (*(v634 + 8))(v247, v395);
      }

    case 13:
      v353 = *(v171 + 5);
      v660 = *(v171 + 4);
      v661 = v353;
      v354 = *(v171 + 7);
      v662 = *(v171 + 6);
      v663 = v354;
      v355 = *(v171 + 1);
      v656 = *v171;
      v657 = v355;
      v356 = *(v171 + 3);
      v658 = *(v171 + 2);
      v659 = v356;
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      strcpy(&v480[-6], "layout artwork title subtitle caption ");
      *&v640 = &type metadata for VerticalStackCardLayout;
      v357 = v639;
      *(&v640 + 1) = v639;
      *&v641 = v630;
      *(&v641 + 1) = v630;
      *&v642 = v630;
      v358 = swift_getTupleTypeMetadata();
      v359 = v358[16];
      v360 = v358[20];
      v361 = v358[24];
      v362 = v636;
      (*(v636 + 32))(v583, &v174[v358[12]], v357);
      sub_1E6761420(&v174[v359], v587, &qword_1ED096E68);
      sub_1E6761420(&v174[v360], v598, &qword_1ED096E68);
      v363 = &v174[v361];
      v364 = v576;
      sub_1E6761420(v363, v576, &qword_1ED096E68);
      LOBYTE(v640) = 13;
      v365 = v552;
      v366 = v638;
      v367 = v637;
      sub_1E68B3A30();
      v644 = v660;
      v645 = v661;
      v646 = v662;
      v647 = v663;
      v640 = v656;
      v641 = v657;
      v642 = v658;
      v643 = v659;
      v672 = 0;
      sub_1E676AA74();
      v368 = v562;
      v369 = v633;
      sub_1E68B3AB0();
      if (!v369)
      {
        v425 = v362;
        LOBYTE(v640) = 1;
        v426 = v583;
        sub_1E68B3AB0();
        LOBYTE(v640) = 2;
        sub_1E68B1820();
        sub_1E67BDEF8(&qword_1EE2EDEA0, MEMORY[0x1E6968848]);
        v443 = v587;
        sub_1E68B3A60();
        LOBYTE(v640) = 3;
        sub_1E68B3A60();
        LOBYTE(v640) = 4;
        v469 = v576;
        sub_1E68B3A60();
        (*(v555 + 8))(0, v562);
        sub_1E6744A10(v469, &qword_1ED096E68);
        sub_1E6744A10(v598, &qword_1ED096E68);
        sub_1E6744A10(v443, &qword_1ED096E68);
        (*(v425 + 8))(v426, v639);
        goto LABEL_53;
      }

      (*(v555 + 8))(v365, v368);
      sub_1E6744A10(v364, &qword_1ED096E68);
      sub_1E6744A10(v598, &qword_1ED096E68);
      sub_1E6744A10(v587, &qword_1ED096E68);
      (*(v362 + 8))(v583, v639);
LABEL_38:
      result = (*(v634 + 8))(v367, v366);
      break;
    case 14:
      v199 = v535;
      v200 = v531;
      v201 = v558;
      (*(v535 + 32))();
      LOBYTE(v656) = 14;
      v202 = v533;
      v203 = v638;
      v204 = v637;
      sub_1E68B3A30();
      v205 = v537;
      sub_1E68B3AB0();
      (*(v536 + 8))(v202, v205);
      (*(v199 + 8))(v200, v201);
      v206 = *(v634 + 8);
      v207 = v204;
      goto LABEL_24;
    case 15:
      v298 = v639;
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v300 = *(TupleTypeMetadata3 + 48);
      v301 = *(TupleTypeMetadata3 + 64);
      v302 = v636;
      (*(v636 + 32))(v578, v174, v298);
      sub_1E6761420(&v174[v300], v619, &qword_1ED096E68);
      sub_1E6761420(&v174[v301], v584, &qword_1ED096E68);
      LOBYTE(v656) = 15;
      v303 = v551;
      v203 = v638;
      v304 = v637;
      sub_1E68B3A30();
      LOBYTE(v656) = 0;
      v305 = v554;
      v306 = v633;
      sub_1E68B3AB0();
      if (v306)
      {
        (*(v553 + 8))(v303, v305);
        sub_1E6744A10(v584, &qword_1ED096E68);
        sub_1E6744A10(v619, &qword_1ED096E68);
        (*(v302 + 8))(v578, v298);
LABEL_23:
        v206 = *(v634 + 8);
        v207 = v304;
LABEL_24:
        v339 = v203;
LABEL_28:
        result = v206(v207, v339);
      }

      else
      {
        v414 = v298;
        LOBYTE(v656) = 1;
        sub_1E68B1820();
        sub_1E67BDEF8(&qword_1EE2EDEA0, MEMORY[0x1E6968848]);
        v415 = v303;
        sub_1E68B3A60();
        v416 = v305;
        LOBYTE(v656) = 2;
        v438 = v584;
        sub_1E68B3A60();
        v439 = v578;
        (*(v553 + 8))(v415, v416);
        sub_1E6744A10(v438, &qword_1ED096E68);
        sub_1E6744A10(v619, &qword_1ED096E68);
        (*(v302 + 8))(v439, v414);
LABEL_53:
        v410 = *(v634 + 8);
        v411 = v637;
LABEL_54:
        result = v410(v411, v638);
      }

      break;
    default:
      v671 = *(v171 + 30);
      v176 = *(v171 + 13);
      v668 = *(v171 + 12);
      v669 = v176;
      v670 = *(v171 + 14);
      v177 = *(v171 + 9);
      v664 = *(v171 + 8);
      v665 = v177;
      v178 = *(v171 + 11);
      v666 = *(v171 + 10);
      v667 = v178;
      v179 = *(v171 + 5);
      v660 = *(v171 + 4);
      v661 = v179;
      v180 = *(v171 + 7);
      v662 = *(v171 + 6);
      v663 = v180;
      v181 = *(v171 + 1);
      v656 = *v171;
      v657 = v181;
      v182 = *(v171 + 3);
      v658 = *(v171 + 2);
      v659 = v182;
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      strcpy(&v480[-12], "layout artwork style title subtitle caption primaryActionButton secondaryActionButton ");
      *&v640 = &type metadata for ActionCardViewLayout;
      v183 = v639;
      *(&v640 + 1) = v639;
      *&v641 = &type metadata for ActionCardViewStyle;
      *(&v641 + 1) = v630;
      *&v642 = v630;
      *(&v642 + 1) = v630;
      v184 = v612;
      *&v643 = v612;
      v185 = v628;
      *(&v643 + 1) = v628;
      v186 = swift_getTupleTypeMetadata();
      v187 = v186[12];
      LODWORD(v630) = v174[v186[16]];
      v188 = v186[20];
      v189 = v186[24];
      v190 = v186[28];
      v631 = v186[32];
      *&v632 = v186[36];
      (*(v636 + 32))(v591, &v174[v187], v183);
      sub_1E6761420(&v174[v188], v589, &qword_1ED096E68);
      sub_1E6761420(&v174[v189], v595, &qword_1ED096E68);
      sub_1E6761420(&v174[v190], v593, &qword_1ED096E68);
      v191 = v561;
      (*(v561 + 32))(v592, &v631[v174], v184);
      v192 = v627;
      v193 = v574;
      (*(v627 + 32))(v574, &v174[v632], v185);
      LOBYTE(v640) = 0;
      v194 = v497;
      v195 = v638;
      v196 = v637;
      sub_1E68B3A30();
      v652 = v668;
      v653 = v669;
      v654 = v670;
      v655 = v671;
      v648 = v664;
      v649 = v665;
      v650 = v666;
      v651 = v667;
      v644 = v660;
      v645 = v661;
      v646 = v662;
      v647 = v663;
      v640 = v656;
      v641 = v657;
      v642 = v658;
      v643 = v659;
      v672 = 0;
      sub_1E676B1AC();
      v197 = v633;
      sub_1E68B3AB0();
      if (v197)
      {
        (*(v502 + 8))(v194, v626);
        (*(v192 + 8))(v193, v628);
        (*(v191 + 8))(v592, v612);
        sub_1E6744A10(v593, &qword_1ED096E68);
        sub_1E6744A10(v595, &qword_1ED096E68);
        sub_1E6744A10(v589, &qword_1ED096E68);
        (*(v636 + 8))(v591, v639);
        return (*(v634 + 8))(v196, v195);
      }

      else
      {
        v420 = v630;
        LOBYTE(v640) = 1;
        v421 = v194;
        sub_1E68B3AB0();
        LOBYTE(v640) = v420;
        v672 = 2;
        sub_1E67A3E94();
        sub_1E68B3AB0();
        v441 = v589;
        LOBYTE(v640) = 3;
        sub_1E68B1820();
        sub_1E67BDEF8(&qword_1EE2EDEA0, MEMORY[0x1E6968848]);
        sub_1E68B3A60();
        LOBYTE(v640) = 4;
        sub_1E68B3A60();
        LOBYTE(v640) = 5;
        sub_1E68B3A60();
        LOBYTE(v640) = 6;
        v473 = v612;
        sub_1E68B3AB0();
        LOBYTE(v640) = 7;
        v474 = v574;
        v475 = v473;
        v476 = v626;
        v477 = v475;
        sub_1E68B3A60();
        (*(v502 + 8))(v421, v476);
        (*(v192 + 8))(v474, v628);
        (*(v561 + 8))(v592, v477);
        sub_1E6744A10(v593, &qword_1ED096E68);
        sub_1E6744A10(v595, &qword_1ED096E68);
        sub_1E6744A10(v441, &qword_1ED096E68);
        (*(v636 + 8))(v591, v639);
        return (*(v634 + 8))(v637, v638);
      }
  }

  return result;
}

unint64_t sub_1E67A3D98()
{
  result = qword_1EE2EA9B8;
  if (!qword_1EE2EA9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA9B8);
  }

  return result;
}

unint64_t sub_1E67A3DEC()
{
  result = qword_1ED0980F0;
  if (!qword_1ED0980F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0980F0);
  }

  return result;
}

unint64_t sub_1E67A3E40()
{
  result = qword_1ED0980F8;
  if (!qword_1ED0980F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0980F8);
  }

  return result;
}

unint64_t sub_1E67A3E94()
{
  result = qword_1EE2EB698;
  if (!qword_1EE2EB698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EB698);
  }

  return result;
}

uint64_t CanvasItemContent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v212 = a8;
  *&v318 = a2;
  *(&v318 + 1) = a3;
  *&v319 = a4;
  *(&v319 + 1) = a5;
  v320 = a6;
  v321 = a7;
  v310 = type metadata accessor for CanvasItemContent.WideBrickCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v228 = sub_1E68B3A20();
  v229 = *(v228 - 8);
  MEMORY[0x1EEE9AC00](v228);
  v274 = &v206 - v15;
  *&v318 = a2;
  *(&v318 + 1) = a3;
  *&v319 = a4;
  *(&v319 + 1) = a5;
  v320 = a6;
  v321 = a7;
  v16 = type metadata accessor for CanvasItemContent.ViewBuilderCodingKeys();
  v17 = swift_getWitnessTable();
  v304 = v16;
  v303 = v17;
  v226 = sub_1E68B3A20();
  v225 = *(v226 - 8);
  MEMORY[0x1EEE9AC00](v226);
  v273 = &v206 - v18;
  *&v318 = a2;
  *(&v318 + 1) = a3;
  *&v319 = a4;
  *(&v319 + 1) = a5;
  v320 = a6;
  v321 = a7;
  v19 = type metadata accessor for CanvasItemContent.VerticalStackCardCodingKeys();
  v20 = swift_getWitnessTable();
  v302 = v19;
  v301 = v20;
  v247 = sub_1E68B3A20();
  v230 = *(v247 - 8);
  MEMORY[0x1EEE9AC00](v247);
  v286 = &v206 - v21;
  *&v318 = a2;
  *(&v318 + 1) = a3;
  *&v319 = a4;
  *(&v319 + 1) = a5;
  v320 = a6;
  v321 = a7;
  v22 = type metadata accessor for CanvasItemContent.TallCardCodingKeys();
  v23 = swift_getWitnessTable();
  v300 = v22;
  v299 = v23;
  v245 = sub_1E68B3A20();
  v227 = *(v245 - 8);
  MEMORY[0x1EEE9AC00](v245);
  v287 = &v206 - v24;
  *&v318 = a2;
  *(&v318 + 1) = a3;
  *&v319 = a4;
  *(&v319 + 1) = a5;
  v320 = a6;
  v321 = a7;
  v25 = type metadata accessor for CanvasItemContent.SummaryCardCodingKeys();
  v26 = swift_getWitnessTable();
  v298 = v25;
  v297 = v26;
  v254 = sub_1E68B3A20();
  v231 = *(v254 - 8);
  MEMORY[0x1EEE9AC00](v254);
  v275 = &v206 - v27;
  *&v318 = a2;
  *(&v318 + 1) = a3;
  *&v319 = a4;
  *(&v319 + 1) = a5;
  v320 = a6;
  v321 = a7;
  v28 = type metadata accessor for CanvasItemContent.StandardVerticalStackCodingKeys();
  v29 = swift_getWitnessTable();
  v296 = v28;
  v295 = v29;
  v253 = sub_1E68B3A20();
  v239 = *(v253 - 8);
  MEMORY[0x1EEE9AC00](v253);
  v285 = &v206 - v30;
  *&v318 = a2;
  *(&v318 + 1) = a3;
  *&v319 = a4;
  *(&v319 + 1) = a5;
  v320 = a6;
  v321 = a7;
  v31 = type metadata accessor for CanvasItemContent.StandardHorizontalStackCodingKeys();
  v32 = swift_getWitnessTable();
  v294 = v31;
  v293 = v32;
  v240 = sub_1E68B3A20();
  v214 = *(v240 - 8);
  MEMORY[0x1EEE9AC00](v240);
  v276 = &v206 - v33;
  *&v318 = a2;
  *(&v318 + 1) = a3;
  *&v319 = a4;
  *(&v319 + 1) = a5;
  v320 = a6;
  v321 = a7;
  v34 = type metadata accessor for CanvasItemContent.StandardCardCodingKeys();
  v35 = swift_getWitnessTable();
  v292 = v34;
  v291 = v35;
  v252 = sub_1E68B3A20();
  v238 = *(v252 - 8);
  MEMORY[0x1EEE9AC00](v252);
  v284 = &v206 - v36;
  *&v318 = a2;
  *(&v318 + 1) = a3;
  *&v319 = a4;
  *(&v319 + 1) = a5;
  v320 = a6;
  v321 = a7;
  v37 = type metadata accessor for CanvasItemContent.SmallDynamicBrickCodingKeys();
  v38 = swift_getWitnessTable();
  v290 = v37;
  v272 = v38;
  v237 = sub_1E68B3A20();
  v224 = *(v237 - 8);
  MEMORY[0x1EEE9AC00](v237);
  v283 = &v206 - v39;
  *&v318 = a2;
  *(&v318 + 1) = a3;
  *&v319 = a4;
  *(&v319 + 1) = a5;
  v320 = a6;
  v321 = a7;
  v40 = type metadata accessor for CanvasItemContent.MonogramVerticalStackCodingKeys();
  v41 = swift_getWitnessTable();
  v289 = v40;
  v271 = v41;
  v244 = sub_1E68B3A20();
  v223 = *(v244 - 8);
  MEMORY[0x1EEE9AC00](v244);
  v280 = &v206 - v42;
  *&v318 = a2;
  *(&v318 + 1) = a3;
  *&v319 = a4;
  *(&v319 + 1) = a5;
  v320 = a6;
  v321 = a7;
  v43 = type metadata accessor for CanvasItemContent.MediumDynamicBrickCodingKeys();
  v44 = swift_getWitnessTable();
  v270 = v43;
  v269 = v44;
  v235 = sub_1E68B3A20();
  v222 = *(v235 - 8);
  MEMORY[0x1EEE9AC00](v235);
  v282 = &v206 - v45;
  *&v318 = a2;
  *(&v318 + 1) = a3;
  *&v319 = a4;
  *(&v319 + 1) = a5;
  v320 = a6;
  v321 = a7;
  v46 = type metadata accessor for CanvasItemContent.LargeBrickCodingKeys();
  v47 = swift_getWitnessTable();
  v268 = v46;
  v267 = v47;
  v221 = sub_1E68B3A20();
  v220 = *(v221 - 8);
  MEMORY[0x1EEE9AC00](v221);
  v281 = &v206 - v48;
  *&v318 = a2;
  *(&v318 + 1) = a3;
  *&v319 = a4;
  *(&v319 + 1) = a5;
  v320 = a6;
  v321 = a7;
  v49 = type metadata accessor for CanvasItemContent.InfoActionCardCodingKeys();
  v50 = swift_getWitnessTable();
  v266 = v49;
  v265 = v50;
  v257 = sub_1E68B3A20();
  v219 = *(v257 - 8);
  MEMORY[0x1EEE9AC00](v257);
  v279 = &v206 - v51;
  *&v318 = a2;
  *(&v318 + 1) = a3;
  *&v319 = a4;
  *(&v319 + 1) = a5;
  v320 = a6;
  v321 = a7;
  v52 = type metadata accessor for CanvasItemContent.FullWidthStageCodingKeys();
  v53 = swift_getWitnessTable();
  v264 = v52;
  v263 = v53;
  v242 = sub_1E68B3A20();
  v236 = *(v242 - 8);
  MEMORY[0x1EEE9AC00](v242);
  v278 = &v206 - v54;
  *&v318 = a2;
  *(&v318 + 1) = a3;
  *&v319 = a4;
  *(&v319 + 1) = a5;
  v320 = a6;
  v321 = a7;
  v55 = type metadata accessor for CanvasItemContent.FullWidthItemCodingKeys();
  v56 = swift_getWitnessTable();
  v261 = v55;
  v260 = v56;
  v217 = sub_1E68B3A20();
  v216 = *(v217 - 8);
  MEMORY[0x1EEE9AC00](v217);
  v262 = &v206 - v57;
  *&v318 = a2;
  *(&v318 + 1) = a3;
  *&v319 = a4;
  *(&v319 + 1) = a5;
  v320 = a6;
  v321 = a7;
  v58 = type metadata accessor for CanvasItemContent.ActionCardCodingKeys();
  v59 = swift_getWitnessTable();
  v259 = v58;
  v258 = v59;
  v241 = sub_1E68B3A20();
  v213 = *(v241 - 8);
  MEMORY[0x1EEE9AC00](v241);
  v277 = &v206 - v60;
  *&v318 = a2;
  *(&v318 + 1) = a3;
  *&v319 = a4;
  *(&v319 + 1) = a5;
  v320 = a6;
  v321 = a7;
  v61 = type metadata accessor for CanvasItemContent.CodingKeys();
  v314 = swift_getWitnessTable();
  v312 = sub_1E68B3A20();
  v311 = *(v312 - 8);
  MEMORY[0x1EEE9AC00](v312);
  v317 = &v206 - v62;
  *&v318 = a2;
  v249 = a2;
  v288 = a3;
  *(&v318 + 1) = a3;
  *&v319 = a4;
  v246 = a4;
  v309 = a5;
  *(&v319 + 1) = a5;
  v320 = a6;
  v313 = a6;
  v306 = a7;
  v321 = a7;
  v307 = type metadata accessor for CanvasItemContent();
  v211 = *(v307 - 8);
  v63 = MEMORY[0x1EEE9AC00](v307);
  v243 = &v206 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x1EEE9AC00](v63);
  v215 = &v206 - v66;
  v67 = MEMORY[0x1EEE9AC00](v65);
  v234 = &v206 - v68;
  v69 = MEMORY[0x1EEE9AC00](v67);
  v256 = &v206 - v70;
  v71 = MEMORY[0x1EEE9AC00](v69);
  v248 = &v206 - v72;
  v73 = MEMORY[0x1EEE9AC00](v71);
  v233 = &v206 - v74;
  v75 = MEMORY[0x1EEE9AC00](v73);
  v255 = &v206 - v76;
  v77 = MEMORY[0x1EEE9AC00](v75);
  v232 = &v206 - v78;
  v79 = MEMORY[0x1EEE9AC00](v77);
  v251 = &v206 - v80;
  v81 = MEMORY[0x1EEE9AC00](v79);
  v218 = &v206 - v82;
  v83 = MEMORY[0x1EEE9AC00](v81);
  v250 = &v206 - v84;
  v85 = MEMORY[0x1EEE9AC00](v83);
  v87 = &v206 - v86;
  v88 = MEMORY[0x1EEE9AC00](v85);
  v90 = &v206 - v89;
  v91 = MEMORY[0x1EEE9AC00](v88);
  v93 = &v206 - v92;
  v94 = MEMORY[0x1EEE9AC00](v91);
  v96 = &v206 - v95;
  v97 = MEMORY[0x1EEE9AC00](v94);
  v99 = (&v206 - v98);
  MEMORY[0x1EEE9AC00](v97);
  v101 = &v206 - v100;
  v102 = a1[3];
  v316 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v102);
  *&v308 = v61;
  v103 = TupleTypeMetadata3;
  sub_1E68B3BC0();
  if (v103)
  {
    goto LABEL_9;
  }

  v207 = v96;
  v209 = v90;
  v208 = v87;
  v314 = v99;
  v210 = v93;
  TupleTypeMetadata3 = 0;
  v104 = v313;
  v206 = v101;
  v105 = v312;
  *&v318 = sub_1E68B3A10();
  sub_1E68B33B0();
  swift_getWitnessTable();
  *&v325 = sub_1E68B37A0();
  *(&v325 + 1) = v106;
  *&v326 = v107;
  *(&v326 + 1) = v108;
  sub_1E68B3790();
  swift_getWitnessTable();
  sub_1E68B36B0();
  if (v318 == 16 || (v308 = v325, v318 = v325, v319 = v326, (sub_1E68B36E0() & 1) == 0))
  {
    v115 = sub_1E68B3870();
    swift_allocError();
    v117 = v116;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050);
    *v117 = v307;
    v118 = v317;
    sub_1E68B3980();
    sub_1E68B3860();
    (*(*(v115 - 8) + 104))(v117, *MEMORY[0x1E69E6AF8], v115);
    swift_willThrow();
    (*(v311 + 8))(v118, v105);
LABEL_8:
    swift_unknownObjectRelease();
LABEL_9:
    v119 = v316;
    return __swift_destroy_boxed_opaque_existential_1(v119);
  }

  v109 = v308;
  v110 = v317;
  switch(v104)
  {
    case 1:
      LOBYTE(v318) = 1;
      v148 = v262;
      v149 = TupleTypeMetadata3;
      sub_1E68B3970();
      if (v149)
      {
        goto LABEL_41;
      }

      type metadata accessor for FullWidthItemDescriptor();
      swift_getWitnessTable();
      v150 = v207;
      v151 = v217;
      sub_1E68B3A00();
      v152 = v311;
      TupleTypeMetadata3 = 0;
      (*(v216 + 8))(v148, v151);
      (*(v152 + 8))(v110, v105);
      swift_unknownObjectRelease();
      v203 = v307;
      goto LABEL_44;
    case 2:
      LOBYTE(v318) = 2;
      v137 = TupleTypeMetadata3;
      sub_1E68B3970();
      if (v137)
      {
        goto LABEL_12;
      }

      v327 = 0;
      sub_1E676CE74();
      v138 = sub_1E68B3A00();
      TupleTypeMetadata3 = &v206;
      MEMORY[0x1EEE9AC00](v138);
      strcpy(&v206 - 112, "layout artwork style title subtitle caption primaryActionButton secondaryActionButton customView ");
      *&v318 = &type metadata for FullWidthStageViewLayout;
      *(&v318 + 1) = v288;
      *&v319 = &type metadata for FullWidthStageViewStyle;
      *(&v319 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
      v320 = *(&v319 + 1);
      v321 = *(&v319 + 1);
      v322 = sub_1E68B3750();
      v323 = v322;
      v324 = sub_1E68B3750();
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v178 = *(TupleTypeMetadata + 48);
      LOBYTE(v318) = 1;
      sub_1E68B3A00();
      TupleTypeMetadata3 = v178;
      LOBYTE(v318) = 2;
      sub_1E67AA500();
      sub_1E68B3A00();
      v310 = v109;
      v195 = *(TupleTypeMetadata + 80);
      sub_1E68B1820();
      LOBYTE(v318) = 3;
      sub_1E67BDEF8(&qword_1ED097DB8, MEMORY[0x1E6968848]);
      v314 = v195;
      sub_1E68B39B0();
      LOBYTE(v318) = 4;
      sub_1E68B39B0();
      LOBYTE(v318) = 5;
      sub_1E68B39B0();
      LOBYTE(v318) = 6;
      sub_1E68B39B0();
      LOBYTE(v318) = 7;
      sub_1E68B39B0();
      LOBYTE(v318) = 8;
      sub_1E68B39B0();
      (*(v236 + 8))(v278, v242);
      (*(v311 + 8))(v317, v312);
      swift_unknownObjectRelease();
      v204 = v210;
      v203 = v307;
      swift_storeEnumTagMultiPayload();
      v199 = v204;
      v205 = v316;
      TupleTypeMetadata3 = 0;
      goto LABEL_46;
    case 3:
      LOBYTE(v318) = 3;
      v143 = TupleTypeMetadata3;
      sub_1E68B3970();
      if (v143)
      {
        goto LABEL_41;
      }

      v327 = 0;
      sub_1E676CE20();
      v144 = sub_1E68B3A00();
      MEMORY[0x1EEE9AC00](v144);
      strcpy(&v206 - 48, "layout title description actionButton ");
      *&v318 = &type metadata for InfoActionCardViewLayout;
      *(&v318 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
      *&v319 = *(&v318 + 1);
      *(&v319 + 1) = sub_1E68B3750();
      swift_getTupleTypeMetadata();
      sub_1E68B1820();
      LOBYTE(v318) = 1;
      sub_1E67BDEF8(&qword_1ED097DB8, MEMORY[0x1E6968848]);
      v180 = v279;
      sub_1E68B39B0();
      v310 = v109;
      LOBYTE(v318) = 2;
      sub_1E68B39B0();
      LOBYTE(v318) = 3;
      v196 = v209;
      sub_1E68B39B0();
      TupleTypeMetadata3 = 0;
      v197 = v196;
      (*(v219 + 8))(v180, v257);
      (*(v311 + 8))(v317, v105);
      swift_unknownObjectRelease();
      v203 = v307;
      goto LABEL_56;
    case 4:
      LOBYTE(v318) = 4;
      v125 = TupleTypeMetadata3;
      sub_1E68B3970();
      if (v125)
      {
        goto LABEL_41;
      }

      v310 = v109;
      v327 = 0;
      v126 = v288;
      v127 = v221;
      v128 = sub_1E68B3A00();
      v129 = v311;
      MEMORY[0x1EEE9AC00](v128);
      TupleTypeMetadata3 = 0;
      strcpy(&v206 - 48, "artwork footnote subtitle title ");
      *&v318 = v126;
      *(&v318 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
      *&v319 = *(&v318 + 1);
      *(&v319 + 1) = *(&v318 + 1);
      v171 = *(swift_getTupleTypeMetadata() + 48);
      sub_1E68B1820();
      LOBYTE(v318) = 1;
      sub_1E67BDEF8(&qword_1ED097DB8, MEMORY[0x1E6968848]);
      v172 = TupleTypeMetadata3;
      sub_1E68B39B0();
      if (v172)
      {
        (*(v220 + 8))(v281, v127);
        (*(v129 + 8))(v317, v312);
        swift_unknownObjectRelease();
        (*(*(v126 - 8) + 8))(v208, v126);
        v119 = v316;
        return __swift_destroy_boxed_opaque_existential_1(v119);
      }

      v314 = v171;
      LOBYTE(v318) = 2;
      sub_1E68B39B0();
      LOBYTE(v318) = 3;
      v197 = v208;
      sub_1E68B39B0();
      TupleTypeMetadata3 = 0;
      (*(v220 + 8))(v281, v127);
      (*(v311 + 8))(v317, v312);
      swift_unknownObjectRelease();
      v203 = v307;
LABEL_56:
      swift_storeEnumTagMultiPayload();
      v199 = v197;
LABEL_45:
      v205 = v316;
      goto LABEL_46;
    case 5:
      LOBYTE(v318) = 5;
      v153 = TupleTypeMetadata3;
      sub_1E68B3970();
      if (v153)
      {
        goto LABEL_41;
      }

      v310 = v109;
      v327 = 0;
      v154 = v288;
      v155 = sub_1E68B3A00();
      MEMORY[0x1EEE9AC00](v155);
      strcpy(&v206 - 48, "artwork caption displayStyle layout title ");
      *&v318 = v154;
      *(&v318 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
      *&v319 = &type metadata for DynamicBrickDisplayStyle;
      *(&v319 + 1) = &type metadata for DynamicBrickViewLayout;
      v320 = *(&v318 + 1);
      TupleTypeMetadata3 = swift_getTupleTypeMetadata();
      sub_1E68B1820();
      LOBYTE(v318) = 1;
      v186 = sub_1E67BDEF8(&qword_1ED097DB8, MEMORY[0x1E6968848]);
      sub_1E68B39B0();
      v314 = v186;
      LOBYTE(v318) = 2;
      sub_1E67AA4AC();
      sub_1E68B3A00();
      LOBYTE(v318) = 3;
      sub_1E676CD78();
      sub_1E68B3A00();
      LOBYTE(v318) = 4;
      sub_1E68B39B0();
      (*(v222 + 8))(v282, v235);
      (*(v311 + 8))(v317, v105);
      swift_unknownObjectRelease();
      v202 = v250;
      v203 = v307;
      goto LABEL_57;
    case 6:
      LOBYTE(v318) = 6;
      v158 = TupleTypeMetadata3;
      sub_1E68B3970();
      if (v158)
      {
        goto LABEL_41;
      }

      v327 = 0;
      sub_1E676CDCC();
      v159 = v218;
      v160 = sub_1E68B3A00();
      MEMORY[0x1EEE9AC00](v160);
      strcpy(&v206 - 48, "layout artwork title subtitle ");
      *&v318 = &type metadata for MonogramVerticalStackViewLayout;
      *(&v318 + 1) = v288;
      *&v319 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
      *(&v319 + 1) = v319;
      swift_getTupleTypeMetadata();
      LOBYTE(v318) = 1;
      v188 = v244;
      sub_1E68B3A00();
      v310 = v109;
      sub_1E68B1820();
      LOBYTE(v318) = 2;
      sub_1E67BDEF8(&qword_1ED097DB8, MEMORY[0x1E6968848]);
      sub_1E68B39B0();
      LOBYTE(v318) = 3;
      sub_1E68B39B0();
      TupleTypeMetadata3 = 0;
      (*(v223 + 8))(v280, v188);
      (*(v311 + 8))(v317, v312);
      swift_unknownObjectRelease();
      v203 = v307;
      swift_storeEnumTagMultiPayload();
      v199 = v159;
      goto LABEL_45;
    case 7:
      LOBYTE(v318) = 7;
      v145 = TupleTypeMetadata3;
      sub_1E68B3970();
      if (v145)
      {
        goto LABEL_41;
      }

      v310 = v109;
      v327 = 0;
      v146 = v288;
      v147 = sub_1E68B3A00();
      MEMORY[0x1EEE9AC00](v147);
      strcpy(&v206 - 48, "artwork caption displayStyle layout title ");
      *&v318 = v146;
      *(&v318 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
      *&v319 = &type metadata for DynamicBrickDisplayStyle;
      *(&v319 + 1) = &type metadata for DynamicBrickViewLayout;
      v320 = *(&v318 + 1);
      TupleTypeMetadata3 = swift_getTupleTypeMetadata();
      sub_1E68B1820();
      LOBYTE(v318) = 1;
      v181 = sub_1E67BDEF8(&qword_1ED097DB8, MEMORY[0x1E6968848]);
      sub_1E68B39B0();
      v314 = v181;
      LOBYTE(v318) = 2;
      sub_1E67AA4AC();
      sub_1E68B3A00();
      LOBYTE(v318) = 3;
      sub_1E676CD78();
      sub_1E68B3A00();
      LOBYTE(v318) = 4;
      sub_1E68B39B0();
      (*(v224 + 8))(v283, v237);
      (*(v311 + 8))(v317, v105);
      swift_unknownObjectRelease();
      v202 = v251;
      v203 = v307;
      goto LABEL_57;
    case 8:
      LOBYTE(v318) = 8;
      v163 = TupleTypeMetadata3;
      sub_1E68B3970();
      if (v163)
      {
        goto LABEL_41;
      }

      v327 = 0;
      sub_1E676CD24();
      v166 = sub_1E68B3A00();
      TupleTypeMetadata3 = &v206;
      MEMORY[0x1EEE9AC00](v166);
      strcpy(&v206 - 48, "layout artwork title subtitle caption ");
      *&v318 = &type metadata for StandardCardViewLayout;
      *(&v318 + 1) = v288;
      *&v319 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
      *(&v319 + 1) = v319;
      v320 = v319;
      TupleTypeMetadata3 = swift_getTupleTypeMetadata();
      v190 = *(TupleTypeMetadata3 + 12);
      LOBYTE(v318) = 1;
      sub_1E68B3A00();
      v314 = v190;
      v310 = v109;
      sub_1E68B1820();
      LOBYTE(v318) = 2;
      sub_1E67BDEF8(&qword_1ED097DB8, MEMORY[0x1E6968848]);
      sub_1E68B39B0();
      LOBYTE(v318) = 3;
      sub_1E68B39B0();
      LOBYTE(v318) = 4;
      sub_1E68B39B0();
      (*(v238 + 8))(v284, v252);
      (*(v311 + 8))(v317, v312);
      swift_unknownObjectRelease();
      v202 = v232;
      v203 = v307;
      goto LABEL_57;
    case 9:
      LOBYTE(v318) = 9;
      v133 = v276;
      v134 = TupleTypeMetadata3;
      sub_1E68B3970();
      if (v134)
      {
        goto LABEL_41;
      }

      v327 = 0;
      sub_1E676CCD0();
      v135 = v240;
      v136 = sub_1E68B3A00();
      v314 = &v206;
      MEMORY[0x1EEE9AC00](v136);
      TupleTypeMetadata3 = 0;
      strcpy(&v206 - 80, "layout artwork title subtitle caption groupTitle accessoryView ");
      *&v318 = &type metadata for StandardHorizontalStackViewLayout;
      *(&v318 + 1) = v288;
      *&v319 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
      *(&v319 + 1) = v319;
      v320 = v319;
      v321 = v319;
      v322 = sub_1E68B3750();
      v174 = swift_getTupleTypeMetadata();
      v175 = TupleTypeMetadata3;
      v314 = v174;
      v176 = *(v174 + 48);
      LOBYTE(v318) = 1;
      sub_1E68B3A00();
      if (v175)
      {
        (*(v214 + 8))(v133, v135);
        (*(v311 + 8))(v110, v105);
        swift_unknownObjectRelease();
        v119 = v316;
        return __swift_destroy_boxed_opaque_existential_1(v119);
      }

      v313 = v176;
      v310 = v109;
      v192 = v314;
      sub_1E68B1820();
      LOBYTE(v318) = 2;
      sub_1E67BDEF8(&qword_1ED097DB8, MEMORY[0x1E6968848]);
      sub_1E68B39B0();
      v194 = *(v192 + 20);
      LOBYTE(v318) = 3;
      *&v308 = v194;
      sub_1E68B39B0();
      v200 = *(v192 + 24);
      LOBYTE(v318) = 4;
      v306 = v200;
      sub_1E68B39B0();
      TupleTypeMetadata3 = 0;
      LOBYTE(v318) = 5;
      sub_1E68B39B0();
      LOBYTE(v318) = 6;
      sub_1E68B39B0();
      (*(v214 + 8))(v276, v240);
      (*(v311 + 8))(v317, v105);
      swift_unknownObjectRelease();
      v202 = v255;
      v203 = v307;
      goto LABEL_57;
    case 10:
      LOBYTE(v318) = 10;
      v161 = TupleTypeMetadata3;
      sub_1E68B3970();
      if (v161)
      {
        goto LABEL_41;
      }

      v327 = 0;
      sub_1E676CC7C();
      v162 = sub_1E68B3A00();
      TupleTypeMetadata3 = &v206;
      MEMORY[0x1EEE9AC00](v162);
      strcpy(&v206 - 48, "layout artwork title subtitle caption ");
      *&v318 = &type metadata for StandardVerticalStackViewLayout;
      *(&v318 + 1) = v288;
      *&v319 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
      *(&v319 + 1) = v319;
      v320 = v319;
      TupleTypeMetadata3 = swift_getTupleTypeMetadata();
      v189 = *(TupleTypeMetadata3 + 12);
      LOBYTE(v318) = 1;
      sub_1E68B3A00();
      v314 = v189;
      v310 = v109;
      sub_1E68B1820();
      LOBYTE(v318) = 2;
      sub_1E67BDEF8(&qword_1ED097DB8, MEMORY[0x1E6968848]);
      sub_1E68B39B0();
      LOBYTE(v318) = 3;
      sub_1E68B39B0();
      LOBYTE(v318) = 4;
      sub_1E68B39B0();
      (*(v239 + 8))(v285, v253);
      (*(v311 + 8))(v317, v312);
      swift_unknownObjectRelease();
      v202 = v233;
      v203 = v307;
      goto LABEL_57;
    case 11:
      LOBYTE(v318) = 11;
      v123 = TupleTypeMetadata3;
      sub_1E68B3970();
      if (v123)
      {
        goto LABEL_41;
      }

      v327 = 0;
      sub_1E676CC28();
      v124 = sub_1E68B3A00();
      TupleTypeMetadata3 = &v206;
      MEMORY[0x1EEE9AC00](v124);
      strcpy(&v206 - 80, "layout artwork title subtitle caption artworkBackgroundColor ");
      *&v318 = &type metadata for SummaryCardViewLayout;
      *(&v318 + 1) = v288;
      *&v319 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
      *(&v319 + 1) = v319;
      v320 = v319;
      v321 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E88);
      TupleTypeMetadata3 = swift_getTupleTypeMetadata();
      v170 = *(TupleTypeMetadata3 + 12);
      LOBYTE(v318) = 1;
      sub_1E68B3A00();
      v314 = v170;
      v310 = v109;
      v191 = *(TupleTypeMetadata3 + 16);
      sub_1E68B1820();
      LOBYTE(v318) = 2;
      sub_1E67BDEF8(&qword_1ED097DB8, MEMORY[0x1E6968848]);
      v313 = v191;
      sub_1E68B39B0();
      LOBYTE(v318) = 3;
      sub_1E68B39B0();
      LOBYTE(v318) = 4;
      sub_1E68B39B0();
      sub_1E68B1A10();
      LOBYTE(v318) = 5;
      sub_1E67BDEF8(&qword_1ED098108, MEMORY[0x1E699DB98]);
      sub_1E68B39B0();
      (*(v231 + 8))(v275, v254);
      (*(v311 + 8))(v317, v312);
      swift_unknownObjectRelease();
      v202 = v248;
      v203 = v307;
      goto LABEL_57;
    case 12:
      LOBYTE(v318) = 12;
      v130 = TupleTypeMetadata3;
      sub_1E68B3970();
      if (v130)
      {
        goto LABEL_41;
      }

      v310 = v109;
      v327 = 0;
      sub_1E676CBD4();
      v131 = sub_1E68B3A00();
      v132 = v311;
      MEMORY[0x1EEE9AC00](v131);
      strcpy(&v206 - 48, "layout artwork title overlay ");
      *&v318 = &type metadata for TallCardViewLayout;
      *(&v318 + 1) = v288;
      *&v319 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
      *(&v319 + 1) = &type metadata for Overlay;
      swift_getTupleTypeMetadata();
      LOBYTE(v318) = 1;
      v173 = v245;
      sub_1E68B3A00();
      sub_1E68B1820();
      LOBYTE(v318) = 2;
      sub_1E67BDEF8(&qword_1ED097DB8, MEMORY[0x1E6968848]);
      sub_1E68B39B0();
      LOBYTE(v318) = 3;
      sub_1E67AA458();
      sub_1E68B3A00();
      TupleTypeMetadata3 = 0;
      (*(v227 + 8))(v287, v173);
      (*(v132 + 8))(v317, v105);
      swift_unknownObjectRelease();
      v198 = v256;
      v203 = v307;
      swift_storeEnumTagMultiPayload();
      v199 = v198;
      goto LABEL_45;
    case 13:
      LOBYTE(v318) = 13;
      v156 = TupleTypeMetadata3;
      sub_1E68B3970();
      if (v156)
      {
        goto LABEL_41;
      }

      v327 = 0;
      sub_1E676CB80();
      v157 = sub_1E68B3A00();
      MEMORY[0x1EEE9AC00](v157);
      strcpy(&v206 - 48, "layout artwork title subtitle caption ");
      *&v318 = &type metadata for VerticalStackCardLayout;
      *(&v318 + 1) = v288;
      *&v319 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
      *(&v319 + 1) = v319;
      v320 = v319;
      TupleTypeMetadata3 = swift_getTupleTypeMetadata();
      v187 = *(TupleTypeMetadata3 + 12);
      LOBYTE(v318) = 1;
      sub_1E68B3A00();
      v314 = v187;
      v310 = v109;
      sub_1E68B1820();
      LOBYTE(v318) = 2;
      sub_1E67BDEF8(&qword_1ED097DB8, MEMORY[0x1E6968848]);
      sub_1E68B39B0();
      LOBYTE(v318) = 3;
      sub_1E68B39B0();
      LOBYTE(v318) = 4;
      sub_1E68B39B0();
      (*(v230 + 8))(v286, v247);
      (*(v311 + 8))(v317, v312);
      swift_unknownObjectRelease();
      v202 = v234;
      v203 = v307;
      goto LABEL_57;
    case 14:
      LOBYTE(v318) = 14;
      v121 = v273;
      v122 = TupleTypeMetadata3;
      sub_1E68B3970();
      if (v122)
      {
        goto LABEL_12;
      }

      v150 = v215;
      v164 = v226;
      sub_1E68B3A00();
      v165 = v311;
      TupleTypeMetadata3 = 0;
      (*(v225 + 8))(v121, v164);
      (*(v165 + 8))(v110, v105);
      swift_unknownObjectRelease();
      v203 = v307;
LABEL_44:
      swift_storeEnumTagMultiPayload();
      v199 = v150;
      goto LABEL_45;
    case 15:
      LOBYTE(v318) = 15;
      v139 = v274;
      v140 = TupleTypeMetadata3;
      sub_1E68B3970();
      if (v140)
      {
        goto LABEL_41;
      }

      v310 = v109;
      LOBYTE(v318) = 0;
      v141 = v139;
      v142 = v228;
      sub_1E68B3A00();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v179 = *(TupleTypeMetadata3 + 12);
      sub_1E68B1820();
      LOBYTE(v318) = 1;
      sub_1E67BDEF8(&qword_1ED097DB8, MEMORY[0x1E6968848]);
      sub_1E68B39B0();
      v314 = v179;
      LOBYTE(v318) = 2;
      v193 = v243;
      sub_1E68B39B0();
      TupleTypeMetadata3 = 0;
      (*(v229 + 8))(v141, v142);
      (*(v311 + 8))(v317, v105);
      swift_unknownObjectRelease();
      v203 = v307;
      swift_storeEnumTagMultiPayload();
      v199 = v193;
      goto LABEL_45;
    default:
      LOBYTE(v318) = 0;
      v111 = v277;
      v112 = TupleTypeMetadata3;
      sub_1E68B3970();
      if (v112)
      {
LABEL_41:
        (*(v311 + 8))(v110, v105);
        goto LABEL_8;
      }

      v327 = 0;
      sub_1E676CEC8();
      v113 = v241;
      v114 = sub_1E68B3A00();
      v310 = &v206;
      MEMORY[0x1EEE9AC00](v114);
      TupleTypeMetadata3 = 0;
      strcpy(&v206 - 96, "layout artwork style title subtitle caption primaryActionButton secondaryActionButton ");
      *&v318 = &type metadata for ActionCardViewLayout;
      *(&v318 + 1) = v288;
      *&v319 = &type metadata for ActionCardViewStyle;
      *(&v319 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
      v320 = *(&v319 + 1);
      v321 = *(&v319 + 1);
      v322 = v249;
      v323 = sub_1E68B3750();
      v182 = swift_getTupleTypeMetadata();
      v183 = *(v182 + 48);
      LOBYTE(v318) = 1;
      v184 = v183;
      v185 = TupleTypeMetadata3;
      sub_1E68B3A00();
      if (v185)
      {
        (*(v213 + 8))(v111, v113);
LABEL_12:
        (*(v311 + 8))(v110, v105);
        swift_unknownObjectRelease();
        v119 = v316;
        return __swift_destroy_boxed_opaque_existential_1(v119);
      }

      TupleTypeMetadata3 = v184;
      LOBYTE(v318) = 2;
      sub_1E67AA554();
      sub_1E68B3A00();
      v310 = v109;
      sub_1E68B1820();
      LOBYTE(v318) = 3;
      sub_1E67BDEF8(&qword_1ED097DB8, MEMORY[0x1E6968848]);
      sub_1E68B39B0();
      LOBYTE(v318) = 4;
      sub_1E68B39B0();
      v201 = *(v182 + 112);
      LOBYTE(v318) = 5;
      v313 = v201;
      sub_1E68B39B0();
      LOBYTE(v318) = 6;
      sub_1E68B3A00();
      LOBYTE(v318) = 7;
      sub_1E68B39B0();
      (*(v213 + 8))(v277, v241);
      (*(v311 + 8))(v317, v105);
      swift_unknownObjectRelease();
      v202 = v314;
      v203 = v307;
LABEL_57:
      swift_storeEnumTagMultiPayload();
      v199 = v202;
      v205 = v316;
      TupleTypeMetadata3 = 0;
LABEL_46:
      v167 = v212;
      v168 = v206;
      v169 = *(v211 + 32);
      v169(v206, v199, v203);
      v169(v167, v168, v203);
      result = __swift_destroy_boxed_opaque_existential_1(v205);
      break;
  }

  return result;
}

unint64_t sub_1E67AA458()
{
  result = qword_1ED098100;
  if (!qword_1ED098100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098100);
  }

  return result;
}

unint64_t sub_1E67AA4AC()
{
  result = qword_1ED098110;
  if (!qword_1ED098110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098110);
  }

  return result;
}

unint64_t sub_1E67AA500()
{
  result = qword_1ED098118;
  if (!qword_1ED098118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098118);
  }

  return result;
}

unint64_t sub_1E67AA554()
{
  result = qword_1ED098120;
  if (!qword_1ED098120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098120);
  }

  return result;
}

uint64_t static CanvasItemContent.== infix(_:_:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *&v1760.f64[0] = a2;
  v1761 = a1;
  v1546 = sub_1E68B1A10();
  v1544 = *(v1546 - 8);
  MEMORY[0x1EEE9AC00](v1546);
  v1525 = &v1517 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1537 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098128);
  MEMORY[0x1EEE9AC00](v1537);
  v1552 = &v1517 - v15;
  v1692 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096E88);
  v16 = MEMORY[0x1EEE9AC00](v1692);
  v1532 = &v1517 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v1632 = &v1517 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v1702 = &v1517 - v21;
  v1694 = *(a5 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v1616 = &v1517 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v1517 = &v1517 - v24;
  v25 = sub_1E68B3750();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v1518 = *(TupleTypeMetadata2 - 8);
  v26 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v1522 = &v1517 - v27;
  v1747 = v25;
  v1746 = *(v25 - 8);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v1519 = &v1517 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v1620 = &v1517 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v1693 = &v1517 - v32;
  v1691 = type metadata accessor for FullWidthItemDescriptor();
  v1690 = *(v1691 - 8);
  MEMORY[0x1EEE9AC00](v1691);
  v1615 = &v1517 - v33;
  v34 = sub_1E68B3750();
  v1589 = swift_getTupleTypeMetadata2();
  v1555 = *(v1589 - 8);
  v35 = MEMORY[0x1EEE9AC00](v1589);
  v1533 = &v1517 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v1590 = &v1517 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v1526 = &v1517 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v1534 = &v1517 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v1527 = &v1517 - v43;
  v1748 = sub_1E68B1820();
  v1750 = *(v1748 - 8);
  MEMORY[0x1EEE9AC00](v1748);
  v1660 = &v1517 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1752 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098130);
  v45 = MEMORY[0x1EEE9AC00](v1752);
  v1595 = &v1517 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v1612 = &v1517 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v1566 = &v1517 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v1578 = &v1517 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v1606 = &v1517 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v1608 = &v1517 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v1553 = &v1517 - v58;
  v59 = MEMORY[0x1EEE9AC00](v57);
  v1581 = &v1517 - v60;
  v61 = MEMORY[0x1EEE9AC00](v59);
  v1604 = &v1517 - v62;
  v63 = MEMORY[0x1EEE9AC00](v61);
  v1565 = &v1517 - v64;
  v65 = MEMORY[0x1EEE9AC00](v63);
  v1580 = &v1517 - v66;
  v67 = MEMORY[0x1EEE9AC00](v65);
  v1603 = &v1517 - v68;
  v69 = MEMORY[0x1EEE9AC00](v67);
  v1536 = &v1517 - v70;
  v71 = MEMORY[0x1EEE9AC00](v69);
  v1554 = &v1517 - v72;
  v73 = MEMORY[0x1EEE9AC00](v71);
  v1607 = &v1517 - v74;
  v75 = MEMORY[0x1EEE9AC00](v73);
  v1605 = &v1517 - v76;
  v77 = MEMORY[0x1EEE9AC00](v75);
  v1564 = &v1517 - v78;
  v79 = MEMORY[0x1EEE9AC00](v77);
  v1576 = &v1517 - v80;
  v81 = MEMORY[0x1EEE9AC00](v79);
  v1602 = &v1517 - v82;
  v83 = MEMORY[0x1EEE9AC00](v81);
  v1577 = &v1517 - v84;
  v85 = MEMORY[0x1EEE9AC00](v83);
  v1611 = &v1517 - v86;
  v87 = MEMORY[0x1EEE9AC00](v85);
  v1591 = &v1517 - v88;
  v89 = MEMORY[0x1EEE9AC00](v87);
  v1601 = &v1517 - v90;
  v91 = MEMORY[0x1EEE9AC00](v89);
  v1575 = &v1517 - v92;
  v93 = MEMORY[0x1EEE9AC00](v91);
  v1610 = &v1517 - v94;
  v95 = MEMORY[0x1EEE9AC00](v93);
  v1571 = &v1517 - v96;
  v97 = MEMORY[0x1EEE9AC00](v95);
  v1593 = &v1517 - v98;
  v99 = MEMORY[0x1EEE9AC00](v97);
  v1609 = &v1517 - v100;
  v101 = MEMORY[0x1EEE9AC00](v99);
  v1594 = &v1517 - v102;
  v103 = MEMORY[0x1EEE9AC00](v101);
  v1613 = &v1517 - v104;
  v105 = MEMORY[0x1EEE9AC00](v103);
  v1543 = &v1517 - v106;
  v107 = MEMORY[0x1EEE9AC00](v105);
  v1561 = &v1517 - v108;
  v109 = MEMORY[0x1EEE9AC00](v107);
  v1588 = &v1517 - v110;
  v111 = MEMORY[0x1EEE9AC00](v109);
  v1535 = &v1517 - v112;
  v113 = MEMORY[0x1EEE9AC00](v111);
  v1556 = &v1517 - v114;
  v115 = MEMORY[0x1EEE9AC00](v113);
  v1579 = &v1517 - v116;
  *&v1758.f64[0] = v34;
  v1754 = *(v34 - 8);
  v117 = MEMORY[0x1EEE9AC00](v115);
  v1528 = &v1517 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = MEMORY[0x1EEE9AC00](v117);
  v1631 = &v1517 - v120;
  v121 = MEMORY[0x1EEE9AC00](v119);
  v1697 = &v1517 - v122;
  v123 = MEMORY[0x1EEE9AC00](v121);
  v1563 = &v1517 - v124;
  v125 = MEMORY[0x1EEE9AC00](v123);
  v1665 = &v1517 - v126;
  v127 = MEMORY[0x1EEE9AC00](v125);
  v1727 = &v1517 - v128;
  v129 = MEMORY[0x1EEE9AC00](v127);
  v1521 = &v1517 - v130;
  v131 = MEMORY[0x1EEE9AC00](v129);
  v1524 = &v1517 - v132;
  v133 = MEMORY[0x1EEE9AC00](v131);
  v1656 = &v1517 - v134;
  v135 = MEMORY[0x1EEE9AC00](v133);
  v1655 = &v1517 - v136;
  v137 = MEMORY[0x1EEE9AC00](v135);
  v1696 = &v1517 - v138;
  v139 = MEMORY[0x1EEE9AC00](v137);
  v1699 = &v1517 - v140;
  v141 = MEMORY[0x1EEE9AC00](v139);
  v1523 = &v1517 - v142;
  v143 = MEMORY[0x1EEE9AC00](v141);
  v1614 = &v1517 - v144;
  v145 = MEMORY[0x1EEE9AC00](v143);
  v1653 = &v1517 - v146;
  v1745 = *(a3 - 8);
  v147 = MEMORY[0x1EEE9AC00](v145);
  v1545 = &v1517 - ((v148 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = MEMORY[0x1EEE9AC00](v147);
  v1619 = &v1517 - v150;
  MEMORY[0x1EEE9AC00](v149);
  v1654 = &v1517 - v151;
  *&v1759.f64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096E68);
  v152 = MEMORY[0x1EEE9AC00](*&v1759.f64[0]);
  v1574 = &v1517 - ((v153 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = MEMORY[0x1EEE9AC00](v152);
  v1600 = &v1517 - v155;
  v156 = MEMORY[0x1EEE9AC00](v154);
  v1667 = &v1517 - v157;
  v158 = MEMORY[0x1EEE9AC00](v156);
  v1650 = &v1517 - v159;
  v160 = MEMORY[0x1EEE9AC00](v158);
  v1714 = &v1517 - v161;
  v162 = MEMORY[0x1EEE9AC00](v160);
  v1740 = &v1517 - v163;
  v164 = MEMORY[0x1EEE9AC00](v162);
  v1542 = &v1517 - v165;
  v166 = MEMORY[0x1EEE9AC00](v164);
  v1570 = &v1517 - v167;
  v168 = MEMORY[0x1EEE9AC00](v166);
  v1587 = &v1517 - v169;
  v170 = MEMORY[0x1EEE9AC00](v168);
  v1637 = &v1517 - v171;
  v172 = MEMORY[0x1EEE9AC00](v170);
  v1668 = &v1517 - v173;
  v174 = MEMORY[0x1EEE9AC00](v172);
  v1673 = &v1517 - v175;
  v176 = MEMORY[0x1EEE9AC00](v174);
  v1638 = &v1517 - v177;
  v178 = MEMORY[0x1EEE9AC00](v176);
  v1716 = &v1517 - v179;
  v180 = MEMORY[0x1EEE9AC00](v178);
  v1651 = &v1517 - v181;
  v182 = MEMORY[0x1EEE9AC00](v180);
  v1592 = &v1517 - v183;
  v184 = MEMORY[0x1EEE9AC00](v182);
  v1618 = &v1517 - v185;
  v186 = MEMORY[0x1EEE9AC00](v184);
  v1689 = &v1517 - v187;
  v188 = MEMORY[0x1EEE9AC00](v186);
  v1541 = &v1517 - v189;
  v190 = MEMORY[0x1EEE9AC00](v188);
  v1560 = &v1517 - v191;
  v192 = MEMORY[0x1EEE9AC00](v190);
  v1586 = &v1517 - v193;
  v194 = MEMORY[0x1EEE9AC00](v192);
  v1629 = &v1517 - v195;
  v196 = MEMORY[0x1EEE9AC00](v194);
  v1644 = &v1517 - v197;
  v198 = MEMORY[0x1EEE9AC00](v196);
  v1633 = &v1517 - v199;
  v200 = MEMORY[0x1EEE9AC00](v198);
  v1705 = &v1517 - v201;
  v202 = MEMORY[0x1EEE9AC00](v200);
  v1717 = &v1517 - v203;
  v204 = MEMORY[0x1EEE9AC00](v202);
  v1734 = &v1517 - v205;
  v206 = MEMORY[0x1EEE9AC00](v204);
  v1551 = &v1517 - v207;
  v208 = MEMORY[0x1EEE9AC00](v206);
  v1569 = &v1517 - v209;
  v210 = MEMORY[0x1EEE9AC00](v208);
  v1584 = &v1517 - v211;
  v212 = MEMORY[0x1EEE9AC00](v210);
  v1635 = &v1517 - v213;
  v214 = MEMORY[0x1EEE9AC00](v212);
  v1643 = &v1517 - v215;
  v216 = MEMORY[0x1EEE9AC00](v214);
  v1628 = &v1517 - v217;
  v218 = MEMORY[0x1EEE9AC00](v216);
  v1704 = &v1517 - v219;
  v220 = MEMORY[0x1EEE9AC00](v218);
  v1722 = &v1517 - v221;
  v222 = MEMORY[0x1EEE9AC00](v220);
  v1712 = &v1517 - v223;
  v224 = MEMORY[0x1EEE9AC00](v222);
  v1530 = &v1517 - v225;
  v226 = MEMORY[0x1EEE9AC00](v224);
  v1540 = &v1517 - v227;
  v228 = MEMORY[0x1EEE9AC00](v226);
  v1559 = &v1517 - v229;
  v230 = MEMORY[0x1EEE9AC00](v228);
  v1585 = &v1517 - v231;
  v232 = MEMORY[0x1EEE9AC00](v230);
  v1659 = &v1517 - v233;
  v234 = MEMORY[0x1EEE9AC00](v232);
  v1700 = &v1517 - v235;
  v236 = MEMORY[0x1EEE9AC00](v234);
  v1670 = &v1517 - v237;
  v238 = MEMORY[0x1EEE9AC00](v236);
  v1630 = &v1517 - v239;
  v240 = MEMORY[0x1EEE9AC00](v238);
  v1701 = &v1517 - v241;
  v242 = MEMORY[0x1EEE9AC00](v240);
  v1706 = &v1517 - v243;
  v244 = MEMORY[0x1EEE9AC00](v242);
  v1718 = &v1517 - v245;
  v246 = MEMORY[0x1EEE9AC00](v244);
  v1726 = &v1517 - v247;
  v248 = MEMORY[0x1EEE9AC00](v246);
  v1539 = &v1517 - v249;
  v250 = MEMORY[0x1EEE9AC00](v248);
  v1568 = &v1517 - v251;
  v252 = MEMORY[0x1EEE9AC00](v250);
  v1583 = &v1517 - v253;
  v254 = MEMORY[0x1EEE9AC00](v252);
  v1634 = &v1517 - v255;
  v256 = MEMORY[0x1EEE9AC00](v254);
  v1666 = &v1517 - v257;
  v258 = MEMORY[0x1EEE9AC00](v256);
  v1672 = &v1517 - v259;
  v260 = MEMORY[0x1EEE9AC00](v258);
  v1636 = &v1517 - v261;
  v262 = MEMORY[0x1EEE9AC00](v260);
  v1715 = &v1517 - v263;
  v264 = MEMORY[0x1EEE9AC00](v262);
  v1733 = &v1517 - v265;
  v266 = MEMORY[0x1EEE9AC00](v264);
  v1549 = &v1517 - v267;
  v268 = MEMORY[0x1EEE9AC00](v266);
  v1599 = &v1517 - v269;
  v270 = MEMORY[0x1EEE9AC00](v268);
  v1662 = &v1517 - v271;
  v272 = MEMORY[0x1EEE9AC00](v270);
  v1624 = &v1517 - v273;
  v274 = MEMORY[0x1EEE9AC00](v272);
  v1709 = &v1517 - v275;
  v276 = MEMORY[0x1EEE9AC00](v274);
  v1724 = &v1517 - v277;
  v278 = MEMORY[0x1EEE9AC00](v276);
  v1558 = &v1517 - v279;
  v280 = MEMORY[0x1EEE9AC00](v278);
  v1582 = &v1517 - v281;
  v282 = MEMORY[0x1EEE9AC00](v280);
  v1640 = &v1517 - v283;
  v284 = MEMORY[0x1EEE9AC00](v282);
  v1622 = &v1517 - v285;
  v286 = MEMORY[0x1EEE9AC00](v284);
  v1708 = &v1517 - v287;
  v288 = MEMORY[0x1EEE9AC00](v286);
  v1732 = &v1517 - v289;
  v290 = MEMORY[0x1EEE9AC00](v288);
  v1548 = &v1517 - v291;
  v292 = MEMORY[0x1EEE9AC00](v290);
  v1598 = &v1517 - v293;
  v294 = MEMORY[0x1EEE9AC00](v292);
  v1661 = &v1517 - v295;
  v296 = MEMORY[0x1EEE9AC00](v294);
  v1623 = &v1517 - v297;
  v298 = MEMORY[0x1EEE9AC00](v296);
  v1707 = &v1517 - v299;
  v300 = MEMORY[0x1EEE9AC00](v298);
  v1723 = &v1517 - v301;
  v302 = MEMORY[0x1EEE9AC00](v300);
  v1562 = &v1517 - v303;
  v304 = MEMORY[0x1EEE9AC00](v302);
  v1573 = &v1517 - v305;
  v306 = MEMORY[0x1EEE9AC00](v304);
  v1597 = &v1517 - v307;
  v308 = MEMORY[0x1EEE9AC00](v306);
  v1663 = &v1517 - v309;
  v310 = MEMORY[0x1EEE9AC00](v308);
  v1641 = &v1517 - v311;
  v312 = MEMORY[0x1EEE9AC00](v310);
  v1649 = &v1517 - v313;
  v314 = MEMORY[0x1EEE9AC00](v312);
  v1688 = &v1517 - v315;
  v316 = MEMORY[0x1EEE9AC00](v314);
  v1725 = &v1517 - v317;
  v318 = MEMORY[0x1EEE9AC00](v316);
  v1736 = &v1517 - v319;
  v320 = MEMORY[0x1EEE9AC00](v318);
  v1572 = &v1517 - v321;
  v322 = MEMORY[0x1EEE9AC00](v320);
  v1596 = &v1517 - v323;
  v324 = MEMORY[0x1EEE9AC00](v322);
  v1671 = &v1517 - v325;
  v326 = MEMORY[0x1EEE9AC00](v324);
  v1648 = &v1517 - v327;
  v328 = MEMORY[0x1EEE9AC00](v326);
  v1735 = (&v1517 - v329);
  v330 = MEMORY[0x1EEE9AC00](v328);
  v1737 = &v1517 - v331;
  v332 = MEMORY[0x1EEE9AC00](v330);
  v1531 = &v1517 - v333;
  v334 = MEMORY[0x1EEE9AC00](v332);
  v1547 = &v1517 - v335;
  v336 = MEMORY[0x1EEE9AC00](v334);
  v1567 = &v1517 - v337;
  v338 = MEMORY[0x1EEE9AC00](v336);
  v1698 = &v1517 - v339;
  v340 = MEMORY[0x1EEE9AC00](v338);
  v1710 = &v1517 - v341;
  v342 = MEMORY[0x1EEE9AC00](v340);
  v1713 = &v1517 - v343;
  v344 = MEMORY[0x1EEE9AC00](v342);
  v1703 = &v1517 - v345;
  v346 = MEMORY[0x1EEE9AC00](v344);
  v1711 = &v1517 - v347;
  v348 = MEMORY[0x1EEE9AC00](v346);
  v1720 = &v1517 - v349;
  v350 = MEMORY[0x1EEE9AC00](v348);
  v1529 = &v1517 - v351;
  v352 = MEMORY[0x1EEE9AC00](v350);
  v1538 = &v1517 - v353;
  v354 = MEMORY[0x1EEE9AC00](v352);
  v1557 = &v1517 - v355;
  v356 = MEMORY[0x1EEE9AC00](v354);
  v1657 = &v1517 - v357;
  v358 = MEMORY[0x1EEE9AC00](v356);
  v1652 = &v1517 - v359;
  v360 = MEMORY[0x1EEE9AC00](v358);
  v1625 = &v1517 - v361;
  v362 = MEMORY[0x1EEE9AC00](v360);
  v1658 = &v1517 - v363;
  v364 = MEMORY[0x1EEE9AC00](v362);
  v1664 = &v1517 - v365;
  v366 = MEMORY[0x1EEE9AC00](v364);
  v1669 = &v1517 - v367;
  v1762 = *(a4 - 8);
  v368 = MEMORY[0x1EEE9AC00](v366);
  v1645 = &v1517 - ((v369 + 15) & 0xFFFFFFFFFFFFFFF0);
  v370 = MEMORY[0x1EEE9AC00](v368);
  v1642 = &v1517 - v371;
  v372 = MEMORY[0x1EEE9AC00](v370);
  v1721 = &v1517 - v373;
  v374 = MEMORY[0x1EEE9AC00](v372);
  v1626 = &v1517 - v375;
  v376 = MEMORY[0x1EEE9AC00](v374);
  v1728 = &v1517 - v377;
  v378 = MEMORY[0x1EEE9AC00](v376);
  v1639 = &v1517 - v379;
  v380 = MEMORY[0x1EEE9AC00](v378);
  v1738 = &v1517 - v381;
  v382 = MEMORY[0x1EEE9AC00](v380);
  v1731 = &v1517 - v383;
  v384 = MEMORY[0x1EEE9AC00](v382);
  v1719 = &v1517 - v385;
  v386 = MEMORY[0x1EEE9AC00](v384);
  v1739 = &v1517 - v387;
  v388 = MEMORY[0x1EEE9AC00](v386);
  v1741 = &v1517 - v389;
  v390 = MEMORY[0x1EEE9AC00](v388);
  v1621 = &v1517 - v391;
  v392 = MEMORY[0x1EEE9AC00](v390);
  v1744 = &v1517 - v393;
  v394 = MEMORY[0x1EEE9AC00](v392);
  v1646 = &v1517 - v395;
  v396 = MEMORY[0x1EEE9AC00](v394);
  v1729 = &v1517 - v397;
  v398 = MEMORY[0x1EEE9AC00](v396);
  v1730 = &v1517 - v399;
  v400 = MEMORY[0x1EEE9AC00](v398);
  v1627 = &v1517 - v401;
  v402 = MEMORY[0x1EEE9AC00](v400);
  v1647 = &v1517 - v403;
  v404 = MEMORY[0x1EEE9AC00](v402);
  v1742 = (&v1517 - v405);
  v406 = MEMORY[0x1EEE9AC00](v404);
  v1743 = &v1517 - v407;
  v408 = MEMORY[0x1EEE9AC00](v406);
  v1674 = &v1517 - v409;
  MEMORY[0x1EEE9AC00](v408);
  v1675 = &v1517 - v410;
  v1749 = a3;
  *&v1813.f64[0] = a3;
  v1763 = *&a4;
  *&v1813.f64[1] = a4;
  v1695 = a5;
  *&v1814.f64[0] = a5;
  v1550 = a6;
  *&v1814.f64[1] = a6;
  v1753 = a7;
  *&v1815.f64[0] = a7;
  v1617 = a8;
  *&v1815.f64[1] = a8;
  v411 = type metadata accessor for CanvasItemContent();
  v412 = *(v411 - 8);
  v413 = MEMORY[0x1EEE9AC00](v411);
  v1683 = &v1517 - ((v414 + 15) & 0xFFFFFFFFFFFFFFF0);
  v415 = MEMORY[0x1EEE9AC00](v413);
  v1677 = &v1517 - v416;
  v417 = MEMORY[0x1EEE9AC00](v415);
  v1686 = (&v1517 - v418);
  v419 = MEMORY[0x1EEE9AC00](v417);
  v1680 = (&v1517 - v420);
  v421 = MEMORY[0x1EEE9AC00](v419);
  v1685 = (&v1517 - v422);
  v423 = MEMORY[0x1EEE9AC00](v421);
  v1682 = (&v1517 - v424);
  v425 = MEMORY[0x1EEE9AC00](v423);
  v1687 = (&v1517 - v426);
  v427 = MEMORY[0x1EEE9AC00](v425);
  v1684 = (&v1517 - v428);
  v429 = MEMORY[0x1EEE9AC00](v427);
  v1681 = &v1517 - v430;
  v431 = MEMORY[0x1EEE9AC00](v429);
  v1676 = (&v1517 - v432);
  v433 = MEMORY[0x1EEE9AC00](v431);
  v1679 = &v1517 - v434;
  v435 = MEMORY[0x1EEE9AC00](v433);
  v1678 = &v1517 - v436;
  v437 = MEMORY[0x1EEE9AC00](v435);
  v439 = (&v1517 - v438);
  v440 = MEMORY[0x1EEE9AC00](v437);
  v442 = (&v1517 - v441);
  v443 = MEMORY[0x1EEE9AC00](v440);
  v445 = &v1517 - v444;
  MEMORY[0x1EEE9AC00](v443);
  v447 = &v1517 - v446;
  v448 = swift_getTupleTypeMetadata2();
  v1756 = *(v448 - 8);
  v449 = MEMORY[0x1EEE9AC00](v448);
  v451 = &v1517 - v450;
  *&v1757.f64[0] = v449;
  v452 = &v1517 + *(v449 + 48) - v450;
  v1755 = v412;
  v453 = *(v412 + 16);
  v453(&v1517 - v450, v1761, v411);
  v1761 = v452;
  v453(v452, *&v1760.f64[0], v411);
  v1764 = v451;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v473 = v1764;
      v453(v445, v1764, v411);
      v763 = v1761;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v764 = v1690;
        v765 = v1615;
        v477 = v1691;
        (*(v1690 + 32))(v1615, v763, v1691);
        v478 = v411;
        v479 = static FullWidthItemDescriptor.== infix(_:_:)(v445, v765, *&v1763, v1753);
        v480 = *(v764 + 8);
        v480(v765, v477);
        v481 = v445;
        goto LABEL_53;
      }

      (*(v1690 + 8))(v445, v1691);
      goto LABEL_102;
    case 2u:
      v624 = v442;
      v625 = (v453)(v442, v1764, v411);
      v626 = v442[11];
      v1823 = v442[10];
      v1824 = v626;
      v627 = v442[13];
      v1825 = v442[12];
      v1826 = v627;
      v628 = v442[7];
      v1819 = v442[6];
      v1820 = v628;
      v629 = v442[9];
      v1821 = v442[8];
      v1822 = v629;
      v630 = v442[3];
      v1815 = v442[2];
      v1816 = v630;
      v631 = v442[5];
      v1817 = v442[4];
      v1818 = v631;
      v632 = v442[1];
      v1813 = *v442;
      v1814 = v632;
      MEMORY[0x1EEE9AC00](v625);
      strcpy(&v1517 - 112, "layout artwork style title subtitle caption primaryActionButton secondaryActionButton customView ");
      *&v1797.f64[0] = &type metadata for FullWidthStageViewLayout;
      v1797.f64[1] = v1763;
      *&v1798.f64[0] = &type metadata for FullWidthStageViewStyle;
      v1798.f64[1] = v1759.f64[0];
      v1799.f64[0] = v1759.f64[0];
      v1799.f64[1] = v1759.f64[0];
      v633 = v1758.f64[0];
      v1800.f64[0] = v1758.f64[0];
      v1800.f64[1] = v1758.f64[0];
      v634 = v1747;
      *&v1801.f64[0] = v1747;
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v636 = v411;
      v637 = TupleTypeMetadata;
      *&v1759.f64[0] = TupleTypeMetadata[12];
      LODWORD(v1741) = *(v442->f64 + TupleTypeMetadata[16]);
      v638 = TupleTypeMetadata[20];
      v639 = TupleTypeMetadata[24];
      v640 = TupleTypeMetadata[28];
      v641 = TupleTypeMetadata[32];
      v1744 = TupleTypeMetadata[36];
      *&v1760.f64[0] = TupleTypeMetadata[40];
      v642 = v1761;
      v1751 = v636;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        (*(v1746 + 8))(v624 + *&v1760.f64[0], v634);
        v928 = v1754[1];
        v928(&v1744[v624], *&v633);
        v928(v624 + v641, *&v633);
        sub_1E6744A10(v624 + v640, &qword_1ED096E68);
        sub_1E6744A10(v624 + v639, &qword_1ED096E68);
        sub_1E6744A10(v624 + v638, &qword_1ED096E68);
        v1762[1](v624 + *&v1759.f64[0], *&v1763);
        goto LABEL_101;
      }

      v643 = v642[4];
      v1802 = v642[5];
      v1801 = v643;
      v644 = v642[8];
      v1806 = v642[9];
      v1805 = v644;
      v645 = v642[6];
      v1804 = v642[7];
      v1803 = v645;
      v646 = v642[12];
      v1810 = v642[13];
      v1809 = v646;
      v647 = v642[10];
      v1808 = v642[11];
      v1807 = v647;
      v648 = v642[2];
      v1800 = v642[3];
      v1799 = v648;
      v649 = v642[1];
      v1797 = *v642;
      v1798 = v649;
      v1736 = v637[12];
      LODWORD(v1734) = *(v642->f64 + v637[16]);
      v1737 = v637[20];
      v1738 = v637[24];
      v1739 = v637[28];
      v1740 = v637[32];
      v1756 = v637[36];
      *&v1757.f64[0] = v637[40];
      v1735 = v1762[4];
      (v1735)(v1743, v624 + *&v1759.f64[0], *&v1763);
      sub_1E6761420(v624 + v638, v1720, &qword_1ED096E68);
      sub_1E6761420(v624 + v639, v1711, &qword_1ED096E68);
      sub_1E6761420(v624 + v640, v1703, &qword_1ED096E68);
      v650 = v1754[4];
      v650(v1699, v624 + v641, *&v1758.f64[0]);
      v650(v1696, &v1744[v624], *&v1758.f64[0]);
      v651 = *(v1746 + 32);
      v652 = v624 + *&v1760.f64[0];
      v653 = v1747;
      v651(v1693, v652, v1747);
      (v1735)(v1742, v642 + v1736, *&v1763);
      v654 = v1758.f64[0];
      sub_1E6761420(v642 + v1737, v1713, &qword_1ED096E68);
      sub_1E6761420(&v1738[v642], v1710, &qword_1ED096E68);
      sub_1E6761420(&v1739[v642], v1698, &qword_1ED096E68);
      v655 = v1655;
      v650(v1655, v642 + v1740, *&v654);
      v656 = v1656;
      v650(v1656, v1756 + v642, *&v654);
      v657 = v642 + *&v1757.f64[0];
      v658 = v1620;
      v659 = v653;
      v651(v1620, v657, v653);
      v1791 = v1823;
      v1792 = v1824;
      v1793 = v1825;
      v1794 = v1826;
      v1787 = v1819;
      v1788 = v1820;
      v1789 = v1821;
      v1790 = v1822;
      v1783 = v1815;
      v1784 = v1816;
      v1785 = v1817;
      v1786 = v1818;
      v1781 = v1813;
      v1782 = v1814;
      v1775 = v1807;
      v1776 = v1808;
      v1777 = v1809;
      v1778 = v1810;
      v1771 = v1803;
      v1772 = v1804;
      v1773 = v1805;
      v1774 = v1806;
      v1767 = v1799;
      v1768 = v1800;
      v1769 = v1801;
      v1770 = v1802;
      v1765 = v1797;
      v1766 = v1798;
      v660 = _s15FitnessCanvasUI24FullWidthStageViewLayoutV2eeoiySbAC_ACtFZ_0(&v1781, &v1765);
      v661 = *&v1763;
      if ((v660 & 1) == 0)
      {
        v1761 = *(v1746 + 8);
        (v1761)(v658, v659);
        v965 = v1754[1];
        v965(v656, *&v654);
        v965(v655, *&v654);
        sub_1E6744A10(v1698, &qword_1ED096E68);
        sub_1E6744A10(v1710, &qword_1ED096E68);
        sub_1E6744A10(v1713, &qword_1ED096E68);
        v966 = v1762[1];
        v966(v1742, v661);
        (v1761)(v1693, v1747);
        v965(v1696, *&v654);
        v965(v1699, *&v654);
        sub_1E6744A10(v1703, &qword_1ED096E68);
        sub_1E6744A10(v1711, &qword_1ED096E68);
        sub_1E6744A10(v1720, &qword_1ED096E68);
        v966(v1743, v661);
        goto LABEL_379;
      }

      v662 = v654;
      if ((sub_1E68B3190() & 1) == 0)
      {
        v1761 = *(v1746 + 8);
        v959 = v661;
        (v1761)(v658, v1747);
        v989 = v1754[1];
        v989(v1656, *&v662);
        v989(v1655, *&v662);
        sub_1E6744A10(v1698, &qword_1ED096E68);
        sub_1E6744A10(v1710, &qword_1ED096E68);
        sub_1E6744A10(v1713, &qword_1ED096E68);
        v784 = v1762[1];
        v784(v1742, v661);
LABEL_251:
        (v1761)(v1693, v1747);
        v989(v1696, *&v662);
        v989(v1699, *&v662);
LABEL_252:
        sub_1E6744A10(v1703, &qword_1ED096E68);
        sub_1E6744A10(v1711, &qword_1ED096E68);
        sub_1E6744A10(v1720, &qword_1ED096E68);
        v960 = v1743;
        goto LABEL_377;
      }

      v663 = v1746;
      v664 = v1713;
      if (v1741 != v1734)
      {
        v1761 = *(v1746 + 8);
        (v1761)(v658, v1747);
LABEL_249:
        v989 = v1754[1];
        v662 = v1758.f64[0];
        v989(v1656, *&v1758.f64[0]);
        v989(v1655, *&v662);
        sub_1E6744A10(v1698, &qword_1ED096E68);
        sub_1E6744A10(v1710, &qword_1ED096E68);
        v1113 = v664;
LABEL_250:
        sub_1E6744A10(v1113, &qword_1ED096E68);
        v784 = v1762[1];
        v959 = *&v1763;
        v784(v1742, *&v1763);
        goto LABEL_251;
      }

      v665 = *(v1752 + 48);
      v666 = v1588;
      sub_1E67612FC(v1720, v1588, &qword_1ED096E68);
      sub_1E67612FC(v664, v666 + v665, &qword_1ED096E68);
      v667 = v1750;
      v668 = *(v1750 + 48);
      v669 = v1748;
      v670 = (v668)(v666, 1, v1748);
      v1761 = v668;
      if (v670 == 1)
      {
        if ((v668)(v666 + v665, 1, v669) == 1)
        {
          sub_1E6744A10(v666, &qword_1ED096E68);
          v671 = v669;
          goto LABEL_322;
        }
      }

      else
      {
        v1112 = v1567;
        sub_1E67612FC(v666, v1567, &qword_1ED096E68);
        if ((v668)(v666 + v665, 1, v669) != 1)
        {
          v1227 = v1660;
          (*(v667 + 32))(v1660, v666 + v665, v669);
          sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848]);
          v671 = v669;
          v1228 = sub_1E68B3190();
          v1229 = *(v667 + 8);
          v1230 = v1227;
          v664 = v1713;
          v1229(v1230, v671);
          v1229(v1112, v671);
          sub_1E6744A10(v666, &qword_1ED096E68);
          v663 = v1746;
          if (v1228)
          {
LABEL_322:
            v1231 = *(v1752 + 48);
            v1232 = v1561;
            sub_1E67612FC(v1711, v1561, &qword_1ED096E68);
            sub_1E67612FC(v1710, v1232 + v1231, &qword_1ED096E68);
            v1233 = v1761;
            v1234 = v671;
            if ((v1761)(v1232, 1, v671) == 1)
            {
              if (v1233(v1232 + v1231, 1, v671) == 1)
              {
                sub_1E6744A10(v1232, &qword_1ED096E68);
                goto LABEL_396;
              }
            }

            else
            {
              v1250 = v1547;
              sub_1E67612FC(v1232, v1547, &qword_1ED096E68);
              v1251 = v1233(v1232 + v1231, 1, v1234);
              v1252 = v1750;
              if (v1251 != 1)
              {
                v1322 = v1660;
                (*(v1750 + 32))(v1660, v1232 + v1231, v1234);
                sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848]);
                v1323 = sub_1E68B3190();
                v1324 = *(v1252 + 8);
                v1324(v1322, v1234);
                v1324(v1250, v1234);
                sub_1E6744A10(v1232, &qword_1ED096E68);
                if (v1323)
                {
LABEL_396:
                  v1325 = *(v1752 + 48);
                  v1326 = v1543;
                  sub_1E67612FC(v1703, v1543, &qword_1ED096E68);
                  v1327 = v1698;
                  sub_1E67612FC(v1698, v1326 + v1325, &qword_1ED096E68);
                  v1328 = v1761;
                  if ((v1761)(v1326, 1, v1234) == 1)
                  {
                    v1329 = v1328(v1326 + v1325, 1, v1234);
                    v1330 = v1620;
                    v1331 = v1656;
                    v1332 = v1713;
                    if (v1329 == 1)
                    {
                      sub_1E6744A10(v1326, &qword_1ED096E68);
                      goto LABEL_437;
                    }
                  }

                  else
                  {
                    v1363 = v1531;
                    sub_1E67612FC(v1326, v1531, &qword_1ED096E68);
                    if (v1328(v1326 + v1325, 1, v1234) != 1)
                    {
                      v1402 = v1750;
                      v1403 = v1326 + v1325;
                      v1404 = v1660;
                      (*(v1750 + 32))(v1660, v1403, v1234);
                      sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848]);
                      v1405 = v1234;
                      v1406 = sub_1E68B3190();
                      v1407 = *(v1402 + 8);
                      v1407(v1404, v1405);
                      v1407(v1363, v1405);
                      sub_1E6744A10(v1326, &qword_1ED096E68);
                      v1330 = v1620;
                      v1331 = v1656;
                      v1332 = v1713;
                      if (v1406)
                      {
LABEL_437:
                        v1408 = *(v1589 + 48);
                        v1409 = v1754[2];
                        v1410 = v1534;
                        v1411 = v1758.f64[0];
                        v1409(v1534, v1699, *&v1758.f64[0]);
                        v1409(&v1410[v1408], v1655, *&v1411);
                        v1412 = *(v1745 + 48);
                        v1413 = v1749;
                        if (v1412(v1410, 1, v1749) == 1)
                        {
                          if (v1412(&v1410[v1408], 1, v1413) == 1)
                          {
                            v1761 = v1754[1];
                            (v1761)(v1410, *&v1411);
                            goto LABEL_460;
                          }
                        }

                        else
                        {
                          v1436 = v1524;
                          v1409(v1524, v1410, *&v1411);
                          if (v1412(&v1410[v1408], 1, v1413) != 1)
                          {
                            v1455 = v1745;
                            v1456 = &v1534[v1408];
                            v1457 = v1545;
                            (*(v1745 + 32))(v1545, v1456, v1413);
                            LODWORD(v1760.f64[0]) = sub_1E68B3190();
                            v1458 = *(v1455 + 8);
                            v1458(v1457, v1413);
                            v1458(v1436, v1413);
                            v1411 = v1758.f64[0];
                            v1761 = v1754[1];
                            (v1761)(v1534, *&v1758.f64[0]);
                            v1332 = v1713;
                            if (LOBYTE(v1760.f64[0]))
                            {
LABEL_460:
                              v1459 = *(v1589 + 48);
                              v1460 = v1526;
                              v1409(v1526, v1696, *&v1411);
                              v1409(&v1460[v1459], v1656, *&v1411);
                              v1461 = v1749;
                              if (v1412(v1460, 1, v1749) == 1)
                              {
                                if (v1412(&v1460[v1459], 1, v1461) == 1)
                                {
                                  (v1761)(v1526, *&v1758.f64[0]);
LABEL_473:
                                  *&v1488 = *(TupleTypeMetadata2 + 48);
                                  v1489 = *(v1746 + 16);
                                  v1490 = v1522;
                                  v1491 = v1747;
                                  v1489(v1522, v1693, v1747);
                                  v1760.f64[0] = v1488;
                                  v1489(&v1490[*&v1488], v1620, v1491);
                                  v1759.f64[0] = *(v1694 + 48);
                                  if ((*&v1759.f64[0])(v1490, 1, v1695) == 1)
                                  {
                                    v1493 = v1746 + 8;
                                    v1492 = *(v1746 + 8);
                                    (v1492)(v1620, v1747);
                                    v1494 = v1758.f64[0];
                                    v1495 = v1761;
                                    (v1761)(v1656, *&v1758.f64[0]);
                                    v1495(v1655, *&v1494);
                                    sub_1E6744A10(v1698, &qword_1ED096E68);
                                    sub_1E6744A10(v1710, &qword_1ED096E68);
                                    sub_1E6744A10(v1713, &qword_1ED096E68);
                                    v1496 = v1762[1];
                                    v1497 = *&v1763;
                                    v1496(v1742, *&v1763);
                                    v1746 = v1493;
                                    v1762 = v1492;
                                    (v1492)(v1693, v1747);
                                    v1495(v1696, *&v1494);
                                    v1495(v1699, *&v1494);
                                    sub_1E6744A10(v1703, &qword_1ED096E68);
                                    sub_1E6744A10(v1711, &qword_1ED096E68);
                                    sub_1E6744A10(v1720, &qword_1ED096E68);
                                    v1496(v1743, v1497);
                                    if ((*&v1759.f64[0])(&v1522[*&v1760.f64[0]], 1, v1695) == 1)
                                    {
                                      (v1762)(v1522, v1747);
LABEL_202:
                                      v1072 = v1755;
LABEL_402:
                                      (*(v1072 + 8))(v1764, v1751);
                                      goto LABEL_425;
                                    }
                                  }

                                  else
                                  {
                                    v1503 = v1522;
                                    v1489(v1519, v1522, v1747);
                                    if ((*&v1759.f64[0])(&v1503[*&v1760.f64[0]], 1, v1695) != 1)
                                    {
                                      v1509 = v1694;
                                      v1510 = v1517;
                                      v1511 = v1695;
                                      (*(v1694 + 32))(v1517, &v1522[*&v1760.f64[0]], v1695);
                                      LODWORD(v1759.f64[0]) = sub_1E68B3190();
                                      v1512 = *(v1509 + 8);
                                      v1694 = v1509 + 8;
                                      *&v1757.f64[0] = v1512;
                                      v1512(v1510, v1511);
                                      v1760.f64[0] = *(v1746 + 8);
                                      (*&v1760.f64[0])(v1620, v1747);
                                      v1513 = v1758.f64[0];
                                      v1514 = v1761;
                                      (v1761)(v1656, *&v1758.f64[0]);
                                      v1514(v1655, *&v1513);
                                      sub_1E6744A10(v1698, &qword_1ED096E68);
                                      sub_1E6744A10(v1710, &qword_1ED096E68);
                                      sub_1E6744A10(v1713, &qword_1ED096E68);
                                      v1515 = v1762[1];
                                      v1516 = *&v1763;
                                      v1515(v1742, *&v1763);
                                      (*&v1760.f64[0])(v1693, v1747);
                                      v1514(v1696, *&v1513);
                                      v1514(v1699, *&v1513);
                                      sub_1E6744A10(v1703, &qword_1ED096E68);
                                      sub_1E6744A10(v1711, &qword_1ED096E68);
                                      sub_1E6744A10(v1720, &qword_1ED096E68);
                                      v1515(v1743, v1516);
                                      (*&v1757.f64[0])(v1519, v1511);
                                      (*&v1760.f64[0])(v1522, v1747);
                                      if (LOBYTE(v1759.f64[0]))
                                      {
                                        goto LABEL_202;
                                      }

                                      goto LABEL_379;
                                    }

                                    v1760.f64[0] = *(v1746 + 8);
                                    v1504 = v1747;
                                    (*&v1760.f64[0])(v1620, v1747);
                                    v1505 = v1758.f64[0];
                                    v1506 = v1761;
                                    (v1761)(v1656, *&v1758.f64[0]);
                                    v1506(v1655, *&v1505);
                                    sub_1E6744A10(v1698, &qword_1ED096E68);
                                    sub_1E6744A10(v1710, &qword_1ED096E68);
                                    sub_1E6744A10(v1713, &qword_1ED096E68);
                                    v1507 = v1762[1];
                                    v1508 = *&v1763;
                                    v1507(v1742, *&v1763);
                                    (*&v1760.f64[0])(v1693, v1504);
                                    v1506(v1696, *&v1505);
                                    v1506(v1699, *&v1505);
                                    sub_1E6744A10(v1703, &qword_1ED096E68);
                                    sub_1E6744A10(v1711, &qword_1ED096E68);
                                    sub_1E6744A10(v1720, &qword_1ED096E68);
                                    v1507(v1743, v1508);
                                    (*(v1694 + 8))(v1519, v1695);
                                  }

                                  (*(v1518 + 8))(v1522, TupleTypeMetadata2);
LABEL_379:
                                  v1072 = v1755;
LABEL_380:
                                  (*(v1072 + 8))(v1764, v1751);
                                  goto LABEL_381;
                                }
                              }

                              else
                              {
                                v1409(v1521, v1460, *&v1758.f64[0]);
                                if (v1412(&v1460[v1459], 1, v1461) != 1)
                                {
                                  v1481 = v1745;
                                  v1482 = v1526;
                                  v1483 = v1545;
                                  v1484 = v1749;
                                  (*(v1745 + 32))(v1545, &v1526[v1459], v1749);
                                  v1485 = v1521;
                                  v1486 = sub_1E68B3190();
                                  v1487 = *(v1481 + 8);
                                  v1487(v1483, v1484);
                                  v1487(v1485, v1484);
                                  (v1761)(v1482, *&v1758.f64[0]);
                                  if (v1486)
                                  {
                                    goto LABEL_473;
                                  }

LABEL_468:
                                  v1760.f64[0] = *(v1746 + 8);
                                  v1471 = v1747;
                                  (*&v1760.f64[0])(v1620, v1747);
                                  v1472 = v1758.f64[0];
                                  v1473 = v1761;
                                  (v1761)(v1656, *&v1758.f64[0]);
                                  v1473(v1655, *&v1472);
                                  sub_1E6744A10(v1698, &qword_1ED096E68);
                                  sub_1E6744A10(v1710, &qword_1ED096E68);
                                  sub_1E6744A10(v1713, &qword_1ED096E68);
                                  v1474 = v1762[1];
                                  v1475 = *&v1763;
                                  v1474(v1742, *&v1763);
                                  (*&v1760.f64[0])(v1693, v1471);
                                  v1473(v1696, *&v1472);
                                  v1473(v1699, *&v1472);
                                  sub_1E6744A10(v1703, &qword_1ED096E68);
                                  sub_1E6744A10(v1711, &qword_1ED096E68);
                                  sub_1E6744A10(v1720, &qword_1ED096E68);
                                  v1474(v1743, v1475);
                                  goto LABEL_379;
                                }

                                (*(v1745 + 8))(v1521, v1749);
                              }

                              (*(v1555 + 8))(v1526, v1589);
                              goto LABEL_468;
                            }

                            goto LABEL_448;
                          }

                          (*(v1745 + 8))(v1436, v1413);
                          v1411 = v1758.f64[0];
                          v1410 = v1534;
                          v1332 = v1713;
                        }

                        (*(v1555 + 8))(v1410, v1589);
LABEL_448:
                        v1437 = *(v1746 + 8);
                        v1746 += 8;
                        v1761 = v1437;
                        v1438 = v1411;
                        v1439 = v1747;
                        (v1437)(v1620, v1747);
                        v1440 = v1754[1];
                        v1440(v1656, *&v1438);
                        v1440(v1655, *&v1438);
                        sub_1E6744A10(v1698, &qword_1ED096E68);
                        sub_1E6744A10(v1710, &qword_1ED096E68);
                        sub_1E6744A10(v1332, &qword_1ED096E68);
                        v784 = v1762[1];
                        v959 = *&v1763;
                        v784(v1742, *&v1763);
                        (v1761)(v1693, v1439);
                        v1440(v1696, *&v1438);
                        v1440(v1699, *&v1438);
                        goto LABEL_252;
                      }

                      goto LABEL_414;
                    }

                    (*(v1750 + 8))(v1363, v1234);
                    v1330 = v1620;
                    v1331 = v1656;
                    v1332 = v1713;
                  }

                  sub_1E6744A10(v1326, &qword_1ED098130);
LABEL_414:
                  v1364 = *(v1746 + 8);
                  v1746 += 8;
                  v1364(v1330, v1747);
                  v1365 = v1754[1];
                  v1366 = v1331;
                  v1367 = v1758.f64[0];
                  v1365(v1366, *&v1758.f64[0]);
                  v1365(v1655, *&v1367);
                  sub_1E6744A10(v1327, &qword_1ED096E68);
                  sub_1E6744A10(v1710, &qword_1ED096E68);
                  sub_1E6744A10(v1332, &qword_1ED096E68);
                  v784 = v1762[1];
                  v959 = *&v1763;
                  v784(v1742, *&v1763);
                  v1364(v1693, v1747);
                  v1365(v1696, *&v1367);
                  v1365(v1699, *&v1367);
                  goto LABEL_252;
                }

                goto LABEL_336;
              }

              (*(v1750 + 8))(v1250, v1234);
            }

            sub_1E6744A10(v1232, &qword_1ED098130);
LABEL_336:
            v1761 = *(v663 + 8);
            (v1761)(v1620, v1747);
            v989 = v1754[1];
            v662 = v1758.f64[0];
            v989(v1656, *&v1758.f64[0]);
            v989(v1655, *&v662);
            sub_1E6744A10(v1698, &qword_1ED096E68);
            sub_1E6744A10(v1710, &qword_1ED096E68);
            v1113 = v1713;
            goto LABEL_250;
          }

          goto LABEL_248;
        }

        (*(v667 + 8))(v1112, v669);
        v663 = v1746;
      }

      sub_1E6744A10(v666, &qword_1ED098130);
LABEL_248:
      v1761 = *(v663 + 8);
      (v1761)(v1620, v1747);
      goto LABEL_249;
    case 3u:
      v473 = v1764;
      v696 = (v453)(v439, v1764, v411);
      v697 = v439[1];
      v1813 = *v439;
      v1814 = v697;
      v698 = v439[3];
      v1815 = v439[2];
      v1816 = v698;
      MEMORY[0x1EEE9AC00](v696);
      strcpy(&v1517 - 48, "layout title description actionButton ");
      *&v1797.f64[0] = &type metadata for InfoActionCardViewLayout;
      v1797.f64[1] = v1759.f64[0];
      v1798.f64[0] = v1759.f64[0];
      v699 = v1758.f64[0];
      v1798.f64[1] = v1758.f64[0];
      v700 = swift_getTupleTypeMetadata();
      v701 = v411;
      v702 = v700;
      v703 = v700[12];
      v704 = v700[16];
      v705 = v700[20];
      v706 = v1761;
      v1751 = v701;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        (v1754[1])(v439 + v705, *&v699);
        sub_1E6744A10(v439 + v704, &qword_1ED096E68);
        sub_1E6744A10(v439 + v703, &qword_1ED096E68);
        goto LABEL_102;
      }

      v707 = v706[1];
      v1829[0] = *v706;
      v1829[1] = v707;
      v708 = v706[2];
      v1829[3] = v706[3];
      v1829[2] = v708;
      v709 = v702[12];
      sub_1E6761420(v439 + v703, v1737, &qword_1ED096E68);
      sub_1E6761420(v439 + v704, v1735, &qword_1ED096E68);
      v710 = v1754[4];
      v710(v1727, v439 + v705, *&v1758.f64[0]);
      v711 = v706 + v709;
      v712 = *&v1758.f64[0];
      v713 = v1648;
      sub_1E6761420(v711, v1648, &qword_1ED096E68);
      v714 = v706 + v704;
      v715 = v1671;
      sub_1E6761420(v714, v1671, &qword_1ED096E68);
      v716 = v1665;
      v710(v1665, v706 + v705, v712);
      v1797 = v1813;
      v1798 = v1814;
      v1799 = v1815;
      v1800 = v1816;
      if ((_s15FitnessCanvasUI24InfoActionCardViewLayoutV2eeoiySbAC_ACtFZ_0(&v1797, v1829) & 1) == 0)
      {
        v967 = v713;
        v968 = v1754[1];
        v968(v716, v712);
        sub_1E6744A10(v715, &qword_1ED096E68);
        sub_1E6744A10(v967, &qword_1ED096E68);
        v968(v1727, v712);
        v969 = v1735;
LABEL_116:
        sub_1E6744A10(v969, &qword_1ED096E68);
        v970 = v1737;
        v971 = &qword_1ED096E68;
        goto LABEL_117;
      }

      v717 = *(v1752 + 48);
      v718 = v1613;
      sub_1E67612FC(v1737, v1613, &qword_1ED096E68);
      sub_1E67612FC(v713, v718 + v717, &qword_1ED096E68);
      v719 = v1750;
      v720 = *(v1750 + 48);
      v721 = v1748;
      if (v720(v718, 1, v1748) == 1)
      {
        v722 = v720(v718 + v717, 1, v721);
        v723 = v1754;
        v724 = v1764;
        v725 = v1727;
        if (v722 == 1)
        {
          sub_1E6744A10(v718, &qword_1ED096E68);
          v726 = v721;
          goto LABEL_180;
        }
      }

      else
      {
        v993 = v712;
        v994 = v1596;
        sub_1E67612FC(v718, v1596, &qword_1ED096E68);
        v995 = v720(v718 + v717, 1, v721);
        v723 = v1754;
        if (v995 != 1)
        {
          v1042 = v994;
          v1043 = v1660;
          (*(v719 + 32))(v1660, v718 + v717, v721);
          sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848]);
          v726 = v721;
          v1044 = sub_1E68B3190();
          v1045 = *(v719 + 8);
          v1046 = v1043;
          v712 = *&v1758.f64[0];
          v1045(v1046, v726);
          v1045(v1042, v726);
          sub_1E6744A10(v1613, &qword_1ED096E68);
          v725 = v1727;
          v724 = v1764;
          if (v1044)
          {
LABEL_180:
            v1047 = v712;
            v1048 = *(v1752 + 48);
            v1049 = v1594;
            sub_1E67612FC(v1735, v1594, &qword_1ED096E68);
            sub_1E67612FC(v1671, v1049 + v1048, &qword_1ED096E68);
            if (v720(v1049, 1, v726) == 1)
            {
              v1050 = v720(v1049 + v1048, 1, v726);
              v1051 = v1735;
              v1052 = v1671;
              if (v1050 == 1)
              {
                sub_1E6744A10(v1049, &qword_1ED096E68);
LABEL_288:
                v1187 = *(v1589 + 48);
                v1188 = v1754;
                v1189 = v1754[2];
                v1190 = v1590;
                v1191 = v1727;
                v1189(v1590, v1727, v712);
                v1763 = *&v1187;
                v1192 = &v1190[v1187];
                v1193 = v1665;
                v1189(v1192, v1665, v712);
                v1194 = v1745;
                v1195 = v1190;
                v1196 = v1749;
                v1762 = *(v1745 + 48);
                if ((v1762)(v1195, 1, v1749) == 1)
                {
                  v1197 = v1188[1];
                  v1197(v1193, v712);
                  sub_1E6744A10(v1671, &qword_1ED096E68);
                  sub_1E6744A10(v1648, &qword_1ED096E68);
                  v1197(v1191, v712);
                  sub_1E6744A10(v1735, &qword_1ED096E68);
                  sub_1E6744A10(v1737, &qword_1ED096E68);
                  v1198 = v1590;
                  v1199 = (v1762)(&v1590[*&v1763], 1, v1196) == 1;
                  v1200 = v1198;
                  if (!v1199)
                  {
                    goto LABEL_320;
                  }

                  v1197(v1198, v712);
                  goto LABEL_358;
                }

                v1223 = v1563;
                v1224 = v1590;
                v1189(v1563, v1590, v712);
                v1225 = *&v1763;
                if ((v1762)(&v1224[*&v1763], 1, v1196) == 1)
                {
                  v1226 = v1188[1];
                  v1226(v1665, v712);
                  sub_1E6744A10(v1671, &qword_1ED096E68);
                  sub_1E6744A10(v1648, &qword_1ED096E68);
                  v1226(v1727, v712);
                  sub_1E6744A10(v1735, &qword_1ED096E68);
                  sub_1E6744A10(v1737, &qword_1ED096E68);
                  (*(v1194 + 8))(v1223, v1196);
                  v1200 = v1224;
LABEL_320:
                  (*(v1555 + 8))(v1200, v1589);
LABEL_393:
                  v1292 = v1755;
                  v1293 = v1764;
                  goto LABEL_394;
                }

                v1304 = v1545;
                (*(v1194 + 32))(v1545, &v1224[v1225], v1196);
                LODWORD(v1763) = sub_1E68B3190();
                v1305 = *(v1194 + 8);
                v1305(v1304, v1196);
                v1306 = v1188[1];
                v1306(v1665, v712);
                sub_1E6744A10(v1671, &qword_1ED096E68);
                sub_1E6744A10(v1648, &qword_1ED096E68);
                v1306(v1727, v712);
                sub_1E6744A10(v1735, &qword_1ED096E68);
                sub_1E6744A10(v1737, &qword_1ED096E68);
                v1305(v1563, v1196);
                v1306(v1224, v712);
                v1292 = v1755;
                v1293 = v1764;
                if ((LOBYTE(v1763) & 1) == 0)
                {
LABEL_394:
                  (*(v1292 + 8))(v1293, v1751);
                  goto LABEL_381;
                }

LABEL_424:
                (*(v1292 + 8))(v1293, v1751);
                goto LABEL_425;
              }
            }

            else
            {
              v1086 = v1572;
              sub_1E67612FC(v1049, v1572, &qword_1ED096E68);
              if (v720(v1049 + v1048, 1, v726) != 1)
              {
                v1180 = v1750;
                v1181 = v1049 + v1048;
                v1182 = v1660;
                (*(v1750 + 32))(v1660, v1181, v726);
                sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848]);
                v1183 = v726;
                v1184 = sub_1E68B3190();
                v1185 = v1049;
                v1186 = *(v1180 + 8);
                v1186(v1182, v1183);
                v1186(v1086, v1183);
                sub_1E6744A10(v1185, &qword_1ED096E68);
                v1051 = v1735;
                v1052 = v1671;
                v712 = v1047;
                if (v1184)
                {
                  goto LABEL_288;
                }

                goto LABEL_233;
              }

              (*(v1750 + 8))(v1086, v726);
              v1051 = v1735;
              v1052 = v1671;
            }

            sub_1E6744A10(v1049, &qword_1ED098130);
            v712 = v1047;
LABEL_233:
            v1087 = v1754[1];
            v1087(v1665, v712);
            sub_1E6744A10(v1052, &qword_1ED096E68);
            sub_1E6744A10(v1648, &qword_1ED096E68);
            v1087(v1727, v712);
            v969 = v1051;
            goto LABEL_116;
          }

LABEL_144:
          v996 = v723[1];
          v996(v1665, v712);
          sub_1E6744A10(v1671, &qword_1ED096E68);
          sub_1E6744A10(v1648, &qword_1ED096E68);
          v996(v725, v712);
          sub_1E6744A10(v1735, &qword_1ED096E68);
          sub_1E6744A10(v1737, &qword_1ED096E68);
LABEL_158:
          (*(v1755 + 8))(v724, v1751);
          goto LABEL_381;
        }

        (*(v719 + 8))(v994, v721);
        v725 = v1727;
        v712 = v993;
        v724 = v1764;
      }

      sub_1E6744A10(v718, &qword_1ED098130);
      goto LABEL_144;
    case 4u:
      v514 = v1678;
      v473 = v1764;
      v515 = (v453)(v1678, v1764, v411);
      v1751 = v411;
      MEMORY[0x1EEE9AC00](v515);
      strcpy(&v1517 - 48, "artwork footnote subtitle title ");
      v516 = *&v1763;
      v1813.f64[0] = v1763;
      v1813.f64[1] = v1759.f64[0];
      v1814.f64[0] = v1759.f64[0];
      v1814.f64[1] = v1759.f64[0];
      v517 = swift_getTupleTypeMetadata();
      v518 = v517[12];
      v519 = v517[16];
      v520 = v517[20];
      v521 = v1761;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        sub_1E6744A10(&v514[v520], &qword_1ED096E68);
        sub_1E6744A10(&v514[v519], &qword_1ED096E68);
        sub_1E6744A10(&v514[v518], &qword_1ED096E68);
        v1762[1](v514, v516);
        goto LABEL_102;
      }

      v522 = v1762;
      v523 = v1647;
      (v1762[4])(v1647, v521, v516);
      sub_1E6761420(&v514[v518], v1736, &qword_1ED096E68);
      sub_1E6761420(&v514[v519], v1725, &qword_1ED096E68);
      sub_1E6761420(&v514[v520], v1688, &qword_1ED096E68);
      v524 = &v521[v518];
      v525 = v1649;
      sub_1E6761420(v524, v1649, &qword_1ED096E68);
      v526 = &v521[v519];
      v527 = v1641;
      sub_1E6761420(v526, v1641, &qword_1ED096E68);
      v528 = &v521[v520];
      v529 = v523;
      v530 = v1663;
      v531 = *&v1763;
      sub_1E6761420(v528, v1663, &qword_1ED096E68);
      v532 = sub_1E68B3190();
      v535 = v522[1];
      v534 = v522 + 1;
      v533 = v535;
      (v535)(v514, v531);
      if ((v532 & 1) == 0)
      {
        sub_1E6744A10(v530, &qword_1ED096E68);
        sub_1E6744A10(v527, &qword_1ED096E68);
        sub_1E6744A10(v525, &qword_1ED096E68);
        sub_1E6744A10(v1688, &qword_1ED096E68);
        sub_1E6744A10(v1725, &qword_1ED096E68);
        sub_1E6744A10(v1736, &qword_1ED096E68);
        (v533)(v529, v531);
        goto LABEL_379;
      }

      v1761 = v533;
      v1762 = v534;
      v536 = *(v1752 + 48);
      v537 = v1736;
      v538 = v1609;
      sub_1E67612FC(v1736, v1609, &qword_1ED096E68);
      sub_1E67612FC(v525, v538 + v536, &qword_1ED096E68);
      v539 = v1750;
      v540 = *(v1750 + 48);
      v541 = v1748;
      v542 = v540(v538, 1, v1748);
      *&v1760.f64[0] = v540;
      if (v542 == 1)
      {
        v543 = v540(v538 + v536, 1, v541);
        v544 = v1688;
        v545 = v1764;
        if (v543 == 1)
        {
          sub_1E6744A10(v538, &qword_1ED096E68);
          goto LABEL_165;
        }
      }

      else
      {
        v981 = v1597;
        sub_1E67612FC(v538, v1597, &qword_1ED096E68);
        v982 = v540(v538 + v536, 1, v541);
        v983 = v1764;
        if (v982 != 1)
        {
          v1012 = v1660;
          (*(v539 + 32))(v1660, v538 + v536, v541);
          sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848]);
          LODWORD(v1759.f64[0]) = sub_1E68B3190();
          v1013 = *(v539 + 8);
          v1014 = v1012;
          v527 = v1641;
          v537 = v1736;
          v1013(v1014, v541);
          v1013(v981, v541);
          sub_1E6744A10(v538, &qword_1ED096E68);
          v545 = v983;
          v544 = v1688;
          if (LOBYTE(v1759.f64[0]))
          {
LABEL_165:
            v1015 = *(v1752 + 48);
            v1016 = v527;
            v1017 = v1593;
            sub_1E67612FC(v1725, v1593, &qword_1ED096E68);
            sub_1E67612FC(v1016, v1017 + v1015, &qword_1ED096E68);
            v1018 = v1760.f64[0];
            if ((*&v1760.f64[0])(v1017, 1, v541) == 1)
            {
              v1019 = (*&v1018)(v1017 + v1015, 1, v541);
              v1020 = v1663;
              if (v1019 == 1)
              {
                sub_1E6744A10(v1017, &qword_1ED096E68);
LABEL_276:
                v1168 = *(v1752 + 48);
                v1169 = v1571;
                sub_1E67612FC(v544, v1571, &qword_1ED096E68);
                v1762 = v1168;
                sub_1E67612FC(v1020, v1168 + v1169, &qword_1ED096E68);
                v1170 = v1760.f64[0];
                if ((*&v1760.f64[0])(v1169, 1, v541) == 1)
                {
                  sub_1E6744A10(v1020, &qword_1ED096E68);
                  sub_1E6744A10(v1641, &qword_1ED096E68);
                  sub_1E6744A10(v1649, &qword_1ED096E68);
                  sub_1E6744A10(v544, &qword_1ED096E68);
                  sub_1E6744A10(v1725, &qword_1ED096E68);
                  sub_1E6744A10(v1736, &qword_1ED096E68);
                  (v1761)(v1647, *&v1763);
                  if ((*&v1170)(v1762 + v1169, 1, v541) == 1)
                  {
                    sub_1E6744A10(v1169, &qword_1ED096E68);
                    v580 = v1755;
                    v581 = v1751;
                    v582 = v1764;
LABEL_347:
                    (*(v580 + 8))(v582, v581);
                    goto LABEL_425;
                  }

LABEL_316:
                  v1026 = v1169;
LABEL_317:
                  sub_1E6744A10(v1026, &qword_1ED098130);
                  (*(v1755 + 8))(v1764, v1751);
                  goto LABEL_381;
                }

                v1219 = v1562;
                sub_1E67612FC(v1169, v1562, &qword_1ED096E68);
                v1220 = (*&v1170)(v1762 + v1169, 1, v541);
                v1221 = v1750;
                v1222 = (v1750 + 8);
                if (v1220 == 1)
                {
                  sub_1E6744A10(v1663, &qword_1ED096E68);
                  sub_1E6744A10(v1641, &qword_1ED096E68);
                  sub_1E6744A10(v1649, &qword_1ED096E68);
                  sub_1E6744A10(v544, &qword_1ED096E68);
                  sub_1E6744A10(v1725, &qword_1ED096E68);
                  sub_1E6744A10(v1736, &qword_1ED096E68);
                  (v1761)(v1647, *&v1763);
                  (*v1222)(v1219, v541);
                  goto LABEL_316;
                }

                v1295 = v1660;
                (*(v1750 + 32))(v1660, v1762 + v1169, v541);
                sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848]);
                v1296 = sub_1E68B3190();
                v1297 = *(v1221 + 8);
                v1297(v1295, v541);
                sub_1E6744A10(v1663, &qword_1ED096E68);
                sub_1E6744A10(v1641, &qword_1ED096E68);
                sub_1E6744A10(v1649, &qword_1ED096E68);
                sub_1E6744A10(v544, &qword_1ED096E68);
                sub_1E6744A10(v1725, &qword_1ED096E68);
                sub_1E6744A10(v1736, &qword_1ED096E68);
                (v1761)(v1647, *&v1763);
                v1297(v1562, v541);
                sub_1E6744A10(v1169, &qword_1ED096E68);
                v580 = v1755;
                v581 = v1751;
                v582 = v1764;
                if (v1296)
                {
                  goto LABEL_347;
                }

                goto LABEL_364;
              }
            }

            else
            {
              v1081 = v1573;
              sub_1E67612FC(v1017, v1573, &qword_1ED096E68);
              v1082 = (*&v1018)(v1017 + v1015, 1, v541);
              v1083 = v1750;
              if (v1082 != 1)
              {
                v1164 = v1017 + v1015;
                v1165 = v1017;
                v1166 = v1660;
                (*(v1750 + 32))(v1660, v1164, v541);
                sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848]);
                LODWORD(v1762) = sub_1E68B3190();
                v1167 = *(v1083 + 8);
                v1167(v1166, v541);
                v1167(v1081, v541);
                sub_1E6744A10(v1165, &qword_1ED096E68);
                v1020 = v1663;
                v1084 = v1761;
                if (v1762)
                {
                  goto LABEL_276;
                }

LABEL_225:
                sub_1E6744A10(v1020, &qword_1ED096E68);
                sub_1E6744A10(v1641, &qword_1ED096E68);
                sub_1E6744A10(v1649, &qword_1ED096E68);
                sub_1E6744A10(v544, &qword_1ED096E68);
                sub_1E6744A10(v1725, &qword_1ED096E68);
                sub_1E6744A10(v1736, &qword_1ED096E68);
                v1084(v1647, *&v1763);
                goto LABEL_379;
              }

              (*(v1750 + 8))(v1081, v541);
              v1020 = v1663;
            }

            sub_1E6744A10(v1017, &qword_1ED098130);
            v1084 = v1761;
            goto LABEL_225;
          }

LABEL_132:
          sub_1E6744A10(v1663, &qword_1ED096E68);
          sub_1E6744A10(v527, &qword_1ED096E68);
          sub_1E6744A10(v1649, &qword_1ED096E68);
          sub_1E6744A10(v544, &qword_1ED096E68);
          sub_1E6744A10(v1725, &qword_1ED096E68);
          sub_1E6744A10(v537, &qword_1ED096E68);
          (v1761)(v1647, *&v1763);
          goto LABEL_156;
        }

        (*(v539 + 8))(v981, v541);
        v545 = v983;
        v544 = v1688;
      }

      sub_1E6744A10(v538, &qword_1ED098130);
      goto LABEL_132;
    case 5u:
      v727 = v1679;
      v473 = v1764;
      v766 = (v453)(v1679, v1764, v411);
      v767 = v411;
      MEMORY[0x1EEE9AC00](v766);
      strcpy(&v1517 - 48, "artwork caption displayStyle layout title ");
      v730 = *&v1763;
      v1813.f64[0] = v1763;
      v1813.f64[1] = v1759.f64[0];
      *&v1814.f64[0] = &type metadata for DynamicBrickDisplayStyle;
      *&v1814.f64[1] = &type metadata for DynamicBrickViewLayout;
      v1815.f64[0] = v1759.f64[0];
      v768 = swift_getTupleTypeMetadata();
      v769 = v768[16];
      LODWORD(v1760.f64[0]) = v727[v769];
      v733 = v768[12];
      v770 = v768[20];
      v772 = *&v727[v770];
      v771 = *&v727[v770 + 8];
      v737 = v768[24];
      v773 = v1761;
      v1751 = v767;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_59;
      }

      LODWORD(v1759.f64[0]) = v773[v769];
      v775 = *&v773[v770];
      v774 = *&v773[v770 + 8];
      v776 = v1762;
      v777 = v1627;
      (v1762[4])(v1627, v773, v730);
      sub_1E6761420(&v727[v733], v1723, &qword_1ED096E68);
      sub_1E6761420(&v727[v737], v1707, &qword_1ED096E68);
      v778 = &v773[v733];
      v779 = v777;
      v780 = v1623;
      sub_1E6761420(v778, v1623, &qword_1ED096E68);
      v781 = &v773[v737];
      v782 = v1661;
      sub_1E6761420(v781, v1661, &qword_1ED096E68);
      v783 = sub_1E68B3190();
      v786 = v776[1];
      v785 = v776 + 1;
      v784 = v786;
      (v786)(v727, v730);
      if ((v783 & 1) == 0)
      {
        sub_1E6744A10(v782, &qword_1ED096E68);
        sub_1E6744A10(v780, &qword_1ED096E68);
        sub_1E6744A10(v1707, &qword_1ED096E68);
        sub_1E6744A10(v1723, &qword_1ED096E68);
        v960 = v779;
        v972 = v730;
        goto LABEL_378;
      }

      v1761 = v784;
      v1762 = v785;
      v787 = *(v1752 + 48);
      v788 = v1723;
      v789 = v1610;
      sub_1E67612FC(v1723, v1610, &qword_1ED096E68);
      sub_1E67612FC(v780, v789 + v787, &qword_1ED096E68);
      v790 = v1750;
      v791 = *(v1750 + 48);
      v792 = v1748;
      if (v791(v789, 1, v1748) == 1)
      {
        if (v791(v789 + v787, 1, v792) == 1)
        {
          sub_1E6744A10(v789, &qword_1ED096E68);
          v793 = *&v1763;
          goto LABEL_196;
        }
      }

      else
      {
        v1000 = v1598;
        sub_1E67612FC(v789, v1598, &qword_1ED096E68);
        if (v791(v789 + v787, 1, v792) != 1)
        {
          v1064 = v1660;
          (*(v790 + 32))(v1660, v789 + v787, v792);
          sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848]);
          LODWORD(v1758.f64[0]) = sub_1E68B3190();
          v1065 = *(v790 + 8);
          v1066 = v1064;
          v780 = v1623;
          v788 = v1723;
          v1065(v1066, v792);
          v1065(v1000, v792);
          sub_1E6744A10(v789, &qword_1ED096E68);
          v793 = *&v1763;
          v779 = v1627;
          if (LOBYTE(v1758.f64[0]))
          {
LABEL_196:
            v1067 = v1707;
            if (LODWORD(v1760.f64[0]) == LODWORD(v1759.f64[0]) && v772 == v775 && v771 == v774)
            {
              v1068 = *(v1752 + 48);
              v1069 = v1575;
              sub_1E67612FC(v1707, v1575, &qword_1ED096E68);
              v1070 = v1661;
              sub_1E67612FC(v1661, v1069 + v1068, &qword_1ED096E68);
              v1071 = v1748;
              if (v791(v1069, 1, v1748) == 1)
              {
                sub_1E6744A10(v1070, &qword_1ED096E68);
                sub_1E6744A10(v1623, &qword_1ED096E68);
                sub_1E6744A10(v1707, &qword_1ED096E68);
                sub_1E6744A10(v1723, &qword_1ED096E68);
                (v1761)(v779, v793);
                v1069 = v1575;
                if (v791(v1575 + v1068, 1, v1071) == 1)
                {
                  sub_1E6744A10(v1069, &qword_1ED096E68);
                  goto LABEL_202;
                }
              }

              else
              {
                v1265 = v1548;
                sub_1E67612FC(v1069, v1548, &qword_1ED096E68);
                if (v791(v1069 + v1068, 1, v1071) != 1)
                {
                  v1337 = v1069;
                  v1338 = v1750;
                  v1339 = v1337 + v1068;
                  v1340 = v1337;
                  v1341 = v1660;
                  (*(v1750 + 32))(v1660, v1339, v1071);
                  sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848]);
                  LODWORD(v1760.f64[0]) = sub_1E68B3190();
                  v1342 = *(v1338 + 8);
                  v1342(v1341, v1071);
                  sub_1E6744A10(v1661, &qword_1ED096E68);
                  sub_1E6744A10(v1623, &qword_1ED096E68);
                  sub_1E6744A10(v1707, &qword_1ED096E68);
                  sub_1E6744A10(v1723, &qword_1ED096E68);
                  (v1761)(v779, v793);
                  v1342(v1265, v1071);
                  sub_1E6744A10(v1340, &qword_1ED096E68);
                  v1072 = v1755;
                  if (LOBYTE(v1760.f64[0]))
                  {
                    goto LABEL_402;
                  }

                  goto LABEL_380;
                }

                sub_1E6744A10(v1661, &qword_1ED096E68);
                sub_1E6744A10(v1623, &qword_1ED096E68);
                sub_1E6744A10(v1707, &qword_1ED096E68);
                sub_1E6744A10(v1723, &qword_1ED096E68);
                (v1761)(v779, v793);
                (*(v1750 + 8))(v1265, v1071);
              }

              v971 = &qword_1ED098130;
              v970 = v1069;
LABEL_117:
              sub_1E6744A10(v970, v971);
              goto LABEL_379;
            }

            sub_1E6744A10(v1661, &qword_1ED096E68);
            sub_1E6744A10(v780, &qword_1ED096E68);
            v1001 = v1067;
LABEL_204:
            sub_1E6744A10(v1001, &qword_1ED096E68);
            sub_1E6744A10(v788, &qword_1ED096E68);
            (v1761)(v779, v793);
            goto LABEL_379;
          }

LABEL_152:
          sub_1E6744A10(v1661, &qword_1ED096E68);
          sub_1E6744A10(v780, &qword_1ED096E68);
          v1001 = v1707;
          goto LABEL_204;
        }

        (*(v790 + 8))(v1000, v792);
        v779 = v1627;
      }

      sub_1E6744A10(v789, &qword_1ED098130);
      v793 = *&v1763;
      goto LABEL_152;
    case 6u:
      v832 = v1676;
      v473 = v1764;
      v833 = (v453)(v1676, v1764, v411);
      v835 = *v832;
      v834 = v832[1];
      v836 = v832[2];
      MEMORY[0x1EEE9AC00](v833);
      strcpy(&v1517 - 48, "layout artwork title subtitle ");
      *&v1813.f64[0] = &type metadata for MonogramVerticalStackViewLayout;
      v673 = *&v1763;
      v1813.f64[1] = v1763;
      v1814.f64[0] = v1759.f64[0];
      v1814.f64[1] = v1759.f64[0];
      v837 = swift_getTupleTypeMetadata();
      v838 = v837[12];
      v839 = v837[16];
      v840 = v837[20];
      v841 = v1761;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        sub_1E6744A10(v832 + v840, &qword_1ED096E68);
        sub_1E6744A10(v832 + v839, &qword_1ED096E68);
        v929 = v1762[1];
        v930 = v832 + v838;
        goto LABEL_98;
      }

      v1751 = v411;
      v843 = *v841;
      v842 = v841[1];
      v844 = v841[2];
      v845 = v1762[4];
      (v845)(v1730, v832 + v838, v673);
      sub_1E6761420(v832 + v839, v1732, &qword_1ED096E68);
      sub_1E6761420(v832 + v840, v1708, &qword_1ED096E68);
      (v845)(v1729, v841 + v838, v673);
      v846 = v1622;
      sub_1E6761420(v841 + v839, v1622, &qword_1ED096E68);
      v847 = v1640;
      sub_1E6761420(v841 + v840, v1640, &qword_1ED096E68);
      if (v835 != v843 || v834 != v842 || v836 != v844)
      {
        sub_1E6744A10(v847, &qword_1ED096E68);
        sub_1E6744A10(v846, &qword_1ED096E68);
        v973 = v1762[1];
        v974 = *&v1763;
        v973(v1729, *&v1763);
        sub_1E6744A10(v1708, &qword_1ED096E68);
        sub_1E6744A10(v1732, &qword_1ED096E68);
        v975 = v1730;
        goto LABEL_123;
      }

      v848 = v1730;
      v849 = v1729;
      v850 = *&v1763;
      v851 = sub_1E68B3190();
      v852 = v1751;
      v853 = v1764;
      if ((v851 & 1) == 0)
      {
        sub_1E6744A10(v847, &qword_1ED096E68);
        sub_1E6744A10(v846, &qword_1ED096E68);
        v1003 = v1762[1];
        v1003(v849, v850);
        sub_1E6744A10(v1708, &qword_1ED096E68);
        sub_1E6744A10(v1732, &qword_1ED096E68);
        v1003(v848, v850);
        (*(v1755 + 8))(v853, v852);
        goto LABEL_381;
      }

      v854 = *(v1752 + 48);
      v855 = v1601;
      sub_1E67612FC(v1732, v1601, &qword_1ED096E68);
      sub_1E67612FC(v846, v855 + v854, &qword_1ED096E68);
      v856 = v1750;
      v857 = *(v1750 + 48);
      v858 = v1748;
      if ((v857)(v855, 1, v1748) == 1)
      {
        if ((v857)(v855 + v854, 1, v858) == 1)
        {
          v1761 = v857;
          sub_1E6744A10(v855, &qword_1ED096E68);
          v859 = v858;
LABEL_258:
          *&v1129 = *(v1752 + 48);
          v1130 = v1708;
          v1131 = v1591;
          sub_1E67612FC(v1708, v1591, &qword_1ED096E68);
          v1760.f64[0] = v1129;
          v1132 = v1640;
          sub_1E67612FC(v1640, v1131 + *&v1129, &qword_1ED096E68);
          v1133 = v1761;
          v1134 = (v1761)(v1131, 1, v859);
          v1135 = *&v1763;
          if (v1134 == 1)
          {
            sub_1E6744A10(v1132, &qword_1ED096E68);
            sub_1E6744A10(v1622, &qword_1ED096E68);
            v1136 = v1762[1];
            v1136(v1729, v1135);
            sub_1E6744A10(v1130, &qword_1ED096E68);
            sub_1E6744A10(v1732, &qword_1ED096E68);
            v1136(v1730, v1135);
            v1131 = v1591;
            if (v1133(v1591 + *&v1760.f64[0], 1, v1748) == 1)
            {
              sub_1E6744A10(v1131, &qword_1ED096E68);
              (*(v1755 + 8))(v1764, v1751);
LABEL_425:
              v479 = 1;
              return v479 & 1;
            }

            goto LABEL_303;
          }

          v1209 = v1558;
          sub_1E67612FC(v1131, v1558, &qword_1ED096E68);
          v1210 = v1760.f64[0];
          if (v1133(v1131 + *&v1760.f64[0], 1, v859) == 1)
          {
            sub_1E6744A10(v1640, &qword_1ED096E68);
            sub_1E6744A10(v1622, &qword_1ED096E68);
            v1211 = v1762[1];
            v1212 = *&v1763;
            v1211(v1729, *&v1763);
            sub_1E6744A10(v1708, &qword_1ED096E68);
            sub_1E6744A10(v1732, &qword_1ED096E68);
            v1211(v1730, v1212);
            (*(v1750 + 8))(v1209, v859);
LABEL_303:
            sub_1E6744A10(v1131, &qword_1ED098130);
            (*(v1755 + 8))(v1764, v1751);
            goto LABEL_381;
          }

          v1266 = v1750;
          v1267 = v1660;
          (*(v1750 + 32))(v1660, v1131 + *&v1210, v859);
          sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848]);
          LODWORD(v1761) = sub_1E68B3190();
          v1268 = *(v1266 + 8);
          v1268(v1267, v859);
          sub_1E6744A10(v1640, &qword_1ED096E68);
          sub_1E6744A10(v1622, &qword_1ED096E68);
          v1269 = v1762[1];
          v1270 = *&v1763;
          v1269(v1729, *&v1763);
          sub_1E6744A10(v1708, &qword_1ED096E68);
          sub_1E6744A10(v1732, &qword_1ED096E68);
          v1269(v1730, v1270);
          v1268(v1209, v859);
          sub_1E6744A10(v1591, &qword_1ED096E68);
          v580 = v1755;
          v582 = v1764;
          v581 = v1751;
          if (v1761)
          {
            goto LABEL_347;
          }

LABEL_364:
          (*(v580 + 8))(v582, v581);
          goto LABEL_381;
        }
      }

      else
      {
        v1074 = v1582;
        sub_1E67612FC(v855, v1582, &qword_1ED096E68);
        if ((v857)(v855 + v854, 1, v858) != 1)
        {
          v1761 = v857;
          v1124 = v1660;
          (*(v856 + 32))(v1660, v855 + v854, v858);
          sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848]);
          v1125 = v855;
          v859 = v858;
          v1126 = sub_1E68B3190();
          v1127 = *(v856 + 8);
          v853 = v1764;
          v1127(v1124, v859);
          v1127(v1074, v859);
          v1128 = v1125;
          v846 = v1622;
          sub_1E6744A10(v1128, &qword_1ED096E68);
          if (v1126)
          {
            goto LABEL_258;
          }

LABEL_212:
          sub_1E6744A10(v1640, &qword_1ED096E68);
          sub_1E6744A10(v846, &qword_1ED096E68);
          v1075 = v1762[1];
          v1076 = *&v1763;
          v1075(v1729, *&v1763);
          sub_1E6744A10(v1708, &qword_1ED096E68);
          sub_1E6744A10(v1732, &qword_1ED096E68);
          v1075(v1730, v1076);
          (*(v1755 + 8))(v853, v1751);
          goto LABEL_381;
        }

        (*(v856 + 8))(v1074, v858);
      }

      sub_1E6744A10(v855, &qword_1ED098130);
      goto LABEL_212;
    case 7u:
      v727 = v1681;
      v473 = v1764;
      v728 = (v453)(v1681, v1764, v411);
      v729 = v411;
      MEMORY[0x1EEE9AC00](v728);
      strcpy(&v1517 - 48, "artwork caption displayStyle layout title ");
      v730 = *&v1763;
      v1813.f64[0] = v1763;
      v1813.f64[1] = v1759.f64[0];
      *&v1814.f64[0] = &type metadata for DynamicBrickDisplayStyle;
      *&v1814.f64[1] = &type metadata for DynamicBrickViewLayout;
      v1815.f64[0] = v1759.f64[0];
      v731 = swift_getTupleTypeMetadata();
      v732 = v731[16];
      LODWORD(v1760.f64[0]) = v727[v732];
      v733 = v731[12];
      v734 = v731[20];
      v736 = *&v727[v734];
      v735 = *&v727[v734 + 8];
      v737 = v731[24];
      v738 = v1761;
      v1751 = v729;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
LABEL_59:
        sub_1E6744A10(&v727[v737], &qword_1ED096E68);
        sub_1E6744A10(&v727[v733], &qword_1ED096E68);
        v1762[1](v727, v730);
        goto LABEL_102;
      }

      LODWORD(v1759.f64[0]) = v738[v732];
      v740 = *&v738[v734];
      v739 = *&v738[v734 + 8];
      v741 = v1762;
      v742 = v1646;
      (v1762[4])(v1646, v738, v730);
      sub_1E6761420(&v727[v733], v1724, &qword_1ED096E68);
      sub_1E6761420(&v727[v737], v1709, &qword_1ED096E68);
      v743 = &v738[v733];
      v744 = v1624;
      sub_1E6761420(v743, v1624, &qword_1ED096E68);
      v745 = &v738[v737];
      v746 = v742;
      v747 = v1662;
      sub_1E6761420(v745, v1662, &qword_1ED096E68);
      v748 = sub_1E68B3190();
      v751 = v741[1];
      v749 = v741 + 1;
      v750 = v751;
      (v751)(v727, v730);
      if ((v748 & 1) == 0)
      {
        sub_1E6744A10(v747, &qword_1ED096E68);
        sub_1E6744A10(v744, &qword_1ED096E68);
        sub_1E6744A10(v1709, &qword_1ED096E68);
        sub_1E6744A10(v1724, &qword_1ED096E68);
        (v750)(v746, v730);
        goto LABEL_379;
      }

      v1761 = v750;
      v1762 = v749;
      v752 = *(v1752 + 48);
      v753 = v1724;
      v754 = v1611;
      sub_1E67612FC(v1724, v1611, &qword_1ED096E68);
      sub_1E67612FC(v744, v754 + v752, &qword_1ED096E68);
      v755 = v1750;
      v756 = *(v1750 + 48);
      v757 = v1748;
      v758 = v756(v754, 1, v1748);
      v759 = v744;
      *&v1758.f64[0] = v756;
      if (v758 == 1)
      {
        v760 = v756(v754 + v752, 1, v757);
        v695 = v1764;
        if (v760 == 1)
        {
          sub_1E6744A10(v754, &qword_1ED096E68);
          v761 = *&v1763;
          v762 = v753;
          goto LABEL_184;
        }
      }

      else
      {
        v997 = v756;
        v998 = v1599;
        sub_1E67612FC(v754, v1599, &qword_1ED096E68);
        if (v997(v754 + v752, 1, v757) != 1)
        {
          v1053 = v1660;
          (*(v755 + 32))(v1660, v754 + v752, v757);
          sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848]);
          v1054 = sub_1E68B3190();
          v1055 = *(v755 + 8);
          v1056 = v1053;
          v759 = v1624;
          v762 = v1724;
          v1055(v1056, v757);
          v1055(v998, v757);
          sub_1E6744A10(v754, &qword_1ED096E68);
          v761 = *&v1763;
          v695 = v1764;
          if (v1054)
          {
LABEL_184:
            v1057 = v1709;
            if (LODWORD(v1760.f64[0]) == LODWORD(v1759.f64[0]) && v736 == v740 && v735 == v739)
            {
              v1058 = *(v1752 + 48);
              v1059 = v1577;
              sub_1E67612FC(v1709, v1577, &qword_1ED096E68);
              v1060 = v1662;
              sub_1E67612FC(v1662, v1059 + v1058, &qword_1ED096E68);
              v1061 = v1748;
              v1062 = v1758.f64[0];
              if ((*&v1758.f64[0])(v1059, 1, v1748) == 1)
              {
                sub_1E6744A10(v1060, &qword_1ED096E68);
                sub_1E6744A10(v1624, &qword_1ED096E68);
                sub_1E6744A10(v1709, &qword_1ED096E68);
                sub_1E6744A10(v1724, &qword_1ED096E68);
                (v1761)(v1646, v761);
                v1059 = v1577;
                if ((*&v1062)(v1577 + v1058, 1, v1061) == 1)
                {
                  sub_1E6744A10(v1059, &qword_1ED096E68);
                  v1063 = v1755;
LABEL_400:
                  (*(v1063 + 8))(v695, v1751);
                  goto LABEL_425;
                }
              }

              else
              {
                v1253 = v1549;
                sub_1E67612FC(v1059, v1549, &qword_1ED096E68);
                if ((*&v1062)(v1059 + v1058, 1, v1061) != 1)
                {
                  v1333 = v1059;
                  v1334 = v1750;
                  v1335 = v1660;
                  (*(v1750 + 32))(v1660, v1333 + v1058, v1061);
                  sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848]);
                  LODWORD(v1760.f64[0]) = sub_1E68B3190();
                  v1336 = *(v1334 + 8);
                  v1336(v1335, v1061);
                  sub_1E6744A10(v1662, &qword_1ED096E68);
                  sub_1E6744A10(v1624, &qword_1ED096E68);
                  sub_1E6744A10(v1709, &qword_1ED096E68);
                  sub_1E6744A10(v1724, &qword_1ED096E68);
                  (v1761)(v1646, v761);
                  v1336(v1253, v1061);
                  sub_1E6744A10(v1333, &qword_1ED096E68);
                  v1063 = v1755;
                  if (LOBYTE(v1760.f64[0]))
                  {
                    goto LABEL_400;
                  }

                  goto LABEL_194;
                }

                sub_1E6744A10(v1662, &qword_1ED096E68);
                sub_1E6744A10(v1624, &qword_1ED096E68);
                sub_1E6744A10(v1709, &qword_1ED096E68);
                sub_1E6744A10(v1724, &qword_1ED096E68);
                (v1761)(v1646, v761);
                (*(v1750 + 8))(v1253, v1061);
              }

              sub_1E6744A10(v1059, &qword_1ED098130);
LABEL_193:
              v1063 = v1755;
LABEL_194:
              (*(v1063 + 8))(v695, v1751);
              goto LABEL_381;
            }

            sub_1E6744A10(v1662, &qword_1ED096E68);
            sub_1E6744A10(v759, &qword_1ED096E68);
            v999 = v1057;
LABEL_191:
            sub_1E6744A10(v999, &qword_1ED096E68);
            sub_1E6744A10(v762, &qword_1ED096E68);
            v991 = v1646;
            v992 = v761;
            goto LABEL_192;
          }

LABEL_148:
          sub_1E6744A10(v1662, &qword_1ED096E68);
          sub_1E6744A10(v759, &qword_1ED096E68);
          v999 = v1709;
          goto LABEL_191;
        }

        (*(v755 + 8))(v998, v757);
        v695 = v1764;
      }

      sub_1E6744A10(v754, &qword_1ED098130);
      v761 = *&v1763;
      v762 = v753;
      goto LABEL_148;
    case 8u:
      v794 = v1684;
      v473 = v1764;
      v896 = (v453)(v1684, v1764, v411);
      v1819.f64[0] = v794[6].f64[0];
      v897 = v794[5];
      v1817 = v794[4];
      v1818 = v897;
      v898 = v794[1];
      v1813 = *v794;
      v1814 = v898;
      v899 = v794[2];
      v1816 = v794[3];
      v1815 = v899;
      MEMORY[0x1EEE9AC00](v896);
      strcpy(&v1517 - 48, "layout artwork title subtitle caption ");
      *&v1797.f64[0] = &type metadata for StandardCardViewLayout;
      v800 = *&v1763;
      v1797.f64[1] = v1763;
      v1798.f64[0] = v1759.f64[0];
      v1798.f64[1] = v1759.f64[0];
      v1799.f64[0] = v1759.f64[0];
      v900 = v411;
      v901 = swift_getTupleTypeMetadata();
      v803 = v901[12];
      v804 = v901[16];
      *&v1760.f64[0] = v901[20];
      v805 = v901[24];
      v902 = v1761;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_86;
      }

      v1751 = v900;
      v1831 = *(v902 + 12);
      v903 = *(v902 + 4);
      v1830[5] = *(v902 + 5);
      v1830[4] = v903;
      v904 = *(v902 + 1);
      v1830[0] = *v902;
      v1830[1] = v904;
      v905 = *(v902 + 2);
      v1830[3] = *(v902 + 3);
      v1830[2] = v905;
      v1756 = v901[12];
      *&v1757.f64[0] = v901[16];
      *&v1758.f64[0] = v901[20];
      *&v1759.f64[0] = v901[24];
      v906 = v1762[4];
      (v906)(v1744, v794 + v803, v800);
      sub_1E6761420(v794 + v804, v1733, &qword_1ED096E68);
      sub_1E6761420(v794 + *&v1760.f64[0], v1715, &qword_1ED096E68);
      v907 = v794 + v805;
      v908 = v1636;
      sub_1E6761420(v907, v1636, &qword_1ED096E68);
      v909 = v1621;
      (v906)(v1621, v1756 + v902, v800);
      v910 = v1672;
      sub_1E6761420(&v902[*&v1757.f64[0]], v1672, &qword_1ED096E68);
      v911 = v1666;
      sub_1E6761420(&v902[*&v1758.f64[0]], v1666, &qword_1ED096E68);
      v912 = v1634;
      sub_1E6761420(&v902[*&v1759.f64[0]], v1634, &qword_1ED096E68);
      v1801 = v1817;
      v1802 = v1818;
      v1803.f64[0] = v1819.f64[0];
      v1797 = v1813;
      v1798 = v1814;
      v1800 = v1816;
      v1799 = v1815;
      if (!_s15FitnessCanvasUI22StandardCardViewLayoutV2eeoiySbAC_ACtFZ_0(&v1797, v1830))
      {
        sub_1E6744A10(v912, &qword_1ED096E68);
        sub_1E6744A10(v911, &qword_1ED096E68);
        sub_1E6744A10(v910, &qword_1ED096E68);
        v973 = v1762[1];
        v973(v909, v800);
        sub_1E6744A10(v908, &qword_1ED096E68);
        sub_1E6744A10(v1715, &qword_1ED096E68);
        sub_1E6744A10(v1733, &qword_1ED096E68);
        v975 = v1744;
        goto LABEL_125;
      }

      v913 = v1733;
      v914 = sub_1E68B3190();
      v724 = v1764;
      v915 = v909;
      if ((v914 & 1) == 0)
      {
        sub_1E6744A10(v912, &qword_1ED096E68);
        sub_1E6744A10(v1666, &qword_1ED096E68);
        sub_1E6744A10(v1672, &qword_1ED096E68);
        v1005 = v1762[1];
        v1005(v909, v800);
        sub_1E6744A10(v908, &qword_1ED096E68);
        sub_1E6744A10(v1715, &qword_1ED096E68);
        sub_1E6744A10(v913, &qword_1ED096E68);
        v1005(v1744, v800);
        goto LABEL_158;
      }

      v916 = *(v1752 + 48);
      v917 = v1602;
      sub_1E67612FC(v913, v1602, &qword_1ED096E68);
      sub_1E67612FC(v1672, v917 + v916, &qword_1ED096E68);
      v918 = v1750;
      v919 = *(v1750 + 48);
      v920 = v1748;
      if ((v919)(v917, 1, v1748) == 1)
      {
        v1761 = v919;
        v921 = (v919)(v917 + v916, 1, v920);
        v922 = v1744;
        v923 = v915;
        if (v921 == 1)
        {
          sub_1E6744A10(v917, &qword_1ED096E68);
          v830 = v920;
          v924 = v1672;
          goto LABEL_266;
        }
      }

      else
      {
        v1080 = v1583;
        sub_1E67612FC(v917, v1583, &qword_1ED096E68);
        if ((v919)(v917 + v916, 1, v920) != 1)
        {
          v1761 = v919;
          v1147 = v1080;
          v1148 = v1660;
          (*(v918 + 32))(v1660, v917 + v916, v920);
          sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848]);
          v1149 = v917;
          v830 = v920;
          v1150 = sub_1E68B3190();
          v1151 = *(v918 + 8);
          v1151(v1148, v830);
          v1152 = v1147;
          v923 = v1621;
          v1151(v1152, v830);
          v1153 = v1149;
          v924 = v1672;
          sub_1E6744A10(v1153, &qword_1ED096E68);
          v922 = v1744;
          v800 = *&v1763;
          if (v1150)
          {
LABEL_266:
            v1154 = *(v1752 + 48);
            v1155 = v1576;
            sub_1E67612FC(v1715, v1576, &qword_1ED096E68);
            sub_1E67612FC(v1666, v1155 + v1154, &qword_1ED096E68);
            v1156 = v1761;
            v1157 = v830;
            if ((v1761)(v1155, 1, v830) == 1)
            {
              if (v1156(v1155 + v1154, 1, v830) == 1)
              {
                v825 = v1156;
                sub_1E6744A10(v1155, &qword_1ED096E68);
LABEL_353:
                v1286 = *(v1752 + 48);
                v1287 = v1636;
                v1259 = v1564;
                sub_1E67612FC(v1636, v1564, &qword_1ED096E68);
                v1260 = v1286;
                v1288 = v1259 + v1286;
                v1289 = v1634;
                sub_1E67612FC(v1634, v1288, &qword_1ED096E68);
                if (v825(v1259, 1, v830) == 1)
                {
                  sub_1E6744A10(v1289, &qword_1ED096E68);
                  sub_1E6744A10(v1666, &qword_1ED096E68);
                  sub_1E6744A10(v1672, &qword_1ED096E68);
                  v1290 = v1762[1];
                  v1291 = *&v1763;
                  v1290(v1621, *&v1763);
                  sub_1E6744A10(v1287, &qword_1ED096E68);
                  sub_1E6744A10(v1715, &qword_1ED096E68);
                  sub_1E6744A10(v1733, &qword_1ED096E68);
                  v1290(v1744, v1291);
                  v1259 = v1564;
LABEL_355:
                  if (v825(v1259 + v1260, 1, v1748) == 1)
                  {
                    v1281 = &qword_1ED096E68;
                    v1282 = v1259;
                    goto LABEL_357;
                  }

                  goto LABEL_391;
                }

                v1312 = v1539;
                sub_1E67612FC(v1259, v1539, &qword_1ED096E68);
                if (v825(v1259 + v1260, 1, v830) == 1)
                {
                  sub_1E6744A10(v1634, &qword_1ED096E68);
                  sub_1E6744A10(v1666, &qword_1ED096E68);
                  sub_1E6744A10(v1672, &qword_1ED096E68);
                  v1313 = v1762[1];
                  v1314 = *&v1763;
                  v1313(v1621, *&v1763);
                  sub_1E6744A10(v1636, &qword_1ED096E68);
                  sub_1E6744A10(v1715, &qword_1ED096E68);
                  sub_1E6744A10(v1733, &qword_1ED096E68);
                  v1315 = v1744;
                  goto LABEL_390;
                }

                v1388 = v1750;
                v1389 = v1660;
                (*(v1750 + 32))(v1660, v1259 + v1260, v830);
                sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848]);
                LODWORD(v1761) = sub_1E68B3190();
                v1390 = *(v1388 + 8);
                v1390(v1389, v830);
                sub_1E6744A10(v1634, &qword_1ED096E68);
                sub_1E6744A10(v1666, &qword_1ED096E68);
                sub_1E6744A10(v1672, &qword_1ED096E68);
                v1391 = v1762[1];
                v1392 = *&v1763;
                v1391(v1621, *&v1763);
                sub_1E6744A10(v1636, &qword_1ED096E68);
                sub_1E6744A10(v1715, &qword_1ED096E68);
                sub_1E6744A10(v1733, &qword_1ED096E68);
                v1391(v1744, v1392);
                v1390(v1312, v830);
                v1383 = v1564;
                goto LABEL_422;
              }
            }

            else
            {
              v1216 = v1568;
              sub_1E67612FC(v1155, v1568, &qword_1ED096E68);
              v825 = v1156;
              v1217 = v1156(v1155 + v1154, 1, v1157);
              v1218 = v1750;
              if (v1217 != 1)
              {
                v1283 = v1660;
                (*(v1750 + 32))(v1660, v1155 + v1154, v1157);
                sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848]);
                v830 = v1157;
                v1284 = sub_1E68B3190();
                v1285 = *(v1218 + 8);
                v1285(v1283, v830);
                v1285(v1568, v830);
                sub_1E6744A10(v1155, &qword_1ED096E68);
                if (v1284)
                {
                  goto LABEL_353;
                }

                goto LABEL_312;
              }

              (*(v1750 + 8))(v1216, v1157);
            }

            sub_1E6744A10(v1155, &qword_1ED098130);
LABEL_312:
            sub_1E6744A10(v1634, &qword_1ED096E68);
            sub_1E6744A10(v1666, &qword_1ED096E68);
            sub_1E6744A10(v924, &qword_1ED096E68);
            v973 = v1762[1];
            v1078 = *&v1763;
            v973(v1621, *&v1763);
            sub_1E6744A10(v1636, &qword_1ED096E68);
            sub_1E6744A10(v1715, &qword_1ED096E68);
            sub_1E6744A10(v1733, &qword_1ED096E68);
            v975 = v1744;
LABEL_313:
            v976 = v1078;
            goto LABEL_126;
          }

LABEL_220:
          sub_1E6744A10(v1634, &qword_1ED096E68);
          sub_1E6744A10(v1666, &qword_1ED096E68);
          sub_1E6744A10(v924, &qword_1ED096E68);
          v973 = v1762[1];
          v973(v923, v800);
          sub_1E6744A10(v1636, &qword_1ED096E68);
          sub_1E6744A10(v1715, &qword_1ED096E68);
          sub_1E6744A10(v1733, &qword_1ED096E68);
          v975 = v922;
          goto LABEL_221;
        }

        v923 = v915;
        (*(v918 + 8))(v1080, v920);
        v922 = v1744;
        v800 = *&v1763;
      }

      sub_1E6744A10(v917, &qword_1ED098130);
      v924 = v1672;
      goto LABEL_220;
    case 9u:
      v583 = v1687;
      v473 = v1764;
      v584 = (v453)(v1687, v1764, v411);
      v585 = v583[7];
      v1819 = v583[6];
      v1820 = v585;
      v586 = v583[9];
      v1821 = v583[8];
      v1822 = v586;
      v587 = v583[3];
      v1815 = v583[2];
      v1816 = v587;
      v588 = v583[5];
      v1817 = v583[4];
      v1818 = v588;
      v589 = v583[1];
      v1813 = *v583;
      v1814 = v589;
      MEMORY[0x1EEE9AC00](v584);
      strcpy(&v1517 - 80, "layout artwork title subtitle caption groupTitle accessoryView ");
      *&v1797.f64[0] = &type metadata for StandardHorizontalStackViewLayout;
      v1797.f64[1] = v1763;
      v1798.f64[0] = v1759.f64[0];
      v1798.f64[1] = v1759.f64[0];
      v1799.f64[0] = v1759.f64[0];
      v1799.f64[1] = v1759.f64[0];
      v1800.f64[0] = v1758.f64[0];
      v590 = v411;
      v591 = swift_getTupleTypeMetadata();
      v592 = v591[12];
      v593 = v591[16];
      v594 = v591[20];
      *&v1760.f64[0] = v591[24];
      *&v1759.f64[0] = v591[28];
      v595 = v591[32];
      v596 = v1761;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        (v1754[1])(v595 + v583, *&v1758.f64[0]);
        sub_1E6744A10(v583 + *&v1759.f64[0], &qword_1ED096E68);
        sub_1E6744A10(v583 + *&v1760.f64[0], &qword_1ED096E68);
        sub_1E6744A10(v583 + v594, &qword_1ED096E68);
        sub_1E6744A10(v583 + v593, &qword_1ED096E68);
        v1762[1](v583 + v592, *&v1763);
        goto LABEL_102;
      }

      v1751 = v590;
      v597 = v596[4];
      v1802 = v596[5];
      v1801 = v597;
      v598 = v596[8];
      v1806 = v596[9];
      v1805 = v598;
      v599 = v596[6];
      v1804 = v596[7];
      v1803 = v599;
      v600 = v596[2];
      v1800 = v596[3];
      v1799 = v600;
      v601 = v596[1];
      v1797 = *v596;
      v1798 = v601;
      v1743 = v591[12];
      v1744 = v591[16];
      v1746 = v591[20];
      v1747 = v591[24];
      v1756 = v591[28];
      *&v1757.f64[0] = v591[32];
      v602 = v1762[4];
      v1742 = v595;
      v603 = *&v1763;
      v602(v1741, v583 + v592);
      sub_1E6761420(v583 + v593, v1726, &qword_1ED096E68);
      sub_1E6761420(v583 + v594, v1718, &qword_1ED096E68);
      sub_1E6761420(v583 + *&v1760.f64[0], v1706, &qword_1ED096E68);
      sub_1E6761420(v583 + *&v1759.f64[0], v1701, &qword_1ED096E68);
      v604 = v1754[4];
      v605 = v1742 + v583;
      v606 = v1758.f64[0];
      v604(v1697, v605, *&v1758.f64[0]);
      (v602)(v1739, &v1743[v596], v603);
      v607 = v1630;
      sub_1E6761420(&v1744[v596], v1630, &qword_1ED096E68);
      v608 = v1670;
      sub_1E6761420(v596 + v1746, v1670, &qword_1ED096E68);
      sub_1E6761420(v596 + v1747, v1700, &qword_1ED096E68);
      v609 = v1659;
      sub_1E6761420(v1756 + v596, v1659, &qword_1ED096E68);
      v610 = v596 + *&v1757.f64[0];
      v611 = v1631;
      v604(v1631, v610, *&v606);
      v1787 = v1819;
      v1788 = v1820;
      v1789 = v1821;
      v1790 = v1822;
      v1783 = v1815;
      v1784 = v1816;
      v1785 = v1817;
      v1786 = v1818;
      v1781 = v1813;
      v1782 = v1814;
      v1771 = v1803;
      v1772 = v1804;
      v1773 = v1805;
      v1774 = v1806;
      v1767 = v1799;
      v1768 = v1800;
      v1769 = v1801;
      v1770 = v1802;
      v1765 = v1797;
      v1766 = v1798;
      v612 = _s15FitnessCanvasUI33StandardHorizontalStackViewLayoutV2eeoiySbAC_ACtFZ_0(&v1781, &v1765);
      v613 = *&v1763;
      if (!v612)
      {
        v962 = v607;
        v963 = v1754[1];
        v963(v611, *&v606);
        sub_1E6744A10(v609, &qword_1ED096E68);
        sub_1E6744A10(v1700, &qword_1ED096E68);
        sub_1E6744A10(v608, &qword_1ED096E68);
        sub_1E6744A10(v962, &qword_1ED096E68);
        v964 = v1762[1];
        v964(v1739, v613);
        v963(v1697, *&v606);
        sub_1E6744A10(v1701, &qword_1ED096E68);
        sub_1E6744A10(v1706, &qword_1ED096E68);
        sub_1E6744A10(v1718, &qword_1ED096E68);
        sub_1E6744A10(v1726, &qword_1ED096E68);
        v964(v1741, v613);
        goto LABEL_379;
      }

      if ((sub_1E68B3190() & 1) == 0)
      {
        v985 = v607;
        v986 = v1754[1];
        v986(v611, *&v606);
        sub_1E6744A10(v1659, &qword_1ED096E68);
        sub_1E6744A10(v1700, &qword_1ED096E68);
        sub_1E6744A10(v1670, &qword_1ED096E68);
        sub_1E6744A10(v985, &qword_1ED096E68);
        v987 = v1762[1];
        v987(v1739, v613);
        v986(v1697, *&v606);
LABEL_135:
        sub_1E6744A10(v1701, &qword_1ED096E68);
        sub_1E6744A10(v1706, &qword_1ED096E68);
        sub_1E6744A10(v1718, &qword_1ED096E68);
        v988 = v1726;
LABEL_284:
        sub_1E6744A10(v988, &qword_1ED096E68);
        v987(v1741, v613);
        goto LABEL_379;
      }

      v614 = *(v1752 + 48);
      v615 = v1726;
      v616 = v1605;
      sub_1E67612FC(v1726, v1605, &qword_1ED096E68);
      sub_1E67612FC(v607, v616 + v614, &qword_1ED096E68);
      v617 = v1750;
      v618 = *(v1750 + 48);
      v619 = v1748;
      v620 = (v618)(v616, 1, v1748);
      v1761 = v618;
      if (v620 == 1)
      {
        v621 = (v618)(v616 + v614, 1, v619);
        v622 = v1607;
        if (v621 == 1)
        {
          sub_1E6744A10(v616, &qword_1ED096E68);
          v623 = v619;
LABEL_242:
          v1109 = *(v1752 + 48);
          sub_1E67612FC(v1718, v622, &qword_1ED096E68);
          sub_1E67612FC(v1670, v622 + v1109, &qword_1ED096E68);
          v1110 = v1761;
          if ((v1761)(v622, 1, v623) == 1)
          {
            v1111 = v1110;
            if (v1110(v622 + v1109, 1, v623) == 1)
            {
              sub_1E6744A10(v622, &qword_1ED096E68);
              goto LABEL_330;
            }

            goto LABEL_281;
          }

          v1171 = v1559;
          sub_1E67612FC(v622, v1559, &qword_1ED096E68);
          v1111 = v1110;
          v1172 = v1110(v622 + v1109, 1, v623);
          v1173 = v1750;
          if (v1172 == 1)
          {
            (*(v1750 + 8))(v1171, v623);
            v615 = v1726;
LABEL_281:
            v1029 = v622;
            goto LABEL_282;
          }

          v1244 = v1660;
          (*(v1750 + 32))(v1660, v622 + v1109, v623);
          sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848]);
          v1245 = sub_1E68B3190();
          v1246 = *(v1173 + 8);
          v1246(v1244, v623);
          v1246(v1171, v623);
          sub_1E6744A10(v622, &qword_1ED096E68);
          v615 = v1726;
          if (v1245)
          {
LABEL_330:
            v1247 = *(v1752 + 48);
            v1248 = v1554;
            sub_1E67612FC(v1706, v1554, &qword_1ED096E68);
            v1249 = v1700;
            sub_1E67612FC(v1700, v1248 + v1247, &qword_1ED096E68);
            if (v1111(v1248, 1, v623) == 1)
            {
              if (v1111(v1248 + v1247, 1, v623) == 1)
              {
                sub_1E6744A10(v1248, &qword_1ED096E68);
                goto LABEL_408;
              }
            }

            else
            {
              v1298 = v1540;
              sub_1E67612FC(v1248, v1540, &qword_1ED096E68);
              v1299 = v1111(v1248 + v1247, 1, v623);
              v1300 = v1248;
              v1301 = v1750;
              if (v1299 != 1)
              {
                v1355 = v1300 + v1247;
                v1356 = v1660;
                (*(v1750 + 32))(v1660, v1355, v623);
                sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848]);
                v1357 = sub_1E68B3190();
                v1358 = *(v1301 + 8);
                v1358(v1356, v623);
                v1358(v1298, v623);
                sub_1E6744A10(v1300, &qword_1ED096E68);
                v1111 = v1761;
                if (v1357)
                {
LABEL_408:
                  v1359 = *(v1752 + 48);
                  v1360 = v1536;
                  sub_1E67612FC(v1701, v1536, &qword_1ED096E68);
                  sub_1E67612FC(v1659, v1360 + v1359, &qword_1ED096E68);
                  v1361 = v623;
                  if (v1111(v1360, 1, v623) == 1)
                  {
                    if (v1111(v1360 + v1359, 1, v623) == 1)
                    {
                      sub_1E6744A10(v1360, &qword_1ED096E68);
                      v1362 = *&v1758.f64[0];
                      goto LABEL_442;
                    }
                  }

                  else
                  {
                    v1397 = v1530;
                    sub_1E67612FC(v1360, v1530, &qword_1ED096E68);
                    if (v1111(v1360 + v1359, 1, v1361) != 1)
                    {
                      v1420 = v1750;
                      v1421 = v1360 + v1359;
                      v1422 = v1660;
                      (*(v1750 + 32))(v1660, v1421, v1361);
                      sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848]);
                      v1423 = v1361;
                      v1424 = sub_1E68B3190();
                      v1425 = *(v1420 + 8);
                      v1425(v1422, v1423);
                      v1425(v1397, v1423);
                      sub_1E6744A10(v1360, &qword_1ED096E68);
                      v1362 = *&v1758.f64[0];
                      v1398 = v1670;
                      if (v1424)
                      {
LABEL_442:
                        v1426 = *(v1589 + 48);
                        v1427 = v1754[2];
                        v1428 = v1533;
                        v1427(v1533, v1697, v1362);
                        v1427(&v1426[v1428], v1631, v1362);
                        v1429 = *(v1745 + 48);
                        if ((v1429)(v1428, 1, v1749) == 1)
                        {
                          v1430 = v1754 + 1;
                          v1431 = v1754[1];
                          v1431(v1631, v1362);
                          sub_1E6744A10(v1659, &qword_1ED096E68);
                          sub_1E6744A10(v1700, &qword_1ED096E68);
                          sub_1E6744A10(v1670, &qword_1ED096E68);
                          sub_1E6744A10(v1630, &qword_1ED096E68);
                          v1761 = v1429;
                          v1432 = v1762[1];
                          v1762 = v1426;
                          v1433 = *&v1763;
                          v1432(v1739, *&v1763);
                          v1754 = v1430;
                          v1431(v1697, v1362);
                          sub_1E6744A10(v1701, &qword_1ED096E68);
                          sub_1E6744A10(v1706, &qword_1ED096E68);
                          sub_1E6744A10(v1718, &qword_1ED096E68);
                          sub_1E6744A10(v1726, &qword_1ED096E68);
                          v1432(v1741, v1433);
                          v1434 = v1533;
                          if ((v1761)(v1762 + v1533, 1, v1749) == 1)
                          {
                            v1431(v1434, *&v1758.f64[0]);
                            v1435 = v1751;
LABEL_464:
                            (*(v1755 + 8))(v1764, v1435);
                            goto LABEL_425;
                          }
                        }

                        else
                        {
                          v1427(v1528, v1428, v1362);
                          if ((v1429)(&v1426[v1428], 1, v1749) != 1)
                          {
                            v1462 = v1745;
                            v1463 = v1545;
                            v1464 = v1749;
                            (*(v1745 + 32))(v1545, &v1426[v1533], v1749);
                            LODWORD(v1761) = sub_1E68B3190();
                            v1465 = *(v1462 + 8);
                            v1745 = v1462 + 8;
                            *&v1760.f64[0] = v1465;
                            v1465(v1463, v1464);
                            v1759.f64[0] = v1754[1];
                            (*&v1759.f64[0])(v1631, v1362);
                            sub_1E6744A10(v1659, &qword_1ED096E68);
                            sub_1E6744A10(v1700, &qword_1ED096E68);
                            sub_1E6744A10(v1670, &qword_1ED096E68);
                            sub_1E6744A10(v1630, &qword_1ED096E68);
                            v1466 = v1762[1];
                            v1467 = v1362;
                            v1468 = *&v1763;
                            v1466(v1739, *&v1763);
                            v1469 = v1362;
                            v1470 = v1759.f64[0];
                            (*&v1759.f64[0])(v1697, v1469);
                            sub_1E6744A10(v1701, &qword_1ED096E68);
                            sub_1E6744A10(v1706, &qword_1ED096E68);
                            sub_1E6744A10(v1718, &qword_1ED096E68);
                            sub_1E6744A10(v1726, &qword_1ED096E68);
                            v1466(v1741, v1468);
                            (*&v1760.f64[0])(v1528, v1464);
                            (*&v1470)(v1533, v1467);
                            v1435 = v1751;
                            if (v1761)
                            {
                              goto LABEL_464;
                            }

LABEL_458:
                            (*(v1755 + 8))(v1764, v1435);
                            goto LABEL_381;
                          }

                          v1452 = v1754[1];
                          v1452(v1631, v1362);
                          sub_1E6744A10(v1659, &qword_1ED096E68);
                          sub_1E6744A10(v1700, &qword_1ED096E68);
                          sub_1E6744A10(v1670, &qword_1ED096E68);
                          sub_1E6744A10(v1630, &qword_1ED096E68);
                          v1453 = v1762[1];
                          v1454 = *&v1763;
                          v1453(v1739, *&v1763);
                          v1452(v1697, v1362);
                          sub_1E6744A10(v1701, &qword_1ED096E68);
                          sub_1E6744A10(v1706, &qword_1ED096E68);
                          sub_1E6744A10(v1718, &qword_1ED096E68);
                          sub_1E6744A10(v1726, &qword_1ED096E68);
                          v1453(v1741, v1454);
                          (*(v1745 + 8))(v1528, v1749);
                          v1434 = v1533;
                        }

                        (*(v1555 + 8))(v1434, v1589);
                        v1435 = v1751;
                        goto LABEL_458;
                      }

                      goto LABEL_432;
                    }

                    (*(v1750 + 8))(v1397, v1361);
                  }

                  sub_1E6744A10(v1360, &qword_1ED098130);
                  v1362 = *&v1758.f64[0];
                  v1398 = v1670;
LABEL_432:
                  v1399 = v1754[1];
                  v1399(v1631, v1362);
                  sub_1E6744A10(v1659, &qword_1ED096E68);
                  sub_1E6744A10(v1700, &qword_1ED096E68);
                  sub_1E6744A10(v1398, &qword_1ED096E68);
                  sub_1E6744A10(v1630, &qword_1ED096E68);
                  v987 = v1762[1];
                  v613 = *&v1763;
                  v987(v1739, *&v1763);
                  v1399(v1697, v1362);
                  goto LABEL_135;
                }

                goto LABEL_368;
              }

              (*(v1750 + 8))(v1298, v623);
              v1248 = v1300;
            }

            sub_1E6744A10(v1248, &qword_1ED098130);
LABEL_368:
            v1302 = v1754[1];
            v1303 = v1758.f64[0];
            v1302(v1631, *&v1758.f64[0]);
            sub_1E6744A10(v1659, &qword_1ED096E68);
            sub_1E6744A10(v1249, &qword_1ED096E68);
            sub_1E6744A10(v1670, &qword_1ED096E68);
            sub_1E6744A10(v1630, &qword_1ED096E68);
            v987 = v1762[1];
            v613 = *&v1763;
            v987(v1739, *&v1763);
            v1302(v1697, *&v1303);
            goto LABEL_135;
          }

LABEL_283:
          v1174 = v1754[1];
          v1175 = v1758.f64[0];
          v1174(v1631, *&v1758.f64[0]);
          sub_1E6744A10(v1659, &qword_1ED096E68);
          sub_1E6744A10(v1700, &qword_1ED096E68);
          sub_1E6744A10(v1670, &qword_1ED096E68);
          sub_1E6744A10(v1630, &qword_1ED096E68);
          v987 = v1762[1];
          v613 = *&v1763;
          v987(v1739, *&v1763);
          v1174(v1697, *&v1175);
          sub_1E6744A10(v1701, &qword_1ED096E68);
          sub_1E6744A10(v1706, &qword_1ED096E68);
          sub_1E6744A10(v1718, &qword_1ED096E68);
          v988 = v615;
          goto LABEL_284;
        }
      }

      else
      {
        v1027 = v1585;
        sub_1E67612FC(v616, v1585, &qword_1ED096E68);
        v1028 = (v618)(v616 + v614, 1, v619);
        v622 = v1607;
        if (v1028 != 1)
        {
          v1105 = v1660;
          (*(v617 + 32))(v1660, v616 + v614, v619);
          sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848]);
          v1106 = v616;
          v623 = v619;
          v1107 = sub_1E68B3190();
          v1108 = *(v617 + 8);
          v1108(v1105, v623);
          v1108(v1027, v623);
          sub_1E6744A10(v1106, &qword_1ED096E68);
          v615 = v1726;
          if ((v1107 & 1) == 0)
          {
            goto LABEL_283;
          }

          goto LABEL_242;
        }

        (*(v617 + 8))(v1027, v619);
        v615 = v1726;
      }

      v1029 = v616;
LABEL_282:
      sub_1E6744A10(v1029, &qword_1ED098130);
      goto LABEL_283;
    case 0xAu:
      v860 = v1682;
      v861 = (v453)(v1682, v1764, v411);
      v862 = v411;
      v863 = *v860;
      v864 = v860[1];
      v865 = v860[2];
      v1760.f64[0] = v860[3];
      LODWORD(v1758.f64[0]) = *(v860 + 32);
      v866 = v860[5];
      v1754 = *(v860 + 6);
      MEMORY[0x1EEE9AC00](v861);
      strcpy(&v1517 - 48, "layout artwork title subtitle caption ");
      *&v1813.f64[0] = &type metadata for StandardVerticalStackViewLayout;
      v867 = *&v1763;
      v1813.f64[1] = v1763;
      v1814.f64[0] = v1759.f64[0];
      v1814.f64[1] = v1759.f64[0];
      v1815.f64[0] = v1759.f64[0];
      v868 = swift_getTupleTypeMetadata();
      v869 = v868[12];
      v870 = v868[16];
      v871 = v868[20];
      v872 = v868[24];
      v873 = v1761;
      v1751 = v862;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        sub_1E6744A10(v860 + v872, &qword_1ED096E68);
        sub_1E6744A10(v860 + v871, &qword_1ED096E68);
        sub_1E6744A10(v860 + v870, &qword_1ED096E68);
        v925 = v1762[1];
        v926 = v860 + v869;
        v927 = v867;
        goto LABEL_100;
      }

      LODWORD(v1759.f64[0]) = *v873;
      v874 = v873[1];
      v875 = v873[2];
      v1757.f64[0] = v873[3];
      LODWORD(v1756) = *(v873 + 32);
      v876 = v873[5];
      v1749 = *(v873 + 6);
      LODWORD(v1747) = v863;
      v1746 = v1762[4];
      (v1746)(v1719, v860 + v869, v867);
      v1745 = v869;
      sub_1E6761420(v860 + v870, v1712, &qword_1ED096E68);
      sub_1E6761420(v860 + v871, v1722, &qword_1ED096E68);
      sub_1E6761420(v860 + v872, v1704, &qword_1ED096E68);
      (v1746)(v1731, v873 + v1745, v867);
      v877 = v1628;
      sub_1E6761420(v873 + v870, v1628, &qword_1ED096E68);
      v878 = v873 + v871;
      v879 = v1643;
      sub_1E6761420(v878, v1643, &qword_1ED096E68);
      v880 = v873 + v872;
      v881 = v1635;
      sub_1E6761420(v880, v1635, &qword_1ED096E68);
      LOBYTE(v1813.f64[0]) = v1747;
      v1813.f64[1] = v864;
      v1814.f64[0] = v865;
      v1814.f64[1] = v1760.f64[0];
      LOBYTE(v1815.f64[0]) = LOBYTE(v1758.f64[0]);
      v1815.f64[1] = v866;
      *&v1816.f64[0] = v1754;
      LOBYTE(v1797.f64[0]) = LOBYTE(v1759.f64[0]);
      v1797.f64[1] = v874;
      v1798.f64[0] = v875;
      v1798.f64[1] = v1757.f64[0];
      LOBYTE(v1799.f64[0]) = v1756;
      v1799.f64[1] = v876;
      *&v1800.f64[0] = v1749;
      if (_s15FitnessCanvasUI31StandardVerticalStackViewLayoutV2eeoiySbAC_ACtFZ_0(v1813.f64, v1797.f64))
      {
        v882 = v1719;
        v883 = v1731;
        v884 = *&v1763;
        v885 = sub_1E68B3190();
        v545 = v1764;
        if ((v885 & 1) == 0)
        {
          sub_1E6744A10(v881, &qword_1ED096E68);
          sub_1E6744A10(v879, &qword_1ED096E68);
          sub_1E6744A10(v877, &qword_1ED096E68);
          v1004 = v1762[1];
          v1004(v883, v884);
          sub_1E6744A10(v1704, &qword_1ED096E68);
          sub_1E6744A10(v1722, &qword_1ED096E68);
          sub_1E6744A10(v1712, &qword_1ED096E68);
          v1004(v882, v884);
LABEL_156:
          (*(v1755 + 8))(v545, v1751);
          goto LABEL_381;
        }

        v886 = v877;
        v887 = *(v1752 + 48);
        v888 = v1712;
        v889 = v1603;
        sub_1E67612FC(v1712, v1603, &qword_1ED096E68);
        sub_1E67612FC(v886, v889 + v887, &qword_1ED096E68);
        v890 = v1750;
        v891 = *(v1750 + 48);
        v892 = v1748;
        v893 = v891(v889, 1, v1748);
        v894 = v1722;
        if (v893 == 1)
        {
          if (v891(v889 + v887, 1, v892) == 1)
          {
            sub_1E6744A10(v889, &qword_1ED096E68);
            v895 = v892;
            goto LABEL_262;
          }
        }

        else
        {
          v1077 = v1584;
          sub_1E67612FC(v889, v1584, &qword_1ED096E68);
          if (v891(v889 + v887, 1, v892) != 1)
          {
            v1137 = v1660;
            (*(v890 + 32))(v1660, v889 + v887, v892);
            sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848]);
            v1138 = v889;
            v895 = v892;
            v1139 = sub_1E68B3190();
            v1140 = *(v890 + 8);
            v1141 = v1137;
            v894 = v1722;
            v1140(v1141, v895);
            v1140(v1077, v895);
            v1142 = v1138;
            v888 = v1712;
            sub_1E6744A10(v1142, &qword_1ED096E68);
            v882 = v1719;
            if (v1139)
            {
LABEL_262:
              v1143 = *(v1752 + 48);
              v1144 = v894;
              v1145 = v1580;
              sub_1E67612FC(v1144, v1580, &qword_1ED096E68);
              sub_1E67612FC(v1643, v1145 + v1143, &qword_1ED096E68);
              v1146 = v895;
              if (v891(v1145, 1, v895) == 1)
              {
                if (v891(v1145 + v1143, 1, v895) == 1)
                {
                  sub_1E6744A10(v1145, &qword_1ED096E68);
                  goto LABEL_349;
                }
              }

              else
              {
                v1213 = v1569;
                sub_1E67612FC(v1145, v1569, &qword_1ED096E68);
                v1214 = v891(v1145 + v1143, 1, v1146);
                v1215 = v1750;
                if (v1214 != 1)
                {
                  v1271 = v1145 + v1143;
                  v1272 = v1660;
                  (*(v1750 + 32))(v1660, v1271, v1146);
                  sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848]);
                  v895 = v1146;
                  v1273 = sub_1E68B3190();
                  v1274 = *(v1215 + 8);
                  v1274(v1272, v895);
                  v1274(v1569, v895);
                  sub_1E6744A10(v1580, &qword_1ED096E68);
                  if (v1273)
                  {
LABEL_349:
                    v1275 = *(v1752 + 48);
                    v1276 = v1565;
                    sub_1E67612FC(v1704, v1565, &qword_1ED096E68);
                    v1761 = v1275;
                    v1277 = &v1275[v1276];
                    v1278 = v1635;
                    sub_1E67612FC(v1635, v1277, &qword_1ED096E68);
                    if (v891(v1276, 1, v895) == 1)
                    {
                      sub_1E6744A10(v1278, &qword_1ED096E68);
                      sub_1E6744A10(v1643, &qword_1ED096E68);
                      sub_1E6744A10(v1628, &qword_1ED096E68);
                      v1279 = v1762[1];
                      v1280 = *&v1763;
                      v1279(v1731, *&v1763);
                      sub_1E6744A10(v1704, &qword_1ED096E68);
                      sub_1E6744A10(v1722, &qword_1ED096E68);
                      sub_1E6744A10(v888, &qword_1ED096E68);
                      v1279(v882, v1280);
                      v1276 = v1565;
                      if (v891(&v1761[v1565], 1, v1748) == 1)
                      {
                        v1281 = &qword_1ED096E68;
                        v1282 = v1276;
LABEL_357:
                        sub_1E6744A10(v1282, v1281);
LABEL_358:
                        v1292 = v1755;
                        v1293 = v1764;
                        goto LABEL_424;
                      }
                    }

                    else
                    {
                      v1316 = v1551;
                      sub_1E67612FC(v1276, v1551, &qword_1ED096E68);
                      v1317 = v1761;
                      if (v891(&v1761[v1276], 1, v895) != 1)
                      {
                        v1384 = v1750;
                        v1385 = v1660;
                        (*(v1750 + 32))(v1660, &v1317[v1276], v895);
                        sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848]);
                        LODWORD(v1761) = sub_1E68B3190();
                        v1760.f64[0] = *(v1384 + 8);
                        (*&v1760.f64[0])(v1385, v895);
                        sub_1E6744A10(v1635, &qword_1ED096E68);
                        sub_1E6744A10(v1643, &qword_1ED096E68);
                        sub_1E6744A10(v1628, &qword_1ED096E68);
                        v1386 = v1762[1];
                        v1387 = *&v1763;
                        v1386(v1731, *&v1763);
                        sub_1E6744A10(v1704, &qword_1ED096E68);
                        sub_1E6744A10(v1722, &qword_1ED096E68);
                        sub_1E6744A10(v888, &qword_1ED096E68);
                        v1386(v882, v1387);
                        (*&v1760.f64[0])(v1551, v895);
                        v1383 = v1565;
LABEL_422:
                        v1393 = &qword_1ED096E68;
                        goto LABEL_423;
                      }

                      sub_1E6744A10(v1635, &qword_1ED096E68);
                      sub_1E6744A10(v1643, &qword_1ED096E68);
                      sub_1E6744A10(v1628, &qword_1ED096E68);
                      v1318 = v1762[1];
                      v1319 = *&v1763;
                      v1318(v1731, *&v1763);
                      sub_1E6744A10(v1704, &qword_1ED096E68);
                      sub_1E6744A10(v1722, &qword_1ED096E68);
                      sub_1E6744A10(v888, &qword_1ED096E68);
                      v1318(v882, v1319);
                      (*(v1750 + 8))(v1316, v1748);
                    }

                    v1320 = &qword_1ED098130;
                    v1321 = v1276;
LABEL_392:
                    sub_1E6744A10(v1321, v1320);
                    goto LABEL_393;
                  }

                  goto LABEL_307;
                }

                (*(v1750 + 8))(v1213, v1146);
              }

              sub_1E6744A10(v1145, &qword_1ED098130);
LABEL_307:
              sub_1E6744A10(v1635, &qword_1ED096E68);
              sub_1E6744A10(v1643, &qword_1ED096E68);
              sub_1E6744A10(v1628, &qword_1ED096E68);
              v973 = v1762[1];
              v1078 = *&v1763;
              v973(v1731, *&v1763);
              sub_1E6744A10(v1704, &qword_1ED096E68);
              v1079 = v1722;
              goto LABEL_308;
            }

LABEL_216:
            sub_1E6744A10(v1635, &qword_1ED096E68);
            sub_1E6744A10(v1643, &qword_1ED096E68);
            sub_1E6744A10(v1628, &qword_1ED096E68);
            v973 = v1762[1];
            v1078 = *&v1763;
            v973(v1731, *&v1763);
            sub_1E6744A10(v1704, &qword_1ED096E68);
            v1079 = v894;
LABEL_308:
            sub_1E6744A10(v1079, &qword_1ED096E68);
            sub_1E6744A10(v888, &qword_1ED096E68);
            v975 = v882;
            goto LABEL_313;
          }

          (*(v890 + 8))(v1077, v892);
          v882 = v1719;
        }

        sub_1E6744A10(v889, &qword_1ED098130);
        goto LABEL_216;
      }

      sub_1E6744A10(v881, &qword_1ED096E68);
      sub_1E6744A10(v879, &qword_1ED096E68);
      sub_1E6744A10(v877, &qword_1ED096E68);
      v973 = v1762[1];
      v974 = *&v1763;
      v973(v1731, *&v1763);
      sub_1E6744A10(v1704, &qword_1ED096E68);
      sub_1E6744A10(v1722, &qword_1ED096E68);
      sub_1E6744A10(v1712, &qword_1ED096E68);
      v975 = v1719;
LABEL_123:
      v976 = v974;
      goto LABEL_126;
    case 0xBu:
      v482 = v1685;
      v483 = (v453)(v1685, v1764, v411);
      v484 = *v482;
      v1758 = v482[1];
      v1760 = v484;
      v485 = v482[2].f64[0];
      MEMORY[0x1EEE9AC00](v483);
      strcpy(&v1517 - 80, "layout artwork title subtitle caption artworkBackgroundColor ");
      *&v1813.f64[0] = &type metadata for SummaryCardViewLayout;
      v486 = *&v1763;
      v1813.f64[1] = v1763;
      v1814.f64[0] = v1759.f64[0];
      v1814.f64[1] = v1759.f64[0];
      v1815.f64[0] = v1759.f64[0];
      *&v1815.f64[1] = v1692;
      v487 = swift_getTupleTypeMetadata();
      v488 = v487[12];
      v489 = v487[16];
      v490 = v487[20];
      v491 = v487[24];
      v492 = v487[28];
      v493 = v1761;
      v1751 = v411;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        sub_1E6744A10(v482 + v492, &qword_1ED096E88);
        sub_1E6744A10(v482 + v491, &qword_1ED096E68);
        sub_1E6744A10(v482 + v490, &qword_1ED096E68);
        sub_1E6744A10(v489 + v482, &qword_1ED096E68);
        v925 = v1762[1];
        v926 = v482 + v488;
        goto LABEL_91;
      }

      v494 = v493[2].f64[0];
      v1754 = v489;
      v1747 = v491;
      v495 = v490;
      v1756 = v1762[4];
      v496 = v493[1];
      v1759 = *v493;
      v1757 = v496;
      (v1756)(v1738, v482 + v488, v486);
      v1749 = v488;
      sub_1E6761420(v489 + v482, v1734, &qword_1ED096E68);
      sub_1E6761420(v482 + v490, v1717, &qword_1ED096E68);
      v497 = v1747;
      sub_1E6761420(v482 + v1747, v1705, &qword_1ED096E68);
      sub_1E6761420(v482 + v492, v1702, &qword_1ED096E88);
      v498 = v1639;
      (v1756)(v1639, v493 + v1749, v486);
      v499 = v1633;
      sub_1E6761420(v1754 + v493, v1633, &qword_1ED096E68);
      v500 = v1644;
      sub_1E6761420(v493 + v495, v1644, &qword_1ED096E68);
      v501 = v1629;
      sub_1E6761420(v493 + v497, v1629, &qword_1ED096E68);
      v502 = v1632;
      sub_1E6761420(v493 + v492, v1632, &qword_1ED096E88);
      v1814 = v1758;
      v1813 = v1760;
      v1815.f64[0] = v485;
      v1798 = v1757;
      v1797 = v1759;
      v1799.f64[0] = v494;
      if ((_s15FitnessCanvasUI21SummaryCardViewLayoutV2eeoiySbAC_ACtFZ_0(&v1813, &v1797) & 1) == 0)
      {
        sub_1E6744A10(v502, &qword_1ED096E88);
        sub_1E6744A10(v501, &qword_1ED096E68);
        sub_1E6744A10(v500, &qword_1ED096E68);
        sub_1E6744A10(v499, &qword_1ED096E68);
        v784 = v1762[1];
        v959 = *&v1763;
        v784(v498, *&v1763);
        sub_1E6744A10(v1702, &qword_1ED096E88);
        sub_1E6744A10(v1705, &qword_1ED096E68);
        sub_1E6744A10(v1717, &qword_1ED096E68);
        sub_1E6744A10(v1734, &qword_1ED096E68);
        v960 = v1738;
        goto LABEL_377;
      }

      v503 = *&v1763;
      v504 = sub_1E68B3190();
      v505 = v1764;
      if ((v504 & 1) == 0)
      {
        sub_1E6744A10(v502, &qword_1ED096E88);
        sub_1E6744A10(v501, &qword_1ED096E68);
        sub_1E6744A10(v500, &qword_1ED096E68);
        sub_1E6744A10(v499, &qword_1ED096E68);
        v980 = v1762[1];
        v980(v498, v503);
        sub_1E6744A10(v1702, &qword_1ED096E88);
        sub_1E6744A10(v1705, &qword_1ED096E68);
        sub_1E6744A10(v1717, &qword_1ED096E68);
        sub_1E6744A10(v1734, &qword_1ED096E68);
        v980(v1738, v503);
        (*(v1755 + 8))(v505, v1751);
        goto LABEL_381;
      }

      v506 = *(v1752 + 48);
      v507 = v1604;
      sub_1E67612FC(v1734, v1604, &qword_1ED096E68);
      sub_1E67612FC(v499, v507 + v506, &qword_1ED096E68);
      v508 = v1750;
      v509 = *(v1750 + 48);
      v510 = v1748;
      if (v509(v507, 1, v1748) == 1)
      {
        v511 = v509(v507 + v506, 1, v510);
        v512 = v1639;
        if (v511 == 1)
        {
          sub_1E6744A10(v507, &qword_1ED096E68);
          v513 = v510;
          goto LABEL_236;
        }
      }

      else
      {
        v1010 = v1586;
        sub_1E67612FC(v507, v1586, &qword_1ED096E68);
        if (v509(v507 + v506, 1, v510) != 1)
        {
          v1091 = v1660;
          (*(v508 + 32))(v1660, v507 + v506, v510);
          sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848]);
          v513 = v510;
          v1092 = sub_1E68B3190();
          v1093 = *(v508 + 8);
          v1093(v1091, v513);
          v1093(v1010, v513);
          sub_1E6744A10(v507, &qword_1ED096E68);
          v512 = v1639;
          if (v1092)
          {
LABEL_236:
            v1094 = *(v1752 + 48);
            v1095 = v1581;
            sub_1E67612FC(v1717, v1581, &qword_1ED096E68);
            sub_1E67612FC(v1644, v1095 + v1094, &qword_1ED096E68);
            v1096 = v513;
            if (v509(v1095, 1, v513) == 1)
            {
              v1097 = v509(v1095 + v1094, 1, v513);
              v1098 = v1629;
              if (v1097 == 1)
              {
                sub_1E6744A10(v1095, &qword_1ED096E68);
                goto LABEL_326;
              }
            }

            else
            {
              v1158 = v1560;
              sub_1E67612FC(v1095, v1560, &qword_1ED096E68);
              v1159 = v509(v1095 + v1094, 1, v513);
              v1160 = v1095;
              v1161 = v1750;
              if (v1159 != 1)
              {
                v1235 = v1660;
                (*(v1750 + 32))(v1660, v1160 + v1094, v1096);
                sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848]);
                v513 = v1096;
                v1236 = sub_1E68B3190();
                v1237 = *(v1161 + 8);
                v1237(v1235, v513);
                v1237(v1158, v513);
                sub_1E6744A10(v1581, &qword_1ED096E68);
                v1098 = v1629;
                if (v1236)
                {
LABEL_326:
                  v1238 = *(v1752 + 48);
                  v1239 = v1553;
                  sub_1E67612FC(v1705, v1553, &qword_1ED096E68);
                  sub_1E67612FC(v1098, v1239 + v1238, &qword_1ED096E68);
                  if (v509(v1239, 1, v513) == 1)
                  {
                    v1240 = v509(v1239 + v1238, 1, v513);
                    v1241 = v1734;
                    v1242 = v1633;
                    v1243 = v1632;
                    if (v1240 == 1)
                    {
                      sub_1E6744A10(v1239, &qword_1ED096E68);
                      goto LABEL_404;
                    }
                  }

                  else
                  {
                    v1294 = v1541;
                    sub_1E67612FC(v1239, v1541, &qword_1ED096E68);
                    if (v509(v1239 + v1238, 1, v513) != 1)
                    {
                      v1343 = v1750;
                      v1344 = v1239 + v1238;
                      v1345 = v1660;
                      (*(v1750 + 32))(v1660, v1344, v513);
                      sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848]);
                      v1346 = sub_1E68B3190();
                      v1347 = *(v1343 + 8);
                      v1347(v1345, v513);
                      v1347(v1294, v513);
                      sub_1E6744A10(v1239, &qword_1ED096E68);
                      v1241 = v1734;
                      v1242 = v1633;
                      v1243 = v1632;
                      if (v1346)
                      {
LABEL_404:
                        v1348 = *(v1537 + 48);
                        v1349 = v1552;
                        sub_1E67612FC(v1702, v1552, &qword_1ED096E88);
                        sub_1E67612FC(v1243, v1349 + v1348, &qword_1ED096E88);
                        v1350 = *(v1544 + 48);
                        v1351 = v1546;
                        if (v1350(v1349, 1, v1546) == 1)
                        {
                          sub_1E6744A10(v1243, &qword_1ED096E88);
                          sub_1E6744A10(v1098, &qword_1ED096E68);
                          sub_1E6744A10(v1644, &qword_1ED096E68);
                          sub_1E6744A10(v1633, &qword_1ED096E68);
                          v1352 = *&v1763;
                          v1353 = v1762[1];
                          v1353(v1639, *&v1763);
                          sub_1E6744A10(v1702, &qword_1ED096E88);
                          sub_1E6744A10(v1705, &qword_1ED096E68);
                          sub_1E6744A10(v1717, &qword_1ED096E68);
                          v1354 = v1552;
                          sub_1E6744A10(v1241, &qword_1ED096E68);
                          v1353(v1738, v1352);
                          if (v1350(v1354 + v1348, 1, v1546) == 1)
                          {
                            v1281 = &qword_1ED096E88;
                            v1282 = v1354;
                            goto LABEL_357;
                          }
                        }

                        else
                        {
                          v1394 = v1532;
                          sub_1E67612FC(v1349, v1532, &qword_1ED096E88);
                          if (v1350(v1349 + v1348, 1, v1351) != 1)
                          {
                            v1414 = v1544;
                            v1415 = v1349 + v1348;
                            v1416 = v1525;
                            (*(v1544 + 32))(v1525, v1415, v1351);
                            sub_1E67BDEF8(&qword_1ED098138, MEMORY[0x1E699DB98]);
                            LODWORD(v1761) = sub_1E68B3190();
                            v1417 = *(v1414 + 8);
                            v1417(v1416, v1351);
                            sub_1E6744A10(v1632, &qword_1ED096E88);
                            sub_1E6744A10(v1098, &qword_1ED096E68);
                            sub_1E6744A10(v1644, &qword_1ED096E68);
                            sub_1E6744A10(v1633, &qword_1ED096E68);
                            v1418 = v1762[1];
                            v1419 = *&v1763;
                            v1418(v1639, *&v1763);
                            sub_1E6744A10(v1702, &qword_1ED096E88);
                            sub_1E6744A10(v1705, &qword_1ED096E68);
                            sub_1E6744A10(v1717, &qword_1ED096E68);
                            sub_1E6744A10(v1241, &qword_1ED096E68);
                            v1418(v1738, v1419);
                            v1417(v1532, v1351);
                            v1383 = v1552;
                            v1393 = &qword_1ED096E88;
LABEL_423:
                            sub_1E6744A10(v1383, v1393);
                            v1292 = v1755;
                            v1293 = v1764;
                            if ((v1761 & 1) == 0)
                            {
                              goto LABEL_394;
                            }

                            goto LABEL_424;
                          }

                          sub_1E6744A10(v1632, &qword_1ED096E88);
                          sub_1E6744A10(v1098, &qword_1ED096E68);
                          sub_1E6744A10(v1644, &qword_1ED096E68);
                          sub_1E6744A10(v1633, &qword_1ED096E68);
                          v1395 = v1762[1];
                          v1396 = *&v1763;
                          v1395(v1639, *&v1763);
                          sub_1E6744A10(v1702, &qword_1ED096E88);
                          sub_1E6744A10(v1705, &qword_1ED096E68);
                          sub_1E6744A10(v1717, &qword_1ED096E68);
                          v1354 = v1552;
                          sub_1E6744A10(v1241, &qword_1ED096E68);
                          v1395(v1738, v1396);
                          (*(v1544 + 8))(v1394, v1546);
                        }

                        v1320 = &qword_1ED098128;
                        v1321 = v1354;
                        goto LABEL_392;
                      }

                      goto LABEL_362;
                    }

                    (*(v1750 + 8))(v1294, v513);
                    v1241 = v1734;
                    v1242 = v1633;
                    v1243 = v1632;
                  }

                  sub_1E6744A10(v1239, &qword_1ED098130);
LABEL_362:
                  sub_1E6744A10(v1243, &qword_1ED096E88);
                  sub_1E6744A10(v1098, &qword_1ED096E68);
                  sub_1E6744A10(v1644, &qword_1ED096E68);
                  sub_1E6744A10(v1242, &qword_1ED096E68);
                  v784 = v1762[1];
                  v1162 = *&v1763;
                  v784(v1639, *&v1763);
                  sub_1E6744A10(v1702, &qword_1ED096E88);
                  sub_1E6744A10(v1705, &qword_1ED096E68);
                  sub_1E6744A10(v1717, &qword_1ED096E68);
                  v1163 = v1241;
                  goto LABEL_274;
                }

                goto LABEL_272;
              }

              (*(v1750 + 8))(v1158, v1096);
              v1095 = v1160;
              v1098 = v1629;
            }

            sub_1E6744A10(v1095, &qword_1ED098130);
LABEL_272:
            sub_1E6744A10(v1632, &qword_1ED096E88);
            v1011 = v1098;
            goto LABEL_273;
          }

LABEL_163:
          sub_1E6744A10(v1632, &qword_1ED096E88);
          v1011 = v1629;
LABEL_273:
          sub_1E6744A10(v1011, &qword_1ED096E68);
          sub_1E6744A10(v1644, &qword_1ED096E68);
          sub_1E6744A10(v1633, &qword_1ED096E68);
          v784 = v1762[1];
          v1162 = *&v1763;
          v784(v512, *&v1763);
          sub_1E6744A10(v1702, &qword_1ED096E88);
          sub_1E6744A10(v1705, &qword_1ED096E68);
          sub_1E6744A10(v1717, &qword_1ED096E68);
          v1163 = v1734;
LABEL_274:
          sub_1E6744A10(v1163, &qword_1ED096E68);
          v960 = v1738;
          v972 = v1162;
          goto LABEL_378;
        }

        (*(v508 + 8))(v1010, v510);
        v512 = v1639;
      }

      sub_1E6744A10(v507, &qword_1ED098130);
      goto LABEL_163;
    case 0xCu:
      v546 = v1680;
      v547 = (v453)(v1680, v1764, v411);
      v548 = *v546;
      v549 = v546[1];
      v550 = v546[2];
      v551 = *(v546 + 24);
      v552 = v546[4];
      v553 = v546[5];
      MEMORY[0x1EEE9AC00](v547);
      strcpy(&v1517 - 48, "layout artwork title overlay ");
      *&v1813.f64[0] = &type metadata for TallCardViewLayout;
      v486 = *&v1763;
      v1813.f64[1] = v1763;
      v1814.f64[0] = v1759.f64[0];
      *&v1814.f64[1] = &type metadata for Overlay;
      v554 = swift_getTupleTypeMetadata();
      v555 = v554[12];
      v556 = v411;
      v557 = v554[16];
      v558 = v554[20];
      v559 = *(v546 + v558);
      v560 = v1761;
      v1751 = v556;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        sub_1E6744A10(v546 + v557, &qword_1ED096E68);
        v925 = v1762[1];
        v926 = v546 + v555;
LABEL_91:
        v927 = v486;
LABEL_100:
        v925(v926, v927);
LABEL_101:
        v473 = v1764;
        goto LABEL_102;
      }

      LODWORD(v1754) = v559;
      v1760 = *v560;
      v561 = v560[2];
      LODWORD(v1759.f64[0]) = *(v560 + 24);
      v562 = v560[4];
      v1758.f64[0] = v560[5];
      LODWORD(v1749) = *(v560 + v558);
      v563 = v1762;
      LODWORD(v1756) = v551;
      v1757.f64[0] = v553;
      v564 = v1762[4];
      (v564)(v1728, v546 + v555, v486);
      sub_1E6761420(v546 + v557, v1689, &qword_1ED096E68);
      v565 = v560 + v555;
      v566 = v1626;
      (v564)(v1626, v565, v486);
      v567 = v1618;
      sub_1E6761420(v560 + v557, v1618, &qword_1ED096E68);
      v1813.f64[0] = v548;
      v1813.f64[1] = v549;
      v1814.f64[0] = v550;
      LOBYTE(v1814.f64[1]) = v1756;
      v1815.f64[0] = v552;
      v1815.f64[1] = v1757.f64[0];
      v1797 = v1760;
      v1798.f64[0] = v561;
      LOBYTE(v1798.f64[1]) = LOBYTE(v1759.f64[0]);
      v1799.f64[0] = v562;
      v1799.f64[1] = v1758.f64[0];
      if (!_s15FitnessCanvasUI18TallCardViewLayoutV2eeoiySbAC_ACtFZ_0(&v1813, &v1797))
      {
        sub_1E6744A10(v567, &qword_1ED096E68);
        v961 = v563[1];
        v961(v566, v486);
        sub_1E6744A10(v1689, &qword_1ED096E68);
        v961(v1728, v486);
        goto LABEL_379;
      }

      v568 = v1728;
      v569 = sub_1E68B3190();
      v570 = v1764;
      v571 = v1751;
      if ((v569 & 1) == 0)
      {
        sub_1E6744A10(v567, &qword_1ED096E68);
        v984 = v1762[1];
        v984(v566, v486);
        sub_1E6744A10(v1689, &qword_1ED096E68);
        v984(v568, v486);
        (*(v1755 + 8))(v570, v571);
        goto LABEL_381;
      }

      v572 = *(v1752 + 48);
      v573 = v1689;
      v574 = v1608;
      sub_1E67612FC(v1689, v1608, &qword_1ED096E68);
      sub_1E67612FC(v567, v574 + v572, &qword_1ED096E68);
      v575 = v1750;
      v576 = *(v1750 + 48);
      v577 = v1748;
      if (v576(v574, 1, v1748) == 1)
      {
        sub_1E6744A10(v567, &qword_1ED096E68);
        v578 = v1762[1];
        v579 = *&v1763;
        v578(v1626, *&v1763);
        v574 = v1608;
        sub_1E6744A10(v573, &qword_1ED096E68);
        v578(v1728, v579);
        if (v576(v574 + v572, 1, v577) == 1)
        {
          sub_1E6744A10(v574, &qword_1ED096E68);
          v580 = v1755;
          v581 = v1751;
          v582 = v1764;
          goto LABEL_240;
        }

LABEL_170:
        v1026 = v574;
        goto LABEL_317;
      }

      v1021 = v1592;
      sub_1E67612FC(v574, v1592, &qword_1ED096E68);
      if (v576(v574 + v572, 1, v577) == 1)
      {
        v1022 = v577;
        sub_1E6744A10(v1618, &qword_1ED096E68);
        v1023 = v1762[1];
        v1024 = v1021;
        v1025 = *&v1763;
        v1023(v1626, *&v1763);
        sub_1E6744A10(v573, &qword_1ED096E68);
        v1023(v1728, v1025);
        (*(v575 + 8))(v1024, v1022);
        goto LABEL_170;
      }

      v1099 = v574 + v572;
      v1100 = v1660;
      (*(v575 + 32))(v1660, v1099, v577);
      sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848]);
      LODWORD(v1761) = sub_1E68B3190();
      v1101 = *(v575 + 8);
      v1101(v1100, v577);
      sub_1E6744A10(v1618, &qword_1ED096E68);
      v1102 = v1762[1];
      v1103 = *&v1763;
      v1102(v1626, *&v1763);
      sub_1E6744A10(v573, &qword_1ED096E68);
      v1102(v1728, v1103);
      v1101(v1592, v577);
      sub_1E6744A10(v1608, &qword_1ED096E68);
      v580 = v1755;
      v581 = v1751;
      v582 = v1764;
      if ((v1761 & 1) == 0)
      {
        goto LABEL_364;
      }

LABEL_240:
      v1104 = v1754 ^ v1749;
      (*(v580 + 8))(v582, v581);
      v479 = v1104 ^ 1;
      return v479 & 1;
    case 0xDu:
      v794 = v1686;
      v473 = v1764;
      v795 = (v453)(v1686, v1764, v411);
      v796 = v794[5];
      v1817 = v794[4];
      v1818 = v796;
      v797 = v794[7];
      v1819 = v794[6];
      v1820 = v797;
      v798 = v794[1];
      v1813 = *v794;
      v1814 = v798;
      v799 = v794[3];
      v1815 = v794[2];
      v1816 = v799;
      MEMORY[0x1EEE9AC00](v795);
      strcpy(&v1517 - 48, "layout artwork title subtitle caption ");
      *&v1797.f64[0] = &type metadata for VerticalStackCardLayout;
      v800 = *&v1763;
      v1797.f64[1] = v1763;
      v1798.f64[0] = v1759.f64[0];
      v1798.f64[1] = v1759.f64[0];
      v1799.f64[0] = v1759.f64[0];
      v801 = v411;
      v802 = swift_getTupleTypeMetadata();
      v803 = v802[12];
      v804 = v802[16];
      *&v1760.f64[0] = v802[20];
      v805 = v802[24];
      v806 = v1761;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
LABEL_86:
        sub_1E6744A10(v794 + v805, &qword_1ED096E68);
        sub_1E6744A10(v794 + *&v1760.f64[0], &qword_1ED096E68);
        sub_1E6744A10(v794 + v804, &qword_1ED096E68);
        v1762[1](v794 + v803, v800);
        goto LABEL_102;
      }

      v1751 = v801;
      v807 = v806[6];
      v1832[7] = v806[7];
      v1832[6] = v807;
      v808 = v806[4];
      v1832[5] = v806[5];
      v1832[4] = v808;
      v809 = v806[1];
      v1832[0] = *v806;
      v1832[1] = v809;
      v810 = v806[2];
      v1832[3] = v806[3];
      v1832[2] = v810;
      v1756 = v802[12];
      *&v1757.f64[0] = v802[16];
      *&v1758.f64[0] = v802[20];
      *&v1759.f64[0] = v802[24];
      v811 = v1762[4];
      (v811)(v1721, v794 + v803, v800);
      v812 = v794 + v804;
      v813 = v1651;
      sub_1E6761420(v812, v1651, &qword_1ED096E68);
      sub_1E6761420(v794 + *&v1760.f64[0], v1716, &qword_1ED096E68);
      v814 = v794 + v805;
      v815 = v1638;
      sub_1E6761420(v814, v1638, &qword_1ED096E68);
      v816 = v1642;
      (v811)(v1642, v1756 + v806, v800);
      v817 = v1673;
      sub_1E6761420(v806 + *&v1757.f64[0], v1673, &qword_1ED096E68);
      v818 = v1668;
      sub_1E6761420(v806 + *&v1758.f64[0], v1668, &qword_1ED096E68);
      v819 = v1637;
      sub_1E6761420(v806 + *&v1759.f64[0], v1637, &qword_1ED096E68);
      v1801 = v1817;
      v1802 = v1818;
      v1803 = v1819;
      v1804 = v1820;
      v1797 = v1813;
      v1798 = v1814;
      v1799 = v1815;
      v1800 = v1816;
      if (!_s15FitnessCanvasUI23VerticalStackCardLayoutV2eeoiySbAC_ACtFZ_0(&v1797, v1832))
      {
        sub_1E6744A10(v819, &qword_1ED096E68);
        sub_1E6744A10(v818, &qword_1ED096E68);
        sub_1E6744A10(v817, &qword_1ED096E68);
        v973 = v1762[1];
        v973(v816, v800);
        sub_1E6744A10(v815, &qword_1ED096E68);
        sub_1E6744A10(v1716, &qword_1ED096E68);
        sub_1E6744A10(v813, &qword_1ED096E68);
        v975 = v1721;
LABEL_125:
        v976 = v800;
LABEL_126:
        v973(v975, v976);
        goto LABEL_379;
      }

      v820 = v1721;
      v821 = sub_1E68B3190();
      v724 = v1764;
      if ((v821 & 1) == 0)
      {
        sub_1E6744A10(v819, &qword_1ED096E68);
        sub_1E6744A10(v1668, &qword_1ED096E68);
        sub_1E6744A10(v1673, &qword_1ED096E68);
        v1002 = v1762[1];
        v1002(v816, v800);
        sub_1E6744A10(v815, &qword_1ED096E68);
        sub_1E6744A10(v1716, &qword_1ED096E68);
        sub_1E6744A10(v1651, &qword_1ED096E68);
        v1002(v820, v800);
        goto LABEL_158;
      }

      v822 = *(v1752 + 48);
      v823 = v1606;
      sub_1E67612FC(v813, v1606, &qword_1ED096E68);
      sub_1E67612FC(v1673, v823 + v822, &qword_1ED096E68);
      v824 = v1750;
      v825 = *(v1750 + 48);
      v826 = v1748;
      if (v825(v823, 1, v1748) == 1)
      {
        v827 = v825(v823 + v822, 1, v826);
        v828 = v1642;
        v829 = v820;
        if (v827 == 1)
        {
          sub_1E6744A10(v823, &qword_1ED096E68);
          v830 = v826;
          v831 = v1673;
          goto LABEL_254;
        }
      }

      else
      {
        v1073 = v1587;
        sub_1E67612FC(v823, v1587, &qword_1ED096E68);
        if (v825(v823 + v822, 1, v826) != 1)
        {
          v1114 = v1073;
          v1115 = v1660;
          (*(v824 + 32))(v1660, v823 + v822, v826);
          sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848]);
          v1116 = v823;
          v830 = v826;
          v1117 = sub_1E68B3190();
          v1118 = *(v824 + 8);
          v1118(v1115, v830);
          v1119 = v1114;
          v829 = v1721;
          v1118(v1119, v830);
          v1120 = v1116;
          v831 = v1673;
          sub_1E6744A10(v1120, &qword_1ED096E68);
          v828 = v1642;
          v800 = *&v1763;
          if (v1117)
          {
LABEL_254:
            v1121 = *(v1752 + 48);
            v1122 = v1578;
            sub_1E67612FC(v1716, v1578, &qword_1ED096E68);
            sub_1E67612FC(v1668, v1122 + v1121, &qword_1ED096E68);
            v1123 = v830;
            if (v825(v1122, 1, v830) == 1)
            {
              if (v825(v1122 + v1121, 1, v830) == 1)
              {
                sub_1E6744A10(v1122, &qword_1ED096E68);
LABEL_341:
                v1257 = *(v1752 + 48);
                v1258 = v1638;
                v1259 = v1566;
                sub_1E67612FC(v1638, v1566, &qword_1ED096E68);
                v1260 = v1257;
                v1261 = v1259 + v1257;
                v1262 = v1637;
                sub_1E67612FC(v1637, v1261, &qword_1ED096E68);
                if (v825(v1259, 1, v830) == 1)
                {
                  sub_1E6744A10(v1262, &qword_1ED096E68);
                  sub_1E6744A10(v1668, &qword_1ED096E68);
                  sub_1E6744A10(v1673, &qword_1ED096E68);
                  v1263 = v1762[1];
                  v1264 = *&v1763;
                  v1263(v1642, *&v1763);
                  sub_1E6744A10(v1258, &qword_1ED096E68);
                  sub_1E6744A10(v1716, &qword_1ED096E68);
                  sub_1E6744A10(v1651, &qword_1ED096E68);
                  v1263(v1721, v1264);
                  v1259 = v1566;
                  goto LABEL_355;
                }

                v1312 = v1542;
                sub_1E67612FC(v1259, v1542, &qword_1ED096E68);
                if (v825(v1259 + v1260, 1, v830) == 1)
                {
                  sub_1E6744A10(v1637, &qword_1ED096E68);
                  sub_1E6744A10(v1668, &qword_1ED096E68);
                  sub_1E6744A10(v1673, &qword_1ED096E68);
                  v1313 = v1762[1];
                  v1314 = *&v1763;
                  v1313(v1642, *&v1763);
                  sub_1E6744A10(v1638, &qword_1ED096E68);
                  sub_1E6744A10(v1716, &qword_1ED096E68);
                  sub_1E6744A10(v1651, &qword_1ED096E68);
                  v1315 = v1721;
LABEL_390:
                  v1313(v1315, v1314);
                  (*(v1750 + 8))(v1312, v830);
LABEL_391:
                  v1320 = &qword_1ED098130;
                  v1321 = v1259;
                  goto LABEL_392;
                }

                v1378 = v1750;
                v1379 = v1660;
                (*(v1750 + 32))(v1660, v1259 + v1260, v830);
                sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848]);
                LODWORD(v1761) = sub_1E68B3190();
                v1380 = *(v1378 + 8);
                v1380(v1379, v830);
                sub_1E6744A10(v1637, &qword_1ED096E68);
                sub_1E6744A10(v1668, &qword_1ED096E68);
                sub_1E6744A10(v1673, &qword_1ED096E68);
                v1381 = v1762[1];
                v1382 = *&v1763;
                v1381(v1642, *&v1763);
                sub_1E6744A10(v1638, &qword_1ED096E68);
                sub_1E6744A10(v1716, &qword_1ED096E68);
                sub_1E6744A10(v1651, &qword_1ED096E68);
                v1381(v1721, v1382);
                v1380(v1312, v830);
                v1383 = v1566;
                goto LABEL_422;
              }
            }

            else
            {
              v1206 = v1570;
              sub_1E67612FC(v1122, v1570, &qword_1ED096E68);
              v1207 = v825(v1122 + v1121, 1, v1123);
              v1208 = v1750;
              if (v1207 != 1)
              {
                v1254 = v1660;
                (*(v1750 + 32))(v1660, v1122 + v1121, v1123);
                sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848]);
                v830 = v1123;
                v1255 = sub_1E68B3190();
                v1256 = *(v1208 + 8);
                v1256(v1254, v830);
                v1256(v1570, v830);
                sub_1E6744A10(v1122, &qword_1ED096E68);
                if (v1255)
                {
                  goto LABEL_341;
                }

LABEL_300:
                sub_1E6744A10(v1637, &qword_1ED096E68);
                sub_1E6744A10(v1668, &qword_1ED096E68);
                sub_1E6744A10(v831, &qword_1ED096E68);
                v973 = v1762[1];
                v1078 = *&v1763;
                v973(v1642, *&v1763);
                sub_1E6744A10(v1638, &qword_1ED096E68);
                sub_1E6744A10(v1716, &qword_1ED096E68);
                sub_1E6744A10(v1651, &qword_1ED096E68);
                v975 = v1721;
                goto LABEL_313;
              }

              (*(v1750 + 8))(v1206, v1123);
            }

            sub_1E6744A10(v1122, &qword_1ED098130);
            goto LABEL_300;
          }

          goto LABEL_208;
        }

        v829 = v820;
        (*(v824 + 8))(v1073, v826);
        v828 = v1642;
        v800 = *&v1763;
      }

      sub_1E6744A10(v823, &qword_1ED098130);
      v831 = v1673;
LABEL_208:
      sub_1E6744A10(v1637, &qword_1ED096E68);
      sub_1E6744A10(v1668, &qword_1ED096E68);
      sub_1E6744A10(v831, &qword_1ED096E68);
      v973 = v1762[1];
      v973(v828, v800);
      sub_1E6744A10(v1638, &qword_1ED096E68);
      sub_1E6744A10(v1716, &qword_1ED096E68);
      sub_1E6744A10(v1651, &qword_1ED096E68);
      v975 = v829;
LABEL_221:
      v976 = v800;
      goto LABEL_126;
    case 0xEu:
      v472 = v1677;
      v473 = v1764;
      v453(v1677, v1764, v411);
      v474 = v1761;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        (*(v1694 + 8))(v472, v1695);
        goto LABEL_102;
      }

      v475 = v1694;
      v476 = v1616;
      v477 = v1695;
      (*(v1694 + 32))(v1616, v474, v1695);
      v478 = v411;
      v479 = sub_1E68B3190();
      v480 = *(v475 + 8);
      v480(v476, v477);
      v481 = v472;
LABEL_53:
      v480(v481, v477);
      (*(v1755 + 8))(v473, v478);
      return v479 & 1;
    case 0xFu:
      v672 = v1683;
      v473 = v1764;
      v453(v1683, v1764, v411);
      v673 = *&v1763;
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v675 = *(TupleTypeMetadata3 + 48);
      v676 = *(TupleTypeMetadata3 + 64);
      v677 = v1761;
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        sub_1E6744A10(&v672[v676], &qword_1ED096E68);
        sub_1E6744A10(&v672[v675], &qword_1ED096E68);
        v929 = v1762[1];
        v930 = v672;
LABEL_98:
        v929(v930, v673);
LABEL_102:
        (*(v1756 + 1))(v473, *&v1757.f64[0]);
LABEL_381:
        v479 = 0;
        return v479 & 1;
      }

      v1751 = v411;
      v678 = v1762;
      v679 = v1645;
      (v1762[4])(v1645, v677, v673);
      sub_1E6761420(&v672[v675], v1740, &qword_1ED096E68);
      sub_1E6761420(&v672[v676], v1714, &qword_1ED096E68);
      v680 = &v677[v675];
      v681 = v1650;
      sub_1E6761420(v680, v1650, &qword_1ED096E68);
      v682 = &v677[v676];
      v683 = v679;
      v684 = v1667;
      sub_1E6761420(v682, v1667, &qword_1ED096E68);
      v685 = sub_1E68B3190();
      v688 = v678[1];
      v686 = v678 + 1;
      v687 = v688;
      (v688)(v672, v673);
      if ((v685 & 1) == 0)
      {
        sub_1E6744A10(v684, &qword_1ED096E68);
        sub_1E6744A10(v681, &qword_1ED096E68);
        sub_1E6744A10(v1714, &qword_1ED096E68);
        sub_1E6744A10(v1740, &qword_1ED096E68);
        (v687)(v683, v673);
        goto LABEL_379;
      }

      v1761 = v687;
      v1762 = v686;
      v689 = *(v1752 + 48);
      v690 = v1612;
      sub_1E67612FC(v1740, v1612, &qword_1ED096E68);
      sub_1E67612FC(v681, v690 + v689, &qword_1ED096E68);
      v691 = v1750;
      v692 = *(v1750 + 48);
      v693 = v1748;
      v694 = v692(v690, 1, v1748);
      v695 = v1764;
      if (v694 == 1)
      {
        if (v692(v690 + v689, 1, v693) == 1)
        {
          sub_1E6744A10(v690, &qword_1ED096E68);
          goto LABEL_176;
        }
      }

      else
      {
        v990 = v1600;
        sub_1E67612FC(v690, v1600, &qword_1ED096E68);
        if (v692(v690 + v689, 1, v693) != 1)
        {
          v1030 = v1660;
          (*(v691 + 32))(v1660, v690 + v689, v693);
          sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848]);
          LODWORD(v1760.f64[0]) = sub_1E68B3190();
          v1031 = *(v691 + 8);
          v1031(v1030, v693);
          v1031(v990, v693);
          sub_1E6744A10(v690, &qword_1ED096E68);
          if (LOBYTE(v1760.f64[0]))
          {
LABEL_176:
            v1032 = *(v1752 + 48);
            v1033 = v1714;
            v1034 = v1595;
            sub_1E67612FC(v1714, v1595, &qword_1ED096E68);
            v1035 = v1032;
            v1036 = v1034 + v1032;
            v1037 = v1667;
            sub_1E67612FC(v1667, v1036, &qword_1ED096E68);
            if (v692(v1034, 1, v693) == 1)
            {
              sub_1E6744A10(v1037, &qword_1ED096E68);
              sub_1E6744A10(v1650, &qword_1ED096E68);
              sub_1E6744A10(v1033, &qword_1ED096E68);
              sub_1E6744A10(v1740, &qword_1ED096E68);
              (v1761)(v1645, *&v1763);
              v1038 = v692(v1034 + v1035, 1, v693);
              v1039 = v1764;
              if (v1038 == 1)
              {
                sub_1E6744A10(v1034, &qword_1ED096E68);
                v1040 = v1755;
                v1041 = v1751;
LABEL_286:
                (*(v1040 + 8))(v1039, v1041);
                goto LABEL_425;
              }
            }

            else
            {
              v1085 = v1574;
              sub_1E67612FC(v1034, v1574, &qword_1ED096E68);
              if (v692(v1034 + v1035, 1, v693) != 1)
              {
                v1176 = v1750;
                v1177 = v1660;
                (*(v1750 + 32))(v1660, v1034 + v1035, v693);
                sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848]);
                v1178 = sub_1E68B3190();
                v1179 = *(v1176 + 8);
                v1179(v1177, v693);
                sub_1E6744A10(v1667, &qword_1ED096E68);
                sub_1E6744A10(v1650, &qword_1ED096E68);
                sub_1E6744A10(v1714, &qword_1ED096E68);
                sub_1E6744A10(v1740, &qword_1ED096E68);
                (v1761)(v1645, *&v1763);
                v1179(v1085, v693);
                sub_1E6744A10(v1034, &qword_1ED096E68);
                v1040 = v1755;
                v1041 = v1751;
                v1039 = v1764;
                if (v1178)
                {
                  goto LABEL_286;
                }

LABEL_229:
                (*(v1040 + 8))(v1039, v1041);
                goto LABEL_381;
              }

              sub_1E6744A10(v1667, &qword_1ED096E68);
              sub_1E6744A10(v1650, &qword_1ED096E68);
              sub_1E6744A10(v1714, &qword_1ED096E68);
              sub_1E6744A10(v1740, &qword_1ED096E68);
              (v1761)(v1645, *&v1763);
              (*(v1750 + 8))(v1085, v693);
              v1039 = v1764;
            }

            sub_1E6744A10(v1034, &qword_1ED098130);
            v1040 = v1755;
            v1041 = v1751;
            goto LABEL_229;
          }

LABEL_140:
          sub_1E6744A10(v1667, &qword_1ED096E68);
          sub_1E6744A10(v1650, &qword_1ED096E68);
          sub_1E6744A10(v1714, &qword_1ED096E68);
          sub_1E6744A10(v1740, &qword_1ED096E68);
          v991 = v1645;
          v992 = *&v1763;
LABEL_192:
          (v1761)(v991, v992);
          goto LABEL_193;
        }

        (*(v691 + 8))(v990, v693);
      }

      sub_1E6744A10(v690, &qword_1ED098130);
      goto LABEL_140;
    default:
      v454 = (v453)(v447, v1764, v411);
      v1828 = *(v447 + 30);
      v455 = *(v447 + 13);
      v1825 = *(v447 + 12);
      v1826 = v455;
      v1827 = *(v447 + 14);
      v456 = *(v447 + 9);
      v1821 = *(v447 + 8);
      v1822 = v456;
      v457 = *(v447 + 11);
      v1823 = *(v447 + 10);
      v1824 = v457;
      v458 = *(v447 + 5);
      v1817 = *(v447 + 4);
      v1818 = v458;
      v459 = *(v447 + 7);
      v1819 = *(v447 + 6);
      v1820 = v459;
      v460 = *(v447 + 1);
      v1813 = *v447;
      v1814 = v460;
      v461 = *(v447 + 3);
      v1815 = *(v447 + 2);
      v1816 = v461;
      MEMORY[0x1EEE9AC00](v454);
      strcpy(&v1517 - 96, "layout artwork style title subtitle caption primaryActionButton secondaryActionButton ");
      *&v1797.f64[0] = &type metadata for ActionCardViewLayout;
      v1797.f64[1] = v1763;
      *&v1798.f64[0] = &type metadata for ActionCardViewStyle;
      v1798.f64[1] = v1759.f64[0];
      v1799.f64[0] = v1759.f64[0];
      v1799.f64[1] = v1759.f64[0];
      *&v1800.f64[0] = v1749;
      v1800.f64[1] = v1758.f64[0];
      v462 = swift_getTupleTypeMetadata();
      v463 = v411;
      v464 = v462;
      v465 = v447[v462[16]];
      v466 = v462[12];
      v467 = v462[20];
      v468 = v462[24];
      v469 = v462[28];
      v470 = v463;
      *&v1759.f64[0] = v462[32];
      *&v1760.f64[0] = v462[36];
      v471 = v1761;
      if (swift_getEnumCaseMultiPayload())
      {
        (v1754[1])(&v447[*&v1760.f64[0]], *&v1758.f64[0]);
        (*(v1745 + 8))(&v447[*&v1759.f64[0]], v1749);
        sub_1E6744A10(&v447[v469], &qword_1ED096E68);
        sub_1E6744A10(&v447[v468], &qword_1ED096E68);
        sub_1E6744A10(&v447[v467], &qword_1ED096E68);
        v1762[1](&v447[v466], *&v1763);
        goto LABEL_101;
      }

      LODWORD(v1741) = v465;
      v1751 = v470;
      v931 = v471[6];
      v1804 = v471[7];
      v1803 = v931;
      v932 = v471[4];
      v1802 = v471[5];
      v1801 = v932;
      v933 = v471[10];
      v1808 = v471[11];
      v1807 = v933;
      v934 = v471[8];
      v1806 = v471[9];
      v1805 = v934;
      v1812 = v471[15].f64[0];
      v935 = v471[13];
      v1811 = v471[14];
      v936 = v471[12];
      v1810 = v935;
      v1809 = v936;
      v937 = v471[1];
      v1797 = *v471;
      v1798 = v937;
      v938 = v471[2];
      v1800 = v471[3];
      v1799 = v938;
      v1743 = v464[12];
      LODWORD(v1740) = *(v471->f64 + v464[16]);
      v1744 = v464[20];
      v1746 = v464[24];
      v1747 = v464[28];
      v1756 = v464[32];
      *&v1757.f64[0] = v464[36];
      v1742 = v1762[4];
      v939 = *&v1763;
      (v1742)(v1675, &v447[v466], *&v1763);
      sub_1E6761420(&v447[v467], v1669, &qword_1ED096E68);
      sub_1E6761420(&v447[v468], v1664, &qword_1ED096E68);
      sub_1E6761420(&v447[v469], v1658, &qword_1ED096E68);
      *&v940 = v1745 + 32;
      v941 = *(v1745 + 32);
      v941(v1654, &v447[*&v1759.f64[0]], v1749);
      v942 = v1754[4];
      v943 = &v447[*&v1760.f64[0]];
      v944 = v1758.f64[0];
      v942(v1653, v943, *&v1758.f64[0]);
      (v1742)(v1674, &v1743[v471], v939);
      v945 = v1625;
      sub_1E6761420(&v1744[v471], v1625, &qword_1ED096E68);
      sub_1E6761420(v471 + v1746, v1652, &qword_1ED096E68);
      sub_1E6761420(v471 + v1747, v1657, &qword_1ED096E68);
      v946 = v1619;
      v947 = v1749;
      v1760.f64[0] = v940;
      *&v1759.f64[0] = v941;
      v941(v1619, v1756 + v471, v1749);
      v948 = v1614;
      v942(v1614, v471 + *&v1757.f64[0], *&v944);
      v1793 = v1825;
      v1794 = v1826;
      v1795 = v1827;
      v1796 = v1828;
      v1789 = v1821;
      v1790 = v1822;
      v1791 = v1823;
      v1792 = v1824;
      v1785 = v1817;
      v1786 = v1818;
      v1787 = v1819;
      v1788 = v1820;
      v1781 = v1813;
      v1782 = v1814;
      v1783 = v1815;
      v1784 = v1816;
      v1777 = v1809;
      v1778 = v1810;
      v1779 = v1811;
      v1780 = v1812;
      v1773 = v1805;
      v1774 = v1806;
      v1775 = v1807;
      v1776 = v1808;
      v1769 = v1801;
      v1770 = v1802;
      v1771 = v1803;
      v1772 = v1804;
      v1765 = v1797;
      v1766 = v1798;
      v1767 = v1799;
      v1768 = v1800;
      v949 = _s15FitnessCanvasUI20ActionCardViewLayoutV2eeoiySbAC_ACtFZ_0(&v1781, &v1765);
      v950 = *&v1763;
      v951 = v947;
      if (!v949)
      {
        v1761 = v1754[1];
        v977 = v948;
        v978 = v1758.f64[0];
        (v1761)(v977, *&v1758.f64[0]);
        v1760.f64[0] = *(v1745 + 8);
        (*&v1760.f64[0])(v946, v947);
        sub_1E6744A10(v1657, &qword_1ED096E68);
        sub_1E6744A10(v1652, &qword_1ED096E68);
        sub_1E6744A10(v945, &qword_1ED096E68);
        v979 = v1762[1];
        v979(v1674, v950);
        (v1761)(v1653, *&v978);
        (*&v1760.f64[0])(v1654, v947);
        sub_1E6744A10(v1658, &qword_1ED096E68);
        sub_1E6744A10(v1664, &qword_1ED096E68);
        sub_1E6744A10(v1669, &qword_1ED096E68);
        v979(v1675, v950);
        goto LABEL_379;
      }

      if ((sub_1E68B3190() & 1) == 0)
      {
        v1761 = v1754[1];
        v1006 = v947;
        v1007 = v1758.f64[0];
        (v1761)(v948, *&v1758.f64[0]);
        v1008 = *(v1745 + 8);
        v1008(v1619, v1006);
        sub_1E6744A10(v1657, &qword_1ED096E68);
        sub_1E6744A10(v1652, &qword_1ED096E68);
        sub_1E6744A10(v1625, &qword_1ED096E68);
        v1009 = v1762[1];
        v1009(v1674, v950);
        (v1761)(v1653, *&v1007);
        v1008(v1654, v1749);
        sub_1E6744A10(v1658, &qword_1ED096E68);
        sub_1E6744A10(v1664, &qword_1ED096E68);
        sub_1E6744A10(v1669, &qword_1ED096E68);
        v1009(v1675, v950);
        goto LABEL_379;
      }

      v952 = v1754;
      v953 = v1652;
      if (v1741 != v1740)
      {
        v1761 = v1754[1];
        v1088 = v951;
        v1089 = v1758.f64[0];
        (v1761)(v948, *&v1758.f64[0]);
        v1090 = *(v1745 + 8);
        v1090(v1619, v1088);
        sub_1E6744A10(v1657, &qword_1ED096E68);
        sub_1E6744A10(v953, &qword_1ED096E68);
        sub_1E6744A10(v1625, &qword_1ED096E68);
        v784 = v1762[1];
        v959 = *&v1763;
        v784(v1674, *&v1763);
        (v1761)(v1653, *&v1089);
        v1090(v1654, v1749);
LABEL_375:
        v1310 = v1658;
LABEL_376:
        sub_1E6744A10(v1310, &qword_1ED096E68);
        sub_1E6744A10(v1664, &qword_1ED096E68);
        sub_1E6744A10(v1669, &qword_1ED096E68);
        v960 = v1675;
LABEL_377:
        v972 = v959;
LABEL_378:
        v784(v960, v972);
        goto LABEL_379;
      }

      v954 = *(v1752 + 48);
      v955 = v1579;
      sub_1E67612FC(v1669, v1579, &qword_1ED096E68);
      sub_1E67612FC(v1625, v955 + v954, &qword_1ED096E68);
      v956 = v1750;
      v957 = *(v1750 + 48);
      v958 = v1748;
      if (v957(v955, 1, v1748) == 1)
      {
        if (v957(v955 + v954, 1, v958) != 1)
        {
LABEL_373:
          sub_1E6744A10(v955, &qword_1ED098130);
          goto LABEL_374;
        }

        sub_1E6744A10(v955, &qword_1ED096E68);
      }

      else
      {
        v1201 = v1557;
        sub_1E67612FC(v955, v1557, &qword_1ED096E68);
        if (v957(v955 + v954, 1, v958) == 1)
        {
LABEL_372:
          (*(v956 + 8))(v1201, v958);
          goto LABEL_373;
        }

        v1202 = v955 + v954;
        v1203 = v1660;
        (*(v956 + 32))(v1660, v1202, v958);
        sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848]);
        LODWORD(v1761) = sub_1E68B3190();
        v1204 = *(v956 + 8);
        v952 = v1754;
        v1204(v1203, v958);
        v1204(v1201, v958);
        sub_1E6744A10(v1579, &qword_1ED096E68);
        if ((v1761 & 1) == 0)
        {
LABEL_374:
          v1761 = v952[1];
          v1308 = v1758.f64[0];
          (v1761)(v1614, *&v1758.f64[0]);
          v1760.f64[0] = *(v1745 + 8);
          v1309 = v1749;
          (*&v1760.f64[0])(v1619, v1749);
          sub_1E6744A10(v1657, &qword_1ED096E68);
          sub_1E6744A10(v953, &qword_1ED096E68);
          sub_1E6744A10(v1625, &qword_1ED096E68);
          v784 = v1762[1];
          v959 = *&v1763;
          v784(v1674, *&v1763);
          (v1761)(v1653, *&v1308);
          (*&v1760.f64[0])(v1654, v1309);
          goto LABEL_375;
        }
      }

      v1205 = *(v1752 + 48);
      v955 = v1556;
      sub_1E67612FC(v1664, v1556, &qword_1ED096E68);
      sub_1E67612FC(v953, v955 + v1205, &qword_1ED096E68);
      if (v957(v955, 1, v958) == 1)
      {
        if (v957(v955 + v1205, 1, v958) == 1)
        {
          sub_1E6744A10(v955, &qword_1ED096E68);
          goto LABEL_416;
        }

        goto LABEL_373;
      }

      v1201 = v1538;
      sub_1E67612FC(v955, v1538, &qword_1ED096E68);
      v1307 = v957(v955 + v1205, 1, v958);
      v956 = v1750;
      if (v1307 != 1)
      {
        v1368 = v955 + v1205;
        v1369 = v1660;
        (*(v1750 + 32))(v1660, v1368, v958);
        sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848]);
        LODWORD(v1761) = sub_1E68B3190();
        v1370 = *(v956 + 8);
        v952 = v1754;
        v1370(v1369, v958);
        v1370(v1201, v958);
        sub_1E6744A10(v1556, &qword_1ED096E68);
        if (v1761)
        {
LABEL_416:
          v1371 = *(v1752 + 48);
          v1372 = v1535;
          sub_1E67612FC(v1658, v1535, &qword_1ED096E68);
          v1373 = v1372;
          sub_1E67612FC(v1657, v1372 + v1371, &qword_1ED096E68);
          if (v957(v1372, 1, v958) == 1)
          {
            v1374 = v957(v1372 + v1371, 1, v958);
            v1375 = v1749;
            if (v1374 == 1)
            {
              sub_1E6744A10(v1373, &qword_1ED096E68);
              v1376 = v1758.f64[0];
              v1377 = v1614;
              goto LABEL_450;
            }
          }

          else
          {
            v1400 = v1529;
            sub_1E67612FC(v1372, v1529, &qword_1ED096E68);
            v1401 = v957(v1372 + v1371, 1, v958);
            v1375 = v1749;
            if (v1401 != 1)
            {
              v1441 = v1750;
              v1442 = v1373 + v1371;
              v1443 = v1660;
              (*(v1750 + 32))(v1660, v1442, v958);
              sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848]);
              LODWORD(v1761) = sub_1E68B3190();
              v1444 = *(v1441 + 8);
              v1444(v1443, v958);
              v1444(v1400, v958);
              sub_1E6744A10(v1373, &qword_1ED096E68);
              v1376 = v1758.f64[0];
              v1377 = v1614;
              if (v1761)
              {
LABEL_450:
                if (sub_1E68B3190())
                {
                  v1445 = *(v1589 + 48);
                  v1446 = v952[2];
                  v1447 = v1527;
                  v1446(v1527, v1653, *&v1376);
                  v1761 = v1445;
                  v1446(&v1445[v1447], v1377, *&v1376);
                  v1448 = v1376;
                  v1757.f64[0] = *(v1745 + 48);
                  if ((*&v1757.f64[0])(v1447, 1, v1375) == 1)
                  {
                    v1450 = v1754 + 1;
                    v1449 = v1754[1];
                    v1449(v1614, *&v1448);
                    v1760.f64[0] = *(v1745 + 8);
                    (*&v1760.f64[0])(v1619, v1375);
                    sub_1E6744A10(v1657, &qword_1ED096E68);
                    sub_1E6744A10(v1652, &qword_1ED096E68);
                    sub_1E6744A10(v1625, &qword_1ED096E68);
                    v1451 = v1762[1];
                    v1451(v1674, *&v1763);
                    v1754 = v1450;
                    v1449(v1653, *&v1448);
                    (*&v1760.f64[0])(v1654, v1375);
                    sub_1E6744A10(v1658, &qword_1ED096E68);
                    sub_1E6744A10(v1664, &qword_1ED096E68);
                    sub_1E6744A10(v1669, &qword_1ED096E68);
                    v1451(v1675, *&v1763);
                    if ((*&v1757.f64[0])(&v1761[v1447], 1, v1375) == 1)
                    {
                      v1449(v1527, *&v1758.f64[0]);
                      goto LABEL_202;
                    }
                  }

                  else
                  {
                    v1446(v1523, v1447, *&v1376);
                    if ((*&v1757.f64[0])(&v1761[v1447], 1, v1375) != 1)
                    {
                      v1498 = v1545;
                      v1499 = v1749;
                      (*&v1759.f64[0])(v1545, &v1761[v1527], v1749);
                      LODWORD(v1760.f64[0]) = sub_1E68B3190();
                      v1500 = *(v1745 + 8);
                      v1500(v1498, v1499);
                      v1761 = v1754[1];
                      (v1761)(v1614, *&v1758.f64[0]);
                      v1500(v1619, v1499);
                      sub_1E6744A10(v1657, &qword_1ED096E68);
                      sub_1E6744A10(v1652, &qword_1ED096E68);
                      sub_1E6744A10(v1625, &qword_1ED096E68);
                      v1501 = v1762[1];
                      v1502 = *&v1763;
                      v1501(v1674, *&v1763);
                      (v1761)(v1653, *&v1758.f64[0]);
                      v1500(v1654, v1499);
                      sub_1E6744A10(v1658, &qword_1ED096E68);
                      sub_1E6744A10(v1664, &qword_1ED096E68);
                      sub_1E6744A10(v1669, &qword_1ED096E68);
                      v1501(v1675, v1502);
                      v1500(v1523, v1499);
                      (v1761)(v1527, *&v1758.f64[0]);
                      if (LOBYTE(v1760.f64[0]))
                      {
                        goto LABEL_202;
                      }

                      goto LABEL_379;
                    }

                    v1761 = v1754[1];
                    v1476 = v1758.f64[0];
                    (v1761)(v1614, *&v1758.f64[0]);
                    v1760.f64[0] = *(v1745 + 8);
                    v1477 = v1749;
                    (*&v1760.f64[0])(v1619, v1749);
                    sub_1E6744A10(v1657, &qword_1ED096E68);
                    sub_1E6744A10(v1652, &qword_1ED096E68);
                    sub_1E6744A10(v1625, &qword_1ED096E68);
                    v1478 = v1762[1];
                    v1479 = *&v1763;
                    v1478(v1674, *&v1763);
                    (v1761)(v1653, *&v1476);
                    v1480 = v1760.f64[0];
                    (*&v1760.f64[0])(v1654, v1477);
                    sub_1E6744A10(v1658, &qword_1ED096E68);
                    sub_1E6744A10(v1664, &qword_1ED096E68);
                    sub_1E6744A10(v1669, &qword_1ED096E68);
                    v1478(v1675, v1479);
                    (*&v1480)(v1523, v1477);
                  }

                  (*(v1555 + 8))(v1527, v1589);
                  goto LABEL_379;
                }
              }

LABEL_454:
              v1761 = v952[1];
              (v1761)(v1377, *&v1376);
              v1760.f64[0] = *(v1745 + 8);
              (*&v1760.f64[0])(v1619, v1375);
              sub_1E6744A10(v1657, &qword_1ED096E68);
              sub_1E6744A10(v953, &qword_1ED096E68);
              sub_1E6744A10(v1625, &qword_1ED096E68);
              v784 = v1762[1];
              v959 = *&v1763;
              v784(v1674, *&v1763);
              (v1761)(v1653, *&v1376);
              (*&v1760.f64[0])(v1654, v1375);
              v1310 = v1658;
              goto LABEL_376;
            }

            (*(v1750 + 8))(v1400, v958);
          }

          sub_1E6744A10(v1373, &qword_1ED098130);
          v1376 = v1758.f64[0];
          v1377 = v1614;
          goto LABEL_454;
        }

        goto LABEL_374;
      }

      goto LABEL_372;
  }
}