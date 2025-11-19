uint64_t sub_24AFF177C(uint64_t a1)
{
  v2 = sub_24B2D1704();
  v3 = *(v2 - 8);
  v4 = v3;
  MEMORY[0x28223BE20](v2);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = _s14descr285E46659O16SubscriptionDataOMa(0);
  v7 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7980);
  v10 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v27 = *(v3 + 72);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24B2DE430;
  v12 = type metadata accessor for Friend();
  v13 = *(v12 + 20);
  v25 = *(v4 + 16);
  v26 = v4 + 16;
  v25(v11 + v10, a1 + v13, v2);
  v14 = *(a1 + *(v12 + 24));
  v30 = a1;

  v15 = sub_24B00DCB0(sub_24AFF2118, v29, v14);
  v31 = v11;
  sub_24B0300DC(v15);
  v16 = v31;
  v17 = *(v31 + 16);
  if (v17)
  {
    v31 = MEMORY[0x277D84F90];
    sub_24B0076B0(0, v17, 0);
    v18 = v31;
    v24[1] = v16;
    v19 = v16 + v10;
    do
    {
      v25(v6, v19, v2);
      (*(v4 + 32))(v9, v6, v2);
      swift_storeEnumTagMultiPayload();
      v31 = v18;
      v21 = *(v18 + 16);
      v20 = *(v18 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_24B0076B0(v20 > 1, v21 + 1, 1);
        v18 = v31;
      }

      *(v18 + 16) = v21 + 1;
      sub_24AFF2138(v9, v18 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v21, _s14descr285E46659O16SubscriptionDataOMa);
      v19 += v27;
      --v17;
    }

    while (v17);
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
  }

  v22 = sub_24B1CFFD0(v18);

  return v22;
}

unint64_t sub_24AFF1AB4()
{
  result = qword_27EFC7888;
  if (!qword_27EFC7888)
  {
    sub_24B2D3714();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7888);
  }

  return result;
}

unint64_t sub_24AFF1B00()
{
  result = qword_27EFC7890;
  if (!qword_27EFC7890)
  {
    sub_24B2D35A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7890);
  }

  return result;
}

void *sub_24AFF1B6C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

_DWORD *sub_24AFF1B7C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

void sub_24AFF1BC0()
{
  sub_24AFF1D00(319, &qword_27EFC78F8, MEMORY[0x277D08BF8], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_24AFF2240(319, &qword_27EFC7900, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_24AFF1D00(319, &unk_27EFC7908, type metadata accessor for Friend, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for CompositeAppViewState(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24AFF1D00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_24AFF1DB0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24AFF1DD0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
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

  *(result + 48) = v3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_24AFF2050(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24AFF20B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24AFF2138(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_24AFF2240(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t CompositeAppViewState.TranscriptInfo.transcriptID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CompositeAppViewState.TranscriptInfo.payloadID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CompositeAppViewState.TranscriptInfo.to.getter()
{
  type metadata accessor for CompositeAppViewState.TranscriptInfo(0);
}

uint64_t CompositeAppViewState.TranscriptInfo.direction.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for CompositeAppViewState.TranscriptInfo(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t CompositeAppViewState.TranscriptInfo.kind.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for CompositeAppViewState.TranscriptInfo(0);
  v4 = (v1 + *(result + 40));
  v5 = *v4;
  LOWORD(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t CompositeAppViewState.TranscriptInfo.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CompositeAppViewState.TranscriptInfo(0) + 44);

  return sub_24AFF249C(v3, a1);
}

uint64_t sub_24AFF249C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *CompositeAppViewState.TranscriptInfo.initialLocation.getter()
{
  v1 = *(v0 + *(type metadata accessor for CompositeAppViewState.TranscriptInfo(0) + 48));
  v2 = v1;
  return v1;
}

uint64_t CompositeAppViewState.TranscriptInfo.init(transcriptID:payloadID:from:to:direction:isPending:kind:timestamp:initialLocation:canShowExpensiveUIAndControls:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, char a8@<W7>, void *a9@<X8>, uint64_t *a10, uint64_t a11, uint64_t a12, char a13)
{
  v17 = *a7;
  v18 = *a10;
  v19 = *(a10 + 4);
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  v20 = type metadata accessor for CompositeAppViewState.TranscriptInfo(0);
  sub_24AFF2644(a5, a9 + v20[6]);
  *(a9 + v20[7]) = a6;
  *(a9 + v20[8]) = v17;
  *(a9 + v20[9]) = a8;
  v21 = a9 + v20[10];
  *v21 = v18;
  *(v21 + 4) = v19;
  result = sub_24AFF26A8(a11, a9 + v20[11]);
  *(a9 + v20[12]) = a12;
  *(a9 + v20[13]) = a13;
  return result;
}

uint64_t sub_24AFF2644(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Friend();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AFF26A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t CompositeAppViewState.TranscriptInfo.singleRecipient.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CompositeAppViewState.TranscriptInfo(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Friend();
  v7 = MEMORY[0x28223BE20](*(v6 - 8));
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + *(v3 + 28));
  v11 = *(v10 + 16);
  v25 = v7;
  if (v11)
  {
    sub_24AFF3158(v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v9, type metadata accessor for Friend);
    if (v11 != 1)
    {
      if (qword_27EFC75E8 != -1)
      {
        swift_once();
      }

      v12 = sub_24B2D3184();
      __swift_project_value_buffer(v12, qword_27EFE4418);
      sub_24AFF3158(v1, v5, type metadata accessor for CompositeAppViewState.TranscriptInfo);
      v13 = sub_24B2D3164();
      v14 = sub_24B2D5914();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v26 = v16;
        *v15 = 136315394;
        *(v15 + 4) = sub_24AFF321C(0x6552656C676E6973, 0xEF746E6569706963, &v26);
        *(v15 + 12) = 2048;
        v17 = *(*&v5[*(v3 + 28)] + 16);
        sub_24AFF31C0(v5);
        *(v15 + 14) = v17;
        _os_log_impl(&dword_24AFD2000, v13, v14, "%s Multiple (%ld) friends configured, expecting only 1.", v15, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v16);
        MEMORY[0x24C23D530](v16, -1, -1);
        MEMORY[0x24C23D530](v15, -1, -1);
      }

      else
      {
        sub_24AFF31C0(v5);
      }
    }

    sub_24AFF2644(v9, a1);
    return (*(v25 + 56))(a1, 0, 1, v6);
  }

  else
  {
    if (qword_27EFC75E8 != -1)
    {
      swift_once();
    }

    v18 = sub_24B2D3184();
    __swift_project_value_buffer(v18, qword_27EFE4418);
    v19 = sub_24B2D3164();
    v20 = sub_24B2D5914();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v26 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_24AFF321C(0x6552656C676E6973, 0xEF746E6569706963, &v26);
      _os_log_impl(&dword_24AFD2000, v19, v20, "%s No friend configured.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x24C23D530](v22, -1, -1);
      MEMORY[0x24C23D530](v21, -1, -1);
    }

    v23 = *(v25 + 56);

    return v23(a1, 1, 1, v6);
  }
}

uint64_t CompositeAppViewState.TranscriptInfo.Direction.hashValue.getter()
{
  v1 = *v0;
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](v1);
  return sub_24B2D6124();
}

uint64_t _s12FindMyUICore13DeviceUseCaseO9hashValueSivg_0()
{
  v1 = *v0;
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](v1);
  return sub_24B2D6124();
}

uint64_t sub_24AFF2C38()
{
  v1 = *v0;
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](v1);
  return sub_24B2D6124();
}

uint64_t sub_24AFF2C7C()
{
  type metadata accessor for FindMyUICore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_24B2D5374();
  v3 = [v1 localizedStringForKey:v2 value:0 table:0];

  v4 = sub_24B2D5394();
  return v4;
}

uint64_t sub_24AFF2D64()
{
  v1 = v0;
  v2 = type metadata accessor for CompositeAppViewState.TranscriptInfo(0);
  type metadata accessor for Friend();
  v3 = sub_24B2D16F4();
  v5 = v4;
  if (*(v1 + *(v2 + 40) + 8) == 2)
  {
    v6 = 0x74736575716572;
  }

  else
  {
    v6 = 0x6572616873;
  }

  if (*(v1 + *(v2 + 40) + 8) == 2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (*(v1 + *(v2 + 32)))
  {
    v8 = 0x676E696F6774756FLL;
  }

  else
  {
    v8 = 0x676E696D6F636E69;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFCE7C0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_24B2DE790;
  v10 = v1[1];
  *(v9 + 32) = *v1;
  *(v9 + 40) = v10;
  *(v9 + 48) = v6;
  *(v9 + 56) = v7;
  *(v9 + 64) = v8;
  *(v9 + 72) = 0xE800000000000000;
  *(v9 + 80) = v3;
  *(v9 + 88) = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7B90);
  sub_24AFF3EF4();
  v11 = sub_24B2D5274();

  return v11;
}

uint64_t sub_24AFF2F58@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

BOOL sub_24AFF300C(void *a1, uint64_t *a2)
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

void *sub_24AFF303C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_24AFF3068@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_24AFF3158(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24AFF31C0(uint64_t a1)
{
  v2 = type metadata accessor for CompositeAppViewState.TranscriptInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24AFF321C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24AFF32E8(v11, 0, 0, 1, a1, a2);
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
    sub_24AFF3FA0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_24AFF32E8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_24AFF33F4(a5, a6);
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
    result = sub_24B2D5CB4();
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

uint64_t sub_24AFF33F4(uint64_t a1, unint64_t a2)
{
  v3 = sub_24AFF3440(a1, a2);
  sub_24AFF3570(&unk_285E481E8);
  return v3;
}

uint64_t sub_24AFF3440(uint64_t a1, unint64_t a2)
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

  v6 = sub_24B240CC8(v5, 0);
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

  result = sub_24B2D5CB4();
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
        v10 = sub_24B2D5444();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24B240CC8(v10, 0);
        result = sub_24B2D5C24();
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

uint64_t sub_24AFF3570(uint64_t result)
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

  result = sub_24AFF365C(result, v11, 1, v3);
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

char *sub_24AFF365C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7BA0);
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

unint64_t sub_24AFF3754()
{
  result = qword_27EFC7B30;
  if (!qword_27EFC7B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7B30);
  }

  return result;
}

unint64_t sub_24AFF37AC()
{
  result = qword_27EFC7B38;
  if (!qword_27EFC7B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7B38);
  }

  return result;
}

unint64_t sub_24AFF3804()
{
  result = qword_27EFC7B40;
  if (!qword_27EFC7B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7B40);
  }

  return result;
}

unint64_t sub_24AFF385C()
{
  result = qword_27EFC7B48;
  if (!qword_27EFC7B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7B48);
  }

  return result;
}

unint64_t sub_24AFF38B4()
{
  result = qword_27EFC7B50;
  if (!qword_27EFC7B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7B50);
  }

  return result;
}

uint64_t sub_24AFF397C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24AFF39B4()
{
  result = type metadata accessor for CompositeAppViewState.TranscriptInfo(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_24AFF3A48()
{
  type metadata accessor for Friend();
  if (v0 <= 0x3F)
  {
    sub_24AFF3BB8(319, &unk_27EFC7908, type metadata accessor for Friend, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_24AFF3BB8(319, &qword_27EFC7B78, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_24AFF3BB8(319, &qword_27EFC7B80, sub_24AFF3C1C, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24AFF3BB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_24AFF3C1C()
{
  result = qword_27EFC7B88;
  if (!qword_27EFC7B88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EFC7B88);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CompositeAppViewState.TranscriptInfo.Direction(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CompositeAppViewState.TranscriptInfo.Direction(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CompositeAppViewState.TranscriptInfo.Kind(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 10))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  if (v5 + 1 >= 2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CompositeAppViewState.TranscriptInfo.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_24AFF3E74(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24AFF3E90(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
  }

  else if (a2)
  {
    *(result + 8) = a2 + 1;
  }

  return result;
}

unint64_t sub_24AFF3EF4()
{
  result = qword_27EFC7B98;
  if (!qword_27EFC7B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC7B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7B98);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_24AFF3FA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24AFF4014()
{
  sub_24B2D60E4();
  sub_24B2D5404();
  return sub_24B2D6124();
}

uint64_t sub_24AFF4068()
{
  sub_24B2D60E4();
  sub_24B2D5404();
  return sub_24B2D6124();
}

uint64_t sub_24AFF40AC@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_24B2D5E14();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_24AFF4110()
{
  v1 = 0x72756F48656E6FLL;
  v2 = 0x696E696665646E69;
  if (*v0 != 2)
  {
    v2 = 0x636974617473;
  }

  if (*v0)
  {
    v1 = 0x796144664F646E65;
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

uint64_t sub_24AFF4190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24AFF847C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24AFF41D0(uint64_t a1)
{
  v2 = sub_24AFFA360();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AFF420C(uint64_t a1)
{
  v2 = sub_24AFFA360();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24AFF4248(void *a1, int a2)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7D98);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v26 = &v20 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7DA0);
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x28223BE20](v5);
  v23 = &v20 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7DA8);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7DB0);
  v20 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7DB8);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AFFA360();
  sub_24B2D6144();
  if (v29 > 1u)
  {
    if (v29 == 2)
    {
      v32 = 2;
      sub_24AFFA408();
      v9 = v23;
      sub_24B2D5EC4();
      v18 = v24;
      v17 = v25;
    }

    else
    {
      v33 = 3;
      sub_24AFFA3B4();
      v9 = v26;
      sub_24B2D5EC4();
      v18 = v27;
      v17 = v28;
    }

    goto LABEL_8;
  }

  if (v29)
  {
    v31 = 1;
    sub_24AFFA45C();
    sub_24B2D5EC4();
    v18 = v21;
    v17 = v22;
LABEL_8:
    (*(v18 + 8))(v9, v17);
    return (*(v14 + 8))(v16, v13);
  }

  v30 = 0;
  sub_24AFFA4B0();
  sub_24B2D5EC4();
  (*(v20 + 8))(v12, v10);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_24AFF4684(void *a1, __int16 a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7CB0);
  v18 = *(v4 - 8);
  v19 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7CB8);
  v20 = *(v7 - 8);
  v21 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7CC0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v17 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AFF97F8();
  sub_24B2D6144();
  if ((a2 & 0xFF00) == 0x200)
  {
    v27 = 1;
    sub_24AFF984C();
    sub_24B2D5EC4();
    (*(v18 + 8))(v6, v19);
    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    v26 = 0;
    sub_24AFF98A0();
    sub_24B2D5EC4();
    v25 = a2;
    v24 = 0;
    sub_24AFF9948();
    v16 = v21;
    v15 = v22;
    sub_24B2D5F24();
    if (!v15)
    {
      v23 = 1;
      sub_24B2D5F04();
    }

    (*(v20 + 8))(v9, v16);
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_24AFF49CC(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6465657073;
    v6 = 0x6363416465657073;
    if (a1 != 8)
    {
      v6 = 0x6D617473656D6974;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x657372756F63;
    if (a1 != 5)
    {
      v7 = 0x6341657372756F63;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x656475746974616CLL;
    v2 = 0x6564757469746C61;
    v3 = 0xD000000000000012;
    if (a1 != 3)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x64757469676E6F6CLL;
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

uint64_t sub_24AFF4B24(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7C68);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AFF97A4();
  sub_24B2D6144();
  v8[15] = 0;
  sub_24B2D5F14();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_24B2D5F14();
  v8[13] = 2;
  sub_24B2D5F14();
  v8[12] = 3;
  sub_24B2D5F14();
  v8[11] = 4;
  sub_24B2D5F14();
  v8[10] = 5;
  sub_24B2D5F14();
  v8[9] = 6;
  sub_24B2D5F14();
  v8[8] = 7;
  sub_24B2D5F14();
  v8[7] = 8;
  sub_24B2D5F14();
  v8[6] = 9;
  sub_24B2D5F14();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24AFF4DA4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7C38);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AFF81B0();
  sub_24B2D6144();
  LOBYTE(v15) = 0;
  sub_24B2D5EF4();
  if (!v2)
  {
    LOWORD(v15) = *(v3 + 16);
    v21 = 1;
    sub_24AFF83D4();
    sub_24B2D5F24();
    v9 = type metadata accessor for MessagePayload.ContentV0(0);
    v21 = 2;
    sub_24B2D24A4();
    sub_24AFF7AA0(&qword_27EFC7C48, MEMORY[0x277CC9578]);
    sub_24B2D5EE4();
    v10 = (v3 + *(v9 + 28));
    v11 = v10[3];
    v17 = v10[2];
    v18 = v11;
    v19 = v10[4];
    v20 = *(v10 + 80);
    v12 = v10[1];
    v15 = *v10;
    v16 = v12;
    v14[15] = 3;
    sub_24AFF8428();
    sub_24B2D5EE4();
    LOBYTE(v15) = 4;
    sub_24B2D5ED4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24AFF502C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7C10);
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x28223BE20](v6);
  v7 = type metadata accessor for MessagePayload.ContentV0(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AFF81B0();
  v10 = v24;
  sub_24B2D6134();
  if (v10)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v24 = v5;
  v11 = a1;
  v12 = v22;
  v13 = v23;
  LOBYTE(v25) = 0;
  *v9 = sub_24B2D5E74();
  *(v9 + 1) = v14;
  v20 = v14;
  v32 = 1;
  sub_24AFF8204();
  sub_24B2D5EA4();
  *(v9 + 8) = v25;
  sub_24B2D24A4();
  LOBYTE(v25) = 2;
  sub_24AFF7AA0(&qword_27EFC7C28, MEMORY[0x277CC9578]);
  v15 = v24;
  sub_24B2D5E64();
  sub_24AFF26A8(v15, &v9[v7[6]]);
  v32 = 3;
  sub_24AFF82B8();
  sub_24B2D5E64();
  v16 = &v9[v7[7]];
  v17 = v28;
  *(v16 + 2) = v27;
  *(v16 + 3) = v17;
  *(v16 + 4) = v29;
  v16[80] = v30;
  v18 = v26;
  *v16 = v25;
  *(v16 + 1) = v18;
  v31 = 4;
  LOBYTE(v15) = sub_24B2D5E54();
  (*(v12 + 8))(0, v13);
  v9[v7[8]] = v15;
  sub_24AFF830C(v9, v21, type metadata accessor for MessagePayload.ContentV0);
  __swift_destroy_boxed_opaque_existential_0(v11);
  return sub_24AFF8374(v9, type metadata accessor for MessagePayload.ContentV0);
}

uint64_t sub_24AFF545C(uint64_t a1)
{
  v2 = sub_24AFFA45C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AFF5498(uint64_t a1)
{
  v2 = sub_24AFFA45C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24AFF54D4(uint64_t a1)
{
  v2 = sub_24AFFA408();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AFF5510(uint64_t a1)
{
  v2 = sub_24AFFA408();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24AFF554C(uint64_t a1)
{
  v2 = sub_24AFFA4B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AFF5588(uint64_t a1)
{
  v2 = sub_24AFFA4B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24AFF55C4(uint64_t a1)
{
  v2 = sub_24AFFA3B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AFF5600(uint64_t a1)
{
  v2 = sub_24AFFA3B4();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_24AFF563C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24AFF85E0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_24AFF5684()
{
  if (*v0)
  {
    return 0x74736575716572;
  }

  else
  {
    return 0x6572616873;
  }
}

uint64_t sub_24AFF56BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6572616873 && a2 == 0xE500000000000000;
  if (v6 || (sub_24B2D6004() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74736575716572 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B2D6004();

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

uint64_t sub_24AFF5794(uint64_t a1)
{
  v2 = sub_24AFF97F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AFF57D0(uint64_t a1)
{
  v2 = sub_24AFF97F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24AFF580C(uint64_t a1)
{
  v2 = sub_24AFF984C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AFF5848(uint64_t a1)
{
  v2 = sub_24AFF984C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24AFF5884()
{
  if (*v0)
  {
    return 0x65526D6F72467369;
  }

  else
  {
    return 0x6E6F697461727564;
  }
}

uint64_t sub_24AFF58CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
  if (v6 || (sub_24B2D6004() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65526D6F72467369 && a2 == 0xED00007473657571)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B2D6004();

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

uint64_t sub_24AFF59B0(uint64_t a1)
{
  v2 = sub_24AFF98A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AFF59EC(uint64_t a1)
{
  v2 = sub_24AFF98A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24AFF5A28@<X0>(void *a1@<X0>, _WORD *a2@<X8>)
{
  result = sub_24AFF8C20(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_24AFF5A78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24AFF917C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24AFF5AAC(uint64_t a1)
{
  v2 = sub_24AFF97A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AFF5AE8(uint64_t a1)
{
  v2 = sub_24AFF97A4();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_24AFF5B24@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_24AFF94BC(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_24AFF5B88()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6D617473656D6974;
  v4 = 0x4C6C616974696E69;
  if (v1 != 3)
  {
    v4 = 0x65526D6F72467369;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1684957547;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24AFF5C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24AFFA1A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24AFF5C5C(uint64_t a1)
{
  v2 = sub_24AFF81B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AFF5C98(uint64_t a1)
{
  v2 = sub_24AFF81B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MessagePayload.id.getter()
{
  v1 = *v0;

  return v1;
}

void MessagePayload.kind.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  if ((v3 & 0xFF00) == 0x200)
  {
    v4 = 0;
    LOWORD(v5) = 2;
  }

  else
  {
    v4 = *(v1 + 16);
    v5 = (v3 >> 8) & 1 | ((*(v1 + *(type metadata accessor for MessagePayload.ContentV0(0) + 32)) & 1) << 8);
  }

  *a1 = v4;
  *(a1 + 8) = v5;
}

uint64_t MessagePayload.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MessagePayload.ContentV0(0) + 24);

  return sub_24AFF249C(v3, a1);
}

id MessagePayload.initialLocation.getter()
{
  v1 = sub_24B2D24A4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MessagePayload.ContentV0(0);
  result = 0;
  v7 = v0 + *(v5 + 28);
  if ((*(v7 + 80) & 1) == 0)
  {
    v8 = *(v7 + 64);
    v9 = *(v7 + 48);
    v20 = *(v7 + 56);
    v11 = *(v7 + 32);
    v10 = *(v7 + 40);
    v13 = *(v7 + 16);
    v12 = *(v7 + 24);
    v15 = *v7;
    v14 = *(v7 + 8);
    sub_24B2D23F4();
    v16 = objc_allocWithZone(MEMORY[0x277CE41F8]);
    v17 = sub_24B2D23B4();
    v18 = [v16 initWithCoordinate:v17 altitude:v15 horizontalAccuracy:v14 verticalAccuracy:v13 course:v12 courseAccuracy:v11 speed:v10 speedAccuracy:v9 timestamp:{v20, v8}];

    (*(v2 + 8))(v4, v1);
    return v18;
  }

  return result;
}

uint64_t MessagePayload.init(id:kind:timestamp:initialLocation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v42 = a4;
  v11 = sub_24B2D24A4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a3 + 4) == 2)
  {
    LOBYTE(v15) = 0;
    v16 = 512;
    if (a5)
    {
LABEL_3:
      [a5 coordinate];
      v46 = v17;
      [a5 coordinate];
      v41 = v18;
      [a5 altitude];
      v45 = v19;
      [a5 horizontalAccuracy];
      v40 = v20;
      [a5 verticalAccuracy];
      v44 = v21;
      [a5 course];
      v39 = v22;
      [a5 courseAccuracy];
      v43 = v23;
      [a5 speed];
      v38 = v24;
      [a5 speedAccuracy];
      v26 = v25;
      v27 = [a5 timestamp];
      sub_24B2D2484();

      sub_24B2D2404();
      v29 = v28;

      (*(v12 + 8))(v14, v11);
      v30 = 0;
      *&v31 = v46;
      *(&v31 + 1) = v41;
      v46 = v31;
      *&v31 = v45;
      *(&v31 + 1) = v40;
      v45 = v31;
      *&v31 = v44;
      *(&v31 + 1) = v39;
      v44 = v31;
      *&v32 = v43;
      *(&v32 + 1) = v38;
LABEL_7:
      v43 = v32;
      *a6 = a1;
      *(a6 + 8) = a2;
      *(a6 + 16) = v16;
      v33 = type metadata accessor for MessagePayload.ContentV0(0);
      result = sub_24AFF26A8(v42, a6 + v33[6]);
      v35 = a6 + v33[7];
      v36 = v45;
      *v35 = v46;
      *(v35 + 16) = v36;
      v37 = v43;
      *(v35 + 32) = v44;
      *(v35 + 48) = v37;
      *(v35 + 64) = v26;
      *(v35 + 72) = v29;
      *(v35 + 80) = v30;
      *(a6 + v33[8]) = v15;
      return result;
    }

LABEL_6:
    v30 = 1;
    v32 = 0uLL;
    v45 = 0u;
    v46 = 0u;
    v26 = 0;
    v29 = 0;
    v44 = 0u;
    goto LABEL_7;
  }

  if (*a3 < 4)
  {
    v15 = HIBYTE(*(a3 + 4)) & 1;
    v16 = ((a3[1] & 1) << 8) | *a3;
    if (a5)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  v47 = *a3;
  result = sub_24B2D6024();
  __break(1u);
  return result;
}

uint64_t MessagePayload.init(from:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v130 = a2;
  v136[1] = *MEMORY[0x277D85DE8];
  v3 = sub_24B2D22D4();
  v131 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v127 = &v118 - v7;
  v123 = type metadata accessor for MessagePayload.ContentV0(0);
  MEMORY[0x28223BE20](v123);
  v124 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_24B2D2074();
  v9 = *(v135 - 8);
  v10 = MEMORY[0x28223BE20](v135);
  v129 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v125 = &v118 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v118 - v15;
  MEMORY[0x28223BE20](v14);
  v126 = &v118 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7BA8);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v118 - v19;
  v21 = sub_24B2D2114();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D20A4();
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_24AFF8258(v20, &qword_27EFC7BA8);
LABEL_16:
    v9 = v131;
    if (qword_27EFC75E8 != -1)
    {
LABEL_55:
      swift_once();
    }

    v40 = sub_24B2D3184();
    __swift_project_value_buffer(v40, qword_27EFE4418);
    (*(v9 + 16))(v6, a1, v3);
    v41 = sub_24B2D3164();
    v42 = a1;
    v43 = sub_24B2D5914();
    if (os_log_type_enabled(v41, v43))
    {
      v44 = swift_slowAlloc();
      v45 = v3;
      v46 = swift_slowAlloc();
      v136[0] = v46;
      *v44 = 136315138;
      sub_24AFF7AA0(&qword_27EFC7BB0, MEMORY[0x277CC9260]);
      v128 = v42;
      v47 = sub_24B2D5FA4();
      v49 = v48;
      v50 = *(v9 + 8);
      v50(v6, v45);
      v51 = sub_24AFF321C(v47, v49, v136);

      *(v44 + 4) = v51;
      _os_log_impl(&dword_24AFD2000, v41, v43, "MessagePayload: Expected our components to have queryItems - %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x24C23D530](v46, -1, -1);
      MEMORY[0x24C23D530](v44, -1, -1);

      v50(v128, v45);
    }

    else
    {

      v52 = *(v9 + 8);
      v52(v42, v3);
      v52(v6, v3);
    }

    goto LABEL_28;
  }

  (*(v22 + 32))(v24, v20, v21);
  v25 = sub_24B2D2084();
  if (!v25)
  {
    (*(v22 + 8))(v24, v21);
    goto LABEL_16;
  }

  v26 = v25;
  v119 = v24;
  if (qword_27EFC75E8 != -1)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v128 = a1;
    v27 = sub_24B2D3184();
    v28 = __swift_project_value_buffer(v27, qword_27EFE4418);

    v29 = sub_24B2D3164();
    v30 = sub_24B2D5904();

    v31 = os_log_type_enabled(v29, v30);
    v121 = v3;
    v122 = v22;
    v120 = v21;
    v118 = v28;
    if (v31)
    {
      v3 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v136[0] = v32;
      *v3 = 136315138;
      v33 = MEMORY[0x24C23BD20](v26, v135);
      v35 = sub_24AFF321C(v33, v34, v136);

      *(v3 + 4) = v35;
      _os_log_impl(&dword_24AFD2000, v29, v30, "MessagePayload: queryItems - %s", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x24C23D530](v32, -1, -1);
      MEMORY[0x24C23D530](v3, -1, -1);
    }

    v36 = v135;
    v132 = *(v26 + 16);
    if (!v132)
    {
      break;
    }

    a1 = 0;
    v6 = 0x800000024B2D78F0;
    v133 = (v9 + 8);
    v134 = v9 + 16;
    while (1)
    {
      if (a1 >= *(v26 + 16))
      {
        __break(1u);
        goto LABEL_55;
      }

      v37 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v3 = *(v9 + 72);
      v22 = *(v9 + 16);
      (v22)(v16, v26 + v37 + v3 * a1, v36);
      if (sub_24B2D2054() == 0xD00000000000001ELL && 0x800000024B2D78F0 == v38)
      {
        break;
      }

      v39 = sub_24B2D6004();

      if (v39)
      {
        goto LABEL_21;
      }

      ++a1;
      v36 = v135;
      (*v133)(v16, v135);
      if (v132 == a1)
      {
        goto LABEL_24;
      }
    }

LABEL_21:
    v54 = *(v9 + 32);
    v9 += 32;
    v53 = v54;
    v55 = v126;
    (v54)(v126, v16, v135);
    sub_24B2D2064();
    if (!v56 || (v57 = sub_24B2D5E14(), , v57))
    {
      (*v133)(v55, v135);
      break;
    }

    v127 = v53;
    a1 = 0;
    v16 = (v26 + v37);
    v21 = v122;
    v76 = v135;
    while (a1 < *(v26 + 16))
    {
      (v22)(v129, v16, v76);
      if (sub_24B2D2054() == 0xD000000000000021 && 0x800000024B2D7910 == v77)
      {

LABEL_38:

        v80 = v135;
        v81 = v125;
        (v127)(v125, v129, v135);
        sub_24B2D2064();
        v82 = v128;
        if (v83)
        {
          v84 = objc_allocWithZone(MEMORY[0x277CBEA90]);
          v85 = sub_24B2D5374();

          v86 = [v84 initWithBase64EncodedString:v85 options:{0, v118}];

          v87 = v131;
          if (v86)
          {
            v136[0] = 0;
            v88 = [v86 decompressedDataUsingAlgorithm:3 error:v136];
            v89 = v136[0];
            if (v88)
            {
              v90 = v21;
              v91 = sub_24B2D2304();
              v93 = v92;

              sub_24B2D1FA4();
              swift_allocObject();
              sub_24B2D1F94();
              sub_24AFF7AA0(&qword_27EFC7BC0, type metadata accessor for MessagePayload.ContentV0);
              v94 = v124;
              sub_24B2D1F84();
              sub_24AFF7AE8(v91, v93);

              (*(v131 + 8))(v82, v121);
              v116 = *v133;
              v117 = v135;
              (*v133)(v81, v135);
              v116(v126, v117);
              (*(v90 + 8))(v119, v120);
              v73 = v130;
              sub_24AFF7B3C(v94, v130);
              v72 = 0;
              goto LABEL_29;
            }

            v104 = v89;
            v105 = sub_24B2D21E4();

            swift_willThrow();
            v106 = v105;
            v107 = sub_24B2D3164();
            v108 = sub_24B2D5914();

            if (os_log_type_enabled(v107, v108))
            {
              v109 = swift_slowAlloc();
              v110 = swift_slowAlloc();
              *v109 = 138412290;
              v111 = v105;
              v112 = _swift_stdlib_bridgeErrorToNSError();
              *(v109 + 4) = v112;
              *v110 = v112;
              _os_log_impl(&dword_24AFD2000, v107, v108, "MessagePayload: Can't load from URL: %@", v109, 0xCu);
              sub_24AFF8258(v110, &qword_27EFC7BB8);
              v113 = v110;
              v82 = v128;
              MEMORY[0x24C23D530](v113, -1, -1);
              MEMORY[0x24C23D530](v109, -1, -1);
            }
          }

          else
          {
            v101 = sub_24B2D3164();
            v102 = sub_24B2D5914();
            if (os_log_type_enabled(v101, v102))
            {
              v103 = swift_slowAlloc();
              *v103 = 0;
              _os_log_impl(&dword_24AFD2000, v101, v102, "MessagePayload: Couldn't read zippedData", v103, 2u);
              MEMORY[0x24C23D530](v103, -1, -1);
            }
          }

          (*(v87 + 8))(v82, v121);
          v114 = *v133;
          v115 = v135;
          (*v133)(v81, v135);
          v114(v126, v115);
        }

        else
        {
          v79 = *v133;
          (*v133)(v81, v80);
LABEL_43:
          v95 = v131;
          v96 = sub_24B2D3164();
          v97 = sub_24B2D5914();
          v98 = os_log_type_enabled(v96, v97);
          v99 = v121;
          if (v98)
          {
            v100 = swift_slowAlloc();
            *v100 = 0;
            _os_log_impl(&dword_24AFD2000, v96, v97, "MessagePayload: Couldn't read zippedString", v100, 2u);
            MEMORY[0x24C23D530](v100, -1, -1);
          }

          (*(v95 + 8))(v128, v99);
          v79(v126, v135);
        }

        (*(v21 + 8))(v119, v120);
        goto LABEL_28;
      }

      v78 = sub_24B2D6004();

      if (v78)
      {
        goto LABEL_38;
      }

      ++a1;
      v79 = *v133;
      v76 = v135;
      (*v133)(v129, v135);
      v16 += v3;
      if (v132 == a1)
      {

        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_57:
    swift_once();
  }

LABEL_24:

  v58 = v131;
  v60 = v127;
  v59 = v128;
  v61 = v121;
  (*(v131 + 16))(v127, v128, v121);
  v62 = sub_24B2D3164();
  v63 = sub_24B2D5914();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v136[0] = v65;
    *v64 = 136315138;
    sub_24AFF7AA0(&qword_27EFC7BB0, MEMORY[0x277CC9260]);
    v66 = sub_24B2D5FA4();
    v68 = v67;
    v69 = *(v58 + 8);
    v69(v60, v61);
    v70 = sub_24AFF321C(v66, v68, v136);

    *(v64 + 4) = v70;
    _os_log_impl(&dword_24AFD2000, v62, v63, "MessagePayload: Version not found - %s", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v65);
    MEMORY[0x24C23D530](v65, -1, -1);
    MEMORY[0x24C23D530](v64, -1, -1);

    v69(v128, v61);
  }

  else
  {

    v71 = *(v58 + 8);
    v71(v59, v61);
    v71(v60, v61);
  }

  (*(v122 + 8))(v119, v120);
LABEL_28:
  v72 = 1;
  v73 = v130;
LABEL_29:
  v74 = type metadata accessor for MessagePayload(0);
  return (*(*(v74 - 8) + 56))(v73, v72, 1, v74);
}

uint64_t MessagePayload.url.getter@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v64[1] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for MessagePayload(0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v53 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC9330);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v53 - v9;
  v11 = sub_24B2D2114();
  v62 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D1FD4();
  swift_allocObject();
  sub_24B2D1FC4();
  type metadata accessor for MessagePayload.ContentV0(0);
  sub_24AFF7AA0(&qword_27EFC7BC8, type metadata accessor for MessagePayload.ContentV0);
  v14 = sub_24B2D1FB4();
  v60 = v2;
  v61 = v10;
  v25 = v13;
  v57 = v1;
  v58 = v7;
  v59 = v5;
  v26 = v14;
  v28 = v27;

  v29 = sub_24B2D22E4();
  v64[0] = 0;
  v30 = [v29 compressedDataUsingAlgorithm:3 error:v64];

  if (v30)
  {
    v54 = v26;
    v55 = v28;
    v56 = v11;
    v31 = v64[0];
    v32 = [v30 base64EncodedStringWithOptions_];
    sub_24B2D5394();

    v33 = v25;
    sub_24B2D2104();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7BD0);
    sub_24B2D2074();
    *(swift_allocObject() + 16) = xmmword_24B2DEAD0;
    sub_24B2D2044();
    sub_24B2D2044();

    sub_24B2D2094();
    v34 = v61;
    sub_24B2D20B4();
    v35 = sub_24B2D22D4();
    v36 = *(v35 - 8);
    if ((*(v36 + 48))(v34, 1, v35) == 1)
    {
      sub_24AFF8258(v34, &unk_27EFC9330);
      if (qword_27EFC75E8 != -1)
      {
        swift_once();
      }

      v37 = sub_24B2D3184();
      __swift_project_value_buffer(v37, qword_27EFE4418);
      v38 = v58;
      sub_24AFF830C(v57, v58, type metadata accessor for MessagePayload);
      v39 = sub_24B2D3164();
      v40 = sub_24B2D5914();
      v41 = os_log_type_enabled(v39, v40);
      v42 = v59;
      if (v41)
      {
        v43 = swift_slowAlloc();
        v61 = v30;
        v44 = v43;
        v57 = swift_slowAlloc();
        v64[0] = v57;
        *v44 = 136315138;
        sub_24AFF830C(v38, v42, type metadata accessor for MessagePayload);
        v45 = sub_24B2D53C4();
        v47 = v46;
        sub_24AFF8374(v38, type metadata accessor for MessagePayload);
        v48 = sub_24AFF321C(v45, v47, v64);

        *(v44 + 4) = v48;
        _os_log_impl(&dword_24AFD2000, v39, v40, "MessagePayload: Can't create URL: %s", v44, 0xCu);
        v49 = v57;
        __swift_destroy_boxed_opaque_existential_0(v57);
        MEMORY[0x24C23D530](v49, -1, -1);
        MEMORY[0x24C23D530](v44, -1, -1);
        sub_24AFF7AE8(v54, v55);
      }

      else
      {
        sub_24AFF7AE8(v54, v55);

        sub_24AFF8374(v38, type metadata accessor for MessagePayload);
      }

      (*(v62 + 8))(v33, v56);
      return (*(v36 + 56))(v63, 1, 1, v35);
    }

    else
    {
      (*(v62 + 8))(v33, v56);
      sub_24AFF7AE8(v54, v55);

      v52 = v63;
      (*(v36 + 32))(v63, v34, v35);
      return (*(v36 + 56))(v52, 0, 1, v35);
    }
  }

  else
  {
    v50 = v64[0];
    v51 = sub_24B2D21E4();

    swift_willThrow();
    sub_24AFF7AE8(v26, v28);
    if (qword_27EFC75E8 != -1)
    {
      swift_once();
    }

    v15 = sub_24B2D3184();
    __swift_project_value_buffer(v15, qword_27EFE4418);
    v16 = v51;
    v17 = sub_24B2D3164();
    v18 = sub_24B2D5914();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = v51;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_24AFD2000, v17, v18, "MessagePayload: Can't create URL: %@", v19, 0xCu);
      sub_24AFF8258(v20, &qword_27EFC7BB8);
      MEMORY[0x24C23D530](v20, -1, -1);
      MEMORY[0x24C23D530](v19, -1, -1);
    }

    else
    {
    }

    v23 = sub_24B2D22D4();
    return (*(*(v23 - 8) + 56))(v63, 1, 1, v23);
  }
}

uint64_t sub_24AFF7AA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24AFF7AE8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_24AFF7B3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagePayload.ContentV0(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AFF7BC8()
{
  result = type metadata accessor for MessagePayload.ContentV0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MessagePayload.Version(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MessagePayload.Version(_WORD *result, int a2, int a3)
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

void sub_24AFF7D4C()
{
  sub_24AFF7E20();
  if (v0 <= 0x3F)
  {
    sub_24AFF7E78(319, &qword_27EFC7BF8);
    if (v1 <= 0x3F)
    {
      sub_24AFF7E78(319, &qword_27EFC7C00);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24AFF7E20()
{
  if (!qword_27EFC7B78)
  {
    sub_24B2D24A4();
    v0 = sub_24B2D5A84();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFC7B78);
    }
  }
}

void sub_24AFF7E78(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_24B2D5A84();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_24AFF7EE0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24AFF7F00(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
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

  *(result + 80) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for MessagePayload.ContentV0.Kind(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 65282;
  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 16)) - 65282;
  }

  if (v4 == 2)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 16)) - 65282;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 16)) - 65282;
    }
  }

LABEL_20:
  v7 = *(a1 + 1);
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MessagePayload.ContentV0.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 65282;
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 2) = v6;
      }

      else
      {
        *(result + 2) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *(result + 1) = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_24AFF80C4(uint64_t a1)
{
  v1 = *(a1 + 1);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24AFF80E0(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
  }

  else if (a2)
  {
    *(result + 1) = a2 + 1;
  }

  return result;
}

unint64_t sub_24AFF8118()
{
  result = qword_27EFC7C08;
  if (!qword_27EFC7C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7C08);
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

unint64_t sub_24AFF81B0()
{
  result = qword_27EFC7C18;
  if (!qword_27EFC7C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7C18);
  }

  return result;
}

unint64_t sub_24AFF8204()
{
  result = qword_27EFC7C20;
  if (!qword_27EFC7C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7C20);
  }

  return result;
}

uint64_t sub_24AFF8258(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24AFF82B8()
{
  result = qword_27EFC7C30;
  if (!qword_27EFC7C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7C30);
  }

  return result;
}

uint64_t sub_24AFF830C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24AFF8374(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24AFF83D4()
{
  result = qword_27EFC7C40;
  if (!qword_27EFC7C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7C40);
  }

  return result;
}

unint64_t sub_24AFF8428()
{
  result = qword_27EFC7C50;
  if (!qword_27EFC7C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7C50);
  }

  return result;
}

uint64_t sub_24AFF847C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72756F48656E6FLL && a2 == 0xE700000000000000;
  if (v4 || (sub_24B2D6004() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x796144664F646E65 && a2 == 0xE800000000000000 || (sub_24B2D6004() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696E696665646E69 && a2 == 0xEC000000796C6574 || (sub_24B2D6004() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x636974617473 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24B2D6004();

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

void *sub_24AFF85E0(void *a1)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7D48);
  v34 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v42 = &v31 - v2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7D50);
  v36 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v41 = &v31 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7D58);
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7D60);
  v35 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7D68);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - v12;
  v14 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_24AFFA360();
  v15 = v43;
  sub_24B2D6134();
  if (v15)
  {
    goto LABEL_11;
  }

  v16 = v9;
  v32 = v7;
  v33 = 0;
  v17 = v41;
  v18 = v42;
  v43 = v11;
  v19 = v13;
  v20 = sub_24B2D5EB4();
  v21 = (2 * *(v20 + 16)) | 1;
  v45 = v20;
  v46 = v20 + 32;
  v47 = 0;
  v48 = v21;
  v22 = sub_24B0E866C();
  if (v22 != 4 && v47 == v48 >> 1)
  {
    v11 = v22;
    if (v22 <= 1u)
    {
      if (v22)
      {
        v49 = 1;
        sub_24AFFA45C();
        v29 = v33;
        sub_24B2D5E34();
        if (!v29)
        {
          (*(v37 + 8))(v6, v38);
          goto LABEL_18;
        }
      }

      else
      {
        v49 = 0;
        sub_24AFFA4B0();
        v23 = v33;
        sub_24B2D5E34();
        if (!v23)
        {
          (*(v35 + 8))(v16, v32);
LABEL_18:
          (v43[1])(v13, v10);
LABEL_23:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_0(v44);
          return v11;
        }
      }

      goto LABEL_9;
    }

    v27 = v43;
    if (v22 == 2)
    {
      v49 = 2;
      sub_24AFFA408();
      v28 = v33;
      sub_24B2D5E34();
      if (!v28)
      {
        (*(v36 + 8))(v17, v40);
LABEL_22:
        (v27[1])(v19, v10);
        goto LABEL_23;
      }
    }

    else
    {
      v49 = 3;
      sub_24AFFA3B4();
      v30 = v33;
      sub_24B2D5E34();
      if (!v30)
      {
        (*(v34 + 8))(v18, v39);
        goto LABEL_22;
      }
    }

    (v27[1])(v19, v10);
    goto LABEL_10;
  }

  v24 = sub_24B2D5CA4();
  swift_allocError();
  v11 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7C90);
  *v11 = &type metadata for MessagePayload.ContentV0.Kind.ShareDuration;
  sub_24B2D5E44();
  sub_24B2D5C94();
  (*(*(v24 - 8) + 104))(v11, *MEMORY[0x277D84160], v24);
  swift_willThrow();
LABEL_9:
  (v43[1])(v13, v10);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  __swift_destroy_boxed_opaque_existential_0(v44);
  return v11;
}

uint64_t sub_24AFF8C20(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7C70);
  v3 = *(v2 - 8);
  v32 = v2;
  v33 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7C78);
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7C80);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - v11;
  v13 = a1[3];
  v36 = a1;
  v14 = __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_24AFF97F8();
  v15 = v35;
  sub_24B2D6134();
  if (!v15)
  {
    v35 = v10;
    v16 = sub_24B2D5EB4();
    v17 = (2 * *(v16 + 16)) | 1;
    v37 = v16;
    v38 = v16 + 32;
    v39 = 0;
    v40 = v17;
    v18 = sub_24B0E86A0();
    v19 = v9;
    if (v18 == 2 || v39 != v40 >> 1)
    {
      v21 = sub_24B2D5CA4();
      swift_allocError();
      v23 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7C90);
      *v23 = &type metadata for MessagePayload.ContentV0.Kind;
      v14 = v12;
      sub_24B2D5E44();
      sub_24B2D5C94();
      (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D84160], v21);
      swift_willThrow();
      (*(v35 + 8))(v12, v9);
      swift_unknownObjectRelease();
    }

    else if (v18)
    {
      v42 = 1;
      sub_24AFF984C();
      sub_24B2D5E34();
      v20 = v35;
      (*(v33 + 8))(v5, v32);
      (*(v20 + 8))(v12, v9);
      swift_unknownObjectRelease();
      v14 = 512;
    }

    else
    {
      v42 = 0;
      sub_24AFF98A0();
      v25 = v12;
      v26 = v8;
      sub_24B2D5E34();
      v27 = v35;
      v28 = v25;
      v41 = 0;
      sub_24AFF98F4();
      sub_24B2D5EA4();
      v29 = v42;
      v41 = 1;
      LOBYTE(v25) = sub_24B2D5E84();
      (*(v34 + 8))(v26, v6);
      (*(v27 + 8))(v28, v19);
      swift_unknownObjectRelease();
      if (v25)
      {
        v30 = 256;
      }

      else
      {
        v30 = 0;
      }

      v14 = v30 | v29;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v36);
  return v14;
}

uint64_t sub_24AFF917C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v3 || (sub_24B2D6004() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (sub_24B2D6004() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6564757469746C61 && a2 == 0xE800000000000000 || (sub_24B2D6004() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024B2D7970 == a2 || (sub_24B2D6004() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024B2D7990 == a2 || (sub_24B2D6004() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x657372756F63 && a2 == 0xE600000000000000 || (sub_24B2D6004() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6341657372756F63 && a2 == 0xEE00796361727563 || (sub_24B2D6004() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6465657073 && a2 == 0xE500000000000000 || (sub_24B2D6004() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6363416465657073 && a2 == 0xED00007963617275 || (sub_24B2D6004() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 9;
  }

  else
  {
    v6 = sub_24B2D6004();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_24AFF94BC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7C58);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AFF97A4();
  sub_24B2D6134();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v42 = 0;
  sub_24B2D5E94();
  v10 = v9;
  v41 = 1;
  sub_24B2D5E94();
  v12 = v11;
  v40 = 2;
  sub_24B2D5E94();
  v14 = v13;
  v39 = 3;
  sub_24B2D5E94();
  v16 = v15;
  v38 = 4;
  sub_24B2D5E94();
  v18 = v17;
  v37 = 5;
  sub_24B2D5E94();
  v20 = v19;
  v36 = 6;
  sub_24B2D5E94();
  v22 = v21;
  v35 = 7;
  sub_24B2D5E94();
  v32 = v23;
  v34 = 8;
  sub_24B2D5E94();
  v25 = v24;
  v33 = 9;
  sub_24B2D5E94();
  v31 = v26;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v10;
  a2[1] = v12;
  a2[2] = v14;
  a2[3] = v16;
  a2[4] = v18;
  a2[5] = v20;
  v28 = v31;
  v29 = v32;
  a2[6] = v22;
  a2[7] = v29;
  a2[8] = v25;
  a2[9] = v28;
  return result;
}

unint64_t sub_24AFF97A4()
{
  result = qword_27EFC7C60;
  if (!qword_27EFC7C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7C60);
  }

  return result;
}

unint64_t sub_24AFF97F8()
{
  result = qword_27EFC7C88;
  if (!qword_27EFC7C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7C88);
  }

  return result;
}

unint64_t sub_24AFF984C()
{
  result = qword_27EFC7C98;
  if (!qword_27EFC7C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7C98);
  }

  return result;
}

unint64_t sub_24AFF98A0()
{
  result = qword_27EFC7CA0;
  if (!qword_27EFC7CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7CA0);
  }

  return result;
}

unint64_t sub_24AFF98F4()
{
  result = qword_27EFC7CA8;
  if (!qword_27EFC7CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7CA8);
  }

  return result;
}

unint64_t sub_24AFF9948()
{
  result = qword_27EFC7CC8;
  if (!qword_27EFC7CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7CC8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MessagePayload.ContentV0.Location.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MessagePayload.ContentV0.Location.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MessagePayload.ContentV0.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MessagePayload.ContentV0.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24AFF9C80()
{
  result = qword_27EFC7CD0;
  if (!qword_27EFC7CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7CD0);
  }

  return result;
}

unint64_t sub_24AFF9CD8()
{
  result = qword_27EFC7CD8;
  if (!qword_27EFC7CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7CD8);
  }

  return result;
}

unint64_t sub_24AFF9D30()
{
  result = qword_27EFC7CE0;
  if (!qword_27EFC7CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7CE0);
  }

  return result;
}

unint64_t sub_24AFF9D88()
{
  result = qword_27EFC7CE8;
  if (!qword_27EFC7CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7CE8);
  }

  return result;
}

unint64_t sub_24AFF9DE0()
{
  result = qword_27EFC7CF0;
  if (!qword_27EFC7CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7CF0);
  }

  return result;
}

unint64_t sub_24AFF9E38()
{
  result = qword_27EFC7CF8;
  if (!qword_27EFC7CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7CF8);
  }

  return result;
}

unint64_t sub_24AFF9E90()
{
  result = qword_27EFC7D00;
  if (!qword_27EFC7D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7D00);
  }

  return result;
}

unint64_t sub_24AFF9EE8()
{
  result = qword_27EFC7D08;
  if (!qword_27EFC7D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7D08);
  }

  return result;
}

unint64_t sub_24AFF9F40()
{
  result = qword_27EFC7D10;
  if (!qword_27EFC7D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7D10);
  }

  return result;
}

unint64_t sub_24AFF9F98()
{
  result = qword_27EFC7D18;
  if (!qword_27EFC7D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7D18);
  }

  return result;
}

unint64_t sub_24AFF9FF0()
{
  result = qword_27EFC7D20;
  if (!qword_27EFC7D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7D20);
  }

  return result;
}

unint64_t sub_24AFFA048()
{
  result = qword_27EFC7D28;
  if (!qword_27EFC7D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7D28);
  }

  return result;
}

unint64_t sub_24AFFA0A0()
{
  result = qword_27EFC7D30;
  if (!qword_27EFC7D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7D30);
  }

  return result;
}

unint64_t sub_24AFFA0F8()
{
  result = qword_27EFC7D38;
  if (!qword_27EFC7D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7D38);
  }

  return result;
}

unint64_t sub_24AFFA150()
{
  result = qword_27EFC7D40;
  if (!qword_27EFC7D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7D40);
  }

  return result;
}

uint64_t sub_24AFFA1A4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24B2D6004() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_24B2D6004() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_24B2D6004() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4C6C616974696E69 && a2 == 0xEF6E6F697461636FLL || (sub_24B2D6004() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65526D6F72467369 && a2 == 0xEC000000646E6573)
  {

    return 4;
  }

  else
  {
    v6 = sub_24B2D6004();

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

unint64_t sub_24AFFA360()
{
  result = qword_27EFC7D70;
  if (!qword_27EFC7D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7D70);
  }

  return result;
}

unint64_t sub_24AFFA3B4()
{
  result = qword_27EFC7D78;
  if (!qword_27EFC7D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7D78);
  }

  return result;
}

unint64_t sub_24AFFA408()
{
  result = qword_27EFC7D80;
  if (!qword_27EFC7D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7D80);
  }

  return result;
}

unint64_t sub_24AFFA45C()
{
  result = qword_27EFC7D88;
  if (!qword_27EFC7D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7D88);
  }

  return result;
}

unint64_t sub_24AFFA4B0()
{
  result = qword_27EFC7D90;
  if (!qword_27EFC7D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7D90);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RequestReceivedMessageView.RequestState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RequestReceivedMessageView.RequestState(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24AFFA698()
{
  result = qword_27EFC7DC0;
  if (!qword_27EFC7DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7DC0);
  }

  return result;
}

unint64_t sub_24AFFA6F0()
{
  result = qword_27EFC7DC8;
  if (!qword_27EFC7DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7DC8);
  }

  return result;
}

unint64_t sub_24AFFA748()
{
  result = qword_27EFC7DD0;
  if (!qword_27EFC7DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7DD0);
  }

  return result;
}

unint64_t sub_24AFFA7A0()
{
  result = qword_27EFC7DD8;
  if (!qword_27EFC7DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7DD8);
  }

  return result;
}

unint64_t sub_24AFFA7F8()
{
  result = qword_27EFC7DE0;
  if (!qword_27EFC7DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7DE0);
  }

  return result;
}

unint64_t sub_24AFFA850()
{
  result = qword_27EFC7DE8;
  if (!qword_27EFC7DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7DE8);
  }

  return result;
}

unint64_t sub_24AFFA8A8()
{
  result = qword_27EFC7DF0;
  if (!qword_27EFC7DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7DF0);
  }

  return result;
}

unint64_t sub_24AFFA900()
{
  result = qword_27EFC7DF8;
  if (!qword_27EFC7DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7DF8);
  }

  return result;
}

unint64_t sub_24AFFA958()
{
  result = qword_27EFC7E00;
  if (!qword_27EFC7E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7E00);
  }

  return result;
}

unint64_t sub_24AFFA9B0()
{
  result = qword_27EFC7E08;
  if (!qword_27EFC7E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7E08);
  }

  return result;
}

unint64_t sub_24AFFAA08()
{
  result = qword_27EFC7E10;
  if (!qword_27EFC7E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7E10);
  }

  return result;
}

MSMessage __swiftcall MessagePayload.createMSMessage()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC9330);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  v5 = [objc_allocWithZone(MEMORY[0x277CD68F8]) init];
  v6 = [objc_allocWithZone(MEMORY[0x277CD6910]) init];
  v7 = *(v0 + 16);
  if ((v7 & 0xFF00) == 0x200)
  {
    v8 = 0;
    LOWORD(v9) = 2;
  }

  else
  {
    v8 = *(v0 + 16);
    v9 = (v7 >> 8) & 1 | ((*(v1 + *(type metadata accessor for MessagePayload.ContentV0(0) + 32)) & 1) << 8);
  }

  v20 = v8;
  v21 = v9;
  sub_24AFF2C7C();
  v10 = sub_24B2D5374();

  [v6 setCaption_];

  v11 = [objc_allocWithZone(MEMORY[0x277CD6900]) initWithAlternateLayout_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFCE7C0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_24B2DE430;
  if (qword_27EFC75E0 != -1)
  {
    swift_once();
  }

  v13 = unk_27EFE4410;
  *(v12 + 32) = qword_27EFE4408;
  *(v12 + 40) = v13;

  v14 = sub_24B2D5524();

  [v11 setRequiredCapabilities_];

  [v5 setLayout_];
  v15 = [v6 caption];
  [v5 setSummaryText_];

  MessagePayload.url.getter(v4);
  v16 = sub_24B2D22D4();
  v17 = *(v16 - 8);
  v18 = 0;
  if ((*(v17 + 48))(v4, 1, v16) != 1)
  {
    v18 = sub_24B2D2294();
    (*(v17 + 8))(v4, v16);
  }

  [v5 setURL_];

  [v5 setRequiresValidation_];
  return v5;
}

id sub_24AFFADAC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  MyUICoreE04findC20LocationShareMessage8durationAbC0G8DurationO_tFZ_0 = _sSo9MSMessageC12FindMyUICoreE04findC20LocationShareMessage8durationAbC0G8DurationO_tFZ_0(a3);

  return MyUICoreE04findC20LocationShareMessage8durationAbC0G8DurationO_tFZ_0;
}

Class sub_24AFFADDC()
{
  MyUICoreE04findC22LocationRequestMessageAByFZ_0 = _sSo9MSMessageC12FindMyUICoreE04findC22LocationRequestMessageAByFZ_0();

  return MyUICoreE04findC22LocationRequestMessageAByFZ_0;
}

uint64_t MessagePayload.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7E18);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = sub_24B2D22D4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v23 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  v17 = [a1 URL];
  if (!v17)
  {

    goto LABEL_5;
  }

  v18 = v17;
  sub_24B2D22A4();

  (*(v8 + 32))(v16, v14, v7);
  (*(v8 + 16))(v11, v16, v7);
  MessagePayload.init(from:)(v11, v6);

  (*(v8 + 8))(v16, v7);
  v19 = type metadata accessor for MessagePayload(0);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v6, 1, v19) == 1)
  {
    sub_24AFFB4CC(v6);
LABEL_5:
    v21 = type metadata accessor for MessagePayload(0);
    return (*(*(v21 - 8) + 56))(a2, 1, 1, v21);
  }

  sub_24AFFB534(v6, a2);
  return (*(v20 + 56))(a2, 0, 1, v19);
}

uint64_t _sSo9MSMessageC12FindMyUICoreE04findC20LocationShareMessage8durationAbC0G8DurationO_tFZ_0(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20[-v3];
  v5 = sub_24B2D2504();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for MessagePayload(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24B2D24F4();
  v12 = sub_24B2D24B4();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  v15 = sub_24B2D24A4();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  if (a1 >= 4)
  {
    v21 = a1;
    result = sub_24B2D6024();
    __break(1u);
  }

  else
  {
    v20[0] = 1;
    *v11 = v12;
    *(v11 + 1) = v14;
    *(v11 + 8) = a1;
    v16 = type metadata accessor for MessagePayload.ContentV0(0);
    sub_24AFF26A8(v4, &v11[v16[6]]);
    v17 = &v11[v16[7]];
    *(v17 + 3) = 0u;
    *(v17 + 4) = 0u;
    *(v17 + 1) = 0u;
    *(v17 + 2) = 0u;
    *v17 = 0u;
    v17[80] = v20[0];
    v11[v16[8]] = 0;
    isa = MessagePayload.createMSMessage()().super.isa;
    sub_24AFFB598(v11);
    return isa;
  }

  return result;
}

Class _sSo9MSMessageC12FindMyUICoreE04findC22LocationRequestMessageAByFZ_0()
{
  v0 = sub_24B2D2504();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for MessagePayload(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24B2D24F4();
  v7 = sub_24B2D24B4();
  v9 = v8;
  (*(v1 + 8))(v3, v0);
  v10 = type metadata accessor for MessagePayload.ContentV0(0);
  v11 = v10[6];
  v12 = sub_24B2D24A4();
  (*(*(v12 - 8) + 56))(&v6[v11], 1, 1, v12);
  v16[8] = 1;
  *v6 = v7;
  *(v6 + 1) = v9;
  *(v6 + 8) = 512;
  v13 = &v6[v10[7]];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 2) = 0u;
  *(v13 + 3) = 0u;
  *(v13 + 4) = 0u;
  v13[80] = 1;
  v6[v10[8]] = 0;
  isa = MessagePayload.createMSMessage()().super.isa;
  sub_24AFFB598(v6);
  return isa;
}

uint64_t sub_24AFFB4CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7E18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24AFFB534(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagePayload(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AFFB598(uint64_t a1)
{
  v2 = type metadata accessor for MessagePayload(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 MessagesAppView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7E20);
  sub_24B2D4CC4();
  result = v5;
  *a1 = sub_24AFFB67C;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = v5;
  return result;
}

__n128 sub_24AFFB684@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7E20);
  sub_24B2D4CC4();
  result = v5;
  *a1 = sub_24AFFDE48;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = v5;
  return result;
}

void sub_24AFFB73C(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_24AFFB788(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_24AFFB818;
}

void sub_24AFFB818(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t MessagesAppViewModel.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (qword_27EFC75F8 != -1)
  {
    swift_once();
  }

  type metadata accessor for CompositeAppViewModel();
  swift_allocObject();

  *(v0 + 16) = sub_24B059C44(v1, 0xD000000000000013, 0x800000024B2D79B0, 0, 0, 0, 0, 0, 0);
  return v0;
}

uint64_t MessagesAppViewModel.init()()
{
  swift_unknownObjectWeakInit();
  if (qword_27EFC75F8 != -1)
  {
    swift_once();
  }

  type metadata accessor for CompositeAppViewModel();
  swift_allocObject();

  *(v0 + 16) = sub_24B059C44(v1, 0xD000000000000013, 0x800000024B2D79B0, 0, 0, 0, 0, 0, 0);
  return v0;
}

uint64_t MessagesAppViewModel.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v5 = sub_24B2D3184();
  __swift_project_value_buffer(v5, qword_27EFE4418);

  v6 = sub_24B2D3164();
  v7 = sub_24B2D5904();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v1;
    v18 = v9;
    *v8 = 136315394;
    type metadata accessor for MessagesAppViewModel();

    v10 = sub_24B2D53C4();
    v12 = sub_24AFF321C(v10, v11, &v18);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_24AFF321C(0x74696E696564, 0xE600000000000000, &v18);
    _os_log_impl(&dword_24AFD2000, v6, v7, "MessagesAppViewModel: %s - %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v9, -1, -1);
    MEMORY[0x24C23D530](v8, -1, -1);
  }

  v13 = sub_24B2D56D4();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  v14 = *(v1 + 16);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v14;

  sub_24AFFBE08(0, 0, v4, &unk_24B2DF788, v15);

  sub_24AFFD464(v4);

  MEMORY[0x24C23D610](v1 + 24);
  return v1;
}

uint64_t sub_24AFFBD10()
{
  sub_24B2D5694();
  *(v0 + 24) = sub_24B2D5684();
  v2 = sub_24B2D5604();

  return MEMORY[0x2822009F8](sub_24AFFBDA4, v2, v1);
}

uint64_t sub_24AFFBDA4()
{

  sub_24B0555F0();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AFFBE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_24AFFDC5C(a3, v25 - v10);
  v12 = sub_24B2D56D4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24AFFD464(v11);
  }

  else
  {
    sub_24B2D56C4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24B2D5604();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24B2D53D4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_24AFFC0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_24AFFDC5C(a3, v25 - v10);
  v12 = sub_24B2D56D4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24AFFD464(v11);
  }

  else
  {
    sub_24B2D56C4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24B2D5604();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24B2D53D4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC7E30);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC7E30);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t MessagesAppViewModel.__deallocating_deinit()
{
  MessagesAppViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24AFFC390(uint64_t a1)
{
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v2 = sub_24B2D3184();
  __swift_project_value_buffer(v2, qword_27EFE4418);

  v3 = sub_24B2D3164();
  v4 = sub_24B2D5934();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315394;
    type metadata accessor for MessagesAppViewModel();

    v7 = sub_24B2D53C4();
    v9 = sub_24AFF321C(v7, v8, &v11);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_24AFF321C(0xD000000000000019, 0x800000024B2D79D0, &v11);
    _os_log_impl(&dword_24AFD2000, v3, v4, "MessagesAppViewModel: %s - %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v6, -1, -1);
    MEMORY[0x24C23D530](v5, -1, -1);
  }

  return sub_24B0558C4(a1);
}

void sub_24AFFC54C()
{
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v0 = sub_24B2D3184();
  __swift_project_value_buffer(v0, qword_27EFE4418);

  v1 = sub_24B2D3164();
  v2 = sub_24B2D5934();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136315394;
    type metadata accessor for MessagesAppViewModel();

    v5 = sub_24B2D53C4();
    v7 = sub_24AFF321C(v5, v6, &v8);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_24AFF321C(0xD000000000000014, 0x800000024B2D79F0, &v8);
    _os_log_impl(&dword_24AFD2000, v1, v2, "MessagesAppViewModel: %s - %s", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v4, -1, -1);
    MEMORY[0x24C23D530](v3, -1, -1);
  }

  sub_24B055FCC();
}

void sub_24AFFC700()
{
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v0 = sub_24B2D3184();
  __swift_project_value_buffer(v0, qword_27EFE4418);

  v1 = sub_24B2D3164();
  v2 = sub_24B2D5934();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136315394;
    type metadata accessor for MessagesAppViewModel();

    v5 = sub_24B2D53C4();
    v7 = sub_24AFF321C(v5, v6, &v8);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_24AFF321C(0xD000000000000015, 0x800000024B2D7A10, &v8);
    _os_log_impl(&dword_24AFD2000, v1, v2, "MessagesAppViewModel: %s - %s", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v4, -1, -1);
    MEMORY[0x24C23D530](v3, -1, -1);
  }

  sub_24B056290();
}

uint64_t sub_24AFFC8B4()
{
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v0 = sub_24B2D3184();
  __swift_project_value_buffer(v0, qword_27EFE4418);

  v1 = sub_24B2D3164();
  v2 = sub_24B2D5934();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315394;
    type metadata accessor for MessagesAppViewModel();

    v5 = sub_24B2D53C4();
    v7 = sub_24AFF321C(v5, v6, &v9);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_24AFF321C(0xD000000000000013, 0x800000024B2D7A30, &v9);
    _os_log_impl(&dword_24AFD2000, v1, v2, "MessagesAppViewModel: %s - %s", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v4, -1, -1);
    MEMORY[0x24C23D530](v3, -1, -1);
  }

  return sub_24B0555F0();
}

uint64_t sub_24AFFCB6C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = (*(v5 + 16) + *a3);
  v7 = *v6;
  v8 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  a4();

  return a5(v7, v8);
}

uint64_t sub_24AFFCBF4(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  sub_24B2D5694();
  v2[5] = sub_24B2D5684();
  v4 = sub_24B2D5604();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x2822009F8](sub_24AFFCC8C, v4, v3);
}

uint64_t sub_24AFFCC8C()
{
  swift_weakInit();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_24AFFCD44;
  v2 = *(v0 + 24);

  return sub_24B07354C(v2);
}

uint64_t sub_24AFFCD44(char a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *v3;
  *(v5 + 88) = a1;
  *(v5 + 72) = a2;
  *(v5 + 80) = a3;

  swift_weakDestroy();
  v6 = *(v4 + 56);
  v7 = *(v4 + 48);

  return MEMORY[0x2822009F8](sub_24AFFCE80, v7, v6);
}

uint64_t sub_24AFFCE80()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);

  return v1(v4, v2, v3);
}

uint64_t sub_24AFFCEE8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_24B2D5694();
  v2[4] = sub_24B2D5684();
  v4 = sub_24B2D5604();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_24AFFCF80, v4, v3);
}

uint64_t sub_24AFFCF80()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_24AFFD01C;
  v2 = *(v0 + 16);

  return sub_24B061F48(v2);
}

uint64_t sub_24AFFD01C()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_24AFFD1BC;
  }

  else
  {
    v5 = sub_24AFFD158;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24AFFD158()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AFFD1BC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_24AFFD220(double a1, double a2, double a3, double a4, double a5, double a6)
{
  *v6 = a3;
  *&v6[1] = a4;
  *&v6[2] = a5;
  *&v6[3] = a6;
  v7 = 0;
  sub_24B06251C(v6, a1, a2);
}

uint64_t sub_24AFFD280@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MessagesAppViewModel();
  result = sub_24B2D31B4();
  *a1 = result;
  return result;
}

uint64_t sub_24AFFD2BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AFFD370;

  return sub_24AFFBCF0(a1, v4, v5, v6);
}

uint64_t sub_24AFFD370()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24AFFD464(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for MessagesAppView(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MessagesAppView(uint64_t result, int a2, int a3)
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

uint64_t dispatch thunk of MessagesAppViewModel.validateAndInitiate(message:)(uint64_t a1)
{
  v6 = (*(*v1 + 208) + **(*v1 + 208));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AFFD974;

  return v6(a1);
}

uint64_t sub_24AFFD974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;

  v7 = *(v9 + 8);

  return v7(a1, a2, a3);
}

uint64_t dispatch thunk of MessagesAppViewModel.createMapsURLForThisDeviceCurrentLocation()(uint64_t a1)
{
  v6 = (*(*v1 + 216) + **(*v1 + 216));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AFFD370;

  return v6(a1);
}

unint64_t sub_24AFFDC08()
{
  result = qword_27EFC7E28;
  if (!qword_27EFC7E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7E28);
  }

  return result;
}

uint64_t sub_24AFFDC5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AFFDCCC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AFFDE44;

  return sub_24B00B3C4(a1, v4);
}

uint64_t sub_24AFFDD84(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AFFDE44;

  return sub_24B1AB998(a1, v4);
}

uint64_t Friend.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Friend() + 20);
  v4 = sub_24B2D1704();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Friend()
{
  result = qword_27EFC7E68;
  if (!qword_27EFC7E68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Friend.init(prettyName:mainHandle:allHandles:contact:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = sub_24B2D2024();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22[0] = a1;
    v22[1] = a2;
    sub_24B2D2004();
    sub_24AFFE0A4();
    a1 = sub_24B2D5AB4();
    v17 = v16;
    (*(v13 + 8))(v15, v12);
  }

  else
  {
    v17 = 0;
  }

  *a6 = a1;
  a6[1] = v17;
  v18 = type metadata accessor for Friend();
  v19 = v18[5];
  v20 = sub_24B2D1704();
  result = (*(*(v20 - 8) + 32))(a6 + v19, a3, v20);
  *(a6 + v18[6]) = a4;
  *(a6 + v18[7]) = a5;
  return result;
}

unint64_t sub_24AFFE0A4()
{
  result = qword_27EFC7E48;
  if (!qword_27EFC7E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7E48);
  }

  return result;
}

BOOL sub_24AFFE0F8()
{
  type metadata accessor for Friend();
  sub_24B2D1704();
  sub_24AFFF598(&qword_27EFC7E90);
  return (sub_24B2D52A4() & 1) == 0;
}

uint64_t sub_24AFFE18C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_24B2D1704();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

id sub_24AFFE200()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBDA78]) init];
  result = [v0 setStyle_];
  qword_27EFC7E40 = v0;
  return result;
}

uint64_t Friend.init(contact:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_24B2D1704();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7880);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v21 - v15;
  sub_24AFFE520();
  if (*(v17 + 16))
  {
    (*(v5 + 16))(v16, v17 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);

    (*(v5 + 56))(v16, 0, 1, v4);
  }

  else
  {

    (*(v5 + 56))(v16, 1, 1, v4);
  }

  sub_24AFEFFE4(v16, v14);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    sub_24AFFE9A0(v16);

    v18 = 1;
  }

  else
  {
    (*(v5 + 32))(v10, v14, v4);
    (*(v5 + 16))(v8, v10, v4);
    Friend.init(mainHandle:contact:)(v8, a1, a2);
    (*(v5 + 8))(v10, v4);
    v18 = 0;
    v14 = v16;
  }

  sub_24AFFE9A0(v14);
  v19 = type metadata accessor for Friend();
  return (*(*(v19 - 8) + 56))(a2, v18, 1, v19);
}

void sub_24AFFE520()
{
  v1 = v0;
  v2 = sub_24B2D1704();
  v3 = *(v2 - 8);
  v44 = v2;
  v45 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 emailAddresses];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7F08);
  v8 = sub_24B2D5534();

  if (v8 >> 62)
  {
    v9 = sub_24B2D5DA4();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = MEMORY[0x277D84F90];
  v42 = v1;
  v43 = v5;
  v41 = v7;
  if (v9)
  {
    if (v9 < 1)
    {
      __break(1u);
      goto LABEL_39;
    }

    v11 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x24C23C450](v11, v8);
      }

      else
      {
        v12 = *(v8 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = [v12 value];
      v15 = sub_24B2D5394();
      v17 = v16;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_24B006774(0, *(v10 + 2) + 1, 1, v10);
      }

      v19 = *(v10 + 2);
      v18 = *(v10 + 3);
      if (v19 >= v18 >> 1)
      {
        v10 = sub_24B006774((v18 > 1), v19 + 1, 1, v10);
      }

      ++v11;

      *(v10 + 2) = v19 + 1;
      v20 = &v10[16 * v19];
      *(v20 + 4) = v15;
      *(v20 + 5) = v17;
    }

    while (v9 != v11);
  }

  v21 = [v42 phoneNumbers];
  v22 = sub_24B2D5534();

  if (v22 >> 62)
  {
    v23 = sub_24B2D5DA4();
    v24 = v43;
    if (v23)
    {
LABEL_16:
      if (v23 >= 1)
      {
        for (i = 0; i != v23; ++i)
        {
          if ((v22 & 0xC000000000000001) != 0)
          {
            v26 = MEMORY[0x24C23C450](i, v22);
          }

          else
          {
            v26 = *(v22 + 8 * i + 32);
          }

          v27 = v26;
          v28 = [v26 value];
          v29 = [v28 unformattedInternationalStringValue];

          if (v29)
          {
            v30 = sub_24B2D5394();
            v32 = v31;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v10 = sub_24B006774(0, *(v10 + 2) + 1, 1, v10);
            }

            v34 = *(v10 + 2);
            v33 = *(v10 + 3);
            if (v34 >= v33 >> 1)
            {
              v10 = sub_24B006774((v33 > 1), v34 + 1, 1, v10);
            }

            *(v10 + 2) = v34 + 1;
            v35 = &v10[16 * v34];
            *(v35 + 4) = v30;
            *(v35 + 5) = v32;
            v24 = v43;
          }

          else
          {
          }
        }

        goto LABEL_31;
      }

LABEL_39:
      __break(1u);
      return;
    }
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v43;
    if (v23)
    {
      goto LABEL_16;
    }
  }

LABEL_31:

  v36 = *(v10 + 2);
  if (v36)
  {
    v46 = MEMORY[0x277D84F90];
    sub_24B0076F4(0, v36, 0);
    v37 = v46;
    v38 = v10 + 40;
    do
    {

      sub_24B2D16E4();
      v46 = v37;
      v40 = *(v37 + 16);
      v39 = *(v37 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_24B0076F4(v39 > 1, v40 + 1, 1);
        v37 = v46;
      }

      *(v37 + 16) = v40 + 1;
      (*(v45 + 32))(v37 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v40, v24, v44);
      v38 += 16;
      --v36;
    }

    while (v36);
  }
}

uint64_t sub_24AFFE9A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7880);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Friend.init(mainHandle:contact:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_24B2D2024();
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24B2D1704();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EFC7580 != -1)
  {
    swift_once();
  }

  v13 = [qword_27EFC7E40 stringFromContact_];
  if (v13)
  {
    v14 = v13;
    v15 = sub_24B2D5394();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  (*(v10 + 16))(v12, a1, v9);
  v27 = a2;
  sub_24AFFE520();
  v19 = v18;
  if (v17)
  {
    v28 = v15;
    v29 = v17;
    sub_24B2D2004();
    sub_24AFFE0A4();
    v15 = sub_24B2D5AB4();
    v21 = v20;
    (*(v10 + 8))(a1, v9);
    (*(v25 + 8))(v8, v26);
  }

  else
  {
    (*(v10 + 8))(a1, v9);
    v21 = 0;
  }

  *a3 = v15;
  a3[1] = v21;
  v22 = type metadata accessor for Friend();
  result = (*(v10 + 32))(a3 + v22[5], v12, v9);
  *(a3 + v22[6]) = v19;
  *(a3 + v22[7]) = v27;
  return result;
}

uint64_t Friend.init(mainHandle:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_24B2D1704();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_24B2D16E4();
  v9 = sub_24AFFEFF8(a1, a2);

  return Friend.init(mainHandle:contact:)(v8, v9, a3);
}

id sub_24AFFED78(char a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CBDB38]) init];
  if (a1)
  {
    sub_24B2D5394();
    v3 = sub_24B2D5374();
    v4 = objc_allocWithZone(MEMORY[0x277CBDB20]);
    v5 = sub_24B2D5374();

    v6 = [v4 initWithLabel:v5 value:v3];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7E98);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_24B2DF8E0;
    *(v7 + 32) = v6;
    v8 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7F08);
    v9 = sub_24B2D5524();

    [v2 setEmailAddresses_];
  }

  else
  {
    v10 = objc_allocWithZone(MEMORY[0x277CBDB70]);
    v11 = sub_24B2D5374();
    v12 = [v10 initWithStringValue_];

    sub_24B2D5394();
    v13 = objc_allocWithZone(MEMORY[0x277CBDB20]);
    v14 = v12;
    v15 = sub_24B2D5374();

    v16 = [v13 initWithLabel:v15 value:v14];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7E98);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_24B2DF8E0;
    *(v17 + 32) = v16;
    v8 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7F08);
    v9 = sub_24B2D5524();

    [v2 setPhoneNumbers_];
  }

  return v2;
}

id sub_24AFFEFF8(void *a1, void *a2)
{
  v28[2] = *MEMORY[0x277D85DE8];
  v28[0] = a1;
  v28[1] = a2;
  sub_24AFFE0A4();
  v2 = sub_24B2D5B04();
  if ([objc_opt_self() authorizationStatusForEntityType_] != 3)
  {
    return sub_24AFFED78(v2 & 1);
  }

  v3 = objc_opt_self();
  if (v2)
  {
    v4 = sub_24B2D5374();
    v5 = &selRef_predicateForContactsMatchingEmailAddress_;
  }

  else
  {
    v7 = objc_allocWithZone(MEMORY[0x277CBDB70]);
    v8 = sub_24B2D5374();
    v4 = [v7 initWithStringValue_];

    v5 = &selRef_predicateForContactsMatchingPhoneNumber_;
  }

  v9 = [v3 *v5];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7E98);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_24B2DF8F0;
  v11 = *MEMORY[0x277CBD018];
  v12 = *MEMORY[0x277CBCFC0];
  *(v10 + 32) = *MEMORY[0x277CBD018];
  *(v10 + 40) = v12;
  v13 = *MEMORY[0x277CBD098];
  *(v10 + 48) = *MEMORY[0x277CBD098];
  v14 = objc_opt_self();
  v15 = v11;
  v16 = v12;
  v17 = v13;
  *(v10 + 56) = [v14 descriptorForRequiredKeysForStyle_];
  v18 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7F00);
  v19 = sub_24B2D5524();

  v28[0] = 0;
  v20 = [v18 unifiedContactsMatchingPredicate:v9 keysToFetch:v19 error:v28];

  v21 = v28[0];
  if (!v20)
  {
    v25 = v28[0];
    v26 = sub_24B2D21E4();

    swift_willThrow();
LABEL_15:
    v27 = sub_24AFFED78(v2 & 1);

    return v27;
  }

  sub_24AFFF54C();
  v22 = sub_24B2D5534();
  v23 = v21;

  if (!(v22 >> 62))
  {
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  if (!sub_24B2D5DA4())
  {
LABEL_14:

    goto LABEL_15;
  }

LABEL_9:
  if ((v22 & 0xC000000000000001) != 0)
  {
    v27 = MEMORY[0x24C23C450](0, v22);

    return v27;
  }

  if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
  }

  v24 = *(v22 + 32);

  return v24;
}

void sub_24AFFF3F0()
{
  sub_24AFFF4A4();
  if (v0 <= 0x3F)
  {
    sub_24B2D1704();
    if (v1 <= 0x3F)
    {
      sub_24AFFF4F4();
      if (v2 <= 0x3F)
      {
        sub_24AFFF54C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24AFFF4A4()
{
  if (!qword_27EFC7900)
  {
    v0 = sub_24B2D5A84();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFC7900);
    }
  }
}

void sub_24AFFF4F4()
{
  if (!qword_27EFC7E80)
  {
    sub_24B2D1704();
    v0 = sub_24B2D55E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFC7E80);
    }
  }
}

unint64_t sub_24AFFF54C()
{
  result = qword_27EFCE7D0;
  if (!qword_27EFCE7D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EFCE7D0);
  }

  return result;
}

uint64_t sub_24AFFF598(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_24B2D1704();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL sub_24AFFF5DC(char **a1, char *a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue;
  v7 = *(*v2 + OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue);
  v8 = type metadata accessor for LocationDetailViewController.ViewOptions();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue] = v7;
  v23.receiver = v9;
  v23.super_class = v8;
  v10 = objc_msgSendSuper2(&v23, sel_init);
  v11 = *&v10[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue];

  v12 = *&a2[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue];
  v13 = objc_allocWithZone(v8);
  *&v13[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue] = v12 & v11;
  v22.receiver = v13;
  v22.super_class = v8;
  v14 = objc_msgSendSuper2(&v22, sel_init);
  v15 = sub_24B2D5A34();
  if ((v15 & 1) == 0)
  {

    v16 = *&v5[v6];
    v14 = a2;

    v17 = objc_allocWithZone(v8);
    *&v17[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue] = v16 | v12;
    v21.receiver = v17;
    v21.super_class = v8;
    v18 = objc_msgSendSuper2(&v21, sel_init);

    *v3 = v18;
  }

  *a1 = v14;
  return (v15 & 1) == 0;
}

id sub_24AFFF708(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue;
  v6 = *(*v1 + OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue);
  v7 = type metadata accessor for LocationDetailViewController.ViewOptions();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue] = v6;
  v33.receiver = v8;
  v33.super_class = v7;
  v9 = objc_msgSendSuper2(&v33, sel_init);
  v10 = *&v9[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue];

  v11 = *(a1 + OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue);
  v12 = objc_allocWithZone(v7);
  *&v12[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue] = v11 & v10;
  v32.receiver = v12;
  v32.super_class = v7;
  v13 = objc_msgSendSuper2(&v32, sel_init);
  v14 = objc_allocWithZone(v7);
  *&v14[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue] = 0;
  v31.receiver = v14;
  v31.super_class = v7;
  v15 = objc_msgSendSuper2(&v31, sel_init);
  v16 = sub_24B2D5A34();

  if (v16)
  {

    return 0;
  }

  else
  {
    v17 = *&v4[v5];
    v18 = objc_allocWithZone(v7);
    *&v18[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue] = v17;
    v30.receiver = v18;
    v30.super_class = v7;
    v19 = objc_msgSendSuper2(&v30, sel_init);
    v20 = *&v19[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue];

    v21 = objc_allocWithZone(v7);
    *&v21[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue] = v20 ^ v11;
    v29.receiver = v21;
    v29.super_class = v7;
    v22 = objc_msgSendSuper2(&v29, sel_init);
    v23 = *&v4[v5];

    v24 = *(v22 + OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue) & v23;
    v25 = objc_allocWithZone(v7);
    *&v25[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue] = v24;
    v28.receiver = v25;
    v28.super_class = v7;
    v26 = objc_msgSendSuper2(&v28, sel_init);

    *v2 = v26;
  }

  return v13;
}

id sub_24AFFF8AC(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue;
  v5 = *(*v1 + OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue);
  v6 = type metadata accessor for LocationDetailViewController.ViewOptions();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue] = v5;
  v21.receiver = v7;
  v21.super_class = v6;
  v8 = objc_msgSendSuper2(&v21, sel_init);
  v9 = *&v8[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue];

  v10 = *(a1 + OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue);
  v11 = objc_allocWithZone(v6);
  *&v11[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue] = v10 & v9;
  v20.receiver = v11;
  v20.super_class = v6;
  v12 = objc_msgSendSuper2(&v20, sel_init);
  v13 = *&v3[v4];

  v14 = objc_allocWithZone(v6);
  *&v14[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue] = v13 | v10;
  v19.receiver = v14;
  v19.super_class = v6;
  *v1 = objc_msgSendSuper2(&v19, sel_init);
  v15 = objc_allocWithZone(v6);
  *&v15[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue] = 0;
  v18.receiver = v15;
  v18.super_class = v6;
  v16 = objc_msgSendSuper2(&v18, sel_init);
  LOBYTE(v6) = sub_24B2D5A34();

  if (v6)
  {

    return 0;
  }

  return v12;
}

uint64_t sub_24AFFF9E4(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue);
  v6 = objc_allocWithZone(ObjectType);
  *&v6[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue] = v5;
  v17.receiver = v6;
  v17.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v17, sel_init);
  v8 = *&v7[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue];

  v9 = *(a1 + OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue) & v8;
  v10 = objc_allocWithZone(ObjectType);
  *&v10[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue] = v9;
  v16.receiver = v10;
  v16.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v16, sel_init);
  v12 = objc_allocWithZone(ObjectType);
  *&v12[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue] = 0;
  v15.receiver = v12;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  LOBYTE(ObjectType) = sub_24B2D5A34();

  return ObjectType & 1;
}

void sub_24AFFFAD4(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue;
  v5 = *(*v1 + OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue);
  v6 = type metadata accessor for LocationDetailViewController.ViewOptions();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue] = v5;
  v19.receiver = v7;
  v19.super_class = v6;
  v8 = objc_msgSendSuper2(&v19, sel_init);
  v9 = *&v8[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue];

  v10 = *(a1 + OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue) ^ v9;
  v11 = objc_allocWithZone(v6);
  *&v11[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue] = v10;
  v18.receiver = v11;
  v18.super_class = v6;
  v12 = objc_msgSendSuper2(&v18, sel_init);
  v13 = *&v3[v4];

  v14 = *(v12 + OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue) & v13;
  v15 = objc_allocWithZone(v6);
  *&v15[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue] = v14;
  v17.receiver = v15;
  v17.super_class = v6;
  v16 = objc_msgSendSuper2(&v17, sel_init);

  *v1 = v16;
}

id LocationDetailViewController.ViewOptions.__allocating_init(rawValue:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id LocationDetailViewController.ViewOptions.init(rawValue:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_24AFFFED8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for LocationDetailViewController.ViewOptions();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue] = a2;
  v8.receiver = v6;
  v8.super_class = v5;
  result = objc_msgSendSuper2(&v8, sel_init);
  *a3 = result;
  return result;
}

uint64_t sub_24AFFFF84()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7E98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24B2DF960;
  if (qword_27EFC7588 != -1)
  {
    swift_once();
  }

  v1 = qword_27EFC7F10;
  *(inited + 32) = qword_27EFC7F10;
  v2 = qword_27EFC75B0;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_27EFC7F38;
  *(inited + 40) = qword_27EFC7F38;
  v5 = qword_27EFC75B8;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_27EFC7F40;
  *(inited + 48) = qword_27EFC7F40;
  v8 = v7;
  v9 = sub_24B008688(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  qword_27EFC7F48 = v9;
  return result;
}

uint64_t sub_24B000170(uint64_t a1, char **a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7E98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24B2DF970;
  if (qword_27EFC7588 != -1)
  {
    swift_once();
  }

  v4 = qword_27EFC7F10;
  *(inited + 32) = qword_27EFC7F10;
  v5 = qword_27EFC7590;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_27EFC7F18;
  *(inited + 40) = qword_27EFC7F18;
  v8 = qword_27EFC7598;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_27EFC7F20;
  *(inited + 48) = qword_27EFC7F20;
  v11 = qword_27EFC75A0;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = qword_27EFC7F28;
  *(inited + 56) = qword_27EFC7F28;
  v14 = qword_27EFC75A8;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = qword_27EFC7F30;
  *(inited + 64) = qword_27EFC7F30;
  v17 = v16;
  v18 = sub_24B008688(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  *a2 = v18;
  return result;
}

id sub_24B000360(void *a1, void **a2)
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

id sub_24B0003E4(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v5 = *a4;
  }

  return v5;
}

BOOL LocationDetailViewController.ViewOptions.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_24B008890(a1, v7, &qword_27EFC85B0);
  if (v8)
  {
    if (swift_dynamicCast())
    {
      v3 = *(v1 + OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue);
      v4 = *&v6[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue];

      return v3 == v4;
    }
  }

  else
  {
    sub_24AFF8258(v7, &qword_27EFC85B0);
  }

  return 0;
}

id LocationDetailViewController.ViewOptions.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LocationDetailViewController.ViewOptions.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_24B000674@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue] = v4;
  v7.receiver = v5;
  v7.super_class = v2;
  result = objc_msgSendSuper2(&v7, sel_init);
  *a2 = result;
  return result;
}

id sub_24B0006D4@<X0>(void *a1@<X8>)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue] = 0;
  v5.receiver = v3;
  v5.super_class = v1;
  result = objc_msgSendSuper2(&v5, sel_init);
  *a1 = result;
  return result;
}

void sub_24B000728(Class a1@<X1>, void **a2@<X0>, void *a3@<X8>)
{
  v6 = *a2;
  v7 = *v3;
  v8 = *&v7[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue];
  v9 = objc_allocWithZone(a1);
  *&v9[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue] = v8;
  v16.receiver = v9;
  v16.super_class = a1;
  v10 = [(objc_class *)&v16 init];
  v11 = *&v10[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue];

  v12 = *&v6[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue] | v11;
  v13 = objc_allocWithZone(a1);
  *&v13[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue] = v12;
  v15.receiver = v13;
  v15.super_class = a1;
  v14 = [(objc_class *)&v15 init];

  *a3 = v14;
}

void sub_24B0007EC(Class a1@<X1>, uint64_t *a2@<X0>, void *a3@<X8>)
{
  v6 = *a2;
  v7 = *v3;
  v8 = *&v7[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue];
  v9 = objc_allocWithZone(a1);
  *&v9[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue] = v8;
  v16.receiver = v9;
  v16.super_class = a1;
  v10 = [(objc_class *)&v16 init];
  v11 = *&v10[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue];

  v12 = *(v6 + OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue) & v11;
  v13 = objc_allocWithZone(a1);
  *&v13[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue] = v12;
  v15.receiver = v13;
  v15.super_class = a1;
  v14 = [(objc_class *)&v15 init];

  *a3 = v14;
}

void sub_24B0008AC(Class a1@<X1>, void **a2@<X0>, void *a3@<X8>)
{
  v6 = *a2;
  v7 = *v3;
  v8 = *&v7[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue];
  v9 = objc_allocWithZone(a1);
  *&v9[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue] = v8;
  v16.receiver = v9;
  v16.super_class = a1;
  v10 = [(objc_class *)&v16 init];
  v11 = *&v10[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue];

  v12 = *&v6[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue] ^ v11;
  v13 = objc_allocWithZone(a1);
  *&v13[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue] = v12;
  v15.receiver = v13;
  v15.super_class = a1;
  v14 = [(objc_class *)&v15 init];

  *a3 = v14;
}

BOOL sub_24B000970(char **a1, char **a2)
{
  v2 = *a2;
  v3 = sub_24AFFF5DC(a1, *a2);

  return v3;
}

id sub_24B0009A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_24AFFF708(*a1);
  *a2 = result;
  return result;
}

void sub_24B0009D0(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_24AFFF8AC(*a1);

  *a2 = v4;
}

void sub_24B000A10(void **a1, objc_class *a2)
{
  v4 = *a1;
  v5 = *(*v2 + OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue);

  v6 = *&v4[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue] | v5;
  v7 = objc_allocWithZone(a2);
  *&v7[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue] = v6;
  v9.receiver = v7;
  v9.super_class = a2;
  v8 = objc_msgSendSuper2(&v9, sel_init);

  *v2 = v8;
}

id sub_24B000A9C(uint64_t *a1, objc_class *a2)
{
  v4 = *a1;
  v5 = *(*v2 + OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue);

  v6 = *(v4 + OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue) & v5;
  v7 = objc_allocWithZone(a2);
  *&v7[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue] = v6;
  v9.receiver = v7;
  v9.super_class = a2;
  result = objc_msgSendSuper2(&v9, sel_init);
  *v2 = result;
  return result;
}

void sub_24B000B20(void **a1, objc_class *a2)
{
  v4 = *a1;
  v5 = *(*v2 + OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue);

  v6 = *&v4[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue] ^ v5;
  v7 = objc_allocWithZone(a2);
  *&v7[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue] = v6;
  v9.receiver = v7;
  v9.super_class = a2;
  v8 = objc_msgSendSuper2(&v9, sel_init);

  *v2 = v8;
}

void sub_24B000BAC(Class a1@<X1>, uint64_t *a2@<X0>, void *a3@<X8>)
{
  v6 = *a2;
  v7 = *v3;
  v8 = OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue;
  v9 = *(*v3 + OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue);
  v10 = objc_allocWithZone(a1);
  *&v10[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue] = v9;
  v26.receiver = v10;
  v26.super_class = a1;
  v11 = [(objc_class *)&v26 init];
  v12 = *&v11[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue];

  v13 = *(v6 + OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue) ^ v12;
  v14 = objc_allocWithZone(a1);
  *&v14[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue] = v13;
  v25.receiver = v14;
  v25.super_class = a1;
  v15 = [(objc_class *)&v25 init];
  v16 = *&v7[v8];
  v17 = objc_allocWithZone(a1);
  *&v17[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue] = v16;
  v24.receiver = v17;
  v24.super_class = a1;
  v18 = [(objc_class *)&v24 init];
  v19 = *&v18[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue];

  v20 = *(v15 + OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue) & v19;
  v21 = objc_allocWithZone(a1);
  *&v21[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue] = v20;
  v23.receiver = v21;
  v23.super_class = a1;
  v22 = [(objc_class *)&v23 init];

  *a3 = v22;
}

uint64_t sub_24B000CD0(uint64_t *a1, Class a2)
{
  v3 = a2;
  v4 = *a1;
  v5 = *(*v2 + OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue);
  v6 = objc_allocWithZone(a2);
  *&v6[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue] = v5;
  v14.receiver = v6;
  v14.super_class = v3;
  v7 = objc_msgSendSuper2(&v14, sel_init);
  v8 = *&v7[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue];

  v9 = *(v4 + OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue) & v8;
  v10 = objc_allocWithZone(v3);
  *&v10[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue] = v9;
  v13.receiver = v10;
  v13.super_class = v3;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  LOBYTE(v3) = sub_24B2D5A34();

  return v3 & 1;
}

uint64_t sub_24B000DC0(void *a1, Class a2)
{
  v3 = a2;
  v4 = *v2;
  v5 = *(*a1 + OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue);
  v6 = objc_allocWithZone(a2);
  *&v6[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue] = v5;
  v14.receiver = v6;
  v14.super_class = v3;
  v7 = objc_msgSendSuper2(&v14, sel_init);
  v8 = *&v7[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue];

  v9 = *(v4 + OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue) & v8;
  v10 = objc_allocWithZone(v3);
  *&v10[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue] = v9;
  v13.receiver = v10;
  v13.super_class = v3;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  LOBYTE(v3) = sub_24B2D5A34();

  return v3 & 1;
}

uint64_t sub_24B000E84(objc_class *a1)
{
  v1 = a1;
  v2 = objc_allocWithZone(a1);
  *&v2[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue] = 0;
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = [(objc_class *)&v5 init];
  LOBYTE(v1) = sub_24B2D5A34();

  return v1 & 1;
}

uint64_t sub_24B000F30@<X0>(unint64_t a1@<X0>, char **a2@<X8>)
{
  v3 = sub_24B008688(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_24B000F70(uint64_t a1)
{
  v32 = type metadata accessor for Friend();
  v3 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_24B2D1494();
  v6 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CompositeAppViewInitialInfo();
  v10 = (a1 + *(v9 + 20));
  v12 = *v10;
  v11 = v10[1];
  v13 = *(a1 + *(v9 + 24));
  v14 = *(v13 + 16);
  if (v14)
  {
    v25 = *v10;
    v27 = a1;
    v28 = v1;
    v33 = MEMORY[0x277D84F90];
    v26 = v11;

    sub_24B007848(0, v14, 0);
    sub_24B2D5694();
    v15 = v3;
    v16 = v33;
    v17 = v13 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v18 = *(v15 + 72);
    v29 = v6 + 32;
    v30 = v18;
    do
    {
      sub_24B008BB4(v17, v5, type metadata accessor for Friend);
      sub_24B2D5684();
      sub_24B2D5604();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v19 = *&v5[*(v32 + 28)];
      sub_24B2D14A4();
      sub_24B008DC4(v5, type metadata accessor for Friend);

      v33 = v16;
      v21 = *(v16 + 16);
      v20 = *(v16 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_24B007848(v20 > 1, v21 + 1, 1);
        v16 = v33;
      }

      *(v16 + 16) = v21 + 1;
      (*(v6 + 32))(v16 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v21, v8, v31);
      v17 += v30;
      --v14;
    }

    while (v14);
    a1 = v27;
    v12 = v25;
    v11 = v26;
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  v22 = sub_24B0012A8(a1);
  sub_24B2815FC(v12, v11, v16, v22);
}

uint64_t sub_24B0012A8(uint64_t a1)
{
  v2 = type metadata accessor for CompositeAppViewState(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x277D84FA0];
  v5 = type metadata accessor for CompositeAppViewInitialInfo();
  sub_24B008BB4(a1 + *(v5 + 28), v4, type metadata accessor for CompositeAppViewState);
  if (!swift_getEnumCaseMultiPayload())
  {
    v6 = *v4;
    if ((v6 & 0x10) != 0)
    {
      sub_24B1ACACC(&v8 + 5, 1);
      if ((v6 & 8) == 0)
      {
LABEL_7:
        if ((v6 & 0x40) == 0)
        {
          return v9;
        }

LABEL_8:
        sub_24B1ACACC(&v8 + 7, 2);
        return v9;
      }
    }

    else if ((v6 & 8) == 0)
    {
      goto LABEL_7;
    }

    sub_24B1ACACC(&v8 + 6, 0);
    if ((v6 & 0x40) == 0)
    {
      return v9;
    }

    goto LABEL_8;
  }

  if (qword_27EFC7738 != -1)
  {
    swift_once();
  }

  v9 = qword_27EFE4640;

  sub_24B008DC4(v4, type metadata accessor for CompositeAppViewState);
  return v9;
}

uint64_t sub_24B00142C()
{
  v0 = type metadata accessor for EmbeddedPeopleSummaryMapView(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24B2D12F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 104);
  v7(v6, *MEMORY[0x277D08AD8], v3);
  sub_24B008C4C(&qword_27EFC8118, 255, MEMORY[0x277D08AF0]);
  v8 = sub_24B2D2644();
  v9 = *(v4 + 8);
  v9(v6, v3);
  v7(v6, *MEMORY[0x277D08AE0], v3);
  v10 = sub_24B2D2644();
  v9(v6, v3);
  if ((v10 & 1) == 0)
  {
    if ((v8 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_24B2BF820(&v22);
    type metadata accessor for EmbeddedPeopleSummaryMapViewModel();
    swift_allocObject();
    v12 = sub_24B29E3A4(0, 0, 0, 0, &v22);
    sub_24B008C4C(&qword_27EFC8128, 255, type metadata accessor for EmbeddedPeopleSummaryMapViewModel);

    sub_24B2D4F64();
    *&v2[*(v0 + 20)] = 0;
    v15 = &v2[*(v0 + 24)];
    sub_24B2D4394();
    sub_24B2D43F4();
    v16 = sub_24B2D4424();

    v17 = sub_24B2D4484();
    sub_24B2D4394();
    sub_24B2D43D4();
    v18 = sub_24B2D4424();

    sub_24B2D4394();
    sub_24B2D43E4();
    v19 = sub_24B2D4424();

    *v15 = v16;
    v15[1] = v17;
    v15[2] = v18;
    v15[3] = v19;
    sub_24B008C4C(&qword_27EFC8130, 255, type metadata accessor for EmbeddedPeopleSummaryMapView);
    v14 = sub_24B2D4E24();
    goto LABEL_8;
  }

  if ((v8 | sub_24B2D5014()))
  {
    goto LABEL_7;
  }

LABEL_3:
  if (qword_27EFC75F8 != -1)
  {
    swift_once();
  }

  type metadata accessor for CompositeAppViewModel();
  swift_allocObject();

  v12 = sub_24B059C44(v11, 0, 0, 0, 0, 0, 0, 0, 0);
  v25 = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7E20);
  sub_24B2D4CC4();
  v13 = v22;
  *&v22 = sub_24B008C44;
  *(&v22 + 1) = v12;
  v23 = 0;
  v24 = v13;
  sub_24AFFDC08();
  v14 = sub_24B2D4E24();
LABEL_8:
  *&v22 = v14;
  v20 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8120));

  sub_24B2D3EA4();
  sub_24B2D3E94();

  return v12;
}

id LocationDetailViewController.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v5 = sub_24B2D3184();
  __swift_project_value_buffer(v5, qword_27EFE4418);
  v6 = v0;
  v7 = sub_24B2D3164();
  v8 = sub_24B2D5934();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v9 = 138412546;
    *(v9 + 4) = v6;
    *v10 = v6;
    *(v9 + 12) = 2080;
    v12 = v6;
    *(v9 + 14) = sub_24AFF321C(0x74696E696564, 0xE600000000000000, &v20);
    _os_log_impl(&dword_24AFD2000, v7, v8, "LocationDetailViewController: %@ - %s", v9, 0x16u);
    sub_24AFF8258(v10, &qword_27EFC7BB8);
    MEMORY[0x24C23D530](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x24C23D530](v11, -1, -1);
    MEMORY[0x24C23D530](v9, -1, -1);
  }

  v13 = sub_24B2D56D4();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  v14 = OBJC_IVAR___FMUILocationDetailViewController_viewModel;
  sub_24B2D5694();
  v19 = *&v6[v14];
  swift_unknownObjectRetain();
  v15 = sub_24B2D5684();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v15;
  *(v16 + 24) = v17;
  *(v16 + 32) = v19;
  sub_24AFFBE08(0, 0, v4, &unk_24B2DF9B8, v16);

  sub_24AFF8258(v4, &qword_27EFC8580);
  v21.receiver = v6;
  v21.super_class = ObjectType;
  return objc_msgSendSuper2(&v21, sel_dealloc);
}

uint64_t sub_24B001D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_24B2D5694();
  v5[4] = sub_24B2D5684();
  v7 = sub_24B2D5604();

  return MEMORY[0x2822009F8](sub_24B001DA8, v7, v6);
}

uint64_t sub_24B001DA8()
{
  v1 = *(v0 + 24);

  ObjectType = swift_getObjectType();
  (*(v1 + 32))(ObjectType, v1);
  v3 = *(v0 + 8);

  return v3();
}

void LocationDetailViewController.setViewOptions(_:)(void *a1)
{
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v3 = sub_24B2D3184();
  __swift_project_value_buffer(v3, qword_27EFE4418);
  v4 = v1;
  v5 = sub_24B2D3164();
  v6 = sub_24B2D5934();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v7 = 138412546;
    *(v7 + 4) = v4;
    *v8 = v4;
    *(v7 + 12) = 2080;
    v10 = v4;
    *(v7 + 14) = sub_24AFF321C(0xD000000000000012, 0x800000024B2D7AC0, &v13);
    _os_log_impl(&dword_24AFD2000, v5, v6, "LocationDetailViewController: %@ - %s", v7, 0x16u);
    sub_24AFF8258(v8, &qword_27EFC7BB8);
    MEMORY[0x24C23D530](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C23D530](v9, -1, -1);
    MEMORY[0x24C23D530](v7, -1, -1);
  }

  v12 = *&v4[OBJC_IVAR___FMUILocationDetailViewController_viewOptions];
  *&v4[OBJC_IVAR___FMUILocationDetailViewController_viewOptions] = a1;
  v11 = a1;
}

Swift::Void __swiftcall LocationDetailViewController.set(remoteParticipantHandles:localParticipantHandle:)(Swift::OpaquePointer remoteParticipantHandles, Swift::String localParticipantHandle)
{
  object = localParticipantHandle._object;
  countAndFlagsBits = localParticipantHandle._countAndFlagsBits;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v6 = sub_24B2D3184();
  __swift_project_value_buffer(v6, qword_27EFE4418);
  v7 = v2;
  v8 = sub_24B2D3164();
  v9 = sub_24B2D5934();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v10 = 138412546;
    *(v10 + 4) = v7;
    *v11 = v7;
    *(v10 + 12) = 2080;
    v13 = v7;
    *(v10 + 14) = sub_24AFF321C(0xD000000000000035, 0x800000024B2D7AE0, &v15);
    _os_log_impl(&dword_24AFD2000, v8, v9, "LocationDetailViewController: %@ - %s", v10, 0x16u);
    sub_24AFF8258(v11, &qword_27EFC7BB8);
    MEMORY[0x24C23D530](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x24C23D530](v12, -1, -1);
    MEMORY[0x24C23D530](v10, -1, -1);
  }

  v14.value._countAndFlagsBits = countAndFlagsBits;
  v14.value._object = object;
  LocationDetailViewController.startObserving(handles:from:groupName:)(remoteParticipantHandles, v14, 0);
}

Swift::Void __swiftcall LocationDetailViewController.startObserving(handles:from:groupName:)(Swift::OpaquePointer handles, Swift::String_optional from, Swift::String_optional groupName)
{
  object = groupName.value._object;
  countAndFlagsBits = groupName.value._countAndFlagsBits;
  v6 = from.value._object;
  v7 = from.value._countAndFlagsBits;
  rawValue = handles._rawValue;
  v8 = sub_24B2D2024();
  v9 = *(v8 - 8);
  v68 = v8;
  v69 = v9;
  MEMORY[0x28223BE20](v8);
  v67 = v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24B2D1704();
  v65 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v76 = v61 - v15;
  v16 = type metadata accessor for Friend();
  v74 = *(v16 - 8);
  v75 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v73 = (v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v72 = v61 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7880);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = v61 - v21;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v23 = sub_24B2D3184();
  __swift_project_value_buffer(v23, qword_27EFE4418);
  v24 = v3;
  v25 = sub_24B2D3164();
  v26 = sub_24B2D5934();

  v27 = os_log_type_enabled(v25, v26);
  v63 = v6;
  v64 = countAndFlagsBits;
  v61[1] = v7;
  v61[2] = v24;
  v62 = v22;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = object;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v79[0] = v31;
    *v28 = 138412546;
    *(v28 + 4) = v24;
    *v30 = v24;
    *(v28 + 12) = 2080;
    v32 = v24;
    *(v28 + 14) = sub_24AFF321C(0xD000000000000027, 0x800000024B2D7B20, v79);
    _os_log_impl(&dword_24AFD2000, v25, v26, "LocationDetailViewController: %@ - %s", v28, 0x16u);
    sub_24AFF8258(v30, &qword_27EFC7BB8);
    v33 = v30;
    object = v29;
    countAndFlagsBits = v64;
    MEMORY[0x24C23D530](v33, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x24C23D530](v31, -1, -1);
    MEMORY[0x24C23D530](v28, -1, -1);
  }

  v35 = v76;
  v34 = rawValue;
  v36 = rawValue[2];
  if (v36)
  {
    v61[0] = object;
    v80 = MEMORY[0x277D84F90];
    sub_24B00788C(0, v36, 0);
    v78 = v80;
    v70 = (v65 + 8);
    v71 = (v65 + 16);
    v66 = (v69 + 1);
    v69 = (v65 + 32);
    v37 = (v34 + 5);
    do
    {
      v38 = *(v37 - 1);
      v39 = *v37;
      swift_bridgeObjectRetain_n();
      sub_24B2D16E4();
      v40 = sub_24AFFEFF8(v38, v39);

      if (qword_27EFC7580 != -1)
      {
        swift_once();
      }

      v41 = [qword_27EFC7E40 stringFromContact_];
      if (v41)
      {
        v42 = v41;
        v43 = sub_24B2D5394();
        v45 = v44;
      }

      else
      {
        v43 = 0;
        v45 = 0;
      }

      (*v71)(v14, v35, v11);
      sub_24AFFE520();
      rawValue = v46;
      if (v45)
      {
        v79[0] = v43;
        v79[1] = v45;
        v47 = v14;
        v48 = v67;
        sub_24B2D2004();
        sub_24AFFE0A4();
        v43 = sub_24B2D5AB4();
        v50 = v49;
        (*v70)(v35, v11);
        v51 = v48;
        v14 = v47;
        (*v66)(v51, v68);
      }

      else
      {
        (*v70)(v35, v11);
        v50 = 0;
      }

      v52 = v73;
      *v73 = v43;
      *(v52 + 8) = v50;
      v53 = v75;
      (*v69)(v52 + *(v75 + 20), v14, v11);
      *(v52 + *(v53 + 24)) = rawValue;
      *(v52 + *(v53 + 28)) = v40;
      v54 = v72;
      sub_24AFF2644(v52, v72);
      v55 = v78;
      v80 = v78;
      v57 = *(v78 + 16);
      v56 = *(v78 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_24B00788C(v56 > 1, v57 + 1, 1);
        v55 = v80;
      }

      *(v55 + 16) = v57 + 1;
      v58 = (*(v74 + 80) + 32) & ~*(v74 + 80);
      v78 = v55;
      sub_24AFF2644(v54, v55 + v58 + *(v74 + 72) * v57);
      v37 += 2;
      --v36;
      v35 = v76;
    }

    while (v36);
    object = v61[0];
    countAndFlagsBits = v64;
  }

  else
  {
    v78 = MEMORY[0x277D84F90];
  }

  v59 = v62;
  if (v63)
  {

    sub_24B2D16E4();
    v60 = 0;
  }

  else
  {
    v60 = 1;
  }

  (*(v65 + 56))(v59, v60, 1, v11);
  sub_24B002C7C(v78, v59, countAndFlagsBits, object);

  sub_24AFF8258(v59, &qword_27EFC7880);
}

uint64_t sub_24B002C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v8 = type metadata accessor for CompositeAppViewInitialInfo();
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v11 = sub_24B2D3184();
  __swift_project_value_buffer(v11, qword_27EFE4418);
  v12 = v4;
  v13 = sub_24B2D3164();
  v14 = sub_24B2D5934();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v27 = a1;
    v16 = v15;
    v17 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v29 = v26;
    *v16 = 138412546;
    *(v16 + 4) = v12;
    *v17 = v12;
    *(v16 + 12) = 2080;
    v18 = v12;
    *(v16 + 14) = sub_24AFF321C(0xD000000000000027, 0x800000024B2D7F10, &v29);
    _os_log_impl(&dword_24AFD2000, v13, v14, "LocationDetailViewController: %@ - %s", v16, 0x16u);
    sub_24AFF8258(v17, &qword_27EFC7BB8);
    MEMORY[0x24C23D530](v17, -1, -1);
    v19 = v26;
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x24C23D530](v19, -1, -1);
    v20 = v16;
    a1 = v27;
    MEMORY[0x24C23D530](v20, -1, -1);
  }

  v21 = *&v12[OBJC_IVAR___FMUILocationDetailViewController_viewModel + 8];
  ObjectType = swift_getObjectType();
  sub_24B008890(a2, v10, &qword_27EFC7880);
  *&v10[v8[7]] = *(*&v12[OBJC_IVAR___FMUILocationDetailViewController_viewOptions] + OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue);
  type metadata accessor for CompositeAppViewState(0);
  swift_storeEnumTagMultiPayload();
  v23 = &v10[v8[5]];
  *v23 = v28;
  *(v23 + 1) = a4;
  *&v10[v8[6]] = a1;
  v10[v8[8]] = 0;
  v24 = *(v21 + 8);

  v24(v10, ObjectType, v21);
  return sub_24B008DC4(v10, type metadata accessor for CompositeAppViewInitialInfo);
}

Swift::Void __swiftcall LocationDetailViewController.startObserving(contacts:from:groupName:)(Swift::OpaquePointer contacts, Swift::String_optional from, Swift::String_optional groupName)
{
  object = groupName.value._object;
  countAndFlagsBits = groupName.value._countAndFlagsBits;
  v77 = from.value._object;
  v74[1] = from.value._countAndFlagsBits;
  v83 = sub_24B2D2024();
  v107 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v82 = v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24B2D1704();
  v93 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v104 = v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v74 - v11;
  MEMORY[0x28223BE20](v10);
  v103 = v74 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7880);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v74 - v19;
  MEMORY[0x28223BE20](v18);
  v92 = v74 - v21;
  v22 = type metadata accessor for Friend();
  v89 = *(v22 - 8);
  v90 = v22;
  v23 = MEMORY[0x28223BE20](v22);
  v88 = (v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v102 = v74 - v25;
  if (qword_27EFC75E8 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v26 = sub_24B2D3184();
    v27 = __swift_project_value_buffer(v26, qword_27EFE4418);
    v28 = v3;
    v74[0] = v27;
    v3 = sub_24B2D3164();
    v29 = sub_24B2D5934();

    v30 = os_log_type_enabled(v3, v29);
    v80 = v17;
    v91 = v12;
    v79 = object;
    v76 = v28;
    if (v30)
    {
      v31 = swift_slowAlloc();
      v32 = v20;
      v33 = swift_slowAlloc();
      v34 = v7;
      v35 = swift_slowAlloc();
      v108[0] = v35;
      *v31 = 138412546;
      *(v31 + 4) = v28;
      *v33 = v28;
      *(v31 + 12) = 2080;
      v36 = v28;
      *(v31 + 14) = sub_24AFF321C(0xD000000000000028, 0x800000024B2D7B50, v108);
      _os_log_impl(&dword_24AFD2000, v3, v29, "LocationDetailViewController: %@ - %s", v31, 0x16u);
      sub_24AFF8258(v33, &qword_27EFC7BB8);
      v37 = v33;
      v20 = v32;
      MEMORY[0x24C23D530](v37, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v35);
      v38 = v35;
      v7 = v34;
      v12 = v91;
      MEMORY[0x24C23D530](v38, -1, -1);
      MEMORY[0x24C23D530](v31, -1, -1);
    }

    object = v92;
    v75 = contacts._rawValue >> 62;
    if (!(contacts._rawValue >> 62))
    {
      v39 = *((contacts._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v39)
      {
        break;
      }

      goto LABEL_6;
    }

    v39 = sub_24B2D5DA4();
    if (!v39)
    {
      break;
    }

LABEL_6:
    v17 = 0;
    v100 = contacts._rawValue & 0xFFFFFFFFFFFFFF8;
    v101 = contacts._rawValue & 0xC000000000000001;
    v105 = (v93 + 16);
    v98 = (v93 + 48);
    v99 = (v93 + 56);
    v97 = (v93 + 32);
    v84 = (v93 + 8);
    v40 = MEMORY[0x277D84F90];
    v81 = (v107 + 8);
    rawValue = contacts._rawValue;
    v86 = v20;
    v85 = v39;
    while (v101)
    {
      v41 = MEMORY[0x24C23C450](v17, contacts._rawValue);
      v42 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_31;
      }

LABEL_12:
      v106 = v42;
      v107 = v41;
      sub_24AFFE520();
      if (*(v43 + 16))
      {
        (*(v93 + 16))(object, v43 + ((*(v93 + 80) + 32) & ~*(v93 + 80)), v7);
        v44 = 0;
      }

      else
      {
        v44 = 1;
      }

      (*v99)(object, v44, 1, v7);
      v3 = &unk_24B2DE440;
      sub_24B008890(object, v20, &qword_27EFC7880);
      if ((*v98)(v20, 1, v7) == 1)
      {
        sub_24AFF8258(object, &qword_27EFC7880);

        sub_24AFF8258(v20, &qword_27EFC7880);
      }

      else
      {
        v45 = v103;
        v95 = *v97;
        v95(v103, v20, v7);
        v46 = *v105;
        (*v105)(v12, v45, v7);
        if (qword_27EFC7580 != -1)
        {
          swift_once();
        }

        v96 = v40;
        v47 = [qword_27EFC7E40 stringFromContact_];
        if (v47)
        {
          v48 = v47;
          v49 = sub_24B2D5394();
          v51 = v50;
        }

        else
        {
          v49 = 0;
          v51 = 0;
        }

        v46(v104, v12, v7);
        sub_24AFFE520();
        v94 = v52;
        v53 = v12;
        if (v51)
        {
          v108[0] = v49;
          v108[1] = v51;
          v54 = v82;
          v55 = v84;
          sub_24B2D2004();
          sub_24AFFE0A4();
          v49 = sub_24B2D5AB4();
          v57 = v56;
          v58 = *v55;
          (*v55)(v53, v7);
          (*v81)(v54, v83);
        }

        else
        {
          v58 = *v84;
          (*v84)(v53, v7);
          v57 = 0;
        }

        v59 = v88;
        *v88 = v49;
        *(v59 + 8) = v57;
        v60 = v90;
        v95((v59 + *(v90 + 20)), v104, v7);
        *(v59 + *(v60 + 24)) = v94;
        *(v59 + *(v60 + 28)) = v107;
        v58(v103, v7);
        object = v92;
        sub_24AFF8258(v92, &qword_27EFC7880);
        sub_24AFF2644(v59, v102);
        v40 = v96;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_24B007388(0, v40[2] + 1, 1, v40, &qword_27EFC7978, &unk_24B2DE6F0, type metadata accessor for Friend);
        }

        contacts._rawValue = rawValue;
        v12 = v91;
        v20 = v86;
        v62 = v40[2];
        v61 = v40[3];
        v3 = (v62 + 1);
        if (v62 >= v61 >> 1)
        {
          v40 = sub_24B007388(v61 > 1, v62 + 1, 1, v40, &qword_27EFC7978, &unk_24B2DE6F0, type metadata accessor for Friend);
        }

        v40[2] = v3;
        sub_24AFF2644(v102, v40 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v62);
        v39 = v85;
      }

      ++v17;
      if (v106 == v39)
      {
        goto LABEL_36;
      }
    }

    if (v17 >= *(v100 + 16))
    {
      goto LABEL_32;
    }

    v41 = *(contacts._rawValue + v17 + 4);
    v42 = v17 + 1;
    if (!__OFADD__(v17, 1))
    {
      goto LABEL_12;
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    swift_once();
  }

  v40 = MEMORY[0x277D84F90];
LABEL_36:
  v63 = v40[2];
  v64 = v75;
  if (v75)
  {
    v65 = sub_24B2D5DA4();
  }

  else
  {
    v65 = *((contacts._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v66 = v80;
  if (v63 != v65)
  {

    v67 = sub_24B2D3164();
    v68 = sub_24B2D5914();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v108[0] = v70;
      *v69 = 136315650;
      *(v69 + 4) = sub_24AFF321C(0xD000000000000028, 0x800000024B2D7B50, v108);
      *(v69 + 12) = 2048;
      *(v69 + 14) = v40[2];

      *(v69 + 22) = 2048;
      if (v64)
      {
        v71 = sub_24B2D5DA4();
      }

      else
      {
        v71 = *((contacts._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v69 + 24) = v71;

      _os_log_impl(&dword_24AFD2000, v67, v68, "FindMyMessagesAppViewController: %s - Couldn't map all friends - mapped: %ld - unmapped: %ld", v69, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v70);
      MEMORY[0x24C23D530](v70, -1, -1);
      MEMORY[0x24C23D530](v69, -1, -1);
    }

    else
    {
    }

    v66 = v80;
  }

  if (v77)
  {

    sub_24B2D16E4();
    v72 = 0;
  }

  else
  {
    v72 = 1;
  }

  v73 = v79;
  (*(v93 + 56))(v66, v72, 1, v7);
  sub_24B002C7C(v40, v66, countAndFlagsBits, v73);

  sub_24AFF8258(v66, &qword_27EFC7880);
}

Swift::Void __swiftcall LocationDetailViewController.stopObserving()()
{
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24B2D3184();
  __swift_project_value_buffer(v1, qword_27EFE4418);
  v2 = v0;
  v3 = sub_24B2D3164();
  v4 = sub_24B2D5934();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v5 = 138412546;
    *(v5 + 4) = v2;
    *v6 = v2;
    *(v5 + 12) = 2080;
    v8 = v2;
    *(v5 + 14) = sub_24AFF321C(0x6573624F706F7473, 0xEF2928676E697672, &v11);
    _os_log_impl(&dword_24AFD2000, v3, v4, "LocationDetailViewController: %@ - %s", v5, 0x16u);
    sub_24AFF8258(v6, &qword_27EFC7BB8);
    MEMORY[0x24C23D530](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x24C23D530](v7, -1, -1);
    MEMORY[0x24C23D530](v5, -1, -1);
  }

  v9 = *&v2[OBJC_IVAR___FMUILocationDetailViewController_viewModel + 8];
  ObjectType = swift_getObjectType();
  (*(v9 + 32))(ObjectType, v9);
}

Swift::Void __swiftcall LocationDetailViewController.pauseSubscriptions()()
{
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24B2D3184();
  __swift_project_value_buffer(v1, qword_27EFE4418);
  v2 = v0;
  v3 = sub_24B2D3164();
  v4 = sub_24B2D5934();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v5 = 138412546;
    *(v5 + 4) = v2;
    *v6 = v2;
    *(v5 + 12) = 2080;
    v8 = v2;
    *(v5 + 14) = sub_24AFF321C(0xD000000000000014, 0x800000024B2D79F0, &v11);
    _os_log_impl(&dword_24AFD2000, v3, v4, "LocationDetailViewController: %@ - %s", v5, 0x16u);
    sub_24AFF8258(v6, &qword_27EFC7BB8);
    MEMORY[0x24C23D530](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x24C23D530](v7, -1, -1);
    MEMORY[0x24C23D530](v5, -1, -1);
  }

  v9 = *&v2[OBJC_IVAR___FMUILocationDetailViewController_viewModel + 8];
  ObjectType = swift_getObjectType();
  (*(v9 + 16))(ObjectType, v9);
}

Swift::Void __swiftcall LocationDetailViewController.resumeSubscriptions()()
{
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24B2D3184();
  __swift_project_value_buffer(v1, qword_27EFE4418);
  v2 = v0;
  v3 = sub_24B2D3164();
  v4 = sub_24B2D5934();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v5 = 138412546;
    *(v5 + 4) = v2;
    *v6 = v2;
    *(v5 + 12) = 2080;
    v8 = v2;
    *(v5 + 14) = sub_24AFF321C(0xD000000000000015, 0x800000024B2D7A10, &v11);
    _os_log_impl(&dword_24AFD2000, v3, v4, "LocationDetailViewController: %@ - %s", v5, 0x16u);
    sub_24AFF8258(v6, &qword_27EFC7BB8);
    MEMORY[0x24C23D530](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x24C23D530](v7, -1, -1);
    MEMORY[0x24C23D530](v5, -1, -1);
  }

  v9 = *&v2[OBJC_IVAR___FMUILocationDetailViewController_viewModel + 8];
  ObjectType = swift_getObjectType();
  (*(v9 + 24))(ObjectType, v9);
}

Swift::Void __swiftcall LocationDetailViewController.viewIsAppearing(_:)(Swift::Bool a1)
{
  v12.receiver = v1;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_viewIsAppearing_, a1);
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v3 = sub_24B2D3184();
  __swift_project_value_buffer(v3, qword_27EFE4418);
  v4 = v1;
  v5 = sub_24B2D3164();
  v6 = sub_24B2D5934();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v7 = 138412546;
    *(v7 + 4) = v4;
    *v8 = v4;
    *(v7 + 12) = 2080;
    v10 = v4;
    *(v7 + 14) = sub_24AFF321C(0xD000000000000013, 0x800000024B2D7B80, &v11);
    _os_log_impl(&dword_24AFD2000, v5, v6, "LocationDetailViewController: %@ - %s", v7, 0x16u);
    sub_24AFF8258(v8, &qword_27EFC7BB8);
    MEMORY[0x24C23D530](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C23D530](v9, -1, -1);
    MEMORY[0x24C23D530](v7, -1, -1);
  }

  LocationDetailViewController.resumeSubscriptions()();
}

Swift::Void __swiftcall LocationDetailViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v12.receiver = v1;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_viewDidDisappear_, a1);
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v3 = sub_24B2D3184();
  __swift_project_value_buffer(v3, qword_27EFE4418);
  v4 = v1;
  v5 = sub_24B2D3164();
  v6 = sub_24B2D5934();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v7 = 138412546;
    *(v7 + 4) = v4;
    *v8 = v4;
    *(v7 + 12) = 2080;
    v10 = v4;
    *(v7 + 14) = sub_24AFF321C(0xD000000000000014, 0x800000024B2D7BA0, &v11);
    _os_log_impl(&dword_24AFD2000, v5, v6, "LocationDetailViewController: %@ - %s", v7, 0x16u);
    sub_24AFF8258(v8, &qword_27EFC7BB8);
    MEMORY[0x24C23D530](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C23D530](v9, -1, -1);
    MEMORY[0x24C23D530](v7, -1, -1);
  }

  LocationDetailViewController.pauseSubscriptions()();
}

void sub_24B004978(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a1;
  a5(a3);
}

id LocationDetailViewController.navigationItem.getter()
{
  v1 = [*(v0 + OBJC_IVAR___FMUILocationDetailViewController_hostingViewController) navigationItem];

  return v1;
}

void __swiftcall LocationDetailViewController.contentScrollView(for:)(UIScrollView_optional *__return_ptr retstr, NSDirectionalRectEdge a2)
{
  v3 = [*(v2 + OBJC_IVAR___FMUILocationDetailViewController_hostingViewController) contentScrollViewForEdge_];

  v4 = v3;
}

Swift::Void __swiftcall LocationDetailViewController.viewDidLoad()()
{
  v35.receiver = v0;
  v35.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v35, sel_viewDidLoad);
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24B2D3184();
  __swift_project_value_buffer(v1, qword_27EFE4418);
  v2 = v0;
  v3 = sub_24B2D3164();
  v4 = sub_24B2D5934();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v34 = v7;
    *v5 = 138412546;
    *(v5 + 4) = v2;
    *v6 = v2;
    *(v5 + 12) = 2080;
    v8 = v2;
    *(v5 + 14) = sub_24AFF321C(0x4C64694477656976, 0xED0000292864616FLL, &v34);
    _os_log_impl(&dword_24AFD2000, v3, v4, "LocationDetailViewController: %@ - %s", v5, 0x16u);
    sub_24AFF8258(v6, &qword_27EFC7BB8);
    MEMORY[0x24C23D530](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x24C23D530](v7, -1, -1);
    MEMORY[0x24C23D530](v5, -1, -1);
  }

  v9 = *&v2[OBJC_IVAR___FMUILocationDetailViewController_hostingViewController];
  v10 = [v9 view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_12;
  }

  v11 = v10;
  [v10 setAutoresizingMask_];

  v12 = [v9 view];
  if (!v12)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = v12;
  v14 = [v2 view];
  if (!v14)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v14;
  [v14 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  [v13 setFrame_];
  v24 = [v2 view];
  if (!v24)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v25 = v24;
  v26 = [v9 view];
  if (v26)
  {
    v27 = v26;
    [v25 addSubview_];

    [v2 addChildViewController_];
    [v9 didMoveToParentViewController_];
    v28 = *&v2[OBJC_IVAR___FMUILocationDetailViewController_viewModel + 8];
    ObjectType = swift_getObjectType();
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v31 = *(v28 + 40);

    v31(&unk_24B2DF9C8, v30, ObjectType, v28);

    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = *(v28 + 48);

    v33(&unk_24B2DF9D8, v32, ObjectType, v28);

    return;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_24B005084(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v2[7] = sub_24B2D5694();
  v2[8] = sub_24B2D5684();
  v4 = sub_24B2D5604();
  v2[9] = v4;
  v2[10] = v3;

  return MEMORY[0x2822009F8](sub_24B005120, v4, v3);
}

uint64_t sub_24B005120()
{
  v1 = v0[5];
  v0[11] = sub_24B2D5684();
  v2 = swift_allocObject();
  v0[12] = v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v4 = swift_task_alloc();
  v0[13] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_24B00527C;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_24B00527C()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_24B005418;
  }

  else
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_24B0053B4;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24B0053B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B005418()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_24B0054A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8138);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - v6;
  sub_24B2D5694();
  v8 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  v10 = Strong;
  v11 = swift_unknownObjectWeakLoadStrong();
  if (!v11)
  {

LABEL_11:
    sub_24B2D5634();

    return;
  }

  v12 = v11;
  v28 = a1;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v29 = v8;
  v13 = sub_24B2D3184();
  __swift_project_value_buffer(v13, qword_27EFE4418);
  v14 = v10;
  v15 = sub_24B2D3164();
  v16 = sub_24B2D5934();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v27 = v12;
    v19 = v18;
    *v17 = 138412290;
    *(v17 + 4) = v14;
    *v18 = v10;
    v20 = v14;
    _os_log_impl(&dword_24AFD2000, v15, v16, "LocationDetailViewController: %@ - forwarding didSelectSendLocationMessage", v17, 0xCu);
    sub_24AFF8258(v19, &qword_27EFC7BB8);
    v21 = v19;
    v12 = v27;
    MEMORY[0x24C23D530](v21, -1, -1);
    MEMORY[0x24C23D530](v17, -1, -1);
  }

  isa = MessagePayload.createMSMessage()().super.isa;
  (*(v5 + 16))(v7, v28, v4);
  v23 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v24 = swift_allocObject();
  (*(v5 + 32))(v24 + v23, v7, v4);
  aBlock[4] = sub_24B008D50;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24B00585C;
  aBlock[3] = &block_descriptor_26;
  v25 = _Block_copy(aBlock);

  [v12 detailsController:v14 didSelectSendLocationMessage:isa completion:v25];
  _Block_release(v25);

  swift_unknownObjectRelease();
}

void sub_24B00585C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_24B0058C8(uint64_t a1)
{
  v1[5] = a1;
  v1[6] = sub_24B2D5694();
  v1[7] = sub_24B2D5684();
  v3 = sub_24B2D5604();
  v1[8] = v3;
  v1[9] = v2;

  return MEMORY[0x2822009F8](sub_24B005964, v3, v2);
}

uint64_t sub_24B005964()
{
  v0[10] = sub_24B2D5684();
  v0[11] = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_24B005AA8;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_24B005AA8()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_24B005C30;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_24B005BCC;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24B005BCC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B005C30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B005CA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8138);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - v4;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_12;
  }

  v7 = Strong;
  v8 = swift_unknownObjectWeakLoadStrong();
  if (!v8)
  {

LABEL_12:
    sub_24B2D5634();
  }

  v9 = v8;
  v24 = v3;
  v25 = a1;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v10 = sub_24B2D3184();
  __swift_project_value_buffer(v10, qword_27EFE4418);
  v11 = v7;
  v12 = sub_24B2D3164();
  v13 = sub_24B2D5934();
  v26 = v11;

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = v26;
    *(v14 + 4) = v26;
    *v15 = v7;
    v17 = v16;
    _os_log_impl(&dword_24AFD2000, v12, v13, "LocationDetailViewController: %@ - forwarding didSelectStopSharingWithCompletion", v14, 0xCu);
    sub_24AFF8258(v15, &qword_27EFC7BB8);
    MEMORY[0x24C23D530](v15, -1, -1);
    MEMORY[0x24C23D530](v14, -1, -1);
  }

  if ([v9 respondsToSelector_])
  {
    v18 = v24;
    (*(v24 + 16))(v5, v25, v2);
    v19 = (*(v18 + 80) + 16) & ~*(v18 + 80);
    v20 = swift_allocObject();
    (*(v18 + 32))(v20 + v19, v5, v2);
    aBlock[4] = sub_24B008E3C;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24B00585C;
    aBlock[3] = &block_descriptor;
    v21 = _Block_copy(aBlock);
    v22 = v26;
    [v9 detailsController:v26 didSelectStopSharingWithCompletion:v21];
    swift_unknownObjectRelease();

    _Block_release(v21);
  }

  sub_24B2D5634();

  return swift_unknownObjectRelease();
}

uint64_t sub_24B006088(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8138);
    return sub_24B2D5624();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8138);
    return sub_24B2D5634();
  }
}

void sub_24B006118(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

id LocationDetailViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_24B2D5374();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id LocationDetailViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = &v3[OBJC_IVAR___FMUILocationDetailViewController_viewModel];
  v8 = OBJC_IVAR___FMUILocationDetailViewController_hostingViewController;
  *v7 = sub_24B00142C();
  v7[1] = v9;
  *&v3[v8] = v10;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR___FMUILocationDetailViewController_viewOptions;
  if (qword_27EFC75D0 != -1)
  {
    swift_once();
  }

  v12 = qword_27EFC7F58;
  *&v3[v11] = qword_27EFC7F58;
  v13 = v12;
  if (a2)
  {
    v14 = sub_24B2D5374();
  }

  else
  {
    v14 = 0;
  }

  v17.receiver = v3;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, sel_initWithNibName_bundle_, v14, a3);

  return v15;
}

id LocationDetailViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id LocationDetailViewController.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR___FMUILocationDetailViewController_viewModel];
  v5 = OBJC_IVAR___FMUILocationDetailViewController_hostingViewController;
  *v4 = sub_24B00142C();
  v4[1] = v6;
  *&v1[v5] = v7;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR___FMUILocationDetailViewController_viewOptions;
  if (qword_27EFC75D0 != -1)
  {
    swift_once();
  }

  v9 = qword_27EFC7F58;
  *&v1[v8] = qword_27EFC7F58;
  v13.receiver = v1;
  v13.super_class = ObjectType;
  v10 = v9;
  v11 = objc_msgSendSuper2(&v13, sel_initWithCoder_, a1);

  if (v11)
  {
  }

  return v11;
}

uint64_t sub_24B006640(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AFFD370;

  return sub_24B001D10(a1, v4, v5, v7, v6);
}

char *sub_24B006774(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFCE7C0);
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

char *sub_24B0069D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8050);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_24B006AD8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7FF0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_24B006D1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC80B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_24B006ED4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8068);
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

char *sub_24B007068(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

size_t sub_24B007178(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

size_t sub_24B007388(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

size_t sub_24B0075B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_24B0076B0(size_t a1, int64_t a2, char a3)
{
  result = sub_24B0084AC(a1, a2, a3, *v3, &qword_27EFC8660, &unk_24B2DFDA0, _s14descr285E46659O16SubscriptionDataOMa);
  *v3 = result;
  return result;
}

size_t sub_24B0076F4(size_t a1, int64_t a2, char a3)
{
  result = sub_24B0084AC(a1, a2, a3, *v3, &qword_27EFC7980, &unk_24B2DFC00, MEMORY[0x277D08BF8]);
  *v3 = result;
  return result;
}

size_t sub_24B007738(size_t a1, int64_t a2, char a3)
{
  result = sub_24B0084AC(a1, a2, a3, *v3, &qword_27EFC7FD0, &unk_24B2DFC30, type metadata accessor for ListPersonInfo);
  *v3 = result;
  return result;
}

size_t sub_24B00777C(size_t a1, int64_t a2, char a3)
{
  result = sub_24B0084AC(a1, a2, a3, *v3, &qword_27EFC7FB8, &unk_24B2DFC18, type metadata accessor for PeopleLocationsProvider.Subscription);
  *v3 = result;
  return result;
}

size_t sub_24B0077C0(size_t a1, int64_t a2, char a3)
{
  result = sub_24B0084AC(a1, a2, a3, *v3, &qword_27EFC7FC0, &unk_24B2DFC20, MEMORY[0x277D08C40]);
  *v3 = result;
  return result;
}

size_t sub_24B007804(size_t a1, int64_t a2, char a3)
{
  result = sub_24B0084AC(a1, a2, a3, *v3, &qword_27EFC7FC8, &unk_24B2ECC80, type metadata accessor for ContactsProvider.Subscription);
  *v3 = result;
  return result;
}

size_t sub_24B007848(size_t a1, int64_t a2, char a3)
{
  result = sub_24B0084AC(a1, a2, a3, *v3, &qword_27EFC8028, &unk_24B2DFC88, MEMORY[0x277D08B20]);
  *v3 = result;
  return result;
}

size_t sub_24B00788C(size_t a1, int64_t a2, char a3)
{
  result = sub_24B0084AC(a1, a2, a3, *v3, &qword_27EFC7978, &unk_24B2DE6F0, type metadata accessor for Friend);
  *v3 = result;
  return result;
}

char *sub_24B0078D0(char *a1, int64_t a2, char a3)
{
  result = sub_24B007CE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_24B0078F0(size_t a1, int64_t a2, char a3)
{
  result = sub_24B0084AC(a1, a2, a3, *v3, &qword_27EFC7FB0, &unk_24B2DFC10, MEMORY[0x277D092D8]);
  *v3 = result;
  return result;
}

void *sub_24B007934(void *a1, int64_t a2, char a3)
{
  result = sub_24B007EE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_24B007954(size_t a1, int64_t a2, char a3)
{
  result = sub_24B0084AC(a1, a2, a3, *v3, &qword_27EFC80D8, &unk_24B2DFD38, type metadata accessor for ItemsLocationsProvider.Subscription);
  *v3 = result;
  return result;
}

size_t sub_24B007998(size_t a1, int64_t a2, char a3)
{
  result = sub_24B0084AC(a1, a2, a3, *v3, &qword_27EFC80E8, &unk_24B2DFD48, type metadata accessor for ListItemInfo);
  *v3 = result;
  return result;
}

char *sub_24B0079DC(char *a1, int64_t a2, char a3)
{
  result = sub_24B008040(a1, a2, a3, *v3, &qword_27EFC7FF0);
  *v3 = result;
  return result;
}

char *sub_24B007A0C(char *a1, int64_t a2, char a3)
{
  result = sub_24B008040(a1, a2, a3, *v3, &qword_27EFC80C0);
  *v3 = result;
  return result;
}

char *sub_24B007A3C(char *a1, int64_t a2, char a3)
{
  result = sub_24B00813C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24B007A5C(char *a1, int64_t a2, char a3)
{
  result = sub_24B008258(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_24B007A7C(size_t a1, int64_t a2, char a3)
{
  result = sub_24B0084AC(a1, a2, a3, *v3, &qword_27EFC80A8, &unk_24B2DFD08, MEMORY[0x277D08E20]);
  *v3 = result;
  return result;
}

size_t sub_24B007AC0(size_t a1, int64_t a2, char a3)
{
  result = sub_24B0084AC(a1, a2, a3, *v3, &qword_27EFC80A0, &unk_24B2DFD00, MEMORY[0x277D08B50]);
  *v3 = result;
  return result;
}

size_t sub_24B007B04(size_t a1, int64_t a2, char a3)
{
  result = sub_24B0084AC(a1, a2, a3, *v3, &qword_27EFC8098, &unk_24B2DFCF8, MEMORY[0x277D08D28]);
  *v3 = result;
  return result;
}

size_t sub_24B007B48(size_t a1, int64_t a2, char a3)
{
  result = sub_24B0084AC(a1, a2, a3, *v3, &qword_27EFC8038, &unk_24B2DFC98, type metadata accessor for SettingsPersonInfo);
  *v3 = result;
  return result;
}

size_t sub_24B007B8C(size_t a1, int64_t a2, char a3)
{
  result = sub_24B0084AC(a1, a2, a3, *v3, &qword_27EFC8030, &unk_24B2DFC90, type metadata accessor for SettingsContactsProvider.Subscription);
  *v3 = result;
  return result;
}

void *sub_24B007BD0(void *a1, int64_t a2, char a3)
{
  result = sub_24B008364(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_24B007BF0(size_t a1, int64_t a2, char a3)
{
  result = sub_24B0084AC(a1, a2, a3, *v3, &qword_27EFC8008, &unk_24B2DFC68, MEMORY[0x277D08CF8]);
  *v3 = result;
  return result;
}

size_t sub_24B007C34(size_t a1, int64_t a2, char a3)
{
  result = sub_24B0084AC(a1, a2, a3, *v3, &qword_27EFC7FF8, &unk_24B2DFC58, MEMORY[0x277D08DB8]);
  *v3 = result;
  return result;
}

size_t sub_24B007C78(size_t a1, int64_t a2, char a3)
{
  result = sub_24B0084AC(a1, a2, a3, *v3, &qword_27EFC7FD8, &unk_24B2DFC38, type metadata accessor for Icon);
  *v3 = result;
  return result;
}

char *sub_24B007CE4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFCE7C0);
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

char *sub_24B007DF0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8150);
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