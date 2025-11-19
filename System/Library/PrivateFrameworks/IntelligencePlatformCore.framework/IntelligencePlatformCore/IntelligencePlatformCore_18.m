void sub_1C45877FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    sub_1C4412BD8(a1, a2, a3, a4);
    if (v8)
    {
    }

    else
    {
      sub_1C441AE30();
      sub_1C456902C(&qword_1EC0B86D8, &unk_1C4F16C90);
      sub_1C43FCFC0();
      sub_1C4F02558();
      sub_1C44258C8();
      if (v9 != v10)
      {
        v11 = 0;
      }

      else
      {
        v11 = *v6;
      }

      v12 = 0;
      while (v11)
      {
        sub_1C43FCFAC();
LABEL_17:
        sub_1C440F1C8(v13);
        sub_1C442E860(v19 + 40 * v18, v31);
        sub_1C441D670(v31, v30);
        v20 = *(v7 + 40);
        sub_1C4F02AF8();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4404010();
        v21 = sub_1C4F02B68();
        sub_1C4418FC4(v21);
        v23 = *(v7 + 64 + 8 * v22);
        sub_1C4405760();
        if (v8)
        {
          sub_1C43FFBF0();
          while (1)
          {
            sub_1C4410160();
            if (v8)
            {
              if (v25)
              {
                goto LABEL_31;
              }
            }

            if (v24 == v26)
            {
              v24 = 0;
            }

            sub_1C43FBDFC(v24);
            if (!v8)
            {
              sub_1C43FCF98();
              goto LABEL_27;
            }
          }
        }

        sub_1C43FFC04();
LABEL_27:
        sub_1C44064EC();
        sub_1C4431E90(v27);
        sub_1C441D670(v30, v29 + 40 * v28);
        sub_1C440A4C0();
        if (v10)
        {
          goto LABEL_32;
        }

        if (!v4)
        {
          return;
        }
      }

      v14 = v12;
      while (1)
      {
        v12 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v12 >= v5)
        {
          return;
        }

        sub_1C4424F24();
        if (v15)
        {
          sub_1C43FCF1C();
          v11 = v17 & v16;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
    }
  }
}

void sub_1C458799C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    sub_1C4412BD8(a1, a2, a3, a4);
    if (v8)
    {
    }

    else
    {
      sub_1C441AE30();
      sub_1C456902C(&qword_1EC0B86B8, &unk_1C4F58C00);
      sub_1C43FCFC0();
      sub_1C4F02558();
      sub_1C44258C8();
      if (v9 != v10)
      {
        v11 = 0;
      }

      else
      {
        v11 = *v6;
      }

      v12 = 0;
      while (v11)
      {
        sub_1C43FCFAC();
LABEL_17:
        sub_1C440F1C8(v13);
        sub_1C442B870(v19 + 32 * v18, v31);
        sub_1C44482AC(v31, v30);
        v20 = *(v7 + 40);
        sub_1C4F02AF8();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4404010();
        v21 = sub_1C4F02B68();
        sub_1C4418FC4(v21);
        v23 = *(v7 + 64 + 8 * v22);
        sub_1C4405760();
        if (v8)
        {
          sub_1C43FFBF0();
          while (1)
          {
            sub_1C4410160();
            if (v8)
            {
              if (v25)
              {
                goto LABEL_31;
              }
            }

            if (v24 == v26)
            {
              v24 = 0;
            }

            sub_1C43FBDFC(v24);
            if (!v8)
            {
              sub_1C43FCF98();
              goto LABEL_27;
            }
          }
        }

        sub_1C43FFC04();
LABEL_27:
        sub_1C44064EC();
        sub_1C4431E90(v27);
        sub_1C44482AC(v30, (v29 + 32 * v28));
        sub_1C440A4C0();
        if (v10)
        {
          goto LABEL_32;
        }

        if (!v4)
        {
          return;
        }
      }

      v14 = v12;
      while (1)
      {
        v12 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v12 >= v5)
        {
          return;
        }

        sub_1C4424F24();
        if (v15)
        {
          sub_1C43FCF1C();
          v11 = v17 & v16;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
    }
  }
}

unint64_t sub_1C4587B30()
{
  result = qword_1EC0B86C8;
  if (!qword_1EC0B86C8)
  {
    sub_1C4572308(&qword_1EC0B86D0, qword_1C4F0D8B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B86C8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AmbientLightType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4587C74()
{
  result = qword_1EC0B86E0;
  if (!qword_1EC0B86E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B86E0);
  }

  return result;
}

uint64_t App.mapLocation.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t App.mapLocation.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1C4587D58()
{
  if (qword_1EC0B7108 != -1)
  {
    swift_once();
  }

  qword_1EC0B86E8 = qword_1EC0C3828;
  *&qword_1EC0B86F0 = *&qword_1EC0C3830;
  qword_1EC0B8700 = qword_1EC0C3840;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t *sub_1C4587DD8()
{
  if (qword_1EC0B6888 != -1)
  {
    sub_1C4408578();
  }

  return &qword_1EC0B86E8;
}

uint64_t static App.type.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC0B6888 != -1)
  {
    sub_1C4408578();
  }

  swift_beginAccess();
  v2 = qword_1EC0B8700;
  *a1 = qword_1EC0B86E8;
  *(a1 + 8) = *&qword_1EC0B86F0;
  *(a1 + 24) = v2;
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t static App.type.setter(uint64_t a1)
{
  v1 = *a1;
  v4 = *(a1 + 8);
  v2 = *(a1 + 24);
  if (qword_1EC0B6888 != -1)
  {
    sub_1C4408578();
  }

  swift_beginAccess();
  qword_1EC0B86E8 = v1;
  *&qword_1EC0B86F0 = v4;
  qword_1EC0B8700 = v2;
}

uint64_t (*static App.type.modify())()
{
  if (qword_1EC0B6888 != -1)
  {
    sub_1C4408578();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1C4587FA4@<X0>(uint64_t a1@<X8>)
{
  sub_1C4587DD8();
  swift_beginAccess();
  v2 = qword_1EC0B8700;
  *a1 = qword_1EC0B86E8;
  *(a1 + 8) = *&qword_1EC0B86F0;
  *(a1 + 24) = v2;
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C458800C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 24);
  v4 = *(a1 + 8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4587DD8();
  swift_beginAccess();
  qword_1EC0B86E8 = v1;
  *&qword_1EC0B86F0 = v4;
  qword_1EC0B8700 = v2;
}

uint64_t App.identifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t App.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void __swiftcall App.init(mapLocation:identifier:bundleID:conversationIdentifier:parentBundleId:extensionHostId:shortVersion:exactVersion:)(IntelligencePlatformCore::App *__return_ptr retstr, Swift::String mapLocation, Swift::String identifier, Swift::String bundleID, Swift::String_optional conversationIdentifier, Swift::String_optional parentBundleId, Swift::String_optional extensionHostId, Swift::String_optional shortVersion, Swift::String_optional exactVersion)
{
  object = conversationIdentifier.value._object;
  countAndFlagsBits = conversationIdentifier.value._countAndFlagsBits;
  v11 = bundleID._object;
  v12 = bundleID._countAndFlagsBits;
  v13 = identifier._object;
  v14 = identifier._countAndFlagsBits;
  sub_1C456902C(&qword_1EC0B8708, &qword_1C4F0D960);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C4F0CE60;
  *(v16 + 32) = 0x4449656C646E7562;
  *(v16 + 40) = 0xE800000000000000;
  *(v16 + 48) = v12;
  *(v16 + 56) = v11;
  *(v16 + 72) = 0;
  *(v16 + 80) = 0;
  *(v16 + 64) = 0;
  *(v16 + 88) = 1;
  *(v16 + 96) = 0x696669746E656469;
  *(v16 + 104) = 0xEA00000000007265;
  *(v16 + 112) = v14;
  *(v16 + 120) = v13;
  *(v16 + 136) = 0;
  *(v16 + 144) = 0;
  *(v16 + 128) = 0;
  *(v16 + 152) = 1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (object)
  {
    sub_1C4406500();
    v17 = 3;
    sub_1C458E820();
    v16 = v18;
    *(v18 + 16) = 3;
    *(v18 + 160) = 0xD000000000000016;
    *(v18 + 168) = 0x80000001C4F8A3C0;
    *(v18 + 176) = countAndFlagsBits;
    *(v18 + 184) = object;
    *(v18 + 200) = 0;
    *(v18 + 208) = 0;
    *(v18 + 192) = 0;
    *(v18 + 216) = 1;
  }

  else
  {
    v17 = 2;
  }

  v19 = 0xD000000000000012;
  if (parentBundleId.value._object)
  {
    v20 = *(v16 + 24);
    if (v17 >= v20 >> 1)
    {
      sub_1C43FCFE8(v20);
      sub_1C4406500();
      sub_1C442F0A8();
      sub_1C44020F8();
    }

    *(v16 + 16) = v17 + 1;
    v21 = v16 + (v17 << 6);
    strcpy((v21 + 32), "parentBundleID");
    *(v21 + 47) = -18;
    *(v21 + 48) = parentBundleId;
    sub_1C4404B30(v21);
  }

  if (extensionHostId.value._object)
  {
    v23 = *(v16 + 16);
    v22 = *(v16 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_1C43FCFE8(v22);
      sub_1C4406500();
      sub_1C442F0A8();
      sub_1C44020F8();
    }

    *(v16 + 16) = v23 + 1;
    v24 = (v16 + (v23 << 6));
    v24[2].value._countAndFlagsBits = 0x6F69736E65747865;
    v24[2].value._object = 0xEF444974736F486ELL;
    v24[3] = extensionHostId;
    sub_1C4404B30(v24);
  }

  if (shortVersion.value._object)
  {
    v26 = *(v16 + 16);
    v25 = *(v16 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_1C43FCFE8(v25);
      sub_1C4406500();
      sub_1C442F0A8();
      sub_1C44020F8();
    }

    *(v16 + 16) = v26 + 1;
    v27 = (v16 + (v26 << 6));
    v27[2].value._countAndFlagsBits = v19;
    v27[2].value._object = 0x80000001C4F8A3A0;
    v27[3] = shortVersion;
    sub_1C4404B30(v27);
  }

  if (exactVersion.value._object)
  {
    v29 = *(v16 + 16);
    v28 = *(v16 + 24);
    if (v29 >= v28 >> 1)
    {
      sub_1C43FCFE8(v28);
      sub_1C4406500();
      sub_1C442F0A8();
      sub_1C44020F8();
    }

    *(v16 + 16) = v29 + 1;
    v30 = (v16 + (v29 << 6));
    v30[2].value._countAndFlagsBits = v19;
    v30[2].value._object = 0x80000001C4F8A380;
    v30[3] = exactVersion;
    sub_1C4404B30(v30);
  }

  retstr->mapLocation = mapLocation;
  retstr->identifier.value._countAndFlagsBits = v14;
  retstr->identifier.value._object = v13;
  retstr->basicProperties._rawValue = v16;
}

uint64_t sub_1C458847C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636F4C70616DLL && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6F72506369736162 && a2 == 0xEF73656974726570)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C4F02938();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C45885A8(char a1)
{
  if (!a1)
  {
    return 0x7461636F4C70616DLL;
  }

  if (a1 == 1)
  {
    return 0x696669746E656469;
  }

  return 0x6F72506369736162;
}

uint64_t sub_1C4588620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C458847C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4588648@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C45885A0();
  *a1 = result;
  return result;
}

uint64_t sub_1C4588670(uint64_t a1)
{
  v2 = sub_1C458A930();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C45886AC(uint64_t a1)
{
  v2 = sub_1C458A930();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t App.encode(to:)(void *a1)
{
  v4 = sub_1C456902C(&qword_1EC0B8710, &qword_1C4F0D968);
  v5 = sub_1C43FFC58(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v19 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = v1[2];
  v21 = v1[3];
  v22 = v14;
  v20 = v1[4];
  v15 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C458A930();
  sub_1C4F02BF8();
  v27 = 0;
  v16 = v23;
  sub_1C4F02798();
  if (!v16)
  {
    v17 = v20;
    v26 = 1;
    sub_1C4F02738();
    v24 = v17;
    v25 = 2;
    sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
    sub_1C458A9D8(&qword_1EC0B8728, sub_1C458A984);
    sub_1C4F027E8();
  }

  return (*(v7 + 8))(v11, v2);
}

uint64_t App.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0B8738, &qword_1C4F0D978);
  v6 = sub_1C43FFC58(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C458A930();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  v10 = sub_1C4F02678();
  v12 = v11;
  v17 = sub_1C4F02618();
  v18 = v13;
  sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
  sub_1C458A9D8(&qword_1EC0B8740, sub_1C458AA50);
  sub_1C4F026C8();
  v15 = sub_1C440A4E4();
  v16(v15);
  *a2 = v10;
  a2[1] = v12;
  a2[2] = v17;
  a2[3] = v18;
  a2[4] = v19;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C440962C(a1);
}

void sub_1C4588BAC()
{
  v2 = sub_1C4436470();
  *v1 = v0;
  if (!v2)
  {
    v3 = *(v0 + 16);
    sub_1C43FBE0C();
    sub_1C440F1DC();
    sub_1C443D5B8();
    *v1 = v4;
  }
}

void sub_1C4588C04()
{
  v2 = sub_1C4436470();
  *v1 = v0;
  if (!v2)
  {
    v3 = *(v0 + 16);
    sub_1C442FAB0();
    sub_1C440F1DC();
    sub_1C4505908();
    *v1 = v4;
  }
}

uint64_t sub_1C4588CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v9;
  if (!result)
  {
    result = a4(result, *(v9 + 16) + 1, 1, v9, a1, a2, a3);
    *v4 = result;
  }

  return result;
}

void sub_1C4588D20()
{
  v2 = sub_1C4436470();
  *v1 = v0;
  if (!v2)
  {
    v3 = *(v0 + 16);
    sub_1C4406500();
    sub_1C440F1DC();
    sub_1C458E820();
    *v1 = v4;
  }
}

uint64_t sub_1C4588E38(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

void sub_1C4588FA8()
{
  v2 = sub_1C4436470();
  *v1 = v0;
  if (!v2)
  {
    v3 = *(v0 + 16);
    sub_1C441899C();
    sub_1C440F1DC();
    sub_1C4505908();
    *v1 = v4;
  }
}

void sub_1C458900C()
{
  v2 = sub_1C4436470();
  *v1 = v0;
  if (!v2)
  {
    v3 = *(v0 + 16);
    sub_1C445E73C();
    sub_1C440F1DC();
    sub_1C4505908();
    *v1 = v4;
  }
}

void sub_1C45890A0()
{
  v2 = sub_1C4436470();
  *v1 = v0;
  if (!v2)
  {
    v3 = *(v0 + 16);
    sub_1C441C7C8();
    sub_1C440F1DC();
    sub_1C4505908();
    *v1 = v4;
  }
}

void sub_1C458911C()
{
  v2 = sub_1C4436470();
  *v1 = v0;
  if (!v2)
  {
    v3 = *(v0 + 16);
    sub_1C447EF10();
    sub_1C440F1DC();
    sub_1C458EC90();
    *v1 = v4;
  }
}

void sub_1C458918C()
{
  v2 = sub_1C4436470();
  *v1 = v0;
  if (!v2)
  {
    v3 = *(v0 + 16);
    sub_1C443F0C8();
    sub_1C440F1DC();
    sub_1C4505908();
    *v1 = v4;
  }
}

void sub_1C4589208()
{
  v2 = sub_1C4436470();
  *v1 = v0;
  if (!v2)
  {
    v3 = *(v0 + 16);
    sub_1C440C33C();
    sub_1C440F1DC();
    sub_1C4505908();
    *v1 = v4;
  }
}

void sub_1C45892C0()
{
  v2 = sub_1C4436470();
  *v1 = v0;
  if (!v2)
  {
    v3 = *(v0 + 16);
    sub_1C440BB08();
    sub_1C440F1DC();
    sub_1C4505908();
    *v1 = v4;
  }
}

void sub_1C4589438()
{
  v2 = sub_1C4436470();
  *v1 = v0;
  if (!v2)
  {
    v3 = *(v0 + 16);
    sub_1C441C078();
    sub_1C440F1DC();
    sub_1C44589B0();
    *v1 = v4;
  }
}

void sub_1C4589538()
{
  v2 = sub_1C4436470();
  *v1 = v0;
  if (!v2)
  {
    v3 = *(v0 + 16);
    sub_1C444FC14();
    sub_1C440F1DC();
    sub_1C4505908();
    *v1 = v4;
  }
}

void sub_1C458959C()
{
  v2 = sub_1C4436470();
  *v1 = v0;
  if (!v2)
  {
    v3 = *(v0 + 16);
    sub_1C4415828();
    sub_1C440F1DC();
    sub_1C458EE30();
    *v1 = v4;
  }
}

void sub_1C45896CC()
{
  v2 = sub_1C4436470();
  *v1 = v0;
  if (!v2)
  {
    v3 = *(v0 + 16);
    sub_1C4434DE0();
    sub_1C440F1DC();
    sub_1C4505908();
    *v1 = v4;
  }
}

void sub_1C4589730()
{
  v2 = sub_1C4436470();
  *v1 = v0;
  if (!v2)
  {
    v3 = *(v0 + 16);
    sub_1C4415F18();
    sub_1C440F1DC();
    sub_1C4505908();
    *v1 = v4;
  }
}

void sub_1C45897E8()
{
  sub_1C441F35C();
  if (!(v2 ^ v3 | v1))
  {
    sub_1C43FBE0C();
    sub_1C443D5B8();
    *v0 = v4;
  }
}

void sub_1C4589838()
{
  sub_1C441F35C();
  if (!(v2 ^ v3 | v1))
  {
    sub_1C442FAB0();
    sub_1C4505908();
    *v0 = v4;
  }
}

void sub_1C45898D0()
{
  sub_1C4460164();
  if (!(v4 ^ v5 | v3))
  {
    *v0 = v1(v2 > 1);
  }
}

void sub_1C4589918()
{
  sub_1C441F35C();
  if (!(v2 ^ v3 | v1))
  {
    sub_1C4406500();
    sub_1C458E820();
    *v0 = v4;
  }
}

void sub_1C4589A28()
{
  sub_1C4460164();
  if (!(v4 ^ v5 | v3))
  {
    *v0 = v1(v2 > 1);
  }
}

void sub_1C4589B90()
{
  sub_1C441F35C();
  if (!(v2 ^ v3 | v1))
  {
    sub_1C441899C();
    sub_1C4505908();
    *v0 = v4;
  }
}

void sub_1C4589BEC()
{
  sub_1C441F35C();
  if (!(v2 ^ v3 | v1))
  {
    sub_1C445E73C();
    sub_1C4505908();
    *v0 = v4;
  }
}

void sub_1C4589C60()
{
  sub_1C441F35C();
  if (!(v2 ^ v3 | v1))
  {
    sub_1C441C7C8();
    sub_1C4505908();
    *v0 = v4;
  }
}

void sub_1C4589CD4()
{
  sub_1C441F35C();
  if (!(v2 ^ v3 | v1))
  {
    sub_1C447EF10();
    sub_1C458EC90();
    *v0 = v4;
  }
}

void sub_1C4589D3C()
{
  sub_1C441F35C();
  if (!(v2 ^ v3 | v1))
  {
    sub_1C443F0C8();
    sub_1C4505908();
    *v0 = v4;
  }
}

void sub_1C4589DB0()
{
  sub_1C441F35C();
  if (!(v2 ^ v3 | v1))
  {
    sub_1C440C33C();
    sub_1C4505908();
    *v0 = v4;
  }
}

void sub_1C4589E60()
{
  sub_1C441F35C();
  if (!(v2 ^ v3 | v1))
  {
    sub_1C440BB08();
    sub_1C4505908();
    *v0 = v4;
  }
}

void sub_1C4589FD0()
{
  sub_1C441F35C();
  if (!(v2 ^ v3 | v1))
  {
    sub_1C441C078();
    sub_1C44589B0();
    *v0 = v4;
  }
}

void sub_1C458A0C8()
{
  sub_1C441F35C();
  if (!(v2 ^ v3 | v1))
  {
    sub_1C444FC14();
    sub_1C4505908();
    *v0 = v4;
  }
}

void sub_1C458A124()
{
  sub_1C441F35C();
  if (!(v2 ^ v3 | v1))
  {
    sub_1C4415828();
    sub_1C458EE30();
    *v0 = v4;
  }
}

void sub_1C458A24C()
{
  sub_1C441F35C();
  if (!(v2 ^ v3 | v1))
  {
    sub_1C4434DE0();
    sub_1C4505908();
    *v0 = v4;
  }
}

void sub_1C458A2A8()
{
  sub_1C441F35C();
  if (!(v2 ^ v3 | v1))
  {
    sub_1C4415F18();
    sub_1C4505908();
    *v0 = v4;
  }
}

void sub_1C458A3C0()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B88A0, &unk_1C4F0DCA0);
      v8 = sub_1C4424F30();
      sub_1C43FFC18(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C45A321C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B88A8, &qword_1C4F115E0);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458A474()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B8C08, &unk_1C4F0E040);
      v8 = sub_1C4424F30();
      sub_1C43FFC18(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C4461B98(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B8C10, &qword_1C4F5D530);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458A528()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B8938, &unk_1C4F0DD40);
      v8 = sub_1C44108A0();
      sub_1C4418FDC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C445ECD8(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B8940, &unk_1C4F0EB40);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458A624()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B8920, &qword_1C4F0DD28);
      v8 = sub_1C44108A0();
      sub_1C4418FDC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C445ECB0(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B8928, &qword_1C4F0DD30);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458A708()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B8A10, &qword_1C4F0DE30);
      v8 = sub_1C4404028();
      sub_1C4418FDC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C455B518(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B8A18, &qword_1C4F0DE38);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

unint64_t sub_1C458A930()
{
  result = qword_1EC0B8718;
  if (!qword_1EC0B8718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B8718);
  }

  return result;
}

unint64_t sub_1C458A984()
{
  result = qword_1EC0B8730;
  if (!qword_1EC0B8730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B8730);
  }

  return result;
}

uint64_t sub_1C458A9D8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0B8720, &qword_1C4F0D970);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C458AA50()
{
  result = qword_1EC0B8748;
  if (!qword_1EC0B8748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B8748);
  }

  return result;
}

unint64_t sub_1C458AAA4(uint64_t a1)
{
  result = sub_1C458AACC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C458AACC()
{
  result = qword_1EC0B8750;
  if (!qword_1EC0B8750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B8750);
  }

  return result;
}

unint64_t sub_1C458AB20(uint64_t a1)
{
  *(a1 + 8) = sub_1C458AB50();
  result = sub_1C458ABA4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C458AB50()
{
  result = qword_1EC0B8758;
  if (!qword_1EC0B8758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B8758);
  }

  return result;
}

unint64_t sub_1C458ABA4()
{
  result = qword_1EC0B8760;
  if (!qword_1EC0B8760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B8760);
  }

  return result;
}

__n128 sub_1C458ABF8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for App.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C458ACFC()
{
  result = qword_1EC0B8768;
  if (!qword_1EC0B8768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B8768);
  }

  return result;
}

unint64_t sub_1C458AD54()
{
  result = qword_1EC0B8770;
  if (!qword_1EC0B8770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B8770);
  }

  return result;
}

unint64_t sub_1C458ADAC()
{
  result = qword_1EC0B8778;
  if (!qword_1EC0B8778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B8778);
  }

  return result;
}

void sub_1C458AE7C()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B8CF8, &qword_1C4F0E130);
      v8 = sub_1C44182F4();
      sub_1C43FCFCC(v8);
      sub_1C4416D10(v9);
      if (v1)
      {
LABEL_9:
        v10 = sub_1C4412BE8();
        sub_1C45A3220(v10);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B8D00, &qword_1C4F0E138);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458B1B8()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B87A0, &unk_1C4F0DB90);
      v8 = sub_1C4424F30();
      sub_1C43FFC18(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C45A321C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B87A8, &unk_1C4F0E930);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458B26C()
{
  sub_1C441581C();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v7 == v8)
  {
LABEL_7:
    sub_1C442DD18(v6);
    if (v3)
    {
      sub_1C456902C(&qword_1EC0B87B0, &unk_1C4F0DBA0);
      v9 = sub_1C44182F4();
      sub_1C43FCFCC(v9);
      sub_1C4416D10(v10);
      if (v1)
      {
LABEL_9:
        v11 = sub_1C4412BE8();
        sub_1C459C4FC(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E7CC0];
      if (v1)
      {
        goto LABEL_9;
      }
    }

    memcpy((v3 + 32), (v0 + 32), 2 * v2);
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v7)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458B448()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B8788, &qword_1C4F0DB78);
      v8 = sub_1C44108A0();
      sub_1C4418FDC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C445ECB0(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B8790, &qword_1C4F0DB80);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458B504()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B8880, &unk_1C4F0DC70);
      v8 = sub_1C44108A0();
      sub_1C4418FDC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C445ECD8(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B8888, &qword_1C4F0E990);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458B5C0()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B8840, &unk_1C4F0DC30);
      v8 = sub_1C4404028();
      sub_1C4418FDC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C455B518(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B8848, &qword_1C4F40C80);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458B680()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B8850, &unk_1C4F0DC40);
      v8 = sub_1C4404028();
      sub_1C4418FDC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C45A3238(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B8858, &unk_1C4F40C70);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458B740()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B87D8, &qword_1C4F0DBC8);
      v8 = sub_1C4424F30();
      sub_1C43FFC18(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C4461B98(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B87E0, &qword_1C4F0DBD0);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458B824()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B8870, &unk_1C4F0DC60);
      v8 = sub_1C44148B0();
      sub_1C442C33C(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C4474DF4(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B8878, &unk_1C4F0E9E0);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458B8D8()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B8820, &unk_1C4F0DC10);
      v8 = sub_1C44108A0();
      sub_1C4418FDC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C445ECD8(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B8828, &qword_1C4F0E9C0);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458B994()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B88C8, &qword_1C4F0DCC8);
      v8 = sub_1C44148B0();
      sub_1C442C33C(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C4474DF4(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B88D0, &unk_1C4F0DCD0);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458BC50()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B8860, &qword_1C4F0DC50);
      v8 = sub_1C4404028();
      sub_1C4418FDC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C45A3234(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B8868, &qword_1C4F0DC58);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458BD50()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B88E0, &qword_1C4F0DCE0);
      v8 = sub_1C4424F30();
      sub_1C43FFC18(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C4461B98(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B88E8, &qword_1C4F0DCE8);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458BE94()
{
  sub_1C441B754();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v8 == v9)
  {
LABEL_7:
    sub_1C441E1B8(v7);
    if (v4)
    {
      sub_1C4422208(v10, v11, v12, v13, v14, v15);
      v16 = sub_1C44182F4();
      j__malloc_size(v16);
      sub_1C441EA34();
      v16[2] = v3;
      v16[3] = v17;
      if (v2)
      {
LABEL_9:
        v18 = sub_1C44099F4();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    v19 = sub_1C440CAA0();
    memcpy(v19, v20, v21);
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v8)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458BF90()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B8960, &qword_1C4F0DD68);
      v8 = sub_1C44108A0();
      sub_1C4418FDC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C445ECD8(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B8968, &qword_1C4F0DD70);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458C04C()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
      v8 = sub_1C44108A0();
      sub_1C4418FDC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C445ECD8(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B8CF0, &unk_1C4F30C40);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458C188()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B8B00, &qword_1C4F0DF30);
      v8 = sub_1C44108A0();
      sub_1C4418FDC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C445ECD8(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B8B08, &qword_1C4F0DF38);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458C26C()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B89B8, &qword_1C4F0DDD8);
      v8 = sub_1C4424F30();
      sub_1C43FFC18(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C45A321C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B89C0, &unk_1C4F0DDE0);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458C35C()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B8B60, &qword_1C4F0DF90);
      v8 = sub_1C44108A0();
      sub_1C4418FDC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C445ECD8(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B8B68, &qword_1C4F0DF98);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458C8B8()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B8A88, &unk_1C4F0EDB0);
      v8 = sub_1C44148B0();
      sub_1C442C33C(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C4474DF4(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B8A90, &unk_1C4F0DEC0);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458C9BC()
{
  sub_1C441B754();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v8 == v9)
  {
LABEL_7:
    sub_1C441E1B8(v7);
    if (v4)
    {
      sub_1C4422208(v10, v11, v12, v13, v14, v15);
      v16 = swift_allocObject();
      v17 = j__malloc_size(v16);
      v16[2] = v3;
      v16[3] = 2 * ((v17 - 32) / 24);
      if (v2)
      {
LABEL_9:
        v18 = sub_1C44099F4();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    v19 = sub_1C440CAA0();
    memcpy(v19, v20, v21);
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v8)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458CA88()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B8A70, &unk_1C4F0DEA0);
      v8 = sub_1C44148B0();
      sub_1C442C33C(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C4474DF4(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B8A78, &qword_1C4F5EA00);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_1C458CB7C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1C456902C(&qword_1EC0B87E8, &qword_1C4F0DBD8);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1C445ECD8(a4 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1C456902C(&qword_1EC0B87F0, &unk_1C4F0DBE0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1C458CD80()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B8D28, &qword_1C4F0E160);
      v8 = sub_1C44108A0();
      sub_1C4418FDC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C445ECD8(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B8D30, &qword_1C4F0E168);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458CE3C()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B8800, &unk_1C4F0DBF0);
      v8 = sub_1C4424F30();
      sub_1C43FFC18(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C45A321C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B8808, &qword_1C4F3C4B0);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_1C458CEF0(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1C456902C(&qword_1EC0B8CC8, &qword_1C4F0E100);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1C4463694(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1C456902C(&qword_1EC0B8CD0, &qword_1C4F0E108);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1C458D008()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B8CA8, &qword_1C4F0E0E0);
      v8 = sub_1C44108A0();
      sub_1C4418FDC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C445ECD8(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B8CB0, &qword_1C4F0E0E8);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458D0C4()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B8C98, &qword_1C4F0E0D0);
      v8 = sub_1C4404028();
      sub_1C4418FDC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C45A3234(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B8CA0, &qword_1C4F0E0D8);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458D184()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B8CB8, &qword_1C4F0E0F0);
      v8 = sub_1C44182F4();
      sub_1C43FCFCC(v8);
      sub_1C4416D10(v9);
      if (v1)
      {
LABEL_9:
        v10 = sub_1C4412BE8();
        sub_1C45A3220(v10);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B8CC0, &qword_1C4F0E0F8);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458D244()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B8C88, &qword_1C4F0E0C0);
      v8 = sub_1C44148B0();
      sub_1C442C33C(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C4474DF4(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B8C90, &qword_1C4F0E0C8);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_1C458D364(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1C456902C(&qword_1EC0B89D0, &qword_1C4F0DDF0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1C445ECD8(a4 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1C456902C(&qword_1EC0B89D8, &qword_1C4F0DDF8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1C458D53C()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B8890, &unk_1C4F0DC90);
      v8 = sub_1C44182F4();
      sub_1C43FCFCC(v8);
      sub_1C4416D10(v9);
      if (v1)
      {
LABEL_9:
        v10 = sub_1C4412BE8();
        sub_1C45A3220(v10);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B8898, &unk_1C4F30C50);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458D6B0()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B8C68, &unk_1C4F0E0A0);
      v8 = sub_1C44108A0();
      sub_1C4418FDC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C445ECD8(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B8C70, &qword_1C4F0EF80);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458D76C()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B8C58, &unk_1C4F0E090);
      v8 = sub_1C44108A0();
      sub_1C4418FDC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C445ECD8(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B8C60, &unk_1C4F0EF70);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458D828()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B8C48, &qword_1C4F0E080);
      v8 = sub_1C4404028();
      sub_1C4418FDC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C455B518(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B8C50, &qword_1C4F0E088);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458D8E8()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B8C38, &unk_1C4F0E070);
      v8 = sub_1C44108A0();
      sub_1C4418FDC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C445ECD8(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B8C40, &unk_1C4F0EF60);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458D9A4()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B8C28, &qword_1C4F0E060);
      v8 = sub_1C4424F30();
      sub_1C43FFC18(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C45A321C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B8C30, &qword_1C4F0E068);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458DAD8()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B8B28, &unk_1C4F0DF50);
      v8 = sub_1C44148B0();
      sub_1C442C33C(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C4474DF4(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(qword_1EC0C0740, &qword_1C4F0D000);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458DBB4()
{
  sub_1C441B754();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v8 == v9)
  {
LABEL_7:
    sub_1C441E1B8(v7);
    if (v4)
    {
      sub_1C4422208(v10, v11, v12, v13, v14, v15);
      v16 = swift_allocObject();
      v17 = j__malloc_size(v16);
      v16[2] = v3;
      v16[3] = 2 * v17 - 64;
      if (v2)
      {
LABEL_9:
        v18 = sub_1C44099F4();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    v19 = sub_1C440CAA0();
    memcpy(v19, v20, v3);
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v8)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458DC70()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B89B0, &qword_1C4F0DDD0);
      v8 = sub_1C4404028();
      sub_1C4418FDC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C459C620(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458DD30()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B8BF8, &unk_1C4F0E030);
      v8 = sub_1C44108A0();
      sub_1C4418FDC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C445ECD8(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B8C00, &unk_1C4F40CA0);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458DDEC()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B8BE8, &qword_1C4F0E020);
      v8 = sub_1C44108A0();
      sub_1C4418FDC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C445ECD8(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B8BF0, &qword_1C4F0E028);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458DFC8()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B8908, &unk_1C4F0DD10);
      v8 = sub_1C4404028();
      sub_1C4418FDC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C459CAAC(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0C6350, &qword_1C4F6BAB0);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458E108()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B8BD8, &unk_1C4F0E010);
      v8 = sub_1C44108A0();
      sub_1C4418FDC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C445ECD8(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B8BE0, &unk_1C4F0EF30);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458E1C4()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B8BD0, &unk_1C4F0E000);
      v8 = sub_1C44148B0();
      sub_1C442C33C(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C4474DF4(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458E540()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B88F8, &qword_1C4F0DCF8);
      v8 = sub_1C44148B0();
      sub_1C442C33C(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C4474DF4(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B84C0, &qword_1C4F0DD00);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458E5F4()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B8D08, &unk_1C4F0E140);
      v8 = sub_1C44108A0();
      sub_1C4418FDC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C445ECD8(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B8D10, &qword_1C4F0EFE0);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458E6B0()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B8D18, &unk_1C4F0E150);
      v8 = sub_1C4404028();
      sub_1C4418FDC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C459CBE4(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B8D20, &unk_1C4F40CC0);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458E820()
{
  sub_1C43FFC44();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v8 == v9)
  {
LABEL_7:
    sub_1C44108C0(v7);
    if (v4)
    {
      sub_1C4422208(v10, v11, v12, v13, v14, v15);
      v16 = swift_allocObject();
      j__malloc_size(v16);
      sub_1C441EA34();
      v16[2] = v3;
      v16[3] = v17;
      if (v2)
      {
LABEL_9:
        v18 = sub_1C44330CC();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    sub_1C4405788();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v8)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458EA8C()
{
  sub_1C442F0C4();
  sub_1C43FFC44();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v7 == v8)
  {
LABEL_7:
    sub_1C44108C0(v6);
    if (v3)
    {
      sub_1C4422208(v9, v10, v11, v12, v13, v14);
      v15 = sub_1C4440F6C();
      sub_1C43FEA8C(v15);
      if (v2)
      {
LABEL_9:
        v16 = sub_1C44330CC();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_12:

        sub_1C4422220();
        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    sub_1C4405788();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v7)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458EB6C()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B8A00, &qword_1C4F0DE20);
      v8 = sub_1C44148B0();
      sub_1C442C33C(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C4474DF4(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B8A08, &qword_1C4F0DE28);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458EC90()
{
  sub_1C442F0C4();
  sub_1C43FFC44();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v7 == v8)
  {
LABEL_7:
    sub_1C44108C0(v6);
    if (v3)
    {
      sub_1C4422208(v9, v10, v11, v12, v13, v14);
      v15 = sub_1C4440F6C();
      sub_1C43FEA8C(v15);
      if (v2)
      {
LABEL_9:
        v16 = sub_1C44330CC();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_12:

        sub_1C4422220();
        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    sub_1C4405788();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v7)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458ED30()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B8AB8, &qword_1C4F0DEE8);
      v8 = sub_1C4404028();
      sub_1C4418FDC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C459CCF8(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458EE30()
{
  sub_1C442F0C4();
  sub_1C43FFC44();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v7 == v8)
  {
LABEL_7:
    sub_1C44108C0(v6);
    if (v3)
    {
      sub_1C4422208(v9, v10, v11, v12, v13, v14);
      v15 = sub_1C4440F6C();
      sub_1C43FEA8C(v15);
      if (v2)
      {
LABEL_9:
        v16 = sub_1C44330CC();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_12:

        sub_1C4422220();
        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    sub_1C4405788();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v7)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458EF00()
{
  sub_1C43FFC44();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v8 == v9)
  {
LABEL_7:
    sub_1C44108C0(v7);
    if (v4)
    {
      sub_1C4422208(v10, v11, v12, v13, v14, v15);
      v16 = sub_1C44182F4();
      j__malloc_size(v16);
      sub_1C441EA34();
      v16[2] = v3;
      v16[3] = v17;
      if (v2)
      {
LABEL_9:
        v18 = sub_1C44330CC();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    sub_1C4405788();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v8)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458EFF4()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B8530, qword_1C4F0CF70);
      v8 = sub_1C44182F4();
      sub_1C43FCFCC(v8);
      sub_1C4416D10(v9);
      if (v1)
      {
LABEL_9:
        v10 = sub_1C4412BE8();
        sub_1C45A3220(v10);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B8B10, &qword_1C4F0EF40);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458F0B4()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B8B18, &qword_1C4F0DF40);
      v8 = sub_1C44148B0();
      sub_1C442C33C(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C4474DF4(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B8B20, &qword_1C4F0DF48);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_1C458F268(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1C456902C(&qword_1EC0C51B0, &unk_1C4F0DC80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1C445ECD8(a4 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1C458F380()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B8980, &unk_1C4F0DD90);
      v8 = sub_1C44148B0();
      sub_1C442C33C(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C4474DF4(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B8988, &unk_1C4F5D520);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_1C458F434(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1C456902C(&qword_1EC0B8978, &qword_1C4F0DD80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1C4474DF4(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1C456902C(&unk_1EC0C47C0, &qword_1C4F0DD88);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1C458F544()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&unk_1EC0C47E0, &qword_1C4F0DDA0);
      v8 = sub_1C44148B0();
      sub_1C442C33C(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C4474DF4(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B8990, &qword_1C4F0DDA8);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C458F6A8()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B8A50, &qword_1C4F0DE70);
      v8 = sub_1C4404028();
      sub_1C4418FDC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C455B518(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B8A58, &qword_1C4F0DE78);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t AppCategoryDistributionProvider.__allocating_init()()
{
  sub_1C4406518();
  v0 = swift_allocObject();
  AppCategoryDistributionProvider.init()();
  return v0;
}

uint64_t AppCategoryDistributionProvider.init()()
{
  *(v0 + 16) = 0x404E000000000000;
  *(v0 + 24) = [objc_allocWithZone(MEMORY[0x1E698F250]) init];
  return v0;
}

uint64_t sub_1C458F810(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v5 = sub_1C442C368();
  *(v5 + 16) = sub_1C4419004();
  v85 = (v5 + 16);
  v6 = sub_1C442C368();
  *(v6 + 16) = sub_1C4419004();
  v84 = (v6 + 16);
  v7 = sub_1C442C368();
  *(v7 + 16) = sub_1C4419004();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0xE000000000000000;
  v92 = nullsub_1;
  v93 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v89 = 1107296256;
  v90 = sub_1C44405F8;
  v91 = &unk_1F43E0E58;
  v9 = _Block_copy(&aBlock);
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = v7;
  v10[4] = v5;
  v10[5] = v6;
  v92 = sub_1C4590A20;
  v93 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v89 = 1107296256;
  v90 = sub_1C4440590;
  v91 = &unk_1F43E0EA8;
  v11 = _Block_copy(&aBlock);

  v82 = v5;

  v81 = v6;

  v12 = [a3 sinkWithCompletion:v9 receiveInput:v11];
  _Block_release(v11);
  _Block_release(v9);

  swift_beginAccess();
  v13 = *(v8 + 16);
  v14 = *(v8 + 24);
  swift_beginAccess();
  v15 = *(v7 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  *&v16 = COERCE_DOUBLE(sub_1C465C024(v13, v14, v15));
  LOBYTE(v13) = v17;

  if (v13)
  {
    swift_endAccess();
    v18 = 0;
    v19 = 0;
LABEL_21:
    swift_beginAccess();
    v66 = *(v82 + 16);

    v67 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v68 = sub_1C457DA58(v67);

    v69 = *(v82 + 16);
    *(v82 + 16) = v68;

    swift_beginAccess();
    v70 = *(v81 + 16);

    v71 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v72 = sub_1C457DA58(v71);

    v73 = *(v81 + 16);
    *(v81 + 16) = v72;

    sub_1C456902C(&qword_1EC0B8D58, &unk_1C4F0E210);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0CE60;
    *(inited + 32) = 0xD000000000000019;
    *(inited + 40) = 0x80000001C4F8A440;
    *(inited + 48) = *(v82 + 16);
    *(inited + 56) = 0xD000000000000020;
    *(inited + 64) = 0x80000001C4F8A460;
    *(inited + 72) = *(v81 + 16);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C456902C(&qword_1EC0C6370, &qword_1C4F0E1A0);
    v75 = sub_1C4F00F28();

    sub_1C44239FC(v18);
    sub_1C44239FC(v19);
    return v75;
  }

  swift_endAccess();
  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v20 = sub_1C4F00978();
  sub_1C442B738(v20, qword_1EDDFECB8);

  v21 = sub_1C4F00968();
  v22 = sub_1C4F01CF8();
  v77 = v4;
  v78 = *&v16;
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v87 = v24;
    *v23 = 136315138;
    v25 = *(v8 + 16);
    v26 = *(v8 + 24);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v27 = sub_1C441D828(v25, v26, &v87);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_1C43F8000, v21, v22, "%s is still in progress", v23, 0xCu);
    sub_1C440962C(v24);
    MEMORY[0x1C6942830](v24, -1, -1);
    MEMORY[0x1C6942830](v23, -1, -1);
  }

  else
  {
  }

  v28 = objc_opt_self();
  v29 = *(v8 + 16);
  v30 = *(v8 + 24);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v31 = sub_1C4F01108();

  v32 = [v28 categoryForBundleId_];

  v33 = [v32 identifier];
  v34 = sub_1C4F01138();
  v36 = v35;

  v37 = *(v8 + 16);
  v38 = *(v8 + 24);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  LOBYTE(v37) = sub_1C4A2CB60(v37, v38);

  v79 = sub_1C4A2CBE8(v37);
  v40 = v39;
  sub_1C4EF9AD8();
  v42 = v41;
  swift_beginAccess();
  v43 = *v85;
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C441F370();
  v44 = sub_1C445FAA8(v34, v36);
  if (__OFADD__(*(a2 + 16), (v45 & 1) == 0))
  {
    __break(1u);
    goto LABEL_23;
  }

  v46 = v44;
  v47 = v45;
  sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
  if (sub_1C4F02458())
  {
    v48 = sub_1C445FAA8(v34, v36);
    if ((v47 & 1) != (v49 & 1))
    {
      goto LABEL_24;
    }

    v46 = v48;
  }

  v50 = v42 - v78;
  *v85 = v86;
  if ((v47 & 1) == 0)
  {
    sub_1C457DBD8(v46, v34, v36, v86);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  *(*(v86 + 56) + 8 * v46) = v50 + *(*(v86 + 56) + 8 * v46);
  swift_endAccess();

  swift_beginAccess();
  v51 = *v84;
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C441F370();
  v52 = sub_1C445FAA8(v79, v40);
  v54 = v53;
  if (__OFADD__(*(v86 + 16), (v53 & 1) == 0))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v55 = v52;
  if ((sub_1C4F02458() & 1) == 0)
  {
LABEL_18:
    *v84 = v86;
    if ((v54 & 1) == 0)
    {
      sub_1C457DBD8(v55, v79, v40, v86);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    *(*(v86 + 56) + 8 * v55) = v50 + *(*(v86 + 56) + 8 * v55);
    swift_endAccess();

    v58 = *(v8 + 16);
    v59 = *(v8 + 24);
    swift_beginAccess();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C459203C(v58, v59, v60, v61, v62, v63, v64, v65, v77, v7);
    swift_endAccess();

    v19 = sub_1C457EB40;
    v18 = sub_1C457EB40;
    goto LABEL_21;
  }

  v56 = sub_1C445FAA8(v79, v40);
  if ((v54 & 1) == (v57 & 1))
  {
    v55 = v56;
    goto LABEL_18;
  }

LABEL_24:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

void sub_1C45900B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [a1 eventBody];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 bundleID];
    v12 = sub_1C4F01138();
    v14 = v13;

    swift_beginAccess();
    v15 = *(a2 + 24);
    *(a2 + 16) = v12;
    *(a2 + 24) = v14;

    if ([v10 isStarting])
    {
      swift_beginAccess();
      v17 = *(a2 + 16);
      v16 = *(a2 + 24);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      [v10 absoluteTimestamp];
      swift_beginAccess();
      v18 = *(a3 + 16);
      swift_isUniquelyReferenced_nonNull_native();
      v87 = *(a3 + 16);
      sub_1C4660594();
      *(a3 + 16) = v87;

      swift_endAccess();
LABEL_31:

      return;
    }

    swift_beginAccess();
    v22 = *(a2 + 16);
    v23 = *(a2 + 24);
    swift_beginAccess();
    v24 = *(a3 + 16);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    *&v25 = COERCE_DOUBLE(sub_1C465C024(v22, v23, v24));
    LOBYTE(v22) = v26;

    if (v22)
    {
      swift_endAccess();
      if (qword_1EDDFECB0 != -1)
      {
        swift_once();
      }

      v27 = sub_1C4F00978();
      sub_1C442B738(v27, qword_1EDDFECB8);

      v28 = sub_1C4F00968();
      v29 = sub_1C4F01CF8();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v87 = v31;
        *v30 = 136315138;
        swift_beginAccess();
        v33 = *(a2 + 16);
        v32 = *(a2 + 24);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v34 = sub_1C441D828(v33, v32, &v87);

        *(v30 + 4) = v34;
        _os_log_impl(&dword_1C43F8000, v28, v29, "%s didn't have an isStarting event in the given time duration", v30, 0xCu);
        sub_1C440962C(v31);
        MEMORY[0x1C6942830](v31, -1, -1);
        MEMORY[0x1C6942830](v30, -1, -1);
      }

      goto LABEL_31;
    }

    v82 = a5;
    v83 = *&v25;
    swift_endAccess();
    v35 = objc_opt_self();
    swift_beginAccess();
    v36 = *(a2 + 16);
    v37 = *(a2 + 24);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v38 = sub_1C4F01108();

    v39 = [v35 categoryForBundleId_];

    v79 = v39;
    v40 = [v39 identifier];
    v41 = sub_1C4F01138();
    v43 = v42;

    swift_beginAccess();
    v44 = *(a2 + 16);
    v45 = *(a2 + 24);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    LOBYTE(v44) = sub_1C4A2CB60(v44, v45);

    v84 = sub_1C4A2CBE8(v44);
    osloga = v46;
    [v10 absoluteTimestamp];
    v48 = v47;
    swift_beginAccess();
    v49 = *(a4 + 16);
    swift_isUniquelyReferenced_nonNull_native();
    v50 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    v81 = v41;
    v51 = v41;
    v52 = v43;
    v53 = sub_1C445FAA8(v51, v43);
    if (__OFADD__(*(v50 + 16), (v54 & 1) == 0))
    {
      __break(1u);
    }

    else
    {
      v55 = v53;
      v56 = v54;
      v78 = sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
      if (sub_1C4F02458())
      {
        v57 = v52;
        v58 = sub_1C445FAA8(v81, v52);
        v60 = v84;
        if ((v56 & 1) != (v59 & 1))
        {
LABEL_34:
          sub_1C4F029F8();
          __break(1u);
          return;
        }

        v55 = v58;
      }

      else
      {
        v60 = v84;
        v57 = v52;
      }

      v61 = v48 - v83;
      *(a4 + 16) = v50;
      if ((v56 & 1) == 0)
      {
        sub_1C457DBD8(v55, v81, v57, v50);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      *(*(v50 + 56) + 8 * v55) = v61 + *(*(v50 + 56) + 8 * v55);
      swift_endAccess();

      swift_beginAccess();
      v62 = *(v82 + 16);
      swift_isUniquelyReferenced_nonNull_native();
      v63 = *(v82 + 16);
      *(v82 + 16) = 0x8000000000000000;
      v64 = sub_1C445FAA8(v60, osloga);
      v66 = v65;
      if (!__OFADD__(*(v63 + 16), (v65 & 1) == 0))
      {
        v67 = v64;
        if ((sub_1C4F02458() & 1) == 0)
        {
LABEL_28:
          *(v82 + 16) = v63;
          if ((v66 & 1) == 0)
          {
            sub_1C457DBD8(v67, v60, osloga, v63);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          }

          *(*(v63 + 56) + 8 * v67) = v61 + *(*(v63 + 56) + 8 * v67);
          swift_endAccess();

          swift_beginAccess();
          v71 = *(a2 + 16);
          v70 = *(a2 + 24);
          swift_beginAccess();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C459203C(v71, v70, v72, v73, v74, v75, v76, v77, v78, v79);
          swift_endAccess();

          goto LABEL_31;
        }

        v68 = sub_1C445FAA8(v60, osloga);
        if ((v66 & 1) == (v69 & 1))
        {
          v67 = v68;
          goto LABEL_28;
        }

        goto LABEL_34;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v19 = sub_1C4F00978();
  sub_1C442B738(v19, qword_1EDDFECB8);
  oslog = sub_1C4F00968();
  v20 = sub_1C4F01CF8();
  if (os_log_type_enabled(oslog, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1C43F8000, oslog, v20, "Unable to parse eventBody from read event in app launch featurizer", v21, 2u);
    MEMORY[0x1C6942830](v21, -1, -1);
  }
}

uint64_t sub_1C4590818(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 24);
  sub_1C4EF9AD8();
  v5 = sub_1C4F019C8();
  sub_1C4EF9AD8();
  v6 = sub_1C4F019C8();
  v7 = [v4 publisherWithStartTime:v5 endTime:v6 maxEvents:0 reversed:0];

  v9 = sub_1C458F810(v8, a2, v7);
  return v9;
}

uint64_t sub_1C45908C0()
{
  sub_1C456902C(&qword_1EC0C6370, &qword_1C4F0E1A0);

  return sub_1C4F00F28();
}

uint64_t AppCategoryDistributionProvider.__deallocating_deinit()
{
  sub_1C4406518();

  return swift_deallocClassInstance();
}

void sub_1C4590AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v22 = 0;
  v23 = 0;
  v57 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v24 = 0;
    v25 = 0;
    v54 = v22;
    v26 = *(&unk_1F43D2198 + v23 + 32);
    v27 = MEMORY[0x1E69E7CC0];
    do
    {
      v56 = v27;
      v28 = 0;
      v55 = v24;
      v29 = *(&unk_1F43D21C0 + v25 + 32);
      v30 = MEMORY[0x1E69E7CC0];
      do
      {
        v31 = byte_1F43D21E8[v28 + 32];
        sub_1C4590CC8();
        v33 = v32;
        v35 = v34;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = *(v30 + 16);
          sub_1C443D664();
          v30 = v40;
        }

        v36 = *(v30 + 16);
        v37 = v36 + 1;
        if (v36 >= *(v30 + 24) >> 1)
        {
          sub_1C443D664();
          v30 = v41;
        }

        ++v28;
        *(v30 + 16) = v37;
        v38 = (v30 + 32 + 16 * v36);
        *v38 = v33;
        v38[1] = v35;
      }

      while (v28 != 3);
      v27 = v56;
      v42 = *(v56 + 16);
      if (__OFADD__(v42, v37))
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:

        __break(1u);
        return;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || (v42 + v37) > *(v56 + 24) >> 1)
      {
        sub_1C443D664();
        v27 = v43;
      }

      if (!*(v30 + 16))
      {
        goto LABEL_24;
      }

      if ((*(v27 + 24) >> 1) - *(v27 + 16) <= v36)
      {
        goto LABEL_22;
      }

      swift_arrayInitWithCopy();

      v44 = *(v27 + 16);
      v45 = __OFADD__(v44, v37);
      v46 = v44 + v37;
      if (v45)
      {
        goto LABEL_23;
      }

      *(v27 + 16) = v46;
      v24 = 1;
      v25 = 1u;
    }

    while ((v55 & 1) == 0);
    sub_1C449ADBC(v27);
    v22 = 1;
    v23 = 1u;
    if ((v54 & 1) == 0)
    {
      continue;
    }

    break;
  }

  sub_1C4499940(v57, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

void sub_1C4590CC8()
{
  sub_1C440DDE8();
  v1 = v0;
  v3 = v2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](95, 0xE100000000000000);

  v4 = (v3 & 1) == 0;
  if (v3)
  {
    v5 = 0xD000000000000020;
  }

  else
  {
    v5 = 0xD000000000000019;
  }

  if (v4)
  {
    v6 = "";
  }

  else
  {
    v6 = "app_category_distribution";
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v5, v6 | 0x8000000000000000);

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](1601071455, 0xE400000000000000);

  if (v1)
  {
    if (v1 == 1)
    {
      v7 = 0x5F30335F76657270;
    }

    else
    {
      v7 = 0xD000000000000011;
    }

    if (v1 == 1)
    {
      v8 = 0xEF736574756E696DLL;
    }

    else
    {
      v8 = 0x80000001C4F8A4D0;
    }
  }

  else
  {
    v8 = 0xEE00736574756E69;
    v7 = 0x6D5F355F76657270;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v7, v8);

  sub_1C440F1EC();
}

double sub_1C4590E94()
{
  type metadata accessor for MotionStateDistributionProvider();
  v0 = swift_allocObject();
  *(v0 + 16) = 0x404E000000000000;
  type metadata accessor for MotionStateActivityIntervalProvider();
  swift_allocObject();
  v1 = MotionStateActivityIntervalProvider.init(motionStateDistributionProvider:)(v0);
  type metadata accessor for AppCategoryDistributionProvider();
  swift_allocObject();
  v2 = AppCategoryDistributionProvider.init()();
  v3 = swift_allocObject();
  result = 1800.0;
  *(v3 + 48) = xmmword_1C4F0D360;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  *(v3 + 16) = sub_1C455B64C;
  *(v3 + 24) = 0;
  return result;
}

uint64_t sub_1C4590F58(unsigned __int8 a1)
{
  v2 = sub_1C4EF9CD8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 1u)
  {
    sub_1C456902C(&qword_1EC0C6370, &qword_1C4F0E1A0);

    return sub_1C4F00F28();
  }

  else
  {
    sub_1C4EF9BE8();
    sub_1C456902C(&qword_1EC0C6370, &qword_1C4F0E1A0);
    v7 = sub_1C4F00F28();
    (*(v3 + 8))(v6, v2);
    return v7;
  }
}

uint64_t sub_1C45910E0(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1C4EF9CD8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 40);
  if (a1 > 1u)
  {
    v15 = type metadata accessor for ActivityInterval();
    return sub_1C4590818(a2, a2 + *(v15 + 20));
  }

  else
  {
    sub_1C4EF9BE8();
    v13 = sub_1C4590818(v11, a3);
    (*(v8 + 8))(v11, v7);
    return v13;
  }
}

uint64_t sub_1C4591220(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(type metadata accessor for ActivityInterval() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C45912B0, 0, 0);
}

uint64_t sub_1C45912B0()
{
  sub_1C43FBCD4();
  v1 = *(v0[3] + 32);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1C459134C;
  v3 = v0[4];
  v4 = v0[2];

  return sub_1C4A3E4A8();
}

uint64_t sub_1C459134C()
{
  sub_1C43FBCD4();
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C4591444, 0, 0);
}

uint64_t sub_1C4591444()
{
  sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
  v1 = sub_1C4F00F28();
  v2 = 0;
  v3 = 0;
  v59 = v0;
LABEL_2:
  v4 = 0;
  v5 = 0;
  v57 = v2;
  v62 = *(&unk_1F43D20D8 + v3 + 32);
LABEL_3:
  v6 = 0;
  v58 = v4;
  v7 = "";
  if (*(&unk_1F43D2100 + v5 + 32))
  {
    v7 = "app_category_distribution";
  }

  v63 = v7;
  v8 = 0xD000000000000020;
  if (!*(&unk_1F43D2100 + v5 + 32))
  {
    v8 = 0xD000000000000019;
  }

  v60 = v8;
  while (1)
  {
    v9 = *(&unk_1F43D2128 + v6 + 32);
    sub_1C4590CC8();
    v65 = v10;
    v66 = v11;
    v12 = v0[3];
    v13 = (v62 & 1) != 0 ? sub_1C45910E0(v9, v0[4], v0[2]) : sub_1C4590F58(v9);
    v14 = v13;
    v64 = v6;
    if (*(v13 + 16))
    {
      break;
    }

LABEL_27:

    sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
    sub_1C4F00F28();
LABEL_29:
    v40 = sub_1C457F798();
    v46 = v40;
    if (v40)
    {
      swift_isUniquelyReferenced_nonNull_native();
      result = sub_1C445FAA8(v65, v66);
      if (__OFADD__(v1[2], (v47 & 1) == 0))
      {
        goto LABEL_52;
      }

      v48 = result;
      v49 = v47;
      sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
      result = sub_1C4F02458();
      if (result)
      {
        result = sub_1C445FAA8(v65, v66);
        if ((v49 & 1) != (v50 & 1))
        {
          goto LABEL_48;
        }

        v48 = result;
      }

      if (v49)
      {

        v51 = v1[7];
        v52 = *(v51 + 8 * v48);
        *(v51 + 8 * v48) = v46;
      }

      else
      {
        v1[(v48 >> 6) + 8] |= 1 << v48;
        v53 = (v1[6] + 16 * v48);
        *v53 = v65;
        v53[1] = v66;
        *(v1[7] + 8 * v48) = v46;
        v54 = v1[2];
        v38 = __OFADD__(v54, 1);
        v55 = v54 + 1;
        if (v38)
        {
          goto LABEL_53;
        }

        v1[2] = v55;
      }
    }

    else
    {
      v41 = sub_1C445FAA8(v65, v66);
      v43 = v42;

      if (v43)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v67 = v1;
        v44 = v1[3];
        sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
        sub_1C4F02458();
        v1 = v67;
        v45 = *(v67[6] + 16 * v41 + 8);

        sub_1C4F02478();
      }
    }

    v6 = v64 + 1;
    if (v64 == 2)
    {
      v4 = 1;
      v5 = 1u;
      if ((v58 & 1) == 0)
      {
        goto LABEL_3;
      }

      v2 = 1;
      v3 = 1u;
      if (v57)
      {
        sub_1C4573D60(v0[4]);

        v56 = v0[1];

        return v56(v1);
      }

      goto LABEL_2;
    }
  }

  v15 = sub_1C445FAA8(v60, v63 | 0x8000000000000000);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
    goto LABEL_27;
  }

  v61 = v1;
  v18 = *(*(v14 + 56) + 8 * v15);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C456902C(&qword_1EC0B85D0, &unk_1C4F6E060);
  v19 = sub_1C4F02538();
  v20 = v19;
  v21 = 0;
  v22 = 1 << *(v18 + 32);
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & *(v18 + 64);
  v25 = (v22 + 63) >> 6;
  v26 = v19 + 64;
  if (v24)
  {
    while (1)
    {
      v27 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_23:
      v30 = v27 | (v21 << 6);
      v31 = (*(v18 + 48) + 16 * v30);
      v33 = *v31;
      v32 = v31[1];
      v34 = *(*(v18 + 56) + 8 * v30);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      result = sub_1C4F019C8();
      *(v26 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
      v36 = (v20[6] + 16 * v30);
      *v36 = v33;
      v36[1] = v32;
      *(v20[7] + 8 * v30) = result;
      v37 = v20[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        break;
      }

      v20[2] = v39;
      if (!v24)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    return result;
  }

LABEL_18:
  v28 = v21;
  v1 = v61;
  while (1)
  {
    v21 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v21 >= v25)
    {

      sub_1C465CD38(v20);

      v0 = v59;
      goto LABEL_29;
    }

    v29 = *(v18 + 64 + 8 * v21);
    ++v28;
    if (v29)
    {
      v27 = __clz(__rbit64(v29));
      v24 = (v29 - 1) & v29;
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_48:

  return sub_1C4F029F8();
}

uint64_t sub_1C4591A00@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v5 = sub_1C4592B18(&qword_1EC0B8D70, a1, type metadata accessor for AppCategoryDistributionSignal);
  *a2 = a1;
  a2[1] = v2;
  a2[2] = v5;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4591A80()
{
  sub_1C43FBCD4();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1C457386C;

  return sub_1C4591220(v2);
}

uint64_t sub_1C4591DA4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4573EBC;

  return sub_1C4591A80();
}

uint64_t sub_1C4591E9C(uint64_t a1, uint64_t a2)
{
  result = sub_1C4592B18(&qword_1EC0B8D60, a2, type metadata accessor for AppCategoryDistributionSignal);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4591EF4(uint64_t a1, uint64_t a2)
{
  result = sub_1C4592B18(&qword_1EC0B8D68, a2, type metadata accessor for AppCategoryDistributionSignal);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4591F4C()
{
  sub_1C441173C();
  result = sub_1C445FAA8(v2, v3);
  v6 = v5;
  if (v5)
  {
    v7 = result;
    v8 = *v1;
    swift_isUniquelyReferenced_nonNull_native();
    v11 = *v1;
    v9 = *(*v1 + 24);
    sub_1C456902C(&qword_1EC0B8DB8, &qword_1C4F0E350);
    sub_1C4F02458();
    v10 = *(*(v11 + 48) + 16 * v7 + 8);

    sub_1C447D27C(*(v11 + 56) + 8 * v7, v0);
    result = sub_1C4F02478();
    *v1 = v11;
  }

  else
  {
    *v0 = 0;
  }

  *(v0 + 8) = (v6 & 1) == 0;
  return result;
}

void sub_1C459203C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C440DDE8();
  v11 = v10;
  v12 = *v10;
  v15 = sub_1C445FAA8(v13, v14);
  if (v16)
  {
    v17 = v15;
    v18 = *v11;
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C44108D0();
    sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
    sub_1C440A4F4();
    v19 = *(*(a10 + 48) + 16 * v17 + 8);

    v20 = *(*(a10 + 56) + 8 * v17);
    sub_1C4F02478();
    *v11 = a10;
  }

  sub_1C440F1EC();
}

void sub_1C45920FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C440DDE8();
  v11 = v10;
  v12 = *v10;
  v15 = sub_1C445FAA8(v13, v14);
  if (v16)
  {
    v17 = v15;
    v18 = *v11;
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C43FEAB4();
    sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
    sub_1C440D014();
    v19 = *(*(a10 + 48) + 16 * v17 + 8);

    v20 = *(*(a10 + 56) + 8 * v17);
    sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
    sub_1C4F02478();
    *v11 = a10;
  }

  sub_1C440F1EC();
}

void sub_1C45921C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C440DDE8();
  v12 = v10;
  v13 = *v10;
  sub_1C457AE04(v14);
  if (v15)
  {
    sub_1C4416D20();
    sub_1C4406528();
    sub_1C456902C(&qword_1EC0B8D90, &qword_1C4F0E330);
    sub_1C440A4F4();
    v16 = *(*(a10 + 56) + 8 * v11);
    type metadata accessor for PHPersonAgeType(0);
    sub_1C4592B18(&qword_1EC0B8D98, 255, type metadata accessor for PHPersonAgeType);
    sub_1C4F02478();
    *v12 = a10;
  }

  sub_1C440F1EC();
}

uint64_t sub_1C4592384()
{
  sub_1C441173C();
  sub_1C44E3664();
  if (v5)
  {
    sub_1C4416D20();
    sub_1C4406528();
    sub_1C456902C(&qword_1EC0B8DB0, &qword_1C4F0E348);
    v6 = sub_1C440A4F4();
    sub_1C4402B20(v6, v7, v8, v9, v10, v11, v12, v13, v26, v27);
    v14 = sub_1C4EFF0C8();
    sub_1C4419024(v14);
    (*(v15 + 8))(v4 + *(v15 + 72) * v2, v3);
    v16 = *(v1 + 56);
    v17 = type metadata accessor for EntityMatch(0);
    sub_1C43FBCE0(v17);
    sub_1C4592AB8(v16 + *(v18 + 72) * v2, v0, type metadata accessor for EntityMatch);
    sub_1C4412C0C();
    sub_1C4592B18(v19, 255, v20);
    sub_1C43FCFF4();
    sub_1C4F02478();
    v21 = sub_1C442C384();
    v24 = v17;
  }

  else
  {
    type metadata accessor for EntityMatch(0);
    v21 = sub_1C4412BF8();
  }

  return sub_1C440BAA8(v21, v22, v23, v24);
}

uint64_t sub_1C45924C4()
{
  sub_1C441173C();
  sub_1C44E3664();
  if (v5)
  {
    sub_1C4416D20();
    sub_1C4406528();
    sub_1C456902C(&qword_1EC0B8DD8, qword_1C4F0E370);
    v6 = sub_1C440A4F4();
    sub_1C4402B20(v6, v7, v8, v9, v10, v11, v12, v13, v26, v27);
    v14 = sub_1C4EFF0C8();
    sub_1C4419024(v14);
    (*(v15 + 8))(v4 + *(v15 + 72) * v2, v3);
    v16 = *(v1 + 56);
    v17 = sub_1C4EF9D38();
    sub_1C43FBCE0(v17);
    (*(v18 + 32))(v0, v16 + *(v18 + 72) * v2, v17);
    sub_1C4412C0C();
    sub_1C4592B18(v19, 255, v20);
    sub_1C43FCFF4();
    sub_1C4F02478();
    v21 = sub_1C442C384();
    v24 = v17;
  }

  else
  {
    sub_1C4EF9D38();
    v21 = sub_1C4412BF8();
  }

  return sub_1C440BAA8(v21, v22, v23, v24);
}

uint64_t sub_1C4592604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C440DDE8();
  sub_1C441173C();
  sub_1C457EB3C();
  if (v12)
  {
    sub_1C4416D20();
    sub_1C4406528();
    sub_1C456902C(&qword_1EC0B8DD0, &qword_1C4F0E368);
    sub_1C440A4F4();
    v13 = *(a10 + 48) + 32 * v11;
    v14 = *(v13 + 8);
    v15 = *(v13 + 24);

    v16 = *(a10 + 56);
    v17 = sub_1C4EFF8A8();
    sub_1C4419024(v17);
    (*(v18 + 32))(v10, v16 + *(v18 + 72) * v11, v14);
    sub_1C4592B60();
    sub_1C43FCFF4();
    sub_1C4F02478();
    sub_1C442C384();
  }

  else
  {
    sub_1C4EFF8A8();
    sub_1C4412BF8();
  }

  sub_1C440F1EC();

  return sub_1C440BAA8(v19, v20, v21, v22);
}

void sub_1C45926FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C440DDE8();
  v11 = v10;
  v12 = *v10;
  v13 = sub_1C457EB3C();
  if (v14)
  {
    v15 = v13;
    v16 = *v11;
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C43FEAB4();
    sub_1C456902C(&qword_1EC0B8DC0, &qword_1C4F0E358);
    sub_1C440D014();
    v17 = *(a10 + 48) + 32 * v15;
    v18 = *(v17 + 8);
    v19 = *(v17 + 24);

    v20 = *(*(a10 + 56) + 8 * v15);
    sub_1C456902C(&qword_1EC0B8DC8, &qword_1C4F0E360);
    sub_1C4592B60();
    sub_1C4F02478();
    *v11 = a10;
  }

  sub_1C440F1EC();
}

uint64_t sub_1C4592AB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C4592B18(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1C4592B60()
{
  result = qword_1EDDE2000;
  if (!qword_1EDDE2000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE2000);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for BehaviorSequenceGenerator(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C4592BC8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_1C4592C1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1C4592C7C(void *a1)
{
  v4 = [a1 identifier];
  v5 = *MEMORY[0x1E6993AF0];
  sub_1C4F01138();
  sub_1C440653C();
  sub_1C442C398();
  v7 = v7 && v1 == v6;
  if (v7)
  {

    return 0;
  }

  sub_1C4409A04();
  sub_1C43FD000();

  if (v2)
  {

    return 0;
  }

  v9 = *MEMORY[0x1E6993B20];
  sub_1C4F01138();
  sub_1C440653C();
  sub_1C442C398();
  if (v7 && v1 == v10)
  {

    return 1;
  }

  sub_1C4409A04();
  sub_1C43FD000();

  if (v2)
  {

    return 1;
  }

  v12 = *MEMORY[0x1E6993AE8];
  sub_1C4F01138();
  sub_1C440653C();
  sub_1C442C398();
  if (v7 && v1 == v13)
  {

    return 2;
  }

  sub_1C4409A04();
  sub_1C43FD000();

  if (v2)
  {

    return 2;
  }

  v15 = *MEMORY[0x1E6993AD8];
  sub_1C4F01138();
  sub_1C440653C();
  sub_1C442C398();
  if (v7 && v1 == v16)
  {

    return 3;
  }

  sub_1C4409A04();
  sub_1C43FD000();

  if (v2)
  {

    return 3;
  }

  v18 = *MEMORY[0x1E6993B08];
  sub_1C4F01138();
  sub_1C440653C();
  sub_1C442C398();
  if (v7 && v1 == v19)
  {

    return 4;
  }

  sub_1C4409A04();
  sub_1C43FD000();

  if (v2)
  {

    return 4;
  }

  v21 = *MEMORY[0x1E6993AE0];
  sub_1C4F01138();
  sub_1C440653C();
  sub_1C442C398();
  if (v7 && v1 == v22)
  {

    return 5;
  }

  sub_1C4409A04();
  sub_1C43FD000();

  if (v2)
  {

    return 5;
  }

  v24 = *MEMORY[0x1E6993B10];
  sub_1C4F01138();
  sub_1C440653C();
  sub_1C442C398();
  if (v7 && v1 == v25)
  {

    return 6;
  }

  sub_1C4409A04();
  sub_1C43FD000();

  if (v2)
  {

    return 6;
  }

  v27 = *MEMORY[0x1E6993AF8];
  sub_1C4F01138();
  sub_1C440653C();
  sub_1C442C398();
  if (v7 && v1 == v28)
  {

    return 7;
  }

  sub_1C4409A04();
  sub_1C43FD000();

  if (v2)
  {

    return 7;
  }

  v30 = *MEMORY[0x1E6993B00];
  sub_1C4F01138();
  sub_1C440653C();
  sub_1C442C398();
  if (v7 && v1 == v31)
  {

    return 8;
  }

  sub_1C4409A04();
  sub_1C43FD000();

  if (v2)
  {

    return 8;
  }

  v33 = *MEMORY[0x1E6993B60];
  sub_1C4F01138();
  sub_1C440653C();
  sub_1C442C398();
  if (v7 && v1 == v34)
  {

    return 9;
  }

  sub_1C4409A04();
  sub_1C43FD000();

  if (v2)
  {

    return 9;
  }

  v36 = *MEMORY[0x1E6993B18];
  sub_1C4F01138();
  sub_1C440653C();
  sub_1C442C398();
  if (v7 && v1 == v37)
  {

    return 10;
  }

  sub_1C4409A04();
  sub_1C43FD000();

  if (v2)
  {

    return 10;
  }

  v39 = *MEMORY[0x1E6993B58];
  sub_1C4F01138();
  sub_1C440653C();
  sub_1C442C398();
  if (v7 && v1 == v40)
  {

    return 11;
  }

  sub_1C4409A04();
  sub_1C43FD000();

  if (v2)
  {

    return 11;
  }

  v42 = *MEMORY[0x1E6993B40];
  sub_1C4F01138();
  sub_1C440653C();
  sub_1C442C398();
  if (v7 && v1 == v43)
  {

    return 12;
  }

  sub_1C4409A04();
  sub_1C43FD000();

  if (v2)
  {

    return 12;
  }

  v45 = *MEMORY[0x1E6993B30];
  sub_1C4F01138();
  sub_1C440653C();
  sub_1C442C398();
  if (v7 && v1 == v46)
  {

    return 13;
  }

  sub_1C4409A04();
  sub_1C43FD000();

  if (v2)
  {

    return 13;
  }

  v48 = *MEMORY[0x1E6993B48];
  sub_1C4F01138();
  sub_1C440653C();
  sub_1C442C398();
  if (v7 && v1 == v49)
  {

    v51 = 14;
  }

  else
  {
    sub_1C4409A04();
    sub_1C43FD000();

    if (v2)
    {
      v51 = 14;
    }

    else
    {
      v51 = 15;
    }
  }

  return v51;
}

unint64_t sub_1C4593264(unint64_t result)
{
  if (result >= 0x10)
  {
    return 16;
  }

  return result;
}

unint64_t sub_1C4593274@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C4593264(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C4593350(unsigned __int8 a1)
{
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x80000001C4F8A4F0;
  *(inited + 48) = [objc_opt_self() featureValueWithInt64_];
  sub_1C4577DBC();
  return sub_1C4F00F28();
}

uint64_t sub_1C459340C(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4593350(a1);
  if (a3)
  {
    v6 = sub_1C45FB538();
    sub_1C4A27928(a2, a3, 1, v6, v7, v8);
    v10 = v9;
    sub_1C45942C8(v6);
    if (v10)
    {
      sub_1C4577DBC();
      if (sub_1C4594E18())
      {
        swift_isUniquelyReferenced_nonNull_native();
        sub_1C4660314();
      }

      else
      {
        v11 = sub_1C445FAA8(0xD000000000000010, 0x80000001C4F8A510);
        if (v12)
        {
          v13 = v11;
          swift_isUniquelyReferenced_nonNull_native();
          v18 = v5;
          v14 = *(v5 + 24);
          sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
          sub_1C4F02458();
          v5 = v18;
          v15 = *(*(v18 + 48) + 16 * v13 + 8);

          v16 = *(*(v18 + 56) + 8 * v13);
          sub_1C4F02478();
        }
      }
    }
  }

  return v5;
}

uint64_t sub_1C45935AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6765746143707061 && a2 == 0xEF6570795479726FLL;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4593688(char a1)
{
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](a1 & 1);
  return sub_1C4F02B68();
}

uint64_t sub_1C45936D0(char a1)
{
  if (a1)
  {
    return 0x6C646E7542707061;
  }

  else
  {
    return 0x6765746143707061;
  }
}

uint64_t sub_1C459371C(void *a1)
{
  v4 = sub_1C456902C(&qword_1EC0B8DF8, &unk_1C4F0E430);
  sub_1C43FCDF8(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C440A474();
  v10 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4593BBC();
  sub_1C4F02BF8();
  sub_1C4593C64();
  sub_1C4F027E8();
  if (!v1)
  {
    sub_1C4F02738();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t sub_1C4593890(uint64_t *a1)
{
  v4 = sub_1C456902C(&qword_1EC0B8DE0, &qword_1C4F0E428);
  sub_1C43FCDF8(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C440A474();
  v10 = a1[3];
  sub_1C4409678(a1, v10);
  sub_1C4593BBC();
  sub_1C4F02BC8();
  if (!v1)
  {
    sub_1C4593C10();
    sub_1C4F026C8();
    v10 = v12;
    sub_1C4F02618();
    (*(v6 + 8))(v2, v4);
  }

  sub_1C440962C(a1);
  return v10;
}

uint64_t sub_1C4593A44()
{
  v1 = *v0;
  sub_1C4F02AF8();
  sub_1C455B550(v3, v1);
  return sub_1C4F02B68();
}

uint64_t sub_1C4593A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C45935AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4593AB8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C4593680();
  *a1 = result;
  return result;
}

uint64_t sub_1C4593AE0(uint64_t a1)
{
  v2 = sub_1C4593BBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4593B1C(uint64_t a1)
{
  v2 = sub_1C4593BBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4593B58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C4593890(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1C4593B88(void *a1)
{
  v2 = *(v1 + 1);
  v3 = *(v1 + 2);
  v4 = *v1;
  return sub_1C459371C(a1);
}

unint64_t sub_1C4593BBC()
{
  result = qword_1EC0B8DE8;
  if (!qword_1EC0B8DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B8DE8);
  }

  return result;
}

unint64_t sub_1C4593C10()
{
  result = qword_1EC0B8DF0;
  if (!qword_1EC0B8DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B8DF0);
  }

  return result;
}

unint64_t sub_1C4593C64()
{
  result = qword_1EC0B8E00;
  if (!qword_1EC0B8E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B8E00);
  }

  return result;
}

void sub_1C4593CB8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v32 = sub_1C456902C(&qword_1EC0B8600, &unk_1C4F0D4E0);
  v3 = *(*(v32 - 8) + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C440A474();
  v5 = sub_1C456902C(&qword_1EC0B8E08, &unk_1C4F0E440);
  v6 = sub_1C43FCDF8(v5);
  v30 = v7;
  v31 = v6;
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v13 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v30 - v18;
  v20 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v21 = [v20 InFocus];
  swift_unknownObjectRelease();
  v22 = sub_1C4EF9CD8();
  v23 = *(*(v22 - 8) + 16);
  v23(v19, a1, v22);
  sub_1C440BAA8(v19, 0, 1, v22);
  v24 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v23(v17, a1 + *(v24 + 36), v22);
  sub_1C440BAA8(v17, 0, 1, v22);
  v25 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v26 = sub_1C457A86C(v19, v17, 0, 0, 0);
  v27 = [v21 publisherWithOptions_];

  v28 = v27;
  sub_1C456902C(&qword_1EC0B8608, &qword_1C4F3B4B0);
  v29 = v34;
  sub_1C4EFFC38();
  if (v29)
  {
  }

  else
  {
    sub_1C456902C(&qword_1EC0B8E10, &qword_1C4F3E090);
    sub_1C4401CBC(&qword_1EDDEFF30, &qword_1EC0B8600, &unk_1C4F0D4E0);
    sub_1C4F02848();

    (*(v30 + 32))(v33, v12, v31);
  }
}

uint64_t sub_1C459404C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1C4594070, 0, 0);
}

uint64_t sub_1C4594070()
{
  v1 = [*(v0 + 24) eventBody];
  if (v1)
  {
    v2 = v1;
    sub_1C4632064(v1);
    if (v3)
    {
      v4 = objc_opt_self();
      v5 = sub_1C4F01108();

      v6 = [v4 categoryForBundleId_];

      v7 = sub_1C4592C7C(v6);
    }

    else
    {
      v7 = 15;
    }

    v11 = *(v0 + 16);
    v10 = *(v0 + 24);
    v12 = sub_1C4632064(v2);
    v14 = v13;
    [v10 timestamp];
    sub_1C4EF9AC8();
    LOBYTE(v10) = [v2 starting];

    v8 = sub_1C456902C(&qword_1EC0B8E10, &qword_1C4F3E090);
    v9 = 0;
    v15 = v11 + *(v8 + 32);
    *v15 = v7;
    *(v15 + 8) = v12;
    *(v15 + 16) = v14;
    *(v11 + *(v8 + 28)) = v10;
  }

  else
  {
    v8 = sub_1C456902C(&qword_1EC0B8E10, &qword_1C4F3E090);
    v9 = 1;
  }

  sub_1C440BAA8(*(v0 + 16), v9, 1, v8);
  v16 = *(v0 + 8);

  return v16();
}

void sub_1C459420C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*(sub_1C456902C(&qword_1EC0B8E18, &qword_1C4F0E460) - 8) + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v9 - v7;
  sub_1C4593CB8(a1, &v9 - v7);
  if (!v2)
  {
    sub_1C4594328(v8, a2);
  }
}

void *sub_1C45942C8(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C4594328(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B8E18, &qword_1C4F0E460);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for AppCategoryContent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for BehaviorHistogramKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF1)
  {
    if (a2 + 15 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 15) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 16;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v5 = v6 - 16;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1C45944FC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C45945D8()
{
  result = qword_1EC0B8E20;
  if (!qword_1EC0B8E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B8E20);
  }

  return result;
}

unint64_t sub_1C4594630()
{
  result = qword_1EC0B8E28;
  if (!qword_1EC0B8E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B8E28);
  }

  return result;
}

unint64_t sub_1C4594688()
{
  result = qword_1EC0B8E30;
  if (!qword_1EC0B8E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B8E30);
  }

  return result;
}

unint64_t sub_1C45946E0()
{
  result = qword_1EC0B8E38;
  if (!qword_1EC0B8E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B8E38);
  }

  return result;
}

unint64_t sub_1C4594734()
{
  result = qword_1EC0B8E40;
  if (!qword_1EC0B8E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B8E40);
  }

  return result;
}

uint64_t sub_1C45947F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4577DBC();
  v8 = sub_1C4F00F28();
  v11 = sub_1C45FB538();
  v12 = v9;
  v13 = v10;
  v15 = v14;
  if (!a2)
  {
    goto LABEL_12;
  }

  sub_1C4A27928(a1, a2, 1, v11, v9, v10);
  if (v16)
  {
    v34 = a3;
    v35 = v15;
    if (sub_1C4594E18())
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C4660314();
    }

    else
    {
      v17 = sub_1C445FAA8(0xD000000000000010, 0x80000001C4F8A510);
      if (v18)
      {
        v19 = v17;
        swift_isUniquelyReferenced_nonNull_native();
        v36 = v8;
        v20 = *(v8 + 24);
        sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
        sub_1C4406558();
        v8 = v36;
        v21 = *(*(v36 + 48) + 16 * v19 + 8);

        v22 = *(*(v36 + 56) + 8 * v19);
        sub_1C4F02478();
      }
    }

    v15 = v35;
    a3 = v34;
  }

  if (!a4 || (sub_1C4A27A44(a3, a4, a1, a2, 1, v11, v12, v13, v15), !v23))
  {
LABEL_12:
    v25 = v11;
LABEL_13:
    sub_1C45942C8(v25);
    return v8;
  }

  if (!sub_1C4594E18())
  {
    v27 = sub_1C445FAA8(0xD000000000000013, 0x80000001C4F8A530);
    if (v28)
    {
      v29 = v27;
      swift_isUniquelyReferenced_nonNull_native();
      v37 = v8;
      v30 = *(v8 + 24);
      sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
      sub_1C4406558();
      v8 = v37;
      v31 = *(*(v37 + 48) + 16 * v29 + 8);

      v32 = *(*(v37 + 56) + 8 * v29);
      sub_1C4F02478();
      v33 = sub_1C4419038();
      sub_1C45942C8(v33);

      return v8;
    }

    v25 = sub_1C4419038();
    goto LABEL_13;
  }

  swift_isUniquelyReferenced_nonNull_native();
  sub_1C4660314();
  v24 = sub_1C4419038();
  sub_1C45942C8(v24);
  return v8;
}

uint64_t sub_1C4594AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 24);
  v4 = *(v3 + 24);
  *a2 = *v3;
  *(a2 + 8) = *(v3 + 8);
  *(a2 + 24) = v4;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C4594B48()
{
  v0 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v1 = [v0 Intent];
  swift_unknownObjectRelease();
  sub_1C4580438();
}

uint64_t type metadata accessor for AppIntentEvent()
{
  result = qword_1EC0B8E58;
  if (!qword_1EC0B8E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4594C80()
{
  result = sub_1C4EF9CD8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C4594CFC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_1C4594D50(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1C4594DB4()
{
  result = qword_1EC0B8E68;
  if (!qword_1EC0B8E68)
  {
    sub_1C4572308(&qword_1EC0B8E70, &qword_1C4F0E768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B8E68);
  }

  return result;
}

id sub_1C4594E18()
{
  v0 = sub_1C4F01108();

  v1 = [swift_getObjCClassFromMetadata() featureValueWithString_];

  return v1;
}

void sub_1C4594EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v41 = MEMORY[0x1E69E7CC0];
  sub_1C44CD9C0();
  v29 = 0;
  v30 = v41;
  v31 = "last_active_applaunch_timestamp";
  v32 = 0xD000000000000017;
  v33 = "last_active_appbundle";
  do
  {
    v34 = 0xD000000000000015;
    v35 = "redactedBundleId";
    switch(byte_1F43D2210[v29 + 32])
    {
      case 1:
        v34 = v32;
        v35 = v31;
        break;
      case 2:
        v34 = 0xD00000000000001FLL;
        v35 = v33;
        break;
      case 3:
        v34 = 0xD00000000000001FLL;
        v35 = "last_active_appcategory";
        break;
      default:
        break;
    }

    v42 = v30;
    v36 = *(v30 + 16);
    if (v36 >= *(v30 + 24) >> 1)
    {
      v39 = v32;
      v40 = v31;
      v38 = v33;
      sub_1C44CD9C0();
      v33 = v38;
      v32 = v39;
      v31 = v40;
      v30 = v42;
    }

    ++v29;
    *(v30 + 16) = v36 + 1;
    v37 = v30 + 16 * v36;
    *(v37 + 32) = v34;
    *(v37 + 40) = v35 | 0x8000000000000000;
  }

  while (v29 != 4);

  sub_1C4499940(v30, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1C4595064()
{
  v1 = objc_autoreleasePoolPush();
  sub_1C45950BC(v0, &v3);
  objc_autoreleasePoolPop(v1);
  return v3;
}

uint64_t sub_1C45950BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 32);
  sub_1C4EF9AD8();
  v4 = sub_1C4F019C8();
  sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
  v5 = sub_1C4F01EC8();
  v6 = sub_1C4F01EC8();
  v7 = [v3 publisherWithStartTime:0 endTime:v4 maxEvents:v5 lastN:v6 reversed:0];

  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v19 = nullsub_1;
  v20 = 0;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1C44405F8;
  v18 = &unk_1F43E1230;
  v9 = _Block_copy(&v15);
  v19 = sub_1C459610C;
  v20 = v8;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1C4440590;
  v18 = &unk_1F43E1258;
  v10 = _Block_copy(&v15);

  v11 = [v7 sinkWithCompletion:v9 receiveInput:v10];

  _Block_release(v10);
  _Block_release(v9);

  swift_beginAccess();
  v12 = *(v8 + 16);
  *a2 = v12;
  v13 = v12;
}

void sub_1C45952E0(void *a1, uint64_t a2)
{
  v3 = [a1 eventBody];
  if (v3)
  {
    v4 = v3;
    swift_beginAccess();
    v5 = *(a2 + 16);
    *(a2 + 16) = v4;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v6 = sub_1C4F00978();
    sub_1C442B738(v6, qword_1EDDFECB8);
    oslog = sub_1C4F00968();
    v7 = sub_1C4F01CF8();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1C43F8000, oslog, v7, "Unable to parse eventBody from read event in app launch featurizer", v8, 2u);
      MEMORY[0x1C6942830](v8, -1, -1);
    }
  }
}

uint64_t sub_1C4595418()
{
  v1 = v0;
  v2 = sub_1C4595064();
  if (v2)
  {
    v3 = v2;
    v4 = sub_1C45FB538();
    if (!v4)
    {
      if (qword_1EDDFECB0 != -1)
      {
        sub_1C43FFB88();
      }

      v20 = sub_1C4F00978();
      sub_1C442B738(v20, qword_1EDDFECB8);
      v21 = sub_1C4F00968();
      v22 = sub_1C4F01CF8();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_1C43F8000, v21, v22, "Unable to initialize behaviorEventProcessor", v23, 2u);
        sub_1C43FBE2C();
      }

      sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
      v24 = sub_1C4F00F28();

      return v24;
    }

    v6 = v4;
    v7 = v5;
    v8 = [v3 bundleID];
    sub_1C4F01138();

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C43FD018();
    v9 = sub_1C4F01108();
    v10 = [v6 payloadForString_];

    v55 = v6;
    if (v10)
    {
      v11 = sub_1C43FD018();
      v13 = sub_1C4499AD0(v11, v12, v7);

      if (!v13)
      {
        v14 = 0;
LABEL_24:
        [v3 absoluteTimestamp];
        v34 = v33;
        v35 = objc_opt_self();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C43FD018();
        v36 = sub_1C4F01108();

        v37 = [v35 categoryForBundleId_];

        v54 = v37;
        v38 = [v37 identifier];
        sub_1C4F01138();

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v39 = sub_1C43FD018();
        v41 = sub_1C4A2CB60(v39, v40);

        if (v14)
        {
          v43 = *(v1 + 16);
          v42 = *(v1 + 24);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        }

        sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1C4F0D480;
        sub_1C43FBDF0();
        *(v45 + 32) = 0xD000000000000015;
        *(v45 + 40) = v46;
        sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C43FD018();
        sub_1C4594E18();
        sub_1C43FBDF0();
        *(inited + 48) = v47;
        *(inited + 56) = 0xD00000000000001FLL;
        *(inited + 64) = v48;
        v49 = [objc_opt_self() featureValueWithDouble_];
        sub_1C43FBDF0();
        *(inited + 72) = v50;
        *(inited + 80) = 0xD000000000000017;
        *(inited + 88) = v51;
        sub_1C4594E18();
        sub_1C43FBDF0();
        *(inited + 96) = v52;
        *(inited + 104) = 0xD00000000000001FLL;
        *(inited + 112) = v53;
        sub_1C4A2CBE8(v41);
        *(inited + 120) = sub_1C4594E18();
        v24 = sub_1C4F00F28();

        return v24;
      }
    }

    else
    {
    }

    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v25 = sub_1C4F00978();
    sub_1C442B738(v25, qword_1EDDFECB8);
    v26 = sub_1C4F00968();
    v27 = sub_1C4F01CF8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v28 = 136315138;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v29 = sub_1C43FD018();
      v32 = sub_1C441D828(v29, v30, v31);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_1C43F8000, v26, v27, "Cannot log %s because it's either a sensitive app/ it's not among the top 5k apps", v28, 0xCu);
      sub_1C440962C(v56);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    v14 = 1;
    goto LABEL_24;
  }

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v15 = sub_1C4F00978();
  sub_1C442B738(v15, qword_1EDDFECB8);
  v16 = sub_1C4F00968();
  v17 = sub_1C4F01CF8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1C43F8000, v16, v17, "Unable to fetch most recentAppLaunch event", v18, 2u);
    sub_1C43FBE2C();
  }

  sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);

  return sub_1C4F00F28();
}

void sub_1C4595A0C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v40 = sub_1C4EF9CD8();
  v7 = sub_1C43FCDF8(v40);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  v15 = type metadata accessor for FeatureProviderSnapshot(0);
  v16 = sub_1C43FCDF8(v15);
  v38 = v17;
  v39 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v22 = v21 - v20;
  v23 = *(a2 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    v35 = a3;
    v43 = MEMORY[0x1E69E7CC0];
    v42 = v22;
    sub_1C459D0A8();
    v25 = v42;
    v24 = v43;
    v27 = *(v9 + 16);
    v26 = v9 + 16;
    v28 = a2 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
    v36 = *(v26 + 56);
    v37 = v27;
    do
    {
      v37(v14, v28, v40);
      v37(v25, v14, v40);
      v29 = sub_1C4595418();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v30 = v4;
      v31 = sub_1C4596114(v29, a1);

      sub_1C465CF34(v31);
      v33 = v32;
      v25 = v42;

      (*(v26 - 8))(v14, v40);
      *(v42 + *(v39 + 20)) = v33;
      v34 = *(v43 + 16);
      if (v34 >= *(v43 + 24) >> 1)
      {
        sub_1C459D0A8();
        v25 = v42;
      }

      *(v43 + 16) = v34 + 1;
      sub_1C4586A54(v25, v43 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v34);
      v28 += v36;
      --v23;
      v4 = v30;
    }

    while (v23);
    a3 = v35;
  }

  *a3 = v24;
}

uint64_t sub_1C4595CC0()
{
  v0 = sub_1C4EF9CD8();
  v1 = sub_1C43FCDF8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  sub_1C4EF9C88();
  v9 = sub_1C4595418();
  (*(v3 + 8))(v8, v0);
  return v9;
}

uint64_t sub_1C4595F40()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t sub_1C4595F68()
{
  sub_1C4595F40();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4595FC0()
{
  strcpy((v0 + 16), "--redacted--");
  *(v0 + 29) = 0;
  *(v0 + 30) = -5120;
  *(v0 + 32) = [objc_allocWithZone(MEMORY[0x1E698F250]) init];
  return v0;
}

unint64_t sub_1C4596090(uint64_t a1)
{
  result = sub_1C45960B8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C45960B8()
{
  result = qword_1EC0B8E78;
  if (!qword_1EC0B8E78)
  {
    type metadata accessor for AppLaunchSignal();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B8E78);
  }

  return result;
}

void *sub_1C4596114(_BYTE *a1, uint64_t a2)
{
  v4 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a1[32];
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v4 = sub_1C45867F0(v13, v7, v4, a2);
      MEMORY[0x1C6942830](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  v9 = v14 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C4501018(0, v7, v9);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4586AB8(v9, v7, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v10;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_1C4596374()
{
  sub_1C43FE96C();
  v0 = sub_1C4EFF918();
  v1 = sub_1C43FCDF8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  sub_1C4EFF908();
  sub_1C4596464();
  v6 = *(v3 + 8);
  v7 = sub_1C43FD024();
  v8(v7);
  sub_1C43FBC80();
}

void sub_1C4596464()
{
  sub_1C43FE96C();
  v11[1] = v1;
  v2 = sub_1C456902C(&qword_1EC0B8E80, &unk_1C4F0F2F0);
  v3 = sub_1C43FCDF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = v11 - v8;
  v10 = *(v0 + 16);
  sub_1C4EFF9C8();
  sub_1C4EFF358();
  (*(v5 + 8))(v9, v2);
  sub_1C43FBC80();
}

void sub_1C459657C()
{
  sub_1C43FE96C();
  v42 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v40 = v10;
  v11 = sub_1C456902C(&qword_1EC0B8E90, &unk_1C4F0F0A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v41 = &v38 - v13;
  sub_1C43FBE44();
  v14 = sub_1C4EFCDD8();
  v15 = sub_1C43FCDF8(v14);
  v43 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBD08();
  v21 = (v19 - v20);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v38 - v23;
  sub_1C4596374();
  if (!v0)
  {
    v38 = v21;
    v39 = v24;
    v25 = v41;
    if ((sub_1C4EFF938() & 1) == 0)
    {
      v28 = v39;
      v27 = v40;
      v29 = v43;
LABEL_5:
      (*(v29 + 32))(v27, v28, v14);
      goto LABEL_6;
    }

    v26 = *(v9 + 24);
    AssetRegistryOverrideStore.fetchAssetEntry(for:in:)(v7, v5, v3);
    v30 = sub_1C44157D4(v25, 1, v14);
    v29 = v43;
    v28 = v39;
    if (v30 == 1)
    {
      sub_1C4597278(v25);
      v27 = v40;
      goto LABEL_5;
    }

    v31 = *(v43 + 32);
    v32 = v38;
    v31(v38, v25, v14);
    v33 = sub_1C4EFCDA8();
    v34 = sub_1C4EFCDA8();
    v35 = *(v29 + 8);
    if (v33 >= v34)
    {
      v35(v28, v14);
      v36 = v40;
      v37 = v32;
    }

    else
    {
      v35(v32, v14);
      v36 = v40;
      v37 = v28;
    }

    v31(v36, v37, v14);
  }

LABEL_6:
  sub_1C43FBC80();
}

void sub_1C4596830()
{
  sub_1C43FE96C();
  v136 = v0;
  v137 = v1;
  v128 = v2;
  v129 = v3;
  v138 = v4;
  v139 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v140 = sub_1C4EFF9E8();
  v12 = sub_1C43FCDF8(v140);
  v124 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v132 = (v17 - v16);
  sub_1C43FBE44();
  v18 = sub_1C4EFCDE8();
  v19 = sub_1C43FCDF8(v18);
  v122 = v20;
  v123 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBD08();
  v120 = v23 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v121 = v118 - v26;
  sub_1C43FBE44();
  v27 = sub_1C4EFCE18();
  v28 = sub_1C43FCDF8(v27);
  v126 = v29;
  v127 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBCC4();
  v125 = v33 - v32;
  sub_1C43FBE44();
  v34 = sub_1C4EFF948();
  v35 = sub_1C43FCDF8(v34);
  v133 = v36;
  v134 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBCC4();
  v41 = v40 - v39;
  v42 = sub_1C456902C(&qword_1EC0B8E80, &unk_1C4F0F2F0);
  v43 = sub_1C43FCDF8(v42);
  v135 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v47 = sub_1C4EFCDD8();
  v48 = sub_1C43FCDF8(v47);
  v131 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBD08();
  v119 = v52 - v53;
  v55 = MEMORY[0x1EEE9AC00](v54);
  v57 = v118 - v56;
  MEMORY[0x1EEE9AC00](v55);
  v130 = v118 - v58;
  if (sub_1C4499AD0(v9, v7, v11))
  {
    sub_1C4EFF6A8();
    v59 = sub_1C4EFF698();
    v118[2] = v118;
    MEMORY[0x1EEE9AC00](v59);
    v60 = v138;
    v118[-6] = v137;
    v118[-5] = v60;
    v118[-4] = v139;
    v118[-3] = v9;
    v116 = v7;
    v117 = v41;
    v118[1] = v7;
    v61 = MEMORY[0x1E69A91A8];
    sub_1C4597230(&qword_1EDDEFFD8, MEMORY[0x1E69A91A8]);
    sub_1C4597230(&unk_1EDDEFFE0, v61);
    sub_1C4597230(&qword_1EDDEFF58, MEMORY[0x1E69A9A90]);
    sub_1C4EFF368();
    (*(v133 + 8))(v41, v134);
    v62 = v136;
    sub_1C4EFF358();
    if (v62)
    {
      v63 = sub_1C441174C();
      v64(v63);
      v65 = v62;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v66 = v132;
      if (swift_dynamicCast())
      {
        v67 = v124;
        v68 = *(v124 + 88);
        v69 = sub_1C43FD024();
        v71 = v70(v69);
        if (v71 == *MEMORY[0x1E69A9A80])
        {

          v72 = *(v67 + 96);
          v73 = sub_1C43FD024();
          v74(v73);
          v75 = *v66;
          v76 = v66[1];
          v77 = sub_1C4EFFB38();
          sub_1C4406578();
          sub_1C4597230(v78, v79);
          sub_1C43FFC70();
          v81 = v80;
          *v80 = v75;
          v80[1] = v76;
          v82 = MEMORY[0x1E69A9AE8];
        }

        else
        {
          if (v71 != *MEMORY[0x1E69A9A78])
          {
            v111 = *(v67 + 8);
            v112 = sub_1C43FD024();
            v113(v112);
            goto LABEL_16;
          }

          v103 = *(v67 + 96);
          v104 = sub_1C43FD024();
          v105(v104);
          v106 = *v66;
          v107 = v66[1];
          v77 = sub_1C4EFFB38();
          sub_1C4406578();
          sub_1C4597230(v108, v109);
          sub_1C43FFC70();
          v81 = v110;
          *v110 = v106;
          v110[1] = v107;
          v82 = MEMORY[0x1E69A9AE0];
        }

        (*(*(v77 - 8) + 104))(v81, *v82, v77);
        swift_willThrow();
      }

LABEL_16:

      goto LABEL_18;
    }

    v87 = v137;
    v140 = v9;
    v88 = sub_1C441174C();
    v89(v88);
    v91 = v130;
    v90 = v131;
    (*(v131 + 32))(v130, v57, v47);
    sub_1C4EFCDA8();
    v93 = v125;
    v92 = v126;
    v94 = v127;
    (*(v126 + 16))(v125, v128, v127);
    v95 = (*(v92 + 88))(v93, v94);
    if (v95 == *MEMORY[0x1E69A91E8])
    {
      (*(v92 + 96))(v93, v94);
      v96 = v93;
      v97 = v121;
      v98 = v122;
      v99 = v123;
      (*(v122 + 32))(v121, v96, v123);
      (*(v98 + 16))(v120, v97, v99);
      sub_1C4EFCDC8();
      v100 = v119;
      sub_1C4EFCDB8();
      v101 = *(v87 + 24);
      sub_1C45990B8(v138, v139, v140);
      v114 = v131;
      (*(v131 + 8))(v100, v47);
      v115 = v97;
      v90 = v114;
      (*(v98 + 8))(v115, v99);
      v91 = v130;
    }

    else
    {
      if (v95 != *MEMORY[0x1E69A91E0])
      {
        LODWORD(v117) = 0;
        v116 = 87;
        sub_1C4F024A8();
        __break(1u);
        return;
      }

      v102 = *(v87 + 24);
      sub_1C4599140(v138, v139, v140);
    }

    sub_1C4EFCDF8();
    (*(v90 + 8))(v91, v47);
  }

  else
  {
    v83 = sub_1C4EFFB38();
    sub_1C4406578();
    sub_1C4597230(v84, v85);
    sub_1C43FFC70();
    *v86 = v9;
    v86[1] = v7;
    (*(*(v83 - 8) + 104))(v86, *MEMORY[0x1E69A9AD8], v83);
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

LABEL_18:
  sub_1C43FBC80();
}

uint64_t sub_1C45971B0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_1C45971D8()
{
  sub_1C45971B0();

  return swift_deallocClassInstance();
}

void sub_1C459720C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  sub_1C459657C();
}

uint64_t sub_1C4597230(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4597278(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0B8E90, &unk_1C4F0F0A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C45972E0()
{
  sub_1C43FBD3C();
  sub_1C4403FC0();
  v2 = sub_1C4EFF0C8();
  v3 = sub_1C43FCDF8(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C4431ED0();
  sub_1C450220C(&qword_1EDDFE820, MEMORY[0x1E69A9810]);
  sub_1C442B910();
  sub_1C4426A00(v7);
  if (v0)
  {
    sub_1C4406590();
    do
    {
      v8 = sub_1C44085B4();
      v1(v8);
      sub_1C440F200();
      sub_1C44D56D0();
      v9 = sub_1C440DDFC();
      v10(v9);
      sub_1C444FC2C();
    }

    while (!v11);
  }

  else
  {
    sub_1C440F210();
  }

  sub_1C44085C4();
  sub_1C43FE9F0();
}

void sub_1C459740C()
{
  sub_1C43FBD3C();
  sub_1C4403FC0();
  v2 = sub_1C4EFF8A8();
  v3 = sub_1C43FCDF8(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C4431ED0();
  sub_1C450220C(&qword_1EDDFE808, MEMORY[0x1E69A99E8]);
  sub_1C442B910();
  sub_1C4426A00(v7);
  if (v0)
  {
    sub_1C4406590();
    do
    {
      v8 = sub_1C44085B4();
      v1(v8);
      sub_1C440F200();
      sub_1C483A1C8();
      v9 = sub_1C440DDFC();
      v10(v9);
      sub_1C444FC2C();
    }

    while (!v11);
  }

  else
  {
    sub_1C440F210();
  }

  sub_1C44085C4();
  sub_1C43FE9F0();
}

uint64_t sub_1C4597538(uint64_t a1)
{
  sub_1C43FEAE0(a1);
  v3 = sub_1C45A2304();
  result = MEMORY[0x1C69407C0](v2, &type metadata for Behavior, v3);
  v5 = 0;
  v11 = result;
  v6 = *(v1 + 16);
  for (i = 32; ; i += 48)
  {
    if (v6 == v5)
    {

      return v11;
    }

    if (v5 >= *(v1 + 16))
    {
      break;
    }

    v8 = *(v1 + i + 16);
    v12 = *(v1 + i);
    v13[0] = v8;
    *(v13 + 9) = *(v1 + i + 25);
    ++v5;
    sub_1C45A2358(&v12, v9);
    sub_1C483A338(v9, &v12);
    result = sub_1C45A23B4(v9[0], v9[1], v9[2], v9[3], v9[4], v10);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C459760C(uint64_t a1)
{
  v3 = sub_1C445FCE0(a1);
  v8 = MEMORY[0x1C69407C0](v3, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = 32;
    do
    {
      sub_1C483A4A0(&v7, *(v1 + v5));
      v5 += 8;
      --v4;
    }

    while (v4);

    return v8;
  }

  else
  {
    sub_1C440F210();
  }

  return v2;
}

void sub_1C4597694()
{
  sub_1C43FBD3C();
  sub_1C4403FC0();
  v2 = sub_1C4EFDAF8();
  v3 = sub_1C43FCDF8(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C4431ED0();
  sub_1C441E1C8();
  sub_1C450220C(v7, v8);
  sub_1C442B910();
  sub_1C4426A00(v9);
  if (v0)
  {
    sub_1C4406590();
    do
    {
      v10 = sub_1C44085B4();
      v1(v10);
      sub_1C440F200();
      sub_1C483A4BC();
      v11 = sub_1C440DDFC();
      v12(v11);
      sub_1C444FC2C();
    }

    while (!v13);
  }

  else
  {
    sub_1C440F210();
  }

  sub_1C44085C4();
  sub_1C43FE9F0();
}

void sub_1C45977B0()
{
  sub_1C43FBD3C();
  v1 = v0;
  v2 = sub_1C4EFDAF8();
  v3 = sub_1C43FCDF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD08();
  v10 = v8 - v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v32 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = v32 - v15;
  v17 = *(v1 + 16);
  sub_1C441E1C8();
  sub_1C450220C(v18, v19);
  sub_1C442B910();
  v20 = 0;
  v33 = v1;
  v34 = v21;
  v23 = *(v1 + 64);
  v22 = v1 + 64;
  v24 = *(v22 - 32);
  sub_1C43FD030();
  v27 = v26 & v25;
  v29 = (v28 + 63) >> 6;
  v32[2] = v5 + 32;
  v32[3] = v5 + 16;
  v32[1] = v5 + 8;
  if ((v26 & v25) != 0)
  {
    do
    {
      v30 = v20;
LABEL_7:
      v31 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      (*(v5 + 16))(v16, *(v33 + 48) + *(v5 + 72) * (v31 | (v30 << 6)), v2);
      (*(v5 + 32))(v10, v16, v2);
      sub_1C43FE5F8();
      sub_1C483A4BC();
      (*(v5 + 8))(v14, v2);
    }

    while (v27);
  }

  while (1)
  {
    v30 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v30 >= v29)
    {

      sub_1C43FE9F0();
      return;
    }

    v27 = *(v22 + 8 * v30);
    ++v20;
    if (v27)
    {
      v20 = v30;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_1C4597A90()
{
  sub_1C43FBD3C();
  sub_1C4403FC0();
  v2 = sub_1C4EFEEF8();
  v3 = sub_1C43FCDF8(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C4431ED0();
  sub_1C450220C(&qword_1EDDFCCB8, MEMORY[0x1E69A9748]);
  sub_1C442B910();
  sub_1C4426A00(v7);
  if (v0)
  {
    sub_1C4406590();
    do
    {
      v8 = sub_1C44085B4();
      v1(v8);
      sub_1C440F200();
      sub_1C44CB508();
      v9 = sub_1C440DDFC();
      v10(v9);
      sub_1C444FC2C();
    }

    while (!v11);
  }

  else
  {
    sub_1C440F210();
  }

  sub_1C44085C4();
  sub_1C43FE9F0();
}

uint64_t sub_1C4597BF0(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(char *, void))
{
  v7 = *(a1 + 16);
  v8 = a2();
  v13 = MEMORY[0x1C69407C0](v7, a3, v8);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = 32;
    do
    {
      a4(&v12, *(a1 + v10++));
      --v9;
    }

    while (v9);

    return v13;
  }

  else
  {
    sub_1C440F210();
  }

  return a3;
}

uint64_t sub_1C4597C94(uint64_t a1)
{
  v3 = sub_1C445FCE0(a1);
  v8 = MEMORY[0x1C69407C0](v3, MEMORY[0x1E69E72F0], MEMORY[0x1E69E7300]);
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = 32;
    do
    {
      sub_1C483B180(&v7, *(v1 + v5));
      v5 += 4;
      --v4;
    }

    while (v4);

    return v8;
  }

  else
  {
    sub_1C440F210();
  }

  return v2;
}

void sub_1C4597D1C()
{
  sub_1C442F0C4();
  sub_1C4403FC0();
  v2 = type metadata accessor for LiveGlobalKnowledgeTriple();
  v3 = sub_1C43FCDF8(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C4412BA8();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C440D034();
  sub_1C450220C(qword_1EDDF3348, type metadata accessor for LiveGlobalKnowledgeTriple);
  v7 = sub_1C43FE5F8();
  v8 = MEMORY[0x1C69407C0](v7);
  sub_1C441AE3C(v8);
  if (v1)
  {
    sub_1C4402B30();
    do
    {
      sub_1C4430848(v2, v0, type metadata accessor for LiveGlobalKnowledgeTriple);
      sub_1C44057A8();
      sub_1C483B22C();
      sub_1C4404B44();
      sub_1C4453C94();
      sub_1C443405C();
    }

    while (!v9);
  }

  else
  {
    sub_1C440167C();
  }

  sub_1C443F528();
  sub_1C4422220();
}

void sub_1C4597E5C()
{
  sub_1C43FBD3C();
  sub_1C4403FC0();
  v2 = sub_1C4EF9F68();
  v3 = sub_1C43FCDF8(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C4431ED0();
  sub_1C450220C(&unk_1EDDFA3E8, MEMORY[0x1E6969AD0]);
  sub_1C442B910();
  sub_1C4426A00(v7);
  if (v0)
  {
    sub_1C4406590();
    do
    {
      v8 = sub_1C44085B4();
      v1(v8);
      sub_1C440F200();
      sub_1C483B580();
      v9 = sub_1C440DDFC();
      v10(v9);
      sub_1C444FC2C();
    }

    while (!v11);
  }

  else
  {
    sub_1C440F210();
  }

  sub_1C44085C4();
  sub_1C43FE9F0();
}

void sub_1C4598054()
{
  sub_1C43FBD3C();
  sub_1C4403FC0();
  v2 = sub_1C4EF9CD8();
  v3 = sub_1C43FCDF8(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C4431ED0();
  sub_1C450220C(&qword_1EC0B90D0, MEMORY[0x1E6969530]);
  sub_1C442B910();
  sub_1C4426A00(v7);
  if (v0)
  {
    sub_1C4406590();
    do
    {
      v8 = sub_1C44085B4();
      v1(v8);
      sub_1C440F200();
      sub_1C483BB9C();
      v9 = sub_1C440DDFC();
      v10(v9);
      sub_1C444FC2C();
    }

    while (!v11);
  }

  else
  {
    sub_1C440F210();
  }

  sub_1C44085C4();
  sub_1C43FE9F0();
}

void sub_1C4598180()
{
  sub_1C43FEAC8();
  sub_1C43FEAE0(v2);
  v3 = sub_1C45A2F48();
  v4 = 0;
  MEMORY[0x1C69407C0](v1, &type metadata for ViewUpdate.ViewRef, v3);
  v5 = *(v0 + 16);
  for (i = (v0 + 48); ; i += 3)
  {
    if (v5 == v4)
    {

      sub_1C441E1E0();
      return;
    }

    if (v4 >= *(v0 + 16))
    {
      break;
    }

    ++v4;
    v8 = *(i - 1);
    v7 = *i;
    v9 = *(i - 2);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C483BD28();
  }

  __break(1u);
}

void sub_1C4598238()
{
  sub_1C43FBD3C();
  sub_1C4403FC0();
  v2 = sub_1C4EFDAB8();
  v3 = sub_1C43FCDF8(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C4431ED0();
  sub_1C450220C(&qword_1EDDEFFD0, MEMORY[0x1E69A9478]);
  sub_1C442B910();
  sub_1C4426A00(v7);
  if (v0)
  {
    sub_1C4406590();
    do
    {
      v8 = sub_1C44085B4();
      v1(v8);
      sub_1C440F200();
      sub_1C483C148();
      v9 = sub_1C440DDFC();
      v10(v9);
      sub_1C444FC2C();
    }

    while (!v11);
  }

  else
  {
    sub_1C440F210();
  }

  sub_1C44085C4();
  sub_1C43FE9F0();
}

void sub_1C4598364(uint64_t a1)
{
  sub_1C4428DA0();
  sub_1C45A2D54();
  sub_1C450220C(&qword_1EC0B9280, sub_1C45A2D54);
  sub_1C442B910();
  v6[1] = v2;
  v3 = sub_1C4428DA0();
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1C6940F90](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1C483C2B8(v6, v5);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void sub_1C4598474()
{
  sub_1C43FBD3C();
  sub_1C4403FC0();
  v2 = sub_1C4EFEFB8();
  v3 = sub_1C43FCDF8(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C4431ED0();
  sub_1C450220C(&qword_1EDDEFF90, MEMORY[0x1E69A97D0]);
  sub_1C442B910();
  sub_1C4426A00(v7);
  if (v0)
  {
    sub_1C4406590();
    do
    {
      v8 = sub_1C44085B4();
      v1(v8);
      sub_1C440F200();
      sub_1C483C2DC();
      v9 = sub_1C440DDFC();
      v10(v9);
      sub_1C444FC2C();
    }

    while (!v11);
  }

  else
  {
    sub_1C440F210();
  }

  sub_1C44085C4();
  sub_1C43FE9F0();
}

void sub_1C45985A0()
{
  sub_1C442F0C4();
  v2 = sub_1C4403FC0();
  v3 = type metadata accessor for EventTriple(v2);
  v4 = sub_1C43FCDF8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C4412BA8();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C440D034();
  sub_1C450220C(&qword_1EDDFC2C0, type metadata accessor for EventTriple);
  v8 = sub_1C43FE5F8();
  v9 = MEMORY[0x1C69407C0](v8);
  sub_1C441AE3C(v9);
  if (v1)
  {
    sub_1C4402B30();
    do
    {
      sub_1C4430848(v3, v0, type metadata accessor for EventTriple);
      sub_1C44057A8();
      sub_1C483CC80();
      sub_1C4404B44();
      sub_1C4453C94();
      sub_1C443405C();
    }

    while (!v10);
  }

  else
  {
    sub_1C440167C();
  }

  sub_1C443F528();
  sub_1C4422220();
}

uint64_t sub_1C45986E0(uint64_t a1, uint64_t a2)
{
  v13 = MEMORY[0x1C69407C0](0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v4 = objc_autoreleasePoolPush();
  v12[0] = a1;
  v12[1] = a2;
  sub_1C4415EA8();
  v5 = sub_1C4F01FC8();

  objc_autoreleasePoolPop(v4);

  v7 = 0;
  v8 = *(v5 + 16);
  for (i = (v5 + 40); ; i += 2)
  {
    if (v8 == v7)
    {

      return v13;
    }

    if (v7 >= *(v5 + 16))
    {
      break;
    }

    ++v7;
    v11 = *(i - 1);
    v10 = *i;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44869B4(v12, v11, v10);
  }

  __break(1u);
  return result;
}

void sub_1C4598804()
{
  sub_1C442F0C4();
  v2 = sub_1C4403FC0();
  v3 = type metadata accessor for GraphTriple(v2);
  v4 = sub_1C43FCDF8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C4412BA8();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C440D034();
  sub_1C450220C(&qword_1EDDFC298, type metadata accessor for GraphTriple);
  v8 = sub_1C43FE5F8();
  v9 = MEMORY[0x1C69407C0](v8);
  sub_1C441AE3C(v9);
  if (v1)
  {
    sub_1C4402B30();
    do
    {
      sub_1C4430848(v3, v0, type metadata accessor for GraphTriple);
      sub_1C44057A8();
      sub_1C483CF08();
      sub_1C4404B44();
      sub_1C4453C94();
      sub_1C443405C();
    }

    while (!v10);
  }

  else
  {
    sub_1C440167C();
  }

  sub_1C443F528();
  sub_1C4422220();
}

void sub_1C4598944()
{
  sub_1C442F0C4();
  v2 = sub_1C4403FC0();
  v3 = type metadata accessor for ConstructionEventTriple(v2);
  v4 = sub_1C43FCDF8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C4412BA8();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C440D034();
  sub_1C450220C(&qword_1EDDE2748, type metadata accessor for ConstructionEventTriple);
  v8 = sub_1C43FE5F8();
  v9 = MEMORY[0x1C69407C0](v8);
  sub_1C441AE3C(v9);
  if (v1)
  {
    sub_1C4402B30();
    do
    {
      sub_1C4430848(v3, v0, type metadata accessor for ConstructionEventTriple);
      sub_1C44057A8();
      sub_1C483D190();
      sub_1C4404B44();
      sub_1C4453C94();
      sub_1C443405C();
    }

    while (!v10);
  }

  else
  {
    sub_1C440167C();
  }

  sub_1C443F528();
  sub_1C4422220();
}

void sub_1C4598A84()
{
  sub_1C442F0C4();
  v2 = sub_1C4403FC0();
  v3 = type metadata accessor for ConstructionGraphTriple(v2);
  v4 = sub_1C43FCDF8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C4412BA8();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C440D034();
  sub_1C450220C(&qword_1EDDE2640, type metadata accessor for ConstructionGraphTriple);
  v8 = sub_1C43FE5F8();
  v9 = MEMORY[0x1C69407C0](v8);
  sub_1C441AE3C(v9);
  if (v1)
  {
    sub_1C4402B30();
    do
    {
      sub_1C4430848(v3, v0, type metadata accessor for ConstructionGraphTriple);
      sub_1C44057A8();
      sub_1C483D418();
      sub_1C4404B44();
      sub_1C4453C94();
      sub_1C443405C();
    }

    while (!v10);
  }

  else
  {
    sub_1C440167C();
  }

  sub_1C443F528();
  sub_1C4422220();
}

uint64_t sub_1C4598BC4(uint64_t a1)
{
  sub_1C43FEAE0(a1);
  type metadata accessor for BMDevicePlatform(0);
  sub_1C450220C(&qword_1EDDDB950, type metadata accessor for BMDevicePlatform);
  sub_1C442B910();
  v8 = v3;
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = 32;
    do
    {
      v6 = *(v1 + v5);
      sub_1C483D9F8();
      v5 += 8;
      --v4;
    }

    while (v4);

    return v8;
  }

  else
  {
    sub_1C440F210();
  }

  return v2;
}

uint64_t sub_1C4598D88()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_db) + OBJC_IVAR____TtC24IntelligencePlatformCore16KeyValueDatabase_pool);
  sub_1C441C090();

  v2 = sub_1C440CABC();
  sub_1C47D1F2C(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
}

uint64_t sub_1C4598E94()
{
  v2 = *(*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_db) + OBJC_IVAR____TtC24IntelligencePlatformCore16KeyValueDatabase_pool);
  sub_1C441C090();

  v3 = sub_1C440CABC();
  sub_1C47D2D5C(v3, v4, v5, v6, v7, v8, v9, v10, v15, v16);
  v12 = v11;

  if (v1)
  {
    return v13;
  }

  else
  {
    return v12;
  }
}

uint64_t sub_1C4598F7C()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_db) + OBJC_IVAR____TtC24IntelligencePlatformCore16KeyValueDatabase_pool);
  sub_1C441C090();

  v2 = sub_1C440CABC();
  sub_1C47D304C(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
}

uint64_t AssetRegistryOverrideStore.fetchAssetEntry(for:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = v3[2];
  sub_1C45991C0(a1, a2, a3);
  sub_1C446F1C4();
}

uint64_t sub_1C45990B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = v3[2];
  sub_1C45991C0(a1, a2, a3);
  sub_1C495BDCC();
}

BOOL sub_1C4599140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = v3[2];
  v6._countAndFlagsBits = sub_1C45991C0(a1, a2, a3);
  v7 = KeyValueStore.delete(key:)(v6);

  return v7;
}

uint64_t sub_1C45991C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](47, 0xE100000000000000);
  MEMORY[0x1C6940010](a1, a2);
  return a3;
}

void AssetRegistryOverrideStore.allOverridesIds()()
{
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = KeyValueStore.keys()();
  v5 = 0;
  v66 = *(v4 + 16);
  v67 = v4;
  v6 = (v4 + 40);
  v7 = MEMORY[0x1E69E7CC0];
  while (v66 != v5)
  {
    if (v5 >= *(v67 + 16))
    {
      goto LABEL_32;
    }

    v8 = *v6;
    v72[0] = *(v6 - 1);
    v72[1] = v8;
    sub_1C4599594(v72, &v68);
    v9 = v69;
    if (v69)
    {
      v10 = v68;
      v11 = v70;
      v12 = v71;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v73 = v2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v16 = *(v7 + 16);
        sub_1C458AE7C();
        v7 = v17;
      }

      v14 = *(v7 + 16);
      if (v14 >= *(v7 + 24) >> 1)
      {
        sub_1C458AE7C();
        v7 = v18;
      }

      *(v7 + 16) = v14 + 1;
      v15 = (v7 + 32 * v14);
      v15[4] = v10;
      v15[5] = v9;
      v15[6] = v11;
      v15[7] = v12;
      v2 = v73;
    }

    v6 += 2;
    ++v5;
  }

  v19 = sub_1C459976C(v7);
  v59 = v2;
  sub_1C456902C(&qword_1EC0B86C0, &unk_1C4F0D8A0);
  v20 = sub_1C4F02538();
  v21 = v20;
  v22 = 0;
  v23 = 1 << *(v19 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v19 + 64);
  v26 = (v23 + 63) >> 6;
  v63 = v19;
  v64 = v20 + 64;
  v62 = v20;
  v60 = v19 + 64;
  v61 = v26;
  if (!v25)
  {
LABEL_15:
    v28 = v22;
    while (1)
    {
      v22 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v22 >= v26)
      {

        return;
      }

      v29 = *(v60 + 8 * v22);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v25 = (v29 - 1) & v29;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  while (1)
  {
    v27 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
LABEL_20:
    v30 = v27 | (v22 << 6);
    v31 = (*(v19 + 48) + 16 * v30);
    v33 = *v31;
    v32 = v31[1];
    v34 = *(*(v19 + 56) + 8 * v30);
    v35 = *(v34 + 16);
    if (v35)
    {
      v67 = *v31;
      v73 = v25;
      v68 = MEMORY[0x1E69E7CC0];
      v66 = v32;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v36 = v34;
      sub_1C44CD9C0();
      v37 = v68;
      v65 = v36;
      v38 = (v36 + 56);
      do
      {
        v39 = *(v38 - 1);
        v40 = *v38;
        v68 = v37;
        v42 = *(v37 + 16);
        v41 = *(v37 + 24);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if (v42 >= v41 >> 1)
        {
          sub_1C44CD9C0();
          v37 = v68;
        }

        *(v37 + 16) = v42 + 1;
        v50 = v37 + 16 * v42;
        *(v50 + 32) = v39;
        *(v50 + 40) = v40;
        v38 += 4;
        --v35;
      }

      while (v35);
      v26 = v61;
      v21 = v62;
      v25 = v73;
      v51 = v66;
      v33 = v67;
    }

    else
    {
      v51 = v31[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v37 = MEMORY[0x1E69E7CC0];
    }

    sub_1C4499940(v37, v43, v44, v45, v46, v47, v48, v49, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
    v53 = v52;

    *(v64 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v54 = (v21[6] + 16 * v30);
    *v54 = v33;
    v54[1] = v51;
    *(v21[7] + 8 * v30) = v53;
    v55 = v21[2];
    v56 = __OFADD__(v55, 1);
    v57 = v55 + 1;
    if (v56)
    {
      break;
    }

    v21[2] = v57;
    v19 = v63;
    if (!v25)
    {
      goto LABEL_15;
    }
  }

LABEL_33:
  __break(1u);
}

void sub_1C4599594(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v15[0] = *a1;
  v15[1] = v3;
  sub_1C4415EA8();
  v5 = sub_1C4F01FC8();
  if (v5[2] == 2)
  {
    v7 = v5[4];
    v6 = v5[5];
    v9 = v5[6];
    v8 = v5[7];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    *a2 = v7;
    a2[1] = v6;
    a2[2] = v9;
    a2[3] = v8;
  }

  else
  {

    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v10 = sub_1C4F00978();
    sub_1C442B738(v10, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v11 = sub_1C4F00968();
    v12 = sub_1C4F01CE8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1C441D828(v4, v3, v15);
      _os_log_impl(&dword_1C43F8000, v11, v12, "%s is not a valid Asset Registry override key in KVStore!", v13, 0xCu);
      sub_1C440962C(v14);
      MEMORY[0x1C6942830](v14, -1, -1);
      MEMORY[0x1C6942830](v13, -1, -1);
    }

    *a2 = 0u;
    *(a2 + 1) = 0u;
  }
}

uint64_t sub_1C459976C(uint64_t a1)
{
  v1 = a1;
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC8];
  v36 = MEMORY[0x1E69E7CC8];
  v34 = *(a1 + 16);
  for (i = (a1 + 56); ; i += 4)
  {
    if (v34 == v2)
    {

      return v3;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    v35 = v2;
    v6 = *(i - 3);
    v5 = *(i - 2);
    v7 = *(i - 1);
    v8 = *i;
    swift_bridgeObjectRetain_n();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v10 = sub_1C445FAA8(v6, v5);
    v11 = v3[2];
    v12 = (v9 & 1) == 0;
    if (__OFADD__(v11, v12))
    {
      goto LABEL_19;
    }

    v13 = v9;
    if (v3[3] < v11 + v12)
    {
      sub_1C467974C();
      v3 = v36;
      v14 = sub_1C445FAA8(v6, v5);
      if ((v13 & 1) != (v15 & 1))
      {
        goto LABEL_21;
      }

      v10 = v14;
    }

    if (v13)
    {

      v16 = v3[7];
      v17 = *(v16 + 8 * v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v16 + 8 * v10) = v17;
      v32 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = *(v17 + 16);
        sub_1C458AE7C();
        v17 = v29;
        *(v16 + 8 * v10) = v29;
      }

      v19 = *(v17 + 16);
      v20 = v19 + 1;
      if (v19 >= *(v17 + 24) >> 1)
      {
        sub_1C458AE7C();
        v20 = v19 + 1;
        v17 = v30;
        *(v32 + 8 * v10) = v30;
      }

      v21 = v35;
      *(v17 + 16) = v20;
      v22 = (v17 + 32 * v19);
      v22[4] = v6;
      v22[5] = v5;
      v22[6] = v7;
      v22[7] = v8;
      v1 = a1;
    }

    else
    {
      sub_1C456902C(&qword_1EC0B8CF8, &qword_1C4F0E130);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1C4F0D130;
      *(v23 + 32) = v6;
      *(v23 + 40) = v5;
      *(v23 + 48) = v7;
      *(v23 + 56) = v8;
      v3[(v10 >> 6) + 8] |= 1 << v10;
      v24 = (v3[6] + 16 * v10);
      *v24 = v6;
      v24[1] = v5;
      *(v3[7] + 8 * v10) = v23;
      v25 = v3[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_20;
      }

      v3[2] = v27;
      v21 = v35;
    }

    v2 = v21 + 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}