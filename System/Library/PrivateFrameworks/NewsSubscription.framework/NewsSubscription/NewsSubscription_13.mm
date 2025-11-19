unint64_t sub_1D7871EA4()
{
  result = qword_1EC9CB200;
  if (!qword_1EC9CB200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB200);
  }

  return result;
}

unint64_t sub_1D7871EFC()
{
  result = qword_1EC9CB208;
  if (!qword_1EC9CB208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB208);
  }

  return result;
}

unint64_t sub_1D7871F54()
{
  result = qword_1EC9CB210;
  if (!qword_1EC9CB210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB210);
  }

  return result;
}

unint64_t sub_1D7871FAC()
{
  result = qword_1EC9CB218;
  if (!qword_1EC9CB218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB218);
  }

  return result;
}

unint64_t sub_1D7872004()
{
  result = qword_1EC9CB220;
  if (!qword_1EC9CB220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB220);
  }

  return result;
}

unint64_t sub_1D787205C()
{
  result = qword_1EC9CB228;
  if (!qword_1EC9CB228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB228);
  }

  return result;
}

unint64_t sub_1D78720B4()
{
  result = qword_1EC9CB230;
  if (!qword_1EC9CB230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB230);
  }

  return result;
}

unint64_t sub_1D787210C()
{
  result = qword_1EC9CB238;
  if (!qword_1EC9CB238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB238);
  }

  return result;
}

unint64_t sub_1D7872164()
{
  result = qword_1EC9CB240;
  if (!qword_1EC9CB240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB240);
  }

  return result;
}

unint64_t sub_1D78721BC()
{
  result = qword_1EC9CB248;
  if (!qword_1EC9CB248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB248);
  }

  return result;
}

unint64_t sub_1D7872214()
{
  result = qword_1EC9CB250;
  if (!qword_1EC9CB250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB250);
  }

  return result;
}

unint64_t sub_1D787226C()
{
  result = qword_1EC9CB258;
  if (!qword_1EC9CB258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB258);
  }

  return result;
}

unint64_t sub_1D78722C4()
{
  result = qword_1EC9CB260;
  if (!qword_1EC9CB260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB260);
  }

  return result;
}

unint64_t sub_1D787231C()
{
  result = qword_1EC9CB268;
  if (!qword_1EC9CB268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB268);
  }

  return result;
}

unint64_t sub_1D7872370()
{
  result = qword_1EC9CB278;
  if (!qword_1EC9CB278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB278);
  }

  return result;
}

unint64_t sub_1D78723C4()
{
  result = qword_1EC9CB280;
  if (!qword_1EC9CB280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB280);
  }

  return result;
}

unint64_t sub_1D7872418()
{
  result = qword_1EC9CB288;
  if (!qword_1EC9CB288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB288);
  }

  return result;
}

uint64_t sub_1D787246C(uint64_t a1, uint64_t a2)
{
  sub_1D78724F4(0, &qword_1EC9CB298, &type metadata for SignInWithAppleInfo, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D78724F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D7872544()
{
  result = qword_1EC9CB2A0;
  if (!qword_1EC9CB2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB2A0);
  }

  return result;
}

unint64_t sub_1D7872598()
{
  result = qword_1EC9CB2B0;
  if (!qword_1EC9CB2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB2B0);
  }

  return result;
}

uint64_t sub_1D78725EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x616D4579786F7270 && a2 == 0xEA00000000006C69;
  if (v4 || (sub_1D78B6724() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64496E69616D6F64 && a2 == 0xE800000000000000 || (sub_1D78B6724() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4564726177726F66 && a2 == 0xEC0000006C69616DLL || (sub_1D78B6724() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64496D616574 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D78B6724();

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

unint64_t sub_1D7872758()
{
  result = qword_1EC9CB2C0;
  if (!qword_1EC9CB2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB2C0);
  }

  return result;
}

void sub_1D78727AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D7872814()
{
  result = qword_1EC9CB2E0;
  if (!qword_1EC9CB2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB2E0);
  }

  return result;
}

unint64_t sub_1D7872868()
{
  result = qword_1EC9CB2E8;
  if (!qword_1EC9CB2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB2E8);
  }

  return result;
}

uint64_t sub_1D78728BC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1D7872904()
{
  result = qword_1EC9CB2F8;
  if (!qword_1EC9CB2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB2F8);
  }

  return result;
}

unint64_t sub_1D78729E4()
{
  result = qword_1EC9CB300;
  if (!qword_1EC9CB300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB300);
  }

  return result;
}

unint64_t sub_1D7872A3C()
{
  result = qword_1EC9CB308;
  if (!qword_1EC9CB308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB308);
  }

  return result;
}

unint64_t sub_1D7872A94()
{
  result = qword_1EC9CB310;
  if (!qword_1EC9CB310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB310);
  }

  return result;
}

unint64_t sub_1D7872AEC()
{
  result = qword_1EC9CB318;
  if (!qword_1EC9CB318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB318);
  }

  return result;
}

unint64_t sub_1D7872B44()
{
  result = qword_1EC9CB320;
  if (!qword_1EC9CB320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB320);
  }

  return result;
}

unint64_t sub_1D7872B9C()
{
  result = qword_1EC9CB328;
  if (!qword_1EC9CB328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB328);
  }

  return result;
}

unint64_t sub_1D7872BF4()
{
  result = qword_1EC9CB330;
  if (!qword_1EC9CB330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB330);
  }

  return result;
}

unint64_t sub_1D7872C4C()
{
  result = qword_1EC9CB338;
  if (!qword_1EC9CB338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB338);
  }

  return result;
}

unint64_t sub_1D7872CA4()
{
  result = qword_1EC9CB340;
  if (!qword_1EC9CB340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB340);
  }

  return result;
}

unint64_t sub_1D7872CFC()
{
  result = qword_1EC9CB348;
  if (!qword_1EC9CB348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB348);
  }

  return result;
}

unint64_t sub_1D7872D54()
{
  result = qword_1EC9CB350;
  if (!qword_1EC9CB350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB350);
  }

  return result;
}

unint64_t sub_1D7872DA8()
{
  result = qword_1EC9CB358;
  if (!qword_1EC9CB358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB358);
  }

  return result;
}

unint64_t sub_1D7872DFC()
{
  result = qword_1EC9CB360;
  if (!qword_1EC9CB360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB360);
  }

  return result;
}

uint64_t sub_1D7872E88()
{
  sub_1D78B6094();
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D775B7A8(0, &qword_1EE08FA10, sub_1D778CD10, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D78BCAB0;
  swift_getErrorValue();
  v1 = sub_1D78B67B4();
  v3 = v2;
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 64) = sub_1D775ABD4();
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  sub_1D78B42D4();
}

uint64_t ConfigurableOffersConfigFetcher.cachedConfigs.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = v2;
  return sub_1D7872FCC(v2);
}

uint64_t sub_1D7872FCC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t ConfigurableOffersConfigFetcher.deinit()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  sub_1D775DDC0(*(v0 + 72));
  return v0;
}

uint64_t ConfigurableOffersConfigFetcher.__deallocating_deinit()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  sub_1D775DDC0(*(v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t sub_1D7873064@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(*v1 + 72);
  *a1 = v2;
  return sub_1D7872FCC(v2);
}

unint64_t sub_1D78730B4()
{
  result = qword_1EC9CB370;
  if (!qword_1EC9CB370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB370);
  }

  return result;
}

unint64_t sub_1D787311C()
{
  result = qword_1EC9CB378;
  if (!qword_1EC9CB378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB378);
  }

  return result;
}

uint64_t sub_1D7873170@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if ((result - 1) > 0x12)
  {
    *a2 = 13;
  }

  else
  {
    *a2 = byte_1D78C9246[result - 1];
  }

  return result;
}

uint64_t FCPaywallType.paywallType.getter(unint64_t a1)
{
  if (a1 > 0x12)
  {
    return 0;
  }

  else
  {
    return qword_1D78C9260[a1];
  }
}

uint64_t HideMyEmailSignupModule.createViewController(for:)(uint64_t a1)
{
  v3 = type metadata accessor for HideMyEmailSignupDataModel();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_1D773C9B8(0, &qword_1EC9CB380);
  result = sub_1D78B39F4();
  if (v14)
  {
    sub_1D7741E34(&v13, v15);
    v7 = sub_1D78B37C4();
    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    type metadata accessor for HideMyEmailSignupViewController();
    sub_1D787354C(a1, &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    sub_1D7862ACC(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);

    v10 = sub_1D78B39C4();

    if (v10)
    {
      __swift_project_boxed_opaque_existential_1(v15, v15[3]);
      v11 = sub_1D78B4E44();
      sub_1D7873700(&qword_1EC9CB388, type metadata accessor for HideMyEmailSignupViewController);
      v12 = v10;
      sub_1D78B4A94();

      __swift_destroy_boxed_opaque_existential_1(v15);
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

uint64_t sub_1D7873430(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5[3] = sub_1D78B37D4();
  v5[4] = sub_1D7873700(&qword_1EC9CB390, MEMORY[0x1E698AAC8]);
  v5[0] = a2;
  sub_1D773C9B8(0, &qword_1EC9CAF38);

  sub_1D78B38D4();
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for HideMyEmailSignupDataModel();
  return sub_1D78B38D4();
}

uint64_t sub_1D787354C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HideMyEmailSignupDataModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D78735B0(void *a1)
{
  type metadata accessor for HideMyEmailSignupDataModel();
  v3 = *(v1 + 16);

  return sub_1D7873430(a1, v3);
}

uint64_t HideMyEmailSignupModule.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return v0;
}

uint64_t HideMyEmailSignupModule.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D7873700(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL Paywall.PaywallType.purchaseType.getter()
{
  result = 1;
  if (((1 << (*v0 >> 4)) & 0x1B3) == 0)
  {
    return ((1 << (*v0 >> 4)) & 0xC) == 0 && *v0 != 96;
  }

  return result;
}

uint64_t Paywall.PaywallType.fcPaywallType.getter()
{
  v1 = *v0;
  v2 = v1 >> 4;
  if (v1 >> 4 <= 3)
  {
    v4 = 3;
    if (v1)
    {
      v4 = 4;
    }

    v5 = 1;
    if (v1)
    {
      v5 = 2;
    }

    if (v2 != 2)
    {
      v4 = v5;
    }

    v6 = (v1 & 1) == 0;
    v7 = 1;
    if (!v6)
    {
      v7 = 2;
    }

    v8 = 3;
    if (!v6)
    {
      v8 = 4;
    }

    if (v2)
    {
      v7 = v8;
    }

    if (v2 <= 1)
    {
      return v7;
    }

    else
    {
      return v4;
    }
  }

  else if (v1 >> 4 <= 5)
  {
    if (v2 == 4)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }

  else if (v2 == 8)
  {
    return 19;
  }

  else if (v2 == 7)
  {
    if (v1 == 112)
    {
      return 6;
    }

    else
    {
      return 12;
    }
  }

  else if (v1 == 96)
  {
    return 0;
  }

  else
  {
    return 5;
  }
}

uint64_t Paywall.PaywallType.paywallType.getter()
{
  v1 = 1 << (*v0 >> 4);
  v2 = 2 * (*v0 != 96);
  if ((v1 & 0x19) != 0)
  {
    v2 = 1;
  }

  if ((v1 & 0x1A6) != 0)
  {
    return 2;
  }

  else
  {
    return v2;
  }
}

void Paywall.PaywallType.paywallSubtype.getter(_BYTE *a1@<X8>)
{
  v2 = *v1;
  v3 = v2 >> 4;
  v4 = (v2 >> 4) - 6;
  v5 = v2 & 1;
  if (v4 >= 3)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v3 > 3)
  {
    v5 = v6;
  }

  *a1 = v5;
}

uint64_t Paywall.isHardPaywall.getter()
{
  sub_1D7873930(v0, v2);
  if (v3)
  {
    if (v3 == 1)
    {
      sub_1D7873968(v2);
    }

    return 0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
    return 1;
  }
}

uint64_t Paywall.isVisible.getter()
{
  sub_1D7873930(v0, v2);
  if (!v3)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
    return 1;
  }

  if (v3 == 1)
  {
    sub_1D7873968(v2);
    return 1;
  }

  return 0;
}

uint64_t Paywall.SoftPaywallPosition.hashValue.getter()
{
  v1 = *v0;
  sub_1D78B6814();
  MEMORY[0x1DA703AC0](v1);
  return sub_1D78B6844();
}

uint64_t Paywall.PaywallSubtype.description.getter()
{
  if (*v0)
  {
    return 0x646572616873;
  }

  else
  {
    return 0x647261646E617473;
  }
}

uint64_t Paywall.PaywallSubtype.hashValue.getter()
{
  v1 = *v0;
  sub_1D78B6814();
  MEMORY[0x1DA703AC0](v1);
  return sub_1D78B6844();
}

unint64_t sub_1D7873B58()
{
  result = qword_1EC9CB398;
  if (!qword_1EC9CB398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB398);
  }

  return result;
}

unint64_t sub_1D7873BB0()
{
  result = qword_1EC9CB3A0;
  if (!qword_1EC9CB3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB3A0);
  }

  return result;
}

uint64_t sub_1D7873C04()
{
  if (*v0)
  {
    return 0x646572616873;
  }

  else
  {
    return 0x647261646E617473;
  }
}

uint64_t get_enum_tag_for_layout_string_16NewsSubscription7PaywallO(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

uint64_t sub_1D7873C58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D7873C94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D7873CE0(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1D7873D18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7873D60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Paywall.PaywallType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x78)
  {
    goto LABEL_17;
  }

  if (a2 + 136 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 136) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 136;
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

      return (*a1 | (v4 << 8)) - 136;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 136;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 4) & 0xFFFFFF8F | (16 * ((*a1 >> 1) & 7))) ^ 0x7F;
  if (v6 >= 0x77)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for Paywall.PaywallType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 136 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 136) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x78)
  {
    v4 = 0;
  }

  if (a2 > 0x77)
  {
    v5 = ((a2 - 120) >> 8) + 1;
    *result = a2 - 120;
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
    *result = 2 * (((-a2 >> 4) & 7) - 8 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D7873F38(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 0x5F)
  {
    return v1 >> 4;
  }

  else
  {
    return (v1 & 1 | (2 * (v1 >> 4))) - 6;
  }
}

_BYTE *sub_1D7873F68(_BYTE *result, unsigned int a2)
{
  if (a2 < 6)
  {
    *result = *result & 1 | (16 * a2);
  }

  else
  {
    *result = (a2 & 1 | (16 * (a2 >> 1))) + 48;
  }

  return result;
}

uint64_t RequestIncompleteAlert.title.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t RequestIncompleteAlert.message.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t RequestIncompleteAlert.preferredActionButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D7D90];
  v3 = sub_1D78B4974();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t RequestIncompleteAlert.acceptButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  v2 = sub_1D78B5CE4();

  return v2;
}

uint64_t sub_1D7874284()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t sub_1D7874348()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t sub_1D787443C()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v6 = v0[4];

    MEMORY[0x1DA702FF0](32, 0xE100000000000000);
    MEMORY[0x1DA702FF0](v1, v2);
    return v6;
  }

  else
  {
    v4 = v0[4];
  }

  return v4;
}

uint64_t OsloSheetPurchaseDataModel.purchaseID.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t OsloSheetPurchaseDataModel.postPurchaseDestination.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for OsloSheetPurchaseDataModel(0) + 20);

  return sub_1D78360F0(v3, a1);
}

void sub_1D7874598()
{
  sub_1D78B3294();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SubscribeButtonDestination(319);
    if (v1 <= 0x3F)
    {
      sub_1D7756CA8(319, &qword_1EE090120);
      if (v2 <= 0x3F)
      {
        sub_1D773F178(319, &unk_1EE096460, MEMORY[0x1E6968FB0]);
        if (v3 <= 0x3F)
        {
          sub_1D773F178(319, qword_1EE092E50, type metadata accessor for OffersButtonDestination);
          if (v4 <= 0x3F)
          {
            sub_1D7756CA8(319, &qword_1EE090C78);
            if (v5 <= 0x3F)
            {
              sub_1D773F178(319, &unk_1EE08FBF0, sub_1D7874760);
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

unint64_t sub_1D7874760()
{
  result = qword_1EE08FC00;
  if (!qword_1EE08FC00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE08FC00);
  }

  return result;
}

uint64_t EntitlementsCacheExpiredSignIn.title.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t EntitlementsCacheExpiredSignIn.message.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t EntitlementsCacheExpiredSignIn.preferredActionButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D7D90];
  v3 = sub_1D78B4974();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t EntitlementsCacheExpiredSignIn.acceptButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t EntitlementsCacheExpiredSignIn.rejectButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t sub_1D7874B44()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t sub_1D7874C10()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t sub_1D7874CD8()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t sub_1D7874D9C()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t sub_1D7874E6C()
{
  MEMORY[0x1DA7044F0](v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t SubscriptionNotSupportedInStorefrontAlert.title.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  v2 = sub_1D78B5C94();

  return v2;
}

uint64_t SubscriptionNotSupportedInStorefrontAlert.message.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  v2 = sub_1D78B5C94();

  return v2;
}

uint64_t SubscriptionNotSupportedInStorefrontAlert.preferredActionButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D7D90];
  v3 = sub_1D78B4974();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t SubscriptionNotSupportedInStorefrontAlert.acceptButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  v2 = sub_1D78B5CE4();

  return v2;
}

uint64_t sub_1D7875264(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4[0] = a1;
  v4[1] = a2;
  return a3(v4);
}

uint64_t WebAccessSubscriptionStatus.hashValue.getter()
{
  v1 = *v0;
  sub_1D78B6814();
  MEMORY[0x1DA703AC0](v1);
  return sub_1D78B6844();
}

unint64_t sub_1D787532C()
{
  result = qword_1EC9CB3B0;
  if (!qword_1EC9CB3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB3B0);
  }

  return result;
}

void sub_1D78753B8(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, char *a5)
{
  v33 = a3;
  sub_1D776F504(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D78B3294();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v32 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  sub_1D776F538(&a5[OBJC_IVAR____TtC16NewsSubscription22WebAccessAuthenticator_authenticationURL], v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {

    sub_1D77C12C8(v11);
    sub_1D7875F98();
    v20 = swift_allocError();
    *v21 = 0;
    v33();
  }

  else
  {
    (*(v13 + 32))(v18, v11, v12);
    v22 = *(v13 + 16);
    v32 = v18;
    v22(v16, v18, v12);
    v23 = *&a5[OBJC_IVAR____TtC16NewsSubscription22WebAccessAuthenticator_callbackURLScheme];
    v24 = *&a5[OBJC_IVAR____TtC16NewsSubscription22WebAccessAuthenticator_callbackURLScheme + 8];
    v25 = swift_allocObject();
    v25[2] = v33;
    v25[3] = a4;
    v25[4] = sub_1D7812C98;
    v25[5] = v19;
    v25[6] = a5;
    objc_allocWithZone(MEMORY[0x1E695A950]);

    v26 = a5;
    v27 = sub_1D7875FFC(v16, v23, v24, sub_1D7875FEC, v25);
    v28 = OBJC_IVAR____TtC16NewsSubscription22WebAccessAuthenticator_webSession;
    swift_beginAccess();
    v29 = *&v26[v28];
    *&v26[v28] = v27;

    v30 = *&v26[v28];
    if (v30)
    {
      [v30 setPresentationContextProvider_];
    }

    swift_beginAccess();
    v31 = *&v26[v28];
    if (v31)
    {
      swift_endAccess();
      [v31 start];
      (*(v13 + 8))(v32, v12);
    }

    else
    {
      (*(v13 + 8))(v32, v12);
      swift_endAccess();
    }
  }
}

void sub_1D7875738(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  v29 = a7;
  sub_1D776F504(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D78B3294();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v18 = a2;
    (a3)(a2);
    v19 = a2;
LABEL_8:

    goto LABEL_9;
  }

  sub_1D776F538(a1, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1D77C12C8(v13);
    sub_1D7875F98();
    v20 = swift_allocError();
    *v21 = 1;
    a3();
    v19 = v20;
    goto LABEL_8;
  }

  (*(v15 + 32))(v17, v13, v14);
  v22 = sub_1D781A0E0(0x745F737365636361, 0xEC0000006E656B6FLL);
  if (!v23)
  {
    sub_1D7875F98();
    v24 = swift_allocError();
    *v25 = 1;
    a3();
    (*(v15 + 8))(v17, v14);
    v19 = v24;
    goto LABEL_8;
  }

  a5(v22);

  (*(v15 + 8))(v17, v14);
LABEL_9:
  v26 = OBJC_IVAR____TtC16NewsSubscription22WebAccessAuthenticator_webSession;
  v27 = v29;
  swift_beginAccess();
  v28 = *(v27 + v26);
  *(v27 + v26) = 0;
}

void sub_1D78759F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 + OBJC_IVAR____TtC16NewsSubscription22WebAccessAuthenticator_purchaseController);
  v10 = sub_1D78B5C44();
  v11 = sub_1D78B5C44();
  sub_1D7788448();
  v12 = sub_1D78B6104();
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a1;
  v13[5] = a2;
  v15[4] = sub_1D7875F84;
  v15[5] = v13;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1D7875C08;
  v15[3] = &block_descriptor_31;
  v14 = _Block_copy(v15);

  [v9 verifyAccessTokenWithTagID:v10 accessToken:v11 consumedArticleCount:0 serialCompletion:0 callbackQueue:v12 completion:v14];
  _Block_release(v14);
}

void sub_1D7875B68(char a1, int a2, id a3, void (*a4)(id), uint64_t a5, void (*a6)(char *))
{
  if (a3)
  {
    v8 = a3;
    a4(a3);
  }

  else
  {
    if (a1)
    {
      v10 = 0;
      v9 = &v10;
    }

    else
    {
      v11 = 1;
      v9 = &v11;
    }

    a6(v9);
  }
}

uint64_t sub_1D7875C08(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  swift_unknownObjectRetain();
  v8 = a4;
  v7(a2, a3, a4);

  return swift_unknownObjectRelease();
}

uint64_t type metadata accessor for WebAccessAuthenticator()
{
  result = qword_1EE093568;
  if (!qword_1EE093568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7875D9C()
{
  sub_1D776F504(319);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1D7875E58()
{
  sub_1D78411D4(0, &qword_1EE08F220);
  swift_allocObject();
  return sub_1D78B4174();
}

uint64_t sub_1D7875EC8()
{
  sub_1D78411D4(0, &qword_1EC9CB430);
  swift_allocObject();
  return sub_1D78B4174();
}

unint64_t sub_1D7875F98()
{
  result = qword_1EC9CB438;
  if (!qword_1EC9CB438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB438);
  }

  return result;
}

id sub_1D7875FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = sub_1D78B3214();
  if (a3)
  {
    v12 = sub_1D78B5C44();
  }

  else
  {
    v12 = 0;
  }

  v17[4] = a4;
  v17[5] = a5;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1D7876144;
  v17[3] = &block_descriptor_15_0;
  v13 = _Block_copy(v17);
  v14 = [v6 initWithURL:v11 callbackURLScheme:v12 completionHandler:v13];
  _Block_release(v13);

  v15 = sub_1D78B3294();
  (*(*(v15 - 8) + 8))(a1, v15);

  return v14;
}

uint64_t sub_1D7876144(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1D776F504(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_1D78B3254();
    v10 = sub_1D78B3294();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_1D78B3294();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_1D77C12C8(v8);
}

id sub_1D7876288(int a1, int a2, id a3)
{
  [a3 horizontalSizeClass];
  v5 = sub_1D773F004(0, &qword_1EE08FC10);
  v32 = sub_1D78B61B4();
  v6 = qword_1D78C9B10[[a3 horizontalSizeClass] == 1];
  v7 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v7 setAlignment_];
  [v7 setLineHeightMultiple_];
  v8 = [a3 horizontalSizeClass];
  v9 = 28.6;
  if (v8 == 1)
  {
    v9 = 22.0;
  }

  [v7 setMinimumLineHeight_];
  sub_1D787772C(0, &qword_1EE08FA30, sub_1D778AFF4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D78C22A0;
  v11 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  v12 = v3[5];
  v13 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v12);
  v14 = *(v13 + 8);
  v15 = v11;
  v14(v33, v12, v13);
  v16 = v33[2];
  sub_1D7784CF4(v33);
  v17 = sub_1D773F004(0, &qword_1EE08FC00);
  *(inited + 40) = v16;
  v18 = *MEMORY[0x1E69DB648];
  *(inited + 64) = v17;
  *(inited + 72) = v18;
  sub_1D773F004(0, &qword_1EE08FC10);
  v19 = MEMORY[0x1E69DB660];
  *(inited + 80) = v32;
  v20 = *v19;
  *(inited + 104) = v5;
  *(inited + 112) = v20;
  v21 = MEMORY[0x1E69E7DE0];
  *(inited + 120) = v6;
  v22 = *MEMORY[0x1E69DB688];
  *(inited + 144) = v21;
  *(inited + 152) = v22;
  *(inited + 184) = sub_1D773F004(0, &unk_1EE08FCD8);
  *(inited + 160) = v7;
  v23 = v18;
  v24 = v20;
  v25 = v22;
  v26 = v7;
  sub_1D77FED68(inited);
  swift_setDeallocating();
  sub_1D778AFF4();
  swift_arrayDestroy();
  v27 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v28 = sub_1D78B5C44();
  type metadata accessor for Key(0);
  sub_1D778B060();
  v29 = sub_1D78B5BB4();

  v30 = [v27 initWithString:v28 attributes:v29];

  return v30;
}

id sub_1D78765EC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v53 = a6;
  v48[2] = a5;
  v48[1] = a4;
  v51 = a2;
  v50 = a1;
  sub_1D787772C(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v49 = v48 - v10;
  v55 = sub_1D78B3294();
  v52 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v48[0] = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a3 horizontalSizeClass];
  v54 = sub_1D773F004(0, &qword_1EE08FC10);
  v12 = sub_1D78B61B4();
  v13 = objc_allocWithZone(MEMORY[0x1E69DB7C8]);
  v14 = v12;
  v15 = [v13 init];
  [v15 setAlignment_];
  sub_1D787772C(0, &qword_1EE08FA30, sub_1D778AFF4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D78BF690;
  v17 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  v19 = v7[5];
  v18 = v7[6];
  __swift_project_boxed_opaque_existential_1(v7 + 2, v19);
  v20 = *(v18 + 8);
  v21 = v17;
  v20(v56, v19, v18);
  v22 = v56[3];
  sub_1D7784CF4(v56);
  v23 = sub_1D773F004(0, &qword_1EE08FC00);
  *(inited + 40) = v22;
  v24 = *MEMORY[0x1E69DB688];
  *(inited + 64) = v23;
  *(inited + 72) = v24;
  v25 = sub_1D773F004(0, &unk_1EE08FCD8);
  *(inited + 80) = v15;
  v26 = *MEMORY[0x1E69DB648];
  *(inited + 104) = v25;
  *(inited + 112) = v26;
  sub_1D773F004(0, &qword_1EE08FC10);
  *(inited + 144) = v54;
  v54 = v14;
  *(inited + 120) = v14;
  v27 = v24;
  v28 = v15;
  v29 = v26;
  sub_1D77FED68(inited);
  swift_setDeallocating();
  sub_1D778AFF4();
  swift_arrayDestroy();
  v30 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v31 = sub_1D78B5C44();
  type metadata accessor for Key(0);
  sub_1D778B060();
  v32 = sub_1D78B5BB4();
  v33 = v49;

  v34 = [v30 initWithString:v31 attributes:v32];

  v35 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
  sub_1D776F538(v53, v33);
  v36 = v52;
  v37 = v55;
  if ((*(v52 + 48))(v33, 1) == 1)
  {
    sub_1D77C12C8(v33);
  }

  else
  {
    v38 = v48[0];
    (*(v36 + 32))(v48[0], v33, v37);
    v53 = *MEMORY[0x1E69DB670];
    v39 = sub_1D78B3214();
    v40 = [v35 mutableString];
    v41 = v28;
    v42 = sub_1D78B5C44();
    v43 = [v40 rangeOfString_];
    v45 = v44;

    v28 = v41;
    [v35 addAttribute:v53 value:v39 range:{v43, v45}];

    (*(v36 + 8))(v38, v55);
  }

  v46 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithAttributedString_];

  return v46;
}

id sub_1D7876B9C(int a1, int a2, id a3)
{
  [a3 horizontalSizeClass];
  v4 = sub_1D773F004(0, &qword_1EE08FC10);
  v20 = sub_1D78B61B4();
  sub_1D78B5CE4();
  sub_1D787772C(0, &qword_1EE08FA30, sub_1D778AFF4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D78BCB50;
  v6 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  v7 = v3[5];
  v8 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v7);
  v9 = *(v8 + 8);
  v10 = v6;
  v9(v21, v7, v8);
  v11 = v21[6];
  sub_1D7784CF4(v21);
  v12 = sub_1D773F004(0, &qword_1EE08FC00);
  *(inited + 40) = v11;
  v13 = *MEMORY[0x1E69DB648];
  *(inited + 64) = v12;
  *(inited + 72) = v13;
  sub_1D773F004(0, &qword_1EE08FC10);
  *(inited + 104) = v4;
  *(inited + 80) = v20;
  v14 = v13;
  sub_1D77FED68(inited);
  swift_setDeallocating();
  sub_1D778AFF4();
  swift_arrayDestroy();
  v15 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v16 = sub_1D78B5C44();

  type metadata accessor for Key(0);
  sub_1D778B060();
  v17 = sub_1D78B5BB4();

  v18 = [v15 initWithString:v16 attributes:v17];

  return v18;
}

id sub_1D7876E20(int a1, int a2, id a3)
{
  v4 = v3;
  [a3 horizontalSizeClass];
  v5 = sub_1D773F004(0, &qword_1EE08FC10);
  v6 = sub_1D78B61B4();
  sub_1D787772C(0, &qword_1EE08FA30, sub_1D778AFF4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D78BCB50;
  v8 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  sub_1D773F004(0, &qword_1EE08FC10);
  v9 = MEMORY[0x1E69DB650];
  *(inited + 40) = v6;
  v10 = *v9;
  *(inited + 64) = v5;
  *(inited + 72) = v10;
  v12 = v4[5];
  v11 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v12);
  v13 = *(v11 + 8);
  v14 = v6;
  v15 = v8;
  v16 = v10;
  v13(v23, v12, v11);
  v17 = v23[5];
  sub_1D7784CF4(v23);
  *(inited + 104) = sub_1D773F004(0, &qword_1EE08FC00);
  *(inited + 80) = v17;
  sub_1D77FED68(inited);
  swift_setDeallocating();
  sub_1D778AFF4();
  swift_arrayDestroy();
  v18 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v19 = sub_1D78B5C44();
  type metadata accessor for Key(0);
  sub_1D778B060();
  v20 = sub_1D78B5BB4();

  v21 = [v18 initWithString:v19 attributes:v20];

  return v21;
}

void sub_1D78770A0(void *a1, void *a2)
{
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v6 = *(*v2 + 40);
    v7 = *(*v2 + 48);
    __swift_project_boxed_opaque_existential_1((*v2 + 16), v6);
    (*(v7 + 8))(v9, v6, v7);
    v5 = v9[1];
    sub_1D7784CF4(v9);
  }

  v8 = a2;
  [a1 setBackgroundColor_];
}

void sub_1D7877150(void *a1)
{
  v3 = *v1;
  [a1 setContentMode_];
  v4 = v3[5];
  v5 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v4);
  (*(v5 + 8))(v7, v4, v5);
  v6 = v7[2];
  sub_1D7784CF4(v7);
  [a1 setTintColor_];
}

void sub_1D78771FC(void *a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  (*(v4 + 8))(v6, v3, v4);
  v5 = v6[4];
  sub_1D7784CF4(v6);
  [a1 setBackgroundColor_];
}

void sub_1D78772FC(void *a1)
{
  v2 = [a1 titleLabel];
  if (v2)
  {
    v3 = v2;
    [v2 setLineBreakMode_];
  }

  v4 = [a1 titleLabel];
  if (v4)
  {
    v5 = v4;
    [v4 setTextAlignment_];
  }
}

void sub_1D78773FC(void *a1)
{
  v2 = [objc_opt_self() clearColor];
  [a1 setBackgroundColor_];

  v3 = [a1 titleLabel];
  if (v3)
  {
    v4 = v3;
    [v3 setLineBreakMode_];
  }

  v5 = [a1 titleLabel];
  if (v5)
  {
    v6 = v5;
    [v5 setTextAlignment_];
  }
}

id sub_1D78774F0()
{
  v1 = v0;
  sub_1D787772C(0, &qword_1EE08FA30, sub_1D778AFF4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D78BCB50;
  v3 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v4 = sub_1D773F004(0, &qword_1EE08FC10);
  v5 = v3;
  v6 = sub_1D78B61B4();
  v7 = MEMORY[0x1E69DB650];
  *(inited + 40) = v6;
  v8 = *v7;
  *(inited + 64) = v4;
  *(inited + 72) = v8;
  v9 = v1[5];
  v10 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v9);
  v11 = *(v10 + 8);
  v12 = v8;
  v11(v19, v9, v10);
  v13 = v19[7];
  sub_1D7784CF4(v19);
  *(inited + 104) = sub_1D773F004(0, &qword_1EE08FC00);
  *(inited + 80) = v13;
  sub_1D77FED68(inited);
  swift_setDeallocating();
  sub_1D778AFF4();
  swift_arrayDestroy();
  v14 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v15 = sub_1D78B5C44();
  type metadata accessor for Key(0);
  sub_1D778B060();
  v16 = sub_1D78B5BB4();

  v17 = [v14 initWithString:v15 attributes:v16];

  return v17;
}

void sub_1D787772C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D78777A4()
{
  v1 = v0;
  v2 = v0[23];
  v3 = v0[24];
  __swift_project_boxed_opaque_existential_1(v0 + 20, v2);
  if ((*(v3 + 8))(v2, v3))
  {
    v4 = [objc_opt_self() sharedApplication];
    v5 = [v4 applicationState];

    if (v5 == 2)
    {
      if (qword_1EE08FB98 != -1)
      {
        swift_once();
      }

      sub_1D78B60A4();

      sub_1D78B42C4();
    }

    else
    {
      v6 = *__swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
      sub_1D78B41F4();
      sub_1D7788448();
      v7 = sub_1D78B6104();
      v8 = swift_allocObject();
      *(v8 + 16) = v6;
      *(v8 + 24) = 0;

      sub_1D78B4094();

      v9 = swift_allocObject();
      *(v9 + 16) = v6;
      *(v9 + 24) = 0;

      v10 = sub_1D78B4014();
      sub_1D78B40D4();

      __swift_project_boxed_opaque_existential_1(v1 + 7, v1[10]);
      sub_1D787C424();
    }
  }
}

uint64_t sub_1D7877A04()
{
  v1 = v0;
  v2 = sub_1D78B5254();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D78B52A4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_opt_self();
  v11 = [v10 sharedAccount];
  [v11 reloadiTunesAccount];

  v12 = [v10 sharedAccount];
  v13 = [v12 isUserSignedIntoiTunes];

  sub_1D7788448();
  v14 = sub_1D78B6104();
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  *(v15 + 24) = v13;
  aBlock[4] = sub_1D7878750;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D775FB6C;
  aBlock[3] = &block_descriptor_11_1;
  v16 = _Block_copy(aBlock);

  sub_1D78B5274();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D7788538();
  sub_1D774C07C(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D775F4A4();
  sub_1D78B6324();
  MEMORY[0x1DA7033B0](0, v9, v5, v16);
  _Block_release(v16);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

void sub_1D7877D18(uint64_t a1, char a2)
{
  sub_1D774C07C(0, qword_1EE096030, type metadata accessor for PurchaseContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24 - v5;
  v7 = *(a1 + 104);
  ObjectType = swift_getObjectType();
  if ((*(v7 + 56))(ObjectType, v7))
  {
    goto LABEL_5;
  }

  v9 = *(a1 + 208);
  if (v9)
  {
    v10 = OBJC_IVAR____TtC16NewsSubscription29DynamicViewControllerDelegate_purchaseContext;
    swift_beginAccess();
    sub_1D787875C(v9 + v10, v6);
    v11 = type metadata accessor for PurchaseContext();
    if ((*(*(v11 - 8) + 48))(v6, 1, v11) != 1)
    {
      sub_1D77B9AA8(v6);
LABEL_5:
      v12 = (*(a1 + 200) ^ 1) & a2;
      v13 = 1;
      goto LABEL_8;
    }
  }

  else
  {
    v14 = type metadata accessor for PurchaseContext();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  }

  sub_1D77B9AA8(v6);
  v13 = 0;
  v12 = 1;
LABEL_8:
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D775B620(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D78BCAB0;
  v16 = sub_1D775ABD4();
  v17 = 20302;
  if (v12)
  {
    v17 = 5457241;
  }

  v18 = 0xE200000000000000;
  *(v15 + 56) = MEMORY[0x1E69E6158];
  *(v15 + 64) = v16;
  if (v12)
  {
    v18 = 0xE300000000000000;
  }

  *(v15 + 32) = v17;
  *(v15 + 40) = v18;
  sub_1D78B60A4();
  sub_1D78B42C4();

  if (v12)
  {
    v19 = *__swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
    sub_1D78B41F4();
    sub_1D7788448();
    v20 = sub_1D78B6104();
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    *(v21 + 24) = v13;

    sub_1D78B4094();

    v22 = swift_allocObject();
    *(v22 + 16) = v19;
    *(v22 + 24) = v13;

    v23 = sub_1D78B4014();
    sub_1D78B40D4();
  }

  else
  {
    sub_1D78B60A4();
    sub_1D78B42C4();
  }
}

uint64_t sub_1D7878154()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  swift_unknownObjectRelease();
  sub_1D78786A8(v0 + 112);
  __swift_destroy_boxed_opaque_existential_1(v0 + 160);

  return swift_deallocClassInstance();
}

uint64_t sub_1D78781B4()
{
  v1 = v0;
  v2 = sub_1D78B5254();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D78B52A4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() sharedAccount];
  v11 = [v10 isUserSignedIntoiTunes];

  *(v1 + 200) = v11;
  sub_1D7788448();
  v12 = sub_1D78B6104();
  aBlock[4] = sub_1D78786A0;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D775FB6C;
  aBlock[3] = &block_descriptor_32;
  v13 = _Block_copy(aBlock);

  sub_1D78B5274();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D7788538();
  sub_1D774C07C(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D775F4A4();
  sub_1D78B6324();
  MEMORY[0x1DA7033B0](0, v9, v5, v13);
  _Block_release(v13);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

void sub_1D7878484(uint64_t a1)
{
  if (*(a1 + 152) != 1)
  {
    return;
  }

  v11 = v1;
  v12 = v2;
  sub_1D774668C(a1 + 112, &v6);
  if (!v7)
  {
    sub_1D78786A8(&v6);
    goto LABEL_6;
  }

  sub_1D7741E34(&v6, v8);
  v3 = v9;
  v4 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  if ((*(v4 + 8))(v3, v4))
  {
    __swift_destroy_boxed_opaque_existential_1(v8);
LABEL_6:
    v5 = [objc_opt_self() sharedAccount];
    [v5 reloadiTunesAccount];

    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    sub_1D78B60A4();
    sub_1D78B42C4();
    sub_1D78777A4();
    return;
  }

  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B60A4();
  sub_1D78B42C4();
  __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_1D78786A8(uint64_t a1)
{
  sub_1D775B620(0, &qword_1EE094CE0, &qword_1EE094CE8, &protocol descriptor for SubscriptionStatusCheckBlockerType, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D787875C(uint64_t a1, uint64_t a2)
{
  sub_1D774C07C(0, qword_1EE096030, type metadata accessor for PurchaseContext, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ColorPaletteProviding.bundlePaywallColorPalette.getter@<X0>(_OWORD *a1@<X8>)
{
  if (qword_1EE093DB8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *&qword_1EE09C2E0;
  v7[0] = xmmword_1EE09C2D0;
  v7[1] = *&qword_1EE09C2E0;
  v2 = xmmword_1EE09C2F0;
  v3 = *&qword_1EE09C300;
  v7[2] = xmmword_1EE09C2F0;
  v7[3] = *&qword_1EE09C300;
  *a1 = xmmword_1EE09C2D0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  return sub_1D7878898(v7, &v6);
}

uint64_t ColorPaletteProviding.alacartePaywallColorPalette.getter@<X0>(_OWORD *a1@<X8>)
{
  if (qword_1EE08EF10 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *&qword_1EE09C220;
  v7[0] = xmmword_1EE09C210;
  v7[1] = *&qword_1EE09C220;
  v2 = xmmword_1EE09C230;
  v3 = *&qword_1EE09C240;
  v7[2] = xmmword_1EE09C230;
  v7[3] = *&qword_1EE09C240;
  *a1 = xmmword_1EE09C210;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  return sub_1D7878898(v7, &v6);
}

id ColorPaletteProviding.subscriptionOffersColorPalette.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC9C8440 != -1)
  {
    v13 = a1;
    swift_once();
    a1 = v13;
  }

  v1 = qword_1EC9D9DC0;
  v2 = *algn_1EC9D9DC8;
  v3 = qword_1EC9D9DD0;
  v4 = unk_1EC9D9DD8;
  v6 = qword_1EC9D9DE0;
  v5 = unk_1EC9D9DE8;
  v14 = unk_1EC9D9DE8;
  *a1 = qword_1EC9D9DC0;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v6;
  a1[5] = v5;
  v7 = v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v6;

  return v14;
}

uint64_t sub_1D7878ABC@<X0>(_OWORD *a1@<X8>)
{
  if (qword_1EE093DB8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *&qword_1EE09C2E0;
  v7[0] = xmmword_1EE09C2D0;
  v7[1] = *&qword_1EE09C2E0;
  v2 = xmmword_1EE09C2F0;
  v3 = *&qword_1EE09C300;
  v7[2] = xmmword_1EE09C2F0;
  v7[3] = *&qword_1EE09C300;
  *a1 = xmmword_1EE09C2D0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  return sub_1D7878898(v7, &v6);
}

uint64_t sub_1D7878B44@<X0>(_OWORD *a1@<X8>)
{
  if (qword_1EE08EF10 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *&qword_1EE09C220;
  v7[0] = xmmword_1EE09C210;
  v7[1] = *&qword_1EE09C220;
  v2 = xmmword_1EE09C230;
  v3 = *&qword_1EE09C240;
  v7[2] = xmmword_1EE09C230;
  v7[3] = *&qword_1EE09C240;
  *a1 = xmmword_1EE09C210;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  return sub_1D7878898(v7, &v6);
}

id sub_1D7878BCC@<X0>(void *a1@<X8>)
{
  if (qword_1EC9C8440 != -1)
  {
    v13 = a1;
    swift_once();
    a1 = v13;
  }

  v1 = qword_1EC9D9DC0;
  v2 = *algn_1EC9D9DC8;
  v3 = qword_1EC9D9DD0;
  v4 = unk_1EC9D9DD8;
  v6 = qword_1EC9D9DE0;
  v5 = unk_1EC9D9DE8;
  v14 = unk_1EC9D9DE8;
  *a1 = qword_1EC9D9DC0;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v6;
  a1[5] = v5;
  v7 = v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v6;

  return v14;
}

unint64_t sub_1D7878C7C(void *a1)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_1D78B3134();

  v5 = [PaywallModel.tag.getter() publisherPaidOfferableConfigurations];
  swift_unknownObjectRelease();
  if (!v5)
  {
    return v4;
  }

  sub_1D7878F2C();
  v6 = sub_1D78B5EB4();

  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  if (!sub_1D78B6534())
  {
LABEL_10:

    return v4;
  }

  v7 = sub_1D78B6534();
LABEL_5:

  if (v7 == 1)
  {
    return sub_1D7878F78(a1);
  }

  else
  {
    return sub_1D78798D0(a1);
  }
}

uint64_t sub_1D7878E68()
{
  v1 = v0[14];
  v10[12] = v0[13];
  v10[13] = v1;
  v2 = v0[16];
  v10[14] = v0[15];
  v10[15] = v2;
  v3 = v0[10];
  v10[8] = v0[9];
  v10[9] = v3;
  v4 = v0[12];
  v10[10] = v0[11];
  v10[11] = v4;
  v5 = v0[6];
  v10[4] = v0[5];
  v10[5] = v5;
  v6 = v0[8];
  v10[6] = v0[7];
  v10[7] = v6;
  v7 = v0[2];
  v10[0] = v0[1];
  v10[1] = v7;
  v8 = v0[4];
  v10[2] = v0[3];
  v10[3] = v8;
  sub_1D7772B44(v10);
  return swift_deallocClassInstance();
}

unint64_t sub_1D7878F2C()
{
  result = qword_1EE08FC48;
  if (!qword_1EE08FC48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE08FC48);
  }

  return result;
}

unint64_t sub_1D7878F78(void *a1)
{
  v2 = [a1 subscriptionPeriodInISO_8601];
  v3 = sub_1D78B5C74();
  v5 = v4;

  v6 = sub_1D77DB4A0(v3, v5);
  v8 = v7;

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = objc_opt_self();
  v11 = [v10 bundleForClass_];
  v12 = sub_1D78B3134();

  if (!v8)
  {
    return v12;
  }

  v13 = [a1 introductoryOffer];
  if (!v13)
  {

    sub_1D774FE1C();
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1D78BCB50;
    v32 = [a1 subscriptionPriceFormatted];
    v33 = sub_1D78B5C74();
    v35 = v34;

    v36 = MEMORY[0x1E69E6158];
    *(v31 + 56) = MEMORY[0x1E69E6158];
    v37 = sub_1D775ABD4();
    *(v31 + 32) = v33;
    *(v31 + 40) = v35;
    *(v31 + 96) = v36;
    *(v31 + 104) = v37;
    *(v31 + 64) = v37;
    *(v31 + 72) = v6;
    *(v31 + 80) = v8;
    sub_1D78B5C94();
    return v12;
  }

  v79 = v6;

  v14 = [a1 introductoryOffer];
  if (!v14)
  {
LABEL_7:
    swift_bridgeObjectRelease_n();
    return v12;
  }

  v15 = v14;
  v76 = ObjCClassFromMetadata;
  v77 = v12;
  v16 = [v10 bundleForClass_];
  sub_1D78B3134();

  sub_1D774FE1C();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D78BCB50;
  v18 = [a1 subscriptionPriceFormatted];
  v19 = sub_1D78B5C74();
  v20 = v15;
  v22 = v21;

  v23 = MEMORY[0x1E69E6158];
  *(v17 + 56) = MEMORY[0x1E69E6158];
  v24 = sub_1D775ABD4();
  *(v17 + 32) = v19;
  *(v17 + 40) = v22;
  v25 = v20;
  *(v17 + 96) = v23;
  *(v17 + 104) = v24;
  v75 = v24;
  *(v17 + 64) = v24;
  *(v17 + 72) = v79;
  *(v17 + 80) = v8;

  sub_1D78B5C94();

  v26 = [v20 subscriptionPeriodInISO_8601];
  if (v26)
  {
    v27 = v26;
    v28 = sub_1D78B5C74();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  result = [v20 numOfPeriods];
  v12 = v77;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v39 = sub_1D77DB734(v28, v30, result);
  v41 = v40;

  if (!v41)
  {

    goto LABEL_7;
  }

  v42 = [v20 offerType];
  if (v42 != 1)
  {
    if (v42 != 2)
    {
      if (v42 == 3)
      {

        v43 = [v10 bundleForClass_];
        sub_1D78B3134();

        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_1D78BCAB0;
        *(v44 + 56) = MEMORY[0x1E69E6158];
        *(v44 + 64) = v75;
        *(v44 + 32) = v39;
        *(v44 + 40) = v41;
        v78 = sub_1D78B5C94();

        v45 = [v10 bundleForClass_];
        sub_1D78B3134();

        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_1D78BCB50;
        v47 = [a1 subscriptionPriceFormatted];
        v48 = sub_1D78B5C74();
        v50 = v49;

        v51 = MEMORY[0x1E69E6158];
        *(v46 + 56) = MEMORY[0x1E69E6158];
        *(v46 + 64) = v75;
        *(v46 + 32) = v48;
        *(v46 + 40) = v50;
        *(v46 + 96) = v51;
        *(v46 + 104) = v75;
        v12 = v78;
        *(v46 + 72) = v79;
        *(v46 + 80) = v8;
        sub_1D78B5C94();

        return v12;
      }

      swift_bridgeObjectRelease_n();
      goto LABEL_7;
    }

    v80 = v39;
    v52 = v23;
    v53 = [v10 bundleForClass_];
    sub_1D78B3134();
    v54 = v25;

    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1D78BCB50;
    result = [v25 priceFormatted];
    if (result)
    {
      v56 = result;
      swift_bridgeObjectRelease_n();

      v57 = sub_1D78B5C74();
      v59 = v58;

      *(v55 + 56) = v52;
      *(v55 + 64) = v75;
      *(v55 + 32) = v57;
      *(v55 + 40) = v59;
      *(v55 + 96) = v52;
      *(v55 + 104) = v75;
      *(v55 + 72) = v80;
      *(v55 + 80) = v41;
      v12 = sub_1D78B5C94();
LABEL_26:

      return v12;
    }

    goto LABEL_29;
  }

  v60 = [v20 subscriptionPeriodInISO_8601];
  if (v60)
  {
    v61 = v60;
    v62 = sub_1D78B5C74();
    v64 = v63;
  }

  else
  {
    v62 = 0;
    v64 = 0;
  }

  v65 = sub_1D77DB4A0(v62, v64);
  v67 = v66;

  if (!v67)
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    return v77;
  }

  v81 = v39;

  v68 = [v10 bundleForClass_];
  sub_1D78B3134();
  v54 = v20;

  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_1D78BF690;
  result = [v20 priceFormatted];
  if (result)
  {
    v70 = result;
    swift_bridgeObjectRelease_n();

    v71 = sub_1D78B5C74();
    v73 = v72;

    v74 = MEMORY[0x1E69E6158];
    *(v69 + 56) = MEMORY[0x1E69E6158];
    *(v69 + 64) = v75;
    *(v69 + 32) = v71;
    *(v69 + 40) = v73;
    *(v69 + 96) = v74;
    *(v69 + 104) = v75;
    *(v69 + 72) = v65;
    *(v69 + 80) = v67;
    *(v69 + 136) = v74;
    *(v69 + 144) = v75;
    *(v69 + 112) = v81;
    *(v69 + 120) = v41;
    v12 = sub_1D78B5C94();
    goto LABEL_26;
  }

LABEL_30:
  __break(1u);
  return result;
}

unint64_t sub_1D78798D0(void *a1)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  v4 = [v3 bundleForClass_];
  v5 = sub_1D78B3134();

  v6 = [a1 introductoryOffer];
  if (!v6)
  {
    return v5;
  }

  v7 = [a1 introductoryOffer];
  if (!v7)
  {
    return v5;
  }

  v8 = v7;
  v9 = [v7 subscriptionPeriodInISO_8601];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1D78B5C74();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  result = [v8 numOfPeriods];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v15 = sub_1D77DB734(v11, v13, result);
  v17 = v16;

  if (!v17)
  {
LABEL_21:

    return v5;
  }

  v18 = [v8 offerType];
  if (v18 != 1)
  {
    if (v18 != 2)
    {
      if (v18 == 3)
      {

        v19 = [v3 bundleForClass_];
        sub_1D78B3134();

        sub_1D774FE1C();
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_1D78BCAB0;
        *(v20 + 56) = MEMORY[0x1E69E6158];
        *(v20 + 64) = sub_1D775ABD4();
        *(v20 + 32) = v15;
        *(v20 + 40) = v17;
LABEL_20:
        v5 = sub_1D78B5C94();

        goto LABEL_21;
      }

LABEL_22:

      swift_bridgeObjectRelease_n();
      return v5;
    }

    v21 = [v3 bundleForClass_];
    sub_1D78B3134();

    sub_1D774FE1C();
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1D78BCB50;
    v23 = MEMORY[0x1E69E6158];
    *(v22 + 56) = MEMORY[0x1E69E6158];
    v24 = sub_1D775ABD4();
    *(v22 + 64) = v24;
    *(v22 + 32) = v15;
    *(v22 + 40) = v17;

    result = [v8 priceFormatted];
    if (result)
    {
      v25 = result;
      swift_bridgeObjectRelease_n();

      v26 = sub_1D78B5C74();
      v28 = v27;

      *(v22 + 96) = v23;
      *(v22 + 104) = v24;
      *(v22 + 72) = v26;
      *(v22 + 80) = v28;
      goto LABEL_20;
    }

    goto LABEL_25;
  }

  v46 = v15;
  v29 = [v8 subscriptionPeriodInISO_8601];
  if (v29)
  {
    v30 = v29;
    v44 = sub_1D78B5C74();
    v32 = v31;

    v29 = v44;
  }

  else
  {
    v32 = 0;
  }

  v45 = sub_1D77DB4A0(v29, v32);
  v34 = v33;

  if (!v34)
  {
    goto LABEL_22;
  }

  v35 = v34;

  v36 = [v3 bundleForClass_];
  sub_1D78B3134();

  sub_1D774FE1C();
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1D78C22A0;
  v38 = MEMORY[0x1E69E6158];
  *(v37 + 56) = MEMORY[0x1E69E6158];
  v39 = sub_1D775ABD4();
  *(v37 + 64) = v39;
  *(v37 + 32) = v46;
  *(v37 + 40) = v17;

  result = [v8 priceFormatted];
  if (result)
  {
    v40 = result;

    swift_bridgeObjectRelease_n();

    v41 = sub_1D78B5C74();
    v43 = v42;

    *(v37 + 96) = v38;
    *(v37 + 104) = v39;
    *(v37 + 72) = v41;
    *(v37 + 80) = v43;
    *(v37 + 136) = v38;
    *(v37 + 144) = v39;
    *(v37 + 112) = v45;
    *(v37 + 120) = v35;
    *(v37 + 176) = v38;
    *(v37 + 184) = v39;
    *(v37 + 152) = v45;
    *(v37 + 160) = v35;

    goto LABEL_20;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t PostPurchaseDestination.overridenPostPurchaseDestination(with:postPurchaseUrl:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v35 = a3;
  v34 = a2;
  v37 = a4;
  sub_1D776F504(0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v34 - v9;
  v11 = sub_1D78B3294();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v34 - v16;
  v18 = type metadata accessor for PostPurchaseDestination();
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v34 - v22;
  if (a1 == 2)
  {
    v30 = v12;
    if (v35)
    {
      sub_1D78B3274();
      if ((*(v12 + 48))(v10, 1, v11) != 1)
      {
        v33 = *(v12 + 32);
        v33(v17, v10, v11);
        v33(v37, v17, v11);
        return swift_storeEnumTagMultiPayload();
      }

      sub_1D787AA1C(v10, sub_1D776F504);
    }

    v27 = v36;
    sub_1D787A9B8(v36, v21);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v30 + 32))(v8, v21, v11);
      v31 = 0;
    }

    else
    {
      v31 = 1;
    }

    (*(v30 + 56))(v8, v31, 1, v11);
    if ((*(v30 + 48))(v8, 1, v11) == 1)
    {
      v28 = sub_1D776F504;
      v29 = v8;
      goto LABEL_17;
    }

    v32 = *(v30 + 32);
    v32(v15, v8, v11);
    v32(v37, v15, v11);
    return swift_storeEnumTagMultiPayload();
  }

  if (a1 == 1)
  {
    v27 = v36;
    sub_1D787A9B8(v36, &v34 - v22);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28 = type metadata accessor for PostPurchaseDestination;
      v29 = v23;
LABEL_17:
      sub_1D787AA1C(v29, v28);
      return sub_1D787A9B8(v27, v37);
    }

    *v37 = *v23;
    return swift_storeEnumTagMultiPayload();
  }

  v24 = v36;
  v25 = v37;

  return sub_1D787A9B8(v24, v25);
}

uint64_t PostPurchaseDestination.postPurchaseURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PostPurchaseDestination();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D787A9B8(v1, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = sub_1D78B3294();
  v8 = *(v7 - 8);
  if (EnumCaseMultiPayload == 1)
  {
    (*(*(v7 - 8) + 32))(a1, v5, v7);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  return (*(v8 + 56))(a1, v9, 1, v7);
}

NewsSubscription::PurchaseOrigin_optional __swiftcall PurchaseOrigin.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D78B6594();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PurchaseOrigin.rawValue.getter()
{
  v1 = 0x50676E69646E616CLL;
  if (*v0 != 1)
  {
    v1 = 0x656C7A7A7570;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656568536F6C736FLL;
  }
}

uint64_t sub_1D787A4D4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x50676E69646E616CLL;
  v4 = 0xEB00000000656761;
  if (v2 != 1)
  {
    v3 = 0x656C7A7A7570;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x656568536F6C736FLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000074;
  }

  v7 = 0x50676E69646E616CLL;
  v8 = 0xEB00000000656761;
  if (*a2 != 1)
  {
    v7 = 0x656C7A7A7570;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x656568536F6C736FLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000074;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D78B6724();
  }

  return v11 & 1;
}

uint64_t sub_1D787A5E0()
{
  sub_1D78B6814();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

uint64_t sub_1D787A68C()
{
  sub_1D78B5D14();
}

uint64_t sub_1D787A724()
{
  sub_1D78B6814();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

void sub_1D787A7D8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000074;
  v4 = 0xEB00000000656761;
  v5 = 0x50676E69646E616CLL;
  if (v2 != 1)
  {
    v5 = 0x656C7A7A7570;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656568536F6C736FLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t PostPurchaseDestination.purchaseOrigin.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PostPurchaseDestination();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D787A9B8(v2, v6);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    result = sub_1D787AA1C(v6, type metadata accessor for PostPurchaseDestination);
    v8 = 3;
  }

  else
  {
    v8 = *v6;
  }

  *a1 = v8;
  return result;
}

uint64_t sub_1D787A9B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PostPurchaseDestination();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D787AA1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D787AA7C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x65756C61566C7275;
  v5 = 0x80000001D78CE270;
  if (v2 != 1)
  {
    v4 = 0xD000000000000013;
    v3 = 0x80000001D78CE270;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1702060386;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 0x65756C61566C7275;
  if (*a2 == 1)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v8 = 0xD000000000000013;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1702060386;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D78B6724();
  }

  return v11 & 1;
}

uint64_t sub_1D787AB70()
{
  sub_1D78B6814();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

uint64_t sub_1D787AC10()
{
  sub_1D78B5D14();
}

uint64_t sub_1D787AC9C()
{
  sub_1D78B6814();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

uint64_t sub_1D787AD38@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D787BDFC();
  *a1 = result;
  return result;
}

void sub_1D787AD68(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x65756C61566C7275;
  if (v2 != 1)
  {
    v5 = 0xD000000000000013;
    v4 = 0x80000001D78CE270;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1702060386;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D787ADC4()
{
  v1 = 0x65756C61566C7275;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1702060386;
  }
}

uint64_t sub_1D787AE1C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D787BDFC();
  *a1 = result;
  return result;
}

uint64_t sub_1D787AE44(uint64_t a1)
{
  v2 = sub_1D787B58C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D787AE80(uint64_t a1)
{
  v2 = sub_1D787B58C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D787AEBC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 7107189;
  }

  else
  {
    v3 = 0x696472616F626E6FLL;
  }

  if (v2)
  {
    v4 = 0xEE00776F6C46676ELL;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 7107189;
  }

  else
  {
    v5 = 0x696472616F626E6FLL;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xEE00776F6C46676ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D78B6724();
  }

  return v8 & 1;
}

uint64_t sub_1D787AF68()
{
  sub_1D78B6814();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

uint64_t sub_1D787AFF0()
{
  sub_1D78B5D14();
}

uint64_t sub_1D787B064()
{
  sub_1D78B6814();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

uint64_t sub_1D787B0E8@<X0>(char *a1@<X8>)
{
  v2 = sub_1D78B6594();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1D787B148(uint64_t *a1@<X8>)
{
  v2 = 7107189;
  if (!*v1)
  {
    v2 = 0x696472616F626E6FLL;
  }

  v3 = 0xEE00776F6C46676ELL;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t PostPurchaseDestination.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_1D78B3294();
  v20 = *(v4 - 8);
  v21 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PostPurchaseDestination();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D787BA30(0, &qword_1EC9CB440, MEMORY[0x1E69E6F58]);
  v11 = v10;
  v23 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D787B58C();
  sub_1D78B6884();
  sub_1D787A9B8(v2, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = v20;
    v14 = v21;
    (*(v20 + 32))(v6, v9, v21);
    v29 = 1;
    v28 = 0;
    sub_1D787B5E0();
    v16 = v22;
    sub_1D78B66B4();
    if (!v16)
    {
      v27 = 1;
      sub_1D787BAE8(&qword_1EC9CB458);
      sub_1D78B66B4();
    }

    (*(v15 + 8))(v6, v14);
  }

  else
  {
    v17 = *v9;
    v26 = 0;
    sub_1D787B5E0();
    v18 = v22;
    sub_1D78B66B4();
    if (!v18)
    {
      v25 = v17;
      v24 = 2;
      sub_1D787B634();
      sub_1D78B66B4();
    }
  }

  return (*(v23 + 8))(v13, v11);
}

unint64_t sub_1D787B58C()
{
  result = qword_1EC9CB448;
  if (!qword_1EC9CB448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB448);
  }

  return result;
}

unint64_t sub_1D787B5E0()
{
  result = qword_1EC9CB450;
  if (!qword_1EC9CB450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB450);
  }

  return result;
}

unint64_t sub_1D787B634()
{
  result = qword_1EC9CB460;
  if (!qword_1EC9CB460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB460);
  }

  return result;
}

uint64_t PostPurchaseDestination.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v25 = sub_1D78B3294();
  v23 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D787BA30(0, &qword_1EC9CB468, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v24 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  v9 = type metadata accessor for PostPurchaseDestination();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D787B58C();
  v12 = v27;
  sub_1D78B6874();
  if (v12)
  {
    v18 = a1;
  }

  else
  {
    v21 = v11;
    v22 = v9;
    v27 = a1;
    v14 = v24;
    v13 = v25;
    v15 = v26;
    v31 = 0;
    sub_1D787BA94();
    sub_1D78B6614();
    if (v32)
    {
      v30 = 1;
      sub_1D787BAE8(&qword_1EC9CB478);
      sub_1D78B6614();
      v16 = v15;
      (*(v14 + 8))(v8, v6);
      v17 = v21;
      (*(v23 + 32))(v21, v4, v13);
    }

    else
    {
      v28 = 2;
      sub_1D787BB90();
      sub_1D78B6614();
      v16 = v15;
      (*(v14 + 8))(v8, v6);
      v17 = v21;
      *v21 = v29;
    }

    swift_storeEnumTagMultiPayload();
    sub_1D787BB2C(v17, v16);
    v18 = v27;
  }

  return __swift_destroy_boxed_opaque_existential_1(v18);
}

void sub_1D787BA30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D787B58C();
    v7 = a3(a1, &type metadata for PostPurchaseDestination.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D787BA94()
{
  result = qword_1EC9CB470;
  if (!qword_1EC9CB470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB470);
  }

  return result;
}

uint64_t sub_1D787BAE8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D78B3294();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D787BB2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PostPurchaseDestination();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D787BB90()
{
  result = qword_1EC9CB480;
  if (!qword_1EC9CB480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB480);
  }

  return result;
}

unint64_t sub_1D787BBE8()
{
  result = qword_1EC9CB488;
  if (!qword_1EC9CB488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB488);
  }

  return result;
}

unint64_t sub_1D787BCA0()
{
  result = qword_1EC9CB490;
  if (!qword_1EC9CB490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB490);
  }

  return result;
}

unint64_t sub_1D787BCF8()
{
  result = qword_1EC9CB498;
  if (!qword_1EC9CB498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB498);
  }

  return result;
}

unint64_t sub_1D787BD50()
{
  result = qword_1EC9CB4A0;
  if (!qword_1EC9CB4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB4A0);
  }

  return result;
}

unint64_t sub_1D787BDA8()
{
  result = qword_1EC9CB4A8;
  if (!qword_1EC9CB4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB4A8);
  }

  return result;
}

uint64_t sub_1D787BDFC()
{
  v0 = sub_1D78B6594();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D787BE48()
{
  result = qword_1EC9CB4B0;
  if (!qword_1EC9CB4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB4B0);
  }

  return result;
}

unint64_t sub_1D787BE9C()
{
  result = qword_1EC9CB4B8;
  if (!qword_1EC9CB4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB4B8);
  }

  return result;
}

uint64_t sub_1D787BF14(uint64_t a1)
{
  v3 = type metadata accessor for HideMyEmailSignupPrewarmBlueprintModifier();
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = (&v13 - v8);
  v10 = *v1;
  sub_1D787C218(a1, &v13 + *(v7 + 20) - v8, type metadata accessor for HideMyEmailSignupDataModel);
  sub_1D774584C(v10 + 16, v9 + *(v3 + 24));
  *v9 = 0x6D726177657250;
  v9[1] = 0xE700000000000000;
  sub_1D787C218(v9, v6, type metadata accessor for HideMyEmailSignupPrewarmBlueprintModifier);
  sub_1D7815870();
  swift_allocObject();
  sub_1D787C280(&unk_1EC9CB4C8, type metadata accessor for HideMyEmailSignupPrewarmBlueprintModifier);
  v11 = sub_1D78B47A4();
  sub_1D787C2C8(v9, type metadata accessor for HideMyEmailSignupPrewarmBlueprintModifier);
  return v11;
}

uint64_t sub_1D787C098(uint64_t a1)
{
  updated = type metadata accessor for HideMyEmailSignupUpdateBlueprintModifier();
  v4 = MEMORY[0x1EEE9AC00](updated);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = (&v13 - v8);
  v10 = *v1;
  sub_1D787C218(a1, &v13 + *(v7 + 20) - v8, type metadata accessor for HideMyEmailSignupDataModel);
  sub_1D774584C(v10 + 16, v9 + *(updated + 24));
  *v9 = 0x657461647055;
  v9[1] = 0xE600000000000000;
  sub_1D787C218(v9, v6, type metadata accessor for HideMyEmailSignupUpdateBlueprintModifier);
  sub_1D7815870();
  swift_allocObject();
  sub_1D787C280(&qword_1EC9CB4C0, type metadata accessor for HideMyEmailSignupUpdateBlueprintModifier);
  v11 = sub_1D78B47A4();
  sub_1D787C2C8(v9, type metadata accessor for HideMyEmailSignupUpdateBlueprintModifier);
  return v11;
}

uint64_t sub_1D787C218(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D787C280(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D787C2C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D787C328()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1D787C38C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for HideMyEmailSignupDataModel();
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78B3AF4();
  sub_1D7770378(&v5[*(v3 + 48)], a1);
  return sub_1D786296C(v5);
}

void sub_1D787C424()
{
  v52 = sub_1D78B3394();
  v3 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v0;
  v53 = v0[4];
  v5 = [v53 purchaseLookUpEntriesByTagID];
  if (!v5)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v6 = v5;
  sub_1D773F004(0, &qword_1EE08FD80);
  v7 = sub_1D78B5BC4();

  v8 = 0;
  v10 = v7 + 64;
  v9 = *(v7 + 64);
  v54 = v7;
  v11 = 1 << *(v7 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v9;
  v14 = (v11 + 63) >> 6;
  v47 = &v61;
  v48 = (v3 + 8);
  v46 = xmmword_1D78BF690;
  v49 = v14;
  v50 = v10;
  if ((v12 & v9) != 0)
  {
    while (1)
    {
      v15 = v58;
LABEL_11:
      v17 = __clz(__rbit64(v13)) | (v8 << 6);
      v18 = (*(v54 + 48) + 16 * v17);
      v19 = *v18;
      v2 = v18[1];
      v20 = *(*(v54 + 56) + 8 * v17);

      v1 = v20;
      if ([v1 purchaseType] != 2 || (sub_1D787CBD4(v1) & 1) == 0)
      {
        goto LABEL_20;
      }

      v21 = v15[2];
      v22 = sub_1D78B5C44();
      v23 = [v21 accessTokenForTagID_];

      if (!v23)
      {
        break;
      }

      v57 = v23;
      v24 = sub_1D78B5C74();
      v55 = v25;
      v26 = v15[3];
      v27 = sub_1D78B5C44();
      v56 = v1;
      v28 = [v1 lastVerificationTime];
      if (!v28)
      {

        __break(1u);
        goto LABEL_31;
      }

      v29 = v28;
      v30 = v51;
      sub_1D78B3364();

      v31 = sub_1D78B3324();
      (*v48)(v30, v52);
      v32 = [v26 consumedArticleIDsForTagID:v27 fromTime:v31];

      v33 = MEMORY[0x1E69E6158];
      v34 = sub_1D78B5EB4();

      if (qword_1EE08FB98 != -1)
      {
        swift_once();
      }

      v13 &= v13 - 1;
      sub_1D775B620(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v35 = swift_allocObject();
      *(v35 + 16) = v46;
      *(v35 + 56) = v33;
      v36 = sub_1D775ABD4();
      *(v35 + 32) = v19;
      *(v35 + 40) = v2;
      *(v35 + 96) = v33;
      *(v35 + 104) = v36;
      *(v35 + 64) = v36;
      *(v35 + 72) = v24;
      *(v35 + 80) = v55;
      v37 = *(v34 + 16);

      *(v35 + 136) = MEMORY[0x1E69E6530];
      *(v35 + 144) = MEMORY[0x1E69E65A8];
      *(v35 + 112) = v37;
      sub_1D78B60A4();
      sub_1D78B42C4();

      v1 = sub_1D78B5C44();
      sub_1D773F004(0, &qword_1EE08FE10);
      v38 = sub_1D78B6104();
      v39 = swift_allocObject();
      v39[2] = v19;
      v39[3] = v2;
      v2 = v58;
      v39[4] = v58;
      v63 = sub_1D787D7FC;
      v64 = v39;
      aBlock = MEMORY[0x1E69E9820];
      v60 = 1107296256;
      v61 = sub_1D7875C08;
      v62 = &block_descriptor_5;
      v40 = _Block_copy(&aBlock);

      v41 = v57;
      [v53 verifyAccessTokenWithTagID:v1 accessToken:v57 consumedArticleCount:v37 serialCompletion:0 callbackQueue:v38 completion:v40];
      _Block_release(v40);

      v14 = v49;
      v10 = v50;
      if (!v13)
      {
        goto LABEL_6;
      }
    }

    v13 = v19;
    if ([v1 purchaseValidationState] == 2)
    {
LABEL_20:

      goto LABEL_21;
    }

    if (qword_1EE08FB98 == -1)
    {
      goto LABEL_24;
    }
  }

  else
  {
LABEL_6:
    v15 = v58;
    while (1)
    {
      v16 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
        goto LABEL_22;
      }

      v13 = *(v10 + 8 * v16);
      ++v8;
      if (v13)
      {
        v8 = v16;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  swift_once();
LABEL_24:
  sub_1D775B620(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1D78BCAB0;
  *(v42 + 56) = MEMORY[0x1E69E6158];
  *(v42 + 64) = sub_1D775ABD4();
  *(v42 + 32) = v13;
  *(v42 + 40) = v2;
  sub_1D78B60A4();
  sub_1D78B42C4();

  [v53 updatePurchaseEntryToExpired_];
  v43 = v15[6];
  sub_1D78B60A4();
  sub_1D78B42C4();
  sub_1D78B60A4();
  sub_1D78B42C4();
  if (*(v43 + 240) == 1)
  {
    v44 = *(v43 + 232);
    v63 = sub_1D77C005C;
    v64 = v43;
    aBlock = MEMORY[0x1E69E9820];
    v60 = 1107296256;
    v61 = sub_1D779ECCC;
    v62 = &block_descriptor_33;
    v45 = _Block_copy(&aBlock);

    [v44 enqueueBlock_];
    _Block_release(v45);
  }

  else
  {
    sub_1D78B60A4();
    sub_1D78B42C4();
  }

  sub_1D779DCD8();
LABEL_21:

LABEL_22:
}

uint64_t sub_1D787CBD4(void *a1)
{
  v2 = sub_1D78B3394();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v46 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v46 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v46 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v46 - v12;
  sub_1D78B3384();
  result = [a1 lastVerificationTime];
  if (!result)
  {
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v15 = result;
  sub_1D78B3364();

  sub_1D78B3304();
  v17 = v16;
  v18 = *(v3 + 8);
  v18(v13, v2);
  v18(v11, v2);
  v19 = objc_opt_self();
  v20 = [v19 standardUserDefaults];
  v21 = [v20 integerForKey_];

  if ((NFInternalBuild() & (v21 > 0)) != 0)
  {
    v22 = v21;
  }

  else
  {
    v22 = 86400.0;
  }

  v23 = [v19 standardUserDefaults];
  v24 = [v23 integerForKey_];

  if (NFInternalBuild() && v24 >= 1)
  {
    v25 = v24;
    if (v22 >= v17)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v31 = [objc_msgSend(*(v47 + 40) appConfiguration)];
    swift_unknownObjectRelease();
    v25 = v31;
    if (v22 >= v17)
    {
LABEL_8:
      if (qword_1EE08FB98 != -1)
      {
        swift_once();
      }

      sub_1D775B620(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1D78BCAB0;
      result = [a1 tagID];
      if (result)
      {
        v27 = result;
        v28 = sub_1D78B5C74();
        v30 = v29;

        *(v26 + 56) = MEMORY[0x1E69E6158];
        *(v26 + 64) = sub_1D775ABD4();
        *(v26 + 32) = v28;
        *(v26 + 40) = v30;
        sub_1D78B60A4();
        sub_1D78B42C4();

        return 0;
      }

      goto LABEL_33;
    }
  }

  if ([a1 purchaseValidationState] != 3)
  {
    if ([a1 purchaseValidationState] != 1)
    {
      return 0;
    }

    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    sub_1D775B620(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1D78BCAB0;
    result = [a1 tagID];
    if (!result)
    {
      goto LABEL_35;
    }

    goto LABEL_24;
  }

  sub_1D78B3384();
  result = [a1 lastVerificationFailureTime];
  if (!result)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v32 = result;
  v33 = v46;
  sub_1D78B3364();

  sub_1D78B3304();
  v35 = v34;
  v18(v8, v2);
  v18(v33, v2);
  if (v35 >= v25)
  {
    sub_1D773F004(0, &qword_1EE08FB80);
    v41 = sub_1D78B6284();
    sub_1D78B60A4();
    sub_1D78B42C4();

    v42 = v47;
    [*(v47 + 32) updatePurchaseEntryToExpired_];
    v43 = *(v42 + 48);
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    sub_1D78B60A4();
    sub_1D78B42C4();
    sub_1D78B60A4();
    sub_1D78B42C4();
    if (*(v43 + 240) == 1)
    {
      v44 = *(v43 + 232);
      aBlock[4] = sub_1D77C0170;
      aBlock[5] = v43;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D779ECCC;
      aBlock[3] = &block_descriptor_13_1;
      v45 = _Block_copy(aBlock);

      [v44 enqueueBlock_];
      _Block_release(v45);
    }

    else
    {
      sub_1D78B60A4();
      sub_1D78B42C4();
    }

    sub_1D779DCD8();
    return 0;
  }

  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D775B620(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1D78BCAB0;
  result = [a1 tagID];
  if (result)
  {
LABEL_24:
    v37 = result;
    v38 = sub_1D78B5C74();
    v40 = v39;

    *(v36 + 56) = MEMORY[0x1E69E6158];
    *(v36 + 64) = sub_1D775ABD4();
    *(v36 + 32) = v38;
    *(v36 + 40) = v40;
    sub_1D78B60A4();
    sub_1D78B42C4();

    return 1;
  }

LABEL_36:
  __break(1u);
  return result;
}

void sub_1D787D424(char a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D775B620(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D78BF690;
  v12 = MEMORY[0x1E69E6158];
  *(v11 + 56) = MEMORY[0x1E69E6158];
  v13 = sub_1D775ABD4();
  *(v11 + 64) = v13;
  v14 = MEMORY[0x1E69E6370];
  v15 = MEMORY[0x1E69E63A8];
  *(v11 + 32) = a4;
  *(v11 + 40) = a5;
  *(v11 + 96) = v14;
  *(v11 + 104) = v15;
  *(v11 + 72) = a1 & 1;
  aBlock[0] = a3;

  v16 = a3;
  sub_1D775B620(0, &unk_1EE08F9E0, &qword_1EE08F9F0, MEMORY[0x1E69E7280], MEMORY[0x1E69E6720]);
  v17 = sub_1D78B5CC4();
  *(v11 + 136) = v12;
  *(v11 + 144) = v13;
  *(v11 + 112) = v17;
  *(v11 + 120) = v18;
  sub_1D78B60A4();
  sub_1D78B42C4();

  if (!a3 || (aBlock[0] = a3, v19 = a3, sub_1D773C9B8(0, &qword_1EE08F9F0), sub_1D773F004(0, &qword_1EC9CB4D8), (swift_dynamicCast() & 1) == 0) || ((v20 = [v26 code], v21 = *MEMORY[0x1E69B56A8], v26, v20 == v21) ? (v22 = v20 <= -1) : (v22 = 1), v22))
  {
    if ((a1 & 1) == 0)
    {
      v23 = *(a6 + 48);
      sub_1D78B60A4();
      sub_1D78B42C4();
      sub_1D78B60A4();
      sub_1D78B42C4();
      if (*(v23 + 240) == 1)
      {
        v24 = *(v23 + 232);
        aBlock[4] = sub_1D77C0170;
        aBlock[5] = v23;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1D779ECCC;
        aBlock[3] = &block_descriptor_9;
        v25 = _Block_copy(aBlock);

        [v24 enqueueBlock_];
        _Block_release(v25);
      }

      else
      {
        sub_1D78B60A4();
        sub_1D78B42C4();
      }

      sub_1D779DCD8();
    }
  }
}

uint64_t sub_1D787D7A4()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t BundleSubscriptionExpiredAlert.title.getter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();

  v5 = [v4 bundleForClass_];
  sub_1D78B3134();

  sub_1D774FE1C();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D78BCAB0;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1D775ABD4();
  *(v6 + 32) = v2;
  *(v6 + 40) = v1;
  v7 = sub_1D78B5C94();

  return v7;
}

uint64_t BundleSubscriptionExpiredAlert.message.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  if (!v1)
  {
    goto LABEL_6;
  }

  v4 = *v0;
  v5 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v5 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
  }

  else
  {
LABEL_6:
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = [objc_opt_self() bundleForClass_];
    sub_1D78B3134();

    sub_1D774FE1C();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D78BCAB0;
    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v8 + 64) = sub_1D775ABD4();
    *(v8 + 32) = v2;
    *(v8 + 40) = v3;

    v4 = sub_1D78B5C94();
  }

  return v4;
}

uint64_t BundleSubscriptionExpiredAlert.preferredActionButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D7D90];
  v3 = sub_1D78B4974();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1D787DB68()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t sub_1D787DC60()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t sub_1D787DD20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D787DD68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static Presets.ConfigOffers.configOffer(merchandisingItemKeys:additionalMerchandisingItemKeys:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  sub_1D78B36C4();
  swift_allocObject();

  return sub_1D78B36B4();
}

uint64_t sub_1D787DEE8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_1EC9C86A8 != -1)
  {
    swift_once();
  }

  sub_1D7800004();
  sub_1D774E294(&qword_1EC9CB558, sub_1D7800004);
  sub_1D78B3624();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_1EC9C86A0 != -1)
  {
    swift_once();
  }

  return sub_1D78B3624();
}

uint64_t sub_1D787E190(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_1EC9C85B8 != -1)
  {
    swift_once();
  }

  return sub_1D78B3624();
}

uint64_t sub_1D787E284(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_1EC9C85B8 != -1)
  {
    swift_once();
  }

  return sub_1D78B3624();
}

uint64_t sub_1D787E3C0(void *a1)
{
  v2 = sub_1D78B3594();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D787F188(a1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_1EC9C85F0 != -1)
  {
    swift_once();
  }

  v8 = 1;
  sub_1D78B3624();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_1EC9C8598 != -1)
  {
    swift_once();
  }

  v7 = 1;
  sub_1D78B3624();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_1EE08F438 != -1)
  {
    swift_once();
  }

  (*(v3 + 104))(v5, *MEMORY[0x1E69D6D08], v2);
  sub_1D774E294(&unk_1EE08F288, MEMORY[0x1E69D6D20]);
  sub_1D78B3624();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1D787E688(void *a1)
{
  v2 = sub_1D78B3594();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D787F188(a1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_1EC9C85F8 != -1)
  {
    swift_once();
  }

  v8 = 1;
  sub_1D78B3624();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_1EC9C8598 != -1)
  {
    swift_once();
  }

  v7 = 0;
  sub_1D78B3624();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_1EE08F450 != -1)
  {
    swift_once();
  }

  (*(v3 + 104))(v5, *MEMORY[0x1E69D6D08], v2);
  sub_1D774E294(&unk_1EE08F288, MEMORY[0x1E69D6D20]);
  sub_1D78B3624();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1D787E94C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_1EC9C85E0 != -1)
  {
    swift_once();
  }

  sub_1D78B3634();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return sub_1D78B3624();
}

uint64_t sub_1D787EA8C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_1EC9C85E0 != -1)
  {
    swift_once();
  }

  sub_1D78B3634();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return sub_1D78B3624();
}

uint64_t sub_1D787EBCC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_1EC9C85E0 != -1)
  {
    swift_once();
  }

  sub_1D78B3634();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return sub_1D78B3624();
}

uint64_t sub_1D787ED0C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_1EC9C85E0 != -1)
  {
    swift_once();
  }

  sub_1D78B3634();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return sub_1D78B3624();
}

uint64_t sub_1D787EE4C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1D78B36C4();
  swift_allocObject();
  result = sub_1D78B36B4();
  *a3 = result;
  return result;
}

uint64_t sub_1D787EEA4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_1EC9C85E0 != -1)
  {
    swift_once();
  }

  sub_1D78B3634();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return sub_1D78B3624();
}

uint64_t sub_1D787EFC4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_1EC9C85E0 != -1)
  {
    swift_once();
  }

  sub_1D78B3634();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78B3624();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_1EC9C85E8 != -1)
  {
    swift_once();
  }

  sub_1D78B3624();
}

uint64_t sub_1D787F188(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_1EC9C85F8 != -1)
  {
    swift_once();
  }

  sub_1D78B3634();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_1EC9C85F0 != -1)
  {
    swift_once();
  }

  sub_1D78B3634();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_1EC9C8598 != -1)
  {
    swift_once();
  }

  sub_1D78B3624();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_1EE08F438 != -1)
  {
    swift_once();
  }

  sub_1D78B3594();
  sub_1D774E294(&unk_1EE08F288, MEMORY[0x1E69D6D20]);
  sub_1D78B3634();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_1EE08F450 != -1)
  {
    swift_once();
  }

  return sub_1D78B3634();
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1D787F42C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D787F44C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
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

  *(result + 96) = v3;
  return result;
}

id BridgedFamilyStatusManager.__allocating_init(familyStatusManager:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC16NewsSubscription26BridgedFamilyStatusManager_familyStatusManager];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id BridgedFamilyStatusManager.init(familyStatusManager:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC16NewsSubscription26BridgedFamilyStatusManager_familyStatusManager];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

void sub_1D787F588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D78B5734();
  sub_1D78B41F4();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1D776AC18(a1);
  v9 = sub_1D78B4014();
  sub_1D7756CA8(0, &unk_1EC9CA730);
  sub_1D78B4094();

  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  sub_1D776AC18(a3);
  v11 = sub_1D78B4014();
  sub_1D78B40D4();
}

uint64_t sub_1D787F6F4@<X0>(uint64_t a1@<X0>, void (*a2)(void *)@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v20[1] = a3;
  v7 = sub_1D78B5724();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D78B5734();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a1, v11);
  v15 = (*(v12 + 88))(v14, v11);
  if (v15 == *MEMORY[0x1E69B60D0])
  {
    result = (*(v12 + 96))(v14, v11);
    if (a2)
    {
      v17 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      v22 = sub_1D77BFFAC();
      v21[0] = v17;
      a2(v21);
LABEL_7:
      result = sub_1D7756B84(v21);
      v19 = 0;
LABEL_10:
      *a4 = v19;
      return result;
    }

    goto LABEL_9;
  }

  if (v15 == *MEMORY[0x1E69B60D8])
  {
    (*(v12 + 96))(v14, v11);
    (*(v8 + 32))(v10, v14, v7);
    if (a2)
    {
      v18 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      v22 = sub_1D77BFFAC();
      v21[0] = v18;
      a2(v21);
      (*(v8 + 8))(v10, v7);
      goto LABEL_7;
    }

    result = (*(v8 + 8))(v10, v7);
LABEL_9:
    v19 = 1;
    goto LABEL_10;
  }

  result = sub_1D78B6714();
  __break(1u);
  return result;
}

void sub_1D787FA38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  v7 = objc_allocWithZone(MEMORY[0x1E69B68F8]);
  v11[4] = a2;
  v11[5] = v6;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D7880210;
  v11[3] = a3;
  v8 = _Block_copy(v11);
  v9 = v3;

  v10 = [v7 initWithResolver_];
  _Block_release(v8);
  if (!v10)
  {
    __break(1u);
  }
}

uint64_t sub_1D787FB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_1D78B3A64();
  v8 = swift_allocObject();
  v8[2] = a5;
  v8[3] = a1;
  v8[4] = a2;
  v9 = a5;
  sub_1D776AC18(a1);
  sub_1D78B3A54();
}

uint64_t sub_1D787FBC8(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v23[1] = a3;
  v4 = sub_1D78B5724();
  v23[0] = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7880360();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D78B5734();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v23 - v15;
  swift_getObjectType();
  sub_1D78B5AC4();
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    (*(v11 + 32))(v16, v9, v10);
    (*(v11 + 16))(v14, v16, v10);
    v19 = (*(v11 + 88))(v14, v10);
    if (v19 == *MEMORY[0x1E69B60D0])
    {
      (*(v11 + 96))(v14, v10);
      if (a2)
      {
        v20 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        v25 = sub_1D77BFFAC();
        v24[0] = v20;
        a2(v24);
LABEL_10:
        (*(v11 + 8))(v16, v10);
        return sub_1D7756B84(v24);
      }
    }

    else
    {
      if (v19 != *MEMORY[0x1E69B60D8])
      {
        result = sub_1D78B6714();
        __break(1u);
        return result;
      }

      (*(v11 + 96))(v14, v10);
      v21 = v23[0];
      (*(v23[0] + 32))(v6, v14, v4);
      if (a2)
      {
        v22 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        v25 = sub_1D77BFFAC();
        v24[0] = v22;
        a2(v24);
        (*(v21 + 8))(v6, v4);
        goto LABEL_10;
      }

      (*(v21 + 8))(v6, v4);
    }

    return (*(v11 + 8))(v16, v10);
  }

  result = sub_1D78803B8(v9);
  if (a2)
  {
    v18 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v25 = sub_1D77BFFAC();
    v24[0] = v18;
    a2(v24);
    return sub_1D7756B84(v24);
  }

  return result;
}

void sub_1D7880028(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v9 = objc_allocWithZone(MEMORY[0x1E69B68F8]);
  v14[4] = a4;
  v14[5] = v8;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D7880210;
  v14[3] = a5;
  v10 = _Block_copy(v14);
  v11 = a1;

  v12 = [v9 initWithResolver_];
  _Block_release(v10);
  if (v12)
  {

    v13 = v12;
  }

  else
  {
    __break(1u);
  }
}

id BridgedFamilyStatusManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedFamilyStatusManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D7880210(uint64_t a1, void *aBlock, const void *a3)
{
  v4 = *(a1 + 32);
  v5 = _Block_copy(aBlock);
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v5 = sub_1D78805BC;
  }

  else
  {
    v6 = 0;
  }

  v7 = _Block_copy(a3);
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v7 = sub_1D78805B4;
  }

  else
  {
    v8 = 0;
  }

  v4(v5, v6, v7, v8);
  sub_1D7744A7C(v7);
  sub_1D7744A7C(v5);
}

void sub_1D7880360()
{
  if (!qword_1EC9CB568)
  {
    sub_1D78B5734();
    v0 = sub_1D78B62A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9CB568);
    }
  }
}

uint64_t sub_1D78803B8(uint64_t a1)
{
  sub_1D7880360();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7880414(uint64_t a1, uint64_t a2)
{
  sub_1D779C6B0(a1, v10);
  v3 = v11;
  if (v11)
  {
    v4 = __swift_project_boxed_opaque_existential_1(v10, v11);
    v5 = *(v3 - 8);
    MEMORY[0x1EEE9AC00](v4);
    v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v7);
    v8 = sub_1D78B6704();
    (*(v5 + 8))(v7, v3);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    v8 = 0;
  }

  (*(a2 + 16))(a2, v8);
  return swift_unknownObjectRelease();
}

void sub_1D7880550(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1D78B31B4();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_1D7880630()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t AppLaunchUpsellTriggerResult.hashValue.getter()
{
  v1 = *v0;
  sub_1D78B6814();
  MEMORY[0x1DA703AC0](v1);
  return sub_1D78B6844();
}

unint64_t sub_1D788070C()
{
  result = qword_1EC9CB570;
  if (!qword_1EC9CB570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB570);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppLaunchUpsellTriggerResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppLaunchUpsellTriggerResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id DismissibleDynamicViewController.__allocating_init(rootViewController:identifier:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC16NewsSubscription32DismissibleDynamicViewController_dismissDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = &v7[OBJC_IVAR____TtC16NewsSubscription32DismissibleDynamicViewController_identifier];
  *v8 = a2;
  *(v8 + 1) = a3;
  v11.receiver = v7;
  v11.super_class = v3;
  v9 = objc_msgSendSuper2(&v11, sel_initWithRootViewController_, a1);

  return v9;
}

uint64_t DismissibleDynamicViewController.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16NewsSubscription32DismissibleDynamicViewController_identifier);

  return v1;
}

uint64_t sub_1D78809E8(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC16NewsSubscription32DismissibleDynamicViewController_dismissDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1D7880A54(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16NewsSubscription32DismissibleDynamicViewController_dismissDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1D77C97C8;
}

id DismissibleDynamicViewController.init(rootViewController:identifier:)(void *a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC16NewsSubscription32DismissibleDynamicViewController_dismissDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = &v3[OBJC_IVAR____TtC16NewsSubscription32DismissibleDynamicViewController_identifier];
  *v7 = a2;
  *(v7 + 1) = a3;
  v10.receiver = v3;
  v10.super_class = type metadata accessor for DismissibleDynamicViewController();
  v8 = objc_msgSendSuper2(&v10, sel_initWithRootViewController_, a1);

  return v8;
}

uint64_t sub_1D7880C14()
{
  v1 = v0 + OBJC_IVAR____TtC16NewsSubscription32DismissibleDynamicViewController_dismissDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v0, ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

id DismissibleDynamicViewController.__allocating_init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v5 = objc_allocWithZone(v2);

  return [v5 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v3];
}

id DismissibleDynamicViewController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController_];

  return v3;
}

id DismissibleDynamicViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D78B5C44();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id DismissibleDynamicViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DismissibleDynamicViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D7881020()
{
  v1 = *(*v0 + OBJC_IVAR____TtC16NewsSubscription32DismissibleDynamicViewController_identifier);

  return v1;
}

uint64_t DismissibleDynamicViewController.cardSplitViewPresentation(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D78B48B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x1E69D7B20])
  {
    v9 = MEMORY[0x1E69D80B8];
LABEL_5:
    v10 = *v9;
    v11 = sub_1D78B4B74();
    (*(*(v11 - 8) + 104))(a2, v10, v11);
    v12 = *MEMORY[0x1E69D80B0];
    v13 = sub_1D78B4B84();
    return (*(*(v13 - 8) + 104))(a2, v12, v13);
  }

  if (v8 == *MEMORY[0x1E69D7B18])
  {
    v9 = MEMORY[0x1E69D80C0];
    goto LABEL_5;
  }

  result = sub_1D78B6524();
  __break(1u);
  return result;
}

uint64_t sub_1D7881264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D78B48B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x1E69D7B20])
  {
    v9 = MEMORY[0x1E69D80B8];
LABEL_5:
    v10 = *v9;
    v11 = sub_1D78B4B74();
    (*(*(v11 - 8) + 104))(a2, v10, v11);
    v12 = *MEMORY[0x1E69D80B0];
    v13 = sub_1D78B4B84();
    return (*(*(v13 - 8) + 104))(a2, v12, v13);
  }

  if (v8 == *MEMORY[0x1E69D7B18])
  {
    v9 = MEMORY[0x1E69D80C0];
    goto LABEL_5;
  }

  result = sub_1D78B6524();
  __break(1u);
  return result;
}

char *sub_1D7881588(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC16NewsSubscription27HideMyEmailSignupChoiceView_titleLabel;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v11 = OBJC_IVAR____TtC16NewsSubscription27HideMyEmailSignupChoiceView_choiceLabel;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v12 = OBJC_IVAR____TtC16NewsSubscription27HideMyEmailSignupChoiceView_addressPreviewLabel;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v13 = OBJC_IVAR____TtC16NewsSubscription27HideMyEmailSignupChoiceView_checkbox;
  *&v4[v13] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  v15 = *&v14[OBJC_IVAR____TtC16NewsSubscription27HideMyEmailSignupChoiceView_titleLabel];
  v16 = v14;
  [v16 addSubview_];
  [v16 addSubview_];
  [v16 addSubview_];
  [v16 addSubview_];

  return v16;
}

void sub_1D788182C()
{
  sub_1D78818B8(&qword_1EC9CAC70);

  JUMPOUT(0x1DA702390);
}

uint64_t sub_1D78818B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HideMyEmailSignupChoiceView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D78818F8()
{
  v1 = OBJC_IVAR____TtC16NewsSubscription27HideMyEmailSignupChoiceView_titleLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v2 = OBJC_IVAR____TtC16NewsSubscription27HideMyEmailSignupChoiceView_choiceLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v3 = OBJC_IVAR____TtC16NewsSubscription27HideMyEmailSignupChoiceView_addressPreviewLabel;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v4 = OBJC_IVAR____TtC16NewsSubscription27HideMyEmailSignupChoiceView_checkbox;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  sub_1D78B6524();
  __break(1u);
}

void sub_1D7881A18(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 + 48);
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  sub_1D78B6054();
  if ([v7 horizontalSizeClass] >= 3)
  {
    goto LABEL_36;
  }

  v11 = *a1;
  *&v12 = 0.0;
  v123 = *(*a1 + 16);
  v125 = a1;
  if (!v123)
  {
    v25 = 0;
    v21 = 0;
    v104 = 0;
    v105 = 0;
    v24 = 0;
    v106 = 0;
    v23 = 0.0;
    v20 = 0.0;
    v119 = 0.0;
    v115 = 0.0;
    v100 = 0.0;
    v101 = 0.0;
    v77 = 0.0;
    rect = 0.0;
    v117 = 0.0;
    v113 = 0.0;
    v84 = 0.0;
    goto LABEL_14;
  }

  v121 = v7;
  v14 = v11[6];
  v13 = v11[7];
  v16 = v11[8];
  v15 = v11[9];
  __swift_project_boxed_opaque_existential_1((v3 + 64), *(v3 + 88));

  v111 = sub_1D7895A80();
  sub_1D788236C(v111);
  v18 = v17;
  v20 = v19;
  __swift_project_boxed_opaque_existential_1((v3 + 64), *(v3 + 88));
  v21 = sub_1D7895ED0(v14, v13, v16, v15);

  v7 = v121;

  v22 = [v121 horizontalSizeClass];
  if (v22 >= 3)
  {
    goto LABEL_36;
  }

  v119 = dbl_1D78CA850[v22];
  if (v123 == 1)
  {
    v23 = v18;
    v104 = 0;
    v105 = 0;
    v24 = 0;
    v106 = 0;
    v101 = 0.0;
    v115 = 50.0;
    v77 = 0.0;
    rect = 0.0;
    v100 = 0.0;
    v117 = 0.0;
    v113 = 0.0;
    v84 = 0.0;
    v25 = v111;
LABEL_13:
    a1 = v125;
    goto LABEL_14;
  }

  v108 = v21;
  v26 = v11[12];
  v27 = v11[13];
  v28 = v11[14];
  v29 = v11[15];
  __swift_project_boxed_opaque_existential_1((v3 + 64), *(v3 + 88));

  v7 = v121;
  v106 = sub_1D7895A80();
  sub_1D788236C(v106);
  v84 = v30;
  v113 = v31;
  __swift_project_boxed_opaque_existential_1((v3 + 64), *(v3 + 88));
  v32 = sub_1D7895ED0(v26, v27, v28, v29);

  v33 = [v121 horizontalSizeClass];
  if (v33 >= 3)
  {
    goto LABEL_36;
  }

  v117 = dbl_1D78CA850[v33];
  v105 = v32;
  if (v123 == 2)
  {
    v23 = v18;
    v104 = 0;
    v24 = 0;
    v101 = 0.0;
    v77 = 0.0;
    rect = 0.0;
    v115 = 50.0;
    v100 = 50.0;
LABEL_12:
    v25 = v111;
    v21 = v108;
    goto LABEL_13;
  }

  v34 = v11[18];
  v35 = v11[19];
  v36 = v11[20];
  v37 = v11[21];
  __swift_project_boxed_opaque_existential_1((v4 + 64), *(v4 + 88));

  v24 = sub_1D7895A80();
  sub_1D788236C(v24);
  v77 = v38;
  rect = v39;
  __swift_project_boxed_opaque_existential_1((v4 + 64), *(v4 + 88));
  v40 = sub_1D7895ED0(v34, v35, v36, v37);
  v7 = v121;

  v41 = [v121 horizontalSizeClass];
  v104 = v40;
  if (v41 < 2)
  {
    v23 = v18;
    v101 = 310.0;
    *&v12 = 50.0;
    v115 = 50.0;
    v100 = 50.0;
    goto LABEL_12;
  }

  v25 = v111;
  v21 = v108;
  a1 = v125;
  if (v41 != 2)
  {
LABEL_36:
    sub_1D78B6524();
    __break(1u);
    return;
  }

  v23 = v18;
  v101 = 360.0;
  *&v12 = 50.0;
  v115 = 50.0;
  v100 = 50.0;
LABEL_14:
  __swift_project_boxed_opaque_existential_1((v4 + 64), *(v4 + 88));
  v42 = sub_1D7896480();
  sub_1D78B6144();
  v74 = v44;
  v75 = v43;
  __swift_project_boxed_opaque_existential_1((v4 + 64), *(v4 + 88));
  v45 = sub_1D7896684();
  v102 = *&v12;
  if ([v7 horizontalSizeClass] != 1 || (v46 = objc_msgSend(objc_opt_self(), sel_currentDevice), v47 = objc_msgSend(v46, sel_userInterfaceIdiom), v46, a1 = v125, v47 == 1))
  {
    v48 = v20;
  }

  else
  {
    v48 = v20;
  }

  sub_1D78B6144();
  v94 = v50;
  v95 = v49;
  v126.origin.x = 0.0;
  v122 = 0.0;
  v126.origin.y = 0.0;
  v126.size.width = v8;
  v126.size.height = v9;
  v127 = CGRectIntegral(v126);
  y = v127.origin.y;
  x = v127.origin.x;
  height = v127.size.height;
  width = v127.size.width;
  v51 = a1[8];
  v52 = 30.0;
  if (v123 != 3)
  {
    v52 = 50.0;
  }

  if (v51)
  {
    v53 = 50.0;
  }

  else
  {
    v53 = v52;
  }

  v128.size.width = sub_1D7882514(v7, v8, v9);
  v128.size.height = v128.size.width * 14.63 / 100.0;
  v128.origin.x = (v8 - v128.size.width) * 0.5;
  v128.origin.y = v10 + v53;
  v129 = CGRectIntegral(v128);
  v92 = v129.origin.y;
  v93 = v129.origin.x;
  v90 = v129.size.height;
  v91 = v129.size.width;
  v130.origin.y = CGRectGetMaxY(v129) + 31.0;
  v130.origin.x = (v8 - v23) * 0.5;
  v130.size.width = v23;
  v130.size.height = v48;
  v131 = CGRectIntegral(v130);
  v54 = v131.origin.x;
  v55 = v131.origin.y;
  v86 = v131.size.height;
  v87 = v131.size.width;
  MaxY = CGRectGetMaxY(v131);
  v107 = v9;
  v88 = v55;
  v89 = v54;
  if (v51)
  {
    v132.origin.y = MaxY + 31.0;
    v132.origin.x = (v8 - v119) * 0.5;
    v132.size.width = v119;
    v132.size.height = v115;
    v133 = CGRectIntegral(v132);
    v57 = v133.origin.x;
    v110 = v133.size.width;
    v112 = v133.origin.y;
    v109 = v133.size.height;
    v134.origin.y = CGRectGetMaxY(v133) + 16.0;
    v134.origin.x = (v8 - v117) * 0.5;
    v134.size.width = v117;
    v58 = v100;
    v134.size.height = v100;
    v135 = CGRectIntegral(v134);
    v78 = 0.0;
    recta = 0.0;
    v76 = 0.0;
    v83 = 0.0;
    v85 = 0.0;
    v82 = 0.0;
    v118 = v135.size.height;
    v120 = v135.size.width;
    v81 = 0.0;
    v114 = v135.origin.y;
    v116 = v135.origin.x;
  }

  else
  {
    v136.origin.y = MaxY + 16.0;
    v136.origin.x = (v8 - v119) * 0.5;
    v136.size.width = v119;
    v136.size.height = v115;
    v137 = CGRectIntegral(v136);
    v57 = v137.origin.x;
    v110 = v137.size.width;
    v112 = v137.origin.y;
    v109 = v137.size.height;
    v138.origin.y = CGRectGetMaxY(v137) + 16.0;
    v138.origin.x = (v8 - v84) * 0.5;
    v138.size.width = v84;
    v138.size.height = v113;
    v139 = CGRectIntegral(v138);
    v83 = v139.origin.y;
    v85 = v139.origin.x;
    v81 = v139.size.height;
    v82 = v139.size.width;
    v140.origin.y = CGRectGetMaxY(v139) + 16.0;
    v140.origin.x = (v8 - v117) * 0.5;
    v140.size.width = v117;
    v58 = v100;
    v140.size.height = v100;
    v141 = CGRectIntegral(v140);
    v114 = v141.origin.y;
    v116 = v141.origin.x;
    v118 = v141.size.height;
    v120 = v141.size.width;
    v142.origin.y = CGRectGetMaxY(v141) + 16.0;
    v142.origin.x = (v8 - v77) * 0.5;
    v142.size.width = v77;
    v142.size.height = rect;
    v135 = CGRectIntegral(v142);
    v122 = v135.origin.x;
    v78 = v135.size.width;
    recta = v135.origin.y;
    v76 = v135.size.height;
  }

  v124 = v8;
  v143.origin.y = CGRectGetMaxY(v135) + 16.0;
  v143.origin.x = (v8 - v101) * 0.5;
  v143.size.width = v101;
  v59 = v102;
  v143.size.height = v102;
  v144 = CGRectIntegral(v143);
  v60 = v144.origin.x;
  v61 = v144.origin.y;
  v62 = v144.size.width;
  v103 = v144.size.height;
  if (v59 <= 0.0)
  {
    v144.origin.y = v114;
    v144.origin.x = v116;
    v144.size.height = v118;
    v144.size.width = v120;
    if (v58 <= 0.0)
    {
      v144.origin.x = v57;
      v144.size.width = v110;
      v144.origin.y = v112;
      v144.size.height = v109;
    }
  }

  v63 = v57;
  v64 = CGRectGetMaxY(v144);
  v65 = 0.0;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  if ((v125[48] & 1) == 0)
  {
    v145.size.width = v75;
    v145.origin.y = v64 + 20.0;
    v145.origin.x = (v124 - v75) * 0.5;
    v145.size.height = v74;
    *&v64 = CGRectIntegral(v145);
    v65 = v64;
    v66 = v69;
    v67 = v70;
    v68 = v71;
  }

  v72 = [v7 horizontalSizeClass];
  v73 = 20.0;
  if (v72 == 1)
  {
    v73 = 40.0;
  }

  v146.size.height = v94;
  v146.origin.x = (v124 - v95) * 0.5;
  v146.origin.y = v107 - (v94 + v73);
  v146.size.width = v95;
  v147 = CGRectIntegral(v146);
  *(a3 + 64) = v93;
  *(a3 + 72) = v92;
  *(a3 + 80) = v91;
  *(a3 + 88) = v90;
  *(a3 + 96) = v89;
  *(a3 + 104) = v88;
  *(a3 + 112) = v87;
  *(a3 + 120) = v86;
  *(a3 + 128) = v63;
  *(a3 + 136) = v112;
  *(a3 + 144) = v110;
  *(a3 + 152) = v109;
  *a3 = x;
  *(a3 + 8) = y;
  *(a3 + 16) = width;
  *(a3 + 24) = height;
  *(a3 + 32) = x;
  *(a3 + 40) = y;
  *(a3 + 48) = width;
  *(a3 + 56) = height;
  *(a3 + 160) = v85;
  *(a3 + 168) = v83;
  *(a3 + 176) = v82;
  *(a3 + 184) = v81;
  *(a3 + 192) = v116;
  *(a3 + 200) = v114;
  *(a3 + 208) = v120;
  *(a3 + 216) = v118;
  *(a3 + 224) = v122;
  *(a3 + 232) = recta;
  *(a3 + 240) = v78;
  *(a3 + 248) = v76;
  *(a3 + 256) = v60;
  *(a3 + 264) = v61;
  *(a3 + 272) = v62;
  *(a3 + 280) = v103;
  *(a3 + 288) = v65;
  *(a3 + 296) = v66;
  *(a3 + 304) = v67;
  *(a3 + 312) = v68;
  *(a3 + 320) = v147;
  *(a3 + 352) = v25;
  *(a3 + 360) = v106;
  *(a3 + 368) = v24;
  *(a3 + 376) = v21;
  *(a3 + 384) = v105;
  *(a3 + 392) = v104;
  *(a3 + 400) = v42;
  *(a3 + 408) = v45;
}

uint64_t sub_1D788236C(void *a1)
{
  v2 = sub_1D78B2FF4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 string];
  v7 = sub_1D78B5C74();
  v9 = v8;

  v15[0] = v7;
  v15[1] = v9;
  sub_1D78B2FC4();
  sub_1D77BE06C();
  v10 = sub_1D78B62C4();
  v12 = v11;
  (*(v3 + 8))(v5, v2);

  v14 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v14 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    return sub_1D78B6144();
  }

  return result;
}

double sub_1D7882514(void *a1, double a2, double a3)
{
  if ([a1 horizontalSizeClass] == 1 && (v5 = objc_msgSend(objc_opt_self(), sel_currentDevice), v6 = objc_msgSend(v5, sel_userInterfaceIdiom), v5, v6 != 1))
  {
    v7 = 60.5;
  }

  else
  {
    v7 = 40.5;
  }

  if (a3 >= a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = a3;
  }

  return v8 * v7 / 100.0;
}

uint64_t sub_1D78825C4(uint64_t a1)
{
  v2 = sub_1D7890118();
  v3 = MEMORY[0x1E69D6F28];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D7882618(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7890118();
  v5 = MEMORY[0x1E69D6F28];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1D7882674(uint64_t a1)
{
  v2 = sub_1D7890118();
  v3 = MEMORY[0x1E69D6F28];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

NewsSubscription::BundleTrialStatus_optional __swiftcall BundleTrialStatus.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1D78826E4(uint64_t a1)
{
  v2 = sub_1D78900C4();
  v3 = MEMORY[0x1E69D6F28];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D7882738(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D78900C4();
  v5 = MEMORY[0x1E69D6F28];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1D7882794(uint64_t a1)
{
  v2 = sub_1D78900C4();
  v3 = MEMORY[0x1E69D6F28];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

uint64_t sub_1D788280C()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1D78B3694();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  v8[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EE08F2C8 = result;
  return result;
}

uint64_t sub_1D7882A10()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1D78B3694();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  v8[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EE08F2B0 = result;
  return result;
}

uint64_t sub_1D7882C14()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1D78B3694();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  v8[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EE0954F8 = result;
  return result;
}

uint64_t sub_1D7882E18()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1D78B3694();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  v8[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EE08F2A0 = result;
  return result;
}

uint64_t sub_1D7883040()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1D78B3694();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  v8[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB628 = result;
  return result;
}

uint64_t sub_1D78832F8()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1D78B3694();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  v8[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB630 = result;
  return result;
}

uint64_t sub_1D78834FC()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3694();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1D78B3394();
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1D78B32E4();
  *v7 = 0xD00000000000001BLL;
  v7[1] = 0x80000001D78E05B0;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  sub_1D774E200();
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EE08F2E8 = result;
  return result;
}

uint64_t sub_1D7883744()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3694();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v6 = 0xD00000000000001BLL;
  v6[1] = 0x80000001D78E05B0;
  (*(v7 + 104))(v6, *MEMORY[0x1E69D6E98]);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  sub_1D774BB74(0, &qword_1EE095440, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB638 = result;
  return result;
}

uint64_t sub_1D7883964()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3694();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v6 = 0xD00000000000001BLL;
  v6[1] = 0x80000001D78E05B0;
  (*(v7 + 104))(v6, *MEMORY[0x1E69D6E98]);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  sub_1D774BB74(0, &qword_1EE095440, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EE08F2D8 = result;
  return result;
}

uint64_t sub_1D7883B84()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3594();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7759BC4();
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6D00], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D78B36E4();
  qword_1EE08F310 = result;
  return result;
}

uint64_t sub_1D7883D54()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3594();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7759BC4();
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6D00], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D78B36E4();
  qword_1EC9CB640 = result;
  return result;
}

uint64_t sub_1D7883F24()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1D78B3694();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v7 = sub_1D78B5C74();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v10[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB648 = result;
  return result;
}

uint64_t sub_1D7884148()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3694();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x1E69E6530];
  sub_1D774BB74(0, &qword_1EE095430, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28], MEMORY[0x1E69D6EB0]);
  sub_1D78B5C74();
  v11[1] = 0;
  *v7 = sub_1D78B5C74();
  v7[1] = v9;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  sub_1D775BF2C(0, &qword_1EE08FAB8, &qword_1EE095458, v8);
  sub_1D775C088(0, &qword_1EE095458, v8, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D78BCB50;
  v11[0] = 0;
  sub_1D78B36A4();
  v11[0] = 1;
  sub_1D78B36A4();
  result = sub_1D78B36D4();
  qword_1EC9CB650 = result;
  return result;
}

uint64_t sub_1D78844A8()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3694();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x1E69E6530];
  sub_1D774BB74(0, &qword_1EE095430, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28], MEMORY[0x1E69D6EB0]);
  v12[1] = v9;
  sub_1D78B5C74();
  v14 = 0;
  *v7 = sub_1D78B5C74();
  v7[1] = v10;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  sub_1D775BF2C(0, &qword_1EE08FAB8, &qword_1EE095458, v8);
  sub_1D775C088(0, &qword_1EE095458, v8, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D78C0D80;
  v13 = 0;
  sub_1D78B36A4();
  v13 = 1;
  sub_1D78B36A4();
  v13 = 2;
  sub_1D78B36A4();
  v13 = 3;
  sub_1D78B36A4();
  v13 = 4;
  sub_1D78B36A4();
  result = sub_1D78B36D4();
  qword_1EC9CB658 = result;
  return result;
}

uint64_t sub_1D78848B8()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3694();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x1E69E6530];
  sub_1D774BB74(0, &qword_1EE095430, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28], MEMORY[0x1E69D6EB0]);
  v11[1] = 0;
  *v7 = sub_1D78B5C74();
  v7[1] = v9;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  sub_1D775BF2C(0, &qword_1EE08FAB8, &qword_1EE095458, v8);
  sub_1D775C088(0, &qword_1EE095458, v8, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D78C22A0;
  v11[0] = 0;
  sub_1D78B36A4();
  v11[0] = 1;
  sub_1D78B36A4();
  v11[0] = 2;
  sub_1D78B36A4();
  v11[0] = 3;
  sub_1D78B36A4();
  result = sub_1D78B36D4();
  qword_1EE0955E0 = result;
  return result;
}

uint64_t sub_1D7884C78()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3694();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x1E69E6530];
  sub_1D774BB74(0, &qword_1EE095430, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28], MEMORY[0x1E69D6EB0]);
  v11[1] = 0;
  *v7 = sub_1D78B5C74();
  v7[1] = v9;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  sub_1D775BF2C(0, &qword_1EE08FAB8, &qword_1EE095458, v8);
  sub_1D775C088(0, &qword_1EE095458, v8, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D78BF690;
  v11[0] = 0;
  sub_1D78B36A4();
  v11[0] = 1;
  sub_1D78B36A4();
  v11[0] = 2;
  sub_1D78B36A4();
  result = sub_1D78B36D4();
  qword_1EC9CB660 = result;
  return result;
}

uint64_t sub_1D7885008()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3694();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_1D78B5C74();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v10[0] = 0xD00000000000003FLL;
  v10[1] = 0x80000001D78E03F0;
  sub_1D774BB74(0, &qword_1EE095440, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB668 = result;
  return result;
}

uint64_t sub_1D7885248()
{
  v0 = sub_1D78B3694();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_1D78B3684();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.PaywallConfigs.ConfigOverrides(0);
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E90], v4);
  *v3 = sub_1D78B5C74();
  v3[1] = v8;
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E98], v0);
  result = sub_1D78B35A4();
  qword_1EE095598 = result;
  return result;
}

uint64_t sub_1D7885430()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3694();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x1E69E6530];
  sub_1D774BB74(0, &qword_1EE095430, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28], MEMORY[0x1E69D6EB0]);
  v11[1] = 0;
  *v7 = sub_1D78B5C74();
  v7[1] = v9;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  sub_1D775BF2C(0, &qword_1EE08FAB8, &qword_1EE095458, v8);
  sub_1D775C088(0, &qword_1EE095458, v8, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D78BF690;
  v11[0] = -1;
  sub_1D78B36A4();
  v11[0] = 0;
  sub_1D78B36A4();
  v11[0] = 1;
  sub_1D78B36A4();
  result = sub_1D78B36D4();
  qword_1EC9CB670 = result;
  return result;
}

uint64_t sub_1D78857C0()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3694();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_1D78B5C74();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v10[0] = 0xD000000000000014;
  v10[1] = 0x80000001D78E0310;
  sub_1D774BB74(0, &qword_1EE095440, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB678 = result;
  return result;
}

uint64_t sub_1D78859F8()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3694();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_1D78B5C74();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v10[0] = 0xD00000000000004DLL;
  v10[1] = 0x80000001D78E0290;
  sub_1D774BB74(0, &qword_1EE095440, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB680 = result;
  return result;
}

uint64_t sub_1D7885C38()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3694();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_1D78B5C74();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v10[0] = 0xD000000000000010;
  v10[1] = 0x80000001D78E0240;
  sub_1D774BB74(0, &qword_1EE095440, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB688 = result;
  return result;
}

uint64_t sub_1D7885E74()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3694();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_1D78B5C74();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  sub_1D774BB74(0, &qword_1EE095440, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB690 = result;
  return result;
}

uint64_t sub_1D788609C()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3694();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_1D78B5C74();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v10[0] = 0xD000000000000078;
  v10[1] = 0x80000001D78E0150;
  sub_1D774BB74(0, &qword_1EE095440, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB698 = result;
  return result;
}

uint64_t sub_1D78862DC()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1D78B3694();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v7 = sub_1D78B5C74();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v10[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB6A0 = result;
  return result;
}

uint64_t sub_1D7886500()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3694();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x1E69E6530];
  sub_1D774BB74(0, &qword_1EE095430, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28], MEMORY[0x1E69D6EB0]);
  v11[1] = 0;
  *v7 = sub_1D78B5C74();
  v7[1] = v9;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  sub_1D775BF2C(0, &qword_1EE08FAB8, &qword_1EE095458, v8);
  sub_1D775C088(0, &qword_1EE095458, v8, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D78C0D80;
  v11[0] = 0;
  sub_1D78B36A4();
  v11[0] = 1;
  sub_1D78B36A4();
  v11[0] = 2;
  sub_1D78B36A4();
  v11[0] = 3;
  sub_1D78B36A4();
  v11[0] = 4;
  sub_1D78B36A4();
  result = sub_1D78B36D4();
  qword_1EC9CB6A8 = result;
  return result;
}

uint64_t sub_1D788690C()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1D78B3694();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v7 = sub_1D78B5C74();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v10[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB6B0 = result;
  return result;
}

uint64_t sub_1D7886B30()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3694();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_1D78B5C74();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v10[0] = 0xD000000000000015;
  v10[1] = 0x80000001D78DE780;
  sub_1D774BB74(0, &qword_1EE095440, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB6B8 = result;
  return result;
}

uint64_t sub_1D7886D68()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3694();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_1D78B5C74();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v10[0] = 0xD000000000000017;
  v10[1] = 0x80000001D78E0010;
  sub_1D774BB74(0, &qword_1EE095440, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB6C0 = result;
  return result;
}

uint64_t sub_1D7886FA0()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1D78B3694();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v7 = sub_1D78B5C74();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v10[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB6C8 = result;
  return result;
}

uint64_t sub_1D78871C4()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1D78B3694();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v7 = sub_1D78B5C74();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v10[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB6D0 = result;
  return result;
}

uint64_t Settings.BestOffers.ConfigOverrides.__deallocating_deinit()
{
  _s11TeaSettings0B0C16NewsSubscriptionE10BestOffersV15ConfigOverridesCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7887444()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3594();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7759BC4();
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6D00], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D78B36E4();
  qword_1EE08F440 = result;
  return result;
}

uint64_t sub_1D7887614()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3594();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7759BC4();
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6D00], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D78B36E4();
  qword_1EE08F458 = result;
  return result;
}

uint64_t sub_1D78877E4()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1D78B3694();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v7 = sub_1D78B5C74();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E80], v0);
  v10[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB6D8 = result;
  return result;
}

uint64_t sub_1D7887A08()
{
  v0 = sub_1D78B3694();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3684();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E6530];
  sub_1D774BB74(0, &qword_1EE095430, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28], MEMORY[0x1E69D6EB0]);
  v11[1] = v9;
  v13 = 0;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E90], v4);
  sub_1D775BF2C(0, &qword_1EE08FAB8, &qword_1EE095458, v8);
  sub_1D775C088(0, &qword_1EE095458, v8, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D78CA870;
  v12 = 0;
  sub_1D78B36A4();
  v12 = 60;
  sub_1D78B36A4();
  v12 = 180;
  sub_1D78B36A4();
  v12 = 300;
  sub_1D78B36A4();
  v12 = 600;
  sub_1D78B36A4();
  v12 = 900;
  sub_1D78B36A4();
  v12 = 3600;
  sub_1D78B36A4();
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6EA0], v0);
  result = sub_1D78B36D4();
  qword_1EC9CB6E0 = result;
  return result;
}

uint64_t sub_1D7887E84()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1D78B3694();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D78B5C74();
  *v7 = sub_1D78B5C74();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v10[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB6E8 = result;
  return result;
}

uint64_t sub_1D78880B0()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3694();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x1E69E6530];
  sub_1D774BB74(0, &qword_1EE095430, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28], MEMORY[0x1E69D6EB0]);
  v11[1] = 0;
  *v7 = sub_1D78B5C74();
  v7[1] = v9;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  sub_1D775BF2C(0, &qword_1EE08FAB8, &qword_1EE095458, v8);
  sub_1D775C088(0, &qword_1EE095458, v8, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D78CA870;
  v11[0] = 0;
  sub_1D78B36A4();
  v11[0] = 1;
  sub_1D78B36A4();
  v11[0] = 2;
  sub_1D78B36A4();
  v11[0] = 3;
  sub_1D78B36A4();
  v11[0] = 4;
  sub_1D78B36A4();
  v11[0] = 5;
  sub_1D78B36A4();
  v11[0] = 6;
  sub_1D78B36A4();
  result = sub_1D78B36D4();
  qword_1EC9CB6F0 = result;
  return result;
}

uint64_t sub_1D788852C()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3694();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_1D78B5C74();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  sub_1D774BB74(0, &qword_1EE095440, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB6F8 = result;
  return result;
}

uint64_t sub_1D7888754()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1D78B3694();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v7 = sub_1D78B5C74();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v10[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB700 = result;
  return result;
}

uint64_t sub_1D7888978()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1D78B3694();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v7 = sub_1D78B5C74();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v10[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB708 = result;
  return result;
}

uint64_t sub_1D7888B9C()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1D78B3694();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v7 = sub_1D78B5C74();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v10[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB710 = result;
  return result;
}

uint64_t sub_1D7888DC0()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1D78B3694();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v7 = sub_1D78B5C74();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v10[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB718 = result;
  return result;
}

uint64_t sub_1D7888FE4()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1D78B3694();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v7 = sub_1D78B5C74();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v10[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB720 = result;
  return result;
}

uint64_t sub_1D7889208()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3694();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x1E69E6530];
  sub_1D774BB74(0, &qword_1EE095430, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28], MEMORY[0x1E69D6EB0]);
  v11[1] = 0;
  *v7 = sub_1D78B5C74();
  v7[1] = v9;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  sub_1D775BF2C(0, &qword_1EE08FAB8, &qword_1EE095458, v8);
  sub_1D775C088(0, &qword_1EE095458, v8, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D78C22A0;
  v11[0] = 0;
  sub_1D78B36A4();
  v11[0] = 1;
  sub_1D78B36A4();
  v11[0] = 2;
  sub_1D78B36A4();
  v11[0] = 3;
  sub_1D78B36A4();
  result = sub_1D78B36D4();
  qword_1EC9CB728 = result;
  return result;
}

uint64_t sub_1D78895F4()
{
  v11 = sub_1D78B3694();
  v0 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v2 = v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D78B3684();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E6530];
  sub_1D774BB74(0, &qword_1EE095430, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28], MEMORY[0x1E69D6EB0]);
  v10[1] = "anding_page_override";
  v10[2] = v8;
  v13 = -1;
  (*(v4 + 104))(v6, *MEMORY[0x1E69D6E90], v3);
  sub_1D775BF2C(0, &qword_1EE08FAB8, &qword_1EE095458, v7);
  sub_1D775C088(0, &qword_1EE095458, v7, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D78CA880;
  v12 = -1;
  sub_1D78B36A4();
  v12 = 60;
  sub_1D78B36A4();
  v12 = 180;
  sub_1D78B36A4();
  v12 = 300;
  sub_1D78B36A4();
  v12 = 600;
  sub_1D78B36A4();
  v12 = 900;
  sub_1D78B36A4();
  v12 = 1200;
  sub_1D78B36A4();
  v12 = 1800;
  sub_1D78B36A4();
  (*(v0 + 104))(v2, *MEMORY[0x1E69D6EA0], v11);
  result = sub_1D78B36D4();
  qword_1EC9CB730 = result;
  return result;
}

uint64_t sub_1D7889AD0()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3694();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_1D78B5C74();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  sub_1D774BB74(0, &qword_1EE095440, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB738 = result;
  return result;
}

uint64_t sub_1D7889CF8()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3694();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_1D78B5C74();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  sub_1D774BB74(0, &qword_1EE095440, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB740 = result;
  return result;
}

uint64_t sub_1D7889F20()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1D78B3694();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  v8[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB748 = result;
  return result;
}

uint64_t sub_1D788A124()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1D78B3694();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  v8[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB750 = result;
  return result;
}

uint64_t sub_1D788A328()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1D78B3694();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  v8[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB758 = result;
  return result;
}

uint64_t sub_1D788A52C()
{
  v0 = sub_1D78B3694();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1D78B3684();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E80]);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6EA0], v0);
  v8[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EE095558 = result;
  return result;
}

uint64_t sub_1D788A730()
{
  v0 = sub_1D78B3694();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3684();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78903F0(0, &qword_1EE095448, sub_1D7890450);
  v10[1] = "unt_maximum_limit";
  v10[2] = v8;
  v14 = 0;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E80], v4);
  sub_1D775BF2C(0, &qword_1EE08FAC0, &qword_1EE095460, &type metadata for SettingsArticleAccess);
  sub_1D775C088(0, &qword_1EE095460, &type metadata for SettingsArticleAccess, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D78BF690;
  v13 = 0;
  sub_1D78B36A4();
  v12 = 1;
  sub_1D78B36A4();
  v11 = 2;
  sub_1D78B36A4();
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6EA0], v0);
  sub_1D78904A4();
  result = sub_1D78B36D4();
  qword_1EE095570 = result;
  return result;
}

uint64_t sub_1D788AAB0()
{
  v11 = sub_1D78B3694();
  v0 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v2 = v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D78B3684();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E6530];
  sub_1D774BB74(0, &qword_1EE095430, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28], MEMORY[0x1E69D6EB0]);
  v10[1] = "tions.offered_purchase_ids";
  v10[2] = v8;
  v13 = -1;
  (*(v4 + 104))(v6, *MEMORY[0x1E69D6E90], v3);
  sub_1D775BF2C(0, &qword_1EE08FAB8, &qword_1EE095458, v7);
  sub_1D775C088(0, &qword_1EE095458, v7, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D78CA890;
  v12 = -1;
  sub_1D78B36A4();
  v12 = 1;
  sub_1D78B36A4();
  v12 = 2;
  sub_1D78B36A4();
  v12 = 3;
  sub_1D78B36A4();
  v12 = 5;
  sub_1D78B36A4();
  v12 = 8;
  sub_1D78B36A4();
  v12 = 10;
  sub_1D78B36A4();
  v12 = 12;
  sub_1D78B36A4();
  v12 = 15;
  sub_1D78B36A4();
  (*(v0 + 104))(v2, *MEMORY[0x1E69D6EA0], v11);
  result = sub_1D78B36D4();
  qword_1EC9CB760 = result;
  return result;
}

uint64_t sub_1D788AF2C()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1D78B3694();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D78903F0(0, &qword_1EC9CB850, sub_1D7890348);
  v10[15] = 0;
  *v7 = sub_1D78B5C74();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  sub_1D775BF2C(0, &qword_1EC9CB860, &qword_1EC9CB868, &type metadata for BundleTrialStatus);
  sub_1D775C088(0, &qword_1EC9CB868, &type metadata for BundleTrialStatus, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D78BF690;
  v10[14] = 0;
  sub_1D78B36A4();
  v10[13] = 1;
  sub_1D78B36A4();
  v10[12] = 2;
  sub_1D78B36A4();
  sub_1D789039C();
  result = sub_1D78B36D4();
  qword_1EC9CB768 = result;
  return result;
}

uint64_t sub_1D788B2B8()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3694();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_1D78B5C74();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v10[1] = MEMORY[0x1E69E7CC0];
  sub_1D7890244();
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB770 = result;
  return result;
}

uint64_t sub_1D788B4B8()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3694();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_1D78B5C74();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v10[1] = MEMORY[0x1E69E7CC0];
  sub_1D7890244();
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB778 = result;
  return result;
}

uint64_t sub_1D788B6DC()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3694();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x1E69E6530];
  sub_1D774BB74(0, &qword_1EE095430, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28], MEMORY[0x1E69D6EB0]);
  v11[1] = 0;
  *v7 = sub_1D78B5C74();
  v7[1] = v9;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  sub_1D775BF2C(0, &qword_1EE08FAB8, &qword_1EE095458, v8);
  sub_1D775C088(0, &qword_1EE095458, v8, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D78CA870;
  v11[0] = 0;
  sub_1D78B36A4();
  v11[0] = 60;
  sub_1D78B36A4();
  v11[0] = 180;
  sub_1D78B36A4();
  v11[0] = 300;
  sub_1D78B36A4();
  v11[0] = 600;
  sub_1D78B36A4();
  v11[0] = 900;
  sub_1D78B36A4();
  v11[0] = 3600;
  sub_1D78B36A4();
  result = sub_1D78B36D4();
  qword_1EC9CB780 = result;
  return result;
}

uint64_t sub_1D788BB6C()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1D78B3694();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  v8[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EE08F398 = result;
  return result;
}

uint64_t sub_1D788BD70()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3694();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  sub_1D774BB74(0, &qword_1EE095440, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB788 = result;
  return result;
}

uint64_t sub_1D788BF78()
{
  v0 = sub_1D78B3694();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_1D78B3684();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.BundleSubscriptions.FreeUserEducationUpsellOverrides(0);
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E90], v4);
  *v3 = sub_1D78B5C74();
  v3[1] = v8;
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E98], v0);
  result = sub_1D78B35A4();
  qword_1EC9CB790 = result;
  return result;
}

uint64_t sub_1D788C160()
{
  v11 = sub_1D78B3694();
  v0 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v2 = v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D78B3684();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E6530];
  sub_1D774BB74(0, &qword_1EE095430, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28], MEMORY[0x1E69D6EB0]);
  v10[1] = "r_paywall_frequency";
  v10[2] = v8;
  v13 = -1;
  (*(v4 + 104))(v6, *MEMORY[0x1E69D6E90], v3);
  sub_1D775BF2C(0, &qword_1EE08FAB8, &qword_1EE095458, v7);
  sub_1D775C088(0, &qword_1EE095458, v7, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D78CA890;
  v12 = -1;
  sub_1D78B36A4();
  v12 = 1;
  sub_1D78B36A4();
  v12 = 2;
  sub_1D78B36A4();
  v12 = 3;
  sub_1D78B36A4();
  v12 = 5;
  sub_1D78B36A4();
  v12 = 8;
  sub_1D78B36A4();
  v12 = 10;
  sub_1D78B36A4();
  v12 = 12;
  sub_1D78B36A4();
  v12 = 15;
  sub_1D78B36A4();
  (*(v0 + 104))(v2, *MEMORY[0x1E69D6EA0], v11);
  result = sub_1D78B36D4();
  qword_1EC9CB798 = result;
  return result;
}

uint64_t sub_1D788C5DC()
{
  v11 = sub_1D78B3694();
  v0 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v2 = v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D78B3684();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E6530];
  sub_1D774BB74(0, &qword_1EE095430, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28], MEMORY[0x1E69D6EB0]);
  v10[1] = "aywall_frequency";
  v10[2] = v8;
  v13 = -1;
  (*(v4 + 104))(v6, *MEMORY[0x1E69D6E90], v3);
  sub_1D775BF2C(0, &qword_1EE08FAB8, &qword_1EE095458, v7);
  sub_1D775C088(0, &qword_1EE095458, v7, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D78CA880;
  v12 = -1;
  sub_1D78B36A4();
  v12 = 60;
  sub_1D78B36A4();
  v12 = 180;
  sub_1D78B36A4();
  v12 = 300;
  sub_1D78B36A4();
  v12 = 600;
  sub_1D78B36A4();
  v12 = 900;
  sub_1D78B36A4();
  v12 = 1200;
  sub_1D78B36A4();
  v12 = 1800;
  sub_1D78B36A4();
  (*(v0 + 104))(v2, *MEMORY[0x1E69D6EA0], v11);
  result = sub_1D78B36D4();
  qword_1EE08F328 = result;
  return result;
}

uint64_t sub_1D788CAB4()
{
  v11 = sub_1D78B3694();
  v0 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v2 = v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D78B3684();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E6530];
  sub_1D774BB74(0, &qword_1EE095430, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28], MEMORY[0x1E69D6EB0]);
  v10[1] = "aywall_maximum_limit";
  v10[2] = v8;
  v13 = -1;
  (*(v4 + 104))(v6, *MEMORY[0x1E69D6E90], v3);
  sub_1D775BF2C(0, &qword_1EE08FAB8, &qword_1EE095458, v7);
  sub_1D775C088(0, &qword_1EE095458, v7, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D78CA880;
  v12 = -1;
  sub_1D78B36A4();
  v12 = 60;
  sub_1D78B36A4();
  v12 = 180;
  sub_1D78B36A4();
  v12 = 300;
  sub_1D78B36A4();
  v12 = 600;
  sub_1D78B36A4();
  v12 = 900;
  sub_1D78B36A4();
  v12 = 1200;
  sub_1D78B36A4();
  v12 = 1800;
  sub_1D78B36A4();
  (*(v0 + 104))(v2, *MEMORY[0x1E69D6EA0], v11);
  result = sub_1D78B36D4();
  qword_1EE08F350 = result;
  return result;
}

uint64_t sub_1D788CF8C()
{
  v11 = sub_1D78B3694();
  v0 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v2 = v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D78B3684();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E6530];
  sub_1D774BB74(0, &qword_1EE095430, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28], MEMORY[0x1E69D6EB0]);
  v10[1] = "iptions.paywall_shown_date";
  v10[2] = v8;
  v13 = -1;
  (*(v4 + 104))(v6, *MEMORY[0x1E69D6E90], v3);
  sub_1D775BF2C(0, &qword_1EE08FAB8, &qword_1EE095458, v7);
  sub_1D775C088(0, &qword_1EE095458, v7, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D78CA880;
  v12 = -1;
  sub_1D78B36A4();
  v12 = 3;
  sub_1D78B36A4();
  v12 = 5;
  sub_1D78B36A4();
  v12 = 8;
  sub_1D78B36A4();
  v12 = 10;
  sub_1D78B36A4();
  v12 = 12;
  sub_1D78B36A4();
  v12 = 15;
  sub_1D78B36A4();
  v12 = 20;
  sub_1D78B36A4();
  (*(v0 + 104))(v2, *MEMORY[0x1E69D6EA0], v11);
  result = sub_1D78B36D4();
  qword_1EE08F338 = result;
  return result;
}

uint64_t sub_1D788D3DC()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1D78B3694();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v7 = sub_1D78B5C74();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v10[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB7A0 = result;
  return result;
}

uint64_t sub_1D788D648()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3594();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7759BC4();
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6D00], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D78B36E4();
  qword_1EC9CB7A8 = result;
  return result;
}

uint64_t sub_1D788D818()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3694();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  v8[0] = 0x514745335141364BLL;
  v8[1] = 0xEA00000000005037;
  sub_1D774BB74(0, &qword_1EE095440, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB7B0 = result;
  return result;
}

uint64_t sub_1D788DA34()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3694();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  v8[0] = 0xD000000000000015;
  v8[1] = 0x80000001D78DF470;
  sub_1D774BB74(0, &qword_1EE095440, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB7B8 = result;
  return result;
}

uint64_t _s11TeaSettings0B0C16NewsSubscriptionE10BestOffersV15ConfigOverridesC3key12defaultValue6accessAHSSSg_SbAA6AccessOtcfc_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1D78B3684();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  (*(v6 + 16))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v5);
  v8 = sub_1D78B35B4();
  (*(v6 + 8))(a4, v5);
  return v8;
}

uint64_t sub_1D788DD60()
{
  v0 = sub_1D78B3694();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_1D78B3684();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.ALaCarteSubscriptions.SIWAConfigOverrides(0);
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E90], v4);
  *v3 = sub_1D78B5C74();
  v3[1] = v8;
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E98], v0);
  result = sub_1D78B35A4();
  qword_1EC9CB7C0 = result;
  return result;
}

uint64_t sub_1D788DF48()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3694();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D78B5C74();
  *v7 = sub_1D78B5C74();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  sub_1D774BB74(0, &qword_1EE095440, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EE095470 = result;
  return result;
}

uint64_t sub_1D788E178()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3694();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1D78B3394();
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1D78B32E4();
  *v7 = sub_1D78B5C74();
  v7[1] = v9;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  sub_1D774E200();
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB7C8 = result;
  return result;
}

uint64_t sub_1D788E3B4()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3694();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_1D78B5C74();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  v10[1] = 0;
  sub_1D774BB74(0, &qword_1EE095430, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB7D0 = result;
  return result;
}

uint64_t sub_1D788E5D8()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1D78B3694();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  v8[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB7D8 = result;
  return result;
}

uint64_t sub_1D788E7DC()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1D78B3694();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  v8[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB7E0 = result;
  return result;
}

uint64_t sub_1D788E9E0()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3694();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  sub_1D774BB74(0, &qword_1EE095440, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB7E8 = result;
  return result;
}

uint64_t sub_1D788EBE8()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1D78B3694();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  v8[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB7F0 = result;
  return result;
}

uint64_t sub_1D788EDEC()
{
  v0 = MEMORY[0x1E69E6370];
  v1 = MEMORY[0x1E69D6EF0];
  sub_1D774BB74(0, &qword_1EC9CA158, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6E30]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v41 - v5;
  v7 = sub_1D78B3604();
  v52 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D78B3514();
  __swift_allocate_value_buffer(v10, qword_1EC9CB7F8);
  v45 = __swift_project_value_buffer(v10, qword_1EC9CB7F8);
  sub_1D789016C(0, &qword_1EC9C9948, MEMORY[0x1E69D6E78]);
  v11 = *(sub_1D78B3674() - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v44 = *(v11 + 72);
  v42 = v12;
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1D78BCB50;
  sub_1D789016C(0, &qword_1EC9CA160, sub_1D77C4E38);
  v43 = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D78CA870;
  sub_1D774BB74(0, &qword_1EC9CA170, v0, v1, MEMORY[0x1E69D6E50]);
  v16 = v15;
  if (qword_1EE0954C0 != -1)
  {
    swift_once();
  }

  v17 = *(v52 + 104);
  v56 = *MEMORY[0x1E69D6D78];
  v55 = v17;
  v52 += 104;
  v17(v9);
  v18 = *MEMORY[0x1E69D6E28];
  v19 = *(v4 + 104);
  v50 = v4 + 104;
  v54 = v18;
  v53 = v19;
  v19(v6);

  v20 = sub_1D78B3654();
  *(v14 + 56) = v16;
  v48 = sub_1D78901C0();
  v49 = v7;
  *(v14 + 64) = v48;
  *(v14 + 32) = v20;
  v51 = v3;
  if (qword_1EE095510 != -1)
  {
    swift_once();
  }

  sub_1D775C088(0, &qword_1EE08FA00, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v21 = swift_allocObject();
  v47 = xmmword_1D78C0D70;
  *(v21 + 16) = xmmword_1D78C0D70;
  sub_1D78B35E4();

  *(v21 + 32) = sub_1D78B3614();
  v55(v9, v56, v49);
  v53(v6, v54, v51);
  v22 = sub_1D78B3654();
  v23 = v48;
  *(v14 + 96) = v16;
  *(v14 + 104) = v23;
  *(v14 + 72) = v22;
  if (qword_1EE0954A8 != -1)
  {
    swift_once();
  }

  v24 = swift_allocObject();
  *(v24 + 16) = v47;

  *(v24 + 32) = sub_1D78B3614();
  v55(v9, v56, v49);
  v53(v6, v54, v51);
  v25 = sub_1D78B3654();
  v26 = v48;
  *(v14 + 136) = v16;
  *(v14 + 144) = v26;
  *(v14 + 112) = v25;
  if (qword_1EE095480 != -1)
  {
    swift_once();
  }

  v27 = swift_allocObject();
  *(v27 + 16) = v47;

  *(v27 + 32) = sub_1D78B3614();
  v55(v9, v56, v49);
  v53(v6, v54, v51);
  v28 = sub_1D78B3654();
  v29 = v48;
  *(v14 + 176) = v16;
  *(v14 + 184) = v29;
  *(v14 + 152) = v28;
  if (qword_1EE095498 != -1)
  {
    swift_once();
  }

  v42 += v46;
  v30 = swift_allocObject();
  *(v30 + 16) = v47;

  *(v30 + 32) = sub_1D78B3614();
  v55(v9, v56, v49);
  v53(v6, v54, v51);
  v31 = sub_1D78B3654();
  v32 = v48;
  *(v14 + 216) = v16;
  *(v14 + 224) = v32;
  *(v14 + 192) = v31;
  v33 = v32;
  if (qword_1EE095500 != -1)
  {
    swift_once();
  }

  *&v47 = "Reset Last Seen Instance ID";
  v34 = v49;
  v55(v9, v56, v49);
  v53(v6, v54, v51);

  v35 = sub_1D78B3654();
  *(v14 + 256) = v16;
  *(v14 + 264) = v33;
  *(v14 + 232) = v35;
  if (qword_1EC9C8538 != -1)
  {
    swift_once();
  }

  v55(v9, v56, v34);
  v53(v6, v54, v51);

  v36 = sub_1D78B3654();
  *(v14 + 296) = v16;
  *(v14 + 304) = v33;
  *(v14 + 272) = v36;
  sub_1D78B3664();
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1D78BCAB0;
  if (qword_1EC9C8528 != -1)
  {
    swift_once();
  }

  v55(v9, v56, v34);
  v53(v6, v54, v51);

  v38 = sub_1D78B3654();
  v39 = v48;
  *(v37 + 56) = v16;
  *(v37 + 64) = v39;
  *(v37 + 32) = v38;
  sub_1D78B3664();
  return sub_1D78B3504();
}

uint64_t sub_1D788F860()
{
  v0 = MEMORY[0x1E69E6370];
  v1 = MEMORY[0x1E69D6EF0];
  sub_1D774BB74(0, &qword_1EC9CA158, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6E30]);
  v31 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v24 - v4;
  v6 = sub_1D78B3604();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D78B3514();
  __swift_allocate_value_buffer(v10, qword_1EC9CB810);
  v26 = __swift_project_value_buffer(v10, qword_1EC9CB810);
  sub_1D789016C(0, &qword_1EC9C9948, MEMORY[0x1E69D6E78]);
  v11 = *(sub_1D78B3674() - 8);
  v24[1] = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1D78BCAB0;
  sub_1D789016C(0, &qword_1EC9CA160, sub_1D77C4E38);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D78BF690;
  sub_1D774BB74(0, &qword_1EC9CA170, v0, v1, MEMORY[0x1E69D6E50]);
  v14 = v13;
  if (qword_1EC9C8720 != -1)
  {
    swift_once();
  }

  v15 = *(v7 + 104);
  v30 = *MEMORY[0x1E69D6D78];
  v32 = v7 + 104;
  v29 = v15;
  v15(v9);
  v16 = *(v3 + 104);
  v28 = *MEMORY[0x1E69D6E28];
  v27 = v16;
  v16(v5);

  v17 = sub_1D78B3654();
  *(v12 + 56) = v14;
  v18 = sub_1D78901C0();
  *(v12 + 64) = v18;
  *(v12 + 32) = v17;
  if (qword_1EC9C8728 != -1)
  {
    swift_once();
  }

  v29(v9, v30, v6);
  v19 = v31;
  v27(v5, v28, v31);

  v20 = sub_1D78B3654();
  *(v12 + 96) = v14;
  *(v12 + 104) = v18;
  *(v12 + 72) = v20;
  v24[0] = v18;
  if (qword_1EC9C8738 != -1)
  {
    swift_once();
  }

  v29(v9, v30, v6);
  v27(v5, v28, v19);

  v21 = sub_1D78B3654();
  v22 = v24[0];
  *(v12 + 136) = v14;
  *(v12 + 144) = v22;
  *(v12 + 112) = v21;
  sub_1D78B3664();
  return sub_1D78B3504();
}

uint64_t sub_1D788FDD0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1D78B3514();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

unint64_t sub_1D788FE68()
{
  result = qword_1EE0939D0;
  if (!qword_1EE0939D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0939D0);
  }

  return result;
}

unint64_t sub_1D788FEBC()
{
  result = qword_1EC9CB828;
  if (!qword_1EC9CB828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB828);
  }

  return result;
}

unint64_t sub_1D78900C4()
{
  result = qword_1EC9CB840;
  if (!qword_1EC9CB840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB840);
  }

  return result;
}

unint64_t sub_1D7890118()
{
  result = qword_1EE0939C8;
  if (!qword_1EE0939C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0939C8);
  }

  return result;
}

void sub_1D789016C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D78B66F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D78901C0()
{
  result = qword_1EC9CA178;
  if (!qword_1EC9CA178)
  {
    sub_1D774BB74(255, &qword_1EC9CA170, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6E50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CA178);
  }

  return result;
}

void sub_1D7890244()
{
  if (!qword_1EC9CB848)
  {
    sub_1D775C088(255, &qword_1EE090010, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D78902CC();
    v0 = sub_1D78B36F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9CB848);
    }
  }
}

unint64_t sub_1D78902CC()
{
  result = qword_1EC9CB558;
  if (!qword_1EC9CB558)
  {
    sub_1D775C088(255, &qword_1EE090010, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB558);
  }

  return result;
}

unint64_t sub_1D7890348()
{
  result = qword_1EC9CB858;
  if (!qword_1EC9CB858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB858);
  }

  return result;
}

unint64_t sub_1D789039C()
{
  result = qword_1EC9CB870;
  if (!qword_1EC9CB870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB870);
  }

  return result;
}

void sub_1D78903F0(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1D78B36F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D7890450()
{
  result = qword_1EE0939D8;
  if (!qword_1EE0939D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0939D8);
  }

  return result;
}

unint64_t sub_1D78904A4()
{
  result = qword_1EE0939E0;
  if (!qword_1EE0939E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0939E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DefaultPaidBundleViaOfferFeatureAvailability(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[8])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DefaultPaidBundleViaOfferFeatureAvailability(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1D78906CC()
{
  sub_1D77505D0();
  swift_allocObject();
  return sub_1D78B4104();
}

Swift::Bool __swiftcall AMSMarketingItem.isBundleHardwareOffer()()
{
  v0 = sub_1D78915CC();
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = 0;
    while (v3 < *(v1 + 16))
    {
      v4 = *(v1 + 32 + 8 * v3);
      if (*(v4 + 16))
      {

        v5 = sub_1D777BBB4(0x6C69626967696C65, 0xEF65707954797469);
        if (v6 & 1) != 0 && (sub_1D777BE08(*(v4 + 56) + 32 * v5, &v18), (swift_dynamicCast()))
        {
          v18 = v16;
          v19 = v17;
          v16 = 0x4552415744524148;
          v17 = 0xEA0000000000315FLL;
          sub_1D77BE06C();
          v7 = sub_1D78B62F4();

          if (!v7 && *(v4 + 16) && (v8 = sub_1D777BBB4(0x5465636976726573, 0xEC00000073657079), (v9 & 1) != 0) && (sub_1D777BE08(*(v4 + 56) + 32 * v8, &v18), sub_1D7891C4C(0, &qword_1EE090010, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]), LOBYTE(v0) = swift_dynamicCast(), (v0 & 1) != 0))
          {
            v10 = 0x4552415744524170;
            v11 = -MEMORY[0x4552415744524158];
            v12 = -1;
            while (v11 + v12 != -1)
            {
              if (++v12 >= MEMORY[0x4552415744524158])
              {
                goto LABEL_24;
              }

              v13 = v10 + 16;
              v14 = *v10;
              v18 = *(v10 - 8);
              v19 = v14;
              v16 = 0x554C505F5357454ELL;
              v17 = 0xE900000000000053;
              v0 = sub_1D78B62F4();
              v10 = v13;
              if (!v0)
              {

                LOBYTE(v0) = 1;
                return v0;
              }
            }
          }

          else
          {
          }
        }

        else
        {
        }
      }

      if (++v3 == v2)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_21:

    LOBYTE(v0) = 0;
  }

  return v0;
}

Swift::Bool __swiftcall AMSMarketingItem.isCIPOffer()()
{
  v0 = sub_1D78915CC();
  v1 = v0;
  v2 = *(v0 + 16);
  if (!v2)
  {
LABEL_23:

    LOBYTE(v0) = 0;
    return v0;
  }

  v3 = 0;
  while (v3 < *(v1 + 16))
  {
    v4 = *(v1 + 32 + 8 * v3);
    if (*(v4 + 16))
    {

      v5 = sub_1D777BBB4(0x6C69626967696C65, 0xEF65707954797469);
      if (v6 & 1) != 0 && (sub_1D777BE08(*(v4 + 56) + 32 * v5, &v20), (swift_dynamicCast()))
      {
        v7 = v19[0];
        v8 = v19[1];
        v20 = v19[0];
        v21 = v19[1];
        strcpy(v19, "HARD_BUNDLE");
        HIDWORD(v19[1]) = -352321536;
        sub_1D77BE06C();
        if (sub_1D78B62F4())
        {
          v20 = v7;
          v21 = v8;
          strcpy(v19, "EXTENDED_OFFER");
          HIBYTE(v19[1]) = -18;
          v9 = sub_1D78B62F4();

          if (v9)
          {
            goto LABEL_21;
          }
        }

        else
        {
        }

        if (!*(v4 + 16))
        {
          goto LABEL_21;
        }

        v10 = sub_1D777BBB4(0x5465636976726573, 0xEC00000073657079);
        if ((v11 & 1) == 0)
        {
          goto LABEL_21;
        }

        sub_1D777BE08(*(v4 + 56) + 32 * v10, &v20);

        sub_1D7891C4C(0, &qword_1EE090010, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
        LOBYTE(v0) = swift_dynamicCast();
        if (v0)
        {
          v12 = v19[0];
          v13 = (v19[0] + 40);
          v14 = -*(v19[0] + 16);
          v15 = -1;
          while (v14 + v15 != -1)
          {
            if (++v15 >= *(v12 + 16))
            {
              goto LABEL_25;
            }

            v16 = v13 + 2;
            v17 = *v13;
            v20 = *(v13 - 1);
            v21 = v17;
            strcpy(v19, "NEWS_PLUS");
            WORD1(v19[1]) = 0;
            HIDWORD(v19[1]) = -385875968;
            v0 = sub_1D78B62F4();
            v13 = v16;
            if (!v0)
            {

              LOBYTE(v0) = 1;
              return v0;
            }
          }

LABEL_21:
        }
      }

      else
      {
      }
    }

    if (++v3 == v2)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return v0;
}

uint64_t AMSMarketingItem.priceString(for:)(void *a1)
{
  AMSMarketingItem.value(for:offerDictKey:key:)(a1, 0xD000000000000010, 0x80000001D78E0930, 0x726F466563697270, 0xEF79616C70736944, &v3);
  if (v4)
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D7756B84(&v3);
    return 0;
  }
}

uint64_t AMSMarketingItem.priceDiff(for:)(void *a1)
{
  AMSMarketingItem.value(for:offerDictKey:key:)(a1, 0xD000000000000010, 0x80000001D78E0930, 0x6669446563697270, 0xE900000000000066, &v3);
  if (v4)
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D7756B84(&v3);
    return 0;
  }
}

uint64_t AMSMarketingItem.priceDiffString(for:)(void *a1)
{
  AMSMarketingItem.value(for:offerDictKey:key:)(a1, 0xD000000000000010, 0x80000001D78E0930, 0xD000000000000013, 0x80000001D78E0950, &v3);
  if (v4)
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D7756B84(&v3);
    return 0;
  }
}

BOOL AMSMarketingItem.trialEligible(for:)(void *a1)
{
  AMSMarketingItem.value(for:offerDictKey:key:)(a1, 0x7363697274656DLL, 0xE700000000000000, 0x6C69626967696C65, 0xEF65707954797469, &v4);
  if (v5)
  {
    if (swift_dynamicCast())
    {
      v4 = v3;
      sub_1D77BE06C();
      v1 = sub_1D78B62F4();

      return v1 == 0;
    }
  }

  else
  {
    sub_1D7756B84(&v4);
  }

  return 0;
}

uint64_t AMSMarketingItem.upsellScenario(for:)@<X0>(char *a1@<X8>)
{
  v3 = [v1 rawValues];
  sub_1D778CDF0();
  v4 = sub_1D78B5BC4();

  if (!*(v4 + 16))
  {
    goto LABEL_15;
  }

  v5 = sub_1D777BBB4(1635018093, 0xE400000000000000);
  if ((v6 & 1) == 0)
  {
    goto LABEL_15;
  }

  v7 = *(*(v4 + 56) + 8 * v5);
  swift_unknownObjectRetain();

  v17 = v7;
  sub_1D777CABC();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_16;
  }

  if (!*(v15 + 16))
  {
    goto LABEL_15;
  }

  v9 = sub_1D777BBB4(0x7363697274656DLL, 0xE700000000000000);
  if ((v10 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_1D777BE08(*(v15 + 56) + 32 * v9, &v17);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  if (!*(v15 + 16) || (v11 = sub_1D777BBB4(0x63536C6C65737075, 0xEE006F6972616E65), (v12 & 1) == 0))
  {
LABEL_15:

    goto LABEL_16;
  }

  sub_1D777BE08(*(v15 + 56) + 32 * v11, &v17);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_16;
  }

  v17 = v15;
  v18 = v16;
  sub_1D77BE06C();
  if (!sub_1D78B62F4())
  {

    v14 = 1;
    goto LABEL_17;
  }

  v17 = v15;
  v18 = v16;
  if (!sub_1D78B62F4())
  {

    v14 = 2;
    goto LABEL_17;
  }

  v17 = v15;
  v18 = v16;
  if (!sub_1D78B62F4())
  {

    v14 = 3;
    goto LABEL_17;
  }

  v17 = v15;
  v18 = v16;
  v13 = sub_1D78B62F4();

  if (v13)
  {
    goto LABEL_16;
  }

  v14 = 4;
LABEL_17:
  *a1 = v14;
  return result;
}

uint64_t AMSMarketingItem.merchandisingItemKeysDictionary.getter()
{
  v0 = sub_1D78915CC();
  if (*(v0 + 16))
  {
    v1 = *(v0 + 32);

    v2 = sub_1D789172C(v1);

    return v2;
  }

  else
  {

    return 0;
  }
}

uint64_t AMSMarketingItem.additionalAMSOffersMerchandisingItemKeysDictionaries.getter()
{
  result = sub_1D78915CC();
  v1 = result;
  v2 = *(result + 16);
  if (v2 >= 2)
  {
    v3 = MEMORY[0x1E69E7CC0];
    v4 = v2 != 0;
    while (1)
    {
      v5 = v4;
      while (1)
      {
        if (v4 < (v2 != 0) || v5 >= v2)
        {
          __break(1u);
          return result;
        }

        v6 = *(v1 + 32 + 8 * v5);
        if (*(v6 + 16))
        {
          break;
        }

LABEL_7:
        if (v2 == ++v5)
        {
          goto LABEL_3;
        }
      }

      v7 = sub_1D777BBB4(0xD000000000000015, 0x80000001D78E0970);
      if ((v8 & 1) == 0)
      {
        break;
      }

      sub_1D777BE08(*(v6 + 56) + 32 * v7, v13);

      sub_1D777CABC();
      result = swift_dynamicCast();
      if ((result & 1) == 0)
      {
        goto LABEL_7;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D777AEA0(0, v3[2] + 1, 1, v3);
        v3 = result;
      }

      v10 = v3[2];
      v9 = v3[3];
      v11 = v10 + 1;
      if (v10 >= v9 >> 1)
      {
        result = sub_1D777AEA0((v9 > 1), v10 + 1, 1, v3);
        v11 = v10 + 1;
        v3 = result;
      }

      v4 = v5 + 1;
      v3[2] = v11;
      v3[v10 + 4] = v12;
      if (v2 - 1 == v5)
      {
        goto LABEL_3;
      }
    }

    goto LABEL_7;
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_3:

  return v3;
}

uint64_t sub_1D78915CC()
{
  v1 = [v0 rawValues];
  sub_1D778CDF0();
  v2 = sub_1D78B5BC4();

  if (!*(v2 + 16))
  {
    goto LABEL_8;
  }

  v3 = sub_1D777BBB4(0x7475626972747461, 0xEA00000000007365);
  if ((v4 & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = *(*(v2 + 56) + 8 * v3);
  swift_unknownObjectRetain();

  v9[0] = v5;
  sub_1D777CABC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (!*(v10 + 16) || (v6 = sub_1D777BBB4(0x73726566666FLL, 0xE600000000000000), (v7 & 1) == 0))
  {
LABEL_8:

    return MEMORY[0x1E69E7CC0];
  }

  sub_1D777BE08(*(v10 + 56) + 32 * v6, v9);

  sub_1D7891C9C();
  if (swift_dynamicCast())
  {
    return v10;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D789172C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = sub_1D777BBB4(0xD000000000000015, 0x80000001D78E0970);
  if (v3 & 1) != 0 && (sub_1D777BE08(*(a1 + 56) + 32 * v2, v6), sub_1D777CABC(), (swift_dynamicCast()))
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t AMSMarketingItem.value(for:offerDictKey:key:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v13 = [v6 rawValues];
  sub_1D778CDF0();
  v14 = sub_1D78B5BC4();

  if (!*(v14 + 16))
  {
    goto LABEL_11;
  }

  v15 = sub_1D777BBB4(0x7475626972747461, 0xEA00000000007365);
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

  v17 = *(*(v14 + 56) + 8 * v15);
  swift_unknownObjectRetain();

  *&v47[0] = v17;
  sub_1D777CABC();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  if (!*(v46 + 16))
  {
    goto LABEL_11;
  }

  v19 = sub_1D777BBB4(0x73726566666FLL, 0xE600000000000000);
  if ((v20 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_1D777BE08(*(v46 + 56) + 32 * v19, v47);

  sub_1D7891C4C(0, &qword_1EE08FF98, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E62F8]);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_12:
    *a6 = 0u;
    a6[1] = 0u;
    return result;
  }

  v21 = [a1 buyParams];
  if (!v21 || (v22 = v21, v38 = AMSBuyParams.purchaseID.getter(), v24 = v23, v22, (v44 = v24) == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v26 = v46;
  v27 = MEMORY[0x1E69E7CA0];
  v45 = *(v46 + 16);
  if (!v45)
  {
LABEL_34:

    goto LABEL_11;
  }

  v28 = 0;
  v29 = v46 + 32;
  while (v28 < *(v26 + 16))
  {
    sub_1D777BE08(v29, v47);
    v25 = swift_dynamicCast();
    if ((v25 & 1) == 0)
    {
      goto LABEL_15;
    }

    if (!*(v46 + 16) || (v30 = sub_1D777BBB4(0x6D61726150797562, 0xE900000000000073), v27 = MEMORY[0x1E69E7CA0], (v31 & 1) == 0) || (sub_1D777BE08(*(v46 + 56) + 32 * v30, v47), (swift_dynamicCast() & 1) == 0))
    {

LABEL_14:
      v26 = v46;
      goto LABEL_15;
    }

    v42 = objc_allocWithZone(MEMORY[0x1E698C818]);
    v39 = sub_1D78B5C44();

    v32 = [v42 initWithString_];

    v40 = AMSBuyParams.purchaseID.getter();
    v43 = v33;

    if (!v43)
    {
      goto LABEL_32;
    }

    if (v40 == v38 && v43 == v44)
    {
    }

    else
    {
      v41 = sub_1D78B6724();

      if ((v41 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    if (!*(v46 + 16) || (v34 = sub_1D777BBB4(a2, a3), (v35 & 1) == 0))
    {
LABEL_32:

      v27 = MEMORY[0x1E69E7CA0];
      goto LABEL_14;
    }

    sub_1D777BE08(*(v46 + 56) + 32 * v34, v47);

    v27 = MEMORY[0x1E69E7CA0];
    v25 = swift_dynamicCast();
    if ((v25 & 1) == 0)
    {
      goto LABEL_14;
    }

    v27 = v46;
    v26 = v46;
    if (*(v46 + 16))
    {
      v25 = sub_1D777BBB4(a4, a5);
      if (v36)
      {
        goto LABEL_36;
      }
    }

    v27 = MEMORY[0x1E69E7CA0];
LABEL_15:
    ++v28;
    v29 += 32;
    if (v45 == v28)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  v37 = v25;

  sub_1D777BE08(*(v27 + 56) + 32 * v37, v47);

  return sub_1D778D0A0(v47, a6);
}

void sub_1D7891C4C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D7891C9C()
{
  if (!qword_1EE090028)
  {
    sub_1D777CABC();
    v0 = sub_1D78B5F34();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE090028);
    }
  }
}

uint64_t InvalidEmailAddressAlert.message.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t InvalidEmailAddressAlert.preferredActionButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D7D90];
  v3 = sub_1D78B4974();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1D7891E6C()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t sub_1D7891F38()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t sub_1D7892030()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t AppleIDAuthenticationErrorAlert.title.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t AppleIDAuthenticationErrorAlert.message.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  v2 = sub_1D78B5C94();

  return v2;
}

uint64_t AppleIDAuthenticationErrorAlert.preferredActionButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D7D90];
  v3 = sub_1D78B4974();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t AppleIDAuthenticationErrorAlert.acceptButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t AppleIDAuthenticationErrorAlert.rejectButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}