unint64_t sub_1ABC438FC()
{
  result = qword_1EB4D5CE8;
  if (!qword_1EB4D5CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5CE8);
  }

  return result;
}

uint64_t FileLoader.__allocating_init(searchPaths:baseUrl:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = OBJC_IVAR____TtC20IntelligencePlatform10FileLoader_baseUrl;
  v9 = sub_1ABF21CF4();
  sub_1ABA7BBB0(v9);
  (*(v10 + 32))(v7 + v8, a2);
  return v7;
}

uint64_t FileLoader.init(searchPaths:baseUrl:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = OBJC_IVAR____TtC20IntelligencePlatform10FileLoader_baseUrl;
  v5 = sub_1ABF21CF4();
  sub_1ABA7BBB0(v5);
  (*(v6 + 32))(v2 + v4, a2);
  return v2;
}

uint64_t FileLoader.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC20IntelligencePlatform10FileLoader_baseUrl;
  v3 = sub_1ABF21CF4();
  sub_1ABA7BBB0(v3);
  (*(v4 + 8))(v0 + v2);
  return v0;
}

uint64_t FileLoader.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC20IntelligencePlatform10FileLoader_baseUrl;
  v3 = sub_1ABF21CF4();
  sub_1ABA7BBB0(v3);
  (*(v4 + 8))(&v0[v2]);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_1ABC43B3C()
{
  result = qword_1EB4D5CF0;
  if (!qword_1EB4D5CF0)
  {
    sub_1ABF217B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5CF0);
  }

  return result;
}

unint64_t sub_1ABC43B94()
{
  result = qword_1EB4D5CF8;
  if (!qword_1EB4D5CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5CF8);
  }

  return result;
}

uint64_t sub_1ABC43BF0()
{
  result = sub_1ABF21CF4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FileLoaderInternalError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1ABC43D7C()
{
  result = qword_1EB4D5D00[0];
  if (!qword_1EB4D5D00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4D5D00);
  }

  return result;
}

unint64_t sub_1ABC43DD0(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t static FileUtils.loadJson<A>(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v56 = sub_1ABF21CF4();
  v6 = sub_1ABA7BB64(v56);
  v53 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7BC58();
  v54 = v11 - v10;
  v57 = a2;
  v12 = *(a2 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7BC58();
  v17 = v16 - v15;
  v18 = sub_1ABF23C54();
  v19 = sub_1ABA7BB64(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7BC58();
  v26 = v25 - v24;
  v27 = a1;
  sub_1ABF23BC4();
  sub_1ABF23C44();
  v28 = sub_1ABF23C14();
  v30 = v29;

  (*(v21 + 8))(v26, v18);
  if (v30 >> 60 == 15)
  {
    sub_1ABF24AB4();

    v58[0] = 0xD00000000000001ELL;
    v58[1] = 0x80000001ABF89530;
    sub_1ABAE27F8();
    v31 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v31);

    sub_1ABBAA394();
    v32 = swift_allocError();
    *v33 = 0xD00000000000001ELL;
    v33[1] = 0x80000001ABF89530;
    swift_willThrow();
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v34 = sub_1ABF237F4();
    sub_1ABA7AA24(v34, qword_1ED871B40);
    (*(v53 + 16))(v54, v27, v56);
    v35 = v32;
    v36 = sub_1ABF237D4();
    v37 = sub_1ABF24674();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v58[0] = v40;
      *v38 = 136315394;
      sub_1ABAE27F8();
      v41 = sub_1ABF24FF4();
      v43 = v42;
      (*(v53 + 8))(v54, v56);
      v44 = sub_1ABADD6D8(v41, v43, v58);

      *(v38 + 4) = v44;
      *(v38 + 12) = 2112;
      v45 = v32;
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 14) = v46;
      *v39 = v46;
      _os_log_impl(&dword_1ABA78000, v36, v37, "Failed to load data from %s with error %@", v38, 0x16u);
      sub_1ABB24B18(v39);
      MEMORY[0x1AC5AB8B0](v39, -1, -1);
      sub_1ABA84B54(v40);
      MEMORY[0x1AC5AB8B0](v40, -1, -1);
      MEMORY[0x1AC5AB8B0](v38, -1, -1);
    }

    else
    {

      (*(v53 + 8))(v54, v56);
    }

    v47 = 1;
    v48 = v57;
    v49 = a4;
  }

  else
  {
    v51 = objc_autoreleasePoolPush();
    v48 = v57;
    sub_1ABC44328(v28, v30, v57, a3, v58);
    objc_autoreleasePoolPop(v51);
    sub_1ABAC9310(v28, v30);
    v49 = a4;
    (*(v12 + 32))(a4, v17, v57);
    v47 = 0;
  }

  return sub_1ABA7B9B4(v49, v47, 1, v48);
}

uint64_t sub_1ABC44328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = sub_1ABF217F4();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1ABF217E4();
  sub_1ABF217D4();

  if (v5)
  {
    *a5 = v5;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FileUtils(_BYTE *result, int a2, int a3)
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

uint64_t FlattenedSequence.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64(AssociatedTypeWitness);
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  (*(v14 + 16))(&v18 - v12, v2, v11);
  v15 = *(a1 + 24);
  v16 = *(a1 + 40);
  sub_1ABC445A4(v13, *(v2 + *(a1 + 52)), *(v2 + *(a1 + 52) + 8), a2);
}

uint64_t sub_1ABC445A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = type metadata accessor for FlattenedSequence.FlattenedSequenceIterator();
  v7 = *(v6 + 56);
  swift_getAssociatedTypeWitness();
  sub_1ABA7ED8C();
  sub_1ABA7B9B4(v8, v9, v10, v11);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = (*(*(AssociatedTypeWitness - 8) + 32))(a4, a1, AssociatedTypeWitness);
  v14 = (a4 + *(v6 + 52));
  *v14 = a2;
  v14[1] = a3;
  return result;
}

uint64_t FlattenedSequence.FlattenedSequenceIterator.next()@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = a1[3];
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v85 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v84 = sub_1ABF247E4();
  sub_1ABA7BB64(v84);
  v10 = v9;
  v12 = *(v11 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v13);
  v83 = &v71 - v14;
  v15 = a1[4];
  v97 = a1;
  v88 = a1[2];
  v89 = v15;
  v16 = swift_getAssociatedTypeWitness();
  v73 = sub_1ABF247E4();
  sub_1ABA7BB64(v73);
  v72 = v17;
  v19 = *(v18 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v71 - v21;
  v23 = *(v16 - 8);
  v24 = *(v23 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v25);
  v82 = &v71 - v26;
  v93 = v7;
  v94 = v3;
  v27 = AssociatedTypeWitness;
  v28 = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64(v28);
  v30 = v29;
  v32 = *(v31 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v33);
  v77 = &v71 - v34;
  v35 = sub_1ABF247E4();
  v36 = sub_1ABA7BB64(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v42 = &v71 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v92 = &v71 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v95 = &v71 - v46;
  sub_1ABA7ED8C();
  sub_1ABA7B9B4(v47, v48, v49, v28);
  v98 = (v38 + 8);
  v74 = v38;
  v90 = *(v38 + 16);
  v91 = v38 + 16;
  v76 = (v30 + 32);
  v79 = (v23 + 8);
  v80 = (v23 + 32);
  v78 = (v10 + 40);
  v86 = v35;
  v87 = v28;
  for (i = v42; ; v42 = i)
  {
    while (1)
    {
      v50 = v92;
      v90(v92, v95, v35);
      v51 = sub_1ABA7E1E0(v50, 1, v28);
      v52 = *v98;
      (*v98)(v50, v35);
      if (v51 != 1)
      {
        return (*(v74 + 32))(v75, v95, v35);
      }

      v53 = *(v97 + 14);
      if (sub_1ABA7E1E0(v99 + v53, 1, v27))
      {
        sub_1ABA7ED8C();
        sub_1ABA7B9B4(v54, v55, v56, v28);
        break;
      }

      swift_getAssociatedConformanceWitness();
      sub_1ABF24864();
      if (sub_1ABA7E1E0(v42, 1, v28) == 1)
      {
        break;
      }

      v64 = v95;
      v52(v95, v35);
      v65 = *v76;
      v66 = v77;
      (*v76)(v77, v42, v28);
      v65(v64, v66, v28);
      sub_1ABA7B9B4(v64, 0, 1, v28);
    }

    v96 = v53;
    v57 = v27;
    v58 = v99;
    v59 = v97;
    v52(v42, v35);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_1ABF24864();
    if (sub_1ABA7E1E0(v22, 1, v16) == 1)
    {
      break;
    }

    v60 = v82;
    (*v80)(v82, v22, v16);
    v61 = v58 + *(v59 + 13);
    v62 = *(v61 + 8);
    (*v61)(v60);
    v63 = v83;
    sub_1ABF23F04();
    (*v79)(v60, v16);
    v27 = v57;
    sub_1ABA7B9B4(v63, 0, 1, v57);
    (*v78)(v58 + v96, v63, v84);
    v35 = v86;
    v28 = v87;
  }

  v52(v95, v86);
  (*(v72 + 8))(v22, v73);
  sub_1ABA7ED8C();
  return sub_1ABA7B9B4(v68, v69, v70, v87);
}

uint64_t sub_1ABC44DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  FlattenedSequence.makeIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

unint64_t sub_1ABC44E30(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    result = sub_1ABC45270();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1ABC44ECC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v6 = *(a3 + 16);
  result = swift_getAssociatedTypeWitness();
  v8 = *(*(result - 8) + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(*(result - 8) + 84);
  }

  v10 = *(*(result - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v9 >= a2)
  {
LABEL_26:
    if (v8 < 0x7FFFFFFF)
    {
      v18 = *((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }

    else
    {

      return sub_1ABA7E1E0(a1, v8, result);
    }
  }

  else
  {
    v11 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v12 = v11 & 0xFFFFFFF8;
    if ((v11 & 0xFFFFFFF8) != 0)
    {
      v13 = 2;
    }

    else
    {
      v13 = a2 - v9 + 1;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    switch(v15)
    {
      case 1:
        v16 = *(a1 + v11);
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v16 = *(a1 + v11);
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v16 = *(a1 + v11);
        if (!v16)
        {
          goto LABEL_26;
        }

LABEL_22:
        v17 = v16 - 1;
        if (v12)
        {
          v17 = 0;
          LODWORD(v12) = *a1;
        }

        result = v9 + (v12 | v17) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1ABC45060(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 32);
  v8 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(*(AssociatedTypeWitness - 8) + 84);
  }

  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  v13 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v12 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v14 = a3 - v11 + 1;
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

  if (v11 < a3)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (a2 <= v11)
  {
    switch(v17)
    {
      case 1:
        *(a1 + v13) = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *(a1 + v13) = 0;
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
        *(a1 + v13) = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v10 < 0x7FFFFFFF)
          {
            v20 = ((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v21 = a2 & 0x7FFFFFFF;
              v20[1] = 0;
            }

            else
            {
              v21 = (a2 - 1);
            }

            *v20 = v21;
          }

          else
          {

            sub_1ABA7B9B4(a1, a2, v10, AssociatedTypeWitness);
          }
        }

        break;
    }
  }

  else
  {
    if (((v12 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v18 = a2 - v11;
    }

    else
    {
      v18 = 1;
    }

    if (((v12 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v19 = ~v11 + a2;
      bzero(a1, v13);
      *a1 = v19;
    }

    switch(v17)
    {
      case 1:
        *(a1 + v13) = v18;
        break;
      case 2:
        *(a1 + v13) = v18;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *(a1 + v13) = v18;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1ABC45270()
{
  result = qword_1EB4D5D88[0];
  if (!qword_1EB4D5D88[0])
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, qword_1EB4D5D88);
  }

  return result;
}

unint64_t sub_1ABC452B8(void *a1)
{
  v2 = a1[4];
  v3 = a1[2];
  result = swift_getAssociatedTypeWitness();
  if (v5 <= 0x3F)
  {
    result = sub_1ABC45270();
    if (v6 <= 0x3F)
    {
      v7 = a1[5];
      v8 = a1[3];
      swift_getAssociatedTypeWitness();
      result = sub_1ABF247E4();
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1ABC45390(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v6 = a3[4];
  v7 = a3[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = a3[5];
  v12 = a3[3];
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(v13 - 8);
  v15 = *(v14 + 84);
  v16 = v15 - 1;
  if (!v15)
  {
    v16 = 0;
  }

  if (v10 <= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v10;
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(v9 + 64);
  v20 = *(v14 + 80);
  v21 = *(*(v13 - 8) + 64);
  if (!v15)
  {
    ++v21;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v18)
  {
    goto LABEL_30;
  }

  v22 = v21 + ((v20 + ((v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v20);
  v23 = 8 * v22;
  if (v22 <= 3)
  {
    v26 = ((a2 - v18 + ~(-1 << v23)) >> v23) + 1;
    if (HIWORD(v26))
    {
      v24 = *(a1 + v22);
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    if (v26 > 0xFF)
    {
      v24 = *(a1 + v22);
      if (!*(a1 + v22))
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    if (v26 < 2)
    {
LABEL_30:
      if (v10 == v18)
      {

        return sub_1ABA7E1E0(a1, v10, AssociatedTypeWitness);
      }

      else
      {
        v28 = ((a1 + v19 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((v17 & 0x80000000) != 0)
        {
          v30 = sub_1ABA7E1E0((v28 + v20 + 16) & ~v20, v15, v13);
          if (v30 >= 2)
          {
            return v30 - 1;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          v29 = *v28;
          if (v29 >= 0xFFFFFFFF)
          {
            LODWORD(v29) = -1;
          }

          return (v29 + 1);
        }
      }
    }
  }

  v24 = *(a1 + v22);
  if (!*(a1 + v22))
  {
    goto LABEL_30;
  }

LABEL_22:
  v27 = (v24 - 1) << v23;
  if (v22 > 3)
  {
    v27 = 0;
  }

  if (v22)
  {
    if (v22 > 3)
    {
      LODWORD(v22) = 4;
    }

    switch(v22)
    {
      case 2:
        LODWORD(v22) = *a1;
        break;
      case 3:
        LODWORD(v22) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v22) = *a1;
        break;
      default:
        LODWORD(v22) = *a1;
        break;
    }
  }

  return v18 + (v22 | v27) + 1;
}

void sub_1ABC4565C(_BYTE *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v8 = a4[4];
  v9 = a4[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 84);
  v13 = a4[5];
  v14 = a4[3];
  v15 = swift_getAssociatedTypeWitness();
  v16 = 0;
  v17 = *(v15 - 8);
  v18 = *(v17 + 84);
  v19 = v18 - 1;
  if (!v18)
  {
    v19 = 0;
  }

  if (v12 > v19)
  {
    v19 = v12;
  }

  if (v19 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v19;
  }

  v21 = *(v11 + 64);
  v22 = *(v17 + 80);
  v23 = (v22 + ((v21 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v22;
  v24 = *(*(v15 - 8) + 64);
  if (!v18)
  {
    ++v24;
  }

  v25 = v23 + v24;
  v26 = 8 * (v23 + v24);
  if (a3 > v20)
  {
    if (v25 <= 3)
    {
      v27 = ((a3 - v20 + ~(-1 << v26)) >> v26) + 1;
      if (HIWORD(v27))
      {
        v16 = 4;
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
          v16 = v28;
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
  }

  if (v20 >= a2)
  {
    switch(v16)
    {
      case 1:
        a1[v25] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        return;
      case 2:
        *&a1[v25] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        return;
      case 3:
LABEL_53:
        __break(1u);
        return;
      case 4:
        *&a1[v25] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (!a2)
        {
          return;
        }

LABEL_33:
        if (v12 == v20)
        {
          v32 = a1;
          v33 = a2;
          v18 = v12;
          v15 = AssociatedTypeWitness;
        }

        else
        {
          v34 = (&a1[v21 + 7] & 0xFFFFFFFFFFFFFFF8);
          if ((v19 & 0x80000000) == 0)
          {
            if ((a2 & 0x80000000) != 0)
            {
              v35 = a2 & 0x7FFFFFFF;
              v34[1] = 0;
            }

            else
            {
              v35 = (a2 - 1);
            }

            *v34 = v35;
            return;
          }

          v32 = (v34 + v22 + 16) & ~v22;
          v33 = (a2 + 1);
        }

        sub_1ABA7B9B4(v32, v33, v18, v15);
        break;
    }
  }

  else
  {
    v29 = ~v20 + a2;
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

    switch(v16)
    {
      case 1:
        a1[v25] = v30;
        break;
      case 2:
        *&a1[v25] = v30;
        break;
      case 3:
        goto LABEL_53;
      case 4:
        *&a1[v25] = v30;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1ABC459B8()
{
  *&__src[0] = 0x68636165726F66;
  *(&__src[0] + 1) = 0xE700000000000000;
  *&__src[1] = &unk_1F208E578;
  *(&__src[1] + 1) = 0x646E617265706FLL;
  *&__src[2] = 0xE700000000000000;
  BYTE8(__src[2]) = 0;
  *&__src[3] = 0xD000000000000092;
  *(&__src[3] + 1) = 0x80000001ABF8CEA0;
  *&__src[4] = 0;
  *(&__src[4] + 1) = 0xE000000000000000;
  memset(&__src[5], 0, 32);
  memset(v4, 0, sizeof(v4));
  memcpy((v0 + 16), __src, 0x70uLL);

  sub_1ABB51320(__src, &v2);
  sub_1ABA925A4(v4, &qword_1EB4D1B10, &unk_1ABF33FA0);

  sub_1ABB5137C(__src);
  return v0;
}

uint64_t sub_1ABC45AA4()
{
  v0 = sub_1ABF24D84();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1ABC45AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  v11 = sub_1ABE719F4();
  if (v11)
  {
    v12 = v11;
    swift_beginAccess();
    v13 = *(v12 + 24);
    v5 = v13 != 0;
    if (v13)
    {
      v16 = *(v12 + 24);

      sub_1ABE18604(a1, &v16, 1, a2, a3, a4);
    }

    else
    {
    }
  }

  else
  {
    sub_1ABAF2860();
    swift_allocError();
    sub_1ABA8F41C(v14, 51);
  }

  return v5;
}

uint64_t sub_1ABC45C24(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    type metadata accessor for ResultGraph();
    v1 = swift_allocObject();
    v2 = MEMORY[0x1E69E7CC0];
    *(v1 + 16) = sub_1ABF239C4();
    *(v1 + 24) = v2;
  }
}

uint64_t sub_1ABC45CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v104 = a7;
  v8 = v7;
  v101 = a6;
  Context = type metadata accessor for QueryContext();
  v14 = *(*(Context - 8) + 64);
  MEMORY[0x1EEE9AC00](Context);
  v16 = v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v82 - v18;
  v95 = a2;
  v96 = a3;
  v97 = a4;
  v98 = a5;
  v20 = v103;
  v21 = v101;
  v100 = a1;
  v101 = v8;
  result = sub_1ABC4645C(a1, a2, a3, a4, a5, v21, v104);
  if (!v20)
  {
    v99 = result;
    v90 = v16;
    v94 = v19;
    v23 = 0;
    v24 = sub_1ABC4686C();
    v25 = sub_1ABE719F4();
    if (v25)
    {
      v26 = v25;
      swift_beginAccess();
      v93 = *(v26 + 24);
      if (v93)
      {
        v27 = *(v100 + 8);
        if (v27)
        {
          v83 = v24;
          v82[2] = v26;

          v82[1] = v27;
          v28 = sub_1ABE48AE8();
          v87 = type metadata accessor for ResultGraph();
          v29 = swift_allocObject();
          v30 = MEMORY[0x1E69E7CC0];
          result = sub_1ABF239C4();
          v31 = 0;
          v88 = v29;
          v89 = v28;
          v86 = v28 + 32;
          *(v29 + 16) = result;
          *(v29 + 24) = v30;
          v84 = v104 + 1;
          v32 = __OFADD__(v104, 1);
          v85 = v32;
          v33 = 0.0;
          v34 = v94;
          while (1)
          {
            v35 = *(v89 + 16);
            if (v31 == v35)
            {
              break;
            }

            if (v31 >= v35)
            {
              goto LABEL_46;
            }

            v98 = v23;
            v91 = v31;
            v36 = v86 + 40 * v31;
            LODWORD(v104) = *(v36 + 32);
            v37 = *(v36 + 24);
            v39 = *(v36 + 8);
            v38 = *(v36 + 16);
            v40 = *v36;

            sub_1ABE3CF94(v34);
            v41 = swift_allocObject();
            v42 = MEMORY[0x1E69E7CC0];
            *(v41 + 16) = sub_1ABF239C4();
            *(v41 + 24) = v42;
            v43 = *(v34 + 8);

            *(v34 + 8) = v41;
            __src[0] = v40;
            __src[1] = v39;
            __src[2] = v38;
            __src[3] = v37;
            LOBYTE(__src[4]) = v104;
            sub_1ABE48C84(__src);

            v44 = sub_1ABE71D94();
            v119 = v44;
            result = sub_1ABE71DAC();
            if ((result & 1) == 0)
            {
              v45 = v99[5];
              v99[5] = v44;
            }

            v46 = v98;
            if (v85)
            {
              goto LABEL_47;
            }

            v47 = v94;
            v48 = v95;
            v49 = v84;
            v51 = v96;
            v50 = v97;
            sub_1ABE18AE8(v94, &v119, v99, v84, 1, v95, v96, v97);
            if (v46)
            {

              return sub_1ABB529C4(v47);
            }

            v52 = sub_1ABE177BC(__src, v47, &v119, v93, v49, v48, v51, v50);
            v98 = 0;
            memcpy(v117, __src, 0x69uLL);
            sub_1ABA925A4(v117, &qword_1EB4D3430, &unk_1ABF6B740);
            v33 = v33 + 1.0;
            result = sub_1ABE48AE8();
            v53 = result;
            v104 = *(result + 16);
            v92 = v52;
            if (v104)
            {
              v54 = 0;
              v103 = result + 32;
              v55 = Context;
              v101 = result;
              while (v54 < *(v53 + 16))
              {
                v56 = v103 + 40 * v54;
                v57 = *(v56 + 8);
                v58 = *(v56 + 16);
                swift_bridgeObjectRetain_n();
                swift_bridgeObjectRetain_n();
                sub_1ABE7A35C(v58);
                v60 = v59;

                swift_bridgeObjectRelease_n();
                v61 = *(v60 + 16);
                if (v61)
                {
                  v62 = (v60 + 32);
                  for (i = v61 - 1; ; --i)
                  {
                    memcpy(v110, v62, sizeof(v110));
                    v64 = *(v62 + 40);
                    v106 = *(v62 + 24);
                    v107 = v64;
                    v108 = *(v62 + 56);
                    v109 = *(v62 + 72);
                    v111 = *v62;
                    v112 = 1.0 / v33;
                    v116 = v109;
                    v115 = v108;
                    v114 = v64;
                    v113 = v106;
                    sub_1ABB242A4(v110, &v105);
                    sub_1ABB24250(&v111);
                    v33 = v33 + 1.0;
                    if (!i)
                    {
                      break;
                    }

                    v62 = (v62 + 88);
                  }

                  v53 = v101;
                  v55 = Context;
                }

                else
                {
                }

                ++v54;

                if (v54 == v104)
                {

                  v52 = v92;
                  goto LABEL_27;
                }
              }

              __break(1u);
LABEL_46:
              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:
              __break(1u);
              return result;
            }

            v55 = Context;
LABEL_27:
            v65 = v91 + 1;
            if (v91)
            {
              if (v83)
              {
                sub_1ABE47F28(v52);
              }

              else
              {
                sub_1ABE483B8(v52);
              }

              v104 = v65;
              v66 = v94;
              v67 = v90;
              result = sub_1ABC46A54(v94, v90);
              v68 = *(v55 + 48);
              v69 = v67 + v68;
              v70 = *(v67 + v68);
              v71 = v100;
              v72 = (v100 + v68);
              v73 = *(v100 + v68);
              v74 = __OFADD__(v73, v70);
              v75 = v73 + v70;
              if (v74)
              {
                goto LABEL_48;
              }

              v76 = *(v69 + 8);
              v77 = *(v69 + 16);
              *v72 = v75;

              sub_1ABD7DA50(v76);
              sub_1ABD7DFB4(v77);

              v78 = *(v67 + 16);
              if (v78 <= *(v71 + 16))
              {
                v78 = *(v71 + 16);
              }

              *(v71 + 16) = v78;
              sub_1ABB529C4(v67);
              result = sub_1ABB529C4(v66);
              v31 = v104;
              v23 = v98;
              v34 = v66;
            }

            else
            {
              sub_1ABE48DC0(v52);

              v34 = v94;
              result = sub_1ABB529C4(v94);
              v31 = v65;
              v23 = v98;
            }
          }

          v80 = v99;
          *(v100 + 8) = v88;
          if (!sub_1ABE71DAC())
          {
            v81 = v80[5];
            v80[5] = 0;
          }
        }

        else
        {
        }
      }
    }

    sub_1ABAF2860();
    swift_allocError();
    sub_1ABA8F41C(v79, 40);
  }

  return result;
}

uint64_t sub_1ABC4645C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_1ABE719F4();
  if (!v14)
  {
    sub_1ABAF2860();
    swift_allocError();
    *v17 = 0xD000000000000033;
    *(v17 + 8) = 0x80000001ABF8CFD0;
    *(v17 + 16) = 4;
    swift_willThrow();
    return a1;
  }

  v15 = v14;
  v36 = a1;
  swift_beginAccess();
  v41 = v15;
  v16 = *(v15 + 24);
  if (v16)
  {
    a1 = v16;
  }

  else
  {
    type metadata accessor for KnosisQueryParam();
    v18 = sub_1ABF239C4();
    type metadata accessor for QueryNode();
    swift_allocObject();
    a1 = sub_1ABE73A74(0, 0xE000000000000000, v18);
  }

  v40 = a1;
  v19 = sub_1ABE71DAC();
  swift_retain_n();

  if (v19 || (result = sub_1ABE71D70(), (result & 1) != 0))
  {
    v21 = v41;
    swift_beginAccess();
    if (*(*(v41 + 16) + 16))
    {
      type metadata accessor for ResultGraph();
      v22 = swift_allocObject();
      v23 = MEMORY[0x1E69E7CC0];
      *(v22 + 16) = sub_1ABF239C4();
      *(v22 + 24) = v23;
      v24 = *(*(v21 + 16) + 16);
      if (v24)
      {
        v25 = v24 - 1;
        v26 = ( + 40);
        v27 = 1.0;
        while (1)
        {
          v28 = *v26;
          __src[0] = *(v26 - 1);
          v29 = __src[0];
          __src[1] = v28;
          swift_bridgeObjectRetain_n();
          MEMORY[0x1AC5A9410](126, 0xE100000000000000);

          MEMORY[0x1AC5A9410](126, 0xE100000000000000);

          *&__src[2] = 1.0 / v27;
          __src[3] = v29;
          __src[4] = v28;
          __src[5] = 0;
          __src[6] = 0;
          *&__src[7] = xmmword_1ABF4EC00;
          __src[9] = 0xE000000000000000;
          __src[10] = MEMORY[0x1E69E7CC0];
          v37 = 0;
          sub_1ABE48E58(__src, &v37);
          memcpy(__dst, __src, 0x58uLL);
          sub_1ABB24250(__dst);
          if (!v25)
          {
            break;
          }

          v27 = v27 + 1.0;
          --v25;
          v26 += 2;
        }
      }

      v30 = *(v36 + 8);

      *(v36 + 8) = v22;
    }

    goto LABEL_15;
  }

  if (!__OFADD__(a7, 1))
  {
    v33 = sub_1ABE177BC(__dst, v36, &v40, a5, a7 + 1, a2, a3, a4);
    if (!v7)
    {
      v34 = v33;
      memcpy(__src, __dst, 0x69uLL);
      sub_1ABA925A4(__src, &qword_1EB4D3430, &unk_1ABF6B740);
      v35 = *(v36 + 8);

      *(v36 + 8) = v34;
      a1 = v40;
LABEL_15:
      if (sub_1ABE71DAC())
      {
      }

      else
      {
        while (1)
        {
          v31 = *(a1 + 40);
          if (!v31)
          {
            break;
          }

          v32 = *(a1 + 40);

          a1 = v31;
        }

        *(a1 + 80) = 1;
      }

      return a1;
    }

    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABC4686C()
{
  v0 = sub_1ABE719F4();
  if (!v0)
  {
    sub_1ABAF2860();
    swift_allocError();
    *v5 = 0xD000000000000025;
    *(v5 + 8) = 0x80000001ABF8CF70;
    *(v5 + 16) = 4;
    return swift_willThrow();
  }

  v1 = v0;
  swift_beginAccess();
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = (v2 + 16);
    v4 = (v2 + 24);
  }

  else
  {
    swift_beginAccess();
    v7 = *(v1 + 16);
    if (!v7[2])
    {
      v11 = 0x80000001ABF8CF70;
      sub_1ABAF2860();
      swift_allocError();
      v13 = 0xD000000000000025;
      goto LABEL_11;
    }

    v3 = v7 + 4;
    v4 = v7 + 5;
  }

  v8 = *v3;
  v9 = *v4;

  v10 = sub_1ABC45AA4();
  if (v10 != 2)
  {
    v14 = v10;

    return v14 & 1;
  }

  v11 = 0x80000001ABF8CFA0;
  sub_1ABAF2860();
  swift_allocError();
  v13 = 0xD000000000000027;
LABEL_11:
  *v12 = v13;
  *(v12 + 8) = v11;
  *(v12 + 16) = 4;
  swift_willThrow();
}

uint64_t sub_1ABC46A54(uint64_t a1, uint64_t a2)
{
  Context = type metadata accessor for QueryContext();
  (*(*(Context - 8) + 16))(a2, a1, Context);
  return a2;
}

uint64_t UnicodeWrapperTokenizer.wrappedTokenizer.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return swift_unknownObjectRetain();
}

uint64_t UnicodeWrapperTokenizer.__allocating_init(db:arguments:)()
{
  v0 = swift_allocObject();
  UnicodeWrapperTokenizer.init(db:arguments:)();
  return v0;
}

uint64_t *UnicodeWrapperTokenizer.init(db:arguments:)()
{
  v2 = *v0;
  v3 = sub_1ABF229A4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1ABF22994();
  v8 = sub_1ABF22E14();
  if (v1)
  {

    (*(v4 + 8))(v7, v3);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v8;
    v11 = v9;
    (*(v4 + 8))(v7, v3);

    v0[2] = v10;
    v0[3] = v11;
  }

  return v0;
}

uint64_t UnicodeWrapperTokenizer.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t UnicodeWrapperTokenizer.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABC46E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  v12 = sub_1ABC46EFC(&qword_1ED86FEB8);

  return MEMORY[0x1EEE09A28](a1, a2, a3, a4, a5, v11, v12);
}

uint64_t sub_1ABC46EFC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UnicodeWrapperTokenizer();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t CustomFutureLifeEventContext.__allocating_init(context:)(uint64_t a1)
{
  v3 = *(v1 + 80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, a1, v3, v6);
  v9 = type metadata accessor for ViewService();
  v10 = static ViewService.clientService.getter(v9);
  v11 = CustomFutureLifeEventContext.__allocating_init(context:viewService:)(v8, v10);
  (*(v4 + 8))(a1, v3);
  return v11;
}

uint64_t CustomFutureLifeEventContext.__allocating_init(context:viewService:)(uint64_t a1, void *a2)
{
  sub_1ABA7D028();
  v4 = swift_allocObject();
  CustomFutureLifeEventContext.init(context:viewService:)(a1, a2);
  return v4;
}

void *CustomFutureLifeEventContext.init(context:viewService:)(uint64_t a1, void *a2)
{
  v4 = v2;
  v7 = *v4;
  v8 = *(*v4 + 80);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = v21 - v12;
  (*(v9 + 16))(v21 - v12, a1, v8, v11);
  v14 = type metadata accessor for FutureLifeEventView();
  sub_1ABA7D028();
  swift_allocObject();
  v15 = FutureLifeEventView.init(viewService:)(a2);
  if (v3)
  {
    v16 = *(v9 + 8);
    v16(a1, v8);
    v16(v13, v8);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v17 = v15;
    v18 = sub_1ABC47B14(&qword_1EB4D5E10, type metadata accessor for FutureLifeEventView);
    v19 = *(v7 + 88);
    v21[0] = v14;
    v21[1] = v8;
    v21[2] = v18;
    v21[3] = v19;
    type metadata accessor for EventBaseContext();
    (*(v9 + 8))(a1, v8);
    v21[0] = v17;
    v4[2] = sub_1ABC26464(v13, v21);
  }

  return v4;
}

uint64_t CustomFutureLifeEventContext.__allocating_init<>()()
{
  v0 = type metadata accessor for ViewService();
  v1 = static ViewService.clientService.getter(v0);
  sub_1ABA7D028();
  v2 = swift_allocObject();
  CustomFutureLifeEventContext.init<>(viewService:)(v1);
  return v2;
}

uint64_t CustomFutureLifeEventContext.__allocating_init<>(viewService:)(void *a1)
{
  sub_1ABA7D028();
  v2 = swift_allocObject();
  CustomFutureLifeEventContext.init<>(viewService:)(a1);
  return v2;
}

uint64_t *CustomFutureLifeEventContext.init<>(viewService:)(void *a1)
{
  v3 = v1;
  v5 = *v3;
  type metadata accessor for FutureLifeEventView();
  sub_1ABA7D028();
  swift_allocObject();
  v6 = a1;
  v7 = FutureLifeEventView.init(viewService:)(v6);
  if (v2)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v8 = v7;
    v10 = ViewService.subgraphView(name:tableName:batchSize:)(0xD000000000000017, 0x80000001ABF8D090, 0xD000000000000018, 0x80000001ABF8D0B0, 10);
    sub_1ABAD219C(&qword_1EB4D1B40, &qword_1ABF34150);
    swift_allocObject();
    v11 = sub_1ABAE6998(v10);

    sub_1ABAD219C(&qword_1EB4D5E18, &qword_1ABF4ECF8);
    v12 = swift_allocObject();
    *(v12 + 16) = v8;
    *(v12 + 24) = v11;
    v3[2] = v12;
  }

  return v3;
}

uint64_t CustomFutureLifeEventContext.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t CustomFutureLifeEventContext.__deallocating_deinit()
{
  CustomFutureLifeEventContext.deinit();
  sub_1ABA7D028();

  return swift_deallocClassInstance();
}

void CustomFutureLifeEventContext.enumerateFutureActivityEvents<>(order:using:)()
{
  v1 = *(v0 + 16);
  type metadata accessor for CustomGraphActivityEvent(0);
  sub_1ABA8F440();
  sub_1ABC47B14(v2, v3);
  sub_1ABC26E40();
}

uint64_t sub_1ABC47638(uint64_t a1, BOOL *a2, uint64_t (*a3)(char *))
{
  v7 = sub_1ABAD219C(&qword_1EB4D5E20, &unk_1ABF643D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - v9;
  sub_1ABC47DD4(a1, v13 - v9);
  swift_storeEnumTagMultiPayload();
  v11 = a3(v10);
  result = sub_1ABC47E38(v10);
  if (!v3)
  {
    *a2 = (v11 & 1) == 0;
  }

  return result;
}

void CustomFutureLifeEventContext.enumerateFutureActivityEvents<A>(of:order:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 16);
  v8 = *(a6 + 8);
  sub_1ABC26E40();
}

void CustomFutureLifeEventContext.enumerateFutureActivityEvents<A>(of:order:block:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *v7;
  v9[2] = *(*v7 + 80);
  v9[3] = a5;
  v9[4] = *(v8 + 88);
  v9[5] = a6;
  v9[6] = a7;
  v9[7] = a3;
  v9[8] = a4;
  CustomFutureLifeEventContext.enumerateFutureActivityEvents<A>(of:order:using:)(a1, a2 & 1, sub_1ABC47B78, v9, a5, a6);
}

uint64_t sub_1ABC477CC(uint64_t a1, BOOL *a2, uint64_t (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1ABAE2850(&qword_1EB4D1AD0, &qword_1ABF33C70);
  v11 = sub_1ABF252B4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v20 - v15;
  (*(*(a6 - 8) + 16))(v20 - v15, a1, a6, v14);
  swift_storeEnumTagMultiPayload();
  v17 = a3(v16);
  if (v6)
  {
    return (*(v12 + 8))(v16, v11);
  }

  v19 = v17;
  result = (*(v12 + 8))(v16, v11);
  *a2 = (v19 & 1) == 0;
  return result;
}

void CustomFutureLifeEventContext.latestFutureActivityEvent<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(a3 + 8);
  sub_1ABC274B0();
}

uint64_t sub_1ABC479E0(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for CustomGraphActivityEvent(0);
  sub_1ABA8F440();
  v7 = sub_1ABC47B14(v5, v6);
  return a1(v4, v4, v7);
}

void CustomFutureLifeEventContext.earliestFutureActivityEvent<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(a3 + 8);
  sub_1ABC274DC();
}

id static CustomFutureLifeEventContext.subscribeToUpdateNotification(systemwideUniqueSubscriptionId:targetQueue:onReceiveUpdateNotification:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_allocWithZone(GDFutureLifeEventUpdateNotificationSubscription);

  v11 = a3;

  return sub_1ABC47BAC(a1, a2, v11, a4, a5);
}

uint64_t sub_1ABC47B14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1ABC47B78(uint64_t a1, BOOL *a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  v6 = *(v2 + 48);
  return sub_1ABC477CC(a1, a2, *(v2 + 56), *(v2 + 64), *(v2 + 16), *(v2 + 24));
}

id sub_1ABC47BAC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1ABF23BD4();

  v13[4] = a4;
  v13[5] = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1ABC3520C;
  v13[3] = &unk_1F20748A0;
  v10 = _Block_copy(v13);
  v11 = [v5 initWithSystemwideUniqueSubscriptionIdentifier:v9 targetQueue:a3 onReceiveUpdateNotificationBlock:v10];

  _Block_release(v10);

  return v11;
}

uint64_t sub_1ABC47CD8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1ABC47DD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomGraphActivityEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABC47E38(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D5E20, &unk_1ABF643D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FutureLifeEventEntry.startDate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_1ABF21EB4();
  v6 = sub_1ABA7BBB0(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2 + v4, v6);
}

uint64_t FutureLifeEventEntry.endDate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_1ABF21EB4();
  v6 = sub_1ABA7BBB0(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2 + v4, v6);
}

void FutureLifeEventEntry.entityClass.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  EntityClass.init(intValue:)(*(v2 + 7), &v13);
  v5 = v14;
  if (v14)
  {
    v6 = v17;
    v8 = v15;
    v7 = v16;
    *a2 = v13;
    *(a2 + 8) = v5;
    *(a2 + 16) = v8;
    *(a2 + 24) = v7;
    *(a2 + 32) = v6;
  }

  else
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v9 = sub_1ABF237F4();
    sub_1ABA7AA24(v9, qword_1ED871B40);
    v10 = sub_1ABF237D4();
    v11 = sub_1ABF24674();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1ABA78000, v10, v11, "FutureLifeEventEntry: entityClass: id.untyped.entityClass is nil.", v12, 2u);
      MEMORY[0x1AC5AB8B0](v12, -1, -1);
    }

    static GraphObjectBase.entityClass.getter(*(a1 + 16), *(*(a1 + 24) + 8));
  }
}

uint64_t FutureLifeEventEntry.cast<A>(as:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X3>, char *a4@<X8>)
{
  v24[0] = a4;
  v8 = sub_1ABF21EB4();
  v9 = sub_1ABA7BB64(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v24 - v17;
  v25 = *v4;
  v19 = *(a1 + 16);
  v20 = *(a1 + 24);
  type metadata accessor for TypedEntityIdentifier();
  v24[1] = a3;
  v21 = v24[2];
  result = TypedEntityIdentifier.cast<A>(as:)(a2, a3, &v26);
  if (!v21)
  {
    v25 = v26;
    v23 = *(v11 + 16);
    v23(v18, &v4[*(a1 + 36)], v8);
    v23(v15, &v4[*(a1 + 40)], v8);
    return sub_1ABC4823C(&v25, v18, v15, v24[0]);
  }

  return result;
}

uint64_t sub_1ABC4823C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = *a1;
  v7 = type metadata accessor for FutureLifeEventEntry();
  v8 = *(v7 + 36);
  v9 = sub_1ABF21EB4();
  sub_1ABA7BBB0(v9);
  v13 = *(v10 + 32);
  v13(&a4[v8], a2, v9);
  v11 = &a4[*(v7 + 40)];

  return (v13)(v11, a3, v9);
}

uint64_t sub_1ABC48308(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABC4835C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t static FutureLifeEventEntry.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v7 = *a2;
  v8 = v2;
  if (!static TypedEntityIdentifier.== infix(_:_:)(&v8, &v7))
  {
    return 0;
  }

  v3 = type metadata accessor for FutureLifeEventEntry();
  v4 = *(v3 + 36);
  if ((sub_1ABF21E54() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v3 + 40);

  return sub_1ABF21E54();
}

uint64_t FutureLifeEventEntry.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v21 = a2;
  v22 = v3;
  type metadata accessor for FutureLifeEventEntry.CodingKeys();
  sub_1ABA7D874();
  swift_getWitnessTable();
  v5 = sub_1ABF24FC4();
  sub_1ABA7BB64(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  v13 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  v14 = v23;
  sub_1ABF252E4();
  v28 = *v14;
  v27 = 0;
  type metadata accessor for TypedEntityIdentifier();
  swift_getWitnessTable();
  v15 = v24;
  sub_1ABF24F84();
  if (!v15)
  {
    v16 = v21;
    v17 = *(v21 + 36);
    v26 = 1;
    sub_1ABF21EB4();
    sub_1ABAE849C(&qword_1ED86B860);
    sub_1ABA7C254();
    v18 = *(v16 + 40);
    v25 = 2;
    sub_1ABA7C254();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t FutureLifeEventEntry.init(from:)@<X0>(uint64_t *a1@<X0>, void (*a2)(char *, char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a4;
  v46 = sub_1ABF21EB4();
  v7 = sub_1ABA7BB64(v46);
  v43 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v39 - v13;
  type metadata accessor for FutureLifeEventEntry.CodingKeys();
  sub_1ABA7D874();
  swift_getWitnessTable();
  v49 = sub_1ABF24EB4();
  sub_1ABA7BB64(v49);
  v44 = v14;
  v16 = *(v15 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v39 - v18;
  v47 = a2;
  v48 = a3;
  v20 = type metadata accessor for FutureLifeEventEntry();
  sub_1ABA7BB64(v20);
  v22 = v21;
  v24 = *(v23 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v39 - v26;
  v28 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  v50 = v19;
  v29 = v51;
  sub_1ABF252C4();
  if (v29)
  {
    return sub_1ABA84B54(a1);
  }

  v31 = v44;
  v30 = v45;
  v40 = v22;
  v32 = v27;
  v51 = v20;
  v33 = v46;
  type metadata accessor for TypedEntityIdentifier();
  v54 = 0;
  swift_getWitnessTable();
  sub_1ABF24E64();
  *v32 = v55;
  v53 = 1;
  sub_1ABAE849C(&qword_1ED870CD0);
  sub_1ABF24E64();
  v34 = *(v51 + 36);
  v47 = *(v43 + 32);
  v48 = v34;
  v47(&v32[v34], v30, v33);
  v52 = 2;
  v35 = v50;
  sub_1ABF24E64();
  (*(v31 + 8))(v35, v49);
  v36 = v51;
  v47(&v32[*(v51 + 40)], v42, v33);
  v37 = v40;
  (*(v40 + 16))(v41, v32, v36);
  sub_1ABA84B54(a1);
  return (*(v37 + 8))(v32, v36);
}

uint64_t sub_1ABC48ACC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v8 = *a1;
  v6 = *(a4 + 16);
  v5 = *(a4 + 24);
  return sub_1ABC4823C(&v8, a2, a3, a5);
}

uint64_t sub_1ABC48B38(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return static FutureLifeEventEntry.== infix(_:_:)(a1, a2);
}

uint64_t sub_1ABC48B7C(void *a1)
{
  v4 = sub_1ABAD219C(&qword_1EB4D5EC8, &qword_1ABF4F190);
  sub_1ABA7BB64(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17[-v10];
  v12 = *v1;
  v14 = v1[1];
  v13 = v1[2];
  v15 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABC49620();
  sub_1ABF252E4();
  v18 = v12;
  v17[15] = 0;
  sub_1ABAE8BC8();
  sub_1ABF24F84();
  if (!v2)
  {
    v17[14] = 1;
    sub_1ABF24F54();
    v17[13] = 2;
    sub_1ABF24F54();
  }

  return (*(v6 + 8))(v11, v4);
}

uint64_t sub_1ABC48D20()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  MEMORY[0x1AC5AA8D0](*v0);
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x1AC5AA8D0](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  return MEMORY[0x1AC5AA8D0](*&v4);
}

uint64_t sub_1ABC48D84()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1ABF25234();
  MEMORY[0x1AC5AA8D0](*&v1);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1AC5AA8D0](*&v4);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  MEMORY[0x1AC5AA8D0](*&v5);
  return sub_1ABF25294();
}

uint64_t sub_1ABC48E0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1ABAD219C(&qword_1EB4D5EB8, &qword_1ABF4F188);
  sub_1ABA7BB64(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20[-v11];
  v13 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABC49620();
  sub_1ABF252C4();
  if (!v2)
  {
    v20[15] = 0;
    sub_1ABAE8B74();
    sub_1ABF24E64();
    v14 = v21;
    v20[14] = 1;
    sub_1ABF24E34();
    v17 = v16;
    v20[13] = 2;
    sub_1ABF24E34();
    v19 = v18;
    (*(v7 + 8))(v12, v5);
    *a2 = v14;
    a2[1] = v17;
    a2[2] = v19;
  }

  return sub_1ABA84B54(a1);
}

uint64_t sub_1ABC48FEC(uint64_t a1)
{
  v2 = sub_1ABC49620();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC49028(uint64_t a1)
{
  v2 = sub_1ABC49620();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABC4909C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABC494C4();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1ABC49124()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1ABF25234();
  MEMORY[0x1AC5AA8D0](*&v1);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1AC5AA8D0](*&v4);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  MEMORY[0x1AC5AA8D0](*&v5);
  return sub_1ABF25294();
}

unint64_t sub_1ABC491E0()
{
  result = qword_1EB4D5E28;
  if (!qword_1EB4D5E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5E28);
  }

  return result;
}

uint64_t sub_1ABC49234(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABC49274()
{
  result = qword_1EB4D5E30[0];
  if (!qword_1EB4D5E30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4D5E30);
  }

  return result;
}

uint64_t sub_1ABC492C8(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_1ABC49348(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for TypedEntityIdentifier();
  if (v4 <= 0x3F)
  {
    result = sub_1ABF21EB4();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1ABC49428()
{
  result = qword_1EB4CEDA8;
  if (!qword_1EB4CEDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEDA8);
  }

  return result;
}

unint64_t sub_1ABC4947C(void *a1)
{
  a1[1] = sub_1ABAEFDE0();
  a1[2] = sub_1ABAEFD08();
  a1[3] = sub_1ABC494C4();
  a1[4] = sub_1ABC49518();
  result = sub_1ABC4956C();
  a1[5] = result;
  return result;
}

unint64_t sub_1ABC494C4()
{
  result = qword_1EB4CEDA0;
  if (!qword_1EB4CEDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEDA0);
  }

  return result;
}

unint64_t sub_1ABC49518()
{
  result = qword_1EB4CEDB8;
  if (!qword_1EB4CEDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEDB8);
  }

  return result;
}

unint64_t sub_1ABC4956C()
{
  result = qword_1EB4CEDB0;
  if (!qword_1EB4CEDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEDB0);
  }

  return result;
}

unint64_t sub_1ABC495C0(uint64_t a1)
{
  result = sub_1ABC49274();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABC49620()
{
  result = qword_1EB4D5EC0;
  if (!qword_1EB4D5EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5EC0);
  }

  return result;
}

_BYTE *sub_1ABC49674(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABC49754()
{
  result = qword_1EB4D5ED0;
  if (!qword_1EB4D5ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5ED0);
  }

  return result;
}

unint64_t sub_1ABC497AC()
{
  result = qword_1EB4D5ED8;
  if (!qword_1EB4D5ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5ED8);
  }

  return result;
}

unint64_t sub_1ABC49804()
{
  result = qword_1EB4D5EE0;
  if (!qword_1EB4D5EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5EE0);
  }

  return result;
}

uint64_t ViewService.futureLifeEventEntryView()()
{
  type metadata accessor for FutureLifeEventEntryView();
  v1 = swift_allocObject();
  FutureLifeEventEntryView.init(viewService:)(v0);
  return v1;
}

uint64_t FutureLifeEventEntryView.__allocating_init(viewService:)(void *a1)
{
  v2 = swift_allocObject();
  FutureLifeEventEntryView.init(viewService:)(a1);
  return v2;
}

uint64_t *FutureLifeEventEntryView.init(viewService:)(void *a1)
{
  v4 = *v1;
  v5 = sub_1ABAE92E0(0xD000000000000012, 0x80000001ABF8D0F0);

  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v1[2] = v5;
  }

  return v1;
}

uint64_t FutureLifeEventEntryView.futureActivityEventEntries<A>(of:order:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(a4 + 8);
  type metadata accessor for FutureLifeEventEntry();
  sub_1ABA8F458();
  swift_getWitnessTable();
  return sub_1ABC28D04();
}

uint64_t FutureLifeEventEntryView.enumerateFutureActivityEventEntries<A>(of:order:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 16);
  v8 = *(a6 + 8);
  type metadata accessor for FutureLifeEventEntry();
  sub_1ABA8F458();
  swift_getWitnessTable();
  return sub_1ABC29498();
}

uint64_t sub_1ABC49BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(v4 + 16);
  v7 = *(a3 + 8);
  v8 = type metadata accessor for FutureLifeEventEntry();
  sub_1ABA8F458();
  WitnessTable = swift_getWitnessTable();
  return a4(v8, v8, WitnessTable);
}

uint64_t FutureLifeEventEntryView.futureActivityEventIds(order:)(char a1)
{
  sub_1ABA7D88C(a1);
  result = sub_1ABAEE8DC();
  if (!v1)
  {
    v3 = sub_1ABAEF5A4(result);

    return v3;
  }

  return result;
}

uint64_t FutureLifeEventEntryView.futureActivityEventIds<A>(of:order:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(a4 + 8);
  return sub_1ABC29D28();
}

uint64_t FutureLifeEventEntryView.enumerateFutureActivityEventIds<A>(of:order:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 16);
  v8 = *(a6 + 8);
  return sub_1ABC2A06C();
}

uint64_t FutureLifeEventEntryView.latestFutureActivityEventId<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(a3 + 8);
  return sub_1ABC2A6BC();
}

uint64_t FutureLifeEventEntryView.earliestFutureActivityEventId<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(a3 + 8);
  return sub_1ABC2A6DC();
}

uint64_t FutureLifeEventEntryView.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t FutureLifeEventEntryView.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t ViewService.futureLifeEventView()()
{
  type metadata accessor for FutureLifeEventView();
  sub_1ABA7D028();
  v1 = swift_allocObject();
  FutureLifeEventView.init(viewService:)(v0);
  return v1;
}

uint64_t FutureLifeEventView.__allocating_init(viewService:)(void *a1)
{
  sub_1ABA7D028();
  v2 = swift_allocObject();
  FutureLifeEventView.init(viewService:)(a1);
  return v2;
}

uint64_t *FutureLifeEventView.init(viewService:)(void *a1)
{
  v3 = v1;
  v5 = *v3;
  type metadata accessor for FutureLifeEventEntryView();
  sub_1ABA7D028();
  swift_allocObject();
  v6 = FutureLifeEventEntryView.init(viewService:)(a1);
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v7 = v6;
    sub_1ABAD219C(&qword_1EB4D5EE8, &qword_1ABF4F300);
    sub_1ABA7D028();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v3[2] = v8;
  }

  return v3;
}

uint64_t FutureLifeEventView.enumerateFutureActivityEvents<A>(from:order:using:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(v7 + 16);
  v16 = type metadata accessor for CustomGraphActivityEvent(0);
  sub_1ABA8F470();
  v19 = sub_1ABC4A2A0(v17, v18);
  return sub_1ABC2DC44(v16, a1, a2 & 1, a3, a4, v16, a5, v19, a6, a7);
}

uint64_t sub_1ABC4A134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = *(v4 + 16);
  v10 = type metadata accessor for CustomGraphActivityEvent(0);
  sub_1ABA8F470();
  v13 = sub_1ABC4A2A0(v11, v12);
  return a4(v10, a1, v10, a2, v13, a3);
}

uint64_t FutureLifeEventView.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t FutureLifeEventView.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  sub_1ABA7D028();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABC4A2A0(unint64_t *a1, void (*a2)(uint64_t))
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

void __swiftcall CustomGraphPerson.toObjectiveCGraphObject()(GDGraphPerson *__return_ptr retstr)
{
  sub_1ABA7E2A8();
  v201 = v2;
  v202 = v3;
  v4 = v1;
  v5 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  sub_1ABA7AB80(v5);
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v159 - v9;
  v11 = *v4;
  sub_1ABAFF390(0, &qword_1EB4D5EF8, off_1E79600C8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v183 = [objc_allocWithZone(ObjCClassFromMetadata) initWithValue_];
  if (!v183)
  {
LABEL_88:
    __break(1u);
    return;
  }

  v13 = v4[1];
  v14 = v4[2];
  v15 = v4[3];
  v16 = v4[4];
  v18 = v4[5];
  v17 = v4[6];
  v19 = v4[8];
  v190 = v4[7];
  v191 = v17;
  v20 = v4[10];
  v188 = v4[9];
  v189 = v19;
  v21 = v4[12];
  v186 = v4[11];
  v187 = v20;
  v185 = v21;
  v22 = type metadata accessor for CustomGraphPerson(0);
  v23 = (v4 + v22[17]);
  v24 = *(sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20) + 28);
  v169 = v23;
  v182 = v10;
  sub_1ABB2E9FC(v23 + v24, v10, &qword_1EB4D9BF0, &qword_1ABF34240);
  v25 = (v4 + v22[18]);
  v26 = v25[2];
  v176 = v25[1];
  v168 = v25;
  v27 = sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v167 = v4 + v22[19];
  LODWORD(v197) = v167[8];
  v175 = v26;

  v181 = v13;

  v180 = v14;

  v179 = v15;

  v178 = v16;

  v177 = v18;

  v174 = sub_1ABC6433C(v197);
  v170 = v4 + v22[20];
  v173 = sub_1ABC6433C(v170[8]);
  v171 = v4 + v22[21];
  v172 = sub_1ABC6433C(v171[8]);
  v193 = v22;
  v28 = *(v4 + v22[22]);
  v29 = *(v28 + 16);
  v184 = MEMORY[0x1E69E7CC0];
  v192 = v4;
  if (v29)
  {
    sub_1ABC6C47C(MEMORY[0x1E69E7CC0]);
    sub_1ABF24BC4();
    v30 = 0;
    v194 = v29;
    v195 = v28 + 32;
    while (1)
    {
      v31 = v195 + (v30 << 6);
      v33 = *(v31 + 16);
      v32 = *(v31 + 24);
      v34 = *(v31 + 32);
      v35 = *(v31 + 40);
      if (*(v31 + 56))
      {
        sub_1ABC6C86C();

        v36 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v37 = *(v31 + 48);
        v38 = objc_allocWithZone(ObjCClassFromMetadata);
        sub_1ABC6C86C();

        v39 = [v38 initWithValue_];
        v36 = MEMORY[0x1E69E7CC0];
        if (!v39)
        {
          goto LABEL_84;
        }
      }

      v40 = *(v35 + 16);
      if (v40)
      {
        break;
      }

LABEL_13:
      ++v30;
      v43 = objc_allocWithZone(GDGraphAgentAffiliationRelationship);
      sub_1ABC6C470();
      sub_1ABC69D78();

      v27 = v199;
      sub_1ABF24B94();
      sub_1ABA9ED44();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (v30 == v29)
      {
        v184 = v199[0];
        v4 = v192;
        goto LABEL_15;
      }
    }

    v196 = v32;
    v197 = v34;
    v198 = v36;

    sub_1ABF24BC4();
    v41 = (v35 + 32);
    while (1)
    {
      v42 = *v41++;
      if (![objc_allocWithZone(ObjCClassFromMetadata) initWithValue_])
      {
        break;
      }

      sub_1ABF24B94();
      sub_1ABA88ED0(v198);
      sub_1ABA979F8();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (!--v40)
      {
        v29 = v194;
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_81;
  }

LABEL_15:
  v44 = *(v4 + v193[23]);
  v45 = *(v44 + 16);
  v46 = MEMORY[0x1E69E7CC0];
  if (v45)
  {
    sub_1ABC6C47C(MEMORY[0x1E69E7CC0]);
    sub_1ABF24BC4();
    v47 = 0;
    v194 = v45;
    v195 = v44 + 32;
    while (1)
    {
      sub_1ABC6C558();
      if (v49)
      {
        sub_1ABA8908C();

        v50 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v51 = sub_1ABC6C794(v48);
        sub_1ABAFF390(v51, &qword_1EB4D5F08, off_1E7960048);
        objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA8908C();

        v52 = sub_1ABA7E79C();
        v54 = [v52 v53];
        v50 = MEMORY[0x1E69E7CC0];
        if (!v54)
        {
          goto LABEL_85;
        }
      }

      v55 = *(v44 + 16);
      if (v55)
      {
        break;
      }

LABEL_26:
      ++v47;
      v59 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABC6C67C();
      sub_1ABC6C470();
      sub_1ABC69D78();

      v27 = v199;
      sub_1ABF24B94();
      sub_1ABA9ED44();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (v47 == v45)
      {
        v46 = v199[0];
        v4 = v192;
        goto LABEL_28;
      }
    }

    v198 = v50;

    sub_1ABF24BC4();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v56 = swift_getObjCClassFromMetadata();
    v57 = (v44 + 32);
    while (1)
    {
      v58 = *v57++;
      if (![objc_allocWithZone(v56) initWithValue_])
      {
        break;
      }

      sub_1ABF24B94();
      sub_1ABA9E944();
      sub_1ABA7D0F8();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (!--v55)
      {
        v45 = v194;
        goto LABEL_26;
      }
    }

LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

LABEL_28:
  v166 = v46;
  v60 = *(v4 + v193[24]);
  v61 = *(v60 + 16);
  v62 = MEMORY[0x1E69E7CC0];
  if (v61)
  {
    v199[0] = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    v63 = 0;
    v194 = v61;
    v195 = v60 + 32;
    while (1)
    {
      sub_1ABC6C558();
      if (v65)
      {
        sub_1ABA8908C();
      }

      else
      {
        v66 = sub_1ABC6C794(v64);
        sub_1ABAFF390(v66, &qword_1EB4D5F10, off_1E79600B8);
        objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA8908C();

        v67 = sub_1ABA7E79C();
        if (![v67 v68])
        {
          goto LABEL_86;
        }
      }

      v69 = *(v60 + 16);
      if (v69)
      {
        break;
      }

LABEL_39:
      ++v63;
      v73 = objc_allocWithZone(GDGraphEmploymentRelationship);
      sub_1ABC6C67C();
      sub_1ABC6C470();
      sub_1ABC69D78();

      sub_1ABF24B94();
      sub_1ABA9ED44();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (v63 == v61)
      {
        v62 = v199[0];
        v4 = v192;
        goto LABEL_41;
      }
    }

    v198 = v62;

    sub_1ABF24BC4();
    sub_1ABAFF390(0, &qword_1EB4D5F10, off_1E79600B8);
    v70 = swift_getObjCClassFromMetadata();
    v71 = (v60 + 32);
    while (1)
    {
      v72 = *v71++;
      if (![objc_allocWithZone(v70) initWithValue_])
      {
        goto LABEL_82;
      }

      sub_1ABF24B94();
      sub_1ABA9E944();
      sub_1ABA7D0F8();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (!--v69)
      {
        v62 = MEMORY[0x1E69E7CC0];
        v61 = v194;
        goto LABEL_39;
      }
    }
  }

LABEL_41:
  v165 = v62;
  v74 = *(v4 + v193[25]);
  v75 = *(v74 + 16);
  v76 = MEMORY[0x1E69E7CC0];
  if (v75)
  {
    v199[0] = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    v77 = 0;
    v196 = v75;
    v197 = v74 + 32;
    while (1)
    {
      v78 = v197 + 40 * v77;
      v79 = *(v78 + 16);
      if (*(v78 + 32))
      {
        v80 = *(v78 + 16);
      }

      else
      {
        v81 = *(v78 + 24);
        v82 = sub_1ABC6C590();
        sub_1ABAFF390(v82, v83, off_1E79601A0);
        v84 = objc_allocWithZone(swift_getObjCClassFromMetadata());

        if (![v84 initWithValue_])
        {
          goto LABEL_87;
        }
      }

      v85 = *(v79 + 16);
      if (v85)
      {
        break;
      }

LABEL_51:
      ++v77;
      v93 = objc_allocWithZone(GDGraphTopicRelationship);
      sub_1ABC6C488();
      sub_1ABC69D04(v94, v95, &qword_1EB4D5F18, off_1E79601A0);

      sub_1ABF24B94();
      sub_1ABA9ED44();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (v77 == v75)
      {
        v76 = v199[0];
        v4 = v192;
        goto LABEL_53;
      }
    }

    v86 = v76;
    v198 = v76;
    sub_1ABF24BC4();
    v87 = sub_1ABC6C590();
    sub_1ABAFF390(v87, v88, off_1E79601A0);
    v89 = swift_getObjCClassFromMetadata();
    v90 = (v79 + 32);
    while (1)
    {
      v91 = *v90++;
      if (![objc_allocWithZone(v89) initWithValue_])
      {
        break;
      }

      sub_1ABF24B94();
      v92 = v198[2];
      sub_1ABF24BD4();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (!--v85)
      {
        v76 = v86;
        v75 = v196;
        goto LABEL_51;
      }
    }

LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

LABEL_53:
  v164 = v76;
  v96 = *(v4 + v193[26]);
  v97 = *(v96 + 16);
  if (v97)
  {
    sub_1ABC6C47C(MEMORY[0x1E69E7CC0]);
    sub_1ABF24BC4();
    v98 = (v96 + 80);
    do
    {
      v99 = *(v98 - 4);
      v100 = *(v98 - 3);
      v76 = *(v98 - 2);
      v101 = *(v98 - 1);
      v102 = *v98;
      v98 += 7;
      objc_allocWithZone(GDGraphHandleRelationship);

      v103 = sub_1ABA7E79C();
      sub_1ABC6A044(v103, v104);
      sub_1ABF24B94();
      sub_1ABA88ED0(v199[0]);
      sub_1ABC6C494();
      sub_1ABF24BA4();
      --v97;
    }

    while (v97);
    v163 = v199[0];
    v4 = v192;
  }

  else
  {
    v163 = MEMORY[0x1E69E7CC0];
  }

  v105 = *(v4 + v193[27]);
  v106 = *(v105 + 16);
  v107 = MEMORY[0x1E69E7CC0];
  if (v106)
  {
    v199[0] = MEMORY[0x1E69E7CC0];
    sub_1ABC6C608();
    v108 = (v105 + 112);
    do
    {
      v110 = *(v108 - 8);
      v109 = *(v108 - 7);
      v76 = *(v108 - 6);
      v111 = *(v108 - 5);
      v112 = *(v108 - 3);
      v196 = *(v108 - 4);
      v197 = v109;
      v113 = *(v108 - 2);
      v114 = *(v108 - 1);
      v115 = *v108;
      v108 += 11;
      v116 = objc_allocWithZone(GDGraphIdentifierRelationship);

      sub_1ABC6C5A8(v197, v117, v196);
      sub_1ABC6C6AC();
      sub_1ABA88ED0(v199[0]);
      sub_1ABC6C494();
      sub_1ABF24BA4();
      --v106;
    }

    while (v106);
    v162 = v199[0];
    v4 = v192;
    v107 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v162 = MEMORY[0x1E69E7CC0];
  }

  v118 = v193[29];
  v119 = (v4 + v193[28]);
  v120 = v119[2];
  v192 = v119[1];
  v160 = v119;
  v121 = *(v4 + v118);
  v122 = *(v121 + 16);
  v161 = v120;
  if (v122)
  {
    v199[0] = v107;

    sub_1ABC6C608();
    v123 = (v121 + 72);
    do
    {
      v125 = *(v123 - 3);
      v124 = *(v123 - 2);
      v76 = *(v123 - 1);
      v126 = *v123;
      v127 = v123[2];
      v196 = v123[1];
      v197 = v124;
      v129 = v123[3];
      v128 = v123[4];
      v131 = v123[5];
      v130 = v123[6];
      v132 = v123[8];
      v194 = v123[7];
      v195 = v128;
      v193 = objc_allocWithZone(GDGraphVisualIdentifierRelationship);

      sub_1ABC6A854(v197, v76, v196, v127, v195, v131, v194, v132);
      sub_1ABF24B94();
      sub_1ABA88ED0(v199[0]);
      sub_1ABC6C494();
      sub_1ABF24BA4();
      v123 += 14;
      --v122;
    }

    while (v122);
    v107 = MEMORY[0x1E69E7CC0];
  }

  else
  {
  }

  v133 = *v169;
  v134 = *v168;
  sub_1ABA9F5D0(v199);
  v135 = *(v76 + 2);
  if (v135)
  {
    v199[0] = v107;

    sub_1ABC6C608();
    v136 = v76 + 32;
    do
    {
      v137 = *v136++;
      v76 = sub_1ABC6C854(objc_allocWithZone(MEMORY[0x1E696AD98]));
      sub_1ABF24B94();
      sub_1ABA8CFE4(v199[0]);
      sub_1ABA7D0F8();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      --v135;
    }

    while (v135);
    v138 = v199[0];
  }

  else
  {

    v138 = MEMORY[0x1E69E7CC0];
  }

  v197 = v138;
  sub_1ABA9F5D0(&v200);
  v139 = *(v76 + 2);
  if (v139)
  {
    v199[0] = MEMORY[0x1E69E7CC0];
    sub_1ABC6C608();
    v140 = v76 + 32;
    do
    {
      v141 = *v140++;
      sub_1ABC6C854(objc_allocWithZone(MEMORY[0x1E696AD98]));
      sub_1ABF24B94();
      sub_1ABA8CFE4(v199[0]);
      sub_1ABA7D0F8();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      --v139;
    }

    while (v139);
  }

  sub_1ABAA3CF0();
  v143 = *v142;
  v144 = *(*v142 + 16);
  if (v144)
  {
    v196 = v134;
    v199[0] = MEMORY[0x1E69E7CC0];
    sub_1ABC6C608();
    v145 = (v143 + 32);
    do
    {
      v146 = *v145++;
      sub_1ABC6C854(objc_allocWithZone(MEMORY[0x1E696AD98]));
      sub_1ABF24B94();
      sub_1ABA8CFE4(v199[0]);
      sub_1ABA7D0F8();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      --v144;
    }

    while (v144);
  }

  v147 = *v160;
  objc_allocWithZone(GDGraphPerson);

  v158 = v161;
  v157 = v192;
  v156 = v162;
  v155 = v163;
  v154 = v164;
  v153 = v165;
  v152 = v166;
  v151 = v184;
  sub_1ABA8A034();
  v150 = v148;
  sub_1ABA9F6D8();
  sub_1ABC690A0(v183, v181, v180, v179, v178, v177, v191, v190, v189, v188, v187, v186, v185, v182, v176, v175, v174, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158);
  sub_1ABA7BC1C();
}

void __swiftcall CustomGraphEvent.toObjectiveCGraphObject()(GDGraphEvent *__return_ptr retstr)
{
  sub_1ABA7E2A8();
  v160 = v6;
  v161 = v7;
  v8 = type metadata accessor for CustomGraphDateRelationship(0);
  v9 = sub_1ABA7BB64(v8);
  v138[1] = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7BC58();
  sub_1ABA96A10();
  v13 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v14 = sub_1ABA7AB80(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7AC18();
  sub_1ABA89308();
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABAA08DC();
  MEMORY[0x1EEE9AC00](v18);
  v150 = (v138 - v19);
  v20 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v20);
  v22 = *(v21 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v23);
  v25 = v138 - v24;
  v26 = *v1;
  sub_1ABAFF390(0, &qword_1EB4D5F28, off_1E795FFC8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = [objc_allocWithZone(ObjCClassFromMetadata) initWithValue_];
  if (!v27)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v143 = v27;
  v146 = v1;
  v28 = v1[1];
  v29 = *(v28 + 16);
  v30 = MEMORY[0x1E69E7CC0];
  v151 = v8;
  v152 = v4;
  v155 = v3;
  v138[0] = v2;
  if (v29)
  {
    v149 = v25;
    v158 = MEMORY[0x1E69E7CC0];
    sub_1ABC6C608();
    v5 = (v28 + 112);
    do
    {
      v32 = *(v5 - 8);
      v31 = *(v5 - 7);
      v33 = *(v5 - 6);
      v34 = *(v5 - 5);
      v35 = *(v5 - 3);
      v153 = *(v5 - 4);
      v154 = v31;
      v37 = *(v5 - 2);
      v36 = *(v5 - 1);
      v38 = *v5;
      v5 += 11;
      objc_allocWithZone(GDGraphIdentifierRelationship);

      sub_1ABC6A12C(v154, v33, v153, v35, v36, v38);
      sub_1ABC6C6AC();
      sub_1ABA88ED0(v158);
      sub_1ABC6C494();
      sub_1ABF24BA4();
      --v29;
    }

    while (v29);
    v30 = v158;
    v8 = v151;
    v4 = v152;
    v25 = v149;
  }

  v39 = v146;
  v41 = v146[3];
  v40 = v146[4];
  v147 = type metadata accessor for CustomGraphEvent(0);
  v42 = v39 + v147[7];
  v43 = *(sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00) + 28);
  v144 = v42;
  sub_1ABB2E9FC(&v42[v43], v25, &qword_1EB4D5F20, &qword_1ABF4F358);
  v44 = sub_1ABA7E1E0(v25, 1, v8);
  v141 = v40;
  v142 = v30;
  v140 = v41;
  if (v44 == 1)
  {

    sub_1ABC6AAC4(v25, &qword_1EB4D5F20);
    v139 = 0;
  }

  else
  {
    v45 = &v25[*(v8 + 20)];
    v46 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABC6C5E0(v46);
    v5 = v150;
    sub_1ABC6C5F0(&v45[v47], v150);
    sub_1ABC6C5F0(&v25[*(v8 + 24) + *(v40 + 28)], v152);
    v8 = &v25[*(v8 + 28)];
    sub_1ABC6C5F0(v8 + *(v40 + 28), v155);
    v48 = *v45;
    sub_1ABA9F7CC();
    v49 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA8D29C();
    v4 = v152;

    sub_1ABA9EAB4();
    v139 = sub_1ABC69E44(v50, v51, v52);
    sub_1ABC6AA68(v25);
  }

  v53 = v146;
  v54 = *(*(v146 + v147[8]) + 16);
  v145 = MEMORY[0x1E69E7CC0];
  if (v54)
  {
    sub_1ABC6C47C(MEMORY[0x1E69E7CC0]);
    sub_1ABF24BC4();
    sub_1ABAA0AA4();
    v148 = v54;
    v149 = v55;
    while (1)
    {
      sub_1ABAA08D0(v149);
      v57 = *(v56 + 32);
      v5 = *(v56 + 40);
      v58 = *(v56 + 56);
      v153 = v59;
      v154 = v57;
      if (v58)
      {
        sub_1ABC6C540();

        v60 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v61 = sub_1ABAB5AC8(v56);
        sub_1ABAFF390(v61, v62, off_1E79600C8);
        v63 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA9E830();

        v64 = sub_1ABA7C298();
        v66 = [v64 v65];
        v60 = MEMORY[0x1E69E7CC0];
        if (!v66)
        {
          goto LABEL_76;
        }
      }

      v67 = v5[2];
      if (v67)
      {
        break;
      }

LABEL_20:
      ++v8;
      v73 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABAA3138();
      sub_1ABC69D78();
      sub_1ABC6C59C();

      sub_1ABF24B94();
      sub_1ABA8965C();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v8 == v54)
      {
        v145 = v158;
        v4 = v152;
        v53 = v146;
        goto LABEL_22;
      }
    }

    v157 = v60;

    sub_1ABF24BC4();
    v68 = sub_1ABA8BCD4();
    sub_1ABAFF390(v68, v69, off_1E79600C8);
    v70 = swift_getObjCClassFromMetadata();
    v71 = v5 + 4;
    while (1)
    {
      v72 = *v71++;
      if (![objc_allocWithZone(v70) initWithValue_])
      {
        break;
      }

      sub_1ABF24B94();
      sub_1ABA9E334(v157);
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (!--v67)
      {
        v54 = v148;
        goto LABEL_20;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

LABEL_22:
  v74 = *(v53 + v147[9]);
  v75 = v74[2];
  v148 = MEMORY[0x1E69E7CC0];
  if (v75)
  {
    sub_1ABC6C47C(MEMORY[0x1E69E7CC0]);
    sub_1ABF24BC4();
    v76 = 0;
    while (1)
    {
      sub_1ABC6C748(&v74[5 * v76 + 4]);
      if (v78)
      {
      }

      else
      {
        v79 = *(v77 + 24);
        v80 = objc_allocWithZone(ObjCClassFromMetadata);
        sub_1ABC6C7B4();

        if (![v74 initWithValue_])
        {
          goto LABEL_77;
        }
      }

      v81 = v5[2];
      if (v81)
      {
        break;
      }

LABEL_31:
      ++v76;
      v83 = objc_allocWithZone(GDGraphEventRelationship);
      sub_1ABC6C488();
      sub_1ABC69D04(v84, v85, &qword_1EB4D5F28, off_1E795FFC8);
      sub_1ABC6C7B4();

      sub_1ABF24B94();
      sub_1ABC6C6C8();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (v76 == v75)
      {
        v148 = v158;
        v4 = v152;
        v53 = v146;
        goto LABEL_33;
      }
    }

    v157 = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    v8 = (v5 + 4);
    while (1)
    {
      v82 = *v8;
      v8 += 8;
      if (![objc_allocWithZone(ObjCClassFromMetadata) initWithValue_])
      {
        goto LABEL_72;
      }

      sub_1ABF24B94();
      sub_1ABA9E334(v157);
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (!--v81)
      {
        goto LABEL_31;
      }
    }
  }

LABEL_33:
  v86 = *(v53 + v147[10]);
  v87 = *(v86 + 16);
  v88 = MEMORY[0x1E69E7CC0];
  if (v87)
  {
    v158 = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    sub_1ABAA0AA4();
    v153 = v89;
    v149 = v87;
    while (1)
    {
      v90 = &v153[8 * v8];
      v91 = *(v90 + 16);
      v154 = *(v90 + 24);
      v92 = *(v90 + 40);
      v93 = *(v90 + 56);
      ObjCClassFromMetadata = *(v90 + 32);
      if (v93)
      {
        sub_1ABC6C540();
      }

      else
      {
        v94 = sub_1ABA8CB08(v90);
        sub_1ABAFF390(v94, &qword_1EB4D5F08, off_1E7960048);
        v95 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA9E830();

        v96 = sub_1ABA7C298();
        if (![v96 v97])
        {
          goto LABEL_78;
        }
      }

      v98 = *(v92 + 16);
      if (v98)
      {
        break;
      }

LABEL_44:
      ++v8;
      v102 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA89794();
      sub_1ABC69D78();
      v86 = v103;

      sub_1ABF24B94();
      sub_1ABA8965C();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v8 == v87)
      {
        v104 = v158;
        v4 = v152;
        v53 = v146;
        goto LABEL_47;
      }
    }

    v157 = v88;

    sub_1ABF24BC4();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v99 = swift_getObjCClassFromMetadata();
    v100 = (v92 + 32);
    while (1)
    {
      v101 = *v100++;
      if (![objc_allocWithZone(v99) initWithValue_])
      {
        break;
      }

      sub_1ABF24B94();
      sub_1ABA9E944();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      if (!--v98)
      {
        v88 = MEMORY[0x1E69E7CC0];
        v87 = v149;
        goto LABEL_44;
      }
    }

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
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v104 = MEMORY[0x1E69E7CC0];
LABEL_47:
  v105 = v53 + v147[11];
  if (v105[16])
  {
    v106 = 0;
  }

  else
  {
    v86 = *(v105 + 1);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v106 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v106)
    {
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }
  }

  v107 = v53 + v147[12];
  if (*(v107 + 16))
  {
    v108 = 0;
LABEL_53:
    v146 = v108;
    v147 = v106;
    v149 = v104;
    v109 = v53[2];
    sub_1ABAA154C();
    v138[2] = v110;
    v153 = v107;
    if (v104)
    {
      v144 = v105;
      v158 = v88;

      sub_1ABC6C718();
      sub_1ABA935AC(&v159);
      v112 = v86 + v111;
      v154 = *(v113 + 72);
      v114 = v138[0];
      do
      {
        ObjCClassFromMetadata = v104;
        sub_1ABC6AA04(v112, v114);
        v115 = v4;
        v116 = v151;
        v117 = (v114 + *(v151 + 20));
        v118 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
        v119 = sub_1ABA952DC(v118);
        v120 = v150;
        sub_1ABB2E9FC(v119, v150, &qword_1EB4D9BF0, &qword_1ABF34240);
        v121 = (v114 + *(v116 + 24));
        sub_1ABB2E9FC(v121 + *(v53 + 7), v115, &qword_1EB4D9BF0, &qword_1ABF34240);
        v122 = (v114 + *(v116 + 28));
        sub_1ABB2E9FC(v122 + *(v53 + 7), v155, &qword_1EB4D9BF0, &qword_1ABF34240);
        v123 = *v117;
        v124 = *v121;
        v125 = *v122;
        v4 = v152;
        v126 = objc_allocWithZone(GDGraphDateRelationship);
        sub_1ABA9EFD8();

        sub_1ABC69E44(v120, v4, v155);
        v127 = sub_1ABC6C59C();
        sub_1ABC6AA68(v127);
        v53 = &v158;
        sub_1ABF24B94();
        sub_1ABA8965C();
        v128 = ObjCClassFromMetadata;
        sub_1ABF24BE4();
        sub_1ABF24BA4();
        v112 += v154;
        v104 = (v128 - 1);
      }

      while (v104);
      v105 = v144;
    }

    else
    {
    }

    v129 = *v105;
    v130 = *(*v105 + 16);
    if (v130)
    {
      v158 = MEMORY[0x1E69E7CC0];
      sub_1ABF24BC4();
      sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
      v131 = swift_getObjCClassFromMetadata();
      v132 = 0;
      while (1)
      {
        sub_1ABA8A95C();
        if (v133)
        {
          break;
        }

        if (![objc_allocWithZone(v131) initWithValue_])
        {
          goto LABEL_74;
        }

        ++v132;
        sub_1ABF24B94();
        sub_1ABA9ED44();
        sub_1ABA88FB0();
        sub_1ABF24BA4();
        if (v130 == v132)
        {
          goto LABEL_63;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_63:
      v134 = *v153;
      v135 = *(*v153 + 16);
      if (!v135)
      {
LABEL_68:
        objc_allocWithZone(GDGraphEvent);
        sub_1ABC6727C(v143, v142, v140, v141, v139, v145, v148, v149, v147, v146);
        sub_1ABA7BC1C();
        return;
      }

      v158 = MEMORY[0x1E69E7CC0];
      sub_1ABF24BC4();
      sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
      v136 = swift_getObjCClassFromMetadata();
      v137 = 0;
      while (v137 < *(v134 + 16))
      {
        if (![objc_allocWithZone(v136) initWithValue_])
        {
          goto LABEL_75;
        }

        ++v137;
        sub_1ABF24B94();
        sub_1ABA9ED44();
        sub_1ABA88FB0();
        sub_1ABF24BA4();
        if (v135 == v137)
        {
          goto LABEL_68;
        }
      }
    }

    __break(1u);
    goto LABEL_71;
  }

  v86 = *(v107 + 8);
  sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
  v108 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
  if (v108)
  {
    goto LABEL_53;
  }

LABEL_81:
  __break(1u);
}

void __swiftcall CustomGraphIdentifierRelationship.toObjectiveCGraphObject()(GDGraphIdentifierRelationship *__return_ptr retstr)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = v1[9];
  v10 = v1[10];
  v11 = objc_allocWithZone(GDGraphIdentifierRelationship);

  v12 = sub_1ABA7E79C();
  sub_1ABC6A12C(v12, v13, v6, v7, v9, v10);
}

void __swiftcall CustomGraphDateRelationship.toObjectiveCGraphObject()(GDGraphDateRelationship *__return_ptr retstr)
{
  sub_1ABA7E2A8();
  v4 = sub_1ABA7E79C();
  v6 = sub_1ABAD219C(v4, v5);
  v7 = sub_1ABA7AB80(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7AC18();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA89308();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1ABC6C7F4();
  v16 = (v1 + v15[5]);
  v17 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
  sub_1ABA9E550(v16 + *(v17 + 28), v3);
  v18 = (v1 + v15[6]);
  sub_1ABA9E550(v18 + *(v17 + 28), v2);
  v19 = (v1 + v15[7]);
  sub_1ABA9E550(v19 + *(v17 + 28), v12);
  v20 = *v16;
  v21 = *v18;
  v22 = *v19;
  objc_allocWithZone(GDGraphDateRelationship);

  sub_1ABA96094();
  sub_1ABC69E44(v23, v24, v25);
  sub_1ABA7BC1C();
}

id sub_1ABC4EFE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 8))
  {
    return 0;
  }

  v4 = *a1;
  return static GraphObjectObjectiveCConvertible.objectiveCGraphObjectEntityIdentifier(from:)(&v4, a2, a3);
}

void __swiftcall CustomGraphActivityEvent.toObjectiveCGraphObject()(GDGraphActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  v223 = v6;
  v224 = v7;
  v8 = type metadata accessor for CustomGraphDateRelationship(0);
  v9 = sub_1ABA7BB64(v8);
  v191[1] = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7BC58();
  sub_1ABA96A10();
  v13 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v14 = sub_1ABA7AB80(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7AC18();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  sub_1ABA89308();
  MEMORY[0x1EEE9AC00](v21);
  v216 = v191 - v22;
  v23 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v23);
  v25 = *(v24 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABC6C7D4();
  sub_1ABAFF390(0, &qword_1EB4CE650, off_1E795FEF8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = [objc_allocWithZone(ObjCClassFromMetadata) initWithValue_];
  if (!v27)
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v203 = v27;
  v206 = v2;
  v28 = v2[1];
  v29 = *(v28 + 16);
  v30 = MEMORY[0x1E69E7CC0];
  v211 = v19;
  v212 = v8;
  v213 = v4;
  v210 = v3;
  if (v29)
  {
    v209 = v5;
    v219[0] = MEMORY[0x1E69E7CC0];
    sub_1ABA9E6A8();
    v31 = (v28 + 112);
    do
    {
      v33 = *(v31 - 8);
      v32 = *(v31 - 7);
      v34 = *(v31 - 6);
      v35 = *(v31 - 5);
      v36 = *(v31 - 3);
      v214 = *(v31 - 4);
      v215 = v32;
      v38 = *(v31 - 2);
      v37 = *(v31 - 1);
      v39 = *v31;
      v31 += 11;
      v4 = objc_allocWithZone(GDGraphIdentifierRelationship);

      sub_1ABC6C788();
      sub_1ABC6A12C(v40, v41, v42, v43, v44, v39);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      --v29;
    }

    while (v29);
    v30 = v219[0];
    v19 = v211;
    v8 = v212;
    v5 = v209;
  }

  v45 = v206;
  v47 = v206[3];
  v46 = v206[4];
  v207 = type metadata accessor for CustomGraphActivityEvent(0);
  v48 = v45 + v207[7];
  v49 = *(sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00) + 28);
  v204 = v48;
  sub_1ABB2E9FC(v48 + v49, v5, &qword_1EB4D5F20, &qword_1ABF4F358);
  v50 = sub_1ABA7E1E0(v5, 1, v8);
  v201 = v46;
  v202 = v30;
  v200 = v47;
  if (v50 == 1)
  {

    sub_1ABC6AAC4(v5, &qword_1EB4D5F20);
    v199 = 0;
  }

  else
  {
    v51 = (v5 + *(v8 + 20));
    v52 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABC6C5E0(v52);
    sub_1ABC6C5F0(v51 + v53, v216);
    v54 = sub_1ABC6C768();
    sub_1ABC6C5F0(v54, v213);
    v55 = sub_1ABC6C754();
    sub_1ABC6C5F0(v55, v19);
    v56 = *v51;
    v57 = *v4;
    v58 = *v8;
    v59 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA8D29C();

    sub_1ABA9EAB4();
    v199 = sub_1ABC69E44(v60, v61, v62);
    sub_1ABC6AA68(v5);
  }

  v63 = v206;
  v64 = *(v206 + v207[8]);
  v65 = *(v64 + 16);
  v66 = MEMORY[0x1E69E7CC0];
  if (v65)
  {
    sub_1ABA9F87C(MEMORY[0x1E69E7CC0]);
    sub_1ABF24BC4();
    v67 = 0;
    v208 = v65;
    v209 = v64 + 32;
    while (1)
    {
      v68 = v209 + (v67 << 6);
      v69 = *(v68 + 16);
      v70 = *(v68 + 32);
      v71 = *(v68 + 40);
      v72 = *(v68 + 56);
      v214 = *(v68 + 24);
      v215 = v70;
      if (v72)
      {
        sub_1ABC6C540();
      }

      else
      {
        v73 = sub_1ABA8CB08(v68);
        sub_1ABAFF390(v73, &qword_1EB4D5EF8, off_1E79600C8);
        v74 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA9E830();

        v75 = sub_1ABA7C298();
        if (![v75 v76])
        {
          goto LABEL_106;
        }
      }

      v77 = *(v71 + 16);
      if (v77)
      {
        break;
      }

LABEL_20:
      v67 = v67 + 1;
      v81 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABC69D78();
      sub_1ABC6C59C();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v67 == v65)
      {
        v66 = v219[0];
        v63 = v206;
        goto LABEL_22;
      }
    }

    v218 = MEMORY[0x1E69E7CC0];

    sub_1ABF24BC4();
    sub_1ABAFF390(0, &qword_1EB4D5EF8, off_1E79600C8);
    v78 = swift_getObjCClassFromMetadata();
    v79 = (v71 + 32);
    while (1)
    {
      v80 = *v79++;
      if (![objc_allocWithZone(v78) initWithValue_])
      {
        goto LABEL_99;
      }

      sub_1ABF24B94();
      sub_1ABA88ED0(v218);
      sub_1ABA979F8();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (!--v77)
      {
        v65 = v208;
        goto LABEL_20;
      }
    }
  }

LABEL_22:
  v198 = v66;
  v82 = *(v63 + v207[9]);
  v83 = *(v82 + 16);
  v208 = MEMORY[0x1E69E7CC0];
  if (v83)
  {
    sub_1ABA9F87C(MEMORY[0x1E69E7CC0]);
    sub_1ABF24BC4();
    v84 = 0;
    v214 = v83;
    v215 = v82 + 32;
    v85 = &unk_1EB4D5F28;
    while (1)
    {
      v86 = v215 + 40 * v84;
      v87 = *(v86 + 16);
      if (*(v86 + 32))
      {
        v88 = *(v86 + 16);
      }

      else
      {
        v89 = *(v86 + 24);
        sub_1ABAFF390(0, v85, off_1E795FFC8);
        v90 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA8D29C();

        if (![v65 initWithValue_])
        {
          goto LABEL_107;
        }
      }

      v91 = *(v87 + 16);
      if (v91)
      {
        break;
      }

LABEL_32:
      ++v84;
      v96 = objc_allocWithZone(GDGraphEventRelationship);
      sub_1ABC6C488();
      sub_1ABC69D04(v97, v98, v85, off_1E795FFC8);
      sub_1ABA8D29C();

      sub_1ABF24B94();
      v99 = *(v219[0] + 16);
      sub_1ABF24BD4();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (v84 == v83)
      {
        v208 = v219[0];
        v63 = v206;
        goto LABEL_34;
      }
    }

    v218 = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    v92 = v85;
    sub_1ABAFF390(0, v85, off_1E795FFC8);
    v93 = swift_getObjCClassFromMetadata();
    v94 = (v87 + 32);
    while (1)
    {
      v95 = *v94++;
      if (![objc_allocWithZone(v93) initWithValue_])
      {
        goto LABEL_100;
      }

      sub_1ABF24B94();
      sub_1ABA88ED0(v218);
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (!--v91)
      {
        v83 = v214;
        v85 = v92;
        goto LABEL_32;
      }
    }
  }

LABEL_34:
  v100 = *(v63 + v207[10]);
  v101 = v100[2];
  v205 = MEMORY[0x1E69E7CC0];
  if (v101)
  {
    sub_1ABA9F87C(MEMORY[0x1E69E7CC0]);
    sub_1ABF24BC4();
    v102 = 0;
    while (1)
    {
      v103 = &v100[5 * v102 + 4];
      v104 = *(v103 + 16);
      if (*(v103 + 32))
      {
        v105 = *(v103 + 16);
      }

      else
      {
        v106 = *(v103 + 24);
        v107 = objc_allocWithZone(ObjCClassFromMetadata);
        sub_1ABA8D29C();

        if (![v100 initWithValue_])
        {
          goto LABEL_108;
        }
      }

      v108 = *(v104 + 16);
      if (v108)
      {
        break;
      }

LABEL_43:
      ++v102;
      v111 = objc_allocWithZone(GDGraphEventRelationship);
      sub_1ABC6C488();
      sub_1ABC69D04(v112, v113, &qword_1EB4CE650, off_1E795FEF8);
      sub_1ABA8D29C();

      sub_1ABF24B94();
      v114 = *(v219[0] + 16);
      sub_1ABF24BD4();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (v102 == v101)
      {
        v205 = v219[0];
        v63 = v206;
        goto LABEL_45;
      }
    }

    v218 = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    v109 = (v104 + 32);
    while (1)
    {
      v110 = *v109++;
      if (![objc_allocWithZone(ObjCClassFromMetadata) initWithValue_])
      {
        goto LABEL_101;
      }

      sub_1ABF24B94();
      sub_1ABA88ED0(v218);
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (!--v108)
      {
        goto LABEL_43;
      }
    }
  }

LABEL_45:
  v115 = *(v63 + v207[11]);
  v116 = *(v115 + 16);
  v117 = MEMORY[0x1E69E7CC0];
  if (v116)
  {
    v219[0] = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    v118 = 0;
    v214 = v115 + 32;
    v119 = v116;
    v209 = v116;
    while (1)
    {
      v120 = v214 + (v118 << 6);
      v122 = *(v120 + 16);
      v121 = *(v120 + 24);
      v123 = *(v120 + 40);
      v124 = *(v120 + 56);
      ObjCClassFromMetadata = *(v120 + 32);
      v215 = v121;
      if (v124)
      {
        swift_bridgeObjectRetain_n();
      }

      else
      {
        v125 = sub_1ABC6C794(v120);
        sub_1ABAFF390(v125, &qword_1EB4D5F08, off_1E7960048);
        v126 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA8D29C();
        swift_bridgeObjectRetain_n();

        v127 = sub_1ABA979F8();
        if (![v127 v128])
        {
          goto LABEL_109;
        }
      }

      v129 = *(v123 + 16);
      if (v129)
      {
        break;
      }

LABEL_56:
      ++v118;
      v134 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABC6C470();
      sub_1ABC69D78();
      sub_1ABC6C7B4();

      sub_1ABF24B94();
      sub_1ABAB6908();
      sub_1ABC6C494();
      sub_1ABF24BA4();
      v117 = MEMORY[0x1E69E7CC0];
      if (v118 == v119)
      {
        v135 = v219[0];
        v63 = v206;
        goto LABEL_59;
      }
    }

    v218 = v117;

    sub_1ABF24BC4();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v130 = swift_getObjCClassFromMetadata();
    v131 = (v123 + 32);
    while (1)
    {
      v132 = *v131++;
      if (![objc_allocWithZone(v130) initWithValue_])
      {
        break;
      }

      sub_1ABF24B94();
      v133 = *(v218 + 16);
      sub_1ABF24BD4();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (!--v129)
      {
        v119 = v209;
        goto LABEL_56;
      }
    }

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

  v135 = MEMORY[0x1E69E7CC0];
LABEL_59:
  v136 = v63 + v207[12];
  if (*(v136 + 16))
  {
    v137 = 0;
  }

  else
  {
    v138 = *(v136 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v137 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v137)
    {
LABEL_111:
      __break(1u);
      goto LABEL_112;
    }
  }

  v139 = v63 + v207[13];
  if (*(v139 + 16))
  {
    v140 = 0;
  }

  else
  {
    v141 = *(v139 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v140 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v140)
    {
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
      return;
    }
  }

  v142 = v63 + v207[14];
  v143 = v142[16];
  v209 = v142;
  v214 = v136;
  if ((v143 & 1) == 0)
  {
    v144 = *(v142 + 1);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_113;
    }
  }

  v192 = v63 + v207[15];
  sub_1ABA89F20(v192);
  v194 = v145;
  if (!v146)
  {
    sub_1ABC6C3F8();
  }

  v195 = v140;
  v196 = v137;
  v197 = v135;
  sub_1ABA9F4DC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v193 = sub_1ABAA045C();
  v147 = v206;
  v207 = sub_1ABC6C834(v206 + v207[16]);
  v148 = *(v147 + 2);
  sub_1ABC6C670(v204);
  v206 = v149;
  if (v147)
  {
    v204 = v139;
    v219[0] = MEMORY[0x1E69E7CC0];

    sub_1ABC6C4AC();
    sub_1ABA935AC(&v220);
    v136 += v150;
    v215 = *(v151 + 72);
    do
    {
      ObjCClassFromMetadata = v147;
      v152 = v210;
      sub_1ABC6AA04(v136, v210);
      v153 = v212;
      v154 = (v152 + *(v212 + 20));
      v155 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      sub_1ABA8C968(v155);
      sub_1ABB2E9FC(v154 + v156, v216, &qword_1EB4D9BF0, &qword_1ABF34240);
      v157 = (v152 + *(v153 + 24));
      v158 = v213;
      sub_1ABB2E9FC(v157 + *(v63 + 7), v213, &qword_1EB4D9BF0, &qword_1ABF34240);
      v159 = (v152 + *(v153 + 28));
      v160 = sub_1ABC6C730();
      v161 = v211;
      sub_1ABB2E9FC(v160, v211, &qword_1EB4D9BF0, &qword_1ABF34240);
      v162 = *v154;
      v163 = *v157;
      v164 = *v159;
      v165 = objc_allocWithZone(GDGraphDateRelationship);

      v166 = ObjCClassFromMetadata;
      v135 = sub_1ABC69E44(v216, v158, v161);
      sub_1ABC6AA68(v152);
      v63 = v219;
      sub_1ABF24B94();
      sub_1ABC6C884(v219[0]);
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      v136 += v215;
      v147 = (v166 - 1);
    }

    while (v147);
    v167 = v219[0];
    v139 = v204;
  }

  else
  {

    v167 = MEMORY[0x1E69E7CC0];
  }

  v168 = *v214;
  if (*(*v214 + 16))
  {
    sub_1ABA9F87C(MEMORY[0x1E69E7CC0]);
    sub_1ABF24BC4();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v169 = swift_getObjCClassFromMetadata();
    while (1)
    {
      sub_1ABA8A95C();
      if (v170)
      {
        break;
      }

      if (![objc_allocWithZone(v169) initWithValue_])
      {
        goto LABEL_103;
      }

      sub_1ABA8CEB4();
      sub_1ABAB6908();
      sub_1ABA894EC();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
    }

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
    goto LABEL_102;
  }

  v216 = MEMORY[0x1E69E7CC0];
  ObjCClassFromMetadata = v167;
  v171 = *v139;
  v172 = *(*v139 + 16);
  if (v172)
  {
    v219[0] = MEMORY[0x1E69E7CC0];
    sub_1ABC6C4AC();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v136 = swift_getObjCClassFromMetadata();
    v173 = 0;
    do
    {
      sub_1ABA89C88();
      if (v170)
      {
        goto LABEL_97;
      }

      if (![objc_allocWithZone(v136) initWithValue_])
      {
        goto LABEL_104;
      }

      ++v173;
      sub_1ABF24B94();
      sub_1ABAB6908();
      sub_1ABA894EC();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
    }

    while (v172 != v173);
  }

  v174 = *v209;
  v175 = *(*v209 + 16);
  if (v175)
  {
    v219[0] = MEMORY[0x1E69E7CC0];
    sub_1ABC6C4AC();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    v136 = swift_getObjCClassFromMetadata();
    v176 = 0;
    do
    {
      sub_1ABA9F274();
      if (v170)
      {
        goto LABEL_98;
      }

      if (![objc_allocWithZone(v136) initWithValue_])
      {
        goto LABEL_105;
      }

      ++v176;
      sub_1ABF24B94();
      sub_1ABAB6908();
      sub_1ABA894EC();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
    }

    while (v175 != v176);
  }

  sub_1ABC6C670(v192);
  if (v175)
  {
    v219[0] = MEMORY[0x1E69E7CC0];
    sub_1ABC6C4AC();
    v177 = (v136 + 32);
    do
    {
      v178 = *v177++;
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      sub_1ABC6C6E4();
      sub_1ABAB6908();
      sub_1ABC6C494();
      sub_1ABF24BA4();
      --v175;
    }

    while (v175);
  }

  sub_1ABA9F5D0(&v221);
  v179 = v135[2];
  if (v179)
  {
    v219[0] = MEMORY[0x1E69E7CC0];
    sub_1ABC6C4AC();
    v180 = v135 + 4;
    do
    {
      v181 = *v180++;
      sub_1ABAA0D98(objc_allocWithZone(MEMORY[0x1E696AD98]));
      sub_1ABC6C6E4();
      sub_1ABAB6908();
      sub_1ABC6C494();
      sub_1ABF24BA4();
      --v179;
    }

    while (v179);
  }

  objc_allocWithZone(GDGraphActivityEvent);
  v190 = v207;
  sub_1ABAA3CF0();
  v189 = v182;
  sub_1ABA8A034();
  v188 = v183;
  sub_1ABA9F6D8();
  v187 = v184;
  v186 = v196;
  sub_1ABA8A1D4(&v222);
  sub_1ABC67508(v203, v202, v200, v201, v199, v198, v208, v205, v185, v186, v187, v188, v189, v190);
  sub_1ABA8B438();
}

id sub_1ABC501D0(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInteger_];
  }
}

id sub_1ABC5021C(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDouble_];
  }
}

void __swiftcall CustomGraphSportsGameEvent.toObjectiveCGraphObject()(GDGraphSportsGameEvent *__return_ptr retstr)
{
  sub_1ABA7E2A8();
  v189 = v6;
  v190 = v7;
  v8 = type metadata accessor for CustomGraphDateRelationship(0);
  v9 = sub_1ABA7BB64(v8);
  v163[0] = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7BC58();
  sub_1ABA96A10();
  v13 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v14 = sub_1ABA7AB80(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7C068();
  v180 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v163 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v163 - v22;
  v24 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v24);
  v26 = *(v25 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v27);
  sub_1ABC6C7D4();
  sub_1ABAFF390(0, &qword_1EB4D5F58, off_1E7960170);
  v28 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v29 = [v28 initWithValue_];
  if (!v29)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v179 = v20;
  v170 = v29;
  v175 = v2;
  v30 = v2[1];
  v31 = *(v30 + 16);
  v32 = MEMORY[0x1E69E7CC0];
  v181 = v8;
  v184 = v23;
  v178 = v3;
  if (v31)
  {
    v177 = v5;
    v186 = MEMORY[0x1E69E7CC0];
    sub_1ABC6C608();
    v33 = (v30 + 112);
    do
    {
      v35 = *(v33 - 8);
      v34 = *(v33 - 7);
      v36 = *(v33 - 6);
      v37 = *(v33 - 5);
      v4 = *(v33 - 3);
      v182 = *(v33 - 4);
      v183 = v34;
      v38 = *(v33 - 2);
      v39 = *(v33 - 1);
      v40 = *v33;
      v33 += 11;
      v41 = objc_allocWithZone(GDGraphIdentifierRelationship);

      sub_1ABC6C514(v183, v42, v182);
      sub_1ABC6C6AC();
      sub_1ABA88ED0(v186);
      sub_1ABC6C494();
      sub_1ABF24BA4();
      --v31;
    }

    while (v31);
    v32 = v186;
    v8 = v181;
    v23 = v184;
    v5 = v177;
  }

  v43 = v175;
  v45 = v175[3];
  v44 = v175[4];
  v173 = type metadata accessor for CustomGraphSportsGameEvent(0);
  v46 = v43 + v173[7];
  v47 = *(sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00) + 28);
  v172 = v46;
  sub_1ABB2E9FC(v46 + v47, v5, &qword_1EB4D5F20, &qword_1ABF4F358);
  v48 = sub_1ABA7E1E0(v5, 1, v8);
  v168 = v44;
  v169 = v32;
  v167 = v45;
  if (v48 == 1)
  {

    sub_1ABC6AAC4(v5, &qword_1EB4D5F20);
    v166 = 0;
  }

  else
  {
    v49 = (v5 + *(v8 + 20));
    v50 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABC6C5E0(v50);
    sub_1ABC6C5F0(v49 + v51, v23);
    v52 = sub_1ABC6C768();
    sub_1ABC6C5F0(v52, v179);
    v53 = sub_1ABC6C754();
    v4 = v180;
    sub_1ABC6C5F0(v53, v180);
    v54 = *v49;
    sub_1ABA9F7CC();
    v55 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA8D29C();

    sub_1ABA9EAB4();
    v166 = sub_1ABC69E44(v56, v57, v58);
    sub_1ABC6AA68(v5);
  }

  v59 = v173;
  v60 = v175;
  v61 = *(v175 + v173[8]);
  v62 = *(v61 + 16);
  v63 = MEMORY[0x1E69E7CC0];
  if (v62)
  {
    v186 = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    v64 = 0;
    v182 = v62;
    v183 = v61 + 32;
    v65 = &qword_1EB4D5F28;
    while (1)
    {
      sub_1ABC6C748(v183 + 40 * v64);
      if (v67)
      {
      }

      else
      {
        v68 = *(v66 + 24);
        sub_1ABAFF390(0, v65, off_1E795FFC8);
        v69 = objc_allocWithZone(swift_getObjCClassFromMetadata());

        if (![v69 initWithValue_])
        {
          goto LABEL_78;
        }
      }

      v70 = *(v4 + 16);
      if (v70)
      {
        break;
      }

LABEL_19:
      ++v64;
      v75 = objc_allocWithZone(GDGraphEventRelationship);
      sub_1ABC6C488();
      sub_1ABC69D04(v76, v77, v65, off_1E795FFC8);

      sub_1ABF24B94();
      sub_1ABC6C6C8();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (v64 == v62)
      {
        v63 = v186;
        v60 = v175;
        v59 = v173;
        goto LABEL_21;
      }
    }

    v185 = v63;
    sub_1ABF24BC4();
    v71 = v65;
    sub_1ABAFF390(0, v65, off_1E795FFC8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v73 = (v4 + 32);
    while (1)
    {
      v74 = *v73++;
      if (![objc_allocWithZone(ObjCClassFromMetadata) initWithValue_])
      {
        break;
      }

      sub_1ABF24B94();
      sub_1ABA9E944();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (!--v70)
      {
        v63 = MEMORY[0x1E69E7CC0];
        v62 = v182;
        v65 = v71;
        goto LABEL_19;
      }
    }

LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

LABEL_21:
  v78 = *(v60 + v59[9]);
  v79 = *(v78 + 16);
  v80 = MEMORY[0x1E69E7CC0];
  v174 = v63;
  if (v79)
  {
    v186 = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    v81 = 0;
    v176 = v79;
    v177 = v78 + 32;
    while (1)
    {
      v82 = v177 + (v81 << 6);
      v83 = *(v82 + 16);
      v183 = *(v82 + 24);
      v84 = *(v82 + 32);
      v85 = *(v82 + 40);
      if (*(v82 + 56))
      {
        v86 = *(v82 + 32);
        swift_bridgeObjectRetain_n();
      }

      else
      {
        v87 = sub_1ABA8CB08(v82);
        sub_1ABAFF390(v87, &qword_1EB4D5F08, off_1E7960048);
        v88 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA960A4();
        swift_bridgeObjectRetain_n();

        v89 = sub_1ABA7C298();
        if (![v89 v90])
        {
          goto LABEL_79;
        }
      }

      v91 = *(v85 + 16);
      if (v91)
      {
        break;
      }

LABEL_32:
      ++v81;
      v95 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABC6C788();
      sub_1ABC69D78();
      sub_1ABA9F354();

      sub_1ABF24B94();
      sub_1ABA8965C();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v81 == v79)
      {
        v80 = v186;
        v63 = v174;
        v60 = v175;
        v59 = v173;
        goto LABEL_34;
      }
    }

    v182 = v84;
    v185 = MEMORY[0x1E69E7CC0];

    sub_1ABF24BC4();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v92 = swift_getObjCClassFromMetadata();
    v93 = (v85 + 32);
    while (1)
    {
      v94 = *v93++;
      if (![objc_allocWithZone(v92) initWithValue_])
      {
        goto LABEL_74;
      }

      sub_1ABF24B94();
      sub_1ABA9E944();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      if (!--v91)
      {
        v79 = v176;
        goto LABEL_32;
      }
    }
  }

LABEL_34:
  v96 = (v60 + v59[10]);
  v97 = *(v96 + 16);
  v173 = v96;
  if (v97)
  {
    v98 = 0;
  }

  else
  {
    v99 = *(v96 + 1);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v98 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v98)
    {
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }
  }

  v100 = v60 + v59[11];
  v101 = v100[16];
  v171 = v100;
  if (v101)
  {
    v102 = 0;
LABEL_40:
    v163[1] = v102;
    v164 = v98;
    v165 = v80;
    v104 = *(v60 + v59[12]);
    v105 = v104[2];
    v106 = MEMORY[0x1E69E7CC0];
    if (v105)
    {
      v186 = MEMORY[0x1E69E7CC0];
      sub_1ABC6C718();
      v107 = 0;
      v176 = v105;
      v177 = (v104 + 4);
      v108 = v105;
      while (1)
      {
        v109 = v177 + (v107 << 6);
        v110 = *(v109 + 16);
        v111 = *(v109 + 32);
        v112 = *(v109 + 40);
        v113 = *(v109 + 56);
        v182 = *(v109 + 24);
        v183 = v111;
        if (v113)
        {
          sub_1ABC6C540();
        }

        else
        {
          v114 = sub_1ABA8CB08(v109);
          sub_1ABAFF390(v114, &qword_1EB4D5F60, off_1E7960180);
          v115 = objc_allocWithZone(swift_getObjCClassFromMetadata());
          sub_1ABA9E830();

          v116 = sub_1ABA7C298();
          if (![v116 v117])
          {
            goto LABEL_80;
          }
        }

        v118 = *(v112 + 16);
        if (v118)
        {
          break;
        }

        v104 = v106;
LABEL_51:
        ++v107;
        v122 = objc_allocWithZone(GDGraphAttendeeRelationship);
        v105 = v183;
        sub_1ABC6C788();
        sub_1ABC69D78();
        sub_1ABA9F354();

        sub_1ABF24B94();
        sub_1ABA8965C();
        sub_1ABA9E200();
        sub_1ABF24BA4();
        if (v107 == v108)
        {
          v177 = v186;
          v63 = v174;
          v60 = v175;
          goto LABEL_54;
        }
      }

      v185 = v106;

      sub_1ABF24BC4();
      sub_1ABAFF390(0, &qword_1EB4D5F60, off_1E7960180);
      v119 = swift_getObjCClassFromMetadata();
      v120 = (v112 + 32);
      while (1)
      {
        v121 = *v120++;
        if (![objc_allocWithZone(v119) initWithValue_])
        {
          break;
        }

        sub_1ABF24B94();
        sub_1ABA9E944();
        sub_1ABC6C3E0();
        sub_1ABF24BA4();
        if (!--v118)
        {
          v104 = v185;
          v106 = MEMORY[0x1E69E7CC0];
          v108 = v176;
          goto LABEL_51;
        }
      }

LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v177 = MEMORY[0x1E69E7CC0];
LABEL_54:
    v123 = v60[2];
    sub_1ABA8C5A8(v172);
    v176 = v124;
    if (v105)
    {
      v186 = v106;

      sub_1ABC6C718();
      sub_1ABA935AC(&v187);
      v126 = v104 + v125;
      v182 = *(v127 + 72);
      do
      {
        v183 = v105;
        v128 = v178;
        sub_1ABC6AA04(v126, v178);
        v129 = v181;
        v104 = (v128 + *(v181 + 20));
        v130 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
        sub_1ABA952DC(v130);
        sub_1ABC6C67C();
        sub_1ABB2E9FC(v131, v132, v133, v134);
        v135 = (v128 + *(v129 + 24));
        v136 = *(v60 + 7);
        v137 = v179;
        sub_1ABC6C67C();
        sub_1ABB2E9FC(v138, v139, v140, v141);
        v142 = (v128 + *(v129 + 28));
        sub_1ABC6C730();
        v143 = v180;
        sub_1ABC6C67C();
        sub_1ABB2E9FC(v144, v145, v146, v147);
        v148 = *v104;
        v149 = *v135;
        v150 = *v142;
        v151 = objc_allocWithZone(GDGraphDateRelationship);
        sub_1ABA9EFD8();

        v152 = v137;
        v153 = v183;
        sub_1ABC69E44(v184, v152, v143);
        v154 = sub_1ABC6C688();
        sub_1ABC6AA68(v154);
        v60 = &v186;
        sub_1ABF24B94();
        sub_1ABC6C6C8();
        sub_1ABF24BE4();
        sub_1ABF24BA4();
        v126 += v182;
        v105 = v153 - 1;
      }

      while (v105);
      v63 = v174;
    }

    else
    {
    }

    v155 = *(*v173 + 16);
    v156 = MEMORY[0x1E69E7CC0];
    if (v155)
    {
      v186 = MEMORY[0x1E69E7CC0];
      sub_1ABC6C718();
      sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
      swift_getObjCClassFromMetadata();
      sub_1ABAB587C();
      while (1)
      {
        sub_1ABA8A95C();
        if (v157)
        {
          break;
        }

        if (![sub_1ABAA0CD0() initWithValue_])
        {
          goto LABEL_76;
        }

        ++v156;
        sub_1ABF24B94();
        sub_1ABA9ED44();
        sub_1ABF24BE4();
        sub_1ABF24BA4();
        if (v155 == v156)
        {
          goto LABEL_64;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_64:
      v158 = *v171;
      v159 = *(*v171 + 16);
      if (!v159)
      {
LABEL_70:
        objc_allocWithZone(GDGraphSportsGameEvent);
        sub_1ABA8A1D4(&v188);
        sub_1ABC678DC(v170, v169, v167, v168, v166, v63, v165, v164, v162);
        sub_1ABA7BC1C();
        return;
      }

      v186 = MEMORY[0x1E69E7CC0];
      sub_1ABC6C718();
      sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
      v160 = swift_getObjCClassFromMetadata();
      v161 = 0;
      while (v161 < *(v158 + 16))
      {
        if (![objc_allocWithZone(v160) initWithValue_])
        {
          goto LABEL_77;
        }

        ++v161;
        sub_1ABF24B94();
        sub_1ABA9ED44();
        sub_1ABF24BE4();
        sub_1ABF24BA4();
        if (v159 == v161)
        {
          v63 = v174;
          goto LABEL_70;
        }
      }
    }

    __break(1u);
    goto LABEL_73;
  }

  v103 = *(v100 + 1);
  sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
  v102 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
  if (v102)
  {
    goto LABEL_40;
  }

LABEL_83:
  __break(1u);
}

void __swiftcall CustomGraphTransportationActivityEvent.toObjectiveCGraphObject()(GDGraphTransportationActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  v191 = v6;
  v192 = v7;
  v8 = type metadata accessor for CustomGraphDateRelationship(0);
  v9 = sub_1ABA8C0D0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA8F4D8();
  v14 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v15 = sub_1ABA7AB80(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7AC18();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA99440(v22, v23, v24, v25, v26, v27, v28, v29, v155[0]);
  MEMORY[0x1EEE9AC00](v30);
  v32 = v155 - v31;
  v33 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v33);
  v35 = *(v34 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v36);
  sub_1ABC6C7C0();
  sub_1ABAFF390(0, &qword_1EB4D5F68, off_1E79601B8);
  v37 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
  if (!v37)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v38 = v37;
  v39 = *(v2 + 2);
  v40 = *(v2 + 3);
  v41 = type metadata accessor for CustomGraphTransportationActivityEvent(0);
  v177 = v2;
  v178 = v41;
  v42 = &v2[v41[6]];
  v43 = *(sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00) + 28);
  v176 = v42;
  sub_1ABB2E9FC(&v42[v43], v1, &qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABAA5898();
  v183 = v20;
  v170 = v38;
  v169 = v39;
  v168 = v40;
  v182 = v5;
  v156 = v4;
  v155[1] = v11;
  if (v44)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
    v167 = 0;
    v51 = v184;
  }

  else
  {
    sub_1ABA89DD8();
    v45 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968(v45);
    sub_1ABA9E550(v4 + v46, v32);
    v47 = sub_1ABAA3560();
    v48 = v184;
    sub_1ABA8B8D0(v47);
    v49 = sub_1ABAA3914();
    sub_1ABA9E550(v49, v183);
    sub_1ABA9F7CC();
    v50 = *v5;
    v51 = v48;
    v52 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();
    v20 = v183;

    sub_1ABA96094();
    v167 = sub_1ABC69E44(v53, v54, v55);
    sub_1ABC6AA68(v1);
  }

  v56 = v177;
  v57 = *&v177[v178[7]];
  v58 = *(v57 + 16);
  v59 = MEMORY[0x1E69E7CC0];
  v181 = v32;
  if (v58)
  {
    v188 = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    v20 = 0;
    v179 = v58;
    v180 = (v57 + 32);
    while (1)
    {
      v60 = &v180[8 * v20];
      v61 = *(v60 + 16);
      v186 = *(v60 + 24);
      v63 = *(v60 + 32);
      v62 = *(v60 + 40);
      if (*(v60 + 56))
      {
        v64 = *(v60 + 32);
        swift_bridgeObjectRetain_n();
      }

      else
      {
        v65 = sub_1ABA8CB08(v60);
        sub_1ABAFF390(v65, &qword_1EB4D5EF8, off_1E79600C8);
        v66 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABC6C5D4();
        swift_bridgeObjectRetain_n();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_93;
        }
      }

      v67 = *(v62 + 16);
      if (v67)
      {
        break;
      }

LABEL_16:
      ++v20;
      v71 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABC69D78();
      sub_1ABC6C688();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v20 == v58)
      {
        v59 = v188;
        v51 = v184;
        v56 = v177;
        goto LABEL_18;
      }
    }

    v185 = v63;
    v187 = MEMORY[0x1E69E7CC0];

    sub_1ABA88DF8();
    sub_1ABAFF390(0, &qword_1EB4D5EF8, off_1E79600C8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v69 = (v62 + 32);
    while (1)
    {
      v70 = *v69++;
      if (![objc_allocWithZone(ObjCClassFromMetadata) initWithValue_])
      {
        goto LABEL_87;
      }

      sub_1ABF24B94();
      sub_1ABC6C884(v187);
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (!--v67)
      {
        v58 = v179;
        goto LABEL_16;
      }
    }
  }

LABEL_18:
  v72 = *&v56[v178[8]];
  v73 = *(v72 + 16);
  v74 = MEMORY[0x1E69E7CC0];
  v166 = v59;
  if (v73)
  {
    v188 = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    v20 = 0;
    v179 = v73;
    v180 = (v72 + 32);
    while (1)
    {
      v75 = &v180[8 * v20];
      v76 = *(v75 + 16);
      v77 = *(v75 + 32);
      v78 = *(v75 + 40);
      v79 = *(v75 + 56);
      v185 = *(v75 + 24);
      v186 = v77;
      if (v79)
      {
        sub_1ABA8908C();
      }

      else
      {
        v80 = sub_1ABA8CB08(v75);
        sub_1ABAFF390(v80, &qword_1EB4D5F08, off_1E7960048);
        v81 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_94;
        }
      }

      v82 = *(v78 + 16);
      if (v82)
      {
        break;
      }

LABEL_29:
      ++v20;
      v86 = objc_allocWithZone(GDGraphLocationRelationship);
      v59 = v186;
      sub_1ABC69D78();
      sub_1ABC6C688();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v20 == v73)
      {
        v87 = v188;
        v51 = v184;
        v56 = v177;
        goto LABEL_32;
      }
    }

    v187 = v74;

    sub_1ABA88DF8();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v83 = swift_getObjCClassFromMetadata();
    v84 = (v78 + 32);
    while (1)
    {
      v85 = *v84++;
      if (![objc_allocWithZone(v83) initWithValue_])
      {
        break;
      }

      sub_1ABF24B94();
      sub_1ABC6C884(v187);
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (!--v82)
      {
        v74 = MEMORY[0x1E69E7CC0];
        v73 = v179;
        goto LABEL_29;
      }
    }

LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v87 = MEMORY[0x1E69E7CC0];
LABEL_32:
  v88 = &v56[v178[9]];
  if (v88[16])
  {
    v89 = 0;
  }

  else
  {
    v90 = *(v88 + 1);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v89 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v89)
    {
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }
  }

  v91 = &v56[v178[10]];
  v92 = v91[16];
  v179 = v91;
  v180 = v88;
  if (v92)
  {
    v93 = 0;
  }

  else
  {
    v94 = *(v91 + 1);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v93 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v93)
    {
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
      return;
    }
  }

  v95 = &v56[v178[11]];
  if ((v95[16] & 1) == 0)
  {
    v96 = *(v95 + 1);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_98;
    }
  }

  sub_1ABA89F20(&v56[v178[12]]);
  v165 = v93;
  v164 = v97;
  v172 = v98;
  v175 = v95;
  if (!v44)
  {
    sub_1ABC6C3F8();
  }

  sub_1ABA9F4DC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v163 = sub_1ABAA045C();
  v100 = v177;
  v99 = v178;
  v101 = &v177[v178[13]];
  v102 = *(v101 + 8);
  v173 = v101;
  v162 = sub_1ABC5021C(v102, *(v101 + 16));
  v103 = &v100[v99[14]];
  v104 = *(v103 + 8);
  v174 = v103;
  v161 = sub_1ABC5021C(v104, *(v103 + 16));
  v105 = 0;
  v106 = &v100[v99[15]];
  if ((v106[16] & 1) == 0)
  {
    v99 = *(v106 + 1);
    sub_1ABAFF390(0, &qword_1EB4D5F70, off_1E7960098);
    v105 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v105)
    {
      goto LABEL_99;
    }
  }

  v171 = v106;
  v159 = v105;
  v157 = &v100[v178[16]];
  v107 = v157[8];
  if (v107 == 8)
  {
    v108 = 0;
  }

  else
  {
    v108 = qword_1ABF4FEF0[v107];
  }

  v160 = v89;
  v178 = v87;
  v158 = sub_1ABC501D0(v108, v107 == 8);
  v109 = *(v100 + 1);
  sub_1ABAA154C();
  v177 = v110;
  if (v100)
  {
    v188 = MEMORY[0x1E69E7CC0];

    sub_1ABA9E6A8();
    sub_1ABA935AC(&v187);
    v112 = v99 + v111;
    v185 = *(v113 + 72);
    v114 = v156;
    do
    {
      v186 = v100;
      sub_1ABC6AA04(v112, v114);
      v115 = v182;
      v116 = (v114 + *(v182 + 5));
      v117 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      sub_1ABA8C968(v117);
      sub_1ABB2E9FC(v116 + v118, v181, &qword_1EB4D9BF0, &qword_1ABF34240);
      v119 = (v114 + *(v115 + 6));
      sub_1ABB2E9FC(v119 + v93[7], v51, &qword_1EB4D9BF0, &qword_1ABF34240);
      v120 = (v114 + *(v115 + 7));
      sub_1ABB2E9FC(v120 + v93[7], v183, &qword_1EB4D9BF0, &qword_1ABF34240);
      v121 = *v116;
      v122 = *v119;
      v123 = *v120;
      v51 = v184;
      v124 = objc_allocWithZone(GDGraphDateRelationship);

      v125 = v186;
      sub_1ABAA2654();
      v59 = sub_1ABC69E44(v126, v127, v128);
      sub_1ABC6AA68(v114);
      v93 = &v188;
      sub_1ABF24B94();
      v20 = v188[2];
      sub_1ABF24BD4();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      v112 += v185;
      v100 = v125 - 1;
    }

    while (v100);
    v129 = v188;
  }

  else
  {

    v129 = MEMORY[0x1E69E7CC0];
  }

  v130 = *(*v180 + 16);
  v131 = MEMORY[0x1E69E7CC0];
  if (v130)
  {
    sub_1ABA9F87C(MEMORY[0x1E69E7CC0]);
    sub_1ABF24BC4();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v100 = swift_getObjCClassFromMetadata();
    sub_1ABC6C4FC();
    while (1)
    {
      sub_1ABC6C508();
      if (v132)
      {
        break;
      }

      if (![objc_allocWithZone(v100) initWithValue_])
      {
        goto LABEL_89;
      }

      sub_1ABA8CEB4();
      sub_1ABAB6908();
      sub_1ABA894EC();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (v130 == v51)
      {
        v131 = v188;
        goto LABEL_58;
      }
    }

    __break(1u);
    goto LABEL_84;
  }

LABEL_58:
  v186 = v131;
  v133 = *(*v179 + 16);
  v134 = MEMORY[0x1E69E7CC0];
  if (v133)
  {
    sub_1ABA9F87C(MEMORY[0x1E69E7CC0]);
    sub_1ABF24BC4();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v100 = swift_getObjCClassFromMetadata();
    sub_1ABC6C4FC();
    while (1)
    {
      sub_1ABC6C508();
      if (v132)
      {
        break;
      }

      if (![objc_allocWithZone(v100) initWithValue_])
      {
        goto LABEL_90;
      }

      sub_1ABA8CEB4();
      sub_1ABAB6908();
      sub_1ABA894EC();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (v133 == v51)
      {
        v134 = v188;
        goto LABEL_64;
      }
    }

LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

LABEL_64:
  v184 = v134;
  v135 = *(*v175 + 16);
  v136 = MEMORY[0x1E69E7CC0];
  v185 = v129;
  if (v135)
  {
    v188 = MEMORY[0x1E69E7CC0];
    sub_1ABC6C4AC();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    v100 = swift_getObjCClassFromMetadata();
    sub_1ABC6C4FC();
    while (1)
    {
      sub_1ABC6C508();
      if (v132)
      {
        goto LABEL_85;
      }

      if (![objc_allocWithZone(v100) initWithValue_])
      {
        goto LABEL_91;
      }

      sub_1ABA8CEB4();
      sub_1ABAB6908();
      sub_1ABA894EC();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (v135 == v51)
      {
        v136 = v188;
        break;
      }
    }
  }

  sub_1ABC6C670(v172);
  v137 = MEMORY[0x1E69E7CC0];
  if (v135)
  {
    sub_1ABA9F87C(MEMORY[0x1E69E7CC0]);
    sub_1ABF24BC4();
    v138 = v100 + 32;
    do
    {
      v139 = *v138++;
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      sub_1ABC6C6E4();
      sub_1ABAB6908();
      sub_1ABC6C494();
      sub_1ABF24BA4();
      --v135;
    }

    while (v135);
    v137 = v188;
  }

  v183 = v137;
  sub_1ABC6C670(v173);
  v182 = MEMORY[0x1E69E7CC0];
  sub_1ABC6C670(v174);
  v181 = MEMORY[0x1E69E7CC0];
  v140 = *v171;
  v141 = *(*v171 + 16);
  if (v141)
  {
    v180 = v136;
    v188 = MEMORY[0x1E69E7CC0];
    sub_1ABC6C4AC();
    sub_1ABAFF390(0, &qword_1EB4D5F70, off_1E7960098);
    v142 = swift_getObjCClassFromMetadata();
    v143 = 0;
    while (v143 < *(v140 + 16))
    {
      if (![objc_allocWithZone(v142) initWithValue_])
      {
        goto LABEL_92;
      }

      ++v143;
      sub_1ABF24B94();
      sub_1ABAB6908();
      sub_1ABA894EC();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (v141 == v143)
      {
        goto LABEL_79;
      }
    }

    goto LABEL_86;
  }

LABEL_79:
  sub_1ABA9F5D0(&v189);
  v144 = *(v59 + 2);
  if (v144)
  {
    v188 = MEMORY[0x1E69E7CC0];
    sub_1ABC6C4AC();
    v145 = v59 + 32;
    do
    {
      v146 = *v145++;
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      sub_1ABC6C6E4();
      sub_1ABAB6908();
      sub_1ABC6C494();
      sub_1ABF24BA4();
      --v144;
    }

    while (v144);
  }

  objc_allocWithZone(GDGraphTransportationActivityEvent);
  v154 = v158;
  v153 = v159;
  v152 = v161;
  sub_1ABAA3CF0();
  v151 = v147;
  sub_1ABA8A034();
  v150 = v148;
  sub_1ABA8A1D4(&v190);
  sub_1ABC67B68(v170, v169, v168, v167, v166, v178, v160, v165, v149, v150, v151, v152, v153, v154);
  sub_1ABA8B438();
}

void __swiftcall CustomGraphWorkingActivityEvent.toObjectiveCGraphObject()(GDGraphWorkingActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  v8 = sub_1ABAA9198();
  v9 = sub_1ABA8C0D0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA8F4D8();
  v12 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v13 = sub_1ABA7AB80(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7E77C(v16, v86);
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA99440(v18, v19, v20, v21, v22, v23, v24, v25, v87);
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA954CC();
  v27 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v27);
  v29 = *(v28 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D5F78, off_1E7960220);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v31 = sub_1ABA90CF4();
  v32 = type metadata accessor for CustomGraphWorkingActivityEvent(v31);
  sub_1ABAA0EE8(v32);
  v33 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v33 + 28));
  sub_1ABAA5898();
  if (v34)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    v35 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968(v35);
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v36);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v37 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v38 = sub_1ABAA40C4();
    sub_1ABC6C440(v38);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABAB5AC8(v39);
        sub_1ABAFF390(v41, v42, off_1E79600C8);
        v43 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_75;
        }
      }

      v44 = v3[2];
      if (v44)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v47 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v45 = sub_1ABA8BCD4();
    sub_1ABAFF390(v45, v46, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v44)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_70;
  }

LABEL_18:
  sub_1ABAB510C();
  v48 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v50)
      {
        sub_1ABA8908C();
      }

      else
      {
        v51 = sub_1ABA8CB08(v49);
        sub_1ABAFF390(v51, &qword_1EB4D5F08, off_1E7960048);
        v52 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_76;
        }
      }

      v53 = v3[2];
      if (v53)
      {
        break;
      }

      v1 = v48;
LABEL_29:
      ++v5;
      v54 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v53)
      {
        v1 = v89;
        v48 = MEMORY[0x1E69E7CC0];
        v6 = v88;
        goto LABEL_29;
      }
    }

LABEL_71:
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

LABEL_31:
  sub_1ABAABCB8();
  if (v55)
  {
    v56 = 0;
  }

  else
  {
    v57 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v56 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v56)
    {
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v58 & 1) == 0)
  {
    v59 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_79;
    }
  }

  sub_1ABAA1F6C();
  if ((v61 & 1) == 0)
  {
    v62 = *(v60 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_80;
    }
  }

  sub_1ABAB1118();
  if (v34)
  {
    v63 = 0;
  }

  else
  {
    v63 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v64 = sub_1ABAA045C();
  v65 = sub_1ABA97B70(v64);
  sub_1ABA80B88(v65);
  if (v3)
  {
    v90 = v48;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v66 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v67 = sub_1ABA90834(v66);
      sub_1ABB2E9FC(v67, v68, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v69 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v70 = sub_1ABA9F354();
      sub_1ABC6AA68(v70);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v34);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v71 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v72)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_72;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v56)
      {
        v71 = v90;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_68;
  }

LABEL_53:
  sub_1ABAA2640(v71);
  v73 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v72)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_73;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v73)
      {
        goto LABEL_58;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

LABEL_58:
  sub_1ABAA111C();
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    do
    {
      sub_1ABA9F274();
      if (v72)
      {
        goto LABEL_69;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_74;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
    }

    while (v3 != v7);
  }

  sub_1ABA8282C();
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v74 = sub_1ABA95120();
      sub_1ABAAD268(v74);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
  }

  sub_1ABA7AD30();
  objc_allocWithZone(GDGraphWorkingActivityEvent);
  v75 = sub_1ABA8F488();
  sub_1ABC67F50(v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
  sub_1ABA89A08();
  sub_1ABA8B438();
}

void __swiftcall CustomGraphMeetingActivityEvent.toObjectiveCGraphObject()(GDGraphMeetingActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  v8 = sub_1ABAA9198();
  v9 = sub_1ABA8C0D0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA8F4D8();
  v12 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v13 = sub_1ABA7AB80(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7E77C(v16, v86);
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA99440(v18, v19, v20, v21, v22, v23, v24, v25, v87);
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA954CC();
  v27 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v27);
  v29 = *(v28 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D5F80, off_1E7960078);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v31 = sub_1ABA90CF4();
  v32 = type metadata accessor for CustomGraphMeetingActivityEvent(v31);
  sub_1ABAA0EE8(v32);
  v33 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v33 + 28));
  sub_1ABAA5898();
  if (v34)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    v35 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968(v35);
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v36);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v37 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v38 = sub_1ABAA40C4();
    sub_1ABC6C440(v38);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABAB5AC8(v39);
        sub_1ABAFF390(v41, v42, off_1E79600C8);
        v43 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_75;
        }
      }

      v44 = v3[2];
      if (v44)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v47 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v45 = sub_1ABA8BCD4();
    sub_1ABAFF390(v45, v46, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v44)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_70;
  }

LABEL_18:
  sub_1ABAB510C();
  v48 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v50)
      {
        sub_1ABA8908C();
      }

      else
      {
        v51 = sub_1ABA8CB08(v49);
        sub_1ABAFF390(v51, &qword_1EB4D5F08, off_1E7960048);
        v52 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_76;
        }
      }

      v53 = v3[2];
      if (v53)
      {
        break;
      }

      v1 = v48;
LABEL_29:
      ++v5;
      v54 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v53)
      {
        v1 = v89;
        v48 = MEMORY[0x1E69E7CC0];
        v6 = v88;
        goto LABEL_29;
      }
    }

LABEL_71:
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

LABEL_31:
  sub_1ABAABCB8();
  if (v55)
  {
    v56 = 0;
  }

  else
  {
    v57 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v56 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v56)
    {
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v58 & 1) == 0)
  {
    v59 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_79;
    }
  }

  sub_1ABAA1F6C();
  if ((v61 & 1) == 0)
  {
    v62 = *(v60 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_80;
    }
  }

  sub_1ABAB1118();
  if (v34)
  {
    v63 = 0;
  }

  else
  {
    v63 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v64 = sub_1ABAA045C();
  v65 = sub_1ABA97B70(v64);
  sub_1ABA80B88(v65);
  if (v3)
  {
    v90 = v48;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v66 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v67 = sub_1ABA90834(v66);
      sub_1ABB2E9FC(v67, v68, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v69 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v70 = sub_1ABA9F354();
      sub_1ABC6AA68(v70);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v34);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v71 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v72)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_72;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v56)
      {
        v71 = v90;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_68;
  }

LABEL_53:
  sub_1ABAA2640(v71);
  v73 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v72)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_73;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v73)
      {
        goto LABEL_58;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

LABEL_58:
  sub_1ABAA111C();
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    do
    {
      sub_1ABA9F274();
      if (v72)
      {
        goto LABEL_69;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_74;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
    }

    while (v3 != v7);
  }

  sub_1ABA8282C();
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v74 = sub_1ABA95120();
      sub_1ABAAD268(v74);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
  }

  sub_1ABA7AD30();
  objc_allocWithZone(GDGraphMeetingActivityEvent);
  v75 = sub_1ABA8F488();
  sub_1ABC67F50(v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
  sub_1ABA89A08();
  sub_1ABA8B438();
}

void __swiftcall CustomGraphEatingActivityEvent.toObjectiveCGraphObject()(GDGraphEatingActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  v8 = sub_1ABAA9198();
  v9 = sub_1ABA8C0D0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA8F4D8();
  v12 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v13 = sub_1ABA7AB80(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7E77C(v16, v86);
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA99440(v18, v19, v20, v21, v22, v23, v24, v25, v87);
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA954CC();
  v27 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v27);
  v29 = *(v28 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D5F88, off_1E795FFB0);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v31 = sub_1ABA90CF4();
  v32 = type metadata accessor for CustomGraphEatingActivityEvent(v31);
  sub_1ABAA0EE8(v32);
  v33 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v33 + 28));
  sub_1ABAA5898();
  if (v34)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    v35 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968(v35);
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v36);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v37 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v38 = sub_1ABAA40C4();
    sub_1ABC6C440(v38);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABAB5AC8(v39);
        sub_1ABAFF390(v41, v42, off_1E79600C8);
        v43 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_75;
        }
      }

      v44 = v3[2];
      if (v44)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v47 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v45 = sub_1ABA8BCD4();
    sub_1ABAFF390(v45, v46, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v44)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_70;
  }

LABEL_18:
  sub_1ABAB510C();
  v48 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v50)
      {
        sub_1ABA8908C();
      }

      else
      {
        v51 = sub_1ABA8CB08(v49);
        sub_1ABAFF390(v51, &qword_1EB4D5F08, off_1E7960048);
        v52 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_76;
        }
      }

      v53 = v3[2];
      if (v53)
      {
        break;
      }

      v1 = v48;
LABEL_29:
      ++v5;
      v54 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v53)
      {
        v1 = v89;
        v48 = MEMORY[0x1E69E7CC0];
        v6 = v88;
        goto LABEL_29;
      }
    }

LABEL_71:
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

LABEL_31:
  sub_1ABAABCB8();
  if (v55)
  {
    v56 = 0;
  }

  else
  {
    v57 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v56 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v56)
    {
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v58 & 1) == 0)
  {
    v59 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_79;
    }
  }

  sub_1ABAA1F6C();
  if ((v61 & 1) == 0)
  {
    v62 = *(v60 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_80;
    }
  }

  sub_1ABAB1118();
  if (v34)
  {
    v63 = 0;
  }

  else
  {
    v63 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v64 = sub_1ABAA045C();
  v65 = sub_1ABA97B70(v64);
  sub_1ABA80B88(v65);
  if (v3)
  {
    v90 = v48;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v66 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v67 = sub_1ABA90834(v66);
      sub_1ABB2E9FC(v67, v68, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v69 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v70 = sub_1ABA9F354();
      sub_1ABC6AA68(v70);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v34);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v71 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v72)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_72;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v56)
      {
        v71 = v90;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_68;
  }

LABEL_53:
  sub_1ABAA2640(v71);
  v73 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v72)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_73;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v73)
      {
        goto LABEL_58;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

LABEL_58:
  sub_1ABAA111C();
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    do
    {
      sub_1ABA9F274();
      if (v72)
      {
        goto LABEL_69;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_74;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
    }

    while (v3 != v7);
  }

  sub_1ABA8282C();
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v74 = sub_1ABA95120();
      sub_1ABAAD268(v74);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
  }

  sub_1ABA7AD30();
  objc_allocWithZone(GDGraphEatingActivityEvent);
  v75 = sub_1ABA8F488();
  sub_1ABC67F50(v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
  sub_1ABA89A08();
  sub_1ABA8B438();
}

void __swiftcall CustomGraphWatchingTVActivityEvent.toObjectiveCGraphObject()(GDGraphWatchingTVActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  v8 = sub_1ABAA9198();
  v9 = sub_1ABA8C0D0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA8F4D8();
  v12 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v13 = sub_1ABA7AB80(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7E77C(v16, v86);
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA99440(v18, v19, v20, v21, v22, v23, v24, v25, v87);
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA954CC();
  v27 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v27);
  v29 = *(v28 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D5F90, off_1E7960210);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v31 = sub_1ABA90CF4();
  v32 = type metadata accessor for CustomGraphWatchingTVActivityEvent(v31);
  sub_1ABAA0EE8(v32);
  v33 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v33 + 28));
  sub_1ABAA5898();
  if (v34)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    v35 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968(v35);
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v36);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v37 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v38 = sub_1ABAA40C4();
    sub_1ABC6C440(v38);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABAB5AC8(v39);
        sub_1ABAFF390(v41, v42, off_1E79600C8);
        v43 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_75;
        }
      }

      v44 = v3[2];
      if (v44)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v47 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v45 = sub_1ABA8BCD4();
    sub_1ABAFF390(v45, v46, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v44)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_70;
  }

LABEL_18:
  sub_1ABAB510C();
  v48 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v50)
      {
        sub_1ABA8908C();
      }

      else
      {
        v51 = sub_1ABA8CB08(v49);
        sub_1ABAFF390(v51, &qword_1EB4D5F08, off_1E7960048);
        v52 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_76;
        }
      }

      v53 = v3[2];
      if (v53)
      {
        break;
      }

      v1 = v48;
LABEL_29:
      ++v5;
      v54 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v53)
      {
        v1 = v89;
        v48 = MEMORY[0x1E69E7CC0];
        v6 = v88;
        goto LABEL_29;
      }
    }

LABEL_71:
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

LABEL_31:
  sub_1ABAABCB8();
  if (v55)
  {
    v56 = 0;
  }

  else
  {
    v57 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v56 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v56)
    {
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v58 & 1) == 0)
  {
    v59 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_79;
    }
  }

  sub_1ABAA1F6C();
  if ((v61 & 1) == 0)
  {
    v62 = *(v60 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_80;
    }
  }

  sub_1ABAB1118();
  if (v34)
  {
    v63 = 0;
  }

  else
  {
    v63 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v64 = sub_1ABAA045C();
  v65 = sub_1ABA97B70(v64);
  sub_1ABA80B88(v65);
  if (v3)
  {
    v90 = v48;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v66 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v67 = sub_1ABA90834(v66);
      sub_1ABB2E9FC(v67, v68, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v69 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v70 = sub_1ABA9F354();
      sub_1ABC6AA68(v70);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v34);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v71 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v72)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_72;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v56)
      {
        v71 = v90;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_68;
  }

LABEL_53:
  sub_1ABAA2640(v71);
  v73 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v72)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_73;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v73)
      {
        goto LABEL_58;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

LABEL_58:
  sub_1ABAA111C();
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    do
    {
      sub_1ABA9F274();
      if (v72)
      {
        goto LABEL_69;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_74;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
    }

    while (v3 != v7);
  }

  sub_1ABA8282C();
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v74 = sub_1ABA95120();
      sub_1ABAAD268(v74);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
  }

  sub_1ABA7AD30();
  objc_allocWithZone(GDGraphWatchingTVActivityEvent);
  v75 = sub_1ABA8F488();
  sub_1ABC67F50(v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
  sub_1ABA89A08();
  sub_1ABA8B438();
}

void __swiftcall CustomGraphCommunicatingActivityEvent.toObjectiveCGraphObject()(GDGraphCommunicatingActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  v8 = sub_1ABAA9198();
  v9 = sub_1ABA8C0D0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA8F4D8();
  v12 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v13 = sub_1ABA7AB80(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7E77C(v16, v86);
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA99440(v18, v19, v20, v21, v22, v23, v24, v25, v87);
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA954CC();
  v27 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v27);
  v29 = *(v28 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D5F98, off_1E795FF68);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v31 = sub_1ABA90CF4();
  v32 = type metadata accessor for CustomGraphCommunicatingActivityEvent(v31);
  sub_1ABAA0EE8(v32);
  v33 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v33 + 28));
  sub_1ABAA5898();
  if (v34)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    v35 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968(v35);
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v36);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v37 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v38 = sub_1ABAA40C4();
    sub_1ABC6C440(v38);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABAB5AC8(v39);
        sub_1ABAFF390(v41, v42, off_1E79600C8);
        v43 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_75;
        }
      }

      v44 = v3[2];
      if (v44)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v47 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v45 = sub_1ABA8BCD4();
    sub_1ABAFF390(v45, v46, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v44)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_70;
  }

LABEL_18:
  sub_1ABAB510C();
  v48 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v50)
      {
        sub_1ABA8908C();
      }

      else
      {
        v51 = sub_1ABA8CB08(v49);
        sub_1ABAFF390(v51, &qword_1EB4D5F08, off_1E7960048);
        v52 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_76;
        }
      }

      v53 = v3[2];
      if (v53)
      {
        break;
      }

      v1 = v48;
LABEL_29:
      ++v5;
      v54 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v53)
      {
        v1 = v89;
        v48 = MEMORY[0x1E69E7CC0];
        v6 = v88;
        goto LABEL_29;
      }
    }

LABEL_71:
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

LABEL_31:
  sub_1ABAABCB8();
  if (v55)
  {
    v56 = 0;
  }

  else
  {
    v57 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v56 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v56)
    {
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v58 & 1) == 0)
  {
    v59 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_79;
    }
  }

  sub_1ABAA1F6C();
  if ((v61 & 1) == 0)
  {
    v62 = *(v60 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_80;
    }
  }

  sub_1ABAB1118();
  if (v34)
  {
    v63 = 0;
  }

  else
  {
    v63 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v64 = sub_1ABAA045C();
  v65 = sub_1ABA97B70(v64);
  sub_1ABA80B88(v65);
  if (v3)
  {
    v90 = v48;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v66 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v67 = sub_1ABA90834(v66);
      sub_1ABB2E9FC(v67, v68, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v69 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v70 = sub_1ABA9F354();
      sub_1ABC6AA68(v70);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v34);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v71 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v72)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_72;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v56)
      {
        v71 = v90;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_68;
  }

LABEL_53:
  sub_1ABAA2640(v71);
  v73 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v72)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_73;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v73)
      {
        goto LABEL_58;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

LABEL_58:
  sub_1ABAA111C();
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    do
    {
      sub_1ABA9F274();
      if (v72)
      {
        goto LABEL_69;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_74;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
    }

    while (v3 != v7);
  }

  sub_1ABA8282C();
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v74 = sub_1ABA95120();
      sub_1ABAAD268(v74);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
  }

  sub_1ABA7AD30();
  objc_allocWithZone(GDGraphCommunicatingActivityEvent);
  v75 = sub_1ABA8F488();
  sub_1ABC67F50(v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
  sub_1ABA89A08();
  sub_1ABA8B438();
}

void __swiftcall CustomGraphShoppingActivityEvent.toObjectiveCGraphObject()(GDGraphShoppingActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  v8 = sub_1ABAA9198();
  v9 = sub_1ABA8C0D0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA8F4D8();
  v12 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v13 = sub_1ABA7AB80(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7E77C(v16, v86);
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA99440(v18, v19, v20, v21, v22, v23, v24, v25, v87);
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA954CC();
  v27 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v27);
  v29 = *(v28 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D5FA0, off_1E7960100);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v31 = sub_1ABA90CF4();
  v32 = type metadata accessor for CustomGraphShoppingActivityEvent(v31);
  sub_1ABAA0EE8(v32);
  v33 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v33 + 28));
  sub_1ABAA5898();
  if (v34)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    v35 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968(v35);
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v36);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v37 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v38 = sub_1ABAA40C4();
    sub_1ABC6C440(v38);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABAB5AC8(v39);
        sub_1ABAFF390(v41, v42, off_1E79600C8);
        v43 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_75;
        }
      }

      v44 = v3[2];
      if (v44)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v47 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v45 = sub_1ABA8BCD4();
    sub_1ABAFF390(v45, v46, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v44)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_70;
  }

LABEL_18:
  sub_1ABAB510C();
  v48 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v50)
      {
        sub_1ABA8908C();
      }

      else
      {
        v51 = sub_1ABA8CB08(v49);
        sub_1ABAFF390(v51, &qword_1EB4D5F08, off_1E7960048);
        v52 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_76;
        }
      }

      v53 = v3[2];
      if (v53)
      {
        break;
      }

      v1 = v48;
LABEL_29:
      ++v5;
      v54 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v53)
      {
        v1 = v89;
        v48 = MEMORY[0x1E69E7CC0];
        v6 = v88;
        goto LABEL_29;
      }
    }

LABEL_71:
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

LABEL_31:
  sub_1ABAABCB8();
  if (v55)
  {
    v56 = 0;
  }

  else
  {
    v57 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v56 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v56)
    {
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v58 & 1) == 0)
  {
    v59 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_79;
    }
  }

  sub_1ABAA1F6C();
  if ((v61 & 1) == 0)
  {
    v62 = *(v60 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_80;
    }
  }

  sub_1ABAB1118();
  if (v34)
  {
    v63 = 0;
  }

  else
  {
    v63 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v64 = sub_1ABAA045C();
  v65 = sub_1ABA97B70(v64);
  sub_1ABA80B88(v65);
  if (v3)
  {
    v90 = v48;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v66 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v67 = sub_1ABA90834(v66);
      sub_1ABB2E9FC(v67, v68, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v69 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v70 = sub_1ABA9F354();
      sub_1ABC6AA68(v70);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v34);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v71 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v72)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_72;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v56)
      {
        v71 = v90;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_68;
  }

LABEL_53:
  sub_1ABAA2640(v71);
  v73 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v72)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_73;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v73)
      {
        goto LABEL_58;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

LABEL_58:
  sub_1ABAA111C();
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    do
    {
      sub_1ABA9F274();
      if (v72)
      {
        goto LABEL_69;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_74;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
    }

    while (v3 != v7);
  }

  sub_1ABA8282C();
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v74 = sub_1ABA95120();
      sub_1ABAAD268(v74);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
  }

  sub_1ABA7AD30();
  objc_allocWithZone(GDGraphShoppingActivityEvent);
  v75 = sub_1ABA8F488();
  sub_1ABC67F50(v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
  sub_1ABA89A08();
  sub_1ABA8B438();
}

void __swiftcall CustomGraphMindfulnessActivityEvent.toObjectiveCGraphObject()(GDGraphMindfulnessActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  v8 = sub_1ABAA9198();
  v9 = sub_1ABA8C0D0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA8F4D8();
  v12 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v13 = sub_1ABA7AB80(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7E77C(v16, v86);
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA99440(v18, v19, v20, v21, v22, v23, v24, v25, v87);
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA954CC();
  v27 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v27);
  v29 = *(v28 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D5FA8, off_1E7960088);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v31 = sub_1ABA90CF4();
  v32 = type metadata accessor for CustomGraphMindfulnessActivityEvent(v31);
  sub_1ABAA0EE8(v32);
  v33 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v33 + 28));
  sub_1ABAA5898();
  if (v34)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    v35 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968(v35);
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v36);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v37 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v38 = sub_1ABAA40C4();
    sub_1ABC6C440(v38);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABAB5AC8(v39);
        sub_1ABAFF390(v41, v42, off_1E79600C8);
        v43 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_75;
        }
      }

      v44 = v3[2];
      if (v44)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v47 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v45 = sub_1ABA8BCD4();
    sub_1ABAFF390(v45, v46, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v44)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_70;
  }

LABEL_18:
  sub_1ABAB510C();
  v48 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v50)
      {
        sub_1ABA8908C();
      }

      else
      {
        v51 = sub_1ABA8CB08(v49);
        sub_1ABAFF390(v51, &qword_1EB4D5F08, off_1E7960048);
        v52 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_76;
        }
      }

      v53 = v3[2];
      if (v53)
      {
        break;
      }

      v1 = v48;
LABEL_29:
      ++v5;
      v54 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v53)
      {
        v1 = v89;
        v48 = MEMORY[0x1E69E7CC0];
        v6 = v88;
        goto LABEL_29;
      }
    }

LABEL_71:
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

LABEL_31:
  sub_1ABAABCB8();
  if (v55)
  {
    v56 = 0;
  }

  else
  {
    v57 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v56 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v56)
    {
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v58 & 1) == 0)
  {
    v59 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_79;
    }
  }

  sub_1ABAA1F6C();
  if ((v61 & 1) == 0)
  {
    v62 = *(v60 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_80;
    }
  }

  sub_1ABAB1118();
  if (v34)
  {
    v63 = 0;
  }

  else
  {
    v63 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v64 = sub_1ABAA045C();
  v65 = sub_1ABA97B70(v64);
  sub_1ABA80B88(v65);
  if (v3)
  {
    v90 = v48;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v66 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v67 = sub_1ABA90834(v66);
      sub_1ABB2E9FC(v67, v68, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v69 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v70 = sub_1ABA9F354();
      sub_1ABC6AA68(v70);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v34);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v71 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v72)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_72;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v56)
      {
        v71 = v90;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_68;
  }

LABEL_53:
  sub_1ABAA2640(v71);
  v73 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v72)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_73;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v73)
      {
        goto LABEL_58;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

LABEL_58:
  sub_1ABAA111C();
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    do
    {
      sub_1ABA9F274();
      if (v72)
      {
        goto LABEL_69;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_74;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
    }

    while (v3 != v7);
  }

  sub_1ABA8282C();
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v74 = sub_1ABA95120();
      sub_1ABAAD268(v74);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
  }

  sub_1ABA7AD30();
  objc_allocWithZone(GDGraphMindfulnessActivityEvent);
  v75 = sub_1ABA8F488();
  sub_1ABC67F50(v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
  sub_1ABA89A08();
  sub_1ABA8B438();
}