void sub_20C405B98()
{
  sub_20C405C54(319, &qword_28110B4C8, MEMORY[0x277D09D68]);
  if (v0 <= 0x3F)
  {
    sub_20C405C54(319, &qword_28110BEA0, MEMORY[0x277CC9260]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20C405C54(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20C4606D0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for Artwork()
{
  result = qword_28110B608;
  if (!qword_28110B608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20C405CF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20C405D3C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_20C405EA4()
{
  sub_20C405F90(319, qword_28110B6B8, type metadata accessor for DynamicArtworkLayoutEnvironment);
  if (v0 <= 0x3F)
  {
    sub_20C4060C4();
    if (v1 <= 0x3F)
    {
      sub_20C405F90(319, qword_28110BC40, type metadata accessor for ImageAsset);
      if (v2 <= 0x3F)
      {
        sub_20C406508();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_20C405F90(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20C4606D0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for DynamicArtworkLayoutEnvironment()
{
  result = qword_28110B6F8;
  if (!qword_28110B6F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20C406030()
{
  result = sub_20C45FDF0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_20C4060C4()
{
  if (!qword_28110B408)
  {
    type metadata accessor for ImageAsset();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BAEF8, &qword_20C461BE0);
    sub_20C4064C0(&qword_28110BC90, type metadata accessor for ImageAsset);
    v0 = sub_20C460450();
    if (!v1)
    {
      atomic_store(v0, &qword_28110B408);
    }
  }
}

uint64_t type metadata accessor for ImageAsset()
{
  result = qword_28110BC78;
  if (!qword_28110BC78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20C4061C8()
{
  sub_20C405C54(319, &qword_28110B4C8, MEMORY[0x277D09D68]);
  if (v0 <= 0x3F)
  {
    sub_20C405C54(319, &qword_28110BEA0, MEMORY[0x277CC9260]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_20C406308()
{
  result = qword_28110B858;
  if (!qword_28110B858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B858);
  }

  return result;
}

void sub_20C40637C(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[9];
  sub_20C460980();
  sub_20C45FC90();
  swift_getTupleTypeMetadata2();
  if (v4 <= 0x3F)
  {
    sub_20C406420();
    if (v5 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_20C406420()
{
  if (!qword_28110BE98)
  {
    v0 = sub_20C45FCC0();
    if (!v1)
    {
      atomic_store(v0, &qword_28110BE98);
    }
  }
}

unint64_t sub_20C40646C()
{
  result = qword_28110B868;
  if (!qword_28110B868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B868);
  }

  return result;
}

uint64_t sub_20C4064C0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_20C406508()
{
  if (!qword_28110B4C0)
  {
    type metadata accessor for Artwork();
    sub_20C4064C0(&qword_28110B638, type metadata accessor for Artwork);
    v0 = sub_20C45FDA0();
    if (!v1)
    {
      atomic_store(v0, &qword_28110B4C0);
    }
  }
}

uint64_t type metadata accessor for MonogramLoadState()
{
  result = qword_28110B778;
  if (!qword_28110B778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20C4065E8()
{
  if (!qword_28110B3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BB268, &qword_20C462D40);
    sub_20C45FC90();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28110B3B0);
    }
  }
}

uint64_t sub_20C406668()
{
  sub_20C4065E8();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t type metadata accessor for Monogram()
{
  result = qword_28110B568;
  if (!qword_28110B568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20C40670C()
{
  result = sub_20C45FC10();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for DynamicImageAssetState()
{
  result = qword_28110BDD8;
  if (!qword_28110BDD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for DynamicImageAssetView()
{
  result = qword_28110BE78;
  if (!qword_28110BE78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20C406840(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_20C4068A4()
{
  sub_20C406840(319, &qword_28110B4B8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_20C4069C0();
    if (v1 <= 0x3F)
    {
      sub_20C406A24();
      if (v2 <= 0x3F)
      {
        sub_20C406840(319, &qword_28110B3C0, sub_20C406B94, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_20C4069C0()
{
  if (!qword_28110B4B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BBDD0, &qword_20C466B88);
    v0 = sub_20C460010();
    if (!v1)
    {
      atomic_store(v0, &qword_28110B4B0);
    }
  }
}

void sub_20C406A24()
{
  if (!qword_28110B4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BBDD8, &qword_20C466B90);
    sub_20C417418(&qword_28110B420, &qword_27C7BBDD8, &qword_20C466B90);
    v0 = sub_20C460030();
    if (!v1)
    {
      atomic_store(v0, &qword_28110B4A8);
    }
  }
}

uint64_t sub_20C406AE8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20C406B20()
{
  result = sub_20C45FCC0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_20C406B94()
{
  result = qword_28110B3C8;
  if (!qword_28110B3C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28110B3C8);
  }

  return result;
}

uint64_t sub_20C406BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC10, &qword_20C462070);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC18, &unk_20C464A00);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_20C406CF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC10, &qword_20C462070);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC18, &unk_20C464A00);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_20C406E14(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ImageAsset();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_20C406EC0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ImageAsset();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20C406F64()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20C406FE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF98, &qword_20C461F70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C407058()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_20C414B30();

  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  v6 = *(v0 + 88);

  v7 = *(v0 + 104);

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_20C4070BC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  sub_20C414B30();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20C40712C()
{
  v1 = 0x79654B6568636163;
  if (*v0 != 1)
  {
    v1 = 0x657A695377656976;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_20C40717C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C41EA38(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_20C4071B0()
{
  if (*v0)
  {
    result = 1702521203;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

uint64_t sub_20C4071FC@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_20C40722C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB268, &qword_20C462D40);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20C4072A4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB268, &qword_20C462D40);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_20C407334(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for MonogramLoadState();
  v5 = *(*(State - 8) + 48);

  return v5(a1, a2, State);
}

uint64_t sub_20C4073A0(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for MonogramLoadState();
  v5 = *(*(State - 8) + 56);

  return v5(a1, a2, a2, State);
}

uint64_t sub_20C40741C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20C407454()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_20C414B30();
  v4 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20C4074C4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

uint64_t sub_20C407504(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB5F8, &unk_20C4640A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB600, &unk_20C464880);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB608, &qword_20C4640B0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_20C40769C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB5F8, &unk_20C4640A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB600, &unk_20C464880);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB608, &qword_20C4640B0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_20C407834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC10, &qword_20C462070);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC18, &unk_20C464A00);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_20C407974(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC10, &qword_20C462070);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC18, &unk_20C464A00);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_20C407AB8()
{
  v1 = type metadata accessor for ImageAsset();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v26 = *(*(v1 - 8) + 64);
  v4 = type metadata accessor for DynamicImageAssetFeature(0);
  v5 = *(*(v4 - 8) + 80);
  v6 = *(*(v4 - 8) + 64);
  v7 = v0 + v3;
  v8 = sub_20C45FD00();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3, 1, v8))
  {
    (*(v9 + 8))(v0 + v3, v8);
  }

  v10 = *(v7 + *(v1 + 20) + 8);

  v11 = *(v1 + 28);
  v12 = sub_20C45FC30();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v7 + v11, 1, v12))
  {
    (*(v13 + 8))(v7 + v11, v12);
  }

  v14 = (((v26 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + v5 + 16) & ~v5;
  v15 = (v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = v0 + v14;
  v17 = sub_20C45FCC0();
  (*(*(v17 - 8) + 8))(v16, v17);
  v18 = v16 + *(v4 + 20);
  v19 = *(v18 + 8);

  v20 = *(v18 + 24);

  v21 = *(v0 + v15 + 16);

  v22 = *(v0 + v15 + 24);

  v23 = *(v0 + v15 + 40);

  v24 = *(v0 + v15 + 56);

  return MEMORY[0x2821FE8E8](v0, v15 + 80, v2 | v5 | 7);
}

uint64_t sub_20C407D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C45FCC0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20C407E20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20C45FCC0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

__n128 sub_20C407EF0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_20C407F34()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[8];

  v4 = v0[11];

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_20C407FBC()
{
  v1 = v0[2];

  v2 = v0[6];

  v3 = v0[9];

  v4 = v0[11];

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_20C40801C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

uint64_t sub_20C408080(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB490, &qword_20C463AD8);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20C4080F8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB490, &qword_20C463AD8);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_20C408264()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20C4082A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDC0, &qword_20C466B58);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDC8, &unk_20C466B60);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_20C4083D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDC0, &qword_20C466B58);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDC8, &unk_20C466B60);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_20C408538(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDF0, &qword_20C466BA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C4085A4()
{
  v1 = type metadata accessor for DynamicImageAssetView();
  v2 = *(*(v1 - 1) + 80);
  v24 = *(*(v1 - 1) + 64);
  v25 = sub_20C460050();
  v4 = *(v25 - 8);
  v5 = *(v4 + 80);
  v23 = *(v4 + 64);
  v3 = (v2 + 16) & ~v2;
  v6 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDB0, &qword_20C466A90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_20C460090();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  else
  {
    v8 = *v6;
  }

  v9 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDB8, &qword_20C466AC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_20C460240();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(&v6[v9], 1, v10))
    {
      (*(v11 + 8))(&v6[v9], v10);
    }
  }

  else
  {
    v12 = *&v6[v9];
  }

  v13 = v1[6];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_20C460240();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(&v6[v13], 1, v14))
    {
      (*(v15 + 8))(&v6[v13], v14);
    }
  }

  else
  {
    v16 = *&v6[v13];
  }

  v17 = (((v2 + 16) & ~v2) + v24 + v5) & ~v5;
  v18 = &v6[v1[7]];
  v19 = *v18;
  v20 = *(v18 + 1);
  v21 = v18[16];
  sub_20C414B30();

  (*(v4 + 8))(v0 + v17, v25);

  return MEMORY[0x2821FE8E8](v0, ((v23 + v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | v5 | 7);
}

uint64_t sub_20C4088FC()
{
  v1 = type metadata accessor for DynamicImageAssetView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDB0, &qword_20C466A90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_20C460090();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDB8, &qword_20C466AC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_20C460240();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(&v5[v8], 1, v9))
    {
      (*(v10 + 8))(&v5[v8], v9);
    }
  }

  else
  {
    v11 = *&v5[v8];
  }

  v12 = v1[6];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_20C460240();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(&v5[v12], 1, v13))
    {
      (*(v14 + 8))(&v5[v12], v13);
    }
  }

  else
  {
    v15 = *&v5[v12];
  }

  v16 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = &v5[v1[7]];
  v18 = *v17;
  v19 = *(v17 + 1);
  v20 = v17[16];
  sub_20C414B30();

  v21 = *(v0 + v16 + 16);

  v22 = *(v0 + v16 + 24);

  v23 = *(v0 + v16 + 40);

  v24 = *(v0 + v16 + 56);

  return MEMORY[0x2821FE8E8](v0, ((v16 + 87) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_20C408BFC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_20C408C3C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 40))(*(a1 + a2 - 16));
  *a3 = result;
  return result;
}

__n128 sub_20C408C90(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_20C408C9C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 32))(*(a1 + a2 - 16));
  *a3 = result;
  return result;
}

uint64_t sub_20C408CF4()
{
  v1 = type metadata accessor for ImageAsset();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = sub_20C45FD00();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  v8 = *(v5 + *(v1 + 20) + 8);

  v9 = *(v1 + 28);
  v10 = sub_20C45FC30();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 87) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v0 + v12);
  v15 = *(v0 + v12 + 16);

  v16 = v14[3];

  v17 = v14[5];

  v18 = v14[7];

  return MEMORY[0x2821FE8E8](v0, v13 + 16, v2 | 7);
}

uint64_t sub_20C408ED0()
{
  v1 = type metadata accessor for ImageAsset();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v26 = *(*(v1 - 8) + 64);
  v4 = type metadata accessor for ImageAssetFeature(0);
  v5 = *(*(v4 - 8) + 80);
  v6 = *(*(v4 - 8) + 64);
  v7 = v0 + v3;
  v8 = sub_20C45FD00();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3, 1, v8))
  {
    (*(v9 + 8))(v0 + v3, v8);
  }

  v10 = *(v7 + *(v1 + 20) + 8);

  v11 = *(v1 + 28);
  v12 = sub_20C45FC30();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v7 + v11, 1, v12))
  {
    (*(v13 + 8))(v7 + v11, v12);
  }

  v14 = (((v26 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + v5 + 16) & ~v5;
  v15 = (v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = v0 + v14;
  v17 = sub_20C45FCC0();
  (*(*(v17 - 8) + 8))(v16, v17);
  v18 = v16 + *(v4 + 20);
  v19 = *(v18 + 8);

  v20 = *(v18 + 24);

  v21 = *(v0 + v15 + 16);

  v22 = *(v0 + v15 + 24);

  v23 = *(v0 + v15 + 40);

  v24 = *(v0 + v15 + 56);

  return MEMORY[0x2821FE8E8](v0, v15 + 80, v2 | v5 | 7);
}

uint64_t sub_20C40917C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C45FCC0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20C409238(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20C45FCC0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20C4092F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_20C45FC10();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20C40939C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_20C45FC10();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20C409440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C45FDF0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 4)
    {
      return v12 - 3;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_20C4094FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20C45FDF0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 3;
  }

  return result;
}

uint64_t sub_20C4095B8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 64))(*(a1 + a2 - 16));
  *a3 = result;
  a3[1] = v5;
  return result;
}

__n128 sub_20C40960C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_20C409618()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20C409658@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 56))(*(a1 + a2 - 16));
  *a3 = result;
  return result;
}

uint64_t sub_20C4096AC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 48))(*(a1 + a2 - 16));
  *a3 = result;
  a3[1] = v5;
  return result;
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

uint64_t sub_20C409B04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t Artwork.init(backgroundColor:templateURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_20C409BD0(a1, a3, &qword_27C7BAC10, &qword_20C462070);
  v5 = type metadata accessor for Artwork();
  return sub_20C409BD0(a2, a3 + *(v5 + 20), &qword_27C7BAC18, &unk_20C464A00);
}

uint64_t sub_20C409BD0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_20C409C38()
{
  v1 = *v0;
  sub_20C460930();
  MEMORY[0x20F2FAEA0](v1);
  return sub_20C460970();
}

uint64_t sub_20C409C80()
{
  v1 = *v0;
  sub_20C460930();
  MEMORY[0x20F2FAEA0](v1);
  return sub_20C460970();
}

uint64_t sub_20C409CC4()
{
  if (*v0)
  {
    result = 0x6574616C706D6574;
  }

  else
  {
    result = 0x756F72676B636162;
  }

  *v0;
  return result;
}

uint64_t sub_20C409D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL;
  if (v6 || (sub_20C4608D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574616C706D6574 && a2 == 0xEB000000004C5255)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C4608D0();

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

uint64_t sub_20C409E08(uint64_t a1)
{
  v2 = sub_20C40A128();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C409E44(uint64_t a1)
{
  v2 = sub_20C40A128();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Artwork.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC20, &qword_20C461178);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C40A128();
  sub_20C4609C0();
  v11[15] = 0;
  sub_20C45FD00();
  sub_20C405CF4(qword_28110B4E0, MEMORY[0x277D09D68]);
  sub_20C460880();
  if (!v1)
  {
    v9 = *(type metadata accessor for Artwork() + 20);
    v11[14] = 1;
    sub_20C45FC30();
    sub_20C405CF4(&qword_28110BEB8, MEMORY[0x277CC9260]);
    sub_20C460880();
  }

  return (*(v4 + 8))(v7, v3);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_20C40A128()
{
  result = qword_28110B650;
  if (!qword_28110B650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B650);
  }

  return result;
}

uint64_t Artwork.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC18, &unk_20C464A00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v22 - v5;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC10, &qword_20C462070) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v26 = &v22 - v8;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC28, &qword_20C461180);
  v25 = *(v27 - 8);
  v9 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v22 - v10;
  v12 = type metadata accessor for Artwork();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20]();
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C40A128();
  sub_20C4609B0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v12;
  v17 = v15;
  v18 = v25;
  sub_20C45FD00();
  v29 = 0;
  sub_20C405CF4(&qword_27C7BAC30, MEMORY[0x277D09D68]);
  v19 = v26;
  v20 = v27;
  sub_20C460810();
  sub_20C409BD0(v19, v17, &qword_27C7BAC10, &qword_20C462070);
  sub_20C45FC30();
  v28 = 1;
  sub_20C405CF4(&qword_27C7BAC38, MEMORY[0x277CC9260]);
  sub_20C460810();
  (*(v18 + 8))(v11, v20);
  sub_20C409BD0(v6, v17 + *(v23 + 20), &qword_27C7BAC18, &unk_20C464A00);
  sub_20C40A578(v17, v24);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_20C40A5DC(v17);
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

uint64_t sub_20C40A578(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C40A5DC(uint64_t a1)
{
  v2 = type metadata accessor for Artwork();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Artwork.hash(into:)()
{
  v1 = v0;
  v2 = sub_20C45FC30();
  v23 = *(v2 - 8);
  v24 = v2;
  v3 = *(v23 + 64);
  MEMORY[0x28223BE20]();
  v22 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC18, &unk_20C464A00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v21 - v6;
  v8 = sub_20C45FD00();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC10, &qword_20C462070) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v15 = &v21 - v14;
  sub_20C409B04(v1, &v21 - v14, &qword_27C7BAC10, &qword_20C462070);
  if ((*(v9 + 48))(v15, 1, v8) == 1)
  {
    sub_20C460950();
  }

  else
  {
    (*(v9 + 32))(v12, v15, v8);
    sub_20C460950();
    sub_20C405CF4(&qword_28110B4D8, MEMORY[0x277D09D68]);
    sub_20C460460();
    (*(v9 + 8))(v12, v8);
  }

  v16 = type metadata accessor for Artwork();
  sub_20C409B04(v1 + *(v16 + 20), v7, &qword_27C7BAC18, &unk_20C464A00);
  v18 = v23;
  v17 = v24;
  if ((*(v23 + 48))(v7, 1, v24) == 1)
  {
    return sub_20C460950();
  }

  v20 = v22;
  (*(v18 + 32))(v22, v7, v17);
  sub_20C460950();
  sub_20C405CF4(&qword_28110BEB0, MEMORY[0x277CC9260]);
  sub_20C460460();
  return (*(v18 + 8))(v20, v17);
}

uint64_t Artwork.hashValue.getter()
{
  sub_20C460930();
  Artwork.hash(into:)();
  return sub_20C460970();
}

uint64_t sub_20C40AA54()
{
  sub_20C460930();
  Artwork.hash(into:)();
  return sub_20C460970();
}

uint64_t sub_20C40AA98()
{
  sub_20C460930();
  Artwork.hash(into:)();
  return sub_20C460970();
}

BOOL _s12FitnessAsset7ArtworkV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C45FC30();
  v47 = *(v4 - 8);
  v48 = v4;
  v5 = *(v47 + 64);
  MEMORY[0x28223BE20]();
  v41 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC18, &unk_20C464A00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v42 = &v41 - v8;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC48, &qword_20C4613F0);
  v9 = (*(*(v43 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v44 = &v41 - v10;
  v11 = sub_20C45FD00();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20]();
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC10, &qword_20C462070) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v18 = &v41 - v17;
  v19 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC50, &qword_20C4613F8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = MEMORY[0x28223BE20]();
  v22 = &v41 - v21;
  v23 = *(v20 + 56);
  v45 = a1;
  sub_20C409B04(a1, &v41 - v21, &qword_27C7BAC10, &qword_20C462070);
  v46 = a2;
  sub_20C409B04(a2, &v22[v23], &qword_27C7BAC10, &qword_20C462070);
  v24 = *(v12 + 48);
  if (v24(v22, 1, v11) != 1)
  {
    sub_20C409B04(v22, v18, &qword_27C7BAC10, &qword_20C462070);
    if (v24(&v22[v23], 1, v11) != 1)
    {
      (*(v12 + 32))(v15, &v22[v23], v11);
      sub_20C405CF4(&qword_28110B4D0, MEMORY[0x277D09D68]);
      v28 = sub_20C4604B0();
      v29 = *(v12 + 8);
      v29(v15, v11);
      v29(v18, v11);
      sub_20C40B440(v22, &qword_27C7BAC10, &qword_20C462070);
      if ((v28 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    (*(v12 + 8))(v18, v11);
LABEL_6:
    v25 = &qword_27C7BAC50;
    v26 = &qword_20C4613F8;
    v27 = v22;
LABEL_14:
    sub_20C40B440(v27, v25, v26);
    return 0;
  }

  if (v24(&v22[v23], 1, v11) != 1)
  {
    goto LABEL_6;
  }

  sub_20C40B440(v22, &qword_27C7BAC10, &qword_20C462070);
LABEL_8:
  v30 = *(type metadata accessor for Artwork() + 20);
  v31 = v44;
  v32 = *(v43 + 48);
  sub_20C409B04(v45 + v30, v44, &qword_27C7BAC18, &unk_20C464A00);
  sub_20C409B04(v46 + v30, v31 + v32, &qword_27C7BAC18, &unk_20C464A00);
  v34 = v47;
  v33 = v48;
  v35 = *(v47 + 48);
  if (v35(v31, 1, v48) == 1)
  {
    if (v35(v31 + v32, 1, v33) == 1)
    {
      sub_20C40B440(v31, &qword_27C7BAC18, &unk_20C464A00);
      return 1;
    }

    goto LABEL_13;
  }

  v36 = v42;
  sub_20C409B04(v31, v42, &qword_27C7BAC18, &unk_20C464A00);
  if (v35(v31 + v32, 1, v33) == 1)
  {
    (*(v34 + 8))(v36, v33);
LABEL_13:
    v25 = &qword_27C7BAC48;
    v26 = &qword_20C4613F0;
    v27 = v31;
    goto LABEL_14;
  }

  v38 = v41;
  (*(v34 + 32))(v41, v31 + v32, v33);
  sub_20C405CF4(&qword_28110BEA8, MEMORY[0x277CC9260]);
  v39 = sub_20C4604B0();
  v40 = *(v34 + 8);
  v40(v38, v33);
  v40(v36, v33);
  sub_20C40B440(v31, &qword_27C7BAC18, &unk_20C464A00);
  return (v39 & 1) != 0;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_20C40B140(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20C40B160(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for CGSize()
{
  if (!qword_28110B3D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_28110B3D0);
    }
  }
}

uint64_t getEnumTagSinglePayload for Artwork.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Artwork.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_20C40B33C()
{
  result = qword_27C7BAC40;
  if (!qword_27C7BAC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BAC40);
  }

  return result;
}

unint64_t sub_20C40B394()
{
  result = qword_28110B640;
  if (!qword_28110B640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B640);
  }

  return result;
}

unint64_t sub_20C40B3EC()
{
  result = qword_28110B648;
  if (!qword_28110B648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B648);
  }

  return result;
}

uint64_t sub_20C40B440(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double ImageAssetLocalState.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  return result;
}

uint64_t sub_20C40B4C8()
{
  if (*v0)
  {
    return 0x79654B6568636163;
  }

  else
  {
    return 0x657A695377656976;
  }
}

uint64_t sub_20C40B4FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x657A695377656976 && a2 == 0xE800000000000000;
  if (v6 || (sub_20C4608D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x79654B6568636163 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C4608D0();

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

uint64_t sub_20C40B5D8(uint64_t a1)
{
  v2 = sub_20C40B8B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C40B614(uint64_t a1)
{
  v2 = sub_20C40B8B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ImageAssetLocalState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC58, &unk_20C461400);
  v19 = *(v3 - 8);
  v4 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v16 - v5;
  v7 = *v1;
  v17 = v1[1];
  v8 = *(v1 + 16);
  v9 = *(v1 + 5);
  v10 = *(v1 + 9);
  v28 = *(v1 + 7);
  v29 = v10;
  v30 = *(v1 + 11);
  v26 = *(v1 + 3);
  v27 = v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C40B8B0();
  sub_20C4609C0();
  *&v21 = v7;
  *(&v21 + 1) = v17;
  v12 = v6;
  LOBYTE(v22) = v8;
  LOBYTE(v20[0]) = 0;
  type metadata accessor for CGSize();
  sub_20C40BDA0(&qword_28110B3E0);
  v13 = v18;
  sub_20C460880();
  if (v13)
  {
    return (*(v19 + 8))(v6, v3);
  }

  v23 = v28;
  v24 = v29;
  v25 = v30;
  v21 = v26;
  v22 = v27;
  v31 = 1;
  sub_20C40B904(&v26, v20);
  sub_20C40B974();
  sub_20C460880();
  v15 = (v19 + 8);
  v20[2] = v23;
  v20[3] = v24;
  v20[4] = v25;
  v20[0] = v21;
  v20[1] = v22;
  sub_20C40B440(v20, &qword_27C7BAC68, &unk_20C464890);
  return (*v15)(v12, v3);
}

unint64_t sub_20C40B8B0()
{
  result = qword_27C7BAC60;
  if (!qword_27C7BAC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BAC60);
  }

  return result;
}

uint64_t sub_20C40B904(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC68, &unk_20C464890);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20C40B974()
{
  result = qword_28110B878;
  if (!qword_28110B878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B878);
  }

  return result;
}

uint64_t ImageAssetLocalState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC70, &qword_20C461410);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v24 - v7;
  v65 = 1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C40B8B0();
  sub_20C4609B0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v55 = 0;
    v56 = 0;
    v57 = v65;
    *v58 = v64[0];
    *&v58[3] = *(v64 + 3);
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
  }

  else
  {
    v35 = v5;
    v10 = v66;
    type metadata accessor for CGSize();
    LOBYTE(v37) = 0;
    sub_20C40BDA0(&qword_27C7BAC78);
    sub_20C460810();
    v13 = v55;
    v12 = v56;
    v65 = v57;
    v44 = 1;
    sub_20C40BDE4();
    sub_20C460810();
    (*(v35 + 8))(v8, v4);
    v15 = v45;
    v14 = v46;
    v29 = v46;
    v30 = v45;
    v16 = v49;
    v28 = v49;
    v25 = v50;
    v26 = v47;
    v34 = v51;
    v35 = v48;
    v32 = v53;
    v33 = v52;
    v31 = v54;
    memset(v36, 0, 80);
    sub_20C40B440(v36, &qword_27C7BAC68, &unk_20C464890);
    *&v37 = v13;
    *(&v37 + 1) = v12;
    v27 = v65;
    LOBYTE(v38) = v65;
    *(&v38 + 1) = v64[0];
    DWORD1(v38) = *(v64 + 3);
    *(&v38 + 1) = v15;
    *&v39 = v14;
    v17 = v26;
    *(&v39 + 1) = v26;
    *&v40 = v35;
    *(&v40 + 1) = v16;
    v18 = v25;
    *&v41 = v25;
    *(&v41 + 1) = v34;
    *&v42 = v33;
    *(&v42 + 1) = v32;
    v19 = v31;
    v43 = v31;
    v20 = v42;
    v21 = v40;
    *(v10 + 64) = v41;
    *(v10 + 80) = v20;
    v22 = v39;
    *(v10 + 96) = v19;
    *(v10 + 32) = v22;
    *(v10 + 48) = v21;
    v23 = v38;
    *v10 = v37;
    *(v10 + 16) = v23;
    sub_20C40BE38(&v37, &v55);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v55 = v13;
    v56 = v12;
    v57 = v27;
    *v58 = v64[0];
    *&v58[3] = *(v64 + 3);
    *&v59 = v30;
    *(&v59 + 1) = v29;
    *&v60 = v17;
    *(&v60 + 1) = v35;
    *&v61 = v28;
    *(&v61 + 1) = v18;
    *&v62 = v34;
    *(&v62 + 1) = v33;
    *&v63 = v32;
    *(&v63 + 1) = v31;
  }

  return sub_20C40BD70(&v55);
}

uint64_t sub_20C40BDA0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGSize();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20C40BDE4()
{
  result = qword_27C7BAC80;
  if (!qword_27C7BAC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BAC80);
  }

  return result;
}

uint64_t ImageAssetLocalState.hash(into:)()
{
  v1 = *(v0 + 40);
  if (*(v0 + 16) == 1)
  {
    sub_20C460950();
    if (v1)
    {
LABEL_3:
      v8 = *(v0 + 24);
      *&v9[8] = *(v0 + 48);
      *&v9[24] = *(v0 + 64);
      *&v9[40] = *(v0 + 80);
      *&v9[56] = *(v0 + 96);
      *v9 = v1;
      sub_20C460950();
      v10 = *(v0 + 24);
      v11 = v1;
      v2 = *(v0 + 64);
      v12 = *(v0 + 48);
      v13 = v2;
      v14 = *(v0 + 80);
      v15 = *(v0 + 96);
      sub_20C40C520(&v10, v16);
      ImageAssetCacheKey.hash(into:)();
      v16[2] = *&v9[16];
      v16[3] = *&v9[32];
      v16[4] = *&v9[48];
      v16[0] = v8;
      v16[1] = *v9;
      return sub_20C40C57C(v16);
    }
  }

  else
  {
    v5 = *v0;
    v4 = *(v0 + 8);
    sub_20C460950();
    if (v5 == 0.0)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = v5;
    }

    MEMORY[0x20F2FAEC0](*&v6);
    if (v4 == 0.0)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = v4;
    }

    MEMORY[0x20F2FAEC0](*&v7);
    if (v1)
    {
      goto LABEL_3;
    }
  }

  return sub_20C460950();
}

uint64_t ImageAssetLocalState.hashValue.getter()
{
  v1 = v0;
  v3 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v5 = *(v1 + 40);
  sub_20C460930();
  if (v4 != 1)
  {
    sub_20C460950();
    if (v3 == 0.0)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = v3;
    }

    MEMORY[0x20F2FAEC0](*&v7);
    if (v2 == 0.0)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = v2;
    }

    MEMORY[0x20F2FAEC0](*&v8);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_11:
    sub_20C460950();
    return sub_20C460970();
  }

  sub_20C460950();
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_3:
  v15 = *(v1 + 24);
  *v16 = v5;
  v6 = *(v1 + 64);
  *&v16[8] = *(v1 + 48);
  *&v16[24] = v6;
  *&v16[40] = *(v1 + 80);
  *&v16[56] = *(v1 + 96);
  v10 = v15;
  v11 = *v16;
  v12 = *&v16[16];
  v13 = *&v16[32];
  v14 = *&v16[48];
  sub_20C460950();
  sub_20C40C520(&v15, v17);
  ImageAssetCacheKey.hash(into:)();
  v17[2] = v12;
  v17[3] = v13;
  v17[4] = v14;
  v17[0] = v10;
  v17[1] = v11;
  sub_20C40C57C(v17);
  return sub_20C460970();
}

uint64_t sub_20C40C120()
{
  sub_20C460930();
  ImageAssetLocalState.hash(into:)();
  return sub_20C460970();
}

uint64_t sub_20C40C164()
{
  sub_20C460930();
  ImageAssetLocalState.hash(into:)();
  return sub_20C460970();
}

uint64_t sub_20C40C1A4(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x20F2FAEC0](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x20F2FAEC0](*&v3);
}

BOOL _s12FitnessAsset05ImageB10LocalStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 40);
  v6 = *(a1 + 72);
  v52 = *(a1 + 56);
  v53 = v6;
  v54 = *(a1 + 88);
  v50 = *(a1 + 24);
  v51 = v5;
  v8 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 40);
  v12 = *(a2 + 56);
  v59 = *(a2 + 88);
  v13 = *(a2 + 72);
  v57 = v12;
  v58 = v13;
  v55 = v10;
  v56 = v11;
  if (v4)
  {
    if ((v9 & 1) == 0)
    {
      return 0;
    }

LABEL_7:
    v15 = v51;
    v16 = v56;
    if (v51)
    {
      v42 = *(a1 + 24);
      v17 = *(a1 + 64);
      *&v43[8] = *(a1 + 48);
      *&v43[24] = v17;
      *&v43[40] = *(a1 + 80);
      v18 = a1;
      v19 = *(a1 + 96);
      *v43 = v51;
      *&v43[56] = v19;
      v37 = v42;
      v38 = *v43;
      v39 = *&v43[16];
      v40 = *&v43[32];
      v41 = *&v43[48];
      if (v56)
      {
        v35 = *(a2 + 24);
        v20 = *(a2 + 64);
        *&v36[8] = *(a2 + 48);
        *&v36[24] = v20;
        *&v36[40] = *(a2 + 80);
        *&v36[56] = *(a2 + 96);
        *v36 = v56;
        v14 = _s12FitnessAsset05ImageB8CacheKeyV2eeoiySbAC_ACtFZ_0(&v37, &v35);
        v33[2] = *&v36[16];
        v33[3] = *&v36[32];
        v33[4] = *&v36[48];
        v33[0] = v35;
        v33[1] = *v36;
        sub_20C40B904(&v50, v34);
        sub_20C40B904(&v55, v34);
        sub_20C40B904(&v42, v34);
        sub_20C40C57C(v33);
        v34[2] = v39;
        v34[3] = v40;
        v34[4] = v41;
        v34[0] = v37;
        v34[1] = v38;
        sub_20C40C57C(v34);
        v35 = *(v18 + 24);
        v21 = *(v18 + 64);
        *&v36[8] = *(v18 + 48);
        *&v36[24] = v21;
        *&v36[40] = *(v18 + 80);
        v22 = *(v18 + 96);
        *v36 = v15;
        *&v36[56] = v22;
        sub_20C40B440(&v35, &qword_27C7BAC68, &unk_20C464890);
        return v14;
      }

      v23 = a2;
      *&v36[16] = *&v43[16];
      *&v36[32] = *&v43[32];
      *&v36[48] = *&v43[48];
      v35 = v42;
      *v36 = *v43;
      sub_20C40B904(&v50, v34);
      sub_20C40B904(&v55, v34);
      sub_20C40B904(&v42, v34);
      sub_20C40C57C(&v35);
    }

    else
    {
      if (!v56)
      {
        v42 = *(a1 + 24);
        v30 = *(a1 + 64);
        *&v43[8] = *(a1 + 48);
        *&v43[24] = v30;
        *&v43[40] = *(a1 + 80);
        v31 = *(a1 + 96);
        *v43 = 0;
        *&v43[56] = v31;
        sub_20C40B904(&v50, &v37);
        sub_20C40B904(&v55, &v37);
        sub_20C40B440(&v42, &qword_27C7BAC68, &unk_20C464890);
        return 1;
      }

      v23 = a2;
      v18 = a1;
      sub_20C40B904(&v50, &v42);
      sub_20C40B904(&v55, &v42);
    }

    v42 = *(v18 + 24);
    v24 = *(v18 + 64);
    *&v43[8] = *(v18 + 48);
    *&v43[24] = v24;
    *&v43[40] = *(v18 + 80);
    v25 = *(v18 + 96);
    *v43 = v15;
    *&v43[56] = v25;
    v44 = *(v23 + 24);
    v26 = *(v23 + 48);
    v27 = *(v23 + 64);
    v28 = *(v23 + 80);
    v29 = *(v23 + 96);
    v45 = v16;
    v49 = v29;
    v48 = v28;
    v47 = v27;
    v46 = v26;
    sub_20C40B440(&v42, &qword_27C7BACA0, &qword_20C463AC0);
    return 0;
  }

  v14 = 0;
  if ((v9 & 1) == 0 && v3 == v8 && v2 == v7)
  {
    goto LABEL_7;
  }

  return v14;
}

unint64_t sub_20C40C5D4()
{
  result = qword_28110BBD8;
  if (!qword_28110BBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110BBD8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12FitnessAsset05ImageB8CacheKeyVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20C40C66C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 104))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_20C40C6C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

unint64_t sub_20C40C758()
{
  result = qword_27C7BAC88;
  if (!qword_27C7BAC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BAC88);
  }

  return result;
}

unint64_t sub_20C40C7B0()
{
  result = qword_27C7BAC90;
  if (!qword_27C7BAC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BAC90);
  }

  return result;
}

unint64_t sub_20C40C808()
{
  result = qword_27C7BAC98;
  if (!qword_27C7BAC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BAC98);
  }

  return result;
}

uint64_t sub_20C40C85C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656863746566 && a2 == 0xE700000000000000;
  if (v4 || (sub_20C4608D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696863746566 && a2 == 0xE800000000000000 || (sub_20C4608D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701602409 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_20C4608D0();

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

uint64_t sub_20C40C9AC(unsigned __int8 a1)
{
  sub_20C460930();
  MEMORY[0x20F2FAEA0](a1);
  return sub_20C460970();
}

uint64_t sub_20C40C9F4(char a1)
{
  if (!a1)
  {
    return 0x64656863746566;
  }

  if (a1 == 1)
  {
    return 0x676E696863746566;
  }

  return 1701602409;
}

uint64_t sub_20C40CA44(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_20C4608D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x637465467473616CLL && a2 == 0xE900000000000068)
  {

    return 1;
  }

  else
  {
    v6 = sub_20C4608D0();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_20C40CB48(char a1)
{
  sub_20C460930();
  MEMORY[0x20F2FAEA0](a1 & 1);
  return sub_20C460970();
}

uint64_t sub_20C40CB90(char a1)
{
  if (a1)
  {
    return 0x637465467473616CLL;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_20C40CBC0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65636E6174736E69 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_20C4608D0();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

BOOL sub_20C40CC38(char *a1, char *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  v5 = *(a3 + 32);
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  v8 = *(a3 + 56);
  v11 = *(a3 + 80);
  v10 = *(a3 + 64);
  return sub_20C40C974(*a1, *a2);
}

uint64_t sub_20C40CC84(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v10 = a1[9];
  v11 = a1[10];
  return sub_20C40C9AC(*v1);
}

uint64_t sub_20C40CCC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  v11 = *(a2 + 80);
  v10 = *(a2 + 64);
  return sub_20C40C984(a1, *v2);
}

uint64_t sub_20C40CD00(uint64_t a1, uint64_t a2)
{
  sub_20C460930();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v12 = *(a2 + 80);
  v11 = *(a2 + 64);
  sub_20C40C984(v13, *v2);
  return sub_20C460970();
}

uint64_t sub_20C40CD60(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v10 = a1[9];
  v11 = a1[10];
  return sub_20C40C9F4(*v1);
}

uint64_t sub_20C40CDCC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_20C40CE20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

BOOL sub_20C40CE74(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  v5 = *(a3 + 32);
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  v8 = *(a3 + 56);
  v11 = *(a3 + 80);
  v10 = *(a3 + 64);
  return sub_20C40CB10(*a1, *a2);
}

uint64_t sub_20C40CEC0(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v10 = a1[9];
  v11 = a1[10];
  return sub_20C40CB48(*v1);
}

uint64_t sub_20C40CF00(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  v11 = *(a2 + 80);
  v10 = *(a2 + 64);
  return sub_20C40CB20(a1, *v2);
}

uint64_t sub_20C40CF44(uint64_t a1, uint64_t a2)
{
  sub_20C460930();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v12 = *(a2 + 80);
  v11 = *(a2 + 64);
  sub_20C40CB20(v13, *v2);
  return sub_20C460970();
}

uint64_t sub_20C40CFA4(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v10 = a1[9];
  v11 = a1[10];
  return sub_20C40CB90(*v1);
}

uint64_t sub_20C40CFFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void, void, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5], a3[6], a3[7], a3[8], a3[9], a3[10]);
  *a5 = result;
  return result;
}

uint64_t sub_20C40D06C@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void, void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a1[8], a1[9], a1[10]);
  *a3 = result;
  return result;
}

uint64_t sub_20C40D0C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_20C40D114(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_20C40D170()
{
  sub_20C460930();
  MEMORY[0x20F2FAEA0](0);
  return sub_20C460970();
}

uint64_t sub_20C40D1B4()
{
  sub_20C460930();
  MEMORY[0x20F2FAEA0](0);
  return sub_20C460970();
}

uint64_t sub_20C40D20C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  v7 = *(a3 + 32);
  v8 = *(a3 + 40);
  v9 = *(a3 + 48);
  v10 = *(a3 + 56);
  v13 = *(a3 + 80);
  v12 = *(a3 + 64);
  result = sub_20C40CBC0(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_20C40D278(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_20C40D2CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_20C40D32C@<X0>(void *a1@<X2>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[8];
  v10 = a1[9];
  v13 = a1[10];
  v11 = sub_20C40D168();

  *a2 = v11 & 1;
  return result;
}

uint64_t sub_20C40D394@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void, void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a1[8], a1[9], a1[10]);
  *a3 = result & 1;
  return result;
}

uint64_t sub_20C40D3EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_20C40D440(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t AssetLoadState.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v80 = *(a2 + 56);
  v81 = v6;
  v9 = *(a2 + 72);
  v8 = *(a2 + 80);
  v84 = v4;
  v85 = v5;
  v86 = v6;
  v87 = v7;
  v88 = v80;
  v89 = v9;
  v90 = v8;
  v72 = type metadata accessor for AssetLoadState.IdleCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v70 = sub_20C4608C0();
  v68 = *(v70 - 8);
  v10 = *(v68 + 64);
  MEMORY[0x28223BE20](v70);
  v62 = &v52 - v11;
  v84 = v4;
  v85 = v5;
  v86 = v81;
  v87 = v7;
  v88 = v80;
  v89 = v9;
  v90 = v8;
  v12 = type metadata accessor for AssetLoadState.FetchingCodingKeys();
  v13 = swift_getWitnessTable();
  v60 = v12;
  v58 = v13;
  v69 = sub_20C4608C0();
  v67 = *(v69 - 8);
  v14 = *(v67 + 64);
  MEMORY[0x28223BE20](v69);
  v61 = &v52 - v15;
  v64 = sub_20C45FCC0();
  v63 = *(v64 - 8);
  v16 = *(v63 + 64);
  MEMORY[0x28223BE20](v64);
  v59 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v4;
  v85 = v5;
  v86 = v81;
  v87 = v7;
  v88 = v80;
  v89 = v9;
  v90 = v8;
  v18 = type metadata accessor for AssetLoadState.FetchedCodingKeys();
  v19 = swift_getWitnessTable();
  v57 = v18;
  v56 = v19;
  v66 = sub_20C4608C0();
  v53 = *(v66 - 8);
  v20 = *(v53 + 64);
  MEMORY[0x28223BE20](v66);
  v76 = &v52 - v21;
  v65 = sub_20C45FC90();
  v55 = *(v65 - 8);
  v22 = *(v55 + 64);
  MEMORY[0x28223BE20](v65);
  v75 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_20C460980();
  v74 = *(v54 - 8);
  v24 = *(v74 + 64);
  v25 = MEMORY[0x28223BE20](v54);
  v73 = &v52 - v26;
  v27 = *(a2 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  v30 = &v52 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v4;
  v85 = v5;
  v86 = v81;
  v87 = v7;
  v88 = v80;
  v89 = v9;
  v90 = v8;
  type metadata accessor for AssetLoadState.CodingKeys();
  swift_getWitnessTable();
  v31 = sub_20C4608C0();
  v78 = *(v31 - 8);
  v79 = v31;
  v32 = *(v78 + 64);
  MEMORY[0x28223BE20](v31);
  v34 = &v52 - v33;
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C4609C0();
  (*(v27 + 16))(v30, v77, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v43 = v54;
    v44 = v65;
    v45 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v74 + 32))(v73, v30, v43);
    v46 = v55;
    (*(v55 + 32))(v75, &v30[v45], v44);
    LOBYTE(v84) = 0;
    v41 = v79;
    sub_20C460870();
    LOBYTE(v84) = 0;
    v82 = v81;
    v83 = v80;
    swift_getWitnessTable();
    v47 = v66;
    v48 = v91;
    sub_20C4608B0();
    if (!v48)
    {
      LOBYTE(v84) = 1;
      sub_20C40F66C(&qword_27C7BACB0, MEMORY[0x277CC9578]);
      sub_20C4608B0();
    }

    (*(v53 + 8))(v76, v47);
    (*(v46 + 8))(v75, v44);
    (*(v74 + 8))(v73, v43);
    return (*(v78 + 8))(v34, v41);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v37 = v63;
    v38 = v59;
    v39 = v64;
    (*(v63 + 32))(v59, v30, v64);
    LOBYTE(v84) = 1;
    v40 = v61;
    v41 = v79;
    sub_20C460870();
    sub_20C40F66C(&qword_27C7BACA8, MEMORY[0x277CC95F0]);
    v42 = v69;
    sub_20C4608B0();
    (*(v67 + 8))(v40, v42);
    (*(v37 + 8))(v38, v39);
    return (*(v78 + 8))(v34, v41);
  }

  LOBYTE(v84) = 2;
  v50 = v62;
  v51 = v79;
  sub_20C460870();
  (*(v68 + 8))(v50, v70);
  return (*(v78 + 8))(v34, v51);
}

uint64_t AssetLoadState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v131 = a6;
  v117 = a1;
  v105 = a9;
  v116 = a11;
  *&v124 = a2;
  *(&v124 + 1) = a3;
  *&v125 = a4;
  *(&v125 + 1) = a5;
  v126 = a6;
  v127 = a7;
  v128 = a8;
  v129 = a10;
  v130 = a11;
  v17 = type metadata accessor for AssetLoadState.IdleCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v103 = v17;
  v101 = WitnessTable;
  v92 = sub_20C460860();
  v91 = *(v92 - 8);
  v19 = (*(v91 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v100 = &v87 - v20;
  *&v124 = a2;
  *(&v124 + 1) = a3;
  *&v112 = a2;
  *(&v112 + 1) = a3;
  *&v125 = a4;
  *(&v125 + 1) = a5;
  v113 = a4;
  v126 = v131;
  v127 = a7;
  v114 = a7;
  v115 = a8;
  v128 = a8;
  v129 = a10;
  v111 = a10;
  v130 = a11;
  v21 = type metadata accessor for AssetLoadState.FetchingCodingKeys();
  v22 = swift_getWitnessTable();
  v99 = v21;
  v98 = v22;
  v90 = sub_20C460860();
  v89 = *(v90 - 8);
  v23 = (*(v89 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v104 = &v87 - v24;
  *&v124 = a2;
  *(&v124 + 1) = a3;
  *&v125 = a4;
  *(&v125 + 1) = a5;
  v25 = v131;
  v126 = v131;
  v127 = a7;
  v128 = a8;
  v129 = a10;
  v130 = a11;
  v26 = type metadata accessor for AssetLoadState.FetchedCodingKeys();
  v27 = swift_getWitnessTable();
  v97 = v26;
  v96 = v27;
  v94 = sub_20C460860();
  v93 = *(v94 - 8);
  v28 = (*(v93 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v102 = &v87 - v29;
  v30 = v112;
  v124 = v112;
  v31 = v113;
  *&v125 = v113;
  *(&v125 + 1) = a5;
  v33 = v114;
  v32 = v115;
  v126 = v25;
  v127 = v114;
  v34 = v111;
  v128 = v115;
  v129 = v111;
  v130 = a11;
  type metadata accessor for AssetLoadState.CodingKeys();
  v109 = swift_getWitnessTable();
  v106 = sub_20C460860();
  v107 = *(v106 - 8);
  v35 = (*(v107 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v37 = &v87 - v36;
  v124 = v30;
  *&v125 = v31;
  *(&v125 + 1) = a5;
  v95 = a5;
  v126 = v131;
  v127 = v33;
  v128 = v32;
  v129 = v34;
  v130 = v116;
  State = type metadata accessor for AssetLoadState();
  v131 = *(State - 8);
  v39 = *(v131 + 64);
  v40 = (MEMORY[0x28223BE20])();
  v42 = &v87 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v40);
  v45 = &v87 - v44;
  MEMORY[0x28223BE20](v43);
  v47 = &v87 - v46;
  v48 = v117[4];
  __swift_project_boxed_opaque_existential_1(v117, v117[3]);
  v108 = v37;
  v49 = v110;
  sub_20C4609B0();
  if (!v49)
  {
    v88 = v42;
    v110 = v45;
    v109 = v47;
    v116 = State;
    v50 = v106;
    v51 = v108;
    *&v122 = sub_20C460850();
    sub_20C460590();
    swift_getWitnessTable();
    *&v124 = sub_20C4606F0();
    *(&v124 + 1) = v52;
    *&v125 = v53;
    *(&v125 + 1) = v54;
    sub_20C4606E0();
    swift_getWitnessTable();
    sub_20C460640();
    v55 = v122;
    if (v122 == 3 || (v87 = v124, v122 = v124, v123 = v125, (sub_20C460650() & 1) == 0))
    {
      v63 = sub_20C460770();
      swift_allocError();
      v65 = v64;
      v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BACB8, &qword_20C461670) + 48);
      *v65 = v116;
      sub_20C460800();
      sub_20C460760();
      (*(*(v63 - 8) + 104))(v65, *MEMORY[0x277D84160], v63);
      swift_willThrow();
      (*(v107 + 8))(v51, v50);
      swift_unknownObjectRelease();
    }

    else if (v55)
    {
      v56 = v50;
      if (v55 == 1)
      {
        LOBYTE(v122) = 1;
        sub_20C4607F0();
        v57 = v105;
        v58 = v107;
        v59 = v131;
        sub_20C45FCC0();
        sub_20C40F66C(&qword_27C7BACC0, MEMORY[0x277CC95F0]);
        v60 = v88;
        v61 = v90;
        v62 = v104;
        sub_20C460840();
        (*(v89 + 8))(v62, v61);
        (*(v58 + 8))(v108, v56);
        swift_unknownObjectRelease();
        v77 = v60;
        v78 = v116;
        swift_storeEnumTagMultiPayload();
        v79 = *(v59 + 32);
        v80 = v109;
        v79(v109, v77, v78);
        v79(v57, v80, v78);
      }

      else
      {
        LOBYTE(v122) = 2;
        v70 = v100;
        sub_20C4607F0();
        v71 = v105;
        v72 = v107;
        v73 = v131;
        (*(v91 + 8))(v70, v92);
        (*(v72 + 8))(v51, v56);
        swift_unknownObjectRelease();
        v75 = v109;
        v76 = v116;
        swift_storeEnumTagMultiPayload();
        (*(v73 + 32))(v71, v75, v76);
      }
    }

    else
    {
      LOBYTE(v122) = 0;
      v67 = v102;
      v68 = v50;
      sub_20C4607F0();
      sub_20C460980();
      LOBYTE(v122) = 0;
      v118 = v113;
      v119 = v95;
      v120 = v114;
      v121 = v115;
      swift_getWitnessTable();
      v69 = v94;
      sub_20C460840();
      sub_20C45FC90();
      v81 = *(swift_getTupleTypeMetadata2() + 48);
      LOBYTE(v122) = 1;
      sub_20C40F66C(&qword_27C7BACC8, MEMORY[0x277CC9578]);
      v82 = v110;
      sub_20C460840();
      v83 = v107;
      (*(v93 + 8))(v67, v69);
      (*(v83 + 8))(v51, v68);
      swift_unknownObjectRelease();
      v84 = v116;
      swift_storeEnumTagMultiPayload();
      v85 = *(v131 + 32);
      v86 = v109;
      v85(v109, v82, v84);
      v85(v105, v86, v84);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v117);
}

uint64_t static AssetLoadState.== infix(_:_:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v84 = a1;
  v85 = a2;
  v17 = sub_20C45FCC0();
  v77 = *(v17 - 8);
  v78 = v17;
  v18 = *(v77 + 64);
  MEMORY[0x28223BE20](v17);
  v75 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C45FC90();
  v79 = *(v20 - 8);
  v80 = v20;
  v21 = *(v79 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v69 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v76 = &v68 - v24;
  v25 = sub_20C460980();
  v82 = *(v25 - 8);
  v83 = v25;
  v26 = *(v82 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v68 - v27;
  v72 = a3;
  v86 = a3;
  v87 = a4;
  v74 = a4;
  v88 = a5;
  v89 = a6;
  v71 = a7;
  v90 = a7;
  v91 = a8;
  v92 = a9;
  v93 = a10;
  v73 = a10;
  v70 = a11;
  v94 = a11;
  State = type metadata accessor for AssetLoadState();
  v30 = *(State - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](State);
  v34 = &v68 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = &v68 - v35;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v38 = *(TupleTypeMetadata2 - 8);
  v39 = *(v38 + 64);
  v40 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v42 = &v68 - v41;
  v43 = &v68 + *(v40 + 48) - v41;
  v81 = v30;
  v44 = *(v30 + 16);
  v44(&v68 - v41, v84, State);
  v44(v43, v85, State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v44(v34, v42, State);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v47 = v77;
        v46 = v78;
        v48 = v75;
        (*(v77 + 32))(v75, v43, v78);
        v49 = sub_20C45FCA0();
        v50 = *(v47 + 8);
        v50(v48, v46);
        v50(v34, v46);
        v38 = v81;
        goto LABEL_11;
      }

      (*(v77 + 8))(v34, v78);
    }

    else if (swift_getEnumCaseMultiPayload() == 2)
    {
      v49 = 1;
      v38 = v81;
      goto LABEL_11;
    }

LABEL_10:
    v49 = 0;
    State = TupleTypeMetadata2;
    goto LABEL_11;
  }

  v44(v36, v42, State);
  v51 = v83;
  v52 = v80;
  v53 = *(swift_getTupleTypeMetadata2() + 48);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v79 + 8))(&v36[v53], v52);
    (*(v82 + 8))(v36, v51);
    goto LABEL_10;
  }

  (*(v82 + 32))(v28, v43, v51);
  v55 = v79;
  v56 = *(v79 + 32);
  v56(v76, &v36[v53], v52);
  v57 = &v43[v53];
  v58 = v69;
  v56(v69, v57, v52);
  v59 = *(v71 + 8);
  v60 = *(v70 + 8);
  v85 = v28;
  v62 = v82;
  v61 = v83;
  v63 = sub_20C4609A0();
  v64 = *(v62 + 8);
  v64(v36, v61);
  if (v63)
  {
    v65 = v76;
    v49 = sub_20C45FC70();
    v66 = *(v55 + 8);
    v66(v58, v52);
    v66(v65, v52);
    v64(v85, v83);
  }

  else
  {
    v67 = *(v55 + 8);
    v67(v58, v52);
    v67(v76, v52);
    v64(v85, v61);
    v49 = 0;
  }

  v38 = v81;
LABEL_11:
  (*(v38 + 8))(v42, State);
  return v49 & 1;
}

uint64_t AssetLoadState.hash(into:)(uint64_t a1, void *a2)
{
  v35 = a1;
  v4 = sub_20C45FCC0();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C45FC90();
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2[2];
  v13 = a2[3];
  v14 = a2[9];
  v15 = sub_20C460980();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v32 - v19;
  v21 = *(*(a2 - 1) + 64);
  MEMORY[0x28223BE20](v18);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v23, v2, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v26 = v33;
      (*(v33 + 32))(v7, v23, v4);
      MEMORY[0x20F2FAEA0](1);
      sub_20C40F66C(&qword_28110BE90, MEMORY[0x277CC95F0]);
      sub_20C460460();
      return (*(v26 + 8))(v7, v4);
    }

    else
    {
      return MEMORY[0x20F2FAEA0](2);
    }
  }

  else
  {
    v28 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v16 + 32))(v20, v23, v15);
    v29 = v34;
    (*(v34 + 32))(v11, &v23[v28], v8);
    MEMORY[0x20F2FAEA0](0);
    v30 = a2[6];
    v31 = a2[10];
    sub_20C460990();
    sub_20C40F66C(qword_27C7BACD0, MEMORY[0x277CC9578]);
    sub_20C460460();
    (*(v29 + 8))(v11, v8);
    return (*(v16 + 8))(v20, v15);
  }
}

uint64_t sub_20C40F66C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AssetLoadState.hashValue.getter(void *a1)
{
  sub_20C460930();
  AssetLoadState.hash(into:)(v3, a1);
  return sub_20C460970();
}

uint64_t sub_20C40F704(uint64_t a1, void *a2)
{
  sub_20C460930();
  AssetLoadState.hash(into:)(v4, a2);
  return sub_20C460970();
}

uint64_t sub_20C40F7A8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  if (*(*(*(a3 + 24) - 8) + 64) <= *(*(*(a3 + 16) - 8) + 64))
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v5 = *(*(*(a3 + 24) - 8) + 64);
  }

  v6 = *(sub_20C45FC90() - 8);
  v7 = ((v5 + *(v6 + 80) + 1) & ~*(v6 + 80)) + *(v6 + 64);
  v8 = *(*(sub_20C45FCC0() - 8) + 64);
  if (v8 <= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_29;
  }

  v10 = v9 + 1;
  v11 = 8 * (v9 + 1);
  if ((v9 + 1) <= 3)
  {
    v14 = ((a2 + ~(-1 << v11) - 253) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v14 < 2)
    {
LABEL_29:
      v16 = *(a1 + v9);
      if (v16 >= 3)
      {
        return (v16 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_29;
  }

LABEL_18:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return (v10 | v15) + 254;
}

void sub_20C40F978(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  if (*(*(*(a4 + 24) - 8) + 64) <= *(*(*(a4 + 16) - 8) + 64))
  {
    v7 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v7 = *(*(*(a4 + 24) - 8) + 64);
  }

  v8 = *(sub_20C45FC90() - 8);
  v9 = ((v7 + *(v8 + 80) + 1) & ~*(v8 + 80)) + *(v8 + 64);
  v10 = *(*(sub_20C45FCC0() - 8) + 64);
  if (v10 <= v9)
  {
    v10 = v9;
  }

  v11 = v10 + 1;
  if (a3 < 0xFE)
  {
    v12 = 0;
  }

  else if (v11 <= 3)
  {
    v15 = ((a3 + ~(-1 << (8 * v11)) - 253) >> (8 * v11)) + 1;
    if (HIWORD(v15))
    {
      v12 = 4;
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
        v12 = v16;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  if (a2 > 0xFD)
  {
    v13 = a2 - 254;
    if (v11 >= 4)
    {
      bzero(a1, v10 + 1);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    v14 = (v13 >> (8 * v11)) + 1;
    if (v10 != -1)
    {
      v17 = v13 & ~(-1 << (8 * v11));
      bzero(a1, v11);
      if (v11 != 3)
      {
        if (v11 == 2)
        {
          *a1 = v17;
          if (v12 > 1)
          {
LABEL_42:
            if (v12 == 2)
            {
              *&a1[v11] = v14;
            }

            else
            {
              *&a1[v11] = v14;
            }

            return;
          }
        }

        else
        {
          *a1 = v13;
          if (v12 > 1)
          {
            goto LABEL_42;
          }
        }

LABEL_39:
        if (v12)
        {
          a1[v11] = v14;
        }

        return;
      }

      *a1 = v17;
      a1[2] = BYTE2(v17);
    }

    if (v12 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (v12 <= 1)
  {
    if (v12)
    {
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

LABEL_28:
      a1[v10] = -a2;
      return;
    }

LABEL_27:
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v12 == 2)
  {
    *&a1[v11] = 0;
    goto LABEL_27;
  }

  *&a1[v11] = 0;
  if (a2)
  {
    goto LABEL_28;
  }
}

uint64_t getEnumTagSinglePayload for MonogramAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MonogramAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for DynamicImageAssetAction.ViewSizeChangedCodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DynamicImageAssetAction.ViewSizeChangedCodingKeys(_WORD *result, int a2, int a3)
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

unint64_t DynamicPredicateBooleanValue.makePredicateExpression<A>(using:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_20C45FE70();
  *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAED8, &qword_20C461BC0);
  result = sub_20C40FF88();
  *(a1 + 32) = result;
  *a1 = v2 & 1;
  return result;
}

unint64_t sub_20C40FF88()
{
  result = qword_27C7BAEE0;
  if (!qword_27C7BAEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BAED8, &qword_20C461BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BAEE0);
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

uint64_t ImageAssetState.loadStates.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t ImageAssetState.init(imageAsset:loadStates:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for ImageAssetState();
  result = sub_20C410138(a1, a3 + *(v6 + 20));
  *a3 = a2;
  return result;
}

uint64_t type metadata accessor for ImageAssetState()
{
  result = qword_28110BBC0;
  if (!qword_28110BBC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20C410138(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageAsset();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C41019C()
{
  if (*v0)
  {
    result = 0x7373416567616D69;
  }

  else
  {
    result = 0x7461745364616F6CLL;
  }

  *v0;
  return result;
}

uint64_t sub_20C4101DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7461745364616F6CLL && a2 == 0xEA00000000007365;
  if (v6 || (sub_20C4608D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7373416567616D69 && a2 == 0xEA00000000007465)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C4608D0();

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

uint64_t sub_20C4102BC(uint64_t a1)
{
  v2 = sub_20C410518();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C4102F8(uint64_t a1)
{
  v2 = sub_20C410518();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ImageAssetState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAEE8, &qword_20C461BD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C410518();
  sub_20C4609C0();
  v14 = *v3;
  v13[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAEF8, &qword_20C461BE0);
  sub_20C41056C();
  sub_20C4608B0();
  if (!v2)
  {
    v11 = *(type metadata accessor for ImageAssetState() + 20);
    v13[6] = 1;
    type metadata accessor for ImageAsset();
    sub_20C412B1C(&qword_28110BC98, type metadata accessor for ImageAsset);
    sub_20C4608B0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_20C410518()
{
  result = qword_27C7BAEF0;
  if (!qword_27C7BAEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BAEF0);
  }

  return result;
}

unint64_t sub_20C41056C()
{
  result = qword_27C7BAF00;
  if (!qword_27C7BAF00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BAEF8, &qword_20C461BE0);
    sub_20C40B974();
    sub_20C4109DC(&qword_27C7BAF08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BAF00);
  }

  return result;
}

uint64_t ImageAssetState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = type metadata accessor for ImageAsset();
  v4 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF18, &qword_20C461BE8);
  v24 = *(v26 - 8);
  v7 = *(v24 + 64);
  MEMORY[0x28223BE20](v26);
  v9 = v21 - v8;
  v10 = type metadata accessor for ImageAssetState();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C410518();
  sub_20C4609B0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = a1;
  v15 = v13;
  v16 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAEF8, &qword_20C461BE0);
  v28 = 0;
  sub_20C410934();
  v17 = v26;
  sub_20C460840();
  v21[0] = v15;
  v21[1] = v29;
  *v15 = v29;
  v27 = 1;
  sub_20C412B1C(&qword_27C7BAF30, type metadata accessor for ImageAsset);
  sub_20C460840();
  (*(v16 + 8))(v9, v17);
  v18 = *(v10 + 20);
  v19 = v21[0];
  sub_20C410138(v6, v21[0] + v18);
  sub_20C412A00(v19, v23, type metadata accessor for ImageAssetState);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return sub_20C412A68(v19, type metadata accessor for ImageAssetState);
}

unint64_t sub_20C410934()
{
  result = qword_27C7BAF20;
  if (!qword_27C7BAF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BAEF8, &qword_20C461BE0);
    sub_20C40BDE4();
    sub_20C4109DC(&qword_27C7BAF28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BAF20);
  }

  return result;
}

uint64_t sub_20C4109DC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BAF10, &qword_20C4640D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL static ImageAssetState.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_20C410AC4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for ImageAssetState() + 20);

  return _s12FitnessAsset05ImageB0V2eeoiySbAC_ACtFZ_0(a1 + v4, a2 + v4);
}

uint64_t sub_20C410AC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
  v65 = *(v4 - 8);
  v5 = *(v65 + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v64 = &v56 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF68, &qword_20C461DE0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = (&v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v12);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v61 = (&v56 - v16);
  v17 = 0;
  v59 = a1;
  v18 = *(a1 + 64);
  v58 = a1 + 64;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v22 = &unk_27C7BAF70;
  v57 = (v19 + 63) >> 6;
  v23 = &unk_20C461DE8;
  v60 = v8;
  while (v21)
  {
    v63 = (v21 - 1) & v21;
    v24 = __clz(__rbit64(v21)) | (v17 << 6);
    v25 = v61;
LABEL_16:
    v30 = *(v59 + 56);
    v31 = (*(v59 + 48) + 80 * v24);
    v67 = *v31;
    v32 = v31[4];
    v34 = v31[1];
    v33 = v31[2];
    v70 = v31[3];
    v71 = v32;
    v68 = v34;
    v69 = v33;
    v35 = v64;
    sub_20C409B04(v30 + *(v65 + 72) * v24, v64, &qword_27C7BAF10, &qword_20C4640D0);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
    v37 = *(v36 + 48);
    v38 = v71;
    v14[3] = v70;
    v14[4] = v38;
    v39 = v69;
    v14[1] = v68;
    v14[2] = v39;
    *v14 = v67;
    sub_20C409BD0(v35, v14 + v37, &qword_27C7BAF10, &qword_20C4640D0);
    (*(*(v36 - 8) + 56))(v14, 0, 1, v36);
    sub_20C40C520(&v67, v66);
LABEL_17:
    sub_20C409BD0(v14, v25, &qword_27C7BAF68, &qword_20C461DE0);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
    v41 = (*(*(v40 - 8) + 48))(v25, 1, v40);
    v62 = v41 == 1;
    if (v41 == 1)
    {
      return v62;
    }

    v42 = v14;
    v43 = v23;
    v44 = v22;
    v45 = *(v40 + 48);
    v46 = v25[3];
    v72[2] = v25[2];
    v72[3] = v46;
    v72[4] = v25[4];
    v47 = v25[1];
    v72[0] = *v25;
    v72[1] = v47;
    v48 = v60;
    sub_20C409BD0(v25 + v45, v60, &qword_27C7BAF10, &qword_20C4640D0);
    v49 = sub_20C457E7C(v72);
    v51 = v50;
    sub_20C40C57C(v72);
    if ((v51 & 1) == 0)
    {
      sub_20C40B440(v48, &qword_27C7BAF10, &qword_20C4640D0);
      return 0;
    }

    v52 = *(a2 + 56) + *(v65 + 72) * v49;
    v53 = v64;
    sub_20C409B04(v52, v64, &qword_27C7BAF10, &qword_20C4640D0);
    v54 = sub_20C452F50(v53, v48);
    sub_20C40B440(v53, &qword_27C7BAF10, &qword_20C4640D0);
    result = sub_20C40B440(v48, &qword_27C7BAF10, &qword_20C4640D0);
    v22 = v44;
    v23 = v43;
    v14 = v42;
    v21 = v63;
    if ((v54 & 1) == 0)
    {
      return v62;
    }
  }

  if (v57 <= v17 + 1)
  {
    v26 = v17 + 1;
  }

  else
  {
    v26 = v57;
  }

  v27 = v26 - 1;
  v25 = v61;
  while (1)
  {
    v28 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v28 >= v57)
    {
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
      (*(*(v55 - 8) + 56))(v14, 1, 1, v55);
      v63 = 0;
      v17 = v27;
      goto LABEL_17;
    }

    v29 = *(v58 + 8 * v28);
    ++v17;
    if (v29)
    {
      v63 = (v29 - 1) & v29;
      v24 = __clz(__rbit64(v29)) | (v28 << 6);
      v17 = v28;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20C411008(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageAsset();
  v52 = *(v4 - 8);
  v5 = *(v52 + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v53 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v51 = &v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF50, &unk_20C464870);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  result = MEMORY[0x28223BE20](v11);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v54 = &v48 - v13;
  v49 = a1;
  v50 = v14;
  v15 = 0;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  while (v21)
  {
    v55 = (v21 - 1) & v21;
    v23 = __clz(__rbit64(v21)) | (v15 << 6);
    v24 = v50;
LABEL_16:
    v30 = v49;
    v31 = v51;
    sub_20C412A00(*(v49 + 48) + *(v52 + 72) * v23, v51, type metadata accessor for ImageAsset);
    v32 = *(*(v30 + 56) + 8 * v23);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF58, &qword_20C461DD8);
    v34 = *(v33 + 48);
    sub_20C410138(v31, v24);
    *(v24 + v34) = v32;
    (*(*(v33 - 8) + 56))(v24, 0, 1, v33);

    v27 = v54;
LABEL_17:
    sub_20C409BD0(v24, v27, &qword_27C7BAF50, &unk_20C464870);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF58, &qword_20C461DD8);
    v36 = (*(*(v35 - 8) + 48))(v27, 1, v35);
    v37 = v36 == 1;
    if (v36 == 1)
    {
      return v37;
    }

    v38 = *(v35 + 48);
    v39 = v53;
    sub_20C410138(v27, v53);
    v40 = *(v27 + v38);
    v41 = sub_20C457F00(v39);
    v43 = v42;
    sub_20C412A68(v39, type metadata accessor for ImageAsset);
    if ((v43 & 1) == 0)
    {

      return 0;
    }

    v44 = *(*(a2 + 56) + 8 * v41);

    v46 = sub_20C410AC4(v45, v40);

    v21 = v55;
    if ((v46 & 1) == 0)
    {
      return v37;
    }
  }

  if (v22 <= v15 + 1)
  {
    v25 = v15 + 1;
  }

  else
  {
    v25 = v22;
  }

  v26 = v25 - 1;
  v24 = v50;
  v27 = v54;
  while (1)
  {
    v28 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v28 >= v22)
    {
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF58, &qword_20C461DD8);
      (*(*(v47 - 8) + 56))(v24, 1, 1, v47);
      v55 = 0;
      v15 = v26;
      goto LABEL_17;
    }

    v29 = *(v17 + 8 * v28);
    ++v15;
    if (v29)
    {
      v55 = (v29 - 1) & v29;
      v23 = __clz(__rbit64(v29)) | (v28 << 6);
      v15 = v28;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t ImageAssetState.hash(into:)(__int128 *a1)
{
  v3 = sub_20C45FC30();
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v29 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC18, &unk_20C464A00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v28 - v8;
  v10 = sub_20C45FD00();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC10, &qword_20C462070);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v28 - v17;
  sub_20C411978(a1, *v1);
  v19 = v1 + *(type metadata accessor for ImageAssetState() + 20);
  sub_20C409B04(v19, v18, &qword_27C7BAC10, &qword_20C462070);
  if ((*(v11 + 48))(v18, 1, v10) == 1)
  {
    sub_20C460950();
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    sub_20C460950();
    sub_20C412B1C(&qword_28110B4D8, MEMORY[0x277D09D68]);
    sub_20C460460();
    (*(v11 + 8))(v14, v10);
  }

  v20 = type metadata accessor for ImageAsset();
  v21 = (v19 + v20[5]);
  v22 = *v21;
  v23 = v21[1];
  sub_20C4604F0();
  *(v19 + v20[6]);
  sub_20C4604F0();

  sub_20C409B04(v19 + v20[7], v9, &qword_27C7BAC18, &unk_20C464A00);
  v25 = v30;
  v24 = v31;
  if ((*(v30 + 48))(v9, 1, v31) == 1)
  {
    return sub_20C460950();
  }

  v27 = v29;
  (*(v25 + 32))(v29, v9, v24);
  sub_20C460950();
  sub_20C412B1C(&qword_28110BEB0, MEMORY[0x277CC9260]);
  sub_20C460460();
  return (*(v25 + 8))(v27, v24);
}

uint64_t ImageAssetState.hashValue.getter()
{
  sub_20C460930();
  ImageAssetState.hash(into:)(v1);
  return sub_20C460970();
}

uint64_t sub_20C411888()
{
  sub_20C460930();
  ImageAssetState.hash(into:)(v1);
  return sub_20C460970();
}

uint64_t sub_20C4118CC()
{
  sub_20C460930();
  ImageAssetState.hash(into:)(v1);
  return sub_20C460970();
}

BOOL sub_20C411908(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_20C410AC4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);

  return static ImageAsset.== infix(_:_:)(a1 + v6, a2 + v6);
}

uint64_t sub_20C411978(__int128 *a1, uint64_t a2)
{
  v89 = a1;
  v81 = sub_20C45FCC0();
  v3 = *(v81 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v81);
  v80 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_20C45FC90();
  v6 = *(v79 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v79);
  v78 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF60, &unk_20C462050);
  v9 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77);
  v76 = &v71 - v10;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
  v85 = *(v88 - 8);
  v11 = *(v85 + 64);
  v12 = MEMORY[0x28223BE20](v88);
  v90 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v92 = &v71 - v15;
  MEMORY[0x28223BE20](v14);
  v84 = &v71 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF68, &qword_20C461DE0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = (&v71 - v22);
  v24 = a2 + 64;
  v25 = 1 << *(a2 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(a2 + 64);
  v82 = (v25 + 63) >> 6;
  v75 = (v3 + 32);
  v74 = (v3 + 8);
  v73 = (v6 + 32);
  v72 = (v6 + 8);
  v86 = a2;

  v29 = 0;
  v30 = 0;
  v83 = v21;
  v87 = v24;
  while (1)
  {
    v91 = v29;
    if (!v27)
    {
      break;
    }

    v37 = v30;
LABEL_16:
    v40 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v41 = v40 | (v37 << 6);
    v42 = *(v86 + 56);
    v43 = (*(v86 + 48) + 80 * v41);
    v95 = *v43;
    v44 = v43[4];
    v46 = v43[1];
    v45 = v43[2];
    v98 = v43[3];
    v99 = v44;
    v96 = v46;
    v97 = v45;
    v47 = v84;
    sub_20C409B04(v42 + *(v85 + 72) * v41, v84, &qword_27C7BAF10, &qword_20C4640D0);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF70, &qword_20C461DE8);
    v49 = *(v48 + 48);
    v50 = v99;
    v51 = v83;
    *(v83 + 3) = v98;
    *(v51 + 4) = v50;
    v52 = v97;
    *(v51 + 1) = v96;
    *(v51 + 2) = v52;
    *v51 = v95;
    v21 = v51;
    sub_20C409BD0(v47, &v51[v49], &qword_27C7BAF10, &qword_20C4640D0);
    (*(*(v48 - 8) + 56))(v21, 0, 1, v48);
    sub_20C40C520(&v95, v93);
LABEL_17:
    sub_20C409BD0(v21, v23, &qword_27C7BAF68, &qword_20C461DE0);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF70, &qword_20C461DE8);
    if ((*(*(v53 - 8) + 48))(v23, 1, v53) == 1)
    {

      return MEMORY[0x20F2FAEA0](v91);
    }

    v54 = *(v53 + 48);
    v55 = v23[1];
    v95 = *v23;
    v96 = v55;
    v56 = v23[3];
    v97 = v23[2];
    v98 = v56;
    v99 = v23[4];
    v57 = *&v95;
    sub_20C409BD0(v23 + v54, v92, &qword_27C7BAF10, &qword_20C4640D0);
    v58 = v89[3];
    v93[2] = v89[2];
    v93[3] = v58;
    v94 = *(v89 + 8);
    v59 = *v89;
    v93[1] = v89[1];
    v93[0] = v59;
    if (v57 == 0.0)
    {
      v60 = 0.0;
    }

    else
    {
      v60 = v57;
    }

    v61 = *(&v96 + 1);
    MEMORY[0x20F2FAEC0](*&v60);
    sub_20C4604F0();
    MEMORY[0x20F2FAEA0](*(v61 + 16));
    v62 = *(v61 + 16);
    if (v62)
    {
      v63 = (v61 + 40);
      do
      {
        v64 = *(v63 - 1);
        v65 = *v63;

        sub_20C4604F0();

        v63 += 2;
        --v62;
      }

      while (v62);
    }

    v66 = v99;
    sub_20C4604F0();
    sub_20C4604F0();
    MEMORY[0x20F2FAEA0](v66);
    MEMORY[0x20F2FAEA0](*(&v66 + 1));
    sub_20C40C57C(&v95);
    sub_20C409B04(v92, v90, &qword_27C7BAF10, &qword_20C4640D0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v68 = v80;
        v69 = v81;
        (*v75)(v80, v90, v81);
        MEMORY[0x20F2FAEA0](1);
        sub_20C412B1C(&qword_28110BE90, MEMORY[0x277CC95F0]);
        sub_20C460460();
        (*v74)(v68, v69);
      }

      else
      {
        MEMORY[0x20F2FAEA0](2);
      }
    }

    else
    {
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF78, &unk_20C462060) + 48);
      v32 = v90;
      v33 = v76;
      sub_20C409BD0(v90, v76, &qword_27C7BAF60, &unk_20C462050);
      v34 = v32 + v31;
      v35 = v78;
      v36 = v79;
      (*v73)(v78, v34, v79);
      MEMORY[0x20F2FAEA0](0);
      sub_20C412B1C(&qword_28110BC90, type metadata accessor for ImageAsset);
      sub_20C412AC8();
      sub_20C460990();
      sub_20C412B1C(qword_27C7BACD0, MEMORY[0x277CC9578]);
      sub_20C460460();
      (*v72)(v35, v36);
      sub_20C40B440(v33, &qword_27C7BAF60, &unk_20C462050);
    }

    v24 = v87;
    sub_20C40B440(v92, &qword_27C7BAF10, &qword_20C4640D0);
    result = sub_20C460970();
    v29 = result ^ v91;
  }

  if (v82 <= v30 + 1)
  {
    v38 = v30 + 1;
  }

  else
  {
    v38 = v82;
  }

  v39 = v38 - 1;
  while (1)
  {
    v37 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v37 >= v82)
    {
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF70, &qword_20C461DE8);
      (*(*(v70 - 8) + 56))(v21, 1, 1, v70);
      v27 = 0;
      v30 = v39;
      goto LABEL_17;
    }

    v27 = *(v24 + 8 * v37);
    ++v30;
    if (v27)
    {
      v30 = v37;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20C412334(uint64_t a1, uint64_t a2)
{
  v44 = a1;
  v3 = type metadata accessor for ImageAsset();
  v41 = *(v3 - 8);
  v4 = *(v41 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v46 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF50, &unk_20C464870);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v42 = a2;
  v43 = &v40 - v11;
  v12 = a2 + 64;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 64);
  v16 = (v13 + 63) >> 6;

  v18 = 0;
  v45 = v10;
  v47 = 0;
  if (v15)
  {
    while (1)
    {
      v19 = v18;
LABEL_12:
      v22 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v23 = v22 | (v19 << 6);
      v24 = v42;
      v25 = v46;
      sub_20C412A00(*(v42 + 48) + *(v41 + 72) * v23, v46, type metadata accessor for ImageAsset);
      v26 = *(*(v24 + 56) + 8 * v23);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF58, &qword_20C461DD8);
      v28 = *(v27 + 48);
      v29 = v25;
      v30 = v45;
      sub_20C410138(v29, v45);
      *(v30 + v28) = v26;
      (*(*(v27 - 8) + 56))(v30, 0, 1, v27);

      v21 = v19;
      v31 = v30;
LABEL_13:
      v32 = v43;
      sub_20C409BD0(v31, v43, &qword_27C7BAF50, &unk_20C464870);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF58, &qword_20C461DD8);
      if ((*(*(v33 - 8) + 48))(v32, 1, v33) == 1)
      {
        break;
      }

      v34 = *(v33 + 48);
      v35 = v46;
      sub_20C410138(v32, v46);
      v36 = *(v32 + v34);
      v37 = *(v44 + 48);
      v48[2] = *(v44 + 32);
      v48[3] = v37;
      v49 = *(v44 + 64);
      v38 = *(v44 + 16);
      v48[0] = *v44;
      v48[1] = v38;
      ImageAsset.hash(into:)();
      sub_20C412A68(v35, type metadata accessor for ImageAsset);
      sub_20C411978(v48, v36);

      result = sub_20C460970();
      v18 = v21;
      v47 ^= result;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x20F2FAEA0](v47);
  }

  else
  {
LABEL_5:
    if (v16 <= v18 + 1)
    {
      v20 = v18 + 1;
    }

    else
    {
      v20 = v16;
    }

    v21 = v20 - 1;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v16)
      {
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF58, &qword_20C461DD8);
        v31 = v45;
        (*(*(v39 - 8) + 56))(v45, 1, 1, v39);
        v15 = 0;
        goto LABEL_13;
      }

      v15 = *(v12 + 8 * v19);
      ++v18;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_20C412798()
{
  sub_20C41281C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ImageAsset();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20C41281C()
{
  if (!qword_28110B400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BAF10, &qword_20C4640D0);
    sub_20C412894();
    v0 = sub_20C460450();
    if (!v1)
    {
      atomic_store(v0, &qword_28110B400);
    }
  }
}

unint64_t sub_20C412894()
{
  result = qword_28110B870;
  if (!qword_28110B870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B870);
  }

  return result;
}

unint64_t sub_20C4128FC()
{
  result = qword_27C7BAF38;
  if (!qword_27C7BAF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BAF38);
  }

  return result;
}

unint64_t sub_20C412954()
{
  result = qword_27C7BAF40;
  if (!qword_27C7BAF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BAF40);
  }

  return result;
}

unint64_t sub_20C4129AC()
{
  result = qword_27C7BAF48;
  if (!qword_27C7BAF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BAF48);
  }

  return result;
}

uint64_t sub_20C412A00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20C412A68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20C412AC8()
{
  result = qword_27C7BAF80;
  if (!qword_27C7BAF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BAF80);
  }

  return result;
}

uint64_t sub_20C412B1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20C412B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_20C414268;

  return MonogramFetching.fetchAccountMonogram(_:for:)(a1, a2, a3, a4, a5);
}

uint64_t sub_20C412C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = sub_20C45FC10();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C412CF0, 0, 0);
}

uint64_t sub_20C412CF0()
{
  v1 = [*(v0 + 48) aa_altDSID];
  if (v1)
  {
    v2 = *(v0 + 48);
    v3 = v1;
    v4 = sub_20C4604D0();
    v6 = v5;

    *(v0 + 80) = v4;
    *(v0 + 88) = v6;
    v7 = [v2 userFullName];
    if (v7)
    {
      v8 = *(v0 + 72);
      v9 = v7;
      sub_20C4604D0();

      sub_20C45FC20();
      v15 = swift_task_alloc();
      *(v0 + 96) = v15;
      *v15 = v0;
      v15[1] = sub_20C412ED0;
      v17 = *(v0 + 40);
      v16 = *(v0 + 48);

      return MonogramFetcher.fetchAccountProfileImage(_:for:)(v17, v16);
    }

    sub_20C4139F0();
    swift_allocError();
    *v11 = 1;
  }

  else
  {
    sub_20C4139F0();
    swift_allocError();
    *v10 = 0;
  }

  swift_willThrow();
  v12 = *(v0 + 72);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_20C412ED0(uint64_t a1)
{
  v3 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = a1;

  if (v1)
  {

    v4 = sub_20C412FEC;
  }

  else
  {
    v4 = sub_20C41309C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20C412FEC()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];
  v6 = v0[4];
  v7 = type metadata accessor for Monogram();
  (*(v4 + 32))(&v6[*(v7 + 20)], v3, v5);
  *v6 = v2;
  *(v6 + 1) = v1;

  v8 = v0[1];

  return v8();
}

uint64_t sub_20C41309C()
{
  if (qword_27C7BAC00 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[11];
  v3 = qword_27C7C40A0;
  v0[2] = v0[10];
  v0[3] = v2;
  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF88, &qword_20C461DF8));

  v5 = sub_20C45FE40();
  [v3 setObject:v1 forKey:v5];

  v7 = v0[10];
  v6 = v0[11];
  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[7];
  v11 = v0[4];
  v12 = type metadata accessor for Monogram();
  (*(v9 + 32))(&v11[*(v12 + 20)], v8, v10);
  *v11 = v7;
  *(v11 + 1) = v6;

  v13 = v0[1];

  return v13();
}

uint64_t MonogramFetching.fetchAccountMonogram(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[8] = a5;
  v6[9] = v5;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v7 = sub_20C45FC10();
  v6[10] = v7;
  v8 = *(v7 - 8);
  v6[11] = v8;
  v9 = *(v8 + 64) + 15;
  v6[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C4132B4, 0, 0);
}

uint64_t sub_20C4132B4()
{
  v1 = [*(v0 + 48) aa_altDSID];
  if (v1)
  {
    v19 = *(v0 + 64);
    v2 = v1;
    v3 = sub_20C4604D0();
    v5 = v4;

    *(v0 + 104) = v3;
    *(v0 + 112) = v5;
    v6 = *(v19 + 24);
    v18 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    *(v0 + 120) = v8;
    *v8 = v0;
    v8[1] = sub_20C413470;
    v9 = *(v0 + 96);
    v10 = *(v0 + 64);
    v11 = *(v0 + 72);
    v12 = *(v0 + 48);
    v13 = *(v0 + 56);

    return v18(v9, v12, v13, v10);
  }

  else
  {
    sub_20C4139F0();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();
    v16 = *(v0 + 96);

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_20C413470()
{
  v2 = *(*v1 + 120);
  v3 = *v1;
  v3[16] = v0;

  if (v0)
  {
    v4 = v3[14];

    return MEMORY[0x2822009F8](sub_20C4138DC, 0, 0);
  }

  else
  {
    v13 = (v3[8] + 16);
    v14 = (*v13 + **v13);
    v5 = (*v13)[1];
    v6 = swift_task_alloc();
    v3[17] = v6;
    *v6 = v3;
    v6[1] = sub_20C413670;
    v7 = v3[8];
    v8 = v3[9];
    v9 = v3[6];
    v10 = v3[7];
    v11 = v3[5];

    return v14(v11, v9, v10, v7);
  }
}

uint64_t sub_20C413670(uint64_t a1)
{
  v3 = *(*v2 + 136);
  v6 = *v2;
  *(*v2 + 144) = a1;

  if (v1)
  {

    v4 = sub_20C413940;
  }

  else
  {
    v4 = sub_20C41378C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20C41378C()
{
  if (qword_27C7BAC00 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[14];
  v3 = qword_27C7C40A0;
  v0[2] = v0[13];
  v0[3] = v2;
  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF88, &qword_20C461DF8));

  v5 = sub_20C45FE40();
  [v3 setObject:v1 forKey:v5];

  v7 = v0[13];
  v6 = v0[14];
  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[10];
  v11 = v0[4];
  v12 = type metadata accessor for Monogram();
  (*(v9 + 32))(&v11[*(v12 + 20)], v8, v10);
  *v11 = v7;
  *(v11 + 1) = v6;

  v13 = v0[1];

  return v13();
}

uint64_t sub_20C4138DC()
{
  v1 = v0[16];
  v2 = v0[12];

  v3 = v0[1];

  return v3();
}

uint64_t sub_20C413940()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  v6 = v0[4];
  v7 = type metadata accessor for Monogram();
  (*(v4 + 32))(&v6[*(v7 + 20)], v3, v5);
  *v6 = v2;
  *(v6 + 1) = v1;

  v8 = v0[1];

  return v8();
}

unint64_t sub_20C4139F0()
{
  result = qword_28110B7B8;
  if (!qword_28110B7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B7B8);
  }

  return result;
}

uint64_t sub_20C413A44(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20C414268;

  return MonogramFetching.fetchAccountProfileNameComponents(for:)(a1, a2);
}

uint64_t MonogramFetching.fetchAccountProfileNameComponents(for:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_20C413B04, 0, 0);
}

uint64_t sub_20C413B04()
{
  v1 = [*(v0 + 24) userFullName];
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = v1;
    sub_20C4604D0();

    sub_20C45FC20();
  }

  else
  {
    sub_20C4139F0();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t dispatch thunk of MonogramFetching.fetchAccountMonogram(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_20C413D30;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_20C413D30()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t dispatch thunk of MonogramFetching.fetchAccountProfileImage(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_20C413F54;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_20C413F54(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of MonogramFetching.fetchAccountProfileNameComponents(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_20C414268;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_20C414184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_20C413D30;

  return sub_20C412C2C(a1, a2, a3);
}

uint64_t sub_20C414248(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_20C413B04, 0, 0);
}

uint64_t ArtworkAssetView.init(store:placeholderImage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a4 = sub_20C4142D4;
  *(a4 + 8) = result;
  *(a4 + 16) = 0;
  *(a4 + 24) = a3;
  return result;
}

uint64_t sub_20C4142D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_20C4142FC(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ImageAsset();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC10, &qword_20C462070);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v27 - v9;
  v11 = sub_20C4603C0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v1[3];
  if (v16)
  {
    v17 = v16;
    sub_20C4603A0();
    (*(v12 + 104))(v15, *MEMORY[0x277CE0FE0], v11);
    v18 = sub_20C4603D0();

    (*(v12 + 8))(v15, v11);
    v27 = v18;
    v28 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFE0, &unk_20C466C00);
    sub_20C41703C();
    sub_20C460220();
  }

  else
  {
    v19 = *(v1 + 16);
    v22 = v1;
    v20 = *v1;
    v21 = v22[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB010, &qword_20C461FF0);
    sub_20C417418(&qword_28110B418, &qword_27C7BB010, &qword_20C461FF0);
    sub_20C460020();
    swift_getKeyPath();
    sub_20C460430();

    sub_20C409B04(v6, v10, &qword_27C7BAC10, &qword_20C462070);
    sub_20C417624(v6, type metadata accessor for ImageAsset);
    v23 = sub_20C45FD00();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v10, 1, v23) == 1)
    {
      sub_20C40B440(v10, &qword_27C7BAC10, &qword_20C462070);
      v25 = [objc_opt_self() tertiarySystemFillColor];
    }

    else
    {
      sub_20C45FCF0();
      (*(v24 + 8))(v10, v23);
    }

    v27 = sub_20C460390();
    v28 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFE0, &unk_20C466C00);
    sub_20C41703C();
    sub_20C460220();
  }

  v26 = v30;
  *a1 = v29;
  *(a1 + 8) = v26;
}

id sub_20C414740@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  v8 = v1[3];
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  *(v6 + 32) = v5;
  *(v6 + 40) = v8;
  *a1 = sub_20C417684;
  a1[1] = v6;
  sub_20C414B3C();

  return v8;
}

id ArtworkAssetView.body.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  v8 = v1[3];
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  *(v6 + 32) = v5;
  *(v6 + 40) = v8;
  *a1 = sub_20C414B38;
  a1[1] = v6;
  sub_20C414B3C();

  return v8;
}

uint64_t sub_20C414888@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, void *a4@<X4>, uint64_t a5@<X8>)
{
  v32 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF98, &qword_20C461F70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - v11;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFA0, &qword_20C461F78);
  v13 = *(v31 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v31);
  v16 = &v30 - v15;
  sub_20C460040();
  sub_20C4606A0();
  v17 = a3 & 1;
  sub_20C414C40(a1, a2, v17, a4, v12, v18, v19);
  sub_20C460040();
  v33 = v20;
  v34 = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  *(v22 + 32) = v17;
  *(v22 + 40) = a4;
  sub_20C414B3C();
  type metadata accessor for CGSize();
  v24 = v23;
  v25 = sub_20C416DC0(&qword_28110B448, &qword_27C7BAF98, &qword_20C461F70, sub_20C416C98);
  v26 = sub_20C4173C0();
  v27 = a4;
  sub_20C460370();

  sub_20C406FE8(v12);
  sub_20C460380();
  v33 = v9;
  v34 = v24;
  v35 = v25;
  v36 = v26;
  swift_getOpaqueTypeConformance2();
  v28 = v31;
  sub_20C460320();

  return (*(v13 + 8))(v16, v28);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_20C414B78(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_20C414BD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_20C414C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v66 = a4;
  v70 = a5;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFB8, &unk_20C461F90);
  v12 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v63 = &v58 - v13;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB018, &qword_20C461FF8);
  v65 = *(v69 - 8);
  v14 = *(v65 + 64);
  MEMORY[0x28223BE20](v69);
  v64 = &v58 - v15;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB020, &qword_20C462000);
  v16 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v18 = &v58 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB010, &qword_20C461FF0);
  sub_20C417418(&qword_28110B418, &qword_27C7BB010, &qword_20C461FF0);
  v62 = a3;
  v20 = a3 & 1;
  v21 = a1;
  v61 = v19;
  sub_20C460020();
  swift_getKeyPath();
  sub_20C460420();

  v85[2] = v78[1];
  v85[3] = v78[2];
  v85[4] = v78[3];
  v85[0] = v77;
  v85[1] = v78[0];
  if (*&v78[0])
  {
    v79 = v77;
    v81 = *(v78 + 8);
    v82 = *(&v78[1] + 8);
    v83 = *(&v78[2] + 8);
    v80 = *&v78[0];
    v84 = *(&v78[3] + 1);
    v22 = v66;
    sub_20C415438(a1, a2, v20, v66, &v79, v75, a6, a7);
    v72 = v75[0];
    v73 = v75[1];
    v74[0] = *v76;
    *(v74 + 15) = *&v76[15];
    v59 = a1;
    v60 = a2;
    sub_20C460020();
    swift_getKeyPath();
    sub_20C460430();

    v23 = v71;
    if (*(v71 + 16))
    {
      v24 = sub_20C457E7C(&v79);
      v26 = v25;
      sub_20C40B440(v85, &qword_27C7BAC68, &unk_20C464890);
      v27 = v18;
      if (v26)
      {
        v28 = v22;
        v29 = *(v23 + 56);
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
        v31 = *(v30 - 8);
        v32 = v29 + *(v31 + 72) * v24;
        v22 = v28;
        v33 = v63;
        sub_20C409B04(v32, v63, &qword_27C7BAF10, &qword_20C4640D0);

        (*(v31 + 56))(v33, 0, 1, v30);
      }

      else
      {

        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
        v33 = v63;
        (*(*(v48 - 8) + 56))(v63, 1, 1, v48);
      }

      v47 = v59;
      v46 = v60;
      v45 = v27;
    }

    else
    {
      sub_20C40B440(v85, &qword_27C7BAC68, &unk_20C464890);

      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
      v44 = v63;
      (*(*(v43 - 8) + 56))(v63, 1, 1, v43);
      v45 = v18;
      v33 = v44;
      v47 = v59;
      v46 = v60;
    }

    v49 = swift_allocObject();
    *(v49 + 16) = v47;
    *(v49 + 24) = v46;
    *(v49 + 32) = v62 & 1;
    *(v49 + 40) = v22;
    *(v49 + 48) = a6;
    *(v49 + 56) = a7;
    sub_20C414B3C();
    v50 = v22;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFB0, &unk_20C466BD0);
    v52 = sub_20C416DC0(&qword_28110B440, &qword_27C7BAFB0, &unk_20C466BD0, sub_20C416E3C);
    v53 = sub_20C417310();
    v54 = v64;
    v55 = v68;
    sub_20C460370();

    sub_20C40B440(v33, &qword_27C7BAFB8, &unk_20C461F90);
    sub_20C40B440(v75, &qword_27C7BAFC0, &unk_20C466BE0);
    v56 = v65;
    v57 = v69;
    (*(v65 + 16))(v45, v54, v69);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFD0, &unk_20C466BF0);
    *&v72 = v51;
    *(&v72 + 1) = v55;
    *&v73 = v52;
    *(&v73 + 1) = v53;
    swift_getOpaqueTypeConformance2();
    sub_20C416F80();
    sub_20C460220();
    return (*(v56 + 8))(v54, v57);
  }

  else
  {
    *&v79 = a1;
    *(&v79 + 1) = a2;
    LOBYTE(v80) = v20;
    v34 = v66;
    *&v81 = v66;
    sub_20C4142FC(&v77);
    v35 = v77;
    v36 = BYTE8(v77);
    v37 = swift_allocObject();
    *(v37 + 16) = v21;
    *(v37 + 24) = a2;
    *(v37 + 32) = v20;
    *(v37 + 40) = v34;
    *(v37 + 48) = a6;
    *(v37 + 56) = a7;
    *v18 = v35;
    v18[8] = v36;
    *(v18 + 2) = sub_20C417460;
    *(v18 + 3) = v37;
    *(v18 + 4) = 0;
    *(v18 + 5) = 0;
    swift_storeEnumTagMultiPayload();
    sub_20C414B3C();
    v38 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFD0, &unk_20C466BF0);
    v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BAFB0, &unk_20C466BD0);
    v40 = sub_20C416DC0(&qword_28110B440, &qword_27C7BAFB0, &unk_20C466BD0, sub_20C416E3C);
    v41 = sub_20C417310();
    *&v79 = v39;
    *(&v79 + 1) = v68;
    v80 = v40;
    *&v81 = v41;
    swift_getOpaqueTypeConformance2();
    sub_20C416F80();
    return sub_20C460220();
  }
}

double sub_20C415438@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  v96 = a4;
  v97 = a6;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF60, &unk_20C462050);
  v14 = *(*(v91 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v91);
  v92 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v93 = &v87 - v17;
  v18 = sub_20C4603C0();
  v89 = *(v18 - 8);
  v90 = v18;
  v19 = *(v89 + 64);
  MEMORY[0x28223BE20](v18);
  v88 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
  v87 = *(v21 - 8);
  v22 = *(v87 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v99 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v87 - v26;
  MEMORY[0x28223BE20](v25);
  v98 = &v87 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB010, &qword_20C461FF0);
  sub_20C417418(&qword_28110B418, &qword_27C7BB010, &qword_20C461FF0);
  LODWORD(v94) = a3;
  *&v95 = a1;
  *(&v95 + 1) = a2;
  sub_20C460020();
  swift_getKeyPath();
  sub_20C460430();

  v29 = v120;
  if (*(v120 + 16) && (v30 = sub_20C457E7C(a5), (v31 & 1) != 0))
  {
    sub_20C409B04(*(v29 + 56) + *(v87 + 72) * v30, v27, &qword_27C7BAF10, &qword_20C4640D0);

    v32 = v98;
    sub_20C409BD0(v27, v98, &qword_27C7BAF10, &qword_20C4640D0);
  }

  else
  {

    v32 = v98;
    swift_storeEnumTagMultiPayload();
  }

  sub_20C409B04(v32, v99, &qword_27C7BAF10, &qword_20C4640D0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      if (v96)
      {
        v34 = v96;
        sub_20C4603A0();
        v36 = v88;
        v35 = v89;
        v37 = v90;
        (*(v89 + 104))(v88, *MEMORY[0x277CE0FE0], v90);
        v38 = sub_20C4603D0();

        (*(v35 + 8))(v36, v37);
        *&v100[0] = v38;
        WORD4(v100[0]) = 0;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFD8, &unk_20C461FB0);
        sub_20C41700C();
        sub_20C460220();
      }

      else
      {
        v104 = v95;
        LOBYTE(v105) = v94 & 1;
        *(&v105 + 1) = 0;
        sub_20C4142FC(v100);
        BYTE9(v100[0]) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFD8, &unk_20C461FB0);
        sub_20C41700C();
        sub_20C460220();
      }

      v61 = v104;
      v62 = BYTE8(v104);
      v63 = BYTE9(v104);
      v64 = 256;
      if (!BYTE9(v104))
      {
        v64 = 0;
      }

      v96 = v104;
      *&v100[0] = v104;
      *(&v100[0] + 1) = v64 | BYTE8(v104);
      v100[1] = 0u;
      v101 = 0u;
      LOBYTE(v102) = 1;
      DWORD2(v95) = BYTE8(v104);
      LODWORD(v95) = BYTE9(v104);
      sub_20C417508(v104, BYTE8(v104), SBYTE9(v104));
      sub_20C417508(v61, v62, v63);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFD0, &unk_20C466BF0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFF0, &unk_20C466C10);
      sub_20C416F80();
      sub_20C417148(&qword_28110B470, &qword_27C7BAFF0, &unk_20C466C10, sub_20C41700C);
      sub_20C460220();
      v65 = *(&v104 + 1);
      v66 = v105;
      v68 = *(&v106[0] + 1);
      v67 = *&v106[0];
      v69 = v106[1];
      LOBYTE(v116) = v106[1];
      LOBYTE(v112) = 0;
      v100[0] = v104;
      v94 = v104;
      v100[1] = v105;
      v101 = v106[0];
      LOBYTE(v102) = v106[1];
      v103 = 0;
      sub_20C417540(v104, *(&v104 + 1), v105, *(&v105 + 1), *&v106[0], *(&v106[0] + 1), v106[1], j__swift_retain, sub_20C41751C, sub_20C417508);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFC8, &unk_20C461FA0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFF8, &unk_20C461FD0);
      sub_20C416EC8();
      sub_20C4171CC();
      sub_20C460220();
      v70 = v96;
      v71 = DWORD2(v95);
      v72 = v95;
      sub_20C41752C(v96, DWORD2(v95), v95);
      sub_20C417540(v94, v65, v66, *(&v66 + 1), v67, v68, v69, j__swift_release, sub_20C4175F8, sub_20C41752C);
      sub_20C41752C(v70, v71, v72);
      sub_20C40B440(v98, &qword_27C7BAF10, &qword_20C4640D0);
      v107 = v104;
      v108 = v105;
      *v109 = v106[0];
      *&v109[15] = *(v106 + 15);
      v73 = sub_20C45FCC0();
      (*(*(v73 - 8) + 8))(v99, v73);
      v41 = v97;
    }

    else
    {
      v42 = v95;
      v104 = v95;
      v43 = v94 & 1;
      LOBYTE(v105) = v94 & 1;
      v44 = v96;
      *(&v105 + 1) = v96;
      sub_20C4142FC(v100);
      v45 = *&v100[0];
      v46 = BYTE8(v100[0]);
      v47 = swift_allocObject();
      *(v47 + 16) = a7;
      *(v47 + 24) = a8;
      *(v47 + 32) = v42;
      *(v47 + 48) = v43;
      *(v47 + 56) = v44;
      *&v100[0] = v45;
      *(&v100[0] + 1) = v46;
      *&v100[1] = sub_20C417608;
      *(&v100[1] + 1) = v47;
      v101 = 0uLL;
      LOBYTE(v102) = 0;
      sub_20C414B3C();
      v48 = v44;
      j__swift_retain();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFD0, &unk_20C466BF0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFF0, &unk_20C466C10);
      sub_20C416F80();
      sub_20C417148(&qword_28110B470, &qword_27C7BAFF0, &unk_20C466C10, sub_20C41700C);
      sub_20C460220();
      LOBYTE(v116) = v106[1];
      LOBYTE(v112) = 0;
      v100[0] = v104;
      v100[1] = v105;
      v101 = v106[0];
      LOBYTE(v102) = v106[1];
      v103 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFC8, &unk_20C461FA0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFF8, &unk_20C461FD0);
      sub_20C416EC8();
      sub_20C4171CC();
      sub_20C460220();
      j__swift_release();

      sub_20C40B440(v32, &qword_27C7BAF10, &qword_20C4640D0);
      v107 = v104;
      v108 = v105;
      *v109 = v106[0];
      *&v109[15] = *(v106 + 15);
      v41 = v97;
    }
  }

  else
  {
    v39 = v93;
    sub_20C409BD0(v99, v93, &qword_27C7BAF60, &unk_20C462050);
    v40 = v92;
    sub_20C409B04(v39, v92, &qword_27C7BAF60, &unk_20C462050);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v104 = v95;
      LOBYTE(v105) = v94 & 1;
      *(&v105 + 1) = v96;
      sub_20C4142FC(v100);
      v111 = BYTE8(v100[0]);
      v110 = 1;
      HIBYTE(v102) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB000, &unk_20C466C20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFD8, &unk_20C461FB0);
      sub_20C417258();
      sub_20C41700C();
      sub_20C460220();
      sub_20C409B04(&v104, v100, &qword_27C7BB028, &qword_20C466CE0);
      v112 = v104;
      v113 = v105;
      v114 = v106[0];
      v115 = v106[1];
      v116 = v104;
      v117 = v105;
      v118 = v106[0];
      v119 = v106[1];
      v41 = v97;
    }

    else
    {
      if (qword_28110B9E8 != -1)
      {
        swift_once();
      }

      v49 = qword_28110E2D8;
      v50 = a5[3];
      v106[0] = a5[2];
      v106[1] = v50;
      v106[2] = a5[4];
      v51 = a5[1];
      v104 = *a5;
      v105 = v51;
      v52 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB030, &qword_20C464A30));
      sub_20C40C520(a5, v100);
      v53 = sub_20C45FE40();
      v54 = [v49 objectForKey_];

      if (v54)
      {
        v55 = sub_20C460130();
        v56 = v54;
        sub_20C4603A0();
        v58 = v88;
        v57 = v89;
        v59 = v90;
        (*(v89 + 104))(v88, *MEMORY[0x277CE0FE0], v90);
        v60 = sub_20C4603D0();

        (*(v57 + 8))(v58, v59);
        *&v100[0] = v55;
        *(v100 + 8) = xmmword_20C461E70;
        v101 = 0uLL;
        *(&v100[1] + 1) = v60;
        LOBYTE(v102) = 0;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB008, &unk_20C461FE0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFD0, &unk_20C466BF0);
        sub_20C417418(&qword_28110B438, &qword_27C7BB008, &unk_20C461FE0);
        sub_20C416F80();
        sub_20C460220();
      }

      else
      {
        v74 = v95;
        v104 = v95;
        v75 = v94 & 1;
        LOBYTE(v105) = v94 & 1;
        v76 = v96;
        *(&v105 + 1) = v96;
        sub_20C4142FC(v100);
        v77 = *&v100[0];
        v78 = BYTE8(v100[0]);
        v79 = swift_allocObject();
        *(v79 + 16) = v74;
        *(v79 + 32) = v75;
        *(v79 + 40) = v76;
        v80 = a5[3];
        *(v79 + 80) = a5[2];
        *(v79 + 96) = v80;
        *(v79 + 112) = a5[4];
        v81 = a5[1];
        *(v79 + 48) = *a5;
        *(v79 + 64) = v81;
        *(v79 + 128) = a7;
        *(v79 + 136) = a8;
        *&v100[0] = v77;
        *(&v100[0] + 1) = v78;
        *&v100[1] = sub_20C4174E8;
        *(&v100[1] + 1) = v79;
        v101 = 0uLL;
        LOBYTE(v102) = 1;
        sub_20C414B3C();
        v82 = v76;
        sub_20C40C520(a5, &v104);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB008, &unk_20C461FE0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFD0, &unk_20C466BF0);
        sub_20C417418(&qword_28110B438, &qword_27C7BB008, &unk_20C461FE0);
        sub_20C416F80();
        sub_20C460220();
      }

      v41 = v97;
      v111 = v106[1];
      v110 = 0;
      v100[0] = v104;
      v100[1] = v105;
      v101 = v106[0];
      v102 = LOBYTE(v106[1]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB000, &unk_20C466C20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFD8, &unk_20C461FB0);
      sub_20C417258();
      sub_20C41700C();
      sub_20C460220();
      sub_20C409B04(&v104, v100, &qword_27C7BB028, &qword_20C466CE0);
      sub_20C40B440(v40, &qword_27C7BAF60, &unk_20C462050);
      v112 = v104;
      v113 = v105;
      v114 = v106[0];
      v115 = v106[1];
      v116 = v104;
      v117 = v105;
      v118 = v106[0];
      v119 = v106[1];
    }

    v83 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF78, &unk_20C462060) + 48);
    v100[0] = v112;
    v100[1] = v113;
    v101 = v114;
    v102 = v115;
    v111 = 1;
    v103 = 1;
    sub_20C409B04(&v112, &v104, &qword_27C7BB028, &qword_20C466CE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFC8, &unk_20C461FA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFF8, &unk_20C461FD0);
    sub_20C416EC8();
    sub_20C4171CC();
    sub_20C460220();
    sub_20C40B440(&v116, &qword_27C7BB028, &qword_20C466CE0);
    sub_20C40B440(&v112, &qword_27C7BAFF8, &unk_20C461FD0);
    sub_20C40B440(v93, &qword_27C7BAF60, &unk_20C462050);
    sub_20C40B440(v98, &qword_27C7BAF10, &qword_20C4640D0);
    v107 = v104;
    v108 = v105;
    *v109 = v106[0];
    *&v109[15] = *(v106 + 15);
    v84 = sub_20C45FC90();
    (*(*(v84 - 8) + 8))(v99 + v83, v84);
  }

  v85 = v108;
  *v41 = v107;
  *(v41 + 16) = v85;
  result = *v109;
  *(v41 + 32) = *v109;
  *(v41 + 47) = *&v109[15];
  return result;
}

uint64_t sub_20C4164A0(double a1, double a2)
{
  v4 = type metadata accessor for ImageAssetAction();
  v5 = *(*(v4 - 8) + 64);
  result = MEMORY[0x28223BE20](v4);
  v8 = (&v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 != 0.0 || a2 != 0.0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB010, &qword_20C461FF0);
    sub_20C417418(&qword_28110B418, &qword_27C7BB010, &qword_20C461FF0);
    sub_20C460020();
    *v8 = a1;
    v8[1] = a2;
    swift_storeEnumTagMultiPayload();
    sub_20C460440();

    return sub_20C417624(v8, type metadata accessor for ImageAssetAction);
  }

  return result;
}

uint64_t sub_20C4165F8(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7)
{
  v10 = a7[3];
  v22 = a7[2];
  v23 = v10;
  v24 = a7[4];
  v11 = a7[1];
  v20 = *a7;
  v21 = v11;
  v12 = type metadata accessor for ImageAssetAction();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v19[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB010, &qword_20C461FF0);
  sub_20C417418(&qword_28110B418, &qword_27C7BB010, &qword_20C461FF0);
  sub_20C460020();
  v16 = v23;
  *(v15 + 2) = v22;
  *(v15 + 3) = v16;
  *(v15 + 4) = v24;
  v17 = v21;
  *v15 = v20;
  *(v15 + 1) = v17;
  *(v15 + 10) = a1;
  *(v15 + 11) = a2;
  swift_storeEnumTagMultiPayload();
  sub_20C40C520(a7, v19);
  sub_20C460440();

  return sub_20C417624(v15, type metadata accessor for ImageAssetAction);
}

uint64_t sub_20C41678C(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for ImageAssetAction();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFB8, &unk_20C461F90);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v18 - v13;
  sub_20C409B04(a4, &v18 - v13, &qword_27C7BAFB8, &unk_20C461F90);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
  if ((*(*(v15 - 8) + 48))(v14, 1, v15) == 1)
  {
    return sub_20C40B440(v14, &qword_27C7BAFB8, &unk_20C461F90);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_20C40B440(v14, &qword_27C7BAF10, &qword_20C4640D0);
  if (EnumCaseMultiPayload == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB010, &qword_20C461FF0);
    sub_20C417418(&qword_28110B418, &qword_27C7BB010, &qword_20C461FF0);
    sub_20C460020();
    *v10 = a1;
    v10[1] = a2;
    swift_storeEnumTagMultiPayload();
    sub_20C460440();

    return sub_20C417624(v10, type metadata accessor for ImageAssetAction);
  }

  return result;
}

uint64_t sub_20C4169E8(double a1, double a2)
{
  v4 = type metadata accessor for ImageAssetAction();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB010, &qword_20C461FF0);
  sub_20C417418(&qword_28110B418, &qword_27C7BB010, &qword_20C461FF0);
  sub_20C460020();
  *v7 = a1;
  v7[1] = a2;
  swift_storeEnumTagMultiPayload();
  sub_20C460440();

  return sub_20C417624(v7, type metadata accessor for ImageAssetAction);
}

uint64_t sub_20C416B2C(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for ImageAssetAction();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *a2;
  v8 = a2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB010, &qword_20C461FF0);
  sub_20C417418(&qword_28110B418, &qword_27C7BB010, &qword_20C461FF0);
  sub_20C460020();
  sub_20C4606A0();
  *v6 = v9;
  v6[1] = v10;
  swift_storeEnumTagMultiPayload();
  sub_20C460440();

  return sub_20C417624(v6, type metadata accessor for ImageAssetAction);
}

uint64_t sub_20C416C80(uint64_t a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  return sub_20C416B2C(a1, a2);
}

unint64_t sub_20C416C98()
{
  result = qword_28110B480;
  if (!qword_28110B480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BAFA8, &unk_20C461F80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BAFB0, &unk_20C466BD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BAFB8, &unk_20C461F90);
    sub_20C416DC0(&qword_28110B440, &qword_27C7BAFB0, &unk_20C466BD0, sub_20C416E3C);
    sub_20C417310();
    swift_getOpaqueTypeConformance2();
    sub_20C416F80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B480);
  }

  return result;
}

uint64_t sub_20C416DC0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20C416E3C()
{
  result = qword_28110B460;
  if (!qword_28110B460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BAFC0, &unk_20C466BE0);
    sub_20C416EC8();
    sub_20C4171CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B460);
  }

  return result;
}

unint64_t sub_20C416EC8()
{
  result = qword_28110B488;
  if (!qword_28110B488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BAFC8, &unk_20C461FA0);
    sub_20C416F80();
    sub_20C417148(&qword_28110B470, &qword_27C7BAFF0, &unk_20C466C10, sub_20C41700C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B488);
  }

  return result;
}

unint64_t sub_20C416F80()
{
  result = qword_28110B498;
  if (!qword_28110B498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BAFD0, &unk_20C466BF0);
    sub_20C41700C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B498);
  }

  return result;
}

unint64_t sub_20C41703C()
{
  result = qword_28110B490;
  if (!qword_28110B490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BAFE0, &unk_20C466C00);
    sub_20C4170F4();
    sub_20C417418(&qword_28110B450, &qword_27C7BAFE8, &unk_20C461FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B490);
  }

  return result;
}

unint64_t sub_20C4170F4()
{
  result = qword_28110B430;
  if (!qword_28110B430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B430);
  }

  return result;
}

uint64_t sub_20C417148(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20C4171CC()
{
  result = qword_28110B458;
  if (!qword_28110B458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BAFF8, &unk_20C461FD0);
    sub_20C417258();
    sub_20C41700C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B458);
  }

  return result;
}

unint64_t sub_20C417258()
{
  result = qword_28110B468;
  if (!qword_28110B468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BB000, &unk_20C466C20);
    sub_20C417418(&qword_28110B438, &qword_27C7BB008, &unk_20C461FE0);
    sub_20C416F80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B468);
  }

  return result;
}

unint64_t sub_20C417310()
{
  result = qword_28110B7C0;
  if (!qword_28110B7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BAFB8, &unk_20C461F90);
    sub_20C417418(qword_28110B7C8, &qword_27C7BAF10, &qword_20C4640D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B7C0);
  }

  return result;
}

unint64_t sub_20C4173C0()
{
  result = qword_28110B3D8;
  if (!qword_28110B3D8)
  {
    type metadata accessor for CGSize();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B3D8);
  }

  return result;
}

uint64_t sub_20C417418(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_20C417460()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  return sub_20C4169E8(*(v0 + 48), *(v0 + 56));
}

uint64_t objectdestroy_2Tm(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  sub_20C414B30();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_20C4174CC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  return sub_20C41678C(*(v2 + 48), *(v2 + 56), a1, a2);
}

uint64_t sub_20C417508(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return j__swift_retain();
  }

  else
  {
  }
}

uint64_t sub_20C41751C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_20C41752C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return j__swift_release();
  }

  else
  {
  }
}

uint64_t sub_20C417540(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, void (*a8)(uint64_t, unint64_t), void (*a9)(uint64_t, uint64_t), uint64_t (*a10)(uint64_t, unint64_t, uint64_t))
{
  if (a7)
  {

    return a10(a1, a2, (a2 >> 8) & 1);
  }

  else
  {
    a8(a1, a2 & 1);
    a9(a3, a4);

    return (a9)(a5, a6);
  }
}

uint64_t sub_20C4175F8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_20C417608()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  return sub_20C4164A0(*(v0 + 16), *(v0 + 24));
}

uint64_t sub_20C417624(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t DynamicArtworkLayoutEnvironment.description.getter()
{
  v1 = v0;
  BYTE8(v6) = 0;
  sub_20C460740();
  MEMORY[0x20F2FAA60](0xD00000000000002FLL, 0x800000020C467560);
  v7 = *(v0 + 1);
  sub_20C460790();
  MEMORY[0x20F2FAA60](0xD000000000000017, 0x800000020C467590);
  v2 = type metadata accessor for DynamicArtworkLayoutEnvironment();
  v3 = v2[6];
  sub_20C45FDF0();
  sub_20C460790();
  MEMORY[0x20F2FAA60](0x6F6674616C70202CLL, 0xEC000000203A6D72);
  *&v6 = *(v1 + v2[7]);
  sub_20C460790();
  MEMORY[0x20F2FAA60](0xD000000000000015, 0x800000020C4675B0);
  v4 = v2[8];
  sub_20C460790();
  MEMORY[0x20F2FAA60](41, 0xE100000000000000);
  return *(&v6 + 1);
}

uint64_t sub_20C417824()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20C417858()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20C41788C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20C4178C0(uint64_t a1)
{
  v2 = sub_20C419C24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C4178FC(uint64_t a1)
{
  v2 = sub_20C419C24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C417938()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x6570704177656976;
    if (v1 != 6)
    {
      v5 = 0x657A695377656976;
    }

    v6 = 0xD000000000000010;
    if (v1 != 4)
    {
      v6 = 0xD000000000000016;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0xD000000000000014;
    if (v1 != 2)
    {
      v2 = 0xD000000000000018;
    }

    v3 = 0xD00000000000001BLL;
    if (!*v0)
    {
      v3 = 0xD00000000000001ALL;
    }

    if (*v0 <= 1u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_20C417A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C41E790(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C417A90(uint64_t a1)
{
  v2 = sub_20C4198CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C417ACC(uint64_t a1)
{
  v2 = sub_20C4198CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C417B08(uint64_t a1)
{
  v2 = sub_20C419BD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C417B44(uint64_t a1)
{
  v2 = sub_20C419BD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C417B80()
{
  v1 = 0x726F727265;
  if (*v0 != 1)
  {
    v1 = 0x79654B6568636163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7373416567616D69;
  }
}

uint64_t sub_20C417BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C41EB48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C417C04(uint64_t a1)
{
  v2 = sub_20C419B28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C417C40(uint64_t a1)
{
  v2 = sub_20C419B28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C417C7C()
{
  if (*v0)
  {
    result = 0x79654B6568636163;
  }

  else
  {
    result = 0x7373416567616D69;
  }

  *v0;
  return result;
}

uint64_t sub_20C417CBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7373416567616D69 && a2 == 0xEA00000000007465;
  if (v6 || (sub_20C4608D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x79654B6568636163 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C4608D0();

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

uint64_t sub_20C417DA0(uint64_t a1)
{
  v2 = sub_20C419A80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C417DDC(uint64_t a1)
{
  v2 = sub_20C419A80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C417E18(uint64_t a1)
{
  v2 = sub_20C419AD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C417E54(uint64_t a1)
{
  v2 = sub_20C419AD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C417E90(uint64_t a1)
{
  v2 = sub_20C419A2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C417ECC(uint64_t a1)
{
  v2 = sub_20C419A2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C417F08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x800000020C467710 == a2 || (sub_20C4608D0() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_20C4608D0();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_20C417FF0(uint64_t a1)
{
  v2 = sub_20C4199D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C41802C(uint64_t a1)
{
  v2 = sub_20C4199D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C418078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1702521203 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_20C4608D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_20C418100(uint64_t a1)
{
  v2 = sub_20C419984();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C41813C(uint64_t a1)
{
  v2 = sub_20C419984();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DynamicImageAssetAction.encode(to:)(void *a1)
{
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB038, &qword_20C4620D0);
  v137 = *(v139 - 8);
  v2 = *(v137 + 64);
  MEMORY[0x28223BE20](v139);
  v134 = &v116 - v3;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB040, &qword_20C4620D8);
  v144 = *(v145 - 8);
  v4 = *(v144 + 64);
  MEMORY[0x28223BE20](v145);
  v143 = &v116 - v5;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB048, &qword_20C4620E0);
  v141 = *(v142 - 8);
  v6 = *(v141 + 64);
  MEMORY[0x28223BE20](v142);
  v136 = &v116 - v7;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB050, &qword_20C4620E8);
  v138 = *(v140 - 8);
  v8 = *(v138 + 64);
  MEMORY[0x28223BE20](v140);
  v135 = &v116 - v9;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB058, &qword_20C4620F0);
  v132 = *(v133 - 8);
  v10 = *(v132 + 64);
  MEMORY[0x28223BE20](v133);
  v126 = &v116 - v11;
  v146 = type metadata accessor for DynamicArtworkLayoutEnvironment();
  v12 = *(*(v146 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v146);
  v129 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v125 = &v116 - v16;
  MEMORY[0x28223BE20](v15);
  v123 = &v116 - v17;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB060, &qword_20C4620F8);
  v130 = *(v131 - 8);
  v18 = *(v130 + 64);
  MEMORY[0x28223BE20](v131);
  v124 = &v116 - v19;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB068, &qword_20C462100);
  v127 = *(v128 - 8);
  v20 = *(v127 + 64);
  MEMORY[0x28223BE20](v128);
  v122 = &v116 - v21;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB070, &qword_20C462108);
  v120 = *(v121 - 8);
  v22 = *(v120 + 64);
  MEMORY[0x28223BE20](v121);
  v118 = &v116 - v23;
  v147 = type metadata accessor for ImageAsset();
  v24 = *(*(v147 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v147);
  v27 = &v116 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  v117 = &v116 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v119 = &v116 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v116 - v32;
  v34 = type metadata accessor for DynamicImageAssetAction();
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v37 = (&v116 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB078, &unk_20C462110);
  v164 = *(v150 - 8);
  v38 = *(v164 + 64);
  MEMORY[0x28223BE20](v150);
  v40 = &v116 - v39;
  v41 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C4198CC();
  sub_20C4609C0();
  sub_20C419920(v148, v37);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        v112 = *v37;
        v113 = v37[1];
        LOBYTE(v157) = 7;
        sub_20C419984();
        v114 = v134;
        v52 = v150;
        sub_20C460870();
        *&v157 = v112;
        *(&v157 + 1) = v113;
        type metadata accessor for CGSize();
        sub_20C41D910(&qword_28110B3E0, type metadata accessor for CGSize);
        v115 = v139;
        sub_20C4608B0();
        (*(v137 + 8))(v114, v115);
        goto LABEL_32;
      }

      v79 = (v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB090, &unk_20C466C60) + 48));
      v80 = *v79;
      v81 = v79[1];
      v82 = v129;
      sub_20C41B8D4(v37, v129, type metadata accessor for DynamicArtworkLayoutEnvironment);
      LOBYTE(v157) = 6;
      sub_20C4199D8();
      v83 = v143;
      v52 = v150;
      sub_20C460870();
      LOBYTE(v157) = 0;
      sub_20C41D910(&qword_27C7BB0A0, type metadata accessor for DynamicArtworkLayoutEnvironment);
      v84 = v145;
      v85 = v149;
      sub_20C4608B0();
      if (!v85)
      {
        *&v157 = v80;
        *(&v157 + 1) = v81;
        LOBYTE(v152) = 1;
        type metadata accessor for CGSize();
        sub_20C41D910(&qword_28110B3E0, type metadata accessor for CGSize);
        sub_20C4608B0();
      }

      v86 = &v163;
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v57 = (v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0B0, &unk_20C462120) + 48));
        v58 = v57[4];
        v59 = v57[2];
        v160 = v57[3];
        v161 = v58;
        v60 = *v57;
        v158 = v57[1];
        v159 = v59;
        v157 = v60;
        sub_20C41B8D4(v37, v27, type metadata accessor for ImageAsset);
        LOBYTE(v152) = 4;
        sub_20C419A80();
        v61 = v135;
        v62 = v150;
        sub_20C460870();
        LOBYTE(v152) = 0;
        sub_20C41D910(&qword_28110BC98, type metadata accessor for ImageAsset);
        v63 = v140;
        v64 = v149;
        sub_20C4608B0();
        if (v64)
        {
          sub_20C40C57C(&v157);
          (*(v138 + 8))(v61, v63);
          sub_20C41ECCC(v27, type metadata accessor for ImageAsset);
          return (*(v164 + 8))(v40, v62);
        }

        v154 = v159;
        v155 = v160;
        v156 = v161;
        v153 = v158;
        v152 = v157;
        v151 = 1;
        sub_20C40B974();
        sub_20C4608B0();
        (*(v138 + 8))(v61, v63);
        sub_20C41ECCC(v27, type metadata accessor for ImageAsset);
        (*(v164 + 8))(v40, v62);
        return sub_20C40C57C(&v157);
      }

      v99 = (v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB090, &unk_20C466C60) + 48));
      v100 = *v99;
      v101 = v99[1];
      v82 = v125;
      sub_20C41B8D4(v37, v125, type metadata accessor for DynamicArtworkLayoutEnvironment);
      LOBYTE(v157) = 5;
      sub_20C419A2C();
      v83 = v136;
      v52 = v150;
      sub_20C460870();
      LOBYTE(v157) = 0;
      sub_20C41D910(&qword_27C7BB0A0, type metadata accessor for DynamicArtworkLayoutEnvironment);
      v84 = v142;
      v102 = v149;
      sub_20C4608B0();
      if (!v102)
      {
        *&v157 = v100;
        *(&v157 + 1) = v101;
        LOBYTE(v152) = 1;
        type metadata accessor for CGSize();
        sub_20C41D910(&qword_28110B3E0, type metadata accessor for CGSize);
        sub_20C4608B0();
      }

      v86 = &v162;
    }

    (*(*(v86 - 32) + 8))(v83, v84);
    v55 = type metadata accessor for DynamicArtworkLayoutEnvironment;
    v56 = v82;
LABEL_26:
    sub_20C41ECCC(v56, v55);
LABEL_32:
    v110 = *(v164 + 8);
    v111 = v40;
    return v110(v111, v52);
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0E0, &qword_20C462130);
      v88 = (v37 + *(v87 + 48));
      v89 = v88[4];
      v90 = v88[2];
      v160 = v88[3];
      v161 = v89;
      v91 = *v88;
      v158 = v88[1];
      v159 = v90;
      v157 = v91;
      v92 = (v37 + *(v87 + 64));
      v93 = *v92;
      v94 = v92[1];
      v95 = v119;
      sub_20C41B8D4(v37, v119, type metadata accessor for ImageAsset);
      LOBYTE(v152) = 1;
      sub_20C419BD0();
      v96 = v122;
      v52 = v150;
      sub_20C460870();
      LOBYTE(v152) = 0;
      sub_20C41D910(&qword_28110BC98, type metadata accessor for ImageAsset);
      v97 = v128;
      v98 = v149;
      sub_20C4608B0();
      if (v98)
      {
        sub_20C40C57C(&v157);
      }

      else
      {
        v154 = v159;
        v155 = v160;
        v156 = v161;
        v153 = v158;
        v152 = v157;
        v151 = 1;
        sub_20C40B974();
        sub_20C4608B0();
        sub_20C40C57C(&v157);
        *&v152 = v93;
        *(&v152 + 1) = v94;
        v151 = 2;
        type metadata accessor for CGSize();
        sub_20C41D910(&qword_28110B3E0, type metadata accessor for CGSize);
        sub_20C4608B0();
      }

      (*(v127 + 8))(v96, v97);
      v55 = type metadata accessor for ImageAsset;
      v56 = v95;
    }

    else
    {
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0E0, &qword_20C462130);
      v44 = (v37 + *(v43 + 48));
      v45 = v44[4];
      v46 = v44[2];
      v160 = v44[3];
      v161 = v45;
      v47 = *v44;
      v158 = v44[1];
      v159 = v46;
      v157 = v47;
      v48 = (v37 + *(v43 + 64));
      v49 = *v48;
      v50 = v48[1];
      sub_20C41B8D4(v37, v33, type metadata accessor for ImageAsset);
      LOBYTE(v152) = 0;
      sub_20C419C24();
      v51 = v118;
      v52 = v150;
      sub_20C460870();
      LOBYTE(v152) = 0;
      sub_20C41D910(&qword_28110BC98, type metadata accessor for ImageAsset);
      v53 = v121;
      v54 = v149;
      sub_20C4608B0();
      if (v54)
      {
        sub_20C40C57C(&v157);
      }

      else
      {
        v154 = v159;
        v155 = v160;
        v156 = v161;
        v153 = v158;
        v152 = v157;
        v151 = 1;
        sub_20C40B974();
        sub_20C4608B0();
        sub_20C40C57C(&v157);
        *&v152 = v49;
        *(&v152 + 1) = v50;
        v151 = 2;
        type metadata accessor for CGSize();
        sub_20C41D910(&qword_28110B3E0, type metadata accessor for CGSize);
        sub_20C4608B0();
      }

      (*(v120 + 8))(v51, v53);
      v55 = type metadata accessor for ImageAsset;
      v56 = v33;
    }

    goto LABEL_26;
  }

  v66 = v40;
  if (EnumCaseMultiPayload != 2)
  {
    v103 = (v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB090, &unk_20C466C60) + 48));
    v104 = *v103;
    v105 = v103[1];
    v106 = v123;
    sub_20C41B8D4(v37, v123, type metadata accessor for DynamicArtworkLayoutEnvironment);
    LOBYTE(v157) = 3;
    sub_20C419AD4();
    v107 = v126;
    v52 = v150;
    sub_20C460870();
    LOBYTE(v157) = 0;
    sub_20C41D910(&qword_27C7BB0A0, type metadata accessor for DynamicArtworkLayoutEnvironment);
    v108 = v133;
    v109 = v149;
    sub_20C4608B0();
    if (!v109)
    {
      *&v157 = v104;
      *(&v157 + 1) = v105;
      LOBYTE(v152) = 1;
      type metadata accessor for CGSize();
      sub_20C41D910(&qword_28110B3E0, type metadata accessor for CGSize);
      sub_20C4608B0();
    }

    (*(v132 + 8))(v107, v108);
    v77 = type metadata accessor for DynamicArtworkLayoutEnvironment;
    v78 = v106;
    goto LABEL_30;
  }

  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0C8, &unk_20C4648E0);
  v68 = *(v37 + *(v67 + 48));
  v69 = (v37 + *(v67 + 64));
  v70 = v69[4];
  v71 = v69[2];
  v160 = v69[3];
  v161 = v70;
  v72 = *v69;
  v158 = v69[1];
  v159 = v71;
  v157 = v72;
  v73 = v117;
  sub_20C41B8D4(v37, v117, type metadata accessor for ImageAsset);
  LOBYTE(v152) = 2;
  sub_20C419B28();
  v74 = v124;
  v52 = v150;
  sub_20C460870();
  LOBYTE(v152) = 0;
  sub_20C41D910(&qword_28110BC98, type metadata accessor for ImageAsset);
  v75 = v131;
  v76 = v149;
  sub_20C4608B0();
  if (v76)
  {
    sub_20C40C57C(&v157);
    (*(v130 + 8))(v74, v75);
    v77 = type metadata accessor for ImageAsset;
    v78 = v73;
LABEL_30:
    sub_20C41ECCC(v78, v77);
    v110 = *(v164 + 8);
    v111 = v66;
    return v110(v111, v52);
  }

  LOBYTE(v152) = v68;
  v151 = 1;
  sub_20C419B7C();
  sub_20C4608B0();
  v154 = v159;
  v155 = v160;
  v156 = v161;
  v153 = v158;
  v152 = v157;
  v151 = 2;
  sub_20C40B974();
  sub_20C4608B0();
  (*(v130 + 8))(v74, v75);
  sub_20C41ECCC(v73, type metadata accessor for ImageAsset);
  (*(v164 + 8))(v40, v52);
  return sub_20C40C57C(&v157);
}

uint64_t type metadata accessor for DynamicImageAssetAction()
{
  result = qword_27C7BB158;
  if (!qword_27C7BB158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_20C4198CC()
{
  result = qword_27C7BB080;
  if (!qword_27C7BB080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB080);
  }

  return result;
}

uint64_t sub_20C419920(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicImageAssetAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20C419984()
{
  result = qword_27C7BB088;
  if (!qword_27C7BB088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB088);
  }

  return result;
}

unint64_t sub_20C4199D8()
{
  result = qword_27C7BB098;
  if (!qword_27C7BB098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB098);
  }

  return result;
}

unint64_t sub_20C419A2C()
{
  result = qword_27C7BB0A8;
  if (!qword_27C7BB0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB0A8);
  }

  return result;
}

unint64_t sub_20C419A80()
{
  result = qword_27C7BB0B8;
  if (!qword_27C7BB0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB0B8);
  }

  return result;
}

unint64_t sub_20C419AD4()
{
  result = qword_27C7BB0C0;
  if (!qword_27C7BB0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB0C0);
  }

  return result;
}

unint64_t sub_20C419B28()
{
  result = qword_27C7BB0D0;
  if (!qword_27C7BB0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB0D0);
  }

  return result;
}

unint64_t sub_20C419B7C()
{
  result = qword_27C7BB0D8;
  if (!qword_27C7BB0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB0D8);
  }

  return result;
}

unint64_t sub_20C419BD0()
{
  result = qword_27C7BB0E8;
  if (!qword_27C7BB0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB0E8);
  }

  return result;
}

unint64_t sub_20C419C24()
{
  result = qword_27C7BB0F0;
  if (!qword_27C7BB0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB0F0);
  }

  return result;
}

uint64_t DynamicImageAssetAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v142 = a2;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0F8, &qword_20C462138);
  v129 = *(v130 - 8);
  v3 = *(v129 + 64);
  MEMORY[0x28223BE20](v130);
  v138 = &v112 - v4;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB100, &qword_20C462140);
  v133 = *(v134 - 8);
  v5 = *(v133 + 64);
  MEMORY[0x28223BE20](v134);
  v147 = &v112 - v6;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB108, &qword_20C462148);
  v131 = *(v132 - 8);
  v7 = *(v131 + 64);
  MEMORY[0x28223BE20](v132);
  v141 = &v112 - v8;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB110, &qword_20C462150);
  v128 = *(v121 - 8);
  v9 = *(v128 + 64);
  MEMORY[0x28223BE20](v121);
  v140 = &v112 - v10;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB118, &qword_20C462158);
  v126 = *(v127 - 8);
  v11 = *(v126 + 64);
  MEMORY[0x28223BE20](v127);
  v139 = &v112 - v12;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB120, &qword_20C462160);
  v124 = *(v125 - 8);
  v13 = *(v124 + 64);
  MEMORY[0x28223BE20](v125);
  v146 = &v112 - v14;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB128, &qword_20C462168);
  v136 = *(v123 - 8);
  v15 = *(v136 + 64);
  MEMORY[0x28223BE20](v123);
  v145 = &v112 - v16;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB130, &qword_20C462170);
  v135 = *(v122 - 8);
  v17 = *(v135 + 64);
  MEMORY[0x28223BE20](v122);
  v144 = &v112 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB138, &unk_20C462178);
  v148 = *(v19 - 8);
  v149 = v19;
  v20 = *(v148 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v112 - v21;
  v143 = type metadata accessor for DynamicImageAssetAction();
  v23 = *(*(v143 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v143);
  v118 = (&v112 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = MEMORY[0x28223BE20](v24);
  v137 = &v112 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v120 = &v112 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v119 = &v112 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v112 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v112 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v40 = &v112 - v39;
  v41 = MEMORY[0x28223BE20](v38);
  v43 = &v112 - v42;
  MEMORY[0x28223BE20](v41);
  v45 = &v112 - v44;
  v46 = a1[3];
  v47 = a1[4];
  v151 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v46);
  sub_20C4198CC();
  v48 = v150;
  sub_20C4609B0();
  if (v48)
  {
    return __swift_destroy_boxed_opaque_existential_1(v151);
  }

  v113 = v34;
  v117 = v37;
  v115 = v43;
  v116 = v40;
  v50 = v144;
  v49 = v145;
  v51 = v146;
  v52 = v147;
  v114 = v45;
  v53 = v149;
  v150 = v22;
  v54 = sub_20C460850();
  if (*(v54 + 16) != 1 || (v55 = *(v54 + 32), v55 == 8))
  {
    v59 = sub_20C460770();
    swift_allocError();
    v61 = v60;
    v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BACB8, &qword_20C461670) + 48);
    *v61 = v143;
    v63 = v150;
    sub_20C460800();
    sub_20C460760();
    (*(*(v59 - 8) + 104))(v61, *MEMORY[0x277D84160], v59);
    swift_willThrow();
    (*(v148 + 8))(v63, v53);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v151);
  }

  if (*(v54 + 32) <= 3u)
  {
    if (*(v54 + 32) <= 1u)
    {
      v56 = v150;
      if (*(v54 + 32))
      {
        LOBYTE(v152) = 1;
        sub_20C419BD0();
        v76 = v49;
        sub_20C4607F0();
        type metadata accessor for ImageAsset();
        LOBYTE(v152) = 0;
        sub_20C41D910(&qword_27C7BAF30, type metadata accessor for ImageAsset);
        v77 = v116;
        v78 = v123;
        sub_20C460840();
        v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0E0, &qword_20C462130);
        v98 = v77;
        v99 = v97;
        v100 = &v98[*(v97 + 48)];
        LOBYTE(v152) = 1;
        sub_20C40BDE4();
        sub_20C460840();
        v147 = v100;
        v110 = *(v99 + 64);
        type metadata accessor for CGSize();
        v153 = 2;
        sub_20C41D910(&qword_27C7BAC78, type metadata accessor for CGSize);
        v108 = v116;
        sub_20C460840();
        v147 = 0;
        (*(v136 + 8))(v76, v78);
      }

      else
      {
        LOBYTE(v152) = 0;
        sub_20C419C24();
        sub_20C4607F0();
        type metadata accessor for ImageAsset();
        LOBYTE(v152) = 0;
        sub_20C41D910(&qword_27C7BAF30, type metadata accessor for ImageAsset);
        v57 = v115;
        v58 = v122;
        sub_20C460840();
        v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0E0, &qword_20C462130);
        v90 = v57;
        v91 = v89;
        v92 = &v90[*(v89 + 48)];
        LOBYTE(v152) = 1;
        sub_20C40BDE4();
        sub_20C460840();
        v147 = v92;
        v107 = *(v91 + 64);
        type metadata accessor for CGSize();
        v153 = 2;
        sub_20C41D910(&qword_27C7BAC78, type metadata accessor for CGSize);
        v108 = v115;
        sub_20C460840();
        v147 = 0;
        (*(v135 + 8))(v50, v58);
      }

      (*(v148 + 8))(v56, v149);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v111 = v108;
      goto LABEL_24;
    }

    v69 = v142;
    v70 = v150;
    if (v55 != 2)
    {
      LOBYTE(v152) = 3;
      sub_20C419AD4();
      v79 = v139;
      sub_20C4607F0();
      type metadata accessor for DynamicArtworkLayoutEnvironment();
      LOBYTE(v152) = 0;
      sub_20C41D910(&qword_27C7BB140, type metadata accessor for DynamicArtworkLayoutEnvironment);
      v80 = v113;
      v81 = v127;
      sub_20C460840();
      v101 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB090, &unk_20C466C60) + 48);
      type metadata accessor for CGSize();
      LOBYTE(v152) = 1;
      sub_20C41D910(&qword_27C7BAC78, type metadata accessor for CGSize);
      sub_20C460840();
      v147 = 0;
      (*(v126 + 8))(v79, v81);
      (*(v148 + 8))(v70, v149);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v111 = v80;
LABEL_24:
      v106 = v114;
      sub_20C41B8D4(v111, v114, type metadata accessor for DynamicImageAssetAction);
      v69 = v142;
      goto LABEL_25;
    }

    LOBYTE(v152) = 2;
    sub_20C419B28();
    sub_20C4607F0();
    type metadata accessor for ImageAsset();
    LOBYTE(v152) = 0;
    sub_20C41D910(&qword_27C7BAF30, type metadata accessor for ImageAsset);
    v71 = v125;
    v72 = v51;
    sub_20C460840();
    v73 = v148;
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0C8, &unk_20C4648E0);
    v95 = *(v94 + 48);
    LOBYTE(v152) = 1;
    sub_20C41B93C();
    v96 = v117;
    sub_20C460840();
    v109 = *(v94 + 64);
    LOBYTE(v152) = 2;
    sub_20C40BDE4();
    sub_20C460840();
    (*(v124 + 8))(v72, v71);
    (*(v73 + 8))(v70, v149);
    swift_unknownObjectRelease();
    goto LABEL_22;
  }

  if (*(v54 + 32) <= 5u)
  {
    v146 = v54;
    if (v55 == 4)
    {
      LOBYTE(v152) = 4;
      sub_20C419A80();
      v65 = v140;
      v66 = v150;
      sub_20C4607F0();
      type metadata accessor for ImageAsset();
      LOBYTE(v152) = 0;
      sub_20C41D910(&qword_27C7BAF30, type metadata accessor for ImageAsset);
      v67 = v119;
      v68 = v121;
      sub_20C460840();
      v93 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0B0, &unk_20C462120) + 48);
      LOBYTE(v152) = 1;
      sub_20C40BDE4();
      sub_20C460840();
      v147 = 0;
      (*(v128 + 8))(v65, v68);
    }

    else
    {
      LOBYTE(v152) = 5;
      sub_20C419A2C();
      v66 = v150;
      sub_20C4607F0();
      type metadata accessor for DynamicArtworkLayoutEnvironment();
      LOBYTE(v152) = 0;
      sub_20C41D910(&qword_27C7BB140, type metadata accessor for DynamicArtworkLayoutEnvironment);
      v67 = v120;
      v85 = v132;
      sub_20C460840();
      v103 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB090, &unk_20C466C60) + 48);
      type metadata accessor for CGSize();
      LOBYTE(v152) = 1;
      sub_20C41D910(&qword_27C7BAC78, type metadata accessor for CGSize);
      v104 = v141;
      sub_20C460840();
      v147 = 0;
      (*(v131 + 8))(v104, v85);
    }

    (*(v148 + 8))(v66, v53);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v111 = v67;
    goto LABEL_24;
  }

  if (v55 == 6)
  {
    v146 = v54;
    LOBYTE(v152) = 6;
    sub_20C4199D8();
    v74 = v53;
    v75 = v150;
    sub_20C4607F0();
    v69 = v142;
    type metadata accessor for DynamicArtworkLayoutEnvironment();
    LOBYTE(v152) = 0;
    sub_20C41D910(&qword_27C7BB140, type metadata accessor for DynamicArtworkLayoutEnvironment);
    v83 = v134;
    sub_20C460840();
    v84 = v148;
    v102 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB090, &unk_20C466C60) + 48);
    type metadata accessor for CGSize();
    LOBYTE(v152) = 1;
    sub_20C41D910(&qword_27C7BAC78, type metadata accessor for CGSize);
    v96 = v137;
    sub_20C460840();
    (*(v133 + 8))(v52, v83);
    (*(v84 + 8))(v75, v74);
    swift_unknownObjectRelease();
LABEL_22:
    swift_storeEnumTagMultiPayload();
    v106 = v114;
    sub_20C41B8D4(v96, v114, type metadata accessor for DynamicImageAssetAction);
    v147 = 0;
    goto LABEL_25;
  }

  LOBYTE(v152) = 7;
  sub_20C419984();
  v82 = v138;
  sub_20C4607F0();
  v86 = v142;
  type metadata accessor for CGSize();
  sub_20C41D910(&qword_27C7BAC78, type metadata accessor for CGSize);
  v87 = v130;
  sub_20C460840();
  v88 = v148;
  v147 = 0;
  (*(v129 + 8))(v82, v87);
  (*(v88 + 8))(v150, v53);
  swift_unknownObjectRelease();
  v105 = v118;
  *v118 = v152;
  swift_storeEnumTagMultiPayload();
  v106 = v114;
  sub_20C41B8D4(v105, v114, type metadata accessor for DynamicImageAssetAction);
  v69 = v86;
LABEL_25:
  sub_20C41B8D4(v106, v69, type metadata accessor for DynamicImageAssetAction);
  return __swift_destroy_boxed_opaque_existential_1(v151);
}

uint64_t sub_20C41B8D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_20C41B93C()
{
  result = qword_27C7BB148;
  if (!qword_27C7BB148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB148);
  }

  return result;
}

uint64_t DynamicImageAssetAction.hash(into:)(uint64_t a1)
{
  v142 = a1;
  v1 = type metadata accessor for DynamicArtworkLayoutEnvironment();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v135 = &v129 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_20C45FC30();
  v140 = *(v138 - 8);
  v4 = *(v140 + 64);
  MEMORY[0x28223BE20](v138);
  v134 = &v129 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC18, &unk_20C464A00);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v132 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v131 = &v129 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v130 = &v129 - v13;
  MEMORY[0x28223BE20](v12);
  v129 = &v129 - v14;
  v139 = sub_20C45FD00();
  v136 = *(v139 - 8);
  v15 = *(v136 + 64);
  MEMORY[0x28223BE20](v139);
  v133 = &v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC10, &qword_20C462070);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v129 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v129 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v129 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v129 - v28;
  v137 = type metadata accessor for ImageAsset();
  v30 = *(*(v137 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v137);
  v33 = &v129 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v129 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v129 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = &v129 - v40;
  v42 = type metadata accessor for DynamicImageAssetAction();
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v45 = (&v129 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20C419920(v141, v45);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        v91 = *v45;
        v92 = v45[1];
        MEMORY[0x20F2FAEA0](7);
        return sub_20C40C1A4(v91, v92);
      }

      v72 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB090, &unk_20C466C60) + 48));
      v73 = *v72;
      v74 = v72[1];
      v75 = v135;
      sub_20C41B8D4(v45, v135, type metadata accessor for DynamicArtworkLayoutEnvironment);
      v76 = 6;
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v59 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0B0, &unk_20C462120) + 48));
        v60 = v59[4];
        v151 = v59[3];
        v152 = v60;
        v61 = v59[2];
        v149 = v59[1];
        v150 = v61;
        v148 = *v59;
        sub_20C41B8D4(v45, v33, type metadata accessor for ImageAsset);
        MEMORY[0x20F2FAEA0](4);
        sub_20C409B04(v33, v21, &qword_27C7BAC10, &qword_20C462070);
        v62 = v136;
        v63 = v139;
        if ((*(v136 + 48))(v21, 1, v139) == 1)
        {
          sub_20C460950();
        }

        else
        {
          v101 = v133;
          (*(v62 + 32))(v133, v21, v63);
          sub_20C460950();
          sub_20C41D910(&qword_28110B4D8, MEMORY[0x277D09D68]);
          sub_20C460460();
          (*(v62 + 8))(v101, v63);
        }

        v102 = v138;
        v103 = v140;
        v104 = v137;
        v105 = &v33[*(v137 + 20)];
        v106 = *v105;
        v107 = *(v105 + 1);
        sub_20C4604F0();
        v33[*(v104 + 24)];
        sub_20C4604F0();

        v108 = &v33[*(v104 + 28)];
        v109 = v132;
        sub_20C409B04(v108, v132, &qword_27C7BAC18, &unk_20C464A00);
        if ((*(v103 + 48))(v109, 1, v102) == 1)
        {
          sub_20C460950();
        }

        else
        {
          v126 = v134;
          (*(v103 + 32))(v134, v109, v102);
          sub_20C460950();
          sub_20C41D910(&qword_28110BEB0, MEMORY[0x277CC9260]);
          sub_20C460460();
          (*(v103 + 8))(v126, v102);
        }

        v145 = v150;
        v146 = v151;
        v147 = v152;
        v144 = v149;
        v143 = v148;
        ImageAssetCacheKey.hash(into:)();
        sub_20C40C57C(&v148);
        v90 = type metadata accessor for ImageAsset;
        v89 = v33;
        return sub_20C41ECCC(v89, v90);
      }

      v87 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB090, &unk_20C466C60) + 48));
      v73 = *v87;
      v74 = v87[1];
      v75 = v135;
      sub_20C41B8D4(v45, v135, type metadata accessor for DynamicArtworkLayoutEnvironment);
      v76 = 5;
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v47 = v140;
      v48 = v139;
      if (EnumCaseMultiPayload)
      {
        v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0E0, &qword_20C462130);
        v78 = (v45 + *(v77 + 48));
        v79 = v78[4];
        v151 = v78[3];
        v152 = v79;
        v80 = v78[2];
        v149 = v78[1];
        v150 = v80;
        v148 = *v78;
        v81 = (v45 + *(v77 + 64));
        v82 = *v81;
        v83 = v81[1];
        sub_20C41B8D4(v45, v39, type metadata accessor for ImageAsset);
        MEMORY[0x20F2FAEA0](1);
        sub_20C409B04(v39, v27, &qword_27C7BAC10, &qword_20C462070);
        v84 = v136;
        v85 = (*(v136 + 48))(v27, 1, v48);
        v86 = v138;
        if (v85 == 1)
        {
          sub_20C460950();
        }

        else
        {
          v118 = v133;
          (*(v84 + 32))(v133, v27, v48);
          sub_20C460950();
          sub_20C41D910(&qword_28110B4D8, MEMORY[0x277D09D68]);
          sub_20C460460();
          (*(v84 + 8))(v118, v48);
        }

        v119 = v137;
        v120 = &v39[*(v137 + 20)];
        v121 = *v120;
        v122 = *(v120 + 1);
        sub_20C4604F0();
        v39[*(v119 + 24)];
        sub_20C4604F0();

        v123 = &v39[*(v119 + 28)];
        v124 = v130;
        sub_20C409B04(v123, v130, &qword_27C7BAC18, &unk_20C464A00);
        if ((*(v47 + 48))(v124, 1, v86) == 1)
        {
          sub_20C460950();
        }

        else
        {
          v128 = v134;
          (*(v47 + 32))(v134, v124, v86);
          sub_20C460950();
          sub_20C41D910(&qword_28110BEB0, MEMORY[0x277CC9260]);
          sub_20C460460();
          (*(v47 + 8))(v128, v86);
        }

        v145 = v150;
        v146 = v151;
        v147 = v152;
        v144 = v149;
        v143 = v148;
        ImageAssetCacheKey.hash(into:)();
        sub_20C40C57C(&v148);
        sub_20C40C1A4(v82, v83);
        v90 = type metadata accessor for ImageAsset;
        v89 = v39;
      }

      else
      {
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0E0, &qword_20C462130);
        v50 = (v45 + *(v49 + 48));
        v51 = v50[4];
        v151 = v50[3];
        v152 = v51;
        v52 = v50[2];
        v149 = v50[1];
        v150 = v52;
        v148 = *v50;
        v53 = (v45 + *(v49 + 64));
        v54 = *v53;
        v55 = v53[1];
        sub_20C41B8D4(v45, v41, type metadata accessor for ImageAsset);
        MEMORY[0x20F2FAEA0](0);
        sub_20C409B04(v41, v29, &qword_27C7BAC10, &qword_20C462070);
        v56 = v136;
        v57 = (*(v136 + 48))(v29, 1, v48);
        v58 = v138;
        if (v57 == 1)
        {
          sub_20C460950();
        }

        else
        {
          v94 = v133;
          (*(v56 + 32))(v133, v29, v48);
          sub_20C460950();
          sub_20C41D910(&qword_28110B4D8, MEMORY[0x277D09D68]);
          sub_20C460460();
          (*(v56 + 8))(v94, v48);
        }

        v95 = v137;
        v96 = &v41[*(v137 + 20)];
        v97 = *v96;
        v98 = *(v96 + 1);
        sub_20C4604F0();
        v41[*(v95 + 24)];
        sub_20C4604F0();

        v99 = &v41[*(v95 + 28)];
        v100 = v129;
        sub_20C409B04(v99, v129, &qword_27C7BAC18, &unk_20C464A00);
        if ((*(v47 + 48))(v100, 1, v58) == 1)
        {
          sub_20C460950();
        }

        else
        {
          v125 = v134;
          (*(v47 + 32))(v134, v100, v58);
          sub_20C460950();
          sub_20C41D910(&qword_28110BEB0, MEMORY[0x277CC9260]);
          sub_20C460460();
          (*(v47 + 8))(v125, v58);
        }

        v145 = v150;
        v146 = v151;
        v147 = v152;
        v144 = v149;
        v143 = v148;
        ImageAssetCacheKey.hash(into:)();
        sub_20C40C57C(&v148);
        sub_20C40C1A4(v54, v55);
        v90 = type metadata accessor for ImageAsset;
        v89 = v41;
      }

      return sub_20C41ECCC(v89, v90);
    }

    v64 = v140;
    v65 = v139;
    if (EnumCaseMultiPayload == 2)
    {
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0C8, &unk_20C4648E0);
      v67 = *(v45 + *(v66 + 48));
      v68 = (v45 + *(v66 + 64));
      v69 = v68[4];
      v151 = v68[3];
      v152 = v69;
      v70 = v68[2];
      v149 = v68[1];
      v150 = v70;
      v148 = *v68;
      sub_20C41B8D4(v45, v36, type metadata accessor for ImageAsset);
      MEMORY[0x20F2FAEA0](2);
      sub_20C409B04(v36, v24, &qword_27C7BAC10, &qword_20C462070);
      v71 = v136;
      if ((*(v136 + 48))(v24, 1, v65) == 1)
      {
        sub_20C460950();
      }

      else
      {
        v110 = v133;
        (*(v71 + 32))(v133, v24, v65);
        sub_20C460950();
        sub_20C41D910(&qword_28110B4D8, MEMORY[0x277D09D68]);
        sub_20C460460();
        (*(v71 + 8))(v110, v65);
      }

      v111 = v137;
      v112 = &v36[*(v137 + 20)];
      v113 = *v112;
      v114 = *(v112 + 1);
      sub_20C4604F0();
      v36[*(v111 + 24)];
      sub_20C4604F0();

      v115 = &v36[*(v111 + 28)];
      v116 = v131;
      sub_20C409B04(v115, v131, &qword_27C7BAC18, &unk_20C464A00);
      v117 = v138;
      if ((*(v64 + 48))(v116, 1, v138) == 1)
      {
        sub_20C460950();
      }

      else
      {
        v127 = v134;
        (*(v64 + 32))(v134, v116, v117);
        sub_20C460950();
        sub_20C41D910(&qword_28110BEB0, MEMORY[0x277CC9260]);
        sub_20C460460();
        (*(v64 + 8))(v127, v117);
      }

      MEMORY[0x20F2FAEA0](v67);
      v145 = v150;
      v146 = v151;
      v147 = v152;
      v144 = v149;
      v143 = v148;
      ImageAssetCacheKey.hash(into:)();
      sub_20C40C57C(&v148);
      v90 = type metadata accessor for ImageAsset;
      v89 = v36;
      return sub_20C41ECCC(v89, v90);
    }

    v88 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB090, &unk_20C466C60) + 48));
    v73 = *v88;
    v74 = v88[1];
    v75 = v135;
    sub_20C41B8D4(v45, v135, type metadata accessor for DynamicArtworkLayoutEnvironment);
    v76 = 3;
  }

  MEMORY[0x20F2FAEA0](v76);
  DynamicArtworkLayoutEnvironment.hash(into:)();
  sub_20C40C1A4(v73, v74);
  v89 = v75;
  v90 = type metadata accessor for DynamicArtworkLayoutEnvironment;
  return sub_20C41ECCC(v89, v90);
}

uint64_t DynamicImageAssetAction.hashValue.getter()
{
  sub_20C460930();
  DynamicImageAssetAction.hash(into:)(v1);
  return sub_20C460970();
}

uint64_t sub_20C41CC10()
{
  sub_20C460930();
  DynamicImageAssetAction.hash(into:)(v1);
  return sub_20C460970();
}

uint64_t sub_20C41CC54()
{
  sub_20C460930();
  DynamicImageAssetAction.hash(into:)(v1);
  return sub_20C460970();
}

BOOL _s12FitnessAsset012DynamicImageB6ActionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v120 = a1;
  v3 = type metadata accessor for DynamicArtworkLayoutEnvironment();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v113 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v112 = &v109 - v8;
  MEMORY[0x28223BE20](v7);
  v111 = &v109 - v9;
  v10 = type metadata accessor for ImageAsset();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v115 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v116 = &v109 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v114 = &v109 - v17;
  MEMORY[0x28223BE20](v16);
  v110 = &v109 - v18;
  v19 = type metadata accessor for DynamicImageAssetAction();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = (&v109 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = MEMORY[0x28223BE20](v21);
  v118 = &v109 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v117 = &v109 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v119 = &v109 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v109 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v109 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v109 - v37;
  MEMORY[0x28223BE20](v36);
  v40 = &v109 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB250, &qword_20C462D28);
  v42 = *(*(v41 - 8) + 64);
  v43 = MEMORY[0x28223BE20](v41 - 8);
  v45 = &v109 - v44;
  v46 = (&v109 + *(v43 + 56) - v44);
  sub_20C419920(v120, &v109 - v44);
  sub_20C419920(a2, v46);
  v120 = v45;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v48 = v120;
      if (EnumCaseMultiPayload)
      {
        sub_20C419920(v120, v38);
        v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0E0, &qword_20C462130);
        v85 = *(v84 + 48);
        v86 = *&v38[v85 + 64];
        v139 = *&v38[v85 + 48];
        v140 = v86;
        v87 = *&v38[v85 + 32];
        v137 = *&v38[v85 + 16];
        v138 = v87;
        v136 = *&v38[v85];
        v88 = *(v84 + 64);
        v55 = *&v38[v88];
        v54 = *&v38[v88 + 8];
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_20C40C57C(&v136);
          v56 = type metadata accessor for ImageAsset;
          v57 = v38;
          goto LABEL_36;
        }

        v89 = *(v46 + v85 + 48);
        v133 = *(v46 + v85 + 32);
        v134 = v89;
        v135 = *(v46 + v85 + 64);
        v90 = *(v46 + v85 + 16);
        v131 = *(v46 + v85);
        v132 = v90;
        v81 = *(v46 + v88);
        v80 = *(v46 + v88 + 8);
        v91 = v114;
        sub_20C41B8D4(v46, v114, type metadata accessor for ImageAsset);
        v92 = static ImageAsset.== infix(_:_:)(v38, v91);
        sub_20C41ECCC(v38, type metadata accessor for ImageAsset);
        if (v92)
        {
          v128 = v138;
          v129 = v139;
          v130 = v140;
          v126 = v136;
          v127 = v137;
          v123 = v133;
          v124 = v134;
          v125 = v135;
          v121 = v131;
          v122 = v132;
          v93 = _s12FitnessAsset05ImageB8CacheKeyV2eeoiySbAC_ACtFZ_0(&v126, &v121);
          v94 = v91;
          goto LABEL_40;
        }

        v78 = v91;
      }

      else
      {
        sub_20C419920(v120, v40);
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0E0, &qword_20C462130);
        v50 = *(v49 + 48);
        v51 = *&v40[v50 + 64];
        v139 = *&v40[v50 + 48];
        v140 = v51;
        v52 = *&v40[v50 + 32];
        v137 = *&v40[v50 + 16];
        v138 = v52;
        v136 = *&v40[v50];
        v53 = *(v49 + 64);
        v55 = *&v40[v53];
        v54 = *&v40[v53 + 8];
        if (swift_getEnumCaseMultiPayload())
        {
          sub_20C40C57C(&v136);
          v56 = type metadata accessor for ImageAsset;
          v57 = v40;
LABEL_36:
          sub_20C41ECCC(v57, v56);
          goto LABEL_37;
        }

        v103 = *(v46 + v50 + 48);
        v133 = *(v46 + v50 + 32);
        v134 = v103;
        v135 = *(v46 + v50 + 64);
        v104 = *(v46 + v50 + 16);
        v131 = *(v46 + v50);
        v132 = v104;
        v81 = *(v46 + v53);
        v80 = *(v46 + v53 + 8);
        v105 = v110;
        sub_20C41B8D4(v46, v110, type metadata accessor for ImageAsset);
        v106 = static ImageAsset.== infix(_:_:)(v40, v105);
        sub_20C41ECCC(v40, type metadata accessor for ImageAsset);
        if (v106)
        {
          v128 = v138;
          v129 = v139;
          v130 = v140;
          v126 = v136;
          v127 = v137;
          v123 = v133;
          v124 = v134;
          v125 = v135;
          v121 = v131;
          v122 = v132;
          v93 = _s12FitnessAsset05ImageB8CacheKeyV2eeoiySbAC_ACtFZ_0(&v126, &v121);
          v94 = v105;
LABEL_40:
          sub_20C41ECCC(v94, type metadata accessor for ImageAsset);
          sub_20C40C57C(&v131);
          sub_20C40C57C(&v136);
          if (v93)
          {
            goto LABEL_41;
          }

          goto LABEL_50;
        }

        v78 = v105;
      }

      goto LABEL_49;
    }

    v48 = v120;
    if (EnumCaseMultiPayload == 2)
    {
      sub_20C419920(v120, v35);
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0C8, &unk_20C4648E0);
      v68 = *(v67 + 48);
      v69 = v35[v68];
      v70 = *(v67 + 64);
      v71 = *&v35[v70 + 64];
      v139 = *&v35[v70 + 48];
      v140 = v71;
      v72 = *&v35[v70 + 32];
      v137 = *&v35[v70 + 16];
      v138 = v72;
      v136 = *&v35[v70];
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_20C40C57C(&v136);
        v56 = type metadata accessor for ImageAsset;
        v57 = v35;
        goto LABEL_36;
      }

      v73 = *(v46 + v68);
      v74 = *(v46 + v70 + 48);
      v133 = *(v46 + v70 + 32);
      v134 = v74;
      v135 = *(v46 + v70 + 64);
      v75 = *(v46 + v70 + 16);
      v131 = *(v46 + v70);
      v132 = v75;
      v76 = v116;
      sub_20C41B8D4(v46, v116, type metadata accessor for ImageAsset);
      v77 = static ImageAsset.== infix(_:_:)(v35, v76);
      sub_20C41ECCC(v35, type metadata accessor for ImageAsset);
      if (v77 && v69 == v73)
      {
        v128 = v138;
        v129 = v139;
        v130 = v140;
        v126 = v136;
        v127 = v137;
        v123 = v133;
        v124 = v134;
        v125 = v135;
        v121 = v131;
        v122 = v132;
        v66 = _s12FitnessAsset05ImageB8CacheKeyV2eeoiySbAC_ACtFZ_0(&v126, &v121);
        sub_20C41ECCC(v76, type metadata accessor for ImageAsset);
        sub_20C40C57C(&v131);
        sub_20C40C57C(&v136);
LABEL_45:
        sub_20C41ECCC(v48, type metadata accessor for DynamicImageAssetAction);
        return v66;
      }

      v78 = v76;
LABEL_49:
      sub_20C41ECCC(v78, type metadata accessor for ImageAsset);
      sub_20C40C57C(&v136);
      sub_20C40C57C(&v131);
LABEL_50:
      v107 = v48;
      goto LABEL_51;
    }

    sub_20C419920(v120, v32);
    v98 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB090, &unk_20C466C60) + 48);
    v55 = *&v32[v98];
    v54 = *&v32[v98 + 8];
    v99 = swift_getEnumCaseMultiPayload();
    if (v99 == 3)
    {
      v81 = *(v46 + v98);
      v80 = *(v46 + v98 + 8);
      v82 = v46;
      v83 = v111;
LABEL_28:
      sub_20C41B8D4(v82, v83, type metadata accessor for DynamicArtworkLayoutEnvironment);
      v100 = _s12FitnessAsset31DynamicArtworkLayoutEnvironmentV2eeoiySbAC_ACtFZ_0(v32, v83);
      sub_20C41ECCC(v83, type metadata accessor for DynamicArtworkLayoutEnvironment);
      sub_20C41ECCC(v32, type metadata accessor for DynamicArtworkLayoutEnvironment);
      if ((v100 & 1) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_41;
    }

    goto LABEL_30;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v48 = v120;
      v32 = v118;
      sub_20C419920(v120, v118);
      v79 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB090, &unk_20C466C60) + 48);
      v55 = *&v32[v79];
      v54 = *&v32[v79 + 8];
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v81 = *(v46 + v79);
        v80 = *(v46 + v79 + 8);
        v82 = v46;
        v83 = v113;
        goto LABEL_28;
      }

LABEL_30:
      v56 = type metadata accessor for DynamicArtworkLayoutEnvironment;
      v57 = v32;
      goto LABEL_36;
    }

    v48 = v120;
    sub_20C419920(v120, v23);
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      v101 = *v23 == *v46;
      v102 = v23[1] == v46[1];
      goto LABEL_42;
    }

LABEL_37:
    sub_20C41EC64(v48);
    return 0;
  }

  if (EnumCaseMultiPayload != 4)
  {
    v48 = v120;
    v32 = v117;
    sub_20C419920(v120, v117);
    v95 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB090, &unk_20C466C60) + 48);
    v55 = *&v32[v95];
    v54 = *&v32[v95 + 8];
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v81 = *(v46 + v95);
      v80 = *(v46 + v95 + 8);
      v96 = v112;
      sub_20C41B8D4(v46, v112, type metadata accessor for DynamicArtworkLayoutEnvironment);
      v97 = _s12FitnessAsset31DynamicArtworkLayoutEnvironmentV2eeoiySbAC_ACtFZ_0(v32, v96);
      sub_20C41ECCC(v96, type metadata accessor for DynamicArtworkLayoutEnvironment);
      sub_20C41ECCC(v32, type metadata accessor for DynamicArtworkLayoutEnvironment);
      if ((v97 & 1) == 0)
      {
        goto LABEL_50;
      }

LABEL_41:
      v101 = v55 == v81;
      v102 = v54 == v80;
LABEL_42:
      v66 = v102 && v101;
      goto LABEL_45;
    }

    goto LABEL_30;
  }

  v58 = v119;
  sub_20C419920(v120, v119);
  v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0B0, &unk_20C462120) + 48);
  v60 = *(v58 + v59 + 64);
  v139 = *(v58 + v59 + 48);
  v140 = v60;
  v61 = *(v58 + v59 + 32);
  v137 = *(v58 + v59 + 16);
  v138 = v61;
  v136 = *(v58 + v59);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_20C40C57C(&v136);
    sub_20C41ECCC(v58, type metadata accessor for ImageAsset);
    v48 = v120;
    goto LABEL_37;
  }

  v62 = *(v46 + v59 + 48);
  v133 = *(v46 + v59 + 32);
  v134 = v62;
  v135 = *(v46 + v59 + 64);
  v63 = *(v46 + v59 + 16);
  v131 = *(v46 + v59);
  v132 = v63;
  v64 = v115;
  sub_20C41B8D4(v46, v115, type metadata accessor for ImageAsset);
  v65 = static ImageAsset.== infix(_:_:)(v58, v64);
  sub_20C41ECCC(v58, type metadata accessor for ImageAsset);
  if (!v65)
  {
    sub_20C41ECCC(v64, type metadata accessor for ImageAsset);
    sub_20C40C57C(&v136);
    sub_20C40C57C(&v131);
    v107 = v120;
LABEL_51:
    sub_20C41ECCC(v107, type metadata accessor for DynamicImageAssetAction);
    return 0;
  }

  v128 = v138;
  v129 = v139;
  v130 = v140;
  v126 = v136;
  v127 = v137;
  v123 = v133;
  v124 = v134;
  v125 = v135;
  v121 = v131;
  v122 = v132;
  v66 = _s12FitnessAsset05ImageB8CacheKeyV2eeoiySbAC_ACtFZ_0(&v126, &v121);
  sub_20C41ECCC(v64, type metadata accessor for ImageAsset);
  sub_20C40C57C(&v131);
  sub_20C40C57C(&v136);
  sub_20C41ECCC(v120, type metadata accessor for DynamicImageAssetAction);
  return v66;
}

uint64_t sub_20C41D910(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_20C41D9A8()
{
  sub_20C41DA60();
  if (v0 <= 0x3F)
  {
    sub_20C41DADC();
    if (v1 <= 0x3F)
    {
      sub_20C41DB50();
      if (v2 <= 0x3F)
      {
        sub_20C41DBC4();
        if (v3 <= 0x3F)
        {
          sub_20C41DC30();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_20C41DA60()
{
  if (!qword_28110BBE0[0])
  {
    type metadata accessor for ImageAsset();
    type metadata accessor for CGSize();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, qword_28110BBE0);
    }
  }
}

void sub_20C41DADC()
{
  if (!qword_27C7BB168)
  {
    type metadata accessor for ImageAsset();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27C7BB168);
    }
  }
}

void sub_20C41DB50()
{
  if (!qword_27C7BB170)
  {
    type metadata accessor for DynamicArtworkLayoutEnvironment();
    type metadata accessor for CGSize();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C7BB170);
    }
  }
}

void sub_20C41DBC4()
{
  if (!qword_28110BCB8[0])
  {
    type metadata accessor for ImageAsset();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_28110BCB8);
    }
  }
}

void sub_20C41DC30()
{
  if (!qword_28110B3E8)
  {
    type metadata accessor for CGSize();
    if (!v1)
    {
      atomic_store(v0, &qword_28110B3E8);
    }
  }
}

uint64_t getEnumTagSinglePayload for DynamicImageAssetAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DynamicImageAssetAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_20C41DE4C()
{
  result = qword_27C7BB178;
  if (!qword_27C7BB178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB178);
  }

  return result;
}

unint64_t sub_20C41DEA4()
{
  result = qword_27C7BB180;
  if (!qword_27C7BB180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB180);
  }

  return result;
}

unint64_t sub_20C41DEFC()
{
  result = qword_27C7BB188;
  if (!qword_27C7BB188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB188);
  }

  return result;
}

unint64_t sub_20C41DF54()
{
  result = qword_27C7BB190;
  if (!qword_27C7BB190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB190);
  }

  return result;
}

unint64_t sub_20C41DFAC()
{
  result = qword_27C7BB198;
  if (!qword_27C7BB198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB198);
  }

  return result;
}

unint64_t sub_20C41E004()
{
  result = qword_27C7BB1A0;
  if (!qword_27C7BB1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB1A0);
  }

  return result;
}

unint64_t sub_20C41E05C()
{
  result = qword_27C7BB1A8;
  if (!qword_27C7BB1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB1A8);
  }

  return result;
}

unint64_t sub_20C41E0B4()
{
  result = qword_27C7BB1B0;
  if (!qword_27C7BB1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB1B0);
  }

  return result;
}

unint64_t sub_20C41E10C()
{
  result = qword_27C7BB1B8;
  if (!qword_27C7BB1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB1B8);
  }

  return result;
}

unint64_t sub_20C41E164()
{
  result = qword_27C7BB1C0;
  if (!qword_27C7BB1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB1C0);
  }

  return result;
}