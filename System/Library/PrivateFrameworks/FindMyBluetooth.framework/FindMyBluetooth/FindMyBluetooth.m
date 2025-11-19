void *sub_24AC19688@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_24AC196C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 112);
}

uint64_t sub_24AC19714@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 120);
  return result;
}

uint64_t sub_24AC1975C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 120) = v2;
  return result;
}

uint64_t sub_24AC197AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24ACD0420();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24AC19818(uint64_t a1, uint64_t a2)
{
  v4 = sub_24ACD0420();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24AC198C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_macAddress;
  swift_beginAccess();
  return sub_24AC2B5DC(v3 + v4, a2, &qword_27EF9E048, &qword_24ACD5910);
}

uint64_t sub_24AC19934@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_advertisementData;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_24AC1999C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_rssi;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_24AC199F8(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_rssi;
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t sub_24AC19A58()
{
  v1 = *(v0 + 48);
  if (v1 >> 60 != 15)
  {
    sub_24AC46698(*(v0 + 40), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24AC19AF4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AC19B34()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24AC19B7C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24AC19BC4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E068, &qword_24ACD4140) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 41) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = v0 + v3;
  v8 = type metadata accessor for Peripheral.Options();
  if (!(*(*(v8 - 8) + 48))(v0 + v3, 1, v8))
  {
    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for PeripheralPairingInfo();
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {
      v11 = sub_24ACD0090();
      (*(*(v11 - 8) + 8))(v9, v11);
      sub_24AC46698(*(v9 + *(v10 + 20)), *(v9 + *(v10 + 20) + 8));
    }

    v12 = *(v8 + 24);
    v13 = sub_24ACD0460();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v7 + v12, 1, v13))
    {
      (*(v14 + 8))(v7 + v12, v13);
    }
  }

  v15 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v0 + v15);

  return MEMORY[0x2821FE8E8](v0, v16 + 8, v2 | 7);
}

uint64_t sub_24AC19E08()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AC19EC8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_state;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24AC19F20(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_state;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_24AC19F84@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockSerialNumber);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_24AC1A034()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24AC1A0D4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_24AC1A130()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24AC1A194(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E120, &qword_24ACD4550);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DFE0, &qword_24ACD4098);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E110, &unk_24ACD4540);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[8] + 8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_24AC1A364(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E120, &qword_24ACD4550);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DFE0, &qword_24ACD4098);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E110, &unk_24ACD4540);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[8] + 8) = (a2 - 1);
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_24AC1A530()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AC1A568()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24AC1A5BC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AC1A5F4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24AC1A640()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24AC1A698()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 48);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_24AC1A77C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E048, &qword_24ACD5910) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  v10 = *(v0 + 32);

  v11 = sub_24ACD0090();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v3, 1, v11))
  {
    (*(v12 + 8))(v0 + v3, v11);
  }

  v13 = v2 | v7;
  v14 = (v3 + v4) & 0xFFFFFFFFFFFFFFF8;
  v15 = (((v14 + 23) & 0xFFFFFFFFFFFFFFF8) + v7 + 9) & ~v7;
  v16 = *(v0 + v14 + 8);

  (*(v6 + 8))(v0 + v15, v5);

  return MEMORY[0x2821FE8E8](v0, v15 + v8, v13 | 7);
}

uint64_t sub_24AC1A960()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AC1A9F4()
{
  v1 = sub_24ACD0420();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AC1AAB8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E690, &qword_24ACD4C10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_24ACD0420();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  v13 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_24AC1AC1C()
{
  v1 = sub_24ACD0420();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AC1AD00()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AC1AD38@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 112);
  return result;
}

uint64_t sub_24AC1AD80(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 112) = v2;
  return result;
}

uint64_t sub_24AC1ADC4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_isNotifying;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24AC1AE1C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_isNotifying;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_24AC1AE78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E170, &qword_24ACD61D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E810, &qword_24ACD61D8);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_24AC1AF84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E170, &qword_24ACD61D0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E810, &qword_24ACD61D8);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_24AC1B09C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E898, &qword_24ACD66C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_24ACD0090();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32) + 8);
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

uint64_t sub_24AC1B1C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E898, &qword_24ACD66C0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_24ACD0090();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_24AC1B2E4@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_24AC1B338()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AC1B370()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24AC1B3A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24ACD0090();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24AC1B478(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24ACD0090();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_24AC1B55C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AC1B594()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);
  sub_24ACBCED4(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_24AC1B5DC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AC1B620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24ACD0090();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24AC1B6F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24ACD0090();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_24AC1B7C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24ACD0420();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24AC1B82C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24ACD0420();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24AC1B8BC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AC1B8F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_state;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24AC1B94C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_state;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_24AC1B9A8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24AC1B9E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EEA8, &qword_24ACD90F8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_24AC1BACC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EEA8, &qword_24ACD90F8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  v13 = *(v0 + 48);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_24AC1BC3C()
{
  v1 = sub_24ACD0420();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AC1BD00()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E690, &qword_24ACD4C10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_24ACD0420();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  v13 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_24AC1BE64()
{
  v1 = sub_24ACD0420();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

_OWORD *sub_24AC1BFB8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_24AC1BFC8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

BOOL sub_24AC1C028(void *a1, uint64_t *a2)
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

void *sub_24AC1C058@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_24AC1C084@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t _s10PropertiesVwet(uint64_t a1, int a2)
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

uint64_t _s10PropertiesVwst(uint64_t result, int a2, int a3)
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

uint64_t Characteristic.Properties.description.getter()
{
  v1 = *v0;
  if ((*v0 & 1) == 0)
  {
    v2 = MEMORY[0x277D84F90];
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_24AC1CF00(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_24AC1CF00((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x616364616F72622ELL;
  *(v5 + 5) = 0xEA00000000007473;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_24AC1CF00(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_24AC1CF00((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x646165722ELL;
    *(v8 + 5) = 0xE500000000000000;
  }

LABEL_12:
  if ((v1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_24AC1CF00(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_24AC1CF00((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 0xD000000000000015;
    *(v11 + 5) = 0x800000024ACD9210;
    if ((v1 & 8) == 0)
    {
LABEL_14:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_31;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24AC1CF00(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_24AC1CF00((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  *(v14 + 4) = 0x65746972772ELL;
  *(v14 + 5) = 0xE600000000000000;
  if ((v1 & 0x10) == 0)
  {
LABEL_15:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_31:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24AC1CF00(0, *(v2 + 2) + 1, 1, v2);
  }

  v16 = *(v2 + 2);
  v15 = *(v2 + 3);
  if (v16 >= v15 >> 1)
  {
    v2 = sub_24AC1CF00((v15 > 1), v16 + 1, 1, v2);
  }

  *(v2 + 2) = v16 + 1;
  v17 = &v2[16 * v16];
  *(v17 + 4) = 0x796669746F6E2ELL;
  *(v17 + 5) = 0xE700000000000000;
  if ((v1 & 0x20) == 0)
  {
LABEL_16:
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_36:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24AC1CF00(0, *(v2 + 2) + 1, 1, v2);
  }

  v19 = *(v2 + 2);
  v18 = *(v2 + 3);
  if (v19 >= v18 >> 1)
  {
    v2 = sub_24AC1CF00((v18 > 1), v19 + 1, 1, v2);
  }

  *(v2 + 2) = v19 + 1;
  v20 = &v2[16 * v19];
  *(v20 + 4) = 0x74616369646E692ELL;
  *(v20 + 5) = 0xE900000000000065;
  if ((v1 & 0x40) == 0)
  {
LABEL_17:
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

LABEL_41:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24AC1CF00(0, *(v2 + 2) + 1, 1, v2);
  }

  v22 = *(v2 + 2);
  v21 = *(v2 + 3);
  if (v22 >= v21 >> 1)
  {
    v2 = sub_24AC1CF00((v21 > 1), v22 + 1, 1, v2);
  }

  *(v2 + 2) = v22 + 1;
  v23 = &v2[16 * v22];
  *(v23 + 4) = 0xD00000000000001ALL;
  *(v23 + 5) = 0x800000024ACD91F0;
  if ((v1 & 0x80) == 0)
  {
LABEL_18:
    if ((v1 & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_46:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24AC1CF00(0, *(v2 + 2) + 1, 1, v2);
  }

  v25 = *(v2 + 2);
  v24 = *(v2 + 3);
  if (v25 >= v24 >> 1)
  {
    v2 = sub_24AC1CF00((v24 > 1), v25 + 1, 1, v2);
  }

  *(v2 + 2) = v25 + 1;
  v26 = &v2[16 * v25];
  *(v26 + 4) = 0xD000000000000013;
  *(v26 + 5) = 0x800000024ACD91D0;
  if ((v1 & 0x100) == 0)
  {
LABEL_19:
    if ((v1 & 0x200) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_56;
  }

LABEL_51:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24AC1CF00(0, *(v2 + 2) + 1, 1, v2);
  }

  v28 = *(v2 + 2);
  v27 = *(v2 + 3);
  if (v28 >= v27 >> 1)
  {
    v2 = sub_24AC1CF00((v27 > 1), v28 + 1, 1, v2);
  }

  *(v2 + 2) = v28 + 1;
  v29 = &v2[16 * v28];
  *(v29 + 4) = 0xD000000000000019;
  *(v29 + 5) = 0x800000024ACD91B0;
  if ((v1 & 0x200) != 0)
  {
LABEL_56:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_24AC1CF00(0, *(v2 + 2) + 1, 1, v2);
    }

    v31 = *(v2 + 2);
    v30 = *(v2 + 3);
    if (v31 >= v30 >> 1)
    {
      v2 = sub_24AC1CF00((v30 > 1), v31 + 1, 1, v2);
    }

    *(v2 + 2) = v31 + 1;
    v32 = &v2[16 * v31];
    *(v32 + 4) = 0xD00000000000001BLL;
    *(v32 + 5) = 0x800000024ACD9190;
  }

LABEL_61:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9DC88, &qword_24ACD33A0);
  sub_24AC1C880();
  v33 = sub_24ACD0540();
  v35 = v34;

  MEMORY[0x24C22CD50](v33, v35);

  MEMORY[0x24C22CD50](93, 0xE100000000000000);
  return 91;
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

unint64_t sub_24AC1C880()
{
  result = qword_2814AD030;
  if (!qword_2814AD030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EF9DC88, &qword_24ACD33A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814AD030);
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

uint64_t sub_24AC1C938(uint64_t a1, id *a2)
{
  result = sub_24ACD0570();
  *a2 = 0;
  return result;
}

uint64_t sub_24AC1C9B0(uint64_t a1, id *a2)
{
  v3 = sub_24ACD0580();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_24AC1CA30@<X0>(uint64_t *a1@<X8>)
{
  sub_24ACD0590();
  v2 = sub_24ACD0560();

  *a1 = v2;
  return result;
}

uint64_t sub_24AC1CA74()
{
  v1 = *v0;
  v2 = sub_24ACD0590();
  v3 = MEMORY[0x24C22CD80](v2);

  return v3;
}

uint64_t sub_24AC1CAB0()
{
  v1 = *v0;
  sub_24ACD0590();
  sub_24ACD05E0();
}

uint64_t sub_24AC1CB04()
{
  v1 = *v0;
  sub_24ACD0590();
  sub_24ACD0D10();
  sub_24ACD05E0();
  v2 = sub_24ACD0D50();

  return v2;
}

uint64_t sub_24AC1CB84(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_24ACD0590();
  v6 = v5;
  if (v4 == sub_24ACD0590() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24ACD0C40();
  }

  return v9 & 1;
}

_DWORD *sub_24AC1CC0C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

BOOL sub_24AC1CC60(_DWORD *a1, int *a2)
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

_DWORD *sub_24AC1CC90@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_24AC1CCBC@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_24AC1CD7C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24ACD0560();

  *a2 = v5;
  return result;
}

uint64_t sub_24AC1CDC4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_24ACD0590();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_24AC1CDF0(uint64_t a1)
{
  v2 = sub_24AC1D244(&qword_2814ACFC0, type metadata accessor for CBConnectionEventMatchingOption);
  v3 = sub_24AC1D244(&qword_27EF9DCD8, type metadata accessor for CBConnectionEventMatchingOption);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24AC1CEC0@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_24ACBE270(a1);

  *a2 = v3;
  return result;
}

char *sub_24AC1CF00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDF8, &qword_24ACD37E0);
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

unint64_t sub_24AC1D010()
{
  result = qword_27EF9DC98;
  if (!qword_27EF9DC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9DC98);
  }

  return result;
}

unint64_t sub_24AC1D068()
{
  result = qword_27EF9DCA0;
  if (!qword_27EF9DCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9DCA0);
  }

  return result;
}

unint64_t sub_24AC1D0C0()
{
  result = qword_27EF9DCA8;
  if (!qword_27EF9DCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9DCA8);
  }

  return result;
}

unint64_t sub_24AC1D118()
{
  result = qword_27EF9DCB0;
  if (!qword_27EF9DCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9DCB0);
  }

  return result;
}

uint64_t sub_24AC1D244(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_24AC1D31C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9DCE0, &unk_24ACD4600);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EF9E180, &qword_24ACD3790);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24AC1D468(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDF0, &qword_24ACD8480);
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

size_t sub_24AC1D580(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

size_t sub_24AC1D768(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DD58, &qword_24ACD37A0);
  v10 = *(type metadata accessor for Device() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for Device() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_24AC1D940(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DCF0, &qword_24ACD3798);
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

void sub_24AC1DA88(uint64_t a1, unint64_t *a2)
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

uint64_t sub_24AC1DC0C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 112);
  *(v3 + 112) = v2;
}

uint64_t sub_24AC1DC6C()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
}

uint64_t sub_24AC1DCA4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = a1;
}

uint64_t sub_24AC1DD40@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 120);
  return result;
}

uint64_t sub_24AC1DD84(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 120) = v2;
  return result;
}

uint64_t MockCBDiscovery.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_id;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEA0, &qword_24ACD6AE0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MockCBDiscovery.__allocating_init()()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);
  swift_allocObject();
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AC1DF38;

  return MockCBDiscovery.init()();
}

uint64_t sub_24AC1DF38(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t MockCBDiscovery.init()()
{
  *(v1 + 16) = v0;
  v2 = *(*(sub_24ACD0420() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC1E0C4, 0, 0);
}

uint64_t sub_24AC1E0C4()
{
  v1 = v0[2];
  v2 = v0[3];
  swift_defaultActor_initialize();
  *(v1 + 112) = MEMORY[0x277D84F90];
  *(v1 + 120) = 1;
  sub_24ACD0410();
  type metadata accessor for CBDiscovery(0);
  sub_24ACD0000();
  v3 = OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_scanContinuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEB0, &qword_24ACD6B10);
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  v5 = (v1 + OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_mockScanResponder);
  *v5 = 0;
  v5[1] = 0;
  *(v1 + OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_scanTask) = 0;

  v6 = v0[1];
  v7 = v0[2];

  return v6(v7);
}

uint64_t static MockCBDiscovery.devices(with:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AC1E290;

  return sub_24AC2043C();
}

uint64_t sub_24AC1E290(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_24AC1E390(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_mockScanResponder);
  v4 = *(v2 + OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_mockScanResponder);
  v5 = *(v2 + OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_mockScanResponder + 8);
  *v3 = a1;
  v3[1] = a2;

  return sub_24AC1BFC8(v4);
}

uint64_t sub_24AC1E3E0(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEC8, &unk_24ACD6B20);
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E900, &qword_24ACD3A28) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC1E4E4, v1, 0);
}

uint64_t sub_24AC1E4E4()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_scanContinuation;
  swift_beginAccess();
  sub_24AC20748(v2 + v3, v1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEB0, &qword_24ACD6B10);
  LODWORD(v3) = (*(*(v4 - 8) + 48))(v1, 1, v4);
  sub_24AC212F4(v1, &unk_27EF9E900, &qword_24ACD3A28);
  v6 = v0[9];
  v5 = v0[10];
  if (v3 == 1)
  {
    v7 = v0[7];
    v8 = v0[8];
    v10 = v0[5];
    v9 = v0[6];
    type metadata accessor for DeviceChange(0);
    (*(v8 + 104))(v6, *MEMORY[0x277D858A0], v7);
    sub_24ACD08D0();
  }

  else
  {
    sub_24AC207C0();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_24AC1E6BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E900, &qword_24ACD3A28);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEB0, &qword_24ACD6B10);
  v13 = *(v12 - 8);
  (*(v13 + 16))(v11, a1, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  v14 = OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_scanContinuation;
  swift_beginAccess();
  sub_24AC21108(v11, a2 + v14);
  swift_endAccess();

  sub_24ACD0880();
  v15 = sub_24ACD07C0();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  v16 = sub_24AC208EC(&qword_27EF9DED8);
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = v16;
  v17[4] = a2;
  swift_retain_n();
  v18 = sub_24AC7F080(0, 0, v7, &unk_24ACD3BD8, v17);
  v19 = *(a2 + OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_scanTask);
  *(a2 + OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_scanTask) = v18;
}

uint64_t sub_24AC1E938(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  v7 = sub_24ACD07C0();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a2;

  sub_24AC7EA6C(0, 0, v6, &unk_24ACD3C08, v8);
}

uint64_t sub_24AC1EA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E900, &qword_24ACD3A28) - 8) + 64) + 15;
  *(v4 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC1EAE4, a4, 0);
}

uint64_t sub_24AC1EAE4()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEB0, &qword_24ACD6B10);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_scanContinuation;
  swift_beginAccess();
  sub_24AC21108(v2, v1 + v4);
  swift_endAccess();
  v5 = OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_scanTask;
  if (*(v1 + OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_scanTask))
  {
    v6 = *(v1 + OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_scanTask);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EC00, &qword_24ACD4690);
    sub_24ACD0830();

    v7 = *(v1 + v5);
  }

  v8 = v0[6];
  *(v1 + v5) = 0;

  v9 = v0[1];

  return v9();
}

uint64_t sub_24AC1EC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEB0, &qword_24ACD6B10);
  v4[12] = v6;
  v7 = *(v6 - 8);
  v4[13] = v7;
  v8 = *(v7 + 64) + 15;
  v4[14] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF08, &qword_24ACD3BE0) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v10 = type metadata accessor for DeviceChange(0);
  v4[16] = v10;
  v11 = *(v10 - 8);
  v4[17] = v11;
  v12 = *(v11 + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E900, &qword_24ACD3A28) - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF10, &qword_24ACD3BE8) - 8) + 64) + 15;
  v4[23] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF18, &qword_24ACD3BF0);
  v4[24] = v15;
  v16 = *(v15 - 8);
  v4[25] = v16;
  v17 = *(v16 + 64) + 15;
  v4[26] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF20, &qword_24ACD3BF8);
  v4[27] = v18;
  v19 = *(v18 - 8);
  v4[28] = v19;
  v20 = *(v19 + 64) + 15;
  v4[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC1EF00, a4, 0);
}

void sub_24AC1EF00()
{
  v1 = v0[11] + OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_mockScanResponder;
  v2 = *v1;
  v0[30] = *v1;
  if (v2)
  {
    v0[31] = *(v1 + 8);

    v6 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    v0[32] = v4;
    *v4 = v0;
    v4[1] = sub_24AC1F024;
    v5 = v0[26];

    v6(v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24AC1F024()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *(*v1 + 248);
  v5 = *(*v1 + 240);
  v6 = *v1;
  *(*v1 + 264) = v0;

  sub_24AC1BFC8(v5);
  v7 = *(v2 + 88);
  if (v0)
  {
    v8 = sub_24AC1F7B4;
  }

  else
  {
    v8 = sub_24AC1F18C;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_24AC1F18C()
{
  v1 = v0[29];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[24];
  v5 = v0[11];
  sub_24ACD0800();
  (*(v3 + 8))(v2, v4);
  v6 = sub_24AC208EC(&qword_27EF9DED8);
  v7 = OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_scanContinuation;
  v0[34] = v6;
  v0[35] = v7;
  swift_beginAccess();
  v8 = v0[34];
  v9 = v0[11];
  v10 = *(MEMORY[0x277D858B8] + 4);
  v11 = swift_task_alloc();
  v0[36] = v11;
  *v11 = v0;
  v11[1] = sub_24AC1F2B8;
  v12 = v0[29];
  v13 = v0[27];
  v14 = v0[23];

  return MEMORY[0x2822005A8](v14, v9, v8, v13, v0 + 9);
}

uint64_t sub_24AC1F2B8()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v7 = *v1;

  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_24AC1F984;
  }

  else
  {
    v5 = sub_24AC1F3CC;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AC1F3CC()
{
  v1 = v0[23];
  v2 = (*(v0[17] + 48))(v1, 1, v0[16]);
  v3 = v0[35];
  if (v2 == 1)
  {
    v4 = v0[22];
    v5 = v0[12];
    v6 = v0[13];
    v7 = v0[11];
    (*(v0[28] + 8))(v0[29], v0[27]);
    sub_24AC20748(v7 + v3, v4);
    v8 = (*(v6 + 48))(v4, 1, v5);
    v9 = v0[22];
    if (v8)
    {
      sub_24AC212F4(v0[22], &unk_27EF9E900, &qword_24ACD3A28);
    }

    else
    {
      v19 = v0[13];
      v18 = v0[14];
      v20 = v0[12];
      (*(v19 + 16))(v18, v0[22], v20);
      sub_24AC212F4(v9, &unk_27EF9E900, &qword_24ACD3A28);
      v0[10] = 0;
      sub_24ACD08A0();
      (*(v19 + 8))(v18, v20);
    }

    v21 = v0[29];
    v22 = v0[26];
    v24 = v0[22];
    v23 = v0[23];
    v26 = v0[20];
    v25 = v0[21];
    v28 = v0[18];
    v27 = v0[19];
    v30 = v0[14];
    v29 = v0[15];

    v31 = v0[1];

    return v31();
  }

  else
  {
    v10 = v0[21];
    v11 = v0[12];
    v12 = v0[13];
    v13 = v0[11];
    sub_24AC21234(v1, v0[19]);
    sub_24AC20748(v13 + v3, v10);
    v14 = (*(v12 + 48))(v10, 1, v11);
    v15 = v0[21];
    v16 = v0[19];
    if (v14)
    {
      sub_24AC21298(v0[19]);
      sub_24AC212F4(v15, &unk_27EF9E900, &qword_24ACD3A28);
      v17 = 1;
    }

    else
    {
      v33 = v0[18];
      v34 = v0[14];
      v35 = v0[12];
      v36 = v0[13];
      (*(v36 + 16))(v34, v0[21], v35);
      sub_24AC212F4(v15, &unk_27EF9E900, &qword_24ACD3A28);
      sub_24AC21354(v16, v33);
      sub_24ACD0890();
      (*(v36 + 8))(v34, v35);
      sub_24AC21298(v16);
      v17 = 0;
    }

    v37 = v0[15];
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF28, &unk_24ACD7CF0);
    (*(*(v38 - 8) + 56))(v37, v17, 1, v38);
    sub_24AC212F4(v37, &qword_27EF9DF08, &qword_24ACD3BE0);
    v39 = v0[34];
    v40 = v0[11];
    v41 = *(MEMORY[0x277D858B8] + 4);
    v42 = swift_task_alloc();
    v0[36] = v42;
    *v42 = v0;
    v42[1] = sub_24AC1F2B8;
    v43 = v0[29];
    v44 = v0[27];
    v45 = v0[23];

    return MEMORY[0x2822005A8](v45, v40, v39, v44, v0 + 9);
  }
}

uint64_t sub_24AC1F7B4()
{
  v1 = v0[33];
  v2 = v0[20];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[11];
  v6 = OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_scanContinuation;
  swift_beginAccess();
  sub_24AC20748(v5 + v6, v2);
  if ((*(v4 + 48))(v2, 1, v3))
  {
    v7 = v0[20];

    sub_24AC212F4(v7, &unk_27EF9E900, &qword_24ACD3A28);
  }

  else
  {
    v8 = v0[20];
    v10 = v0[13];
    v9 = v0[14];
    v11 = v0[12];
    (*(v10 + 16))(v9, v8, v11);
    sub_24AC212F4(v8, &unk_27EF9E900, &qword_24ACD3A28);
    v0[8] = v1;
    sub_24ACD08A0();
    (*(v10 + 8))(v9, v11);
  }

  v12 = v0[29];
  v13 = v0[26];
  v15 = v0[22];
  v14 = v0[23];
  v17 = v0[20];
  v16 = v0[21];
  v19 = v0[18];
  v18 = v0[19];
  v21 = v0[14];
  v20 = v0[15];

  v22 = v0[1];

  return v22();
}

uint64_t sub_24AC1F984()
{
  (*(v0[28] + 8))(v0[29], v0[27]);
  v1 = v0[9];
  v2 = v0[20];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[11];
  v6 = OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_scanContinuation;
  swift_beginAccess();
  sub_24AC20748(v5 + v6, v2);
  if ((*(v4 + 48))(v2, 1, v3))
  {
    v7 = v0[20];

    sub_24AC212F4(v7, &unk_27EF9E900, &qword_24ACD3A28);
  }

  else
  {
    v8 = v0[20];
    v10 = v0[13];
    v9 = v0[14];
    v11 = v0[12];
    (*(v10 + 16))(v9, v8, v11);
    sub_24AC212F4(v8, &unk_27EF9E900, &qword_24ACD3A28);
    v0[8] = v1;
    sub_24ACD08A0();
    (*(v10 + 8))(v9, v11);
  }

  v12 = v0[29];
  v13 = v0[26];
  v15 = v0[22];
  v14 = v0[23];
  v17 = v0[20];
  v16 = v0[21];
  v19 = v0[18];
  v18 = v0[19];
  v21 = v0[14];
  v20 = v0[15];

  v22 = v0[1];

  return v22();
}

uint64_t sub_24AC1FB6C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEC8, &unk_24ACD6B20);
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E900, &qword_24ACD3A28) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC1FC70, v1, 0);
}

uint64_t sub_24AC1FC70()
{
  v1 = v0[10];
  v2 = v0[6];

  v3 = OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_scanContinuation;
  swift_beginAccess();
  sub_24AC20748(v2 + v3, v1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEB0, &qword_24ACD6B10);
  LODWORD(v3) = (*(*(v4 - 8) + 48))(v1, 1, v4);
  sub_24AC212F4(v1, &unk_27EF9E900, &qword_24ACD3A28);
  v6 = v0[9];
  v5 = v0[10];
  if (v3 == 1)
  {
    v7 = v0[7];
    v8 = v0[8];
    v10 = v0[5];
    v9 = v0[6];
    type metadata accessor for DeviceChange(0);
    (*(v8 + 104))(v6, *MEMORY[0x277D858A0], v7);
    sub_24ACD08D0();
  }

  else
  {
    sub_24AC207C0();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_24AC1FE60(_BYTE *a1)
{
  *(v2 + 40) = v1;
  *(v2 + 48) = *a1;
  return MEMORY[0x2822009F8](sub_24AC1FE88, v1, 0);
}

uint64_t sub_24AC1FE88()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);
  swift_beginAccess();
  *(v2 + 120) = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t MockCBDiscovery.deinit()
{
  v1 = *(v0 + 112);

  v2 = OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_id;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEA0, &qword_24ACD6AE0);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_24AC212F4(v0 + OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_scanContinuation, &unk_27EF9E900, &qword_24ACD3A28);
  v4 = *(v0 + OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_mockScanResponder + 8);
  sub_24AC1BFC8(*(v0 + OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_mockScanResponder));
  v5 = *(v0 + OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_scanTask);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t MockCBDiscovery.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  v2 = OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_id;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEA0, &qword_24ACD6AE0);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_24AC212F4(v0 + OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_scanContinuation, &unk_27EF9E900, &qword_24ACD3A28);
  v4 = *(v0 + OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_mockScanResponder + 8);
  sub_24AC1BFC8(*(v0 + OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_mockScanResponder));
  v5 = *(v0 + OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_scanTask);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24AC2009C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AC214BC;

  return sub_24AC2043C();
}

uint64_t sub_24AC20144(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC214AC;

  return sub_24AC1E3E0(a1);
}

uint64_t sub_24AC201DC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC20274;

  return sub_24AC1FB6C(a1);
}

uint64_t sub_24AC20274()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24AC20368(_BYTE *a1)
{
  *(v2 + 40) = v1;
  *(v2 + 48) = *a1;
  return MEMORY[0x2822009F8](sub_24AC214B8, v1, 0);
}

uint64_t sub_24AC20390@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_id;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEA0, &qword_24ACD6AE0);
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_24AC2043C()
{
  v1 = sub_24ACD0360();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = *(*(sub_24ACD0420() - 8) + 64) + 15;
  v0[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC20524, 0, 0);
}

uint64_t sub_24AC20524()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DD58, &qword_24ACD37A0);
  v5 = type metadata accessor for Device();
  v6 = *(*(v5 - 1) + 72);
  v7 = (*(*(v5 - 1) + 80) + 32) & ~*(*(v5 - 1) + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_24ACD39E0;
  v9 = v8 + v7;
  sub_24ACD0410();
  sub_24ACD0000();
  v10 = v9 + v5[5];
  sub_24ACD0020();
  sub_24ACD0340();
  sub_24ACD0320();
  v12 = v11;
  (*(v4 + 8))(v2, v3);
  v13 = (v9 + v5[6]);
  v13[1] = 0;
  v13[2] = 0;
  *v13 = 8;
  *(v9 + v5[7]) = 256;
  v14 = (v9 + v5[8]);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v9 + v5[9]);
  *v15 = 0;
  v15[1] = 0;
  *(v9 + v5[10]) = 0;
  *(v9 + v5[11]) = v12;
  *(v9 + v5[12]) = 4;
  v16 = (v9 + v5[14]);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v9 + v5[15]);
  *v17 = 0;
  v17[1] = 0;
  *(v9 + v5[17]) = 0;
  *(v9 + v5[18]) = 0;
  *(v9 + v5[16]) = xmmword_24ACD39F0;
  *(v9 + v5[13]) = 0;

  v18 = v0[1];

  return v18(v8);
}

uint64_t sub_24AC20748(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E900, &qword_24ACD3A28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24AC207C0()
{
  result = qword_27EF9E920;
  if (!qword_27EF9E920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E920);
  }

  return result;
}

uint64_t sub_24AC20814(void *a1)
{
  a1[1] = sub_24AC208EC(&qword_27EF9EBE0);
  a1[2] = sub_24AC208EC(&qword_27EF9DED0);
  result = sub_24AC208EC(&qword_27EF9DED8);
  a1[3] = result;
  return result;
}

uint64_t type metadata accessor for MockCBDiscovery()
{
  result = qword_27EF9DEE8;
  if (!qword_27EF9DEE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24AC208EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MockCBDiscovery();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24AC20934()
{
  result = qword_27EF9DEE0;
  if (!qword_27EF9DEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF9DEA0, &qword_24ACD6AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9DEE0);
  }

  return result;
}

void sub_24AC209A0()
{
  sub_24AC2104C();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_24AC210A4();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of MockCBDiscovery.__allocating_init()()
{
  v5 = (*(v0 + 256) + **(v0 + 256));
  v2 = *(*(v0 + 256) + 4);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC1DF38;

  return v5();
}

uint64_t dispatch thunk of MockCBDiscovery.scan(config:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 272);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24AC214AC;

  return v10(a1, a2);
}

uint64_t dispatch thunk of MockCBDiscovery.registerProximityPairingBuffer(rssiThreshold:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 280);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24AC20274;

  return v10(a1, a2);
}

uint64_t dispatch thunk of MockCBDiscovery.setScanRate(_:)(uint64_t a1)
{
  v4 = *(*v1 + 288);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AC20274;

  return v8(a1);
}

void sub_24AC2104C()
{
  if (!qword_27EF9DEF8)
  {
    type metadata accessor for CBDiscovery(255);
    v0 = sub_24ACCFFF0();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF9DEF8);
    }
  }
}

void sub_24AC210A4()
{
  if (!qword_2814ACFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF9DEB0, &qword_24ACD6B10);
    v0 = sub_24ACD0970();
    if (!v1)
    {
      atomic_store(v0, &qword_2814ACFF0);
    }
  }
}

uint64_t sub_24AC21108(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E900, &qword_24ACD3A28);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AC21180(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AC214AC;

  return sub_24AC1EC38(a1, v4, v5, v6);
}

uint64_t sub_24AC21234(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceChange(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AC21298(uint64_t a1)
{
  v2 = type metadata accessor for DeviceChange(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24AC212F4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24AC21354(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceChange(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24AC213F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AC214AC;

  return sub_24AC1EA44(a1, v4, v5, v6);
}

uint64_t ScanRate.description.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x6E776F6E6B6E752ELL;
    v7 = 0x69646F697265702ELL;
    if (v1 != 2)
    {
      v7 = 0x6F72676B6361622ELL;
    }

    if (*v0)
    {
      v6 = 0x746C75616665642ELL;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x6D756964656D2ELL;
    v3 = 0x686769682ELL;
    if (v1 != 7)
    {
      v3 = 2019650862;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 2003790894;
    if (v1 != 4)
    {
      v4 = 0x4C6D756964656D2ELL;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

FindMyBluetooth::ScanRate_optional __swiftcall ScanRate.init(rawValue:)(Swift::Int32 rawValue)
{
  if (rawValue <= 29)
  {
    if (rawValue > 9)
    {
      if (rawValue == 10)
      {
        *v1 = 2;
        return rawValue;
      }

      if (rawValue == 20)
      {
        *v1 = 3;
        return rawValue;
      }
    }

    else
    {
      if (rawValue == -1)
      {
        *v1 = 0;
        return rawValue;
      }

      if (!rawValue)
      {
        *v1 = 1;
        return rawValue;
      }
    }

LABEL_22:
    *v1 = 9;
    return rawValue;
  }

  if (rawValue <= 39)
  {
    if (rawValue == 30)
    {
      *v1 = 4;
      return rawValue;
    }

    if (rawValue == 35)
    {
      *v1 = 5;
      return rawValue;
    }

    goto LABEL_22;
  }

  if (rawValue == 40)
  {
    *v1 = 6;
    return rawValue;
  }

  if (rawValue == 50)
  {
    *v1 = 7;
    return rawValue;
  }

  if (rawValue != 60)
  {
    goto LABEL_22;
  }

  *v1 = 8;
  return rawValue;
}

unint64_t sub_24AC216E4()
{
  result = qword_27EF9DF30;
  if (!qword_27EF9DF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9DF30);
  }

  return result;
}

uint64_t sub_24AC21738()
{
  v1 = *v0;
  sub_24ACD0D10();
  v2 = dword_24ACD3D5C[v1];
  sub_24ACD0D40();
  return sub_24ACD0D50();
}

uint64_t sub_24AC217C0()
{
  v1 = *v0;
  sub_24ACD0D10();
  v2 = dword_24ACD3D5C[v1];
  sub_24ACD0D40();
  return sub_24ACD0D50();
}

uint64_t getEnumTagSinglePayload for ScanRate(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ScanRate(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24AC21A40()
{
  result = qword_27EF9DF38;
  if (!qword_27EF9DF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9DF38);
  }

  return result;
}

uint64_t ServiceUUID.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24ACD0420();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ServiceUUID.init(uuid:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24ACD0420();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t ServiceUUID.init(stringLiteral:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EC40, &qword_24ACD8620);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  sub_24ACD03B0();
  v6 = sub_24ACD0420();
  v7 = *(v6 - 8);
  result = (*(v7 + 48))(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    return (*(v7 + 32))(a1, v5, v6);
  }

  return result;
}

uint64_t ServiceUUID.hash(into:)()
{
  sub_24ACD0420();
  sub_24AC221E0(&qword_2814AE200, MEMORY[0x277CC95F0]);

  return sub_24ACD0530();
}

uint64_t ServiceUUID.hashValue.getter()
{
  sub_24ACD0D10();
  sub_24ACD0420();
  sub_24AC221E0(&qword_2814AE200, MEMORY[0x277CC95F0]);
  sub_24ACD0530();
  return sub_24ACD0D50();
}

uint64_t sub_24AC21D94()
{
  sub_24ACD0D10();
  sub_24ACD0420();
  sub_24AC221E0(&qword_2814AE200, MEMORY[0x277CC95F0]);
  sub_24ACD0530();
  return sub_24ACD0D50();
}

uint64_t sub_24AC21E1C()
{
  sub_24ACD0420();
  sub_24AC221E0(&qword_2814AE200, MEMORY[0x277CC95F0]);

  return sub_24ACD0530();
}

uint64_t sub_24AC21EA0()
{
  sub_24ACD0D10();
  sub_24ACD0420();
  sub_24AC221E0(&qword_2814AE200, MEMORY[0x277CC95F0]);
  sub_24ACD0530();
  return sub_24ACD0D50();
}

uint64_t sub_24AC21F28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EC40, &qword_24ACD8620);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = *a1;
  v9 = a1[1];
  sub_24ACD03B0();
  v10 = sub_24ACD0420();
  v11 = *(v10 - 8);
  result = (*(v11 + 48))(v7, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    return (*(v11 + 32))(a2, v7, v10);
  }

  return result;
}

uint64_t ServiceUUID.description.getter()
{
  strcpy(v2, "ServiceUUID(");
  v0 = sub_24ACD03C0();
  MEMORY[0x24C22CD50](v0);

  MEMORY[0x24C22CD50](41, 0xE100000000000000);
  return v2[0];
}

uint64_t type metadata accessor for ServiceUUID()
{
  result = qword_27EF9DF58;
  if (!qword_27EF9DF58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24AC221E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24AC22240()
{
  strcpy(v2, "ServiceUUID(");
  v0 = sub_24ACD03C0();
  MEMORY[0x24C22CD50](v0);

  MEMORY[0x24C22CD50](41, 0xE100000000000000);
  return v2[0];
}

uint64_t sub_24AC222D8()
{
  result = sub_24ACD0420();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24AC22370()
{
  v0 = sub_24ACD0490();
  __swift_allocate_value_buffer(v0, qword_27EF9DF68);
  v1 = __swift_project_value_buffer(v0, qword_27EF9DF68);
  if (qword_2814AD278 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814AD280);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t Service.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth7Service_id;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24AC224E8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E110, &unk_24ACD4540) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DFE0, &qword_24ACD4098) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v3[12] = v9;
  v10 = *(v9 - 8);
  v3[13] = v10;
  v11 = *(v10 + 64) + 15;
  v3[14] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E120, &qword_24ACD4550);
  v3[15] = v12;
  v13 = *(v12 - 8);
  v3[16] = v13;
  v14 = *(v13 + 64) + 15;
  v3[17] = swift_task_alloc();
  v15 = type metadata accessor for PeerPath();
  v3[18] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v17 = sub_24ACD0420();
  v3[21] = v17;
  v18 = *(v17 - 8);
  v3[22] = v18;
  v19 = *(v18 + 64) + 15;
  v3[23] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v3[24] = v20;
  v21 = *(v20 - 8);
  v3[25] = v21;
  v22 = *(v21 + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC2281C, 0, 0);
}

uint64_t sub_24AC2281C()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[23];
  v80 = v0[22];
  v62 = v0[19];
  v63 = v0[18];
  v64 = v0[21];
  v73 = v0[17];
  v75 = v0[16];
  v67 = v0[15];
  v69 = v0[14];
  v77 = v0[13];
  v71 = v0[11];
  v65 = v0[10];
  v60 = v0[9];
  v58 = v0[12];
  v59 = v0[6];
  v61 = v0[5];
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];
  swift_defaultActor_initialize();
  swift_weakInit();
  v8 = OBJC_IVAR____TtC15FindMyBluetooth7Service_discoverCharacteristicsContinuation;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  (*(*(v9 - 8) + 56))(v5 + v8, 1, 1, v9);
  *(v5 + OBJC_IVAR____TtC15FindMyBluetooth7Service_characteristics) = MEMORY[0x277D84F98];
  *(v5 + OBJC_IVAR____TtC15FindMyBluetooth7Service_autoDiscoverCount) = 0;
  v10 = *(v6 + 16);
  v0[28] = v10;
  v57 = v10;
  v11 = [v57 UUID];
  CBUUID.uuidValue.getter(v4);

  type metadata accessor for Service();
  sub_24ACD0000();
  v12 = OBJC_IVAR____TtC15FindMyBluetooth7Service_id;
  v55 = *(v3 + 32);
  v55(v5 + OBJC_IVAR____TtC15FindMyBluetooth7Service_id, v1, v2);
  swift_weakAssign();
  *(v5 + OBJC_IVAR____TtC15FindMyBluetooth7Service_underlyingObject) = v57;
  v13 = *(v75 + 16);
  v13(v73, v7 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v67);
  v56 = *(v77 + 16);
  v56(v69, v7 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_id, v58);
  (*(v3 + 16))(v71, v5 + v12, v2);
  (*(v3 + 56))(v71, 0, 1, v2);
  (*(v59 + 56))(v60, 1, 1, v61);
  v13(v62, v73, v67);
  v56(v62 + v63[5], v69, v58);
  sub_24AC2B5DC(v71, v62 + v63[6], &qword_27EF9DFE0, &qword_24ACD4098);
  sub_24AC2B5DC(v60, v62 + v63[7], &unk_27EF9E110, &unk_24ACD4540);
  v14 = v57;
  sub_24ACCFFE0();
  sub_24AC2B420(&qword_27EF9E4E0, MEMORY[0x277CC95F0]);
  v15 = sub_24ACD0C20();
  v17 = v16;
  v18 = *(v80 + 8);
  v18(v4, v64);
  MEMORY[0x24C22CD50](47, 0xE100000000000000);
  sub_24ACCFFE0();
  v19 = sub_24ACD0C20();
  MEMORY[0x24C22CD50](v19);

  v18(v4, v64);
  v81 = v15;
  v82 = v17;
  sub_24AC2B5DC(v71, v65, &qword_27EF9DFE0, &qword_24ACD4098);
  if ((*(v3 + 48))(v65, 1, v2) == 1)
  {
    sub_24AC212F4(v0[10], &qword_27EF9DFE0, &qword_24ACD4098);
  }

  else
  {
    v21 = v0[25];
    v20 = v0[26];
    v23 = v0[23];
    v22 = v0[24];
    v78 = v18;
    v24 = v0[21];
    v55(v20, v0[10], v22);
    sub_24ACCFFE0();
    v25 = shortCBUUIDDescription(uuid:)(v23);
    v27 = v26;
    v28 = v24;
    v18 = v78;
    v78(v23, v28);
    MEMORY[0x24C22CD50](v25, v27);

    MEMORY[0x24C22CD50](47, 0xE100000000000000);

    (*(v21 + 8))(v20, v22);
  }

  v29 = v0[8];
  v30 = v0[5];
  v31 = v0[6];
  sub_24AC2B5DC(v0[9], v29, &unk_27EF9E110, &unk_24ACD4540);
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    v33 = v0[16];
    v32 = v0[17];
    v35 = v0[14];
    v34 = v0[15];
    v36 = v0[12];
    v37 = v0[13];
    v38 = v0[11];
    v39 = v0[8];
    sub_24AC212F4(v0[9], &unk_27EF9E110, &unk_24ACD4540);
    sub_24AC212F4(v38, &qword_27EF9DFE0, &qword_24ACD4098);
    (*(v37 + 8))(v35, v36);
    (*(v33 + 8))(v32, v34);
    sub_24AC212F4(v39, &unk_27EF9E110, &unk_24ACD4540);
  }

  else
  {
    v40 = v0[23];
    v66 = v0[21];
    v41 = v0[16];
    v76 = v0[15];
    v79 = v0[17];
    v42 = v0[13];
    v72 = v0[12];
    v74 = v0[14];
    v68 = v0[9];
    v70 = v0[11];
    v43 = v0[6];
    v44 = v0[7];
    v45 = v0[5];
    (*(v43 + 32))(v44, v0[8], v45);
    sub_24ACCFFE0();
    v46 = shortCBUUIDDescription(uuid:)(v40);
    v47 = v18;
    v49 = v48;
    v47(v40, v66);
    MEMORY[0x24C22CD50](v46, v49);

    MEMORY[0x24C22CD50](47, 0xE100000000000000);

    (*(v43 + 8))(v44, v45);
    sub_24AC212F4(v68, &unk_27EF9E110, &unk_24ACD4540);
    sub_24AC212F4(v70, &qword_27EF9DFE0, &qword_24ACD4098);
    (*(v42 + 8))(v74, v72);
    (*(v41 + 8))(v79, v76);
  }

  v50 = v0[19];
  v51 = v0[20];
  v52 = v0[4];
  v53 = (v50 + *(v0[18] + 32));
  *v53 = v81;
  v53[1] = v82;
  sub_24AC2B644(v50, v51);
  sub_24AC2B644(v51, v52 + OBJC_IVAR____TtC15FindMyBluetooth7Service_peerPath);

  return MEMORY[0x2822009F8](sub_24AC22FF0, v52, 0);
}

uint64_t sub_24AC22FF0()
{
  v34 = v0;
  if (qword_27EF9DC30 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_24ACD0490();
  __swift_project_value_buffer(v2, qword_27EF9DF68);

  v3 = sub_24ACD0470();
  v4 = sub_24ACD0900();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[28];
  if (v5)
  {
    v7 = v0[4];
    v31 = v0[3];
    v8 = v0[2];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v33 = v10;
    *v9 = 136315138;

    v11 = sub_24AC284E4();
    v13 = v12;

    v14 = sub_24AC29E20(v11, v13, &v33);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_24AC18000, v3, v4, "%s init", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x24C22DC60](v10, -1, -1);
    MEMORY[0x24C22DC60](v9, -1, -1);
  }

  else
  {
    v16 = v0[2];
    v15 = v0[3];
  }

  v18 = v0[26];
  v17 = v0[27];
  v19 = v0[23];
  v21 = v0[19];
  v20 = v0[20];
  v22 = v0[17];
  v23 = v0[14];
  v25 = v0[10];
  v24 = v0[11];
  v26 = v0[9];
  v30 = v0[8];
  v32 = v0[7];

  v27 = v0[1];
  v28 = v0[4];

  return v27(v28);
}

uint64_t Service.deinit()
{
  v1 = v0;
  if (qword_27EF9DC30 != -1)
  {
    swift_once();
  }

  v2 = sub_24ACD0490();
  __swift_project_value_buffer(v2, qword_27EF9DF68);

  v3 = sub_24ACD0470();
  v4 = sub_24ACD0900();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v7 = sub_24AC284E4();
    v9 = sub_24AC29E20(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_24AC18000, v3, v4, "%s deinit", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C22DC60](v6, -1, -1);
    MEMORY[0x24C22DC60](v5, -1, -1);
  }

  v10 = OBJC_IVAR____TtC15FindMyBluetooth7Service_id;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  (*(*(v11 - 8) + 8))(v1 + v10, v11);
  sub_24AC234B4(v1 + OBJC_IVAR____TtC15FindMyBluetooth7Service_peerPath);
  swift_weakDestroy();
  sub_24AC212F4(v1 + OBJC_IVAR____TtC15FindMyBluetooth7Service_discoverCharacteristicsContinuation, &qword_27EF9E4F0, &unk_24ACD4130);

  v12 = *(v1 + OBJC_IVAR____TtC15FindMyBluetooth7Service_characteristics);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_24AC234B4(uint64_t a1)
{
  v2 = type metadata accessor for PeerPath();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Service.__deallocating_deinit()
{
  Service.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24AC2353C(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v2[8] = *v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC23600, v1, 0);
}

uint64_t sub_24AC23600()
{
  v1 = v0[7];
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = v0[9];
    v5 = v0[7];
    v6 = OBJC_IVAR____TtC15FindMyBluetooth7Service_discoverCharacteristicsContinuation;
    swift_beginAccess();
    sub_24AC2B5DC(v5 + v6, v4, &qword_27EF9E4F0, &unk_24ACD4130);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
    LODWORD(v5) = (*(*(v7 - 8) + 48))(v4, 1, v7);
    sub_24AC212F4(v4, &qword_27EF9E4F0, &unk_24ACD4130);
    if (v5 == 1)
    {

      return MEMORY[0x2822009F8](sub_24AC23874, v3, 0);
    }

    type metadata accessor for CentralManager.Error();
    sub_24AC2B420(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    type metadata accessor for CentralManager.Error();
    sub_24AC2B420(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v8 = v0[9];

  v9 = v0[1];

  return v9();
}

uint64_t sub_24AC23874()
{
  v1 = [*(*(v0 + 80) + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject) state];
  v2 = *(v0 + 56);
  if (v1 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        v3 = sub_24AC2BA04;
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v3 = sub_24AC23A48;
  }

  else
  {
    if (v1)
    {
      if (v1 == 1)
      {
        v3 = sub_24AC23958;
        goto LABEL_11;
      }

LABEL_8:
      v3 = sub_24AC2BA04;
      goto LABEL_11;
    }

    v3 = sub_24AC2BA04;
  }

LABEL_11:

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_24AC23958()
{
  v1 = v0[10];
  type metadata accessor for CentralManager.Error();
  sub_24AC2B420(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_24AC23A48()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[6];
  v5 = swift_task_alloc();
  v0[11] = v5;
  v5[2] = v2;
  v5[3] = v4;
  v5[4] = v3;
  v6 = swift_task_alloc();
  v0[12] = v6;
  v6[2] = v2;
  v6[3] = v1;
  v6[4] = v3;
  v7 = sub_24AC2B420(&qword_27EF9DF80, type metadata accessor for Service);
  v8 = *(MEMORY[0x277D85A10] + 4);
  v9 = swift_task_alloc();
  v0[13] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF88, &qword_24ACD3F50);
  *v9 = v0;
  v9[1] = sub_24AC23BB4;

  return MEMORY[0x282200830](v0 + 5, &unk_24ACD3F48, v5, sub_24AC2A360, v6, v2, v7, v10);
}

uint64_t sub_24AC23BB4()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v10 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = v2[7];
    v5 = sub_24AC23D58;
  }

  else
  {
    v7 = v2[11];
    v6 = v2[12];
    v8 = v2[7];

    v5 = sub_24AC23CE4;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AC23CE4()
{
  v2 = v0[9];
  v1 = v0[10];

  v3 = v0[5];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_24AC23D58()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];

  v4 = v0[14];
  v5 = v0[9];

  v6 = v0[1];

  return v6();
}

uint64_t sub_24AC23DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a3;
  v4[20] = a4;
  v4[17] = a1;
  v4[18] = a2;
  v6 = type metadata accessor for PeerPath();
  v4[21] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v8 = sub_24ACD0420();
  v4[23] = v8;
  v9 = *(v8 - 8);
  v4[24] = v9;
  v10 = *(v9 + 64) + 15;
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v4[27] = v11;
  v12 = *(v11 - 8);
  v4[28] = v12;
  v13 = *(v12 + 64) + 15;
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC23FA4, a2, 0);
}

uint64_t sub_24AC23FA4()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  sub_24AC2B420(&qword_27EF9DF80, type metadata accessor for Service);
  v4 = swift_task_alloc();
  v0[38] = v4;
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[39] = v6;
  *v6 = v0;
  v6[1] = sub_24AC240E0;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_24AC240E0()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v9 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v4 = *(v2 + 144);
    v5 = sub_24AC26694;
  }

  else
  {
    v6 = *(v2 + 304);
    v7 = *(v2 + 144);

    v5 = sub_24AC24208;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AC24208()
{
  v217 = v0;
  v1 = [*(v0[18] + OBJC_IVAR____TtC15FindMyBluetooth7Service_underlyingObject) characteristics];
  v2 = &unk_2814AD000;
  v3 = MEMORY[0x277D84F90];
  if (v1)
  {
    v4 = v1;
    v5 = v0[28];
    v7 = v0[18];
    v6 = v0[19];
    sub_24AC2B8F8(0, &qword_27EF9DFF0, 0x277CBE000);
    v8 = sub_24ACD0700();
    v0[41] = v8;

    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = v3;
    }

    v0[42] = sub_24AC653A0(v9);

    v10 = OBJC_IVAR____TtC15FindMyBluetooth7Service_characteristics;
    v0[43] = OBJC_IVAR____TtC15FindMyBluetooth7Service_characteristics;
    swift_beginAccess();
    v11 = *(v7 + v10);
    v12 = v3;
    v13 = -1;
    v14 = -1 << *(v11 + 32);
    if (-v14 < 64)
    {
      v13 = ~(-1 << -v14);
    }

    v15 = v13 & *(v11 + 64);
    v16 = (63 - v14) >> 6;
    v17 = (v5 + 16);
    v210 = (v5 + 32);
    swift_bridgeObjectRetain_n();
    v18 = 0;
    if (!v15)
    {
      goto LABEL_10;
    }

    do
    {
LABEL_8:
      while (1)
      {
        v19 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
        if (*(*(v11 + 56) + ((v18 << 9) | (8 * v19))))
        {
          break;
        }

        if (!v15)
        {
          goto LABEL_10;
        }
      }

      v200 = v0[36];
      v202 = v0[37];
      v21 = v17;
      v22 = v0[27];
      v206 = v21;
      (*v21)();
      v23 = v202;
      v203 = *v210;
      (*v210)(v23, v200, v22);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_24AC1D2D4(0, v12[2] + 1, 1, v12);
      }

      v25 = v12[2];
      v24 = v12[3];
      v26 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        v29 = sub_24AC1D2D4(v24 > 1, v25 + 1, 1, v12);
        v26 = v25 + 1;
        v12 = v29;
      }

      v27 = v0[37];
      v28 = v0[27];
      v12[2] = v26;
      v203(v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v25, v27, v28);
      v17 = v206;
    }

    while (v15);
    while (1)
    {
LABEL_10:
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_108;
      }

      if (v20 >= v16)
      {
        break;
      }

      v15 = *(v11 + 64 + 8 * v20);
      ++v18;
      if (v15)
      {
        v18 = v20;
        goto LABEL_8;
      }
    }

    v0[44] = sub_24AC653A0(v12);

    if (v8 >> 62)
    {
      goto LABEL_113;
    }

    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  else
  {
    if (qword_27EF9DC30 != -1)
    {
LABEL_115:
      swift_once();
    }

    v65 = v0[18];
    v66 = sub_24ACD0490();
    __swift_project_value_buffer(v66, qword_27EF9DF68);

    v67 = sub_24ACD0470();
    v68 = sub_24ACD0910();

    if (os_log_type_enabled(v67, v68))
    {
      v70 = v0[21];
      v69 = v0[22];
      v71 = v0[18];
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v216 = v73;
      *v72 = 136446210;
      sub_24AC2A3DC(v71 + OBJC_IVAR____TtC15FindMyBluetooth7Service_peerPath, v69);
      v74 = (v69 + *(v70 + 32));
      v75 = *v74;
      v76 = v74[1];

      sub_24AC234B4(v69);
      v77 = v75;
      v2 = 0x2814AD000;
      v78 = sub_24AC29E20(v77, v76, &v216);

      *(v72 + 4) = v78;
      _os_log_impl(&dword_24AC18000, v67, v68, "%{public}s: CBService.characteristics was unexpectedly nil!", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v73);
      MEMORY[0x24C22DC60](v73, -1, -1);
      MEMORY[0x24C22DC60](v72, -1, -1);
    }

LABEL_88:
    v165 = v0[18];
    v166 = *(v2 + 616);
    swift_beginAccess();
    v167 = *(v165 + v166);
    v168 = *(v167 + 64);
    v216 = v3;
    v169 = -1;
    v170 = -1 << *(v167 + 32);
    if (-v170 < 64)
    {
      v169 = ~(-1 << -v170);
    }

    v171 = v169 & v168;
    v172 = (63 - v170) >> 6;
    swift_bridgeObjectRetain_n();
    v173 = 0;
    if (!v171)
    {
      goto LABEL_93;
    }

    do
    {
LABEL_91:
      while (1)
      {
        v174 = __clz(__rbit64(v171));
        v171 &= v171 - 1;
        v175 = *(v167 + 56);
        v176 = (v173 << 9) | (8 * v174);
        if (*(v175 + v176))
        {
          break;
        }

        if (!v171)
        {
          goto LABEL_93;
        }
      }

      v178 = *(v175 + v176);

      MEMORY[0x24C22CE30](v179);
      if (*((v216 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v216 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v180 = *((v216 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24ACD0720();
      }

      sub_24ACD0730();
      v3 = v216;
    }

    while (v171);
LABEL_93:
    while (1)
    {
      v177 = v173 + 1;
      if (__OFADD__(v173, 1))
      {
        break;
      }

      if (v177 >= v172)
      {
        v182 = v0[36];
        v181 = v0[37];
        v184 = v0[34];
        v183 = v0[35];
        v186 = v0[32];
        v185 = v0[33];
        v197 = v0[31];
        v199 = v0[30];
        v201 = v0[29];
        v205 = v0[26];
        v209 = v0[25];
        v215 = v0[22];
        v187 = v0[17];

        *v187 = v3;

        v188 = v0[1];

        return v188();
      }

      v171 = *(v167 + 64 + 8 * v177);
      ++v173;
      if (v171)
      {
        v173 = v177;
        goto LABEL_91;
      }
    }

LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    result = sub_24ACD0B30();
  }

  v0[45] = result;
  if (!result)
  {
    goto LABEL_44;
  }

  v31 = 0;
  v0[46] = OBJC_IVAR____TtC15FindMyBluetooth7Service_peerPath;
  v32 = 0x278FFC000uLL;
  while (1)
  {
    v33 = v0[41];
    if ((v33 & 0xC000000000000001) != 0)
    {
      v34 = MEMORY[0x24C22D1B0](v31);
    }

    else
    {
      if (v31 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v34 = *(v33 + 8 * v31 + 32);
    }

    v0[47] = v34;
    v0[48] = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      goto LABEL_112;
    }

    v35 = v0[44];
    v36 = v0[35];
    v38 = v0[25];
    v37 = v0[26];
    v39 = v0[23];
    v40 = v0[24];
    v211 = v34;
    v41 = [v34 *(v32 + 3992)];
    CBUUID.uuidValue.getter(v37);

    (*(v40 + 16))(v38, v37, v39);
    v207 = type metadata accessor for Characteristic();
    sub_24ACD0000();
    if (!*(v35 + 16))
    {
      break;
    }

    v42 = v0[44];
    v43 = v0[35];
    v44 = v0[27];
    v45 = *(v42 + 40);
    sub_24AC2B6A8(&qword_27EF9DF98, &qword_27EF9DDE8, &unk_24ACD37D0);
    v46 = sub_24ACD0520();
    v47 = -1 << *(v42 + 32);
    v48 = v46 & ~v47;
    if (((*(v42 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v48) & 1) == 0)
    {
      break;
    }

    v49 = ~v47;
    v50 = v0[28];
    v51 = *(v50 + 72);
    v52 = *(v50 + 16);
    v53 = v0[44];
    while (1)
    {
      v54 = v0[34];
      v56 = v0[27];
      v55 = v0[28];
      v52(v54, *(v53 + 48) + v48 * v51, v56);
      sub_24AC2B6A8(&qword_27EF9DFE8, &qword_27EF9DDE8, &unk_24ACD37D0);
      v57 = sub_24ACD0550();
      v58 = *(v55 + 8);
      v58(v54, v56);
      if (v57)
      {
        break;
      }

      v53 = v0[44];
      v48 = (v48 + 1) & v49;
      if (((*(v53 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v48) & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    v59 = v0[35];
    v61 = v0[26];
    v60 = v0[27];
    v63 = v0[23];
    v62 = v0[24];

    v58(v59, v60);
    result = (*(v62 + 8))(v61, v63);
    v31 = v0[48];
    v32 = 0x278FFC000;
    if (v31 == v0[45])
    {
      v64 = v0[44];
LABEL_44:

      v86 = v0[43];
      v87 = v0[41];
      v88 = v0[18];

      v89 = *(v88 + v86);
      v90 = -1;
      v91 = -1 << *(v89 + 32);
      if (-v91 < 64)
      {
        v90 = ~(-1 << -v91);
      }

      v92 = v90 & *(v89 + 64);
      v93 = (63 - v91) >> 6;
      swift_bridgeObjectRetain_n();
      v94 = 0;
      v95 = MEMORY[0x277D84F90];
      if (!v92)
      {
        goto LABEL_49;
      }

      do
      {
LABEL_47:
        while (1)
        {
          v96 = __clz(__rbit64(v92));
          v92 &= v92 - 1;
          v97 = *(*(v89 + 56) + ((v94 << 9) | (8 * v96)));
          if (v97)
          {
            break;
          }

          if (!v92)
          {
            goto LABEL_49;
          }
        }

        v99 = v0[32];
        v212 = v0[33];
        v101 = v0[27];
        v100 = v0[28];
        (*(v100 + 16))(v99, v97 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_id, v101);
        v102 = v212;
        v213 = *(v100 + 32);
        v213(v102, v99, v101);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v95 = sub_24AC1D2D4(0, v95[2] + 1, 1, v95);
        }

        v104 = v95[2];
        v103 = v95[3];
        if (v104 >= v103 >> 1)
        {
          v95 = sub_24AC1D2D4(v103 > 1, v104 + 1, 1, v95);
        }

        v105 = v0[33];
        v106 = v0[27];
        v107 = v0[28];
        v95[2] = v104 + 1;
        v213(v95 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v104, v105, v106);
      }

      while (v92);
      while (1)
      {
LABEL_49:
        v98 = v94 + 1;
        if (__OFADD__(v94, 1))
        {
          goto LABEL_109;
        }

        if (v98 >= v93)
        {
          break;
        }

        v92 = *(v89 + 64 + 8 * v98);
        ++v94;
        if (v92)
        {
          v94 = v98;
          goto LABEL_47;
        }
      }

      v108 = v0[42];

      v109 = sub_24AC653A0(v95);

      if (*(v109 + 16) <= *(v108 + 16) >> 3)
      {
        v216 = v0[42];
        sub_24AC5A620(v109);

        v204 = v216;
      }

      else
      {
        v204 = sub_24AC5AA68(v109, v0[42]);
      }

      v3 = 0;
      v110 = v204 + 56;
      v111 = -1;
      v112 = -1 << *(v204 + 32);
      if (-v112 < 64)
      {
        v111 = ~(-1 << -v112);
      }

      v2 = v111 & *(v204 + 56);
      v191 = v0[18];
      v192 = v0[21];
      v190 = OBJC_IVAR____TtC15FindMyBluetooth7Service_peerPath;
      v113 = (63 - v112) >> 6;
      v208 = (v0[28] + 8);
      v196 = v113;
      while (2)
      {
        if (!v2)
        {
          while (1)
          {
            v118 = v3 + 1;
            if (__OFADD__(v3, 1))
            {
              goto LABEL_110;
            }

            if (v118 >= v113)
            {

              v3 = MEMORY[0x277D84F90];
              v2 = &unk_2814AD000;
              goto LABEL_88;
            }

            v2 = *(v110 + 8 * v118);
            ++v3;
            if (v2)
            {
              v3 = v118;
              break;
            }
          }
        }

        v120 = v0[30];
        v119 = v0[31];
        v122 = v0[27];
        v121 = v0[28];
        v198 = *(v121 + 72);
        v214 = *(v121 + 16);
        v214(v119, *(v204 + 48) + v198 * (__clz(__rbit64(v2)) | (v3 << 6)), v122);
        (*(v121 + 32))(v120, v119, v122);
        if (qword_27EF9DC30 != -1)
        {
          swift_once();
        }

        v124 = v0[29];
        v123 = v0[30];
        v125 = v0[27];
        v126 = v0[18];
        v127 = sub_24ACD0490();
        __swift_project_value_buffer(v127, qword_27EF9DF68);
        v214(v124, v123, v125);

        v128 = sub_24ACD0470();
        v129 = sub_24ACD0930();

        v130 = os_log_type_enabled(v128, v129);
        v131 = v0[29];
        v132 = v0[27];
        if (v130)
        {
          v133 = v0[22];
          v194 = v129;
          v134 = swift_slowAlloc();
          v195 = swift_slowAlloc();
          v216 = v195;
          *v134 = 136446466;
          sub_24AC2A3DC(v191 + v190, v133);
          v135 = (v133 + *(v192 + 32));
          log = v128;
          v137 = *v135;
          v136 = v135[1];

          sub_24AC234B4(v133);
          v138 = sub_24AC29E20(v137, v136, &v216);

          *(v134 + 4) = v138;
          *(v134 + 12) = 2082;
          sub_24AC2B6A8(&qword_27EF9DFD0, &qword_27EF9DDE8, &unk_24ACD37D0);
          v139 = sub_24ACD0C20();
          v141 = v140;
          v142 = *v208;
          (*v208)(v131, v132);
          v143 = sub_24AC29E20(v139, v141, &v216);

          *(v134 + 14) = v143;
          _os_log_impl(&dword_24AC18000, log, v194, "%{public}s: No characteristics discovered for %{public}s", v134, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C22DC60](v195, -1, -1);
          MEMORY[0x24C22DC60](v134, -1, -1);
        }

        else
        {

          v142 = *v208;
          (*v208)(v131, v132);
        }

        v144 = v0[43];
        v145 = v0[30];
        v146 = v0[18];
        swift_beginAccess();
        v147 = *(v146 + v144);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v149 = *(v146 + v144);
        v216 = v149;
        v150 = sub_24AC2ACEC(v145, &qword_27EF9DDE8, &unk_24ACD37D0, &qword_27EF9DF98, &qword_27EF9DFE8);
        v152 = v149[2];
        v153 = (v151 & 1) == 0;
        v154 = __OFADD__(v152, v153);
        v155 = v152 + v153;
        if (v154)
        {
          goto LABEL_111;
        }

        v156 = v151;
        if (v149[3] >= v155)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_82;
          }

          v164 = v150;
          sub_24AC5E3CC();
          v150 = v164;
          v149 = v216;
          if (v156)
          {
            goto LABEL_65;
          }

LABEL_83:
          v159 = v0[30];
          v160 = v0[27];
          v149[(v150 >> 6) + 8] |= 1 << v150;
          v161 = v150;
          v214(v149[6] + v150 * v198, v159, v160);
          *(v149[7] + 8 * v161) = 0;
          v162 = v149[2];
          v154 = __OFADD__(v162, 1);
          v163 = v162 + 1;
          if (v154)
          {
            __break(1u);
            goto LABEL_115;
          }

          v149[2] = v163;
          v115 = 1;
        }

        else
        {
          v157 = v0[30];
          sub_24AC5BF38(v155, isUniquelyReferenced_nonNull_native);
          v149 = v216;
          v150 = sub_24AC2ACEC(v157, &qword_27EF9DDE8, &unk_24ACD37D0, &qword_27EF9DF98, &qword_27EF9DFE8);
          if ((v156 & 1) != (v158 & 1))
          {
            v189 = v0[27];

            return sub_24ACD0C80();
          }

LABEL_82:
          if ((v156 & 1) == 0)
          {
            goto LABEL_83;
          }

LABEL_65:
          v114 = v149[7];
          v115 = *(v114 + 8 * v150);
          *(v114 + 8 * v150) = 0;
        }

        v2 &= v2 - 1;
        v116 = v0[30];
        v117 = v0[27];
        *(v0[18] + v0[43]) = v149;
        sub_24AC2B7BC(v115);
        swift_endAccess();
        v142(v116, v117);
        v113 = v196;
        v110 = v204 + 56;
        continue;
      }
    }
  }

LABEL_41:
  v79 = v0[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DFF8, &qword_24ACD40B0);
  inited = swift_initStackObject();
  v0[49] = inited;
  *(inited + 16) = v211;
  v81 = *(v207 + 48);
  v82 = *(v207 + 52);
  swift_allocObject();

  v83 = v211;
  v84 = swift_task_alloc();
  v0[50] = v84;
  *v84 = v0;
  v84[1] = sub_24AC25314;
  v85 = v0[18];

  return sub_24AC49DF4(v85, inited);
}

uint64_t sub_24AC25314(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 400);
  v6 = *v2;
  v4[51] = a1;
  v4[52] = v1;

  v7 = v3[49];
  if (v1)
  {
    v8 = v4[44];
    v9 = v4[41];
    v10 = v4[42];
    v11 = v4[18];

    v12 = sub_24AC2654C;
    v13 = v11;
  }

  else
  {
    v13 = v4[18];
    v12 = sub_24AC25478;
  }

  return MEMORY[0x2822009F8](v12, v13, 0);
}

uint64_t sub_24AC25478()
{
  v1 = v0[51];
  v2 = v0[43];
  v3 = v0[35];
  v4 = v0[18];
  swift_beginAccess();

  v5 = *(v4 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v4 + v2);
  *(v4 + v2) = 0x8000000000000000;
  sub_24AC633C0(v1, v3, isUniquelyReferenced_nonNull_native);
  *(v4 + v2) = v8;
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_24AC25550, v1, 0);
}

uint64_t sub_24AC25550()
{
  v1 = v0[51];
  v2 = v0[18];
  v0[53] = sub_24ACA2CB0();
  v0[54] = v3;

  return MEMORY[0x2822009F8](sub_24AC255C0, v2, 0);
}

id sub_24AC255C0()
{
  v205 = v0;
  if (qword_27EF9DC30 != -1)
  {
    goto LABEL_89;
  }

  while (1)
  {
    v1 = v0[54];
    v2 = v0[18];
    v188 = sub_24ACD0490();
    __swift_project_value_buffer(v188, qword_27EF9DF68);

    v3 = sub_24ACD0470();
    v4 = sub_24ACD0930();

    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[54];
    if (v5)
    {
      log = v0[53];
      v179 = v0[51];
      v175 = v0[46];
      v181 = v0[28];
      v183 = v0[47];
      v184 = v0[27];
      v186 = v0[35];
      v190 = v0[24];
      v193 = v0[23];
      v197 = v0[26];
      v8 = v0[21];
      v7 = v0[22];
      v9 = v0[18];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v204 = v11;
      *v10 = 136446466;
      sub_24AC2A3DC(v9 + v175, v7);
      v12 = (v7 + *(v8 + 32));
      v13 = *v12;
      v14 = v12[1];

      sub_24AC234B4(v7);
      v15 = sub_24AC29E20(v13, v14, &v204);

      *(v10 + 4) = v15;
      *(v10 + 12) = 2082;
      v16 = sub_24AC29E20(log, v6, &v204);

      *(v10 + 14) = v16;
      _os_log_impl(&dword_24AC18000, v3, v4, "%{public}s: Discovered characteristic: %{public}s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C22DC60](v11, -1, -1);
      MEMORY[0x24C22DC60](v10, -1, -1);

      (*(v181 + 8))(v186, v184);
      result = (*(v190 + 8))(v197, v193);
    }

    else
    {
      v18 = v0[51];
      v19 = v0[47];
      v20 = v0[35];
      v21 = v0[27];
      v22 = v0[28];
      v198 = v0[26];
      v24 = v0[23];
      v23 = v0[24];

      (*(v22 + 8))(v20, v21);
      result = (*(v23 + 8))(v198, v24);
    }

    v25 = v0[48];
    if (v25 != v0[45])
    {
      break;
    }

LABEL_6:
    v26 = v0[44];

    v27 = v0[43];
    v28 = v0[41];
    v29 = v0[18];

    v30 = *(v29 + v27);
    v31 = -1;
    v32 = -1 << *(v30 + 32);
    if (-v32 < 64)
    {
      v31 = ~(-1 << -v32);
    }

    v33 = v31 & *(v30 + 64);
    v34 = (63 - v32) >> 6;
    swift_bridgeObjectRetain_n();
    v35 = 0;
    v36 = MEMORY[0x277D84F90];
    v171 = MEMORY[0x277D84F90];
    if (!v33)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      while (1)
      {
        v37 = __clz(__rbit64(v33));
        v33 &= v33 - 1;
        v38 = *(*(v30 + 56) + ((v35 << 9) | (8 * v37)));
        if (v38)
        {
          break;
        }

        if (!v33)
        {
          goto LABEL_11;
        }
      }

      v40 = v0[32];
      v199 = v0[33];
      v42 = v0[27];
      v41 = v0[28];
      (*(v41 + 16))(v40, v38 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_id, v42);
      v43 = v199;
      v200 = *(v41 + 32);
      v200(v43, v40, v42);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_24AC1D2D4(0, v36[2] + 1, 1, v36);
      }

      v45 = v36[2];
      v44 = v36[3];
      if (v45 >= v44 >> 1)
      {
        v36 = sub_24AC1D2D4(v44 > 1, v45 + 1, 1, v36);
      }

      v46 = v0[33];
      v47 = v0[27];
      v48 = v0[28];
      v36[2] = v45 + 1;
      v200(v36 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v45, v46, v47);
    }

    while (v33);
LABEL_11:
    while (1)
    {
      v39 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v39 >= v34)
      {
        v49 = v0[42];

        v50 = sub_24AC653A0(v36);

        if (*(v50 + 16) <= *(v49 + 16) >> 3)
        {
          v204 = v0[42];
          sub_24AC5A620(v50);

          v191 = v204;
        }

        else
        {
          v191 = sub_24AC5AA68(v50, v0[42]);
        }

        v89 = 0;
        v90 = v191 + 56;
        v91 = -1;
        v92 = -1 << *(v191 + 32);
        if (-v92 < 64)
        {
          v91 = ~(-1 << -v92);
        }

        v93 = v91 & *(v191 + 56);
        v173 = v0[18];
        v174 = v0[21];
        v172 = OBJC_IVAR____TtC15FindMyBluetooth7Service_peerPath;
        v94 = (63 - v92) >> 6;
        v195 = (v0[28] + 8);
        v182 = v94;
        while (2)
        {
          if (!v93)
          {
            while (1)
            {
              v99 = v89 + 1;
              if (__OFADD__(v89, 1))
              {
                goto LABEL_86;
              }

              if (v99 >= v94)
              {

                v145 = v0[18];
                v146 = OBJC_IVAR____TtC15FindMyBluetooth7Service_characteristics;
                swift_beginAccess();
                v147 = *(v145 + v146);
                v148 = *(v147 + 64);
                v204 = MEMORY[0x277D84F90];
                v149 = -1;
                v150 = -1 << *(v147 + 32);
                if (-v150 < 64)
                {
                  v149 = ~(-1 << -v150);
                }

                v151 = v149 & v148;
                v152 = (63 - v150) >> 6;
                swift_bridgeObjectRetain_n();
                v153 = 0;
                if (!v151)
                {
                  goto LABEL_71;
                }

                do
                {
LABEL_69:
                  while (1)
                  {
                    v154 = __clz(__rbit64(v151));
                    v151 &= v151 - 1;
                    v155 = *(v147 + 56);
                    v156 = (v153 << 9) | (8 * v154);
                    if (*(v155 + v156))
                    {
                      break;
                    }

                    if (!v151)
                    {
                      goto LABEL_71;
                    }
                  }

                  v158 = *(v155 + v156);

                  MEMORY[0x24C22CE30](v159);
                  if (*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v204 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    v160 = *((v204 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    sub_24ACD0720();
                  }

                  sub_24ACD0730();
                  v171 = v204;
                }

                while (v151);
LABEL_71:
                while (1)
                {
                  v157 = v153 + 1;
                  if (__OFADD__(v153, 1))
                  {
                    goto LABEL_87;
                  }

                  if (v157 >= v152)
                  {
                    v162 = v0[36];
                    v161 = v0[37];
                    v164 = v0[34];
                    v163 = v0[35];
                    v166 = v0[32];
                    v165 = v0[33];
                    v167 = v0[31];
                    v187 = v0[30];
                    v189 = v0[29];
                    v192 = v0[26];
                    v196 = v0[25];
                    v203 = v0[22];
                    v168 = v0[17];

                    *v168 = v171;

                    v169 = v0[1];

                    return v169();
                  }

                  v151 = *(v147 + 64 + 8 * v157);
                  ++v153;
                  if (v151)
                  {
                    v153 = v157;
                    goto LABEL_69;
                  }
                }
              }

              v93 = *(v90 + 8 * v99);
              ++v89;
              if (v93)
              {
                v89 = v99;
                break;
              }
            }
          }

          v100 = v0[30];
          v101 = v0[31];
          v103 = v0[27];
          v102 = v0[28];
          v185 = *(v102 + 72);
          v202 = *(v102 + 16);
          v202(v101, *(v191 + 48) + v185 * (__clz(__rbit64(v93)) | (v89 << 6)), v103);
          (*(v102 + 32))(v100, v101, v103);
          if (qword_27EF9DC30 != -1)
          {
            swift_once();
          }

          v104 = v0[29];
          v105 = v0[30];
          v106 = v0[27];
          v107 = v0[18];
          __swift_project_value_buffer(v188, qword_27EF9DF68);
          v202(v104, v105, v106);

          v108 = sub_24ACD0470();
          v109 = sub_24ACD0930();

          v110 = os_log_type_enabled(v108, v109);
          v111 = v0[29];
          v112 = v0[27];
          if (v110)
          {
            v113 = v0[22];
            loga = v108;
            v114 = swift_slowAlloc();
            v180 = swift_slowAlloc();
            v204 = v180;
            *v114 = 136446466;
            sub_24AC2A3DC(v173 + v172, v113);
            v115 = (v113 + *(v174 + 32));
            v176 = v109;
            v117 = *v115;
            v116 = v115[1];

            sub_24AC234B4(v113);
            v118 = sub_24AC29E20(v117, v116, &v204);

            *(v114 + 4) = v118;
            *(v114 + 12) = 2082;
            sub_24AC2B6A8(&qword_27EF9DFD0, &qword_27EF9DDE8, &unk_24ACD37D0);
            v119 = sub_24ACD0C20();
            v121 = v120;
            v122 = *v195;
            (*v195)(v111, v112);
            v123 = sub_24AC29E20(v119, v121, &v204);

            *(v114 + 14) = v123;
            _os_log_impl(&dword_24AC18000, loga, v176, "%{public}s: No characteristics discovered for %{public}s", v114, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x24C22DC60](v180, -1, -1);
            MEMORY[0x24C22DC60](v114, -1, -1);
          }

          else
          {

            v122 = *v195;
            (*v195)(v111, v112);
          }

          v124 = v0[43];
          v125 = v0[30];
          v126 = v0[18];
          swift_beginAccess();
          v127 = *(v126 + v124);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v129 = *(v126 + v124);
          v204 = v129;
          v130 = sub_24AC2ACEC(v125, &qword_27EF9DDE8, &unk_24ACD37D0, &qword_27EF9DF98, &qword_27EF9DFE8);
          v132 = v129[2];
          v133 = (v131 & 1) == 0;
          v134 = __OFADD__(v132, v133);
          v135 = v132 + v133;
          if (v134)
          {
            goto LABEL_88;
          }

          v136 = v131;
          if (v129[3] >= v135)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_61;
            }

            v144 = v130;
            sub_24AC5E3CC();
            v130 = v144;
            v129 = v204;
            if (v136)
            {
              goto LABEL_44;
            }

LABEL_62:
            v139 = v0[30];
            v140 = v0[27];
            v129[(v130 >> 6) + 8] |= 1 << v130;
            v141 = v130;
            result = (v202)(v129[6] + v130 * v185, v139, v140);
            *(v129[7] + 8 * v141) = 0;
            v142 = v129[2];
            v134 = __OFADD__(v142, 1);
            v143 = v142 + 1;
            if (v134)
            {
              __break(1u);
              goto LABEL_91;
            }

            v129[2] = v143;
            v96 = 1;
          }

          else
          {
            v137 = v0[30];
            sub_24AC5BF38(v135, isUniquelyReferenced_nonNull_native);
            v129 = v204;
            v130 = sub_24AC2ACEC(v137, &qword_27EF9DDE8, &unk_24ACD37D0, &qword_27EF9DF98, &qword_27EF9DFE8);
            if ((v136 & 1) != (v138 & 1))
            {
              v170 = v0[27];

              return sub_24ACD0C80();
            }

LABEL_61:
            if ((v136 & 1) == 0)
            {
              goto LABEL_62;
            }

LABEL_44:
            v95 = v129[7];
            v96 = *(v95 + 8 * v130);
            *(v95 + 8 * v130) = 0;
          }

          v93 &= v93 - 1;
          v97 = v0[30];
          v98 = v0[27];
          *(v0[18] + v0[43]) = v129;
          sub_24AC2B7BC(v96);
          swift_endAccess();
          v122(v97, v98);
          v94 = v182;
          v90 = v191 + 56;
          continue;
        }
      }

      v33 = *(v30 + 64 + 8 * v39);
      ++v35;
      if (v33)
      {
        v35 = v39;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    swift_once();
  }

  v51 = 0x278FFC000uLL;
  while (1)
  {
    v52 = v0[41];
    if ((v52 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x24C22D1B0](v25);
    }

    else
    {
      if (v25 >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_92;
      }

      result = *(v52 + 8 * v25 + 32);
    }

    v0[47] = result;
    v0[48] = v25 + 1;
    if (__OFADD__(v25, 1))
    {
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
      return result;
    }

    v53 = v0[44];
    v54 = v0[35];
    v56 = v0[25];
    v55 = v0[26];
    v57 = v0[23];
    v58 = v0[24];
    v201 = result;
    v59 = [result *(v51 + 3992)];
    CBUUID.uuidValue.getter(v55);

    (*(v58 + 16))(v56, v55, v57);
    v194 = type metadata accessor for Characteristic();
    sub_24ACD0000();
    if (!*(v53 + 16))
    {
      break;
    }

    v60 = v0[44];
    v61 = v0[35];
    v62 = v0[27];
    v63 = *(v60 + 40);
    sub_24AC2B6A8(&qword_27EF9DF98, &qword_27EF9DDE8, &unk_24ACD37D0);
    v64 = sub_24ACD0520();
    v65 = -1 << *(v60 + 32);
    v66 = v64 & ~v65;
    if (((*(v60 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v66) & 1) == 0)
    {
      break;
    }

    v67 = ~v65;
    v68 = v0[28];
    v69 = *(v68 + 72);
    v70 = *(v68 + 16);
    v71 = v0[44];
    while (1)
    {
      v72 = v0[34];
      v73 = v0[27];
      v74 = v0[28];
      v70(v72, *(v71 + 48) + v66 * v69, v73);
      sub_24AC2B6A8(&qword_27EF9DFE8, &qword_27EF9DDE8, &unk_24ACD37D0);
      v75 = sub_24ACD0550();
      v76 = *(v74 + 8);
      v76(v72, v73);
      if (v75)
      {
        break;
      }

      v71 = v0[44];
      v66 = (v66 + 1) & v67;
      if (((*(v71 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v66) & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    v77 = v0[35];
    v79 = v0[26];
    v78 = v0[27];
    v80 = v0[23];
    v81 = v0[24];

    v76(v77, v78);
    result = (*(v81 + 8))(v79, v80);
    v25 = v0[48];
    v51 = 0x278FFC000;
    if (v25 == v0[45])
    {
      goto LABEL_6;
    }
  }

LABEL_37:
  v82 = v0[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DFF8, &qword_24ACD40B0);
  inited = swift_initStackObject();
  v0[49] = inited;
  *(inited + 16) = v201;
  v84 = *(v194 + 48);
  v85 = *(v194 + 52);
  swift_allocObject();

  v86 = v201;
  v87 = swift_task_alloc();
  v0[50] = v87;
  *v87 = v0;
  v87[1] = sub_24AC25314;
  v88 = v0[18];

  return sub_24AC49DF4(v88, inited);
}

uint64_t sub_24AC2654C()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v4 = *(v0 + 208);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);

  (*(v3 + 8))(v1, v2);
  (*(v6 + 8))(v4, v5);
  v8 = *(v0 + 288);
  v7 = *(v0 + 296);
  v10 = *(v0 + 272);
  v9 = *(v0 + 280);
  v12 = *(v0 + 256);
  v11 = *(v0 + 264);
  v14 = *(v0 + 240);
  v13 = *(v0 + 248);
  v15 = *(v0 + 232);
  v16 = *(v0 + 208);
  v19 = *(v0 + 200);
  v20 = *(v0 + 176);
  v21 = *(v0 + 416);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_24AC26694()
{
  v1 = v0[38];

  v3 = v0[36];
  v2 = v0[37];
  v5 = v0[34];
  v4 = v0[35];
  v7 = v0[32];
  v6 = v0[33];
  v9 = v0[30];
  v8 = v0[31];
  v10 = v0[29];
  v11 = v0[26];
  v14 = v0[25];
  v15 = v0[22];
  v16 = v0[40];

  v12 = v0[1];

  return v12();
}

uint64_t sub_24AC2679C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v23 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v17 = *(v16 - 8);
  (*(v17 + 16))(v15, a1, v16);
  (*(v17 + 56))(v15, 0, 1, v16);
  v18 = OBJC_IVAR____TtC15FindMyBluetooth7Service_discoverCharacteristicsContinuation;
  swift_beginAccess();
  sub_24AC2AAE0(v15, a2 + v18);
  swift_endAccess();
  v19 = sub_24ACD07C0();
  (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  v20 = sub_24AC2B420(&qword_27EF9DF80, type metadata accessor for Service);
  v21 = swift_allocObject();
  v21[2] = a2;
  v21[3] = v20;
  v21[4] = a3;
  v21[5] = a2;
  v21[6] = a4;

  swift_retain_n();
  sub_24AC7EA6C(0, 0, v11, &unk_24ACD40C0, v21);
}

uint64_t sub_24AC26A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v7 = type metadata accessor for PeerPath();
  v5[5] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = sub_24ACD0420();
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v5[10] = v12;
  v13 = *(v12 - 8);
  v5[11] = v13;
  v14 = *(v13 + 64) + 15;
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC26B68, a5, 0);
}

uint64_t sub_24AC26B68()
{
  v51 = v0;
  v1 = v0[3];
  if (v1)
  {
    v2 = *(v1 + 16);
    v3 = MEMORY[0x277D84F90];
    if (v2)
    {
      v4 = v0[11];
      v5 = v0[8];
      v50 = MEMORY[0x277D84F90];
      sub_24ACD0AB0();
      v6 = objc_opt_self();
      v7 = *(v4 + 16);
      v4 += 16;
      v46 = v7;
      v47 = v6;
      v8 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
      v44 = (v5 + 8);
      v45 = *(v4 + 56);
      v9 = (v4 - 8);
      do
      {
        v10 = v0[12];
        v12 = v0[9];
        v11 = v0[10];
        v13 = v0[7];
        v46(v10, v8, v11);
        sub_24ACCFFE0();
        v14 = sub_24ACD03D0();
        v15 = [v47 UUIDWithNSUUID_];

        (*v44)(v12, v13);
        (*v9)(v10, v11);
        sub_24ACD0A90();
        v16 = *(v50 + 16);
        sub_24ACD0AC0();
        sub_24ACD0AD0();
        sub_24ACD0AA0();
        v8 += v45;
        --v2;
      }

      while (v2);
      v3 = v50;
    }
  }

  else
  {
    v3 = 0;
  }

  if (qword_27EF9DC30 != -1)
  {
    swift_once();
  }

  v18 = v0[3];
  v17 = v0[4];
  v19 = sub_24ACD0490();
  __swift_project_value_buffer(v19, qword_27EF9DF68);

  v20 = sub_24ACD0470();
  v21 = sub_24ACD08F0();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = v0[5];
    v23 = v0[6];
    v24 = v0[4];
    v48 = v0[3];
    v25 = swift_slowAlloc();
    v49 = v3;
    v50 = swift_slowAlloc();
    v26 = v50;
    *v25 = 136446466;
    sub_24AC2A3DC(v24 + OBJC_IVAR____TtC15FindMyBluetooth7Service_peerPath, v23);
    v27 = (v23 + *(v22 + 32));
    v28 = *v27;
    v29 = v27[1];

    sub_24AC234B4(v23);
    v30 = sub_24AC29E20(v28, v29, &v50);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2082;
    v0[2] = v48;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E000, &qword_24ACD40C8);
    v31 = sub_24ACD05A0();
    v33 = sub_24AC29E20(v31, v32, &v50);

    *(v25 + 14) = v33;
    _os_log_impl(&dword_24AC18000, v20, v21, "%{public}s: Calling discoverCharacteristics: %{public}s", v25, 0x16u);
    swift_arrayDestroy();
    v34 = v26;
    v3 = v49;
    MEMORY[0x24C22DC60](v34, -1, -1);
    MEMORY[0x24C22DC60](v25, -1, -1);
  }

  v35 = *(v0[4] + OBJC_IVAR____TtC15FindMyBluetooth7Service_underlyingObject);
  v36 = [v35 peripheral];
  if (v36)
  {
    v37 = v36;
    if (v3)
    {
      sub_24AC2B8F8(0, &qword_27EF9E150, 0x277CBE0A0);
      v38 = sub_24ACD06F0();
    }

    else
    {
      v38 = 0;
    }

    [v37 discoverCharacteristics:v38 forService:v35];
  }

  else
  {
  }

  v39 = v0[12];
  v40 = v0[9];
  v41 = v0[6];

  v42 = v0[1];

  return v42();
}

uint64_t sub_24AC26FC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - v6;
  v8 = type metadata accessor for PeerPath();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF9DC30 != -1)
  {
    swift_once();
  }

  v12 = sub_24ACD0490();
  __swift_project_value_buffer(v12, qword_27EF9DF68);

  v13 = sub_24ACD0470();
  v14 = sub_24ACD0930();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v16;
    *v15 = 136446210;
    sub_24AC2A3DC(a1 + OBJC_IVAR____TtC15FindMyBluetooth7Service_peerPath, v11);
    v17 = &v11[*(v8 + 32)];
    v18 = *v17;
    v19 = v17[1];

    sub_24AC234B4(v11);
    v20 = sub_24AC29E20(v18, v19, &v25);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_24AC18000, v13, v14, "%{public}s cancelling characteristic discovery.", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x24C22DC60](v16, -1, -1);
    MEMORY[0x24C22DC60](v15, -1, -1);
  }

  sub_24ACD07A0();
  v21 = sub_24ACD07C0();
  (*(*(v21 - 8) + 56))(v7, 0, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = a1;
  v22[5] = a2;

  sub_24AC7F080(0, 0, v7, &unk_24ACD40A8, v22);
}

uint64_t sub_24AC27290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130) - 8) + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC27330, a4, 0);
}

uint64_t sub_24AC27330()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = OBJC_IVAR____TtC15FindMyBluetooth7Service_discoverCharacteristicsContinuation;
  swift_beginAccess();
  sub_24AC2AAE0(v1, v2 + v4);
  swift_endAccess();
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_24AC27460;
  v6 = *(v0 + 64);

  return sub_24AC318F0((v0 + 40));
}

uint64_t sub_24AC27460()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24AC2759C, 0, 0);
  }

  else
  {
    v4 = v3[9];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_24AC2759C()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_24AC27600(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_24ACD0420();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = type metadata accessor for PeerPath();
  v2[10] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v2[12] = v8;
  v9 = *(v8 - 8);
  v2[13] = v9;
  v10 = *(v9 + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC27758, v1, 0);
}

uint64_t sub_24AC27758()
{
  v56 = v0;
  v1 = v0[6];
  v2 = OBJC_IVAR____TtC15FindMyBluetooth7Service_characteristics;
  v0[15] = OBJC_IVAR____TtC15FindMyBluetooth7Service_characteristics;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {
    v4 = v0[5];

    v5 = sub_24AC2ACEC(v4, &qword_27EF9DDE8, &unk_24ACD37D0, &qword_27EF9DF98, &qword_27EF9DFE8);
    if (v6)
    {
      v7 = *(*(v3 + 56) + 8 * v5);

      if (v7)
      {
        v8 = v0[14];
        v9 = v0[11];
        v10 = v0[9];

        v11 = v0[1];

        return v11(v7);
      }
    }

    else
    {
    }
  }

  v13 = v0[6];
  v14 = *(v13 + OBJC_IVAR____TtC15FindMyBluetooth7Service_autoDiscoverCount);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_18:
    swift_once();
LABEL_11:
    v18 = v0[13];
    v17 = v0[14];
    v19 = v0[12];
    v20 = v0[5];
    v21 = v0[6];
    v22 = sub_24ACD0490();
    __swift_project_value_buffer(v22, qword_27EF9DF68);
    (*(v18 + 16))(v17, v20, v19);

    v23 = sub_24ACD0470();
    v24 = sub_24ACD0910();

    v25 = os_log_type_enabled(v23, v24);
    v26 = v0[13];
    v27 = v0[14];
    v28 = v0[12];
    if (v25)
    {
      log = v23;
      v30 = v0[10];
      v29 = v0[11];
      v53 = v24;
      v31 = v0[8];
      v32 = v0[9];
      v33 = v0[6];
      v51 = v0[7];
      v34 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v55 = v52;
      *v34 = 136446466;
      sub_24AC2A3DC(v33 + OBJC_IVAR____TtC15FindMyBluetooth7Service_peerPath, v29);
      v35 = (v29 + *(v30 + 32));
      v37 = *v35;
      v36 = v35[1];

      sub_24AC234B4(v29);
      v38 = sub_24AC29E20(v37, v36, &v55);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2082;
      sub_24ACCFFE0();
      sub_24AC2B420(&qword_27EF9E4E0, MEMORY[0x277CC95F0]);
      v39 = sub_24ACD0C20();
      v41 = v40;
      (*(v31 + 8))(v32, v51);
      (*(v26 + 8))(v27, v28);
      v42 = sub_24AC29E20(v39, v41, &v55);

      *(v34 + 14) = v42;
      _os_log_impl(&dword_24AC18000, log, v53, "%{public}s: Inefficient autoDiscovery for %{public}s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C22DC60](v52, -1, -1);
      MEMORY[0x24C22DC60](v34, -1, -1);
    }

    else
    {

      (*(v26 + 8))(v27, v28);
    }

    goto LABEL_14;
  }

  *(v13 + OBJC_IVAR____TtC15FindMyBluetooth7Service_autoDiscoverCount) = v16;
  if (v16 >= 2)
  {
    if (qword_27EF9DC30 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

LABEL_14:
  v43 = v0[12];
  v44 = v0[13];
  v45 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE0, &qword_24ACD37C8);
  v46 = *(v44 + 72);
  v47 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v48 = swift_allocObject();
  v0[16] = v48;
  *(v48 + 16) = xmmword_24ACD39E0;
  (*(v44 + 16))(v48 + v47, v45, v43);
  v49 = swift_task_alloc();
  v0[17] = v49;
  *v49 = v0;
  v49[1] = sub_24AC27C18;
  v50 = v0[6];

  return sub_24AC2353C(v48);
}

uint64_t sub_24AC27C18()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v5 = *(v2 + 48);
    v6 = sub_24AC280D8;
  }

  else
  {
    v7 = *(v2 + 128);
    v8 = *(v2 + 48);

    v6 = sub_24AC27D60;
    v5 = v8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AC27D60()
{
  v31 = v0;
  v1 = *(v0[6] + v0[15]);
  if (*(v1 + 16))
  {
    v2 = v0[5];
    v3 = *(v0[6] + v0[15]);

    v4 = sub_24AC2ACEC(v2, &qword_27EF9DDE8, &unk_24ACD37D0, &qword_27EF9DF98, &qword_27EF9DFE8);
    if (v5)
    {
      v6 = *(*(v1 + 56) + 8 * v4);

      if (v6)
      {
        v7 = v0[14];
        v8 = v0[11];
        v9 = v0[9];

        v10 = v0[1];

        return v10(v6);
      }
    }

    else
    {
    }
  }

  if (qword_27EF9DC30 != -1)
  {
    swift_once();
  }

  v12 = v0[6];
  v13 = sub_24ACD0490();
  __swift_project_value_buffer(v13, qword_27EF9DF68);

  v14 = sub_24ACD0470();
  v15 = sub_24ACD0910();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = v0[15];
    v17 = v0[12];
    v18 = v0[6];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v30 = v20;
    *v19 = 136315138;
    v21 = *(v18 + v16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF90, &qword_24ACD3F60);
    sub_24AC2B6A8(&qword_27EF9DF98, &qword_27EF9DDE8, &unk_24ACD37D0);
    v22 = sub_24ACD0510();
    v24 = v23;

    v25 = sub_24AC29E20(v22, v24, &v30);

    *(v19 + 4) = v25;
    _os_log_impl(&dword_24AC18000, v14, v15, "Missing characteristic during auto-discovery: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x24C22DC60](v20, -1, -1);
    MEMORY[0x24C22DC60](v19, -1, -1);
  }

  type metadata accessor for CentralManager.Error();
  sub_24AC2B420(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v26 = v0[14];
  v27 = v0[11];
  v28 = v0[9];

  v29 = v0[1];

  return v29();
}

uint64_t sub_24AC280D8()
{
  v1 = v0[16];

  v2 = v0[18];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[9];

  v6 = v0[1];

  return v6();
}

uint64_t sub_24AC28170@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth7Service_id;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24AC281F4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC1E290;

  return sub_24AC2353C(a1);
}

uint64_t sub_24AC28288(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC214BC;

  return sub_24AC27600(a1);
}

uint64_t sub_24AC2831C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AC283BC;

  return sub_24AC56488();
}

uint64_t sub_24AC283BC(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_24AC284E4()
{
  v1 = sub_24ACD0420();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_24ACD0A20();

  v17 = 60;
  v18 = 0xE100000000000000;
  v15 = v0;
  v6 = type metadata accessor for Service();
  v7 = sub_24AC2B420(&qword_27EF9DFB0, type metadata accessor for Service);
  v8 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v8);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v9 = MEMORY[0x24C22D370](v6, v7);
  MEMORY[0x24C22CD50](v9);

  MEMORY[0x24C22CD50](0x69746E656469202CLL, 0xEF203D2072656966);
  v15 = 91;
  v16 = 0xE100000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  sub_24AC2B6A8(&qword_27EF9E0D0, &unk_27EF9E090, &qword_24ACD37C0);
  v10 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v10);

  MEMORY[0x24C22CD50](32, 0xE100000000000000);
  sub_24ACCFFE0();
  v11 = shortCBUUIDDescription(uuid:)(v5);
  v13 = v12;
  (*(v2 + 8))(v5, v1);
  MEMORY[0x24C22CD50](v11, v13);

  MEMORY[0x24C22CD50](93, 0xE100000000000000);
  MEMORY[0x24C22CD50](v15, v16);

  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  return v17;
}

uint64_t sub_24AC28798()
{
  v1 = sub_24ACD0420();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_24ACD0A20();

  v17 = 60;
  v18 = 0xE100000000000000;
  v15 = v0;
  v6 = type metadata accessor for MockService();
  v7 = sub_24AC2B420(&qword_27EF9DFB8, type metadata accessor for MockService);
  v8 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v8);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v9 = MEMORY[0x24C22D370](v6, v7);
  MEMORY[0x24C22CD50](v9);

  MEMORY[0x24C22CD50](0x69746E656469202CLL, 0xEF203D2072656966);
  v15 = 91;
  v16 = 0xE100000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  sub_24AC2B6A8(&qword_27EF9E0D0, &unk_27EF9E090, &qword_24ACD37C0);
  v10 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v10);

  MEMORY[0x24C22CD50](32, 0xE100000000000000);
  sub_24ACCFFE0();
  v11 = shortCBUUIDDescription(uuid:)(v5);
  v13 = v12;
  (*(v2 + 8))(v5, v1);
  MEMORY[0x24C22CD50](v11, v13);

  MEMORY[0x24C22CD50](93, 0xE100000000000000);
  MEMORY[0x24C22CD50](v15, v16);

  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  return v17;
}

uint64_t sub_24AC28A50(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v2[14] = v3;
  v4 = *(v3 - 8);
  v2[15] = v4;
  v5 = *(v4 + 64) + 15;
  v2[16] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v7 = type metadata accessor for PeerPath();
  v2[19] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC28B90, v1, 0);
}

uint64_t sub_24AC28B90()
{
  v69 = v0;
  if (qword_27EF9DC30 != -1)
  {
LABEL_31:
    swift_once();
  }

  v2 = v0[12];
  v1 = v0[13];
  v3 = sub_24ACD0490();
  __swift_project_value_buffer(v3, qword_27EF9DF68);

  v4 = v2;
  v5 = sub_24ACD0470();
  v6 = sub_24ACD0930();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[19];
    v8 = v0[20];
    v9 = v0[13];
    v67 = v0[12];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v68 = v12;
    *v10 = 136446722;
    sub_24AC2A3DC(v9 + OBJC_IVAR____TtC15FindMyBluetooth7Service_peerPath, v8);
    v13 = (v8 + *(v7 + 32));
    v15 = *v13;
    v14 = v13[1];

    sub_24AC234B4(v8);
    v16 = sub_24AC29E20(v15, v14, &v68);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2082;
    v17 = sub_24AC284E4();
    v19 = sub_24AC29E20(v17, v18, &v68);

    *(v10 + 14) = v19;
    *(v10 + 22) = 2114;
    v20 = v67;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v21;
    *v11 = v21;
    _os_log_impl(&dword_24AC18000, v5, v6, "%{public}s: Invalidated service: %{public}s error %{public}@", v10, 0x20u);
    sub_24AC212F4(v11, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v12, -1, -1);
    MEMORY[0x24C22DC60](v10, -1, -1);
  }

  if ((sub_24ACD0840() & 1) == 0)
  {
    v22 = v0[18];
    v23 = v0[14];
    v24 = v0[15];
    v25 = v0[13];
    v26 = OBJC_IVAR____TtC15FindMyBluetooth7Service_discoverCharacteristicsContinuation;
    swift_beginAccess();
    sub_24AC2B5DC(v25 + v26, v22, &qword_27EF9E4F0, &unk_24ACD4130);
    v27 = (*(v24 + 48))(v22, 1, v23);
    v28 = v0[18];
    if (v27)
    {
      sub_24AC212F4(v0[18], &qword_27EF9E4F0, &unk_24ACD4130);
    }

    else
    {
      v30 = v0[15];
      v29 = v0[16];
      v31 = v0[14];
      v32 = v0[12];
      (*(v30 + 16))(v29, v0[18], v31);
      sub_24AC212F4(v28, &qword_27EF9E4F0, &unk_24ACD4130);
      v0[11] = v32;
      v33 = v32;
      sub_24ACD0750();
      (*(v30 + 8))(v29, v31);
    }
  }

  v34 = v0[17];
  v35 = v0[13];
  (*(v0[15] + 56))(v34, 1, 1, v0[14]);
  v36 = OBJC_IVAR____TtC15FindMyBluetooth7Service_discoverCharacteristicsContinuation;
  swift_beginAccess();
  sub_24AC2AAE0(v34, v35 + v36);
  swift_endAccess();
  v37 = OBJC_IVAR____TtC15FindMyBluetooth7Service_characteristics;
  v0[21] = OBJC_IVAR____TtC15FindMyBluetooth7Service_characteristics;
  swift_beginAccess();
  v38 = *(v35 + v37);
  v39 = MEMORY[0x277D84F90];
  v40 = *(v38 + 64);
  v68 = MEMORY[0x277D84F90];
  v41 = -1;
  v42 = -1 << *(v38 + 32);
  if (-v42 < 64)
  {
    v41 = ~(-1 << -v42);
  }

  v43 = v41 & v40;
  v44 = (63 - v42) >> 6;
  swift_bridgeObjectRetain_n();
  v45 = 0;
LABEL_11:
  v0[22] = v39;
  while (v43)
  {
LABEL_12:
    v46 = __clz(__rbit64(v43));
    v43 &= v43 - 1;
    v47 = *(v38 + 56);
    v48 = (v45 << 9) | (8 * v46);
    if (*(v47 + v48))
    {
      v50 = *(v47 + v48);

      MEMORY[0x24C22CE30](v51);
      if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v52 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24ACD0720();
      }

      sub_24ACD0730();
      v39 = v68;
      goto LABEL_11;
    }
  }

  while (1)
  {
    v49 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    if (v49 >= v44)
    {
      break;
    }

    v43 = *(v38 + 64 + 8 * v49);
    ++v45;
    if (v43)
    {
      v45 = v49;
      goto LABEL_12;
    }
  }

  if (v39 >> 62)
  {
    result = sub_24ACD0B30();
    v0[23] = result;
    if (result)
    {
LABEL_23:
      if (result < 1)
      {
        __break(1u);
      }

      else
      {
        v0[24] = 0;
        v54 = v0[22];
        if ((v54 & 0xC000000000000001) != 0)
        {
          v55 = MEMORY[0x24C22D1B0](0);
        }

        else
        {
          v55 = *(v54 + 32);
        }

        v0[25] = v55;
        v56 = swift_task_alloc();
        v0[26] = v56;
        *v56 = v0;
        v56[1] = sub_24AC291CC;
        v57 = v0[12];

        return sub_24AC48538(v57);
      }

      return result;
    }
  }

  else
  {
    result = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[23] = result;
    if (result)
    {
      goto LABEL_23;
    }
  }

  v59 = v0[21];
  v58 = v0[22];
  v60 = v0[20];
  v62 = v0[17];
  v61 = v0[18];
  v63 = v0[16];
  v64 = v0[13];

  v65 = *(v64 + v59);
  *(v64 + v59) = MEMORY[0x277D84F98];

  v66 = v0[1];

  return v66();
}

uint64_t sub_24AC291CC()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AC292DC, v2, 0);
}

uint64_t sub_24AC292DC()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];

  if (v2 + 1 == v3)
  {
    v5 = v0[21];
    v4 = v0[22];
    v6 = v0[20];
    v8 = v0[17];
    v7 = v0[18];
    v9 = v0[16];
    v10 = v0[13];

    v11 = *(v10 + v5);
    *(v10 + v5) = MEMORY[0x277D84F98];

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[24] + 1;
    v0[24] = v14;
    v15 = v0[22];
    if ((v15 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x24C22D1B0]();
    }

    else
    {
      v16 = *(v15 + 8 * v14 + 32);
    }

    v0[25] = v16;
    v17 = swift_task_alloc();
    v0[26] = v17;
    *v17 = v0;
    v17[1] = sub_24AC291CC;
    v18 = v0[12];

    return sub_24AC48538(v18);
  }
}

uint64_t sub_24AC29454(char a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  *(v3 + 120) = a1;
  v4 = type metadata accessor for PeerPath();
  *(v3 + 32) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v3 + 40) = swift_task_alloc();
  v6 = *(*(sub_24ACD0420() - 8) + 64) + 15;
  *(v3 + 48) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  *(v3 + 56) = v7;
  v8 = *(v7 - 8);
  *(v3 + 64) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC2958C, v2, 0);
}

uint64_t sub_24AC2958C()
{
  v44 = v0;
  v1 = *(v0 + 24);
  Strong = swift_weakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 80);
    v4 = *(v0 + 48);
    v5 = [*(*(v0 + 16) + 16) UUID];
    CBUUID.uuidValue.getter(v4);

    type metadata accessor for Characteristic();
    sub_24ACD0000();
    if (qword_27EF9DC30 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 72);
    v6 = *(v0 + 80);
    v8 = *(v0 + 56);
    v9 = *(v0 + 64);
    v10 = *(v0 + 24);
    v11 = sub_24ACD0490();
    __swift_project_value_buffer(v11, qword_27EF9DF68);
    (*(v9 + 16))(v7, v6, v8);

    v12 = sub_24ACD0470();
    v13 = sub_24ACD0930();

    v14 = os_log_type_enabled(v12, v13);
    v16 = *(v0 + 64);
    v15 = *(v0 + 72);
    v17 = *(v0 + 56);
    if (v14)
    {
      v42 = v13;
      v18 = *(v0 + 32);
      v19 = *(v0 + 40);
      v20 = *(v0 + 24);
      v40 = *(v0 + 120);
      v21 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v43[0] = v41;
      *v21 = 136446722;
      sub_24AC2A3DC(v20 + OBJC_IVAR____TtC15FindMyBluetooth7Service_peerPath, v19);
      v22 = (v19 + *(v18 + 32));
      v24 = *v22;
      v23 = v22[1];

      sub_24AC234B4(v19);
      v25 = sub_24AC29E20(v24, v23, v43);

      *(v21 + 4) = v25;
      *(v21 + 12) = 1024;
      *(v21 + 14) = v40;
      *(v21 + 18) = 2082;
      sub_24AC2B6A8(&qword_27EF9DFD0, &qword_27EF9DDE8, &unk_24ACD37D0);
      v26 = sub_24ACD0C20();
      v28 = v27;
      v29 = *(v16 + 8);
      v29(v15, v17);
      v30 = sub_24AC29E20(v26, v28, v43);

      *(v21 + 20) = v30;
      _os_log_impl(&dword_24AC18000, v12, v42, "%{public}s: Calling setNotify(%{BOOL}d) for %{public}s", v21, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x24C22DC60](v41, -1, -1);
      MEMORY[0x24C22DC60](v21, -1, -1);
    }

    else
    {

      v29 = *(v16 + 8);
      v29(v15, v17);
    }

    *(v0 + 96) = v29;
    v37 = swift_task_alloc();
    *(v0 + 104) = v37;
    *v37 = v0;
    v37[1] = sub_24AC299E8;
    v38 = *(v0 + 16);
    v39 = *(v0 + 120);

    return sub_24AC2BDB4(v39, v38);
  }

  else
  {
    type metadata accessor for CentralManager.Error();
    sub_24AC2B420(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v32 = *(v0 + 72);
    v31 = *(v0 + 80);
    v34 = *(v0 + 40);
    v33 = *(v0 + 48);

    v35 = *(v0 + 8);

    return v35();
  }
}

uint64_t sub_24AC299E8()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_24AC29BD4;
  }

  else
  {
    v6 = sub_24AC29B14;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AC29B14()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v8 = v0[5];
  v7 = v0[6];

  v2(v4, v5);

  v9 = v0[1];

  return v9();
}

uint64_t sub_24AC29BD4()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[8];

  v2(v3, v4);
  v6 = v0[14];
  v8 = v0[9];
  v7 = v0[10];
  v10 = v0[5];
  v9 = v0[6];

  v11 = v0[1];

  return v11();
}

uint64_t Identifier<A>.description.getter()
{
  v0 = sub_24ACD0420();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[0] = 91;
  v10[1] = 0xE100000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  sub_24AC2B6A8(&qword_27EF9E0D0, &unk_27EF9E090, &qword_24ACD37C0);
  v5 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v5);

  MEMORY[0x24C22CD50](32, 0xE100000000000000);
  sub_24ACCFFE0();
  v6 = shortCBUUIDDescription(uuid:)(v4);
  v8 = v7;
  (*(v1 + 8))(v4, v0);
  MEMORY[0x24C22CD50](v6, v8);

  MEMORY[0x24C22CD50](93, 0xE100000000000000);
  return v10[0];
}

{
  v0 = sub_24ACD0420();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[0] = 91;
  v10[1] = 0xE100000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  sub_24AC537F4();
  v5 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v5);

  MEMORY[0x24C22CD50](32, 0xE100000000000000);
  sub_24ACCFFE0();
  v6 = shortCBUUIDDescription(uuid:)(v4);
  v8 = v7;
  (*(v1 + 8))(v4, v0);
  MEMORY[0x24C22CD50](v6, v8);

  MEMORY[0x24C22CD50](93, 0xE100000000000000);
  return v10[0];
}

uint64_t sub_24AC29E20(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24AC29EEC(v11, 0, 0, 1, a1, a2);
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
    sub_24AC2B940(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_24AC29EEC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_24AC29FF8(a5, a6);
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
    result = sub_24ACD0A80();
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

uint64_t sub_24AC29FF8(uint64_t a1, unint64_t a2)
{
  v4 = sub_24AC2A044(a1, a2);
  sub_24AC2A174(&unk_285E258D0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_24AC2A044(uint64_t a1, unint64_t a2)
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

  v6 = sub_24AC7055C(v5, 0);
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

  result = sub_24ACD0A80();
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
        v10 = sub_24ACD0610();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24AC7055C(v10, 0);
        result = sub_24ACD0A10();
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

uint64_t sub_24AC2A174(uint64_t result)
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

  result = sub_24AC1D468(result, v12, 1, v3);
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_24AC2A2AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AC20274;

  return sub_24AC23DD8(a1, v4, v5, v6);
}

uint64_t type metadata accessor for Service()
{
  result = qword_2814AD248;
  if (!qword_2814AD248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24AC2A3DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerPath();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AC2A488(uint64_t a1)
{
  *(a1 + 8) = sub_24AC2B420(&qword_27EF9DFA8, type metadata accessor for Service);
  result = sub_24AC2B420(&qword_27EF9DFB0, type metadata accessor for Service);
  *(a1 + 16) = result;
  return result;
}

void sub_24AC2A55C()
{
  sub_24AC2AA24();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = type metadata accessor for PeerPath();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_24AC2AA7C();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of Service.discover(characteristicIdentifiers:)(uint64_t a1)
{
  v4 = *(*v1 + 256);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AC2A800;

  return v8(a1);
}

uint64_t sub_24AC2A800(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of Service.subscript.getter(uint64_t a1)
{
  v4 = *(*v1 + 264);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AC2BA00;

  return v8(a1);
}

void sub_24AC2AA24()
{
  if (!qword_2814AE228)
  {
    type metadata accessor for Service();
    v0 = sub_24ACCFFF0();
    if (!v1)
    {
      atomic_store(v0, &qword_2814AE228);
    }
  }
}

void sub_24AC2AA7C()
{
  if (!qword_2814AD010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EF9E070, &qword_24ACD4150);
    v0 = sub_24ACD0970();
    if (!v1)
    {
      atomic_store(v0, &qword_2814AD010);
    }
  }
}

uint64_t sub_24AC2AAE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_24AC2AB50(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_24ACD0D10();
  sub_24ACD05E0();
  v6 = sub_24ACD0D50();

  return sub_24AC2AE7C(a1, a2, v6);
}

unint64_t sub_24AC2ABC8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_24ACD0420();
  sub_24AC2B420(&qword_2814AE200, MEMORY[0x277CC95F0]);
  v5 = sub_24ACD0520();

  return sub_24AC2AF34(a1, v5);
}

unint64_t sub_24AC2AC84(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_24ACD09C0();

  return sub_24AC2B2A8(a1, v5);
}

unint64_t sub_24AC2ACEC(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  v10 = v5;
  v12 = *(v10 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_24AC2B6A8(a4, a2, a3);
  v13 = sub_24ACD0520();
  return sub_24AC2B0F4(a1, v13, a2, a3, a5);
}

unint64_t sub_24AC2ADA0(unsigned __int8 a1)
{
  v3 = MEMORY[0x24C22D460](*(v1 + 40), a1, 1);

  return sub_24AC2B468(a1, v3);
}

unint64_t sub_24AC2ADE8(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_24ACD0590();
  sub_24ACD0D10();
  sub_24ACD05E0();
  v4 = sub_24ACD0D50();

  return sub_24AC2B4D8(a1, v4);
}

unint64_t sub_24AC2AE7C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_24ACD0C40())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_24AC2AF34(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_24ACD0420();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_24AC2B420(&unk_2814AE1F0, MEMORY[0x277CC95F0]);
      v16 = sub_24ACD0550();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_24AC2B0F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v24 = a4;
  v25 = a5;
  v21[1] = a1;
  v23 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v21 - v10;
  v22 = v5;
  v12 = -1 << *(v5 + 32);
  v13 = a2 & ~v12;
  v21[0] = v5 + 64;
  if ((*(v5 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v8 + 16);
    v16 = v8 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v7);
      sub_24AC2B6A8(v25, v23, v24);
      v19 = sub_24ACD0550();
      (*(v16 - 8))(v11, v7);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_24AC2B2A8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_24AC2B370(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x24C22D130](v9, a1);
      sub_24AC2B3CC(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_24AC2B420(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24AC2B468(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_24AC2B4D8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_24ACD0590();
      v9 = v8;
      if (v7 == sub_24ACD0590() && v9 == v10)
      {
        break;
      }

      v12 = sub_24ACD0C40();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_24AC2B5DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_24AC2B644(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerPath();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AC2B6A8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_24AC2B6F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AC214AC;

  return sub_24AC27290(a1, v4, v5, v7, v6);
}

uint64_t sub_24AC2B7BC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t objectdestroyTm_0(void (*a1)(void), uint64_t a2)
{
  v5 = v2[2];
  swift_unknownObjectRelease();
  a1(v2[4]);
  v6 = v2[5];

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

uint64_t sub_24AC2B830(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AC20274;

  return sub_24AC26A0C(a1, v4, v5, v6, v7);
}

uint64_t sub_24AC2B8F8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_24AC2B940(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_24AC2BA08(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for PeerPath();
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC2BA9C, v1, 0);
}

uint64_t sub_24AC2BA9C()
{
  v24 = v0;
  v1 = *(v0[3] + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject);
  if ([v1 state] == 2)
  {
    v2 = *(v0[2] + 16);
    if (qword_27EF9DC38 != -1)
    {
      swift_once();
    }

    v3 = v0[3];
    v4 = sub_24ACD0490();
    __swift_project_value_buffer(v4, qword_27EF9E010);

    v5 = v2;
    v6 = sub_24ACD0470();
    v7 = sub_24ACD0930();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[4];
      v9 = v0[5];
      v10 = v0[3];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = v22;
      *v11 = 136446466;
      sub_24AC2A3DC(v10 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v9);
      v13 = (v9 + *(v8 + 32));
      v15 = *v13;
      v14 = v13[1];

      sub_24AC47AEC(v9, type metadata accessor for PeerPath);
      v16 = sub_24AC29E20(v15, v14, &v23);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2112;
      *(v11 + 14) = v5;
      *v12 = v5;
      v17 = v5;
      _os_log_impl(&dword_24AC18000, v6, v7, "%{public}s: calling readValue() for %@", v11, 0x16u);
      sub_24AC212F4(v12, &qword_27EF9E6A0, &qword_24ACD5590);
      MEMORY[0x24C22DC60](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x24C22DC60](v22, -1, -1);
      MEMORY[0x24C22DC60](v11, -1, -1);
    }

    v18 = v0[5];
    [v1 readValueForCharacteristic_];

    v19 = v0[1];
  }

  else
  {
    v20 = v0[5];
    type metadata accessor for CentralManager.Error();
    sub_24AC46D0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v19 = v0[1];
  }

  return v19();
}

uint64_t sub_24AC2BDB4(char a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  *(v3 + 88) = a1;
  v4 = type metadata accessor for PeerPath();
  *(v3 + 32) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v3 + 40) = swift_task_alloc();
  v6 = *(*(sub_24ACD0420() - 8) + 64) + 15;
  *(v3 + 48) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  *(v3 + 56) = v7;
  v8 = *(v7 - 8);
  *(v3 + 64) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC2BEEC, v2, 0);
}

uint64_t sub_24AC2BEEC()
{
  v47 = v0;
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject);
  if ([v1 state] == 2)
  {
    v2 = *(v0 + 80);
    v3 = *(v0 + 48);
    v44 = *(*(v0 + 16) + 16);
    v45 = v1;
    v4 = [v44 UUID];
    CBUUID.uuidValue.getter(v3);

    type metadata accessor for Characteristic();
    sub_24ACD0000();
    if (qword_27EF9DC38 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 72);
    v5 = *(v0 + 80);
    v8 = *(v0 + 56);
    v7 = *(v0 + 64);
    v9 = *(v0 + 24);
    v10 = sub_24ACD0490();
    __swift_project_value_buffer(v10, qword_27EF9E010);
    (*(v7 + 16))(v6, v5, v8);

    v11 = sub_24ACD0470();
    v12 = sub_24ACD0930();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 64);
    v15 = *(v0 + 72);
    v16 = *(v0 + 56);
    if (v13)
    {
      v43 = v12;
      v17 = *(v0 + 32);
      v18 = *(v0 + 40);
      v19 = *(v0 + 24);
      v20 = *(v0 + 88);
      v21 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v46[0] = v42;
      *v21 = 136446722;
      sub_24AC2A3DC(v19 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v18);
      v22 = (v18 + *(v17 + 32));
      v23 = *v22;
      v24 = v22[1];

      sub_24AC47AEC(v18, type metadata accessor for PeerPath);
      v25 = sub_24AC29E20(v23, v24, v46);

      *(v21 + 4) = v25;
      *(v21 + 12) = 1024;
      *(v21 + 14) = v20;
      *(v21 + 18) = 2082;
      sub_24AC2B6A8(&qword_27EF9DFD0, &qword_27EF9DDE8, &unk_24ACD37D0);
      v26 = sub_24ACD0C20();
      v28 = v27;
      v29 = *(v14 + 8);
      v29(v15, v16);
      v30 = sub_24AC29E20(v26, v28, v46);

      *(v21 + 20) = v30;
      _os_log_impl(&dword_24AC18000, v11, v43, "%{public}s: calling setNotifyValue(%{BOOL}d) for %{public}s", v21, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x24C22DC60](v42, -1, -1);
      MEMORY[0x24C22DC60](v21, -1, -1);
    }

    else
    {

      v29 = *(v14 + 8);
      v29(v15, v16);
    }

    v37 = *(v0 + 72);
    v36 = *(v0 + 80);
    v39 = *(v0 + 48);
    v38 = *(v0 + 56);
    v40 = *(v0 + 40);
    [v45 setNotifyValue:*(v0 + 88) forCharacteristic:v44];
    v29(v36, v38);

    v35 = *(v0 + 8);
  }

  else
  {
    v31 = *(v0 + 72);
    v32 = *(v0 + 80);
    v34 = *(v0 + 40);
    v33 = *(v0 + 48);
    type metadata accessor for CentralManager.Error();
    sub_24AC46D0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v35 = *(v0 + 8);
  }

  return v35();
}

uint64_t sub_24AC2C34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = type metadata accessor for PeerPath();
  v5[9] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC2C3E8, v4, 0);
}

uint64_t sub_24AC2C3E8()
{
  v45 = v0;
  v1 = *(v0[8] + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject);
  if ([v1 state] == 2)
  {
    v43 = *(v0[6] + 16);
    if (qword_27EF9DC38 != -1)
    {
      swift_once();
    }

    v2 = v0[8];
    v4 = v0[4];
    v3 = v0[5];
    v5 = sub_24ACD0490();
    __swift_project_value_buffer(v5, qword_27EF9E010);

    sub_24AC46630(v4, v3);
    v6 = sub_24ACD0470();
    v7 = sub_24ACD0930();
    sub_24AC46698(v4, v3);

    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[9];
      v9 = v0[10];
      v10 = v0[8];
      v42 = v0[7];
      v11 = v0[4];
      v41 = v0[5];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v44[0] = v13;
      *v12 = 136446978;
      sub_24AC2A3DC(v10 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v9);
      v14 = (v9 + *(v8 + 32));
      v16 = *v14;
      v15 = v14[1];

      sub_24AC47AEC(v9, type metadata accessor for PeerPath);
      v17 = sub_24AC29E20(v16, v15, v44);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2082;
      v18 = sub_24ACD0260();
      v20 = sub_24AC29E20(v18, v19, v44);

      *(v12 + 14) = v20;
      *(v12 + 22) = 2048;
      *(v12 + 24) = v42;
      *(v12 + 32) = 2082;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
      sub_24AC2B6A8(&qword_27EF9E108, &qword_27EF9E040, qword_24ACD4100);
      v21 = sub_24ACD0C20();
      v23 = sub_24AC29E20(v21, v22, v44);

      *(v12 + 34) = v23;
      _os_log_impl(&dword_24AC18000, v6, v7, "%{public}s: calling writeValue(%{public}s),  type: %ld for %{public}s)", v12, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x24C22DC60](v13, -1, -1);
      MEMORY[0x24C22DC60](v12, -1, -1);
    }

    v24 = v0[7];
    v26 = v0[4];
    v25 = v0[5];
    v27 = sub_24ACD02C0();
    [v1 writeValue:v27 forCharacteristic:v43 type:v24];

    sub_24AC46630(v26, v25);
    v28 = sub_24ACD0470();
    v29 = sub_24ACD0900();
    sub_24AC46698(v26, v25);
    if (os_log_type_enabled(v28, v29))
    {
      v31 = v0[4];
      v30 = v0[5];
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v44[0] = v33;
      *v32 = 136315138;
      v0[2] = v31;
      v0[3] = v30;
      sub_24AC467AC();
      v34 = sub_24ACD0180();
      v36 = sub_24AC29E20(v34, v35, v44);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_24AC18000, v28, v29, "data: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x24C22DC60](v33, -1, -1);
      MEMORY[0x24C22DC60](v32, -1, -1);
    }

    v37 = v0[10];

    v38 = v0[1];
  }

  else
  {
    v39 = v0[10];
    type metadata accessor for CentralManager.Error();
    sub_24AC46D0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v38 = v0[1];
  }

  return v38();
}

uint64_t Peripheral.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_id;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24AC2C974(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E048, &qword_24ACD5910);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  sub_24AC2B5DC(a1, &v11 - v6, &qword_27EF9E048, &qword_24ACD5910);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_macAddress;
  swift_beginAccess();
  sub_24AC463C4(v7, v8 + v9, &qword_27EF9E048, &qword_24ACD5910);
  return swift_endAccess();
}

uint64_t sub_24AC2CA54@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_macAddress;
  swift_beginAccess();
  return sub_24AC2B5DC(v1 + v3, a1, &qword_27EF9E048, &qword_24ACD5910);
}

uint64_t sub_24AC2CABC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_macAddress;
  swift_beginAccess();
  sub_24AC463C4(a1, v1 + v3, &qword_27EF9E048, &qword_24ACD5910);
  return swift_endAccess();
}

uint64_t sub_24AC2CB8C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_advertisementData;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_24AC2CBF4()
{
  v1 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_advertisementData;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_24AC2CC3C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_advertisementData;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_24AC2CCF4@<X0>(_BYTE *a1@<X8>)
{
  result = [*(v1 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject) state];
  if (result < 4)
  {
    v4 = result + 1;
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_24AC2CD38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_lastSeen;
  swift_beginAccess();
  v5 = sub_24ACD0360();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_24AC2CDC4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_24ACD0360();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_lastSeen;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_24AC2CEDC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_lastSeen;
  swift_beginAccess();
  v4 = sub_24ACD0360();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_24AC2CF64(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_lastSeen;
  swift_beginAccess();
  v4 = sub_24ACD0360();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_24AC2D054()
{
  v1 = (v0 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_rssi);
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_24AC2D0A0(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_rssi;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_24AC2D1D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject);
  if ([v1 state] == 2)
  {
    return 1;
  }

  else
  {
    return [v1 isConnectedToSystem];
  }
}

uint64_t sub_24AC2D228(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24AC2D248, v1, 0);
}

uint64_t sub_24AC2D248()
{
  v1 = v0[3];
  Strong = swift_weakLoadStrong();
  v0[4] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_24AC2D370, Strong, 0);
  }

  else
  {
    type metadata accessor for CentralManager.Error();
    sub_24AC46D0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_24AC2D370()
{
  v1 = *(v0 + 32);
  sub_24AC7FB24(*(v0 + 24), *(v0 + 16));
  *(v0 + 40) = 0;
  v2 = *(v0 + 24);

  return MEMORY[0x2822009F8](sub_24AC2D400, v2, 0);
}

uint64_t sub_24AC2D400()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AC2D464()
{
  v1 = v0[4];

  v2 = v0[5];
  v3 = v0[1];

  return v3();
}

id sub_24AC2D4C8@<X0>(_BYTE *a1@<X8>)
{
  result = [*(v1 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject) connectedTransport];
  if (result >= 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = result;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_24AC2D50C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v8 + 393) = a7;
  *(v8 + 144) = a6;
  *(v8 + 152) = v7;
  *(v8 + 392) = a4;
  *(v8 + 128) = a3;
  *(v8 + 136) = a5;
  *(v8 + 112) = a1;
  *(v8 + 120) = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  *(v8 + 160) = v9;
  v10 = *(v9 - 8);
  *(v8 + 168) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 176) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  *(v8 + 184) = v12;
  v13 = *(v12 - 8);
  *(v8 + 192) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 200) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E110, &unk_24ACD4540) - 8) + 64) + 15;
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DFE0, &qword_24ACD4098) - 8) + 64) + 15;
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E120, &qword_24ACD4550);
  *(v8 + 240) = v17;
  v18 = *(v17 - 8);
  *(v8 + 248) = v18;
  v19 = *(v18 + 64) + 15;
  *(v8 + 256) = swift_task_alloc();
  v20 = type metadata accessor for PeerPath();
  *(v8 + 264) = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();
  v22 = sub_24ACD0360();
  *(v8 + 288) = v22;
  v23 = *(v22 - 8);
  *(v8 + 296) = v23;
  v24 = *(v23 + 64) + 15;
  *(v8 + 304) = swift_task_alloc();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  *(v8 + 312) = v25;
  v26 = *(v25 - 8);
  *(v8 + 320) = v26;
  v27 = *(v26 + 64) + 15;
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = swift_task_alloc();
  v28 = sub_24ACD0420();
  *(v8 + 344) = v28;
  v29 = *(v28 - 8);
  *(v8 + 352) = v29;
  v30 = *(v29 + 64) + 15;
  *(v8 + 360) = swift_task_alloc();
  v31 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E128, &unk_24ACD4558) - 8) + 64) + 15;
  *(v8 + 368) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC2D8E0, 0, 0);
}

uint64_t sub_24AC2D8E0()
{
  v156 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = *(v0 + 152);
  v149 = *(v0 + 120);
  swift_defaultActor_initialize();
  v4 = v3 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_macAddress;
  v5 = sub_24ACD0090();
  v147 = v4;
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = (v3 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_advertisementData);
  *(v3 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_advertisementData) = 0;
  v7 = v3 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_rssi;
  *v7 = 0;
  *(v7 + 8) = 1;
  swift_weakInit();
  v8 = v3 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_connectContinuation;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v10 = *(*(v9 - 8) + 56);
  v143 = v8;
  (v10)(v8, 1, 1, v9);
  v11 = v3 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_cancelConnectContinuation;
  (v10)(v3 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_cancelConnectContinuation, 1, 1, v9);
  v141 = v3 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_discoverServicesContinuation;
  v10();
  v138 = v3 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_pairingContinuation;
  v10();
  v12 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_services;
  *(v3 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_services) = MEMORY[0x277D84F98];
  v132 = v12;
  v135 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_delegateTrampoline;
  *(v3 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_delegateTrampoline) = 0;
  *(v3 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_autoDiscoverCount) = 0;
  v13 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_delegateQueue;
  sub_24ACD0120();
  v14 = sub_24ACD00E0();
  (*(*(v14 - 8) + 56))(v2, 1, 1, v14);
  sub_24ACD0410();
  v130 = v13;
  *(v3 + v13) = sub_24ACD00F0();
  v15 = *(v149 + 16);
  *(v0 + 376) = v15;
  v16 = v15;
  if (![v16 delegate])
  {
    v33 = *(v0 + 360);
    v151 = *(v0 + 352);
    v34 = *(v0 + 336);
    v124 = *(v0 + 344);
    v35 = *(v0 + 320);
    v133 = *(v0 + 328);
    v129 = *(v0 + 312);
    v36 = v6;
    v103 = *(v0 + 304);
    v105 = *(v0 + 296);
    v107 = *(v0 + 288);
    v120 = *(v0 + 272);
    v122 = *(v0 + 264);
    v111 = *(v0 + 256);
    v144 = *(v0 + 248);
    v109 = *(v0 + 240);
    v131 = *(v0 + 232);
    v126 = *(v0 + 224);
    v118 = *(v0 + 216);
    v136 = *(v0 + 192);
    v139 = *(v0 + 184);
    v113 = *(v0 + 168);
    v116 = *(v0 + 160);
    v101 = *(v0 + 393);
    v37 = *(v0 + 152);
    v97 = *(v0 + 392);
    v38 = *(v0 + 136);
    v98 = v38;
    v99 = *(v0 + 144);
    v96 = *(v0 + 128);
    v39 = *(v0 + 112);
    v40 = [v16 identifier];
    sub_24ACD03F0();

    type metadata accessor for Peripheral();
    sub_24ACD0000();
    v41 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_id;
    (*(v35 + 32))(v37 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_id, v34, v129);
    swift_weakAssign();
    *(v37 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject) = v16;
    swift_beginAccess();
    v42 = v16;
    sub_24AC46BE8(v96, v147);
    swift_endAccess();
    *(v37 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_isConnectable) = v97;
    swift_beginAccess();
    v43 = *v36;
    *v36 = v98;

    swift_beginAccess();
    *v7 = v99;
    *(v7 + 8) = v101 & 1;
    sub_24ACD0350();
    (*(v105 + 32))(v37 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_lastSeen, v103, v107);
    v44 = *(v144 + 16);
    v44(v111, v39 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_id, v109);
    v45 = *(v35 + 16);
    v45(v133, v37 + v41, v129);
    (*(v136 + 56))(v131, 1, 1, v139);
    (*(v113 + 56))(v118, 1, 1, v116);
    v44(v120, v111, v109);
    v45(v120 + v122[5], v133, v129);
    sub_24AC2B5DC(v131, v120 + v122[6], &qword_27EF9DFE0, &qword_24ACD4098);
    sub_24AC2B5DC(v118, v120 + v122[7], &unk_27EF9E110, &unk_24ACD4540);
    sub_24ACCFFE0();
    sub_24AC46D0C(&qword_27EF9E4E0, MEMORY[0x277CC95F0]);
    v46 = sub_24ACD0C20();
    v48 = v47;
    v49 = *(v151 + 8);
    v49(v33, v124);
    v154 = v46;
    v155 = v48;
    MEMORY[0x24C22CD50](47, 0xE100000000000000);
    sub_24ACCFFE0();
    v50 = sub_24ACD0C20();
    MEMORY[0x24C22CD50](v50);

    v49(v33, v124);
    v152 = v46;
    v153 = v48;
    sub_24AC2B5DC(v131, v126, &qword_27EF9DFE0, &qword_24ACD4098);
    if ((*(v136 + 48))(v126, 1, v139) == 1)
    {
      sub_24AC212F4(*(v0 + 224), &qword_27EF9DFE0, &qword_24ACD4098);
    }

    else
    {
      v61 = *(v0 + 360);
      v62 = v49;
      v63 = *(v0 + 344);
      v65 = *(v0 + 192);
      v64 = *(v0 + 200);
      v66 = *(v0 + 184);
      (*(v65 + 32))(v64, *(v0 + 224), v66);
      v154 = 47;
      v155 = 0xE100000000000000;
      sub_24ACCFFE0();
      v67 = shortCBUUIDDescription(uuid:)(v61);
      v69 = v68;
      v70 = v63;
      v49 = v62;
      v62(v61, v70);
      MEMORY[0x24C22CD50](v67, v69);

      MEMORY[0x24C22CD50](47, 0xE100000000000000);

      (*(v65 + 8))(v64, v66);
    }

    v71 = *(v0 + 208);
    v72 = *(v0 + 160);
    v73 = *(v0 + 168);
    sub_24AC2B5DC(*(v0 + 216), v71, &unk_27EF9E110, &unk_24ACD4540);
    if ((*(v73 + 48))(v71, 1, v72) == 1)
    {
      v75 = *(v0 + 320);
      v74 = *(v0 + 328);
      v76 = *(v0 + 312);
      v78 = *(v0 + 248);
      v77 = *(v0 + 256);
      v80 = *(v0 + 232);
      v79 = *(v0 + 240);
      v81 = *(v0 + 208);
      sub_24AC212F4(*(v0 + 216), &unk_27EF9E110, &unk_24ACD4540);
      sub_24AC212F4(v80, &qword_27EF9DFE0, &qword_24ACD4098);
      (*(v75 + 8))(v74, v76);
      (*(v78 + 8))(v77, v79);
      sub_24AC212F4(v81, &unk_27EF9E110, &unk_24ACD4540);
    }

    else
    {
      v82 = *(v0 + 360);
      v134 = *(v0 + 344);
      v83 = *(v0 + 320);
      v142 = *(v0 + 312);
      v145 = *(v0 + 328);
      v84 = *(v0 + 248);
      v146 = *(v0 + 240);
      v148 = *(v0 + 256);
      v140 = *(v0 + 232);
      v137 = *(v0 + 216);
      v85 = *(v0 + 168);
      v86 = *(v0 + 176);
      v87 = *(v0 + 160);
      (*(v85 + 32))(v86, *(v0 + 208), v87);
      v154 = 47;
      v155 = 0xE100000000000000;
      sub_24ACCFFE0();
      v88 = shortCBUUIDDescription(uuid:)(v82);
      v89 = v49;
      v91 = v90;
      v89(v82, v134);
      MEMORY[0x24C22CD50](v88, v91);

      MEMORY[0x24C22CD50](47, 0xE100000000000000);

      (*(v85 + 8))(v86, v87);
      sub_24AC212F4(v137, &unk_27EF9E110, &unk_24ACD4540);
      sub_24AC212F4(v140, &qword_27EF9DFE0, &qword_24ACD4098);
      (*(v83 + 8))(v145, v142);
      (*(v84 + 8))(v148, v146);
    }

    v92 = *(v0 + 272);
    v93 = *(v0 + 280);
    v94 = *(v0 + 152);
    v95 = (v92 + *(*(v0 + 264) + 32));
    *v95 = v152;
    v95[1] = v153;
    sub_24AC2B644(v92, v93);
    sub_24AC2B644(v93, v94 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath);
    v27 = sub_24AC2E77C;
    v28 = v94;
    v29 = 0;

    return MEMORY[0x2822009F8](v27, v28, v29);
  }

  v17 = *(v0 + 136);
  swift_unknownObjectRelease();

  if (qword_27EF9DC38 != -1)
  {
    swift_once();
  }

  v128 = v11;
  v150 = v6;
  v18 = sub_24ACD0490();
  __swift_project_value_buffer(v18, qword_27EF9E010);
  v19 = v16;
  v20 = sub_24ACD0470();
  v21 = sub_24ACD0910();

  if (!os_log_type_enabled(v20, v21))
  {

    goto LABEL_10;
  }

  v22 = swift_slowAlloc();
  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v154 = v24;
  *v22 = 138412546;
  *(v22 + 4) = v19;
  *v23 = v19;
  *(v22 + 12) = 2080;
  v25 = v19;
  v26 = [v25 delegate];

  if (!v26)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v27, v28, v29);
  }

  *(v0 + 104) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E130, &qword_24ACD4568);
  v30 = sub_24ACD05A0();
  v32 = sub_24AC29E20(v30, v31, &v154);

  *(v22 + 14) = v32;
  _os_log_impl(&dword_24AC18000, v20, v21, "CBPeripheral %@ already has delegate: %s", v22, 0x16u);
  sub_24AC212F4(v23, &qword_27EF9E6A0, &qword_24ACD5590);
  MEMORY[0x24C22DC60](v23, -1, -1);
  __swift_destroy_boxed_opaque_existential_0(v24);
  MEMORY[0x24C22DC60](v24, -1, -1);
  MEMORY[0x24C22DC60](v22, -1, -1);

LABEL_10:
  v102 = *(v0 + 368);
  v104 = *(v0 + 360);
  v106 = *(v0 + 336);
  v108 = *(v0 + 328);
  v110 = *(v0 + 304);
  v112 = *(v0 + 280);
  v114 = *(v0 + 272);
  v115 = *(v0 + 256);
  v117 = *(v0 + 232);
  v119 = *(v0 + 224);
  v121 = *(v0 + 216);
  v123 = *(v0 + 208);
  v125 = *(v0 + 200);
  v127 = *(v0 + 176);
  v51 = *(v0 + 152);
  v52 = *(v0 + 120);
  v100 = *(v0 + 128);
  v53 = *(v0 + 112);
  type metadata accessor for CentralManager.Error();
  sub_24AC46D0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  sub_24AC212F4(v147, &qword_27EF9E048, &qword_24ACD5910);
  v54 = *v150;

  swift_weakDestroy();
  sub_24AC212F4(v143, &qword_27EF9E4F0, &unk_24ACD4130);
  sub_24AC212F4(v128, &qword_27EF9E4F0, &unk_24ACD4130);
  sub_24AC212F4(v141, &qword_27EF9E4F0, &unk_24ACD4130);
  sub_24AC212F4(v138, &qword_27EF9E4F0, &unk_24ACD4130);
  v55 = *(v3 + v132);

  v56 = *(v3 + v130);

  type metadata accessor for Peripheral();
  swift_defaultActor_destroy();

  sub_24AC212F4(v100, &qword_27EF9E048, &qword_24ACD5910);
  v57 = *(*v51 + 48);
  v58 = *(*v51 + 52);
  swift_deallocPartialClassInstance();

  v59 = *(v0 + 8);

  return v59();
}

uint64_t sub_24AC2E77C()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 112);

  return MEMORY[0x2822009F8](sub_24AC2E7EC, v2, 0);
}

uint64_t sub_24AC2E7EC()
{
  v1 = v0[19];
  v2 = *(v0[14] + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_delegateQueue);
  v0[48] = v2;
  sub_24AC46D0C(&unk_2814AE1A8, type metadata accessor for Peripheral);
  v3 = v2;
  swift_getObjectType();
  v5 = sub_24ACD0740();

  return MEMORY[0x2822009F8](sub_24AC2E8C4, v5, v4);
}

uint64_t sub_24AC2E8C4()
{
  v49 = v0;
  v1 = *(v0 + 384);
  v2 = *(v0 + 152);
  v3 = *(v2 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_delegateQueue);
  v4 = type metadata accessor for DelegateTrampoline_CBPeripheralPrivateDelegate();
  v5 = objc_allocWithZone(v4);
  swift_weakInit();
  swift_weakAssign();
  *&v5[OBJC_IVAR____TtC15FindMyBluetooth46DelegateTrampoline_CBPeripheralPrivateDelegate_delegateQueue] = v1;
  *&v5[OBJC_IVAR____TtC15FindMyBluetooth46DelegateTrampoline_CBPeripheralPrivateDelegate_workItemQueue] = v3;
  *(v0 + 88) = v5;
  *(v0 + 96) = v4;
  v6 = v1;

  v7 = objc_msgSendSuper2((v0 + 88), sel_init);

  v8 = *(v2 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_delegateTrampoline);
  *(v2 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_delegateTrampoline) = v7;
  v9 = v7;

  v10 = *(v2 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject);
  [v10 setDelegate_];

  if (qword_27EF9DC38 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 152);
  v12 = sub_24ACD0490();
  __swift_project_value_buffer(v12, qword_27EF9E010);

  v13 = sub_24ACD0470();
  v14 = sub_24ACD0900();

  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 376);
  if (v15)
  {
    v17 = *(v0 + 152);
    v18 = *(v0 + 120);
    v44 = *(v0 + 112);
    v46 = *(v0 + 128);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v48 = v20;
    *v19 = 136315138;

    v21 = sub_24AC39074();
    v23 = v22;

    v24 = sub_24AC29E20(v21, v23, &v48);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_24AC18000, v13, v14, "%s init", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x24C22DC60](v20, -1, -1);
    MEMORY[0x24C22DC60](v19, -1, -1);

    v25 = v46;
  }

  else
  {
    v26 = *(v0 + 120);
    v27 = *(v0 + 128);
    v28 = *(v0 + 112);

    v25 = v27;
  }

  sub_24AC212F4(v25, &qword_27EF9E048, &qword_24ACD5910);
  v30 = *(v0 + 360);
  v29 = *(v0 + 368);
  v32 = *(v0 + 328);
  v31 = *(v0 + 336);
  v33 = *(v0 + 304);
  v35 = *(v0 + 272);
  v34 = *(v0 + 280);
  v36 = *(v0 + 256);
  v38 = *(v0 + 224);
  v37 = *(v0 + 232);
  v42 = *(v0 + 216);
  v43 = *(v0 + 208);
  v45 = *(v0 + 200);
  v47 = *(v0 + 176);

  v39 = *(v0 + 8);
  v40 = *(v0 + 152);

  return v39(v40);
}

uint64_t Peripheral.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v27 - v4;
  v6 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_delegateQueue;
  v7 = *(v0 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_delegateQueue);
  v8 = sub_24ACD07C0();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v7;
  swift_retain_n();
  sub_24AC2F138(0, 0, v5, &unk_24ACD4128, v9);

  sub_24AC212F4(v5, &qword_27EF9DF00, &qword_24ACD3BC8);
  v10 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject;
  [*(v0 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject) setDelegate_];
  if (qword_27EF9DC38 != -1)
  {
    swift_once();
  }

  v11 = sub_24ACD0490();
  __swift_project_value_buffer(v11, qword_27EF9E010);

  v12 = sub_24ACD0470();
  v13 = sub_24ACD0900();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v28 = v15;
    *v14 = 136315138;
    v16 = sub_24AC39074();
    v18 = sub_24AC29E20(v16, v17, &v28);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_24AC18000, v12, v13, "%s deinit", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x24C22DC60](v15, -1, -1);
    MEMORY[0x24C22DC60](v14, -1, -1);
  }

  v19 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_id;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  (*(*(v20 - 8) + 8))(v1 + v19, v20);
  sub_24AC212F4(v1 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_macAddress, &qword_27EF9E048, &qword_24ACD5910);
  v21 = *(v1 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_advertisementData);

  v22 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_lastSeen;
  v23 = sub_24ACD0360();
  (*(*(v23 - 8) + 8))(v1 + v22, v23);
  sub_24AC47AEC(v1 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, type metadata accessor for PeerPath);
  swift_weakDestroy();

  sub_24AC212F4(v1 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_connectContinuation, &qword_27EF9E4F0, &unk_24ACD4130);
  sub_24AC212F4(v1 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_cancelConnectContinuation, &qword_27EF9E4F0, &unk_24ACD4130);
  sub_24AC212F4(v1 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_discoverServicesContinuation, &qword_27EF9E4F0, &unk_24ACD4130);
  sub_24AC212F4(v1 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_pairingContinuation, &qword_27EF9E4F0, &unk_24ACD4130);
  v24 = *(v1 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_services);

  v25 = *(v1 + v6);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_24AC2F094()
{
  v1 = *(MEMORY[0x277D08958] + 4);
  v4 = (*MEMORY[0x277D08958] + MEMORY[0x277D08958]);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_24AC20274;

  return v4();
}

uint64_t sub_24AC2F138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_24AC2B5DC(a3, v27 - v11, &qword_27EF9DF00, &qword_24ACD3BC8);
  v13 = sub_24ACD07C0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_24AC212F4(v12, &qword_27EF9DF00, &qword_24ACD3BC8);
  }

  else
  {
    sub_24ACD07B0();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_24ACD0740();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_24ACD05C0() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t Peripheral.__deallocating_deinit()
{
  Peripheral.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24AC2F424()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E068, &qword_24ACD4140) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC2F4C0, v0, 0);
}

uint64_t sub_24AC2F4C0()
{
  v1 = *(v0 + 24);
  *(v0 + 48) = 20;
  v2 = type metadata accessor for Peripheral.Options();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_24AC2F5A4;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);

  return sub_24AC2F77C((v0 + 48), v4);
}

uint64_t sub_24AC2F5A4()
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v4 = *v1;
  v4[5] = v0;

  sub_24AC212F4(v3, &qword_27EF9E068, &qword_24ACD4140);
  if (v0)
  {
    v5 = v4[2];

    return MEMORY[0x2822009F8](sub_24AC2F718, v5, 0);
  }

  else
  {
    v6 = v4[3];

    v7 = v4[1];

    return v7();
  }
}

uint64_t sub_24AC2F718()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_24AC2F77C(_BYTE *a1, uint64_t a2)
{
  *(v3 + 40) = a2;
  *(v3 + 48) = v2;
  *(v3 + 56) = *v2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E068, &qword_24ACD4140) - 8) + 64) + 15;
  *(v3 + 64) = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130) - 8) + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 184) = *a1;

  return MEMORY[0x2822009F8](sub_24AC2F884, v2, 0);
}

uint64_t sub_24AC2F884()
{
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject);
  *(v0 + 80) = v1;
  if ([v1 state] == 2)
  {
    goto LABEL_15;
  }

  if (*(*(v0 + 48) + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_isConnectable) != 1 || (*(v0 + 88) = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_owningCentralManager, Strong = swift_weakLoadStrong(), (*(v0 + 96) = Strong) == 0))
  {
    type metadata accessor for CentralManager.Error();
    sub_24AC46D0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_15:
    v14 = *(v0 + 64);
    v13 = *(v0 + 72);

    v15 = *(v0 + 8);

    return v15();
  }

  v3 = *(v0 + 72);
  v4 = *(v0 + 48);
  v5 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_connectContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v4 + v5, v3, &qword_27EF9E4F0, &unk_24ACD4130);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  LODWORD(v4) = (*(*(v6 - 8) + 48))(v3, 1, v6);
  sub_24AC212F4(v3, &qword_27EF9E4F0, &unk_24ACD4130);
  if (v4 != 1)
  {
LABEL_14:
    type metadata accessor for CentralManager.Error();
    sub_24AC46D0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_15;
  }

  v7 = *(v0 + 64);
  sub_24AC2B5DC(*(v0 + 40), v7, &qword_27EF9E068, &qword_24ACD4140);
  v8 = type metadata accessor for Peripheral.Options();
  v9 = (*(*(v8 - 8) + 48))(v7, 1, v8);
  v10 = *(v0 + 64);
  if (v9 == 1)
  {
    sub_24AC212F4(v10, &qword_27EF9E068, &qword_24ACD4140);
    goto LABEL_10;
  }

  v11 = *v10;
  sub_24AC47AEC(v10, type metadata accessor for Peripheral.Options);
  if ((v11 & 2) == 0)
  {
LABEL_10:
    v12 = swift_weakLoadStrong();
    *(v0 + 104) = v12;
    if (v12)
    {

      return MEMORY[0x2822009F8](sub_24AC2FE24, v12, 0);
    }

    goto LABEL_14;
  }

  v16 = *(v0 + 96);
  v17 = *(v0 + 184);
  v18 = *(v0 + 48);
  v19 = *(v0 + 56);
  v20 = *(v0 + 40);
  v21 = swift_task_alloc();
  *(v0 + 152) = v21;
  *(v21 + 16) = v18;
  *(v21 + 24) = v17;
  *(v21 + 32) = v20;
  *(v21 + 40) = v16;
  *(v21 + 48) = v19;
  v22 = swift_task_alloc();
  *(v0 + 160) = v22;
  *(v22 + 16) = v18;
  *(v22 + 24) = v19;
  v23 = sub_24AC46D0C(&unk_2814AE1A8, type metadata accessor for Peripheral);
  v24 = *(MEMORY[0x277D85A10] + 4);
  v25 = swift_task_alloc();
  *(v0 + 168) = v25;
  *v25 = v0;
  v25[1] = sub_24AC30610;
  v26 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v25, &unk_24ACD4160, v21, sub_24AC44CD4, v22, v18, v23, v26);
}

uint64_t sub_24AC2FE24(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 104) + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_pairingAgent);
  *(v3 + 112) = v4;
  if (v4)
  {

    a1 = sub_24AC2FEAC;
    a2 = v4;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_24AC2FEAC()
{
  v1 = *(v0 + 48);
  *(v0 + 185) = [*(*(v0 + 112) + OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_underlyingObject) isPeerPaired_];

  return MEMORY[0x2822009F8](sub_24AC2FF40, v1, 0);
}

uint64_t sub_24AC2FF40()
{
  v1 = *(v0 + 185);
  v2 = *(v0 + 104);

  if (v1 == 1)
  {
    v3 = *(v0 + 88);
    v4 = *(v0 + 48);
    Strong = swift_weakLoadStrong();
    *(v0 + 120) = Strong;
    if (Strong)
    {

      return MEMORY[0x2822009F8](sub_24AC301DC, Strong, 0);
    }

    else
    {
      type metadata accessor for CentralManager.Error();
      sub_24AC46D0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v17 = *(v0 + 96);

      v19 = *(v0 + 64);
      v18 = *(v0 + 72);

      v20 = *(v0 + 8);

      return v20();
    }
  }

  else
  {
    v6 = *(v0 + 96);
    v7 = *(v0 + 184);
    v8 = *(v0 + 48);
    v9 = *(v0 + 56);
    v10 = *(v0 + 40);
    v11 = swift_task_alloc();
    *(v0 + 152) = v11;
    *(v11 + 16) = v8;
    *(v11 + 24) = v7;
    *(v11 + 32) = v10;
    *(v11 + 40) = v6;
    *(v11 + 48) = v9;
    v12 = swift_task_alloc();
    *(v0 + 160) = v12;
    *(v12 + 16) = v8;
    *(v12 + 24) = v9;
    v13 = sub_24AC46D0C(&unk_2814AE1A8, type metadata accessor for Peripheral);
    v14 = *(MEMORY[0x277D85A10] + 4);
    v15 = swift_task_alloc();
    *(v0 + 168) = v15;
    *v15 = v0;
    v15[1] = sub_24AC30610;
    v16 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200830](v15, &unk_24ACD4160, v11, sub_24AC44CD4, v12, v8, v13, v16);
  }
}

void sub_24AC301DC()
{
  v1 = *(v0[15] + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_pairingAgent);
  v0[16] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[17] = v2;
    *v2 = v0;
    v2[1] = sub_24AC30298;
    v3 = v0[6];

    sub_24AC74064(v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24AC30298()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v9 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = v2[15];
    v5 = sub_24AC30528;
  }

  else
  {
    v6 = v2[16];
    v7 = v2[6];

    v5 = sub_24AC303C0;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AC303C0()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 96);
  v3 = *(v0 + 184);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 40);
  v7 = swift_task_alloc();
  *(v0 + 152) = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v3;
  *(v7 + 32) = v6;
  *(v7 + 40) = v2;
  *(v7 + 48) = v5;
  v8 = swift_task_alloc();
  *(v0 + 160) = v8;
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  v9 = sub_24AC46D0C(&unk_2814AE1A8, type metadata accessor for Peripheral);
  v10 = *(MEMORY[0x277D85A10] + 4);
  v11 = swift_task_alloc();
  *(v0 + 168) = v11;
  *v11 = v0;
  v11[1] = sub_24AC30610;
  v12 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v11, &unk_24ACD4160, v7, sub_24AC44CD4, v8, v4, v9, v12);
}

uint64_t sub_24AC30528()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_24AC30594, v2, 0);
}

uint64_t sub_24AC30594()
{
  v1 = v0[15];

  v2 = v0[18];
  v3 = v0[12];

  v5 = v0[8];
  v4 = v0[9];

  v6 = v0[1];

  return v6();
}

uint64_t sub_24AC30610()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v10 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = v2[6];
    v5 = sub_24AC307B4;
  }

  else
  {
    v7 = v2[19];
    v6 = v2[20];
    v8 = v2[6];

    v5 = sub_24AC30740;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AC30740()
{
  v1 = v0[12];

  v3 = v0[8];
  v2 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_24AC307B4()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[12];

  v4 = v0[22];
  v6 = v0[8];
  v5 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_24AC3083C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 80) = a3;
  *(v6 + 16) = a1;
  return MEMORY[0x2822009F8](sub_24AC30864, a2, 0);
}

uint64_t sub_24AC30864()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 80);
  v3 = *(v0 + 24);
  v4 = sub_24AC46D0C(&unk_2814AE1A8, type metadata accessor for Peripheral);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  v6 = *(v0 + 32);
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  *(v5 + 32) = v6;
  *(v5 + 48) = v1;
  v7 = *(MEMORY[0x277D85A40] + 4);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_24AC309B8;
  v9 = *(v0 + 16);
  v10 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v9, v3, v4, 0xD000000000000019, 0x800000024ACD9A90, sub_24AC47908, v5, v10);
}

uint64_t sub_24AC309B8()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {
    v4 = v3[3];

    return MEMORY[0x2822009F8](sub_24AC30AF4, v4, 0);
  }

  else
  {
    v5 = v3[7];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_24AC30AF4()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_24AC30B58(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a5;
  v34 = a6;
  v30 = a4;
  v32 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E068, &qword_24ACD4140);
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v30 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v30 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v21 = *(v20 - 8);
  (*(v21 + 16))(v19, a1, v20);
  (*(v21 + 56))(v19, 0, 1, v20);
  v22 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_connectContinuation;
  swift_beginAccess();
  sub_24AC463C4(v19, a2 + v22, &qword_27EF9E4F0, &unk_24ACD4130);
  swift_endAccess();
  v23 = sub_24ACD07C0();
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  sub_24AC2B5DC(v30, v11, &qword_27EF9E068, &qword_24ACD4140);
  v24 = sub_24AC46D0C(&unk_2814AE1A8, type metadata accessor for Peripheral);
  v25 = (*(v31 + 80) + 41) & ~*(v31 + 80);
  v26 = (v9 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 16) = a2;
  *(v27 + 24) = v24;
  *(v27 + 32) = a2;
  *(v27 + 40) = v32;
  sub_24AC4791C(v11, v27 + v25);
  v28 = v34;
  *(v27 + v26) = v33;
  *(v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8)) = v28;
  swift_retain_n();

  sub_24AC7EA6C(0, 0, v15, &unk_24ACD45E8, v27);
}

uint64_t sub_24AC30EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 64) = a6;
  *(v7 + 72) = a7;
  *(v7 + 136) = a5;
  *(v7 + 56) = a4;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130) - 8) + 64) + 15;
  *(v7 + 80) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  *(v7 + 88) = v10;
  v11 = *(v10 - 8);
  *(v7 + 96) = v11;
  v12 = *(v11 + 64) + 15;
  *(v7 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC30FCC, a4, 0);
}

uint64_t sub_24AC30FCC()
{
  v17 = v0;
  v1 = *(v0 + 64);
  v15 = *(v0 + 136);
  v2 = sub_24AC470AC(&v15, v1);
  *(v0 + 112) = v2;
  if (qword_27EF9DC38 != -1)
  {
    swift_once();
  }

  v3 = sub_24ACD0490();
  __swift_project_value_buffer(v3, qword_27EF9E010);

  v4 = sub_24ACD0470();
  v5 = sub_24ACD0900();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136446210;
    *(v0 + 48) = v2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E168, &unk_24ACD45F0);
    v8 = sub_24ACD05A0();
    v10 = sub_24AC29E20(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_24AC18000, v4, v5, "Connecting with options: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x24C22DC60](v7, -1, -1);
    MEMORY[0x24C22DC60](v6, -1, -1);
  }

  v11 = swift_task_alloc();
  *(v0 + 120) = v11;
  *v11 = v0;
  v11[1] = sub_24AC311DC;
  v12 = *(v0 + 72);
  v13 = *(v0 + 56);

  return sub_24AC803C8(v13, v2);
}

uint64_t sub_24AC311DC()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_24AC3137C;
  }

  else
  {
    v6 = sub_24AC31308;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AC31308()
{
  v1 = v0[14];

  v2 = v0[13];
  v3 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t sub_24AC3137C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 80);
  v5 = *(v0 + 56);

  v6 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_connectContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v5 + v6, v4, &qword_27EF9E4F0, &unk_24ACD4130);
  if ((*(v3 + 48))(v4, 1, v2))
  {
    v7 = *(v0 + 80);

    sub_24AC212F4(v7, &qword_27EF9E4F0, &unk_24ACD4130);
  }

  else
  {
    v8 = *(v0 + 128);
    v10 = *(v0 + 96);
    v9 = *(v0 + 104);
    v12 = *(v0 + 80);
    v11 = *(v0 + 88);
    (*(v10 + 16))(v9, v12, v11);
    sub_24AC212F4(v12, &qword_27EF9E4F0, &unk_24ACD4130);
    *(v0 + 40) = v8;
    sub_24ACD0750();
    (*(v10 + 8))(v9, v11);
  }

  v13 = *(v0 + 104);
  v14 = *(v0 + 80);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_24AC31518()
{
  v1 = *(v0 + 32);
  sub_24AC371CC(&OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_connectContinuation);
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_24AC315CC;
  v3 = *(v0 + 32);

  return sub_24AC318F0((v0 + 16));
}

uint64_t sub_24AC315CC()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {
    v4 = v3[4];

    return MEMORY[0x2822009F8](sub_24AC47C18, v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_24AC31700()
{
  *(v1 + 32) = v0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v2 = swift_task_alloc();
  *(v1 + 40) = v2;
  *v2 = v1;
  v2[1] = sub_24AC317A4;

  return sub_24AC318F0((v1 + 16));
}

uint64_t sub_24AC317A4()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {
    v4 = v3[4];

    return MEMORY[0x2822009F8](sub_24AC318D8, v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_24AC318F0(uint64_t *a1)
{
  *(v2 + 40) = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130) - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v6 = *a1;
  *(v2 + 48) = v5;
  *(v2 + 56) = v6;
  *(v2 + 96) = *(a1 + 8);

  return MEMORY[0x2822009F8](sub_24AC3199C, v1, 0);
}

uint64_t sub_24AC3199C()
{
  if ([*(*(v0 + 40) + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject) state])
  {
    v2 = *(v0 + 40);
    v1 = *(v0 + 48);
    v3 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_cancelConnectContinuation;
    swift_beginAccess();
    sub_24AC2B5DC(v2 + v3, v1, &qword_27EF9E4F0, &unk_24ACD4130);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
    LODWORD(v2) = (*(*(v4 - 8) + 48))(v1, 1, v4);
    sub_24AC212F4(v1, &qword_27EF9E4F0, &unk_24ACD4130);
    if (v2 == 1)
    {
      v5 = *(v0 + 40);
      Strong = swift_weakLoadStrong();
      *(v0 + 64) = Strong;
      if (Strong)
      {
        v7 = Strong;
        v8 = *(v0 + 96);
        v9 = *(v0 + 56);
        v10 = *(v0 + 40);
        sub_24AC46D0C(&unk_2814AE1A8, type metadata accessor for Peripheral);
        v11 = swift_task_alloc();
        *(v0 + 72) = v11;
        *(v11 + 16) = v10;
        *(v11 + 24) = v9;
        *(v11 + 32) = v8;
        *(v11 + 40) = v7;
        v12 = *(MEMORY[0x277D85A40] + 4);
        v13 = swift_task_alloc();
        *(v0 + 80) = v13;
        *v13 = v0;
        v13[1] = sub_24AC31CAC;

        return MEMORY[0x2822008A0]();
      }
    }

    type metadata accessor for CentralManager.Error();
    sub_24AC46D0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v16 = *(v0 + 48);

    v15 = *(v0 + 8);
  }

  else
  {
    v14 = *(v0 + 48);

    v15 = *(v0 + 8);
  }

  return v15();
}

uint64_t sub_24AC31CAC()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v9 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = sub_24AC31E40;
  }

  else
  {
    v6 = *(v2 + 72);
    v7 = *(v2 + 40);

    v5 = sub_24AC31DD4;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}