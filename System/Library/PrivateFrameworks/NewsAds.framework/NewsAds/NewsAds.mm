id Assembly.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___NMAssembly_assemblies;
  sub_1D76646FC();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7709E80;
  v4 = type metadata accessor for ContextAssembly();
  v5 = swift_allocObject();
  *(v3 + 56) = v4;
  *(v3 + 64) = sub_1D76647DC(qword_1EE0B22D8, type metadata accessor for ContextAssembly);
  *(v3 + 32) = v5;
  v6 = type metadata accessor for CommandAssembly();
  v7 = swift_allocObject();
  *(v3 + 96) = v6;
  *(v3 + 104) = sub_1D76647DC(qword_1EE0B2378, type metadata accessor for CommandAssembly);
  *(v3 + 72) = v7;
  v8 = type metadata accessor for ManagerAssembly();
  v9 = swift_allocObject();
  *(v3 + 136) = v8;
  *(v3 + 144) = sub_1D76647DC(qword_1EE0B2238, type metadata accessor for ManagerAssembly);
  *(v3 + 112) = v9;
  v10 = type metadata accessor for PPTAssembly();
  v11 = swift_allocObject();
  *(v3 + 176) = v10;
  *(v3 + 184) = sub_1D76647DC(&qword_1EE0B2698, type metadata accessor for PPTAssembly);
  *(v3 + 152) = v11;
  v12 = type metadata accessor for PreviewAssembly();
  v13 = swift_allocObject();
  *(v3 + 216) = v12;
  *(v3 + 224) = sub_1D76647DC(&qword_1EE0B2180, type metadata accessor for PreviewAssembly);
  *(v3 + 192) = v13;
  v14 = type metadata accessor for ProviderAssembly();
  v15 = swift_allocObject();
  *(v3 + 256) = v14;
  *(v3 + 264) = sub_1D76647DC(qword_1EE0B1FB8, type metadata accessor for ProviderAssembly);
  *(v3 + 232) = v15;
  v16 = type metadata accessor for RendererAssembly();
  v17 = swift_allocObject();
  *(v3 + 296) = v16;
  *(v3 + 304) = sub_1D76647DC(qword_1EE0B1F18, type metadata accessor for RendererAssembly);
  *(v3 + 272) = v17;
  v18 = type metadata accessor for StoreAssembly();
  v19 = swift_allocObject();
  *(v3 + 336) = v18;
  *(v3 + 344) = sub_1D76647DC(&qword_1EE0B2498, type metadata accessor for StoreAssembly);
  *(v3 + 312) = v19;
  *&v0[v2] = v3;
  v21.receiver = v0;
  v21.super_class = ObjectType;
  return objc_msgSendSuper2(&v21, sel_init);
}

void sub_1D76646FC()
{
  if (!qword_1EE0B0D90)
  {
    sub_1D7664754();
    v0 = sub_1D7704A20();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0B0D90);
    }
  }
}

unint64_t sub_1D7664754()
{
  result = qword_1EE0B26A8;
  if (!qword_1EE0B26A8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0B26A8);
  }

  return result;
}

uint64_t sub_1D76647DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7664938()
{
  v0 = sub_1D7703600();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00]();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7703430();
  sub_1D7664B2C();
  sub_1D7703540();

  v4 = *(v1 + 104);
  v4(v3, *MEMORY[0x1E69D6AB8], v0);
  sub_1D7703320();

  v5 = *(v1 + 8);
  v5(v3, v0);
  sub_1D7703430();
  sub_1D7703540();

  v4(v3, *MEMORY[0x1E69D6AD0], v0);
  sub_1D7703320();

  return (v5)(v3, v0);
}

unint64_t sub_1D7664B2C()
{
  result = qword_1EE0B1C08;
  if (!qword_1EE0B1C08)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0B1C08);
  }

  return result;
}

uint64_t sub_1D7664B90()
{
  v0 = sub_1D7703420();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00]();
  v3 = &v6[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7703450();
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_1D7665880();
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6500], v0);
  sub_1D7703560();
  (*(v1 + 8))(v3, v0);
  __swift_destroy_boxed_opaque_existential_1(v6);
  sub_1D7703440();
  sub_1D7703520();
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
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

uint64_t sub_1D7664D68(uint64_t a1)
{
  v18[0] = sub_1D7703420();
  v19 = *(v18[0] - 8);
  MEMORY[0x1EEE9AC00](v18[0], v2);
  v4 = (v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1D7703600();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = a1;
  sub_1D7703430();
  sub_1D7665328(0, qword_1EE0B24A0);
  sub_1D7703540();

  sub_1D7703310();

  v10 = *MEMORY[0x1E69D6AD0];
  v11 = *(v6 + 104);
  v11(v9, v10, v5);
  sub_1D7703320();

  v12 = *(v6 + 8);
  v12(v9, v5);
  sub_1D7703430();
  sub_1D7665328(0, &qword_1EE0B1C00);
  sub_1D7703540();

  v11(v9, v10, v5);
  sub_1D7703320();

  v12(v9, v5);
  sub_1D7703430();
  sub_1D7665328(0, qword_1EE0B12E0);
  sub_1D7703540();

  sub_1D7703450();
  __swift_project_boxed_opaque_existential_1(v20, v21);
  sub_1D7703510();
  v13 = v19;
  v14 = *(v19 + 104);
  v15 = v18[0];
  v14(v4, *MEMORY[0x1E69D6500], v18[0]);
  sub_1D7703550();
  v16 = *(v13 + 8);
  v19 = v13 + 8;
  v16(v4, v15);
  __swift_destroy_boxed_opaque_existential_1(v20);
  sub_1D7703450();
  __swift_project_boxed_opaque_existential_1(v20, v21);
  sub_1D7665328(0, &qword_1EE0B1C08);
  *v4 = 7368801;
  v4[1] = 0xE300000000000000;
  v14(v4, *MEMORY[0x1E69D6508], v15);
  sub_1D7703560();
  v16(v4, v15);
  __swift_destroy_boxed_opaque_existential_1(v20);
  sub_1D7703430();
  sub_1D7665328(0, qword_1EE0B1CA0);
  sub_1D7703540();

  sub_1D7703430();
  sub_1D7665328(0, &qword_1EE0AF9E8);
  sub_1D7703540();

  sub_1D7703430();
  sub_1D7665328(0, qword_1EE0AF558);
  sub_1D7703540();

  sub_1D7703440();
  sub_1D7703520();
}

uint64_t sub_1D7665328(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1D7665384()
{
  sub_1D7703430();
  sub_1D76653F4();
  sub_1D7703540();
}

unint64_t sub_1D76653F4()
{
  result = qword_1EE0B0EC0;
  if (!qword_1EE0B0EC0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0B0EC0);
  }

  return result;
}

uint64_t sub_1D7665458()
{
  v0 = sub_1D7703600();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7703430();
  sub_1D76658E0();
  sub_1D7703540();

  (*(v1 + 104))(v4, *MEMORY[0x1E69D6AD0], v0);
  sub_1D7703320();

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1D76655A0()
{
  sub_1D7703430();
  type metadata accessor for ContentBannerAdProviderFactory();
  sub_1D7703530();

  sub_1D7703430();
  type metadata accessor for FeedBannerAdProviderFactory();
  sub_1D7703530();

  sub_1D7703430();
  type metadata accessor for InterstitialAdProviderFactory();
  sub_1D7703530();

  sub_1D7703430();
  type metadata accessor for PrerollAdProviderFactory();
  sub_1D7703530();

  sub_1D7703430();
  type metadata accessor for PrerollAdProvider();
  sub_1D7703530();

  sub_1D7703430();
  type metadata accessor for NativeAdProviderFactory();
  sub_1D7703530();

  sub_1D7703430();
  type metadata accessor for SponsorshipAdProviderFactory();
  sub_1D7703530();

  sub_1D7703440();
  sub_1D7703520();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1D7665880()
{
  result = qword_1EE0B26A0;
  if (!qword_1EE0B26A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0B26A0);
  }

  return result;
}

unint64_t sub_1D76658E0()
{
  result = qword_1EE0B1D40;
  if (!qword_1EE0B1D40)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0B1D40);
  }

  return result;
}

uint64_t sub_1D7665A00()
{
  v0 = sub_1D7703600();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7703430();
  sub_1D7665B48();
  sub_1D7703540();

  (*(v1 + 104))(v4, *MEMORY[0x1E69D6AD0], v0);
  sub_1D7703320();

  return (*(v1 + 8))(v4, v0);
}

unint64_t sub_1D7665B48()
{
  result = qword_1EE0B1890;
  if (!qword_1EE0B1890)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0B1890);
  }

  return result;
}

void sub_1D7665BAC()
{
  sub_1D77038B0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D7665D28()
{
  v0 = sub_1D7703600();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7703430();
  sub_1D7666184(0, qword_1EE0B1608);
  sub_1D7703540();

  sub_1D7703430();
  sub_1D7666184(0, &qword_1EE0B1890);
  sub_1D7703540();

  (*(v1 + 104))(v4, *MEMORY[0x1E69D6AD0], v0);
  sub_1D7703320();

  (*(v1 + 8))(v4, v0);
  sub_1D7703430();
  type metadata accessor for BannerAdViewLayoutAttributesFactory();
  sub_1D7703530();

  sub_1D7703440();
  sub_1D7703520();

  sub_1D7703430();
  sub_1D7666184(0, qword_1EE0B10C8);
  sub_1D7703540();

  sub_1D7703440();
  sub_1D7666184(0, &qword_1EE0B12C0);
  sub_1D7703540();

  sub_1D7703430();
  sub_1D7666184(0, &qword_1EE0B0F60);
  sub_1D7703540();

  sub_1D7703430();
  sub_1D7666184(0, qword_1EE0B0F68);
  sub_1D7703540();

  sub_1D7703440();
  sub_1D7666184(0, qword_1EE0B1020);
  sub_1D7703540();

  sub_1D7703430();
  sub_1D7666184(0, &qword_1EE0B0F58);
  sub_1D7703540();
}

uint64_t sub_1D7666184(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1D76661F4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void sub_1D76662B0()
{
  sub_1D77038B0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1D7666364()
{
  result = qword_1EE0B19E8;
  if (!qword_1EE0B19E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B19E8);
  }

  return result;
}

unint64_t sub_1D76663B8()
{
  result = qword_1EE0B19F0[0];
  if (!qword_1EE0B19F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0B19F0);
  }

  return result;
}

unint64_t sub_1D766640C(uint64_t a1)
{
  *(a1 + 24) = sub_1D7666364();
  result = sub_1D76663B8();
  *(a1 + 32) = result;
  return result;
}

uint64_t type metadata accessor for ContentBannerAdPlacement()
{
  result = qword_1EE0B15F8;
  if (!qword_1EE0B15F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for RecipeBannerAdPlacement()
{
  result = qword_1EE0B1698;
  if (!qword_1EE0B1698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D76664FC(uint64_t a1)
{
  *(a1 + 24) = sub_1D766652C();
  result = sub_1D7666580();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_1D766652C()
{
  result = qword_1EE0B1898;
  if (!qword_1EE0B1898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B1898);
  }

  return result;
}

unint64_t sub_1D7666580()
{
  result = qword_1EE0B18A0[0];
  if (!qword_1EE0B18A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0B18A0);
  }

  return result;
}

unint64_t sub_1D76665E4(uint64_t a1)
{
  *(a1 + 24) = sub_1D7666614();
  result = sub_1D7666668();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_1D7666614()
{
  result = qword_1EE0B1C10;
  if (!qword_1EE0B1C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B1C10);
  }

  return result;
}

unint64_t sub_1D7666668()
{
  result = qword_1EE0B1C18[0];
  if (!qword_1EE0B1C18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0B1C18);
  }

  return result;
}

uint64_t sub_1D76666BC()
{
  result = sub_1D77038B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D7666750(uint64_t a1)
{
  *(a1 + 24) = sub_1D7666780();
  result = sub_1D76667D4();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_1D7666780()
{
  result = qword_1EE0B2190;
  if (!qword_1EE0B2190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B2190);
  }

  return result;
}

unint64_t sub_1D76667D4()
{
  result = qword_1EE0B2198[0];
  if (!qword_1EE0B2198[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0B2198);
  }

  return result;
}

unint64_t sub_1D7666838(uint64_t a1)
{
  *(a1 + 24) = sub_1D7666868();
  result = sub_1D76668BC();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_1D7666868()
{
  result = qword_1EE0B1B38;
  if (!qword_1EE0B1B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B1B38);
  }

  return result;
}

unint64_t sub_1D76668BC()
{
  result = qword_1EE0B1B40;
  if (!qword_1EE0B1B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B1B40);
  }

  return result;
}

unint64_t sub_1D7666948(uint64_t a1)
{
  *(a1 + 24) = sub_1D7666978();
  result = sub_1D76669CC();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_1D7666978()
{
  result = qword_1EE0B1B48;
  if (!qword_1EE0B1B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B1B48);
  }

  return result;
}

unint64_t sub_1D76669CC()
{
  result = qword_1EE0B1B50;
  if (!qword_1EE0B1B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B1B50);
  }

  return result;
}

uint64_t sub_1D7666A40(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7666A98()
{
  result = type metadata accessor for NativeAdInfo.Fulfilled(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D7666B0C()
{
  sub_1D7666C3C();
  if (v0 <= 0x3F)
  {
    sub_1D7666C8C(319, qword_1EE0B0ED0, type metadata accessor for Journal);
    if (v1 <= 0x3F)
    {
      sub_1D7666C8C(319, qword_1EE0B0DA8, type metadata accessor for AdRequest);
      if (v2 <= 0x3F)
      {
        sub_1D7665328(319, qword_1EE0B1748);
        if (v3 <= 0x3F)
        {
          sub_1D7703D50();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D7666C3C()
{
  if (!qword_1EE0B0DA0)
  {
    v0 = sub_1D77046B0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0B0DA0);
    }
  }
}

void sub_1D7666C8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for NativeAdContext;
    v8[1] = type metadata accessor for NativeAdPlacement();
    v8[2] = sub_1D7666D14();
    v8[3] = &protocol witness table for NativeAdPlacement;
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1D7666D14()
{
  result = qword_1EE0B2188;
  if (!qword_1EE0B2188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B2188);
  }

  return result;
}

uint64_t type metadata accessor for NativeAdPlacement()
{
  result = qword_1EE0B1E70;
  if (!qword_1EE0B1E70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7666DEC()
{
  type metadata accessor for AdContext();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_1D7666F64(319, qword_1EE0B0E30);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D7666EEC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D7666F64(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D77046B0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1D7666FB0()
{
  sub_1D77038B0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1D766705C(uint64_t a1)
{
  *(a1 + 24) = sub_1D766708C();
  result = sub_1D76670E0();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_1D766708C()
{
  result = qword_1EE0B12C8;
  if (!qword_1EE0B12C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B12C8);
  }

  return result;
}

unint64_t sub_1D76670E0()
{
  result = qword_1EE0B12D0;
  if (!qword_1EE0B12D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B12D0);
  }

  return result;
}

unint64_t sub_1D76671A4(uint64_t a1)
{
  *(a1 + 24) = sub_1D76671D4();
  result = sub_1D7667228();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_1D76671D4()
{
  result = qword_1EE0B12B0;
  if (!qword_1EE0B12B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B12B0);
  }

  return result;
}

unint64_t sub_1D7667228()
{
  result = qword_1EE0B12B8;
  if (!qword_1EE0B12B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B12B8);
  }

  return result;
}

unint64_t sub_1D7667284()
{
  result = qword_1EE0AF790;
  if (!qword_1EE0AF790)
  {
    sub_1D76673E4();
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0AF790);
  }

  return result;
}

void sub_1D76672F0()
{
  sub_1D7667284();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for AdRequest();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Journal();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1D76673E4()
{
  result = qword_1EE0AECF0;
  if (!qword_1EE0AECF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0AECF0);
  }

  return result;
}

uint64_t sub_1D7667488()
{
  result = type metadata accessor for NativeAdHeadline(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D76674F0()
{
  sub_1D766759C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for NativeAdInfo.Fulfilled(319);
    if (v1 <= 0x3F)
    {
      sub_1D7667600();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1D766759C()
{
  result = qword_1EE0AED28;
  if (!qword_1EE0AED28)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0AED28);
  }

  return result;
}

void sub_1D7667600()
{
  if (!qword_1EE0B0ED0[0])
  {
    type metadata accessor for NativeAdPlacement();
    sub_1D7666D14();
    v0 = type metadata accessor for Journal();
    if (!v1)
    {
      atomic_store(v0, qword_1EE0B0ED0);
    }
  }
}

uint64_t sub_1D7667680(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for DebugCommandHandler();
  result = sub_1D7703400();
  if (result)
  {
    swift_getObjectType();
    if (qword_1EE0B07F0 != -1)
    {
      swift_once();
    }

    sub_1D76679B4();
    sub_1D7703F40();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7667794()
{
  type metadata accessor for DebugCommandHandler();
  sub_1D7703530();
}

uint64_t sub_1D76677F4()
{
  type metadata accessor for DebugCommandHandler();

  return swift_allocObject();
}

void sub_1D7667828(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for DebugJournal);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D766787C()
{
  sub_1D7667828(0, &qword_1EE0B0808, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00]();
  v4 = &v6 - v3;
  sub_1D7667828(0, &qword_1EE0B0800, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v4, *MEMORY[0x1E69D8780], v1);
  result = sub_1D7704040();
  qword_1EE0B07F8 = result;
  return result;
}

unint64_t sub_1D76679B4()
{
  result = qword_1EE0AF9E0;
  if (!qword_1EE0AF9E0)
  {
    type metadata accessor for DebugCommandHandler();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AF9E0);
  }

  return result;
}

uint64_t sub_1D7667A0C(void *a1)
{
  v2 = sub_1D7702FA0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00]();
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7664B2C();
  result = sub_1D77033E0();
  v7 = v14;
  if (v14)
  {
    v8 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    sub_1D7702F90();
    v9 = sub_1D7702F70();
    v11 = v10;
    (*(v3 + 8))(v5, v2);
    (*(v8 + 24))(0x656E656353, 0xE500000000000000, v9, v11, v7, v8);

    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D7667BCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7667C54(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1D7667CB8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1D7667CD0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7665328(0, &qword_1EE0B1D40);
  result = sub_1D7703410();
  if (v6)
  {
    v4 = type metadata accessor for AdManager();
    swift_allocObject();
    result = AdManager.init(previewQueue:)(v5);
    a2[3] = v4;
    a2[4] = &protocol witness table for AdManager;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1D7667D7C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AdPreviewQueue();
  v3 = swift_allocObject();
  result = sub_1D7668DF8(MEMORY[0x1E69E7CC0]);
  *(v3 + 16) = result;
  a1[3] = v2;
  a1[4] = &off_1F5251CA0;
  *a1 = v3;
  return result;
}

uint64_t sub_1D7667DE0(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v2 = type metadata accessor for AdsModuleStartupTask();
  result = sub_1D7703400();
  if (result)
  {
    v4 = result;
    v5[3] = v2;
    v5[4] = sub_1D7667EA8(&qword_1EE0B05B8, type metadata accessor for AdsModuleStartupTask);
    v5[0] = v4;
    sub_1D7703500();
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7667EA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7667EF0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D6920];
  v3 = sub_1D7703570();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

double sub_1D7667F8C@<D0>(uint64_t *a1@<X8>)
{
  sub_1D7703370();
  MEMORY[0x1EEE9AC00]();
  v2 = type metadata accessor for AdContextBuilder();
  v3 = swift_allocObject();
  sub_1D7703360();
  sub_1D7703390();
  swift_allocObject();
  *(v3 + 40) = sub_1D7703380();
  *(v3 + 48) = sub_1D76680A0(MEMORY[0x1E69E7CC0]);
  result = 0.0;
  *(v3 + 16) = xmmword_1D770EF00;
  *(v3 + 32) = 0xE400000000000000;
  a1[3] = v2;
  a1[4] = &protocol witness table for AdContextBuilder;
  *a1 = v3;
  return result;
}

unint64_t sub_1D76680A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D7669AF0();
    v3 = sub_1D77048B0();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D76AE174(v4, &v13, sub_1D76AE48C);
      v5 = v13;
      v6 = v14;
      result = sub_1D76689AC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D7667CB8(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1D76681C4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1D7668218(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D766BB6C(0, &qword_1EE0AECB0);
    v3 = sub_1D77048B0();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D76AE2B0(v4, &v13, &qword_1EC9BD5A0);
      v5 = v13;
      v6 = v14;
      result = sub_1D76689AC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D766B74C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1D7668348(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7665328(0, &qword_1EE0B1C08);
  return sub_1D77033A0();
}

void sub_1D76683B0()
{
  if (!qword_1EE0B0878)
  {
    sub_1D7665328(255, qword_1EE0AF0C8);
    v0 = sub_1D77035D0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0B0878);
    }
  }
}

uint64_t sub_1D766844C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1D7668494()
{
  result = qword_1EE0B0450;
  if (!qword_1EE0B0450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0450);
  }

  return result;
}

unint64_t sub_1D76684E8()
{
  result = qword_1EE0B0458;
  if (!qword_1EE0B0458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0458);
  }

  return result;
}

uint64_t AdContextBuilderType.pushData<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = 0;
  v6[1] = 0;
  v7 = -1;
  return (*(a4 + 32))(a1, v6, a3, a5, a2, a4);
}

uint64_t AdContextBuilder.pushData<A>(_:namespace:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v6 = *a2;
  v7 = a2[1];
  v8 = *(a2 + 16);
  v23[3] = swift_getMetatypeMetadata();
  v23[0] = a3;
  v21[0] = v6;
  v21[1] = v7;
  v22 = v8;
  v9 = sub_1D766C108(v23, v21);
  v11 = v10;
  __swift_destroy_boxed_opaque_existential_1(v23);
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  sub_1D766940C(0, &qword_1EE0AEBF0, &qword_1EE0AEBC0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D7708FD0;
  v13 = MEMORY[0x1E69E6158];
  *(v12 + 56) = MEMORY[0x1E69E6158];
  v14 = sub_1D7668854();
  *(v12 + 64) = v14;
  *(v12 + 32) = v9;
  *(v12 + 40) = v11;

  v23[0] = AdContextBuilder.path.getter();
  sub_1D7668958(0, &qword_1EE0AED80, v13, MEMORY[0x1E69E62F8]);
  sub_1D7669758();
  v15 = sub_1D7704210();
  v17 = v16;

  *(v12 + 96) = v13;
  *(v12 + 104) = v14;
  *(v12 + 72) = v15;
  *(v12 + 80) = v17;
  sub_1D77045A0();
  sub_1D7703ED0();

  v23[0] = *(v4 + 40);
  MEMORY[0x1EEE9AC00](v18, v19);
  sub_1D7703390();

  sub_1D7703580();
}

unint64_t sub_1D7668808()
{
  result = qword_1EE0AECE0;
  if (!qword_1EE0AECE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0AECE0);
  }

  return result;
}

unint64_t sub_1D7668854()
{
  result = qword_1EE0AEDA0;
  if (!qword_1EE0AEDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AEDA0);
  }

  return result;
}

uint64_t AdContextBuilder.path.getter()
{
  v1 = v0;
  if (*(v0 + 16))
  {
    v2 = AdContextBuilder.path.getter();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  sub_1D7668958(0, &qword_1EE0AEC08, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7708FE0;
  v4 = *(v1 + 32);
  *(inited + 32) = *(v1 + 24);
  *(inited + 40) = v4;

  sub_1D7669540(inited);
  return v2;
}

void sub_1D7668958(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D76689AC(uint64_t a1, uint64_t a2)
{
  sub_1D7704AD0();
  sub_1D77042D0();
  v4 = sub_1D7704AF0();

  return sub_1D7668A24(a1, a2, v4);
}

unint64_t sub_1D7668A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1D7704A30())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1D7668ADC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D7669AF0();
  v33 = a2;
  result = sub_1D77048A0();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_1D7667CB8(v24, v34);
      }

      else
      {
        sub_1D7667C54(v24, v34);
      }

      sub_1D7704AD0();
      sub_1D77042D0();
      result = sub_1D7704AF0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1D7667CB8(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

unint64_t sub_1D7668DA4(uint64_t a1)
{
  *(a1 + 8) = sub_1D7669CEC();
  result = sub_1D7669D40();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D7668DF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D76AE078(0, &qword_1EC9BD588, &qword_1EC9BD590, &type metadata for AdPreviewQueue.AdPreviewWrapper, MEMORY[0x1E69E6EC8]);
    v3 = sub_1D77048B0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D76689AC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *AdManager.init(previewQueue:)(uint64_t a1)
{
  if (qword_1EE0B0CE8 != -1)
  {
    swift_once();
  }

  sub_1D7669334();
  swift_allocObject();

  v1[2] = sub_1D7703160();
  v1[13] = sub_1D7668218(MEMORY[0x1E69E7CC0]);
  sub_1D76683B0();
  swift_allocObject();
  v1[14] = sub_1D77035C0();
  swift_allocObject();
  v1[15] = sub_1D77035C0();
  sub_1D7667C54(a1, (v1 + 3));
  v5 = type metadata accessor for PromotedContentContextFactory();
  v6 = &off_1F5255DC0;
  *&v4 = swift_allocObject();
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_1D7667CB8(&v4, (v1 + 8));
  return v1;
}

uint64_t sub_1D7669050(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for AdContextManager();
  sub_1D7667C54(a1, v5);
  v3 = swift_allocObject();
  sub_1D7667CB8(v5, v3 + 16);
  sub_1D77033F0();
}

uint64_t sub_1D7669118()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7669150()
{
  v0 = sub_1D7703220();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00]();
  v3 = &v7[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D7703210();
  MEMORY[0x1EEE9AC00]();
  (*(v5 + 104))(&v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90]);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6EA0], v0);
  v7[15] = 1;
  sub_1D76681C4(0, &qword_1EE0B08A8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D7703270();
  qword_1EE0B0CF0 = result;
  return result;
}

void sub_1D7669334()
{
  if (!qword_1EE0B0918)
  {
    v0 = sub_1D7703150();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0B0918);
    }
  }
}

unint64_t sub_1D7669394()
{
  result = qword_1EE0B0460;
  if (!qword_1EE0B0460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0460);
  }

  return result;
}

void sub_1D766940C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D7665328(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D7669474(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D76694D8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D7665328(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D7669540(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1D7669634(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1D7669634(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D766C3F0(0, &qword_1EE0AEC08, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
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
    v10 = MEMORY[0x1E69E7CC0];
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

unint64_t sub_1D7669758()
{
  result = qword_1EE0AED78;
  if (!qword_1EE0AED78)
  {
    sub_1D76697B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AED78);
  }

  return result;
}

void sub_1D76697B0()
{
  if (!qword_1EE0AED80)
  {
    v0 = sub_1D77044B0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0AED80);
    }
  }
}

uint64_t sub_1D7669800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[3] = a5;
  v12[4] = a6;
  boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v12);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_2, a4, a5);
  swift_beginAccess();

  sub_1D76698BC(v12, a2, a3);
  return swift_endAccess();
}

uint64_t sub_1D76698BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1D7667CB8(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1D766999C(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_1D76EFB58(a1, &qword_1EE0AFCC8, &qword_1EE0AFCD0, &protocol descriptor for AdContextDataType);
    sub_1D76EF3CC(a2, a3, v9);

    return sub_1D76EFB58(v9, &qword_1EE0AFCC8, &qword_1EE0AFCD0, &protocol descriptor for AdContextDataType);
  }

  return result;
}

uint64_t sub_1D766999C(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D76689AC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1D767EF14();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D7668ADC(v16, a4 & 1);
    v11 = sub_1D76689AC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1D7704A70();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_1D7667CB8(a1, v22);
  }

  else
  {
    sub_1D7669B68(v11, a2, a3, a1, v21);
  }
}

void sub_1D7669AF0()
{
  if (!qword_1EE0AECB8)
  {
    sub_1D7665328(255, &qword_1EE0AFCD0);
    v0 = sub_1D77048C0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0AECB8);
    }
  }
}

uint64_t sub_1D7669B68(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1D7667CB8(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_1D7669BD8()
{
  result = qword_1EE0AED30;
  if (!qword_1EE0AED30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0AED30);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D7669CEC()
{
  result = qword_1EE0AEDB0;
  if (!qword_1EE0AEDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AEDB0);
  }

  return result;
}

unint64_t sub_1D7669D40()
{
  result = qword_1EE0AEDB8[0];
  if (!qword_1EE0AEDB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0AEDB8);
  }

  return result;
}

uint64_t AdContextBuilder.chain(_:identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11 = *v5;
  v12 = sub_1D7703370();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v14 = swift_allocObject();

  sub_1D7703360();
  sub_1D7703390();
  swift_allocObject();
  v14[5] = sub_1D7703380();
  v14[6] = sub_1D76680A0(MEMORY[0x1E69E7CC0]);
  v14[2] = v5;

  if (a4)
  {
    MEMORY[0x1DA6FF0D0](40, 0xE100000000000000);
    MEMORY[0x1DA6FF0D0](a3, a4);
    MEMORY[0x1DA6FF0D0](41, 0xE100000000000000);
  }

  v14[3] = a1;
  v14[4] = a2;
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  sub_1D766940C(0, &qword_1EE0AEBF0, &qword_1EE0AEBC0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D7708FE0;
  AdContextBuilder.path.getter();
  v16 = MEMORY[0x1E69E6158];
  sub_1D7668958(0, &qword_1EE0AED80, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1D7669758();
  v17 = sub_1D7704210();
  v19 = v18;

  *(v15 + 56) = v16;
  *(v15 + 64) = sub_1D7668854();
  *(v15 + 32) = v17;
  *(v15 + 40) = v19;
  sub_1D77045A0();
  sub_1D7703ED0();

  a5[3] = v11;
  a5[4] = &protocol witness table for AdContextBuilder;
  *a5 = v14;
  return result;
}

uint64_t AdRequestStore.init()()
{
  v1 = v0;
  v2 = sub_1D7703370();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_1D7703360();
  sub_1D7703390();
  swift_allocObject();
  *(v0 + 24) = sub_1D7703380();
  v4 = type metadata accessor for AdRequest();
  v5 = MEMORY[0x1E69E6158];
  swift_getTupleTypeMetadata2();
  v6 = sub_1D7704440();
  v7 = sub_1D766A1C4(v6, v5, v4, MEMORY[0x1E69E6168]);

  *(v1 + 16) = v7;
  return v1;
}

uint64_t sub_1D766A1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v11);
  v13 = v24 - v12;
  if (sub_1D7704470())
  {
    sub_1D77048C0();
    v14 = sub_1D77048B0();
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1D7704470();
  if (result)
  {
    if (result >= 1)
    {
      v24[0] = v10;
      v28 = a4;
      v16 = 0;
      v17 = *(TupleTypeMetadata2 + 48);
      v26 = a3;
      v27 = (v9 + 16);
      v24[2] = a2 - 8;
      v25 = v17;
      v24[1] = a3 - 8;
      while (1)
      {
        v18 = result;
        if (sub_1D7704450())
        {
          (*(v9 + 16))(v13, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v16, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1D7704750();
          if (v24[0] != 8)
          {
            goto LABEL_19;
          }

          v29 = result;
          (*v27)(v13, &v29, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1D769D1C8(v13, a2, v28);
        if (v19)
        {
          break;
        }

        v20 = result;
        *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v14[6] + *(*(a2 - 8) + 72) * result, v13, a2);
        result = (*(*(v26 - 8) + 32))(v14[7] + *(*(v26 - 8) + 72) * v20, &v13[v25]);
        v21 = v14[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_17;
        }

        ++v16;
        v14[2] = v23;
        result = v18;
        if (v18 == v16)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t Journal.init()()
{
  type metadata accessor for AnyProcessor();
  *(v0 + 16) = sub_1D7704180();
  type metadata accessor for JournalEntry();
  sub_1D77044B0();
  sub_1D77035D0();
  *(v0 + 24) = sub_1D77035B0();
  return v0;
}

void sub_1D766A624()
{
  sub_1D7702F50();
  if (v0 <= 0x3F)
  {
    sub_1D7666F64(319, &qword_1EE0B0DA0);
    if (v1 <= 0x3F)
    {
      sub_1D7666F64(319, &qword_1EE0AF6B8);
      if (v2 <= 0x3F)
      {
        sub_1D7666F64(319, &qword_1EE0AEFF8);
        if (v3 <= 0x3F)
        {
          type metadata accessor for AdRequest();
          sub_1D77046B0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t AdRequestManager.init(contextBuilder:adManager:requestStore:journal:host:)(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v12 = *a5;
  v9 = *(a5 + 2);
  v10 = *(a5 + 3);
  sub_1D7667CB8(a1, v5 + 16);
  sub_1D7667CB8(a2, v5 + 56);
  *(v5 + 96) = a3;
  *(v5 + 104) = a4;
  *(v5 + 112) = v12;
  *(v5 + 128) = v9;
  *(v5 + 136) = v10;
  return v5;
}

uint64_t sub_1D766A7C8(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v3 = type metadata accessor for ContentBannerAdProviderFactory();
  result = sub_1D7703400();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v74 = v5;
  sub_1D766AF78();
  inited = swift_initStaticObject();
  v69 = *(v7 + 40);
  v70 = type metadata accessor for ContentBannerAdProvider();
  v9 = type metadata accessor for ContentBannerAdPlacement();
  v10 = sub_1D766B03C();
  v69(&v74, inited, &type metadata for ContentBannerAdContext, v70, v9, v3, v10, &protocol witness table for ContentBannerAdPlacement, &protocol witness table for ContentBannerAdProviderFactory, v6, v7);
  v12 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v74 = v5;
  sub_1D766BC30();
  v13 = swift_initStaticObject();
  v14 = *(v11 + 40);
  v15 = type metadata accessor for RecipeBannerAdPlacement();
  v14(&v74, v13, &type metadata for ContentBannerAdContext, v70, v15, v3, v10, &protocol witness table for RecipeBannerAdPlacement, &protocol witness table for ContentBannerAdProviderFactory, v12, v11);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v16 = type metadata accessor for FeedBannerAdProviderFactory();
  result = sub_1D7703400();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v17 = result;
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v74 = v17;
  sub_1D766BCE8();
  v20 = swift_initStaticObject();
  v21 = *(v19 + 40);
  v22 = type metadata accessor for FeedBannerAdProvider();
  v23 = type metadata accessor for FeedBannerAdPlacement();
  v24 = sub_1D766BDF8();
  v21(&v74, v20, &type metadata for FeedBannerAdContext, v22, v23, v16, v24, &protocol witness table for FeedBannerAdPlacement, &protocol witness table for FeedBannerAdProviderFactory, v18, v19);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v25 = type metadata accessor for InterstitialAdProviderFactory();
  result = sub_1D7703400();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v26 = result;
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v74 = v26;
  sub_1D766BE64();
  v29 = swift_initStaticObject();
  v30 = *(v28 + 40);
  v71 = type metadata accessor for InterstitialAdProvider();
  v31 = type metadata accessor for InterstitialAdPlacement();
  v32 = sub_1D766C450();
  v30(&v74, v29, &type metadata for ArticleInterstitialAdContext, v71, v31, v25, v32, &protocol witness table for InterstitialAdPlacement, &protocol witness table for InterstitialAdProviderFactory, v27, v28);
  v34 = a1[3];
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v34);
  v74 = v26;
  sub_1D766C4A4();
  v35 = swift_initStaticObject();
  v36 = *(v33 + 40);
  v37 = sub_1D766C544();
  v36(&v74, v35, &type metadata for PreviewInterstitialAdContext, v71, v31, v25, v37, &protocol witness table for InterstitialAdPlacement, &protocol witness table for InterstitialAdProviderFactory, v34, v33);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v38 = type metadata accessor for PrerollAdProviderFactory();
  result = sub_1D7703400();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v39 = result;
  v40 = a1[3];
  v41 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v40);
  v74 = v39;
  sub_1D766C598();
  v42 = swift_initStaticObject();
  v43 = *(v41 + 40);
  v72 = type metadata accessor for PrerollAdProvider();
  v44 = type metadata accessor for PrerollAdPlacement();
  v45 = sub_1D766C638();
  v43(&v74, v42, &type metadata for ArticlePrerollAdContext, v72, v44, v38, v45, &protocol witness table for PrerollAdPlacement, &protocol witness table for PrerollAdProviderFactory, v40, v41);
  v47 = a1[3];
  v46 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v47);
  v74 = v39;
  sub_1D766BFD8();
  v48 = swift_initStaticObject();
  v49 = *(v46 + 40);
  v50 = sub_1D766C078();
  v49(&v74, v48, &type metadata for FeedPrerollAdContext, v72, v44, v38, v50, &protocol witness table for PrerollAdPlacement, &protocol witness table for PrerollAdProviderFactory, v47, v46);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v51 = type metadata accessor for NativeAdProviderFactory();
  result = sub_1D7703400();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v52 = result;
  v53 = a1[3];
  v54 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v53);
  v74 = v52;
  sub_1D766C68C();
  v55 = swift_initStaticObject();
  v56 = *(v54 + 40);
  v57 = type metadata accessor for NativeAdProvider();
  v58 = type metadata accessor for NativeAdPlacement();
  v59 = sub_1D7666D14();
  v56(&v74, v55, &type metadata for NativeAdContext, v57, v58, v51, v59, &protocol witness table for NativeAdPlacement, &protocol witness table for NativeAdProviderFactory, v53, v54);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v60 = type metadata accessor for SponsorshipAdProviderFactory();
  result = sub_1D7703400();
  if (result)
  {
    v61 = result;
    v62 = a1[3];
    v63 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v62);
    v74 = v61;
    sub_1D766C744();
    v64 = swift_initStaticObject();
    v65 = *(v63 + 40);
    v66 = type metadata accessor for SponsorshipAdProvider();
    v67 = type metadata accessor for SponsorshipAdPlacement();
    v68 = sub_1D766C808();
    v65(&v74, v64, &type metadata for SponsorshipAdContext, v66, v67, v60, v68, &protocol witness table for SponsorshipAdPlacement, &protocol witness table for SponsorshipAdProviderFactory, v62, v63);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1D766AF04(uint64_t a1, void (*a2)(void))
{
  sub_1D7667C54(a1, v5);
  a2(0);
  v3 = swift_allocObject();
  sub_1D7667CB8(v5, v3 + 16);
  return v3;
}

void sub_1D766AF78()
{
  if (!qword_1EE0AF1B8)
  {
    type metadata accessor for ContentBannerAdProvider();
    type metadata accessor for ContentBannerAdPlacement();
    sub_1D766B03C();
    v0 = type metadata accessor for Ad();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0AF1B8);
    }
  }
}

unint64_t sub_1D766B03C()
{
  result = qword_1EE0AF798;
  if (!qword_1EE0AF798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AF798);
  }

  return result;
}

uint64_t AdManager.register<A, B, C, D>(factory:for:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v7 = *a2;
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  sub_1D76694D8(0, &qword_1EE0AEBF0, &qword_1EE0AEBC0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D7708FE0;
  v12 = a2[2];
  v13 = a2[3];
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = sub_1D7668854();
  *(v11 + 32) = v12;
  *(v11 + 40) = v13;
  swift_bridgeObjectRetain_n();
  sub_1D77045A0();
  sub_1D7703ED0();

  (*(v8 + 16))(v10, a1, a3);
  v15 = *(v7 + 96);
  v16 = *(v7 + 104);
  v17 = *(v7 + 128);
  v23[0] = *(v7 + 88);
  v14 = v23[0];
  v23[1] = v15;
  v23[2] = v16;
  v21 = *(v7 + 112);
  v24 = v21;
  v25 = v17;
  v18 = type metadata accessor for Ad();
  v19 = sub_1D766B3F0(v10, v18, v15, v14, v16, a3, v21, v17, v22);
  *&v24 = type metadata accessor for AnyFactory();
  v23[0] = v19;
  swift_beginAccess();
  sub_1D766B67C(v23, v12, v13);
  return swift_endAccess();
}

uint64_t *sub_1D766B3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  type metadata accessor for AnyFactory();
  swift_allocObject();
  return sub_1D766B4C4(a1, a4, a5, a6, a7, a8, a9);
}

uint64_t *sub_1D766B4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *v7;
  v14 = *(a4 - 8);
  v15 = (*(v14 + 80) + 80) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = *(v13 + 80);
  *(v16 + 3) = *(v13 + 88);
  *(v16 + 4) = a2;
  *(v16 + 5) = a3;
  *(v16 + 6) = a4;
  *(v16 + 7) = a5;
  *(v16 + 8) = a6;
  *(v16 + 9) = a7;
  (*(v14 + 32))(&v16[v15], a1, a4);
  v7[2] = sub_1D767FA24;
  v7[3] = v16;
  return v7;
}

uint64_t sub_1D766B5FC()
{
  (*(*(*(v0 + 48) - 8) + 8))(v0 + ((*(*(*(v0 + 48) - 8) + 80) + 80) & ~*(*(*(v0 + 48) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1D766B67C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1D766B74C(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1D766B75C(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_1D76939B0(a1, &unk_1EE0AEBB0);
    sub_1D76EF538(a2, a3, v9);

    return sub_1D76939B0(v9, &unk_1EE0AEBB0);
  }

  return result;
}

_OWORD *sub_1D766B74C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

_OWORD *sub_1D766B75C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D76689AC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1D76E4878();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D766B8AC(v16, a4 & 1);
    v11 = sub_1D76689AC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1D7704A70();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_1D766B74C(a1, v22);
  }

  else
  {
    sub_1D766BBC4(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_1D766B8AC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D766BB6C(0, &qword_1EE0AECB0);
  v33 = a2;
  result = sub_1D77048A0();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1D766B74C(v24, v34);
      }

      else
      {
        sub_1D767F844(v24, v34);
      }

      sub_1D7704AD0();
      sub_1D77042D0();
      result = sub_1D7704AF0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1D766B74C(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

void sub_1D766BB6C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D77048C0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

_OWORD *sub_1D766BBC4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1D766B74C(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void sub_1D766BC30()
{
  if (!qword_1EE0AF1C0)
  {
    type metadata accessor for ContentBannerAdProvider();
    type metadata accessor for RecipeBannerAdPlacement();
    sub_1D766B03C();
    v0 = type metadata accessor for Ad();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0AF1C0);
    }
  }
}

void sub_1D766BCE8()
{
  if (!qword_1EE0AF1D8[0])
  {
    type metadata accessor for FeedBannerAdProvider();
    type metadata accessor for FeedBannerAdPlacement();
    sub_1D766BDF8();
    v0 = type metadata accessor for Ad();
    if (!v1)
    {
      atomic_store(v0, qword_1EE0AF1D8);
    }
  }
}

uint64_t type metadata accessor for FeedBannerAdPlacement()
{
  result = qword_1EE0B1B28;
  if (!qword_1EE0B1B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D766BDF8()
{
  result = qword_1EE0AF940;
  if (!qword_1EE0AF940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AF940);
  }

  return result;
}

void sub_1D766BE64()
{
  if (!qword_1EE0AF1A8)
  {
    type metadata accessor for InterstitialAdProvider();
    type metadata accessor for InterstitialAdPlacement();
    sub_1D766C450();
    v0 = type metadata accessor for Ad();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0AF1A8);
    }
  }
}

uint64_t type metadata accessor for InterstitialAdPlacement()
{
  result = qword_1EE0B17D8;
  if (!qword_1EE0B17D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for PrerollAdPlacement()
{
  result = qword_1EE0B1D30;
  if (!qword_1EE0B1D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D766BFD8()
{
  if (!qword_1EE0AF1D0)
  {
    type metadata accessor for PrerollAdProvider();
    type metadata accessor for PrerollAdPlacement();
    sub_1D766C078();
    v0 = type metadata accessor for Ad();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0AF1D0);
    }
  }
}

unint64_t sub_1D766C078()
{
  result = qword_1EE0AF868[0];
  if (!qword_1EE0AF868[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0AF868);
  }

  return result;
}

uint64_t sub_1D766C108(void *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  result = sub_1D7704B50();
  v8 = result;
  if (v4 != 255)
  {
    if (v4)
    {
    }

    else
    {
      if (v2)
      {
        v6 = 0x676E696C69617274;
      }

      else
      {
        v6 = 0x676E696461656CLL;
      }

      if (v2)
      {
        v7 = 0xE800000000000000;
      }

      else
      {
        v7 = 0xE700000000000000;
      }

      MEMORY[0x1DA6FF0D0](v6, v7);

      v2 = 0x6E6F697461636F6CLL;
      v3 = 0xE90000000000002DLL;
    }

    MEMORY[0x1DA6FF0D0](v2, v3);

    MEMORY[0x1DA6FF0D0](41, 0xE100000000000000);
    MEMORY[0x1DA6FF0D0](0x617073656D614E2DLL, 0xEB00000000286563);

    return v8;
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_2(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_1D766C2F8(uint64_t a1)
{
  *(a1 + 8) = sub_1D76684E8();
  result = sub_1D7669394();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D766C328()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1D7704260();
  }

  sub_1D7668808();
  result = sub_1D77046A0();
  qword_1EE0AF010 = result;
  return result;
}

void sub_1D766C3F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D766C450()
{
  result = qword_1EE0AF3F0;
  if (!qword_1EE0AF3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AF3F0);
  }

  return result;
}

void sub_1D766C4A4()
{
  if (!qword_1EE0AF1A0)
  {
    type metadata accessor for InterstitialAdProvider();
    type metadata accessor for InterstitialAdPlacement();
    sub_1D766C544();
    v0 = type metadata accessor for Ad();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0AF1A0);
    }
  }
}

unint64_t sub_1D766C544()
{
  result = qword_1EE0AF3C0;
  if (!qword_1EE0AF3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AF3C0);
  }

  return result;
}

void sub_1D766C598()
{
  if (!qword_1EE0AF1B0)
  {
    type metadata accessor for PrerollAdProvider();
    type metadata accessor for PrerollAdPlacement();
    sub_1D766C638();
    v0 = type metadata accessor for Ad();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0AF1B0);
    }
  }
}

unint64_t sub_1D766C638()
{
  result = qword_1EE0AF700[0];
  if (!qword_1EE0AF700[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0AF700);
  }

  return result;
}

void sub_1D766C68C()
{
  if (!qword_1EE0AF198)
  {
    type metadata accessor for NativeAdProvider();
    type metadata accessor for NativeAdPlacement();
    sub_1D7666D14();
    v0 = type metadata accessor for Ad();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0AF198);
    }
  }
}

void sub_1D766C744()
{
  if (!qword_1EE0AF1C8)
  {
    type metadata accessor for SponsorshipAdProvider();
    type metadata accessor for SponsorshipAdPlacement();
    sub_1D766C808();
    v0 = type metadata accessor for Ad();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0AF1C8);
    }
  }
}

unint64_t sub_1D766C808()
{
  result = qword_1EE0AF860;
  if (!qword_1EE0AF860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AF860);
  }

  return result;
}

uint64_t type metadata accessor for SponsorshipAdPlacement()
{
  result = qword_1EE0B1930;
  if (!qword_1EE0B1930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D766C8DC()
{
  result = qword_1EE0AED70;
  if (!qword_1EE0AED70)
  {
    sub_1D76697B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AED70);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7NewsAds13BannerAdStateO(uint64_t a1)
{
  if ((*(a1 + 80) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 80) & 3;
  }
}

uint64_t sub_1D766C9B0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7666184(0, qword_1EE0AF7A0);
  result = sub_1D7703410();
  if (!v27)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7666184(0, qword_1EE0B0F68);
  result = sub_1D7703410();
  if (!v25)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7666184(0, &qword_1EE0B26A0);
  result = sub_1D7703410();
  v5 = v22;
  if (v22)
  {
    v6 = v23;
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
    MEMORY[0x1EEE9AC00](v7, v7);
    v9 = (&v21[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = *v9;
    v12 = type metadata accessor for BannerAdViewStyler();
    v21[3] = v12;
    v21[4] = &off_1F52522D8;
    v21[0] = v11;
    v13 = type metadata accessor for BannerAdViewRenderer();
    v14 = swift_allocObject();
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v21, v12);
    MEMORY[0x1EEE9AC00](v15, v15);
    v17 = (&v21[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17);
    v19 = *v17;
    v14[5] = v12;
    v14[6] = &off_1F52522D8;
    v14[2] = v19;
    sub_1D7667CB8(&v24, (v14 + 7));
    v14[12] = v5;
    v14[13] = v6;
    __swift_destroy_boxed_opaque_existential_1(v21);
    result = __swift_destroy_boxed_opaque_existential_1(v26);
    a2[3] = v13;
    a2[4] = &protocol witness table for BannerAdViewRenderer;
    *a2 = v14;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t get_enum_tag_for_layout_string_7NewsAds18JournalEntryStatusO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1D766CCD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 89) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 104) = -a2;
    }
  }

  return result;
}

unint64_t sub_1D766CD2C(uint64_t a1)
{
  *(a1 + 8) = sub_1D766CDD0();
  result = sub_1D766CFCC();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D766CD5C()
{
  sub_1D7666184(0, qword_1EE0AF7A0);
  sub_1D7703540();
}

unint64_t sub_1D766CDD0()
{
  result = qword_1EE0B0470;
  if (!qword_1EE0B0470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0470);
  }

  return result;
}

uint64_t sub_1D766CE44@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

uint64_t sub_1D766CEA0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 105))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 104);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D766CF58()
{
  result = type metadata accessor for NativeAd.Headline(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D766CFCC()
{
  result = qword_1EE0B0478[0];
  if (!qword_1EE0B0478[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0B0478);
  }

  return result;
}

uint64_t BannerAdState.description.getter()
{
  sub_1D766CEFC(v0, v15);
  if (v16)
  {
    if (v16 == 1)
    {
      v10 = *&v15[32];
      v11 = *&v15[48];
      v12 = *&v15[64];
      v8 = *v15;
      v9 = *&v15[16];
      sub_1D7704740();

      v13 = 0xD000000000000010;
      v14 = 0x80000001D7717460;
      v1 = BannerAdState.Recover.description.getter();
      MEMORY[0x1DA6FF0D0](v1);

      MEMORY[0x1DA6FF0D0](41, 0xE100000000000000);
      v2 = 0xD000000000000010;
      sub_1D76749B8(&v8);
    }

    else
    {
      v6 = vorrq_s8(vorrq_s8(*&v15[8], *&v15[40]), vorrq_s8(*&v15[24], *&v15[56]));
      if (*&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)) | *&v15[72] | *v15)
      {
        return 0x676E69646E6570;
      }

      else
      {
        return 0x6C616974696E69;
      }
    }
  }

  else
  {
    sub_1D7667CB8(v15, &v8);
    v13 = 0;
    v14 = 0xE000000000000000;
    sub_1D7704740();

    v13 = 0xD000000000000017;
    v14 = 0x80000001D7717440;
    v3 = *(&v9 + 1);
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
    v5 = (*(v4 + 8))(v3, v4);
    MEMORY[0x1DA6FF0D0](v5);

    MEMORY[0x1DA6FF0D0](41, 0xE100000000000000);
    v2 = v13;
    __swift_destroy_boxed_opaque_existential_1(&v8);
  }

  return v2;
}

uint64_t sub_1D766D248@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7666184(0, qword_1EE0B1020);
  result = sub_1D7703410();
  if (v24)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7666184(0, &qword_1EE0B26A0);
    result = sub_1D7703410();
    v5 = v21;
    if (v21)
    {
      v6 = v22;
      v7 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
      MEMORY[0x1EEE9AC00](v7, v7);
      v9 = (v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v10 + 16))(v9);
      v11 = *v9;
      v12 = type metadata accessor for DebugJournalSummaryViewStyler();
      v20[3] = v12;
      v20[4] = &off_1F5253310;
      v20[0] = v11;
      v13 = type metadata accessor for DebugJournalSummaryViewRenderer();
      v14 = swift_allocObject();
      v15 = __swift_mutable_project_boxed_opaque_existential_1(v20, v12);
      MEMORY[0x1EEE9AC00](v15, v15);
      v17 = (v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v18 + 16))(v17);
      v19 = *v17;
      v14[5] = v12;
      v14[6] = &off_1F5253310;
      v14[2] = v19;
      v14[7] = v5;
      v14[8] = v6;
      __swift_destroy_boxed_opaque_existential_1(v20);
      result = __swift_destroy_boxed_opaque_existential_1(v23);
      a2[3] = v13;
      a2[4] = &off_1F5254540;
      *a2 = v14;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D766D4E0@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DebugJournalSummaryViewStyler();
  result = swift_allocObject();
  *(result + 16) = 0x402E000000000000;
  a1[3] = v2;
  a1[4] = &off_1F5253310;
  *a1 = result;
  return result;
}

uint64_t BannerAd.journal.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 184);
  v3 = *(v1 + 216);
  v12[6] = *(v1 + 200);
  v12[7] = v3;
  v12[8] = *(v1 + 232);
  v4 = *(v1 + 120);
  v5 = *(v1 + 152);
  v12[2] = *(v1 + 136);
  v12[3] = v5;
  v12[4] = *(v1 + 168);
  v12[5] = v2;
  v12[0] = *(v1 + 104);
  v12[1] = v4;
  v6 = *(v1 + 184);
  v7 = *(v1 + 216);
  a1[6] = *(v1 + 200);
  a1[7] = v7;
  a1[8] = *(v1 + 232);
  v8 = *(v1 + 120);
  v9 = *(v1 + 152);
  a1[2] = *(v1 + 136);
  a1[3] = v9;
  a1[4] = *(v1 + 168);
  a1[5] = v6;
  *a1 = *(v1 + 104);
  a1[1] = v8;
  return sub_1D766D644(v12, &v11);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t Journal.addProcessor<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 96);
  v13 = *(v9 + 80);
  v14 = v10;
  type metadata accessor for AnyProcessor();
  (*(v6 + 16))(v8, a1, a2);
  swift_allocObject();
  v12[1] = sub_1D766D910(v8, a2, a3);
  swift_beginAccess();
  sub_1D77044B0();
  sub_1D7704480();
  return swift_endAccess();
}

uint64_t sub_1D766D83C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 248) = 0u;
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
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 504) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 504) = 0;
    }

    if (a2)
    {
      *(result + 488) = ~a2;
    }
  }

  return result;
}

uint64_t *sub_1D766D910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(a2 - 8);
  v9 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = *(v7 + 80);
  *(v10 + 3) = *(v7 + 88);
  *(v10 + 4) = a2;
  *(v10 + 5) = a3;
  (*(v8 + 32))(&v10[v9], a1, a2);
  v3[2] = sub_1D7670700;
  v3[3] = v10;
  return v3;
}

uint64_t sub_1D766DA24()
{
  (*(*(*(v0 + 32) - 8) + 8))(v0 + ((*(*(*(v0 + 32) - 8) + 80) + 48) & ~*(*(*(v0 + 32) - 8) + 80)));

  return swift_deallocObject();
}

void *BannerAdViewLayoutAttributesFactory.createLayoutAttributes(model:options:cursor:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 8);
  v26 = *a2;
  LOBYTE(v27) = v6;
  sub_1D76A1900(v25);
  BannerAdViewLayoutAttributesFactory.makeLayoutAttributes(for:with:)(a1, v25, &v26);
  v7 = v26;
  v8 = v27;
  v9 = v28;
  v10 = v29;
  v23 = v31;
  v24 = v30;
  v11 = v32;
  memcpy(__dst, v33, sizeof(__dst));
  v12 = v34;
  v13 = sub_1D77032E0();
  v13(v7, v8, v9, v10);
  if (v3)
  {
  }

  v19 = v14;
  v20 = v15;
  v21 = v16;
  v22 = v17;

  *a3 = v19;
  *(a3 + 8) = v20;
  *(a3 + 16) = v21;
  *(a3 + 24) = v22;
  *(a3 + 32) = v24;
  *(a3 + 48) = v23;
  *(a3 + 64) = v11;
  result = memcpy((a3 + 72), __dst, 0x1A1uLL);
  *(a3 + 496) = v12;
  return result;
}

uint64_t sub_1D766DC5C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t BannerAdLayoutStore.layout(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  sub_1D77035E0();

  if (v16)
  {
    if (qword_1EE0AF008 != -1)
    {
      swift_once();
    }

    sub_1D766DF6C();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1D7708FE0;
    *(v6 + 56) = MEMORY[0x1E69E6158];
    *(v6 + 64) = sub_1D7668854();
    *(v6 + 32) = a1;
    *(v6 + 40) = a2;

    sub_1D77045A0();
    sub_1D7703ED0();
    v7 = v14;
  }

  else
  {
    if (qword_1EE0AF008 != -1)
    {
      swift_once();
    }

    sub_1D766DF6C();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D7708FD0;
    v9 = MEMORY[0x1E69E6158];
    *(v8 + 56) = MEMORY[0x1E69E6158];
    v10 = sub_1D7668854();
    *(v8 + 64) = v10;
    *(v8 + 32) = a1;
    *(v8 + 40) = a2;
    v7 = v14;

    sub_1D7704850();
    *(v8 + 96) = v9;
    *(v8 + 104) = v10;
    *(v8 + 72) = 0;
    *(v8 + 80) = 0xE000000000000000;
    sub_1D77045A0();
    sub_1D7703ED0();
  }

  *a3 = v12;
  *(a3 + 8) = v13;
  *(a3 + 16) = v7;
  *(a3 + 24) = v15;
  *(a3 + 32) = v16;
  return result;
}

uint64_t sub_1D766DED4@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for BannerAdLayoutStore();
  v3 = swift_allocObject();
  sub_1D766E564();
  swift_allocObject();
  result = sub_1D77035C0();
  *(v3 + 16) = result;
  a1[3] = v2;
  a1[4] = &protocol witness table for BannerAdLayoutStore;
  *a1 = v3;
  return result;
}

void sub_1D766DF6C()
{
  if (!qword_1EE0AEBF0)
  {
    sub_1D76864C0();
    v0 = sub_1D7704A20();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0AEBF0);
    }
  }
}

void *BannerAdViewLayoutAttributesFactory.makeLayoutAttributes(for:with:)@<X0>(void *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 + 5);
  v79 = *(a2 + 4);
  v80 = v7;
  v81 = a2[12];
  v8 = *(a2 + 1);
  v75 = *a2;
  v76 = v8;
  v9 = *(a2 + 3);
  v77 = *(a2 + 2);
  v78 = v9;
  if (qword_1EE0B0C70 != -1)
  {
    swift_once();
  }

  sub_1D7674A0C();

  sub_1D7703070();

  v34 = LOBYTE(v69[0]);
  v10 = v3[15];
  v11 = v3[16];
  __swift_project_boxed_opaque_existential_1(v3 + 12, v10);
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  (*(v13 + 8))(v69, v12, v13);
  v14 = v69[0];
  v15 = v69[1];

  sub_1D766E6D8(v69);
  (*(v11 + 8))(__dst, v14, v15, v10, v11);

  v74 = __dst[2];
  v73[1] = __dst[1];
  v73[0] = __dst[0];
  if (__dst[2])
  {
    v16 = *(&v78 + 1);
  }

  else
  {
    v16 = *(&__dst[1] + 1);
  }

  if (__dst[2])
  {
    v17 = *(&v78 + 1);
  }

  else
  {
    v17 = *&__dst[1];
  }

  sub_1D766E5C4(a1, v73, &v75, &v70);
  v18 = v70;
  v19 = v71;
  if (sub_1D77030B0())
  {
    v20 = v4[10];
    v21 = v4[11];
    __swift_project_boxed_opaque_existential_1(v4 + 7, v20);
    v22 = a1[3];
    v23 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v22);
    (*(v23 + 8))(v47, v22, v23);
    v63 = v54;
    v64 = v55;
    v65 = v56;
    v59 = v50;
    v60 = v51;
    v62 = v53;
    v61 = v52;
    v58 = v49;
    v57 = v48;
    sub_1D766D644(&v57, v69);
    sub_1D766E6D8(v47);
    v44 = v63;
    v45 = v64;
    v46 = v65;
    v40 = v59;
    v41 = v60;
    v43 = v62;
    v42 = v61;
    v24.n128_u64[1] = *(&v57 + 1);
    v39 = v58;
    v38 = v57;
    v25 = v72;
    if (v72)
    {
      if (v34)
      {
        v24.n128_f64[0] = v17 * 0.5;
      }

      else
      {
        v24.n128_f64[0] = v17;
      }
    }

    else
    {
      v82.origin = v18;
      v82.size = v19;
      v24.n128_u64[0] = CGRectGetMaxY(v82);
    }

    __dst[0] = v75;
    __dst[1] = v76;
    __dst[2] = v77;
    *&__dst[3] = v78;
    (*(v21 + 8))(v36, &v38, __dst, v20, v21, 0.0, v24);
    v35[6] = v44;
    v35[7] = v45;
    v35[8] = v46;
    v35[2] = v40;
    v35[3] = v41;
    v35[4] = v42;
    v35[5] = v43;
    v35[0] = v38;
    v35[1] = v39;
    sub_1D76950E4(v35);
    memcpy(v37, v36, 0x1A1uLL);
    nullsub_1(v37);
    memcpy(v69, v36, 0x1A1uLL);
    if (sub_1D769B214(v69) <= 1)
    {
      v83 = *nullsub_1(v69);
      MaxY = CGRectGetMaxY(v83);
      if (v25)
      {
        v27 = v37;
LABEL_26:
        memcpy(__dst, v27, 0x1A1uLL);
        goto LABEL_27;
      }

      v28 = v37;
LABEL_23:
      memcpy(v67, v28, 0x1A1uLL);
      v85.origin = v18;
      v85.size = v19;
      if (CGRectGetHeight(v85) > 0.0)
      {
        MaxY = v16 + MaxY;
        v29 = v67;
        goto LABEL_32;
      }

      v27 = v67;
      goto LABEL_26;
    }

    memcpy(__src, v37, 0x1A1uLL);
    if ((v25 & 1) == 0)
    {
LABEL_22:
      v84.origin = v18;
      v84.size = v19;
      MaxY = CGRectGetMaxY(v84);
      v28 = __src;
      goto LABEL_23;
    }
  }

  else
  {
    sub_1D766E780(__src);
    if ((v72 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  memcpy(__dst, __src, 0x1A1uLL);
  MaxY = 0.0;
LABEL_27:
  if (sub_1D77030B0())
  {

    sub_1D7703070();

    if (v69[0])
    {
      MaxY = v16 * 0.5 + MaxY;
    }

    else
    {
      MaxY = v16 + MaxY;
    }
  }

  v29 = __dst;
LABEL_32:
  memcpy(v69, v29, 0x1A1uLL);
  v30 = v75;
  v31 = v81 + *(&v78 + 1);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = v30;
  *(a3 + 24) = MaxY;
  v32 = v71;
  *(a3 + 32) = v70;
  *(a3 + 48) = v32;
  *(a3 + 64) = v72;
  result = memcpy((a3 + 72), v69, 0x1A1uLL);
  *(a3 + 496) = v31;
  return result;
}

void sub_1D766E564()
{
  if (!qword_1EE0B0880)
  {
    v0 = sub_1D77035D0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0B0880);
    }
  }
}

uint64_t sub_1D766E5C4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, double *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  (*(v8 + 8))(v18, v7, v8);
  sub_1D766CEFC(&v19, v17);
  sub_1D766E6D8(v18);
  if (v17[80])
  {
    result = sub_1D766E72C(v17);
LABEL_4:
    v10 = 0;
    v11 = 1;
    v12 = 0.0;
    goto LABEL_5;
  }

  result = __swift_destroy_boxed_opaque_existential_1(v17);
  if (*(a2 + 32))
  {
    goto LABEL_4;
  }

  v10 = *(a2 + 8);
  if (*a3 >= *a2)
  {
    v13 = *a2;
  }

  else
  {
    v13 = *a3;
  }

  sub_1D7704570();
  v15 = v13 - v14;
  result = sub_1D7704570();
  v11 = 0;
  v12 = v15 - v16;
LABEL_5:
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = v12;
  *(a4 + 24) = v10;
  *(a4 + 32) = v11;
  return result;
}

double sub_1D766E780(uint64_t a1)
{
  result = 0.0;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 416) = -1;
  return result;
}

unint64_t sub_1D766E844(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D76AE1DC();
    v3 = sub_1D77048B0();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v14 = *i;

      v7 = v14;
      result = sub_1D76689AC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 16 * result) = v14;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1D766E958()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D766EA34()
{
  result = qword_1EE0AF3D8;
  if (!qword_1EE0AF3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AF3D8);
  }

  return result;
}

uint64_t sub_1D766EA88(void *a1)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

id sub_1D766EAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  v12 = MEMORY[0x1E69E7D40];
  v13 = *MEMORY[0x1E69E7D40];
  v14 = *MEMORY[0x1E69E7D40] & *v5;
  sub_1D7667C54(a1, &v5[*(v14 + 0x70)]);
  *&v5[*((*v12 & *v5) + 0x78)] = a2;
  *&v5[*((*v12 & *v5) + 0x80)] = a3;
  *&v5[*((*v12 & *v5) + 0x88)] = a4;
  v15 = *((v13 & v11) + 0x58);
  (*(*(v15 - 8) + 16))(&v5[*((*v12 & *v5) + 0x90)], a5, v15);
  v18 = *((v13 & v11) + 0x50);
  v19 = *(v14 + 96);
  v20.receiver = v5;
  v20.super_class = type metadata accessor for VideoAdProviderFactory();
  v16 = objc_msgSendSuper2(&v20, sel_init, v18, v15, v19);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v16;
}

unint64_t sub_1D766ECAC()
{
  result = qword_1EE0AF3E0;
  if (!qword_1EE0AF3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AF3E0);
  }

  return result;
}

uint64_t sub_1D766ED00()
{
  v0 = sub_1D7703210();
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v3, *MEMORY[0x1E69D6E90]);
  type metadata accessor for Settings.Ads.Debugging.FeedPrefetchDistance(0);
  swift_allocObject();
  result = Settings.Ads.Debugging.FeedPrefetchDistance.init(key:defaultValue:access:)(0xD000000000000036, 0x80000001D7718700, 0, v3);
  qword_1EE0B09C8 = result;
  return result;
}

id VideoAdProviderFactory.init(adManager:adRequestStore:journal:appConfigurationManager:prerollAdRequester:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *v5;
  v8 = *MEMORY[0x1E69E7D40];
  v9 = sub_1D766EAEC(a1, a2, a3, a4, a5);
  (*(*(*((v8 & v7) + 0x58) - 8) + 8))(a5);
  return v9;
}

uint64_t sub_1D766EEC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 504))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 488);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t get_enum_tag_for_layout_string_7NewsAds13BannerAdStateO7RecoverO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t Settings.Ads.Debugging.FeedPrefetchDistance.init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v14[1] = a3;
  v6 = sub_1D7703210();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = qword_1EE0B0A08;
  sub_1D76681C4(0, &qword_1EE0B0898, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28], MEMORY[0x1E69D6EB0]);
  v16 = 0;
  v17 = 3;
  v15 = 1000;
  (*(v7 + 104))(v10, *MEMORY[0x1E69D6E90], v6);
  *(v4 + v11) = sub_1D7703260();
  (*(v7 + 16))(v10, a4, v6);
  v12 = sub_1D77030A0();
  (*(v7 + 8))(a4, v6);
  return v12;
}

uint64_t sub_1D766F150(int *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 84) <= 0x7FFFFFFFu)
  {
    v4 = 0x7FFFFFFF;
  }

  else
  {
    v4 = *(v3 + 84);
  }

  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  if (v7 <= v4)
  {
    v9 = v4;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v10 = *(v3 + 80) & 0xF8;
  v11 = v10 | 7;
  v12 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + v8 + 8;
  if (v9 >= a2)
  {
    goto LABEL_30;
  }

  v13 = ((*(*(v5 - 8) + 64) + ((v12 + ((v10 + 23) & ~v11)) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = a2 - v9 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_30;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v13)) == 0)
  {
LABEL_30:
    if (v9 == 0x7FFFFFFF)
    {
      v22 = *(a1 + 1);
      if (v22 >= 0xFFFFFFFF)
      {
        LODWORD(v22) = -1;
      }

      return (v22 + 1);
    }

    else
    {
      v23 = (a1 + v11 + 16) & ~v11;
      if (v4 >= v7)
      {
        return (*(v3 + 48))(v23);
      }

      else
      {
        return (*(v6 + 48))((v12 + v23) & ~v8, v7, v5);
      }
    }
  }

  v20 = v18 - 1;
  if (v14)
  {
    v20 = 0;
    v21 = *a1;
  }

  else
  {
    v21 = 0;
  }

  return v9 + (v21 | v20) + 1;
}

uint64_t sub_1D766F350(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v16 = a3;
  v6 = *(*v3 + 88);
  v7 = *(*v3 + 96);
  v8 = *(*v3 + 104);
  v17 = *(*v3 + 80);
  v18 = v6;
  v19 = v7;
  v20 = v8;
  v9 = type metadata accessor for JournalEntry();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v15 - v12;
  v16(a1, a2, v17, v6, v7, v8);
  sub_1D766FFCC(v13, a1, a2);
  return (*(v10 + 8))(v13, v9);
}

void sub_1D766F4E8()
{
  if (!qword_1EE0B0868)
  {
    sub_1D766F724(255, &qword_1EE0AF550, MEMORY[0x1E69E6720]);
    v0 = sub_1D7703670();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0B0868);
    }
  }
}

uint64_t AdPolicyLayoutEnvironmentProvider.init()()
{
  sub_1D766F4E8();
  swift_allocObject();
  *(v0 + 16) = sub_1D7703630();
  return v0;
}

uint64_t sub_1D766F5C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v16 = type metadata accessor for AdRequest();
  v17 = sub_1D77046B0();
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = v22 - v19;
  v25 = a7;
  v26 = 0;
  v27 = 0;
  v24 = 0;
  memset(v22, 0, sizeof(v22));
  v23 = 1;
  (*(*(v16 - 8) + 56))(v22 - v19, 1, 1, v16);

  return sub_1D766FA5C(a1, a2, &v25, 0, 0, &v24, v22, v20, a8, a3, a4, a5, a6);
}

void sub_1D766F724(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for AdPolicyLayoutEnvironment);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *AdPlacementPolicyValidator.init(layoutEnvironmentProvider:viewportEnvironmentProvider:)(__int128 *a1, __int128 *a2)
{
  v14 = a1;
  v15 = a2;
  v13 = sub_1D77045E0();
  v3 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D77045C0();
  MEMORY[0x1EEE9AC00](v7, v8);
  v9 = sub_1D7704110();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v11 = MEMORY[0x1E69E7CC0];
  v2[12] = MEMORY[0x1E69E7CC0];
  v16 = v11;
  sub_1D766FC6C(0, &qword_1EE0B0860, sub_1D766FF98, MEMORY[0x1E69D6AF0]);
  swift_allocObject();
  v2[13] = sub_1D7703630();
  sub_1D7669BD8();
  sub_1D7704100();
  v16 = v11;
  sub_1D76707B0(&qword_1EE0AED38, 255, MEMORY[0x1E69E8030]);
  sub_1D7670994(0);
  sub_1D76707B0(&qword_1EE0AED58, 255, sub_1D7670994);
  sub_1D77046E0();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8090], v13);
  v2[14] = sub_1D7704610();
  sub_1D7667CB8(v14, (v2 + 2));
  sub_1D7667CB8(v15, (v2 + 7));
  return v2;
}

uint64_t sub_1D766FA5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v53 = a5;
  v54 = a8;
  v51 = a2;
  v52 = a4;
  v50 = a1;
  v48 = a13;
  v46 = a12;
  v17 = sub_1D7702FA0();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *a6;
  v49 = *(a7 + 32);
  sub_1D7702F90();
  v22 = sub_1D7702F70();
  v24 = v23;
  v25 = *(v18 + 8);
  v26 = *a7;
  v44 = a7[1];
  v45 = v26;
  v27 = *a3;
  v42 = a3[1];
  v43 = v27;
  v25(v21, v17);
  *a9 = v22;
  a9[1] = v24;
  v55 = a10;
  v56 = a11;
  v28 = v46;
  v29 = v48;
  v57 = v46;
  v58 = v48;
  v30 = type metadata accessor for JournalEntry();
  sub_1D7702F40();
  v31 = (a9 + v30[14]);
  v32 = v51;
  *v31 = v50;
  v31[1] = v32;
  v33 = (a9 + v30[15]);
  v34 = v42;
  *v33 = v43;
  v33[1] = v34;
  v35 = (a9 + v30[16]);
  v36 = v53;
  *v35 = v52;
  v35[1] = v36;
  *(a9 + v30[17]) = v47;
  v37 = a9 + v30[18];
  v38 = v44;
  *v37 = v45;
  *(v37 + 1) = v38;
  v37[32] = v49;
  v39 = v30[19];
  v55 = a10;
  v56 = a11;
  v57 = v28;
  v58 = v29;
  type metadata accessor for AdRequest();
  v40 = sub_1D77046B0();
  return (*(*(v40 - 8) + 32))(a9 + v39, v54, v40);
}

void sub_1D766FC6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D766FCD0(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  if (*(v4 + 84) <= 0x7FFFFFFFu)
  {
    v5 = 0x7FFFFFFF;
  }

  else
  {
    v5 = *(v4 + 84);
  }

  v6 = *(a4 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v7 + 80);
  if (v8 <= v5)
  {
    v11 = v5;
  }

  else
  {
    v11 = *(v7 + 84);
  }

  v12 = v9 & 0xF8 | 7;
  v13 = ((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v14 = ((*(*(v6 - 8) + 64) + ((v13 + v10 + (((v9 & 0xF8) + 23) & ~v12)) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v11 >= a3)
  {
    v17 = 0;
    v18 = a2 - v11;
    if (a2 <= v11)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((*(*(v6 - 8) + 64) + ((v13 + v10 + (((*(v4 + 80) & 0xF8) + 23) & ~v12)) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a3 - v11 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = a2 - v11;
    if (a2 <= v11)
    {
LABEL_20:
      if (v17 > 1)
      {
        if (v17 != 2)
        {
          *(a1 + v14) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v14) = 0;
      }

      else if (v17)
      {
        *(a1 + v14) = 0;
        if (!a2)
        {
          return;
        }

LABEL_36:
        if (v11 == 0x7FFFFFFF)
        {
          if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            a1[1] = 0;
          }

          else
          {
            a1[1] = a2 - 1;
          }
        }

        else
        {
          v22 = ((a1 + v12 + 16) & ~v12);
          if (v5 >= v8)
          {
            if (v5 >= a2)
            {
              v27 = *(v4 + 56);

              v27(v22);
            }

            else if (v13)
            {
              v25 = ~v5 + a2;
              v26 = v22;
              bzero(v22, v13);
              *v26 = v25;
            }
          }

          else
          {
            v23 = *(v7 + 56);
            v24 = (v22 + v13 + v10) & ~v10;

            v23(v24);
          }
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }
  }

  if (((*(*(v6 - 8) + 64) + ((v13 + v10 + (((*(v4 + 80) & 0xF8) + 23) & ~v12)) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v19 = v18;
  }

  else
  {
    v19 = 1;
  }

  if (((*(*(v6 - 8) + 64) + ((v13 + v10 + (((*(v4 + 80) & 0xF8) + 23) & ~v12)) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v20 = ~v11 + a2;
    v21 = a1;
    bzero(a1, v14);
    a1 = v21;
    *v21 = v20;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      *(a1 + v14) = v19;
    }

    else
    {
      *(a1 + v14) = v19;
    }
  }

  else if (v17)
  {
    *(a1 + v14) = v19;
  }
}

uint64_t sub_1D766FFCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(*v3 + 80);
  v9 = *(*v3 + 88);
  v10 = *(*v3 + 96);
  v11 = *(*v3 + 104);
  v57 = v8;
  *&v58 = v9;
  *(&v58 + 1) = v10;
  v59 = v11;
  v12 = type metadata accessor for JournalEntry();
  v48 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v49 = &v45 - v14;
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  v47 = qword_1EE0AF010;
  sub_1D766DF6C();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D7709050;
  v50 = v12;
  v51 = v11;
  v16 = (a1 + *(v12 + 60));
  v17 = *v16;
  v18 = *v16 >> 62;
  v53 = v9;
  v54 = v8;
  v52 = v10;
  v46 = v17;
  if (v18)
  {
    if (v18 == 1)
    {
      v19 = 0x6564726163736944;
LABEL_6:
      v20 = 0xE900000000000064;
      goto LABEL_20;
    }

    v21 = v16[2] | v16[3] | v16[1];
    if (v17 != 0x8000000000000000 || v21 != 0)
    {
      if (v17 == 0x8000000000000008 && v21 == 0)
      {
        v19 = 0x656C756465686353;
      }

      else if (v17 != 0x8000000000000010 || v21)
      {
        if (v17 != 0x8000000000000018 || v21)
        {
          if (v17 != 0x8000000000000020 || v21)
          {
            if (v21)
            {
              v44 = 0;
            }

            else
            {
              v44 = v17 == 0x8000000000000028;
            }

            if (v44)
            {
              v19 = 0x65746E6573657250;
            }

            else
            {
              v19 = 0x657370616C6C6F43;
            }
          }

          else
          {
            v19 = 0x656C6C69666C7546;
          }
        }

        else
        {
          v19 = 0x6574736575716552;
        }
      }

      else
      {
        v19 = 0x656D726177657250;
      }

      goto LABEL_6;
    }

    v20 = 0xE700000000000000;
    v19 = 0x64657461657243;
  }

  else
  {
    v20 = 0xE600000000000000;
    v19 = 0x64656C696146;
  }

LABEL_20:
  v24 = MEMORY[0x1E69E6158];
  *(v15 + 56) = MEMORY[0x1E69E6158];
  v25 = v15;
  v26 = sub_1D7668854();
  v25[4] = v19;
  v25[5] = v20;
  v25[12] = v24;
  v25[13] = v26;
  v25[8] = v26;
  v25[9] = a2;
  v25[10] = a3;
  v27 = v16[3];
  v57 = v46;
  v58 = *(v16 + 1);
  v59 = v27;

  v28 = JournalEntryStatus.shortDescription.getter();
  v25[17] = v24;
  v25[18] = v26;
  v25[14] = v28;
  v25[15] = v29;
  sub_1D77045A0();
  sub_1D7703ED0();

  v57 = a2;
  *&v58 = a3;

  sub_1D77035E0();

  v30 = v55;
  if (v55)
  {
    v32 = v53;
    v31 = v54;
    v34 = v51;
    v33 = v52;
    v35 = v50;
  }

  else
  {
    v35 = v50;
    v30 = sub_1D7704440();
    v32 = v53;
    v31 = v54;
    v34 = v51;
    v33 = v52;
  }

  v56 = v30;
  (*(v48 + 16))(v49, a1, v35);
  sub_1D77044B0();
  sub_1D7704480();
  v55 = v56;
  v57 = a2;
  *&v58 = a3;

  sub_1D77035F0();

  swift_beginAccess();
  v36 = *(v4 + 16);

  v57 = v31;
  *&v58 = v32;
  *(&v58 + 1) = v33;
  v59 = v34;
  type metadata accessor for AnyProcessor();
  if (sub_1D7704470())
  {
    v37 = 4;
    do
    {
      v38 = v37 - 4;
      v39 = sub_1D7704450();
      sub_1D7704420();
      if (v39)
      {
        v40 = *(v36 + 8 * v37);

        v41 = v37 - 3;
        if (__OFADD__(v38, 1))
        {
          goto LABEL_31;
        }
      }

      else
      {
        v40 = sub_1D7704750();
        v41 = v37 - 3;
        if (__OFADD__(v38, 1))
        {
LABEL_31:
          __break(1u);
        }
      }

      v42 = *(v40 + 16);

      v42(a1, a2, a3);

      ++v37;
    }

    while (v41 != sub_1D7704470());
  }
}

unint64_t sub_1D767050C()
{
  result = qword_1EE0AEBA8;
  if (!qword_1EE0AEBA8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EE0AEBA8);
  }

  return result;
}

uint64_t JournalEntryStatus.shortDescription.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = *v0 >> 62;
  if (!v4)
  {
    v5 = 0x203A64656C696146;
    goto LABEL_5;
  }

  if (v4 == 1)
  {
    v5 = 0x6564726163736944;
LABEL_5:
    v10 = v5;
    MEMORY[0x1DA6FF0D0](v1, v3);
    return v10;
  }

  v7 = v1 | v0[3] | v3;
  if (v2 == 0x8000000000000000 && v7 == 0)
  {
    return 0x64657461657243;
  }

  if (v2 == 0x8000000000000008 && !v7)
  {
    return 0xD000000000000011;
  }

  if (v2 == 0x8000000000000010 && !v7)
  {
    return 0xD000000000000015;
  }

  if (v2 == 0x8000000000000018 && !v7)
  {
    return 0xD000000000000017;
  }

  if (v2 == 0x8000000000000020 && !v7)
  {
    return 0x656C6C69666C7546;
  }

  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = v2 == 0x8000000000000028;
  }

  if (v9)
  {
    return 0x6579616C70736944;
  }

  else
  {
    return 0x657370616C6C6F43;
  }
}

uint64_t sub_1D7670768(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D76707B0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Journal.createDebugJournal(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = *v3;
  v29 = sub_1D7670B60();
  v8 = v7[10];
  v9 = v7[11];
  v10 = v7[12];
  v11 = v7[13];
  v19 = v8;
  *&v20 = v8;
  *(&v20 + 1) = v9;
  *&v21 = v10;
  *(&v21 + 1) = v11;
  type metadata accessor for JournalEntry();
  sub_1D77044B0();
  swift_getWitnessTable();
  if (sub_1D7704510())
  {

    v12._countAndFlagsBits = a1;
    v12._object = a2;
    Journal.addCreatedEntry(placementIdentifier:)(v12);
    sub_1D7670B60();
  }

  sub_1D7670C74(v13, 1, v19, v9, v10, v11, &v20);
  result = get_enum_tag_for_layout_string_7NewsAds15FeedGroupAdDataVSg_0(&v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    v15 = v27;
    a3[6] = v26;
    a3[7] = v15;
    a3[8] = v28;
    v16 = v23;
    a3[2] = v22;
    a3[3] = v16;
    v17 = v25;
    a3[4] = v24;
    a3[5] = v17;
    v18 = v21;
    *a3 = v20;
    a3[1] = v18;
  }

  return result;
}

uint64_t sub_1D76709C8(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 80) = a2;
  return result;
}

uint64_t BannerAdViewManager.onUpdate(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for DisposableObserver();
  v8 = sub_1D7670C10(a1, a2);
  swift_beginAccess();
  sub_1D77044B0();

  sub_1D7704480();
  swift_endAccess();
  a3[3] = v6;
  result = swift_getWitnessTable();
  a3[4] = result;
  *a3 = v8;
  return result;
}

uint64_t sub_1D7670B60()
{

  sub_1D77035E0();

  result = v1;
  if (!v1)
  {
    type metadata accessor for JournalEntry();
    return sub_1D7704440();
  }

  return result;
}

uint64_t sub_1D7670C10(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return v4;
}

__n128 sub_1D7670C74@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v189 = a2;
  v206 = a7;
  v194 = *(a4 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1, a2);
  v186 = &v166 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v185 = &v166 - v15;
  *&v209 = v16;
  *(&v209 + 1) = v17;
  v210.n128_u64[0] = v18;
  v210.n128_u64[1] = v19;
  v203 = type metadata accessor for AdRequest();
  v202 = sub_1D77046B0();
  v204 = *(v202 - 8);
  v21 = MEMORY[0x1EEE9AC00](v202, v20);
  v193 = &v166 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v192 = &v166 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v191 = &v166 - v28;
  MEMORY[0x1EEE9AC00](v27, v29);
  v201 = (&v166 - v30);
  v200 = sub_1D7702FA0();
  v199 = *(v200 - 8);
  MEMORY[0x1EEE9AC00](v200, v31);
  v33 = &v166 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = a3;
  *&v209 = a3;
  *(&v209 + 1) = a4;
  v205 = a4;
  v197 = a5;
  v210.n128_u64[0] = a5;
  v210.n128_u64[1] = a6;
  v198 = a6;
  v34 = type metadata accessor for JournalEntry();
  v35 = sub_1D77046B0();
  v36 = *(v35 - 8);
  v38 = MEMORY[0x1EEE9AC00](v35, v37);
  v40 = &v166 - v39;
  v41 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v38, v42);
  v44 = &v166 - v43;
  v218 = a1;
  sub_1D77044B0();
  swift_getWitnessTable();
  sub_1D7704200();
  if ((*(v41 + 48))(v40, 1, v34) == 1)
  {
    (*(v36 + 8))(v40, v35);

    sub_1D76EABA4(&v209);
    v45 = v216;
    v46 = v206;
    *(v206 + 96) = v215;
    *(v46 + 112) = v45;
    *(v46 + 128) = v217;
    v47 = v212;
    *(v46 + 32) = v211;
    *(v46 + 48) = v47;
    v48 = v214;
    *(v46 + 64) = v213;
    *(v46 + 80) = v48;
    result = v210;
    *v46 = v209;
    *(v46 + 16) = result;
    return result;
  }

  v195 = a1;
  v180 = v41;
  (*(v41 + 32))(v44, v40, v34);
  sub_1D7702F90();
  v179 = sub_1D7702F70();
  v178 = v50;
  (*(v199 + 8))(v33, v200);
  v51 = &v44[*(v34 + 56)];
  v52 = v51[1];
  v53 = &v44[*(v34 + 64)];
  v54 = *(v53 + 1);
  v55 = &v44[*(v34 + 60)];
  v56 = *v55;
  v57 = v55[1];
  v58 = v55[2];
  v59 = v55[3];
  v187 = v55;
  if (!(v56 >> 62))
  {
    *(&v172 + 1) = 0xE600000000000000;
    *&v172 = 0x64656C696146;
    v60 = v201;
    goto LABEL_30;
  }

  v60 = v201;
  if (v56 >> 62 != 1)
  {
    v63 = v58 | v57 | v59;
    if (v56 != 0x8000000000000000 || v63)
    {
      if (v56 != 0x8000000000000008 || v63)
      {
        if (v56 == 0x8000000000000010 && !v63)
        {
          *(&v172 + 1) = 0xE900000000000064;
          v61 = 0x656D726177657250;
          goto LABEL_28;
        }

        if (v56 == 0x8000000000000018 && !v63)
        {
          *(&v172 + 1) = 0xE900000000000064;
          v61 = 0x6574736575716552;
          goto LABEL_28;
        }

        if (v56 != 0x8000000000000020 || v63)
        {
          *(&v172 + 1) = 0xE900000000000064;
          if (v63)
          {
            v65 = 0;
          }

          else
          {
            v65 = v56 == 0x8000000000000028;
          }

          v61 = 0x657370616C6C6F43;
          if (v65)
          {
            v61 = 0x65746E6573657250;
          }

          goto LABEL_28;
        }

        *(&v172 + 1) = 0xE900000000000064;
        v64 = 0x6C69666C7546;
      }

      else
      {
        *(&v172 + 1) = 0xE900000000000064;
        v64 = 0x756465686353;
      }

      v61 = v64 & 0xFFFFFFFFFFFFLL | 0x656C000000000000;
    }

    else
    {
      *(&v172 + 1) = 0xE700000000000000;
      v61 = 0x64657461657243;
    }

LABEL_28:
    v62 = &v203;
    goto LABEL_29;
  }

  *&v172 = 0x6564726163736944;
  v61 = 0xE900000000000064;
  v62 = &v204;
LABEL_29:
  *(v62 - 32) = v61;
LABEL_30:
  v66 = *v51;
  v188 = *v53;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v173 = v57;
  v177 = v58;
  v175 = v59;
  sub_1D7672A08(v56);
  if (qword_1EE0B03B8 != -1)
  {
LABEL_98:
    swift_once();
  }

  v174 = v56;
  v67 = qword_1EE0B03C0;
  v182 = *(v34 + 52);
  v68 = sub_1D7702F20();
  v183 = v67;
  v69 = [v67 stringFromDate_];

  v170 = sub_1D7704260();
  v169 = v70;

  sub_1D7672D94(0, &qword_1EE0AEC50, &qword_1EE0B03B0, MEMORY[0x1E69E6720], MEMORY[0x1E69E6F90]);
  v71 = swift_allocObject();
  v72 = *(v187 + 1);
  v209 = *v187;
  v210 = v72;
  v73 = JournalEntryStatus.shortDescription.getter();
  *(v71 + 32) = xmmword_1D77119E0;
  v168 = v71 + 32;
  *(v71 + 48) = v73;
  *(v71 + 56) = v74;
  *(v71 + 64) = 0xD000000000000014;
  *(v71 + 72) = 0x80000001D77196A0;
  v171 = v66;
  *(v71 + 80) = v66;
  *(v71 + 88) = v52;
  v176 = v52;
  v181 = v34;
  v75 = v204;
  v76 = *(v204 + 2);
  v200 = *(v34 + 76);
  v52 = v202;
  v201 = v76;
  v76(v60, &v44[v200], v202);
  v77 = v203;
  v78 = *(v203 - 1);
  v199 = *(v78 + 48);
  v79 = (v199)(v60, 1, v203);
  v184 = v54;
  v190 = v78;
  if (v79 == 1)
  {
    (*(v75 + 1))(v60, v52);
    v80 = v205;
  }

  else
  {
    v81 = *(v60 + 8);
    v167 = *v60;
    v82 = *(v78 + 8);

    v82(v60, v77);
    v54 = v184;
    v52 = v202;
    v80 = v205;
    if (v81)
    {
      *(v71 + 96) = 0xD000000000000012;
      *(v71 + 104) = 0x80000001D77196C0;
      *(v71 + 112) = v167;
      *(v71 + 120) = v81;
      goto LABEL_36;
    }
  }

  *(v71 + 96) = 0;
  *(v71 + 104) = 0;
  *(v71 + 112) = 0;
  *(v71 + 120) = 0;
LABEL_36:
  v83 = 0x80000001D77196E0;
  v84 = 0xD000000000000012;
  if (!v54)
  {
    v84 = 0;
    v83 = 0;
  }

  *(v71 + 128) = v84;
  *(v71 + 136) = v83;
  v85 = v188;
  if (!v54)
  {
    v85 = 0;
  }

  *(v71 + 144) = v85;
  *(v71 + 152) = v54;
  v86 = v191;
  v201(v191, &v44[v200], v52);
  v87 = (v199)(v86, 1, v77);
  v88 = v190;
  if (v87 == 1)
  {
    v89 = v204;
    (*(v204 + 1))(v86, v52);
LABEL_46:
    *&v211 = 0;
    v209 = 0u;
    v210 = 0u;
    goto LABEL_47;
  }

  (*(v194 + 16))(v185, &v86[*(v77 + 56)], v80);
  (*(v88 + 8))(v86, v77);
  sub_1D7665328(0, &qword_1EE0AFAC0);
  v90 = swift_dynamicCast();
  v89 = v204;
  if ((v90 & 1) == 0)
  {
    goto LABEL_46;
  }

  v91 = v210.n128_u64[1];
  if (!v210.n128_u64[1])
  {
LABEL_47:
    sub_1D7672E04(&v209, &qword_1EE0AFAB8, &qword_1EE0AFAC0);
    goto LABEL_48;
  }

  v92 = v211;
  __swift_project_boxed_opaque_existential_1(&v209, v210.n128_i64[1]);
  v93 = *(v92 + 8);
  v94 = v92;
  v77 = v203;
  v95 = v93(v91, v94);
  v97 = v96;
  __swift_destroy_boxed_opaque_existential_1(&v209);
  if (v97)
  {
    *(v71 + 160) = 0xD000000000000018;
    *(v71 + 168) = 0x80000001D7719700;
    *(v71 + 176) = v95;
    *(v71 + 184) = v97;
    goto LABEL_49;
  }

LABEL_48:
  *(v71 + 160) = 0;
  *(v71 + 168) = 0;
  *(v71 + 176) = 0;
  *(v71 + 184) = 0;
LABEL_49:
  v98 = v192;
  v201(v192, &v44[v200], v52);
  if ((v199)(v98, 1, v77) == 1)
  {
    (*(v89 + 1))(v98, v52);
    v99 = v198;
    v100 = v183;
    v60 = &off_1E84DE000;
LABEL_53:
    *(v71 + 192) = 0;
    *(v71 + 200) = 0;
    *(v71 + 208) = 0;
    *(v71 + 216) = 0;
    goto LABEL_54;
  }

  v101 = &v98[*(v77 + 60)];
  v102 = v44;
  v103 = v98;
  v105 = *v101;
  v104 = *(v101 + 1);
  v106 = *(v190 + 8);

  v107 = v103;
  v44 = v102;
  v106(v107, v77);
  v52 = v202;
  v99 = v198;
  v100 = v183;
  v60 = 0x1E84DE000;
  if (!v104)
  {
    goto LABEL_53;
  }

  *(v71 + 192) = 0xD000000000000012;
  *(v71 + 200) = 0x80000001D7719720;
  *(v71 + 208) = v105;
  *(v71 + 216) = v104;
LABEL_54:
  v108 = sub_1D7702F20();
  v56 = [v100 *(v60 + 3560)];

  v109 = sub_1D7704260();
  v111 = v110;

  *(v71 + 224) = xmmword_1D77119F0;
  *(v71 + 240) = v109;
  *(v71 + 248) = v111;
  v112 = v193;
  v201(v193, &v44[v200], v52);
  v113 = v203;
  if ((v199)(v112, 1, v203) == 1)
  {
    (*(v204 + 1))(v112, v52);
    v114 = 0;
    v115 = 0;
    v116 = 0uLL;
    v34 = v206;
    v117 = v195;
    v66 = v205;
  }

  else
  {
    v118 = v194;
    v119 = &v112[*(v113 + 56)];
    v52 = v112;
    v120 = v186;
    v66 = v205;
    (*(v194 + 16))(v186, v119, v205);
    (*(v190 + 8))(v52, v113);
    (*(v99 + 24))(&v209, v66, v99);
    v121 = *(v118 + 8);
    v56 = v118 + 8;
    v121(v120, v66);
    v115 = 0xE900000000000063;
    v114 = 0x6974616D6F747561;
    if (v209)
    {
      v114 = 0x6C61756E616DLL;
      v115 = 0xE600000000000000;
    }

    v116 = xmmword_1D7711A00;
    v34 = v206;
    v117 = v195;
  }

  *(v71 + 256) = v116;
  *(v71 + 272) = v114;
  *(v71 + 280) = v115;
  v203 = v44;
  v122 = sub_1D767309C(v44, v196, v66, v197, v99);
  v54 = 0;
  if (v123)
  {
    v124 = v122;
  }

  else
  {
    v124 = 0;
  }

  v125 = vdup_n_s32(v123 == 0);
  v126.i64[0] = v125.u32[0];
  v126.i64[1] = v125.u32[1];
  *(v71 + 288) = vandq_s8(vcgezq_s64(vshlq_n_s64(v126, 0x3FuLL)), xmmword_1D7711A10);
  *(v71 + 304) = v124;
  *(v71 + 312) = v123;
  v44 = (v71 + 24);
  v204 = MEMORY[0x1E69E7CC0];
LABEL_63:
  if (v54 <= 9)
  {
    v127 = 9;
  }

  else
  {
    v127 = v54;
  }

  v128 = v127 + 1;
  v129 = &v44[32 * v54];
  while (v54 != 9)
  {
    if (v128 == ++v54)
    {
      __break(1u);
      goto LABEL_98;
    }

    v130 = (v129 + 32);
    v52 = *(v129 + 2);
    v129 += 32;
    if (v52)
    {
      v66 = *(v130 - 3);
      v131 = *(v130 - 1);
      v56 = *v130;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v204 = sub_1D76733B0(0, *(v204 + 2) + 1, 1, v204);
      }

      v60 = *(v204 + 2);
      v132 = *(v204 + 3);
      if (v60 >= v132 >> 1)
      {
        v204 = sub_1D76733B0((v132 > 1), v60 + 1, 1, v204);
      }

      v133 = v204;
      *(v204 + 2) = v60 + 1;
      v134 = &v133[32 * v60];
      *(v134 + 4) = v66;
      *(v134 + 5) = v52;
      *(v134 + 6) = v131;
      *(v134 + 7) = v56;
      v34 = v206;
      v117 = v195;
      goto LABEL_63;
    }
  }

  swift_setDeallocating();
  sub_1D76734D4(0, &qword_1EE0B03B0, &type metadata for DebugJournal.Detail, MEMORY[0x1E69E6720]);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v135 = v187[3];
  v136 = *v187 >> 62;
  if (v136 == 1)
  {
    v146 = *(v135 + 16);
    if (v146)
    {
      v147 = v135 + 32;
      v139 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1D76EABC0(v147, &v209);
        v148 = v209;
        v207 = 0;
        v208 = 0xE000000000000000;

        sub_1D7704850();
        v150 = v207;
        v149 = v208;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v139 = sub_1D76733B0(0, *(v139 + 2) + 1, 1, v139);
        }

        v152 = *(v139 + 2);
        v151 = *(v139 + 3);
        if (v152 >= v151 >> 1)
        {
          v139 = sub_1D76733B0((v151 > 1), v152 + 1, 1, v139);
        }

        sub_1D76EAC1C(&v209);
        *(v139 + 2) = v152 + 1;
        v153 = &v139[32 * v152];
        *(v153 + 2) = v148;
        *(v153 + 6) = v150;
        *(v153 + 7) = v149;
        v147 += 48;
        --v146;
      }

      while (v146);
      goto LABEL_95;
    }

    goto LABEL_94;
  }

  if (!v136)
  {
    v137 = *(v135 + 16);
    if (v137)
    {
      v138 = v135 + 32;
      v139 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1D76EABC0(v138, &v209);
        v140 = v209;
        v207 = 0;
        v208 = 0xE000000000000000;

        sub_1D7704850();
        v142 = v207;
        v141 = v208;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v139 = sub_1D76733B0(0, *(v139 + 2) + 1, 1, v139);
        }

        v144 = *(v139 + 2);
        v143 = *(v139 + 3);
        if (v144 >= v143 >> 1)
        {
          v139 = sub_1D76733B0((v143 > 1), v144 + 1, 1, v139);
        }

        sub_1D76EAC1C(&v209);
        *(v139 + 2) = v144 + 1;
        v145 = &v139[32 * v144];
        *(v145 + 2) = v140;
        *(v145 + 6) = v142;
        *(v145 + 7) = v141;
        v138 += 48;
        --v137;
      }

      while (v137);
      goto LABEL_95;
    }

LABEL_94:
    v139 = MEMORY[0x1E69E7CC0];
LABEL_95:
    v34 = v206;
    v117 = v195;
    goto LABEL_96;
  }

  v139 = MEMORY[0x1E69E7CC0];
LABEL_96:

  v154 = v203;
  v155 = v196;
  v156 = v205;
  v157 = v197;
  v158 = v198;
  v159 = sub_1D767377C(v203, v196, v205, v197, v198);
  v160 = sub_1D7673E64(v189 & 1, v117, v155, v156, v157, v158);

  (*(v180 + 8))(v154, v181);

  *&v209 = v179;
  *(&v209 + 1) = v178;
  v210.n128_u64[0] = v171;
  v210.n128_u64[1] = v176;
  *&v161 = v188;
  *(&v161 + 1) = v184;
  *&v162 = v174;
  *(&v162 + 1) = v173;
  v211 = v161;
  v212 = v162;
  *&v213 = v177;
  *(&v213 + 1) = v175;
  v214 = v172;
  *&v215 = v170;
  *(&v215 + 1) = v169;
  *&v216 = v204;
  *(&v216 + 1) = v139;
  *&v217 = v160;
  *(&v217 + 1) = v159;
  nullsub_1(&v209);
  v163 = v216;
  *(v34 + 96) = v215;
  *(v34 + 112) = v163;
  *(v34 + 128) = v217;
  v164 = v212;
  *(v34 + 32) = v211;
  *(v34 + 48) = v164;
  v165 = v214;
  *(v34 + 64) = v213;
  *(v34 + 80) = v165;
  result = v210;
  *v34 = v209;
  *(v34 + 16) = result;
  return result;
}

void sub_1D76720F0(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1D7702F50();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(a4 + 24);
  v12 = *(*(a4 + 16) - 8);
  if (*(v12 + 84) <= 0x7FFFFFFFu)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v12 + 84);
  }

  v14 = *(v11 - 8);
  v15 = *(v14 + 84);
  v16 = *(v9 + 80);
  v17 = *(v14 + 80);
  if (v15 <= v13)
  {
    v18 = v13;
  }

  else
  {
    v18 = *(v14 + 84);
  }

  v19 = v18 - 1;
  if (v10 > v18 - 1)
  {
    v19 = *(v9 + 84);
  }

  if (v19 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v19;
  }

  v21 = *(v12 + 80) & 0xF8;
  v22 = v21 | 7;
  v23 = v17 | v21 | 7;
  v24 = v21 + 23;
  v25 = ((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v26 = ((*(*(v11 - 8) + 64) + ((v25 + v17 + ((v21 + 23) & ~(v21 | 7))) & ~v17) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v27 = *(*(v8 - 8) + 64) + 7;
  v29 = ((v23 + 33 + ((((((((((v27 + ((v16 + 16) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v23) + v26;
  v30 = a3 >= v20;
  v31 = a3 - v20;
  if (v31 != 0 && v30)
  {
    if (v29 <= 3)
    {
      v35 = ((v31 + ~(-1 << (8 * v29))) >> (8 * v29)) + 1;
      if (HIWORD(v35))
      {
        v32 = 4;
      }

      else
      {
        if (v35 < 0x100)
        {
          v36 = 1;
        }

        else
        {
          v36 = 2;
        }

        if (v35 >= 2)
        {
          v32 = v36;
        }

        else
        {
          v32 = 0;
        }
      }
    }

    else
    {
      v32 = 1;
    }
  }

  else
  {
    v32 = 0;
  }

  if (v20 < a2)
  {
    v33 = ~v20 + a2;
    if (v29 < 4)
    {
      v34 = (v33 >> (8 * v29)) + 1;
      if (v29)
      {
        v37 = v33 & ~(-1 << (8 * v29));
        bzero(a1, ((v23 + 33 + ((((((((((v27 + ((v16 + 16) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v23) + v26);
        if (v29 != 3)
        {
          if (v29 == 2)
          {
            *a1 = v37;
            if (v32 > 1)
            {
LABEL_60:
              if (v32 == 2)
              {
                *(a1 + v29) = v34;
              }

              else
              {
                *(a1 + v29) = v34;
              }

              return;
            }
          }

          else
          {
            *a1 = v33;
            if (v32 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *a1 = v37;
        *(a1 + 2) = BYTE2(v37);
      }

      if (v32 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      bzero(a1, ((v23 + 33 + ((((((((((v27 + ((v16 + 16) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v23) + v26);
      *a1 = v33;
      v34 = 1;
      if (v32 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v32)
    {
      *(a1 + v29) = v34;
    }

    return;
  }

  if (v32 > 1)
  {
    if (v32 != 2)
    {
      *(a1 + v29) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *(a1 + v29) = 0;
  }

  else if (v32)
  {
    *(a1 + v29) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!a2)
  {
    return;
  }

LABEL_39:
  if ((v19 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) == 0)
    {
      *(a1 + 1) = (a2 - 1);
      return;
    }

    v44 = a2 & 0x7FFFFFFF;
    goto LABEL_50;
  }

  v38 = (a1 + v16 + 16) & ~v16;
  if (v10 == v20)
  {
    v39 = *(v9 + 56);
    v40 = v8;
    v41 = (a1 + v16 + 16) & ~v16;
    v42 = a2;
    v43 = v10;

LABEL_48:
    v39(v41, v42, v43, v40);
    return;
  }

  v28 = v23 + 33;
  a1 = ((v23 + 33 + ((((((((((v27 + v38) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v23);
  v45 = a2 - v18;
  if (a2 >= v18)
  {
    if (v26)
    {
      bzero(((v28 + ((((((((((v27 + v38) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v23), v26);
      *a1 = v45;
    }
  }

  else
  {
    v46 = (a2 + 1);
    if (v18 == 0x7FFFFFFF)
    {
      if ((v46 & 0x80000000) == 0)
      {
        *(((v28 + ((((((((((v27 + v38) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v23) + 8) = a2;
        return;
      }

      v44 = (a2 - 0x7FFFFFFF);
LABEL_50:
      *a1 = v44;
      *(a1 + 1) = 0;
      return;
    }

    v47 = ((a1 + v24) & ~v22);
    if (v13 < v15)
    {
      v39 = *(v14 + 56);
      v41 = (v47 + v25 + v17) & ~v17;
      v42 = (a2 + 1);
      v43 = v15;
      v40 = v11;

      goto LABEL_48;
    }

    v30 = a2 >= v13;
    v48 = a2 - v13;
    if (v30)
    {
      if (v25)
      {
        v50 = ((a1 + v24) & ~v22);
        bzero(v47, v25);
        *v50 = v48;
      }
    }

    else
    {
      v49 = *(v12 + 56);

      v49(v47, v46);
    }
  }
}

uint64_t sub_1D76725F0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1D7702F50();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(a3 + 24);
  v10 = *(*(a3 + 16) - 8);
  if (*(v10 + 84) <= 0x7FFFFFFFu)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v10 + 84);
  }

  v12 = *(v9 - 8);
  v13 = *(v12 + 84);
  v14 = *(v7 + 80);
  v15 = *(v12 + 80);
  if (v13 <= v11)
  {
    v16 = v11;
  }

  else
  {
    v16 = *(v12 + 84);
  }

  v17 = v16 - 1;
  if (v8 > v16 - 1)
  {
    v17 = *(v7 + 84);
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v17;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = *(v10 + 80) & 0xF8;
  v20 = v19 | 7;
  v21 = v15 | v20;
  v22 = v19 + 23;
  v23 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + v15 + 8;
  v24 = *(*(v6 - 8) + 64) + 7;
  v25 = (v15 | v20) + 33;
  v26 = a2 - v18;
  if (a2 <= v18)
  {
    goto LABEL_36;
  }

  v27 = ((*(*(v9 - 8) + 64) + ((v23 + (v22 & ~v20)) & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v25 + ((((((((((v24 + ((v14 + 16) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v21) + 16;
  v28 = 8 * v27;
  if (v27 <= 3)
  {
    v31 = ((v26 + ~(-1 << v28)) >> v28) + 1;
    if (HIWORD(v31))
    {
      v29 = *(a1 + v27);
      if (!v29)
      {
        goto LABEL_36;
      }

      goto LABEL_23;
    }

    if (v31 > 0xFF)
    {
      v29 = *(a1 + v27);
      if (!*(a1 + v27))
      {
        goto LABEL_36;
      }

      goto LABEL_23;
    }

    if (v31 < 2)
    {
LABEL_36:
      if ((v17 & 0x80000000) != 0)
      {
        v36 = (a1 + v14 + 16) & ~v14;
        if (v8 == v18)
        {
          v37 = *(v7 + 48);

          return v37(v36, v8, v6);
        }

        else
        {
          if (v16 == 0x7FFFFFFF)
          {
            v38 = *(((v25 + ((((((((((v24 + v36) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v21) + 8);
            if (v38 >= 0xFFFFFFFF)
            {
              LODWORD(v38) = -1;
            }

            v39 = v38 + 1;
          }

          else
          {
            v40 = (v22 + ((v25 + ((((((((((v24 + v36) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v21)) & ~v20;
            if (v11 >= v13)
            {
              v39 = (*(v10 + 48))(v40);
            }

            else
            {
              v39 = (*(v12 + 48))((v23 + v40) & ~v15, v13, v9);
            }
          }

          if (v39 >= 2)
          {
            return v39 - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      else
      {
        v35 = *(a1 + 1);
        if (v35 >= 0xFFFFFFFF)
        {
          LODWORD(v35) = -1;
        }

        return (v35 + 1);
      }
    }
  }

  v29 = *(a1 + v27);
  if (!*(a1 + v27))
  {
    goto LABEL_36;
  }

LABEL_23:
  v32 = (v29 - 1) << v28;
  if (v27 > 3)
  {
    v32 = 0;
  }

  if (v27)
  {
    if (v27 <= 3)
    {
      v33 = v27;
    }

    else
    {
      v33 = 4;
    }

    if (v33 > 2)
    {
      if (v33 == 3)
      {
        v34 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v34 = *a1;
      }
    }

    else if (v33 == 1)
    {
      v34 = *a1;
    }

    else
    {
      v34 = *a1;
    }
  }

  else
  {
    v34 = 0;
  }

  return v18 + (v34 | v32) + 1;
}

unint64_t sub_1D7672A08(unint64_t result)
{
  if (result >> 62)
  {
    if (result >> 62 != 1)
    {
      return result;
    }

    result &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  v1 = result;
}

uint64_t AdPlacementPolicyValidator.addPolicy(_:)(uint64_t a1)
{
  v3 = sub_1D77040D0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D7704110();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &aBlock[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7667C54(a1, v18);
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  sub_1D7667CB8(v18, v13 + 24);
  aBlock[4] = sub_1D76733A4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D7672F74;
  aBlock[3] = &block_descriptor_10;
  v14 = _Block_copy(aBlock);

  sub_1D77040F0();
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D76707B0(&qword_1EE0AEDA8, 255, MEMORY[0x1E69E7F60]);
  sub_1D7672E60();
  sub_1D76707B0(&qword_1EE0AED88, 255, sub_1D7672E60);
  sub_1D77046E0();
  MEMORY[0x1DA6FF3D0](0, v12, v7, v14);
  _Block_release(v14);
  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v12, v8);
}

uint64_t sub_1D7672D54()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocObject();
}

void sub_1D7672D94(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void, uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1D76734D4(255, a3, &type metadata for DebugJournal.Detail, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D7672E04(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_1D7672F1C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D7672E60()
{
  if (!qword_1EE0AED90)
  {
    sub_1D77040D0();
    v0 = sub_1D77044B0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0AED90);
    }
  }
}

void sub_1D7672EB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D7672F1C(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D7665328(255, a3);
    v4 = sub_1D77046B0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D7672F74(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1D7672FBC(uint64_t a1, uint64_t a2)
{
  sub_1D7667C54(a2, v8);
  swift_beginAccess();
  v3 = *(a1 + 96);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 96) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_1D7673574(0, v3[2] + 1, 1, v3);
    *(a1 + 96) = v3;
  }

  v6 = v3[2];
  v5 = v3[3];
  if (v6 >= v5 >> 1)
  {
    v3 = sub_1D7673574((v5 > 1), v6 + 1, 1, v3);
  }

  v3[2] = v6 + 1;
  sub_1D7667CB8(v8, &v3[5 * v6 + 4]);
  *(a1 + 96) = v3;
  return swift_endAccess();
}

uint64_t sub_1D767309C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a1;
  *&v34 = a2;
  *(&v34 + 1) = a3;
  *&v35 = a4;
  *(&v35 + 1) = a5;
  v9 = type metadata accessor for AdRequest();
  v10 = sub_1D77046B0();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v28 - v14;
  v16 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v13, v17);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v20 = type metadata accessor for JournalEntry();
  (*(v11 + 16))(v15, v29 + *(v20 + 76), v10);
  v21 = *(v9 - 8);
  if ((*(v21 + 48))(v15, 1, v9) == 1)
  {
    (*(v11 + 8))(v15, v10);
LABEL_6:
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    goto LABEL_7;
  }

  (*(v16 + 16))(v19, &v15[*(v9 + 56)], a3);
  (*(v21 + 8))(v15, v9);
  sub_1D7665328(0, &qword_1EE0AF6B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v22 = *(&v35 + 1);
  if (*(&v35 + 1))
  {
    v23 = v36;
    __swift_project_boxed_opaque_existential_1(&v34, *(&v35 + 1));
    v24 = (*(v23 + 8))(v22, v23);
    v26 = v25;
    __swift_destroy_boxed_opaque_existential_1(&v34);
    *&v34 = v24;
    *(&v34 + 1) = v26;
    type metadata accessor for CGSize(0);
    return sub_1D77042B0();
  }

LABEL_7:
  sub_1D7672E04(&v34, &qword_1EE0AF6A8, &qword_1EE0AF6B0);
  return 0;
}

char *sub_1D76733B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D766C3F0(0, &qword_1EE0AEC58, &type metadata for DebugJournal.Detail, MEMORY[0x1E69E6F90]);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void sub_1D76734D4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D7673524(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void *sub_1D7673574(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1D76736D4(0, &qword_1EE0AEC68, &qword_1EE0B0448);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D7666184(0, &qword_1EE0B0448);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1D76736D4(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D7666184(255, a3);
    v4 = sub_1D7704A20();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D7673734(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

char *sub_1D767377C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v48 = a2;
  *(&v48 + 1) = a3;
  *v49 = a4;
  *&v49[8] = a5;
  v10 = type metadata accessor for AdRequest();
  v11 = sub_1D77046B0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for AdContext();
  v45 = *(v16 - 8);
  v46 = v16;
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v21);
  v44 = &v43 - v22;
  *&v48 = a2;
  *(&v48 + 1) = a3;
  *v49 = a4;
  *&v49[8] = a5;
  v23 = type metadata accessor for JournalEntry();
  v24 = *(v23 + 76);
  v25 = *(v12 + 16);
  v47 = a1;
  v25(v15, a1 + v24, v11);
  v26 = *(v10 - 8);
  if ((*(v26 + 48))(v15, 1, v10) == 1)
  {
    (*(v12 + 8))(v15, v11);
    v27 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v29 = v45;
    v28 = v46;
    (*(v45 + 16))(v20, &v15[*(v10 + 52)], v46);
    (*(v26 + 8))(v15, v10);
    v30 = v44;
    (*(v29 + 32))(v44, v20, v28);
    *&v49[8] = a2;
    *&v49[16] = a4;
    boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(&v48);
    (*(*(a2 - 8) + 16))(boxed_opaque_existential_2, v30, a2);
    v49[24] = 0;
    v27 = sub_1D768C4A4(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v33 = *(v27 + 2);
    v32 = *(v27 + 3);
    if (v33 >= v32 >> 1)
    {
      v27 = sub_1D768C4A4((v32 > 1), v33 + 1, 1, v27);
    }

    (*(v29 + 8))(v30);
    *(v27 + 2) = v33 + 1;
    v34 = &v27[48 * v33];
    v35 = v48;
    v36 = *v49;
    *(v34 + 57) = *&v49[9];
    *(v34 + 2) = v35;
    *(v34 + 3) = v36;
  }

  v37 = *(v47 + *(v23 + 68));
  if (v37)
  {
    v50 = 1;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_1D768C4A4(0, *(v27 + 2) + 1, 1, v27);
    }

    v39 = *(v27 + 2);
    v38 = *(v27 + 3);
    if (v39 >= v38 >> 1)
    {
      v27 = sub_1D768C4A4((v38 > 1), v39 + 1, 1, v27);
    }

    *(v27 + 2) = v39 + 1;
    v40 = &v27[48 * v39];
    *(v40 + 4) = v37;
    v41 = v48;
    *(v40 + 56) = *v49;
    *(v40 + 40) = v41;
    v40[72] = v50;
  }

  return v27;
}

uint64_t sub_1D7673B94(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7666184(0, qword_1EE0AF7A0);
  result = sub_1D7703410();
  if (!v21)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7666184(0, &qword_1EE0B0F58);
  result = sub_1D7703410();
  if (!v19)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7666184(0, &qword_1EE0B1890);
  result = sub_1D7703410();
  if (v17)
  {
    v3 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    MEMORY[0x1EEE9AC00](v3, v3);
    v5 = (v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v6 + 16))(v5);
    v7 = *v5;
    v8 = type metadata accessor for BannerAdViewStyler();
    v15[3] = v8;
    v15[4] = &off_1F52522D8;
    v15[0] = v7;
    type metadata accessor for BannerAdViewLayoutAttributesFactory();
    v9 = swift_allocObject();
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v15, v8);
    MEMORY[0x1EEE9AC00](v10, v10);
    v12 = (v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = *v12;
    v9[5] = v8;
    v9[6] = &off_1F52522D8;
    v9[2] = v14;
    sub_1D7667CB8(&v18, (v9 + 7));
    sub_1D7667CB8(&v16, (v9 + 12));
    __swift_destroy_boxed_opaque_existential_1(v15);
    __swift_destroy_boxed_opaque_existential_1(v20);
    return v9;
  }

LABEL_7:
  __break(1u);
  return result;
}

char *sub_1D7673E64(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  *&v33 = a3;
  *(&v33 + 1) = a4;
  v30 = a4;
  v31 = a5;
  *&v34 = a5;
  *(&v34 + 1) = a6;
  v10 = type metadata accessor for JournalEntry();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v28 - v13;
  if ((a1 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v42 = a2;

  if (sub_1D7704470() < 2)
  {

    return MEMORY[0x1E69E7CC0];
  }

  sub_1D77044B0();
  v15 = (v11 + 8);
  v16 = MEMORY[0x1E69E7CC0];
  v29 = v6;
  do
  {
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1D7704530();
    (*v15)(v14, v10);

    sub_1D7670C74(v32, v24, 0, a3, v30, v31, v6);
    v39 = v32[6];
    v40 = v32[7];
    v41 = v32[8];
    v35 = v32[2];
    v36 = v32[3];
    v37 = v32[4];
    v38 = v32[5];
    v33 = v32[0];
    v34 = v32[1];
    if (get_enum_tag_for_layout_string_7NewsAds15FeedGroupAdDataVSg_0(&v33) != 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1D7678EC8(0, *(v16 + 2) + 1, 1, v16);
      }

      v26 = *(v16 + 2);
      v25 = *(v16 + 3);
      if (v26 >= v25 >> 1)
      {
        v16 = sub_1D7678EC8((v25 > 1), v26 + 1, 1, v16);
      }

      *(v16 + 2) = v26 + 1;
      v17 = &v16[144 * v26];
      *(v17 + 2) = v33;
      v18 = v34;
      v19 = v35;
      v20 = v37;
      *(v17 + 5) = v36;
      *(v17 + 6) = v20;
      *(v17 + 3) = v18;
      *(v17 + 4) = v19;
      v21 = v38;
      v22 = v39;
      v23 = v41;
      *(v17 + 9) = v40;
      *(v17 + 10) = v23;
      *(v17 + 7) = v21;
      *(v17 + 8) = v22;
      v6 = v29;
    }
  }

  while (sub_1D7704470() > 1);

  return v16;
}

uint64_t get_enum_tag_for_layout_string_7NewsAds15FeedGroupAdDataVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D767412C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7666184(0, qword_1EE0B1020);
  result = sub_1D7703410();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x1EEE9AC00](v4, v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for DebugJournalSummaryViewStyler();
    v17[3] = v9;
    v17[4] = &off_1F5253310;
    v17[0] = v8;
    v10 = type metadata accessor for DebugJournalSummaryViewLayoutAttributesFactory();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x1EEE9AC00](v12, v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_1F5253310;
    v11[2] = v16;
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    a2[3] = v10;
    a2[4] = &protocol witness table for DebugJournalSummaryViewLayoutAttributesFactory;
    *a2 = v11;
  }

  else
  {
    __break(1u);
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

uint64_t _s7NewsAds13BannerAdStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1D766CEFC(a1, &v27);
  sub_1D766CEFC(a2, &v33);
  if (v32)
  {
    if (v32 != 1)
    {
      v4 = vorrq_s8(v29, v30);
      if (v27 | *&vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) | v31 | *(&v31 + 1) | *(&v27 + 1) | v28 | *(&v28 + 1))
      {
        if (v38 != 2)
        {
          goto LABEL_20;
        }

        if (v33 != 1)
        {
          goto LABEL_20;
        }

        v5 = vorrq_s8(vorrq_s8(v34, v36), vorrq_s8(v35, v37));
        if (*&vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL)) | *(&v33 + 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v38 != 2)
        {
          goto LABEL_20;
        }

        v15 = vorrq_s8(vorrq_s8(v34, v36), vorrq_s8(v35, v37));
        if (*&vorr_s8(*v15.i8, *&vextq_s8(v15, v15, 8uLL)) | *(&v33 + 1) | v33)
        {
          goto LABEL_20;
        }
      }

      v3 = 1;
      return v3 & 1;
    }

    if (v38 == 1)
    {
      v24 = v29;
      v25 = v30;
      v26 = v31;
      v22 = v27;
      v23 = v28;
      v19 = v35;
      v20 = v36;
      v21 = v37;
      v17 = v33;
      v18 = v34;
      v3 = _s7NewsAds13BannerAdStateO7RecoverO2eeoiySbAE_AEtFZ_0(&v22, &v17);
      sub_1D76749B8(&v17);
      sub_1D76749B8(&v22);
      return v3 & 1;
    }

    sub_1D76749B8(&v27);
LABEL_20:
    sub_1D766E72C(&v33);
    v3 = 0;
    return v3 & 1;
  }

  if (v38)
  {
    __swift_destroy_boxed_opaque_existential_1(&v27);
    goto LABEL_20;
  }

  sub_1D7667CB8(&v27, &v22);
  sub_1D7667CB8(&v33, &v17);
  v6 = *(&v23 + 1);
  v7 = v24.i64[0];
  __swift_project_boxed_opaque_existential_1(&v22, *(&v23 + 1));
  v8 = (*(v7 + 8))(v6, v7);
  v10 = v9;
  v11 = v18.i64[1];
  v12 = v19.i64[0];
  __swift_project_boxed_opaque_existential_1(&v17, v18.i64[1]);
  if (v8 == (*(v12 + 8))(v11, v12) && v10 == v13)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_1D7704A30();
  }

  __swift_destroy_boxed_opaque_existential_1(&v17);
  __swift_destroy_boxed_opaque_existential_1(&v22);
  return v3 & 1;
}

uint64_t static BannerAd.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D7704A30() & 1) == 0 || (_s7NewsAds13BannerAdStateO2eeoiySbAC_ACtFZ_0((a1 + 2), (a2 + 2)) & 1) == 0)
  {
    return 0;
  }

  if (a1[13] == a2[13] && a1[14] == a2[14])
  {
    return 1;
  }

  return sub_1D7704A30();
}

uint64_t _s7NewsAds13BannerAdStateO7RecoverO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1D7674980(a1, &v35);
  sub_1D7674980(a2, &v38);
  if (v36 != 1)
  {
    if (!v36)
    {
      if (!v39)
      {
        goto LABEL_6;
      }

LABEL_9:
      sub_1D76749B8(&v38);
      v3 = 0;
      return v3 & 1;
    }

    if (v39 < 2)
    {
      __swift_destroy_boxed_opaque_existential_1(v37);
      __swift_destroy_boxed_opaque_existential_1(&v35);
      goto LABEL_9;
    }

    sub_1D7667CB8(&v35, v32);
    sub_1D7667CB8(&v38, v29);
    sub_1D7667CB8(v37, v26);
    sub_1D7667CB8(&v40, v23);
    v4 = v33;
    v5 = v34;
    __swift_project_boxed_opaque_existential_1(v32, v33);
    v6 = (*(v5 + 8))(v4, v5);
    v8 = v7;
    v9 = v30;
    v10 = v31;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    if (v6 == (*(v10 + 8))(v9, v10) && v8 == v11)
    {
    }

    else
    {
      v13 = sub_1D7704A30();

      v3 = 0;
      if ((v13 & 1) == 0)
      {
LABEL_22:
        __swift_destroy_boxed_opaque_existential_1(v23);
        __swift_destroy_boxed_opaque_existential_1(v26);
        __swift_destroy_boxed_opaque_existential_1(v29);
        __swift_destroy_boxed_opaque_existential_1(v32);
        return v3 & 1;
      }
    }

    v14 = v27;
    v15 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v16 = (*(v15 + 8))(v14, v15);
    v18 = v17;
    v19 = v24;
    v20 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    if (v16 == (*(v20 + 8))(v19, v20) && v18 == v21)
    {
      v3 = 1;
    }

    else
    {
      v3 = sub_1D7704A30();
    }

    goto LABEL_22;
  }

  if (v39 != 1)
  {
    goto LABEL_9;
  }

LABEL_6:
  v3 = 1;
  return v3 & 1;
}

unint64_t sub_1D7674A0C()
{
  result = qword_1EE0AF0B8;
  if (!qword_1EE0AF0B8)
  {
    type metadata accessor for BannerAdViewLayoutAttributesFactory();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AF0B8);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for AdInsertionType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D7674B14()
{
  result = qword_1EE0AF3C8;
  if (!qword_1EE0AF3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AF3C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AdInsertionType(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_1D7674C50()
{
  result = qword_1EE0AF3D0;
  if (!qword_1EE0AF3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AF3D0);
  }

  return result;
}

NewsAds::AdPolicyLayoutEnvironment __swiftcall AdPolicyLayoutEnvironment.init()()
{
  v1 = v0;
  result.content._rawValue = sub_1D7674DA8(MEMORY[0x1E69E7CC0]);
  v1->content._rawValue = result.content._rawValue;
  return result;
}

unint64_t sub_1D7674CD8()
{
  result = qword_1EE0AF3E8;
  if (!qword_1EE0AF3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AF3E8);
  }

  return result;
}

void *sub_1D7674DA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1D76AE374();
  v3 = sub_1D77048B0();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_1D76B87A4(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_1D76B87A4(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

double sub_1D7674EE4(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 72) = 0;
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

void *sub_1D7674F1C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1D7674F40()
{
  v0 = sub_1D7703210();
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v3, *MEMORY[0x1E69D6E90]);
  type metadata accessor for Settings.Ads.Debugging.SponsorshipOverride(0);
  swift_allocObject();
  result = Settings.Ads.Debugging.SponsorshipOverride.init(key:defaultValue:access:)(0xD000000000000034, 0x80000001D7718780, 0, v3);
  qword_1EE0B0A18 = result;
  return result;
}

uint64_t BannerAd.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FeedBannerAdPlacement.init(placementIdentifier:boundingSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = type metadata accessor for FeedBannerAdPlacement();
  v11 = a3 + v10[5];
  sub_1D7675210();
  v13 = *(v12 + 48);
  *v11 = 1;
  v14 = *MEMORY[0x1E69C5F08];
  v15 = sub_1D7703810();
  (*(*(v15 - 8) + 104))(&v11[v13], v14, v15);
  v16 = *MEMORY[0x1E69C6028];
  v17 = sub_1D77038B0();
  result = (*(*(v17 - 8) + 104))(v11, v16, v17);
  *(a3 + v10[7]) = 0;
  *a3 = a1;
  a3[1] = a2;
  v19 = (a3 + v10[6]);
  *v19 = a4;
  v19[1] = a5;
  return result;
}

void sub_1D7675210()
{
  if (!qword_1EE0AED40)
  {
    sub_1D7703810();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0AED40);
    }
  }
}

uint64_t sub_1D767527C()
{
  v0 = sub_1D7703210();
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v3, *MEMORY[0x1E69D6E90]);
  type metadata accessor for Settings.Ads.Debugging.VisualDebugging(0);
  swift_allocObject();
  result = Settings.Ads.Debugging.VisualDebugging.init(key:defaultValue:access:)(0xD000000000000022, 0x80000001D7718DB0, 0, v3);
  qword_1EE0B0C78 = result;
  return result;
}

uint64_t Settings.Ads.Debugging.SponsorshipOverride.init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = v4;
  v43 = a4;
  v44 = a1;
  v46 = a3;
  v45 = a2;
  v6 = sub_1D7703220();
  v36 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D7703210();
  v42 = *(v11 - 8);
  v12 = v42;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = qword_1EE0B0A60;
  v40 = *MEMORY[0x1E69D6E90];
  v39 = *(v12 + 104);
  v47 = v12 + 104;
  v33 = v11;
  v39(v15);
  v16 = *MEMORY[0x1E69D6EA0];
  v37 = *(v7 + 104);
  v38 = v7 + 104;
  v17 = v10;
  v34 = v16;
  v37(v10, v16, v6);
  v50 = 0;
  sub_1D76681C4(0, &qword_1EE0B08A8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  v18 = sub_1D7703270();
  v35 = v5;
  *(v5 + v41) = v18;
  v41 = qword_1EE0B0A58;
  v32[1] = "de.tag_eligibility";
  v19 = v40;
  v20 = v39;
  (v39)(v15, v40, v11);
  v21 = v10;
  v22 = v16;
  v24 = v36;
  v23 = v37;
  v37(v21, v22, v36);
  v49 = 0;
  swift_allocObject();
  *(v5 + v41) = sub_1D7703270();
  v41 = qword_1EE0B0A68;
  v25 = v19;
  v26 = v33;
  v20(v15, v25, v33);
  v23(v17, v34, v24);
  v48 = 0;
  swift_allocObject();
  v27 = sub_1D7703270();
  v28 = v42;
  *(v35 + v41) = v27;
  v29 = v43;
  (*(v28 + 16))(v15, v43, v26);
  v30 = sub_1D77030A0();
  (*(v28 + 8))(v29, v26);
  return v30;
}

void *sub_1D7675774(void *result, int a2)
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

uint64_t Settings.Ads.Debugging.VisualDebugging.init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v22 = a4;
  v25 = a3;
  v23 = a1;
  v24 = a2;
  v20 = sub_1D7703220();
  v4 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v5);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D7703210();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = qword_1EE0B0CB8;
  sub_1D7675B68(0, &qword_1EE0B08D8, sub_1D7675C0C, &type metadata for Settings.Ads.Debugging.VisualDebugging.Mode, MEMORY[0x1E69D6EB0]);
  v18[1] = "bugJournalSummaryViewRenderer";
  v18[2] = v13;
  v28 = 0;
  (*(v9 + 104))(v12, *MEMORY[0x1E69D6E90], v8);
  sub_1D7676AC4(0, &qword_1EE0AECA0, &qword_1EE0B0900, &type metadata for Settings.Ads.Debugging.VisualDebugging.Mode);
  sub_1D7676DD4(0, &qword_1EE0B0900, &type metadata for Settings.Ads.Debugging.VisualDebugging.Mode, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D7708FD0;
  v27 = 0;
  sub_1D7703230();
  v26 = 1;
  sub_1D7703230();
  (*(v4 + 104))(v7, *MEMORY[0x1E69D6EA0], v20);
  sub_1D7677E34();
  v14 = sub_1D7703240();
  v15 = v22;
  *(v21 + v19) = v14;
  (*(v9 + 16))(v12, v15, v8);
  v16 = sub_1D77030A0();
  (*(v9 + 8))(v15, v8);
  return v16;
}

void sub_1D7675B68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

unint64_t sub_1D7675C0C()
{
  result = qword_1EE0B0CC0;
  if (!qword_1EE0B0CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0CC0);
  }

  return result;
}

uint64_t FeedGroupAdData.init(kind:adjacentArticles:tag:keywords:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unint64_t *a4@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = FeedGroupAdData.Kind.description.getter();
  v11 = v10;
  sub_1D7676920(v8, v7);
  sub_1D7676AB0(v8, v7);
  v31 = a3;
  v37 = v11;
  if (v7 > 0x2B)
  {
    if (v7 - 44 >= 0x18)
    {
      sub_1D7676AB0(v8, v7);
      if (a3)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }

LABEL_8:
    if (a3)
    {
      goto LABEL_9;
    }

LABEL_19:
    v8 = MEMORY[0x1E69E7CC0];
    v35 = 1;
    v36 = 1;
    goto LABEL_20;
  }

  if (((1 << v7) & 0x7FFFFFF03FDLL) != 0)
  {
    goto LABEL_8;
  }

  if (((1 << v7) & 0xBC02) != 0)
  {
    if (a3)
    {
      v36 = [a3 contentProvider];
LABEL_6:
      sub_1D7676AB0(v8, v7);
LABEL_10:
      v12 = [a3 asTopic];
      if (v12 && (v13 = [v12 iAdCategories], swift_unknownObjectRelease(), v13))
      {
        v8 = sub_1D7704400();

        v35 = 0;
      }

      else
      {
        v35 = 0;
        v8 = MEMORY[0x1E69E7CC0];
      }

      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (a3)
  {
    if (![swift_unknownObjectRetain() asTopic])
    {
LABEL_34:
      v36 = [a3 contentProvider];
      swift_unknownObjectRelease();
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_1D7676AB0(v8, v7);
LABEL_9:
    v36 = 1;
    goto LABEL_10;
  }

LABEL_17:
  sub_1D7676AB0(v8, v7);
  v8 = MEMORY[0x1E69E7CC0];
  v35 = 1;
  v36 = 1;
LABEL_20:
  v34 = sub_1D7676B5C(a2);

  v14 = 0;
  v15 = 0;
  a3 = *(a2 + 16);
  v7 = MEMORY[0x1E69E7CC0];
LABEL_21:
  v16 = a2 + (v14 << 6);
  while (a3 != v14)
  {
    if (v14 >= *(a2 + 16))
    {
      __break(1u);
      goto LABEL_34;
    }

    v17 = (v16 + 64);
    ++v14;
    v18 = *(v16 + 72);
    v16 += 64;
    if (v18)
    {
      v32 = v15;
      v33 = v8;
      v19 = a4;
      v20 = *v17;

      v21 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1D7669634(0, *(v7 + 16) + 1, 1, v7);
      }

      v23 = *(v7 + 16);
      v22 = *(v7 + 24);
      if (v23 >= v22 >> 1)
      {
        v7 = sub_1D7669634((v22 > 1), v23 + 1, 1, v7);
      }

      *(v7 + 16) = v23 + 1;
      v24 = v7 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v18;
      v9 = v21;
      a4 = v19;
      v15 = v32;
      v8 = v33;
      goto LABEL_21;
    }
  }

  sub_1D76784F8(0, &qword_1EE0AED80);
  sub_1D766C8DC();
  v25 = sub_1D7704330();

  v27 = 0;
  v28 = 0;
  if ((v35 & 1) == 0)
  {
    v29 = [v31 identifier];
    v27 = sub_1D7704260();
    v28 = v30;

    result = swift_unknownObjectRelease();
  }

  *a4 = v9;
  a4[1] = v37;
  a4[2] = v8;
  a4[3] = v34;
  a4[4] = v25;
  a4[5] = v36;
  a4[6] = v27;
  a4[7] = v28;
  a4[8] = a2;
  return result;
}

unint64_t FeedGroupAdData.Kind.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = 0x64657461727543;
  switch(v2)
  {
    case 0uLL:
      break;
    case 1uLL:
      v3 = 0x657061707377654ELL;
      break;
    case 2uLL:
      v3 = 0x77654E6C61636F4CLL;
      break;
    case 3uLL:
    case 0x42uLL:
      v3 = 0x676E69646E657254;
      break;
    case 4uLL:
      v3 = 0x756F59726F46;
      break;
    case 5uLL:
      v6 = 0x64657373694DLL;
      goto LABEL_42;
    case 6uLL:
      v6 = 0x74736574614CLL;
LABEL_42:
      v3 = v6 & 0xFFFFFFFFFFFFLL | 0x7453000000000000;
      break;
    case 7uLL:
      v3 = 0x59726F4665726F4DLL;
      break;
    case 8uLL:
      v3 = 0xD000000000000012;
      break;
    case 9uLL:
      v3 = 0x6F72476369706F54;
      break;
    case 0xAuLL:
      v3 = 0x656E697A6167614DLL;
      break;
    case 0xBuLL:
      v3 = 0x726F76614677654ELL;
      break;
    case 0xCuLL:
      v3 = 0xD000000000000010;
      break;
    case 0xDuLL:
      v3 = 0x6F7661466F747541;
      break;
    case 0xEuLL:
      v3 = 0x6369747241676154;
      break;
    case 0xFuLL:
      v3 = 0x6575737349676154;
      break;
    case 0x10uLL:
      v3 = 0x6C6C6177796150;
      break;
    case 0x11uLL:
      v3 = 25665;
      break;
    case 0x12uLL:
      v5 = 1953460307;
      goto LABEL_44;
    case 0x13uLL:
      v3 = 0x72656874616557;
      break;
    case 0x14uLL:
      v3 = 7364935;
      break;
    case 0x15uLL:
      v3 = 0x746E6F436E656553;
      break;
    case 0x16uLL:
      v3 = 0x6957646572616853;
      break;
    case 0x17uLL:
      v3 = 0x656D656761676E45;
      break;
    case 0x18uLL:
      v3 = 0x536F546F72746E49;
      break;
    case 0x19uLL:
    case 0x1AuLL:
      v3 = 0x7374726F7053794DLL;
      break;
    case 0x1BuLL:
      v3 = 0x65527374726F7053;
      break;
    case 0x1CuLL:
      v3 = 0x63537374726F7053;
      break;
    case 0x1DuLL:
      v3 = 0xD000000000000010;
      break;
    case 0x1EuLL:
      v3 = 0x63537374726F7053;
      break;
    case 0x1FuLL:
      v3 = 0xD000000000000010;
      break;
    case 0x20uLL:
      v3 = 0x61467374726F7053;
      break;
    case 0x21uLL:
      v5 = 1751607624;
LABEL_44:
      v3 = v5 | 0x6867696C00000000;
      break;
    case 0x22uLL:
      v3 = 0x74537374726F7053;
      break;
    case 0x23uLL:
      v3 = 0x72427374726F7053;
      break;
    case 0x24uLL:
      v3 = 0x6F427374726F7053;
      break;
    case 0x25uLL:
      v3 = 0x76457374726F7053;
      break;
    case 0x26uLL:
    case 0x28uLL:
      v3 = 0xD000000000000013;
      break;
    case 0x27uLL:
      v3 = 0xD000000000000010;
      break;
    case 0x29uLL:
      v3 = 0xD000000000000010;
      break;
    case 0x2AuLL:
      v3 = 0x74756374726F6853;
      break;
    case 0x2BuLL:
      v3 = 0xD000000000000017;
      break;
    case 0x2CuLL:
      v3 = 0x6C656E6E616843;
      break;
    case 0x2DuLL:
    case 0x32uLL:
      v3 = 0xD000000000000011;
      break;
    case 0x2EuLL:
      v3 = 0x694C656C7A7A7550;
      break;
    case 0x2FuLL:
      v3 = 0x7241656C7A7A7550;
      break;
    case 0x30uLL:
    case 0x36uLL:
      v4 = 5;
      goto LABEL_63;
    case 0x31uLL:
      v3 = 0x6546656C7A7A7550;
      break;
    case 0x33uLL:
      v3 = 0xD000000000000010;
      break;
    case 0x34uLL:
      v3 = 0x6F59726F46676154;
      break;
    case 0x35uLL:
      v3 = 0xD000000000000016;
      break;
    case 0x37uLL:
      v3 = 0xD000000000000010;
      break;
    case 0x38uLL:
      v4 = 10;
LABEL_63:
      v3 = v4 | 0xD000000000000010;
      break;
    case 0x39uLL:
      v3 = 0x5265746144676154;
      break;
    case 0x3AuLL:
      v3 = 0x614D7374726F7053;
      break;
    case 0x3BuLL:
      v3 = 0x7974696E69666641;
      break;
    case 0x3CuLL:
      v3 = 0x6F74536465766153;
      break;
    case 0x3DuLL:
      v3 = 0xD000000000000010;
      break;
    case 0x3EuLL:
      v3 = 0x506C656E6E616843;
      break;
    case 0x3FuLL:
      v3 = 1685024582;
      break;
    case 0x40uLL:
      v3 = 0x655274736574614CLL;
      break;
    case 0x41uLL:
      v3 = 0x6365526465766153;
      break;
    case 0x43uLL:
      v3 = 0xD000000000000014;
      break;
    default:
      v3 = v1;
      break;
  }

  sub_1D7676920(v1, v2);
  return v3;
}

uint64_t sub_1D7676920(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x44)
  {
  }

  return result;
}

uint64_t sub_1D7676934()
{
  type metadata accessor for AdRequest();
  type metadata accessor for Journal();
  result = swift_getTupleTypeMetadata2();
  if (v1 <= 0x3F)
  {
    sub_1D7665328(255, &qword_1EE0AEBD0);
    result = swift_getTupleTypeMetadata2();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D7676A5C()
{
  result = qword_1EE0B0CD8;
  if (!qword_1EE0B0CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0CD8);
  }

  return result;
}

uint64_t sub_1D7676AB0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x44)
  {
  }

  return result;
}

void sub_1D7676AC4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1D7676DD4(255, a3, a4, MEMORY[0x1E69D6EA8]);
    v5 = sub_1D7704A20();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void *sub_1D7676B30(void *a1, int64_t a2, char a3)
{
  result = sub_1D7676ED4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1D7676B5C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    v21 = MEMORY[0x1E69E7CC0];
    sub_1D7676B30(0, v1, 0);
    v3 = v21;
    v4 = (v2 + 80);
    do
    {
      v5 = *v4;
      v6 = *(v21 + 16);
      v7 = *(v21 + 24);
      v8 = v6 + 1;

      if (v6 >= v7 >> 1)
      {
        result = sub_1D7676B30((v7 > 1), v6 + 1, 1);
      }

      *(v21 + 16) = v8;
      *(v21 + 8 * v6 + 32) = v5;
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
    v8 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v8)
    {
LABEL_25:

      sub_1D76784F8(0, &qword_1EE0AED80);
      sub_1D766C8DC();
      v19 = sub_1D7704330();

      sub_1D7669540(v20);
      return v19;
    }
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (v9 < *(v3 + 16))
  {
    v11 = *(v3 + 8 * v9 + 32);
    v12 = *(v11 + 16);
    v13 = *(v10 + 16);
    v14 = v13 + v12;
    if (__OFADD__(v13, v12))
    {
      goto LABEL_27;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v14 <= *(v10 + 24) >> 1)
    {
      if (*(v11 + 16))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v13 <= v14)
      {
        v15 = v13 + v12;
      }

      else
      {
        v15 = v13;
      }

      result = sub_1D7669634(result, v15, 1, v10);
      v10 = result;
      if (*(v11 + 16))
      {
LABEL_21:
        if ((*(v10 + 24) >> 1) - *(v10 + 16) < v12)
        {
          goto LABEL_29;
        }

        swift_arrayInitWithCopy();

        if (v12)
        {
          v16 = *(v10 + 16);
          v17 = __OFADD__(v16, v12);
          v18 = v16 + v12;
          if (v17)
          {
            goto LABEL_30;
          }

          *(v10 + 16) = v18;
        }

        goto LABEL_10;
      }
    }

    if (v12)
    {
      goto LABEL_28;
    }

LABEL_10:
    if (v8 == ++v9)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

void sub_1D7676DD4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t SponsorshipAdPlacement.init(placementIdentifier:insertionType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X8>)
{
  v7 = *a3;
  v8 = type metadata accessor for SponsorshipAdPlacement();
  v9 = *(v8 + 20);
  *&a4[v9] = 1;
  v10 = *MEMORY[0x1E69C6008];
  v11 = sub_1D77038B0();
  result = (*(*(v11 - 8) + 104))(&a4[v9], v10, v11);
  *a4 = a1;
  *(a4 + 1) = a2;
  a4[*(v8 + 24)] = v7;
  return result;
}

void *sub_1D7676ED4(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1D7677E88();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D7678458(0, &qword_1EE0AED80, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t AdRequestManager.initiateRequest(for:placement:builder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v111 = a4;
  v112 = a3;
  v127 = a2;
  v121 = a1;
  v119 = a5;
  v107 = *v5;
  v6 = v107[10];
  v7 = v107[13];
  v109 = type metadata accessor for AdContext();
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109, v8);
  v115 = v102 - v9;
  v10 = v107[12];
  v11 = v107[15];
  v120 = v6;
  v128 = v6;
  v129 = v10;
  v122 = v7;
  v130 = v7;
  v131 = v11;
  v12 = type metadata accessor for AdRequest();
  v13 = sub_1D77046B0();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v113 = (v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = v102 - v20;
  v22 = *(v12 - 8);
  v24 = MEMORY[0x1EEE9AC00](v19, v23);
  v110 = v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = v102 - v27;
  v116 = v5;
  v29 = v5[12];
  v30 = *(v11 + 8);
  v125 = v11 + 8;
  v126 = v10;
  v123 = v11;
  v124 = v30;
  v31 = v30(v10, v11);
  LOBYTE(v128) = 1;
  v106 = v29;
  AdRequestStore.request(for:behavior:)(v31, v32, &v128, v21);

  v33 = (*(v22 + 48))(v21, 1, v12);
  v118 = v12;
  if (v33 == 1)
  {
    v117 = v22;
    v35 = *(v14 + 8);
    v34 = v14 + 8;
    v103 = v35;
    v35(v21, v13);
    if (qword_1EE0AF008 != -1)
    {
      swift_once();
    }

    v104 = v34;
    v105 = v13;
    sub_1D766DF6C();
    v102[0] = v36;
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1D7709050;
    v38 = v123;
    v39 = v124(v126, v123);
    v41 = v40;
    v42 = MEMORY[0x1E69E6158];
    *(v37 + 56) = MEMORY[0x1E69E6158];
    v43 = sub_1D7668854();
    *(v37 + 32) = v39;
    *(v37 + 40) = v41;
    v44 = *(v121 + 16);
    v45 = *(v121 + 24);
    *(v37 + 96) = v42;
    *(v37 + 104) = v43;
    v114 = v43;
    *(v37 + 64) = v43;
    *(v37 + 72) = v44;
    v102[1] = v44;
    *(v37 + 80) = v45;
    v46 = v116;
    v47 = v116[14];
    v48 = v116[15];
    v49 = v116[17];
    if (v49)
    {
      v50 = v116[16];
      v128 = v116[14];
      v129 = v48;

      swift_bridgeObjectRetain_n();

      MEMORY[0x1DA6FF0D0](40, 0xE100000000000000);
      MEMORY[0x1DA6FF0D0](v50, v49);
      MEMORY[0x1DA6FF0D0](41, 0xE100000000000000);

      v47 = v128;
      v48 = v129;
    }

    else
    {
    }

    v69 = v114;
    *(v37 + 136) = v42;
    *(v37 + 144) = v69;
    *(v37 + 112) = v47;
    *(v37 + 120) = v48;
    sub_1D77045A0();
    sub_1D7703ED0();

    v70 = v115;
    v112(v46 + 2);
    v77 = v46[10];
    v78 = v46[11];
    __swift_project_boxed_opaque_existential_1(v46 + 7, v77);
    v79 = *(v78 + 16);
    v101 = v78;
    v100 = v38;
    v80 = v110;
    v81 = v70;
    v82 = v126;
    v83 = v38;
    v84 = v120;
    v79(v121, v81, v127, v120, v107[11], v126, v122, v107[14], v100, v77, v101);
    v85 = v46[13];
    v86 = v124;
    v87 = v124(v82, v83);
    Journal.addPrewarmedEntry(request:placementIdentifier:)(v80, v87, v88);

    v89 = v117;
    v90 = v113;
    v91 = v80;
    v92 = v118;
    (*(v117 + 16))(v113, v91, v118);
    (*(v89 + 56))(v90, 0, 1, v92);
    v93 = v86(v82, v83);
    AdRequestStore.store(request:for:)(v90, v93, v94);

    v103(v90, v105);
    (*(v108 + 8))(v115, v109);
    v128 = v84;
    v129 = v82;
    v95 = v122;
    v96 = v123;
    v130 = v122;
    v131 = v123;
    type metadata accessor for Journal();
    v97 = *(swift_getTupleTypeMetadata2() + 48);
    v98 = v119;
    (*(v89 + 32))(v119, v110, v92);
    *(v98 + v97) = v85;
    v128 = v84;
    v129 = v82;
    v130 = v95;
    v131 = v96;
    type metadata accessor for AdRequestResult();
  }

  else
  {
    v51 = v119;
    v52 = *(v22 + 32);
    v117 = v22 + 32;
    v115 = v52;
    (v52)(v28, v21, v12);
    v53 = v28;
    if (qword_1EE0AF008 != -1)
    {
      swift_once();
    }

    sub_1D766DF6C();
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1D7709050;
    v55 = v124(v126, v123);
    v57 = v56;
    v58 = MEMORY[0x1E69E6158];
    *(v54 + 56) = MEMORY[0x1E69E6158];
    v59 = sub_1D7668854();
    *(v54 + 32) = v55;
    *(v54 + 40) = v57;
    v61 = *(v121 + 16);
    v60 = *(v121 + 24);
    *(v54 + 96) = v58;
    *(v54 + 104) = v59;
    *(v54 + 64) = v59;
    *(v54 + 72) = v61;
    *(v54 + 80) = v60;
    v62 = v116;
    v63 = v116[14];
    v64 = v116[15];
    v65 = v116[17];
    if (v65)
    {
      v66 = v51;
      v67 = v116[16];
      v128 = v116[14];
      v129 = v64;

      swift_bridgeObjectRetain_n();

      MEMORY[0x1DA6FF0D0](40, 0xE100000000000000);
      v68 = v67;
      v51 = v66;
      v58 = MEMORY[0x1E69E6158];
      MEMORY[0x1DA6FF0D0](v68, v65);
      MEMORY[0x1DA6FF0D0](41, 0xE100000000000000);

      v63 = v128;
      v64 = v129;
    }

    else
    {
    }

    *(v54 + 136) = v58;
    *(v54 + 144) = v59;
    *(v54 + 112) = v63;
    *(v54 + 120) = v64;
    sub_1D77045A0();
    sub_1D7703ED0();

    v71 = v120;
    v72 = v126;
    v128 = v120;
    v129 = v126;
    v74 = v122;
    v73 = v123;
    v130 = v122;
    v131 = v123;
    type metadata accessor for Journal();
    v75 = v118;
    v76 = *(swift_getTupleTypeMetadata2() + 48);
    (v115)(v51, v53, v75);
    *(v51 + v76) = v62[13];
    v128 = v71;
    v129 = v72;
    v130 = v74;
    v131 = v73;
    type metadata accessor for AdRequestResult();
  }

  swift_storeEnumTagMultiPayload();
}

unint64_t sub_1D7677E34()
{
  result = qword_1EE0B0CC8;
  if (!qword_1EE0B0CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0CC8);
  }

  return result;
}

void sub_1D7677E88()
{
  if (!qword_1EE0AEC00)
  {
    sub_1D7678458(255, &qword_1EE0AED80, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v0 = sub_1D7704A20();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0AEC00);
    }
  }
}

uint64_t sub_1D7677F04()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D7677F34(uint64_t a1)
{
  v2 = sub_1D76783B0();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

uint64_t AdRequestStore.request(for:behavior:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, char *a4@<X8>)
{
  v5 = v4;
  v45 = a4;
  v9 = *(*v5 + 96);
  v48 = *(*v5 + 80);
  v49 = v9;
  v10 = type metadata accessor for AdRequest();
  v11 = sub_1D77046B0();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v41 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v36 - v18;
  v20 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v17, v21);
  v23 = &v36 - v22;
  v42 = *a3;
  sub_1D7703340();
  swift_beginAccess();
  v43 = a1;
  v44 = v5;
  v46 = a1;
  v47 = a2;

  v24 = MEMORY[0x1E69E6158];
  v25 = v20;
  sub_1D77041C0();

  if ((*(v20 + 48))(v19, 1, v10) == 1)
  {
    (*(v12 + 8))(v19, v11);
    swift_endAccess();
    v26 = 1;
    v27 = v45;
  }

  else
  {
    v37 = v12;
    v38 = v11;
    v39 = *(v20 + 32);
    v40 = v20;
    v39(v23, v19, v10);
    swift_endAccess();
    if (qword_1EE0AF008 != -1)
    {
      swift_once();
    }

    sub_1D766DF6C();
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1D7708FD0;
    *(v28 + 56) = v24;
    v29 = sub_1D7668854();
    v30 = v42;
    v31 = 7368560;
    if (v42)
    {
      v31 = 1701736302;
    }

    v32 = 0xE300000000000000;
    if (v42)
    {
      v32 = 0xE400000000000000;
    }

    v33 = v43;
    *(v28 + 32) = v43;
    *(v28 + 40) = a2;
    *(v28 + 96) = v24;
    *(v28 + 104) = v29;
    *(v28 + 64) = v29;
    *(v28 + 72) = v31;
    *(v28 + 80) = v32;

    sub_1D77045A0();
    sub_1D7703ED0();

    if ((v30 & 1) == 0)
    {
      v46 = v33;
      v47 = a2;
      swift_beginAccess();
      sub_1D77041B0();
      v34 = v41;
      sub_1D77041A0();
      swift_endAccess();
      (*(v37 + 8))(v34, v38);
    }

    v27 = v45;
    v39(v45, v23, v10);
    v26 = 0;
    v25 = v40;
  }

  (*(v25 + 56))(v27, v26, 1, v10);
  return sub_1D7703350();
}

unint64_t sub_1D76783B0()
{
  result = qword_1EE0B0CD0;
  if (!qword_1EE0B0CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0CD0);
  }

  return result;
}

void sub_1D7678404(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D7678458(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D76784A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D76784F8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D77044B0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_7NewsAds15FeedGroupAdDataV4KindO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1D767855C(uint64_t *a1@<X8>)
{
  v2 = 0x72616C75676572;
  if (*v1)
  {
    v2 = 0x746361706D6F63;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

char *AdContextBuilder.build<A, B, C>(for:build:)@<X0>(uint64_t *a1@<X0>, void (*a2)(void *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v68[1] = a3;
  v74 = a2;
  v68[0] = a4;
  v76 = *v4;
  v75 = *a1;
  v78 = *(v75 + 88);
  MEMORY[0x1EEE9AC00](a1, a2);
  v79 = v68 - v7;
  v8 = sub_1D7703370();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  v10 = qword_1EE0AF010;
  sub_1D766940C(0, &qword_1EE0AEBF0, &qword_1EE0AEBC0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v68[2] = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D7708FD0;
  v14 = a1[2];
  v13 = a1[3];
  v15 = MEMORY[0x1E69E6158];
  *(v12 + 56) = MEMORY[0x1E69E6158];
  v16 = sub_1D7668854();
  *(v12 + 64) = v16;
  v69 = v14;
  *(v12 + 32) = v14;
  *(v12 + 40) = v13;
  v70 = v13;

  v81[0] = AdContextBuilder.path.getter();
  sub_1D7668958(0, &qword_1EE0AED80, v15, MEMORY[0x1E69E62F8]);
  v18 = v17;
  v19 = sub_1D7669758();
  v72 = v18;
  v71 = v19;
  v20 = sub_1D7704210();
  v22 = v21;

  *(v12 + 96) = v15;
  *(v12 + 104) = v16;
  v23 = v16;
  *(v12 + 72) = v20;
  *(v12 + 80) = v22;
  sub_1D77045A0();
  v73 = v10;
  sub_1D7703ED0();

  v24 = v74;
  if (v74)
  {
    v25 = v76;
    v26 = swift_allocObject();

    sub_1D7679268(v24);
    sub_1D7703360();
    sub_1D7703390();
    swift_allocObject();
    v26[5] = sub_1D7703380();
    v26[6] = sub_1D76680A0(MEMORY[0x1E69E7CC0]);
    v26[2] = v5;
    v26[3] = 0x6C61636F6CLL;
    v26[4] = 0xE500000000000000;
    v82 = v25;
    v83 = &protocol witness table for AdContextBuilder;
    v81[0] = v26;

    v24(v81);
    sub_1D7679EA4(v24);
    __swift_destroy_boxed_opaque_existential_1(v81);
  }

  else
  {

    v26 = v5;
    v25 = v76;
  }

  v82 = v25;
  v83 = &protocol witness table for AdContextBuilder;
  v81[0] = v26;
  v27 = *(v75 + 112);
  v28 = v27[5];

  v29 = v78;
  v30 = v77;
  v28(v81, v78, v27);
  if (!v30)
  {
    v77 = v27;
    sub_1D7668958(0, &unk_1EE0AEBE0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7708DE0;
    *(inited + 32) = v26;

    v40 = sub_1D767B548();
    v81[0] = inited;
    sub_1D767BF84(v40);
    v41 = v81[0];
    if (v81[0] >> 62)
    {
      v42 = sub_1D7704880();
      if (v42)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v42 = *((v81[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v42)
      {
LABEL_11:
        v76 = v26;
        v84 = MEMORY[0x1E69E7CC0];
        result = sub_1D767C300(0, v42 & ~(v42 >> 63), 0);
        if (v42 < 0)
        {
          __break(1u);
          return result;
        }

        v75 = 0;
        v44 = v84;
        if ((v41 & 0xC000000000000001) != 0)
        {
          v45 = 0;
          do
          {
            v46 = MEMORY[0x1DA6FF530](v45, v41);
            v47 = AdContextBuilder.path.getter();
            swift_beginAccess();
            v48 = *(v46 + 48);

            swift_unknownObjectRelease();
            v84 = v44;
            v50 = v44[2];
            v49 = v44[3];
            if (v50 >= v49 >> 1)
            {
              sub_1D767C300((v49 > 1), v50 + 1, 1);
              v44 = v84;
            }

            ++v45;
            v44[2] = v50 + 1;
            v51 = &v44[2 * v50];
            v51[4] = v47;
            v51[5] = v48;
          }

          while (v42 != v45);
        }

        else
        {
          v60 = 32;
          do
          {
            v61 = *(v41 + v60);

            v62 = AdContextBuilder.path.getter();
            swift_beginAccess();
            v63 = *(v61 + 48);

            v84 = v44;
            v65 = v44[2];
            v64 = v44[3];
            if (v65 >= v64 >> 1)
            {
              sub_1D767C300((v64 > 1), v65 + 1, 1);
              v44 = v84;
            }

            v44[2] = v65 + 1;
            v66 = &v44[2 * v65];
            v66[4] = v62;
            v66[5] = v63;
            v60 += 8;
            --v42;
          }

          while (v42);
        }

        v29 = v78;
        v67 = v79;
LABEL_27:
        v84 = v44;
        return sub_1D767C3F4(v67, &v84, v29, v68[0]);
      }
    }

    v44 = MEMORY[0x1E69E7CC0];
    v67 = v79;
    goto LABEL_27;
  }

  v84 = v30;
  v31 = v30;
  sub_1D7665328(0, &qword_1EE0AEBD0);
  if (swift_dynamicCast())
  {
    v32 = v81[0];
    v33 = v81[1];

    sub_1D7704590();
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1D7709050;
    v35 = MEMORY[0x1E69E6158];
    *(v34 + 56) = MEMORY[0x1E69E6158];
    *(v34 + 64) = v23;
    *(v34 + 32) = v32;
    *(v34 + 40) = v33;
    *(v34 + 96) = v35;
    *(v34 + 104) = v23;
    *(v34 + 72) = v69;
    *(v34 + 80) = v70;

    v80 = AdContextBuilder.path.getter();
    v36 = sub_1D7704210();
    v38 = v37;

    *(v34 + 136) = v35;
    *(v34 + 144) = v23;
    *(v34 + 112) = v36;
    *(v34 + 120) = v38;
    sub_1D7703ED0();
  }

  else
  {

    LODWORD(v79) = sub_1D7704590();
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_1D7709050;
    v53 = MEMORY[0x1E69E6158];
    *(v52 + 56) = MEMORY[0x1E69E6158];
    *(v52 + 64) = v23;
    v54 = v70;
    *(v52 + 32) = v69;
    *(v52 + 40) = v54;
    swift_getErrorValue();

    v55 = sub_1D7704A80();
    *(v52 + 96) = v53;
    *(v52 + 104) = v23;
    *(v52 + 72) = v55;
    *(v52 + 80) = v56;
    v81[0] = AdContextBuilder.path.getter();
    v57 = sub_1D7704210();
    v59 = v58;

    *(v52 + 136) = v53;
    *(v52 + 144) = v23;
    *(v52 + 112) = v57;
    *(v52 + 120) = v59;
    sub_1D7703ED0();
  }

  swift_willThrow();
}

char *sub_1D7678EC8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D766C3F0(0, &qword_1EE0AEC48, &type metadata for DebugJournal, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 144);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[144 * v8])
    {
      memmove(v12, v13, 144 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}