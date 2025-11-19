int main(int argc, const char **argv, const char **envp)
{
  v3 = (*(*(sub_1000017BC(&qword_1000D8168, &unk_1000A5830) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v10 - v4;
  __bd_register_for_dlsym_callbacks();
  _CFPrefsSetDirectModeEnabled();
  _CFPrefsSetReadOnly();
  sub_10009F420();
  qword_1000DADE8 = sub_10009F3F0();
  sub_10009F3C0();
  qword_1000DADF0 = &_swiftEmptyArrayStorage;
  sub_10009F3D0();
  sub_10009F610();
  sub_100001804();
  sub_10009F400();
  sub_10009F900();
  sub_100001858();
  sub_10009F400();
  sub_10009FFF0();
  sub_1000018AC();
  sub_10009F400();
  sub_10009F5A0();
  sub_100001900();
  sub_10009F400();
  sub_10009FC20();
  sub_100001954();
  sub_10009F410();
  v6 = enum case for SandboxID.blastdoor(_:);
  v7 = sub_1000A0540();
  v8 = *(v7 - 8);
  (*(v8 + 104))(v5, v6, v7);
  (*(v8 + 56))(v5, 0, 1, v7);
  sub_10009F3E0();
  sub_1000019A8(v5);
  return 0;
}

uint64_t sub_1000017BC(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100001804()
{
  result = qword_1000D8170;
  if (!qword_1000D8170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8170);
  }

  return result;
}

unint64_t sub_100001858()
{
  result = qword_1000D8178;
  if (!qword_1000D8178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8178);
  }

  return result;
}

unint64_t sub_1000018AC()
{
  result = qword_1000D8180;
  if (!qword_1000D8180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8180);
  }

  return result;
}

unint64_t sub_100001900()
{
  result = qword_1000D8188;
  if (!qword_1000D8188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8188);
  }

  return result;
}

unint64_t sub_100001954()
{
  result = qword_1000D8190;
  if (!qword_1000D8190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8190);
  }

  return result;
}

uint64_t sub_1000019A8(uint64_t a1)
{
  v2 = sub_1000017BC(&qword_1000D8168, &unk_1000A5830);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100001A1C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent.WalletPassSharingGeneralMessageGenericData(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

unint64_t sub_100001AA0()
{
  result = qword_1000D8198;
  if (!qword_1000D8198)
  {
    sub_10009FC20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8198);
  }

  return result;
}

uint64_t sub_100001AF8()
{
  if (qword_1000D8118 != -1)
  {
    swift_once();
  }

  v0 = qword_1000DADF8;
  v1 = sub_10009FCF0();
  if (*(v0 + 16))
  {
    v3 = sub_10000217C(v1, v2);
    v5 = v4;

    if (v5)
    {
      sub_100002248(*(v0 + 56) + 40 * v3, v13);
      sub_1000022AC(v13, v14);
      v6 = v14[4];
      sub_1000022C4(v14, v14[3]);
      v7 = *(v6 + 8);
      sub_10009F870();
      return sub_100002308(v14);
    }
  }

  else
  {
  }

  v9 = sub_10009FCF0();
  v11 = v10;
  sub_1000021F4();
  swift_allocError();
  *v12 = v9;
  *(v12 + 8) = v11;
  *(v12 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_100001C6C()
{
  sub_1000017BC(&qword_1000D81A8, &qword_1000A58E8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000A5840;
  *(v0 + 32) = 0xD00000000000002FLL;
  *(v0 + 40) = 0x80000001000A2AD0;
  *(v0 + 72) = &type metadata for AccountsRepresentativeMessageUnpacker;
  *(v0 + 80) = sub_100002518();
  *(v0 + 88) = 0xD000000000000028;
  *(v0 + 96) = 0x80000001000A2B00;
  *(v0 + 128) = &type metadata for WalletSharingMessageUnpacker;
  *(v0 + 136) = sub_10000256C();
  *(v0 + 144) = 0xD00000000000002ELL;
  *(v0 + 152) = 0x80000001000A2B30;
  *(v0 + 184) = &type metadata for IDSSampleMessageUnpacker;
  *(v0 + 192) = sub_1000025C0();
  *(v0 + 200) = 0xD000000000000026;
  *(v0 + 208) = 0x80000001000A2B60;
  *(v0 + 240) = &type metadata for CompanionAuthMessageUnpacker;
  *(v0 + 248) = sub_100002614();
  *(v0 + 256) = 0xD000000000000026;
  *(v0 + 264) = 0x80000001000A2B90;
  *(v0 + 296) = &type metadata for FTAudioVideoMessageUnpacker;
  v1 = sub_100002668();
  *(v0 + 304) = v1;
  *(v0 + 312) = 0xD000000000000023;
  *(v0 + 320) = 0x80000001000A2BC0;
  *(v0 + 352) = &type metadata for FTLivePhotoMessageUnpacker;
  *(v0 + 360) = sub_1000026BC();
  *(v0 + 368) = 0xD00000000000001BLL;
  *(v0 + 376) = 0x80000001000A2BF0;
  *(v0 + 408) = &type metadata for FMFMessageUnpacker;
  *(v0 + 416) = sub_100002710();
  *(v0 + 424) = 0xD000000000000026;
  *(v0 + 432) = 0x80000001000A2C10;
  *(v0 + 464) = &type metadata for FTMultiMessageUnpacker;
  *(v0 + 472) = sub_100002764();
  *(v0 + 480) = 0xD000000000000026;
  *(v0 + 488) = 0x80000001000A2C40;
  *(v0 + 520) = &type metadata for FTAudioVideoMessageUnpacker;
  *(v0 + 528) = v1;
  *(v0 + 536) = 0xD000000000000037;
  *(v0 + 544) = 0x80000001000A2C70;
  *(v0 + 576) = &type metadata for FindMyCrossAccountMessageUnpacker;
  *(v0 + 584) = sub_1000027B8();
  *(v0 + 592) = 0xD00000000000002DLL;
  *(v0 + 600) = 0x80000001000A2CB0;
  *(v0 + 632) = &type metadata for ActivitySharingLegacyMessageUnpacker;
  v2 = sub_10000280C();
  *(v0 + 640) = v2;
  *(v0 + 648) = 0xD00000000000002FLL;
  *(v0 + 656) = 0x80000001000A2CE0;
  *(v0 + 688) = &type metadata for ActivitySharingLegacyMessageUnpacker;
  *(v0 + 696) = v2;
  *(v0 + 704) = 0xD000000000000030;
  *(v0 + 712) = 0x80000001000A2D10;
  *(v0 + 744) = &type metadata for NearbySessionMessageUnpacker;
  *(v0 + 752) = sub_100002860();
  *(v0 + 760) = 0xD000000000000020;
  *(v0 + 768) = 0x80000001000A2D50;
  *(v0 + 800) = &type metadata for SharedETAMessageUnpacker;
  *(v0 + 808) = sub_1000028B4();
  *(v0 + 816) = 0xD000000000000024;
  *(v0 + 824) = 0x80000001000A2D80;
  *(v0 + 856) = &type metadata for NameAndPhotoUnpacker;
  *(v0 + 864) = sub_100002908();
  *(v0 + 872) = 0xD00000000000001ELL;
  *(v0 + 880) = 0x80000001000A2DB0;
  *(v0 + 912) = &type metadata for RapportUnpacker;
  *(v0 + 920) = sub_10000295C();
  *(v0 + 928) = 0xD000000000000023;
  *(v0 + 936) = 0x80000001000A2DD0;
  *(v0 + 968) = &type metadata for PhotosSharedAlbumMessageUnpacker;
  *(v0 + 976) = sub_1000029B0();
  *(v0 + 984) = 0xD000000000000025;
  *(v0 + 992) = 0x80000001000A2E00;
  *(v0 + 1024) = &type metadata for SafetyMonitorMessageUnpacker;
  *(v0 + 1032) = sub_100002A04();
  *(v0 + 1040) = 0xD000000000000020;
  *(v0 + 1048) = 0x80000001000A2E30;
  *(v0 + 1080) = &type metadata for SSMessageUnpacker;
  v3 = sub_100002A58();
  *(v0 + 1088) = v3;
  *(v0 + 1096) = 0xD000000000000028;
  *(v0 + 1104) = 0x80000001000A2E60;
  *(v0 + 1136) = &type metadata for SSMessageUnpacker;
  *(v0 + 1144) = v3;
  *(v0 + 1152) = 0xD000000000000025;
  *(v0 + 1160) = 0x80000001000A2E90;
  *(v0 + 1192) = &type metadata for SSMessageUnpacker;
  *(v0 + 1200) = v3;
  *(v0 + 1208) = 0xD000000000000029;
  *(v0 + 1216) = 0x80000001000A2EC0;
  *(v0 + 1248) = &type metadata for StatusKitInvitationUnpacker;
  *(v0 + 1256) = sub_100002AAC();
  *(v0 + 1264) = 0xD000000000000024;
  *(v0 + 1272) = 0x80000001000A2EF0;
  *(v0 + 1304) = &type metadata for TincanMessageUnpacker;
  *(v0 + 1312) = sub_100002B00();
  v4 = sub_100002BC0(v0);
  swift_setDeallocating();
  sub_1000017BC(&qword_1000D8248, &qword_1000A58F0);
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1000DADF8 = v4;
  return result;
}

unint64_t sub_100002138(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000A0800(*(v2 + 40));

  return sub_100002398(a1, v4);
}

unint64_t sub_10000217C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1000A0C60();
  sub_1000A05B0();
  v6 = sub_1000A0C90();

  return sub_100002460(a1, a2, v6);
}

unint64_t sub_1000021F4()
{
  result = qword_1000D81A0;
  if (!qword_1000D81A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D81A0);
  }

  return result;
}

uint64_t sub_100002248(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000022AC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_1000022C4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100002308(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_100002354(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1000A0C50();

  return sub_100002B54(a1, v4);
}

unint64_t sub_100002398(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100002E18(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_1000A0810();
      sub_100002E74(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100002460(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1000A0BD0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100002518()
{
  result = qword_1000D81B0;
  if (!qword_1000D81B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D81B0);
  }

  return result;
}

unint64_t sub_10000256C()
{
  result = qword_1000D81B8;
  if (!qword_1000D81B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D81B8);
  }

  return result;
}

unint64_t sub_1000025C0()
{
  result = qword_1000D81C0;
  if (!qword_1000D81C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D81C0);
  }

  return result;
}

unint64_t sub_100002614()
{
  result = qword_1000D81C8;
  if (!qword_1000D81C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D81C8);
  }

  return result;
}

unint64_t sub_100002668()
{
  result = qword_1000D81D0;
  if (!qword_1000D81D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D81D0);
  }

  return result;
}

unint64_t sub_1000026BC()
{
  result = qword_1000D81D8;
  if (!qword_1000D81D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D81D8);
  }

  return result;
}

unint64_t sub_100002710()
{
  result = qword_1000D81E0;
  if (!qword_1000D81E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D81E0);
  }

  return result;
}

unint64_t sub_100002764()
{
  result = qword_1000D81E8;
  if (!qword_1000D81E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D81E8);
  }

  return result;
}

unint64_t sub_1000027B8()
{
  result = qword_1000D81F0;
  if (!qword_1000D81F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D81F0);
  }

  return result;
}

unint64_t sub_10000280C()
{
  result = qword_1000D81F8;
  if (!qword_1000D81F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D81F8);
  }

  return result;
}

unint64_t sub_100002860()
{
  result = qword_1000D8200;
  if (!qword_1000D8200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8200);
  }

  return result;
}

unint64_t sub_1000028B4()
{
  result = qword_1000D8208;
  if (!qword_1000D8208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8208);
  }

  return result;
}

unint64_t sub_100002908()
{
  result = qword_1000D8210;
  if (!qword_1000D8210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8210);
  }

  return result;
}

unint64_t sub_10000295C()
{
  result = qword_1000D8218;
  if (!qword_1000D8218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8218);
  }

  return result;
}

unint64_t sub_1000029B0()
{
  result = qword_1000D8220;
  if (!qword_1000D8220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8220);
  }

  return result;
}

unint64_t sub_100002A04()
{
  result = qword_1000D8228;
  if (!qword_1000D8228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8228);
  }

  return result;
}

unint64_t sub_100002A58()
{
  result = qword_1000D8230;
  if (!qword_1000D8230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8230);
  }

  return result;
}

unint64_t sub_100002AAC()
{
  result = qword_1000D8238;
  if (!qword_1000D8238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8238);
  }

  return result;
}

unint64_t sub_100002B00()
{
  result = qword_1000D8240;
  if (!qword_1000D8240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8240);
  }

  return result;
}

unint64_t sub_100002B54(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100002BC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000017BC(&qword_1000D8250, &qword_1000A58F8);
    v3 = sub_1000A08D0();
    v4 = a1 + 32;

    while (1)
    {
      sub_100002CDC(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_10000217C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000022AC(&v15, v3[7] + 40 * result);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100002CDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000D8248, &qword_1000A58F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_100002D58(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100002D6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100002DB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

Swift::Int sub_100002ED4()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100002F68()
{
  *v0;
  *v0;
  *v0;
  sub_1000A05B0();
}

Swift::Int sub_100002FE8()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100003078@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100003DFC(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1000030A8(uint64_t *a1@<X8>)
{
  v2 = 0xE100000000000000;
  v3 = 118;
  v4 = 0xE100000000000000;
  v5 = 112;
  if (*v1 != 2)
  {
    v5 = 26994;
    v4 = 0xE200000000000000;
  }

  if (*v1)
  {
    v3 = 115;
    v2 = 0xE100000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1000030F8()
{
  v1 = 118;
  v2 = 112;
  if (*v0 != 2)
  {
    v2 = 26994;
  }

  if (*v0)
  {
    v1 = 115;
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

uint64_t sub_100003144@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100003DFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100003184(uint64_t a1)
{
  v2 = sub_100003424();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000031C0(uint64_t a1)
{
  v2 = sub_100003424();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSSessionReinitiateSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000D8258, &qword_1000A59E0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_100003424();
  sub_1000A0CE0();
  v11 = *v3;
  v18[15] = 0;
  sub_1000A0B70();
  if (!v2)
  {
    v12 = v3[1];
    v13 = v3[2];
    v18[14] = 1;
    sub_1000A0B30();
    v14 = v3[3];
    v15 = v3[4];
    v18[13] = 2;
    sub_1000A0B30();
    v16 = *(type metadata accessor for IDSSessionReinitiateSchema() + 28);
    v18[12] = 3;
    sub_10009FAA0();
    sub_10000384C(&qword_1000D8268);
    sub_1000A0B80();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_100003424()
{
  result = qword_1000D8260;
  if (!qword_1000D8260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8260);
  }

  return result;
}

uint64_t type metadata accessor for IDSSessionReinitiateSchema()
{
  result = qword_1000D82D8;
  if (!qword_1000D82D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t IDSSessionReinitiateSchema.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v29 = sub_10009FAA0();
  v26 = *(v29 - 8);
  v4 = *(v26 + 64);
  __chkstk_darwin();
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1000017BC(&qword_1000D8270, &qword_1000A59E8);
  v28 = *(v30 - 8);
  v7 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v23 - v8;
  v10 = type metadata accessor for IDSSessionReinitiateSchema();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin();
  v13 = (&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_100003424();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  v15 = a1;
  v25 = v10;
  v17 = v28;
  v16 = v29;
  v18 = v6;
  v34 = 0;
  v19 = v30;
  *v13 = sub_1000A0A10();
  v33 = 1;
  v13[1] = sub_1000A09D0();
  v13[2] = v20;
  v24 = v20;
  v32 = 2;
  v13[3] = sub_1000A09D0();
  v13[4] = v21;
  v31 = 3;
  sub_10000384C(&qword_1000D8278);
  v24 = v18;
  sub_1000A0A20();
  (*(v17 + 8))(v9, v19);
  (*(v26 + 32))(v13 + *(v25 + 28), v24, v16);
  sub_100003890(v13, v27);
  sub_100002308(v15);
  return sub_1000038F4(v13);
}

uint64_t sub_10000384C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10009FAA0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100003890(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSSessionReinitiateSchema();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000038F4(uint64_t a1)
{
  v2 = type metadata accessor for IDSSessionReinitiateSchema();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100003994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10009FAA0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100003A54(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_10009FAA0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100003AF8()
{
  result = sub_10009FAA0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IDSSessionReinitiateSchema.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for IDSSessionReinitiateSchema.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100003CF8()
{
  result = qword_1000D8318;
  if (!qword_1000D8318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8318);
  }

  return result;
}

unint64_t sub_100003D50()
{
  result = qword_1000D8320;
  if (!qword_1000D8320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8320);
  }

  return result;
}

unint64_t sub_100003DA8()
{
  result = qword_1000D8328;
  if (!qword_1000D8328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8328);
  }

  return result;
}

uint64_t sub_100003DFC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000C9FE8;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

Swift::Int sub_100003EA8()
{
  sub_1000A0C60();
  sub_1000A0C70(0);
  return sub_1000A0C90();
}

Swift::Int sub_100003F14()
{
  sub_1000A0C60();
  sub_1000A0C70(0);
  return sub_1000A0C90();
}

uint64_t sub_100003F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v195 = a2;
  v194 = a1;
  v178 = a3;
  v3 = sub_10009F9D0();
  v176 = *(v3 - 8);
  v177 = v3;
  v4 = *(v176 + 64);
  (__chkstk_darwin)();
  v175 = &v158 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*(*(sub_1000017BC(&qword_1000D8338, &qword_1000A5C30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v187 = &v158 - v7;
  v174 = sub_1000A01E0();
  v173 = *(v174 - 8);
  v8 = *(v173 + 64);
  (__chkstk_darwin)();
  v188 = &v158 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(sub_1000017BC(&qword_1000D8340, &qword_1000A5C38) - 8) + 64);
  v11 = (__chkstk_darwin)();
  v186 = &v158 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v179 = &v158 - v14;
  __chkstk_darwin(v13);
  v193 = &v158 - v15;
  v16 = sub_1000017BC(&qword_1000D8348, &qword_1000A5C40);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v185 = &v158 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v184 = &v158 - v21;
  __chkstk_darwin(v20);
  v192 = &v158 - v22;
  v23 = sub_1000017BC(&qword_1000D8350, &qword_1000A5C48);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v169 = &v158 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v167 = &v158 - v27;
  v172 = sub_10009F990();
  v171 = *(v172 - 8);
  v28 = *(v171 + 64);
  __chkstk_darwin(v172);
  v170 = &v158 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1000017BC(&qword_1000D8358, &unk_1000A5C50);
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v168 = &v158 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v166 = &v158 - v35;
  __chkstk_darwin(v34);
  v180 = &v158 - v36;
  v37 = sub_10009F2A0();
  v181 = *(v37 - 8);
  v182 = v37;
  v38 = *(v181 + 64);
  __chkstk_darwin(v37);
  v183 = &v158 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1000017BC(&qword_1000D8360, &qword_1000B1270);
  v41 = (*(*(v40 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v40 - 8);
  v190 = &v158 - v42;
  v191 = type metadata accessor for AccountsRepresentativeCloudShareInfoSchema(0);
  v189 = *(v191 - 8);
  v43 = *(v189 + 8);
  __chkstk_darwin(v191);
  v45 = &v158 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1000017BC(&qword_1000D8368, &unk_1000A5C60);
  v47 = *(*(v46 - 8) + 64);
  v48 = __chkstk_darwin(v46 - 8);
  v50 = &v158 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __chkstk_darwin(v48);
  v53 = &v158 - v52;
  v54 = __chkstk_darwin(v51);
  v56 = &v158 - v55;
  __chkstk_darwin(v54);
  v58 = &v158 - v57;
  v59 = type metadata accessor for AccountsRepresentativeMessageSchema(0);
  v60 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v62 = &v158 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_10009F270();
  v64 = *(v63 + 48);
  v65 = *(v63 + 52);
  swift_allocObject();
  sub_10009F260();
  sub_1000017BC(&qword_1000D8370, &unk_1000AA060);
  sub_100005350();
  v66 = v196;
  sub_10009F250();
  if (v66)
  {
  }

  v163 = v53;
  v162 = v56;
  v164 = v45;
  v195 = v58;
  v196 = v59;
  v194 = v50;
  v165 = v62;

  v68 = v197;
  v69 = sub_10009FD00();
  if (!*(v68 + 16))
  {

    goto LABEL_7;
  }

  v71 = sub_10000217C(v69, v70);
  v73 = v72;

  if ((v73 & 1) == 0)
  {
LABEL_7:

    sub_100005478();
    swift_allocError();
    return swift_willThrow();
  }

  v74 = (*(v68 + 56) + 16 * v71);
  v76 = *v74;
  v75 = v74[1];
  sub_1000054CC(*v74, v75);

  v77 = sub_10009F1F0();
  v78 = *(v77 + 48);
  v79 = *(v77 + 52);
  swift_allocObject();
  sub_10009F1E0();
  sub_100005520(&qword_1000D8390, type metadata accessor for AccountsRepresentativeMessageSchema);
  v80 = v165;
  v81 = v196;
  sub_10009F1D0();
  v159 = v76;
  v160 = v75;
  v161 = 0;

  v82 = sub_1000A0390();
  v83 = *(v82 - 8);
  v84 = *(v83 + 56);
  v85 = v83 + 56;
  v86 = v195;
  v84(v195, 1, 1, v82);
  v87 = v190;
  sub_100005620(v80 + v81[8], v190, &qword_1000D8360, &qword_1000B1270);
  v88 = v191;
  if ((*(v189 + 6))(v87, 1, v191) != 1)
  {
    v158 = v85;
    v189 = v84;
    v92 = v164;
    sub_1000055BC(v87, v164);
    v93 = v180;
    sub_100005620(v92, v180, &qword_1000D8358, &unk_1000A5C50);
    v94 = v181;
    v95 = v182;
    if ((*(v181 + 48))(v93, 1, v182) == 1)
    {
      sub_100005688(v92, type metadata accessor for AccountsRepresentativeCloudShareInfoSchema);
      v89 = &qword_1000D8358;
      v90 = &unk_1000A5C50;
      v91 = v93;
      goto LABEL_12;
    }

    (*(v94 + 32))(v183, v93, v95);
    v125 = *(v88 + 24);
    v126 = (v92 + *(v88 + 20));
    v128 = *v126;
    v127 = v126[1];
    v129 = (v92 + v125);
    v130 = *(v92 + v125 + 8);
    if (v130 >> 60 == 15)
    {
      v131 = *(v94 + 16);
      v191 = v128;
      v132 = v168;
      v131(v168, v183, v95);
      (*(v94 + 56))(v132, 0, 1, v95);
      (*(v171 + 56))(v169, 1, 1, v172);

      v133 = v161;
      sub_1000A0380();
      v161 = v133;
      if (v133)
      {
        sub_100005568(v159, v160);
        (*(v94 + 8))(v183, v95);
        sub_100005688(v164, type metadata accessor for AccountsRepresentativeCloudShareInfoSchema);
        sub_1000057C4(v86, &qword_1000D8368, &unk_1000A5C60);
        return sub_100005688(v80, type metadata accessor for AccountsRepresentativeMessageSchema);
      }

      (*(v94 + 8))(v183, v95);
      sub_100005688(v164, type metadata accessor for AccountsRepresentativeCloudShareInfoSchema);
      sub_1000057C4(v86, &qword_1000D8368, &unk_1000A5C60);
      v138 = v163;
      v189(v163, 0, 1, v82);
      sub_1000056E8(v138, v86, &qword_1000D8368, &unk_1000A5C60);
      goto LABEL_13;
    }

    v134 = *v129;

    sub_100005750(v134, v130);
    v135 = v170;
    v136 = v183;
    v137 = v161;
    sub_1000A01A0();
    if (v137)
    {

      v161 = 0;
    }

    else
    {
      v190 = v134;
      v191 = v130;
      v139 = v181;
      v140 = *(v181 + 16);
      v141 = v166;
      v180 = 0;
      v142 = v182;
      v140(v166, v136, v182);
      (*(v139 + 56))(v141, 0, 1, v142);
      v143 = v135;
      v144 = v171;
      v145 = v167;
      v146 = v172;
      (*(v171 + 16))(v167, v143, v172);
      (*(v144 + 56))(v145, 0, 1, v146);
      v147 = v180;
      sub_1000A0380();
      v148 = (v144 + 8);
      if (!v147)
      {
        v161 = 0;
        sub_1000057B0(v190, v191);
        (*v148)(v170, v146);
        (*(v181 + 8))(v183, v182);
        sub_100005688(v164, type metadata accessor for AccountsRepresentativeCloudShareInfoSchema);
        v156 = v195;
        sub_1000057C4(v195, &qword_1000D8368, &unk_1000A5C60);
        v157 = v162;
        v189(v162, 0, 1, v82);
        sub_1000056E8(v157, v156, &qword_1000D8368, &unk_1000A5C60);
        v96 = v192;
LABEL_34:
        v98 = v185;
        v97 = v186;
        v80 = v165;
        goto LABEL_14;
      }

      (*v148)(v170, v146);
      v161 = 0;
      v136 = v183;
      v134 = v190;
      v130 = v191;
    }

    v149 = sub_1000A0770();
    sub_100005764();
    v150 = sub_1000A0790();
    v151 = os_log_type_enabled(v150, v149);
    v96 = v192;
    if (v151)
    {
      v152 = v130;
      v153 = swift_slowAlloc();
      v154 = swift_slowAlloc();
      *v153 = 138412290;
      swift_errorRetain();
      v155 = _swift_stdlib_bridgeErrorToNSError();
      *(v153 + 4) = v155;
      *v154 = v155;
      _os_log_impl(&_mh_execute_header, v150, v149, "Failed to decode shareInfo %@", v153, 0xCu);
      sub_1000057C4(v154, &qword_1000D83A0, &unk_1000A5C70);

      sub_1000057B0(v134, v152);

      (*(v181 + 8))(v183, v182);
    }

    else
    {
      sub_1000057B0(v134, v130);

      (*(v181 + 8))(v136, v182);
    }

    sub_100005688(v164, type metadata accessor for AccountsRepresentativeCloudShareInfoSchema);
    goto LABEL_34;
  }

  v89 = &qword_1000D8360;
  v90 = &qword_1000B1270;
  v91 = v87;
LABEL_12:
  sub_1000057C4(v91, v89, v90);
LABEL_13:
  v96 = v192;
  v98 = v185;
  v97 = v186;
LABEL_14:
  v99 = v184;
  v100 = sub_1000A01D0();
  (*(*(v100 - 8) + 56))(v96, 1, 1, v100);
  v101 = v80 + v81[12];
  v102 = v193;
  v103 = v187;
  if ((*(v101 + 8) & 1) == 0)
  {
    v104 = *v101;
    sub_1000A01C0();
    sub_1000057C4(v96, &qword_1000D8348, &qword_1000A5C40);
    v81 = v196;
    sub_1000056E8(v99, v96, &qword_1000D8348, &qword_1000A5C40);
  }

  v105 = sub_1000A0190();
  (*(*(v105 - 8) + 56))(v102, 1, 1, v105);
  v106 = v80 + v81[13];
  if ((*(v106 + 8) & 1) == 0)
  {
    v107 = *v106;
    v108 = v179;
    sub_1000A0180();
    sub_1000057C4(v102, &qword_1000D8340, &qword_1000A5C38);
    sub_1000056E8(v108, v102, &qword_1000D8340, &qword_1000A5C38);
  }

  v109 = *v80;
  v110 = *(v80 + 8);
  sub_1000A0160();
  v111 = sub_1000A0170();
  (*(*(v111 - 8) + 56))(v103, 0, 1, v111);
  sub_100005620(v96, v98, &qword_1000D8348, &qword_1000A5C40);
  sub_100005620(v102, v97, &qword_1000D8340, &qword_1000A5C38);
  v112 = *(v80 + 16);
  v113 = *(v80 + 24);
  v190 = *(v80 + 32);
  v191 = v112;
  v114 = *(v80 + 40);
  LODWORD(v189) = *(v80 + 48);
  sub_100005620(v195, v194, &qword_1000D8368, &unk_1000A5C60);
  v115 = *(v80 + v196[9]);
  v116 = *(v80 + v196[10]);
  v117 = (v80 + v196[11]);
  v119 = *v117;
  v118 = v117[1];

  v120 = v188;
  v121 = v161;
  sub_1000A01B0();
  if (v121)
  {
    sub_100005568(v159, v160);
  }

  else
  {
    v122 = v173;
    v123 = v175;
    v124 = v174;
    (*(v173 + 16))(v175, v120, v174);
    (*(v176 + 104))(v123, enum case for IDSClientMessageType.accountsRepresentativeMessage(_:), v177);
    sub_10009FC10();
    sub_100005568(v159, v160);
    (*(v122 + 8))(v120, v124);
  }

  sub_1000057C4(v193, &qword_1000D8340, &qword_1000A5C38);
  sub_1000057C4(v192, &qword_1000D8348, &qword_1000A5C40);
  sub_1000057C4(v195, &qword_1000D8368, &unk_1000A5C60);
  return sub_100005688(v165, type metadata accessor for AccountsRepresentativeMessageSchema);
}

unint64_t sub_1000052D4(uint64_t a1)
{
  result = sub_1000052FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000052FC()
{
  result = qword_1000D8330;
  if (!qword_1000D8330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8330);
  }

  return result;
}

unint64_t sub_100005350()
{
  result = qword_1000D8378;
  if (!qword_1000D8378)
  {
    sub_1000053DC(&qword_1000D8370, &unk_1000AA060);
    sub_100005424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8378);
  }

  return result;
}

uint64_t sub_1000053DC(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100005424()
{
  result = qword_1000D8380;
  if (!qword_1000D8380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8380);
  }

  return result;
}

unint64_t sub_100005478()
{
  result = qword_1000D8388;
  if (!qword_1000D8388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8388);
  }

  return result;
}

uint64_t sub_1000054CC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100005520(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100005568(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000055BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountsRepresentativeCloudShareInfoSchema(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100005620(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000017BC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100005688(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000056E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000017BC(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100005750(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000054CC(a1, a2);
  }

  return a1;
}

unint64_t sub_100005764()
{
  result = qword_1000D8398;
  if (!qword_1000D8398)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000D8398);
  }

  return result;
}

uint64_t sub_1000057B0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100005568(a1, a2);
  }

  return a1;
}

uint64_t sub_1000057C4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000017BC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccountsRepresentativeMessageUnpackerError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AccountsRepresentativeMessageUnpackerError(_WORD *result, int a2, int a3)
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

unint64_t sub_100005910()
{
  result = qword_1000D83A8;
  if (!qword_1000D83A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D83A8);
  }

  return result;
}

uint64_t sub_100005964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10009FF70();
  v79 = *(v4 - 8);
  v80 = v4;
  v5 = *(v79 + 64);
  __chkstk_darwin(v4);
  v84 = v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000017BC(&qword_1000D83B0, &qword_1000A5D58);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v83 = v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v85 = v70 - v12;
  __chkstk_darwin(v11);
  v87 = v70 - v13;
  v14 = sub_1000017BC(&qword_1000D83B8, &unk_1000B0670);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v17 = __chkstk_darwin(v16);
  v86 = v70 - v18;
  __chkstk_darwin(v17);
  v89 = v70 - v20;
  v22 = *a1;
  v21 = *(a1 + 8);
  v23 = *(a1 + 16);
  v24 = *(a1 + 24);
  v25 = *(a1 + 32);
  v26 = *(a1 + 40);
  v27 = *(a1 + 56);
  if (v27 >> 60 == 15 && !*(a1 + 72) && *(a1 + 177) == 2)
  {
    sub_1000A0530();
    sub_1000061EC();
    swift_allocError();
    sub_1000A0520();
    return swift_willThrow();
  }

  v81 = *(a1 + 48);
  v82 = v25;
  v78 = v19;
  v74 = a2;
  v29 = sub_10009F860();
  v30 = *(v29 - 8);
  v31 = *(v30 + 56);
  v32 = v89;
  v75 = v29;
  v76 = v30 + 56;
  v77 = v31;
  (v31)(v89, 1, 1);
  if (v27 >> 60 != 15)
  {
    v73 = v21;
    sub_100005750(v22, v21);
    sub_100005750(v23, v24);
    sub_100005750(v82, v26);
    sub_1000054CC(v81, v27);
    v33 = v88;
    sub_10009F850();
    result = sub_1000057C4(v32, &qword_1000D83B8, &unk_1000B0670);
    if (v33)
    {
      return result;
    }

    v88 = 0;
    v34 = v86;
    v77(v86, 0, 1, v75);
    sub_1000062B4(v34, v32);
  }

  v35 = sub_10009F5D0();
  v36 = *(v35 - 8);
  v37 = v36;
  v38 = *(v36 + 56);
  v39 = v36 + 56;
  v40 = v87;
  v38(v87, 1, 1, v35);
  if (!*(a1 + 72))
  {
    goto LABEL_21;
  }

  v70[1] = v39;
  v71 = v38;
  v72 = v37;
  LODWORD(v81) = *(a1 + 176);
  v41 = *(a1 + 160);
  v42 = *(a1 + 168);
  v43 = *(a1 + 152);
  v76 = *(a1 + 144);
  v77 = v41;
  v44 = *(a1 + 136);
  v45 = *(a1 + 120);
  v75 = *(a1 + 128);
  v46 = *(a1 + 104);
  v86 = *(a1 + 112);
  v47 = *(a1 + 88);
  v82 = *(a1 + 96);
  v73 = *(a1 + 80);
  v48 = *(a1 + 64);

  v49 = v85;
  v50 = v88;
  sub_10009F5C0();
  if (v50)
  {
    sub_1000057C4(v89, &qword_1000D83B8, &unk_1000B0670);
LABEL_23:
    v52 = v87;
    return sub_1000057C4(v52, &qword_1000D83B0, &qword_1000A5D58);
  }

  v88 = 0;
  v71(v49, 0, 1, v35);
  v40 = v87;
  sub_100006244(v49, v87);
  v51 = *(v72 + 48);
  if (!v51(v40, 1, v35))
  {
    if (sub_10009F5B0() == 0xD000000000000010 && 0x80000001000A2F50 == v53)
    {
      goto LABEL_20;
    }

    v54 = sub_1000A0BD0();

    if (v54)
    {
      goto LABEL_21;
    }
  }

  if (!v51(v40, 1, v35))
  {
    if (sub_10009F5B0() == 0x65746164696C6156 && v55 == 0xEF6E656B6F545353)
    {
LABEL_20:

      goto LABEL_21;
    }

    v69 = sub_1000A0BD0();

    if ((v69 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_21:
    v56 = v89;
    sub_100005620(v89, v78, &qword_1000D83B8, &unk_1000B0670);
    sub_100005620(v40, v83, &qword_1000D83B0, &qword_1000A5D58);
    v57 = *(a1 + 184);
    v58 = *(a1 + 192);
    v59 = *(a1 + 200);
    v60 = *(a1 + 208);
    v61 = *(a1 + 216);
    v62 = *(a1 + 224);
    v63 = *(a1 + 177);

    v64 = v84;
    v65 = v88;
    sub_10009FF60();
    sub_1000057C4(v56, &qword_1000D83B8, &unk_1000B0670);
    if (!v65)
    {
      v66 = v74;
      (*(v79 + 32))(v74, v64, v80);
      v67 = enum case for IDSDictionaryContext.idsScreenSharingInvitation(_:);
      v68 = sub_10009F9E0();
      (*(*(v68 - 8) + 104))(v66, v67, v68);
    }

    goto LABEL_23;
  }

LABEL_13:
  sub_1000A0530();
  sub_1000061EC();
  swift_allocError();
  sub_1000A0520();
  swift_willThrow();
  sub_1000057C4(v89, &qword_1000D83B8, &unk_1000B0670);
  v52 = v40;
  return sub_1000057C4(v52, &qword_1000D83B0, &qword_1000A5D58);
}

unint64_t sub_1000061EC()
{
  result = qword_1000D83C0;
  if (!qword_1000D83C0)
  {
    sub_1000A0530();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D83C0);
  }

  return result;
}

uint64_t sub_100006244(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000D83B0, &qword_1000A5D58);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000062B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000D83B8, &unk_1000B0670);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Swift::Int sub_100006330()
{
  v1 = *v0;
  sub_1000A0C60();
  v2 = qword_1000A5FF8[v1];
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10000638C()
{
  v1 = qword_1000A5FF8[*v0];
  sub_1000A05B0();
}

Swift::Int sub_1000063CC()
{
  v1 = *v0;
  sub_1000A0C60();
  v2 = qword_1000A5FF8[v1];
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100006424@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000068C0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_100006488@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000068C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000064B0(uint64_t a1)
{
  v2 = sub_100006740();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000064EC(uint64_t a1)
{
  v2 = sub_100006740();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSSessionDeclineSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000D83C8, &qword_1000A5D60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8 - 8];
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_100006740();
  sub_1000A0CE0();
  v11 = *v3;
  LOBYTE(v19) = 0;
  sub_1000A0B70();
  if (!v2)
  {
    v12 = v3[1];
    v13 = v3[2];
    LOBYTE(v19) = 1;
    sub_1000A0B30();
    v14 = v3[3];
    v15 = v3[4];
    LOBYTE(v19) = 2;
    sub_1000A0B30();
    v19 = *(v3 + 5);
    v20 = v19;
    v18[23] = 3;
    sub_100006794(&v20, v18);
    sub_100006804();
    sub_1000A0AD0();
    sub_1000057B0(v19, *(&v19 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_100006740()
{
  result = qword_1000D83D0;
  if (!qword_1000D83D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D83D0);
  }

  return result;
}

uint64_t sub_100006794(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000D83D8, &qword_1000A5D68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100006804()
{
  result = qword_1000D83E0;
  if (!qword_1000D83E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D83E0);
  }

  return result;
}

double IDSSessionDeclineSchema.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000690C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_1000068C0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CA068;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10000690C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000017BC(&qword_1000D8400, &unk_1000A5FE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_100006740();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  LOBYTE(v26) = 0;
  v11 = sub_1000A0A10();
  LOBYTE(v26) = 1;
  v12 = sub_1000A09D0();
  v14 = v13;
  v25 = v12;
  LOBYTE(v26) = 2;
  v23 = sub_1000A09D0();
  v24 = v15;
  v28 = 3;
  sub_100005424();
  sub_1000A0970();
  (*(v6 + 8))(v9, v5);
  v16 = v26;
  v17 = v27;

  v18 = v24;

  sub_100005750(v16, v17);
  sub_100002308(a1);

  result = sub_1000057B0(v16, v17);
  v20 = v25;
  *a2 = v11;
  a2[1] = v20;
  v21 = v23;
  a2[2] = v14;
  a2[3] = v21;
  a2[4] = v18;
  a2[5] = v16;
  a2[6] = v17;
  return result;
}

uint64_t sub_100006BCC(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100006BE8(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 sub_100006C10(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100006C2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100006C74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100006CE4()
{
  result = qword_1000D83E8;
  if (!qword_1000D83E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D83E8);
  }

  return result;
}

unint64_t sub_100006D3C()
{
  result = qword_1000D83F0;
  if (!qword_1000D83F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D83F0);
  }

  return result;
}

unint64_t sub_100006D94()
{
  result = qword_1000D83F8;
  if (!qword_1000D83F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D83F8);
  }

  return result;
}

uint64_t StatusKitInvitationSchema.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_10009F960();
  v101 = *(v4 - 8);
  v5 = *(v101 + 64);
  v6 = __chkstk_darwin(v4);
  v85 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v86 = &v84 - v9;
  v10 = __chkstk_darwin(v8);
  v87 = &v84 - v11;
  v12 = __chkstk_darwin(v10);
  v88 = &v84 - v13;
  v14 = __chkstk_darwin(v12);
  v89 = &v84 - v15;
  v16 = __chkstk_darwin(v14);
  v90 = &v84 - v17;
  v18 = __chkstk_darwin(v16);
  v91 = &v84 - v19;
  v20 = __chkstk_darwin(v18);
  v92 = &v84 - v21;
  v22 = __chkstk_darwin(v20);
  v93 = &v84 - v23;
  v24 = __chkstk_darwin(v22);
  v94 = &v84 - v25;
  v26 = __chkstk_darwin(v24);
  v95 = &v84 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = &v84 - v29;
  __chkstk_darwin(v28);
  v32 = &v84 - v31;
  v33 = sub_1000017BC(&qword_1000D8408, &qword_1000A6020);
  v99 = *(v33 - 8);
  v34 = *(v99 + 64);
  __chkstk_darwin(v33);
  v36 = &v84 - v35;
  v37 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10000778C();
  sub_1000A0CE0();
  v38 = *v2;
  v39 = v2[1];
  v97 = v2;
  v40 = v101;
  v41 = *(v101 + 104);
  v100 = v4;
  v96 = v41;
  (v41)(v32, enum case for StatusKitInvitation.StatusKitInvitationKey.channelIdentifier(_:), v4);
  v42 = v98;
  sub_1000A0B30();
  if (v42)
  {
    (*(v40 + 8))(v32, v100);
    return (*(v99 + 8))(v36, v33);
  }

  else
  {
    v43 = v95;
    v44 = v32;
    v45 = *(v40 + 8);
    v46 = v100;
    v101 = v40 + 8;
    v45(v44, v100);
    v47 = v97[2];
    (v96)(v30, enum case for StatusKitInvitation.StatusKitInvitationKey.dateInvitationCreated(_:), v46);
    sub_1000A0B50();
    v48 = v33;
    v49 = v100;
    v98 = v45;
    v45(v30, v100);
    v50 = v97[3];
    v51 = v97[4];
    (v96)(v43, enum case for StatusKitInvitation.StatusKitInvitationKey.statusTypeIdentifier(_:), v49);
    sub_1000A0A80();
    v98(v43, v100);
    v52 = v97[5];
    v53 = v97[6];
    v54 = v94;
    v96();
    sub_1000A0A80();
    v98(v54, v100);
    v55 = v97[7];
    v56 = v97[8];
    v57 = v93;
    v96();
    sub_1000A0A80();
    v98(v57, v100);
    v58 = v97[9];
    v59 = v97[10];
    v60 = v92;
    v96();
    sub_1000A0A80();
    v98(v60, v100);
    v61 = v97[11];
    v62 = v97[12];
    v63 = v91;
    v96();
    sub_1000A0A80();
    v98(v63, v100);
    v64 = v97[13];
    v65 = v97[14];
    v66 = v90;
    v96();
    sub_1000A0A80();
    v98(v66, v100);
    v67 = v97[15];
    v68 = v97[16];
    v69 = v89;
    v96();
    sub_1000A0A80();
    v98(v69, v100);
    v70 = v97[17];
    v71 = v97[18];
    v72 = v88;
    v96();
    sub_1000A0A80();
    v74 = v72;
    v75 = v100;
    v98(v74, v100);
    v76 = v97[19];
    v77 = *(v97 + 160);
    (v96)(v87, enum case for StatusKitInvitation.StatusKitInvitationKey.channelCreationDate(_:), v75);
    v78 = v36;
    sub_1000A0AA0();
    v79 = v100;
    v98(v87, v100);
    v80 = *(v97 + 161);
    (v96)(v86, enum case for StatusKitInvitation.StatusKitInvitationKey.isPersonalPresence(_:), v79);
    sub_1000A0A90();
    v81 = v100;
    v98(v86, v100);
    v82 = v97[21];
    v83 = v97[22];
    (v96)(v85, enum case for StatusKitInvitation.StatusKitInvitationKey.serviceIdentifier(_:), v81);
    sub_1000A0A80();
    v98(v85, v100);
    return (*(v99 + 8))(v78, v48);
  }
}

unint64_t sub_10000778C()
{
  result = qword_1000D8410;
  if (!qword_1000D8410)
  {
    sub_10009F960();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8410);
  }

  return result;
}

double StatusKitInvitationSchema.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000787C(a1, v10);
  if (!v2)
  {
    v5 = v18;
    *(a2 + 128) = v17;
    *(a2 + 144) = v5;
    *(a2 + 160) = v19;
    *(a2 + 176) = v20;
    v6 = v14;
    *(a2 + 64) = v13;
    *(a2 + 80) = v6;
    v7 = v16;
    *(a2 + 96) = v15;
    *(a2 + 112) = v7;
    v8 = v10[1];
    *a2 = v10[0];
    *(a2 + 16) = v8;
    result = *&v11;
    v9 = v12;
    *(a2 + 32) = v11;
    *(a2 + 48) = v9;
  }

  return result;
}

uint64_t sub_10000787C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v124 = a2;
  v3 = sub_10009F960();
  v135 = *(v3 - 8);
  v4 = *(v135 + 64);
  v5 = __chkstk_darwin(v3);
  v125 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v126 = &v112 - v8;
  v9 = __chkstk_darwin(v7);
  v127 = &v112 - v10;
  v11 = __chkstk_darwin(v9);
  v129 = &v112 - v12;
  v13 = __chkstk_darwin(v11);
  v128 = &v112 - v14;
  v15 = __chkstk_darwin(v13);
  v130 = &v112 - v16;
  v17 = __chkstk_darwin(v15);
  v131 = &v112 - v18;
  v19 = __chkstk_darwin(v17);
  v132 = &v112 - v20;
  v21 = __chkstk_darwin(v19);
  v133 = &v112 - v22;
  v23 = __chkstk_darwin(v21);
  v134 = &v112 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v112 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v112 - v29;
  __chkstk_darwin(v28);
  v137 = &v112 - v31;
  v32 = sub_1000017BC(&qword_1000D8418, &unk_1000A6100);
  v136 = *(v32 - 8);
  v33 = *(v136 + 64);
  __chkstk_darwin(v32);
  v35 = &v112 - v34;
  v36 = a1[3];
  v37 = a1[4];
  v140 = a1;
  sub_1000022C4(a1, v36);
  sub_10000778C();
  v138 = v3;
  v38 = v139;
  sub_1000A0CD0();
  if (v38)
  {
    return sub_100002308(v140);
  }

  v39 = v30;
  v123 = v27;
  v40 = v135;
  v42 = (v135 + 104);
  v41 = *(v135 + 104);
  v41(v137, enum case for StatusKitInvitation.StatusKitInvitationKey.channelIdentifier(_:), v138);
  v120 = sub_1000A09D0();
  v122 = v44;
  v139 = 0;
  v45 = v41;
  v48 = *(v40 + 8);
  v46 = v40 + 8;
  v47 = v48;
  v49 = v42;
  v50 = v138;
  (v48)(v137, v138);
  v121 = v45;
  v137 = v49;
  v45(v39, enum case for StatusKitInvitation.StatusKitInvitationKey.dateInvitationCreated(_:), v50);
  v51 = v139;
  sub_1000A09F0();
  if (v51)
  {
    v139 = v51;
    (v47)(v39, v50);
    (*(v136 + 8))(v35, v32);
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    goto LABEL_8;
  }

  v53 = v52;
  v54 = v46;
  v55 = v35;
  (v47)(v39, v50);
  v56 = v123;
  v121(v123, enum case for StatusKitInvitation.StatusKitInvitationKey.statusTypeIdentifier(_:), v50);
  v117 = sub_1000A0920();
  v119 = v63;
  v64 = v56;
  v65 = v47;
  (v47)(v64, v50);
  v66 = v134;
  v121(v134, enum case for StatusKitInvitation.StatusKitInvitationKey.incomingRatchetState(_:), v50);
  v118 = v32;
  v116 = sub_1000A0920();
  v123 = v67;
  v65(v66, v50);
  v68 = v133;
  v69 = v121;
  v121(v133, enum case for StatusKitInvitation.StatusKitInvitationKey.invitationPayload(_:), v50);
  v115 = sub_1000A0920();
  v134 = v70;
  v65(v68, v50);
  v71 = v132;
  v69(v132, enum case for StatusKitInvitation.StatusKitInvitationKey.presenceIdentifier(_:), v50);
  v114 = sub_1000A0920();
  v133 = v72;
  v65(v71, v50);
  v73 = v131;
  v69(v131, enum case for StatusKitInvitation.StatusKitInvitationKey.channelToken(_:), v50);
  v74 = sub_1000A0920();
  v132 = v75;
  v113 = v74;
  v65(v73, v50);
  v76 = v130;
  v69(v130, enum case for StatusKitInvitation.StatusKitInvitationKey.channelServerKeyData(_:), v50);
  v77 = sub_1000A0920();
  v139 = 0;
  v131 = v78;
  v112 = v77;
  v65(v76, v50);
  v79 = v128;
  v69(v128, enum case for StatusKitInvitation.StatusKitInvitationKey.channelPeerKeyData(_:), v50);
  v80 = v118;
  v81 = v139;
  v82 = sub_1000A0920();
  v130 = v83;
  v139 = v81;
  if (v81)
  {
    v65(v79, v50);
    (*(v136 + 8))(v55, v80);
    v57 = 1;
    v58 = 1;
    v59 = 1;
    v60 = 1;
    v61 = 1;
    v62 = 1;
LABEL_8:
    sub_100002308(v140);

    if (v57)
    {

      if ((v58 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else if (!v58)
    {
LABEL_10:
      if (v59)
      {
        goto LABEL_11;
      }

      goto LABEL_17;
    }

    if (v59)
    {
LABEL_11:

      if ((v60 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v60)
    {
LABEL_12:
      if (v61)
      {
        goto LABEL_13;
      }

LABEL_19:
      if (v62)
      {
      }

      return result;
    }

LABEL_18:

    if (v61)
    {
LABEL_13:

      if (v62)
      {
      }

      return result;
    }

    goto LABEL_19;
  }

  v84 = v82;
  v135 = v54;
  v128 = v65;
  v65(v79, v50);
  v121(v129, enum case for StatusKitInvitation.StatusKitInvitationKey.channelMembershipKeyData(_:), v50);
  v85 = v55;
  v86 = v139;
  v87 = sub_1000A0920();
  v89 = v88;
  v90 = v86;
  if (v86)
  {
    v139 = v86;
  }

  else
  {
    v91 = v87;
    v92 = v138;
    (v128)(v129, v138);
    v121(v127, enum case for StatusKitInvitation.StatusKitInvitationKey.channelCreationDate(_:), v92);
    v93 = sub_1000A0940();
    v139 = 0;
    v94 = v93;
    LOBYTE(v92) = v95;
    v96 = v138;
    (v128)(v127, v138);
    v162 = v92 & 1;
    v121(v126, enum case for StatusKitInvitation.StatusKitInvitationKey.isPersonalPresence(_:), v96);
    v97 = v139;
    LODWORD(v129) = sub_1000A0930();
    v139 = v97;
    if (v97)
    {
      v98 = v126;
    }

    else
    {
      v99 = v138;
      (v128)(v126, v138);
      v121(v125, enum case for StatusKitInvitation.StatusKitInvitationKey.serviceIdentifier(_:), v99);
      v100 = v139;
      v137 = sub_1000A0920();
      v127 = v101;
      v139 = v100;
      if (!v100)
      {
        (v128)(v125, v138);
        (*(v136 + 8))(v85, v118);
        v102 = v122;
        *&v141 = v120;
        *(&v141 + 1) = v122;
        *&v142 = v53;
        *(&v142 + 1) = v117;
        *&v143 = v119;
        *(&v143 + 1) = v116;
        *&v144 = v123;
        *(&v144 + 1) = v115;
        *&v145 = v134;
        *(&v145 + 1) = v114;
        *&v146 = v133;
        *(&v146 + 1) = v113;
        *&v147 = v132;
        *(&v147 + 1) = v112;
        *&v148 = v131;
        *(&v148 + 1) = v84;
        *&v149 = v130;
        *(&v149 + 1) = v91;
        *&v150 = v89;
        *(&v150 + 1) = v94;
        LODWORD(v138) = v162;
        LOBYTE(v151) = v162;
        v103 = v129;
        BYTE1(v151) = v129;
        WORD3(v151) = v161;
        *(&v151 + 2) = v160;
        v104 = v137;
        v105 = v127;
        *(&v151 + 1) = v137;
        v152 = v127;
        sub_100008798(&v141, v153);
        sub_100002308(v140);
        v153[0] = v120;
        v153[1] = v102;
        v153[2] = v53;
        v153[3] = v117;
        v153[4] = v119;
        v153[5] = v116;
        v153[6] = v123;
        v153[7] = v115;
        v153[8] = v134;
        v153[9] = v114;
        v153[10] = v133;
        v153[11] = v113;
        v153[12] = v132;
        v153[13] = v112;
        v153[14] = v131;
        v153[15] = v84;
        v153[16] = v130;
        v153[17] = v91;
        v153[18] = v89;
        v153[19] = v94;
        v154 = v138;
        v155 = v103;
        v157 = v161;
        v156 = v160;
        v158 = v104;
        v159 = v105;
        result = sub_1000087D0(v153);
        v106 = v150;
        v107 = v124;
        *(v124 + 128) = v149;
        *(v107 + 144) = v106;
        *(v107 + 160) = v151;
        *(v107 + 176) = v152;
        v108 = v146;
        *(v107 + 64) = v145;
        *(v107 + 80) = v108;
        v109 = v148;
        *(v107 + 96) = v147;
        *(v107 + 112) = v109;
        v110 = v142;
        *v107 = v141;
        *(v107 + 16) = v110;
        v111 = v144;
        *(v107 + 32) = v143;
        *(v107 + 48) = v111;
        return result;
      }

      v98 = v125;
    }

    v129 = v98;
  }

  (v128)(v129, v138);
  (*(v136 + 8))(v85, v118);
  sub_100002308(v140);

  if (!v90)
  {
  }

  return result;
}

__n128 sub_100008698(uint64_t a1, __int128 *a2)
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
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_1000086D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
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

uint64_t sub_10000871C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100008810(uint64_t a1)
{
  v94 = __chkstk_darwin(a1);
  v95 = v2;
  v90 = v3;
  v4 = sub_10009F9D0();
  v88 = *(v4 - 8);
  v89 = v4;
  v5 = *(v88 + 64);
  __chkstk_darwin(v4);
  v87 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000017BC(&qword_1000D8428, &qword_1000A6188);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v93 = &v43 - v9;
  v10 = sub_1000017BC(&qword_1000D8430, &qword_1000A6190);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v92 = &v43 - v12;
  v13 = sub_1000017BC(&qword_1000D8438, &qword_1000A6198);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v91 = &v43 - v15;
  v16 = sub_1000017BC(&qword_1000D8440, &qword_1000A61A0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v43 - v18;
  v20 = sub_1000017BC(&qword_1000D8448, &qword_1000A61A8);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v43 - v22;
  v24 = sub_10009FAE0();
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = &v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10009FB50();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = &v43 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_10009F270();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  v36 = sub_10009F260();
  sub_100009058();
  sub_10009F250();
  if (v1)
  {
  }

  v85 = v23;
  v86 = v32;
  v94 = v19;
  v95 = v36;
  v83 = v29;
  v84 = v28;
  memcpy(v97, v96, 0x970uLL);
  v69 = sub_1000090AC(v97);
  v82 = v27;
  sub_10009FAD0();
  v80 = v97[3];
  v81 = v97[1];
  v74 = v97[6];
  v75 = v97[4];
  v78 = v97[7];
  v79 = v97[5];
  v76 = v97[11];
  v77 = v97[9];
  v72 = v97[8];
  v73 = v97[13];
  v67 = v97[14];
  v68 = v97[12];
  v70 = v97[10];
  v71 = v97[15];
  v61 = v97[16];

  sub_10009FAF0();
  v65 = v97[19];
  v64 = LOBYTE(v97[20]);
  v63 = v97[21];
  v62 = LOBYTE(v97[22]);
  sub_10009FB10();
  v60 = v97[25];
  v66 = 0;

  sub_10009FB30();
  v59 = v97[29];
  v58 = LOBYTE(v97[30]);
  v56 = LOBYTE(v97[32]);
  v57 = v97[31];
  v55 = v97[33];
  v54 = LOBYTE(v97[34]);
  v52 = LOBYTE(v97[36]);
  v53 = v97[35];
  v51 = v97[37];
  v50 = LOBYTE(v97[38]);
  v48 = LOBYTE(v97[40]);
  v49 = v97[39];
  v47 = v97[41];
  v46 = LOBYTE(v97[42]);
  sub_10009FB20();
  v44 = LOBYTE(v97[46]);
  v45 = v97[45];
  sub_10009FB00();
  v43 = v97[49];

  v38 = v86;
  v39 = v66;
  sub_10009FB40();
  if (v39)
  {

    return sub_1000099F8(v97);
  }

  else
  {
    sub_1000099F8(v97);
    v40 = v83;
    v41 = v84;
    v42 = v87;
    (*(v83 + 16))(v87, v38, v84);
    (*(v88 + 104))(v42, enum case for IDSClientMessageType.safetyMonitorMessage(_:), v89);
    sub_10009FC10();

    return (*(v40 + 8))(v38, v41);
  }
}

unint64_t sub_100008FDC(uint64_t a1)
{
  result = sub_100009004();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100009004()
{
  result = qword_1000D8420;
  if (!qword_1000D8420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8420);
  }

  return result;
}

unint64_t sub_100009058()
{
  result = qword_1000D8450;
  if (!qword_1000D8450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8450);
  }

  return result;
}

void *sub_1000090AC(const void *a1)
{
  v3 = sub_1000A0CC0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  v50 = v8;
  *(v8 + 16) = &_swiftEmptyDictionarySingleton;
  v9 = (v8 + 16);
  *(&v45 + 1) = &type metadata for SafetyMonitorSchema;
  v44[0] = swift_allocObject();
  memcpy((v44[0] + 16), a1, 0x970uLL);
  sub_100009EE4(a1, &v46);
  sub_1000A0CA0();
  sub_1000A0CB0();
  (*(v4 + 8))(v7, v3);
  sub_1000A0890();

  sub_1000A08E0();
  if (v49)
  {
    v39 = "mmaryText";
    do
    {
      v10 = v47;
      v44[0] = v46;
      v44[1] = v47;
      sub_10000C86C(&v48, &v45);
      if (v10)
      {
        result = sub_100005620(v44, &v41, &qword_1000D8458, &qword_1000A61B0);
        if (!v42)
        {
          goto LABEL_41;
        }

        v51._countAndFlagsBits = 0x7265766965636572;
        v51._object = 0xEE00656C646E6148;
        v12 = sub_1000A0660(v51);

        sub_100002308(v43);
        if (v12)
        {
          result = sub_100005620(v44, &v41, &qword_1000D8458, &qword_1000A61B0);
          if (!v42)
          {
            goto LABEL_45;
          }

          v13 = sub_100009F40(v41, v42, v50);

          if (v1)
          {
            goto LABEL_38;
          }

          sub_100002308(v43);
          swift_beginAccess();
          v14 = sub_10000AA10(v40, v13);
          v16 = v15;
          v17 = sub_10009FEF0();
          if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
          {
            sub_100005620(v44, &v41, &qword_1000D8458, &qword_1000A61B0);

            swift_dynamicCast();
            sub_10009FEB0();
          }

          (v14)(v40, 0);
          swift_endAccess();
        }

        result = sub_100005620(v44, &v41, &qword_1000D8458, &qword_1000A61B0);
        if (!v42)
        {
          goto LABEL_42;
        }

        v52._object = (v39 | 0x8000000000000000);
        v52._countAndFlagsBits = 0xD000000000000015;
        v18 = sub_1000A0660(v52);

        sub_100002308(v43);
        if (v18)
        {
          result = sub_100005620(v44, &v41, &qword_1000D8458, &qword_1000A61B0);
          if (!v42)
          {
            goto LABEL_46;
          }

          v13 = sub_100009F40(v41, v42, v50);

          if (v1)
          {
            goto LABEL_38;
          }

          sub_100002308(v43);
          swift_beginAccess();
          v19 = sub_10000AA10(v40, v13);
          v21 = v20;
          v22 = sub_10009FEF0();
          if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
          {
            sub_100005620(v44, &v41, &qword_1000D8458, &qword_1000A61B0);

            swift_dynamicCast();
            sub_10009FEC0();
          }

          (v19)(v40, 0);
          swift_endAccess();
        }

        result = sub_100005620(v44, &v41, &qword_1000D8458, &qword_1000A61B0);
        if (!v42)
        {
          goto LABEL_43;
        }

        v53._countAndFlagsBits = 0x4C52556572616873;
        v53._object = 0xE800000000000000;
        v23 = sub_1000A0660(v53);

        sub_100002308(v43);
        if (v23)
        {
          result = sub_100005620(v44, &v41, &qword_1000D8458, &qword_1000A61B0);
          if (!v42)
          {
            goto LABEL_47;
          }

          v13 = sub_100009F40(v41, v42, v50);

          if (v1)
          {
            goto LABEL_38;
          }

          sub_100002308(v43);
          swift_beginAccess();
          v24 = sub_10000AA10(v40, v13);
          v26 = v25;
          v27 = sub_10009FEF0();
          if (!(*(*(v27 - 8) + 48))(v26, 1, v27))
          {
            sub_100005620(v44, &v41, &qword_1000D8458, &qword_1000A61B0);

            swift_dynamicCast();
            sub_10009FEE0();
          }

          (v24)(v40, 0);
          swift_endAccess();
        }

        result = sub_100005620(v44, &v41, &qword_1000D8458, &qword_1000A61B0);
        v13 = v42;
        if (!v42)
        {
          goto LABEL_44;
        }

        v54._countAndFlagsBits = 0x7069636974726170;
        v54._object = 0xED00004449746E61;
        v28 = sub_1000A0660(v54);

        sub_100002308(v43);
        if (v28)
        {
          result = sub_100005620(v44, &v41, &qword_1000D8458, &qword_1000A61B0);
          if (!v42)
          {
            goto LABEL_48;
          }

          v29 = sub_100009F40(v41, v42, v50);
          if (v1)
          {

LABEL_38:

            sub_100002308(v43);
            sub_1000057C4(v44, &qword_1000D8458, &qword_1000A61B0);

            return v13;
          }

          v30 = v29;

          sub_100002308(v43);
          swift_beginAccess();
          v31 = sub_10000AA10(v40, v30);
          v33 = v32;
          v34 = sub_10009FEF0();
          if (!(*(*(v34 - 8) + 48))(v33, 1, v34))
          {
            sub_100005620(v44, &v41, &qword_1000D8458, &qword_1000A61B0);

            swift_dynamicCast();
            sub_10009FEA0();
          }

          (v31)(v40, 0);
          swift_endAccess();
        }
      }

      sub_1000057C4(v44, &qword_1000D8458, &qword_1000A61B0);
      sub_1000A08E0();
    }

    while (v49);
  }

  swift_beginAccess();
  v35 = *v9;
  v36 = *(*v9 + 16);
  if (!v36)
  {

    return &_swiftEmptyArrayStorage;
  }

  v13 = sub_10000AAD4(v36, 0);
  v37 = *(sub_10009FEF0() - 8);
  v39 = sub_10000C5C0(&v46, (v13 + ((*(v37 + 80) + 32) & ~*(v37 + 80))), v36, v35);

  result = sub_10000C864();
  if (v39 == v36)
  {

    return v13;
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_100009A4C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100009A84()
{
  v1 = v0[6];

  v2 = v0[8];

  v3 = v0[10];

  v4 = v0[12];

  v5 = v0[14];

  v6 = v0[16];

  v7 = v0[18];

  v8 = v0[28];

  v9 = v0[52];

  v10 = v0[54];

  v11 = v0[57];

  v12 = v0[59];

  v13 = v0[61];

  v14 = v0[63];

  v15 = v0[65];

  v16 = v0[67];

  v17 = v0[69];

  v18 = v0[71];

  v19 = v0[73];

  v20 = v0[75];

  v21 = v0[77];

  v22 = v0[79];

  v23 = v0[81];

  v24 = v0[83];

  v25 = v0[85];

  v26 = v0[87];

  v27 = v0[89];

  v28 = v0[91];

  v29 = v0[93];

  v30 = v0[95];

  v31 = v0[97];

  v32 = v0[99];

  v33 = v0[101];

  v34 = v0[103];

  v35 = v0[105];

  v36 = v0[107];

  v37 = v0[109];

  v38 = v0[111];

  v39 = v0[113];

  v40 = v0[115];

  v41 = v0[117];

  v42 = v0[119];

  v43 = v0[121];

  v44 = v0[123];

  v45 = v0[125];

  v46 = v0[127];

  v47 = v0[129];

  v48 = v0[131];

  v49 = v0[133];

  v50 = v0[135];

  v51 = v0[137];

  v52 = v0[139];

  v53 = v0[141];

  v54 = v0[143];

  v55 = v0[145];

  v56 = v0[147];

  v57 = v0[149];

  v58 = v0[151];

  v59 = v0[153];

  v60 = v0[155];

  v61 = v0[157];

  v62 = v0[159];

  v63 = v0[161];

  v64 = v0[163];

  v65 = v0[165];

  v66 = v0[167];

  v67 = v0[169];

  v68 = v0[171];

  v69 = v0[173];

  v70 = v0[175];

  v71 = v0[177];

  v72 = v0[179];

  v73 = v0[181];

  v74 = v0[183];

  v75 = v0[185];

  v76 = v0[187];

  v77 = v0[189];

  v78 = v0[191];

  v79 = v0[193];

  v80 = v0[195];

  v81 = v0[197];

  v82 = v0[199];

  v83 = v0[201];

  v84 = v0[203];

  v85 = v0[205];

  v86 = v0[207];

  v87 = v0[209];

  v88 = v0[211];

  v89 = v0[213];

  v90 = v0[215];

  v91 = v0[217];

  v92 = v0[219];

  v93 = v0[221];

  v94 = v0[223];

  v95 = v0[225];

  v96 = v0[227];

  v97 = v0[229];

  v98 = v0[231];

  v99 = v0[233];

  v100 = v0[235];

  v101 = v0[237];

  v102 = v0[239];

  v103 = v0[241];

  v104 = v0[243];

  v105 = v0[245];

  v106 = v0[247];

  v107 = v0[249];

  v108 = v0[251];

  v109 = v0[253];

  v110 = v0[255];

  v111 = v0[257];

  v112 = v0[259];

  v113 = v0[261];

  v114 = v0[263];

  v115 = v0[265];

  v116 = v0[267];

  v117 = v0[269];

  v118 = v0[271];

  v119 = v0[273];

  v120 = v0[275];

  v121 = v0[277];

  v122 = v0[279];

  v123 = v0[281];

  v124 = v0[283];

  v125 = v0[285];

  v126 = v0[287];

  v127 = v0[289];

  v128 = v0[291];

  v129 = v0[293];

  v130 = v0[295];

  v131 = v0[297];

  v132 = v0[299];

  v133 = v0[301];

  v134 = v0[303];

  return _swift_deallocObject(v0, 2432, 7);
}

uint64_t sub_100009F40(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = sub_1000017BC(&qword_1000D8460, &qword_1000A61B8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v73 - v9;
  v90 = sub_10009FEF0();
  v84 = *(v90 - 8);
  v11 = *(v84 + 64);
  __chkstk_darwin(v90);
  v80 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000017BC(&qword_1000D8470, &qword_1000A61C8);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v82 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v83 = &v73 - v17;
  v88 = 0;
  v89 = 0xE000000000000000;
  v18 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v18 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    while (1)
    {
      v19 = sub_1000A05C0();
      sub_1000A0670();
      if ((sub_1000A0560() & 1) == 0)
      {
        break;
      }

      sub_1000A05F0();

      if (!(v19 >> 14))
      {
        goto LABEL_8;
      }
    }
  }

LABEL_8:
  result = v89;
  v21 = HIBYTE(v89) & 0xF;
  v22 = v88 & 0xFFFFFFFFFFFFLL;
  if ((v89 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v89) & 0xF;
  }

  else
  {
    v23 = v88 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {
    goto LABEL_95;
  }

  if ((v89 & 0x1000000000000000) != 0)
  {
    v27 = sub_10000B9EC(v88, v89, 10);
    v71 = v70;

    if (v71)
    {
      return 0;
    }

    goto LABEL_72;
  }

  if ((v89 & 0x2000000000000000) != 0)
  {
    v87[0] = v88;
    v87[1] = v89 & 0xFFFFFFFFFFFFFFLL;
    if (v88 == 43)
    {
      if (!v21)
      {
LABEL_102:
        __break(1u);
        return result;
      }

      v24 = (v21 - 1);
      if (v21 != 1)
      {
        v27 = 0;
        v36 = v87 + 1;
        while (1)
        {
          v37 = *v36 - 48;
          if (v37 > 9)
          {
            break;
          }

          if (!is_mul_ok(v27, 0xAuLL))
          {
            break;
          }

          v30 = __CFADD__(10 * v27, v37);
          v27 = 10 * v27 + v37;
          if (v30)
          {
            break;
          }

          ++v36;
          if (!--v24)
          {
            goto LABEL_71;
          }
        }
      }
    }

    else if (v88 == 45)
    {
      if (!v21)
      {
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
        goto LABEL_102;
      }

      v24 = (v21 - 1);
      if (v21 != 1)
      {
        v27 = 0;
        v31 = v87 + 1;
        while (1)
        {
          v32 = *v31 - 48;
          if (v32 > 9)
          {
            break;
          }

          if (!is_mul_ok(v27, 0xAuLL))
          {
            break;
          }

          v30 = 10 * v27 >= v32;
          v27 = 10 * v27 - v32;
          if (!v30)
          {
            break;
          }

          ++v31;
          if (!--v24)
          {
            goto LABEL_71;
          }
        }
      }
    }

    else if (v21)
    {
      v27 = 0;
      v39 = v87;
      while (1)
      {
        v40 = *v39 - 48;
        if (v40 > 9)
        {
          break;
        }

        if (!is_mul_ok(v27, 0xAuLL))
        {
          break;
        }

        v30 = __CFADD__(10 * v27, v40);
        v27 = 10 * v27 + v40;
        if (v30)
        {
          break;
        }

        ++v39;
        if (!--v21)
        {
LABEL_69:
          LOBYTE(v24) = 0;
          goto LABEL_71;
        }
      }
    }
  }

  else
  {
    if ((v88 & 0x1000000000000000) != 0)
    {
      v24 = ((v89 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v72 = v89;
      v24 = sub_1000A0880();
      result = v72;
    }

    v25 = *v24;
    if (v25 == 43)
    {
      if (v22 >= 1)
      {
        v33 = v22 - 1;
        if (v22 != 1)
        {
          v27 = 0;
          if (!v24)
          {
            goto LABEL_71;
          }

          v34 = v24 + 1;
          while (1)
          {
            v35 = *v34 - 48;
            if (v35 > 9)
            {
              break;
            }

            if (!is_mul_ok(v27, 0xAuLL))
            {
              break;
            }

            v30 = __CFADD__(10 * v27, v35);
            v27 = 10 * v27 + v35;
            if (v30)
            {
              break;
            }

            ++v34;
            if (!--v33)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_70;
      }

      goto LABEL_101;
    }

    if (v25 == 45)
    {
      if (v22 >= 1)
      {
        v26 = v22 - 1;
        if (v22 != 1)
        {
          v27 = 0;
          if (!v24)
          {
            goto LABEL_71;
          }

          v28 = v24 + 1;
          while (1)
          {
            v29 = *v28 - 48;
            if (v29 > 9)
            {
              break;
            }

            if (!is_mul_ok(v27, 0xAuLL))
            {
              break;
            }

            v30 = 10 * v27 >= v29;
            v27 = 10 * v27 - v29;
            if (!v30)
            {
              break;
            }

            ++v28;
            if (!--v26)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_70;
      }

      __break(1u);
      goto LABEL_100;
    }

    if (v22)
    {
      v27 = 0;
      if (!v24)
      {
        goto LABEL_71;
      }

      while (1)
      {
        v38 = *v24 - 48;
        if (v38 > 9)
        {
          break;
        }

        if (!is_mul_ok(v27, 0xAuLL))
        {
          break;
        }

        v30 = __CFADD__(10 * v27, v38);
        v27 = 10 * v27 + v38;
        if (v30)
        {
          break;
        }

        ++v24;
        if (!--v22)
        {
          goto LABEL_69;
        }
      }
    }
  }

LABEL_70:
  v27 = 0;
  LOBYTE(v24) = 1;
LABEL_71:
  v86 = v24;
  v41 = v24;

  if (v41)
  {
    return 0;
  }

LABEL_72:
  if (!v27)
  {
    return 0;
  }

  v85 = v27;
  v74 = v10;
  v75 = v3;
  swift_beginAccess();
  v73 = a3;
  v42 = *(a3 + 16);
  v43 = *(v42 + 64);
  v76 = v42 + 64;
  v44 = 1 << *(v42 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & v43;
  v47 = (v44 + 63) >> 6;
  v77 = v84 + 32;
  v78 = v84 + 16;
  v81 = (v84 + 8);
  v79 = v42;

  v48 = 0;
  v50 = v82;
  v49 = v83;
  if (!v46)
  {
LABEL_77:
    if (v47 <= v48 + 1)
    {
      v52 = v48 + 1;
    }

    else
    {
      v52 = v47;
    }

    v53 = v52 - 1;
    while (1)
    {
      v51 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      if (v51 >= v47)
      {
        v66 = sub_1000017BC(&qword_1000D8478, &qword_1000A61D0);
        (*(*(v66 - 8) + 56))(v50, 1, 1, v66);
        v46 = 0;
        goto LABEL_85;
      }

      v46 = *(v76 + 8 * v51);
      ++v48;
      if (v46)
      {
        goto LABEL_84;
      }
    }

    __break(1u);
LABEL_95:

    return 0;
  }

  while (1)
  {
    v51 = v48;
LABEL_84:
    v54 = __clz(__rbit64(v46));
    v46 &= v46 - 1;
    v55 = v54 | (v51 << 6);
    v56 = v80;
    v57 = *(*(v79 + 48) + 8 * v55);
    v58 = v84;
    v59 = v90;
    (*(v84 + 16))(v80, *(v79 + 56) + *(v84 + 72) * v55, v90);
    v60 = sub_1000017BC(&qword_1000D8478, &qword_1000A61D0);
    v61 = *(v60 + 48);
    v62 = v82;
    *v82 = v57;
    v63 = *(v58 + 32);
    v50 = v62;
    v63(&v62[v61], v56, v59);
    (*(*(v60 - 8) + 56))(v50, 0, 1, v60);
    v53 = v51;
    v49 = v83;
LABEL_85:
    sub_10000C87C(v50, v49);
    v64 = sub_1000017BC(&qword_1000D8478, &qword_1000A61D0);
    if ((*(*(v64 - 8) + 48))(v49, 1, v64) == 1)
    {
      break;
    }

    v65 = *(v64 + 48);
    if (*v49 == v85)
    {

      (*v81)(&v49[v65], v90);
      return v85;
    }

    (*v81)(&v49[v65], v90);
    v48 = v53;
    if (!v46)
    {
      goto LABEL_77;
    }
  }

  v68 = v74;
  v67 = v75;
  v69 = v85;
  result = sub_10009FED0();
  if (!v67)
  {
    (*(v84 + 56))(v68, 0, 1, v90);
    swift_beginAccess();
    sub_10000A7C0(v68, v69);
    swift_endAccess();
    return v69;
  }

  return result;
}

uint64_t sub_10000A7C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000017BC(&qword_1000D8460, &qword_1000A61B8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v25 - v8;
  v10 = sub_10009FEF0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1000057C4(a1, &qword_1000D8460, &qword_1000A61B8);
    v15 = *v3;
    v16 = sub_100002354(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10000B784();
        v21 = v26;
      }

      (*(v11 + 32))(v9, *(v21 + 56) + *(v11 + 72) * v18, v10);
      sub_10000B52C(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_1000057C4(v9, &qword_1000D8460, &qword_1000A61B8);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_10000BF70(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

void (*sub_10000AA10(uint64_t **a1, uint64_t a2))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_10000ABD0(v4, a2);
  return sub_10000AA88;
}

void sub_10000AA88(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

char *sub_10000AAD4(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_1000017BC(&qword_1000D8488, &unk_1000A61E0);
  v4 = *(sub_10009FEF0() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (&result[-v6] != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * (&result[-v6] / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_10000ABD0(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_10000B1AC(v6);
  v6[9] = sub_10000ACD4(v6 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_10000AC74;
}

void sub_10000AC74(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_10000ACD4(void *a1, uint64_t a2, char a3))(uint64_t a1, char a2)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x60uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a2;
  v8[1] = v3;
  v10 = sub_10009FEF0();
  v9[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v9[3] = v11;
  v13 = *(v11 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v9[4] = swift_coroFrameAlloc();
    v9[5] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v9[4] = malloc(*(v11 + 64));
    v9[5] = malloc(v13);
    v14 = malloc(v13);
  }

  v9[6] = v14;
  v15 = *(*(sub_1000017BC(&qword_1000D8460, &qword_1000A61B8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v9[7] = swift_coroFrameAlloc();
    v9[8] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v9[7] = malloc(v15);
    v9[8] = malloc(v15);
    v16 = malloc(v15);
  }

  v17 = v16;
  v9[9] = v16;
  v18 = *v4;
  v19 = sub_100002354(a2);
  *(v9 + 88) = v20 & 1;
  v21 = *(v18 + 16);
  v22 = (v20 & 1) == 0;
  v23 = __OFADD__(v21, v22);
  v24 = v21 + v22;
  if (v23)
  {
    __break(1u);
    goto LABEL_22;
  }

  v25 = v20;
  v26 = *(v18 + 24);
  if (v26 < v24 || (a3 & 1) == 0)
  {
    if (v26 >= v24 && (a3 & 1) == 0)
    {
      v27 = v19;
      sub_10000B784();
      v19 = v27;
      goto LABEL_17;
    }

    sub_10000B1E0(v24, a3 & 1);
    v28 = *v4;
    v19 = sub_100002354(a2);
    if ((v25 & 1) == (v29 & 1))
    {
      goto LABEL_17;
    }

LABEL_22:
    result = sub_1000A0C00();
    __break(1u);
    return result;
  }

LABEL_17:
  v9[10] = v19;
  if (v25)
  {
    (*(v12 + 32))(v17, *(*v4 + 56) + *(v12 + 72) * v19, v10);
    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  (*(v12 + 56))(v17, v30, 1, v10);
  return sub_10000AF8C;
}

void sub_10000AF8C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  v4 = (*(*a1 + 24) + 48);
  v5 = *(*a1 + 72);
  if (a2)
  {
    v6 = *(v2 + 7);
    sub_100005620(v5, v6, &qword_1000D8460, &qword_1000A61B8);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 88);
    v9 = *(v2 + 7);
    if (v7 != 1)
    {
      v10 = *(v2 + 1);
      v11 = *(*(v2 + 3) + 32);
      v11(*(v2 + 5), *(v2 + 7), *(v2 + 2));
      v12 = *v10;
      v13 = *(v2 + 10);
      v14 = *(v2 + 5);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v15 = *(v2 + 4);
        v16 = *v2;
        v11(v15, v14, *(v2 + 2));
        sub_10000B6D8(v13, v16, v15, v12);
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v17 = *(v2 + 8);
    sub_100005620(v5, v17, &qword_1000D8460, &qword_1000A61B8);
    v18 = (*v4)(v17, 1, v3);
    v8 = *(v2 + 88);
    v9 = *(v2 + 8);
    if (v18 != 1)
    {
      v19 = *(v2 + 1);
      v11 = *(*(v2 + 3) + 32);
      v11(*(v2 + 6), *(v2 + 8), *(v2 + 2));
      v12 = *v19;
      v13 = *(v2 + 10);
      v14 = *(v2 + 6);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      v11(v12[7] + *(*(v2 + 3) + 72) * v13, v14, *(v2 + 2));
      goto LABEL_10;
    }
  }

  sub_1000057C4(v9, &qword_1000D8460, &qword_1000A61B8);
  if (v8)
  {
    sub_10000B52C(*(v2 + 10), **(v2 + 1));
  }

LABEL_10:
  v20 = *(v2 + 8);
  v21 = *(v2 + 9);
  v23 = *(v2 + 6);
  v22 = *(v2 + 7);
  v25 = *(v2 + 4);
  v24 = *(v2 + 5);
  sub_1000057C4(v21, &qword_1000D8460, &qword_1000A61B8);
  free(v21);
  free(v20);
  free(v22);
  free(v23);
  free(v24);
  free(v25);

  free(v2);
}

uint64_t (*sub_10000B1AC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10000B1D4;
}

uint64_t sub_10000B1E0(uint64_t a1, int a2)
{
  v3 = v2;
  v43 = sub_10009FEF0();
  v6 = *(v43 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v43);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_1000017BC(&qword_1000D8468, &qword_1000A61C0);
  v41 = a2;
  result = sub_1000A08C0();
  v12 = result;
  if (*(v9 + 16))
  {
    v38 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v6 + 16);
    v40 = v6;
    v19 = (v6 + 32);
    v20 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(*(v9 + 48) + 8 * v25);
      v27 = *(v6 + 72);
      v28 = *(v9 + 56) + v27 * v25;
      if (v41)
      {
        (*v19)(v42, v28, v43);
      }

      else
      {
        (*v39)(v42, v28, v43);
      }

      v29 = *(v12 + 40);
      result = sub_1000A0C50();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v20 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v20 + 8 * v32);
          if (v36 != -1)
          {
            v21 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v31) & ~*(v20 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v12 + 48) + 8 * v21) = v26;
      result = (*v19)(*(v12 + 56) + v27 * v21, v42, v43);
      ++*(v12 + 16);
      v6 = v40;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v9 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero((v9 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

unint64_t sub_10000B52C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1000A07F0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_1000A0C50();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8 || v3 < v13)
        {
          goto LABEL_5;
        }
      }

      else if (v13 < v8 && v3 < v13)
      {
        goto LABEL_5;
      }

      v16 = (v10 + 8 * v3);
      if (v3 != v6 || v16 >= v11 + 1)
      {
        *v16 = *v11;
      }

      v17 = *(a2 + 56);
      v18 = *(*(sub_10009FEF0() - 8) + 72);
      v19 = v18 * v3;
      result = v17 + v18 * v3;
      v20 = v18 * v6;
      v21 = v17 + v18 * v6 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10000B6D8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_10009FEF0();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

void *sub_10000B784()
{
  v1 = v0;
  v30 = sub_10009FEF0();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  __chkstk_darwin(v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000017BC(&qword_1000D8468, &qword_1000A61C0);
  v4 = *v0;
  v5 = sub_1000A08B0();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v4 + 64;
    for (i = v32 + 32; v13; result = (*(v20 + 32))(*(v24 + 56) + v21, v23, v22))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(*(v4 + 48) + 8 * v18);
      v20 = v32;
      v21 = *(v32 + 72) * v18;
      v23 = v29;
      v22 = v30;
      (*(v32 + 16))(v29, *(v4 + 56) + v21, v30);
      v24 = v31;
      *(*(v31 + 48) + 8 * v18) = v19;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v6 = v31;
        goto LABEL_18;
      }

      v17 = *(v26 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

unsigned __int8 *sub_10000B9EC(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_1000A0680();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10000C0D8();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1000A0880();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_10000BF70(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100002354(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_10000B784();
      goto LABEL_7;
    }

    sub_10000B1E0(v13, a3 & 1);
    v24 = *v4;
    v25 = sub_100002354(a2);
    if ((v14 & 1) == (v26 & 1))
    {
      v10 = v25;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1000A0C00();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_10009FEF0();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_10000B6D8(v10, a2, a1, v16);
}

uint64_t sub_10000C0D8()
{
  v0 = sub_1000A0690();
  v4 = sub_10000C158(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_10000C158(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1000A05A0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1000A07B0();
  if (!v9)
  {
    v11 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_10000C2B0(v9, 0);
  v12 = sub_10000C324(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1000A05A0();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1000A0880();
LABEL_4:

  return sub_1000A05A0();
}

void *sub_10000C2B0(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_1000017BC(&qword_1000D8480, &qword_1000A61D8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_10000C324(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_10000C544(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1000A0620();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1000A0880();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_10000C544(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1000A0600();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_10000C544(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1000A0650();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_1000A0610();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_10000C5C0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_10009FEF0();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = __chkstk_darwin(v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 64;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 56);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

_OWORD *sub_10000C86C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000C87C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000D8470, &qword_1000A61C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Swift::Int sub_10000C8FC()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10000C9B4()
{
  *v0;
  *v0;
  *v0;
  sub_1000A05B0();
}

Swift::Int sub_10000CA58()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10000CB0C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000D920(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10000CB3C(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x646E616D6D6F63;
  v4 = 0xE400000000000000;
  v5 = 1702125924;
  if (*v1 != 2)
  {
    v5 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x746E65696C63;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_10000CBB0()
{
  v1 = 0x646E616D6D6F63;
  v2 = 1702125924;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    v1 = 0x746E65696C63;
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

uint64_t sub_10000CC20@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10000D920(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10000CC48(uint64_t a1)
{
  v2 = sub_10000CEF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000CC84(uint64_t a1)
{
  v2 = sub_10000CEF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSSampleMessageSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000D8490, &unk_1000A61F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10000CEF8();
  sub_1000A0CE0();
  v11 = *v3;
  v20[15] = 0;
  sub_1000A0B60();
  if (!v2)
  {
    v13 = v3[1];
    v14 = v3[2];
    v20[14] = 1;
    sub_1000A0B30();
    v15 = type metadata accessor for IDSSampleMessageSchema();
    v16 = *(v15 + 24);
    v20[13] = 2;
    sub_10009F350();
    sub_10000D38C(&qword_1000D84A0);
    sub_1000A0AD0();
    v17 = v3 + *(v15 + 28);
    v18 = *v17;
    v19 = v17[8];
    v20[12] = 3;
    sub_1000A0AB0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_10000CEF8()
{
  result = qword_1000D8498;
  if (!qword_1000D8498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8498);
  }

  return result;
}

uint64_t type metadata accessor for IDSSampleMessageSchema()
{
  result = qword_1000D8518;
  if (!qword_1000D8518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t IDSSampleMessageSchema.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_1000017BC(&qword_1000D84A8, &unk_1000B0C40);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v25 - v5;
  v7 = sub_1000017BC(&qword_1000D84B0, &qword_1000A6200);
  v26 = *(v7 - 8);
  v27 = v7;
  v8 = *(v26 + 64);
  __chkstk_darwin(v7);
  v10 = &v25 - v9;
  v11 = type metadata accessor for IDSSampleMessageSchema();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10000CEF8();
  v16 = v28;
  sub_1000A0CD0();
  if (v16)
  {
    return sub_100002308(a1);
  }

  v17 = a1;
  v18 = v26;
  v32 = 0;
  *v14 = sub_1000A0A00();
  v31 = 1;
  v14[1] = sub_1000A09D0();
  v14[2] = v19;
  sub_10009F350();
  v30 = 2;
  sub_10000D38C(&qword_1000D84B8);
  sub_1000A0970();
  sub_10000D3D0(v6, v14 + *(v11 + 24));
  v29 = 3;
  v20 = sub_1000A0950();
  v22 = v21;
  (*(v18 + 8))(v10, v27);
  v23 = v14 + *(v11 + 28);
  *v23 = v20;
  v23[8] = v22 & 1;
  sub_10000D440(v14, v25);
  sub_100002308(v17);
  return sub_10000D4A4(v14);
}

uint64_t sub_10000D324(uint64_t a1)
{
  v2 = sub_1000017BC(&qword_1000D84A8, &unk_1000B0C40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000D38C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10009F350();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000D3D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000D84A8, &unk_1000B0C40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000D440(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSSampleMessageSchema();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000D4A4(uint64_t a1)
{
  v2 = type metadata accessor for IDSSampleMessageSchema();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000D544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000017BC(&qword_1000D84A8, &unk_1000B0C40);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000D614(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000017BC(&qword_1000D84A8, &unk_1000B0C40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10000D6C4()
{
  sub_10000D760();
  if (v0 <= 0x3F)
  {
    sub_10000D7B8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10000D760()
{
  if (!qword_1000D8528)
  {
    sub_10009F350();
    v0 = sub_1000A07A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1000D8528);
    }
  }
}

void sub_10000D7B8()
{
  if (!qword_1000D8530)
  {
    v0 = sub_1000A07A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1000D8530);
    }
  }
}

unint64_t sub_10000D81C()
{
  result = qword_1000D8568;
  if (!qword_1000D8568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8568);
  }

  return result;
}

unint64_t sub_10000D874()
{
  result = qword_1000D8570;
  if (!qword_1000D8570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8570);
  }

  return result;
}

unint64_t sub_10000D8CC()
{
  result = qword_1000D8578;
  if (!qword_1000D8578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8578);
  }

  return result;
}

uint64_t sub_10000D920(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CA0E8;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10000D96C@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v2 = sub_1000017BC(&qword_1000D8580, &qword_1000A63E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v36 - v4;
  v6 = sub_10009F690();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v36 - v12;
  v14 = sub_10009F270();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_10009F260();
  sub_10000DFC4();
  sub_10009F250();
  if (v1)
  {
  }

  v37 = v5;
  v36[2] = 0;
  v40 = v11;
  v39 = v17;
  v41 = v13;
  v38 = v7;
  v47 = v53;
  v48 = v54;
  v49 = v55;
  v50 = v56;
  v45 = v51;
  v46 = v52;
  sub_1000017BC(&qword_1000D8590, &qword_1000B1190);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1000A63D0;
  v20 = sub_10000E018();
  *(v19 + 56) = sub_1000017BC(&qword_1000D85A0, &qword_1000A63E8);
  *(v19 + 32) = v20;
  v21 = objc_allocWithZone(NSSet);
  isa = sub_1000A06F0().super.isa;

  v23 = [v21 initWithArray:isa];

  v44 = 0;
  result = sub_1000A0720();
  if (v44)
  {

    v24 = objc_opt_self();
    v25 = sub_1000A0710().super.isa;
    v26 = sub_10009F300().super.isa;
    v43 = 0;
    v27 = [v24 _strictlyUnarchivedObjectOfClasses:v25 fromData:v26 error:&v43];

    v28 = v43;
    v29 = v40;
    if (!v27)
    {
      v34 = v28;

      sub_10009F280();

      swift_willThrow();

      return sub_10000E064(&v45);
    }

    sub_1000A07D0();
    swift_unknownObjectRelease();
    swift_dynamicCast();
    v30 = v38;
    v31 = v41;
    v32 = v6;
    v33 = v37;
    v35 = v43;
    sub_10009F680();
    result = (*(v30 + 48))(v33, 1, v32);
    if (result != 1)
    {

      (*(v30 + 32))(v31, v33, v32);
      v37 = v45;
      v36[1] = v46;
      (*(v30 + 16))(v29, v31, v32);
      v38 = v32;
      v36[0] = v49;

      [v35 coordinate];
      [v35 coordinate];
      sub_10009F6A0();

      sub_10000E064(&v45);
      return (*(v30 + 8))(v41, v38);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_10000DFC4()
{
  result = qword_1000D8588;
  if (!qword_1000D8588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8588);
  }

  return result;
}

unint64_t sub_10000E018()
{
  result = qword_1000D8598;
  if (!qword_1000D8598)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000D8598);
  }

  return result;
}

Swift::Int sub_10000E0C8()
{
  sub_1000A0C60();
  sub_1000A05B0();
  return sub_1000A0C90();
}

Swift::Int sub_10000E13C()
{
  sub_1000A0C60();
  sub_1000A05B0();
  return sub_1000A0C90();
}

uint64_t sub_10000E190@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000CA168;
  v7._object = v3;
  v5 = sub_1000A08F0(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_10000E220@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_1000CA1A0;
  v8._object = a2;
  v6 = sub_1000A08F0(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_10000E284(uint64_t a1)
{
  v2 = sub_10000ED7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000E2C0(uint64_t a1)
{
  v2 = sub_10000ED7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000E2FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000017BC(&qword_1000D85B8, &qword_1000A64E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10000ED7C();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  v11 = sub_1000A09D0();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = sub_100002308(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_10000E478(void *a1)
{
  v3 = sub_1000017BC(&qword_1000D85C8, &qword_1000A64F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10000ED7C();
  sub_1000A0CE0();
  sub_1000A0B30();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_10000E5B4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = sub_10009F630();
  v4 = *(v3 - 8);
  v55 = v3;
  v56 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v54 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10009F6B0();
  v52 = *(v7 - 8);
  v53 = v7;
  v8 = *(v52 + 64);
  __chkstk_darwin(v7);
  v59 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_10009F8A0();
  v51 = *(v58 - 8);
  v10 = *(v51 + 64);
  __chkstk_darwin(v58);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10009F9D0();
  v57 = *(v13 - 8);
  v14 = *(v57 + 64);
  __chkstk_darwin(v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10009F700();
  v50 = *(v17 - 8);
  v18 = *(v50 + 64);
  __chkstk_darwin(v17);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10009F270();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = sub_10009F260();
  sub_10000EC3C();
  v25 = v63;
  sub_10009F250();
  if (v25)
  {
  }

  v46 = v17;
  v47 = v20;
  v48 = v13;
  v49 = 0;
  v27 = v58;
  v26 = v59;
  v63 = v24;
  v28 = v57;
  result = sub_10000EC90(v61, v62);
  if (result <= 1u)
  {
    if (result)
    {
      v39 = v49;
      sub_10006C734(a1, v12);
      if (v39)
      {
      }

      v42 = v51;
      (*(v51 + 16))(v16, v12, v27);
      (*(v28 + 104))(v16, enum case for IDSClientMessageType.fmfShareInvitation(_:), v48);
      sub_10009FC10();

      return (*(v42 + 8))(v12, v27);
    }

    else
    {
      v35 = v47;
      v36 = v49;
      sub_100044330();
      if (v36)
      {
      }

      v37 = v50;
      v38 = v46;
      (*(v50 + 16))(v16, v35, v46);
      (*(v28 + 104))(v16, enum case for IDSClientMessageType.fmfMappingPacket(_:), v48);
      sub_10009FC10();

      return (*(v37 + 8))(v35, v38);
    }
  }

  else if (result == 2)
  {
    v40 = v26;
    v41 = v49;
    sub_10000D96C(v26);
    if (v41)
    {
    }

    v43 = v52;
    v44 = v53;
    (*(v52 + 16))(v16, v40, v53);
    (*(v28 + 104))(v16, enum case for IDSClientMessageType.fmfFenceTrigger(_:), v48);
    sub_10009FC10();

    return (*(v43 + 8))(v40, v44);
  }

  else if (result == 3)
  {
    v30 = v54;
    v31 = v49;
    sub_10003FF64();
    v32 = v48;
    v34 = v55;
    v33 = v56;
    if (v31)
    {
    }

    (*(v56 + 16))(v16, v30, v55);
    (*(v28 + 104))(v16, enum case for IDSClientMessageType.fmfDeleteFence(_:), v32);
    sub_10009FC10();

    return (*(v33 + 8))(v30, v34);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10000EBC0(uint64_t a1)
{
  result = sub_10000EBE8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10000EBE8()
{
  result = qword_1000D85A8;
  if (!qword_1000D85A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D85A8);
  }

  return result;
}

unint64_t sub_10000EC3C()
{
  result = qword_1000D85B0;
  if (!qword_1000D85B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D85B0);
  }

  return result;
}

uint64_t sub_10000EC90(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000C9F68;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

__n128 sub_10000ECDC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000ECE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10000ED30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10000ED7C()
{
  result = qword_1000D85C0;
  if (!qword_1000D85C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D85C0);
  }

  return result;
}

unint64_t sub_10000EDE4()
{
  result = qword_1000D85D0;
  if (!qword_1000D85D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D85D0);
  }

  return result;
}

unint64_t sub_10000EE3C()
{
  result = qword_1000D85D8;
  if (!qword_1000D85D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D85D8);
  }

  return result;
}

unint64_t sub_10000EE94()
{
  result = qword_1000D85E0;
  if (!qword_1000D85E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D85E0);
  }

  return result;
}

unint64_t sub_10000EEE8(char a1)
{
  result = 0x546567617373656DLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x65746144646E6573;
      break;
    case 3:
      result = 0x496567617373656DLL;
      break;
    case 4:
      result = 0x496E6F6973736573;
      break;
    case 5:
      result = 0x547972616D6D7573;
      break;
    case 6:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
      result = 0x7265766965636572;
      break;
    case 7:
      v3 = 5;
      goto LABEL_87;
    case 8:
      result = 0x4C52556572616873;
      break;
    case 9:
    case 122:
    case 123:
    case 124:
    case 125:
    case 126:
    case 127:
    case -128:
    case -127:
    case -126:
    case -125:
    case -124:
    case -123:
    case -122:
    case -121:
    case -120:
    case -119:
    case -118:
    case -117:
    case -116:
    case -115:
    case -114:
    case -113:
    case -112:
    case -111:
    case -110:
    case -109:
    case -108:
    case -107:
    case -106:
    case -105:
    case -104:
      result = 0x7069636974726170;
      break;
    case 10:
      result = 0x546E6F6973736573;
      break;
    case 11:
    case 28:
    case 60:
    case 61:
    case 62:
    case 63:
    case 64:
    case 65:
    case 66:
    case 67:
      result = 0xD000000000000016;
      break;
    case 12:
      v3 = 9;
LABEL_87:
      result = v3 | 0xD000000000000010;
      break;
    case 13:
      result = 0xD000000000000018;
      break;
    case 14:
      result = 0x5472656767697274;
      break;
    case 15:
      result = 0x656475746974616CLL;
      break;
    case 16:
      result = 0x64757469676E6F6CLL;
      break;
    case 17:
      result = 1668183400;
      break;
    case 18:
      result = 0x6564757469746C61;
      break;
    case 19:
      result = 1668183414;
      break;
    case 20:
      result = 0x6F4C664F656D6974;
      break;
    case 21:
      result = 0x636E657265666572;
      break;
    case 22:
      result = 0x6465657073;
      break;
    case 23:
      result = 0x5472656767697274;
      break;
    case 24:
      result = 0x6143797465666173;
      break;
    case 25:
      result = 0xD000000000000010;
      break;
    case 26:
      result = 0x697254534F537369;
      break;
    case 27:
      result = 0xD000000000000010;
      break;
    case 37:
      result = 0xD000000000000010;
      break;
    case 38:
      result = 0xD000000000000010;
      break;
    case 39:
      result = 0xD000000000000010;
      break;
    case 40:
      result = 0xD000000000000010;
      break;
    case 41:
      result = 0xD000000000000010;
      break;
    case 42:
      result = 0xD000000000000010;
      break;
    case 43:
      result = 0xD000000000000010;
      break;
    case 44:
      result = 0xD000000000000010;
      break;
    case 45:
      result = 0xD000000000000010;
      break;
    case 46:
      result = 0xD000000000000010;
      break;
    case 47:
      result = 0xD000000000000010;
      break;
    case 48:
      result = 0xD000000000000010;
      break;
    case 49:
      result = 0xD000000000000010;
      break;
    case 50:
      result = 0xD000000000000010;
      break;
    case 51:
      result = 0xD000000000000010;
      break;
    case 52:
      result = 0xD000000000000010;
      break;
    case 53:
      result = 0xD000000000000010;
      break;
    case 54:
      result = 0xD000000000000010;
      break;
    case 55:
      result = 0xD000000000000010;
      break;
    case 56:
      result = 0xD000000000000010;
      break;
    case 57:
      result = 0xD000000000000010;
      break;
    case 58:
      result = 0xD000000000000010;
      break;
    case 59:
      result = 0xD000000000000010;
      break;
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
      result = 0xD000000000000017;
      break;
    case 91:
      result = 0x4C52556572616873;
      break;
    case 92:
      result = 0x4C52556572616873;
      break;
    case 93:
      result = 0x4C52556572616873;
      break;
    case 94:
      result = 0x4C52556572616873;
      break;
    case 95:
      result = 0x4C52556572616873;
      break;
    case 96:
      result = 0x4C52556572616873;
      break;
    case 97:
      result = 0x4C52556572616873;
      break;
    case 98:
      result = 0x4C52556572616873;
      break;
    case 99:
      result = 0x4C52556572616873;
      break;
    case 100:
      result = 0x4C52556572616873;
      break;
    case 101:
      result = 0x4C52556572616873;
      break;
    case 102:
      result = 0x4C52556572616873;
      break;
    case 103:
      result = 0x4C52556572616873;
      break;
    case 104:
      result = 0x4C52556572616873;
      break;
    case 105:
      result = 0x4C52556572616873;
      break;
    case 106:
      result = 0x4C52556572616873;
      break;
    case 107:
      result = 0x4C52556572616873;
      break;
    case 108:
      result = 0x4C52556572616873;
      break;
    case 109:
      result = 0x4C52556572616873;
      break;
    case 110:
      result = 0x4C52556572616873;
      break;
    case 111:
      result = 0x4C52556572616873;
      break;
    case 112:
      result = 0x4C52556572616873;
      break;
    case 113:
      result = 0x4C52556572616873;
      break;
    case 114:
      result = 0x4C52556572616873;
      break;
    case 115:
      result = 0x4C52556572616873;
      break;
    case 116:
      result = 0x4C52556572616873;
      break;
    case 117:
      result = 0x4C52556572616873;
      break;
    case 118:
      result = 0x4C52556572616873;
      break;
    case 119:
      result = 0x4C52556572616873;
      break;
    case 120:
      result = 0x4C52556572616873;
      break;
    case 121:
      result = 0x4C52556572616873;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10000FE8C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10000EEE8(*a1);
  v5 = v4;
  if (v3 == sub_10000EEE8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000A0BD0();
  }

  return v8 & 1;
}

Swift::Int sub_10000FF14()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_10000EEE8(v1);
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10000FF78()
{
  sub_10000EEE8(*v0);
  sub_1000A05B0();
}

Swift::Int sub_10000FFCC()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_10000EEE8(v1);
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10001002C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_100011CC4();
  *a2 = result;
  return result;
}

unint64_t sub_10001005C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10000EEE8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100010090@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100011CC4();
  *a1 = result;
  return result;
}

uint64_t sub_1000100C4(uint64_t a1)
{
  v2 = sub_100011C0C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100010100(uint64_t a1)
{
  v2 = sub_100011C0C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SafetyMonitorSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000D85E8, &qword_1000A6650);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v314 - v8;
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_100011C0C();
  sub_1000A0CE0();
  v11 = *v3;
  v315 = 0;
  sub_1000A0B70();
  if (!v2)
  {
    v12 = v3[1];
    v315 = 1;
    sub_1000A0B70();
    v13 = v3[2];
    v315 = 2;
    sub_1000A0B50();
    v14 = v3[3];
    v15 = v3[4];
    v315 = 3;
    sub_1000A0B30();
    v16 = v3[5];
    v17 = v3[6];
    v315 = 4;
    sub_1000A0B30();
    v18 = v3[7];
    v19 = v3[8];
    v315 = 5;
    sub_1000A0A80();
    v20 = v3[9];
    v21 = v3[10];
    v315 = 6;
    sub_1000A0A80();
    v22 = v3[11];
    v23 = v3[12];
    v315 = 7;
    sub_1000A0A80();
    v24 = v3[13];
    v25 = v3[14];
    v315 = 8;
    sub_1000A0A80();
    v27 = v3[15];
    v28 = v3[16];
    v315 = 9;
    sub_1000A0A80();
    v29 = v3[17];
    v30 = *(v3 + 144);
    v315 = 10;
    sub_1000A0AC0();
    v31 = v3[23];
    v32 = *(v3 + 192);
    v315 = 11;
    sub_1000A0AC0();
    v33 = v3[25];
    v34 = v3[26];
    v315 = 12;
    sub_1000A0A80();
    v35 = v3[27];
    v36 = *(v3 + 224);
    v315 = 13;
    sub_1000A0AC0();
    v37 = v3[29];
    v38 = *(v3 + 240);
    v315 = 14;
    sub_1000A0AA0();
    v39 = v3[31];
    v40 = *(v3 + 256);
    v315 = 15;
    sub_1000A0AA0();
    v41 = v3[33];
    v42 = *(v3 + 272);
    v315 = 16;
    sub_1000A0AA0();
    v43 = v3[35];
    v44 = *(v3 + 288);
    v315 = 17;
    sub_1000A0AA0();
    v45 = v3[37];
    v46 = *(v3 + 304);
    v315 = 18;
    sub_1000A0AA0();
    v47 = v3[39];
    v48 = *(v3 + 320);
    v315 = 19;
    sub_1000A0AA0();
    v49 = v3[41];
    v50 = *(v3 + 336);
    v315 = 20;
    sub_1000A0AA0();
    v51 = v3[43];
    v52 = *(v3 + 352);
    v315 = 21;
    sub_1000A0AC0();
    v53 = v3[45];
    v54 = *(v3 + 368);
    v315 = 22;
    sub_1000A0AA0();
    v55 = v3[47];
    v56 = *(v3 + 384);
    v315 = 23;
    sub_1000A0AC0();
    v57 = v3[49];
    v58 = v3[50];
    v315 = 24;
    sub_1000A0A80();
    v59 = v3[51];
    v60 = v3[52];
    v315 = 25;
    sub_1000A0A80();
    v61 = *(v3 + 424);
    v315 = 26;
    sub_1000A0A90();
    v62 = v3[19];
    v63 = *(v3 + 160);
    v315 = 27;
    sub_1000A0AA0();
    v64 = v3[21];
    v65 = *(v3 + 176);
    v315 = 28;
    sub_1000A0AA0();
    v66 = v3[54];
    v67 = v3[55];
    v315 = 29;
    sub_1000A0A80();
    v68 = v3[56];
    v69 = v3[57];
    v315 = 30;
    sub_1000A0A80();
    v70 = v3[58];
    v71 = v3[59];
    v315 = 31;
    sub_1000A0A80();
    v72 = v3[60];
    v73 = v3[61];
    v315 = 32;
    sub_1000A0A80();
    v74 = v3[62];
    v75 = v3[63];
    v315 = 33;
    sub_1000A0A80();
    v76 = v3[64];
    v77 = v3[65];
    v315 = 34;
    sub_1000A0A80();
    v78 = v3[66];
    v79 = v3[67];
    v315 = 35;
    sub_1000A0A80();
    v80 = v3[68];
    v81 = v3[69];
    v315 = 36;
    sub_1000A0A80();
    v82 = v3[70];
    v83 = v3[71];
    v315 = 37;
    sub_1000A0A80();
    v84 = v3[72];
    v85 = v3[73];
    v315 = 38;
    sub_1000A0A80();
    v86 = v3[74];
    v87 = v3[75];
    v315 = 39;
    sub_1000A0A80();
    v88 = v3[76];
    v89 = v3[77];
    v315 = 40;
    sub_1000A0A80();
    v90 = v3[78];
    v91 = v3[79];
    v315 = 41;
    sub_1000A0A80();
    v92 = v3[80];
    v93 = v3[81];
    v315 = 42;
    sub_1000A0A80();
    v94 = v3[82];
    v95 = v3[83];
    v315 = 43;
    sub_1000A0A80();
    v96 = v3[84];
    v97 = v3[85];
    v315 = 44;
    sub_1000A0A80();
    v98 = v3[86];
    v99 = v3[87];
    v315 = 45;
    sub_1000A0A80();
    v100 = v3[88];
    v101 = v3[89];
    v315 = 46;
    sub_1000A0A80();
    v102 = v3[90];
    v103 = v3[91];
    v315 = 47;
    sub_1000A0A80();
    v104 = v3[92];
    v105 = v3[93];
    v315 = 48;
    sub_1000A0A80();
    v106 = v3[94];
    v107 = v3[95];
    v315 = 49;
    sub_1000A0A80();
    v108 = v3[96];
    v109 = v3[97];
    v315 = 50;
    sub_1000A0A80();
    v110 = v3[98];
    v111 = v3[99];
    v315 = 51;
    sub_1000A0A80();
    v112 = v3[100];
    v113 = v3[101];
    v315 = 52;
    sub_1000A0A80();
    v114 = v3[102];
    v115 = v3[103];
    v315 = 53;
    sub_1000A0A80();
    v116 = v3[104];
    v117 = v3[105];
    v315 = 54;
    sub_1000A0A80();
    v118 = v3[106];
    v119 = v3[107];
    v315 = 55;
    sub_1000A0A80();
    v120 = v3[108];
    v121 = v3[109];
    v315 = 56;
    sub_1000A0A80();
    v122 = v3[110];
    v123 = v3[111];
    v315 = 57;
    sub_1000A0A80();
    v124 = v3[112];
    v125 = v3[113];
    v315 = 58;
    sub_1000A0A80();
    v126 = v3[114];
    v127 = v3[115];
    v315 = 59;
    sub_1000A0A80();
    v128 = v3[116];
    v129 = v3[117];
    v315 = 60;
    sub_1000A0A80();
    v130 = v3[118];
    v131 = v3[119];
    v315 = 61;
    sub_1000A0A80();
    v132 = v3[120];
    v133 = v3[121];
    v315 = 62;
    sub_1000A0A80();
    v134 = v3[122];
    v135 = v3[123];
    v315 = 63;
    sub_1000A0A80();
    v136 = v3[124];
    v137 = v3[125];
    v315 = 64;
    sub_1000A0A80();
    v138 = v3[126];
    v139 = v3[127];
    v315 = 65;
    sub_1000A0A80();
    v140 = v3[128];
    v141 = v3[129];
    v315 = 66;
    sub_1000A0A80();
    v142 = v3[130];
    v143 = v3[131];
    v315 = 67;
    sub_1000A0A80();
    v144 = v3[132];
    v145 = v3[133];
    v315 = 68;
    sub_1000A0A80();
    v146 = v3[134];
    v147 = v3[135];
    v315 = 69;
    sub_1000A0A80();
    v148 = v3[136];
    v149 = v3[137];
    v315 = 70;
    sub_1000A0A80();
    v150 = v3[138];
    v151 = v3[139];
    v315 = 71;
    sub_1000A0A80();
    v152 = v3[140];
    v153 = v3[141];
    v315 = 72;
    sub_1000A0A80();
    v154 = v3[142];
    v155 = v3[143];
    v315 = 73;
    sub_1000A0A80();
    v156 = v3[144];
    v157 = v3[145];
    v315 = 74;
    sub_1000A0A80();
    v158 = v3[146];
    v159 = v3[147];
    v315 = 75;
    sub_1000A0A80();
    v160 = v3[148];
    v161 = v3[149];
    v315 = 76;
    sub_1000A0A80();
    v162 = v3[150];
    v163 = v3[151];
    v315 = 77;
    sub_1000A0A80();
    v164 = v3[152];
    v165 = v3[153];
    v315 = 78;
    sub_1000A0A80();
    v166 = v3[154];
    v167 = v3[155];
    v315 = 79;
    sub_1000A0A80();
    v168 = v3[156];
    v169 = v3[157];
    v315 = 80;
    sub_1000A0A80();
    v170 = v3[158];
    v171 = v3[159];
    v315 = 81;
    sub_1000A0A80();
    v172 = v3[160];
    v173 = v3[161];
    v315 = 82;
    sub_1000A0A80();
    v174 = v3[162];
    v175 = v3[163];
    v315 = 83;
    sub_1000A0A80();
    v176 = v3[164];
    v177 = v3[165];
    v315 = 84;
    sub_1000A0A80();
    v178 = v3[166];
    v179 = v3[167];
    v315 = 85;
    sub_1000A0A80();
    v180 = v3[168];
    v181 = v3[169];
    v315 = 86;
    sub_1000A0A80();
    v182 = v3[170];
    v183 = v3[171];
    v315 = 87;
    sub_1000A0A80();
    v184 = v3[172];
    v185 = v3[173];
    v315 = 88;
    sub_1000A0A80();
    v186 = v3[174];
    v187 = v3[175];
    v315 = 89;
    sub_1000A0A80();
    v188 = v3[176];
    v189 = v3[177];
    v315 = 90;
    sub_1000A0A80();
    v190 = v3[178];
    v191 = v3[179];
    v315 = 91;
    sub_1000A0A80();
    v192 = v3[180];
    v193 = v3[181];
    v315 = 92;
    sub_1000A0A80();
    v194 = v3[182];
    v195 = v3[183];
    v315 = 93;
    sub_1000A0A80();
    v196 = v3[184];
    v197 = v3[185];
    v315 = 94;
    sub_1000A0A80();
    v198 = v3[186];
    v199 = v3[187];
    v315 = 95;
    sub_1000A0A80();
    v200 = v3[188];
    v201 = v3[189];
    v315 = 96;
    sub_1000A0A80();
    v202 = v3[190];
    v203 = v3[191];
    v315 = 97;
    sub_1000A0A80();
    v204 = v3[192];
    v205 = v3[193];
    v315 = 98;
    sub_1000A0A80();
    v206 = v3[194];
    v207 = v3[195];
    v315 = 99;
    sub_1000A0A80();
    v208 = v3[196];
    v209 = v3[197];
    v315 = 100;
    sub_1000A0A80();
    v210 = v3[198];
    v211 = v3[199];
    v315 = 101;
    sub_1000A0A80();
    v212 = v3[200];
    v213 = v3[201];
    v315 = 102;
    sub_1000A0A80();
    v214 = v3[202];
    v215 = v3[203];
    v315 = 103;
    sub_1000A0A80();
    v216 = v3[204];
    v217 = v3[205];
    v315 = 104;
    sub_1000A0A80();
    v218 = v3[206];
    v219 = v3[207];
    v315 = 105;
    sub_1000A0A80();
    v220 = v3[208];
    v221 = v3[209];
    v315 = 106;
    sub_1000A0A80();
    v222 = v3[210];
    v223 = v3[211];
    v315 = 107;
    sub_1000A0A80();
    v224 = v3[212];
    v225 = v3[213];
    v315 = 108;
    sub_1000A0A80();
    v226 = v3[214];
    v227 = v3[215];
    v315 = 109;
    sub_1000A0A80();
    v228 = v3[216];
    v229 = v3[217];
    v315 = 110;
    sub_1000A0A80();
    v230 = v3[218];
    v231 = v3[219];
    v315 = 111;
    sub_1000A0A80();
    v232 = v3[220];
    v233 = v3[221];
    v315 = 112;
    sub_1000A0A80();
    v234 = v3[222];
    v235 = v3[223];
    v315 = 113;
    sub_1000A0A80();
    v236 = v3[224];
    v237 = v3[225];
    v315 = 114;
    sub_1000A0A80();
    v238 = v3[226];
    v239 = v3[227];
    v315 = 115;
    sub_1000A0A80();
    v240 = v3[228];
    v241 = v3[229];
    v315 = 116;
    sub_1000A0A80();
    v242 = v3[230];
    v243 = v3[231];
    v315 = 117;
    sub_1000A0A80();
    v244 = v3[232];
    v245 = v3[233];
    v315 = 118;
    sub_1000A0A80();
    v246 = v3[234];
    v247 = v3[235];
    v315 = 119;
    sub_1000A0A80();
    v248 = v3[236];
    v249 = v3[237];
    v315 = 120;
    sub_1000A0A80();
    v250 = v3[238];
    v251 = v3[239];
    v315 = 121;
    sub_1000A0A80();
    v252 = v3[240];
    v253 = v3[241];
    v315 = 122;
    sub_1000A0A80();
    v254 = v3[242];
    v255 = v3[243];
    v315 = 123;
    sub_1000A0A80();
    v256 = v3[244];
    v257 = v3[245];
    v315 = 124;
    sub_1000A0A80();
    v258 = v3[246];
    v259 = v3[247];
    v315 = 125;
    sub_1000A0A80();
    v260 = v3[248];
    v261 = v3[249];
    v315 = 126;
    sub_1000A0A80();
    v262 = v3[250];
    v263 = v3[251];
    v315 = 127;
    sub_1000A0A80();
    v264 = v3[252];
    v265 = v3[253];
    v315 = 0x80;
    sub_1000A0A80();
    v266 = v3[254];
    v267 = v3[255];
    v315 = -127;
    sub_1000A0A80();
    v268 = v3[256];
    v269 = v3[257];
    v315 = -126;
    sub_1000A0A80();
    v270 = v3[258];
    v271 = v3[259];
    v315 = -125;
    sub_1000A0A80();
    v272 = v3[260];
    v273 = v3[261];
    v315 = -124;
    sub_1000A0A80();
    v274 = v3[262];
    v275 = v3[263];
    v315 = -123;
    sub_1000A0A80();
    v276 = v3[264];
    v277 = v3[265];
    v315 = -122;
    sub_1000A0A80();
    v278 = v3[266];
    v279 = v3[267];
    v315 = -121;
    sub_1000A0A80();
    v280 = v3[268];
    v281 = v3[269];
    v315 = -120;
    sub_1000A0A80();
    v282 = v3[270];
    v283 = v3[271];
    v315 = -119;
    sub_1000A0A80();
    v284 = v3[272];
    v285 = v3[273];
    v315 = -118;
    sub_1000A0A80();
    v286 = v3[274];
    v287 = v3[275];
    v315 = -117;
    sub_1000A0A80();
    v288 = v3[276];
    v289 = v3[277];
    v315 = -116;
    sub_1000A0A80();
    v290 = v3[278];
    v291 = v3[279];
    v315 = -115;
    sub_1000A0A80();
    v292 = v3[280];
    v293 = v3[281];
    v315 = -114;
    sub_1000A0A80();
    v294 = v3[282];
    v295 = v3[283];
    v315 = -113;
    sub_1000A0A80();
    v296 = v3[284];
    v297 = v3[285];
    v315 = -112;
    sub_1000A0A80();
    v298 = v3[286];
    v299 = v3[287];
    v315 = -111;
    sub_1000A0A80();
    v300 = v3[288];
    v301 = v3[289];
    v315 = -110;
    sub_1000A0A80();
    v302 = v3[290];
    v303 = v3[291];
    v315 = -109;
    sub_1000A0A80();
    v304 = v3[292];
    v305 = v3[293];
    v315 = -108;
    sub_1000A0A80();
    v306 = v3[294];
    v307 = v3[295];
    v315 = -107;
    sub_1000A0A80();
    v308 = v3[296];
    v309 = v3[297];
    v315 = -106;
    sub_1000A0A80();
    v310 = v3[298];
    v311 = v3[299];
    v315 = -105;
    sub_1000A0A80();
    v312 = v3[300];
    v313 = v3[301];
    v315 = -104;
    sub_1000A0A80();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_100011C0C()
{
  result = qword_1000D85F0;
  if (!qword_1000D85F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D85F0);
  }

  return result;
}

void *SafetyMonitorSchema.init(from:)@<X0>(void *a1@<X8>)
{
  result = sub_100012344(v4);
  if (!v1)
  {
    return memcpy(a1, v4, 0x970uLL);
  }

  return result;
}

uint64_t sub_100011CC4()
{
  v0 = sub_1000A0BE0();

  v1 = 0;
  result = 45;
  switch(v0)
  {
    case 0:
      goto LABEL_109;
    case 1:
      v1 = 1;
      goto LABEL_109;
    case 2:
      v1 = 2;
      goto LABEL_109;
    case 3:
      v1 = 3;
      goto LABEL_109;
    case 4:
      v1 = 4;
      goto LABEL_109;
    case 5:
      v1 = 5;
      goto LABEL_109;
    case 6:
      v1 = 6;
      goto LABEL_109;
    case 7:
      v1 = 7;
      goto LABEL_109;
    case 8:
      v1 = 8;
      goto LABEL_109;
    case 9:
      v1 = 9;
      goto LABEL_109;
    case 10:
      v1 = 10;
      goto LABEL_109;
    case 11:
      v1 = 11;
      goto LABEL_109;
    case 12:
      v1 = 12;
      goto LABEL_109;
    case 13:
      v1 = 13;
      goto LABEL_109;
    case 14:
      v1 = 14;
      goto LABEL_109;
    case 15:
      v1 = 15;
      goto LABEL_109;
    case 16:
      v1 = 16;
      goto LABEL_109;
    case 17:
      v1 = 17;
      goto LABEL_109;
    case 18:
      v1 = 18;
      goto LABEL_109;
    case 19:
      v1 = 19;
      goto LABEL_109;
    case 20:
      v1 = 20;
      goto LABEL_109;
    case 21:
      v1 = 21;
      goto LABEL_109;
    case 22:
      v1 = 22;
      goto LABEL_109;
    case 23:
      v1 = 23;
      goto LABEL_109;
    case 24:
      v1 = 24;
      goto LABEL_109;
    case 25:
      v1 = 25;
      goto LABEL_109;
    case 26:
      v1 = 26;
      goto LABEL_109;
    case 27:
      v1 = 27;
      goto LABEL_109;
    case 28:
      v1 = 28;
      goto LABEL_109;
    case 29:
      v1 = 29;
      goto LABEL_109;
    case 30:
      v1 = 30;
      goto LABEL_109;
    case 31:
      v1 = 31;
      goto LABEL_109;
    case 32:
      v1 = 32;
      goto LABEL_109;
    case 33:
      v1 = 33;
      goto LABEL_109;
    case 34:
      v1 = 34;
      goto LABEL_109;
    case 35:
      v1 = 35;
      goto LABEL_109;
    case 36:
      v1 = 36;
      goto LABEL_109;
    case 37:
      v1 = 37;
      goto LABEL_109;
    case 38:
      v1 = 38;
      goto LABEL_109;
    case 39:
      v1 = 39;
      goto LABEL_109;
    case 40:
      v1 = 40;
      goto LABEL_109;
    case 41:
      v1 = 41;
      goto LABEL_109;
    case 42:
      v1 = 42;
      goto LABEL_109;
    case 43:
      v1 = 43;
      goto LABEL_109;
    case 44:
      v1 = 44;
LABEL_109:
      result = v1;
      break;
    case 45:
      return result;
    case 46:
      result = 46;
      break;
    case 47:
      result = 47;
      break;
    case 48:
      result = 48;
      break;
    case 49:
      result = 49;
      break;
    case 50:
      result = 50;
      break;
    case 51:
      result = 51;
      break;
    case 52:
      result = 52;
      break;
    case 53:
      result = 53;
      break;
    case 54:
      result = 54;
      break;
    case 55:
      result = 55;
      break;
    case 56:
      result = 56;
      break;
    case 57:
      result = 57;
      break;
    case 58:
      result = 58;
      break;
    case 59:
      result = 59;
      break;
    case 60:
      result = 60;
      break;
    case 61:
      result = 61;
      break;
    case 62:
      result = 62;
      break;
    case 63:
      result = 63;
      break;
    case 64:
      result = 64;
      break;
    case 65:
      result = 65;
      break;
    case 66:
      result = 66;
      break;
    case 67:
      result = 67;
      break;
    case 68:
      result = 68;
      break;
    case 69:
      result = 69;
      break;
    case 70:
      result = 70;
      break;
    case 71:
      result = 71;
      break;
    case 72:
      result = 72;
      break;
    case 73:
      result = 73;
      break;
    case 74:
      result = 74;
      break;
    case 75:
      result = 75;
      break;
    case 76:
      result = 76;
      break;
    case 77:
      result = 77;
      break;
    case 78:
      result = 78;
      break;
    case 79:
      result = 79;
      break;
    case 80:
      result = 80;
      break;
    case 81:
      result = 81;
      break;
    case 82:
      result = 82;
      break;
    case 83:
      result = 83;
      break;
    case 84:
      result = 84;
      break;
    case 85:
      result = 85;
      break;
    case 86:
      result = 86;
      break;
    case 87:
      result = 87;
      break;
    case 88:
      result = 88;
      break;
    case 89:
      result = 89;
      break;
    case 90:
      result = 90;
      break;
    case 91:
      result = 91;
      break;
    case 92:
      result = 92;
      break;
    case 93:
      result = 93;
      break;
    case 94:
      result = 94;
      break;
    case 95:
      result = 95;
      break;
    case 96:
      result = 96;
      break;
    case 97:
      result = 97;
      break;
    case 98:
      result = 98;
      break;
    case 99:
      result = 99;
      break;
    case 100:
      result = 100;
      break;
    case 101:
      result = 101;
      break;
    case 102:
      result = 102;
      break;
    case 103:
      result = 103;
      break;
    case 104:
      result = 104;
      break;
    case 105:
      result = 105;
      break;
    case 106:
      result = 106;
      break;
    case 107:
      result = 107;
      break;
    case 108:
      result = 108;
      break;
    case 109:
      result = 109;
      break;
    case 110:
      result = 110;
      break;
    case 111:
      result = 111;
      break;
    case 112:
      result = 112;
      break;
    case 113:
      result = 113;
      break;
    case 114:
      result = 114;
      break;
    case 115:
      result = 115;
      break;
    case 116:
      result = 116;
      break;
    case 117:
      result = 117;
      break;
    case 118:
      result = 118;
      break;
    case 119:
      result = 119;
      break;
    case 120:
      result = 120;
      break;
    case 121:
      result = 121;
      break;
    case 122:
      result = 122;
      break;
    case 123:
      result = 123;
      break;
    case 124:
      result = 124;
      break;
    case 125:
      result = 125;
      break;
    case 126:
      result = 126;
      break;
    case 127:
      result = 127;
      break;
    default:
      if ((v0 - 128) >= 0x19)
      {
        result = 4294967193;
      }

      else
      {
        result = v0;
      }

      break;
  }

  return result;
}

uint64_t sub_100028CCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 2416))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100028D14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 2408) = 0;
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
    *(result + 2392) = 0u;
    *(result + 2376) = 0u;
    *(result + 2360) = 0u;
    *(result + 2344) = 0u;
    *(result + 2328) = 0u;
    *(result + 2312) = 0u;
    *(result + 2296) = 0u;
    *(result + 2280) = 0u;
    *(result + 2264) = 0u;
    *(result + 2248) = 0u;
    *(result + 2232) = 0u;
    *(result + 2216) = 0u;
    *(result + 2200) = 0u;
    *(result + 2184) = 0u;
    *(result + 2168) = 0u;
    *(result + 2152) = 0u;
    *(result + 2136) = 0u;
    *(result + 2120) = 0u;
    *(result + 2104) = 0u;
    *(result + 2088) = 0u;
    *(result + 2072) = 0u;
    *(result + 2056) = 0u;
    *(result + 2040) = 0u;
    *(result + 2024) = 0u;
    *(result + 2008) = 0u;
    *(result + 1992) = 0u;
    *(result + 1976) = 0u;
    *(result + 1960) = 0u;
    *(result + 1944) = 0u;
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 2416) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 2416) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SafetyMonitorSchema.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x68)
  {
    goto LABEL_17;
  }

  if (a2 + 152 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 152) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 152;
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

      return (*a1 | (v4 << 8)) - 152;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 152;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x99;
  v8 = v6 - 153;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SafetyMonitorSchema.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 152 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 152) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x68)
  {
    v4 = 0;
  }

  if (a2 > 0x67)
  {
    v5 = ((a2 - 104) >> 8) + 1;
    *result = a2 - 104;
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
    *result = a2 - 104;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100029138()
{
  result = qword_1000D85F8;
  if (!qword_1000D85F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D85F8);
  }

  return result;
}

unint64_t sub_100029190()
{
  result = qword_1000D8600;
  if (!qword_1000D8600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8600);
  }

  return result;
}

unint64_t sub_1000291E8()
{
  result = qword_1000D8608;
  if (!qword_1000D8608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8608);
  }

  return result;
}

Swift::Int sub_100029248()
{
  v1 = *v0;
  sub_1000A0C60();
  v2 = qword_1000A6E38[v1];
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_1000292A4()
{
  v1 = qword_1000A6E38[*v0];
  sub_1000A05B0();
}

Swift::Int sub_1000292E4()
{
  v1 = *v0;
  sub_1000A0C60();
  v2 = qword_1000A6E38[v1];
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10002933C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002A2A0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_1000293A0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10002A2A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000293D4(uint64_t a1)
{
  v2 = sub_1000296CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100029410(uint64_t a1)
{
  v2 = sub_1000296CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSSessionCancelSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000D8618, &qword_1000A6C60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_1000296CC();
  sub_1000A0CE0();
  v11 = *v3;
  LOBYTE(v22) = 0;
  sub_1000A0B70();
  if (!v2)
  {
    v12 = v3[1];
    v13 = v3[2];
    LOBYTE(v22) = 1;
    sub_1000A0B30();
    v14 = v3[3];
    v15 = v3[4];
    LOBYTE(v22) = 2;
    sub_1000A0B30();
    v16 = type metadata accessor for IDSSessionCancelSchema();
    v17 = *(v16 + 28);
    LOBYTE(v22) = 3;
    sub_10009F770();
    sub_100029BC4(&qword_1000D8628);
    sub_1000A0AD0();
    v18 = (v3 + *(v16 + 32));
    v19 = v18[1];
    v22 = *v18;
    v23 = v19;
    v21[15] = 4;
    sub_100005750(v22, v19);
    sub_100006804();
    sub_1000A0AD0();
    sub_1000057B0(v22, v23);
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1000296CC()
{
  result = qword_1000D8620;
  if (!qword_1000D8620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8620);
  }

  return result;
}

uint64_t type metadata accessor for IDSSessionCancelSchema()
{
  result = qword_1000D86A0;
  if (!qword_1000D86A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t IDSSessionCancelSchema.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_1000017BC(&qword_1000D8630, &qword_1000A6C68);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v22 - v6;
  v24 = sub_1000017BC(&qword_1000D8638, &qword_1000A6C70);
  v8 = *(v24 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v24);
  v11 = &v22 - v10;
  v12 = type metadata accessor for IDSSessionCancelSchema();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (&v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[3];
  v17 = a1[4];
  v25 = a1;
  sub_1000022C4(a1, v16);
  sub_1000296CC();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(v25);
  }

  v18 = v23;
  LOBYTE(v26) = 0;
  *v15 = sub_1000A0A10();
  LOBYTE(v26) = 1;
  v15[1] = sub_1000A09D0();
  v15[2] = v19;
  LOBYTE(v26) = 2;
  v15[3] = sub_1000A09D0();
  v15[4] = v20;
  sub_10009F770();
  LOBYTE(v26) = 3;
  sub_100029BC4(&qword_1000D8640);
  sub_1000A0970();
  sub_100029C08(v7, v15 + *(v12 + 28));
  v27 = 4;
  sub_100005424();
  sub_1000A0970();
  (*(v8 + 8))(v11, v24);
  *(v15 + *(v12 + 32)) = v26;
  sub_100029C78(v15, v18);
  sub_100002308(v25);
  return sub_100029CDC(v15);
}

uint64_t sub_100029B5C(uint64_t a1)
{
  v2 = sub_1000017BC(&qword_1000D8630, &qword_1000A6C68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100029BC4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10009F770();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100029C08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000D8630, &qword_1000A6C68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100029C78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSSessionCancelSchema();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100029CDC(uint64_t a1)
{
  v2 = type metadata accessor for IDSSessionCancelSchema();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100029D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000017BC(&qword_1000D8630, &qword_1000A6C68);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100029E4C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000017BC(&qword_1000D8630, &qword_1000A6C68);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100029EFC()
{
  sub_100029FA0();
  if (v0 <= 0x3F)
  {
    sub_100029FF8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100029FA0()
{
  if (!qword_1000D86B0)
  {
    sub_10009F770();
    v0 = sub_1000A07A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1000D86B0);
    }
  }
}

void sub_100029FF8()
{
  if (!qword_1000D86B8)
  {
    v0 = sub_1000A07A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1000D86B8);
    }
  }
}

uint64_t getEnumTagSinglePayload for IDSSessionCancelSchema.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for IDSSessionCancelSchema.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10002A19C()
{
  result = qword_1000D86F8;
  if (!qword_1000D86F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D86F8);
  }

  return result;
}

unint64_t sub_10002A1F4()
{
  result = qword_1000D8700;
  if (!qword_1000D8700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8700);
  }

  return result;
}

unint64_t sub_10002A24C()
{
  result = qword_1000D8708;
  if (!qword_1000D8708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8708);
  }

  return result;
}

uint64_t sub_10002A2A0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CB050;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10002A2EC(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000010;
  v3 = *a1;
  v4 = 0x80000001000A1F80;
  if (v3 == 1)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0xD000000000000011;
  }

  if (v3 == 1)
  {
    v6 = 0x80000001000A1F80;
  }

  else
  {
    v6 = 0x80000001000A1FA0;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6574614465736162;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE800000000000000;
  }

  if (*a2 != 1)
  {
    v2 = 0xD000000000000011;
    v4 = 0x80000001000A1FA0;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x6574614465736162;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000A0BD0();
  }

  return v11 & 1;
}

Swift::Int sub_10002A3C8()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10002A470()
{
  *v0;
  *v0;
  sub_1000A05B0();
}

Swift::Int sub_10002A504()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10002A5A8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002B298(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10002A5D8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xD000000000000010;
  v5 = 0x80000001000A1F80;
  if (v2 != 1)
  {
    v4 = 0xD000000000000011;
    v5 = 0x80000001000A1FA0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x6574614465736162;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10002A63C()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6574614465736162;
  }
}

uint64_t sub_10002A69C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10002B298(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10002A6D0(uint64_t a1)
{
  v2 = sub_10002A92C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002A70C(uint64_t a1)
{
  v2 = sub_10002A92C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AlignmentSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000D8710, &qword_1000A6E60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10002A92C();
  sub_1000A0CE0();
  v18 = 0;
  sub_10009F350();
  sub_10000D38C(&qword_1000D84A0);
  sub_1000A0B80();
  if (!v2)
  {
    v11 = type metadata accessor for AlignmentSchema();
    v12 = *(v11 + 20);
    v17 = 1;
    sub_1000A0B80();
    v13 = *(v3 + *(v11 + 24));
    v16 = 2;
    sub_1000A0B60();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_10002A92C()
{
  result = qword_1000D8718;
  if (!qword_1000D8718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8718);
  }

  return result;
}

uint64_t type metadata accessor for AlignmentSchema()
{
  result = qword_1000D8780;
  if (!qword_1000D8780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AlignmentSchema.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v35 = sub_10009F350();
  v33 = *(v35 - 8);
  v4 = *(v33 + 64);
  v5 = __chkstk_darwin(v35);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v34 = &v28 - v8;
  v9 = sub_1000017BC(&qword_1000D8720, &qword_1000A6E68);
  v36 = *(v9 - 8);
  v37 = v9;
  v10 = *(v36 + 64);
  __chkstk_darwin(v9);
  v12 = &v28 - v11;
  v13 = type metadata accessor for AlignmentSchema();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10002A92C();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  v30 = v16;
  v31 = a1;
  v29 = v13;
  v40 = 0;
  sub_10000D38C(&qword_1000D84B8);
  v18 = v34;
  v19 = v35;
  sub_1000A0A20();
  v34 = *(v33 + 32);
  (v34)(v30, v18, v19);
  v39 = 1;
  v20 = v7;
  sub_1000A0A20();
  v22 = v29;
  v21 = v30;
  (v34)(&v30[*(v29 + 20)], v20, v19);
  v38 = 2;
  v23 = sub_1000A0A00();
  v24 = v21;
  v25 = v31;
  v26 = v23;
  (*(v36 + 8))(v12, v37);
  *(v24 + *(v22 + 24)) = v26;
  sub_10002ADD0(v24, v32);
  sub_100002308(v25);
  return sub_10002AE34(v24);
}

uint64_t sub_10002ADD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlignmentSchema();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002AE34(uint64_t a1)
{
  v2 = type metadata accessor for AlignmentSchema();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002AED4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10009F350();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10002AF54(uint64_t a1, uint64_t a2)
{
  v4 = sub_10009F350();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10002AFC4()
{
  result = sub_10009F350();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlignmentSchema.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AlignmentSchema.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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