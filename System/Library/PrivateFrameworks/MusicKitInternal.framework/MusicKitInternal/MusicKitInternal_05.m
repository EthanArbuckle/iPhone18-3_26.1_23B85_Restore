void sub_1D4EC289C()
{
  v2 = v0;
  v3 = sub_1D560C0A8();
  v4 = OUTLINED_FUNCTION_4(v3);
  v46 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v45 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - v14;
  v16 = sub_1D56140F8();
  v17 = OUTLINED_FUNCTION_4(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_38_6();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v45 - v26;
  sub_1D4E69910(v2, &v45 - v26, &qword_1EC7E9CA0, &unk_1D561A0C0);
  if (__swift_getEnumTagSinglePayload(v27, 1, v16) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v19 + 32))(v1, v27, v16);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_9_5();
    sub_1D4EC4008(v28, v29);
    sub_1D5614CB8();
    (*(v19 + 8))(v1, v16);
  }

  v30 = type metadata accessor for PlaylistCollaboratorPropertyProvider();
  v31 = (v2 + v30[5]);
  if (v31[1])
  {
    v32 = *v31;
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_40_6(v30[6]);
  if (!v33)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_40_6(v30[7]);
  if (!v33)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_40_6(v30[8]);
  if (!v33)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_40_6(v30[9]);
  if (!v33)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  v34 = (v2 + v30[10]);
  if (v34[1])
  {
    v35 = *v34;
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4E69910(v2 + v30[11], v15, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_43_0(v15);
  if (v33)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v37 = v45;
    v36 = v46;
    (*(v46 + 32))(v45, v15, v3);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_8_5();
    sub_1D4EC4008(v38, v39);
    sub_1D5614CB8();
    (*(v36 + 8))(v37, v3);
  }

  v40 = *(v2 + v30[12]);
  if (v40 == 2)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v40 & 1);
  }

  OUTLINED_FUNCTION_32_2(v30[13]);
  sub_1D4F070FC();
  v41 = v30[14];
  sub_1D560D838();
  sub_1D4EC4008(&qword_1EDD53DC0, MEMORY[0x1E6974F58]);
  OUTLINED_FUNCTION_42();
  v42 = v30[15];
  sub_1D5610088();
  sub_1D4EC4008(&qword_1EDD53358, MEMORY[0x1E6975BC8]);
  OUTLINED_FUNCTION_42();
  v43 = (v2 + v30[16]);
  if (v43[1])
  {
    v44 = *v43;
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_32_2(v30[17]);
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2(v30[18]);
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2(v30[19]);
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2(v30[20]);
  sub_1D4F31AC0();
}

uint64_t sub_1D4EC2DB0()
{
  sub_1D56162D8();
  sub_1D4EC289C();
  return sub_1D5616328();
}

void (*sub_1D4EC2DF8(void *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  sub_1D4EC12F0(a2, v5);
  return sub_1D4EC2E64;
}

void sub_1D4EC2E64(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 64);
  v3 = *(*a1 + 72);
  if (a2)
  {
    sub_1D4E69910(*a1, v2 + 32, &qword_1EC7E9F98, &qword_1D561C420);

    sub_1D4EC1994(v2 + 32);
    sub_1D4E50004(v2, &qword_1EC7E9F98, &qword_1D561C420);
  }

  else
  {

    sub_1D4EC1994(v2);
  }

  free(v2);
}

uint64_t sub_1D4EC2F24()
{
  sub_1D56162D8();
  sub_1D4EC289C();
  return sub_1D5616328();
}

uint64_t sub_1D4EC2F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D4EC4008(&qword_1EC7E9F58, type metadata accessor for PlaylistCollaboratorPropertyProvider);

  return MEMORY[0x1EEDD02B8](a1, a4, a3, v7);
}

uint64_t sub_1D4EC3000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = sub_1D560D838();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D4EC3074(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  v5 = sub_1D560D838();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1D4EC30E8(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 56);
  return result;
}

uint64_t sub_1D4EC310C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 60);
  v5 = sub_1D5610088();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D4EC3180(uint64_t a1)
{
  v2 = (v1 + *(a1 + 64));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1D4EC31E8(uint64_t a1)
{
  v2 = sub_1D4EC4008(&qword_1EC7E9F58, type metadata accessor for PlaylistCollaboratorPropertyProvider);

  return MEMORY[0x1EEDD02B0](a1, v2);
}

uint64_t sub_1D4EC3264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D4EC4008(&qword_1EC7E9D68, type metadata accessor for PlaylistCollaboratorPropertyProvider);

  return MEMORY[0x1EEDD0328](a1, a3, a2, a4, v8);
}

uint64_t sub_1D4EC32F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D4EC4008(&qword_1EC7E9F50, type metadata accessor for PlaylistCollaboratorPropertyProvider);

  return MEMORY[0x1EEDD0320](a1, a2, a3, v6);
}

uint64_t sub_1D4EC337C(uint64_t a1, id *a2)
{
  result = sub_1D5614D48();
  *a2 = 0;
  return result;
}

uint64_t sub_1D4EC33F4(uint64_t a1, id *a2)
{
  v3 = sub_1D5614D58();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1D4EC3474()
{
  sub_1D5614D68();
  v0 = sub_1D5614D38();

  return v0;
}

uint64_t sub_1D4EC34AC@<X0>(uint64_t *a1@<X8>)
{
  result = OUTLINED_FUNCTION_0_8();
  *a1 = result;
  return result;
}

uint64_t sub_1D4EC34D4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_1D560C518();
}

uint64_t sub_1D4EC3588()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1D560C538();
}

uint64_t sub_1D4EC35D4()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1D560C528();
}

uint64_t sub_1D4EC362C()
{
  sub_1D56162D8();
  v1 = *v0;
  swift_getWitnessTable();
  sub_1D560C528();
  return sub_1D5616328();
}

uint64_t sub_1D4EC3694(uint64_t a1)
{
  v2 = sub_1D4EC4008(&qword_1EDD52A20, type metadata accessor for ICError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1D4EC3700(uint64_t a1)
{
  v2 = sub_1D4EC4008(&qword_1EDD52A20, type metadata accessor for ICError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1D4EC376C(uint64_t a1)
{
  v2 = sub_1D4EC4008(&qword_1EDD52A10, type metadata accessor for ICError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

void sub_1D4EC37D8()
{
  v1 = OUTLINED_FUNCTION_7_13();
  nullsub_1(v1, v2);
  *v0 = v3;
}

uint64_t sub_1D4EC3800@<X0>(uint64_t *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_0_8();
  *a1 = result;
  return result;
}

uint64_t sub_1D4EC3834@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D54E4BA4(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1D4EC3864(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_3_2(a1);
  result = sub_1D5002190(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1D4EC388C(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_3_2(a1);
  result = sub_1D54E4BCC(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1D4EC38BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D54E4BA0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1D4EC38F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D54E4B9C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1D4EC393C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D54E4BB8(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1D4EC3994()
{
  v0 = sub_1D5614D68();
  v1 = MEMORY[0x1DA6EAD20](v0);

  return v1;
}

uint64_t sub_1D4EC39CC()
{
  sub_1D5614D68();
  sub_1D5614E28();
}

uint64_t sub_1D4EC3A20()
{
  sub_1D5614D68();
  sub_1D56162D8();
  sub_1D5614E28();
  v0 = sub_1D5616328();

  return v0;
}

uint64_t sub_1D4EC3AC0(uint64_t a1)
{
  v2 = sub_1D4EC4008(&qword_1EDD52A10, type metadata accessor for ICError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1D4EC3B2C(uint64_t a1)
{
  v2 = sub_1D4EC4008(&qword_1EDD52A10, type metadata accessor for ICError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1D4EC3B98(void *a1, uint64_t a2)
{
  v4 = sub_1D4EC4008(&qword_1EDD52A10, type metadata accessor for ICError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1D4EC3C28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4EC4008(&qword_1EDD52A10, type metadata accessor for ICError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1D4EC3CA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D54E4BC0();
  *a1 = result;
  return result;
}

uint64_t sub_1D4EC3CDC(uint64_t a1)
{
  v2 = sub_1D4EC4008(&qword_1EC7E9DC0, type metadata accessor for MusicKit_SoftLinking_MPCPlayerEnqueueError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1D4EC3D48(uint64_t a1)
{
  v2 = sub_1D4EC4008(&qword_1EC7E9DC0, type metadata accessor for MusicKit_SoftLinking_MPCPlayerEnqueueError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1D4EC3DB4(void *a1, uint64_t a2)
{
  v4 = sub_1D4EC4008(&qword_1EC7E9DC0, type metadata accessor for MusicKit_SoftLinking_MPCPlayerEnqueueError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1D4EC3E44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4EC4008(&qword_1EC7E9DC0, type metadata accessor for MusicKit_SoftLinking_MPCPlayerEnqueueError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1D4EC3EC0()
{
  v2 = *v0;
  sub_1D56162D8();
  sub_1D5614CB8();
  return sub_1D5616328();
}

_DWORD *sub_1D4EC3F2C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1D4EC3F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D4EC4008(&qword_1EDD52A10, type metadata accessor for ICError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1D4EC4008(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D4EC40E0()
{
  OUTLINED_FUNCTION_7_13();
  result = sub_1D4EC4108();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4EC410C(uint64_t a1)
{
  v2 = sub_1D4EC4008(&qword_1EC7E9F60, type metadata accessor for MSVAutoBugCaptureDomain);
  v3 = sub_1D4EC4008(&qword_1EC7E9F68, type metadata accessor for MSVAutoBugCaptureDomain);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D4EC41C8(uint64_t a1)
{
  v2 = sub_1D4EC4008(&qword_1EC7E9D88, type metadata accessor for MusicKit_SoftLinking_MPCPlayerEnqueueError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1D4EC4234(uint64_t a1)
{
  v2 = sub_1D4EC4008(&qword_1EC7E9D88, type metadata accessor for MusicKit_SoftLinking_MPCPlayerEnqueueError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1D4EC42A0(uint64_t a1)
{
  v2 = sub_1D4EC4008(&qword_1EC7E9DC0, type metadata accessor for MusicKit_SoftLinking_MPCPlayerEnqueueError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

unint64_t sub_1D4EC44F0()
{
  result = qword_1EC7E9DB0;
  if (!qword_1EC7E9DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7E9DB0);
  }

  return result;
}

uint64_t sub_1D4EC45D4(void *a1, void *a2)
{
  sub_1D4EC5648();
  v4 = a1;
  v5 = a2;
  LOBYTE(a1) = sub_1D5615848();

  return a1 & 1;
}

uint64_t sub_1D4EC463C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1D5614D38();

  *a2 = v5;
  return result;
}

uint64_t sub_1D4EC4684(uint64_t a1)
{
  v2 = sub_1D4EC4008(&qword_1EDD52690, type metadata accessor for FileAttributeKey);
  v3 = sub_1D4EC4008(&qword_1EC7EA258, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D4EC4740(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

unint64_t sub_1D4EC5648()
{
  result = qword_1EC7E9F70;
  if (!qword_1EC7E9F70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC7E9F70);
  }

  return result;
}

uint64_t sub_1D4EC568C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaylistCollaboratorPropertyProvider();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
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

uint64_t sub_1D4EC5738(uint64_t a1)
{
  v2 = type metadata accessor for PlaylistCollaboratorPropertyProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D4EC5794(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1D4EC5984(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D4EC59A4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_1D4EC5ADC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D4EC5AFC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

uint64_t sub_1D4EC5B58(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 200))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_1D4EC5BAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 200) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 200) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_20_14()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_34_6()
{
}

uint64_t Playlist.GeoLocation.convertToCloudGeoLocationAttribute()()
{
  v1 = sub_1D5610AE8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  v9 = *v0;
  v10 = v0[1];
  v11 = v0[2];
  v12 = v0[3];
  v13 = v0[4];

  sub_1D5610AC8();
  (*(v2 + 16))(v6, v8, v1);
  sub_1D56106F8();
  return (*(v2 + 8))(v8, v1);
}

uint64_t Genre.Kind.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t sub_1D4EC6038()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t ResourceType.convertToGenreKind()@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D5610088();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - v10;
  (*(v5 + 16))(&v17 - v10, v2, v4);
  sub_1D560FE78();
  sub_1D4EC620C();
  v12 = OUTLINED_FUNCTION_0_11();
  v13 = *(v5 + 8);
  v13(v9, v4);
  if (v12)
  {
    result = (v13)(v11, v4);
    v15 = 0;
  }

  else
  {
    sub_1D560FFC8();
    v16 = OUTLINED_FUNCTION_0_11();
    v13(v9, v4);
    result = (v13)(v11, v4);
    if (v16)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }
  }

  *a1 = v15;
  return result;
}

unint64_t sub_1D4EC620C()
{
  result = qword_1EDD53350;
  if (!qword_1EDD53350)
  {
    sub_1D5610088();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD53350);
  }

  return result;
}

unint64_t sub_1D4EC6268()
{
  result = qword_1EC7EA320;
  if (!qword_1EC7EA320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA328, &qword_1D561BF80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA320);
  }

  return result;
}

unint64_t sub_1D4EC62D0()
{
  result = qword_1EC7EA330;
  if (!qword_1EC7EA330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA330);
  }

  return result;
}

uint64_t _s4KindOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s4KindOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D4EC6488()
{
  v0 = sub_1D5613158();
  __swift_allocate_value_buffer(v0, qword_1EC7EA338);
  v1 = OUTLINED_FUNCTION_71();
  __swift_project_value_buffer(v1, v2);
  v3 = *MEMORY[0x1E6976890];
  OUTLINED_FUNCTION_24_0(v0);
  v5 = *(v4 + 104);

  return v5();
}

uint64_t static TVSeason.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC7E8968 != -1)
  {
    swift_once();
  }

  v2 = sub_1D5613158();
  __swift_project_value_buffer(v2, qword_1EC7EA338);
  OUTLINED_FUNCTION_24_0(v2);
  v4 = *(v3 + 16);

  return v4(a1);
}

void TVSeason.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)()
{
  OUTLINED_FUNCTION_47();
  v173 = v0;
  v179 = v1;
  v3 = v2;
  v5 = v4;
  v174 = v6;
  v170 = sub_1D5612B88();
  v7 = OUTLINED_FUNCTION_4(v170);
  v188 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v169 = v12 - v11;
  OUTLINED_FUNCTION_70_0();
  v13 = sub_1D5610088();
  v14 = OUTLINED_FUNCTION_4(v13);
  v183 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v182 = v19 - v18;
  OUTLINED_FUNCTION_70_0();
  v177 = sub_1D560D838();
  v20 = OUTLINED_FUNCTION_4(v177);
  v176 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v181 = v25 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA350, &unk_1D561C060);
  OUTLINED_FUNCTION_22(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  v186 = &v167 - v30;
  OUTLINED_FUNCTION_70_0();
  v31 = type metadata accessor for TVSeasonPropertyProvider();
  v32 = OUTLINED_FUNCTION_14(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_59_0();
  v167 = v35 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v189 = &v167 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v40 = OUTLINED_FUNCTION_22(v39);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_59_0();
  v45 = v43 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v167 - v47;
  v172 = sub_1D5612478();
  v49 = OUTLINED_FUNCTION_4(v172);
  v171 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_5();
  v55 = v54 - v53;
  v178 = v3;
  sub_1D560F7E8();
  v184 = sub_1D4EC7654();
  v187 = sub_1D5614C68();

  sub_1D5610068();
  __swift_storeEnumTagSinglePayload(v48, 0, 1, v13);
  sub_1D5610068();
  v185 = v13;
  __swift_storeEnumTagSinglePayload(v45, 0, 1, v13);
  v175 = v55;
  v180 = v5;
  sub_1D560D4D8();
  sub_1D4E765C8(v45, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E765C8(v48, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4EC76A8(v179, v190);
  v168 = v31;
  if (!v190[3])
  {
    sub_1D4E765C8(v190, &qword_1EC7EEC40, &unk_1D561C070);
    v191 = 0u;
    v192 = 0u;
    v193 = 0;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3A8, &unk_1D561C1E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v193 = 0;
    v191 = 0u;
    v192 = 0u;
    goto LABEL_8;
  }

  if (!*(&v192 + 1))
  {
LABEL_8:
    sub_1D4E765C8(&v191, &qword_1EC7EA368, &unk_1D5629620);
    goto LABEL_9;
  }

  sub_1D4E48324(&v191, v194);
  __swift_project_boxed_opaque_existential_1(v194, v195);
  sub_1D5612B18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  v56 = v186;
  if (swift_dynamicCast())
  {
    v57 = OUTLINED_FUNCTION_60_0();
    __swift_storeEnumTagSinglePayload(v57, v58, v59, v31);
    v60 = v167;
    sub_1D4ECCBF4();
    OUTLINED_FUNCTION_37_8();
    v61 = v189;
    sub_1D4ECCC4C();
    v62 = v60 + v31[29];
    v63 = v181;
    sub_1D560D718();
    (*(v176 + 40))(&v61[v31[29]], v63, v177);
    v64 = v182;
    sub_1D5612468();
    (*(v183 + 40))(&v61[v31[30]], v64, v185);
    v65 = sub_1D5612458();
    v67 = v66;
    OUTLINED_FUNCTION_36_2();
    sub_1D4ECCBA0(v60, v68);
    v69 = &v61[v31[31]];
    v70 = v69[1];

    *v69 = v65;
    v69[1] = v67;
    __swift_destroy_boxed_opaque_existential_1(v194);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v163, v164, v165, v31);
  sub_1D4E765C8(v56, &qword_1EC7EA350, &unk_1D561C060);
  __swift_destroy_boxed_opaque_existential_1(v194);
LABEL_9:
  sub_1D56140F8();
  v71 = v189;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v72, v73, v74, v75);
  v76 = v31[7];
  v77 = sub_1D560C328();
  v78 = OUTLINED_FUNCTION_25_11();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v77);
  v81 = v31[9];
  v82 = sub_1D5610978();
  v83 = OUTLINED_FUNCTION_25_11();
  __swift_storeEnumTagSinglePayload(v83, v84, v85, v82);
  v86 = v31[15];
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v87, v88, v89, v77);
  v90 = v31[18];
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v91, v92, v93, v82);
  v94 = v31[19];
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v95, v96, v97, v77);
  v98 = v31[24];
  sub_1D560C0A8();
  v99 = OUTLINED_FUNCTION_25_11();
  __swift_storeEnumTagSinglePayload(v99, v100, v101, v102);
  v103 = v31[25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA370, &unk_1D561C080);
  v104 = OUTLINED_FUNCTION_25_11();
  __swift_storeEnumTagSinglePayload(v104, v105, v106, v107);
  v108 = v31[26];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  v109 = OUTLINED_FUNCTION_25_11();
  __swift_storeEnumTagSinglePayload(v109, v110, v111, v112);
  v113 = v31[27];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA380, &qword_1D561C090);
  v114 = OUTLINED_FUNCTION_25_11();
  __swift_storeEnumTagSinglePayload(v114, v115, v116, v117);
  (*(v176 + 16))(&v71[v31[29]], v180, v177);
  v118 = &v71[v31[30]];
  sub_1D5612468();
  v119 = sub_1D5612458();
  v186 = v120;
  sub_1D5614A88();
  v185 = OUTLINED_FUNCTION_41_9();
  v121 = OUTLINED_FUNCTION_41_9();
  v122 = OUTLINED_FUNCTION_41_9();
  v123 = OUTLINED_FUNCTION_41_9();
  *&v71[v31[5]] = 0;
  OUTLINED_FUNCTION_65_3(v31[6]);
  *&v71[v31[8]] = 0;
  *&v71[v31[10]] = 0;
  v124 = &v71[v31[11]];
  *v124 = 0;
  v124[8] = 1;
  *&v71[v31[12]] = 0;
  v71[v31[13]] = 2;
  v71[v31[14]] = 2;
  v125 = &v71[v31[16]];
  *v125 = 0;
  v125[8] = 1;
  *&v71[v31[17]] = 0;
  OUTLINED_FUNCTION_65_3(v31[20]);
  OUTLINED_FUNCTION_65_3(v31[21]);
  OUTLINED_FUNCTION_65_3(v31[22]);
  OUTLINED_FUNCTION_65_3(v31[23]);
  if (qword_1EC7E9378 != -1)
  {
    swift_once();
  }

  v126 = qword_1EC87C4B8;
  if (qword_1EC87C4B8 >> 62)
  {
    sub_1D560CDE8();

    OUTLINED_FUNCTION_71();
    v166 = sub_1D5615E18();

    v126 = v166;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  v127 = v189;
  *&v189[v31[28]] = v126;
  v128 = &v127[v31[31]];
  v129 = v185;
  v130 = v186;
  *v128 = v119;
  v128[1] = v130;
  *&v127[v31[32]] = v129;
  *&v127[v31[33]] = v121;
  *&v127[v31[34]] = v122;
  *&v127[v31[35]] = v123;
LABEL_14:
  swift_getKeyPath();
  LOBYTE(v194[0]) = 0;
  LODWORD(v181) = *MEMORY[0x1E6976668];
  v131 = v188;
  v132 = v188 + 104;
  v133 = *(v188 + 104);
  v134 = v169;
  v135 = v170;
  v133(v169);
  v186 = sub_1D4ECCCF8(&qword_1EC7EA388, type metadata accessor for TVSeasonPropertyProvider);
  sub_1D5610D98();

  v183 = *(v131 + 8);
  v136 = OUTLINED_FUNCTION_45_3();
  v137(v136);
  v138 = v131 + 8;
  swift_getKeyPath();
  v139 = OUTLINED_FUNCTION_52_3(1);
  v140 = v181;
  v185 = v133;
  (v133)(v139, v181, v135);
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_48_3();
  sub_1D5610D68();

  v141 = OUTLINED_FUNCTION_45_3();
  (v183)(v141);
  swift_getKeyPath();
  v142 = OUTLINED_FUNCTION_52_3(2);
  (v133)(v142, v140, v135);
  v182 = v132;
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_48_3();
  sub_1D5610D68();

  v143 = OUTLINED_FUNCTION_45_3();
  v144 = v183;
  (v183)(v143);
  swift_getKeyPath();
  v145 = OUTLINED_FUNCTION_52_3(5);
  v146 = v181;
  v185(v145, v181, v135);
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_48_3();
  sub_1D5610D68();

  v147 = OUTLINED_FUNCTION_45_3();
  v144(v147);
  v188 = v138;
  swift_getKeyPath();
  v148 = OUTLINED_FUNCTION_52_3(6);
  v149 = v185;
  v185(v148, v146, v135);
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_48_3();
  sub_1D5610D68();

  v150 = OUTLINED_FUNCTION_45_3();
  v151 = v183;
  (v183)(v150);
  swift_getKeyPath();
  v152 = OUTLINED_FUNCTION_52_3(7);
  v149(v152, v181, v135);
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_48_3();
  sub_1D5610D68();

  v153 = OUTLINED_FUNCTION_45_3();
  v151(v153);
  swift_getKeyPath();
  LOBYTE(v194[0]) = 8;
  LODWORD(v181) = *MEMORY[0x1E6976670];
  v154 = v185;
  (v185)(v134);
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_48_3();
  sub_1D5610D68();

  v155 = OUTLINED_FUNCTION_45_3();
  v151(v155);
  swift_getKeyPath();
  LOBYTE(v194[0]) = 13;
  type metadata accessor for TVShow();
  LOBYTE(v191) = 7;
  v156 = v181;
  v154(v134, v181, v135);
  sub_1D4ECCCF8(&qword_1EC7EA390, type metadata accessor for TVShow);
  sub_1D5610D48();

  v157 = OUTLINED_FUNCTION_45_3();
  v151(v157);
  swift_getKeyPath();
  v158 = OUTLINED_FUNCTION_52_3(10);
  v159 = v189;
  v185(v158, v156, v135);
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_48_3();
  sub_1D5610D68();

  v160 = OUTLINED_FUNCTION_45_3();
  v151(v160);
  swift_getKeyPath();
  LOBYTE(v194[0]) = 13;
  type metadata accessor for TVSeason();
  if (qword_1EC7E8C08 != -1)
  {
    swift_once();
  }

  sub_1D4ECCCF8(&unk_1EDD546A0, type metadata accessor for TVSeason);
  sub_1D4ECCCF8(&qword_1EC7EA398, type metadata accessor for TVShow);
  sub_1D4ECCCF8(&qword_1EC7EA3A0, type metadata accessor for TVShow);
  v161 = v186;
  sub_1D5610DC8();

  v195 = v168;
  v196 = v161;
  __swift_allocate_boxed_opaque_existential_0(v194);
  OUTLINED_FUNCTION_37_8();
  sub_1D4ECCC4C();
  TVSeason.init(propertyProvider:)(v194, v174);
  swift_unknownObjectRelease();
  sub_1D4E765C8(v179, &qword_1EC7EEC40, &unk_1D561C070);
  (*(v176 + 8))(v180, v177);
  (*(v171 + 8))(v175, v172);
  OUTLINED_FUNCTION_36_2();
  sub_1D4ECCBA0(v159, v162);
  OUTLINED_FUNCTION_46();
}

unint64_t sub_1D4EC7654()
{
  result = qword_1EC7EA360;
  if (!qword_1EC7EA360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA360);
  }

  return result;
}

uint64_t sub_1D4EC76A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC40, &unk_1D561C070);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void TVSeason.convertToLegacyModelStorageDictionary(for:)()
{
  OUTLINED_FUNCTION_47();
  v86 = v0;
  v88 = type metadata accessor for TVShow();
  v1 = OUTLINED_FUNCTION_14(v88);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v85 = v5 - v4;
  OUTLINED_FUNCTION_70_0();
  v84 = sub_1D56131C8();
  v6 = OUTLINED_FUNCTION_4(v84);
  v82 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v83 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B0, &unk_1D561C1F0);
  OUTLINED_FUNCTION_22(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v87 = &v81 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v18 = OUTLINED_FUNCTION_22(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_59_0();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v81 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v81 - v31;
  sub_1D4ECA864();
  v33 = MEMORY[0x1E69E7CC0];
  v91 = sub_1D5614BD8();
  if (qword_1EC7E8B58 != -1)
  {
    swift_once();
  }

  v34 = sub_1D56140F8();
  sub_1D4ECCCF8(&unk_1EDD546A0, type metadata accessor for TVSeason);
  sub_1D4ECCCF8(&qword_1EC7EA3C8, type metadata accessor for TVSeason);
  OUTLINED_FUNCTION_32_10();
  if (__swift_getEnumTagSinglePayload(v32, 1, v34) == 1)
  {
    sub_1D4E765C8(v32, &qword_1EC7E9CA0, &unk_1D561A0C0);
    v89 = 0u;
    v90 = 0u;
  }

  else
  {
    sub_1D5613F38();
    OUTLINED_FUNCTION_24_0(v34);
    (*(v35 + 8))(v32, v34);
  }

  v36 = OUTLINED_FUNCTION_39_5();
  sub_1D4EC8178(v36, 0);
  if (qword_1EC7E8B70 != -1)
  {
    swift_once();
  }

  v37 = sub_1D560C328();
  OUTLINED_FUNCTION_32_10();
  if (__swift_getEnumTagSinglePayload(v26, 1, v37) == 1)
  {
    sub_1D4E765C8(v26, &qword_1EC7EA3B8, &unk_1D561E370);
    v89 = 0u;
    v90 = 0u;
  }

  else
  {
    *(&v90 + 1) = v37;
    __swift_allocate_boxed_opaque_existential_0(&v89);
    OUTLINED_FUNCTION_24_0(v37);
    (*(v38 + 32))();
  }

  v39 = OUTLINED_FUNCTION_39_5();
  sub_1D4EC8178(v39, 1);
  if (qword_1EC7E8B88 != -1)
  {
    swift_once();
  }

  v40 = MEMORY[0x1E69E6530];
  OUTLINED_FUNCTION_32_10();
  v41 = v89;
  if (BYTE8(v89))
  {
    v41 = 0;
  }

  *(&v90 + 1) = v40;
  *&v89 = v41;
  v42 = OUTLINED_FUNCTION_39_5();
  sub_1D4EC8178(v42, 2);
  if (qword_1EC7E8B60 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3D0, &unk_1D56223F0);
  OUTLINED_FUNCTION_32_10();
  v43 = v33;
  if (v89)
  {
    v44 = v89;
  }

  else
  {
    v44 = v33;
  }

  if (*(v44 + 16))
  {
    v45 = *(v44 + 80);
    v46 = *(v44 + 88);

    if ((v46 & 1) == 0)
    {
      v47 = v45 < 500;
      goto LABEL_25;
    }
  }

  else
  {
  }

  v47 = 0;
LABEL_25:
  v48 = MEMORY[0x1E69E6370];
  *(&v90 + 1) = MEMORY[0x1E69E6370];
  LOBYTE(v89) = v47;
  v49 = OUTLINED_FUNCTION_39_5();
  sub_1D4EC8178(v49, 3);
  OUTLINED_FUNCTION_32_10();
  if (v89)
  {
    v50 = v89;
  }

  else
  {
    v50 = v43;
  }

  if (*(v50 + 16))
  {
    v51 = *(v50 + 80);
    v52 = *(v50 + 88);

    if ((v52 & 1) == 0)
    {
      v53 = v51 > 499;
      goto LABEL_33;
    }
  }

  else
  {
  }

  v53 = 0;
LABEL_33:
  *(&v90 + 1) = v48;
  LOBYTE(v89) = v53;
  v54 = OUTLINED_FUNCTION_39_5();
  sub_1D4EC8178(v54, 4);
  v55 = v87;
  if (qword_1EC7E8B98 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_32_10();
  if (v89 == 2)
  {
    v56 = 0;
    v89 = 0uLL;
    *&v90 = 0;
  }

  else
  {
    LOBYTE(v89) = v89 & 1;
    v56 = MEMORY[0x1E69E6370];
  }

  *(&v90 + 1) = v56;
  v57 = OUTLINED_FUNCTION_39_5();
  sub_1D4EC8178(v57, 5);
  if (qword_1EC7E8BA0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_32_10();
  if (v89 == 2)
  {
    v58 = 0;
    v89 = 0uLL;
    *&v90 = 0;
  }

  else
  {
    LOBYTE(v89) = v89 & 1;
    v58 = MEMORY[0x1E69E6370];
  }

  *(&v90 + 1) = v58;
  v59 = OUTLINED_FUNCTION_39_5();
  sub_1D4EC8178(v59, 6);
  if (qword_1EC7E8BA8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_32_10();
  if (__swift_getEnumTagSinglePayload(v23, 1, v37) == 1)
  {
    sub_1D4E765C8(v23, &qword_1EC7EA3B8, &unk_1D561E370);
    v89 = 0u;
    v90 = 0u;
  }

  else
  {
    *(&v90 + 1) = v37;
    __swift_allocate_boxed_opaque_existential_0(&v89);
    OUTLINED_FUNCTION_24_0(v37);
    (*(v60 + 32))();
  }

  v61 = OUTLINED_FUNCTION_39_5();
  sub_1D4EC8178(v61, 7);
  if (qword_1EC7E8BB0 != -1)
  {
    swift_once();
  }

  v62 = MEMORY[0x1E69E6530];
  OUTLINED_FUNCTION_32_10();
  if (BYTE8(v89))
  {
    v63 = 0;
    v62 = 0;
    *(&v89 + 1) = 0;
    *&v90 = 0;
  }

  else
  {
    v63 = v89;
  }

  *&v89 = v63;
  *(&v90 + 1) = v62;
  v64 = OUTLINED_FUNCTION_39_5();
  sub_1D4EC8178(v64, 8);
  if (qword_1EC7E8BD8 != -1)
  {
    swift_once();
  }

  v65 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_32_10();
  if (*(&v89 + 1))
  {
    v66 = v89;
    v67 = MEMORY[0x1E69E6158];
  }

  else
  {
    v66 = 0;
    v67 = 0;
    *&v90 = 0;
  }

  *&v89 = v66;
  *(&v90 + 1) = v67;
  v68 = OUTLINED_FUNCTION_39_5();
  sub_1D4EC8178(v68, 10);
  TVSeason.show.getter();
  if (__swift_getEnumTagSinglePayload(v55, 1, v88) == 1)
  {
    sub_1D4E765C8(v55, &qword_1EC7EA3B0, &unk_1D561C1F0);
    v69 = 0;
  }

  else
  {
    (*(v82 + 16))(v83, v86, v84);
    sub_1D4ECCC4C();
    sub_1D4ECA950();
    v69 = v70;
    OUTLINED_FUNCTION_38_7();
    sub_1D4ECCBA0(v55, v71);
  }

  *(&v90 + 1) = sub_1D4ECC7A8(0, &qword_1EDD52630, 0x1E6977640);
  if (!v69)
  {
    v72 = TVSeason.showName.getter();
    v74 = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3D8, &qword_1D561C200);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D561C050;
    *(inited + 32) = 0xD00000000000001ALL;
    *(inited + 40) = 0x80000001D567CE50;
    *(inited + 72) = v65;
    *(inited + 48) = v72;
    *(inited + 56) = v74;
    sub_1D5614BD8();
    v76 = [objc_opt_self() emptyIdentifierSet];
    if (qword_1EC7E8B40 != -1)
    {
      swift_once();
    }

    v77 = sub_1D5613158();
    __swift_project_value_buffer(v77, qword_1EC7EE088);
    v78 = sub_1D5159818();
    v79 = objc_allocWithZone(MEMORY[0x1E6977640]);
    v69 = sub_1D4ECA8B8(v76, v78);
  }

  *&v89 = v69;
  v80 = OUTLINED_FUNCTION_39_5();
  sub_1D4EC8178(v80, 13);
  OUTLINED_FUNCTION_46();
}

_OWORD *sub_1D4EC8178(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_1D4E519A8(a1, v22);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    result = sub_1D4F13310(v22, a2, isUniquelyReferenced_nonNull_native, v7, v8, v9, v10, v11, v19, *v2);
    *v2 = v20;
  }

  else
  {
    sub_1D4E765C8(a1, &qword_1EC7E9F98, &qword_1D561C420);
    v13 = *v2;
    v14 = sub_1D4F0DF30();
    if (v15)
    {
      v16 = v14;
      v17 = *v3;
      swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v18 = *(*v3 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA690, &qword_1D561C558);
      sub_1D5615D78();
      sub_1D4E519A8((*(v21 + 56) + 32 * v16), v22);
      sub_1D4ECA864();
      sub_1D5615D98();
      *v3 = v21;
    }

    else
    {
      memset(v22, 0, sizeof(v22));
    }

    return sub_1D4E765C8(v22, &qword_1EC7E9F98, &qword_1D561C420);
  }

  return result;
}

uint64_t sub_1D4EC82C0(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 16);
    v12[0] = *a1;
    v12[1] = v2;
    v12[2] = *(a1 + 32);
    v3 = *v1;
    swift_isUniquelyReferenced_nonNull_native();
    v11 = *v1;
    sub_1D4F133DC();
    *v1 = v11;
    return OUTLINED_FUNCTION_43_9();
  }

  else
  {
    OUTLINED_FUNCTION_29_3();
    sub_1D4E765C8(v5, v6, v7);
    sub_1D55159C0(v12);
    OUTLINED_FUNCTION_43_9();
    OUTLINED_FUNCTION_29_3();
    return sub_1D4E765C8(v8, v9, v10);
  }
}

uint64_t sub_1D4EC8380()
{
  OUTLINED_FUNCTION_69_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v19 - v6;
  v8 = type metadata accessor for GenericMusicItem();
  v9 = OUTLINED_FUNCTION_14(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_3_4();
  if (__swift_getEnumTagSinglePayload(v1, 1, v12) == 1)
  {
    v13 = OUTLINED_FUNCTION_68_4();
    sub_1D4E765C8(v13, v14, &qword_1D561C510);
    sub_1D5515BE8(v0, v7);
    OUTLINED_FUNCTION_44_3();
    v15 = OUTLINED_FUNCTION_27_1();
    return sub_1D4E765C8(v15, v16, &qword_1D561C510);
  }

  else
  {
    OUTLINED_FUNCTION_68_4();
    sub_1D4ECCBF4();
    v18 = *v1;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_51_5();
    sub_1D4F13640();
    *v1 = v19[1];
    return OUTLINED_FUNCTION_44_3();
  }
}

uint64_t sub_1D4EC84C0()
{
  OUTLINED_FUNCTION_69_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5E8, &qword_1D561C4F8);
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5F0, &unk_1D561C500);
  OUTLINED_FUNCTION_14(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  if (__swift_getEnumTagSinglePayload(v1, 1, v12) == 1)
  {
    v13 = OUTLINED_FUNCTION_68_4();
    sub_1D4E765C8(v13, v14, &qword_1D561C4F8);
    sub_1D5515DE8(v7);
    v15 = sub_1D560C0A8();
    OUTLINED_FUNCTION_4_0(v15);
    (*(v16 + 8))(v0);
    v17 = OUTLINED_FUNCTION_27_1();
    return sub_1D4E765C8(v17, v18, &qword_1D561C4F8);
  }

  else
  {
    v20 = OUTLINED_FUNCTION_68_4();
    sub_1D4ECCB30(v20, v21);
    v22 = *v1;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_51_5();
    sub_1D4F13E2C();
    *v1 = v25[1];
    v23 = sub_1D560C0A8();
    OUTLINED_FUNCTION_4_0(v23);
    return (*(v24 + 8))(v0);
  }
}

uint64_t TVSeason.LegacyModelTVSeasonPropertyKey.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D5615EF8();

  v4 = 14;
  if (v2 < 0xE)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t TVSeason.LegacyModelTVSeasonPropertyKey.rawValue.getter()
{
  result = 0xD00000000000001ELL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000025;
      break;
    case 2:
      result = 0xD000000000000024;
      break;
    case 3:
    case 0xA:
      result = 0xD000000000000026;
      break;
    case 4:
    case 6:
      result = 0xD000000000000029;
      break;
    case 5:
      result = 0xD000000000000023;
      break;
    case 7:
      result = 0xD000000000000027;
      break;
    case 8:
      result = 0xD00000000000001DLL;
      break;
    case 9:
    case 0xD:
      result = 0xD00000000000001FLL;
      break;
    case 0xB:
      result = 0xD00000000000001BLL;
      break;
    case 0xC:
      result = 0xD000000000000030;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D4EC9108@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return TVSeason.LegacyModelTVSeasonPropertyKey.init(rawValue:)(a1);
}

unint64_t sub_1D4EC9114@<X0>(unint64_t *a1@<X8>)
{
  result = TVSeason.LegacyModelTVSeasonPropertyKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t TVSeason.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6976890];
  v3 = sub_1D5613158();
  v4 = OUTLINED_FUNCTION_14(v3);
  v6 = *(v5 + 104);

  return v6(a1, v2, v4);
}

uint64_t sub_1D4EC91AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D4ECCCF8(&qword_1EC7EA440, type metadata accessor for TVSeason);

  return MEMORY[0x1EEDD15B0](a1, a2, a3, v8, a4);
}

uint64_t sub_1D4EC9260()
{
  sub_1D4ECCCF8(&qword_1EC7EA438, type metadata accessor for TVSeason);

  return sub_1D56132F8();
}

double sub_1D4EC92E8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16))
  {
    memcpy(__dst, (a1 + 32), sizeof(__dst));
    memcpy(a2, (a1 + 32), 0x48uLL);
    sub_1D4ECCD40(__dst, &v5);
  }

  else
  {
    *(a2 + 8) = 0;
    result = 0.0;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1D4EC9524@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_1D4ECCCA4(a3, a1, a2);
  OUTLINED_FUNCTION_27_1();
  sub_1D5615608();
  OUTLINED_FUNCTION_27_1();
  sub_1D5615648();
  OUTLINED_FUNCTION_11_4();
  if (v10)
  {
    a4(0);
    OUTLINED_FUNCTION_33();
  }

  else
  {
    v11 = sub_1D5615688();
    v13 = v12;
    v14 = (a4)(0);
    OUTLINED_FUNCTION_14(v14);
    v16 = (*(v15 + 16))(a5, v13, v14);
    v24 = OUTLINED_FUNCTION_28_8(v16, v17, v18, v19, v20, v21, v22, v23, v30, v31);
    v11(v24);
    v25 = OUTLINED_FUNCTION_60_0();
    v28 = v14;
  }

  return __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
}

uint64_t sub_1D4ECA23C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  if (v3)
  {
    OUTLINED_FUNCTION_24_0(v4);
    v6 = *(v5 + 16);
    v7 = *(v5 + 80);
    v8 = OUTLINED_FUNCTION_66_2();
    v9(v8);
  }

  v10 = OUTLINED_FUNCTION_61_10();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_1D4ECA3F0(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = *(a1 + 16);
  v3 = a2(0);
  if (v2)
  {
    v4 = *(*(v3 - 8) + 80);
    sub_1D4ECCC4C();
  }

  v5 = OUTLINED_FUNCTION_61_10();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_1D4ECA64C(uint64_t a1)
{
  v2 = sub_1D4ECC51C(a1);
  v4 = v3;
  v6 = v5;
  v7 = sub_1D4ECC57C(a1);
  v9 = v8;
  v11 = v10;
  v12 = sub_1D4ECC768(v2, v4, v6 & 1, v7, v8, v10 & 1);
  sub_1D4ECC79C(v7, v9, v11 & 1);
  v13 = OUTLINED_FUNCTION_62_6();
  if (v12)
  {
    sub_1D4ECC79C(v13, v14, v15);
    return 0;
  }

  else
  {
    sub_1D4ECC5D0(v13, v14, v15, a1);
    v16 = v17;
    v18 = OUTLINED_FUNCTION_62_6();
    sub_1D4ECC79C(v18, v19, v20);
  }

  return v16;
}

uint64_t sub_1D4ECA77C(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = *(a1 + 16);
  v3 = a2(0);
  if (v2)
  {
    OUTLINED_FUNCTION_24_0(v3);
    v5 = *(v4 + 16);
    v6 = *(v4 + 80);
    v7 = OUTLINED_FUNCTION_66_2();
    v8(v7);
  }

  v9 = OUTLINED_FUNCTION_61_10();

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

unint64_t sub_1D4ECA864()
{
  result = qword_1EC7EA3C0;
  if (!qword_1EC7EA3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA3C0);
  }

  return result;
}

id sub_1D4ECA8B8(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D5614BA8();

  v6 = [v2 initWithIdentifierSet:a1 modelObjectType:a2 storageDictionary:v5];
  swift_unknownObjectRelease();

  return v6;
}

void sub_1D4ECA950()
{
  OUTLINED_FUNCTION_47();
  v3 = OUTLINED_FUNCTION_22_4(v1, v2);
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_4();
  v7 = sub_1D5613158();
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_19();
  type metadata accessor for TVShow();
  sub_1D4ECCCF8(&qword_1EC7EA3A0, type metadata accessor for TVShow);
  OUTLINED_FUNCTION_19_6();
  v13 = *MEMORY[0x1E6976860];
  v14 = OUTLINED_FUNCTION_6_8();
  v15(v14);
  sub_1D5159818();
  v16 = OUTLINED_FUNCTION_8_6();
  v17(v16);
  OUTLINED_FUNCTION_26_2();
  sub_1D4ECCCF8(v18, v19);
  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_38_7();
  sub_1D4ECCBA0(v0, v20);
  OUTLINED_FUNCTION_21_7();
  v21 = OUTLINED_FUNCTION_7_14();
  v22(v21);
  objc_allocWithZone(MEMORY[0x1E6977640]);
  OUTLINED_FUNCTION_57_7();
  v23 = OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_20_15(v23, sel_initWithIdentifierSet_modelObjectType_storageDictionary_);
  OUTLINED_FUNCTION_58_2();

  v24 = sub_1D56131C8();
  OUTLINED_FUNCTION_4_0(v24);
  (*(v25 + 8))(v0);
  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_46();
}

unint64_t sub_1D4ECAB68()
{
  result = qword_1EC7EA3E0;
  if (!qword_1EC7EA3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA3E0);
  }

  return result;
}

unint64_t sub_1D4ECABC4()
{
  result = qword_1EC7EA3E8;
  if (!qword_1EC7EA3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA3E8);
  }

  return result;
}

uint64_t _s30LegacyModelTVSeasonPropertyKeyOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s30LegacyModelTVSeasonPropertyKeyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D4ECADF0()
{
  result = qword_1EC7EA458;
  if (!qword_1EC7EA458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA458);
  }

  return result;
}

void sub_1D4ECAE94()
{
  OUTLINED_FUNCTION_47();
  v3 = OUTLINED_FUNCTION_22_4(v1, v2);
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_4();
  v7 = sub_1D5613158();
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_19();
  type metadata accessor for SocialProfile();
  sub_1D4ECCCF8(&qword_1EC7EA600, type metadata accessor for SocialProfile);
  OUTLINED_FUNCTION_19_6();
  v13 = *MEMORY[0x1E69767E0];
  v14 = OUTLINED_FUNCTION_6_8();
  v15(v14);
  sub_1D5159818();
  v16 = OUTLINED_FUNCTION_8_6();
  v17(v16);
  OUTLINED_FUNCTION_26_2();
  sub_1D4ECCCF8(v18, v19);
  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_21_7();
  v20 = OUTLINED_FUNCTION_7_14();
  v21(v20);
  objc_allocWithZone(MEMORY[0x1E6977640]);
  OUTLINED_FUNCTION_57_7();
  v22 = OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_20_15(v22, sel_initWithIdentifierSet_modelObjectType_storageDictionary_);
  OUTLINED_FUNCTION_58_2();

  v23 = sub_1D56131C8();
  OUTLINED_FUNCTION_4_0(v23);
  (*(v24 + 8))(v0);
  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_46();
}

void sub_1D4ECB128()
{
  OUTLINED_FUNCTION_47();
  v3 = OUTLINED_FUNCTION_22_4(v1, v2);
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_4();
  v7 = sub_1D5613158();
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_19();
  type metadata accessor for UploadedVideo();
  sub_1D4ECCCF8(&qword_1EC7EA590, type metadata accessor for UploadedVideo);
  OUTLINED_FUNCTION_19_6();
  v13 = *MEMORY[0x1E69767F8];
  v14 = OUTLINED_FUNCTION_6_8();
  v15(v14);
  sub_1D5159818();
  v16 = OUTLINED_FUNCTION_8_6();
  v17(v16);
  OUTLINED_FUNCTION_26_2();
  sub_1D4ECCCF8(v18, v19);
  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_21_7();
  v20 = OUTLINED_FUNCTION_7_14();
  v21(v20);
  objc_allocWithZone(MEMORY[0x1E6977640]);
  OUTLINED_FUNCTION_57_7();
  v22 = OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_20_15(v22, sel_initWithIdentifierSet_modelObjectType_storageDictionary_);
  OUTLINED_FUNCTION_58_2();

  v23 = sub_1D56131C8();
  OUTLINED_FUNCTION_4_0(v23);
  (*(v24 + 8))(v0);
  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_46();
}

void sub_1D4ECB344()
{
  OUTLINED_FUNCTION_47();
  v3 = OUTLINED_FUNCTION_22_4(v1, v2);
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_4();
  v7 = sub_1D5613158();
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_19();
  type metadata accessor for UploadedAudio();
  sub_1D4ECCCF8(&qword_1EC7EA588, type metadata accessor for UploadedAudio);
  OUTLINED_FUNCTION_19_6();
  v13 = *MEMORY[0x1E69767F0];
  v14 = OUTLINED_FUNCTION_6_8();
  v15(v14);
  sub_1D5159818();
  v16 = OUTLINED_FUNCTION_8_6();
  v17(v16);
  OUTLINED_FUNCTION_26_2();
  sub_1D4ECCCF8(v18, v19);
  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_21_7();
  v20 = OUTLINED_FUNCTION_7_14();
  v21(v20);
  objc_allocWithZone(MEMORY[0x1E6977640]);
  OUTLINED_FUNCTION_57_7();
  v22 = OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_20_15(v22, sel_initWithIdentifierSet_modelObjectType_storageDictionary_);
  OUTLINED_FUNCTION_58_2();

  v23 = sub_1D56131C8();
  OUTLINED_FUNCTION_4_0(v23);
  (*(v24 + 8))(v0);
  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_46();
}

void sub_1D4ECB560()
{
  OUTLINED_FUNCTION_47();
  v3 = OUTLINED_FUNCTION_22_4(v1, v2);
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_4();
  v7 = sub_1D5613158();
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_19();
  type metadata accessor for MusicMovie();
  sub_1D4ECCCF8(&qword_1EC7EA580, type metadata accessor for MusicMovie);
  OUTLINED_FUNCTION_19_6();
  v13 = *MEMORY[0x1E6976798];
  v14 = OUTLINED_FUNCTION_6_8();
  v15(v14);
  sub_1D5159818();
  v16 = OUTLINED_FUNCTION_8_6();
  v17(v16);
  OUTLINED_FUNCTION_26_2();
  sub_1D4ECCCF8(v18, v19);
  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_21_7();
  v20 = OUTLINED_FUNCTION_7_14();
  v21(v20);
  objc_allocWithZone(MEMORY[0x1E6977640]);
  OUTLINED_FUNCTION_57_7();
  v22 = OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_20_15(v22, sel_initWithIdentifierSet_modelObjectType_storageDictionary_);
  OUTLINED_FUNCTION_58_2();

  v23 = sub_1D56131C8();
  OUTLINED_FUNCTION_4_0(v23);
  (*(v24 + 8))(v0);
  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_46();
}

void sub_1D4ECB77C()
{
  OUTLINED_FUNCTION_47();
  v3 = OUTLINED_FUNCTION_22_4(v1, v2);
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_4();
  v7 = sub_1D5613158();
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_19();
  type metadata accessor for TVEpisode();
  sub_1D4ECCCF8(&qword_1EC7EA578, type metadata accessor for TVEpisode);
  OUTLINED_FUNCTION_19_6();
  v13 = *MEMORY[0x1E69768A0];
  v14 = OUTLINED_FUNCTION_6_8();
  v15(v14);
  sub_1D5159818();
  v16 = OUTLINED_FUNCTION_8_6();
  v17(v16);
  OUTLINED_FUNCTION_26_2();
  sub_1D4ECCCF8(v18, v19);
  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_21_7();
  v20 = OUTLINED_FUNCTION_7_14();
  v21(v20);
  objc_allocWithZone(MEMORY[0x1E6977640]);
  OUTLINED_FUNCTION_57_7();
  v22 = OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_20_15(v22, sel_initWithIdentifierSet_modelObjectType_storageDictionary_);
  OUTLINED_FUNCTION_58_2();

  v23 = sub_1D56131C8();
  OUTLINED_FUNCTION_4_0(v23);
  (*(v24 + 8))(v0);
  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_46();
}

void sub_1D4ECBA10()
{
  OUTLINED_FUNCTION_47();
  v3 = OUTLINED_FUNCTION_22_4(v1, v2);
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_4();
  v7 = sub_1D5613158();
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_19();
  type metadata accessor for Playlist.Folder();
  sub_1D4ECCCF8(&qword_1EC7EA530, type metadata accessor for Playlist.Folder);
  OUTLINED_FUNCTION_19_6();
  v13 = *MEMORY[0x1E6976808];
  v14 = OUTLINED_FUNCTION_6_8();
  v15(v14);
  sub_1D5159818();
  v16 = OUTLINED_FUNCTION_8_6();
  v17(v16);
  OUTLINED_FUNCTION_26_2();
  sub_1D4ECCCF8(v18, v19);
  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_21_7();
  v20 = OUTLINED_FUNCTION_7_14();
  v21(v20);
  objc_allocWithZone(MEMORY[0x1E6977640]);
  OUTLINED_FUNCTION_57_7();
  v22 = OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_20_15(v22, sel_initWithIdentifierSet_modelObjectType_storageDictionary_);
  OUTLINED_FUNCTION_58_2();

  v23 = sub_1D56131C8();
  OUTLINED_FUNCTION_4_0(v23);
  (*(v24 + 8))(v0);
  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_46();
}

void sub_1D4ECBC2C()
{
  OUTLINED_FUNCTION_47();
  v3 = OUTLINED_FUNCTION_22_4(v1, v2);
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_4();
  v7 = sub_1D5613158();
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_19();
  type metadata accessor for Playlist.Folder.Item();
  sub_1D4ECCCF8(&qword_1EC7EA528, type metadata accessor for Playlist.Folder.Item);
  OUTLINED_FUNCTION_19_6();
  v13 = *MEMORY[0x1E6976810];
  v14 = OUTLINED_FUNCTION_6_8();
  v15(v14);
  sub_1D5159818();
  v16 = OUTLINED_FUNCTION_8_6();
  v17(v16);
  OUTLINED_FUNCTION_26_2();
  sub_1D4ECCCF8(v18, v19);
  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_21_7();
  v20 = OUTLINED_FUNCTION_7_14();
  v21(v20);
  objc_allocWithZone(MEMORY[0x1E6977640]);
  OUTLINED_FUNCTION_57_7();
  v22 = OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_20_15(v22, sel_initWithIdentifierSet_modelObjectType_storageDictionary_);
  OUTLINED_FUNCTION_58_2();

  v23 = sub_1D56131C8();
  OUTLINED_FUNCTION_4_0(v23);
  (*(v24 + 8))(v0);
  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_46();
}

void sub_1D4ECBE48()
{
  OUTLINED_FUNCTION_47();
  v3 = OUTLINED_FUNCTION_22_4(v1, v2);
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_4();
  v7 = sub_1D5613158();
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_19();
  type metadata accessor for MusicPin();
  sub_1D4ECCCF8(&qword_1EC7EA4C0, type metadata accessor for MusicPin);
  OUTLINED_FUNCTION_19_6();
  v13 = *MEMORY[0x1E6976828];
  v14 = OUTLINED_FUNCTION_6_8();
  v15(v14);
  sub_1D5159818();
  v16 = OUTLINED_FUNCTION_8_6();
  v17(v16);
  OUTLINED_FUNCTION_26_2();
  sub_1D4ECCCF8(v18, v19);
  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_21_7();
  v20 = OUTLINED_FUNCTION_7_14();
  v21(v20);
  objc_allocWithZone(MEMORY[0x1E6977640]);
  OUTLINED_FUNCTION_57_7();
  v22 = OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_20_15(v22, sel_initWithIdentifierSet_modelObjectType_storageDictionary_);
  OUTLINED_FUNCTION_58_2();

  v23 = sub_1D56131C8();
  OUTLINED_FUNCTION_4_0(v23);
  (*(v24 + 8))(v0);
  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_46();
}

void sub_1D4ECC08C()
{
  OUTLINED_FUNCTION_47();
  v31 = v0;
  v2 = v1;
  v32 = sub_1D560D838();
  v3 = OUTLINED_FUNCTION_4(v32);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = sub_1D5613158();
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  v20 = v2(0);
  sub_1D56132E8();
  sub_1D56132C8();
  v21 = sub_1D5159818();
  (*(v14 + 8))(v19, v11);
  sub_1D560EC98();
  OUTLINED_FUNCTION_24_0(v20);
  v23 = *(v22 + 8);
  v24 = OUTLINED_FUNCTION_27_1();
  v25(v24);
  v26 = sub_1D4F42FA4(v21, v31);
  (*(v5 + 8))(v10, v32);
  v27 = objc_allocWithZone(MEMORY[0x1E6977640]);
  v28 = sub_1D5614BA8();

  [v27 initWithIdentifierSet:v26 modelObjectType:v21 storageDictionary:v28];
  swift_unknownObjectRelease();

  v29 = sub_1D56131C8();
  OUTLINED_FUNCTION_4_0(v29);
  (*(v30 + 8))(v31);
  OUTLINED_FUNCTION_46();
}

void sub_1D4ECC300()
{
  OUTLINED_FUNCTION_47();
  v3 = OUTLINED_FUNCTION_22_4(v1, v2);
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_4();
  v7 = sub_1D5613158();
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_19();
  type metadata accessor for TVSeason();
  sub_1D4ECCCF8(&qword_1EC7EA480, type metadata accessor for TVSeason);
  OUTLINED_FUNCTION_19_6();
  v13 = *MEMORY[0x1E6976890];
  v14 = OUTLINED_FUNCTION_6_8();
  v15(v14);
  sub_1D5159818();
  v16 = OUTLINED_FUNCTION_8_6();
  v17(v16);
  OUTLINED_FUNCTION_26_2();
  sub_1D4ECCCF8(v18, v19);
  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_21_7();
  v20 = OUTLINED_FUNCTION_7_14();
  v21(v20);
  objc_allocWithZone(MEMORY[0x1E6977640]);
  OUTLINED_FUNCTION_57_7();
  v22 = OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_20_15(v22, sel_initWithIdentifierSet_modelObjectType_storageDictionary_);
  OUTLINED_FUNCTION_58_2();

  v23 = sub_1D56131C8();
  OUTLINED_FUNCTION_4_0(v23);
  (*(v24 + 8))(v0);
  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4ECC51C(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_1D5615DA8();
  }

  v3 = -1 << *(a1 + 32);
  result = sub_1D56159F8();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_1D4ECC57C(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_1D5615DF8();
  }

  result = 1 << *(a1 + 32);
  v3 = *(a1 + 36);
  return result;
}

void sub_1D4ECC5D0(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_1D5615DE8();
      sub_1D4ECC7A8(0, &qword_1EC7ED3D0, 0x1E696AD98);
      swift_dynamicCast();
      return;
    }

    goto LABEL_19;
  }

  if ((a3 & 1) == 0)
  {
LABEL_8:
    if ((a1 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > a1)
    {
      if ((*(a4 + 8 * (a1 >> 6) + 64) >> a1))
      {
        if (*(a4 + 36) == a2)
        {
          goto LABEL_12;
        }

LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        return;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (sub_1D5615DC8() != *(a4 + 36))
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_1D5615DD8();
  sub_1D4ECC7A8(0, &qword_1EC7EA460, 0x1E69B3470);
  swift_dynamicCast();
  a2 = v11;
  a1 = sub_1D4F0E9E8(v11);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v9 = *(*(a4 + 56) + 8 * a1);

  v10 = v9;
}

BOOL sub_1D4ECC768(uint64_t a1, int a2, char a3, uint64_t a4, int a5, char a6)
{
  if (a3)
  {
    if (a6)
    {
LABEL_9:
      JUMPOUT(0x1DA6EBBA0);
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a6)
  {
    goto LABEL_8;
  }

  if (a2 != a5)
  {
    __break(1u);
    goto LABEL_8;
  }

  return a1 == a4;
}

uint64_t sub_1D4ECC79C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1D4ECC7A8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_1D4ECC7E8()
{
  result = qword_1EDD56BA0;
  if (!qword_1EDD56BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD56BA0);
  }

  return result;
}

unint64_t sub_1D4ECC83C()
{
  result = qword_1EC7EA478;
  if (!qword_1EC7EA478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA478);
  }

  return result;
}

unint64_t sub_1D4ECC890()
{
  result = qword_1EC7EA490;
  if (!qword_1EC7EA490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA490);
  }

  return result;
}

unint64_t sub_1D4ECC8E4()
{
  result = qword_1EDD5ED08;
  if (!qword_1EDD5ED08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5ED08);
  }

  return result;
}

unint64_t sub_1D4ECC938()
{
  result = qword_1EC7EA4B8;
  if (!qword_1EC7EA4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA4B8);
  }

  return result;
}

unint64_t sub_1D4ECC98C()
{
  result = qword_1EC7EA4D0;
  if (!qword_1EC7EA4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA4D0);
  }

  return result;
}

unint64_t sub_1D4ECC9E0()
{
  result = qword_1EDD593A0;
  if (!qword_1EDD593A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD593A0);
  }

  return result;
}

unint64_t sub_1D4ECCA34()
{
  result = qword_1EDD5F180;
  if (!qword_1EDD5F180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5F180);
  }

  return result;
}

unint64_t sub_1D4ECCA88()
{
  result = qword_1EC7EA5D0;
  if (!qword_1EC7EA5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA5D0);
  }

  return result;
}

unint64_t sub_1D4ECCADC()
{
  result = qword_1EC7EA5E0;
  if (!qword_1EC7EA5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA5E0);
  }

  return result;
}

uint64_t sub_1D4ECCB30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5F0, &unk_1D561C500);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4ECCBA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D4ECCBF4()
{
  OUTLINED_FUNCTION_69_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return v0;
}

uint64_t sub_1D4ECCC4C()
{
  OUTLINED_FUNCTION_69_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return v0;
}

uint64_t sub_1D4ECCCA4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1D4ECCCF8(unint64_t *a1, void (*a2)(uint64_t))
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

id OUTLINED_FUNCTION_20_15(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_23_10()
{

  return sub_1D560EC98();
}

uint64_t OUTLINED_FUNCTION_31_8()
{

  return sub_1D5615D98();
}

uint64_t OUTLINED_FUNCTION_57_7()
{

  return sub_1D5614BA8();
}

uint64_t OUTLINED_FUNCTION_67_2(_OWORD *a1, _OWORD *a2)
{
  sub_1D4E519A8(a1, a2);
  v3 = *v2;

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t type metadata accessor for StorePlatformPlaylistEntry()
{
  result = qword_1EC7EA698;
  if (!qword_1EC7EA698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D4ECCF20()
{
  result = type metadata accessor for StorePlatformMusicMovie();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for StorePlatformMusicVideo();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for StorePlatformSong();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for StorePlatformTVEpisode();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for StorePlatformUploadedAudio();
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for StorePlatformUploadedVideo();
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_1D4ECCFE8()
{
  result = qword_1EC7EA6A8;
  if (!qword_1EC7EA6A8)
  {
    type metadata accessor for StorePlatformPlaylistEntry();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA6A8);
  }

  return result;
}

uint64_t sub_1D4ECD040(uint64_t a1, uint64_t a2)
{
  v87 = a1;
  v88 = a2;
  v2 = type metadata accessor for StorePlatformUploadedVideo();
  v3 = OUTLINED_FUNCTION_22(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_0();
  v86 = v6;
  OUTLINED_FUNCTION_70_0();
  v7 = type metadata accessor for StorePlatformUploadedAudio();
  v8 = OUTLINED_FUNCTION_22(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_0();
  v85 = v11;
  OUTLINED_FUNCTION_70_0();
  v12 = type metadata accessor for StorePlatformTVEpisode();
  v13 = OUTLINED_FUNCTION_22(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_0();
  v84 = v16;
  OUTLINED_FUNCTION_70_0();
  v17 = type metadata accessor for StorePlatformSong();
  v18 = OUTLINED_FUNCTION_22(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5_0();
  v83 = v21;
  OUTLINED_FUNCTION_70_0();
  v22 = type metadata accessor for StorePlatformMusicVideo();
  v23 = OUTLINED_FUNCTION_22(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5_0();
  v82 = v26;
  OUTLINED_FUNCTION_70_0();
  v27 = type metadata accessor for StorePlatformMusicMovie();
  v28 = OUTLINED_FUNCTION_22(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  v33 = (v32 - v31);
  v34 = type metadata accessor for StorePlatformPlaylistEntry();
  v35 = OUTLINED_FUNCTION_14(v34);
  v37 = *(v36 + 64);
  v38 = MEMORY[0x1EEE9AC00](v35);
  v40 = (&v81 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = MEMORY[0x1EEE9AC00](v38);
  v43 = (&v81 - v42);
  v44 = MEMORY[0x1EEE9AC00](v41);
  v46 = (&v81 - v45);
  v47 = MEMORY[0x1EEE9AC00](v44);
  v49 = (&v81 - v48);
  v50 = MEMORY[0x1EEE9AC00](v47);
  v52 = (&v81 - v51);
  MEMORY[0x1EEE9AC00](v50);
  v54 = (&v81 - v53);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C8, &qword_1D561C648);
  v56 = OUTLINED_FUNCTION_22(v55);
  v58 = *(v57 + 64);
  v59 = MEMORY[0x1EEE9AC00](v56);
  v61 = &v81 - v60;
  v62 = *(v59 + 56);
  sub_1D4ECE830(v87, &v81 - v60);
  sub_1D4ECE830(v88, &v61[v62]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1D4ECE830(v61, v52);
      if (OUTLINED_FUNCTION_22_5() == 1)
      {
        OUTLINED_FUNCTION_6_9();
        v74 = v82;
        sub_1D4ECE7D0(&v61[v62], v82, v75);
        v67 = sub_1D5382590(v52, v74);
        v68 = type metadata accessor for StorePlatformMusicVideo;
        sub_1D4ECE8FC(v74, type metadata accessor for StorePlatformMusicVideo);
        v69 = v52;
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_11_5();
      v64 = v52;
      goto LABEL_19;
    case 2u:
      sub_1D4ECE830(v61, v49);
      if (OUTLINED_FUNCTION_22_5() == 2)
      {
        OUTLINED_FUNCTION_2_1();
        v70 = v83;
        sub_1D4ECE7D0(&v61[v62], v83, v71);
        v67 = sub_1D50F5698(v49, v70);
        v68 = type metadata accessor for StorePlatformSong;
        sub_1D4ECE8FC(v70, type metadata accessor for StorePlatformSong);
        v69 = v49;
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_8_7();
      v64 = v49;
      goto LABEL_19;
    case 3u:
      sub_1D4ECE830(v61, v46);
      if (OUTLINED_FUNCTION_22_5() == 3)
      {
        OUTLINED_FUNCTION_0_13();
        v72 = v84;
        sub_1D4ECE7D0(&v61[v62], v84, v73);
        v67 = sub_1D500B87C(v46, v72);
        v68 = type metadata accessor for StorePlatformTVEpisode;
        sub_1D4ECE8FC(v72, type metadata accessor for StorePlatformTVEpisode);
        v69 = v46;
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_13_11();
      v64 = v46;
      goto LABEL_19;
    case 4u:
      sub_1D4ECE830(v61, v43);
      if (OUTLINED_FUNCTION_22_5() == 4)
      {
        OUTLINED_FUNCTION_4_7();
        v65 = v85;
        sub_1D4ECE7D0(&v61[v62], v85, v66);
        v67 = sub_1D50C2744(v43, v65);
        v68 = type metadata accessor for StorePlatformUploadedAudio;
        sub_1D4ECE8FC(v65, type metadata accessor for StorePlatformUploadedAudio);
        v69 = v43;
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_10_5();
      v64 = v43;
      goto LABEL_19;
    case 5u:
      sub_1D4ECE830(v61, v40);
      if (OUTLINED_FUNCTION_22_5() == 5)
      {
        OUTLINED_FUNCTION_3_5();
        v76 = v86;
        sub_1D4ECE7D0(&v61[v62], v86, v77);
        v67 = sub_1D52FF750(v40, v76);
        sub_1D4ECE8FC(v76, type metadata accessor for StorePlatformUploadedVideo);
        v69 = v40;
        v78 = type metadata accessor for StorePlatformUploadedVideo;
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_9_6();
      v64 = v40;
      goto LABEL_19;
    default:
      sub_1D4ECE830(v61, v54);
      if (OUTLINED_FUNCTION_22_5())
      {
        OUTLINED_FUNCTION_12_11();
        v64 = v54;
LABEL_19:
        sub_1D4ECE8FC(v64, v63);
        sub_1D4ECE894(v61);
        v67 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_1_20();
        sub_1D4ECE7D0(&v61[v62], v33, v79);
        v67 = sub_1D52D8CB8(v54, v33);
        v68 = type metadata accessor for StorePlatformMusicMovie;
        sub_1D4ECE8FC(v33, type metadata accessor for StorePlatformMusicMovie);
        v69 = v54;
LABEL_21:
        v78 = v68;
LABEL_22:
        sub_1D4ECE8FC(v69, v78);
        sub_1D4ECE8FC(v61, type metadata accessor for StorePlatformPlaylistEntry);
      }

      return v67 & 1;
  }
}

uint64_t sub_1D4ECD60C()
{
  v2 = type metadata accessor for StorePlatformUploadedVideo();
  v3 = OUTLINED_FUNCTION_22(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = type metadata accessor for StorePlatformUploadedAudio();
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = type metadata accessor for StorePlatformTVEpisode();
  v17 = OUTLINED_FUNCTION_22(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  v23 = type metadata accessor for StorePlatformSong();
  v24 = OUTLINED_FUNCTION_22(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_3();
  v27 = type metadata accessor for StorePlatformMusicVideo();
  v28 = OUTLINED_FUNCTION_22(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  v33 = v32 - v31;
  v34 = type metadata accessor for StorePlatformMusicMovie();
  v35 = OUTLINED_FUNCTION_22(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5();
  v40 = v39 - v38;
  v41 = type metadata accessor for StorePlatformPlaylistEntry();
  v42 = OUTLINED_FUNCTION_14(v41);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_5();
  v47 = v46 - v45;
  sub_1D4ECE830(v0, v46 - v45);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_6_9();
      sub_1D4ECE7D0(v47, v33, v54);
      MEMORY[0x1DA6EC0D0](1);
      sub_1D5383FB0();
      OUTLINED_FUNCTION_11_5();
      v50 = v33;
      break;
    case 2u:
      OUTLINED_FUNCTION_2_1();
      sub_1D4ECE7D0(v47, v1, v52);
      MEMORY[0x1DA6EC0D0](2);
      sub_1D50F7428();
      OUTLINED_FUNCTION_8_7();
      v50 = v1;
      break;
    case 3u:
      OUTLINED_FUNCTION_0_13();
      sub_1D4ECE7D0(v47, v22, v53);
      MEMORY[0x1DA6EC0D0](3);
      sub_1D500D4CC();
      OUTLINED_FUNCTION_13_11();
      v50 = v22;
      break;
    case 4u:
      OUTLINED_FUNCTION_4_7();
      sub_1D4ECE7D0(v47, v15, v51);
      MEMORY[0x1DA6EC0D0](4);
      sub_1D50C3924();
      OUTLINED_FUNCTION_10_5();
      v50 = v15;
      break;
    case 5u:
      OUTLINED_FUNCTION_3_5();
      sub_1D4ECE7D0(v47, v8, v55);
      MEMORY[0x1DA6EC0D0](5);
      sub_1D5300AC4();
      OUTLINED_FUNCTION_9_6();
      v50 = v8;
      break;
    default:
      OUTLINED_FUNCTION_1_20();
      sub_1D4ECE7D0(v47, v40, v48);
      MEMORY[0x1DA6EC0D0](0);
      sub_1D52DA7D8();
      OUTLINED_FUNCTION_12_11();
      v50 = v40;
      break;
  }

  return sub_1D4ECE8FC(v50, v49);
}

uint64_t sub_1D4ECD934()
{
  sub_1D56162D8();
  sub_1D4ECD60C();
  return sub_1D5616328();
}

uint64_t sub_1D4ECD974(uint64_t a1, uint64_t a2)
{
  if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1D5616168();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D4ECD9EC()
{
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](0);
  return sub_1D5616328();
}

uint64_t sub_1D4ECDA58()
{
  sub_1D56162D8();
  sub_1D4ECD60C();
  return sub_1D5616328();
}

uint64_t sub_1D4ECDA9C()
{
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](0);
  return sub_1D5616328();
}

uint64_t sub_1D4ECDAE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4ECD974(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1D4ECDB28@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_53_0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D4ECDB54(uint64_t a1)
{
  v2 = sub_1D4ECE77C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4ECDB90(uint64_t a1)
{
  v2 = sub_1D4ECE77C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D4ECDBCC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_1D5615C08();
  v4 = OUTLINED_FUNCTION_4(v3);
  v108 = v5;
  v109 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_0();
  v107 = v8;
  OUTLINED_FUNCTION_70_0();
  v9 = type metadata accessor for StorePlatformUploadedVideo();
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_0();
  v110 = v13;
  OUTLINED_FUNCTION_70_0();
  v14 = type metadata accessor for StorePlatformUploadedAudio();
  v15 = OUTLINED_FUNCTION_22(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_0();
  v111 = v18;
  OUTLINED_FUNCTION_70_0();
  v19 = type metadata accessor for StorePlatformTVEpisode();
  v20 = OUTLINED_FUNCTION_22(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5_0();
  v112 = v23;
  OUTLINED_FUNCTION_70_0();
  v24 = type metadata accessor for StorePlatformSong();
  v25 = OUTLINED_FUNCTION_22(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5_0();
  v113 = v28;
  OUTLINED_FUNCTION_70_0();
  v29 = type metadata accessor for StorePlatformMusicVideo();
  v30 = OUTLINED_FUNCTION_22(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5_0();
  v115 = v33;
  OUTLINED_FUNCTION_70_0();
  v34 = type metadata accessor for StorePlatformMusicMovie();
  v35 = OUTLINED_FUNCTION_22(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5();
  v40 = v39 - v38;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6B0, &qword_1D561C638);
  v42 = OUTLINED_FUNCTION_4(v41);
  v114 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_18_3();
  v46 = type metadata accessor for StorePlatformPlaylistEntry();
  v47 = OUTLINED_FUNCTION_14(v46);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_5();
  v50 = a1[4];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4ECE77C();
  sub_1D5616398();
  if (!v118)
  {
    v118 = v46;
    v52 = a2;
    v53 = v41;
    v56 = sub_1D5615F98();
    v57 = v56 == 0x6569766F6DLL && v55 == 0xE500000000000000;
    if (v57 || (v106 = v56, v58 = v55, (OUTLINED_FUNCTION_25_18() & 1) != 0))
    {

      OUTLINED_FUNCTION_19_7();
      sub_1D52D76B0(v117, v40);
      v59 = OUTLINED_FUNCTION_17_1();
      v60(v59);
      OUTLINED_FUNCTION_1_20();
      OUTLINED_FUNCTION_21_8(v61, v62, v63);
      goto LABEL_9;
    }

    if (v106 == 0x646956636973756DLL && v58 == 0xEA00000000006F65)
    {

LABEL_17:
      OUTLINED_FUNCTION_19_7();
      sub_1D53810C4(v117, v115);
      v65 = OUTLINED_FUNCTION_17_1();
      v66(v65);
      OUTLINED_FUNCTION_6_9();
      OUTLINED_FUNCTION_21_8(v68, v69, v70);
      goto LABEL_9;
    }

    if (OUTLINED_FUNCTION_25_18())
    {

      v52 = a2;
      goto LABEL_17;
    }

    v71 = v106 == 1735290739 && v58 == 0xE400000000000000;
    if (v71 || (OUTLINED_FUNCTION_25_18() & 1) != 0)
    {

      OUTLINED_FUNCTION_19_7();
      sub_1D50F3F80(v117, v113);
      v72 = OUTLINED_FUNCTION_17_1();
      v73(v72);
      OUTLINED_FUNCTION_2_1();
      OUTLINED_FUNCTION_21_8(v74, v75, v76);
LABEL_27:
      v52 = a2;
LABEL_9:
      swift_storeEnumTagMultiPayload();
      sub_1D4ECE7D0(v53, v52, type metadata accessor for StorePlatformPlaylistEntry);
      return __swift_destroy_boxed_opaque_existential_1(v51);
    }

    if (v106 == 0x646F736970457674 && v58 == 0xE900000000000065)
    {

      v78 = v114;
LABEL_35:
      OUTLINED_FUNCTION_19_7();
      v53 = v112;
      sub_1D500A274(v117, v112);
      v79 = *(v78 + 8);
      v80 = OUTLINED_FUNCTION_24_12();
      v81(v80);
      OUTLINED_FUNCTION_0_13();
      OUTLINED_FUNCTION_20_16(v82, v83, v84);
      goto LABEL_27;
    }

    v78 = v114;
    if (OUTLINED_FUNCTION_25_18())
    {

      goto LABEL_35;
    }

    v85 = v106 == 0x646564616F6C7075 && v58 == 0xED00006F69647541;
    if (v85 || (sub_1D5616168() & 1) != 0)
    {

      OUTLINED_FUNCTION_19_7();
      v53 = v111;
      sub_1D50C18F8(v117, v111);
      v86 = *(v114 + 8);
      v87 = OUTLINED_FUNCTION_24_12();
      v88(v87);
      OUTLINED_FUNCTION_4_7();
      OUTLINED_FUNCTION_20_16(v89, v90, v91);
      goto LABEL_27;
    }

    v92 = v106 == 0x646564616F6C7075 && v58 == 0xED00006F65646956;
    if (v92 || (sub_1D5616168() & 1) != 0)
    {

      OUTLINED_FUNCTION_19_7();
      v53 = v110;
      sub_1D52FE818(v117, v110);
      v93 = *(v114 + 8);
      v94 = OUTLINED_FUNCTION_24_12();
      v95(v94);
      OUTLINED_FUNCTION_3_5();
      OUTLINED_FUNCTION_20_16(v96, v97, v98);
      goto LABEL_9;
    }

    v99 = v51[4];
    __swift_project_boxed_opaque_existential_1(v51, v51[3]);
    sub_1D5616348();
    v117[0] = 0;
    v117[1] = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000011, 0x80000001D567E3C0);
    MEMORY[0x1DA6EAC70](v106, v58);

    MEMORY[0x1DA6EAC70](0xD00000000000002DLL, 0x80000001D567E3E0);
    sub_1D5615BF8();
    v100 = sub_1D5615C18();
    swift_allocError();
    v102 = v101;
    v103 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640) + 48);
    *v102 = v118;
    (*(v108 + 16))(v102 + v103, v107, v109);
    (*(*(v100 - 8) + 104))(v102, *MEMORY[0x1E69E6AF8], v100);
    swift_willThrow();
    (*(v108 + 8))(v107, v109);
    v104 = *(v114 + 8);
    v105 = OUTLINED_FUNCTION_24_12();
    v54(v105);
  }

  return __swift_destroy_boxed_opaque_existential_1(v51);
}

uint64_t sub_1D4ECE418(void *a1)
{
  v3 = type metadata accessor for StorePlatformUploadedVideo();
  v4 = OUTLINED_FUNCTION_22(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = type metadata accessor for StorePlatformUploadedAudio();
  v11 = OUTLINED_FUNCTION_22(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_3();
  v14 = type metadata accessor for StorePlatformTVEpisode();
  v15 = OUTLINED_FUNCTION_22(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v21 = type metadata accessor for StorePlatformSong();
  v22 = OUTLINED_FUNCTION_22(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v27 = v26 - v25;
  v28 = type metadata accessor for StorePlatformMusicVideo();
  v29 = OUTLINED_FUNCTION_22(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5();
  v34 = v33 - v32;
  v35 = type metadata accessor for StorePlatformMusicMovie();
  v36 = OUTLINED_FUNCTION_22(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5();
  v41 = v40 - v39;
  v42 = type metadata accessor for StorePlatformPlaylistEntry();
  v43 = OUTLINED_FUNCTION_14(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_5();
  v48 = v47 - v46;
  sub_1D4ECE830(v1, v47 - v46);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_6_9();
      sub_1D4ECE7D0(v48, v34, v55);
      sub_1D5381FAC(a1);
      OUTLINED_FUNCTION_11_5();
      v51 = v34;
      break;
    case 2u:
      OUTLINED_FUNCTION_2_1();
      sub_1D4ECE7D0(v48, v27, v53);
      sub_1D50F4FDC(a1);
      OUTLINED_FUNCTION_8_7();
      v51 = v27;
      break;
    case 3u:
      OUTLINED_FUNCTION_0_13();
      sub_1D4ECE7D0(v48, v20, v54);
      sub_1D500B1E8(a1);
      OUTLINED_FUNCTION_13_11();
      v51 = v20;
      break;
    case 4u:
      OUTLINED_FUNCTION_4_7();
      sub_1D4ECE7D0(v48, v2, v52);
      sub_1D50C22B0(a1);
      OUTLINED_FUNCTION_10_5();
      v51 = v2;
      break;
    case 5u:
      OUTLINED_FUNCTION_3_5();
      sub_1D4ECE7D0(v48, v9, v56);
      sub_1D52FF2D0(a1);
      OUTLINED_FUNCTION_9_6();
      v51 = v9;
      break;
    default:
      OUTLINED_FUNCTION_1_20();
      sub_1D4ECE7D0(v48, v41, v49);
      sub_1D52D8644(a1);
      OUTLINED_FUNCTION_12_11();
      v51 = v41;
      break;
  }

  return sub_1D4ECE8FC(v51, v50);
}

unint64_t sub_1D4ECE77C()
{
  result = qword_1EC7EA6B8;
  if (!qword_1EC7EA6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA6B8);
  }

  return result;
}

uint64_t sub_1D4ECE7D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_14(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1D4ECE830(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorePlatformPlaylistEntry();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4ECE894(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C8, &qword_1D561C648);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D4ECE8FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for StorePlatformPlaylistEntry.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1D4ECEA04()
{
  result = qword_1EC7EA6D0;
  if (!qword_1EC7EA6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA6D0);
  }

  return result;
}

unint64_t sub_1D4ECEA5C()
{
  result = qword_1EC7EA6D8;
  if (!qword_1EC7EA6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA6D8);
  }

  return result;
}

unint64_t sub_1D4ECEAB4()
{
  result = qword_1EC7EA6E0;
  if (!qword_1EC7EA6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA6E0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_20_16(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *(v4 - 208);

  return sub_1D4ECE7D0(v3, v6, a3);
}

uint64_t OUTLINED_FUNCTION_25_18()
{

  return sub_1D5616168();
}

uint64_t sub_1D4ECEBCC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D4ECEC14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D561C770;
  KeyPath = swift_getKeyPath();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6F0, &qword_1D561C880);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_6();

  sub_1D5374100(KeyPath | 0x8000000000000000);
  OUTLINED_FUNCTION_0_6();

  *(v1 + 32) = v0;
  swift_getKeyPath();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6F8, &unk_1D561C8B0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_6();

  sub_1D5375864(v9, 1, sub_1D4ECED88, 0);
}

uint64_t sub_1D4ECECFC()
{
  OUTLINED_FUNCTION_0_6();

  *(v0 + 40) = v1;
  qword_1EDD767C0 = v0;
  return result;
}

void *sub_1D4ECED20@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(&v6, v3, v4);
  *a2 = v6;
  return result;
}

uint64_t sub_1D4ECED88()
{
  v0 = sub_1D5613348();
  sub_1D560E4E8();
  return v0(&v2, 0);
}

uint64_t sub_1D4ECEDE8()
{
  v0 = sub_1D5613D38();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D561C770;
  swift_getKeyPath();
  v9 = *MEMORY[0x1E6976E88];
  v20 = v1[13];
  v20(v7, v9, v0);
  v19 = v1[2];
  v19(v5, v7, v0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6E8, &qword_1D561C830);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = OUTLINED_FUNCTION_1_21();
  v14 = v1[1];
  v14(v7, v0);
  *(v8 + 32) = v13;
  swift_getKeyPath();
  v20(v7, *MEMORY[0x1E6976E90], v0);
  v19(v5, v7, v0);
  v15 = *(v10 + 48);
  v16 = *(v10 + 52);
  swift_allocObject();
  v17 = OUTLINED_FUNCTION_1_21();
  result = (v14)(v7, v0);
  *(v8 + 40) = v17;
  qword_1EC87BE48 = v8;
  return result;
}

uint64_t sub_1D4ECF024@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1D4ECF084(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 8))(v1, v2);
}

id sub_1D4ECF0DC()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6977600]) initWithVariants:3 options:2];
  v1 = [objc_allocWithZone(MEMORY[0x1E6977608]) initWithAlbumKind_];

  return v1;
}

uint64_t sub_1D4ECF18C(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  v5 = *a4;
}

uint64_t sub_1D4ECF1E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4ECF4E0;

  return LegacyModelExtendedLibraryRequestable.extendedAugmentedItem<A>(for:propertyProviderBasedInitializableType:attributeProperties:relationshipProperties:metadataProperties:options:library:)();
}

uint64_t sub_1D4ECF2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = swift_task_alloc();
  *(v9 + 16) = v16;
  *v16 = v9;
  v16[1] = sub_1D4ECF3E8;

  return LegacyModelExtendedLibraryRequestable.extendedAugmentedItemWithInternalRelationships<A>(for:propertyProviderBasedInitializableType:relationshipProperties:library:)(a1, a2, a3, a4, a5, a6, a9, a7);
}

uint64_t sub_1D4ECF3E8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t Playlist.Entry.InternalItem.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v186 = a4;
  v188 = a3;
  v190 = a1;
  v7 = type metadata accessor for TVEpisode();
  v8 = OUTLINED_FUNCTION_22(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = type metadata accessor for MusicMovie();
  v15 = OUTLINED_FUNCTION_22(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v172 = sub_1D5613D28();
  v21 = OUTLINED_FUNCTION_4(v172);
  v174 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13();
  v175 = v25;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v26);
  v173 = &v164 - v27;
  OUTLINED_FUNCTION_70_0();
  v181 = sub_1D560D9A8();
  v28 = OUTLINED_FUNCTION_4(v181);
  v171 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  v170 = v33 - v32;
  OUTLINED_FUNCTION_70_0();
  v34 = type metadata accessor for UploadedAudio();
  v35 = OUTLINED_FUNCTION_22(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5();
  v169 = v39 - v38;
  OUTLINED_FUNCTION_70_0();
  v40 = type metadata accessor for UploadedVideo();
  v41 = OUTLINED_FUNCTION_22(v40);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_5();
  v168 = v45 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF30, &qword_1D561C8C0);
  v47 = OUTLINED_FUNCTION_22(v46);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v51 = &v164 - v50;
  v182 = sub_1D560E728();
  v52 = OUTLINED_FUNCTION_4(v182);
  v54 = v53;
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_5();
  v189 = sub_1D560D838();
  v57 = OUTLINED_FUNCTION_4(v189);
  v185 = v58;
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_13();
  v176 = v61;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v62);
  v180 = &v164 - v63;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v64);
  v184 = &v164 - v65;
  OUTLINED_FUNCTION_70_0();
  v183 = sub_1D5613598();
  v66 = OUTLINED_FUNCTION_4(v183);
  v179 = v67;
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_13();
  v177 = v70;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v71);
  v178 = &v164 - v72;
  sub_1D560F7E8();
  sub_1D4ED048C();
  v73 = sub_1D5614C68();
  v74 = sub_1D4ED04E0(v73);
  if (v75)
  {
    v76 = 1;
  }

  else
  {
    v76 = v74;
  }

  v187 = a2;
  if (!sub_1D560F7B8())
  {
    goto LABEL_39;
  }

  if (v76 == 9)
  {

    if (qword_1EDD53D48 != -1)
    {
      v89 = swift_once();
    }

    OUTLINED_FUNCTION_18_4(v89, qword_1EDD53D50);
    sub_1D560D588();
    sub_1D560D4F8();
    v90 = v184;
    OUTLINED_FUNCTION_5_9();
    sub_1D4E50004(v51, &unk_1EC7EBF30, &qword_1D561C8C0);
    v91 = OUTLINED_FUNCTION_6_10();
    v92(v91);
    OUTLINED_FUNCTION_4_8();
    OUTLINED_FUNCTION_29_5();
    v93();
    OUTLINED_FUNCTION_16_10();
    OUTLINED_FUNCTION_15_11();
    MusicMovie.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)();
    swift_unknownObjectRelease();
    sub_1D4E50004(9, &qword_1EC7EEC40, &unk_1D561C070);
    v94 = OUTLINED_FUNCTION_14_6();
    MEMORY[8](v94);
    MEMORY[8](v90, v73);
    OUTLINED_FUNCTION_7_1();
    sub_1D4ED1434(v20, a5, v95);
    goto LABEL_36;
  }

  if (v76 == 6)
  {

    if (qword_1EDD53C38 != -1)
    {
      v77 = swift_once();
    }

    OUTLINED_FUNCTION_18_4(v77, qword_1EDD53C40);
    sub_1D560D588();
    sub_1D560D4F8();
    v78 = v184;
    OUTLINED_FUNCTION_5_9();
    sub_1D4E50004(v51, &unk_1EC7EBF30, &qword_1D561C8C0);
    v79 = OUTLINED_FUNCTION_6_10();
    v80(v79);
    OUTLINED_FUNCTION_4_8();
    OUTLINED_FUNCTION_29_5();
    v81();
    OUTLINED_FUNCTION_16_10();
    v82 = OUTLINED_FUNCTION_15_11();
    TVEpisode.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v82, v83, v84, v85, v86);
    swift_unknownObjectRelease();
    sub_1D4E50004(6, &qword_1EC7EEC40, &unk_1D561C070);
    v87 = OUTLINED_FUNCTION_14_6();
    MEMORY[6](v87);
    MEMORY[6](v78, v73);
    OUTLINED_FUNCTION_9_7();
    sub_1D4ED1434(v13, a5, v88);
    goto LABEL_36;
  }

  v166 = v54;
  v165 = a5;
  if (v76 != 1)
  {
    v191 = 0;
    v192 = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000039, 0x80000001D567E4D0);
    v194 = v76;
    type metadata accessor for MusicKit_SoftLinking_MPModelGenericObjectType();
    sub_1D5615D48();
    MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
    goto LABEL_39;
  }

  v96 = sub_1D560F7E8();
  v97 = *(v179 + 104);
  v97(v178, *MEMORY[0x1E6976AB0], v183);
  v98 = sub_1D5613588();
  v167 = v96;
  sub_1D4E494C8(v98, v99, v96);

  if (v193)
  {
    if (OUTLINED_FUNCTION_32_11())
    {
      v100 = v194;
      goto LABEL_19;
    }
  }

  else
  {
    sub_1D4E50004(&v191, &qword_1EC7E9F98, &qword_1D561C420);
  }

  v100 = 0;
LABEL_19:
  v97(v177, *MEMORY[0x1E6976B00], v183);
  v101 = sub_1D5613588();
  sub_1D4E494C8(v101, v102, v167);

  if (!v193)
  {
    sub_1D4E50004(&v191, &qword_1EC7E9F98, &qword_1D561C420);
    v104 = v176;
LABEL_27:
    if (v100)
    {
      OUTLINED_FUNCTION_33_10();

LABEL_29:
      if (qword_1EC7E8F18 != -1)
      {
        v105 = swift_once();
      }

      OUTLINED_FUNCTION_18_4(v105, qword_1EC7F08A0);
      sub_1D560D588();
      sub_1D560D4F8();
      v121 = v184;
      OUTLINED_FUNCTION_5_9();
      sub_1D4E50004(v51, &unk_1EC7EBF30, &qword_1D561C8C0);
      v122 = OUTLINED_FUNCTION_6_10();
      v123(v122);
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_29_5();
      v124();
      OUTLINED_FUNCTION_16_10();
      v125 = OUTLINED_FUNCTION_15_11();
      UploadedAudio.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v125, v126, v127, v128);
      swift_unknownObjectRelease();
      sub_1D4E50004(v100, &qword_1EC7EEC40, &unk_1D561C070);
      v129 = OUTLINED_FUNCTION_14_6();
      (v100)(v129);
      (v100)(v121, v73);
      v130 = OUTLINED_FUNCTION_3_6();
      (v100)(v130);
      v131 = OUTLINED_FUNCTION_26_3();
      (v100)(v131);
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_30_2(v132, v133, v134);
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  v103 = OUTLINED_FUNCTION_32_11();
  v104 = v176;
  if (!v103)
  {
    goto LABEL_27;
  }

  if (v100)
  {
    v100 = v194;
    OUTLINED_FUNCTION_33_10();

    if (v100)
    {
      if (qword_1EDD53CE8 != -1)
      {
        v105 = swift_once();
      }

      OUTLINED_FUNCTION_18_4(v105, qword_1EDD53CF0);
      sub_1D560D588();
      sub_1D560D4F8();
      v106 = v184;
      OUTLINED_FUNCTION_5_9();
      sub_1D4E50004(v51, &unk_1EC7EBF30, &qword_1D561C8C0);
      v107 = OUTLINED_FUNCTION_6_10();
      v108(v107);
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_29_5();
      v109();
      OUTLINED_FUNCTION_16_10();
      v110 = OUTLINED_FUNCTION_15_11();
      UploadedVideo.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v110, v111, v112, v113, v114);
      swift_unknownObjectRelease();
      sub_1D4E50004(v100, &qword_1EC7EEC40, &unk_1D561C070);
      v115 = OUTLINED_FUNCTION_14_6();
      (v100)(v115);
      (v100)(v106, v73);
      v116 = OUTLINED_FUNCTION_3_6();
      (v100)(v116);
      v117 = OUTLINED_FUNCTION_26_3();
      (v100)(v117);
      OUTLINED_FUNCTION_10_6();
      OUTLINED_FUNCTION_30_2(v118, v119, v120);
      goto LABEL_36;
    }

    goto LABEL_29;
  }

LABEL_32:
  v135 = v170;
  sub_1D560D928();
  sub_1D560D588();
  sub_1D560D4F8();
  OUTLINED_FUNCTION_5_9();
  sub_1D4E50004(v51, &unk_1EC7EBF30, &qword_1D561C8C0);
  v136 = OUTLINED_FUNCTION_6_10();
  v137(v136);
  (*(v171 + 8))(v135, v181);
  v138 = v185;
  (*(v185 + 16))(v184, v104, v189);
  OUTLINED_FUNCTION_16_10();
  swift_unknownObjectRetain();

  v139 = v173;
  sub_1D5613C88();
  v140 = v174;
  v141 = v175;
  v142 = v172;
  (*(v174 + 16))(v175, v139, v172);
  v143 = (*(v140 + 88))(v141, v142);
  if (v143 == *MEMORY[0x1E6976E18])
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_33_10();

    sub_1D4E50004(v135, &qword_1EC7EEC40, &unk_1D561C070);
    v144 = *(v138 + 8);
    v145 = v189;
    v144(v190, v189);
    (*(v140 + 8))(v139, v142);
    v144(v176, v145);
    v146 = OUTLINED_FUNCTION_3_6();
    (v144)(v146);
    v147 = OUTLINED_FUNCTION_26_3();
    (v144)(v147);
    v148 = v175;
    (*(v140 + 96))(v175, v142);
    v149 = sub_1D5613838();
    OUTLINED_FUNCTION_14(v149);
    (*(v150 + 32))(v165, v148);
  }

  else
  {
    v151 = v189;
    v152 = v190;
    v153 = v142;
    v154 = v165;
    if (v143 != *MEMORY[0x1E6976DF8])
    {
      while (1)
      {
        v191 = 0;
        v192 = 0xE000000000000000;
        sub_1D5615B68();
        MEMORY[0x1DA6EAC70](0xD000000000000048, 0x80000001D567E510);
        sub_1D4ED1740(&qword_1EC7EA708, MEMORY[0x1E6976E60]);
        v163 = sub_1D56160F8();
        MEMORY[0x1DA6EAC70](v163);

        MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
LABEL_39:
        sub_1D5615E08();
        __break(1u);
      }
    }

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_33_10();

    sub_1D4E50004(v135, &qword_1EC7EEC40, &unk_1D561C070);
    v155 = *(v138 + 8);
    v155(v152, v151);
    v156 = v174;
    (*(v174 + 8))(v173, v153);
    v155(v176, v151);
    v157 = OUTLINED_FUNCTION_3_6();
    (v155)(v157);
    v158 = OUTLINED_FUNCTION_26_3();
    (v155)(v158);
    v159 = v175;
    (*(v156 + 96))(v175, v153);
    v160 = sub_1D560EEA8();
    OUTLINED_FUNCTION_14(v160);
    (*(v161 + 32))(v154, v159);
  }

LABEL_36:
  type metadata accessor for Playlist.Entry.InternalItem();
  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1D4ED048C()
{
  result = qword_1EC7EA700;
  if (!qword_1EC7EA700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA700);
  }

  return result;
}

id sub_1D4ED04E0(uint64_t a1)
{
  if (*(a1 + 16) && (v2 = sub_1D4F15A70(), (v3 & 1) != 0) && (sub_1D4E5194C(*(a1 + 56) + 32 * v2, v6), (swift_dynamicCast() & 1) != 0))
  {
    return [objc_opt_self() typeForRawValue_];
  }

  else
  {
    return 0;
  }
}

double sub_1D4ED05AC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_20_17(a1, a2);
  if (v4 && (v5 = v3, v6 = sub_1D4F0DF68(), (v7 & 1) != 0))
  {
    v8 = *(v5 + 56) + 48 * v6;

    sub_1D4ED16E4(v8, v2);
  }

  else
  {
    result = 0.0;
    v2[1] = 0u;
    v2[2] = 0u;
    *v2 = 0u;
  }

  return result;
}

uint64_t sub_1D4ED0614(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_20_17(a1, a2);
  if (v4 && (v5 = v3, sub_1D4F0DDB4(v2), (v6 & 1) != 0))
  {
    v7 = *(v5 + 56);
    v8 = type metadata accessor for GenericMusicItem();
    OUTLINED_FUNCTION_14(v8);
    v10 = *(v9 + 72);
    OUTLINED_FUNCTION_26_2();
    sub_1D4ED1788(v11, v12, v13);
    v14 = OUTLINED_FUNCTION_27_2();
  }

  else
  {
    type metadata accessor for GenericMusicItem();
    v14 = OUTLINED_FUNCTION_25_9();
  }

  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

uint64_t sub_1D4ED06DC@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  if (*(a1 + 16) && (v8 = sub_1D4E4EFA0(), (v9 & 1) != 0))
  {
    v10 = v8;
    v11 = *(a1 + 56);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    OUTLINED_FUNCTION_14(v12);
    (*(v13 + 16))(a4, v11 + *(v13 + 72) * v10, v12);
    v14 = OUTLINED_FUNCTION_27_2();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v14 = OUTLINED_FUNCTION_25_9();
  }

  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

uint64_t sub_1D4ED0798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_1D4E4EFA0();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_19_8(v3);
}

uint64_t sub_1D4ED07FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = a4();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_19_8(v4);
}

uint64_t sub_1D4ED087C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_1D4F0E41C(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_19_8(v2);
}

uint64_t sub_1D4ED08E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_1D4F15A78(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_19_8(v3);
}

uint64_t sub_1D4ED092C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 4;
  }

  v3 = sub_1D4F0DDE0(a1);
  if (v4)
  {
    return *(*(a2 + 56) + v3);
  }

  else
  {
    return 4;
  }
}

double sub_1D4ED0978(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_20_17(a1, a2);
  if (!v3)
  {
    return OUTLINED_FUNCTION_24_6();
  }

  v4 = sub_1D4F0E758(v2);
  if ((v5 & 1) == 0)
  {
    return OUTLINED_FUNCTION_24_6();
  }

  v6 = OUTLINED_FUNCTION_12_12(v4);

  sub_1D4E5194C(v6, v7);
  return result;
}

double sub_1D4ED09E4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_20_17(a1, a2);
  if (!v3)
  {
    return OUTLINED_FUNCTION_24_6();
  }

  v4 = v2();
  if ((v5 & 1) == 0)
  {
    return OUTLINED_FUNCTION_24_6();
  }

  v6 = OUTLINED_FUNCTION_12_12(v4);

  sub_1D4E5194C(v6, v7);
  return result;
}

double sub_1D4ED0A54(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_20_17(a1, a2);
  if (!v3)
  {
    return OUTLINED_FUNCTION_24_6();
  }

  v4 = v2();
  if ((v5 & 1) == 0)
  {
    return OUTLINED_FUNCTION_24_6();
  }

  v6 = OUTLINED_FUNCTION_12_12(v4);

  sub_1D4E5194C(v6, v7);
  return result;
}

uint64_t sub_1D4ED0AC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a3();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_19_8(v3);
}

uint64_t sub_1D4ED0B14(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = sub_1D4F0E41C(a1);
    if (v3)
    {
      OUTLINED_FUNCTION_31_9(v2);
    }
  }

  return OUTLINED_FUNCTION_71();
}

uint64_t sub_1D4ED0B58(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1D4F0E020();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_19_8(v2);
}

uint64_t Playlist.Entry.InternalItem.convertToRawDictionary(for:)()
{
  v73 = type metadata accessor for UploadedVideo();
  v0 = OUTLINED_FUNCTION_14(v73);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  v72 = v4 - v3;
  OUTLINED_FUNCTION_70_0();
  v71 = type metadata accessor for UploadedAudio();
  v5 = OUTLINED_FUNCTION_14(v71);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v70 = v9 - v8;
  OUTLINED_FUNCTION_70_0();
  v69 = type metadata accessor for TVEpisode();
  v10 = OUTLINED_FUNCTION_14(v69);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = type metadata accessor for MusicMovie();
  v17 = OUTLINED_FUNCTION_14(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  v23 = sub_1D560EEA8();
  v24 = OUTLINED_FUNCTION_4(v23);
  v68 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  v30 = v29 - v28;
  v31 = sub_1D5613838();
  v32 = OUTLINED_FUNCTION_4(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5();
  v39 = v38 - v37;
  v40 = type metadata accessor for Playlist.Entry.InternalItem();
  v41 = OUTLINED_FUNCTION_14(v40);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_5();
  v46 = v45 - v44;
  OUTLINED_FUNCTION_11_6();
  sub_1D4ED1788(v74, v46, v47);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v68 + 32))(v30, v46, v23);
      sub_1D4ED1740(&qword_1EC7EA728, MEMORY[0x1E69754E8]);
      v51 = sub_1D56132F8();
      (*(v68 + 8))(v30, v23);
      return v51;
    case 2u:
      (*(v34 + 32))(v39, v46, v31);
      sub_1D4ED1740(&qword_1EC7EA730, MEMORY[0x1E6976BE8]);
      v51 = sub_1D56132F8();
      (*(v34 + 8))(v39, v31);
      return v51;
    case 3u:
      OUTLINED_FUNCTION_9_7();
      sub_1D4ED1434(v46, v15, v60);
      sub_1D4ED1740(&qword_1EC7EA720, type metadata accessor for TVEpisode);
      OUTLINED_FUNCTION_26_2();
      sub_1D4ED1740(v61, v62);
      v51 = sub_1D56132F8();
      v52 = type metadata accessor for TVEpisode;
      v53 = v15;
      break;
    case 4u:
      OUTLINED_FUNCTION_8_8();
      v54 = v46;
      v55 = v70;
      sub_1D4ED1434(v54, v70, v56);
      sub_1D4ED1740(&qword_1EC7EA718, type metadata accessor for UploadedAudio);
      OUTLINED_FUNCTION_26_2();
      sub_1D4ED1740(v57, v58);
      v51 = sub_1D56132F8();
      v59 = type metadata accessor for UploadedAudio;
      goto LABEL_8;
    case 5u:
      OUTLINED_FUNCTION_10_6();
      v63 = v46;
      v55 = v72;
      sub_1D4ED1434(v63, v72, v64);
      sub_1D4ED1740(&qword_1EC7EA710, type metadata accessor for UploadedVideo);
      OUTLINED_FUNCTION_26_2();
      sub_1D4ED1740(v65, v66);
      v51 = sub_1D56132F8();
      v59 = type metadata accessor for UploadedVideo;
LABEL_8:
      v52 = v59;
      v53 = v55;
      break;
    default:
      OUTLINED_FUNCTION_7_1();
      sub_1D4ED1434(v46, v22, v48);
      sub_1D4ED1740(&qword_1EDD592F8, type metadata accessor for MusicMovie);
      OUTLINED_FUNCTION_26_2();
      sub_1D4ED1740(v49, v50);
      v51 = sub_1D56132F8();
      v52 = type metadata accessor for MusicMovie;
      v53 = v22;
      break;
  }

  sub_1D4ED1490(v53, v52);
  return v51;
}

uint64_t Playlist.Entry.InternalItem.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Playlist.Entry.InternalItem();
  v4 = OUTLINED_FUNCTION_14(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  OUTLINED_FUNCTION_11_6();
  sub_1D4ED1788(v1, v9, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = sub_1D5613158();
  OUTLINED_FUNCTION_14(v12);
  (*(v13 + 104))(a1, **(&unk_1E84C4560 + EnumCaseMultiPayload));
  return sub_1D4ED1490(v9, type metadata accessor for Playlist.Entry.InternalItem);
}

BOOL sub_1D4ED12B4()
{
  v0 = sub_1D5615EF8();

  return v0 != 0;
}

BOOL sub_1D4ED1328@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1D4ED12B4();
  *a2 = result;
  return result;
}

unint64_t sub_1D4ED135C@<X0>(void *a1@<X8>)
{
  result = sub_1D4ED12FC();
  *a1 = 0xD000000000000028;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D4ED1390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D4ED1740(&qword_1EC7EA750, type metadata accessor for Playlist.Entry.InternalItem);

  return MEMORY[0x1EEDD15B0](a1, a2, a3, v8, a4);
}

uint64_t sub_1D4ED1434(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_71();
  v8(v7);
  return a2;
}

uint64_t sub_1D4ED1490(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

_BYTE *_s47LegacyModelPlaylistEntryInternalItemPropertyKeyOwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_1D4ED15E0()
{
  result = qword_1EC7EA738;
  if (!qword_1EC7EA738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA738);
  }

  return result;
}

unint64_t sub_1D4ED1638()
{
  result = qword_1EC7EA740;
  if (!qword_1EC7EA740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA740);
  }

  return result;
}

unint64_t sub_1D4ED1690()
{
  result = qword_1EC7EA748;
  if (!qword_1EC7EA748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA748);
  }

  return result;
}

uint64_t sub_1D4ED1740(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D4ED1788(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_71();
  v8(v7);
  return a2;
}

uint64_t OUTLINED_FUNCTION_31_9(uint64_t a1)
{
  v3 = (*(v1 + 56) + 16 * a1);
  v4 = *v3;
  v5 = v3[1];
}

uint64_t OUTLINED_FUNCTION_33_10()
{
  v2 = *(v0 - 328);
}

void sub_1D4ED182C()
{
  OUTLINED_FUNCTION_47();
  v192 = v0;
  v182 = v1;
  v199 = v2;
  v197 = v3;
  v5 = v4;
  v185 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  v184 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA780, &unk_1D561FB20);
  OUTLINED_FUNCTION_22(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_3();
  v189 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_3();
  v200 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13_3();
  v191 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA790, &unk_1D561FB10);
  OUTLINED_FUNCTION_22(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13_3();
  v193 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E0, &unk_1D5623AB0);
  v33 = OUTLINED_FUNCTION_22(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13();
  v186 = v36;
  MEMORY[0x1EEE9AC00](v37);
  v203 = &v172 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E8, &qword_1D561CAD8);
  v40 = OUTLINED_FUNCTION_22(v39);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v43);
  v206 = &v172 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  v46 = OUTLINED_FUNCTION_22(v45);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v49);
  v205 = &v172 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EA7F8, &unk_1D56311B0);
  v52 = OUTLINED_FUNCTION_22(v51);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v172 - v56;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
  v58 = OUTLINED_FUNCTION_4(v179);
  v181 = v59;
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v62);
  v196 = &v172 - v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA808, &unk_1D56311C0);
  v202 = v64;
  v65 = OUTLINED_FUNCTION_4(v64);
  v188 = v66;
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v172 - v70;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
  v73 = OUTLINED_FUNCTION_4(v72);
  v187 = v74;
  v76 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v77);
  v201 = &v172 - v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA818, &qword_1D561CAE0);
  v80 = OUTLINED_FUNCTION_4(v79);
  v190 = v81;
  v83 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v84);
  v86 = &v172 - v85;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA820, &unk_1D5623370);
  sub_1D5612378();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA828, &qword_1D5623400);
  sub_1D5612378();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA830, &qword_1D56233C0);
  v198 = v71;
  sub_1D5612378();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA770, &unk_1D561F1C0);
  v180 = v87;
  v183 = v5;
  sub_1D5612378();
  v195 = v57;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v88, v89, v90, v79);
  OUTLINED_FUNCTION_33();
  v204 = v72;
  __swift_storeEnumTagSinglePayload(v91, v92, v93, v72);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v94, v95, v96, v64);
  OUTLINED_FUNCTION_33();
  v97 = v179;
  __swift_storeEnumTagSinglePayload(v98, v99, v100, v179);
  v194 = v86;
  if (sub_1D56123F8() & 1) != 0 && (sub_1D56123F8() & 1) != 0 && (sub_1D56123F8() & 1) != 0 && (sub_1D56123F8())
  {
    v101 = v195;
    sub_1D4E7661C(v195, &off_1EC7EA7F8, &unk_1D56311B0);
    (*(v190 + 16))(v101, v194, v79);
    __swift_storeEnumTagSinglePayload(v101, 0, 1, v79);
  }

  else
  {
    v102 = v176;
    sub_1D5612348();
    v103 = v102;
    v101 = v195;
    sub_1D4ED39C0(v103, v195, &off_1EC7EA7F8, &unk_1D56311B0);
    v104 = v177;
    sub_1D5612348();
    sub_1D4ED39C0(v104, v205, &qword_1EC7EA7F0, &unk_1D561E8C0);
    v105 = v178;
    sub_1D5612348();
    sub_1D4ED39C0(v105, v206, &qword_1EC7EA7E8, &qword_1D561CAD8);
    v106 = v186;
    sub_1D5612348();
    sub_1D4ED39C0(v106, v203, &qword_1EC7EA7E0, &unk_1D5623AB0);
  }

  v107 = 1;
  v186 = v79;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v101, 1, v79);
  v109 = v189;
  v110 = v182;
  v111 = v193;
  if (!EnumTagSinglePayload)
  {
    v112 = v190;
    v113 = v172;
    v114 = v186;
    (*(v190 + 16))(v172, v101, v186);
    sub_1D560CD98();
    v115 = v191;
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v116, v117, v118, v119);
    sub_1D56141F8();
    OUTLINED_FUNCTION_6_11();
    sub_1D4ED3808(v120, v121);
    OUTLINED_FUNCTION_16_11();
    OUTLINED_FUNCTION_19_9();
    sub_1D5612368();
    sub_1D4E7661C(v115, &qword_1EC7EA7D8, &unk_1D561E8B0);
    (*(v112 + 8))(v113, v114);
    v107 = 0;
  }

  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA560, &unk_1D561C4B0);
  __swift_storeEnumTagSinglePayload(v111, v107, 1, v122);
  if (!__swift_getEnumTagSinglePayload(v205, 1, v204))
  {
    v123 = v187;
    v124 = v173;
    v125 = v204;
    (*(v187 + 16))(v173, v205, v204);
    sub_1D560CD98();
    v126 = v191;
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v127, v128, v129, v130);
    sub_1D5613C48();
    OUTLINED_FUNCTION_9_8();
    sub_1D4ED3808(v131, v132);
    OUTLINED_FUNCTION_16_11();
    OUTLINED_FUNCTION_19_9();
    sub_1D5612368();
    sub_1D4E7661C(v126, &qword_1EC7EA7D8, &unk_1D561E8B0);
    v133 = v124;
    v111 = v193;
    (*(v123 + 8))(v133, v125);
  }

  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  v135 = 1;
  OUTLINED_FUNCTION_24_8(v200, v136, v137, v134);
  v138 = __swift_getEnumTagSinglePayload(v206, 1, v202);
  v139 = v203;
  if (!v138)
  {
    v140 = v188;
    v141 = v174;
    v142 = v202;
    (*(v188 + 16))(v174, v206, v202);
    sub_1D560CD98();
    v143 = v191;
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v144, v145, v146, v147);
    sub_1D5614B68();
    OUTLINED_FUNCTION_7_15();
    sub_1D4ED3808(v148, v149);
    OUTLINED_FUNCTION_16_11();
    sub_1D5612368();
    sub_1D4E7661C(v143, &qword_1EC7EA7D8, &unk_1D561E8B0);
    v150 = v142;
    v139 = v203;
    (*(v140 + 8))(v141, v150);
    v135 = 0;
  }

  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA550, &qword_1D561D670);
  __swift_storeEnumTagSinglePayload(v109, v135, 1, v151);
  if (__swift_getEnumTagSinglePayload(v139, 1, v97))
  {

    OUTLINED_FUNCTION_24_0(v110);
    (*(v152 + 8))(v197, v110);
    OUTLINED_FUNCTION_24_0(v180);
    (*(v153 + 8))(v183);
    (*(v181 + 8))(v196, v97);
    v154 = v184;
  }

  else
  {
    v155 = v181;
    (*(v181 + 16))();
    sub_1D560CD98();
    v156 = v97;
    v157 = v191;
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v158, v159, v160, v161);
    type metadata accessor for SocialProfile();
    sub_1D4ED3808(&qword_1EDD57510, type metadata accessor for SocialProfile);
    OUTLINED_FUNCTION_10_1();
    sub_1D4ED3808(v162, type metadata accessor for SocialProfile);
    v176 = v192;
    v154 = v184;
    v163 = v197;
    v139 = v203;
    sub_1D5612368();

    OUTLINED_FUNCTION_24_0(v110);
    v111 = v193;
    (*(v164 + 8))(v163, v110);
    OUTLINED_FUNCTION_24_0(v180);
    (*(v165 + 8))(v183);
    sub_1D4E7661C(v157, &qword_1EC7EA7D8, &unk_1D561E8B0);
    v166 = *(v155 + 8);
    v109 = v189;
    v166(v175, v156);
    v166(v196, v156);
  }

  (*(v188 + 8))(v198, v202);
  (*(v187 + 8))(v201, v204);
  (*(v190 + 8))(v194, v186);
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  OUTLINED_FUNCTION_24_8(v154, v168, v169, v167);
  v170 = v185;
  sub_1D4ED3A14(v111, v185, &qword_1EC7EA790, &unk_1D561FB10);
  v171 = type metadata accessor for CuratorRelationshipProvider();
  sub_1D4ED3A14(v200, v170 + v171[5], &qword_1EC7EA788, &unk_1D56223A0);
  sub_1D4ED3A14(v109, v170 + v171[6], &qword_1EC7EA780, &unk_1D561FB20);
  sub_1D4ED3A14(v154, v170 + v171[7], &qword_1EC7EA778, &qword_1D5622E60);
  sub_1D4E7661C(v139, &qword_1EC7EA7E0, &unk_1D5623AB0);
  sub_1D4E7661C(v206, &qword_1EC7EA7E8, &qword_1D561CAD8);
  sub_1D4E7661C(v205, &qword_1EC7EA7F0, &unk_1D561E8C0);
  sub_1D4E7661C(v195, &off_1EC7EA7F8, &unk_1D56311B0);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4ED284C()
{
  swift_getKeyPath();
  swift_getAtKeyPath();
}

void CloudResource<>.socialProfileRawResource.getter()
{
  OUTLINED_FUNCTION_47();
  v0 = sub_1D5611998();
  v1 = OUTLINED_FUNCTION_4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1D5610A78();
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA768, &qword_1D5623380);
  sub_1D5610648();
  v15 = v12[11];
  v16 = OUTLINED_FUNCTION_15_2();
  if (v17(v16) == *MEMORY[0x1E6975F28])
  {
    v18 = v12[12];
    v19 = OUTLINED_FUNCTION_15_2();
    v20(v19);
    v21 = OUTLINED_FUNCTION_18_5();
    v22(v21);
    OUTLINED_FUNCTION_8_9();
    sub_1D4ED3808(v23, v24);
    OUTLINED_FUNCTION_19_9();
    sub_1D5610598();
    (*(v3 + 8))(v8, v0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA770, &unk_1D561F1C0);
    v25 = OUTLINED_FUNCTION_17_2();
    __swift_storeEnumTagSinglePayload(v25, 0, 1, v26);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA770, &unk_1D561F1C0);
    OUTLINED_FUNCTION_17_2();
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
    v31 = v12[1];
    v32 = OUTLINED_FUNCTION_15_2();
    v33(v32);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4ED2AC0()
{
  OUTLINED_FUNCTION_47();
  v0 = sub_1D5611998();
  v1 = OUTLINED_FUNCTION_4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1D5610A78();
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA768, &qword_1D5623380);
  sub_1D5610648();
  v15 = v12[11];
  v16 = OUTLINED_FUNCTION_15_2();
  if (v17(v16) == *MEMORY[0x1E6975F28])
  {
    v18 = v12[12];
    v19 = OUTLINED_FUNCTION_15_2();
    v20(v19);
    v21 = OUTLINED_FUNCTION_18_5();
    v22(v21);
    OUTLINED_FUNCTION_8_9();
    sub_1D4ED3808(v23, v24);
    OUTLINED_FUNCTION_19_9();
    sub_1D5610598();
    (*(v3 + 8))(v8, v0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA770, &unk_1D561F1C0);
    v25 = OUTLINED_FUNCTION_17_2();
    __swift_storeEnumTagSinglePayload(v25, 0, 1, v26);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA770, &unk_1D561F1C0);
    OUTLINED_FUNCTION_17_2();
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
    v31 = v12[1];
    v32 = OUTLINED_FUNCTION_15_2();
    v33(v32);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4ED2CDC()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v114 = v4;
  v105 = v5;
  v112 = v6;
  v103 = *(v6 - 8);
  v7 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v104 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_3();
  v101 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA780, &unk_1D561FB20);
  OUTLINED_FUNCTION_22(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_3();
  v99 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_3();
  v98 = v24;
  v25 = sub_1D5613578();
  v26 = OUTLINED_FUNCTION_4(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  v33 = v32 - v31;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA790, &unk_1D561FB10);
  OUTLINED_FUNCTION_22(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v98 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA798, &unk_1D5622EF0);
  v100 = *(v40 - 8);
  v41 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v40 - 8);
  OUTLINED_FUNCTION_13();
  v102 = v42;
  v44 = MEMORY[0x1EEE9AC00](v43);
  v111 = &v98 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v48 = &v98 - v47;
  MEMORY[0x1EEE9AC00](v46);
  v50 = &v98 - v49;
  v113 = v1;
  sub_1D4ED3750(v1, v39, &qword_1EC7EA790, &unk_1D561FB10);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA560, &unk_1D561C4B0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v39, 1, v51);
  v115 = v3;
  v108 = v25;
  v109 = v50;
  v106 = v33;
  v107 = v28;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E7661C(v39, &qword_1EC7EA790, &unk_1D561FB10);
    v53 = v112;
  }

  else
  {
    sub_1D56141F8();
    OUTLINED_FUNCTION_6_11();
    sub_1D4ED3808(v54, v55);
    v56 = v112;
    sub_1D4F1ABE8(v33);
    v50 = v109;
    sub_1D560DA88();
    (*(v28 + 8))(v33, v25);
    OUTLINED_FUNCTION_24_0(v51);
    (*(v57 + 8))(v39, v51);
    v53 = v56;
  }

  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
  OUTLINED_FUNCTION_24_8(v50, v59, v60, v58);
  v61 = type metadata accessor for CuratorRelationshipProvider();
  v62 = v98;
  sub_1D4ED3750(v113 + v61[5], v98, &qword_1EC7EA788, &unk_1D56223A0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  v64 = __swift_getEnumTagSinglePayload(v62, 1, v63);
  v110 = v48;
  if (v64 == 1)
  {
    sub_1D4E7661C(v62, &qword_1EC7EA788, &unk_1D56223A0);
    v65 = v101;
    v66 = v107;
  }

  else
  {
    sub_1D5613C48();
    OUTLINED_FUNCTION_9_8();
    sub_1D4ED3808(v67, v68);
    v69 = v106;
    sub_1D4F1ABE8(v106);
    sub_1D560DA88();
    v66 = v107;
    (*(v107 + 8))(v69, v108);
    OUTLINED_FUNCTION_24_0(v63);
    (*(v70 + 8))(v62, v63);
    v65 = v101;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
  v71 = OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_24_8(v71, v72, v73, v74);
  v75 = v99;
  sub_1D4ED3750(v113 + v61[6], v99, &qword_1EC7EA780, &unk_1D561FB20);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA550, &qword_1D561D670);
  if (__swift_getEnumTagSinglePayload(v75, 1, v76) == 1)
  {
    sub_1D4E7661C(v75, &qword_1EC7EA780, &unk_1D561FB20);
    v77 = 1;
    v78 = v111;
    v79 = v106;
  }

  else
  {
    sub_1D5614B68();
    OUTLINED_FUNCTION_7_15();
    sub_1D4ED3808(v80, v81);
    v79 = v106;
    OUTLINED_FUNCTION_22_6();
    sub_1D4F1ABE8(v82);
    v78 = v111;
    v66 = v107;
    sub_1D560DA88();
    (*(v66 + 8))(v79, v108);
    OUTLINED_FUNCTION_24_0(v76);
    (*(v83 + 8))(v75, v76);
    v77 = 0;
  }

  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
  __swift_storeEnumTagSinglePayload(v78, v77, 1, v84);
  sub_1D4ED3750(v113 + v61[7], v65, &qword_1EC7EA778, &qword_1D5622E60);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  if (__swift_getEnumTagSinglePayload(v65, 1, v85) == 1)
  {
    sub_1D4E7661C(v65, &qword_1EC7EA778, &qword_1D5622E60);
    v86 = 1;
    v87 = v102;
    v53 = v112;
  }

  else
  {
    type metadata accessor for SocialProfile();
    sub_1D4ED3808(&qword_1EDD57510, type metadata accessor for SocialProfile);
    OUTLINED_FUNCTION_10_1();
    sub_1D4ED3808(v88, type metadata accessor for SocialProfile);
    OUTLINED_FUNCTION_22_6();
    sub_1D4F1ABE8(v89);
    v87 = v102;
    sub_1D560DA88();
    (*(v66 + 8))(v79, v108);
    OUTLINED_FUNCTION_24_0(v85);
    (*(v90 + 8))(v65, v85);
    v86 = 0;
  }

  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
  __swift_storeEnumTagSinglePayload(v87, v86, 1, v91);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A8, &unk_1D5623B40);
  v92 = *(v100 + 72);
  v93 = (*(v100 + 80) + 32) & ~*(v100 + 80);
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_1D561CA30;
  v95 = v109;
  OUTLINED_FUNCTION_23_11(v109, v94 + v93);
  v96 = v110;
  OUTLINED_FUNCTION_23_11(v110, v94 + v93 + v92);
  v97 = v111;
  OUTLINED_FUNCTION_23_11(v111, v94 + v93 + 2 * v92);
  OUTLINED_FUNCTION_23_11(v87, v94 + v93 + 3 * v92);
  v116 = v94;
  (*(v103 + 16))(v104, v114, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA768, &qword_1D5623380);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7B0, &qword_1D5623B50);
  sub_1D4ED37A4();
  sub_1D5612408();
  OUTLINED_FUNCTION_25_2(v87);
  OUTLINED_FUNCTION_25_2(v97);
  OUTLINED_FUNCTION_25_2(v96);
  OUTLINED_FUNCTION_25_2(v95);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4ED3750(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_14_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_24_0(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

unint64_t sub_1D4ED37A4()
{
  result = qword_1EC7EA7B8;
  if (!qword_1EC7EA7B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA7B0, &qword_1D5623B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA7B8);
  }

  return result;
}

uint64_t sub_1D4ED3808(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D4ED3850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v27 = v26;
  v28 = *(v24 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  v32 = v31 - v30;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
  OUTLINED_FUNCTION_4(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  (*(v38 + 16))(&a9 - v37, v23);
  (*(v28 + 16))(v32, v27, v25);

  OUTLINED_FUNCTION_19_9();
  sub_1D4ED182C();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4ED39C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_14_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_24_0(v6);
  (*(v7 + 40))(v4, v5);
  return v4;
}

uint64_t sub_1D4ED3A14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_14_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_24_0(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_23_11(uint64_t a1, uint64_t a2)
{

  return sub_1D4ED3750(a1, a2, v2, v3);
}

uint64_t MusicSiriItemRequest.init(for:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = type metadata accessor for MusicSiriItemRequest(0);
  v7 = *(v6 + 20);

  _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
  sub_1D4ED4004(a1, type metadata accessor for MusicSiriRepresentation);
  *(a2 + *(v6 + 24)) = 4;
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = 2;
  type metadata accessor for MusicSiriItemRequest.Kind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D4ED3B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for MusicSiriItemRequest(0);
  v9 = a4 + *(v8 + 20);
  _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
  *(a4 + *(v8 + 24)) = 4;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  type metadata accessor for MusicSiriItemRequest.Kind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t MusicSiriItemRequest.init(siriAssetInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for MusicSiriItemRequest(0);
  v7 = a3 + *(v6 + 20);
  _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
  *(a3 + *(v6 + 24)) = 4;
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for MusicSiriItemRequest.Kind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t MusicSiriItemRequest.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_85_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  v6 = OUTLINED_FUNCTION_22(v5);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - v12;
  v14 = v1 + *(type metadata accessor for MusicSiriItemRequest(0) + 20);
  sub_1D560CCE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA840, &qword_1D561D790);
  v15 = type metadata accessor for MusicRequestConfiguration();
  v16 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v13, v16 ^ 1u, 1, v15);
  sub_1D4E69970(v13, v11, &qword_1EC7EA838, &unk_1D561CB10);
  if (__swift_getEnumTagSinglePayload(v11, 1, v15) == 1)
  {
    static MusicRequestConfiguration.globalDefault.getter(a1);
    if (__swift_getEnumTagSinglePayload(v11, 1, v15) != 1)
    {
      sub_1D4E50004(v11, &qword_1EC7EA838, &unk_1D561CB10);
    }
  }

  else
  {
    sub_1D4EF228C(v11, a1);
  }

  return sub_1D4E50004(v13, &qword_1EC7EA838, &unk_1D561CB10);
}

uint64_t sub_1D4ED3E48(uint64_t a1)
{
  v2 = type metadata accessor for MusicRequestConfiguration();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D4EF19F4(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  return MusicSiriItemRequest.configuration.setter();
}

uint64_t MusicSiriItemRequest.configuration.setter()
{
  OUTLINED_FUNCTION_147();
  v1 = sub_1D560CD48();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MusicRequestConfiguration();
  OUTLINED_FUNCTION_5_10();
  sub_1D4EF1A64(v6, v7);
  sub_1D560E6C8();
  OUTLINED_FUNCTION_4_9();
  sub_1D4ED4004(v0, v8);
  v9 = type metadata accessor for MusicSiriItemRequest(0);
  return (*(v2 + 40))(v0 + *(v9 + 20), v5, v1);
}

uint64_t sub_1D4ED4004(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void (*MusicSiriItemRequest.configuration.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_1D560CD48();
  v3[1] = v4;
  OUTLINED_FUNCTION_69(v4);
  v3[2] = v5;
  v3[3] = __swift_coroFrameAllocStub(*(v6 + 64));
  v7 = type metadata accessor for MusicRequestConfiguration();
  v3[4] = v7;
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  v3[5] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[6] = v10;
  MusicSiriItemRequest.configuration.getter(v10);
  return sub_1D4ED4150;
}

void sub_1D4ED4150(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v6 = (*a1)[3];
  v5 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    v10 = OUTLINED_FUNCTION_93();
    sub_1D4EF19F4(v10, v11);
    OUTLINED_FUNCTION_5_10();
    sub_1D4EF1A64(v12, v13);
    sub_1D560E6C8();
    sub_1D4ED4004(v3, type metadata accessor for MusicRequestConfiguration);
    v14 = type metadata accessor for MusicSiriItemRequest(0);
    v15 = OUTLINED_FUNCTION_148_0(v14);
    v16(v15);
    sub_1D4ED4004(v4, type metadata accessor for MusicRequestConfiguration);
  }

  else
  {
    OUTLINED_FUNCTION_5_10();
    sub_1D4EF1A64(v17, v18);
    sub_1D560E6C8();
    OUTLINED_FUNCTION_4_9();
    sub_1D4ED4004(v4, v19);
    v20 = type metadata accessor for MusicSiriItemRequest(0);
    v21 = OUTLINED_FUNCTION_148_0(v20);
    v22(v21);
  }

  free(v4);
  free(v3);
  free(v6);

  free(v2);
}

uint64_t MusicSiriItemRequest.source.getter@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_166();
  *a1 = *(v1 + v4);
  return result;
}

uint64_t MusicSiriItemRequest.source.setter(char *a1)
{
  v2 = *a1;
  result = OUTLINED_FUNCTION_166();
  *(v1 + v4) = v2;
  return result;
}

uint64_t MusicSiriItemRequest.response()()
{
  OUTLINED_FUNCTION_60();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for MusicSiriRepresentation.ParsedIdentifiers();
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_127();
  v6 = type metadata accessor for MusicSiriItemResponse();
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v9 = type metadata accessor for MusicSiriItemRequest.Kind(0);
  v1[8] = v9;
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  v1[9] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1D4ED4434()
{
  OUTLINED_FUNCTION_91();
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 24);
  sub_1D4EF1814(0xD000000000000040, 0x80000001D567E560, 0x15uLL);
  v5 = v4;
  v7 = v6;
  *(v0 + 80) = v6;
  sub_1D4EF19F4(v3, v1);
  OUTLINED_FUNCTION_70();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(v0 + 72);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_117_1(v9, *(v0 + 32));
      swift_task_alloc();
      OUTLINED_FUNCTION_58();
      *(v0 + 120) = v10;
      *v10 = v11;
      v10[1] = sub_1D4ED4870;
      v12 = *(v0 + 48);
      v14 = *(v0 + 24);
      v13 = *(v0 + 32);

      return sub_1D4ED58F8(v12, v13, v5, v7);
    }

    else
    {
      v23 = *v9;
      *(v0 + 136) = *v9;
      v24 = *(v9 + 8);
      *(v0 + 144) = v24;
      swift_task_alloc();
      OUTLINED_FUNCTION_58();
      *(v0 + 152) = v25;
      *v25 = v26;
      v25[1] = sub_1D4ED4A20;
      v27 = *(v0 + 40);
      v28 = *(v0 + 24);

      return sub_1D4ED6644(v27, v23, v24, v5, v7);
    }
  }

  else
  {
    v16 = *v9;
    *(v0 + 88) = *v9;
    v17 = *(v9 + 8);
    *(v0 + 96) = v17;
    v18 = *(v9 + 16);
    *(v0 + 168) = v18;
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    *(v0 + 104) = v19;
    *v19 = v20;
    v19[1] = sub_1D4ED4688;
    v21 = *(v0 + 56);
    v22 = *(v0 + 24);

    return sub_1D4ED4D60(v21, v16, v17, v18, v5, v7);
  }
}

uint64_t sub_1D4ED4688()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = v4[13];
  v6 = v4[12];
  v7 = v4[11];
  v8 = v4[10];
  v9 = *v1;
  v10 = *(v2 + 168);
  OUTLINED_FUNCTION_23_0();
  *v11 = v9;
  *(v12 + 112) = v0;

  v13 = OUTLINED_FUNCTION_98();
  sub_1D4EF1A4C(v13, v14, v10);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1D4ED47DC()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  OUTLINED_FUNCTION_41_10();
  sub_1D4EF228C(v2, v4);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_153_1();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1D4ED4870()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *(v4 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v9 + 128) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D4ED4984()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_39_6(v0[4]);
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  OUTLINED_FUNCTION_41_10();
  sub_1D4EF228C(v2, v4);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_153_1();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1D4ED4A20()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 152);
  v6 = *(v4 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v9 + 160) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D4ED4B34()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  sub_1D4E55E1C(v0[17], v0[18]);
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  OUTLINED_FUNCTION_41_10();
  sub_1D4EF228C(v1, v5);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_153_1();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1D4ED4BD0()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v1 = *(v0 + 112);
  OUTLINED_FUNCTION_150_2();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_153_1();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1D4ED4C50()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_39_6(*(v0 + 32));
  v1 = *(v0 + 128);
  OUTLINED_FUNCTION_150_2();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_153_1();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1D4ED4CD8()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  sub_1D4E55E1C(v0[17], v0[18]);
  v1 = v0[20];
  OUTLINED_FUNCTION_150_2();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_153_1();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1D4ED4D60(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 64) = a6;
  *(v7 + 72) = v6;
  *(v7 + 170) = a4;
  *(v7 + 48) = a3;
  *(v7 + 56) = a5;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  v8 = *(*(type metadata accessor for MusicSiriRepresentation.ParsedIdentifiers() - 8) + 64) + 15;
  *(v7 + 80) = swift_task_alloc();
  *(v7 + 88) = swift_task_alloc();
  *(v7 + 96) = swift_task_alloc();
  *(v7 + 104) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0) - 8) + 64) + 15;
  *(v7 + 112) = swift_task_alloc();
  v10 = sub_1D560C0A8();
  *(v7 + 120) = v10;
  v11 = *(v10 - 8);
  *(v7 + 128) = v11;
  v12 = *(v11 + 64) + 15;
  *(v7 + 136) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4ED4EB4, 0, 0);
}

uint64_t sub_1D4ED4EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_68_1();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_76_2();
  a22 = v24;
  v27 = *(v24 + 48);
  v28 = v27;
  if (qword_1EC7E90D8 != -1)
  {
    OUTLINED_FUNCTION_19_10();
    v28 = *(v24 + 48);
  }

  v29 = *(v24 + 64);
  v30 = *(v24 + 40);
  v31 = *(v24 + 170);
  v32 = sub_1D560C758();
  *(v24 + 144) = __swift_project_value_buffer(v32, qword_1EC87C330);

  sub_1D4EF21F8(v30, v28, v31);
  v33 = sub_1D560C738();
  v34 = sub_1D56156E8();

  sub_1D4EF1A4C(v30, v28, v31);
  if (os_log_type_enabled(v33, v34))
  {
    v36 = *(v24 + 56);
    v35 = *(v24 + 64);
    v37 = *(v24 + 40);
    v38 = OUTLINED_FUNCTION_144();
    a12 = swift_slowAlloc();
    *v38 = 136446466;
    v39 = OUTLINED_FUNCTION_66();
    *(v38 + 4) = sub_1D4E6835C(v39, v40, v41);
    *(v38 + 12) = 2082;
    *(v38 + 14) = sub_1D4E6835C(v37, v27, &a12);
    _os_log_impl(&dword_1D4E3F000, v33, v34, "[%{public}s] 􀀀􀀀􀀁 Start getting item for identifier: %{public}s.", v38, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_83();
  }

  v43 = *(v24 + 112);
  v42 = *(v24 + 120);
  v44 = *(v24 + 40);
  sub_1D560C028();
  if (__swift_getEnumTagSinglePayload(v43, 1, v42) == 1)
  {
    v45 = *(v24 + 64);
    sub_1D4E50004(*(v24 + 112), &unk_1EC7E9CA8, &unk_1D561D1D0);
    sub_1D4EF211C();
    OUTLINED_FUNCTION_121_0();
    OUTLINED_FUNCTION_125(v46, 3);

    v47 = sub_1D560C738();
    sub_1D56156E8();
    OUTLINED_FUNCTION_146_1();

    if (OUTLINED_FUNCTION_152_0())
    {
      v68 = *(v24 + 56);
      v67 = *(v24 + 64);
      v69 = OUTLINED_FUNCTION_142();
      v70 = OUTLINED_FUNCTION_138_0();
      a12 = v70;
      *v69 = 136446210;
      *(v69 + 4) = sub_1D4E6835C(v68, v67, &a12);
      _os_log_impl(&dword_1D4E3F000, v47, v42, "[%{public}s] 􀀁􀀀􀀀 Finish.", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v70);
      OUTLINED_FUNCTION_114_0();
      OUTLINED_FUNCTION_122();
    }

    v71 = *(v24 + 136);
    v73 = *(v24 + 104);
    v72 = *(v24 + 112);
    v75 = *(v24 + 88);
    v74 = *(v24 + 96);
    v76 = *(v24 + 80);

    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_63_0();

    return v78(v77, v78, v79, v80, v81, v82, v83, v84, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    v48 = *(v24 + 170);
    (*(*(v24 + 128) + 32))(*(v24 + 136), *(v24 + 112), *(v24 + 120));
    v49 = *(v24 + 136);
    v50 = *(v24 + 40);
    if (v48)
    {
      if (v48 == 1)
      {
        v51 = (v24 + 80);
        sub_1D536E6A0(v50, v27, (v24 + 168), *(v24 + 80));
      }

      else
      {
        v52 = *(v24 + 96);
        v51 = (v24 + 96);
        sub_1D55C4750();
      }
    }

    else
    {
      v51 = (v24 + 88);
      sub_1D536DB74(v50, v27, (v24 + 168), *(v24 + 88));
    }

    OUTLINED_FUNCTION_117_1(*v51, *(v24 + 104));
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    *(v24 + 152) = v53;
    *v53 = v54;
    v53[1] = sub_1D4ED5554;
    v55 = *(v24 + 104);
    v56 = *(v24 + 64);
    v57 = *(v24 + 72);
    v58 = *(v24 + 56);
    v59 = *(v24 + 32);
    OUTLINED_FUNCTION_63_0();

    return sub_1D4ED58F8(v60, v61, v62, v63);
  }
}

uint64_t sub_1D4ED5554()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 152);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 160) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D4ED564C()
{
  OUTLINED_FUNCTION_160();
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[8];
  OUTLINED_FUNCTION_39_6(v0[13]);
  v6 = *(v4 + 8);
  v7 = OUTLINED_FUNCTION_128();
  v8(v7);

  v9 = sub_1D560C738();
  sub_1D56156E8();

  if (OUTLINED_FUNCTION_165_0())
  {
    v11 = v0[7];
    v10 = v0[8];
    v12 = OUTLINED_FUNCTION_142();
    v26 = OUTLINED_FUNCTION_138_0();
    *v12 = 136446210;
    v13 = OUTLINED_FUNCTION_93();
    *(v12 + 4) = sub_1D4E6835C(v13, v14, v15);
    OUTLINED_FUNCTION_163(&dword_1D4E3F000, v16, v17, "[%{public}s] 􀀁􀀀􀀀 Finish.");
    __swift_destroy_boxed_opaque_existential_1(v26);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_83();
  }

  v18 = v0[17];
  v19 = v0[13];
  v20 = v0[14];
  v22 = v0[11];
  v21 = v0[12];
  v23 = v0[10];

  OUTLINED_FUNCTION_22_1();

  return v24();
}

uint64_t sub_1D4ED57A0()
{
  OUTLINED_FUNCTION_160();
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[8];
  OUTLINED_FUNCTION_39_6(v0[13]);
  v6 = *(v4 + 8);
  v7 = OUTLINED_FUNCTION_128();
  v8(v7);

  v9 = sub_1D560C738();
  sub_1D56156E8();

  if (OUTLINED_FUNCTION_165_0())
  {
    v11 = v0[7];
    v10 = v0[8];
    v12 = OUTLINED_FUNCTION_142();
    v27 = OUTLINED_FUNCTION_138_0();
    *v12 = 136446210;
    v13 = OUTLINED_FUNCTION_93();
    *(v12 + 4) = sub_1D4E6835C(v13, v14, v15);
    OUTLINED_FUNCTION_163(&dword_1D4E3F000, v16, v17, "[%{public}s] 􀀁􀀀􀀀 Finish.");
    __swift_destroy_boxed_opaque_existential_1(v27);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_83();
  }

  v18 = v0[20];
  v19 = v0[17];
  v21 = v0[13];
  v20 = v0[14];
  v23 = v0[11];
  v22 = v0[12];
  v24 = v0[10];

  OUTLINED_FUNCTION_55();

  return v25();
}

uint64_t sub_1D4ED58F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = *(*(type metadata accessor for MusicRequestConfiguration() - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6DF0, &qword_1D561D1E0) - 8) + 64) + 15;
  v5[9] = swift_task_alloc();
  v8 = sub_1D560D9A8();
  v5[10] = v8;
  v9 = *(v8 - 8);
  v5[11] = v9;
  v10 = *(v9 + 64) + 15;
  v5[12] = swift_task_alloc();
  v11 = *(*(type metadata accessor for GenericMusicItem() - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4ED5A68, 0, 0);
}

uint64_t sub_1D4ED5A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_161_0();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_75_0();
  a18 = v20;
  v23 = *(v20 + 32);
  v24 = *v23;
  v25 = v23[1];
  if (v23[4])
  {
    v26 = *(v20 + 64);
    v27 = v23[2];
    v28 = v23[3];
    MusicSiriItemRequest.configuration.getter(v26);
    v29 = *v26;
    *(v20 + 128) = *v26;
    v30 = *(v26 + 8);
    *(v20 + 136) = v30;
    v31 = *(v26 + 16);
    *(v20 + 186) = v31;
    sub_1D4EF2264(v29, v30, v31);
    OUTLINED_FUNCTION_4_9();
    sub_1D4ED4004(v26, v32);
    if (v31 == 255)
    {
      if (qword_1EC7E90D8 != -1)
      {
        OUTLINED_FUNCTION_19_10();
      }

      v57 = *(v20 + 48);
      v58 = sub_1D560C758();
      __swift_project_value_buffer(v58, qword_1EC87C330);

      v59 = sub_1D560C738();
      v60 = sub_1D56156C8();

      if (OUTLINED_FUNCTION_165_0())
      {
        v62 = *(v20 + 40);
        v61 = *(v20 + 48);
        v63 = OUTLINED_FUNCTION_142();
        v64 = OUTLINED_FUNCTION_138_0();
        a9 = v64;
        *v63 = 136446210;
        *(v63 + 4) = sub_1D4E6835C(v62, v61, &a9);
        _os_log_impl(&dword_1D4E3F000, v59, v60, "[%{public}s] The configuration's account was set to nil. Treating as item not found.", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v64);
        OUTLINED_FUNCTION_114_0();
        OUTLINED_FUNCTION_122();
      }

      sub_1D4EF211C();
      v65 = OUTLINED_FUNCTION_121_0();
      *v66 = 0;
      swift_willThrow();
      if (qword_1EC7E90D8 != -1)
      {
        OUTLINED_FUNCTION_19_10();
      }

      v67 = *(v20 + 48);
      __swift_project_value_buffer(v58, qword_1EC87C330);

      v68 = v65;
      v69 = sub_1D560C738();
      sub_1D56156C8();

      if (OUTLINED_FUNCTION_152_0())
      {
        v71 = *(v20 + 40);
        v70 = *(v20 + 48);
        OUTLINED_FUNCTION_144();
        a9 = OUTLINED_FUNCTION_119_0();
        *v58 = 136446466;
        v72 = OUTLINED_FUNCTION_66();
        v75 = sub_1D4E6835C(v72, v73, v74);
        OUTLINED_FUNCTION_84_0(v75);
        *(v20 + 16) = v65;
        v76 = v65;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
        v77 = sub_1D5614DB8();
        sub_1D4E6835C(v77, v78, &a9);
        OUTLINED_FUNCTION_145_3();

        *(v58 + 14) = v71;
        OUTLINED_FUNCTION_87_1(&dword_1D4E3F000, v79, v80, "[%{public}s] Error while trying to fetch item: %{public}s.");
        OUTLINED_FUNCTION_123_1();
        OUTLINED_FUNCTION_83();
        OUTLINED_FUNCTION_118();
      }

      OUTLINED_FUNCTION_133_0();

      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_134();

      return v82(v81, v82, v83, v84, v85, v86, v87, v88, a9, a10, a11, a12);
    }

    else
    {
      sub_1D560F0D8();
      *(v20 + 160) = _s8MusicKit0A7LibraryC0aB8InternalE6deviceACvgZ_0();
      *(v20 + 184) = v28;
      swift_task_alloc();
      OUTLINED_FUNCTION_58();
      *(v20 + 168) = v33;
      *v33 = v34;
      v33[1] = sub_1D4ED60F4;
      v35 = *(v20 + 104);
      OUTLINED_FUNCTION_134();

      return sub_1D4EE1848();
    }
  }

  else
  {
    v39 = *(v20 + 72);
    v38 = *(v20 + 80);
    v40 = *(type metadata accessor for MusicSiriRepresentation.ParsedIdentifiers() + 20);
    sub_1D560D5E8();
    if (__swift_getEnumTagSinglePayload(v39, 1, v38) == 1)
    {
      v42 = *(v20 + 72);
      v41 = *(v20 + 80);
      v43 = *(v20 + 96);
      sub_1D560D828();
      if (__swift_getEnumTagSinglePayload(v42, 1, v41) != 1)
      {
        sub_1D4E50004(*(v20 + 72), &qword_1EC7F6DF0, &qword_1D561D1E0);
      }
    }

    else
    {
      (*(*(v20 + 88) + 32))(*(v20 + 96), *(v20 + 72), *(v20 + 80));
    }

    v44 = *(v20 + 56);
    OUTLINED_FUNCTION_166();
    *(v20 + 185) = *(v44 + v45);
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    *(v20 + 144) = v46;
    *v46 = v47;
    v46[1] = sub_1D4ED5F24;
    v48 = *(v20 + 112);
    v49 = *(v20 + 96);
    v50 = *(v20 + 56);
    OUTLINED_FUNCTION_134();

    return sub_1D4ED7838(v51, v52, v53, v54, v55);
  }
}

uint64_t sub_1D4ED5F24()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 152) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D4ED601C()
{
  OUTLINED_FUNCTION_160();
  (*(v0[11] + 8))(v0[12], v0[10]);
  v3 = v0[14];
  v2 = v0[15];
  OUTLINED_FUNCTION_92();
  sub_1D4EF228C(v3, v2);
  sub_1D4EF228C(v2, v1);

  OUTLINED_FUNCTION_22_1();

  return v4();
}

uint64_t sub_1D4ED60F4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 176) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D4ED61EC()
{
  OUTLINED_FUNCTION_160();
  v2 = *(v0 + 160);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  v5 = *(v0 + 186);

  v6 = OUTLINED_FUNCTION_71();
  sub_1D4EF2278(v6, v7, v5);
  v8 = *(v0 + 112);
  v9 = *(v0 + 120);
  OUTLINED_FUNCTION_92();
  sub_1D4EF228C(v5, v9);
  sub_1D4EF228C(v9, v1);

  OUTLINED_FUNCTION_22_1();

  return v10();
}

uint64_t sub_1D4ED62C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_161_0();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_75_0();
  a18 = v20;
  (*(v20[11] + 8))(v20[12], v20[10]);
  v23 = v20[19];
  if (qword_1EC7E90D8 != -1)
  {
    OUTLINED_FUNCTION_19_10();
  }

  v24 = v20[6];
  v25 = sub_1D560C758();
  __swift_project_value_buffer(v25, qword_1EC87C330);

  v26 = v23;
  v27 = sub_1D560C738();
  sub_1D56156C8();
  OUTLINED_FUNCTION_146_1();

  if (OUTLINED_FUNCTION_152_0())
  {
    v29 = v20[5];
    v28 = v20[6];
    OUTLINED_FUNCTION_144();
    a9 = OUTLINED_FUNCTION_119_0();
    *v24 = 136446466;
    v30 = OUTLINED_FUNCTION_66();
    v33 = sub_1D4E6835C(v30, v31, v32);
    OUTLINED_FUNCTION_84_0(v33);
    v20[2] = v23;
    v34 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    v35 = sub_1D5614DB8();
    sub_1D4E6835C(v35, v36, &a9);
    OUTLINED_FUNCTION_145_3();

    *(v24 + 14) = v29;
    OUTLINED_FUNCTION_87_1(&dword_1D4E3F000, v37, v38, "[%{public}s] Error while trying to fetch item: %{public}s.");
    OUTLINED_FUNCTION_123_1();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_118();
  }

  OUTLINED_FUNCTION_133_0();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_134();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12);
}

uint64_t sub_1D4ED6484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_161_0();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_75_0();
  a18 = v20;
  v23 = *(v20 + 160);
  v24 = *(v20 + 128);
  v25 = *(v20 + 136);
  v26 = *(v20 + 186);

  v27 = OUTLINED_FUNCTION_71();
  sub_1D4EF2278(v27, v28, v26);
  v29 = *(v20 + 176);
  if (qword_1EC7E90D8 != -1)
  {
    OUTLINED_FUNCTION_19_10();
  }

  v30 = *(v20 + 48);
  v31 = sub_1D560C758();
  __swift_project_value_buffer(v31, qword_1EC87C330);

  v32 = v29;
  v33 = sub_1D560C738();
  sub_1D56156C8();
  OUTLINED_FUNCTION_146_1();

  if (OUTLINED_FUNCTION_152_0())
  {
    v35 = *(v20 + 40);
    v34 = *(v20 + 48);
    OUTLINED_FUNCTION_144();
    a9 = OUTLINED_FUNCTION_119_0();
    *v30 = 136446466;
    v36 = OUTLINED_FUNCTION_66();
    v39 = sub_1D4E6835C(v36, v37, v38);
    OUTLINED_FUNCTION_84_0(v39);
    *(v20 + 16) = v29;
    v40 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    v41 = sub_1D5614DB8();
    sub_1D4E6835C(v41, v42, &a9);
    OUTLINED_FUNCTION_145_3();

    *(v30 + 14) = v35;
    OUTLINED_FUNCTION_87_1(&dword_1D4E3F000, v43, v44, "[%{public}s] Error while trying to fetch item: %{public}s.");
    OUTLINED_FUNCTION_123_1();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_118();
  }

  OUTLINED_FUNCTION_133_0();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_134();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12);
}

uint64_t sub_1D4ED6644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[11] = a5;
  v6[12] = v5;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  v7 = *(*(type metadata accessor for MusicRequestConfiguration() - 8) + 64) + 15;
  v6[13] = swift_task_alloc();
  v8 = type metadata accessor for GenericMusicItem();
  v6[14] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAB88, &qword_1D561D738) - 8) + 64) + 15;
  v6[17] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA758, &unk_1D561CA20);
  v6[18] = v11;
  v12 = *(v11 - 8);
  v6[19] = v12;
  v13 = *(v12 + 64) + 15;
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v14 = sub_1D5610088();
  v6[22] = v14;
  v15 = *(v14 - 8);
  v6[23] = v15;
  v16 = *(v15 + 64) + 15;
  v6[24] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAB90, &qword_1D5621260) - 8) + 64) + 15;
  v6[25] = swift_task_alloc();
  v18 = sub_1D5612478();
  v6[26] = v18;
  v19 = *(v18 - 8);
  v6[27] = v19;
  v20 = *(v19 + 64) + 15;
  v6[28] = swift_task_alloc();
  v21 = sub_1D560CD48();
  v6[29] = v21;
  v22 = *(v21 - 8);
  v6[30] = v22;
  v23 = *(v22 + 64) + 15;
  v6[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4ED6910, 0, 0);
}

uint64_t sub_1D4ED72C0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 280);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 288) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D4ED73B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_72_0();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_75_0();
  a18 = v20;
  v24 = v20[27];
  v23 = v20[28];
  v25 = v20[26];
  v26 = v20[21];
  v27 = v20[18];
  v28 = v20[19];
  v30 = v20[15];
  v29 = v20[16];
  OUTLINED_FUNCTION_101();
  sub_1D4ED4004(v29, v31);
  v32 = *(v28 + 8);
  v33 = OUTLINED_FUNCTION_70();
  v34(v33);
  v35 = *(v24 + 8);
  v36 = OUTLINED_FUNCTION_159();
  v37(v36);
  sub_1D4EF228C(v30, v29);
  v38 = v20[34];
  v39 = v20[11];
  sub_1D4EF228C(v20[16], v20[7]);

  v40 = sub_1D560C738();
  v41 = sub_1D56156E8();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = v20[32];
    v43 = v20[33];
    v45 = v20[10];
    v44 = v20[11];
    v46 = OUTLINED_FUNCTION_142();
    v47 = OUTLINED_FUNCTION_138_0();
    a9 = v47;
    *v46 = 136446210;
    *(v46 + 4) = sub_1D4E6835C(v45, v44, &a9);
    OUTLINED_FUNCTION_151_0(&dword_1D4E3F000, v48, v41, "[%{public}s] 􀀁􀀀􀀀 Finish.");
    __swift_destroy_boxed_opaque_existential_1(v47);
    OUTLINED_FUNCTION_113_1();
    OUTLINED_FUNCTION_114_0();
  }

  else
  {
    v50 = v20[32];
    v49 = v20[33];
  }

  OUTLINED_FUNCTION_137_0();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_73_0();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12);
}

uint64_t sub_1D4ED75A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_90_1();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_100();
  a20 = v22;
  v26 = v22[27];
  v25 = v22[28];
  v27 = v22[26];
  v28 = v22[21];
  v29 = v22[18];
  v30 = v22[19];
  v31 = v22[16];
  OUTLINED_FUNCTION_101();
  sub_1D4ED4004(v32, v33);
  v34 = *(v30 + 8);
  v35 = OUTLINED_FUNCTION_70();
  v36(v35);
  v37 = *(v26 + 8);
  v38 = OUTLINED_FUNCTION_159();
  v39(v38);
  v40 = v22[36];
  OUTLINED_FUNCTION_156();

  v41 = v40;
  v42 = sub_1D560C738();
  sub_1D56156C8();
  OUTLINED_FUNCTION_146_1();

  if (OUTLINED_FUNCTION_152_0())
  {
    v44 = v22[10];
    v43 = v22[11];
    OUTLINED_FUNCTION_144();
    a10 = OUTLINED_FUNCTION_119_0();
    *v29 = 136446466;
    v45 = OUTLINED_FUNCTION_66();
    v48 = sub_1D4E6835C(v45, v46, v47);
    OUTLINED_FUNCTION_84_0(v48);
    v22[6] = v40;
    v49 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    v50 = sub_1D5614DB8();
    sub_1D4E6835C(v50, v51, &a10);
    OUTLINED_FUNCTION_145_3();

    *(v29 + 14) = v44;
    OUTLINED_FUNCTION_87_1(&dword_1D4E3F000, v52, v53, "[%{public}s] Error while trying to decoding item: %{public}s.");
    OUTLINED_FUNCTION_123_1();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_118();
  }

  OUTLINED_FUNCTION_156();
  swift_willThrow();

  v54 = sub_1D560C738();
  v55 = sub_1D56156E8();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = v22[32];
    v57 = v22[33];
    v59 = v22[10];
    v58 = v22[11];
    v60 = OUTLINED_FUNCTION_142();
    v61 = OUTLINED_FUNCTION_138_0();
    a10 = v61;
    *v60 = 136446210;
    v62 = OUTLINED_FUNCTION_66();
    *(v60 + 4) = sub_1D4E6835C(v62, v63, v64);
    OUTLINED_FUNCTION_162(&dword_1D4E3F000, v65, v66, "[%{public}s] 􀀁􀀀􀀀 Finish.");
    __swift_destroy_boxed_opaque_existential_1(v61);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_113_1();
  }

  else
  {
    v68 = v22[32];
    v67 = v22[33];
  }

  OUTLINED_FUNCTION_136_0();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_89();

  return v70(v69, v70, v71, v72, v73, v74, v75, v76, v40, a10, a11, a12, a13, a14);
}

uint64_t sub_1D4ED7838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA968, &unk_1D561D1F0) - 8) + 64) + 15;
  *(v6 + 56) = swift_task_alloc();
  v9 = type metadata accessor for UploadedVideo();
  *(v6 + 64) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v6 + 72) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA970, &unk_1D5652B00) - 8) + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  v12 = type metadata accessor for UploadedAudio();
  *(v6 + 88) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v6 + 96) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B0, &unk_1D561C1F0) - 8) + 64) + 15;
  *(v6 + 104) = swift_task_alloc();
  v15 = type metadata accessor for TVShow();
  *(v6 + 112) = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  *(v6 + 120) = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA878, &unk_1D5634790) - 8) + 64) + 15;
  *(v6 + 128) = swift_task_alloc();
  v18 = type metadata accessor for TVSeason();
  *(v6 + 136) = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  *(v6 + 144) = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA880, &unk_1D561CEE0) - 8) + 64) + 15;
  *(v6 + 152) = swift_task_alloc();
  v21 = type metadata accessor for TVEpisode();
  *(v6 + 160) = v21;
  v22 = *(*(v21 - 8) + 64) + 15;
  *(v6 + 168) = swift_task_alloc();
  v23 = type metadata accessor for GenericMusicItem();
  *(v6 + 176) = v23;
  v24 = *(*(v23 - 8) + 64) + 15;
  *(v6 + 184) = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F65A0, &unk_1D561D200) - 8) + 64) + 15;
  *(v6 + 192) = swift_task_alloc();
  v26 = sub_1D5614408();
  *(v6 + 200) = v26;
  v27 = *(v26 - 8);
  *(v6 + 208) = v27;
  v28 = *(v27 + 64) + 15;
  *(v6 + 216) = swift_task_alloc();
  v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10) - 8) + 64) + 15;
  *(v6 + 224) = swift_task_alloc();
  v30 = sub_1D5613838();
  *(v6 + 232) = v30;
  v31 = *(v30 - 8);
  *(v6 + 240) = v31;
  v32 = *(v31 + 64) + 15;
  *(v6 + 248) = swift_task_alloc();
  v33 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA980, &unk_1D561D210) - 8) + 64) + 15;
  *(v6 + 256) = swift_task_alloc();
  v34 = sub_1D560F8B8();
  *(v6 + 264) = v34;
  v35 = *(v34 - 8);
  *(v6 + 272) = v35;
  v36 = *(v35 + 64) + 15;
  *(v6 + 280) = swift_task_alloc();
  v37 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA988, &qword_1D56397B0) - 8) + 64) + 15;
  *(v6 + 288) = swift_task_alloc();
  v38 = sub_1D5614B68();
  *(v6 + 296) = v38;
  v39 = *(v38 - 8);
  *(v6 + 304) = v39;
  v40 = *(v39 + 64) + 15;
  *(v6 + 312) = swift_task_alloc();
  v41 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0) - 8) + 64) + 15;
  *(v6 + 320) = swift_task_alloc();
  v42 = sub_1D5614898();
  *(v6 + 328) = v42;
  v43 = *(v42 - 8);
  *(v6 + 336) = v43;
  v44 = *(v43 + 64) + 15;
  *(v6 + 344) = swift_task_alloc();
  v45 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA990, &qword_1D561D220) - 8) + 64) + 15;
  *(v6 + 352) = swift_task_alloc();
  v46 = sub_1D560EEA8();
  *(v6 + 360) = v46;
  v47 = *(v46 - 8);
  *(v6 + 368) = v47;
  v48 = *(v47 + 64) + 15;
  *(v6 + 376) = swift_task_alloc();
  v49 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA890, &qword_1D5672D40) - 8) + 64) + 15;
  *(v6 + 384) = swift_task_alloc();
  v50 = type metadata accessor for MusicMovie();
  *(v6 + 392) = v50;
  v51 = *(*(v50 - 8) + 64) + 15;
  *(v6 + 400) = swift_task_alloc();
  v52 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA898, &unk_1D561CF00) - 8) + 64) + 15;
  *(v6 + 408) = swift_task_alloc();
  v53 = sub_1D5613C48();
  *(v6 + 416) = v53;
  v54 = *(v53 - 8);
  *(v6 + 424) = v54;
  v55 = *(v54 + 64) + 15;
  *(v6 + 432) = swift_task_alloc();
  v56 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA998, &qword_1D561D228) - 8) + 64) + 15;
  *(v6 + 440) = swift_task_alloc();
  v57 = type metadata accessor for EditorialItem();
  *(v6 + 448) = v57;
  v58 = *(*(v57 - 8) + 64) + 15;
  *(v6 + 456) = swift_task_alloc();
  v59 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA9A0, &qword_1D561D230) - 8) + 64) + 15;
  *(v6 + 464) = swift_task_alloc();
  v60 = sub_1D56141F8();
  *(v6 + 472) = v60;
  v61 = *(v60 - 8);
  *(v6 + 480) = v61;
  v62 = *(v61 + 64) + 15;
  *(v6 + 488) = swift_task_alloc();
  v63 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA8A0, &qword_1D5652B20) - 8) + 64) + 15;
  *(v6 + 496) = swift_task_alloc();
  v64 = type metadata accessor for Composer();
  *(v6 + 504) = v64;
  v65 = *(*(v64 - 8) + 64) + 15;
  *(v6 + 512) = swift_task_alloc();
  v66 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA8A8, &qword_1D561CF10) - 8) + 64) + 15;
  *(v6 + 520) = swift_task_alloc();
  v67 = sub_1D5613EF8();
  *(v6 + 528) = v67;
  v68 = *(v67 - 8);
  *(v6 + 536) = v68;
  v69 = *(v68 + 64) + 15;
  *(v6 + 544) = swift_task_alloc();
  v70 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC30, &unk_1D5620CE0) - 8) + 64) + 15;
  *(v6 + 552) = swift_task_alloc();
  v71 = sub_1D5613AF8();
  *(v6 + 560) = v71;
  v72 = *(v71 - 8);
  *(v6 + 568) = v72;
  v73 = *(v72 + 64) + 15;
  *(v6 + 576) = swift_task_alloc();
  v74 = sub_1D560D9A8();
  *(v6 + 584) = v74;
  v75 = *(v74 - 8);
  *(v6 + 592) = v75;
  v76 = *(v75 + 64) + 15;
  *(v6 + 600) = swift_task_alloc();
  *(v6 + 608) = swift_task_alloc();
  v77 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510) - 8) + 64) + 15;
  *(v6 + 616) = swift_task_alloc();
  *(v6 + 624) = swift_task_alloc();
  *(v6 + 632) = swift_task_alloc();
  *(v6 + 1096) = *a5;

  return MEMORY[0x1EEE6DFA0](sub_1D4ED82A0, 0, 0);
}

uint64_t sub_1D4ED82A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  v49 = *(v48 + 608);
  v50 = *(v48 + 600);
  v51 = *(v48 + 592);
  v52 = *(v48 + 584);
  v53 = *(v48 + 40);
  __swift_storeEnumTagSinglePayload(*(v48 + 632), 1, 1, *(v48 + 176));
  v54 = *(v51 + 16);
  v55 = OUTLINED_FUNCTION_159();
  v56(v55);
  sub_1D560D908();
  sub_1D4EF1A64(&qword_1EDD53C20, MEMORY[0x1E6974F80]);
  v57 = OUTLINED_FUNCTION_40_8();
  v58 = *(v51 + 8);
  v59 = OUTLINED_FUNCTION_70();
  v58(v59);
  v60 = *(v48 + 608);
  if (v57)
  {
    v61 = OUTLINED_FUNCTION_108_2();
    v58(v61);
    *(v48 + 640) = swift_getKeyPath();
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    *(v48 + 648) = v62;
    *v62 = v63;
    v62[1] = sub_1D4ED9448;
    v64 = *(v48 + 552);
    OUTLINED_FUNCTION_15_12();
    OUTLINED_FUNCTION_56();

    return sub_1D4EE5DC0(v65, v66, v67, v68, v69);
  }

  else
  {
    OUTLINED_FUNCTION_45_7();
    sub_1D560D938();
    v72 = OUTLINED_FUNCTION_40_8();
    v73 = OUTLINED_FUNCTION_70();
    v58(v73);
    if (v72)
    {
      v74 = OUTLINED_FUNCTION_120_0();
      v58(v74);
      *(v48 + 664) = swift_getKeyPath();
      swift_task_alloc();
      OUTLINED_FUNCTION_58();
      *(v48 + 672) = v75;
      *v75 = v76;
      v75[1] = sub_1D4ED9978;
      v77 = *(v48 + 520);
      OUTLINED_FUNCTION_15_12();
      OUTLINED_FUNCTION_56();

      return sub_1D4EE6318(v78, v79, v80, v81, v82);
    }

    else
    {
      if (qword_1EDD53C80 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_126_0();
      v85 = OUTLINED_FUNCTION_52_4(v84, qword_1EDD53C88);
      v86 = *(v48 + 608);
      if (v85)
      {
        v87 = OUTLINED_FUNCTION_108_2();
        v58(v87);
        *(v48 + 688) = swift_getKeyPath();
        swift_task_alloc();
        OUTLINED_FUNCTION_58();
        *(v48 + 696) = v88;
        *v88 = v89;
        v88[1] = sub_1D4ED9EA8;
        v90 = *(v48 + 496);
        OUTLINED_FUNCTION_15_12();
        OUTLINED_FUNCTION_56();

        return sub_1D4EE6870(v91, v92, v93, v94, v95);
      }

      else
      {
        OUTLINED_FUNCTION_45_7();
        sub_1D560D948();
        v97 = OUTLINED_FUNCTION_40_8();
        v98 = OUTLINED_FUNCTION_70();
        v58(v98);
        if (v97)
        {
          v99 = OUTLINED_FUNCTION_120_0();
          v58(v99);
          *(v48 + 712) = swift_getKeyPath();
          swift_task_alloc();
          OUTLINED_FUNCTION_58();
          *(v48 + 720) = v100;
          *v100 = v101;
          v100[1] = sub_1D4EDA3D0;
          v102 = *(v48 + 464);
          OUTLINED_FUNCTION_15_12();
          OUTLINED_FUNCTION_56();

          return sub_1D4EE6DE0(v103, v104, v105, v106, v107);
        }

        else
        {
          if (qword_1EDD53D70 != -1)
          {
            swift_once();
          }

          OUTLINED_FUNCTION_126_0();
          v110 = OUTLINED_FUNCTION_52_4(v109, qword_1EDD53D78);
          v111 = *(v48 + 608);
          if (v110)
          {
            v112 = OUTLINED_FUNCTION_108_2();
            v58(v112);
            *(v48 + 736) = swift_getKeyPath();
            swift_task_alloc();
            OUTLINED_FUNCTION_58();
            *(v48 + 744) = v113;
            *v113 = v114;
            v113[1] = sub_1D4EDA8F8;
            v115 = *(v48 + 440);
            OUTLINED_FUNCTION_15_12();
            OUTLINED_FUNCTION_56();

            return sub_1D4EE7338(v116, v117, v118, v119, v120);
          }

          else
          {
            OUTLINED_FUNCTION_45_7();
            sub_1D560D918();
            v122 = OUTLINED_FUNCTION_40_8();
            v123 = OUTLINED_FUNCTION_70();
            v58(v123);
            if (v122)
            {
              v124 = OUTLINED_FUNCTION_120_0();
              v58(v124);
              *(v48 + 760) = swift_getKeyPath();
              swift_task_alloc();
              OUTLINED_FUNCTION_58();
              *(v48 + 768) = v125;
              *v125 = v126;
              v125[1] = sub_1D4EDAE30;
              v127 = *(v48 + 408);
              OUTLINED_FUNCTION_15_12();
              OUTLINED_FUNCTION_56();

              return sub_1D4EE78A8(v128, v129, v130, v131, v132);
            }

            else
            {
              if (qword_1EDD53D48 != -1)
              {
                swift_once();
              }

              OUTLINED_FUNCTION_126_0();
              v135 = OUTLINED_FUNCTION_52_4(v134, qword_1EDD53D50);
              v136 = *(v48 + 608);
              if (v135)
              {
                v137 = OUTLINED_FUNCTION_108_2();
                v58(v137);
                *(v48 + 784) = swift_getKeyPath();
                swift_task_alloc();
                OUTLINED_FUNCTION_58();
                *(v48 + 792) = v138;
                *v138 = v139;
                v138[1] = sub_1D4EDB358;
                v140 = *(v48 + 384);
                OUTLINED_FUNCTION_15_12();
                OUTLINED_FUNCTION_56();

                return sub_1D4EE7E00(v141, v142, v143, v144, v145);
              }

              else
              {
                OUTLINED_FUNCTION_45_7();
                sub_1D560D878();
                OUTLINED_FUNCTION_40_8();
                v147 = OUTLINED_FUNCTION_67_3();
                v58(v147);
                v148 = *(v48 + 608);
                if (v57)
                {
                  v149 = OUTLINED_FUNCTION_108_2();
                  v58(v149);
                  *(v48 + 808) = swift_getKeyPath();
                  swift_task_alloc();
                  OUTLINED_FUNCTION_58();
                  *(v48 + 816) = v150;
                  *v150 = v151;
                  v150[1] = sub_1D4EDB880;
                  v152 = *(v48 + 352);
                  OUTLINED_FUNCTION_15_12();
                  OUTLINED_FUNCTION_56();

                  return sub_1D4EE8370(v153, v154, v155, v156, v157);
                }

                else
                {
                  OUTLINED_FUNCTION_45_7();
                  sub_1D560D968();
                  OUTLINED_FUNCTION_40_8();
                  v159 = OUTLINED_FUNCTION_67_3();
                  v58(v159);
                  v160 = *(v48 + 608);
                  OUTLINED_FUNCTION_45_7();
                  sub_1D560D998();
                  OUTLINED_FUNCTION_40_8();
                  v161 = OUTLINED_FUNCTION_67_3();
                  v58(v161);
                  v162 = *(v48 + 608);
                  OUTLINED_FUNCTION_45_7();
                  sub_1D560D888();
                  OUTLINED_FUNCTION_40_8();
                  v163 = OUTLINED_FUNCTION_67_3();
                  v58(v163);
                  v164 = *(v48 + 608);
                  OUTLINED_FUNCTION_45_7();
                  sub_1D560D8E8();
                  OUTLINED_FUNCTION_40_8();
                  v165 = OUTLINED_FUNCTION_67_3();
                  v58(v165);
                  v166 = *(v48 + 608);
                  OUTLINED_FUNCTION_45_7();
                  sub_1D560D958();
                  OUTLINED_FUNCTION_40_8();
                  v167 = OUTLINED_FUNCTION_67_3();
                  v58(v167);
                  v168 = *(v48 + 608);
                  OUTLINED_FUNCTION_45_7();
                  sub_1D560D928();
                  LOBYTE(v168) = OUTLINED_FUNCTION_40_8();
                  v169 = OUTLINED_FUNCTION_70();
                  v58(v169);
                  if (v168)
                  {
                    v170 = OUTLINED_FUNCTION_120_0();
                    v58(v170);
                    *(v48 + 952) = swift_getKeyPath();
                    swift_task_alloc();
                    OUTLINED_FUNCTION_58();
                    *(v48 + 960) = v171;
                    *v171 = v172;
                    v171[1] = sub_1D4EDD770;
                    v173 = *(v48 + 624);
                    OUTLINED_FUNCTION_15_12();
                    OUTLINED_FUNCTION_56();

                    return sub_1D4EEA380(v174, v175, v176, v177, v178);
                  }

                  else
                  {
                    if (qword_1EDD53C38 != -1)
                    {
                      swift_once();
                    }

                    OUTLINED_FUNCTION_126_0();
                    if (OUTLINED_FUNCTION_52_4(v180, qword_1EDD53C40))
                    {
                      v181 = OUTLINED_FUNCTION_120_0();
                      v58(v181);
                      *(v48 + 976) = swift_getKeyPath();
                      swift_task_alloc();
                      OUTLINED_FUNCTION_58();
                      *(v48 + 984) = v182;
                      *v182 = v183;
                      v182[1] = sub_1D4EDDC9C;
                      v184 = *(v48 + 152);
                      OUTLINED_FUNCTION_15_12();
                      OUTLINED_FUNCTION_56();

                      return sub_1D4EEA9AC(v185, v186, v187, v188, v189);
                    }

                    else
                    {
                      if (qword_1EDD53C58 != -1)
                      {
                        swift_once();
                      }

                      OUTLINED_FUNCTION_126_0();
                      if (OUTLINED_FUNCTION_52_4(v191, qword_1EDD53C60))
                      {
                        v192 = OUTLINED_FUNCTION_120_0();
                        v58(v192);
                        *(v48 + 1000) = swift_getKeyPath();
                        swift_task_alloc();
                        OUTLINED_FUNCTION_58();
                        *(v48 + 1008) = v193;
                        *v193 = v194;
                        v193[1] = sub_1D4EDE1C0;
                        v195 = *(v48 + 128);
                        OUTLINED_FUNCTION_15_12();
                        OUTLINED_FUNCTION_56();

                        return sub_1D4EEAF1C(v196, v197, v198, v199, v200);
                      }

                      else
                      {
                        if (qword_1EC7E95E8 != -1)
                        {
                          swift_once();
                        }

                        OUTLINED_FUNCTION_126_0();
                        if (OUTLINED_FUNCTION_52_4(v202, qword_1EC7F5D98))
                        {
                          v203 = OUTLINED_FUNCTION_120_0();
                          v58(v203);
                          *(v48 + 1024) = swift_getKeyPath();
                          swift_task_alloc();
                          OUTLINED_FUNCTION_58();
                          *(v48 + 1032) = v204;
                          *v204 = v205;
                          v204[1] = sub_1D4EDE6E4;
                          v206 = *(v48 + 104);
                          OUTLINED_FUNCTION_15_12();
                          OUTLINED_FUNCTION_56();

                          return sub_1D4EEB48C(v207, v208, v209, v210, v211);
                        }

                        else
                        {
                          if (qword_1EC7E8F18 != -1)
                          {
                            swift_once();
                          }

                          OUTLINED_FUNCTION_126_0();
                          if (OUTLINED_FUNCTION_52_4(v213, qword_1EC7F08A0))
                          {
                            v214 = OUTLINED_FUNCTION_120_0();
                            v58(v214);
                            *(v48 + 1048) = swift_getKeyPath();
                            swift_task_alloc();
                            OUTLINED_FUNCTION_58();
                            *(v48 + 1056) = v215;
                            *v215 = v216;
                            v215[1] = sub_1D4EDEC08;
                            v217 = *(v48 + 80);
                            OUTLINED_FUNCTION_15_12();
                            OUTLINED_FUNCTION_56();

                            return sub_1D4EEB9FC(v218, v219, v220, v221, v222);
                          }

                          else
                          {
                            if (qword_1EDD53CE8 != -1)
                            {
                              swift_once();
                            }

                            v224 = *(v48 + 608);
                            v225 = *(v48 + 584);
                            __swift_project_value_buffer(v225, qword_1EDD53CF0);
                            v226 = sub_1D5614D18();
                            (v58)(v224, v225);
                            if (v226)
                            {
                              *(v48 + 1072) = swift_getKeyPath();
                              swift_task_alloc();
                              OUTLINED_FUNCTION_58();
                              *(v48 + 1080) = v227;
                              *v227 = v228;
                              v227[1] = sub_1D4EDF13C;
                              v230 = *(v48 + 48);
                              v229 = *(v48 + 56);
                              v231 = *(v48 + 24);
                              v232 = *(v48 + 32);
                              v233 = *(v48 + 1096);
                              OUTLINED_FUNCTION_56();

                              return sub_1D4EEBF6C(v234, v235, v236, v237, v238);
                            }

                            else
                            {
                              sub_1D4EF211C();
                              v290 = OUTLINED_FUNCTION_121_0();
                              OUTLINED_FUNCTION_125(v240, 5);
                              v241 = *(v48 + 624);
                              v242 = *(v48 + 616);
                              v243 = *(v48 + 608);
                              v244 = *(v48 + 600);
                              v245 = *(v48 + 576);
                              v246 = *(v48 + 552);
                              v247 = *(v48 + 544);
                              v248 = *(v48 + 520);
                              v257 = *(v48 + 512);
                              v258 = *(v48 + 496);
                              v259 = *(v48 + 488);
                              v260 = *(v48 + 464);
                              v261 = *(v48 + 456);
                              v262 = *(v48 + 440);
                              v263 = *(v48 + 432);
                              v264 = *(v48 + 408);
                              v265 = *(v48 + 400);
                              v266 = *(v48 + 384);
                              v267 = *(v48 + 376);
                              v268 = *(v48 + 352);
                              v269 = *(v48 + 344);
                              v270 = *(v48 + 320);
                              v271 = *(v48 + 312);
                              v272 = *(v48 + 288);
                              v273 = *(v48 + 280);
                              v274 = *(v48 + 256);
                              v275 = *(v48 + 248);
                              v276 = *(v48 + 224);
                              v277 = *(v48 + 216);
                              v278 = *(v48 + 192);
                              v279 = *(v48 + 184);
                              v280 = *(v48 + 168);
                              v281 = *(v48 + 152);
                              v282 = *(v48 + 144);
                              v283 = *(v48 + 128);
                              v284 = *(v48 + 120);
                              v285 = *(v48 + 104);
                              v286 = *(v48 + 96);
                              v287 = *(v48 + 80);
                              v288 = *(v48 + 72);
                              v289 = *(v48 + 56);
                              sub_1D4E50004(*(v48 + 632), &qword_1EC7EA608, &qword_1D561C510);

                              OUTLINED_FUNCTION_30_3();
                              OUTLINED_FUNCTION_56();

                              return v250(v249, v250, v251, v252, v253, v254, v255, v256, a9, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, a44, a45, a46, a47, a48);
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1D4ED9448()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 648);
  v6 = *(v4 + 640);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v9 + 656) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D4ED955C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  v51 = v48[70];
  v52 = v48[69];
  OUTLINED_FUNCTION_16_4();
  if (v53)
  {
    sub_1D4E50004(v52, &qword_1EC7EEC30, &unk_1D5620CE0);
  }

  else
  {
    v54 = v48[72];
    v49 = v48[71];
    v55 = v48[22];
    sub_1D4E50004(v48[79], &qword_1EC7EA608, &qword_1D561C510);
    v56 = OUTLINED_FUNCTION_28_2();
    v50(v56);
    v57 = OUTLINED_FUNCTION_50_2();
    v50(v57);
    OUTLINED_FUNCTION_112();
    swift_storeEnumTagMultiPayload();
    v58 = OUTLINED_FUNCTION_38_8();
    __swift_storeEnumTagSinglePayload(v58, v59, v60, v55);
  }

  v61 = OUTLINED_FUNCTION_31_10();
  sub_1D4E69970(v61, v51, &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_18_6();
  if (v53)
  {
    sub_1D4E50004(v48[77], &qword_1EC7EA608, &qword_1D561C510);
    sub_1D4EF211C();
    v62 = OUTLINED_FUNCTION_121_0();
    OUTLINED_FUNCTION_42_6(v62, v63);
    v64 = OUTLINED_FUNCTION_2_3();
    sub_1D4E50004(v64, &qword_1EC7EA608, &qword_1D561C510);

    OUTLINED_FUNCTION_30_3();
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_132_0();

    OUTLINED_FUNCTION_22_1();
  }

  OUTLINED_FUNCTION_56();

  return v66(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4ED9978()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 672);
  v6 = *(v4 + 664);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v9 + 680) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D4ED9A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  v51 = v48[66];
  v52 = v48[65];
  OUTLINED_FUNCTION_16_4();
  if (v53)
  {
    sub_1D4E50004(v52, &qword_1EC7EA8A8, &qword_1D561CF10);
  }

  else
  {
    v54 = v48[68];
    v49 = v48[67];
    v55 = v48[22];
    sub_1D4E50004(v48[79], &qword_1EC7EA608, &qword_1D561C510);
    v56 = OUTLINED_FUNCTION_28_2();
    v50(v56);
    v57 = OUTLINED_FUNCTION_50_2();
    v50(v57);
    OUTLINED_FUNCTION_112();
    swift_storeEnumTagMultiPayload();
    v58 = OUTLINED_FUNCTION_38_8();
    __swift_storeEnumTagSinglePayload(v58, v59, v60, v55);
  }

  v61 = OUTLINED_FUNCTION_31_10();
  sub_1D4E69970(v61, v51, &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_18_6();
  if (v53)
  {
    sub_1D4E50004(v48[77], &qword_1EC7EA608, &qword_1D561C510);
    sub_1D4EF211C();
    v62 = OUTLINED_FUNCTION_121_0();
    OUTLINED_FUNCTION_42_6(v62, v63);
    v64 = OUTLINED_FUNCTION_2_3();
    sub_1D4E50004(v64, &qword_1EC7EA608, &qword_1D561C510);

    OUTLINED_FUNCTION_30_3();
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_132_0();

    OUTLINED_FUNCTION_22_1();
  }

  OUTLINED_FUNCTION_56();

  return v66(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4ED9EA8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 696);
  v6 = *(v4 + 688);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v9 + 704) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D4ED9FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  v50 = v48[62];
  OUTLINED_FUNCTION_37_9(v51, v52, v48[63]);
  if (v53)
  {
    sub_1D4E50004(v50, &qword_1EC7EA8A0, &qword_1D5652B20);
  }

  else
  {
    v54 = v48[64];
    v55 = v48[22];
    sub_1D4E50004(v48[79], &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_106_1();
    sub_1D4EF228C(v50, v54);
    v56 = OUTLINED_FUNCTION_98();
    sub_1D4EF228C(v56, v57);
    OUTLINED_FUNCTION_81_0();
    swift_storeEnumTagMultiPayload();
    v58 = OUTLINED_FUNCTION_60_0();
    __swift_storeEnumTagSinglePayload(v58, v59, v60, v55);
  }

  v61 = OUTLINED_FUNCTION_31_10();
  sub_1D4E69970(v61, v50, &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_18_6();
  if (v53)
  {
    sub_1D4E50004(v48[77], &qword_1EC7EA608, &qword_1D561C510);
    sub_1D4EF211C();
    v62 = OUTLINED_FUNCTION_121_0();
    OUTLINED_FUNCTION_42_6(v62, v63);
    v64 = OUTLINED_FUNCTION_2_3();
    sub_1D4E50004(v64, &qword_1EC7EA608, &qword_1D561C510);

    OUTLINED_FUNCTION_30_3();
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_132_0();

    OUTLINED_FUNCTION_22_1();
  }

  OUTLINED_FUNCTION_56();

  return v66(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EDA3D0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 720);
  v6 = *(v4 + 712);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v9 + 728) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D4EDA4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  v51 = v48[58];
  v52 = v48[59];
  OUTLINED_FUNCTION_16_4();
  if (v53)
  {
    sub_1D4E50004(v51, &qword_1EC7EA9A0, &qword_1D561D230);
  }

  else
  {
    v49 = v48[60];
    v54 = v48[61];
    v55 = v48[22];
    sub_1D4E50004(v48[79], &qword_1EC7EA608, &qword_1D561C510);
    v56 = OUTLINED_FUNCTION_28_2();
    v50(v56);
    v57 = OUTLINED_FUNCTION_50_2();
    v50(v57);
    OUTLINED_FUNCTION_112();
    swift_storeEnumTagMultiPayload();
    v58 = OUTLINED_FUNCTION_38_8();
    __swift_storeEnumTagSinglePayload(v58, v59, v60, v55);
  }

  v61 = OUTLINED_FUNCTION_31_10();
  sub_1D4E69970(v61, v52, &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_18_6();
  if (v53)
  {
    sub_1D4E50004(v48[77], &qword_1EC7EA608, &qword_1D561C510);
    sub_1D4EF211C();
    v62 = OUTLINED_FUNCTION_121_0();
    OUTLINED_FUNCTION_42_6(v62, v63);
    v64 = OUTLINED_FUNCTION_2_3();
    sub_1D4E50004(v64, &qword_1EC7EA608, &qword_1D561C510);

    OUTLINED_FUNCTION_30_3();
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_132_0();

    OUTLINED_FUNCTION_22_1();
  }

  OUTLINED_FUNCTION_56();

  return v66(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EDA8F8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 744);
  v6 = *(v4 + 736);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v9 + 752) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D4EDAA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  v50 = v48[55];
  OUTLINED_FUNCTION_37_9(v51, v52, v48[56]);
  if (v53)
  {
    sub_1D4E50004(v50, &qword_1EC7EA998, &qword_1D561D228);
  }

  else
  {
    v54 = v48[57];
    v55 = v48[22];
    sub_1D4E50004(v48[79], &qword_1EC7EA608, &qword_1D561C510);
    sub_1D4EF228C(v50, v54);
    v56 = OUTLINED_FUNCTION_98();
    sub_1D4EF228C(v56, v57);
    OUTLINED_FUNCTION_81_0();
    swift_storeEnumTagMultiPayload();
    v58 = OUTLINED_FUNCTION_60_0();
    __swift_storeEnumTagSinglePayload(v58, v59, v60, v55);
  }

  v61 = OUTLINED_FUNCTION_31_10();
  sub_1D4E69970(v61, v50, &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_18_6();
  if (v53)
  {
    sub_1D4E50004(v48[77], &qword_1EC7EA608, &qword_1D561C510);
    sub_1D4EF211C();
    v62 = OUTLINED_FUNCTION_121_0();
    OUTLINED_FUNCTION_42_6(v62, v63);
    v64 = OUTLINED_FUNCTION_2_3();
    sub_1D4E50004(v64, &qword_1EC7EA608, &qword_1D561C510);

    OUTLINED_FUNCTION_30_3();
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_132_0();

    OUTLINED_FUNCTION_22_1();
  }

  OUTLINED_FUNCTION_56();

  return v66(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EDAE30()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 768);
  v6 = *(v4 + 760);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v9 + 776) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D4EDAF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  v51 = v48[51];
  v52 = v48[52];
  OUTLINED_FUNCTION_16_4();
  if (v53)
  {
    sub_1D4E50004(v51, &qword_1EC7EA898, &unk_1D561CF00);
  }

  else
  {
    v49 = v48[53];
    v54 = v48[54];
    v55 = v48[22];
    sub_1D4E50004(v48[79], &qword_1EC7EA608, &qword_1D561C510);
    v56 = OUTLINED_FUNCTION_28_2();
    v50(v56);
    v57 = OUTLINED_FUNCTION_50_2();
    v50(v57);
    OUTLINED_FUNCTION_112();
    swift_storeEnumTagMultiPayload();
    v58 = OUTLINED_FUNCTION_38_8();
    __swift_storeEnumTagSinglePayload(v58, v59, v60, v55);
  }

  v61 = OUTLINED_FUNCTION_31_10();
  sub_1D4E69970(v61, v52, &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_18_6();
  if (v53)
  {
    sub_1D4E50004(v48[77], &qword_1EC7EA608, &qword_1D561C510);
    sub_1D4EF211C();
    v62 = OUTLINED_FUNCTION_121_0();
    OUTLINED_FUNCTION_42_6(v62, v63);
    v64 = OUTLINED_FUNCTION_2_3();
    sub_1D4E50004(v64, &qword_1EC7EA608, &qword_1D561C510);

    OUTLINED_FUNCTION_30_3();
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_132_0();

    OUTLINED_FUNCTION_22_1();
  }

  OUTLINED_FUNCTION_56();

  return v66(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EDB358()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 792);
  v6 = *(v4 + 784);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v9 + 800) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D4EDB46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  v50 = v48[48];
  OUTLINED_FUNCTION_37_9(v51, v52, v48[49]);
  if (v53)
  {
    sub_1D4E50004(v50, &qword_1EC7EA890, &qword_1D5672D40);
  }

  else
  {
    v54 = v48[50];
    v55 = v48[22];
    sub_1D4E50004(v48[79], &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_105_0();
    sub_1D4EF228C(v50, v54);
    v56 = OUTLINED_FUNCTION_98();
    sub_1D4EF228C(v56, v57);
    OUTLINED_FUNCTION_81_0();
    swift_storeEnumTagMultiPayload();
    v58 = OUTLINED_FUNCTION_60_0();
    __swift_storeEnumTagSinglePayload(v58, v59, v60, v55);
  }

  v61 = OUTLINED_FUNCTION_31_10();
  sub_1D4E69970(v61, v50, &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_18_6();
  if (v53)
  {
    sub_1D4E50004(v48[77], &qword_1EC7EA608, &qword_1D561C510);
    sub_1D4EF211C();
    v62 = OUTLINED_FUNCTION_121_0();
    OUTLINED_FUNCTION_42_6(v62, v63);
    v64 = OUTLINED_FUNCTION_2_3();
    sub_1D4E50004(v64, &qword_1EC7EA608, &qword_1D561C510);

    OUTLINED_FUNCTION_30_3();
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_132_0();

    OUTLINED_FUNCTION_22_1();
  }

  OUTLINED_FUNCTION_56();

  return v66(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EDB880()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 816);
  v6 = *(v4 + 808);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v9 + 824) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D4EDB994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  v51 = v48[44];
  v52 = v48[45];
  OUTLINED_FUNCTION_16_4();
  if (v53)
  {
    sub_1D4E50004(v51, &qword_1EC7EA990, &qword_1D561D220);
  }

  else
  {
    v49 = v48[46];
    v54 = v48[47];
    v55 = v48[22];
    sub_1D4E50004(v48[79], &qword_1EC7EA608, &qword_1D561C510);
    v56 = OUTLINED_FUNCTION_28_2();
    v50(v56);
    v57 = OUTLINED_FUNCTION_50_2();
    v50(v57);
    OUTLINED_FUNCTION_112();
    swift_storeEnumTagMultiPayload();
    v58 = OUTLINED_FUNCTION_38_8();
    __swift_storeEnumTagSinglePayload(v58, v59, v60, v55);
  }

  v61 = OUTLINED_FUNCTION_31_10();
  sub_1D4E69970(v61, v52, &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_18_6();
  if (v53)
  {
    sub_1D4E50004(v48[77], &qword_1EC7EA608, &qword_1D561C510);
    sub_1D4EF211C();
    v62 = OUTLINED_FUNCTION_121_0();
    OUTLINED_FUNCTION_42_6(v62, v63);
    v64 = OUTLINED_FUNCTION_2_3();
    sub_1D4E50004(v64, &qword_1EC7EA608, &qword_1D561C510);

    OUTLINED_FUNCTION_30_3();
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_132_0();

    OUTLINED_FUNCTION_22_1();
  }

  OUTLINED_FUNCTION_56();

  return v66(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EDBDA8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 840);
  v6 = *(v4 + 832);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v9 + 848) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D4EDBEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  v51 = v48[40];
  v52 = v48[41];
  OUTLINED_FUNCTION_16_4();
  if (v53)
  {
    sub_1D4E50004(v51, &unk_1EC7F1990, &unk_1D561CEF0);
  }

  else
  {
    v49 = v48[42];
    v54 = v48[43];
    v55 = v48[22];
    sub_1D4E50004(v48[79], &qword_1EC7EA608, &qword_1D561C510);
    v56 = OUTLINED_FUNCTION_28_2();
    v50(v56);
    v57 = OUTLINED_FUNCTION_50_2();
    v50(v57);
    OUTLINED_FUNCTION_112();
    swift_storeEnumTagMultiPayload();
    v58 = OUTLINED_FUNCTION_38_8();
    __swift_storeEnumTagSinglePayload(v58, v59, v60, v55);
  }

  v61 = OUTLINED_FUNCTION_31_10();
  sub_1D4E69970(v61, v52, &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_18_6();
  if (v53)
  {
    sub_1D4E50004(v48[77], &qword_1EC7EA608, &qword_1D561C510);
    sub_1D4EF211C();
    v62 = OUTLINED_FUNCTION_121_0();
    OUTLINED_FUNCTION_42_6(v62, v63);
    v64 = OUTLINED_FUNCTION_2_3();
    sub_1D4E50004(v64, &qword_1EC7EA608, &qword_1D561C510);

    OUTLINED_FUNCTION_30_3();
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_132_0();

    OUTLINED_FUNCTION_22_1();
  }

  OUTLINED_FUNCTION_56();

  return v66(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EDC2D0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 864);
  v6 = *(v4 + 856);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v9 + 872) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D4EDC3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  v51 = v48[36];
  v52 = v48[37];
  OUTLINED_FUNCTION_16_4();
  if (v53)
  {
    sub_1D4E50004(v51, &qword_1EC7EA988, &qword_1D56397B0);
  }

  else
  {
    v49 = v48[38];
    v54 = v48[39];
    v55 = v48[22];
    sub_1D4E50004(v48[79], &qword_1EC7EA608, &qword_1D561C510);
    v56 = OUTLINED_FUNCTION_28_2();
    v50(v56);
    v57 = OUTLINED_FUNCTION_50_2();
    v50(v57);
    OUTLINED_FUNCTION_112();
    swift_storeEnumTagMultiPayload();
    v58 = OUTLINED_FUNCTION_38_8();
    __swift_storeEnumTagSinglePayload(v58, v59, v60, v55);
  }

  v61 = OUTLINED_FUNCTION_31_10();
  sub_1D4E69970(v61, v52, &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_18_6();
  if (v53)
  {
    sub_1D4E50004(v48[77], &qword_1EC7EA608, &qword_1D561C510);
    sub_1D4EF211C();
    v62 = OUTLINED_FUNCTION_121_0();
    OUTLINED_FUNCTION_42_6(v62, v63);
    v64 = OUTLINED_FUNCTION_2_3();
    sub_1D4E50004(v64, &qword_1EC7EA608, &qword_1D561C510);

    OUTLINED_FUNCTION_30_3();
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_132_0();

    OUTLINED_FUNCTION_22_1();
  }

  OUTLINED_FUNCTION_56();

  return v66(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EDC7F8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 888);
  v6 = *(v4 + 880);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v9 + 896) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D4EDC90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  v51 = v48[32];
  v52 = v48[33];
  OUTLINED_FUNCTION_16_4();
  if (v53)
  {
    sub_1D4E50004(v51, &qword_1EC7EA980, &unk_1D561D210);
  }

  else
  {
    v49 = v48[34];
    v54 = v48[35];
    v55 = v48[22];
    sub_1D4E50004(v48[79], &qword_1EC7EA608, &qword_1D561C510);
    v56 = OUTLINED_FUNCTION_28_2();
    v50(v56);
    v57 = OUTLINED_FUNCTION_50_2();
    v50(v57);
    OUTLINED_FUNCTION_112();
    swift_storeEnumTagMultiPayload();
    v58 = OUTLINED_FUNCTION_38_8();
    __swift_storeEnumTagSinglePayload(v58, v59, v60, v55);
  }

  v61 = OUTLINED_FUNCTION_31_10();
  sub_1D4E69970(v61, v52, &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_18_6();
  if (v53)
  {
    sub_1D4E50004(v48[77], &qword_1EC7EA608, &qword_1D561C510);
    sub_1D4EF211C();
    v62 = OUTLINED_FUNCTION_121_0();
    OUTLINED_FUNCTION_42_6(v62, v63);
    v64 = OUTLINED_FUNCTION_2_3();
    sub_1D4E50004(v64, &qword_1EC7EA608, &qword_1D561C510);

    OUTLINED_FUNCTION_30_3();
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_132_0();

    OUTLINED_FUNCTION_22_1();
  }

  OUTLINED_FUNCTION_56();

  return v66(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EDCD20()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 912);
  v6 = *(v4 + 904);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v9 + 920) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D4EDCE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  v51 = v48[28];
  v52 = v48[29];
  OUTLINED_FUNCTION_16_4();
  if (v53)
  {
    sub_1D4E50004(v51, &qword_1EC7EA978, &qword_1D5652B10);
  }

  else
  {
    v49 = v48[30];
    v54 = v48[31];
    v55 = v48[22];
    sub_1D4E50004(v48[79], &qword_1EC7EA608, &qword_1D561C510);
    v56 = OUTLINED_FUNCTION_28_2();
    v50(v56);
    v57 = OUTLINED_FUNCTION_50_2();
    v50(v57);
    OUTLINED_FUNCTION_112();
    swift_storeEnumTagMultiPayload();
    v58 = OUTLINED_FUNCTION_38_8();
    __swift_storeEnumTagSinglePayload(v58, v59, v60, v55);
  }

  v61 = OUTLINED_FUNCTION_31_10();
  sub_1D4E69970(v61, v52, &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_18_6();
  if (v53)
  {
    sub_1D4E50004(v48[77], &qword_1EC7EA608, &qword_1D561C510);
    sub_1D4EF211C();
    v62 = OUTLINED_FUNCTION_121_0();
    OUTLINED_FUNCTION_42_6(v62, v63);
    v64 = OUTLINED_FUNCTION_2_3();
    sub_1D4E50004(v64, &qword_1EC7EA608, &qword_1D561C510);

    OUTLINED_FUNCTION_30_3();
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_132_0();

    OUTLINED_FUNCTION_22_1();
  }

  OUTLINED_FUNCTION_56();

  return v66(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EDD248()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 936);
  v6 = *(v4 + 928);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v9 + 944) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D4EDD35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  v51 = v48[24];
  v52 = v48[25];
  OUTLINED_FUNCTION_16_4();
  if (v53)
  {
    sub_1D4E50004(v51, &unk_1EC7F65A0, &unk_1D561D200);
  }

  else
  {
    v49 = v48[26];
    v54 = v48[27];
    v55 = v48[22];
    sub_1D4E50004(v48[79], &qword_1EC7EA608, &qword_1D561C510);
    v56 = OUTLINED_FUNCTION_28_2();
    v50(v56);
    v57 = OUTLINED_FUNCTION_50_2();
    v50(v57);
    OUTLINED_FUNCTION_112();
    swift_storeEnumTagMultiPayload();
    v58 = OUTLINED_FUNCTION_38_8();
    __swift_storeEnumTagSinglePayload(v58, v59, v60, v55);
  }

  v61 = OUTLINED_FUNCTION_31_10();
  sub_1D4E69970(v61, v52, &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_18_6();
  if (v53)
  {
    sub_1D4E50004(v48[77], &qword_1EC7EA608, &qword_1D561C510);
    sub_1D4EF211C();
    v62 = OUTLINED_FUNCTION_121_0();
    OUTLINED_FUNCTION_42_6(v62, v63);
    v64 = OUTLINED_FUNCTION_2_3();
    sub_1D4E50004(v64, &qword_1EC7EA608, &qword_1D561C510);

    OUTLINED_FUNCTION_30_3();
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_132_0();

    OUTLINED_FUNCTION_22_1();
  }

  OUTLINED_FUNCTION_56();

  return v66(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EDD770()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 960);
  v6 = *(v4 + 952);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v9 + 968) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D4EDD884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  v50 = v48[78];
  v51 = v48[22];
  OUTLINED_FUNCTION_16_4();
  if (v52)
  {
    sub_1D4E50004(v50, &qword_1EC7EA608, &qword_1D561C510);
  }

  else
  {
    v53 = v48[23];
    sub_1D4E50004(v48[79], &qword_1EC7EA608, &qword_1D561C510);
    sub_1D4EF228C(v50, v53);
    v54 = OUTLINED_FUNCTION_93();
    sub_1D4EF228C(v54, v55);
    v56 = OUTLINED_FUNCTION_38_8();
    __swift_storeEnumTagSinglePayload(v56, v57, v58, v51);
  }

  v59 = OUTLINED_FUNCTION_31_10();
  sub_1D4E69970(v59, v51, &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_18_6();
  if (v52)
  {
    sub_1D4E50004(v48[77], &qword_1EC7EA608, &qword_1D561C510);
    sub_1D4EF211C();
    v60 = OUTLINED_FUNCTION_121_0();
    OUTLINED_FUNCTION_42_6(v60, v61);
    v62 = OUTLINED_FUNCTION_2_3();
    sub_1D4E50004(v62, &qword_1EC7EA608, &qword_1D561C510);

    OUTLINED_FUNCTION_30_3();
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_132_0();

    OUTLINED_FUNCTION_22_1();
  }

  OUTLINED_FUNCTION_56();

  return v64(v63, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EDDC9C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 984);
  v6 = *(v4 + 976);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v9 + 992) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D4EDDDB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  v50 = v48[19];
  OUTLINED_FUNCTION_37_9(v51, v52, v48[20]);
  if (v53)
  {
    sub_1D4E50004(v50, &qword_1EC7EA880, &unk_1D561CEE0);
  }

  else
  {
    v55 = v48[21];
    v54 = v48[22];
    sub_1D4E50004(v48[79], &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_104_1();
    sub_1D4EF228C(v50, v55);
    v56 = OUTLINED_FUNCTION_86_0();
    sub_1D4EF228C(v56, v57);
    OUTLINED_FUNCTION_128();
    swift_storeEnumTagMultiPayload();
    v58 = OUTLINED_FUNCTION_60_0();
    __swift_storeEnumTagSinglePayload(v58, v59, v60, v54);
  }

  v61 = OUTLINED_FUNCTION_31_10();
  sub_1D4E69970(v61, v50, &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_18_6();
  if (v53)
  {
    sub_1D4E50004(v48[77], &qword_1EC7EA608, &qword_1D561C510);
    sub_1D4EF211C();
    v62 = OUTLINED_FUNCTION_121_0();
    OUTLINED_FUNCTION_42_6(v62, v63);
    v64 = OUTLINED_FUNCTION_2_3();
    sub_1D4E50004(v64, &qword_1EC7EA608, &qword_1D561C510);

    OUTLINED_FUNCTION_30_3();
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_132_0();

    OUTLINED_FUNCTION_22_1();
  }

  OUTLINED_FUNCTION_56();

  return v66(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EDE1C0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 1008);
  v6 = *(v4 + 1000);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v9 + 1016) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D4EDE2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  v52 = v50[16];
  OUTLINED_FUNCTION_37_9(v53, v54, v50[17]);
  if (v55)
  {
    sub_1D4E50004(v52, &qword_1EC7EA878, &unk_1D5634790);
  }

  else
  {
    OUTLINED_FUNCTION_157_1();
    v56 = v50[18];
    sub_1D4E50004(v48, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_103();
    sub_1D4EF228C(v52, v56);
    v57 = OUTLINED_FUNCTION_86_0();
    sub_1D4EF228C(v57, v58);
    OUTLINED_FUNCTION_128();
    swift_storeEnumTagMultiPayload();
    v59 = OUTLINED_FUNCTION_60_0();
    __swift_storeEnumTagSinglePayload(v59, v60, v61, v49);
  }

  v62 = OUTLINED_FUNCTION_31_10();
  sub_1D4E69970(v62, v52, &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_18_6();
  if (v55)
  {
    sub_1D4E50004(v50[77], &qword_1EC7EA608, &qword_1D561C510);
    sub_1D4EF211C();
    v63 = OUTLINED_FUNCTION_121_0();
    OUTLINED_FUNCTION_42_6(v63, v64);
    v65 = OUTLINED_FUNCTION_2_3();
    sub_1D4E50004(v65, &qword_1EC7EA608, &qword_1D561C510);

    OUTLINED_FUNCTION_30_3();
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_1D4E50004(v51, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_132_0();

    OUTLINED_FUNCTION_22_1();
  }

  OUTLINED_FUNCTION_56();

  return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EDE6E4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 1032);
  v6 = *(v4 + 1024);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v9 + 1040) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D4EDE7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  v52 = v50[13];
  OUTLINED_FUNCTION_37_9(v53, v54, v50[14]);
  if (v55)
  {
    sub_1D4E50004(v52, &qword_1EC7EA3B0, &unk_1D561C1F0);
  }

  else
  {
    OUTLINED_FUNCTION_157_1();
    v56 = v50[15];
    sub_1D4E50004(v48, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_102_2();
    sub_1D4EF228C(v52, v56);
    v57 = OUTLINED_FUNCTION_86_0();
    sub_1D4EF228C(v57, v58);
    OUTLINED_FUNCTION_128();
    swift_storeEnumTagMultiPayload();
    v59 = OUTLINED_FUNCTION_60_0();
    __swift_storeEnumTagSinglePayload(v59, v60, v61, v49);
  }

  v62 = OUTLINED_FUNCTION_31_10();
  sub_1D4E69970(v62, v52, &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_18_6();
  if (v55)
  {
    sub_1D4E50004(v50[77], &qword_1EC7EA608, &qword_1D561C510);
    sub_1D4EF211C();
    v63 = OUTLINED_FUNCTION_121_0();
    OUTLINED_FUNCTION_42_6(v63, v64);
    v65 = OUTLINED_FUNCTION_2_3();
    sub_1D4E50004(v65, &qword_1EC7EA608, &qword_1D561C510);

    OUTLINED_FUNCTION_30_3();
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_1D4E50004(v51, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_132_0();

    OUTLINED_FUNCTION_22_1();
  }

  OUTLINED_FUNCTION_56();

  return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EDEC08()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 1056);
  v6 = *(v4 + 1048);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v9 + 1064) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D4EDED1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  v52 = v50[10];
  OUTLINED_FUNCTION_37_9(v53, v54, v50[11]);
  if (v55)
  {
    sub_1D4E50004(v52, &qword_1EC7EA970, &unk_1D5652B00);
  }

  else
  {
    OUTLINED_FUNCTION_157_1();
    v56 = v50[12];
    sub_1D4E50004(v48, &qword_1EC7EA608, &qword_1D561C510);
    sub_1D4EF228C(v52, v56);
    v57 = OUTLINED_FUNCTION_86_0();
    sub_1D4EF228C(v57, v58);
    OUTLINED_FUNCTION_128();
    swift_storeEnumTagMultiPayload();
    v59 = OUTLINED_FUNCTION_60_0();
    __swift_storeEnumTagSinglePayload(v59, v60, v61, v49);
  }

  v62 = OUTLINED_FUNCTION_31_10();
  sub_1D4E69970(v62, v52, &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_18_6();
  if (v55)
  {
    sub_1D4E50004(v50[77], &qword_1EC7EA608, &qword_1D561C510);
    sub_1D4EF211C();
    v63 = OUTLINED_FUNCTION_121_0();
    OUTLINED_FUNCTION_42_6(v63, v64);
    v65 = OUTLINED_FUNCTION_2_3();
    sub_1D4E50004(v65, &qword_1EC7EA608, &qword_1D561C510);

    OUTLINED_FUNCTION_30_3();
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_1D4E50004(v51, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_132_0();

    OUTLINED_FUNCTION_22_1();
  }

  OUTLINED_FUNCTION_56();

  return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EDF13C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 1080);
  v6 = *(v4 + 1072);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v9 + 1088) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D4EDF250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  v52 = v50[7];
  OUTLINED_FUNCTION_37_9(v53, v54, v50[8]);
  if (v55)
  {
    sub_1D4E50004(v52, &qword_1EC7EA968, &unk_1D561D1F0);
  }

  else
  {
    OUTLINED_FUNCTION_157_1();
    v56 = v50[9];
    sub_1D4E50004(v48, &qword_1EC7EA608, &qword_1D561C510);
    sub_1D4EF228C(v52, v56);
    v57 = OUTLINED_FUNCTION_86_0();
    sub_1D4EF228C(v57, v58);
    OUTLINED_FUNCTION_128();
    swift_storeEnumTagMultiPayload();
    v59 = OUTLINED_FUNCTION_60_0();
    __swift_storeEnumTagSinglePayload(v59, v60, v61, v49);
  }

  v62 = OUTLINED_FUNCTION_31_10();
  sub_1D4E69970(v62, v52, &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_18_6();
  if (v55)
  {
    sub_1D4E50004(v50[77], &qword_1EC7EA608, &qword_1D561C510);
    sub_1D4EF211C();
    v63 = OUTLINED_FUNCTION_121_0();
    OUTLINED_FUNCTION_42_6(v63, v64);
    v65 = OUTLINED_FUNCTION_2_3();
    sub_1D4E50004(v65, &qword_1EC7EA608, &qword_1D561C510);

    OUTLINED_FUNCTION_30_3();
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_1D4E50004(v51, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_132_0();

    OUTLINED_FUNCTION_22_1();
  }

  OUTLINED_FUNCTION_56();

  return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EDF670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_1_22(*(v48 + 656));
  sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_56();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EDF838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_1_22(*(v48 + 680));
  sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_56();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EDFA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_1_22(*(v48 + 704));
  sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_56();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EDFBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_1_22(*(v48 + 728));
  sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_56();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EDFD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_1_22(*(v48 + 752));
  sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_56();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EDFF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_1_22(*(v48 + 776));
  sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_56();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EE0120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_1_22(*(v48 + 800));
  sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_56();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EE02E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_1_22(*(v48 + 824));
  sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_56();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EE04B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_1_22(*(v48 + 848));
  sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_56();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EE0678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_1_22(*(v48 + 872));
  sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_56();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EE0840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_1_22(*(v48 + 896));
  sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_56();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EE0A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_1_22(*(v48 + 920));
  sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_56();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EE0BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_1_22(*(v48 + 944));
  sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_56();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EE0D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_1_22(*(v48 + 968));
  sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_56();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EE0F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_1_22(*(v48 + 992));
  sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_56();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EE1128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_1_22(*(v48 + 1016));
  sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_56();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EE12F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_1_22(*(v48 + 1040));
  sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_56();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EE14B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_1_22(*(v48 + 1064));
  sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_56();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EE1680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_1_22(*(v48 + 1088));
  sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_56();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EE1848()
{
  OUTLINED_FUNCTION_60();
  v2 = v1;
  *(v0 + 40) = v3;
  *(v0 + 48) = v4;
  *(v0 + 24) = v5;
  *(v0 + 32) = v6;
  *(v0 + 16) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B0, &unk_1D561C1F0);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  *(v0 + 56) = OUTLINED_FUNCTION_127();
  v11 = type metadata accessor for TVShow();
  *(v0 + 64) = v11;
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  *(v0 + 72) = OUTLINED_FUNCTION_127();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA878, &unk_1D5634790);
  OUTLINED_FUNCTION_22(v14);
  v16 = *(v15 + 64);
  *(v0 + 80) = OUTLINED_FUNCTION_127();
  v17 = type metadata accessor for TVSeason();
  *(v0 + 88) = v17;
  OUTLINED_FUNCTION_22(v17);
  v19 = *(v18 + 64);
  *(v0 + 96) = OUTLINED_FUNCTION_127();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA880, &unk_1D561CEE0);
  OUTLINED_FUNCTION_22(v20);
  v22 = *(v21 + 64);
  *(v0 + 104) = OUTLINED_FUNCTION_127();
  v23 = type metadata accessor for TVEpisode();
  *(v0 + 112) = v23;
  OUTLINED_FUNCTION_22(v23);
  v25 = *(v24 + 64);
  *(v0 + 120) = OUTLINED_FUNCTION_127();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA888, &qword_1D563B8C0);
  OUTLINED_FUNCTION_22(v26);
  v28 = *(v27 + 64);
  *(v0 + 128) = OUTLINED_FUNCTION_127();
  v29 = sub_1D5613D28();
  *(v0 + 136) = v29;
  OUTLINED_FUNCTION_69(v29);
  *(v0 + 144) = v30;
  v32 = *(v31 + 64) + 15;
  *(v0 + 152) = swift_task_alloc();
  *(v0 + 160) = swift_task_alloc();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_22(v33);
  v35 = *(v34 + 64);
  *(v0 + 168) = OUTLINED_FUNCTION_127();
  v36 = sub_1D5614898();
  *(v0 + 176) = v36;
  OUTLINED_FUNCTION_69(v36);
  *(v0 + 184) = v37;
  v39 = *(v38 + 64);
  *(v0 + 192) = OUTLINED_FUNCTION_127();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA890, &qword_1D5672D40);
  OUTLINED_FUNCTION_22(v40);
  v42 = *(v41 + 64);
  *(v0 + 200) = OUTLINED_FUNCTION_127();
  v43 = type metadata accessor for MusicMovie();
  *(v0 + 208) = v43;
  OUTLINED_FUNCTION_22(v43);
  v45 = *(v44 + 64);
  *(v0 + 216) = OUTLINED_FUNCTION_127();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA898, &unk_1D561CF00);
  OUTLINED_FUNCTION_22(v46);
  v48 = *(v47 + 64);
  *(v0 + 224) = OUTLINED_FUNCTION_127();
  v49 = sub_1D5613C48();
  *(v0 + 232) = v49;
  OUTLINED_FUNCTION_69(v49);
  *(v0 + 240) = v50;
  v52 = *(v51 + 64);
  *(v0 + 248) = OUTLINED_FUNCTION_127();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA8A0, &qword_1D5652B20);
  OUTLINED_FUNCTION_22(v53);
  v55 = *(v54 + 64);
  *(v0 + 256) = OUTLINED_FUNCTION_127();
  v56 = type metadata accessor for Composer();
  *(v0 + 264) = v56;
  OUTLINED_FUNCTION_22(v56);
  v58 = *(v57 + 64);
  *(v0 + 272) = OUTLINED_FUNCTION_127();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA8A8, &qword_1D561CF10);
  OUTLINED_FUNCTION_22(v59);
  v61 = *(v60 + 64);
  *(v0 + 280) = OUTLINED_FUNCTION_127();
  v62 = sub_1D5613EF8();
  *(v0 + 288) = v62;
  OUTLINED_FUNCTION_69(v62);
  *(v0 + 296) = v63;
  v65 = *(v64 + 64);
  *(v0 + 304) = OUTLINED_FUNCTION_127();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC30, &unk_1D5620CE0);
  OUTLINED_FUNCTION_22(v66);
  v68 = *(v67 + 64);
  *(v0 + 312) = OUTLINED_FUNCTION_127();
  v69 = sub_1D5613AF8();
  *(v0 + 320) = v69;
  OUTLINED_FUNCTION_69(v69);
  *(v0 + 328) = v70;
  v72 = *(v71 + 64);
  *(v0 + 336) = OUTLINED_FUNCTION_127();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_22(v73);
  v75 = *(v74 + 64) + 15;
  *(v0 + 344) = swift_task_alloc();
  *(v0 + 352) = swift_task_alloc();
  *(v0 + 616) = *v2;
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v76, v77, v78);
}

uint64_t sub_1D4EE1CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_95_2();
  a35 = v37;
  a36 = v38;
  OUTLINED_FUNCTION_109_3();
  a34 = v36;
  v39 = *(v36 + 40);
  v40 = *(v36 + 48);
  v41 = *(v36 + 32);
  if (_s8MusicKit0A7LibraryC0aB8InternalE2idSSvg_0() == v41 && v42 == v39)
  {
  }

  else
  {
    v44 = *(v36 + 32);
    v45 = *(v36 + 40);
    v46 = sub_1D5616168();

    if ((v46 & 1) == 0)
    {
      if (qword_1EC7E90D8 != -1)
      {
        OUTLINED_FUNCTION_19_10();
      }

      v48 = *(v36 + 40);
      v47 = *(v36 + 48);
      v49 = sub_1D560C758();
      __swift_project_value_buffer(v49, qword_1EC87C330);

      v50 = sub_1D560C738();
      v51 = sub_1D56156C8();

      if (os_log_type_enabled(v50, v51))
      {
        v53 = *(v36 + 40);
        v52 = *(v36 + 48);
        v54 = *(v36 + 32);
        OUTLINED_FUNCTION_144();
        a24 = OUTLINED_FUNCTION_119_0();
        *v47 = 136315394;
        v55 = OUTLINED_FUNCTION_66();
        *(v47 + 4) = sub_1D4E6835C(v55, v56, v57);
        *(v47 + 12) = 2080;
        v58 = _s8MusicKit0A7LibraryC0aB8InternalE2idSSvg_0();
        v60 = sub_1D4E6835C(v58, v59, &a24);

        *(v47 + 14) = v60;
        _os_log_impl(&dword_1D4E3F000, v50, v51, "The provided database ID (%s) does not match the library’s unique identifier (%s). Treating as item not found.", v47, 0x16u);
        OUTLINED_FUNCTION_123_1();
        OUTLINED_FUNCTION_83();
        OUTLINED_FUNCTION_118();
      }

      sub_1D4EF211C();
      v61 = OUTLINED_FUNCTION_121_0();
      *v62 = 0;
      v175 = v61;
      swift_willThrow();
LABEL_11:
      OUTLINED_FUNCTION_25_19();
      v63 = *(v36 + 248);
      v64 = *(v36 + 256);
      OUTLINED_FUNCTION_7_16();
      v174 = v65;

      OUTLINED_FUNCTION_30_3();
      OUTLINED_FUNCTION_71_2();

      return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v174, v175, a24, a25, a26, a27, a28);
    }
  }

  v75 = *(v36 + 616);
  v76 = *(v36 + 352);
  v77 = *(v36 + 24);
  sub_1D560EF08();
  *(v36 + 360) = v78;
  v79 = type metadata accessor for GenericMusicItem();
  *(v36 + 368) = v79;
  __swift_storeEnumTagSinglePayload(v76, 1, 1, v79);
  switch(v75)
  {
    case 0:
      *(v36 + 376) = swift_getKeyPath();
      swift_task_alloc();
      OUTLINED_FUNCTION_58();
      *(v36 + 384) = v126;
      *v126 = v127;
      v126[1] = sub_1D4EE2550;
      v128 = *(v36 + 312);
      OUTLINED_FUNCTION_21_9();
      OUTLINED_FUNCTION_71_2();

      result = sub_1D4EEDCB4(v129, v130, v131, v132, v133);
      break;
    case 1:
      *(v36 + 400) = swift_getKeyPath();
      swift_task_alloc();
      OUTLINED_FUNCTION_58();
      *(v36 + 408) = v144;
      *v144 = v145;
      v144[1] = sub_1D4EE2974;
      v146 = *(v36 + 280);
      OUTLINED_FUNCTION_21_9();
      OUTLINED_FUNCTION_71_2();

      result = sub_1D4EEE0C8(v147, v148, v149, v150, v151);
      break;
    case 2:
      *(v36 + 424) = swift_getKeyPath();
      swift_task_alloc();
      OUTLINED_FUNCTION_58();
      *(v36 + 432) = v135;
      *v135 = v136;
      v135[1] = sub_1D4EE2D98;
      v137 = *(v36 + 256);
      OUTLINED_FUNCTION_21_9();
      OUTLINED_FUNCTION_71_2();

      result = sub_1D4EEE4DC(v138, v139, v140, v141, v142);
      break;
    case 5:
      *(v36 + 448) = swift_getKeyPath();
      swift_task_alloc();
      OUTLINED_FUNCTION_58();
      *(v36 + 456) = v117;
      *v117 = v118;
      v117[1] = sub_1D4EE31B4;
      v119 = *(v36 + 224);
      OUTLINED_FUNCTION_21_9();
      OUTLINED_FUNCTION_71_2();

      result = sub_1D4EEE91C(v120, v121, v122, v123, v124);
      break;
    case 6:
      *(v36 + 472) = swift_getKeyPath();
      swift_task_alloc();
      OUTLINED_FUNCTION_58();
      *(v36 + 480) = v108;
      *v108 = v109;
      v108[1] = sub_1D4EE35D8;
      v110 = *(v36 + 200);
      OUTLINED_FUNCTION_21_9();
      OUTLINED_FUNCTION_71_2();

      result = sub_1D4EEED30(v111, v112, v113, v114, v115);
      break;
    case 7:
    case 12:
      *(v36 + 520) = swift_getKeyPath();
      swift_task_alloc();
      OUTLINED_FUNCTION_58();
      *(v36 + 528) = v80;
      *v80 = v81;
      v80[1] = sub_1D4EE3E18;
      v82 = *(v36 + 128);
      OUTLINED_FUNCTION_21_9();
      OUTLINED_FUNCTION_71_2();

      result = sub_1D4EEF618(v83, v84, v85, v86, v87);
      break;
    case 8:
      *(v36 + 496) = swift_getKeyPath();
      swift_task_alloc();
      OUTLINED_FUNCTION_58();
      *(v36 + 504) = v153;
      *v153 = v154;
      v153[1] = sub_1D4EE39F4;
      v155 = *(v36 + 168);
      OUTLINED_FUNCTION_21_9();
      OUTLINED_FUNCTION_71_2();

      result = sub_1D4EEF204(v156, v157, v158, v159, v160);
      break;
    case 14:
      *(v36 + 544) = swift_getKeyPath();
      swift_task_alloc();
      OUTLINED_FUNCTION_58();
      *(v36 + 552) = v89;
      *v89 = v90;
      v89[1] = sub_1D4EE4514;
      v91 = *(v36 + 104);
      OUTLINED_FUNCTION_21_9();
      OUTLINED_FUNCTION_71_2();

      result = sub_1D4EEFA2C(v92, v93, v94, v95, v96);
      break;
    case 15:
      *(v36 + 568) = swift_getKeyPath();
      swift_task_alloc();
      OUTLINED_FUNCTION_58();
      *(v36 + 576) = v162;
      *v162 = v163;
      v162[1] = sub_1D4EE4930;
      v164 = *(v36 + 80);
      OUTLINED_FUNCTION_21_9();
      OUTLINED_FUNCTION_71_2();

      result = sub_1D4EEFE6C(v165, v166, v167, v168, v169);
      break;
    case 16:
      *(v36 + 592) = swift_getKeyPath();
      swift_task_alloc();
      OUTLINED_FUNCTION_58();
      *(v36 + 600) = v98;
      *v98 = v99;
      v98[1] = sub_1D4EE4D4C;
      v101 = *(v36 + 48);
      v100 = *(v36 + 56);
      OUTLINED_FUNCTION_71_2();

      result = sub_1D4EF02AC(v102, v103, v104, v105, v106);
      break;
    default:
      v171 = *(v36 + 352);

      sub_1D4EF211C();
      v172 = OUTLINED_FUNCTION_121_0();
      *v173 = 5;
      v175 = v172;
      swift_willThrow();
      sub_1D4E50004(v171, &qword_1EC7EA608, &qword_1D561C510);
      goto LABEL_11;
  }

  return result;
}