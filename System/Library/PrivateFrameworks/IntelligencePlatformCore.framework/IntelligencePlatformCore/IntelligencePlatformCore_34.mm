uint64_t sub_1C46C6080()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1C46C60B8()
{
  sub_1C46C6080();

  return swift_deallocClassInstance();
}

unint64_t sub_1C46C618C(uint64_t a1)
{
  result = sub_1C46C61B4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C46C61B4()
{
  result = qword_1EC0BB328;
  if (!qword_1EC0BB328)
  {
    type metadata accessor for DevicePowerSignal();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB328);
  }

  return result;
}

void *sub_1C46C6208(_BYTE *a1, uint64_t a2)
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

uint64_t sub_1C46C63CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v63 = a5;
  sub_1C46C3CC4(v58);
  v7 = v58[1];
  v8 = v60;
  v9 = v61;
  v51 = v62;
  v52 = v58[0];
  v48 = v59;
  v10 = (v59 + 64) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v49 = a3;

  v50 = v7;
  if (v9)
  {
    while (1)
    {
      v53 = a4;
      v11 = v8;
LABEL_8:
      v13 = __clz(__rbit64(v9)) | (v11 << 6);
      v14 = (*(v52 + 48) + 16 * v13);
      v15 = v14[1];
      v16 = *(*(v52 + 56) + 8 * v13);
      v57[0] = *v14;
      v57[1] = v15;
      v57[2] = v16;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v17 = v16;
      v51(&v54, v57);

      v18 = v54;
      v19 = v55;
      v20 = v56;
      v21 = *v63;
      v29 = sub_1C445FAA8(v54, v55);
      v30 = *(v21 + 16);
      v31 = (v22 & 1) == 0;
      v32 = v30 + v31;
      if (__OFADD__(v30, v31))
      {
        break;
      }

      v33 = v22;
      if (*(v21 + 24) >= v32)
      {
        if ((v53 & 1) == 0)
        {
          sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
          sub_1C4F02468();
        }
      }

      else
      {
        v34 = v63;
        sub_1C46795D8(v32, v53 & 1, v23, v24, v25, v26, v27, v28, v47, v48, v49, SBYTE4(v49));
        v35 = *v34;
        v36 = sub_1C445FAA8(v18, v19);
        if ((v33 & 1) != (v37 & 1))
        {
          goto LABEL_24;
        }

        v29 = v36;
      }

      v9 &= v9 - 1;
      v38 = *v63;
      if (v33)
      {
        v39 = *(v38[7] + 8 * v29);

        v40 = v38[7];
        v41 = *(v40 + 8 * v29);
        *(v40 + 8 * v29) = v39;
      }

      else
      {
        v38[(v29 >> 6) + 8] |= 1 << v29;
        v42 = (v38[6] + 16 * v29);
        *v42 = v18;
        v42[1] = v19;
        *(v38[7] + 8 * v29) = v20;
        v43 = v38[2];
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_23;
        }

        v38[2] = v45;
      }

      a4 = 1;
      v8 = v11;
      v7 = v50;
      if (!v9)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v12 = v8;
    while (1)
    {
      v11 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v11 >= v10)
      {
        sub_1C449BB0C();
      }

      v9 = *(v7 + 8 * v11);
      ++v12;
      if (v9)
      {
        v53 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C46C66E8()
{
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  strcpy((inited + 32), "deviceUnlocked");
  *(inited + 47) = -18;
  *(inited + 48) = [objc_opt_self() featureValueWithInt64_];
  sub_1C4577DBC();
  return sub_1C4F00F28();
}

uint64_t sub_1C46C67A8@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_1C4EF9CD8();
  sub_1C43FCE50(v8);
  (*(v9 + 32))(a4, a1);
  result = type metadata accessor for DeviceScreenLockEvent();
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

void sub_1C46C682C(uint64_t a1)
{
  v3 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v16 - v5;
  v7 = sub_1C456902C(&qword_1EC0BB338, &qword_1C4F1EFC8);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - v12;
  v14 = [BiomeLibrary() Device];
  swift_unknownObjectRelease();
  v15 = [v14 ScreenLocked];
  swift_unknownObjectRelease();
  sub_1C4674F7C();

  if (!v1)
  {
    sub_1C46C02F4(v13, v11, &qword_1EC0BB338, &qword_1C4F1EFC8);
    sub_1C46C02F4(a1, v6, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    sub_1C493A438();
    sub_1C46C6B48(v13);
  }
}

void sub_1C46C6A04(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0BB330, &unk_1C4F1EFB8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v9 - v7;
  sub_1C46C682C(a1);
  if (!v2)
  {
    sub_1C46C6AD8(v8, a2);
  }
}

uint64_t sub_1C46C6AD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BB330, &unk_1C4F1EFB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C46C6B48(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0BB338, &qword_1C4F1EFC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for DeviceScreenLockEvent()
{
  result = qword_1EDDE3DB8;
  if (!qword_1EDDE3DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C46C6C24()
{
  result = sub_1C4EF9CD8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *sub_1C46C6CA8(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for DeviceWiFiConnectedDataProvider(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C46C6EA0()
{
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  sub_1C44193AC(inited, xmmword_1C4F0D130);
  inited[3].n128_u64[0] = [objc_opt_self() featureValueWithInt64_];
  sub_1C4577DBC();
  return sub_1C4F00F28();
}

uint64_t sub_1C46C6F3C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v5 = sub_1C43FBD18(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  sub_1C44193AC(inited, xmmword_1C4F0D130);
  inited[3].n128_u64[0] = [objc_opt_self() featureValueWithInt64_];
  sub_1C4577DBC();
  v11 = sub_1C4F00F28();
  if (a2)
  {
    v12 = sub_1C45FB538();
    if (v12)
    {
      v13 = v12;
      v14 = sub_1C4EF9CD8();
      sub_1C440BAA8(v9, 1, 1, v14);
      sub_1C4886564(a1, a2, v9);
      v16 = v15;
      sub_1C45942C8(v13);
      sub_1C4420C3C(v9, &unk_1EC0B84E0, qword_1C4F0D2D0);
      if (v16)
      {
        if (sub_1C4594E18())
        {
          swift_isUniquelyReferenced_nonNull_native();
          v24 = v11;
          sub_1C4660314();
          return v24;
        }

        else
        {
          v17 = sub_1C445FAA8(0x6469735369666977, 0xE800000000000000);
          if (v18)
          {
            v19 = v17;
            swift_isUniquelyReferenced_nonNull_native();
            v24 = v11;
            v20 = *(v11 + 24);
            sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
            sub_1C4F02458();
            v11 = v24;
            v21 = *(*(v24 + 48) + 16 * v19 + 8);

            v22 = *(*(v11 + 56) + 8 * v19);
            sub_1C4F02478();
          }
        }
      }
    }
  }

  return v11;
}

uint64_t sub_1C46C71C0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1C4EF9CD8();
  sub_1C43FBCE0(v10);
  (*(v11 + 32))(a5, a1);
  result = type metadata accessor for DeviceWiFiConnectedEvent();
  *(a5 + *(result + 20)) = a2;
  v13 = (a5 + *(result + 24));
  *v13 = a3;
  v13[1] = a4;
  return result;
}

uint64_t sub_1C46C725C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 24));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C46C727C(uint64_t a1)
{
  v3 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v4 = sub_1C43FBD18(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v21 - v7;
  v9 = sub_1C456902C(&qword_1EC0BB358, &qword_1C4F1F0D8);
  v10 = sub_1C43FBD18(v9);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v21 - v16;
  v18 = [BiomeLibrary() Device];
  swift_unknownObjectRelease();
  v19 = [v18 Wireless];
  swift_unknownObjectRelease();
  v20 = [v19 WiFi];
  swift_unknownObjectRelease();
  sub_1C467543C();

  if (!v1)
  {
    sub_1C445FFF0(v17, v15, &qword_1EC0BB358, &qword_1C4F1F0D8);
    sub_1C445FFF0(a1, v8, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    sub_1C493A808();
    sub_1C4420C3C(v17, &qword_1EC0BB358, &qword_1C4F1F0D8);
  }
}

void sub_1C46C7480(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0BB350, &unk_1C4F1F0C8);
  v6 = sub_1C43FBD18(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v11 - v9;
  sub_1C46C727C(a1);
  if (!v2)
  {
    sub_1C46C7550(v10, a2);
  }
}

uint64_t sub_1C46C7550(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BB350, &unk_1C4F1F0C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for DeviceWiFiConnectedEvent()
{
  result = qword_1EDDE1B70;
  if (!qword_1EDDE1B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C46C7634()
{
  result = sub_1C4EF9CD8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C46C76B8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_1C46C770C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1C46C776C()
{
  v1 = BiomeLibrary();
  *(v0 + 16) = v1;
  v2 = [v1 Device];
  v3 = [v2 Wireless];
  swift_unknownObjectRelease();
  v4 = [v3 AirplaneMode];
  sub_1C440D060();
  swift_unknownObjectRelease();
  *(v0 + 24) = v2;
  v5 = [*(v0 + 16) Device];
  v6 = [v5 Wireless];
  swift_unknownObjectRelease();
  v7 = [v6 Bluetooth];
  sub_1C440D060();
  swift_unknownObjectRelease();
  *(v0 + 32) = v5;
  v8 = [*(v0 + 16) Device];
  v9 = [v8 Wireless];
  swift_unknownObjectRelease();
  v10 = [v9 WiFi];
  sub_1C440D060();
  swift_unknownObjectRelease();
  *(v0 + 40) = v8;
  return v0;
}

void sub_1C46C7924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1C44CD9C0();
  v22 = 0;
  sub_1C4408894();
  sub_1C440F51C();
  do
  {
    v35 = 0xED000065646F6D5FLL;
    v36 = 0x656E616C70726961;
    switch(byte_1F43D2898[v22 + 32])
    {
      case 1:
        break;
      case 2:
        v36 = v34;
        v35 = v33;
        break;
      case 3:
        v36 = v31 + 22;
        v35 = v32;
        break;
      default:
        v36 = 0xD000000000000012;
        v35 = 0x80000001C4F8FC90;
        break;
    }

    v40 = v23;
    v37 = *(v23 + 16);
    if (v37 >= *(v23 + 24) >> 1)
    {
      v39 = v32;
      sub_1C44CD9C0();
      sub_1C440F51C();
      sub_1C4408894();
      v32 = v39;
      v23 = v40;
      v31 = 0xD000000000000012;
    }

    ++v22;
    *(v23 + 16) = v37 + 1;
    v38 = v23 + 16 * v37;
    *(v38 + 32) = v36;
    *(v38 + 40) = v35;
  }

  while (v22 != 4);

  sub_1C4499940(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1C46C7AB0(uint64_t a1)
{
  v3 = objc_autoreleasePoolPush();
  sub_1C46C7B08(a1, v1, &v5);
  objc_autoreleasePoolPop(v3);
  return v5;
}

uint64_t sub_1C46C7B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v54 = a3;
  v51 = a1;
  v52 = a2;
  v3 = sub_1C456902C(&unk_1EC0B9830, qword_1C4F0FC20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v46 - v5;
  v7 = sub_1C456902C(&unk_1EC0BA0F0, &unk_1C4F1D8A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v46 - v9;
  v11 = sub_1C4EF9648();
  v48 = *(v11 - 8);
  v49 = v11;
  v12 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C4EF9F88();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v46 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v47 = &v46 - v28;
  v29 = swift_allocObject();
  v50 = v29;
  *(v29 + 16) = MEMORY[0x1E69E7CC0];
  v53 = (v29 + 16);
  sub_1C4EF9F58();
  sub_1C440BAA8(v10, 1, 1, v15);
  v30 = sub_1C4EFA018();
  sub_1C440BAA8(v6, 1, 1, v30);
  sub_1C4EF9618();
  v31 = v47;
  sub_1C4EF9F18();
  (*(v48 + 8))(v14, v49);
  (*(v16 + 8))(v19, v15);
  v32 = v52;
  v33 = *(v52 + 32);
  sub_1C4467FE0(v31, v27);
  v34 = sub_1C4EF9CD8();
  sub_1C440BAA8(v24, 1, 1, v34);
  v35 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v36 = sub_1C457A86C(v27, v24, 0, 0, 0);
  v37 = [v33 publisherWithOptions_];

  v59 = sub_1C46C97C4;
  v60 = v32;
  aBlock = MEMORY[0x1E69E9820];
  v56 = 1107296256;
  v57 = sub_1C44405F8;
  v58 = &unk_1F43E8338;
  v38 = _Block_copy(&aBlock);

  v39 = swift_allocObject();
  v40 = v50;
  *(v39 + 16) = v32;
  *(v39 + 24) = v40;
  v59 = sub_1C46C97CC;
  v60 = v39;
  aBlock = MEMORY[0x1E69E9820];
  v56 = 1107296256;
  v57 = sub_1C4440590;
  v58 = &unk_1F43E8388;
  v41 = _Block_copy(&aBlock);

  v42 = [v37 sinkWithCompletion:v38 receiveInput:v41];
  _Block_release(v41);
  _Block_release(v38);

  sub_1C44686E4(v31);
  v43 = v53;
  swift_beginAccess();
  v44 = *v43;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  *v54 = v44;
  return result;
}

void sub_1C46C80AC(void *a1, uint64_t a2)
{
  v3 = [a1 error];
  if (v3)
  {
    v4 = v3;
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v5 = sub_1C4F00978();
    sub_1C442B738(v5, qword_1EDDFECB8);

    v6 = v4;
    oslog = sub_1C4F00968();
    v7 = sub_1C4F01CD8();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v20 = v9;
      *v8 = 136315394;
      v10 = [*(a2 + 32) description];
      v11 = sub_1C4F01138();
      v13 = v12;

      v14 = sub_1C441D828(v11, v13, &v20);

      *(v8 + 4) = v14;
      *(v8 + 12) = 2080;
      v15 = v6;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v16 = sub_1C4F01198();
      v18 = sub_1C441D828(v16, v17, &v20);

      *(v8 + 14) = v18;
      _os_log_impl(&dword_1C43F8000, oslog, v7, "Unable to fetch events from stream %s with error: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v9, -1, -1);
      MEMORY[0x1C6942830](v8, -1, -1);
    }

    else
    {
    }
  }
}

void sub_1C46C82F4(void *a1, uint64_t a2, uint64_t a3)
{
  if ([a1 eventBody])
  {
    v5 = swift_beginAccess();
    MEMORY[0x1C6940330](v5);
    sub_1C4427EF0(*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1C4F01748();
    swift_endAccess();
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
      v9 = swift_slowAlloc();
      v16 = v9;
      *v8 = 136315138;
      v10 = [*(a2 + 32) description];
      v11 = sub_1C4F01138();
      v13 = v12;

      v14 = sub_1C441D828(v11, v13, &v16);

      *(v8 + 4) = v14;
      _os_log_impl(&dword_1C43F8000, oslog, v7, "Unable to parse event body from read event in the stream %s", v8, 0xCu);
      sub_1C440962C(v9);
      MEMORY[0x1C6942830](v9, -1, -1);
      MEMORY[0x1C6942830](v8, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1C46C8510(uint64_t a1)
{
  v2 = *(v1 + 32);
  if (sub_1C4663250(a1))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v4 = sub_1C4F00978();
  sub_1C43FCEE8(v4, qword_1EDDFECB8);
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CF8();
  if (sub_1C43FCEA4(v6))
  {
    v7 = sub_1C43FCED0();
    sub_1C43FBD24(v7);
    sub_1C440BAE8(&dword_1C43F8000, v8, v9, "Unable to fetch recent event from AirplaneMode stream");
    sub_1C43FE9D4();
  }

  return 0;
}

uint64_t sub_1C46C85D8(uint64_t a1)
{
  if (sub_1C46C8510(a1))
  {
    v2 = sub_1C440D060();
    v3 = sub_1C46C7AB0(v2);
    if (v3)
    {
      v4 = v3;
      if ([v1 starting])
      {
        v5 = [v1 deviceType] == 21;
      }

      else
      {
        v5 = 0;
      }

      v18 = sub_1C4428DA0();
      if (!v18)
      {

        v21 = MEMORY[0x1E69E7CC0];
LABEL_28:
        v27 = *(sub_1C4597C94(v21) + 16);

        sub_1C456902C(&qword_1EC0BAAD8, &qword_1C4F16BE0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1C4F0CE60;
        *(inited + 32) = 0xD000000000000012;
        *(inited + 40) = 0x80000001C4F8FC90;
        sub_1C4577DBC();
        *(inited + 48) = sub_1C4A3B8F8(v5);
        *(inited + 56) = 0xD000000000000028;
        *(inited + 64) = 0x80000001C4F923A0;
        *(inited + 72) = [objc_opt_self() featureValueWithInt64_];
        sub_1C456902C(&qword_1EC0BA860, &unk_1C4F1EF30);
        v29 = sub_1C4F00F28();
        v30 = sub_1C467894C(v29);

        return v30;
      }

      v19 = v18;
      v31 = v5;
      v32 = MEMORY[0x1E69E7CC0];
      sub_1C459D8D0(0, v18 & ~(v18 >> 63), 0);
      if ((v19 & 0x8000000000000000) == 0)
      {
        v20 = 0;
        v21 = v32;
        do
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v22 = MEMORY[0x1C6940F90](v20, v4);
          }

          else
          {
            v22 = *(v4 + 8 * v20 + 32);
          }

          v23 = v22;
          v24 = [v22 productID];

          v26 = *(v32 + 16);
          v25 = *(v32 + 24);
          if (v26 >= v25 >> 1)
          {
            sub_1C459D8D0((v25 > 1), v26 + 1, 1);
          }

          ++v20;
          *(v32 + 16) = v26 + 1;
          *(v32 + 4 * v26 + 32) = v24;
        }

        while (v19 != v20);

        v5 = v31;
        goto LABEL_28;
      }

      __break(1u);
    }

    else if (qword_1EDDFECB0 == -1)
    {
LABEL_13:
      v13 = sub_1C4F00978();
      sub_1C43FCEE8(v13, qword_1EDDFECB8);
      v14 = sub_1C4F00968();
      v15 = sub_1C4F01CF8();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = sub_1C43FCED0();
        *v16 = 0;
        _os_log_impl(&dword_1C43F8000, v14, v15, "DeviceWirelessSignal: Could not fetch bluetooth events for past one hour", v16, 2u);
        sub_1C43FBE2C();
      }

      sub_1C4577DBC();
      v17 = sub_1C4F00F28();

      return v17;
    }

    sub_1C43FFB88();
    goto LABEL_13;
  }

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v6 = sub_1C4F00978();
  sub_1C43FCEE8(v6, qword_1EDDFECB8);
  v7 = sub_1C4F00968();
  v8 = sub_1C4F01CF8();
  if (sub_1C43FCEA4(v8))
  {
    v9 = sub_1C43FCED0();
    sub_1C43FBD24(v9);
    sub_1C440BAE8(&dword_1C43F8000, v10, v11, "DeviceWirelessSignal: Most Recent Bluetooth eventis nil");
    sub_1C43FE9D4();
  }

  sub_1C4577DBC();

  return sub_1C4F00F28();
}

uint64_t sub_1C46C89E4(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (sub_1C4663250(a1))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v4 = sub_1C4F00978();
  sub_1C43FCEE8(v4, qword_1EDDFECB8);
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CF8();
  if (sub_1C43FCEA4(v6))
  {
    v7 = sub_1C43FCED0();
    sub_1C43FBD24(v7);
    sub_1C440BAE8(&dword_1C43F8000, v8, v9, "Unable to fetch recent event from AirplaneMode stream");
    sub_1C43FE9D4();
  }

  return 0;
}

uint64_t sub_1C46C8AAC(uint64_t a1)
{
  v2 = *(v1 + 40);
  if (sub_1C4663250(a1))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v4 = sub_1C4F00978();
  sub_1C43FCEE8(v4, qword_1EDDFECB8);
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CF8();
  if (sub_1C43FCEA4(v6))
  {
    v7 = sub_1C43FCED0();
    sub_1C43FBD24(v7);
    sub_1C440BAE8(&dword_1C43F8000, v8, v9, "Unable to fetch recent event from DeviceWiFi stream");
    sub_1C43FE9D4();
  }

  return 0;
}

uint64_t sub_1C46C8B74(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, const char *a5)
{
  v8 = a2();
  if (v8)
  {
    v9 = v8;
    sub_1C456902C(&qword_1EC0BAAD8, &qword_1C4F16BE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0D130;
    *(inited + 32) = a3;
    *(inited + 40) = a4;
    sub_1C4577DBC();
    *(inited + 48) = sub_1C4A3B8F8([v9 starting]);
    sub_1C456902C(&qword_1EC0BA860, &unk_1C4F1EF30);
    v11 = sub_1C4F00F28();
    v12 = sub_1C467894C(v11);

    return v12;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v14 = sub_1C4F00978();
    sub_1C43FCEE8(v14, qword_1EDDFECB8);
    v15 = sub_1C4F00968();
    v16 = sub_1C4F01CF8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = sub_1C43FCED0();
      *v17 = 0;
      _os_log_impl(&dword_1C43F8000, v15, v16, a5, v17, 2u);
      sub_1C43FBE2C();
    }

    sub_1C4577DBC();

    return sub_1C4F00F28();
  }
}

void sub_1C46C8D40(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v49 = sub_1C4EF9CD8();
  v5 = sub_1C43FCDF8(v49);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  v13 = type metadata accessor for FeatureProviderSnapshot(0);
  v14 = sub_1C43FCDF8(v13);
  v47 = v15;
  v48 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  v20 = v19 - v18;
  v21 = *(a2 + 16);
  v22 = MEMORY[0x1E69E7CC0];
  if (v21)
  {
    v43 = a3;
    v51 = MEMORY[0x1E69E7CC0];
    sub_1C459D0A8();
    v22 = v51;
    v24 = *(v7 + 16);
    v23 = v7 + 16;
    v25 = a2 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
    v45 = (v23 - 8);
    v46 = v24;
    v44 = *(v23 + 56);
    do
    {
      v46(v12, v25, v49);
      v46(v20, v12, v49);
      sub_1C4406A6C();
      sub_1C44000F4();
      v30 = sub_1C46C8B74(v26, v27, v28, v29, "DeviceWirelessSignal: device wifi event is nil");
      v31 = sub_1C46C85D8(v12);
      sub_1C442C7A0();
      sub_1C440A900();
      v36 = sub_1C46C8B74(v32, v33, v34, v35, "DeviceWirelessSignal: airplaneMode event is nil");
      v37 = sub_1C46C455C(v31, v30);
      v38 = sub_1C46C455C(v36, v37);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v39 = sub_1C46C9600(v38, a1);

      sub_1C465CF34(v39);
      v41 = v40;

      (*v45)(v12, v49);
      *(v20 + *(v48 + 20)) = v41;
      v42 = *(v51 + 16);
      if (v42 >= *(v51 + 24) >> 1)
      {
        sub_1C459D0A8();
      }

      *(v51 + 16) = v42 + 1;
      sub_1C4586A54(v20, v51 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v42);
      v25 += v44;
      --v21;
    }

    while (v21);
    a3 = v43;
  }

  *a3 = v22;
}

uint64_t sub_1C46C903C()
{
  v0 = sub_1C4EF9CD8();
  v1 = sub_1C43FCDF8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  sub_1C4EF9C88();
  sub_1C4406A6C();
  sub_1C44000F4();
  v13 = sub_1C46C8B74(v8, v9, v10, v11, v12);
  v14 = sub_1C46C85D8(v8);
  sub_1C442C7A0();
  sub_1C440A900();
  v19 = sub_1C46C8B74(v8, v15, v16, v17, v18);
  v20 = sub_1C46C455C(v14, v13);
  v21 = sub_1C46C455C(v19, v20);
  (*(v3 + 8))(v8, v0);
  return v21;
}

uint64_t sub_1C46C915C(uint64_t a1, unint64_t a2)
{
  v4 = 0xEE0064657463656ELL;
  v5 = 0x6E6F635F69666977;
  v6 = sub_1C4EF9CD8();
  v7 = sub_1C43FCDF8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  v15 = a1 == 0x6E6F635F69666977 && a2 == 0xEE0064657463656ELL;
  if (v15 || (sub_1C43FD4D8() & 1) != 0)
  {
    sub_1C4EF9C88();
    v16 = "DeviceWirelessSignal: device wifi event is nil";
    v17 = sub_1C46C8AAC;
LABEL_7:
    sub_1C46C8B74(v14, v17, v5, v4, v16);
LABEL_8:
    (*(v9 + 8))(v14, v6);
    v18 = sub_1C44F9274(a1);

    return v18;
  }

  v4 = 0xED000065646F6D5FLL;
  v5 = 0x656E616C70726961;
  v20 = a1 == 0x656E616C70726961 && a2 == 0xED000065646F6D5FLL;
  if (v20 || (sub_1C43FD4D8() & 1) != 0)
  {
    sub_1C4EF9C88();
    v16 = "DeviceWirelessSignal: airplaneMode event is nil";
    v17 = sub_1C46C89E4;
    goto LABEL_7;
  }

  v21 = a1 == 0xD000000000000028 && 0x80000001C4F923A0 == a2;
  if (v21 || (sub_1C43FD4D8() & 1) != 0 || (a1 == 0xD000000000000012 ? (v22 = 0x80000001C4F8FC90 == a2) : (v22 = 0), v22 || (sub_1C43FD4D8() & 1) != 0))
  {
    sub_1C4EF9C88();
    sub_1C46C85D8(v14);
    goto LABEL_8;
  }

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v23 = sub_1C4F00978();
  sub_1C43FCEE8(v23, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v24 = sub_1C4F00968();
  v25 = sub_1C4F01CF8();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_1C441D828(a1, a2, &v28);
    _os_log_impl(&dword_1C43F8000, v24, v25, "Feature with name %s doesn't exist", v26, 0xCu);
    sub_1C440962C(v27);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  return 0;
}

unint64_t sub_1C46C9584(uint64_t a1)
{
  result = sub_1C46C95AC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C46C95AC()
{
  result = qword_1EC0BB370;
  if (!qword_1EC0BB370)
  {
    type metadata accessor for DeviceWirelessSignal();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB370);
  }

  return result;
}

void *sub_1C46C9600(_BYTE *a1, uint64_t a2)
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

uint64_t sub_1C46C97DC(uint64_t a1, void (*a2)(void *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = a1;
    v39 = MEMORY[0x1E69E7CC0];
    sub_1C459DE70();
    v37 = v39;
    result = sub_1C4703354(v4);
    v8 = result;
    v9 = 0;
    v36 = v4 + 64;
    v31 = v6;
    v32 = v2;
    v30 = v4 + 72;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v4 + 32))
    {
      v10 = v8 >> 6;
      if ((*(v36 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_23;
      }

      if (*(v4 + 36) != v6)
      {
        goto LABEL_24;
      }

      v35 = v6;
      v34 = v7;
      v11 = (*(v4 + 48) + 16 * v8);
      v12 = *v11;
      v13 = v11[1];
      v14 = (*(v4 + 56) + 16 * v8);
      v15 = v4;
      v16 = *v14;
      v17 = v14[1];
      __src[0] = v12;
      __src[1] = v13;
      swift_bridgeObjectRetain_n();
      swift_unknownObjectRetain();
      a2(&__src[2], v12, v13, v16, v17);
      swift_unknownObjectRelease();

      v18 = v37;
      v39 = v37;
      v19 = *(v37 + 16);
      if (v19 >= *(v37 + 24) >> 1)
      {
        sub_1C459DE70();
        v18 = v39;
      }

      *(v18 + 16) = v19 + 1;
      v37 = v18;
      result = memcpy((v18 + 80 * v19 + 32), __src, 0x49uLL);
      v20 = 1 << *(v15 + 32);
      if (v8 >= v20)
      {
        goto LABEL_25;
      }

      v21 = *(v36 + 8 * v10);
      if ((v21 & (1 << v8)) == 0)
      {
        goto LABEL_26;
      }

      v4 = v15;
      if (*(v15 + 36) != v35)
      {
        goto LABEL_27;
      }

      v22 = v21 & (-2 << (v8 & 0x3F));
      if (v22)
      {
        v20 = __clz(__rbit64(v22)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v23 = v32;
      }

      else
      {
        v24 = v10 << 6;
        v25 = v10 + 1;
        v26 = (v30 + 8 * v10);
        v23 = v32;
        while (v25 < (v20 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_1C440951C(v8, v35, v34 & 1);
            v20 = __clz(__rbit64(v27)) + v24;
            goto LABEL_19;
          }
        }

        result = sub_1C440951C(v8, v35, v34 & 1);
      }

LABEL_19:
      v7 = 0;
      ++v9;
      v8 = v20;
      v6 = v31;
      if (v9 == v23)
      {
        v3 = v37;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_21:
    v29 = sub_1C4812268(v3);

    return sub_1C4BA0398(v29);
  }

  return result;
}

void sub_1C46C9AB4(uint64_t a1, void (*a2)(void *__return_ptr, uint64_t, uint64_t, uint64_t *))
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
  v35 = a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v7 = 0;
  v27 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v7;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = v9 | (v7 << 6);
    v11 = (*(v35 + 48) + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    sub_1C442E860(*(v35 + 56) + 40 * v10, &v34);
    v33[0] = v12;
    v33[1] = v13;
    sub_1C46C9CF0(v33, &v29);
    v14 = v29;
    v15 = v30;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    a2(v32, v14, v15, v31);
    sub_1C440962C(v31);

    v16 = v32[0];
    v17 = v32[1];
    v18 = v32[2];
    if (v32[0])
    {
      sub_1C46C9CF0(v33, &v29);
      v25 = v30;
      v26 = v29;
      sub_1C440962C(v31);
      sub_1C46C9DA0(v33);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = *(v27 + 16);
        sub_1C458A624();
        v27 = v23;
      }

      v19 = *(v27 + 16);
      v20 = v19 + 1;
      if (v19 >= *(v27 + 24) >> 1)
      {
        sub_1C458A624();
        v20 = v19 + 1;
        v27 = v24;
      }

      *(v27 + 16) = v20;
      v21 = (v27 + 40 * v19);
      v21[4] = v26;
      v21[5] = v25;
      v21[6] = v16;
      v21[7] = v17;
      v21[8] = v18;
    }

    else
    {
      sub_1C46C9D60(0);
      sub_1C46C9DA0(v33);
    }
  }

  while (1)
  {
    v7 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v7 >= v6)
    {

      sub_1C4BA01CC(v27);
      return;
    }

    v5 = *(v2 + 8 * v7);
    ++v8;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_1C46C9CF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BB378, &qword_1C4F1F228);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C46C9D60(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C46C9DA0(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0BB378, &qword_1C4F1F228);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C46C9E08(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E6966A18]) init];
  v5 = [objc_allocWithZone(MEMORY[0x1E69B8A58]) init];
  v6 = objc_allocWithZone(MEMORY[0x1E69B8DB8]);
  v7 = v5;
  v8 = [v6 init];
  v9 = swift_allocObject();
  *(v9 + 80) = sub_1C4461BB8(0, &unk_1EDDF0560, 0x1E69B8A58);
  *(v9 + 88) = &off_1F43F72C0;
  *(v9 + 56) = v7;
  *(v9 + 120) = sub_1C4461BB8(0, &qword_1EDDF0450, 0x1E69B8DB8);
  *(v9 + 128) = &off_1F43F7318;
  *(v9 + 96) = v8;
  *(v9 + 16) = 3;
  *(v9 + 24) = xmmword_1C4F1F230;
  *(v9 + 40) = &unk_1F43D6DA0;

  *(v9 + 152) = 0x302E302E31;
  *(v9 + 160) = 0xE500000000000000;
  *(v9 + 48) = v4;
  *(v9 + 136) = a1;
  *(v9 + 144) = a2;
  return v9;
}

uint64_t sub_1C46C9F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[48] = a3;
  v4[49] = v3;
  v4[47] = a1;
  v5 = sub_1C4EFF9F8();
  v4[50] = v5;
  sub_1C43FCF7C(v5);
  v4[51] = v6;
  v8 = *(v7 + 64) + 15;
  v4[52] = swift_task_alloc();
  v9 = sub_1C4EFE1C8();
  v4[53] = v9;
  sub_1C43FCF7C(v9);
  v4[54] = v10;
  v4[55] = *(v11 + 64);
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v12 = sub_1C456902C(&qword_1EC0B9790, &unk_1C4F0F7C0);
  sub_1C43FBD18(v12);
  v14 = *(v13 + 64) + 15;
  v4[61] = swift_task_alloc();
  v15 = type metadata accessor for LOIBasedSegment(0);
  v4[62] = v15;
  sub_1C43FCF7C(v15);
  v4[63] = v16;
  v4[64] = *(v17 + 64);
  v4[65] = swift_task_alloc();
  v4[66] = swift_task_alloc();
  v4[67] = swift_task_alloc();
  v4[68] = swift_task_alloc();
  v18 = sub_1C4F00978();
  v4[69] = v18;
  sub_1C43FCF7C(v18);
  v4[70] = v19;
  v21 = *(v20 + 64) + 15;
  v4[71] = swift_task_alloc();
  v4[72] = swift_task_alloc();
  v4[73] = swift_task_alloc();
  v4[74] = swift_task_alloc();
  v4[75] = swift_task_alloc();
  v4[76] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C46CA1E0, 0, 0);
}

uint64_t sub_1C46CA1E0()
{
  v1 = *(v0 + 608);
  sub_1C4F00198();
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (sub_1C4402B64(v3))
  {
    *swift_slowAlloc() = 0;
    sub_1C43FFFD8(&dword_1C43F8000, v4, v5, "Running Dining out inference model");
    sub_1C43FE9D4();
  }

  v6 = *(v0 + 608);
  v7 = *(v0 + 560);
  v8 = *(v0 + 552);
  v10 = *(v0 + 488);
  v9 = *(v0 + 496);
  v11 = *(v0 + 384);

  v12 = *(v7 + 8);
  v13 = sub_1C4402B58();
  v12(v13);
  sub_1C442E860(v11, v0 + 16);
  sub_1C456902C(&qword_1EC0B9798, &unk_1C4F17040);
  if (!swift_dynamicCast())
  {
    v33 = *(v0 + 488);
    v34 = *(v0 + 376);
    sub_1C440BAA8(v33, 1, 1, *(v0 + 496));
    sub_1C4420C3C(v33, &qword_1EC0B9790, &unk_1C4F0F7C0);
LABEL_40:
    v107 = type metadata accessor for InferredActivitySegment();
    v108 = v34;
    goto LABEL_41;
  }

  v14 = *(v0 + 544);
  v15 = *(v0 + 496);
  sub_1C440BAA8(*(v0 + 488), 0, 1, v15);
  v16 = sub_1C4402B58();
  sub_1C46CB668(v16, v17);
  v18 = *(v15 + 24);
  sub_1C46CB6CC(v14 + v18, v0 + 56);
  v19 = *(v0 + 80);
  sub_1C4420C3C(v0 + 56, &qword_1EC0B97A0, &qword_1C4F0F7D0);
  if (!v19)
  {
    v35 = *(v0 + 600);
    sub_1C4F00198();
    v36 = sub_1C4F00968();
    v37 = sub_1C4F01CF8();
    if (sub_1C4402B64(v37))
    {
      *swift_slowAlloc() = 0;
      sub_1C43FFFD8(&dword_1C43F8000, v38, v39, "currSegment is not a visit segment");
      sub_1C43FE9D4();
    }

    v40 = *(v0 + 600);
    goto LABEL_35;
  }

  sub_1C46CB6CC(v14 + v18, v0 + 136);
  if (!*(v0 + 160))
  {
    sub_1C4420C3C(v0 + 136, &qword_1EC0B97A0, &qword_1C4F0F7D0);
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0;
    goto LABEL_16;
  }

  v20 = *(v0 + 168);
  sub_1C4409678((v0 + 136), *(v0 + 160));
  v21 = *(v20 + 32);
  v22 = sub_1C4400118();
  v23(v22);
  sub_1C46CB91C(v0 + 136);
  if (!*(v0 + 120))
  {
LABEL_16:
    sub_1C4420C3C(v0 + 96, &qword_1EC0BB380, &unk_1C4F1F2E0);
    goto LABEL_17;
  }

  sub_1C4420C3C(v0 + 96, &qword_1EC0BB380, &unk_1C4F1F2E0);
  sub_1C46CB6CC(v14 + v18, v0 + 336);
  if (!*(v0 + 360))
  {
    v94 = &qword_1EC0B97A0;
    v95 = &qword_1C4F0F7D0;
    v96 = v0 + 336;
LABEL_31:
    sub_1C4420C3C(v96, v94, v95);
    goto LABEL_32;
  }

  v24 = *(v0 + 368);
  sub_1C4409678((v0 + 336), *(v0 + 360));
  v25 = *(v24 + 32);
  v26 = sub_1C4400118();
  v27(v26);
  sub_1C46CB91C(v0 + 336);
  if (!*(v0 + 320))
  {
    v94 = &qword_1EC0BB380;
    v95 = &unk_1C4F1F2E0;
    v96 = v0 + 296;
    goto LABEL_31;
  }

  v28 = *(v0 + 328);
  sub_1C4409678((v0 + 296), *(v0 + 320));
  v29 = *(v28 + 24);
  v30 = sub_1C4400118();
  v32 = v31(v30);
  sub_1C440962C((v0 + 296));
  if (v32)
  {
LABEL_32:
    v97 = *(v0 + 592);
    sub_1C4F00198();
    v36 = sub_1C4F00968();
    v98 = sub_1C4F01CF8();
    if (sub_1C4402B64(v98))
    {
      *swift_slowAlloc() = 0;
      sub_1C43FFFD8(&dword_1C43F8000, v99, v100, "currSegment is a known semantic location segment");
      sub_1C43FE9D4();
    }

    v101 = *(v0 + 592);
LABEL_35:
    v102 = *(v0 + 560);
    v103 = *(v0 + 552);
    v104 = *(v0 + 544);
    v105 = *(v0 + 376);

    v106 = sub_1C4402B58();
    v12(v106);
    sub_1C46CB73C(v104);
    v107 = type metadata accessor for InferredActivitySegment();
    v108 = v105;
LABEL_41:
    sub_1C440BAA8(v108, 1, 1, v107);
    goto LABEL_42;
  }

LABEL_17:
  v41 = *(v0 + 544);
  v42 = *(*(v0 + 496) + 20);
  sub_1C4EF9B78();
  if (v43 > 10800.0)
  {
    v44 = *(v0 + 584);
    v45 = *(v0 + 544);
    v46 = *(v0 + 536);
    sub_1C4F00198();
    v47 = sub_1C4402B58();
    sub_1C46CB798(v47, v48);
    v49 = sub_1C4F00968();
    v50 = sub_1C4F01CF8();
    v51 = os_log_type_enabled(v49, v50);
    v52 = *(v0 + 536);
    if (v51)
    {
      v53 = swift_slowAlloc();
      sub_1C4402F1C(v53, 3.852e-34);
      v55 = v54;
      sub_1C46CB73C(v52);
      *(v53 + 4) = v55;
      sub_1C4416FE0(&dword_1C43F8000, v56, v57, "currSegment duration of %f is greater than maxDurationOfDiningOutActivityInSeconds");
      MEMORY[0x1C6942830](v53, -1, -1);
    }

    else
    {

      sub_1C46CB73C(v52);
    }

    v74 = *(v0 + 584);
LABEL_38:
    v109 = *(v0 + 544);
    v34 = *(v0 + 376);
    v110 = *(v0 + 560) + 8;
    (v12)(v74, *(v0 + 552));
LABEL_39:
    sub_1C46CB73C(v109);
    goto LABEL_40;
  }

  v58 = *(v0 + 544);
  sub_1C4EF9B78();
  if (v59 < 1800.0)
  {
    v60 = *(v0 + 576);
    v61 = *(v0 + 544);
    v62 = *(v0 + 528);
    sub_1C4F00198();
    v63 = sub_1C4402B58();
    sub_1C46CB798(v63, v64);
    v65 = sub_1C4F00968();
    v66 = sub_1C4F01CF8();
    v67 = os_log_type_enabled(v65, v66);
    v68 = *(v0 + 528);
    if (v67)
    {
      v69 = swift_slowAlloc();
      sub_1C4402F1C(v69, 3.852e-34);
      v71 = v70;
      sub_1C46CB73C(v68);
      *(v69 + 4) = v71;
      sub_1C4416FE0(&dword_1C43F8000, v72, v73, "currSegment duration of %f is less than minDurationOfDiningOutActivityInSeconds");
      MEMORY[0x1C6942830](v69, -1, -1);
    }

    else
    {

      sub_1C46CB73C(v68);
    }

    v74 = *(v0 + 576);
    goto LABEL_38;
  }

  v165 = v42;
  v182 = v12;
  v75 = *(v0 + 520);
  v77 = *(v0 + 504);
  v76 = *(v0 + 512);
  v78 = *(v0 + 480);
  sub_1C46CB798(*(v0 + 544), v75);
  v79 = *(v77 + 80);
  v80 = swift_allocObject();
  sub_1C46CB668(v75, v80 + ((v79 + 16) & ~v79));
  sub_1C4EFE1B8();
  sub_1C46CB6CC(v14 + v18, v0 + 256);
  if (*(v0 + 280))
  {
    v81 = *(v0 + 288);
    sub_1C4409678((v0 + 256), *(v0 + 280));
    v82 = *(v81 + 32);
    v83 = sub_1C43FD074();
    v84(v83);
    sub_1C46CB91C(v0 + 256);
    if (*(v0 + 240))
    {
      v85 = *(v0 + 248);
      sub_1C4409678((v0 + 216), *(v0 + 240));
      v86 = *(v85 + 16);
      v87 = sub_1C43FD074();
      v88(v87);
      if (*(v0 + 200))
      {
        v89 = *(v0 + 208);
        sub_1C4409678((v0 + 176), *(v0 + 200));
        v90 = *(v89 + 32);
        v91 = sub_1C43FD074();
        v169 = v92(v91);
        v167 = v93;
        sub_1C440962C((v0 + 176));
        sub_1C440962C((v0 + 216));
        goto LABEL_49;
      }

      sub_1C440962C((v0 + 216));
      v123 = &unk_1EC0BB388;
      v124 = &unk_1C4F1F2F0;
      v125 = v0 + 176;
    }

    else
    {
      v123 = &qword_1EC0BB380;
      v124 = &unk_1C4F1F2E0;
      v125 = v0 + 216;
    }
  }

  else
  {
    v123 = &qword_1EC0B97A0;
    v124 = &qword_1C4F0F7D0;
    v125 = v0 + 256;
  }

  sub_1C4420C3C(v125, v123, v124);
  v169 = 0;
  v167 = 0;
LABEL_49:
  v166 = v41;
  v168 = *(v0 + 544);
  v126 = *(v0 + 520);
  v127 = *(v0 + 512);
  v128 = *(v0 + 472);
  v129 = *(v0 + 464);
  v130 = *(v0 + 440);
  v177 = *(v0 + 448);
  v179 = *(v0 + 568);
  v131 = *(v0 + 424);
  v132 = *(v0 + 432);
  v171 = *(v0 + 408);
  v133 = *(v0 + 392);
  v173 = *(v0 + 400);
  v175 = *(v0 + 416);
  (*(v132 + 16))(v129, *(v0 + 480), v131);
  v134 = (*(v132 + 80) + 40) & ~*(v132 + 80);
  v135 = swift_allocObject();
  *(v135 + 2) = v133;
  *(v135 + 3) = v169;
  *(v135 + 4) = v167;
  (*(v132 + 32))(&v135[v134], v129, v131);

  sub_1C4EFE1B8();
  sub_1C46CB798(v168, v126);
  v136 = swift_allocObject();
  *(v136 + 16) = v133;
  sub_1C46CB668(v126, v136 + ((v79 + 24) & ~v79));

  sub_1C4EFE1B8();
  sub_1C456902C(&qword_1EC0B97A8, &unk_1C4F0F7E0);
  v137 = sub_1C4EFE178();
  sub_1C43FCF7C(v137);
  v139 = *(v138 + 72);
  v141 = (*(v140 + 80) + 32) & ~*(v140 + 80);
  *(swift_allocObject() + 16) = xmmword_1C4F0CE60;
  sub_1C4EFE1A8();
  sub_1C4EFE1A8();
  (*(v171 + 104))(v175, *MEMORY[0x1E69A9A98], v173);
  sub_1C4F016E8();

  (*(v171 + 8))(v175, v173);
  sub_1C4EFE188();
  v143 = v142;
  sub_1C4F00198();
  v144 = sub_1C4F00968();
  v145 = sub_1C4F01CF8();
  if (os_log_type_enabled(v144, v145))
  {
    v146 = swift_slowAlloc();
    *v146 = 134217984;
    *(v146 + 4) = v143;
    _os_log_impl(&dword_1C43F8000, v144, v145, "diningOutConfidence = %f", v146, 0xCu);
    MEMORY[0x1C6942830](v146, -1, -1);
  }

  v147 = *(v0 + 568);
  v148 = *(v0 + 560);
  v149 = *(v0 + 552);
  v150 = *(v0 + 472);
  v181 = *(v0 + 480);
  v152 = *(v0 + 448);
  v151 = *(v0 + 456);
  v154 = *(v0 + 424);
  v153 = *(v0 + 432);

  v182(v147, v149);
  v155 = *(v153 + 8);
  v155(v152, v154);
  v155(v151, v154);
  v155(v150, v154);
  v155(v181, v154);
  v109 = *(v0 + 544);
  if (v143 < 0.6)
  {
    v34 = *(v0 + 376);
    goto LABEL_39;
  }

  v156 = *(v0 + 392);
  v157 = *(v0 + 376);
  v158 = sub_1C4EF9CD8();
  sub_1C43FBCE0(v158);
  v160 = *(v159 + 16);
  v160(v157, v109, v158);
  v161 = type metadata accessor for InferredActivitySegment();
  v160(v157 + v161[5], v166 + v165, v158);
  sub_1C46CB73C(v109);
  v162 = *(v156 + 152);
  v163 = *(v156 + 160);
  *(v157 + v161[6]) = *(v156 + 16);
  *(v157 + v161[7]) = v143;
  v164 = (v157 + v161[8]);
  *v164 = v162;
  v164[1] = v163;
  sub_1C440BAA8(v157, 0, 1, v161);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_42:
  v111 = *(v0 + 608);
  v112 = *(v0 + 600);
  v113 = *(v0 + 592);
  v114 = *(v0 + 584);
  v115 = *(v0 + 576);
  v116 = *(v0 + 568);
  v117 = *(v0 + 544);
  v118 = *(v0 + 536);
  v119 = *(v0 + 528);
  v120 = *(v0 + 520);
  v170 = *(v0 + 488);
  v172 = *(v0 + 480);
  v174 = *(v0 + 472);
  v176 = *(v0 + 464);
  v178 = *(v0 + 456);
  v180 = *(v0 + 448);
  v183 = *(v0 + 416);

  v121 = *(v0 + 8);

  return v121();
}

double sub_1C46CAE70(uint64_t a1)
{
  v2 = sub_1C4F00978();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = type metadata accessor for LOIBasedSegment(0);
  sub_1C46CB6CC(a1 + *(v7 + 24), v14);
  if (v15)
  {
    v8 = sub_1C4B70BBC();
    sub_1C46CB91C(v14);
  }

  else
  {
    sub_1C4420C3C(v14, &qword_1EC0B97A0, &qword_1C4F0F7D0);
    v8 = 0.0;
  }

  sub_1C4F00198();
  v9 = sub_1C4F00968();
  v10 = sub_1C4F01CF8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = v8;
    _os_log_impl(&dword_1C43F8000, v9, v10, "storedVisitConfidence for dining out = %f", v11, 0xCu);
    MEMORY[0x1C6942830](v11, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return v8;
}

double sub_1C46CB01C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1C4F00978();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(a1 + 40);
  if (a3)
  {
    v12 = a2;
  }

  else
  {
    v12 = 0;
  }

  if (a3)
  {
    v13 = a3;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  v26[0] = v12;
  v26[1] = v13;
  v25 = v26;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v14 = sub_1C44CE068(sub_1C44CE790, v24, v11);

  v15 = 0.0;
  if (v14)
  {
    v16 = *(a1 + 136);
    v17._countAndFlagsBits = 0x494F506F6547;
    v17._object = 0xE600000000000000;
    v18 = ConfidenceService.confidence(source:signalType:)(v17, 0);
    sub_1C4EFE188();
    v15 = v18 * v19;
  }

  sub_1C4F00198();
  v20 = sub_1C4F00968();
  v21 = sub_1C4F01CF8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    *(v22 + 4) = v15;
    _os_log_impl(&dword_1C43F8000, v20, v21, "diningOutConfidenceDueToGeoPoi = %f", v22, 0xCu);
    MEMORY[0x1C6942830](v22, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  return v15;
}

double sub_1C46CB228(void *a1, unint64_t a2)
{
  v4 = sub_1C4F00978();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[6];
  v10 = a1[18];
  type metadata accessor for EventsFoundInAppsSignal();
  inited = swift_initStackObject();
  *(inited + 16) = v10;
  *(inited + 24) = v9;
  v12 = *(type metadata accessor for LOIBasedSegment(0) + 20);
  v13 = v9;

  sub_1C479CBF4(a2, a2 + v12);
  v14 = sub_1C44F9274(0xD00000000000001DLL);

  v15 = 0.0;
  if (v14)
  {
    v16 = [v14 dictionaryValue];
    sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
    v17 = sub_1C4F00ED8();

    v26[1] = 1685024582;
    v26[2] = 0xE400000000000000;
    sub_1C4F02198();
    if (*(v17 + 16))
    {
      sub_1C457AA70(v27);
      v19 = v18;

      sub_1C457E804(v27);
      if (v19)
      {
        v20 = a1[17];
        v21._object = 0x80000001C4F8AC10;
        v21._countAndFlagsBits = 0xD000000000000014;
        v15 = ConfidenceService.confidence(source:signalType:)(v21, 0);
      }
    }

    else
    {

      sub_1C457E804(v27);
    }
  }

  sub_1C4F00198();
  v22 = sub_1C4F00968();
  v23 = sub_1C4F01CF8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134217984;
    *(v24 + 4) = v15;
    _os_log_impl(&dword_1C43F8000, v22, v23, "diningOutConfidenceDueToFiA = %f", v24, 0xCu);
    MEMORY[0x1C6942830](v24, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  return v15;
}

uint64_t sub_1C46CB514()
{
  v1 = *(v0 + 40);

  sub_1C440962C((v0 + 56));
  sub_1C440962C((v0 + 96));
  v2 = *(v0 + 136);

  v3 = *(v0 + 144);

  v4 = *(v0 + 160);

  return v0;
}

uint64_t sub_1C46CB564()
{
  sub_1C46CB514();

  return swift_deallocClassInstance();
}

uint64_t sub_1C46CB5BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C44A7DA0;

  return sub_1C46C9F54(a1, v8, a3);
}

uint64_t sub_1C46CB668(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LOIBasedSegment(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C46CB6CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B97A0, &qword_1C4F0F7D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C46CB73C(uint64_t a1)
{
  v2 = type metadata accessor for LOIBasedSegment(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C46CB798(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LOIBasedSegment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1C46CB7FC()
{
  v1 = type metadata accessor for LOIBasedSegment(0);
  sub_1C43FBD18(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return sub_1C46CAE70(v3);
}

double sub_1C46CB858()
{
  v1 = sub_1C4EFE1C8();
  sub_1C43FBD18(v1);
  v3 = *(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];

  return sub_1C46CB01C(v4, v5, v6);
}

double sub_1C46CB8BC()
{
  v1 = type metadata accessor for LOIBasedSegment(0);
  sub_1C43FBD18(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return sub_1C46CB228(v3, v4);
}

uint64_t type metadata accessor for DocumentMatcher()
{
  result = qword_1EC0BB3A0;
  if (!qword_1EC0BB3A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DocumentMatcher.source.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for DocumentMatcher() + 20);

  return sub_1C46CBA70(a1, v3);
}

uint64_t sub_1C46CBA70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Source();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t DocumentMatcher.pipelineType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for DocumentMatcher();
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t DocumentMatcher.init(stores:source:pipelineType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = type metadata accessor for DocumentMatcher();
  *(a4 + v8[8]) = 1056964608;
  sub_1C441F7B0();
  sub_1C4430A14(a1, a4);
  sub_1C4471E9C(a2, a4 + v8[5]);
  result = sub_1C4471E9C(a1, a4 + v8[6]);
  *(a4 + v8[7]) = v7;
  return result;
}

float sub_1C46CBC60(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v3 = sub_1C4EFEEF8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v47 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v43 - v8;
  v54 = type metadata accessor for EntityTriple(0);
  v49 = *(v54 - 8);
  v10 = *(v49 + 64);
  v11 = MEMORY[0x1EEE9AC00](v54);
  v48 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v44 = &v43 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v43 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v45 = &v43 - v18;
  v19 = 0;
  v20 = *(a1 + 16);
  v50 = a1;
  v51 = v20;
  v53 = (v4 + 8);
  while (1)
  {
    v21 = 0.0;
    if (v51 == v19)
    {
      return v21;
    }

    v22 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    v52 = *(v49 + 72);
    sub_1C4430A14(v50 + v22 + v52 * v19, v17);
    v23 = *(v54 + 20);
    sub_1C4EFEBE8();
    sub_1C44AC538(&off_1EDDFCCA8, MEMORY[0x1E69A9748]);
    sub_1C4F01578();
    sub_1C4F01578();
    if (v57 == v55 && v58 == v56)
    {
      v25 = 1;
    }

    else
    {
      v25 = sub_1C4F02938();
    }

    v26 = *v53;
    (*v53)(v9, v3);

    if (v25)
    {
      v27 = v45;
      sub_1C4471E9C(v17, v45);
      v28 = (v27 + *(v54 + 32));
      v29 = v28[1];
      v51 = *v28;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44DBD04(v27, type metadata accessor for EntityTriple);
      v30 = *(v46 + 16);
      v31 = v46 + v22;
      v32 = v47;
      if (!v30)
      {
LABEL_18:

        return v21;
      }

      while (1)
      {
        sub_1C4430A14(v31, v48);
        v33 = *(v54 + 20);
        sub_1C4EFEBE8();
        sub_1C4F01578();
        sub_1C4F01578();
        if (v57 == v55 && v58 == v56)
        {
          break;
        }

        v35 = sub_1C4F02938();
        v26(v32, v3);

        if (v35)
        {
          goto LABEL_20;
        }

        sub_1C44DBD04(v48, type metadata accessor for EntityTriple);
        v31 += v52;
        if (!--v30)
        {
          goto LABEL_18;
        }
      }

      v26(v32, v3);

LABEL_20:
      v36 = v44;
      sub_1C4471E9C(v48, v44);
      v37 = (v36 + *(v54 + 32));
      v39 = *v37;
      v38 = v37[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44DBD04(v36, type metadata accessor for EntityTriple);
      if (v39 == v51 && v38 == v29)
      {
      }

      else
      {
        v41 = sub_1C4F02938();

        if ((v41 & 1) == 0)
        {
          return v21;
        }
      }

      return 1.0;
    }

    sub_1C44DBD04(v17, type metadata accessor for EntityTriple);
    ++v19;
  }
}

float sub_1C46CC1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v65 = a6;
  v68 = a4;
  v69 = a5;
  v72 = a2;
  v7 = sub_1C43FBE94();
  v71 = v8(v7);
  v9 = sub_1C43FCDF8(v71);
  v67 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBD08();
  v73 = v13 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v64 = &v63 - v16;
  v17 = sub_1C4EFEEF8();
  v18 = sub_1C43FCDF8(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBD08();
  v70 = (v23 - v24);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v63 - v26;
  v75 = type metadata accessor for EntityTriple(0);
  v28 = sub_1C43FCDF8(v75);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBD08();
  v35 = v33 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v66 = &v63 - v37;
  v38 = 0;
  v74 = v6;
  v76 = *(v6 + 16);
  v77 = (v20 + 8);
  while (1)
  {
    v39 = 0.0;
    if (v76 == v38)
    {
      return v39;
    }

    sub_1C4430A14(v74 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v38, v35);
    v40 = *(v75 + 20);
    sub_1C4EFEBE8();
    sub_1C44AC538(&off_1EDDFCCA8, MEMORY[0x1E69A9748]);
    sub_1C43FD4F4();
    sub_1C43FD4F4();
    if (v80 == v78 && v81 == v79)
    {
      v42 = 1;
    }

    else
    {
      v42 = sub_1C4F02938();
    }

    v43 = *v77;
    (*v77)(v27, v17);

    if (v42)
    {
      v44 = v66;
      sub_1C4471E9C(v35, v66);
      v45 = (v44 + *(v75 + 32));
      v47 = *v45;
      v46 = v45[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44DBD04(v44, type metadata accessor for EntityTriple);
      v48 = 0;
      v49 = *(v72 + 16);
      while (1)
      {
        v50 = v70;
        if (v49 == v48)
        {

          return v39;
        }

        sub_1C4430A14(v72 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v48, v73);
        v51 = *(v71 + 20);
        sub_1C4EFEBE8();
        sub_1C43FD4F4();
        sub_1C43FD4F4();
        if (v80 == v78 && v81 == v79)
        {
          break;
        }

        v53 = sub_1C4F02938();
        v54 = v50;
        v55 = v53;
        v43(v54, v17);

        if (v55)
        {
          goto LABEL_21;
        }

        sub_1C44DBD04(v73, v69);
        ++v48;
      }

      v43(v50, v17);

LABEL_21:
      v56 = v64;
      sub_1C4471E9C(v73, v64);
      v57 = (v56 + *(v71 + 32));
      v59 = *v57;
      v58 = v57[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44DBD04(v56, v69);
      if (v59 == v47 && v58 == v46)
      {
      }

      else
      {
        v61 = sub_1C4F02938();

        if ((v61 & 1) == 0)
        {
          return v39;
        }
      }

      return 1.0;
    }

    sub_1C44DBD04(v35, type metadata accessor for EntityTriple);
    ++v38;
  }
}

uint64_t sub_1C46CC6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a2;
  v76 = a1;
  v72 = a3;
  v71 = sub_1C4EF9CD8();
  v69 = *(v71 - 8);
  v4 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v68 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C4EFF0C8();
  v73 = *(v6 - 8);
  v74 = v6;
  v7 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v70 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v63 - v11;
  v13 = type metadata accessor for EntityTriple(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C456902C(&unk_1EC0BC900, &unk_1C4F142D0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v63 - v19;
  v21 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v63 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v63 - v29;
  v31 = v3;
  v32 = v77;
  result = sub_1C4ACE774();
  if (!v32)
  {
    v34 = v12;
    v64 = v28;
    v65 = v25;
    v66 = 0;
    v67 = v31;
    v77 = v16;
    v35 = v74;
    v36 = v75;
    if (v75)
    {
      sub_1C44F1938(v75, v20);
      v37 = type metadata accessor for GraphTriple(0);
      v38 = v34;
      if (sub_1C44157D4(v20, 1, v37) == 1)
      {
        sub_1C4420C3C(v20, &unk_1EC0BC900, &unk_1C4F142D0);
        v39 = 1;
      }

      else
      {
        (*(v73 + 16))(v30, v20, v35);
        sub_1C44DBD04(v20, type metadata accessor for GraphTriple);
        v39 = 0;
      }
    }

    else
    {
      v39 = 1;
      v38 = v34;
    }

    v40 = v30;
    sub_1C440BAA8(v30, v39, 1, v35);
    v41 = v76;
    sub_1C44D0BD8(v76, v38);
    if (sub_1C44157D4(v38, 1, v13) == 1)
    {
      sub_1C4420C3C(v38, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v42 = sub_1C4F00978();
      sub_1C442B738(v42, qword_1EDE2DE10);
      v43 = sub_1C4F00968();
      v44 = sub_1C4F01CD8();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_1C43F8000, v43, v44, "Document Matcher: skipping entityTriples are empty", v45, 2u);
        MEMORY[0x1C6942830](v45, -1, -1);
      }

      sub_1C46828B4();
      swift_allocError();
      *v46 = 0;
      swift_willThrow();
      return sub_1C4420C3C(v40, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    else
    {
      sub_1C4471E9C(v38, v77);
      if (v36)
      {
        v47 = v67;
        v48 = sub_1C46CC1BC(v41, v36, type metadata accessor for GraphTriple, type metadata accessor for GraphTriple, type metadata accessor for GraphTriple, type metadata accessor for GraphTriple);
        v49 = v72;
      }

      else
      {
        v48 = 0.0;
        v49 = v72;
        v47 = v67;
      }

      v50 = v70;
      v51 = v64;
      v76 = type metadata accessor for DocumentMatcher();
      v52 = *(v47 + *(v76 + 32));
      if (v48 <= v52)
      {
        sub_1C4EFF008();
        sub_1C4420C3C(v40, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C440BAA8(v51, 0, 1, v35);
        sub_1C44DDDBC(v51, v40);
        v48 = v52;
      }

      v53 = v65;
      sub_1C445FFF0(v40, v65, &unk_1EC0BA0E0, &qword_1C4F105A0);
      v54 = sub_1C44157D4(v53, 1, v35);
      v55 = v73;
      v75 = v40;
      if (v54 == 1)
      {
        sub_1C4420C3C(v53, &unk_1EC0BA0E0, &qword_1C4F105A0);
        result = sub_1C4F024A8();
        __break(1u);
      }

      else
      {
        (*(v73 + 32))(v50, v53, v35);
        _s24IntelligencePlatformCore15DocumentMatcherV11entityClass0aB006EntityG0Vvg_0();
        v56 = type metadata accessor for EntityMatch(0);
        v57 = *(v55 + 16);
        v58 = v77;
        v57(v49 + v56[5], v77, v35);
        v57(v49 + v56[6], v50, v35);
        v59 = v68;
        sub_1C4EF9C88();
        sub_1C4EF9AD8();
        v61 = v60;
        (*(v69 + 8))(v59, v71);
        (*(v55 + 8))(v50, v35);
        sub_1C44DBD04(v58, type metadata accessor for EntityTriple);
        result = sub_1C4420C3C(v75, &unk_1EC0BA0E0, &qword_1C4F105A0);
        v62 = *(v67 + *(v76 + 28));
        *(v49 + v56[7]) = v48;
        *(v49 + v56[8]) = v61;
        *(v49 + v56[9]) = v62;
        *(v49 + v56[10]) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C46CCE98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a2;
  v76 = a1;
  v70 = a3;
  v72 = sub_1C4EF9CD8();
  v69 = *(v72 - 8);
  v4 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C4EFF0C8();
  v73 = *(v6 - 8);
  v74 = v6;
  v7 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EntityTriple(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v63 - v19;
  v21 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v63 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v63 - v29;
  v31 = v77;
  result = sub_1C4ACE774();
  if (!v31)
  {
    v64 = v28;
    v65 = v25;
    v66 = 0;
    v67 = v9;
    v68 = v13;
    v33 = v73;
    v34 = v74;
    v77 = v30;
    if (v75)
    {
      v35 = v75;
      sub_1C44D0BD8(v75, v20);
      v36 = v33;
      if (sub_1C44157D4(v20, 1, v10) == 1)
      {
        sub_1C4420C3C(v20, &qword_1EC0BA590, &qword_1C4F1F430);
        v37 = 1;
      }

      else
      {
        (*(v33 + 16))(v77, v20, v34);
        sub_1C44DBD04(v20, type metadata accessor for EntityTriple);
        v37 = 0;
      }
    }

    else
    {
      v35 = 0;
      v37 = 1;
      v36 = v73;
    }

    v38 = v76;
    sub_1C440BAA8(v77, v37, 1, v34);
    sub_1C44D0BD8(v38, v18);
    if (sub_1C44157D4(v18, 1, v10) == 1)
    {
      sub_1C4420C3C(v18, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v39 = sub_1C4F00978();
      sub_1C442B738(v39, qword_1EDE2DE10);
      v40 = sub_1C4F00968();
      v41 = sub_1C4F01CD8();
      v42 = os_log_type_enabled(v40, v41);
      v43 = v77;
      if (v42)
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_1C43F8000, v40, v41, "Document Matcher: skipping entityTriples are empty", v44, 2u);
        MEMORY[0x1C6942830](v44, -1, -1);
      }

      sub_1C46828B4();
      swift_allocError();
      *v45 = 0;
      swift_willThrow();
      return sub_1C4420C3C(v43, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    else
    {
      sub_1C4471E9C(v18, v68);
      if (v35)
      {
        v46 = sub_1C46CBC60(v38, v35);
      }

      else
      {
        v46 = 0.0;
      }

      v47 = v70;
      v48 = v67;
      v49 = v64;
      v75 = type metadata accessor for DocumentMatcher();
      v50 = *(v3 + *(v75 + 32));
      v51 = v77;
      if (v46 <= v50)
      {
        sub_1C4EFF008();
        sub_1C4420C3C(v51, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C440BAA8(v49, 0, 1, v34);
        sub_1C44DDDBC(v49, v51);
        v46 = v50;
      }

      v76 = v3;
      v52 = v65;
      sub_1C445FFF0(v51, v65, &unk_1EC0BA0E0, &qword_1C4F105A0);
      if (sub_1C44157D4(v52, 1, v34) == 1)
      {
        sub_1C4420C3C(v52, &unk_1EC0BA0E0, &qword_1C4F105A0);
        result = sub_1C4F024A8();
        __break(1u);
      }

      else
      {
        (*(v36 + 32))(v48, v52, v34);
        _s24IntelligencePlatformCore15DocumentMatcherV11entityClass0aB006EntityG0Vvg_0();
        v53 = v48;
        v54 = v34;
        v55 = type metadata accessor for EntityMatch(0);
        v56 = v36;
        v57 = *(v36 + 16);
        v58 = v68;
        v57(v47 + v55[5], v68, v54);
        v57(v47 + v55[6], v53, v54);
        v59 = v71;
        sub_1C4EF9C88();
        sub_1C4EF9AD8();
        v61 = v60;
        (*(v69 + 8))(v59, v72);
        (*(v56 + 8))(v53, v54);
        sub_1C44DBD04(v58, type metadata accessor for EntityTriple);
        result = sub_1C4420C3C(v51, &unk_1EC0BA0E0, &qword_1C4F105A0);
        v62 = *(v76 + *(v75 + 28));
        *(v47 + v55[7]) = v46;
        *(v47 + v55[8]) = v61;
        *(v47 + v55[9]) = v62;
        *(v47 + v55[10]) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C46CD5D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a2;
  v76 = a1;
  v72 = a3;
  v71 = sub_1C4EF9CD8();
  v69 = *(v71 - 8);
  v4 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v68 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C4EFF0C8();
  v73 = *(v6 - 8);
  v74 = v6;
  v7 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v70 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v63 - v11;
  v13 = type metadata accessor for EntityTriple(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C456902C(&unk_1EC0BCAE0, &unk_1C4F142A0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v63 - v19;
  v21 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v63 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v63 - v29;
  v31 = v3;
  v32 = v77;
  result = sub_1C4ACE774();
  if (!v32)
  {
    v34 = v12;
    v64 = v28;
    v65 = v25;
    v66 = 0;
    v67 = v31;
    v77 = v16;
    v35 = v74;
    v36 = v75;
    if (v75)
    {
      sub_1C486854C(v75, v20);
      v37 = type metadata accessor for ConstructionGraphTriple(0);
      v38 = v34;
      if (sub_1C44157D4(v20, 1, v37) == 1)
      {
        sub_1C4420C3C(v20, &unk_1EC0BCAE0, &unk_1C4F142A0);
        v39 = 1;
      }

      else
      {
        (*(v73 + 16))(v30, v20, v35);
        sub_1C44DBD04(v20, type metadata accessor for ConstructionGraphTriple);
        v39 = 0;
      }
    }

    else
    {
      v39 = 1;
      v38 = v34;
    }

    v40 = v30;
    sub_1C440BAA8(v30, v39, 1, v35);
    v41 = v76;
    sub_1C44D0BD8(v76, v38);
    if (sub_1C44157D4(v38, 1, v13) == 1)
    {
      sub_1C4420C3C(v38, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v42 = sub_1C4F00978();
      sub_1C442B738(v42, qword_1EDE2DE10);
      v43 = sub_1C4F00968();
      v44 = sub_1C4F01CD8();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_1C43F8000, v43, v44, "Document Matcher: skipping entityTriples are empty", v45, 2u);
        MEMORY[0x1C6942830](v45, -1, -1);
      }

      sub_1C46828B4();
      swift_allocError();
      *v46 = 0;
      swift_willThrow();
      return sub_1C4420C3C(v40, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    else
    {
      sub_1C4471E9C(v38, v77);
      if (v36)
      {
        v47 = v67;
        v48 = sub_1C46CC1BC(v41, v36, type metadata accessor for ConstructionGraphTriple, type metadata accessor for ConstructionGraphTriple, type metadata accessor for ConstructionGraphTriple, type metadata accessor for ConstructionGraphTriple);
        v49 = v72;
      }

      else
      {
        v48 = 0.0;
        v49 = v72;
        v47 = v67;
      }

      v50 = v70;
      v51 = v64;
      v76 = type metadata accessor for DocumentMatcher();
      v52 = *(v47 + *(v76 + 32));
      if (v48 <= v52)
      {
        sub_1C4EFF008();
        sub_1C4420C3C(v40, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C440BAA8(v51, 0, 1, v35);
        sub_1C44DDDBC(v51, v40);
        v48 = v52;
      }

      v53 = v65;
      sub_1C445FFF0(v40, v65, &unk_1EC0BA0E0, &qword_1C4F105A0);
      v54 = sub_1C44157D4(v53, 1, v35);
      v55 = v73;
      v75 = v40;
      if (v54 == 1)
      {
        sub_1C4420C3C(v53, &unk_1EC0BA0E0, &qword_1C4F105A0);
        result = sub_1C4F024A8();
        __break(1u);
      }

      else
      {
        (*(v73 + 32))(v50, v53, v35);
        _s24IntelligencePlatformCore15DocumentMatcherV11entityClass0aB006EntityG0Vvg_0();
        v56 = type metadata accessor for EntityMatch(0);
        v57 = *(v55 + 16);
        v58 = v77;
        v57(v49 + v56[5], v77, v35);
        v57(v49 + v56[6], v50, v35);
        v59 = v68;
        sub_1C4EF9C88();
        sub_1C4EF9AD8();
        v61 = v60;
        (*(v69 + 8))(v59, v71);
        (*(v55 + 8))(v50, v35);
        sub_1C44DBD04(v58, type metadata accessor for EntityTriple);
        result = sub_1C4420C3C(v75, &unk_1EC0BA0E0, &qword_1C4F105A0);
        v62 = *(v67 + *(v76 + 28));
        *(v49 + v56[7]) = v48;
        *(v49 + v56[8]) = v61;
        *(v49 + v56[9]) = v62;
        *(v49 + v56[10]) = 0;
      }
    }
  }

  return result;
}

uint64_t DocumentMatcher.execute()()
{
  v1[3] = v0;
  v2 = sub_1C4EFD548();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v5 = *(*(sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C46CDEA8, 0, 0);
}

uint64_t sub_1C46CDEA8()
{
  v74 = v0;
  v1 = v0[10];
  v3 = v0[3];
  v2 = v0[4];
  v4 = type metadata accessor for DocumentMatcher();
  v5 = v3 + v4[6];
  v6 = *(v5 + *(type metadata accessor for PhaseStores() + 24));
  v7 = v4[7];
  LOBYTE(v73[0]) = *(v3 + v7);
  _s24IntelligencePlatformCore15DocumentMatcherV11entityClass0aB006EntityG0Vvg_0();
  sub_1C43FBD94();
  sub_1C440BAA8(v8, v9, v10, v2);
  sub_1C44ABA54(v73, v1);
  sub_1C4420C3C(v1, &qword_1EC0B8568, &unk_1C4F319B0);
  switch(*(v3 + v7))
  {
    case 1:
    case 3:
      v11 = v0[9];
      v13 = v0[4];
      v12 = v0[5];
      v14 = v0[3];
      _s24IntelligencePlatformCore15DocumentMatcherV11entityClass0aB006EntityG0Vvg_0();
      v15 = *(v3 + v7);
      v71 = v3;
      *(swift_task_alloc() + 16) = v14;
      sub_1C4411AB8();
      sub_1C44AC19C(v16, v17, v18, v19, v20, v21, v22);
      v23 = v7;
      v24 = *(v12 + 8);
      v24(v11, v13);

      v70 = v23;
      v25 = v0[3];
      v26 = v25 + v4[5];
      if (*(v26 + *(type metadata accessor for Source() + 28)) != 1)
      {
        goto LABEL_8;
      }

      v27 = v0[8];
      v28 = v0[4];
      _s24IntelligencePlatformCore15DocumentMatcherV11entityClass0aB006EntityG0Vvg_0();
      v29 = *(v71 + v70);
      v30 = swift_task_alloc();
      *(v30 + 16) = v25;
      sub_1C44AC19C(v27, v29, 0, 1, sub_1C46CE5B0, v30, sub_1C44C6BE0);
      v31 = sub_1C43FD2BC();
      (v24)(v31);
      goto LABEL_7;
    case 2:
      v34 = v0[7];
      v35 = v0[5];
      v72 = v0[4];
      v36 = v0[3];
      _s24IntelligencePlatformCore15DocumentMatcherV11entityClass0aB006EntityG0Vvg_0();
      v37 = *(v3 + v7);
      *(swift_task_alloc() + 16) = v36;
      sub_1C4411AB8();
      sub_1C44AC19C(v38, v39, v40, v41, v42, v43, v44);
      v45 = *(v35 + 8);
      v45(v34, v72);

      v70 = v7;
      v71 = v3;
      v46 = v0[3];
      v47 = v46 + v4[5];
      if (*(v47 + *(type metadata accessor for Source() + 28)) == 1)
      {
        v48 = v0[6];
        v49 = v0[4];
        _s24IntelligencePlatformCore15DocumentMatcherV11entityClass0aB006EntityG0Vvg_0();
        v50 = *(v3 + v70);
        *(swift_task_alloc() + 16) = v46;
        sub_1C4411AB8();
        sub_1C44AC19C(v51, v52, v53, v54, v55, v56, v57);
        v58 = sub_1C43FD2BC();
        (v45)(v58);
LABEL_7:
      }

LABEL_8:
      v60 = v0[9];
      v59 = v0[10];
      v62 = v0[7];
      v61 = v0[8];
      v63 = v0[6];
      v64 = v0[3];
      v65 = v0[4];
      sub_1C4EF9AE8();
      sub_1C43FBD94();
      sub_1C4642798();
      LOBYTE(v73[0]) = *(v71 + v70);
      _s24IntelligencePlatformCore15DocumentMatcherV11entityClass0aB006EntityG0Vvg_0();
      sub_1C43FBD94();
      sub_1C440BAA8(v66, v67, v68, v65);
      sub_1C44A8814(v73, v59);
      sub_1C4420C3C(v59, &qword_1EC0B8568, &unk_1C4F319B0);

      v69 = v0[1];

      result = v69();
      break;
    default:
      v73[0] = 0;
      v73[1] = 0xE000000000000000;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0x676E6974726F6241, 0xE900000000000020);
      v0[2] = v4;
      sub_1C456902C(&qword_1EC0BA550, &qword_1C4F14280);
      v32 = sub_1C4F01198();
      MEMORY[0x1C6940010](v32);

      MEMORY[0x1C6940010](0xD000000000000019, 0x80000001C4F8EC80);
      sub_1C448D934(*(v3 + v7));
      result = sub_1C4F024A8();
      break;
  }

  return result;
}

uint64_t sub_1C46CE434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5();
  if (!v5)
  {
    type metadata accessor for EntityMatch(0);
    sub_1C43FBD94();
    return sub_1C440BAA8(v7, v8, v9, v10);
  }

  return result;
}

uint64_t sub_1C46CE4C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return DocumentMatcher.execute()();
}

uint64_t sub_1C46CE5E0(uint64_t a1)
{
  result = sub_1C44AC538(&qword_1EC0BB390, type metadata accessor for DocumentMatcher);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C46CE638(uint64_t a1)
{
  result = sub_1C44AC538(&qword_1EC0BB398, type metadata accessor for DocumentMatcher);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C46CE6B8()
{
  result = type metadata accessor for Configuration();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Source();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for PhaseStores();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C46CE7B0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C456902C(&unk_1EC0BABB0, &qword_1C4F16ED0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v96 - v7;
  v9 = sub_1C4EF98F8();
  v97 = *(v9 - 8);
  v10 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = 0;
  v107 = 0xE000000000000000;
  v13 = *(a2 + 8);
  v14 = sub_1C43FFE3C();
  v102 = v16;
  v103 = v15;
  v17 = v16(v14);
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0xE000000000000000;
  }

  MEMORY[0x1C6940010](v17, v19);

  v20 = *(a2 + 16);
  v21 = sub_1C43FFE3C();
  v98 = v23;
  v99 = v22;
  v24 = (v23)(v21);
  if (v25)
  {
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0xE000000000000000;
  }

  MEMORY[0x1C6940010](v24, v26);

  v27 = *(a2 + 24);
  v105 = v2;
  v108 = a1;
  v28 = sub_1C43FFE3C();
  v100 = v30;
  v101 = v29;
  v31 = v30(v28);
  if (v32)
  {
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = 0xE000000000000000;
  }

  MEMORY[0x1C6940010](v31, v33);

  if (qword_1EDDF7948 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for SourceIdPrefix();
  sub_1C442B738(v34, &qword_1EDE2D6B0);
  String.base64EncodedSHA(withPrefix:)();

  v35 = type metadata accessor for EKEventStructs.Person(0);
  sub_1C44099C4(v35);
  v36 = v104;
  sub_1C4D89790();
  v38 = v37;
  if (!v36)
  {
    (*(a2 + 32))(v108, a2);
    if (sub_1C44157D4(v8, 1, v9) == 1)
    {
      sub_1C46CF3CC(v8);
    }

    else
    {
      v39 = v97;
      (*(v97 + 32))(v12, v8, v9);
      v40 = sub_1C4EF9818();
      v42 = v41;
      (*(v39 + 8))(v12, v9);
      v43 = (v38 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_url);
      v44 = *(v38 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_url + 8);
      *v43 = v40;
      v43[1] = v42;
    }

    v106 = MEMORY[0x1E69E7CC0];
    v45 = sub_1C442C7B8();
    v46 = v102(v45);
    if (v47)
    {
      v48 = v46;
      v49 = v47;
      v50 = [objc_allocWithZone(MEMORY[0x1E6996728]) init];
      v51 = sub_1C4F01108();
      v52 = [v50 typeOfHandleString_];

      if (v52 == 1)
      {
        v53 = type metadata accessor for EKEventStructs.AddressRelationshipType(0);
        sub_1C44099C4(v53);
        v54 = (sub_1C4D888FC() + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs23AddressRelationshipType_emailAddress);
        v55 = v54[1];
        *v54 = v48;
        v54[1] = v49;

        MEMORY[0x1C6940330](v56);
        sub_1C4400148();
        if (v57)
        {
          sub_1C440A93C();
        }

        sub_1C4F01748();
      }

      else
      {
        v58 = (v38 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_name);
        v59 = *(v38 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_name + 8);
        *v58 = v48;
        v58[1] = v49;
      }
    }

    v60 = *(a2 + 40);
    v61 = sub_1C43FFE3C();
    if (v60(v61))
    {
      v62 = sub_1C43FFE3C();
      v63 = v60(v62);
      v64 = (v63 & 1) == 0;
      v65 = 1702195828;
      if ((v63 & 1) == 0)
      {
        v65 = 0x65736C6166;
      }

      v66 = 0xE500000000000000;
      v67 = (v38 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_isCurrentUser);
      v68 = *(v38 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_isCurrentUser + 8);
      if (!v64)
      {
        v66 = 0xE400000000000000;
      }

      *v67 = v65;
      v67[1] = v66;
    }

    v69 = sub_1C43FFE3C();
    v98(v69);
    if (!v70)
    {
      goto LABEL_42;
    }

    v71 = [objc_allocWithZone(MEMORY[0x1E6996728]) init];
    v72 = sub_1C4F01108();
    v73 = [v71 typeOfHandleString_];

    if (v73 != 1)
    {
      goto LABEL_50;
    }

    v74 = String.normalizedContactHandle()();

    if (!v74.value._object)
    {
LABEL_42:
      v84 = type metadata accessor for EKEventStructs.AddressRelationshipType(0);
      sub_1C44099C4(v84);
      v85 = sub_1C4D888FC();
      v86 = sub_1C442C7B8();
      countAndFlagsBits = v100(v86);
      if (v88)
      {
        v89 = String.normalizedContactHandle()();
        countAndFlagsBits = v89.value._countAndFlagsBits;
        object = v89.value._object;
      }

      else
      {
        object = 0;
      }

      v91 = (v85 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs23AddressRelationshipType_phoneNumber);
      v92 = *(v85 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs23AddressRelationshipType_phoneNumber + 8);
      *v91 = countAndFlagsBits;
      v91[1] = object;

      MEMORY[0x1C6940330](v93);
      if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C4F016D8();
      }

      sub_1C4F01748();
      v94 = *(v38 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_hasContactInformation);
      *(v38 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_hasContactInformation) = v106;

      sub_1C4D88F48();

      return v38;
    }

    v75 = sub_1C442C7B8();
    v76 = v102(v75);
    if (v77)
    {
      if (v74.value._countAndFlagsBits == v76 && v74.value._object == v77)
      {

LABEL_50:

        goto LABEL_42;
      }

      v79 = sub_1C4F02938();

      if (v79)
      {
        goto LABEL_50;
      }
    }

    v80 = type metadata accessor for EKEventStructs.AddressRelationshipType(0);
    sub_1C44099C4(v80);
    v81 = (sub_1C4D888FC() + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs23AddressRelationshipType_emailAddress);
    v82 = v81->value._object;
    *v81 = v74;

    MEMORY[0x1C6940330](v83);
    sub_1C4400148();
    if (v57)
    {
      sub_1C440A93C();
    }

    sub_1C4F01748();
    goto LABEL_42;
  }

  return v38;
}

uint64_t sub_1C46CEEB0()
{
  result = sub_1C4F024A8();
  __break(1u);
  return result;
}

uint64_t sub_1C46CEF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(a4 + 24))(a3, a4);
  if (v7)
  {
    v8 = v7;
    v9 = [v7 fullTitleAndAddressString];

    if (v9)
    {
      v10 = sub_1C4F01138();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0xE000000000000000;
    }
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  v51 = a2;
  if (!v13)
  {

    v14 = *(a4 + 8);
    v15 = sub_1C4406A84();
    v17 = v16(v15);
    if (v18)
    {
      v10 = v17;
    }

    else
    {
      v10 = 0;
    }

    if (v18)
    {
      v12 = v18;
    }

    else
    {
      v12 = 0xE000000000000000;
    }
  }

  MEMORY[0x1C6940010](v10, v12);
  MEMORY[0x1C6940010](10272, 0xE200000000000000);
  v19 = *(a4 + 16);
  v20 = sub_1C4406A84();
  v21 = v19(v20);
  if (v21)
  {
    v22 = v21;
    [v21 coordinate];
  }

  sub_1C4F01A28();
  MEMORY[0x1C6940010](32, 0xE100000000000000);
  v23 = sub_1C4406A84();
  v24 = v19(v23);
  if (v24)
  {
    v25 = v24;
    [v24 coordinate];
  }

  sub_1C4F01A28();
  MEMORY[0x1C6940010](41, 0xE100000000000000);
  if (qword_1EDDF7930 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for SourceIdPrefix();
  sub_1C442B738(v26, qword_1EDE2D680);
  String.base64EncodedSHA(withPrefix:)();

  v27 = type metadata accessor for EKEventStructs.Place(0);
  sub_1C44099C4(v27);
  sub_1C4D8FBD0();
  v29 = v28;
  if (v52)
  {
  }

  else
  {
    v30 = (v28 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs5Place_name);
    v31 = *(v28 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs5Place_name + 8);
    *v30 = v10;
    v30[1] = v12;

    v32 = type metadata accessor for EKEventStructs.LocationRelationshipType(0);
    sub_1C44099C4(v32);
    sub_1C4D925B8();
    v33 = (v19)(a3, a4);
    if (v33)
    {
      v34 = v33;
      [v33 coordinate];
      if ((v35 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        [v34 coordinate];
        v36 = sub_1C4F019E8();
        sub_1C4411AC8(v36, v37, OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs24LocationRelationshipType_latitude);
      }

      [v34 coordinate];
      if ((v38 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        [v34 coordinate];
        v39 = sub_1C4F019E8();
        sub_1C4411AC8(v39, v40, OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs24LocationRelationshipType_longitude);
      }

      sub_1C4D87F48(v41);
    }

    if (v51)
    {
      v42 = type metadata accessor for EKEventStructs.IdentifierRelationshipType(0);
      sub_1C44099C4(v42);
      v43 = v29;
      v44 = sub_1C4D8E478();
      v45 = (v44 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_identifierId);
      v46 = *(v44 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_identifierId + 8);
      *v45 = a1;
      v45[1] = v51;

      v47 = *(v44 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_identifierType + 8);
      *(v44 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_identifierType) = xmmword_1C4F1F440;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      sub_1C4D87F70(v48);
      v29 = v43;
    }
  }

  return v29;
}

uint64_t sub_1C46CF3CC(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0BABB0, &qword_1C4F16ED0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for EKEventSourceIngestor()
{
  result = qword_1EDDE3CF8;
  if (!qword_1EDDE3CF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C46CF4A8()
{
  type metadata accessor for PhaseStores();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Source();
    if (v1 <= 0x3F)
    {
      sub_1C46CF54C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C46CF54C()
{
  if (!qword_1EDDDBAE8)
  {
    sub_1C4461BB8(255, &qword_1EDDF0570, 0x1E69A2208);
    v0 = sub_1C4F01F48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDDBAE8);
    }
  }
}

uint64_t sub_1C46CF5B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = sub_1C47A2E0C(v5);
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = v9;
  v12 = v10;
  v13 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v13 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {

LABEL_10:
    sub_1C465B58C();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();
    return a3;
  }

  v38 = a2;
  if (qword_1EDDFBC98 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for SourceIdPrefix();
  sub_1C442B738(v14, qword_1EDE2DD40);
  String.base64EncodedSHA(withPrefix:)();
  v15 = type metadata accessor for EKEventStructs.CalendarEvent(0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4D95A40();
  if (v4)
  {
  }

  else
  {
    v32 = a3;
    v20 = v18;
    v21 = objc_autoreleasePoolPush();
    sub_1C46CF8B4(v20, v5, v11, v12);
    objc_autoreleasePoolPop(v21);

    sub_1C4784C34(&v33);
    if (v34)
    {
      sub_1C441D670(&v33, v35);
      v23 = type metadata accessor for EKEventStructs.LocationRelationshipType(0);
      v24 = *(v23 + 48);
      v25 = *(v23 + 52);
      swift_allocObject();
      sub_1C4D925B8();
      v26 = v36;
      v27 = v37;
      sub_1C4409678(v35, v36);
      v28 = sub_1C46CEF9C(a1, v38, v26, v27);
      v29 = v32;
      sub_1C4D8733C(v28);

      sub_1C4D87364(v30);

      sub_1C440962C(v35);
    }

    else
    {
      sub_1C4420C3C(&v33, &qword_1EC0BB3B8, &unk_1C4F1F510);
      v29 = v32;
    }

    LOBYTE(v35[0]) = v29;
    sub_1C4D8738C();
    a3 = v31;
  }

  return a3;
}

void sub_1C46CF8B4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v226 = a4;
  v225 = a3;
  v7 = sub_1C4EF98F8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v240 = &v219 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = sub_1C4EF9F88();
  v232 = *(v234 - 8);
  v11 = *(v232 + 64);
  MEMORY[0x1EEE9AC00](v234);
  v231 = &v219 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v229 = &v219 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v228 = &v219 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v227 = &v219 - v19;
  v20 = sub_1C4EF9CD8();
  v233 = *(v20 - 8);
  v21 = *(v233 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v224 = &v219 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v223 = &v219 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v222 = &v219 - v26;
  v27 = sub_1C456902C(&unk_1EC0BABB0, &qword_1C4F16ED0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v219 - v29;
  v31 = sub_1C45B1F9C(a2, &selRef_title);
  v32 = (a1 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_name);
  v33 = *(a1 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_name + 8);
  *v32 = v31;
  v32[1] = v34;

  v35 = [a2 isAllDay];
  v36 = 48;
  if (v35)
  {
    v36 = 49;
  }

  v37 = (a1 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_isAllDay);
  v38 = *(a1 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_isAllDay + 8);
  *v37 = v36;
  v37[1] = 0xE100000000000000;

  sub_1C46D3484(v30);
  if (sub_1C44157D4(v30, 1, v7) == 1)
  {
    sub_1C4420C3C(v30, &unk_1EC0BABB0, &qword_1C4F16ED0);
    v39 = 0;
    v40 = 0;
  }

  else
  {
    v39 = sub_1C4EF9818();
    v40 = v41;
    (*(v8 + 8))(v30, v7);
  }

  v42 = (a1 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_url);
  v43 = *(a1 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_url + 8);
  *v42 = v39;
  v42[1] = v40;

  v44 = [a2 virtualConference];
  v235 = a1;
  v236 = v4;
  v230 = v20;
  if (v44)
  {
    v45 = v44;
    v46 = [v44 joinMethods];
    sub_1C4461BB8(0, &qword_1EC0BB3D8, 0x1E6966B40);
    v47 = sub_1C4F01678();

    v48 = v47;
    v49 = sub_1C4428DA0();
    if (v49)
    {
      *&v245 = MEMORY[0x1E69E7CC0];
      v239 = v49;
      sub_1C44CD9C0();
      if (v239 < 0)
      {
        __break(1u);
        return;
      }

      v220 = v45;
      v238 = v7;
      v221 = a2;
      v50 = v8;
      v51 = 0;
      v52 = v245;
      v237 = v47 & 0xC000000000000001;
      v53 = (v50 + 8);
      v54 = v47;
      do
      {
        if (v237)
        {
          v55 = MEMORY[0x1C6940F90](v51, v48);
        }

        else
        {
          v55 = *(v48 + 8 * v51 + 32);
        }

        v56 = v55;
        v57 = [v55 URL];
        v58 = v240;
        sub_1C4EF98C8();

        v59 = sub_1C4EF9818();
        v61 = v60;

        (*v53)(v58, v238);
        *&v245 = v52;
        v62 = *(v52 + 16);
        if (v62 >= *(v52 + 24) >> 1)
        {
          sub_1C44CD9C0();
          v52 = v245;
        }

        ++v51;
        *(v52 + 16) = v62 + 1;
        v63 = v52 + 16 * v62;
        *(v63 + 32) = v59;
        *(v63 + 40) = v61;
        v48 = v54;
      }

      while (v239 != v51);

      a1 = v235;
      a2 = v221;
    }

    else
    {

      v52 = MEMORY[0x1E69E7CC0];
    }

    v64 = *(a1 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_virtualConferenceURL);
    *(a1 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_virtualConferenceURL) = v52;
  }

  v65 = 0xD000000000000013;
  v66 = type metadata accessor for EKEventStructs.IdentifierRelationshipType(0);
  v67 = *(v66 + 12);
  v68 = *(v66 + 26);
  swift_allocObject();
  v69 = sub_1C4D8E478();
  v70 = &OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_identifierType;
  v71 = (v69 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_identifierType);
  v72 = *(v69 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_identifierType + 8);
  *v71 = 0xD000000000000018;
  v71[1] = 0x80000001C4F92600;

  v73 = [a2 calendarItemIdentifier];
  v74 = sub_1C4F01138();
  v76 = v75;

  v77 = a2;
  v78 = &OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_identifierId;
  v79 = (v69 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_identifierId);
  v80 = *(v69 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_identifierId + 8);
  *v79 = v74;
  v79[1] = v76;

  v81 = *(v66 + 12);
  v82 = *(v66 + 26);
  swift_allocObject();
  v83 = sub_1C4D8E478();
  v84 = *(v83 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_identifierType + 8);
  *(v83 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_identifierType) = xmmword_1C4F1F450;

  v85 = (v83 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_identifierId);
  v86 = *(v83 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_identifierId + 8);
  v87 = v226;
  *v85 = v225;
  v85[1] = v87;

  sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_1C4F10430;
  *(v88 + 32) = v69;
  *(v88 + 40) = v83;
  v248 = v88;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v239 = v69;

  v238 = v83;

  v89 = v77;
  v90 = sub_1C45B1F9C(v77, &selRef_calendarItemExternalIdentifier);
  if (v91)
  {
    v92 = v90;
    v93 = v91;
    v94 = *(v66 + 12);
    v95 = *(v66 + 26);
    swift_allocObject();
    v96 = sub_1C4D8E478();
    v97 = (v96 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_identifierType);
    v98 = *(v96 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_identifierType + 8);
    *v97 = 0xD00000000000001CLL;
    v97[1] = 0x80000001C4F92640;

    v99 = (v96 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_identifierId);
    v100 = *(v96 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_identifierId + 8);
    *v99 = v92;
    v99[1] = v93;

    MEMORY[0x1C6940330](v101);
    if (*((v248 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v248 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_69:
      sub_1C4F016D8();
    }

    sub_1C4F01748();
    v88 = v248;
  }

  v102 = sub_1C47A2E18(v89);
  if (v103)
  {
    v104 = v102;
    v105 = v103;
    v106 = *(v66 + 12);
    v107 = *(v66 + 26);
    swift_allocObject();
    v108 = sub_1C4D8E478();
    v109 = (v108 + *v70);
    v110 = v109[1];
    *v109 = v65;
    v109[1] = 0x80000001C4F92620;

    v111 = (v108 + *v78);
    v112 = v111[1];
    *v111 = v104;
    v111[1] = v105;

    MEMORY[0x1C6940330](v113);
    if (*((v248 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v248 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C4F016D8();
    }

    sub_1C4F01748();
    v88 = v248;
  }

  v114 = *(v235 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_identifier);
  *(v235 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_identifier) = v88;

  sub_1C4D95748();
  v115 = type metadata accessor for EKEventStructs.DateRelationshipType(0);
  v116 = *(v115 + 48);
  v117 = *(v115 + 52);
  swift_allocObject();
  v118 = sub_1C4D94D34();
  v119 = v227;
  sub_1C478503C();
  v120 = v230;
  v121 = sub_1C44157D4(v119, 1, v230);
  v240 = v118;
  if (v121 == 1)
  {
    sub_1C4420C3C(v119, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v123 = v231;
    v122 = v232;
  }

  else
  {
    v124 = v233;
    v125 = v222;
    (*(v233 + 32))(v222, v119, v120);
    v126 = [v89 isAllDay];
    v123 = v231;
    sub_1C4EF9F58();
    v127 = Date.dateComponentsJSONString(isAllDay:calendar:)(v126);
    v129 = v128;
    v122 = v232;
    (*(v232 + 8))(v123, v234);
    v130 = (v118 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_startTime);
    v131 = *(v118 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_startTime + 8);
    *v130 = v127;
    v130[1] = v129;

    sub_1C4EF9AD8();
    v132 = sub_1C4F019E8();
    v134 = v133;
    (*(v124 + 8))(v125, v120);
    v135 = (v118 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_imputedStartTime);
    v136 = *(v118 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_imputedStartTime + 8);
    *v135 = v132;
    v135[1] = v134;
  }

  v137 = v228;
  sub_1C4785070();
  if (sub_1C44157D4(v137, 1, v120) == 1)
  {
    sub_1C4420C3C(v137, &unk_1EC0B84E0, qword_1C4F0D2D0);
  }

  else
  {
    v138 = v233;
    v139 = v223;
    (*(v233 + 32))(v223, v137, v120);
    v140 = [v89 isAllDay];
    sub_1C4EF9F58();
    v141 = Date.dateComponentsJSONString(isAllDay:calendar:)(v140);
    v143 = v142;
    (*(v122 + 8))(v123, v234);
    v144 = v240;
    v145 = &v240[OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_endTime];
    v146 = *&v240[OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_endTime + 8];
    *v145 = v141;
    v145[1] = v143;

    sub_1C4EF9AD8();
    v147 = sub_1C4F019E8();
    v149 = v148;
    (*(v138 + 8))(v139, v120);
    v150 = &v144[OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_imputedEndTime];
    v151 = *&v144[OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_imputedEndTime + 8];
    *v150 = v147;
    v150[1] = v149;
  }

  v152 = v229;
  v66 = v235;
  sub_1C47850A4();
  if (sub_1C44157D4(v152, 1, v120) == 1)
  {
    sub_1C4420C3C(v152, &unk_1EC0B84E0, qword_1C4F0D2D0);
  }

  else
  {
    v153 = v233;
    v154 = v224;
    (*(v233 + 32))(v224, v152, v120);
    v155 = [v89 isAllDay];
    sub_1C4EF9F58();
    v156 = Date.dateComponentsJSONString(isAllDay:calendar:)(v155);
    v158 = v157;
    (*(v122 + 8))(v123, v234);
    v159 = v240;
    v160 = &v240[OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_occurrenceDate];
    v161 = *&v240[OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_occurrenceDate + 8];
    *v160 = v156;
    v160[1] = v158;

    sub_1C4EF9AD8();
    v162 = sub_1C4F019E8();
    v164 = v163;
    (*(v153 + 8))(v154, v120);
    v165 = &v159[OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_imputedOccurrenceDate];
    v166 = *&v159[OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_imputedOccurrenceDate + 8];
    *v165 = v162;
    v165[1] = v164;
  }

  v167 = v236;

  sub_1C4D8724C(v168);
  sub_1C4784FC8(&v242);
  if (v243)
  {
    sub_1C441D670(&v242, &v245);
    v169 = v246;
    v170 = v247;
    sub_1C4409678(&v245, v246);
    if ((v170[6])(v169, v170) == 1 || (v171 = v246, v172 = v247, sub_1C4409678(&v245, v246), !(v172[6])(v171, v172)))
    {
      v173 = type metadata accessor for EKEventStructs.ParticipationRelationshipType(0);
      v174 = *(v173 + 48);
      v175 = *(v173 + 52);
      swift_allocObject();
      v176 = sub_1C4D8CE64();
      v177 = v246;
      v178 = v247;
      sub_1C4409678(&v245, v246);
      v179 = sub_1C46CE7B0(v177, v178);
      if (v167)
      {

        sub_1C440962C(&v245);
        return;
      }

      sub_1C4D87274(v179);
      v180 = v246;
      v181 = v247;
      sub_1C4409678(&v245, v246);
      (v181[6])(v180, v181);
      v182 = sub_1C46CEEB0();
      v183 = (v176 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs29ParticipationRelationshipType_eventParticipantType);
      v184 = *(v176 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs29ParticipationRelationshipType_eventParticipantType + 8);
      *v183 = v182;
      v183[1] = v185;

      sub_1C4D87314(v186);
    }

    sub_1C440962C(&v245);
  }

  else
  {
    sub_1C4420C3C(&v242, &qword_1EC0BB3D0, &unk_1C4F1F530);
  }

  v187 = sub_1C4784F80();
  if (v187)
  {
    v89 = v187;
    v236 = v167;
    v78 = 0;
    v65 = *(v187 + 16);
    v70 = (v187 + 32);
    v188 = MEMORY[0x1E69E7CC0];
    while (v65 != v78)
    {
      if (v78 >= v89[2])
      {
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      sub_1C442E860(v70, &v245);
      v189 = v246;
      v190 = v247;
      sub_1C4409678(&v245, v246);
      if ((v190[6])(v189, v190) == 1 || (v191 = v246, v192 = v247, sub_1C4409678(&v245, v246), !(v192[6])(v191, v192)))
      {
        sub_1C441D670(&v245, &v242);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v241 = v188;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v194 = *(v188 + 16);
          sub_1C459DF08();
          v188 = v241;
        }

        v195 = *(v188 + 16);
        if (v195 >= *(v188 + 24) >> 1)
        {
          sub_1C459DF08();
        }

        v196 = v243;
        v197 = v244;
        v198 = sub_1C4418280(&v242, v243);
        v66 = &v219;
        v199 = *(*(v196 - 8) + 64);
        MEMORY[0x1EEE9AC00](v198);
        v201 = &v219 - ((v200 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v202 + 16))(v201);
        sub_1C44FDC24(v195, v201, &v241, v196, v197);
        sub_1C440962C(&v242);
        v188 = v241;
      }

      else
      {
        sub_1C440962C(&v245);
      }

      v70 += 5;
      v78 = (v78 + 1);
    }

    v89 = *(v188 + 16);
    if (v89)
    {
      *&v242 = MEMORY[0x1E69E7CC0];
      sub_1C4F02348();
      v65 = 0;
      v70 = (v188 + 32);
      while (v65 < *(v188 + 16))
      {
        sub_1C442E860(v70, &v245);
        v203 = type metadata accessor for EKEventStructs.ParticipationRelationshipType(0);
        v204 = *(v203 + 48);
        v205 = *(v203 + 52);
        swift_allocObject();
        v206 = sub_1C4D8CE64();
        v207 = v246;
        v208 = v247;
        sub_1C4409678(&v245, v246);
        v209 = v236;
        v210 = sub_1C46CE7B0(v207, v208);
        v236 = v209;
        if (v209)
        {

          sub_1C440962C(&v245);

          return;
        }

        ++v65;
        sub_1C4D87274(v210);
        v211 = v246;
        v78 = v247;
        sub_1C4409678(&v245, v246);
        (v78[6])(v211, v78);
        v212 = sub_1C46CEEB0();
        v213 = (v206 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs29ParticipationRelationshipType_eventParticipantType);
        v214 = *(v206 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs29ParticipationRelationshipType_eventParticipantType + 8);
        *v213 = v212;
        v213[1] = v215;

        sub_1C440962C(&v245);
        sub_1C4F02318();
        v216 = *(v242 + 16);
        sub_1C4F02358();
        sub_1C4F02368();
        sub_1C4F02328();
        v70 += 5;
        if (v89 == v65)
        {

          v217 = v242;
          goto LABEL_64;
        }
      }

      goto LABEL_68;
    }

    v217 = MEMORY[0x1E69E7CC0];
LABEL_64:
    v66 = v235;
  }

  else
  {
    v217 = 0;
  }

  v218 = *(v66 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_hasAttendee);
  *(v66 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_hasAttendee) = v217;

  sub_1C4D9570C();
}

uint64_t sub_1C46D0AF4()
{
  sub_1C43FBCD4();
  v1[29] = v0;
  v2 = *(*(sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0) - 8) + 64) + 15;
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v3 = type metadata accessor for EKEventSourceIngestor();
  v1[32] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v5 = sub_1C4EF9CD8();
  v1[35] = v5;
  v6 = *(v5 - 8);
  v1[36] = v6;
  v7 = *(v6 + 64) + 15;
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C46D0C3C, 0, 0);
}

uint64_t sub_1C46D0C3C()
{
  v109 = v0;
  v1 = sub_1C4F01108();
  v2 = sub_1C44C1028(v1);

  if (!v2)
  {
    if (qword_1EDDFD028 != -1)
    {
      goto LABEL_57;
    }

    goto LABEL_35;
  }

  v3 = [objc_allocWithZone(MEMORY[0x1E6966A18]) initWithEKOptions_];
  *(v0 + 312) = v3;
  if (!v3)
  {
    v56 = *(v0 + 232);
    goto LABEL_39;
  }

  v4 = v3;
  v5 = v0 + 184;
  v6 = (v0 + 192);
  v7 = *(v0 + 296);
  v8 = *(v0 + 304);
  v9 = *(v0 + 256);
  v10 = *(v0 + 232);
  *(v0 + 184) = 0;
  *(v0 + 192) = 0;
  sub_1C4EF9C38();
  sub_1C4EF9C38();
  v11 = sub_1C4EF9BF8();
  v12 = sub_1C4EF9BF8();
  v13 = [v4 predicateForEventsWithStartDate:v11 endDate:v12 calendars:0];
  *(v0 + 320) = v13;

  v14 = [v4 eventsMatchingPredicate_];
  sub_1C4461BB8(0, &unk_1EDDF0390, 0x1E6966A08);
  *(v0 + 328) = sub_1C4F01678();

  v15 = sub_1C4F00F28();
  *(v0 + 200) = v15;
  v16 = *(v10 + *(v9 + 28));
  *(v0 + 336) = v16;
  v105 = (v0 + 184);
  if (!v16)
  {
    goto LABEL_42;
  }

  v17 = v15;
  v18 = sub_1C4428DA0();
  *(v0 + 344) = v18;
  v19 = v16;
  v20 = 0;
  v21 = &off_1E81F1000;
  v22 = &off_1E81F1000;
  v23 = v17;
  v107 = v17;
  while (1)
  {
    *(v0 + 352) = 0;
    *(v0 + 360) = v23;
    if (v20 == v18)
    {

      v5 = v0 + 184;
      v6 = (v0 + 192);
LABEL_42:
      v58 = *(v0 + 328);
      v59 = *(v0 + 232);
      *(v0 + 432) = 0;
      v60 = *&v59[*(type metadata accessor for PhaseStores() + 24)];
      v61 = swift_task_alloc();
      *(v61 + 16) = v58;
      *(v61 + 24) = v59;
      *(v61 + 32) = v5;
      *(v61 + 40) = v0 + 200;
      *(v61 + 48) = v6;
      *(v61 + 56) = v0 + 432;
      v62 = sub_1C442C7C8();
      GraphStore.tripleInsertingTransaction(transactionBody:)(v62, v63);
      v64 = v6;
      v66 = *(v0 + 320);
      v65 = *(v0 + 328);
      sub_1C43FEE1C();

      sub_1C4EF9AE8();
      sub_1C43FBD94();
      sub_1C4643FF4();

      v85 = sub_1C4412F58();
      (v61)(v85);
      v86 = sub_1C442FBC8();
      (v61)(v86);
      v87 = *(v0 + 200);

      sub_1C46D284C(v60, v64, v105);

      goto LABEL_40;
    }

    v24 = *(v0 + 328);
    if ((v24 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x1C6940F90](v20);
    }

    else
    {
      sub_1C43FC1D8(v19, v24);
      if (v26)
      {
        goto LABEL_56;
      }

      v27 = *(v25 + 8 * v20 + 32);
    }

    v28 = v27;
    *(v0 + 368) = v27;
    *(v0 + 376) = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      sub_1C43FE9B4();
LABEL_35:
      v51 = sub_1C4F00978();
      sub_1C442B738(v51, qword_1EDE2DE10);
      v52 = sub_1C4F00968();
      v53 = sub_1C4F01CF8();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_1C43F8000, v52, v53, "Siri Toggle: Pipeline is blocked from sourcing EKEvent", v54, 2u);
        sub_1C43FBE2C();
      }

      v55 = *(v0 + 232);

LABEL_39:
      sub_1C4EF9AE8();
      sub_1C43FBD94();
      sub_1C4643FF4();
LABEL_40:
      sub_1C442DE64();

      sub_1C43FBDA0();
LABEL_49:

      return v57();
    }

    if (sub_1C4F01948())
    {
      if (qword_1EDDFD028 != -1)
      {
        sub_1C43FE9B4();
      }

      v67 = sub_1C4404230();
      sub_1C442B738(v67, qword_1EDE2DE10);
      sub_1C44193D8();
      v68 = sub_1C43FBC98();
      sub_1C46D35C8(v68, v69, v70);
      v71 = sub_1C4F00968();
      v72 = sub_1C4F01CF8();
      v73 = os_log_type_enabled(v71, v72);
      v74 = *(v0 + 272);
      if (v73)
      {
        v75 = *(v0 + 264);
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v108 = v77;
        *v76 = 136315138;
        sub_1C44193D8();
        sub_1C46D35C8(v74, v75, v78);
        sub_1C4417000();
        sub_1C46D3570(v74, v79);
        sub_1C4640CCC();
        v81 = v80;
        v83 = v82;
        sub_1C46D3570(v75, qword_1C4F0D2D0);
        v84 = sub_1C441D828(v81, v83, &v108);

        *(v76 + 4) = v84;
        _os_log_impl(&dword_1C43F8000, v71, v72, "%s going to defer", v76, 0xCu);
        sub_1C440962C(v77);
        sub_1C43FBE2C();
        sub_1C43FBE2C();
      }

      else
      {
        sub_1C4411AE8();
      }

      v89 = *(v0 + 328);
      v88 = *(v0 + 336);
      v90 = *(v0 + 320);
      v91 = *(v0 + 304);
      v104 = *(v0 + 296);
      v93 = *(v0 + 280);
      v92 = *(v0 + 288);
      v106 = *(v0 + 232);
      sub_1C4F01828();
      sub_1C440015C();
      sub_1C46D3528(v94, v95);
      sub_1C440F170();
      sub_1C4F00EA8();
      swift_willThrow();

      v96 = *(v92 + 8);
      v96(v104, v93);
      v96(v91, v93);

      sub_1C46D284C(v106, (v0 + 192), v105);
      sub_1C44088A8();

      sub_1C43FBDA0();
      goto LABEL_49;
    }

    v29 = [v28 v21[334]];
    if (!v29)
    {
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v29);
    }

    v30 = v29;
    v31 = [v29 v22[335]];

    if (v31)
    {
LABEL_19:

      goto LABEL_20;
    }

    v32 = [v28 startDate];
    v33 = *(v0 + 280);
    v34 = *(v0 + 248);
    if (v32)
    {
      v35 = v32;
      v36 = *(v0 + 248);
      sub_1C4EF9C78();

      sub_1C43FD50C();
      v37 = (v0 + 248);
    }

    else
    {
      sub_1C4432138();
      sub_1C4420C3C(v34, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v44 = [v28 endDate];
      v45 = *(v0 + 280);
      v46 = *(v0 + 240);
      if (v44)
      {
        v47 = v44;
        v48 = *(v0 + 240);
        sub_1C4EF9C78();

        sub_1C43FD50C();
        v19 = sub_1C4420C3C(v46, &unk_1EC0B84E0, qword_1C4F0D2D0);
        v23 = v107;
        v21 = &off_1E81F1000;
        goto LABEL_20;
      }

      sub_1C4432138();
      v37 = (v0 + 240);
      v23 = v107;
      v21 = &off_1E81F1000;
    }

    sub_1C4420C3C(*v37, &unk_1EC0B84E0, qword_1C4F0D2D0);
    *(v0 + 384) = sub_1C47A2E0C(v28);
    *(v0 + 392) = v38;
    if (!v38)
    {
      goto LABEL_19;
    }

    sub_1C4784C34((v0 + 144));
    v39 = *(v0 + 168);
    if (!v39)
    {

      v19 = sub_1C4420C3C(v0 + 144, &qword_1EC0BB3B8, &unk_1C4F1F510);
      goto LABEL_20;
    }

    v40 = *(v0 + 176);
    sub_1C4409678((v0 + 144), *(v0 + 168));
    v41 = (*(v40 + 32))(v39, v40);
    v43 = v42;
    *(v0 + 400) = v41;
    *(v0 + 408) = v42;
    sub_1C440962C((v0 + 144));
    if (v43 >> 60 != 15)
    {
      break;
    }

LABEL_32:

    v22 = &off_1E81F1000;
    v23 = v107;
LABEL_20:
    v20 = *(v0 + 376);
    v18 = *(v0 + 344);
  }

  switch(v43 >> 62)
  {
    case 1uLL:
      v49 = v41;
      v50 = v41 >> 32;
      goto LABEL_30;
    case 2uLL:
      v49 = *(v41 + 16);
      v50 = *(v41 + 24);
LABEL_30:
      if (v49 == v50)
      {
        goto LABEL_31;
      }

      goto LABEL_52;
    case 3uLL:
      goto LABEL_31;
    default:
      if ((v43 & 0xFF000000000000) == 0)
      {
LABEL_31:

        sub_1C441DFEC(v41, v43);
        goto LABEL_32;
      }

LABEL_52:
      v98 = *(v0 + 336);
      v99 = sub_1C4EF9A38();
      sub_1C441C938(v99);
      *(v0 + 16) = v100;
      *(v0 + 56) = v0 + 208;
      *(v0 + 24) = sub_1C46D160C;
      v101 = swift_continuation_init();
      v102 = sub_1C456902C(&unk_1EC0BB3C0, &unk_1C4F1F520);
      sub_1C441F7C8(v102);
      *(v0 + 88) = 1107296256;
      sub_1C440A95C();
      *(v0 + 104) = v103;
      *(v0 + 112) = v101;
      [v98 resolveMapItemFromHandle:v43 completionHandler:v0 + 80];
      v29 = (v0 + 16);

      return MEMORY[0x1EEE6DEC8](v29);
  }
}

uint64_t sub_1C46D160C()
{
  sub_1C43FBCD4();
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 424) = v3;
  if (v3)
  {
    v4 = *(v1 + 392);

    v5 = sub_1C46D2078;
  }

  else
  {
    v5 = sub_1C46D1720;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C46D1720()
{
  v136 = v0;
  v3 = v0 + 208;
  v2 = *(v0 + 208);
  v4 = *(v0 + 416);
  if (!v2)
  {
    v19 = *(v0 + 400);
    v20 = *(v0 + 408);
    v21 = *(v0 + 392);

    v22 = sub_1C43FBC98();
    sub_1C441DFEC(v22, v23);

LABEL_11:
    v134 = *(v0 + 360);
LABEL_18:
    v129 = (v3 - 16);
    v125 = v3;
    v126 = v3 - 8;
    v127 = v3 + 224;
    v128 = (v3 - 24);
    v38 = *(v0 + 352);
    v131 = (v3 - 64);
    v39 = &off_1E81F1000;
    v130 = v38;
    while (1)
    {
      while (1)
      {
        v40 = *(v0 + 376);
        *(v0 + 352) = v38;
        *(v0 + 360) = v134;
        if (v40 == *(v0 + 344))
        {

          v64 = *(v0 + 328);
          v65 = *(v0 + 232);
          *(v0 + 432) = 0;
          v66 = *(v65 + *(type metadata accessor for PhaseStores() + 24));
          v67 = swift_task_alloc();
          *(v67 + 16) = v64;
          *(v67 + 24) = v65;
          *(v67 + 32) = v128;
          *(v67 + 40) = v126;
          *(v67 + 48) = v129;
          *(v67 + 56) = v127;
          v68 = sub_1C442C7C8();
          GraphStore.tripleInsertingTransaction(transactionBody:)(v68, v69);
          v71 = *(v0 + 320);
          v70 = *(v0 + 328);
          if (v38)
          {
            sub_1C440D2D4();

            v72 = sub_1C4412F58();
            (v67)(v72);
            v73 = sub_1C442FBC8();
            (v67)(v73);
            v74 = *(v0 + 200);

            v75 = v1;
            v76 = v129;
            v77 = v128;
            goto LABEL_56;
          }

          sub_1C43FEE1C();

          sub_1C4EF9AE8();
          sub_1C43FBD94();
          sub_1C4643FF4();

          v107 = sub_1C4412F58();
          (v67)(v107);
          v108 = sub_1C442FBC8();
          (v67)(v108);
          v109 = *(v0 + 200);

          sub_1C46D284C(v66, v129, v128);

          sub_1C442DE64();

          sub_1C43FBDA0();
LABEL_57:
          sub_1C44149E0();

          __asm { BRAA            X1, X16 }
        }

        v41 = *(v0 + 328);
        if ((v41 & 0xC000000000000001) != 0)
        {
          v44 = MEMORY[0x1C6940F90](v40);
        }

        else
        {
          sub_1C43FC1D8(v24, v41);
          if (v43)
          {
            goto LABEL_65;
          }

          v44 = *(v42 + 8 * v40 + 32);
        }

        v1 = v44;
        *(v0 + 368) = v44;
        *(v0 + 376) = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          sub_1C43FE9B4();
LABEL_52:
          v78 = sub_1C4404230();
          sub_1C442B738(v78, qword_1EDE2DE10);
          sub_1C44193D8();
          v79 = sub_1C43FBC98();
          sub_1C46D35C8(v79, v80, v81);
          v82 = sub_1C4F00968();
          v83 = sub_1C4F01CF8();
          v84 = os_log_type_enabled(v82, v83);
          v85 = *(v0 + 272);
          if (v84)
          {
            v86 = *(v0 + 264);
            v87 = swift_slowAlloc();
            v88 = swift_slowAlloc();
            v135 = v88;
            *v87 = 136315138;
            sub_1C44193D8();
            sub_1C46D35C8(v85, v86, v89);
            sub_1C4417000();
            sub_1C46D3570(v85, v90);
            sub_1C4640CCC();
            v92 = v91;
            v94 = v93;
            sub_1C46D3570(v86, &off_1E81F1000);
            v95 = sub_1C441D828(v92, v94, &v135);

            *(v87 + 4) = v95;
            _os_log_impl(&dword_1C43F8000, v82, v83, "%s going to defer", v87, 0xCu);
            sub_1C440962C(v88);
            sub_1C43FBE2C();
            sub_1C43FBE2C();
          }

          else
          {
            sub_1C4411AE8();
          }

          v96 = *(v0 + 328);
          v97 = *(v0 + 336);
          v98 = *(v0 + 320);
          v132 = *(v0 + 296);
          v133 = *(v0 + 304);
          v100 = *(v0 + 280);
          v99 = *(v0 + 288);
          v101 = *(v0 + 232);
          sub_1C4F01828();
          sub_1C440015C();
          sub_1C46D3528(v102, v103);
          sub_1C440F170();
          sub_1C4F00EA8();
          swift_willThrow();

          v104 = *(v99 + 8);
          v104(v132, v100);
          v104(v133, v100);

          v75 = v101;
          v76 = v129;
          v77 = v128;
LABEL_56:
          sub_1C46D284C(v75, v76, v77);
          sub_1C44088A8();

          sub_1C43FBDA0();
          goto LABEL_57;
        }

        if (sub_1C4F01948())
        {
          if (qword_1EDDFD028 != -1)
          {
            goto LABEL_66;
          }

          goto LABEL_52;
        }

        v45 = [v1 calendar];
        if (!v45)
        {
          goto LABEL_69;
        }

        v46 = v45;
        v47 = [v45 v39[335]];

        if ((v47 & 1) == 0)
        {
          break;
        }
      }

      v48 = [v1 startDate];
      v49 = *(v0 + 280);
      v50 = *(v0 + 248);
      if (v48)
      {
        break;
      }

      sub_1C4432138();
      sub_1C4420C3C(v50, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v59 = [v1 endDate];
      v60 = *(v0 + 280);
      v61 = *(v0 + 240);
      if (v59)
      {
        sub_1C4409B8C();

        sub_1C43FD50C();
        v24 = sub_1C4420C3C(v61, &unk_1EC0B84E0, qword_1C4F0D2D0);
        v39 = &off_1E81F1000;
      }

      else
      {
        sub_1C4432138();
        v51 = (v0 + 240);
LABEL_30:
        sub_1C4420C3C(*v51, &unk_1EC0B84E0, qword_1C4F0D2D0);
        *(v0 + 384) = sub_1C47A2E0C(v1);
        *(v0 + 392) = v52;
        if (!v52)
        {

          goto LABEL_38;
        }

        sub_1C4784C34(v131);
        if (*(v0 + 168))
        {
          v53 = *(v0 + 176);
          sub_1C4409678(v131, *(v0 + 168));
          v54 = sub_1C442BA58();
          v56 = v55(v54);
          v58 = v57;
          *(v0 + 400) = v56;
          *(v0 + 408) = v57;
          sub_1C440962C(v131);
          if (v58 >> 60 == 15)
          {
          }

          else
          {
            switch(v58 >> 62)
            {
              case 1uLL:
                v62 = v56;
                v63 = v56 >> 32;
                goto LABEL_45;
              case 2uLL:
                v62 = *(v56 + 16);
                v63 = *(v56 + 24);
LABEL_45:
                if (v62 == v63)
                {
                  goto LABEL_46;
                }

                goto LABEL_61;
              case 3uLL:
                goto LABEL_46;
              default:
                if ((v58 & 0xFF000000000000) != 0)
                {
LABEL_61:
                  v110 = sub_1C4425A64();
                  v111 = sub_1C441C938(v110);
                  *(v0 + 16) = v112;
                  v120 = sub_1C4402F3C(v111, v113, v114, v115, v116, v117, v118, v119, v124, v125);
                  v121 = sub_1C456902C(&unk_1EC0BB3C0, &unk_1C4F1F520);
                  sub_1C441F7C8(v121);
                  *(v0 + 88) = 1107296256;
                  sub_1C440A95C();
                  *(v0 + 104) = v122;
                  *(v0 + 112) = v120;
                  [&off_1E81F1000 resolveMapItemFromHandle:v58 completionHandler:v38];
                  sub_1C44149E0();

                  return MEMORY[0x1EEE6DEC8]();
                }

LABEL_46:

                sub_1C441DFEC(v56, v58);
                break;
            }
          }

          v38 = v130;
          v39 = &off_1E81F1000;
        }

        else
        {

          v24 = sub_1C4420C3C(v131, &qword_1EC0BB3B8, &unk_1C4F1F510);
LABEL_38:
          v39 = &off_1E81F1000;
        }
      }
    }

    sub_1C4409B8C();

    sub_1C43FD50C();
    v51 = (v0 + 248);
    goto LABEL_30;
  }

  if (([v2 _hasMUID] & 1) == 0)
  {
    v26 = *(v0 + 400);
    v25 = *(v0 + 408);
    v27 = *(v0 + 392);

    swift_unknownObjectRelease();

    v24 = sub_1C441DFEC(v26, v25);
    goto LABEL_11;
  }

  v6 = *(v0 + 384);
  v5 = *(v0 + 392);
  *(v0 + 216) = [v2 _muid];
  v7 = sub_1C4F02858();
  v9 = v8;
  v10 = *(v0 + 200);
  swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 224) = v10;
  v11 = sub_1C445FAA8(v6, v5);
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
  }

  else
  {
    v1 = v11;
    v13 = v12;
    sub_1C456902C(&qword_1EC0BA720, &qword_1C4F23540);
    if (sub_1C4F02458())
    {
      v14 = *(v0 + 224);
      v15 = sub_1C445FAA8(*(v0 + 384), *(v0 + 392));
      if ((v13 & 1) != (v16 & 1))
      {
        sub_1C44149E0();

        return sub_1C4F029F8();
      }

      v1 = v15;
    }

    v134 = *(v0 + 224);
    v28 = *(v0 + 392);
    v3 = v0 + 208;
    if (v13)
    {
      v29 = (v134[7] + 16 * v1);
      v30 = v29[1];
      *v29 = v7;
      v29[1] = v9;

LABEL_17:
      swift_unknownObjectRelease();
      v37 = *(v0 + 368);
      sub_1C441DFEC(*(v0 + 400), *(v0 + 408));

      *(v0 + 200) = v134;
      goto LABEL_18;
    }

    v31 = *(v0 + 384);
    v134[(v1 >> 6) + 8] |= 1 << v1;
    v32 = (v134[6] + 16 * v1);
    *v32 = v31;
    v32[1] = v28;
    v33 = (v134[7] + 16 * v1);
    *v33 = v7;
    v33[1] = v9;
    v34 = v134[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (!v35)
    {
      v134[2] = v36;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_69:
  __break(1u);
  return MEMORY[0x1EEE6DEC8]();
}

uint64_t sub_1C46D2078()
{
  v97 = v0;
  v93 = (v0 + 184);
  v91 = (v0 + 192);
  v2 = *(v0 + 416);
  v1 = *(v0 + 424);
  v4 = *(v0 + 400);
  v3 = *(v0 + 408);
  v5 = *(v0 + 368);
  v6 = *(v0 + 232);
  swift_willThrow();
  sub_1C441DFEC(v4, v3);

  LOBYTE(v96[0]) = 1;
  static Transformers.reportError(error:context:config:pipelineType:)(v1, 0xD00000000000001BLL, 0x80000001C4F925D0, v6, v96);

  v8 = (v0 + 248);
  v9 = *(v0 + 360);
  v10 = &off_1E81F1000;
  v11 = qword_1C4F0D2D0;
  v95 = v9;
  while (1)
  {
    v12 = *(v0 + 376);
    *(v0 + 352) = 0;
    *(v0 + 360) = v9;
    if (v12 == *(v0 + 344))
    {

      v38 = *(v0 + 328);
      v39 = *(v0 + 232);
      *(v0 + 432) = 0;
      v40 = *(v39 + *(type metadata accessor for PhaseStores() + 24));
      v41 = swift_task_alloc();
      *(v41 + 16) = v38;
      *(v41 + 24) = v39;
      *(v41 + 32) = v93;
      *(v41 + 40) = v0 + 200;
      *(v41 + 48) = v91;
      *(v41 + 56) = v0 + 432;
      v42 = sub_1C442C7C8();
      GraphStore.tripleInsertingTransaction(transactionBody:)(v42, v43);
      v45 = *(v0 + 320);
      v44 = *(v0 + 328);
      sub_1C43FEE1C();

      sub_1C4EF9AE8();
      sub_1C43FBD94();
      sub_1C4643FF4();

      v73 = sub_1C4412F58();
      (v41)(v73);
      v74 = sub_1C442FBC8();
      (v41)(v74);
      v75 = *(v0 + 200);

      sub_1C46D284C(v40, v91, v93);

      sub_1C442DE64();

      sub_1C43FBDA0();
      goto LABEL_38;
    }

    v13 = *(v0 + 328);
    if ((v13 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x1C6940F90](v12);
    }

    else
    {
      sub_1C43FC1D8(v7, v13);
      if (v15)
      {
        goto LABEL_45;
      }

      v16 = *(v14 + 8 * v12 + 32);
    }

    v2 = v16;
    *(v0 + 368) = v16;
    *(v0 + 376) = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (sub_1C4F01948())
    {
      if (qword_1EDDFD028 != -1)
      {
        goto LABEL_46;
      }

      goto LABEL_34;
    }

    v17 = [v2 calendar];
    if (!v17)
    {
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v17);
    }

    v18 = v17;
    v19 = [v17 v10[335]];

    if (v19)
    {
LABEL_17:
    }

    else
    {
      v20 = v11;
      v21 = [v2 startDate];
      v22 = *(v0 + 280);
      v23 = *(v0 + 248);
      if (v21)
      {
        sub_1C4409B8C();

        sub_1C43FD50C();
        v24 = v8;
        goto LABEL_12;
      }

      sub_1C4432138();
      sub_1C4420C3C(v23, &unk_1EC0B84E0, v11);
      v33 = [v2 endDate];
      v34 = *(v0 + 280);
      v35 = *(v0 + 240);
      if (v33)
      {
        sub_1C4409B8C();

        sub_1C43FD50C();
        v7 = sub_1C4420C3C(v35, &unk_1EC0B84E0, v11);
        v8 = (v0 + 248);
        v9 = v95;
      }

      else
      {
        sub_1C4432138();
        v24 = (v0 + 240);
        v8 = (v0 + 248);
        v9 = v95;
LABEL_12:
        sub_1C4420C3C(*v24, &unk_1EC0B84E0, v11);
        *(v0 + 384) = sub_1C47A2E0C(v2);
        *(v0 + 392) = v25;
        if (!v25)
        {
          goto LABEL_17;
        }

        v26 = v25;
        sub_1C4784C34((v0 + 144));
        if (*(v0 + 168))
        {
          v27 = *(v0 + 176);
          sub_1C4409678((v0 + 144), *(v0 + 168));
          v28 = sub_1C442BA58();
          v30 = v29(v28);
          v32 = v31;
          *(v0 + 400) = v30;
          *(v0 + 408) = v31;
          sub_1C440962C((v0 + 144));
          if (v32 >> 60 == 15)
          {

LABEL_16:
          }

          else
          {
            switch(v32 >> 62)
            {
              case 1uLL:
                v36 = v30;
                v37 = v30 >> 32;
                goto LABEL_28;
              case 2uLL:
                v36 = *(v30 + 16);
                v37 = *(v30 + 24);
LABEL_28:
                if (v36 == v37)
                {
                  goto LABEL_29;
                }

                goto LABEL_41;
              case 3uLL:

                sub_1C441DFEC(v30, v32);
                goto LABEL_16;
              default:
                if ((v32 & 0xFF000000000000) != 0)
                {
LABEL_41:
                  v77 = sub_1C4425A64();
                  v78 = sub_1C441C938(v77);
                  *(v0 + 16) = v79;
                  v87 = sub_1C4402F3C(v78, v80, v81, v82, v83, v84, v85, v86, v90, v0 + 208);
                  v88 = sub_1C456902C(&unk_1EC0BB3C0, &unk_1C4F1F520);
                  sub_1C441F7C8(v88);
                  *(v0 + 88) = 1107296256;
                  sub_1C440A95C();
                  *(v0 + 104) = v89;
                  *(v0 + 112) = v87;
                  [v20 resolveMapItemFromHandle:v32 completionHandler:&off_1E81F1000];
                  v17 = v26;

                  return MEMORY[0x1EEE6DEC8](v17);
                }

LABEL_29:

                sub_1C441DFEC(v30, v32);

                break;
            }
          }

          v10 = &off_1E81F1000;
          v9 = v95;
          v11 = v20;
        }

        else
        {

          v7 = sub_1C4420C3C(v0 + 144, &qword_1EC0BB3B8, &unk_1C4F1F510);
        }
      }
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  sub_1C43FE9B4();
LABEL_34:
  v46 = sub_1C4404230();
  sub_1C442B738(v46, qword_1EDE2DE10);
  sub_1C44193D8();
  v47 = sub_1C43FBC98();
  sub_1C46D35C8(v47, v48, v49);
  v50 = sub_1C4F00968();
  v51 = sub_1C4F01CF8();
  v52 = os_log_type_enabled(v50, v51);
  v53 = *(v0 + 272);
  if (v52)
  {
    v54 = *(v0 + 264);
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v96[0] = v56;
    *v55 = 136315138;
    sub_1C44193D8();
    sub_1C46D35C8(v53, v54, v57);
    sub_1C46D3570(v53, type metadata accessor for EKEventSourceIngestor);
    sub_1C4640CCC();
    v59 = v58;
    v61 = v60;
    sub_1C46D3570(v54, type metadata accessor for EKEventSourceIngestor);
    v62 = sub_1C441D828(v59, v61, v96);

    *(v55 + 4) = v62;
    _os_log_impl(&dword_1C43F8000, v50, v51, "%s going to defer", v55, 0xCu);
    sub_1C440962C(v56);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {
    sub_1C4411AE8();
  }

  v64 = *(v0 + 328);
  v63 = *(v0 + 336);
  v65 = *(v0 + 320);
  v66 = *(v0 + 304);
  v92 = *(v0 + 296);
  v68 = *(v0 + 280);
  v67 = *(v0 + 288);
  v94 = *(v0 + 232);
  sub_1C4F01828();
  sub_1C440015C();
  sub_1C46D3528(v69, v70);
  sub_1C440F170();
  sub_1C4F00EA8();
  swift_willThrow();

  v71 = *(v67 + 8);
  v71(v92, v68);
  v71(v66, v68);

  sub_1C46D284C(v94, v91, v93);
  sub_1C44088A8();

  sub_1C43FBDA0();
LABEL_38:

  return v76();
}

uint64_t sub_1C46D284C(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for Pipeline.StatusStore();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C46D35C8(a1, v10, type metadata accessor for Configuration);
  v10[*(v7 + 28)] = *(a1 + *(type metadata accessor for EKEventSourceIngestor() + 24));
  Pipeline.StatusStore.currentSessionId()();
  sub_1C46D3570(v10, type metadata accessor for Pipeline.StatusStore);
  sub_1C4F00288();
  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D480;
  *(inited + 32) = 0x496E6F6973736573;
  *(inited + 40) = 0xE900000000000064;
  v12 = sub_1C4F01108();

  *(inited + 48) = v12;
  *(inited + 56) = 0x614E656372756F73;
  *(inited + 64) = 0xEA0000000000656DLL;
  sub_1C4461BB8(0, &qword_1EDDFA440, 0x1E696AEC0);
  *(inited + 72) = sub_1C4F01EF8();
  *(inited + 80) = 0x756F436E656B6174;
  *(inited + 88) = 0xEA0000000000746ELL;
  v13 = *a2;
  *(inited + 96) = sub_1C4F01B58();
  strcpy((inited + 104), "droppedCount");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  result = *a3 - *a2;
  if (__OFSUB__(*a3, *a2))
  {
    __break(1u);
  }

  else
  {
    *(inited + 120) = sub_1C4F01B58();
    sub_1C4461BB8(0, qword_1EDDFCDD0, 0x1E69E58C0);
    sub_1C4F00F28();
    sub_1C4F00268();
  }

  return result;
}

void sub_1C46D2AD4(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X5>, void *a7@<X6>, char *a8@<X7>, char *a9@<X8>)
{
  v77 = a7;
  v78 = a8;
  v85 = a4;
  v86 = a6;
  v80 = a1;
  v81 = a2;
  v79 = a9;
  v12 = &unk_1EC0B84E0;
  v13 = qword_1C4F0D2D0;
  v14 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v83 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v88 = &v75 - v18;
  v19 = type metadata accessor for EKEventSourceIngestor();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v75 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v76 = &v75 - v23;
  v24 = sub_1C4428DA0();
  v25 = 0;
  v90 = a3 & 0xFFFFFFFFFFFFFF8;
  v91 = a3 & 0xC000000000000001;
  v87 = v24;
  v82 = a5;
  v84 = a3;
  while (1)
  {
    if (v24 == v25)
    {
      v61 = *v78;
      goto LABEL_36;
    }

    if (v91)
    {
      v26 = MEMORY[0x1C6940F90](v25, a3);
    }

    else
    {
      if (v25 >= *(v90 + 16))
      {
        goto LABEL_44;
      }

      v26 = *(a3 + 8 * v25 + 32);
    }

    v9 = v26;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (sub_1C4F01948())
    {
      if (qword_1EDDFD028 != -1)
      {
        goto LABEL_47;
      }

      goto LABEL_38;
    }

    if (__OFADD__(*a5, 1))
    {
      goto LABEL_45;
    }

    v27 = v12;
    ++*a5;
    v28 = [v9 calendar];
    if (!v28)
    {
      __break(1u);
      return;
    }

    v29 = v28;
    v30 = [v28 isSuggestedEventCalendar];

    if (v30)
    {

LABEL_29:
      v12 = v27;
      goto LABEL_30;
    }

    v31 = [v9 startDate];
    if (v31)
    {
      v32 = v31;
      v33 = v88;
      sub_1C4EF9C78();

      v34 = sub_1C4EF9CD8();
      sub_1C440BAA8(v33, 0, 1, v34);
      v35 = v33;
    }

    else
    {
      v46 = sub_1C4EF9CD8();
      v47 = v88;
      sub_1C440BAA8(v88, 1, 1, v46);
      v48 = v47;
      v12 = v27;
      sub_1C4420C3C(v48, v27, v13);
      v49 = [v9 endDate];
      if (v49)
      {
        v50 = v49;
        v51 = v83;
        sub_1C4EF9C78();

        sub_1C440BAA8(v51, 0, 1, v46);
        sub_1C4420C3C(v51, v12, v13);
        v24 = v87;
        goto LABEL_30;
      }

      v60 = v83;
      sub_1C440BAA8(v83, 1, 1, v46);
      v35 = v60;
      v24 = v87;
    }

    v12 = v27;
    sub_1C4420C3C(v35, v27, v13);
    v36 = sub_1C47A2E0C(v9);
    if (!v37)
    {

      goto LABEL_30;
    }

    v38 = v13;
    v39 = *v86;
    if (*(*v86 + 16))
    {
      v40 = sub_1C445FAA8(v36, v37);
      v42 = v41;

      if (v42)
      {
        v43 = (*(v39 + 56) + 16 * v40);
        v44 = *v43;
        v45 = v43[1];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      else
      {
        v44 = 0;
        v45 = 0;
      }

      a5 = v82;
    }

    else
    {

      v44 = 0;
      v45 = 0;
    }

    v52 = v44;
    v53 = v89;
    sub_1C46CF5B4(v52, v45, 1);
    if (v53)
    {
      v89 = 0;
      v13 = v38;
      v24 = v87;

      v93 = v53;
      v56 = v53;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      if (swift_dynamicCast())
      {

        v57 = v92[1];
        sub_1C465B58C();
        v58 = swift_allocError();
        *v59 = v57;
        v92[0] = 1;
        static Transformers.reportError(error:context:config:pipelineType:)(v58, 0x746E6576454B45, 0xE700000000000000, v85, v92);

        a3 = v84;
        goto LABEL_29;
      }

      v61 = 1;
      LOBYTE(v93) = 1;
      static Transformers.reportError(error:context:config:pipelineType:)(v53, 0x746E6576454B45, 0xE700000000000000, v85, &v93);

      *v78 = 1;
LABEL_36:
      *v79 = v61;
      return;
    }

    sub_1C4812140();
    v55 = v54;

    v80(v55);
    v13 = v38;
    v89 = 0;

    v24 = v87;
    if (__OFADD__(*v77, 1))
    {
      goto LABEL_46;
    }

    v12 = v27;
    ++*v77;
    a3 = v84;
LABEL_30:
    ++v25;
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  swift_once();
LABEL_38:
  v62 = sub_1C4F00978();
  sub_1C442B738(v62, qword_1EDE2DE10);
  v63 = v76;
  sub_1C46D35C8(v85, v76, type metadata accessor for EKEventSourceIngestor);
  v64 = sub_1C4F00968();
  v65 = sub_1C4F01CF8();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v93 = v67;
    *v66 = 136315138;
    v68 = v75;
    sub_1C46D35C8(v63, v75, type metadata accessor for EKEventSourceIngestor);
    sub_1C46D3570(v63, type metadata accessor for EKEventSourceIngestor);
    sub_1C4640CCC();
    v70 = v69;
    v72 = v71;
    sub_1C46D3570(v68, type metadata accessor for EKEventSourceIngestor);
    v73 = sub_1C441D828(v70, v72, &v93);

    *(v66 + 4) = v73;
    _os_log_impl(&dword_1C43F8000, v64, v65, "%s going to defer", v66, 0xCu);
    sub_1C440962C(v67);
    MEMORY[0x1C6942830](v67, -1, -1);
    MEMORY[0x1C6942830](v66, -1, -1);
  }

  else
  {
    sub_1C46D3570(v63, type metadata accessor for EKEventSourceIngestor);
  }

  sub_1C4F01828();
  sub_1C46D3528(&qword_1EDDFCF00, MEMORY[0x1E69E8550]);
  v74 = swift_allocError();
  sub_1C4F00EA8();
  v89 = v74;
  swift_willThrow();
}

uint64_t sub_1C46D3284()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44E2E7C;

  return sub_1C46D0AF4();
}

uint64_t sub_1C46D337C(uint64_t a1)
{
  result = sub_1C46D3528(qword_1EDDE3D28, type metadata accessor for EKEventSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C46D33D4(uint64_t a1)
{
  result = sub_1C46D3528(&qword_1EDDE3D08, type metadata accessor for EKEventSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C46D342C(uint64_t a1)
{
  result = sub_1C46D3528(&qword_1EDDE3D10, type metadata accessor for EKEventSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C46D3484@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 URL];
  if (v3)
  {
    v4 = v3;
    sub_1C4EF98C8();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1C4EF98F8();

  return sub_1C440BAA8(a1, v5, 1, v6);
}

uint64_t sub_1C46D3528(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C46D3570(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C46D35C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1C43FBCE0(v4);
  v6 = *(v5 + 16);
  v7 = sub_1C43FBC98();
  v8(v7);
  return a2;
}

_BYTE *_s19EmbeddingRecordTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C46D3700()
{
  v0 = sub_1C4F025D8();

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

uint64_t sub_1C46D3754(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x6E69646465626D65;
  }
}

uint64_t sub_1C46D379C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1C4687968();
}

uint64_t sub_1C46D37C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C46D3700();
  *a2 = result;
  return result;
}

uint64_t sub_1C46D37F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C46D3754(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1C46D3820()
{
  result = qword_1EC0BB3E0;
  if (!qword_1EC0BB3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB3E0);
  }

  return result;
}

unint64_t sub_1C46D3924()
{
  result = qword_1EDDE8380;
  if (!qword_1EDDE8380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE8380);
  }

  return result;
}

uint64_t sub_1C46D3988()
{
  if (qword_1EC0B70F0 != -1)
  {
    swift_once();
  }

  qword_1EC151BA8 = qword_1EC0C37C8;
  *algn_1EC151BB0 = *&qword_1EC0C37D0;
  qword_1EC151BC0 = qword_1EC0C37E0;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C46D3A08(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0BB410, &qword_1C4F1F750);
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v19[-v11];
  v13 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C46D413C();
  sub_1C4F02BF8();
  v14 = *v3;
  v15 = v3[1];
  v22 = 0;
  sub_1C4F02798();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    v21 = 1;
    sub_1C4F02738();
    v20 = v3[4];
    v19[15] = 2;
    sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
    sub_1C46D4190(&qword_1EC0B8728, sub_1C458A984);
    sub_1C4F027E8();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_1C46D3BE4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0BB400, &unk_1C4F1F740);
  v6 = sub_1C43FCDF8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C46D413C();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  v10 = sub_1C4F02678();
  v12 = v11;
  v19 = v10;
  v17 = sub_1C4F02618();
  v18 = v13;
  sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
  sub_1C46D4190(&qword_1EC0B8740, sub_1C458AA50);
  sub_1C4F026C8();
  v14 = sub_1C4402F74();
  v15(v14);
  result = sub_1C440962C(a1);
  *a2 = v19;
  a2[1] = v12;
  a2[2] = v17;
  a2[3] = v18;
  a2[4] = v20;
  return result;
}

uint64_t sub_1C46D3E5C(uint64_t a1)
{
  v2 = sub_1C46D413C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C46D3E98(uint64_t a1)
{
  v2 = sub_1C46D413C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C46D3ED4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

double sub_1C46D3F04@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C46D3BE4(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t sub_1C46D3F64(uint64_t a1)
{
  result = sub_1C46D3F8C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C46D3F8C()
{
  result = qword_1EC0BB3E8;
  if (!qword_1EC0BB3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB3E8);
  }

  return result;
}

uint64_t sub_1C46D3FE0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC0B68F8 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC151BC0;
  *a1 = qword_1EC151BA8;
  *(a1 + 8) = *algn_1EC151BB0;
  *(a1 + 24) = v2;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

unint64_t sub_1C46D4064(uint64_t a1)
{
  *(a1 + 8) = sub_1C46D4094();
  result = sub_1C46D40E8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C46D4094()
{
  result = qword_1EC0BB3F0;
  if (!qword_1EC0BB3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB3F0);
  }

  return result;
}

unint64_t sub_1C46D40E8()
{
  result = qword_1EC0BB3F8;
  if (!qword_1EC0BB3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB3F8);
  }

  return result;
}

unint64_t sub_1C46D413C()
{
  result = qword_1EC0BB408;
  if (!qword_1EC0BB408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB408);
  }

  return result;
}

uint64_t sub_1C46D4190(unint64_t *a1, void (*a2)(void))
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

_BYTE *storeEnumTagSinglePayload for Employment.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C46D42E8()
{
  result = qword_1EC0BB418;
  if (!qword_1EC0BB418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB418);
  }

  return result;
}

unint64_t sub_1C46D4340()
{
  result = qword_1EC0BB420;
  if (!qword_1EC0BB420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB420);
  }

  return result;
}

unint64_t sub_1C46D4398()
{
  result = qword_1EC0BB428;
  if (!qword_1EC0BB428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB428);
  }

  return result;
}

void sub_1C46D43EC(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v106 = a2;
  v105 = a1;
  v107 = a3;
  v5 = type metadata accessor for FeatureValue(0);
  v6 = sub_1C43FBCE0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBD08();
  v11 = (v9 - v10);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBF38();
  v103 = v13;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v102 - v15);
  v17 = sub_1C456902C(&qword_1EC0BB438, qword_1C4F1F960);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  sub_1C43FBD08();
  v104 = v19 - v20;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBF38();
  v102 = v22;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v102 - v24;
  v108 = type metadata accessor for FeatureValue.BasicValue(0);
  v26 = sub_1C43FBCE0(v108);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBD08();
  v31 = v29 - v30;
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FEE3C();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v102 - v34;
  switch([v3 type])
  {
    case 1uLL:
      sub_1C43FC1E8(MEMORY[0x1E69E7CC0]);
      v36 = *(v5 + 32);
      sub_1C43FCF64();
      v37 = v108;
      sub_1C440BAA8(v38, v39, v40, v108);
      v41 = [v3 int64Value];
      sub_1C46D6C34(v16 + v36, v25);
      if (sub_1C44157D4(v25, 1, v37) == 1)
      {
        sub_1C4F00318();
        v42 = &v35[v37[5]];
        *v42 = 0;
        v42[8] = 1;
        v43 = &v35[v37[6]];
        *v43 = 0;
        v43[8] = 1;
        v44 = &v35[v37[7]];
        *v44 = 0;
        v44[4] = 1;
        v45 = &v35[v37[8]];
        *v45 = 0;
        *(v45 + 1) = 0;
        if (sub_1C44157D4(v25, 1, v37) != 1)
        {
          sub_1C46D6CA4(v25);
        }
      }

      else
      {
        sub_1C44193F0();
        sub_1C46D6DEC(v25, v35);
      }

      v91 = &v35[v37[5]];
      *v91 = v41;
      v91[8] = 0;
      sub_1C46D6CA4(v16 + v36);
      sub_1C44193F0();
      sub_1C46D6DEC(v35, v16 + v36);
      v87 = v16 + v36;
      v88 = 0;
      v89 = 1;
      v90 = v37;
      goto LABEL_27;
    case 2uLL:
      v47 = MEMORY[0x1E69E7CC0];
      v48 = v107;
      *v107 = MEMORY[0x1E69E7CC0];
      v48[1] = v47;
      v48[2] = v47;
      v49 = v48 + *(v5 + 28);
      sub_1C4F00318();
      v50 = *(v5 + 32);
      sub_1C43FCF64();
      v51 = v108;
      sub_1C440BAA8(v52, v53, v54, v108);
      [v3 doubleValue];
      v56 = v55;
      if (v106 == 0xFF)
      {
        v57 = v102;
      }

      else
      {
        v57 = v102;
        if (v106)
        {
          sub_1C47E58BC(v105, v55);
        }

        else
        {
          v58 = sub_1C47E563C(v105, v55);
        }

        v56 = v58;
      }

      sub_1C46D6C34(v48 + v50, v57);
      sub_1C43FD490(v57);
      if (v92)
      {
        sub_1C4F00318();
        sub_1C440E114(v51[5]);
        *(v93 + 8) = 1;
        sub_1C440E114(v51[6]);
        *(v94 + 8) = 1;
        sub_1C4434F74(v51[7]);
        *(v95 + 4) = 1;
        v96 = (v4 + v51[8]);
        *v96 = 0;
        v96[1] = 0;
        sub_1C43FD490(v57);
        if (!v92)
        {
          sub_1C46D6CA4(v57);
        }
      }

      else
      {
        sub_1C44193F0();
        sub_1C46D6DEC(v57, v4);
      }

      v97 = v4 + v51[6];
      *v97 = v56;
      *(v97 + 8) = 0;
      sub_1C46D6CA4(v48 + v50);
      sub_1C44193F0();
      sub_1C46D6DEC(v4, v48 + v50);
      sub_1C440D2F4();
      sub_1C440BAA8(v98, v99, v100, v101);
      return;
    case 3uLL:
      sub_1C43FC1E8(MEMORY[0x1E69E7CC0]);
      v59 = *(v5 + 32);
      sub_1C43FCF64();
      v60 = v108;
      sub_1C440BAA8(v61, v62, v63, v108);
      v64 = [v3 stringValue];
      v65 = sub_1C4F01138();
      v67 = v66;

      v68 = v104;
      sub_1C46D6C34(v16 + v59, v104);
      if (sub_1C44157D4(v68, 1, v60) == 1)
      {
        sub_1C4F00318();
        v69 = v31 + v60[5];
        *v69 = 0;
        *(v69 + 8) = 1;
        v70 = v31 + v60[6];
        *v70 = 0;
        *(v70 + 8) = 1;
        v71 = v31 + v60[7];
        *v71 = 0;
        *(v71 + 4) = 1;
        v72 = (v31 + v60[8]);
        *v72 = 0;
        v72[1] = 0;
        if (sub_1C44157D4(v68, 1, v60) != 1)
        {
          sub_1C46D6CA4(v68);
        }
      }

      else
      {
        sub_1C44193F0();
        sub_1C46D6DEC(v68, v31);
      }

      v85 = (v31 + v108[8]);
      v86 = v85[1];

      *v85 = v65;
      v85[1] = v67;
      sub_1C46D6CA4(v16 + v59);
      sub_1C44193F0();
      sub_1C46D6DEC(v31, v16 + v59);
      sub_1C440D2F4();
LABEL_27:
      sub_1C440BAA8(v87, v88, v89, v90);
      return;
    case 4uLL:
      sub_1C46D6BE0();
      sub_1C43FFB2C();
      *v46 = 1;
      goto LABEL_19;
    case 5uLL:
      v77 = [v3 multiArrayValue];
      if (!v77)
      {
        goto LABEL_18;
      }

      v78 = v77;
      v79 = v109;
      sub_1C46D4AF0(v105, v106, v16);

      if (v79)
      {
        return;
      }

      sub_1C442C7E4();
      v76 = v16;
      break;
    case 6uLL:
      v81 = [v3 dictionaryValue];
      sub_1C4447C04();
      v82 = sub_1C4F00ED8();

      v83 = v103;
      v84 = v109;
      sub_1C46D4EF4(v105, v106, v82, v103);

      if (v84)
      {
        return;
      }

      sub_1C442C7E4();
      v76 = v83;
      break;
    case 7uLL:
      v73 = [v3 sequenceValue];
      if (!v73)
      {
        goto LABEL_18;
      }

      v74 = v73;
      v75 = v109;
      sub_1C46D570C(v11);

      if (v75)
      {
        return;
      }

      sub_1C442C7E4();
      v76 = v11;
      break;
    default:
LABEL_18:
      sub_1C46D6BE0();
      sub_1C43FFB2C();
      *v80 = 0;
LABEL_19:
      swift_willThrow();
      return;
  }

  sub_1C46D6DEC(v76, v107);
}

void sub_1C46D4AF0(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v4;
  v6 = v3;
  v9 = [v3 shape];
  sub_1C43FBE94();
  sub_1C4447C04();
  v10 = sub_1C4F01678();

  v11 = sub_1C4428DA0();
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v13 = v11;
    v59 = MEMORY[0x1E69E7CC0];
    sub_1C459CF48();
    if (v13 < 0)
    {
      goto LABEL_36;
    }

    v55 = a2;
    v56 = v3;
    v58 = a3;
    v14 = 0;
    v15 = v59;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1C6940F90](v14, v10);
      }

      else
      {
        v16 = *(v10 + 8 * v14 + 32);
      }

      v17 = v16;
      v18 = [v16 integerValue];

      v20 = *(v59 + 16);
      v19 = *(v59 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1C43FCFE8(v19);
        sub_1C459CF48();
      }

      ++v14;
      *(v59 + 16) = v20 + 1;
      *(v59 + 8 * v20 + 32) = v18;
    }

    while (v13 != v14);

    a3 = v58;
    v6 = v56;
    v5 = v4;
    a2 = v55;
    v12 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v15 = MEMORY[0x1E69E7CC0];
  }

  *a3 = v12;
  a3[1] = v12;
  a3[2] = v12;
  v21 = type metadata accessor for FeatureValue(0);
  v22 = a3 + *(v21 + 28);
  sub_1C4F00318();
  v23 = *(v21 + 32);
  type metadata accessor for FeatureValue.BasicValue(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v24, v25, v26, v27);
  v28 = [v6 dataType];
  if (v28 == 65552 || v28 == 65568)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1C46B6838(a1, a2);
    v32 = sub_1C44088C8();
    v31 = sub_1C46D62AC(v32, v33, v34, v35, v36);
  }

  else if (v28 == 65600)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1C46B6838(a1, a2);
    v37 = sub_1C44088C8();
    v31 = sub_1C46D5CE4(v37, v38, v39, v40, v41);
  }

  else
  {
    if (v28 != 131104)
    {

      sub_1C46D6BE0();
      v52 = sub_1C43FFB2C();
      sub_1C442DE80(v52, v53);
      goto LABEL_32;
    }

    KeyPath = swift_getKeyPath();
    v30 = swift_getKeyPath();
    v4 = v5;
    sub_1C46D6718(KeyPath, v30, v6);
  }

  if (v4)
  {

LABEL_32:
    sub_1C4411B10();
    sub_1C46D6D30(a3, v54);
    return;
  }

  v42 = v31;

  *a3 = v42;
  v43 = *(v15 + 16);
  if (!v43)
  {

    return;
  }

  v44 = MEMORY[0x1E69E7CC0];
  for (i = 32; ; i += 8)
  {
    v46 = *(v15 + i);
    if (v46 < 0xFFFFFFFF80000000)
    {
      break;
    }

    if (v46 > 0x7FFFFFFF)
    {
      goto LABEL_35;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v49 = *(v44 + 16);
      sub_1C458B07C();
      v44 = v50;
    }

    v48 = *(v44 + 16);
    v47 = *(v44 + 24);
    if (v48 >= v47 >> 1)
    {
      sub_1C43FCFE8(v47);
      sub_1C458B07C();
      v44 = v51;
    }

    *(v44 + 16) = v48 + 1;
    *(v44 + 4 * v48 + 32) = v46;
    if (!--v43)
    {

      a3[1] = v44;
      return;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t sub_1C46D4EF4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v112 = a2;
  v110 = a1;
  v7 = sub_1C456902C(&qword_1EC0BB438, qword_1C4F1F960);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBF38();
  v116 = v11;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  v118 = &v107 - v13;
  v14 = type metadata accessor for FeatureValue.BasicValue(0);
  v15 = sub_1C43FBCE0(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FEE3C();
  MEMORY[0x1EEE9AC00](v20);
  v115 = &v107 - v21;
  v119 = type metadata accessor for FeatureValue.NamedValue(0);
  v22 = sub_1C43FCDF8(v119);
  v117 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBD08();
  v126 = v26 - v27;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v107 - v29;
  v31 = MEMORY[0x1E69E7CC0];
  *a4 = MEMORY[0x1E69E7CC0];
  a4[1] = v31;
  v127 = v31;
  a4[2] = v31;
  v32 = type metadata accessor for FeatureValue(0);
  v33 = a4 + *(v32 + 28);
  sub_1C4F00318();
  v34 = *(v32 + 32);
  v120 = a4;
  sub_1C43FCF64();
  sub_1C440BAA8(v35, v36, v37, v14);
  v38 = *(a3 + 64);
  v122 = a3 + 64;
  v39 = 1 << *(a3 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & v38;
  v114 = (v39 + 63) >> 6;
  v123 = a3;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v43 = 0;
  v121 = v30;
  v113 = v4;
  while (v41)
  {
LABEL_9:
    v45 = __clz(__rbit64(v41)) | (v43 << 6);
    v46 = v123;
    sub_1C457E7A8(*(v123 + 48) + 40 * v45, &v130);
    v47 = *(*(v46 + 56) + 8 * v45);
    v48 = v131;
    v124 = v132;
    v125 = v130;
    v49 = v132;
    v50 = v47;
    if (!v49)
    {
    }

    v51 = v50;
    v52 = v118;
    v130 = v125;
    v131 = v48;
    v132 = v124;
    sub_1C4F00318();
    v53 = v119;
    v54 = &v30[*(v119 + 20)];
    *v54 = 0;
    v54[1] = 0;
    v55 = *(v53 + 24);
    sub_1C43FCF64();
    sub_1C440BAA8(v56, v57, v58, v14);
    *v54 = sub_1C4F02168();
    v54[1] = v59;
    v128 = 0.0;
    sub_1C4410B18();
    sub_1C4F02A88();
    if ((v129 & 1) == 0)
    {
      v66 = v128;
      sub_1C46D6C34(&v30[v55], v52);
      sub_1C43FD490(v52);
      if (v63)
      {
        v79 = v115;
        sub_1C4F00318();
        v67 = v79 + v14[5];
        *v67 = 0;
        *(v67 + 8) = 1;
        v68 = v79 + v14[6];
        *v68 = 0;
        *(v68 + 8) = 1;
        v69 = v79 + v14[7];
        *v69 = 0;
        *(v69 + 4) = 1;
        v70 = (v79 + v14[8]);
        *v70 = 0;
        v70[1] = 0;
        sub_1C43FD490(v52);
        if (!v63)
        {
          sub_1C46D6CA4(v52);
        }
      }

      else
      {
        sub_1C44193F0();
        v79 = v115;
        sub_1C46D6DEC(v52, v115);
      }

      v80 = v79 + v14[5];
      *v80 = v66;
      *(v80 + 8) = 0;
      v97 = v79;
      goto LABEL_33;
    }

    v128 = 0.0;
    sub_1C4410B18();
    sub_1C4F01B68();
    if ((v129 & 1) == 0)
    {
      v71 = v128;
      v72 = v116;
      sub_1C46D6C34(&v121[v55], v116);
      sub_1C43FD490(v72);
      if (v63)
      {
        v84 = v113;
        sub_1C4F00318();
        sub_1C440E114(v14[5]);
        *(v73 + 8) = 1;
        sub_1C440E114(v14[6]);
        *(v74 + 8) = v75;
        sub_1C4434F74(v14[7]);
        *(v76 + 4) = v77;
        v78 = (v84 + v14[8]);
        *v78 = 0;
        v78[1] = 0;
        sub_1C43FD490(v116);
        if (!v63)
        {
          sub_1C46D6CA4(v116);
        }
      }

      else
      {
        sub_1C44193F0();
        v84 = v113;
        sub_1C46D6DEC(v116, v113);
      }

      v85 = v84 + v14[5];
      *v85 = v71;
      *(v85 + 8) = 0;
      v97 = v84;
LABEL_33:
      v30 = v121;
      goto LABEL_34;
    }

    v128 = 0.0;
    v60 = sub_1C4410B18();
    MEMORY[0x1C69406C0](v60);
    if (v129)
    {
      LODWORD(v128) = 0;
      BYTE4(v128) = 1;
      MEMORY[0x1C6940750](v51, &v128);
      v61 = v111;
      v30 = v121;
      if (BYTE4(v128))
      {
        sub_1C46D6BE0();
        v104 = sub_1C43FFB2C();
        sub_1C442DE80(v104, v105);

        sub_1C457E804(&v130);
        sub_1C4412F68();
        sub_1C4411B10();
        return sub_1C46D6D30(v120, v106);
      }

      v62 = *&v128;
      if ((v112 & 1) == 0)
      {
        v62 = sub_1C47E5998(v110, *&v128);
      }

      sub_1C46D6C34(&v30[v55], v61);
      sub_1C43FD490(v61);
      if (v63)
      {
        v97 = v107;
        sub_1C4F00318();
        sub_1C440A970();
        v64 = v111;
        v65 = (v97 + v14[8]);
        *v65 = 0;
        v65[1] = 0;
        sub_1C43FD490(v64);
        if (!v63)
        {
          sub_1C46D6CA4(v64);
        }
      }

      else
      {
        sub_1C44193F0();
        v96 = v61;
        v97 = v107;
        sub_1C46D6DEC(v96, v107);
      }

      v98 = v97 + v14[7];
      *v98 = v62;
      *(v98 + 4) = 0;
    }

    else
    {
      v81 = v128;
      v30 = v121;
      if (v112 == 0xFF)
      {
        v82 = v109;
      }

      else
      {
        v82 = v109;
        if (v112)
        {
          sub_1C47E58BC(v110, v128);
        }

        else
        {
          v83 = sub_1C47E563C(v110, v128);
        }

        v81 = v83;
      }

      sub_1C46D6C34(&v30[v55], v82);
      sub_1C43FD490(v82);
      if (v63)
      {
        v97 = v108;
        sub_1C4F00318();
        sub_1C440A970();
        v99 = (v97 + v14[8]);
        *v99 = 0;
        v99[1] = 0;
        sub_1C43FD490(v82);
        if (!v63)
        {
          sub_1C46D6CA4(v82);
        }
      }

      else
      {
        sub_1C44193F0();
        v97 = v108;
        sub_1C46D6DEC(v82, v108);
      }

      v100 = v97 + v14[6];
      *v100 = v81;
      *(v100 + 8) = 0;
    }

LABEL_34:
    sub_1C46D6CA4(&v30[v55]);
    sub_1C44193F0();
    sub_1C46D6DEC(v97, &v30[v55]);
    sub_1C440D2F4();
    sub_1C440BAA8(v86, v87, v88, v89);
    sub_1C46D6D88(v30, v126);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C458B0A4(0, *(v127 + 16) + 1, 1, v127);
      v127 = v101;
    }

    v91 = *(v127 + 16);
    v90 = *(v127 + 24);
    if (v91 >= v90 >> 1)
    {
      v102 = sub_1C43FCFE8(v90);
      sub_1C458B0A4(v102, v91 + 1, 1, v127);
      v127 = v103;
    }

    v41 &= v41 - 1;

    sub_1C457E804(&v130);
    v92 = v127;
    *(v127 + 16) = v91 + 1;
    sub_1C43FBF6C();
    sub_1C46D6DEC(v95, v92 + v93 + *(v94 + 72) * v91);
    v120[2] = v92;
    result = sub_1C4412F68();
  }

  while (1)
  {
    v44 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v44 >= v114)
    {
    }

    v41 = *(v122 + 8 * v44);
    ++v43;
    if (v41)
    {
      v43 = v44;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1C46D570C(uint64_t *a1@<X8>)
{
  v4 = v1;
  v6 = type metadata accessor for FeatureValue.BasicValue(0);
  v7 = sub_1C43FCDF8(v6);
  v74 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBD08();
  sub_1C43FEE3C();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v67 - v12;
  v14 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v14;
  a1[2] = v14;
  v15 = type metadata accessor for FeatureValue(0);
  v16 = a1 + v15[7];
  sub_1C4F00318();
  v17 = v15[8];
  sub_1C43FCF64();
  sub_1C440BAA8(v18, v19, v20, v6);
  v21 = [v4 type];
  if (v21 > 7 || ((1 << v21) & 0xF5) != 0)
  {
    sub_1C46D6BE0();
    v22 = sub_1C43FFB2C();
    sub_1C442DE80(v22, v23);
LABEL_4:
    sub_1C46D6D30(a1, type metadata accessor for FeatureValue);
    return;
  }

  if (v21 != 1)
  {
    v69 = v4;
    v44 = [v4 stringValues];
    v45 = sub_1C4F01678();

    v46 = *(v45 + 16);
    if (v46)
    {
      v68 = v2;
      v73 = a1;
      v75 = v14;
      sub_1C459D328();
      v47 = v75;
      v72 = v45;
      v48 = (v45 + 40);
      do
      {
        v49 = *(v48 - 1);
        v44 = *v48;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4F00318();
        sub_1C440E114(v6[5]);
        *(v50 + 8) = 1;
        sub_1C440E114(v6[6]);
        *(v51 + 8) = 1;
        sub_1C4434F74(v6[7]);
        *(v52 + 4) = 1;
        v53 = (v3 + v6[8]);
        *v53 = v49;
        v53[1] = v44;
        v75 = v47;
        v55 = *(v47 + 16);
        v54 = *(v47 + 24);
        if (v55 >= v54 >> 1)
        {
          sub_1C43FCFE8(v54);
          v44 = &v75;
          sub_1C440424C();
          sub_1C459D328();
          v47 = v75;
        }

        *(v47 + 16) = v55 + 1;
        sub_1C43FBF6C();
        v57 = *(v56 + 72);
        sub_1C44193F0();
        sub_1C46D6DEC(v3, v58);
        v48 += 2;
        --v46;
      }

      while (v46);

      a1 = v73;
    }

    else
    {

      v47 = MEMORY[0x1E69E7CC0];
    }

    *a1 = v47;
    v59 = [v69 int64Values];
    sub_1C43FBE94();
    sub_1C4447C04();
    v33 = sub_1C4F01678();

    v29 = sub_1C4428DA0();

    if (v29 >= 0xFFFFFFFF80000000)
    {
      if (v29 > 0x7FFFFFFF)
      {
        __break(1u);
LABEL_30:

        sub_1C46D6BE0();
        v60 = sub_1C43FFB2C();
        sub_1C442DE80(v60, v61);

        goto LABEL_4;
      }

LABEL_33:
      sub_1C458B07C();
      v65 = v64;
      v30 = *(v64 + 16);
      v14 = v30 + 1;
      if (v30 < *(v64 + 24) >> 1)
      {
LABEL_34:
        *(v65 + 16) = v14;
        *(v65 + 4 * v30 + 32) = v29;
        a1[1] = v65;
        return;
      }

LABEL_37:
      sub_1C440424C();
      sub_1C458B07C();
      v65 = v66;
      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_39;
  }

  v24 = [v4 int64Values];
  sub_1C43FBE94();
  v25 = sub_1C4447C04();
  v26 = sub_1C4F01678();

  v27 = sub_1C4428DA0();
  if (!v27)
  {

    v29 = MEMORY[0x1E69E7CC0];
    v62 = &off_1E81F1000;
LABEL_31:
    *a1 = v29;
    v63 = [v4 v62[354]];
    sub_1C4F01678();

    v29 = sub_1C4428DA0();

    if (v29 >= 0xFFFFFFFF80000000)
    {
      if (v29 <= 0x7FFFFFFF)
      {
        goto LABEL_33;
      }

LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v72 = v26;
  v73 = v27;
  v67 = v25;
  v68 = v2;
  v69 = v4;
  v77 = v14;
  sub_1C459D328();
  if ((v73 & 0x8000000000000000) == 0)
  {
    v28 = 0;
    v29 = v77;
    v30 = v72;
    v70 = v72 & 0xFFFFFFFFFFFFFF8;
    v71 = v72 & 0xC000000000000001;
    while (1)
    {
      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v71)
      {
        v32 = MEMORY[0x1C6940F90](v28, v30);
      }

      else
      {
        if (v28 >= *(v70 + 16))
        {
          goto LABEL_36;
        }

        v32 = *(v30 + 8 * v28 + 32);
      }

      v33 = v32;
      v75 = 0;
      v76 = 1;
      sub_1C4F02A88();
      if (v76)
      {
        goto LABEL_30;
      }

      v34 = v75;
      sub_1C4F00318();

      v35 = &v13[v6[5]];
      *v35 = 0;
      v35[8] = 1;
      v36 = &v13[v6[6]];
      *v36 = 0;
      v36[8] = 1;
      v37 = &v13[v6[7]];
      *v37 = 0;
      v37[4] = 1;
      v38 = &v13[v6[8]];
      *v38 = 0;
      *(v38 + 1) = 0;
      *v35 = v34;
      v35[8] = 0;
      v77 = v29;
      v40 = *(v29 + 16);
      v39 = *(v29 + 24);
      v14 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        sub_1C43FCFE8(v39);
        sub_1C440424C();
        sub_1C459D328();
        v29 = v77;
      }

      *(v29 + 16) = v14;
      sub_1C43FBF6C();
      v42 = *(v41 + 72);
      sub_1C44193F0();
      sub_1C46D6DEC(v13, v43);
      ++v28;
      v30 = v72;
      if (v31 == v73)
      {

        v4 = v69;
        v62 = &off_1E81F1000;
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_41:
  __break(1u);
}

uint64_t sub_1C46D5CE4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v55 = a5;
  v54 = a4;
  v52[1] = a2;
  v56 = a1;
  v71 = *MEMORY[0x1E69E9840];
  v59 = type metadata accessor for FeatureValue.BasicValue(0);
  v58 = *(v59 - 8);
  v7 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v9 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a3;
  v10 = [a3 count];
  if ((v10 & 0x8000000000000000) != 0)
  {
    goto LABEL_54;
  }

  v11 = v10;
  v12 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v52[0] = v5;
    v62 = MEMORY[0x1E69E7CC0];
    sub_1C459D100();
    v13 = 0;
    v14 = v62;
    v53 = (v54 + 48);
    v15 = ~v55;
    do
    {
      v16 = [v57 objectAtIndexedSubscript_];
      v61 = v16;
      swift_getAtKeyPath();

      v17 = v60;
      if (v15)
      {
        v18 = sub_1C47E57A4(v60);
        if (v55)
        {
          if (v18 == 3 || v18 == 8)
          {
            v20 = *(v54 + 16) + 1;
            v21 = v53;
            do
            {
              if (!--v20)
              {
                goto LABEL_31;
              }

              v22 = v21 + 3;
              v23 = *v21;
              v25 = *(v21 - 2);
              v24 = *(v21 - 1);

              v27 = v25(v26, v17);

              v21 = v22;
            }

            while ((v27 & 1) == 0);
            v28 = round(v17 / v23);
            if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_46;
            }

            if (v28 <= -9.22337204e18)
            {
              goto LABEL_47;
            }

            if (v28 >= 9.22337204e18)
            {
              goto LABEL_48;
            }

            v17 = v23 * v28;
          }
        }

        else if (v18 == 8 || v18 == 3)
        {
          *&v69 = MEMORY[0x1C6940C00](v17);
          *(&v69 + 1) = v30;
          v70 = v31;
          v67 = v69;
          v68 = v31;
          if (v17 == 0.0)
          {
            v32 = 0;
          }

          else
          {
            v33 = floor(log10(fabs(v17)));
            if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_49;
            }

            if (v33 >= 9.22337204e18)
            {
              goto LABEL_50;
            }

            if (v33 <= -9.22337204e18)
            {
              goto LABEL_51;
            }

            v34 = -v33;
            v35 = v34 + v54;
            if (__OFADD__(v34, v54))
            {
              goto LABEL_52;
            }

            v32 = v35 - 1;
            if (__OFSUB__(v35, 1))
            {
              goto LABEL_53;
            }
          }

          MEMORY[0x1C6941AC0](&v67, &v69, v32, 0);
          v65 = v67;
          v66 = v68;
          v36 = objc_allocWithZone(MEMORY[0x1E696AB90]);
          v63 = v65;
          v64 = v66;
          v37 = [v36 initWithDecimal_];
          [v37 doubleValue];
          v17 = v38;
        }
      }

LABEL_31:
      v62 = v14;
      v39 = *(v14 + 16);
      v40 = v39 + 1;
      if (v39 >= *(v14 + 24) >> 1)
      {
        sub_1C459D100();
        v14 = v62;
      }

      ++v13;
      *(v14 + 16) = v40;
      *(v14 + 8 * v39 + 32) = v17;
    }

    while (v13 != v11);
    v12 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v40 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v40)
    {
      v42 = MEMORY[0x1E69E7CC0];

      sub_1C46B6850(v54, v55);
      goto LABEL_43;
    }

    v52[0] = v5;
    v14 = MEMORY[0x1E69E7CC0];
  }

  *&v69 = v12;
  sub_1C459D328();
  v41 = 0;
  v42 = v69;
  do
  {
    if (v41 >= *(v14 + 16))
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
    }

    v43 = *(v14 + 8 * v41 + 32);
    sub_1C4F00318();
    v44 = v59;
    v45 = &v9[*(v59 + 20)];
    *v45 = 0;
    v45[8] = 1;
    v46 = &v9[v44[6]];
    *v46 = 0;
    v46[8] = 1;
    v47 = &v9[v44[7]];
    *v47 = 0;
    v47[4] = 1;
    v48 = &v9[v44[8]];
    *v48 = 0;
    *(v48 + 1) = 0;
    *&v67 = v43;
    swift_setAtWritableKeyPath();
    *&v69 = v42;
    v49 = *(v42 + 16);
    if (v49 >= *(v42 + 24) >> 1)
    {
      sub_1C459D328();
      v42 = v69;
    }

    ++v41;
    *(v42 + 16) = v49 + 1;
    sub_1C46D6DEC(v9, v42 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v49);
  }

  while (v40 != v41);

  sub_1C46B6850(v54, v55);
LABEL_43:
  v50 = *MEMORY[0x1E69E9840];
  return v42;
}

uint64_t sub_1C46D62AC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v52 = a5;
  v50 = a4;
  v51 = a1;
  v66 = *MEMORY[0x1E69E9840];
  v54 = type metadata accessor for FeatureValue.BasicValue(0);
  v8 = sub_1C43FCDF8(v54);
  v53 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a3 count];
  if (v14 < 0)
  {
    goto LABEL_33;
  }

  v15 = v14;
  v16 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v49 = a2;
    v57 = MEMORY[0x1E69E7CC0];
    sub_1C459D3B0(0, v14, 0);
    v17 = 0;
    v18 = v57;
    do
    {
      v19 = [a3 objectAtIndexedSubscript_];
      v56 = v19;
      swift_getAtKeyPath();

      v20 = v55;
      if ((v52 & 1) == 0 && (LODWORD(v55) >> 23) && (LODWORD(v55) >> 23) != 255)
      {
        *&v62 = MEMORY[0x1C6940C00](v55);
        *(&v62 + 1) = v21;
        v63 = v22;
        v60 = v62;
        v61 = v22;
        v23 = floorf(log10f(fabsf(v20)));
        if ((LODWORD(v23) & 0x7FFFFFFFu) > 0x7F7FFFFF)
        {
          goto LABEL_28;
        }

        if (v23 >= 9.2234e18)
        {
          goto LABEL_29;
        }

        if (v23 <= -9.2234e18)
        {
          goto LABEL_30;
        }

        v24 = -v23;
        v25 = v24 + v50;
        if (__OFADD__(v24, v50))
        {
          goto LABEL_31;
        }

        if (__OFSUB__(v25, 1))
        {
          goto LABEL_32;
        }

        MEMORY[0x1C6941AC0](&v60, &v62, v25 - 1, 0);
        v64 = v60;
        v65 = v61;
        v26 = objc_allocWithZone(MEMORY[0x1E696AB90]);
        v58 = v64;
        v59 = v65;
        v27 = [v26 initWithDecimal_];
        [v27 floatValue];
        v20 = v28;
      }

      v57 = v18;
      v30 = *(v18 + 16);
      v29 = *(v18 + 24);
      v31 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        sub_1C459D3B0((v29 > 1), v30 + 1, 1);
        v18 = v57;
      }

      ++v17;
      *(v18 + 16) = v31;
      *(v18 + 4 * v30 + 32) = v20;
    }

    while (v15 != v17);
    v51 = v5;
    v16 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v31 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v31)
    {
      v33 = MEMORY[0x1E69E7CC0];

      sub_1C4405A24();
      goto LABEL_25;
    }

    v49 = a2;
    v51 = v5;
    v18 = MEMORY[0x1E69E7CC0];
  }

  *&v64 = v16;
  sub_1C459D328();
  v32 = 0;
  v33 = v64;
  do
  {
    if (v32 >= *(v18 + 16))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
    }

    v34 = *(v18 + 4 * v32 + 32);
    sub_1C4F00318();
    sub_1C440E114(*(v54 + 20));
    *(v35 + 8) = 1;
    sub_1C440E114(*(v36 + 24));
    *(v37 + 8) = 1;
    sub_1C4434F74(*(v38 + 28));
    *(v39 + 4) = 1;
    v41 = &v13[*(v40 + 32)];
    *v41 = 0;
    *(v41 + 1) = 0;
    LODWORD(v62) = v34;
    swift_setAtWritableKeyPath();
    *&v64 = v33;
    v42 = *(v33 + 16);
    if (v42 >= *(v33 + 24) >> 1)
    {
      sub_1C440424C();
      sub_1C459D328();
      v33 = v64;
    }

    ++v32;
    *(v33 + 16) = v42 + 1;
    sub_1C43FBF6C();
    v44 = *(v43 + 72);
    sub_1C44193F0();
    sub_1C46D6DEC(v13, v45);
  }

  while (v31 != v32);

  sub_1C4405A24();
LABEL_25:
  v46 = *MEMORY[0x1E69E9840];
  return v33;
}

void sub_1C46D6718(uint64_t a1, uint64_t a2, void *a3)
{
  v31 = a2;
  v28 = a1;
  v5 = type metadata accessor for FeatureValue.BasicValue(0);
  v30 = *(v5 - 1);
  v6 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a3;
  v9 = [a3 count];
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = v9;
    v11 = MEMORY[0x1E69E7CC0];
    if (v9)
    {
      v27 = v3;
      v34 = MEMORY[0x1E69E7CC0];
      sub_1C459D380();
      v12 = 0;
      v13 = v34;
      do
      {
        v14 = [v29 objectAtIndexedSubscript_];
        v33 = v14;
        swift_getAtKeyPath();

        v15 = v32;
        v34 = v13;
        v16 = *(v13 + 16);
        v17 = v16 + 1;
        if (v16 >= *(v13 + 24) >> 1)
        {
          sub_1C459D380();
          v13 = v34;
        }

        ++v12;
        *(v13 + 16) = v17;
        *(v13 + 8 * v16 + 32) = v15;
      }

      while (v10 != v12);
      v11 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v17 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v17)
      {
LABEL_15:

        return;
      }

      v27 = v3;
      v13 = MEMORY[0x1E69E7CC0];
    }

    v34 = v11;
    sub_1C459D328();
    v18 = 0;
    v19 = v34;
    while (v18 < *(v13 + 16))
    {
      v20 = *(v13 + 8 * v18 + 32);
      sub_1C4F00318();
      v21 = &v8[v5[5]];
      *v21 = 0;
      v21[8] = 1;
      v22 = &v8[v5[6]];
      *v22 = 0;
      v22[8] = 1;
      v23 = &v8[v5[7]];
      *v23 = 0;
      v23[4] = 1;
      v24 = &v8[v5[8]];
      *v24 = 0;
      *(v24 + 1) = 0;
      v33 = v20;
      swift_setAtWritableKeyPath();
      v34 = v19;
      v25 = *(v19 + 16);
      if (v25 >= *(v19 + 24) >> 1)
      {
        sub_1C459D328();
        v19 = v34;
      }

      ++v18;
      *(v19 + 16) = v25 + 1;
      sub_1C46D6DEC(v8, v19 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v25);
      if (v17 == v18)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t EncodableConversionError.hashValue.getter()
{
  v1 = *v0;
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](v1);
  return sub_1C4F02B68();
}

unint64_t sub_1C46D6AB0()
{
  result = qword_1EC0BB430;
  if (!qword_1EC0BB430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB430);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EncodableConversionError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C46D6BE0()
{
  result = qword_1EC0BB440;
  if (!qword_1EC0BB440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB440);
  }

  return result;
}

uint64_t sub_1C46D6C34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BB438, qword_1C4F1F960);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C46D6CA4(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0BB438, qword_1C4F1F960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C46D6D30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C46D6D88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureValue.NamedValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C46D6DEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v6 = v5(v4);
  sub_1C43FBCE0(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1C46D6E74(unsigned int a1)
{
  if (a1 < 4)
  {
    return 0x1010002u >> (8 * a1);
  }

  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v3 = sub_1C4F00978();
  sub_1C442B738(v3, qword_1EDDFECB8);
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CE8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = a1;
    _os_log_impl(&dword_1C43F8000, v4, v5, "Unknown event type found in BMEnergyModeMode - %d", v6, 8u);
    MEMORY[0x1C6942830](v6, -1, -1);
  }

  return 2;
}

unint64_t sub_1C46D6F7C(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

uint64_t sub_1C46D6F8C(char a1)
{
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  strcpy((inited + 32), "lowPowerMode");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  sub_1C4577DBC();
  *(inited + 48) = sub_1C4A3B8F8(a1 == 0);
  return sub_1C4F00F28();
}

void sub_1C46D7054()
{
  v0 = [BiomeLibrary() Device];
  swift_unknownObjectRelease();
  v1 = [v0 Power];
  swift_unknownObjectRelease();
  v2 = [v1 EnergyMode];
  swift_unknownObjectRelease();
  sub_1C4580D98();
}

uint64_t type metadata accessor for EnergyModeEvent()
{
  result = qword_1EDDE81D0;
  if (!qword_1EDDE81D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C46D71B0()
{
  result = sub_1C4EF9CD8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C46D723C()
{
  result = qword_1EDDDE928;
  if (!qword_1EDDDE928)
  {
    sub_1C4572308(&qword_1EC0BB448, ":@\v");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDE928);
  }

  return result;
}

_BYTE *sub_1C46D72A0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C46D7380()
{
  result = qword_1EC0BB450;
  if (!qword_1EC0BB450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB450);
  }

  return result;
}

uint64_t sub_1C46D73DC()
{
  type metadata accessor for EnrollmentPreferences();
  sub_1C44149FC();
  v0 = swift_allocObject();
  result = EnrollmentPreferences.init(name:enrollmentDuration:)(0xD00000000000001ALL, 0x80000001C4F92700, 7776000.0);
  qword_1EDDE3C68 = v0;
  return result;
}

uint64_t EnrollmentPreferences.__allocating_init(name:enrollmentDuration:)(uint64_t a1, uint64_t a2, double a3)
{
  sub_1C44149FC();
  v6 = swift_allocObject();
  EnrollmentPreferences.init(name:enrollmentDuration:)(a1, a2, a3);
  return v6;
}

uint64_t sub_1C46D74B4()
{
  type metadata accessor for EnrollmentPreferences();
  sub_1C44149FC();
  v0 = swift_allocObject();
  result = EnrollmentPreferences.init(name:enrollmentDuration:)(0xD00000000000001CLL, 0x80000001C4F926E0, 5184000.0);
  qword_1EC0BB458 = v0;
  return result;
}

uint64_t sub_1C46D7530(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;
}

uint64_t sub_1C46D757C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v17 - v5;
  v7 = sub_1C46B6F7C();
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = sub_1C4F01108();
  v11 = [v7 stringForKey_];

  if (v11)
  {
    v12 = [*(v1 + 24) dateFromString_];

    if (v12)
    {
      sub_1C4EF9C78();

      v13 = sub_1C4EF9CD8();
      v14 = 0;
    }

    else
    {
      v13 = sub_1C4EF9CD8();
      v14 = 1;
    }

    sub_1C440BAA8(v6, v14, 1, v13);
    return sub_1C45B69E4(v6, a1);
  }

  else
  {
    v15 = sub_1C4EF9CD8();

    return sub_1C440BAA8(a1, 1, 1, v15);
  }
}

uint64_t sub_1C46D76F0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17 - v6;
  v8 = sub_1C46B6F7C();
  v9 = *(v1 + 24);
  sub_1C4467FE0(a1, v7);
  v10 = sub_1C4EF9CD8();
  v11 = 0;
  if (sub_1C44157D4(v7, 1, v10) != 1)
  {
    v11 = sub_1C4EF9BF8();
    (*(*(v10 - 8) + 8))(v7, v10);
  }

  v12 = [v9 stringForObjectValue_];
  swift_unknownObjectRelease();
  v13 = *(v2 + 32);
  v14 = *(v2 + 40);
  v15 = sub_1C4F01108();
  [v8 setObject:v12 forKey:v15];

  return sub_1C44686E4(a1);
}

uint64_t EnrollmentPreferences.isEnrolled.getter()
{
  v0 = sub_1C4EF9CD8();
  v1 = sub_1C43FCDF8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EF9CC8();
  v8 = sub_1C46D791C();
  (*(v3 + 8))(v7, v0);
  return v8 & 1;
}

uint64_t sub_1C46D791C()
{
  v1 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v20 - v3;
  v5 = sub_1C4EF9CD8();
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v6);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - v14;
  sub_1C46D757C(v4);
  if (sub_1C44157D4(v4, 1, v5) == 1)
  {
    sub_1C44686E4(v4);
    v16 = 0;
  }

  else
  {
    (*(v8 + 32))(v15, v4, v5);
    v17 = *(v0 + 48);
    sub_1C4EF9BE8();
    v16 = sub_1C4EF9C18();
    v18 = *(v8 + 8);
    v18(v13, v5);
    v18(v15, v5);
  }

  return v16 & 1;
}

uint64_t EnrollmentPreferences.init(name:enrollmentDuration:)(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 16) = 0;
  *(v3 + 24) = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  sub_1C4F02248();

  MEMORY[0x1C6940010](a1, a2);
  MEMORY[0x1C6940010](0x6D6C6C6F726E652ELL, 0xEF65746144746E65);
  *(v3 + 32) = 0x656D6C6C6F726E45;
  *(v3 + 40) = 0xEB000000002E746ELL;
  *(v3 + 48) = a3;
  type metadata accessor for DataCollectionMetadata();
  swift_allocObject();
  *(v3 + 56) = sub_1C46B6FDC(a1, a2);
  return v3;
}

Swift::Void __swiftcall EnrollmentPreferences.enroll()()
{
  v1 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1C442C7FC();
  sub_1C4EF9CC8();
  v3 = sub_1C4EF9CD8();
  sub_1C440BAA8(v0, 0, 1, v3);
  sub_1C46D76F0(v0);
}

Swift::Void __swiftcall EnrollmentPreferences.withdraw()()
{
  v1 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1C442C7FC();
  v3 = sub_1C4EF9CD8();
  sub_1C440BAA8(v0, 1, 1, v3);
  sub_1C46D76F0(v0);
}

uint64_t EnrollmentPreferences.deinit()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return v0;
}

uint64_t EnrollmentPreferences.__deallocating_deinit()
{
  EnrollmentPreferences.deinit();
  sub_1C44149FC();

  return swift_deallocClassInstance();
}

uint64_t sub_1C46D7E2C()
{
  sub_1C43FBCD4();
  v0[10] = v1;
  v0[11] = v2;
  v0[8] = v3;
  v0[9] = v4;
  v0[7] = v5;
  v6 = *(*(sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0) - 8) + 64) + 15;
  v0[12] = swift_task_alloc();
  v7 = sub_1C4EF9CD8();
  sub_1C443F170(v7);
  v0[14] = v8;
  v10 = *(v9 + 64) + 15;
  v0[15] = swift_task_alloc();
  v0[16] = swift_task_alloc();
  v0[17] = swift_task_alloc();

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C46D7F40()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  sub_1C4425A90();
  sub_1C446FB00();
  v7 = v0[12];
  v6 = v0[13];
  v8 = sub_1C440C440();
  v9 = v0[17];
  if (v8 == 1)
  {
    v10 = v0[8];
    v11 = v0[17];
    sub_1C4EF9BE8();
    if (sub_1C440C440() != 1)
    {
      sub_1C44686E4(v0[12]);
    }
  }

  else
  {
    sub_1C441C1CC();
    v12();
  }

  v13 = v0[17];
  v14 = v0[7];
  if (sub_1C4EF9C08())
  {
    v15 = v0[7];
    sub_1C4425A90();
    sub_1C448EE10();
    v22 = v0[16];
    v23 = v0[17];
    v25 = v0[14];
    v24 = v0[15];
    v26 = v0[13];
    v27 = v0[10];
    v28 = v0[7];
    sub_1C442E860(v0[9] + 24, (v0 + 2));
    v29 = *(v25 + 16);
    v29(v22, v23, v26);
    v29(v24, v28, v26);
    v30 = type metadata accessor for CachedContextProvider();
    v31 = *(v30 + 48);
    v32 = *(v30 + 52);
    swift_allocObject();
    v33 = sub_1C441D1D8();
    v0[18] = v33;

    v34 = swift_task_alloc();
    v0[19] = v34;
    *v34 = v0;
    v34[1] = sub_1C46D81F0;
    v35 = v0[10];
    v36 = v0[11];
    v37 = sub_1C440BC30(v0[17]);

    return sub_1C46D89EC(v37, v38, v33, v39, v40, v41);
  }

  else
  {
    sub_1C44088E4();
    v16 = v0[10];
    v18 = sub_1C441C948(v17);
    v19(v18);

    sub_1C43FC1B0();

    return v20();
  }
}

uint64_t sub_1C46D81F0()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = *(v2 + 152);
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 160) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C46D82F0()
{
  v1 = *(v0 + 144);

  sub_1C44088E4();
  v2 = *(v0 + 80);
  v4 = sub_1C441C948(v3);
  v5(v4);

  sub_1C43FC1B0();

  return v6();
}

uint64_t sub_1C46D83A0()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[10];

  v6 = *(v4 + 8);
  v7 = sub_1C4402120();
  v8(v7);

  sub_1C44601DC();

  sub_1C43FBDA0();

  return v9();
}

uint64_t sub_1C46D8448()
{
  sub_1C43FBCD4();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[7] = v5;
  v6 = *(*(sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0) - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v7 = sub_1C4EF9CD8();
  sub_1C443F170(v7);
  v1[14] = v8;
  v10 = *(v9 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C46D854C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  sub_1C4425A90();
  sub_1C446FB00();
  v7 = v0[12];
  v6 = v0[13];
  v8 = sub_1C440C440();
  v9 = v0[17];
  if (v8 == 1)
  {
    v10 = v0[8];
    v11 = v0[17];
    sub_1C4EF9BE8();
    if (sub_1C440C440() != 1)
    {
      sub_1C44686E4(v0[12]);
    }
  }

  else
  {
    sub_1C441C1CC();
    v12();
  }

  v13 = v0[17];
  v14 = v0[7];
  if (sub_1C4EF9C08())
  {
    v15 = v0[7];
    sub_1C4425A90();
    sub_1C448EE10();
    v21 = v0[16];
    v22 = v0[17];
    v24 = v0[14];
    v23 = v0[15];
    v25 = v0[13];
    v26 = v0[7];
    sub_1C442E860(v0[11] + 24, (v0 + 2));
    v27 = *(v24 + 16);
    v27(v21, v22, v25);
    v27(v23, v26, v25);
    v28 = type metadata accessor for CachedContextProvider();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    v31 = sub_1C441D1D8();
    v0[18] = v31;
    v32 = swift_task_alloc();
    v0[19] = v32;
    *v32 = v0;
    v32[1] = sub_1C46D87BC;
    v33 = v0[10];
    v34 = v0[11];
    v35 = sub_1C440BC30(v0[17]);

    return sub_1C46D92E0(v35, v36, v31, v37, v38);
  }

  else
  {
    sub_1C44088E4();
    v17 = sub_1C441C948(v16);
    v18(v17);

    sub_1C43FC1B0();

    return v19();
  }
}

uint64_t sub_1C46D87BC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = *(v2 + 152);
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 160) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C46D88BC()
{
  v1 = *(v0 + 144);

  sub_1C44088E4();
  v3 = sub_1C441C948(v2);
  v4(v3);

  sub_1C43FC1B0();

  return v5();
}

uint64_t sub_1C46D8954()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[13];
  v4 = v0[14];

  v5 = *(v4 + 8);
  v6 = sub_1C4402120();
  v7(v6);
  sub_1C44601DC();

  sub_1C43FBDA0();

  return v8();
}

uint64_t sub_1C46D89EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_1C4EF9CD8();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C46D8AE4, 0, 0);
}

uint64_t sub_1C46D8E58()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 144);
  v3 = *v0;
  sub_1C43FBDAC();
  *v4 = v3;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C46D92E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_1C4EF9CD8();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C46D93D8, 0, 0);
}

uint64_t sub_1C46D977C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 144);
  v3 = *v0;
  sub_1C43FBDAC();
  *v4 = v3;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1C46D9C30(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v7 = v6;
  v14 = type metadata accessor for Configuration();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  sub_1C43FBCC4();
  v18 = v17 - v16;
  sub_1C46DA590((v7 + 6), &v82);
  if (*(&v83[0] + 1))
  {
    v79 = a5;
    v81 = a1;
    sub_1C441D670(&v82, v88);
    type metadata accessor for InteractionSourceAdapterRegistry();
    v19 = v7[2];
    v20 = v7[3];
    v21 = *(a3 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v22 = v21;

    sub_1C494D274(v19, v20, v22, a4);
    v80 = v23;
    sub_1C44098F0(a3 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_config, v18);
    *&v82 = 0;
    *(&v82 + 1) = 0xE000000000000000;
    sub_1C4F02248();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    *&v82 = v81;
    *(&v82 + 1) = a2;
    MEMORY[0x1C6940010](0xD000000000000012, 0x80000001C4F92720);
    v24 = v82;
    v25 = type metadata accessor for KeyValueStore();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    v33 = KeyValueStore.init(config:domain:)(v18, v24, *(&v24 + 1));
    sub_1C442E860((v7 + 16), &v82);
    sub_1C456902C(&qword_1EC0B8EA8, &qword_1C4F111D0);
    v34 = sub_1C4EFDAB8();
    sub_1C43FCE64();
    v36 = v35;
    v38 = *(v37 + 72);
    v39 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1C4F0D130;
    (*(v36 + 104))(v40 + v39, *MEMORY[0x1E69A9418], v34);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    sub_1C4D524E0();
    v76 = v41;
    sub_1C4418280(&v82, *(&v83[0] + 1));
    v77 = &v75;
    sub_1C43FCE64();
    v43 = *(v42 + 64);
    MEMORY[0x1EEE9AC00](v44);
    sub_1C43FBCC4();
    v47 = (v46 - v45);
    (*(v48 + 16))(v46 - v45);
    v49 = *v47;
    v50 = type metadata accessor for BehaviorDatabaseEventTracker();
    v86 = v50;
    v87 = &off_1F43E2390;
    *&v85 = v49;
    type metadata accessor for EntityRelevanceEvaluationSampleProvider();
    v51 = swift_allocObject();
    sub_1C4418280(&v85, v50);
    sub_1C43FCE64();
    v53 = *(v52 + 64);
    MEMORY[0x1EEE9AC00](v54);
    sub_1C43FBCC4();
    v78 = v33;
    v57 = (v56 - v55);
    (*(v58 + 16))(v56 - v55);
    v59 = *v57;
    *(v51 + 56) = v50;
    *(v51 + 64) = &off_1F43E2390;
    *(v51 + 32) = v59;
    *(v51 + 16) = xmmword_1C4F1FD20;
    *(v51 + 72) = v19;
    *(v51 + 80) = v20;
    *(v51 + 88) = v80;
    *(v51 + 112) = 1;
    *(v51 + 120) = v76;
    *(v51 + 128) = 5;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    sub_1C440962C(&v85);
    sub_1C440962C(&v82);
    sub_1C442E860((v7 + 16), (a6 + 1));
    sub_1C442E860((v7 + 11), (a6 + 6));
    sub_1C442E860(v88, (a6 + 11));
    sub_1C442E860(v88, &v85);
    v60 = v7[19];
    v61 = sub_1C4409678(v7 + 16, v60);
    v62 = v79;
    sub_1C442E860(v79, v84);
    sub_1C442E860(v62, v83 + 8);
    *&v82 = v78;
    *(&v82 + 1) = 0xD000000000000023;
    *&v83[0] = 0x80000001C4F8DA80;
    v63 = v80;

    sub_1C440962C(v88);
    v79 = &v75;
    sub_1C43FCE64();
    v65 = *(v64 + 64);
    MEMORY[0x1EEE9AC00](v66);
    sub_1C43FBCC4();
    v69 = (v68 - v67);
    (*(v70 + 16))(v68 - v67, v61, v60);
    v71 = *v69;
    type metadata accessor for EntityInteractionHistoryIngestor();
    v72 = swift_allocObject();
    *(v72 + 160) = v50;
    *(v72 + 168) = &off_1F43E2390;
    *(v72 + 136) = v71;
    *(v72 + 80) = v19;
    *(v72 + 88) = v20;
    sub_1C441D670(&v85, v72 + 96);
    sub_1C441D670(v84, v72 + 176);
    v73 = v83[0];
    *(v72 + 16) = v82;
    *(v72 + 32) = v73;
    v74 = v83[2];
    *(v72 + 48) = v83[1];
    *(v72 + 64) = v74;
    *(v72 + 216) = v63;
    *(v72 + 224) = byte_1F43D1348;
    *a6 = v51;
    a6[16] = v78;
    a6[17] = v72;
    a6[18] = v81;
    a6[19] = a2;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    sub_1C4423A0C(&v82, &qword_1EC0BB460, &qword_1C4F5D900);
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406728();
    }

    v28 = sub_1C4F00978();
    sub_1C442B738(v28, qword_1EDE2DDE0);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v29 = sub_1C4F00968();
    v30 = sub_1C4F01CD8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v82 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_1C441D828(a1, a2, &v82);
      _os_log_impl(&dword_1C43F8000, v29, v30, "EntityRelevanceHistoricalFeatureViewGenerator: %s: Skipping entity interaction task due to nil histogram manager", v31, 0xCu);
      sub_1C440962C(v32);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    bzero(a6, 0xA0uLL);
  }
}

uint64_t sub_1C46DA590(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BB460, &qword_1C4F5D900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C46DA600(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1C46DA650(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C46DA670(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C46DA6D4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C46DA6F4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 224))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1C46DA734(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1C46DA7BC()
{
  sub_1C43FE96C();
  v92 = v0;
  v2 = v1;
  v3 = type metadata accessor for EntityInteractionHistogramDatabaseTable.CustomAttributesTableConfig.Property();
  v84 = *(v3 - 8);
  v4 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v85 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C4EFB078();
  v7 = sub_1C43FCDF8(v6);
  v90 = v8;
  v91 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v86 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v87 = (&v79 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v88 = &v79 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v89 = (&v79 - v17);
  v18 = sub_1C4EFB0B8();
  v19 = sub_1C43FCDF8(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v79 - v27;
  MEMORY[0x1EEE9AC00](v29);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v79 - v31;
  v33 = *v2;
  v34 = v2[1];
  sub_1C4EFB058();
  v93 = v2;
  v35 = v92;
  sub_1C4EFBFC8();
  if (v35)
  {
    (*(v21 + 8))(v32, v18);
  }

  else
  {
    v82 = v25;
    v83 = v28;
    v92 = *(v21 + 8);
    (v92)(v32, v18);
    v36 = v2[21];
    v37 = v2[22];
    sub_1C4EFB058();
    sub_1C4EFBFC8();
    v81 = v21;
    v38 = sub_1C43FD574();
    v92(v38);
    v39 = v2[23];
    v40 = v2[24];
    sub_1C4EFB058();
    sub_1C4EFBFC8();
    v41 = sub_1C43FD574();
    v42(v41);
    v83 = v40;
    v43 = v89;
    sub_1C4EFB058();
    sub_1C43FD428();
    v80 = v39;
    sub_1C4EFBFB8();
    v79 = v18;
    sub_1C4420C3C(v94, &qword_1EC0C5040, &qword_1C4F0F950);
    v44 = v91;
    v45 = v43;
    v46 = (v90 + 8);
    v47 = *(v90 + 8);
    (v47)(v45, v91);
    v48 = v88;
    sub_1C4EFB058();
    sub_1C43FD428();
    sub_1C4EFBFB8();
    v89 = v2;
    sub_1C4420C3C(v94, &qword_1EC0C5040, &qword_1C4F0F950);
    (v47)(v48, v44);
    v49 = v87;
    sub_1C4EFB058();
    sub_1C43FD428();
    sub_1C4412FC4();
    sub_1C4EFBFB8();
    sub_1C4420C3C(v94, &qword_1EC0C5040, &qword_1C4F0F950);
    (v47)(v49, v44);
    v50 = v89[26];
    if (v50)
    {
      v87 = v47;
      v88 = v46;
      v51 = v89[25];
      v52 = v89[27];
      v53 = v50;
      sub_1C456902C(&qword_1EC0B9BB0, &unk_1C4F20000);
      v54 = *(v81 + 72);
      v55 = (*(v81 + 80) + 32) & ~*(v81 + 80);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_1C4F0D130;
      sub_1C4EFB058();
      v94[0] = v56;
      sub_1C46DDA18(&unk_1EDDFCD18, MEMORY[0x1E699FE00]);
      v57 = sub_1C440D314();
      sub_1C456902C(v57, v58);
      sub_1C4400184();
      sub_1C4401CBC(v59, &unk_1EC0BCA80, &unk_1C4F111B0);
      v60 = sub_1C4F020C8();
      MEMORY[0x1EEE9AC00](v60);
      *(&v79 - 4) = v51;
      *(&v79 - 3) = v53;
      *(&v79 - 2) = v52;
      sub_1C4EFBFC8();
      v80 = v51;
      v81 = v53;
      v65 = sub_1C440D314();
      v92(v65);
      v66 = *(v52 + 16);
      v67 = MEMORY[0x1E69E7CC0];
      if (v66)
      {
        v94[0] = MEMORY[0x1E69E7CC0];
        sub_1C44CD9C0();
        v68 = v52 + ((*(v84 + 80) + 32) & ~*(v84 + 80));
        v67 = v94[0];
        v92 = *(v84 + 72);
        v89 = 0x80000001C4F86760;
        v83 = 0x80000001C4F86740;
        v84 = 0x80000001C4F85600;
        v82 = 0xD000000000000011;
        v69 = v85;
        do
        {
          sub_1C46DDA60(v68, v69, type metadata accessor for EntityInteractionHistogramDatabaseTable.CustomAttributesTableConfig.Property);
          v70 = 0xE800000000000000;
          v71 = 0x4449656C646E7562;
          switch(*v69)
          {
            case 1:
              v71 = v82;
              v70 = v83;
              break;
            case 2:
              v71 = 0x456E6F6973736573;
              v70 = 0xEC000000746E6576;
              break;
            case 3:
              v71 = 0xD000000000000016;
              v70 = v84;
              break;
            case 4:
              v71 = 0xD000000000000016;
              v70 = v89;
              break;
            case 5:
              v71 = 0x7463617265746E69;
              v70 = 0xEF657079546E6F69;
              break;
            case 6:
              v71 = 0x646576726573626FLL;
              v70 = 0xEB00000000656741;
              break;
            default:
              break;
          }

          sub_1C46DDAC0(v69, type metadata accessor for EntityInteractionHistogramDatabaseTable.CustomAttributesTableConfig.Property);
          v94[0] = v67;
          v72 = *(v67 + 16);
          if (v72 >= *(v67 + 24) >> 1)
          {
            sub_1C44CD9C0();
            v69 = v85;
            v67 = v94[0];
          }

          *(v67 + 16) = v72 + 1;
          v73 = v67 + 16 * v72;
          *(v73 + 32) = v71;
          *(v73 + 40) = v70;
          v68 += v92;
          --v66;
        }

        while (v66);
      }

      v94[0] = &unk_1F43D87F8;
      sub_1C449ADBC(v67);
      sub_1C456902C(&unk_1EC0BCA90, &unk_1C4F111C0);
      v74 = *(v90 + 72);
      v75 = (*(v90 + 80) + 32) & ~*(v90 + 80);
      v76 = swift_allocObject();
      *(v76 + 16) = xmmword_1C4F0CE60;
      sub_1C4EFB068();
      sub_1C4EFB058();
      v94[0] = v76;
      sub_1C46DDA18(&qword_1EDDFCD40, MEMORY[0x1E699FDD0]);
      sub_1C456902C(&unk_1EC0BCAA0, &unk_1C4F22520);
      sub_1C4400184();
      sub_1C4401CBC(v77, &unk_1EC0BCAA0, &unk_1C4F22520);
      sub_1C4F020C8();
      sub_1C43FD428();
      sub_1C4412FC4();
      sub_1C4EFBFB8();

      sub_1C4420C3C(v94, &qword_1EC0C5040, &qword_1C4F0F950);
      v78 = sub_1C440D314();
      v87(v78);
    }

    else
    {
      if (qword_1EDDFA668 != -1)
      {
        swift_once();
      }

      v61 = sub_1C4F00978();
      sub_1C442B738(v61, qword_1EDE2DDE0);
      v62 = sub_1C4F00968();
      v63 = sub_1C4F01CF8();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_1C43F8000, v62, v63, "Skipping PersonInteractionMechanism table creation", v64, 2u);
        MEMORY[0x1C6942830](v64, -1, -1);
      }
    }
  }

  sub_1C43FBC80();
}