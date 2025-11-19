void sub_22E6F2A6C()
{
  sub_22E6EB570();
  v1 = v0;
  v2 = type metadata accessor for AssetSkeleton();
  v3 = sub_22E6CF988(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v41 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  MEMORY[0x2318ECB90](v7);
  if (v7)
  {
    v8 = type metadata accessor for Asset.ID(0);
    v9 = v8[6];
    v10 = v41;
    v40 = &v41[v8[5]];
    v39 = &v41[v9];
    v38 = &v41[v8[7]];
    v11 = type metadata accessor for Asset(0);
    v12 = *(v11 + 24);
    v13 = &v10[*(v11 + 20)];
    v14 = v2[6];
    v36 = &v10[v2[5]];
    v37 = v12;
    v35 = &v10[v14];
    v15 = &v10[v2[7]];
    v16 = type metadata accessor for Credential(0);
    sub_22E6F39E4(v16);
    v34[0] = v17;
    v34[1] = v18;
    v19 = v41;
    do
    {
      sub_22E6F38C0();
      v42 = v20;
      sub_22E6F3698(v1, v19, v21);
      type metadata accessor for URL();
      sub_22E6F38A8();
      sub_22E6F3650(&qword_27DA6C5F8, v22);
      dispatch thunk of Hashable.hash(into:)();
      sub_22E6F39D8(v40);
      String.hash(into:)();
      sub_22E6F39D8(v39);
      Data.hash(into:)();
      sub_22E6F39D8(v38);
      Data.hash(into:)();
      v23 = *v13;
      v24 = *(v13 + 1);
      v26 = *(v13 + 2);
      v25 = *(v13 + 3);
      sub_22E6CFB64(v26, v25);
      Data.hash(into:)();
      sub_22E6F393C();
      Data.hash(into:)();
      sub_22E6CFBBC(v26, v25);
      MEMORY[0x2318ECB90](*(v19 + v37));
      sub_22E6F39D8(v36);
      Data.hash(into:)();
      sub_22E6F39D8(v35);
      Data.hash(into:)();
      v27 = *v15;
      v28 = *(v15 + 1);
      String.hash(into:)();
      v29 = *(v15 + 2);
      v30 = *(v15 + 3);
      String.hash(into:)();
      v31 = *(v15 + 4);
      v32 = *(v15 + 5);
      String.hash(into:)();
      type metadata accessor for Date();
      sub_22E6F385C();
      sub_22E6F3650(&qword_27DA6C768, v33);
      dispatch thunk of Hashable.hash(into:)();
      sub_22E6F3700(v19, v42);
      v1 += v34[0];
      --v7;
    }

    while (v7);
  }

  sub_22E6EB538();
}

void sub_22E6F2CF8()
{
  sub_22E6EB570();
  v1 = v0;
  v2 = type metadata accessor for AssetUploadRequest();
  v3 = sub_22E6CF988(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 16);
  MEMORY[0x2318ECB90](v8);
  if (v8)
  {
    v9 = v2[6];
    v40 = &v7[v2[5]];
    v41 = v9;
    v10 = v2[7];
    v38 = v2[8];
    v39 = v10;
    v11 = &v7[v2[9]];
    v12 = &v7[v2[10]];
    v13 = type metadata accessor for Credential(0);
    sub_22E6F39E4(v13);
    v36 = v14;
    v37 = v15;
    do
    {
      v42 = type metadata accessor for AssetUploadRequest;
      v16 = sub_22E6F39CC();
      sub_22E6F3698(v16, v17, v18);
      type metadata accessor for UUID();
      sub_22E6F3650(&qword_27DA6C5F0, MEMORY[0x277CC95F0]);
      dispatch thunk of Hashable.hash(into:)();
      sub_22E6F39D8(v40);
      String.hash(into:)();
      type metadata accessor for URL();
      sub_22E6F38A8();
      sub_22E6F3650(&qword_27DA6C5F8, v19);
      sub_22E6F393C();
      dispatch thunk of Hashable.hash(into:)();
      sub_22E6F393C();
      dispatch thunk of Hashable.hash(into:)();
      sub_22E6F393C();
      dispatch thunk of Hashable.hash(into:)();
      v20 = *v11;
      v21 = *(v11 + 1);
      v23 = *(v11 + 2);
      v22 = *(v11 + 3);
      v24 = sub_22E6F37B8();
      sub_22E6CFB64(v24, v25);
      Data.hash(into:)();
      Data.hash(into:)();
      v26 = sub_22E6F37B8();
      sub_22E6CFBBC(v26, v27);
      v28 = *v12;
      v29 = *(v12 + 1);
      String.hash(into:)();
      v30 = *(v12 + 2);
      v31 = *(v12 + 3);
      String.hash(into:)();
      v32 = *(v12 + 4);
      v33 = *(v12 + 5);
      String.hash(into:)();
      type metadata accessor for Date();
      sub_22E6F385C();
      sub_22E6F3650(&qword_27DA6C768, v34);
      dispatch thunk of Hashable.hash(into:)();
      sub_22E6F3700(v7, v42);
      v1 += v36;
      --v8;
    }

    while (v8);
  }

  sub_22E6EB538();
}

uint64_t sub_22E6F2F84(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_22E6CF2AC(&qword_27DA6CCF0, &qword_22E7286C8);
    sub_22E6F3650(a2, type metadata accessor for AssetDownloadRequest);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22E6F3024()
{
  result = qword_27DA6CD30;
  if (!qword_27DA6CD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CD30);
  }

  return result;
}

uint64_t sub_22E6F3084(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22E6F30C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DownloadRequestMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_22E6F3210(_BYTE *result, int a2, int a3)
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

unint64_t sub_22E6F32C0()
{
  result = qword_27DA6CD38;
  if (!qword_27DA6CD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CD38);
  }

  return result;
}

unint64_t sub_22E6F3318()
{
  result = qword_27DA6CD40;
  if (!qword_27DA6CD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CD40);
  }

  return result;
}

unint64_t sub_22E6F3370()
{
  result = qword_27DA6CD48;
  if (!qword_27DA6CD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CD48);
  }

  return result;
}

unint64_t sub_22E6F33C8()
{
  result = qword_27DA6CD50;
  if (!qword_27DA6CD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CD50);
  }

  return result;
}

unint64_t sub_22E6F3420()
{
  result = qword_27DA6CD58;
  if (!qword_27DA6CD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CD58);
  }

  return result;
}

unint64_t sub_22E6F3478()
{
  result = qword_27DA6CD60;
  if (!qword_27DA6CD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CD60);
  }

  return result;
}

unint64_t sub_22E6F34D0()
{
  result = qword_27DA6CD68;
  if (!qword_27DA6CD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CD68);
  }

  return result;
}

unint64_t sub_22E6F3528()
{
  result = qword_27DA6CD70;
  if (!qword_27DA6CD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CD70);
  }

  return result;
}

unint64_t sub_22E6F3580()
{
  result = qword_27DA6CD78;
  if (!qword_27DA6CD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CD78);
  }

  return result;
}

uint64_t sub_22E6F35D4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_22E6F3650(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22E6F3698(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22E6F3700(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_22E6F37C4(uint64_t a1, char a2, char a3, char a4, char a5, char a6)
{
  *(v7 - 125) = a6;
  *(v7 - 124) = a5;
  *(v7 - 123) = a4;
  *(v7 - 122) = v6;
  *(v7 - 121) = a3;
  *(v7 - 120) = a2;
}

void sub_22E6F3814()
{
  *(v5 - 117) = v4;
  *(v5 - 116) = v3;
  *(v5 - 115) = v2;
  *(v5 - 114) = v1;
  *(v5 - 113) = v0;
}

void sub_22E6F3928(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);
  v4 = *(v1 + a1 + 8);
  v5 = *(v2 - 136) + a1;
}

uint64_t sub_22E6F3970()
{
  result = v0;
  v3 = *(v1 - 160);
  return result;
}

uint64_t sub_22E6F3988()
{
  result = v0;
  v3 = *(v1 - 160);
  return result;
}

void sub_22E6F3994(uint64_t a1, char a2, uint64_t a3, char a4, char a5, char a6, char a7, char a8)
{
  *(v9 - 125) = a8;
  *(v9 - 124) = a7;
  *(v9 - 123) = a6;
  *(v9 - 122) = v8;
  *(v9 - 121) = a5;
  *(v9 - 120) = a4;
  *(v9 - 119) = a2;
}

uint64_t sub_22E6F39D8@<X0>(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  return v1;
}

uint64_t sub_22E6F39E4(uint64_t result)
{
  v3 = *(result + 28);
  v4 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5 = *(v2 + 72);
  return result;
}

void sub_22E6F3A00(char a1@<W8>)
{
  *(v3 - 115) = v2;
  *(v3 - 114) = v1;
  *(v3 - 113) = a1;
}

uint64_t sub_22E6F3A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v5 - 152);

  return sub_22E6F22D0(a1, a2, a3, v4, v3);
}

uint64_t sub_22E6F3A84()
{
  result = v0;
  v3 = *(v1 - 152);
  return result;
}

uint64_t sub_22E6F3A90()
{
  result = v0;
  v3 = *(v1 - 208);
  return result;
}

void sub_22E6F3ABC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  JUMPOUT(0x2318ECB90);
}

void sub_22E6F3ADC(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(v3 - 160);
  v6 = *(v3 - 184);

  sub_22E6F2044(a1, v2, v5, a2);
}

void sub_22E6F3AFC(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(v3 - 152);
  v6 = *(v3 - 184);

  sub_22E6F2044(a1, v2, v5, a2);
}

uint64_t sub_22E6F3B1C()
{
  v2 = *(v0 - 96);

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_22E6F3B3C()
{
  v2 = *(v0 - 152);

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_22E6F3B5C@<X0>(int64_t a1@<X0>, int64_t a2@<X8>)
{
  if (a1 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = a1;
  }

  return memcmp((v3 - 112), v2, v5);
}

uint64_t sub_22E6F3BA8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  v8 = a2(0);
  v9 = v8;
  if (v7)
  {
    sub_22E6F4BD4(a1 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)), a4, a3);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  return sub_22E6CF58C(a4, v10, 1, v9);
}

uint64_t sub_22E6F3C60()
{
  sub_22E6E3BDC();
  v1[2] = v2;
  v1[3] = v0;
  v3 = *(*(sub_22E6CF1CC(&qword_27DA6CD80, qword_22E728BB8) - 8) + 64);
  v1[4] = sub_22E6E3EA4();
  v4 = sub_22E6F4C64();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22E6F3CE8(uint64_t a1)
{
  v2 = *(*(v1 + 24) + 112);
  *(v1 + 40) = v2;
  return sub_22E6F4C34(a1, v2);
}

uint64_t sub_22E6F3D04()
{
  sub_22E6E3BDC();
  v1 = v0[3];
  v0[6] = *(v0[5] + 112);

  return MEMORY[0x2822009F8](sub_22E6F3D78, v1, 0);
}

uint64_t sub_22E6F3D78()
{
  sub_22E6E3BDC();
  v1 = v0[4];
  sub_22E6F3BA8(v0[6], type metadata accessor for AssetSkeleton, type metadata accessor for AssetSkeleton, v1);

  v2 = type metadata accessor for AssetSkeleton();
  result = sub_22E6CF550(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_22E6F46E8(v0[4], v0[2], type metadata accessor for AssetSkeleton);

    sub_22E6E3AD8();

    return v4();
  }

  return result;
}

uint64_t sub_22E6F3E5C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_22E6F4C34(a1, v1);
}

uint64_t sub_22E6F3E74(uint64_t a1)
{
  v2 = *(*(v1 + 24) + 112);
  *(v1 + 32) = v2;
  return sub_22E6F4C34(a1, v2);
}

uint64_t sub_22E6F3E90()
{
  sub_22E6E3D08();
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = OBJC_IVAR____TtC10CloudAsset23AssetsUploadCoordinator__signals;
  v4 = sub_22E6CF1CC(&qword_27DA6C7B0, &unk_22E726D30);
  sub_22E6D901C(v4);
  (*(v5 + 16))(v2, v1 + v3);
  sub_22E6E3AD8();

  return v6();
}

uint64_t sub_22E6F3F34()
{
  sub_22E6E3BDC();
  v1[4] = v2;
  v1[5] = v0;
  v3 = sub_22E6CF1CC(&qword_27DA6C7C8, &unk_22E727340);
  v1[6] = v3;
  v4 = *(*(v3 - 8) + 64);
  v1[7] = sub_22E6E3EA4();
  v5 = *(*(sub_22E6CF1CC(&qword_27DA6CD88, &unk_22E728BE0) - 8) + 64);
  v1[8] = sub_22E6E3EA4();
  v6 = sub_22E6CF1CC(&qword_27DA6CD90, qword_22E72CA80);
  v1[9] = v6;
  v7 = *(v6 - 8);
  v1[10] = v7;
  v8 = *(v7 + 64);
  v1[11] = sub_22E6E3EA4();
  v9 = sub_22E6CF1CC(&qword_27DA6C7B8, &unk_22E727290);
  v1[12] = v9;
  v10 = *(v9 - 8);
  v1[13] = v10;
  v11 = *(v10 + 64);
  v1[14] = sub_22E6E3EA4();
  v12 = sub_22E6F4C64();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_22E6F40B0(uint64_t a1)
{
  v2 = *(*(v1 + 40) + 112);
  *(v1 + 120) = v2;
  return sub_22E6F4C34(a1, v2);
}

uint64_t sub_22E6F40CC()
{
  sub_22E6E3BDC();
  v1 = v0[5];
  (*(v0[13] + 16))(v0[14], v0[15] + OBJC_IVAR____TtC10CloudAsset23AssetsUploadCoordinator__results, v0[12]);
  v2 = sub_22E6F4C64();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_22E6F4148()
{
  sub_22E6E3D08();
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[5];
  MEMORY[0x2318EC7E0](v0[12]);
  v4 = sub_22E6F4600();
  v5 = *(MEMORY[0x277D858B8] + 4);
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_22E6F420C;
  v7 = v0[11];
  v8 = v0[8];
  v9 = v0[9];

  return MEMORY[0x2822005A8](v8, v3, v4, v9, v0 + 2);
}

uint64_t sub_22E6F420C()
{
  sub_22E6E3BDC();
  v3 = *(*v1 + 128);
  v2 = *v1;
  sub_22E6E3C94();
  *v4 = v2;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_22E6F4548;
  }

  else
  {
    v6 = sub_22E6F4314;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22E6F4314()
{
  v1 = v0[8];
  if (sub_22E6CF550(v1, 1, v0[6]) == 1)
  {
    v3 = v0[13];
    v2 = v0[14];
    v4 = v0[12];
    (*(v0[10] + 8))(v0[11], v0[9]);
    sub_22E6D0784();
    swift_allocError();
    swift_willThrow();
    (*(v3 + 8))(v2, v4);
LABEL_5:
    v12 = v0[14];
    v13 = v0[11];
    v15 = v0[7];
    v14 = v0[8];

    sub_22E6E3AD8();
    goto LABEL_7;
  }

  sub_22E6F4678(v1, v0[7]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[11];
  v9 = v0[12];
  v10 = v0[9];
  v11 = v0[10];
  if (EnumCaseMultiPayload == 1)
  {
    v0[3] = *v0[7];
    sub_22E6CF1CC(&qword_27DA6C7C0, qword_22E726DC0);
    swift_willThrowTypedImpl();
    (*(v11 + 8))(v8, v10);
    (*(v7 + 8))(v6, v9);
    goto LABEL_5;
  }

  v18 = v0[7];
  v17 = v0[8];
  v19 = v0[4];
  (*(v11 + 8))(v0[11], v0[9]);
  (*(v7 + 8))(v6, v9);
  sub_22E6F46E8(v18, v19, type metadata accessor for Asset);

  sub_22E6E3AD8();
LABEL_7:

  return v16();
}

uint64_t sub_22E6F4548()
{
  sub_22E6E3D08();
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[2];
  v5 = v0[14];
  v6 = v0[11];
  v8 = v0[7];
  v7 = v0[8];

  sub_22E6E3AD8();

  return v9();
}

unint64_t sub_22E6F4600()
{
  result = qword_27DA6CD98;
  if (!qword_27DA6CD98)
  {
    type metadata accessor for AssetUploadCoordinator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CD98);
  }

  return result;
}

uint64_t sub_22E6F4678(uint64_t a1, uint64_t a2)
{
  v4 = sub_22E6CF1CC(&qword_27DA6C7C8, &unk_22E727340);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22E6F46E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22E6D901C(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t AssetUploadCoordinator.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AssetUploadCoordinator.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t dispatch thunk of AssetUploadCoordinator.assetSkeleton.getter()
{
  sub_22E6E3D08();
  sub_22E6F4C54();
  v1 = *(v0 + 96);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = sub_22E6E3C38(v3);
  *v4 = v5;
  v6 = sub_22E6F4C40(v4);

  return v7(v6);
}

uint64_t sub_22E6F48E8()
{
  sub_22E6E3BDC();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_22E6E3C94();
  *v3 = v2;

  sub_22E6E3AD8();

  return v4();
}

uint64_t dispatch thunk of AssetUploadCoordinator.signals.getter()
{
  sub_22E6E3D08();
  sub_22E6F4C54();
  v1 = *(v0 + 112);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = sub_22E6E3C38(v3);
  *v4 = v5;
  v6 = sub_22E6F4C40(v4);

  return v7(v6);
}

uint64_t dispatch thunk of AssetUploadCoordinator.result()()
{
  sub_22E6E3D08();
  sub_22E6F4C54();
  v1 = *(v0 + 120);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = sub_22E6E3C38(v3);
  *v4 = v5;
  v6 = sub_22E6F4C40(v4);

  return v7(v6);
}

uint64_t sub_22E6F4BD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22E6D901C(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22E6F4C74()
{
  qword_27DA6CDA0 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

uint64_t sub_22E6F4CBC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x746163696C707061 && a2 == 0xEE007344496E6F69)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22E6F4D60(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x800000022E72D230 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22E6F4E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22E6F4CBC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22E6F4E2C(uint64_t a1)
{
  v2 = sub_22E6F51C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E6F4E68(uint64_t a1)
{
  v2 = sub_22E6F51C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E6F4EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22E6F4D60(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22E6F4ED4(uint64_t a1)
{
  v2 = sub_22E6F516C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E6F4F10(uint64_t a1)
{
  v2 = sub_22E6F516C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SimultaneousTransferError.encode(to:)(void *a1)
{
  v3 = sub_22E6CF1CC(&qword_27DA6CDA8, &qword_22E728C70);
  v23 = sub_22E6CF988(v3);
  v24 = v4;
  v6 = *(v5 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v7);
  v8 = sub_22E6CF1CC(&qword_27DA6CDB0, &qword_22E728C78);
  sub_22E6CF988(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - v14;
  v16 = *v1;
  v17 = a1[4];
  sub_22E6CF214(a1, a1[3]);
  sub_22E6F516C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_22E6F51C0();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v25 = v16;
  sub_22E6CF1CC(&qword_27DA6C8B8, &qword_22E728C80);
  sub_22E6F5778(&qword_27DA6CDC8);
  v18 = v23;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v19 = sub_22E6F5BF0();
  v20(v19, v18);
  return (*(v10 + 8))(v15, v8);
}

unint64_t sub_22E6F516C()
{
  result = qword_27DA6CDB8;
  if (!qword_27DA6CDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CDB8);
  }

  return result;
}

unint64_t sub_22E6F51C0()
{
  result = qword_27DA6CDC0;
  if (!qword_27DA6CDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CDC0);
  }

  return result;
}

void SimultaneousTransferError.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  MEMORY[0x2318ECB90](0);

  sub_22E6F259C(a1, v3);
}

Swift::Int SimultaneousTransferError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x2318ECB90](0);
  sub_22E6F259C(v3, v1);
  return Hasher._finalize()();
}

void SimultaneousTransferError.init(from:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v45 = a2;
  v4 = sub_22E6CF1CC(&qword_27DA6CDD0, &qword_22E728C88);
  sub_22E6CF988(v4);
  v43 = v5;
  v7 = *(v6 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - v9;
  v11 = sub_22E6CF1CC(&qword_27DA6CDD8, &unk_22E728C90);
  sub_22E6CF988(v11);
  v44 = v12;
  v14 = *(v13 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  v18 = a1[4];
  sub_22E6CF214(a1, a1[3]);
  sub_22E6F516C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    goto LABEL_8;
  }

  v41 = v10;
  v42 = a1;
  v19 = v45;
  v20 = KeyedDecodingContainer.allKeys.getter();
  sub_22E6F2500(v20, 0);
  v23 = v11;
  if (v21 == v22 >> 1)
  {
LABEL_7:
    v32 = type metadata accessor for DecodingError();
    swift_allocError();
    v34 = v33;
    v35 = *(sub_22E6CF1CC(&qword_27DA6CD20, &qword_22E729070) + 48);
    *v34 = &type metadata for SimultaneousTransferError;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
    swift_willThrow();
    swift_unknownObjectRelease();
    v36 = sub_22E6F5BF0();
    v37(v36, v23);
    a1 = v42;
LABEL_8:
    v39 = a1;
    goto LABEL_9;
  }

  if (v21 < (v22 >> 1))
  {
    sub_22E6F3764(v21 + 1);
    v25 = v24;
    v27 = v26;
    swift_unknownObjectRelease();
    v28 = v25 == v27 >> 1;
    v29 = v43;
    if (v28)
    {
      v30 = v19;
      sub_22E6F51C0();
      v31 = v41;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_22E6CF1CC(&qword_27DA6C8B8, &qword_22E728C80);
      sub_22E6F5778(&qword_27DA6CDE0);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v38 = v44;
      swift_unknownObjectRelease();
      (*(v29 + 8))(v31, v4);
      (*(v38 + 8))(v17, v11);
      *v30 = v46;
      v39 = v42;
LABEL_9:
      sub_22E6CF2F4(v39);
      return;
    }

    v23 = v11;
    goto LABEL_7;
  }

  __break(1u);
}

Swift::Int sub_22E6F56F4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x2318ECB90](0);
  sub_22E6F259C(v3, v1);
  return Hasher._finalize()();
}

uint64_t sub_22E6F5778(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22E6CF2AC(&qword_27DA6C8B8, &qword_22E728C80);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22E6F57E8()
{
  result = qword_27DA6CDE8;
  if (!qword_27DA6CDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CDE8);
  }

  return result;
}

unint64_t sub_22E6F5840()
{
  result = qword_27DA6CDF0;
  if (!qword_27DA6CDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CDF0);
  }

  return result;
}

uint64_t sub_22E6F5894(uint64_t *a1, int a2)
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

uint64_t sub_22E6F58D4(uint64_t result, int a2, int a3)
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

_BYTE *sub_22E6F5930(_BYTE *result, int a2, int a3)
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

unint64_t sub_22E6F59E0()
{
  result = qword_27DA6CDF8;
  if (!qword_27DA6CDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CDF8);
  }

  return result;
}

unint64_t sub_22E6F5A38()
{
  result = qword_27DA6CE00;
  if (!qword_27DA6CE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CE00);
  }

  return result;
}

unint64_t sub_22E6F5A90()
{
  result = qword_27DA6CE08;
  if (!qword_27DA6CE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CE08);
  }

  return result;
}

unint64_t sub_22E6F5AE8()
{
  result = qword_27DA6CE10;
  if (!qword_27DA6CE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CE10);
  }

  return result;
}

unint64_t sub_22E6F5B40()
{
  result = qword_27DA6CE18;
  if (!qword_27DA6CE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CE18);
  }

  return result;
}

unint64_t sub_22E6F5B98()
{
  result = qword_27DA6CE20[0];
  if (!qword_27DA6CE20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA6CE20);
  }

  return result;
}

uint64_t sub_22E6F5C00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_22E6F5CD0(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_22E6F5D0C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

BOOL sub_22E6F5D88(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return sub_22E6CDF58(*a1, *a2);
}

Swift::Int sub_22E6F5DA0(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_22E6D586C(*v1);
}

uint64_t sub_22E6F5DB4(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  return sub_22E6CDF68(a1, *v2);
}

Swift::Int sub_22E6F5DC8(uint64_t a1, void *a2)
{
  Hasher.init(_seed:)();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  sub_22E6CDF68(v8, *v2);
  return Hasher._finalize()();
}

uint64_t sub_22E6F5E14(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_22E6F5CD0(*v1);
}

uint64_t sub_22E6F5E28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_22E6F5C00(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_22E6F5E5C(void *a1)
{
  v2 = *v1;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  return sub_22E6CE608();
}

uint64_t sub_22E6F5E88@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  result = sub_22E6D5864();
  *a2 = result;
  return result;
}

uint64_t sub_22E6F5EBC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_22E6F5F10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_22E6F5F64(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  return sub_22E6F5D00();
}

uint64_t sub_22E6F5F74@<X0>(void *a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  result = sub_22E6CDF9C();
  *a2 = result & 1;
  return result;
}

uint64_t sub_22E6F5FC4@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  result = sub_22E6CFE14();
  *a2 = result & 1;
  return result;
}

uint64_t sub_22E6F5FFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_22E6F6050(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_22E6F60A4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[2];
  v4 = a3[3];
  v5 = a3[4];
  return sub_22E6CFE14();
}

Swift::Int sub_22E6F60B0(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  return sub_22E6D38C4();
}

uint64_t sub_22E6F60C0(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v2 = a2[3];
  v4 = a2[4];
  return sub_22E6CC6D8();
}

Swift::Int sub_22E6F60D0(uint64_t a1, void *a2)
{
  Hasher.init(_seed:)();
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  sub_22E6CC6D8();
  return Hasher._finalize()();
}

uint64_t sub_22E6F6118(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  return sub_22E6F5D7C();
}

uint64_t sub_22E6F6128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_22E6F5D0C(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_22E6F6190(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_22E6F61E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t XPCResult.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v3 = a2[3];
  v5 = a2[4];
  v67 = a2;
  sub_22E6F79F4();
  v6 = type metadata accessor for XPCResult.FailureCodingKeys();
  sub_22E6F79A4();
  swift_getWitnessTable();
  sub_22E6F7A28();
  v64 = v7;
  v65 = v6;
  v8 = type metadata accessor for KeyedEncodingContainer();
  v9 = sub_22E6CF988(v8);
  v62 = v10;
  v63 = v9;
  v12 = *(v11 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v13);
  sub_22E6EB4DC();
  v58 = v14;
  sub_22E6F79F4();
  v15 = type metadata accessor for XPCResult.SuccessCodingKeys();
  sub_22E6F79BC();
  swift_getWitnessTable();
  sub_22E6F7A28();
  v57 = v15;
  v55[1] = v16;
  v17 = type metadata accessor for KeyedEncodingContainer();
  v18 = sub_22E6CF988(v17);
  v60 = v19;
  v61 = v18;
  v21 = *(v20 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v22);
  sub_22E6EB4DC();
  v56 = v23;
  sub_22E6F797C();
  v59 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22E6CF9C8();
  v55[0] = v29 - v28;
  sub_22E6F797C();
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22E6CF9C8();
  v37 = v36 - v35;
  sub_22E6F79F4();
  v66 = v5;
  type metadata accessor for XPCResult.CodingKeys();
  sub_22E6F798C();
  swift_getWitnessTable();
  v38 = type metadata accessor for KeyedEncodingContainer();
  v39 = sub_22E6CF988(v38);
  v68 = v40;
  v69 = v39;
  v42 = *(v41 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v43);
  v45 = v55 - v44;
  v46 = a1[4];
  sub_22E6CF214(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(v31 + 16))(v37, v70, v67);
  if (sub_22E6CF550(v37, 1, v4) == 1)
  {
    v72 = 1;
    v47 = v58;
    v48 = v69;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v62 + 8))(v47, v63);
    return (*(v68 + 8))(v45, v48);
  }

  else
  {
    v50 = v59;
    v51 = v55[0];
    (*(v59 + 32))(v55[0], v37, v4);
    v71 = 0;
    v52 = v56;
    v53 = v69;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v54 = v61;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v60 + 8))(v52, v54);
    (*(v50 + 8))(v51, v4);
    return (*(v68 + 8))(v45, v53);
  }
}

uint64_t XPCResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v83 = a4;
  v7 = type metadata accessor for XPCResult.FailureCodingKeys();
  sub_22E6F79A4();
  swift_getWitnessTable();
  sub_22E6F7A28();
  v81 = v8;
  v82 = v7;
  v75 = type metadata accessor for KeyedDecodingContainer();
  sub_22E6CF988(v75);
  v74 = v9;
  v11 = *(v10 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v12);
  sub_22E6EB4DC();
  v80 = v13;
  sub_22E6F7A04();
  v14 = type metadata accessor for XPCResult.SuccessCodingKeys();
  sub_22E6F79BC();
  swift_getWitnessTable();
  sub_22E6F7A28();
  v77 = v15;
  v78 = v14;
  v73 = type metadata accessor for KeyedDecodingContainer();
  sub_22E6CF988(v73);
  v72 = v16;
  v18 = *(v17 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v19);
  sub_22E6EB4DC();
  v79 = v20;
  sub_22E6F7A04();
  type metadata accessor for XPCResult.CodingKeys();
  sub_22E6F798C();
  swift_getWitnessTable();
  sub_22E6F7A1C();
  v86 = type metadata accessor for KeyedDecodingContainer();
  sub_22E6CF988(v86);
  v88 = v21;
  v23 = *(v22 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v24);
  v26 = &v68 - v25;
  v87 = a2;
  v76 = a3;
  v27 = type metadata accessor for XPCResult();
  v28 = sub_22E6CF988(v27);
  v84 = v29;
  v85 = v28;
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v28);
  v34 = &v68 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = &v68 - v35;
  v37 = a1[4];
  sub_22E6CF214(a1, a1[3]);
  v38 = v93;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v39 = a1;
  if (!v38)
  {
    v69 = v34;
    v70 = v36;
    v41 = v85;
    v40 = v86;
    v42 = v87;
    v93 = v39;
    v71 = v26;
    *&v89 = KeyedDecodingContainer.allKeys.getter();
    sub_22E6F7A1C();
    type metadata accessor for Array();
    swift_getWitnessTable();
    *&v91 = ArraySlice.init<A>(_:)();
    *(&v91 + 1) = v43;
    *&v92 = v44;
    *(&v92 + 1) = v45;
    sub_22E6F7A1C();
    type metadata accessor for ArraySlice();
    swift_getWitnessTable();
    Collection<>.popFirst()();
    v46 = v89;
    if (v89 == 2 || (v68 = v91, v89 = v91, v90 = v92, (Collection.isEmpty.getter() & 1) == 0))
    {
      v54 = type metadata accessor for DecodingError();
      swift_allocError();
      v56 = v55;
      v57 = *(sub_22E6CF1CC(&qword_27DA6CD20, &qword_22E729070) + 48);
      *v56 = v41;
      v58 = v71;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v54 - 8) + 104))(v56, *MEMORY[0x277D84160], v54);
      swift_willThrow();
      (*(v88 + 8))(v58, v40);
      swift_unknownObjectRelease();
    }

    else if (v46)
    {
      LOBYTE(v89) = 1;
      v47 = v80;
      sub_22E6F7A48();
      v48 = v42;
      v49 = v83;
      v50 = v84;
      (*(v74 + 8))(v47, v75);
      v51 = sub_22E6F79E4();
      v52(v51);
      sub_22E6F79D4();
      swift_unknownObjectRelease();
      v53 = v70;
      sub_22E6CF58C(v70, 1, 1, v48);
      (*(v50 + 32))(v49, v53, v41);
    }

    else
    {
      LOBYTE(v89) = 0;
      sub_22E6F7A48();
      v60 = v84;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v61 = sub_22E6F7A34(&v94);
      v62(v61);
      v63 = sub_22E6F79E4();
      v64(v63);
      sub_22E6F79D4();
      swift_unknownObjectRelease();
      v65 = v69;
      sub_22E6CF58C(v69, 0, 1, v42);
      v66 = *(v60 + 32);
      v67 = v70;
      v66(v70, v65, v41);
      v66(v83, v67, v41);
    }

    v39 = v93;
  }

  return sub_22E6CF2F4(v39);
}

uint64_t static XPCResult<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a6;
  sub_22E6F797C();
  v46 = v9;
  v47 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22E6CF9C8();
  v43 = (v14 - v13);
  v15 = type metadata accessor for XPCResult();
  sub_22E6CF988(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v20);
  v22 = &v42 - v21;
  sub_22E6F7A1C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_22E6CF988(TupleTypeMetadata2);
  v25 = v24;
  v27 = *(v26 + 64);
  sub_22E6D374C();
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v42 - v30;
  v32 = *(v29 + 48);
  v45 = v17;
  v33 = *(v17 + 16);
  v33(&v42 - v30, a1, v15);
  v33(&v31[v32], v47, v15);
  sub_22E6F7A68(v31);
  if (v35)
  {
    v34 = 1;
    sub_22E6F7A68(&v31[v32]);
    if (v35)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v33(v22, v31, v15);
    sub_22E6F7A68(&v31[v32]);
    if (!v35)
    {
      v36 = v46;
      v37 = &v31[v32];
      v38 = v43;
      (*(v46 + 32))(v43, v37, a3);
      v39 = *(v44 + 8);
      v34 = dispatch thunk of static Equatable.== infix(_:_:)();
      v40 = *(v36 + 8);
      v40(v38, a3);
      v40(v22, a3);
LABEL_10:
      v25 = v45;
      goto LABEL_11;
    }

    (*(v46 + 8))(v22, a3);
  }

  v34 = 0;
  v15 = TupleTypeMetadata2;
LABEL_11:
  (*(v25 + 8))(v31, v15);
  return v34 & 1;
}

uint64_t XPCResult<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v13);
  if (sub_22E6CF550(v11, 1, v2) == 1)
  {
    return MEMORY[0x2318ECB90](1);
  }

  (*(v3 + 32))(v7, v11, v2);
  MEMORY[0x2318ECB90](0);
  dispatch thunk of Hashable.hash(into:)();
  return (*(v3 + 8))(v7, v2);
}

Swift::Int XPCResult<>.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  XPCResult<>.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

Swift::Int sub_22E6F7274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  Hasher.init(_seed:)();
  XPCResult<>.hash(into:)(v6, a2);
  return Hasher._finalize()();
}

uint64_t sub_22E6F730C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_22E6F7368(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  v14 = sub_22E6CF550(a1, v5, v4);
  if (v14 >= 2)
  {
    return v14 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_22E6F74E0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
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
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v9 >= 2)
          {
            v20 = a2 + 1;

            sub_22E6CF58C(a1, v20, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        break;
      case 2:
        *&a1[v11] = v18;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        break;
      default:
        return;
    }
  }
}

_BYTE *sub_22E6F7700(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_22E6F77CC(_BYTE *result, int a2, int a3)
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

uint64_t sub_22E6F7A48()
{
  v2 = *(v0 - 304);

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t static Signal.Event.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return sub_22E6CFE14();
    }

    return 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_22E6F7ABC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001BLL && 0x800000022E72D250 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022E72D270 == a2)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

unint64_t sub_22E6F7B98(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

uint64_t sub_22E6F7BD4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656E6961746E6F63 && a2 == 0xEE007865646E4972)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22E6F7C7C(uint64_t a1)
{
  v2 = sub_22E6F8150();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E6F7CB8(uint64_t a1)
{
  v2 = sub_22E6F8150();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E6F7CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22E6F7ABC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22E6F7D24(uint64_t a1)
{
  v2 = sub_22E6F80FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E6F7D60(uint64_t a1)
{
  v2 = sub_22E6F80FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E6F7DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22E6F7BD4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22E6F7DCC(uint64_t a1)
{
  v2 = sub_22E6F81A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E6F7E08(uint64_t a1)
{
  v2 = sub_22E6F81A4();

  return MEMORY[0x2821FE720](a1, v2);
}

void Signal.Event.encode(to:)()
{
  sub_22E6D37D4();
  v35 = v1;
  v3 = v2;
  v4 = sub_22E6CF1CC(&qword_27DA6D028, &qword_22E7294B0);
  v5 = sub_22E6CF988(v4);
  v33 = v6;
  v34 = v5;
  v8 = *(v7 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v9);
  v31 = v29 - v10;
  v32 = sub_22E6CF1CC(&qword_27DA6D030, &qword_22E7294B8);
  sub_22E6CF988(v32);
  v30 = v11;
  v13 = *(v12 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v14);
  v16 = v29 - v15;
  v17 = sub_22E6CF1CC(&qword_27DA6D038, &qword_22E7294C0);
  sub_22E6CF988(v17);
  v19 = v18;
  v21 = *(v20 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v22);
  v24 = v29 - v23;
  v29[1] = *v0;
  v25 = *(v0 + 8);
  v26 = v3[4];
  sub_22E6CF214(v3, v3[3]);
  sub_22E6F80FC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v25)
  {
    sub_22E6F8150();
    v27 = v31;
    sub_22E6F9C14();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v33 + 8))(v27, v34);
  }

  else
  {
    sub_22E6F81A4();
    sub_22E6F9C14();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v28 = v32;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v30 + 8))(v16, v28);
  }

  (*(v19 + 8))(v24, v17);
  sub_22E6D37BC();
}

unint64_t sub_22E6F80FC()
{
  result = qword_27DA6D040;
  if (!qword_27DA6D040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D040);
  }

  return result;
}

unint64_t sub_22E6F8150()
{
  result = qword_27DA6D048;
  if (!qword_27DA6D048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D048);
  }

  return result;
}

unint64_t sub_22E6F81A4()
{
  result = qword_27DA6D050;
  if (!qword_27DA6D050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D050);
  }

  return result;
}

uint64_t Signal.Event.hash(into:)()
{
  if (v0[1])
  {
    return MEMORY[0x2318ECB90](1);
  }

  v2 = *v0;
  MEMORY[0x2318ECB90](0);
  return MEMORY[0x2318ECBB0](v2);
}

Swift::Int Signal.Event.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x2318ECB90](1);
  }

  else
  {
    MEMORY[0x2318ECB90](0);
    MEMORY[0x2318ECBB0](v1);
  }

  return Hasher._finalize()();
}

void Signal.Event.init(from:)()
{
  sub_22E6D37D4();
  v61 = v0;
  v2 = v1;
  v59 = v3;
  v56 = sub_22E6CF1CC(&qword_27DA6D058, &qword_22E7294C8);
  sub_22E6CF988(v56);
  v58 = v4;
  v6 = *(v5 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v7);
  v9 = v55 - v8;
  v10 = sub_22E6CF1CC(&qword_27DA6D060, &qword_22E7294D0);
  sub_22E6CF988(v10);
  v57 = v11;
  v13 = *(v12 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v14);
  v16 = v55 - v15;
  v17 = sub_22E6CF1CC(&qword_27DA6D068, &unk_22E7294D8);
  sub_22E6CF988(v17);
  v60 = v18;
  v20 = *(v19 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v21);
  v23 = v55 - v22;
  v24 = v2[4];
  sub_22E6CF214(v2, v2[3]);
  sub_22E6F80FC();
  v25 = v61;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v25)
  {
    goto LABEL_9;
  }

  v55[1] = v16;
  v61 = v2;
  v26 = KeyedDecodingContainer.allKeys.getter();
  v30 = sub_22E6F376C(v26, 0);
  if (v28 == v29 >> 1)
  {
    goto LABEL_8;
  }

  v55[0] = 0;
  if (v28 < (v29 >> 1))
  {
    v31 = *(v27 + v28);
    v32 = sub_22E6F3764(v28 + 1);
    v34 = v33;
    v36 = v35;
    swift_unknownObjectRelease();
    v30 = v32;
    if (v34 == v36 >> 1)
    {
      if (v31)
      {
        sub_22E6F8150();
        sub_22E6F9C14();
        v37 = v55[0];
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v38 = v59;
        if (v37)
        {
          goto LABEL_12;
        }

        swift_unknownObjectRelease();
        (*(v58 + 8))(v9, v56);
        v48 = sub_22E6F9BE8();
        v49(v48, v17);
        v50 = 0;
      }

      else
      {
        sub_22E6F81A4();
        v45 = v55[0];
        sub_22E6F9C14();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v38 = v59;
        if (v45)
        {
LABEL_12:
          v46 = sub_22E6F9BE8();
          v47(v46, v17);
          swift_unknownObjectRelease();
          v2 = v61;
          goto LABEL_9;
        }

        v51 = KeyedDecodingContainer.decode(_:forKey:)();
        v52 = v60;
        v50 = v51;
        swift_unknownObjectRelease();
        v53 = sub_22E6F9C00();
        v54(v53);
        (*(v52 + 8))(v23, v17);
      }

      *v38 = v50;
      *(v38 + 8) = v31;
      sub_22E6CF2F4(v61);
      goto LABEL_10;
    }

LABEL_8:
    v59 = v30;
    v39 = type metadata accessor for DecodingError();
    swift_allocError();
    v41 = v40;
    v42 = *(sub_22E6CF1CC(&qword_27DA6CD20, &qword_22E729070) + 48);
    *v41 = &type metadata for Signal.Event;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84160], v39);
    swift_willThrow();
    swift_unknownObjectRelease();
    v43 = sub_22E6F9BE8();
    v44(v43, v17);
    v2 = v61;
LABEL_9:
    sub_22E6CF2F4(v2);
LABEL_10:
    sub_22E6D37BC();
    return;
  }

  __break(1u);
}

Swift::Int sub_22E6F87B4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x2318ECB90](1);
  }

  else
  {
    MEMORY[0x2318ECB90](0);
    MEMORY[0x2318ECBB0](v1);
  }

  return Hasher._finalize()();
}

uint64_t sub_22E6F8850(uint64_t a1)
{
  v2 = sub_22E6F93BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E6F888C(uint64_t a1)
{
  v2 = sub_22E6F93BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Signal.events.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_22E6F891C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for CloudAssets_Signal.Event(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v26 - v11;
  v13 = *a1;
  v14 = *(*a1 + 16);
  if (v14)
  {
    v26[0] = a2;
    v26[1] = v2;
    v27 = a1;
    v31 = MEMORY[0x277D84F90];
    result = sub_22E707A34(0, v14, 0);
    v16 = 0;
    v17 = v31;
    v18 = *(v6 + 80);
    v29 = v6;
    v30 = v13 + ((v18 + 32) & ~v18);
    v28 = v12;
    while (v16 < *(v13 + 16))
    {
      sub_22E6F9B00(v30 + *(v6 + 72) * v16, v12);
      sub_22E6F9B00(v12, v10);
      if (v10[8] != 1)
      {
        sub_22E6D0784();
        swift_allocError();
        swift_willThrow();
        sub_22E6F9B64(v10, type metadata accessor for CloudAssets_Signal.Event);
        sub_22E6F9B64(v12, type metadata accessor for CloudAssets_Signal.Event);
        sub_22E6F9B64(v27, type metadata accessor for CloudAssets_Signal);
      }

      v19 = v13;
      v20 = *v10;
      if (*v10)
      {
        sub_22E6F9B64(v10, type metadata accessor for CloudAssets_Signal.Event);
        v21 = 0;
        v22 = v12;
      }

      else
      {
        sub_22E6F9B64(v12, type metadata accessor for CloudAssets_Signal.Event);
        v21 = *(v10 + 2);
        v22 = v10;
      }

      result = sub_22E6F9B64(v22, type metadata accessor for CloudAssets_Signal.Event);
      v31 = v17;
      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      if (v24 >= v23 >> 1)
      {
        result = sub_22E707A34((v23 > 1), v24 + 1, 1);
        v17 = v31;
      }

      ++v16;
      *(v17 + 16) = v24 + 1;
      v25 = v17 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v20 != 0;
      v12 = v28;
      v6 = v29;
      v13 = v19;
      if (v14 == v16)
      {
        result = sub_22E6F9B64(v27, type metadata accessor for CloudAssets_Signal);
        a2 = v26[0];
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    result = sub_22E6F9B64(a1, type metadata accessor for CloudAssets_Signal);
    v17 = MEMORY[0x277D84F90];
LABEL_14:
    *a2 = v17;
  }

  return result;
}

void Signal.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22E6D37D4();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v47 = v25;
  v26 = type metadata accessor for BinaryDecodingOptions();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  sub_22E6CF9C8();
  v49 = v29 - v28;
  v30 = type metadata accessor for CloudAssets_Signal(0);
  v31 = sub_22E6CF978(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22E6CF9C8();
  v36 = v35 - v34;
  v37 = sub_22E6CF1CC(&qword_27DA6D070, &qword_22E7294E8);
  sub_22E6CF988(v37);
  v48 = v38;
  v40 = *(v39 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v41);
  v43 = &v46 - v42;
  v44 = v24[4];
  sub_22E6CF214(v24, v24[3]);
  sub_22E6F93BC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v20)
  {
    v45 = v48;
    sub_22E6D0730();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v46 = v37;
    v53 = v54;
    v52 = 0;
    v50 = 0u;
    v51 = 0u;
    BinaryDecodingOptions.init()();
    sub_22E6F9410();
    Message.init<A>(serializedBytes:extensions:partial:options:)();
    sub_22E6F891C(v36, &a10);
    (*(v45 + 8))(v43, v46);
    *v47 = a10;
  }

  sub_22E6CF2F4(v24);
  sub_22E6D37BC();
}

uint64_t sub_22E6F8EC8@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for CloudAssets_Signal.Event(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  v11 = *v1;
  v12 = a1 + *(type metadata accessor for CloudAssets_Signal(0) + 20);
  result = UnknownStorage.init()();
  v14 = *(v11 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v22 = a1;
    v23 = MEMORY[0x277D84F90];
    sub_22E707A54(0, v14, 0);
    v15 = v23;
    v16 = (v11 + 40);
    do
    {
      v17 = *(v16 - 1);
      v18 = *v16;
      *(v8 + 2) = 0;
      v19 = &v8[*(v3 + 24)];
      UnknownStorage.init()();
      if (v18)
      {
        *v8 = 1;
        v8[8] = 1;
      }

      else
      {
        *v8 = 0;
        v8[8] = 1;
        *(v8 + 2) = v17;
      }

      sub_22E6F9A9C(v8, v10);
      v23 = v15;
      v21 = *(v15 + 16);
      v20 = *(v15 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_22E707A54(v20 > 1, v21 + 1, 1);
        v15 = v23;
      }

      *(v15 + 16) = v21 + 1;
      result = sub_22E6F9A9C(v10, v15 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v21);
      v16 += 16;
      --v14;
    }

    while (v14);
    a1 = v22;
  }

  *a1 = v15;
  return result;
}

void Signal.encode(to:)()
{
  sub_22E6D37D4();
  v26 = v1;
  v3 = v2;
  v4 = type metadata accessor for CloudAssets_Signal(0);
  v5 = sub_22E6CF978(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22E6CF9C8();
  v10 = (v9 - v8);
  v29 = sub_22E6CF1CC(&qword_27DA6D080, &qword_22E7294F0);
  sub_22E6CF988(v29);
  v12 = v11;
  v14 = *(v13 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - v16;
  v18 = *v0;
  v19 = v3[4];
  sub_22E6CF214(v3, v3[3]);
  sub_22E6F93BC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v27 = v18;
  sub_22E6F8EC8(v10);
  sub_22E6F9410();
  v20 = v26;
  v21 = Message.serializedData(partial:)();
  if (v20)
  {
    sub_22E6F9BC0();
  }

  else
  {
    v23 = v21;
    v24 = v22;
    sub_22E6F9BC0();
    v27 = v23;
    v28 = v24;
    sub_22E6D0A5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_22E6CFBBC(v27, v28);
  }

  (*(v12 + 8))(v17, v29);
  sub_22E6D37BC();
}

uint64_t Signal.hash(into:)()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x2318ECB90](v2);
  if (v2)
  {
    v4 = (v1 + 40);
    do
    {
      if (*v4)
      {
        result = MEMORY[0x2318ECB90](1);
      }

      else
      {
        v5 = *(v4 - 1);
        MEMORY[0x2318ECB90](0);
        result = MEMORY[0x2318ECBB0](v5);
      }

      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return result;
}

Swift::Int Signal.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_22E6F2538(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_22E6F9344()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_22E6F2538(v3, v1);
  return Hasher._finalize()();
}

unint64_t sub_22E6F93BC()
{
  result = qword_27DA6D078;
  if (!qword_27DA6D078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D078);
  }

  return result;
}

unint64_t sub_22E6F9410()
{
  result = qword_27DA6CB78;
  if (!qword_27DA6CB78)
  {
    type metadata accessor for CloudAssets_Signal(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CB78);
  }

  return result;
}

unint64_t sub_22E6F946C()
{
  result = qword_27DA6D088;
  if (!qword_27DA6D088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D088);
  }

  return result;
}

unint64_t sub_22E6F94C4()
{
  result = qword_27DA6D090;
  if (!qword_27DA6D090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D090);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Signal.Event.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_22E6F9618(_BYTE *result, int a2, int a3)
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

unint64_t sub_22E6F96D8()
{
  result = qword_27DA6D098;
  if (!qword_27DA6D098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D098);
  }

  return result;
}

unint64_t sub_22E6F9730()
{
  result = qword_27DA6D0A0;
  if (!qword_27DA6D0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D0A0);
  }

  return result;
}

unint64_t sub_22E6F9788()
{
  result = qword_27DA6D0A8;
  if (!qword_27DA6D0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D0A8);
  }

  return result;
}

unint64_t sub_22E6F97E0()
{
  result = qword_27DA6D0B0;
  if (!qword_27DA6D0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D0B0);
  }

  return result;
}

unint64_t sub_22E6F9838()
{
  result = qword_27DA6D0B8;
  if (!qword_27DA6D0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D0B8);
  }

  return result;
}

unint64_t sub_22E6F9890()
{
  result = qword_27DA6D0C0;
  if (!qword_27DA6D0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D0C0);
  }

  return result;
}

unint64_t sub_22E6F98E8()
{
  result = qword_27DA6D0C8;
  if (!qword_27DA6D0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D0C8);
  }

  return result;
}

unint64_t sub_22E6F9940()
{
  result = qword_27DA6D0D0;
  if (!qword_27DA6D0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D0D0);
  }

  return result;
}

unint64_t sub_22E6F9998()
{
  result = qword_27DA6D0D8;
  if (!qword_27DA6D0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D0D8);
  }

  return result;
}

unint64_t sub_22E6F99F0()
{
  result = qword_27DA6D0E0;
  if (!qword_27DA6D0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D0E0);
  }

  return result;
}

unint64_t sub_22E6F9A48()
{
  result = qword_27DA6D0E8;
  if (!qword_27DA6D0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D0E8);
  }

  return result;
}

uint64_t sub_22E6F9A9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudAssets_Signal.Event(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22E6F9B00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudAssets_Signal.Event(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22E6F9B64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22E6CF978(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22E6F9BC0()
{

  return sub_22E6F9B64(v0, type metadata accessor for CloudAssets_Signal);
}

_BYTE *storeEnumTagSinglePayload for LoggerSubsystem(_BYTE *result, int a2, int a3)
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

uint64_t AssetManager.__allocating_init(serviceName:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_22E709E30();
  AssetManager.init(serviceName:)(v4, a2);
  return v2;
}

uint64_t AssetManager.process(request:)()
{
  sub_22E6E3BDC();
  v1[5] = v2;
  v1[6] = v0;
  v1[4] = v3;
  v4 = sub_22E6CF1CC(&qword_27DA6D118, &qword_22E729B10);
  v1[7] = v4;
  sub_22E6D376C(v4);
  v6 = *(v5 + 64);
  v1[8] = sub_22E6E3EA4();
  v7 = sub_22E6CF1CC(&qword_27DA6D120, &qword_22E729B18);
  sub_22E6D376C(v7);
  v9 = *(v8 + 64);
  v1[9] = sub_22E6E3EA4();
  v10 = sub_22E6CF1CC(&qword_27DA6D128, &qword_22E729B20);
  v1[10] = v10;
  sub_22E6E3A38(v10);
  v1[11] = v11;
  v13 = *(v12 + 64);
  v1[12] = sub_22E6E3EA4();
  v14 = sub_22E6CF1CC(&qword_27DA6D130, &qword_22E729B28);
  v1[13] = v14;
  sub_22E6E3A38(v14);
  v1[14] = v15;
  v17 = *(v16 + 64);
  v1[15] = sub_22E6E3EA4();
  v18 = sub_22E6E3C64();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

{
  sub_22E6E3BDC();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v4 = sub_22E6CF1CC(&qword_27DA6C7C8, &unk_22E727340);
  v1[6] = v4;
  sub_22E6D376C(v4);
  v6 = *(v5 + 64);
  v1[7] = sub_22E6E3EA4();
  v7 = sub_22E6CF1CC(&qword_27DA6CD88, &unk_22E728BE0);
  sub_22E6D376C(v7);
  v9 = *(v8 + 64);
  v1[8] = sub_22E6E3EA4();
  v10 = sub_22E6CF1CC(&qword_27DA6CD90, qword_22E72CA80);
  v1[9] = v10;
  sub_22E6E3A38(v10);
  v1[10] = v11;
  v13 = *(v12 + 64);
  v1[11] = sub_22E6E3EA4();
  v14 = sub_22E6CF1CC(&qword_27DA6C7B8, &unk_22E727290);
  v1[12] = v14;
  sub_22E6E3A38(v14);
  v1[13] = v15;
  v17 = *(v16 + 64);
  v1[14] = sub_22E6E3EA4();
  v18 = sub_22E6E3C64();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

{
  sub_22E6E3BDC();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v4 = sub_22E6CF1CC(&qword_27DA6C7C8, &unk_22E727340);
  v1[6] = v4;
  sub_22E6D376C(v4);
  v6 = *(v5 + 64);
  v1[7] = sub_22E6E3EA4();
  v7 = sub_22E6CF1CC(&qword_27DA6CD88, &unk_22E728BE0);
  sub_22E6D376C(v7);
  v9 = *(v8 + 64);
  v1[8] = sub_22E6E3EA4();
  v10 = sub_22E6CF1CC(&qword_27DA6CD90, qword_22E72CA80);
  v1[9] = v10;
  sub_22E6E3A38(v10);
  v1[10] = v11;
  v13 = *(v12 + 64);
  v1[11] = sub_22E6E3EA4();
  v14 = sub_22E6CF1CC(&qword_27DA6C7B8, &unk_22E727290);
  v1[12] = v14;
  sub_22E6E3A38(v14);
  v1[13] = v15;
  v17 = *(v16 + 64);
  v1[14] = sub_22E6E3EA4();
  v18 = sub_22E6E3C64();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_22E6F9EAC()
{
  sub_22E6E3D08();
  v2 = v1[5];
  sub_22E6CF1CC(&qword_27DA6D138, &qword_22E729B30);
  sub_22E6D3848();
  v3 = type metadata accessor for AssetDownloadRequest();
  sub_22E6E3A38(v3);
  v5 = *(v4 + 72);
  v6 = sub_22E709900();
  v1[16] = v6;
  *(v6 + 16) = xmmword_22E726B10;
  sub_22E7097C4();
  sub_22E7079E0(v2, v7 + v0);
  swift_task_alloc();
  sub_22E6ECB74();
  v1[17] = v8;
  *v8 = v9;
  v8[1] = sub_22E6F9FC4;
  v10 = v1[15];
  v11 = v1[6];
  sub_22E709F30();

  return AssetManager.process(requests:)();
}

uint64_t sub_22E6F9FC4()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  v3 = v2;
  sub_22E6ECB14();
  *v4 = v3;
  v6 = *(v5 + 136);
  v7 = *v1;
  sub_22E6E3C94();
  *v8 = v7;
  *(v3 + 144) = v0;

  if (!v0)
  {
    v9 = *(v3 + 128);
  }

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22E6FA0C8()
{
  sub_22E6E3BDC();
  v1 = v0[15];
  v2 = v0[12];
  MEMORY[0x2318EC7E0](v0[13]);
  v3 = *(MEMORY[0x277D858B8] + 4);
  swift_task_alloc();
  sub_22E6ECB74();
  v0[19] = v4;
  *v4 = v5;
  v4[1] = sub_22E6FA168;
  v6 = v0[12];
  v7 = v0[9];
  v8 = v0[10];
  sub_22E7097F4();

  return MEMORY[0x2822005A8]();
}

uint64_t sub_22E6FA168()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  v2 = *(v1 + 152);
  v3 = *v0;
  sub_22E6E3C94();
  *v4 = v3;

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22E6FA264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22E709A70();
  sub_22E709B3C();
  v13 = v12[9];
  v14 = v12[7];
  sub_22E709940();
  if (v15)
  {
    (*(v12[11] + 8))(v12[12], v12[10]);
    if (qword_27DA6C450 != -1)
    {
      sub_22E70976C();
    }

    v16 = type metadata accessor for Logger();
    sub_22E709E64(v16, qword_27DA6D0F0);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (sub_22E70A028(v18))
    {
      *sub_22E70A64C() = 0;
      sub_22E70997C();
      _os_log_impl(v19, v20, v21, v22, v23, 2u);
      sub_22E709A54();
    }

    v25 = v12[14];
    v24 = v12[15];
    v26 = v12[13];

    sub_22E6D0784();
    sub_22E709EB4();
    swift_willThrow();
    v27 = *(v25 + 8);
    v28 = sub_22E6D9164();
    v29(v28);
    goto LABEL_10;
  }

  v30 = v12[8];
  v31 = sub_22E709B30();
  sub_22E707944(v31, v32, v33, v34);
  sub_22E709E24();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v37 = v12[14];
  v36 = v12[15];
  v38 = v12[12];
  v39 = v12[13];
  v40 = v12[10];
  v41 = v12[11];
  if (EnumCaseMultiPayload == 1)
  {
    v12[3] = *v12[8];
    sub_22E6CF1CC(&qword_27DA6C7C0, qword_22E726DC0);
    swift_willThrowTypedImpl();
    (*(v41 + 8))(v38, v40);
    v42 = *(v37 + 8);
    v43 = sub_22E6D9164();
    v44(v43);
LABEL_10:
    sub_22E70A378();

    sub_22E6E3AD8();
    goto LABEL_12;
  }

  v46 = v12[8];
  v45 = v12[9];
  v47 = v12[4];
  (*(v41 + 8))(v12[12], v12[10]);
  v48 = *(v37 + 8);
  v49 = sub_22E6D9164();
  v50(v49);
  sub_22E709888();
  v51 = sub_22E709FE8();
  sub_22E708A80(v51, v52);

  sub_22E709850();
LABEL_12:
  sub_22E709A28();

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12);
}

uint64_t sub_22E6FA4B8()
{
  sub_22E6E3D08();
  v1 = *(v0 + 128);

  v2 = *(v0 + 144);
  sub_22E70A378();

  sub_22E6E3AD8();

  return v3();
}

uint64_t sub_22E6FA538()
{
  sub_22E6E3D08();
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  (*(v0[11] + 8))(v0[12], v0[10]);
  v4 = *(v2 + 8);
  v5 = sub_22E6F3AB0();
  v6(v5);
  v7 = v0[2];
  sub_22E70A378();

  sub_22E6E3AD8();

  return v8();
}

void sub_22E6FA5FC()
{
  sub_22E6EB570();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_22E6D3824();
  v8 = sub_22E6CF1CC(v6, v7);
  v9 = sub_22E6D376C(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v23 - v12;
  sub_22E708A38(v3, v23 - v12, &qword_27DA6C9A8, &qword_22E72C030);
  v14 = type metadata accessor for TaskPriority();
  v15 = sub_22E6CF550(v13, 1, v14);

  if (v15 == 1)
  {
    sub_22E70798C(v13, &qword_27DA6C9A8, &qword_22E72C030);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v14 - 8) + 8))(v13, v14);
  }

  v17 = *(v1 + 16);
  v16 = *(v1 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (v5)
    {
LABEL_6:
      v23[0] = v5;
      v21 = String.utf8CString.getter() + 32;

      if (v20 | v18)
      {
        v24[0] = 0;
        v24[1] = 0;
        v22 = v24;
        v24[2] = v18;
        v24[3] = v20;
      }

      else
      {
        v22 = 0;
      }

      v23[1] = 7;
      v23[2] = v22;
      v23[3] = v21;
      swift_task_create();

      sub_22E70798C(v3, &qword_27DA6C9A8, &qword_22E72C030);

      goto LABEL_14;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (v5)
    {
      goto LABEL_6;
    }
  }

  sub_22E70798C(v3, &qword_27DA6C9A8, &qword_22E72C030);
  if (v20 | v18)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v18;
    v24[7] = v20;
  }

  swift_task_create();
LABEL_14:
  sub_22E6EB538();
}

uint64_t sub_22E6FA874()
{
  v0 = type metadata accessor for Logger();
  sub_22E6E3658(v0, qword_27DA6D0F0);
  sub_22E6E3578(v0, qword_27DA6D0F0);
  type metadata accessor for AssetManager();
  sub_22E6CF1CC(&qword_27DA6D2C0, &qword_22E729E28);
  String.init<A>(describing:)();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_22E6FA914()
{
  type metadata accessor for AssetManager();
  v0 = swift_allocObject();
  result = AssetManager.init(serviceName:)(0xD00000000000001BLL, 0x800000022E72CD10);
  qword_27DA6D108 = v0;
  return result;
}

uint64_t sub_22E6FA98C()
{
  v0 = sub_22E6DAD10();
  v2 = v1;
  type metadata accessor for AssetManager();
  v3 = swift_allocObject();
  result = AssetManager.init(serviceName:)(v0, v2);
  qword_27DA6D110 = v3;
  return result;
}

uint64_t sub_22E6FAA34(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;
}

uint64_t AssetManager.init(serviceName:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_22E6D3778();
  v5 = type metadata accessor for XPCMessageSender();
  swift_allocObject();

  v6 = XPCMessageSender.init(machServiceName:)(v2, a2);

  v9 = v5;
  v10 = &off_284338900;
  *&v8 = v6;
  sub_22E7069EC(&v8, v3 + 16);
  return v3;
}

uint64_t sub_22E6FAB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_22E6CF1CC(&qword_27DA6C7C8, &unk_22E727340);
  v5[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v8 = sub_22E6CF1CC(&qword_27DA6D1B8, &qword_22E729CF8);
  v5[9] = v8;
  v9 = *(v8 - 8);
  v5[10] = v9;
  v10 = *(v9 + 64) + 15;
  v5[11] = swift_task_alloc();
  v11 = type metadata accessor for Asset(0);
  v5[12] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v13 = sub_22E6CF1CC(&qword_27DA6D190, &qword_22E729E30);
  v5[14] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v5[15] = swift_task_alloc();
  v15 = *(*(sub_22E6CF1CC(&qword_27DA6D1C0, &qword_22E729D00) - 8) + 64) + 15;
  v5[16] = swift_task_alloc();
  v16 = sub_22E6CF1CC(&qword_27DA6D1C8, &qword_22E729D08);
  v5[17] = v16;
  v17 = *(v16 - 8);
  v5[18] = v17;
  v18 = *(v17 + 64) + 15;
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22E6FAD8C, 0, 0);
}

uint64_t sub_22E6FAD8C()
{
  sub_22E6E3BDC();
  v1 = v0[19];
  v2 = v0[5];
  v3 = sub_22E6CF1CC(&qword_27DA6D188, &qword_22E729BC0);
  MEMORY[0x2318EC7E0](v3);
  v4 = *(MEMORY[0x277D858B8] + 4);
  swift_task_alloc();
  sub_22E6ECB74();
  v0[20] = v5;
  *v5 = v6;
  v5[1] = sub_22E6FAE44;
  v7 = v0[19];
  v8 = v0[16];
  v9 = v0[17];
  sub_22E7097F4();

  return MEMORY[0x2822005A8](v10, v11, v12, v13, v14);
}

uint64_t sub_22E6FAE44()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  v2 = *(v1 + 160);
  v3 = *v0;
  sub_22E6E3C94();
  *v4 = v3;

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22E6FAF40()
{
  if (sub_22E6CF550(v0[16], 1, v0[14]) == 1)
  {
    (*(v0[18] + 8))(v0[19], v0[17]);
    v1 = v0[19];
    v3 = v0[15];
    v2 = v0[16];
    v4 = v0[13];
    v5 = v0[11];
    v6 = v0[8];
    v7 = v0[6];
    v0[4] = 0;
    sub_22E6CF1CC(&qword_27DA6D1B0, &qword_22E729CE0);
    sub_22E70A200();
    AsyncThrowingStream.Continuation.finish(throwing:)();

    sub_22E6E3AD8();

    return v8();
  }

  else
  {
    v10 = v0[15];
    v11 = v0[12];
    v12 = sub_22E6F3AB0();
    sub_22E707944(v12, v13, v14, v15);
    if (sub_22E6CF550(v10, 1, v11) == 1)
    {
      v17 = v0[10];
      v16 = v0[11];
      v19 = v0[8];
      v18 = v0[9];
      v20 = v0[6];
      v21 = v0[7];
      sub_22E6D0784();
      *v19 = sub_22E709EB4();
      sub_22E6F3808();
      swift_storeEnumTagMultiPayload();
      sub_22E6CF1CC(&qword_27DA6D1B0, &qword_22E729CE0);
      sub_22E70A2CC();
      v22 = *(v17 + 8);
      v23 = sub_22E709B30();
      v24(v23);
    }

    else
    {
      v25 = v0[15];
      v26 = v0[13];
      v28 = v0[10];
      v27 = v0[11];
      v30 = v0[8];
      v29 = v0[9];
      v31 = v0[6];
      v32 = v0[7];
      sub_22E709820();
      sub_22E708A80(v33, v26);
      sub_22E7097AC();
      sub_22E7079E0(v26, v30);
      swift_storeEnumTagMultiPayload();
      sub_22E6CF1CC(&qword_27DA6D1B0, &qword_22E729CE0);
      sub_22E70A1F4();
      AsyncThrowingStream.Continuation.yield(_:)();
      v34 = *(v28 + 8);
      v35 = sub_22E709D48();
      v36(v35);
      sub_22E709808();
      sub_22E708D18();
    }

    v37 = *(MEMORY[0x277D858B8] + 4);
    swift_task_alloc();
    sub_22E6ECB74();
    v0[20] = v38;
    *v38 = v39;
    v38[1] = sub_22E6FAE44;
    v40 = v0[19];
    v41 = v0[16];
    v42 = v0[17];
    sub_22E7097F4();

    return MEMORY[0x2822005A8](v43, v44, v45, v46, v47);
  }
}

uint64_t sub_22E6FB1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22E709A70();
  sub_22E709B3C();
  v13 = v12[6];
  (*(v12[18] + 8))(v12[19], v12[17]);
  v12[3] = v12[2];
  sub_22E6CF1CC(&qword_27DA6D1B0, &qword_22E729CE0);
  AsyncThrowingStream.Continuation.finish(throwing:)();
  v14 = v12[19];
  v16 = v12[15];
  v15 = v12[16];
  v17 = v12[13];
  v18 = v12[11];
  v19 = v12[8];
  v20 = v12[6];
  v12[4] = 0;
  sub_22E6CF1CC(&qword_27DA6D1B0, &qword_22E729CE0);
  sub_22E70A40C();
  AsyncThrowingStream.Continuation.finish(throwing:)();

  sub_22E6E3AD8();
  sub_22E709A28();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_22E6FB454()
{
  sub_22E6E3D08();
  v1 = v0[4];
  sub_22E6CF1CC(&qword_27DA6D140, &qword_22E729B48);
  sub_22E6D3848();
  v2 = type metadata accessor for AssetUploadRequest();
  sub_22E6E3A38(v2);
  v4 = *(v3 + 72);
  v5 = sub_22E709900();
  v0[15] = v5;
  sub_22E709B78(v5, xmmword_22E726B10);
  swift_task_alloc();
  sub_22E6ECB74();
  v0[16] = v6;
  *v6 = v7;
  v6[1] = sub_22E6FB55C;
  v8 = v0[14];
  v9 = v0[5];
  sub_22E709F30();

  return AssetManager.process(requests:)();
}

uint64_t sub_22E6FB55C()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  v3 = v2;
  sub_22E6ECB14();
  *v4 = v3;
  v6 = *(v5 + 128);
  v7 = *v1;
  sub_22E6E3C94();
  *v8 = v7;
  *(v3 + 136) = v0;

  if (!v0)
  {
    v9 = *(v3 + 120);
  }

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22E6FB660()
{
  sub_22E6E3BDC();
  v1 = v0[14];
  v2 = v0[11];
  MEMORY[0x2318EC7E0](v0[12]);
  v3 = *(MEMORY[0x277D858B8] + 4);
  swift_task_alloc();
  sub_22E6ECB74();
  v0[18] = v4;
  *v4 = v5;
  v4[1] = sub_22E6FB700;
  v6 = v0[11];
  v7 = v0[8];
  v8 = v0[9];
  sub_22E7097F4();

  return MEMORY[0x2822005A8](v9, v10, v11, v12, v13);
}

uint64_t sub_22E6FB700()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  v2 = *(v1 + 144);
  v3 = *v0;
  sub_22E6E3C94();
  *v4 = v3;

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22E6FB7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22E709A70();
  sub_22E709B3C();
  v13 = v12[8];
  v14 = v12[6];
  sub_22E709940();
  if (v34)
  {
    (*(v12[10] + 8))(v12[11], v12[9]);
    if (qword_27DA6C450 != -1)
    {
      sub_22E70976C();
    }

    v15 = type metadata accessor for Logger();
    sub_22E709E64(v15, qword_27DA6D0F0);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (sub_22E70A028(v17))
    {
      *sub_22E70A64C() = 0;
      sub_22E70997C();
      _os_log_impl(v18, v19, v20, v21, v22, 2u);
      sub_22E709A54();
    }

    v24 = v12[13];
    v23 = v12[14];
    v25 = v12[12];

    sub_22E6D0784();
    sub_22E709EB4();
    swift_willThrow();
    v26 = *(v24 + 8);
    v27 = sub_22E6D9164();
    v28(v27);
  }

  else
  {
    v29 = v12[7];
    v30 = sub_22E709B30();
    sub_22E707944(v30, v31, v32, v33);
    sub_22E709E24();
    swift_getEnumCaseMultiPayload();
    sub_22E70A3E4();
    if (!v34)
    {
      v41 = v12[7];
      v40 = v12[8];
      v42 = v12[3];
      v43 = sub_22E709C5C();
      v44(v43);
      v45 = sub_22E709C4C();
      v46(v45);
      sub_22E709820();
      sub_22E708A80(v41, v42);

      sub_22E709850();
      goto LABEL_12;
    }

    v35 = *v12[7];
    swift_willThrow();
    v36 = sub_22E709C5C();
    v37(v36);
    v38 = sub_22E709C4C();
    v39(v38);
  }

  sub_22E709FCC();

  sub_22E6E3AD8();
LABEL_12:
  sub_22E709A28();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12);
}

uint64_t sub_22E6FBA0C()
{
  sub_22E6E3D08();
  v1 = *(v0 + 120);

  v2 = *(v0 + 136);
  sub_22E709FCC();

  sub_22E6E3AD8();

  return v3();
}

uint64_t sub_22E6FBA8C()
{
  sub_22E6E3D08();
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  (*(v0[10] + 8))(v0[11], v0[9]);
  v4 = *(v2 + 8);
  v5 = sub_22E6F3AB0();
  v6(v5);
  v7 = v0[2];
  sub_22E709FCC();

  sub_22E6E3AD8();

  return v8();
}

uint64_t AssetManager.process(requests:)()
{
  sub_22E6E3BDC();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v1[5] = *v0;
  v4 = sub_22E6CF1CC(&qword_27DA6D148, &qword_22E729B58);
  v1[6] = v4;
  sub_22E6E3A38(v4);
  v1[7] = v5;
  v7 = *(v6 + 64);
  v1[8] = sub_22E6E3EA4();
  v8 = sub_22E6CF1CC(&qword_27DA6D150, &qword_22E729B60);
  v1[9] = v8;
  sub_22E6E3A38(v8);
  v1[10] = v9;
  v11 = *(v10 + 64);
  v1[11] = sub_22E6E3EA4();
  v12 = type metadata accessor for TaskPriority();
  v1[12] = v12;
  sub_22E6E3A38(v12);
  v1[13] = v13;
  v15 = *(v14 + 64);
  v1[14] = sub_22E6E3EA4();
  v16 = sub_22E6E3C64();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

{
  sub_22E6E3D08();
  v0[2] = v1;
  v2 = sub_22E6CF1CC(&qword_27DA6D148, &qword_22E729B58);
  v0[3] = v2;
  sub_22E6E3A38(v2);
  v0[4] = v3;
  v5 = *(v4 + 64);
  v0[5] = sub_22E6E3EA4();
  v6 = sub_22E6CF1CC(&qword_27DA6D130, &qword_22E729B28);
  v0[6] = v6;
  sub_22E6E3A38(v6);
  v0[7] = v7;
  v9 = *(v8 + 64);
  v0[8] = sub_22E6E3EA4();
  swift_task_alloc();
  sub_22E6ECB74();
  v0[9] = v10;
  *v10 = v11;
  v10[1] = sub_22E6FC98C;
  sub_22E709F30();

  return AssetManager.process(requests:)();
}

{
  sub_22E6E3BDC();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v1[5] = *v0;
  v4 = sub_22E6CF1CC(&qword_27DA6D160, &qword_22E729B80);
  v1[6] = v4;
  sub_22E6E3A38(v4);
  v1[7] = v5;
  v7 = *(v6 + 64);
  v1[8] = sub_22E6E3EA4();
  v8 = sub_22E6CF1CC(&qword_27DA6D168, &qword_22E729B88);
  v1[9] = v8;
  sub_22E6E3A38(v8);
  v1[10] = v9;
  v11 = *(v10 + 64);
  v1[11] = sub_22E6E3EA4();
  v12 = sub_22E6CF1CC(&qword_27DA6D170, &qword_22E729B90);
  v1[12] = v12;
  sub_22E6E3A38(v12);
  v1[13] = v13;
  v15 = *(v14 + 64);
  v1[14] = sub_22E6E3EA4();
  v16 = type metadata accessor for TaskPriority();
  v1[15] = v16;
  sub_22E6E3A38(v16);
  v1[16] = v17;
  v19 = *(v18 + 64);
  v1[17] = sub_22E6E3EA4();
  v20 = sub_22E6E3C64();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

{
  sub_22E6E3BDC();
  v1[3] = v2;
  v1[4] = v0;
  v1[5] = *v0;
  v3 = sub_22E6CF1CC(&qword_27DA6D148, &qword_22E729B58);
  v1[6] = v3;
  sub_22E6E3A38(v3);
  v1[7] = v4;
  v6 = *(v5 + 64);
  v1[8] = sub_22E6E3EA4();
  v7 = sub_22E6CF1CC(&qword_27DA6C7B8, &unk_22E727290);
  sub_22E6D376C(v7);
  v9 = *(v8 + 64);
  v1[9] = sub_22E6E3EA4();
  v10 = sub_22E6CF1CC(&qword_27DA6D178, &qword_22E729BB0);
  v1[10] = v10;
  sub_22E6E3A38(v10);
  v1[11] = v11;
  v13 = *(v12 + 64);
  v1[12] = sub_22E6E3EA4();
  v14 = sub_22E6CF1CC(&qword_27DA6D180, &qword_22E729BB8);
  v1[13] = v14;
  sub_22E6E3A38(v14);
  v1[14] = v15;
  v17 = *(v16 + 64);
  v1[15] = sub_22E6E3EA4();
  v18 = sub_22E6CF1CC(&qword_27DA6D188, &qword_22E729BC0);
  v1[16] = v18;
  sub_22E6E3A38(v18);
  v1[17] = v19;
  v21 = *(v20 + 64);
  v1[18] = sub_22E6E3EA4();
  v22 = sub_22E6CF1CC(&qword_27DA6C898, &qword_22E727350);
  v1[19] = v22;
  sub_22E6E3A38(v22);
  v1[20] = v23;
  v25 = *(v24 + 64);
  v1[21] = sub_22E6E3EA4();
  v26 = sub_22E6CF1CC(&qword_27DA6C890, &qword_22E7272B0);
  v1[22] = v26;
  sub_22E6E3A38(v26);
  v1[23] = v27;
  v29 = *(v28 + 64);
  v1[24] = sub_22E6E3EA4();
  v30 = sub_22E6CF1CC(&qword_27DA6C7B0, &unk_22E726D30);
  v1[25] = v30;
  sub_22E6E3A38(v30);
  v1[26] = v31;
  v33 = *(v32 + 64) + 15;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v34 = sub_22E6CF1CC(&qword_27DA6D150, &qword_22E729B60);
  v1[29] = v34;
  sub_22E6E3A38(v34);
  v1[30] = v35;
  v37 = *(v36 + 64);
  v1[31] = sub_22E6E3EA4();
  v38 = type metadata accessor for TaskPriority();
  v1[32] = v38;
  sub_22E6E3A38(v38);
  v1[33] = v39;
  v41 = *(v40 + 64);
  v1[34] = sub_22E6E3EA4();
  v42 = sub_22E6E3C64();

  return MEMORY[0x2822009F8](v42, v43, v44);
}

{
  sub_22E6E3BDC();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = *v0;
  v3 = sub_22E6CF1CC(&qword_27DA6C9A8, &qword_22E72C030);
  sub_22E6D376C(v3);
  v5 = *(v4 + 64);
  v1[5] = sub_22E6E3EA4();
  v6 = sub_22E6CF1CC(&qword_27DA6C7B8, &unk_22E727290);
  v1[6] = v6;
  sub_22E6E3A38(v6);
  v1[7] = v7;
  v9 = *(v8 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v10 = type metadata accessor for TaskPriority();
  v1[10] = v10;
  sub_22E6E3A38(v10);
  v1[11] = v11;
  v13 = *(v12 + 64);
  v1[12] = sub_22E6E3EA4();
  v14 = sub_22E6E3C64();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_22E6FBCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_22E709D1C();
  a21 = v23;
  a22 = v24;
  sub_22E709ECC();
  a20 = v22;
  if (qword_27DA6C450 != -1)
  {
    sub_22E70976C();
  }

  v25 = v22[3];
  v26 = type metadata accessor for Logger();
  sub_22E709E64(v26, qword_27DA6D0F0);

  v27 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_22E70A604();
  if (sub_22E70A290())
  {
    v29 = v22[13];
    v28 = v22[14];
    v30 = v22[12];
    v31 = v22[3];
    sub_22E709F90();
    sub_22E70A060();
    sub_22E70A284();
    sub_22E70A278(4.8151e-34);
    type metadata accessor for AssetUploadRequest();
    v32 = sub_22E709F04();
    v33 = MEMORY[0x2318EC680](v32);
    sub_22E706BF8(v33, v34, &a11);
    sub_22E70A3B8();
    sub_22E709C2C();
    sub_22E7097DC();
    sub_22E7096D0(v35, v36);
    sub_22E709DE8();
    dispatch thunk of CustomStringConvertible.description.getter();
    v37 = sub_22E709964();
    v38(v37);
    v39 = sub_22E6D3824();
    sub_22E706BF8(v39, v40, v41);
    sub_22E70A0B0();
    *(v25 + 14) = v28;
    sub_22E70999C();
    _os_log_impl(v42, v43, v44, v45, v46, 0x16u);
    sub_22E70A07C();
    sub_22E6E3CC8();
    sub_22E7099AC();
  }

  v47 = v22[3];
  v48 = *sub_22E70A0C8(v22[4]);
  sub_22E709F54(&unk_22E729B68);
  sub_22E6ECB74();
  v22[15] = v49;
  *v49 = v50;
  v49[1] = sub_22E6FBE7C;
  v51 = v22[11];
  sub_22E709F30();
  sub_22E709BF0();

  return v55(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_22E6FBE7C()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  sub_22E6ECB14();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  sub_22E6E3C94();
  *v7 = v6;
  *(v8 + 128) = v0;

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22E6FBF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22E709A70();
  sub_22E709B3C();
  v34 = v12[14];
  v14 = v12[10];
  v13 = v12[11];
  v15 = v12[8];
  v16 = v12[9];
  v18 = v12[6];
  v17 = v12[7];
  v19 = v12[5];
  v20 = v12[2];
  v21 = swift_task_alloc();
  *(v21 + 16) = v13;
  *(v21 + 24) = v19;
  sub_22E6CF1CC(&qword_27DA6C7C8, &unk_22E727340);
  (*(v17 + 104))(v15, *MEMORY[0x277D858A0], v18);
  AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();

  v22 = *(v14 + 8);
  v23 = sub_22E6D9164();
  v24(v23);

  sub_22E709850();
  sub_22E709A28();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, v34, a10, a11, a12);
}

uint64_t sub_22E6FC098()
{
  sub_22E6E3BDC();
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[8];

  sub_22E6E3AD8();
  v5 = v0[16];

  return v4();
}

uint64_t sub_22E6FC274()
{
  sub_22E6E3D08();
  v2 = v1[4];
  sub_22E6CF1CC(&qword_27DA6D138, &qword_22E729B30);
  sub_22E6D3848();
  v3 = type metadata accessor for AssetDownloadRequest();
  sub_22E6E3A38(v3);
  v5 = *(v4 + 72);
  v6 = sub_22E709900();
  v1[15] = v6;
  *(v6 + 16) = xmmword_22E726B10;
  sub_22E7097C4();
  sub_22E7079E0(v2, v7 + v0);
  swift_task_alloc();
  sub_22E6ECB74();
  v1[16] = v8;
  *v8 = v9;
  v8[1] = sub_22E6FC38C;
  v10 = v1[14];
  v11 = v1[5];
  sub_22E709F30();

  return AssetManager.process(requests:)();
}

uint64_t sub_22E6FC38C()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  v3 = v2;
  sub_22E6ECB14();
  *v4 = v3;
  v6 = *(v5 + 128);
  v7 = *v1;
  sub_22E6E3C94();
  *v8 = v7;
  *(v3 + 136) = v0;

  if (!v0)
  {
    v9 = *(v3 + 120);
  }

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22E6FC490()
{
  sub_22E6E3BDC();
  v1 = v0[14];
  v2 = v0[11];
  MEMORY[0x2318EC7E0](v0[12]);
  v3 = *(MEMORY[0x277D858B8] + 4);
  swift_task_alloc();
  sub_22E6ECB74();
  v0[18] = v4;
  *v4 = v5;
  v4[1] = sub_22E6FC530;
  v6 = v0[11];
  v7 = v0[8];
  v8 = v0[9];
  sub_22E7097F4();

  return MEMORY[0x2822005A8](v9, v10, v11, v12, v13);
}

uint64_t sub_22E6FC530()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  v2 = *(v1 + 144);
  v3 = *v0;
  sub_22E6E3C94();
  *v4 = v3;

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22E6FC62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22E709A70();
  sub_22E709B3C();
  v13 = v12[8];
  v14 = v12[6];
  sub_22E709940();
  if (v34)
  {
    (*(v12[10] + 8))(v12[11], v12[9]);
    if (qword_27DA6C450 != -1)
    {
      sub_22E70976C();
    }

    v15 = type metadata accessor for Logger();
    sub_22E709E64(v15, qword_27DA6D0F0);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (sub_22E70A028(v17))
    {
      *sub_22E70A64C() = 0;
      sub_22E70997C();
      _os_log_impl(v18, v19, v20, v21, v22, 2u);
      sub_22E709A54();
    }

    v24 = v12[13];
    v23 = v12[14];
    v25 = v12[12];

    sub_22E6D0784();
    sub_22E709EB4();
    swift_willThrow();
    v26 = *(v24 + 8);
    v27 = sub_22E6D9164();
    v28(v27);
  }

  else
  {
    v29 = v12[7];
    v30 = sub_22E709B30();
    sub_22E707944(v30, v31, v32, v33);
    sub_22E709E24();
    swift_getEnumCaseMultiPayload();
    sub_22E70A3E4();
    if (!v34)
    {
      v41 = v12[7];
      v40 = v12[8];
      v42 = v12[3];
      v43 = sub_22E709C5C();
      v44(v43);
      v45 = sub_22E709C4C();
      v46(v45);
      sub_22E709820();
      sub_22E708A80(v41, v42);

      sub_22E709850();
      goto LABEL_12;
    }

    v35 = *v12[7];
    swift_willThrow();
    v36 = sub_22E709C5C();
    v37(v36);
    v38 = sub_22E709C4C();
    v39(v38);
  }

  sub_22E709FCC();

  sub_22E6E3AD8();
LABEL_12:
  sub_22E709A28();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12);
}

uint64_t sub_22E6FC98C()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  sub_22E6ECB14();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  sub_22E6E3C94();
  *v7 = v6;
  *(v8 + 80) = v0;

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22E6FCA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22E709A70();
  sub_22E709B3C();
  v14 = v12[7];
  v13 = v12[8];
  v16 = v12[5];
  v15 = v12[6];
  v17 = v12[3];
  v18 = v12[4];
  v19 = v12[2];
  *(swift_task_alloc() + 16) = v13;
  sub_22E6CF1CC(&qword_27DA6C7C8, &unk_22E727340);
  (*(v18 + 104))(v16, *MEMORY[0x277D858A0], v17);
  AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();

  v20 = *(v14 + 8);
  v21 = sub_22E6F3AB0();
  v22(v21);

  sub_22E709850();
  sub_22E709A28();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_22E6FCB94()
{
  sub_22E6E3BDC();
  v1 = v0[8];
  v2 = v0[5];

  sub_22E6E3AD8();
  v4 = v0[10];

  return v3();
}

uint64_t sub_22E6FCDD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_22E709D1C();
  a21 = v23;
  a22 = v24;
  sub_22E709ECC();
  a20 = v22;
  if (qword_27DA6C450 != -1)
  {
    sub_22E70976C();
  }

  v25 = v22[3];
  v26 = type metadata accessor for Logger();
  sub_22E709E64(v26, qword_27DA6D0F0);

  v27 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_22E70A604();
  if (sub_22E70A290())
  {
    v29 = v22[16];
    v28 = v22[17];
    v30 = v22[15];
    v31 = v22[3];
    sub_22E709F90();
    sub_22E70A060();
    sub_22E70A284();
    sub_22E70A278(4.8151e-34);
    type metadata accessor for AssetDownloadRequest();
    v32 = sub_22E709F04();
    v33 = MEMORY[0x2318EC680](v32);
    sub_22E706BF8(v33, v34, &a11);
    sub_22E70A3B8();
    sub_22E709C2C();
    sub_22E7097DC();
    sub_22E7096D0(v35, v36);
    sub_22E709DE8();
    dispatch thunk of CustomStringConvertible.description.getter();
    v37 = sub_22E709964();
    v38(v37);
    v39 = sub_22E6D3824();
    sub_22E706BF8(v39, v40, v41);
    sub_22E70A0B0();
    *(v25 + 14) = v28;
    sub_22E70999C();
    _os_log_impl(v42, v43, v44, v45, v46, 0x16u);
    sub_22E70A07C();
    sub_22E6E3CC8();
    sub_22E7099AC();
  }

  v47 = v22[3];
  v48 = *sub_22E70A0C8(v22[4]);
  sub_22E709F54(&unk_22E729B98);
  sub_22E6ECB74();
  v22[18] = v49;
  *v49 = v50;
  v49[1] = sub_22E6FCF9C;
  v51 = v22[14];
  sub_22E709F30();
  sub_22E709BF0();

  return v55(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_22E6FCF9C()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  sub_22E6ECB14();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *v1;
  sub_22E6E3C94();
  *v7 = v6;
  *(v8 + 152) = v0;

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22E6FD098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22E709F74();
  sub_22E70A224();
  v17 = v16[3];
  v18 = *(v17 + 16);
  v19 = MEMORY[0x277D84F90];
  if (v18)
  {
    v21 = v16[6];
    v20 = v16[7];
    v55 = MEMORY[0x277D84F90];
    sub_22E7071CC(0, v18, 0);
    v19 = v55;
    v22 = type metadata accessor for AssetDownloadRequest();
    sub_22E6E3A38(v22);
    v24 = v17 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v26 = *(v25 + 72);
    do
    {
      v27 = v16[8];
      v28 = *(v21 + 48);
      sub_22E7097C4();
      sub_22E7079E0(v24, v27 + v28);
      v29 = type metadata accessor for UUID();
      sub_22E6D901C(v29);
      (*(v30 + 16))(v27, v27 + v28);
      a13 = v19;
      v32 = *(v19 + 16);
      v31 = *(v19 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_22E7071CC(v31 > 1, v32 + 1, 1);
      }

      v33 = v16[8];
      *(v19 + 16) = v32 + 1;
      sub_22E707944(v33, v19 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v32, &qword_27DA6D160, &qword_22E729B80);
      v24 += v26;
      --v18;
    }

    while (v18);
    v17 = v16[3];
  }

  v35 = v16[13];
  v34 = v16[14];
  v36 = v16[11];
  v52 = v16[12];
  v53 = v16[17];
  v37 = v16[9];
  v38 = v16[10];
  v54 = v16[8];
  v39 = v16[5];
  v51 = v16[2];
  v40 = sub_22E6FDFA4(v19);
  v41 = swift_task_alloc();
  v41[2] = v34;
  v41[3] = v40;
  v41[4] = v17;
  v41[5] = v39;
  sub_22E6CF1CC(&qword_27DA6D118, &qword_22E729B10);
  (*(v38 + 104))(v36, *MEMORY[0x277D858A0], v37);
  sub_22E709B30();
  AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();

  (*(v35 + 8))(v34, v52);

  sub_22E709850();
  sub_22E6E3F68();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, v51, v52, v53, v54, a13, a14, a15, a16);
}

uint64_t sub_22E6FD330()
{
  sub_22E6E3D08();
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[8];

  sub_22E6E3AD8();
  v6 = v0[19];

  return v5();
}

uint64_t sub_22E6FD3B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a1;
  v28 = a3;
  v4 = sub_22E6CF1CC(&qword_27DA6D1B0, &qword_22E729CE0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - v7;
  v26 = &v25 - v7;
  v9 = sub_22E6CF1CC(&qword_27DA6D150, &qword_22E729B60);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = sub_22E6CF1CC(&qword_27DA6C9A8, &qword_22E72C030);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v25 - v16;
  v18 = type metadata accessor for TaskPriority();
  sub_22E6CF58C(v17, 1, 1, v18);
  (*(v10 + 16))(v13, a2, v9);
  v19 = v8;
  v20 = v4;
  (*(v5 + 16))(v19, v27, v4);
  v21 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v22 = (v11 + *(v5 + 80) + v21) & ~*(v5 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  (*(v10 + 32))(v23 + v21, v13, v9);
  (*(v5 + 32))(v23 + v22, v26, v20);
  *(v23 + ((v6 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v28;
  sub_22E6FA5FC();
}

uint64_t sub_22E6FD67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_22E6CF1CC(&qword_27DA6C7C8, &unk_22E727340);
  v5[5] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[6] = swift_task_alloc();
  v8 = sub_22E6CF1CC(&qword_27DA6D1B8, &qword_22E729CF8);
  v5[7] = v8;
  v9 = *(v8 - 8);
  v5[8] = v9;
  v10 = *(v9 + 64) + 15;
  v5[9] = swift_task_alloc();
  v11 = type metadata accessor for Asset(0);
  v5[10] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v13 = *(*(sub_22E6CF1CC(&qword_27DA6D190, &qword_22E729E30) - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v14 = type metadata accessor for UploadResponseMessage();
  v5[16] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v5[17] = swift_task_alloc();
  v16 = *(*(sub_22E6CF1CC(&qword_27DA6D1E0, &qword_22E729D30) - 8) + 64) + 15;
  v5[18] = swift_task_alloc();
  v17 = sub_22E6CF1CC(&qword_27DA6D1E8, &qword_22E729D38);
  v5[19] = v17;
  v18 = *(v17 - 8);
  v5[20] = v18;
  v19 = *(v18 + 64) + 15;
  v5[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22E6FD8E0, 0, 0);
}

uint64_t sub_22E6FD8E0()
{
  sub_22E6E3BDC();
  v1 = v0[21];
  v2 = v0[3];
  v3 = sub_22E6CF1CC(&qword_27DA6D150, &qword_22E729B60);
  MEMORY[0x2318EC7E0](v3);
  v4 = *(MEMORY[0x277D858B8] + 4);
  swift_task_alloc();
  sub_22E6ECB74();
  v0[22] = v5;
  *v5 = v6;
  v5[1] = sub_22E6FD998;
  v7 = v0[21];
  v8 = v0[18];
  v9 = v0[19];
  sub_22E7097F4();

  return MEMORY[0x2822005A8](v10, v11, v12, v13, v14);
}

uint64_t sub_22E6FD998()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  v2 = *(v1 + 176);
  v3 = *v0;
  sub_22E6E3C94();
  *v4 = v3;

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_22E6FDA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22E709F74();
  sub_22E70A224();
  if (sub_22E6CF550(v16[18], 1, v16[16]) == 1)
  {
    v17 = v16[20];
    v18 = v16[21];
    v19 = v16[19];
    sub_22E70A000();
    v95 = v20;
    (*(v21 + 8))(v18);

    sub_22E709850();
    sub_22E6E3F68();

    v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, v95, a13, a14, a15, a16);
  }

  else
  {
    v30 = v16[17];
    sub_22E709BA8();
    v31 = sub_22E6E3EEC();
    sub_22E708A80(v31, v32);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v33 = v16[14];
      v34 = v16[10];
      sub_22E707944(v16[17], v16[15], &qword_27DA6D190, &qword_22E729E30);
      v35 = sub_22E6F3AB0();
      sub_22E708A38(v35, v36, &qword_27DA6D190, &qword_22E729E30);
      if (sub_22E6CF550(v33, 1, v34) == 1)
      {
        v38 = v16[8];
        v37 = v16[9];
        v40 = v16[6];
        v39 = v16[7];
        v41 = v16[4];
        v42 = v16[5];
        sub_22E6D0784();
        *v40 = sub_22E709EB4();
        sub_22E6F3808();
        swift_storeEnumTagMultiPayload();
        sub_22E6CF1CC(&qword_27DA6D1B0, &qword_22E729CE0);
        sub_22E70A2CC();
        v43 = *(v38 + 8);
        v44 = sub_22E709B30();
        v45(v44);
      }

      else
      {
        v47 = v16[13];
        v46 = v16[14];
        sub_22E709820();
        sub_22E708A80(v48, v49);
        if (qword_27DA6C450 != -1)
        {
          sub_22E70976C();
        }

        v50 = v16[12];
        v51 = v16[13];
        v52 = type metadata accessor for Logger();
        sub_22E6E3578(v52, qword_27DA6D0F0);
        sub_22E7097AC();
        v53 = sub_22E6F3AB0();
        sub_22E7079E0(v53, v54);
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.default.getter();
        v57 = sub_22E70A028(v56);
        v58 = v16[12];
        if (v57)
        {
          v60 = v16[10];
          v59 = v16[11];
          v61 = sub_22E709FA8();
          v96 = sub_22E709F3C();
          *v61 = 136315138;
          sub_22E7097AC();
          v62 = sub_22E6D3888();
          sub_22E7079E0(v62, v63);
          sub_22E709FE8();
          String.init<A>(describing:)();
          sub_22E709808();
          sub_22E708D18();
          v64 = sub_22E709FE8();
          v67 = sub_22E706BF8(v64, v65, v66);

          *(v61 + 4) = v67;
          sub_22E70997C();
          _os_log_impl(v68, v69, v70, v71, v72, 0xCu);
          sub_22E6CF2F4(v96);
          sub_22E7099AC();
          sub_22E709A54();
        }

        else
        {

          sub_22E709808();
          sub_22E708D18();
        }

        v73 = v16[13];
        v75 = v16[8];
        v74 = v16[9];
        v77 = v16[6];
        v76 = v16[7];
        v78 = v16[4];
        v79 = v16[5];
        sub_22E7097AC();
        sub_22E7079E0(v73, v77);
        swift_storeEnumTagMultiPayload();
        sub_22E6CF1CC(&qword_27DA6D1B0, &qword_22E729CE0);
        sub_22E70A1F4();
        AsyncThrowingStream.Continuation.yield(_:)();
        v80 = *(v75 + 8);
        v81 = sub_22E709D48();
        v82(v81);
        sub_22E709808();
        sub_22E708D18();
      }

      sub_22E70798C(v16[15], &qword_27DA6D190, &qword_22E729E30);
      v83 = *(MEMORY[0x277D858B8] + 4);
      swift_task_alloc();
      sub_22E6ECB74();
      v16[22] = v84;
      *v84 = v85;
      v84[1] = sub_22E6FD998;
      v86 = v16[21];
      v87 = v16[18];
      v88 = v16[19];
      sub_22E7097F4();
      sub_22E6E3F68();

      MEMORY[0x2822005A8](v89, v90, v91, v92, v93);
    }

    else
    {
      _assertionFailure(_:_:file:line:flags:)();
      sub_22E6E3F68();
    }
  }
}

uint64_t sub_22E6FDECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22E709D1C();
  sub_22E709ECC();
  v15 = v14[20];
  v16 = v14[21];
  v18 = v14[18];
  v17 = v14[19];
  sub_22E70A000();
  v31 = v19;
  (*(v20 + 8))(v16);
  v30 = v14[2];

  sub_22E6E3AD8();
  sub_22E709BF0();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30, v31, a12, a13, a14);
}

uint64_t sub_22E6FDFA4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22E6CF1CC(&qword_27DA6D220, &qword_22E729D70);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v4 = v1;

  sub_22E7084F8(v2, 1, &v4);

  return v4;
}

uint64_t sub_22E6FE058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a4;
  v35 = a5;
  v32 = a1;
  v33 = a3;
  v6 = sub_22E6CF1CC(&qword_27DA6D1F0, &qword_22E729D40);
  v30 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - v9;
  v31 = &v28 - v9;
  v11 = sub_22E6CF1CC(&qword_27DA6D170, &qword_22E729B90);
  v29 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - v14;
  v16 = sub_22E6CF1CC(&qword_27DA6C9A8, &qword_22E72C030);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v28 - v18;
  v20 = type metadata accessor for TaskPriority();
  sub_22E6CF58C(v19, 1, 1, v20);
  (*(v12 + 16))(v15, a2, v11);
  (*(v7 + 16))(v10, v32, v6);
  v21 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v22 = (v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v7 + 80) + v22 + 8) & ~*(v7 + 80);
  v24 = (v8 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  (*(v12 + 32))(v25 + v21, v15, v29);
  *(v25 + v22) = v33;
  (*(v7 + 32))(v25 + v23, v31, v30);
  v26 = v35;
  *(v25 + v24) = v34;
  *(v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) = v26;

  sub_22E6E1B80(0, 0, v19, &unk_22E729D50, v25);
}

uint64_t sub_22E6FE344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = *MEMORY[0x277D85DE8];
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v8 = sub_22E6CF1CC(&qword_27DA6D118, &qword_22E729B10);
  v7[9] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[10] = swift_task_alloc();
  v10 = sub_22E6CF1CC(&qword_27DA6D1F8, &qword_22E729D58);
  v7[11] = v10;
  v11 = *(v10 - 8);
  v7[12] = v11;
  v12 = *(v11 + 64) + 15;
  v7[13] = swift_task_alloc();
  v13 = type metadata accessor for AssetDownloadRequest();
  v7[14] = v13;
  v14 = *(v13 - 8);
  v7[15] = v14;
  v15 = *(v14 + 64) + 15;
  v7[16] = swift_task_alloc();
  v16 = type metadata accessor for URL();
  v7[17] = v16;
  v17 = *(v16 - 8);
  v7[18] = v17;
  v18 = *(v17 + 64) + 15;
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v19 = type metadata accessor for TaskPriority();
  v7[22] = v19;
  v20 = *(v19 - 8);
  v7[23] = v20;
  v21 = *(v20 + 64) + 15;
  v7[24] = swift_task_alloc();
  v22 = type metadata accessor for AssetDownloadResponse();
  v7[25] = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();
  v7[28] = swift_task_alloc();
  v24 = *(*(sub_22E6CF1CC(&qword_27DA6D200, &qword_22E72A550) - 8) + 64) + 15;
  v7[29] = swift_task_alloc();
  v7[30] = swift_task_alloc();
  v25 = type metadata accessor for DownloadResponseMessage();
  v7[31] = v25;
  v26 = *(*(v25 - 8) + 64) + 15;
  v7[32] = swift_task_alloc();
  v27 = *(*(sub_22E6CF1CC(&qword_27DA6D208, &qword_22E729D60) - 8) + 64) + 15;
  v7[33] = swift_task_alloc();
  v28 = sub_22E6CF1CC(&qword_27DA6D210, &qword_22E729D68);
  v7[34] = v28;
  v29 = *(v28 - 8);
  v7[35] = v29;
  v30 = *(v29 + 64) + 15;
  v7[36] = swift_task_alloc();
  v31 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22E6FE704, 0, 0);
}

uint64_t sub_22E6FE704()
{
  sub_22E6E3D08();
  v14 = *MEMORY[0x277D85DE8];
  v1 = v0[36];
  v2 = v0[5];
  v3 = sub_22E6CF1CC(&qword_27DA6D170, &qword_22E729B90);
  MEMORY[0x2318EC7E0](v3);
  v4 = *(MEMORY[0x277D858B8] + 4);
  swift_task_alloc();
  sub_22E6ECB74();
  v0[37] = v5;
  *v5 = v6;
  sub_22E709AE0(v5);
  v7 = *MEMORY[0x277D85DE8];
  sub_22E7097F4();

  return MEMORY[0x2822005A8](v8, v9, v10, v11, v12);
}

uint64_t sub_22E6FE7D0()
{
  sub_22E6E3BDC();
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 296);
  v2 = *v0;
  sub_22E6E3C94();
  *v3 = v2;

  v4 = *MEMORY[0x277D85DE8];
  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22E6FE8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28)
{
  sub_22E709E48();
  a27 = v29;
  a28 = v30;
  sub_22E709FC0();
  a26 = v28;
  a17 = *MEMORY[0x277D85DE8];
  v31 = v28[33];
  v32 = v28[31];
  sub_22E709940();
  if (v33)
  {
    v34 = (v28[35] + 8);
LABEL_4:
    v35 = v28 + 36;
    v36 = v28 + 34;
    goto LABEL_5;
  }

  v58 = v28[32];
  v59 = sub_22E709B30();
  sub_22E708A80(v59, v60);
  sub_22E709E24();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v62 = v28[32];
  if (EnumCaseMultiPayload == 1)
  {
    v63 = *v62;
    if (qword_27DA6C450 != -1)
    {
      sub_22E70976C();
    }

    v64 = type metadata accessor for Logger();
    sub_22E709E64(v64, qword_27DA6D0F0);

    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = sub_22E709FA8();
      v68 = sub_22E70A098();
      *v67 = 138412290;
      sub_22E6F57E8();
      sub_22E709EB4();
      *v69 = v63;

      v70 = _swift_stdlib_bridgeErrorToNSError();
      *(v67 + 4) = v70;
      *v68 = v70;
      _os_log_impl(&dword_22E6C9000, v65, v66, "requests failed due to server blocking %@", v67, 0xCu);
      sub_22E70798C(v68, &qword_27DA6CA08, &qword_22E727840);
      sub_22E6E3CC8();
      sub_22E709A54();
    }

    v71 = v28[7];

    sub_22E6F57E8();
    v72 = sub_22E709EB4();
    *v73 = v63;
    v28[3] = v72;
    sub_22E6CF1CC(&qword_27DA6D1F0, &qword_22E729D40);
    AsyncThrowingStream.Continuation.finish(throwing:)();
    goto LABEL_21;
  }

  v75 = v28[29];
  v74 = v28[30];
  v76 = v28[25];
  v77 = (v62 + *(sub_22E6CF1CC(&qword_27DA6D218, &qword_22E72B1F0) + 48));
  v78 = *v77;
  v79 = v77[1];
  sub_22E6F3AB0();
  sub_22E70A49C();
  sub_22E707944(v80, v81, v82, v83);
  sub_22E6D9164();
  sub_22E70A49C();
  sub_22E708A38(v84, v85, v86, v87);
  if (sub_22E6CF550(v75, 1, v76) == 1)
  {

    if (qword_27DA6C450 != -1)
    {
      sub_22E70976C();
    }

    v88 = v28[8];
    v89 = type metadata accessor for Logger();
    sub_22E6E3578(v89, qword_27DA6D0F0);
    sub_22E709E30();

    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = v28[14];
      v93 = v28[8];
      v94 = sub_22E709FA8();
      v95 = sub_22E709F3C();
      a16 = v95;
      *v94 = 136315138;
      v96 = sub_22E6F3808();
      v97 = MEMORY[0x2318EC680](v96);
      v99 = sub_22E706BF8(v97, v98, &a16);

      *(v94 + 4) = v99;
      sub_22E70997C();
      _os_log_impl(v100, v101, v102, v103, v104, 0xCu);
      sub_22E6CF2F4(v95);
      sub_22E6E3CE4();
      sub_22E709A54();
    }

    v105 = v28[30];
    v107 = v28[12];
    v106 = v28[13];
    v109 = v28[10];
    v108 = v28[11];
    v110 = v28[9];
    v111 = v28[7];
    sub_22E6D0784();
    *v109 = sub_22E709EB4();
    swift_storeEnumTagMultiPayload();
    sub_22E6CF1CC(&qword_27DA6D1F0, &qword_22E729D40);
    sub_22E70A1F4();
    AsyncThrowingStream.Continuation.yield(_:)();
    v112 = *(v107 + 8);
    v113 = sub_22E709D48();
    v114(v113);
    v115 = v105;
    goto LABEL_20;
  }

  v127 = v28[28];
  v126 = v28[29];
  sub_22E709888();
  sub_22E708A80(v128, v129);
  if (qword_27DA6C450 != -1)
  {
    sub_22E70976C();
  }

  v130 = v28[27];
  v131 = v28[28];
  v292 = type metadata accessor for Logger();
  sub_22E6E3578(v292, qword_27DA6D0F0);
  sub_22E7098A0();
  v132 = sub_22E6F3AB0();
  sub_22E7079E0(v132, v133);
  v134 = Logger.logObject.getter();
  v135 = static os_log_type_t.default.getter();
  v136 = os_log_type_enabled(v134, v135);
  v137 = v28[27];
  v295 = v78;
  if (v136)
  {
    v287 = v135;
    v138 = v28[24];
    v139 = v28[25];
    v140 = v28[23];
    v284 = v28[22];
    v141 = v28[17];
    v298 = v79;
    v142 = sub_22E709F90();
    a16 = swift_slowAlloc();
    *v142 = 136315394;
    v143 = *(v139 + 24);
    sub_22E709BD8();
    sub_22E7096D0(v144, v145);
    v146 = dispatch thunk of CustomStringConvertible.description.getter();
    sub_22E709754();
    sub_22E708D18();
    v147 = sub_22E6E3EEC();
    sub_22E706BF8(v147, v148, v149);
    sub_22E709E30();

    *(v142 + 4) = v146;
    *(v142 + 12) = 2080;
    static Task<>.currentPriority.getter();
    sub_22E7097DC();
    sub_22E7096D0(v150, v151);
    v152 = dispatch thunk of CustomStringConvertible.description.getter();
    (*(v140 + 8))(v138, v284);
    v153 = sub_22E6E3EEC();
    sub_22E706BF8(v153, v154, v155);
    sub_22E709E30();

    *(v142 + 14) = v152;
    _os_log_impl(&dword_22E6C9000, v134, v287, "successfully downloaded asset at %s with priority %s", v142, 0x16u);
    swift_arrayDestroy();
    sub_22E6E3CE4();
    v79 = v298;
    sub_22E6E3CE4();
  }

  else
  {

    sub_22E709754();
    sub_22E708D18();
  }

  if (!*(v28[6] + 16) || (sub_22E714B78(v28[28]), (v156 & 1) == 0))
  {
    v195 = v28[12];
    v194 = v28[13];
    v197 = v28[10];
    v196 = v28[11];
    v198 = v28[9];
    v199 = v28[7];

    sub_22E6D0784();
    *v197 = sub_22E709EB4();
    sub_22E6F3808();
    swift_storeEnumTagMultiPayload();
    sub_22E6CF1CC(&qword_27DA6D1F0, &qword_22E729D40);
    sub_22E70A2CC();
    v200 = *(v195 + 8);
    v201 = sub_22E709B30();
    v202(v201);
    v203 = Logger.logObject.getter();
    v204 = static os_log_type_t.error.getter();
    v205 = os_log_type_enabled(v203, v204);
    v206 = v28[35];
    v207 = v28[30];
    v208 = v28[28];
    if (v205)
    {
      v209 = sub_22E70A64C();
      *v209 = 0;
      _os_log_impl(&dword_22E6C9000, v203, v204, "invalid request id", v209, 2u);
      sub_22E6E3CC8();
    }

    sub_22E709754();
    sub_22E708D18();
    sub_22E70798C(v207, &qword_27DA6D200, &qword_22E72A550);
    v34 = (v206 + 8);
    goto LABEL_4;
  }

  v299 = v79;
  v157 = v28[26];
  v159 = v28[20];
  v158 = v28[21];
  v160 = v28[18];
  v285 = v28[28];
  v288 = v28[19];
  v162 = v28[16];
  v161 = v28[17];
  v163 = v28[14];
  v164 = *(v28[6] + 56);
  v165 = *(v28[15] + 72);
  sub_22E7097C4();
  sub_22E7079E0(v166, v162);
  v303 = v28;
  v167 = *(v160 + 16);
  v167(v159, v162 + *(v163 + 36), v161);
  sub_22E708D18();
  v168 = *(v160 + 32);
  v169 = sub_22E709D48();
  v170(v169);
  sub_22E7098A0();
  sub_22E7079E0(v285, v157);
  v167(v288, v158, v161);
  v171 = v28;
  v172 = Logger.logObject.getter();
  v173 = static os_log_type_t.default.getter();
  v174 = os_log_type_enabled(v172, v173);
  v175 = v28[26];
  if (v174)
  {
    v176 = v28[25];
    v177 = v28[18];
    v289 = v171[19];
    v178 = v171[17];
    v179 = sub_22E709F90();
    a16 = swift_slowAlloc();
    *v179 = 136315394;
    v180 = *(v176 + 24);
    sub_22E709BD8();
    sub_22E7096D0(v181, v182);
    v183 = dispatch thunk of CustomStringConvertible.description.getter();
    v185 = v184;
    sub_22E709754();
    sub_22E708D18();
    v186 = sub_22E706BF8(v183, v185, &a16);

    *(v179 + 4) = v186;
    *(v179 + 12) = 2080;
    dispatch thunk of CustomStringConvertible.description.getter();
    v187 = *(v177 + 8);
    v188 = sub_22E6F3808();
    v290 = v189;
    v189(v188);
    v190 = sub_22E6F3AB0();
    v193 = sub_22E706BF8(v190, v191, v192);

    *(v179 + 14) = v193;
    _os_log_impl(&dword_22E6C9000, v172, v173, "moving file from %s to %s", v179, 0x16u);
    swift_arrayDestroy();
    v171 = v303;
    sub_22E6E3CE4();
    sub_22E6E3CE4();
  }

  else
  {
    v211 = v28[18];
    v210 = v171[19];
    v212 = v171[17];

    v213 = *(v211 + 8);
    v214 = sub_22E6E3EEC();
    v290 = v215;
    v215(v214);
    sub_22E709754();
    sub_22E708D18();
  }

  String.utf8CString.getter();
  v216 = sandbox_extension_consume();

  if (v216 < 0)
  {

    v239 = Logger.logObject.getter();
    v240 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v239, v240))
    {
      v241 = sub_22E709FA8();
      v242 = sub_22E709F3C();
      a16 = v242;
      *v241 = 136315138;
      v243 = sub_22E706BF8(v295, v299, &a16);

      *(v241 + 4) = v243;
      sub_22E70997C();
      _os_log_impl(v244, v245, v246, v247, v248, 0xCu);
      sub_22E6CF2F4(v242);
      sub_22E7099AC();
      sub_22E709A54();
    }

    else
    {
    }

    v261 = v171[35];
    v260 = v171[36];
    v262 = v171[34];
    v263 = v171[30];
    v264 = v171[28];
    v265 = v171[21];
    v266 = v171[17];
    v267 = v171[18] + 8;
    sub_22E6D0784();
    v258 = sub_22E709EB4();
    swift_willThrow();
    v268 = sub_22E6D3824();
    v290(v268);
    sub_22E709754();
    sub_22E708D18();
    sub_22E70798C(v263, &qword_27DA6D200, &qword_22E72A550);
    v269 = *(v261 + 8);
    v270 = sub_22E6F3AB0();
    v271(v270);
  }

  else
  {
    v217 = v171[28];
    v218 = v171[25];
    v219 = v171[21];

    v220 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(*(v218 + 24));
    v222 = v221;
    URL._bridgeToObjectiveC()(v223);
    v225 = v224;
    v171[4] = 0;
    LODWORD(v219) = [v220 moveItemAtURL:v222 toURL:v224 error:v171 + 4];

    v226 = v171[4];
    if (v219)
    {
      v227 = v171[28];
      v296 = v171[21];
      v300 = v171[30];
      v228 = v171[18];
      v293 = v171[17];
      v229 = v171[12];
      v230 = v171[13];
      v231 = v171[11];
      v232 = v303[10];
      v233 = v303[9];
      v234 = v303[7];
      sub_22E7098A0();
      sub_22E7079E0(v227, v232);
      swift_storeEnumTagMultiPayload();
      v235 = v226;
      sub_22E6CF1CC(&qword_27DA6D1F0, &qword_22E729D40);
      v28 = v303;
      AsyncThrowingStream.Continuation.yield(_:)();
      v236 = *(v229 + 8);
      v237 = sub_22E6D3824();
      v238(v237);
      sandbox_extension_release();
      (v290)(v296, v293);
      sub_22E709754();
      sub_22E708D18();
      v115 = v300;
LABEL_20:
      sub_22E70798C(v115, &qword_27DA6D200, &qword_22E72A550);
LABEL_21:
      v116 = *(MEMORY[0x277D858B8] + 4);
      swift_task_alloc();
      sub_22E6ECB74();
      v28[37] = v117;
      *v117 = v118;
      sub_22E709AE0();
      v119 = *MEMORY[0x277D85DE8];
      sub_22E7097F4();
      sub_22E709A8C();

      return MEMORY[0x2822005A8](v120, v121, v122, v123, v124);
    }

    v301 = v171[36];
    v249 = v171;
    v250 = v171[35];
    v251 = v249[34];
    v252 = v249[30];
    v253 = v249[28];
    v254 = v249[21];
    v255 = v249[17];
    v256 = v249[18] + 8;
    v257 = v226;
    v258 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v259 = sub_22E6D3824();
    v290(v259);
    sub_22E709754();
    sub_22E708D18();
    sub_22E70798C(v252, &qword_27DA6D200, &qword_22E72A550);
    (*(v250 + 8))(v301, v251);
  }

  if (qword_27DA6C450 != -1)
  {
    sub_22E70976C();
  }

  sub_22E709E64(v292, qword_27DA6D0F0);
  v272 = v258;
  v273 = Logger.logObject.getter();
  v274 = static os_log_type_t.error.getter();

  v28 = v303;
  if (os_log_type_enabled(v273, v274))
  {
    v275 = sub_22E709FA8();
    v276 = sub_22E70A098();
    *v275 = 138412290;
    v277 = v258;
    v278 = _swift_stdlib_bridgeErrorToNSError();
    *(v275 + 4) = v278;
    *v276 = v278;
    _os_log_impl(&dword_22E6C9000, v273, v274, "failed to process requests due to error %@", v275, 0xCu);
    sub_22E70798C(v276, &qword_27DA6CA08, &qword_22E727840);
    sub_22E709A54();
    sub_22E6E3B00();
  }

  v35 = v303 + 13;
  v279 = v303[13];
  v281 = v303[9];
  v280 = v303[10];
  v282 = v303[7];

  sub_22E6D0784();
  *v280 = sub_22E709EB4();
  sub_22E709B30();
  swift_storeEnumTagMultiPayload();
  sub_22E6CF1CC(&qword_27DA6D1F0, &qword_22E729D40);
  AsyncThrowingStream.Continuation.yield(_:)();

  v36 = v303 + 11;
  v34 = (v303[12] + 8);
LABEL_5:
  v37 = *v35;
  v38 = v28[36];
  v40 = v28[32];
  v39 = v28[33];
  v42 = v28[29];
  v41 = v28[30];
  v44 = v28[27];
  v43 = v28[28];
  v45 = v28[26];
  v46 = v28[24];
  v283 = v28[21];
  v286 = v28[20];
  v291 = v28[19];
  v294 = v28[16];
  v47 = v28[13];
  v297 = v47;
  v302 = v28[10];
  (*v34)(v37, *v36);

  sub_22E6E3AD8();
  v48 = *MEMORY[0x277D85DE8];
  sub_22E709A8C();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, v283, v286, v291, v294, v297, v302, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_22E6FF8A0()
{
  v31 = *MEMORY[0x277D85DE8];
  (*(v0[35] + 8))(v0[36], v0[34]);
  v2 = v0[2];
  if (qword_27DA6C450 != -1)
  {
    sub_22E70976C();
  }

  v3 = type metadata accessor for Logger();
  sub_22E709E64(v3, qword_27DA6D0F0);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    sub_22E709FA8();
    v7 = sub_22E709E98();
    *v1 = 138412290;
    v8 = v2;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_22E6C9000, v5, v6, "failed to process requests due to error %@", v1, 0xCu);
    sub_22E70798C(v7, &qword_27DA6CA08, &qword_22E727840);
    sub_22E6E3CC8();
    sub_22E7099AC();
  }

  v10 = v0[13];
  v12 = v0[9];
  v11 = v0[10];
  v13 = v0[7];

  sub_22E6D0784();
  *v11 = sub_22E709EB4();
  sub_22E709EF8();
  swift_storeEnumTagMultiPayload();
  sub_22E6CF1CC(&qword_27DA6D1F0, &qword_22E729D40);
  sub_22E70A1F4();
  AsyncThrowingStream.Continuation.yield(_:)();

  v14 = v0[36];
  v16 = v0[32];
  v15 = v0[33];
  v18 = v0[29];
  v17 = v0[30];
  v19 = v0[27];
  v20 = v0[28];
  v21 = v0[26];
  v26 = v0[24];
  v27 = v0[21];
  v28 = v0[20];
  v22 = v0[19];
  v29 = v0[16];
  v30 = v0[10];
  (*(v0[12] + 8))(v0[13], v0[11]);

  sub_22E6E3AD8();
  v24 = *MEMORY[0x277D85DE8];

  return v23();
}

void sub_22E6FFB58()
{
  sub_22E6EB570();
  v42 = v0;
  v43 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v41 = v8;
  v9 = sub_22E6CF1CC(&qword_27DA6D1B0, &qword_22E729CE0);
  v10 = sub_22E6CF988(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v16 = &v40 - v15;
  v40 = &v40 - v15;
  v17 = sub_22E6CF1CC(v5, v3);
  v18 = sub_22E6CF988(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  v24 = &v40 - v23;
  v25 = sub_22E6CF1CC(&qword_27DA6C9A8, &qword_22E72C030);
  v26 = sub_22E6D376C(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v40 - v29;
  type metadata accessor for TaskPriority();
  sub_22E6E3D34();
  sub_22E6CF58C(v31, v32, v33, v34);
  (*(v20 + 16))(v24, v7, v17);
  v35 = v16;
  v36 = v9;
  (*(v12 + 16))(v35, v41, v9);
  v37 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v38 = (v22 + *(v12 + 80) + v37) & ~*(v12 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  (*(v20 + 32))(v39 + v37, v24, v17);
  (*(v12 + 32))(v39 + v38, v40, v36);
  sub_22E6E1B80(0, 0, v30, v43, v39);

  sub_22E6EB538();
}

uint64_t sub_22E6FFDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = type metadata accessor for AssetDownloadResponse();
  v5[6] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v8 = sub_22E6CF1CC(&qword_27DA6D118, &qword_22E729B10);
  v5[8] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v5[9] = swift_task_alloc();
  v10 = sub_22E6CF1CC(&qword_27DA6C7C8, &unk_22E727340);
  v5[10] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v12 = sub_22E6CF1CC(&qword_27DA6D1B8, &qword_22E729CF8);
  v5[12] = v12;
  v13 = *(v12 - 8);
  v5[13] = v13;
  v14 = *(v13 + 64) + 15;
  v5[14] = swift_task_alloc();
  v15 = *(*(sub_22E6CF1CC(&qword_27DA6D120, &qword_22E729B18) - 8) + 64) + 15;
  v5[15] = swift_task_alloc();
  v16 = sub_22E6CF1CC(&qword_27DA6D128, &qword_22E729B20);
  v5[16] = v16;
  v17 = *(v16 - 8);
  v5[17] = v17;
  v18 = *(v17 + 64) + 15;
  v5[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22E6FFFD0, 0, 0);
}

uint64_t sub_22E6FFFD0()
{
  sub_22E6E3BDC();
  v1 = v0[18];
  v2 = v0[4];
  v3 = sub_22E6CF1CC(&qword_27DA6D130, &qword_22E729B28);
  MEMORY[0x2318EC7E0](v3);
  v4 = *(MEMORY[0x277D858B8] + 4);
  swift_task_alloc();
  sub_22E6ECB74();
  v0[19] = v5;
  *v5 = v6;
  v5[1] = sub_22E700088;
  v7 = v0[18];
  v8 = v0[15];
  v9 = v0[16];
  sub_22E7097F4();

  return MEMORY[0x2822005A8](v10, v11, v12, v13, v14);
}

uint64_t sub_22E700088()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  v2 = *(v1 + 152);
  v3 = *v0;
  sub_22E6E3C94();
  *v4 = v3;

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22E700184()
{
  sub_22E6E3F34();
  v1 = v0[15];
  v2 = v0[8];
  sub_22E709940();
  if (v3)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);
    sub_22E70A394();

    sub_22E6E3AD8();

    return v4();
  }

  else
  {
    v6 = v0[9];
    v7 = sub_22E709B30();
    sub_22E707944(v7, v8, v9, v10);
    sub_22E709E24();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v12 = v0[10];
    v13 = v0[11];
    if (EnumCaseMultiPayload == 1)
    {
      *v13 = *v0[9];
    }

    else
    {
      v15 = v0[6];
      v14 = v0[7];
      sub_22E709888();
      sub_22E708A80(v16, v14);
      v17 = *(v15 + 20);
      sub_22E7097AC();
      sub_22E7079E0(v14 + v18, v13);
      sub_22E709754();
      sub_22E708D18();
    }

    sub_22E6F3AB0();
    swift_storeEnumTagMultiPayload();
    v20 = v0[13];
    v19 = v0[14];
    v22 = v0[11];
    v21 = v0[12];
    v23 = v0[5];
    sub_22E6CF1CC(&qword_27DA6D1B0, &qword_22E729CE0);
    AsyncThrowingStream.Continuation.yield(_:)();
    v24 = *(v20 + 8);
    v25 = sub_22E709B30();
    v26(v25);
    v27 = *(MEMORY[0x277D858B8] + 4);
    swift_task_alloc();
    sub_22E6ECB74();
    v0[19] = v28;
    *v28 = v29;
    v28[1] = sub_22E700088;
    v30 = v0[18];
    v31 = v0[15];
    v32 = v0[16];
    sub_22E7097F4();

    return MEMORY[0x2822005A8](v33, v34, v35, v36, v37);
  }
}

uint64_t sub_22E70037C()
{
  sub_22E6E3F34();
  v1 = v0[5];
  (*(v0[17] + 8))(v0[18], v0[16]);
  v0[3] = v0[2];
  sub_22E6CF1CC(&qword_27DA6D1B0, &qword_22E729CE0);
  AsyncThrowingStream.Continuation.finish(throwing:)();
  sub_22E70A394();

  sub_22E6E3AD8();

  return v2();
}

uint64_t AssetManager.process(request:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = sub_22E6E3C64();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = sub_22E6E3C64();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22E700478()
{
  sub_22E6E3D08();
  v1 = v0[2];
  sub_22E6CF1CC(&qword_27DA6D140, &qword_22E729B48);
  sub_22E6D3848();
  v2 = type metadata accessor for AssetUploadRequest();
  sub_22E6E3A38(v2);
  v4 = *(v3 + 72);
  v5 = sub_22E709900();
  v0[4] = v5;
  sub_22E709B78(v5, xmmword_22E726B10);
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  sub_22E70A44C(v6);

  return AssetManager.process(requests:)();
}

uint64_t sub_22E700574()
{
  sub_22E6E3D08();
  v3 = v2;
  sub_22E6E3E08();
  v5 = v4;
  sub_22E6ECB14();
  *v6 = v5;
  v8 = *(v7 + 40);
  v9 = *v1;
  sub_22E6E3C94();
  *v10 = v9;
  v5[6] = v0;

  if (!v0)
  {
    v11 = v5[4];

    v5[7] = v3;
  }

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_22E70068C()
{
  sub_22E6E3BDC();
  v1 = *(v0 + 56);
  type metadata accessor for AssetUploadCoordinator();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = v1;
  v3 = sub_22E709CF4();

  return v4(v3);
}

uint64_t sub_22E700700()
{
  sub_22E6E3BDC();
  v1 = *(v0 + 32);

  sub_22E6E3AD8();
  v3 = *(v0 + 48);

  return v2();
}

uint64_t sub_22E700B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_22E709D1C();
  a21 = v23;
  a22 = v24;
  sub_22E709ECC();
  a20 = v22;
  if (qword_27DA6C450 != -1)
  {
    sub_22E70976C();
  }

  v25 = v22[3];
  v26 = type metadata accessor for Logger();
  v22[35] = sub_22E709E64(v26, qword_27DA6D0F0);

  v27 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_22E70A604();
  if (sub_22E70A290())
  {
    v29 = v22[33];
    v28 = v22[34];
    v30 = v22[32];
    v31 = v22[3];
    sub_22E709F90();
    sub_22E70A060();
    sub_22E70A284();
    sub_22E70A278(4.8151e-34);
    type metadata accessor for AssetUploadRequest();
    v32 = sub_22E709F04();
    v33 = MEMORY[0x2318EC680](v32);
    sub_22E706BF8(v33, v34, &a11);
    sub_22E70A3B8();
    sub_22E709C2C();
    sub_22E7097DC();
    sub_22E7096D0(v35, v36);
    sub_22E709DE8();
    dispatch thunk of CustomStringConvertible.description.getter();
    v37 = sub_22E709964();
    v38(v37);
    v39 = sub_22E6D3824();
    sub_22E706BF8(v39, v40, v41);
    sub_22E70A0B0();
    *(v25 + 14) = v28;
    sub_22E70999C();
    _os_log_impl(v42, v43, v44, v45, v46, 0x16u);
    sub_22E70A07C();
    sub_22E6E3CC8();
    sub_22E7099AC();
  }

  v47 = v22[3];
  v48 = *sub_22E70A0C8(v22[4]);
  sub_22E709F54(&unk_22E729B68);
  sub_22E6ECB74();
  v22[36] = v49;
  *v49 = v50;
  v49[1] = sub_22E700CF4;
  v51 = v22[31];
  sub_22E709F30();
  sub_22E709BF0();

  return v55(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_22E700CF4()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  sub_22E6ECB14();
  *v3 = v2;
  v5 = *(v4 + 288);
  v6 = *v1;
  sub_22E6E3C94();
  *v7 = v6;
  *(v8 + 296) = v0;

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22E700DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22E709F74();
  sub_22E70A224();
  v17 = *(v16 + 224);
  v18 = *(v16 + 192);
  v19 = *(v16 + 160);
  v20 = *(v16 + 168);
  v21 = *(v16 + 152);
  v45 = *(v16 + 120);
  v46 = *(v16 + 144);
  v23 = *(v16 + 88);
  v22 = *(v16 + 96);
  v24 = *(v16 + 80);
  v48 = *(v16 + 40);
  v49 = *(v16 + 248);
  v47 = *(v16 + 24);
  v25 = *MEMORY[0x277D858A0];
  *(v16 + 328) = v25;
  (*(v19 + 104))(v20, v25, v21);
  static AsyncThrowingStream.makeStream<>(of:throwing:bufferingPolicy:)();
  v26 = *(v19 + 8);
  v27 = sub_22E709FE8();
  v28(v27);
  sub_22E6CF1CC(&qword_27DA6D190, &qword_22E729E30);
  (*(v23 + 104))(v22, v25, v24);
  static AsyncThrowingStream.makeStream<>(of:throwing:bufferingPolicy:)();
  v29 = *(v23 + 8);
  v30 = sub_22E709D48();
  v31(v30);
  v32 = swift_task_alloc();
  *(v16 + 304) = v32;
  v32[2] = v49;
  v32[3] = v45;
  v32[4] = v18;
  v32[5] = v47;
  v32[6] = v48;
  v33 = *(MEMORY[0x277D85A40] + 4);
  v34 = swift_task_alloc();
  *(v16 + 312) = v34;
  sub_22E6CF1CC(&qword_27DA6D198, &qword_22E729BC8);
  *v34 = v16;
  v34[1] = sub_22E700FF4;
  sub_22E6ECBB8();
  sub_22E6E3F68();

  return MEMORY[0x2822008A0](v35, v36, v37, v38, v39, v40, v41, v42, v45, v46, v47, v48, v49, a14, a15, a16);
}

uint64_t sub_22E700FF4()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  sub_22E6ECB14();
  *v3 = v2;
  v5 = *(v4 + 312);
  v6 = *(v4 + 304);
  v7 = *v1;
  sub_22E6E3C94();
  *v8 = v7;
  *(v9 + 320) = v0;

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22E70110C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22E709D1C();
  sub_22E709ECC();
  v15 = *(v14 + 296);
  sub_22E709D8C();

  sub_22E6E3AD8();
  sub_22E709BF0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_22E7011C0()
{
  v45 = v0;
  v2 = *(v0 + 280);
  v3 = *(v0 + 16);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    sub_22E709FA8();
    v44 = sub_22E709E7C();
    sub_22E70A278(4.8149e-34);
    v6 = type metadata accessor for AssetSkeleton();
    v7 = MEMORY[0x2318EC680](v3, v6);
    v9 = sub_22E706BF8(v7, v8, &v44);

    *(v1 + 4) = v9;
    sub_22E70A01C();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    sub_22E7098CC();
    sub_22E7099AC();
  }

  v27 = *(v0 + 328);
  v40 = *(v0 + 248);
  v41 = *(v0 + 272);
  v15 = *(v0 + 224);
  v38 = *(v0 + 240);
  v39 = *(v0 + 232);
  v16 = *(v0 + 208);
  v28 = *(v0 + 216);
  v29 = v15;
  v30 = *(v0 + 200);
  v35 = *(v0 + 184);
  v36 = *(v0 + 176);
  v37 = *(v0 + 192);
  v42 = *(v0 + 168);
  v18 = *(v0 + 136);
  v17 = *(v0 + 144);
  v34 = *(v0 + 120);
  v19 = *(v0 + 112);
  v32 = *(v0 + 128);
  v33 = *(v0 + 104);
  v43 = *(v0 + 96);
  v20 = *(v0 + 64);
  v21 = *(v0 + 72);
  v23 = *(v0 + 48);
  v22 = *(v0 + 56);
  (*(v16 + 16))();
  *(swift_task_alloc() + 16) = v17;
  sub_22E6CF1CC(&qword_27DA6C7C8, &unk_22E727340);
  (*(v22 + 104))(v20, v27, v23);
  AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();

  v24 = type metadata accessor for AssetsUploadCoordinator();
  sub_22E70A61C(v24);
  v31 = sub_22E6D5218(v3, v28, v21);
  (*(v16 + 8))(v29, v30);
  (*(v18 + 8))(v17, v32);
  (*(v19 + 8))(v34, v33);
  (*(v35 + 8))(v37, v36);
  (*(v38 + 8))(v40, v39);

  v25 = *(v0 + 8);

  return v25(v31);
}

uint64_t sub_22E7014F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22E709D1C();
  sub_22E709ECC();
  v15 = v14[30];
  v41 = v14[29];
  v42 = v14[31];
  v16 = v14[23];
  v40 = v14[24];
  v17 = v14[22];
  v18 = v14[17];
  v19 = v14[18];
  v21 = v14[15];
  v20 = v14[16];
  v23 = v14[13];
  v22 = v14[14];
  (*(v14[26] + 8))(v14[28], v14[25]);
  v24 = *(v18 + 8);
  v25 = sub_22E6D3888();
  v26(v25);
  v27 = *(v22 + 8);
  v28 = sub_22E6D3824();
  v29(v28);
  (*(v16 + 8))(v40, v17);
  (*(v15 + 8))(v42, v41);
  v30 = v14[40];
  sub_22E709D8C();

  sub_22E6E3AD8();
  sub_22E709BF0();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, v40, v41, v42, a12, a13, a14);
}

uint64_t sub_22E701658()
{
  sub_22E6E3D08();
  v2 = v1[2];
  sub_22E6CF1CC(&qword_27DA6D138, &qword_22E729B30);
  sub_22E6D3848();
  v3 = type metadata accessor for AssetDownloadRequest();
  sub_22E6E3A38(v3);
  v5 = *(v4 + 72);
  v6 = sub_22E709900();
  v1[4] = v6;
  *(v6 + 16) = xmmword_22E726B10;
  sub_22E7097C4();
  sub_22E7079E0(v2, v7 + v0);
  v8 = swift_task_alloc();
  v1[5] = v8;
  *v8 = v1;
  sub_22E70A44C(v8);

  return AssetManager.process(requests:)();
}

uint64_t sub_22E701764()
{
  sub_22E6E3D08();
  v3 = v2;
  sub_22E6E3E08();
  v5 = v4;
  sub_22E6ECB14();
  *v6 = v5;
  v8 = *(v7 + 40);
  v9 = *v1;
  sub_22E6E3C94();
  *v10 = v9;
  v5[6] = v0;

  if (!v0)
  {
    v11 = v5[4];

    v5[7] = v3;
  }

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_22E70187C()
{
  sub_22E6E3BDC();
  v1 = *(v0 + 56);
  type metadata accessor for AssetDownloadCoordinator();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = v1;
  v3 = sub_22E709CF4();

  return v4(v3);
}

uint64_t sub_22E701A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  sub_22E709A70();
  a19 = v21;
  a20 = v22;
  sub_22E709B3C();
  a18 = v20;
  if (qword_27DA6C450 != -1)
  {
    sub_22E70976C();
  }

  v23 = v20[2];
  v24 = type metadata accessor for Logger();
  sub_22E709E64(v24, qword_27DA6D0F0);

  v25 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_22E70A604();
  if (sub_22E70A290())
  {
    v27 = v20[11];
    v26 = v20[12];
    v28 = v20[10];
    v29 = v20[2];
    sub_22E709F90();
    a9 = sub_22E70A060();
    sub_22E70A278(4.8151e-34);
    type metadata accessor for AssetDownloadRequest();
    v30 = sub_22E709F04();
    v31 = MEMORY[0x2318EC680](v30);
    sub_22E706BF8(v31, v32, &a9);
    sub_22E70A3B8();
    sub_22E709C2C();
    sub_22E7097DC();
    sub_22E7096D0(v33, v34);
    sub_22E709DE8();
    dispatch thunk of CustomStringConvertible.description.getter();
    v35 = sub_22E709964();
    v36(v35);
    v37 = sub_22E6D3824();
    sub_22E706BF8(v37, v38, v39);
    sub_22E70A0B0();
    *(v23 + 14) = v26;
    sub_22E70999C();
    _os_log_impl(v40, v41, v42, v43, v44, 0x16u);
    sub_22E70A07C();
    sub_22E6E3CC8();
    sub_22E7099AC();
  }

  swift_task_alloc();
  sub_22E6ECB74();
  v20[13] = v45;
  *v45 = v46;
  v45[1] = sub_22E701C10;
  v47 = v20[9];
  v48 = v20[2];
  v49 = v20[3];
  sub_22E709A28();

  return AssetManager.process(requests:)();
}

uint64_t sub_22E701C10()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  sub_22E6ECB14();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v1;
  sub_22E6E3C94();
  *v7 = v6;
  *(v8 + 112) = v0;

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22E701D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22E709A70();
  sub_22E709B3C();
  v13 = v12[12];
  v14 = v12[9];
  v15 = v12[10];
  v16 = v12[7];
  v17 = v12[5];
  v18 = v12[6];
  v19 = v12[4];
  v20 = *(v16 + 16);
  v21 = sub_22E709D48();
  v22(v21);
  v23 = type metadata accessor for AssetsDownloadCoordinator();
  sub_22E70A61C(v23);
  v24 = sub_22E709E30();
  v25 = sub_22E6D9454(v24);
  sub_22E6E3D34();
  sub_22E6CF58C(v26, v27, v28, v15);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v25;
  v29[5] = v19;

  sub_22E709D08();
  sub_22E6FA5FC();

  (*(v16 + 8))(v14, v18);

  sub_22E709CF4();
  sub_22E709A28();

  return v32(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
}

uint64_t sub_22E701E48()
{
  sub_22E6E3D08();
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[5];

  sub_22E6E3AD8();
  v6 = v0[14];

  return v5();
}

uint64_t sub_22E701ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a5;
  v45 = a6;
  v40 = a3;
  v41 = a4;
  v39 = a2;
  v42 = a1;
  v50 = sub_22E6CF1CC(&qword_27DA6D1D0, &qword_22E729D10);
  v48 = *(v50 - 8);
  v43 = *(v48 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = &v33 - v6;
  v47 = sub_22E6CF1CC(&qword_27DA6C890, &qword_22E7272B0);
  v7 = *(v47 - 8);
  v38 = *(v7 + 64);
  MEMORY[0x28223BE20](v47);
  v46 = &v33 - v8;
  v9 = sub_22E6CF1CC(&qword_27DA6D180, &qword_22E729BB8);
  v35 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  v36 = &v33 - v12;
  v14 = sub_22E6CF1CC(&qword_27DA6D150, &qword_22E729B60);
  v34 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  v19 = sub_22E6CF1CC(&qword_27DA6C9A8, &qword_22E72C030);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v33 - v21;
  v37 = &v33 - v21;
  v23 = type metadata accessor for TaskPriority();
  sub_22E6CF58C(v22, 1, 1, v23);
  (*(v15 + 16))(v18, v39, v14);
  (*(v10 + 16))(v13, v40, v9);
  v33 = v7;
  (*(v7 + 16))(v46, v41, v47);
  v24 = v48;
  (*(v48 + 16))(v49, v42, v50);
  v25 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v26 = (v16 + *(v10 + 80) + v25) & ~*(v10 + 80);
  v27 = (v11 + *(v7 + 80) + v26) & ~*(v7 + 80);
  v28 = (v38 + *(v24 + 80) + v27) & ~*(v24 + 80);
  v29 = (v43 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  (*(v15 + 32))(v30 + v25, v18, v34);
  (*(v10 + 32))(v30 + v26, v36, v35);
  (*(v33 + 32))(v30 + v27, v46, v47);
  (*(v48 + 32))(v30 + v28, v49, v50);
  v31 = v45;
  *(v30 + v29) = v44;
  *(v30 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8)) = v31;

  sub_22E6E1B80(0, 0, v37, &unk_22E729D20, v30);
}

uint64_t sub_22E702358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a7;
  v8[17] = a8;
  v8[14] = a5;
  v8[15] = a6;
  v8[13] = a4;
  v9 = sub_22E6CF1CC(&qword_27DA6C888, &qword_22E7272A8);
  v8[18] = v9;
  v10 = *(v9 - 8);
  v8[19] = v10;
  v11 = *(v10 + 64) + 15;
  v8[20] = swift_task_alloc();
  v12 = sub_22E6CF1CC(&qword_27DA6D1D8, &qword_22E729D28);
  v8[21] = v12;
  v13 = *(v12 - 8);
  v8[22] = v13;
  v14 = *(v13 + 64) + 15;
  v8[23] = swift_task_alloc();
  v15 = sub_22E6CF1CC(&qword_27DA6D190, &qword_22E729E30);
  v8[24] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v17 = type metadata accessor for UploadResponseMessage();
  v8[28] = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  v8[29] = swift_task_alloc();
  v19 = *(*(sub_22E6CF1CC(&qword_27DA6D1E0, &qword_22E729D30) - 8) + 64) + 15;
  v8[30] = swift_task_alloc();
  v20 = sub_22E6CF1CC(&qword_27DA6D1E8, &qword_22E729D38);
  v8[31] = v20;
  v21 = *(v20 - 8);
  v8[32] = v21;
  v22 = *(v21 + 64) + 15;
  v8[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22E7025BC, 0, 0);
}

uint64_t sub_22E7025BC()
{
  sub_22E6E3BDC();
  v1 = *(v0 + 264);
  v2 = *(v0 + 104);
  v3 = sub_22E6CF1CC(&qword_27DA6D150, &qword_22E729B60);
  MEMORY[0x2318EC7E0](v3);
  *(v0 + 280) = 0;
  v4 = *(MEMORY[0x277D858B8] + 4);
  swift_task_alloc();
  sub_22E6ECB74();
  *(v0 + 272) = v5;
  *v5 = v6;
  v5[1] = sub_22E702678;
  v7 = *(v0 + 264);
  v8 = *(v0 + 240);
  v9 = *(v0 + 248);
  sub_22E7097F4();

  return MEMORY[0x2822005A8](v10, v11, v12, v13, v14);
}

uint64_t sub_22E702678()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  v2 = *(v1 + 272);
  v3 = *v0;
  sub_22E6E3C94();
  *v4 = v3;

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22E702774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22E709D1C();
  a21 = v23;
  a22 = v24;
  sub_22E709ECC();
  a20 = v22;
  v25 = *(v22 + 240);
  v26 = *(v22 + 224);
  sub_22E709940();
  if (v27)
  {
    v28 = sub_22E70A474();
    v29(v28);
    if ((v26 & 1) == 0)
    {
      if (qword_27DA6C450 != -1)
      {
        sub_22E70976C();
      }

      v30 = *(v22 + 136);
      v31 = type metadata accessor for Logger();
      sub_22E6E3578(v31, qword_27DA6D0F0);
      sub_22E709E30();

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = *(v22 + 136);
        v35 = sub_22E709FA8();
        sub_22E709F3C();
        sub_22E70A284();
        *v35 = 136315138;
        type metadata accessor for AssetUploadRequest();
        v36 = sub_22E70A418();
        v37 = MEMORY[0x2318EC680](v36);
        v39 = sub_22E706BF8(v37, v38, &a11);

        *(v35 + 4) = v39;
        sub_22E70997C();
        _os_log_impl(v40, v41, v42, v43, v44, 0xCu);
        sub_22E7098CC();
        sub_22E709A54();
      }

      v45 = *(v22 + 128);
      sub_22E6D0784();
      *(v22 + 48) = sub_22E709EB4();
      sub_22E6CF1CC(&qword_27DA6D1D0, &qword_22E729D10);
      CheckedContinuation.resume(throwing:)();
    }

    v46 = *(v22 + 112);
    v47 = *(v22 + 120);
    *(v22 + 56) = 0;
    sub_22E6CF1CC(&qword_27DA6C890, &qword_22E7272B0);
    sub_22E70A40C();
    AsyncThrowingStream.Continuation.finish(throwing:)();
    *(v22 + 64) = 0;
    sub_22E6CF1CC(&qword_27DA6D180, &qword_22E729BB8);
    AsyncThrowingStream.Continuation.finish(throwing:)();
    sub_22E70A1A8();

    sub_22E6E3AD8();
    sub_22E709BF0();

    return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v57 = *(v22 + 232);
    sub_22E709BA8();
    v58 = sub_22E709B30();
    sub_22E708A80(v58, v59);
    sub_22E709E24();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v61 = *(v22 + 232);
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v86 = *(v22 + 208);
        v87 = *(v22 + 216);
        v89 = *(v22 + 176);
        v88 = *(v22 + 184);
        v90 = *(v22 + 168);
        v91 = *(v22 + 112);
        sub_22E70A49C();
        sub_22E707944(v92, v93, v94, v95);
        sub_22E70A49C();
        sub_22E708A38(v96, v97, v98, v99);
        sub_22E6CF1CC(&qword_27DA6D180, &qword_22E729BB8);
        sub_22E70A1F4();
        AsyncThrowingStream.Continuation.yield(_:)();
        v100 = *(v89 + 8);
        v101 = sub_22E709D48();
        v102(v101);
        if (qword_27DA6C450 != -1)
        {
          sub_22E70976C();
        }

        v103 = *(v22 + 216);
        v104 = *(v22 + 200);
        v105 = type metadata accessor for Logger();
        sub_22E6E3578(v105, qword_27DA6D0F0);
        v106 = sub_22E6F3AB0();
        sub_22E708A38(v106, v107, v108, v109);
        v110 = Logger.logObject.getter();
        static os_log_type_t.default.getter();
        sub_22E70A1E8();
        v112 = os_log_type_enabled(v110, v111);
        v113 = *(v22 + 216);
        if (v112)
        {
          v115 = *(v22 + 200);
          v114 = *(v22 + 208);
          v116 = *(v22 + 192);
          sub_22E709FA8();
          v117 = sub_22E709E7C();
          a11 = v117;
          *v90 = 136315138;
          sub_22E708A38(v115, v114, &qword_27DA6D190, &qword_22E729E30);
          v118 = String.init<A>(describing:)();
          v120 = v119;
          sub_22E70798C(v115, &qword_27DA6D190, &qword_22E729E30);
          v121 = sub_22E706BF8(v118, v120, &a11);

          *(v90 + 4) = v121;
          sub_22E70999C();
          _os_log_impl(v122, v123, v124, v125, v126, 0xCu);
          sub_22E6CF2F4(v117);
          sub_22E6E3CE4();
          sub_22E7099AC();

          v127 = v113;
          v128 = &qword_27DA6D190;
        }

        else
        {
          v129 = *(v22 + 200);

          sub_22E70798C(v129, &qword_27DA6D190, &qword_22E729E30);
          v127 = sub_22E6F3AB0();
        }

        sub_22E70798C(v127, v128, &qword_22E729E30);
        break;
      case 2:
        v64 = *(v22 + 152);
        v63 = *(v22 + 160);
        v65 = *(v22 + 144);
        v66 = *(v22 + 120);
        v67 = *v61;
        *(v22 + 88) = *v61;

        sub_22E6CF1CC(&qword_27DA6C890, &qword_22E7272B0);
        AsyncThrowingStream.Continuation.yield(_:)();
        v68 = *(v64 + 8);
        v69 = sub_22E709D48();
        v70(v69);
        if (qword_27DA6C450 != -1)
        {
          sub_22E70976C();
        }

        v71 = type metadata accessor for Logger();
        sub_22E709E64(v71, qword_27DA6D0F0);

        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v72, v73))
        {
          sub_22E709FA8();
          sub_22E709E7C();
          sub_22E70A284();
          *v65 = 136315138;
          *(v22 + 96) = v67;
          v74 = String.init<A>(describing:)();
          v76 = sub_22E706BF8(v74, v75, &a11);

          *(v65 + 4) = v76;
          sub_22E70A01C();
          _os_log_impl(v77, v78, v79, v80, v81, 0xCu);
          sub_22E7098CC();
          sub_22E7099AC();
        }

        else
        {
        }

        break;
      case 3:
        v82 = *(v22 + 112);
        v83 = *v61;
        sub_22E6F57E8();
        v84 = sub_22E709EB4();
        *v85 = v83;
        *(v22 + 72) = v84;
        sub_22E6CF1CC(&qword_27DA6D180, &qword_22E729BB8);
        AsyncThrowingStream.Continuation.finish(throwing:)();
        break;
      default:
        v62 = *(v22 + 128);
        *(v22 + 80) = *v61;
        sub_22E6CF1CC(&qword_27DA6D1D0, &qword_22E729D10);
        CheckedContinuation.resume(returning:)();
        *(v22 + 280) = 1;
        break;
    }

    v130 = *(MEMORY[0x277D858B8] + 4);
    swift_task_alloc();
    sub_22E6ECB74();
    *(v22 + 272) = v131;
    *v131 = v132;
    v131[1] = sub_22E702678;
    v133 = *(v22 + 264);
    v134 = *(v22 + 240);
    v135 = *(v22 + 248);
    sub_22E7097F4();
    sub_22E709BF0();

    return MEMORY[0x2822005A8](v136, v137, v138, v139, v140);
  }
}

uint64_t sub_22E702DFC()
{
  sub_22E709B3C();
  v28 = v1;
  v3 = sub_22E70A474();
  v4(v3);
  v5 = v1[2];
  if ((v0 & 1) == 0)
  {
    if (qword_27DA6C450 != -1)
    {
      sub_22E70976C();
    }

    v6 = v1[17];
    v7 = type metadata accessor for Logger();
    sub_22E6E3578(v7, qword_27DA6D0F0);
    sub_22E709E30();

    v8 = v5;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = v1[17];
      v12 = sub_22E709F90();
      v13 = sub_22E70A098();
      v27 = sub_22E709F3C();
      *v12 = 138412546;
      v14 = v5;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      *(v12 + 12) = 2080;
      type metadata accessor for AssetUploadRequest();
      v16 = sub_22E709F04();
      v17 = MEMORY[0x2318EC680](v16);
      sub_22E706BF8(v17, v18, &v27);
      sub_22E70A3B8();
      *(v12 + 14) = v2;
      _os_log_impl(&dword_22E6C9000, v9, v10, "ephemeral asset not received due to error %@ for request %s", v12, 0x16u);
      sub_22E70798C(v13, &qword_27DA6CA08, &qword_22E727840);
      sub_22E6E3CE4();
      sub_22E7098CC();
      sub_22E709A54();
    }

    v19 = v1[16];
    v1[3] = v5;
    v20 = v5;
    sub_22E6CF1CC(&qword_27DA6D1D0, &qword_22E729D10);
    CheckedContinuation.resume(throwing:)();
  }

  v22 = v1[14];
  v21 = v1[15];
  v1[4] = v5;
  v23 = v5;
  v24 = v5;
  sub_22E6CF1CC(&qword_27DA6C890, &qword_22E7272B0);
  sub_22E70A418();
  AsyncThrowingStream.Continuation.finish(throwing:)();
  v1[5] = v5;
  sub_22E6CF1CC(&qword_27DA6D180, &qword_22E729BB8);
  AsyncThrowingStream.Continuation.finish(throwing:)();

  sub_22E70A1A8();

  sub_22E6E3AD8();

  return v25();
}

uint64_t sub_22E703094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_22E6CF1CC(&qword_27DA6D1A8, &qword_22E729CD8);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v9 = OBJC_IVAR____TtC10CloudAsset25AssetsDownloadCoordinator__signals;
  v4[8] = v8;
  v4[9] = v9;

  return MEMORY[0x2822009F8](sub_22E703168, 0, 0);
}

uint64_t sub_22E703168()
{
  sub_22E6E3D08();
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[5];
  v4 = sub_22E6CF1CC(&qword_27DA6C7B0, &unk_22E726D30);
  MEMORY[0x2318EC7E0](v4);
  v5 = *(MEMORY[0x277D858B8] + 4);
  swift_task_alloc();
  sub_22E6ECB74();
  v0[10] = v6;
  *v6 = v7;
  sub_22E709B08(v6);
  sub_22E6ECBB8();

  return MEMORY[0x2822005A8](v8, v9, v10, v11, v12);
}

uint64_t sub_22E703218()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  v2 = *(v1 + 80);
  v3 = *v0;
  sub_22E6E3C94();
  *v4 = v3;

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22E703314()
{
  v21 = v0;
  v1 = v0[2];
  if (v1)
  {
    if (qword_27DA6C450 != -1)
    {
      sub_22E70976C();
    }

    v2 = type metadata accessor for Logger();
    sub_22E6E3578(v2, qword_27DA6D0F0);
    sub_22E709E30();

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = sub_22E709FA8();
      v6 = sub_22E709F3C();
      v20 = v6;
      *v5 = 136315138;
      v0[4] = v1;
      v7 = String.init<A>(describing:)();
      v9 = sub_22E706BF8(v7, v8, &v20);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_22E6C9000, v3, v4, "received signal %s", v5, 0xCu);
      sub_22E6CF2F4(v6);
      sub_22E6E3CE4();
      sub_22E6E3CC8();
    }

    else
    {
    }

    v12 = *(MEMORY[0x277D858B8] + 4);
    swift_task_alloc();
    sub_22E6ECB74();
    v0[10] = v13;
    *v13 = v14;
    sub_22E709B08(v13);
    sub_22E6ECBB8();

    return MEMORY[0x2822005A8](v15, v16, v17, v18, v19);
  }

  else
  {
    (*(v0[7] + 8))(v0[8], v0[6]);

    sub_22E709850();

    return v10();
  }
}

uint64_t sub_22E703518()
{
  sub_22E6E3BDC();
  (*(v0[7] + 8))(v0[8], v0[6]);
  v1 = v0[3];

  sub_22E6E3AD8();

  return v2();
}

uint64_t AssetManager.__deallocating_deinit()
{
  sub_22E6CF2F4((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

void sub_22E7035E8()
{
  sub_22E6EB570();
  v32 = v1;
  v33 = v2;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v30 = v8;
  v31 = v9;
  v28 = type metadata accessor for UUID();
  v10 = *(v28 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v28);
  v29 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22E6CF1CC(v6, v4);
  v13 = sub_22E6CF988(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v19 = &v28 - v18;
  (*(v15 + 16))(&v28 - v18, v30, v12);
  v20 = *(v10 + 16);
  v21 = sub_22E709A44();
  v22(v21);
  v23 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v24 = (v17 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (*(v10 + 80) + v24 + 8) & ~*(v10 + 80);
  v26 = swift_allocObject();
  (*(v15 + 32))(v26 + v23, v19, v12);
  *(v26 + v24) = v7;
  (*(v10 + 32))(v26 + v25, v29, v28);
  swift_beginAccess();

  v27 = *(v7 + 112);
  swift_isUniquelyReferenced_nonNull_native();
  v34 = *(v7 + 112);
  sub_22E7152B0();
  *(v7 + 112) = v34;
  swift_endAccess();
  sub_22E6EB538();
}

uint64_t sub_22E703828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for DownloadResponseMessage();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_22E6CF1CC(&qword_27DA6D260, &qword_22E729DB0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v23 - v11;
  v13 = (a1 + *(type metadata accessor for XPCAsyncSequenceResponse() + 20));
  v14 = v13[1];
  if (v14 >> 60 == 11)
  {
    sub_22E708D90();
    v15 = swift_allocError();
    *v16 = 1;
    v24 = v15;
    goto LABEL_5;
  }

  if (v14 >> 60 == 15)
  {
    v24 = 0;
LABEL_5:
    sub_22E6CF1CC(&qword_27DA6D240, &qword_22E729D90);
    AsyncThrowingStream.Continuation.finish(throwing:)();
    swift_beginAccess();
    v17 = sub_22E715168(a4);
    swift_endAccess();
    return sub_22E708DE4(v17);
  }

  v23[1] = a4;
  v19 = *v13;
  v20 = type metadata accessor for JSONDecoder();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  sub_22E6CFB64(v19, v14);
  JSONDecoder.init()();
  sub_22E7096D0(&qword_27DA6D270, type metadata accessor for DownloadResponseMessage);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  sub_22E6CF1CC(&qword_27DA6D240, &qword_22E729D90);
  AsyncThrowingStream.Continuation.yield(_:)();
  sub_22E708DF4(v19, v14);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_22E703B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for UploadResponseMessage();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_22E6CF1CC(&qword_27DA6D298, &qword_22E729E08);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v23 - v11;
  v13 = (a1 + *(type metadata accessor for XPCAsyncSequenceResponse() + 20));
  v14 = v13[1];
  if (v14 >> 60 == 11)
  {
    sub_22E708D90();
    v15 = swift_allocError();
    *v16 = 1;
    v24 = v15;
    goto LABEL_5;
  }

  if (v14 >> 60 == 15)
  {
    v24 = 0;
LABEL_5:
    sub_22E6CF1CC(&qword_27DA6D288, &qword_22E729DE8);
    AsyncThrowingStream.Continuation.finish(throwing:)();
    swift_beginAccess();
    v17 = sub_22E715168(a4);
    swift_endAccess();
    return sub_22E708DE4(v17);
  }

  v23[1] = a4;
  v19 = *v13;
  v20 = type metadata accessor for JSONDecoder();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  sub_22E6CFB64(v19, v14);
  JSONDecoder.init()();
  sub_22E7096D0(&qword_27DA6D2A0, type metadata accessor for UploadResponseMessage);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  sub_22E6CF1CC(&qword_27DA6D288, &qword_22E729DE8);
  AsyncThrowingStream.Continuation.yield(_:)();
  sub_22E708DF4(v19, v14);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_22E703EB8(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 120) = a3;
  *(v4 + 16) = a1;
  *(v4 + 40) = *v3;
  v5 = *(*(sub_22E6CF1CC(&qword_27DA6C9A8, &qword_22E72C030) - 8) + 64) + 15;
  *(v4 + 48) = swift_task_alloc();
  v6 = sub_22E6CF1CC(&qword_27DA6D238, &qword_22E729D88);
  *(v4 + 56) = v6;
  v7 = *(v6 - 8);
  *(v4 + 64) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 72) = swift_task_alloc();
  v9 = sub_22E6CF1CC(&qword_27DA6D240, &qword_22E729D90);
  *(v4 + 80) = v9;
  v10 = *(v9 - 8);
  *(v4 + 88) = v10;
  *(v4 + 96) = *(v10 + 64);
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22E704068, 0, 0);
}

uint64_t sub_22E704068()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v24 = *(v0 + 104);
  v25 = *(v0 + 96);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v26 = *(v0 + 48);
  v29 = *(v0 + 40);
  v27 = *(v0 + 32);
  v28 = *(v0 + 24);
  v7 = *(v0 + 16);
  v23 = *(v0 + 120);
  type metadata accessor for DownloadResponseMessage();
  (*(v5 + 104))(v4, *MEMORY[0x277D858A0], v6);
  static AsyncThrowingStream.makeStream<>(of:throwing:bufferingPolicy:)();
  v8 = *(v5 + 8);
  v9 = sub_22E6D3824();
  v10(v9);
  type metadata accessor for TaskPriority();
  sub_22E6E3D34();
  sub_22E6CF58C(v11, v12, v13, v14);
  (*(v2 + 16))(v24, v1, v3);
  v15 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 4) = v27;
  (*(v2 + 32))(&v16[v15], v24, v3);
  v17 = &v16[(v15 + v25 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v17 = v28;
  v17[8] = v23 & 1;
  *&v16[(v15 + v25 + 23) & 0xFFFFFFFFFFFFFFF8] = v29;

  j__swift_bridgeObjectRetain();
  sub_22E709D08();
  sub_22E6FA5FC();

  v18 = *(v2 + 8);
  v19 = sub_22E709D48();
  v20(v19);

  sub_22E709850();

  return v21();
}

uint64_t sub_22E7042BC(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 120) = a3;
  *(v4 + 16) = a1;
  *(v4 + 40) = *v3;
  v5 = *(*(sub_22E6CF1CC(&qword_27DA6C9A8, &qword_22E72C030) - 8) + 64) + 15;
  *(v4 + 48) = swift_task_alloc();
  v6 = sub_22E6CF1CC(&qword_27DA6D280, &qword_22E729DE0);
  *(v4 + 56) = v6;
  v7 = *(v6 - 8);
  *(v4 + 64) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 72) = swift_task_alloc();
  v9 = sub_22E6CF1CC(&qword_27DA6D288, &qword_22E729DE8);
  *(v4 + 80) = v9;
  v10 = *(v9 - 8);
  *(v4 + 88) = v10;
  *(v4 + 96) = *(v10 + 64);
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22E70446C, 0, 0);
}

uint64_t sub_22E70446C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22E709E48();
  sub_22E709FC0();
  v21 = *(v20 + 112);
  v22 = *(v20 + 88);
  v45 = *(v20 + 104);
  v46 = *(v20 + 96);
  v23 = *(v20 + 72);
  v24 = *(v20 + 80);
  v26 = *(v20 + 56);
  v25 = *(v20 + 64);
  v27 = *(v20 + 48);
  v49 = *(v20 + 40);
  v47 = *(v20 + 32);
  HIDWORD(a9) = *(v20 + 120);
  v28 = *(v20 + 16);
  v48 = *(v20 + 24);
  type metadata accessor for UploadResponseMessage();
  (*(v25 + 104))(v23, *MEMORY[0x277D858A0], v26);
  static AsyncThrowingStream.makeStream<>(of:throwing:bufferingPolicy:)();
  (*(v25 + 8))(v23, v26);
  type metadata accessor for TaskPriority();
  sub_22E6E3D34();
  sub_22E6CF58C(v29, v30, v31, v32);
  (*(v22 + 16))(v45, v21, v24);
  v33 = (*(v22 + 80) + 40) & ~*(v22 + 80);
  v34 = swift_allocObject();
  *(v34 + 2) = 0;
  *(v34 + 3) = 0;
  *(v34 + 4) = v47;
  (*(v22 + 32))(&v34[v33], v45, v24);
  v35 = &v34[(v33 + v46 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v35 = v48;
  v35[8] = BYTE4(a9) & 1;
  *&v34[(v33 + v46 + 23) & 0xFFFFFFFFFFFFFFF8] = v49;

  sub_22E709D08();
  sub_22E6FA5FC();

  (*(v22 + 8))(v21, v24);

  sub_22E709850();
  sub_22E709A8C();

  LOBYTE(a17) = BYTE4(a9) & 1;
  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, v45, v46, v27, v47, v48, v49, v23, a17, a18, a19, a20);
}

uint64_t sub_22E7046A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 56) = a4;
  *(v7 + 64) = a5;
  v10 = type metadata accessor for XPCRichError();
  *(v7 + 72) = v10;
  v11 = *(v10 - 8);
  *(v7 + 80) = v11;
  v12 = *(v11 + 64) + 15;
  *(v7 + 88) = swift_task_alloc();
  *(v7 + 96) = swift_task_alloc();
  *(v7 + 104) = swift_task_alloc();
  v13 = type metadata accessor for XPCAsyncSequenceRequest();
  *(v7 + 112) = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  *(v7 + 120) = swift_task_alloc();
  v15 = type metadata accessor for UUID();
  *(v7 + 128) = v15;
  v16 = *(v15 - 8);
  *(v7 + 136) = v16;
  v17 = *(v16 + 64) + 15;
  *(v7 + 144) = swift_task_alloc();
  *(v7 + 152) = swift_task_alloc();
  *(v7 + 160) = swift_task_alloc();
  *(v7 + 168) = swift_task_alloc();
  *(v7 + 176) = swift_task_alloc();
  *(v7 + 16) = a6;
  *(v7 + 24) = a7 & 1;

  return MEMORY[0x2822009F8](sub_22E704854, 0, 0);
}

uint64_t sub_22E704854()
{
  sub_22E6E3BDC();
  v1 = v0[22];
  v2 = v0[7];
  UUID.init()();
  v0[23] = *(v2 + 56);
  v3 = sub_22E709E18();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22E7048BC()
{
  sub_22E6E3BDC();
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[8];
  sub_22E7035E8();
  v4 = sub_22E6E3C64();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22E704948()
{
  sub_22E6E3BDC();
  v1 = sub_22E70A0C8(*(v0 + 56));
  *(v0 + 192) = v1;
  v2 = *v1;
  v3 = sub_22E709E18();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22E7049AC()
{
  sub_22E6E3D08();
  v1 = **(v0 + 192);
  *(v0 + 200) = sub_22E71A648();
  *(v0 + 208) = 0;
  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_22E7055D4()
{
  sub_22E6E3BDC();
  v1 = **(v0 + 272);
  sub_22E71A578();
  v2 = sub_22E6E3C64();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_22E705634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t), uint64_t a11, void (*a12)(uint64_t, uint64_t), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22E709F74();
  sub_22E70A224();
  v18 = sub_22E70A1D0();
  v19(v18);
  v20 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_22E70A1E8();
  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v17 + 264);
  v25 = *(v17 + 136);
  v24 = *(v17 + 144);
  v26 = *(v17 + 128);
  if (v22)
  {
    sub_22E709FA8();
    a12 = v23;
    a13 = sub_22E709E7C();
    *v23 = 136315138;
    sub_22E70973C();
    sub_22E7096D0(v27, v28);
    sub_22E709DE8();
    dispatch thunk of CustomStringConvertible.description.getter();
    sub_22E709E3C();
    v29 = sub_22E709D7C();
    (v23)(v29);
    v30 = sub_22E6D3824();
    sub_22E706BF8(v30, v31, v32);
    sub_22E70A0B0();
    *(v23 + 4) = v24;
    sub_22E70999C();
    _os_log_impl(v33, v34, v35, v36, v37, 0xCu);
    sub_22E7098CC();
    sub_22E7099AC();
  }

  else
  {

    v38 = sub_22E709D7C();
    (v23)(v38);
  }

  sub_22E709CBC();
  sub_22E709724();
  sub_22E7096D0(v39, v40);
  v41 = sub_22E709C0C();
  v43 = sub_22E7099D8(v41, v42);
  (v20)(v43);
  *(v17 + 48) = v26;
  sub_22E6CF1CC(&qword_27DA6D240, &qword_22E729D90);
  sub_22E709F04();
  AsyncThrowingStream.Continuation.finish(throwing:)();
  v44 = sub_22E709EF8();
  a10(v44);
  a12(a11, v16);

  sub_22E709860();

  sub_22E709850();
  sub_22E6E3F68();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_22E705848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 56) = a4;
  *(v7 + 64) = a5;
  v10 = type metadata accessor for XPCRichError();
  *(v7 + 72) = v10;
  v11 = *(v10 - 8);
  *(v7 + 80) = v11;
  v12 = *(v11 + 64) + 15;
  *(v7 + 88) = swift_task_alloc();
  *(v7 + 96) = swift_task_alloc();
  *(v7 + 104) = swift_task_alloc();
  v13 = type metadata accessor for XPCAsyncSequenceRequest();
  *(v7 + 112) = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  *(v7 + 120) = swift_task_alloc();
  v15 = type metadata accessor for UUID();
  *(v7 + 128) = v15;
  v16 = *(v15 - 8);
  *(v7 + 136) = v16;
  v17 = *(v16 + 64) + 15;
  *(v7 + 144) = swift_task_alloc();
  *(v7 + 152) = swift_task_alloc();
  *(v7 + 160) = swift_task_alloc();
  *(v7 + 168) = swift_task_alloc();
  *(v7 + 176) = swift_task_alloc();
  *(v7 + 16) = a6;
  *(v7 + 24) = a7 & 1;

  return MEMORY[0x2822009F8](sub_22E7059F8, 0, 0);
}

uint64_t sub_22E7059F8()
{
  sub_22E6E3BDC();
  v1 = v0[22];
  v2 = v0[7];
  UUID.init()();
  v0[23] = *(v2 + 56);
  v3 = sub_22E709E18();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22E705A60()
{
  sub_22E6E3BDC();
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[8];
  sub_22E7035E8();
  v4 = sub_22E6E3C64();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22E705AEC()
{
  sub_22E6E3BDC();
  v1 = sub_22E70A0C8(*(v0 + 56));
  *(v0 + 192) = v1;
  v2 = *v1;
  v3 = sub_22E709E18();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22E705B50()
{
  sub_22E6E3D08();
  v1 = **(v0 + 192);
  *(v0 + 200) = sub_22E71A648();
  *(v0 + 208) = 0;
  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_22E706778()
{
  sub_22E6E3BDC();
  v1 = **(v0 + 272);
  sub_22E71A578();
  v2 = sub_22E6E3C64();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_22E7067D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t), uint64_t a11, void (*a12)(uint64_t, uint64_t), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22E709F74();
  sub_22E70A224();
  v18 = sub_22E70A1D0();
  v19(v18);
  v20 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_22E70A1E8();
  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v17 + 264);
  v25 = *(v17 + 136);
  v24 = *(v17 + 144);
  v26 = *(v17 + 128);
  if (v22)
  {
    sub_22E709FA8();
    a12 = v23;
    a13 = sub_22E709E7C();
    *v23 = 136315138;
    sub_22E70973C();
    sub_22E7096D0(v27, v28);
    sub_22E709DE8();
    dispatch thunk of CustomStringConvertible.description.getter();
    sub_22E709E3C();
    v29 = sub_22E709D7C();
    (v23)(v29);
    v30 = sub_22E6D3824();
    sub_22E706BF8(v30, v31, v32);
    sub_22E70A0B0();
    *(v23 + 4) = v24;
    sub_22E70999C();
    _os_log_impl(v33, v34, v35, v36, v37, 0xCu);
    sub_22E7098CC();
    sub_22E7099AC();
  }

  else
  {

    v38 = sub_22E709D7C();
    (v23)(v38);
  }

  sub_22E709CBC();
  sub_22E709724();
  sub_22E7096D0(v39, v40);
  v41 = sub_22E709C0C();
  v43 = sub_22E7099D8(v41, v42);
  (v20)(v43);
  *(v17 + 48) = v26;
  sub_22E6CF1CC(&qword_27DA6D288, &qword_22E729DE8);
  sub_22E709F04();
  AsyncThrowingStream.Continuation.finish(throwing:)();
  v44 = sub_22E709EF8();
  a10(v44);
  a12(a11, v16);

  sub_22E709860();

  sub_22E709850();
  sub_22E6E3F68();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_22E7069EC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_22E706A04(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_22E6CF1CC(&qword_27DA6D160, &qword_22E729B80), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = sub_22E6CF1CC(&qword_27DA6D160, &qword_22E729B80);

    return MEMORY[0x2821FE828](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3, a1, a2, result);
  }

  return result;
}

char *sub_22E706AF0(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

uint64_t sub_22E706B1C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for CloudAssets_Signal.Event(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = type metadata accessor for CloudAssets_Signal.Event(0);

    return MEMORY[0x2821FE828](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3, a1, a2, result);
  }

  return result;
}

uint64_t sub_22E706BF8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  sub_22E6ECBB8();
  v9 = sub_22E706CB8(v6, v7, v8, 1, a1, a2);
  v10 = v14[0];
  if (v9)
  {
    v11 = v9;

    ObjectType = swift_getObjectType();
    v14[0] = v11;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v14[0] = a1;
    v14[1] = a2;
  }

  v12 = *a3;
  if (*a3)
  {
    sub_22E709068(v14, *a3);
    *a3 = v12 + 32;
  }

  sub_22E6CF2F4(v14);
  return v10;
}

unint64_t sub_22E706CB8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_22E706DB8(a5, a6);
    *a1 = v9;
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
    result = _StringObject.sharedUTF8.getter();
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

uint64_t sub_22E706DB8(uint64_t a1, unint64_t a2)
{
  v4 = sub_22E706E04(a1, a2);
  sub_22E706F1C(&unk_284338ED8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_22E706E04(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_22E707000(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_22E706F1C(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_22E707070(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_22E707000(uint64_t a1, uint64_t a2)
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

  sub_22E6CF1CC(&qword_27DA6D278, &qword_22E729DC8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_22E707070(char *result, int64_t a2, char a3, char *a4)
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
    sub_22E6CF1CC(&qword_27DA6D278, &qword_22E729DC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

char *sub_22E7071AC(char *a1, int64_t a2, char a3)
{
  result = sub_22E707A74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22E7071CC(size_t a1, int64_t a2, char a3)
{
  result = sub_22E707B7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_22E707250()
{
  sub_22E6E3F34();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v7 = v0[4];
  v6 = v0[5];
  swift_task_alloc();
  sub_22E6ECB74();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_22E6E1F30;

  return sub_22E703094(v3, v4, v5, v7);
}

_BYTE *storeEnumTagSinglePayload for AssetManager.AssetError(_BYTE *result, int a2, int a3)
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

unint64_t sub_22E707408()
{
  result = qword_27DA6D1A0;
  if (!qword_27DA6D1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D1A0);
  }

  return result;
}

uint64_t sub_22E70745C()
{
  sub_22E6E3F34();
  sub_22E709FF4();
  v0 = sub_22E6CF1CC(&qword_27DA6D188, &qword_22E729BC0);
  sub_22E6E3A38(v0);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  v5 = sub_22E6CF1CC(&qword_27DA6D1B0, &qword_22E729CE0);
  sub_22E6D376C(v5);
  v7 = *(v6 + 80);
  sub_22E70A438();
  v8 = swift_task_alloc();
  v9 = sub_22E70998C(v8);
  *v9 = v10;
  v9[1] = sub_22E6E1F30;
  v11 = sub_22E7098B8();

  return sub_22E6FAB78(v11, v12, v13, v14, v15);
}

uint64_t sub_22E707590()
{
  sub_22E709B3C();
  v1 = sub_22E6CF1CC(&qword_27DA6D150, &qword_22E729B60);
  sub_22E6E3A38(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_22E6CF1CC(&qword_27DA6D180, &qword_22E729BB8);
  sub_22E6E3A38(v6);
  v8 = (v3 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v10 = *(v9 + 64);
  v11 = sub_22E6CF1CC(&qword_27DA6C890, &qword_22E7272B0);
  sub_22E6E3A38(v11);
  v13 = (v8 + v10 + *(v12 + 80)) & ~*(v12 + 80);
  v15 = *(v14 + 64);
  v16 = sub_22E6CF1CC(&qword_27DA6D1D0, &qword_22E729D10);
  sub_22E6E3A38(v16);
  v18 = (v13 + v15 + *(v17 + 80)) & ~*(v17 + 80);
  v20 = *(v19 + 64);
  sub_22E70A044();
  v22 = *(v0 + v21);
  v24 = *(v0 + v23);
  v25 = swift_task_alloc();
  v26 = sub_22E70998C(v25);
  *v26 = v27;
  v26[1] = sub_22E6E3984;
  sub_22E709A28();

  return sub_22E702358(v28, v29, v30, v31, v32, v33, v34, v35);
}

uint64_t sub_22E7077D0()
{
  sub_22E709A70();
  sub_22E709B3C();
  sub_22E709FF4();
  v1 = sub_22E6CF1CC(&qword_27DA6D170, &qword_22E729B90);
  sub_22E6E3A38(v1);
  v4 = (*(v3 + 64) + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_22E6CF1CC(&qword_27DA6D1F0, &qword_22E729D40);
  sub_22E6E3A38(v5);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  sub_22E70A044();
  v10 = *(v0 + v4);
  v12 = *(v0 + v11);
  v14 = *(v0 + v13);
  v15 = swift_task_alloc();
  v16 = sub_22E70998C(v15);
  *v16 = v17;
  v16[1] = sub_22E6E3984;
  sub_22E7098B8();
  sub_22E709A28();

  return sub_22E6FE344(v18, v19, v20, v21, v22, v23, v24);
}

uint64_t sub_22E707944(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_22E70A5E4(a1, a2, a3, a4);
  sub_22E6D901C(v5);
  v7 = *(v6 + 32);
  v8 = sub_22E6D368C();
  v9(v8);
  return v4;
}

uint64_t sub_22E70798C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_22E6CF1CC(a2, a3);
  sub_22E6D9EDC(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_22E7079E0(uint64_t a1, uint64_t a2)
{
  v3 = sub_22E6D3778();
  v5 = v4(v3);
  sub_22E6D901C(v5);
  v7 = *(v6 + 16);
  v8 = sub_22E6D368C();
  v9(v8);
  return a2;
}

char *sub_22E707A34(char *a1, int64_t a2, char a3)
{
  result = sub_22E707D48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22E707A54(size_t a1, int64_t a2, char a3)
{
  result = sub_22E707E44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22E707A74(char *result, int64_t a2, char a3, char *a4)
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
    sub_22E6CF1CC(&qword_27DA6D2B8, &qword_22E729E20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_22E707B7C(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  sub_22E6CF1CC(&qword_27DA6D230, &qword_22E729D80);
  v10 = *(sub_22E6CF1CC(&qword_27DA6D160, &qword_22E729B80) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_22E6CF1CC(&qword_27DA6D160, &qword_22E729B80) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_22E706A04(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_22E707D48(char *result, int64_t a2, char a3, char *a4)
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
    sub_22E6CF1CC(&qword_27DA6D2B0, &qword_22E729E18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

size_t sub_22E707E44(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  sub_22E6CF1CC(&qword_27DA6D2A8, &qword_22E729E10);
  v10 = *(type metadata accessor for CloudAssets_Signal.Event(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for CloudAssets_Signal.Event(0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_22E706B1C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_22E707FF8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for AssetDownloadRequest();
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  sub_22E6CF1CC(&qword_27DA6D220, &qword_22E729D70);
  v48 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v16 = result;
  if (!*(v13 + 16))
  {
LABEL_34:

LABEL_35:
    *v3 = v16;
    return result;
  }

  v43 = v3;
  v17 = 0;
  v18 = (v13 + 64);
  v19 = 1 << *(v13 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & *(v13 + 64);
  v22 = (v19 + 63) >> 6;
  v44 = (v10 + 16);
  v45 = v10;
  v49 = (v10 + 32);
  v23 = result + 64;
  v46 = v13;
  if (!v21)
  {
LABEL_9:
    v25 = v17;
    while (1)
    {
      v17 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v17 >= v22)
      {
        break;
      }

      v26 = v18[v17];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v21 = (v26 - 1) & v26;
        goto LABEL_14;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_35;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      sub_22E708494(0, (v42 + 63) >> 6, v18);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v24 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
LABEL_14:
    v27 = v24 | (v17 << 6);
    v28 = *(v13 + 48);
    v50 = *(v10 + 72);
    v29 = v28 + v50 * v27;
    if (v48)
    {
      (*v49)(v51, v29, v9);
      v30 = *(v13 + 56);
      v31 = *(v47 + 72);
      sub_22E708A80(v30 + v31 * v27, v52);
    }

    else
    {
      (*v44)(v51, v29, v9);
      v32 = *(v13 + 56);
      v31 = *(v47 + 72);
      sub_22E7079E0(v32 + v31 * v27, v52);
    }

    v33 = *(v16 + 40);
    sub_22E7096D0(&qword_27DA6C5F0, MEMORY[0x277CC95F0]);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v34 = -1 << *(v16 + 32);
    v35 = result & ~v34;
    v36 = v35 >> 6;
    if (((-1 << v35) & ~*(v23 + 8 * (v35 >> 6))) == 0)
    {
      break;
    }

    v37 = __clz(__rbit64((-1 << v35) & ~*(v23 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v23 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
    (*v49)((*(v16 + 48) + v50 * v37), v51, v9);
    result = sub_22E708A80(v52, *(v16 + 56) + v31 * v37);
    ++*(v16 + 16);
    v10 = v45;
    v13 = v46;
    if (!v21)
    {
      goto LABEL_9;
    }
  }

  v38 = 0;
  v39 = (63 - v34) >> 6;
  while (++v36 != v39 || (v38 & 1) == 0)
  {
    v40 = v36 == v39;
    if (v36 == v39)
    {
      v36 = 0;
    }

    v38 |= v40;
    v41 = *(v23 + 8 * v36);
    if (v41 != -1)
    {
      v37 = __clz(__rbit64(~v41)) + (v36 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_22E708494(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_22E729AE0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void sub_22E7084F8(uint64_t a1, char a2, uint64_t *a3)
{
  v51 = a3;
  v6 = type metadata accessor for AssetDownloadRequest();
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v50 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v52 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22E6CF1CC(&qword_27DA6D160, &qword_22E729B80);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v48 = v42 - v17;
  v46 = *(a1 + 16);
  if (!v46)
  {
LABEL_13:

    return;
  }

  v42[1] = v3;
  v43 = v10;
  v18 = 0;
  v45 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v44 = *(v15 + 48);
  v49 = (v10 + 32);
  while (1)
  {
    if (v18 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v19 = v16;
    v20 = v48;
    sub_22E708A38(v45 + *(v16 + 72) * v18, v48, &qword_27DA6D160, &qword_22E729B80);
    v21 = *v49;
    v22 = v52;
    v23 = v9;
    (*v49)(v52, v20, v9);
    sub_22E708A80(v20 + v44, v50);
    v24 = *v51;
    v26 = sub_22E714B78(v22);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_19;
    }

    v30 = v25;
    if (v24[3] < v29)
    {
      break;
    }

    if (a2)
    {
      if (v25)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_22E6CF1CC(&qword_27DA6D228, &qword_22E729D78);
      _NativeDictionary.copy()();
      if (v30)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v35 = v52;
    v36 = *v51;
    *(*v51 + 8 * (v26 >> 6) + 64) |= 1 << v26;
    v9 = v23;
    v21(v36[6] + *(v43 + 72) * v26, v35, v23);
    sub_22E708A80(v50, v36[7] + *(v47 + 72) * v26);
    v37 = v36[2];
    v38 = __OFADD__(v37, 1);
    v39 = v37 + 1;
    if (v38)
    {
      goto LABEL_20;
    }

    ++v18;
    v36[2] = v39;
    a2 = 1;
    v16 = v19;
    if (v46 == v18)
    {
      goto LABEL_13;
    }
  }

  v31 = v51;
  sub_22E707FF8(v29, a2 & 1);
  v32 = *v31;
  v33 = sub_22E714B78(v52);
  if ((v30 & 1) != (v34 & 1))
  {
    goto LABEL_21;
  }

  v26 = v33;
  if ((v30 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v40 = swift_allocError();
  swift_willThrow();
  v55 = v40;
  v41 = v40;
  sub_22E6CF1CC(&qword_27DA6C7C0, qword_22E726DC0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_22E708D18();
    (*(v43 + 8))(v52, v23);

    return;
  }

LABEL_22:
  v53 = 0;
  v54 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x2318EC630](0xD00000000000001BLL, 0x800000022E72D3B0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x2318EC630](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_22E708A38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_22E70A5E4(a1, a2, a3, a4);
  sub_22E6D901C(v5);
  v7 = *(v6 + 16);
  v8 = sub_22E6D368C();
  v9(v8);
  return v4;
}

uint64_t sub_22E708A80(uint64_t a1, uint64_t a2)
{
  v3 = sub_22E6D3778();
  v5 = v4(v3);
  sub_22E6D901C(v5);
  v7 = *(v6 + 32);
  v8 = sub_22E6D368C();
  v9(v8);
  return a2;
}

uint64_t sub_22E708AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a6;
  v13 = *(a6 + 8);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_22E6E3984;

  return sub_22E7046A4(a1, a2, a3, a4, a5, v12, v13);
}

uint64_t sub_22E708BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22E709A70();
  sub_22E709B3C();
  sub_22E709FF4();
  v12 = sub_22E6CF1CC(&qword_27DA6D240, &qword_22E729D90);
  sub_22E6E3A38(v12);
  v14 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  sub_22E709DC4(*(v15 + 64));
  v16 = swift_task_alloc();
  v17 = sub_22E70998C(v16);
  *v17 = v18;
  v17[1] = sub_22E6E3984;
  sub_22E7098B8();
  sub_22E709A28();

  return v26(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

unint64_t sub_22E708CC4()
{
  result = qword_27DA6D250;
  if (!qword_27DA6D250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D250);
  }

  return result;
}

uint64_t sub_22E708D18()
{
  v1 = sub_22E6D3848();
  v3 = v2(v1);
  sub_22E6D9EDC(v3);
  (*(v4 + 8))(v0);
  return v0;
}

unint64_t sub_22E708D90()
{
  result = qword_27DA6D268;
  if (!qword_27DA6D268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D268);
  }

  return result;
}

uint64_t sub_22E708DE4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22E708DF4(uint64_t a1, unint64_t a2)
{
  if (((a2 >> 60) | 4) != 0xF)
  {
    return sub_22E6CFBBC(a1, a2);
  }

  return a1;
}

uint64_t sub_22E708E0C()
{
  sub_22E6EB570();
  v3 = sub_22E6CF1CC(v1, v2);
  sub_22E6CF988(v3);
  v6 = ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v5 + 64);
  v7 = sub_22E6CF1CC(&qword_27DA6D1B0, &qword_22E729CE0);
  sub_22E6CF988(v7);
  v9 = v8;
  v10 = (v6 + *(v9 + 80)) & ~*(v9 + 80);
  v12 = *(v11 + 64);
  v13 = *(v0 + 16);
  swift_unknownObjectRelease();
  v14 = sub_22E709CE4();
  v15(v14);
  (*(v9 + 8))(v0 + v10, v7);
  sub_22E6EB538();

  return MEMORY[0x2821FE8E8](v16, v17, v18);
}

uint64_t sub_22E708F34()
{
  sub_22E6E3F34();
  sub_22E709FF4();
  v0 = sub_22E6CF1CC(&qword_27DA6D130, &qword_22E729B28);
  sub_22E6E3A38(v0);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  v5 = sub_22E6CF1CC(&qword_27DA6D1B0, &qword_22E729CE0);
  sub_22E6D376C(v5);
  v7 = *(v6 + 80);
  sub_22E70A438();
  v8 = swift_task_alloc();
  v9 = sub_22E70998C(v8);
  *v9 = v10;
  v9[1] = sub_22E6E3984;
  v11 = sub_22E7098B8();

  return sub_22E6FFDBC(v11, v12, v13, v14, v15);
}

uint64_t sub_22E709068(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22E7090C4()
{
  sub_22E709FF4();
  v1 = sub_22E6CF1CC(&qword_27DA6D150, &qword_22E729B60);
  sub_22E6E3A38(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_22E6CF1CC(&qword_27DA6D1B0, &qword_22E729CE0);
  sub_22E6E3A38(v6);
  v8 = (v3 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  v12 = *(v0 + ((*(v9 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  v14 = sub_22E70998C(v13);
  *v14 = v15;
  v14[1] = sub_22E6E3984;
  v16 = sub_22E7098B8();

  return sub_22E6FD67C(v16, v17, v18, v19, v20);
}

uint64_t sub_22E70923C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a6;
  v13 = *(a6 + 8);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_22E6E1F30;

  return sub_22E705848(a1, a2, a3, a4, a5, v12, v13);
}

uint64_t sub_22E709324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22E709A70();
  sub_22E709B3C();
  sub_22E709FF4();
  v12 = sub_22E6CF1CC(&qword_27DA6D288, &qword_22E729DE8);
  sub_22E6E3A38(v12);
  v14 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  sub_22E709DC4(*(v15 + 64));
  v16 = swift_task_alloc();
  v17 = sub_22E70998C(v16);
  *v17 = v18;
  v17[1] = sub_22E6E3984;
  sub_22E7098B8();
  sub_22E709A28();

  return v26(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}