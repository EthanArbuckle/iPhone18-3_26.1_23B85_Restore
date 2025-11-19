uint64_t sub_248A332B8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_248A42B28();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_248A33364(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_248A42B28();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_248A33424@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_248A33520@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

unint64_t EnrollmentAssetType.description.getter()
{
  v1 = sub_248A42AC8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  if (!*v0)
  {
    v9 = 0xE400000000000000;
    v7 = 1701736302;
    goto LABEL_11;
  }

  v13 = 0;
  v14 = 0xE000000000000000;
  if (v6)
  {
    MEMORY[0x24C1E0E90](1702519143, 0xE400000000000000);
    if ((v6 & 2) == 0)
    {
LABEL_4:
      if ((v6 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_14;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_4;
  }

  MEMORY[0x24C1E0E90](0x73646E616820, 0xE600000000000000);
  if ((v6 & 4) == 0)
  {
LABEL_5:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  MEMORY[0x24C1E0E90](7893536, 0xE300000000000000);
  if ((v6 & 8) == 0)
  {
LABEL_6:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_16:
    MEMORY[0x24C1E0E90](0xD000000000000014, 0x8000000248A450B0);
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_15:
  MEMORY[0x24C1E0E90](7889184, 0xE300000000000000);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_16;
  }

LABEL_7:
  if ((v6 & 0x20) != 0)
  {
LABEL_8:
    MEMORY[0x24C1E0E90](0x616E6F7372657020, 0xE800000000000000);
  }

LABEL_9:
  v11 = v13;
  v12 = v14;
  sub_248A42AB8();
  sub_248A33BCC();
  v7 = sub_248A42DF8();
  v9 = v8;
  (*(v2 + 8))(v5, v1);

LABEL_11:
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_248A42E38();

  v11 = 0xD000000000000014;
  v12 = 0x8000000248A45090;
  MEMORY[0x24C1E0E90](v7, v9);

  MEMORY[0x24C1E0E90](41, 0xE100000000000000);
  return v11;
}

uint64_t sub_248A337E8()
{
  v1 = *v0;
  sub_248A42FC8();
  MEMORY[0x24C1E11A0](v1);
  return sub_248A42FF8();
}

uint64_t sub_248A3385C()
{
  v1 = *v0;
  sub_248A42FC8();
  MEMORY[0x24C1E11A0](v1);
  return sub_248A42FF8();
}

uint64_t sub_248A33950()
{
  sub_248A34D0C();
  sub_248A347CC();
  return sub_248A42C08();
}

uint64_t sub_248A339A4()
{
  sub_248A34D0C();
  sub_248A347CC();
  return sub_248A42C18();
}

BOOL sub_248A33A68(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_248A33A98@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_248A33AC4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_248A33B9C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

unint64_t sub_248A33BCC()
{
  result = qword_27EEB9E40;
  if (!qword_27EEB9E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB9E40);
  }

  return result;
}

uint64_t EnrollmentAssets.assets.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t EnrollmentAssets.fileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EnrollmentAssets() + 20);
  v4 = sub_248A42B28();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for EnrollmentAssets()
{
  result = qword_281510690;
  if (!qword_281510690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EnrollmentAssets.size.getter()
{
  v1 = (v0 + *(type metadata accessor for EnrollmentAssets() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t EnrollmentAssets.init(assets:fileURL:size:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  v9 = type metadata accessor for EnrollmentAssets();
  v10 = *(v9 + 20);
  v11 = sub_248A42B28();
  result = (*(*(v11 - 8) + 32))(&a5[v10], a2, v11);
  v13 = &a5[*(v9 + 24)];
  *v13 = a3;
  *(v13 + 1) = a4;
  return result;
}

unint64_t EnrollmentAssets.description.getter()
{
  sub_248A42E38();

  v7 = 0xD000000000000019;
  v8 = 0x8000000248A450D0;
  Dictionary<>.typesRepresented.getter(*v0, &v6);
  v1 = EnrollmentAssetType.description.getter();
  MEMORY[0x24C1E0E90](v1);

  MEMORY[0x24C1E0E90](0x203A657A6973202CLL, 0xE800000000000000);
  v2 = type metadata accessor for EnrollmentAssets();
  MEMORY[0x24C1E0E90](*(v0 + *(v2 + 24)), *(v0 + *(v2 + 24) + 8));
  MEMORY[0x24C1E0E90](0x5255656C6966202CLL, 0xEB00000000203A4CLL);
  v3 = *(v2 + 20);
  sub_248A42B28();
  sub_248A368C0(&qword_27EEB9E48, MEMORY[0x277CC9260]);
  v4 = sub_248A42F68();
  MEMORY[0x24C1E0E90](v4);

  return v7;
}

uint64_t Dictionary<>.typesRepresented.getter@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = 0;
  v3 = 0;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  for (i = (v4 + 63) >> 6; v6; v3 |= *(*(result + 48) + ((v8 << 9) | (8 * v9))))
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= i)
    {
      *a2 = v3;
      return result;
    }

    v6 = *(result + 64 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t EnrollmentAssets.encoded()()
{
  v0 = sub_248A42AA8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_248A42A98();
  type metadata accessor for EnrollmentAssets();
  sub_248A368C0(&qword_27EEB9E50, type metadata accessor for EnrollmentAssets);
  v3 = sub_248A42A88();

  return v3;
}

uint64_t static EnrollmentAssets.decoded(from:withUpdatedFileURL:)@<X0>(uint64_t a1@<X2>, char *a2@<X8>)
{
  v5 = type metadata accessor for EnrollmentAssets();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20]();
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_248A42A78();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_248A42A68();
  sub_248A368C0(&qword_27EEB9E58, type metadata accessor for EnrollmentAssets);
  sub_248A42A58();

  if (!v2)
  {
    v13 = *v8;
    v14 = *(v5 + 20);
    v15 = sub_248A42B28();
    (*(*(v15 - 8) + 16))(&a2[v14], a1, v15);
    v16 = (v8 + *(v5 + 24));
    v18 = *v16;
    v17 = v16[1];

    result = sub_248A34278(v8);
    *a2 = v13;
    v19 = &a2[*(v5 + 24)];
    *v19 = v18;
    *(v19 + 1) = v17;
  }

  return result;
}

uint64_t sub_248A34278(uint64_t a1)
{
  v2 = type metadata accessor for EnrollmentAssets();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_248A342D4()
{
  v1 = 0x4C5255656C6966;
  if (*v0 != 1)
  {
    v1 = 1702521203;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x737465737361;
  }
}

uint64_t sub_248A34324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_248A374A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_248A34364(uint64_t a1)
{
  v2 = sub_248A34680();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248A343A0(uint64_t a1)
{
  v2 = sub_248A34680();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EnrollmentAssets.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB9E60, &qword_248A434F0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_248A34680();
  sub_248A43018();
  v18 = *v3;
  v17[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB9E70, &qword_248A434F8);
  sub_248A346D4();
  sub_248A42F58();
  if (!v2)
  {
    v11 = type metadata accessor for EnrollmentAssets();
    v12 = *(v11 + 20);
    v17[6] = 1;
    sub_248A42B28();
    sub_248A368C0(&qword_27EEB9E98, MEMORY[0x277CC9260]);
    sub_248A42F58();
    v13 = (v3 + *(v11 + 24));
    v14 = *v13;
    v15 = v13[1];
    v17[5] = 2;
    sub_248A42F38();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_248A34680()
{
  result = qword_27EEB9E68;
  if (!qword_27EEB9E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB9E68);
  }

  return result;
}

unint64_t sub_248A346D4()
{
  result = qword_27EEB9E78;
  if (!qword_27EEB9E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB9E70, &qword_248A434F8);
    sub_248A347CC();
    sub_248A34D60(&qword_27EEB9E88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB9E78);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_248A347CC()
{
  result = qword_27EEB9E80;
  if (!qword_27EEB9E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB9E80);
  }

  return result;
}

uint64_t EnrollmentAssets.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_248A42B28();
  v28 = *(v3 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB9EA0, &qword_248A43508);
  v29 = *(v7 - 8);
  v30 = v7;
  v8 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v24 - v9;
  v11 = type metadata accessor for EnrollmentAssets();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20]();
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_248A34680();
  v31 = v10;
  v16 = v32;
  sub_248A43008();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = v11;
  v17 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB9E70, &qword_248A434F8);
  v35 = 0;
  sub_248A34C5C();
  sub_248A42EE8();
  v26 = v36;
  *v14 = v36;
  v34 = 1;
  sub_248A368C0(&qword_27EEB9EC0, MEMORY[0x277CC9260]);
  sub_248A42EE8();
  (*(v28 + 32))(&v14[*(v32 + 20)], v6, v3);
  v33 = 2;
  v18 = sub_248A42EC8();
  v25 = v19;
  v20 = v18;
  (*(v17 + 8))(v31, v30);
  v21 = &v14[*(v32 + 24)];
  v22 = v25;
  *v21 = v20;
  v21[1] = v22;
  sub_248A34DCC(v14, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_248A34278(v14);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_248A34C5C()
{
  result = qword_27EEB9EA8;
  if (!qword_27EEB9EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB9E70, &qword_248A434F8);
    sub_248A34D0C();
    sub_248A34D60(&qword_27EEB9EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB9EA8);
  }

  return result;
}

unint64_t sub_248A34D0C()
{
  result = qword_27EEB9EB0;
  if (!qword_27EEB9EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB9EB0);
  }

  return result;
}

uint64_t sub_248A34D60(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB9E90, &qword_248A43500);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_248A34DCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnrollmentAssets();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_248A34E60()
{
  sub_248A368C0(&qword_27EEB9E58, type metadata accessor for EnrollmentAssets);
  sub_248A368C0(&qword_27EEB9E50, type metadata accessor for EnrollmentAssets);
  return sub_248A42C08();
}

uint64_t sub_248A34F10()
{
  sub_248A368C0(&qword_27EEB9E58, type metadata accessor for EnrollmentAssets);
  sub_248A368C0(&qword_27EEB9E50, type metadata accessor for EnrollmentAssets);
  return sub_248A42C18();
}

char *Dictionary<>.allAssetHandles.getter(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (v5)
  {
LABEL_10:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v5)));
    v12 = *(*(a1 + 56) + v11);
    v13 = *(v12 + 16);
    v14 = *(v9 + 2);
    v15 = v14 + v13;
    if (__OFADD__(v14, v13))
    {
      goto LABEL_24;
    }

    v16 = *(*(a1 + 56) + v11);

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v15 > *(v9 + 3) >> 1)
    {
      if (v14 <= v15)
      {
        v17 = v14 + v13;
      }

      else
      {
        v17 = v14;
      }

      result = sub_248A366B8(result, v17, 1, v9);
      v9 = result;
    }

    v5 &= v5 - 1;
    if (*(v12 + 16))
    {
      if ((*(v9 + 3) >> 1) - *(v9 + 2) < v13)
      {
        goto LABEL_26;
      }

      swift_arrayInitWithCopy();

      if (v13)
      {
        v18 = *(v9 + 2);
        v19 = __OFADD__(v18, v13);
        v20 = v18 + v13;
        if (v19)
        {
          goto LABEL_27;
        }

        *(v9 + 2) = v20;
      }
    }

    else
    {

      if (v13)
      {
        goto LABEL_25;
      }
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v9;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_10;
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
  return result;
}

DeviceSharingEnrollmentServices::EnrollmentAssetRequest::Context_optional __swiftcall EnrollmentAssetRequest.Context.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_248A42E78();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t EnrollmentAssetRequest.Context.rawValue.getter()
{
  v1 = 0x7473657567;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72656E776FLL;
  }
}

uint64_t sub_248A3522C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x7473657567;
  v5 = 0x8000000248A45070;
  if (v2 != 1)
  {
    v4 = 0xD000000000000014;
    v3 = 0x8000000248A45070;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x72656E776FLL;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = 0x7473657567;
  if (*a2 == 1)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xD000000000000014;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x72656E776FLL;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_248A42F78();
  }

  return v11 & 1;
}

uint64_t sub_248A35318()
{
  v1 = *v0;
  sub_248A42FC8();
  sub_248A42CA8();

  return sub_248A42FF8();
}

uint64_t sub_248A353B8()
{
  *v0;
  *v0;
  sub_248A42CA8();
}

uint64_t sub_248A35444()
{
  v1 = *v0;
  sub_248A42FC8();
  sub_248A42CA8();

  return sub_248A42FF8();
}

void sub_248A354EC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x7473657567;
  if (v2 != 1)
  {
    v5 = 0xD000000000000014;
    v4 = 0x8000000248A45070;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x72656E776FLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t EnrollmentAssetRequest.deviceIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

id static EnrollmentAssetRequest.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EEB9E20 != -1)
  {
    swift_once();
  }

  v2 = qword_27EEB9E28;
  v3 = qword_27EEBA208;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_27EEBA210;
  v5 = type metadata accessor for AssetVersionRange();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR___DSAssetVersionRange_minimumVersion] = v3;
  *&v6[OBJC_IVAR___DSAssetVersionRange_maximumVersion] = v4;
  v20.receiver = v6;
  v20.super_class = v5;
  v7 = v4;
  v8 = v3;
  v9 = v7;
  v10 = objc_msgSendSuper2(&v20, sel_init);
  v11 = objc_allocWithZone(v5);
  *&v11[OBJC_IVAR___DSAssetVersionRange_minimumVersion] = v3;
  *&v11[OBJC_IVAR___DSAssetVersionRange_maximumVersion] = v4;
  v19.receiver = v11;
  v19.super_class = v5;
  v12 = objc_msgSendSuper2(&v19, sel_init);
  v13 = objc_allocWithZone(v5);
  *&v13[OBJC_IVAR___DSAssetVersionRange_minimumVersion] = v3;
  *&v13[OBJC_IVAR___DSAssetVersionRange_maximumVersion] = v4;
  v18.receiver = v13;
  v18.super_class = v5;
  v14 = objc_msgSendSuper2(&v18, sel_init);
  v15 = objc_allocWithZone(v5);
  *&v15[OBJC_IVAR___DSAssetVersionRange_minimumVersion] = v3;
  *&v15[OBJC_IVAR___DSAssetVersionRange_maximumVersion] = v4;
  v17.receiver = v15;
  v17.super_class = v5;
  result = objc_msgSendSuper2(&v17, sel_init);
  *a1 = 15;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v10;
  *(a1 + 40) = v12;
  *(a1 + 48) = v14;
  *(a1 + 56) = result;
  return result;
}

void *EnrollmentAssetRequest.init(assetType:requestContext:deviceIdentifier:rxAlgorithmVersionRange:gazeAlgorithmVersionRange:handsAlgorithmVersionRange:personaAlgorithmVersionRange:)@<X0>(void *result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v9 = *a2;
  *a9 = *result;
  *(a9 + 8) = v9;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

uint64_t sub_248A35844()
{
  v1 = *v0;
  sub_248A42FC8();
  MEMORY[0x24C1E11A0](v1);
  return sub_248A42FF8();
}

uint64_t sub_248A3588C()
{
  v1 = *v0;
  sub_248A42FC8();
  MEMORY[0x24C1E11A0](v1);
  return sub_248A42FF8();
}

uint64_t sub_248A358D0()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x4374736575716572;
    if (v1 != 1)
    {
      v5 = 0xD000000000000010;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x7079547465737361;
    }
  }

  else
  {
    v2 = 0xD00000000000001ALL;
    if (v1 != 5)
    {
      v2 = 0xD00000000000001CLL;
    }

    v3 = 0xD000000000000019;
    if (v1 == 3)
    {
      v3 = 0xD000000000000017;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_248A359D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_248A375B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_248A35A04(uint64_t a1)
{
  v2 = sub_248A367C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248A35A40(uint64_t a1)
{
  v2 = sub_248A367C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EnrollmentAssetRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB9EC8, &qword_248A43510);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v18 - v7;
  v9 = *v1;
  v25 = *(v1 + 8);
  v10 = v1[2];
  v23 = v1[3];
  v24 = v10;
  v11 = v1[4];
  v21 = v1[5];
  v22 = v11;
  v12 = v1[6];
  v19 = v1[7];
  v20 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_248A367C4();
  v14 = v4;
  sub_248A43018();
  v27 = v9;
  v26 = 0;
  sub_248A347CC();
  sub_248A42F58();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v15 = v21;
  v16 = v22;
  LOBYTE(v27) = v25;
  v26 = 1;
  sub_248A36818();
  sub_248A42F58();
  LOBYTE(v27) = 2;
  sub_248A42F18();
  v27 = v16;
  v26 = 3;
  type metadata accessor for AssetVersionRange();
  sub_248A368C0(&qword_27EEB9EE0, type metadata accessor for AssetVersionRange);
  sub_248A42F58();
  v27 = v15;
  v26 = 4;
  sub_248A42F58();
  v27 = v20;
  v26 = 5;
  sub_248A42F58();
  v27 = v19;
  v26 = 6;
  sub_248A42F58();
  return (*(v5 + 8))(v8, v14);
}

void EnrollmentAssetRequest.init(from:)(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB9EE8, &qword_248A43518);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_248A367C4();
  sub_248A43008();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v29) = 0;
    sub_248A34D0C();
    sub_248A42EE8();
    v11 = v33;
    LOBYTE(v29) = 1;
    sub_248A3686C();
    sub_248A42EE8();
    v12 = v33;
    LOBYTE(v33) = 2;
    v13 = sub_248A42EA8();
    v26 = v12;
    v45 = v14;
    v27 = v13;
    type metadata accessor for AssetVersionRange();
    LOBYTE(v29) = 3;
    v28 = sub_248A368C0(&qword_27EEB9EF8, type metadata accessor for AssetVersionRange);
    sub_248A42EE8();
    v25 = v33;
    LOBYTE(v29) = 4;
    v24 = 0;
    sub_248A42EE8();
    v23 = v33;
    LOBYTE(v29) = 5;
    sub_248A42EE8();
    v24 = v33;
    v42 = 6;
    sub_248A42EE8();
    (*(v6 + 8))(v9, v5);
    v28 = v43;
    *&v29 = v11;
    v15 = v26;
    BYTE8(v29) = v26;
    *(&v29 + 9) = v44[0];
    HIDWORD(v29) = *(v44 + 3);
    v16 = v27;
    v17 = v45;
    *&v30 = v27;
    *(&v30 + 1) = v45;
    v18 = v25;
    v19 = v23;
    *&v31 = v25;
    *(&v31 + 1) = v23;
    *&v32 = v24;
    *(&v32 + 1) = v43;
    v20 = v29;
    v21 = v30;
    v22 = v32;
    a2[2] = v31;
    a2[3] = v22;
    *a2 = v20;
    a2[1] = v21;
    sub_248A36908(&v29, &v33);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v33 = v11;
    v34 = v15;
    *v35 = v44[0];
    *&v35[3] = *(v44 + 3);
    v36 = v16;
    v37 = v17;
    v38 = v18;
    v39 = v19;
    v40 = v24;
    v41 = v28;
    sub_248A36940(&v33);
  }
}

uint64_t sub_248A362CC()
{
  sub_248A37810();
  sub_248A37864();
  return sub_248A42C08();
}

uint64_t sub_248A36320()
{
  sub_248A37810();
  sub_248A37864();
  return sub_248A42C18();
}

uint64_t EnrollmentAssetRequest.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v8 = v0[6];
  v7 = v0[7];

  sub_248A42E38();
  MEMORY[0x24C1E0E90](0xD00000000000001FLL, 0x8000000248A450F0);
  v9 = EnrollmentAssetType.description.getter();
  MEMORY[0x24C1E0E90](v9);

  MEMORY[0x24C1E0E90](0x7865746E6F63202CLL, 0xEB00000000203A74);
  v10 = 0xE500000000000000;
  v11 = 0x7473657567;
  if (v2 != 1)
  {
    v11 = 0xD000000000000014;
    v10 = 0x8000000248A45070;
  }

  if (v2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0x72656E776FLL;
  }

  if (v2)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x24C1E0E90](v12, v13);

  MEMORY[0x24C1E0E90](0xD000000000000014, 0x8000000248A45110);
  if (v3)
  {
    v14 = v4;
  }

  else
  {
    v14 = 7104878;
  }

  if (!v3)
  {
    v3 = 0xE300000000000000;
  }

  MEMORY[0x24C1E0E90](v14, v3);

  MEMORY[0x24C1E0E90](0xD00000000000001BLL, 0x8000000248A45130);
  v15 = [v6 description];
  v16 = sub_248A42C78();
  v18 = v17;

  MEMORY[0x24C1E0E90](v16, v18);

  MEMORY[0x24C1E0E90](0xD00000000000001DLL, 0x8000000248A45150);
  v19 = [v5 description];
  v20 = sub_248A42C78();
  v22 = v21;

  MEMORY[0x24C1E0E90](v20, v22);

  MEMORY[0x24C1E0E90](0xD00000000000001ELL, 0x8000000248A45170);
  v23 = [v8 description];
  v24 = sub_248A42C78();
  v26 = v25;

  MEMORY[0x24C1E0E90](v24, v26);

  MEMORY[0x24C1E0E90](0xD000000000000020, 0x8000000248A45190);
  v27 = [v7 description];
  v28 = sub_248A42C78();
  v30 = v29;

  MEMORY[0x24C1E0E90](v28, v30);

  MEMORY[0x24C1E0E90](41, 0xE100000000000000);
  return 0;
}

char *sub_248A366B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB9F78, &qword_248A43D28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_248A367C4()
{
  result = qword_27EEB9ED0;
  if (!qword_27EEB9ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB9ED0);
  }

  return result;
}

unint64_t sub_248A36818()
{
  result = qword_27EEB9ED8;
  if (!qword_27EEB9ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB9ED8);
  }

  return result;
}

unint64_t sub_248A3686C()
{
  result = qword_27EEB9EF0;
  if (!qword_27EEB9EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB9EF0);
  }

  return result;
}

uint64_t sub_248A368C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_248A36974()
{
  result = qword_27EEB9F00;
  if (!qword_27EEB9F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB9F00);
  }

  return result;
}

unint64_t sub_248A369CC()
{
  result = qword_27EEB9F08;
  if (!qword_27EEB9F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB9F08);
  }

  return result;
}

unint64_t sub_248A36A20()
{
  result = qword_2815105F8;
  if (!qword_2815105F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815105F8);
  }

  return result;
}

unint64_t sub_248A36A78()
{
  result = qword_27EEB9F10;
  if (!qword_27EEB9F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB9F10);
  }

  return result;
}

unint64_t sub_248A36AD0()
{
  result = qword_27EEB9F18;
  if (!qword_27EEB9F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB9F18);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EnrollmentAssetType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for EnrollmentAssetType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

void sub_248A36BB4()
{
  sub_248A36C40();
  if (v0 <= 0x3F)
  {
    sub_248A42B28();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_248A36C40()
{
  if (!qword_2815105F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB9E90, &qword_248A43500);
    sub_248A36CB8();
    v0 = sub_248A42C58();
    if (!v1)
    {
      atomic_store(v0, &qword_2815105F0);
    }
  }
}

unint64_t sub_248A36CB8()
{
  result = qword_281510600[0];
  if (!qword_281510600[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281510600);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_248A36D20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_248A36D68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EnrollmentAssetRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EnrollmentAssetRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetVersion.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AssetVersion.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_248A37088()
{
  result = qword_27EEB9F20;
  if (!qword_27EEB9F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB9F20);
  }

  return result;
}

unint64_t sub_248A370E0()
{
  result = qword_27EEB9F28;
  if (!qword_27EEB9F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB9F28);
  }

  return result;
}

unint64_t sub_248A37138()
{
  result = qword_27EEB9F30;
  if (!qword_27EEB9F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB9F30);
  }

  return result;
}

unint64_t sub_248A37190()
{
  result = qword_27EEB9F38;
  if (!qword_27EEB9F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB9F38);
  }

  return result;
}

unint64_t sub_248A371E8()
{
  result = qword_27EEB9F40;
  if (!qword_27EEB9F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB9F40);
  }

  return result;
}

unint64_t sub_248A37240()
{
  result = qword_27EEB9F48;
  if (!qword_27EEB9F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB9F48);
  }

  return result;
}

char *sub_248A37294(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB9F68, &qword_248A43D18);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_248A37398(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB9F70, &qword_248A43D20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_248A374A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737465737361 && a2 == 0xE600000000000000;
  if (v4 || (sub_248A42F78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C5255656C6966 && a2 == 0xE700000000000000 || (sub_248A42F78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_248A42F78();

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

uint64_t sub_248A375B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7079547465737361 && a2 == 0xE900000000000065;
  if (v4 || (sub_248A42F78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4374736575716572 && a2 == 0xEE00747865746E6FLL || (sub_248A42F78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000248A451C0 == a2 || (sub_248A42F78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000248A451E0 == a2 || (sub_248A42F78() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000248A45200 == a2 || (sub_248A42F78() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000248A45220 == a2 || (sub_248A42F78() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000248A45240 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_248A42F78();

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

unint64_t sub_248A37810()
{
  result = qword_27EEB9F50;
  if (!qword_27EEB9F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB9F50);
  }

  return result;
}

unint64_t sub_248A37864()
{
  result = qword_27EEB9F58;
  if (!qword_27EEB9F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB9F58);
  }

  return result;
}

unint64_t sub_248A378B8()
{
  result = qword_27EEB9F60;
  if (!qword_27EEB9F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB9F60);
  }

  return result;
}

id AssetVersion.__allocating_init(major:minor:patch:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR___DSAssetVersion_major] = a1;
  *&v7[OBJC_IVAR___DSAssetVersion_minor] = a2;
  *&v7[OBJC_IVAR___DSAssetVersion_patch] = a3;
  v9.receiver = v7;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, sel_init);
}

id AssetVersion.init(major:minor:patch:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR___DSAssetVersion_major] = a1;
  *&v3[OBJC_IVAR___DSAssetVersion_minor] = a2;
  *&v3[OBJC_IVAR___DSAssetVersion_patch] = a3;
  v9.receiver = v3;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

void AssetVersion.init(from:)(uint64_t a1, unint64_t a2)
{
  ObjectType = swift_getObjectType();
  v39 = 46;
  v40 = 0xE100000000000000;
  v36 = &v39;
  v5 = sub_248A38850(0x7FFFFFFFFFFFFFFFLL, 1, sub_248A39614, v35, a1, a2, &v39);
  v6 = v5;
  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = v5 + 56;
    v10 = MEMORY[0x277D84F90];
    v33 = v5 + 56;
    while (1)
    {
      v11 = (v9 + 32 * v8);
      v12 = v8;
      while (1)
      {
        if (v12 >= *(v6 + 16))
        {
          __break(1u);
          swift_bridgeObjectRetain_n();

          __break(1u);
          return;
        }

        v13 = *(v11 - 3);
        v14 = *(v11 - 2);
        if (!((v14 ^ v13) >> 14))
        {
          goto LABEL_12;
        }

        v15 = *(v11 - 1);
        v16 = *v11;
        if ((*v11 & 0x1000000000000000) == 0)
        {
          break;
        }

        v21 = *v11;
        v31 = *(v11 - 2);
        v22 = *(v11 - 3);
        v23 = *(v11 - 1);

        v18 = sub_248A38C10(v22, v31, v23, v16, 10);
        LOBYTE(v23) = v24;

        if ((v23 & 1) == 0)
        {
          goto LABEL_17;
        }

LABEL_12:
        ++v12;
        v11 += 4;
        if (v7 == v12)
        {
          goto LABEL_24;
        }
      }

      if ((v16 & 0x2000000000000000) != 0)
      {
        v39 = *(v11 - 1);
        v40 = v16 & 0xFFFFFFFFFFFFFFLL;
        v17 = &v39;
      }

      else if ((v15 & 0x1000000000000000) != 0)
      {
        v17 = ((v16 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v30 = *(v11 - 3);
        v32 = *(v11 - 2);
        v25 = *(v11 - 1);
        v17 = sub_248A42E68();
        v15 = v25;
        v13 = v30;
        v14 = v32;
      }

      v18 = sub_248A3966C(v17, v13, v14, v15, v16, 10);
      v38 = v19 & 1;

      v20 = v38;

      if (v20)
      {
        goto LABEL_12;
      }

LABEL_17:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_248A37294(0, *(v10 + 2) + 1, 1, v10);
      }

      v27 = *(v10 + 2);
      v26 = *(v10 + 3);
      if (v27 >= v26 >> 1)
      {
        v10 = sub_248A37294((v26 > 1), v27 + 1, 1, v10);
      }

      v8 = v12 + 1;
      *(v10 + 2) = v27 + 1;
      *&v10[8 * v27 + 32] = v18;
      v9 = v33;
      if (v7 - 1 == v12)
      {
        goto LABEL_24;
      }
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_24:

  v28 = *(v10 + 2);
  if (v28)
  {
    *&v2[OBJC_IVAR___DSAssetVersion_major] = *(v10 + 4);
    if (v28 == 1)
    {
      v29 = 0;
      *&v2[OBJC_IVAR___DSAssetVersion_minor] = 0;
    }

    else
    {
      *&v2[OBJC_IVAR___DSAssetVersion_minor] = *(v10 + 5);
      if (v28 < 3)
      {
        v29 = 0;
      }

      else
      {
        v29 = *(v10 + 6);
      }
    }

    *&v2[OBJC_IVAR___DSAssetVersion_patch] = v29;
    v37.receiver = v2;
    v37.super_class = ObjectType;
    objc_msgSendSuper2(&v37, sel_init);
  }

  else
  {

    swift_deallocPartialClassInstance();
  }
}

uint64_t AssetVersion.description.getter()
{
  v4 = *(v0 + OBJC_IVAR___DSAssetVersion_major);
  v7 = sub_248A42F68();
  MEMORY[0x24C1E0E90](46, 0xE100000000000000);
  v5 = *(v0 + OBJC_IVAR___DSAssetVersion_minor);
  v1 = sub_248A42F68();
  MEMORY[0x24C1E0E90](v1);

  MEMORY[0x24C1E0E90](46, 0xE100000000000000);
  v6 = *(v0 + OBJC_IVAR___DSAssetVersion_patch);
  v2 = sub_248A42F68();
  MEMORY[0x24C1E0E90](v2);

  return v7;
}

BOOL AssetVersion.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_248A39AD8(a1, v7);
  if (v8)
  {
    if (swift_dynamicCast())
    {
      if (*(v1 + OBJC_IVAR___DSAssetVersion_major) == *&v6[OBJC_IVAR___DSAssetVersion_major] && *(v1 + OBJC_IVAR___DSAssetVersion_minor) == *&v6[OBJC_IVAR___DSAssetVersion_minor])
      {
        v3 = *(v1 + OBJC_IVAR___DSAssetVersion_patch);
        v4 = *&v6[OBJC_IVAR___DSAssetVersion_patch];

        return v3 == v4;
      }
    }
  }

  else
  {
    sub_248A39B48(v7);
  }

  return 0;
}

uint64_t AssetVersion.hash.getter()
{
  v1 = *(v0 + OBJC_IVAR___DSAssetVersion_major);
  if (v1 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = *(v0 + OBJC_IVAR___DSAssetVersion_minor);
  if (v2 < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = *(v0 + OBJC_IVAR___DSAssetVersion_patch);
  if ((v3 & 0x8000000000000000) == 0)
  {
    return v2 ^ v1 ^ v3;
  }

LABEL_7:
  __break(1u);
  return result;
}

id AssetVersion.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_248A38194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_248A39C04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_248A381BC(uint64_t a1)
{
  v2 = sub_248A39BB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248A381F8(uint64_t a1)
{
  v2 = sub_248A39BB0();

  return MEMORY[0x2821FE720](a1, v2);
}

id AssetVersion.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AssetVersion.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB9FA0, &qword_248A43D48);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_248A39BB0();
  sub_248A43018();
  v11 = *(v3 + OBJC_IVAR___DSAssetVersion_major);
  v15[15] = 0;
  sub_248A42F48();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = *(v3 + OBJC_IVAR___DSAssetVersion_minor);
  v15[14] = 1;
  sub_248A42F48();
  v14 = *(v3 + OBJC_IVAR___DSAssetVersion_patch);
  v15[13] = 2;
  sub_248A42F48();
  return (*(v6 + 8))(v9, v5);
}

void *AssetVersion.init(from:)(uint64_t *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB9FB0, &qword_248A43D50);
  v6 = *(v15 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v14 - v8;
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_248A39BB0();
  sub_248A43008();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v17 = 0;
    v12 = v15;
    *&v3[OBJC_IVAR___DSAssetVersion_major] = sub_248A42ED8();
    v17 = 1;
    *&v3[OBJC_IVAR___DSAssetVersion_minor] = sub_248A42ED8();
    v17 = 2;
    *&v3[OBJC_IVAR___DSAssetVersion_patch] = sub_248A42ED8();
    v16.receiver = v3;
    v16.super_class = ObjectType;
    v11 = objc_msgSendSuper2(&v16, sel_init);
    (*(v6 + 8))(v9, v12);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v11;
}

void *sub_248A38694@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = AssetVersion.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

BOOL sub_248A3873C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR___DSAssetVersion_major);
  v3 = *(a1 + OBJC_IVAR___DSAssetVersion_major);
  v4 = v2 >= v3;
  if (v2 == v3)
  {
    v5 = *(a2 + OBJC_IVAR___DSAssetVersion_minor);
    v6 = *(a1 + OBJC_IVAR___DSAssetVersion_minor);
    v4 = v5 >= v6;
    if (v5 == v6)
    {
      v4 = *(a2 + OBJC_IVAR___DSAssetVersion_patch) >= *(a1 + OBJC_IVAR___DSAssetVersion_patch);
    }
  }

  return !v4;
}

void AssetVersion.__allocating_init(stringLiteral:)(uint64_t a1, unint64_t a2)
{
  v5 = objc_allocWithZone(v2);

  AssetVersion.init(from:)(a1, a2);
  if (v6)
  {
  }

  else
  {
    __break(1u);
  }
}

void sub_248A387EC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = objc_allocWithZone(v2);

  AssetVersion.init(from:)(v5, v4);
  if (v7)
  {
    v8 = v7;

    *a2 = v8;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_248A38850@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_248A42D58();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_248A37398(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_248A37398((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_248A42D38();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_248A42CB8();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_248A42CB8();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_248A42D58();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_248A37398(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_248A42D58();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_248A37398(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_248A37398((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_248A42CB8();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

unsigned __int8 *sub_248A38C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  v70 = a1;
  v71 = a2;
  v72 = a3;
  v73 = a4;
  sub_248A3A000();

  result = sub_248A42D48();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_248A391A0();
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_248A42E68();
      v9 = v69;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v23 = v9 - 1;
        if (v23)
        {
          v24 = a5 + 48;
          v25 = a5 + 55;
          v26 = a5 + 87;
          if (a5 > 10)
          {
            v24 = 58;
          }

          else
          {
            v26 = 97;
            v25 = 65;
          }

          if (result)
          {
            v15 = 0;
            v27 = result + 1;
            do
            {
              v28 = *v27;
              if (v28 < 0x30 || v28 >= v24)
              {
                if (v28 < 0x41 || v28 >= v25)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v26)
                  {
                    goto LABEL_129;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              if (!is_mul_ok(v15, a5))
              {
                goto LABEL_128;
              }

              v30 = v15 * a5;
              v31 = v28 + v29;
              v22 = __CFADD__(v30, v31);
              v15 = v30 + v31;
              if (v22)
              {
                goto LABEL_128;
              }

              ++v27;
              --v23;
            }

            while (v23);
LABEL_66:
            v19 = v15;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v32 = a5 + 48;
        v33 = a5 + 55;
        v34 = a5 + 87;
        if (a5 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        if (result)
        {
          v15 = 0;
          while (1)
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v32)
            {
              if (v35 < 0x41 || v35 >= v33)
              {
                v19 = 0;
                if (v35 < 0x61 || v35 >= v34)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (!is_mul_ok(v15, a5))
            {
              goto LABEL_128;
            }

            v37 = v15 * a5;
            v38 = v35 + v36;
            v22 = __CFADD__(v37, v38);
            v15 = v37 + v38;
            if (v22)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v19 = 0;
      goto LABEL_129;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_129;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            if (!is_mul_ok(v15, a5))
            {
              goto LABEL_128;
            }

            v20 = v15 * a5;
            v21 = v17 + v18;
            v22 = v20 >= v21;
            v15 = v20 - v21;
            if (!v22)
            {
              goto LABEL_128;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v19 = 0;
LABEL_129:

        return v19;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v7) & 0xF;
  v70 = v8;
  v71 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a5 + 48;
        v62 = a5 + 55;
        v63 = a5 + 87;
        if (a5 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v19 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          if (!is_mul_ok(v43, a5))
          {
            goto LABEL_128;
          }

          v67 = v43 * a5;
          v68 = v65 + v66;
          v22 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v22)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a5 + 48;
        v45 = a5 + 55;
        v46 = a5 + 87;
        if (a5 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v19 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (!is_mul_ok(v43, a5))
          {
            goto LABEL_128;
          }

          v50 = v43 * a5;
          v51 = v48 + v49;
          v22 = v50 >= v51;
          v43 = v50 - v51;
          if (!v22)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a5 + 48;
      v54 = a5 + 55;
      v55 = a5 + 87;
      if (a5 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v19 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        if (!is_mul_ok(v43, a5))
        {
          goto LABEL_128;
        }

        v59 = v43 * a5;
        v60 = v57 + v58;
        v22 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v22)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v19 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_248A391A0()
{
  v0 = sub_248A42D58();
  v4 = sub_248A39220(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_248A39220(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_248A42C98();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_248A42DD8();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_248A42894(v9, 0);
  v12 = sub_248A39378(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_248A42C98();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_248A42E68();
LABEL_4:

  return sub_248A42C98();
}

unint64_t sub_248A39378(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_248A39598(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_248A42D18();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_248A42E68();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_248A39598(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_248A42CE8();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_248A39598(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_248A42D28();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x24C1E0EC0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_248A39614(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_248A42F78() & 1;
  }
}

uint64_t sub_248A3966C(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, int64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_248A39598(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_96;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_248A42D08();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_248A39598(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_248A39598(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_92;
  }

  if (v25 < a3 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = sub_248A42D08();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v26 < v13)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 48;
        v42 = a6 + 55;
        v43 = a6 + 87;
        if (a6 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v41)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                if (v46 < 0x61 || v46 >= v43)
                {
                  return v37;
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            if (!is_mul_ok(v32, a6))
            {
              return 0;
            }

            v48 = v32 * a6;
            v49 = v46 + v47;
            v40 = __CFADD__(v48, v49);
            v32 = v48 + v49;
            if (v40)
            {
              return 0;
            }

            ++v44;
            --v45;
          }

          while (v45);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 48;
      v51 = a6 + 55;
      v52 = a6 + 87;
      if (a6 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v50)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              if (v53 < 0x61 || v53 >= v52)
              {
                return v37;
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v55 = v32 * a6;
          v56 = v53 + v54;
          v40 = __CFADD__(v55, v56);
          v32 = v55 + v56;
          if (v40)
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v38 = v32 * a6;
          v39 = v35 + v36;
          v40 = v38 >= v39;
          v32 = v38 - v39;
          if (!v40)
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

uint64_t sub_248A39AD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB9F98, &qword_248A43D40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_248A39B48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB9F98, &qword_248A43D40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_248A39BB0()
{
  result = qword_27EEB9FA8;
  if (!qword_27EEB9FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB9FA8);
  }

  return result;
}

uint64_t sub_248A39C04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F6A616DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_248A42F78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F6E696DLL && a2 == 0xE500000000000000 || (sub_248A42F78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6863746170 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_248A42F78();

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

BOOL _s31DeviceSharingEnrollmentServices12AssetVersionC1loiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR___DSAssetVersion_major);
  v3 = *(a2 + OBJC_IVAR___DSAssetVersion_major);
  v4 = v2 >= v3;
  if (v2 == v3)
  {
    v5 = *(a1 + OBJC_IVAR___DSAssetVersion_minor);
    v6 = *(a2 + OBJC_IVAR___DSAssetVersion_minor);
    v4 = v5 >= v6;
    if (v5 == v6)
    {
      v4 = *(a1 + OBJC_IVAR___DSAssetVersion_patch) >= *(a2 + OBJC_IVAR___DSAssetVersion_patch);
    }
  }

  return !v4;
}

uint64_t sub_248A39E28(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AssetVersion();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of AssetVersion.__allocating_init(from:)()
{
  return (*(v0 + 112))();
}

{
  return (*(v0 + 120))();
}

unint64_t sub_248A39EFC()
{
  result = qword_27EEB9FD0;
  if (!qword_27EEB9FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB9FD0);
  }

  return result;
}

unint64_t sub_248A39F54()
{
  result = qword_27EEB9FD8;
  if (!qword_27EEB9FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB9FD8);
  }

  return result;
}

unint64_t sub_248A39FAC()
{
  result = qword_27EEB9FE0;
  if (!qword_27EEB9FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB9FE0);
  }

  return result;
}

unint64_t sub_248A3A000()
{
  result = qword_27EEB9FE8;
  if (!qword_27EEB9FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB9FE8);
  }

  return result;
}

uint64_t EnrollmentAssetService.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB9FF0, &qword_248A44010);
  result = sub_248A42B98();
  *a1 = result;
  return result;
}

uint64_t sub_248A3A0DC()
{
  v1 = *(v0 + 16);
  sub_248A42BF8();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t EnrollmentAssetService.deleteEnrollmentData(from:)(_BYTE *a1)
{
  *(v2 + 42) = *a1;
  *(v2 + 16) = *v1;
  return MEMORY[0x2822009F8](sub_248A3A18C, 0, 0);
}

uint64_t sub_248A3A18C()
{
  if (qword_27EEB9E38 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 42);
  v2 = sub_248A42C48();
  __swift_project_value_buffer(v2, qword_27EEBD208);
  sub_248A41ED4(0xD000000000000082, 0x8000000248A45320, 0xD00000000000001BLL, 0x8000000248A453B0);
  *(v0 + 40) = 5;
  *(v0 + 41) = v1;
  v3 = *(MEMORY[0x277D050F0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  v5 = sub_248A3EC4C();
  *v4 = v0;
  v4[1] = sub_248A3A2DC;
  v6 = *(v0 + 16);

  return MEMORY[0x28215AB10](v0 + 40, v0 + 41, &type metadata for EnrollmentDataLocation, v5);
}

uint64_t sub_248A3A2DC()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  *(v3 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_248A3A410, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t EnrollmentAssetService.getEnrollmentAssets(request:)(uint64_t a1, _OWORD *a2)
{
  v4 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v4;
  v5 = a2[3];
  *(v3 + 48) = a2[2];
  *(v3 + 64) = v5;
  v6 = *v2;
  *(v3 + 336) = a1;
  *(v3 + 344) = v6;
  return MEMORY[0x2822009F8](sub_248A3A45C, 0, 0);
}

uint64_t sub_248A3A45C()
{
  if (qword_27EEB9E38 != -1)
  {
    swift_once();
  }

  v1 = sub_248A42C48();
  __swift_project_value_buffer(v1, qword_27EEBD208);
  sub_248A41ED4(0xD000000000000082, 0x8000000248A45320, 0xD00000000000001DLL, 0x8000000248A453D0);
  *(v0 + 368) = 0;
  v2 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v2;
  v3 = *(v0 + 64);
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 128) = v3;
  sub_248A36908(v0 + 16, v0 + 144);
  v4 = *(MEMORY[0x277D050E8] + 4);
  v5 = swift_task_alloc();
  *(v0 + 352) = v5;
  v6 = type metadata accessor for EnrollmentAssets();
  v7 = sub_248A3ECA0();
  v8 = sub_248A3ECF4();
  *v5 = v0;
  v5[1] = sub_248A3A5D0;
  v9 = *(v0 + 336);
  v10 = *(v0 + 344);

  return MEMORY[0x28215AB08](v9, v0 + 368, v0 + 80, &type metadata for EnrollmentAssetRequest, v6, v7, v8);
}

uint64_t sub_248A3A5D0()
{
  v2 = *(*v1 + 352);
  v3 = *v1;
  *(v3 + 360) = v0;

  if (v0)
  {
    v4 = *(v3 + 80);
    v5 = *(v3 + 96);
    v6 = *(v3 + 128);
    *(v3 + 240) = *(v3 + 112);
    *(v3 + 256) = v6;
    *(v3 + 208) = v4;
    *(v3 + 224) = v5;
    sub_248A3ED4C(v3 + 208, &qword_27EEBA010, &qword_248A44030);

    return MEMORY[0x2822009F8](sub_248A3A754, 0, 0);
  }

  else
  {
    v7 = *(v3 + 80);
    v8 = *(v3 + 96);
    v9 = *(v3 + 128);
    *(v3 + 304) = *(v3 + 112);
    *(v3 + 320) = v9;
    *(v3 + 272) = v7;
    *(v3 + 288) = v8;
    sub_248A3ED4C(v3 + 272, &qword_27EEBA010, &qword_248A44030);
    v10 = *(v3 + 8);

    return v10();
  }
}

uint64_t static EnrollmentAssetService.assetDirectoryURL()()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBA018, &qword_248A44038) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = &v8 - v1;
  v3 = *(*(sub_248A42B08() - 8) + 64);
  MEMORY[0x28223BE20]();
  (*(v5 + 104))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CC91C0]);
  v6 = sub_248A42B28();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  return sub_248A42B18();
}

uint64_t sub_248A3A908()
{
  if (qword_27EEB9E38 != -1)
  {
    swift_once();
  }

  v1 = sub_248A42C48();
  __swift_project_value_buffer(v1, qword_27EEBD208);
  sub_248A41ED4(0xD000000000000082, 0x8000000248A45320, 0xD000000000000011, 0x8000000248A45410);
  *(v0 + 56) = 10;
  v2 = *(MEMORY[0x277D05100] + 4);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_248A3AA44;
  v4 = *(v0 + 32);
  v5 = MEMORY[0x277D837D0];
  v6 = MEMORY[0x277D05188];

  return MEMORY[0x28215AB20](v0 + 16, v0 + 56, v5, v6);
}

uint64_t sub_248A3AA44()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_248A3AB74;
  }

  else
  {
    v3 = sub_248A3AB58;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t EnrollmentAssetService.storeEnrollmentAssets(assets:)(uint64_t a1)
{
  v2[2] = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBA020, &qword_248A44050) - 8) + 64) + 15;
  v4 = swift_task_alloc();
  v5 = *v1;
  v2[3] = v4;
  v2[4] = v5;

  return MEMORY[0x2822009F8](sub_248A3AC2C, 0, 0);
}

uint64_t sub_248A3AC2C()
{
  if (qword_27EEB9E38 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = sub_248A42C48();
  __swift_project_value_buffer(v3, qword_27EEBD208);
  sub_248A41ED4(0xD000000000000082, 0x8000000248A45320, 0xD00000000000001ELL, 0x8000000248A45430);
  *(v0 + 56) = 12;
  sub_248A34DCC(v2, v1);
  v4 = type metadata accessor for EnrollmentAssets();
  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  v5 = *(MEMORY[0x277D050F0] + 4);
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  v7 = sub_248A3ECF4();
  *v6 = v0;
  v6[1] = sub_248A3ADBC;
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);

  return MEMORY[0x28215AB10](v0 + 56, v8, v4, v7);
}

uint64_t sub_248A3ADBC()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 24);
  v4 = *v1;
  v4[6] = v0;

  sub_248A3ED4C(v3, &qword_27EEBA020, &qword_248A44050);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_248A3AF30, 0, 0);
  }

  else
  {
    v5 = v4[3];

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_248A3AF30()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_248A3AFB8()
{
  if (qword_27EEB9E38 != -1)
  {
    swift_once();
  }

  v1 = sub_248A42C48();
  __swift_project_value_buffer(v1, qword_27EEBD208);
  sub_248A41ED4(0xD000000000000082, 0x8000000248A45320, 0xD000000000000011, 0x8000000248A45450);
  *(v0 + 41) = 13;
  v2 = *(MEMORY[0x277D05100] + 4);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_248A3B0F4;
  v4 = *(v0 + 16);
  v5 = MEMORY[0x277D839B0];
  v6 = MEMORY[0x277D05190];

  return MEMORY[0x28215AB20](v0 + 40, v0 + 41, v5, v6);
}

uint64_t sub_248A3B0F4()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_248A3B224;
  }

  else
  {
    v3 = sub_248A3B208;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_248A3B264()
{
  if (qword_27EEB9E30 != -1)
  {
    swift_once();
  }

  v1 = sub_248A42C48();
  __swift_project_value_buffer(v1, qword_27EEBD1F0);
  sub_248A41ED4(0xD000000000000082, 0x8000000248A45320, 0xD000000000000014, 0x8000000248A45470);
  *(v0 + 41) = 1;
  v2 = *(MEMORY[0x277D05100] + 4);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_248A3B3A0;
  v4 = *(v0 + 16);
  v5 = MEMORY[0x277D839B0];
  v6 = MEMORY[0x277D05190];

  return MEMORY[0x28215AB20](v0 + 40, v0 + 41, v5, v6);
}

uint64_t sub_248A3B3A0()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_248A404CC;
  }

  else
  {
    v3 = sub_248A404F4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t EnrollmentAssetService.setCloudSyncState(enabled:)(char a1)
{
  *(v2 + 42) = a1;
  *(v2 + 16) = *v1;
  return MEMORY[0x2822009F8](sub_248A3B4DC, 0, 0);
}

uint64_t sub_248A3B4DC()
{
  if (qword_27EEB9E30 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 42);
  v2 = sub_248A42C48();
  __swift_project_value_buffer(v2, qword_27EEBD1F0);
  sub_248A41ED4(0xD000000000000082, 0x8000000248A45320, 0xD00000000000001BLL, 0x8000000248A45490);
  *(v0 + 40) = 2;
  *(v0 + 41) = v1;
  v3 = *(MEMORY[0x277D050F0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_248A3B628;
  v5 = *(v0 + 16);
  v6 = MEMORY[0x277D839B0];
  v7 = MEMORY[0x277D05190];

  return MEMORY[0x28215AB10](v0 + 40, v0 + 41, v6, v7);
}

uint64_t sub_248A3B628()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  *(v3 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_248A404D0, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t EnrollmentAssetService.setCloudDataExistsKVS(value:)(char a1)
{
  *(v2 + 42) = a1;
  *(v2 + 16) = *v1;
  return MEMORY[0x2822009F8](sub_248A3B784, 0, 0);
}

uint64_t sub_248A3B784()
{
  if (qword_27EEB9E30 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 42);
  v2 = sub_248A42C48();
  __swift_project_value_buffer(v2, qword_27EEBD1F0);
  sub_248A41ED4(0xD000000000000082, 0x8000000248A45320, 0xD00000000000001DLL, 0x8000000248A454B0);
  *(v0 + 40) = 3;
  *(v0 + 41) = v1;
  v3 = *(MEMORY[0x277D050F0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_248A3B628;
  v5 = *(v0 + 16);
  v6 = MEMORY[0x277D839B0];
  v7 = MEMORY[0x277D05190];

  return MEMORY[0x28215AB10](v0 + 40, v0 + 41, v6, v7);
}

uint64_t sub_248A3B8F4()
{
  if (qword_27EEB9E30 != -1)
  {
    swift_once();
  }

  v1 = sub_248A42C48();
  __swift_project_value_buffer(v1, qword_27EEBD1F0);
  sub_248A41ED4(0xD000000000000082, 0x8000000248A45320, 0xD000000000000017, 0x8000000248A454D0);
  *(v0 + 41) = 4;
  v2 = *(MEMORY[0x277D050F8] + 4);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_248A3BA30;
  v4 = *(v0 + 16);
  v5 = MEMORY[0x277D839B0];
  v6 = MEMORY[0x277D05190];

  return MEMORY[0x28215AB18](v0 + 40, v0 + 41, v5, v6);
}

uint64_t sub_248A3BA30()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_248A404D0;
  }

  else
  {
    v3 = sub_248A404F8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

Swift::Bool __swiftcall EnrollmentAssetService.cloudDataExists()()
{
  sub_248A42B78();
  v0 = sub_248A42B68();
  v1 = sub_248A42B38();

  if (qword_27EEB9E30 != -1)
  {
    swift_once();
  }

  v2 = sub_248A42C48();
  __swift_project_value_buffer(v2, qword_27EEBD1F0);
  v3 = sub_248A42C28();
  v4 = sub_248A42DC8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v1 & 1;
    _os_log_impl(&dword_248A32000, v3, v4, "Enrollment data exists in the cloud: %{BOOL}d", v5, 8u);
    MEMORY[0x24C1E1570](v5, -1, -1);
  }

  return v1 & 1;
}

uint64_t sub_248A3BC74()
{
  if (qword_27EEB9E38 != -1)
  {
    swift_once();
  }

  v1 = sub_248A42C48();
  __swift_project_value_buffer(v1, qword_27EEBD208);
  sub_248A41ED4(0xD000000000000082, 0x8000000248A45320, 0xD000000000000014, 0x8000000248A454F0);
  *(v0 + 41) = 6;
  v2 = *(MEMORY[0x277D05100] + 4);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_248A3B3A0;
  v4 = *(v0 + 16);
  v5 = MEMORY[0x277D839B0];
  v6 = MEMORY[0x277D05190];

  return MEMORY[0x28215AB20](v0 + 40, v0 + 41, v5, v6);
}

uint64_t sub_248A3BDD4()
{
  if (qword_27EEB9E38 != -1)
  {
    swift_once();
  }

  v1 = sub_248A42C48();
  __swift_project_value_buffer(v1, qword_27EEBD208);
  sub_248A41ED4(0xD000000000000082, 0x8000000248A45320, 0xD000000000000023, 0x8000000248A45510);
  *(v0 + 40) = 7;
  v2 = *(MEMORY[0x277D05108] + 4);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_248A3A2DC;
  v4 = *(v0 + 16);

  return MEMORY[0x28215AB28](v0 + 40);
}

uint64_t sub_248A3BF1C()
{
  if (qword_27EEB9E38 != -1)
  {
    swift_once();
  }

  v1 = sub_248A42C48();
  __swift_project_value_buffer(v1, qword_27EEBD208);
  sub_248A41ED4(0xD000000000000082, 0x8000000248A45320, 0xD000000000000015, 0x8000000248A45540);
  *(v0 + 41) = 8;
  v2 = *(MEMORY[0x277D050F8] + 4);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_248A3C058;
  v4 = *(v0 + 16);
  v5 = MEMORY[0x277D839B0];
  v6 = MEMORY[0x277D05190];

  return MEMORY[0x28215AB18](v0 + 40, v0 + 41, v5, v6);
}

uint64_t sub_248A3C058()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_248A3A410;
  }

  else
  {
    v3 = sub_248A3C16C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t EnrollmentAssetService.setAssociatedAVPKVS(value:)(char a1)
{
  *(v2 + 42) = a1;
  *(v2 + 16) = *v1;
  return MEMORY[0x2822009F8](sub_248A3C1B0, 0, 0);
}

uint64_t sub_248A3C1B0()
{
  if (qword_27EEB9E38 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 42);
  v2 = sub_248A42C48();
  __swift_project_value_buffer(v2, qword_27EEBD208);
  sub_248A41ED4(0xD000000000000082, 0x8000000248A45320, 0xD00000000000001BLL, 0x8000000248A45560);
  *(v0 + 40) = 9;
  *(v0 + 41) = v1;
  v3 = *(MEMORY[0x277D050F0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_248A3B628;
  v5 = *(v0 + 16);
  v6 = MEMORY[0x277D839B0];
  v7 = MEMORY[0x277D05190];

  return MEMORY[0x28215AB10](v0 + 40, v0 + 41, v6, v7);
}

uint64_t EnrollmentAssetService.saveAVPSetupContext(option:)(_BYTE *a1)
{
  *(v2 + 42) = *a1;
  *(v2 + 16) = *v1;
  return MEMORY[0x2822009F8](sub_248A3C328, 0, 0);
}

uint64_t sub_248A3C328()
{
  if (qword_27EEB9E38 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 42);
  v2 = sub_248A42C48();
  __swift_project_value_buffer(v2, qword_27EEBD208);
  sub_248A41ED4(0xD000000000000082, 0x8000000248A45320, 0xD00000000000001CLL, 0x8000000248A45580);
  *(v0 + 40) = 11;
  *(v0 + 41) = v1;
  v3 = *(MEMORY[0x277D050F0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  v5 = sub_248A3EDAC();
  *v4 = v0;
  v4[1] = sub_248A3B628;
  v6 = *(v0 + 16);

  return MEMORY[0x28215AB10](v0 + 40, v0 + 41, &type metadata for DisableSyncContext, v5);
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> EnrollmentAssetService.shouldDisplaySettingsRow()()
{
  sub_248A42B78();
  v0 = sub_248A42B68();
  v1 = sub_248A42B48();

  if (qword_27EEB9E30 != -1)
  {
    swift_once();
  }

  v2 = sub_248A42C48();
  __swift_project_value_buffer(v2, qword_27EEBD1F0);
  v3 = sub_248A42C28();
  v4 = sub_248A42DC8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v1 & 1;
    _os_log_impl(&dword_248A32000, v3, v4, "Enrollment data exists locally: %{BOOL}d", v5, 8u);
    MEMORY[0x24C1E1570](v5, -1, -1);
  }

  v6 = sub_248A42B68();
  v7 = sub_248A42B38();

  v8 = sub_248A42C28();
  v9 = sub_248A42DC8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = v7 & 1;
    _os_log_impl(&dword_248A32000, v8, v9, "Enrollment data exists in the cloud: %{BOOL}d", v10, 8u);
    MEMORY[0x24C1E1570](v10, -1, -1);
  }

  v11 = sub_248A42B68();
  v12 = sub_248A42B58();

  v13 = sub_248A42C28();
  v14 = sub_248A42DC8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67109120;
    *(v15 + 4) = v12 & 1;
    _os_log_impl(&dword_248A32000, v13, v14, "There is an AVP associated with this Apple Account: %{BOOL}d", v15, 8u);
    MEMORY[0x24C1E1570](v15, -1, -1);
  }

  return (v1 | v7 | v12) & 1;
}

uint64_t EnrollmentAssetService.Error.errorDescription.getter()
{
  v1 = v0[1];
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      return 0xD000000000000029;
    }

    if (v1 != 4)
    {
      if (v1 == 5)
      {
        return 0xD000000000000030;
      }

      goto LABEL_12;
    }

    return 0xD000000000000016;
  }

  else
  {
    if (!v1)
    {
      return 0x7465737361206F4ELL;
    }

    if (v1 != 1)
    {
      if (v1 == 2)
      {
        return 0xD000000000000014;
      }

LABEL_12:
      v3 = *v0;
      sub_248A42E38();
      MEMORY[0x24C1E0E90](0xD000000000000034, 0x8000000248A45670);
      MEMORY[0x24C1E0E90](v3, v1);
      return 0;
    }

    return 0xD000000000000011;
  }
}

unint64_t EnrollmentAssetService.Error.description.getter()
{
  v1 = v0[1];
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      return 0xD000000000000029;
    }

    if (v1 != 4)
    {
      if (v1 == 5)
      {
        return 0xD00000000000002ELL;
      }

LABEL_12:
      v3 = *v0;
      sub_248A42E38();

      MEMORY[0x24C1E0E90](v3, v1);
      MEMORY[0x24C1E0E90](41, 0xE100000000000000);
      return 0xD00000000000002ELL;
    }

    return 0xD00000000000002ELL;
  }

  else
  {
    if (!v1)
    {
      return 0xD000000000000025;
    }

    if (v1 != 1)
    {
      if (v1 == 2)
      {
        return 0xD000000000000025;
      }

      goto LABEL_12;
    }

    return 0xD00000000000002CLL;
  }
}

unint64_t sub_248A3C9B4()
{
  v1 = v0[1];
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      return 0xD000000000000029;
    }

    if (v1 != 4)
    {
      if (v1 == 5)
      {
        return 0xD00000000000002ELL;
      }

LABEL_12:
      v3 = *v0;
      sub_248A42E38();

      MEMORY[0x24C1E0E90](v3, v1);
      MEMORY[0x24C1E0E90](41, 0xE100000000000000);
      return 0xD00000000000002ELL;
    }

    return 0xD00000000000002ELL;
  }

  else
  {
    if (!v1)
    {
      return 0xD000000000000025;
    }

    if (v1 != 1)
    {
      if (v1 == 2)
      {
        return 0xD000000000000025;
      }

      goto LABEL_12;
    }

    return 0xD00000000000002CLL;
  }
}

uint64_t sub_248A3CB20(uint64_t a1)
{
  v2 = sub_248A3EE54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248A3CB5C(uint64_t a1)
{
  v2 = sub_248A3EE54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_248A3CB98(uint64_t a1)
{
  v2 = sub_248A3EEA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248A3CBD4(uint64_t a1)
{
  v2 = sub_248A3EEA8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_248A3CC10()
{
  v1 = *v0;
  v2 = 0x7374657373416F6ELL;
  v3 = 0xD000000000000011;
  if (v1 != 5)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x726F72724553564BLL;
  if (v1 != 3)
  {
    v4 = 0x536B736944776F6CLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x4664696C61766E69;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_248A3CD0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_248A3FF60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_248A3CD34(uint64_t a1)
{
  v2 = sub_248A3EE00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248A3CD70(uint64_t a1)
{
  v2 = sub_248A3EE00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_248A3CDAC(uint64_t a1)
{
  v2 = sub_248A3EFA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248A3CDE8(uint64_t a1)
{
  v2 = sub_248A3EFA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_248A3CE24(uint64_t a1)
{
  v2 = sub_248A3EF50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248A3CE60(uint64_t a1)
{
  v2 = sub_248A3EF50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_248A3CE9C(uint64_t a1)
{
  v2 = sub_248A3EEFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248A3CED8(uint64_t a1)
{
  v2 = sub_248A3EEFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_248A3CF14(uint64_t a1)
{
  v2 = sub_248A3EFF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248A3CF50(uint64_t a1)
{
  v2 = sub_248A3EFF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_248A3CF94()
{
  sub_248A42FC8();
  MEMORY[0x24C1E11A0](0);
  return sub_248A42FF8();
}

uint64_t sub_248A3D000()
{
  sub_248A42FC8();
  MEMORY[0x24C1E11A0](0);
  return sub_248A42FF8();
}

uint64_t sub_248A3D054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7261646172 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_248A42F78();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_248A3D0D8(uint64_t a1)
{
  v2 = sub_248A3F04C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248A3D114(uint64_t a1)
{
  v2 = sub_248A3F04C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EnrollmentAssetService.Error.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBA030, &qword_248A440A8);
  v55 = *(v3 - 8);
  v56 = v3;
  v4 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v54 = v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBA038, &qword_248A440B0);
  v52 = *(v6 - 8);
  v53 = v6;
  v7 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v51 = v38 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBA040, &qword_248A440B8);
  v49 = *(v9 - 8);
  v50 = v9;
  v10 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v48 = v38 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBA048, &qword_248A440C0);
  v46 = *(v12 - 8);
  v47 = v12;
  v13 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v45 = v38 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBA050, &qword_248A440C8);
  v43 = *(v15 - 8);
  v44 = v15;
  v16 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v42 = v38 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBA058, &qword_248A440D0);
  v39 = *(v18 - 8);
  v40 = v18;
  v19 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v21 = v38 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBA060, &qword_248A440D8);
  v41 = *(v22 - 8);
  v23 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v25 = v38 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBA068, &qword_248A440E0);
  v57 = *(v26 - 8);
  v58 = v26;
  v27 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v29 = v38 - v28;
  v30 = v1[1];
  v38[1] = *v1;
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_248A3EE00();
  sub_248A43018();
  if (v30 > 2)
  {
    switch(v30)
    {
      case 3:
        v63 = 4;
        sub_248A3EEFC();
        v32 = v48;
        v33 = v58;
        sub_248A42F08();
        v35 = v49;
        v34 = v50;
        goto LABEL_15;
      case 4:
        v64 = 5;
        sub_248A3EEA8();
        v32 = v51;
        v33 = v58;
        sub_248A42F08();
        v35 = v52;
        v34 = v53;
        goto LABEL_15;
      case 5:
        v65 = 6;
        sub_248A3EE54();
        v32 = v54;
        v33 = v58;
        sub_248A42F08();
        v35 = v55;
        v34 = v56;
        goto LABEL_15;
    }

LABEL_12:
    v59 = 0;
    sub_248A3F04C();
    v36 = v58;
    sub_248A42F08();
    sub_248A42F38();
    (*(v41 + 8))(v25, v22);
    return (*(v57 + 8))(v29, v36);
  }

  if (v30)
  {
    if (v30 == 1)
    {
      v61 = 2;
      sub_248A3EFA4();
      v32 = v42;
      v33 = v58;
      sub_248A42F08();
      v35 = v43;
      v34 = v44;
      goto LABEL_15;
    }

    if (v30 == 2)
    {
      v62 = 3;
      sub_248A3EF50();
      v32 = v45;
      v33 = v58;
      sub_248A42F08();
      v35 = v46;
      v34 = v47;
LABEL_15:
      (*(v35 + 8))(v32, v34);
      return (*(v57 + 8))(v29, v33);
    }

    goto LABEL_12;
  }

  v60 = 1;
  sub_248A3EFF8();
  v33 = v58;
  sub_248A42F08();
  (*(v39 + 8))(v21, v40);
  return (*(v57 + 8))(v29, v33);
}

uint64_t EnrollmentAssetService.Error.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v92 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBA0B0, &qword_248A440E8);
  v88 = *(v3 - 8);
  v89 = v3;
  v4 = (*(v88 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v95 = &v73 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBA0B8, &qword_248A440F0);
  v86 = *(v6 - 8);
  v87 = v6;
  v7 = (*(v86 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v91 = &v73 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBA0C0, &qword_248A440F8);
  v84 = *(v9 - 8);
  v85 = v9;
  v10 = (*(v84 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v94 = &v73 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBA0C8, &qword_248A44100);
  v82 = *(v12 - 8);
  v83 = v12;
  v13 = (*(v82 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v93 = &v73 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBA0D0, &qword_248A44108);
  v80 = *(v15 - 8);
  v81 = v15;
  v16 = (*(v80 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v90 = &v73 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBA0D8, &qword_248A44110);
  v78 = *(v18 - 8);
  v79 = v18;
  v19 = (*(v78 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v21 = &v73 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBA0E0, &qword_248A44118);
  v77 = *(v22 - 8);
  v23 = (*(v77 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v25 = &v73 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBA0E8, &qword_248A44120);
  v27 = *(v26 - 8);
  v28 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v30 = &v73 - v29;
  v31 = a1[3];
  v32 = a1[4];
  v96 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v31);
  sub_248A3EE00();
  v33 = v97;
  sub_248A43008();
  if (v33)
  {
    goto LABEL_10;
  }

  v74 = v21;
  v73 = v22;
  v35 = v93;
  v34 = v94;
  v36 = v95;
  v75 = v27;
  v76 = v26;
  v97 = v30;
  v37 = sub_248A42EF8();
  v38 = v37;
  if (*(v37 + 16) != 1 || (v39 = *(v37 + 32), v39 == 7))
  {
    v48 = sub_248A42E58();
    swift_allocError();
    v50 = v49;
    v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBA0F0, &qword_248A44128) + 48);
    *v50 = &type metadata for EnrollmentAssetService.Error;
    v52 = v76;
    v53 = v97;
    sub_248A42E98();
    sub_248A42E48();
    (*(*(v48 - 8) + 104))(v50, *MEMORY[0x277D84160], v48);
    swift_willThrow();
    (*(v75 + 8))(v53, v52);
    swift_unknownObjectRelease();
LABEL_10:
    v47 = v96;
    return __swift_destroy_boxed_opaque_existential_1(v47);
  }

  if (*(v37 + 32) <= 2u)
  {
    if (*(v37 + 32))
    {
      if (v39 == 1)
      {
        v99 = 1;
        sub_248A3EFF8();
        v55 = v74;
        v56 = v76;
        v57 = v97;
        sub_248A42E88();
        (*(v78 + 8))(v55, v79);
        (*(v75 + 8))(v57, v56);
        swift_unknownObjectRelease();
        v45 = 0;
        v46 = 0;
      }

      else
      {
        v100 = 2;
        sub_248A3EFA4();
        v63 = v90;
        v64 = v76;
        v65 = v97;
        sub_248A42E88();
        (*(v80 + 8))(v63, v81);
        (*(v75 + 8))(v65, v64);
        swift_unknownObjectRelease();
        v45 = 0;
        v46 = 1;
      }

      v47 = v96;
      v42 = v92;
    }

    else
    {
      v98 = 0;
      sub_248A3F04C();
      v62 = v25;
      sub_248A42E88();
      v42 = v92;
      v95 = v38;
      v68 = v73;
      v69 = sub_248A42EC8();
      v70 = v96;
      v71 = v75;
      v45 = v69;
      v46 = v72;
      (*(v77 + 8))(v62, v68);
      (*(v71 + 8))(v97, v76);
      swift_unknownObjectRelease();
      v47 = v70;
    }
  }

  else if (*(v37 + 32) > 4u)
  {
    v42 = v92;
    v58 = v76;
    v59 = v97;
    if (v39 == 5)
    {
      v103 = 5;
      sub_248A3EEA8();
      v60 = v91;
      sub_248A42E88();
      v61 = v75;
      (*(v86 + 8))(v60, v87);
      (*(v61 + 8))(v59, v58);
      swift_unknownObjectRelease();
      v45 = 0;
      v46 = 4;
    }

    else
    {
      v104 = 6;
      sub_248A3EE54();
      sub_248A42E88();
      v67 = v75;
      (*(v88 + 8))(v36, v89);
      (*(v67 + 8))(v59, v58);
      swift_unknownObjectRelease();
      v45 = 0;
      v46 = 5;
    }

    v47 = v96;
  }

  else
  {
    v41 = v96;
    v40 = v97;
    v42 = v92;
    v43 = v76;
    if (v39 == 3)
    {
      v101 = 3;
      sub_248A3EF50();
      sub_248A42E88();
      v44 = v75;
      (*(v82 + 8))(v35, v83);
      (*(v44 + 8))(v40, v43);
      swift_unknownObjectRelease();
      v45 = 0;
      v46 = 2;
    }

    else
    {
      v102 = 4;
      sub_248A3EEFC();
      sub_248A42E88();
      v66 = v75;
      (*(v84 + 8))(v34, v85);
      (*(v66 + 8))(v40, v43);
      swift_unknownObjectRelease();
      v45 = 0;
      v46 = 3;
    }

    v47 = v41;
  }

  *v42 = v45;
  v42[1] = v46;
  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t sub_248A3E3D0()
{
  sub_248A40414();
  sub_248A40468();
  return sub_248A42C08();
}

uint64_t sub_248A3E424()
{
  sub_248A40414();
  sub_248A40468();
  return sub_248A42C18();
}

DeviceSharingEnrollmentServices::EnrollmentAssetService::TransportItem_optional __swiftcall EnrollmentAssetService.TransportItem.init(rawValue:)(Swift::UInt32 rawValue)
{
  if (rawValue <= 48)
  {
    if (rawValue > 44)
    {
      if (rawValue > 46)
      {
        if (rawValue == 47)
        {
          *v1 = 5;
        }

        else
        {
          *v1 = 6;
        }
      }

      else if (rawValue == 45)
      {
        *v1 = 3;
      }

      else
      {
        *v1 = 4;
      }

      return rawValue;
    }

    switch(rawValue)
    {
      case '*':
        *v1 = 0;
        return rawValue;
      case '+':
        *v1 = 1;
        return rawValue;
      case ',':
        *v1 = 2;
        return rawValue;
    }

LABEL_31:
    *v1 = 14;
    return rawValue;
  }

  if (rawValue > 51)
  {
    if (rawValue > 199)
    {
      if (rawValue == 200)
      {
        *v1 = 12;
        return rawValue;
      }

      if (rawValue == 201)
      {
        *v1 = 13;
        return rawValue;
      }
    }

    else
    {
      if (rawValue == 52)
      {
        *v1 = 10;
        return rawValue;
      }

      if (rawValue == 53)
      {
        *v1 = 11;
        return rawValue;
      }
    }

    goto LABEL_31;
  }

  if (rawValue == 49)
  {
    *v1 = 7;
  }

  else if (rawValue == 50)
  {
    *v1 = 8;
  }

  else
  {
    *v1 = 9;
  }

  return rawValue;
}

uint64_t sub_248A3E658()
{
  v1 = *v0;
  sub_248A42FC8();
  v2 = dword_248A44E90[v1];
  sub_248A42FE8();
  return sub_248A42FF8();
}

uint64_t sub_248A3E6E0()
{
  v1 = *v0;
  sub_248A42FC8();
  v2 = dword_248A44E90[v1];
  sub_248A42FE8();
  return sub_248A42FF8();
}

DeviceSharingEnrollmentServices::EnrollmentDataLocation_optional __swiftcall EnrollmentDataLocation.init(rawValue:)(Swift::UInt32 rawValue)
{
  if (rawValue >= 3)
  {
    v2 = 3;
  }

  else
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_248A3E958()
{
  v1 = *v0;
  sub_248A42FC8();
  sub_248A42FE8();
  return sub_248A42FF8();
}

uint64_t sub_248A3E9A0()
{
  v1 = *v0;
  sub_248A42FC8();
  sub_248A42FE8();
  return sub_248A42FF8();
}

uint64_t sub_248A3EAE4(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(void))
{
  a3();
  a4();
  return sub_248A42C08();
}

uint64_t sub_248A3EB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void))
{
  a5();
  a6();
  return sub_248A42C18();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_248A3EC4C()
{
  result = qword_27EEB9FF8;
  if (!qword_27EEB9FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB9FF8);
  }

  return result;
}

unint64_t sub_248A3ECA0()
{
  result = qword_27EEBA000;
  if (!qword_27EEBA000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBA000);
  }

  return result;
}

unint64_t sub_248A3ECF4()
{
  result = qword_27EEBA008;
  if (!qword_27EEBA008)
  {
    type metadata accessor for EnrollmentAssets();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBA008);
  }

  return result;
}

uint64_t sub_248A3ED4C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_248A3EDAC()
{
  result = qword_27EEBA028;
  if (!qword_27EEBA028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBA028);
  }

  return result;
}

unint64_t sub_248A3EE00()
{
  result = qword_27EEBA070;
  if (!qword_27EEBA070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBA070);
  }

  return result;
}

unint64_t sub_248A3EE54()
{
  result = qword_27EEBA078;
  if (!qword_27EEBA078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBA078);
  }

  return result;
}

unint64_t sub_248A3EEA8()
{
  result = qword_27EEBA080;
  if (!qword_27EEBA080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBA080);
  }

  return result;
}

unint64_t sub_248A3EEFC()
{
  result = qword_27EEBA088;
  if (!qword_27EEBA088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBA088);
  }

  return result;
}

unint64_t sub_248A3EF50()
{
  result = qword_27EEBA090;
  if (!qword_27EEBA090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBA090);
  }

  return result;
}

unint64_t sub_248A3EFA4()
{
  result = qword_27EEBA098;
  if (!qword_27EEBA098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBA098);
  }

  return result;
}

unint64_t sub_248A3EFF8()
{
  result = qword_27EEBA0A0;
  if (!qword_27EEBA0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBA0A0);
  }

  return result;
}

unint64_t sub_248A3F04C()
{
  result = qword_27EEBA0A8;
  if (!qword_27EEBA0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBA0A8);
  }

  return result;
}

unint64_t sub_248A3F0A4()
{
  result = qword_27EEBA0F8;
  if (!qword_27EEBA0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBA0F8);
  }

  return result;
}

unint64_t sub_248A3F0FC()
{
  result = qword_2815106B0;
  if (!qword_2815106B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815106B0);
  }

  return result;
}

unint64_t sub_248A3F154()
{
  result = qword_2815106A8;
  if (!qword_2815106A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815106A8);
  }

  return result;
}

unint64_t sub_248A3F1AC()
{
  result = qword_2815106C0;
  if (!qword_2815106C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815106C0);
  }

  return result;
}

unint64_t sub_248A3F204()
{
  result = qword_2815106B8;
  if (!qword_2815106B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815106B8);
  }

  return result;
}

unint64_t sub_248A3F25C()
{
  result = qword_2815106A0;
  if (!qword_2815106A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815106A0);
  }

  return result;
}

unint64_t sub_248A3F2C0()
{
  result = qword_27EEBA100;
  if (!qword_27EEBA100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBA100);
  }

  return result;
}

unint64_t sub_248A3F348()
{
  result = qword_27EEBA118;
  if (!qword_27EEBA118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBA118);
  }

  return result;
}

uint64_t sub_248A3F3CC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for EnrollmentAssetService(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for EnrollmentAssetService(uint64_t result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_31DeviceSharingEnrollmentServices0C12AssetServiceV5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_248A3F580(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483642);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_248A3F5D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

void *sub_248A3F628(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EnrollmentAssetService.TransportItem(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EnrollmentAssetService.TransportItem(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_248A3F7F4(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *sub_248A3F844(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_248A3F934()
{
  result = qword_27EEBA130;
  if (!qword_27EEBA130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBA130);
  }

  return result;
}

unint64_t sub_248A3F98C()
{
  result = qword_27EEBA138;
  if (!qword_27EEBA138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBA138);
  }

  return result;
}

unint64_t sub_248A3F9E4()
{
  result = qword_27EEBA140;
  if (!qword_27EEBA140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBA140);
  }

  return result;
}

unint64_t sub_248A3FA3C()
{
  result = qword_27EEBA148;
  if (!qword_27EEBA148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBA148);
  }

  return result;
}

unint64_t sub_248A3FA94()
{
  result = qword_27EEBA150;
  if (!qword_27EEBA150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBA150);
  }

  return result;
}

unint64_t sub_248A3FAEC()
{
  result = qword_27EEBA158;
  if (!qword_27EEBA158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBA158);
  }

  return result;
}

unint64_t sub_248A3FB44()
{
  result = qword_27EEBA160;
  if (!qword_27EEBA160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBA160);
  }

  return result;
}

unint64_t sub_248A3FB9C()
{
  result = qword_27EEBA168;
  if (!qword_27EEBA168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBA168);
  }

  return result;
}

unint64_t sub_248A3FBF4()
{
  result = qword_27EEBA170;
  if (!qword_27EEBA170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBA170);
  }

  return result;
}

unint64_t sub_248A3FC4C()
{
  result = qword_27EEBA178;
  if (!qword_27EEBA178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBA178);
  }

  return result;
}

unint64_t sub_248A3FCA4()
{
  result = qword_27EEBA180;
  if (!qword_27EEBA180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBA180);
  }

  return result;
}

unint64_t sub_248A3FCFC()
{
  result = qword_27EEBA188;
  if (!qword_27EEBA188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBA188);
  }

  return result;
}

unint64_t sub_248A3FD54()
{
  result = qword_27EEBA190;
  if (!qword_27EEBA190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBA190);
  }

  return result;
}

unint64_t sub_248A3FDAC()
{
  result = qword_27EEBA198;
  if (!qword_27EEBA198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBA198);
  }

  return result;
}

unint64_t sub_248A3FE04()
{
  result = qword_27EEBA1A0;
  if (!qword_27EEBA1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBA1A0);
  }

  return result;
}

unint64_t sub_248A3FE5C()
{
  result = qword_27EEBA1A8;
  if (!qword_27EEBA1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBA1A8);
  }

  return result;
}

unint64_t sub_248A3FEB4()
{
  result = qword_27EEBA1B0;
  if (!qword_27EEBA1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBA1B0);
  }

  return result;
}

unint64_t sub_248A3FF0C()
{
  result = qword_27EEBA1B8;
  if (!qword_27EEBA1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBA1B8);
  }

  return result;
}

uint64_t sub_248A3FF60(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x8000000248A45870 == a2 || (sub_248A42F78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7374657373416F6ELL && a2 == 0xE800000000000000 || (sub_248A42F78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4664696C61766E69 && a2 == 0xEF68746150656C69 || (sub_248A42F78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F72724553564BLL && a2 == 0xE800000000000000 || (sub_248A42F78() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x536B736944776F6CLL && a2 == 0xEC00000065636170 || (sub_248A42F78() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000248A45890 == a2 || (sub_248A42F78() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000248A458B0 == a2)
  {

    return 6;
  }

  else
  {
    v5 = sub_248A42F78();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_248A401C8()
{
  result = qword_27EEBA1C0;
  if (!qword_27EEBA1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBA1C0);
  }

  return result;
}

unint64_t sub_248A4021C()
{
  result = qword_27EEBA1C8;
  if (!qword_27EEBA1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBA1C8);
  }

  return result;
}

unint64_t sub_248A40270()
{
  result = qword_27EEBA1D0;
  if (!qword_27EEBA1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBA1D0);
  }

  return result;
}

unint64_t sub_248A402C4()
{
  result = qword_27EEBA1D8;
  if (!qword_27EEBA1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBA1D8);
  }

  return result;
}

unint64_t sub_248A40318()
{
  result = qword_27EEBA1E0;
  if (!qword_27EEBA1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBA1E0);
  }

  return result;
}

unint64_t sub_248A4036C()
{
  result = qword_27EEBA1E8;
  if (!qword_27EEBA1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBA1E8);
  }

  return result;
}

unint64_t sub_248A403C0()
{
  result = qword_27EEBA1F0;
  if (!qword_27EEBA1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBA1F0);
  }

  return result;
}

unint64_t sub_248A40414()
{
  result = qword_27EEBA1F8;
  if (!qword_27EEBA1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBA1F8);
  }

  return result;
}

unint64_t sub_248A40468()
{
  result = qword_27EEBA200;
  if (!qword_27EEBA200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBA200);
  }

  return result;
}

id static AssetVersionRange.universal.getter()
{
  if (qword_27EEB9E20 != -1)
  {
    swift_once();
  }

  v1 = qword_27EEB9E28;
  v2 = qword_27EEBA208;
  if (v1 != -1)
  {
    swift_once();
  }

  v3 = qword_27EEBA210;
  v4 = objc_allocWithZone(v0);
  *&v4[OBJC_IVAR___DSAssetVersionRange_minimumVersion] = v2;
  *&v4[OBJC_IVAR___DSAssetVersionRange_maximumVersion] = v3;
  v7.receiver = v4;
  v7.super_class = v0;
  v5 = v3;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_248A405E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR___DSAssetVersion_major);
  v3 = *(a1 + OBJC_IVAR___DSAssetVersion_major);
  v4 = v2 >= v3;
  if (v2 == v3)
  {
    v5 = *(a2 + OBJC_IVAR___DSAssetVersion_minor);
    v6 = *(a1 + OBJC_IVAR___DSAssetVersion_minor);
    v4 = v5 >= v6;
    if (v5 == v6)
    {
      v4 = *(a2 + OBJC_IVAR___DSAssetVersion_patch) >= *(a1 + OBJC_IVAR___DSAssetVersion_patch);
    }
  }

  v7 = !v4;
  return v7 ^ 1u;
}

uint64_t sub_248A40640(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR___DSAssetVersion_major);
  v3 = *(a2 + OBJC_IVAR___DSAssetVersion_major);
  v4 = v2 >= v3;
  if (v2 == v3)
  {
    v5 = *(a1 + OBJC_IVAR___DSAssetVersion_minor);
    v6 = *(a2 + OBJC_IVAR___DSAssetVersion_minor);
    v4 = v5 >= v6;
    if (v5 == v6)
    {
      v4 = *(a1 + OBJC_IVAR___DSAssetVersion_patch) >= *(a2 + OBJC_IVAR___DSAssetVersion_patch);
    }
  }

  v7 = !v4;
  return v7 ^ 1u;
}

void *AssetVersionRange.minimumVersion.getter()
{
  v1 = *(v0 + OBJC_IVAR___DSAssetVersionRange_minimumVersion);
  v2 = v1;
  return v1;
}

void *AssetVersionRange.maximumVersion.getter()
{
  v1 = *(v0 + OBJC_IVAR___DSAssetVersionRange_maximumVersion);
  v2 = v1;
  return v1;
}

id sub_248A40740(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for AssetVersion();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR___DSAssetVersion_major] = a2;
  *&v6[OBJC_IVAR___DSAssetVersion_minor] = a2;
  *&v6[OBJC_IVAR___DSAssetVersion_patch] = a2;
  v8.receiver = v6;
  v8.super_class = v5;
  result = objc_msgSendSuper2(&v8, sel_init);
  *a3 = result;
  return result;
}

id sub_248A407F0(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

id AssetVersionRange.__allocating_init(minimumVersion:maximumVersion:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___DSAssetVersionRange_minimumVersion] = a1;
  *&v5[OBJC_IVAR___DSAssetVersionRange_maximumVersion] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

BOOL AssetVersionRange.isUniversalRange.getter()
{
  ObjectType = swift_getObjectType();
  if (qword_27EEB9E20 != -1)
  {
    swift_once();
  }

  v1 = qword_27EEB9E28;
  v2 = qword_27EEBA208;
  if (v1 != -1)
  {
    swift_once();
  }

  v3 = qword_27EEBA210;
  v4 = objc_allocWithZone(ObjectType);
  *&v4[OBJC_IVAR___DSAssetVersionRange_minimumVersion] = v2;
  *&v4[OBJC_IVAR___DSAssetVersionRange_maximumVersion] = v3;
  v9.receiver = v4;
  v9.super_class = ObjectType;
  v5 = v3;
  v6 = objc_msgSendSuper2(&v9, sel_init);
  v10[3] = ObjectType;
  v10[0] = v6;
  v7 = AssetVersionRange.isEqual(_:)(v10);
  sub_248A39B48(v10);
  return v7;
}

BOOL AssetVersionRange.isEqual(_:)(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  sub_248A39AD8(a1, &v26);
  if (*(&v27 + 1))
  {
    if (swift_dynamicCast())
    {
      v4 = *(v1 + OBJC_IVAR___DSAssetVersionRange_minimumVersion);
      if (v4)
      {
        v5 = *&v25[OBJC_IVAR___DSAssetVersionRange_minimumVersion];
        if (v5)
        {
          v6 = type metadata accessor for AssetVersion();
        }

        else
        {
          v6 = 0;
          *(&v26 + 1) = 0;
          *&v27 = 0;
        }

        *&v26 = v5;
        *(&v27 + 1) = v6;
        v8 = v4;
        v9 = v5;
        v10 = AssetVersion.isEqual(_:)(&v26);

        sub_248A39B48(&v26);
        if (!v10)
        {
          goto LABEL_25;
        }

        v7 = *&v25[OBJC_IVAR___DSAssetVersionRange_minimumVersion];
        if (v7)
        {
          *(&v27 + 1) = type metadata accessor for AssetVersion();
          *&v26 = v8;
LABEL_13:
          v11 = v8;
          v12 = v7;
          v13 = AssetVersion.isEqual(_:)(&v26);

          sub_248A39B48(&v26);
          if (v13)
          {
            goto LABEL_14;
          }

LABEL_25:

          return 0;
        }
      }

      else
      {
        v7 = *&v25[OBJC_IVAR___DSAssetVersionRange_minimumVersion];
        if (v7)
        {
          v8 = 0;
          v26 = 0u;
          v27 = 0u;
          goto LABEL_13;
        }
      }

LABEL_14:
      v14 = *(v2 + OBJC_IVAR___DSAssetVersionRange_maximumVersion);
      if (!v14)
      {
        v17 = *&v25[OBJC_IVAR___DSAssetVersionRange_maximumVersion];
        if (v17)
        {
          v18 = 0;
          v26 = 0u;
          v27 = 0u;
          goto LABEL_23;
        }

LABEL_28:

        return 1;
      }

      v15 = *&v25[OBJC_IVAR___DSAssetVersionRange_maximumVersion];
      if (v15)
      {
        v16 = type metadata accessor for AssetVersion();
      }

      else
      {
        v16 = 0;
        *(&v26 + 1) = 0;
        *&v27 = 0;
      }

      *&v26 = v15;
      *(&v27 + 1) = v16;
      v18 = v14;
      v19 = v15;
      v20 = AssetVersion.isEqual(_:)(&v26);

      sub_248A39B48(&v26);
      if (v20)
      {
        v17 = *&v25[OBJC_IVAR___DSAssetVersionRange_maximumVersion];
        if (v17)
        {
          *(&v27 + 1) = type metadata accessor for AssetVersion();
          *&v26 = v18;
LABEL_23:
          v21 = v18;
          v22 = v17;
          v23 = AssetVersion.isEqual(_:)(&v26);

          sub_248A39B48(&v26);
          return v23;
        }

        goto LABEL_28;
      }

      goto LABEL_25;
    }
  }

  else
  {
    sub_248A39B48(&v26);
  }

  return 0;
}

id AssetVersionRange.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___DSAssetVersionRange_minimumVersion] = a1;
  *&v5[OBJC_IVAR___DSAssetVersionRange_maximumVersion] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id AssetVersionRange.__allocating_init(onlyVersion:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___DSAssetVersionRange_minimumVersion] = a1;
  *&v3[OBJC_IVAR___DSAssetVersionRange_maximumVersion] = a1;
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = a1;
  return objc_msgSendSuper2(&v6, sel_init);
}

id AssetVersionRange.init(onlyVersion:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___DSAssetVersionRange_minimumVersion] = a1;
  *&v1[OBJC_IVAR___DSAssetVersionRange_maximumVersion] = a1;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = a1;
  return objc_msgSendSuper2(&v6, sel_init);
}

id AssetVersionRange.__allocating_init(maximumVersion:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___DSAssetVersionRange_minimumVersion] = 0;
  *&v3[OBJC_IVAR___DSAssetVersionRange_maximumVersion] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id AssetVersionRange.init(maximumVersion:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___DSAssetVersionRange_minimumVersion] = 0;
  *&v1[OBJC_IVAR___DSAssetVersionRange_maximumVersion] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id AssetVersionRange.__allocating_init(minimumVersion:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___DSAssetVersionRange_minimumVersion] = a1;
  *&v3[OBJC_IVAR___DSAssetVersionRange_maximumVersion] = 0;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id AssetVersionRange.init(minimumVersion:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___DSAssetVersionRange_minimumVersion] = a1;
  *&v1[OBJC_IVAR___DSAssetVersionRange_maximumVersion] = 0;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id AssetVersionRange.init(minimumVersion:maximumVersion:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR___DSAssetVersionRange_minimumVersion] = a1;
  *&v2[OBJC_IVAR___DSAssetVersionRange_maximumVersion] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t AssetVersionRange.contains(_:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___DSAssetVersionRange_minimumVersion);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR___DSAssetVersionRange_minimumVersion);
  }

  else
  {
    if (qword_27EEB9E20 != -1)
    {
      swift_once();
    }

    v4 = qword_27EEBA208;
  }

  v5 = *(a1 + OBJC_IVAR___DSAssetVersion_major);
  v6 = *&v4[OBJC_IVAR___DSAssetVersion_major];
  if (v5 == v6)
  {
    v5 = *(a1 + OBJC_IVAR___DSAssetVersion_minor);
    v6 = *&v4[OBJC_IVAR___DSAssetVersion_minor];
    if (v5 == v6)
    {
      v5 = *(a1 + OBJC_IVAR___DSAssetVersion_patch);
      v6 = *&v4[OBJC_IVAR___DSAssetVersion_patch];
    }
  }

  v7 = v3;

  if (v5 < v6)
  {
    return 0;
  }

  v9 = *(v1 + OBJC_IVAR___DSAssetVersionRange_maximumVersion);
  if (v9)
  {
    v10 = *(v1 + OBJC_IVAR___DSAssetVersionRange_maximumVersion);
  }

  else
  {
    if (qword_27EEB9E28 != -1)
    {
      swift_once();
    }

    v10 = qword_27EEBA210;
  }

  v11 = *&v10[OBJC_IVAR___DSAssetVersion_major];
  v12 = *(a1 + OBJC_IVAR___DSAssetVersion_major);
  v13 = v11 >= v12;
  if (v11 == v12)
  {
    v14 = *&v10[OBJC_IVAR___DSAssetVersion_minor];
    v15 = *(a1 + OBJC_IVAR___DSAssetVersion_minor);
    v13 = v14 >= v15;
    if (v14 == v15)
    {
      v13 = *&v10[OBJC_IVAR___DSAssetVersion_patch] >= *(a1 + OBJC_IVAR___DSAssetVersion_patch);
    }
  }

  v16 = !v13;
  v8 = v16 ^ 1u;
  v17 = v9;

  return v8;
}

uint64_t AssetVersionRange.description.getter()
{
  v1 = v0;
  if (AssetVersionRange.isUniversalRange.getter())
  {
    return 7958081;
  }

  v3 = *(v0 + OBJC_IVAR___DSAssetVersionRange_minimumVersion);
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR___DSAssetVersionRange_minimumVersion);
  }

  else
  {
    if (qword_27EEB9E20 != -1)
    {
      swift_once();
    }

    v4 = qword_27EEBA208;
    v3 = 0;
  }

  v5 = v3;
  v6 = [v4 description];
  v7 = sub_248A42C78();
  v9 = v8;

  MEMORY[0x24C1E0E90](v7, v9);

  MEMORY[0x24C1E0E90](3026478, 0xE300000000000000);
  v10 = *(v1 + OBJC_IVAR___DSAssetVersionRange_maximumVersion);
  if (v10)
  {
    v11 = *(v1 + OBJC_IVAR___DSAssetVersionRange_maximumVersion);
  }

  else
  {
    if (qword_27EEB9E28 != -1)
    {
      swift_once();
    }

    v11 = qword_27EEBA210;
    v10 = 0;
  }

  v12 = v10;
  v13 = [v11 description];
  v14 = sub_248A42C78();
  v16 = v15;

  MEMORY[0x24C1E0E90](v14, v16);

  return 0;
}

id AssetVersionRange.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_248A413DC()
{
  if (*v0)
  {
    return 0x566D756D6978616DLL;
  }

  else
  {
    return 0x566D756D696E696DLL;
  }
}

uint64_t sub_248A4141C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x566D756D696E696DLL && a2 == 0xEE006E6F69737265;
  if (v6 || (sub_248A42F78() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x566D756D6978616DLL && a2 == 0xEE006E6F69737265)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_248A42F78();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_248A4150C(uint64_t a1)
{
  v2 = sub_248A417E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248A41548(uint64_t a1)
{
  v2 = sub_248A417E8();

  return MEMORY[0x2821FE720](a1, v2);
}

id AssetVersionRange.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AssetVersionRange.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBA228, &qword_248A44EC8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_248A417E8();
  sub_248A43018();
  v13 = *(v3 + OBJC_IVAR___DSAssetVersionRange_minimumVersion);
  HIBYTE(v12) = 0;
  type metadata accessor for AssetVersion();
  sub_248A41B04(&qword_27EEBA238);
  sub_248A42F28();
  if (!v2)
  {
    v13 = *(v3 + OBJC_IVAR___DSAssetVersionRange_maximumVersion);
    HIBYTE(v12) = 1;
    sub_248A42F28();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_248A417E8()
{
  result = qword_27EEBA230;
  if (!qword_27EEBA230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBA230);
  }

  return result;
}

id AssetVersionRange.init(from:)(uint64_t *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBA240, &qword_248A44ED0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_248A417E8();
  sub_248A43008();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for AssetVersion();
    v15 = 0;
    sub_248A41B04(&qword_27EEBA248);
    sub_248A42EB8();
    v12[1] = OBJC_IVAR___DSAssetVersionRange_minimumVersion;
    *&v1[OBJC_IVAR___DSAssetVersionRange_minimumVersion] = v16;
    v15 = 1;
    sub_248A42EB8();
    *&v1[OBJC_IVAR___DSAssetVersionRange_maximumVersion] = v16;
    v14.receiver = v1;
    v14.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v14, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

uint64_t sub_248A41B04(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AssetVersion();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_248A41B48@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = AssetVersionRange.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetVersionRange.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AssetVersionRange.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_248A41DD0()
{
  result = qword_27EEBA250;
  if (!qword_27EEBA250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBA250);
  }

  return result;
}

unint64_t sub_248A41E28()
{
  result = qword_27EEBA258;
  if (!qword_27EEBA258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBA258);
  }

  return result;
}

unint64_t sub_248A41E80()
{
  result = qword_27EEBA260;
  if (!qword_27EEBA260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBA260);
  }

  return result;
}

void sub_248A41ED4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = sub_248A42108(a1, a2, a3, a4);
  v6 = v5;
  oslog = sub_248A42C28();
  v7 = sub_248A42DC8();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136446210;
    v10 = sub_248A42454(v4, v6, &v12);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_248A32000, oslog, v7, "%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x24C1E1570](v9, -1, -1);
    MEMORY[0x24C1E1570](v8, -1, -1);
  }

  else
  {
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_248A42090(uint64_t a1, uint64_t *a2)
{
  v3 = sub_248A42C48();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_248A42C38();
}

uint64_t sub_248A42108(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_248A33BCC();
  v8 = (sub_248A42DE8() + 16);
  if (*v8)
  {
    v9 = &v8[2 * *v8];
    a1 = *v9;
    a2 = v9[1];
  }

  else
  {
  }

  sub_248A42364(46, 0xE100000000000000, a1, a2);
  v10 = sub_248A42D58();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = MEMORY[0x24C1E0E50](v10, v12, v14, v16);
  v19 = v18;

  sub_248A42364(40, 0xE100000000000000, a3, a4);
  v20 = sub_248A42D58();
  v21 = MEMORY[0x24C1E0E50](v20);
  v23 = v22;

  v24 = pthread_self();
  pthread_mach_thread_np(v24);
  v25 = sub_248A42F68();
  MEMORY[0x24C1E0E90](v25);

  MEMORY[0x24C1E0E90](8285, 0xE200000000000000);
  MEMORY[0x24C1E0E90](v17, v19);

  MEMORY[0x24C1E0E90](14906, 0xE200000000000000);
  MEMORY[0x24C1E0E90](v21, v23);

  return 91;
}

unint64_t sub_248A42364(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_248A42D38() != a1 || v9 != a2)
  {
    v10 = sub_248A42F78();

    if (v10)
    {
      return v8;
    }

    v8 = sub_248A42CB8();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_248A42454(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_248A42520(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_248A429FC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_248A42520(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_248A4262C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_248A42E68();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_248A4262C(uint64_t a1, unint64_t a2)
{
  v4 = sub_248A42678(a1, a2);
  sub_248A427A8(&unk_285B653C0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_248A42678(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_248A42894(v5, 0);
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

  result = sub_248A42E68();
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
        v10 = sub_248A42CD8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_248A42894(v10, 0);
        result = sub_248A42E28();
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

uint64_t sub_248A427A8(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_248A42908(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_248A42894(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBA268, &qword_248A45078);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_248A42908(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBA268, &qword_248A45078);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_248A429FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}