uint64_t sub_1D18BED14()
{
  v0 = sub_1D1E6709C();
  __swift_allocate_value_buffer(v0, qword_1EE081480);
  __swift_project_value_buffer(v0, qword_1EE081480);
  return sub_1D1E6708C();
}

void sub_1D18BEDEC()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  v2 = *(v0 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock(v1 + 4);
  if (v2)
  {
    [v2 cancel];
    swift_unknownObjectRelease();
  }

  os_unfair_lock_lock(v1 + 4);
  v3 = *(v0 + 24);
  *(v0 + 24) = 0;
  swift_unknownObjectRelease();

  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1D18BEE74()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D18BEEB4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D18BEED4, 0, 0);
}

uint64_t sub_1D18BEED4()
{
  _s11CancellableCMa();
  v1 = swift_allocObject();
  v0[2].i64[0] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D40, &qword_1D1E7C5F8);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v1 + 16) = v2;
  *(v1 + 24) = 0;
  v3 = swift_task_alloc();
  v0[2].i64[1] = v3;
  v4 = v0[1];
  *(v3 + 16) = v1;
  *(v3 + 24) = vextq_s8(v4, v4, 8uLL);
  v5 = swift_allocObject();
  v0[3].i64[0] = v5;
  swift_weakInit();
  v6 = *(MEMORY[0x1E69E88F0] + 4);
  v7 = swift_task_alloc();
  v0[3].i64[1] = v7;
  *v7 = v0;
  v7[1] = sub_1D18BF03C;
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v7, &unk_1D1E7C608, v3, sub_1D18BFC70, v5, 0, 0, v8);
}

uint64_t sub_1D18BF03C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_1D18BF1C4;
  }

  else
  {
    v6 = *(v2 + 40);
    v5 = *(v2 + 48);

    v4 = sub_1D18BF160;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D18BF160()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D18BF1C4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];

  v4 = v0[1];
  v5 = v0[8];

  return v4();
}

uint64_t sub_1D18BF23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[10] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D18BF260, 0, 0);
}

uint64_t sub_1D18BF260()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[2] = v0;
  v0[3] = sub_1D18BF30C;
  v4 = swift_continuation_init();
  sub_1D18BF528(v4, v3, v2);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D18BF30C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 104) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1D18BF4A8;
  }

  else
  {
    v3 = sub_1D18BF428;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D18BF428()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  v3 = *(v1 + 24);
  *(v1 + 24) = 0;
  swift_unknownObjectRelease();
  os_unfair_lock_unlock(v2 + 4);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D18BF4A8()
{
  v1 = v0[10];
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  v3 = *(v1 + 24);
  *(v1 + 24) = 0;
  swift_unknownObjectRelease();
  os_unfair_lock_unlock(v2 + 4);
  v4 = v0[1];
  v5 = v0[13];

  return v4();
}

uint64_t sub_1D18BF528(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_1EE07A070 != -1)
  {
    swift_once();
  }

  v6 = sub_1D1E6709C();
  __swift_project_value_buffer(v6, qword_1EE081480);
  v7 = sub_1D1E6707C();
  v8 = sub_1D1E6835C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1D1B1312C(0xD000000000000010, 0x80000001D1EBBEA0, v18);
    _os_log_impl(&dword_1D16EC000, v7, v8, "%s Sending homed request to refresh graph with local process", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1D3893640](v10, -1, -1);
    MEMORY[0x1D3893640](v9, -1, -1);
  }

  v11 = sub_1D1E6694C();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  v18[4] = sub_1D18BFC78;
  v18[5] = v12;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1D1C40BA8;
  v18[3] = &block_descriptor_21;
  v13 = _Block_copy(v18);

  v14 = [a3 _refreshBeforeDate_completionHandler_];
  _Block_release(v13);

  v15 = *(a2 + 16);
  os_unfair_lock_lock(v15 + 4);
  v16 = *(a2 + 24);
  *(a2 + 24) = v14;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock(v15 + 4);
  return swift_unknownObjectRelease();
}

uint64_t sub_1D18BF774(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1;
    if (qword_1EE07A070 != -1)
    {
      swift_once();
    }

    v5 = sub_1D1E6709C();
    __swift_project_value_buffer(v5, qword_1EE081480);
    v6 = a1;
    v7 = sub_1D1E6707C();
    v8 = sub_1D1E6833C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24 = v11;
      *v9 = 136315394;
      *(v9 + 4) = sub_1D1B1312C(0xD000000000000010, 0x80000001D1EBBEA0, &v24);
      *(v9 + 12) = 2112;
      v12 = a1;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v13;
      *v10 = v13;
      _os_log_impl(&dword_1D16EC000, v7, v8, "%s HMHomeManager returned error: %@", v9, 0x16u);
      sub_1D179F28C(v10);
      MEMORY[0x1D3893640](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1D3893640](v11, -1, -1);
      MEMORY[0x1D3893640](v9, -1, -1);
    }

    sub_1D18BFC98();
    v14 = swift_allocError();
    *v15 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    v16 = swift_allocError();
    *v17 = v14;

    return MEMORY[0x1EEE6DEE8](a2, v16);
  }

  else
  {
    if (qword_1EE07A070 != -1)
    {
      swift_once();
    }

    v18 = sub_1D1E6709C();
    __swift_project_value_buffer(v18, qword_1EE081480);
    v19 = sub_1D1E6707C();
    v20 = sub_1D1E6835C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v24 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1D1B1312C(0xD000000000000010, 0x80000001D1EBBEA0, &v24);
      _os_log_impl(&dword_1D16EC000, v19, v20, "%s Finished refreshing with homed", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1D3893640](v22, -1, -1);
      MEMORY[0x1D3893640](v21, -1, -1);
    }

    return MEMORY[0x1EEE6DEE0](a2);
  }
}

uint64_t sub_1D18BFACC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D18BEDEC();
  }

  return result;
}

id HMHomeManager.dataSyncStateString.getter()
{
  [v0 dataSyncState];
  result = HMHomeManagerDataSyncStateToString();
  if (result)
  {
    v2 = result;
    v3 = sub_1D1E6781C();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D18BFBBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D17C4BFC;

  return sub_1D18BF23C(a1, v4, v5, v6);
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D18BFC98()
{
  result = qword_1EC645D48;
  if (!qword_1EC645D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645D48);
  }

  return result;
}

id static HMHomeManagerConfiguration.widgetConfiguration(with:)(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x1E696CC08]) initWithOptions:a1 cachePolicy:0];
  [v1 setDiscretionary_];
  [v1 setInactiveUpdatingLevel_];
  return v1;
}

id sub_1D18BFD90()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696CC08]) initWithOptions:-1 cachePolicy:0];
  [v0 setDiscretionary_];
  result = [v0 setInactiveUpdatingLevel_];
  qword_1EC645D50 = v0;
  return result;
}

id static HMHomeManagerConfiguration.manualAssertion.getter()
{
  if (qword_1EC642228 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC645D50;

  return v1;
}

HomeDataModel::ServiceKind_optional HMService.serviceKind.getter@<W0>(_BYTE *a1@<X8>)
{
  v3 = [v1 serviceType];
  v4 = sub_1D1E6781C();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  result.value = ServiceKind.init(rawValue:)(v7).value;
  v9 = v10;
  if (v10 == 53)
  {
    v9 = 0;
  }

  *a1 = v9;
  return result;
}

char HMService.serviceSubKind.getter@<W0>(_BYTE *a1@<X8>)
{
  v3 = [v1 serviceSubtype];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1D1E6781C();
    v7 = v6;

    v8._countAndFlagsBits = v5;
    v8._object = v7;
    LOBYTE(v3) = ServiceSubKind.init(rawValue:)(v8);
    v9 = v11;
    if (v11 == 5)
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  *a1 = v9;
  return v3;
}

char HMService.associatedServiceKind.getter@<W0>(char *a1@<X8>)
{
  v3 = [v1 associatedServiceType];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1D1E6781C();
    v7 = v6;

    v8._countAndFlagsBits = v5;
    v8._object = v7;
    LOBYTE(v3) = ServiceKind.init(rawValue:)(v8);
    v9 = v11;
    if (v11 == 53)
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 53;
  }

  *a1 = v9;
  return v3;
}

uint64_t HMService.supportedCharacteristicKinds.getter()
{
  v1 = v0;
  v2 = [v0 serviceType];
  v3 = sub_1D1E6781C();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  ServiceKind.init(rawValue:)(v6);
  v7 = ServiceKind.requiredCharacteristicKinds.getter();
  v8 = [v1 serviceType];
  v9 = sub_1D1E6781C();
  v11 = v10;

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  ServiceKind.init(rawValue:)(v12);
  v13 = ServiceKind.optionalCharacteristicKinds.getter();

  return sub_1D18C0104(v13, v7);
}

uint64_t sub_1D18C0104(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_1D1765F38(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D18C01E0(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  for (i = (v5 + 63) >> 6; v7; result = sub_1D17653AC(&v11, *(*(v2 + 48) + ((v9 << 7) | (2 * v10)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D18C02C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v26 - v11;
  result = MEMORY[0x1EEE9AC00](v10);
  v15 = v26 - v14;
  v16 = 0;
  v27 = a1;
  v28 = a2;
  v19 = *(a1 + 56);
  v18 = a1 + 56;
  v17 = v19;
  v20 = 1 << *(v18 - 24);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v26[2] = v5 + 32;
  v26[3] = v5 + 16;
  v26[1] = v5 + 8;
  if ((v21 & v17) != 0)
  {
    do
    {
      v24 = v16;
LABEL_9:
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      (*(v5 + 16))(v15, *(v27 + 48) + *(v5 + 72) * (v25 | (v24 << 6)), v4);
      (*(v5 + 32))(v9, v15, v4);
      sub_1D1762CB8(v12, v9);
      result = (*(v5 + 8))(v12, v4);
    }

    while (v22);
  }

  while (1)
  {
    v24 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v24 >= v23)
    {

      return v28;
    }

    v22 = *(v18 + 8 * v24);
    ++v16;
    if (v22)
    {
      v16 = v24;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

HomeDataModel::ServiceKind_optional ServiceProtocol.serviceKind.getter@<W0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3._countAndFlagsBits = (*(a1 + 72))();
  result.value = ServiceKind.init(rawValue:)(v3).value;
  v5 = v6;
  if (v6 == 53)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t ServiceProtocol.supportedCharacteristicKinds.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 72);
  v5._countAndFlagsBits = v4();
  ServiceKind.init(rawValue:)(v5);
  v6 = ServiceKind.requiredCharacteristicKinds.getter();
  v7._countAndFlagsBits = (v4)(a1, a2);
  ServiceKind.init(rawValue:)(v7);
  v8 = ServiceKind.optionalCharacteristicKinds.getter();

  return sub_1D18C0104(v8, v6);
}

void *HMService.subscript.getter(char *a1)
{
  v20 = *a1;
  v2 = [v1 characteristics];
  sub_1D18C2060();
  v3 = sub_1D1E67C1C();

  if (v3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1D3891EF0](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = [v6 characteristicType];
      v10 = sub_1D1E6781C();
      v12 = v11;

      v13._countAndFlagsBits = v10;
      v13._object = v12;
      CharacteristicKind.init(rawValue:)(v13);
      v14 = CharacteristicKind.rawValue.getter();
      v16 = v15;
      if (v14 == CharacteristicKind.rawValue.getter() && v16 == v17)
      {

LABEL_15:

        return v7;
      }

      v18 = sub_1D1E6904C();

      if (v18)
      {
        goto LABEL_15;
      }

      ++v5;
      if (v8 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_19:

  return 0;
}

uint64_t HMService.fetchedValue(for:)(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 48) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1D18C08D0, 0, 0);
}

uint64_t sub_1D18C08D0()
{
  v9 = v0;
  v1 = *(v0 + 24);
  v8 = *(v0 + 48);
  v2 = HMService.subscript.getter(&v8);
  *(v0 + 32) = v2;
  if (v2)
  {
    v3 = swift_task_alloc();
    *(v0 + 40) = v3;
    *v3 = v0;
    v3[1] = sub_1D18C09C4;
    v4 = *(v0 + 16);

    return HMCharacteristic.fetchedValue()(v4);
  }

  else
  {
    v6 = *(v0 + 16);
    *v6 = 0u;
    v6[1] = 0u;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1D18C09C4()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

double HMService.cachedValue(for:)@<D0>(_BYTE *a1@<X0>, _OWORD *a2@<X8>)
{
  LOBYTE(v7) = *a1;
  v3 = HMService.subscript.getter(&v7);
  if (v3)
  {
    v4 = v3;
    if ([v3 value])
    {
      sub_1D1E6866C();
      swift_unknownObjectRelease();
    }

    else
    {

      v7 = 0u;
      v8 = 0u;
    }

    result = *&v7;
    v6 = v8;
    *a2 = v7;
    a2[1] = v6;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t HMService.BOOL(for:)(_BYTE *a1)
{
  *(v2 + 48) = v1;
  *(v2 + 73) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1D18C0B94, 0, 0);
}

uint64_t sub_1D18C0B94()
{
  v7 = v0;
  v1 = *(v0 + 48);
  v6 = *(v0 + 73);
  v2 = HMService.subscript.getter(&v6);
  *(v0 + 56) = v2;
  if (v2)
  {
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_1D18C0CA0;

    return HMCharacteristic.fetchedValue()(v0 + 16);
  }

  else
  {
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_1D1741A30(v0 + 16, &qword_1EC649700, &qword_1D1E6E910);
    v5 = *(v0 + 8);

    return v5(2);
  }
}

uint64_t sub_1D18C0CA0()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D18C0DB4, 0, 0);
}

uint64_t sub_1D18C0DB4()
{
  if (*(v0 + 40))
  {
    if (swift_dynamicCast())
    {
      v1 = *(v0 + 72);
    }

    else
    {
      v1 = 2;
    }
  }

  else
  {
    sub_1D1741A30(v0 + 16, &qword_1EC649700, &qword_1D1E6E910);
    v1 = 2;
  }

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t HMService.int(for:)(_BYTE *a1)
{
  *(v2 + 56) = v1;
  *(v2 + 80) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1D18C0F7C, 0, 0);
}

uint64_t sub_1D18C0F7C()
{
  v7 = v0;
  v1 = *(v0 + 56);
  v6 = *(v0 + 80);
  v2 = HMService.subscript.getter(&v6);
  *(v0 + 64) = v2;
  if (v2)
  {
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    *v3 = v0;
    v3[1] = sub_1D18C108C;

    return HMCharacteristic.fetchedValue()(v0 + 16);
  }

  else
  {
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_1D1741A30(v0 + 16, &qword_1EC649700, &qword_1D1E6E910);
    v5 = *(v0 + 8);

    return v5(0, 1);
  }
}

uint64_t sub_1D18C108C()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D18C11A0, 0, 0);
}

uint64_t sub_1D18C11A0()
{
  if (v0[5])
  {
    v1 = swift_dynamicCast();
    if (v1)
    {
      v2 = v0[6];
    }

    else
    {
      v2 = 0;
    }

    v3 = v1 ^ 1u;
  }

  else
  {
    sub_1D1741A30((v0 + 2), &qword_1EC649700, &qword_1D1E6E910);
    v2 = 0;
    v3 = 1;
  }

  v4 = v0[1];

  return v4(v2, v3);
}

uint64_t HMService.double(for:)(_BYTE *a1)
{
  *(v2 + 56) = v1;
  *(v2 + 80) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1D18C1378, 0, 0);
}

uint64_t sub_1D18C1378()
{
  v7 = v0;
  v1 = *(v0 + 56);
  v6 = *(v0 + 80);
  v2 = HMService.subscript.getter(&v6);
  *(v0 + 64) = v2;
  if (v2)
  {
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    *v3 = v0;
    v3[1] = sub_1D18C1488;

    return HMCharacteristic.fetchedValue()(v0 + 16);
  }

  else
  {
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_1D1741A30(v0 + 16, &qword_1EC649700, &qword_1D1E6E910);
    v5 = *(v0 + 8);

    return v5(0, 1);
  }
}

uint64_t sub_1D18C1488()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D18C159C, 0, 0);
}

uint64_t sub_1D18C159C()
{
  if (v0[5])
  {
    v1 = swift_dynamicCast();
    if (v1)
    {
      v2 = v0[6];
    }

    else
    {
      v2 = 0;
    }

    v3 = v1 ^ 1u;
  }

  else
  {
    sub_1D1741A30((v0 + 2), &qword_1EC649700, &qword_1D1E6E910);
    v2 = 0;
    v3 = 1;
  }

  v4 = v0[1];

  return v4(v2, v3);
}

uint64_t HMService.data(for:)(_BYTE *a1)
{
  *(v2 + 64) = v1;
  *(v2 + 88) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1D18C1774, 0, 0);
}

uint64_t sub_1D18C1774()
{
  v7 = v0;
  v1 = *(v0 + 64);
  v6 = *(v0 + 88);
  v2 = HMService.subscript.getter(&v6);
  *(v0 + 72) = v2;
  if (v2)
  {
    v3 = swift_task_alloc();
    *(v0 + 80) = v3;
    *v3 = v0;
    v3[1] = sub_1D18C1884;

    return HMCharacteristic.fetchedValue()(v0 + 16);
  }

  else
  {
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_1D1741A30(v0 + 16, &qword_1EC649700, &qword_1D1E6E910);
    v5 = *(v0 + 8);

    return v5(0, 0xF000000000000000);
  }
}

uint64_t sub_1D18C1884()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D18C1998, 0, 0);
}

uint64_t sub_1D18C1998()
{
  if (v0[5])
  {
    v1 = swift_dynamicCast();
    v2 = v1 == 0;
    if (v1)
    {
      v3 = v0[6];
    }

    else
    {
      v3 = 0;
    }

    if (v2)
    {
      v4 = 0xF000000000000000;
    }

    else
    {
      v4 = v0[7];
    }
  }

  else
  {
    sub_1D1741A30((v0 + 2), &qword_1EC649700, &qword_1D1E6E910);
    v3 = 0;
    v4 = 0xF000000000000000;
  }

  v5 = v0[1];

  return v5(v3, v4);
}

uint64_t HMService.tlv8(for:)(_BYTE *a1)
{
  *(v2 + 64) = v1;
  *(v2 + 88) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1D18C1A80, 0, 0);
}

uint64_t sub_1D18C1A80()
{
  v7 = v0;
  v1 = *(v0 + 64);
  v6 = *(v0 + 88);
  v2 = HMService.subscript.getter(&v6);
  *(v0 + 72) = v2;
  if (v2)
  {
    v3 = swift_task_alloc();
    *(v0 + 80) = v3;
    *v3 = v0;
    v3[1] = sub_1D18C1B90;

    return HMCharacteristic.fetchedValue()(v0 + 16);
  }

  else
  {
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_1D1741A30(v0 + 16, &qword_1EC649700, &qword_1D1E6E910);
    v5 = *(v0 + 8);

    return v5(0, 0xF000000000000000);
  }
}

uint64_t sub_1D18C1B90()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D18C218C, 0, 0);
}

uint64_t _sSo9HMServiceC13HomeDataModelE06cachedC03for10Foundation0C0VSgAC18CharacteristicKindO_tF_0(_BYTE *a1)
{
  LOBYTE(v6) = *a1;
  v1 = HMService.subscript.getter(&v6);
  if (!v1)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    sub_1D1741A30(&v6, &qword_1EC649700, &qword_1D1E6E910);
    return 0;
  }

  v2 = v1;
  if ([v1 value])
  {
    sub_1D1E6866C();
    swift_unknownObjectRelease();
  }

  else
  {

    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

_OWORD *static HMService.convert(_:characteristicKind:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  sub_1D18C20AC(a1, &v9);
  if (v10)
  {
    sub_1D1742194(&v9, v11);
    if (v4 > 148)
    {
      if (v4 == 149 || v4 == 156)
      {
        goto LABEL_16;
      }

      if (v4 != 158)
      {
        return sub_1D1742194(v11, a3);
      }

      sub_1D1741970(v11, &v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
      result = swift_dynamicCast();
      if (result)
      {
        v6 = v8;
        if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v8 > -9.22337204e18)
          {
            if (v8 >= 9.22337204e18)
            {
              __break(1u);
              goto LABEL_16;
            }

LABEL_25:
            v7 = v6;
            goto LABEL_26;
          }

          goto LABEL_32;
        }

        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
      if (v4 == 3)
      {
        sub_1D1741970(v11, &v9);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
        if (swift_dynamicCast())
        {
          v7 = LOBYTE(v8);
          goto LABEL_26;
        }

        goto LABEL_27;
      }

      if (v4 != 12)
      {
        if (v4 != 114)
        {
          return sub_1D1742194(v11, a3);
        }

LABEL_16:
        sub_1D1741970(v11, &v9);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
        if (swift_dynamicCast())
        {
          v7 = (LOBYTE(v8) & 1) == 0;
LABEL_26:
          *(a3 + 24) = MEMORY[0x1E69E6530];
          *a3 = v7;
          return __swift_destroy_boxed_opaque_existential_1(v11);
        }

        goto LABEL_27;
      }

      sub_1D1741970(v11, &v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
      result = swift_dynamicCast();
      if (result)
      {
        v6 = v8;
        if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v8 > -9.22337204e18)
          {
            if (v8 < 9.22337204e18)
            {
              goto LABEL_25;
            }

LABEL_34:
            __break(1u);
            return result;
          }

LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        goto LABEL_31;
      }
    }

LABEL_27:
    result = __swift_destroy_boxed_opaque_existential_1(v11);
    goto LABEL_28;
  }

  result = sub_1D1741A30(&v9, &qword_1EC645D58, &unk_1D1E7E530);
LABEL_28:
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

void *sub_1D18C2020@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  v6 = *a1;
  result = HMService.subscript.getter(&v6);
  *a2 = result;
  return result;
}

unint64_t sub_1D18C2060()
{
  result = qword_1EE079CD0;
  if (!qword_1EE079CD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE079CD0);
  }

  return result;
}

uint64_t sub_1D18C20AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D18C211C(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      sub_1D1771B24(v4);
      sub_1D17642C8(&v6, v4);
      sub_1D1771B10(v6);
      --v2;
    }

    while (v2);
    return v7;
  }

  return a2;
}

uint64_t sub_1D18C21B0(char *a1, char *a2)
{
  v2 = *a2;
  v3 = CategoryKind.description.getter(*a1);
  v5 = v4;
  if (v3 == CategoryKind.description.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D1E6904C();
  }

  return v8 & 1;
}

uint64_t sub_1D18C2248()
{
  v1 = *v0;
  sub_1D1E6920C();
  CategoryKind.description.getter(v1);
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D18C22AC()
{
  CategoryKind.description.getter(*v0);
  sub_1D1E678EC();
}

uint64_t sub_1D18C2300()
{
  v1 = *v0;
  sub_1D1E6920C();
  CategoryKind.description.getter(v1);
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D18C2430@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s13HomeDataModel12CategoryKindO8rawValueACSgSS_tcfC_0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1D18C2460@<X0>(uint64_t *a1@<X8>)
{
  result = CategoryKind.description.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t CategoryKind.debugDescription.getter(char a1)
{
  result = 0xD000000000000025;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000026;
      break;
    case 2:
    case 16:
    case 25:
      result = 0xD000000000000020;
      break;
    case 3:
    case 7:
    case 20:
    case 32:
      result = 0xD000000000000024;
      break;
    case 4:
    case 6:
    case 15:
    case 24:
      result = 0xD00000000000001ELL;
      break;
    case 5:
      result = 0xD000000000000022;
      break;
    case 8:
    case 13:
    case 18:
    case 22:
    case 26:
    case 34:
      result = 0xD00000000000001DLL;
      break;
    case 9:
    case 11:
      result = 0xD00000000000001FLL;
      break;
    case 10:
      result = 0xD00000000000001BLL;
      break;
    case 12:
      result = 0xD00000000000001ALL;
      break;
    case 14:
    case 27:
      result = 0xD000000000000027;
      break;
    case 17:
      result = 0xD00000000000001CLL;
      break;
    case 19:
      result = 0xD000000000000029;
      break;
    case 21:
    case 35:
      result = 0xD000000000000025;
      break;
    case 23:
    case 28:
    case 31:
    case 33:
      result = 0xD000000000000021;
      break;
    case 29:
      result = 0xD00000000000002ALL;
      break;
    case 30:
      result = 0xD00000000000002FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t _s13HomeDataModel12CategoryKindO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E696C940];
  if (sub_1D1E6781C() == a1 && v5 == a2)
  {
    v8 = 0;
LABEL_8:

    goto LABEL_9;
  }

  v7 = sub_1D1E6904C();

  if (v7)
  {
    v8 = 0;
LABEL_9:

    return v8;
  }

  v10 = *MEMORY[0x1E696C948];
  if (sub_1D1E6781C() == a1 && v11 == a2)
  {
    v8 = 1;
    goto LABEL_8;
  }

  v13 = sub_1D1E6904C();

  if (v13)
  {
    v8 = 1;
    goto LABEL_9;
  }

  v14 = *MEMORY[0x1E696C950];
  if (sub_1D1E6781C() == a1 && v15 == a2)
  {
    v8 = 2;
    goto LABEL_8;
  }

  v17 = sub_1D1E6904C();

  if (v17)
  {
    v8 = 2;
    goto LABEL_9;
  }

  v18 = *MEMORY[0x1E696C958];
  if (sub_1D1E6781C() == a1 && v19 == a2)
  {
    v8 = 3;
    goto LABEL_8;
  }

  v20 = sub_1D1E6904C();

  if (v20)
  {
    v8 = 3;
    goto LABEL_9;
  }

  v21 = *MEMORY[0x1E696C960];
  if (sub_1D1E6781C() == a1 && v22 == a2)
  {
    v8 = 4;
    goto LABEL_8;
  }

  v23 = sub_1D1E6904C();

  if (v23)
  {
    v8 = 4;
    goto LABEL_9;
  }

  v24 = *MEMORY[0x1E696C968];
  if (sub_1D1E6781C() == a1 && v25 == a2)
  {
    v8 = 5;
    goto LABEL_8;
  }

  v26 = sub_1D1E6904C();

  if (v26)
  {
    v8 = 5;
    goto LABEL_9;
  }

  v27 = *MEMORY[0x1E696C970];
  if (sub_1D1E6781C() == a1 && v28 == a2)
  {
    v8 = 6;
    goto LABEL_8;
  }

  v29 = sub_1D1E6904C();

  if (v29)
  {
    v8 = 6;
    goto LABEL_9;
  }

  v30 = *MEMORY[0x1E696C978];
  if (sub_1D1E6781C() == a1 && v31 == a2)
  {
    v8 = 7;
    goto LABEL_8;
  }

  v32 = sub_1D1E6904C();

  if (v32)
  {
    v8 = 7;
    goto LABEL_9;
  }

  v33 = *MEMORY[0x1E696C980];
  if (sub_1D1E6781C() == a1 && v34 == a2)
  {
    v8 = 8;
    goto LABEL_8;
  }

  v35 = sub_1D1E6904C();

  if (v35)
  {
    v8 = 8;
    goto LABEL_9;
  }

  v36 = *MEMORY[0x1E696C9B8];
  if (sub_1D1E6781C() == a1 && v37 == a2)
  {
    v8 = 9;
    goto LABEL_8;
  }

  v38 = sub_1D1E6904C();

  if (v38)
  {
    v8 = 9;
    goto LABEL_9;
  }

  v39 = *MEMORY[0x1E696C988];
  if (sub_1D1E6781C() == a1 && v40 == a2)
  {
    v8 = 10;
    goto LABEL_8;
  }

  v41 = sub_1D1E6904C();

  if (v41)
  {
    v8 = 10;
    goto LABEL_9;
  }

  v42 = *MEMORY[0x1E696C990];
  if (sub_1D1E6781C() == a1 && v43 == a2)
  {
    v8 = 11;
    goto LABEL_8;
  }

  v44 = sub_1D1E6904C();

  if (v44)
  {
    v8 = 11;
    goto LABEL_9;
  }

  v45 = *MEMORY[0x1E696C998];
  if (sub_1D1E6781C() == a1 && v46 == a2)
  {
    v8 = 12;
    goto LABEL_8;
  }

  v47 = sub_1D1E6904C();

  if (v47)
  {
    v8 = 12;
    goto LABEL_9;
  }

  v48 = *MEMORY[0x1E696C9A0];
  if (sub_1D1E6781C() == a1 && v49 == a2)
  {
    v8 = 13;
    goto LABEL_8;
  }

  v50 = sub_1D1E6904C();

  if (v50)
  {
    v8 = 13;
    goto LABEL_9;
  }

  v51 = *MEMORY[0x1E696C9A8];
  if (sub_1D1E6781C() == a1 && v52 == a2)
  {
    v8 = 14;
    goto LABEL_8;
  }

  v53 = sub_1D1E6904C();

  if (v53)
  {
    v8 = 14;
    goto LABEL_9;
  }

  v54 = *MEMORY[0x1E696C9B0];
  if (sub_1D1E6781C() == a1 && v55 == a2)
  {
    v8 = 15;
    goto LABEL_8;
  }

  v56 = sub_1D1E6904C();

  if (v56)
  {
    v8 = 15;
    goto LABEL_9;
  }

  v57 = *MEMORY[0x1E696C9C0];
  if (sub_1D1E6781C() == a1 && v58 == a2)
  {
    v8 = 16;
    goto LABEL_8;
  }

  v59 = sub_1D1E6904C();

  if (v59)
  {
    v8 = 16;
    goto LABEL_9;
  }

  v60 = *MEMORY[0x1E696C9C8];
  if (sub_1D1E6781C() == a1 && v61 == a2)
  {
    v8 = 17;
    goto LABEL_8;
  }

  v62 = sub_1D1E6904C();

  if (v62)
  {
    v8 = 17;
    goto LABEL_9;
  }

  v63 = *MEMORY[0x1E696C9D0];
  if (sub_1D1E6781C() == a1 && v64 == a2)
  {
    v8 = 18;
    goto LABEL_8;
  }

  v65 = sub_1D1E6904C();

  if (v65)
  {
    v8 = 18;
    goto LABEL_9;
  }

  v66 = *MEMORY[0x1E696C9D8];
  if (sub_1D1E6781C() == a1 && v67 == a2)
  {
    v8 = 19;
    goto LABEL_8;
  }

  v68 = sub_1D1E6904C();

  if (v68)
  {
    v8 = 19;
    goto LABEL_9;
  }

  v69 = *MEMORY[0x1E696C9E0];
  if (sub_1D1E6781C() == a1 && v70 == a2)
  {
    v8 = 20;
    goto LABEL_8;
  }

  v71 = sub_1D1E6904C();

  if (v71)
  {
    v8 = 20;
    goto LABEL_9;
  }

  v72 = *MEMORY[0x1E696C9E8];
  if (sub_1D1E6781C() == a1 && v73 == a2)
  {
    v8 = 21;
    goto LABEL_8;
  }

  v74 = sub_1D1E6904C();

  if (v74)
  {
    v8 = 21;
    goto LABEL_9;
  }

  v75 = *MEMORY[0x1E696C9F0];
  if (sub_1D1E6781C() == a1 && v76 == a2)
  {
    v8 = 22;
    goto LABEL_8;
  }

  v77 = sub_1D1E6904C();

  if (v77)
  {
    v8 = 22;
    goto LABEL_9;
  }

  v78 = *MEMORY[0x1E696C9F8];
  if (sub_1D1E6781C() == a1 && v79 == a2)
  {
    v8 = 23;
    goto LABEL_8;
  }

  v80 = sub_1D1E6904C();

  if (v80)
  {
    v8 = 23;
    goto LABEL_9;
  }

  v81 = *MEMORY[0x1E696CA00];
  if (sub_1D1E6781C() == a1 && v82 == a2)
  {
    v8 = 24;
    goto LABEL_8;
  }

  v83 = sub_1D1E6904C();

  if (v83)
  {
    v8 = 24;
    goto LABEL_9;
  }

  v84 = *MEMORY[0x1E696CA08];
  if (sub_1D1E6781C() == a1 && v85 == a2)
  {
    v8 = 25;
    goto LABEL_8;
  }

  v86 = sub_1D1E6904C();

  if (v86)
  {
    v8 = 25;
    goto LABEL_9;
  }

  v87 = *MEMORY[0x1E696CA10];
  if (sub_1D1E6781C() == a1 && v88 == a2)
  {
    v8 = 26;
    goto LABEL_8;
  }

  v89 = sub_1D1E6904C();

  if (v89)
  {
    v8 = 26;
    goto LABEL_9;
  }

  v90 = *MEMORY[0x1E696CA18];
  if (sub_1D1E6781C() == a1 && v91 == a2)
  {
    v8 = 27;
    goto LABEL_8;
  }

  v92 = sub_1D1E6904C();

  if (v92)
  {
    v8 = 27;
    goto LABEL_9;
  }

  v93 = *MEMORY[0x1E696CA20];
  if (sub_1D1E6781C() == a1 && v94 == a2)
  {
    v8 = 28;
    goto LABEL_8;
  }

  v95 = sub_1D1E6904C();

  if (v95)
  {
    v8 = 28;
    goto LABEL_9;
  }

  v96 = *MEMORY[0x1E696CA28];
  if (sub_1D1E6781C() == a1 && v97 == a2)
  {
    v8 = 29;
    goto LABEL_8;
  }

  v98 = sub_1D1E6904C();

  if (v98)
  {
    v8 = 29;
    goto LABEL_9;
  }

  v99 = *MEMORY[0x1E696CA30];
  if (sub_1D1E6781C() == a1 && v100 == a2)
  {
    v8 = 30;
    goto LABEL_8;
  }

  v101 = sub_1D1E6904C();

  if (v101)
  {
    v8 = 30;
    goto LABEL_9;
  }

  v102 = *MEMORY[0x1E696CA38];
  if (sub_1D1E6781C() == a1 && v103 == a2)
  {
    v8 = 31;
    goto LABEL_8;
  }

  v104 = sub_1D1E6904C();

  if (v104)
  {
    v8 = 31;
    goto LABEL_9;
  }

  v105 = *MEMORY[0x1E696CA40];
  if (sub_1D1E6781C() == a1 && v106 == a2)
  {
    v8 = 32;
    goto LABEL_8;
  }

  v107 = sub_1D1E6904C();

  if (v107)
  {
    v8 = 32;
    goto LABEL_9;
  }

  v108 = *MEMORY[0x1E696CA48];
  if (sub_1D1E6781C() == a1 && v109 == a2)
  {
    v8 = 33;
    goto LABEL_8;
  }

  v110 = sub_1D1E6904C();

  if (v110)
  {
    v8 = 33;
    goto LABEL_9;
  }

  v111 = *MEMORY[0x1E696CA50];
  if (sub_1D1E6781C() == a1 && v112 == a2)
  {
    v8 = 34;
    goto LABEL_8;
  }

  v113 = sub_1D1E6904C();

  if (v113)
  {
    v8 = 34;
    goto LABEL_9;
  }

  v114 = *MEMORY[0x1E696CA58];
  if (sub_1D1E6781C() == a1 && v115 == a2)
  {
    v8 = 35;
    goto LABEL_8;
  }

  v116 = sub_1D1E6904C();

  if (v116)
  {
    return 35;
  }

  else
  {
    return 36;
  }
}

unint64_t sub_1D18C33F4()
{
  result = qword_1EC645D60;
  if (!qword_1EC645D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC645D68, &qword_1D1E7C6D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645D60);
  }

  return result;
}

unint64_t sub_1D18C3458()
{
  result = qword_1EC645D70;
  if (!qword_1EC645D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645D70);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CategoryKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDD)
  {
    goto LABEL_17;
  }

  if (a2 + 35 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 35) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 35;
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

      return (*a1 | (v4 << 8)) - 35;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 35;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x24;
  v8 = v6 - 36;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CategoryKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 35 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 35) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDD)
  {
    v4 = 0;
  }

  if (a2 > 0xDC)
  {
    v5 = ((a2 - 221) >> 8) + 1;
    *result = a2 + 35;
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
    *result = a2 + 35;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D18C35FC()
{
  result = qword_1EC645D78;
  if (!qword_1EC645D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645D78);
  }

  return result;
}

void static CharacteristicKind.Value.typedValue(for:value:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a2;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 metadata];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 format];
    if (v12)
    {
      v13 = v6;
      v14 = v12;
      v15 = sub_1D1E6781C();
      v17 = v16;

      v6 = v13;
      v18._countAndFlagsBits = v15;
      v18._object = v17;
      CharacteristicKind.Format.init(rawValue:)(v18);
      if (v82[0] != 11)
      {
        static CharacteristicKind.Value.typedValue(for:valueFormat:)(v79, v82, a3);

        return;
      }
    }

    v78 = v6;
    if (qword_1EE07B5D0 != -1)
    {
      swift_once();
    }

    v19 = sub_1D1E6709C();
    __swift_project_value_buffer(v19, qword_1EE07B5D8);
    sub_1D18CA7C0(v79, v82);
    v20 = a1;
    v21 = v11;
    v22 = sub_1D1E6707C();
    v23 = sub_1D1E6833C();

    if (os_log_type_enabled(v22, v23))
    {
      v76 = v22;
      LODWORD(v79) = v23;
      v24 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v81 = v77;
      *v24 = 136316162;
      *(v24 + 4) = sub_1D1B1312C(0xD000000000000016, 0x80000001D1EBC4B0, &v81);
      *(v24 + 12) = 2080;
      sub_1D18CA7C0(v82, v80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649700, &qword_1D1E6E910);
      v25 = sub_1D1E6789C();
      v27 = v26;
      sub_1D18B9B30(v82);
      v28 = sub_1D1B1312C(v25, v27, &v81);

      *(v24 + 14) = v28;
      *(v24 + 22) = 2080;
      v29 = [v21 format];
      if (v29)
      {
        v30 = v29;
        v31 = sub_1D1E6781C();
        v33 = v32;
      }

      else
      {
        v33 = 0xE300000000000000;
        v31 = 7104878;
      }

      v58 = v76;
      v59 = sub_1D1B1312C(v31, v33, &v81);

      *(v24 + 24) = v59;
      *(v24 + 32) = 2080;
      v60 = [v20 characteristicType];
      v61 = sub_1D1E6781C();
      v63 = v62;

      v64._countAndFlagsBits = v61;
      v64._object = v63;
      CharacteristicKind.init(rawValue:)(v64);
      v65 = v80[0];
      if (v80[0] == 174)
      {
        v65 = 0;
      }

      v80[0] = v65;
      v66 = sub_1D1E6789C();
      v68 = sub_1D1B1312C(v66, v67, &v81);

      *(v24 + 34) = v68;
      *(v24 + 42) = 2080;
      v69 = [v20 uniqueIdentifier];
      sub_1D1E66A5C();

      sub_1D1886B8C();
      v70 = sub_1D1E68FAC();
      v72 = v71;
      (*(v78 + 8))(v9, v5);
      v73 = sub_1D1B1312C(v70, v72, &v81);

      *(v24 + 44) = v73;
      _os_log_impl(&dword_1D16EC000, v58, v79, "%s unable to slurp value %s (bad format: %s) for characteristic %s (%s)", v24, 0x34u);
      v74 = v77;
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v74, -1, -1);
      MEMORY[0x1D3893640](v24, -1, -1);

LABEL_22:
      goto LABEL_23;
    }
  }

  else
  {
    if (qword_1EE07B5D0 != -1)
    {
      swift_once();
    }

    v34 = sub_1D1E6709C();
    __swift_project_value_buffer(v34, qword_1EE07B5D8);
    sub_1D18CA7C0(v79, v82);
    v35 = a1;
    v21 = sub_1D1E6707C();
    v36 = sub_1D1E6833C();

    if (os_log_type_enabled(v21, v36))
    {
      v37 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v81 = v79;
      *v37 = 136315906;
      *(v37 + 4) = sub_1D1B1312C(0xD000000000000016, 0x80000001D1EBC4B0, &v81);
      *(v37 + 12) = 2080;
      sub_1D18CA7C0(v82, v80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649700, &qword_1D1E6E910);
      v38 = sub_1D1E6789C();
      LODWORD(v78) = v36;
      v39 = v38;
      v41 = v40;
      sub_1D18B9B30(v82);
      v42 = sub_1D1B1312C(v39, v41, &v81);

      *(v37 + 14) = v42;
      *(v37 + 22) = 2080;
      v43 = [v35 characteristicType];
      v44 = sub_1D1E6781C();
      v46 = v45;

      v47._countAndFlagsBits = v44;
      v47._object = v46;
      CharacteristicKind.init(rawValue:)(v47);
      v48 = v80[0];
      if (v80[0] == 174)
      {
        v48 = 0;
      }

      v80[0] = v48;
      v49 = sub_1D1E6789C();
      v51 = sub_1D1B1312C(v49, v50, &v81);

      *(v37 + 24) = v51;
      *(v37 + 32) = 2080;
      v52 = [v35 uniqueIdentifier];
      sub_1D1E66A5C();

      sub_1D1886B8C();
      v53 = sub_1D1E68FAC();
      v55 = v54;
      (*(v6 + 8))(v9, v5);
      v56 = sub_1D1B1312C(v53, v55, &v81);

      *(v37 + 34) = v56;
      _os_log_impl(&dword_1D16EC000, v21, v78, "%s unable to slurp value %s (missing metadata) for characteristic %s (%s)", v37, 0x2Au);
      v57 = v79;
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v57, -1, -1);
      MEMORY[0x1D3893640](v37, -1, -1);
      goto LABEL_22;
    }
  }

  sub_1D18B9B30(v82);
LABEL_23:
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = -1;
}

uint64_t CharacteristicKind.Value.rawObjectValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  if (v2 <= 5)
  {
    if (*(v0 + 16) <= 2u)
    {
      if (!*(v0 + 16))
      {
        return sub_1D1E67D2C();
      }

      if (v2 == 1)
      {
        return sub_1D1E691BC();
      }

      return sub_1D1E692AC();
    }

    if (v2 == 3)
    {
      return sub_1D1E692CC();
    }

    if (v2 == 4)
    {
      return sub_1D1E692DC();
    }

    return sub_1D1E691AC();
  }

  v4 = v0[1];
  if (*(v0 + 16) > 8u)
  {
    if (v2 == 9 || v2 == 10)
    {
      return sub_1D1E6688C();
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (v2 == 6)
    {
      return sub_1D1E691AC();
    }

    if (v2 == 7)
    {
      v5 = *v0;
      return sub_1D1E680EC();
    }

    else
    {
      return sub_1D1E677EC();
    }
  }
}

HomeDataModel::CharacteristicKind_optional __swiftcall CharacteristicKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D1E6908C();

  v5 = v3 - 128;
  if (v3 >= 0x80)
  {
    v6 = -100;
    LOBYTE(v3) = 0x80;
    switch(v5)
    {
      case 0uLL:
        goto LABEL_2;
      case 1uLL:
        LOBYTE(v3) = -127;
        goto LABEL_2;
      case 2uLL:
        LOBYTE(v3) = -126;
        goto LABEL_2;
      case 3uLL:
        LOBYTE(v3) = -125;
        goto LABEL_2;
      case 4uLL:
        LOBYTE(v3) = -124;
        goto LABEL_2;
      case 5uLL:
        LOBYTE(v3) = -123;
        goto LABEL_2;
      case 6uLL:
        LOBYTE(v3) = -122;
        goto LABEL_2;
      case 7uLL:
        LOBYTE(v3) = -121;
        goto LABEL_2;
      case 8uLL:
        LOBYTE(v3) = -120;
        goto LABEL_2;
      case 9uLL:
        LOBYTE(v3) = -119;
        goto LABEL_2;
      case 0xAuLL:
        LOBYTE(v3) = -118;
        goto LABEL_2;
      case 0xBuLL:
        LOBYTE(v3) = -117;
        goto LABEL_2;
      case 0xCuLL:
        LOBYTE(v3) = -116;
        goto LABEL_2;
      case 0xDuLL:
        LOBYTE(v3) = -115;
        goto LABEL_2;
      case 0xEuLL:
        LOBYTE(v3) = -114;
        goto LABEL_2;
      case 0xFuLL:
        LOBYTE(v3) = -113;
        goto LABEL_2;
      case 0x10uLL:
        LOBYTE(v3) = -112;
        goto LABEL_2;
      case 0x11uLL:
        LOBYTE(v3) = -111;
        goto LABEL_2;
      case 0x12uLL:
        LOBYTE(v3) = -110;
        goto LABEL_2;
      case 0x13uLL:
        LOBYTE(v3) = -109;
        goto LABEL_2;
      case 0x14uLL:
        LOBYTE(v3) = -108;
        goto LABEL_2;
      case 0x15uLL:
        LOBYTE(v3) = -107;
        goto LABEL_2;
      case 0x16uLL:
        LOBYTE(v3) = -106;
        goto LABEL_2;
      case 0x17uLL:
        LOBYTE(v3) = -105;
        goto LABEL_2;
      case 0x18uLL:
        LOBYTE(v3) = -104;
        goto LABEL_2;
      case 0x19uLL:
        LOBYTE(v3) = -103;
        goto LABEL_2;
      case 0x1AuLL:
        LOBYTE(v3) = -102;
        goto LABEL_2;
      case 0x1BuLL:
        LOBYTE(v3) = -101;
        goto LABEL_2;
      case 0x1CuLL:
        break;
      case 0x1DuLL:
        v6 = -99;
        break;
      case 0x1EuLL:
        v6 = -98;
        break;
      case 0x1FuLL:
        v6 = -97;
        break;
      case 0x20uLL:
        v6 = -96;
        break;
      case 0x21uLL:
        v6 = -95;
        break;
      case 0x22uLL:
        v6 = -94;
        break;
      case 0x23uLL:
        v6 = -93;
        break;
      case 0x24uLL:
        v6 = -92;
        break;
      case 0x25uLL:
        v6 = -91;
        break;
      case 0x26uLL:
        v6 = -90;
        break;
      case 0x27uLL:
        v6 = -89;
        break;
      case 0x28uLL:
        v6 = -88;
        break;
      case 0x29uLL:
        v6 = -87;
        break;
      case 0x2AuLL:
        v6 = -86;
        break;
      case 0x2BuLL:
        v6 = -85;
        break;
      case 0x2CuLL:
        v6 = -84;
        break;
      case 0x2DuLL:
        v6 = -83;
        break;
      default:
        v6 = -82;
        break;
    }
  }

  else
  {
LABEL_2:
    v6 = v3;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_1D18C4908@<X0>(void *a1@<X8>)
{
  result = CharacteristicKind.rawValue.getter();
  *a1 = 0xD000000000000024;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D18C4938(char *a1, char *a2)
{
  v8 = *a1;
  v7 = *a2;
  CharacteristicKind.rawValue.getter();
  v3 = v2;
  CharacteristicKind.rawValue.getter();
  if (v3 == v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D1E6904C();
  }

  return v5 & 1;
}

uint64_t sub_1D18C49E4(char *a1, char *a2)
{
  v2 = *a2;
  v8 = *a1;
  CharacteristicKind.rawValue.getter();
  v4 = v3;
  CharacteristicKind.rawValue.getter();
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_1D1E6904C();
  }

  return v6 & 1;
}

uint64_t static CharacteristicKind.< infix(_:_:)(char *a1, char *a2)
{
  v2 = *a2;
  v8 = *a1;
  CharacteristicKind.rawValue.getter();
  v4 = v3;
  CharacteristicKind.rawValue.getter();
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_1D1E6904C();
  }

  return v6 & 1;
}

uint64_t sub_1D18C4B1C(char *a1, char *a2)
{
  v2 = *a1;
  v9 = *a2;
  CharacteristicKind.rawValue.getter();
  v4 = v3;
  CharacteristicKind.rawValue.getter();
  if (v4 == v5)
  {

    v7 = 1;
  }

  else
  {
    v6 = sub_1D1E6904C();

    v7 = v6 ^ 1;
  }

  return v7 & 1;
}

uint64_t sub_1D18C4BCC(char *a1, char *a2)
{
  v2 = *a2;
  v9 = *a1;
  CharacteristicKind.rawValue.getter();
  v4 = v3;
  CharacteristicKind.rawValue.getter();
  if (v4 == v5)
  {

    v7 = 1;
  }

  else
  {
    v6 = sub_1D1E6904C();

    v7 = v6 ^ 1;
  }

  return v7 & 1;
}

uint64_t sub_1D18C4C7C(char *a1, char *a2)
{
  v2 = *a1;
  v8 = *a2;
  CharacteristicKind.rawValue.getter();
  v4 = v3;
  CharacteristicKind.rawValue.getter();
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_1D1E6904C();
  }

  return v6 & 1;
}

uint64_t sub_1D18C4D18()
{
  v1 = *v0;
  sub_1D1E6920C();
  CharacteristicKind.rawValue.getter();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D18C4D80()
{
  v2 = *v0;
  CharacteristicKind.rawValue.getter();
  sub_1D1E678EC();
}

uint64_t sub_1D18C4DE4()
{
  v1 = *v0;
  sub_1D1E6920C();
  CharacteristicKind.rawValue.getter();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t CharacteristicKind.Value.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1D1778244(v2, v3, v4);
}

HomeDataModel::CharacteristicKind::Format_optional __swiftcall CharacteristicKind.Format.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D1E68C2C();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t static CharacteristicKind.Value.typedValue(for:valueFormat:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  sub_1D18CA7C0(a1, v37);
  if (!v38)
  {
    result = sub_1D18B9B30(v37);
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = -1;
    return result;
  }

  sub_1D1742194(v37, v39);
  sub_1D1741970(v39, v37);
  if (!swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      sub_1D1741970(v39, v34);
      v8 = swift_dynamicCast();
      v9 = v32;
      if (!v8)
      {
        v9 = 0;
      }

      sub_1D18C5638(v9 | ((v8 ^ 1u) << 8), v4, a3);
      goto LABEL_20;
    }

    if (swift_dynamicCast())
    {
      sub_1D1741970(v39, v34);
      v10 = swift_dynamicCast();
      v11 = v32;
      if (!v10)
      {
        v11 = 0;
      }

      sub_1D18C5798(v11 | ((v10 ^ 1u) << 16), v4, a3);
      goto LABEL_20;
    }

    if (swift_dynamicCast())
    {
      sub_1D1741970(v39, v34);
      v12 = swift_dynamicCast();
      v13 = v32;
      LOBYTE(v32) = v12 ^ 1;
      if (!v12)
      {
        v13 = 0;
      }

      sub_1D18C590C(v13 | ((v12 ^ 1u) << 32), v4, a3);
      goto LABEL_20;
    }

    if (swift_dynamicCast())
    {
      sub_1D1741970(v39, v34);
      v5 = swift_dynamicCast();
      if (v5)
      {
        v6 = v32;
      }

      else
      {
        v6 = 0;
      }

      goto LABEL_6;
    }

    if (swift_dynamicCast())
    {
      sub_1D1741970(v39, v34);
      v14 = swift_dynamicCast();
      v15 = v32;
      if (!v14)
      {
        v15 = 0;
      }

      sub_1D18C5BFC(v15 | ((v14 ^ 1u) << 8), v4, a3);
      goto LABEL_20;
    }

    if (swift_dynamicCast())
    {
      sub_1D1741970(v39, v34);
      v16 = swift_dynamicCast();
      v17 = v32;
      if (!v16)
      {
        v17 = 0;
      }

      sub_1D18C5D44(v17 | ((v16 ^ 1u) << 16), v4, a3);
      goto LABEL_20;
    }

    if (swift_dynamicCast())
    {
      sub_1D1741970(v39, v34);
      v18 = swift_dynamicCast();
      v19 = v32;
      LOBYTE(v32) = v18 ^ 1;
      if (!v18)
      {
        v19 = 0;
      }

      sub_1D18C5E98(v19 | ((v18 ^ 1u) << 32), v4, a3);
      goto LABEL_20;
    }

    if (swift_dynamicCast())
    {
      sub_1D1741970(v39, v34);
      v20 = swift_dynamicCast();
      if (v20)
      {
        v21 = v32;
      }

      else
      {
        v21 = 0;
      }

      sub_1D18C6000(v21, v20 ^ 1, v4, a3);
      goto LABEL_20;
    }

    if (swift_dynamicCast())
    {
      sub_1D1741970(v39, v34);
      v22 = swift_dynamicCast();
      v23 = v32;
      LOBYTE(v32) = v22 ^ 1;
      if (!v22)
      {
        v23 = 0;
      }

      sub_1D18C6160(v23 | ((v22 ^ 1u) << 32), v4, a3);
      goto LABEL_20;
    }

    if (swift_dynamicCast())
    {
      sub_1D1741970(v39, v34);
      v24 = swift_dynamicCast();
      if (v24)
      {
        v25 = v32;
      }

      else
      {
        v25 = 0;
      }

      sub_1D18C6410(v25, v24 ^ 1, v4, a3);
      goto LABEL_20;
    }

    if (swift_dynamicCast())
    {
      sub_1D1741970(v39, v34);
      if (swift_dynamicCast())
      {
        v26 = v32;
      }

      else
      {
        v26 = 2;
      }

      LOBYTE(v32) = v4;
      sub_1D18C66BC(v26, &v32, a3);
      goto LABEL_20;
    }

    if (swift_dynamicCast())
    {

      sub_1D1742194(v39, v34);
      if (swift_dynamicCast())
      {
        v27 = v32;
        v28 = v33;
        v29 = 8;
      }

      else
      {
        v27 = 0;
        v28 = 0;
        v29 = -1;
      }

      *a3 = v27;
      *(a3 + 8) = v28;
      *(a3 + 16) = v29;
      return __swift_destroy_boxed_opaque_existential_1(v37);
    }

    if (swift_dynamicCast())
    {
      sub_1D174E7C4(v35, v36);
      sub_1D1742194(v39, v34);
      if (swift_dynamicCast())
      {
        v30 = v33;
        if (v4 == 9)
        {
          *a3 = v32;
          *(a3 + 8) = v30;
          v31 = 9;
          goto LABEL_69;
        }

        if (v4 == 10)
        {
          *a3 = v32;
          *(a3 + 8) = v30;
          v31 = 10;
LABEL_69:
          *(a3 + 16) = v31;
          return __swift_destroy_boxed_opaque_existential_1(v37);
        }

        sub_1D174E7C4(v32, v33);
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v39);
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    v31 = -1;
    goto LABEL_69;
  }

  sub_1D1741970(v39, v34);
  v5 = swift_dynamicCast();
  if (v5)
  {
    v6 = v32;
  }

  else
  {
    v6 = 0;
  }

LABEL_6:
  sub_1D18C5A80(v6, v5 ^ 1, v4, a3);
LABEL_20:
  __swift_destroy_boxed_opaque_existential_1(v39);
  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t sub_1D18C5638@<X0>(uint64_t result@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  if ((result & 0x100) != 0)
  {
    goto LABEL_11;
  }

  if (a2 > 4u)
  {
    if (a2 <= 7u)
    {
      if (a2 - 5 >= 2)
      {
        *a3 = result;
        *(a3 + 8) = 0;
        *(a3 + 16) = 7;
      }

      else
      {
        *a3 = result;
        *(a3 + 8) = 0;
        *(a3 + 16) = 5;
      }

      return result;
    }

    if (a2 == 8)
    {
      result = sub_1D1E68FAC();
      *a3 = result;
      *(a3 + 8) = v4;
      *(a3 + 16) = 8;
      return result;
    }

LABEL_11:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = -1;
    return result;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      *a3 = result & ~(result >> 31);
      *(a3 + 8) = 0;
      *(a3 + 16) = 1;
    }

    else
    {
      *a3 = result == 1;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
    }
  }

  else if (a2 == 2)
  {
    *a3 = result & ~(result >> 31);
    *(a3 + 8) = 0;
    *(a3 + 16) = 2;
  }

  else if (a2 == 3)
  {
    *a3 = result & ~(result >> 31);
    *(a3 + 8) = 0;
    *(a3 + 16) = 3;
  }

  else if ((result & 0x80) != 0)
  {
    __break(1u);
  }

  else
  {
    *a3 = result & 0x7F;
    *(a3 + 8) = 0;
    *(a3 + 16) = 4;
  }

  return result;
}

uint64_t sub_1D18C5798@<X0>(uint64_t result@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  if ((result & 0x10000) != 0)
  {
    goto LABEL_13;
  }

  if (a2 > 4u)
  {
    if (a2 <= 7u)
    {
      if (a2 - 5 >= 2)
      {
        *a3 = result;
        *(a3 + 8) = 0;
        *(a3 + 16) = 7;
      }

      else
      {
        *a3 = result;
        *(a3 + 8) = 0;
        *(a3 + 16) = 5;
      }

      return result;
    }

    if (a2 == 8)
    {
      result = sub_1D1E68FAC();
      *a3 = result;
      *(a3 + 8) = v5;
      *(a3 + 16) = 8;
      return result;
    }

LABEL_13:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = -1;
    return result;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = result;
      if (result >= 0x100u)
      {
        v6 = 255;
      }

      if ((result & 0x8000) != 0)
      {
        v6 = 0;
      }

      *a3 = v6;
      *(a3 + 8) = 0;
      *(a3 + 16) = 1;
    }

    else
    {
      *a3 = result == 1;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
    }
  }

  else if (a2 == 2)
  {
    *a3 = result & ~(result >> 31);
    *(a3 + 8) = 0;
    *(a3 + 16) = 2;
  }

  else if (a2 == 3)
  {
    v3 = result;
    if (v3 < 0)
    {
      v3 = 0;
    }

    *a3 = v3;
    *(a3 + 8) = 0;
    *(a3 + 16) = 3;
  }

  else if ((result & 0x8000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a3 = result & 0x7FFF;
    *(a3 + 8) = 0;
    *(a3 + 16) = 4;
  }

  return result;
}

uint64_t sub_1D18C590C@<X0>(uint64_t result@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  if ((result & 0x100000000) != 0)
  {
    goto LABEL_11;
  }

  if (a2 > 4u)
  {
    if (a2 <= 7u)
    {
      if (a2 - 5 >= 2)
      {
        *a3 = result;
        *(a3 + 8) = 0;
        *(a3 + 16) = 7;
      }

      else
      {
        *a3 = result;
        *(a3 + 8) = 0;
        *(a3 + 16) = 5;
      }

      return result;
    }

    if (a2 == 8)
    {
      result = sub_1D1E68FAC();
      *a3 = result;
      *(a3 + 8) = v5;
      *(a3 + 16) = 8;
      return result;
    }

LABEL_11:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = -1;
    return result;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = result;
      if (result > 255)
      {
        v6 = 255;
      }

      if (result < 0)
      {
        v6 = 0;
      }

      *a3 = v6;
      *(a3 + 8) = 0;
      *(a3 + 16) = 1;
    }

    else
    {
      *a3 = result == 1;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
    }
  }

  else if (a2 == 2)
  {
    v3 = result;
    if (result >= 0x10000)
    {
      v3 = 0xFFFFLL;
    }

    if (result < 0)
    {
      v3 = 0;
    }

    *a3 = v3;
    *(a3 + 8) = 0;
    *(a3 + 16) = 2;
  }

  else if (a2 == 3)
  {
    *a3 = result & ~(result >> 31);
    *(a3 + 8) = 0;
    *(a3 + 16) = 3;
  }

  else if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a3 = result & 0x7FFFFFFF;
    *(a3 + 8) = 0;
    *(a3 + 16) = 4;
  }

  return result;
}

uint64_t sub_1D18C5A80@<X0>(uint64_t result@<X0>, char a2@<W1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    goto LABEL_2;
  }

  if (a3 <= 4u)
  {
    if (a3 <= 1u)
    {
      if (a3)
      {
        v9 = 255;
        if (result < 255)
        {
          v9 = result;
        }

        *a4 = v9 & ~(v9 >> 63);
        *(a4 + 8) = 0;
        *(a4 + 16) = 1;
      }

      else
      {
        *a4 = result == 1;
        *(a4 + 8) = 0;
        *(a4 + 16) = 0;
      }
    }

    else if (a3 == 2)
    {
      v6 = 0xFFFFLL;
      if (result < 0xFFFF)
      {
        v6 = result;
      }

      *a4 = v6 & ~(v6 >> 63);
      *(a4 + 8) = 0;
      *(a4 + 16) = 2;
    }

    else if (a3 == 3)
    {
      v5 = 0xFFFFFFFFLL;
      if (result < 0xFFFFFFFFLL)
      {
        v5 = result;
      }

      *a4 = v5 & ~(v5 >> 63);
      *(a4 + 8) = 0;
      *(a4 + 16) = 3;
    }

    else if (result < 0)
    {
      __break(1u);
    }

    else
    {
      *a4 = result;
      *(a4 + 8) = 0;
      *(a4 + 16) = 4;
    }
  }

  else if (a3 > 7u)
  {
    if (a3 != 8)
    {
LABEL_2:
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = -1;
      return result;
    }

    result = sub_1D1E68FAC();
    *a4 = result;
    *(a4 + 8) = v8;
    *(a4 + 16) = 8;
  }

  else if (a3 - 5 >= 2)
  {
    *a4 = result;
    *(a4 + 8) = 0;
    *(a4 + 16) = 7;
  }

  else
  {
    v4 = 0x7FFFFFFFLL;
    if (result < 0x7FFFFFFF)
    {
      v4 = result;
    }

    if (v4 <= 0xFFFFFFFF80000000)
    {
      LODWORD(v4) = 0x80000000;
    }

    *a4 = v4;
    *(a4 + 8) = 0;
    *(a4 + 16) = 5;
  }

  return result;
}

uint64_t sub_1D18C5BFC@<X0>(uint64_t result@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  if ((result & 0x100) != 0)
  {
    goto LABEL_11;
  }

  if (a2 > 4u)
  {
    if (a2 <= 7u)
    {
      if (a2 - 5 >= 2)
      {
        *a3 = result;
        *(a3 + 8) = 0;
        *(a3 + 16) = 7;
      }

      else
      {
        *a3 = result;
        *(a3 + 8) = 0;
        *(a3 + 16) = 5;
      }

      return result;
    }

    if (a2 == 8)
    {
      result = sub_1D1E68FAC();
      *a3 = result;
      *(a3 + 8) = v4;
      *(a3 + 16) = 8;
      return result;
    }

LABEL_11:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = -1;
    return result;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      *a3 = result;
      *(a3 + 8) = 0;
      *(a3 + 16) = 1;
    }

    else
    {
      *a3 = result == 1;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
    }
  }

  else if (a2 == 2)
  {
    *a3 = result;
    *(a3 + 8) = 0;
    *(a3 + 16) = 2;
  }

  else
  {
    *a3 = result;
    *(a3 + 8) = 0;
    if (a2 == 3)
    {
      *(a3 + 16) = 3;
    }

    else
    {
      *(a3 + 16) = 4;
    }
  }

  return result;
}

uint64_t sub_1D18C5D44@<X0>(uint64_t result@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  if ((result & 0x10000) != 0)
  {
    goto LABEL_11;
  }

  if (a2 > 4u)
  {
    if (a2 <= 7u)
    {
      if (a2 - 5 >= 2)
      {
        *a3 = result;
        *(a3 + 8) = 0;
        *(a3 + 16) = 7;
      }

      else
      {
        *a3 = result;
        *(a3 + 8) = 0;
        *(a3 + 16) = 5;
      }

      return result;
    }

    if (a2 == 8)
    {
      result = sub_1D1E68FAC();
      *a3 = result;
      *(a3 + 8) = v4;
      *(a3 + 16) = 8;
      return result;
    }

LABEL_11:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = -1;
    return result;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v5 = result;
      if ((result & 0xFF00) != 0)
      {
        v5 = 255;
      }

      *a3 = v5;
      *(a3 + 8) = 0;
      *(a3 + 16) = 1;
    }

    else
    {
      *a3 = result == 1;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
    }
  }

  else if (a2 == 2)
  {
    *a3 = result;
    *(a3 + 8) = 0;
    *(a3 + 16) = 2;
  }

  else
  {
    *a3 = result;
    *(a3 + 8) = 0;
    if (a2 == 3)
    {
      *(a3 + 16) = 3;
    }

    else
    {
      *(a3 + 16) = 4;
    }
  }

  return result;
}

uint64_t sub_1D18C5E98@<X0>(uint64_t result@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  if ((result & 0x100000000) != 0)
  {
    goto LABEL_14;
  }

  if (a2 > 4u)
  {
    if (a2 <= 7u)
    {
      if (a2 - 5 >= 2)
      {
        *a3 = result;
        *(a3 + 8) = 0;
        *(a3 + 16) = 7;
      }

      else
      {
        if (result >= 0x7FFFFFFF)
        {
          v3 = 0x7FFFFFFFLL;
        }

        else
        {
          v3 = result;
        }

        *a3 = v3;
        *(a3 + 8) = 0;
        *(a3 + 16) = 5;
      }

      return result;
    }

    if (a2 == 8)
    {
      result = sub_1D1E68FAC();
      *a3 = result;
      *(a3 + 8) = v6;
      *(a3 + 16) = 8;
      return result;
    }

LABEL_14:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = -1;
    return result;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = result;
      if (result > 0xFF)
      {
        v7 = 255;
      }

      *a3 = v7;
      *(a3 + 8) = 0;
      *(a3 + 16) = 1;
    }

    else
    {
      *a3 = result == 1;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
    }
  }

  else if (a2 == 2)
  {
    v4 = result;
    if (WORD1(result))
    {
      v4 = 0xFFFFLL;
    }

    *a3 = v4;
    *(a3 + 8) = 0;
    *(a3 + 16) = 2;
  }

  else
  {
    *a3 = result;
    *(a3 + 8) = 0;
    if (a2 == 3)
    {
      *(a3 + 16) = 3;
    }

    else
    {
      *(a3 + 16) = 4;
    }
  }

  return result;
}

unint64_t sub_1D18C6000@<X0>(unint64_t result@<X0>, char a2@<W1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    goto LABEL_2;
  }

  if (a3 <= 4u)
  {
    if (a3 <= 1u)
    {
      if (a3)
      {
        v9 = 255;
        if (result < 0xFF)
        {
          v9 = result;
        }

        *a4 = v9;
        *(a4 + 8) = 0;
        *(a4 + 16) = 1;
      }

      else
      {
        *a4 = result == 1;
        *(a4 + 8) = 0;
        *(a4 + 16) = 0;
      }
    }

    else if (a3 == 2)
    {
      v6 = 0xFFFFLL;
      if (result < 0xFFFF)
      {
        v6 = result;
      }

      *a4 = v6;
      *(a4 + 8) = 0;
      *(a4 + 16) = 2;
    }

    else if (a3 == 3)
    {
      v5 = 0xFFFFFFFFLL;
      if (result < 0xFFFFFFFF)
      {
        v5 = result;
      }

      *a4 = v5;
      *(a4 + 8) = 0;
      *(a4 + 16) = 3;
    }

    else
    {
      *a4 = result;
      *(a4 + 8) = 0;
      *(a4 + 16) = 4;
    }
  }

  else if (a3 > 7u)
  {
    if (a3 != 8)
    {
LABEL_2:
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = -1;
      return result;
    }

    result = sub_1D1E68FAC();
    *a4 = result;
    *(a4 + 8) = v8;
    *(a4 + 16) = 8;
  }

  else if (a3 - 5 >= 2)
  {
    *a4 = result;
    *(a4 + 8) = 0;
    *(a4 + 16) = 7;
  }

  else
  {
    v4 = 0x7FFFFFFFLL;
    if (result < 0x7FFFFFFF)
    {
      v4 = result;
    }

    *a4 = v4;
    *(a4 + 8) = 0;
    *(a4 + 16) = 5;
  }

  return result;
}

uint64_t sub_1D18C6160@<X0>(uint64_t result@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  if ((result & 0x100000000) != 0)
  {
    goto LABEL_20;
  }

  if (a2 > 4u)
  {
    if (a2 <= 7u)
    {
      if (a2 != 5 && a2 != 6)
      {
        *a3 = *&result;
        *(a3 + 8) = 0;
        *(a3 + 16) = 7;
        return result;
      }

      v3 = a3;
      result = sub_1D18CA5DC(&v9, *&result);
      if ((v10 & 1) == 0)
      {
        v4 = v9;
        if (v9 >= 0x7FFFFFFF)
        {
          v4 = 0x7FFFFFFFLL;
        }

        if (v4 <= 0xFFFFFFFF80000000)
        {
          LODWORD(v4) = 0x80000000;
        }

        *v3 = v4;
        *(v3 + 8) = 0;
        v5 = 6;
        goto LABEL_34;
      }

      goto LABEL_36;
    }

    if (a2 != 8)
    {
LABEL_20:
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = -1;
      return result;
    }

    v3 = a3;
    result = sub_1D1E68ABC();
    *v3 = 0;
    *(v3 + 8) = 0xE000000000000000;
    v5 = 8;
LABEL_34:
    *(v3 + 16) = v5;
    return result;
  }

  if (a2 <= 1u)
  {
    if (!a2)
    {
      *a3 = *&result != 0.0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      return result;
    }

    v3 = a3;
    result = sub_1D18CA5DC(&v9, *&result);
    if ((v10 & 1) == 0)
    {
      v8 = v9;
      if (v9 >= 255)
      {
        v8 = 255;
      }

      *v3 = v8 & ~(v8 >> 63);
      *(v3 + 8) = 0;
      v5 = 1;
      goto LABEL_34;
    }

    goto LABEL_36;
  }

  v3 = a3;
  if (a2 == 2)
  {
    result = sub_1D18CA5DC(&v9, *&result);
    if ((v10 & 1) == 0)
    {
      v7 = v9;
      if (v9 >= 0xFFFF)
      {
        v7 = 0xFFFFLL;
      }

      *v3 = v7 & ~(v7 >> 63);
      *(v3 + 8) = 0;
      v5 = 2;
      goto LABEL_34;
    }

    goto LABEL_36;
  }

  if (a2 == 3)
  {
    result = sub_1D18CA5DC(&v9, *&result);
    if ((v10 & 1) == 0)
    {
      v6 = v9;
      if (v9 >= 0xFFFFFFFFLL)
      {
        v6 = 0xFFFFFFFFLL;
      }

      *v3 = v6 & ~(v6 >> 63);
      *(v3 + 8) = 0;
      v5 = 3;
      goto LABEL_34;
    }

    goto LABEL_36;
  }

  result = sub_1D18CA5DC(&v9, *&result);
  if ((v10 & 1) == 0)
  {
    *v3 = v9 & ~(v9 >> 63);
    *(v3 + 8) = 0;
    v5 = 4;
    goto LABEL_34;
  }

LABEL_36:
  v9 = 0;
  v10 = 0xE000000000000000;
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0x74616F6C46, 0xE500000000000000);
  MEMORY[0x1D3890F70](0xD00000000000001ELL, 0x80000001D1EBC4F0);
  MEMORY[0x1D3890F70](7630409, 0xE300000000000000);
  MEMORY[0x1D3890F70](0xD00000000000002ELL, 0x80000001D1EBC510);
  result = sub_1D1E68AFC();
  __break(1u);
  return result;
}

uint64_t sub_1D18C6410@<X0>(uint64_t result@<X0>, char a2@<W1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    goto LABEL_2;
  }

  if (a3 <= 4u)
  {
    if (a3 <= 1u)
    {
      if (!a3)
      {
        *a4 = *&result != 0.0;
        *(a4 + 8) = 0;
        *(a4 + 16) = 0;
        return result;
      }

      v4 = a4;
      result = sub_1D18CA3EC(&v10, *&result);
      if ((v11 & 1) == 0)
      {
        v9 = v10;
        if (v10 >= 255)
        {
          v9 = 255;
        }

        *v4 = v9 & ~(v9 >> 63);
        *(v4 + 8) = 0;
        v6 = 1;
        goto LABEL_35;
      }
    }

    else
    {
      v4 = a4;
      if (a3 == 2)
      {
        result = sub_1D18CA3EC(&v10, *&result);
        if ((v11 & 1) == 0)
        {
          v8 = v10;
          if (v10 >= 0xFFFF)
          {
            v8 = 0xFFFFLL;
          }

          *v4 = v8 & ~(v8 >> 63);
          *(v4 + 8) = 0;
          v6 = 2;
          goto LABEL_35;
        }
      }

      else if (a3 == 3)
      {
        result = sub_1D18CA3EC(&v10, *&result);
        if ((v11 & 1) == 0)
        {
          v7 = v10;
          if (v10 >= 0xFFFFFFFFLL)
          {
            v7 = 0xFFFFFFFFLL;
          }

          *v4 = v7 & ~(v7 >> 63);
          *(v4 + 8) = 0;
          v6 = 3;
          goto LABEL_35;
        }
      }

      else
      {
        result = sub_1D18CA3EC(&v10, *&result);
        if ((v11 & 1) == 0)
        {
          *v4 = v10 & ~(v10 >> 63);
          *(v4 + 8) = 0;
          v6 = 4;
LABEL_35:
          *(v4 + 16) = v6;
          return result;
        }
      }
    }
  }

  else
  {
    if (a3 > 7u)
    {
      if (a3 != 8)
      {
LABEL_2:
        *a4 = 0;
        *(a4 + 8) = 0;
        *(a4 + 16) = -1;
        return result;
      }

      v4 = a4;
      *&result = COERCE_DOUBLE(sub_1D1E68ABC());
      *v4 = 0;
      *(v4 + 8) = 0xE000000000000000;
      v6 = 8;
      goto LABEL_35;
    }

    if (a3 != 5 && a3 != 6)
    {
      *a4 = *&result;
      *(a4 + 8) = 0;
      *(a4 + 16) = 7;
      return result;
    }

    v4 = a4;
    result = sub_1D18CA3EC(&v10, *&result);
    if ((v11 & 1) == 0)
    {
      v5 = v10;
      if (v10 >= 0x7FFFFFFF)
      {
        v5 = 0x7FFFFFFFLL;
      }

      if (v5 <= 0xFFFFFFFF80000000)
      {
        LODWORD(v5) = 0x80000000;
      }

      *v4 = v5;
      *(v4 + 8) = 0;
      v6 = 6;
      goto LABEL_35;
    }
  }

  v10 = 0;
  v11 = 0xE000000000000000;
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0x656C62756F44, 0xE600000000000000);
  MEMORY[0x1D3890F70](0xD00000000000001ELL, 0x80000001D1EBC4F0);
  MEMORY[0x1D3890F70](7630409, 0xE300000000000000);
  MEMORY[0x1D3890F70](0xD00000000000002ELL, 0x80000001D1EBC510);
  *&result = COERCE_DOUBLE(sub_1D1E68AFC());
  __break(1u);
  return result;
}

void sub_1D18C66BC(char a1@<W0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  if (qword_1EE07B5D0 != -1)
  {
    swift_once();
  }

  v6 = sub_1D1E6709C();
  __swift_project_value_buffer(v6, qword_1EE07B5D8);
  v7 = sub_1D1E6707C();
  v8 = sub_1D1E6835C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34 = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_1D1B1312C(0xD000000000000020, 0x80000001D1EBC540, &v34);
    *(v9 + 12) = 2080;
    v11 = 1702195828;
    if ((a1 & 1) == 0)
    {
      v11 = 0x65736C6166;
    }

    if (a1 == 2)
    {
      v12 = 1280070990;
    }

    else
    {
      v12 = v11;
    }

    if ((a1 == 2) | a1 & 1)
    {
      v13 = 0xE400000000000000;
    }

    else
    {
      v13 = 0xE500000000000000;
    }

    v14 = sub_1D1B1312C(v12, v13, &v34);

    *(v9 + 14) = v14;
    *(v9 + 22) = 2080;
    if (v5 <= 4)
    {
      v23 = 1819242338;
      v24 = 0x3631746E6975;
      v25 = 0x3233746E6975;
      if (v5 != 3)
      {
        v25 = 0x3436746E6975;
      }

      if (v5 != 2)
      {
        v24 = v25;
      }

      v26 = 0xE500000000000000;
      if (v5)
      {
        v23 = 0x38746E6975;
      }

      else
      {
        v26 = 0xE400000000000000;
      }

      if (v5 <= 1)
      {
        v21 = v23;
      }

      else
      {
        v21 = v24;
      }

      if (v5 <= 1)
      {
        v22 = v26;
      }

      else
      {
        v22 = 0xE600000000000000;
      }
    }

    else
    {
      v15 = 0xE600000000000000;
      v16 = 0x676E69727473;
      v17 = 947285108;
      if (v5 != 9)
      {
        v17 = 1635017060;
      }

      if (v5 != 8)
      {
        v16 = v17;
        v15 = 0xE400000000000000;
      }

      v18 = 0xE300000000000000;
      v19 = 7630441;
      v20 = 0x3233746E69;
      if (v5 != 6)
      {
        v20 = 0x74616F6C66;
      }

      if (v5 != 5)
      {
        v19 = v20;
        v18 = 0xE500000000000000;
      }

      if (v5 <= 7)
      {
        v21 = v19;
      }

      else
      {
        v21 = v16;
      }

      if (v5 <= 7)
      {
        v22 = v18;
      }

      else
      {
        v22 = v15;
      }
    }

    v27 = sub_1D1B1312C(v21, v22, &v34);

    *(v9 + 24) = v27;
    _os_log_impl(&dword_1D16EC000, v7, v8, "%s Returning BOOLTypedValue for BOOLValue = %s with valueFormat: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v10, -1, -1);
    MEMORY[0x1D3893640](v9, -1, -1);
  }

  if (a1 == 2)
  {
LABEL_42:
    *a3 = 0;
    *(a3 + 8) = 0;
    v28 = -1;
LABEL_43:
    *(a3 + 16) = v28;
    return;
  }

  if (v5 > 4)
  {
    if (v5 <= 7)
    {
      if ((v5 - 5) >= 2)
      {
        v30 = 0x3FF0000000000000;
        if ((a1 & 1) == 0)
        {
          v30 = 0;
        }

        *a3 = v30;
        *(a3 + 8) = 0;
        v28 = 7;
      }

      else
      {
        *a3 = a1 & 1;
        *(a3 + 8) = 0;
        v28 = 5;
      }

      goto LABEL_43;
    }

    if (v5 == 8)
    {
      v34 = 0;
      v35 = 0xE000000000000000;
      if (a1)
      {
        v31 = 1702195828;
      }

      else
      {
        v31 = 0x65736C6166;
      }

      if (a1)
      {
        v32 = 0xE400000000000000;
      }

      else
      {
        v32 = 0xE500000000000000;
      }

      MEMORY[0x1D3890F70](v31, v32);

      v33 = v35;
      *a3 = v34;
      *(a3 + 8) = v33;
      v28 = 8;
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (v5 > 1)
  {
    v29 = a1 & 1;
    if (v5 == 2)
    {
      *a3 = v29;
      *(a3 + 8) = 0;
      v28 = 2;
    }

    else
    {
      *a3 = v29;
      *(a3 + 8) = 0;
      if (v5 == 3)
      {
        v28 = 3;
      }

      else
      {
        v28 = 4;
      }
    }

    goto LABEL_43;
  }

  if (v5)
  {
    *a3 = a1 & 1;
    *(a3 + 8) = 0;
    v28 = 1;
    goto LABEL_43;
  }

  *a3 = a1 & 1;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
}

uint64_t CharacteristicKind.Value.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  if (v2 <= 5)
  {
    if (*(v0 + 16) <= 2u)
    {
      if (!*(v0 + 16))
      {
        v12 = 0x286C6F6F622ELL;
        v5 = (v1 & 1) == 0;
        if (v1)
        {
          v6 = 1702195828;
        }

        else
        {
          v6 = 0x65736C6166;
        }

        if (v5)
        {
          v7 = 0xE500000000000000;
        }

        else
        {
          v7 = 0xE400000000000000;
        }

        v8 = v7;
        goto LABEL_32;
      }

      if (v2 == 1)
      {
        v12 = 0x2838746E69752ELL;
      }

      else
      {
        v12 = 0x283631746E69752ELL;
      }

      goto LABEL_31;
    }

    if (v2 == 3)
    {
      v12 = 0x283233746E69752ELL;
      goto LABEL_31;
    }

    if (v2 == 4)
    {
      v12 = 0x283436746E69752ELL;
      v11 = *v0;
LABEL_31:
      v6 = sub_1D1E68FAC();
      goto LABEL_32;
    }

    v9 = 0x28746E692ELL;
LABEL_30:
    v12 = v9;
    goto LABEL_31;
  }

  if (*(v0 + 16) <= 8u)
  {
    if (v2 != 6)
    {
      if (v2 == 7)
      {
        v3 = *v0;
        v12 = 0;
        MEMORY[0x1D3890F70](0x28656C62756F642ELL, 0xE800000000000000);
        sub_1D1E6811C();
      }

      else
      {
        v12 = 0x28676E697274732ELL;
        MEMORY[0x1D3890F70](v1, v0[1]);
      }

      goto LABEL_33;
    }

    v9 = 0x283233746E692ELL;
    goto LABEL_30;
  }

  if (v2 == 9)
  {
    v4 = 0x2838766C742ELL;
    goto LABEL_26;
  }

  if (v2 == 10)
  {
    v4 = 0x28617461642ELL;
LABEL_26:
    v12 = v4;
    v6 = sub_1D1E6683C();
LABEL_32:
    MEMORY[0x1D3890F70](v6, v8);

LABEL_33:
    MEMORY[0x1D3890F70](41, 0xE100000000000000);
    return v12;
  }

  return 0x6C6C756E2ELL;
}

uint64_t sub_1D18C6DA0(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x676E69727473;
    v7 = 947285108;
    if (a1 != 10)
    {
      v7 = 1635017060;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 7630441;
    v9 = 0x3233746E69;
    if (a1 != 7)
    {
      v9 = 0x656C62756F64;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 1819047278;
    v2 = 0x3631746E6975;
    v3 = 0x3233746E6975;
    if (a1 != 4)
    {
      v3 = 0x3436746E6975;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 1819242338;
    if (a1 != 1)
    {
      v4 = 0x38746E6975;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D18C6ED8(uint64_t a1)
{
  v2 = sub_1D18CB054();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18C6F14(uint64_t a1)
{
  v2 = sub_1D18CB054();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18C6F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D18CC65C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D18C6F80(uint64_t a1)
{
  v2 = sub_1D18CAC64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18C6FBC(uint64_t a1)
{
  v2 = sub_1D18CAC64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18C6FF8(uint64_t a1)
{
  v2 = sub_1D18CACB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18C7034(uint64_t a1)
{
  v2 = sub_1D18CACB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18C7070(uint64_t a1)
{
  v2 = sub_1D18CAE08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18C70AC(uint64_t a1)
{
  v2 = sub_1D18CAE08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18C70E8(uint64_t a1)
{
  v2 = sub_1D18CAE5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18C7124(uint64_t a1)
{
  v2 = sub_1D18CAE5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18C7160(uint64_t a1)
{
  v2 = sub_1D18CAEB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18C719C(uint64_t a1)
{
  v2 = sub_1D18CAEB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18C71D8(uint64_t a1)
{
  v2 = sub_1D18CB0A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18C7214(uint64_t a1)
{
  v2 = sub_1D18CB0A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18C7250(uint64_t a1)
{
  v2 = sub_1D18CADB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18C728C(uint64_t a1)
{
  v2 = sub_1D18CADB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18C72C8(uint64_t a1)
{
  v2 = sub_1D18CAD60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18C7304(uint64_t a1)
{
  v2 = sub_1D18CAD60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18C7340(uint64_t a1)
{
  v2 = sub_1D18CAFAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18C737C(uint64_t a1)
{
  v2 = sub_1D18CAFAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18C73B8(uint64_t a1)
{
  v2 = sub_1D18CAF58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18C73F4(uint64_t a1)
{
  v2 = sub_1D18CAF58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18C7430(uint64_t a1)
{
  v2 = sub_1D18CAF04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18C746C(uint64_t a1)
{
  v2 = sub_1D18CAF04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18C74A8(uint64_t a1)
{
  v2 = sub_1D18CB000();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18C74E4(uint64_t a1)
{
  v2 = sub_1D18CB000();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CharacteristicKind.Value.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D80, &qword_1D1E7C898);
  v92 = *(v3 - 8);
  v93 = v3;
  v4 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v91 = &v60 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D88, &qword_1D1E7C8A0);
  v89 = *(v6 - 8);
  v90 = v6;
  v7 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v88 = &v60 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D90, &qword_1D1E7C8A8);
  v86 = *(v9 - 8);
  v87 = v9;
  v10 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v85 = &v60 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D98, &qword_1D1E7C8B0);
  v83 = *(v12 - 8);
  v84 = v12;
  v13 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v82 = &v60 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645DA0, &qword_1D1E7C8B8);
  v80 = *(v15 - 8);
  v81 = v15;
  v16 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v79 = &v60 - v17;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645DA8, &qword_1D1E7C8C0);
  v77 = *(v78 - 8);
  v18 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v76 = &v60 - v19;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645DB0, &qword_1D1E7C8C8);
  v74 = *(v75 - 8);
  v20 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v73 = &v60 - v21;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645DB8, &qword_1D1E7C8D0);
  v71 = *(v72 - 8);
  v22 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v70 = &v60 - v23;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645DC0, &qword_1D1E7C8D8);
  v68 = *(v69 - 8);
  v24 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v60 - v25;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645DC8, &qword_1D1E7C8E0);
  v65 = *(v66 - 8);
  v26 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v60 - v27;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645DD0, &qword_1D1E7C8E8);
  v62 = *(v63 - 8);
  v28 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v30 = &v60 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645DD8, &qword_1D1E7C8F0);
  v61 = *(v31 - 8);
  v32 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v60 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645DE0, &qword_1D1E7C8F8);
  v36 = *(v35 - 8);
  v96 = v35;
  v97 = v36;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v39 = &v60 - v38;
  v40 = *v1;
  v94 = v1[1];
  v95 = v40;
  v41 = *(v1 + 16);
  v42 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D18CAC64();
  sub_1D1E6930C();
  if (v41 <= 5)
  {
    if (v41 <= 2)
    {
      v43 = v39;
      if (!v41)
      {
        LOBYTE(v98) = 1;
        sub_1D18CB054();
        v56 = v96;
        sub_1D1E68DFC();
        v57 = v63;
        sub_1D1E68EDC();
        (*(v62 + 8))(v30, v57);
        return (*(v97 + 8))(v39, v56);
      }

      if (v41 == 1)
      {
        LOBYTE(v98) = 2;
        sub_1D18CB000();
        v44 = v64;
        v45 = v96;
        sub_1D1E68DFC();
        v46 = v66;
        sub_1D1E68F3C();
        (*(v65 + 8))(v44, v46);
        return (*(v97 + 8))(v43, v45);
      }

      LOBYTE(v98) = 3;
      sub_1D18CAFAC();
      v53 = v67;
      v48 = v96;
      sub_1D1E68DFC();
      v54 = v69;
      sub_1D1E68F4C();
      v55 = v68;
      goto LABEL_21;
    }

    if (v41 == 3)
    {
      LOBYTE(v98) = 4;
      sub_1D18CAF58();
      v49 = v70;
      v48 = v96;
      sub_1D1E68DFC();
      v50 = v72;
      sub_1D1E68F5C();
      v52 = &v100;
    }

    else
    {
      v48 = v96;
      if (v41 == 4)
      {
        LOBYTE(v98) = 5;
        sub_1D18CAF04();
        v49 = v73;
        sub_1D1E68DFC();
        v50 = v75;
        sub_1D1E68F6C();
        v52 = &v101;
      }

      else
      {
        LOBYTE(v98) = 6;
        sub_1D18CAEB0();
        v49 = v76;
        sub_1D1E68DFC();
        v50 = v78;
        sub_1D1E68F2C();
        v52 = &v102;
      }
    }

    v51 = *(v52 - 32);
LABEL_25:
    (*(v51 + 8))(v49, v50);
    v58 = *(v97 + 8);
    v59 = v39;
    return v58(v59, v48);
  }

  if (v41 <= 8)
  {
    v48 = v96;
    if (v41 == 6)
    {
      LOBYTE(v98) = 7;
      sub_1D18CAE5C();
      v49 = v79;
      sub_1D1E68DFC();
      v50 = v81;
      sub_1D1E68F2C();
      v51 = v80;
    }

    else if (v41 == 7)
    {
      LOBYTE(v98) = 8;
      sub_1D18CAE08();
      v49 = v82;
      sub_1D1E68DFC();
      v50 = v84;
      sub_1D1E68EEC();
      v51 = v83;
    }

    else
    {
      LOBYTE(v98) = 9;
      sub_1D18CADB4();
      v49 = v85;
      sub_1D1E68DFC();
      v50 = v87;
      sub_1D1E68ECC();
      v51 = v86;
    }

    goto LABEL_25;
  }

  v48 = v96;
  v43 = v39;
  if (v41 == 9)
  {
    LOBYTE(v98) = 10;
    sub_1D18CAD60();
    v53 = v88;
    sub_1D1E68DFC();
    v98 = v95;
    v99 = v94;
    sub_1D18CAD0C();
    v54 = v90;
    sub_1D1E68F1C();
    v55 = v89;
    goto LABEL_21;
  }

  if (v41 == 10)
  {
    LOBYTE(v98) = 11;
    sub_1D18CACB8();
    v53 = v91;
    sub_1D1E68DFC();
    v98 = v95;
    v99 = v94;
    sub_1D18CAD0C();
    v54 = v93;
    sub_1D1E68F1C();
    v55 = v92;
LABEL_21:
    (*(v55 + 8))(v53, v54);
    v58 = *(v97 + 8);
    v59 = v43;
    return v58(v59, v48);
  }

  LOBYTE(v98) = 0;
  sub_1D18CB0A8();
  sub_1D1E68DFC();
  (*(v61 + 8))(v34, v31);
  return (*(v97 + 8))(v39, v48);
}

uint64_t CharacteristicKind.Value.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  if (v2 <= 5)
  {
    if (*(v0 + 16) <= 2u)
    {
      if (!*(v0 + 16))
      {
        MEMORY[0x1D3892850](1);
        return sub_1D1E6922C();
      }

      if (v2 == 1)
      {
        MEMORY[0x1D3892850](2);
        return sub_1D1E6922C();
      }

      MEMORY[0x1D3892850](3);
      return sub_1D1E6923C();
    }

    if (v2 == 3)
    {
      v7 = 4;
    }

    else
    {
      if (v2 == 4)
      {
        MEMORY[0x1D3892850](5);
        return MEMORY[0x1D3892890](v1);
      }

      v7 = 6;
    }

LABEL_32:
    MEMORY[0x1D3892850](v7);
    return sub_1D1E6924C();
  }

  v3 = v0[1];
  if (*(v0 + 16) <= 8u)
  {
    if (v2 != 6)
    {
      if (v2 == 7)
      {
        MEMORY[0x1D3892850](8);
        if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v4 = v1;
        }

        else
        {
          v4 = 0;
        }

        return MEMORY[0x1D3892890](v4);
      }

      else
      {
        MEMORY[0x1D3892850](9);

        return sub_1D1E678EC();
      }
    }

    v7 = 7;
    goto LABEL_32;
  }

  if (v2 == 9)
  {
    v6 = 10;
  }

  else
  {
    if (v2 != 10)
    {
      return MEMORY[0x1D3892850](0);
    }

    v6 = 11;
  }

  MEMORY[0x1D3892850](v6);

  return sub_1D1E668CC();
}

uint64_t CharacteristicKind.Value.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_1D1E6920C();
  CharacteristicKind.Value.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t CharacteristicKind.Value.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v133 = a2;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645E58, &qword_1D1E7C900);
  v126 = *(v123 - 8);
  v3 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v132 = &v101 - v4;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645E60, &qword_1D1E7C908);
  v124 = *(v125 - 8);
  v5 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v125);
  v129 = &v101 - v6;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645E68, &qword_1D1E7C910);
  v121 = *(v122 - 8);
  v7 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v122);
  v137 = &v101 - v8;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645E70, &qword_1D1E7C918);
  v119 = *(v120 - 8);
  v9 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v120);
  v131 = &v101 - v10;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645E78, &qword_1D1E7C920);
  v117 = *(v118 - 8);
  v11 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v118);
  v130 = &v101 - v12;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645E80, &qword_1D1E7C928);
  v115 = *(v116 - 8);
  v13 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v136 = &v101 - v14;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645E88, &qword_1D1E7C930);
  v113 = *(v114 - 8);
  v15 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v114);
  v128 = &v101 - v16;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645E90, &qword_1D1E7C938);
  v112 = *(v111 - 8);
  v17 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v127 = &v101 - v18;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645E98, &qword_1D1E7C940);
  v110 = *(v107 - 8);
  v19 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v135 = &v101 - v20;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645EA0, &qword_1D1E7C948);
  v108 = *(v109 - 8);
  v21 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v134 = &v101 - v22;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645EA8, &qword_1D1E7C950);
  v105 = *(v106 - 8);
  v23 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v25 = &v101 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645EB0, &qword_1D1E7C958);
  v104 = *(v26 - 8);
  v27 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v101 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645EB8, &unk_1D1E7C960);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v101 - v33;
  v35 = a1[3];
  v36 = a1[4];
  v139 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v35);
  sub_1D18CAC64();
  v37 = v138;
  sub_1D1E692FC();
  if (v37)
  {
    return __swift_destroy_boxed_opaque_existential_1(v139);
  }

  v38 = v29;
  v101 = v26;
  v102 = v25;
  v39 = v134;
  v40 = v135;
  v41 = v136;
  v42 = v137;
  v103 = 0;
  v138 = v31;
  v43 = sub_1D1E68DDC();
  v44 = (2 * *(v43 + 16)) | 1;
  v142 = v43;
  v143 = v43 + 32;
  v144 = 0;
  v145 = v44;
  v45 = sub_1D18085C0();
  if (v45 == 12 || v144 != v145 >> 1)
  {
    v56 = v34;
    v57 = sub_1D1E688EC();
    swift_allocError();
    v59 = v58;
    v60 = v30;
    v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0) + 48);
    *v59 = &type metadata for CharacteristicKind.Value;
    sub_1D1E68C5C();
    sub_1D1E688DC();
    (*(*(v57 - 8) + 104))(v59, *MEMORY[0x1E69E6AF8], v57);
    swift_willThrow();
    (*(v138 + 8))(v56, v60);
    goto LABEL_11;
  }

  if (v45 > 5u)
  {
    if (v45 > 8u)
    {
      v55 = v133;
      v73 = v138;
      if (v45 == 9)
      {
        LOBYTE(v140) = 9;
        sub_1D18CADB4();
        v84 = v103;
        sub_1D1E68C4C();
        if (!v84)
        {
          v91 = v34;
          v92 = v122;
          v54 = sub_1D1E68D2C();
          v52 = v97;
          (*(v121 + 8))(v42, v92);
          (*(v73 + 8))(v91, v30);
          swift_unknownObjectRelease();
          v53 = 8;
          goto LABEL_47;
        }
      }

      else
      {
        if (v45 != 10)
        {
          LOBYTE(v140) = 11;
          sub_1D18CACB8();
          v89 = v132;
          v90 = v103;
          sub_1D1E68C4C();
          if (!v90)
          {
            sub_1D18CB0FC();
            v95 = v89;
            v96 = v123;
            sub_1D1E68D7C();
            (*(v126 + 8))(v95, v96);
            (*(v73 + 8))(v34, v30);
            swift_unknownObjectRelease();
            v54 = v140;
            v52 = v141;
            v53 = 10;
            goto LABEL_47;
          }

          (*(v73 + 8))(v34, v30);
          swift_unknownObjectRelease();
          return __swift_destroy_boxed_opaque_existential_1(v139);
        }

        LOBYTE(v140) = 10;
        sub_1D18CAD60();
        v74 = v129;
        v75 = v103;
        sub_1D1E68C4C();
        if (!v75)
        {
          sub_1D18CB0FC();
          v76 = v125;
          sub_1D1E68D7C();
          (*(v124 + 8))(v74, v76);
          (*(v73 + 8))(v34, v30);
          swift_unknownObjectRelease();
          v54 = v140;
          v52 = v141;
          v53 = 9;
          goto LABEL_47;
        }
      }

      (*(v73 + 8))(v34, v30);
    }

    else
    {
      v55 = v133;
      v63 = v138;
      if (v45 == 6)
      {
        LOBYTE(v140) = 6;
        sub_1D18CAEB0();
        v77 = v41;
        v78 = v103;
        sub_1D1E68C4C();
        if (!v78)
        {
          v79 = v34;
          v80 = v116;
          v52 = 0;
          LODWORD(v54) = sub_1D1E68D8C();
          (*(v115 + 8))(v77, v80);
          (*(v63 + 8))(v79, v30);
          swift_unknownObjectRelease();
          v54 = v54;
          v53 = 5;
          goto LABEL_47;
        }
      }

      else
      {
        v64 = v103;
        if (v45 == 7)
        {
          LOBYTE(v140) = 7;
          sub_1D18CAE5C();
          v65 = v130;
          sub_1D1E68C4C();
          if (!v64)
          {
            v66 = v34;
            v67 = v118;
            v52 = 0;
            LODWORD(v54) = sub_1D1E68D8C();
            (*(v117 + 8))(v65, v67);
            (*(v63 + 8))(v66, v30);
            swift_unknownObjectRelease();
            v54 = v54;
            v53 = 6;
            goto LABEL_47;
          }
        }

        else
        {
          LOBYTE(v140) = 8;
          sub_1D18CAE08();
          v86 = v131;
          sub_1D1E68C4C();
          if (!v64)
          {
            v87 = v120;
            sub_1D1E68D4C();
            v52 = 0;
            v100 = v99;
            (*(v119 + 8))(v86, v87);
            (*(v63 + 8))(v34, v30);
            swift_unknownObjectRelease();
            v54 = v100;
            v53 = 7;
            goto LABEL_47;
          }
        }
      }

      (*(v63 + 8))(v34, v30);
    }

LABEL_11:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v139);
  }

  if (v45 > 2u)
  {
    v68 = v138;
    v69 = v103;
    if (v45 == 3)
    {
      LOBYTE(v140) = 3;
      sub_1D18CAFAC();
      v81 = v40;
      sub_1D1E68C4C();
      v55 = v133;
      if (!v69)
      {
        v82 = v34;
        v83 = v107;
        v52 = 0;
        LOWORD(v54) = sub_1D1E68DAC();
        (*(v110 + 8))(v81, v83);
        (*(v68 + 8))(v82, v30);
        swift_unknownObjectRelease();
        v54 = v54;
        v53 = 2;
        goto LABEL_47;
      }
    }

    else
    {
      v55 = v133;
      if (v45 == 4)
      {
        LOBYTE(v140) = 4;
        sub_1D18CAF58();
        v70 = v127;
        sub_1D1E68C4C();
        if (!v69)
        {
          v71 = v34;
          v72 = v111;
          v52 = 0;
          LODWORD(v54) = sub_1D1E68DBC();
          (*(v112 + 8))(v70, v72);
          (*(v68 + 8))(v71, v30);
          swift_unknownObjectRelease();
          v54 = v54;
          v53 = 3;
          goto LABEL_47;
        }
      }

      else
      {
        LOBYTE(v140) = 5;
        sub_1D18CAF04();
        v88 = v128;
        sub_1D1E68C4C();
        if (!v69)
        {
          v93 = v34;
          v94 = v114;
          v52 = 0;
          v54 = sub_1D1E68DCC();
          (*(v113 + 8))(v88, v94);
          (*(v68 + 8))(v93, v30);
          swift_unknownObjectRelease();
          v53 = 4;
          goto LABEL_47;
        }
      }
    }

    (*(v68 + 8))(v34, v30);
    goto LABEL_11;
  }

  v46 = v103;
  if (!v45)
  {
    LOBYTE(v140) = 0;
    sub_1D18CB0A8();
    sub_1D1E68C4C();
    v52 = v46;
    if (!v46)
    {
      (*(v104 + 8))(v38, v101);
      (*(v138 + 8))(v34, v30);
      swift_unknownObjectRelease();
      v54 = 0;
      v53 = 11;
      v55 = v133;
      goto LABEL_47;
    }

    goto LABEL_36;
  }

  if (v45 != 1)
  {
    LOBYTE(v140) = 2;
    sub_1D18CB000();
    sub_1D1E68C4C();
    if (!v46)
    {
      v85 = v109;
      v52 = 0;
      v98 = sub_1D1E68D9C();
      (*(v108 + 8))(v39, v85);
      (*(v138 + 8))(v34, v30);
      swift_unknownObjectRelease();
      v54 = v98;
      v53 = 1;
      v55 = v133;
      goto LABEL_47;
    }

    goto LABEL_36;
  }

  LOBYTE(v140) = 1;
  sub_1D18CB054();
  v47 = v102;
  sub_1D1E68C4C();
  if (v46)
  {
LABEL_36:
    (*(v138 + 8))(v34, v30);
    goto LABEL_11;
  }

  v48 = v106;
  v49 = v34;
  v50 = sub_1D1E68D3C();
  (*(v105 + 8))(v47, v48);
  v51 = v49;
  v52 = 0;
  (*(v138 + 8))(v51, v30);
  swift_unknownObjectRelease();
  v53 = 0;
  v54 = v50 & 1;
  v55 = v133;
LABEL_47:
  *v55 = v54;
  *(v55 + 8) = v52;
  *(v55 + 16) = v53;
  return __swift_destroy_boxed_opaque_existential_1(v139);
}

uint64_t sub_1D18C9888()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_1D1E6920C();
  CharacteristicKind.Value.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t sub_1D18C98E0()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_1D1E6920C();
  CharacteristicKind.Value.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t sub_1D18C9930@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1D1778244(v2, v3, v4);
}

uint64_t sub_1D18C99CC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (sub_1D1E6714C() == v3 && v5 == v4)
  {

    goto LABEL_20;
  }

  v7 = sub_1D1E6904C();

  if (v7)
  {
LABEL_20:
    if (*a1)
    {
      return result;
    }

    v19 = *a1 | 1;
    goto LABEL_22;
  }

  v9 = *MEMORY[0x1E696CA68];
  if (sub_1D1E6781C() == v3 && v10 == v4)
  {

    goto LABEL_25;
  }

  v12 = sub_1D1E6904C();

  if (v12)
  {
LABEL_25:
    if ((*a1 & 2) != 0)
    {
      return result;
    }

    v19 = *a1 | 2;
    goto LABEL_22;
  }

  v13 = *MEMORY[0x1E696CA78];
  if (sub_1D1E6781C() == v3 && v14 == v4)
  {

    goto LABEL_28;
  }

  v16 = sub_1D1E6904C();

  if (v16)
  {
LABEL_28:
    if ((*a1 & 4) != 0)
    {
      return result;
    }

    v19 = *a1 | 4;
LABEL_22:
    *a1 = v19;
    return result;
  }

  v17 = *MEMORY[0x1E696CA60];
  if (sub_1D1E6781C() == v3 && v18 == v4)
  {

    goto LABEL_31;
  }

  v20 = sub_1D1E6904C();

  if (v20)
  {
LABEL_31:
    if ((*a1 & 8) == 0)
    {
      v19 = *a1 | 8;
      goto LABEL_22;
    }

    return result;
  }

  v21 = *MEMORY[0x1E696CA70];
  if (sub_1D1E6781C() == v3 && v22 == v4)
  {
  }

  else
  {
    v23 = sub_1D1E6904C();

    if ((v23 & 1) == 0)
    {
      return result;
    }
  }

  if ((*a1 & 0x10) == 0)
  {
    v19 = *a1 | 0x10;
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1D18C9C7C()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v7 = 1819242338;
    v8 = 0x3631746E6975;
    v9 = 0x3233746E6975;
    if (v1 != 3)
    {
      v9 = 0x3436746E6975;
    }

    if (v1 != 2)
    {
      v8 = v9;
    }

    if (*v0)
    {
      v7 = 0x38746E6975;
    }

    if (*v0 <= 1u)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v2 = 0x676E69727473;
    v3 = 947285108;
    if (v1 != 9)
    {
      v3 = 1635017060;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 7630441;
    v5 = 0x3233746E69;
    if (v1 != 6)
    {
      v5 = 0x74616F6C66;
    }

    if (v1 != 5)
    {
      v4 = v5;
    }

    if (*v0 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D18C9DD4()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1B33020();
  return sub_1D1E6926C();
}

uint64_t sub_1D18C9E24()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1B33020();
  return sub_1D1E6926C();
}

HomeDataModel::CharacteristicKind::Unit_optional __swiftcall CharacteristicKind.Unit.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D1E68C2C();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CharacteristicKind.Unit.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x737569736C6563;
  v3 = 7894380;
  if (v1 != 5)
  {
    v3 = 0x7373656C74696E75;
  }

  v4 = 0x6572676564637261;
  if (v1 != 3)
  {
    v4 = 0x73646E6F636573;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x65686E6572686166;
  if (v1 != 1)
  {
    v5 = 0x61746E6563726570;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D18CA078()
{
  *v0;
  *v0;
  *v0;
  sub_1D1E678EC();
}

uint64_t sub_1D18CA1A0@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x737569736C6563;
  v5 = 0xE300000000000000;
  v6 = 7894380;
  if (v2 != 5)
  {
    v6 = 0x7373656C74696E75;
    v5 = 0xE800000000000000;
  }

  v7 = 0xEA00000000007365;
  v8 = 0x6572676564637261;
  result = 0x73646E6F636573;
  if (v2 != 3)
  {
    v8 = 0x73646E6F636573;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v10 = 0xEA00000000007469;
  v11 = 0x65686E6572686166;
  if (v2 != 1)
  {
    v11 = 0x61746E6563726570;
    v10 = 0xEA00000000006567;
  }

  if (*v1)
  {
    v4 = v11;
    v3 = v10;
  }

  v14 = __OFSUB__(v2, 2);
  v12 = v2 == 2;
  v13 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v15 = v4;
  }

  else
  {
    v15 = v6;
  }

  if (!(v13 ^ v14 | v12))
  {
    v3 = v5;
  }

  *a1 = v15;
  a1[1] = v3;
  return result;
}

uint64_t CharacteristicKind.humanReadableDescription.getter()
{
  v1 = *v0;
  v2 = objc_opt_self();
  CharacteristicKind.rawValue.getter();
  v3 = sub_1D1E677EC();

  v4 = [v2 localizedDescriptionForCharacteristicType_];

  v5 = sub_1D1E6781C();
  return v5;
}

BOOL sub_1D18CA3EC(uint64_t a1, double a2)
{
  v4 = (*&a2 >> 52) & 0x7FFLL;
  v5 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v6 = v4 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v6)
  {
    v14 = 0;
    result = 1;
    goto LABEL_35;
  }

  if (v4 == 2047)
  {
    goto LABEL_38;
  }

  v7 = sub_1D1E6812C();
  if (v7 > 63)
  {
    goto LABEL_38;
  }

  v8 = v7;
  v9 = sub_1D1E6810C();
  result = v8 >= v9;
  v11 = v9 + __clz(__rbit64(v5));
  v12 = v8 - v11;
  if (__OFSUB__(v8, v11))
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v11 <= 63)
  {
    if (v12 < -64 || v12 > 64)
    {
LABEL_8:
      if (v8 != 63)
      {
        if (v8 < -64)
        {
          do
          {
            v13 = 0;
            v14 = 0;
LABEL_29:
            v14 |= v13;
LABEL_30:
            if (a2 >= 0.0)
            {
              if ((v14 & 0x8000000000000000) == 0)
              {
                goto LABEL_34;
              }
            }

            else
            {
              if ((v14 & 0x8000000000000000) == 0)
              {
                goto LABEL_32;
              }

              __break(1u);
            }

            __break(1u);
LABEL_42:
            ;
          }

          while (v8 != -64);
          goto LABEL_15;
        }

        goto LABEL_17;
      }

LABEL_37:
      if (a2 >= 0.0)
      {
LABEL_38:
        v14 = 0;
        result = 0;
        LOBYTE(v6) = 1;
        goto LABEL_35;
      }

LABEL_50:
      LOBYTE(v6) = 0;
      v14 = 0x8000000000000000;
      goto LABEL_35;
    }

    if ((v12 & 0x8000000000000000) == 0)
    {
      if (v12 == 64)
      {
        goto LABEL_8;
      }

LABEL_24:
      v14 = v5 << v12;
      if (v8 != 63)
      {
        goto LABEL_25;
      }

      goto LABEL_48;
    }

    if (v12 == -64)
    {
      goto LABEL_8;
    }

LABEL_47:
    v14 = v5 >> (v11 - v8);
    if (v8 != 63)
    {
LABEL_25:
      if (v8 >= -64)
      {
        if ((v8 & 0x8000000000000000) == 0)
        {
LABEL_28:
          v13 = 1 << v8;
          goto LABEL_29;
        }

        if (v8 == -64)
        {
          goto LABEL_30;
        }
      }

      v13 = 0;
      goto LABEL_29;
    }

LABEL_48:
    if (a2 >= 0.0 || v14)
    {
      goto LABEL_38;
    }

    goto LABEL_50;
  }

  if (v12 >= -64 && v12 <= 64)
  {
    if (v12 < 0)
    {
      if (v12 != -64)
      {
        goto LABEL_47;
      }
    }

    else if (v12 != 64)
    {
      goto LABEL_24;
    }
  }

  if (v8 == 63)
  {
    goto LABEL_37;
  }

  if (v8 >= -64)
  {
LABEL_17:
    if (v8 < 0)
    {
      goto LABEL_42;
    }

    v14 = 0;
    goto LABEL_28;
  }

LABEL_15:
  v14 = 0;
  if (a2 < 0.0)
  {
LABEL_32:
    LOBYTE(v6) = 0;
    v14 = -v14;
  }

  else
  {
LABEL_34:
    LOBYTE(v6) = 0;
  }

LABEL_35:
  *a1 = v14;
  *(a1 + 8) = v6;
  return result;
}

BOOL sub_1D18CA5DC(uint64_t a1, float a2)
{
  v4 = (LODWORD(a2) >> 23);
  v5 = LODWORD(a2) & 0x7FFFFF;
  v6 = v4 | LOBYTE(a2);
  if (!(v4 | v5))
  {
    v12 = 0;
    result = 1;
    goto LABEL_32;
  }

  if (v4 == 255 || (v7 = sub_1D1E6814C(), v7 > 63))
  {
LABEL_44:
    v12 = 0;
    result = 0;
    v6 = 1;
    goto LABEL_32;
  }

  v8 = v7;
  v9 = sub_1D1E6813C();
  result = v8 >= v9;
  v11 = v9 + __clz(__rbit32(v5));
  v12 = v8 - v11;
  if (__OFSUB__(v8, v11))
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v11 > 63)
  {
    if ((v12 - 33) <= 0xFFFFFFFFFFFFFFBELL)
    {
      goto LABEL_13;
    }

    if (v12 < 0)
    {
      if (v12 <= 0xFFFFFFFFFFFFFFE0)
      {
        LODWORD(v12) = 0;
      }

      else
      {
        LODWORD(v12) = v5 >> (v11 - v8);
      }

      goto LABEL_17;
    }

    if (v12 >= 0x20)
    {
LABEL_13:
      LODWORD(v12) = 0;
    }

    else
    {
      LODWORD(v12) = v5 << v12;
    }

LABEL_17:
    v12 = v12;
LABEL_18:
    if (v8 != 63)
    {
      if (v8 > -65)
      {
        if ((v8 & 0x8000000000000000) == 0)
        {
LABEL_25:
          v13 = 1 << v8;
          goto LABEL_26;
        }

        if (v8 != -64)
        {
          v13 = 0;
LABEL_26:
          v12 |= v13;
        }
      }

      if (a2 >= 0.0)
      {
        if ((v12 & 0x8000000000000000) == 0)
        {
LABEL_31:
          v6 = 0;
          goto LABEL_32;
        }
      }

      else
      {
        if ((v12 & 0x8000000000000000) == 0)
        {
          goto LABEL_29;
        }

        __break(1u);
      }

      __break(1u);
LABEL_43:
      if (a2 >= 0.0)
      {
        goto LABEL_44;
      }

LABEL_39:
      v6 = 0;
      v12 = 0x8000000000000000;
      goto LABEL_32;
    }

LABEL_37:
    if (a2 >= 0.0 || v12)
    {
      goto LABEL_44;
    }

    goto LABEL_39;
  }

  if (v12 >= -64 && v12 <= 64)
  {
    if (v12 < 0)
    {
      if (v12 == -64)
      {
        goto LABEL_8;
      }

      v12 = v5 >> (v11 - v8);
    }

    else
    {
      if (v12 == 64)
      {
        goto LABEL_8;
      }

      v12 = v5 << v12;
    }

    goto LABEL_18;
  }

LABEL_8:
  if (v8 == 63)
  {
    goto LABEL_43;
  }

  if (v8 < -64)
  {
    goto LABEL_10;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if (v8 != -64)
  {
    v13 = 0;
    v12 = 0;
    goto LABEL_26;
  }

LABEL_10:
  v12 = 0;
  if (a2 >= 0.0)
  {
    goto LABEL_31;
  }

LABEL_29:
  v6 = 0;
  v12 = -v12;
LABEL_32:
  *a1 = v12;
  *(a1 + 8) = v6;
  return result;
}

uint64_t sub_1D18CA7C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649700, &qword_1D1E6E910);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s13HomeDataModel18CharacteristicKindO5ValueO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 <= 5)
  {
    if (*(a1 + 16) <= 2u)
    {
      if (*(a1 + 16))
      {
        if (v4 == 1)
        {
          if (v7 == 1)
          {
            v8 = *a1;
            sub_1D1778284(*a1, v3, 1);
            sub_1D1778284(v5, v6, 1);
            v9 = v8 == v5;
            return v9 & 1;
          }
        }

        else if (v7 == 2)
        {
          v18 = *a1;
          sub_1D1778284(*a1, v3, 2);
          sub_1D1778284(v5, v6, 2);
          v9 = v18 == v5;
          return v9 & 1;
        }
      }

      else if (!*(a2 + 16))
      {
        sub_1D1778284(*a1, v3, 0);
        sub_1D1778284(v5, v6, 0);
        v9 = v5 ^ v2 ^ 1;
        return v9 & 1;
      }

      goto LABEL_44;
    }

    if (v4 != 3)
    {
      if (v4 == 4)
      {
        if (v7 == 4)
        {
          sub_1D1778284(*a1, v3, 4);
          sub_1D1778284(v5, v6, 4);
          v9 = v2 == v5;
          return v9 & 1;
        }

        goto LABEL_44;
      }

      if (v7 == 5)
      {
        sub_1D1778284(*a1, v3, 5);
        v15 = v5;
        v16 = v6;
        v17 = 5;
        goto LABEL_38;
      }

LABEL_44:
      sub_1D1778244(v5, v6, v7);
      sub_1D1778284(v2, v3, v4);
      sub_1D1778284(v5, v6, v7);
      goto LABEL_45;
    }

    if (v7 != 3)
    {
      goto LABEL_44;
    }

    sub_1D1778284(*a1, v3, 3);
    v15 = v5;
    v16 = v6;
    v17 = 3;
LABEL_38:
    sub_1D1778284(v15, v16, v17);
    v9 = v2 == v5;
    return v9 & 1;
  }

  if (*(a1 + 16) > 8u)
  {
    if (v4 == 9)
    {
      if (v7 == 9)
      {
        sub_1D1778244(*a2, *(a2 + 8), 9);
        sub_1D1778244(v2, v3, 9);
        v11 = sub_1D199F344(v2, v3, v5, v6);
        sub_1D1778284(v2, v3, 9);
        v12 = v5;
        v13 = v6;
        v14 = 9;
        goto LABEL_48;
      }
    }

    else
    {
      if (v4 != 10)
      {
        if (v7 != 11 || v6 | v5)
        {
          goto LABEL_44;
        }

        sub_1D1778284(*a1, v3, 11);
        v19 = 0;
        v20 = 0;
        v21 = 11;
LABEL_42:
        sub_1D1778284(v19, v20, v21);
        v9 = 1;
        return v9 & 1;
      }

      if (v7 == 10)
      {
        sub_1D1778244(*a2, *(a2 + 8), 10);
        sub_1D1778244(v2, v3, 10);
        v11 = sub_1D199F344(v2, v3, v5, v6);
        sub_1D1778284(v2, v3, 10);
        v12 = v5;
        v13 = v6;
        v14 = 10;
        goto LABEL_48;
      }
    }

    sub_1D1741854(*a1, v3);
    goto LABEL_44;
  }

  if (v4 == 6)
  {
    if (v7 != 6)
    {
      goto LABEL_44;
    }

    sub_1D1778284(*a1, v3, 6);
    v15 = v5;
    v16 = v6;
    v17 = 6;
    goto LABEL_38;
  }

  if (v4 == 7)
  {
    if (v7 == 7)
    {
      v10 = *a2;
      sub_1D1778284(*a1, v3, 7);
      sub_1D1778284(v5, v6, 7);
      if (*&v2 == *&v5)
      {
        v9 = 1;
        return v9 & 1;
      }

LABEL_45:
      v9 = 0;
      return v9 & 1;
    }

    goto LABEL_44;
  }

  if (v7 != 8)
  {
    v22 = *(a1 + 8);

    goto LABEL_44;
  }

  if (v2 == v5 && v3 == v6)
  {
    sub_1D1778244(*a1, v3, 8);
    sub_1D1778244(v2, v3, 8);
    sub_1D1778284(v2, v3, 8);
    v19 = v2;
    v20 = v3;
    v21 = 8;
    goto LABEL_42;
  }

  v24 = *a1;
  v11 = sub_1D1E6904C();
  sub_1D1778244(v5, v6, 8);
  sub_1D1778244(v2, v3, 8);
  sub_1D1778284(v2, v3, 8);
  v12 = v5;
  v13 = v6;
  v14 = 8;
LABEL_48:
  sub_1D1778284(v12, v13, v14);
  return v11 & 1;
}

unint64_t sub_1D18CAC64()
{
  result = qword_1EC645DE8;
  if (!qword_1EC645DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645DE8);
  }

  return result;
}

unint64_t sub_1D18CACB8()
{
  result = qword_1EC645DF0;
  if (!qword_1EC645DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645DF0);
  }

  return result;
}

unint64_t sub_1D18CAD0C()
{
  result = qword_1EC645DF8;
  if (!qword_1EC645DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645DF8);
  }

  return result;
}

unint64_t sub_1D18CAD60()
{
  result = qword_1EC645E00;
  if (!qword_1EC645E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645E00);
  }

  return result;
}

unint64_t sub_1D18CADB4()
{
  result = qword_1EC645E08;
  if (!qword_1EC645E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645E08);
  }

  return result;
}

unint64_t sub_1D18CAE08()
{
  result = qword_1EC645E10;
  if (!qword_1EC645E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645E10);
  }

  return result;
}

unint64_t sub_1D18CAE5C()
{
  result = qword_1EC645E18;
  if (!qword_1EC645E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645E18);
  }

  return result;
}

unint64_t sub_1D18CAEB0()
{
  result = qword_1EC645E20;
  if (!qword_1EC645E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645E20);
  }

  return result;
}

unint64_t sub_1D18CAF04()
{
  result = qword_1EC645E28;
  if (!qword_1EC645E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645E28);
  }

  return result;
}

unint64_t sub_1D18CAF58()
{
  result = qword_1EC645E30;
  if (!qword_1EC645E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645E30);
  }

  return result;
}

unint64_t sub_1D18CAFAC()
{
  result = qword_1EC645E38;
  if (!qword_1EC645E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645E38);
  }

  return result;
}

unint64_t sub_1D18CB000()
{
  result = qword_1EC645E40;
  if (!qword_1EC645E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645E40);
  }

  return result;
}

unint64_t sub_1D18CB054()
{
  result = qword_1EC645E48;
  if (!qword_1EC645E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645E48);
  }

  return result;
}

unint64_t sub_1D18CB0A8()
{
  result = qword_1EC645E50;
  if (!qword_1EC645E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645E50);
  }

  return result;
}

unint64_t sub_1D18CB0FC()
{
  result = qword_1EC645EC0;
  if (!qword_1EC645EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645EC0);
  }

  return result;
}

unint64_t sub_1D18CB180()
{
  result = qword_1EE07A8B8;
  if (!qword_1EE07A8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07A8B8);
  }

  return result;
}

unint64_t sub_1D18CB1D8()
{
  result = qword_1EC645ED8;
  if (!qword_1EC645ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645ED8);
  }

  return result;
}

unint64_t sub_1D18CB230()
{
  result = qword_1EC645EE0;
  if (!qword_1EC645EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645EE0);
  }

  return result;
}

unint64_t sub_1D18CB288()
{
  result = qword_1EC645EE8;
  if (!qword_1EC645EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645EE8);
  }

  return result;
}

unint64_t sub_1D18CB2E0()
{
  result = qword_1EC645EF0;
  if (!qword_1EC645EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645EF0);
  }

  return result;
}

unint64_t sub_1D18CB334()
{
  result = qword_1EC645EF8;
  if (!qword_1EC645EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645EF8);
  }

  return result;
}

unint64_t sub_1D18CB398()
{
  result = qword_1EC645F00;
  if (!qword_1EC645F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645F00);
  }

  return result;
}

unint64_t sub_1D18CB420()
{
  result = qword_1EC645F18;
  if (!qword_1EC645F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645F18);
  }

  return result;
}

unint64_t sub_1D18CB484()
{
  result = qword_1EC645F20;
  if (!qword_1EC645F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645F20);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CharacteristicKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x53)
  {
    goto LABEL_17;
  }

  if (a2 + 173 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 173) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 173;
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

      return (*a1 | (v4 << 8)) - 173;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 173;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xAE;
  v8 = v6 - 174;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CharacteristicKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 173 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 173) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x53)
  {
    v4 = 0;
  }

  if (a2 > 0x52)
  {
    v5 = ((a2 - 83) >> 8) + 1;
    *result = a2 - 83;
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
    *result = a2 - 83;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D18CB658(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF5 && *(a1 + 17))
  {
    return (*a1 + 245);
  }

  v3 = *(a1 + 16);
  if (v3 <= 0xB)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D18CB6A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF4)
  {
    *(result + 16) = 0;
    *result = a2 - 245;
    *(result + 8) = 0;
    if (a3 >= 0xF5)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF5)
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

uint64_t sub_1D18CB6E4(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xB)
  {
    *result = a2 - 11;
    *(result + 8) = 0;
    LOBYTE(a2) = 11;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for CharacteristicKind.Format(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CharacteristicKind.Format(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D18CB950()
{
  result = qword_1EC645F38;
  if (!qword_1EC645F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645F38);
  }

  return result;
}

unint64_t sub_1D18CB9A8()
{
  result = qword_1EC645F40;
  if (!qword_1EC645F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645F40);
  }

  return result;
}

unint64_t sub_1D18CBA00()
{
  result = qword_1EC645F48;
  if (!qword_1EC645F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645F48);
  }

  return result;
}

unint64_t sub_1D18CBA58()
{
  result = qword_1EC645F50;
  if (!qword_1EC645F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645F50);
  }

  return result;
}

unint64_t sub_1D18CBAB0()
{
  result = qword_1EC645F58;
  if (!qword_1EC645F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645F58);
  }

  return result;
}

unint64_t sub_1D18CBB08()
{
  result = qword_1EC645F60;
  if (!qword_1EC645F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645F60);
  }

  return result;
}

unint64_t sub_1D18CBB60()
{
  result = qword_1EC645F68;
  if (!qword_1EC645F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645F68);
  }

  return result;
}

unint64_t sub_1D18CBBB8()
{
  result = qword_1EC645F70;
  if (!qword_1EC645F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645F70);
  }

  return result;
}

unint64_t sub_1D18CBC10()
{
  result = qword_1EC645F78;
  if (!qword_1EC645F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645F78);
  }

  return result;
}

unint64_t sub_1D18CBC68()
{
  result = qword_1EC645F80;
  if (!qword_1EC645F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645F80);
  }

  return result;
}

unint64_t sub_1D18CBCC0()
{
  result = qword_1EC645F88;
  if (!qword_1EC645F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645F88);
  }

  return result;
}

unint64_t sub_1D18CBD18()
{
  result = qword_1EC645F90;
  if (!qword_1EC645F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645F90);
  }

  return result;
}

unint64_t sub_1D18CBD70()
{
  result = qword_1EC645F98;
  if (!qword_1EC645F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645F98);
  }

  return result;
}

unint64_t sub_1D18CBDC8()
{
  result = qword_1EC645FA0;
  if (!qword_1EC645FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645FA0);
  }

  return result;
}

unint64_t sub_1D18CBE20()
{
  result = qword_1EC645FA8;
  if (!qword_1EC645FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645FA8);
  }

  return result;
}

unint64_t sub_1D18CBE78()
{
  result = qword_1EC645FB0;
  if (!qword_1EC645FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645FB0);
  }

  return result;
}

unint64_t sub_1D18CBED0()
{
  result = qword_1EC645FB8;
  if (!qword_1EC645FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645FB8);
  }

  return result;
}

unint64_t sub_1D18CBF28()
{
  result = qword_1EC645FC0;
  if (!qword_1EC645FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645FC0);
  }

  return result;
}

unint64_t sub_1D18CBF80()
{
  result = qword_1EC645FC8;
  if (!qword_1EC645FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645FC8);
  }

  return result;
}

unint64_t sub_1D18CBFD8()
{
  result = qword_1EC645FD0;
  if (!qword_1EC645FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645FD0);
  }

  return result;
}

unint64_t sub_1D18CC030()
{
  result = qword_1EC645FD8;
  if (!qword_1EC645FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645FD8);
  }

  return result;
}

unint64_t sub_1D18CC088()
{
  result = qword_1EC645FE0;
  if (!qword_1EC645FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645FE0);
  }

  return result;
}

unint64_t sub_1D18CC0E0()
{
  result = qword_1EC645FE8;
  if (!qword_1EC645FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645FE8);
  }

  return result;
}

unint64_t sub_1D18CC138()
{
  result = qword_1EC645FF0;
  if (!qword_1EC645FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645FF0);
  }

  return result;
}

unint64_t sub_1D18CC190()
{
  result = qword_1EC645FF8;
  if (!qword_1EC645FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645FF8);
  }

  return result;
}

unint64_t sub_1D18CC1E8()
{
  result = qword_1EC646000;
  if (!qword_1EC646000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646000);
  }

  return result;
}

unint64_t sub_1D18CC240()
{
  result = qword_1EC646008;
  if (!qword_1EC646008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646008);
  }

  return result;
}

unint64_t sub_1D18CC298()
{
  result = qword_1EC646010;
  if (!qword_1EC646010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646010);
  }

  return result;
}

unint64_t sub_1D18CC2F0()
{
  result = qword_1EC646018;
  if (!qword_1EC646018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646018);
  }

  return result;
}

unint64_t sub_1D18CC348()
{
  result = qword_1EC646020;
  if (!qword_1EC646020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646020);
  }

  return result;
}

unint64_t sub_1D18CC3A0()
{
  result = qword_1EC646028;
  if (!qword_1EC646028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646028);
  }

  return result;
}

unint64_t sub_1D18CC3F8()
{
  result = qword_1EC646030;
  if (!qword_1EC646030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646030);
  }

  return result;
}

unint64_t sub_1D18CC450()
{
  result = qword_1EC646038;
  if (!qword_1EC646038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646038);
  }

  return result;
}

unint64_t sub_1D18CC4A8()
{
  result = qword_1EC646040;
  if (!qword_1EC646040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646040);
  }

  return result;
}

unint64_t sub_1D18CC500()
{
  result = qword_1EC646048;
  if (!qword_1EC646048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646048);
  }

  return result;
}

unint64_t sub_1D18CC558()
{
  result = qword_1EC646050;
  if (!qword_1EC646050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646050);
  }

  return result;
}

unint64_t sub_1D18CC5B0()
{
  result = qword_1EC646058;
  if (!qword_1EC646058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646058);
  }

  return result;
}

unint64_t sub_1D18CC608()
{
  result = qword_1EC646060;
  if (!qword_1EC646060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646060);
  }

  return result;
}

uint64_t sub_1D18CC65C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1819047278 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1819242338 && a2 == 0xE400000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x38746E6975 && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x3631746E6975 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x3233746E6975 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x3436746E6975 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 7630441 && a2 == 0xE300000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x3233746E69 && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656C62756F64 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x676E69727473 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 947285108 && a2 == 0xE400000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 11;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

unint64_t sub_1D18CCA04()
{
  result = qword_1EC646068;
  if (!qword_1EC646068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646068);
  }

  return result;
}

unint64_t sub_1D18CCA58()
{
  result = qword_1EC646070;
  if (!qword_1EC646070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646070);
  }

  return result;
}

unint64_t sub_1D18CCAAC()
{
  result = qword_1EC646078;
  if (!qword_1EC646078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646078);
  }

  return result;
}

uint64_t sub_1D18CCB18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646080, &qword_1D1E7E488) - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v5 = sub_1D1E66A7C();
  v3[16] = v5;
  v6 = *(v5 - 8);
  v3[17] = v6;
  v7 = *(v6 + 64) + 15;
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D18CCC14, 0, 0);
}

uint64_t sub_1D18CCC14(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 104);
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v31 = *(v3 + 104);
    }

    a1 = sub_1D1E6873C();
    v5 = a1;
    if (!a1)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_22;
    }
  }

  v6 = v4 & 0xC000000000000001;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1D3891EF0](0, *(v3 + 104));
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_28;
    }

    v7 = *(*(v3 + 104) + 32);
  }

  v8 = v7;
  v9 = [v7 accessory];

  if (!v9 || (v10 = [v9 home], *(v3 + 152) = v10, v9, !v10))
  {
LABEL_22:
    *(v3 + 216) = sub_1D1E67E1C();
    *(v3 + 224) = sub_1D1E67E0C();
    v27 = sub_1D1E67D4C();
    v29 = v32;
    v30 = sub_1D18CD554;
LABEL_23:
    a1 = v30;
    a2 = v27;
    a3 = v29;

    return MEMORY[0x1EEE6DFA0](a1, a2, a3);
  }

  v33 = v10;
  a1 = sub_1D18D7C70(MEMORY[0x1E69E7CC0]);
  *(v3 + 40) = a1;
  *(v3 + 48) = 0;
  *(v3 + 56) = 2;
  if (v5 < 1)
  {
LABEL_28:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](a1, a2, a3);
  }

  v11 = 0;
  v34 = *(v3 + 104) + 32;
  v12 = (*(v3 + 136) + 8);
  do
  {
    if (v6)
    {
      v13 = MEMORY[0x1D3891EF0](v11, *(v3 + 104));
    }

    else
    {
      v13 = *(v34 + 8 * v11);
    }

    v14 = v13;
    v15 = *(v3 + 144);
    v16 = *(v3 + 128);
    ++v11;
    v17 = sub_1D18A74EC(*(v3 + 112));
    v18 = [v14 uniqueIdentifier];
    sub_1D1E66A5C();

    CharacteristicValueSet.add(values:on:)(v17, v15);

    (*v12)(v15, v16);
  }

  while (v5 != v11);
  v19 = _s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0();
  *(v3 + 160) = v19;
  if (!v19)
  {
    *(v3 + 184) = sub_1D1E67E1C();
    *(v3 + 192) = sub_1D1E67E0C();
    v27 = sub_1D1E67D4C();
    v29 = v28;
    v30 = sub_1D18CD1D8;
    goto LABEL_23;
  }

  v20 = v19[21];
  v21 = *(v3 + 40);
  *(v3 + 168) = v21;
  v22 = *(v3 + 48);
  v23 = *(v3 + 56);
  v24 = swift_task_alloc();
  *(v3 + 176) = v24;
  *v24 = v3;
  v24[1] = sub_1D18CCF6C;
  v25 = *(v3 + 120);

  return (sub_1D1A8DDCC)(v25, v21, v22, v23, v33, 0, 1);
}

uint64_t sub_1D18CCF6C()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D18CD084, 0, 0);
}

uint64_t sub_1D18CD084()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 120);

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646088, &qword_1D1E7E4B8);
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3);
  v5 = *(v0 + 120);
  if (v4 == 1)
  {
    sub_1D18CE794(v5);
    v6 = 1;
  }

  else
  {
    v7 = *(v0 + 96);
    v8 = *(v5 + *(v3 + 48));
    v9 = *(v0 + 120);

    sub_1D18CE7FC(v9, v7);
    v6 = 0;
  }

  v10 = *(v0 + 96);
  v11 = type metadata accessor for StateSnapshot(0);
  (*(*(v11 - 8) + 56))(v10, v6, 1, v11);
  v12 = *(v0 + 144);
  v13 = *(v0 + 120);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1D18CD1D8()
{
  v1 = *(v0 + 192);

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D18CD270, 0, 0);
}

uint64_t sub_1D18CD270()
{
  v1 = *(v0 + 184);
  *(v0 + 200) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D18CD2FC, v3, v2);
}

uint64_t sub_1D18CD2FC()
{
  v1 = *(v0 + 200);

  v2 = *(v0 + 48);
  *(v0 + 64) = *(v0 + 40);
  v3 = *(v0 + 56);
  *(v0 + 72) = v2;
  *(v0 + 80) = v3;
  v4 = swift_task_alloc();
  *(v0 + 208) = v4;
  *v4 = v0;
  v4[1] = sub_1D18CD3C8;
  v5 = *(v0 + 96);

  return DataModel.write(characteristicValueSet:home:)(v5, (v0 + 64), 0);
}

uint64_t sub_1D18CD3C8()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v5 = *v0;

  v3 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1D18CD4E0, 0, 0);
}

uint64_t sub_1D18CD4E0()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D18CD554()
{
  v1 = *(v0 + 224);

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D18CD5EC, 0, 0);
}

uint64_t sub_1D18CD5EC()
{
  v1 = *(v0 + 216);
  *(v0 + 232) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D18CD678, v3, v2);
}

uint64_t sub_1D18CD678()
{
  v1 = *(v0 + 232);

  *(v0 + 240) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D18CD6EC, 0, 0);
}

uint64_t sub_1D18CD6EC()
{
  v1 = *(v0 + 216);
  *(v0 + 248) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D18CD778, v3, v2);
}

uint64_t sub_1D18CD778()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[12];

  swift_getKeyPath();
  v0[11] = v2;
  sub_1D18CE6D8();
  sub_1D1E66CAC();

  v4 = OBJC_IVAR____TtC13HomeDataModel9DataModel__currentStateSnapshot;
  swift_beginAccess();
  sub_1D18CE730(v2 + v4, v3);

  return MEMORY[0x1EEE6DFA0](sub_1D18CD85C, 0, 0);
}

uint64_t sub_1D18CD85C()
{
  v1 = v0[12];
  v2 = type metadata accessor for StateSnapshot(0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = v0[18];
  v4 = v0[15];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D18CD90C(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 72) = a4;
  *(v5 + 80) = a5;
  *(v5 + 64) = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646090, &qword_1D1E7E4C8);
  *(v5 + 88) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v5 + 96) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646098, &unk_1D1E7E4D0);
  *(v5 + 104) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v5 + 112) = swift_task_alloc();
  v11 = sub_1D1E66A7C();
  *(v5 + 120) = v11;
  v12 = *(v11 - 8);
  *(v5 + 128) = v12;
  v13 = *(v12 + 64) + 15;
  *(v5 + 136) = swift_task_alloc();
  v14 = a3[1];
  *(v5 + 144) = *a3;
  *(v5 + 160) = v14;
  sub_1D1E67E1C();
  *(v5 + 176) = sub_1D1E67E0C();
  v16 = sub_1D1E67D4C();
  *(v5 + 184) = v16;
  *(v5 + 192) = v15;

  return MEMORY[0x1EEE6DFA0](sub_1D18CDA88, v16, v15);
}

uint64_t sub_1D18CDA88()
{
  v1 = *(v0 + 72);
  result = sub_1D18D7C70(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = result;
  *(v0 + 24) = 0;
  *(v0 + 32) = 2;
  if (v1 >> 62)
  {
    if (*(v0 + 72) < 0)
    {
      v12 = *(v0 + 72);
    }

    result = sub_1D1E6873C();
    v3 = result;
    if (!result)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_12;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v22 = *(v0 + 72) + 32;
  v23 = v1 & 0xC000000000000001;
  v5 = (*(v0 + 128) + 8);
  do
  {
    if (v23)
    {
      v6 = MEMORY[0x1D3891EF0](v4, *(v0 + 72));
    }

    else
    {
      v6 = *(v22 + 8 * v4);
    }

    v7 = v6;
    v8 = *(v0 + 136);
    v9 = *(v0 + 120);
    ++v4;
    v10 = sub_1D18A74EC(*(v0 + 80));
    v11 = [v7 uniqueIdentifier];
    sub_1D1E66A5C();

    CharacteristicValueSet.add(values:on:)(v10, v8);

    (*v5)(v8, v9);
  }

  while (v3 != v4);
LABEL_12:
  if (*(v0 + 152) <= 1uLL)
  {
    v13 = *(v0 + 16);
LABEL_18:

    v18 = swift_task_alloc();
    *(v0 + 264) = v18;
    *v18 = v0;
    v18[1] = sub_1D18CE538;
    v19 = *(v0 + 72);
    v20 = *(v0 + 80);
    v21 = *(v0 + 64);

    return sub_1D18CCB18(v21, v19, v20);
  }

  v14 = *(v0 + 16);
  if (!*(v0 + 168))
  {
    goto LABEL_18;
  }

  *(v0 + 200) = v14;
  v15 = *(v0 + 24);
  *(v0 + 40) = v14;
  v16 = *(v0 + 32);
  *(v0 + 48) = v15;
  *(v0 + 56) = v16;

  v17 = swift_task_alloc();
  *(v0 + 208) = v17;
  *v17 = v0;
  v17[1] = sub_1D18CDD2C;

  return CharacteristicValueSet.batchWrites.getter();
}

uint64_t sub_1D18CDD2C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v7 = *v1;
  *(*v1 + 216) = a1;

  v4 = *(v2 + 192);
  v5 = *(v2 + 184);

  return MEMORY[0x1EEE6DFA0](sub_1D18CDE54, v5, v4);
}

uint64_t sub_1D18CDE54()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);

  if (v1 >> 62)
  {
    if (*(v0 + 216) < 0)
    {
      v13 = *(v0 + 216);
    }

    v14 = *(v0 + 216);
    sub_1D18CE860();

    v3 = sub_1D1E68B0C();

    v15 = *(v0 + 216);
  }

  else
  {

    sub_1D1E6906C();
    sub_1D18CE860();
    v3 = *(v0 + 216);
  }

  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  v17 = *(v0 + 144);
  v6 = *(v0 + 112);

  *(v6 + 8) = v17;
  *(v6 + 24) = v5;
  *(v6 + 32) = v4;
  *v6 = v3;
  *(v6 + 40) = 1;
  if (qword_1EC642488 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 104);
  v7 = *(v0 + 112);
  v9 = sub_1D1E6701C();
  __swift_project_value_buffer(v9, qword_1EC6BE2B8);
  v10 = *(v8 + 44);
  sub_1D1E66FFC();
  sub_1D1E66FAC();
  if (qword_1EE07AC80 != -1)
  {
    swift_once();
  }

  *(v0 + 224) = qword_1EE07B4E0;
  type metadata accessor for WidgetDataModel();
  *(v0 + 232) = swift_initStaticObject();
  v11 = *(v0 + 184);
  v12 = *(v0 + 192);

  return MEMORY[0x1EEE6DFA0](sub_1D18CE014, v11, v12);
}

uint64_t sub_1D18CE014()
{
  v1 = v0[11];
  sub_1D18CE8AC(v0[14], v0[12]);
  swift_storeEnumTagMultiPayload();
  v2 = swift_task_alloc();
  v0[30] = v2;
  *v2 = v0;
  v2[1] = sub_1D18CE0C8;
  v3 = v0[29];

  return WidgetDataModel.snapshotModerator.getter();
}

uint64_t sub_1D18CE0C8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 240);
  v5 = *v1;
  v3[31] = a1;

  v6 = swift_task_alloc();
  v3[32] = v6;
  *v6 = v5;
  v6[1] = sub_1D18CE244;
  v7 = v3[12];
  v8 = v3[8];
  v9.n128_u64[0] = 20.0;

  return (sub_1D1BF8FC0)(v8, v7, v9);
}

uint64_t sub_1D18CE244()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 256);
  v5 = *v1;

  v6 = v2[31];
  if (v0)
  {

    v7 = v3[23];
    v8 = v3[24];
    v9 = sub_1D18CE474;
  }

  else
  {
    v10 = v3[28];

    v9 = sub_1D18CE398;
    v7 = v10;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1D18CE3B0()
{
  v1 = v0[22];
  v2 = v0[8];

  v3 = type metadata accessor for StateSnapshot(0);
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v4 = v0[17];
  v5 = v0[14];
  v6 = v0[12];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D18CE474()
{
  v1 = v0[22];
  v2 = v0[8];

  v3 = type metadata accessor for StateSnapshot(0);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = v0[17];
  v5 = v0[14];
  v6 = v0[12];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D18CE538()
{
  v1 = *v0;
  v2 = *(*v0 + 264);
  v6 = *v0;

  v3 = *(v1 + 192);
  v4 = *(v1 + 184);

  return MEMORY[0x1EEE6DFA0](sub_1D18CE658, v4, v3);
}

uint64_t sub_1D18CE658()
{
  v1 = v0[22];

  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[12];

  v5 = v0[1];

  return v5();
}

unint64_t sub_1D18CE6D8()
{
  result = qword_1EE07CFB0;
  if (!qword_1EE07CFB0)
  {
    type metadata accessor for DataModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07CFB0);
  }

  return result;
}

uint64_t sub_1D18CE730(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StateSnapshot(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D18CE794(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646080, &qword_1D1E7E488);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D18CE7FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StateSnapshot(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D18CE860()
{
  result = qword_1EC6460A0;
  if (!qword_1EC6460A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC6460A0);
  }

  return result;
}

uint64_t sub_1D18CE8AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646098, &unk_1D1E7E4D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D18CE91C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v34 - v24;
  v26 = sub_1D1E6826C();
  if (!v26)
  {
    return sub_1D1E67C7C();
  }

  v48 = v26;
  v52 = sub_1D1E689DC();
  v39 = sub_1D1E689EC();
  sub_1D1E6898C();
  result = sub_1D1E6824C();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_1D1E682BC();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_1D1E689CC();
      result = sub_1D1E6828C();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1D18CED3C(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x1E69E7CC0];
    v28 = v1;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x1D3891EF0](v2, v27);
      }

      else
      {
        if (v2 >= *(v30 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v29 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject services];
      sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v8 = sub_1D1E67C1C();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_1D1E6873C();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1D1E6873C();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_40:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v32 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v11)
        {
          goto LABEL_21;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v11)
        {
LABEL_21:
          sub_1D1E6873C();
          goto LABEL_22;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v14 = *(v13 + 16);
LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = sub_1D1E688CC();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v34 = v3;
      v15 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1D1E6873C();
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v16 >> 1) - v15) < v10)
          {
            goto LABEL_44;
          }

          v18 = v13 + 8 * v15 + 32;
          if (v9)
          {
            if (v17 < 1)
            {
              goto LABEL_46;
            }

            sub_1D17DA8F0(&qword_1EC646280, &qword_1EC646278, &qword_1D1E7E940);
            for (i = 0; i != v17; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646278, &qword_1D1E7E940);
              v20 = sub_1D1790CDC(v33, i, v8);
              v22 = *v21;
              (v20)(v33, 0);
              *(v18 + 8 * i) = v22;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v28;
          v3 = v34;
          if (v10 >= 1)
          {
            v23 = *(v13 + 16);
            v5 = __OFADD__(v23, v10);
            v24 = v23 + v10;
            if (v5)
            {
              goto LABEL_45;
            }

            *(v13 + 16) = v24;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
          goto LABEL_27;
        }
      }

      v3 = v34;
      if (v10 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      v2 = v32;
      if (v32 == v1)
      {
        return v3;
      }
    }

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
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_1D1E6873C();
    isUniquelyReferenced_nonNull_bridgeObject = v25;
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t CharacteristicValueSet.init(valueSet:options:)@<X0>(unint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if (!result)
  {
    result = sub_1D18D6B94(MEMORY[0x1E69E7CC0], &qword_1EC6462D0, &unk_1D1E7E9C8, &qword_1EC642A60, &qword_1D1E6E7B0);
  }

  *a3 = result;
  *(a3 + 8) = v4 & 1;
  *(a3 + 16) = v4;
  return result;
}

uint64_t CharacteristicValueSet.add<A>(value:for:on:)(void *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = sub_1D1E66A7C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a2;
  (*(a5 + 56))(a4, a5);
  v16 = a1[3];
  v17 = __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D18D3ED4(v17, &v20, v15, v6, v16);
  return (*(v12 + 8))(v15, v11);
}

uint64_t CharacteristicValueSet.add<A>(values:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a4 + 56))(a3, a4);
  CharacteristicValueSet.add(values:on:)(a1, v11);
  return (*(v8 + 8))(v11, v7);
}

uint64_t CharacteristicValueSet.batchWrites.getter()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  *(v1 + 136) = *v0;
  *(v1 + 144) = v2;
  *(v1 + 152) = v3;
  v4 = swift_task_alloc();
  *(v1 + 160) = v4;
  *v4 = v1;
  v4[1] = sub_1D18CF420;

  return CharacteristicValueSet.characteristicsAndValues.getter();
}

uint64_t sub_1D18CF420(uint64_t a1)
{
  v2 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D18CF520, 0, 0);
}

uint64_t sub_1D18CF520()
{
  v1 = *(v0 + 168);
  v2 = *(v1 + 16);
  if (v2)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1D1E6899C();
    v3 = -1 << *(v1 + 32);
    v4 = sub_1D1E6869C();
    v5 = *(v1 + 36);
    v16 = objc_opt_self();
    for (i = v2 - 1; ; --i)
    {
      *(v0 + 56) = sub_1D18D3BF0((v0 + 24), v4, v5, 0, *(v0 + 168));
      sub_1D16EEE38((v0 + 24), (v0 + 64));
      sub_1D1741C08(v0 + 56, v0 + 96, &qword_1EC6460A8, &qword_1D1E7E4F0);
      v7 = *(v0 + 96);
      __swift_project_boxed_opaque_existential_1((v0 + 64), *(v0 + 88));
      v8 = [v16 writeRequestWithCharacteristic:v7 value:sub_1D1E6903C()];

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1((v0 + 104));
      sub_1D1741A30(v0 + 56, &qword_1EC6460A8, &qword_1D1E7E4F0);
      sub_1D1E6896C();
      v9 = *(v17 + 16);
      sub_1D1E689AC();
      sub_1D1E689BC();
      result = sub_1D1E6897C();
      if (v4 < 0 || v4 >= -(-1 << *(v1 + 32)))
      {
        break;
      }

      if (((*(v1 + 64 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        goto LABEL_15;
      }

      if (v5 != *(v1 + 36))
      {
        goto LABEL_16;
      }

      v11 = sub_1D1E686BC();
      if (!i)
      {
        v12 = *(v0 + 168);

        v13 = v17;
        goto LABEL_11;
      }

      v4 = v11;
      v5 = *(v1 + 36);
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
    v14 = *(v0 + 168);

    v13 = MEMORY[0x1E69E7CC0];
LABEL_11:
    v15 = *(v0 + 8);

    return v15(v13);
  }

  return result;
}

uint64_t CharacteristicValueSet.valueSet.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t CharacteristicValueSet.add(value:for:on:)(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = a1[3];
  v7 = __swift_project_boxed_opaque_existential_1(a1, v6);

  return sub_1D18D3ED4(v7, a2, a3, v3, v6);
}

{
  v8 = *a2;
  v5 = a1[3];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v5);
  return sub_1D18D3ED4(v6, &v8, a3, v3, v5);
}

uint64_t CharacteristicValueSet.add(value:for:on:)(void *a1, unsigned __int8 *a2, void *a3)
{
  return sub_1D18CF918(a1, a2, a3, sub_1D18DC7C4);
}

{
  return sub_1D18CF918(a1, a2, a3, sub_1D18CFB08);
}

uint64_t CharacteristicValueSet.add(value:for:on:)(uint64_t a1, char *a2, void *a3)
{
  v6 = a3[3];
  v7 = a3[4];
  v8 = __swift_project_boxed_opaque_existential_1(a3, v6);

  return sub_1D18D40C0(a1, a2, v8, v3, v6, v7);
}

uint64_t sub_1D18CF918(void *a1, unsigned __int8 *a2, void *a3, void (*a4)(char *, char *))
{
  v6 = v4;
  v10 = sub_1D1E66A7C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a2;
  v16 = a3[3];
  v17 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v16);
  v19 = sub_1D18CE91C(a4, 0, v16, v10, MEMORY[0x1E69E73E0], v17, MEMORY[0x1E69E7410], v18);
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = *(v11 + 16);
    v22 = *(v11 + 80);
    v27[1] = v19;
    v23 = v19 + ((v22 + 32) & ~v22);
    v28 = *(v11 + 72);
    v29 = v21;
    do
    {
      v29(v14, v23, v10);
      v30[0] = v15;
      v24 = a1[3];
      v25 = __swift_project_boxed_opaque_existential_1(a1, v24);
      sub_1D18D3ED4(v25, v30, v14, v6, v24);
      (*(v11 + 8))(v14, v10);
      v23 += v28;
      --v20;
    }

    while (v20);
  }
}

void sub_1D18CFB08(id *a1)
{
  v1 = [*a1 uniqueIdentifier];
  sub_1D1E66A5C();
}

uint64_t CharacteristicValueSet.add(values:on:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  if (*(v11 + 16) && (v12 = sub_1D1742188(a2), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    (*(v7 + 16))(v10, a2, v6);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v14;
    sub_1D18DC2C4(a1, sub_1D18D2F9C, 0, isUniquelyReferenced_nonNull_native, &v23);

    v16 = v23;
    v17 = *v3;
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    sub_1D1752B8C(v16, v10, v18);
    result = (*(v7 + 8))(v10, v6);
  }

  else
  {

    v20 = *v3;
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    result = sub_1D1752B8C(a1, a2, v21);
  }

  *v3 = v23;
  return result;
}

uint64_t CharacteristicValueSet.add(values:on:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v5);
  v7 = sub_1D1E66A7C();
  v9 = sub_1D18CE91C(sub_1D18DC7C4, 0, v5, v7, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v8);
  sub_1D18D41EC(a1, v9, v3);
}

{
  v4 = a2[3];
  v5 = a2[4];
  v6 = __swift_project_boxed_opaque_existential_1(a2, v4);

  return sub_1D18D4A14(a1, v6, v2, v4, v5);
}

uint64_t CharacteristicValueSet.add<A>(values:on:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = a2[3];
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v9);
  v15[4] = a3;
  v15[5] = a4;
  v15[2] = a4;
  v15[3] = swift_getKeyPath();
  v11 = sub_1D1E66A7C();
  v13 = sub_1D18CE91C(sub_1D18DC59C, v15, v9, v11, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v12);

  sub_1D18D41EC(a1, v13, v5);
}

uint64_t CharacteristicValueSet.characteristicsAndValues(in:)(void *a1)
{
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6430E0, &qword_1D1E71438);
  v3 = *(*(v61 - 8) + 64);
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v58 - v4;
  v69 = sub_1D1E66A7C();
  v5 = *(v69 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v69);
  v63 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v58 - v9;
  v11 = *v1;
  v12 = [a1 accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v13 = sub_1D1E67C1C();

  v14 = sub_1D18CED3C(v13);
  v67 = 0;

  v15 = sub_1D18D6B94(MEMORY[0x1E69E7CC0], &qword_1EC646270, &unk_1D1E7E930, &qword_1EC642C00, &qword_1D1E6E950);
  if (v14 >> 62)
  {
    goto LABEL_40;
  }

  v68 = v14 & 0xFFFFFFFFFFFFFF8;
  v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v65 = v5;
    v66 = v15;
    v64 = v5 + 16;
    if (v16)
    {
      v17 = 0;
      v5 += 8;
      while (2)
      {
        v18 = v17;
        while (1)
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x1D3891EF0](v18, v14);
          }

          else
          {
            if (v18 >= *(v68 + 16))
            {
              goto LABEL_39;
            }

            v15 = *(v14 + 8 * v18 + 32);
          }

          v19 = v15;
          v17 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_38;
          }

          v20 = [v15 uniqueIdentifier];
          sub_1D1E66A5C();

          if (*(v11 + 16))
          {
            v21 = sub_1D1742188(v10);
            if (v22)
            {
              break;
            }
          }

          (*v5)(v10, v69);

          ++v18;
          if (v17 == v16)
          {
            goto LABEL_26;
          }
        }

        v23 = *(*(v11 + 56) + 8 * v21);
        v24 = *v5;

        v60 = v24;
        v24(v10, v69);

        v25 = [v19 uniqueIdentifier];
        sub_1D1E66A5C();

        v59 = v19;
        v26 = v66;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v70 = v26;
        v28 = sub_1D1742188(v63);
        v30 = *(v26 + 16);
        v31 = (v29 & 1) == 0;
        v32 = __OFADD__(v30, v31);
        v33 = v30 + v31;
        if (v32)
        {
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v34 = v29;
        if (*(v26 + 24) >= v33)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v47 = v28;
            sub_1D1739E28();
            v28 = v47;
          }
        }

        else
        {
          sub_1D172A2BC(v33, isUniquelyReferenced_nonNull_native);
          v28 = sub_1D1742188(v63);
          if ((v34 & 1) != (v35 & 1))
          {
            goto LABEL_44;
          }
        }

        v36 = v70;
        v66 = v70;
        if (v34)
        {
          v37 = *(v70 + 56);
          v38 = *(v37 + 8 * v28);
          v39 = v59;
          *(v37 + 8 * v28) = v59;

          v15 = (v60)(v63, v69);
          if (v17 != v16)
          {
            continue;
          }
        }

        else
        {
          *(v70 + 8 * (v28 >> 6) + 64) |= 1 << v28;
          v40 = v36[6] + *(v65 + 72) * v28;
          v41 = *(v65 + 16);
          v58 = v28;
          v42 = v63;
          v43 = v69;
          v41(v40, v63, v69);
          v44 = v59;
          *(v36[7] + 8 * v58) = v59;

          v15 = (v60)(v42, v43);
          v45 = v36[2];
          v32 = __OFADD__(v45, 1);
          v46 = v45 + 1;
          if (v32)
          {
            goto LABEL_42;
          }

          v36[2] = v46;
          if (v17 != v16)
          {
            continue;
          }
        }

        break;
      }
    }

LABEL_26:

    v70 = sub_1D18D7DB4(MEMORY[0x1E69E7CC0]);
    v5 = v11 + 64;
    v48 = 1 << *(v11 + 32);
    v49 = -1;
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    v50 = v49 & *(v11 + 64);
    v51 = (v48 + 63) >> 6;

    v52 = 0;
    v10 = v61;
    v14 = v62;
    if (v50)
    {
      break;
    }

LABEL_30:
    while (1)
    {
      v53 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        break;
      }

      if (v53 >= v51)
      {

        return v70;
      }

      v50 = *(v5 + 8 * v53);
      ++v52;
      if (v50)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    v57 = v15;
    v68 = v14 & 0xFFFFFFFFFFFFFF8;
    v16 = sub_1D1E6873C();
    v15 = v57;
  }

  while (1)
  {
    v53 = v52;
LABEL_33:
    v54 = __clz(__rbit64(v50)) | (v53 << 6);
    (*(v65 + 16))(v14, *(v11 + 48) + *(v65 + 72) * v54, v69);
    *(v14 + *(v10 + 12)) = *(*(v11 + 56) + 8 * v54);

    v55 = v67;
    sub_1D18D05D0(&v70, v14, v66);
    v67 = v55;
    if (v55)
    {
      break;
    }

    v50 &= v50 - 1;
    v15 = sub_1D1741A30(v14, &qword_1EC6430E0, &qword_1D1E71438);
    v52 = v53;
    if (!v50)
    {
      goto LABEL_30;
    }
  }

LABEL_43:

  sub_1D1741A30(v14, &qword_1EC6430E0, &qword_1D1E71438);

  __break(1u);
LABEL_44:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

uint64_t sub_1D18D05D0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6430E0, &qword_1D1E71438);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v45 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v42 - v11;
  v13 = sub_1D1E66A7C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1741C08(a2, v12, &qword_1EC6430E0, &qword_1D1E71438);
  v18 = *&v12[*(v7 + 48)];

  v46 = v14;
  (*(v14 + 32))(v17, v12, v13);
  if (!*(a3 + 16))
  {
    return (*(v46 + 8))(v17, v13);
  }

  v19 = sub_1D1742188(v17);
  if ((v20 & 1) == 0)
  {
    return (*(v46 + 8))(v17, v13);
  }

  v43 = v17;
  v44 = v3;
  v47 = *(*(a3 + 56) + 8 * v19);
  v21 = v45;
  sub_1D1741C08(a2, v45, &qword_1EC6430E0, &qword_1D1E71438);
  v22 = *(v21 + *(v7 + 48));
  v23 = 1 << *(v22 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v22 + 64);
  v26 = v46 + 8;
  v27 = *(v46 + 8);
  v47 = v47;
  v45 = v13;
  v46 = v26;
  v42 = v27;
  result = v27(v21, v13);
  v29 = 0;
  v30 = (v23 + 63) >> 6;
  if (!v25)
  {
    goto LABEL_8;
  }

  do
  {
    while (1)
    {
      v33 = v29;
LABEL_18:
      v34 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v35 = v34 | (v33 << 6);
      v36 = *(*(v22 + 48) + v35);
      sub_1D1741970(*(v22 + 56) + 32 * v35, v50);
      LOBYTE(v51) = v36;
      sub_1D16EEE38(v50, (&v51 + 8));
LABEL_19:
      v54[0] = v51;
      v54[1] = v52;
      v55 = v53;
      if (!v53)
      {

        return v42(v43, v45);
      }

      v37 = v54[0];
      sub_1D16EEE38((v54 + 8), &v51);
      LOBYTE(v50[0]) = v37;
      v38 = HMService.subscript.getter(v50);
      if (v38)
      {
        break;
      }

      result = __swift_destroy_boxed_opaque_existential_1(&v51);
      if (!v25)
      {
        goto LABEL_8;
      }
    }

    v39 = v38;
    sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
    sub_1D1741970(&v51, v50);
    LOBYTE(v56) = v37;
    static HMService.convert(_:characteristicKind:)(v50, &v56, &v48);
    sub_1D1741A30(v50, &qword_1EC645D58, &unk_1D1E7E530);
    if (v49)
    {
      sub_1D16EEE38(&v48, v50);
    }

    else
    {
      sub_1D1741970(&v51, v50);
      if (v49)
      {
        sub_1D1741A30(&v48, &qword_1EC645D58, &unk_1D1E7E530);
      }
    }

    sub_1D16EEE38(v50, &v48);
    v40 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = *a1;
    sub_1D1752BCC(&v48, v39, isUniquelyReferenced_nonNull_native);

    result = __swift_destroy_boxed_opaque_existential_1(&v51);
    *a1 = v56;
  }

  while (v25);
LABEL_8:
  if (v30 <= v29 + 1)
  {
    v31 = v29 + 1;
  }

  else
  {
    v31 = v30;
  }

  v32 = v31 - 1;
  while (1)
  {
    v33 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v33 >= v30)
    {
      v25 = 0;
      v53 = 0;
      v29 = v32;
      v51 = 0u;
      v52 = 0u;
      goto LABEL_19;
    }

    v25 = *(v22 + 64 + 8 * v33);
    ++v29;
    if (v25)
    {
      v29 = v33;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t CharacteristicValueSet.characteristicsAndValues.getter()
{
  v2 = sub_1D1E66A7C();
  v1[37] = v2;
  v3 = *(v2 - 8);
  v1[38] = v3;
  v4 = *(v3 + 64) + 15;
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6430E0, &qword_1D1E71438);
  v1[45] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *v0;
  v1[48] = v7;
  v1[49] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D18D0BB4, 0, 0);
}

uint64_t sub_1D18D0BB4()
{
  v1 = *(v0 + 392);
  v2 = sub_1D18D7DB4(MEMORY[0x1E69E7CC0]);
  v3 = *(v1 + 32);
  *(v0 + 544) = v3;
  v4 = -1;
  v5 = -1 << v3;
  v6 = *(v1 + 64);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  *(v0 + 400) = v2;
  *(v0 + 408) = v2;
  *(v0 + 416) = 0;
  v7 = v4 & v6;
  if (v7)
  {
    v8 = 0;
    v9 = *(v0 + 392);
LABEL_8:
    *(v0 + 424) = v7;
    *(v0 + 432) = v8;
    v13 = *(v0 + 376);
    v12 = *(v0 + 384);
    v14 = *(v0 + 360);
    v15 = *(v0 + 296);
    v16 = *(v0 + 304);
    v17 = __clz(__rbit64(v7)) | (v8 << 6);
    v18 = *(v9 + 48) + *(v16 + 72) * v17;
    v19 = *(v16 + 16);
    *(v0 + 440) = v19;
    *(v0 + 448) = (v16 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v19(v12, v18, v15);
    v20 = *(*(v9 + 56) + 8 * v17);
    v21 = *(v14 + 48);
    (*(v16 + 32))(v13, v12, v15);
    *(v13 + v21) = v20;
    v22 = qword_1EE07AF78;

    if (v22 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&dword_1EE07AF80);
    v23 = byte_1EE07AF84;
    os_unfair_lock_unlock(&dword_1EE07AF80);
    if (v23 == 2 || (v23 & 1) == 0)
    {
      goto LABEL_21;
    }

    if (qword_1EC642308 != -1)
    {
      swift_once();
    }

    sub_1D1E693FC();
    v24 = *(v0 + 280);
    if (v24)
    {
      goto LABEL_18;
    }

    if (qword_1EC642310 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&dword_1EC649BC0);
    v24 = off_1EC649BC8;

    os_unfair_lock_unlock(&dword_1EC649BC0);
    if (v24)
    {
LABEL_18:
      *(v0 + 456) = v24;
      if (qword_1EC642358 != -1)
      {
        swift_once();
      }

      v25 = qword_1EC64ABE8;
      v26 = sub_1D18D0F6C;
      v27 = 0;
    }

    else
    {
LABEL_21:
      *(v0 + 488) = sub_1D1E67E1C();
      *(v0 + 496) = sub_1D1E67E0C();
      v28 = sub_1D1E67D4C();
      v30 = v29;
      v26 = sub_1D18D23F0;
      v25 = v28;
      v27 = v30;
    }

    return MEMORY[0x1EEE6DFA0](v26, v25, v27);
  }

  else
  {
    v10 = 0;
    v11 = ((63 - v5) >> 6) - 1;
    v9 = *(v0 + 392);
    while (v11 != v10)
    {
      v8 = v10 + 1;
      v7 = *(v9 + 8 * v10++ + 72);
      if (v7)
      {
        goto LABEL_8;
      }
    }

    v32 = *(v0 + 376);
    v31 = *(v0 + 384);
    v33 = *(v0 + 368);
    v35 = *(v0 + 344);
    v34 = *(v0 + 352);
    v37 = *(v0 + 328);
    v36 = *(v0 + 336);
    v38 = *(v0 + 320);
    v42 = *(v0 + 312);

    v39 = *(v0 + 8);
    v40 = *(v0 + 408);

    return v39(v40);
  }
}