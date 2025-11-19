_BYTE *storeEnumTagSinglePayload for SbertTokenizerLocale(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DD730B34@<X0>(uint64_t a1@<X8>)
{
  result = sub_1DD72F1A8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
  return result;
}

uint64_t sub_1DD730B68@<X0>(uint64_t a1@<X8>)
{
  result = sub_1DD72F1BC();
  *a1 = result;
  *(a1 + 4) = BYTE4(result);
  *(a1 + 5) = BYTE5(result) & 1;
  return result;
}

uint64_t sub_1DD730BA0@<X0>(uint64_t a1@<X8>)
{
  result = sub_1DD71095C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1DD730BD0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD71095C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DD730BF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD72F1D8();
  *a1 = result;
  return result;
}

uint64_t sub_1DD730C20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD6F09E0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_OWORD *sub_1DD730C48(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1DD730C58(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1DD730C6C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void *sub_1DD730C80(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __src)
{

  return memcpy(v10, &__src, 0x58uLL);
}

__n128 sub_1DD730C9C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>)
{
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = a3;
  *(a1 + 16) = a4;
  v6 = *(a2 + 32);
  return *(a2 + 48);
}

uint64_t sub_1DD730CB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1DD730620(v4, v4 + 176, a3, a4);
}

uint64_t sub_1DD730CC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{

  return sub_1DD730620(&a17, &a9, a3, a4);
}

void *sub_1DD730D04(void *a1)
{

  return memcpy(a1, (v1 + 680), 0x58uLL);
}

void *sub_1DD730D1C(void *a1)
{

  return memcpy(a1, (v1 + 1368), 0x58uLL);
}

void *sub_1DD730D34(void *a1)
{

  return memcpy(a1, (v1 + 1288), 0x50uLL);
}

uint64_t sub_1DD730D4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{

  return sub_1DD730620(&a19, &a9, a3, a4);
}

void *sub_1DD730D64(void *a1)
{

  return memcpy(a1, (v1 + 528), 0x58uLL);
}

void *sub_1DD730D7C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __src)
{

  return memcpy(v10, &__src, 0x48uLL);
}

void *sub_1DD730D98(void *a1)
{

  return memcpy(a1, (v1 + 1064), 0x48uLL);
}

void *sub_1DD730DB0(void *a1)
{

  return memcpy(a1, (v1 + 976), 0x58uLL);
}

void *sub_1DD730DC8(void *a1)
{

  return memcpy(a1, (v1 + 1680), 0x58uLL);
}

void *sub_1DD730DE0(void *a1)
{

  return memcpy(a1, (v1 + 296), 0x58uLL);
}

void *sub_1DD730DF8(void *a1)
{

  return memcpy(a1, (v1 + 1600), 0x50uLL);
}

uint64_t sub_1DD730E10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1DD730620(v4, v4 + 160, a3, a4);
}

void *sub_1DD730E28(void *a1)
{

  return memcpy(a1, v1, 0x50uLL);
}

void *sub_1DD730E40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memcpy(a1, &a9, 0x50uLL);
}

__n128 sub_1DD730E58()
{
  v2 = *(v0 + 16);
  *v1 = *v0;
  *(v1 + 16) = v2;
  result = *(v0 + 32);
  v4 = *(v0 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v4;
  return result;
}

void sub_1DD730E6C(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v4[10] = a1;
  v4[11] = a2;
  v4[8] = a4;
  v4[9] = a3;
}

__n128 sub_1DD730E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __n128 a11, __int128 a12)
{
  *v12 = a9;
  v12[1] = a10;
  result = a11;
  v12[2] = a11;
  v12[3] = a12;
  return result;
}

uint64_t sub_1DD730EA4()
{

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1DD730EBC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{

  return sub_1DD730620(&a18, &a9, a3, a4);
}

uint64_t Preference.projectedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_1DD6DF290();
  v9 = v5;
  (*(v6 + 8))(v2);
  v7 = *(v9 + 32);

  return v7(v2, a1, a2);
}

uint64_t static NSUserDefaults.makeIntelligenceFlowUserDefaults()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  result = sub_1DD7322D8(0xD00000000000001ALL, 0x80000001DD8B4D50);
  if (!result)
  {
    result = sub_1DD8757A0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD7310F4()
{
  v0 = sub_1DD874CD0();
  sub_1DD732C90(v0, qword_1EE015240);
  sub_1DD6E1224(v0, qword_1EE015240);
  return sub_1DD874CC0();
}

uint64_t Preference.overridenTestPreference.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = *(a1 + 24);
  v6 = sub_1DD8755C0();
  sub_1DD6E0540(v6);
  v9 = *(v8 + 16);

  return v9(a2, v2 + v4, v7);
}

uint64_t Preference.overridenTestPreference.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  v5 = *(a2 + 24);
  v6 = sub_1DD8755C0();
  sub_1DD6E0540(v6);
  v8 = *(v7 + 40);

  return v8(v2 + v4, a1);
}

uint64_t (*Preference.overridenTestPreference.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 52);
  return result;
}

uint64_t sub_1DD73124C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 + a4;
  v6 = *(a3 + a4 - 24);
  v7 = *(a3 + a4 - 16);
  v8 = *(v5 - 8);
  v9 = type metadata accessor for Preference();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  (*(v14 + 16))(&v16 - v12, a1, v9, v11);
  return Preference.projectedValue.setter(v13, v9);
}

void (*Preference.projectedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = sub_1DD7281CC(0x28uLL);
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  sub_1DD6DF290();
  v7 = v6;
  *(v8 + 16) = v6;
  v10 = *(v9 + 64);
  v5[3] = sub_1DD7281CC(v10);
  v5[4] = sub_1DD7281CC(v10);
  (*(v7 + 16))();
  return sub_1DD731408;
}

void sub_1DD731408(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  if (a2)
  {
    v5 = v2[2];
    v6 = *v2;
    v7 = sub_1DD6E0810(v5);
    v8(v7);
    Preference.projectedValue.setter(v3, v6);
    (*(v5 + 8))(v4, v6);
  }

  else
  {
    v9 = v2[1];
    Preference.projectedValue.setter((*a1)[4], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t Preference.init(userDefaultsKey:defaultFromResourceFile:fallbackDefault:injectedResourceModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  sub_1DD6DF290();
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1DD6DE4A8();
  v23 = v22 - v21;
  v24 = swift_allocObject();
  v24[2] = a7;
  v24[3] = a8;
  v24[4] = a10;
  v24[5] = a3;
  (*(v17 + 16))(v23, a4, a8);
  Preference.init(userDefaultsKey:defaultFromResourceFile:fallbackDefault:injectedResourceModel:)(a1, a2, sub_1DD73233C, v24, v23, a5, a6, a7, a9, a8, a10);
  return (*(v17 + 8))(a4, a8);
}

uint64_t sub_1DD73160C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10[7] = a2;
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = a1;
  swift_getAssociatedTypeWitness();
  sub_1DD8755C0();
  sub_1DD875BC0();
  sub_1DD8755C0();
  return sub_1DD6F1DD8(sub_1DD732C5C, v10, MEMORY[0x1E69E73E0], a4, v8, a6);
}

uint64_t Preference.init(userDefaultsKey:defaultFromResourceFile:fallbackDefault:injectedResourceModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v18 = type metadata accessor for Preference();
  sub_1DD6E5E68(&a9[v18[13]], 1, 1, a10);
  v19 = &a9[v18[14]];
  *v19 = a1;
  *(v19 + 1) = a2;
  *&a9[v18[15]] = (*(a11 + 24))(a8, a11);
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  result = (*(*(a10 - 8) + 32))(&a9[v18[12]], a5, a10);
  *a9 = a6;
  *(a9 + 1) = a7;
  return result;
}

uint64_t sub_1DD7317E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1DD8755C0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v19 - v14;
  v16 = *v2;
  v17 = *(v2 + 8);
  v16(v13);
  if (sub_1DD6E5ED0(v15, 1, AssociatedTypeWitness) == 1)
  {
    static PreferencesDomain.otaResource.getter(v12);
    if (sub_1DD6E5ED0(v12, 1, AssociatedTypeWitness) == 1)
    {
      (*(v4 + 32))(v5, v4);
      if (sub_1DD6E5ED0(v12, 1, AssociatedTypeWitness) != 1)
      {
        (*(v8 + 8))(v12, v7);
      }
    }

    else
    {
      (*(*(AssociatedTypeWitness - 8) + 32))(a2, v12, AssociatedTypeWitness);
      sub_1DD6E5E68(a2, 0, 1, AssociatedTypeWitness);
    }

    result = sub_1DD6E5ED0(v15, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      return (*(v8 + 8))(v15, v7);
    }
  }

  else
  {
    (*(*(AssociatedTypeWitness - 8) + 32))(a2, v15, AssociatedTypeWitness);
    return sub_1DD6E5E68(a2, 0, 1, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_1DD731A60()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return v1();
}

uint64_t sub_1DD731A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = a2 + a3;
  v6 = *(a2 + a3 - 24);
  v7 = *(v5 - 16);
  v8 = *(v5 - 8);
  v9 = type metadata accessor for Preference();
  return a4(v9);
}

uint64_t sub_1DD731AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 24);
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  v8 = sub_1DD8755C0();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  (*(v13 + 16))(&v16 - v11, a1, v10);
  v14 = type metadata accessor for Preference();
  return Preference.userDefaultsValue.setter(v12, v14);
}

uint64_t Preference.userDefaultsValue.setter(uint64_t a1, uint64_t a2)
{
  v47 = a1;
  v46 = sub_1DD874ED0();
  sub_1DD6DF290();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DE4A8();
  v11 = v10 - v9;
  v12 = *(a2 + 24);
  sub_1DD8755C0();
  sub_1DD6DF290();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v45 - v18;
  sub_1DD6DF290();
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1DD6DE4A8();
  v27 = v26 - v25;
  v28 = *(v2 + *(a2 + 60));
  if (v28 && (v29 = (v2 + *(a2 + 56)), v29[1]))
  {
    v30 = v24;
    v45[1] = *v29;
    v46 = v23;
    v31 = v47;
    (*(v14 + 16))(v19, v47, v23);
    if (sub_1DD6E5ED0(v19, 1, v12) == 1)
    {
      v32 = *(v14 + 8);
      v33 = v28;
      v34 = v46;
      v32(v19, v46);
      Preference.removeUserDefault()();

      return (v32)(v31, v34);
    }

    else
    {
      v40 = v30;
      (*(v30 + 32))(v27, v19, v12);
      v41 = v28;
      v42 = v31;
      v43 = sub_1DD875A20();
      v44 = sub_1DD875110();
      [v41 setObject:v43 forKey:v44];
      swift_unknownObjectRelease();

      (*(v14 + 8))(v42, v46);
      return (*(v40 + 8))(v27, v12);
    }
  }

  else
  {
    v36 = v23;
    sub_1DD874C00();
    v37 = sub_1DD874EC0();
    v38 = sub_1DD8754E0();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1DD6DC000, v37, v38, "Failed to set user default", v39, 2u);
      MEMORY[0x1E12B5DE0](v39, -1, -1);
    }

    (*(v14 + 8))(v47, v36);
    return (*(v5 + 8))(v11, v46);
  }
}

Swift::Void __swiftcall Preference.removeUserDefault()()
{
  v2 = v0;
  v3 = sub_1DD874ED0();
  sub_1DD6DF290();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DE4A8();
  v11 = v10 - v9;
  v12 = *(v1 + *(v2 + 60));
  if (v12 && (v13 = (v1 + *(v2 + 56)), v13[1]))
  {
    v14 = *v13;
    v15 = v12;
    v19 = sub_1DD875110();
    [v15 removeObjectForKey_];
  }

  else
  {
    sub_1DD874C00();
    v16 = sub_1DD874EC0();
    v17 = sub_1DD8754E0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1DD6DC000, v16, v17, "Failed to remove user default", v18, 2u);
      MEMORY[0x1E12B5DE0](v18, -1, -1);
    }

    (*(v5 + 8))(v11, v3);
  }
}

void (*Preference.userDefaultsValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = sub_1DD7281CC(0x30uLL);
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v6 = *(a2 + 24);
  v7 = sub_1DD8755C0();
  v5[2] = v7;
  v8 = *(v7 - 8);
  v5[3] = v8;
  v9 = *(v8 + 64);
  v5[4] = sub_1DD7281CC(v9);
  v10 = sub_1DD7281CC(v9);
  v5[5] = v10;
  Preference.userDefaultsValue.getter(a2, v10);
  return sub_1DD7321F0;
}

void sub_1DD7321F0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    v9 = sub_1DD6E0810(v6);
    v10(v9);
    Preference.userDefaultsValue.setter(v3, v8);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v11 = v2[1];
    Preference.userDefaultsValue.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1DD7322A8()
{
  sub_1DD732B04();
  result = static NSUserDefaults.makeIntelligenceFlowUserDefaults()();
  qword_1EE015BE0 = result;
  return result;
}

id sub_1DD7322D8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1DD875110();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

uint64_t sub_1DD732390(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_1DD8755C0();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DD732424()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *initializeBufferWithCopyOfBuffer for MachIdentityToken(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithCopy for MachIdentityToken(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithTake for MachIdentityToken(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t sub_1DD732514(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD732554(uint64_t result, int a2, int a3)
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

unint64_t sub_1DD7325B0(uint64_t a1)
{
  v2 = sub_1DD732A14();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 24);
    v2 = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v2 = sub_1DD8755C0();
      if (v6 <= 0x3F)
      {
        sub_1DD732A5C();
        v2 = v7;
        if (v8 <= 0x3F)
        {
          sub_1DD732AAC();
          v2 = v9;
          if (v10 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

uint64_t sub_1DD73269C(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = 7;
  if (!v6)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_28:
    if ((v6 & 0x80000000) != 0)
    {
      return sub_1DD6E5ED0((((result + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8, v6, v4);
    }

    else
    {
      v18 = *result;
      if (*result >= 0xFFFFFFFFuLL)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }
  }

  else
  {
    v10 = ((((v9 + *(*(v4 - 8) + 64) + ((*(*(v4 - 8) + 64) + v8 + ((v8 + 32) & ~v8)) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
    v11 = a2 - v7;
    v12 = v10 & 0xFFFFFFF8;
    if ((v10 & 0xFFFFFFF8) != 0)
    {
      v13 = 2;
    }

    else
    {
      v13 = v11 + 1;
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
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_28;
        }

        goto LABEL_24;
      case 2:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_28;
        }

        goto LABEL_24;
      case 3:
        __break(1u);
        return result;
      case 4:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_28;
        }

LABEL_24:
        v17 = v16 - 1;
        if (v12)
        {
          v17 = 0;
          LODWORD(v12) = *result;
        }

        result = v7 + (v12 | v17) + 1;
        break;
      default:
        goto LABEL_28;
    }
  }

  return result;
}

void sub_1DD73280C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = 7;
  if (!v8)
  {
    v11 = 8;
  }

  v12 = ((((v11 + *(*(v6 - 8) + 64) + ((*(*(v6 - 8) + 64) + v10 + ((v10 + 32) & ~v10)) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v16 = 0;
  }

  else
  {
    v13 = a3 - v9;
    if (((((v11 + *(*(v6 - 8) + 64) + ((*(*(v6 - 8) + 64) + v10 + ((v10 + 32) & ~v10)) & ~v10)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = v13 + 1;
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
  }

  if (a2 <= v9)
  {
    switch(v16)
    {
      case 1:
        a1[v12] = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        break;
      case 2:
        *&a1[v12] = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        break;
      case 3:
LABEL_45:
        __break(1u);
        break;
      case 4:
        *&a1[v12] = 0;
        goto LABEL_33;
      default:
LABEL_33:
        if (a2)
        {
LABEL_34:
          if ((v8 & 0x80000000) != 0)
          {
            v20 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10;

            sub_1DD6E5E68(v20, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v19 = a2 & 0x7FFFFFFF;
              *(a1 + 1) = 0;
            }

            else
            {
              v19 = (a2 - 1);
            }

            *a1 = v19;
          }
        }

        break;
    }
  }

  else
  {
    if (((((v11 + *(*(v6 - 8) + 64) + ((*(*(v6 - 8) + 64) + v10 + ((v10 + 32) & ~v10)) & ~v10)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v17 = a2 - v9;
    }

    else
    {
      v17 = 1;
    }

    if (((((v11 + *(*(v6 - 8) + 64) + ((*(*(v6 - 8) + 64) + v10 + ((v10 + 32) & ~v10)) & ~v10)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v18 = ~v9 + a2;
      bzero(a1, v12);
      *a1 = v18;
    }

    switch(v16)
    {
      case 1:
        a1[v12] = v17;
        break;
      case 2:
        *&a1[v12] = v17;
        break;
      case 3:
        goto LABEL_45;
      case 4:
        *&a1[v12] = v17;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1DD732A14()
{
  result = qword_1EE013980;
  if (!qword_1EE013980)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EE013980);
  }

  return result;
}

void sub_1DD732A5C()
{
  if (!qword_1EE018D28)
  {
    v0 = sub_1DD8755C0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE018D28);
    }
  }
}

void sub_1DD732AAC()
{
  if (!qword_1EE013998)
  {
    sub_1DD732B04();
    v0 = sub_1DD8755C0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE013998);
    }
  }
}

unint64_t sub_1DD732B04()
{
  result = qword_1EE0139A0;
  if (!qword_1EE0139A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0139A0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IntelligenceFlowPreferencesDomain(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DD732C04()
{
  result = qword_1EE013A98;
  if (!qword_1EE013A98)
  {
    sub_1DD874C50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE013A98);
  }

  return result;
}

uint64_t sub_1DD732C5C(uint64_t *a1)
{
  v2 = *(v1 + 40);
  v3 = *a1;
  return swift_getAtKeyPath();
}

uint64_t *sub_1DD732C90(uint64_t a1, uint64_t *a2)
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

uint64_t sub_1DD732CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *(a2 + a3 - 8);
  v7 = type metadata accessor for WeakValue();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v11, a1, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = (*(v8 + 8))(v11, v7);
  *a4 = Strong;
  return result;
}

uint64_t WeakValue.value.setter()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*WeakValue.value.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1DD732E40;
}

uint64_t sub_1DD732E40(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1DD732E80()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for MessagePayload.ActionWillExecute.PromptSelection.SelectedInDisambiguation(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MessagePayload.ActionWillExecute.PromptSelection.SelectedInDisambiguation(uint64_t result, int a2, int a3)
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

void sub_1DD732F1C(uint64_t a1)
{
  if (*(v1 + 16))
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1DD6E0EC8();

    sub_1DD874CF0();
    if (v2)
    {
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DD732FEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;

  sub_1DD7330A4(a4, a5, a6, a7, sub_1DD6E6440, v14, a1);
}

void sub_1DD7330A4(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = a4;
  if (a2 >> 60 == 15)
  {
    v11 = 0;
    if (!a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v11 = sub_1DD874750();
  if (v10)
  {
LABEL_5:
    v10 = sub_1DD875110();
  }

LABEL_6:
  v13[4] = a5;
  v13[5] = a6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1DD6E1B38;
  v13[3] = &unk_1F58D0150;
  v12 = _Block_copy(v13);

  [a7 refreshWithContextTypes:v11 interactionId:v10 with:v12];
  _Block_release(v12);
}

uint64_t sub_1DD7331B4(uint64_t result)
{
  if (*(v1 + 16))
  {
    MEMORY[0x1EEE9AC00](result);

    sub_1DD874CF0();

    if (!v2)
    {
      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD733268(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;

  sub_1DD733318(a4, a5, a6, sub_1DD701008, v12, a1);
}

void sub_1DD733318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = sub_1DD874750();
  v12[4] = a4;
  v12[5] = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1DD700F5C;
  v12[3] = &unk_1F58D0100;
  v11 = _Block_copy(v12);

  [a6 retrieveContextValuesWithContextTypes:v10 timeout:a3 with:v11];
  _Block_release(v11);
}

uint64_t sub_1DD733494()
{
  sub_1DD710A9C(&qword_1ECD0E8F8, &qword_1DD87ABC8);
  v0 = sub_1DD874B20();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD87AAA0;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E69A9058], v0);
  v6(v5 + v2, *MEMORY[0x1E69A8FD8], v0);
  v6(v5 + 2 * v2, *MEMORY[0x1E69A8FF0], v0);
  result = (v6)(v5 + 3 * v2, *MEMORY[0x1E69A9000], v0);
  qword_1EE0267D0 = v4;
  return result;
}

uint64_t QueryDecoration.__allocating_init()()
{
  v0 = swift_allocObject();
  QueryDecoration.init()();
  return v0;
}

uint64_t sub_1DD733620()
{
  sub_1DD6DDF4C();
  sub_1DD6E6A34();
  sub_1DD6DE4FC();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v2;
  sub_1DD6E04EC();
  *v8 = v7;
  *(v9 + 72) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DD733740, 0, 0);
  }

  else
  {
    v10 = *(v7 + 8);

    return v10(v0);
  }
}

uint64_t QueryDecoration.queryDecorationCollection(qdInput:crossAPIAssociationKey:timeout:)(uint64_t a1, void *a2)
{
  v3[4] = a1;
  v3[5] = v2;
  v4 = a2[1];
  v3[6] = *a2;
  v3[7] = v4;
  return sub_1DD6E13F8();
}

uint64_t sub_1DD733774()
{
  sub_1DD6DDF4C();
  sub_1DD6E5278();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v2 = sub_1DD6ED5BC(v1);

  return sub_1DD85F1DC(v2, v3);
}

uint64_t sub_1DD7337FC()
{
  sub_1DD6DDF4C();
  sub_1DD6E6A34();
  sub_1DD6DE4FC();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v2;
  sub_1DD6E04EC();
  *v8 = v7;
  *(v9 + 72) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DD734CAC, 0, 0);
  }

  else
  {
    v10 = *(v7 + 8);

    return v10(v0);
  }
}

uint64_t QueryDecoration.cacheRemoteDeviceState(remoteState:crossAPIAssociationKey:timeout:)(uint64_t a1, void *a2)
{
  v3[4] = a1;
  v3[5] = v2;
  v4 = a2[1];
  v3[6] = *a2;
  v3[7] = v4;
  return sub_1DD6E13F8();
}

uint64_t sub_1DD733938()
{
  sub_1DD6DDF4C();
  sub_1DD6E5278();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v2 = sub_1DD6ED5BC(v1);

  return sub_1DD85F584(v2, v3);
}

uint64_t sub_1DD7339C0()
{
  sub_1DD6DDF4C();
  v2 = *v1;
  sub_1DD6DE4FC();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  sub_1DD6E04EC();
  *v8 = v7;
  *(v9 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DD733740, 0, 0);
  }

  else
  {
    v10 = *(v7 + 8);

    return v10();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> QueryDecoration.collectRequestCandidates()()
{
  v0 = sub_1DD874E40();
  v1 = sub_1DD6DDEAC(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v43 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - v8;
  v10 = sub_1DD874E60();
  v11 = sub_1DD6DDEAC(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v40 - v19;
  sub_1DD874B50();
  sub_1DD874B50();
  sub_1DD874E50();
  sub_1DD874E20();
  v42 = *(v13 + 8);
  v42(v17, v10);
  v21 = sub_1DD874E50();
  v22 = sub_1DD875530();
  if (sub_1DD8755B0())
  {
    v23 = swift_slowAlloc();
    v41 = v0;
    v24 = v23;
    *v23 = 0;
    v25 = sub_1DD874E30();
    _os_signpost_emit_with_name_impl(&dword_1DD6DC000, v21, v22, v25, "QueryDecoration.collectRequestCandidates", "", v24, 2u);
    v26 = v24;
    v0 = v41;
    MEMORY[0x1E12B5DE0](v26, -1, -1);
  }

  (*(v3 + 16))(v43, v9, v0);
  v27 = sub_1DD874EA0();
  sub_1DD6DE2C8(v27);
  swift_allocObject();
  v28 = sub_1DD874E90();
  (*(v3 + 8))(v9, v0);
  v42(v20, v10);
  v29 = v45;
  v30 = *(v45 + 32);
  if (qword_1EE015668 != -1)
  {
    sub_1DD6E0A48();
    swift_once();
  }

  v46 = qword_1EE0267D0;

  sub_1DD710A9C(&qword_1ECD0E8E8, &qword_1DD87AAC8);
  sub_1DD734A8C();
  v31 = v44;
  sub_1DD8745F0();

  if (!v31)
  {
    v32 = *(v29 + 24);
    v33 = sub_1DD6DDEDC();
    sub_1DD710E74(v33, v34);
    v35 = sub_1DD6DDEDC();
    sub_1DD732F1C(v35);
    v36 = sub_1DD6DDEDC();
    sub_1DD6E6658(v36, v37);
    v38 = sub_1DD6DDEDC();
    sub_1DD6E6658(v38, v39);
  }

  sub_1DD734338(v28, "QueryDecoration.collectRequestCandidates");
}

uint64_t QueryDecoration.retrieveRequestCandidates(timeout:)()
{
  sub_1DD6DDF4C();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 120) = v3;
  *(v1 + 32) = v4;
  v5 = sub_1DD874E40();
  *(v1 + 56) = v5;
  v6 = *(v5 - 8);
  *(v1 + 64) = v6;
  v7 = *(v6 + 64) + 15;
  *(v1 + 72) = swift_task_alloc();
  *(v1 + 80) = swift_task_alloc();
  v8 = sub_1DD874E60();
  *(v1 + 88) = v8;
  v9 = *(v8 - 8);
  *(v1 + 96) = v9;
  v10 = *(v9 + 64) + 15;
  *(v1 + 104) = swift_task_alloc();
  *(v1 + 112) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD733F98, 0, 0);
}

uint64_t sub_1DD733F98()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v0 + 80);
  sub_1DD874B50();
  sub_1DD874B50();
  sub_1DD874E50();
  sub_1DD874E20();
  v42 = *(v4 + 8);
  v42(v2, v3);
  v6 = sub_1DD874E50();
  v7 = sub_1DD875530();
  if (sub_1DD8755B0())
  {
    v8 = *(v0 + 80);
    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = sub_1DD874E30();
    _os_signpost_emit_with_name_impl(&dword_1DD6DC000, v6, v7, v10, "QueryDecoration.retrieveRequestCandidates", "", v9, 2u);
    MEMORY[0x1E12B5DE0](v9, -1, -1);
  }

  v11 = *(v0 + 112);
  v13 = *(v0 + 80);
  v12 = *(v0 + 88);
  v15 = *(v0 + 64);
  v14 = *(v0 + 72);
  v17 = *(v0 + 48);
  v16 = *(v0 + 56);

  (*(v15 + 16))(v14, v13, v16);
  v18 = sub_1DD874EA0();
  sub_1DD6DE2C8(v18);
  swift_allocObject();
  v19 = sub_1DD874E90();
  (*(v15 + 8))(v13, v16);
  v42(v11, v12);
  v20 = *(v17 + 32);
  if (qword_1EE015668 != -1)
  {
    sub_1DD6E0A48();
    swift_once();
  }

  *(v0 + 16) = qword_1EE0267D0;

  sub_1DD710A9C(&qword_1ECD0E8E8, &qword_1DD87AAC8);
  sub_1DD734A8C();
  sub_1DD8745F0();
  v21 = *(v0 + 48);
  v22 = *(v0 + 120);

  v23 = *(v21 + 24);
  if (v22)
  {
    v24 = 0;
  }

  else
  {
    v25 = *(v0 + 40);
    v24 = sub_1DD8753F0();
  }

  v26 = sub_1DD6DDEDC();
  v27 = sub_1DD7331B4(v26);
  v29 = v28;
  v30 = *(v0 + 48);

  v31 = *(v30 + 40);
  sub_1DD710A9C(&qword_1ECD0E8F0, &qword_1DD87AAD8);
  sub_1DD734B40();
  sub_1DD8745C0();
  v34 = *(v0 + 104);
  v33 = *(v0 + 112);
  v36 = *(v0 + 72);
  v35 = *(v0 + 80);
  v37 = *(v0 + 24);
  v38 = *(v0 + 32);
  sub_1DD874BB0();
  sub_1DD6E6658(v27, v29);
  v39 = sub_1DD6DDEDC();
  sub_1DD6E6658(v39, v40);
  sub_1DD734338(v19, "QueryDecoration.retrieveRequestCandidates");

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_1DD734338(uint64_t a1, const char *a2)
{
  v2 = sub_1DD874E70();
  v3 = sub_1DD6DDEAC(v2);
  v33 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DE4A8();
  v9 = v8 - v7;
  v35 = sub_1DD874E40();
  v10 = sub_1DD6DDEAC(v35);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DE4A8();
  v17 = v16 - v15;
  v18 = sub_1DD874E60();
  v19 = sub_1DD6DDEAC(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1DD6DE4A8();
  v26 = v25 - v24;
  sub_1DD874B50();
  v27 = sub_1DD874E50();
  sub_1DD874E80();
  v32 = sub_1DD875520();
  if (sub_1DD8755B0())
  {

    sub_1DD874EB0();

    if ((*(v33 + 88))(v9, v2) == *MEMORY[0x1E69E93E8])
    {
      v28 = "[Error] Interval already ended";
    }

    else
    {
      (*(v33 + 8))(v9, v2);
      v28 = "";
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = sub_1DD874E30();
    _os_signpost_emit_with_name_impl(&dword_1DD6DC000, v27, v32, v30, a2, v28, v29, 2u);
    MEMORY[0x1E12B5DE0](v29, -1, -1);
  }

  (*(v12 + 8))(v17, v35);
  return (*(v21 + 8))(v26, v18);
}

uint64_t sub_1DD7345E8(uint64_t a1, void *a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DD734690;

  return QueryDecoration.queryDecorationCollection(qdInput:crossAPIAssociationKey:)(a1, a2);
}

uint64_t sub_1DD734690()
{
  sub_1DD6DDF4C();
  sub_1DD6E6A34();
  v4 = *(v3 + 16);
  v5 = *v2;
  sub_1DD6E04EC();
  *v6 = v5;

  v8 = *(v5 + 8);
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t sub_1DD73477C(uint64_t a1, void *a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DD734CB4;

  return QueryDecoration.queryDecorationCollection(qdInput:crossAPIAssociationKey:timeout:)(a1, a2);
}

uint64_t sub_1DD734824(uint64_t a1, void *a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DD7348CC;

  return QueryDecoration.cacheRemoteDeviceState(remoteState:crossAPIAssociationKey:timeout:)(a1, a2);
}

uint64_t sub_1DD7348CC()
{
  sub_1DD6DDF4C();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_1DD6E04EC();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_1DD7349D8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DD734CA8;

  return QueryDecoration.retrieveRequestCandidates(timeout:)();
}

unint64_t sub_1DD734A8C()
{
  result = qword_1EE0139C8;
  if (!qword_1EE0139C8)
  {
    sub_1DD717E88(&qword_1ECD0E8E8, &qword_1DD87AAC8);
    sub_1DD6E5180(&qword_1EE013AC8, MEMORY[0x1E69A9090]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0139C8);
  }

  return result;
}

unint64_t sub_1DD734B40()
{
  result = qword_1EE0139C0;
  if (!qword_1EE0139C0)
  {
    sub_1DD717E88(&qword_1ECD0E8F0, &qword_1DD87AAD8);
    sub_1DD6E5180(&qword_1EE013AC0, MEMORY[0x1E69A90D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0139C0);
  }

  return result;
}

uint64_t dispatch thunk of QueryDecorationProtocol.queryDecorationCollection(qdInput:crossAPIAssociationKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 8);
  sub_1DD6E5228();
  v16 = (v9 + *v9);
  v11 = *(v10 + 4);
  v12 = swift_task_alloc();
  v13 = sub_1DD6E04FC(v12);
  *v13 = v14;
  v13[1] = sub_1DD734DDC;

  return v16(a1, a2, a3, a4);
}

uint64_t sub_1DD734DDC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of QueryDecorationProtocol.queryDecorationCollection(qdInput:crossAPIAssociationKey:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(sub_1DD6DF33C(a1, a2, a3, a4, a5, a6) + 16);
  sub_1DD6E5228();
  v16 = v7 + *v7;
  v9 = *(v8 + 4);
  v10 = swift_task_alloc();
  v11 = sub_1DD6E04FC(v10);
  *v11 = v12;
  v13 = sub_1DD6E1408(v11);

  return v14(v13);
}

uint64_t dispatch thunk of QueryDecorationProtocol.cacheRemoteDeviceState(remoteState:crossAPIAssociationKey:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(sub_1DD6DF33C(a1, a2, a3, a4, a5, a6) + 24);
  sub_1DD6E5228();
  v16 = v7 + *v7;
  v9 = *(v8 + 4);
  v10 = swift_task_alloc();
  v11 = sub_1DD6E04FC(v10);
  *v11 = v12;
  v13 = sub_1DD6E1408(v11);

  return v14(v13);
}

uint64_t sub_1DD7350E0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t dispatch thunk of QueryDecorationProtocol.retrieveRequestCandidates(timeout:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a5 + 40);
  v16 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v13 = sub_1DD6E04FC(v12);
  *v13 = v14;
  v13[1] = sub_1DD735340;

  return (v16)(a1, a2, a3 & 1, a4, a5);
}

uint64_t sub_1DD73538C(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6574656D61726170;
  }

  else
  {
    v3 = 0x74616469646E6163;
  }

  if (v2)
  {
    v4 = 0xE900000000000065;
  }

  else
  {
    v4 = 0xE900000000000072;
  }

  if (a2)
  {
    v5 = 0x6574656D61726170;
  }

  else
  {
    v5 = 0x74616469646E6163;
  }

  if (a2)
  {
    v6 = 0xE900000000000072;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DD6E6A44();
  }

  return v8 & 1;
}

uint64_t sub_1DD735424(unsigned __int8 a1, char a2)
{
  v2 = 0x647261646E617473;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x647261646E617473;
  switch(v4)
  {
    case 1:
      v3 = 0xE500000000000000;
      v5 = 0x796D6D7564;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v5 = 0x676E6974736574;
      break;
    case 3:
      v3 = 0xE300000000000000;
      v5 = 7169123;
      break;
    case 4:
      v5 = 0x506369746E656761;
      v3 = 0xEE0072656E6E616CLL;
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE500000000000000;
      v2 = 0x796D6D7564;
      break;
    case 2:
      v6 = 0xE700000000000000;
      v2 = 0x676E6974736574;
      break;
    case 3:
      v6 = 0xE300000000000000;
      v2 = 7169123;
      break;
    case 4:
      v2 = 0x506369746E656761;
      v6 = 0xEE0072656E6E616CLL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DD6E6A44();
  }

  return v8 & 1;
}

uint64_t sub_1DD735594(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6E696C69746C756DLL;
  }

  else
  {
    v3 = 0x6873696C676E65;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xEC0000006C617567;
  }

  if (a2)
  {
    v5 = 0x6E696C69746C756DLL;
  }

  else
  {
    v5 = 0x6873696C676E65;
  }

  if (a2)
  {
    v6 = 0xEC0000006C617567;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DD6E6A44();
  }

  return v8 & 1;
}

uint64_t sub_1DD735630(unsigned __int8 a1, char a2)
{
  v2 = 0x6574656D61726170;
  v3 = 0xEA00000000007372;
  v4 = a1;
  v5 = 0x6574656D61726170;
  switch(v4)
  {
    case 1:
      v3 = 0xE600000000000000;
      v5 = 0x676F6C616964;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x6C6175736976;
      break;
    case 3:
      v5 = 0x6574616C706D6574;
      v3 = 0xEA00000000006449;
      break;
    case 4:
      v5 = 0xD000000000000010;
      v3 = 0x80000001DD8B3E50;
      break;
    case 5:
      v3 = 0x80000001DD8B3E70;
      v5 = 0xD000000000000015;
      break;
    case 6:
      v3 = 0x80000001DD8B3E90;
      v5 = 0xD000000000000016;
      break;
    default:
      break;
  }

  v6 = 0xEA00000000007372;
  switch(a2)
  {
    case 1:
      v6 = 0xE600000000000000;
      v2 = 0x676F6C616964;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x6C6175736976;
      break;
    case 3:
      v2 = 0x6574616C706D6574;
      v6 = 0xEA00000000006449;
      break;
    case 4:
      v2 = 0xD000000000000010;
      v6 = 0x80000001DD8B3E50;
      break;
    case 5:
      v6 = 0x80000001DD8B3E70;
      v2 = 0xD000000000000015;
      break;
    case 6:
      v6 = 0x80000001DD8B3E90;
      v2 = 0xD000000000000016;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DD6E6A44();
  }

  return v8 & 1;
}

uint64_t sub_1DD735818(unsigned __int8 a1, char a2)
{
  v2 = 0xEE006C6176656972;
  v3 = 0x7465725F6C6F6F74;
  v4 = a1;
  v5 = 0x7465725F6C6F6F74;
  v6 = 0xEE006C6176656972;
  switch(v4)
  {
    case 1:
      v6 = 0x80000001DD8B3CE0;
      v5 = 0xD00000000000001DLL;
      break;
    case 2:
      v6 = 0x80000001DD8B3D00;
      v5 = 0xD00000000000001BLL;
      break;
    case 3:
      v6 = 0x80000001DD8B3D20;
      v5 = 0xD00000000000001ALL;
      break;
    case 4:
      break;
    case 5:
      v6 = 0x80000001DD8B3D50;
      v5 = 0xD000000000000017;
      break;
    default:
      v6 = 0x80000001DD8B3CC0;
      v5 = 0xD000000000000011;
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0x80000001DD8B3CE0;
      v3 = 0xD00000000000001DLL;
      break;
    case 2:
      v2 = 0x80000001DD8B3D00;
      v3 = 0xD00000000000001BLL;
      break;
    case 3:
      v2 = 0x80000001DD8B3D20;
      v3 = 0xD00000000000001ALL;
      break;
    case 4:
      break;
    case 5:
      v2 = 0x80000001DD8B3D50;
      v3 = 0xD000000000000017;
      break;
    default:
      v2 = 0x80000001DD8B3CC0;
      v3 = 0xD000000000000011;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DD875A30();
  }

  return v8 & 1;
}

uint64_t sub_1DD7359B8(unsigned __int8 a1, char a2)
{
  v2 = 0x7961727261;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x7961727261;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x6C616E6F6974706FLL;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x7463656A626FLL;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v5 = 1836412517;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x6C616E6F6974706FLL;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x7463656A626FLL;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v2 = 1836412517;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DD6E6A44();
  }

  return v8 & 1;
}

uint64_t sub_1DD735ADC(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x7972657571;
  }

  else
  {
    v3 = 0x6E6F69746361;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (a2)
  {
    v5 = 0x7972657571;
  }

  else
  {
    v5 = 0x6E6F69746361;
  }

  if (a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DD6E6A44();
  }

  return v8 & 1;
}

uint64_t sub_1DD735B68(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000656761;
  v3 = 0x75676E616C2E6561;
  v4 = a1;
  v5 = 0x75676E616C2E6561;
  v6 = 0xEB00000000656761;
  switch(v4)
  {
    case 1:
      v5 = 0x75676E616C2E6669;
      goto LABEL_6;
    case 2:
      v5 = 0x75676E616C2E6772;
      goto LABEL_6;
    case 3:
      v5 = 0x75676E616C2E6C6ELL;
LABEL_6:
      v6 = 0xEB00000000656761;
      break;
    case 4:
      v5 = 0x73697373612E6C6ELL;
      v6 = 0xEC000000746E6174;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x75676E616C2E6669;
      break;
    case 2:
      v3 = 0x75676E616C2E6772;
      break;
    case 3:
      v3 = 0x75676E616C2E6C6ELL;
      break;
    case 4:
      v3 = 0x73697373612E6C6ELL;
      v2 = 0xEC000000746E6174;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DD875A30();
  }

  return v8 & 1;
}

uint64_t sub_1DD735CB0(unsigned __int8 a1, char a2)
{
  v2 = 0xD000000000000014;
  v3 = "anguage";
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD00000000000001ELL;
    }

    else
    {
      v5 = 0xD00000000000001CLL;
    }

    if (v4 == 1)
    {
      v6 = "com.apple.if.planner";
    }

    else
    {
      v6 = "com.apple.if.planner.overrides";
    }
  }

  else
  {
    v5 = 0xD000000000000014;
    v6 = "anguage";
  }

  if (a2)
  {
    v3 = "com.apple.if.planner";
    v2 = a2 == 1 ? 0xD00000000000001ELL : 0xD00000000000001CLL;
    if (a2 != 1)
    {
      v3 = "com.apple.if.planner.overrides";
    }
  }

  if (v5 == v2 && (v6 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DD6E6A44();
  }

  return v8 & 1;
}

uint64_t sub_1DD735D88(unsigned __int8 a1, char a2)
{
  v2 = 0xD00000000000001ELL;
  v3 = "ceFlow-3505.5.1\n";
  v4 = "ceFlow-3505.5.1\n";
  v5 = a1;
  v6 = 0xD00000000000001ELL;
  switch(v5)
  {
    case 1:
      v4 = "com.apple.if.planner_overrides";
      v6 = 0xD00000000000002CLL;
      break;
    case 2:
      v4 = "nner.tool_retrieval.denylist";
      v6 = 0xD000000000000027;
      break;
    case 3:
      v4 = "nner.nlrouter.overrides";
      v6 = 0xD000000000000028;
      break;
    case 4:
      v4 = "nner.tool_retrieval.base";
      v6 = 0xD000000000000030;
      break;
    case 5:
      v4 = "neration.catalog";
      v6 = 0xD000000000000032;
      break;
    case 6:
      v4 = "neration.overrides";
      v6 = 0xD000000000000020;
      break;
    case 7:
      v4 = "l.data_detectors";
      v6 = 0xD00000000000002FLL;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = "com.apple.if.planner_overrides";
      v2 = 0xD00000000000002CLL;
      break;
    case 2:
      v3 = "nner.tool_retrieval.denylist";
      v2 = 0xD000000000000027;
      break;
    case 3:
      v3 = "nner.nlrouter.overrides";
      v2 = 0xD000000000000028;
      break;
    case 4:
      v3 = "nner.tool_retrieval.base";
      v2 = 0xD000000000000030;
      break;
    case 5:
      v3 = "neration.catalog";
      v2 = 0xD000000000000032;
      break;
    case 6:
      v3 = "neration.overrides";
      v2 = 0xD000000000000020;
      break;
    case 7:
      v3 = "l.data_detectors";
      v2 = 0xD00000000000002FLL;
      break;
    default:
      break;
  }

  if (v6 == v2 && (v4 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DD6E6A44();
  }

  return v8 & 1;
}

uint64_t sub_1DD735F3C()
{
  v0 = sub_1DD874B10();
  sub_1DD732C90(v0, qword_1ECD0E908);
  sub_1DD6E1224(v0, qword_1ECD0E908);
  sub_1DD710A9C(&qword_1ECD0EB08, &qword_1DD87B528);
  v1 = (sub_1DD710A9C(&qword_1ECD0EB10, &qword_1DD87B530) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD87AC20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "user_query";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1DD874AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "device_type";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "interface_idiom";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  return sub_1DD874AF0();
}

uint64_t OverridesCommon_ContextPredicate.decodeMessage<A>(decoder:)()
{
  sub_1DD6E054C();
  while (1)
  {
    sub_1DD6E0F70();
    result = sub_1DD8749A0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 4:
        sub_1DD6E0824();
        sub_1DD7362EC();
        break;
      case 3:
        sub_1DD6E0824();
        sub_1DD736288();
        break;
      case 1:
        sub_1DD6E0824();
        sub_1DD7361E8();
        break;
    }
  }

  return result;
}

uint64_t sub_1DD7361E8()
{
  type metadata accessor for OverridesCommon_StringPredicate(0);
  sub_1DD73ADD4(&qword_1ECD0EA58, type metadata accessor for OverridesCommon_StringPredicate);
  return sub_1DD874A20();
}

uint64_t OverridesCommon_ContextPredicate.traverse<A>(visitor:)()
{
  sub_1DD6E5F74();
  result = sub_1DD7363E8(v2, v3, v4, v5);
  if (!v1)
  {
    v7 = sub_1DD6DF35C();
    sub_1DD7365B0(v7);
    v8 = sub_1DD6DF35C();
    sub_1DD736628(v8);
    v9 = v0 + *(type metadata accessor for OverridesCommon_ContextPredicate(0) + 28);
    sub_1DD6E0D68();
    return sub_1DD8748F0();
  }

  return result;
}

uint64_t sub_1DD7363E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E9E0, &unk_1DD87B550);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for OverridesCommon_StringPredicate(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD719110();
  if (sub_1DD6E5ED0(v7, 1, v8) == 1)
  {
    return sub_1DD6FC560(v7, &qword_1ECD0E9E0, &unk_1DD87B550);
  }

  sub_1DD73AE1C();
  sub_1DD73ADD4(&qword_1ECD0EA58, type metadata accessor for OverridesCommon_StringPredicate);
  sub_1DD874AD0();
  return sub_1DD73AE74(v11, type metadata accessor for OverridesCommon_StringPredicate);
}

uint64_t sub_1DD7365B0(uint64_t a1)
{
  result = type metadata accessor for OverridesCommon_ContextPredicate(0);
  v3 = (a1 + *(result + 20));
  if (v3[1])
  {
    v4 = *v3;
    return sub_1DD874AA0();
  }

  return result;
}

uint64_t sub_1DD736628(uint64_t a1)
{
  result = type metadata accessor for OverridesCommon_ContextPredicate(0);
  v3 = (a1 + *(result + 24));
  if (v3[1])
  {
    v4 = *v3;
    return sub_1DD874AA0();
  }

  return result;
}

uint64_t static OverridesCommon_ContextPredicate.== infix(_:_:)()
{
  v1 = type metadata accessor for OverridesCommon_StringPredicate(0);
  v2 = sub_1DD6DE1C4(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DD710A9C(&qword_1ECD0E9E0, &unk_1DD87B550);
  sub_1DD6DEA10(v7);
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v49 - v11;
  v13 = sub_1DD710A9C(&qword_1ECD0E9E8, &qword_1DD87AC30);
  sub_1DD6DEA10(v13);
  v15 = *(v14 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6E4918(v17);
  sub_1DD719110();
  sub_1DD6E9A54();
  if (sub_1DD6E5ED0(v0, 1, v1) != 1)
  {
    sub_1DD719110();
    v27 = sub_1DD6E1F6C();
    if (sub_1DD6E5ED0(v27, v28, v1) != 1)
    {
      sub_1DD73AE1C();
      if (*v12 == *v6)
      {
        v31 = *(v12 + 1) == *(v6 + 1) && *(v12 + 2) == *(v6 + 2);
        if (v31 || (sub_1DD875A30() & 1) != 0)
        {
          v32 = *(v1 + 24);
          sub_1DD874910();
          sub_1DD6E1430();
          sub_1DD73ADD4(v33, v34);
          v35 = sub_1DD8750F0();
          sub_1DD73AE74(v6, type metadata accessor for OverridesCommon_StringPredicate);
          v36 = sub_1DD6F4D4C();
          sub_1DD73AE74(v36, v37);
          sub_1DD6FC560(v0, &qword_1ECD0E9E0, &unk_1DD87B550);
          if ((v35 & 1) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_4;
        }
      }

      sub_1DD73AE74(v6, type metadata accessor for OverridesCommon_StringPredicate);
      sub_1DD73AE74(v12, type metadata accessor for OverridesCommon_StringPredicate);
      v29 = &qword_1ECD0E9E0;
      v30 = &unk_1DD87B550;
LABEL_24:
      sub_1DD6FC560(v0, v29, v30);
      goto LABEL_25;
    }

    sub_1DD73AE74(v12, type metadata accessor for OverridesCommon_StringPredicate);
LABEL_14:
    v29 = &qword_1ECD0E9E8;
    v30 = &qword_1DD87AC30;
    goto LABEL_24;
  }

  v18 = sub_1DD6E1F6C();
  if (sub_1DD6E5ED0(v18, v19, v1) != 1)
  {
    goto LABEL_14;
  }

  sub_1DD6FC560(v0, &qword_1ECD0E9E0, &unk_1DD87B550);
LABEL_4:
  v20 = type metadata accessor for OverridesCommon_ContextPredicate(0);
  v21 = v20[5];
  sub_1DD6E8898();
  if (v22)
  {
    if (!v23)
    {
      goto LABEL_25;
    }

    v26 = *v24 == *v25 && v22 == v23;
    if (!v26 && (sub_1DD875A30() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v23)
  {
    goto LABEL_25;
  }

  v40 = v20[6];
  sub_1DD6E8898();
  if (v41)
  {
    if (v42)
    {
      v45 = *v43 == *v44 && v41 == v42;
      if (v45 || (sub_1DD875A30() & 1) != 0)
      {
        goto LABEL_37;
      }
    }
  }

  else if (!v42)
  {
LABEL_37:
    v46 = v20[7];
    sub_1DD874910();
    sub_1DD6E1430();
    sub_1DD73ADD4(v47, v48);
    v38 = sub_1DD8750F0();
    return v38 & 1;
  }

LABEL_25:
  v38 = 0;
  return v38 & 1;
}

uint64_t (*sub_1DD736ADC(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_1DD736B30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD73ADD4(&qword_1ECD0EB00, type metadata accessor for OverridesCommon_ContextPredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD736BB0(uint64_t a1)
{
  v2 = sub_1DD73ADD4(&qword_1ECD0EA40, type metadata accessor for OverridesCommon_ContextPredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD736C20()
{
  sub_1DD73ADD4(&qword_1ECD0EA40, type metadata accessor for OverridesCommon_ContextPredicate);

  return sub_1DD874A70();
}

uint64_t sub_1DD736CB8()
{
  v0 = sub_1DD874B10();
  sub_1DD732C90(v0, qword_1ECD0E920);
  sub_1DD6E1224(v0, qword_1ECD0E920);
  sub_1DD710A9C(&qword_1ECD0EB08, &qword_1DD87B528);
  v1 = (sub_1DD710A9C(&qword_1ECD0EB10, &qword_1DD87B530) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD8782F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "operator";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1DD874AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1DD874AF0();
}

uint64_t OverridesCommon_StringPredicate.decodeMessage<A>(decoder:)()
{
  sub_1DD6E054C();
  while (1)
  {
    sub_1DD6E0F70();
    result = sub_1DD8749A0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_1DD6E0D68();
      sub_1DD8749F0();
    }

    else if (result == 1)
    {
      sub_1DD6E0824();
      sub_1DD736F0C();
    }
  }

  return result;
}

uint64_t OverridesCommon_StringPredicate.traverse<A>(visitor:)()
{
  sub_1DD6DE2D4();
  if (!*v1 || (v9 = *v1, sub_1DD73A610(), v2 = v0, result = sub_1DD874A90(), !v0))
  {
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    sub_1DD6F30BC();
    if (!v7 || (result = sub_1DD6E0D74(), !v2))
    {
      v8 = *(type metadata accessor for OverridesCommon_StringPredicate(0) + 24);
      return sub_1DD6DDF78();
    }
  }

  return result;
}

uint64_t static OverridesCommon_StringPredicate.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_1DD6E1F34();
  v5 = *(v4 + 8) == *(v2 + 8) && *(v3 + 16) == *(v2 + 16);
  if (!v5 && (sub_1DD875A30() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for OverridesCommon_StringPredicate(0) + 24);
  sub_1DD874910();
  sub_1DD6E1430();
  sub_1DD73ADD4(v7, v8);
  return sub_1DD6E2124() & 1;
}

uint64_t sub_1DD737110(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1DD875B20();
  a1(0);
  sub_1DD73ADD4(a2, a3);
  sub_1DD8750C0();
  return sub_1DD875B60();
}

uint64_t (*sub_1DD7371C4(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_1DD737218(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD73ADD4(&qword_1ECD0EAF8, type metadata accessor for OverridesCommon_StringPredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD737298(uint64_t a1)
{
  v2 = sub_1DD73ADD4(&qword_1ECD0EA58, type metadata accessor for OverridesCommon_StringPredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD737308()
{
  sub_1DD73ADD4(&qword_1ECD0EA58, type metadata accessor for OverridesCommon_StringPredicate);

  return sub_1DD874A70();
}

uint64_t sub_1DD737388()
{
  v0 = sub_1DD874B10();
  sub_1DD732C90(v0, qword_1ECD0E938);
  sub_1DD6E1224(v0, qword_1ECD0E938);
  sub_1DD710A9C(&qword_1ECD0EB08, &qword_1DD87B528);
  v1 = (sub_1DD710A9C(&qword_1ECD0EB10, &qword_1DD87B530) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD87AC20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNSPECIFIED";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1DD874AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "EXACT_MATCH";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "REGEX_MATCH";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  return sub_1DD874AF0();
}

uint64_t sub_1DD7375D4()
{
  v0 = sub_1DD874B10();
  sub_1DD732C90(v0, qword_1ECD0E950);
  sub_1DD6E1224(v0, qword_1ECD0E950);
  sub_1DD710A9C(&qword_1ECD0EB08, &qword_1DD87B528);
  v1 = (sub_1DD710A9C(&qword_1ECD0EB10, &qword_1DD87B530) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD87AC20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "fallback_dialog";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1DD874AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "string_dialog";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "cat_dialog";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  return sub_1DD874AF0();
}

uint64_t OverridesCommon_OverrideDialog.decodeMessage<A>(decoder:)()
{
  sub_1DD6E054C();
  while (1)
  {
    sub_1DD6E0F70();
    result = sub_1DD8749A0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1DD6DDEFC();
        sub_1DD6E5F74();
        sub_1DD738278(v11, v12, v13, v14);
        break;
      case 2:
        sub_1DD6DDEFC();
        sub_1DD6E5F74();
        sub_1DD737D80(v7, v8, v9, v10);
        break;
      case 1:
        sub_1DD6DDEFC();
        sub_1DD6E5F74();
        sub_1DD737888(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_1DD737888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for OverridesCommon_OverrideDialog.FallbackDialog(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1DD710A9C(&qword_1ECD0EA08, &unk_1DD884D70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for OverridesCommon_OverrideDialogEnum(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = sub_1DD710A9C(&qword_1ECD0EB18, &qword_1DD87B538);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  sub_1DD6E5E68(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1DD719110();
  v32 = sub_1DD6E5ED0(v12, 1, v13);
  v33 = v13;
  if (v32 == 1)
  {
    sub_1DD6FC560(v12, &qword_1ECD0EA08, &unk_1DD884D70);
  }

  else
  {
    sub_1DD73AE1C();
    sub_1DD73AE1C();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1DD73AE74(v16, type metadata accessor for OverridesCommon_OverrideDialogEnum);
    }

    else
    {
      sub_1DD6FC560(v24, &qword_1ECD0EB18, &qword_1DD87B538);
      sub_1DD73AE1C();
      sub_1DD73AE1C();
      sub_1DD6E5E68(v24, 0, 1, v5);
    }
  }

  sub_1DD73ADD4(&qword_1ECD0EA98, type metadata accessor for OverridesCommon_OverrideDialog.FallbackDialog);
  v25 = v35;
  sub_1DD874A20();
  if (v25)
  {
    v26 = v24;
    return sub_1DD6FC560(v26, &qword_1ECD0EB18, &qword_1DD87B538);
  }

  sub_1DD719110();
  if (sub_1DD6E5ED0(v21, 1, v5) == 1)
  {
    sub_1DD6FC560(v24, &qword_1ECD0EB18, &qword_1DD87B538);
    v26 = v21;
    return sub_1DD6FC560(v26, &qword_1ECD0EB18, &qword_1DD87B538);
  }

  sub_1DD73AE1C();
  if (v32 != 1)
  {
    sub_1DD8749B0();
  }

  v28 = v33;
  sub_1DD6FC560(v24, &qword_1ECD0EB18, &qword_1DD87B538);
  v29 = v31;
  sub_1DD6FC560(v31, &qword_1ECD0EA08, &unk_1DD884D70);
  sub_1DD73AE1C();
  swift_storeEnumTagMultiPayload();
  return sub_1DD6E5E68(v29, 0, 1, v28);
}

uint64_t sub_1DD737D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for OverridesCommon_OverrideDialog.StringDialog(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1DD710A9C(&qword_1ECD0EA08, &unk_1DD884D70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for OverridesCommon_OverrideDialogEnum(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = sub_1DD710A9C(&qword_1ECD0EB20, &qword_1DD87B540);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  sub_1DD6E5E68(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1DD719110();
  v32 = sub_1DD6E5ED0(v12, 1, v13);
  v33 = v13;
  if (v32 == 1)
  {
    sub_1DD6FC560(v12, &qword_1ECD0EA08, &unk_1DD884D70);
  }

  else
  {
    sub_1DD73AE1C();
    sub_1DD73AE1C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1DD6FC560(v24, &qword_1ECD0EB20, &qword_1DD87B540);
      sub_1DD73AE1C();
      sub_1DD73AE1C();
      sub_1DD6E5E68(v24, 0, 1, v5);
    }

    else
    {
      sub_1DD73AE74(v16, type metadata accessor for OverridesCommon_OverrideDialogEnum);
    }
  }

  sub_1DD73ADD4(&qword_1ECD0EAB0, type metadata accessor for OverridesCommon_OverrideDialog.StringDialog);
  v25 = v35;
  sub_1DD874A20();
  if (v25)
  {
    v26 = v24;
    return sub_1DD6FC560(v26, &qword_1ECD0EB20, &qword_1DD87B540);
  }

  sub_1DD719110();
  if (sub_1DD6E5ED0(v21, 1, v5) == 1)
  {
    sub_1DD6FC560(v24, &qword_1ECD0EB20, &qword_1DD87B540);
    v26 = v21;
    return sub_1DD6FC560(v26, &qword_1ECD0EB20, &qword_1DD87B540);
  }

  sub_1DD73AE1C();
  if (v32 != 1)
  {
    sub_1DD8749B0();
  }

  v28 = v33;
  sub_1DD6FC560(v24, &qword_1ECD0EB20, &qword_1DD87B540);
  v29 = v31;
  sub_1DD6FC560(v31, &qword_1ECD0EA08, &unk_1DD884D70);
  sub_1DD73AE1C();
  swift_storeEnumTagMultiPayload();
  return sub_1DD6E5E68(v29, 0, 1, v28);
}

uint64_t sub_1DD738278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for OverridesCommon_OverrideDialog.CATDialog(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1DD710A9C(&qword_1ECD0EA08, &unk_1DD884D70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for OverridesCommon_OverrideDialogEnum(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = sub_1DD710A9C(&qword_1ECD0EB28, &qword_1DD87B548);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  sub_1DD6E5E68(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1DD719110();
  v32 = sub_1DD6E5ED0(v12, 1, v13);
  v33 = v13;
  if (v32 == 1)
  {
    sub_1DD6FC560(v12, &qword_1ECD0EA08, &unk_1DD884D70);
  }

  else
  {
    sub_1DD73AE1C();
    sub_1DD73AE1C();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1DD6FC560(v24, &qword_1ECD0EB28, &qword_1DD87B548);
      sub_1DD73AE1C();
      sub_1DD73AE1C();
      sub_1DD6E5E68(v24, 0, 1, v5);
    }

    else
    {
      sub_1DD73AE74(v16, type metadata accessor for OverridesCommon_OverrideDialogEnum);
    }
  }

  sub_1DD73ADD4(&qword_1ECD0EAC8, type metadata accessor for OverridesCommon_OverrideDialog.CATDialog);
  v25 = v35;
  sub_1DD874A20();
  if (v25)
  {
    v26 = v24;
    return sub_1DD6FC560(v26, &qword_1ECD0EB28, &qword_1DD87B548);
  }

  sub_1DD719110();
  if (sub_1DD6E5ED0(v21, 1, v5) == 1)
  {
    sub_1DD6FC560(v24, &qword_1ECD0EB28, &qword_1DD87B548);
    v26 = v21;
    return sub_1DD6FC560(v26, &qword_1ECD0EB28, &qword_1DD87B548);
  }

  sub_1DD73AE1C();
  if (v32 != 1)
  {
    sub_1DD8749B0();
  }

  v28 = v33;
  sub_1DD6FC560(v24, &qword_1ECD0EB28, &qword_1DD87B548);
  v29 = v31;
  sub_1DD6FC560(v31, &qword_1ECD0EA08, &unk_1DD884D70);
  sub_1DD73AE1C();
  swift_storeEnumTagMultiPayload();
  return sub_1DD6E5E68(v29, 0, 1, v28);
}

uint64_t OverridesCommon_OverrideDialog.traverse<A>(visitor:)()
{
  v2 = sub_1DD710A9C(&qword_1ECD0EA08, &unk_1DD884D70);
  sub_1DD6DEA10(v2);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  sub_1DD719110();
  v8 = type metadata accessor for OverridesCommon_OverrideDialogEnum(0);
  if (sub_1DD6E5ED0(v7, 1, v8) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = sub_1DD6DF35C();
      sub_1DD738AB4(v10, v11, v12, v13);
    }

    else
    {
      v18 = sub_1DD6DF35C();
      sub_1DD738CBC(v18, v19, v20, v21);
    }
  }

  else
  {
    v14 = sub_1DD6DF35C();
    sub_1DD7388B0(v14, v15, v16, v17);
  }

  sub_1DD6DE2EC();
  result = sub_1DD73AE74(v7, v22);
  if (!v1)
  {
LABEL_8:
    v24 = v0 + *(type metadata accessor for OverridesCommon_OverrideDialog(0) + 20);
    sub_1DD6E0D68();
    return sub_1DD8748F0();
  }

  return result;
}

uint64_t sub_1DD7388B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0EA08, &unk_1DD884D70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for OverridesCommon_OverrideDialog.FallbackDialog(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD719110();
  v12 = type metadata accessor for OverridesCommon_OverrideDialogEnum(0);
  if (sub_1DD6E5ED0(v7, 1, v12) == 1)
  {
    result = sub_1DD6FC560(v7, &qword_1ECD0EA08, &unk_1DD884D70);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1DD73AE1C();
      sub_1DD73ADD4(&qword_1ECD0EA98, type metadata accessor for OverridesCommon_OverrideDialog.FallbackDialog);
      sub_1DD874AD0();
      return sub_1DD73AE74(v11, type metadata accessor for OverridesCommon_OverrideDialog.FallbackDialog);
    }

    result = sub_1DD73AE74(v7, type metadata accessor for OverridesCommon_OverrideDialogEnum);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD738AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0EA08, &unk_1DD884D70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for OverridesCommon_OverrideDialog.StringDialog(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD719110();
  v12 = type metadata accessor for OverridesCommon_OverrideDialogEnum(0);
  if (sub_1DD6E5ED0(v7, 1, v12) == 1)
  {
    result = sub_1DD6FC560(v7, &qword_1ECD0EA08, &unk_1DD884D70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1DD73AE1C();
      sub_1DD73ADD4(&qword_1ECD0EAB0, type metadata accessor for OverridesCommon_OverrideDialog.StringDialog);
      sub_1DD874AD0();
      return sub_1DD73AE74(v11, type metadata accessor for OverridesCommon_OverrideDialog.StringDialog);
    }

    result = sub_1DD73AE74(v7, type metadata accessor for OverridesCommon_OverrideDialogEnum);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD738CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0EA08, &unk_1DD884D70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for OverridesCommon_OverrideDialog.CATDialog(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD719110();
  v12 = type metadata accessor for OverridesCommon_OverrideDialogEnum(0);
  if (sub_1DD6E5ED0(v7, 1, v12) == 1)
  {
    result = sub_1DD6FC560(v7, &qword_1ECD0EA08, &unk_1DD884D70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1DD73AE1C();
      sub_1DD73ADD4(&qword_1ECD0EAC8, type metadata accessor for OverridesCommon_OverrideDialog.CATDialog);
      sub_1DD874AD0();
      return sub_1DD73AE74(v11, type metadata accessor for OverridesCommon_OverrideDialog.CATDialog);
    }

    result = sub_1DD73AE74(v7, type metadata accessor for OverridesCommon_OverrideDialogEnum);
  }

  __break(1u);
  return result;
}

uint64_t static OverridesCommon_OverrideDialog.== infix(_:_:)()
{
  sub_1DD6E1F34();
  v1 = type metadata accessor for OverridesCommon_OverrideDialogEnum(0);
  v2 = sub_1DD6DE1C4(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DD710A9C(&qword_1ECD0EA08, &unk_1DD884D70);
  sub_1DD6DEA10(v7);
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  v13 = sub_1DD710A9C(&qword_1ECD0EA10, &qword_1DD87AC38);
  sub_1DD6DEA10(v13);
  v15 = *(v14 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6E4918(v17);
  sub_1DD719110();
  sub_1DD6E9A54();
  if (sub_1DD6E5ED0(v0, 1, v1) == 1)
  {
    v18 = sub_1DD6E1F6C();
    if (sub_1DD6E5ED0(v18, v19, v1) == 1)
    {
      sub_1DD6FC560(v0, &qword_1ECD0EA08, &unk_1DD884D70);
LABEL_9:
      v25 = *(type metadata accessor for OverridesCommon_OverrideDialog(0) + 20);
      sub_1DD874910();
      sub_1DD6E1430();
      sub_1DD73ADD4(v26, v27);
      v23 = sub_1DD6E2124();
      return v23 & 1;
    }

    goto LABEL_6;
  }

  sub_1DD719110();
  v20 = sub_1DD6E1F6C();
  if (sub_1DD6E5ED0(v20, v21, v1) == 1)
  {
    sub_1DD6DE2EC();
    sub_1DD73AE74(v12, v22);
LABEL_6:
    sub_1DD6FC560(v0, &qword_1ECD0EA10, &qword_1DD87AC38);
    goto LABEL_7;
  }

  sub_1DD73AE1C();
  v24 = static OverridesCommon_OverrideDialogEnum.== infix(_:_:)(v12, v6);
  sub_1DD73AE74(v6, type metadata accessor for OverridesCommon_OverrideDialogEnum);
  sub_1DD73AE74(v12, type metadata accessor for OverridesCommon_OverrideDialogEnum);
  sub_1DD6FC560(v0, &qword_1ECD0EA08, &unk_1DD884D70);
  if (v24)
  {
    goto LABEL_9;
  }

LABEL_7:
  v23 = 0;
  return v23 & 1;
}

uint64_t (*sub_1DD7391B0(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1DD739204(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD73ADD4(&qword_1ECD0EAF0, type metadata accessor for OverridesCommon_OverrideDialog);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD739284(uint64_t a1)
{
  v2 = sub_1DD73ADD4(&qword_1ECD0EA80, type metadata accessor for OverridesCommon_OverrideDialog);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD7392F4()
{
  sub_1DD73ADD4(&qword_1ECD0EA80, type metadata accessor for OverridesCommon_OverrideDialog);

  return sub_1DD874A70();
}

uint64_t sub_1DD7393C4()
{
  v0 = sub_1DD874B10();
  sub_1DD732C90(v0, qword_1ECD0E978);
  sub_1DD6E1224(v0, qword_1ECD0E978);
  return sub_1DD874B00();
}

uint64_t OverridesCommon_OverrideDialog.FallbackDialog.decodeMessage<A>(decoder:)()
{
  do
  {
    result = sub_1DD8749A0();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t sub_1DD7394D8(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  sub_1DD73ADD4(a4, a5);
  sub_1DD6E0F70();
  return sub_1DD8750F0() & 1;
}

uint64_t sub_1DD7395F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD73ADD4(&qword_1ECD0EAE8, type metadata accessor for OverridesCommon_OverrideDialog.FallbackDialog);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD739678(uint64_t a1)
{
  v2 = sub_1DD73ADD4(&qword_1ECD0EA98, type metadata accessor for OverridesCommon_OverrideDialog.FallbackDialog);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD7396E8()
{
  sub_1DD73ADD4(&qword_1ECD0EA98, type metadata accessor for OverridesCommon_OverrideDialog.FallbackDialog);

  return sub_1DD874A70();
}

uint64_t sub_1DD7397B8()
{
  v0 = sub_1DD874B10();
  sub_1DD732C90(v0, qword_1ECD0E9A0);
  sub_1DD6E1224(v0, qword_1ECD0E9A0);
  sub_1DD710A9C(&qword_1ECD0EB08, &qword_1DD87B528);
  v1 = (sub_1DD710A9C(&qword_1ECD0EB10, &qword_1DD87B530) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD87AAA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "full_print";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1DD874AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "full_speak";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "supporting_print";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "supporting_speak";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return sub_1DD874AF0();
}

uint64_t OverridesCommon_OverrideDialog.StringDialog.decodeMessage<A>(decoder:)()
{
  sub_1DD6E054C();
  while (1)
  {
    sub_1DD6E0F70();
    result = sub_1DD8749A0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1DD6E0D68();
        sub_1DD8749F0();
        break;
      case 2:
      case 3:
      case 4:
        sub_1DD6E0D68();
        sub_1DD8749E0();
        break;
      default:
        continue;
    }
  }
}

uint64_t OverridesCommon_OverrideDialog.StringDialog.traverse<A>(visitor:)()
{
  sub_1DD6DE2D4();
  v2 = *v0;
  v3 = v0[1];
  sub_1DD6F30BC();
  if (!v4 || (result = sub_1DD6E0D74(), !v1))
  {
    sub_1DD6F4D4C();
    sub_1DD6E5294();
    result = sub_1DD739B54(v6);
    if (!v1)
    {
      sub_1DD6F4D4C();
      sub_1DD6E5294();
      sub_1DD739B90(v7);
      sub_1DD6F4D4C();
      sub_1DD6E5294();
      sub_1DD739BCC(v8);
      v9 = *(type metadata accessor for OverridesCommon_OverrideDialog.StringDialog(0) + 32);
      return sub_1DD6DDF78();
    }
  }

  return result;
}

uint64_t sub_1DD739B54(uint64_t result)
{
  if (*(result + 24))
  {
    v1 = *(result + 16);
    return sub_1DD874AA0();
  }

  return result;
}

uint64_t sub_1DD739B90(uint64_t result)
{
  if (*(result + 40))
  {
    v1 = *(result + 32);
    return sub_1DD874AA0();
  }

  return result;
}

uint64_t sub_1DD739BCC(uint64_t result)
{
  if (*(result + 56))
  {
    v1 = *(result + 48);
    return sub_1DD874AA0();
  }

  return result;
}

uint64_t static OverridesCommon_OverrideDialog.StringDialog.== infix(_:_:)()
{
  sub_1DD6E1F34();
  sub_1DD6E652C(v2);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1DD875A30() & 1) == 0)
  {
    return 0;
  }

  v6 = v1[3];
  v7 = v0[3];
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    v8 = v1[2] == v0[2] && v6 == v7;
    if (!v8 && (sub_1DD875A30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v9 = v1[5];
  v10 = v0[5];
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    v11 = v1[4] == v0[4] && v9 == v10;
    if (!v11 && (sub_1DD875A30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v12 = v1[7];
  v13 = v0[7];
  if (v12)
  {
    if (v13)
    {
      v14 = v1[6] == v0[6] && v12 == v13;
      if (v14 || (sub_1DD875A30() & 1) != 0)
      {
        goto LABEL_31;
      }
    }
  }

  else if (!v13)
  {
LABEL_31:
    v15 = *(type metadata accessor for OverridesCommon_OverrideDialog.StringDialog(0) + 32);
    sub_1DD874910();
    sub_1DD6E1430();
    sub_1DD73ADD4(v16, v17);
    return sub_1DD6E2124() & 1;
  }

  return 0;
}

uint64_t (*sub_1DD739D90(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t sub_1DD739DE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD73ADD4(&qword_1ECD0EAE0, type metadata accessor for OverridesCommon_OverrideDialog.StringDialog);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD739E64(uint64_t a1)
{
  v2 = sub_1DD73ADD4(&qword_1ECD0EAB0, type metadata accessor for OverridesCommon_OverrideDialog.StringDialog);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD739ED4()
{
  sub_1DD73ADD4(&qword_1ECD0EAB0, type metadata accessor for OverridesCommon_OverrideDialog.StringDialog);

  return sub_1DD874A70();
}

uint64_t sub_1DD739F7C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x1E12B4C10](a2, a3);
  *a4 = 0xD00000000000001FLL;
  *a5 = 0x80000001DD8B4FE0;
  return result;
}

uint64_t sub_1DD73A008(void *a1, uint64_t *a2, uint64_t *a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = *a2;
  v6 = *a3;

  return v5;
}

uint64_t sub_1DD73A05C()
{
  v0 = sub_1DD874B10();
  sub_1DD732C90(v0, qword_1ECD0E9C8);
  sub_1DD6E1224(v0, qword_1ECD0E9C8);
  sub_1DD710A9C(&qword_1ECD0EB08, &qword_1DD87B528);
  v1 = (sub_1DD710A9C(&qword_1ECD0EB10, &qword_1DD87B530) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD8782E0;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "cat_id";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1DD874AE0();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1DD874AF0();
}

uint64_t sub_1DD73A1EC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1DD874B10();
  v6 = sub_1DD6E1224(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t OverridesCommon_OverrideDialog.CATDialog.decodeMessage<A>(decoder:)()
{
  sub_1DD6E054C();
  while (1)
  {
    sub_1DD6E0F70();
    result = sub_1DD8749A0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1DD6E0D68();
      sub_1DD8749F0();
    }
  }

  return result;
}

uint64_t OverridesCommon_OverrideDialog.CATDialog.traverse<A>(visitor:)()
{
  sub_1DD6DE2D4();
  v2 = *v0;
  v3 = v0[1];
  sub_1DD6F30BC();
  if (!v4 || (result = sub_1DD6E0D74(), !v1))
  {
    v6 = *(type metadata accessor for OverridesCommon_OverrideDialog.CATDialog(0) + 20);
    return sub_1DD6DDF78();
  }

  return result;
}

uint64_t static OverridesCommon_OverrideDialog.CATDialog.== infix(_:_:)()
{
  sub_1DD6E1F34();
  sub_1DD6E652C(v0);
  v3 = v3 && v1 == v2;
  if (!v3 && (sub_1DD875A30() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for OverridesCommon_OverrideDialog.CATDialog(0) + 20);
  sub_1DD874910();
  sub_1DD6E1430();
  sub_1DD73ADD4(v5, v6);
  return sub_1DD6E2124() & 1;
}

uint64_t sub_1DD73A44C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD73ADD4(&qword_1ECD0EAD8, type metadata accessor for OverridesCommon_OverrideDialog.CATDialog);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD73A4CC(uint64_t a1)
{
  v2 = sub_1DD73ADD4(&qword_1ECD0EAC8, type metadata accessor for OverridesCommon_OverrideDialog.CATDialog);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD73A53C()
{
  sub_1DD73ADD4(&qword_1ECD0EAC8, type metadata accessor for OverridesCommon_OverrideDialog.CATDialog);

  return sub_1DD874A70();
}

uint64_t sub_1DD73A5B8()
{
  sub_1DD875B20();
  sub_1DD8750C0();
  return sub_1DD875B60();
}

unint64_t sub_1DD73A610()
{
  result = qword_1ECD0E9F8;
  if (!qword_1ECD0E9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E9F8);
  }

  return result;
}

unint64_t sub_1DD73A8A8()
{
  result = qword_1ECD0EA68;
  if (!qword_1ECD0EA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0EA68);
  }

  return result;
}

unint64_t sub_1DD73A900()
{
  result = qword_1ECD0EA70;
  if (!qword_1ECD0EA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0EA70);
  }

  return result;
}

uint64_t sub_1DD73ADD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DD73AE1C()
{
  sub_1DD6E1F34();
  v2 = v1(0);
  sub_1DD6DE1C4(v2);
  v4 = *(v3 + 32);
  v5 = sub_1DD6DDEFC();
  v6(v5);
  return v0;
}

uint64_t sub_1DD73AE74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1DD6DE1C4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OverridesCommon_ContextPredicate.init()()
{
  v1 = sub_1DD6E0A5C();
  v2 = type metadata accessor for OverridesCommon_StringPredicate(v1);
  v5 = sub_1DD6DEA4C(v0, v3, v4, v2);
  v6 = type metadata accessor for OverridesCommon_ContextPredicate(v5);
  v7 = (v0 + v6[5]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v0 + v6[6]);
  *v8 = 0;
  v8[1] = 0;
  v9 = v0 + v6[7];
  return _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
}

uint64_t OverridesCommon_ContextPredicate.unknownFields.getter()
{
  v0 = sub_1DD6E0A5C();
  v1 = *(type metadata accessor for OverridesCommon_ContextPredicate(v0) + 28);
  v2 = sub_1DD874910();
  sub_1DD6DE1C4(v2);
  v4 = *(v3 + 16);
  v5 = sub_1DD6E0838();

  return v6(v5);
}

uint64_t OverridesCommon_ContextPredicate.unknownFields.setter()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for OverridesCommon_ContextPredicate(v0) + 28);
  v2 = sub_1DD874910();
  sub_1DD6DE1C4(v2);
  v4 = *(v3 + 40);
  v5 = sub_1DD6E26D8();

  return v6(v5);
}

uint64_t OverridesCommon_ContextPredicate.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for OverridesCommon_ContextPredicate(v0) + 28);
  return sub_1DD6DDF9C();
}

uint64_t OverridesCommon_StringPredicate.init()()
{
  v1 = sub_1DD6E0A5C();
  v2 = v0 + *(type metadata accessor for OverridesCommon_StringPredicate(v1) + 24);
  result = _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0xE000000000000000;
  return result;
}

uint64_t OverridesCommon_StringPredicate.unknownFields.getter()
{
  v0 = sub_1DD6E0A5C();
  v1 = *(type metadata accessor for OverridesCommon_StringPredicate(v0) + 24);
  v2 = sub_1DD874910();
  sub_1DD6DE1C4(v2);
  v4 = *(v3 + 16);
  v5 = sub_1DD6E0838();

  return v6(v5);
}

uint64_t OverridesCommon_StringPredicate.unknownFields.setter()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for OverridesCommon_StringPredicate(v0) + 24);
  v2 = sub_1DD874910();
  sub_1DD6DE1C4(v2);
  v4 = *(v3 + 40);
  v5 = sub_1DD6E26D8();

  return v6(v5);
}

uint64_t OverridesCommon_StringPredicate.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for OverridesCommon_StringPredicate(v0) + 24);
  return sub_1DD6DDF9C();
}

IntelligenceFlow::OverridesCommon_StringPredicate::Operator_optional __swiftcall OverridesCommon_StringPredicate.Operator.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t OverridesCommon_OverrideDialog.init()()
{
  v1 = sub_1DD6E0A5C();
  v2 = type metadata accessor for OverridesCommon_OverrideDialogEnum(v1);
  v5 = sub_1DD6DEA4C(v0, v3, v4, v2);
  v6 = v0 + *(type metadata accessor for OverridesCommon_OverrideDialog(v5) + 20);
  return _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
}

uint64_t OverridesCommon_OverrideDialog.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for OverridesCommon_OverrideDialog(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t OverridesCommon_OverrideDialog.FallbackDialog.unknownFields.getter()
{
  sub_1DD6E0A5C();
  v0 = sub_1DD874910();
  sub_1DD6DE1C4(v0);
  v2 = *(v1 + 16);
  v3 = sub_1DD6DDEFC();

  return v4(v3);
}

uint64_t OverridesCommon_OverrideDialog.FallbackDialog.unknownFields.setter()
{
  sub_1DD6DE290();
  v1 = sub_1DD874910();
  sub_1DD6DE1C4(v1);
  v3 = *(v2 + 40);
  v4 = sub_1DD6E492C();

  return v5(v4, v0);
}

uint64_t OverridesCommon_OverrideDialog.StringDialog.init()()
{
  v1 = sub_1DD6E0A5C();
  v2 = type metadata accessor for OverridesCommon_OverrideDialog.StringDialog(v1);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  v3 = v0 + *(v2 + 32);
  result = _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
  *v0 = 0;
  *(v0 + 8) = 0xE000000000000000;
  return result;
}

uint64_t OverridesCommon_OverrideDialog.StringDialog.unknownFields.getter()
{
  v0 = sub_1DD6E0A5C();
  v1 = *(type metadata accessor for OverridesCommon_OverrideDialog.StringDialog(v0) + 32);
  v2 = sub_1DD874910();
  sub_1DD6DE1C4(v2);
  v4 = *(v3 + 16);
  v5 = sub_1DD6E0838();

  return v6(v5);
}

uint64_t OverridesCommon_OverrideDialog.StringDialog.unknownFields.setter()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for OverridesCommon_OverrideDialog.StringDialog(v0) + 32);
  v2 = sub_1DD874910();
  sub_1DD6DE1C4(v2);
  v4 = *(v3 + 40);
  v5 = sub_1DD6E26D8();

  return v6(v5);
}

uint64_t OverridesCommon_OverrideDialog.StringDialog.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for OverridesCommon_OverrideDialog.StringDialog(v0) + 32);
  return sub_1DD6DDF9C();
}

uint64_t OverridesCommon_OverrideDialog.CATDialog.init()()
{
  v1 = sub_1DD6E0A5C();
  v2 = v0 + *(type metadata accessor for OverridesCommon_OverrideDialog.CATDialog(v1) + 20);
  result = _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_1DD73B5AC()
{
  v0 = sub_1DD6E0A5C();
  v2 = *(v1(v0) + 20);
  v3 = sub_1DD874910();
  sub_1DD6DE1C4(v3);
  v5 = *(v4 + 16);
  v6 = sub_1DD6E0838();

  return v7(v6);
}

uint64_t sub_1DD73B634()
{
  v0 = sub_1DD6DE290();
  v2 = *(v1(v0) + 20);
  v3 = sub_1DD874910();
  sub_1DD6DE1C4(v3);
  v5 = *(v4 + 40);
  v6 = sub_1DD6E26D8();

  return v7(v6);
}

uint64_t OverridesCommon_OverrideDialog.CATDialog.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for OverridesCommon_OverrideDialog.CATDialog(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t OverridesCommon_ContextPredicate.deviceType.getter()
{
  v1 = (v0 + *(type metadata accessor for OverridesCommon_ContextPredicate(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return sub_1DD6DDEFC();
}

uint64_t OverridesCommon_ContextPredicate.deviceType.setter()
{
  sub_1DD6DE304();
  v3 = (v1 + *(type metadata accessor for OverridesCommon_ContextPredicate(0) + 20));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t OverridesCommon_ContextPredicate.deviceType.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for OverridesCommon_ContextPredicate(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t OverridesCommon_ContextPredicate.interfaceIdiom.getter()
{
  v1 = (v0 + *(type metadata accessor for OverridesCommon_ContextPredicate(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return sub_1DD6DDEFC();
}

uint64_t OverridesCommon_ContextPredicate.interfaceIdiom.setter()
{
  sub_1DD6DE304();
  v3 = (v1 + *(type metadata accessor for OverridesCommon_ContextPredicate(0) + 24));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t OverridesCommon_ContextPredicate.interfaceIdiom.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for OverridesCommon_ContextPredicate(v0) + 24);
  return sub_1DD6DDF9C();
}

uint64_t OverridesCommon_ContextPredicate.init(userQuery:deviceType:interfaceIdiom:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for OverridesCommon_StringPredicate(0);
  v13 = sub_1DD6DEA4C(a5, v11, v12, v10);
  v14 = type metadata accessor for OverridesCommon_ContextPredicate(v13);
  v15 = (a5 + v14[5]);
  v16 = (a5 + v14[6]);
  v17 = a5 + v14[7];
  _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
  result = sub_1DD73BB98();
  *v15 = a1;
  v15[1] = a2;
  *v16 = a3;
  v16[1] = a4;
  return result;
}

uint64_t OverridesCommon_StringPredicate.value.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return sub_1DD6DDEFC();
}

uint64_t OverridesCommon_StringPredicate.value.setter()
{
  sub_1DD6DE304();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t sub_1DD73BA58@<X0>(uint64_t *a1@<X8>)
{
  result = OverridesCommon_StringPredicate.Operator.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1DD73BA88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD73A610();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t OverridesCommon_StringPredicate.init(operator:value:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = a4 + *(type metadata accessor for OverridesCommon_StringPredicate(0) + 24);
  result = _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t sub_1DD73BB98()
{
  sub_1DD6E1F34();
  v3 = sub_1DD710A9C(v1, v2);
  sub_1DD6DE1C4(v3);
  v5 = *(v4 + 40);
  v6 = sub_1DD6DDEFC();
  v7(v6);
  return v0;
}

uint64_t OverridesCommon_OverrideDialog.StringDialog.fullPrint.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_1DD6DDEFC();
}

uint64_t OverridesCommon_OverrideDialog.StringDialog.fullPrint.setter()
{
  sub_1DD6DE304();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t OverridesCommon_OverrideDialog.StringDialog.fullSpeak.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_1DD6DDEFC();
}

uint64_t OverridesCommon_OverrideDialog.StringDialog.fullSpeak.setter()
{
  sub_1DD6DE304();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t OverridesCommon_OverrideDialog.StringDialog.supportingPrint.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return sub_1DD6DDEFC();
}

uint64_t OverridesCommon_OverrideDialog.StringDialog.supportingPrint.setter()
{
  sub_1DD6DE304();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t OverridesCommon_OverrideDialog.StringDialog.supportingSpeak.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return sub_1DD6DDEFC();
}

uint64_t OverridesCommon_OverrideDialog.StringDialog.supportingSpeak.setter()
{
  sub_1DD6DE304();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t OverridesCommon_OverrideDialog.StringDialog.init(fullPrint:fullSpeak:supportingPrint:supportingSpeak:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v18 = a9 + *(type metadata accessor for OverridesCommon_OverrideDialog.StringDialog(0) + 32);
  result = _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t OverridesCommon_OverrideDialog.CATDialog.init(catID:)()
{
  sub_1DD6E1F34();
  v3 = v2;
  v4 = v2 + *(type metadata accessor for OverridesCommon_OverrideDialog.CATDialog(0) + 20);
  result = _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
  *v3 = v1;
  v3[1] = v0;
  return result;
}

uint64_t static OverridesCommon_OverrideDialogEnum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v37 = type metadata accessor for OverridesCommon_OverrideDialog.CATDialog(0);
  v4 = sub_1DD6DE1C4(v37);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DE4A8();
  v38 = (v8 - v7);
  v9 = type metadata accessor for OverridesCommon_OverrideDialog.StringDialog(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1DD6DE4A8();
  v11 = type metadata accessor for OverridesCommon_OverrideDialog.FallbackDialog(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  sub_1DD6DE4A8();
  v13 = type metadata accessor for OverridesCommon_OverrideDialogEnum(0);
  v14 = sub_1DD6DE1C4(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v37 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v37 - v23;
  v25 = sub_1DD710A9C(&qword_1ECD0EB30, &qword_1DD87B560);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v37 - v27;
  v30 = *(v29 + 56);
  sub_1DD73C370(a1, &v37 - v27);
  sub_1DD73C370(a2, &v28[v30]);
  sub_1DD6DDEFC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1DD73C370(v28, v24);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1DD73C4E8();
      sub_1DD874910();
      sub_1DD73C490();
      v32 = sub_1DD8750F0();
      sub_1DD73C43C();
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1DD73C370(v28, v21);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1DD73C4E8();
      v32 = static OverridesCommon_OverrideDialog.StringDialog.== infix(_:_:)();
      sub_1DD73C43C();
LABEL_18:
      sub_1DD73C43C();
      sub_1DD6DF374();
      return v32 & 1;
    }

    goto LABEL_15;
  }

  sub_1DD73C370(v28, v18);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_15:
    sub_1DD73C43C();
    sub_1DD73C3D4(v28);
LABEL_16:
    v32 = 0;
    return v32 & 1;
  }

  v33 = v38;
  sub_1DD73C4E8();
  v34 = *v18 == *v33 && v18[1] == v33[1];
  if (!v34 && (sub_1DD875A30() & 1) == 0 || (v35 = *(v37 + 20), sub_1DD874910(), sub_1DD73C490(), (sub_1DD8750F0() & 1) == 0))
  {
    sub_1DD6ED5D4();
    sub_1DD73C43C();
    sub_1DD73C43C();
    sub_1DD6DF374();
    goto LABEL_16;
  }

  sub_1DD6ED5D4();
  sub_1DD73C43C();
  sub_1DD73C43C();
  sub_1DD6DF374();
  v32 = 1;
  return v32 & 1;
}

uint64_t sub_1DD73C370(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OverridesCommon_OverrideDialogEnum(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD73C3D4(uint64_t a1)
{
  v2 = sub_1DD710A9C(&qword_1ECD0EB30, &qword_1DD87B560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD73C43C()
{
  v1 = sub_1DD6DE290();
  v3 = v2(v1);
  sub_1DD6DE1C4(v3);
  (*(v4 + 8))(v0);
  return v0;
}

unint64_t sub_1DD73C490()
{
  result = qword_1ECD0E2C8;
  if (!qword_1ECD0E2C8)
  {
    sub_1DD874910();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E2C8);
  }

  return result;
}

uint64_t sub_1DD73C4E8()
{
  sub_1DD6E1F34();
  v2 = v1(0);
  sub_1DD6DE1C4(v2);
  v4 = *(v3 + 32);
  v5 = sub_1DD6DDEFC();
  v6(v5);
  return v0;
}

unint64_t sub_1DD73C544()
{
  result = qword_1ECD0EB38;
  if (!qword_1ECD0EB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0EB38);
  }

  return result;
}

unint64_t sub_1DD73C59C()
{
  result = qword_1ECD0EB40;
  if (!qword_1ECD0EB40)
  {
    sub_1DD717E88(&qword_1ECD0EB48, &qword_1DD87B608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0EB40);
  }

  return result;
}

void sub_1DD73C62C()
{
  sub_1DD73C934(319, &qword_1ECD0EB60, type metadata accessor for OverridesCommon_StringPredicate);
  if (v0 <= 0x3F)
  {
    sub_1DD732A5C();
    if (v1 <= 0x3F)
    {
      sub_1DD874910();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1DD73C70C()
{
  result = sub_1DD874910();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OverridesCommon_StringPredicate.Operator(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1DD73C894()
{
  sub_1DD73C934(319, &qword_1ECD0EB88, type metadata accessor for OverridesCommon_OverrideDialogEnum);
  if (v0 <= 0x3F)
  {
    sub_1DD874910();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DD73C934(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DD8755C0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1DD73C9B0()
{
  result = sub_1DD874910();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1DD73CA44()
{
  sub_1DD732A5C();
  if (v0 <= 0x3F)
  {
    sub_1DD874910();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1DD73CB08()
{
  result = sub_1DD874910();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DD73CB84()
{
  result = type metadata accessor for OverridesCommon_OverrideDialog.FallbackDialog(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for OverridesCommon_OverrideDialog.StringDialog(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for OverridesCommon_OverrideDialog.CATDialog(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void ResponseGenerationOverrides_DialogGenerationOverrides.decodeMessage<A>(decoder:)()
{
  sub_1DD6E054C();
  while (1)
  {
    v1 = sub_1DD753698();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      sub_1DD6E0824();
      sub_1DD73F168();
    }
  }
}

void ResponseGenerationOverrides_DialogGenerationOverrides.traverse<A>(visitor:)()
{
  sub_1DD6FEAFC();
  sub_1DD6DE2D4();
  sub_1DD6E5CA0();
  if (!v1 || (type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(0), sub_1DD753414(&qword_1EE015D58, type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride), sub_1DD6FF79C(), sub_1DD6E6540(), sub_1DD874AC0(), !v0))
  {
    v2 = *(type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverrides(0) + 20);
    sub_1DD6DDF78();
  }

  sub_1DD6E7244();
}

uint64_t sub_1DD73CED4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F210, type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverrides);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD73CF54(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1ECD0EF38, type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverrides);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD73CFC4()
{
  sub_1DD753414(&qword_1ECD0EF38, type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverrides);

  return sub_1DD874A70();
}

uint64_t sub_1DD73D05C()
{
  v0 = sub_1DD874B10();
  sub_1DD732C90(v0, qword_1EE015D68);
  sub_1DD6E1224(v0, qword_1EE015D68);
  sub_1DD710A9C(&qword_1ECD0EB08, &qword_1DD87B528);
  v1 = (sub_1DD710A9C(&qword_1ECD0EB10, &qword_1DD87B530) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1DD87B7D0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "id";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1DD874AE0();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "name";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "disabled";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "context";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "rules";
  *(v15 + 1) = 5;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "override_dialog";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v18 = *MEMORY[0x1E69AADE8];
  v8();
  v19 = (v4 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "radar_id";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v8();
  v21 = (v4 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "test_id";
  *(v22 + 1) = 7;
  v22[16] = 2;
  v8();
  return sub_1DD874AF0();
}

void ResponseGenerationOverrides_DialogGenerationOverride.decodeMessage<A>(decoder:)()
{
  sub_1DD6E054C();
  while (1)
  {
    v1 = sub_1DD753698();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        sub_1DD6E0D68();
        sub_1DD8749F0();
        break;
      case 2:
        sub_1DD6E0D68();
        sub_1DD8749E0();
        break;
      case 3:
        sub_1DD6E0D68();
        sub_1DD8749C0();
        break;
      case 4:
        sub_1DD6E0824();
        sub_1DD73D4FC();
        break;
      case 5:
        sub_1DD6E0824();
        sub_1DD74A0AC();
        break;
      case 6:
        sub_1DD6E0824();
        sub_1DD73D5B0();
        break;
      case 7:
        sub_1DD6E0824();
        sub_1DD73D664();
        break;
      case 8:
        sub_1DD6E0824();
        sub_1DD73D6C8();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1DD73D4FC()
{
  v0 = *(type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(0) + 32);
  type metadata accessor for OverridesCommon_ContextPredicate(0);
  sub_1DD753414(&qword_1ECD0EA40, type metadata accessor for OverridesCommon_ContextPredicate);
  return sub_1DD874A20();
}

uint64_t sub_1DD73D5B0()
{
  v0 = *(type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(0) + 36);
  type metadata accessor for OverridesCommon_OverrideDialog(0);
  sub_1DD753414(&qword_1ECD0EA80, type metadata accessor for OverridesCommon_OverrideDialog);
  return sub_1DD874A20();
}

void ResponseGenerationOverrides_DialogGenerationOverride.traverse<A>(visitor:)()
{
  sub_1DD6FEAFC();
  sub_1DD6DE2D4();
  sub_1DD6EE854();
  if (!v2 || (sub_1DD6E58EC(), sub_1DD874AA0(), !v0))
  {
    v3 = sub_1DD6DDFB8();
    sub_1DD73D87C(v3);
    if (!v0)
    {
      if (*(v1 + 16) == 1)
      {
        sub_1DD6E58EC();
        sub_1DD6E5F74();
        sub_1DD874A80();
      }

      v4 = sub_1DD6DDFB8();
      sub_1DD73D8B8(v4, v5, v6, v7);
      if (*(*(v1 + 24) + 16))
      {
        type metadata accessor for ResponseGenerationOverrides_Rule(0);
        sub_1DD753414(qword_1EE014D68, type metadata accessor for ResponseGenerationOverrides_Rule);
        sub_1DD6FF79C();
        sub_1DD6E6540();
        sub_1DD874AC0();
      }

      v8 = sub_1DD6DDFB8();
      sub_1DD73DA8C(v8, v9, v10, v11);
      v12 = sub_1DD6DDFB8();
      sub_1DD73DC60(v12);
      v13 = sub_1DD6DDFB8();
      sub_1DD73DCD8(v13);
      v14 = *(type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(0) + 48);
      sub_1DD6DDF78();
    }
  }

  sub_1DD6E7244();
}

uint64_t sub_1DD73D87C(uint64_t result)
{
  if (*(result + 40))
  {
    v1 = *(result + 32);
    return sub_1DD874AA0();
  }

  return result;
}

uint64_t sub_1DD73D8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0EE20, &unk_1DD87DF20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for OverridesCommon_ContextPredicate(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(0) + 32);
  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v7, 1, v8) == 1)
  {
    return sub_1DD6FC560(v7, &qword_1ECD0EE20, &unk_1DD87DF20);
  }

  sub_1DD753308();
  sub_1DD753414(&qword_1ECD0EA40, type metadata accessor for OverridesCommon_ContextPredicate);
  sub_1DD874AD0();
  return sub_1DD753360(v11, type metadata accessor for OverridesCommon_ContextPredicate);
}

uint64_t sub_1DD73DA8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0EE10, &qword_1DD884D60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for OverridesCommon_OverrideDialog(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(0) + 36);
  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v7, 1, v8) == 1)
  {
    return sub_1DD6FC560(v7, &qword_1ECD0EE10, &qword_1DD884D60);
  }

  sub_1DD753308();
  sub_1DD753414(&qword_1ECD0EA80, type metadata accessor for OverridesCommon_OverrideDialog);
  sub_1DD874AD0();
  return sub_1DD753360(v11, type metadata accessor for OverridesCommon_OverrideDialog);
}

uint64_t sub_1DD73DC60(uint64_t a1)
{
  result = type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(0);
  v3 = (a1 + *(result + 40));
  if (v3[1])
  {
    v4 = *v3;
    return sub_1DD874AA0();
  }

  return result;
}

uint64_t sub_1DD73DCD8(uint64_t a1)
{
  result = type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(0);
  v3 = (a1 + *(result + 44));
  if (v3[1])
  {
    v4 = *v3;
    return sub_1DD874AA0();
  }

  return result;
}

void static ResponseGenerationOverrides_DialogGenerationOverride.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v3 = sub_1DD6E0CA8();
  v85 = type metadata accessor for OverridesCommon_OverrideDialog(v3);
  v4 = sub_1DD6DE1C4(v85);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DE4A8();
  v9 = v8 - v7;
  v10 = sub_1DD710A9C(&qword_1ECD0EE10, &qword_1DD884D60);
  sub_1DD6DEA10(v10);
  v12 = *(v11 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v13);
  v84 = &v80 - v14;
  v15 = sub_1DD710A9C(&qword_1ECD0EE18, &qword_1DD87B7F0);
  sub_1DD6DE1C4(v15);
  v17 = *(v16 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD6FE1B0();
  v19 = type metadata accessor for OverridesCommon_ContextPredicate(0);
  v20 = sub_1DD6DE1C4(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1DD6DE4A8();
  v25 = v24 - v23;
  v26 = sub_1DD710A9C(&qword_1ECD0EE20, &unk_1DD87DF20);
  sub_1DD6DEA10(v26);
  v28 = *(v27 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v80 - v30;
  v32 = sub_1DD710A9C(&qword_1ECD0EE28, &qword_1DD87B7F8);
  sub_1DD6DE1C4(v32);
  v34 = *(v33 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v80 - v36;
  v38 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v38 && (sub_1DD875A30() & 1) == 0)
  {
    goto LABEL_56;
  }

  v39 = *(v1 + 40);
  v40 = *(v0 + 40);
  if (v39)
  {
    if (!v40)
    {
      goto LABEL_56;
    }

    v41 = *(v1 + 32) == *(v0 + 32) && v39 == v40;
    if (!v41 && (sub_1DD875A30() & 1) == 0)
    {
      goto LABEL_56;
    }
  }

  else if (v40)
  {
    goto LABEL_56;
  }

  if (*(v1 + 16) != *(v0 + 16))
  {
    goto LABEL_56;
  }

  v83 = v2;
  v81 = v9;
  v82 = type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(0);
  v42 = *(v82 + 32);
  v43 = *(v32 + 48);
  sub_1DD7533B8();
  sub_1DD7533B8();
  sub_1DD6DE1FC(v37, 1, v19);
  if (v38)
  {
    sub_1DD6DE1FC(&v37[v43], 1, v19);
    if (v38)
    {
      sub_1DD6FC560(v37, &qword_1ECD0EE20, &unk_1DD87DF20);
      goto LABEL_27;
    }

LABEL_24:
    v45 = &qword_1ECD0EE28;
    v46 = &qword_1DD87B7F8;
    v47 = v37;
LABEL_25:
    sub_1DD6FC560(v47, v45, v46);
    goto LABEL_56;
  }

  sub_1DD7533B8();
  sub_1DD6DE1FC(&v37[v43], 1, v19);
  if (v44)
  {
    sub_1DD753360(v31, type metadata accessor for OverridesCommon_ContextPredicate);
    goto LABEL_24;
  }

  sub_1DD753308();
  v48 = static OverridesCommon_ContextPredicate.== infix(_:_:)();
  sub_1DD753360(v25, type metadata accessor for OverridesCommon_ContextPredicate);
  v49 = sub_1DD6FF97C();
  sub_1DD753360(v49, v50);
  sub_1DD6FC560(v37, &qword_1ECD0EE20, &unk_1DD87DF20);
  if ((v48 & 1) == 0)
  {
    goto LABEL_56;
  }

LABEL_27:
  v51 = *(v1 + 24);
  v52 = *(v0 + 24);
  sub_1DD71705C();
  if ((v53 & 1) == 0)
  {
    goto LABEL_56;
  }

  v55 = v82;
  v54 = v83;
  v56 = *(v82 + 36);
  v57 = *(v15 + 48);
  sub_1DD6F9A70();
  sub_1DD7533B8();
  sub_1DD6F9A70();
  v58 = v54;
  sub_1DD7533B8();
  v59 = v85;
  sub_1DD6DE1FC(v54, 1, v85);
  if (v38)
  {
    sub_1DD6DE1FC(v54 + v57, 1, v59);
    if (v38)
    {
      sub_1DD6FC560(v54, &qword_1ECD0EE10, &qword_1DD884D60);
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  v60 = v84;
  sub_1DD7533B8();
  sub_1DD6DE1FC(v58 + v57, 1, v59);
  if (v61)
  {
    sub_1DD753360(v60, type metadata accessor for OverridesCommon_OverrideDialog);
LABEL_36:
    v45 = &qword_1ECD0EE18;
    v46 = &qword_1DD87B7F0;
    v47 = v58;
    goto LABEL_25;
  }

  v62 = v81;
  sub_1DD753308();
  v63 = static OverridesCommon_OverrideDialog.== infix(_:_:)();
  sub_1DD753360(v62, type metadata accessor for OverridesCommon_OverrideDialog);
  sub_1DD753360(v60, type metadata accessor for OverridesCommon_OverrideDialog);
  sub_1DD6FC560(v58, &qword_1ECD0EE10, &qword_1DD884D60);
  if ((v63 & 1) == 0)
  {
    goto LABEL_56;
  }

LABEL_38:
  v64 = v55[10];
  sub_1DD75371C();
  if (v65)
  {
    if (!v66)
    {
      goto LABEL_56;
    }

    v69 = *v67 == *v68 && v65 == v66;
    if (!v69 && (sub_1DD875A30() & 1) == 0)
    {
      goto LABEL_56;
    }
  }

  else if (v66)
  {
    goto LABEL_56;
  }

  v70 = v55[11];
  sub_1DD75371C();
  if (v71)
  {
    if (v72)
    {
      v75 = *v73 == *v74 && v71 == v72;
      if (v75 || (sub_1DD875A30() & 1) != 0)
      {
        goto LABEL_54;
      }
    }

LABEL_56:
    v79 = 0;
    goto LABEL_57;
  }

  if (v72)
  {
    goto LABEL_56;
  }

LABEL_54:
  v76 = v55[12];
  sub_1DD874910();
  sub_1DD6E1448();
  sub_1DD753414(v77, v78);
  v79 = sub_1DD6E2124();
LABEL_57:
  sub_1DD6E0CCC(v79);
  sub_1DD6DFED0();
}

uint64_t sub_1DD73E344(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1DD875B20();
  a1(0);
  sub_1DD753414(a2, a3);
  sub_1DD8750C0();
  return sub_1DD875B60();
}

uint64_t (*sub_1DD73E3F8(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 48);
  return result;
}

uint64_t sub_1DD73E44C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F208, type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD73E4CC(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1EE015D58, type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD73E53C()
{
  sub_1DD753414(&qword_1EE015D58, type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride);

  return sub_1DD874A70();
}

uint64_t sub_1DD73E5D4()
{
  v0 = sub_1DD874B10();
  sub_1DD732C90(v0, qword_1EE014B48);
  sub_1DD6E1224(v0, qword_1EE014B48);
  sub_1DD710A9C(&qword_1ECD0EB08, &qword_1DD87B528);
  v1 = (sub_1DD710A9C(&qword_1ECD0EB10, &qword_1DD87B530) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD8782F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "operator";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1DD874AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1DD874AF0();
}

uint64_t ResponseGenerationOverrides_IntPredicate.decodeMessage<A>(decoder:)()
{
  sub_1DD6E054C();
  while (1)
  {
    result = sub_1DD753698();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_1DD6E0D68();
      sub_1DD874A00();
    }

    else if (result == 1)
    {
      sub_1DD6E0824();
      sub_1DD73E824();
    }
  }

  return result;
}

uint64_t ResponseGenerationOverrides_IntPredicate.traverse<A>(visitor:)()
{
  sub_1DD6DE2D4();
  if (!*v0 || (v5 = *v0, sub_1DD7513A4(), sub_1DD6E6540(), result = sub_1DD874A90(), !v1))
  {
    if (!*(v2 + 4) || (sub_1DD6E58EC(), sub_1DD6E5F74(), result = sub_1DD874AB0(), !v1))
    {
      v4 = *(type metadata accessor for ResponseGenerationOverrides_IntPredicate(0) + 24);
      return sub_1DD6DDF78();
    }
  }

  return result;
}

uint64_t static ResponseGenerationOverrides_IntPredicate.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_1DD6E1F34();
  if (*(v2 + 4) != *(v3 + 4))
  {
    return 0;
  }

  v4 = *(type metadata accessor for ResponseGenerationOverrides_IntPredicate(0) + 24);
  sub_1DD874910();
  sub_1DD6E1448();
  sub_1DD753414(v5, v6);
  return sub_1DD6E2124() & 1;
}

uint64_t sub_1DD73EA68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F200, type metadata accessor for ResponseGenerationOverrides_IntPredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD73EAE8(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1EE014AF0, type metadata accessor for ResponseGenerationOverrides_IntPredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD73EB58()
{
  sub_1DD753414(&qword_1EE014AF0, type metadata accessor for ResponseGenerationOverrides_IntPredicate);

  return sub_1DD874A70();
}

uint64_t sub_1DD73EBD8()
{
  v0 = sub_1DD874B10();
  sub_1DD732C90(v0, qword_1EE014B28);
  sub_1DD6E1224(v0, qword_1EE014B28);
  sub_1DD710A9C(&qword_1ECD0EB08, &qword_1DD87B528);
  v1 = (sub_1DD710A9C(&qword_1ECD0EB10, &qword_1DD87B530) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD87AAA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNSPECIFIED";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1DD874AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "GREATER_OR_EQUAL_THAN";
  *(v10 + 8) = 21;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "EQUAL_TO";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "LESS_OR_EQUAL_THAN";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return sub_1DD874AF0();
}

uint64_t sub_1DD73EE64()
{
  v0 = sub_1DD874B10();
  sub_1DD732C90(v0, qword_1ECD0EBD0);
  sub_1DD6E1224(v0, qword_1ECD0EBD0);
  sub_1DD710A9C(&qword_1ECD0EB08, &qword_1DD87B528);
  v1 = (sub_1DD710A9C(&qword_1ECD0EB10, &qword_1DD87B530) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD87AC20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "values";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1DD874AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "size";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "no_extra_values";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1DD874AF0();
}

void ResponseGenerationOverrides_ListPredicate.decodeMessage<A>(decoder:)()
{
  sub_1DD6E054C();
  while (1)
  {
    v1 = sub_1DD753698();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        sub_1DD6E0D68();
        sub_1DD8749C0();
        break;
      case 2:
        sub_1DD6E95BC();
        sub_1DD6E0824();
        sub_1DD73F7E8();
        break;
      case 1:
        sub_1DD6E0824();
        sub_1DD73F168();
        break;
    }
  }
}

void sub_1DD73F168()
{
  sub_1DD6DED2C();
  v0 = sub_1DD6E1F78();
  v1(v0);
  sub_1DD753678();
  sub_1DD6DF0B4();
  sub_1DD874A10();
  sub_1DD6E0C78();
}

void ResponseGenerationOverrides_ListPredicate.traverse<A>(visitor:)()
{
  sub_1DD6FEAFC();
  sub_1DD6DE2D4();
  sub_1DD6E5CA0();
  if (!v2 || (type metadata accessor for OverridesCommon_StringPredicate(0), sub_1DD6FADAC(), sub_1DD753414(v3, v4), sub_1DD6FF79C(), sub_1DD6E6540(), sub_1DD874AC0(), !v0))
  {
    sub_1DD6E95BC();
    sub_1DD6DDFB8();
    sub_1DD73F970();
    if (!v0)
    {
      if (*(v1 + 8) == 1)
      {
        sub_1DD6E58EC();
        sub_1DD6E5F74();
        sub_1DD874A80();
      }

      v5 = *(type metadata accessor for ResponseGenerationOverrides_ListPredicate(0) + 28);
      sub_1DD6DDF78();
    }
  }

  sub_1DD6E7244();
}

uint64_t sub_1DD73F35C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F1F8, type metadata accessor for ResponseGenerationOverrides_ListPredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD73F3DC(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1ECD0EF60, type metadata accessor for ResponseGenerationOverrides_ListPredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD73F44C()
{
  sub_1DD753414(&qword_1ECD0EF60, type metadata accessor for ResponseGenerationOverrides_ListPredicate);

  return sub_1DD874A70();
}

uint64_t sub_1DD73F4E4()
{
  v0 = sub_1DD874B10();
  sub_1DD732C90(v0, qword_1ECD0EBE8);
  sub_1DD6E1224(v0, qword_1ECD0EBE8);
  sub_1DD710A9C(&qword_1ECD0EB08, &qword_1DD87B528);
  v1 = (sub_1DD710A9C(&qword_1ECD0EB10, &qword_1DD87B530) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD87AC20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "items";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1DD874AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "size";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "no_extra_keys";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1DD874AF0();
}

void ResponseGenerationOverrides_KeyValuePredicate.decodeMessage<A>(decoder:)()
{
  sub_1DD6E054C();
  while (1)
  {
    v1 = sub_1DD753698();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        sub_1DD6E0D68();
        sub_1DD8749C0();
        break;
      case 2:
        sub_1DD753614();
        sub_1DD6E0824();
        sub_1DD73F7E8();
        break;
      case 1:
        sub_1DD6E0824();
        sub_1DD73F168();
        break;
    }
  }
}

void sub_1DD73F7E8()
{
  sub_1DD6FEAFC();
  v1 = *(v0(0) + 24);
  type metadata accessor for ResponseGenerationOverrides_IntPredicate(0);
  sub_1DD7029CC();
  sub_1DD753414(v2, v3);
  sub_1DD874A20();
  sub_1DD6E7244();
}

void ResponseGenerationOverrides_KeyValuePredicate.traverse<A>(visitor:)()
{
  sub_1DD6FEAFC();
  sub_1DD6DE2D4();
  sub_1DD6E5CA0();
  if (!v2 || (type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ItemPredicate(0), sub_1DD753414(&qword_1ECD0EE58, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ItemPredicate), sub_1DD6FF79C(), sub_1DD6E6540(), sub_1DD874AC0(), !v0))
  {
    sub_1DD753614();
    sub_1DD6DDFB8();
    sub_1DD73F970();
    if (!v0)
    {
      if (*(v1 + 8) == 1)
      {
        sub_1DD6E58EC();
        sub_1DD6E5F74();
        sub_1DD874A80();
      }

      v3 = *(type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate(0) + 28);
      sub_1DD6DDF78();
    }
  }

  sub_1DD6E7244();
}

void sub_1DD73F970()
{
  sub_1DD6DED2C();
  v2 = v1;
  v3 = sub_1DD710A9C(&qword_1ECD0EE40, &unk_1DD87DF30);
  sub_1DD6DEA10(v3);
  v5 = *(v4 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1DD6E0CB8();
  v8 = type metadata accessor for ResponseGenerationOverrides_IntPredicate(v7);
  v9 = sub_1DD6DE1C4(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6DE4A8();
  v12 = *(v2(0) + 24);
  sub_1DD7533B8();
  sub_1DD6E10F4();
  if (v13)
  {
    sub_1DD6FC560(v0, &qword_1ECD0EE40, &unk_1DD87DF30);
  }

  else
  {
    sub_1DD753308();
    sub_1DD7029CC();
    sub_1DD753414(v14, v15);
    sub_1DD874AD0();
    sub_1DD7536B0();
  }

  sub_1DD7536FC();
  sub_1DD6E0C78();
}

void sub_1DD73FB18()
{
  sub_1DD6DEB38();
  v6 = v5;
  v8 = v7;
  v9 = sub_1DD6ED7A4();
  v10 = type metadata accessor for ResponseGenerationOverrides_IntPredicate(v9);
  v11 = sub_1DD6DE1C4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6DE4A8();
  sub_1DD6FE1B0();
  v14 = sub_1DD710A9C(&qword_1ECD0EE40, &unk_1DD87DF30);
  sub_1DD6DEA10(v14);
  v16 = *(v15 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6DEBA0();
  v18 = sub_1DD710A9C(&qword_1ECD0EE48, &qword_1DD87B800);
  sub_1DD6DE1C4(v18);
  v20 = *(v19 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1DD6DEA6C();
  if ((v8(*v1, *v0) & 1) == 0)
  {
    goto LABEL_20;
  }

  v35 = v6(0);
  v22 = *(v35 + 24);
  v23 = *(v18 + 48);
  sub_1DD75366C();
  sub_1DD7533B8();
  sub_1DD75366C();
  sub_1DD7533B8();
  sub_1DD6E26E4(v2);
  if (v28)
  {
    sub_1DD6E26E4(v2 + v23);
    if (v28)
    {
      sub_1DD6FC560(v2, &qword_1ECD0EE40, &unk_1DD87DF30);
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  sub_1DD6DED5C();
  sub_1DD7533B8();
  sub_1DD6E26E4(v2 + v23);
  if (v28)
  {
    sub_1DD753360(v4, type metadata accessor for ResponseGenerationOverrides_IntPredicate);
LABEL_12:
    v29 = &qword_1ECD0EE48;
    v30 = &qword_1DD87B800;
LABEL_19:
    sub_1DD6FC560(v2, v29, v30);
    goto LABEL_20;
  }

  sub_1DD753308();
  sub_1DD6F37F4();
  if (!v31 || *(v4 + 4) != *(v3 + 4))
  {
    sub_1DD753360(v3, type metadata accessor for ResponseGenerationOverrides_IntPredicate);
    sub_1DD7536E4();
    v29 = &qword_1ECD0EE40;
    v30 = &unk_1DD87DF30;
    goto LABEL_19;
  }

  sub_1DD700B70();
  sub_1DD6E1448();
  sub_1DD753414(v32, v33);
  v34 = sub_1DD75362C();
  sub_1DD753360(v3, type metadata accessor for ResponseGenerationOverrides_IntPredicate);
  sub_1DD753360(v4, type metadata accessor for ResponseGenerationOverrides_IntPredicate);
  sub_1DD6FC560(v2, &qword_1ECD0EE40, &unk_1DD87DF30);
  if ((v34 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (*(v1 + 8) != *(v0 + 8))
  {
LABEL_20:
    v27 = 0;
    goto LABEL_21;
  }

  v24 = *(v35 + 28);
  sub_1DD874910();
  sub_1DD6E1448();
  sub_1DD753414(v25, v26);
  v27 = sub_1DD75364C();
LABEL_21:
  sub_1DD6E0CCC(v27);
  sub_1DD6DFED0();
}

uint64_t sub_1DD73FED4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F1F0, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD73FF54(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1ECD0EF78, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD73FFC4()
{
  sub_1DD753414(&qword_1ECD0EF78, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate);

  return sub_1DD874A70();
}

uint64_t sub_1DD740094()
{
  v0 = sub_1DD874B10();
  sub_1DD732C90(v0, qword_1ECD0EC10);
  sub_1DD6E1224(v0, qword_1ECD0EC10);
  sub_1DD710A9C(&qword_1ECD0EB08, &qword_1DD87B528);
  v1 = (sub_1DD710A9C(&qword_1ECD0EB10, &qword_1DD87B530) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD8782F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "any_value_predicate";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1DD874AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "exact_value_predicate";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_1DD874AF0();
}

uint64_t sub_1DD7402C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.AnyValuePredicate(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1DD710A9C(&qword_1ECD0E2F0, &qword_1DD878200);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_KeyPredicateEnum(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = sub_1DD710A9C(&qword_1ECD0F290, &qword_1DD87DF08);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  sub_1DD6E5E68(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1DD7533B8();
  v32 = sub_1DD6E5ED0(v12, 1, v13);
  v33 = v13;
  if (v32 == 1)
  {
    sub_1DD6FC560(v12, &qword_1ECD0E2F0, &qword_1DD878200);
  }

  else
  {
    sub_1DD753308();
    sub_1DD753308();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1DD753360(v16, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_KeyPredicateEnum);
    }

    else
    {
      sub_1DD6FC560(v24, &qword_1ECD0F290, &qword_1DD87DF08);
      sub_1DD753308();
      sub_1DD753308();
      sub_1DD6E5E68(v24, 0, 1, v5);
    }
  }

  sub_1DD753414(&qword_1ECD0EFA8, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.AnyValuePredicate);
  v25 = v35;
  sub_1DD874A20();
  if (v25)
  {
    v26 = v24;
    return sub_1DD6FC560(v26, &qword_1ECD0F290, &qword_1DD87DF08);
  }

  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v21, 1, v5) == 1)
  {
    sub_1DD6FC560(v24, &qword_1ECD0F290, &qword_1DD87DF08);
    v26 = v21;
    return sub_1DD6FC560(v26, &qword_1ECD0F290, &qword_1DD87DF08);
  }

  sub_1DD753308();
  if (v32 != 1)
  {
    sub_1DD8749B0();
  }

  v28 = v33;
  sub_1DD6FC560(v24, &qword_1ECD0F290, &qword_1DD87DF08);
  v29 = v31;
  sub_1DD6FC560(v31, &qword_1ECD0E2F0, &qword_1DD878200);
  sub_1DD753308();
  swift_storeEnumTagMultiPayload();
  return sub_1DD6E5E68(v29, 0, 1, v28);
}

uint64_t sub_1DD7407B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.ExactValuePredicate(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1DD710A9C(&qword_1ECD0E2F0, &qword_1DD878200);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_KeyPredicateEnum(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = sub_1DD710A9C(&qword_1ECD0F298, &unk_1DD87DF10);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  sub_1DD6E5E68(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1DD7533B8();
  v32 = sub_1DD6E5ED0(v12, 1, v13);
  v33 = v13;
  if (v32 == 1)
  {
    sub_1DD6FC560(v12, &qword_1ECD0E2F0, &qword_1DD878200);
  }

  else
  {
    sub_1DD753308();
    sub_1DD753308();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1DD6FC560(v24, &qword_1ECD0F298, &unk_1DD87DF10);
      sub_1DD753308();
      sub_1DD753308();
      sub_1DD6E5E68(v24, 0, 1, v5);
    }

    else
    {
      sub_1DD753360(v16, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_KeyPredicateEnum);
    }
  }

  sub_1DD753414(&qword_1ECD0EFC0, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.ExactValuePredicate);
  v25 = v35;
  sub_1DD874A20();
  if (v25)
  {
    v26 = v24;
    return sub_1DD6FC560(v26, &qword_1ECD0F298, &unk_1DD87DF10);
  }

  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v21, 1, v5) == 1)
  {
    sub_1DD6FC560(v24, &qword_1ECD0F298, &unk_1DD87DF10);
    v26 = v21;
    return sub_1DD6FC560(v26, &qword_1ECD0F298, &unk_1DD87DF10);
  }

  sub_1DD753308();
  if (v32 != 1)
  {
    sub_1DD8749B0();
  }

  v28 = v33;
  sub_1DD6FC560(v24, &qword_1ECD0F298, &unk_1DD87DF10);
  v29 = v31;
  sub_1DD6FC560(v31, &qword_1ECD0E2F0, &qword_1DD878200);
  sub_1DD753308();
  swift_storeEnumTagMultiPayload();
  return sub_1DD6E5E68(v29, 0, 1, v28);
}

uint64_t ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.traverse<A>(visitor:)()
{
  sub_1DD6FAAA0();
  v2 = sub_1DD710A9C(&qword_1ECD0E2F0, &qword_1DD878200);
  sub_1DD6DEA10(v2);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6E3824();
  v6 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_KeyPredicateEnum(0);
  sub_1DD6E4068(v6);
  if (v7)
  {
    goto LABEL_6;
  }

  sub_1DD6ED130();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1DD6DF35C();
    sub_1DD740FA0(v8, v9, v10, v11);
  }

  else
  {
    v12 = sub_1DD6DF35C();
    sub_1DD740D98(v12, v13, v14, v15);
  }

  sub_1DD6F44B0();
  result = sub_1DD753360(v1, v16);
  if (!v0)
  {
LABEL_6:
    v18 = *(type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate(0) + 20);
    return sub_1DD6FBDBC();
  }

  return result;
}

uint64_t sub_1DD740D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E2F0, &qword_1DD878200);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.AnyValuePredicate(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD7533B8();
  v12 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_KeyPredicateEnum(0);
  if (sub_1DD6E5ED0(v7, 1, v12) == 1)
  {
    result = sub_1DD6FC560(v7, &qword_1ECD0E2F0, &qword_1DD878200);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1DD753308();
      sub_1DD753414(&qword_1ECD0EFA8, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.AnyValuePredicate);
      sub_1DD874AD0();
      return sub_1DD753360(v11, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.AnyValuePredicate);
    }

    result = sub_1DD753360(v7, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_KeyPredicateEnum);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD740FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E2F0, &qword_1DD878200);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.ExactValuePredicate(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD7533B8();
  v12 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_KeyPredicateEnum(0);
  if (sub_1DD6E5ED0(v7, 1, v12) == 1)
  {
    result = sub_1DD6FC560(v7, &qword_1ECD0E2F0, &qword_1DD878200);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1DD753308();
      sub_1DD753414(&qword_1ECD0EFC0, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.ExactValuePredicate);
      sub_1DD874AD0();
      return sub_1DD753360(v11, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.ExactValuePredicate);
    }

    result = sub_1DD753360(v7, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_KeyPredicateEnum);
  }

  __break(1u);
  return result;
}

void static ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v3 = sub_1DD6E0CA8();
  v4 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_KeyPredicateEnum(v3);
  v5 = sub_1DD6DE1C4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DF39C();
  v8 = sub_1DD6ED130();
  v10 = sub_1DD710A9C(v8, v9);
  sub_1DD6DEA10(v10);
  v12 = *(v11 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6DEBA0();
  v14 = sub_1DD710A9C(&qword_1ECD0E2F8, &qword_1DD878208);
  sub_1DD6DEA10(v14);
  v16 = *(v15 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6E0D94(v18);
  sub_1DD6E5D90();
  sub_1DD6E0848(v0);
  if (v19)
  {
    sub_1DD6E0848(v0 + v2);
    if (v19)
    {
      sub_1DD6FC560(v0, &qword_1ECD0E2F0, &qword_1DD878200);
LABEL_12:
      v28 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate(0);
      sub_1DD7536CC(v28);
      sub_1DD6E1448();
      sub_1DD753414(v29, v30);
      v21 = sub_1DD6E2124();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  sub_1DD6DED5C();
  sub_1DD7533B8();
  sub_1DD6E0848(v0 + v2);
  if (v19)
  {
    sub_1DD6F44B0();
    sub_1DD753360(v1, v20);
LABEL_9:
    sub_1DD6FC560(v0, &qword_1ECD0E2F8, &qword_1DD878208);
    goto LABEL_10;
  }

  sub_1DD753308();
  sub_1DD6EFF50();
  static ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_KeyPredicateEnum.== infix(_:_:)();
  v23 = v22;
  v24 = sub_1DD6FF97C();
  sub_1DD753360(v24, v25);
  v26 = sub_1DD6DDEDC();
  sub_1DD753360(v26, v27);
  sub_1DD6FC560(v0, &qword_1ECD0E2F0, &qword_1DD878200);
  if (v23)
  {
    goto LABEL_12;
  }

LABEL_10:
  v21 = 0;
LABEL_13:
  sub_1DD6E0CCC(v21);
  sub_1DD6DFED0();
}

uint64_t sub_1DD74142C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F1E8, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD7414AC(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1ECD0EF90, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD74151C()
{
  sub_1DD753414(&qword_1ECD0EF90, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate);

  return sub_1DD874A70();
}

uint64_t sub_1DD74159C()
{
  if (qword_1ECD0DEB0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECD0EC00;
  v2 = *algn_1ECD0EC08;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1E12B4C10](0xD000000000000012, 0x80000001DD8B5960);

  qword_1ECD0EC28 = v1;
  unk_1ECD0EC30 = v2;
  return result;
}

uint64_t ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.AnyValuePredicate.decodeMessage<A>(decoder:)()
{
  do
  {
    result = sub_1DD8749A0();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t sub_1DD74174C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F1E0, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.AnyValuePredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD7417CC(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1ECD0EFA8, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.AnyValuePredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD74183C()
{
  sub_1DD753414(&qword_1ECD0EFA8, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.AnyValuePredicate);

  return sub_1DD874A70();
}

uint64_t sub_1DD7418B8()
{
  if (qword_1ECD0DEB0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECD0EC00;
  v2 = *algn_1ECD0EC08;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1E12B4C10](0xD000000000000014, 0x80000001DD8B59C0);

  qword_1ECD0EC50 = v1;
  *algn_1ECD0EC58 = v2;
  return result;
}

uint64_t ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.ExactValuePredicate.traverse<A>(visitor:)()
{
  sub_1DD6DE2D4();
  sub_1DD6EE854();
  if (!v1 || (sub_1DD6E58EC(), result = sub_1DD874AA0(), !v0))
  {
    v3 = *(type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.ExactValuePredicate(0) + 20);
    return sub_1DD6DDF78();
  }

  return result;
}

uint64_t static ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.ExactValuePredicate.== infix(_:_:)()
{
  sub_1DD6E1F34();
  v3 = *v2 == *v0 && *(v1 + 8) == v0[1];
  if (!v3 && (sub_1DD875A30() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.ExactValuePredicate(0);
  sub_1DD7536CC(v4);
  sub_1DD6E1448();
  sub_1DD753414(v5, v6);
  return sub_1DD6E2124() & 1;
}

uint64_t sub_1DD741B74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F1D8, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.ExactValuePredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD741BF4(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1ECD0EFC0, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.ExactValuePredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD741C64()
{
  sub_1DD753414(&qword_1ECD0EFC0, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.ExactValuePredicate);

  return sub_1DD874A70();
}

uint64_t sub_1DD741D34()
{
  v0 = sub_1DD874B10();
  sub_1DD732C90(v0, qword_1ECD0EC88);
  sub_1DD6E1224(v0, qword_1ECD0EC88);
  sub_1DD710A9C(&qword_1ECD0EB08, &qword_1DD87B528);
  v1 = (sub_1DD710A9C(&qword_1ECD0EB10, &qword_1DD87B530) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD8782F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "any_value_predicate";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1DD874AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "string_predicate";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_1DD874AF0();
}

uint64_t sub_1DD741F60(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  while (1)
  {
    result = sub_1DD8749A0();
    if (v5 || (v9 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v11 = sub_1DD753708();
      a5(v11);
    }

    else if (result == 1)
    {
      v10 = sub_1DD753708();
      a4(v10);
    }
  }

  return result;
}

uint64_t sub_1DD741FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate.AnyValuePredicate(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1DD710A9C(&qword_1ECD0E2D0, &qword_1DD8781E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_ValuePredicateEnum(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = sub_1DD710A9C(&qword_1ECD0F288, &qword_1DD87DF00);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  sub_1DD6E5E68(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1DD7533B8();
  v32 = sub_1DD6E5ED0(v12, 1, v13);
  v33 = v13;
  if (v32 == 1)
  {
    sub_1DD6FC560(v12, &qword_1ECD0E2D0, &qword_1DD8781E0);
  }

  else
  {
    sub_1DD753308();
    sub_1DD753308();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1DD753360(v16, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_ValuePredicateEnum);
    }

    else
    {
      sub_1DD6FC560(v24, &qword_1ECD0F288, &qword_1DD87DF00);
      sub_1DD753308();
      sub_1DD753308();
      sub_1DD6E5E68(v24, 0, 1, v5);
    }
  }

  sub_1DD753414(&qword_1ECD0EFF0, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate.AnyValuePredicate);
  v25 = v35;
  sub_1DD874A20();
  if (v25)
  {
    v26 = v24;
    return sub_1DD6FC560(v26, &qword_1ECD0F288, &qword_1DD87DF00);
  }

  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v21, 1, v5) == 1)
  {
    sub_1DD6FC560(v24, &qword_1ECD0F288, &qword_1DD87DF00);
    v26 = v21;
    return sub_1DD6FC560(v26, &qword_1ECD0F288, &qword_1DD87DF00);
  }

  sub_1DD753308();
  if (v32 != 1)
  {
    sub_1DD8749B0();
  }

  v28 = v33;
  sub_1DD6FC560(v24, &qword_1ECD0F288, &qword_1DD87DF00);
  v29 = v31;
  sub_1DD6FC560(v31, &qword_1ECD0E2D0, &qword_1DD8781E0);
  sub_1DD753308();
  swift_storeEnumTagMultiPayload();
  return sub_1DD6E5E68(v29, 0, 1, v28);
}

uint64_t sub_1DD7424E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for OverridesCommon_StringPredicate(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1DD710A9C(&qword_1ECD0E2D0, &qword_1DD8781E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_ValuePredicateEnum(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = sub_1DD710A9C(&qword_1ECD0E9E0, &unk_1DD87B550);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  sub_1DD6E5E68(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1DD7533B8();
  v32 = sub_1DD6E5ED0(v12, 1, v13);
  v33 = v13;
  if (v32 == 1)
  {
    sub_1DD6FC560(v12, &qword_1ECD0E2D0, &qword_1DD8781E0);
  }

  else
  {
    sub_1DD753308();
    sub_1DD753308();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1DD6FC560(v24, &qword_1ECD0E9E0, &unk_1DD87B550);
      sub_1DD753308();
      sub_1DD753308();
      sub_1DD6E5E68(v24, 0, 1, v5);
    }

    else
    {
      sub_1DD753360(v16, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_ValuePredicateEnum);
    }
  }

  sub_1DD753414(&qword_1ECD0EA58, type metadata accessor for OverridesCommon_StringPredicate);
  v25 = v35;
  sub_1DD874A20();
  if (v25)
  {
    v26 = v24;
    return sub_1DD6FC560(v26, &qword_1ECD0E9E0, &unk_1DD87B550);
  }

  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v21, 1, v5) == 1)
  {
    sub_1DD6FC560(v24, &qword_1ECD0E9E0, &unk_1DD87B550);
    v26 = v21;
    return sub_1DD6FC560(v26, &qword_1ECD0E9E0, &unk_1DD87B550);
  }

  sub_1DD753308();
  if (v32 != 1)
  {
    sub_1DD8749B0();
  }

  v28 = v33;
  sub_1DD6FC560(v24, &qword_1ECD0E9E0, &unk_1DD87B550);
  v29 = v31;
  sub_1DD6FC560(v31, &qword_1ECD0E2D0, &qword_1DD8781E0);
  sub_1DD753308();
  swift_storeEnumTagMultiPayload();
  return sub_1DD6E5E68(v29, 0, 1, v28);
}

uint64_t ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate.traverse<A>(visitor:)()
{
  sub_1DD6FAAA0();
  v2 = sub_1DD710A9C(&qword_1ECD0E2D0, &qword_1DD8781E0);
  sub_1DD6DEA10(v2);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6E3824();
  v6 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_ValuePredicateEnum(0);
  sub_1DD6E4068(v6);
  if (v7)
  {
    goto LABEL_6;
  }

  sub_1DD6ED130();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1DD6DF35C();
    sub_1DD742CCC(v8, v9, v10, v11);
  }

  else
  {
    v12 = sub_1DD6DF35C();
    sub_1DD742AC4(v12, v13, v14, v15);
  }

  sub_1DD700D3C();
  result = sub_1DD753360(v1, v16);
  if (!v0)
  {
LABEL_6:
    v18 = *(type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate(0) + 20);
    return sub_1DD6FBDBC();
  }

  return result;
}

uint64_t sub_1DD742AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E2D0, &qword_1DD8781E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate.AnyValuePredicate(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD7533B8();
  v12 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_ValuePredicateEnum(0);
  if (sub_1DD6E5ED0(v7, 1, v12) == 1)
  {
    result = sub_1DD6FC560(v7, &qword_1ECD0E2D0, &qword_1DD8781E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1DD753308();
      sub_1DD753414(&qword_1ECD0EFF0, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate.AnyValuePredicate);
      sub_1DD874AD0();
      return sub_1DD753360(v11, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate.AnyValuePredicate);
    }

    result = sub_1DD753360(v7, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_ValuePredicateEnum);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD742CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E2D0, &qword_1DD8781E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for OverridesCommon_StringPredicate(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD7533B8();
  v12 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_ValuePredicateEnum(0);
  if (sub_1DD6E5ED0(v7, 1, v12) == 1)
  {
    result = sub_1DD6FC560(v7, &qword_1ECD0E2D0, &qword_1DD8781E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1DD753308();
      sub_1DD753414(&qword_1ECD0EA58, type metadata accessor for OverridesCommon_StringPredicate);
      sub_1DD874AD0();
      return sub_1DD753360(v11, type metadata accessor for OverridesCommon_StringPredicate);
    }

    result = sub_1DD753360(v7, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_ValuePredicateEnum);
  }

  __break(1u);
  return result;
}

void static ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v3 = sub_1DD6E0CA8();
  v4 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_ValuePredicateEnum(v3);
  v5 = sub_1DD6DE1C4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DF39C();
  v8 = sub_1DD6ED130();
  v10 = sub_1DD710A9C(v8, v9);
  sub_1DD6DEA10(v10);
  v12 = *(v11 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6DEBA0();
  v14 = sub_1DD710A9C(&qword_1ECD0E2D8, &qword_1DD8781E8);
  sub_1DD6DEA10(v14);
  v16 = *(v15 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6E0D94(v18);
  sub_1DD6E5D90();
  sub_1DD6E0848(v0);
  if (v19)
  {
    sub_1DD6E0848(v0 + v2);
    if (v19)
    {
      sub_1DD6FC560(v0, &qword_1ECD0E2D0, &qword_1DD8781E0);
LABEL_12:
      v28 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate(0);
      sub_1DD7536CC(v28);
      sub_1DD6E1448();
      sub_1DD753414(v29, v30);
      v21 = sub_1DD6E2124();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  sub_1DD6DED5C();
  sub_1DD7533B8();
  sub_1DD6E0848(v0 + v2);
  if (v19)
  {
    sub_1DD700D3C();
    sub_1DD753360(v1, v20);
LABEL_9:
    sub_1DD6FC560(v0, &qword_1ECD0E2D8, &qword_1DD8781E8);
    goto LABEL_10;
  }

  sub_1DD753308();
  sub_1DD6EFF50();
  static ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_ValuePredicateEnum.== infix(_:_:)();
  v23 = v22;
  v24 = sub_1DD6FF97C();
  sub_1DD753360(v24, v25);
  v26 = sub_1DD6DDEDC();
  sub_1DD753360(v26, v27);
  sub_1DD6FC560(v0, &qword_1ECD0E2D0, &qword_1DD8781E0);
  if (v23)
  {
    goto LABEL_12;
  }

LABEL_10:
  v21 = 0;
LABEL_13:
  sub_1DD6E0CCC(v21);
  sub_1DD6DFED0();
}

uint64_t sub_1DD743158(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F1D0, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD7431D8(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1ECD0EFD8, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD743248()
{
  sub_1DD753414(&qword_1ECD0EFD8, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate);

  return sub_1DD874A70();
}

uint64_t sub_1DD7432C8()
{
  if (qword_1ECD0DEE0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECD0EC78;
  v2 = qword_1ECD0EC80;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1E12B4C10](0xD000000000000012, 0x80000001DD8B5960);

  qword_1ECD0ECA0 = v1;
  *algn_1ECD0ECA8 = v2;
  return result;
}

uint64_t _s16IntelligenceFlow45ResponseGenerationOverrides_KeyValuePredicateV0fH0V03AnygH0V2eeoiySbAG_AGtFZ_0()
{
  sub_1DD6E0CA8();
  sub_1DD874910();
  sub_1DD6E1448();
  sub_1DD753414(v0, v1);
  sub_1DD6FF79C();
  return sub_1DD8750F0() & 1;
}

uint64_t sub_1DD743484(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F1C8, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate.AnyValuePredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD743504(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1ECD0EFF0, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate.AnyValuePredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD743574()
{
  sub_1DD753414(&qword_1ECD0EFF0, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate.AnyValuePredicate);

  return sub_1DD874A70();
}

uint64_t sub_1DD743620(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x1E12B4C10](a2, a3);
  *a4 = 0xD00000000000002FLL;
  *a5 = 0x80000001DD8B51C0;
  return result;
}

uint64_t sub_1DD7436AC()
{
  v0 = sub_1DD874B10();
  sub_1DD732C90(v0, qword_1ECD0ECD8);
  sub_1DD6E1224(v0, qword_1ECD0ECD8);
  sub_1DD710A9C(&qword_1ECD0EB08, &qword_1DD87B528);
  v1 = (sub_1DD710A9C(&qword_1ECD0EB10, &qword_1DD87B530) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD8782F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key_predicate";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1DD874AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value_predicate";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_1DD874AF0();
}

void ResponseGenerationOverrides_KeyValuePredicate.ItemPredicate.decodeMessage<A>(decoder:)()
{
  sub_1DD6E054C();
  while (1)
  {
    v1 = sub_1DD753698();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      sub_1DD6E0824();
      sub_1DD743948();
    }

    else if (v1 == 1)
    {
      sub_1DD6E0824();
      sub_1DD744574();
    }
  }
}

uint64_t sub_1DD743948()
{
  v0 = *(type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ItemPredicate(0) + 20);
  type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate(0);
  sub_1DD753414(&qword_1ECD0EFD8, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate);
  return sub_1DD874A20();
}

uint64_t sub_1DD743A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E300, &qword_1DD878210);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v7, 1, v8) == 1)
  {
    return sub_1DD6FC560(v7, &qword_1ECD0E300, &qword_1DD878210);
  }

  sub_1DD753308();
  sub_1DD753414(&qword_1ECD0EF90, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate);
  sub_1DD874AD0();
  return sub_1DD753360(v11, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate);
}

uint64_t sub_1DD743C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E2E0, &qword_1DD8781F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ItemPredicate(0) + 20);
  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v7, 1, v8) == 1)
  {
    return sub_1DD6FC560(v7, &qword_1ECD0E2E0, &qword_1DD8781F0);
  }

  sub_1DD753308();
  sub_1DD753414(&qword_1ECD0EFD8, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate);
  sub_1DD874AD0();
  return sub_1DD753360(v11, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate);
}

void static ResponseGenerationOverrides_KeyValuePredicate.ItemPredicate.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v4 = v3;
  v57 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate(0);
  v5 = sub_1DD6DE1C4(v57);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DE4A8();
  v55[0] = v9 - v8;
  v10 = sub_1DD710A9C(&qword_1ECD0E2E0, &qword_1DD8781F0);
  sub_1DD6DEA10(v10);
  v12 = *(v11 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6E5D10(v14, v55[0]);
  v56 = sub_1DD710A9C(&qword_1ECD0E2E8, &qword_1DD8781F8);
  sub_1DD6DE1C4(v56);
  v16 = *(v15 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6DEA6C();
  v18 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate(0);
  v19 = sub_1DD6DE1C4(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1DD6DE4A8();
  v24 = v23 - v22;
  v25 = sub_1DD710A9C(&qword_1ECD0E300, &qword_1DD878210);
  sub_1DD6DEA10(v25);
  v27 = *(v26 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v28);
  v30 = v55 - v29;
  v31 = sub_1DD710A9C(&qword_1ECD0E308, qword_1DD878218);
  sub_1DD6DEA10(v31);
  v33 = *(v32 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1DD6E8774(v35);
  sub_1DD7533B8();
  v58 = v4;
  sub_1DD7533B8();
  sub_1DD6DE1FC(v2, 1, v18);
  if (v36)
  {
    sub_1DD6DE1FC(v2 + v1, 1, v18);
    if (v36)
    {
      sub_1DD6FC560(v2, &qword_1ECD0E300, &qword_1DD878210);
      goto LABEL_11;
    }

LABEL_9:
    v37 = &qword_1ECD0E308;
    v38 = qword_1DD878218;
    v39 = v2;
LABEL_20:
    sub_1DD6FC560(v39, v37, v38);
    goto LABEL_21;
  }

  sub_1DD7533B8();
  sub_1DD6DE1FC(v2 + v1, 1, v18);
  if (v36)
  {
    sub_1DD753360(v30, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate);
    goto LABEL_9;
  }

  sub_1DD753308();
  static ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.== infix(_:_:)();
  v41 = v40;
  sub_1DD753360(v24, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate);
  sub_1DD753360(v30, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate);
  sub_1DD6FC560(v2, &qword_1ECD0E300, &qword_1DD878210);
  if ((v41 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v42 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ItemPredicate(0);
  v43 = *(v42 + 20);
  v44 = *(v56 + 48);
  sub_1DD753730();
  sub_1DD7533B8();
  sub_1DD7533B8();
  v45 = v57;
  sub_1DD6DE1FC(v0, 1, v57);
  if (v36)
  {
    sub_1DD6DE1FC(v0 + v44, 1, v45);
    if (v36)
    {
      sub_1DD6FC560(v0, &qword_1ECD0E2E0, &qword_1DD8781F0);
LABEL_24:
      v52 = *(v42 + 24);
      sub_1DD874910();
      sub_1DD6E1448();
      sub_1DD753414(v53, v54);
      v48 = sub_1DD8750F0();
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  v46 = v55[1];
  sub_1DD7533B8();
  sub_1DD6DE1FC(v0 + v44, 1, v45);
  if (v47)
  {
    sub_1DD753360(v46, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate);
LABEL_19:
    v37 = &qword_1ECD0E2E8;
    v38 = &qword_1DD8781F8;
    v39 = v0;
    goto LABEL_20;
  }

  v49 = v55[0];
  sub_1DD753308();
  sub_1DD6EFF50();
  static ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate.== infix(_:_:)();
  v51 = v50;
  sub_1DD753360(v49, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate);
  sub_1DD7536E4();
  sub_1DD6FC560(v0, &qword_1ECD0E2E0, &qword_1DD8781F0);
  if (v51)
  {
    goto LABEL_24;
  }

LABEL_21:
  v48 = 0;
LABEL_22:
  sub_1DD6E0CCC(v48);
  sub_1DD6DFED0();
}

uint64_t sub_1DD744310(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F1C0, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ItemPredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD744390(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1ECD0EE58, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ItemPredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD744400()
{
  sub_1DD753414(&qword_1ECD0EE58, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ItemPredicate);

  return sub_1DD874A70();
}

void ResponseGenerationOverrides_AppPredicate.decodeMessage<A>(decoder:)()
{
  sub_1DD6E054C();
  while (1)
  {
    v1 = sub_1DD753698();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      sub_1DD6E0824();
      sub_1DD744574();
    }
  }
}

void sub_1DD744574()
{
  sub_1DD6DED2C();
  v0 = sub_1DD6E1F78();
  v1(v0);
  sub_1DD753678();
  sub_1DD6DF0B4();
  sub_1DD874A20();
  sub_1DD6E0C78();
}

void static ResponseGenerationOverrides_AppPredicate.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v4 = sub_1DD6ED7A4();
  v5 = type metadata accessor for OverridesCommon_StringPredicate(v4);
  v6 = sub_1DD6DE1C4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DE4A8();
  sub_1DD6FE1B0();
  v9 = sub_1DD6ED130();
  v11 = sub_1DD710A9C(v9, v10);
  sub_1DD6DEA10(v11);
  v13 = *(v12 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6DEBA0();
  v15 = sub_1DD710A9C(&qword_1ECD0E9E8, &qword_1DD87AC30);
  sub_1DD6DEA10(v15);
  v17 = *(v16 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD6E4918(v19);
  sub_1DD753744();
  sub_1DD6E5D90();
  sub_1DD6E26E4(v0);
  if (v24)
  {
    sub_1DD6E26E4(v0 + v3);
    if (v24)
    {
      sub_1DD6FC560(v0, &qword_1ECD0E9E0, &unk_1DD87B550);
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  sub_1DD6DED5C();
  sub_1DD7533B8();
  sub_1DD6E26E4(v0 + v3);
  if (v24)
  {
    sub_1DD6EE744();
LABEL_10:
    v25 = &qword_1ECD0E9E8;
    v26 = &qword_1DD87AC30;
LABEL_21:
    sub_1DD6FC560(v0, v25, v26);
LABEL_22:
    v23 = 0;
    goto LABEL_23;
  }

  sub_1DD6ED778();
  sub_1DD6F37F4();
  if (!v27 || ((sub_1DD7013AC(), v24) ? (v30 = v28 == v29) : (v30 = 0), !v30 && (sub_1DD875A30() & 1) == 0))
  {
    sub_1DD6ED394();
    sub_1DD753360(v1, v36);
    sub_1DD7536E4();
    v25 = &qword_1ECD0E9E0;
    v26 = &unk_1DD87B550;
    goto LABEL_21;
  }

  v31 = sub_1DD700B70();
  sub_1DD6E1448();
  sub_1DD753414(v32, v33);
  sub_1DD75362C();
  sub_1DD6E6C70();
  v35 = v34;
  sub_1DD753360(v1, v34);
  sub_1DD753360(v2, v35);
  sub_1DD6FC560(v0, &qword_1ECD0E9E0, &unk_1DD87B550);
  if ((v31 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_6:
  v20 = type metadata accessor for ResponseGenerationOverrides_AppPredicate(0);
  sub_1DD7536CC(v20);
  sub_1DD6E1448();
  sub_1DD753414(v21, v22);
  v23 = sub_1DD75364C();
LABEL_23:
  sub_1DD6E0CCC(v23);
  sub_1DD6DFED0();
}

uint64_t sub_1DD7448E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F1B8, type metadata accessor for ResponseGenerationOverrides_AppPredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD744964(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1ECD0F018, type metadata accessor for ResponseGenerationOverrides_AppPredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD7449D4()
{
  sub_1DD753414(&qword_1ECD0F018, type metadata accessor for ResponseGenerationOverrides_AppPredicate);

  return sub_1DD874A70();
}

uint64_t sub_1DD744AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  sub_1DD6FAAA0();
  v7 = sub_1DD6ED5EC();
  result = v8(v7);
  if (!v5)
  {
    v10 = *(a5(0) + 20);
    return sub_1DD6FBDBC();
  }

  return result;
}

void static ResponseGenerationOverrides_ToolPredicate.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v4 = sub_1DD6ED7A4();
  v5 = type metadata accessor for OverridesCommon_StringPredicate(v4);
  v6 = sub_1DD6DE1C4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DE4A8();
  sub_1DD6FE1B0();
  v9 = sub_1DD6ED130();
  v11 = sub_1DD710A9C(v9, v10);
  sub_1DD6DEA10(v11);
  v13 = *(v12 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6DEBA0();
  v15 = sub_1DD710A9C(&qword_1ECD0E9E8, &qword_1DD87AC30);
  sub_1DD6DEA10(v15);
  v17 = *(v16 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD6E4918(v19);
  sub_1DD753744();
  sub_1DD6E5D90();
  sub_1DD6E26E4(v0);
  if (v24)
  {
    sub_1DD6E26E4(v0 + v3);
    if (v24)
    {
      sub_1DD6FC560(v0, &qword_1ECD0E9E0, &unk_1DD87B550);
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  sub_1DD6DED5C();
  sub_1DD7533B8();
  sub_1DD6E26E4(v0 + v3);
  if (v24)
  {
    sub_1DD6EE744();
LABEL_10:
    v25 = &qword_1ECD0E9E8;
    v26 = &qword_1DD87AC30;
LABEL_21:
    sub_1DD6FC560(v0, v25, v26);
LABEL_22:
    v23 = 0;
    goto LABEL_23;
  }

  sub_1DD6ED778();
  sub_1DD6F37F4();
  if (!v27 || ((sub_1DD7013AC(), v24) ? (v30 = v28 == v29) : (v30 = 0), !v30 && (sub_1DD875A30() & 1) == 0))
  {
    sub_1DD6ED394();
    sub_1DD753360(v1, v36);
    sub_1DD7536E4();
    v25 = &qword_1ECD0E9E0;
    v26 = &unk_1DD87B550;
    goto LABEL_21;
  }

  v31 = sub_1DD700B70();
  sub_1DD6E1448();
  sub_1DD753414(v32, v33);
  sub_1DD75362C();
  sub_1DD6E6C70();
  v35 = v34;
  sub_1DD753360(v1, v34);
  sub_1DD753360(v2, v35);
  sub_1DD6FC560(v0, &qword_1ECD0E9E0, &unk_1DD87B550);
  if ((v31 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_6:
  v20 = type metadata accessor for ResponseGenerationOverrides_ToolPredicate(0);
  sub_1DD7536CC(v20);
  sub_1DD6E1448();
  sub_1DD753414(v21, v22);
  v23 = sub_1DD75364C();
LABEL_23:
  sub_1DD6E0CCC(v23);
  sub_1DD6DFED0();
}

uint64_t sub_1DD744E40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F1B0, type metadata accessor for ResponseGenerationOverrides_ToolPredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD744EC0(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1EE014958, type metadata accessor for ResponseGenerationOverrides_ToolPredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD744F30()
{
  sub_1DD753414(&qword_1EE014958, type metadata accessor for ResponseGenerationOverrides_ToolPredicate);

  return sub_1DD874A70();
}

void ResponseGenerationOverrides_ActionPredicate.decodeMessage<A>(decoder:)()
{
  sub_1DD6E054C();
  while (1)
  {
    v1 = sub_1DD753698();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      sub_1DD6E60D4();
      sub_1DD6E0824();
      sub_1DD744574();
    }
  }
}

void static ResponseGenerationOverrides_ActionPredicate.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v3 = sub_1DD6E0CA8();
  v4 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate(v3);
  v5 = sub_1DD6DE1C4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DF39C();
  v8 = sub_1DD6ED130();
  v10 = sub_1DD710A9C(v8, v9);
  sub_1DD6DEA10(v10);
  v12 = *(v11 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6DEBA0();
  v14 = sub_1DD710A9C(&qword_1ECD0EEB0, &qword_1DD87B808);
  sub_1DD6DEA10(v14);
  v16 = *(v15 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6E0D94(v18);
  sub_1DD6E5D90();
  sub_1DD6E0848(v0);
  if (v19)
  {
    sub_1DD6E0848(v0 + v2);
    if (v19)
    {
      sub_1DD6FC560(v0, &qword_1ECD0EEA8, &qword_1DD87DF60);
LABEL_12:
      v28 = type metadata accessor for ResponseGenerationOverrides_ActionPredicate(0);
      sub_1DD7536CC(v28);
      sub_1DD6E1448();
      sub_1DD753414(v29, v30);
      v21 = sub_1DD6E2124();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  sub_1DD6DED5C();
  sub_1DD7533B8();
  sub_1DD6E0848(v0 + v2);
  if (v19)
  {
    sub_1DD6E1BF0();
    sub_1DD753360(v1, v20);
LABEL_9:
    sub_1DD6FC560(v0, &qword_1ECD0EEB0, &qword_1DD87B808);
    goto LABEL_10;
  }

  sub_1DD753308();
  sub_1DD6EFF50();
  static ResponseGenerationOverrides_KeyValuePredicate.== infix(_:_:)();
  v23 = v22;
  v24 = sub_1DD6FF97C();
  sub_1DD753360(v24, v25);
  v26 = sub_1DD6DDEDC();
  sub_1DD753360(v26, v27);
  sub_1DD6FC560(v0, &qword_1ECD0EEA8, &qword_1DD87DF60);
  if (v23)
  {
    goto LABEL_12;
  }

LABEL_10:
  v21 = 0;
LABEL_13:
  sub_1DD6E0CCC(v21);
  sub_1DD6DFED0();
}

uint64_t sub_1DD745374(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F1A8, type metadata accessor for ResponseGenerationOverrides_ActionPredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD7453F4(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1ECD0F038, type metadata accessor for ResponseGenerationOverrides_ActionPredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD745464()
{
  sub_1DD753414(&qword_1ECD0F038, type metadata accessor for ResponseGenerationOverrides_ActionPredicate);

  return sub_1DD874A70();
}

uint64_t sub_1DD7454FC()
{
  v0 = sub_1DD874B10();
  sub_1DD732C90(v0, qword_1EE014210);
  sub_1DD6E1224(v0, qword_1EE014210);
  sub_1DD710A9C(&qword_1ECD0EB08, &qword_1DD87B528);
  v1 = (sub_1DD710A9C(&qword_1ECD0EB10, &qword_1DD87B530) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD8782F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "manifest_values";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1DD874AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "returned_collection_size";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  return sub_1DD874AF0();
}

void ResponseGenerationOverrides_ActionSuccessOutcomePredicate.decodeMessage<A>(decoder:)()
{
  sub_1DD6E054C();
  while (1)
  {
    v1 = sub_1DD753698();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      sub_1DD6E0824();
      sub_1DD745788();
    }

    else if (v1 == 1)
    {
      sub_1DD6E60D4();
      sub_1DD6E0824();
      sub_1DD744574();
    }
  }
}

uint64_t sub_1DD745788()
{
  v0 = *(type metadata accessor for ResponseGenerationOverrides_ActionSuccessOutcomePredicate(0) + 20);
  type metadata accessor for ResponseGenerationOverrides_IntPredicate(0);
  sub_1DD753414(&qword_1EE014AF0, type metadata accessor for ResponseGenerationOverrides_IntPredicate);
  return sub_1DD874A20();
}

void sub_1DD745890()
{
  sub_1DD6FEAFC();
  v2 = v1;
  v4 = v3;
  sub_1DD6FAAA0();
  v5 = sub_1DD6ED5EC();
  v6(v5);
  if (!v0)
  {
    v7 = sub_1DD6DF35C();
    v4(v7);
    v8 = *(v2(0) + 24);
    sub_1DD6FBDBC();
  }

  sub_1DD6E7244();
}

uint64_t sub_1DD745914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0EE40, &unk_1DD87DF30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ResponseGenerationOverrides_IntPredicate(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ResponseGenerationOverrides_ActionSuccessOutcomePredicate(0) + 20);
  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v7, 1, v8) == 1)
  {
    return sub_1DD6FC560(v7, &qword_1ECD0EE40, &unk_1DD87DF30);
  }

  sub_1DD753308();
  sub_1DD753414(&qword_1EE014AF0, type metadata accessor for ResponseGenerationOverrides_IntPredicate);
  sub_1DD874AD0();
  return sub_1DD753360(v11, type metadata accessor for ResponseGenerationOverrides_IntPredicate);
}

void static ResponseGenerationOverrides_ActionSuccessOutcomePredicate.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v4 = v3;
  v61 = type metadata accessor for ResponseGenerationOverrides_IntPredicate(0);
  v5 = sub_1DD6DE1C4(v61);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DE4A8();
  v59[0] = v9 - v8;
  v10 = sub_1DD710A9C(&qword_1ECD0EE40, &unk_1DD87DF30);
  sub_1DD6DEA10(v10);
  v12 = *(v11 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6E5D10(v14, v59[0]);
  v60 = sub_1DD710A9C(&qword_1ECD0EE48, &qword_1DD87B800);
  sub_1DD6DE1C4(v60);
  v16 = *(v15 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6DEA6C();
  v18 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate(0);
  v19 = sub_1DD6DE1C4(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1DD6DE4A8();
  v24 = v23 - v22;
  v25 = sub_1DD6FF97C();
  v27 = sub_1DD710A9C(v25, v26);
  sub_1DD6DEA10(v27);
  v29 = *(v28 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = v59 - v31;
  v33 = sub_1DD710A9C(&qword_1ECD0EEB0, &qword_1DD87B808);
  sub_1DD6DEA10(v33);
  v35 = *(v34 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1DD6E8774(v37);
  sub_1DD6F9A70();
  sub_1DD7533B8();
  v62 = v4;
  sub_1DD6F9A70();
  sub_1DD7533B8();
  sub_1DD6DE1FC(v2, 1, v18);
  if (v38)
  {
    sub_1DD6DE1FC(v2 + v1, 1, v18);
    if (v38)
    {
      sub_1DD6FC560(v2, &qword_1ECD0EEA8, &qword_1DD87DF60);
      goto LABEL_11;
    }

LABEL_9:
    v40 = &qword_1ECD0EEB0;
    v41 = &qword_1DD87B808;
    v42 = v2;
LABEL_27:
    sub_1DD6FC560(v42, v40, v41);
LABEL_28:
    v52 = 0;
    goto LABEL_29;
  }

  sub_1DD7533B8();
  sub_1DD6DE1FC(v2 + v1, 1, v18);
  if (v38)
  {
    sub_1DD6E1BF0();
    sub_1DD753360(v32, v39);
    goto LABEL_9;
  }

  sub_1DD753308();
  static ResponseGenerationOverrides_KeyValuePredicate.== infix(_:_:)();
  v44 = v43;
  sub_1DD753360(v24, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate);
  sub_1DD753360(v32, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate);
  sub_1DD6FC560(v2, &qword_1ECD0EEA8, &qword_1DD87DF60);
  if ((v44 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_11:
  v45 = type metadata accessor for ResponseGenerationOverrides_ActionSuccessOutcomePredicate(0);
  v46 = *(v45 + 20);
  v47 = *(v60 + 48);
  sub_1DD753730();
  sub_1DD7533B8();
  sub_1DD7533B8();
  v48 = v61;
  sub_1DD6DE1FC(v0, 1, v61);
  if (v38)
  {
    sub_1DD6DE1FC(v0 + v47, 1, v48);
    if (v38)
    {
      sub_1DD6FC560(v0, &qword_1ECD0EE40, &unk_1DD87DF30);
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  v53 = v59[1];
  sub_1DD7533B8();
  sub_1DD6DE1FC(v0 + v47, 1, v48);
  if (v54)
  {
    sub_1DD753360(v53, type metadata accessor for ResponseGenerationOverrides_IntPredicate);
LABEL_20:
    v40 = &qword_1ECD0EE48;
    v41 = &qword_1DD87B800;
LABEL_26:
    v42 = v0;
    goto LABEL_27;
  }

  v55 = v59[0];
  sub_1DD753308();
  if (*v53 != *v55 || *(v53 + 1) != *(v55 + 1))
  {
    sub_1DD753360(v55, type metadata accessor for ResponseGenerationOverrides_IntPredicate);
    sub_1DD753360(v53, type metadata accessor for ResponseGenerationOverrides_IntPredicate);
    v40 = &qword_1ECD0EE40;
    v41 = &unk_1DD87DF30;
    goto LABEL_26;
  }

  v56 = *(v48 + 24);
  sub_1DD874910();
  sub_1DD6E1448();
  sub_1DD753414(v57, v58);
  LOBYTE(v56) = sub_1DD8750F0();
  sub_1DD753360(v55, type metadata accessor for ResponseGenerationOverrides_IntPredicate);
  sub_1DD753360(v53, type metadata accessor for ResponseGenerationOverrides_IntPredicate);
  sub_1DD6FC560(v0, &qword_1ECD0EE40, &unk_1DD87DF30);
  if ((v56 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_16:
  v49 = *(v45 + 24);
  sub_1DD874910();
  sub_1DD6E1448();
  sub_1DD753414(v50, v51);
  v52 = sub_1DD8750F0();
LABEL_29:
  sub_1DD6E0CCC(v52);
  sub_1DD6DFED0();
}

uint64_t sub_1DD7460C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F1A0, type metadata accessor for ResponseGenerationOverrides_ActionSuccessOutcomePredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD746148(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1EE014200, type metadata accessor for ResponseGenerationOverrides_ActionSuccessOutcomePredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD7461B8()
{
  sub_1DD753414(&qword_1EE014200, type metadata accessor for ResponseGenerationOverrides_ActionSuccessOutcomePredicate);

  return sub_1DD874A70();
}

uint64_t sub_1DD74625C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1DD874B10();
  sub_1DD732C90(v3, a2);
  sub_1DD6E1224(v3, a2);
  return sub_1DD874B00();
}

uint64_t sub_1DD74633C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F198, type metadata accessor for ResponseGenerationOverrides_ActionConfirmationOutcomePredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD7463BC(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1ECD0F058, type metadata accessor for ResponseGenerationOverrides_ActionConfirmationOutcomePredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD74642C()
{
  sub_1DD753414(&qword_1ECD0F058, type metadata accessor for ResponseGenerationOverrides_ActionConfirmationOutcomePredicate);

  return sub_1DD874A70();
}

void ResponseGenerationOverrides_ToolDisambiguationOutcomePredicate.decodeMessage<A>(decoder:)()
{
  sub_1DD6E054C();
  while (1)
  {
    v1 = sub_1DD753698();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      sub_1DD6E0824();
      sub_1DD744574();
    }
  }
}

void static ResponseGenerationOverrides_ToolDisambiguationOutcomePredicate.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v2 = sub_1DD6E0CA8();
  v3 = type metadata accessor for ResponseGenerationOverrides_ListPredicate(v2);
  v4 = sub_1DD6DE1C4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DF39C();
  v7 = sub_1DD6ED130();
  v9 = sub_1DD710A9C(v7, v8);
  sub_1DD6DEA10(v9);
  v11 = *(v10 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6DEBA0();
  v13 = sub_1DD710A9C(&qword_1ECD0EED8, &qword_1DD87B818);
  sub_1DD6DEA10(v13);
  v15 = *(v14 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6E0D94(v17);
  sub_1DD6E5D90();
  sub_1DD6E0848(v0);
  if (v18)
  {
    sub_1DD6E0848(v0 + v1);
    if (v18)
    {
      sub_1DD6FC560(v0, &qword_1ECD0EED0, &qword_1DD87B810);
LABEL_12:
      v26 = type metadata accessor for ResponseGenerationOverrides_ToolDisambiguationOutcomePredicate(0);
      sub_1DD7536CC(v26);
      sub_1DD6E1448();
      sub_1DD753414(v27, v28);
      v19 = sub_1DD6E2124();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  sub_1DD6DED5C();
  sub_1DD7533B8();
  sub_1DD6E0848(v0 + v1);
  if (v18)
  {
    sub_1DD6E9A74();
LABEL_9:
    sub_1DD6FC560(v0, &qword_1ECD0EED8, &qword_1DD87B818);
    goto LABEL_10;
  }

  sub_1DD6E6554();
  sub_1DD753308();
  sub_1DD6EFF50();
  static ResponseGenerationOverrides_ListPredicate.== infix(_:_:)();
  v21 = v20;
  v22 = sub_1DD6FF97C();
  sub_1DD753360(v22, v23);
  v24 = sub_1DD6DDEDC();
  sub_1DD753360(v24, v25);
  sub_1DD6FC560(v0, &qword_1ECD0EED0, &qword_1DD87B810);
  if (v21)
  {
    goto LABEL_12;
  }

LABEL_10:
  v19 = 0;
LABEL_13:
  sub_1DD6E0CCC(v19);
  sub_1DD6DFED0();
}

uint64_t sub_1DD74684C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F190, type metadata accessor for ResponseGenerationOverrides_ToolDisambiguationOutcomePredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD7468CC(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1ECD0F070, type metadata accessor for ResponseGenerationOverrides_ToolDisambiguationOutcomePredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD74693C()
{
  sub_1DD753414(&qword_1ECD0F070, type metadata accessor for ResponseGenerationOverrides_ToolDisambiguationOutcomePredicate);

  return sub_1DD874A70();
}

uint64_t sub_1DD746AF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F188, type metadata accessor for ResponseGenerationOverrides_ParameterNeedsValueOutcomePredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD746B70(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1ECD0F088, type metadata accessor for ResponseGenerationOverrides_ParameterNeedsValueOutcomePredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD746BE0()
{
  sub_1DD753414(&qword_1ECD0F088, type metadata accessor for ResponseGenerationOverrides_ParameterNeedsValueOutcomePredicate);

  return sub_1DD874A70();
}

uint64_t sub_1DD746C78()
{
  v0 = sub_1DD874B10();
  sub_1DD732C90(v0, qword_1ECD0ED68);
  sub_1DD6E1224(v0, qword_1ECD0ED68);
  sub_1DD710A9C(&qword_1ECD0EB08, &qword_1DD87B528);
  v1 = (sub_1DD710A9C(&qword_1ECD0EB10, &qword_1DD87B530) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD8782F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "parameter_id";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1DD874AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "parameter_value";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_1DD874AF0();
}

uint64_t ResponseGenerationOverrides_ParameterConfirmationOutcomePredicate.decodeMessage<A>(decoder:)()
{
  sub_1DD6E054C();
  while (1)
  {
    result = sub_1DD753698();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      sub_1DD6E0824();
      sub_1DD746ECC();
    }

    else if (result == 1)
    {
      sub_1DD6E0D68();
      sub_1DD8749E0();
    }
  }

  return result;
}

uint64_t sub_1DD746ECC()
{
  v0 = *(type metadata accessor for ResponseGenerationOverrides_ParameterConfirmationOutcomePredicate(0) + 20);
  type metadata accessor for OverridesCommon_StringPredicate(0);
  sub_1DD753414(&qword_1ECD0EA58, type metadata accessor for OverridesCommon_StringPredicate);
  return sub_1DD874A20();
}

uint64_t sub_1DD746FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E9E0, &unk_1DD87B550);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for OverridesCommon_StringPredicate(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ResponseGenerationOverrides_ParameterConfirmationOutcomePredicate(0) + 20);
  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v7, 1, v8) == 1)
  {
    return sub_1DD6FC560(v7, &qword_1ECD0E9E0, &unk_1DD87B550);
  }

  sub_1DD753308();
  sub_1DD753414(&qword_1ECD0EA58, type metadata accessor for OverridesCommon_StringPredicate);
  sub_1DD874AD0();
  return sub_1DD753360(v11, type metadata accessor for OverridesCommon_StringPredicate);
}

uint64_t sub_1DD747264(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F180, type metadata accessor for ResponseGenerationOverrides_ParameterConfirmationOutcomePredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD7472E4(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1ECD0F0A0, type metadata accessor for ResponseGenerationOverrides_ParameterConfirmationOutcomePredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD747354()
{
  sub_1DD753414(&qword_1ECD0F0A0, type metadata accessor for ResponseGenerationOverrides_ParameterConfirmationOutcomePredicate);

  return sub_1DD874A70();
}

uint64_t sub_1DD7473EC()
{
  v0 = sub_1DD874B10();
  sub_1DD732C90(v0, qword_1ECD0ED80);
  sub_1DD6E1224(v0, qword_1ECD0ED80);
  sub_1DD710A9C(&qword_1ECD0EB08, &qword_1DD87B528);
  v1 = (sub_1DD710A9C(&qword_1ECD0EB10, &qword_1DD87B530) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD8782F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "parameter_id";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1DD874AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parameter_values";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_1DD874AF0();
}

uint64_t sub_1DD747604()
{
  v0 = *(type metadata accessor for ResponseGenerationOverrides_ParameterDisambiguationOutcomePredicate(0) + 20);
  type metadata accessor for ResponseGenerationOverrides_ListPredicate(0);
  sub_1DD753414(&qword_1ECD0EF60, type metadata accessor for ResponseGenerationOverrides_ListPredicate);
  return sub_1DD874A20();
}

uint64_t sub_1DD74770C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0EED0, &qword_1DD87B810);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ResponseGenerationOverrides_ListPredicate(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ResponseGenerationOverrides_ParameterDisambiguationOutcomePredicate(0) + 20);
  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v7, 1, v8) == 1)
  {
    return sub_1DD6FC560(v7, &qword_1ECD0EED0, &qword_1DD87B810);
  }

  sub_1DD753308();
  sub_1DD753414(&qword_1ECD0EF60, type metadata accessor for ResponseGenerationOverrides_ListPredicate);
  sub_1DD874AD0();
  return sub_1DD753360(v11, type metadata accessor for ResponseGenerationOverrides_ListPredicate);
}

void static ResponseGenerationOverrides_ParameterDisambiguationOutcomePredicate.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v3 = sub_1DD6E0CA8();
  v4 = type metadata accessor for ResponseGenerationOverrides_ListPredicate(v3);
  v5 = sub_1DD6DE1C4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DF39C();
  v8 = sub_1DD710A9C(&qword_1ECD0EED0, &qword_1DD87B810);
  sub_1DD6DEA10(v8);
  v10 = *(v9 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6DEBA0();
  v12 = sub_1DD710A9C(&qword_1ECD0EED8, &qword_1DD87B818);
  sub_1DD6DE1C4(v12);
  v14 = *(v13 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6DEA6C();
  v16 = v1[1];
  v17 = v0[1];
  if (v16)
  {
    if (!v17)
    {
      goto LABEL_19;
    }

    v18 = *v1 == *v0 && v16 == v17;
    if (!v18 && (sub_1DD875A30() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v17)
  {
    goto LABEL_19;
  }

  v32 = type metadata accessor for ResponseGenerationOverrides_ParameterDisambiguationOutcomePredicate(0);
  v19 = *(v32 + 20);
  v20 = *(v12 + 48);
  sub_1DD75366C();
  sub_1DD7533B8();
  sub_1DD75366C();
  sub_1DD7533B8();
  sub_1DD6E0848(v2);
  if (v18)
  {
    sub_1DD6E0848(v2 + v20);
    if (v18)
    {
      sub_1DD6FC560(v2, &qword_1ECD0EED0, &qword_1DD87B810);
LABEL_22:
      v29 = *(v32 + 24);
      sub_1DD874910();
      sub_1DD6E1448();
      sub_1DD753414(v30, v31);
      v22 = sub_1DD6E2124();
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  sub_1DD6DED5C();
  sub_1DD7533B8();
  sub_1DD6E0848(v2 + v20);
  if (v21)
  {
    sub_1DD6E9A74();
LABEL_18:
    sub_1DD6FC560(v2, &qword_1ECD0EED8, &qword_1DD87B818);
    goto LABEL_19;
  }

  sub_1DD6E6554();
  sub_1DD753308();
  sub_1DD6EFF50();
  static ResponseGenerationOverrides_ListPredicate.== infix(_:_:)();
  v24 = v23;
  v25 = sub_1DD6FF97C();
  sub_1DD753360(v25, v26);
  v27 = sub_1DD6DDEDC();
  sub_1DD753360(v27, v28);
  sub_1DD6FC560(v2, &qword_1ECD0EED0, &qword_1DD87B810);
  if (v24)
  {
    goto LABEL_22;
  }

LABEL_19:
  v22 = 0;
LABEL_20:
  sub_1DD6E0CCC(v22);
  sub_1DD6DFED0();
}

uint64_t sub_1DD747BE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F178, type metadata accessor for ResponseGenerationOverrides_ParameterDisambiguationOutcomePredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD747C68(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1ECD0F0B8, type metadata accessor for ResponseGenerationOverrides_ParameterDisambiguationOutcomePredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD747CD8()
{
  sub_1DD753414(&qword_1ECD0F0B8, type metadata accessor for ResponseGenerationOverrides_ParameterDisambiguationOutcomePredicate);

  return sub_1DD874A70();
}

uint64_t sub_1DD747D64()
{
  v0 = sub_1DD874B10();
  sub_1DD732C90(v0, qword_1ECD0ED98);
  sub_1DD6E1224(v0, qword_1ECD0ED98);
  sub_1DD710A9C(&qword_1ECD0EB08, &qword_1DD87B528);
  v1 = (sub_1DD710A9C(&qword_1ECD0EB10, &qword_1DD87B530) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD8782F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "parameter_id";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1DD874AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parameter_value";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_1DD874AF0();
}

uint64_t sub_1DD747F7C()
{
  sub_1DD6F9B94();
  while (1)
  {
    sub_1DD6DDEDC();
    result = sub_1DD8749A0();
    if (v2 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v0(v1, v3, v5, v4);
    }

    else if (result == 1)
    {
      sub_1DD6DED5C();
      sub_1DD8749E0();
    }
  }

  return result;
}

uint64_t sub_1DD747FFC()
{
  v0 = *(type metadata accessor for ResponseGenerationOverrides_ParameterNotAllowedOutcomePredicate(0) + 20);
  type metadata accessor for OverridesCommon_StringPredicate(0);
  sub_1DD753414(&qword_1ECD0EA58, type metadata accessor for OverridesCommon_StringPredicate);
  return sub_1DD874A20();
}

uint64_t sub_1DD748104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E9E0, &unk_1DD87B550);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for OverridesCommon_StringPredicate(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ResponseGenerationOverrides_ParameterNotAllowedOutcomePredicate(0) + 20);
  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v7, 1, v8) == 1)
  {
    return sub_1DD6FC560(v7, &qword_1ECD0E9E0, &unk_1DD87B550);
  }

  sub_1DD753308();
  sub_1DD753414(&qword_1ECD0EA58, type metadata accessor for OverridesCommon_StringPredicate);
  sub_1DD874AD0();
  return sub_1DD753360(v11, type metadata accessor for OverridesCommon_StringPredicate);
}

void sub_1DD7482F0()
{
  sub_1DD6DEB38();
  v6 = v5;
  v7 = sub_1DD6ED7A4();
  v8 = type metadata accessor for OverridesCommon_StringPredicate(v7);
  v9 = sub_1DD6DE1C4(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6DE4A8();
  sub_1DD6FE1B0();
  v12 = sub_1DD710A9C(&qword_1ECD0E9E0, &unk_1DD87B550);
  sub_1DD6DEA10(v12);
  v14 = *(v13 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6DEBA0();
  v16 = sub_1DD710A9C(&qword_1ECD0E9E8, &qword_1DD87AC30);
  sub_1DD6DE1C4(v16);
  v18 = *(v17 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1DD6DEA6C();
  v20 = v1[1];
  v21 = v0[1];
  if (v20)
  {
    if (!v21)
    {
      goto LABEL_31;
    }

    v22 = *v1 == *v0 && v20 == v21;
    if (!v22 && (sub_1DD875A30() & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v21)
  {
LABEL_31:
    v28 = 0;
    goto LABEL_32;
  }

  v41 = v6(0);
  v23 = *(v41 + 20);
  v24 = *(v16 + 48);
  sub_1DD75366C();
  sub_1DD7533B8();
  sub_1DD75366C();
  sub_1DD7533B8();
  sub_1DD6E26E4(v2);
  if (v22)
  {
    sub_1DD6E26E4(v2 + v24);
    if (v22)
    {
      sub_1DD6FC560(v2, &qword_1ECD0E9E0, &unk_1DD87B550);
      goto LABEL_15;
    }

    goto LABEL_19;
  }

  sub_1DD6DED5C();
  sub_1DD7533B8();
  sub_1DD6E26E4(v2 + v24);
  if (v29)
  {
    sub_1DD753360(v4, type metadata accessor for OverridesCommon_StringPredicate);
LABEL_19:
    v30 = &qword_1ECD0E9E8;
    v31 = &qword_1DD87AC30;
LABEL_30:
    sub_1DD6FC560(v2, v30, v31);
    goto LABEL_31;
  }

  sub_1DD753308();
  sub_1DD6F37F4();
  if (!v32 || ((sub_1DD7013AC(), v22) ? (v35 = v33 == v34) : (v35 = 0), !v35 && (sub_1DD875A30() & 1) == 0))
  {
    sub_1DD753360(v3, type metadata accessor for OverridesCommon_StringPredicate);
    sub_1DD7536E4();
    v30 = &qword_1ECD0E9E0;
    v31 = &unk_1DD87B550;
    goto LABEL_30;
  }

  v36 = sub_1DD700B70();
  sub_1DD6E1448();
  sub_1DD753414(v37, v38);
  sub_1DD75362C();
  sub_1DD6E6C70();
  v40 = v39;
  sub_1DD753360(v3, v39);
  sub_1DD753360(v4, v40);
  sub_1DD6FC560(v2, &qword_1ECD0E9E0, &unk_1DD87B550);
  if ((v36 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_15:
  v25 = *(v41 + 24);
  sub_1DD874910();
  sub_1DD6E1448();
  sub_1DD753414(v26, v27);
  v28 = sub_1DD75364C();
LABEL_32:
  sub_1DD6E0CCC(v28);
  sub_1DD6DFED0();
}

uint64_t sub_1DD7486B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F170, type metadata accessor for ResponseGenerationOverrides_ParameterNotAllowedOutcomePredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD748734(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1ECD0F0D0, type metadata accessor for ResponseGenerationOverrides_ParameterNotAllowedOutcomePredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD7487A4()
{
  sub_1DD753414(&qword_1ECD0F0D0, type metadata accessor for ResponseGenerationOverrides_ParameterNotAllowedOutcomePredicate);

  return sub_1DD874A70();
}

uint64_t sub_1DD74883C()
{
  v0 = sub_1DD874B10();
  sub_1DD732C90(v0, qword_1ECD0EDB0);
  sub_1DD6E1224(v0, qword_1ECD0EDB0);
  sub_1DD710A9C(&qword_1ECD0EB08, &qword_1DD87B528);
  v1 = (sub_1DD710A9C(&qword_1ECD0EB10, &qword_1DD87B530) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD8782F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "parameter_id";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1DD874AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parameter_value";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_1DD874AF0();
}

uint64_t sub_1DD748A54()
{
  v0 = *(type metadata accessor for ResponseGenerationOverrides_ParameterCandidatesNotFoundOutcomePredicate(0) + 20);
  type metadata accessor for OverridesCommon_StringPredicate(0);
  sub_1DD753414(&qword_1ECD0EA58, type metadata accessor for OverridesCommon_StringPredicate);
  return sub_1DD874A20();
}

uint64_t sub_1DD748B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E9E0, &unk_1DD87B550);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for OverridesCommon_StringPredicate(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ResponseGenerationOverrides_ParameterCandidatesNotFoundOutcomePredicate(0) + 20);
  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v7, 1, v8) == 1)
  {
    return sub_1DD6FC560(v7, &qword_1ECD0E9E0, &unk_1DD87B550);
  }

  sub_1DD753308();
  sub_1DD753414(&qword_1ECD0EA58, type metadata accessor for OverridesCommon_StringPredicate);
  sub_1DD874AD0();
  return sub_1DD753360(v11, type metadata accessor for OverridesCommon_StringPredicate);
}

uint64_t sub_1DD748DEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F168, type metadata accessor for ResponseGenerationOverrides_ParameterCandidatesNotFoundOutcomePredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD748E6C(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1ECD0F0E8, type metadata accessor for ResponseGenerationOverrides_ParameterCandidatesNotFoundOutcomePredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD748EDC()
{
  sub_1DD753414(&qword_1ECD0F0E8, type metadata accessor for ResponseGenerationOverrides_ParameterCandidatesNotFoundOutcomePredicate);

  return sub_1DD874A70();
}

uint64_t sub_1DD749010(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_1DD6E1F34();
  v7 = *(v6 + 8);
  v8 = v3[1];
  if (v7)
  {
    if (v8)
    {
      v9 = *v4 == *v3 && v7 == v8;
      if (v9 || (sub_1DD875A30() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v8)
  {
LABEL_8:
    v10 = a3(0);
    sub_1DD7536CC(v10);
    sub_1DD6E1448();
    sub_1DD753414(v11, v12);
    return sub_1DD6E2124() & 1;
  }

  return 0;
}

uint64_t sub_1DD749144(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F160, type metadata accessor for ResponseGenerationOverrides_ActionRequirementOutcomePredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD7491C4(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1ECD0F100, type metadata accessor for ResponseGenerationOverrides_ActionRequirementOutcomePredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD749234()
{
  sub_1DD753414(&qword_1ECD0F100, type metadata accessor for ResponseGenerationOverrides_ActionRequirementOutcomePredicate);

  return sub_1DD874A70();
}

void static ResponseGenerationOverrides_ValueDisambiguationOutcomePredicate.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v2 = sub_1DD6E0CA8();
  v3 = type metadata accessor for ResponseGenerationOverrides_ListPredicate(v2);
  v4 = sub_1DD6DE1C4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DF39C();
  v7 = sub_1DD6ED130();
  v9 = sub_1DD710A9C(v7, v8);
  sub_1DD6DEA10(v9);
  v11 = *(v10 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6DEBA0();
  v13 = sub_1DD710A9C(&qword_1ECD0EED8, &qword_1DD87B818);
  sub_1DD6DEA10(v13);
  v15 = *(v14 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6E0D94(v17);
  sub_1DD6E5D90();
  sub_1DD6E0848(v0);
  if (v18)
  {
    sub_1DD6E0848(v0 + v1);
    if (v18)
    {
      sub_1DD6FC560(v0, &qword_1ECD0EED0, &qword_1DD87B810);
LABEL_12:
      v26 = type metadata accessor for ResponseGenerationOverrides_ValueDisambiguationOutcomePredicate(0);
      sub_1DD7536CC(v26);
      sub_1DD6E1448();
      sub_1DD753414(v27, v28);
      v19 = sub_1DD6E2124();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  sub_1DD6DED5C();
  sub_1DD7533B8();
  sub_1DD6E0848(v0 + v1);
  if (v18)
  {
    sub_1DD6E9A74();
LABEL_9:
    sub_1DD6FC560(v0, &qword_1ECD0EED8, &qword_1DD87B818);
    goto LABEL_10;
  }

  sub_1DD6E6554();
  sub_1DD753308();
  sub_1DD6EFF50();
  static ResponseGenerationOverrides_ListPredicate.== infix(_:_:)();
  v21 = v20;
  v22 = sub_1DD6FF97C();
  sub_1DD753360(v22, v23);
  v24 = sub_1DD6DDEDC();
  sub_1DD753360(v24, v25);
  sub_1DD6FC560(v0, &qword_1ECD0EED0, &qword_1DD87B810);
  if (v21)
  {
    goto LABEL_12;
  }

LABEL_10:
  v19 = 0;
LABEL_13:
  sub_1DD6E0CCC(v19);
  sub_1DD6DFED0();
}

uint64_t sub_1DD7495B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F158, type metadata accessor for ResponseGenerationOverrides_ValueDisambiguationOutcomePredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD749634(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1EE013E60, type metadata accessor for ResponseGenerationOverrides_ValueDisambiguationOutcomePredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD7496A4()
{
  sub_1DD753414(&qword_1EE013E60, type metadata accessor for ResponseGenerationOverrides_ValueDisambiguationOutcomePredicate);

  return sub_1DD874A70();
}

uint64_t sub_1DD74975C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v9 = sub_1DD874B10();
  sub_1DD732C90(v9, a2);
  sub_1DD6E1224(v9, a2);
  sub_1DD710A9C(&qword_1ECD0EB08, &qword_1DD87B528);
  v10 = (sub_1DD710A9C(&qword_1ECD0EB10, &qword_1DD87B530) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1DD8782E0;
  v14 = v13 + v12 + v10[14];
  *(v13 + v12) = 1;
  *v14 = a3;
  *(v14 + 8) = a4;
  *(v14 + 16) = 2;
  v15 = *a5;
  v16 = sub_1DD874AE0();
  sub_1DD6DE1C4(v16);
  (*(v17 + 104))(v14, v15);
  return sub_1DD874AF0();
}

uint64_t sub_1DD749914()
{
  sub_1DD6F9B94();
  while (1)
  {
    sub_1DD6DDEDC();
    result = sub_1DD8749A0();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v4 = sub_1DD6DED5C();
      v0(v4);
    }
  }

  return result;
}

uint64_t sub_1DD749A54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F150, type metadata accessor for ResponseGenerationOverrides_FailureOutcomePredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD749AD4(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1ECD0F120, type metadata accessor for ResponseGenerationOverrides_FailureOutcomePredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD749B44()
{
  sub_1DD753414(&qword_1ECD0F120, type metadata accessor for ResponseGenerationOverrides_FailureOutcomePredicate);

  return sub_1DD874A70();
}

uint64_t sub_1DD749BDC()
{
  v0 = sub_1DD874B10();
  sub_1DD732C90(v0, qword_1EE014E38);
  sub_1DD6E1224(v0, qword_1EE014E38);
  sub_1DD710A9C(&qword_1ECD0EB08, &qword_1DD87B528);
  v1 = (sub_1DD710A9C(&qword_1ECD0EB10, &qword_1DD87B530) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD87AAA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "positive_conjunction";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1DD874AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "positive_disjunction";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "negative_conjunction";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "negative_disjunction";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  return sub_1DD874AF0();
}

void ResponseGenerationOverrides_Rule.decodeMessage<A>(decoder:)()
{
  sub_1DD6E054C();
  while (1)
  {
    v1 = sub_1DD753698();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        sub_1DD6E0824();
        sub_1DD73F168();
        break;
      case 2:
        sub_1DD6E0824();
        sub_1DD749F6C();
        break;
      case 3:
        sub_1DD6E0824();
        sub_1DD74A00C();
        break;
      case 4:
        sub_1DD6E0824();
        sub_1DD74A0AC();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1DD749F6C()
{
  type metadata accessor for ResponseGenerationOverrides_Rule.Predicate(0);
  sub_1DD753414(&qword_1EE014E08, type metadata accessor for ResponseGenerationOverrides_Rule.Predicate);
  return sub_1DD874A10();
}

uint64_t sub_1DD74A00C()
{
  type metadata accessor for ResponseGenerationOverrides_Rule.Predicate(0);
  sub_1DD753414(&qword_1EE014E08, type metadata accessor for ResponseGenerationOverrides_Rule.Predicate);
  return sub_1DD874A10();
}

void sub_1DD74A0AC()
{
  sub_1DD6DED2C();
  v0 = sub_1DD6E1F78();
  v1(v0);
  sub_1DD753678();
  sub_1DD6DF0B4();
  sub_1DD874A10();
  sub_1DD6E0C78();
}

void ResponseGenerationOverrides_Rule.traverse<A>(visitor:)()
{
  sub_1DD6FEAFC();
  sub_1DD6DE2D4();
  sub_1DD6E5CA0();
  if (!v2 || (type metadata accessor for ResponseGenerationOverrides_Rule.Predicate(0), sub_1DD6DE50C(), sub_1DD753414(v3, v4), sub_1DD6FF79C(), sub_1DD6E6540(), sub_1DD874AC0(), !v0))
  {
    if (!*(v1[1] + 16) || (type metadata accessor for ResponseGenerationOverrides_Rule.Predicate(0), sub_1DD6DE50C(), sub_1DD753414(v5, v6), sub_1DD6FF79C(), sub_1DD6E6540(), sub_1DD874AC0(), !v0))
    {
      if (!*(v1[2] + 16) || (type metadata accessor for ResponseGenerationOverrides_Rule.Predicate(0), sub_1DD6DE50C(), sub_1DD753414(v7, v8), sub_1DD6FF79C(), sub_1DD6E6540(), sub_1DD874AC0(), !v0))
      {
        if (!*(v1[3] + 16) || (type metadata accessor for ResponseGenerationOverrides_Rule.Predicate(0), sub_1DD6DE50C(), sub_1DD753414(v9, v10), sub_1DD6FF79C(), sub_1DD6E6540(), sub_1DD874AC0(), !v0))
        {
          v11 = *(type metadata accessor for ResponseGenerationOverrides_Rule(0) + 32);
          sub_1DD6DDF78();
        }
      }
    }
  }

  sub_1DD6E7244();
}

uint64_t static ResponseGenerationOverrides_Rule.== infix(_:_:)()
{
  sub_1DD6E1F34();
  if ((sub_1DD713F30(*v2, *v3) & 1) == 0 || (sub_1DD713F30(v1[1], v0[1]) & 1) == 0 || (sub_1DD713F30(v1[2], v0[2]) & 1) == 0 || (sub_1DD713F30(v1[3], v0[3]) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for ResponseGenerationOverrides_Rule(0) + 32);
  sub_1DD874910();
  sub_1DD6E1448();
  sub_1DD753414(v5, v6);
  return sub_1DD6E2124() & 1;
}

uint64_t sub_1DD74A3F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F148, type metadata accessor for ResponseGenerationOverrides_Rule);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD74A474(uint64_t a1)
{
  v2 = sub_1DD753414(qword_1EE014D68, type metadata accessor for ResponseGenerationOverrides_Rule);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD74A4E4()
{
  sub_1DD753414(qword_1EE014D68, type metadata accessor for ResponseGenerationOverrides_Rule);

  return sub_1DD874A70();
}

uint64_t sub_1DD74A564()
{
  result = MEMORY[0x1E12B4C10](0x616369646572502ELL, 0xEA00000000006574);
  qword_1ECD0EDF8 = 0xD000000000000022;
  unk_1ECD0EE00 = 0x80000001DD8B55C0;
  return result;
}

uint64_t sub_1DD74A5F4()
{
  v0 = sub_1DD874B10();
  sub_1DD732C90(v0, qword_1EE014E18);
  sub_1DD6E1224(v0, qword_1EE014E18);
  sub_1DD710A9C(&qword_1ECD0EB08, &qword_1DD87B528);
  v1 = (sub_1DD710A9C(&qword_1ECD0EB10, &qword_1DD87B530) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1DD87B7E0;
  v4 = v34 + v3 + v1[14];
  *(v34 + v3) = 1;
  *v4 = "app_predicate";
  *(v4 + 8) = 13;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1DD874AE0();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v34 + v3 + v2 + v1[14];
  *(v34 + v3 + v2) = 2;
  *v8 = "tool_predicate";
  *(v8 + 8) = 14;
  *(v8 + 16) = 2;
  v7();
  v9 = (v34 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "action_predicate";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v7();
  v11 = (v34 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "action_success_outcome_predicate";
  *(v12 + 1) = 32;
  v12[16] = 2;
  v7();
  v13 = (v34 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "action_confirmation_outcome_predicate";
  *(v14 + 1) = 37;
  v14[16] = 2;
  v7();
  v15 = (v34 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "tool_disambiguation_outcome_predicate";
  *(v16 + 1) = 37;
  v16[16] = 2;
  v7();
  v17 = (v34 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "parameter_needs_value_outcome_predicate";
  *(v18 + 1) = 39;
  v18[16] = 2;
  v7();
  v19 = (v34 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "parameter_confirmation_outcome_predicate";
  *(v20 + 1) = 40;
  v20[16] = 2;
  v7();
  v21 = (v34 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "parameter_disambiguation_outcome_predicate";
  *(v22 + 1) = 42;
  v22[16] = 2;
  v7();
  v23 = (v34 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "parameter_not_allowed_outcome_predicate";
  *(v24 + 1) = 39;
  v24[16] = 2;
  v7();
  v25 = (v34 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "parameter_candidates_not_found_outcome_predicate";
  *(v26 + 1) = 48;
  v26[16] = 2;
  v7();
  v27 = (v34 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "action_requirement_outcome_predicate";
  *(v28 + 1) = 36;
  v28[16] = 2;
  v7();
  v29 = (v34 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "value_disambiguation_outcome_predicate";
  *(v30 + 1) = 38;
  v30[16] = 2;
  v7();
  v31 = (v34 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "failure_outcome_predicate";
  *(v32 + 1) = 25;
  v32[16] = 2;
  v7();
  return sub_1DD874AF0();
}

uint64_t ResponseGenerationOverrides_Rule.Predicate.decodeMessage<A>(decoder:)()
{
  sub_1DD6E054C();
  while (1)
  {
    result = sub_1DD753698();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = sub_1DD6E0A74();
        sub_1DD74ABF8(v3, v4, v5, v6);
        break;
      case 2:
        v35 = sub_1DD6E0A74();
        sub_1DD74B0F0(v35, v36, v37, v38);
        break;
      case 3:
        v23 = sub_1DD6E0A74();
        sub_1DD74B5E8(v23, v24, v25, v26);
        break;
      case 4:
        v27 = sub_1DD6E0A74();
        sub_1DD74BAE0(v27, v28, v29, v30);
        break;
      case 5:
        v11 = sub_1DD6E0A74();
        sub_1DD74BFD8(v11, v12, v13, v14);
        break;
      case 6:
        v39 = sub_1DD6E0A74();
        sub_1DD74C4D0(v39, v40, v41, v42);
        break;
      case 7:
        v47 = sub_1DD6E0A74();
        sub_1DD74C9C8(v47, v48, v49, v50);
        break;
      case 8:
        v31 = sub_1DD6E0A74();
        sub_1DD74CEC0(v31, v32, v33, v34);
        break;
      case 9:
        v55 = sub_1DD6E0A74();
        sub_1DD74D3B8(v55, v56, v57, v58);
        break;
      case 10:
        v19 = sub_1DD6E0A74();
        sub_1DD74D8B0(v19, v20, v21, v22);
        break;
      case 11:
        v51 = sub_1DD6E0A74();
        sub_1DD74DDA8(v51, v52, v53, v54);
        break;
      case 12:
        v7 = sub_1DD6E0A74();
        sub_1DD74E2A0(v7, v8, v9, v10);
        break;
      case 13:
        v15 = sub_1DD6E0A74();
        sub_1DD74E798(v15, v16, v17, v18);
        break;
      case 14:
        v43 = sub_1DD6E0A74();
        sub_1DD74EC90(v43, v44, v45, v46);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1DD74ABF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ResponseGenerationOverrides_AppPredicate(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = sub_1DD710A9C(&qword_1ECD0F218, &qword_1DD87DE90);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  sub_1DD6E5E68(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1DD7533B8();
  v32 = sub_1DD6E5ED0(v12, 1, v13);
  v33 = v13;
  if (v32 == 1)
  {
    sub_1DD6FC560(v12, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    sub_1DD753308();
    sub_1DD753308();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1DD753360(v16, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
    }

    else
    {
      sub_1DD6FC560(v24, &qword_1ECD0F218, &qword_1DD87DE90);
      sub_1DD753308();
      sub_1DD753308();
      sub_1DD6E5E68(v24, 0, 1, v5);
    }
  }

  sub_1DD753414(&qword_1ECD0F018, type metadata accessor for ResponseGenerationOverrides_AppPredicate);
  v25 = v35;
  sub_1DD874A20();
  if (v25)
  {
    v26 = v24;
    return sub_1DD6FC560(v26, &qword_1ECD0F218, &qword_1DD87DE90);
  }

  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v21, 1, v5) == 1)
  {
    sub_1DD6FC560(v24, &qword_1ECD0F218, &qword_1DD87DE90);
    v26 = v21;
    return sub_1DD6FC560(v26, &qword_1ECD0F218, &qword_1DD87DE90);
  }

  sub_1DD753308();
  if (v32 != 1)
  {
    sub_1DD8749B0();
  }

  v28 = v33;
  sub_1DD6FC560(v24, &qword_1ECD0F218, &qword_1DD87DE90);
  v29 = v31;
  sub_1DD6FC560(v31, &qword_1ECD0E2B8, &qword_1DD8781D0);
  sub_1DD753308();
  swift_storeEnumTagMultiPayload();
  return sub_1DD6E5E68(v29, 0, 1, v28);
}

uint64_t sub_1DD74B0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ResponseGenerationOverrides_ToolPredicate(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = sub_1DD710A9C(&qword_1ECD0F220, &qword_1DD87DE98);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  sub_1DD6E5E68(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1DD7533B8();
  v32 = sub_1DD6E5ED0(v12, 1, v13);
  v33 = v13;
  if (v32 == 1)
  {
    sub_1DD6FC560(v12, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    sub_1DD753308();
    sub_1DD753308();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1DD6FC560(v24, &qword_1ECD0F220, &qword_1DD87DE98);
      sub_1DD753308();
      sub_1DD753308();
      sub_1DD6E5E68(v24, 0, 1, v5);
    }

    else
    {
      sub_1DD753360(v16, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
    }
  }

  sub_1DD753414(&qword_1EE014958, type metadata accessor for ResponseGenerationOverrides_ToolPredicate);
  v25 = v35;
  sub_1DD874A20();
  if (v25)
  {
    v26 = v24;
    return sub_1DD6FC560(v26, &qword_1ECD0F220, &qword_1DD87DE98);
  }

  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v21, 1, v5) == 1)
  {
    sub_1DD6FC560(v24, &qword_1ECD0F220, &qword_1DD87DE98);
    v26 = v21;
    return sub_1DD6FC560(v26, &qword_1ECD0F220, &qword_1DD87DE98);
  }

  sub_1DD753308();
  if (v32 != 1)
  {
    sub_1DD8749B0();
  }

  v28 = v33;
  sub_1DD6FC560(v24, &qword_1ECD0F220, &qword_1DD87DE98);
  v29 = v31;
  sub_1DD6FC560(v31, &qword_1ECD0E2B8, &qword_1DD8781D0);
  sub_1DD753308();
  swift_storeEnumTagMultiPayload();
  return sub_1DD6E5E68(v29, 0, 1, v28);
}

uint64_t sub_1DD74B5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ResponseGenerationOverrides_ActionPredicate(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = sub_1DD710A9C(&qword_1ECD0F228, &qword_1DD87DEA0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  sub_1DD6E5E68(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1DD7533B8();
  v32 = sub_1DD6E5ED0(v12, 1, v13);
  v33 = v13;
  if (v32 == 1)
  {
    sub_1DD6FC560(v12, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    sub_1DD753308();
    sub_1DD753308();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1DD6FC560(v24, &qword_1ECD0F228, &qword_1DD87DEA0);
      sub_1DD753308();
      sub_1DD753308();
      sub_1DD6E5E68(v24, 0, 1, v5);
    }

    else
    {
      sub_1DD753360(v16, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
    }
  }

  sub_1DD753414(&qword_1ECD0F038, type metadata accessor for ResponseGenerationOverrides_ActionPredicate);
  v25 = v35;
  sub_1DD874A20();
  if (v25)
  {
    v26 = v24;
    return sub_1DD6FC560(v26, &qword_1ECD0F228, &qword_1DD87DEA0);
  }

  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v21, 1, v5) == 1)
  {
    sub_1DD6FC560(v24, &qword_1ECD0F228, &qword_1DD87DEA0);
    v26 = v21;
    return sub_1DD6FC560(v26, &qword_1ECD0F228, &qword_1DD87DEA0);
  }

  sub_1DD753308();
  if (v32 != 1)
  {
    sub_1DD8749B0();
  }

  v28 = v33;
  sub_1DD6FC560(v24, &qword_1ECD0F228, &qword_1DD87DEA0);
  v29 = v31;
  sub_1DD6FC560(v31, &qword_1ECD0E2B8, &qword_1DD8781D0);
  sub_1DD753308();
  swift_storeEnumTagMultiPayload();
  return sub_1DD6E5E68(v29, 0, 1, v28);
}

uint64_t sub_1DD74BAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ResponseGenerationOverrides_ActionSuccessOutcomePredicate(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = sub_1DD710A9C(&qword_1ECD0F230, &qword_1DD87DEA8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  sub_1DD6E5E68(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1DD7533B8();
  v32 = sub_1DD6E5ED0(v12, 1, v13);
  v33 = v13;
  if (v32 == 1)
  {
    sub_1DD6FC560(v12, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    sub_1DD753308();
    sub_1DD753308();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1DD6FC560(v24, &qword_1ECD0F230, &qword_1DD87DEA8);
      sub_1DD753308();
      sub_1DD753308();
      sub_1DD6E5E68(v24, 0, 1, v5);
    }

    else
    {
      sub_1DD753360(v16, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
    }
  }

  sub_1DD753414(&qword_1EE014200, type metadata accessor for ResponseGenerationOverrides_ActionSuccessOutcomePredicate);
  v25 = v35;
  sub_1DD874A20();
  if (v25)
  {
    v26 = v24;
    return sub_1DD6FC560(v26, &qword_1ECD0F230, &qword_1DD87DEA8);
  }

  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v21, 1, v5) == 1)
  {
    sub_1DD6FC560(v24, &qword_1ECD0F230, &qword_1DD87DEA8);
    v26 = v21;
    return sub_1DD6FC560(v26, &qword_1ECD0F230, &qword_1DD87DEA8);
  }

  sub_1DD753308();
  if (v32 != 1)
  {
    sub_1DD8749B0();
  }

  v28 = v33;
  sub_1DD6FC560(v24, &qword_1ECD0F230, &qword_1DD87DEA8);
  v29 = v31;
  sub_1DD6FC560(v31, &qword_1ECD0E2B8, &qword_1DD8781D0);
  sub_1DD753308();
  swift_storeEnumTagMultiPayload();
  return sub_1DD6E5E68(v29, 0, 1, v28);
}