int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for URL();
  v26 = *(v3 - 8);
  v27 = v3;
  v4 = *(v26 + 64);
  __chkstk_darwin(v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ContainerLocation.ContainerType();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000A4D38 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100001CC0(v29, v30);
  v12 = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v13 = *(type metadata accessor for LogMessage() - 8);
  v14 = *(v13 + 80);
  v25[0] = *(v13 + 72);
  v25[1] = v12;
  v15 = swift_allocObject();
  v28 = xmmword_1000839C0;
  *(v15 + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100001D4C(v29);
  type metadata accessor for ContainerLocation();
  (*(v8 + 104))(v11, enum case for ContainerLocation.ContainerType.daemonOwner(_:), v7);
  qword_1000A6318 = ContainerLocation.__allocating_init(type:consumeSandboxToken:)();
  sub_100001D04(&qword_1000A4E18, &qword_1000839D8);
  inited = swift_initStackObject();
  *(inited + 16) = v28;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x8000000100086BC0;
  ContainerLocation.cacheDirectoryUrl.getter();
  v17 = URL.path(percentEncoded:)(0);
  (*(v26 + 8))(v6, v27);
  *(inited + 48) = v17;
  v18 = sub_1000020CC(inited);
  swift_setDeallocating();
  sub_1000021E0(inited + 32);
  qword_1000A6320 = v18;
  static Sandbox.initialize(profileName:extraParameters:)();
  TaskLocal.get()();
  sub_100001CC0(v29, v30);
  *(swift_allocObject() + 16) = v28;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100001D4C(v29);
  v19 = objc_opt_self();
  v20 = [v19 sharedURLCache];
  [v20 setMemoryCapacity:0];

  v21 = [v19 sharedURLCache];
  [v21 setDiskCapacity:0];

  v22 = objc_autoreleasePoolPush();
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_1000A4DF0 != -1)
  {
    swift_once();
  }

  v23 = qword_1000A6458;

  objc_autoreleasePoolPop(v22);
  qword_1000A6328 = v23;
  sub_100072058();
  return 0;
}

void *sub_100001CC0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100001D04(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100001D4C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_100001D98(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100001ECC(a1, a2, v6);
}

unint64_t sub_100001E10(char a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100083A98[a1]);
  v4 = Hasher._finalize()();

  return sub_100001F84(a1, v4);
}

unint64_t sub_100001E88(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100002004(a1, v4);
}

unint64_t sub_100001ECC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100001F84(char a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (qword_100083A98[*(*(v2 + 48) + result)] == qword_100083A98[a1])
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100002004(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000026A8(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100002704(v8);
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

unint64_t sub_1000020CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001D04(&qword_1000A4E50, &qword_100083A10);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100001D98(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t sub_1000021E0(uint64_t a1)
{
  v2 = sub_100001D04(&qword_1000A4E20, &qword_1000839E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100002248(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001D04(&qword_1000A4E40, &unk_100083A00);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100002758(v4, &v13, &qword_1000A4E48, &unk_100086440);
      v5 = v13;
      v6 = v14;
      result = sub_100001D98(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100002698(&v15, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100002378(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001D04(&qword_1000A4E38, &qword_1000839F8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_100001E10(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_100002458(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001D04(&qword_1000A4E60, ">m");
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100001D98(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_10000255C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001D04(&qword_1000A4E28, &qword_1000839E8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100002758(v4, v13, &qword_1000A4E30, &qword_1000839F0);
      result = sub_100001E88(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100002698(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

_OWORD *sub_100002698(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100002758(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001D04(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000027D0(uint64_t a1, int a2)
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

uint64_t sub_1000027F0(uint64_t result, int a2, int a3)
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

__n128 sub_10000282C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100002838(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002858(uint64_t result, int a2, int a3)
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

void sub_100002898(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1000028E4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LocalPreferences();
  v2 = static LocalPreferences.currentApplication.getter();
  v5[3] = &type metadata for DefaultBagProvider;
  v5[4] = &off_10009E9C0;
  a1[3] = type metadata accessor for BagManager();
  a1[4] = &off_10009E9D0;
  v3 = sub_1000061A4(a1);
  return sub_100014B94(v2, v5, v3);
}

uint64_t sub_100002960(uint64_t a1)
{
  v1[3] = a1;
  v2 = type metadata accessor for ContainerLocation.ContainerType();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_100002A20, 0, 0);
}

uint64_t sub_100002A20()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = type metadata accessor for ContainerLocation();
  (*(v2 + 104))(v1, enum case for ContainerLocation.ContainerType.daemonOwner(_:), v3);
  default argument 1 of ContainerLocation.init(type:consumeSandboxToken:)();
  v5 = ContainerLocation.__allocating_init(type:consumeSandboxToken:)();
  v0[2] = v5;
  ContainerLocationProtocol.prepare()();
  if (v6)
  {

    v7 = v0[6];
  }

  else
  {
    v10 = v0[6];
    v11 = v0[3];
    v11[3] = v4;
    v11[4] = &protocol witness table for ContainerLocation;
    *v11 = v5;
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_100002B38(uint64_t a1)
{
  v1[9] = a1;
  v2 = type metadata accessor for URL.DirectoryHint();
  v1[10] = v2;
  v3 = *(v2 - 8);
  v1[11] = v3;
  v4 = *(v3 + 64) + 15;
  v1[12] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v1[13] = v5;
  v6 = *(v5 - 8);
  v1[14] = v6;
  v7 = *(v6 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_100002C60, 0, 0);
}

uint64_t sub_100002C60()
{
  type metadata accessor for BaseObjectGraph();
  *(v0 + 136) = static BaseObjectGraph.current.getter();
  v1 = sub_100001D04(&qword_1000A4E78, &qword_100083AC8);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 144) = v3;
  *v3 = v0;
  v3[1] = sub_100002D30;

  return BaseObjectGraph.inject<A>(_:)(v0 + 16, v1, v1);
}

uint64_t sub_100002D30()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_100003048;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_100002E4C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100002E4C()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  v18 = *(v0 + 104);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  v6 = *(v0 + 80);
  v19 = *(v0 + 72);
  v20 = *(v0 + 152);
  v7 = *(v0 + 48);
  sub_100001CC0((v0 + 16), *(v0 + 40));
  dispatch thunk of ContainerLocationProtocol.cacheDirectoryUrl.getter();
  strcpy((v0 + 56), "JetPackCache");
  *(v0 + 69) = 0;
  *(v0 + 70) = -5120;
  (*(v4 + 104))(v5, enum case for URL.DirectoryHint.inferFromPath(_:), v6);
  sub_100006518();
  URL.appending<A>(path:directoryHint:)();
  (*(v4 + 8))(v5, v6);
  v8 = *(v3 + 8);
  (v8)(v2, v18);
  type metadata accessor for JetPackAssetDiskCache();
  static JetPackAssetDiskCache.prepareDefaultLocation(url:)();
  if (v20)
  {
    (v8)(*(v0 + 128), *(v0 + 104));
    sub_100001D4C((v0 + 16));
    v10 = *(v0 + 120);
    v9 = *(v0 + 128);
    v11 = *(v0 + 96);
  }

  else
  {
    v13 = *(v0 + 120);
    v15 = *(v0 + 96);
    v14 = *(v0 + 104);
    v16 = *(v0 + 128);
    v8();
    sub_100001D4C((v0 + 16));
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100003048()
{
  v1 = v0[17];

  v2 = v0[19];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[12];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000030D0(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for AssetSQLiteDatabase.Mode();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(type metadata accessor for URL() - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = type metadata accessor for JetPackAssetDiskCache.DefaultLocation();
  v1[7] = v6;
  v7 = *(v6 - 8);
  v1[8] = v7;
  v8 = *(v7 + 64) + 15;
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_100003218, 0, 0);
}

uint64_t sub_100003218()
{
  type metadata accessor for BaseObjectGraph();
  v0[10] = static BaseObjectGraph.current.getter();
  v1 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_1000032D0;
  v3 = v0[9];
  v4 = v0[7];

  return BaseObjectGraph.inject<A>(_:)(v3, v4, v4);
}

uint64_t sub_1000032D0()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_10000353C;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_1000033EC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000033EC()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 48);
  v16 = *(v0 + 56);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 24);
  type metadata accessor for AssetSQLiteDatabase();
  JetPackAssetDiskCache.DefaultLocation.databaseURL.getter();
  (*(v5 + 104))(v6, enum case for AssetSQLiteDatabase.Mode.daemon(_:), v7);
  v8 = AssetSQLiteDatabase.__allocating_init(url:mode:)();
  (*(v3 + 8))(v2, v16);
  v9 = *(v0 + 72);
  if (v1)
  {
    v10 = *(v0 + 40);
    v11 = *(v0 + 48);
  }

  else
  {
    v14 = *(v0 + 40);
    v13 = *(v0 + 48);
    **(v0 + 16) = v8;
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10000353C()
{
  v1 = v0[10];

  v2 = v0[12];
  v3 = v0[9];
  v5 = v0[5];
  v4 = v0[6];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000035E4()
{
  type metadata accessor for BaseObjectGraph();
  *(v0 + 32) = static BaseObjectGraph.current.getter();
  v1 = type metadata accessor for AssetSQLiteDatabase();
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_1000036A8;

  return BaseObjectGraph.inject<A>(_:)(v0 + 16, v1, v1);
}

uint64_t sub_1000036A8()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_100003840;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_1000037C4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000037C4()
{
  v2 = v0[2];
  v1 = v0[3];
  type metadata accessor for JetPackAssetDiskCacheSQLiteMetadataStore();
  *v1 = JetPackAssetDiskCacheSQLiteMetadataStore.__allocating_init(database:)();
  v3 = v0[1];

  return v3();
}

uint64_t sub_100003840()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_1000038A4(uint64_t a1)
{
  v1[3] = a1;
  v2 = *(*(type metadata accessor for URL() - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v3 = type metadata accessor for JetPackAssetDiskCache.DefaultLocation();
  v1[5] = v3;
  v4 = *(v3 - 8);
  v1[6] = v4;
  v5 = *(v4 + 64) + 15;
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_100003990, 0, 0);
}

uint64_t sub_100003990()
{
  v0[8] = type metadata accessor for BaseObjectGraph();
  v0[9] = static BaseObjectGraph.current.getter();
  v1 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_100003A4C;
  v3 = v0[7];
  v4 = v0[5];

  return BaseObjectGraph.inject<A>(_:)(v3, v4, v4);
}

uint64_t sub_100003A4C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_100003EA0;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_100003B68;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100003B68()
{
  v1 = v0[8];
  v0[12] = static BaseObjectGraph.current.getter();
  v2 = type metadata accessor for JetPackAssetDiskCacheSQLiteMetadataStore();
  v0[13] = v2;
  v3 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_100003C28;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v2, v2);
}

uint64_t sub_100003C28()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 96);

  if (v0)
  {
    v6 = sub_100003F18;
  }

  else
  {
    v6 = sub_100003D5C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100003D5C()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[7];
  v4 = v0[4];
  v5 = v0[2];
  type metadata accessor for JetPackAssetDiskCache();
  JetPackAssetDiskCache.DefaultLocation.assetsURL.getter();

  v6 = JetPackAssetDiskCache.__allocating_init(assetsURL:metadataStore:)();
  v8 = v0[6];
  v7 = v0[7];
  if (v1)
  {
    (*(v8 + 8))(v7, v0[5]);

    v9 = v0[7];
    v10 = v0[4];
  }

  else
  {
    v13 = v0[3];
    v12 = v0[4];
    v14 = v0[7];
    (*(v8 + 8))(v7);

    *v13 = v6;
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100003EA0()
{
  v1 = v0[9];

  v2 = v0[11];
  v3 = v0[7];
  v4 = v0[4];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100003F18()
{
  (*(v0[6] + 8))(v0[7], v0[5]);
  v1 = v0[15];
  v2 = v0[7];
  v3 = v0[4];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100003FC0()
{
  type metadata accessor for BaseObjectGraph();
  *(v0 + 32) = static BaseObjectGraph.current.getter();
  v1 = type metadata accessor for AssetSQLiteDatabase();
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_100004084;

  return BaseObjectGraph.inject<A>(_:)(v0 + 16, v1, v1);
}

uint64_t sub_100004084()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_10000656C;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_1000041A0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000041A0()
{
  v1 = v0[2];
  v2 = v0[3];
  v2[3] = type metadata accessor for AssetPushSubscriptionSQLiteStore();
  v2[4] = &protocol witness table for AssetPushSubscriptionSQLiteStore;
  sub_1000061A4(v2);
  AssetPushSubscriptionSQLiteStore.init(database:)();
  v3 = v0[1];

  return v3();
}

uint64_t sub_100004248()
{
  v1 = v0[53];
  type metadata accessor for BaseObjectGraph();
  v0[54] = static BaseObjectGraph.current.getter();
  v0[26] = type metadata accessor for SystemDateProvider();
  v0[27] = &protocol witness table for SystemDateProvider;
  sub_1000061A4(v0 + 23);
  SystemDateProvider.init()();
  v2 = [objc_opt_self() sharedScheduler];
  v0[31] = sub_1000063C0();
  v0[32] = &off_10009F4F8;
  v0[28] = v2;
  v0[36] = &type metadata for DefaultRandomizer;
  v0[37] = &off_10009FAC8;
  v1[3] = &type metadata for Scheduler;
  v1[4] = &off_10009FA88;
  v3 = swift_allocObject();
  v0[55] = v3;
  *v1 = v3;
  v4 = sub_100001D04(&unk_1000A5730, &unk_100084200);
  v5 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v6 = swift_task_alloc();
  v0[56] = v6;
  *v6 = v0;
  v6[1] = sub_1000043C8;

  return BaseObjectGraph.inject<A>(_:)(v0 + 38, v4, v4);
}

uint64_t sub_1000043C8()
{
  v2 = *(*v1 + 448);
  v5 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v3 = sub_1000046B8;
  }

  else
  {
    v3 = sub_1000044DC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000044DC()
{
  sub_10000626C((v0 + 304), v0 + 16);
  v1 = sub_100001D04(&qword_1000A4E70, &qword_100083C20);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 464) = v3;
  *v3 = v0;
  v3[1] = sub_1000045A4;
  v4 = *(v0 + 432);

  return BaseObjectGraph.inject<A>(_:)(v0 + 344, v1, v1);
}

uint64_t sub_1000045A4()
{
  v2 = *(*v1 + 464);
  v5 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    v3 = sub_10000484C;
  }

  else
  {
    v3 = sub_10000473C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000046B8()
{
  v1 = *(v0 + 432);

  sub_100001D4C((v0 + 264));
  sub_100001D4C((v0 + 184));
  sub_100001D4C((v0 + 224));
  v2 = *(v0 + 456);
  sub_100006464(*(v0 + 424));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10000473C()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 440);
  sub_10000626C((v0 + 344), v0 + 56);
  sub_1000064B4(v0 + 184, v0 + 96);
  sub_100001D04(&qword_1000A4EC0, &qword_100083B38);
  sub_1000064B4(v0 + 224, v0 + 384);
  v3 = SendableWrapper.__allocating_init(_:)();

  sub_100001D4C((v0 + 184));
  sub_100001D4C((v0 + 224));
  *(v0 + 136) = v3;
  sub_10000626C((v0 + 264), v0 + 144);
  v5 = *(v0 + 32);
  v4 = *(v0 + 48);
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v5;
  *(v2 + 48) = v4;
  v6 = *(v0 + 112);
  v8 = *(v0 + 64);
  v7 = *(v0 + 80);
  *(v2 + 96) = *(v0 + 96);
  *(v2 + 112) = v6;
  *(v2 + 64) = v8;
  *(v2 + 80) = v7;
  v10 = *(v0 + 144);
  v9 = *(v0 + 160);
  v11 = *(v0 + 128);
  *(v2 + 176) = *(v0 + 176);
  *(v2 + 144) = v10;
  *(v2 + 160) = v9;
  *(v2 + 128) = v11;
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10000484C()
{
  v1 = *(v0 + 432);

  sub_100001D4C((v0 + 264));
  sub_100001D4C((v0 + 184));
  sub_100001D4C((v0 + 224));
  sub_100001D4C((v0 + 16));
  v2 = *(v0 + 472);
  sub_100006464(*(v0 + 424));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000048F8()
{
  type metadata accessor for BaseObjectGraph();
  v1 = static BaseObjectGraph.current.getter();
  if (qword_1000A4D20 != -1)
  {
    swift_once();
  }

  v2 = qword_1000A6370;
  type metadata accessor for LocalPreferences();
  v3 = v2;
  v4 = static LocalPreferences.currentApplication.getter();
  v0[5] = type metadata accessor for SystemDateProvider();
  v0[6] = &protocol witness table for SystemDateProvider;
  sub_1000061A4(v0 + 2);
  SystemDateProvider.init()();
  v5 = type metadata accessor for PushManager();
  v0[8] = v5;
  objc_allocWithZone(v5);
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_100004A40;

  return sub_100024D24(v1, v3, v4, (v0 + 2));
}

uint64_t sub_100004A40(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v7 = sub_100004B98;
  }

  else
  {
    *(v4 + 88) = a1;
    v7 = sub_100004B68;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100004B68()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  v2[3] = *(v0 + 64);
  v2[4] = &off_10009F238;
  *v2 = v1;
  return (*(v0 + 8))();
}

uint64_t sub_100004BD0()
{
  type metadata accessor for BaseObjectGraph();
  *(v0 + 104) = static BaseObjectGraph.current.getter();
  v1 = sub_100001D04(&qword_1000A4E98, &qword_100083B18);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_100004CA0;

  return BaseObjectGraph.inject<A>(_:)(v0 + 16, v1, v1);
}

uint64_t sub_100004CA0()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_100004EA8;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_100004DBC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100004DBC()
{
  v1 = v0[12];
  sub_1000064B4((v0 + 2), (v0 + 7));
  sub_100006284();
  v4 = swift_allocObject();
  sub_100006310((v0 + 7), v4 + 16);
  default argument 0 of CoreAnalyticsLogger.init(provider:decorator:)();
  v1[3] = type metadata accessor for CoreAnalyticsLogger();
  v1[4] = &protocol witness table for CoreAnalyticsLogger;
  sub_1000061A4(v1);
  CoreAnalyticsLogger.init(provider:decorator:)();
  sub_10000636C((v0 + 7));
  sub_100001D4C(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t sub_100004EA8()
{
  v1 = v0[13];

  v2 = v0[1];
  v3 = v0[15];

  return v2();
}

uint64_t sub_100004F0C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LocalPreferences();
  v2 = static LocalPreferences.currentApplication.getter();
  v3 = type metadata accessor for KillSwitchManager();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  result = PreferenceKey.init(_:)();
  *(v6 + OBJC_IVAR____TtC13jetpackassetd17KillSwitchManager_localPreferences) = v2;
  *a1 = v6;
  a1[1] = &off_10009FEB8;
  return result;
}

uint64_t sub_100004FC0@<X0>(uint64_t *a1@<X8>)
{
  UnlockChecker = type metadata accessor for DefaultBeforeFirstUnlockChecker();
  result = swift_allocObject();
  a1[3] = UnlockChecker;
  a1[4] = &off_10009EEE0;
  *a1 = result;
  return result;
}

uint64_t sub_100005040()
{
  v0[23] = type metadata accessor for BaseObjectGraph();
  v0[24] = static BaseObjectGraph.current.getter();
  v1 = sub_100001D04(&qword_1000A4E70, &qword_100083C20);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[25] = v3;
  *v3 = v0;
  v3[1] = sub_100005114;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_100005114()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v7 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = sub_100005588;
  }

  else
  {
    v5 = *(v2 + 192);

    v4 = sub_100005230;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100005230()
{
  v1 = v0[23];
  v0[27] = static BaseObjectGraph.current.getter();
  v2 = sub_100001D04(&qword_1000A4EA0, &qword_100083B20);
  v3 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v4 = swift_task_alloc();
  v0[28] = v4;
  *v4 = v0;
  v4[1] = sub_1000052F8;

  return BaseObjectGraph.inject<A>(_:)(v0 + 7, v2, v2);
}

uint64_t sub_1000052F8()
{
  v2 = *(*v1 + 224);
  v3 = *(*v1 + 216);
  v6 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v4 = sub_1000055EC;
  }

  else
  {
    v4 = sub_100005428;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100005428()
{
  v1 = v0[22];
  sub_1000064B4((v0 + 2), (v0 + 12));
  sub_1000064B4((v0 + 7), (v0 + 17));
  v2 = v0[15];
  v3 = sub_100006154((v0 + 12), v2);
  v4 = *(v2 - 8);
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  (*(v4 + 16))(v6, v3, v2);
  sub_100006154((v0 + 17), v0[20]);
  v7 = sub_100005650(v6);
  sub_100001D4C(v0 + 17);
  sub_100001D4C(v0 + 12);

  v1[3] = type metadata accessor for MetricsPipelineManager();
  v1[4] = &off_1000A0070;
  *v1 = v7;
  sub_100001D4C(v0 + 7);
  sub_100001D4C(v0 + 2);
  v8 = v0[1];

  return v8();
}

uint64_t sub_100005588()
{
  v1 = v0[24];

  v2 = v0[26];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1000055EC()
{
  sub_100001D4C(v0 + 2);
  v1 = v0[29];
  v2 = v0[1];

  return v2();
}

uint64_t sub_100005650(uint64_t a1)
{
  v2 = type metadata accessor for BagManager();
  v26 = v2;
  v27 = &off_10009E9D0;
  v3 = sub_1000061A4(v25);
  sub_100006208(a1, v3);
  v24[3] = &type metadata for SystemRestrictions;
  v24[4] = &off_10009FEF8;
  v4 = type metadata accessor for MetricsPipelineManager();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  v8 = v26;
  v9 = sub_100006154(v25, v26);
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  sub_100006154(v24, &type metadata for SystemRestrictions);
  v22 = v2;
  v23 = &off_10009E9D0;
  v14 = sub_1000061A4(&v21);
  sub_100006208(v12, v14);
  v19 = &type metadata for SystemRestrictions;
  v20 = &off_10009FEF8;
  swift_defaultActor_initialize();
  v15 = OBJC_IVAR____TtC13jetpackassetd22MetricsPipelineManager_cachedPipeline;
  v16 = type metadata accessor for MetricsPipeline();
  (*(*(v16 - 8) + 56))(v7 + v15, 1, 1, v16);
  sub_10000626C(&v21, v7 + OBJC_IVAR____TtC13jetpackassetd22MetricsPipelineManager_bagManager);
  sub_10000626C(&v18, v7 + OBJC_IVAR____TtC13jetpackassetd22MetricsPipelineManager_restrictions);
  sub_100001D4C(v24);
  sub_100001D4C(v25);
  return v7;
}

uint64_t sub_100005834()
{
  v57 = type metadata accessor for Dependency();
  v46 = *(v57 - 8);
  v0 = v46;
  v1 = *(v46 + 64);
  v2 = __chkstk_darwin(v57);
  v53 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v51 = v42 - v5;
  v6 = __chkstk_darwin(v4);
  v49 = v42 - v7;
  v8 = __chkstk_darwin(v6);
  v48 = v42 - v9;
  v10 = __chkstk_darwin(v8);
  v58 = v42 - v11;
  v12 = __chkstk_darwin(v10);
  v59 = v42 - v13;
  v14 = __chkstk_darwin(v12);
  v47 = v42 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = v42 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = v42 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = v42 - v23;
  v25 = __chkstk_darwin(v22);
  v50 = v42 - v26;
  v27 = __chkstk_darwin(v25);
  v52 = v42 - v28;
  v29 = __chkstk_darwin(v27);
  v54 = v42 - v30;
  v31 = __chkstk_darwin(v29);
  v55 = v42 - v32;
  __chkstk_darwin(v31);
  v56 = v42 - v33;
  sub_100001D04(&qword_1000A4E70, &qword_100083C20);
  Dependency.init<A>(satisfying:with:)();
  sub_100001D04(&qword_1000A4E78, &qword_100083AC8);
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for JetPackAssetDiskCache.DefaultLocation();
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for AssetSQLiteDatabase();
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for JetPackAssetDiskCacheSQLiteMetadataStore();
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for JetPackAssetDiskCache();
  v45 = v24;
  Dependency.init<A>(satisfying:with:)();
  sub_100001D04(&unk_1000A5730, &unk_100084200);
  v44 = v21;
  Dependency.init<A>(satisfying:with:)();
  sub_100001D04(&qword_1000A4E80, &unk_100083BC0);
  v43 = v18;
  Dependency.init<A>(satisfying:with:)();
  sub_100001D04(&qword_1000A4E88, &qword_100085E20);
  Dependency.init<A>(satisfying:with:)();
  sub_100001D04(&unk_1000A5740, &unk_100085540);
  Dependency.init<A>(satisfying:with:)();
  sub_100001D04(&unk_1000A5750, &unk_100085550);
  Dependency.init<A>(satisfying:with:)();
  sub_100001D04(&qword_1000A4E90, &unk_100085E40);
  Dependency.init<A>(satisfying:with:)();
  sub_100001D04(&qword_1000A4E98, &qword_100083B18);
  Dependency.init<A>(satisfying:with:)();
  sub_100001D04(&qword_1000A4EA0, &qword_100083B20);
  Dependency.init<A>(satisfying:with:)();
  sub_100001D04(&qword_1000A5760, &qword_100085560);
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for BaseObjectGraph();
  sub_100001D04(&qword_1000A4EA8, &qword_100083B30);
  v34 = *(v46 + 72);
  v35 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1000839C0;
  (*(v0 + 16))(v36 + v35, v56, v57);
  v42[7] = BaseObjectGraph.__allocating_init(name:_:)();
  v42[6] = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  v42[5] = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  v42[4] = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  v42[3] = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  v42[2] = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  v42[1] = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  v37 = v51;
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  v38 = v53;
  v46 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v39 = *(v0 + 8);
  v40 = v57;
  v39(v38, v57);
  v39(v37, v40);
  v39(v49, v40);
  v39(v48, v40);
  v39(v58, v40);
  v39(v59, v40);
  v39(v47, v40);
  v39(v43, v40);
  v39(v44, v40);
  v39(v45, v40);
  v39(v50, v40);
  v39(v52, v40);
  v39(v54, v40);
  v39(v55, v40);
  v39(v56, v40);
  return v46;
}

uint64_t sub_100006154(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t *sub_1000061A4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100006208(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BagManager();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000626C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_100006284()
{
  result = qword_1000A4EB0;
  if (!qword_1000A4EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4EB0);
  }

  return result;
}

uint64_t sub_1000062D8()
{
  sub_100001D4C((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_1000063C0()
{
  result = qword_1000A4EB8;
  if (!qword_1000A4EB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000A4EB8);
  }

  return result;
}

uint64_t sub_10000640C()
{
  sub_100001D4C(v0 + 2);
  sub_100001D4C(v0 + 7);
  sub_100001D4C(v0 + 12);
  v1 = v0[17];

  sub_100001D4C(v0 + 18);

  return _swift_deallocObject(v0, 184, 7);
}

uint64_t *sub_100006464(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64);
  }

  return result;
}

uint64_t sub_1000064B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100006518()
{
  result = qword_1000A4EC8;
  if (!qword_1000A4EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4EC8);
  }

  return result;
}

uint64_t sub_100006570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[34] = a6;
  v7[35] = a7;
  v7[32] = a4;
  v7[33] = a5;
  v7[30] = a2;
  v7[31] = a3;
  v7[29] = a1;
  v8 = *(*(sub_100001D04(&qword_1000A4EE8, &qword_100083C08) - 8) + 64) + 15;
  v7[36] = swift_task_alloc();
  v9 = type metadata accessor for JetPackAsset();
  v7[37] = v9;
  v10 = *(v9 - 8);
  v7[38] = v10;
  v11 = *(v10 + 64) + 15;
  v7[39] = swift_task_alloc();
  v12 = *(*(type metadata accessor for JetPackAssetSession.Configuration() - 8) + 64) + 15;
  v7[40] = swift_task_alloc();
  v13 = *(*(sub_100001D04(&qword_1000A4EF0, &unk_100083C10) - 8) + 64) + 15;
  v7[41] = swift_task_alloc();
  v14 = type metadata accessor for URLJetPackAssetFetcher();
  v7[42] = v14;
  v15 = *(v14 - 8);
  v7[43] = v15;
  v16 = *(v15 + 64) + 15;
  v7[44] = swift_task_alloc();
  v17 = sub_100001D04(&qword_1000A4E78, &qword_100083AC8);
  v18 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v19 = swift_task_alloc();
  v7[45] = v19;
  *v19 = v7;
  v19[1] = sub_100006790;

  return BaseObjectGraph.inject<A>(_:)(v7 + 2, v17, v17);
}

uint64_t sub_100006790()
{
  v2 = *(*v1 + 360);
  v3 = *v1;
  v3[46] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100007A84, 0, 0);
  }

  else
  {
    v4 = type metadata accessor for JetPackAssetDiskCache();
    v3[47] = v4;
    v5 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v6 = swift_task_alloc();
    v3[48] = v6;
    *v6 = v3;
    v6[1] = sub_10000692C;
    v7 = v3[33];

    return BaseObjectGraph.inject<A>(_:)(v3 + 27, v4, v4);
  }
}

uint64_t sub_10000692C()
{
  v2 = *(*v1 + 384);
  v5 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v3 = sub_100007B24;
  }

  else
  {
    v3 = sub_100006A40;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100006A40()
{
  v0[50] = v0[27];
  v1 = sub_100001D04(&qword_1000A4E70, &qword_100083C20);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[51] = v3;
  *v3 = v0;
  v3[1] = sub_100006B04;
  v4 = v0[33];

  return BaseObjectGraph.inject<A>(_:)(v0 + 7, v1, v1);
}

uint64_t sub_100006B04()
{
  v2 = *(*v1 + 408);
  v5 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v3 = sub_100007BCC;
  }

  else
  {
    v3 = sub_100006C18;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100006C18()
{
  v1 = v0[50];
  v23 = v0[44];
  v24 = v0[47];
  v2 = v0[41];
  v25 = v0[40];
  v4 = v0[34];
  v3 = v0[35];
  v6 = v0[31];
  v5 = v0[32];
  v7 = [objc_opt_self() ephemeralSessionConfiguration];
  v0[53] = v7;
  [v7 setTimeoutIntervalForRequest:30.0];
  v8 = String._bridgeToObjectiveC()();
  [v7 set_sourceApplicationBundleIdentifier:v8];

  [v7 setURLCache:0];
  sub_100001CC0(v0 + 7, v0[10]);
  sub_1000168D4();
  v9 = v0[6];
  sub_100001CC0(v0 + 2, v0[5]);
  v10 = v7;
  dispatch thunk of ContainerLocationProtocol.tmpDirectoryUrl.getter();
  v11 = type metadata accessor for URL();
  (*(*(v11 - 8) + 56))(v2, 0, 1, v11);
  sub_10000DC48(v4);
  URLJetPackAssetFetcher.init(bagPromise:urlSessionConfiguration:downloadsBaseURL:urlSessionFactoryProvider:)();

  JetPackAssetSession.Configuration.init(cache:)();
  v12 = type metadata accessor for JetPackAssetSession();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v0[54] = JetPackAssetSession.init(configuration:)();
  v15 = async function pointer to JetPackAssetSession.jetPack<A>(for:fetcher:)[1];
  v16 = swift_task_alloc();
  v0[55] = v16;
  v17 = sub_10000DC58(&qword_1000A4EF8, &type metadata accessor for URLJetPackAssetFetcher);
  *v16 = v0;
  v16[1] = sub_100006EA8;
  v18 = v0[44];
  v19 = v0[42];
  v20 = v0[39];
  v21 = v0[30];

  return JetPackAssetSession.jetPack<A>(for:fetcher:)(v20, v21, v18, v19, v17);
}

uint64_t sub_100006EA8()
{
  v2 = *(*v1 + 440);
  v5 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v3 = sub_100007C7C;
  }

  else
  {
    v3 = sub_100006FBC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100006FBC()
{
  v1 = v0[39];
  if (JetPackAsset.wasReadFromCache.getter())
  {
    v3 = v0[38];
    v2 = v0[39];
    v4 = v0[37];
    v5 = v0[29];
    static OSLogger.jetPackAssets.getter();
    v6 = v0[26];
    sub_100001CC0(v0 + 22, v0[25]);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v7 = *(type metadata accessor for LogMessage() - 8);
    v8 = *(v7 + 72);
    v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    sub_100001D4C(v0 + 22);
    (*(v3 + 16))(v5, v2, v4);
    v11 = v0[53];
    v10 = v0[54];
    v12 = v0[50];
    v14 = v0[43];
    v13 = v0[44];
    v15 = v0[42];
    v16 = v0[39];
    v18 = v0[37];
    v17 = v0[38];
    v25 = v0[36];
    sub_100007FC8(v16, v0 + 2);

    (*(v17 + 8))(v16, v18);
    (*(v14 + 8))(v13, v15);
    sub_100001D4C(v0 + 7);
    sub_100001D4C(v0 + 2);

    v19 = v0[1];

    return v19();
  }

  else
  {
    v21 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v22 = swift_task_alloc();
    v0[57] = v22;
    *v22 = v0;
    v22[1] = sub_100007290;
    v23 = v0[47];
    v24 = v0[33];

    return BaseObjectGraph.inject<A>(_:)(v0 + 28, v23, v23);
  }
}

uint64_t sub_100007290()
{
  v2 = *(*v1 + 456);
  v5 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v3 = sub_100007D64;
  }

  else
  {
    v3 = sub_1000073A4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000073A4()
{
  v1 = v0[39];
  v0[59] = v0[28];
  v2 = JetPackAsset.cacheKey.getter();
  v4 = v3;
  v0[60] = v3;
  v5 = async function pointer to JetPackAssetDiskCache._asset(for:)[1];
  v6 = swift_task_alloc();
  v0[61] = v6;
  *v6 = v0;
  v6[1] = sub_10000746C;
  v7 = v0[36];

  return JetPackAssetDiskCache._asset(for:)(v7, v2, v4);
}

uint64_t sub_10000746C()
{
  v2 = *v1;
  v3 = *(*v1 + 488);
  v7 = *v1;
  *(*v1 + 496) = v0;

  if (v0)
  {
    v4 = sub_100007E8C;
  }

  else
  {
    v5 = *(v2 + 480);

    v4 = sub_100007588;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100007588()
{
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[36];
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = v0[59];
  if (v4 == 1)
  {
    v35 = v0[54];
    v36 = v0[50];
    v6 = v0[43];
    v39 = v0[44];
    v37 = v0[53];
    v38 = v0[42];
    v34 = v0[39];
    sub_10000DCA0(v3, &qword_1000A4EE8, &qword_100083C08);
    static OSLogger.jetPackAssets.getter();
    v7 = v0[16];
    sub_100001CC0(v0 + 12, v0[15]);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v8 = *(type metadata accessor for LogMessage() - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    sub_100001D4C(v0 + 12);
    v11 = type metadata accessor for JetPackError();
    sub_10000DC58(&qword_1000A4F00, &type metadata accessor for JetPackError);
    swift_allocError();
    (*(*(v11 - 8) + 104))(v12, enum case for JetPackError.cachedAssetNotFound(_:), v11);
    swift_willThrow();

    sub_100007FC8(v34, v0 + 2);

    (*(v2 + 8))(v34, v1);
    (*(v6 + 8))(v39, v38);
    sub_100001D4C(v0 + 7);
    sub_100001D4C(v0 + 2);
    v13 = v0[44];
    v15 = v0[40];
    v14 = v0[41];
    v16 = v0[39];
    v17 = v0[36];
  }

  else
  {
    v19 = v0[39];
    (*(v2 + 32))(v0[29], v3, v1);
    JetPackAsset.channelID.getter();
    JetPackAsset.channelID.setter();
    JetPackAsset.wasReadFromCache.setter();
    static OSLogger.jetPackAssets.getter();
    v20 = v0[21];
    sub_100001CC0(v0 + 17, v0[20]);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v21 = *(type metadata accessor for LogMessage() - 8);
    v22 = *(v21 + 72);
    v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    sub_100001D4C(v0 + 17);
    v25 = v0[53];
    v24 = v0[54];
    v26 = v0[50];
    v28 = v0[43];
    v27 = v0[44];
    v29 = v0[42];
    v30 = v0[39];
    v32 = v0[37];
    v31 = v0[38];
    v40 = v0[36];
    sub_100007FC8(v30, v0 + 2);

    (*(v31 + 8))(v30, v32);
    (*(v28 + 8))(v27, v29);
    sub_100001D4C(v0 + 7);
    sub_100001D4C(v0 + 2);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_100007A84()
{
  v1 = v0[46];
  v2 = v0[44];
  v4 = v0[40];
  v3 = v0[41];
  v5 = v0[39];
  v6 = v0[36];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100007B24()
{
  sub_100001D4C(v0 + 2);
  v1 = v0[49];
  v2 = v0[44];
  v4 = v0[40];
  v3 = v0[41];
  v5 = v0[39];
  v6 = v0[36];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100007BCC()
{
  v1 = v0[50];

  sub_100001D4C(v0 + 2);
  v2 = v0[52];
  v3 = v0[44];
  v5 = v0[40];
  v4 = v0[41];
  v6 = v0[39];
  v7 = v0[36];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100007C7C()
{
  v2 = v0[53];
  v1 = v0[54];
  v3 = v0[50];
  v5 = v0[43];
  v4 = v0[44];
  v6 = v0[42];

  (*(v5 + 8))(v4, v6);
  sub_100001D4C(v0 + 7);
  sub_100001D4C(v0 + 2);
  v7 = v0[56];
  v8 = v0[44];
  v10 = v0[40];
  v9 = v0[41];
  v11 = v0[39];
  v12 = v0[36];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100007D64()
{
  v2 = v0[53];
  v1 = v0[54];
  v3 = v0[50];
  v5 = v0[43];
  v4 = v0[44];
  v6 = v0[42];
  v8 = v0[38];
  v7 = v0[39];
  v9 = v0[37];
  sub_100007FC8(v7, v0 + 2);

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  sub_100001D4C(v0 + 7);
  sub_100001D4C(v0 + 2);
  v10 = v0[58];
  v11 = v0[44];
  v13 = v0[40];
  v12 = v0[41];
  v14 = v0[39];
  v15 = v0[36];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100007E8C()
{
  v1 = v0[59];
  v2 = v0[60];
  v4 = v0[53];
  v3 = v0[54];
  v5 = v0[50];
  v6 = v0[43];
  v19 = v0[44];
  v7 = v0[42];
  v8 = v0[38];
  v9 = v0[39];
  v10 = v0[37];

  sub_100007FC8(v9, v0 + 2);

  (*(v8 + 8))(v9, v10);
  (*(v6 + 8))(v19, v7);
  sub_100001D4C(v0 + 7);
  sub_100001D4C(v0 + 2);
  v11 = v0[62];
  v12 = v0[44];
  v14 = v0[40];
  v13 = v0[41];
  v15 = v0[39];
  v16 = v0[36];

  v17 = v0[1];

  return v17();
}

uint64_t sub_100007FC8(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for LogMessage.StringInterpolation();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100001D04(&qword_1000A4F08, &qword_100083C28);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v41 - v12;
  result = JetPackAsset.wasReadFromCache.getter();
  if ((result & 1) == 0)
  {
    JetPackAsset.streamSource.getter();
    sub_100001D04(&qword_1000A4F10, &qword_100083C30);
    v15 = type metadata accessor for JetPackFileStreamSource();
    v16 = swift_dynamicCast();
    v17 = *(*(v15 - 8) + 56);
    if (v16)
    {
      v18 = *(v15 - 8);
      v17(v13, 0, 1, v15);
      v19 = JetPackFileStreamSource.path.getter();
      v21 = v20;
      (*(v18 + 8))(v13, v15);
      v22 = v19;
      v23 = a2[4];
      sub_100001CC0(a2, a2[3]);
      dispatch thunk of ContainerLocationProtocol.tmpDirectoryUrl.getter();
      v24 = URL.path(percentEncoded:)(0);
      (*(v6 + 8))(v9, v5);
      LOBYTE(v19) = String.hasPrefix(_:)(v24);

      if (v19)
      {
        static OSLogger.jetPackAssets.getter();
        sub_100001CC0(v49, v50);
        v25 = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
        v26 = *(type metadata accessor for LogMessage() - 8);
        v27 = *(v26 + 80);
        v43 = *(v26 + 72);
        v44 = v25;
        v28 = swift_allocObject();
        v42 = xmmword_1000839C0;
        *(v28 + 16) = xmmword_1000839C0;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v29._object = 0x8000000100086EF0;
        v29._countAndFlagsBits = 0xD00000000000001ALL;
        LogMessage.StringInterpolation.appendLiteral(_:)(v29);
        v48 = &type metadata for String;
        v47[0] = v22;
        v47[1] = v21;

        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10000DCA0(v47, &qword_1000A5630, &unk_100083BF0);
        v30._countAndFlagsBits = 0;
        v30._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v30);
        LogMessage.init(stringInterpolation:)();
        Logger.info(_:)();

        sub_100001D4C(v49);
        v31 = [objc_opt_self() defaultManager];
        v32 = String._bridgeToObjectiveC()();

        v49[0] = 0;
        v33 = [v31 removeItemAtPath:v32 error:v49];

        v34 = v49[0];
        if (v33)
        {

          return v34;
        }

        else
        {
          v41[1] = v49[0];
          v35 = v49[0];
          _convertNSErrorToError(_:)();

          swift_willThrow();
          static OSLogger.jetPackAssets.getter();
          sub_100001CC0(v49, v50);
          *(swift_allocObject() + 16) = v42;
          LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v36._countAndFlagsBits = 0xD000000000000022;
          v36._object = 0x8000000100086F10;
          LogMessage.StringInterpolation.appendLiteral(_:)(v36);
          swift_getErrorValue();
          v37 = v45;
          v38 = v46;
          v48 = v46;
          v39 = sub_1000061A4(v47);
          (*(*(v38 - 1) + 16))(v39, v37, v38);
          LogMessage.StringInterpolation.appendInterpolation(safe:)();
          sub_10000DCA0(v47, &qword_1000A5630, &unk_100083BF0);
          v40._countAndFlagsBits = 0;
          v40._object = 0xE000000000000000;
          LogMessage.StringInterpolation.appendLiteral(_:)(v40);
          LogMessage.init(stringInterpolation:)();
          Logger.error(_:)();

          return sub_100001D4C(v49);
        }
      }

      else
      {
      }
    }

    else
    {
      v17(v13, 1, 1, v15);
      return sub_10000DCA0(v13, &qword_1000A4F08, &qword_100083C28);
    }
  }

  return result;
}

Swift::Int sub_100008630()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000086A4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000086E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 304) = a6;
  *(v7 + 168) = a5;
  *(v7 + 176) = a7;
  *(v7 + 152) = a3;
  *(v7 + 160) = a4;
  *(v7 + 136) = a1;
  *(v7 + 144) = a2;
  v8 = type metadata accessor for JetPackAsset();
  *(v7 + 184) = v8;
  v9 = *(v8 - 8);
  *(v7 + 192) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 200) = swift_task_alloc();
  v11 = sub_100001D04(&qword_1000A4ED0, &qword_100083B80);
  v12 = async function pointer to BaseObjectGraph.injectIfAvailable<A>(_:)[1];
  v13 = swift_task_alloc();
  *(v7 + 208) = v13;
  *v13 = v7;
  v13[1] = sub_100008810;

  return BaseObjectGraph.injectIfAvailable<A>(_:)(v7 + 56, v11, v11);
}

uint64_t sub_100008810()
{
  v2 = *(*v1 + 208);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_100009498;
  }

  else
  {
    v3 = sub_100008928;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100008928()
{
  if (*(v0 + 80))
  {
    sub_10000626C((v0 + 56), v0 + 16);
    v1 = *(v0 + 40);
  }

  else
  {
    v1 = &type metadata for DefaultJetPackAssetProvider;
    *(v0 + 40) = &type metadata for DefaultJetPackAssetProvider;
    *(v0 + 48) = &off_10009E618;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
  }

  v2 = sub_100001CC0((v0 + 16), v1);
  v4 = *v2;
  v3 = v2[1];
  v5 = swift_task_alloc();
  *(v0 + 216) = v5;
  *v5 = v0;
  v5[1] = sub_100008A0C;
  v6 = *(v0 + 200);
  v7 = *(v0 + 160);
  v8 = *(v0 + 168);
  v10 = *(v0 + 144);
  v9 = *(v0 + 152);

  return sub_100006570(v6, v9, v7, v8, v10, v4, v3);
}

uint64_t sub_100008A0C()
{
  v2 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = sub_100008CF8;
  }

  else
  {
    v3 = sub_100008B20;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100008B20()
{
  v1 = *(v0 + 200);
  if (JetPackAsset.wasReadFromCache.getter())
  {
    if (*(v0 + 304))
    {
      (*(*(v0 + 192) + 32))(*(v0 + 136), *(v0 + 200), *(v0 + 184));
      sub_100001D4C((v0 + 16));

      v2 = *(v0 + 8);

      return v2();
    }

    else
    {
      v15 = sub_100001D04(&qword_1000A4E88, &qword_100085E20);
      v16 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
      v17 = swift_task_alloc();
      *(v0 + 256) = v17;
      *v17 = v0;
      v17[1] = sub_100008F24;
      v18 = *(v0 + 144);

      return BaseObjectGraph.inject<A>(_:)(v0 + 96, v15, v15);
    }
  }

  else
  {
    v4 = *(v0 + 200);
    v5 = *(v0 + 304);
    v6 = JetPackAsset.channelID.getter();
    v8 = v7;
    *(v0 + 232) = v7;
    v9 = swift_task_alloc();
    *(v0 + 240) = v9;
    *v9 = v0;
    v9[1] = sub_100008D68;
    v10 = *(v0 + 168);
    v11 = *(v0 + 176);
    v12 = *(v0 + 152);
    v13 = *(v0 + 160);
    v14 = *(v0 + 144);

    return sub_100009704(v6, v8, v12, v13, v10, v14, v5 & 1, v11);
  }
}

uint64_t sub_100008CF8()
{
  v1 = v0[28];
  v2 = v0[25];
  sub_100001D4C(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100008D68()
{
  v2 = *(*v1 + 240);
  v3 = *(*v1 + 232);
  v6 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v4 = sub_100009564;
  }

  else
  {
    v4 = sub_100008E98;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100008E98()
{
  (*(v0[24] + 32))(v0[17], v0[25], v0[23]);
  sub_100001D4C(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100008F24()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_1000095EC;
  }

  else
  {
    v3 = sub_100009038;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100009038()
{
  v1 = *sub_100001CC0(v0 + 12, v0[15]);
  v2 = swift_task_alloc();
  v0[34] = v2;
  *v2 = v0;
  v2[1] = sub_1000090E0;
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[18];
  v6 = v0[19];

  return sub_10002C230(v6, v3, v4, v5);
}

uint64_t sub_1000090E0()
{
  v2 = *(*v1 + 272);
  v3 = *v1;
  v3[35] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100009374, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[36] = v4;
    *v4 = v3;
    v4[1] = sub_100009260;
    v5 = v3[21];
    v6 = v3[22];
    v7 = v3[19];
    v8 = v3[20];
    v9 = v3[18];

    return sub_10000A104((v3 + 2), v7, v8, v5, v9, 0, v6);
  }
}

uint64_t sub_100009260()
{
  v2 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_100009674;
  }

  else
  {
    v3 = sub_100009404;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100009374()
{
  (*(v0[24] + 8))(v0[25], v0[23]);
  sub_100001D4C(v0 + 12);
  v1 = v0[35];
  v2 = v0[25];
  sub_100001D4C(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100009404()
{
  sub_100001D4C(v0 + 12);
  (*(v0[24] + 32))(v0[17], v0[25], v0[23]);
  sub_100001D4C(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100009498()
{
  v0[5] = &type metadata for DefaultJetPackAssetProvider;
  v0[6] = &off_10009E618;
  v0[3] = 0;
  v0[2] = 0;
  v1 = sub_100001CC0(v0 + 2, &type metadata for DefaultJetPackAssetProvider);
  v3 = *v1;
  v2 = v1[1];
  v4 = swift_task_alloc();
  v0[27] = v4;
  *v4 = v0;
  v4[1] = sub_100008A0C;
  v5 = v0[25];
  v6 = v0[20];
  v7 = v0[21];
  v9 = v0[18];
  v8 = v0[19];

  return sub_100006570(v5, v8, v6, v7, v9, v3, v2);
}

uint64_t sub_100009564()
{
  (*(v0[24] + 8))(v0[25], v0[23]);
  v1 = v0[31];
  v2 = v0[25];
  sub_100001D4C(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000095EC()
{
  (*(v0[24] + 8))(v0[25], v0[23]);
  v1 = v0[33];
  v2 = v0[25];
  sub_100001D4C(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100009674()
{
  (*(v0[24] + 8))(v0[25], v0[23]);
  sub_100001D4C(v0 + 12);
  v1 = v0[37];
  v2 = v0[25];
  sub_100001D4C(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100009704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[32] = a6;
  v8[33] = a8;
  v8[30] = a4;
  v8[31] = a5;
  v8[28] = a2;
  v8[29] = a3;
  v8[27] = a1;
  v9 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v8[34] = swift_task_alloc();
  v10 = sub_100001D04(&qword_1000A4EE0, &qword_100083C00);
  v8[35] = v10;
  v11 = *(v10 - 8);
  v8[36] = v11;
  v12 = *(v11 + 64) + 15;
  v8[37] = swift_task_alloc();

  return _swift_task_switch(sub_100009808, 0, 0);
}

uint64_t sub_100009808()
{
  if (v0[28])
  {
    v1 = v0[27];
    v2 = v0[28];
LABEL_5:
    v0[38] = v1;
    v0[39] = v2;
    v15 = sub_100001D04(&qword_1000A4E88, &qword_100085E20);
    v16 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];

    v17 = swift_task_alloc();
    v0[40] = v17;
    *v17 = v0;
    v17[1] = sub_100009CAC;
    v18 = v0[32];

    return BaseObjectGraph.inject<A>(_:)(v0 + 12, v15, v15);
  }

  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[35];
  v6 = v0[33];
  PreferenceKey.init(_:)();
  type metadata accessor for LocalPreferences();
  Preferences.subscript.getter();
  (*(v4 + 8))(v3, v5);
  v2 = v0[26];
  if (v2)
  {
    v1 = v0[25];
    v7 = v0[34];
    v8 = v0[28];
    v9 = v0[26];

    static OSLogger.jetPackAssets.getter();
    v31 = v0[11];
    sub_100001CC0(v0 + 7, v0[10]);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v10 = *(type metadata accessor for LogMessage() - 8);
    v11 = *(v10 + 72);
    v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v13._countAndFlagsBits = 0xD00000000000004CLL;
    v13._object = 0x8000000100086E00;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    v0[24] = &type metadata for String;
    v0[21] = v1;
    v0[22] = v2;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0((v0 + 21), &qword_1000A5630, &unk_100083BF0);
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v14);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100001D4C(v0 + 7);
    goto LABEL_5;
  }

  v19 = v0[34];
  v20 = v0[29];
  static OSLogger.jetPackAssets.getter();
  v21 = v0[6];
  sub_100001CC0(v0 + 2, v0[5]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v22 = *(type metadata accessor for LogMessage() - 8);
  v23 = *(v22 + 72);
  v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v25._countAndFlagsBits = 0x7461207465737341;
  v25._object = 0xEE00203A6C727520;
  LogMessage.StringInterpolation.appendLiteral(_:)(v25);
  v0[20] = type metadata accessor for URL();
  sub_1000061A4(v0 + 17);
  URLJetPackAssetRequest.url.getter();
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v0 + 17), &qword_1000A5630, &unk_100083BF0);
  v26._countAndFlagsBits = 0xD000000000000053;
  v26._object = 0x8000000100086DA0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v26);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100001D4C(v0 + 2);
  v27 = v0[37];
  v28 = v0[34];

  v29 = v0[1];

  return v29();
}

uint64_t sub_100009CAC()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v7 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v4 = *(v2 + 312);

    v5 = sub_10000A094;
  }

  else
  {
    v5 = sub_100009DC8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100009DC8()
{
  v1 = *sub_100001CC0(v0 + 12, v0[15]);
  v2 = swift_task_alloc();
  v0[42] = v2;
  *v2 = v0;
  v2[1] = sub_100009E74;
  v3 = v0[38];
  v4 = v0[39];
  v5 = v0[30];
  v6 = v0[31];
  v7 = v0[29];

  return sub_100029D64(v7, v5, v6, v3, v4);
}

uint64_t sub_100009E74()
{
  v2 = *(*v1 + 336);
  v3 = *(*v1 + 312);
  v6 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v4 = sub_10000A01C;
  }

  else
  {
    v4 = sub_100009FA4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100009FA4()
{
  sub_100001D4C(v0 + 12);
  v1 = v0[37];
  v2 = v0[34];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10000A01C()
{
  sub_100001D4C(v0 + 12);
  v1 = v0[43];
  v2 = v0[37];
  v3 = v0[34];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10000A094()
{
  v1 = v0[41];
  v2 = v0[37];
  v3 = v0[34];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10000A104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 472) = a6;
  *(v7 + 296) = a5;
  *(v7 + 304) = a7;
  *(v7 + 280) = a3;
  *(v7 + 288) = a4;
  *(v7 + 264) = a1;
  *(v7 + 272) = a2;
  v8 = type metadata accessor for URLJetPackAssetRequest();
  *(v7 + 312) = v8;
  v9 = *(v8 - 8);
  *(v7 + 320) = v9;
  *(v7 + 328) = *(v9 + 64);
  *(v7 + 336) = swift_task_alloc();
  v10 = *(*(sub_100001D04(&qword_1000A4ED8, &qword_100084010) - 8) + 64) + 15;
  *(v7 + 344) = swift_task_alloc();
  v11 = *(*(sub_100001D04(&qword_1000A5770, &unk_100083BB0) - 8) + 64) + 15;
  *(v7 + 352) = swift_task_alloc();
  v12 = type metadata accessor for AssetPushSubscriptionRecord();
  *(v7 + 360) = v12;
  v13 = *(v12 - 8);
  *(v7 + 368) = v13;
  *(v7 + 376) = *(v13 + 64);
  *(v7 + 384) = swift_task_alloc();
  *(v7 + 392) = swift_task_alloc();
  v14 = *(*(sub_100001D04(&unk_1000A56A0, &unk_100083E10) - 8) + 64) + 15;
  *(v7 + 400) = swift_task_alloc();
  *(v7 + 408) = swift_task_alloc();
  v15 = sub_100001D04(&qword_1000A4E80, &unk_100083BC0);
  v16 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v17 = swift_task_alloc();
  *(v7 + 416) = v17;
  *v17 = v7;
  v17[1] = sub_10000A358;

  return BaseObjectGraph.inject<A>(_:)(v7 + 104, v15, v15);
}

uint64_t sub_10000A358()
{
  v2 = *(*v1 + 416);
  v5 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v3 = sub_10000AF74;
  }

  else
  {
    v3 = sub_10000A46C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000A46C()
{
  v1 = sub_100001CC0(v0 + 13, v0[16]);
  sub_100001CC0(v1 + 5, v1[8]);
  v2 = swift_task_alloc();
  v0[54] = v2;
  *v2 = v0;
  v2[1] = sub_10000A51C;
  v3 = v0[51];

  return sub_100015738(v3);
}

uint64_t sub_10000A51C()
{
  v1 = *v0;
  v2 = *(*v0 + 432);
  v3 = *(*v0 + 408);
  v4 = *(*v0 + 400);
  v8 = *v0;

  sub_100002758(v3, v4, &unk_1000A56A0, &unk_100083E10);
  v5 = swift_task_alloc();
  *(v1 + 440) = v5;
  *v5 = v8;
  v5[1] = sub_10000A6B0;
  v6 = *(v1 + 400);

  return sub_10000FD7C(v1 + 16, v6);
}

uint64_t sub_10000A6B0()
{
  v1 = *(*v0 + 440);
  v3 = *v0;

  return _swift_task_switch(sub_10000A7AC, 0, 0);
}

uint64_t sub_10000A7AC()
{
  sub_10000DCA0(v0[51], &unk_1000A56A0, &unk_100083E10);
  sub_10000D6E8((v0 + 2));
  v0[56] = v0[10];
  v1 = sub_100001D04(&unk_1000A5730, &unk_100084200);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[57] = v3;
  *v3 = v0;
  v3[1] = sub_10000A890;
  v4 = v0[37];

  return BaseObjectGraph.inject<A>(_:)(v0 + 18, v1, v1);
}

uint64_t sub_10000A890()
{
  v2 = *(*v1 + 456);
  v5 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v3 = sub_10000B02C;
  }

  else
  {
    v3 = sub_10000A9A4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000A9A4()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 352);
  v4 = *(v0 + 280);
  v3 = *(v0 + 288);
  v5 = *(v0 + 272);
  v6 = *(v0 + 176);
  sub_100001CC0((v0 + 144), *(v0 + 168));
  URLJetPackAssetRequest.usageIDOrDefault.getter();
  dispatch thunk of AssetPushSubscriptionStore.find(bundleID:usageID:)();
  if (v1)
  {

    sub_100001D4C((v0 + 144));
    sub_100001D4C((v0 + 104));
    v8 = *(v0 + 400);
    v7 = *(v0 + 408);
    v10 = *(v0 + 384);
    v9 = *(v0 + 392);
    v12 = *(v0 + 344);
    v11 = *(v0 + 352);
    v13 = *(v0 + 336);

    v14 = *(v0 + 8);
    goto LABEL_21;
  }

  v15 = *(v0 + 360);
  v16 = *(v0 + 368);
  v17 = *(v0 + 352);

  if ((*(v16 + 48))(v17, 1, v15) != 1)
  {
    v18 = *(*(v0 + 368) + 32);
    v18(*(v0 + 392), *(v0 + 352), *(v0 + 360));
    v19 = AssetPushSubscriptionRecord.id.getter();
    v20 = *(v0 + 392);
    if ((v19 & 0x100000000) != 0)
    {
LABEL_19:
      (*(*(v0 + 368) + 8))(v20, *(v0 + 360));
      goto LABEL_20;
    }

    v82 = v19;
    v21 = *(v0 + 272);
    v22 = AssetPushSubscriptionRecord.assetURLString.getter();
    v24 = v23;
    v25 = URLJetPackAssetRequest._cacheKey.getter();
    if (v24)
    {
      if (v22 == v25 && v24 == v26)
      {

        goto LABEL_12;
      }

      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v27)
      {
LABEL_12:
        v28 = *(v0 + 392);
        v29 = AssetPushSubscriptionRecord.downloadAttempts.getter();
        v30 = *(v0 + 448);
        if ((v29 & 0x100000000) != 0)
        {
          if (v30 <= 0)
          {
            goto LABEL_14;
          }
        }

        else if (v30 <= v29)
        {
LABEL_14:
          v73 = *(v0 + 384);
          v75 = *(v0 + 392);
          v31 = *(v0 + 368);
          v71 = *(v0 + 360);
          v32 = *(v0 + 336);
          v33 = *(v0 + 344);
          v35 = *(v0 + 312);
          v34 = *(v0 + 320);
          v78 = *(v0 + 296);
          v80 = *(v0 + 304);
          v77 = *(v0 + 288);
          v37 = *(v0 + 264);
          v36 = *(v0 + 272);
          v38 = type metadata accessor for TaskPriority();
          (*(*(v38 - 8) + 56))(v33, 1, 1, v38);
          (*(v34 + 16))(v32, v36, v35);
          (*(v31 + 16))(v73, v75, v71);
          sub_1000064B4(v37, v0 + 184);
          sub_1000064B4(v0 + 144, v0 + 224);
          v39 = qword_1000A4DC8;

          if (v39 != -1)
          {
            swift_once();
          }

          v81 = *(v0 + 392);
          v72 = *(v0 + 384);
          v40 = *(v0 + 368);
          v41 = *(v0 + 376);
          v68 = *(v0 + 360);
          v79 = *(v0 + 344);
          v42 = *(v0 + 320);
          v43 = *(v0 + 328);
          v65 = *(v0 + 312);
          v66 = *(v0 + 336);
          v74 = *(v0 + 472);
          v76 = *(v0 + 304);
          v69 = *(v0 + 288);
          v70 = *(v0 + 296);
          v67 = *(v0 + 280);
          v64 = qword_1000A6450;
          v44 = sub_10000DC58(&qword_1000A5660, type metadata accessor for DaemonActor);
          v45 = (*(v42 + 80) + 32) & ~*(v42 + 80);
          v46 = (v43 + *(v40 + 80) + v45) & ~*(v40 + 80);
          v47 = (v41 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
          v48 = (v47 + 47) & 0xFFFFFFFFFFFFFFF8;
          v62 = (v48 + 23) & 0xFFFFFFFFFFFFFFF8;
          v60 = v44;
          v61 = (v62 + 15) & 0xFFFFFFFFFFFFFFF8;
          v63 = (v61 + 23) & 0xFFFFFFFFFFFFFFF8;
          v49 = swift_allocObject();
          *(v49 + 16) = v64;
          *(v49 + 24) = v60;
          (*(v42 + 32))(v49 + v45, v66, v65);
          v18(v49 + v46, v72, v68);
          sub_10000626C((v0 + 184), v49 + v47);
          v50 = (v49 + v48);
          *v50 = v67;
          v50[1] = v69;
          *(v49 + v62) = v70;
          v51 = v49 + v61;
          *v51 = v74 & 1;
          *(v51 + 8) = v76;
          sub_10000626C((v0 + 224), v49 + v63);
          *(v49 + ((v63 + 43) & 0xFFFFFFFFFFFFFFF8)) = v82;

          sub_100023290(0, 0, v79, &unk_100083BD8, v49);

          (*(v40 + 8))(v81, v68);
          goto LABEL_20;
        }
      }
    }

    else
    {
    }

    v20 = *(v0 + 392);
    goto LABEL_19;
  }

  sub_10000DCA0(*(v0 + 352), &qword_1000A5770, &unk_100083BB0);
LABEL_20:
  v52 = *(v0 + 400);
  v53 = *(v0 + 408);
  v55 = *(v0 + 384);
  v54 = *(v0 + 392);
  v57 = *(v0 + 344);
  v56 = *(v0 + 352);
  v58 = *(v0 + 336);
  sub_100001D4C((v0 + 144));
  sub_100001D4C((v0 + 104));

  v14 = *(v0 + 8);
LABEL_21:

  return v14();
}

uint64_t sub_10000AF74()
{
  v1 = v0[53];
  v3 = v0[50];
  v2 = v0[51];
  v5 = v0[48];
  v4 = v0[49];
  v7 = v0[43];
  v6 = v0[44];
  v8 = v0[42];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10000B02C()
{
  sub_100001D4C(v0 + 13);
  v1 = v0[58];
  v3 = v0[50];
  v2 = v0[51];
  v5 = v0[48];
  v4 = v0[49];
  v7 = v0[43];
  v6 = v0[44];
  v8 = v0[42];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10000B0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 1040) = v36;
  *(v8 + 616) = v35;
  *(v8 + 608) = v34;
  *(v8 + 1048) = v33;
  *(v8 + 600) = v32;
  *(v8 + 592) = a8;
  *(v8 + 584) = a7;
  *(v8 + 576) = a6;
  *(v8 + 568) = a5;
  *(v8 + 560) = a4;
  v9 = type metadata accessor for AssetRequestMetricsEvent();
  *(v8 + 624) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v8 + 632) = swift_task_alloc();
  *(v8 + 640) = swift_task_alloc();
  v11 = *(*(sub_100001D04(&qword_1000A56E0, &unk_100083BE0) - 8) + 64) + 15;
  *(v8 + 648) = swift_task_alloc();
  *(v8 + 656) = swift_task_alloc();
  v12 = type metadata accessor for JetPackAsset.Metadata();
  *(v8 + 664) = v12;
  v13 = *(v12 - 8);
  *(v8 + 672) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 680) = swift_task_alloc();
  v15 = type metadata accessor for URL();
  *(v8 + 688) = v15;
  v16 = *(v15 - 8);
  *(v8 + 696) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 704) = swift_task_alloc();
  *(v8 + 712) = swift_task_alloc();
  v18 = type metadata accessor for JetPackAsset();
  *(v8 + 720) = v18;
  v19 = *(v18 - 8);
  *(v8 + 728) = v19;
  v20 = *(v19 + 64) + 15;
  *(v8 + 736) = swift_task_alloc();
  v21 = type metadata accessor for JetPackAssetRequestSourcePolicy();
  *(v8 + 744) = v21;
  v22 = *(v21 - 8);
  *(v8 + 752) = v22;
  v23 = *(v22 + 64) + 15;
  *(v8 + 760) = swift_task_alloc();
  v24 = type metadata accessor for URLJetPackAssetRequest();
  *(v8 + 768) = v24;
  v25 = *(v24 - 8);
  *(v8 + 776) = v25;
  v26 = *(v25 + 64) + 15;
  *(v8 + 784) = swift_task_alloc();
  v27 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  *(v8 + 792) = swift_task_alloc();
  if (qword_1000A4DC8 != -1)
  {
    swift_once();
  }

  type metadata accessor for DaemonActor();
  sub_10000DC58(&qword_1000A5660, type metadata accessor for DaemonActor);
  v29 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 800) = v29;
  *(v8 + 808) = v28;

  return _swift_task_switch(sub_10000B49C, v29, v28);
}

uint64_t sub_10000B49C()
{
  v1 = *(v0 + 792);
  v2 = *(v0 + 760);
  v3 = *(v0 + 752);
  v20 = *(v0 + 744);
  v21 = *(v0 + 784);
  v4 = *(v0 + 688);
  v22 = *(v0 + 568);
  v23 = *(v0 + 576);
  v5 = *(v0 + 560);
  static OSLogger.jetPackAssets.getter();
  v19 = *(v0 + 48);
  sub_100001CC0((v0 + 16), *(v0 + 40));
  *(v0 + 816) = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v6 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 824) = *(v6 + 72);
  *(v0 + 1044) = *(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x8000000100086C60;
  v7._countAndFlagsBits = 0xD000000000000077;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  *(v0 + 280) = v4;
  sub_1000061A4((v0 + 256));
  URLJetPackAssetRequest.url.getter();
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 256, &qword_1000A5630, &unk_100083BF0);
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100001D4C((v0 + 16));
  (*(v3 + 104))(v2, enum case for JetPackAssetRequestSourcePolicy.remoteOnly(_:), v20);
  URLJetPackAssetRequest.withSourcePolicy(_:)();
  (*(v3 + 8))(v2, v20);
  *(v0 + 832) = AssetPushSubscriptionRecord.downloadAttempts.getter();
  *(v0 + 840) = AssetPushSubscriptionRecord.priority.getter();
  v9 = sub_100001CC0(v23, v23[3]);
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_task_alloc();
  *(v0 + 848) = v12;
  *v12 = v0;
  v12[1] = sub_10000B76C;
  v13 = *(v0 + 784);
  v14 = *(v0 + 736);
  v15 = *(v0 + 600);
  v16 = *(v0 + 592);
  v17 = *(v0 + 584);

  return sub_100006570(v14, v13, v17, v16, v15, v11, v10);
}

uint64_t sub_10000B76C()
{
  v2 = *v1;
  v3 = *(*v1 + 848);
  v4 = *v1;
  *(*v1 + 856) = v0;

  v5 = *(v2 + 808);
  v6 = *(v2 + 800);
  if (v0)
  {
    v7 = sub_10000BAC8;
  }

  else
  {
    v7 = sub_10000B8A8;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10000B8A8()
{
  v1 = *(v0 + 736);
  v2 = *(v0 + 1048);
  v3 = JetPackAsset.channelID.getter();
  v5 = v4;
  *(v0 + 864) = v4;
  v6 = swift_task_alloc();
  *(v0 + 872) = v6;
  *v6 = v0;
  v6[1] = sub_10000B974;
  v7 = *(v0 + 608);
  v8 = *(v0 + 600);
  v9 = *(v0 + 592);
  v10 = *(v0 + 584);
  v11 = *(v0 + 560);

  return sub_100009704(v3, v5, v11, v10, v9, v8, v2 & 1, v7);
}

uint64_t sub_10000B974()
{
  v2 = *v1;
  v3 = *(*v1 + 872);
  v4 = *v1;
  *(*v1 + 880) = v0;

  v5 = v2[108];

  v6 = v2[101];
  v7 = v2[100];
  if (v0)
  {
    v8 = sub_10000D44C;
  }

  else
  {
    v8 = sub_10000BD48;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10000BAC8()
{
  *(v0 + 968) = *(v0 + 856);
  v1 = *(v0 + 1044);
  v2 = *(v0 + 824);
  v3 = *(v0 + 816);
  v4 = *(v0 + 792);
  v5 = *(v0 + 704);
  v6 = *(v0 + 696);
  v23 = *(v0 + 648);
  v21 = *(v0 + 688);
  v22 = *(v0 + 568);
  v20 = *(v0 + 560);
  static OSLogger.jetPackAssets.getter();
  v19 = *(v0 + 88);
  sub_100001CC0((v0 + 56), *(v0 + 80));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x8000000100086CE0;
  v7._countAndFlagsBits = 0xD000000000000050;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v8 = *(v0 + 384);
  v9 = *(v0 + 392);
  *(v0 + 312) = v9;
  v10 = sub_1000061A4((v0 + 288));
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 288, &qword_1000A5630, &unk_100083BF0);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C((v0 + 56));
  *(v0 + 504) = URLJetPackAssetRequest.usageIDOrDefault.getter();
  *(v0 + 512) = v12;
  *(v0 + 976) = v12;
  URLJetPackAssetRequest.url.getter();
  *(v0 + 520) = URL.absoluteString.getter();
  *(v0 + 528) = v13;
  *(v0 + 984) = v13;
  (*(v6 + 8))(v5, v21);
  AssetPushSubscriptionRecord.serverDate.getter();
  v14 = sub_100001D04(&qword_1000A5760, &qword_100085560);
  v15 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v16 = swift_task_alloc();
  *(v0 + 992) = v16;
  *v16 = v0;
  v16[1] = sub_10000CAF0;
  v17 = *(v0 + 600);

  return BaseObjectGraph.inject<A>(_:)(v0 + 96, v14, v14);
}

uint64_t sub_10000BD48()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 1040);
  v3 = *(v0 + 616);
  v4 = v3[4];
  sub_100001CC0(v3, v3[3]);
  dispatch thunk of AssetPushSubscriptionStore.resetPending(id:)();
  if (v1)
  {
    (*(*(v0 + 728) + 8))(*(v0 + 736), *(v0 + 720));
    *(v0 + 968) = v1;
    v5 = *(v0 + 1044);
    v6 = *(v0 + 824);
    v7 = *(v0 + 816);
    v8 = *(v0 + 792);
    v9 = *(v0 + 704);
    v10 = *(v0 + 696);
    v43 = *(v0 + 648);
    v41 = *(v0 + 688);
    v42 = *(v0 + 568);
    v40 = *(v0 + 560);
    static OSLogger.jetPackAssets.getter();
    v39 = *(v0 + 88);
    sub_100001CC0((v0 + 56), *(v0 + 80));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v11._object = 0x8000000100086CE0;
    v11._countAndFlagsBits = 0xD000000000000050;
    LogMessage.StringInterpolation.appendLiteral(_:)(v11);
    swift_getErrorValue();
    v12 = *(v0 + 384);
    v13 = *(v0 + 392);
    *(v0 + 312) = v13;
    v14 = sub_1000061A4((v0 + 288));
    (*(*(v13 - 8) + 16))(v14, v12, v13);
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v0 + 288, &qword_1000A5630, &unk_100083BF0);
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    LogMessage.init(stringInterpolation:)();
    Logger.error(_:)();

    sub_100001D4C((v0 + 56));
    *(v0 + 504) = URLJetPackAssetRequest.usageIDOrDefault.getter();
    *(v0 + 512) = v16;
    *(v0 + 976) = v16;
    URLJetPackAssetRequest.url.getter();
    *(v0 + 520) = URL.absoluteString.getter();
    *(v0 + 528) = v17;
    *(v0 + 984) = v17;
    (*(v10 + 8))(v9, v41);
    AssetPushSubscriptionRecord.serverDate.getter();
    v18 = sub_100001D04(&qword_1000A5760, &qword_100085560);
    v19 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v20 = swift_task_alloc();
    *(v0 + 992) = v20;
    *v20 = v0;
    v20[1] = sub_10000CAF0;
    v21 = *(v0 + 600);
    v22 = v0 + 96;
  }

  else
  {
    v23 = *(v0 + 736);
    v24 = *(v0 + 712);
    v25 = *(v0 + 696);
    v26 = *(v0 + 688);
    v27 = *(v0 + 680);
    v28 = *(v0 + 672);
    v29 = *(v0 + 664);
    v44 = *(v0 + 656);
    v30 = *(v0 + 568);
    v31 = *(v0 + 560);
    *(v0 + 456) = URLJetPackAssetRequest.usageIDOrDefault.getter();
    *(v0 + 464) = v32;
    *(v0 + 888) = v32;
    URLJetPackAssetRequest.url.getter();
    *(v0 + 472) = URL.absoluteString.getter();
    *(v0 + 480) = v33;
    *(v0 + 896) = v33;
    (*(v25 + 8))(v24, v26);
    JetPackAsset.metadata.getter();
    *(v0 + 488) = JetPackAsset.Metadata.assetVersion.getter();
    *(v0 + 496) = v34;
    *(v0 + 904) = v34;
    (*(v28 + 8))(v27, v29);
    AssetPushSubscriptionRecord.serverDate.getter();
    v18 = sub_100001D04(&qword_1000A5760, &qword_100085560);
    v35 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v36 = swift_task_alloc();
    *(v0 + 912) = v36;
    *v36 = v0;
    v36[1] = sub_10000C128;
    v37 = *(v0 + 600);
    v22 = v0 + 176;
  }

  return BaseObjectGraph.inject<A>(_:)(v22, v18, v18);
}

uint64_t sub_10000C128()
{
  v2 = *v1;
  v3 = *(*v1 + 912);
  v11 = *v1;
  *(*v1 + 920) = v0;

  if (v0)
  {
    v4 = v2[113];
    v5 = v2[112];
    v6 = v2[111];

    v7 = sub_10000C56C;
  }

  else
  {
    v8 = v2[59];
    v9 = v2[57];
    v2[116] = v2[61];
    v2[117] = v8;
    v2[118] = v9;
    v7 = sub_10000C284;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10000C284()
{
  v20 = v0[118];
  v21 = v0[117];
  v1 = v0[116];
  v2 = v0[113];
  v3 = v0[111];
  v4 = v0[105];
  v5 = v0[104];
  v6 = v0[80];
  v7 = v0[78];
  v8 = v0[74];
  v9 = v0[73];
  v10 = v4;
  if ((v4 & &_mh_execute_header) != 0)
  {
    v10 = 0;
  }

  v22 = v10;
  if ((v5 & &_mh_execute_header) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = v5;
  }

  v18 = v5;
  v19 = v0[112];
  sub_100002758(v0[82], v6 + *(v7 + 48), &qword_1000A56E0, &unk_100083BE0);
  if (v2)
  {
    v11 = v1;
  }

  else
  {
    v11 = 0;
  }

  *v6 = v9;
  *(v6 + 8) = v8;
  *(v6 + 16) = v20;
  *(v6 + 24) = v3;
  *(v6 + 32) = v21;
  *(v6 + 40) = v19;
  *(v6 + 48) = v11;
  v12 = 0xE000000000000000;
  if (v2)
  {
    v12 = v2;
  }

  *(v6 + 56) = v12;
  *(v6 + 64) = xmmword_100083B40;
  *(v6 + 80) = 0xD000000000000018;
  *(v6 + 88) = 0x8000000100086D60;
  *(v6 + 96) = 1;
  *(v6 + 104) = v18;
  v13 = v6 + *(v7 + 52);
  *v13 = v22;
  *(v13 + 8) = BYTE4(v4) & 1;
  v14 = *sub_100001CC0(v0 + 22, v0[25]);

  v15 = swift_task_alloc();
  v0[119] = v15;
  *v15 = v0;
  v15[1] = sub_10000C458;
  v16 = v0[80];

  return sub_100038808(v16);
}

uint64_t sub_10000C458()
{
  v2 = *(*v1 + 952);
  v5 = *v1;
  *(*v1 + 960) = v0;

  if (v0)
  {
    v3 = sub_10000C7D0;
  }

  else
  {
    v3 = sub_10000C744;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000C56C()
{
  v1 = *(v0 + 920);
  v2 = *(v0 + 1044);
  v3 = *(v0 + 824);
  v4 = *(v0 + 816);
  v5 = *(v0 + 792);
  v15 = *(v0 + 656);
  static OSLogger.jetPackAssets.getter();
  v6 = *(v0 + 248);
  sub_100001CC0((v0 + 216), *(v0 + 240));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x8000000100086D40;
  v7._countAndFlagsBits = 0xD00000000000001ELL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v8 = *(v0 + 432);
  v9 = *(v0 + 440);
  *(v0 + 376) = v9;
  v10 = sub_1000061A4((v0 + 352));
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 352, &qword_1000A5630, &unk_100083BF0);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_10000DCA0(v15, &qword_1000A56E0, &unk_100083BE0);
  sub_100001D4C((v0 + 216));
  v12 = *(v0 + 808);
  v13 = *(v0 + 800);

  return _swift_task_switch(sub_10000C9B8, v13, v12);
}

uint64_t sub_10000C744()
{
  v1 = v0[82];
  sub_10000DBEC(v0[80]);
  sub_10000DCA0(v1, &qword_1000A56E0, &unk_100083BE0);
  sub_100001D4C(v0 + 22);
  v2 = v0[101];
  v3 = v0[100];

  return _swift_task_switch(sub_10000C9B8, v3, v2);
}

uint64_t sub_10000C7D0()
{
  sub_10000DBEC(*(v0 + 640));
  sub_100001D4C((v0 + 176));
  v1 = *(v0 + 960);
  v2 = *(v0 + 1044);
  v3 = *(v0 + 824);
  v4 = *(v0 + 816);
  v5 = *(v0 + 792);
  v15 = *(v0 + 656);
  static OSLogger.jetPackAssets.getter();
  v6 = *(v0 + 248);
  sub_100001CC0((v0 + 216), *(v0 + 240));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x8000000100086D40;
  v7._countAndFlagsBits = 0xD00000000000001ELL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v8 = *(v0 + 432);
  v9 = *(v0 + 440);
  *(v0 + 376) = v9;
  v10 = sub_1000061A4((v0 + 352));
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 352, &qword_1000A5630, &unk_100083BF0);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_10000DCA0(v15, &qword_1000A56E0, &unk_100083BE0);
  sub_100001D4C((v0 + 216));
  v12 = *(v0 + 808);
  v13 = *(v0 + 800);

  return _swift_task_switch(sub_10000C9B8, v13, v12);
}

uint64_t sub_10000C9B8()
{
  (*(v0[91] + 8))(v0[92], v0[90]);
  v1 = v0[99];
  v2 = v0[95];
  v3 = v0[92];
  v4 = v0[89];
  v5 = v0[88];
  v6 = v0[85];
  v7 = v0[82];
  v8 = v0[81];
  v9 = v0[80];
  v12 = v0[79];
  (*(v0[97] + 8))(v0[98], v0[96]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10000CAF0()
{
  v2 = *v1;
  v3 = *(*v1 + 992);
  v9 = *v1;
  *(*v1 + 1000) = v0;

  if (v0)
  {
    v4 = v2[123];
    v5 = v2[122];

    v6 = sub_10000CEDC;
  }

  else
  {
    v7 = v2[63];
    v2[126] = v2[65];
    v2[127] = v7;
    v6 = sub_10000CC28;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10000CC28()
{
  v1 = v0[127];
  v17 = v0[123];
  v18 = v0[126];
  v2 = v0[122];
  v3 = v0[105];
  v4 = v0[104];
  v5 = v0[79];
  v6 = v0[78];
  v7 = v0[74];
  v8 = v0[73];
  v9 = v3;
  if ((v3 & &_mh_execute_header) != 0)
  {
    v9 = 0;
  }

  v16 = v9;
  if ((v4 & &_mh_execute_header) != 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = v4;
  }

  sub_100002758(v0[81], v5 + *(v6 + 48), &qword_1000A56E0, &unk_100083BE0);
  *v5 = v8;
  *(v5 + 8) = v7;
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  *(v5 + 32) = v18;
  *(v5 + 40) = v17;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0xD000000000000018;
  *(v5 + 88) = 0x8000000100086D60;
  *(v5 + 96) = 0;
  *(v5 + 104) = v10;
  v11 = v5 + *(v6 + 52);
  *v11 = v16;
  *(v11 + 8) = BYTE4(v3) & 1;
  v12 = *sub_100001CC0(v0 + 12, v0[15]);

  v13 = swift_task_alloc();
  v0[128] = v13;
  *v13 = v0;
  v13[1] = sub_10000CDC8;
  v14 = v0[79];

  return sub_100038808(v14);
}

uint64_t sub_10000CDC8()
{
  v2 = *(*v1 + 1024);
  v5 = *v1;
  *(*v1 + 1032) = v0;

  if (v0)
  {
    v3 = sub_10000D140;
  }

  else
  {
    v3 = sub_10000D0B4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000CEDC()
{
  v1 = *(v0 + 1000);
  v2 = *(v0 + 1044);
  v3 = *(v0 + 824);
  v4 = *(v0 + 816);
  v5 = *(v0 + 792);
  v15 = *(v0 + 648);
  static OSLogger.jetPackAssets.getter();
  v6 = *(v0 + 168);
  sub_100001CC0((v0 + 136), *(v0 + 160));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x8000000100086D40;
  v7._countAndFlagsBits = 0xD00000000000001ELL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v8 = *(v0 + 408);
  v9 = *(v0 + 416);
  *(v0 + 344) = v9;
  v10 = sub_1000061A4((v0 + 320));
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 320, &qword_1000A5630, &unk_100083BF0);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_10000DCA0(v15, &qword_1000A56E0, &unk_100083BE0);
  sub_100001D4C((v0 + 136));
  v12 = *(v0 + 808);
  v13 = *(v0 + 800);

  return _swift_task_switch(sub_10000D328, v13, v12);
}

uint64_t sub_10000D0B4()
{
  v1 = v0[81];
  sub_10000DBEC(v0[79]);
  sub_10000DCA0(v1, &qword_1000A56E0, &unk_100083BE0);
  sub_100001D4C(v0 + 12);
  v2 = v0[101];
  v3 = v0[100];

  return _swift_task_switch(sub_10000D328, v3, v2);
}

uint64_t sub_10000D140()
{
  sub_10000DBEC(*(v0 + 632));
  sub_100001D4C((v0 + 96));
  v1 = *(v0 + 1032);
  v2 = *(v0 + 1044);
  v3 = *(v0 + 824);
  v4 = *(v0 + 816);
  v5 = *(v0 + 792);
  v15 = *(v0 + 648);
  static OSLogger.jetPackAssets.getter();
  v6 = *(v0 + 168);
  sub_100001CC0((v0 + 136), *(v0 + 160));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x8000000100086D40;
  v7._countAndFlagsBits = 0xD00000000000001ELL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v8 = *(v0 + 408);
  v9 = *(v0 + 416);
  *(v0 + 344) = v9;
  v10 = sub_1000061A4((v0 + 320));
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 320, &qword_1000A5630, &unk_100083BF0);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_10000DCA0(v15, &qword_1000A56E0, &unk_100083BE0);
  sub_100001D4C((v0 + 136));
  v12 = *(v0 + 808);
  v13 = *(v0 + 800);

  return _swift_task_switch(sub_10000D328, v13, v12);
}

uint64_t sub_10000D328()
{
  v1 = v0[121];

  v2 = v0[99];
  v3 = v0[95];
  v4 = v0[92];
  v5 = v0[89];
  v6 = v0[88];
  v7 = v0[85];
  v8 = v0[82];
  v9 = v0[81];
  v10 = v0[80];
  v13 = v0[79];
  (*(v0[97] + 8))(v0[98], v0[96]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10000D44C()
{
  (*(*(v0 + 728) + 8))(*(v0 + 736), *(v0 + 720));
  *(v0 + 968) = *(v0 + 880);
  v1 = *(v0 + 1044);
  v2 = *(v0 + 824);
  v3 = *(v0 + 816);
  v4 = *(v0 + 792);
  v5 = *(v0 + 704);
  v6 = *(v0 + 696);
  v23 = *(v0 + 648);
  v21 = *(v0 + 688);
  v22 = *(v0 + 568);
  v20 = *(v0 + 560);
  static OSLogger.jetPackAssets.getter();
  v19 = *(v0 + 88);
  sub_100001CC0((v0 + 56), *(v0 + 80));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x8000000100086CE0;
  v7._countAndFlagsBits = 0xD000000000000050;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v8 = *(v0 + 384);
  v9 = *(v0 + 392);
  *(v0 + 312) = v9;
  v10 = sub_1000061A4((v0 + 288));
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 288, &qword_1000A5630, &unk_100083BF0);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C((v0 + 56));
  *(v0 + 504) = URLJetPackAssetRequest.usageIDOrDefault.getter();
  *(v0 + 512) = v12;
  *(v0 + 976) = v12;
  URLJetPackAssetRequest.url.getter();
  *(v0 + 520) = URL.absoluteString.getter();
  *(v0 + 528) = v13;
  *(v0 + 984) = v13;
  (*(v6 + 8))(v5, v21);
  AssetPushSubscriptionRecord.serverDate.getter();
  v14 = sub_100001D04(&qword_1000A5760, &qword_100085560);
  v15 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v16 = swift_task_alloc();
  *(v0 + 992) = v16;
  *v16 = v0;
  v16[1] = sub_10000CAF0;
  v17 = *(v0 + 600);

  return BaseObjectGraph.inject<A>(_:)(v0 + 96, v14, v14);
}

uint64_t sub_10000D73C()
{
  v19 = type metadata accessor for URLJetPackAssetRequest();
  v1 = *(v19 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v18 = type metadata accessor for AssetPushSubscriptionRecord();
  v5 = *(v18 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v20 = v2 | v6;
  v8 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v1 + 8))(v0 + v3, v19);
  (*(v5 + 8))(v0 + v7, v18);
  sub_100001D4C((v0 + v8));
  v14 = *(v0 + v9 + 8);

  v15 = *(v0 + v10);

  v16 = *(v0 + v11 + 8);

  sub_100001D4C((v0 + v12));

  return _swift_deallocObject(v0, (v12 + 43) & 0xFFFFFFFFFFFFFFF8 | 4, v20 | 7);
}

uint64_t sub_10000D908(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for URLJetPackAssetRequest() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for AssetPushSubscriptionRecord() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 47) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(v1 + 24);
  v22 = *(v1 + 16);
  v13 = (v1 + v10);
  v19 = v13[1];
  v20 = *v13;
  v14 = *(v1 + v11);
  LOBYTE(v6) = *(v1 + v12);
  v15 = *(v1 + v12 + 8);
  v16 = *(v1 + ((((v12 + 23) & 0xFFFFFFFFFFFFFFF8) + 43) & 0xFFFFFFFFFFFFFFF8));
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_10000DAF8;

  return sub_10000B0EC(a1, v22, v21, v1 + v5, v1 + v8, v1 + v9, v20, v19);
}

uint64_t sub_10000DAF8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000DBEC(uint64_t a1)
{
  v2 = type metadata accessor for AssetRequestMetricsEvent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000DC48(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000DC58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000DCA0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001D04(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000DD00(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 initializeBufferWithCopyOfBuffer for ScheduleTime(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000DD24(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10000DD80(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10000DDE0(uint64_t a1, int a2)
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

uint64_t sub_10000DE28(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for AssetRetrievalCoordinator.RetrievalMode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AssetRetrievalCoordinator.RetrievalMode(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10000DFEC()
{
  result = qword_1000A4F18;
  if (!qword_1000A4F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4F18);
  }

  return result;
}

id sub_10000E050(uint64_t a1, uint64_t a2, char a3)
{
  v4 = String._bridgeToObjectiveC()();

  v9 = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:&v9];

  if (v5)
  {
    v6 = v9;
  }

  else
  {
    v7 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_10000E138(uint64_t a1, uint64_t a2)
{
  sub_10000E1B8();

  result = sub_10000E050(a1, a2, 0);
  if (result)
  {

    return 1;
  }

  return result;
}

unint64_t sub_10000E1B8()
{
  result = qword_1000A4F20;
  if (!qword_1000A4F20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000A4F20);
  }

  return result;
}

unint64_t sub_10000E294()
{
  result = sub_100002378(&off_10009DFA8);
  qword_1000A6330 = result;
  return result;
}

unsigned __int8 *sub_10000E2BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10000F894();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
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
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
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
                  goto LABEL_127;
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

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_10000E848(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100001D04(&qword_1000A4E38, &qword_1000839F8);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(qword_100083E90[v21]);
      result = Hasher._finalize()();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_10000EAD4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100001D04(&qword_1000A4E40, &unk_100083A00);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_100002698(v25, v37);
      }

      else
      {
        sub_1000125A0(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_100002698(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_10000ED8C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100001D04(&qword_1000A4E60, ">m");
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10000F030(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100001D04(&qword_1000A4F50, &qword_100083E38);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 4 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 4 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_10000F2D0()
{
  v1 = v0;
  sub_100001D04(&qword_1000A4E38, &qword_1000839F8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10000F41C()
{
  v1 = v0;
  sub_100001D04(&qword_1000A4E40, &unk_100083A00);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1000125A0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100002698(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

id sub_10000F5C0()
{
  v1 = v0;
  sub_100001D04(&qword_1000A4E60, ">m");
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10000F72C()
{
  v1 = v0;
  sub_100001D04(&qword_1000A4F50, &qword_100083E38);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LODWORD(v18) = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_10000F894()
{
  v0 = String.subscript.getter();
  v4 = sub_10000F914(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_10000F914(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_10000FA6C(v9, 0);
  v12 = sub_10000FAE0(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

void *sub_10000FA6C(uint64_t a1, uint64_t a2)
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

  sub_100001D04(&qword_1000A4F48, &qword_100083E30);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_10000FAE0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_10000FD00(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
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
          result = _StringObject.sharedUTF8.getter();
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

    result = sub_10000FD00(v12, a6, a7);
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

    result = String.UTF8View._foreignIndex(after:)();
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

uint64_t sub_10000FD00(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
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
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
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

uint64_t sub_10000FD7C(uint64_t a1, uint64_t a2)
{
  v2[74] = a2;
  v2[73] = a1;
  v3 = sub_100001D04(&qword_1000A4F28, &qword_100083DF8);
  v2[75] = v3;
  v4 = *(v3 - 8);
  v2[76] = v4;
  v5 = *(v4 + 64) + 15;
  v2[77] = swift_task_alloc();
  v6 = sub_100001D04(&qword_1000A4F30, &unk_100083E00);
  v2[78] = v6;
  v7 = *(v6 - 8);
  v2[79] = v7;
  v8 = *(v7 + 64) + 15;
  v2[80] = swift_task_alloc();
  v9 = sub_100001D04(&qword_1000A4F38, &unk_100086430);
  v2[81] = v9;
  v10 = *(v9 - 8);
  v2[82] = v10;
  v11 = *(v10 + 64) + 15;
  v2[83] = swift_task_alloc();
  v12 = *(*(sub_100001D04(&unk_1000A56A0, &unk_100083E10) - 8) + 64) + 15;
  v2[84] = swift_task_alloc();
  v13 = type metadata accessor for Bag();
  v2[85] = v13;
  v14 = *(v13 - 8);
  v2[86] = v14;
  v15 = *(v14 + 64) + 15;
  v2[87] = swift_task_alloc();

  return _swift_task_switch(sub_10000FFB0, 0, 0);
}

uint64_t sub_10000FFB0()
{
  v1 = v0[86];
  v2 = v0[85];
  v3 = v0[84];
  sub_1000124C8(v0[74], v3);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_100012538(v0[84]);
    if (qword_1000A4D50 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    v4 = v0[24];
    sub_100001CC0(v0 + 20, v0[23]);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v5 = *(type metadata accessor for LogMessage() - 8);
    v6 = *(v5 + 72);
    v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.warning(_:)();

    sub_100001D4C(v0 + 20);
    if (qword_1000A4D10 != -1)
    {
      swift_once();
    }

    v8 = v0[74];
    v9 = qword_1000A6330;

    sub_100012538(v8);
    v10 = v0[87];
    v11 = v0[84];
    v12 = v0[83];
    v13 = v0[80];
    v14 = v0[77];
    v15 = v0[73];
    *v15 = 0x3FE999999999999ALL;
    *(v15 + 8) = v9;
    *(v15 + 16) = xmmword_100083DB0;
    *(v15 + 32) = xmmword_100083DC0;
    *(v15 + 48) = xmmword_100083DD0;
    *(v15 + 64) = 8;
    *(v15 + 72) = xmmword_100083DE0;

    v16 = v0[1];

    return v16();
  }

  else
  {
    v18 = v0[83];
    (*(v0[86] + 32))(v0[87], v0[84], v0[85]);
    v19 = String._bridgeToObjectiveC()();
    Bag.subscript.getter();

    v20 = async function pointer to Bag.Value.current(or:)[1];
    v21 = swift_task_alloc();
    v0[88] = v21;
    *v21 = v0;
    v21[1] = sub_10001033C;
    v22 = v0[83];
    v23 = v0[81];

    return Bag.Value.current(or:)(v0 + 70, sub_10000E204, 0, v23);
  }
}

uint64_t sub_10001033C()
{
  v1 = *v0;
  v2 = *(*v0 + 704);
  v3 = *(*v0 + 664);
  v4 = *(*v0 + 656);
  v5 = *(*v0 + 648);
  v8 = *v0;

  v6 = *(v4 + 8);
  *(v1 + 712) = v6;
  *(v1 + 720) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);

  return _swift_task_switch(sub_1000104A4, 0, 0);
}

uint64_t sub_1000104A4()
{
  v1 = v0[87];
  v2 = v0[83];
  v0[91] = v0[70];
  v3 = String._bridgeToObjectiveC()();
  Bag.subscript.getter();

  v4 = async function pointer to Bag.Value.current(or:)[1];
  v5 = swift_task_alloc();
  v0[92] = v5;
  *v5 = v0;
  v5[1] = sub_1000105A0;
  v6 = v0[83];
  v7 = v0[81];

  return Bag.Value.current(or:)(v0 + 69, sub_1000126D0, 0, v7);
}

uint64_t sub_1000105A0()
{
  v1 = *(*v0 + 736);
  v2 = *(*v0 + 720);
  v3 = *(*v0 + 712);
  v4 = *(*v0 + 664);
  v5 = *(*v0 + 648);
  v7 = *v0;

  v3(v4, v5);

  return _swift_task_switch(sub_100010700, 0, 0);
}

uint64_t sub_100010700()
{
  v1 = v0[87];
  v2 = v0[83];
  v0[93] = v0[69];
  v3 = String._bridgeToObjectiveC()();
  Bag.subscript.getter();

  v4 = async function pointer to Bag.Value.current(or:)[1];
  v5 = swift_task_alloc();
  v0[94] = v5;
  *v5 = v0;
  v5[1] = sub_1000107FC;
  v6 = v0[83];
  v7 = v0[81];

  return Bag.Value.current(or:)(v0 + 60, sub_10000E228, 0, v7);
}

uint64_t sub_1000107FC()
{
  v1 = *(*v0 + 752);
  v2 = *(*v0 + 720);
  v3 = *(*v0 + 712);
  v4 = *(*v0 + 664);
  v5 = *(*v0 + 648);
  v7 = *v0;

  v3(v4, v5);

  return _swift_task_switch(sub_10001095C, 0, 0);
}

uint64_t sub_10001095C()
{
  v1 = v0[87];
  v2 = v0[83];
  v0[95] = v0[60];
  v3 = String._bridgeToObjectiveC()();
  Bag.subscript.getter();

  v4 = async function pointer to Bag.Value.current(or:)[1];
  v5 = swift_task_alloc();
  v0[96] = v5;
  *v5 = v0;
  v5[1] = sub_100010A58;
  v6 = v0[83];
  v7 = v0[81];

  return Bag.Value.current(or:)(v0 + 61, sub_10000E238, 0, v7);
}

uint64_t sub_100010A58()
{
  v1 = *(*v0 + 768);
  v2 = *(*v0 + 720);
  v3 = *(*v0 + 712);
  v4 = *(*v0 + 664);
  v5 = *(*v0 + 648);
  v7 = *v0;

  v3(v4, v5);

  return _swift_task_switch(sub_100010BB8, 0, 0);
}

uint64_t sub_100010BB8()
{
  v1 = v0[87];
  v2 = v0[83];
  v0[97] = v0[61];
  v3 = String._bridgeToObjectiveC()();
  Bag.subscript.getter();

  v4 = async function pointer to Bag.Value.current(or:)[1];
  v5 = swift_task_alloc();
  v0[98] = v5;
  *v5 = v0;
  v5[1] = sub_100010CB4;
  v6 = v0[83];
  v7 = v0[81];

  return Bag.Value.current(or:)(v0 + 62, sub_10000E24C, 0, v7);
}

uint64_t sub_100010CB4()
{
  v1 = *(*v0 + 784);
  v2 = *(*v0 + 720);
  v3 = *(*v0 + 712);
  v4 = *(*v0 + 664);
  v5 = *(*v0 + 648);
  v7 = *v0;

  v3(v4, v5);

  return _swift_task_switch(sub_100010E14, 0, 0);
}

uint64_t sub_100010E14()
{
  v1 = v0[87];
  v2 = v0[83];
  v0[99] = v0[62];
  v3 = String._bridgeToObjectiveC()();
  Bag.subscript.getter();

  v4 = async function pointer to Bag.Value.current(or:)[1];
  v5 = swift_task_alloc();
  v0[100] = v5;
  *v5 = v0;
  v5[1] = sub_100010F10;
  v6 = v0[83];
  v7 = v0[81];

  return Bag.Value.current(or:)(v0 + 63, sub_10000E25C, 0, v7);
}

uint64_t sub_100010F10()
{
  v1 = *(*v0 + 800);
  v2 = *(*v0 + 720);
  v3 = *(*v0 + 712);
  v4 = *(*v0 + 664);
  v5 = *(*v0 + 648);
  v7 = *v0;

  v3(v4, v5);

  return _swift_task_switch(sub_100011070, 0, 0);
}

uint64_t sub_100011070()
{
  v1 = v0[87];
  v2 = v0[83];
  v0[101] = v0[63];
  v3 = String._bridgeToObjectiveC()();
  Bag.subscript.getter();

  v4 = async function pointer to Bag.Value.current(or:)[1];
  v5 = swift_task_alloc();
  v0[102] = v5;
  *v5 = v0;
  v5[1] = sub_10001116C;
  v6 = v0[83];
  v7 = v0[81];

  return Bag.Value.current(or:)(v0 + 64, sub_10000E268, 0, v7);
}

uint64_t sub_10001116C()
{
  v1 = *(*v0 + 816);
  v2 = *(*v0 + 720);
  v3 = *(*v0 + 712);
  v4 = *(*v0 + 664);
  v5 = *(*v0 + 648);
  v7 = *v0;

  v3(v4, v5);

  return _swift_task_switch(sub_1000112CC, 0, 0);
}

uint64_t sub_1000112CC()
{
  v1 = v0[87];
  v2 = v0[80];
  v0[103] = v0[64];
  v3 = String._bridgeToObjectiveC()();
  Bag.subscript.getter();

  v4 = async function pointer to Bag.Value.current(or:)[1];
  v5 = swift_task_alloc();
  v0[104] = v5;
  *v5 = v0;
  v5[1] = sub_1000113C8;
  v6 = v0[80];
  v7 = v0[78];

  return Bag.Value.current(or:)(v0 + 65, sub_10000E274, 0, v7);
}

uint64_t sub_1000113C8()
{
  v1 = *(*v0 + 832);
  v2 = *(*v0 + 640);
  v3 = *(*v0 + 632);
  v4 = *(*v0 + 624);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_100011520, 0, 0);
}

uint64_t sub_100011520()
{
  v1 = v0[87];
  v2 = v0[83];
  v0[105] = v0[65];
  v3 = String._bridgeToObjectiveC()();
  Bag.subscript.getter();

  v4 = async function pointer to Bag.Value.current(or:)[1];
  v5 = swift_task_alloc();
  v0[106] = v5;
  *v5 = v0;
  v5[1] = sub_10001161C;
  v6 = v0[83];
  v7 = v0[81];

  return Bag.Value.current(or:)(v0 + 66, sub_10000E280, 0, v7);
}

uint64_t sub_10001161C()
{
  v1 = *(*v0 + 848);
  v2 = *(*v0 + 720);
  v3 = *(*v0 + 712);
  v4 = *(*v0 + 664);
  v5 = *(*v0 + 648);
  v7 = *v0;

  v3(v4, v5);

  return _swift_task_switch(sub_10001177C, 0, 0);
}

uint64_t sub_10001177C()
{
  v1 = v0[87];
  v2 = v0[83];
  v0[107] = v0[66];
  v3 = String._bridgeToObjectiveC()();
  Bag.subscript.getter();

  v4 = async function pointer to Bag.Value.current(or:)[1];
  v5 = swift_task_alloc();
  v0[108] = v5;
  *v5 = v0;
  v5[1] = sub_100011878;
  v6 = v0[83];
  v7 = v0[81];

  return Bag.Value.current(or:)(v0 + 67, sub_1000126D0, 0, v7);
}

uint64_t sub_100011878()
{
  v1 = *(*v0 + 864);
  v2 = *(*v0 + 720);
  v3 = *(*v0 + 712);
  v4 = *(*v0 + 664);
  v5 = *(*v0 + 648);
  v7 = *v0;

  v3(v4, v5);

  return _swift_task_switch(sub_1000119D8, 0, 0);
}

uint64_t sub_1000119D8()
{
  v1 = v0[87];
  v2 = v0[77];
  v0[109] = v0[67];
  v3 = String._bridgeToObjectiveC()();
  Bag.subscript.getter();

  v4 = async function pointer to Bag.Value.currentOrNil()[1];
  v5 = swift_task_alloc();
  v0[110] = v5;
  *v5 = v0;
  v5[1] = sub_100011ABC;
  v6 = v0[77];
  v7 = v0[75];

  return Bag.Value.currentOrNil()(v0 + 68, v7);
}

uint64_t sub_100011ABC()
{
  v1 = *(*v0 + 880);
  v2 = *(*v0 + 616);
  v3 = *(*v0 + 608);
  v4 = *(*v0 + 600);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_100011C14, 0, 0);
}

uint64_t sub_100011C14()
{
  v92 = v0;
  v1 = *(v0 + 544);
  if (v1)
  {
    v2 = sub_100002378(&_swiftEmptyArrayStorage);
    v3 = 0;
    v4 = -1;
    v5 = -1 << *(v1 + 32);
    if (-v5 < 64)
    {
      v4 = ~(-1 << -v5);
    }

    v6 = v4 & *(v1 + 64);
    v7 = (63 - v5) >> 6;
    v90 = v2;
    while (1)
    {
      while (1)
      {
        if (!v6)
        {
          if (v7 <= v3 + 1)
          {
            v9 = v3 + 1;
          }

          else
          {
            v9 = v7;
          }

          v10 = v9 - 1;
          while (1)
          {
            v8 = v3 + 1;
            if (__OFADD__(v3, 1))
            {
              break;
            }

            if (v8 >= v7)
            {
              v6 = 0;
              *(v0 + 152) = 0;
              *(v0 + 136) = 0u;
              *(v0 + 120) = 0u;
              *(v0 + 104) = 0u;
              v3 = v10;
              *(v0 + 88) = 0u;
              goto LABEL_18;
            }

            v6 = *(v1 + 64 + 8 * v8);
            ++v3;
            if (v6)
            {
              v3 = v8;
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        v8 = v3;
LABEL_17:
        v11 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v12 = v11 | (v8 << 6);
        sub_1000026A8(*(v1 + 48) + 40 * v12, v0 + 200);
        sub_1000125A0(*(v1 + 56) + 32 * v12, v0 + 320);
        *(v0 + 88) = *(v0 + 200);
        *(v0 + 104) = *(v0 + 216);
        *(v0 + 120) = *(v0 + 232);
        sub_100002698((v0 + 320), (v0 + 128));
LABEL_18:
        *(v0 + 80) = *(v0 + 152);
        v13 = *(v0 + 136);
        *(v0 + 48) = *(v0 + 120);
        *(v0 + 64) = v13;
        v14 = *(v0 + 104);
        *(v0 + 16) = *(v0 + 88);
        *(v0 + 32) = v14;
        if (!*(v0 + 40))
        {

          v63 = v90;
          if (v90[2])
          {
            v64 = *(v0 + 696);
            v65 = *(v0 + 688);
            v66 = *(v0 + 680);
            v67 = *(v0 + 592);
            goto LABEL_120;
          }

          goto LABEL_118;
        }

        sub_100002698((v0 + 56), (v0 + 352));
        v15 = *(v0 + 32);
        *(v0 + 240) = *(v0 + 16);
        *(v0 + 256) = v15;
        *(v0 + 272) = *(v0 + 48);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_6;
        }

        v17 = *(v0 + 448);
        v16 = *(v0 + 456);
        v18 = HIBYTE(v16) & 0xF;
        v19 = v17 & 0xFFFFFFFFFFFFLL;
        if ((v16 & 0x2000000000000000) != 0 ? HIBYTE(v16) & 0xF : v17 & 0xFFFFFFFFFFFFLL)
        {
          break;
        }

        v59 = *(v0 + 456);
        sub_100001D4C((v0 + 352));
      }

      if ((v16 & 0x1000000000000000) != 0)
      {
        v24 = sub_10000E2BC(*(v0 + 448), *(v0 + 456), 10);
        v88 = v60;

        if (v88)
        {
          goto LABEL_6;
        }

        goto LABEL_83;
      }

      if ((v16 & 0x2000000000000000) != 0)
      {
        v91[0] = *(v0 + 448);
        v91[1] = v16 & 0xFFFFFFFFFFFFFFLL;
        if (v17 == 43)
        {
          if (!v18)
          {
            goto LABEL_127;
          }

          v21 = (v18 - 1);
          if (v18 != 1)
          {
            v24 = 0;
            v35 = v91 + 1;
            while (1)
            {
              v36 = *v35 - 48;
              if (v36 > 9)
              {
                break;
              }

              v37 = 10 * v24;
              if ((v24 * 10) >> 64 != (10 * v24) >> 63)
              {
                break;
              }

              v24 = (v37 + v36);
              if (__OFADD__(v37, v36))
              {
                break;
              }

              ++v35;
              if (!--v21)
              {
                goto LABEL_82;
              }
            }
          }
        }

        else if (v17 == 45)
        {
          if (!v18)
          {
            goto LABEL_125;
          }

          v21 = (v18 - 1);
          if (v18 != 1)
          {
            v24 = 0;
            v28 = v91 + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                break;
              }

              v30 = 10 * v24;
              if ((v24 * 10) >> 64 != (10 * v24) >> 63)
              {
                break;
              }

              v24 = (v30 - v29);
              if (__OFSUB__(v30, v29))
              {
                break;
              }

              ++v28;
              if (!--v21)
              {
                goto LABEL_82;
              }
            }
          }
        }

        else if (v18)
        {
          v24 = 0;
          v40 = v91;
          while (1)
          {
            v41 = *v40 - 48;
            if (v41 > 9)
            {
              break;
            }

            v42 = 10 * v24;
            if ((v24 * 10) >> 64 != (10 * v24) >> 63)
            {
              break;
            }

            v24 = (v42 + v41);
            if (__OFADD__(v42, v41))
            {
              break;
            }

            ++v40;
            if (!--v18)
            {
LABEL_80:
              LOBYTE(v21) = 0;
              goto LABEL_82;
            }
          }
        }
      }

      else
      {
        if ((v17 & 0x1000000000000000) != 0)
        {
          v21 = ((v16 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v61 = *(v0 + 456);
          v62 = *(v0 + 448);
          v21 = _StringObject.sharedUTF8.getter();
        }

        v22 = *v21;
        if (v22 == 43)
        {
          if (v19 < 1)
          {
            goto LABEL_124;
          }

          v31 = v19 - 1;
          if (v19 != 1)
          {
            v24 = 0;
            if (!v21)
            {
              goto LABEL_82;
            }

            v32 = v21 + 1;
            while (1)
            {
              v33 = *v32 - 48;
              if (v33 > 9)
              {
                break;
              }

              v34 = 10 * v24;
              if ((v24 * 10) >> 64 != (10 * v24) >> 63)
              {
                break;
              }

              v24 = (v34 + v33);
              if (__OFADD__(v34, v33))
              {
                break;
              }

              ++v32;
              if (!--v31)
              {
                goto LABEL_80;
              }
            }
          }
        }

        else if (v22 == 45)
        {
          if (v19 < 1)
          {
            goto LABEL_126;
          }

          v23 = v19 - 1;
          if (v19 != 1)
          {
            v24 = 0;
            if (!v21)
            {
              goto LABEL_82;
            }

            v25 = v21 + 1;
            while (1)
            {
              v26 = *v25 - 48;
              if (v26 > 9)
              {
                break;
              }

              v27 = 10 * v24;
              if ((v24 * 10) >> 64 != (10 * v24) >> 63)
              {
                break;
              }

              v24 = (v27 - v26);
              if (__OFSUB__(v27, v26))
              {
                break;
              }

              ++v25;
              if (!--v23)
              {
                goto LABEL_80;
              }
            }
          }
        }

        else if (v19)
        {
          v24 = 0;
          if (!v21)
          {
            goto LABEL_82;
          }

          while (1)
          {
            v38 = *v21 - 48;
            if (v38 > 9)
            {
              break;
            }

            v39 = 10 * v24;
            if ((v24 * 10) >> 64 != (10 * v24) >> 63)
            {
              break;
            }

            v24 = (v39 + v38);
            if (__OFADD__(v39, v38))
            {
              break;
            }

            ++v21;
            if (!--v19)
            {
              goto LABEL_80;
            }
          }
        }
      }

      v24 = 0;
      LOBYTE(v21) = 1;
LABEL_82:
      v43 = v21;

      if (v43)
      {
        goto LABEL_6;
      }

LABEL_83:
      if (v24 > 3)
      {
        if (v24 == 4)
        {
          v44 = 3;
        }

        else if (v24 == 5)
        {
          v44 = 4;
        }

        else
        {
          if (v24 != 99)
          {
            goto LABEL_6;
          }

          v44 = 5;
        }
      }

      else if (v24 == 1)
      {
        v44 = 0;
      }

      else if (v24 == 2)
      {
        v44 = 1;
      }

      else
      {
        if (v24 != 3)
        {
          goto LABEL_6;
        }

        v44 = 2;
      }

      sub_1000125A0(v0 + 352, v0 + 384);
      sub_100001D04(&qword_1000A4F40, &unk_100083E20);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_6;
      }

      v45 = *(v0 + 568);
      *(v0 + 464) = 0x74756F6C6C6F72;
      *(v0 + 472) = 0xE700000000000000;
      AnyHashable.init<A>(_:)();
      if (!*(v45 + 16) || (v46 = sub_100001E88(v0 + 280), (v47 & 1) == 0))
      {

        sub_100002704(v0 + 280);
        goto LABEL_6;
      }

      sub_1000125A0(*(v45 + 56) + 32 * v46, v0 + 416);
      sub_100002704(v0 + 280);

      if (swift_dynamicCast())
      {
        v48 = *(v0 + 576);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v91[0] = v90;
        v50 = sub_100001E10(v44);
        v51 = v90[2];
        v52 = (v49 & 1) == 0;
        result = v51 + v52;
        if (__OFADD__(v51, v52))
        {
          __break(1u);
LABEL_131:
          __break(1u);
          return result;
        }

        if (v90[3] >= result)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v49 & 1) == 0)
            {
              goto LABEL_104;
            }
          }

          else
          {
            v86 = v49;
            v89 = v50;
            sub_10000F2D0();
            v50 = v89;
            v90 = v91[0];
            if ((v86 & 1) == 0)
            {
              goto LABEL_104;
            }
          }

LABEL_108:
          *(v90[7] + 8 * v50) = v48;
          goto LABEL_6;
        }

        v85 = v49;
        sub_10000E848(result, isUniquelyReferenced_nonNull_native);
        v90 = v91[0];
        v54 = sub_100001E10(v44);
        if ((v85 & 1) != (v55 & 1))
        {
          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v50 = v54;
        if (v85)
        {
          goto LABEL_108;
        }

LABEL_104:
        v90[(v50 >> 6) + 8] |= 1 << v50;
        *(v90[6] + v50) = v44;
        *(v90[7] + 8 * v50) = v48;
        result = sub_100001D4C((v0 + 352));
        v56 = v90[2];
        v57 = __OFADD__(v56, 1);
        v58 = v56 + 1;
        if (v57)
        {
          goto LABEL_131;
        }

        v90[2] = v58;
      }

      else
      {
LABEL_6:
        sub_100001D4C((v0 + 352));
      }
    }
  }

LABEL_118:
  if (qword_1000A4D10 != -1)
  {
LABEL_128:
    swift_once();
  }

  v64 = *(v0 + 696);
  v65 = *(v0 + 688);
  v66 = *(v0 + 680);
  v68 = *(v0 + 592);
  v63 = qword_1000A6330;

  v67 = v68;
LABEL_120:
  sub_100012538(v67);
  (*(v65 + 8))(v64, v66);
  v69 = *(v0 + 872);
  v70 = *(v0 + 856);
  v71 = *(v0 + 840);
  v72 = *(v0 + 824);
  v73 = *(v0 + 808);
  v74 = *(v0 + 792);
  v75 = *(v0 + 776);
  v76 = *(v0 + 760);
  v77 = *(v0 + 744);
  v78 = *(v0 + 696);
  v79 = *(v0 + 672);
  v80 = *(v0 + 664);
  v81 = *(v0 + 640);
  v82 = *(v0 + 616);
  v83 = *(v0 + 584);
  *v83 = *(v0 + 728);
  v83[1] = v63;
  v83[2] = v77;
  v83[3] = v76;
  v83[4] = v75;
  v83[5] = v74;
  v83[6] = v73;
  v83[7] = v72;
  v83[8] = v71;
  v83[9] = v70;
  v83[10] = v69;

  v84 = *(v0 + 8);

  return v84();
}

uint64_t sub_1000124C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001D04(&unk_1000A56A0, &unk_100083E10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100012538(uint64_t a1)
{
  v2 = sub_100001D04(&unk_1000A56A0, &unk_100083E10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000125A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

__n128 sub_100012600(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100012624(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_10001266C(uint64_t result, int a2, int a3)
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

uint64_t sub_1000126D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[45] = a2;
  v4[46] = a4;
  v4[44] = a1;
  v5 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v4[47] = swift_task_alloc();
  v6 = type metadata accessor for DaemonPushSubscriptionRequest.State();
  v4[48] = v6;
  v7 = *(v6 - 8);
  v4[49] = v7;
  v8 = *(v7 + 64) + 15;
  v4[50] = swift_task_alloc();

  return _swift_task_switch(sub_1000127C4, 0, 0);
}

uint64_t sub_1000127C4()
{
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[48];
  v4 = v0[45];
  DaemonPushSubscriptionRequest.state.getter();
  v5 = (*(v2 + 88))(v1, v3);
  if (v5 == enum case for DaemonPushSubscriptionRequest.State.subscribe(_:))
  {
    v6 = v0[50];
    (*(v0[49] + 96))(v6, v0[48]);
    v7 = *v6;
    v0[51] = *v6;
    v8 = v6[1];
    v0[52] = v8;
    if (qword_1000A4D40 != -1)
    {
      swift_once();
    }

    v9 = v0[47];
    TaskLocal.get()();
    v10 = v0[26];
    sub_100001CC0(v0 + 22, v0[25]);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v11 = *(type metadata accessor for LogMessage() - 8);
    v12 = *(v11 + 72);
    v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v14._object = 0x8000000100087250;
    v14._countAndFlagsBits = 0xD000000000000021;
    LogMessage.StringInterpolation.appendLiteral(_:)(v14);
    v0[43] = &type metadata for String;
    v0[40] = v7;
    v0[41] = v8;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_100013EFC((v0 + 40));
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    LogMessage.init(stringInterpolation:)();
    Logger.debug(_:)();

    sub_100001D4C(v0 + 22);
    v16 = sub_100001D04(&qword_1000A4E88, &qword_100085E20);
    v17 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v18 = swift_task_alloc();
    v0[53] = v18;
    *v18 = v0;
    v18[1] = sub_100012B68;
    v19 = v0[46];
    v20 = v0 + 27;
    goto LABEL_7;
  }

  if (v5 == enum case for DaemonPushSubscriptionRequest.State.unsubscribe(_:))
  {
    v21 = v0[50];
    (*(v0[49] + 96))(v21, v0[48]);
    v0[56] = *v21;
    v0[57] = v21[1];
    v16 = sub_100001D04(&qword_1000A4E88, &qword_100085E20);
    v22 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v23 = swift_task_alloc();
    v0[58] = v23;
    *v23 = v0;
    v23[1] = sub_100012F20;
    v24 = v0[46];
    v20 = v0 + 2;
LABEL_7:

    return BaseObjectGraph.inject<A>(_:)(v20, v16, v16);
  }

  v25 = v0[48];

  return _diagnoseUnexpectedEnumCase<A>(type:)(v25, v25);
}

uint64_t sub_100012B68()
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v7 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v4 = *(v2 + 416);

    v5 = sub_100013A2C;
  }

  else
  {
    v5 = sub_100012C84;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100012C84()
{
  v2 = v0[51];
  v1 = v0[52];
  sub_100001CC0(v0 + 27, v0[30]);
  type metadata accessor for PushManager();
  sub_100038268();

  v3 = *sub_100001CC0(v0 + 27, v0[30]);
  v4 = swift_task_alloc();
  v0[55] = v4;
  *v4 = v0;
  v4[1] = sub_100012D84;

  return sub_100028A34();
}

uint64_t sub_100012D84()
{
  v1 = *(*v0 + 440);
  v3 = *v0;

  return _swift_task_switch(sub_100012E8C, 0, 0);
}

uint64_t sub_100012E8C()
{
  v1 = v0[44];
  DaemonResponse.init<>(_:)();
  sub_100001D4C(v0 + 27);
  v2 = v0[50];
  v3 = v0[47];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100012F20()
{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v7 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    v4 = *(v2 + 456);

    v5 = sub_100013C94;
  }

  else
  {
    v5 = sub_10001303C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10001303C()
{
  v1 = v0[57];
  if (v1)
  {
    if (qword_1000A4D40 != -1)
    {
      swift_once();
    }

    v2 = v0[56];
    v3 = v0[47];
    TaskLocal.get()();
    v4 = v0[21];
    sub_100001CC0(v0 + 17, v0[20]);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v5 = *(type metadata accessor for LogMessage() - 8);
    v6 = *(v5 + 72);
    v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v8._object = 0x8000000100087220;
    v8._countAndFlagsBits = 0xD000000000000025;
    LogMessage.StringInterpolation.appendLiteral(_:)(v8);
    v0[39] = &type metadata for String;
    v0[36] = v2;
    v0[37] = v1;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_100013EFC((v0 + 36));
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v9);
    LogMessage.init(stringInterpolation:)();
    Logger.debug(_:)();

    sub_100001D4C(v0 + 17);
    sub_100001CC0(v0 + 2, v0[5]);
    type metadata accessor for PushManager();
    sub_100038280();

    v10 = *sub_100001CC0(v0 + 2, v0[5]);
    v11 = swift_task_alloc();
    v0[62] = v11;
    *v11 = v0;
    v11[1] = sub_100013890;

    return sub_100028A34();
  }

  else
  {
    if (qword_1000A4D40 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    v13 = v0[16];
    sub_100001CC0(v0 + 12, v0[15]);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v14 = *(type metadata accessor for LogMessage() - 8);
    v15 = *(v14 + 72);
    v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.debug(_:)();

    sub_100001D4C(v0 + 12);
    v17 = *sub_100001CC0(v0 + 2, v0[5]);
    v18 = swift_task_alloc();
    v0[60] = v18;
    *v18 = v0;
    v18[1] = sub_100013470;

    return sub_100027B34();
  }
}

uint64_t sub_100013470()
{
  v2 = *(*v1 + 480);
  v5 = *v1;
  *(*v1 + 488) = v0;

  if (v0)
  {
    v3 = sub_100013620;
  }

  else
  {
    v3 = sub_100013584;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100013584()
{
  v1 = *sub_100001CC0(v0 + 2, v0[5]);
  v2 = swift_task_alloc();
  v0[62] = v2;
  *v2 = v0;
  v2[1] = sub_100013890;

  return sub_100028A34();
}

uint64_t sub_100013620()
{
  sub_100001D4C(v0 + 2);
  v16 = v0[61];
  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  v1 = v0[47];
  v2 = v0[44];
  v3 = v0[45];
  TaskLocal.get()();
  v4 = v0[11];
  sub_100001CC0(v0 + 7, v0[10]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v5 = *(type metadata accessor for LogMessage() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._object = 0x8000000100087180;
  v8._countAndFlagsBits = 0xD000000000000027;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  v9 = type metadata accessor for DaemonPushSubscriptionRequest();
  v0[35] = v9;
  v10 = sub_1000061A4(v0 + 32);
  (*(*(v9 - 8) + 16))(v10, v3, v9);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_100013EFC((v0 + 32));
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 7);
  DaemonResponse.init(_:)();
  v12 = v0[50];
  v13 = v0[47];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100013890()
{
  v1 = *(*v0 + 496);
  v3 = *v0;

  return _swift_task_switch(sub_100013998, 0, 0);
}

uint64_t sub_100013998()
{
  v1 = v0[44];
  DaemonResponse.init<>(_:)();
  sub_100001D4C(v0 + 2);
  v2 = v0[50];
  v3 = v0[47];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100013A2C()
{
  v16 = v0[54];
  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  v1 = v0[47];
  v2 = v0[44];
  v3 = v0[45];
  TaskLocal.get()();
  v4 = v0[11];
  sub_100001CC0(v0 + 7, v0[10]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v5 = *(type metadata accessor for LogMessage() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._object = 0x8000000100087180;
  v8._countAndFlagsBits = 0xD000000000000027;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  v9 = type metadata accessor for DaemonPushSubscriptionRequest();
  v0[35] = v9;
  v10 = sub_1000061A4(v0 + 32);
  (*(*(v9 - 8) + 16))(v10, v3, v9);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_100013EFC((v0 + 32));
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 7);
  DaemonResponse.init(_:)();
  v12 = v0[50];
  v13 = v0[47];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100013C94()
{
  v16 = v0[59];
  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  v1 = v0[47];
  v2 = v0[44];
  v3 = v0[45];
  TaskLocal.get()();
  v4 = v0[11];
  sub_100001CC0(v0 + 7, v0[10]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v5 = *(type metadata accessor for LogMessage() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._object = 0x8000000100087180;
  v8._countAndFlagsBits = 0xD000000000000027;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  v9 = type metadata accessor for DaemonPushSubscriptionRequest();
  v0[35] = v9;
  v10 = sub_1000061A4(v0 + 32);
  (*(*(v9 - 8) + 16))(v10, v3, v9);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_100013EFC((v0 + 32));
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 7);
  DaemonResponse.init(_:)();
  v12 = v0[50];
  v13 = v0[47];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100013EFC(uint64_t a1)
{
  v2 = sub_100001D04(&qword_1000A5630, &unk_100083BF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100013F78()
{
  result = qword_1000A4F58;
  if (!qword_1000A4F58)
  {
    type metadata accessor for DaemonPushSubscriptionRequest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4F58);
  }

  return result;
}

uint64_t sub_100013FD0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 7759204;
  if (v2 != 1)
  {
    v4 = 0x7079746F746F7270;
    v3 = 0xED0000646F725065;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1685025392;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 7759204;
  if (*a2 != 1)
  {
    v8 = 0x7079746F746F7270;
    v7 = 0xED0000646F725065;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1685025392;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1000140D4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100014174()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100014200()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10001429C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001494C(*a1);
  *a2 = result;
  return result;
}

void sub_1000142CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE300000000000000;
  v5 = 7759204;
  if (v2 != 1)
  {
    v5 = 0x7079746F746F7270;
    v4 = 0xED0000646F725065;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1685025392;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

double sub_100014328()
{
  type metadata accessor for LocalPreferences();
  static LocalPreferences.currentApplication.getter();
  sub_100014394(v1);

  xmmword_1000A6338 = v1[0];
  unk_1000A6348 = v1[1];
  result = *&v2;
  xmmword_1000A6358 = v2;
  qword_1000A6368 = v3;
  return result;
}

uint64_t sub_100014394@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100001D04(&qword_1000A4EE0, &qword_100083C00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - v5;
  PreferenceKey.init(_:)();
  type metadata accessor for LocalPreferences();
  Preferences.subscript.getter();
  (*(v3 + 8))(v6, v2);
  object = v19._object;
  v8 = "e to Cloud Channel";
  v9 = "CONTAINER_CACHE_DIR";
  if (v19._object)
  {
    v10 = _findStringSwitchCase(cases:string:)(&off_10009DF40, v19);

    v11 = &APSEnvironmentProduction;
    v12 = "bfRfuTC1EfAAAHLUCeQW0A==";
    if (v10 == 1)
    {
      v11 = &APSEnvironmentDevelopment;
      v13 = 1;
    }

    else
    {
      v13 = 0;
    }

    if (v10 != 1)
    {
      v12 = "e to Cloud Channel";
    }

    v14 = v10 == 2;
    if (v10 == 2)
    {
      v11 = &APSEnvironmentProduction;
      object = 2;
    }

    else
    {
      object = v13;
    }

    if (v10 == 2)
    {
      v15 = 0xD000000000000020;
    }

    else
    {
      v15 = 0xD000000000000017;
    }

    if (v14)
    {
      v9 = "8Trk3gqBEfAAAMJxP4Ly2Q==";
      v8 = "k.push.prototype";
    }

    else
    {
      v8 = v12;
    }
  }

  else
  {
    v11 = &APSEnvironmentProduction;
    v15 = 0xD000000000000017;
  }

  v16 = *v11;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = object;
  *(a1 + 8) = result;
  *(a1 + 16) = v18;
  *(a1 + 24) = v15;
  *(a1 + 32) = v9 | 0x8000000000000000;
  *(a1 + 40) = 0xD000000000000018;
  *(a1 + 48) = v8 | 0x8000000000000000;
  return result;
}

void sub_1000145DC()
{
  v0 = type metadata accessor for LogMessage.StringInterpolation();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  if (qword_1000A4D18 != -1)
  {
    swift_once();
  }

  v2 = xmmword_1000A6338;
  v3 = xmmword_1000A6358;
  v17 = qword_1000A6350;
  if (qword_1000A4D48 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100001CC0(v20, v20[3]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v4 = *(type metadata accessor for LogMessage() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 0xD000000000000032;
  v7._object = 0x8000000100087350;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  v19 = &type metadata for PushEnvironment;
  v18[0] = v2;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_100013EFC(v18);
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  LogMessage.init(stringInterpolation:)();
  Logger.debug(_:)();

  sub_100001D4C(v20);
  sub_100014998();
  v9 = static OS_dispatch_queue.main.getter();
  v10 = objc_allocWithZone(APSConnection);
  v11 = String._bridgeToObjectiveC()();
  v12 = String._bridgeToObjectiveC()();
  v13 = [v10 initWithEnvironmentName:v11 namedDelegatePort:v12 queue:v9];

  if (v13)
  {
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v13 _setEnabledTopics:isa];

    sub_100001D04(&unk_1000A5650, &qword_100084490);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1000839C0;
    *(v15 + 32) = v17;
    *(v15 + 40) = v3;

    v16 = Array._bridgeToObjectiveC()().super.isa;

    [v13 _setOpportunisticTopics:v16];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_10001494C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10009DF40, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100014998()
{
  result = qword_1000A4F80;
  if (!qword_1000A4F80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000A4F80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PushEnvironment(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PushEnvironment(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100014B40()
{
  result = qword_1000A4F88;
  if (!qword_1000A4F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4F88);
  }

  return result;
}

uint64_t sub_100014B94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100001D04(&unk_1000A56A0, &unk_100083E10);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v21 - v11;
  PreferenceKey.init(_:)();
  v13 = type metadata accessor for BagManager();
  *(a3 + v13[5]) = a1;
  sub_1000064B4(a2, a3 + v13[6]);
  v14 = type metadata accessor for Bag();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v15 = sub_100001D04(&qword_1000A4FC0, &qword_100084028);
  v16 = *(v15 + 52);
  v17 = (*(v15 + 48) + 3) & 0x1FFFFFFFCLL;
  v18 = swift_allocObject();
  *(v18 + ((*(*v18 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1000124C8(v12, v10);

  sub_10000DCA0(v12, &unk_1000A56A0, &unk_100083E10);
  sub_100018BC0(v10, v18 + *(*v18 + class metadata base offset for ManagedBuffer + 16));
  *(a3 + v13[7]) = v18;
  sub_100001D04(&qword_1000A4FC8, &unk_100084030);
  v19 = swift_allocObject();
  *(v19 + 20) = 0;

  result = sub_100001D4C(a2);
  *(v19 + 16) = 0;
  *(a3 + v13[8]) = v19;
  return result;
}

uint64_t sub_100014E00()
{
  v0 = type metadata accessor for BagService.ExpiredDataUsage();
  sub_100018750(v0, qword_1000A4F90);
  sub_100018718(v0, qword_1000A4F90);
  return static BagService.ExpiredDataUsage.permitted(maxExpirationDuration:)();
}

uint64_t sub_100014E58(char a1)
{
  v2 = type metadata accessor for BagService.PermittedDataOrigin();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  updated = type metadata accessor for BagService.UpdatePolicy();
  v5 = *(*(updated - 8) + 64);
  __chkstk_darwin(updated - 8);
  v6 = type metadata accessor for BagService.ExpiredDataUsage();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (a1 == 1)
    {
      if (qword_1000A4D28 != -1)
      {
        v17 = v9;
        swift_once();
        v9 = v17;
      }

      v12 = v9;
      v13 = sub_100018718(v9, qword_1000A4F90);
      (*(v7 + 16))(v11, v13, v12);
      static BagService.UpdatePolicy.never.getter();
      static BagService.PermittedDataOrigin.networkAndPersistence.getter();
    }

    else
    {
      static BagService.ExpiredDataUsage.notPermitted.getter();
      static BagService.UpdatePolicy.never.getter();
      static BagService.PermittedDataOrigin.networkOnly.getter();
    }
  }

  else
  {
    if (qword_1000A4D28 != -1)
    {
      v18 = v9;
      swift_once();
      v9 = v18;
    }

    v14 = v9;
    v15 = sub_100018718(v9, qword_1000A4F90);
    (*(v7 + 16))(v11, v15, v14);
    static BagService.UpdatePolicy.never.getter();
    static BagService.PermittedDataOrigin.persistenceOnly.getter();
  }

  return BagService.Policy.init(expiredDataUsage:updatePolicy:permittedDataOrigin:)();
}

uint64_t sub_1000150C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x4E724F6568636163;
  v4 = 0xEE006B726F777465;
  if (v2 != 1)
  {
    v3 = 0x6552646563726F66;
    v4 = 0xED00006873657266;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6C6E4F6568636163;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000079;
  }

  v7 = 0x4E724F6568636163;
  v8 = 0xEE006B726F777465;
  if (*a2 != 1)
  {
    v7 = 0x6552646563726F66;
    v8 = 0xED00006873657266;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6C6E4F6568636163;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000079;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1000151F4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000152B4()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100015360()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10001541C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001912C(*a1);
  *a2 = result;
  return result;
}

void sub_10001544C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000079;
  v4 = 0xEE006B726F777465;
  v5 = 0x4E724F6568636163;
  if (v2 != 1)
  {
    v5 = 0x6552646563726F66;
    v4 = 0xED00006873657266;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C6E4F6568636163;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1000154D8()
{
  v1 = v0;
  v2 = type metadata accessor for BagService.PermittedDataOrigin();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  (*(v3 + 16))(&v15 - v8, v1, v2);
  static BagService.PermittedDataOrigin.persistenceOnly.getter();
  sub_1000186C0();
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = *(v3 + 8);
  v11(v7, v2);
  if (v10)
  {
    v11(v9, v2);
    return 0x6574736973726570;
  }

  else
  {
    static BagService.PermittedDataOrigin.networkAndPersistence.getter();
    v13 = dispatch thunk of static Equatable.== infix(_:_:)();
    v11(v7, v2);
    if (v13)
    {
      v11(v9, v2);
      return 0xD000000000000015;
    }

    else
    {
      static BagService.PermittedDataOrigin.networkOnly.getter();
      v14 = dispatch thunk of static Equatable.== infix(_:_:)();
      v11(v7, v2);
      v11(v9, v2);
      if (v14)
      {
        return 0x4F6B726F7774656ELL;
      }

      else
      {
        return 0x6E776F6E6B6E7528;
      }
    }
  }
}

uint64_t sub_100015738(uint64_t a1)
{
  v2[25] = a1;
  v2[26] = v1;
  v3 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v2[27] = swift_task_alloc();
  v4 = *(*(sub_100001D04(&unk_1000A56A0, &unk_100083E10) - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v5 = type metadata accessor for Bag();
  v2[31] = v5;
  v6 = *(v5 - 8);
  v2[32] = v6;
  v7 = *(v6 + 64) + 15;
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();

  return _swift_task_switch(sub_10001588C, 0, 0);
}

uint64_t sub_10001588C()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  v4 = *(v0 + 208);
  v5 = type metadata accessor for BagManager();
  v6 = *(v4 + v5[7]);
  *(v0 + 288) = v6;
  v7 = *v6;
  v8 = *(*v6 + class metadata base offset for ManagedBuffer + 16);
  *(v0 + 296) = v8;
  v9 = *(v7 + 48);
  *(v0 + 376) = v9;
  v10 = (v9 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v6 + v10));
  sub_1000124C8(v6 + v8, v3);
  os_unfair_lock_unlock((v6 + v10));
  v11 = *(v2 + 48);
  *(v0 + 304) = v11;
  *(v0 + 312) = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v11(v3, 1, v1) != 1)
  {
    v14 = *(v0 + 280);
    v15 = *(v0 + 248);
    v16 = *(v0 + 256);
    v17 = *(v0 + 200);
    v18 = *(v16 + 32);
    v18(v14, *(v0 + 240), v15);
    v18(v17, v14, v15);
    (*(v16 + 56))(v17, 0, 1, v15);
    goto LABEL_5;
  }

  v12 = *(v0 + 208);
  sub_10000DCA0(*(v0 + 240), &unk_1000A56A0, &unk_100083E10);
  v13 = *(v12 + v5[8]);
  *(v0 + 320) = v13;
  os_unfair_lock_lock((v13 + 20));
  LODWORD(v12) = *(v13 + 16);
  os_unfair_lock_unlock((v13 + 20));
  if (v12 == 1)
  {
    (*(*(v0 + 256) + 56))(*(v0 + 200), 1, 1, *(v0 + 248));
LABEL_5:
    v20 = *(v0 + 272);
    v19 = *(v0 + 280);
    v21 = *(v0 + 264);
    v23 = *(v0 + 232);
    v22 = *(v0 + 240);
    v25 = *(v0 + 216);
    v24 = *(v0 + 224);

    v26 = *(v0 + 8);

    return v26();
  }

  v28 = *(*(v0 + 208) + v5[5]);
  type metadata accessor for LocalPreferences();
  Preferences.subscript.getter();
  v29 = *(v0 + 384);
  if (v29 != 2 && (v29 & 1) == 0)
  {
    if (qword_1000A4D58 != -1)
    {
      swift_once();
    }

    v49 = *(v0 + 248);
    v50 = *(v0 + 256);
    v47 = *(v0 + 264);
    v48 = *(v0 + 224);
    v46 = *(v0 + 208);
    TaskLocal.get()();
    v45 = *(v0 + 128);
    sub_100001CC0((v0 + 96), *(v0 + 120));
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v35 = *(type metadata accessor for LogMessage() - 8);
    v36 = *(v35 + 72);
    v37 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    sub_100001D4C((v0 + 96));
    sub_10001653C();
    (*(v50 + 16))(v48, v47, v49);
    v38 = *(v50 + 56);
    v38(v48, 0, 1, v49);
    *(swift_task_alloc() + 16) = v48;
    os_unfair_lock_lock((v6 + v10));
    sub_100019178(v6 + v8);
    os_unfair_lock_unlock((v6 + v10));
    v39 = *(v0 + 248);
    v40 = *(v0 + 224);

    if (v11(v40, 1, v39) != 1)
    {
      os_unfair_lock_lock((v13 + 20));
      *(v13 + 16) = 0;
      os_unfair_lock_unlock((v13 + 20));
    }

    v42 = *(v0 + 256);
    v41 = *(v0 + 264);
    v43 = *(v0 + 248);
    v44 = *(v0 + 200);
    sub_10000DCA0(*(v0 + 224), &unk_1000A56A0, &unk_100083E10);
    (*(v42 + 32))(v44, v41, v43);
    v38(v44, 0, 1, v43);
    goto LABEL_5;
  }

  if (qword_1000A4D58 != -1)
  {
    swift_once();
  }

  *(v0 + 328) = qword_1000A63B0;
  TaskLocal.get()();
  v30 = *(v0 + 48);
  sub_100001CC0((v0 + 16), *(v0 + 40));
  *(v0 + 336) = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v31 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 344) = *(v31 + 72);
  *(v0 + 380) = *(v31 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100001D4C((v0 + 16));
  *(v0 + 352) = sub_1000180DC(0);
  v32 = async function pointer to Promise.then()[1];
  v33 = swift_task_alloc();
  *(v0 + 360) = v33;
  *v33 = v0;
  v33[1] = sub_100015F84;
  v34 = *(v0 + 272);

  return Promise.then()(v34);
}

uint64_t sub_100015F84()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v7 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v4 = sub_1000162A4;
  }

  else
  {
    v5 = *(v2 + 352);

    v4 = sub_1000160A0;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_1000160A0()
{
  v1 = *(v0 + 368);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v4 = *(v0 + 248);
  v5 = *(v0 + 256);
  v6 = *(v0 + 232);
  v7 = (*(v0 + 376) + 3) & 0x1FFFFFFFCLL;
  (*(v5 + 16))(v6, *(v0 + 272), v4);
  v8 = *(v5 + 56);
  v8(v6, 0, 1, v4);
  *(swift_task_alloc() + 16) = v6;
  os_unfair_lock_lock((v3 + v7));
  sub_10001866C(v3 + v2);
  os_unfair_lock_unlock((v3 + v7));
  if (!v1)
  {
    v10 = *(v0 + 304);
    v9 = *(v0 + 312);
    v11 = *(v0 + 248);
    v12 = *(v0 + 232);

    if (v10(v12, 1, v11) != 1)
    {
      v13 = *(v0 + 320);
      os_unfair_lock_lock((v13 + 20));
      *(v13 + 16) = 0;
      os_unfair_lock_unlock((v13 + 20));
    }

    v14 = *(v0 + 272);
    v15 = *(v0 + 248);
    v16 = *(v0 + 256);
    v17 = *(v0 + 200);
    sub_10000DCA0(*(v0 + 232), &unk_1000A56A0, &unk_100083E10);
    (*(v16 + 32))(v17, v14, v15);
    v8(v17, 0, 1, v15);
    v19 = *(v0 + 272);
    v18 = *(v0 + 280);
    v20 = *(v0 + 264);
    v22 = *(v0 + 232);
    v21 = *(v0 + 240);
    v24 = *(v0 + 216);
    v23 = *(v0 + 224);

    v25 = *(v0 + 8);

    v25();
  }
}

uint64_t sub_1000162A4()
{
  v23 = *(v0 + 368);
  v2 = *(v0 + 344);
  v1 = *(v0 + 352);
  v3 = *(v0 + 380);
  v4 = *(v0 + 328);
  v5 = *(v0 + 336);
  v6 = *(v0 + 320);
  v7 = *(v0 + 256);
  v8 = *(v0 + 216);
  v25 = *(v0 + 200);
  v26 = *(v0 + 248);

  TaskLocal.get()();
  v24 = *(v0 + 88);
  sub_100001CC0((v0 + 56), *(v0 + 80));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._object = 0x80000001000873D0;
  v9._countAndFlagsBits = 0xD000000000000039;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  swift_getErrorValue();
  v10 = *(v0 + 168);
  v11 = *(v0 + 176);
  *(v0 + 160) = v11;
  v12 = sub_1000061A4((v0 + 136));
  (*(*(v11 - 8) + 16))(v12, v10, v11);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 136, &qword_1000A5630, &unk_100083BF0);
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C((v0 + 56));
  os_unfair_lock_lock((v6 + 20));
  *(v6 + 16) = 1;
  os_unfair_lock_unlock((v6 + 20));

  (*(v7 + 56))(v25, 1, 1, v26);
  v15 = *(v0 + 272);
  v14 = *(v0 + 280);
  v16 = *(v0 + 264);
  v18 = *(v0 + 232);
  v17 = *(v0 + 240);
  v20 = *(v0 + 216);
  v19 = *(v0 + 224);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t type metadata accessor for BagManager()
{
  result = qword_1000A5028;
  if (!qword_1000A5028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001653C()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v5 = [objc_allocWithZone(AMSSnapshotBagBuilder) init];
  v6 = String._bridgeToObjectiveC()();
  [v5 setProfile:v6];

  v7 = String._bridgeToObjectiveC()();
  [v5 setProfileVersion:v7];

  static Date.distantFuture.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v4, v0);
  [v5 setExpirationDate:isa];

  v9 = [objc_opt_self() currentProcess];
  [v5 setProcessInfo:v9];

  sub_100001D04(&qword_1000A4FA8, &unk_100083FF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000839C0;
  *(inited + 32) = 1801678701;
  v11 = inited + 32;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  sub_100002248(inited);
  swift_setDeallocating();
  sub_10000DCA0(v11, &qword_1000A4E48, &unk_100086440);
  v12 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v5 setData:v12];

  v17[0] = 0;
  if ([v5 buildWithError:v17])
  {
    v13 = v17[0];
    Bag.init(from:)();
  }

  else
  {
    v14 = v17[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v17[0] = 0;
    v17[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(39);
    v15._object = 0x8000000100087430;
    v15._countAndFlagsBits = 0xD000000000000025;
    String.append(_:)(v15);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t sub_1000168D4()
{
  v1 = v0;
  v2 = type metadata accessor for Bag();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v27[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v27[-1] - v8;
  v10 = type metadata accessor for BagManager();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = *(v0 + *(__chkstk_darwin(v10 - 8) + 28));
  type metadata accessor for LocalPreferences();
  Preferences.subscript.getter();
  if (LOBYTE(v27[0]) == 2 || (v27[0] & 1) != 0)
  {
    if (qword_1000A4D58 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    sub_100001CC0(v27, v28);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v14 = *(type metadata accessor for LogMessage() - 8);
    v15 = *(v14 + 72);
    v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    sub_100001D4C(v27);
    v17 = sub_1000180DC(1);
    sub_1000187B4(v1, &v27[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    v18 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v19 = swift_allocObject();
    sub_100006208(&v27[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
    v20 = sub_100014998();
    v21 = static OS_dispatch_queue.main.getter();
    v28 = v20;
    v29 = &protocol witness table for OS_dispatch_queue;
    v27[0] = v21;
    Promise.always(on:perform:)();

    sub_100001D4C(v27);
  }

  else
  {
    if (qword_1000A4D58 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    sub_100001CC0(v27, v28);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v22 = *(type metadata accessor for LogMessage() - 8);
    v23 = *(v22 + 72);
    v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    sub_100001D4C(v27);
    sub_10001653C();
    sub_100001D04(&qword_1000A4FB8, &qword_100084008);
    (*(v3 + 16))(v7, v9, v2);
    v17 = Promise.__allocating_init(value:)();
    (*(v3 + 8))(v9, v2);
  }

  return v17;
}

uint64_t sub_100016DC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BagManager();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = sub_100001D04(&qword_1000A4ED8, &qword_100084010);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_1000187B4(a2, &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a1;
  sub_100006208(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);

  sub_100023290(0, 0, v10, &unk_100084020, v13);
}

uint64_t sub_100016F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a5;
  v6 = *(*(sub_100001D04(&unk_1000A56A0, &unk_100083E10) - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v7 = swift_task_alloc();
  v5[9] = v7;
  v8 = type metadata accessor for Bag();
  v5[10] = v8;
  v9 = *(v8 - 8);
  v5[11] = v9;
  v10 = *(v9 + 64) + 15;
  v5[12] = swift_task_alloc();
  v11 = async function pointer to Promise.then()[1];
  v12 = swift_task_alloc();
  v5[13] = v12;
  *v12 = v5;
  v12[1] = sub_1000170B0;

  return Promise.then()(v7);
}

uint64_t sub_1000170B0()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {

    v3 = sub_10001755C;
  }

  else
  {
    v3 = sub_1000171CC;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_1000171CC()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v29 = *(v2 + 56);
  v29(v4, 0, 1, v3);
  (*(v2 + 32))(v1, v4, v3);
  if (qword_1000A4D58 != -1)
  {
    swift_once();
  }

  v30 = v0[14];
  v5 = v0[11];
  v6 = v0[10];
  v7 = v0[8];
  v27 = v0[12];
  v28 = v0[7];
  TaskLocal.get()();
  v8 = v0[6];
  sub_100001CC0(v0 + 2, v0[5]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v9 = *(type metadata accessor for LogMessage() - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.debug(_:)();

  sub_100001D4C(v0 + 2);
  (*(v5 + 16))(v7, v27, v6);
  v29(v7, 0, 1, v6);
  v12 = type metadata accessor for BagManager();
  v13 = *(v28 + *(v12 + 28));
  *(swift_task_alloc() + 16) = v7;
  v14 = *(*v13 + class metadata base offset for ManagedBuffer + 16);
  v15 = (*(*v13 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v13 + v15));
  sub_100019178(v13 + v14);
  os_unfair_lock_unlock((v13 + v15));
  if (!v30)
  {
    v16 = v0[10];
    v17 = v0[11];
    v18 = v0[8];

    if ((*(v17 + 48))(v18, 1, v16) != 1)
    {
      v19 = *(v0[7] + *(v12 + 32));
      os_unfair_lock_lock((v19 + 20));
      *(v19 + 16) = 0;
      os_unfair_lock_unlock((v19 + 20));
    }

    v21 = v0[11];
    v20 = v0[12];
    v22 = v0[10];
    sub_10000DCA0(v0[8], &unk_1000A56A0, &unk_100083E10);
    (*(v21 + 8))(v20, v22);
    v23 = v0[12];
    v24 = v0[8];
    v25 = v0[9];

    v26 = v0[1];

    v26();
  }
}

uint64_t sub_10001755C()
{
  v1 = v0[9];
  (*(v0[11] + 56))(v1, 1, 1, v0[10]);
  sub_10000DCA0(v1, &unk_1000A56A0, &unk_100083E10);
  v2 = v0[12];
  v3 = v0[8];
  v4 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10001760C()
{
  v1[25] = v0;
  v2 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v1[26] = swift_task_alloc();
  v3 = *(*(sub_100001D04(&unk_1000A56A0, &unk_100083E10) - 8) + 64) + 15;
  v1[27] = swift_task_alloc();
  v4 = type metadata accessor for Bag();
  v1[28] = v4;
  v5 = *(v4 - 8);
  v1[29] = v5;
  v6 = *(v5 + 64) + 15;
  v1[30] = swift_task_alloc();

  return _swift_task_switch(sub_100017730, 0, 0);
}

uint64_t sub_100017730()
{
  v1 = *(v0 + 200);
  v2 = type metadata accessor for BagManager();
  *(v0 + 248) = v2;
  v3 = *(v1 + *(v2 + 20));
  type metadata accessor for LocalPreferences();
  Preferences.subscript.getter();
  v4 = *(v0 + 308);
  if (v4 == 2 || (v4 & 1) != 0)
  {
    if (qword_1000A4D58 != -1)
    {
      swift_once();
    }

    *(v0 + 256) = qword_1000A63B0;
    TaskLocal.get()();
    v5 = *(v0 + 48);
    sub_100001CC0((v0 + 16), *(v0 + 40));
    *(v0 + 264) = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v6 = *(type metadata accessor for LogMessage() - 8);
    *(v0 + 272) = *(v6 + 72);
    *(v0 + 304) = *(v6 + 80);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    sub_100001D4C((v0 + 16));
    *(v0 + 280) = sub_1000180DC(2);
    v7 = async function pointer to Promise.then()[1];
    v8 = swift_task_alloc();
    *(v0 + 288) = v8;
    *v8 = v0;
    v8[1] = sub_100017AF0;
    v9 = *(v0 + 240);

    return Promise.then()(v9);
  }

  else
  {
    if (qword_1000A4D58 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    v10 = *(v0 + 128);
    sub_100001CC0((v0 + 96), *(v0 + 120));
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v11 = *(type metadata accessor for LogMessage() - 8);
    v12 = *(v11 + 72);
    v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.warning(_:)();

    sub_100001D4C((v0 + 96));
    v14 = *(v0 + 240);
    v15 = *(v0 + 208);
    v16 = *(v0 + 216);

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_100017AF0()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v7 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v4 = sub_100017E0C;
  }

  else
  {
    v5 = *(v2 + 280);

    v4 = sub_100017C0C;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_100017C0C()
{
  v1 = v0[37];
  v2 = v0[31];
  v3 = v0[28];
  v4 = v0[29];
  v5 = v0[27];
  v6 = v0[25];
  (*(v4 + 16))(v5, v0[30], v3);
  (*(v4 + 56))(v5, 0, 1, v3);
  v7 = *(v6 + *(v2 + 28));
  *(swift_task_alloc() + 16) = v5;
  v8 = *(*v7 + class metadata base offset for ManagedBuffer + 16);
  v9 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v7 + v9));
  sub_100019178(v7 + v8);
  os_unfair_lock_unlock((v7 + v9));
  if (!v1)
  {
    v10 = v0[28];
    v11 = v0[29];
    v12 = v0[27];

    if ((*(v11 + 48))(v12, 1, v10) != 1)
    {
      v13 = *(v0[25] + *(v0[31] + 32));
      os_unfair_lock_lock((v13 + 20));
      *(v13 + 16) = 0;
      os_unfair_lock_unlock((v13 + 20));
    }

    v15 = v0[29];
    v14 = v0[30];
    v16 = v0[28];
    sub_10000DCA0(v0[27], &unk_1000A56A0, &unk_100083E10);
    (*(v15 + 8))(v14, v16);
    v17 = v0[30];
    v18 = v0[26];
    v19 = v0[27];

    v20 = v0[1];

    v20();
  }
}

uint64_t sub_100017E0C()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);
  v4 = *(v0 + 272);
  v3 = *(v0 + 280);
  v5 = *(v0 + 256);
  v6 = *(v0 + 264);
  v7 = *(v0 + 208);
  v19 = *(v0 + 240);
  v20 = *(v0 + 216);

  TaskLocal.get()();
  v18 = *(v0 + 88);
  sub_100001CC0((v0 + 56), *(v0 + 80));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._object = 0x8000000100087530;
  v8._countAndFlagsBits = 0xD000000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  swift_getErrorValue();
  v10 = *(v0 + 168);
  v9 = *(v0 + 176);
  v11 = *(v0 + 184);
  v12 = Error.localizedDescription.getter();
  *(v0 + 160) = &type metadata for String;
  *(v0 + 136) = v12;
  *(v0 + 144) = v13;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 136, &qword_1000A5630, &unk_100083BF0);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C((v0 + 56));
  swift_willThrow();

  v15 = *(v0 + 8);
  v16 = *(v0 + 296);

  return v15();
}

uint64_t sub_100017FD0(char a1, uint64_t a2)
{
  v4 = v2;
  v6 = sub_100001D04(&qword_1000A5680, &qword_100084000);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = *(v2 + *(a2 + 20));
  (*(v10 + 16))(&v12[-v8], v4);
  v12[15] = a1;
  type metadata accessor for LocalPreferences();
  return Preferences.subscript.setter();
}

uint64_t sub_1000180DC(int a1)
{
  LODWORD(v37) = a1;
  v1 = type metadata accessor for BagService.PermittedDataOrigin();
  v39 = *(v1 - 8);
  v40 = v1;
  v2 = *(v39 + 64);
  __chkstk_darwin(v1);
  v38 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for BagService.Policy();
  v44 = *(v4 - 8);
  v45 = v4;
  v5 = *(v44 + 64);
  __chkstk_darwin(v4);
  v41 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Bag.Profile();
  v42 = *(v7 - 8);
  v43 = v7;
  v8 = *(v42 + 64);
  __chkstk_darwin(v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LogMessage.StringInterpolation();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  if (qword_1000A4D58 != -1)
  {
    swift_once();
  }

  v36 = qword_1000A63B0;
  TaskLocal.get()();
  sub_100001CC0(v48, v49);
  v35 = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v13 = *(type metadata accessor for LogMessage() - 8);
  v34 = *(v13 + 72);
  v14 = *(v13 + 80);
  v15 = swift_allocObject();
  v33 = xmmword_1000839C0;
  *(v15 + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._countAndFlagsBits = 0xD00000000000001BLL;
  v16._object = 0x8000000100087460;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  v47 = &type metadata for BagFetchMode;
  v17 = v37;
  LOBYTE(v46[0]) = v37;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v46, &qword_1000A5630, &unk_100083BF0);
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v18);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100001D4C(v48);
  v19 = v10;
  Bag.Profile.init(name:version:)();
  v20 = objc_allocWithZone(AMSProcessInfo);
  v21 = String._bridgeToObjectiveC()();
  v22 = [v20 initWithBundleIdentifier:v21];

  v23 = v41;
  sub_100014E58(v17);
  TaskLocal.get()();
  v37 = v50;
  v36 = sub_100001CC0(v48, v49);
  *(swift_allocObject() + 16) = v33;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v24._countAndFlagsBits = 0xD000000000000026;
  v24._object = 0x8000000100087480;
  LogMessage.StringInterpolation.appendLiteral(_:)(v24);
  v25 = v38;
  BagService.Policy.permittedDataOrigin.getter();
  v26 = sub_1000154D8();
  v28 = v27;
  (*(v39 + 8))(v25, v40);
  v47 = &type metadata for String;
  v46[0] = v26;
  v46[1] = v28;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v46, &qword_1000A5630, &unk_100083BF0);
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v29);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100001D4C(v48);
  v30 = v22;
  v31 = static Bag.fetchBag(forProfile:as:usingPolicy:)();

  (*(v44 + 8))(v23, v45);
  (*(v42 + 8))(v19, v43);
  return v31;
}

uint64_t sub_10001866C(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_10000DCA0(a1, &unk_1000A56A0, &unk_100083E10);
  return sub_1000124C8(v3, a1);
}

unint64_t sub_1000186C0()
{
  result = qword_1000A4FB0;
  if (!qword_1000A4FB0)
  {
    type metadata accessor for BagService.PermittedDataOrigin();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4FB0);
  }

  return result;
}

uint64_t sub_100018718(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100018750(uint64_t a1, uint64_t *a2)
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

uint64_t sub_1000187B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BagManager();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100018818()
{
  v1 = (type metadata accessor for BagManager() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_100001D04(&qword_1000A5680, &qword_100084000);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + v3 + v1[7]);

  sub_100001D4C((v0 + v3 + v1[8]));
  v7 = *(v0 + v3 + v1[9]);

  v8 = *(v0 + v3 + v1[10]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100018930(uint64_t a1)
{
  v3 = *(type metadata accessor for BagManager() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100016DC0(a1, v4);
}

uint64_t sub_1000189A0()
{
  v1 = (type metadata accessor for BagManager() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = sub_100001D04(&qword_1000A5680, &qword_100084000);
  (*(*(v7 - 8) + 8))(v0 + v3, v7);
  v8 = *(v0 + v3 + v1[7]);

  sub_100001D4C((v0 + v3 + v1[8]));
  v9 = *(v0 + v3 + v1[9]);

  v10 = *(v0 + v3 + v1[10]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100018AC8(uint64_t a1)
{
  v4 = *(type metadata accessor for BagManager() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000DAF8;

  return sub_100016F6C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100018BC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001D04(&unk_1000A56A0, &unk_100083E10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100018C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100001D04(&qword_1000A5680, &qword_100084000);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}